/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : huawei

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2022-02-07 19:49:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for detailsorder
-- ----------------------------
DROP TABLE IF EXISTS `detailsorder`;
CREATE TABLE `detailsorder` (
  `doid` int(11) NOT NULL AUTO_INCREMENT,
  `ono` varchar(255) NOT NULL,
  `conid` int(11) NOT NULL COMMENT '配置id ---外键',
  `doshu` int(11) NOT NULL,
  PRIMARY KEY (`doid`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of detailsorder
-- ----------------------------
INSERT INTO `detailsorder` VALUES ('34', '2022020710503511806865182', '2', '1');
INSERT INTO `detailsorder` VALUES ('35', '2022020710503511806865182', '1', '2');
INSERT INTO `detailsorder` VALUES ('36', '2022020711232440065295039', '3', '1');
INSERT INTO `detailsorder` VALUES ('37', '2022020711232440065295039', '6', '2');
