<template>
    <div class="box_warpper">
      <div class="box" :style="{background:'url('+img+') center'}"></div>
    </div>
</template>

<script>
    export default {
        data() {
            return {
              img:require('../assets/img/690.jpg')
            }
        },
        filters: {},
        methods: {},
        components: {},
        mounted() {
        }
    }
</script>

<style lang="less" scoped>
    .box_warpper {
      .box{
        width:100%;
        min-width:1300px;
        height:270px;
      }
    }
</style>
