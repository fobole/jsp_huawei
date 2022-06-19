/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : huawei

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2022-02-07 19:48:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `addid` int(11) NOT NULL AUTO_INCREMENT,
  `addname` varchar(255) NOT NULL,
  `addphone` varchar(11) NOT NULL,
  `addsheng` varchar(255) NOT NULL,
  `addshi` varchar(255) NOT NULL,
  `addqu` varchar(255) NOT NULL,
  `adds` varchar(255) NOT NULL,
  `adddefault` varchar(255) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`addid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', '啊啊啊', '18182044789', '湖南省', '株洲市', '茶陵县', 'sd888', '1', '1');
INSERT INTO `address` VALUES ('2', '法外宽', '18182044789', '福建省', '莆田市', '莲花县', '十分士大夫大师傅000', '1', '1');
INSERT INTO `address` VALUES ('3', '向西', '18182044789', '湖南省', '株洲市', '荷塘区', '士大夫十分ssdfsd', '1', '1');
INSERT INTO `address` VALUES ('4', '换货', '13467733859', '湖南', '株洲', '处理', '数据放到十六分', '0', '1');
INSERT INTO `address` VALUES ('7', '京津冀', '18182044789', '河南省', '郑州市', '二七区', '3232323', '1', '1');
INSERT INTO `address` VALUES ('8', '零零', '18182044789', '广东省', '东沙群岛', '东沙群岛', '5656', '1', '1');
