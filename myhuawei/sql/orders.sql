/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : huawei

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2022-03-05 14:12:59
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
  `did` int(11) NOT NULL DEFAULT '0' COMMENT '0没改1改了一次',
  `ofktime` datetime DEFAULT NULL,
  `ofhtime` datetime DEFAULT NULL,
  `oshtime` datetime DEFAULT NULL,
  `owctime` datetime DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('32', '2022020710503511806865182', '7000.00', null, '0.00', '0', '2022-02-07 10:50:35', null, '0', '1', '京津冀', '18182044789', '河南省 郑州市 二七区 3232323', '0', null, null, null, null);
INSERT INTO `orders` VALUES ('34', '2022020711232440065295039', '19000.00', null, '0.00', '1', '2022-02-07 11:23:24', null, '0', '1', '京津冀', '18182044789', '河南省 郑州市 二七区 3232323', '0', null, null, null, null);
INSERT INTO `orders` VALUES ('35', '202202211138077551662810', '5000.00', null, '0.00', '0', '2022-02-21 11:38:07', null, '0', '10', '111', '18182027436', '上海市 上海城区 黄浦区 qqqqq', '0', null, null, null, null);
INSERT INTO `orders` VALUES ('51', '2022022111434416698565924', '5000.00', null, '0.00', '1', '2022-02-21 11:43:44', null, '0', '10', '111', '18182027436', '上海市 上海城区 黄浦区 qqqqq', '0', null, null, null, null);
INSERT INTO `orders` VALUES ('52', '2022022111445069039900589', '14000.00', null, '0.00', '0', '2022-02-21 11:44:50', null, '0', '10', '333', '15576995269', '河南省 周口市 扶沟县 444', '0', null, null, null, null);
INSERT INTO `orders` VALUES ('53', '2022022111445114626125730', '14000.00', null, '0.00', '2', '2022-02-21 11:44:51', null, '0', '10', '333', '15576995269', '河南省 周口市 扶沟县 444', '0', null, null, null, null);
INSERT INTO `orders` VALUES ('54', '2022022111445520307394457', '14000.00', null, '0.00', '0', '2022-02-21 11:44:55', null, '0', '10', '333', '15576995269', '河南省 周口市 扶沟县 444', '0', null, null, null, null);
INSERT INTO `orders` VALUES ('56', '2022022318153343588902135', '5000.00', null, '0.00', '2', '2022-02-23 18:15:33', null, '0', '10', '333', '18182027436', '河南省 周口市 扶沟县 444', '0', null, null, null, null);
INSERT INTO `orders` VALUES ('57', '2022022318153347279166905', '5000.00', null, '0.00', '5', '2022-02-23 18:15:33', null, '0', '10', '333', '18182027436', '河南省 周口市 扶沟县 444', '0', null, null, null, null);
INSERT INTO `orders` VALUES ('58', '2022022318153325720493832', '5000.00', null, '0.00', '3', '2022-02-23 18:15:33', null, '0', '10', '333', '18182027436', '河南省 周口市 扶沟县 444', '0', null, null, null, null);
INSERT INTO `orders` VALUES ('59', '2022022318153466046662305', '5000.00', null, '0.00', '4', '2022-02-23 18:15:34', null, '0', '10', '333', '18182027436', '河南省 周口市 扶沟县 444', '0', null, null, null, null);
INSERT INTO `orders` VALUES ('60', '2022030209142181585653672', '11030.00', null, '0.00', '0', '2022-03-02 09:14:21', null, '0', '10', '5555', '18182027436', '天津市 天津城区 和平区 44444', '0', null, null, null, null);
INSERT INTO `orders` VALUES ('63', '2022030210543775436583699', '10030.00', null, '0.00', '0', '2022-03-02 10:54:37', null, '0', '10', '5555', '18182027436', '天津市 天津城区 和平区 44444', '0', null, null, null, null);
INSERT INTO `orders` VALUES ('65', '2022030210551569623926702', '7030.00', null, '0.00', '0', '2022-03-02 10:55:15', null, '0', '10', '5555', '18182027436', '天津市 天津城区 和平区 44444', '0', null, null, null, null);
INSERT INTO `orders` VALUES ('66', '2022030215152983850811464', '4000.00', null, '0.00', '0', '2022-03-02 15:15:29', null, '0', '11', '2222', '18182027436', '内蒙古自治区 赤峰市 松山区 555555555555', '0', null, null, null, null);
INSERT INTO `orders` VALUES ('67', '2022030215160138164878821', '5030.00', null, '0.00', '0', '2022-03-02 15:16:01', null, '0', '11', '2222', '18182027436', '内蒙古自治区 赤峰市 松山区 555555555555', '0', null, null, null, null);
INSERT INTO `orders` VALUES ('68', '2022030215540516690300832', '11030.00', null, '0.00', '0', '2022-03-02 15:54:05', null, '0', '10', '5555', '18182027436', '天津市 天津城区 和平区 44444', '0', null, null, null, null);
INSERT INTO `orders` VALUES ('69', '2022030215543227655814370', '11000.00', null, '0.00', '6', '2022-03-02 15:54:32', null, '0', '10', '5555', '18182027436', '天津市 天津城区 和平区 44444', '0', null, null, null, null);
