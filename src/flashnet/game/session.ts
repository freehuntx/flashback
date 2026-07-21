import { Emitter, type Unsubscribe } from '../events.ts'
import { socketPair, type Socket } from '../socket.ts'
import { withTunnel, type Tunnel, type TunnelMeta } from '../tunnel.ts'
import type { Bridge, BridgeEvents } from '../bridge/bridge.ts'
import type { HttpHandler, HttpMatcher, VirtualNetwork } from '../virtual-network.ts'

/**
 * Generic host-authoritative game framework on top of flashnet.
 *
 * A game module implements a normal game *server* (sockets in, protocol out)
 * and the framework takes care of everything multiplayer:
 *  - deterministic host election over any Bridge (sticky: hosts keep hosting)
 *  - routing: every player's socket - local or tunneled - lands in the
 *    server's `onConnection`, indistinguishable from real TCP clients
 *  - host migration; with `statefulMigration` enabled it is *seamless*:
 *    SWF sockets survive the handover, the new host restores the replicated
 *    server state and connections resume mid-protocol
 *  - a private message channel for the game (`session.bridge`)
 *
 * How seamless migration works: the SWF's socket lives in its own browser and
 * only its *backend leg* (tunnel to the host, or the local server) dies with
 * the host. The framework detaches the leg, buffers SWF->server bytes, elects
 * a new host, restores the last replicated state snapshot there, re-attaches
 * every socket (`resume`) and flushes the buffers. Server->client bytes sent
 * after the last snapshot are the only thing that can be lost.
 */

export interface GameServer {
  /** A new player connected. `playerId` is the bridge peer id ('selfId' for the local player). */
  onConnection(socket: Socket, playerId: string): void
  /** A known player's socket re-attached after host migration (no greeting expected). */
  onResume?(socket: Socket, playerId: string): void
  /** A peer left the session entirely. */
  onPlayerLeave?(playerId: string): void
  /** Serialize the full server state (must be JSON-serializable). */
  saveState?(): unknown
  /** Restore a snapshot on the freshly promoted host, before sockets resume. */
  loadState?(state: unknown): void
  /** Server is being torn down (demotion or session end). */
  dispose?(): void
}

export interface GameServerContext {
  readonly session: GameSession
  readonly selfId: string
  /** Game-payload bridge (same as session.bridge). */
  readonly bridge: Bridge
  /** Push a state snapshot to all peers right now (also happens periodically). */
  publishState(): void
}

export interface GameDefinition {
  /** Unique id, used for logging/diagnostics. */
  id: string
  /** Every host:port the SWF connects to. Must be known before Ruffle loads. */
  endpoints: Array<string | { host: string; port: number }>
  /** Optional HTTP intercepts (auth endpoints, crossdomain.xml, ...). */
  http?: Array<{ match: HttpMatcher; handler: HttpHandler }>
  /**
   * Seamless host migration: keep SWF sockets alive across host changes and
   * resume them against the restored state. Requires the server to implement
   * saveState/loadState (and usually onResume).
   */
  statefulMigration?: boolean
  /** Called on the peer that becomes host. Return your server sim. */
  createServer(ctx: GameServerContext): GameServer
}

/** Identity helper for type inference & discoverability. */
export function defineGame(definition: GameDefinition): GameDefinition {
  return definition
}

export interface GameSessionOptions {
  bridge: Bridge
  net: VirtualNetwork
  /** How long to wait for an existing host to announce itself before self-electing. Default: 1500ms. */
  settleMs?: number
  /** Interval for replicating state snapshots to all peers (stateful games). Default: 2000ms. */
  snapshotMs?: number
  /** How long an orphaned SWF socket waits for a new host before giving up. Default: 10000ms. */
  resumeTimeoutMs?: number
  /** Close the underlying bridge when the session is left. Default: true. */
  closeBridgeOnLeave?: boolean
}

export type GameSessionEvents = BridgeEvents & {
  /** Fired on every host change, including the initial election. */
  'host-changed': (hostId: string, isHost: boolean) => void
}

interface ControlMessage {
  t: 'who' | 'host' | 'state'
  id?: string
  seq?: number
  data?: string
}

const CH_GAME = 0
const CH_CONTROL = 1

