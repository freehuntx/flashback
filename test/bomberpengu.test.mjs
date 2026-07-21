/**
 * Protocol + migration integration test. Runs in Node against the built lib:
 *   npm run build && node --experimental-strip-types test/integration.test.mjs
 */
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
const { bomberpengu } = await import('../src/games/bomberpengu/game.ts')

const sleep = (ms) => new Promise((r) => setTimeout(r, ms))
const enc = (s) => new TextEncoder().encode(s)
const dec = (b) => new TextDecoder().decode(b)

// In-memory hub so N bridges can talk like one trystero room.
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
const crashHub = (id) => { // no goodbye, like a closed tab
  const bridge = hub.get(id)
  if (bridge) bridge.hub = new Map() // a dead tab can't send anything anymore
  hub.delete(id)
  for (const other of hub.values()) other._left(id)
}
const crashHubDelayed = (id, ms) => { // dead tab whose peer-leave lags behind
  const bridge = hub.get(id)
  if (bridge) bridge.hub = new Map()
  hub.delete(id)
  setTimeout(() => { for (const other of hub.values()) other._left(id) }, ms)
}
const joinHubIsolated = (id) => { // joined the room, WebRTC links not yet open
  const bridge = new HubBridge(id, hub)
  hub.set(id, bridge)
  return bridge
}
const connectPeers = (id) => { // ...now they open
  const bridge = hub.get(id)
  for (const other of hub.values()) {
    if (other === bridge) continue
    other._join(id)
    bridge._join(other.selfId)
  }
}

const game = () => bomberpengu({ endpoint: 'localhost:4444' })
const opts = (net, id) => ({ net, bridge: joinHub(id), settleMs: 40, snapshotMs: 20, closeBridgeOnLeave: false })
const netA = new VirtualNetwork(), netB = new VirtualNetwork(), netC = new VirtualNetwork(), netD = new VirtualNetwork()

const sessionA = await createSession(game(), opts(netA, 'aaa'))
const sessionB = await createSession(game(), opts(netB, 'bbb'))
const sessionC = await createSession(game(), opts(netC, 'ccc'))
await sleep(60)
assert.equal(sessionA.isHost, true)
assert.equal(sessionB.hostId, 'aaa')

// Simulate each player's Ruffle: XMLSocket client (\0-framed, trailing \n like the SWF).
const makeClient = async (session) => {
  const proxy = session.ruffleConfig().socketProxy[0]
  const ws = new WebSocket(proxy.proxyUrl)
  ws.binaryType = 'arraybuffer'
  const messages = []
  let buf = ''
  ws.onmessage = (ev) => {
    buf += dec(new Uint8Array(ev.data))
    let i
    while ((i = buf.indexOf('\0')) !== -1) { messages.push(buf.slice(0, i)); buf = buf.slice(i + 1) }
  }
  let closed = false
  ws.onclose = () => (closed = true)
  await new Promise((r) => (ws.onopen = r))
  return {
    send: (xml) => ws.send(enc(xml + '\n\0').buffer), // XMLSocket.send appends \0; SWF strings end in \n
    messages,
    got: (part) => messages.filter((m) => m.includes(part)),
    isClosed: () => closed,
  }
}

const alice = await makeClient(sessionA)
const bob = await makeClient(sessionB)
const carol = await makeClient(sessionC)
alice.send('<auth name="Alice" version="1.1.0.spika" hash="1bf6093ea530924697ca9cebd7bf4abb"/>')
await sleep(20)
bob.send('<auth name="Bob" version="1.1.0.spika" hash="1bf6093ea530924697ca9cebd7bf4abb"/>')
await sleep(20)
carol.send('<auth name="Carol" version="1.1.0.spika" hash="1bf6093ea530924697ca9cebd7bf4abb"/>')
await sleep(30)

