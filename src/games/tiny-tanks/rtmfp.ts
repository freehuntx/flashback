import {
  type Bridge,
  framed,
  lengthPrefixed,
  type MessageSocket,
  type Socket,
  type Unsubscribe,
  type VirtualNetwork,
} from "../../flashnet/index.ts";

/**
 * Peer-to-peer RTMFP (Adobe Cirrus) emulation.
 *
 * Tiny Tanks connects every player to rtmfp://p2p.rtmfp.net and then talks
 * over direct NetStreams: the room host publishes a "media" stream that all
 * clients play, and plays each client's "media" stream in return. Messages
 * are NetStream.send(handler, ...args) calls.
 *
 * The patched SWF (tools/tiny-tanks) replaces flash.net.NetConnection and
 * NetStream with a shim that speaks a small framed protocol over a socket to
 * `endpoint`. This router runs in every page, owns those sockets and carries
 * stream traffic straight to the right browser over the bridge - so game
 * packets take exactly one WebRTC hop, like real RTMFP direct connections.
 *
 * Peer IDs are 64 hex chars like Cirrus' and encode the owning bridge peer,
 * so any page can route to a peer ID it got from the room list.
 */

export const RTMFP_ENDPOINT = "p2p.rtmfp.net:1935";

// SWF -> router opcodes
const C_HELLO = 1;
const C_PUBLISH = 2;
const C_PLAY = 3;
const C_CLOSE_STREAM = 4;
const C_SEND = 5;
const C_PEER_RESPONSE = 6;
const C_CLOSE_PEER = 7;
// router -> SWF opcodes
const S_CONNECTED = 101;
const S_PEER_CONNECT = 102;
const S_PLAY_START = 103;
const S_PLAY_FAILED = 104;
const S_MESSAGE = 105;
const S_PEER_CLOSED = 106;
const S_PLAY_CLOSED = 107;
const S_PUBLISH_START = 108;
const S_PEER_ACCEPTED = 109;
// router <-> router (bridge) message types
const B_PLAY = 1;
const B_PLAY_OK = 2;
const B_PLAY_FAIL = 3;
const B_MESSAGE = 4;
const B_UNSUBSCRIBE = 5;
const B_PUBLISH_CLOSED = 6;

const OUTBOX_TTL_MS = 15_000;

export interface RtmfpRouterOptions {
  net: VirtualNetwork;
  /** Game-payload bridge to the other pages (session.bridge). */
  bridge: Bridge;
  endpoint?: string;
  debug?: boolean;
}

interface Play {
  sid: number;
  farID: string;
  name: string;
  active: boolean;
}

interface Subscriber {
  subId: number;
  pubSid: number;
  /** Subscriber's peer ID and its play-stream id. */
  peer: string;
  sid: number;
  accepted: boolean;
}

interface Connection {
  peerId: string;
  conn: MessageSocket<Uint8Array>;
  publications: Map<number, string>;
  plays: Map<number, Play>;
  subscribers: Map<number, Subscriber>;
  /** Play requests for streams that aren't published yet. */
  waiting: Array<{ peer: string; sid: number; name: string }>;
  nextSubId: number;
}

type RemoteMessage =
  | { type: typeof B_PLAY; to: string; from: string; sid: number; name: string }
  | { type: typeof B_PLAY_OK | typeof B_PLAY_FAIL | typeof B_PUBLISH_CLOSED; to: string; sid: number }
  | { type: typeof B_MESSAGE; to: string; sid: number; payload: Uint8Array }
  | { type: typeof B_UNSUBSCRIBE; to: string; from: string; sid: number };

/** Encode a bridge peer (selfId) into a Cirrus-style 64 hex char peer ID. */
export function makePeerId(owner: string, serial: number): string {
  const ownerHex = toHex(new TextEncoder().encode(owner));
  const head = (ownerHex.length / 2).toString(16).padStart(2, "0") + ownerHex + serial.toString(16).padStart(4, "0");
  let tail = "";
  while (head.length + tail.length < 64) tail += Math.floor(Math.random() * 16).toString(16);
  return head + tail;
}

/** The bridge peer (selfId) a peer ID belongs to, or null if it isn't one of ours. */
export function peerIdOwner(peerId: string): string | null {
  if (!/^[0-9a-f]+$/.test(peerId) || peerId.length < 2) return null;
  const length = parseInt(peerId.slice(0, 2), 16);
  const hex = peerId.slice(2, 2 + length * 2);
  if (hex.length !== length * 2) return null;
  try {
    return new TextDecoder("utf-8", { fatal: true }).decode(fromHex(hex));
  } catch {
    return null;
  }
}

