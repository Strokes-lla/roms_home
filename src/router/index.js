import Vue from 'vue'
import Router from 'vue-router'

import home from '@/view/home'
import aboutUs from '@/view/aboutUs'
import productCatalog from '@/view/productCatalog'

Vue.use(Router);

export default new Router({
  mode: 'history',
  routes: [
    {
      path: '/',
      name: 'home',
      component: home,
    },
    {
      path: '/aboutUs',
      name: 'aboutUs',
      component: aboutUs,
    },
    {
      path: '/productCatalog',
      name: 'productCatalog',
      component: productCatalog,
    },
  ]
})
