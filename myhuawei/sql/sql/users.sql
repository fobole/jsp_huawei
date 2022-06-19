/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : huawei

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2022-02-07 19:50:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  `usex` int(1) DEFAULT NULL,
  `uphone` varchar(255) DEFAULT NULL,
  `ubirth` varchar(50) DEFAULT NULL,
  `uimg` varchar(255) DEFAULT NULL,
  `uregtime` datetime DEFAULT NULL,
  `ustate` int(1) DEFAULT NULL,
  `ugrade` int(1) DEFAULT NULL,
  `ujifen` int(11) DEFAULT NULL,
  `upwd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '小逼崽子', '0', '18182044789', '2001-01-05', 'touxiang.png', '2022-01-05 19:38:19', '0', '0', '1000', '123456');
INSERT INTO `users` VALUES ('8', '什么牛马', '1', '18182044786', '2022-01-08', 'img', '2022-01-08 23:05:10', '0', '0', '1000', '123');
INSERT INTO `users` VALUES ('9', '你是什么牛马', '1', '18182044788', '2022-01-09', 'img', '2022-01-09 21:28:28', '0', '0', '1000', '666666');
