import {
  defineGame,
  framed,
  type GameDefinition,
  type GameServer,
  type GameServerContext,
  type MessageSocket,
  nullTerminated,
  type Socket,
  text,
} from "../../flashnet/index.ts";

/**
 * Blast Rage Online (XGen Studios) server emulation.
 *
 * The MMOcha control protocol is plain XMLSocket text. Gameplay payloads use
 * a base64-alphabet Caesar shift: the first character is the shift and the
 * rest is the encoded packet. The server does not need to understand most
 * gameplay packets; it wraps the original encoded packet as M<uid><packet>
 * and relays it to everyone in the room, including its sender.
 */

const ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890-=";
const DOUBLE_ALPHABET = ALPHABET + ALPHABET;
const LOBBY = "_";
const WARMUP_MS = 10_000;
const ROUND_MS = 300_000;
const SUMMARY_MS = 30_000;
const CLIENT_SUMMARY_MS = 40_000;

export interface BlastRageOptions {
  /** MMOcha endpoint used before the player chooses a regional server. */
  authEndpoint?: string;
  /** MMOcha endpoint selected by data/settings.txt. */
  endpoint?: string;
  /** Secondary MMOcha endpoint selected by data/settings.txt. */
  secondaryEndpoint?: string;
  /** Page-to-host account persistence channel. */
  syncEndpoint?: string;
  moderators?: string[];
  debug?: boolean;
}

export interface BlastTank {
  id: number;
  shipId: number;
  color1: string;
  color2: string;
  gear: number[];
}

export interface BlastProfile {
  name: string;
  password: string;
  id: number;
  bits: number;
  totalBits: number;
  xcash: number;
  items: string[];
  tanks: BlastTank[];
  loadout: number[];
  moderator?: boolean;
  ownerPeer?: string;
}

interface Player {
  uid: string;
  profileName: string | null;
  guestName: string | null;
  room: string | null;
}

interface Client {
  playerId: string;
  conn: MessageSocket<string> | null;
  player: Player;
}

interface Room {
  name: string;
  private: boolean;
  mode: number;
  maps: number[];
  cycleMode: number;
  mapIndex: number;
  minRank: number;
  maxRank: number;
  phaseStartedAt: number;
  phase: 0 | 1 | 2;
  objectiveScored: boolean;
}

interface SavedState {
  accounts: BlastProfile[];
  clients: Array<{ playerId: string; player: Player }>;
  rooms: Room[];
  nextAccountId: number;
  nextUid: number;
}

type SyncRequest =
  | { t: "import"; accounts: BlastProfile[] }
  | { t: "create"; id: number; name: string; password: string };

const encodeInt = (value: number, length: number): string => {
  let result = "";
  for (let i = length - 1; i >= 0; i--) result += ALPHABET[(value >> (i * 6)) & 0x3f];
  return result;
};

const decodeInt = (value: string): number => {
  let result = 0;
  for (const char of value) result = (result << 6) + Math.max(0, ALPHABET.indexOf(char));
  return result;
};

export const decodePacket = (packet: string): string => {
  if (packet.startsWith("A")) return packet.slice(1);
  const shift = decodeInt(packet.charAt(0));
  let result = "";
  for (const char of packet.slice(1)) {
    result += DOUBLE_ALPHABET.charAt(DOUBLE_ALPHABET.lastIndexOf(char) - shift);
  }
  return result;
};

const defaultTanks = (): BlastTank[] => [
  { id: 1, shipId: 1, color1: "ffd71e", color2: "262626", gear: [1, 9, 8] },
  { id: 2, shipId: 2, color1: "46b013", color2: "518f08", gear: [3, 9, 7] },
  { id: 3, shipId: 3, color1: "1547ff", color2: "9caff5", gear: [2, 9, 7] },
];

