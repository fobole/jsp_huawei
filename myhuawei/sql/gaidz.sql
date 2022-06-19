/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : huawei

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2022-03-08 14:21:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gaidz
-- ----------------------------
DROP TABLE IF EXISTS `gaidz`;
CREATE TABLE `gaidz` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `ono` varchar(255) DEFAULT NULL,
  `dname` varchar(255) DEFAULT NULL,
  `dphone` varchar(255) DEFAULT NULL,
  `dadd` varchar(255) DEFAULT NULL,
  `dtime` datetime DEFAULT NULL,
  `dyes` int(255) DEFAULT '0',
  PRIMARY KEY (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gaidz
-- ----------------------------
INSERT INTO `gaidz` VALUES ('1', '2022020710503511806865182', '赖崽', '15115331522', '湖南省株洲市', '2022-03-03 10:10:55', '0');
INSERT INTO `gaidz` VALUES ('2', '2022022111445520307394457', '兰凯军', '2432432432', '湖南省炎陵', '2022-03-01 10:11:35', '1');
INSERT INTO `gaidz` VALUES ('3', '2022030210551569623926702', '小莹', '124234343', '湖南省茶陵县', '2022-02-28 10:12:15', '1');
INSERT INTO `gaidz` VALUES ('4', '2022020710503511806865182', '海东', '3344444554', '湖南株洲市', '2022-03-04 09:59:02', '1');
