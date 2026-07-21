import {
  defineGame,
  type GameDefinition,
  type GameServer,
  type GameServerContext,
  type MessageSocket,
  type Socket,
  xmlSocket,
} from "../../flashnet/index.ts";

/**
 * Minigolf: Tropical Island (qplaygames) - server emulation.
 *
 * Reconstructed from the SWF dump (Connector.as, Game.as, MyBall.as, ...).
 * The SWF opens TWO XMLSockets:
 *   - the game socket (Connector, flashvars surl/sport): lobby + matches
 *   - the lobby chat socket (ChatBoxPR, flashvars csurl/csport): msgAll relay
 *
 * Client -> server (game socket):
 *   <auth name version hash/>          login
 *   <beat/>                            heartbeat, ignored
 *   <challenge name/> <remChallenge name/> <challengeAll/> <remChallengeAll/>
 *   <startGame name/>                  accept a challenge / rematch
 *   <clientInitiated/>                 game frame loaded, ready for startLevel
 *   <turn x y p r fp><flip n f/>*</turn>  the current player shot
 *   <ready x y/>                       my ball stopped rolling (both clients send this)
 *   <pocketed/>                        my ball fell into the hole
 *   <nextLevel/>                       debug: skip level
 *   <surrender/> <playAgain/> <toRoom/>
 *   <msgPlayer name msg/>              in-match chat -> opponent
 *   <msgAll name msg/>                 "#cgs "-prefixed lobby chat via game socket
 *
 * Server -> client (game socket):
 *   <config .../> <userList><user name skill state/>*</userList>
 *   <newPlayer/> <playerUpdate/> <playerLeft/> <request/> <remRequest/>
 *   <startGame name/>                  match starts, you shoot second
 *   <startGame2 name/>                 match starts, you shoot first
 *   <acceptFail name msg/>             accept didn't go through
 *   <startLevel nr pn t/>              load level nr; pn shoots first; t = turn ms
 *   <turn .../>                        opponent's shot, relayed verbatim
 *   <nextTurn n t x1 y1 x2 y2 tr1 tr2/>  n shoots next; x1/y1 = n's ball, x2/y2 = other (0 = keep)
 *   <countTurn n/>                     penalty stroke for n (turn timeout)
 *   <endGame winner/>                  winner="" means draw
 *   <surrender winner/> <playAgain/> <msgPlayer/> <msgAll/> <errorMsg>text</errorMsg>
 *
 * skill string (Player.as): "won/lost/drawn/levels/swings".
 */

export interface XmlMessage {
  tag: string;
  attrs: Record<string, string>;
}

const TAG_RE = /^<\s*([\w:.-]+)((?:\s+[\w:.-]+\s*=\s*"[^"]*")*)\s*\/?\s*>/;
const ATTR_RE = /([\w:.-]+)\s*=\s*"([^"]*)"/g;

export function parseXml(text: string): XmlMessage | null {
  const match = TAG_RE.exec(text.trim());
  if (!match) return null;
  const attrs: Record<string, string> = {};
  for (const [, name, value] of match[2]!.matchAll(ATTR_RE)) {
    attrs[name!] = unescapeXml(value!);
  }
  return { tag: match[1]!, attrs };
}

export function buildXml(
  tag: string,
  attrs: Record<string, string | number> = {},
): string {
  const parts = Object.entries(attrs).map(([key, value]) =>
    `${key}="${escapeXml(String(value))}"`
  );
  return parts.length > 0 ? `<${tag} ${parts.join(" ")} />` : `<${tag} />`;
}

const escapeXml = (s: string) =>
  s.replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;").replace(
    /"/g,
    "&quot;",
  );
const unescapeXml = (s: string) =>
  s.replace(/&quot;/g, '"').replace(/&gt;/g, ">").replace(/&lt;/g, "<").replace(
    /&amp;/g,
    "&",
  );

// -- Config.as ---------------------------------------------------------------

const NUM_LEVELS = 12;
const MAX_HITS_PER_LEVEL = 12;
const NEXT_LEVEL_PAUSE_MS = 1500;

interface PlayerRec {
  playerId: string; // bridge peer id
  name: string;
  won: number;
  lost: number;
  drawn: number;
  levels: number; // pocketed holes, lifetime
  swings: number; // shots taken, lifetime
  challengeAll: boolean;
  challenged: string[]; // names I have an open challenge against
  matchWith: string | null; // opponent name; both sides pointing at each other = a match
}

type MatchPhase =
  | "awaitInit" // startGame(2) sent, waiting for both <clientInitiated/>
  | "awaitTurn" // startLevel/nextTurn sent, waiting for the current player's <turn>
  | "rolling" // turn relayed, waiting for <ready/> from both clients
  | "betweenLevels" // both done, next startLevel scheduled
  | "finished"; // endGame/surrender sent; afterMatch screen (playAgain possible)

