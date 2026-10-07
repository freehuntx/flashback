#!/usr/bin/env node
/**
 * Patch TinyTanksLive.swf for Ruffle: swap the RTMFP classes for a shim.
 *
 * Tiny Tanks networks over Adobe Cirrus (RTMFP NetConnection + direct
 * NetStreams), which Ruffle does not implement. This script
 *  1. injects a DoABC tag with flashnet.rtmfp::NetConnection/NetStream
 *     (compiled from ./shim by CompileAbc.java), and
 *  2. retargets every QName(flash.net, NetConnection|NetStream) multiname in
 *     the game's ABC to the shim package, so the game's `new NetConnection()`,
 *     slot types and casts all resolve to the shim.
 * Nothing else in the SWF changes.
 *
 * Usage: node patch-swf.mjs <original.swf> <shim.abc> <out.swf>
 */
import { readFileSync, writeFileSync } from 'node:fs'
import { deflateSync, inflateSync } from 'node:zlib'

const SHIM_PACKAGE = 'flashnet.rtmfp'
const RETARGET = new Set(['NetConnection', 'NetStream'])
const TAG_DO_ABC = 72
const TAG_DO_ABC2 = 82

const [input, shimPath, output] = process.argv.slice(2)
if (!input || !shimPath || !output) {
  console.error('usage: node patch-swf.mjs <original.swf> <shim.abc> <out.swf>')
  process.exit(2)
}

// -- SWF container ------------------------------------------------------------

function readSwf(file) {
  const raw = readFileSync(file)
  const signature = raw.toString('latin1', 0, 3)
  const version = raw[3]
  let body
  if (signature === 'FWS') body = raw.subarray(8)
  else if (signature === 'CWS') body = inflateSync(raw.subarray(8))
  else throw new Error(`unsupported SWF signature ${signature}`)
  // Frame header: RECT (variable bits), frame rate u16, frame count u16.
  const nbits = body[0] >> 3
  const headerLength = Math.ceil((5 + nbits * 4) / 8) + 4
  const header = body.subarray(0, headerLength)
  const tags = []
  let pos = headerLength
  while (pos < body.length) {
    const codeAndLength = body.readUInt16LE(pos)
    pos += 2
    const code = codeAndLength >> 6
    let length = codeAndLength & 0x3f
    if (length === 0x3f) {
      length = body.readUInt32LE(pos)
      pos += 4
    }
    tags.push({ code, data: body.subarray(pos, pos + length) })
    pos += length
    if (code === 0) break
  }
  return { version, header, tags }
}

function writeSwf({ version, header, tags }) {
  const parts = [header]
  for (const { code, data } of tags) {
    const head = Buffer.alloc(6)
    head.writeUInt16LE((code << 6) | 0x3f, 0)
    head.writeUInt32LE(data.length, 2)
    parts.push(head, data)
  }
  const body = Buffer.concat(parts)
  const fileHeader = Buffer.alloc(8)
  fileHeader.write('CWS', 0, 'latin1')
  fileHeader[3] = version
  fileHeader.writeUInt32LE(body.length + 8, 4)
  return Buffer.concat([fileHeader, deflateSync(body, { level: 9 })])
}

// -- ABC constant pool ----------------------------------------------------------

class Reader {
  constructor(buffer, pos = 0) {
    this.buffer = buffer
    this.pos = pos
  }
  u8() {
    return this.buffer[this.pos++]
  }
  u30() {
    let result = 0
    for (let shift = 0; shift < 35; shift += 7) {
      const byte = this.buffer[this.pos++]
      result += (byte & 0x7f) * 2 ** shift
      if (!(byte & 0x80)) break
    }
    return result
  }
  skip(n) {
    this.pos += n
  }
}

function u30(value) {
  const bytes = []
  do {
    let byte = value & 0x7f
    value = Math.floor(value / 128)
    if (value > 0) byte |= 0x80
    bytes.push(byte)
  } while (value > 0)
  return Buffer.from(bytes)
}

