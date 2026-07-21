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

test('the complete Lunar Glyphs logo family is published', () => {
  for (const name of [
    'moonsuite',
    'moonclaw',
    'moonbook',
    'moontown',
    'moonflow',
    'moondesk',
    'moongate',
    'moonproj',
    'moonrobo',
    'moonmoon',
    'moonmold',
    'mooncast',
    'moonfind',
  ]) {
    const file = `dist/client/logos/${name}.svg`
    assert.equal(fs.existsSync(file), true, file)
    assert.match(fs.readFileSync(file, 'utf8'), /viewBox="0 0 512 512"/)
  }
})

test('the static shell loads the compiled Rabbita application', () => {
  const html = fs.readFileSync('dist/client/index.html', 'utf8')
  assert.match(html, /<html lang="en">/)
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
  assert.match(app, /One task ends\. The next starts more capable\./)
  assert.match(app, /The loop changes not only the result of one task/)
  assert.match(app, /闭环改变的不是一次任务结果/)
  assert.match(app, /REWARD \/ PROMOTE/)
  assert.match(app, /REVERT \/ RETAIN GAP/)
  assert.match(app, /research_brief@v13/)
  assert.match(app, /Thirteen marks\. One orbital grammar\./)
  assert.match(app, /十三枚标记，同一条月轨。/)
})

test('branch-based GitHub Pages receives the compiled root artifact', () => {
  const html = fs.readFileSync('index.html', 'utf8')
  assert.match(html, /<html lang="en">/)
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