/**
 * Create a session for a game. Resolves once a host is known (an existing
 * host answered, or - after `settleMs` - this peer elected one itself).
 * Register the returned `ruffleConfig()` when loading the player.
 */
export async function createSession(definition: GameDefinition, options: GameSessionOptions): Promise<GameSession> {
  const session = new GameSession(definition, options)
  await session._start(options.settleMs ?? 1500)
  return session
}

export class GameSession extends Emitter<GameSessionEvents> {
  readonly net: VirtualNetwork
  /** Game-payload messaging between peers - safe to use freely. */
  readonly bridge: Bridge

  #definition: GameDefinition
  #muxed: Bridge
  #tunnel: Tunnel
  #hostId: string | null = null
  #server: GameServer | null = null
  #records = new Set<RelayAttachment>() // SWF-facing sockets of the local player
  #serverSockets = new Set<Socket>() // server-side sockets while hosting
  #pendingTunnel: Array<{ socket: Socket; peerId: string; meta: TunnelMeta; timer: ReturnType<typeof setTimeout> }> = []
  #stateSeq = 0
  #stateJson: string | null = null
  #snapshotTimer: ReturnType<typeof setInterval> | null = null
  #snapshotMs: number
  #resumeTimeoutMs: number
  #unsubs: Unsubscribe[] = []
  #closeBridgeOnLeave: boolean
  #closed = false

