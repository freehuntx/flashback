import { createSession, trysteroBridge, VirtualNetwork } from "../../flashnet/index.ts";
import { joinRoom, selfId } from "@trystero-p2p/mqtt";
import { blastRage, createBlastProfile, tankRow, type BlastProfile } from "./game.ts";

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
    GameLogin: (...args: unknown[]) => void;
    HideAd: () => void;
  }
}

const params = new URLSearchParams(location.search);
const roomCode = params.get("room") ?? "lobby";
const debug = params.has("debug");
const net = new VirtualNetwork({ debug });
const VAULT_KEY = "blast-rage.accounts.v1";

window.GameLogin = () => {};
window.HideAd = () => {};

const loadVault = (): BlastProfile[] => {
  try {
    const parsed = JSON.parse(localStorage.getItem(VAULT_KEY) ?? "[]");
    return Array.isArray(parsed) ? parsed : [];
  } catch {
    return [];
  }
};

const saveVault = (updated: BlastProfile[]): void => {
  const vault = loadVault();
  for (const account of updated) {
    const index = vault.findIndex((candidate) => candidate.name.toLowerCase() === account.name.toLowerCase());
    if (index === -1) vault.push(account);
    else vault[index] = account;
  }
  localStorage.setItem(VAULT_KEY, JSON.stringify(vault));
};

class AccountSync {
  #ws: WebSocket | null = null;
  #nextId = 1;
  #pending = new Map<number, (reply: { ok: boolean; reason?: string; profile?: BlastProfile }) => void>();
  #disposed = false;

  constructor(private readonly proxyUrl: string) {
    this.#connect();
  }

