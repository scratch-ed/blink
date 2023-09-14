---
# https://vitepress.dev/reference/default-theme-home-page
layout: home

hero:
  name: "Blink: An Educational Software Debugger for Scratch"
#  tagline: Niko Strijbol, Robbe De Proft, Klaas Goethals, Bart Mesuere, Peter Dawyndt, Christophe Scholliers
  actions:
    - theme: brand
      text: Contact us
      link: mailto:scratch@ugent.be
    - theme: alt
      text: View documentation
      link: /documentation

features:
  - title: Editor
    details: Open a version of the Scratch Editor with debugger support.
    icon:
      src: /Scratch_S.svg
      width: 28
      wrap: true
    link: /editor
  - title: "Demo: Star"
    icon: ⭐
    details: Open the Star project. The player must follow the path without touching the water. Find the bug.
    link: /editor?project=/star.sb3
  - title: "Demo: Maze"
    icon: 🧭
    details: Open the Maze demo project. The player must navigate a maze. Find the bug.
    link: /editor/maze?project=/maze.sb3
---
