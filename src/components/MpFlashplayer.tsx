import { WebSocketClient, WebSocketServer } from "@/lib/ws-browser-mock";
import { Flashplayer, FlashplayerProps } from "./Flashplayer";
import { mergeDeep } from "@/utils/object";
import { useFixedMemo } from "@/hooks/memo";
import { useFixedEffect } from "@/hooks/effect";

export interface Proxy {
  host: string;
  port: number;
  onConnect?: (socket: WebSocketClient) => void
  onDisconnect?: (socket: WebSocketClient, code?: number, reason?: string) => void
  onMessage?: (socket: WebSocketClient, buffer: ArrayBuffer) => void
}

export interface MpFlashplayerProps extends FlashplayerProps {
  proxies: Proxy[]
}

export function MpFlashplayer({ proxies, config, ...props }: MpFlashplayerProps) {
  const mergedConfig = useFixedMemo(() => {
    return mergeDeep(config, {
      socketProxy: proxies.map(({ host, port }) => ({
        host,
        port,
        proxyUrl: `wss://${host}:${port}`
      }))
    })
  }, [config])

  useFixedEffect(() => {
    if (!proxies) return

    // eslint-disable-next-line @typescript-eslint/no-unused-vars
    let servers = proxies.map(proxy => {
      const server = new WebSocketServer({ host: proxy.host, port: proxy.port })

      server.on('connection', (socket: WebSocketClient) => {
        proxy.onConnect?.(socket)

        socket.on('message', (buffer: ArrayBuffer) => {
          proxy.onMessage?.(socket, buffer)
        })

        socket.on('close', (code, reason) => {
          proxy.onDisconnect?.(socket, code, reason)
        })
      })

      return server
    })

    return () => {
      for(const _server of servers) {
        // server.close() // NOT IMPLEMENTED
      }
      servers = []
    }
  }, [proxies])
  
  return (
    <Flashplayer {...props} config={mergedConfig} />
  )
}