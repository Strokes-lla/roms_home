import instance from '../config/index'
import qs from 'qs'

export default {
  getList(data) {
    return instance.get("/category/list?" + qs.stringify(data))
  },
  getDetailsList(data) {
    return instance.get("/article/list?" + qs.stringify(data))
  },
  addData(data) {
    return instance.post("/article/add", qs.stringify(data))
  },
}
