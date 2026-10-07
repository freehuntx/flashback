import { md5 } from "./md5.ts";

/**
 * Emulation of the multiplayer.gg/tt/scripts/*.php backend.
 *
 * Responses use the original wire formats: URL-encoded `key=value` pairs,
 * and for the account endpoints a trailing `entirehash` that the SWF checks
 * (md5 of everything before it + the game's secret).
 */

/**
 * Shared secret for response/room hashes. Frame 1 assigns two decoys
 * ("7yGtreDfk8", then "huuYj87n4d"); frame 2 overwrites it with this value,
 * decoded from a char-code table (String.fromCharCode(155 - x * 10)).
 */
export const SECRET = "LStlocOJ";
export const GAME_VERSION = "187";

/** Coin prices from the SWF's tankItemDataArray, by item id. */
const ITEM_COSTS = [
  0, 0, 200, 300, 500, 500, 600, 750, 750, 750, 750, 0, 0, 850, 850, 850, 0,
  2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000,
  2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 850,
];
/** Items every account owns (the SWF also hardcodes these as unlocked). */
const FREE_ITEMS = [0, 1, 2, 11, 12, 16];
const DEFAULT_SETUP = "0x1x2x12x16";
const ROOM_TTL_MS = 70_000;

export interface Account {
  id: number;
  name: string;
  /** md5 of the password - the SWF sends md5(password) for most writes. */
  passwordHash: string;
  kills: number;
  deaths: number;
  wins: number;
  losses: number;
  gameshosted: number;
  xp: number;
  referrals: number;
  coins: number;
  premium: number;
  unlocks: number[];
  itemsinuse: string;
  customtitle: string;
  updatecounter: number;
  minutesplayed: number;
  campaign: string;
  friendlist: string;
  created: number;
}

export interface Room {
  address: string;
  owner: string;
  roomname: string;
  password: string;
  maxplayers: number;
  players: number;
  usernamelist: string;
  gamemode: string;
  aiming: string;
  mapid: string;
  special: string;
  averagekills: string;
  timeinlobby: string;
  latitude: string;
  longitude: string;
  version: string;
  seen: number;
}

export interface VaultMap {
  id: number;
  name: string;
  author: string;
  size: string;
  players: string;
  mapdata: string;
  aidata: string;
  gametype: string;
  special: string;
  thumbsup: number;
  thumbsdown: number;
  date: number;
}

export interface BackendState {
  accounts: Account[];
  rooms: Room[];
  maps: VaultMap[];
  nextAccountId: number;
  nextMapId: number;
}

export type Params = Record<string, string>;

export interface BackendResult {
  body: string;
  /** Account or map vault content changed (owners should re-export). */
  changed?: boolean;
}

/** Encode pairs like PHP's echo "a=".urlencode($v)."&..." - decodable by URLVariables. */
export function encodeVars(pairs: Array<[string, string | number]>): string {
  return pairs.map(([key, value]) => `${key}=${encodeURIComponent(String(value))}`).join("&");
}

/** Signed response: pairs + `&entirehash=md5(pairs + secret)`, as checkServerReponseHash expects. */
export function signed(pairs: Array<[string, string | number]>): string {
  const body = encodeVars(pairs);
  return `${body}&entirehash=${md5(body + SECRET)}`;
}

export function roomHash(address: string, password: string): string {
  return md5(address + password + SECRET);
}

export function newAccount(id: number, name: string, password: string): Account {
  return {
    id,
    name,
    passwordHash: md5(password),
    kills: 0,
    deaths: 0,
    wins: 0,
    losses: 0,
    gameshosted: 0,
    xp: 0,
    referrals: 0,
    coins: 0,
    premium: 0,
    unlocks: [],
    itemsinuse: DEFAULT_SETUP,
    customtitle: "",
    updatecounter: 0,
    minutesplayed: 0,
    campaign: "0",
    friendlist: "",
    created: Date.now(),
  };
}

const int = (value: string | undefined): number => {
  const parsed = Math.floor(Number(value));
  return Number.isFinite(parsed) ? parsed : 0;
};

export class TinyTanksBackend {
  accounts = new Map<string, Account>();
  rooms = new Map<string, Room>();
  maps = new Map<number, VaultMap>();
  nextAccountId = 1;
  nextMapId = 1;

