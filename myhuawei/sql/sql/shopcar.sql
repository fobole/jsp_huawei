/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : huawei

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2022-02-07 19:50:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for shopcar
-- ----------------------------
DROP TABLE IF EXISTS `shopcar`;
CREATE TABLE `shopcar` (
  `carid` int(11) NOT NULL AUTO_INCREMENT,
  `conid` int(11) NOT NULL COMMENT '配置id ---外键',
  `uid` int(11) NOT NULL,
  `carcount` int(11) NOT NULL,
  `caris` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`carid`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopcar
-- ----------------------------
INSERT INTO `shopcar` VALUES ('32', '5', '1', '1', '0');