export const createBlastProfile = (name: string, password: string, id: number): BlastProfile => ({
  name,
  password,
  id,
  bits: 10_000,
  totalBits: 0,
  xcash: 0,
  items: ["1,1", "2,1", "3,1", "7,1", "8,1", "9,1"],
  tanks: defaultTanks(),
  loadout: [1, 2, 3],
});

export const tankRow = (tank: BlastTank): string =>
  [tank.id, tank.shipId, tank.color1, tank.color2, ...tank.gear].join(",");

export class BlastRageServer implements GameServer {
  #ctx: GameServerContext;
  #debug: boolean;
  #moderators: Set<string>;
  #syncPort: number;
  #clients = new Map<string, Client>();
  #sync = new Map<string, MessageSocket<string>>();
  #accounts = new Map<string, BlastProfile>();
  #rooms = new Map<string, Room>();
  #nextAccountId = 1;
  #nextUid = 100;
  #timer: ReturnType<typeof setInterval>;
  #exportTimer: ReturnType<typeof setTimeout> | null = null;
  #resumeTimers = new Map<string, ReturnType<typeof setTimeout>>();

  constructor(ctx: GameServerContext, options: BlastRageOptions = {}) {
    this.#ctx = ctx;
    this.#debug = options.debug ?? false;
    this.#moderators = new Set((options.moderators ?? []).map((name) => name.toLowerCase()));
    this.#syncPort = Number((options.syncEndpoint ?? "dev.mmocha.com:1248").split(":")[1]);
    this.#timer = setInterval(() => this.#tick(), 250);
  }