  constructor(private readonly now: () => number = Date.now) {}

  // -- state ------------------------------------------------------------------

  save(): BackendState {
    return {
      accounts: [...this.accounts.values()],
      rooms: [...this.rooms.values()],
      maps: [...this.maps.values()],
      nextAccountId: this.nextAccountId,
      nextMapId: this.nextMapId,
    };
  }

  load(state: BackendState | null | undefined): void {
    this.accounts = new Map((state?.accounts ?? []).map((account) => [account.name.toLowerCase(), account]));
    // Rooms survive a migration, but their heartbeat clock restarts on the new host.
    this.rooms = new Map((state?.rooms ?? []).map((room) => [room.address, { ...room, seen: this.now() }]));
    this.maps = new Map((state?.maps ?? []).map((map) => [map.id, map]));
    this.nextAccountId = state?.nextAccountId ?? 1;
    this.nextMapId = state?.nextMapId ?? 1;
  }

  /** Merge accounts from a player's local vault. Existing accounts with another password win. */
  importAccounts(accounts: unknown[]): number {
    let count = 0;
    for (const value of accounts) {
      const account = sanitizeAccount(value);
      if (!account) continue;
      const key = account.name.toLowerCase();
      const current = this.accounts.get(key);
      if (current && current.passwordHash !== account.passwordHash) continue;
      // Keep the better-progressed copy if both exist (e.g. after a migration).
      if (current && current.updatecounter > account.updatecounter) continue;
      if (!current || current.id !== account.id) {
        const idTaken = [...this.accounts.values()].some((other) => other.id === account.id && other !== current);
        if (idTaken || account.id <= 0) account.id = this.nextAccountId;
      }
      this.accounts.set(key, account);
      this.nextAccountId = Math.max(this.nextAccountId, account.id + 1);
      count++;
    }
    return count;
  }

  importMaps(maps: unknown[]): number {
    let count = 0;
    for (const value of maps) {
      const map = sanitizeMap(value);
      if (!map) continue;
      const existing = [...this.maps.values()].find(
        (other) => other.name === map.name && other.author.toLowerCase() === map.author.toLowerCase(),
      );
      if (existing) continue;
      if (this.maps.has(map.id) || map.id <= 0) map.id = this.nextMapId;
      this.maps.set(map.id, map);
      this.nextMapId = Math.max(this.nextMapId, map.id + 1);
      count++;
    }
    return count;
  }

  account(name: string | undefined): Account | undefined {
    return name ? this.accounts.get(name.toLowerCase()) : undefined;
  }

  /** Drop rooms whose host stopped sending heartbeats. Returns true if anything was removed. */
  expireRooms(): boolean {
    let removed = false;
    for (const [address, room] of this.rooms) {
      if (this.now() - room.seen > ROOM_TTL_MS) {
        this.rooms.delete(address);
        removed = true;
      }
    }
    return removed;
  }

  /** Keep only rooms whose hosting player is still around. */
  retainRoomsOf(owners: ReadonlySet<string>): boolean {
    let removed = false;
    for (const [address, room] of this.rooms) {
      if (!owners.has(room.owner)) {
        this.rooms.delete(address);
        removed = true;
      }
    }
    return removed;
  }

  /** Drop all rooms hosted by a player that left the session. */
  removeRoomsOf(owner: string): boolean {
    let removed = false;
    for (const [address, room] of this.rooms) {
      if (room.owner === owner) {
        this.rooms.delete(address);
        removed = true;
      }
    }
    return removed;
  }

  // -- dispatch ---------------------------------------------------------------

