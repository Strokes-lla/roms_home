<template>
  <div class="box_warpper">
    <v-modularTitle :strText="strText"></v-modularTitle>
    <div class="swiper-container mb50">
      <swiper :options="swiperOption" ref="mySwiper" @someSwiperEvent="callback">
        <!-- slides -->
        <swiper-slide v-for="(item,index) in imgList" :key="index">
          <div class="full pointer ovhide" @mousemove="show(index)" @mouseout="hide()">
            <div class="bgImg full transition" :class="index===showIndex ? 'enlarge':''"
                 :style="{background:'url('+item.img+') center','background-size':'100% 100%'}"></div>
            <div class="cover tc transition" :class="index===showIndex ? '':'bgZero'">
              <div class="heightCenter left0 right0" style="margin-top: -47px;">
                <p class="white bold mb5">{{item.title}}</p>
                <div style="height:70px;width: 80%; margin: 0 auto;">
                  <span class="white">{{item.content}}</span>
                </div>
              </div>
            </div>
          </div>
        </swiper-slide>
      </swiper>
    </div>
  </div>
</template>

<script>
  import modularTitle from "@/components/home/modularTitle"
  import 'vue-awesome-swiper/node_modules/swiper/dist/css/swiper.css'
  import {swiper, swiperSlide} from 'vue-awesome-swiper'

  export default {
    data() {
      return {
        showIndex: "",
        strText: {
          title: '综合产品目录',
          content: '强大的业务支撑体系，确保企业用好 "辐射监测"'
        },
        swiperOption: {
          slidesPerView: 4,
        },
        imgList: [{
          title: '辐射安全',
          content: '辐射安全，创新为您',
          img: require('../../assets/img/shutter_4.jpg')
        }, {
          title: '辐射安全',
          content: '辐射安全，创新为您',
          img: require('../../assets/img/shutter_2.jpg')
        }, {
          title: '辐射安全',
          content: '辐射安全，创新为您',
          img: require('../../assets/img/shutter_3.jpg')
        }, {
          title: '辐射安全',
          content: '辐射安全，创新为您',
          img: require('../../assets/img/shutter_4.jpg')
        }]
      }
    },
    filters: {},
    methods: {
      callback() {

      },
      show(index) {
        this.showIndex = index;
      },
      hide() {
        this.showIndex = '';
      },
    },
    components: {
      swiper,
      swiperSlide,
      'v-modularTitle': modularTitle
    },
    computed: {
      swiper() {
        return this.$refs.mySwiper.swiper
      }
    },
    mounted() {
    }
  }
</script>

<style lang="less" scoped>
  .box_warpper {
    .swiper-container {
      width: 1300px;
      height: 200px;
    }

    .full {
      width: 100%;
      height: 100%;
    }

    .bgImg {
    }

    .cover {
      background: rgba(64, 158, 255, 0.4);
      position: absolute;
      top: 0;
      bottom: 0;
      left: 0;
      right: 0;
      z-index: 9999;
    }

    .transition {
      transition: all 0.5s;
      -moz-transition: all 0.5s; /* Firefox 4 */
      -webkit-transition: all 0.5s; /* Safari 和 Chrome */
      -o-transition: all 0.5s; /* Opera */
    }

    .enlarge {
      transform: scale(1.3, 1.3);
      -ms-transform: scale(1.3, 1.3); /* IE 9 */
      -moz-transform: scale(1.3, 1.3); /* Firefox */
      -webkit-transform: scale(1.3, 1.3); /* Safari 和 Chrome */
      -o-transform: scale(1.3, 1.3); /* Opera */
    }

    .bgZero {
      opacity: 0;
    }
  }
</style>
