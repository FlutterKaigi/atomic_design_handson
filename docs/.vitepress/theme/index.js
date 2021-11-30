import DefaultTheme from 'vitepress/theme'
import Profile from '../components/Profile.vue'
import YouTubeVideo from '../components/YouTubeVideo.vue'
import './custom.css'

export default {
  ...DefaultTheme,
  enhanceApp({ app }) {
    app.component('YouTubeVideo', YouTubeVideo)
    app.component('Profile', Profile)
  }
}
