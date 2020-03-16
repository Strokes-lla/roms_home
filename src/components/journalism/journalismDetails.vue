<template>
  <div class="box_warpper">
    <div class="tc __relative">
      <h1 class="news_view_title">卡迪诺亮相中国辐射防护学会2019年学术年会</h1>
      <span class="__absolute pointer back" @click="back">返回</span>
    </div>
    <div class="n_content_right_m">
      <span>日期:</span>
      <span class="ml10 mr20">2019-1-1</span>
      <span class="ml20 mr10">浏览次数:</span>
      <span>31</span>
    </div>
    <div class="line mt20"></div>
    <div class="content">
      <img src="../../assets/img/img2.png" height="279" width="638"/>
      <div>
        2019年学术年会于2019年10月29日-11月2日在福州成功召开。本次会议由中国辐射防护学会主办、福建宁德核电有限公司承办、中国辐射防护研究院协办，通过大会报告、分会场报告、张贴海报、现场交流等形式组织开展学术交流。
        2019年学术年会于2019年10月29日-11月2日在福州成功召开。本次会议由中国辐射防护学会主办、福建宁德核电有限公司承办、中国辐射防护研究院协办，通过大会报告、分会场报告、张贴海报、现场交流等形式组织开展学术交流。
        2019年学术年会于2019年10月29日-11月2日在福州成功召开。本次会议由中国辐射防护学会主办、福建宁德核电有限公司承办、中国辐射防护研究院协办，通过大会报告、分会场报告、张贴海报、现场交流等形式组织开展学术交流。
        2019年学术年会于2019年10月29日-11月2日在福州成功召开。本次会议由中国辐射防护学会主办、福建宁德核电有限公司承办、中国辐射防护研究院协办，通过大会报告、分会场报告、张贴海报、现场交流等形式组织开展学术交流。
        2019年学术年会于2019年10月29日-11月2日在福州成功召开。本次会议由中国辐射防护学会主办、福建宁德核电有限公司承办、中国辐射防护研究院协办，通过大会报告、分会场报告、张贴海报、现场交流等形式组织开展学术交流。
      </div>
      <img src="../../assets/img/img2.png" height="279" width="638"/>
      <div>
        2019年学术年会于2019年10月29日-11月2日在福州成功召开。本次会议由中国辐射防护学会主办、福建宁德核电有限公司承办、中国辐射防护研究院协办，通过大会报告、分会场报告、张贴海报、现场交流等形式组织开展学术交流。
        2019年学术年会于2019年10月29日-11月2日在福州成功召开。本次会议由中国辐射防护学会主办、福建宁德核电有限公司承办、中国辐射防护研究院协办，通过大会报告、分会场报告、张贴海报、现场交流等形式组织开展学术交流。
        2019年学术年会于2019年10月29日-11月2日在福州成功召开。本次会议由中国辐射防护学会主办、福建宁德核电有限公司承办、中国辐射防护研究院协办，通过大会报告、分会场报告、张贴海报、现场交流等形式组织开展学术交流。
        2019年学术年会于2019年10月29日-11月2日在福州成功召开。本次会议由中国辐射防护学会主办、福建宁德核电有限公司承办、中国辐射防护研究院协办，通过大会报告、分会场报告、张贴海报、现场交流等形式组织开展学术交流。
        2019年学术年会于2019年10月29日-11月2日在福州成功召开。本次会议由中国辐射防护学会主办、福建宁德核电有限公司承办、中国辐射防护研究院协办，通过大会报告、分会场报告、张贴海报、现场交流等形式组织开展学术交流。
      </div>
    </div>
    <div class="switch __absolute left0 right0">
      <span class="__absolute pointer" style="left:50px;">上一页</span>
      <span class="__absolute pointer" style="right:50px;">下一页</span>
    </div>
  </div>
</template>

<script>
  export default {
    data() {
      return {}
    },
    filters: {},
    methods: {
      back(){
        this.$emit('back')
      },
    },
    components: {},
    mounted() {
    }
  }
</script>

<style lang="less" scoped>
  @import '../../../css/webless.less';

  .box_warpper {
    padding: 30px 10px 10px 10px;

    .news_view_title {
      font-size: 24px;
      width: 100%;
      text-align: center;
      height: 40px;
      line-height: 40px;
    }

    .n_content_right_m {
      text-align: center;
      margin: 0 auto;
      line-height: 24px;
      color: #666;
      font-size: 12px;
      position: relative;
      overflow: hidden;
    }

    .line {
      width: 100%;
      height: 1px;
      background: #eaeaea;
    }

    .content {
      padding: 0 30px 50px 30px;
      text-indent: 32px;
      margin-bottom: 15px;
      line-height: 40px;
      color: #666;

      img {
        margin: 0 auto;
      }
    }

    .switch {
      color: @colour;
      height: 30px;
      bottom: 20px;
    }

    .pointer:hover {
      text-decoration: underline;
    }
    .back{
      right: 20px;top:9px;
      color: @colour;
    }
  }
</style>