/** Parse the constant pool, keeping byte ranges so untouched parts can be copied verbatim. */
function parseAbc(abc) {
  const r = new Reader(abc, 4) // minor/major version
  const skipPool = (entry) => {
    const count = r.u30()
    for (let i = 1; i < count; i++) entry()
  }
  skipPool(() => r.u30()) // int (s32 varint, same byte layout)
  skipPool(() => r.u30()) // uint
  const doubleCount = r.u30()
  r.skip(Math.max(0, doubleCount - 1) * 8)

  const stringsStart = r.pos
  const strings = ['']
  const stringCount = r.u30()
  for (let i = 1; i < stringCount; i++) {
    const length = r.u30()
    strings.push(abc.toString('utf8', r.pos, r.pos + length))
    r.skip(length)
  }
  const stringsEnd = r.pos

  const namespaces = [{ kind: 0, name: 0 }]
  const namespaceCount = r.u30()
  for (let i = 1; i < namespaceCount; i++) namespaces.push({ kind: r.u8(), name: r.u30() })
  const namespacesEnd = r.pos

  skipPool(() => {
    const count = r.u30()
    for (let i = 0; i < count; i++) r.u30()
  })

  const multinamesStart = r.pos
  const multinames = [null]
  const multinameCount = r.u30()
  for (let i = 1; i < multinameCount; i++) {
    const start = r.pos
    const kind = r.u8()
    const entry = { kind, start }
    switch (kind) {
      case 0x07: // QName
      case 0x0d: // QNameA
        entry.ns = r.u30()
        entry.name = r.u30()
        break
      case 0x0f: // RTQName
      case 0x10:
        entry.name = r.u30()
        break
      case 0x11: // RTQNameL
      case 0x12:
        break
      case 0x09: // Multiname
      case 0x0e:
        entry.name = r.u30()
        entry.nsSet = r.u30()
        break
      case 0x1b: // MultinameL
      case 0x1c:
        entry.nsSet = r.u30()
        break
      case 0x1d: {
        // TypeName (generics, Vector.<T>)
        entry.qname = r.u30()
        const count = r.u30()
        for (let j = 0; j < count; j++) r.u30()
        break
      }
      default:
        throw new Error(`unknown multiname kind 0x${kind.toString(16)} at ${start}`)
    }
    entry.end = r.pos
    multinames.push(entry)
  }
  const multinamesEnd = r.pos
  return {
    strings, stringsStart, stringsEnd,
    namespaces, namespacesEnd,
    multinames, multinamesStart, multinamesEnd,
  }
}

/** Returns the patched ABC, or null if it doesn't reference the RTMFP classes. */
function retargetAbc(abc) {
  const pool = parseAbc(abc)
  const flashNet = pool.namespaces.findIndex(
    (ns, i) => i > 0 && ns.kind === 0x16 && pool.strings[ns.name] === 'flash.net'
  )
  if (flashNet < 0) return null
  const targets = []
  pool.multinames.forEach((mn, i) => {
    if (mn && (mn.kind === 0x07 || mn.kind === 0x0d) && mn.ns === flashNet && RETARGET.has(pool.strings[mn.name])) {
      targets.push(i)
    }
  })
  if (targets.length === 0) return null

  // Append one string ("flashnet.rtmfp") and one PackageNamespace for it.
  const stringIndex = pool.strings.length
  const namespaceIndex = pool.namespaces.length
  const packageBytes = Buffer.from(SHIM_PACKAGE, 'utf8')

  const stringCountLen = u30(pool.strings.length).length
  const nsCountStart = pool.stringsEnd
  const nsCountLen = u30(pool.namespaces.length).length
  const mnCountLen = u30(pool.multinames.length).length

  const parts = [
    abc.subarray(0, pool.stringsStart),
    u30(pool.strings.length + 1),
    abc.subarray(pool.stringsStart + stringCountLen, pool.stringsEnd),
    u30(packageBytes.length),
    packageBytes,
    u30(pool.namespaces.length + 1),
    abc.subarray(nsCountStart + nsCountLen, pool.namespacesEnd),
    Buffer.from([0x16]),
    u30(stringIndex),
    abc.subarray(pool.namespacesEnd, pool.multinamesStart),
    abc.subarray(pool.multinamesStart, pool.multinamesStart + mnCountLen),
  ]
  for (let i = 1; i < pool.multinames.length; i++) {
    const mn = pool.multinames[i]
    if (targets.includes(i)) parts.push(Buffer.from([mn.kind]), u30(namespaceIndex), u30(mn.name))
    else parts.push(abc.subarray(mn.start, mn.end))
  }
  parts.push(abc.subarray(pool.multinamesEnd))
  for (const i of targets) {
    console.log(`  retarget multiname #${i} flash.net::${pool.strings[pool.multinames[i].name]} -> ${SHIM_PACKAGE}`)
  }
  return Buffer.concat(parts)
}

// -- main -------------------------------------------------------------------------

const swf = readSwf(input)
const shim = readFileSync(shimPath)
let patched = 0
let firstAbc = -1
swf.tags.forEach((tag, index) => {
  if (tag.code !== TAG_DO_ABC2 && tag.code !== TAG_DO_ABC) return
  if (firstAbc < 0) firstAbc = index
  // DoABC2 prefixes the ABC with u32 flags + null-terminated name.
  let prefixLength = 0
  if (tag.code === TAG_DO_ABC2) {
    prefixLength = 4
    while (tag.data[prefixLength] !== 0) prefixLength++
    prefixLength++
  }
  const result = retargetAbc(Buffer.from(tag.data.subarray(prefixLength)))
  if (!result) return
  tag.data = Buffer.concat([tag.data.subarray(0, prefixLength), result])
  patched++
})
if (patched === 0) throw new Error('no ABC references flash.net::NetConnection/NetStream - already patched?')
if (firstAbc < 0) throw new Error('SWF has no DoABC tag')

const shimTag = Buffer.concat([Buffer.from([1, 0, 0, 0]), Buffer.from('flashnet/rtmfp\0', 'latin1'), shim])
swf.tags.splice(firstAbc, 0, { code: TAG_DO_ABC2, data: shimTag })
writeFileSync(output, writeSwf(swf))
console.log(`patched ${patched} ABC tag(s), injected ${shim.length} byte shim -> ${output}`)
