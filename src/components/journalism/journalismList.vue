<template>
	<div class="container __relative mt20">
		<img :src="img[index]"/>
		<div class="left __absolute top0 right0">
			<p>国控点环境辐射自动监测站</p>
			<div class="xn_c_case_24_coent">
				国控点辐射环境自动监测站由我公司自主研发设计。该监测站是一种集成站房式综合性监测系统，配套多种在线监测、采样设备。通过本地数据采集与通信软硬件平台，将监测数据与报国控点辐射环境自动监测站由我公司自主研发设计。该监测站是一种集成站房式综合性监测系统，配套多种在线监测、采样设备。通过本地数据采集与通信软硬件平台，将监测数据与报国控点辐射环境自动监测站由我公司自主研发设计。该监测站是一种集成站房式综合性监测系统，配套多种在线监测、采样设备。通过本地数据采集与通信软硬件平台，将监测数据与报国控点辐射环境自动监测站由我公司自主研发设计。该监测站是一种集成站房式综合性监测系统，配套多种在线监测、采样设备。通过本地数据采集与通信软硬件平台，将监测数据与报
			</div>
			<span class="pointer" @click="showDetails">查看更多 ></span>
		</div>
	</div>
</template>

<script>
  export default {
    props:['index'],
    data() {
      return {
        img:[require('../../assets/img/img3.png'),require('../../assets/img/img4.png'),require('../../assets/img/img5.png'),require('../../assets/img/img7.png'),require('../../assets/img/img8.png')]
      }
    },
    filters: {},
    methods: {
      showDetails(){
        this.$emit('showDetails')
      },
    },
    components: {},
    mounted() {
    }
  }
</script>

<style lang="less" scoped>
	@import '../../../css/webless.less';

	.container {
		height: 210px;
		border-bottom: solid 1px #cccccc;
		img {
			width: 300px;
			height: 200px;
		}

		.left {
			height: 200px;
			width: 630px;

			> p {
				font-size: 16px;
				color: #2b2b2b;
			}

			> span {
				font-size: 12px;
				color: #000;
			}

			> span:hover {
				text-decoration: underline;
			}

			.xn_c_case_24_coent {
				width: 600px;
				height: 150px;
				line-height: 35px;
				overflow: hidden;
				display: -webkit-box;
				-webkit-box-orient: vertical;
				-webkit-line-clamp: 4;
				font-size: 16px;
				color: #999999;
			}
		}

		.left:hover {
			> p {
				color: @colour;
			}

			> div {
				color: @colour7;
			}

			> span {
				color: @colour;
			}
		}
	}
</style>
