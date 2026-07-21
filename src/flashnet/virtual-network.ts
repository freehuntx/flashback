import { VirtualSocket } from './socket.ts'
import { FakeWebSocket } from './websocket-shim.ts'
import type { Unsubscribe } from './events.ts'

export type SocketHandler = (socket: VirtualSocket) => void

export type HttpMatcher = string | RegExp | ((url: URL, request: Request) => boolean)

export interface VirtualHttpResponse {
  status?: number
  statusText?: string
  headers?: Record<string, string>
  body?: BodyInit | null
}

/** Return a Response/VirtualHttpResponse to answer, or undefined to pass through to the real network. */
export type HttpHandler = (
  request: Request,
  url: URL
) => Response | VirtualHttpResponse | undefined | Promise<Response | VirtualHttpResponse | undefined>

export interface RuffleSocketProxy {
  host: string
  port: number
  proxyUrl: string
}

interface SocketRegistration {
  host: string
  port: number
  proxyUrl: string
  handler: SocketHandler
}

interface HttpRegistration {
  matcher: HttpMatcher
  handler: HttpHandler
}

// ---------------------------------------------------------------------------
// Global hook manager - WebSocket/fetch are patched once, no matter how many
// VirtualNetwork instances exist. Hooks are restored when the last one is
// disposed.
// ---------------------------------------------------------------------------

const globalScope = globalThis as typeof globalThis & {
  WebSocket: typeof WebSocket
  fetch: typeof fetch
}

const socketRoutes = new Map<string, SocketRegistration>() // normalized proxyUrl -> registration
const httpRoutes = new Set<HttpRegistration>()
let nativeWebSocket: typeof WebSocket | null = null
let nativeFetch: typeof fetch | null = null
let activeNetworks = 0
let debugEnabled = false

const debugLog = (...args: unknown[]): void => {
  if (debugEnabled) console.log('[flashnet]', ...args)
}

/** Ruffle parses the configured proxyUrl and hands us the *serialized* form
 *  (e.g. "wss://host:1234" arrives as "wss://host:1234/"), so both sides of
 *  the lookup go through the same normalization. */
function normalizeWsUrl(url: string | URL): string {
  try {
    return new URL(String(url)).href.replace(/\/+$/, '')
  } catch {
    return String(url)
  }
}

function installHooks(): void {
  if (nativeWebSocket) return
  nativeWebSocket = globalScope.WebSocket
  nativeFetch = globalScope.fetch

  const NativeWS = nativeWebSocket
  const patchedWebSocket = function (this: unknown, url: string | URL, protocols?: string | string[]) {
    const registration = socketRoutes.get(normalizeWsUrl(url))
    if (registration) {
      debugLog(`ws intercept ${String(url)} -> ${registration.host}:${registration.port}`)
      const socket = new VirtualSocket(registration.host, registration.port)
      return new FakeWebSocket(String(url), socket, registration.handler)
    }
    debugLog(`ws passthrough ${String(url)}`)
    return new NativeWS(url, protocols)
  } as unknown as typeof WebSocket

  patchedWebSocket.prototype = NativeWS.prototype
  for (const key of ['CONNECTING', 'OPEN', 'CLOSING', 'CLOSED'] as const) {
    Object.defineProperty(patchedWebSocket, key, { value: NativeWS[key] })
  }
  globalScope.WebSocket = patchedWebSocket

  const boundFetch = nativeFetch.bind(globalScope)
  globalScope.fetch = async (input: RequestInfo | URL, init?: RequestInit): Promise<Response> => {
    if (httpRoutes.size > 0) {
      const request = new Request(input as RequestInfo, init)
      const url = new URL(request.url)
      for (const { matcher, handler } of httpRoutes) {
        if (!matchesHttp(matcher, url, request)) continue
        const result = await handler(request.clone(), url)
        if (result !== undefined) {
          debugLog(`http intercept ${request.method} ${request.url}`)
          return toResponse(result)
        }
      }
      return boundFetch(request)
    }
    return boundFetch(input as RequestInfo, init)
  }
}

function uninstallHooks(): void {
  if (!nativeWebSocket || !nativeFetch) return
  globalScope.WebSocket = nativeWebSocket
  globalScope.fetch = nativeFetch
  nativeWebSocket = null
  nativeFetch = null
}

