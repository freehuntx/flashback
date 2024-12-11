/* import path from 'path'
import fs from 'fs-extra'
import { defineNuxtPlugin } from '#app'

export default defineNuxtPlugin({
  name: 'copy-public-assets',
  setup(_nuxtApp) {
    // Only run during build
    if (import.meta.server) {
      const pagesDir = path.resolve('./pages')
      const publicDir = path.resolve('./public')

      // Read all directories in pages
      fs.readdirSync(pagesDir).forEach((project) => {
        const projectPublicDir = path.join(pagesDir, project, 'public')
        if (fs.existsSync(projectPublicDir)) {
          // Copy to public/[project]
          fs.copySync(
            projectPublicDir,
            path.join(publicDir, project),
          )
        }
      })
    }
  },
})
*/
