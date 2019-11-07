<template>
    <div class="box_warpper">
      <v-headerImg></v-headerImg>
      <div class="box w1300">
        <v-leftMenu></v-leftMenu>

      </div>
    </div>
</template>

<script>
  import headerImg from "@/components/headerImg"
  import leftMenu from "@/components/leftMenu"
  export default {
        data() {
            return {}
        },
        filters: {},
        methods: {},
        components: {
          'v-headerImg':headerImg,
          'v-leftMenu':leftMenu
        },
        mounted() {
        }
    }
</script>

<style lang="less" scoped>
    .box_warpper {
      .box{
        min-height:600px;
      }
    }
</style>