export class RtmfpRouter {
  #bridge: Bridge;
  #debug: boolean;
  #connections = new Map<string, Connection>();
  #outbox = new Map<string, Array<{ data: Uint8Array; at: number }>>();
  #serial = 0;
  #unsubs: Unsubscribe[] = [];

  constructor({ net, bridge, endpoint = RTMFP_ENDPOINT, debug = false }: RtmfpRouterOptions) {
    this.#bridge = bridge;
    this.#debug = debug;
    this.#unsubs.push(
      net.listen(endpoint, (socket) => this.#accept(socket)),
      bridge.on("message", (_peer, data) => this.#onRemote(data)),
      bridge.on("join", (peer) => this.#flush(peer)),
      bridge.on("leave", (peer) => this.#onPeerGone(peer)),
    );
  }

  /** Local NetConnections currently open (for diagnostics/tests). */
  get peerIds(): string[] {
    return [...this.#connections.keys()];
  }

  dispose(): void {
    for (const off of this.#unsubs) off();
    for (const connection of [...this.#connections.values()]) connection.conn.close();
    this.#outbox.clear();
  }

  // -- SWF side ----------------------------------------------------------------

  #accept(socket: Socket): void {
    const conn = framed(socket, lengthPrefixed({ size: 4 }));
    let connection: Connection | null = null;
    conn.on("message", (frame) => {
      const r = new Reader(frame);
      const opcode = r.u8();
      if (opcode === C_HELLO) {
        if (connection) return;
        const peerId = makePeerId(this.#bridge.selfId, ++this.#serial);
        connection = {
          peerId,
          conn,
          publications: new Map(),
          plays: new Map(),
          subscribers: new Map(),
          waiting: [],
          nextSubId: 1,
        };
        this.#connections.set(peerId, connection);
        this.#log("connect", peerId);
        conn.send(new Writer().u8(S_CONNECTED).utf(peerId).bytes());
        return;
      }
      if (connection) this.#onSwf(connection, opcode, r);
    });
    conn.on("close", () => {
      if (connection) this.#onClosed(connection);
    });
  }

  #onSwf(c: Connection, opcode: number, r: Reader): void {
    switch (opcode) {
      case C_PUBLISH: {
        const sid = r.u32();
        const name = r.utf();
        c.publications.set(sid, name);
        this.#toSwf(c, new Writer().u8(S_PUBLISH_START).u32(sid));
        const ready = c.waiting.filter((request) => request.name === name);
        c.waiting = c.waiting.filter((request) => request.name !== name);
        for (const request of ready) this.#offerSubscriber(c, sid, request.peer, request.sid);
        break;
      }
      case C_PLAY: {
        const sid = r.u32();
        const farID = r.utf();
        const name = r.utf();
        c.plays.set(sid, { sid, farID, name, active: false });
        this.#log("play", c.peerId, "->", farID, name);
        this.#send({ type: B_PLAY, to: farID, from: c.peerId, sid, name });
        break;
      }
      case C_CLOSE_STREAM: {
        const sid = r.u32();
        if (c.publications.delete(sid)) {
          for (const sub of [...c.subscribers.values()]) {
            if (sub.pubSid !== sid) continue;
            c.subscribers.delete(sub.subId);
            this.#send({ type: B_PUBLISH_CLOSED, to: sub.peer, sid: sub.sid });
          }
        }
        const play = c.plays.get(sid);
        if (play) {
          c.plays.delete(sid);
          this.#send({ type: B_UNSUBSCRIBE, to: play.farID, from: c.peerId, sid });
        }
        break;
      }
      case C_SEND: {
        const sid = r.u32();
        const payload = r.rest();
        for (const sub of c.subscribers.values()) {
          if (sub.pubSid === sid && sub.accepted) this.#send({ type: B_MESSAGE, to: sub.peer, sid: sub.sid, payload });
        }
        break;
      }
      case C_PEER_RESPONSE: {
        const subId = r.u32();
        const accepted = r.u8() === 1;
        const sub = c.subscribers.get(subId);
        if (!sub) break;
        if (accepted) {
          sub.accepted = true;
          this.#send({ type: B_PLAY_OK, to: sub.peer, sid: sub.sid });
          this.#toSwf(c, new Writer().u8(S_PEER_ACCEPTED).u32(sub.pubSid).u32(subId));
        } else {
          c.subscribers.delete(subId);
          this.#send({ type: B_PLAY_FAIL, to: sub.peer, sid: sub.sid });
        }
        break;
      }
      case C_CLOSE_PEER: {
        const sub = c.subscribers.get(r.u32());
        if (!sub) break;
        c.subscribers.delete(sub.subId);
        this.#send({ type: B_PUBLISH_CLOSED, to: sub.peer, sid: sub.sid });
        break;
      }
    }
  }

  /** The SWF closed its NetConnection (or the page is going away). */
  #onClosed(c: Connection): void {
    if (this.#connections.get(c.peerId) !== c) return;
    this.#connections.delete(c.peerId);
    this.#log("close", c.peerId);
    for (const sub of c.subscribers.values()) this.#send({ type: B_PUBLISH_CLOSED, to: sub.peer, sid: sub.sid });
    for (const play of c.plays.values()) this.#send({ type: B_UNSUBSCRIBE, to: play.farID, from: c.peerId, sid: play.sid });
    for (const request of c.waiting) this.#send({ type: B_PLAY_FAIL, to: request.peer, sid: request.sid });
  }

  #offerSubscriber(c: Connection, pubSid: number, peer: string, sid: number): void {
    const subId = c.nextSubId++;
    c.subscribers.set(subId, { subId, pubSid, peer, sid, accepted: false });
    this.#toSwf(c, new Writer().u8(S_PEER_CONNECT).u32(pubSid).u32(subId).utf(peer));
  }

  #toSwf(c: Connection, writer: Writer): void {
    if (!c.conn.closed) c.conn.send(writer.bytes());
  }

  // -- bridge side ---------------------------------------------------------------

  #onRemote(data: Uint8Array): void {
    let message: RemoteMessage;
    try {
      message = decodeRemote(data);
    } catch {
      return;
    }
    const c = this.#connections.get(message.to);
    switch (message.type) {
      case B_PLAY: {
        if (!c) {
          this.#send({ type: B_PLAY_FAIL, to: message.from, sid: message.sid });
          return;
        }
        const pubSid = [...c.publications].find(([, name]) => name === message.name)?.[0];
        if (pubSid === undefined) c.waiting.push({ peer: message.from, sid: message.sid, name: message.name });
        else this.#offerSubscriber(c, pubSid, message.from, message.sid);
        return;
      }
      case B_PLAY_OK: {
        const play = c?.plays.get(message.sid);
        if (!c || !play || play.active) return;
        play.active = true;
        this.#toSwf(c, new Writer().u8(S_PLAY_START).u32(message.sid));
        return;
      }
      case B_PLAY_FAIL: {
        const play = c?.plays.get(message.sid);
        if (!c || !play) return;
        c.plays.delete(message.sid);
        this.#toSwf(c, new Writer().u8(S_PLAY_FAILED).u32(message.sid));
        return;
      }
      case B_MESSAGE: {
        const play = c?.plays.get(message.sid);
        if (!c || !play?.active) return;
        this.#toSwf(c, new Writer().u8(S_MESSAGE).u32(message.sid).raw(message.payload));
        return;
      }
      case B_UNSUBSCRIBE: {
        if (!c) return;
        c.waiting = c.waiting.filter((request) => !(request.peer === message.from && request.sid === message.sid));
        for (const sub of [...c.subscribers.values()]) {
          if (sub.peer !== message.from || sub.sid !== message.sid) continue;
          c.subscribers.delete(sub.subId);
          this.#toSwf(c, new Writer().u8(S_PEER_CLOSED).u32(sub.subId));
        }
        return;
      }
      case B_PUBLISH_CLOSED: {
        const play = c?.plays.get(message.sid);
        if (!c || !play) return;
        c.plays.delete(message.sid);
        this.#toSwf(c, new Writer().u8(play.active ? S_PLAY_CLOSED : S_PLAY_FAILED).u32(message.sid));
        return;
      }
    }
  }

  /** A whole page left: every stream relation with its peer IDs is gone. */
  #onPeerGone(owner: string): void {
    this.#outbox.delete(owner);
    for (const c of this.#connections.values()) {
      c.waiting = c.waiting.filter((request) => peerIdOwner(request.peer) !== owner);
      for (const sub of [...c.subscribers.values()]) {
        if (peerIdOwner(sub.peer) !== owner) continue;
        c.subscribers.delete(sub.subId);
        this.#toSwf(c, new Writer().u8(S_PEER_CLOSED).u32(sub.subId));
      }
      for (const play of [...c.plays.values()]) {
        if (peerIdOwner(play.farID) !== owner) continue;
        c.plays.delete(play.sid);
        this.#toSwf(c, new Writer().u8(play.active ? S_PLAY_CLOSED : S_PLAY_FAILED).u32(play.sid));
      }
    }
  }

  #send(message: RemoteMessage): void {
    const owner = peerIdOwner(message.to);
    if (!owner) {
      // Not a peer ID we can route (e.g. a stale Cirrus address): fail plays right away.
      if (message.type === B_PLAY) {
        const from = message.from;
        const sid = message.sid;
        queueMicrotask(() => this.#onRemote(encodeRemote({ type: B_PLAY_FAIL, to: from, sid })));
      }
      return;
    }
    const data = encodeRemote(message);
    if (owner === this.#bridge.selfId) {
      queueMicrotask(() => this.#onRemote(data));
    } else if (this.#bridge.peers.has(owner)) {
      this.#bridge.send(owner, data);
    } else {
      // Transports like Trystero connect peers a while after startup - hold on.
      const now = Date.now();
      const queue = (this.#outbox.get(owner) ?? []).filter((entry) => now - entry.at < OUTBOX_TTL_MS);
      queue.push({ data, at: now });
      this.#outbox.set(owner, queue);
    }
  }

  #flush(owner: string): void {
    const queue = this.#outbox.get(owner);
    if (!queue) return;
    this.#outbox.delete(owner);
    const now = Date.now();
    for (const entry of queue) if (now - entry.at < OUTBOX_TTL_MS) this.#bridge.send(owner, entry.data);
  }

  #log(...values: unknown[]): void {
    if (this.#debug) console.log("[rtmfp]", ...values);
  }
}

// -- wire helpers ----------------------------------------------------------------

function encodeRemote(message: RemoteMessage): Uint8Array {
  const w = new Writer().u8(message.type).str(message.to);
  switch (message.type) {
    case B_PLAY:
      w.str(message.from).u32(message.sid).str(message.name);
      break;
    case B_UNSUBSCRIBE:
      w.str(message.from).u32(message.sid);
      break;
    case B_MESSAGE:
      w.u32(message.sid).raw(message.payload);
      break;
    default:
      w.u32(message.sid);
  }
  return w.bytes();
}

function decodeRemote(data: Uint8Array): RemoteMessage {
  const r = new Reader(data);
  const type = r.u8();
  const to = r.str();
  switch (type) {
    case B_PLAY:
      return { type, to, from: r.str(), sid: r.u32(), name: r.str() };
    case B_UNSUBSCRIBE:
      return { type, to, from: r.str(), sid: r.u32() };
    case B_MESSAGE:
      return { type, to, sid: r.u32(), payload: r.rest() };
    case B_PLAY_OK:
    case B_PLAY_FAIL:
    case B_PUBLISH_CLOSED:
      return { type, to, sid: r.u32() };
    default:
      throw new Error(`unknown rtmfp bridge message ${type}`);
  }
}

class Writer {
  #parts: Uint8Array[] = [];
  #length = 0;

  u8(value: number): this {
    return this.raw(Uint8Array.of(value));
  }

  u32(value: number): this {
    const bytes = new Uint8Array(4);
    new DataView(bytes.buffer).setUint32(0, value >>> 0);
    return this.raw(bytes);
  }

  /** Flash writeUTF: u16 length + UTF-8. */
  utf(value: string): this {
    const bytes = new TextEncoder().encode(value);
    const head = new Uint8Array(2);
    new DataView(head.buffer).setUint16(0, bytes.length);
    return this.raw(head).raw(bytes);
  }

  /** Same layout as utf(); used for bridge messages. */
  str(value: string): this {
    return this.utf(value);
  }

  raw(bytes: Uint8Array): this {
    this.#parts.push(bytes);
    this.#length += bytes.length;
    return this;
  }

  bytes(): Uint8Array {
    const out = new Uint8Array(this.#length);
    let offset = 0;
    for (const part of this.#parts) {
      out.set(part, offset);
      offset += part.length;
    }
    return out;
  }
}

class Reader {
  #view: DataView;
  #pos = 0;

  constructor(private readonly data: Uint8Array) {
    this.#view = new DataView(data.buffer, data.byteOffset, data.byteLength);
  }

  u8(): number {
    return this.#view.getUint8(this.#pos++);
  }

  u32(): number {
    const value = this.#view.getUint32(this.#pos);
    this.#pos += 4;
    return value;
  }

  utf(): string {
    const length = this.#view.getUint16(this.#pos);
    this.#pos += 2;
    if (this.#pos + length > this.data.length) throw new RangeError("utf out of range");
    const value = new TextDecoder().decode(this.data.subarray(this.#pos, this.#pos + length));
    this.#pos += length;
    return value;
  }

  str(): string {
    return this.utf();
  }

  rest(): Uint8Array {
    const value = this.data.slice(this.#pos);
    this.#pos = this.data.length;
    return value;
  }
}

function toHex(bytes: Uint8Array): string {
  return [...bytes].map((byte) => byte.toString(16).padStart(2, "0")).join("");
}

function fromHex(hex: string): Uint8Array {
  const bytes = new Uint8Array(hex.length / 2);
  for (let i = 0; i < bytes.length; i++) bytes[i] = parseInt(hex.slice(i * 2, i * 2 + 2), 16);
  return bytes;
}
