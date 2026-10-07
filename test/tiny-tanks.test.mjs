/** Backend, migration and RTMFP routing integration test for Tiny Tanks. */
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
const { tinyTanks, BACKEND_ENDPOINT } = await import('../src/games/tiny-tanks/game.ts')
const { SECRET, roomHash } = await import('../src/games/tiny-tanks/backend.ts')
const { md5 } = await import('../src/games/tiny-tanks/md5.ts')
const { RtmfpRouter, RTMFP_ENDPOINT, peerIdOwner } = await import('../src/games/tiny-tanks/rtmfp.ts')
const sleep = (ms) => new Promise((resolve) => setTimeout(resolve, ms))

assert.equal(md5('The quick brown fox jumps over the lazy dog'), '9e107d9d372bb6826bd81d3542a419d6')

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

const start = async (id) => {
  const net = new VirtualNetwork()
  const session = await createSession(tinyTanks(), { net, bridge: joinHub(id), settleMs: 40, snapshotMs: 20, closeBridgeOnLeave: false })
  const router = new RtmfpRouter({ net, bridge: session.bridge })
  return { net, session, router }
}

const proxyFor = ({ session }, endpoint) => {
  const proxy = session.ruffleConfig().socketProxy.find(({ host, port }) => `${host}:${port}` === endpoint)
  assert.ok(proxy, `proxy for ${endpoint}`)
  return proxy.proxyUrl
}

// -- backend over the virtual socket ----------------------------------------------

const backend = async (page) => {
  const ws = new WebSocket(proxyFor(page, BACKEND_ENDPOINT))
  ws.binaryType = 'arraybuffer'
  let buffer = ''
  let nextId = 1
  const pending = new Map()
  const vaults = []
  ws.onmessage = (event) => {
    buffer += new TextDecoder().decode(new Uint8Array(event.data))
    let end
    while ((end = buffer.indexOf('\0')) !== -1) {
      const message = JSON.parse(buffer.slice(0, end))
      buffer = buffer.slice(end + 1)
      if (message.t === 'php') pending.get(message.id)?.(message.body)
      if (message.t === 'vault') vaults.push(message)
    }
  }
  await new Promise((resolve) => (ws.onopen = resolve))
  const send = (message) => ws.send(new TextEncoder().encode(JSON.stringify(message) + '\0'))
  return {
    vaults,
    hello: (accounts = [], maps = []) => send({ t: 'hello', accounts, maps }),
    php: (script, params) =>
      new Promise((resolve) => {
        const id = nextId++
        pending.set(id, resolve)
        send({ t: 'php', id, script, params })
      }),
  }
}

/** Parse + verify a signed account9.php response exactly like checkServerReponseHash. */
const verified = (body) => {
  const pairs = body.split('&')
  pairs.pop()
  const vars = Object.fromEntries(new URLSearchParams(body))
  assert.equal(md5(pairs.join('&') + SECRET), vars.entirehash, `signed response: ${body}`)
  return vars
}

const A = await start('aaa')
const B = await start('bbb')
await sleep(80)
assert.equal(A.session.isHost, true)

const alice = await backend(A)
const bob = await backend(B)
alice.hello()
bob.hello()

assert.equal(verified(await alice.php('account9.php', { task: '9', usernameoremail: 'Alice' })).code, '1', 'name free')
assert.equal(verified(await alice.php('account9.php', { task: '2', username: 'Alice', password: 'pw' })).code, '0', 'registered')
assert.equal(verified(await bob.php('account9.php', { task: '2', username: 'alice', password: 'x' })).code, '2', 'name taken (case-insensitive)')
assert.equal(verified(await bob.php('account9.php', { task: '2', username: 'guest_bob', password: 'x' })).code, '4', 'reserved prefix')
assert.equal(verified(await bob.php('account9.php', { task: '1', usernameoremail: 'Alice', password: 'nope' })).code, '2', 'wrong password')
const login = verified(await alice.php('account9.php', { task: '1', usernameoremail: 'alice', password: 'pw' }))
assert.equal(login.code, '0')
assert.equal(login.retreivedusername, 'Alice')
assert.equal(login.checksum, md5('Alice' + SECRET))

