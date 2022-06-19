/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : huawei

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2022-02-07 19:49:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bigtype
-- ----------------------------
DROP TABLE IF EXISTS `bigtype`;
CREATE TABLE `bigtype` (
  `btid` int(11) NOT NULL AUTO_INCREMENT,
  `btname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `bstate` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`btid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bigtype
-- ----------------------------
INSERT INTO `bigtype` VALUES ('1', '手机', '0');
INSERT INTO `bigtype` VALUES ('2', '电脑', '0');
INSERT INTO `bigtype` VALUES ('3', '平板', '0');
INSERT INTO `bigtype` VALUES ('4', '智慧屏', '0');
INSERT INTO `bigtype` VALUES ('5', '穿戴', '0');
INSERT INTO `bigtype` VALUES ('6', '耳机音箱', '0');
INSERT INTO `bigtype` VALUES ('7', '路由器', '0');
INSERT INTO `bigtype` VALUES ('8', '配件', '0');
INSERT INTO `bigtype` VALUES ('9', '生态产品', '0');
INSERT INTO `bigtype` VALUES ('10', '家用电器', '0');
INSERT INTO `bigtype` VALUES ('11', '美食饮酒', '0');
INSERT INTO `bigtype` VALUES ('12', '企业商用', '0');