// userList: Alice sees herself as state "5"; Carol's list has everyone.
assert.ok(alice.got('<userList>')[0].includes('name="Alice" skill="0/0/0" state="5"'))
const carolList = carol.got('<userList>')[0]
assert.ok(carolList.includes('name="Alice"') && carolList.includes('name="Bob"') && carolList.includes('name="Carol"'))
assert.ok(alice.got('<newPlayer').length === 2, 'Alice saw Bob and Carol join')

// Heartbeat is swallowed, ping is answered.
alice.send('<beat/>')
alice.send('<ping/>')
await sleep(20)
assert.equal(alice.got('<pong/>').length, 1)

// Lobby chat reaches everyone not in a match.
alice.send('<msgAll name="Alice" msg="hello"/>')
await sleep(20)
assert.ok(bob.got('msg="hello"').length === 1 && carol.got('msg="hello"').length === 1)

// Challenge flow: Bob challenges Carol, Carol accepts.
bob.send('<challenge name="Carol" hash="xxxxxx"/>')
await sleep(20)
assert.equal(carol.got('<request name="Bob"').length, 1)
carol.send('<startGame name="Bob" hash="xxxxxx"/>')
await sleep(20)
assert.equal(bob.got('<startGame name="Carol"').length, 1)

// Ingame relay: verbatim, only to the enemy.
carol.send('<12 x="7"  y="3" c="39"/>')
await sleep(20)
assert.equal(bob.got('<12 x="7"').length, 1)
assert.equal(alice.got('<12').length, 0)

// In-match chat goes to the enemy only, as msgPlayer.
carol.send('<msgPlayer name="Carol" msg="gl"/>')
await sleep(20)
assert.equal(bob.got('<msgPlayer name="Carol" msg="gl"').length, 1)

// ---- host Alice crashes MID-MATCH (closed tab, no goodbye) ----------------
await sleep(50) // let snapshots replicate
crashHub('aaa')
await sleep(80)

assert.equal(sessionB.isHost, true)
assert.equal(sessionC.hostId, 'bbb')
assert.equal(bob.isClosed(), false, 'SWF sockets must survive the migration')
assert.equal(carol.isClosed(), false, 'SWF sockets must survive the migration')
assert.equal(bob.got('<playerLeft name="Alice"').length, 1, 'survivors learn the crashed player left')
assert.equal(carol.got('<playerLeft name="Alice"').length, 1)
assert.equal(bob.got('<userList>').length, 1, 'no re-auth: SWF never reconnected')

// The match continues on the SAME connections against the restored state.
carol.send('<12 x="9" y="9" c="40"/>')
await sleep(30)
assert.equal(bob.got('<12 x="9"').length, 1, 'relay must keep working after migration')

// Stats survived too: Carol dies, Bob wins -> skill counters from the snapshot continue.
carol.send('<die x="1"  y="2"/>')
bob.send('<winGame/>')
await sleep(20)
assert.equal(bob.got('<die x="1"').length, 1, 'die is relayed to the enemy')

// Back to lobby: Bob leaves the match, everyone else gets a playerUpdate with his new skill.
bob.send('<toRoom/>')
await sleep(20)
assert.ok(carol.got('<playerUpdate name="Bob" skill="1/0/0"').length === 1, 'wins from before+after migration add up')

// A new player joins against the new host and sees the current state.
const sessionD = await createSession(game(), opts(netD, 'ddd'))
await sleep(20)
assert.equal(sessionD.hostId, 'bbb')
const dave = await makeClient(sessionD)
dave.send('<auth name="Dave" version="1.1.0.spika" hash="1bf6093ea530924697ca9cebd7bf4abb"/>')
await sleep(40)
const daveList = dave.got('<userList>')[0]
assert.ok(daveList.includes('name="Bob" skill="1/0/0"'))
assert.ok(daveList.includes('name="Carol" skill="0/1/0" state="3"'), 'Carol still marked in-match')

