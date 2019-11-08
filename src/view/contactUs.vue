<template>
  <div class="box_warpper">
    <v-headerImg></v-headerImg>
    <div class="box w1300">
      <div class="topInformation __relative">
        <div class="left __absolute inlineBlock ml100" style="top:80px;">
          <img src="../assets/img/erweima.png" style="margin:0 auto;" height="100" width="100"/>
          <div class="tc mt10">
            <span class="f10 white">微信在线咨询</span>
          </div>
        </div>
        <div class="cneter __absolute" style="margin:0 auto;top:50px;left:300px;">
          <h4 class="mb10 white f30 bold">客户服务</h4>
          <div class="mb15">
            <span class="el-icon-location f18 white"></span>
            <span class="f18 white">杭州师范大学科技园</span>
          </div>
          <div class="mb15">
            <span class="el-icon-phone f18 white"></span>
            <span class="f18 white">400-123-123</span>
          </div>
          <div class="mb15">
            <span class="el-icon-message f18 white"></span>
            <span class="f18 white">xtkej@gasrs.com</span>
          </div>
          <div>
            <span class="el-icon-s-ticket f18 white"></span>
            <span class="f18 white">xtkej@gasrs.com</span>
          </div>
        </div>
        <div class="line __absolute"></div>
        <div class="right __absolute" style="margin:0 auto;top:50px;right:50px;">
          <h4 class="mb10 white f30 bold tc">平台入驻</h4>
          <div class="mb15">
            <span class="el-icon-phone f18 white"></span>
            <span class="f18 white">400-123-123</span>
          </div>
          <div class="mb15">
            <span class="el-icon-message f18 white"></span>
            <span class="f18 white">xtkej@gasrs.com</span>
          </div>
          <div class="transverse __relative" style="top:50px;"></div>
        </div>
      </div>
      <div id="container" class="mt50">

      </div>
    </div>
  </div>
</template>

<script>
  import headerImg from "@/components/headerImg"

  export default {
    data() {
      return {}
    },
    filters: {},
    methods: {
      getMap() {
        let map = new BMap.Map("container");
        // 创建地图实例
        let point = new BMap.Point(119.995222, 30.281783);//定义一个中心点坐标
        // 创建点坐标
        map.centerAndZoom(point, 17);
        // 初始化地图，设置中心点坐标和地图级别
        let marker = new BMap.Marker(point);        // 创建标注
        map.addOverlay(marker);                     // 将标注添加到地图中
        let label=new BMap.Label('杭州师范大学科技园',{offset:new BMap.Size(20,-10)});
        marker.setLabel(label)
      },
    },
    components: {
      'v-headerImg': headerImg,
    },
    mounted() {
      this.getMap()
    }
  }
</script>

<style lang="less" scoped>
  .box_warpper {
    .box {
      background: white;
      min-height: 1000px;
      padding: 50px 20px 0 20px;

      .topInformation {
        width: 100%;
        height: 300px;
        background: rgb(64, 158, 255);
      }

      .right {
        width: 270px;
      }
    }

    .line {
      width: 2px;
      height: 250px;
      background: white;
      top: 25px;
      right: 420px;
    }

    .transverse {
      margin: 0 auto;
      width: 50%;
      height: 1px;
      background: white;
    }

    #container {
      width: 100%;
      height: 550px;
    }
  }
</style>
