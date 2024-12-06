import { MpFlashplayer, Proxy } from '@/components/MpFlashplayer'
import { PioClient } from '@/lib/pio/client'
import gameSwf from './game.swf'

const playerName = new URLSearchParams(location.search).get('name') ?? `Player${Math.floor(Math.random() * (99999 - 1000 + 1) + 1000)}`
const bomberPenguProxy: Proxy = {
  host: 'bomberpengu.local',
  port: 1337,
  async onConnect(socket: any) {
    const disconnect = (reason: string) => {
      if (reason) socket.send(`<errorMsg>${reason}</errorMsg>\0`)
      socket.close()
      throw new Error(reason)
    }

    if (socket.pio || socket.lobby) {
      disconnect('Already connected')
    }

    socket.pio = new PioClient('bomberpengu-b3s34ovekbapmidml5oq')

    try {
      if (!socket.pio) throw new Error('pio not found')
      await socket.pio.connect()
      socket.lobby = await socket.pio.joinRoom('lobby', 'Lobby', { joinData: { name: playerName } })
    } catch (err) {
      console.error(err)
      disconnect('Connecting failed!')
    }

    const motd = new URLSearchParams(location.search).get('motd')
    if (motd) {
      if (motd.split(':').length > 1) {
        const [name, msg] = motd.split(':')
        socket.send(`<msgAll name="${name}" msg="${msg}" />\0`)
      } else {
        socket.send(`<msgAll name="System" msg="${motd}" />\0`)
      }
    }

    socket.lobby.on('xml', (xml: string) => {
      xml = xml.replace(/\0*$/, '\0').replace(/(<[ \t/]*)Tag(\d)/g, '$1$2')
      xml = xml.replace(/\n\0$/g, '\0')

      socket.send(xml)
    })

    socket.lobby.on('left', () => {
      disconnect('Disconnected')
    })
  },
  onDisconnect(_socket) {},
  async onMessage(socket: any, buffer) {   
    const xml = new TextDecoder().decode(buffer).replace(/\0*$/, '').replace(/(<[ \t/]*)(\d)/g, '$1Tag$2')
    if (/<beat\//.test(xml)) return

    socket.lobby?.sendXml(xml)
  }
}

export function Render() {


  return <MpFlashplayer
    proxies={[
      bomberPenguProxy
    ]}
    config={{
      url: gameSwf,
      autoplay: 'on',
      unmuteOverlay: 'hidden',
      preloader: false,
      splashScreen: false,
      logLevel: 'error',
      parameters: {
        surl: bomberPenguProxy.host,
        sport: bomberPenguProxy.port,
        sound: 1,
        user: playerName,
        hash: '1bf6093ea530924697ca9cebd7bf4abb'
      }
    }}
    width="500" height="500"
    style={{ justifySelf: 'center', alignSelf: 'center', aspectRatio: '1/1', width: 'auto' }}
  />
}

export default Render
