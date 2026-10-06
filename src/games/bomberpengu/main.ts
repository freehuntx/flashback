import { createSession, trysteroBridge, VirtualNetwork } from "../../flashnet/index.ts";
import { joinRoom, selfId } from "@trystero-p2p/mqtt";
import { bomberpengu } from "./game.ts";

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
  }
}

const params = new URLSearchParams(location.search);
const playerName = params.get("name") ??
  `Player${Math.floor(Math.random() * 98999 + 1000)}`;
const roomCode = params.get("room") ?? "lobby";
const transport = "trystero";

const net = new VirtualNetwork({ debug: params.has("debug") });
const session = await createSession(
  bomberpengu({
    endpoint: "localhost:4444", // must match the SWF's surl/sport flashvars
    motd: params.get("motd") ?? undefined,
    debug: params.has("debug"),
  }),
  {
    net,
    bridge: trysteroBridge({
      selfId,
      room: joinRoom({ appId: "flashback-bomberpengu" }, roomCode),
    }),
    settleMs: 4000,
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
  url: `${import.meta.env.BASE_URL}games/bomberpengu/game.swf`,
  autoplay: "on",
  unmuteOverlay: "hidden",
  preloader: false,
  splashScreen: false,
  logLevel: "error",
  letterbox: "on", // fullscreen page: clip to the stage, no off-stage junk
  parameters: {
    surl: "localhost",
    sport: 4444,
    sound: 1,
    user: playerName,
    hash: "1bf6093ea530924697ca9cebd7bf4abb",
  },
  ...session.ruffleConfig(),
});

window.addEventListener("beforeunload", () => {
  session.leave();
  net.dispose();
});
