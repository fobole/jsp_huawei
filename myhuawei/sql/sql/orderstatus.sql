/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : huawei

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2022-02-07 19:50:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for orderstatus
-- ----------------------------
DROP TABLE IF EXISTS `orderstatus`;
CREATE TABLE `orderstatus` (
  `osid` int(11) NOT NULL AUTO_INCREMENT,
  `ostate` int(1) NOT NULL,
  `ostime` datetime NOT NULL,
  `ono` varchar(255) NOT NULL,
  PRIMARY KEY (`osid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderstatus
-- ----------------------------
INSERT INTO `orderstatus` VALUES ('28', '0', '2022-02-07 10:50:35', '2022020710503511806865182');
INSERT INTO `orderstatus` VALUES ('29', '0', '2022-02-07 10:50:35', '2022020710503511806865182');
INSERT INTO `orderstatus` VALUES ('30', '0', '2022-02-07 11:23:24', '2022020711232440065295039');
