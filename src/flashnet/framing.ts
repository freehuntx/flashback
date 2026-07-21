import { Emitter } from './events.ts'
import { toBytes, type Socket } from './socket.ts'

/**
 * Optional framing layer on top of any `Socket` (VirtualSocket or tunneled).
 * A `Framer` turns a byte stream into discrete frames (stateful, handles
 * partial chunks), a `Codec` optionally converts frames into a richer type.
 *
 * ```ts
 * const conn = xmlSocket(socket)          // Flash XMLSocket: \0-terminated UTF-8
 * conn.on('message', (xml) => ...)        // xml: string
 * conn.send('<login name="foo"/>')
 * ```
 */
export interface Framer {
  /** Feed incoming bytes; call `emit` once per complete frame (without framing bytes). */
  push(chunk: Uint8Array, emit: (frame: Uint8Array) => void): void
  /** Wrap one outgoing frame with its framing bytes. */
  wrap(frame: Uint8Array): Uint8Array
}

export interface Codec<T> {
  encode(message: T): Uint8Array
  decode(frame: Uint8Array): T
}

export interface FramerOptions {
  /** Close the connection if a frame exceeds this size. Default: 16 MiB. */
  maxFrameLength?: number
}

const DEFAULT_MAX_FRAME = 16 * 1024 * 1024

/** Frames separated by a delimiter byte/sequence (delimiter is stripped/appended). */
export function delimited(delimiter: number | Uint8Array, options: FramerOptions = {}): Framer {
  const needle = typeof delimiter === 'number' ? new Uint8Array([delimiter]) : delimiter
  if (needle.length === 0) throw new Error('delimiter must not be empty')
  const maxFrameLength = options.maxFrameLength ?? DEFAULT_MAX_FRAME
  let buffer: Uint8Array = new Uint8Array(0)
  let searchFrom = 0

  return {
    push(chunk, emit) {
      buffer = concat(buffer, chunk)
      let start = 0
      let index: number
      while ((index = indexOf(buffer, needle, Math.max(start, searchFrom))) !== -1) {
        emit(buffer.slice(start, index))
        start = index + needle.length
      }
      buffer = start > 0 ? buffer.slice(start) : buffer
      // Remember scanned area so multi-byte delimiters split across chunks still match.
      searchFrom = Math.max(0, buffer.length - (needle.length - 1))
      if (buffer.length > maxFrameLength) throw new Error(`Frame exceeds maxFrameLength (${maxFrameLength})`)
    },
    wrap(frame) {
      const out = new Uint8Array(frame.length + needle.length)
      out.set(frame, 0)
      out.set(needle, frame.length)
      return out
    },
  }
}

/** Flash XMLSocket-style framing: frames terminated by a zero byte. */
export function nullTerminated(options?: FramerOptions): Framer {
  return delimited(0, options)
}

export interface LengthPrefixedOptions extends FramerOptions {
  /** Prefix size in bytes. Default: 2 (like Flash's readUTF/writeUTF or many game protocols). */
  size?: 1 | 2 | 4
  /** Little-endian prefix. Default: false (network byte order, like Flash ByteArray). */
  littleEndian?: boolean
}

/** Frames preceded by their payload length. */
export function lengthPrefixed(options: LengthPrefixedOptions = {}): Framer {
  const size = options.size ?? 2
  const littleEndian = options.littleEndian ?? false
  const maxFrameLength = options.maxFrameLength ?? DEFAULT_MAX_FRAME
  let buffer: Uint8Array = new Uint8Array(0)

  const readLength = (bytes: Uint8Array): number => {
    const view = new DataView(bytes.buffer, bytes.byteOffset)
    if (size === 1) return view.getUint8(0)
    if (size === 2) return view.getUint16(0, littleEndian)
    return view.getUint32(0, littleEndian)
  }

  return {
    push(chunk, emit) {
      buffer = concat(buffer, chunk)
      while (buffer.length >= size) {
        const length = readLength(buffer)
        if (length > maxFrameLength) throw new Error(`Frame exceeds maxFrameLength (${maxFrameLength})`)
        if (buffer.length < size + length) break
        emit(buffer.slice(size, size + length))
        buffer = buffer.slice(size + length)
      }
    },
    wrap(frame) {
      if (frame.length > maxFrameLength) throw new Error(`Frame exceeds maxFrameLength (${maxFrameLength})`)
      const out = new Uint8Array(size + frame.length)
      const view = new DataView(out.buffer)
      if (size === 1) view.setUint8(0, frame.length)
      else if (size === 2) view.setUint16(0, frame.length, littleEndian)
      else view.setUint32(0, frame.length, littleEndian)
      out.set(frame, size)
      return out
    },
  }
}

/** UTF-8 (or any TextDecoder label) string codec. */
export function text(label = 'utf-8'): Codec<string> {
  const decoder = new TextDecoder(label)
  return {
    encode: (message) => new TextEncoder().encode(message),
    decode: (frame) => decoder.decode(frame),
  }
}

const rawCodec: Codec<Uint8Array> = { encode: (m) => m, decode: (f) => f }

export type MessageSocketEvents<T> = {
  message: (message: T) => void
  error: (error: Error) => void
  close: () => void
}

/**
 * Message-level view of a byte socket. Framing errors (oversized/garbage
 * frames, codec failures) emit `error` and close the underlying socket.
 */
export class MessageSocket<T> extends Emitter<MessageSocketEvents<T>> {
  constructor(
    readonly socket: Socket,
    private framer: Framer,
    private codec: Codec<T>
  ) {
    super()
    socket.on('data', (chunk) => {
      try {
        this.framer.push(chunk, (frame) => this.emit('message', this.codec.decode(frame)))
      } catch (err) {
        this.emit('error', err instanceof Error ? err : new Error(String(err)))
        socket.close()
      }
    })
    socket.on('close', () => {
      this.emit('close')
      this.clearListeners()
    })
  }

  get closed(): boolean {
    return this.socket.closed
  }

  send(message: T): void {
    this.socket.write(this.framer.wrap(this.codec.encode(message)))
  }

  close(): void {
    this.socket.close()
  }
}

export function framed(socket: Socket, framer: Framer): MessageSocket<Uint8Array>
export function framed<T>(socket: Socket, framer: Framer, codec: Codec<T>): MessageSocket<T>
export function framed<T>(socket: Socket, framer: Framer, codec?: Codec<T>): MessageSocket<T> {
  return new MessageSocket(socket, framer, (codec ?? rawCodec) as Codec<T>)
}

/**
 * Exactly what a Flash XMLSocket speaks: zero-terminated UTF-8 strings.
 * Parsing the XML (DOMParser or otherwise) stays your business.
 */
export function xmlSocket(socket: Socket, options?: FramerOptions): MessageSocket<string> {
  return framed(socket, nullTerminated(options), text())
}

// ---------------------------------------------------------------------------

function concat(a: Uint8Array, b: Uint8Array): Uint8Array {
  if (a.length === 0) return toBytes(b)
  const out = new Uint8Array(a.length + b.length)
  out.set(a, 0)
  out.set(b, a.length)
  return out
}

function indexOf(haystack: Uint8Array, needle: Uint8Array, from: number): number {
  if (needle.length === 1) return haystack.indexOf(needle[0]!, from)
  outer: for (let i = Math.max(0, from); i <= haystack.length - needle.length; i++) {
    for (let j = 0; j < needle.length; j++) {
      if (haystack[i + j] !== needle[j]) continue outer
    }
    return i
  }
  return -1
}
