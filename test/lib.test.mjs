import assert from 'node:assert/strict'

// Node < 23 lacks CloseEvent; tiny polyfill for the test environment.
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

const { VirtualNetwork, pipe, withTunnel, BaseBridge, loopbackBridge } = await import('../src/flashnet/index.ts')

const sleep = (ms) => new Promise((r) => setTimeout(r, ms))
const enc = (s) => new TextEncoder().encode(s)
const dec = (b) => new TextDecoder().decode(b)

// --- 1. WebSocket interception -------------------------------------------
{
  const net = new VirtualNetwork()
  const received = []
  net.listen('game.example.com:2001', (socket) => {
    assert.equal(socket.host, 'game.example.com')
    assert.equal(socket.port, 2001)
    socket.write(enc('hello from server')) // early write, must be buffered
    socket.on('data', (d) => {
      received.push(dec(d))
      if (dec(d) === 'quit') socket.close()
    })
  })

  const config = net.ruffleConfig()
  assert.equal(config.socketProxy.length, 1)
  assert.equal(config.socketProxy[0].host, 'game.example.com')

  // Simulate what Ruffle does with the proxy config:
  const ws = new WebSocket(config.socketProxy[0].proxyUrl)
  ws.binaryType = 'arraybuffer'
  const messages = []
  let closed = false
  ws.onmessage = (ev) => {
    assert.ok(ev.data instanceof ArrayBuffer)
    messages.push(dec(new Uint8Array(ev.data)))
  }
  ws.onclose = () => (closed = true)
  await new Promise((resolve) => (ws.onopen = resolve))

  ws.send(enc('hi').buffer)
  ws.send('quit')
  await sleep(20)

  assert.deepEqual(messages, ['hello from server'])
  assert.deepEqual(received, ['hi', 'quit'])
  assert.equal(closed, true)

  // Non-matching URLs must fall through to the native implementation.
  assert.throws(() => new WebSocket('not a url'))
  net.dispose()
  console.log('✔ WebSocket interception')
}

// --- 2. fetch interception -------------------------------------------------
{
  const net = new VirtualNetwork()
  net.listenHttp('api.example.com', (request, url) => {
    if (url.pathname === '/status') return { status: 201, body: 'created' }
    return undefined // pass through (would hit the real network)
  })
  const res = await fetch('https://api.example.com/status')
  assert.equal(res.status, 201)
  assert.equal(await res.text(), 'created')
  net.dispose()
  assert.equal(globalThis.fetch.name, 'fetch', 'native fetch restored')
  console.log('✔ fetch interception')
}

// --- 3. Tunnel over a bridge ------------------------------------------------
{
  // Minimal in-memory bridge pair for testing.
  class MemoryBridge extends BaseBridge {
    other = null
    send(peerId, data) {
      if (this.other?.selfId === peerId) queueMicrotask(() => this.other._deliver(this.selfId, data))
    }
    _deliver(from, data) { this.received(from, data) }
    _connect(other) { this.other = other; this.peerJoined(other.selfId) }
    onClose() {}
  }
  const rawA = new MemoryBridge('A')
  const rawB = new MemoryBridge('B')
  rawA._connect(rawB)
  rawB._connect(rawA)

  const host = withTunnel(rawA)
  const guest = withTunnel(rawB)

  // User messages still flow through the muxed bridge, untouched by the tunnel.
  const userMsgs = []
  host.bridge.on('message', (peer, data) => userMsgs.push([peer, dec(data)]))
  guest.bridge.send('A', enc('lobby chat'))

  // Host accepts tunneled sockets and echoes uppercased.
  host.tunnel.on('socket', (socket, peerId) => {
    assert.equal(peerId, 'B')
    assert.equal(socket.host, 'game.example.com')
    socket.on('data', (d) => socket.write(enc(dec(d).toUpperCase())))
  })

  const guestSocket = guest.tunnel.connect('A', { host: 'game.example.com', port: 2001 })
  const answers = []
  guestSocket.on('data', (d) => answers.push(dec(d)))
  guestSocket.write(enc('ping'))
  await sleep(20)

  assert.deepEqual(userMsgs, [['B', 'lobby chat']])
  assert.deepEqual(answers, ['PING'])

  // Close propagation guest -> host
  let hostSideClosed = false
  host.tunnel.on('socket', (s) => s.on('close', () => (hostSideClosed = true)))
  const second = guest.tunnel.connect('A', { host: 'game.example.com', port: 2001 })
  await sleep(10)
  second.close()
  await sleep(10)
  assert.equal(hostSideClosed, true)
  console.log('✔ tunnel + multiplexing')
}

