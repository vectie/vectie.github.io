import { defineConfig } from 'vite'
import rabbita from '@rabbita/vite'

function moonbitBrowserShim() {
  return {
    name: 'moonsuite-moonbit-browser-shim',
    enforce: 'post',
    transform(code, id) {
      if (!id.includes('\0rabbita-main-entry') && !code.includes('require("process")')) return null
      const next = code
        .replaceAll(
          `let process = require("process");\n  return process.platform === "win32";`,
          `return typeof navigator !== "undefined" && /Windows/i.test(navigator.userAgent || navigator.platform || "");`,
        )
        .replaceAll(
          `return require("process").platform==="win32"`,
          `return typeof navigator!="undefined"&&/Windows/i.test(navigator.userAgent||navigator.platform||"")`,
        )
      return next === code ? null : { code: next, map: null }
    },
  }
}

export default defineConfig({
  root: 'site',
  publicDir: '../docs/public',
  build: {
    chunkSizeWarningLimit: 1200,
    outDir: '../dist/client',
    emptyOutDir: true,
  },
  plugins: [rabbita(), moonbitBrowserShim()],
})
