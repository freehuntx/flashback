import { existsSync, readFileSync, statSync, cpSync } from "node:fs";
import { createRequire } from "node:module";
import { dirname, extname, join, normalize, resolve } from "node:path";
import { fileURLToPath } from "node:url";
import { defineConfig, type Plugin } from "vite";

const require = createRequire(import.meta.url);
const projectDir = dirname(fileURLToPath(import.meta.url));
// Directory of the @ruffle-rs/ruffle package (ruffle.js + wasm chunks).
const ruffleDir = dirname(require.resolve("@ruffle-rs/ruffle"));

const MIME: Record<string, string> = {
  ".js": "text/javascript",
  ".mjs": "text/javascript",
  ".wasm": "application/wasm",
  ".map": "application/json",
  ".json": "application/json",
};

/**
 * Ruffle loads its wasm relative to its own script URL, which doesn't play
 * well with bundling. The robust approach is self-hosting: serve the package
 * as-is under /ruffle/ in dev and copy it next to the build output.
 */
function ruffleStatic(): Plugin {
  return {
    name: "ruffle-static",
    configureServer(server) {
      server.middlewares.use("/ruffle", (req, res, next) => {
        const urlPath = normalize((req.url ?? "/").split("?")[0]!);
        const file = join(ruffleDir, urlPath);
        if (!file.startsWith(ruffleDir) || !existsSync(file) || !statSync(file).isFile()) return next();
        res.setHeader("Content-Type", MIME[extname(file)] ?? "application/octet-stream");
        res.end(readFileSync(file));
      });
    },
    closeBundle() {
      cpSync(ruffleDir, join(projectDir, "dist", "ruffle"), { recursive: true });
    },
  };
}

export default defineConfig({
  // GitHub Pages serves project sites under /<repo>/ - the deploy workflow
  // sets BASE_PATH accordingly. Local dev/build defaults to the root.
  base: process.env.BASE_PATH ?? "/",
  plugins: [ruffleStatic()],
  build: {
    target: "esnext", // top-level await in the game entrypoints
    rollupOptions: {
      // Multi-page app: the gallery plus one real page per game, so every
      // game has its own deep-linkable URL that works on static hosting.
      input: {
        gallery: resolve(projectDir, "index.html"),
        blastRage: resolve(projectDir, "games/blast-rage-online/index.html"),
        bomberpengu: resolve(projectDir, "games/bomberpengu/index.html"),
        minigolf: resolve(projectDir, "games/minigolf-tropical-island/index.html"),
        stickarena: resolve(projectDir, "games/stickarena-dimensions/index.html"),
        tinyTanks: resolve(projectDir, "games/tiny-tanks/index.html"),
      },
    },
  },
});
