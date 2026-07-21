import {
  defineGame,
  type GameDefinition,
  type GameServer,
  type GameServerContext,
  type MessageSocket,
  type Socket,
  xmlSocket,
} from "../../flashnet/index.ts";

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

interface PlayerRec {
  playerId: string; // bridge peer id
  name: string;
  wins: number;
  loses: number;
  draws: number;
  alive: boolean;
  challengeAll: boolean;
  freestyleRequested: boolean;
  challenged: string[]; // names, mirrors C# challengedPlayers
  matchWith: string | null; // enemy name; both sides pointing at each other = the C# Match
}

interface Client {
  playerId: string;
  conn: MessageSocket<string> | null;
  player: PlayerRec | null; // null until <auth/> succeeded
}

interface State {
  players: PlayerRec[];
}

/** Ingame tags the server relays verbatim to the enemy (see Game.cs). */
const RELAY_TAGS = new Set([
  "die",
  "playAgain",
  "10",
  "11",
  "12",
  "14",
  "16",
  "17",
  "18",
  "19",
]);

/** Freestyle map from Game.cs, sent on mutual !fs. */
const FREESTYLE_POSITIONS =
  "3:0,5:0,8:1,1:2,2:2,3:2,7:2,2:3,4:3,8:3,10:3,5:4,6:4,10:4,11:4,4:5,6:5,8:5,0:6,2:6,4:6,6:6,8:6,10:6,11:6,2:7,4:7,8:7,12:7,4:8,8:8,9:8,10:8,8:9,3:10,4:10,6:10,9:10";

export interface BomberpenguOptions {
  /** host:port the SWF connects to via its `surl`/`sport` flashvars. Default: 'localhost:4444'. */
  endpoint?: string;
  /** Message-of-the-day, sent as a System chat line after login. */
  motd?: string;
  debug?: boolean;
}

export function bomberpengu(options: BomberpenguOptions = {}): GameDefinition {
  return defineGame({
    id: "bomberpengu",
    endpoints: [options.endpoint ?? "localhost:4444"],
    statefulMigration: true,
    createServer: (ctx) => new BomberpenguServer(ctx, options),
  });
}

export class BomberpenguServer implements GameServer {
  #clients = new Map<string, Client>(); // by playerId
  #leftNotices: string[] = []; // players pruned during migration; delivered on resume
  #options: BomberpenguOptions;

  #ctx: GameServerContext;

  constructor(ctx: GameServerContext, options: BomberpenguOptions) {
    this.#ctx = ctx;
    this.#options = options;
  }

  // -- lifecycle --------------------------------------------------------------

  onConnection(socket: Socket, playerId: string): void {
    const existing = this.#clients.get(playerId);
    if (existing) this.#userLeft(existing); // fresh connect from the same peer replaces the session
    const client: Client = { playerId, conn: null, player: null };
    this.#clients.set(playerId, client);
    this.#bind(client, socket);
  }

