<template>
  <div class="box_warpper">
    <swiper :options="swiperOption" ref="mySwiper" @someSwiperEvent="callback">
      <!-- slides -->
      <swiper-slide v-for="(item,index) in imgList" :key="index" class="bgImg"
                    :style="{background:'url('+item+') center'}"></swiper-slide>
      <!-- Optional controls -->
      <div class="swiper-pagination" slot="pagination"></div>
      <div class="swiper-button-prev ml20" slot="button-prev"></div>
      <div class="swiper-button-next mr20" slot="button-next"></div>
    </swiper>
  </div>
</template>
<script>
  import 'vue-awesome-swiper/node_modules/swiper/dist/css/swiper.css'
  import {swiper, swiperSlide} from 'vue-awesome-swiper'

  export default {
    data() {
      return {
        swiperOption: {
          loop: true,
          autoplay: true,
          navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
          },
        },
        imgList: [require('../../assets/img/690.jpg'), require('../../assets/img/691.jpg')]
      }
    },
    filters: {},
    methods: {
      callback() {

      },
    },
    computed: {
      swiper() {
        return this.$refs.mySwiper.swiper
      }
    },
    components: {
      swiper,
      swiperSlide
    },
    mounted() {
      // this.swiper.slideTo(0, 1000, false)
    },
  }
</script>

<style lang="less" scoped>
  @import '../../../css/webless.less';

  .box_warpper {
    .swiper-container {
      width: 100%;
      min-width:1300px;
      height: 690px;
    }

    .bgImg {
      background-size: cover;
    }

    .swiper-button-prev {
      width: 50px;
      height: 50px;
      background: url('../../assets/img/shutter_prevBtn.png');
      background-position-y: -50px;
    }

    .swiper-button-next {
      width: 50px;
      height: 50px;
      background: url('../../assets/img/shutter_nextBtn.png');
      background-position-y: -50px;
    }
  }
</style>