  constructor(definition: GameDefinition, options: GameSessionOptions) {
    super()
    this.#definition = definition
    this.net = options.net
    this.#snapshotMs = options.snapshotMs ?? 2000
    this.#resumeTimeoutMs = options.resumeTimeoutMs ?? 10000
    this.#closeBridgeOnLeave = options.closeBridgeOnLeave ?? true

    // Registered before withTunnel so it runs BEFORE the tunnel's own peer-leave
    // cleanup: when the host dies, we unhook every backend leg first, so the
    // tunnel sockets closing right after is not mistaken for a server kick.
    this.#unsubs.push(
      options.bridge.on('leave', (peerId) => {
        if (this.#stateful && peerId === this.#hostId) {
          for (const record of this.#records) record.detachBackend()
        }
      })
    )

    const { bridge: muxed, tunnel } = withTunnel(options.bridge)
    this.#muxed = muxed
    this.#tunnel = tunnel
    this.bridge = new ChannelBridge(muxed, CH_GAME)

    this.#unsubs.push(
      muxed.on('message', (peerId, data) => {
        if (data.length > 0 && data[0] === CH_CONTROL) this.#onControl(peerId, decodeControl(data.subarray(1)))
      }),
      muxed.on('join', (peerId) => {
        // Reconciliation: transports like Trystero connect peers seconds after
        // joinRoom, so startup broadcasts may have gone into the void. The
        // host (re)announces itself to every newcomer; an unsettled peer asks.
        if (this.isHost) {
          this.#sendControl(peerId, { t: 'host', id: this.selfId })
          if (this.#stateJson !== null) this.#sendControl(peerId, { t: 'state', seq: this.#stateSeq, data: this.#stateJson })
        } else if (this.#hostId === null) {
          this.#sendControl(peerId, { t: 'who' })
        }
        this.emit('join', peerId)
      }),
      muxed.on('leave', (peerId) => this.#onLeave(peerId)),
      muxed.on('close', () => this.leave())
    )

    // Incoming tunneled sockets. If we aren't (yet) the acting host during a
    // stateful migration, park them - our own election may simply lag behind.
    this.#unsubs.push(
      tunnel.on('socket', (socket, peerId, meta) => {
        if (this.#closed) return socket.close()
        if (this.isHost && this.#server) this.#acceptTunnel(socket, peerId, meta)
        else if (this.#stateful) this.#parkTunnel(socket, peerId, meta)
        else socket.close()
      })
    )

    // Intercept the game's endpoints; every SWF socket becomes a relay record
    // whose backend leg can be swapped between hosts.
    for (const endpoint of definition.endpoints) {
      this.#unsubs.push(
        this.net.listen(endpoint, (front) => {
          if (this.#closed || (!this.#hostId && !this.#stateful)) return front.close()
          const record = new RelayAttachment(front, this.#stateful, this.#resumeTimeoutMs, () =>
            this.#records.delete(record)
          )
          this.#records.add(record)
          // No host yet (still settling)? Buffer - attachment happens on 'host-changed'.
          if (this.#hostId) this.#attachRecord(record, false)
          else record.awaitBackend()
        })
      )
    }
    for (const { match, handler } of definition.http ?? []) {
      this.#unsubs.push(this.net.listenHttp(match, handler))
    }
  }

  get selfId(): string {
    return this.#muxed.selfId
  }

  get peers(): ReadonlySet<string> {
    return this.#muxed.peers
  }

  get hostId(): string | null {
    return this.#hostId
  }

  get isHost(): boolean {
    return this.#hostId === this.selfId
  }

  get #stateful(): boolean {
    return this.#definition.statefulMigration === true
  }

  /** Ruffle config fragment - spread into the config passed to the player. */
  ruffleConfig(): ReturnType<VirtualNetwork['ruffleConfig']> {
    return this.net.ruffleConfig()
  }

  /** Leave the session: replicate a final snapshot, tear everything down. */
  leave(): void {
    if (this.#closed) return
    if (this.isHost) this.#publishState(false) // last chance for the successor
    this.#closed = true
    this.#stopSnapshots()
    for (const pending of this.#pendingTunnel) {
      clearTimeout(pending.timer)
      pending.socket.close()
    }
    this.#pendingTunnel = []
    for (const record of [...this.#records]) record.close()
    for (const socket of [...this.#serverSockets]) socket.close()
    this.#server?.dispose?.()
    this.#server = null
    for (const off of this.#unsubs) off()
    if (this.#closeBridgeOnLeave) this.#muxed.close()
    this.emit('close')
    this.clearListeners()
  }

  // -- internal ------------------------------------------------------------

  /**
   * @internal Ask for an existing host, self-elect after the settle window.
   * Every newly connected peer restarts the window (its host answer may be in
   * flight), so slow transports don't cause premature self-election.
   */
  _start(settleMs: number): Promise<void> {
    this.#sendControl(null, { t: 'who' })
    return new Promise((resolve) => {
      let timer: ReturnType<typeof setTimeout> | undefined
      const finish = () => {
        clearTimeout(timer)
        offJoin()
        offHost()
        resolve()
      }
      const arm = () => {
        clearTimeout(timer)
        timer = setTimeout(() => {
          if (!this.#hostId && !this.#closed) this.#setHost(min([this.selfId, ...this.peers]))
          finish()
        }, settleMs)
      }
      const offJoin = this.on('join', () => {
        if (this.#hostId === null) arm()
      })
      const offHost = this.on('host-changed', finish)
      arm()
    })
  }

  #onControl(peerId: string, message: ControlMessage | null): void {
    if (!message || this.#closed) return
    switch (message.t) {
      case 'who':
        if (this.isHost) {
          this.#sendControl(peerId, { t: 'host', id: this.selfId })
          if (this.#stateJson !== null) this.#sendControl(peerId, { t: 'state', seq: this.#stateSeq, data: this.#stateJson })
        }
        break
      case 'host': {
        const claimed = message.id
        if (!claimed || this.#hostId === claimed) break
        // Adopt if we have no host, or if the claim wins (lower id) against
        // the current one - resolves split-brain deterministically.
        if (this.#hostId === null || claimed < this.#hostId) this.#setHost(claimed)
        else if (this.isHost) this.#sendControl(peerId, { t: 'host', id: this.selfId }) // assert ours
        break
      }
      case 'state':
        if (typeof message.seq === 'number' && typeof message.data === 'string' && message.seq > this.#stateSeq) {
          this.#stateSeq = message.seq
          this.#stateJson = message.data
        }
        break
    }
  }

  #onLeave(peerId: string): void {
    this.#server?.onPlayerLeave?.(peerId)
    this.emit('leave', peerId)
    if (peerId === this.#hostId) this.#setHost(min([this.selfId, ...this.peers]))
  }

  #setHost(hostId: string): void {
    if (this.#closed || this.#hostId === hostId) return
    const wasHost = this.isHost
    this.#hostId = hostId

    if (!this.#stateful) {
      // Legacy semantics: authority change invalidates all connections.
      for (const record of [...this.#records]) record.close()
      for (const socket of [...this.#serverSockets]) socket.close()
    } else {
      // Seamless: keep SWF sockets, drop only their backend legs.
      for (const record of this.#records) record.detachBackend()
      for (const socket of [...this.#serverSockets]) socket.close()
    }

    if (wasHost && !this.isHost) {
      this.#stopSnapshots()
      this.#server?.dispose?.()
      this.#server = null
    }

    if (this.isHost && !this.#server) {
      this.#server = this.#definition.createServer({
        session: this,
        selfId: this.selfId,
        bridge: this.bridge,
        publishState: () => this.#publishState(true),
      })
      if (this.#stateful && this.#stateJson !== null && this.#server.loadState) {
        try {
          this.#server.loadState(JSON.parse(this.#stateJson))
        } catch (err) {
          console.error(`[flashnet] ${this.#definition.id}: loadState failed:`, err)
        }
      }
      this.#startSnapshots()
      this.#sendControl(null, { t: 'host', id: this.selfId })
      this.#drainPendingTunnel()
    }

    // Re-attach the local player's surviving sockets to the new authority.
    if (this.#stateful) {
      for (const record of this.#records) this.#attachRecord(record, true)
    }

    this.emit('host-changed', hostId, this.isHost)
  }

  /** Wire a SWF-facing record to the current host (locally or via tunnel). */
  #attachRecord(record: RelayAttachment, resume: boolean): void {
    if (this.isHost && this.#server) {
      const [backend, serverEnd] = socketPair(record.front.host, record.front.port)
      record.attach(backend)
      this.#deliver(serverEnd, this.selfId, resume)
    } else if (this.#hostId) {
      record.attach(this.#tunnel.connect(this.#hostId, { host: record.front.host, port: record.front.port, resume }))
    }
  }

  #acceptTunnel(socket: Socket, peerId: string, meta: TunnelMeta): void {
    this.#deliver(socket, peerId, meta['resume'] === true)
  }

  #deliver(socket: Socket, playerId: string, resume: boolean): void {
    this.#serverSockets.add(socket)
    socket.once('close', () => this.#serverSockets.delete(socket))
    try {
      if (resume && this.#server?.onResume) this.#server.onResume(socket, playerId)
      else this.#server?.onConnection(socket, playerId)
    } catch (err) {
      console.error(`[flashnet] ${this.#definition.id}: ${resume ? 'onResume' : 'onConnection'} threw:`, err)
      socket.close()
    }
  }

  #parkTunnel(socket: Socket, peerId: string, meta: TunnelMeta): void {
    const pending = {
      socket,
      peerId,
      meta,
      timer: setTimeout(() => {
        this.#pendingTunnel = this.#pendingTunnel.filter((p) => p !== pending)
        socket.close()
      }, this.#resumeTimeoutMs),
    }
    this.#pendingTunnel.push(pending)
    socket.once('close', () => {
      clearTimeout(pending.timer)
      this.#pendingTunnel = this.#pendingTunnel.filter((p) => p !== pending)
    })
  }

  #drainPendingTunnel(): void {
    const pending = this.#pendingTunnel
    this.#pendingTunnel = []
    for (const entry of pending) {
      clearTimeout(entry.timer)
      if (!entry.socket.closed) this.#acceptTunnel(entry.socket, entry.peerId, entry.meta)
    }
  }

  #startSnapshots(): void {
    this.#stopSnapshots()
    if (!this.#stateful || !this.#server?.saveState) return
    this.#publishState(false)
    this.#snapshotTimer = setInterval(() => this.#publishState(false), this.#snapshotMs)
  }

  #stopSnapshots(): void {
    if (this.#snapshotTimer !== null) clearInterval(this.#snapshotTimer)
    this.#snapshotTimer = null
  }

  #publishState(force: boolean): void {
    const save = this.#server?.saveState
    if (!save) return
    let json: string
    try {
      json = JSON.stringify(save.call(this.#server))
    } catch (err) {
      console.error(`[flashnet] ${this.#definition.id}: saveState failed:`, err)
      return
    }
    if (!force && json === this.#stateJson) return
    this.#stateSeq++
    this.#stateJson = json
    this.#sendControl(null, { t: 'state', seq: this.#stateSeq, data: json })
  }

  #sendControl(peerId: string | null, message: ControlMessage): void {
    const payload = encodeControl(message)
    if (peerId) this.#muxed.send(peerId, payload)
    else this.#muxed.broadcast(payload)
  }
}

// ---------------------------------------------------------------------------

/**
 * Owns one SWF-facing socket and its swappable backend leg. While no backend
 * is attached (mid-migration), SWF->server bytes are buffered; if no new host
 * shows up within the resume timeout, the SWF socket is closed after all.
 */
class RelayAttachment {
  #backend: Socket | null = null
  #backendSubs: Unsubscribe[] = []
  #buffer: Uint8Array[] = []
  #orphanTimer: ReturnType<typeof setTimeout> | null = null
  #closed = false

  constructor(
    readonly front: Socket,
    private seamless: boolean,
    private resumeTimeoutMs: number,
    private onGone: () => void
  ) {
    front.on('data', (data) => {
      if (this.#backend) this.#backend.write(data)
      else this.#buffer.push(data)
    })
    front.on('close', () => {
      const backend = this.#backend
      this.detachBackend()
      backend?.close()
      this.#dispose()
    })
  }

  attach(backend: Socket): void {
    const previous = this.#backend
    this.#unhook()
    previous?.close()
    if (this.#closed) return backend.close()

    this.#clearOrphanTimer()
    this.#backend = backend
    this.#backendSubs = [
      backend.on('data', (data) => this.front.write(data)),
      // A backend closing while attached was not a migration - the (living)
      // server hung up on purpose, so the SWF gets its disconnect.
      backend.on('close', () => this.close()),
    ]
    const buffered = this.#buffer
    this.#buffer = []
    for (const chunk of buffered) backend.write(chunk)
  }

  /**
   * Unhook the current backend without closing it (migration in progress).
   * If no new host attaches within the resume timeout, the SWF socket closes.
   */
  detachBackend(): void {
    if (this.#closed || !this.#backend) return
    this.#unhook()
    if (!this.seamless) return this.close()
    this.awaitBackend()
  }

  /** Buffer without a backend, but give up after the resume timeout. */
  awaitBackend(): void {
    if (this.#closed || this.#backend) return
    this.#clearOrphanTimer()
    this.#orphanTimer = setTimeout(() => this.close(), this.resumeTimeoutMs)
  }

  close(): void {
    const backend = this.#backend
    this.#unhook()
    backend?.close()
    this.#dispose()
    this.front.close()
  }

  #unhook(): void {
    for (const off of this.#backendSubs) off()
    this.#backendSubs = []
    this.#backend = null
  }

  #clearOrphanTimer(): void {
    if (this.#orphanTimer !== null) clearTimeout(this.#orphanTimer)
    this.#orphanTimer = null
  }

  #dispose(): void {
    if (this.#closed) return
    this.#closed = true
    this.#clearOrphanTimer()
    this.#buffer = []
    this.onGone()
  }
}

/** Bridge view onto one channel byte of an underlying bridge. */
class ChannelBridge extends Emitter<BridgeEvents> implements Bridge {
  constructor(
    private raw: Bridge,
    private channel: number
  ) {
    super()
    raw.on('join', (peerId) => this.emit('join', peerId))
    raw.on('leave', (peerId) => this.emit('leave', peerId))
    raw.on('close', () => this.emit('close'))
    raw.on('message', (peerId, data) => {
      if (data.length > 0 && data[0] === this.channel) this.emit('message', peerId, data.subarray(1))
    })
  }

  get selfId(): string {
    return this.raw.selfId
  }

  get peers(): ReadonlySet<string> {
    return this.raw.peers
  }

  send(peerId: string, data: Uint8Array): void {
    this.raw.send(peerId, prefix(this.channel, data))
  }

  broadcast(data: Uint8Array): void {
    this.raw.broadcast(prefix(this.channel, data))
  }

  close(): void {
    this.raw.close()
  }
}

function prefix(channel: number, data: Uint8Array): Uint8Array {
  const framed = new Uint8Array(data.length + 1)
  framed[0] = channel
  framed.set(data, 1)
  return framed
}

function encodeControl(message: ControlMessage): Uint8Array {
  const json = new TextEncoder().encode(JSON.stringify(message))
  return prefix(CH_CONTROL, json)
}

function decodeControl(payload: Uint8Array): ControlMessage | null {
  try {
    return JSON.parse(new TextDecoder().decode(payload)) as ControlMessage
  } catch {
    return null
  }
}

function min(ids: string[]): string {
  return ids.reduce((a, b) => (b < a ? b : a))
}
