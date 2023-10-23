/*
 Navicat Premium Data Transfer

 Source Server         : Shen
 Source Server Type    : MySQL
 Source Server Version : 80032
 Source Host           : localhost:3306
 Source Schema         : shop

 Target Server Type    : MySQL
 Target Server Version : 80032
 File Encoding         : 65001

 Date: 13/06/2023 16:51:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car`  (
  `userid` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `goods_id` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商品编号',
  `goods_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商品名称',
  `unitprice` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商品单价',
  `quantity` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商品数量',
  `pic` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`goods_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('21126301361', 'phone01', 'Xiaomi 12X', '3499.00', '1', 'images/phone/63e15f377e87212d460592b4a1369ccd.jpg');
INSERT INTO `car` VALUES ('21126301361', 'phone02', 'Xiaomi 12 Pro', '5399.00', '1', 'images/phone/a7382271e3a677bf188679ca38d68a42.jpg');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `goods_id` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商品编号',
  `goods_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商品名称',
  `category` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商品类别分类',
  `unitprice` decimal(10, 2) NOT NULL COMMENT '商品单价',
  `stock` int NOT NULL COMMENT '商品库存数量',
  `photo` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商品封面图片',
  `details` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商品的详情介绍',
  `add_time` date NOT NULL COMMENT '商品上架时间',
  `change_time` date NULL DEFAULT NULL COMMENT '商品信息最近更新时间',
  `goods_state` int NOT NULL COMMENT '商品当前状态：上架为0，下架为1',
  PRIMARY KEY (`goods_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('book01', 'Vue.js全家桶零基础入门到进阶项目实战', '书籍', 99.20, 10, 'images/carts/f84ce8d17e55cf74.jpg', 'Vue.js全家桶零基础入门到进阶项目实战', '2022-01-01', '2022-01-02', 0);
INSERT INTO `goods` VALUES ('book02', 'CSS新世界', '书籍', 108.80, 11, 'images/carts/8e7d4ce45fdacb89.jpg', 'CSS新世界', '2021-12-01', '2022-01-01', 0);
INSERT INTO `goods` VALUES ('book03', 'CSS世界(异步图书出品)', '书籍', 57.80, 50, 'images/188b8e81859a3051.jpg', '鑫空间-鑫生活博主，web前端开发，CSS3+HTML5网页制作，包含CSS深度学习知识点，配套作者开发的专业网站，为读者提供实例展示问题答疑　团购电话4006186622', '2021-11-04', '2022-01-01', 0);
INSERT INTO `goods` VALUES ('clothes01', '梵希蔓垂感卡其色西装外套女', '衣服', 299.00, 1000, 'images/clothes/16fea7d7bb3f9144.jpg', '梵希蔓垂感西装外套女春秋新款百搭干练气质女装外套 F2075 F5811 卡其色 ', '2021-11-20', '2021-11-28', 0);
INSERT INTO `goods` VALUES ('clothes02', '海青蓝时尚通勤小西服女', '衣服', 358.00, 1258, 'images/clothes/7ea39f5f4878b162.jpg', '海青蓝时尚通勤小西服女气质女装新款潮流一粒扣格子短外套女秋冬款52272 格子', '2021-02-13', '2021-10-16', 0);
INSERT INTO `goods` VALUES ('clothes03', '森马卫衣男2021秋新款oversize创意图案', '衣服', 139.00, 1500, 'images/clothes/703d1f6c28d1c818.jpg', '【大森】森马卫衣男2021秋新款oversize创意图案男士圆领套头上衣 本白1100', '2021-07-03', '2021-12-19', 0);
INSERT INTO `goods` VALUES ('clothes04', 'Lilbetter情侣重磅卫衣男加绒', '衣服', 215.00, 512, 'images/clothes/4cc75617291b3b63.jpg', 'Lilbetter情侣重磅卫衣男加绒秋冬2021新款宽松连帽男士外套潮LB 黑色2.0加绒 160/XS', '2021-07-02', '2021-12-05', 0);
INSERT INTO `goods` VALUES ('com01', '微星(MSI)PRO 电脑主板', '电脑', 3629.00, 100, 'images/computer/dbeee1b261367546.jpg', '微星(MSI)PRO 电脑主板', '2021-12-01', '2021-12-24', 0);
INSERT INTO `goods` VALUES ('com02', '新品英特尔酷睿12代', '电脑', 1999.00, 100, 'images/computer/8079c5b8a20b6eb7.jpg', '新品英特尔酷睿12代', '2021-11-01', '2021-12-18', 0);
INSERT INTO `goods` VALUES ('com03', '笔记本电脑小新Air14 银', '电脑', 4399.00, 100, 'images/computer/O1CN01XdmjpR1IOuqoGgg5r_!!2616970884.jpg', '笔记本电脑小新Air14 银', '2021-08-01', '2021-09-02', 0);
INSERT INTO `goods` VALUES ('com04', '索尼（SONY）playstation5', '电脑', 5099.00, 80, 'images/computer/f063016c41fa50de.jpg', '索尼（SONY）playstation5', '2021-06-05', '2021-08-13', 0);
INSERT INTO `goods` VALUES ('home01', '西门子（SIEMENS）蒸烤箱一体机嵌入式', '家电', 7999.00, 200, 'images/home/181a74dccd6f4a71.jpg', '西门子（SIEMENS）蒸烤箱一体机嵌入式', '2020-11-08', '2021-03-13', 0);
INSERT INTO `goods` VALUES ('home02', '小米电视6 至尊版 65英寸', '家电', 7999.00, 500, 'images/home/c7c15101f2c8a652a4a0d069501d1e53.jpg', '小米电视6 至尊版 65英寸', '2021-07-10', '2021-08-21', 0);
INSERT INTO `goods` VALUES ('home03', '亿田（entive）D2ZK 集成灶蒸烤一体', '家电', 13800.00, 400, 'images/home/cf71655746411c0f.jpg!cc_320x320.webp', '亿田（entive）D2ZK 集成灶蒸烤一体', '2021-10-16', '2021-10-31', 0);
INSERT INTO `goods` VALUES ('home04', '卡萨帝（Casarte）635升四开门十字对开门冰箱', '家电', 12499.00, 500, 'images/home/33508813f3a5059d.jpg', '卡萨帝（Casarte）原石系列 635升四开门十字对开门冰箱 一级能效 无霜变频 三系统 暮云黑 BCD-635WVPAU1', '2021-10-23', '2021-12-25', 0);
INSERT INTO `goods` VALUES ('phone01', 'Xiaomi 12X', '手机', 3499.00, 100, 'images/phone/63e15f377e87212d460592b4a1369ccd.jpg', '高通全新一代芯片赋能，速度大幅提升。\r\n三大专业主摄影像加持，能力全面进化。\r\n大师级设计理念新诠释，质感简而不凡。\r\n斩获十五项纪录旗舰屏，感官万般出众。', '2021-12-01', '2021-12-29', 0);
INSERT INTO `goods` VALUES ('phone02', 'Xiaomi 12 Pro', '手机', 5399.00, 100, 'images/phone/a7382271e3a677bf188679ca38d68a42.jpg', '全新一代 骁龙8 移动平台｜2K AMOLED 屏幕｜5000万超清三主摄 | CyberFocus 万物追焦｜全焦段夜景｜120W 澎湃秒充', '2021-12-03', '2022-01-01', 0);
INSERT INTO `goods` VALUES ('phone03', 'Xiaomi 11 青春活力版', '手机', 1999.00, 100, 'images/phone/0d4b362431de4bdda03315ffdbc7b32a.jpg', '「信用卡分期最高立减100元；购机赠AirDots 2真无线蓝牙耳机；+110元得Air2 SE蓝牙耳机」轻薄5G | 骁龙778G | 6400万主摄像头 | 柔性AMOLED 直屏 | 超线性立体声', '2021-12-03', '2022-01-22', 0);
INSERT INTO `goods` VALUES ('phone04', 'Redmi Note 11 Pro系列', '手机', 1799.00, 800, 'images/phone/6d0a3e7acc3e91e2cfd83dbbe1d1c029.jpg', '小米 Redmi 红米 Note11 Pro+ 游戏智能5G手机 8G+128G 神秘黑境 官方标配【碎屏险+晒单有礼】', '2021-07-03', '2021-09-26', 0);

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `order_id` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '订单编号',
  `goods_id` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商品编号',
  `goods_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商品名称',
  `unitprice` decimal(10, 2) NOT NULL COMMENT '价格',
  `order_num` int NOT NULL COMMENT '该商品下单数量',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `order_id` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '创建的订单编号',
  `user_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '创建订单的用户账号',
  `order_state` int NOT NULL COMMENT '订单状态,00未付款,1已支付,2已发货,3订单取消',
  `totalPrice` decimal(10, 2) NOT NULL COMMENT '订单中商品总价',
  `quantity` int NOT NULL COMMENT '商品数量',
  `name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商品名称',
  `address` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收货地址',
  `creationTime` datetime NOT NULL COMMENT '订单生成创建时间',
  `pay_time` datetime NULL DEFAULT NULL COMMENT '订单完成支付时间',
  `ship_time` datetime NULL DEFAULT NULL COMMENT '商品发货时间',
  `receipt_time` datetime NULL DEFAULT NULL COMMENT '确认收货时间',
  `receipt_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '订单上收件人的名字',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '账号',
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `sex` int NULL DEFAULT NULL COMMENT '性别，男为1，女为0',
  `birth` date NULL DEFAULT NULL COMMENT '出生日期',
  `phone` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '电子邮箱',
  `address` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '收货地址',
  `creationTime` datetime NOT NULL COMMENT '用户注册时间',
  `power` int NULL DEFAULT NULL COMMENT '用户权限:0为普通用户,1为管理员',
  PRIMARY KEY (`user_id`, `username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('21126301361', '21126301361', '12345678', NULL, '2003-05-06', '15345579277', '2861476552@qq.com', '安徽省宿州市灵璧县经济开发区南都商街', '2023-06-13 14:49:14', NULL);
INSERT INTO `user` VALUES ('22126303989', '22126303989', '12345678', NULL, '2003-05-06', '15345579277', '2861476552@qq.com', '安徽省宿州市灵璧县经济开发区南都商街', '2023-06-12 16:54:00', NULL);

SET FOREIGN_KEY_CHECKS = 1;