  /** Handle one `scripts/<script>` request. `owner` identifies the requesting player. */
  handle(script: string, params: Params, owner: string): BackendResult {
    switch (script) {
      case "account9.php":
        return this.#account(params);
      case "testscript4.php":
        return { body: this.#roomList(params) };
      case "addnewroom.php":
        return this.#addRoom(params, owner);
      case "continueroom.php":
        return this.#continueRoom(params);
      case "joinroom.php":
        return this.#joinRoom(params);
      case "removeroom.php":
        return this.#removeRoom(params);
      case "itemcosts.php":
        return { body: this.#itemCosts() };
      case "topweekrefs.php":
        return { body: "cant=0" };
      case "maps2.php":
        return this.#maps(params);
      default:
        return { body: "code=0" };
    }
  }

  // -- account9.php -----------------------------------------------------------

  #account(params: Params): BackendResult {
    const task = int(params.task);
    switch (task) {
      case 1:
        return { body: this.#login(params) };
      case 2:
        return this.#register(params);
      case 3:
      case 10:
        return { body: this.#userData(params, task) };
      case 4:
        return this.#addStats(params);
      case 5: {
        const account = this.account(params.username);
        return { body: signed([["datastring", account?.campaign || "0"]]) };
      }
      case 6:
        return this.#update(params, (account) => (account.campaign = params.datastring ?? "0"));
      case 7:
        return this.#update(params, (account) => (account.itemsinuse = params.setupstring || DEFAULT_SETUP));
      case 8:
        return this.#buy(params);
      case 9:
        return { body: signed([["code", this.account(params.usernameoremail) ? 0 : 1]]) };
      case 11:
        return this.#update(params, (account) => (account.customtitle = safeUnescape(params.usertitle ?? "").slice(0, 40)));
      case 12:
        return this.#update(params, (account) => (account.friendlist = params.friendlist ?? ""));
      default:
        return { body: signed([["code", 1]]) };
    }
  }

  #login(params: Params): string {
    const account = this.account(params.usernameoremail?.trim());
    if (!account) return signed([["code", 1], ["retreivedusername", ""]]);
    if (account.passwordHash !== md5(params.password ?? "")) {
      return signed([["code", 2], ["retreivedusername", account.name]]);
    }
    return signed([
      ["code", 0],
      ["retreivedusername", account.name],
      ["checksum", md5(account.name + SECRET)],
      ["friendlist", account.friendlist],
      ["lat", 0],
      ["long", 0],
    ]);
  }

  #register(params: Params): BackendResult {
    const name = (params.username ?? "").trim();
    const password = params.password ?? "";
    if (!name || !password) return { body: signed([["code", 1]]) };
    if (!/^[A-Za-z0-9_\-. ]{2,20}$/.test(name) || /^(guest_|k_)/i.test(name)) return { body: signed([["code", 4]]) };
    if (this.account(name)) return { body: signed([["code", 2]]) };
    const account = newAccount(this.nextAccountId++, name, password);
    this.accounts.set(name.toLowerCase(), account);
    return { body: signed([["code", 0], ["lat", 0], ["long", 0]]), changed: true };
  }

  #userData(params: Params, task: number): string {
    const name = params.username ?? "";
    const account = this.account(name);
    const unlocks = [...new Set([...FREE_ITEMS, ...(account?.unlocks ?? [])])];
    const pairs: Array<[string, string | number]> = [];
    // Task 10 polls for a completed real-money purchase - there never is one.
    if (task === 10) pairs.push(["code", 0]);
    pairs.push(
      ["username", account?.name ?? name],
      ["kills", account?.kills ?? 0],
      ["deaths", account?.deaths ?? 0],
      ["wins", account?.wins ?? 0],
      ["losses", account?.losses ?? 0],
      ["gameshosted", account?.gameshosted ?? 0],
      ["xp", account?.xp ?? 0],
      ["referrals", account?.referrals ?? 0],
      ["id", account?.id ?? 0],
      ["weekrefs", 0],
      ["special", 0],
      ["customtitle", account?.customtitle ?? ""],
      ["updatecounter", account?.updatecounter ?? 0],
      ["minutesplayed", account?.minutesplayed ?? 0],
      ["totalunlocks", unlocks.length],
      ...unlocks.map((item, index): [string, number] => [`unlock${index}`, item]),
      ["itemsinuse", account?.itemsinuse ?? DEFAULT_SETUP],
      ["coins", account?.coins ?? 0],
      ["premium", account?.premium ?? 0],
    );
    return signed(pairs);
  }

