/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : huawei

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2022-02-25 15:58:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for likess
-- ----------------------------
DROP TABLE IF EXISTS `likess`;
CREATE TABLE `likess` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `conid` int(11) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `gid` int(11) DEFAULT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of likess
-- ----------------------------
INSERT INTO `likess` VALUES ('1', null, '1', '1');
INSERT INTO `likess` VALUES ('2', null, '1', '2');
