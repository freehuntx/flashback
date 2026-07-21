import { Emitter, type Unsubscribe } from './events.ts'

export type SocketEvents = {
  data: (data: Uint8Array) => void
  close: () => void
}

/**
 * The one socket shape the whole library speaks.
 * Bytes in, bytes out - no protocol knowledge whatsoever.
 * Implemented by VirtualSocket (Ruffle side) and TunnelSocket (bridge side).
 */
export interface Socket {
  readonly host: string
  readonly port: number
  readonly closed: boolean
  write(data: Uint8Array | ArrayBuffer | string): void
  close(): void
  on<K extends keyof SocketEvents>(event: K, listener: SocketEvents[K]): Unsubscribe
  once<K extends keyof SocketEvents>(event: K, listener: SocketEvents[K]): Unsubscribe
  off<K extends keyof SocketEvents>(event: K, listener: SocketEvents[K]): void
}

export function toBytes(data: Uint8Array | ArrayBuffer | string): Uint8Array {
  if (typeof data === 'string') return new TextEncoder().encode(data)
  if (data instanceof ArrayBuffer) return new Uint8Array(data)
  return data
}

/**
 * Server-facing end of an intercepted Ruffle connection.
 * `write()` sends bytes to the SWF, the `data` event delivers bytes from the SWF.
 */
export class VirtualSocket extends Emitter<SocketEvents> implements Socket {
  #closed = false
  #sink: ((data: Uint8Array) => void) | null = null
  #sinkBuffer: Uint8Array[] = []
  #onLocalClose: (() => void) | null = null

  constructor(
    readonly host: string,
    readonly port: number
  ) {
    super()
  }

  get closed(): boolean {
    return this.#closed
  }

  /** Send bytes to the game (SWF). */
  write(data: Uint8Array | ArrayBuffer | string): void {
    if (this.#closed) return
    const bytes = toBytes(data)
    if (this.#sink) this.#sink(bytes)
    else this.#sinkBuffer.push(bytes)
  }

  /** Close the connection (the SWF sees a socket close). */
  close(): void {
    if (this.#closed) return
    this.#closed = true
    this.#onLocalClose?.()
    this.emit('close')
    this.clearListeners()
  }

  // -- internal wiring, used by the WebSocket shim ------------------------

  /** @internal Attach the function that forwards bytes to the SWF. Flushes buffered writes. */
  _attachSink(sink: (data: Uint8Array) => void, onLocalClose: () => void): void {
    this.#sink = sink
    this.#onLocalClose = onLocalClose
    for (const chunk of this.#sinkBuffer) sink(chunk)
    this.#sinkBuffer.length = 0
  }

  /** @internal Bytes arriving from the SWF. */
  _receive(data: Uint8Array): void {
    if (this.#closed) return
    this.emit('data', data)
  }

  /** @internal The SWF/Ruffle closed the connection. */
  _remoteClosed(): void {
    if (this.#closed) return
    this.#closed = true
    this.#onLocalClose = null
    this.emit('close')
    this.clearListeners()
  }
}

/**
 * Bidirectionally pipe two sockets (data and close propagate both ways).
 * Returns a detach function that only unhooks, without closing either side.
 */
export function pipe(a: Socket, b: Socket): Unsubscribe {
  const subs: Unsubscribe[] = [
    a.on('data', (d) => b.write(d)),
    b.on('data', (d) => a.write(d)),
    a.on('close', () => b.close()),
    b.on('close', () => a.close()),
  ]
  return () => subs.forEach((off) => off())
}

/**
 * Two in-memory Socket endpoints connected to each other. Data written before
 * the receiving side subscribes is buffered, so handing one end to a handler
 * that wires itself up asynchronously is safe.
 */
export function socketPair(host = 'pair.local', port = 0): [Socket, Socket] {
  const a = new PairSocket(host, port)
  const b = new PairSocket(host, port)
  a._peer = b
  b._peer = a
  return [a, b]
}

class PairSocket extends Emitter<SocketEvents> implements Socket {
  _peer!: PairSocket
  #closed = false
  #subscribed = false
  #pending: Uint8Array[] = []

  constructor(
    readonly host: string,
    readonly port: number
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
    this._peer._deliver(toBytes(data))
  }

  close(): void {
    if (this.#closed) return
    this.#closed = true
    this.emit('close')
    this.clearListeners()
    this._peer.close()
  }

  _deliver(data: Uint8Array): void {
    if (this.#closed) return
    if (this.#subscribed) this.emit('data', data)
    else this.#pending.push(data)
  }
}