interface Position {
  x: number;
  y: number;
}

interface MatchSide {
  name: string;
  initiated: boolean; // sent <clientInitiated/> for the current match
  ready: boolean; // sent <ready/> for the current shot
  pos: Position | null; // last reported own-ball position (null = unknown/at start)
  done: boolean; // pocketed or stroke-capped for the current level
  levelStrokes: number;
  totalStrokes: number;
}

interface MatchRec {
  sides: [MatchSide, MatchSide];
  phase: MatchPhase;
  level: number;
  starter: string; // who shoots first on the current level (alternates)
  turn: string; // whose <turn> we're waiting for during awaitTurn
}

interface Client {
  playerId: string;
  game: MessageSocket<string> | null;
  chat: MessageSocket<string> | null;
  chatName: string | null; // name from the chat socket's own <auth/>
  player: PlayerRec | null; // null until <auth/> on the game socket succeeded
}

interface State {
  players: PlayerRec[];
  matches: MatchRec[];
  /** playerId -> name authed on the chat socket (survives migration - the SWF won't re-auth). */
  chatNames: Record<string, string>;
}

export interface MinigolfOptions {
  /** host:port of the game socket (SWF flashvars surl/sport). Default: 'localhost:6926'. */
  endpoint?: string;
  /** host:port of the lobby chat socket (SWF flashvars csurl/csport). Default: 'localhost:6900'. */
  chatEndpoint?: string;
  /** Time per turn in ms (shown as the ingame countdown). Default: 60000. */
  turnTimeMs?: number;
  /** Message-of-the-day, shown as a System line in the lobby chat after login. */
  motd?: string;
  debug?: boolean;
}

export function minigolf(options: MinigolfOptions = {}): GameDefinition {
  return defineGame({
    id: "minigolf-tropical-island",
    endpoints: [
      options.endpoint ?? "localhost:6926",
      options.chatEndpoint ?? "localhost:6900",
    ],
    statefulMigration: true,
    createServer: (ctx) => new MinigolfServer(ctx, options),
  });
}

export class MinigolfServer implements GameServer {
  #clients = new Map<string, Client>(); // by playerId
  #matches = new Set<MatchRec>();
  #timers = new Map<MatchRec, ReturnType<typeof setTimeout>>();
  #leftNotices: string[] = []; // players pruned during migration; delivered on resume
  #options: MinigolfOptions;
  #chatPort: number;
  #ctx: GameServerContext;

  constructor(ctx: GameServerContext, options: MinigolfOptions) {
    this.#ctx = ctx;
    this.#options = options;
    this.#chatPort = portOf(options.chatEndpoint ?? "localhost:6900");
  }

