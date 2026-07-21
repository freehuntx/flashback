import { BaseBridge } from './bridge.ts'

/**
 * A bridge with no peers, ever. Lets game modules take a Bridge
 * unconditionally - singleplayer is just "multiplayer with nobody there".
 */
export function loopbackBridge(selfId = 'local'): BaseBridge {
  return new (class extends BaseBridge {
    send(): void {
      /* nobody to talk to */
    }
    protected onClose(): void {
      /* nothing to tear down */
    }
  })(selfId)
}
