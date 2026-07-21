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
 * Stick Arena: Dimensions (XGen Studios) - server emulation.
 *
 * The SWF's network engine hides in a runtime-unpacked DoAction blob that no
 * static decompiler reads, so this port is matched 1:1 against the community
 * "ballistickemu" private server (a Java implementation proven against this
 * exact client), cross-checked with the SWF's clean frame scripts.
 *
 * Wire format: Flash XMLSocket, plain ASCII strings terminated by '\0'.
 * Player UIDs are exactly 3 characters. A client is either "in the lobby" or
 * "in a game"; several packets only exist on one side of that line, and the
 * U (player record) packet has two *different* layouts:
 *
 *   lobby U:  U <uid3> <name #-pad 20> <colour 9> k;d;w;l;rounds;pass;level
 *   game  U:  U <uid3> <gameWins 1> <gameKills 02> <gameDeaths 02>
 *               <name #-pad 20> <spinnerId 02> <sc1 9> <sc2 9>
 *               <petId 02> <pc1 9> <pc2 9> <kills>
 *
 * Client -> server                Server -> client
 * ---------------------------------------------------------------------------
 * 0                keepalive      (nothing - the reference server ignores it)
 * 00<uid>P<msg>    private msg    M<fromUid>P<msg> to the target
 * 01               room list      01_0;<name><passFlag>;...   (lobby "_" first;
 *                                 private/full/pass-locked rooms are hidden)
 * 02<map><cyc><prv><lab><name>[;<vip;vip..>]   ->  C<ownUid>  (nothing else;
 *                  create room        the creator's client renders itself)
 * 03_              enter lobby    C<uid> bcast + C/U pairs of others +
 *                                 own lobby-U bcast to the rest
 * 03<name>         join room      C<uid> + game-U bcast to room (incl. self),
 *                                 then C/U pairs of the other players
 * 04<name>         room detail    04<map><cyc><count><roundTime+31>
 * 05mp=<list>      set map cycle  -
 * 06<name>;mp;rc  room variables 06mp=<list> ("06mp=No WORKY" if unset)
 *                  (also accepted  06rc=<creatorName>
 *                   one at a time)
 * 08<key>          capacity       08 ok / 090 server full (key not checked)
 * 09<user>;<pass>  login          A<uid><name#20><sc1><sc2>k;d;w;l;rounds;
 *                                   pass;passDays;ticket;cred;level
 *                                 09 bad login / 093 logged in elsewhere /
 *                                 094 kicked / 0942 room full or locked
 * 0a               cred ticket    0a<prizeIndex>
 * 0b<itm3><rgb1:9><rgb2:9> buy    -  (client re-requests 0c itself)
 * 0c               inventory      0c<itm3><sel1><c1:9><c2:9><dbId>;...
 * 0d<dbId>         select item    -
 * 0h<name>         /find          0h<human readable sentence>
 * 9<text>          chat           M<uid>9<text> to lobby or room (incl. self)
 * 1|2|4|5|6|8...   gameplay       M<uid><packet> to room (incl. self)
 * 7<killerUid>...  death report   killer/victim stats, then relayed like above
 * K<uid>           vote kick      M<uid>K<uid> bcast; majority (or a mod)
 *                                 sends 094 to the victim and drops them
 * 07/0e/0f/0g/0i/0j/0l/0m         moderation/reports - ignored here
 *
 * Divergences from the reference (deliberate, for a serverless revival):
 *  - accounts live in the session snapshot; the first login with a new name
 *    creates the account (a later wrong password is still rejected),
 *  - a second endpoint (port+1) carries an out-of-band ACCOUNT SYNC channel:
 *    '\0'-framed JSON used by the hosting page (not the SWF) to import each
 *    browser's locally saved accounts into the session, receive them back
 *    when they change (so money/stats survive in localStorage), and to
 *    service the SWF's stick_arena.php "create account" form,
 *  - if a name is already in use by a CONNECTED player, both account
 *    creation and login are refused (login answers 093 - "logged in from
 *    another location" - instead of evicting the other player),
 *  - the shop is free by default (options.freeShop),
 *  - round-end win/loss accounting is approximated (winner of the round by
 *    game kills gets a win, everyone else a loss).
 */

const LOBBY = "_";
const ROUND_START = 300; // seconds (sRoundTime); counts down into the intermission
// The end screen lasts sSummaryTime(11) + sAdTime(20) = 31s - the same 31 the
// 04 packet adds to the round clock. Reset once the intermission is over.
const ROUND_FLOOR = -31;
const TICKET_PRIZES = [20, 25, 30, 35, 40, 55, 60, 75, 100, 250, 500, 999, 1500, 5000];
const TICKET_COOLDOWN_MS = 8 * 60 * 60 * 1000;
const GUEST_FIRST = ["Swift", "Silent", "Crazy", "Lucky", "Rapid", "Shadow", "Turbo", "Mega", "Ultra", "Sneaky"];
const GUEST_LAST = ["Stick", "Striker", "Runner", "Slasher", "Gunner", "Ninja", "Rocket", "Falcon", "Wolf", "Viper"];

export interface StickarenaOptions {
  /** host:port the SWF connects to; must match settings598b.ini. */
  endpoint?: string;
  /** host:port of the account-sync side channel (page <-> host, not the SWF). */
  syncEndpoint?: string;
  /** Kept for app wiring compatibility; not used in any packet. */
  serverName?: string;
  /** Give every account a Lab Pass (all maps, 6-player rooms). Default true. */
  labPassForEveryone?: boolean;
  /** Creds a fresh account starts with. Default 5000. */
  startingCred?: number;
  /** Shop items cost nothing. Default true (we have no price table). */
  freeShop?: boolean;
  /** Account names that get moderator powers (userLevel 1). */
  moderators?: string[];
  debug?: boolean;
}

interface ItemRec {
  itemId: number; // 1xx spinner, 2xx pet
  dbId: number;
  type: 1 | 2;
  selected: boolean;
  c1: string; // 9 digits: rrrgggbbb
  c2: string;
}

interface ProfileRec {
  name: string;
  password: string | null; // null = guest profile (not in accounts)
  dbId: number;
  kills: number;
  deaths: number;
  wins: number;
  losses: number;
  rounds: number;
  labPass: 0 | 1;
  passExpiry: number;
  ticket: 0 | 1;
  lastTicket: number;
  cred: number;
  userLevel: number;
  inventory: ItemRec[];
  nextItemId: number;
  /** Transient: bridge peer whose browser vault owns this account. */
  ownerPeer?: string;
}

/** Account-sync side channel messages ('\0'-framed JSON, page <-> host). */
type SyncRequest =
  | { t: "import"; accounts: ProfileRec[] }
  | { t: "create"; id: number; name: string; password: string; colour?: string };
type SyncReply =
  | { t: "imported"; count: number }
  | { t: "created"; id: number; ok: boolean; reason?: "online" | "taken" | "invalid" }
  | { t: "export"; accounts: ProfileRec[] };

interface PlayerRec {
  id: string; // 3-char wire UID
  quickplay: boolean;
  lobby: boolean;
  room: string | null;
  requiresUpdate: boolean;
  gameWins: number;
  gameKills: number;
  gameDeaths: number;
  /** accounts key for logged-in players; guests carry their profile inline. */
  accountName: string | null;
  guestProfile: ProfileRec | null;
}

interface RoomRec {
  name: string;
  mapId: string; // single char
  cycleMode: number;
  isPrivate: boolean;
  needsPass: boolean;
  vips: string[];
  creatorName: string;
  mapCycleList: string | null;
  roundTime: number;
  blacklist: number[]; // profile dbIds
  lastKickTarget: string | null; // wire UID
  kickVoters: string[]; // wire UIDs
  totalJoined: string[]; // profile names
}

interface Client {
  playerId: string; // bridge peer id
  conn: MessageSocket<string> | null;
  player: PlayerRec | null;
}

interface SavedState {
  accounts: Array<ProfileRec>;
  players: Array<{ playerId: string; player: PlayerRec }>;
  rooms: RoomRec[];
  nextDbId: number;
  usedUids: string[];
}

const pad = (v: string | number, len: number, ch: string): string => String(v).padStart(len, ch);
const padName = (name: string): string => name.padEnd(20, "#");

export class StickArenaServer implements GameServer {
  #ctx: GameServerContext;
  #opts: Required<Pick<StickarenaOptions, "labPassForEveryone" | "startingCred" | "freeShop" | "moderators" | "debug">>;
  #syncPort: number;
  #clients = new Map<string, Client>(); // game (SWF) sockets, by bridge playerId
  #syncChannels = new Map<string, MessageSocket<string>>(); // by bridge playerId
  #accounts = new Map<string, ProfileRec>(); // by lowercased name
  #rooms = new Map<string, RoomRec>(); // by room name
  #nextDbId = 1;
  #usedUids = new Set<string>();
  #timer: ReturnType<typeof setInterval> | null = null;
  #exportTimer: ReturnType<typeof setTimeout> | null = null;

  constructor(ctx: GameServerContext, options: StickarenaOptions = {}) {
    this.#ctx = ctx;
    this.#syncPort = Number((options.syncEndpoint ?? "ballistick.local:1139").split(":")[1]);
    this.#opts = {
      labPassForEveryone: options.labPassForEveryone ?? true,
      startingCred: options.startingCred ?? 5000,
      freeShop: options.freeShop ?? true,
      moderators: (options.moderators ?? []).map((m) => m.toLowerCase()),
      debug: options.debug ?? false,
    };
    this.#timer = setInterval(() => this.#tick(), 1000);
  }

  // ---------------------------------------------------------------- lifecycle

  onConnection(socket: Socket, playerId: string): void {
    if (socket.port === this.#syncPort) return this.#bindSync(socket, playerId);
    const existing = this.#clients.get(playerId);
    if (existing) {
      // The SWF opened a fresh socket (reconnect): the old one is dead.
      existing.conn?.close();
      this.#removePlayer(existing);
    }
    const client: Client = { playerId, conn: null, player: null };
    this.#clients.set(playerId, client);
    this.#bind(client, socket);
  }

  /** Socket re-attached after host migration - resume silently. */
  onResume(socket: Socket, playerId: string): void {
    if (socket.port === this.#syncPort) return this.#bindSync(socket, playerId);
    let client = this.#clients.get(playerId);
    if (!client) {
      // Not in the snapshot: the peer never authed / joined anything (e.g.
      // still on the title screen). The server sends no greeting, so a
      // resumed socket is indistinguishable from a fresh connection.
      client = { playerId, conn: null, player: null };
      this.#clients.set(playerId, client);
    }
    client.conn?.close();
    this.#bind(client, socket);
  }

  onPlayerLeave(playerId: string): void {
    this.#syncChannels.get(playerId)?.close();
    this.#syncChannels.delete(playerId);
    const client = this.#clients.get(playerId);
    if (!client) return;
    client.conn?.close();
    this.#removePlayer(client);
    this.#clients.delete(playerId);
  }

  dispose(): void {
    if (this.#timer) clearInterval(this.#timer);
    this.#timer = null;
    if (this.#exportTimer) clearTimeout(this.#exportTimer);
    this.#exportTimer = null;
    for (const client of this.#clients.values()) client.conn?.close();
    this.#clients.clear();
    for (const channel of this.#syncChannels.values()) channel.close();
    this.#syncChannels.clear();
  }

  // ---------------------------------------------------------------- snapshots

  saveState(): SavedState {
    return {
      accounts: [...this.#accounts.values()],
      players: [...this.#clients.values()]
        .filter((c) => c.player)
        .map((c) => ({ playerId: c.playerId, player: c.player! })),
      rooms: [...this.#rooms.values()],
      nextDbId: this.#nextDbId,
      usedUids: [...this.#usedUids],
    };
  }

  loadState(state: unknown): void {
    const parsed = state as SavedState;
    this.#accounts.clear();
    for (const acc of parsed.accounts) this.#accounts.set(acc.name.toLowerCase(), acc);
    this.#rooms.clear();
    for (const room of parsed.rooms) this.#rooms.set(room.name, room);
    this.#nextDbId = parsed.nextDbId;
    this.#usedUids = new Set(parsed.usedUids);
    this.#clients.clear();
    for (const { playerId, player } of parsed.players) {
      this.#clients.set(playerId, { playerId, conn: null, player });
    }
    // Surviving peers re-attach via onResume within the settle window. Whoever
    // still has no socket after it (usually the crashed host) has left:
    // announce their departure to the players that stayed.
    setTimeout(() => {
      for (const client of [...this.#clients.values()]) {
        if (client.conn === null) {
          this.#removePlayer(client);
          this.#clients.delete(client.playerId);
        }
      }
    }, 1500);
  }

  // ------------------------------------------------------------------ socket

  #bind(client: Client, socket: Socket): void {
    const conn = framed(socket, nullTerminated(), text());
    client.conn = conn;
    conn.on("message", (raw) => {
      const msg = raw.trim();
      if (msg.startsWith("<policy-file-request")) {
        conn.send('<cross-domain-policy><allow-access-from domain="*" to-ports="*"/></cross-domain-policy>');
        return;
      }
      if (msg.length < 2) return; // includes the bare "0" keepalive: ignored
      this.#log("<-", client.playerId, msg);
      try {
        this.#dispatch(client, msg);
      } catch (err) {
        console.error("[stickarena] error handling packet", JSON.stringify(msg), err);
      }
    });
    conn.on("close", () => {
      if (client.conn !== conn) return; // superseded by a newer socket
      client.conn = null;
      this.#removePlayer(client);
      this.#clients.delete(client.playerId);
    });
  }

  #send(client: Client | null | undefined, packet: string): void {
    if (!client?.conn) return;
    this.#log("->", client.playerId, packet);
    client.conn.send(packet);
  }

  // ------------------------------------------------------- account sync side

  #bindSync(socket: Socket, playerId: string): void {
    this.#syncChannels.get(playerId)?.close();
    const conn = framed(socket, nullTerminated(), text());
    this.#syncChannels.set(playerId, conn);
    conn.on("message", (raw) => {
      let msg: SyncRequest;
      try {
        msg = JSON.parse(raw) as SyncRequest;
      } catch {
        return;
      }
      try {
        this.#handleSync(playerId, conn, msg);
      } catch (err) {
        console.error("[stickarena] sync channel error", err);
      }
    });
    conn.on("close", () => {
      if (this.#syncChannels.get(playerId) === conn) this.#syncChannels.delete(playerId);
    });
  }

  #syncSend(conn: MessageSocket<string>, reply: SyncReply): void {
    conn.send(JSON.stringify(reply));
  }

  #handleSync(playerId: string, conn: MessageSocket<string>, msg: SyncRequest): void {
    if (msg.t === "import") {
      let count = 0;
      for (const raw of msg.accounts ?? []) {
        const imported = this.#sanitizeProfile(raw);
        if (!imported) continue;
        const key = imported.name.toLowerCase();
        const existing = this.#accounts.get(key);
        if (!existing) {
          imported.ownerPeer = playerId;
          imported.dbId = this.#nextDbId++;
          this.#accounts.set(key, imported);
          count++;
        } else if (existing.password === imported.password) {
          // Same credentials from another browser of the same person: the
          // live session state wins, but this peer becomes the vault owner.
          existing.ownerPeer = playerId;
          count++;
        } // different password for a name the session already has: ignored
      }
      this.#syncSend(conn, { t: "imported", count });
      if (count) {
        this.#ctx.publishState();
        this.#scheduleExport();
      }
      return;
    }
    if (msg.t === "create") {
      const reply = (ok: boolean, reason?: "online" | "taken" | "invalid") =>
        this.#syncSend(conn, { t: "created", id: msg.id, ok, ...(reason ? { reason } : {}) });
      const name = String(msg.name ?? "");
      const password = String(msg.password ?? "");
      if (name.length < 3 || name.length > 20 || password.length < 3) return reply(false, "invalid");
      if (this.#byName(name)) return reply(false, "online"); // someone with that name is connected
      const key = name.toLowerCase();
      const existing = this.#accounts.get(key);
      if (existing) {
        if (existing.password === password) {
          existing.ownerPeer = playerId; // idempotent re-create of your own account
          return reply(true);
        }
        return reply(false, "taken");
      }
      const account = this.#newProfile(name, password);
      if (msg.colour && /^\d{9}$/.test(msg.colour)) {
        const spinner = this.#spinner(account);
        spinner.c1 = msg.colour;
        spinner.c2 = msg.colour;
      }
      account.ownerPeer = playerId;
      this.#accounts.set(key, account);
      this.#ctx.publishState();
      this.#scheduleExport();
      return reply(true);
    }
  }

  #sanitizeProfile(raw: unknown): ProfileRec | null {
    const r = raw as Partial<ProfileRec> | null;
    if (!r || typeof r.name !== "string" || typeof r.password !== "string") return null;
    if (r.name.length < 1 || r.name.length > 20) return null;
    const base = this.#newProfile(r.name, r.password);
    const num = (v: unknown, fallback: number) => (typeof v === "number" && Number.isFinite(v) ? v : fallback);
    base.kills = num(r.kills, 0);
    base.deaths = num(r.deaths, 0);
    base.wins = num(r.wins, 0);
    base.losses = num(r.losses, 0);
    base.rounds = num(r.rounds, 0);
    base.cred = num(r.cred, base.cred);
    base.ticket = r.ticket === 0 ? 0 : 1;
    base.lastTicket = num(r.lastTicket, 0);
    if (Array.isArray(r.inventory) && r.inventory.length) {
      const items: ItemRec[] = [];
      for (const it of r.inventory) {
        if (
          typeof it?.itemId === "number" && typeof it?.dbId === "number" &&
          (it.type === 1 || it.type === 2) &&
          typeof it.c1 === "string" && /^\d{9}$/.test(it.c1) &&
          typeof it.c2 === "string" && /^\d{9}$/.test(it.c2)
        ) {
          items.push({ itemId: it.itemId, dbId: it.dbId, type: it.type, selected: !!it.selected, c1: it.c1, c2: it.c2 });
        }
      }
      if (items.some((i) => i.type === 1) && items.some((i) => i.type === 2)) {
        base.inventory = items;
        base.nextItemId = num(r.nextItemId, Math.max(...items.map((i) => i.dbId)) + 1);
      }
    }
    return base;
  }

  /** Push each browser's owned accounts back to it (debounced). */
  #scheduleExport(): void {
    if (this.#exportTimer) return;
    this.#exportTimer = setTimeout(() => {
      this.#exportTimer = null;
      for (const [peer, channel] of this.#syncChannels) {
        const owned = [...this.#accounts.values()]
          .filter((a) => a.ownerPeer === peer)
          .map(({ ownerPeer: _drop, ...rest }) => rest as ProfileRec);
        if (owned.length) this.#syncSend(channel, { t: "export", accounts: owned });
      }
    }, 250);
  }

  #sendToPlayer(player: PlayerRec, packet: string): void {
    this.#send(this.#clientOf(player), packet);
  }

  #clientOf(player: PlayerRec): Client | undefined {
    for (const client of this.#clients.values()) if (client.player === player) return client;
    return undefined;
  }

  #byUid(uid: string): PlayerRec | undefined {
    for (const client of this.#clients.values()) {
      if (client.player?.id === uid) return client.player;
    }
    return undefined;
  }

  #byName(name: string): PlayerRec | undefined {
    const lower = name.toLowerCase();
    for (const client of this.#clients.values()) {
      const p = client.player;
      if (p && this.#profile(p).name.toLowerCase() === lower) return p;
    }
    return undefined;
  }

  #players(): PlayerRec[] {
    const out: PlayerRec[] = [];
    for (const client of this.#clients.values()) if (client.player) out.push(client.player);
    return out;
  }

  #lobbyPlayers(): PlayerRec[] {
    return this.#players().filter((p) => p.lobby);
  }

  #roomPlayers(roomName: string): PlayerRec[] {
    return this.#players().filter((p) => !p.lobby && p.room === roomName);
  }

  #broadcastLobby(packet: string, excludeUid?: string): void {
    for (const p of this.#lobbyPlayers()) {
      if (excludeUid && p.id === excludeUid) continue;
      this.#sendToPlayer(p, packet);
    }
  }

  /** Like the reference BroadcastToRoom: includes the sender. */
  #broadcastRoom(roomName: string, packet: string): void {
    for (const p of this.#roomPlayers(roomName)) this.#sendToPlayer(p, packet);
  }

  // ---------------------------------------------------------------- dispatch

  #dispatch(client: Client, msg: string): void {
    const inLobbyContext = !client.player || client.player.lobby || msg.startsWith("03");
    if (inLobbyContext) this.#dispatchLobby(client, msg);
    else this.#dispatchGame(client, msg);
  }

  #dispatchLobby(client: Client, msg: string): void {
    const op2 = msg.slice(0, 2);
    if (msg[0] === "0") {
      switch (op2) {
        case "08": return this.#send(client, "08"); // capacity ok (key unchecked)
        case "09": return this.#handleLogin(client, msg);
        case "01": return this.#handleRoomList(client);
        case "03": return this.#handleEnter(client, msg);
        case "00": return this.#handlePrivate(client, msg);
        case "02": return this.#handleCreate(client, msg);
        case "0a": return this.#handleTicket(client);
        case "04": return this.#handleDetail(client, msg);
        case "06": return this.#handleRoomVar(client, msg);
        case "0d": return this.#handleSelectItem(client, msg);
        case "0b": return this.#handleBuyItem(client, msg);
        case "0c": return this.#handleInventory(client);
        case "0h": return this.#handleFind(client, msg);
        case "07": case "0e": case "0f": case "0g":
        case "0i": case "0j": case "0l": case "0m":
          return; // moderation / reports - not implemented
        default: return this.#log("?? lobby", client.playerId, msg);
      }
    }
    if (msg[0] === "9") return this.#handleChat(client, msg);
    this.#log("?? lobby", client.playerId, msg);
  }

  #dispatchGame(client: Client, msg: string): void {
    const player = client.player!;
    if (msg[0] === "0") {
      switch (msg.slice(0, 2)) {
        case "01": return this.#handleRoomList(client);
        case "00": return this.#handlePrivate(client, msg);
        case "04": return this.#handleDetail(client, msg);
        case "05": return this.#handleSetMapCycle(client, msg);
        case "06": return this.#handleRoomVar(client, msg);
        case "0h": return this.#handleFind(client, msg);
        case "07": case "0f": case "0g": case "0i":
        case "0j": case "0l":
          return;
        default: return this.#log("?? game", client.playerId, msg);
      }
    }
    if (msg[0] === "9") return this.#handleChat(client, msg);
    if (msg[0] === "7") return this.#handleKill(client, msg);
    if (msg[0] === "K") return this.#handleVoteKick(client, msg);
    if ("124568".includes(msg[0]!)) {
      if (player.room) this.#broadcastRoom(player.room, `M${player.id}${msg}`);
      return;
    }
    this.#log("?? game", client.playerId, msg);
  }

  // ---------------------------------------------------------------- profiles

  #profile(player: PlayerRec): ProfileRec {
    if (player.accountName) return this.#accounts.get(player.accountName)!;
    return player.guestProfile!;
  }

  #randomColour(): string {
    const c = () => pad(Math.floor(Math.random() * 256), 3, "0");
    return c() + c() + c();
  }

  #newProfile(name: string, password: string | null): ProfileRec {
    const colour = this.#randomColour();
    const profile: ProfileRec = {
      name,
      password,
      dbId: this.#nextDbId++,
      kills: 0, deaths: 0, wins: 0, losses: 0, rounds: 0,
      labPass: this.#opts.labPassForEveryone ? 1 : 0,
      passExpiry: this.#opts.labPassForEveryone ? 999 : 0,
      ticket: 1,
      lastTicket: 0,
      cred: this.#opts.startingCred,
      userLevel: this.#opts.moderators.includes(name.toLowerCase()) ? 1 : 0,
      inventory: [],
      nextItemId: 1,
    };
    // Reference default inventory: spinner 100 in the stick colour, pet 200.
    profile.inventory.push(
      { itemId: 100, dbId: profile.nextItemId++, type: 1, selected: true, c1: colour, c2: colour },
      { itemId: 200, dbId: profile.nextItemId++, type: 2, selected: true, c1: "000000000", c2: "000000000" },
    );
    return profile;
  }

  #spinner(profile: ProfileRec): ItemRec {
    return profile.inventory.find((i) => i.type === 1 && i.selected) ?? profile.inventory.find((i) => i.type === 1)!;
  }

  #pet(profile: ProfileRec): ItemRec {
    return profile.inventory.find((i) => i.type === 2 && i.selected) ?? profile.inventory.find((i) => i.type === 2)!;
  }

  #newUid(): string {
    // Reference UIDs: 3 chars, first is '1', rest are random letters/digits.
    const alphabet = "abcdefghijklmnopqrstuvwxyz0123456789";
    for (;;) {
      let uid = "1";
      for (let i = 0; i < 2; i++) uid += alphabet[Math.floor(Math.random() * alphabet.length)];
      if (!this.#usedUids.has(uid)) {
        this.#usedUids.add(uid);
        return uid;
      }
    }
  }

  #newPlayer(accountName: string | null, guestProfile: ProfileRec | null): PlayerRec {
    return {
      id: this.#newUid(),
      quickplay: guestProfile !== null,
      lobby: true, // reference StickClient starts with IsAtLobby = true
      room: null,
      requiresUpdate: true,
      gameWins: 0, gameKills: 0, gameDeaths: 0,
      accountName,
      guestProfile,
    };
  }

  #setUpAsQuickplay(client: Client): PlayerRec {
    let name: string;
    do {
      name =
        GUEST_FIRST[Math.floor(Math.random() * GUEST_FIRST.length)]! +
        GUEST_LAST[Math.floor(Math.random() * GUEST_LAST.length)]! +
        Math.floor(Math.random() * 90 + 10);
    } while (this.#byName(name)); // guests never collide with an online name
    const player = this.#newPlayer(null, this.#newProfile(name, null));
    client.player = player;
    return player;
  }

  // ----------------------------------------------------------------- packets

  #lobbyU(player: PlayerRec): string {
    const p = this.#profile(player);
    const s = this.#spinner(p);
    return (
      `U${player.id}${padName(p.name)}${s.c1}` +
      `${p.kills};${p.deaths};${p.wins};${p.losses};${p.rounds};${p.labPass};${p.userLevel}`
    );
  }

  #gameU(player: PlayerRec): string {
    const p = this.#profile(player);
    const s = this.#spinner(p);
    const pet = this.#pet(p);
    return (
      `U${player.id}${player.gameWins}` +
      `${pad(player.gameKills, 2, "0")}${pad(player.gameDeaths, 2, "0")}` +
      `${padName(p.name)}` +
      `${pad(s.itemId - 100, 2, "0")}${s.c1}${s.c2}` +
      `${pad(pet.itemId - 200, 2, "0")}${pet.c1}${pet.c2}` +
      `${p.kills}`
    );
  }

  // ---------------------------------------------------------------- handlers

  #handleLogin(client: Client, msg: string): void {
    const body = msg.slice(2);
    const sep = body.indexOf(";");
    if (sep === -1) return this.#send(client, "09");
    const name = body.slice(0, sep);
    const password = body.slice(sep + 1);
    if (name.length > 20 || name.length === 0) {
      client.conn?.close();
      return;
    }
    const key = name.toLowerCase();
    // Name already in use by another CONNECTED player? Refuse this login with
    // 093 ("logged in from another location") - the peer that is already
    // playing keeps their session.
    const online = this.#byName(name);
    if (online && this.#clientOf(online) !== client) {
      return this.#send(client, "093");
    }
    let account = this.#accounts.get(key);
    if (!account) {
      // Lenient sign-up: the first login with an unknown name creates the
      // account inside this session.
      account = this.#newProfile(name, password);
      this.#accounts.set(key, account);
    } else if (account.password !== password) {
      return this.#send(client, "09");
    }
    account.ownerPeer = client.playerId; // this browser's vault keeps the account
    if (account.ticket !== 1 && Date.now() - account.lastTicket >= TICKET_COOLDOWN_MS) {
      account.ticket = 1;
    }
    if (client.player) this.#removePlayer(client); // re-login on the same socket
    client.player = this.#newPlayer(key, null);
    const s = this.#spinner(account);
    this.#send(
      client,
      `A${client.player.id}${padName(account.name)}${s.c1}${s.c2}` +
        `${account.kills};${account.deaths};${account.wins};${account.losses};${account.rounds};` +
        `${account.labPass};${account.passExpiry};${account.ticket};${account.cred};${account.userLevel}`,
    );
    this.#ctx.publishState();
    this.#scheduleExport();
  }

  /** "03_" = enter the lobby, "03<name>" = join a game. */
  #handleEnter(client: Client, msg: string): void {
    const target = msg.slice(2);
    if (target === LOBBY) return this.#enterLobby(client);
    this.#joinRoom(client, target);
  }

  #enterLobby(client: Client): void {
    const player = client.player;
    if (!player || player.quickplay) {
      // Reference behaviour: quickplay characters may not enter the lobby.
      client.conn?.close();
      if (player) this.#removePlayer(client);
      this.#clients.delete(client.playerId);
      return;
    }
    if (player.room) this.#leaveRoom(player); // broadcasts D to the room
    if (player.requiresUpdate) {
      this.#broadcastLobby(`C${player.id}`); // player not lobby-flagged yet
      for (const other of this.#lobbyPlayers()) {
        if (other === player) continue;
        this.#send(client, `C${other.id}`);
        this.#send(client, this.#lobbyU(other));
      }
      this.#broadcastLobby(this.#lobbyU(player), player.id);
      player.requiresUpdate = false;
    } else {
      // Back from the shop/profile screen: refresh everyone's view of us.
      this.#broadcastLobby(this.#lobbyU(player));
    }
    player.lobby = true;
    player.room = null;
    this.#ctx.publishState();
  }

  #joinRoom(client: Client, roomName: string): void {
    let player = client.player ?? this.#setUpAsQuickplay(client);
    const room = this.#rooms.get(roomName);
    if (!room) return; // client joins optimistically; a dead room name is a no-op
    const profile = this.#profile(player);
    if (room.blacklist.includes(profile.dbId)) return this.#send(client, "094");
    if (this.#isFull(room, player)) return this.#send(client, "0942");
    if (room.needsPass && !profile.labPass && !room.vips.includes(profile.name)) {
      return this.#send(client, "0942");
    }
    const wasLobby = player.lobby;
    player.lobby = false;
    player.room = room.name;
    player.requiresUpdate = true;
    player.gameWins = 0;
    player.gameKills = 0;
    player.gameDeaths = 0;
    if (wasLobby && !player.quickplay) this.#broadcastLobby(`D${player.id}`);
    if (!room.totalJoined.includes(profile.name)) room.totalJoined.push(profile.name);
    this.#broadcastRoom(room.name, `C${player.id}`);
    this.#broadcastRoom(room.name, this.#gameU(player));
    for (const other of this.#roomPlayers(room.name)) {
      if (other === player) continue;
      this.#send(client, `C${other.id}`);
      this.#send(client, this.#gameU(other));
    }
    this.#ctx.publishState();
  }

  #handleCreate(client: Client, msg: string): void {
    // 02<map><cycle><private><labpass><name>[;<vip;vip;...>]
    if (msg.length < 7) return;
    const sep = msg.indexOf(";");
    const roomData = sep > 0 ? msg.slice(0, sep) : msg;
    const vips = sep > 0 ? msg.slice(sep + 1).split(";").filter(Boolean) : [];
    const mapId = roomData[2]!;
    const cycleMode = Number(roomData[3]) || 0;
    const isPrivate = roomData[4] === "1";
    const needsPass = roomData[5] === "1";
    const roomName = roomData.slice(6);
    if (!roomName) return;
    if (this.#rooms.has(roomName) || roomName === LOBBY) {
      return this.#send(client, "0942");
    }
    let player = client.player ?? this.#setUpAsQuickplay(client);
    const profile = this.#profile(player);
    const room: RoomRec = {
      name: roomName,
      mapId,
      cycleMode,
      isPrivate,
      needsPass,
      vips,
      creatorName: profile.name,
      mapCycleList: null,
      roundTime: ROUND_START,
      blacklist: [],
      lastKickTarget: null,
      kickVoters: [],
      totalJoined: [profile.name],
    };
    this.#rooms.set(roomName, room);
    const wasLobby = player.lobby;
    player.lobby = false;
    player.room = roomName;
    player.requiresUpdate = true;
    player.gameWins = 0;
    player.gameKills = 0;
    player.gameDeaths = 0;
    if (wasLobby && !player.quickplay) this.#broadcastLobby(`D${player.id}`);
    this.#send(client, `C${player.id}`); // and nothing else - see reference
    this.#ctx.publishState();
  }

  #handleRoomList(client: Client): void {
    const player = client.player;
    const pass = player ? this.#profile(player).labPass === 1 : false;
    let list = `01${LOBBY}0;`;
    for (const room of this.#rooms.values()) {
      const visible =
        !room.isPrivate &&
        !(player && this.#isFull(room, player)) &&
        (!room.needsPass || pass || (player && room.vips.includes(this.#profile(player).name)));
      if (visible) list += `${room.name}${room.needsPass ? "1" : "0"};`;
    }
    this.#send(client, list);
  }

  #handleDetail(client: Client, msg: string): void {
    const room = this.#rooms.get(msg.slice(2));
    if (!room) return;
    const count = this.#roomPlayers(room.name).length;
    this.#send(client, `04${room.mapId}${room.cycleMode}${count}${room.roundTime + 31}`);
  }

  #handleRoomVar(client: Client, msg: string): void {
    // The Dimensions client requests BOTH variables in one packet at map
    // load: "06<roomName>;mp;rc" (older clients send single actions). Room
    // names cannot contain ';', so the first ';' ends the name; every action
    // after it gets its own reply packet. Missing the mp reply desyncs the
    // joiner's map/round state, so this must answer all requested actions.
    const sep = msg.indexOf(";");
    if (sep === -1) return;
    const roomName = msg.slice(2, sep);
    const room = this.#rooms.get(roomName);
    for (const action of msg.slice(sep + 1).split(";")) {
      if (action === "mp") {
        if (room?.mapCycleList) this.#send(client, `06mp=${room.mapCycleList}`);
        else this.#send(client, "06mp=No WORKY");
      } else if (action === "rc") {
        // rc = room creator (the client stores it in roomCreatorUserName).
        this.#send(client, `06rc=${room?.creatorName ?? "bad player"}`);
      }
    }
  }

  #handleSetMapCycle(client: Client, msg: string): void {
    // 05mp=<list>
    const player = client.player;
    if (!player?.room) return;
    const room = this.#rooms.get(player.room);
    if (room) {
      room.mapCycleList = msg.slice(5);
      this.#ctx.publishState();
    }
  }

  #handlePrivate(client: Client, msg: string): void {
    // 00<uid3><payload>
    if (msg.length < 5 || !client.player) return;
    const target = this.#byUid(msg.slice(2, 5));
    if (target) this.#sendToPlayer(target, `M${client.player.id}${msg.slice(5)}`);
  }

  #handleChat(client: Client, msg: string): void {
    const player = client.player;
    if (!player) return;
    const chatText = msg.slice(1);
    if (chatText.startsWith("!") || chatText.startsWith("::")) return; // player/mod commands
    const packet = `M${player.id}9${chatText}`;
    if (player.lobby) this.#broadcastLobby(packet);
    else if (player.room) this.#broadcastRoom(player.room, packet);
  }

  #handleKill(client: Client, msg: string): void {
    // 7<killerUid>... - the *victim* reports their own death.
    const victim = client.player!;
    if (msg.length >= 4) {
      const killer = this.#byUid(msg.slice(1, 4));
      if (killer && killer.room === victim.room) {
        killer.gameKills++;
        this.#profile(killer).kills++;
      }
    }
    victim.gameDeaths++;
    this.#profile(victim).deaths++;
    this.#scheduleExport();
    if (victim.room) this.#broadcastRoom(victim.room, `M${victim.id}${msg}`);
  }

  #handleVoteKick(client: Client, msg: string): void {
    const voter = client.player!;
    if (msg.length < 4 || !voter.room) return;
    const room = this.#rooms.get(voter.room);
    if (!room) return;
    const target = this.#roomPlayers(room.name).find((p) => p.id === msg.slice(1, 4));
    if (!target) {
      // Unknown target: relay like a normal gameplay packet (reference does).
      this.#broadcastRoom(room.name, `M${voter.id}${msg}`);
      return;
    }
    if (this.#profile(voter).userLevel > 0) {
      return this.#kick(room, target);
    }
    if (this.#profile(target).userLevel > 0) return; // mods are unkickable
    this.#broadcastRoom(room.name, `M${voter.id}K${target.id}`);
    if (room.lastKickTarget !== target.id) {
      room.kickVoters = [];
      room.lastKickTarget = target.id;
    }
    if (!room.kickVoters.includes(voter.id)) room.kickVoters.push(voter.id);
    const present = new Set(this.#roomPlayers(room.name).map((p) => p.id));
    room.kickVoters = room.kickVoters.filter((id) => present.has(id));
    if (room.kickVoters.length > 1 && room.kickVoters.length >= present.size - 1) {
      this.#kick(room, target);
      room.kickVoters = [];
    }
  }

  #kick(room: RoomRec, target: PlayerRec): void {
    const profile = this.#profile(target);
    if (profile.userLevel === 0) room.blacklist.push(profile.dbId);
    this.#sendToPlayer(target, "094");
    // Deregistering broadcasts D to the room (reference behaviour) and puts
    // the victim back on the lobby side of the fence, unlisted until 03_.
    this.#leaveRoom(target);
    target.requiresUpdate = true;
    this.#ctx.publishState();
  }

  #handleTicket(client: Client): void {
    const player = client.player;
    if (!player) return;
    const profile = this.#profile(player);
    if (profile.ticket !== 1) return;
    const total = (TICKET_PRIZES.length * (TICKET_PRIZES.length + 1)) / 2;
    const roll = Math.floor(Math.random() * total);
    let acc = 0;
    for (let index = 0; index < TICKET_PRIZES.length; index++) {
      acc += TICKET_PRIZES.length - index;
      if (roll < acc) {
        profile.cred += TICKET_PRIZES[index]!;
        profile.ticket = 0;
        profile.lastTicket = Date.now();
        this.#send(client, `0a${index}`);
        this.#ctx.publishState();
        this.#scheduleExport();
        return;
      }
    }
  }

  #handleBuyItem(client: Client, msg: string): void {
    // 0b<itemId:3><r1:3><g1:3><b1:3><r2:3><g2:3><b2:3>
    if (msg.length < 23 || !client.player) return;
    const profile = this.#profile(client.player);
    const itemId = Number(msg.slice(2, 5));
    if (!Number.isFinite(itemId)) return;
    const c1 = msg.slice(5, 14);
    const c2 = msg.slice(14, 23);
    if (!/^\d{9}$/.test(c1) || !/^\d{9}$/.test(c2)) return;
    if (!this.#opts.freeShop) {
      // No authoritative price table in this revival; charge a flat fee.
      const price = 500;
      if (profile.cred < price) return;
      profile.cred -= price;
    }
    profile.inventory.push({
      itemId,
      dbId: profile.nextItemId++,
      type: itemId >= 200 ? 2 : 1,
      selected: false,
      c1,
      c2,
    });
    this.#ctx.publishState(); // no reply - the client re-requests 0c
    this.#scheduleExport();
  }

  #handleInventory(client: Client): void {
    if (!client.player) return;
    const profile = this.#profile(client.player);
    let body = "";
    for (const item of profile.inventory) {
      body += `${pad(item.itemId, 3, "0")}${item.selected ? 1 : 0}${item.c1}${item.c2}${item.dbId};`;
    }
    this.#send(client, `0c${body}`);
  }

  #handleSelectItem(client: Client, msg: string): void {
    if (!client.player || msg.includes("undefined")) return;
    const profile = this.#profile(client.player);
    const dbId = Number(msg.slice(2));
    const item = profile.inventory.find((i) => i.dbId === dbId);
    if (!item) return;
    for (const other of profile.inventory) {
      if (other.type === item.type) other.selected = false;
    }
    item.selected = true;
    this.#ctx.publishState(); // no reply
    this.#scheduleExport();
  }

  #handleFind(client: Client, msg: string): void {
    const name = msg.slice(2);
    const target = this.#byName(name);
    const shown = target ? this.#profile(target).name : name;
    if (!target) return this.#send(client, `0hPlayer ${shown} was not found.`);
    if (target.lobby) return this.#send(client, `0hPlayer ${shown} is in the lobby.`);
    const room = target.room ? this.#rooms.get(target.room) : undefined;
    const requesterIsMod = client.player ? this.#profile(client.player).userLevel > 0 : false;
    if (room && (!room.isPrivate || requesterIsMod)) {
      return this.#send(client, `0hPlayer ${shown} is in the game called '${room.name}'.`);
    }
    this.#send(client, `0hPlayer ${shown} was not found.`);
  }

  // ------------------------------------------------------------------- rooms

  #isFull(room: RoomRec, joining: PlayerRec): boolean {
    const count = this.#roomPlayers(room.name).length;
    const passContext = this.#profile(joining).labPass === 1 || room.needsPass;
    return passContext ? count > 5 : count > 3;
  }

  /** Remove a player from their current room, broadcasting D to the room. */
  #leaveRoom(player: PlayerRec): void {
    const roomName = player.room;
    if (!roomName) return;
    player.room = null;
    player.lobby = true; // reference deregisterClient flips them back lobby-side
    this.#broadcastRoom(roomName, `D${player.id}`);
  }

  #removePlayer(client: Client): void {
    const player = client.player;
    if (!player) return;
    client.player = null;
    this.#announceDeparture(player);
    this.#ctx.publishState();
  }

  #announceDeparture(player: PlayerRec): void {
    if (player.lobby) {
      player.lobby = false;
      this.#broadcastLobby(`D${player.id}`);
    } else if (player.room) {
      this.#broadcastRoom(player.room, `D${player.id}`);
      player.room = null;
    }
  }

  /** 1 Hz room upkeep, mirroring the reference OnTimedEvent. */
  #tick(): void {
    let dirty = false;
    for (const room of [...this.#rooms.values()]) {
      const members = this.#roomPlayers(room.name);
      if (members.length === 0) {
        this.#rooms.delete(room.name);
        for (const joined of room.totalJoined) {
          const acc = this.#accounts.get(joined.toLowerCase());
          if (acc) acc.rounds++;
        }
        dirty = true;
        continue;
      }
      room.roundTime--;
      if (room.roundTime === -1) {
        // Round over: most game-kills wins, the rest take a loss.
        let winner: PlayerRec | null = null;
        for (const p of members) {
          if (!winner || p.gameKills > winner.gameKills) winner = p;
        }
        for (const p of members) {
          const profile = this.#profile(p);
          if (p === winner) {
            profile.wins++;
            p.gameWins++;
          } else {
            profile.losses++;
          }
        }
        dirty = true;
      }
      if (room.roundTime <= ROUND_FLOOR) {
        room.roundTime = ROUND_START;
        for (const p of members) {
          p.gameKills = 0;
          p.gameDeaths = 0;
        }
        dirty = true;
      }
    }
    if (dirty) {
      this.#ctx.publishState();
      this.#scheduleExport();
    }
  }

  #log(...args: unknown[]): void {
    if (this.#opts.debug) console.log("[stickarena]", ...args);
  }
}

