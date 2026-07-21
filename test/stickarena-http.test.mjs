// HTTP endpoint regression test: the packed engine posts to a RELATIVE
// stick_arena.php (resolving to the host root), while the frame scripts use
// the absolute /stickarena/ URL - both must hit the create handler, and
// unknown .php endpoints must get a generic success, never a dev-server probe.
import assert from 'node:assert/strict'
if (typeof globalThis.CloseEvent === 'undefined') {
  globalThis.CloseEvent = class CloseEvent extends Event {
    constructor(t, i = {}) { super(t); this.code = i.code ?? 0; this.reason = i.reason ?? ''; this.wasClean = !!i.wasClean }
  }
}
const { VirtualNetwork, BaseBridge, createSession } = await import('../src/flashnet/index.ts')
const { stickarena } = await import('../src/games/stickarena-dimensions/game.ts')
class Loop extends BaseBridge { send() {} onClose() {} }
const net = new VirtualNetwork()

// main.ts order: php handler BEFORE the session, catch-all AFTER.
let syncCreate = null
net.listenHttp(/\/stick_arena\.php/, async (request) => {
  const form = new URLSearchParams(await request.text())
  if (form.get('action') !== 'create') return { body: 'result=success' }
  const verdict = await syncCreate(form.get('username'), form.get('userpass'))
  return { body: verdict.ok ? 'result=success' : `result=${verdict.reason}` }
})
const session = await createSession(
  stickarena({ endpoint: 'ballistick.local:1138', syncEndpoint: 'ballistick.local:1139' }),
  { net, bridge: new Loop('solo'), settleMs: 30, snapshotMs: 50 },
)
net.listenHttp((url) => /(^|\.)xgenstudios\.com$/.test(url.hostname), (_r, url) => {
  if (url.pathname.endsWith('.php')) return { body: 'result=success' }
  return { status: 404, body: '' }
})

// sync channel like main.ts
const proxy = session.ruffleConfig().socketProxy.find((p) => p.port === 1139)
const ws = new WebSocket(proxy.proxyUrl); ws.binaryType = 'arraybuffer'
const replies = []; let buf = ''
ws.onmessage = (ev) => {
  buf += new TextDecoder().decode(new Uint8Array(ev.data))
  let i; while ((i = buf.indexOf('\0')) !== -1) { replies.push(JSON.parse(buf.slice(0, i))); buf = buf.slice(i + 1) }
}
await new Promise((r) => (ws.onopen = r))
let nextId = 1
syncCreate = (name, password) => new Promise((resolve) => {
  const id = nextId++
  const t = setInterval(() => {
    const m = replies.find((x) => x.t === 'created' && x.id === id)
    if (m) { clearInterval(t); resolve(m) }
  }, 5)
  ws.send(new TextEncoder().encode(JSON.stringify({ t: 'create', id, name, password }) + '\0'))
})

// 1) the RELATIVE-resolved URL the packed engine uses (host root, no /stickarena/)
let res = await fetch('http://www.xgenstudios.com/stick_arena.php', {
  method: 'POST',
  headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
  body: 'action=create&username=Zed&userpass=abc123&usercol=001002003&email_address=a@b.co',
})
assert.equal(await res.text(), 'result=success', 'relative-URL create succeeds')
// 2) duplicate with different password -> taken
res = await fetch('http://www.xgenstudios.com/stick_arena.php', {
  method: 'POST', headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
  body: 'action=create&username=Zed&userpass=other',
})
assert.equal(await res.text(), 'result=taken', 'duplicate name refused')
// 3) the absolute /stickarena/ variant still matches the same handler
res = await fetch('http://www.xgenstudios.com/stickarena/stick_arena.php', {
  method: 'POST', headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
  body: 'action=verify&username=Zed',
})
assert.equal(await res.text(), 'result=success', 'non-create actions succeed generically')
// 4) unknown php endpooint falls to the catch-all success (no dev-server probe)
res = await fetch('http://www.xgenstudios.com/other/mystery.php')
assert.equal(await res.text(), 'result=success', 'unknown php -> generic success')
// 5) version_check via its real host+path
res = await fetch('http://server01.xgenstudios.com/stickarena/version_check.php')
assert.equal(await res.text(), 'result=success')
session.leave(); net.dispose(); ws.close()
console.log('✔ php repro: relative + absolute stick_arena.php, verdicts, fallbacks')
