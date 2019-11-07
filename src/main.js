// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import axios from 'axios'
import store from './store/index'
import '../css/base.css'
import {Icon,Button} from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
Vue.use(Icon);
Vue.use(Button);
Vue.config.productionTip = false;
Vue.prototype.$http = axios;
/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  store,
  components: {App},
  template: '<App/>'
});