let data = verified(await bob.php('account9.php', { task: '3', username: 'Alice' }))
assert.equal(data.username, 'Alice')
assert.equal(data.coins, '0')
assert.equal(data.itemsinuse, '0x1x2x12x16')
assert.deepEqual(Array.from({ length: Number(data.totalunlocks) }, (_, i) => data[`unlock${i}`]), ['0', '1', '2', '11', '12', '16'])

const pwHash = md5('pw')
assert.equal(verified(await alice.php('account9.php', { task: '8', username: 'Alice', unlockitemcode: '3', coinsorpremium: 'coins', password: pwHash })).code, '2', 'too poor')
verified(await alice.php('account9.php', { task: '4', username: 'Alice', kills: '3', deaths: '1', wins: '1', losses: '0', gameshosted: '1', xp: '120', coins: '400', updatecounter: '1' }))
const bought = verified(await alice.php('account9.php', { task: '8', username: 'Alice', unlockitemcode: '3', coinsorpremium: 'coins', password: pwHash }))
assert.equal(bought.code, '0')
assert.equal(bought.remainingcoins, '100')
assert.equal(verified(await alice.php('account9.php', { task: '8', username: 'Alice', unlockitemcode: '3', coinsorpremium: 'coins', password: pwHash })).code, '1', 'already owned')
verified(await alice.php('account9.php', { task: '7', username: 'Alice', setupstring: '3x1x2x12x16' }))
verified(await alice.php('account9.php', { task: '6', username: 'Alice', datastring: '5,4,3' }))
assert.equal(verified(await alice.php('account9.php', { task: '5', username: 'Alice' })).datastring, '5,4,3')
data = verified(await alice.php('account9.php', { task: '3', username: 'Alice' }))
assert.equal(data.kills, '3')
assert.equal(data.itemsinuse, '3x1x2x12x16')
assert.ok(Object.entries(data).some(([key, value]) => key.startsWith('unlock') && value === '3'))
await sleep(300)
assert.ok(alice.vaults.at(-1)?.accounts.some((account) => account.name === 'Alice' && account.coins === 100), 'owner gets its vault exported')
assert.ok(!bob.vaults.at(-1)?.accounts.some((account) => account.name === 'Alice'), 'others do not')

// Room directory: each room is signed with md5(address + password + secret).
await alice.php('addnewroom.php', { addressstring: 'roomA', roomnamestring: "Alice's game", maxplayersstring: '4', gamemodestring: '0', usernameliststring: 'Alice', versionstring: '187' })
await bob.php('addnewroom.php', { addressstring: 'roomB', roomnamestring: "Bob's game", passwordstring: 'hashed', maxplayersstring: '8', gamemodestring: '2', usernameliststring: 'Bob', versionstring: '187' })
await bob.php('joinroom.php', { addressstring: 'roomB', howmanyplayers: '2', usernameliststring: 'Bob#Carol' })
let rooms = Object.fromEntries(new URLSearchParams(await bob.php('testscript4.php', { versionstring: '187' })))
assert.equal(rooms.cant, '2')
for (const i of [0, 1]) assert.equal(rooms[`hash${i}`], roomHash(rooms[`address${i}`], rooms[`password${i}`]))
const roomB = [0, 1].find((i) => rooms[`address${i}`] === 'roomB')
assert.equal(rooms[`players${roomB}`], '2')
assert.equal(rooms[`gamemode${roomB}`], '2')
assert.equal(rooms[`usernamelist${roomB}`], 'Bob#Carol')

// Level vault.
assert.equal(await alice.php('maps2.php', { task: '1', mapname: 'Maze', username: 'Alice', mapsize: '1', mapplayers: '4', mapdata: '1,2@3#4@5#6@7@8@9', aidata: '(x=1, y=2),1', gametype: '0', forceoverwrite: 'false', hash: md5('Maze' + 'Alice' + SECRET) }), 'result=0')
assert.equal(await alice.php('maps2.php', { task: '1', mapname: 'Maze', username: 'Alice', mapdata: 'x', forceoverwrite: 'false' }), 'result=2', 'overwrite needs confirmation')
const list = Object.fromEntries(new URLSearchParams(await bob.php('maps2.php', { task: '2', gametype: '0', sorton: '0', startingfrom: '0', noresults: '10' })))
assert.equal(list.cant, '1')
const map = Object.fromEntries(new URLSearchParams(await bob.php('maps2.php', { task: '3', specificmap: list.id0 })))
assert.equal(map.aidata, '(x=1, y=2),1')
assert.equal(map.mapdata, '1,2@3#4@5#6@7@8@9')

