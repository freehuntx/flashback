import { TypedEventTarget } from './typed-eventtarget'

type MockUrl = string | RegExp
type MockListener = (socket: WebSocketMock) => Promise<void> | void
type WsData = string | ArrayBuffer | Blob | ArrayBufferView

interface Events {
  open: (e: Event) => void
  close: (e: CloseEvent) => void
  message: (e: MessageEvent<WsData>) => void
  send: (e: MessageEvent<WsData>) => void
  recv: (e: MessageEvent<WsData>) => void
  error: (e: Event) => void
}

export class WebSocketMock extends TypedEventTarget<Events> implements WebSocket {
  //////// 
  static #RealWebSocket = window.WebSocket
  static #mocks: { url: MockUrl; cb: MockListener }[] = []

  static register(url: MockUrl, cb: MockListener): () => void {
    const mock = { url, cb }
    this.#mocks.push(mock)
    return () => this.#mocks.splice(this.#mocks.indexOf(mock), 1)
  }

  static unregister(url: MockUrl, cb?: MockListener) {
    for (let i=this.#mocks.length-1; i>=0; i--) {
      const mock = this.#mocks[i]
      if (mock.url.toString() !== url.toString()) continue
      if (cb && mock.cb !== cb) continue
      this.#mocks.splice(i, 1)
    }
  }

  static dataToString(data: WsData): string {
    if (ArrayBuffer.isView(data)) data = data.buffer.slice(data.byteOffset, data.byteOffset + data.byteLength)
    if (data instanceof ArrayBuffer) data = new TextDecoder().decode(data)
    if (data instanceof Blob) data = '[object Blob]'
    return data
  }

  static {
    window.WebSocket = this
  }
  /////////

  static CONNECTING = 0 as const
  static OPEN = 1 as const
  static CLOSING = 2 as const
  static CLOSED = 3 as const
  readonly CONNECTING = 0 as const
  readonly OPEN = 1 as const
  readonly CLOSING = 2 as const
  readonly CLOSED = 3 as const

  protocol: string = ''
  readyState: number = this.CLOSED
  url: string = ''
  extensions: string = ''
  bufferedAmount: number = 0
  binaryType: BinaryType = 'arraybuffer'
  
  onopen: ((ev: Event) => any) | null = null
  onclose: ((ev: CloseEvent) => any) | null = null
  onmessage: ((ev: MessageEvent) => any) | null = null
  onsend: ((ev: MessageEvent) => any) | null = null
  onrecv: ((ev: MessageEvent) => any) | null = null
  onerror: ((ev: Event) => any) | null = null

  constructor(url: string | URL, protocols?: string | string[]) {
    super()

    this.url = new URL(url).href.replace(/[\/\\]*$/, '')

    const mocks = WebSocketMock.#mocks.filter(e => {
      if (typeof e.url === 'string') return e.url === this.url
      return e.url.test(this.url)
    })
    if (!mocks.length) return new WebSocketMock.#RealWebSocket(url, protocols) as WebSocketMock

    this.addEventListener('open', e => this.onopen?.(e))
    this.addEventListener('close', e => this.onclose?.(e as CloseEvent))
    this.addEventListener('message', e => this.onmessage?.(e as MessageEvent))
    this.addEventListener('send', e => this.onsend?.(e as MessageEvent))
    this.addEventListener('recv', e => this.onrecv?.(e as MessageEvent))
    this.addEventListener('error', e => this.onerror?.(e))

      
    if (protocols) {
      this.protocol = typeof protocols === 'string' ? protocols : protocols.join(',')
    }

    this.readyState = this.CONNECTING

    Promise.all([
      new Promise(res => setTimeout(res, 100)), // Atleast wait 100 ms to fake network delay
      ...mocks.map(e => e.cb(this))
    ]).then(() => {
      this.readyState = this.OPEN
      this.dispatchEvent(new Event('open'))
    }).catch(() => {
      this.readyState = this.CLOSED

      this.dispatchEvent(new Event('error'))
      this.dispatchEvent(new CloseEvent('close', { wasClean: false, code: 1006, reason: '' }))
    })
  }

  send(data: WsData): void {
    if (this.readyState !== this.OPEN) return
    data = this.#copyData(data)

    this.dispatchEvent(new MessageEvent('send', { data }))
  }

  recv(data: WsData): void {
    if (typeof data === 'string' && this.binaryType === 'arraybuffer') {
      data = new TextEncoder().encode(data).buffer
    }

    if (this.readyState !== this.OPEN) return
    data = this.#copyData(data)
    this.dispatchEvent(new MessageEvent('recv', { data }))
    this.dispatchEvent(new MessageEvent('message', { data }))
  }

  close(code = 1000, reason = ''): void {
    if (this.readyState === this.CLOSED) return
    if (this.readyState === this.CLOSING) return
    if (code !== 1000 && (code < 3000 || code > 4999)) {
      throw new Error('Invalid close code')
    }
    if (reason.length > 123) {
      throw new Error('Reason string too long')
    }

    this.readyState = this.CLOSING
    this.readyState = this.CLOSED

    this.dispatchEvent(new CloseEvent('close', { wasClean: true, code, reason }))
  }

  #copyData(data: WsData) {
    if (ArrayBuffer.isView(data)) {
      const buffer = data.buffer.slice(data.byteOffset, data.byteOffset + data.byteLength)
      data = Reflect.construct(data.constructor, [buffer])
    } else if (data instanceof ArrayBuffer) {
      data = data.slice(0)
    }
    return data
  }
}

export default WebSocketMock