  /** Socket re-attached after host migration: resume mid-protocol, say nothing. */
  onResume(socket: Socket, playerId: string): void {
    const client = this.#clients.get(playerId);
    if (!client) {
      // We have no trace of this player (snapshot predated their auth, or they
      // authed against a short-lived split-brain host). We can't make the SWF
      // re-send <auth/>, so fail visibly - a reload gives them a clean session.
      socket.close();
      return;
    }
    client.conn?.close();
    this.#bind(client, socket);
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
      players: [...this.#clients.values()].flatMap((
        c,
      ) => (c.player ? [c.player] : [])),
    };
  }

  loadState(state: unknown): void {
    const snapshot = state as State;
    const present = new Set([this.#ctx.selfId, ...this.#ctx.session.peers]);
    this.#clients.clear();
    for (const player of snapshot.players ?? []) {
      if (present.has(player.playerId)) {
        this.#clients.set(player.playerId, {
          playerId: player.playerId,
          conn: null,
          player: { ...player },
        });
      } else {
        this.#leftNotices.push(player.name); // e.g. the crashed host's own player
      }
    }
    // Departed players also disappear from challenge lists, like in UserLeft.
    for (const client of this.#clients.values()) {
      if (client.player) {
        client.player.challenged = client.player.challenged.filter((n) =>
          this.#byName(n)
        );
      }
    }
    this.#log(
      "state restored:",
      this.#clients.size,
      "players; departed:",
      this.#leftNotices.join(",") || "-",
    );
  }

  dispose(): void {
    for (const client of this.#clients.values()) client.conn?.close();
    this.#clients.clear();
  }

  // -- wiring -----------------------------------------------------------------

  #bind(client: Client, socket: Socket): void {
    const conn = xmlSocket(socket);
    client.conn = conn;
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
      if (client.conn === conn) this.#userLeft(client); // stale conns replaced on resume don't count
    });
    conn.on(
      "error",
      (err) => this.#log("framing error", client.playerId, String(err)),
    );
  }

  // -- protocol (port of Game.cs OnXml/AllowUserJoin/UserJoined/UserLeft) -------

  #onXml(client: Client, xml: XmlMessage, xmlString: string): void {
    const tag = xml.tag;
    if (tag === "beat") return; // SWF heartbeat, never forwarded

    if (tag === "auth") return this.#onAuth(client, xml);
    const player = client.player;
    if (!player) return; // everything else requires auth

    switch (tag) {
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

      case "challenge": {
        const target = this.#byName(xml.attrs["name"] ?? "");
        if (!target) return;
        player.challenged.push(target.name);
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

      case "startGame": {
        const target = this.#byName(xml.attrs["name"] ?? "");
        if (!target) return;
        const sameMatch = player.matchWith === target.name &&
          target.matchWith === player.name;
        if (
          !sameMatch && (player.matchWith !== null || target.matchWith !== null)
        ) return; // C#: player.match != targetPlayer.match
        if (!sameMatch) {
          player.matchWith = target.name;
          target.matchWith = player.name;
        }
        for (const participant of [player, target]) {
          participant.challengeAll = false;
          // Retract every outstanding challenge of both participants - a
          // bystander must not be able to "accept" into a running match.
          // (Gap in the original Game.cs: requests stayed open, the acceptor's
          // SWF then started the game locally for himself alone.)
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
        this.#sendTo(target, buildXml("startGame", { name: player.name }));
        for (const p of [player, target]) {
          p.alive = true; // Match.Start() -> Spawn()
          p.freestyleRequested = false;
        }
        // Tell the lobby that both switched to in-match state ("3", combined
        // with challenge prefixes to "13"/"23"). Also missing in the original,
        // which only sent playerUpdate on toRoom - players stayed green.
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
        return this.#publish();
      }

      case "winGame":
        if (player.matchWith) player.wins++;
        return this.#publish();

      case "drawGame":
        if (player.matchWith) player.draws++;
        return this.#publish();

      case "msgPlayer":
      case "msgAll":
        return this.#onChat(player, xml.attrs["msg"] ?? "");

      case "surrender": {
        if (!player.matchWith) return;
        const enemy = this.#enemy(player);
        this.#die(player);
        const winner = enemy?.name ?? "";
        this.#sendTo(player, buildXml("surrender", { winner }));
        if (enemy) this.#sendTo(enemy, buildXml("surrender", { winner }));
        return this.#publish();
      }

      case "ping":
        return this.#sendTo(player, "<pong/>");
    }

    if (tag === "die") {
      // C# handles die (stats, draw detection) AND lets it fall through to the relay.
      if (player.matchWith && player.alive) {
        this.#die(player);
        const enemy = this.#enemy(player);
        if (enemy && !enemy.alive) {
          player.draws++;
          enemy.draws++;
          this.#sendTo(player, "<draw />");
          this.#sendTo(enemy, "<draw />");
        }
        this.#publish();
      }
    }

    if (RELAY_TAGS.has(tag)) {
      const enemy = player.matchWith ? this.#enemy(player) : null;
      if (enemy) this.#sendTo(enemy, xmlString);
      return;
    }

    this.#log("unhandled:", xmlString);
  }

  /** AllowUserJoin + UserJoined, driven by the SWF's <auth/> instead of PlayerIO joinData. */
  #onAuth(client: Client, xml: XmlMessage): void {
    const name = xml.attrs["name"] ?? "";
    if (client.player) {
      if (name !== client.player.name) this.#kick(client, "Name mismatch!");
      return;
    }
    if (name === "") return this.#kick(client, "Missing name!");
    const holder = this.#byName(name);
    if (holder && holder.playerId !== client.playerId) {
      // Newest-wins: evict the current holder and let the newcomer join.
      // This is what makes F5-refreshes work - the new tab auths while the
      // crashed peer's ghost record still lingers (its peer-leave arrives
      // late). The price: a genuine name clash disconnects the older session.
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
      wins: 0,
      loses: 0,
      draws: 0,
      alive: false,
      challengeAll: false,
      freestyleRequested: false,
      challenged: [],
      matchWith: null,
    };
    client.player = player;

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
    this.#sendTo(player, userList);
    if (this.#options.motd) {
      this.#sendChat(player, "System", this.#options.motd);
    }
    this.#publish();
  }

  #onChat(player: PlayerRec, msg: string): void {
    if (msg === "") return;
    if (msg.startsWith("!")) {
      if (msg === "!h" || msg === "!help") return this.#showHelp(player);
      if (msg === "!fs" || msg === "!freestyle") {
        return this.#requestFreestyle(player);
      }
      if (msg === "!bug") {
        return this.#sendChat(
          player,
          "System",
          "Report bugs at: https://github.com/freehuntx/flashback/issues",
        );
      }
      return;
    }
    if (player.matchWith) {
      const enemy = this.#enemy(player);
      if (enemy) this.#sendChat(enemy, player.name, msg);
    } else {
      for (const other of this.#players()) {
        if (other === player || other.matchWith) continue;
        this.#sendChat(other, player.name, msg);
      }
    }
  }

  #requestFreestyle(player: PlayerRec): void {
    const enemy = this.#enemy(player);
    if (
      !player.alive || !player.matchWith || !enemy || player.freestyleRequested
    ) return;
    player.freestyleRequested = true;

    if (!enemy.freestyleRequested) {
      this.#sendChat(player, "System", "You requested freestyle");
      this.#sendChat(
        enemy,
        "System",
        "Your opponent requested freestyle. Type !fs to agree",
      );
    } else {
      for (const p of [player, enemy]) {
        this.#sendChat(p, "System", "Starting freestyle!");
        this.#sendTo(p, '<16 s="26" />');
        for (const item of FREESTYLE_POSITIONS.split(",")) {
          const [xp, yp] = item.split(":");
          this.#sendTo(
            p,
            buildXml("17", { c: "0000", x: 0, y: 0, xp: xp!, yp: yp! }),
          );
        }
      }
    }
    this.#publish();
  }

  #showHelp(player: PlayerRec): void {
    this.#sendChat(player, "!fs|!freestyle", "Vote for a freestyle round");
    this.#sendChat(player, "!bug", "Report a bug");
    this.#sendChat(player, "!h|!help", "Show this help");
  }

  /** Port of C# UserLeft + connection teardown. */
  #userLeft(client: Client): void {
    if (this.#clients.get(client.playerId) !== client) return;
    this.#clients.delete(client.playerId);
    client.conn?.close();
    const player = client.player;
    if (!player) return;
    for (const other of this.#players()) {
      other.challenged = other.challenged.filter((n) => n !== player.name);
      this.#sendTo(other, buildXml("playerLeft", { name: player.name }));
    }
    this.#publish();
  }

  // -- C# Player helpers --------------------------------------------------------

  #die(player: PlayerRec): void {
    if (!player.matchWith || !player.alive) return;
    player.alive = false;
    player.loses++;
  }

  #leaveMatch(player: PlayerRec): void {
    // C#: match.players.Remove(player); the enemy stays "InMatch" until their own toRoom.
    player.matchWith = null;
  }

  #enemy(player: PlayerRec): PlayerRec | null {
    if (!player.matchWith) return null;
    const other = this.#byName(player.matchWith);
    return other && other.matchWith === player.name ? other : null;
  }

  #state(of: PlayerRec, asking: PlayerRec): string {
    if (of === asking) return "5";
    let state = of.matchWith ? "3" : "";
    if (of.challengeAll) state = "1" + state;
    else if (asking.challengeAll) state = "2" + state;
    else if (state === "") state = "0";
    return state;
  }

  // -- plumbing -------------------------------------------------------------------

  #players(): PlayerRec[] {
    return [...this.#clients.values()].flatMap((
      c,
    ) => (c.player ? [c.player] : []));
  }

  #byName(name: string): PlayerRec | null {
    if (!name) return null;
    for (const client of this.#clients.values()) {
      if (client.player?.name === name) return client.player;
    }
    return null;
  }

  #sendChat(recipient: PlayerRec, sender: string, msg: string): void {
    this.#sendTo(
      recipient,
      buildXml(recipient.matchWith ? "msgPlayer" : "msgAll", {
        name: sender,
        msg,
      }),
    );
  }

  #sendTo(player: PlayerRec, xml: string): void {
    const client = this.#clients.get(player.playerId);
    if (client) this.#send(client, xml);
  }

  #send(client: Client, xml: string): void {
    if (!client.conn || client.conn.closed) return;
    this.#log("->", client.playerId, xml);
    client.conn.send(xml.trim()); // the SWF reads input.lastChild - trailing "\n" would shadow the element
  }

  #kick(client: Client, reason: string): void {
    this.#send(client, `<errorMsg>${escapeXml(reason)}</errorMsg>`);
    client.conn?.close();
  }

  #publish(): void {
    this.#ctx.publishState();
  }

  #log(...args: unknown[]): void {
    if (this.#options.debug) console.log("[bomberpengu]", ...args);
  }
}

function skill(player: PlayerRec): string {
  return `${player.wins}/${player.loses}/${player.draws}`;
}
