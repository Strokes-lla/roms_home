<template>
  <div class="box_warpper">
    <div class="__relative boxTop mb30">
      <div class="left inlineBlock">
        <img :src="imgUrl+detailsData.img" alt="">
      </div>
      <div class="right inlineBlock ml35">
        <p class="title bold">{{detailsData.title}}</p>
        <p class="mt30 content">{{detailsData.intro}}</p>
      </div>
    </div>
    <div class="__relative boxBottom">
      <div class="__relative title w100">
        <div class="__relative tc" style="width:140px;">
          <span>技术参数</span>
        </div>
      </div>
      <div style="white-space:pre-line;line-height:28px;" class="mt20">{{detailsData.content}}</div>
    </div>
  </div>
</template>

<script>
  export default {
    props: ['detailsData'],
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
    .boxTop {
      min-height: 300px;

      .left {
        vertical-align: top;

        img {
          max-width: 300px;
        }
      }

      .right {
        vertical-align: top;
        width: 570px;

        .title {
          color: @colour;
        }

        .content {
          line-height: 28px;
        }
      }
    }

    .boxBottom {
      .title {
        background: #f1f1f1;

        div {
          line-height: 36px;
          background: @colour;
          color: white;
        }
      }
    }
  }
</style>
