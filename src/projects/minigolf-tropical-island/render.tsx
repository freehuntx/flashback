import { MpFlashplayer, Proxy } from '@/components/MpFlashplayer'
import { PioClient, PioRoom } from '@/lib/pio/client'
import gameSwf from './game.swf'

let pio: PioClient
let lobby: PioRoom

const playerName = new URLSearchParams(location.search).get('name') ?? `Player${Math.floor(Math.random() * (99999 - 1000 + 1) + 1000)}`
const gameProxy: Proxy = {
  host: 'game.local',
  port: 1337,
  async connectionGuard(socket: any) {
    const disconnect = (reason: string) => {
      console.log("CLOSE", reason)
      if (reason) socket.send(`<errorMsg>${reason}</errorMsg>\0`)
      socket.close()
      throw new Error(reason)
    }

    if (pio || lobby) {
      return true
    }

    pio = new PioClient('minigolf-tropical-island-53mvwucbte6gkvmb8kdpxa', true)

    try {
      if (!pio) throw new Error('pio not found')
      await pio.connect()
      lobby = await pio.joinRoom('lobby', 'Lobby', { joinData: { name: playerName } })
    } catch (err) {
      console.error(err)
      disconnect('Connecting failed!')
      return false
    }

    lobby.on('xml', (xml: string) => {
      xml = xml.replace(/\0*$/, '\0').replace(/(<[ \t/]*)Tag(\d)/g, '$1$2')
      xml = xml.replace(/\n\0$/g, '\0')

      socket.send(xml)
    })

    lobby.on('left', () => {
      disconnect('Disconnected')
    })

    const motd = new URLSearchParams(location.search).get('motd')
    if (motd) {
      if (motd.split(':').length > 1) {
        const [name, msg] = motd.split(':')
        socket.send(`<msgAll name="${name}" msg="${msg}" />\0`)
      } else {
        socket.send(`<msgAll name="System" msg="${motd}" />\0`)
      }
    }
    
    return true
  },
  async onMessage(_socket: any, buffer) {
    const xml = new TextDecoder().decode(buffer).replace(/\0*$/, '').replace(/(<[ \t/]*)(\d)/g, '$1Tag$2')
    if (/<beat\//.test(xml)) return

    console.log(lobby, xml)
    lobby?.sendXml(xml)
  }
}

export default function Render() {
  return <MpFlashplayer
    proxies={[
      gameProxy
    ]}
    config={{
      url: gameSwf,
      autoplay: 'on',
      unmuteOverlay: 'hidden',
      preloader: false,
      splashScreen: false,
      logLevel: 'trace',
      parameters: {
        surl: gameProxy.host,
        sport: gameProxy.port,
        csurl: gameProxy.host,
        csport: gameProxy.port,
        sound: 1,
        user: playerName,
        hash: '1bf6093ea530924697ca9cebd7bf4abb'
      }
    }}
    width="500" height="500"
    style={{ justifySelf: 'center', alignSelf: 'center', aspectRatio: '1/1', width: 'auto' }}
  />
}
