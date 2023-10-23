/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : rj2201

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 13/03/2023 16:17:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for 学生表
-- ----------------------------
DROP TABLE IF EXISTS `学生表`;
CREATE TABLE `学生表`  (
  `姓名` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `年龄` int(255) NULL DEFAULT NULL,
  `联系方式` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 学生表
-- ----------------------------
INSERT INTO `学生表` VALUES ('小明', 18, '11111');
INSERT INTO `学生表` VALUES ('小帅', 18, '22222');
INSERT INTO `学生表` VALUES ('1', 2, '3');

SET FOREIGN_KEY_CHECKS = 1;
