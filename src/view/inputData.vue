<template>
	<div class="box_warpper">
		<v-headerImg></v-headerImg>
		<div class="box w1300" style="padding:20px 0 30px 30px;">
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
							action="http://xtroms.utools.club/uploadImg"
							name="img"
							list-type="picture-card"
							:on-success="handleSuccess"
							:on-remove="handleRemove">
				<i class="el-icon-plus"></i>
			</el-upload>
			<div class="__relative mt20 mb50">
				<div id="editor" type="text/plain" style="width:1000px;height:400px;"></div>
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
        dataObj: {
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
      handleRemove(file, fileList) {
        console.log(file, fileList);
      },
      handleSuccess(file, fileList) {
        console.log(file, fileList);
      },
      init() {
        this.ue = UE.getEditor('editor', {
          serverUrl: 'http://xtroms.utools.club/ueditor-backend',
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
        that.dataObj.content = that.ue.getContent();
        home.addData(that.dataObj).then((res) => {
          if (res.data.code === 20000) {
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
