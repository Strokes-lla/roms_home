<template>
	<div class="container __relative mt20">
		<img :src="data.img"/>
		<div class="left __absolute top0 right0">
			<p>{{data.title}}</p>
			<div class="xn_c_case_24_coent">
				{{data.intro}}
			</div>
			<span class="pointer" @click="showDetails(data.content)">查看更多 ></span>
		</div>
	</div>
</template>

<script>
  export default {
    props: ['index','data'],
    data() {
      return {}
    },
    filters: {},
    methods: {
      showDetails(data) {
        this.$emit('showDetails',data)
      },
    },
    components: {},
    mounted() {
    }
  }
</script>

<style lang="less" scoped>
	@import '../../css/webless.less';

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
