import { defineConfig } from 'vitepress'

// https://vitepress.dev/reference/site-config
export default defineConfig({
  title: "Blink",
  description: "Blink is a time-travelling debugger for Scratch.",
  base: "/blink/",
  themeConfig: {
    // https://vitepress.dev/reference/default-theme-config
    nav: [
      { text: 'Home', link: '/' },
      { text: 'Documentation', link: '/documentation' }
    ],
    socialLinks: [
      { icon: 'github', link: 'https://github.com/scratch-ed/blink' }
    ],
    footer: {
      message: 'Blink is developed at Ghent University.',
      copyright: 'Scratch is a trademark of the Scratch Team at the MIT Media Lab.'
    }
  }
})
