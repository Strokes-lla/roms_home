<template>
	<div class="box_warpper">
		<v-headerImg></v-headerImg>
		<div class="box __relative w1300">
			<div v-for="(item,index) in 10" class="__relative tc erweima transition fl ml20 mb20">
				<img src="../assets/img/erweima.png" class="__relative transition" style="margin:15px auto 0 auto;" height="130" width="130"/>
				<span>iOS常规监测app下载</span>
			</div>
		</div>
	</div>
</template>

<script>
  import headerImg from "@/components/headerImg"

  export default {
    data() {
      return {}
    },
    filters: {},
    methods: {},
    components: {
      'v-headerImg': headerImg,
    },
    mounted() {
    }
  }
</script>

<style lang="less" scoped>
	@import '../../css/webless.less';

	.box_warpper {
		.box {
			background: white;
			min-height: 1000px;
			padding: 20px 30px 0 30px;
		}
		.transition {
			transition: all 0.3s;
			-moz-transition: all 0.3s; /* Firefox 4 */
			-webkit-transition: all 0.3s; /* Safari 和 Chrome */
			-o-transition: all 0.3s; /* Opera */
		}
		.erweima{
			width: 180px;
			height:180px;
			border: solid 1px #efefef;
			color: #666;
			font-size:14px;
			img{
				transform: scale(0.9,0.9);
			}
		}
		.erweima:hover{
			border: solid 1px @colour;
			img{
				transform: scale(1,1);
			}
		}
	}
</style>
