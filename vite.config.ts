import react from '@vitejs/plugin-react'
import { viteStaticCopy } from 'vite-plugin-static-copy';
import { defineConfig } from 'vite'
import { fileURLToPath, URL } from 'node:url'

// https://vite.dev/config/
export default defineConfig({
  base: process.env.BASE_PATH || '/',
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
  server: {
    hmr: {
      host: 'localhost',
      protocol: 'ws',
      overlay: false
    }
  }
})
