// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import axios from 'axios'
import store from './store/index'
import '../css/base.css'
import {
  Icon,
  Button,
  Pagination,
  Row,
  Col,
  Input,
  Upload,
  Dialog,
  Select,
  Option,
  OptionGroup,
  Radio,
  Message,
  Notification
} from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';

Vue.use(Icon);
Vue.use(Button);
Vue.use(Pagination);
Vue.use(Row);
Vue.use(Input);
Vue.use(Upload);
Vue.use(Dialog);
Vue.use(Select);
Vue.use(Option);
Vue.use(OptionGroup);
Vue.use(Radio);
Vue.prototype.$notify = Notification;
Vue.prototype.$message = Message;
Vue.config.productionTip = false;
Vue.prototype.$http = axios;
Vue.prototype.imgUrl = 'http://xtroms.com:8008/';
/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  store,
  components: {App},
  template: '<App/>'
});
