import { createSession, trysteroBridge, VirtualNetwork } from "../../flashnet/index.ts";
import { joinRoom, selfId } from "@trystero-p2p/mqtt";
import { stickarena } from "./game.ts";

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
    /** The SWF calls getURL("javascript:GameLogin(user, pwHash, cb)"). */
    GameLogin: (...args: unknown[]) => void;
  }
}

const params = new URLSearchParams(location.search);
const roomCode = params.get("room") ?? "lobby";
const debug = params.has("debug");

// The website-side login bridge. Auth happens in-game over the socket ("09"),
// so this only needs to exist to keep the getURL call from erroring.
window.GameLogin = () => {};

const net = new VirtualNetwork({ debug });

// ---------------------------------------------------------------------------
// Account vault: this browser's accounts (name, password, creds, stats,
// inventory) live in localStorage and are synced into whichever peer is
// hosting via a JSON side channel on port 1139 (see game.ts).
// ---------------------------------------------------------------------------
const VAULT_KEY = "stickarena.accounts.v1";
type VaultAccount = { name: string; password: string } & Record<string, unknown>;
const loadVault = (): VaultAccount[] => {
  try {
    const parsed = JSON.parse(localStorage.getItem(VAULT_KEY) ?? "[]");
    return Array.isArray(parsed) ? parsed : [];
  } catch {
    return [];
  }
};
const saveVault = (updated: VaultAccount[]): void => {
  const vault = loadVault();
  for (const account of updated) {
    const i = vault.findIndex((a) => a.name.toLowerCase() === account.name.toLowerCase());
    if (i === -1) vault.push(account);
    else vault[i] = account;
  }
  try {
    localStorage.setItem(VAULT_KEY, JSON.stringify(vault));
  } catch (err) {
    console.warn("[app] could not persist accounts:", err);
  }
};

class AccountSync {
  #ws: WebSocket | null = null;
  #proxyUrl: string;
  #nextId = 1;
  #pending = new Map<number, (reply: { ok: boolean; reason?: string }) => void>();
  #disposed = false;

  constructor(proxyUrl: string) {
    this.#proxyUrl = proxyUrl;
    this.#connect();
  }

