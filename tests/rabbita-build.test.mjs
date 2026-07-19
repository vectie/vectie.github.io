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
  const rabbitaEntry = assets.find((name) => name.includes('rabbita_main-entry'))
  assert.notEqual(rabbitaEntry, undefined)
  const app = fs.readFileSync(`dist/client/assets/${rabbitaEntry}`, 'utf8')
  assert.match(app, /软件自我进化，/)
  assert.match(app, /组织随之生长。/)
  assert.match(app, /Software that evolves itself—/)
  assert.match(app, /and the organization with it\./)
})

test('branch-based GitHub Pages receives the compiled root artifact', () => {
  const html = fs.readFileSync('index.html', 'utf8')
  assert.match(html, /assets\/index-[^"']+\.js/)
  assert.equal(
    fs.readdirSync('assets').some((name) => name.includes('rabbita_main-entry')),
    true,
  )
  assert.equal(fs.existsSync('products/moonclaw/index.html'), true)
  assert.equal(fs.existsSync('plan/index.html'), true)
  for (const shot of [
    'moonclaw.png',
    'moonbook.png',
    'moontown.png',
    'moondesk.png',
    'moongate.png',
    'moonproj.png',
    'moonrobo.png',
    'moonmoon.png',
    'mooncast.png',
  ]) {
    assert.equal(fs.existsSync(`shots/${shot}`), true, shot)
  }
})
