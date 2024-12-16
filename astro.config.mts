import { defineConfig } from 'astro/config'
import viteDeepPublic from './plugins/vite-deep-public';
import suppressLog from './plugins/suppress-log';
import ruffle from './plugins/ruffle';

// https://astro.build/config
export default defineConfig({
  site: 'https://freehuntx.github.io',
  base: 'flashback',
  publicDir: 'public',
  vite: {
    plugins: [
      suppressLog([/Unsupported file type.*found. Prefix filename with an underscore/]),
      viteDeepPublic(),
      ruffle(`${import.meta.dirname}/node_modules/@ruffle-rs/ruffle`)
    ]
  }
})
