/*
 Navicat Premium Data Transfer

 Source Server         : 本地docker mysql
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : xtroms.com

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 05/01/2020 17:07:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT 'UUID',
  `createTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建事件',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '标题',
  `intro` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '简介',
  `img` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '封面图片',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL COMMENT '文章内容',
  `categoryId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '分类ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_article_category`(`categoryId`) USING BTREE,
  CONSTRAINT `FK_article_category` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci COMMENT = '文章表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('d5b160f8-2df4-11ea-a01d-0242ac110002', '2020-01-03 06:46:56', 'hahahah', '描述', 'tu', 'c', '5e530967-23d2-4715-afc5-5375be3672a0');
INSERT INTO `article` VALUES ('dd514335-2d32-11ea-a01d-0242ac110002', '2020-01-02 07:38:27', '国控点环境辐射自动监测站', '国控点辐射环境自动监测站由我公司自主研发设计。该监测站是一种集成站房式综合性监测系统，配套多种在线监测、采样设备。通过本地数据采集与通信软硬件平台，将监测数据与报国控点辐射环境自动监测站由我公司自主研发设计。该监测站是一种集成站房式综合性监测系统，配套多种在线监测、采样设备。通过本地数据采集与通...', 'tu', '[{text:\'\',img:\'\'},{text:\'\',img:\'\'},{text:\'\',img:\'\'},{text:\'\',img:\'\'}]', '5e530967-23d2-4715-afc5-5375be3672a0');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT 'UUID',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '名称',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `type` int(11) NULL DEFAULT NULL COMMENT '1:一级标题',
  `supId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '上级ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_category_category`(`supId`) USING BTREE,
  CONSTRAINT `FK_category_category` FOREIGN KEY (`supId`) REFERENCES `category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci COMMENT = '产品分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('01cbda0d-90c2-44ea-a163-b6a49f5101e5', 'B8、遥控机器', 8, 2, '52fd54ba-bffa-4a7d-a763-89e61b611bc9');
INSERT INTO `category` VALUES ('05d0fcfd-e6f2-46b1-974a-41c58ba9288e', 'D10、LSC-LB7超低本底液闪谱仪', 10, 2, 'ae832d9c-77ec-4b43-8ff8-eca5b99e4f1a');
INSERT INTO `category` VALUES ('0716b369-cb88-4711-ba47-af0acbb61fa3', 'G5、覆盖去污洗消装置', 5, 2, '7516ea72-4f7c-46bd-9087-e2f60bbc0783');
INSERT INTO `category` VALUES ('0eab52a7-b8db-49b7-8d49-25f1519bf0eb', 'D2、Canberra实验室高纯锗γ', 2, 2, 'ae832d9c-77ec-4b43-8ff8-eca5b99e4f1a');
INSERT INTO `category` VALUES ('126fce89-f8ac-4aee-83b7-6d99fb16a2fc', 'J7、ROMS500 直流电合成场强监测系统', 7, 2, 'd522afb2-19a0-4641-b463-60c1f44926c2');
INSERT INTO `category` VALUES ('12c34e87-bf96-4291-b599-08f9cc68be1a', 'C10、核辐射防护套装', 10, 2, '4d6bdd28-9e3d-4465-97d6-1a09e08593d3');
INSERT INTO `category` VALUES ('1450b439-3394-4a51-972b-178d01ad15f6', 'D13、FGD系列光释光测量系统', 13, 2, 'ae832d9c-77ec-4b43-8ff8-eca5b99e4f1a');
INSERT INTO `category` VALUES ('14fb6271-50d8-4766-beb2-67bd1bcb7c46', 'D1、ORTEC实验室高纯锗γ谱仪', 1, 2, 'ae832d9c-77ec-4b43-8ff8-eca5b99e4f1a');
INSERT INTO `category` VALUES ('15154453-4451-4996-9569-48a1f034a3a8', 'E2、氚/碳采样器', 2, 2, '5ad4cfa9-2c0c-4662-a738-0bdf3019303d');
INSERT INTO `category` VALUES ('15306289-b58d-4a09-ab61-ef9cabd2c001', 'B1、ROMS300单兵应急辐射监测系', 1, 2, '52fd54ba-bffa-4a7d-a763-89e61b611bc9');
INSERT INTO `category` VALUES ('155f2393-719b-470e-a155-572f136ccdf0', 'G4、洗消去污装置', 4, 2, '7516ea72-4f7c-46bd-9087-e2f60bbc0783');
INSERT INTO `category` VALUES ('18213d28-74e1-4093-b524-7a606a4f9a2a', 'C3、表面污染监测仪', 3, 2, '4d6bdd28-9e3d-4465-97d6-1a09e08593d3');
INSERT INTO `category` VALUES ('1d175cb9-b3be-4899-8708-1402de94616b', 'B4、GHZ 8302无人机辐射应急巡测系统', 4, 2, '52fd54ba-bffa-4a7d-a763-89e61b611bc9');
INSERT INTO `category` VALUES ('209f49e2-dbcd-498e-a99f-9ef543a658e1', 'C6、测氡仪', 6, 2, '4d6bdd28-9e3d-4465-97d6-1a09e08593d3');
INSERT INTO `category` VALUES ('22b06c67-631d-47d1-b69b-6e716bc9b7b7', 'H2、放疗质控设备', 2, 2, 'db3a8732-1605-4785-8295-5b863f035bf8');
INSERT INTO `category` VALUES ('2427a01c-c7ce-425d-8834-2e303ff6826a', 'B9、NuVISION γ相', 9, 2, '52fd54ba-bffa-4a7d-a763-89e61b611bc9');
INSERT INTO `category` VALUES ('24ee9397-2134-49d1-a3a2-40252bea5165', 'E4、TB-101型有机氚碳氧化燃烧装置', 4, 2, '5ad4cfa9-2c0c-4662-a738-0bdf3019303d');
INSERT INTO `category` VALUES ('24ef35e1-fe19-4463-9f2c-fa9550d8d7dd', 'D15、REM500中子谱', 15, 2, 'ae832d9c-77ec-4b43-8ff8-eca5b99e4f1a');
INSERT INTO `category` VALUES ('2804aaf3-8d50-496f-9e79-780538027b84', 'D11、GCT 6220超低本底液闪谱仪', 11, 2, 'ae832d9c-77ec-4b43-8ff8-eca5b99e4f1a');
INSERT INTO `category` VALUES ('2decb747-ca7c-4ebd-ba2a-504c9058625e', 'E9、PM400行星式球磨仪', 9, 2, '5ad4cfa9-2c0c-4662-a738-0bdf3019303d');
INSERT INTO `category` VALUES ('2f542c99-0a8e-46d9-8970-c88170fbe43f', 'D8、Alpha Analyst多路α谱', 8, 2, 'ae832d9c-77ec-4b43-8ff8-eca5b99e4f1a');
INSERT INTO `category` VALUES ('2fad2f24-c5f8-4370-99a7-3cb4ae39e61e', 'B7、IRIS-Mobile车载放射性巡测系', 7, 2, '52fd54ba-bffa-4a7d-a763-89e61b611bc9');
INSERT INTO `category` VALUES ('30738e0c-7ce8-48a7-8352-74810eade414', 'J4、ROMS310 辐射应急无人机监测系统', 4, 2, 'd522afb2-19a0-4641-b463-60c1f44926c2');
INSERT INTO `category` VALUES ('31c392e3-ba8e-4528-b962-22b2c9b5bdde', 'E11、微波材料学工作站', 11, 2, '5ad4cfa9-2c0c-4662-a738-0bdf3019303d');
INSERT INTO `category` VALUES ('37ece90e-04a7-4cb9-ba12-c0106f64b63c', 'E7、全自动放射性水样蒸发浓缩仪', 7, 2, '5ad4cfa9-2c0c-4662-a738-0bdf3019303d');
INSERT INTO `category` VALUES ('39ffb8c9-9dcf-460d-a3d0-142589c2f449', 'E5、氚电解浓缩装置', 5, 2, '5ad4cfa9-2c0c-4662-a738-0bdf3019303d');
INSERT INTO `category` VALUES ('3f694c02-a05d-49d3-8e9e-be0631aa4b08', 'F、国土安全', 6, 1, NULL);
INSERT INTO `category` VALUES ('4026683a-0310-4bb8-aa73-d8c6a6c5f11a', 'G3、无人机三维辐射监测系统', 3, 2, '7516ea72-4f7c-46bd-9087-e2f60bbc0783');
INSERT INTO `category` VALUES ('46b2b4b2-9b4c-4d45-91ba-9d0a3eeb1b64', 'C2、便携式γ谱仪', 2, 2, '4d6bdd28-9e3d-4465-97d6-1a09e08593d3');
INSERT INTO `category` VALUES ('46b436f3-85a9-441b-a278-b6dc98b1a31f', 'B11、FoodGuard-1便携式食品水样测量', 11, 2, '52fd54ba-bffa-4a7d-a763-89e61b611bc9');
INSERT INTO `category` VALUES ('4d6bdd28-9e3d-4465-97d6-1a09e08593d3', 'C、保健物理仪器', 3, 1, NULL);
INSERT INTO `category` VALUES ('52d85659-a0f5-4ad6-b83d-e2ef13f2306b', 'C5、便携式氚监测仪', 5, 2, '4d6bdd28-9e3d-4465-97d6-1a09e08593d3');
INSERT INTO `category` VALUES ('52fd54ba-bffa-4a7d-a763-89e61b611bc9', 'B、核应急与反恐', 2, 1, NULL);
INSERT INTO `category` VALUES ('54aa24ed-0e94-4170-84cc-ea56753d9008', 'J3、ROMS300 辐射应急单兵组网系统', 3, 2, 'd522afb2-19a0-4641-b463-60c1f44926c2');
INSERT INTO `category` VALUES ('59d2f541-7af0-4765-bde9-b2b932384e46', 'D17、ZEISS Axio Imager Z2染色体自 动分析仪', 17, 2, 'ae832d9c-77ec-4b43-8ff8-eca5b99e4f1a');
INSERT INTO `category` VALUES ('5ad4cfa9-2c0c-4662-a738-0bdf3019303d', 'E、样品采集与制备', 5, 1, NULL);
INSERT INTO `category` VALUES ('5e530967-23d2-4715-afc5-5375be3672a0', 'A1、辐射早期预警系统', 1, 2, 'cd11d7f4-22a8-418a-bc80-764123010a52');
INSERT INTO `category` VALUES ('5f5dfde2-6d2b-4926-b5a1-f4607ae52819', 'J5、ROMS400 放射性废物收贮车管理系统', 5, 2, 'd522afb2-19a0-4641-b463-60c1f44926c2');
INSERT INTO `category` VALUES ('65e43f0b-a6c6-42fe-962f-8d35f2d1c1cd', 'J10、ROMS2000 辐射实验室LIMS系统', 10, 2, 'd522afb2-19a0-4641-b463-60c1f44926c2');
INSERT INTO `category` VALUES ('677a828d-f875-4ed4-84ba-f7b1e6829c84', 'C7、手足、工具、全身污染监测仪', 7, 2, '4d6bdd28-9e3d-4465-97d6-1a09e08593d3');
INSERT INTO `category` VALUES ('6ac0f0c5-0a44-4d2d-a2a7-d0a917c3ba94', 'F1、GHZ3215可移动门式辐射监测仪', 1, 2, '3f694c02-a05d-49d3-8e9e-be0631aa4b08');
INSERT INTO `category` VALUES ('6b255c66-45d3-48dc-bf92-90c56cf75705', 'B13、移动实验室', 13, 2, '52fd54ba-bffa-4a7d-a763-89e61b611bc9');
INSERT INTO `category` VALUES ('6d3843c2-a947-442f-bc5c-2434fd2ad7d5', 'D12、Harshaw系列热释光测量系', 12, 2, 'ae832d9c-77ec-4b43-8ff8-eca5b99e4f1a');
INSERT INTO `category` VALUES ('705fe077-5a6c-4214-92f2-65549af6dd30', 'C11、电磁辐射检测仪', 11, 2, '4d6bdd28-9e3d-4465-97d6-1a09e08593d3');
INSERT INTO `category` VALUES ('72fea136-5241-45db-9e2c-887789c664bf', 'D9、Alpha Ensemble多路α谱', 9, 2, 'ae832d9c-77ec-4b43-8ff8-eca5b99e4f1a');
INSERT INTO `category` VALUES ('739f3c59-c2c5-432c-ab67-4e09a0bd07ef', 'D7、iMatic全自动换样低本底α、β计数', 7, 2, 'ae832d9c-77ec-4b43-8ff8-eca5b99e4f1a');
INSERT INTO `category` VALUES ('742df244-8ddd-4be4-aa10-07055406c09f', 'G7、核化去污洗消车', 7, 2, '7516ea72-4f7c-46bd-9087-e2f60bbc0783');
INSERT INTO `category` VALUES ('7516ea72-4f7c-46bd-9087-e2f60bbc0783', 'G、退役、去污洗消', 7, 1, NULL);
INSERT INTO `category` VALUES ('765b6e49-d763-4b69-be35-c196671afa73', 'D16、原子吸收分光光谱仪', 16, 2, 'ae832d9c-77ec-4b43-8ff8-eca5b99e4f1a');
INSERT INTO `category` VALUES ('76ef141d-8f94-4268-b61d-14c7b3aba97c', 'B10、GeGI5高分辨率γ', 10, 2, '52fd54ba-bffa-4a7d-a763-89e61b611bc9');
INSERT INTO `category` VALUES ('78828861-bae9-49bc-98c7-a0f86c87f2ce', 'B2、PGIS-2背包式寻源系', 2, 2, '52fd54ba-bffa-4a7d-a763-89e61b611bc9');
INSERT INTO `category` VALUES ('79858022-e64b-4973-ac24-5ac74dc21c35', 'H1、X射线质控', 1, 2, 'db3a8732-1605-4785-8295-5b863f035bf8');
INSERT INTO `category` VALUES ('7c2b1983-e63e-4176-a7f0-e0e6d5c81f10', 'B3、Drone-G多旋翼无人机辐射应急巡测系统', 3, 2, '52fd54ba-bffa-4a7d-a763-89e61b611bc9');
INSERT INTO `category` VALUES ('87e35f39-8218-42b0-bc63-166e9a61aa43', 'J12、ROMS4000敏感物资管理系统', 12, 2, 'd522afb2-19a0-4641-b463-60c1f44926c2');
INSERT INTO `category` VALUES ('918c593e-3507-4741-b8be-1eeb80b541e2', 'J11、ROMS3000重点风险源监管系统', 11, 2, 'd522afb2-19a0-4641-b463-60c1f44926c2');
INSERT INTO `category` VALUES ('92ff8ee1-d156-4e9a-b14e-22dfec9d4f89', 'D3、DigiBASE实验室NaI（LaBr3）谱仪', 3, 2, 'ae832d9c-77ec-4b43-8ff8-eca5b99e4f1a');
INSERT INTO `category` VALUES ('96ac1153-90b0-44fa-825e-340910415b50', 'C4、个人剂量报警仪', 4, 2, '4d6bdd28-9e3d-4465-97d6-1a09e08593d3');
INSERT INTO `category` VALUES ('9fccfe35-3879-495e-a28a-fd3e3b1fcce6', 'E3、惰性气体采样器', 3, 2, '5ad4cfa9-2c0c-4662-a738-0bdf3019303d');
INSERT INTO `category` VALUES ('9fd0aa86-4f5a-40f4-b7cb-a2033e851327', 'E12、超声&微波化学工作站', 12, 2, '5ad4cfa9-2c0c-4662-a738-0bdf3019303d');
INSERT INTO `category` VALUES ('ae832d9c-77ec-4b43-8ff8-eca5b99e4f1a', 'D、实验室分析与测量仪器', 4, 1, NULL);
INSERT INTO `category` VALUES ('b42904a0-ddda-4823-9de7-4a0a16c2ca1b', 'E6、多路电沉积仪', 6, 2, '5ad4cfa9-2c0c-4662-a738-0bdf3019303d');
INSERT INTO `category` VALUES ('be543cfb-4541-43aa-ad9c-e94df4ebb0c7', 'J1、ROMS100车载辐射监测管理系统', 1, 2, 'd522afb2-19a0-4641-b463-60c1f44926c2');
INSERT INTO `category` VALUES ('c3f52337-b5a4-44fc-8674-6042fa5417d9', 'J6、ROMS410 放射性废物库智能安防及收贮管理系统', 6, 2, 'd522afb2-19a0-4641-b463-60c1f44926c2');
INSERT INTO `category` VALUES ('c448ea16-86d8-49ec-b673-4c572a03b011', 'B12、STC系列便携式α、β计数', 12, 2, '52fd54ba-bffa-4a7d-a763-89e61b611bc9');
INSERT INTO `category` VALUES ('c57f3f7d-d8d5-43d3-8c9e-7da63a994bd0', 'G1、废物桶测量系统', 1, 2, '7516ea72-4f7c-46bd-9087-e2f60bbc0783');
INSERT INTO `category` VALUES ('c625739b-5ec2-43fc-a828-a3360b6f47b2', 'F3、行李包裹辐射监测系统', 3, 2, '3f694c02-a05d-49d3-8e9e-be0631aa4b08');
INSERT INTO `category` VALUES ('cab907af-3bb7-498a-aae9-a01ae2a15a9b', 'F2、ASM IV系列包裹/货物/车辆/人员辐射监测系统', 2, 2, '3f694c02-a05d-49d3-8e9e-be0631aa4b08');
INSERT INTO `category` VALUES ('cd11d7f4-22a8-418a-bc80-764123010a52', 'A、在线辐射监测系统', 1, 1, NULL);
INSERT INTO `category` VALUES ('ce5e3610-4f20-45d0-8d1d-010aa099745e', 'E10、GHZ-RK600A大体积马弗炉', 10, 2, '5ad4cfa9-2c0c-4662-a738-0bdf3019303d');
INSERT INTO `category` VALUES ('cefe471c-4858-4206-81d1-46dd016c5bb2', 'C8、气溶胶、碘惰性气体连续监测系统', 8, 2, '4d6bdd28-9e3d-4465-97d6-1a09e08593d3');
INSERT INTO `category` VALUES ('d0c4d5b5-0a1b-4c02-9099-9e86bddfad69', 'C9、区域辐射监测系统', 9, 2, '4d6bdd28-9e3d-4465-97d6-1a09e08593d3');
INSERT INTO `category` VALUES ('d46f1a5c-5a42-4e97-86d8-912e1f046272', 'D18、Element2高分辨率电感耦合等离 子体质谱仪', 18, 2, 'ae832d9c-77ec-4b43-8ff8-eca5b99e4f1a');
INSERT INTO `category` VALUES ('d522afb2-19a0-4641-b463-60c1f44926c2', 'J、自研集成、软件系统', 10, 1, NULL);
INSERT INTO `category` VALUES ('d7600b23-bdd4-4320-9d8f-d955ee09d893', 'J9、ROMS1000智能辐射自动站系统', 9, 2, 'd522afb2-19a0-4641-b463-60c1f44926c2');
INSERT INTO `category` VALUES ('d83a966b-3945-4e13-b358-404cf096b5ac', 'I1、探测器和电子', 1, 2, 'df0dd85e-b45a-4775-9d4d-11decbbc9980');
INSERT INTO `category` VALUES ('da0a92d2-290c-4d20-ab64-43ea9fef86da', 'C1、便携式γ、中子剂量仪', 1, 2, '4d6bdd28-9e3d-4465-97d6-1a09e08593d3');
INSERT INTO `category` VALUES ('db0093f1-afb8-4631-b411-87ef64d7c0d7', 'B5、无人船应急辐射巡测系', 5, 2, '52fd54ba-bffa-4a7d-a763-89e61b611bc9');
INSERT INTO `category` VALUES ('db3a8732-1605-4785-8295-5b863f035bf8', 'H、医学物理', 8, 1, NULL);
INSERT INTO `category` VALUES ('dd846867-3223-4453-be43-0817b54ea935', 'J2、ROMS200智能辐射监测管理系统', 2, 2, 'd522afb2-19a0-4641-b463-60c1f44926c2');
INSERT INTO `category` VALUES ('ded2e12b-e7c7-42e7-941d-df875b4148e4', 'J8、ROMS600 仪器智能管理系统', 8, 2, 'd522afb2-19a0-4641-b463-60c1f44926c2');
INSERT INTO `category` VALUES ('df0dd85e-b45a-4775-9d4d-11decbbc9980', 'I、探测器和电子学', 9, 1, NULL);
INSERT INTO `category` VALUES ('df36d2c2-550b-44f6-b638-895aa7804206', 'D6、LB4200低本底总α、β计数器', 6, 2, 'ae832d9c-77ec-4b43-8ff8-eca5b99e4f1a');
INSERT INTO `category` VALUES ('e274cc59-f002-42a7-b6e4-fa39ad086e8f', 'A1.9、惰性气体、气溶胶、碘和氚在线监测系统', 2, 2, 'cd11d7f4-22a8-418a-bc80-764123010a52');
INSERT INTO `category` VALUES ('e53d6273-c6b1-40c8-bc71-7f1c49a3175e', 'D4、CosmicGuard反宇宙射线高纯锗γ谱', 4, 2, 'ae832d9c-77ec-4b43-8ff8-eca5b99e4f1a');
INSERT INTO `category` VALUES ('ec3012d5-9ce8-4a56-8935-b6f6843c64bb', 'G2、地面污染测量车', 2, 2, '7516ea72-4f7c-46bd-9087-e2f60bbc0783');
INSERT INTO `category` VALUES ('f0912376-fed5-4fe9-b1eb-12166db85d14', 'D5、MPC9604低本底总α、β计数器', 5, 2, 'ae832d9c-77ec-4b43-8ff8-eca5b99e4f1a');
INSERT INTO `category` VALUES ('f0a04a91-7cb0-4ef5-9762-db44228eb48a', 'E8、EB7/6颚式粉碎仪', 8, 2, '5ad4cfa9-2c0c-4662-a738-0bdf3019303d');
INSERT INTO `category` VALUES ('f242a5fc-1783-4720-84b6-ddc2929b4de8', 'D14、Taslimage固体径迹蚀刻测量系', 14, 2, 'ae832d9c-77ec-4b43-8ff8-eca5b99e4f1a');
INSERT INTO `category` VALUES ('f4fd1c23-1507-4d2d-aec1-c1e2b809ecfc', 'E1、气溶胶和碘采样器', 1, 2, '5ad4cfa9-2c0c-4662-a738-0bdf3019303d');
INSERT INTO `category` VALUES ('f94d83bc-d45a-48fc-8093-6dfe6cb14466', 'H3、核医学质控', 3, 2, 'db3a8732-1605-4785-8295-5b863f035bf8');
INSERT INTO `category` VALUES ('fae99334-b96a-4755-88c1-f40e5dda195b', 'G6、核生化应急救治车', 6, 2, '7516ea72-4f7c-46bd-9087-e2f60bbc0783');
INSERT INTO `category` VALUES ('fbbae288-0cb3-4eae-a086-73e668a25bc0', 'B6、车载辐射监测系', 6, 2, '52fd54ba-bffa-4a7d-a763-89e61b611bc9');

SET FOREIGN_KEY_CHECKS = 1;
