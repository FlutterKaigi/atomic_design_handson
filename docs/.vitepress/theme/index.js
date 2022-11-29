import DefaultTheme from 'vitepress/theme'
// import YouTubeVideo from '../components/YouTubeVideo.vue'
import './custom.css'

export default {
  ...DefaultTheme,
  enhanceApp({ app }) {
    // app.component('YouTubeVideo', YouTubeVideo)
  }
}
