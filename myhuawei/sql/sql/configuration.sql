/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : huawei

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2022-02-07 19:49:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for configuration
-- ----------------------------
DROP TABLE IF EXISTS `configuration`;
CREATE TABLE `configuration` (
  `conid` int(11) NOT NULL AUTO_INCREMENT,
  `conname` varchar(255) NOT NULL,
  `cid` int(11) NOT NULL,
  `conjia` decimal(10,2) NOT NULL,
  `cshu` int(11) NOT NULL,
  PRIMARY KEY (`conid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of configuration
-- ----------------------------
INSERT INTO `configuration` VALUES ('1', '5G全网通 8GB+256GB', '1', '3000.00', '100');
INSERT INTO `configuration` VALUES ('2', '5G全网通 8GB+512GB', '1', '1000.00', '100');
INSERT INTO `configuration` VALUES ('3', '5G全网通 8GB+128GB', '2', '5000.00', '100');
INSERT INTO `configuration` VALUES ('4', '5G全网通 8GB+128GB', '2', '8000.00', '100');
INSERT INTO `configuration` VALUES ('5', '5G全网通 8GB+1T', '3', '6000.00', '100');
INSERT INTO `configuration` VALUES ('6', '5G全网通 8GB+512GB', '3', '7000.00', '100');
INSERT INTO `configuration` VALUES ('7', '5G全网通 8GB+3T', '3', '4000.00', '100');
