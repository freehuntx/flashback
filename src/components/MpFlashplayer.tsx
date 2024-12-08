import { useEffect, useMemo } from "react";
import { WebSocketClient, WebSocketServer, ConnectionGuard } from "@/lib/ws-browser-mock";
import { mergeDeep } from "@/utils/object";
import { Flashplayer, FlashplayerProps } from "./Flashplayer";

export interface Proxy {
  host: string;
  port: number;
  connectionGuard?: ConnectionGuard
  onConnect?: (socket: WebSocketClient) => void
  onDisconnect?: (socket: WebSocketClient, code?: number, reason?: string) => void
  onMessage?: (socket: WebSocketClient, buffer: ArrayBuffer) => void
}

export interface MpFlashplayerProps extends FlashplayerProps {
  proxies: Proxy[]
}

export function MpFlashplayer({ proxies, config, ...props }: MpFlashplayerProps) {
  const mergedConfig = useMemo(() => {
    return mergeDeep(config, {
      socketProxy: proxies.map(({ host, port }) => ({
        host,
        port,
        proxyUrl: `wss://${host}:${port}`
      }))
    })
  }, [config, proxies])

  useEffect(() => {
    if (!proxies) return
 
    let servers = proxies.map(proxy => {
      const server = new WebSocketServer({
        host: proxy.host,
        port: proxy.port,
        connectionGuard: proxy.connectionGuard
      })

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