import { BaseBridge } from './bridge.ts'

export interface BroadcastChannelBridgeOptions {
  /** Channel name; every tab using the same name joins the same session. Default: "flashnet". */
  channel?: string
  /** Override the generated peer id (handy for debugging). */
  selfId?: string
}

type Frame =
  | { t: 'hello'; from: string }
  | { t: 'welcome'; from: string }
  | { t: 'bye'; from: string }
  | { t: 'data'; from: string; to?: string; data: Uint8Array }

/**
 * Zero-infrastructure bridge between browser tabs on the same origin.
 * Perfect for testing multiplayer logic locally before wiring up Trystero
 * or PlayerIO - just open the game twice.
 */
export function broadcastChannelBridge(options: BroadcastChannelBridgeOptions = {}): BroadcastChannelBridge {
  return new BroadcastChannelBridge(options)
}

class BroadcastChannelBridge extends BaseBridge {
  #channel: BroadcastChannel
  #unloadHandler = () => this.close()

  constructor({ channel = 'flashnet', selfId }: BroadcastChannelBridgeOptions) {
    super(selfId ?? `tab-${Math.random().toString(36).slice(2, 10)}`)
    this.#channel = new BroadcastChannel(channel)

    this.#channel.onmessage = ({ data }: MessageEvent<Frame>) => {
      switch (data.t) {
        case 'hello':
          this.peerJoined(data.from)
          this.#post({ t: 'welcome', from: this.selfId })
          break
        case 'welcome':
          this.peerJoined(data.from)
          break
        case 'bye':
          this.peerLeft(data.from)
          break
        case 'data':
          if (!data.to || data.to === this.selfId) this.received(data.from, data.data)
          break
      }
    }

    globalThis.addEventListener?.('beforeunload', this.#unloadHandler)
    this.#post({ t: 'hello', from: this.selfId })
  }

  send(peerId: string, data: Uint8Array): void {
    if (this.closed || !this.peers.has(peerId)) return
    this.#post({ t: 'data', from: this.selfId, to: peerId, data })
  }

  override broadcast(data: Uint8Array): void {
    if (this.closed || this.peers.size === 0) return
    this.#post({ t: 'data', from: this.selfId, data })
  }

  protected onClose(): void {
    this.#post({ t: 'bye', from: this.selfId })
    globalThis.removeEventListener?.('beforeunload', this.#unloadHandler)
    this.#channel.close()
  }

  #post(frame: Frame): void {
    try {
      this.#channel.postMessage(frame)
    } catch {
      /* channel already closed */
    }
  }
}
