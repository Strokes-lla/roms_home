import axios from 'axios'
const instance=axios.create();
// instance.wapUrl="http://localhost:3002";
instance.defaults.baseURL="http://xtroms.com:8008";
instance.defaults.timeout=5000;
instance.defaults.headers['Content-Type']='application/x-www-form-urlencoded';
// instance.defaults.headers.post['Content-Type']='application/json';
axios.interceptors.request.use=instance.interceptors.request.use;
instance.interceptors.request.use(config=>{
    return config
},err=>{
    return Promise.reject(err)
});


instance.interceptors.response.use(response=>{
    return response
},err=>{
    return Promise.reject(err)
});

export default instance
