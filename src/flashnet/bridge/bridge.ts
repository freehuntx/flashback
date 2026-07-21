import { Emitter, type Unsubscribe } from '../events.ts'

export type BridgeEvents = {
  join: (peerId: string) => void
  leave: (peerId: string) => void
  message: (peerId: string, data: Uint8Array) => void
  close: () => void
}

/**
 * Transport-agnostic connection to the other players.
 * Deliberately minimal: peers come and go, raw bytes flow. Everything else
 * (protocols, authority, rooms) is up to the game module.
 */
export interface Bridge {
  readonly selfId: string
  readonly peers: ReadonlySet<string>
  send(peerId: string, data: Uint8Array): void
  broadcast(data: Uint8Array): void
  on<K extends keyof BridgeEvents>(event: K, listener: BridgeEvents[K]): Unsubscribe
  once<K extends keyof BridgeEvents>(event: K, listener: BridgeEvents[K]): Unsubscribe
  off<K extends keyof BridgeEvents>(event: K, listener: BridgeEvents[K]): void
  close(): void
}

/** Base class for bridge adapters. Handles peer bookkeeping and events. */
export abstract class BaseBridge extends Emitter<BridgeEvents> implements Bridge {
  #peers = new Set<string>()
  #closed = false

  constructor(readonly selfId: string) {
    super()
  }

  get peers(): ReadonlySet<string> {
    return this.#peers
  }

  get closed(): boolean {
    return this.#closed
  }

  abstract send(peerId: string, data: Uint8Array): void

  broadcast(data: Uint8Array): void {
    for (const peerId of this.#peers) this.send(peerId, data)
  }

  close(): void {
    if (this.#closed) return
    this.#closed = true
    this.onClose()
    this.emit('close')
    this.clearListeners()
    this.#peers.clear()
  }

  /** Adapter-specific teardown. */
  protected abstract onClose(): void

  protected peerJoined(peerId: string): void {
    if (this.#closed || peerId === this.selfId || this.#peers.has(peerId)) return
    this.#peers.add(peerId)
    this.emit('join', peerId)
  }

  protected peerLeft(peerId: string): void {
    if (!this.#peers.delete(peerId)) return
    this.emit('leave', peerId)
  }

  protected received(peerId: string, data: Uint8Array): void {
    if (this.#closed) return
    this.emit('message', peerId, data)
  }
}
