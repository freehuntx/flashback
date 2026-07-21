# Flashback

Multiplayer Flash classics, resurrected in the browser.

No game servers exist anymore - so Flashback doesn't need any. The original
SWF runs in [Ruffle](https://ruffle.rs), its socket and HTTP traffic is
intercepted in the page, and one player's browser acts as the game server.
Everyone else connects to it peer-to-peer via
[Trystero](https://github.com/dmotz/trystero) (WebRTC). If the host closes
their tab, the server state migrates to another player and the game keeps
going - the SWFs never notice a thing.

**Play it:** open the gallery, pick a game, share the URL (add
`?room=yourcode` to play in a private room). Every game has its own page, so
deep links work: `games/stickarena-dimensions/?room=friday-night`.

## Games

| Game | Players | Notes |
| --- | --- | --- |
| Stick Arena: Dimensions | 2-6 | Accounts, shop, cred tickets, vote-kicks - accounts persist in your browser (localStorage) |
| BomberPengu | 2 | Head-to-head bomberman duels |
| Minigolf: Tropical Island | 2-4 | 18 holes, lobby chat, rematches |

## Repository layout

```
index.html               The gallery (game boxes -> per-game pages)
games/<id>/index.html    One real page per game (deep-linkable, fullscreen)
src/flashnet/            The network lib: virtual sockets/HTTP, host election,
                         state migration, Trystero bridge
src/games/<id>/          Per-game server emulation (game.ts) + wiring (main.ts)
src/gallery/             Gallery UI + game registry
public/games/<id>/       Game assets (SWFs, maps, configs)
test/                    Protocol + migration integration tests (Node)
reference/               Reverse-engineering material (decompiled dumps)
.github/workflows/       GitHub Pages deployment
```

## Development

```
npm install
npm run dev        # gallery at http://localhost:5173, games under /games/<id>/
npm test           # lib smoke tests + per-game protocol/migration tests
npm run build      # typecheck + production build into dist/
```

Useful query params on game pages: `?room=<code>` (private room),
`&debug` (full packet log), `&name=<name>` where supported.

## Deployment

Pushing to `main`/`master` builds and deploys to GitHub Pages via
`.github/workflows/deploy.yml` (enable Pages with source "GitHub Actions" in
the repository settings once). The base path is derived from the repository
name automatically.

## Adding a game

1. Reverse-engineer the protocol (Ruffle + `&debug` logging is your friend;
   a community private-server implementation is gold).
2. Implement it as a `GameServer` in `src/games/<id>/game.ts` -
   `defineGame({ endpoints, statefulMigration, http, createServer })`.
3. Add wiring (`main.ts`), a page (`games/<id>/index.html`), assets
   (`public/games/<id>/`), a registry entry (`src/gallery/games.ts`), a Vite
   input (`vite.config.ts`) and an integration test (`test/<id>.test.mjs`).

All games belong to their original creators. Flashback exists so they can
still be played.
