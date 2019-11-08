<template>
    <div class="box_warpper">
      <p class="prod_comp_view_name">
        <span class="el-icon-edit mr10"></span>
        <span>A、在线辐射监测系统</span>
        <span class="__absolute pointer" @click="back" style="right: 20px;">返回</span>
      </p>
      <div class="prod_view_cont_title mt30">
        <span>产品描述：</span>
      </div>
      <div class="mb50">
        <div class="box __relative mb30">
          <div class="strleft">
            <div class="content">
              一体化集成式站房采用军用方舱标准和工艺设计制造，模板化设计，标准化生产，可以大幅度提高系统长期野外运行的稳定性和环境适应性，可扩展性强，使用维护便利，环保节能，节约解决资金和周期。
              辐射环境自动监测网络系统主要用于汇总辐射自动监测站，应急监测车等设备的实时监测信息。
              <br>
              一体化集成式站房采用军用方舱标准和工艺设计制造，模板化设计，标准化生产，可以大幅度提高系统长期野外运行的稳定性和环境适应性，可扩展性强，使用维护便利，环保节能，节约解决资金和周期。
              辐射环境自动监测网络系统主要用于汇总辐射自动监测站，应急监测车等设备的实时监测信息。
              <br>
              一体化集成式站房采用军用方舱标准和工艺设计制造，模板化设计，标准化生产，可以大幅度提高系统长期野外运行的稳定性和环境适应性，可扩展性强，使用维护便利，环保节能，节约解决资金和周期。
              辐射环境自动监测网络系统主要用于汇总辐射自动监测站，应急监测车等设备的实时监测信息。
            </div>
          </div>
          <div class="strRight __absolute top0 right0">
            <img src="../../assets/img/img1.png" height="300" width="400"/>
          </div>
        </div>
        <div class="box __relative mb30">
          <div class="strRight __absolute top0 left0">
            <img src="../../assets/img/img1.png" height="300" width="400"/>
          </div>
          <div class="strleft" style="margin-left:485px;">
            <div class="content">
              一体化集成式站房采用军用方舱标准和工艺设计制造，模板化设计，标准化生产，可以大幅度提高系统长期野外运行的稳定性和环境适应性，可扩展性强，使用维护便利，环保节能，节约解决资金和周期。
              辐射环境自动监测网络系统主要用于汇总辐射自动监测站，应急监测车等设备的实时监测信息。
              <br>
              一体化集成式站房采用军用方舱标准和工艺设计制造，模板化设计，标准化生产，可以大幅度提高系统长期野外运行的稳定性和环境适应性，可扩展性强，使用维护便利，环保节能，节约解决资金和周期。
              辐射环境自动监测网络系统主要用于汇总辐射自动监测站，应急监测车等设备的实时监测信息。
              <br>
              一体化集成式站房采用军用方舱标准和工艺设计制造，模板化设计，标准化生产，可以大幅度提高系统长期野外运行的稳定性和环境适应性，可扩展性强，使用维护便利，环保节能，节约解决资金和周期。
              辐射环境自动监测网络系统主要用于汇总辐射自动监测站，应急监测车等设备的实时监测信息。
            </div>
          </div>
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
    .box_warpper {
      padding:10px;
      .prod_comp_view_name{
        line-height: 34px;
        font-size: 18px;
        color: rgb(64, 158, 255);
        font-weight: normal;
      }
      .prod_view_cont_title {
        line-height: 19px;
        color: rgba(64, 158, 255,0.8);
        font-size: 16px;
      }
      .box{
        width:100%;
        min-height:300px;
      }
      .content{
        width: 460px;
        line-height: 25px !important;
        font-size:14px !important;
        color: #666666 !important;
      }
      .__absolute:hover{
        text-decoration: underline;
      }

      .switch {
        height: 30px;
        color: rgb(64, 158, 255);
        bottom: 20px;
      }
    }
</style>
