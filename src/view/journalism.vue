<template>
  <div class="box_warpper">
    <v-headerImg></v-headerImg>
    <div class="box w1300">
      <v-leftMenu :data="data" ref="leftMenu"></v-leftMenu>
      <div class="content __relative">
        <div v-if="details">
          <v-information @showDetails="showDetails" :index="index" :key="index" v-for="(item,index) in 4"></v-information>
          <el-row type="flex" justify="center" class="page-divide mt20">
            <el-pagination
              :current-page="nowpage"
              :page-size="pageSize"
              layout="total, prev, pager, next"
              :total="pageCount"
              @current-change="getTableData"/>
          </el-row>
        </div>
        <v-journalismDetails @back="showDetails" v-else></v-journalismDetails>
      </div>
    </div>
  </div>
</template>

<script>
  import headerImg from "@/components/headerImg"
  import leftMenu from "@/components/leftMenu"
  import information from "@/components/information"
  import journalismDetails from "@/components/journalism/journalismDetails"

  export default {
    data() {
      return {
        details: true,
        nowpage: 1,
        pageSize: 10,
        pageCount: 1,
        data: {
          title: "新闻",
          option: [{
            title: "公司新闻"
          }, {
            title: "行业热点"
          }],
        }
      }
    },
    filters: {},
    methods: {
      getTableData() {
      },
      showDetails() {
        this.details = !this.details
      },
      setData() {
        this.$refs.leftMenu.getData([this.data])
      },
    },
    components: {
      'v-headerImg': headerImg,
      'v-leftMenu': leftMenu,
      'v-information': information,
      'v-journalismDetails': journalismDetails
    },
    mounted() {
      this.setData()
    }
  }
</script>

<style lang="less" scoped>
  .box_warpper {
    .box {
      min-height: 1000px;
    }

    .content {
      display: inline-block;
      background: white;
      width: 1000px;
      min-height: 1000px;
      padding: 0 20px;
      margin: 20px 0 0 300px;
    }
  }
</style>