  #connect(): void {
    if (this.#disposed) return;
    const ws = new WebSocket(this.#proxyUrl);
    ws.binaryType = "arraybuffer";
    this.#ws = ws;
    let buffer = "";
    ws.onopen = () => {
      this.#sendRaw({ t: "import", accounts: loadVault() });
    };
    ws.onmessage = (ev) => {
      buffer += new TextDecoder().decode(new Uint8Array(ev.data as ArrayBuffer));
      let i;
      while ((i = buffer.indexOf("\0")) !== -1) {
        const frame = buffer.slice(0, i);
        buffer = buffer.slice(i + 1);
        try {
          this.#onMessage(JSON.parse(frame));
        } catch (err) {
          console.warn("[app] bad sync frame:", err);
        }
      }
    };
    ws.onclose = () => {
      if (this.#ws !== ws) return;
      this.#ws = null;
      if (!this.#disposed) setTimeout(() => this.#connect(), 1500);
    };
  }

  #onMessage(msg: { t: string } & Record<string, unknown>): void {
    if (msg.t === "export" && Array.isArray(msg.accounts)) {
      saveVault(msg.accounts as VaultAccount[]);
      if (debug) console.log("[app] account vault updated:", msg.accounts.map((a: VaultAccount) => a.name));
    } else if (msg.t === "created") {
      const resolve = this.#pending.get(msg.id as number);
      if (resolve) {
        this.#pending.delete(msg.id as number);
        resolve({ ok: !!msg.ok, reason: msg.reason as string | undefined });
      }
    }
  }

  #sendRaw(msg: object): void {
    if (this.#ws?.readyState === WebSocket.OPEN) {
      this.#ws.send(new TextEncoder().encode(JSON.stringify(msg) + "\0"));
    }
  }

  /** Create an account on the host; resolves with the host's verdict. */
  create(name: string, password: string, colour?: string): Promise<{ ok: boolean; reason?: string }> {
    return new Promise((resolve) => {
      const id = this.#nextId++;
      this.#pending.set(id, resolve);
      this.#sendRaw({ t: "create", id, name, password, colour });
      setTimeout(() => {
        if (this.#pending.delete(id)) resolve({ ok: false, reason: "timeout" });
      }, 5000);
    });
  }

  dispose(): void {
    this.#disposed = true;
    this.#ws?.close();
  }
}

let accountSync: AccountSync | null = null;

// The SWF's "create account" form posts LoadVars to stick_arena.php (the
// runtime engine uses a RELATIVE URL that resolves to the host root, so the
// path is matched by filename):
//   action=create & username & userpass & usercol(rrrgggbbb) & email_address
// Answer it with a real verdict from the host. Registered BEFORE the session
// so it takes priority over the definition's generic success stub.
net.listenHttp(/\/stick_arena\.php/, async (request) => {
  let form: URLSearchParams;
  try {
    form = new URLSearchParams(await request.text());
  } catch {
    return { body: "result=success" };
  }
  if (form.get("action") !== "create") return { body: "result=success" };
  const username = form.get("username") ?? "";
  const userpass = form.get("userpass") ?? "";
  const usercol = form.get("usercol") ?? undefined;
  if (!accountSync) return { body: "result=error" };
  const verdict = await accountSync.create(username, userpass, usercol);
  if (verdict.ok) {
    // Persist immediately so the account survives even if the tab closes
    // before the first export arrives; the export will overwrite it.
    saveVault([{ name: username, password: userpass }]);
    return { body: "result=success" }; // the SWF auto-logs-in next
  }
  console.log(`[app] account '${username}' refused: ${verdict.reason}`);
  return { body: `result=${verdict.reason ?? "error"}` }; // anything != success shows the taken/failed message
});

const session = await createSession(
  stickarena({
    endpoint: "ballistick.local:1138", // must match sServerURL0/sConnectPort0 in settings598b.ini
    syncEndpoint: "ballistick.local:1139",
    serverName: "2-Dimensional Central", // sServerName0
    moderators: (params.get("mods") ?? "").split(",").filter(Boolean),
    debug,
  }),
  {
    net,
    bridge: trysteroBridge({
      selfId,
      room: joinRoom({ appId: "flashback-stickarena" }, roomCode),
    }),
    settleMs: 4000,
  },
);

// Connect the account vault to the host (works across host migrations too:
// the tunnel resumes, and on a lost socket the client reconnects itself).
{
  const proxy = session.ruffleConfig().socketProxy.find((p: { port: number }) => p.port === 1139);
  if (proxy) accountSync = new AccountSync(proxy.proxyUrl);
  else console.warn("[app] no sync proxy registered; accounts will not persist");
}

// The SWF was published for xgenstudios.com: it loads its settings, word
// filter, EULA and map files from absolute/base-relative xgenstudios URLs.
// Everything under those hosts is redirected to this example's public/ dir.
// Registered AFTER createSession: handlers run in registration order and this
// one always answers, so the game-specific PHP/API handlers in game.ts must
// come first.
const XGEN_HOSTS = /(^|\.)xgenstudios\.com$/;
const MIME: Record<string, string> = {
  swf: "application/x-shockwave-flash",
  ini: "text/plain",
  dat: "text/plain",
  csv: "text/plain",
};
net.listenHttp(
  (url) => XGEN_HOSTS.test(url.hostname),
  async (_request, url) => {
    // http://www.xgenstudios.com/stickarena/dimensions.swf ->
    // /dimensions.swf; other paths (settings598b.ini, com/languagefilter.ini,
    // ballistick/eula.dat, maps/593/*.dat, ...) map 1:1 onto public/. The
    // SWF resolves relative loads against the configured `base` (the host
    // root), but try the /stickarena/-stripped variant too in case a load
    // resolves against the SWF's own directory instead.
    // Never probe .php endpoints against the dev server (its SPA fallback
    // answers everything with index.html); an unhandled LoadVars endpoint
    // gets the generic all-clear the original backends would give.
    if (url.pathname.endsWith(".php")) {
      console.warn("[app] unhandled php endpoint, answering success:", url.href);
      return { body: "result=success" };
    }
    const candidates = [url.pathname];
    if (url.pathname.startsWith("/stickarena/")) {
      candidates.push(url.pathname.slice("/stickarena".length));
    }
    // Assets live under public/games/stickarena-dimensions/, and the app may
    // be deployed under a sub-path (GitHub Pages) - resolve via BASE_URL.
    const assetRoot =
      import.meta.env.BASE_URL.replace(/\/$/, "") + "/games/stickarena-dimensions";
    for (const path of candidates) {
      const local = await fetch(new URL(assetRoot + path, location.origin));
      // Vite's dev server answers unknown paths with index.html (SPA
      // fallback) and status 200 - that is a miss, not a hit.
      const type = local.headers.get("content-type") ?? "";
      if (!local.ok || type.includes("text/html")) continue;
      // Rebuild the response so it looks like it came from xgenstudios.com:
      // Ruffle takes the movie's _url (and thus the sitelock's view of the
      // world) from Response.url, which is read-only and would otherwise
      // point at this dev server. Shadow the prototype getter per instance.
      const ext = path.slice(path.lastIndexOf(".") + 1).toLowerCase();
      const response = new Response(await local.arrayBuffer(), {
        status: 200,
        statusText: "OK",
        headers: { "Content-Type": MIME[ext] ?? type ?? "application/octet-stream" },
      });
      Object.defineProperty(response, "url", { value: url.href });
      return response;
    }
    console.warn("[app] no local asset for", url.href);
    return { status: 404, body: "" };
  },
);

session.on(
  "host-changed",
  (hostId, isHost) =>
    console.log("[app] host-changed:", hostId, isHost ? "(that is us)" : ""),
);
session.on("join", (peerId) => console.log("[app] peer joined:", peerId));
session.on("leave", (peerId) => console.log("[app] peer left:", peerId));
console.log(
  "[app] self:",
  session.selfId,
  "| socketProxy:",
  session.ruffleConfig().socketProxy,
);

const ruffleSource = window.RufflePlayer.newest();
const player = (ruffleSource.createPlayerElement ?? ruffleSource.createPlayer)!
  .call(ruffleSource);
document.getElementById("player-slot")!.appendChild(player);
const ruffleApi = player.ruffle?.() ?? player;
ruffleApi.load!({
  // Loaded under its original URL: the SWF derives its _url from the
  // response (spoofed above) and sitelocks on it, so filename and path must
  // match the real deployment. `base` makes bare relative loads
  // ("settings598b.ini") resolve to the host root, matching public/.
  url: "http://www.xgenstudios.com/stickarena/dimensions.swf",
  base: "http://www.xgenstudios.com",
  upgradeToHttps: false,
  allowNetworking: "all",
  allowScriptAccess: true,
  autoplay: "on",
  unmuteOverlay: "hidden",
  splashScreen: false,
  // The stage is 700x500; any size mismatch would otherwise reveal authoring
  // junk outside the stage instead of clipping it (seen as a green frame).
  letterbox: "on",
  scale: "showAll",
  forceScale: true,
  logLevel: "error",
  ...session.ruffleConfig(),
});

window.addEventListener("beforeunload", () => {
  accountSync?.dispose();
  session.leave();
  net.dispose();
});
