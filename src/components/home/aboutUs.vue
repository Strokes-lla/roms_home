<template>
  <div class="box_warpper mb50">
    <div class="content __relative">
      <div class="cover tc">
        <h5 class="white mt40 mb10">关于我们</h5>
        <p class="font white mb10">让客户生意更容易 让员工人生更美好</p>
        <p class="font white">万商云集(成都)科技股份有限公司源于2004年，是一家深耕营销领域和SAAS领域的互联网企业，2018年6月挂牌新三板，股票代码：872832。<br>
          公司主要面向4000万中小企业，通过SAAS产品帮助其开展“互联网+营销”，目前已累计服务10万家中小企业。</p>
        <div class="video-index-ft">
          <a>查看详情<i class="el-icon-video-play __relative"></i></a>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
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
  .box_warpper {
    .content {
      width: 100%;
      min-width: 1300px;
      height: 280px;
      background: url('../../assets/img/shutter_1.jpg') center;
    }

    .cover {
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      background: rgba(0, 0, 0, 0.5);
    }

    .video-index-ft {
      margin-top: 30px;
      text-align: center;
    }

    .video-index-ft a {
      display: inline-block;
      color: #FFFFFF;
      padding: 5px 10px;
      line-height: 20px;
      border: 1px solid #FFFFFF;
      border-radius: 20px;
      font-size: 18px;
    }
    .el-icon-video-play{
      top:1.3px;
      left:2px;
    }
  }
</style>
