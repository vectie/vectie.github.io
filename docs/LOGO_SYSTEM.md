# MoonSuite Lunar Glyphs / 月相字形系统

## Direction / 设计方向

**Lunar Glyphs** is a product-logo family built for an Agent OS rather than a collection of unrelated apps. It takes three structural ideas from `moonvis`—the circular boundary, upward diagonal momentum, and a quiet human signal—and simplifies them into a system that remains legible at app-icon size.

**月相字形**不是十二枚互不相干的图标，而是一套 Agent OS 的职责地图。它从 `moonvis` 保留三种结构：圆形边界、向上生长的动势，以及克制的人本信号；同时移除复杂渐变、装饰材质与难以缩小的轮廓。

## Shared grammar / 共同语法

- **Open gold orbit / 缺口金色月轨**：软件边界并非封闭成品，可以在证据允许时改变。
- **Green signal / 绿色验证信号**：一个变化只有通过验收，才能进入下一轮能力基线。
- **Frost responsibility glyph / 冰白职责字形**：每款产品只表达它真正拥有的职责。
- **Obsidian field / 黑曜底色**：与 MoonSuite 网站和长期运行的 operator surface 一致。
- **One family, no per-app rainbow / 同族而非彩虹配色**：区别来自结构，不依赖随机颜色。

## Product meanings / 产品字形含义

| Mark | Central glyph | Meaning |
| --- | --- | --- |
| MoonSuite | Ascending open route | Software rewriting its own future boundary |
| MoonClaw | Bounded multi-prong actuator | Tools and action inside a controlled runtime |
| MoonBook | Open pages | Persistent evidence and memory that changes the next action |
| Moontown | Connected dwellings | Roles and rules becoming an emergent society |
| MoonFlow | Recoverable node route | Work moving through explicit, resumable states |
| MoonDesk | Executable window | Documents becoming working software |
| MoonGate | Bracketed aperture | Governed model access, traffic, and telemetry |
| MoonProj | Verified ledger | Institutional truth, authority, and posting |
| MoonRobo | Bounded machine face | Physical intelligence with observable limits |
| MoonMoon | Lunar horizon and route | Evidence-led deployment beyond Earth |
| MoonMold | Wireframe solid | Representation lineage from source to physical form |
| MoonCast | Framed playhead and rail | Generative media with production provenance |
| MoonFind | Lens and question cross | Research expanding the frontier of knowable questions |

## Usage / 使用规范

- Master canvas: `512 × 512`; app-corner radius: `116`.
- Primary palette: `#080B0D`, `#F0F4F2`, `#D8B56A`, `#8EC97F`.
- Minimum digital size: `24 px`; below that, use the MoonSuite parent mark rather than a product glyph.
- Clear space: at least one quarter of the icon width on wordmark lockups.
- Do not add gradients, drop in new per-product colors, rotate the orbit, or detach the green signal.
- SVG files in `docs/public/logos/` are the source masters; the build publishes them at `/logos/`.

## Asset inventory / 文件清单

`moonsuite.svg`, `moonclaw.svg`, `moonbook.svg`, `moontown.svg`, `moonflow.svg`, `moondesk.svg`, `moongate.svg`, `moonproj.svg`, `moonrobo.svg`, `moonmoon.svg`, `moonmold.svg`, `mooncast.svg`, and `moonfind.svg`.
