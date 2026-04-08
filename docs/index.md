---
# https://vitepress.dev/reference/default-theme-home-page
layout: home

hero:
  name: "Vectie"
  text: "on the moon! 🤣🤣🤣"
  actions:
    - theme: alt
      text: GitHub
      link: https://github.com/vectie
    - theme: brand
      text: 进入
      link: /intro

features:
  - title: moonbook
    details: MoonBit 原生 mdBook 实现，包含静态渲染、本地服务、watch 工作流和持久化 wiki 工作区。
    icon: 📚
    link: https://github.com/vectie/moonbook

  - title: moonclaw
    details: MoonBit 原生 agent 运行时，包含 gateway、memory、作业编排和 ACP 远程 agent 控制。
    icon: 🐇
    link: https://github.com/vectie/moonclaw

  - title: moontown
    details: 位于多个 moonbook 工作区和 moonclaw worker 之上的 town 级编排层，提供路由、隔离规则、持久化 town 状态，以及房间式 dashboard。
    icon: 🌕
    link: https://github.com/vectie/moontown
---
