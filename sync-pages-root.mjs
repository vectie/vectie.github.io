import fs from 'node:fs'
import path from 'node:path'

const source = path.join('dist', 'client')

for (const name of fs.readdirSync(source)) {
  const from = path.join(source, name)
  const to = path.join(process.cwd(), name)
  fs.rmSync(to, { recursive: true, force: true })
  fs.cpSync(from, to, { recursive: true })
}