// --- 4. pipe() between a VirtualSocket and a tunnel socket ------------------
{
  const net = new VirtualNetwork()
  class MemoryBridge extends BaseBridge {
    other = null
    send(peerId, data) {
      if (this.other?.selfId === peerId) queueMicrotask(() => this.other._deliver(this.selfId, data))
    }
    _deliver(from, data) { this.received(from, data) }
    _connect(other) { this.other = other; this.peerJoined(other.selfId) }
    onClose() {}
  }
  const rawHost = new MemoryBridge('host')
  const rawGuest = new MemoryBridge('guest')
  rawHost._connect(rawGuest)
  rawGuest._connect(rawHost)
  const host = withTunnel(rawHost)
  const guest = withTunnel(rawGuest)

  // Host runs an echo "server sim" for tunneled guests.
  host.tunnel.on('socket', (socket) => socket.on('data', (d) => socket.write(d)))

  // Guest intercepts the SWF socket and pipes it to the host.
  net.listen('game.example.com:2001', (socket) => {
    pipe(socket, guest.tunnel.connect('host', { host: socket.host, port: socket.port }))
  })

  const ws = new WebSocket(net.ruffleConfig().socketProxy[0].proxyUrl)
  ws.binaryType = 'arraybuffer'
  const echoed = []
  ws.onmessage = (ev) => echoed.push(dec(new Uint8Array(ev.data)))
  await new Promise((resolve) => (ws.onopen = resolve))
  ws.send(enc('round trip').buffer)
  await sleep(30)
  assert.deepEqual(echoed, ['round trip'])
  net.dispose()
  console.log('✔ end-to-end: SWF socket -> pipe -> tunnel -> host sim -> back')
}

// --- 5. loopback ------------------------------------------------------------
{
  const bridge = loopbackBridge()
  bridge.broadcast(enc('into the void'))
  assert.equal(bridge.peers.size, 0)
  bridge.close()
  console.log('✔ loopback bridge')
}

