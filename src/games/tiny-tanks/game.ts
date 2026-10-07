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
import { type Account, type BackendState, type Params, TinyTanksBackend, type VaultMap } from "./backend.ts";

/**
 * Tiny Tanks (Chaz Robinson, multiplayer.gg) server emulation.
 *
 * The game itself is peer-hosted: one player's SWF hosts a room and the
 * others connect to it over RTMFP (see rtmfp.ts). What used to be central is
 * the PHP backend on multiplayer.gg - accounts, the room directory and the
 * level vault. That backend runs here, on the session host, and every page
 * reaches it through one virtual socket (null-terminated JSON):
 *
 *   page -> host  { t: "hello", accounts, maps }       import the local vault
 *                 { t: "php", id, script, params }     one scripts/*.php call
 *   host -> page  { t: "php", id, body }               the PHP response body
 *                 { t: "vault", accounts, maps }       export owned records
 */

export const BACKEND_ENDPOINT = "backend.multiplayer.gg:7777";

export interface TinyTanksOptions {
  /** Virtual endpoint the page talks to the backend through. */
  backendEndpoint?: string;
  debug?: boolean;
}

type ClientMessage =
  | { t: "hello"; accounts?: unknown[]; maps?: unknown[] }
  | { t: "php"; id: number; script: string; params: Params };

interface SavedState {
  backend: BackendState;
  /** account key -> peer ids whose browser vault holds the account. */
  owners: Record<string, string[]>;
}

export class TinyTanksServer implements GameServer {
  #ctx: GameServerContext;
  #debug: boolean;
  #backend = new TinyTanksBackend();
  #owners = new Map<string, Set<string>>();
  #conns = new Map<string, MessageSocket<string>>();
  #timer: ReturnType<typeof setInterval>;
  #exportTimer: ReturnType<typeof setTimeout> | null = null;

  constructor(ctx: GameServerContext, options: TinyTanksOptions = {}) {
    this.#ctx = ctx;
    this.#debug = options.debug ?? false;
    this.#timer = setInterval(() => {
      if (this.#backend.expireRooms()) ctx.publishState();
    }, 10_000);
  }

  get backend(): TinyTanksBackend {
    return this.#backend;
  }

  onConnection(socket: Socket, playerId: string): void {
    this.#bind(socket, playerId);
  }

  onResume(socket: Socket, playerId: string): void {
    this.#bind(socket, playerId);
  }

  onPlayerLeave(playerId: string): void {
    this.#conns.delete(playerId);
    if (this.#backend.removeRoomsOf(playerId)) this.#ctx.publishState();
  }

  saveState(): SavedState {
    return {
      backend: this.#backend.save(),
      owners: Object.fromEntries([...this.#owners].map(([key, peers]) => [key, [...peers]])),
    };
  }

  loadState(value: unknown): void {
    const state = value as SavedState | null;
    this.#backend.load(state?.backend);
    // A departed host's leave event fired before we took over - drop its rooms.
    this.#backend.retainRoomsOf(new Set([this.#ctx.selfId, ...this.#ctx.session.peers]));
    this.#owners = new Map(Object.entries(state?.owners ?? {}).map(([key, peers]) => [key, new Set(peers)]));
  }

  dispose(): void {
    clearInterval(this.#timer);
    if (this.#exportTimer) clearTimeout(this.#exportTimer);
  }

  #bind(socket: Socket, playerId: string): void {
    const conn = framed(socket, nullTerminated(), text());
    this.#conns.set(playerId, conn);
    conn.on("message", (raw) => {
      let message: ClientMessage;
      try {
        message = JSON.parse(raw) as ClientMessage;
      } catch {
        return;
      }
      this.#handle(playerId, conn, message);
    });
    conn.on("close", () => {
      if (this.#conns.get(playerId) === conn) this.#conns.delete(playerId);
    });
  }

  #handle(playerId: string, conn: MessageSocket<string>, message: ClientMessage): void {
    if (message.t === "hello") {
      const before = new Set(this.#backend.accounts.keys());
      this.#backend.importAccounts(Array.isArray(message.accounts) ? message.accounts : []);
      this.#backend.importMaps(Array.isArray(message.maps) ? message.maps : []);
      for (const raw of Array.isArray(message.accounts) ? message.accounts : []) {
        const name = (raw as { name?: unknown } | null)?.name;
        const key = typeof name === "string" ? name.trim().toLowerCase() : "";
        if (key && this.#backend.accounts.has(key)) this.#own(key, playerId);
      }
      if (this.#backend.accounts.size !== before.size) this.#log("imported vault of", playerId);
      this.#changed();
      return;
    }
    if (message.t !== "php" || typeof message.script !== "string") return;
    const params = message.params ?? {};
    let body: string;
    let changed = false;
    try {
      const result = this.#backend.handle(message.script, params, playerId);
      body = result.body;
      changed = result.changed ?? false;
    } catch (error) {
      console.error("[tiny-tanks] backend error:", error);
      body = "code=3";
    }
    this.#log(playerId, message.script, params, "->", body);
    // Whoever registers or logs in keeps the account in their browser vault.
    if (message.script === "account9.php") {
      const name = params.task === "1" ? params.usernameoremail : params.task === "2" ? params.username : undefined;
      const account = this.#backend.account(name?.trim());
      if (account && /(^|&)code=0(&|$)/.test(body)) {
        this.#own(account.name.toLowerCase(), playerId);
        changed = true;
      }
    }
    conn.send(JSON.stringify({ t: "php", id: message.id, body }));
    if (changed) this.#changed();
  }

  #own(key: string, playerId: string): void {
    let owners = this.#owners.get(key);
    if (!owners) this.#owners.set(key, (owners = new Set()));
    owners.add(playerId);
  }

  /** Replicate state now and push updated vaults to their owners shortly after. */
  #changed(): void {
    this.#ctx.publishState();
    if (this.#exportTimer) clearTimeout(this.#exportTimer);
    this.#exportTimer = setTimeout(() => {
      this.#exportTimer = null;
      for (const [playerId, conn] of this.#conns) {
        const accounts: Account[] = [];
        for (const [key, owners] of this.#owners) {
          const account = this.#backend.accounts.get(key);
          if (account && owners.has(playerId)) accounts.push(account);
        }
        const authors = new Set(accounts.map((account) => account.name.toLowerCase()));
        const maps: VaultMap[] = [...this.#backend.maps.values()].filter((map) => authors.has(map.author.toLowerCase()));
        conn.send(JSON.stringify({ t: "vault", accounts, maps }));
      }
    }, 200);
  }

  #log(...values: unknown[]): void {
    if (this.#debug) console.log("[tiny-tanks]", ...values);
  }
}

export function tinyTanks(options: TinyTanksOptions = {}): GameDefinition {
  return defineGame({
    id: "tiny-tanks",
    endpoints: [options.backendEndpoint ?? BACKEND_ENDPOINT],
    statefulMigration: true,
    createServer: (ctx) => new TinyTanksServer(ctx, options),
  });
}
