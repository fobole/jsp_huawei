/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : huawei

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2022-02-07 19:49:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for likess
-- ----------------------------
DROP TABLE IF EXISTS `likess`;
CREATE TABLE `likess` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `conid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of likess
-- ----------------------------
INSERT INTO `likess` VALUES ('1', '1', '1');