// --- 6. framing: XMLSocket, length-prefixed, chunk boundaries ----------------
{
  const { VirtualSocket, xmlSocket, framed, lengthPrefixed, delimited } = await import('../src/flashnet/index.ts')

  // XMLSocket: \0-terminated, torn across chunks + multiple per chunk
  const raw = new VirtualSocket('x', 1)
  raw._attachSink(() => {}, () => {})
  const xml = xmlSocket(raw)
  const xmlMsgs = []
  xml.on('message', (m) => xmlMsgs.push(m))
  raw._receive(enc('<a/>\0<b')) // one complete, one partial
  raw._receive(enc('/>\0'))
  raw._receive(new Uint8Array([...enc('<c/>'), 0, ...enc('<d/>'), 0]))
  assert.deepEqual(xmlMsgs, ['<a/>', '<b/>', '<c/>', '<d/>'])

  // Outgoing frames get the terminator appended
  const out = []
  const raw2 = new VirtualSocket('x', 1)
  raw2._attachSink((d) => out.push([...d]), () => {})
  xmlSocket(raw2).send('<hi/>')
  assert.deepEqual(out, [[...enc('<hi/>'), 0]])

  // length-prefixed (u16 BE), split inside the length header
  const raw3 = new VirtualSocket('x', 1)
  raw3._attachSink(() => {}, () => {})
  const lp = framed(raw3, lengthPrefixed({ size: 2 }))
  const lpMsgs = []
  lp.on('message', (m) => lpMsgs.push(dec(m)))
  const packet = lp.socket === raw3 ? new Uint8Array([0, 4, ...enc('ping'), 0, 2, ...enc('ok')]) : null
  raw3._receive(packet.subarray(0, 1)) // half the header
  raw3._receive(packet.subarray(1, 5))
  raw3._receive(packet.subarray(5))
  assert.deepEqual(lpMsgs, ['ping', 'ok'])

  // multi-byte delimiter torn across chunks
  const raw4 = new VirtualSocket('x', 1)
  raw4._attachSink(() => {}, () => {})
  const dl = framed(raw4, delimited(enc('\r\n')))
  const dlMsgs = []
  dl.on('message', (m) => dlMsgs.push(dec(m)))
  raw4._receive(enc('one\r'))
  raw4._receive(enc('\ntwo\r\n'))
  assert.deepEqual(dlMsgs, ['one', 'two'])

  // oversized frame -> error + close
  const raw5 = new VirtualSocket('x', 1)
  raw5._attachSink(() => {}, () => {})
  const guarded = xmlSocket(raw5, { maxFrameLength: 4 })
  let framingError = null
  guarded.on('error', (err) => (framingError = err))
  raw5._receive(enc('toolongwithoutterminator'))
  assert.ok(framingError instanceof Error)
  assert.equal(raw5.closed, true)
  console.log('✔ framing: xmlSocket, lengthPrefixed, delimited')
}

// --- 7. trystero adapter: both API generations ------------------------------
{
  const { trysteroBridge } = await import('../src/flashnet/index.ts')

  // Old API (<= 0.21): [send, receive] tuple, method-style peer callbacks.
  {
    const sent = []
    let receiveCb, joinCb, leaveCb
    const room = {
      makeAction: () => [(data, target) => sent.push([dec(data), target]), (cb) => (receiveCb = cb)],
      onPeerJoin: (cb) => (joinCb = cb),
      onPeerLeave: (cb) => (leaveCb = cb),
      getPeers: () => ({ p1: {} }),
      leave: () => {},
    }
    const bridge = trysteroBridge({ room, selfId: 'me' })
    assert.ok(bridge.peers.has('p1'))
    joinCb('p2')
    leaveCb('p1')
    const got = []
    bridge.on('message', (id, d) => got.push([id, dec(d)]))
    receiveCb(enc('hi'), 'p2')
    bridge.send('p2', enc('yo'))
    bridge.broadcast(enc('all'))
    assert.deepEqual(got, [['p2', 'hi']])
    assert.deepEqual(sent, [['yo', 'p2'], ['all', undefined]])
  }

  // New API (>= 0.22): MessageAction object, assignable callbacks, {target} options.
  {
    const sent = []
    const action = { send: (data, opts) => sent.push([dec(data), opts]) }
    const room = { makeAction: () => action, leave: () => {} }
    const bridge = trysteroBridge({ room, selfId: 'me' })
    assert.equal(typeof room.onPeerJoin, 'function', 'adapter assigned the peer callbacks')
    room.onPeerJoin('p9') // trystero invoking the assigned handler
    const got = []
    bridge.on('message', (id, d) => got.push([id, dec(d)]))
    action.onMessage(enc('hi'), { peerId: 'p9' }) // new handler signature
    bridge.send('p9', enc('yo'))
    bridge.broadcast(enc('all'))
    room.onPeerLeave('p9')
    assert.deepEqual(got, [['p9', 'hi']])
    assert.deepEqual(sent, [['yo', { target: 'p9' }], ['all', undefined]])
    assert.equal(bridge.peers.size, 0)
  }
  console.log('\u2714 trystero adapter (tuple & MessageAction APIs)')
}

console.log('\nAll smoke tests passed.')
