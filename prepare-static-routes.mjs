import fs from 'node:fs'
import path from 'node:path'

const routes = [
  'plan',
  'products/moonclaw',
  'products/moonbook',
  'products/moontown',
  'products/moonflow',
  'products/moondesk',
  'products/moongate',
  'products/moonproj',
  'products/moonrobo',
  'products/moonmoon',
  'products/moonmold',
  'products/mooncast',
  'products/moonfind',
]

const root = path.join('dist', 'client')
const html = fs.readFileSync(path.join(root, 'index.html'))
for (const route of routes) {
  const folder = path.join(root, route)
  fs.mkdirSync(folder, { recursive: true })
  fs.writeFileSync(path.join(folder, 'index.html'), html)
}

