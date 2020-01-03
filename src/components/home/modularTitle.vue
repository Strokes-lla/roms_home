<template>
  <div class="box_warpper tc mt40 mb30">
    <div style="min-width: 1300px;">
      <h5 style="color: #333333;">{{strText.title}}</h5>
      <p class="font" style="color: #777777;">{{strText.content}}</p>
    </div>
  </div>
</template>

<script>
  export default {
    props: ['strText'],
    data() {
      return {}
    },
    filters: {},
    methods: {},
    components: {},
    mounted() {
    }
  }
</script>

<style lang="less" scoped>
  @import '../../../css/webless.less';
  .box_warpper {

  }
</style>
