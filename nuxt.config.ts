import fs from 'fs'
import path from 'path'
import { defineNuxtConfig } from 'nuxt/config'

const BASE_URL = (process.env.BASE_URL + '/').replace(/\/*$/, '/')

function findPublicFolders(dirPath: string): string[] {
  const folders: string[] = []
  const absoluteDirPath = path.resolve(dirPath)
  const items = fs.readdirSync(absoluteDirPath)

  items.forEach((item) => {
    const fullPath = path.join(absoluteDirPath, item)
    if (fs.statSync(fullPath).isDirectory()) {
      if (item === 'public') {
        folders.push(fullPath)
      }
      else {
        folders.push(...findPublicFolders(fullPath))
      }
    }
  })

  return folders
}

// Find all public folders in pages
const pagePublicFolders = findPublicFolders('pages').map((folder) => {
  const absolutePath = path.resolve(folder)
  const relativePath = path.relative(
    path.join(process.cwd(), 'pages'),
    path.dirname(absolutePath),
  )

  return {
    dir: absolutePath,
    baseURL: `${BASE_URL}${relativePath}`,
    fallthrough: true,
  }
})

// https://nuxt.com/docs/api/configuration/nuxt-config

export default defineNuxtConfig({
  modules: [
    '@nuxt/eslint',
  ],
  ssr: false,
  components: true,
  app: {
    baseURL: BASE_URL,
    buildAssetsDir: `${BASE_URL}_nuxt`.replace(/^\//, ''),
  },
  compatibilityDate: '2024-12-10',
  nitro: {
    output: {
      publicDir: path.join('.output/public', BASE_URL.replace(/^\//, '')),
    },
    publicAssets: [
      {
        dir: path.resolve('public'),
        baseURL: BASE_URL,
      },
      ...pagePublicFolders,
    ],
  },
  typescript: {
    typeCheck: true,
  },
  eslint: {
    config: {
      stylistic: {
        quotes: 'single',
        semi: false,
      },
    },
  },
})
