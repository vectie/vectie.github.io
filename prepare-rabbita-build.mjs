import fs from 'node:fs'
import path from 'node:path'

const mode = process.argv[2] || 'release'
const source = path.join(process.cwd(), '_build', 'js', mode, 'build', 'all_pkgs.json')
const target = path.join(process.cwd(), '_build', 'packages.json')

if (!fs.existsSync(source)) throw new Error(`Missing Rabbita metadata: ${source}`)
fs.copyFileSync(source, target)