function matchesHttp(matcher: HttpMatcher, url: URL, request: Request): boolean {
  if (typeof matcher === 'function') return matcher(url, request)
  if (matcher instanceof RegExp) return matcher.test(url.href)
  if (matcher.includes('://')) return url.href.startsWith(matcher)
  return url.host === matcher || url.hostname === matcher
}

function toResponse(result: Response | VirtualHttpResponse): Response {
  if (result instanceof Response) return result
  return new Response(result.body ?? null, {
    status: result.status ?? 200,
    statusText: result.statusText,
    headers: result.headers,
  })
}

// ---------------------------------------------------------------------------
// VirtualNetwork
// ---------------------------------------------------------------------------

let proxyCounter = 0

/**
 * Intercepts the network traffic of a Ruffle-emulated SWF.
 *
 * - `listen()` registers a virtual TCP endpoint; wire it into Ruffle with
 *   the config returned by `ruffleConfig()`.
 * - `listenHttp()` intercepts fetch() calls (Ruffle routes URLLoader &
 *   friends through fetch), e.g. for API endpoints or crossdomain.xml.
 */
export interface VirtualNetworkOptions {
  /** Log every intercepted / passed-through WebSocket and HTTP request. */
  debug?: boolean
}

export class VirtualNetwork {
  #sockets = new Set<SocketRegistration>()
  #https = new Set<HttpRegistration>()
  #disposed = false

  constructor(options: VirtualNetworkOptions = {}) {
    if (options.debug) debugEnabled = true
    activeNetworks++
    installHooks()
  }

  /**
   * Listen on a virtual `host:port` the SWF connects to.
   * Accepts `"host:port"` or `{ host, port }`. Returns an unsubscribe function.
   */
  listen(address: string | { host: string; port: number }, handler: SocketHandler): Unsubscribe {
    this.#assertActive()
    const { host, port } = parseAddress(address)
    const proxyUrl = `ws://flashnet.invalid/${proxyCounter++}/${encodeURIComponent(host)}/${port}`
    const registration: SocketRegistration = { host, port, proxyUrl, handler }
    const routeKey = normalizeWsUrl(proxyUrl)
    this.#sockets.add(registration)
    socketRoutes.set(routeKey, registration)
    debugLog(`listening on ${host}:${port} (proxy ${proxyUrl})`)
    return () => {
      this.#sockets.delete(registration)
      socketRoutes.delete(routeKey)
    }
  }

  /** Intercept HTTP requests. First matching handler wins; return undefined to pass through. */
  listenHttp(matcher: HttpMatcher, handler: HttpHandler): Unsubscribe {
    this.#assertActive()
    const registration: HttpRegistration = { matcher, handler }
    this.#https.add(registration)
    httpRoutes.add(registration)
    return () => {
      this.#https.delete(registration)
      httpRoutes.delete(registration)
    }
  }

  /**
   * Ruffle config fragment for all current `listen()` registrations.
   * Spread it into the config you pass to `ruffle.load(...)` / `RufflePlayer`.
   */
  ruffleConfig(): { socketProxy: RuffleSocketProxy[] } {
    return {
      socketProxy: [...this.#sockets].map(({ host, port, proxyUrl }) => ({ host, port, proxyUrl })),
    }
  }

  /** Remove all registrations of this network; restores native WebSocket/fetch once no network is left. */
  dispose(): void {
    if (this.#disposed) return
    this.#disposed = true
    for (const registration of this.#sockets) socketRoutes.delete(normalizeWsUrl(registration.proxyUrl))
    for (const registration of this.#https) httpRoutes.delete(registration)
    this.#sockets.clear()
    this.#https.clear()
    if (--activeNetworks === 0) uninstallHooks()
  }

  #assertActive(): void {
    if (this.#disposed) throw new Error('VirtualNetwork has been disposed')
  }
}

function parseAddress(address: string | { host: string; port: number }): { host: string; port: number } {
  if (typeof address !== 'string') return address
  const separator = address.lastIndexOf(':')
  const host = address.slice(0, separator)
  const port = Number(address.slice(separator + 1))
  if (!host || !Number.isInteger(port) || port <= 0 || port > 65535) {
    throw new Error(`Invalid address "${address}", expected "host:port"`)
  }
  return { host, port }
}
