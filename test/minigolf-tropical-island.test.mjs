/**
 * Protocol + migration integration test for Minigolf: Tropical Island.
 * Runs in Node against the built lib:
 *   npm run build && node --experimental-strip-types test/integration.test.mjs
 *
 * Drives the same XML the SWF sends (Connector.as / Game.as / MyBall.as) and
 * asserts the server walks the full flow: auth -> lobby -> challenge ->
 * startGame/startGame2 -> clientInitiated -> startLevel -> turn relay ->
 * ready -> nextTurn -> pocketed -> level advance -> endGame -> playAgain
 * rematch -> toRoom, plus the second (lobby chat) socket and host migration
 * mid-match.
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
const { minigolf } = await import('../src/games/minigolf-tropical-island/game.ts')

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
  if (bridge) bridge.hub = new Map()
  hub.delete(id)
  for (const other of hub.values()) other._left(id)
}

const TURN_MS = 400 // tiny turn clock so the timeout path is testable
const game = () => minigolf({ endpoint: 'localhost:6926', chatEndpoint: 'localhost:6900', turnTimeMs: TURN_MS, motd: 'welcome!' })
const opts = (net, id) => ({ net, bridge: joinHub(id), settleMs: 40, snapshotMs: 20, closeBridgeOnLeave: false })
const netA = new VirtualNetwork(), netB = new VirtualNetwork(), netC = new VirtualNetwork()

const sessionA = await createSession(game(), opts(netA, 'aaa'))
const sessionB = await createSession(game(), opts(netB, 'bbb'))
const sessionC = await createSession(game(), opts(netC, 'ccc'))
await sleep(60)
assert.equal(sessionA.isHost, true)
assert.equal(sessionB.hostId, 'aaa')

// Simulate each player's Ruffle: XMLSocket client (\0-framed, trailing \n like the SWF).
const makeClient = async (session, port) => {
  const proxy = session.ruffleConfig().socketProxy.find((p) => p.port === port)
  assert.ok(proxy, `socketProxy for port ${port} registered`)
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
    last: (part) => messages.filter((m) => m.includes(part)).at(-1),
    isClosed: () => closed,
  }
}

const alice = await makeClient(sessionA, 6926)
const bob = await makeClient(sessionB, 6926)
const carol = await makeClient(sessionC, 6926)
alice.send('<auth name="Alice" version="1.0.2_pich" hash="0"/>')
await sleep(20)
bob.send('<auth name="Bob" version="1.0.2_pich" hash="0"/>')
await sleep(20)
carol.send('<auth name="Carol" version="1.0.2_pich" hash="0"/>')
await sleep(30)

// Login: config first (CensorManager/AdManager stay inert), then the user list.
assert.equal(alice.got('<config').length, 1)
assert.ok(alice.got('<userList>')[0].includes('name="Alice" skill="0/0/0/0/0" state="5"'), 'skill has the 5 fields Player.as splits')
const carolList = carol.got('<userList>')[0]
assert.ok(carolList.includes('name="Alice"') && carolList.includes('name="Bob"') && carolList.includes('name="Carol"'))
assert.equal(alice.got('<newPlayer').length, 2, 'Alice saw Bob and Carol join')

// Heartbeat is swallowed.
alice.send('<beat/>')
await sleep(20)

// ---- lobby chat runs over the SECOND socket (ChatBoxPR) --------------------
const aliceChat = await makeClient(sessionA, 6900)
const bobChat = await makeClient(sessionB, 6900)
const carolChat = await makeClient(sessionC, 6900)
aliceChat.send('<auth name="Alice" version="1.0.2_pich" hash="0" ext="" extauth="" defaultRoom=""/>')
bobChat.send('<auth name="Bob" version="1.0.2_pich" hash="0" ext="" extauth="" defaultRoom=""/>')
carolChat.send('<auth name="Carol" version="1.0.2_pich" hash="0" ext="" extauth="" defaultRoom=""/>')
await sleep(30)
assert.equal(aliceChat.got('msg="welcome!"').length, 1, 'motd arrives on the chat socket')
aliceChat.send('<msgAll name="Alice" msg="hello"/>')
await sleep(20)
assert.equal(bobChat.got('msg="hello"').length, 1)
assert.equal(carolChat.got('msg="hello"').length, 1)
assert.equal(aliceChat.got('msg="hello"').length, 0, 'sender already echoed locally')

// ---- challenge flow --------------------------------------------------------
bob.send('<challenge name="Carol" hash="xxxxxx"/>')
await sleep(20)
assert.equal(carol.got('<request name="Bob"').length, 1)
bob.send('<remChallenge name="Carol" hash="xxxxxx"/>')
await sleep(20)
assert.equal(carol.got('<remRequest name="Bob"').length, 1)

// Bob challenges again, Carol accepts: the acceptor gets startGame2 (shoots
// first), the challenger gets startGame.
bob.send('<challenge name="Carol" hash="xxxxxx"/>')
await sleep(20)
carol.send('<startGame name="Bob" hash="xxxxxx"/>')
await sleep(20)
assert.equal(carol.got('<startGame2 name="Bob"').length, 1)
assert.equal(bob.got('<startGame name="Carol"').length, 1)
assert.ok(alice.got('<playerUpdate name="Bob"').at(-1).includes('state="3"'), 'lobby sees both in-match')

// Accepting into a running match fails gracefully.
alice.send('<startGame name="Bob" hash="xxxxxx"/>')
await sleep(20)
assert.equal(alice.got('<acceptFail').length, 1)

// ---- level 1 ---------------------------------------------------------------
// Both game frames load and announce themselves; only then startLevel goes out.
carol.send('<clientInitiated/>')
await sleep(20)
assert.equal(carol.got('<startLevel').length, 0, 'waits for both clients')
bob.send('<clientInitiated/>')
await sleep(20)
assert.ok(carol.last('<startLevel').includes('nr="1"'))
assert.ok(carol.last('<startLevel').includes('pn="Carol"'), 'the acceptor tees off on level 1')
assert.ok(bob.last('<startLevel').includes(`t="${TURN_MS}"`))

// Carol shoots: the turn (incl. flip children) is relayed verbatim to Bob only.
carol.send('<turn x="100" y="200" p="80" r="45.5" fp="12"><flip n="1" f="3"/></turn>')
await sleep(20)
assert.equal(bob.got('<turn x="100"')[0], '<turn x="100" y="200" p="80" r="45.5" fp="12"><flip n="1" f="3"/></turn>')
assert.equal(alice.got('<turn').length, 0)

// Both clients report their own ball at rest -> Bob's turn, with synced positions.
carol.send('<ready x="150" y="220"/>')
await sleep(20)
assert.equal(bob.got('<nextTurn').length, 0, 'waits for both readies')
bob.send('<ready x="50" y="60"/>')
await sleep(20)
let nt = bob.last('<nextTurn')
assert.ok(nt.includes('n="Bob"'), 'turn alternates')
assert.ok(nt.includes('x1="50" y1="60"'), 'x1/y1 = ball of player n')
assert.ok(nt.includes('x2="150" y2="220"'), 'x2/y2 = the other ball')

// Bob shoots (no pocket) -> back to Carol.
bob.send('<turn x="50" y="60" p="100" r="10" fp="20"></turn>')
bob.send('<ready x="80" y="90"/>')
carol.send('<ready x="150" y="220"/>')
await sleep(20)
assert.ok(carol.last('<nextTurn').includes('n="Carol"'))

// Carol pockets on her 2nd stroke; Bob keeps playing (pocketed players are skipped).
carol.send('<turn x="150" y="220" p="60" r="90" fp="30"></turn>')
carol.send('<pocketed/>')
carol.send('<ready x="-100" y="-100"/>')
bob.send('<ready x="80" y="90"/>')
await sleep(20)
nt = bob.last('<nextTurn')
assert.ok(nt.includes('n="Bob"'), 'pocketed players are skipped')
assert.ok(nt.includes('x1="80" y1="90"'))
assert.ok(nt.includes('x2="0" y2="0"'), "pocketed ball's position is 0/0 (= keep off-board)")

// Bob pockets too -> startLevel 2 after the between-levels pause, other starter.
bob.send('<turn x="80" y="90" p="40" r="0" fp="44"></turn>')
bob.send('<pocketed/>')
bob.send('<ready x="-100" y="-100"/>')
carol.send('<ready x="-100" y="-100"/>')
await sleep(1700)
assert.ok(carol.last('<startLevel').includes('nr="2"'))
assert.ok(carol.last('<startLevel').includes('pn="Bob"'), 'tee-off alternates per level')

// ---- turn timeout: penalty stroke + turn passes ----------------------------
await sleep(TURN_MS + 200) // Bob lets the clock run out
assert.equal(bob.got('<countTurn n="Bob"').length, 1)
assert.equal(carol.got('<countTurn n="Bob"').length, 1)
assert.ok(carol.last('<nextTurn').includes('n="Carol"'), 'turn passed after the timeout')

// ---- debug fast-forward through the remaining levels, then endGame ---------
for (let level = 3; level <= 12; level++) {
  carol.send('<nextLevel/>')
  await sleep(60)
  assert.ok(carol.last('<startLevel').includes(`nr="${level}"`))
}
carol.send('<nextLevel/>') // past level 12 -> endGame
await sleep(60)
// Bob: 2 shots + 1 timeout penalty = 3 strokes; Carol: 2 shots -> Carol wins.
assert.ok(bob.last('<endGame').includes('winner="Carol"'))
assert.ok(carol.last('<endGame').includes('winner="Carol"'))
assert.ok(alice.last('<playerUpdate name="Carol"').includes('skill="1/0/0/1/2"'), 'won/lost/drawn/levels/swings updated')
assert.ok(alice.last('<playerUpdate name="Bob"').includes('skill="0/1/0/1/2"'))

// ---- playAgain rematch -----------------------------------------------------
bob.send('<playAgain/>')
await sleep(20)
assert.equal(carol.got('<playAgain />').length, 1, 'relayed to the opponent')
carol.send('<startGame name="Bob" hash="xxxxxx"/>') // PlayAgainButton with playAgainReq set
await sleep(20)
assert.equal(carol.got('<startGame2 name="Bob"').length, 2, 'rematch started')
carol.send('<clientInitiated/>')
bob.send('<clientInitiated/>')
await sleep(20)
assert.equal(carol.got('<startLevel nr="1"').length, 2, 'rematch begins at level 1')

// ---- host Alice crashes MID-MATCH (closed tab, no goodbye) -----------------
await sleep(60) // let snapshots replicate
crashHub('aaa')
await sleep(100)
assert.equal(sessionB.isHost, true)
assert.equal(sessionC.hostId, 'bbb')
assert.equal(bob.isClosed(), false, 'SWF sockets must survive the migration')
assert.equal(carol.isClosed(), false)
assert.equal(bob.got('<playerLeft name="Alice"').length, 1, 'survivors learn the crashed player left')

// The match continues on the SAME connections against the restored state.
carol.send('<turn x="10" y="20" p="50" r="180" fp="5"></turn>')
await sleep(30)
assert.equal(bob.got('<turn x="10"').length, 1, 'turn relay keeps working after migration')
carol.send('<ready x="30" y="40"/>')
bob.send('<ready x="11" y="21"/>')
await sleep(30)
assert.ok(bob.last('<nextTurn').includes('n="Bob"'), 'turn state survived the migration')

// ---- surrender + back to the lobby -----------------------------------------
bob.send('<surrender/>')
await sleep(20)
assert.ok(bob.last('<surrender winner="Carol"'), 'surrenderer loses')
assert.ok(carol.last('<surrender winner="Carol"'))
carol.send('<toRoom/>')
bob.send('<toRoom/>')
await sleep(20)

// Both free again: a fresh challenge round-trip works against the new host.
bob.send('<challenge name="Carol" hash="xxxxxx"/>')
await sleep(20)
assert.equal(carol.got('<request name="Bob"').length, 3)

// Chat sockets also survived the migration.
bobChat.send('<msgAll name="Bob" msg="gg"/>')
await sleep(20)
assert.equal(carolChat.got('msg="gg"').length, 1)

// ---- refresh / name takeover: newest session wins the name -----------------
const netD = new VirtualNetwork()
const sessionD = await createSession(game(), opts(netD, 'ddd'))
await sleep(30)
const carol2 = await makeClient(sessionD, 6926)
carol2.send('<auth name="Carol" version="1.0.2_pich" hash="0"/>')
await sleep(40)
assert.ok(carol2.got('<userList>')[0]?.includes('name="Carol"'), 'the newcomer owns the name')
assert.equal(carol.isClosed(), true, 'the previous holder gets disconnected')
assert.equal(bob.got('<playerLeft name="Carol"').length, 1, 'holder eviction is broadcast')
assert.equal(carol2.got('<playerLeft name="Carol"').length, 0, 'the new session is never erased from lists')

sessionA.leave()
sessionB.leave(); sessionC.leave(); sessionD.leave()
netA.dispose(); netB.dispose(); netC.dispose(); netD.dispose()
console.log('✔ minigolf: lobby, full match flow, chat socket, timeout, rematch & migration')