  onConnection(socket: Socket, playerId: string): void {
    if (socket.port === this.#syncPort) return this.#bindSync(socket, playerId);
    const old = this.#clients.get(playerId);
    if (old) this.#remove(old);
    const client: Client = {
      playerId,
      conn: null,
      player: { uid: this.#allocateUid(), profileName: null, guestName: null, room: null },
    };
    this.#clients.set(playerId, client);
    this.#bind(client, socket);
  }

  onResume(socket: Socket, playerId: string): void {
    if (socket.port === this.#syncPort) return this.#bindSync(socket, playerId);
    let client = this.#clients.get(playerId);
    if (!client) {
      client = {
        playerId,
        conn: null,
        player: { uid: this.#allocateUid(), profileName: null, guestName: null, room: null },
      };
      this.#clients.set(playerId, client);
    }
    const timer = this.#resumeTimers.get(playerId);
    if (timer) clearTimeout(timer);
    this.#resumeTimers.delete(playerId);
    this.#bind(client, socket);
  }

  onPlayerLeave(playerId: string): void {
    const client = this.#clients.get(playerId);
    if (client) this.#remove(client);
    this.#sync.delete(playerId);
  }

  saveState(): SavedState {
    return {
      accounts: [...this.#accounts.values()].map((profile) => ({ ...profile })),
      clients: [...this.#clients.values()].map(({ playerId, player }) => ({ playerId, player })),
      rooms: [...this.#rooms.values()],
      nextAccountId: this.#nextAccountId,
      nextUid: this.#nextUid,
    };
  }

  loadState(value: unknown): void {
    const state = value as SavedState;
    this.#accounts.clear();
    for (const profile of state?.accounts ?? []) this.#accounts.set(profile.name.toLowerCase(), profile);
    this.#clients.clear();
    for (const saved of state?.clients ?? []) {
      this.#clients.set(saved.playerId, { ...saved, conn: null });
      this.#resumeTimers.set(saved.playerId, setTimeout(() => {
        const stale = this.#clients.get(saved.playerId);
        if (stale && !stale.conn) this.#remove(stale);
        this.#resumeTimers.delete(saved.playerId);
      }, 1500));
    }
    this.#rooms = new Map((state?.rooms ?? []).map((room) => [room.name, room]));
    this.#nextAccountId = state?.nextAccountId ?? 1;
    this.#nextUid = state?.nextUid ?? 100;
  }

  dispose(): void {
    clearInterval(this.#timer);
    if (this.#exportTimer) clearTimeout(this.#exportTimer);
    for (const timer of this.#resumeTimers.values()) clearTimeout(timer);
    this.#resumeTimers.clear();
  }

  #bind(client: Client, socket: Socket): void {
    const conn = framed(socket, nullTerminated(), text());
    client.conn = conn;
    conn.on("message", (packet) => {
      if (packet === "<policy-file-request/>") {
        conn.send('<cross-domain-policy><allow-access-from domain="*" to-ports="*" /></cross-domain-policy>');
        return;
      }
      this.#log("<-", client.player.uid, packet);
      this.#handle(client, packet);
    });
    conn.on("close", () => {
      if (client.conn === conn) client.conn = null;
    });
  }

  #bindSync(socket: Socket, playerId: string): void {
    const conn = framed(socket, nullTerminated(), text());
    this.#sync.set(playerId, conn);
    conn.on("message", (raw) => {
      try {
        this.#handleSync(playerId, conn, JSON.parse(raw) as SyncRequest);
      } catch (error) {
        this.#log("bad sync packet", error);
      }
    });
    conn.on("close", () => {
      if (this.#sync.get(playerId) === conn) this.#sync.delete(playerId);
    });
  }

  #handleSync(playerId: string, conn: MessageSocket<string>, message: SyncRequest): void {
    if (message.t === "import") {
      let count = 0;
      for (const incoming of message.accounts ?? []) {
        const profile = this.#sanitizeProfile(incoming);
        if (!profile) continue;
        const key = profile.name.toLowerCase();
        const current = this.#accounts.get(key);
        if (current && current.password !== profile.password) continue;
        profile.ownerPeer = playerId;
        this.#accounts.set(key, profile);
        this.#nextAccountId = Math.max(this.#nextAccountId, profile.id + 1);
        count++;
      }
      conn.send(JSON.stringify({ t: "imported", count }));
      this.#ctx.publishState();
      return;
    }
    const name = message.name.trim();
    const key = name.toLowerCase();
    if (!/^[\w -]{3,20}$/.test(name) || message.password.length === 0) {
      conn.send(JSON.stringify({ t: "created", id: message.id, ok: false, reason: "invalid" }));
      return;
    }
    if (this.#accounts.has(key)) {
      conn.send(JSON.stringify({ t: "created", id: message.id, ok: false, reason: "taken" }));
      return;
    }
    const profile = createBlastProfile(name, message.password, this.#nextAccountId++);
    profile.ownerPeer = playerId;
    profile.moderator = this.#moderators.has(key);
    this.#accounts.set(key, profile);
    conn.send(JSON.stringify({ t: "created", id: message.id, ok: true, profile }));
    this.#changed();
  }

  #sanitizeProfile(value: BlastProfile): BlastProfile | null {
    if (!value || typeof value.name !== "string" || typeof value.password !== "string") return null;
    const id = Number.isSafeInteger(value.id) && value.id > 0 ? value.id : this.#nextAccountId++;
    const fallback = createBlastProfile(value.name.slice(0, 20), value.password, id);
    return {
      ...fallback,
      bits: Number.isFinite(value.bits) ? Math.max(0, Math.floor(value.bits)) : fallback.bits,
      totalBits: Number.isFinite(value.totalBits) ? Math.max(0, Math.floor(value.totalBits)) : 0,
      xcash: Number.isFinite(value.xcash) ? Math.max(0, Math.floor(value.xcash)) : 0,
      items: Array.isArray(value.items) ? value.items.filter((row) => typeof row === "string") : fallback.items,
      tanks: Array.isArray(value.tanks) && value.tanks.length > 0 ? value.tanks : fallback.tanks,
      loadout: Array.isArray(value.loadout) ? value.loadout.map(Number).filter(Number.isFinite) : fallback.loadout,
      moderator: this.#moderators.has(value.name.toLowerCase()) || !!value.moderator,
    };
  }

  #handle(client: Client, packet: string): void {
    if (!packet || packet === "0" || packet === "0bquitsniffing") return;
    if (packet.startsWith("09")) return this.#login(client, packet.slice(2));
    if (packet === "01") return this.#listRooms(client);
    if (packet.startsWith("02")) return this.#createRoom(client, packet);
    if (packet.startsWith("03")) return this.#join(client, packet.slice(2));
    if (packet.startsWith("04")) return this.#roomDetails(client, packet.slice(2));
    if (packet.startsWith("05")) return;
    if (packet.startsWith("06")) return this.#roomVariables(client, packet.slice(2));
    if (packet.startsWith("0k")) {
      this.#saveTank(client, packet.slice(2));
      return this.#send(client, "0k1");
    }
    if (packet.startsWith("00")) return this.#privateMessage(client, packet);
    this.#relay(client, packet);
  }

  #login(client: Client, credentials: string): void {
    const separator = credentials.indexOf(";");
    const name = credentials.slice(0, separator).trim();
    const password = credentials.slice(separator + 1);
    const key = name.toLowerCase();
    let profile = this.#accounts.get(key);
    if (profile && profile.password !== password) return this.#send(client, "09");
    if ([...this.#clients.values()].some((other) => other !== client && other.player.profileName === key)) {
      return this.#send(client, "095");
    }
    if (!profile) {
      profile = createBlastProfile(name, password, this.#nextAccountId++);
      profile.moderator = this.#moderators.has(key);
      this.#accounts.set(key, profile);
    }
    client.player.profileName = key;
    client.player.guestName = null;
    const tanks = profile.tanks.map(tankRow).join("\r");
    this.#send(
      client,
      `A${client.player.uid}${profile.name}|${profile.bits}|${profile.totalBits}|${profile.xcash}|${profile.id}|${tanks}`,
    );
    this.#changed();
  }

  #listRooms(client: Client): void {
    const rows = [...this.#rooms.values()]
      .filter((room) => !room.private && this.#members(room.name).length < 12)
      .map((room) => `${String(this.#members(room.name).length).padStart(2, "0")}${room.mode}${room.name}`);
    this.#send(client, `01${rows.join(";")}`);
  }

  #createRoom(client: Client, packet: string): void {
    const privateRoom = packet.charAt(2) === "1";
    const mode = Number(packet.charAt(3)) || 0;
    const open = packet.indexOf("[", 4);
    const close = packet.indexOf("]", open + 1);
    if (open < 5 || close < open) return this.#send(client, "0941");
    const name = packet.slice(4, open).slice(0, 32);
    if (!name || this.#rooms.has(name)) return this.#send(client, "0941");
    const maps = packet.slice(open + 1, close).split(",").map(Number).filter(Number.isFinite);
    const tail = packet.slice(close + 1);
    const room: Room = {
      name,
      private: privateRoom,
      mode,
      maps: maps.length > 0 ? maps : [0],
      cycleMode: Number(tail.charAt(0)) || 0,
      mapIndex: decodeInt(tail.charAt(1) || "A"),
      minRank: decodeInt(tail.charAt(2) || "A"),
      maxRank: decodeInt(tail.charAt(3) || "8"),
      phaseStartedAt: Date.now(),
      phase: 0,
      objectiveScored: false,
    };
    this.#rooms.set(name, room);
    this.#join(client, name);
  }

  #join(client: Client, roomName: string): void {
    if (client.player.room === roomName) return;
    const room = roomName === LOBBY ? null : this.#rooms.get(roomName);
    if (roomName !== LOBBY && !room) return this.#send(client, "0940");
    if (room && this.#members(roomName).length >= 12) return this.#send(client, "0941");
    this.#leaveRoom(client);
    if (!client.player.profileName && !client.player.guestName) {
      client.player.guestName = `!${Math.floor(Math.random() * 10_000)}`;
    }
    client.player.room = roomName;
    const existing = this.#members(roomName).filter((other) => other !== client);
    this.#send(client, `C${client.player.uid}${room?.mode ?? ""}`);
    for (const other of existing) {
      this.#send(client, `C${other.player.uid}`);
      this.#send(client, this.#handshake(other, roomName));
    }
    for (const member of existing) this.#send(member, `C${client.player.uid}`);
    for (const member of [client, ...existing]) this.#send(member, this.#handshake(client, roomName));
    if (room) this.#sendRoundState(client, room);
    this.#changed();
  }

  #roomDetails(client: Client, name: string): void {
    const room = this.#rooms.get(name);
    if (!room) return this.#send(client, "04");
    const elapsed = this.#roundElapsed(room);
    this.#send(client, `04${encodeInt(room.mapIndex, 1)}${room.cycleMode}${this.#members(name).length}${Math.floor(elapsed / 1000)}`);
  }

  #roomVariables(client: Client, request: string): void {
    const [name, ...keys] = request.split(";");
    const room = this.#rooms.get(name ?? "");
    if (!room) return;
    for (const key of keys) {
      if (key === "mp") this.#send(client, `06mp=${room.maps.join(",")}`);
      if (key === "rc") this.#send(client, `06rc=${this.#name(this.#members(room.name)[0])}`);
    }
  }

  #saveTank(client: Client, body: string): void {
    const profile = this.#profile(client);
    if (!profile) return;
    const values = new URLSearchParams(body);
    const tank = profile.tanks.find((candidate) => candidate.id === Number(values.get("tank_id")));
    if (!tank) return;
    const weapons = (values.get("weapons") ?? "").split(",").map(Number).filter(Number.isFinite);
    const equipment = (values.get("equipment") ?? "").split(",").map(Number).filter(Number.isFinite);
    tank.gear = [...weapons, ...equipment];
    this.#changed();
  }

  #privateMessage(client: Client, packet: string): void {
    const targetUid = packet.slice(2, 5);
    const target = [...this.#clients.values()].find((candidate) => candidate.player.uid === targetUid);
    if (target) this.#send(target, `M${client.player.uid}A${packet.slice(5)}`);
  }

  #relay(client: Client, packet: string): void {
    if (!client.player.room) return;
    const decoded = decodePacket(packet);
    const opcode = decodeInt(decoded.charAt(0));
    const room = this.#rooms.get(client.player.room);
    // Point-scored reports are simulated by every client. Only relay the first
    // result for an objective cycle to avoid multiplying one score event.
    if (room?.mode === 0 && opcode === 12) {
      if (room.objectiveScored) return;
      room.objectiveScored = true;
    }
    // Objective collision reports are local simulation details, not state.
    if (room?.mode === 0 && opcode === 10) return;
    for (const member of this.#members(client.player.room)) {
      this.#send(member, `M${client.player.uid}${packet}`);
    }
  }

  #sendRoundState(client: Client, room: Room): void {
    const elapsed = Math.min(0xffffff, this.#roundElapsed(room));
    const phasePacket = [15, 13, 14][room.phase]!;
    this.#serverPacket(client, encodeInt(22, 1) + encodeInt(room.mapIndex, 1));
    this.#serverPacket(client, encodeInt(6, 1) + encodeInt(elapsed, 4));
    this.#serverPacket(client, encodeInt(phasePacket, 1));
  }

  #serverPacket(client: Client, payload: string): void {
    this.#send(client, `M${client.player.uid}A${payload}`);
  }