  #addStats(params: Params): BackendResult {
    const account = this.account(params.username);
    if (!account) return { body: signed([["code", 1], ["coindrop", 0]]) };
    // Stats arrive as per-match deltas; clamp to sane ranges.
    const delta = (key: string, max: number) => Math.max(0, Math.min(max, int(params[key])));
    account.kills += delta("kills", 1000);
    account.deaths += delta("deaths", 1000);
    account.wins += delta("wins", 100);
    account.losses += delta("losses", 100);
    account.gameshosted += delta("gameshosted", 100);
    account.xp += delta("xp", 100_000);
    account.coins += delta("coins", 100_000);
    account.updatecounter = Math.max(account.updatecounter + 1, int(params.updatecounter));
    return { body: signed([["code", 0], ["coindrop", 0]]), changed: true };
  }

  #buy(params: Params): BackendResult {
    const account = this.account(params.username);
    const item = int(params.unlockitemcode);
    const reply = (code: number) =>
      signed([
        ["code", code],
        ["item", item],
        ["remainingcoins", account?.coins ?? 0],
        ["remainingpremium", account?.premium ?? 0],
      ]);
    if (!account) return { body: reply(4) };
    if (params.password && params.password !== account.passwordHash) return { body: reply(4) };
    if (!(item in ITEM_COSTS)) return { body: reply(3) };
    if (FREE_ITEMS.includes(item) || account.unlocks.includes(item)) return { body: reply(1) };
    const premium = params.coinsorpremium === "premium";
    const cost = premium ? premiumCost(item) : ITEM_COSTS[item]!;
    if ((premium ? account.premium : account.coins) < cost) return { body: reply(2) };
    if (premium) account.premium -= cost;
    else account.coins -= cost;
    account.unlocks.push(item);
    account.updatecounter++;
    return { body: reply(0), changed: true };
  }

  #update(params: Params, apply: (account: Account) => void): BackendResult {
    const account = this.account(params.username);
    if (!account) return { body: signed([["code", 1]]) };
    if (params.password && params.password !== account.passwordHash) return { body: signed([["code", 2]]) };
    apply(account);
    account.updatecounter++;
    return { body: signed([["code", 0]]), changed: true };
  }

  #itemCosts(): string {
    const pairs: Array<[string, string | number]> = [["cant", ITEM_COSTS.length]];
    ITEM_COSTS.forEach((cost, id) => {
      pairs.push([`id${id}`, id], [`cost${id}`, cost], [`premiumcost${id}`, premiumCost(id)]);
    });
    return encodeVars(pairs);
  }

  // -- room directory -----------------------------------------------------------

  #roomList(params: Params): string {
    this.expireRooms();
    const version = params.versionstring;
    const rooms = [...this.rooms.values()].filter((room) => !version || !room.version || room.version === version);
    const pairs: Array<[string, string | number]> = [["cant", rooms.length]];
    rooms.forEach((room, i) => {
      pairs.push(
        [`hash${i}`, roomHash(room.address, room.password)],
        [`address${i}`, room.address],
        [`password${i}`, room.password],
        [`roomname${i}`, room.roomname],
        [`players${i}`, room.players],
        [`maxplayers${i}`, room.maxplayers],
        [`gamemode${i}`, room.gamemode],
        [`aiming${i}`, room.aiming],
        [`special${i}`, room.special],
        [`usernamelist${i}`, room.usernamelist],
        [`latitude${i}`, room.latitude],
        [`longitude${i}`, room.longitude],
        [`mapdata${i}`, ""],
        [`mapsize${i}`, ""],
        [`mapid${i}`, room.mapid],
        [`averagekills${i}`, room.averagekills],
        [`timeinlobby${i}`, room.timeinlobby],
      );
    });
    return encodeVars(pairs);
  }

  #addRoom(params: Params, owner: string): BackendResult {
    const address = params.addressstring ?? "";
    if (!address) return { body: "code=1" };
    this.rooms.set(address, {
      address,
      owner,
      roomname: (params.roomnamestring ?? "Tiny Tanks").slice(0, 40),
      password: params.passwordstring ?? "",
      maxplayers: Math.max(2, Math.min(8, int(params.maxplayersstring) || 8)),
      players: 1,
      usernamelist: params.usernameliststring ?? "",
      gamemode: params.gamemodestring ?? "0",
      aiming: "0",
      mapid: params.mapidstring ?? "1",
      special: params.specialstring === "1" ? "1" : "0",
      averagekills: params.avgkillsstring ?? "0",
      timeinlobby: "0",
      latitude: params.latitude ?? "0",
      longitude: params.longitude ?? "0",
      version: params.versionstring ?? "",
      seen: this.now(),
    });
    return { body: "code=0", changed: true };
  }

  #continueRoom(params: Params): BackendResult {
    const room = this.rooms.get(params.addressstring ?? "");
    if (!room) return { body: "code=1" };
    room.seen = this.now();
    if (params.gamemodestring !== undefined) room.gamemode = params.gamemodestring;
    if (params.aimingstring !== undefined) room.aiming = params.aimingstring;
    if (params.mapidstring !== undefined) room.mapid = params.mapidstring;
    if (params.avgkillsstring !== undefined) room.averagekills = params.avgkillsstring;
    if (params.timeinlobbystring !== undefined) room.timeinlobby = params.timeinlobbystring;
    return { body: "code=0", changed: true };
  }

  #joinRoom(params: Params): BackendResult {
    const room = this.rooms.get(params.addressstring ?? "");
    if (!room) return { body: "code=1" };
    room.seen = this.now();
    room.players = Math.max(0, int(params.howmanyplayers));
    room.usernamelist = params.usernameliststring ?? room.usernamelist;
    return { body: "code=0", changed: true };
  }

  #removeRoom(params: Params): BackendResult {
    const address = params.addressstring ?? "";
    if (params.hashstring && params.hashstring !== md5(address + SECRET)) return { body: "code=2" };
    return { body: "code=0", changed: this.rooms.delete(address) };
  }

  // -- maps2.php (level vault) --------------------------------------------------

  #maps(params: Params): BackendResult {
    switch (int(params.task)) {
      case 1:
        return this.#saveMap(params);
      case 2:
        return { body: this.#listMaps(params) };
      case 3: {
        const map = this.maps.get(int(params.specificmap));
        if (!map) return { body: "result=1" };
        return {
          body: encodeVars([
            ["result", 0],
            ["id", map.id],
            ["name", map.name],
            ["author", map.author],
            ["size", map.size],
            ["mapdata", map.mapdata],
            ["aidata", map.aidata],
          ]),
        };
      }
      case 4: {
        const map = this.maps.get(int(params.specificmap));
        if (!map) return { body: "result=1" };
        if (params.thumbs === "1") map.thumbsup++;
        else map.thumbsdown++;
        return { body: "result=0", changed: true };
      }
      default:
        return { body: "result=1" };
    }
  }

  #saveMap(params: Params): BackendResult {
    const name = (params.mapname ?? "").trim().slice(0, 40);
    const author = params.username ?? "";
    if (!name || !author || !params.mapdata) return { body: "result=1" };
    if (params.hash && params.hash !== md5((params.mapname ?? "") + author + SECRET)) return { body: "result=4" };
    const existing = [...this.maps.values()].find(
      (map) => map.name === name && map.author.toLowerCase() === author.toLowerCase(),
    );
    if (existing && params.forceoverwrite !== "true" && params.forceoverwrite !== "1") return { body: "result=2" };
    const map: VaultMap = {
      id: existing?.id ?? this.nextMapId++,
      name,
      author,
      size: params.mapsize ?? "0",
      players: params.mapplayers ?? "2",
      mapdata: params.mapdata,
      aidata: params.aidata ?? "",
      gametype: params.gametype === "2" ? "2" : "0",
      special: params.special === "1" ? "1" : "0",
      thumbsup: existing?.thumbsup ?? 0,
      thumbsdown: existing?.thumbsdown ?? 0,
      date: this.now(),
    };
    this.maps.set(map.id, map);
    return { body: existing ? "result=3" : "result=0", changed: true };
  }

  #listMaps(params: Params): string {
    const gametype = params.gametype === "2" ? "2" : "0";
    const search = (params.searchstring ?? "").toLowerCase();
    let maps = [...this.maps.values()].filter((map) => map.gametype === gametype);
    if (search) maps = maps.filter((map) => map.name.toLowerCase().includes(search) || map.author.toLowerCase().includes(search));
    const sorton = int(params.sorton);
    const rating = (map: VaultMap) => map.thumbsup - map.thumbsdown;
    if (sorton === 0) maps.sort((a, b) => b.date - a.date);
    else {
      // Week/month windows: only maps from that period, ranked by rating.
      const window = sorton === 1 ? 7 * 86_400_000 : sorton === 2 ? 30 * 86_400_000 : Infinity;
      maps = maps.filter((map) => this.now() - map.date <= window);
      maps.sort((a, b) => rating(b) - rating(a) || b.date - a.date);
    }
    const start = Math.max(0, int(params.startingfrom));
    const page = maps.slice(start, start + Math.max(1, Math.min(50, int(params.noresults) || 10)));
    const pairs: Array<[string, string | number]> = [["cant", page.length]];
    page.forEach((map, i) => {
      pairs.push(
        [`id${i}`, map.id],
        [`name${i}`, map.name],
        [`author${i}`, map.author],
        [`size${i}`, map.size],
        [`players${i}`, map.players],
        [`mapdata${i}`, ""],
        [`thumbsup${i}`, map.thumbsup],
        [`thumbsdown${i}`, map.thumbsdown],
        [`date${i}`, new Date(map.date).toISOString().slice(0, 10)],
        [`special${i}`, map.special],
      );
    });
    return encodeVars(pairs);
  }
}

