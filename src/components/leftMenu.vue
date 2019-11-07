<template>
  <div class="box_warpper __absolute">
    <div class="content mt20 mb50 ovhide" style="width: 270px;">
      <div class="title">
        <span class="f30 white ml20">{{data.title}}</span>
        <span class="el-icon-caret-right white f30 __relative" style="top:2px;"></span>
      </div>
      <div class="option pointer __relative" v-for="(item,index) in data.option">
        <div v-if="index===active.fatherActive" class="line __absolute top0 bottom"></div>
        <div @click="activeChange(index,1)" :class="index===active.fatherActive ? 'active':''" class="menuTitle">
          <span class="f16 ml10 ml20">{{item.title}}</span>
        </div>
        <div class="sonMenu ml40" v-if="index===active.fatherActive">
          <div class='sonOption' :title="val.sonTitle" v-for="(val,num) in item.list">
            <div class="sonOption" @click="activeChange(num,2)" :class="num===active.sonActive ? 'active':''">
              <span :style="val.sonlist ? {opacity:1}:{opacity:0}" class="el-icon-arrow-right"></span>
              <span>{{val.sonTitle}}</span>
            </div>
            <div v-if="num===active.sonActive" class="grandsonMenu ml20">
              <div @click="activeChange(n,3)" :title="v" :class="n===active.grandsonActive ? 'active':''"
                   class='grandsonOption'
                   v-for="(v,n) in val.sonlist">
                <span>{{v}}</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>
</template>

<script>
  export default {
    data() {
      return {
        data: {},
        active: {
          fatherActive: '',
          sonActive: '',
          grandsonActive: ''
        },
      }
    },
    filters: {},
    methods: {
      activeChange(index, Judge) {
        if (Judge === 1) {
          this.active.fatherActive = index;
          this.active.sonActive = '';
          this.active.grandsonActive = '';
        } else if (Judge === 2) {
          this.active.sonActive = index;
          this.active.grandsonActive = '';
        } else if (Judge === 3) {
          this.active.grandsonActive = index;
        }
      },
      getData(data) {
        this.data = data
      },
    },
    components: {},
    mounted() {
    }
  }
</script>

<style lang="less" scoped>
  .box_warpper {
    .content {
      background: white;
      .option {
        border-bottom: solid 1px #eaeaea;
        width: 100%;
      }

      .title {
        width: 100%;
        height: 60px;
        background: rgb(64, 158, 255);
        line-height: 60px;
      }

      .line {
        width: 2px;
        background: rgb(64, 158, 255);
      }

      .menuTitle {
        width: 100%;
        height: 50px;
        line-height: 50px;
      }

      .active {
        color: rgb(64, 158, 255);
      }

      .sonMenu {
        .sonOption {
          width: 230px;
          min-height: 25px;
          overflow: hidden;
          text-overflow: ellipsis;
          -o-text-overflow: ellipsis;
          white-space: nowrap;
        }
      }

      .grandsonMenu {
        .grandsonOption {
          width: 210px;
          height: 25px;
          overflow: hidden;
          text-overflow: ellipsis;
          -o-text-overflow: ellipsis;
          white-space: nowrap;
        }
      }
    }

  }
</style>
