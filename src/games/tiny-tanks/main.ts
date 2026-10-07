import { createSession, trysteroBridge, VirtualNetwork } from "../../flashnet/index.ts";
import { joinRoom, selfId } from "@trystero-p2p/mqtt";
import { GAME_VERSION } from "./backend.ts";
import { BACKEND_ENDPOINT, tinyTanks } from "./game.ts";
import { RtmfpRouter } from "./rtmfp.ts";

type RufflePlayerElement = HTMLElement & {
  load?: (config: object) => unknown;
  ruffle?: () => { load(config: object): unknown };
};

declare global {
  interface Window {
    RufflePlayer: {
      newest(): {
        createPlayer?: () => RufflePlayerElement;
        createPlayerElement?: () => RufflePlayerElement;
      };
    };
    tabPressed: () => void;
    changeText: (text: string) => void;
  }
}

const params = new URLSearchParams(location.search);
const roomCode = params.get("room") ?? "lobby";
const debug = params.has("debug");
const VAULT_KEY = "tiny-tanks.vault.v1";
const SWF_URL = "http://www.multiplayer.gg/tt/TinyTanksLive.swf";

// ExternalInterface calls the SWF makes on its home site.
window.tabPressed = () => {};
window.changeText = () => {};

// -- local vault: accounts and authored maps persist in this browser --------------

interface Vault {
  accounts: Array<{ name: string }>;
  maps: Array<{ name: string; author: string }>;
}

const loadVault = (): Vault => {
  try {
    const parsed = JSON.parse(localStorage.getItem(VAULT_KEY) ?? "{}") as Partial<Vault>;
    return {
      accounts: Array.isArray(parsed.accounts) ? parsed.accounts : [],
      maps: Array.isArray(parsed.maps) ? parsed.maps : [],
    };
  } catch {
    return { accounts: [], maps: [] };
  }
};

const saveVault = (update: Vault): void => {
  const vault = loadVault();
  for (const account of update.accounts) {
    const index = vault.accounts.findIndex((other) => other.name.toLowerCase() === account.name.toLowerCase());
    if (index === -1) vault.accounts.push(account);
    else vault.accounts[index] = account;
  }
  for (const map of update.maps) {
    const index = vault.maps.findIndex((other) => other.name === map.name && other.author === map.author);
    if (index === -1) vault.maps.push(map);
    else vault.maps[index] = map;
  }
  try {
    localStorage.setItem(VAULT_KEY, JSON.stringify(vault));
  } catch (error) {
    console.warn("[tiny-tanks] could not save vault:", error);
  }
};

/**
 * The page's line to the backend on the session host. Survives host
 * migration (stateful session); requests made while reconnecting are queued.
 */
class BackendClient {
  #ws: WebSocket | null = null;
  #nextId = 1;
  #pending = new Map<number, { resolve: (body: string) => void; payload: string }>();
  #disposed = false;

  constructor(private readonly proxyUrl: string) {
    this.#connect();
  }

