<template>
  <div class="box_warpper">
    <div class="header">
      <div class="content h100">
        <img src="../assets/img/logo.png" class="heightCenter ml40" style="margin-top: -25px;" height="50" width="130"/>
        <div class="right __absolute" style="right:40px;">
          <div @click="Jump(item.path,'',1)" @mouseover="showMenu(item,index)" @mouseout="hideMenu()"
               class="pointer title ml30 __relative"
               :class="index==list.length-1 ? 'mr30':''"
               v-for="(item,index) in list">
            <div :class="$route.path===item.path ? 'active':''">
              <span class="f16 transition">{{item.title}}</span>
              <span class="el-icon-arrow-down transition f16"></span>
              <div class="line __relative transition"></div>
            </div>
          </div>
          <el-button type="primary" size="mini"><span class="el-icon-phone f16 telFont"></span>4008-123-123</el-button>
        </div>
      </div>
      <div class="menu __absolute right0 left0 transition ovhide" :style="show ? {height:height+'px'}:{height:0}"
           @mouseover="show=true" @mouseout="show=false;" style="top:100px;">
        <div ref="menu">
          <div class="tr mr40 sonMenu">
            <div class="sonOption ml10" v-for="(item,index) in sonList">
              <span @click="Jump(index,item.title,2)" class="f16 pointer transition"
                    :class="sonIndex===index ? 'active':''"
                    @mouseover="sonActive(index,1)">{{item.title}}</span>
              <span class="f16 ml10" v-if="index!==(sonList.length-1)">|</span>
            </div>
          </div>
          <!--          <div class="tr mr40 sonMenu">-->
          <!--            <div class="sonOption ml10" v-for="(item,index) in grandsonList">-->
          <!--              <span class="f16 pointer transition" :class="grandsonIndex===index ? 'active':''"-->
          <!--                    @mouseover="sonActive(index,2)">{{item.sonTitle}}</span>-->
          <!--              <span class="f16 ml10" v-if="index!==(grandsonList.length-1)">|</span>-->
          <!--            </div>-->
          <!--          </div>-->
          <!--          <div class="tr mr40 sonMenu">-->
          <!--            <div class="sonOption ml10" v-for="(item,index) in greatGrandsonList">-->
          <!--              <span class="f16 pointer transition" :class="greatGrandsonIndex===index ? 'active':''"-->
          <!--                    @mouseover="sonActive(index,3)">{{item}}</span>-->
          <!--              <span class="f16 ml10" v-if="index!==(greatGrandsonList.length-1)">|</span>-->
          <!--            </div>-->
          <!--          </div>-->
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
        show: false,
        list: header,
        fatherIndex: "",
        sonIndex: "",
        grandsonIndex: "",
        greatGrandsonIndex: "",
        sonList: [],
        grandsonList: [],
        greatGrandsonList: []
      }
    },
    filters: {},
    methods: {
      sonActive(index, Judge) {
        if (Judge === 1) {
          this.sonIndex = index;
          this.grandsonList = this.sonList[index].list;
        } else if (Judge === 2) {
          this.grandsonIndex = index;
          this.greatGrandsonList = this.sonList[this.sonIndex].list[index].sonlist;
        } else if (Judge === 3) {
          this.greatGrandsonIndex = index
        }
        this.getHeight();
      },
      Jump(path, data, Judge) {
        this.$router.push({
          path: Judge === 1 ? path : this.list[this.fatherIndex].path,
          query: {
            str: data
          }
        });
      },
      getHeight() {
        setTimeout(() => {
          this.show = true;
          this.height = this.$refs.menu.clientHeight;
        }, 10);
      },
      showMenu(data, index) {
        this.fatherIndex = index;
        this.sonList = [];
        this.grandsonList = [];
        if (data.menu.show) {
          this.height = this.$refs.menu.clientHeight;
          this.sonList = data.menu.option;
          this.getHeight()
        }
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
      min-width: 1300px;
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
      color: rgb(64, 158, 255);

      span {
        color: rgb(64, 158, 255);
      }

      .line {
        width: 100%;
      }
    }

    .menu {
      background: rgba(255, 255, 255, 0.8);

      .sonMenu {
        .sonOption {
          color: #666;
          display: inline-block;
          line-height: 70px;
        }
      }
    }

    .transition {
      transition: all 0.5s;
      -moz-transition: all 0.5s; /* Firefox 4 */
      -webkit-transition: all 0.5s; /* Safari 和 Chrome */
      -o-transition: all 0.5s; /* Opera */
    }
  }
</style>
