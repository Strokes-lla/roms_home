<template>
  <div class="box_warpper">
    <v-headerImg></v-headerImg>
    <div class="box w1300">
      <v-leftMenu :data="data" ref="leftMenu"></v-leftMenu>
      <div class="content">

      </div>
    </div>
  </div>
</template>

<script>
  import headerImg from "@/components/headerImg"
  import leftMenu from "@/components/leftMenu"
  import header from '../../unit/header'

  export default {
    data() {
      return {
        data: {
          title: "综合产品目录",
          option: [],
        }
      }
    },
    filters: {},
    methods: {
      setData(){
        this.data.option = header.find((item, index) => item.path === '/productCatalog').menu.option;
        this.$refs.leftMenu.getData(this.data)
      },
    },
    components: {
      'v-headerImg': headerImg,
      'v-leftMenu': leftMenu
    },
    mounted() {
      this.setData();
    }
  }
</script>

<style lang="less" scoped>
  .box_warpper {
    .box {
      min-height: 600px;
    }
    .content{
      display: inline-block;
      background:white;
      width:1000px;
      min-height: 1000px;
      margin:20px 0 0 300px;
    }
  }
</style>
