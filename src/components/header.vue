<template>
  <div class="box_warpper">
    <div class="header">
      <div class="content h100">
        <img src="../assets/img/logo.png" class="heightCenter ml10"
             style="margin-top: -25px;width: 230px;height:43px;"/>
        <div class="right __absolute" style="right:10px;">
          <div @click="Jump(item.path,'')" @mouseover="showMenu(index)" @mouseout="hideMenu()"
               class="pointer title ml30 __relative"
               :class="index==list.length-1 ? 'mr30':''"
               v-for="(item,index) in list">
            <div :class="$route.path===item.path ? 'active':''">
              <span class="f16 transition5">{{item.title}}</span>
              <span class="el-icon-arrow-down transition5 f16"></span>
              <div class="line __relative transition5"></div>
            </div>
            <div class="menu __absolute transition2 ovhide"
                 v-if="item.menu.show"
                 :style="show&&showIndex===index ? {height:(item.menu.option.length*40)+'px'}:{height:0}"
                 @mouseover="show=true" @mouseout="hideMenu()">
              <div v-for="(val,num) in item.menu.option">
                <p @click.stop="Jump(item.path,val.title)" class="transition2">{{val.title}}</p>
              </div>
            </div>
          </div>
          <el-button type="primary" class="force" size="mini"><span class="el-icon-phone f16 telFont"></span>186-6716-2280
          </el-button>
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
        height: 0,
        showIndex: "",
        show: false,
        list: header,
      }
    },
    filters: {},
    methods: {
      Jump(path, data) {
        this.$router.push({
          path: path,
          query: {
            str: data
          }
        });
      },
      showMenu(index) {
        this.show = true;
        this.showIndex = index;
      },
      hideMenu() {
        this.show = false;
      }
    },
    components: {},
    mounted() {
    }
  }
</script>

<style lang="less" scoped>
  @import '../../css/webless.less';

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

    .content {
      width: 1300px;
      margin: 0 auto;
      position: relative;
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
      background: @colour;
      top: -2px;
    }

    .pointer:hover {
      span {
        color: @colour;
      }

      .line {
        width: 100%;
      }
    }

    .active {
      color: @colour;

      span {
        color: @colour;
      }

      .line {
        width: 100%;
      }
    }

    .menu {
      top: 100px;
      background: white;

      > div {
        white-space: nowrap;

        p {
          padding: 0 10px;
          line-height: 40px;
        }

        p:hover {
          background: @colour;
          color: white;
        }
      }
    }

    .force {
      background: @colour;
      border-color: @colour;
    }

    .transition5 {
      transition: all 0.5s;
      -moz-transition: all 0.5s; /* Firefox 4 */
      -webkit-transition: all 0.5s; /* Safari 和 Chrome */
      -o-transition: all 0.5s; /* Opera */
    }

    .transition2 {
      transition: all 0.2s;
      -moz-transition: all 0.2s; /* Firefox 4 */
      -webkit-transition: all 0.2s; /* Safari 和 Chrome */
      -o-transition: all 0.2s; /* Opera */
    }
  }
</style>
