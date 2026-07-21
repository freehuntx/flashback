import { Emitter, type Unsubscribe } from './events.ts'
import { toBytes, type Socket, type SocketEvents } from './socket.ts'
import type { Bridge, BridgeEvents } from './bridge/bridge.ts'

/**
 * Optional helper for host-authoritative setups: guests tunnel their
 * intercepted sockets over the bridge to one peer that runs the server sim.
 *
 * `withTunnel()` multiplexes the underlying bridge so tunnel traffic and your
 * own bridge messages never collide - use the *returned* bridge for your own
 * messages, not the raw one.
 *
 * Guest:  pipe(virtualSocket, tunnel.connect(hostId, virtualSocket))
 * Host:   tunnel.on('socket', (socket, peerId) => serverSim.accept(socket))
 */
/** host/port plus any extra fields the opener wants to convey (e.g. `resume`). */
export type TunnelMeta = { host: string; port: number } & Record<string, unknown>

export interface Tunnel {
  /** Open a socket to `hostId`; the host receives it via its `socket` event. */
  connect(hostId: string, meta: TunnelMeta): Socket
  /** Fired on the host for every incoming tunneled socket. Data received before a 'data' listener is attached is buffered. */
  on(event: 'socket', listener: (socket: Socket, peerId: string, meta: TunnelMeta) => void): Unsubscribe
  off(event: 'socket', listener: (socket: Socket, peerId: string, meta: TunnelMeta) => void): void
}

export interface WithTunnelResult {
  /** Use this for your own messages instead of the bridge you passed in. */
  bridge: Bridge
  tunnel: Tunnel
}

const enum Frame {
  User = 0,
  Open = 1,
  Data = 2,
  Close = 3,
}

export function withTunnel(raw: Bridge): WithTunnelResult {
  const tunnel = new TunnelImpl(raw)
  return { bridge: new MuxedBridge(raw, tunnel), tunnel }
}

// ---------------------------------------------------------------------------

class TunnelSocket extends Emitter<SocketEvents> implements Socket {
  #closed = false
  #subscribed = false
  #pending: Uint8Array[] = []

  constructor(
    readonly host: string,
    readonly port: number,
    private sendFrame: (type: Frame.Data | Frame.Close, payload?: Uint8Array) => void
  ) {
    super()
  }

  get closed(): boolean {
    return this.#closed
  }

  override on<K extends keyof SocketEvents>(event: K, listener: SocketEvents[K]): Unsubscribe {
    const off = super.on(event, listener)
    if (event === 'data' && !this.#subscribed) {
      this.#subscribed = true
      const pending = this.#pending
      this.#pending = []
      for (const chunk of pending) this.emit('data', chunk)
    }
    return off
  }

  write(data: Uint8Array | ArrayBuffer | string): void {
    if (this.#closed) return
    this.sendFrame(Frame.Data, toBytes(data))
  }

  close(): void {
    if (this.#closed) return
    this.#closed = true
    this.sendFrame(Frame.Close)
    this.emit('close')
    this.clearListeners()
  }

  _receive(data: Uint8Array): void {
    if (this.#closed) return
    if (this.#subscribed) this.emit('data', data)
    else this.#pending.push(data)
  }

  _remoteClosed(): void {
    if (this.#closed) return
    this.#closed = true
    this.emit('close')
    this.clearListeners()
  }
}

class TunnelImpl extends Emitter<{ socket: (socket: Socket, peerId: string, meta: TunnelMeta) => void }> implements Tunnel {
  #sockets = new Map<string, TunnelSocket>() // `${peerId}/${socketId}`
  #nextId = 1

  constructor(private raw: Bridge) {
    super()
    raw.on('leave', (peerId) => {
      for (const [key, socket] of this.#sockets) {
        if (key.startsWith(`${peerId}/`)) {
          this.#sockets.delete(key)
          socket._remoteClosed()
        }
      }
    })
    raw.on('close', () => {
      for (const socket of this.#sockets.values()) socket._remoteClosed()
      this.#sockets.clear()
    })
  }

  connect(hostId: string, meta: TunnelMeta): Socket {
    const socketId = this.#nextId++
    const socket = this.#track(hostId, socketId, meta.host, meta.port)
    const payload = new TextEncoder().encode(JSON.stringify(meta))
    this.raw.send(hostId, encodeFrame(Frame.Open, socketId, payload))
    return socket
  }

  /** @internal Tunnel frames arriving from the muxer. */
  _handleFrame(peerId: string, frame: Uint8Array): void {
    if (frame.length < 5) return
    const type = frame[0] as Frame
    const socketId = new DataView(frame.buffer, frame.byteOffset + 1, 4).getUint32(0)
    const payload = frame.subarray(5)
    const key = `${peerId}/${socketId}`

    switch (type) {
      case Frame.Open: {
        let meta: TunnelMeta = { host: 'unknown', port: 0 }
        try {
          meta = { ...meta, ...(JSON.parse(new TextDecoder().decode(payload)) as TunnelMeta) }
        } catch {
          /* keep fallback meta */
        }
        const socket = this.#track(peerId, socketId, meta.host, meta.port)
        this.emit('socket', socket, peerId, meta)
        break
      }
      case Frame.Data:
        this.#sockets.get(key)?._receive(payload.slice())
        break
      case Frame.Close: {
        const socket = this.#sockets.get(key)
        this.#sockets.delete(key)
        socket?._remoteClosed()
        break
      }
    }
  }

  #track(peerId: string, socketId: number, host: string, port: number): TunnelSocket {
    const key = `${peerId}/${socketId}`
    const socket = new TunnelSocket(host, port, (type, payload) => {
      this.raw.send(peerId, encodeFrame(type, socketId, payload))
      if (type === Frame.Close) this.#sockets.delete(key)
    })
    this.#sockets.set(key, socket)
    return socket
  }
}

/** Wraps the raw bridge: prefixes user messages, routes tunnel frames away. */
class MuxedBridge extends Emitter<BridgeEvents> implements Bridge {
  constructor(
    private raw: Bridge,
    tunnel: TunnelImpl
  ) {
    super()
    raw.on('join', (peerId) => this.emit('join', peerId))
    raw.on('leave', (peerId) => this.emit('leave', peerId))
    raw.on('close', () => this.emit('close'))
    raw.on('message', (peerId, data) => {
      if (data.length === 0) return
      if (data[0] === Frame.User) this.emit('message', peerId, data.subarray(1))
      else tunnel._handleFrame(peerId, data)
    })
  }

  get selfId(): string {
    return this.raw.selfId
  }

  get peers(): ReadonlySet<string> {
    return this.raw.peers
  }

  send(peerId: string, data: Uint8Array): void {
    this.raw.send(peerId, prefixUser(data))
  }

  broadcast(data: Uint8Array): void {
    this.raw.broadcast(prefixUser(data))
  }

  close(): void {
    this.raw.close()
  }
}

function prefixUser(data: Uint8Array): Uint8Array {
  const framed = new Uint8Array(data.length + 1)
  framed[0] = Frame.User
  framed.set(data, 1)
  return framed
}

function encodeFrame(type: Frame, socketId: number, payload?: Uint8Array): Uint8Array {
  const frame = new Uint8Array(5 + (payload?.length ?? 0))
  frame[0] = type
  new DataView(frame.buffer).setUint32(1, socketId)
  if (payload) frame.set(payload, 5)
  return frame
}