// -- RTMFP: direct NetStreams between pages -------------------------------------------

const OP = { HELLO: 1, PUBLISH: 2, PLAY: 3, CLOSE_STREAM: 4, SEND: 5, PEER_RESPONSE: 6 }
const EV = { 101: 'connected', 102: 'peer-connect', 103: 'play-start', 104: 'play-failed', 105: 'message', 106: 'peer-closed', 107: 'play-closed', 108: 'publish-start', 109: 'peer-accepted' }

const swf = async (page) => {
  const ws = new WebSocket(proxyFor(page, RTMFP_ENDPOINT))
  ws.binaryType = 'arraybuffer'
  const events = []
  let buffer = new Uint8Array(0)
  ws.onmessage = (event) => {
    const chunk = new Uint8Array(event.data)
    const merged = new Uint8Array(buffer.length + chunk.length)
    merged.set(buffer)
    merged.set(chunk, buffer.length)
    buffer = merged
    while (buffer.length >= 4) {
      const length = new DataView(buffer.buffer, buffer.byteOffset).getUint32(0)
      if (buffer.length < 4 + length) break
      const frame = buffer.slice(4, 4 + length)
      buffer = buffer.slice(4 + length)
      const view = new DataView(frame.buffer)
      let pos = 1
      const u32 = () => ((pos += 4), view.getUint32(pos - 4))
      const utf = () => {
        const n = view.getUint16(pos)
        pos += 2 + n
        return new TextDecoder().decode(frame.subarray(pos - n, pos))
      }
      const type = EV[frame[0]]
      if (type === 'connected') events.push({ type, peerId: utf() })
      else if (type === 'peer-connect') events.push({ type, sid: u32(), subId: u32(), farID: utf() })
      else if (type === 'message') events.push({ type, sid: u32(), payload: [...frame.subarray(pos)] })
      else if (type === 'peer-accepted') events.push({ type, sid: u32(), subId: u32() })
      else events.push({ type, id: u32() })
    }
  }
  await new Promise((resolve) => (ws.onopen = resolve))
  const send = (opcode, ...fields) => {
    const parts = [Uint8Array.of(opcode)]
    for (const field of fields) {
      if (typeof field === 'string') {
        const bytes = new TextEncoder().encode(field)
        parts.push(Uint8Array.of(bytes.length >> 8, bytes.length & 255), bytes)
      } else if (Array.isArray(field)) parts.push(Uint8Array.from(field))
      else if (field === true || field === false) parts.push(Uint8Array.of(field ? 1 : 0))
      else {
        const bytes = new Uint8Array(4)
        new DataView(bytes.buffer).setUint32(0, field)
        parts.push(bytes)
      }
    }
    const length = parts.reduce((sum, part) => sum + part.length, 0)
    const out = new Uint8Array(4 + length)
    new DataView(out.buffer).setUint32(0, length)
    let offset = 4
    for (const part of parts) {
      out.set(part, offset)
      offset += part.length
    }
    ws.send(out.buffer)
  }
  const client = {
    events,
    send,
    close: () => ws.close(),
    last: (type) => events.filter((event) => event.type === type).at(-1),
    count: (type) => events.filter((event) => event.type === type).length,
    connect: async () => {
      send(OP.HELLO, 'rtmfp://p2p.rtmfp.net/key')
      await sleep(40)
      client.peerId = client.last('connected').peerId
      return client
    },
  }
  return client
}

const host = await (await swf(A)).connect()
const guest = await (await swf(B)).connect()
assert.match(host.peerId, /^[0-9a-f]{64}$/)
assert.equal(peerIdOwner(host.peerId), 'aaa')
assert.equal(peerIdOwner(guest.peerId), 'bbb')

// Host publishes; the guest plays it (the "join room" handshake).
host.send(OP.PUBLISH, 1, 'media')
guest.send(OP.PUBLISH, 1, 'media')
guest.send(OP.PLAY, 2, host.peerId, 'media')
await sleep(40)
assert.equal(host.last('publish-start').id, 1)
const offer = host.last('peer-connect')
assert.deepEqual([offer.sid, offer.farID], [1, guest.peerId])
host.send(OP.PEER_RESPONSE, offer.subId, true)
await sleep(40)
assert.equal(guest.last('play-start').id, 2)
assert.equal(host.last('peer-accepted').subId, offer.subId)

