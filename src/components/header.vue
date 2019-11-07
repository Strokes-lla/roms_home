<template>
  <div class="box_warpper">
    <div class="header">
      <div class="w1300 h100">
        <img src="../assets/img/logo.png" class="heightCenter ml20" style="margin-top: -25px;" height="50" width="130"/>
        <div class="right __absolute" style="right:20px;">
          <div @click="Jump(item.path)" class="pointer title ml30 __relative" :class="index==list.length-1 ? 'mr30':''"
               v-for="(item,index) in list">
            <div :class="$route.path===item.path ? 'active':''">
              <span class="f16 transition">{{item.title}}</span>
              <span class="el-icon-arrow-down transition f16"></span>
              <div class="line __relative transition"></div>
            </div>
            <!--            <div class="menu __absolute" style="top:100px;" v-if="index===0">-->

            <!--            </div>-->
          </div>
          <el-button type="primary" size="mini"><span class="el-icon-phone f16 telFont"></span>4008-123-123</el-button>
        </div>
        <div>

        </div>
      </div>
    </div>
  </div>
</template>

<script>
  import header from '../../unit/header'

  export default {
    data() {
      return {
        list: header
      }
    },
    filters: {},
    methods: {
      Jump(path) {
        this.$router.push({path: path,});
      }
    },
    components: {},
    mounted() {
      console.log(header)
    }
  }
</script>

<style lang="less" scoped>
  .box_warpper {
    .header {
      height: 100px;
      background: #FFF;
      position: fixed;
      top: 0;
      left: 0;
      right: 0;
      z-index: 9999;
    }

    .right {
      right: 0;
    }

    .title {
      display: inline-block;
      line-height: 100px;
    }

    .telFont {
      position: relative;
      left: -5px;
      top: 1px;
    }

    .line {
      margin: 0 auto;
      width: 0;
      height: 2px;
      background: rgb(64, 158, 255);
      top: -2px;
    }

    .pointer:hover {
      span {
        color: rgb(64, 158, 255);
      }

      .line {
        width: 100%;
      }
    }

    .active {
      span {
        color: rgb(64, 158, 255);
      }

      .line {
        width: 100%;
      }
    }

    .menu {
      width: 200px;
      background: white;
      height: 300px;
    }

    .transition {
      transition: all 0.5s;
      -moz-transition: all 0.5s; /* Firefox 4 */
      -webkit-transition: all 0.5s; /* Safari 和 Chrome */
      -o-transition: all 0.5s; /* Opera */
    }
  }
</style>
