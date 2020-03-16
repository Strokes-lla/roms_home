<template>
  <div class="box_warpper">
    <v-headerImg></v-headerImg>
    <div class="box w1300" style="padding:20px 0 30px 30px;">
      <div class="__relative mb20">
        <el-radio v-model="dataObj.type" label="1">wrod详情页</el-radio>
        <el-radio v-model="dataObj.type" label="2">固定详情页</el-radio>
      </div>
      <div class="__relative mb20">
        <el-select v-model="dataObj.categoryId" style="width:300px;" placeholder="请选择产品">
          <el-option
            v-for="item in data"
            :key="item.id"
            :label="item.sonTitle"
            :value="item.id">
          </el-option>
        </el-select>
      </div>
      <div class="__relative mb20">
        <el-input v-model="dataObj.title" style="width:300px;" placeholder="请输入标题"></el-input>
      </div>
      <div class="__relative mb30">
        <el-input v-model="dataObj.intro" style="width:300px;" placeholder="请输入简介"></el-input>
      </div>
      <el-upload
        class="mb30"
        action="http://xtroms.com:8008/article/upload"
        name="img"
        :limit='1'
        list-type="picture-card"
        :on-success="handleSuccess"
        :on-remove="handleRemove">
        <i class="el-icon-plus"></i>
      </el-upload>
      <div class="__relative mb50" v-show="dataObj.type==='1'">
        <div id="editor" type="text/plain" style="width:1000px;height:400px;"></div>
      </div>
      <div class="__relative mb50" v-show="dataObj.type==='2'">
        <el-input
          type="textarea"
          :rows="10"
          style="width:800px;"
          placeholder="请输入技术参数"
          v-model="textarea">
        </el-input>
      </div>
      <div class="__relative">
        <el-button type="primary" @click="submission">提交</el-button>
      </div>
    </div>
  </div>
</template>

<script>
  import headerImg from "@/components/headerImg"
  import home from '../../api/home'

  export default {
    data() {
      return {
        data: [],
        textarea: '',
        dataObj: {
          type: '1',
          title: '',
          intro: '',
          img: '',
          content: '',
          categoryId: '',
        },
        ue: '',
      }
    },
    filters: {},
    methods: {
      handleRemove() {
        this.dataObj.img = ''
      },
      handleSuccess(file) {
        if (file.code === 20000) {
          this.$notify({
            title: '成功',
            message: '图片上传成功',
            type: 'success'
          });
          this.dataObj.img = file.data.path
        } else {
          this.$notify.error({
            title: '错误',
            message: '图片上传失败'
          });
        }
      },
      init() {
        this.ue = UE.getEditor('editor', {
          serverUrl: 'http://xtroms.com:8008/ueditor-backend',
        });
        let that = this;
        home.getList().then((res) => {
          if (res.data.code === 20000) {
            that.data = [...res.data.data.map((item, index) => item.list)].flat();
          }
        })
      },
      submission() {
        let that = this;
        that.dataObj.content = that.dataObj.type === '1' ? that.ue.getContent() : that.textarea;
        home.addData(that.dataObj).then((res) => {
          if (res.data.code === 20000) {
            this.$notify({
              title: '成功',
              message: '上传成功',
              type: 'success'
            });
          } else {
            this.$notify.error({
              title: '错误',
              message: '上传失败'
            });
          }
        })
      },
    },
    components: {
      'v-headerImg': headerImg,
    },
    mounted() {
      this.init()
    }
  }
</script>

<style lang="less" scoped>
  .box_warpper {
    .box {
      min-height: 600px;
      background: white;
    }
  }
</style>