// ...and the host plays the guest back.
host.send(OP.PLAY, 2, guest.peerId, 'media')
await sleep(40)
const back = guest.last('peer-connect')
assert.equal(back.farID, host.peerId)
guest.send(OP.PEER_RESPONSE, back.subId, true)
await sleep(40)
assert.equal(host.last('play-start').id, 2)

// NetStream.send() fans out to subscribers only, payload untouched.
host.send(OP.SEND, 1, [10, 0, 255])
guest.send(OP.SEND, 1, [7])
await sleep(40)
assert.deepEqual(guest.last('message'), { type: 'message', sid: 2, payload: [10, 0, 255] })
assert.deepEqual(host.last('message'), { type: 'message', sid: 2, payload: [7] })

// A full room: the host's onPeerConnect says no.
const C = await start('ccc')
await sleep(80)
const late = await (await swf(C)).connect()
late.send(OP.PLAY, 3, host.peerId, 'media')
await sleep(40)
host.send(OP.PEER_RESPONSE, host.last('peer-connect').subId, false)
await sleep(40)
assert.equal(late.last('play-failed').id, 3)
assert.equal(guest.count('message'), 1, 'rejected peers get nothing')

// Playing a stream that isn't published yet waits for the publish.
late.send(OP.PLAY, 4, guest.peerId, 'later')
await sleep(40)
assert.equal(guest.count('peer-connect'), 1)
guest.send(OP.PUBLISH, 5, 'later')
await sleep(40)
assert.equal(guest.last('peer-connect').farID, late.peerId)
guest.send(OP.PEER_RESPONSE, guest.last('peer-connect').subId, true)
await sleep(40)
assert.equal(late.last('play-start').id, 4)

// Guest quits (NetConnection.close): the host sees both directions close,
// which is what the SWF's "foundInArray" leave detection relies on.
guest.close()
await sleep(60)
assert.equal(host.count('peer-closed'), 1)
assert.equal(host.last('play-closed').id, 2)
assert.equal(late.last('play-closed').id, 4)

// Page crash: every relation with that browser's peer IDs closes.
const late2 = await (await swf(C)).connect()
late2.send(OP.PUBLISH, 1, 'media')
host.send(OP.PLAY, 9, late2.peerId, 'media')
await sleep(40)
late2.send(OP.PEER_RESPONSE, late2.last('peer-connect').subId, true)
await sleep(40)
assert.equal(host.last('play-start').id, 9)
crashHub('ccc')
await sleep(40)
assert.equal(host.last('play-closed').id, 9)
C.router.dispose()
C.session.leave()
C.net.dispose()

// -- migration: the backend host's page dies ---------------------------------------

crashHub('aaa')
await sleep(300)
assert.equal(B.session.isHost, true)
assert.equal(verified(await bob.php('account9.php', { task: '1', usernameoremail: 'Alice', password: 'pw' })).code, '0', 'accounts survive migration')
rooms = Object.fromEntries(new URLSearchParams(await bob.php('testscript4.php', {})))
assert.equal(rooms.cant, '1', "the departed host's room is gone")
assert.equal(rooms.address0, 'roomB')
assert.equal(Object.fromEntries(new URLSearchParams(await bob.php('maps2.php', { task: '2', gametype: '0', sorton: '0' }))).cant, '1', 'level vault survives')

// A split-brain winner without state is healed by the pages' vaults.
const fresh = new (await import('../src/games/tiny-tanks/backend.ts')).TinyTanksBackend()
const exported = alice.vaults.at(-1).accounts
assert.equal(fresh.importAccounts(exported), 1)
assert.equal(verified(fresh.handle('account9.php', { task: '1', usernameoremail: 'Alice', password: 'pw' }, 'x').body).code, '0')

for (const page of [A, B]) {
  page.router.dispose()
  page.session.leave()
  page.net.dispose()
}
console.log('✔ tiny-tanks: accounts, signed responses, rooms, level vault, RTMFP direct streams & migration')
