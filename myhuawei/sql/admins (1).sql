/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : huawei

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2022-03-02 10:51:48
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
  `asex` int(1) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('1', '陛下光年', '666666', '2022-01-05 19:43:21', '2022-01-13 19:43:28', 'stylejs/h/image/1.png', '3', '0', '0');
INSERT INTO `admins` VALUES ('2', '灭绝师太', '666666', '2022-01-23 20:30:35', '2022-01-23 20:30:39', 'stylejs/h/image/1.png', '0', '1', '0');
INSERT INTO `admins` VALUES ('3', '混子', '666666', '2022-01-23 20:31:46', '2022-01-23 20:31:49', 'stylejs/h/image/1.png', '1', '1', '0');
INSERT INTO `admins` VALUES ('4', '积泥泰美', '666666', '2022-01-23 20:31:46', '2022-01-23 20:31:46', 'stylejs/h/image/1.png', '1', '2', '1');
INSERT INTO `admins` VALUES ('5', '及你太美', '666666', '2022-02-17 15:35:12', null, 'stylejs/h/image/1.png', '0', '2', '0');
INSERT INTO `admins` VALUES ('6', '尼八八', '666666', '2022-02-19 10:48:02', null, 'stylejs/h/image/1.png', '0', '2', '0');
INSERT INTO `admins` VALUES ('7', '开团', '123456', '2022-02-25 19:24:15', null, '/image/428_428_489E4F53219E6909E7A7F49FABA605D6C60C0B53F1DA152Amp.png', '0', '2', '0');
INSERT INTO `admins` VALUES ('9', 'sdfsdf', '1', '2022-02-28 10:24:00', null, '/image/83bb511365da513c55aa3d1958524f3b7db40684.jpg@96w_96h_1c_1s.webp', '0', '2', '0');
