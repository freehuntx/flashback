/** Protocol and migration integration test for Blast Rage Online. */
import assert from 'node:assert/strict'

if (typeof globalThis.CloseEvent === 'undefined') {
  globalThis.CloseEvent = class CloseEvent extends Event {
    constructor(type, init = {}) {
      super(type)
      this.code = init.code ?? 0
      this.reason = init.reason ?? ''
      this.wasClean = init.wasClean ?? false
    }
  }
}

const { VirtualNetwork, BaseBridge, createSession } = await import('../src/flashnet/index.ts')
const { blastRage, decodePacket } = await import('../src/games/blast-rage-online/game.ts')
const sleep = (ms) => new Promise((resolve) => setTimeout(resolve, ms))
const enc = (value) => new TextEncoder().encode(value)
const dec = (value) => new TextDecoder().decode(value)

class HubBridge extends BaseBridge {
  constructor(id, hub) { super(id); this.hub = hub }
  send(peerId, data) {
    const target = this.hub.get(peerId)
    if (target) queueMicrotask(() => target._deliver(this.selfId, data))
  }
  _deliver(from, data) { this.received(from, data) }
  _join(id) { this.peerJoined(id) }
  _left(id) { this.peerLeft(id) }
  onClose() {}
}

const hub = new Map()
const joinHub = (id) => {
  const bridge = new HubBridge(id, hub)
  for (const other of hub.values()) { other._join(id); bridge._join(other.selfId) }
  hub.set(id, bridge)
  return bridge
}
const crashHub = (id) => {
  const bridge = hub.get(id)
  if (bridge) bridge.hub = new Map()
  hub.delete(id)
  for (const other of hub.values()) other._left(id)
}

const PORT = 1247
const SYNC_PORT = 1248
const definition = () => blastRage({ endpoint: `dev.mmocha.com:${PORT}`, syncEndpoint: `dev.mmocha.com:${SYNC_PORT}` })
const options = (net, id) => ({ net, bridge: joinHub(id), settleMs: 40, snapshotMs: 20, closeBridgeOnLeave: false })
const netA = new VirtualNetwork()
const netB = new VirtualNetwork()
const sessionA = await createSession(definition(), options(netA, 'aaa'))
const sessionB = await createSession(definition(), options(netB, 'bbb'))
await sleep(60)
assert.ok(sessionA.ruffleConfig().socketProxy.some(({ host, port }) => host === 'dev.mmocha.com' && port === PORT))

const connect = async (session, port) => {
  const proxy = session.ruffleConfig().socketProxy.find((item) => item.port === port)
  assert.ok(proxy)
  const ws = new WebSocket(proxy.proxyUrl)
  ws.binaryType = 'arraybuffer'
  const messages = []
  let buffer = ''
  ws.onmessage = (event) => {
    buffer += dec(new Uint8Array(event.data))
    let end
    while ((end = buffer.indexOf('\0')) !== -1) {
      messages.push(buffer.slice(0, end))
      buffer = buffer.slice(end + 1)
    }
  }
  await new Promise((resolve) => (ws.onopen = resolve))
  return {
    send: (packet) => ws.send(enc(packet + '\0').buffer),
    messages,
    last: (prefix) => messages.filter((packet) => packet.startsWith(prefix)).at(-1),
  }
}

const aliceSync = await connect(sessionA, SYNC_PORT)
aliceSync.send(JSON.stringify({ t: 'create', id: 1, name: 'Alice', password: 'secret' }))
await sleep(30)
const created = JSON.parse(aliceSync.last('{'))
assert.equal(created.ok, true)
assert.equal(created.profile.tanks.length, 3)

const alice = await connect(sessionA, PORT)
const bob = await connect(sessionB, PORT)
alice.send('09Alice;secret')
bob.send('09Bob;pw')
await sleep(30)
assert.match(alice.last('A'), /^A\d{3}Alice\|10000\|0\|0\|\d+\|1,1,ffd71e,262626,1,9,8/)
assert.match(bob.last('A'), /^A\d{3}Bob\|/)
const aliceUid = alice.last('A').slice(1, 4)
const bobUid = bob.last('A').slice(1, 4)

alice.send('03_')
bob.send('03_')
await sleep(30)
assert.equal(alice.last('C'), `C${bobUid}`)
assert.equal(alice.last(`U${bobUid}`), `U${bobUid}#BobA0`)

alice.send('0201Arena[0,1]1AAA')
await sleep(30)
assert.equal(alice.messages.includes(`C${aliceUid}1`), true)
bob.send('01')
await sleep(20)
assert.equal(bob.last('01'), '01011Arena')
bob.send('03Arena')
await sleep(30)
assert.equal(bob.messages.includes(`U${aliceUid}#Alice`), true)
assert.ok(bob.messages.some((packet) => packet.startsWith(`M${bobUid}AW`)), 'map state sent on join')
assert.equal(bob.messages.includes(`M${bobUid}AP`), true, 'new rooms start in the warmup phase')

const alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890-='
const plaintext = 'Qhello'
const shifted = 'B' + [...plaintext].map((char) => alphabet[(alphabet.indexOf(char) + 1) % 64]).join('')
assert.equal(decodePacket(shifted), plaintext)
bob.send(shifted)
await sleep(30)
assert.equal(alice.last('M'), `M${bobUid}${shifted}`)
assert.equal(bob.last('M'), `M${bobUid}${shifted}`, 'sender receives its own relay')

await sleep(80)
crashHub('aaa')
await sleep(1700)
assert.equal(sessionB.isHost, true)
assert.equal(bob.messages.includes(`D${aliceUid}`), true)
bob.send('01')
await sleep(30)
assert.equal(bob.last('01'), '01011Arena', 'room survives host migration')
bob.send('03Arena')
await sleep(20)
assert.equal(bob.messages.filter((packet) => packet === `C${bobUid}1`).length, 1, 'same-room join is idempotent')

const realNow = Date.now
let now = realNow()
Date.now = () => now
try {
  now += 11_000
  await sleep(300)
  assert.equal(bob.last(`M${bobUid}A`), `M${bobUid}AN`, 'warmup transitions to the active round')
  now += 301_000
  await sleep(300)
  assert.equal(bob.last(`M${bobUid}A`), `M${bobUid}AO`, 'active round transitions to the summary')
  now += 31_000
  await sleep(300)
  assert.equal(bob.last(`M${bobUid}A`), `M${bobUid}AP`, 'summary starts the next round after 30 seconds')
} finally {
  Date.now = realNow
}

sessionA.leave()
sessionB.leave()
netA.dispose()
netB.dispose()
console.log('✔ blast-rage: accounts, auth, lobby, rooms, encrypted relays & migration')
