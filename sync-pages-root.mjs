import fs from 'node:fs'
import path from 'node:path'

const source = path.join('dist', 'client')

for (const name of [
  'index.html',
  'assets',
  'plan',
  'products',
  'generated',
  '.nojekyll',
  'CNAME',
  'ads.txt',
  'favicon-16x16.png',
  'favicon-32x32.png',
]) {
  fs.rmSync(path.join(process.cwd(), name), { recursive: true, force: true })
}

for (const name of fs.readdirSync(source)) {
  const from = path.join(source, name)
  const to = path.join(process.cwd(), name)
  fs.rmSync(to, { recursive: true, force: true })
  fs.cpSync(from, to, { recursive: true })
}