export function stickarena(options: StickarenaOptions = {}): GameDefinition {
  return defineGame({
    id: "stickarena-dimensions",
    endpoints: [
      options.endpoint ?? "ballistick.local:1138",
      options.syncEndpoint ?? "ballistick.local:1139", // account-sync side channel
    ],
    statefulMigration: true,
    http: [
      {
        // http://server01.xgenstudios.com/stickarena/version_check.php - the
        // preloader refuses to start unless this answers.
        match: /\/version_check\.php/,
        handler: () => ({ body: "result=success" }),
      },
      {
        // stick_arena.php - account creation / password change form posts
        // (LoadVars reply). The SWF carries BOTH an absolute
        // /stickarena/stick_arena.php URL and a bare relative one that
        // resolves to the host root, so match the filename anywhere. Accounts
        // only exist inside the session, so everything "succeeds"; the actual
        // account record appears on the first `09` login.
        match: /\/stick_arena\.php/,
        handler: () => ({ body: "result=success" }),
      },
      {
        // http://api.xgenstudios.com/?method=... - XGen web API
        // (xgen.users.addEmail, xgen.users.changePassword,
        // xgen.stickarena.maps.list/get/save, ...). Replies are parsed as
        // LoadVars; exact fields per method are unknown, so answer with a
        // generic all-clear. Custom-map persistence is not implemented.
        match: (url) => url.hostname === "api.xgenstudios.com",
        handler: () => ({ body: "stat=ok&result=success" }),
      },
    ],
    createServer: (ctx) => new StickArenaServer(ctx, options),
  });
}
