import assert from 'node:assert/strict'
import fs from 'node:fs'
import test from 'node:test'

const routes = [
  'dist/client/index.html',
  'dist/client/plan/index.html',
  'dist/client/products/moonclaw/index.html',
  'dist/client/products/moonfind/index.html',
]

test('Rabbita build exposes the home, plan, and product routes', () => {
  for (const route of routes) assert.equal(fs.existsSync(route), true, route)
})

test('the static shell loads the compiled Rabbita application', () => {
  const html = fs.readFileSync('dist/client/index.html', 'utf8')
  assert.match(html, /assets\/index-[^"']+\.js/)
  assert.match(html, /MOONBIT · RABBITA/)
  const assets = fs.readdirSync('dist/client/assets')
  assert.equal(assets.some((name) => name.includes('rabbita_main-entry')), true)
})
