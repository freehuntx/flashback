import type { Plugin } from 'vite'

export default function(filters: RegExp[]=[]): Plugin {
  const stdOutWrite = process.stdout.write
  process.stdout.write = function (buffer: Uint8Array | string, cb: any) {
    const str = typeof buffer === 'string' ? buffer : buffer.toString()
    
    for (const filter of filters) {
      if (filter.test(str)) return false
    }

    return stdOutWrite.call(this, buffer, cb)
  }

  return {
    name: 'suppress-log'
  }
}
