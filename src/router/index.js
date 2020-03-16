import Vue from 'vue'
import Router from 'vue-router'

Vue.use(Router);

export default new Router({
  mode: 'hash',
  routes: [
    {
      path: '/',
      name: 'home',
      component: () => import('@/view/home'),
    },
    {
      path: '/aboutUs',
      name: 'aboutUs',
      component: () => import('@/view/aboutUs'),
    },
    {
      path: '/productCatalog',
      name: 'productCatalog',
      component: () => import('@/view/productCatalog'),
    },
    {
      path: '/journalism',
      name: 'journalism',
      component: () => import('@/view/journalism'),
    },
    {
      path: '/downloads',
      name: 'downloads',
      component: () => import('@/view/downloads'),
    },
    {
      path: '/contactUs',
      name: 'contactUs',
      component: () => import('@/view/contactUs'),
    },
    {
      path: '/afterSale',
      name: 'afterSale',
      component: () => import('@/view/afterSale'),
    },
    {
      path: '/inputData',
      name: 'inputData',
      component: () => import('@/view/inputData'),
    },
  ]
})
