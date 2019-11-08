<template>
  <div class="box_warpper">
    <v-headerImg></v-headerImg>
    <div class="box w1300">
      <v-leftMenu :data="data" @getIndex="getIndex" ref="leftMenu"></v-leftMenu>
      <div class="content __relative">
        <p class="prod_comp_view_name">
          <span class="el-icon-edit mr10"></span>
          <span>{{data.option[active.fatherActive].title}}</span>
        </p>
        <div class="container" v-html="content[active.fatherActive].str"></div>
      </div>
    </div>
  </div>
</template>

<script>
  import headerImg from "@/components/headerImg"
  import leftMenu from "@/components/leftMenu"

  export default {
    data() {
      return {
        active: {
          fatherActive: 0,
        },
        data: {
          title: "关于我们",
          option: [{
            "title": "公司简介"
          }, {
            "title": "团队＆业务"
          }, {
            "title": "公司使命"
          }, {
            "title": "公司愿景"
          }, {
            "title": "公司价值观"
          }],
        },
        content: [{
          str: '<p>杭州湘亭科技有限公司2010年成立于美丽的西子湖畔，专注于辐射环境监测领域和安全领域的设备与技术引进、应用、推广、研发。经过近十年的发展，湘亭科技已经成为了集进出口产品代理、自主研发生产、系统集成和软件开发服务的综合性技术公司，业务涵盖国内核工业、环保、核电、军队、医疗卫生、海关商检、科研院校、工矿企业等众多领域。</p>' +
            '<p>在激烈的市场竞争和发展中，湘亭科技十分注重强化自己的专业性和核心竞争力，于2012年底组建了自己的技术研发团队，公司现有员工近50名。大部分毕业于核物理、辐射防护、电子信息、计算机、机械设计等相关专业，在产品研发、系统集成、软件开发定制等方面拥有较丰富经验。公司现已有发明专利3项、实用新型专利5项，软件著作权20余项等自有知识产权，且多项专利正在申请和审批中。</p>' +
            '<p>湘亭科技多年来在系统集成及软硬件产品定制方面积累了较为丰富的经验，成功将国内外产品与自有技术及设备相结合，研发了多种系统和产品。现公司已转化成果和系统包括“高风险放射源监控系統”、“绿色电磁电离环境连续在线监测系统”、“γ剂量率车载监测应急系统”、“三维一体辐射应急寻源系统”、“无纸化智能辐射监测系统”、“放射性废物库智能安防及收贮管理系统”、“第二次全国污染源普查伴生放射性矿普查电子前端系统”、“辐射应急无人机/机器人系统”、“辐射应急演习综合演练系统”、“PIG监测系统”、“重要物资管理LIMS系统”、 “实验室LIMS系统”、“3D核事故预测软件”等，并承担了国内多项科研课题。</p>' +
            '<p>湘亭科技在长沙设有全资控股的湖南国核智科技有限公司，专注于先进智能的国产设备自主研发生产，并在天津、北京、上海、常州、乌鲁木齐、贵阳等地设有办事处；在常州有控股的专业辐射环境检测公司，已通过30余项专项CMA认证，并在江苏省获得了乙级专项检测能力认定。</p>' +
            '<p>目前公司已获得质量管理体系IS09001、环境管理体系ISO14001、职业健康安全管理体系OHSAS18001认证，获得系统集成三级资质、浙江省双软企业、AAA信用等级、重合同守信用企业、浙江省高新技术企业、中核集团合格供应商。同时任中国辐射防护协会会员单位、核安保分会会员单位、浙江省辐射防护协会的常务理事单位、江苏省核应急签约支持单位。</p>'
        }, {
          str: '<p> 湘亭科技技术人才和顾问大多毕业于清华大学、南华大学、四川大学、兰州大学、东南大学等高校，专业涵盖核物理、辐射防护、电子信息、计算机、机械设计等，力争打造高素质的技术研发团队。在辐射环境领域，公司长期经营的进口仪器品牌包括美国 ThermoFisher，美国 ORTEC、美国 Fluke、法国 NUVIA、德国 Narda、德国 SARAD、德国ENVINET、捷克VF、美国PE、美国Canberra、美国LND等，产品超过600种。</p>'
        }, {
          str: '<p>聚焦公众关注的辐射安全等环境问题，提供智能高端的设备和解决方案以及全方位的专业技术服务，持续创新为客户创造更大价值</p>'
        }, {
          str: '<p>成为创新型辐射安全专家和领先的应急监测设备和解决方案提供商</p>'
        }, {
          str: '<p>创新（Reformation）  积极（Optimist） 责任 (Morality)  专业 (Specialist)</p>'
        }]
      }
    },
    filters: {},
    methods: {
      getIndex(data) {
        this.active = data;
      },
      setData() {
        let arr=this.$route.query.str=='' ? [this.data,0]:[this.data];
        this.$refs.leftMenu.getData(arr)
      },
    },
    components: {
      'v-headerImg': headerImg,
      'v-leftMenu': leftMenu
    },
    mounted() {
      this.setData()
    }
  }
</script>

<style lang="less" scoped>
  .box_warpper {
    .box {
      min-height: 1000px;
    }

    .content {
      display: inline-block;
      background: white;
      width: 1000px;
      min-height: 1000px;
      padding: 10px 20px;
      margin: 20px 0 0 300px;

      .prod_comp_view_name {
        line-height: 34px;
        font-size: 18px;
        color: rgb(64, 158, 255);
        font-weight: normal;
      }

      .container {
        margin-right: 9px;
        text-indent: 32px;
        margin-bottom: 15px;
        line-height: 24px;
        color: #666;
        font-size: 16px;
        position: relative;
        padding-top: 15px;
        overflow: hidden;
      }
    }
  }
</style>
