<template>
  <div id="app">
    <v-header></v-header>
    <div class="mt100">
      <router-view/>
    </div>
    <v-footer></v-footer>
  </div>
</template>

<script>
  import header from "@/components/header"
  import footer from "@/components/footer"
  // import header from "@/components/header"

  export default {
    data() {
      return {}
    },
    components: {
      'v-header': header,
      'v-footer': footer
    },
    methods: {},
    mounted: function () {
    }
  }
</script>

<style>
  #app {
    font-family: 'Avenir', Helvetica, Arial, sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    width: 100%;
    height: 100%;
    position: relative;
    overflow: auto;
    -webkit-overflow-scrolling: touch;
  }
</style>
