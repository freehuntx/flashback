/**
 * Protocol + migration integration test for Stick Arena: Dimensions.
 * Runs in Node against the lib:
 *   node --experimental-strip-types test/integration.test.mjs
 *
 * Packet formats are matched against the ballistickemu reference server:
 * capacity -> login (A) -> lobby entry (03_) with lobby-format U records ->
 * room list/create/join with game-format U records -> details & room vars ->
 * relays (incl. sender echo), kill accounting, vote kick -> shop & ticket ->
 * quickplay guests -> host crash migration preserving rooms/accounts/state.
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
const { stickarena } = await import('../src/games/stickarena-dimensions/game.ts')

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

const PORT = 1138
const game = () => stickarena({ endpoint: `ballistick.local:${PORT}`, moderators: ['Alice'] })
const opts = (net, id) => ({ net, bridge: joinHub(id), settleMs: 40, snapshotMs: 20, closeBridgeOnLeave: false })
const netA = new VirtualNetwork(), netB = new VirtualNetwork(), netC = new VirtualNetwork()

const sessionA = await createSession(game(), opts(netA, 'aaa'))
const sessionB = await createSession(game(), opts(netB, 'bbb'))
const sessionC = await createSession(game(), opts(netC, 'ccc'))
await sleep(60)
assert.equal(sessionA.isHost, true)
assert.equal(sessionB.hostId, 'aaa')

// Simulate each player's Ruffle: XMLSocket client ('\0'-framed plain strings).
const makeClient = async (session) => {
  const proxy = session.ruffleConfig().socketProxy.find((p) => p.port === PORT)
  assert.ok(proxy, `socketProxy for port ${PORT} registered`)
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
    send: (s) => ws.send(enc(s + '\0').buffer),
    messages,
    got: (part) => messages.filter((m) => m.includes(part)),
    startsWith: (part) => messages.filter((m) => m.startsWith(part)),
    last: (part) => messages.filter((m) => m.startsWith(part)).at(-1),
    isClosed: () => closed,
  }
}

// Account-sync side channel: '\0'-framed JSON on port 1139 (page <-> host).
const makeSync = async (session) => {
  const proxy = session.ruffleConfig().socketProxy.find((p) => p.port === 1139)
  assert.ok(proxy, 'sync proxy registered on 1139')
  const ws = new WebSocket(proxy.proxyUrl)
  ws.binaryType = 'arraybuffer'
  const messages = []
  let buf = ''
  ws.onmessage = (ev) => {
    buf += dec(new Uint8Array(ev.data))
    let i
    while ((i = buf.indexOf('\0')) !== -1) { messages.push(JSON.parse(buf.slice(0, i))); buf = buf.slice(i + 1) }
  }
  await new Promise((r) => (ws.onopen = r))
  return {
    send: (obj) => ws.send(enc(JSON.stringify(obj) + '\0').buffer),
    messages,
    ofType: (t) => messages.filter((m) => m.t === t),
  }
}

const alice = await makeClient(sessionA)
const bob = await makeClient(sessionB)
const carol = await makeClient(sessionC)

// ---- keepalive is ignored, capacity check answers 08 -----------------------
const beforeKeepalive = alice.messages.length
alice.send('0')
await sleep(30)
assert.equal(alice.messages.length, beforeKeepalive, 'keepalive is NOT echoed (reference behaviour)')
alice.send('08HxO9TdCC62Nwln1P')
await sleep(20)
assert.equal(alice.last('08'), '08', 'capacity check ok')

// ---- login: A packet only, no lobby presence until 03_ ---------------------
alice.send('09Alice;secret')
await sleep(30)
const authA = alice.last('A')
assert.ok(authA, 'auth reply received')
const aliceId = authA.slice(1, 4)
assert.equal(authA.slice(4, 24), 'Alice'.padEnd(20, '#'), 'name padded to 20 with #')
assert.match(authA.slice(24, 42), /^\d{18}$/, 'spinner colour1+colour2 follow the name')
const aliceStats = authA.slice(42).split(';')
assert.equal(aliceStats.length, 10, 'k;d;w;l;rounds;pass;passDays;ticket;cred;level')
assert.equal(aliceStats[9], '1', 'Alice is a moderator (userLevel 1)')
assert.equal(alice.startsWith('C').length, 0, 'login alone yields no lobby presence')

alice.send('03_')
await sleep(30)
assert.equal(alice.last('C'), `C${aliceId}`, 'lobby entry echoes own C (player is lobby-flagged from login)')
assert.equal(alice.startsWith('C').length, 1, 'and nothing else - the lobby is empty')

bob.send('09Bob;hunter2')
await sleep(20)
const bobId = bob.last('A').slice(1, 4)
bob.send('03_')
await sleep(30)
assert.equal(bob.got(`C${bobId}`).length, 1, 'Bob receives his own lobby C')
assert.equal(alice.got(`C${bobId}`).length, 1, 'Alice sees Bob enter the lobby')
const bobLobbyU = alice.last(`U${bobId}`)
assert.ok(bobLobbyU, 'lobby U record broadcast')
assert.match(bobLobbyU.slice(4), /^Bob#{17}\d{9}\d+;\d+;\d+;\d+;\d+;\d+;\d+$/,
  'lobby U: name20 + ONE 9-digit colour + 7 stat fields')
assert.equal(bob.got(`C${aliceId}`).length, 1, 'Bob receives the existing lobby list')
assert.ok(bob.last(`U${aliceId}`), 'with lobby U records')

// Wrong password on an existing account is rejected. (Each tab is its own
// peer, so extra test players need their own sessions.)
const netD = new VirtualNetwork()
const sessionD = await createSession(game(), opts(netD, 'ddd'))
await sleep(50)
const eve = await makeClient(sessionD)
eve.send('09Alice;wrong')
await sleep(20)
assert.equal(eve.last('09'), '093', 'while Alice is ONLINE, any login for her name gets 093')

// ---- shop + cred ticket (lobby side) ---------------------------------------
alice.send('0c')
await sleep(20)
const inv = alice.last('0c')
assert.match(inv, /^0c1001\d{18}1;2001\d{18}2;$/,
  'default inventory: selected spinner 100 + selected pet 200')
alice.send('0b101112233445566778899')
await sleep(20)
alice.send('0c')
await sleep(20)
assert.ok(alice.last('0c').includes(';1010112233445566778899' + '3;'), 'bought item 101 listed unselected with dbId 3')
alice.send('0d3')
await sleep(20)
alice.send('0c')
await sleep(20)
assert.ok(alice.last('0c').includes(';1011112233445566778899' + '3;'), 'item 101 now selected')
assert.ok(alice.last('0c').startsWith('0c1000'), 'spinner 100 deselected')

alice.send('0a')
await sleep(20)
assert.match(alice.last('0a') ?? '', /^0a\d+$/, 'cred ticket pays out a prize index')
alice.send('0a')
await sleep(20)
assert.equal(alice.startsWith('0a').length, 1, 'ticket cannot be claimed twice')

// ---- room list / create / join ---------------------------------------------
alice.send('01')
await sleep(20)
assert.equal(alice.last('01'), '01_0;', 'room list always starts with the lobby entry')

const cBefore = alice.startsWith('C').length
alice.send('020000MyArena')
await sleep(30)
assert.equal(alice.startsWith('C').length, cBefore + 1, 'creator gets exactly one packet: C<self>')
assert.equal(alice.last('C'), `C${aliceId}`)
assert.equal(alice.got(`U${aliceId}`).length, 0, 'and NO U packet (reference behaviour)')
assert.equal(bob.got(`D${aliceId}`).length, 1, 'lobby sees Alice leave')
alice.send('05mp=012')
await sleep(20)

bob.send('01')
await sleep(20)
assert.equal(bob.last('01'), '01_0;MyArena0;', 'created room listed with pass flag')

bob.send('04MyArena')
await sleep(20)
const detail = bob.last('04')
assert.equal(detail.slice(0, 5), '04001', 'map + cycle + player count')
const t = Number(detail.slice(5))
assert.ok(t > 290 && t <= 331, `round clock reported as roundTime+31 (got ${t})`)

bob.send('03MyArena')
await sleep(30)
assert.equal(bob.got(`C${bobId}`).length, 2, 'joiner receives own C via the room broadcast')
const bobGameU = bob.got(`U${bobId}`).at(-1)
assert.match(bobGameU, /^U.{3}\d{5}Bob#{17}\d{2}\d{18}\d{2}\d{18}\d+$/,
  'game U: wins+kills+deaths, name20, spinner id+colours, pet id+colours, kills')
assert.equal(bob.got(`C${aliceId}`).length, 2, 'joiner gets the roommate list')
assert.match(bob.got(`U${aliceId}`).at(-1), /^U.{3}\d{5}Alice#{15}01\d{18}\d{2}\d{18}\d+$/,
  "Alice's game U shows her selected spinner 101 (id-100 = 01)")
assert.equal(alice.got(`C${bobId}`).length, 2, 'Alice sees Bob join the arena')

// The Dimensions client asks for both room variables in ONE packet at map
// load - it must get one reply per action, or the joiner desyncs.
bob.send('06MyArena;mp;rc')
await sleep(20)
assert.equal(bob.last('06mp'), '06mp=012', 'combined request answers the map cycle list')
assert.equal(bob.last('06rc'), '06rc=Alice', 'and the room creator name')

// ---- relays include the sender (client filters own UID) --------------------
alice.send('1x100y200')
await sleep(20)
assert.equal(bob.got(`M${aliceId}1x100y200`).length, 1, 'gameplay relayed with M+senderId prefix')
assert.equal(alice.got(`M${aliceId}1x100y200`).length, 1, 'sender receives the echo too')
assert.equal(carol.got('M').length, 0, 'other peers do not hear the arena')

bob.send('9hello there')
await sleep(20)
assert.equal(alice.got(`M${bobId}9hello there`).length, 1, 'chat relayed to the room')

// Kill accounting: Bob reports his own death, crediting Alice.
bob.send(`7${aliceId}w3`)
await sleep(20)
assert.equal(alice.got(`M${bobId}7${aliceId}w3`).length, 1, 'death report relayed')

alice.send(`00${bobId}Ppsst`)
await sleep(20)
assert.equal(bob.got(`M${aliceId}Ppsst`).length, 1, 'private message delivered directly')

// ---- quickplay guests ------------------------------------------------------
carol.send('03MyArena')
await sleep(30)
const carolC = carol.startsWith('C')[0]
assert.ok(carolC, 'guest gets a C packet without ever authenticating')
const carolId = carolC.slice(1, 4)
assert.match(carol.got(`U${carolId}`)[0] ?? '', /^U.{3}\d{5}[A-Za-z]+\d{2}#+/,
  'guest game U with a generated quickplay name')
assert.equal(alice.got(`C${carolId}`).length, 1, 'roommates see the guest arrive')

// ---- vote kick by a moderator ---------------------------------------------
alice.send(`K${carolId}`)
await sleep(30)
assert.equal(carol.last('09'), '094', 'mod kick sends 094 to the victim')
assert.equal(bob.got(`D${carolId}`).length, 1, 'room learns the guest was removed')
carol.send('03MyArena')
await sleep(30)
assert.equal(carol.startsWith('09').at(-1), '094', 'blacklisted: rejoin refused with 094')

// ---- host Alice crashes (closed tab, no goodbye) ---------------------------
await sleep(80) // let snapshots replicate
crashHub('aaa')
await sleep(1700) // migration settle + departed-player sweep (1.5s)
assert.equal(sessionB.isHost, true)
assert.equal(sessionC.hostId, 'bbb')
assert.equal(bob.isClosed(), false, 'SWF sockets must survive the migration')
assert.equal(bob.got(`D${aliceId}`).length, 2, 'room learns the crashed host left (first D was the lobby one)')

bob.send('01')
await sleep(20)
assert.equal(bob.last('01'), '01_0;MyArena0;', 'room survived the migration')
bob.send('06MyArena;rc')
await sleep(20)
assert.equal(bob.last('06rc'), '06rc=Alice', 'creator name survived too')

// Accounts survived: password enforced, stats/inventory intact.
eve.send('09Alice;wrong') // Alice is offline now - the password check applies
await sleep(20)
assert.equal(eve.last('09'), '09', 'password still enforced on the new host')
eve.send('09Alice;secret')
await sleep(30)
const eveAuth = eve.last('A')
assert.ok(eveAuth, 'stored account logs in against the new host')
assert.equal(eveAuth.slice(4, 24), 'Alice'.padEnd(20, '#'))
assert.ok(Number(eveAuth.slice(42).split(';')[8]) > 5000, 'ticket winnings survived the migration')
eve.send('0c')
await sleep(20)
assert.ok(eve.last('0c').includes('1011112233445566778899'), 'bought+selected item survived')

// ---- account sync: import / export / creation ------------------------------
const netE = new VirtualNetwork()
const sessionE = await createSession(game(), opts(netE, 'eee'))
await sleep(60)
const syncE = await makeSync(sessionE)
syncE.send({ t: 'import', accounts: [{ name: 'Zoe', password: 'pw', cred: 7777, kills: 42 }] })
await sleep(40)
assert.equal(syncE.ofType('imported')[0]?.count, 1, 'vault account imported into the session')

const zoe = await makeClient(sessionE)
zoe.send('09Zoe;pw')
await sleep(30)
const zoeAuth = zoe.last('A')
assert.ok(zoeAuth, 'imported account logs in')
const zoeStats = zoeAuth.slice(42).split(';')
assert.equal(zoeStats[0], '42', 'imported kills visible in the A packet')
assert.equal(zoeStats[8], '7777', 'imported creds visible in the A packet')

zoe.send('0a') // claim the cred ticket -> mutation -> export push
await sleep(400) // export debounce is 250ms
const exp = syncE.ofType('export').at(-1)
assert.ok(exp, 'account changes are pushed back to the owning browser')
const zoeExport = exp.accounts.find((a) => a.name === 'Zoe')
assert.ok(zoeExport, 'export contains the owned account')
assert.equal(zoeExport.password, 'pw', 'with the password, for the localStorage vault')
assert.ok(zoeExport.cred > 7777, 'with the ticket winnings applied')
assert.ok(!('ownerPeer' in zoeExport), 'transient ownership is stripped')

// Creation verdicts: online name, taken name, fresh name.
syncE.send({ t: 'create', id: 1, name: 'Zoe', password: 'other' })
await sleep(30)
assert.deepEqual(syncE.ofType('created').at(-1), { t: 'created', id: 1, ok: false, reason: 'online' },
  'cannot create a name that is online right now')
syncE.send({ t: 'create', id: 2, name: 'Newbie', password: 'fresh', colour: '001002003' })
await sleep(30)
assert.deepEqual(syncE.ofType('created').at(-1), { t: 'created', id: 2, ok: true },
  'fresh names create fine')
syncE.send({ t: 'create', id: 3, name: 'Newbie', password: 'different' })
await sleep(30)
assert.deepEqual(syncE.ofType('created').at(-1), { t: 'created', id: 3, ok: false, reason: 'taken' },
  'cannot take an existing (offline) account name with a different password')
const newbie = await makeClient(sessionE)
newbie.send('09Newbie;fresh')
await sleep(30)
assert.equal((newbie.last('A') ?? '').slice(24, 33), '001002003', 'created account uses the chosen colour')

// ---- name in use: second login is refused, first stays ---------------------
const bob2 = await makeClient(sessionE)
bob2.send('09Bob;hunter2')
await sleep(40)
assert.equal(bob2.last('09'), '093', 'login for an online name is refused with 093')
assert.equal(bob2.last('A'), undefined, 'no A packet for the impostor')
assert.equal(bob.isClosed(), false, 'the player already online keeps their session')
bob.send('01')
await sleep(20)
assert.equal(bob.last('01'), '01_0;MyArena0;', 'and can keep playing')

sessionB.leave(); sessionC.leave(); sessionD.leave(); sessionE.leave()
netA.dispose(); netB.dispose(); netC.dispose(); netD.dispose(); netE.dispose()
console.log('✔ stickarena: capacity, auth, lobby, rooms, relays, kills, kicks, shop, account sync & migration')
