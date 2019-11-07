<template>
  <div class="box_warpper">
    <div class="content_top ovhide">
      <div class="box">
        <div class="left w25 __relative ml20 inlineBlock" style="top:40px;">
          <h4 class="mb10">关于我们</h4>
          <span>杭州湘亭科技有限公司杭州湘亭科技有限公司杭州湘亭科技有限公司杭州湘亭科技有限公司杭州湘亭科技有限公司杭州湘亭科技有限公司</span>
          <div class="bottom mt30">
            <span class="el-icon-question"></span>
            <span class="el-icon-info ml20 mr20"></span>
            <span class="el-icon-error"></span>
          </div>
        </div>
        <div class="cneter w25 __relative" style="margin:0 auto;top:-135px;">
          <h4 class="mb10">联系我们</h4>
          <div class="mb15">
            <span class="el-icon-location f16"></span>
            <span class="f16">杭州师范大学科技园</span>
          </div>
          <div class="mb15">
            <span class="el-icon-phone f16"></span>
            <span class="f16">400-123-123</span>
          </div>
          <div class="mb15">
            <span class="el-icon-message f16"></span>
            <span class="f16">xtkej@gasrs.com</span>
          </div>
          <div>
            <span class="el-icon-s-ticket f16"></span>
            <span class="f16">xtkej@gasrs.com</span>
          </div>
        </div>
        <div class="right w25 __absolute right0 inlineBlock" style="top:40px;">
          <h4 class="mb10">微信公众号</h4>
          <img src="../assets/img/erweima.png" style="margin:0 auto;" height="150" width="150"/>
          <div class="tc">
            <span>(扫一扫，关注公众号)</span>
          </div>
        </div>
      </div>
    </div>
    <div class="content_footer">
      <div class="box" style="top:20px;">
        <p>杭州湘亭科技有限公司 版权所有2019-2020 浙ICP备8888888 （本页面内容为网站演示数据，前台页面内容都可以在后台修改。）</p>
        <p>Powered by MetInfo 5.3.12</p>
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
    .box {
      width: 1100px;
      margin: 0 auto;
      position: relative;
    }

    .content_top {
      width: 100%;
      min-width:1300px;
      height: 270px;
      background: #3D3F3E;

      h4 {
        color: #999999;
      }

      span {
        font-size: 15px;
        position: relative;
        top: 8px;
        color: #999999;
      }

      .left {
        height: 165px;

        .bottom {
          span {
            color: #464646;
            background: #FFF;
            font-size: 30px;
            border-radius: 50%;
          }
        }
      }
    }

    .content_footer {
      width: 100%;
      min-width:1300px;
      height: 70px;
      background: #2C2E2E;

      p {
        color: #999999;
        font-size: 10px;
      }
    }
  }
</style>
