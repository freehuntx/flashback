import react from '@vitejs/plugin-react'
import { viteStaticCopy } from 'vite-plugin-static-copy';
import { defineConfig } from 'vite'
import { fileURLToPath, URL } from 'node:url'

// Needed for hosting via github pages
const BASE_PATH = process.env.NODE_ENV === 'production' ? '/flashback' : ''

// https://vite.dev/config/
export default defineConfig({
  base: BASE_PATH,
  assetsInclude: ["**/*.swf"],
  resolve: {
    alias: {
      '@': fileURLToPath(new URL('./src', import.meta.url))
    }
  },
  plugins: [
    react(),
    viteStaticCopy({
      targets: [
        {
          src: 'node_modules/@ruffle-rs/ruffle',
          dest: '',
          rename: 'ruffle'
        }
      ]
    }),
  ],
})
