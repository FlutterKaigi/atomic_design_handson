import { defineClientAppEnhance } from '@vitepress/client'
import YouTubeVideo from './components/YouTubeVideo.vue'


export default defineClientAppEnhance(({ app, router, siteData }) => {
  app.component('YouTubeVideo', YouTubeVideo)

  router.beforeEach((to) => {
    // console.log('Before navigation')
  })

  router.afterEach((to) => {
    // console.log('After navigation')
  })
})
