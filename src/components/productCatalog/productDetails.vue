<template>
	<div class="box_warpper">
		<p class="prod_comp_view_name">
			<span class="el-icon-edit mr10"></span>
			<span>A、在线辐射监测系统</span>
			<span class="__absolute pointer" @click="back" style="right: 20px;">返回</span>
		</p>
		<div class="prod_view_cont_title mt30">
			<span>产品描述：</span>
		</div>
		<div class="mb50">
			<div class="__relative" v-for="(item,index) in detailsData">
				<div class="box __relative mb30" v-if="index%2===0">
					<div class="strleft">
						<div class="content">
							{{item.text}}
						</div>
					</div>
					<div class="strRight __absolute top0 right0">
						<img :src="item.img" height="300" width="400"/>
					</div>
				</div>
				<div class="box __relative mb30" v-else>
					<div class="strRight __absolute top0 left0">
						<img :src="item.img" height="300" width="400"/>
					</div>
					<div class="strleft" style="margin-left:485px;">
						<div class="content">
							{{item.text}}
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="switch __absolute left0 right0">
			<!--			<span class="__absolute pointer" style="left:50px;">上一页</span>-->
			<!--			<span class="__absolute pointer" style="right:50px;">下一页</span>-->
		</div>
	</div>
</template>

<script>
  import home from '../../../api/home'

  export default {
    props: ['detailsData'],
    data() {
      return {}
    },
    filters: {},
    methods: {
      back() {
        this.$emit('back')
      },

    },
    components: {},
    mounted() {
    }
  }
</script>

<style lang="less" scoped>
	@import '../../../css/webless.less';

	.box_warpper {
		padding: 10px;

		.prod_comp_view_name {
			line-height: 34px;
			font-size: 18px;
			color: @colour;
			font-weight: normal;
		}

		.prod_view_cont_title {
			line-height: 19px;
			color: @colour8;
			font-size: 16px;
		}

		.box {
			width: 100%;
			min-height: 300px;
		}

		.content {
			width: 460px;
			line-height: 25px !important;
			font-size: 14px !important;
			color: #666666 !important;
		}

		.__absolute:hover {
			text-decoration: underline;
		}

		.switch {
			height: 30px;
			color: @colour;
			bottom: 20px;
		}
	}
</style>
