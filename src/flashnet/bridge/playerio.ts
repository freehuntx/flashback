import { BaseBridge, type Bridge } from './bridge.ts'

/** The subset of a PlayerIO `connection` this adapter needs. */
export interface PlayerIOConnectionLike {
  send(type: string, ...args: unknown[]): void
  addMessageCallback(type: string, callback: (message: PlayerIOMessageLike) => void): unknown
  addDisconnectCallback(callback: () => void): unknown
  disconnect(): void
}

export interface PlayerIOMessageLike {
  getString(index: number): string
  getByteArray(index: number): Uint8Array | number[]
  length: number
}

/**
 * Message types exchanged with the server-side relay. Override them if your
 * relay DLL uses different names.
 */
export interface PlayerIORelayProtocol {
  /** server -> client: [selfId: string, ...peerIds: string[]] - sent once after join */
  init: string
  /** server -> client: [peerId: string] */
  join: string
  /** server -> client: [peerId: string] */
  leave: string
  /** server -> client: [fromId: string, data: bytes] */
  data: string
  /** client -> server: [targetId: string, data: bytes] - empty targetId = broadcast */
  send: string
}

const DEFAULT_PROTOCOL: PlayerIORelayProtocol = {
  init: 'fnet.init',
  join: 'fnet.join',
  leave: 'fnet.leave',
  data: 'fnet.data',
  send: 'fnet.send',
}

export interface PlayerIOBridgeOptions {
  /** An already-joined connection from `client.multiplayer.createJoinRoom(...)`. */
  connection: PlayerIOConnectionLike
  protocol?: Partial<PlayerIORelayProtocol>
  /** Disconnect the PlayerIO connection when the bridge is closed. Default: true. */
  disconnectOnClose?: boolean
}

/**
 * Bridge over a real PlayerIO room acting as a dumb relay.
 * Resolves once the relay has sent its `init` message (so `selfId` is known).
 *
 * Expected server-side relay behaviour (see PlayerIORelayProtocol):
 * on join -> send `init` to the joiner and `join` to everyone else; on `send`
 * from a client -> forward as `data`; on leave -> broadcast `leave`.
 */
export function playerioBridge(options: PlayerIOBridgeOptions): Promise<Bridge> {
  const { connection, disconnectOnClose = true } = options
  const protocol = { ...DEFAULT_PROTOCOL, ...options.protocol }

  return new Promise((resolve, reject) => {
    let bridge: PlayerIOBridge | null = null
    const pendingPeers: string[] = []
    const disconnectedEarly = () => reject(new Error('[flashnet] PlayerIO connection closed before init'))

    connection.addMessageCallback(protocol.init, (message) => {
      if (bridge) return
      bridge = new PlayerIOBridge(message.getString(0), connection, protocol, disconnectOnClose)
      for (let i = 1; i < message.length; i++) pendingPeers.push(message.getString(i))
      for (const peerId of pendingPeers) bridge._peerJoined(peerId)
      resolve(bridge)
    })
    connection.addMessageCallback(protocol.join, (message) => {
      const peerId = message.getString(0)
      bridge ? bridge._peerJoined(peerId) : pendingPeers.push(peerId)
    })
    connection.addMessageCallback(protocol.leave, (message) => bridge?._peerLeft(message.getString(0)))
    connection.addMessageCallback(protocol.data, (message) => {
      const raw = message.getByteArray(1)
      bridge?._received(message.getString(0), raw instanceof Uint8Array ? raw : new Uint8Array(raw))
    })
    connection.addDisconnectCallback(() => (bridge ? bridge._disconnected() : disconnectedEarly()))
  })
}

class PlayerIOBridge extends BaseBridge {
  #remoteClosed = false

  constructor(
    selfId: string,
    private connection: PlayerIOConnectionLike,
    private protocol: PlayerIORelayProtocol,
    private disconnectOnClose: boolean
  ) {
    super(selfId)
  }

  send(peerId: string, data: Uint8Array): void {
    if (this.closed || !this.peers.has(peerId)) return
    this.connection.send(this.protocol.send, peerId, data)
  }

  override broadcast(data: Uint8Array): void {
    if (this.closed || this.peers.size === 0) return
    this.connection.send(this.protocol.send, '', data)
  }

  protected onClose(): void {
    if (this.disconnectOnClose && !this.#remoteClosed) this.connection.disconnect()
  }

  _peerJoined(peerId: string): void {
    this.peerJoined(peerId)
  }

  _peerLeft(peerId: string): void {
    this.peerLeft(peerId)
  }

  _received(peerId: string, data: Uint8Array): void {
    this.received(peerId, data)
  }

  _disconnected(): void {
    this.#remoteClosed = true
    this.close()
  }
}
