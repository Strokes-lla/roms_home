<template>
  <div class="box_warpper">
    <v-headerImg></v-headerImg>
    <div class="box w1300">
      <v-leftMenu :data="data" @getDetails="getDetails" ref="leftMenu"></v-leftMenu>
      <div class="content __relative">
        <div v-if="details">
          <v-information @showDetails="showDetails" :data="item" :index="index" :key="index"
                         v-for="(item,index) in detailsList"></v-information>
          <el-row type="flex" justify="center" class="page-divide mt20">
            <el-pagination
              :current-page="nowpage"
              :page-size="pageSize"
              layout="total, prev, pager, next"
              :total="pageCount"
              @current-change="getTableData"/>
          </el-row>
        </div>
        <v-productDetails @back="showDetails" :detailsData='detailsData' v-else></v-productDetails>
      </div>
    </div>
  </div>
</template>

<script>
  import headerImg from "@/components/headerImg"
  import leftMenu from "@/components/leftMenu"
  import productDetails from "@/components/productCatalog/productDetails"
  import information from "@/components/information"
  import home from '../../api/home'

  export default {
    data() {
      return {
        details: true,
        nowpage: 1,
        pageSize: 10,
        pageCount: 1,
        data: {
          title: "产品中心",
          option: [],
        },
        detailsList: [],
        detailsData: []
      }
    },
    filters: {},
    methods: {
      getDetails(id) {
        let that = this;
        home.getDetailsList({
          categoryId: id
        }).then((res) => {
          if (res.data.code === 20000) {
            that.detailsList = res.data.data;
          }
        })
      },
      showDetails(data) {
        console.log(data)
        this.details = !this.details;
        this.detailsData = data;
      },
      getTableData() {
      },
      init() {
        let that = this;
        home.getList().then((res) => {
          if (res.data.code === 20000) {
            that.data.option = res.data.data;
            that.$refs.leftMenu.getData([that.data]);
          }
        })
      },
    },
    components: {
      'v-headerImg': headerImg,
      'v-leftMenu': leftMenu,
      'v-productDetails': productDetails,
      'v-information': information
    },
    mounted() {
      this.init();
      this.getDetails('');
    }
  }
</script>

<style lang="less" scoped>
  @import '../../css/webless.less';

  .box_warpper {
    .box {
      min-height: 1040px;
    }

    .content {
      display: inline-block;
      background: white;
      width: 1000px;
      min-height: 1040px;
      padding: 0 20px;
      margin: 20px 0 0 300px;

      .pagination {
        margin: 0 auto;
        bottom: 20px;
      }
    }
  }
</style>
