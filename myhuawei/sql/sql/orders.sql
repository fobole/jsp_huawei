/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : huawei

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2022-02-07 19:49:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `ono` varchar(50) NOT NULL,
  `ozongjia` decimal(10,2) NOT NULL,
  `opay` decimal(10,2) DEFAULT NULL,
  `ofreight` decimal(10,2) DEFAULT NULL,
  `ostates` int(11) NOT NULL,
  `ocreatetime` datetime NOT NULL,
  `opays` varchar(50) DEFAULT NULL,
  `ojifen` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `oname` varchar(255) NOT NULL,
  `ophone` varchar(255) NOT NULL,
  `oaddress` varchar(255) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('32', '2022020710503511806865182', '7000.00', null, '0.00', '0', '2022-02-07 10:50:35', null, '0', '1', '京津冀', '18182044789', '河南省 郑州市 二七区 3232323');
INSERT INTO `orders` VALUES ('33', '2022020710503511806865182', '7000.00', null, '0.00', '0', '2022-02-07 10:50:35', null, '0', '1', '京津冀', '18182044789', '河南省 郑州市 二七区 3232323');
INSERT INTO `orders` VALUES ('34', '2022020711232440065295039', '19000.00', null, '0.00', '0', '2022-02-07 11:23:24', null, '0', '1', '京津冀', '18182044789', '河南省 郑州市 二七区 3232323');
