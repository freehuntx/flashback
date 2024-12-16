import type { Plugin } from 'vite'
import { cpSync, existsSync, readdirSync, mkdirSync, readFileSync, lstatSync } from 'node:fs'

const MIME_TYPES = {
  'aac': 'audio/aac',
  'abw': 'application/x-abiword',
  'arc': 'application/x-freearc',
  'avi': 'video/x-msvideo',
  'azw': 'application/vnd.amazon.ebook',
  'bin': 'application/octet-stream',
  'bmp': 'image/bmp',
  'bz': 'application/x-bzip',
  'bz2': 'application/x-bzip2',
  'cda': 'application/x-cdf',
  'csh': 'application/x-csh',
  'css': 'text/css',
  'csv': 'text/csv',
  'doc': 'application/msword',
  'docx': 'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  'eot': 'application/vnd.ms-fontobject',
  'epub': 'application/epub+zip',
  'gz': 'application/gzip',
  'gif': 'image/gif',
  'htm': 'text/html',
  'html': 'text/html',
  'ico': 'image/vnd.microsoft.icon',
  'ics': 'text/calendar',
  'jar': 'application/java-archive',
  'jpeg': 'image/jpeg',
  'jpg': 'image/jpeg',
  'js': 'text/javascript',
  'json': 'application/json',
  'jsonld': 'application/ld+json',
  'mid': 'audio/midi audio/x-midi',
  'midi': 'audio/midi audio/x-midi',
  'mjs': 'text/javascript',
  'mp3': 'audio/mpeg',
  'mp4': 'video/mp4',
  'mpeg': 'video/mpeg',
  'mpkg': 'application/vnd.apple.installer+xml',
  'odp': 'application/vnd.oasis.opendocument.presentation',
  'ods': 'application/vnd.oasis.opendocument.spreadsheet',
  'odt': 'application/vnd.oasis.opendocument.text',
  'oga': 'audio/ogg',
  'ogv': 'video/ogg',
  'ogx': 'application/ogg',
  'opus': 'audio/opus',
  'otf': 'font/otf',
  'png': 'image/png',
  'pdf': 'application/pdf',
  'php': 'application/x-httpd-php',
  'ppt': 'application/vnd.ms-powerpoint',
  'pptx': 'application/vnd.openxmlformats-officedocument.presentationml.presentation',
  'rar': 'application/vnd.rar',
  'rtf': 'application/rtf',
  'sh': 'application/x-sh',
  'svg': 'image/svg+xml',
  'swf': 'application/x-shockwave-flash',
  'tar': 'application/x-tar',
  'tif': 'image/tiff',
  'tiff': 'image/tiff',
  'ts': 'video/mp2t',
  'ttf': 'font/ttf',
  'txt': 'text/plain',
  'vsd': 'application/vnd.visio',
  'wasm': 'application/wasm',
  'wav': 'audio/wav',
  'weba': 'audio/webm',
  'webm': 'video/webm',
  'webp': 'image/webp',
  'woff': 'font/woff',
  'woff2': 'font/woff2',
  'xhtml': 'application/xhtml+xml',
  'xls': 'application/vnd.ms-excel',
  'xlsx': 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
  'xml': 'application/xml',
  'xul': 'application/vnd.mozilla.xul+xml',
  'zip': 'application/zip',
  '3gp': 'video/3gpp',
  '3g2': 'video/3gpp2',
  '7z': 'application/x-7z-compressed'
}

function getMimeType(filePath: string) {
  const ext = filePath.toLowerCase().split(/[\/\\]/).pop()?.split(/[?#]/)[0].split('.').pop() ?? 'bin'
  return MIME_TYPES[ext] || MIME_TYPES.txt
}

function findPublicFolders(path: string, route: string[]=[]) {
  const folders = readdirSync(path, { withFileTypes: true }).filter(e => e.isDirectory()).map(e => e.name)
  const results: string[] = []

  for (const folder of folders) {
    if (folder === 'public') {
      results.push(`/${route.join('/')}/public`.replace(/\/+/g, '/'))
    } else {
      route.push(folder)
      results.push(...findPublicFolders(`${path}/${folder}`, route))
      route.pop()
    }
  }

  return results
}

function copyPublicFolders(path: string, targetFolder: string) {
  const publicFolders = findPublicFolders(path)

  for (const folder of publicFolders) {
    const currentPublicFolder = path.replace(/[\/\\]+$/, '') + folder
    const currentTargetFolder = (targetFolder.replace(/[\/\\]+$/, '') + folder).replace(/\/public$/, '')

    if (!existsSync(currentTargetFolder)) {
      mkdirSync(currentTargetFolder, { recursive: true })
    }

    const content = readdirSync(currentPublicFolder)
    for (const entry of content) {
      cpSync(currentPublicFolder + '/' + entry, currentTargetFolder + '/' + entry, { recursive: true })
    }
  }
}

export default function(): Plugin {
  return {
    name: 'deep-public',
    // For build
    configResolved(config) {
      const { build, root } = config
      const { outDir } = build || {}
      
      if (config.command !== 'build') return
      copyPublicFolders(`${root}/src/pages`, outDir.replace(/[\/\\]+$/, ''))
    },
    // For dev
    configureServer(server) {
      const { root } = server.config

      server.middlewares.use((req, res, next) => {
        const realPath = `${root}/src/pages${req.url?.replace(/([\/\\][^\/\\]+)[\/\\]*$/, '/public$1')}`
        
        if (!existsSync(realPath)) return next()
        if (lstatSync(realPath).isDirectory()) return next()

        const content = readFileSync(realPath)
        res.statusCode = 200
        res.setHeader('Content-Type', req.headers['accept-type'] ?? getMimeType(realPath))
        res.end(content)
      })
    }
  }
}
