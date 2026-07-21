import { VirtualSocket } from './socket.ts'

const CONNECTING = 0
const OPEN = 1
const CLOSING = 2
const CLOSED = 3

/**
 * Minimal-but-faithful WebSocket stand-in that Ruffle's socket proxy talks to.
 * Everything sent by Ruffle is forwarded to the VirtualSocket; everything the
 * VirtualSocket writes is dispatched back as `message` events.
 */
export class FakeWebSocket extends EventTarget {
  static readonly CONNECTING = CONNECTING
  static readonly OPEN = OPEN
  static readonly CLOSING = CLOSING
  static readonly CLOSED = CLOSED

  readonly CONNECTING = CONNECTING
  readonly OPEN = OPEN
  readonly CLOSING = CLOSING
  readonly CLOSED = CLOSED

  readonly url: string
  readonly extensions = ''
  readonly protocol = ''
  bufferedAmount = 0

  #readyState: number = CONNECTING
  // Spec default is 'blob', but this shim exists for Ruffle, which reads
  // ArrayBuffer payloads and may never set binaryType itself (the reference
  // WebSocketMock in flashback does the same).
  #binaryType: BinaryType = 'arraybuffer'
  #socket: VirtualSocket
  #preOpenQueue: Uint8Array[] = []
  #sendQueue: Promise<void> = Promise.resolve()
  #handlers: Partial<Record<'open' | 'message' | 'error' | 'close', EventListener | null>> = {}

  constructor(url: string, socket: VirtualSocket, deliver: (socket: VirtualSocket) => void) {
    super()
    this.url = url
    this.#socket = socket

    // Fire `open` asynchronously, like a real WebSocket. The listener handler
    // runs first so the game server code is wired up before Ruffle can talk.
    // The small delay fakes network latency, mirroring the reference mock.
    setTimeout(() => {
      if (this.#readyState !== CONNECTING) return
      socket._attachSink(
        (data) => this.#deliverToRuffle(data),
        () => this.#closeFromServer()
      )
      try {
        deliver(socket)
      } catch (err) {
        console.error('[flashnet] socket listener threw:', err)
        this.#fail()
        return
      }
      this.#readyState = OPEN
      this.dispatchEvent(new Event('open'))
      for (const data of this.#preOpenQueue) this.#deliverToRuffle(data)
      this.#preOpenQueue.length = 0
    }, 25)
  }

  get readyState(): number {
    return this.#readyState
  }

  get binaryType(): BinaryType {
    return this.#binaryType
  }

  set binaryType(value: BinaryType) {
    if (value === 'blob' || value === 'arraybuffer') this.#binaryType = value
  }

  send(data: string | ArrayBufferLike | ArrayBufferView | Blob): void {
    if (this.#readyState !== OPEN) return

    // Keep ordering even when a Blob (async read) sneaks in between buffers.
    this.#sendQueue = this.#sendQueue.then(async () => {
      if (this.#socket.closed) return
      this.#socket._receive(await normalize(data))
    })
  }

  close(code = 1000, reason = ''): void {
    if (this.#readyState === CLOSING || this.#readyState === CLOSED) return
    this.#readyState = CLOSING
    setTimeout(() => {
      this.#readyState = CLOSED
      this.#socket._remoteClosed()
      this.dispatchEvent(new CloseEvent('close', { code, reason, wasClean: true }))
    }, 0)
  }

  #deliverToRuffle(data: Uint8Array): void {
    if (this.#readyState === CONNECTING) {
      this.#preOpenQueue.push(data)
      return
    }
    if (this.#readyState !== OPEN) return
    const buffer = data.slice().buffer
    const payload = this.#binaryType === 'blob' ? new Blob([buffer]) : buffer
    this.dispatchEvent(new MessageEvent('message', { data: payload }))
  }

  #closeFromServer(): void {
    if (this.#readyState === CLOSED) return
    this.#readyState = CLOSED
    this.dispatchEvent(new CloseEvent('close', { code: 1000, wasClean: true }))
  }

  #fail(): void {
    this.#readyState = CLOSED
    this.dispatchEvent(new Event('error'))
    this.dispatchEvent(new CloseEvent('close', { code: 1006, wasClean: false }))
  }

  // on* properties, wired through EventTarget so both styles work.
  get onopen() { return (this.#handlers.open ?? null) as ((ev: Event) => void) | null }
  set onopen(fn) { this.#setHandler('open', fn as EventListener | null) }
  get onmessage() { return (this.#handlers.message ?? null) as ((ev: MessageEvent) => void) | null }
  set onmessage(fn) { this.#setHandler('message', fn as EventListener | null) }
  get onerror() { return (this.#handlers.error ?? null) as ((ev: Event) => void) | null }
  set onerror(fn) { this.#setHandler('error', fn as EventListener | null) }
  get onclose() { return (this.#handlers.close ?? null) as ((ev: CloseEvent) => void) | null }
  set onclose(fn) { this.#setHandler('close', fn as EventListener | null) }

  #setHandler(type: 'open' | 'message' | 'error' | 'close', fn: EventListener | null): void {
    const previous = this.#handlers[type]
    if (previous) this.removeEventListener(type, previous)
    this.#handlers[type] = fn
    if (fn) this.addEventListener(type, fn)
  }
}

async function normalize(data: string | ArrayBufferLike | ArrayBufferView | Blob): Promise<Uint8Array> {
  if (typeof data === 'string') return new TextEncoder().encode(data)
  if (data instanceof Blob) return new Uint8Array(await data.arrayBuffer())
  if (ArrayBuffer.isView(data)) return new Uint8Array(data.buffer.slice(data.byteOffset, data.byteOffset + data.byteLength))
  return new Uint8Array(data)
}
