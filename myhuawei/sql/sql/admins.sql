/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : huawei

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2022-02-07 19:48:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `aname` varchar(255) NOT NULL,
  `apwd` varchar(255) NOT NULL,
  `addtime` datetime NOT NULL,
  `alogintime` datetime DEFAULT NULL,
  `atu` varchar(255) DEFAULT NULL,
  `atates` int(1) NOT NULL,
  `agrade` int(1) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('1', '陛下光年', '666666', '2022-01-05 19:43:21', '2022-01-13 19:43:28', 'touxiang.png', '3', '0');
INSERT INTO `admins` VALUES ('2', '灭绝师太', '666666', '2022-01-23 20:30:35', '2022-01-23 20:30:39', 'fd', '0', '1');
INSERT INTO `admins` VALUES ('3', '混子', '666666', '2022-01-23 20:31:46', '2022-01-23 20:31:49', '的', '0', '1');
