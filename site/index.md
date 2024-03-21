---
# https://vitepress.dev/reference/default-theme-home-page
layout: home

hero:
  name: "Blink"
  text: "A time-travelling debugger for Scratch"
  tagline: "Blink is an intuitive, yet powerful educational software debugger for Scratch, with support for time-travelling, breakpoints and stepwise code execution."
  actions:
    - theme: brand
      text: 🢂 Try it out
      link: https://scratch.ugent.be/blink/editor
    - theme: alt
      text: Contact us
      link: mailto:scratch@ugent.be
    - theme: alt
      text: Documentation
      link: /documentation

features:
  - title: Integrated in Scratch
    details: Open a version of the Scratch Editor with debugger support.
    icon:
      src: /Scratch_S.svg
      width: 28
      wrap: true
    linkText: Open Editor
    link: https://scratch.ugent.be/blink/editor
  - title: "Demo: Maze"
    icon: 🧭
    details: Open the Maze demo project. The player must navigate a maze. Find the bug.
    link: https://scratch.ugent.be/blink/editor?project=/blink/maze.sb3
    linkText: Open Maze
  - title: "Demo: Star"
    icon: ⭐
    details: Open the Star project. The player must follow the path without touching the water. Find the bug.
    link: https://scratch.ugent.be/blink/editor?project=/blink/star.sb3
    linkText: "Open Star"
  - title: "Open source"
    icon: 📖
    details: View, use and contribute to the source code.
    link: https://github.com/scratch-ed/blink
    linkText: View source
---

## 🔬 Research

If you find Blink useful and use it in your research, please cite:

Strijbol, N., De Proft, R., Goethals, K., Mesuere, B., Dawyndt, P., & Scholliers, C. (2024). _Blink: An educational software debugger for Scratch._ SoftwareX, vol. 25, p. 101617. https://doi.org/10.1016/j.softx.2023.101617
