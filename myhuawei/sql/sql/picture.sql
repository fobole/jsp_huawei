/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : huawei

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2022-02-07 19:50:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for picture
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `cgg` int(1) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `pgoods` int(2) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of picture
-- ----------------------------
INSERT INTO `picture` VALUES ('2', 'stylejs/q/img/0109E0796E4CF3A2FE6BAB222F0FF028.png.webp', '1', '1', '1', null);
INSERT INTO `picture` VALUES ('3', 'stylejs/q/img/127516072D679B597614A7333B6FE56D.jpg.webp', '1', '1', '2', null);
INSERT INTO `picture` VALUES ('4', 'stylejs/q/img/6AC84DA670DA567BAFFD488752319668.jpg.webp', '1', '1', '3', null);
INSERT INTO `picture` VALUES ('5', 'stylejs/q/img/C28965F9DFEF73E68849E3D224B6EFF0.jpg.webp', '1', '1', '4', null);
INSERT INTO `picture` VALUES ('7', 'stylejs/q/img/shipp_big_1.webp', '1', null, null, '0');
INSERT INTO `picture` VALUES ('8', 'stylejs/q/img/shipp_big_2.webp', '1', null, null, '0');
INSERT INTO `picture` VALUES ('9', 'stylejs/q/img/shipp_big_3.webp', '1', null, null, '0');
INSERT INTO `picture` VALUES ('10', 'stylejs/q/img/shipp_big_4.webp', '1', null, null, '0');
INSERT INTO `picture` VALUES ('11', 'stylejs/q/img/shipp_big_5.webp', '1', null, null, '0');
INSERT INTO `picture` VALUES ('12', 'stylejs/q/img/shipp_big_6.webp', '1', null, null, '0');
INSERT INTO `picture` VALUES ('13', 'stylejs/q/img/shipp_big_7.webp', '1', null, null, '0');
INSERT INTO `picture` VALUES ('21', 'stylejs/q/img/bai1.webp', '2', null, null, '0');
INSERT INTO `picture` VALUES ('22', 'stylejs/q/img/bai2.webp', '2', null, null, '0');
INSERT INTO `picture` VALUES ('23', 'stylejs/q/img/bai3.webp', '2', null, null, '0');
INSERT INTO `picture` VALUES ('24', 'stylejs/q/img/bai4.webp', '2', null, null, '0');
INSERT INTO `picture` VALUES ('25', 'stylejs/q/img/bai5.webp', '2', null, null, '0');
INSERT INTO `picture` VALUES ('26', 'stylejs/q/img/bai6.webp', '2', null, null, '0');
INSERT INTO `picture` VALUES ('27', 'stylejs/q/img/bai7.webp', '2', null, null, '0');
INSERT INTO `picture` VALUES ('28', 'stylejs/q/img/git1_huang1.jpg', '3', null, null, '0');
INSERT INTO `picture` VALUES ('29', 'stylejs/q/img/git1_huang2.jpg', '3', null, null, '0');
INSERT INTO `picture` VALUES ('30', 'stylejs/q/img/git1_huang3.jpg', '3', null, null, '0');
