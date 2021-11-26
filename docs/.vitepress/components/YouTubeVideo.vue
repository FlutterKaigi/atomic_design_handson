<template>
  <LiteYouTubeEmbed :id="videoId" :title="title" />
</template>

<script lang="ts">
import LiteYouTubeEmbed from 'vue-lite-youtube-embed'
import 'vue-lite-youtube-embed/dist/style.css'
export default {
  components: {
    LiteYouTubeEmbed
  },
  props: {
    videoId: {
      type: String,
      default: ''
    },
    title: {
      type: String,
      default: ''
    }
  }
}
</script>
