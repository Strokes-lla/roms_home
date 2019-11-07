<template>
  <div class="box_warpper">
    <v-slideImg></v-slideImg>
    <v-productExhibition></v-productExhibition>
    <v-aboutUs></v-aboutUs>
    <v-journalism></v-journalism>
  </div>
</template>

<script>
  import slideImg from "@/components/home/slideImg"
  import productExhibition from "@/components/home/productExhibition"
  import aboutUs from "@/components/home/aboutUs"
  import journalism from "@/components/home/journalism"

  export default {
    data() {
      return {}
    },
    filters: {},
    methods: {},
    components: {
      'v-slideImg': slideImg,
      'v-productExhibition':productExhibition,
      'v-aboutUs':aboutUs,
      'v-journalism':journalism,
    },
    mounted() {
    }
  }
</script>

<style lang="less" scoped>
  .box_warpper {
  }
</style>
