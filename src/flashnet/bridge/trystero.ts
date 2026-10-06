import { BaseBridge } from './bridge.ts'

/**
 * Duck-typed view of a Trystero room - deliberately loose, because Trystero's
 * API changed shape across versions:
 *   - <= 0.21: `makeAction()` returns a `[send, receive]` tuple and peer
 *     callbacks are registered via `room.onPeerJoin(cb)`.
 *   - >= 0.22: `makeAction()` returns a MessageAction object with `.send(data,
 *     {target})` and an assignable `.onMessage`; peer callbacks are assignable
 *     (`room.onPeerJoin = cb`).
 * The adapter detects the shape at runtime, so any version works. Note that it
 * claims the room's peer callbacks for itself - route your own logic through
 * the bridge's `join`/`leave` events instead.
 */
export interface TrysteroRoomLike {
  makeAction(name: string): unknown
  onPeerJoin?: unknown
  onPeerLeave?: unknown
  getPeers?(): Record<string, unknown> | string[]
  leave(): unknown
}

export interface TrysteroBridgeOptions {
  /** An already-joined room from `trystero.joinRoom(config, roomId)`. */
  room: TrysteroRoomLike
  /** Trystero's `selfId` export. */
  selfId: string
  /** Action name used for raw data. Default: "fnet". */
  action?: string
  /** Leave the Trystero room when the bridge is closed. Default: true. */
  leaveOnClose?: boolean
}

/**
 * P2P bridge over Trystero (WebRTC).
 *
 * ```ts
 * import { joinRoom, selfId } from '@trystero-p2p/mqtt'
 * const bridge = trysteroBridge({ room: joinRoom({ appId: 'flashback' }, 'bomber-1'), selfId })
 * ```
 */
export function trysteroBridge(options: TrysteroBridgeOptions): TrysteroBridge {
  return new TrysteroBridge(options)
}

class TrysteroBridge extends BaseBridge {
  #room: TrysteroRoomLike
  #send: (data: Uint8Array, target?: string) => unknown
  #leaveOnClose: boolean

  constructor({ room, selfId, action = 'fnet', leaveOnClose = true }: TrysteroBridgeOptions) {
    super(selfId)
    this.#room = room
    this.#leaveOnClose = leaveOnClose

    const deliver = (data: unknown, from: unknown) => {
      const peerId = typeof from === 'string' ? from : (from as { peerId?: string } | null)?.peerId
      if (!peerId) return
      if (data instanceof Uint8Array) this.received(peerId, data)
      else if (data instanceof ArrayBuffer) this.received(peerId, new Uint8Array(data))
    }

    const made = room.makeAction(action)
    if (Array.isArray(made)) {
      // Trystero <= 0.21: [send, receive] tuple, positional targets.
      const [send, receive] = made as [
        (data: Uint8Array, targets?: string | string[]) => unknown,
        (handler: (data: unknown, peerId: string) => void) => unknown,
      ]
      this.#send = (data, target) => send(data, target)
      receive(deliver)
    } else if (made && typeof made === 'object' && typeof (made as { send?: unknown }).send === 'function') {
      // Trystero >= 0.22: MessageAction object, options-style targets.
      const messageAction = made as {
        send: (data: Uint8Array, options?: { target?: string | string[] }) => unknown
        receive?: (handler: (data: unknown, peerId: string) => void) => unknown
        onMessage?: unknown
      }
      this.#send = (data, target) => messageAction.send(data, target === undefined ? undefined : { target })
      if (typeof messageAction.receive === 'function') messageAction.receive(deliver)
      else messageAction.onMessage = deliver
    } else {
      throw new Error('[flashnet] Unsupported trystero makeAction() return shape')
    }

    hookPeerEvent(room, 'onPeerJoin', (peerId) => this.peerJoined(peerId))
    hookPeerEvent(room, 'onPeerLeave', (peerId) => this.peerLeft(peerId))

    const existing = room.getPeers?.()
    if (existing) {
      const ids = Array.isArray(existing) ? existing : Object.keys(existing)
      for (const peerId of ids) this.peerJoined(peerId)
    }
  }

  send(peerId: string, data: Uint8Array): void {
    if (this.closed || !this.peers.has(peerId)) return
    this.#send(data, peerId)
  }

  override broadcast(data: Uint8Array): void {
    if (this.closed || this.peers.size === 0) return
    this.#send(data) // no target = all peers, one call
  }

  protected onClose(): void {
    if (this.#leaveOnClose) this.#room.leave()
  }
}

/** Register a peer callback on either API generation (method call vs assignment). */
function hookPeerEvent(room: TrysteroRoomLike, name: 'onPeerJoin' | 'onPeerLeave', callback: (peerId: string) => void): void {
  const slot = (room as unknown as Record<string, unknown>)[name]
  if (typeof slot === 'function') (slot as (cb: unknown) => unknown).call(room, callback)
  else (room as unknown as Record<string, unknown>)[name] = callback
}