// ---- refresh: guest reloads, the old peer's leave is detected LATE ---------
// This is the reported real-world case: F5 kills the tab without a clean
// goodbye, the new tab joins immediately, Trystero notices the old peer's
// departure only later.
crashHubDelayed('ddd', 150)
const netD2 = new VirtualNetwork()
const sessionD2 = await createSession(game(), opts(netD2, 'dd2'))
assert.equal(sessionD2.hostId, 'bbb')
const dave2 = await makeClient(sessionD2)
dave2.send('<auth name="Dave" version="1.1.0.spika" hash="x"/>')
await sleep(40)
const dave2List = dave2.got('<userList>')[0]
assert.ok(dave2List?.includes('name="Dave"') && dave2List.includes('name="Bob"'), 'refreshed player sees himself AND the others')
assert.equal(bob.got('<playerLeft name="Dave"').length, 1, 'stale ghost evicted exactly once')
await sleep(200) // now the delayed peer-leave of the old tab arrives
assert.equal(bob.got('<playerLeft name="Dave"').length, 1, 'the late leave of the old peer must be a no-op')
assert.equal(dave2.got('<playerLeft name="Dave"').length, 0, 'the refreshed player is never erased from lists')
assert.equal(dave2.isClosed(), false)

// ---- name takeover: claiming a taken name evicts the current holder --------
// The original had no authentication either - names were always first-come.
// Newest-wins is what makes refreshes work; the price is that the previous
// session gets disconnected (and sees ConnLost) instead of the newcomer.
const netE = new VirtualNetwork()
const sessionE = await createSession(game(), opts(netE, 'eee'))
const eve = await makeClient(sessionE)
eve.send('<auth name="Dave" version="1.1.0.spika" hash="x"/>')
await sleep(40)
assert.ok(eve.got('<userList>')[0]?.includes('name="Dave"'), 'the newcomer now owns the name')
assert.equal(dave2.isClosed(), true, 'the previous holder gets disconnected')
assert.equal(bob.got('<playerLeft name="Dave"').length, 2, 'holder eviction is broadcast')

// ---- slow transport: peer connects only seconds after joinRoom (Trystero) --
// F comes up isolated and self-elects; once the links open, the real host
// announces itself on join and F demotes before any SWF got involved.
const netF = new VirtualNetwork()
const sessionF = await createSession(game(), { net: netF, bridge: joinHubIsolated('fff'), settleMs: 40, snapshotMs: 20, closeBridgeOnLeave: false })
assert.equal(sessionF.isHost, true, 'alone, F hosts itself')
connectPeers('fff')
await sleep(30)
assert.equal(sessionF.hostId, 'bbb', 'F adopts the real host as soon as the links open')
assert.equal(sessionF.isHost, false)
const frank = await makeClient(sessionF)
frank.send('<auth name="Frank" version="1.1.0.spika" hash="x"/>')
await sleep(40)
assert.ok(frank.got('<userList>')[0]?.includes('name="Bob"'), "F's SWF plays against the real host")

// ---- and the good path: links open within the settle window ----------------
const netG = new VirtualNetwork()
const sessionGPromise = createSession(game(), { net: netG, bridge: joinHubIsolated('ggg'), settleMs: 200, snapshotMs: 20, closeBridgeOnLeave: false })
setTimeout(() => connectPeers('ggg'), 50)
const sessionG = await sessionGPromise
assert.equal(sessionG.hostId, 'bbb', 'connecting within the settle window: no self-election at all')
assert.equal(sessionG.isHost, false)

sessionA.leave() // cleanup of the crashed peers' local timers
sessionD.leave()
sessionB.leave(); sessionC.leave(); sessionD2.leave(); sessionE.leave(); sessionF.leave(); sessionG.leave()
netA.dispose(); netB.dispose(); netC.dispose(); netD.dispose(); netD2.dispose(); netE.dispose(); netF.dispose(); netG.dispose()
console.log('✔ bomberpengu: protocol, migration, refresh & slow-connect recovery')
