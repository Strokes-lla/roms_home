<template>
	<div class="box_warpper">
		<v-modularTitle :strText="strText"></v-modularTitle>
		<div class="w1300 box mb20">
			<div class="__relative bgBox transition inlineBlock pointer"
					 @click="Jump('/productCatalog',item)"
					 :class="'img'+index%10"
					 v-for="(item,index) in list">
				<p class="heightCenter tc w100">{{item}}</p>
			</div>
		</div>
	</div>
</template>

<script>
  import modularTitle from "@/components/home/modularTitle"
  import header from '../../../unit/header'

  export default {
    data() {
      return {
        showIndex: "",
        strText: {
          title: '综合产品目录',
          content: '强大的业务支撑体系，确保企业用好 "辐射监测"'
        },
        list: []
      }
    },
    filters: {},
    methods: {
      Jump(path, data) {
        this.$router.push({
          path: path,
          query: {
            str: data
          }
        });
      },
      show(index) {
        this.showIndex = index;
      },
      hide() {
        this.showIndex = '';
      },
      screen() {
        this.list = header[1].menu.option.map((item, index) => item.title);
      },
    },
    components: {
      'v-modularTitle': modularTitle
    },
    computed: {},
    mounted() {
      this.screen();
    }
  }
</script>

<style lang="less" scoped>
	@import '../../../css/webless.less';

	.box_warpper {
		.box {
			background: white;
			min-height: 500px;

			.transition {
				transition: all 0.2s;
				-moz-transition: all 0.2s; /* Firefox 4 */
				-webkit-transition: all 0.2s; /* Safari 和 Chrome */
				-o-transition: all 0.2s; /* Opera */
			}

			.bgBox {
				width: 324px;
				height: 215px;
				margin: 0 1px -3px 0;

				p {
					color: white;
				}
			}

			.bgBox:hover {
				transform: scale(1.05, 1.05);
			}

			.img0 {
				background: url('../../assets/img/product_img1.png');
				background-size: 100% 100%;
			}

			.img1 {
				background: url('../../assets/img/product_img2.png');
				background-size: 100% 100%;
			}

			.img2 {
				background: url('../../assets/img/product_img3.png');
				background-size: 100% 100%;
			}

			.img3 {
				background: url('../../assets/img/product_img4.png');
				background-size: 100% 100%;
			}

			.img4 {
				background: url('../../assets/img/product_img5.png');
				background-size: 100% 100%;
			}

			.img5 {
				background: url('../../assets/img/product_img6.png');
				background-size: 100% 100%;
			}

			.img6 {
				background: url('../../assets/img/product_img7.png');
				background-size: 100% 100%;
			}

			.img7 {
				background: url('../../assets/img/product_img8.png');
				background-size: 100% 100%;
			}

			.img8 {
				background: url('../../assets/img/product_img9.png');
				background-size: 100% 100%;
			}

			.img9 {
				background: url('../../assets/img/product_img10.png');
				background-size: 100% 100%;
			}

			.img10 {
				background: url('../../assets/img/product_img11.png');
				background-size: 100% 100%;
			}
		}

	}
</style>