  #connect(): void {
    if (this.#disposed) return;
    const ws = new WebSocket(this.proxyUrl);
    ws.binaryType = "arraybuffer";
    this.#ws = ws;
    let buffer = "";
    ws.onopen = () => this.#send({ t: "import", accounts: loadVault() });
    ws.onmessage = (event) => {
      buffer += new TextDecoder().decode(new Uint8Array(event.data as ArrayBuffer));
      let end;
      while ((end = buffer.indexOf("\0")) !== -1) {
        const raw = buffer.slice(0, end);
        buffer = buffer.slice(end + 1);
        const message = JSON.parse(raw) as { t: string; id?: number; accounts?: BlastProfile[]; ok?: boolean; reason?: string; profile?: BlastProfile };
        if (message.t === "export" && message.accounts) saveVault(message.accounts);
        if (message.t === "created" && message.id != null) {
          this.#pending.get(message.id)?.({ ok: !!message.ok, reason: message.reason, profile: message.profile });
          this.#pending.delete(message.id);
        }
      }
    };
    ws.onclose = () => {
      if (this.#ws === ws) this.#ws = null;
      if (!this.#disposed) setTimeout(() => this.#connect(), 1500);
    };
  }

  create(name: string, password: string): Promise<{ ok: boolean; reason?: string; profile?: BlastProfile }> {
    return new Promise((resolve) => {
      const id = this.#nextId++;
      this.#pending.set(id, resolve);
      this.#send({ t: "create", id, name, password });
      setTimeout(() => {
        if (this.#pending.delete(id)) resolve({ ok: false, reason: "timeout" });
      }, 5000);
    });
  }

  #send(message: object): void {
    if (this.#ws?.readyState === WebSocket.OPEN) {
      this.#ws.send(new TextEncoder().encode(JSON.stringify(message) + "\0"));
    }
  }

  dispose(): void {
    this.#disposed = true;
    this.#ws?.close();
  }
}

let accountSync: AccountSync | null = null;

// Register the stateful API before the game definition's generic fallback.
net.listenHttp((url) => url.hostname === "api.xgenstudios.com", async (_request, url) => {
  const method = url.searchParams.get("method") ?? "";
  if (method === "xgen.users.add") {
    const name = url.searchParams.get("username") ?? "";
    const password = url.searchParams.get("password") ?? "";
    const result = await accountSync?.create(name, password);
    if (!result?.ok) {
      return { body: `<rsp stat="fail"><err code="4" msg="${result?.reason ?? "Could not create account"}" /></rsp>`, headers: { "Content-Type": "text/xml" } };
    }
    if (result.profile) saveVault([result.profile]);
    return { body: `<rsp stat="ok"><user id="${result.profile?.id ?? 1}" /></rsp>`, headers: { "Content-Type": "text/xml" } };
  }
  const userId = Number(url.searchParams.get("user_id"));
  const account = loadVault().find((profile) => profile.id === userId);
  const profile = account ?? createBlastProfile("Player", "", Number.isSafeInteger(userId) && userId > 0 ? userId : 1);
  if (method === "xgen.blastrage.user.items.list") return { body: profile.items.join("\r") };
  if (method === "xgen.blastrage.user.tanks.list") return { body: profile.tanks.map(tankRow).join("\r") };
  if (method === "xgen.blastrage.user.loadout.save") {
    if (account) {
      account.loadout = (url.searchParams.get("loadout") ?? "").split(",").map(Number).filter(Number.isFinite);
      saveVault([account]);
    }
    return { body: "1" };
  }
  if (method === "xgen.blastrage.user.items.buy") return { body: "1,0,0,1" };
  if (method === "xgen.blastrage.shop.items.list" || method.startsWith("xgen.blastrage.getTop")) return { body: "" };
  return { body: '<rsp stat="ok"><user id="1" /></rsp>', headers: { "Content-Type": "text/xml" } };
});

const session = await createSession(
  blastRage({
    authEndpoint: "dev.mmocha.com:1247",
    endpoint: "game01.xgenstudios.com:1247",
    secondaryEndpoint: "game08.xgenstudios.com:1247",
    syncEndpoint: "dev.mmocha.com:1248",
    moderators: (params.get("mods") ?? "").split(",").filter(Boolean),
    debug,
  }),
  {
    net,
    bridge: trysteroBridge({ selfId, room: joinRoom({ appId: "flashback-blast-rage" }, roomCode) }),
    settleMs: 4000,
  },
);

const syncProxy = session.ruffleConfig().socketProxy.find((proxy: { port: number }) => proxy.port === 1248);
if (syncProxy) accountSync = new AccountSync(syncProxy.proxyUrl);

const XGEN_HOSTS = /(^|\.)(xgenstudios\.com|blastrage\.com)$/;
const MIME: Record<string, string> = {
  swf: "application/x-shockwave-flash",
  txt: "text/plain",
  dat: "text/plain",
};

net.listenHttp(
  (url) => XGEN_HOSTS.test(url.hostname),
  async (_request, url) => {
    const candidates = [url.pathname];
    for (const prefix of ["/blastrage/", "/blast-rage-online/"]) {
      if (url.pathname.startsWith(prefix)) candidates.push(url.pathname.slice(prefix.length - 1));
    }
    const assetRoot = import.meta.env.BASE_URL.replace(/\/$/, "") + "/games/blast-rage-online";
    for (const path of candidates) {
      const local = await fetch(new URL(assetRoot + path, location.origin));
      const type = local.headers.get("content-type") ?? "";
      if (!local.ok || type.includes("text/html")) continue;
      const ext = path.slice(path.lastIndexOf(".") + 1).toLowerCase();
      const response = new Response(await local.arrayBuffer(), {
        status: 200,
        headers: { "Content-Type": MIME[ext] ?? type ?? "application/octet-stream" },
      });
      // Ruffle uses Response.url for LoaderInfo.url and the game's sitelock.
      Object.defineProperty(response, "url", { value: url.href });
      return response;
    }
    console.warn("[blast-rage] missing local asset:", url.pathname);
    return { status: 404, body: "" };
  },
);

session.on("host-changed", (hostId, isHost) => console.log("[blast-rage] host:", hostId, isHost ? "(us)" : ""));

const ruffleSource = window.RufflePlayer.newest();
const player = (ruffleSource.createPlayerElement ?? ruffleSource.createPlayer)!.call(ruffleSource);
document.getElementById("player-slot")!.appendChild(player);
(player.ruffle?.() ?? player).load!({
  url: "http://www.xgenstudios.com/blast-rage-online/BlastRageOnline.swf",
  base: "http://www.xgenstudios.com/blast-rage-online/",
  upgradeToHttps: false,
  allowNetworking: "all",
  allowScriptAccess: true,
  autoplay: "on",
  unmuteOverlay: "hidden",
  splashScreen: false,
  letterbox: "on",
  scale: "showAll",
  forceScale: true,
  logLevel: debug ? "info" : "error",
  ...session.ruffleConfig(),
});

window.addEventListener("beforeunload", () => {
  accountSync?.dispose();
  session.leave();
  net.dispose();
});
