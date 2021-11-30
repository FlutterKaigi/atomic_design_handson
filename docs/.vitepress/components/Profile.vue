<template>
  <div class="profile">
    <div class="profile-icon">
      <div class="profile-icon_image">
        <img :src="image" alt="image" decoding="async" />
      </div>
    </div>
    <section class="profile-info">
      <h2 class="info-title">
        {{ name }}
      </h2>
      <h3 class="info-description" v-html="description" />
      <ul class="info-social">
        <li v-if="discordUrl">
          <a :href="discordUrl" target="_blank" rel="noopener noreferrer">
            <DiscordSvg />
          </a>
        </li>
        <li v-if="githubUrl">
          <a :href="githubUrl" target="_blank" rel="noopener noreferrer">
            <GithubSvg />
          </a>
        </li>
        <li v-if="twitterUrl">
          <a :href="twitterUrl" target="_blank" rel="noopener noreferrer">
            <TwitterSvg />
          </a>
        </li>
        <li v-if="instagramUrl">
          <a :href="instagramUrl" target="_blank" rel="noopener noreferrer">
            <InstagramSvg />
          </a>
        </li>
      </ul>
    </section>
  </div>
</template>

<script lang="ts">
import { computed, PropType } from 'vue'

import DiscordSvg from '../public/discord_logo.svg'
import GithubSvg from '../public/github_logo.svg'
import TwitterSvg from '../public/twitter_logo.svg'
import InstagramSvg from '../public/instagram_logo.svg'

type SocialProps = {
  discord?: string
  github?: string
  twitter?: string
  instagram?: string
}

interface IProfileProps {
  image: string
  name: string
  description: string
  social: SocialProps
}

export default {
  components: {
    DiscordSvg,
    GithubSvg,
    TwitterSvg,
    InstagramSvg
  },
  props: {
    image: {
      type: String as PropType<string>,
      default: ''
    },
    name: {
      type: String as PropType<string>,
      default: ''
    },
    description: {
      type: String as PropType<string>,
      default: ''
    },
    social: {
      type: Object as PropType<SocialProps>,
      default: () => {}
    }
  },
  setup(props: IProfileProps) {
    const toggle = () => {
      const navEl = document.querySelector('.header-nav')
      navEl.classList.toggle('menu_active')
    }
    const discordUrl = computed(() => {
      return props.social?.discord
    })
    const githubUrl = computed(() => {
      return props.social?.github
    })
    const twitterUrl = computed(() => {
      return props.social?.twitter
    })
    const instagramUrl = computed(() => {
      return props.social?.instagram
    })
    return { toggle, discordUrl, githubUrl, twitterUrl, instagramUrl }
  }
}
</script>
