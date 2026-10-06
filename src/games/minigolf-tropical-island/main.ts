import { createSession, trysteroBridge, VirtualNetwork } from "../../flashnet/index.ts";
import { joinRoom, selfId } from "@trystero-p2p/mqtt";
import { minigolf } from "./game.ts";

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

const net = new VirtualNetwork({ debug: params.has("debug") });
const session = await createSession(
  minigolf({
    endpoint: "localhost:6926", // must match the SWF's surl/sport flashvars
    chatEndpoint: "localhost:6900", // must match csurl/csport
    motd: params.get("motd") ?? undefined,
    debug: params.has("debug"),
  }),
  {
    net,
    bridge: trysteroBridge({
      selfId,
      room: joinRoom({ appId: "flashback-minigolf" }, roomCode),
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
  url: `${import.meta.env.BASE_URL}games/minigolf-tropical-island/game.swf`,
  autoplay: "on",
  unmuteOverlay: "hidden",
  preloader: false,
  splashScreen: false,
  logLevel: "error",
  letterbox: "on", // fullscreen page: clip to the stage, no off-stage junk
  parameters: {
    // Connector.as: game socket
    surl: "localhost",
    sport: 6926,
    // ChatBoxPR.as: lobby chat socket
    csurl: "localhost",
    csport: 6900,
    user: playerName,
    hash: "0",
    ext: "",
    extauth: "",
    defaultRoom: "",
    sound: 1,
  },
  ...session.ruffleConfig(),
});

window.addEventListener("beforeunload", () => {
  session.leave();
  net.dispose();
});
