<template>
	<div class="box_warpper __absolute">
		<div class="content mt20 mb50 ovhide" style="width: 270px;">
			<div class="title">
				<span class="f30 white ml20">{{data.title}}</span>
				<span class="el-icon-caret-right white f30 __relative" style="top:2px;"></span>
			</div>
			<div class="option pointer __relative" v-for="(item,index) in data.option">
				<div v-if="index===active.fatherActive" class="line __absolute top0 bottom"></div>
				<div @click="activeChange(index,1)" :class="index===active.fatherActive ? 'active':''" class="menuTitle">
					<span class="f16 ml10 ml20">{{item.title}}</span>
				</div>
				<div class="sonMenu ml20" v-if="index===active.fatherActive">
					<div class='sonOption' :title="val.sonTitle" v-for="(val,num) in item.list">
						<div class="sonOption" @click="activeChange(num,2,val)" :class="num===active.sonActive ? 'active':''">
							<span class="f14">{{val.sonTitle}}</span>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
</template>

<script>
  export default {
    data() {
      return {
        data: {},
        active: {
          fatherActive: '',
          sonActive: '',
        },
      }
    },
    filters: {},
    methods: {
      activeChange(index, Judge, data) {
        if (Judge === 1) {
          this.active.fatherActive = index;
          this.active.sonActive = '';
          this.$emit('getIndex', this.active)
        } else if (Judge === 2) {
          this.active.sonActive = index;
          this.$emit('getDetails', data.id)
        }
      },
      getData(data) {
        this.data = data[0];
        this.active.fatherActive = this.data.option.findIndex((item, iundex) => item.title === this.$route.query.str);
        if (data[1] !== undefined) {
          this.active.fatherActive = data[1]
        }
        this.$emit('getIndex', this.active)
      },
    },
    components: {},
    mounted() {
    }
  }
</script>

<style lang="less" scoped>
	@import '../../css/webless.less';

	.box_warpper {
		.content {
			background: white;

			.option {
				border-bottom: solid 1px #eaeaea;
				width: 100%;
			}

			.title {
				width: 100%;
				height: 60px;
				background: @colour;
				line-height: 60px;
			}

			.line {
				width: 2px;
				background: @colour;
			}

			.menuTitle {
				width: 100%;
				height: 50px;
				line-height: 50px;
			}

			.active {
				color: @colour;
			}

			.sonMenu {
				.sonOption {
					width: 240px;
          line-height:35px;
					overflow: hidden;
					text-overflow: ellipsis;
					-o-text-overflow: ellipsis;
					white-space: nowrap;
				}
			}
		}

	}
</style>