  get #turnTime(): number {
    return this.#options.turnTimeMs ?? 60000;
  }

  // -- lifecycle --------------------------------------------------------------

  onConnection(socket: Socket, playerId: string): void {
    let client = this.#clients.get(playerId);
    if (socket.port === this.#chatPort) {
      if (!client) {
        client = this.#newClient(playerId);
        this.#clients.set(playerId, client);
      }
      client.chat?.close();
      this.#bindChat(client, socket);
      return;
    }
    // A fresh game connect from the same peer replaces the whole session.
    if (client?.player || client?.game) {
      this.#userLeft(client, { keepChat: true });
      client = this.#clients.get(playerId); // #userLeft may have re-parked the chat conn
    }
    if (!client) {
      client = this.#newClient(playerId);
      this.#clients.set(playerId, client);
    }
    this.#bindGame(client, socket);
  }

  /** Socket re-attached after host migration: resume mid-protocol, say nothing. */
  onResume(socket: Socket, playerId: string): void {
    const client = this.#clients.get(playerId);
    if (socket.port === this.#chatPort) {
      if (!client) return socket.close();
      client.chat?.close();
      this.#bindChat(client, socket);
      return;
    }
    if (!client || !client.player) {
      // Snapshot predated this player's auth (or split-brain host). The SWF
      // won't re-send <auth/>, so fail visibly - a reload gives a clean session.
      socket.close();
      return;
    }
    client.game?.close();
    this.#bindGame(client, socket);
    // The only thing the SWF missed for sure: players who vanished with the
    // old host - unless they re-joined in the meantime (refresh!).
    for (const name of this.#leftNotices) {
      if (!this.#byName(name)) {
        this.#send(client, buildXml("playerLeft", { name }));
      }
    }
  }

  onPlayerLeave(playerId: string): void {
    const client = this.#clients.get(playerId);
    if (client) this.#userLeft(client);
  }

  saveState(): State {
    return {
      players: [...this.#clients.values()].flatMap((c) =>
        c.player ? [c.player] : []
      ),
      matches: [...this.#matches],
      chatNames: Object.fromEntries(
        [...this.#clients.values()].flatMap((c) =>
          c.chatName !== null ? [[c.playerId, c.chatName] as const] : []
        ),
      ),
    };
  }

  loadState(state: unknown): void {
    const snapshot = state as State;
    const present = new Set([this.#ctx.selfId, ...this.#ctx.session.peers]);
    this.#clients.clear();
    for (const player of snapshot.players ?? []) {
      if (present.has(player.playerId)) {
        const client = this.#newClient(player.playerId);
        client.player = { ...player };
        this.#clients.set(player.playerId, client);
      } else {
        this.#leftNotices.push(player.name);
      }
    }
    for (const [playerId, name] of Object.entries(snapshot.chatNames ?? {})) {
      if (!present.has(playerId)) continue;
      let client = this.#clients.get(playerId);
      if (!client) {
        client = this.#newClient(playerId);
        this.#clients.set(playerId, client);
      }
      client.chatName = name;
    }
    // Departed players disappear from challenge lists.
    for (const client of this.#clients.values()) {
      if (client.player) {
        client.player.challenged = client.player.challenged.filter((n) =>
          this.#byName(n)
        );
      }
    }
    this.#matches.clear();
    for (const match of snapshot.matches ?? []) {
      const [a, b] = match.sides;
      if (!this.#byName(a.name) || !this.#byName(b.name)) continue; // a side crashed with the old host; the survivor's SWF declares the win itself
      this.#matches.add(match);
      this.#armTimer(match); // fresh full timeout - better late than deadlocked
    }
    this.#log(
      "state restored:",
      this.#clients.size,
      "players,",
      this.#matches.size,
      "matches; departed:",
      this.#leftNotices.join(",") || "-",
    );
  }

  dispose(): void {
    for (const timer of this.#timers.values()) clearTimeout(timer);
    this.#timers.clear();
    for (const client of this.#clients.values()) {
      client.game?.close();
      client.chat?.close();
    }
    this.#clients.clear();
    this.#matches.clear();
  }

  // -- wiring -----------------------------------------------------------------

  #newClient(playerId: string): Client {
    return { playerId, game: null, chat: null, chatName: null, player: null };
  }

  #bindGame(client: Client, socket: Socket): void {
    const conn = xmlSocket(socket);
    client.game = conn;
    conn.on("message", (raw) => {
      const text = raw.trim();
      this.#log("<-", client.playerId, text);
      if (text.startsWith("<policy-file-request")) {
        socket.write(
          '<cross-domain-policy><allow-access-from domain="*" to-ports="*"/></cross-domain-policy>\0',
        );
        return;
      }
      const message = parseXml(text);
      if (message) this.#onXml(client, message, text);
    });
    conn.on("close", () => {
      if (client.game === conn) this.#userLeft(client, { keepChat: true });
    });
    conn.on(
      "error",
      (err) => this.#log("framing error", client.playerId, String(err)),
    );
  }

  #bindChat(client: Client, socket: Socket): void {
    const conn = xmlSocket(socket);
    client.chat = conn;
    conn.on("message", (raw) => {
      const text = raw.trim();
      this.#log("<- chat", client.playerId, text);
      if (text.startsWith("<policy-file-request")) {
        socket.write(
          '<cross-domain-policy><allow-access-from domain="*" to-ports="*"/></cross-domain-policy>\0',
        );
        return;
      }
      const message = parseXml(text);
      if (message) this.#onChatXml(client, message);
    });
    conn.on("close", () => {
      if (client.chat === conn) {
        client.chat = null;
        client.chatName = null;
        this.#pruneClient(client);
      }
    });
    conn.on(
      "error",
      (err) => this.#log("chat framing error", client.playerId, String(err)),
    );
  }

  // -- lobby chat socket (ChatBoxPR.as) ---------------------------------------

  #onChatXml(client: Client, xml: XmlMessage): void {
    switch (xml.tag) {
      case "beat":
        return;
      case "auth": {
        client.chatName = xml.attrs["name"] ?? "";
        if (this.#options.motd) {
          this.#sendChatSocket(
            client,
            buildXml("msgAll", { name: "System", msg: this.#options.motd }),
          );
        }
        return;
      }
      case "msgAll": {
        if (client.chatName === null) return; // chat requires its own auth
        const name = xml.attrs["name"] ?? client.chatName;
        const msg = xml.attrs["msg"] ?? "";
        if (msg === "") return;
        const line = buildXml("msgAll", { name, msg });
        for (const other of this.#clients.values()) {
          if (other === client) continue; // the sender's SWF already echoed locally
          this.#sendChatSocket(other, line);
        }
        return;
      }
    }
    this.#log("unhandled chat:", xml.tag);
  }

  // -- game socket protocol (Connector.as counterpart) ------------------------

  #onXml(client: Client, xml: XmlMessage, xmlString: string): void {
    const tag = xml.tag;
    if (tag === "beat") return; // SWF heartbeat, never forwarded

    if (tag === "auth") return this.#onAuth(client, xml);
    const player = client.player;
    if (!player) return; // everything else requires auth

    switch (tag) {
      // -- lobby ---------------------------------------------------------------
      case "challenge": {
        const target = this.#byName(xml.attrs["name"] ?? "");
        if (!target || target === player) return;
        if (!player.challenged.includes(target.name)) {
          player.challenged.push(target.name);
        }
        this.#sendTo(target, buildXml("request", { name: player.name }));
        return this.#publish();
      }

      case "remChallenge": {
        const targetName = xml.attrs["name"] ?? "";
        if (!player.challenged.includes(targetName)) return;
        player.challenged = player.challenged.filter((n) => n !== targetName);
        const target = this.#byName(targetName);
        if (target) {
          this.#sendTo(target, buildXml("remRequest", { name: player.name }));
        }
        return this.#publish();
      }

      case "challengeAll": {
        if (player.challengeAll) return;
        player.challengeAll = true;
        for (const other of this.#players()) {
          if (other === player || player.challenged.includes(other.name)) {
            continue;
          }
          player.challenged.push(other.name);
          this.#sendTo(other, buildXml("request", { name: player.name }));
        }
        return this.#publish();
      }

      case "remChallengeAll": {
        if (!player.challengeAll) return;
        player.challengeAll = false;
        for (const name of player.challenged) {
          const target = this.#byName(name);
          if (target) {
            this.#sendTo(target, buildXml("remRequest", { name: player.name }));
          }
        }
        player.challenged = [];
        return this.#publish();
      }

      case "startGame":
        return this.#onStartGame(player, xml.attrs["name"] ?? "");

      // -- match flow ----------------------------------------------------------
      case "clientInitiated": {
        const match = this.#matchOf(player);
        if (!match || match.phase !== "awaitInit") return;
        this.#side(match, player.name)!.initiated = true;
        if (match.sides.every((s) => s.initiated)) {
          this.#startLevel(match, 1);
        }
        return this.#publish();
      }

      case "turn": {
        const match = this.#matchOf(player);
        if (
          !match || match.phase !== "awaitTurn" || match.turn !== player.name
        ) return;
        const side = this.#side(match, player.name)!;
        side.levelStrokes++;
        side.totalStrokes++;
        player.swings++;
        match.phase = "rolling";
        for (const s of match.sides) s.ready = false;
        // Relay verbatim: the opponent's Connector triggers remoteShoot with
        // the exact x/y/p/r/fp + <flip/> children of this shot.
        const enemy = this.#enemy(player);
        if (enemy) this.#sendTo(enemy, xmlString);
        this.#armTimer(match); // rolling watchdog
        return this.#publish();
      }

      case "ready": {
        const match = this.#matchOf(player);
        if (!match || match.phase !== "rolling") return;
        const side = this.#side(match, player.name)!;
        side.ready = true;
        const x = Number(xml.attrs["x"] ?? "0");
        const y = Number(xml.attrs["y"] ?? "0");
        if (!side.done && Number.isFinite(x) && Number.isFinite(y)) {
          side.pos = { x: Math.round(x), y: Math.round(y) };
        }
        if (match.sides.every((s) => s.ready)) this.#resolveShot(match);
        return this.#publish();
      }

      case "pocketed": {
        const match = this.#matchOf(player);
        if (
          !match || (match.phase !== "rolling" && match.phase !== "awaitTurn")
        ) return;
        const side = this.#side(match, player.name)!;
        if (side.done) return;
        side.done = true;
        side.pos = null;
        player.levels++;
        return this.#publish();
      }

      case "nextLevel": { // debug hotkey in the SWF
        const match = this.#matchOf(player);
        if (!match || match.phase === "finished") return;
        this.#advanceLevel(match, 0);
        return this.#publish();
      }

      case "surrender": {
        const match = this.#matchOf(player);
        if (!match || match.phase === "finished") return;
        const enemy = this.#enemy(player);
        player.lost++;
        if (enemy) enemy.won++;
        const winner = enemy?.name ?? "";
        match.phase = "finished";
        this.#clearTimer(match);
        this.#sendTo(player, buildXml("surrender", { winner }));
        if (enemy) this.#sendTo(enemy, buildXml("surrender", { winner }));
        this.#broadcastSkill(player);
        if (enemy) this.#broadcastSkill(enemy);
        return this.#publish();
      }

      case "playAgain": {
        const enemy = this.#enemy(player);
        if (enemy) this.#sendTo(enemy, "<playAgain />");
        return;
      }

      case "toRoom": {
        if (!player.matchWith) return;
        this.#leaveMatch(player);
        for (const other of this.#players()) {
          if (other === player) continue;
          this.#sendTo(
            other,
            buildXml("playerUpdate", {
              name: player.name,
              skill: skill(player),
              state: this.#state(player, other),
            }),
          );
        }
        return this.#publish();
      }

      // -- chat ----------------------------------------------------------------
      case "msgPlayer": {
        const enemy = this.#enemy(player);
        if (enemy) {
          this.#sendTo(
            enemy,
            buildXml("msgPlayer", {
              name: player.name,
              msg: xml.attrs["msg"] ?? "",
            }),
          );
        }
        return;
      }

      case "msgAll": { // reaches the game socket via the "#cgs " chat prefix
        const msg = xml.attrs["msg"] ?? "";
        if (msg === "") return;
        for (const other of this.#players()) {
          if (other === player || other.matchWith) continue;
          this.#sendTo(
            other,
            buildXml("msgAll", { name: player.name, msg }),
          );
        }
        return;
      }
    }

    this.#log("unhandled:", xmlString);
  }

  /** Login on the game socket, driven by the SWF's <auth/>. */
  #onAuth(client: Client, xml: XmlMessage): void {
    const name = xml.attrs["name"] ?? "";
    if (client.player) {
      if (name !== client.player.name) this.#kick(client, "Name mismatch!");
      return;
    }
    if (name === "") return this.#kick(client, "Missing name!");
    const holder = this.#byName(name);
    if (holder && holder.playerId !== client.playerId) {
      // Newest-wins (same as bomberpengu): evict the current holder so
      // F5-refreshes work - the new tab auths while the crashed peer's ghost
      // record still lingers. A holder evicted mid-match forfeits it, exactly
      // like a crash would (the opponent's SWF declares the win on playerLeft).
      const holderClient = this.#clients.get(holder.playerId);
      if (holderClient) {
        this.#send(
          holderClient,
          `<errorMsg>${escapeXml("Name taken by a new session!")}</errorMsg>`,
        );
        this.#userLeft(holderClient); // broadcasts playerLeft exactly once
      }
    }

    const player: PlayerRec = {
      playerId: client.playerId,
      name,
      won: 0,
      lost: 0,
      drawn: 0,
      levels: 0,
      swings: 0,
      challengeAll: false,
      challenged: [],
      matchWith: null,
    };
    client.player = player;

    // The original server pushed censor/ad config first (Connector "config").
    // Empty adConfigUrl/badWordsUrl keep AdManager and CensorManager inert.
    this.#send(
      client,
      buildXml("config", {
        adConfigUrl: "",
        badWordsUrl: "",
        replacementChar: "*",
        deleteLine: "false",
        floodLimit: "0",
      }),
    );

    let userList = "<userList>";
    for (const other of this.#players()) {
      if (other !== player) {
        this.#sendTo(
          other,
          buildXml("newPlayer", {
            name: player.name,
            skill: skill(player),
            state: this.#state(player, other),
          }),
        );
      }
      userList += buildXml("user", {
        name: other.name,
        skill: skill(other),
        state: this.#state(other, player),
      });
    }
    userList += "</userList>";
    this.#send(client, userList);

    // Apply any existing challengeAll flags to the newcomer
    let challenged = false;
    for (const other of this.#players()) {
      if (other === player) continue;
      if (other.challengeAll && !other.challenged.includes(player.name)) {
        other.challenged.push(player.name);
      }
      if (other.challenged.includes(player.name)) {
        challenged = true;
      }
    }
    if (challenged) {
      // The <userList> was sent before updating other.challenged, so the state
      // strings inside it are stale. Send a per-player update with the correct
      // state that now reflects the incoming challenge(s).
      for (const other of this.#players()) {
        if (other === player) continue;
        if (other.challenged.includes(player.name)) {
          this.#sendTo(player, buildXml("request", { name: other.name }));
          this.#sendTo(
            player,
            buildXml("playerUpdate", {
              name: other.name,
              skill: skill(other),
              state: this.#state(other, player),
            }),
          );
        }
      }
    }

    this.#publish();
  }

  /**
   * <startGame name/> - sent by the player who ACCEPTS a challenge (click on
   * a requesting player, ChallengeAll auto-accept, or PlayAgain after a
   * match). The server pairs them up and tells both to enter the game frame:
   * startGame2 = "you shoot first", startGame = "opponent shoots first".
   */
  #onStartGame(player: PlayerRec, targetName: string): void {
    const target = this.#byName(targetName);
    if (!target || target === player) {
      return this.#acceptFail(player, "Player is gone");
    }
    const rematch = player.matchWith === target.name &&
      target.matchWith === player.name;
    if (!rematch && (player.matchWith !== null || target.matchWith !== null)) {
      return this.#acceptFail(player, targetName + " is already playing");
    }

    if (rematch) {
      const old = this.#matchOf(player);
      if (old) {
        if (old.phase !== "finished") return; // still mid-match, ignore
        this.#clearTimer(old);
        this.#matches.delete(old);
      }
    } else {
      player.matchWith = target.name;
      target.matchWith = player.name;
    }

    for (const participant of [player, target]) {
      participant.challengeAll = false;
      // Retract outstanding challenges of both - a bystander must not be able
      // to "accept" into a running match.
      for (const challengedName of participant.challenged) {
        const challenged = this.#byName(challengedName);
        if (challenged && challenged !== player && challenged !== target) {
          this.#sendTo(
            challenged,
            buildXml("remRequest", { name: participant.name }),
          );
        }
      }
      participant.challenged = [];
    }

    const match: MatchRec = {
      sides: [newSide(player.name), newSide(target.name)],
      phase: "awaitInit",
      level: 1,
      starter: player.name, // the acceptor shoots first on level 1
      turn: player.name,
    };
    this.#matches.add(match);

    // Both sides switch to the game frame on receipt; the SWF's new Game
    // instance then answers with <clientInitiated/>.
    this.#sendTo(player, buildXml("startGame2", { name: target.name }));
    this.#sendTo(target, buildXml("startGame", { name: player.name }));

    // Tell the lobby that both are in-match now ("3" / "13" / "23").
    for (const participant of [player, target]) {
      for (const other of this.#players()) {
        if (other === participant) continue;
        this.#sendTo(
          other,
          buildXml("playerUpdate", {
            name: participant.name,
            skill: skill(participant),
            state: this.#state(participant, other),
          }),
        );
      }
    }
    this.#publish();
  }

  #acceptFail(player: PlayerRec, msg: string): void {
    this.#sendTo(player, buildXml("acceptFail", { name: "System", msg }));
  }

  // -- match state machine -----------------------------------------------------

  #startLevel(match: MatchRec, nr: number): void {
    match.level = nr;
    match.starter = nr === 1
      ? match.starter
      : this.#otherName(match, match.starter); // alternate who tees off
    match.turn = match.starter;
    match.phase = "awaitTurn";
    for (const side of match.sides) {
      side.done = false;
      side.ready = false;
      side.levelStrokes = 0;
      side.pos = null; // both balls respawn at the level's startPunkt (client-side)
    }
    const message = buildXml("startLevel", {
      nr,
      pn: match.starter,
      t: this.#turnTime,
    });
    for (const side of match.sides) this.#sendToName(side.name, message);
    this.#armTimer(match);
  }

  /** Both clients reported <ready/> after a shot - hand out the next turn. */
  #resolveShot(match: MatchRec): void {
    const shooter = this.#side(match, match.turn)!;
    if (!shooter.done && shooter.levelStrokes >= MAX_HITS_PER_LEVEL) {
      shooter.done = true; // stroke cap (Config.maxHitsPerLevel)
    }
    if (match.sides.every((s) => s.done)) {
      return this.#advanceLevel(match, NEXT_LEVEL_PAUSE_MS);
    }
    const other = this.#side(match, this.#otherName(match, match.turn))!;
    this.#nextTurn(match, other.done ? shooter.name : other.name);
  }

  #nextTurn(match: MatchRec, name: string): void {
    match.turn = name;
    match.phase = "awaitTurn";
    for (const side of match.sides) side.ready = false;
    const current = this.#side(match, name)!;
    const other = this.#side(match, this.#otherName(match, name))!;
    // x1/y1 belong to the ball of player `n`, x2/y2 to the other ball;
    // 0 means "leave as is" (pocketed balls stay parked off-board).
    const message = buildXml("nextTurn", {
      n: name,
      t: this.#turnTime,
      x1: current.pos?.x ?? 0,
      y1: current.pos?.y ?? 0,
      x2: other.pos?.x ?? 0,
      y2: other.pos?.y ?? 0,
      tr1: 0,
      tr2: 0,
    });
    for (const side of match.sides) this.#sendToName(side.name, message);
    this.#armTimer(match);
  }

  #advanceLevel(match: MatchRec, delayMs: number): void {
    if (match.level >= NUM_LEVELS) return this.#endGame(match);
    match.phase = "betweenLevels";
    this.#clearTimer(match);
    const nr = match.level + 1;
    const timer = setTimeout(() => {
      this.#timers.delete(match);
      if (this.#matches.has(match)) {
        this.#startLevel(match, nr);
        this.#publish();
      }
    }, delayMs);
    this.#timers.set(match, timer);
  }

  #endGame(match: MatchRec): void {
    match.phase = "finished";
    this.#clearTimer(match);
    const [a, b] = match.sides;
    const playerA = this.#byName(a.name);
    const playerB = this.#byName(b.name);
    let winner = "";
    if (a.totalStrokes < b.totalStrokes) winner = a.name;
    else if (b.totalStrokes < a.totalStrokes) winner = b.name;
    if (winner === "") {
      if (playerA) playerA.drawn++;
      if (playerB) playerB.drawn++;
    } else {
      const won = winner === a.name ? playerA : playerB;
      const lost = winner === a.name ? playerB : playerA;
      if (won) won.won++;
      if (lost) lost.lost++;
    }
    const message = buildXml("endGame", { winner });
    for (const side of match.sides) this.#sendToName(side.name, message);
    if (playerA) this.#broadcastSkill(playerA);
    if (playerB) this.#broadcastSkill(playerB);
  }

  /** Turn/rolling watchdog. The SWF disconnects itself after 2 idle turns. */
  #armTimer(match: MatchRec): void {
    this.#clearTimer(match);
    // Latency + ball travel time; scales down with short (test) turn clocks.
    const grace = Math.min(15000, Math.max(150, this.#turnTime / 4));
    const delay = match.phase === "awaitTurn"
      ? this.#turnTime + grace
      : grace * 2; // rolling: balls come to rest in well under 30s
    const timer = setTimeout(() => {
      this.#timers.delete(match);
      if (this.#matches.has(match)) {
        this.#onTimeout(match);
        this.#publish();
      }
    }, delay);
    this.#timers.set(match, timer);
  }

  #clearTimer(match: MatchRec): void {
    const timer = this.#timers.get(match);
    if (timer !== undefined) {
      clearTimeout(timer);
      this.#timers.delete(match);
    }
  }

  #onTimeout(match: MatchRec): void {
    if (match.phase === "awaitInit") {
      // A client never reached the game frame - abort back to a clean lobby
      // state; both SWFs are stuck otherwise.
      for (const side of match.sides) {
        const player = this.#byName(side.name);
        if (player) this.#leaveMatch(player);
      }
      return;
    }
    if (match.phase === "rolling") {
      // A <ready/> got lost - resolve with what we have.
      return this.#resolveShot(match);
    }
    if (match.phase !== "awaitTurn") return;
    // The current player let the clock run out: penalty stroke + pass the
    // turn (Connector's turnsInactive then disconnects repeat offenders).
    const side = this.#side(match, match.turn)!;
    side.levelStrokes++;
    side.totalStrokes++;
    const penalty = buildXml("countTurn", { n: side.name });
    for (const s of match.sides) this.#sendToName(s.name, penalty);
    if (!side.done && side.levelStrokes >= MAX_HITS_PER_LEVEL) side.done = true;
    if (match.sides.every((s) => s.done)) {
      return this.#advanceLevel(match, NEXT_LEVEL_PAUSE_MS);
    }
    const other = this.#side(match, this.#otherName(match, match.turn))!;
    this.#nextTurn(match, other.done ? side.name : other.name);
  }

  // -- leave / teardown --------------------------------------------------------

  #userLeft(client: Client, opts: { keepChat?: boolean } = {}): void {
    if (this.#clients.get(client.playerId) !== client) return;
    this.#clients.delete(client.playerId);
    client.game?.close();
    if (!opts.keepChat) client.chat?.close();
    const player = client.player;
    if (player) {
      const match = this.#matchOf(player);
      if (match) {
        // The opponent's SWF declares the win itself on playerLeft; keep the
        // stats in sync here (unless the match was already decided).
        const enemy = this.#enemy(player);
        if (match.phase !== "finished") {
          player.lost++;
          if (enemy) enemy.won++;
        }
        if (enemy) enemy.matchWith = null;
        this.#clearTimer(match);
        this.#matches.delete(match);
      }
      for (const other of this.#players()) {
        other.challenged = other.challenged.filter((n) => n !== player.name);
        this.#sendTo(other, buildXml("playerLeft", { name: player.name }));
      }
    }
    // A still-open chat socket re-parks under a fresh client record.
    if (opts.keepChat && client.chat && !client.chat.closed) {
      const parked = this.#newClient(client.playerId);
      parked.chat = client.chat;
      parked.chatName = client.chatName;
      this.#clients.set(client.playerId, parked);
    }
    this.#publish();
  }

  /** Drop a client record that carries neither a player nor any live socket. */
  #pruneClient(client: Client): void {
    if (this.#clients.get(client.playerId) !== client) return;
    if (client.player || client.game || client.chat) return;
    this.#clients.delete(client.playerId);
  }

  #leaveMatch(player: PlayerRec): void {
    const match = this.#matchOf(player);
    player.matchWith = null;
    if (!match) return;
    // The enemy stays "in match" until their own toRoom, but once BOTH are
    // out the record can go.
    const bothOut = match.sides.every(
      (s) => this.#byName(s.name)?.matchWith !== this.#otherName(match, s.name),
    );
    if (bothOut || match.phase !== "finished") {
      this.#clearTimer(match);
      this.#matches.delete(match);
      // Leaving mid-game (ToPR is only reachable from afterMatch, but be
      // safe): the abandoned opponent gets the win via surrender semantics.
      if (match.phase !== "finished") {
        const enemyName = this.#otherName(match, player.name);
        const enemy = this.#byName(enemyName);
        if (enemy && enemy.matchWith === player.name) {
          player.lost++;
          enemy.won++;
          this.#sendTo(enemy, buildXml("surrender", { winner: enemy.name }));
          this.#broadcastSkill(enemy);
        }
      }
    }
  }

  // -- helpers -----------------------------------------------------------------

  #matchOf(player: PlayerRec): MatchRec | null {
    for (const match of this.#matches) {
      if (match.sides.some((s) => s.name === player.name)) return match;
    }
    return null;
  }

  #side(match: MatchRec, name: string): MatchSide | null {
    return match.sides.find((s) => s.name === name) ?? null;
  }

  #otherName(match: MatchRec, name: string): string {
    return match.sides[0]!.name === name
      ? match.sides[1]!.name
      : match.sides[0]!.name;
  }

  #enemy(player: PlayerRec): PlayerRec | null {
    if (!player.matchWith) return null;
    const other = this.#byName(player.matchWith);
    return other && other.matchWith === player.name ? other : null;
  }

  /** Status string as PlayerRoom.as reads it: 0/1/2/3/13/23/5. */
  #state(of: PlayerRec, asking: PlayerRec): string {
    if (of === asking) return "5";
    let state = of.matchWith ? "3" : "";
    if (of.challenged.includes(asking.name)) state = "1" + state;
    else if (asking.challenged.includes(of.name)) state = "2" + state;
    else if (state === "") state = "0";
    return state;
  }

  #players(): PlayerRec[] {
    return [...this.#clients.values()].flatMap((c) =>
      c.player ? [c.player] : []
    );
  }

  #byName(name: string): PlayerRec | null {
    if (!name) return null;
    for (const client of this.#clients.values()) {
      if (client.player?.name === name) return client.player;
    }
    return null;
  }

  #broadcastSkill(player: PlayerRec): void {
    for (const other of this.#players()) {
      if (other === player) continue;
      this.#sendTo(
        other,
        buildXml("playerUpdate", {
          name: player.name,
          skill: skill(player),
          state: this.#state(player, other),
        }),
      );
    }
  }

  #sendToName(name: string, xml: string): void {
    const player = this.#byName(name);
    if (player) this.#sendTo(player, xml);
  }

  #sendTo(player: PlayerRec, xml: string): void {
    const client = this.#clients.get(player.playerId);
    if (client) this.#send(client, xml);
  }

  #send(client: Client, xml: string): void {
    if (!client.game || client.game.closed) return;
    this.#log("->", client.playerId, xml);
    client.game.send(xml.trim()); // the SWF reads input.lastChild - a trailing "\n" would shadow the element
  }

  #sendChatSocket(client: Client, xml: string): void {
    if (!client.chat || client.chat.closed) return;
    this.#log("-> chat", client.playerId, xml);
    client.chat.send(xml.trim());
  }

  #kick(client: Client, reason: string): void {
    // Connector reads errorMsg's text child (lastChild.nodeValue).
    this.#send(client, `<errorMsg>${escapeXml(reason)}</errorMsg>`);
    client.game?.close();
  }

  #publish(): void {
    this.#ctx.publishState();
  }

  #log(...args: unknown[]): void {
    if (this.#options.debug) console.log("[minigolf]", ...args);
  }
}

function newSide(name: string): MatchSide {
  return {
    name,
    initiated: false,
    ready: false,
    pos: null,
    done: false,
    levelStrokes: 0,
    totalStrokes: 0,
  };
}

/** Player.as splits pSkill on "/": won/lost/drawn/levels/swings. */
function skill(player: PlayerRec): string {
  return `${player.won}/${player.lost}/${player.drawn}/${player.levels}/${player.swings}`;
}

function portOf(endpoint: string): number {
  const idx = endpoint.lastIndexOf(":");
  return idx === -1 ? 0 : Number(endpoint.slice(idx + 1));
}