/** Gem price: the SWF reads it from itemcosts.php; scale from the coin price. */
function premiumCost(item: number): number {
  const cost = ITEM_COSTS[item] ?? 0;
  return cost === 0 ? 0 : Math.max(1, Math.round(cost / 50));
}

function safeUnescape(value: string): string {
  try {
    return decodeURIComponent(value);
  } catch {
    return value;
  }
}

function sanitizeAccount(value: unknown): Account | null {
  const input = value as Partial<Account> | null;
  if (!input || typeof input.name !== "string" || typeof input.passwordHash !== "string") return null;
  const name = input.name.trim().slice(0, 20);
  if (!name || !/^[0-9a-f]{32}$/.test(input.passwordHash)) return null;
  const base = newAccount(Number.isSafeInteger(input.id) ? input.id! : 0, name, "");
  const num = (key: keyof Account) => {
    const raw = Number(input[key]);
    return Number.isFinite(raw) ? Math.max(0, Math.floor(raw)) : 0;
  };
  return {
    ...base,
    passwordHash: input.passwordHash,
    kills: num("kills"),
    deaths: num("deaths"),
    wins: num("wins"),
    losses: num("losses"),
    gameshosted: num("gameshosted"),
    xp: num("xp"),
    referrals: num("referrals"),
    coins: num("coins"),
    premium: num("premium"),
    unlocks: Array.isArray(input.unlocks) ? input.unlocks.map(Number).filter((item) => item in ITEM_COSTS) : [],
    itemsinuse: typeof input.itemsinuse === "string" ? input.itemsinuse : DEFAULT_SETUP,
    customtitle: typeof input.customtitle === "string" ? input.customtitle.slice(0, 40) : "",
    updatecounter: num("updatecounter"),
    minutesplayed: num("minutesplayed"),
    campaign: typeof input.campaign === "string" ? input.campaign : "0",
    friendlist: typeof input.friendlist === "string" ? input.friendlist : "",
    created: num("created") || Date.now(),
  };
}

function sanitizeMap(value: unknown): VaultMap | null {
  const input = value as Partial<VaultMap> | null;
  if (!input || typeof input.name !== "string" || typeof input.author !== "string" || typeof input.mapdata !== "string") {
    return null;
  }
  return {
    id: Number.isSafeInteger(input.id) ? input.id! : 0,
    name: input.name.slice(0, 40),
    author: input.author.slice(0, 20),
    size: String(input.size ?? "0"),
    players: String(input.players ?? "2"),
    mapdata: input.mapdata,
    aidata: typeof input.aidata === "string" ? input.aidata : "",
    gametype: input.gametype === "2" ? "2" : "0",
    special: input.special === "1" ? "1" : "0",
    thumbsup: Math.max(0, Math.floor(Number(input.thumbsup) || 0)),
    thumbsdown: Math.max(0, Math.floor(Number(input.thumbsdown) || 0)),
    date: Number(input.date) || Date.now(),
  };
}