  request(script: string, params: Record<string, string>): Promise<string> {
    return new Promise((resolve) => {
      const id = this.#nextId++;
      const payload = JSON.stringify({ t: "php", id, script, params });
      this.#pending.set(id, { resolve, payload });
      this.#send(payload);
      setTimeout(() => {
        if (this.#pending.delete(id)) resolve("code=3");
      }, 15_000);
    });
  }

  /** Offer this browser's vault to the backend (again, e.g. after a host change). */
  announce(): void {
    const vault = loadVault();
    this.#send(JSON.stringify({ t: "hello", accounts: vault.accounts, maps: vault.maps }));
  }

  dispose(): void {
    this.#disposed = true;
    this.#ws?.close();
  }

  #connect(): void {
    if (this.#disposed) return;
    const ws = new WebSocket(this.proxyUrl);
    ws.binaryType = "arraybuffer";
    this.#ws = ws;
    let buffer = "";
    ws.onopen = () => {
      this.announce();
      for (const { payload } of this.#pending.values()) this.#send(payload);
    };
    ws.onmessage = (event) => {
      buffer += new TextDecoder().decode(new Uint8Array(event.data as ArrayBuffer));
      let end;
      while ((end = buffer.indexOf("\0")) !== -1) {
        const raw = buffer.slice(0, end);
        buffer = buffer.slice(end + 1);
        let message: { t: string; id?: number; body?: string } & Partial<Vault>;
        try {
          message = JSON.parse(raw);
        } catch {
          continue;
        }
        if (message.t === "php" && message.id !== undefined) {
          this.#pending.get(message.id)?.resolve(message.body ?? "");
          this.#pending.delete(message.id);
        } else if (message.t === "vault") {
          saveVault({ accounts: message.accounts ?? [], maps: message.maps ?? [] });
        }
      }
    };
    ws.onclose = () => {
      if (this.#ws === ws) this.#ws = null;
      if (!this.#disposed) setTimeout(() => this.#connect(), 1000);
    };
  }

  #send(payload: string): void {
    if (this.#ws?.readyState === WebSocket.OPEN) this.#ws.send(new TextEncoder().encode(payload + "\0"));
  }
}

// -- session --------------------------------------------------------------------

const net = new VirtualNetwork({ debug });
const session = await createSession(tinyTanks({ debug }), {
  net,
  bridge: trysteroBridge({ selfId, room: joinRoom({ appId: "flashback-tiny-tanks" }, roomCode) }),
  settleMs: 4000,
});
const router = new RtmfpRouter({ net, bridge: session.bridge, debug });
const backendProxy = session.ruffleConfig().socketProxy.find(
  (proxy) => `${proxy.host}:${proxy.port}` === BACKEND_ENDPOINT,
);
const backend = new BackendClient(backendProxy!.proxyUrl);

/**
 * Rooms this page hosts, as last registered. A new backend host normally
 * restores the replicated state, but after a split-brain merge (two pages
 * that self-elected before seeing each other) the winner never had it - so
 * on every host change we re-offer our vault and re-register our rooms.
 */
const ownRooms = new Map<string, { add: Record<string, string>; join?: Record<string, string> }>();

session.on("host-changed", (hostId, isHost) => {
  console.log("[tiny-tanks] backend host:", hostId, isHost ? "(us)" : "");
  backend.announce();
  for (const room of ownRooms.values()) {
    void backend.request("addnewroom.php", room.add);
    if (room.join) void backend.request("joinroom.php", room.join);
  }
});
if (debug) {
  console.log("[tiny-tanks] self:", session.selfId);
  session.on("join", (peerId) => console.log("[tiny-tanks] peer joined:", peerId));
  session.on("leave", (peerId) => console.log("[tiny-tanks] peer left:", peerId));
}

// -- HTTP: multiplayer.gg and friends --------------------------------------------

/** Fire-and-forget logging endpoints; nobody reads their responses. */
const LOG_SCRIPTS = new Set([
  "igl.php",
  "armorclicklog.php",
  "clicklog.php",
  "logmins2.php",
  "chatlog.php",
  "ailog.php",
  "campaignlog.php",
  "logconnectionattempt.php",
  "loggamecompleted.php",
  "accountlog.php",
]);

const formParams = (body: string, url: URL): Record<string, string> => {
  const result: Record<string, string> = {};
  for (const [key, value] of url.searchParams) result[key] = value;
  for (const [key, value] of new URLSearchParams(body)) result[key] = value;
  return result;
};

/**
 * The game often does `loader = new URLLoader(request); loader.load(request)`.
 * Flash cancels the constructor's load, so the server sees one request and
 * the SWF one COMPLETE. Ruffle runs both. An identical request right after
 * its twin is that phantom first load: leave it pending forever, so the
 * backend acts once and the SWF handles exactly one response.
 */
const recentRequests = new Map<string, number>();
const isDuplicate = (key: string): boolean => {
  const now = Date.now();
  for (const [seen, at] of recentRequests) if (now - at > 2000) recentRequests.delete(seen);
  if (recentRequests.has(key)) return true;
  recentRequests.set(key, now);
  return false;
};

const textResponse = (body: string) => ({ body, headers: { "Content-Type": "text/plain" } });

net.listenHttp(
  (url) => /(^|\.)multiplayer\.gg$/.test(url.hostname),
  async (request, url) => {
    if (url.pathname.endsWith("/TinyTanksLive.swf")) {
      const local = await fetch(new URL(`${import.meta.env.BASE_URL}games/tiny-tanks/TinyTanksLive.swf`, location.origin));
      const response = new Response(await local.arrayBuffer(), {
        status: local.status,
        headers: { "Content-Type": "application/x-shockwave-flash" },
      });
      // Ruffle uses Response.url for loaderInfo.url, which the game's sitelock checks.
      Object.defineProperty(response, "url", { value: url.href });
      return response;
    }
    const script = url.pathname.match(/\/tt\/scripts\/([^/]+)$/)?.[1];
    if (!script) return { status: 404, body: "" };
    if (script === "rtmfp.txt") return textResponse("0");
    if (script === "latestversion.txt") return textResponse(GAME_VERSION);
    if (script === "fglwindow.txt") return textResponse("");
    if (script === "ip_query4.php") return textResponse("city=Flashback&latitude=0&longitude=0");
    const body = request.method === "POST" ? await request.text() : "";
    if (isDuplicate(`${request.method} ${url.href} ${body}`)) return new Promise<never>(() => {});
    if (LOG_SCRIPTS.has(script)) return textResponse("code=0");
    const params = formParams(body, url);
    const address = params.addressstring ?? "";
    if (script === "addnewroom.php") ownRooms.set(address, { add: params });
    else if (script === "joinroom.php" && ownRooms.has(address)) ownRooms.get(address)!.join = params;
    else if (script === "removeroom.php") ownRooms.delete(address);
    return textResponse(await backend.request(script, params));
  },
);

// Everything else off-site (Kongregate API, analytics, YouTube policy files,
// avatar services) is long gone - answer locally instead of leaking requests.
net.listenHttp(
  (url) => url.origin !== location.origin && /^https?:$/.test(url.protocol),
  (_request, url) => {
    if (debug) console.log("[tiny-tanks] blocked", url.href);
    return { status: 404, body: "" };
  },
);

// -- Ruffle ------------------------------------------------------------------------

const ruffleSource = window.RufflePlayer.newest();
const player = (ruffleSource.createPlayerElement ?? ruffleSource.createPlayer)!.call(ruffleSource);
document.getElementById("player-slot")!.appendChild(player);
(player.ruffle?.() ?? player).load!({
  url: SWF_URL,
  base: "http://www.multiplayer.gg/tt/",
  upgradeToHttps: false,
  allowNetworking: "all",
  allowScriptAccess: true,
  autoplay: "on",
  unmuteOverlay: "hidden",
  splashScreen: false,
  maxExecutionDuration: 30,
  letterbox: "on",
  scale: "showAll",
  forceScale: true,
  logLevel: debug ? "info" : "error",
  ...session.ruffleConfig(),
});

window.addEventListener("beforeunload", () => {
  backend.dispose();
  router.dispose();
  session.leave();
  net.dispose();
});
