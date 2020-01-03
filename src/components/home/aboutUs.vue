<template>
  <div class="box_warpper mb50">
    <div class="content __relative">
      <div class="cover tc">
        <h5 class="white mt40 mb10">关于我们</h5>
        <p class="font white mb10">让客户生意更容易 让员工人生更美好</p>
        <p class="font white">聚焦公众关注的辐射安全等环境问题，提供智能高端的设备和解决方案以及全方位的专业技术服务，持续创新为客户创造更大价值</p>
        <div class="video-index-ft">
          <span>查看详情<i class="el-icon-video-play __relative"></i></span>
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
  @import '../../../css/webless.less';
  .box_warpper {
    .content {
      width: 100%;
      min-width: 1300px;
      height: 280px;
      background: url('../../assets/img/环境检测.png') center;
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

    .video-index-ft span {
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