  #tick(): void {
    let dirty = false;
    for (const room of this.#rooms.values()) {
      const duration = room.phase === 0 ? WARMUP_MS : room.phase === 1 ? ROUND_MS : SUMMARY_MS;
      if (Date.now() - room.phaseStartedAt < duration) continue;
      room.phase = ((room.phase + 1) % 3) as 0 | 1 | 2;
      room.phaseStartedAt = Date.now();
      room.objectiveScored = false;
      if (room.phase === 0 && room.maps.length > 0) {
        room.mapIndex = room.maps[(room.maps.indexOf(room.mapIndex) + 1) % room.maps.length] ?? room.maps[0]!;
      }
      for (const member of this.#members(room.name)) this.#sendRoundState(member, room);
      dirty = true;
    }
    for (const [name] of this.#rooms) {
      if (this.#members(name).length === 0) {
        this.#rooms.delete(name);
        dirty = true;
      }
    }
    if (dirty) this.#changed();
  }

  #roundElapsed(room: Room): number {
    // The SWF hardcodes a 40-second summary, so offset its clock to show the configured 30 seconds.
    const before = room.phase === 0
      ? 0
      : room.phase === 1
        ? WARMUP_MS
        : WARMUP_MS + ROUND_MS + CLIENT_SUMMARY_MS - SUMMARY_MS;
    return before + Date.now() - room.phaseStartedAt;
  }

  #leaveRoom(client: Client): void {
    const old = client.player.room;
    if (!old) return;
    for (const member of this.#members(old)) {
      if (member !== client) this.#send(member, `D${client.player.uid}`);
    }
    client.player.room = null;
  }

  #remove(client: Client): void {
    this.#leaveRoom(client);
    client.conn?.close();
    this.#clients.delete(client.playerId);
    this.#changed();
  }

  #members(room: string): Client[] {
    return [...this.#clients.values()].filter((client) => client.player.room === room);
  }

  #profile(client: Client): BlastProfile | null {
    return client.player.profileName ? this.#accounts.get(client.player.profileName) ?? null : null;
  }

  #name(client: Client | undefined): string {
    if (!client) return "";
    return this.#profile(client)?.name ?? client.player.guestName ?? "Guest";
  }

  #handshake(client: Client, room: string): string {
    if (room !== LOBBY) return `U${client.player.uid}#${this.#name(client)}`;
    const profile = this.#profile(client);
    const rank = Math.min(63, Math.floor(Math.sqrt((profile?.totalBits ?? 0) / 1000)));
    return `U${client.player.uid}#${this.#name(client)}${encodeInt(rank, 1)}${profile?.moderator ? 1 : 0}`;
  }

  #allocateUid(): string {
    const uid = String(this.#nextUid++).padStart(3, "0").slice(-3);
    return uid;
  }

  #send(client: Client, packet: string): void {
    this.#log("->", client.player.uid, packet);
    client.conn?.send(packet);
  }

  #changed(): void {
    this.#ctx.publishState();
    if (this.#exportTimer) clearTimeout(this.#exportTimer);
    this.#exportTimer = setTimeout(() => {
      for (const [peerId, conn] of this.#sync) {
        const accounts = [...this.#accounts.values()]
          .filter((profile) => profile.ownerPeer === peerId)
          .map(({ ownerPeer: _ownerPeer, ...profile }) => profile);
        conn.send(JSON.stringify({ t: "export", accounts }));
      }
    }, 100);
  }

  #log(...values: unknown[]): void {
    if (this.#debug) console.log("[blast-rage]", ...values);
  }
}

export function blastRage(options: BlastRageOptions = {}): GameDefinition {
  return defineGame({
    id: "blast-rage-online",
    endpoints: [...new Set([
      options.authEndpoint ?? "dev.mmocha.com:1247",
      options.endpoint ?? "game01.xgenstudios.com:1247",
      options.secondaryEndpoint ?? "game08.xgenstudios.com:1247",
      options.syncEndpoint ?? "dev.mmocha.com:1248",
    ])],
    statefulMigration: true,
    http: [
      {
        match: (url) => url.hostname === "api.xgenstudios.com",
        handler: (_request, url) => {
          const method = url.searchParams.get("method") ?? "";
          if (method.endsWith("loadout.save")) return { body: "1" };
          if (method.includes("blastrage")) return { body: "" };
          return { body: '<rsp stat="ok"><user id="1" /></rsp>', headers: { "Content-Type": "text/xml" } };
        },
      },
    ],
    createServer: (ctx) => new BlastRageServer(ctx, options),
  });
}
