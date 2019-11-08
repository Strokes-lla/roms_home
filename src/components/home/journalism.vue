<template>
  <div class="box_warpper">
    <v-modularTitle :strText="strText"></v-modularTitle>
    <div class="content w1300 mb30">
      <div class="news-box ml20">
        <div class="pointer" :class=" index!=(3-1)? 'mb50':''" v-for="(item,index) in 3">
          <div class="__relative" title="群创在广州对惠科提起的8件专利诉讼全军覆没">
            <div class="right">
              <p class="color9 transition">2019-07</p>
              <span class="f48 color9 transition">30</span>
            </div>
            <div class="left __absolute ml10" style="top:-2px;">
              <h5 class="color71 transition">群创在广州对惠科提起的8件专利诉讼全军覆没</h5>
              <p class="color9 transition">群创2018年2月对惠科提起17件专利诉讼。而惠科在知识产权方面一直积极创新，并重视研发积累，目前已</p>
            </div>
          </div>
        </div>
      </div>
      <div class="details __absolute right0 top0">
        <div class="detailsBnt tc __absolute right0 transition" style="bottom:30px;">
          <span class="white __relative transition">了解更多</span>
          <span class="el-icon-arrow-right __relative white transition" style="opacity: 0"></span>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  import modularTitle from "@/components/home/modularTitle"

  export default {
    data() {
      return {
        strText: {
          title: '新闻资讯',
          content: '最新湘亭资讯，尽在于此。'
        },
      }
    },
    filters: {},
    methods: {},
    components: {
      'v-modularTitle': modularTitle
    },
    mounted() {
    }
  }
</script>

<style lang="less" scoped>
  .box_warpper {
    .content {
      height: 355px;
      background: #FFF;
      padding: 10px;

      .news-box > div {
        display: block;
        overflow: hidden;

        h5 {
          font-weight: 600;
          padding-bottom: 10px;
          font-size: 14px;
        }

        div {
          display: block;
        }

        p {
          line-height: 18px;
        }

        .right {
          width: 65px;
          display: inline-block;
        }

        .left {
          width: 520px;
          display: inline-block;
        }
      }

      .color9 {
        color: #999;
      }

      .color71 {
        color: #717171;
      }

      .pointer:hover {
        .color9 {
          color: rgb(64, 158, 255) !important;
        }

        .color71 {
          color: rgb(64, 158, 255) !important;
        }
      }
    }
    .details{
      display: inline-block;
      background:url('../../assets/img/111.jpg') no-repeat;
      background-size:100% 100%;
      width:630px;
      height: 355px;
      .detailsBnt{
        border-radius:10px 0 0 10px;
        width:120px;
        height:45px;
        background:rgb(64, 158, 255);
        span{
          line-height: 45px;
        }
      }
      .detailsBnt:hover{
        width:130px;
        .__relative{
          left:-10px;
        }
        .el-icon-arrow-right{
          opacity:1 !important;
        }
      }
    }
    .transition {
      transition: all 0.2s;
      -moz-transition: all 0.2s; /* Firefox 4 */
      -webkit-transition: all 0.2s; /* Safari 和 Chrome */
      -o-transition: all 0.2s; /* Opera */
    }
  }
</style>
