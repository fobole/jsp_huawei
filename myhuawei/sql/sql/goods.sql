/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : huawei

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2022-02-07 19:49:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `gname` varchar(255) NOT NULL,
  `smid` int(11) NOT NULL COMMENT '外键',
  `gshangjia` int(1) NOT NULL,
  `gtu` varchar(255) NOT NULL,
  `gjiage` decimal(10,2) NOT NULL,
  `gkey` varchar(255) NOT NULL,
  `gnew` int(1) NOT NULL,
  `ghot` int(1) NOT NULL,
  `gtime` datetime NOT NULL,
  `gsdate` datetime DEFAULT NULL,
  `gxdate` datetime DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', 'HUAWEI Mate 40 Pro', '1', '0', 'stylejs/q/img/shipp_big_1.webp', '2000.00', '手机', '0', '0', '2022-01-05 20:25:33', '2022-01-05 20:26:34', '2022-01-05 20:25:55');
INSERT INTO `goods` VALUES ('2', 'HUAWEI Mate 40', '1', '0', 'https://res2.vmallres.com/pimages/product/6941487202126/428_428_760FBBD51C9D40DDA8E4623922EA926E3E82B3EAD2CB25EEmp.png', '2466.30', '手机', '1', '0', '2022-01-05 20:27:26', '2022-01-05 20:27:30', '2022-01-05 20:27:33');
INSERT INTO `goods` VALUES ('3', '华为 p 40', '2', '0', 'https://res7.vmallres.com/pimages/product/6941487210558/428_428_D796E2CF1C15F529327C935632132E25D3DB4E20641F7482mp.png', '4000.00', '手机', '0', '1', '2022-01-07 19:39:45', '2022-01-08 19:39:35', '2022-01-07 19:39:47');
INSERT INTO `goods` VALUES ('4', 'huawei p20', '3', '0', 'https://res6.vmallres.com/pimages/product/6941487228096/428_428_DFC8B2710C0583A9A22365D67F5B012324DC728241760ADCmp.png', '2000.00', '手机', '1', '1', '2022-01-07 19:47:34', '2022-01-07 19:47:48', '2022-01-07 19:47:41');
INSERT INTO `goods` VALUES ('5', 'HUAWEI MateBook x pro', '4', '0', 'https://res.vmallres.com/pimages/uomcdn/CN/pms/202112/gbom/6941487239375/428_428_13BAB465E0E2E73F428A7540AC1C6239mp.png', '10299.00', '电脑', '1', '1', '2022-01-07 20:01:20', '2022-01-07 20:02:15', '2022-01-07 20:03:25');
INSERT INTO `goods` VALUES ('7', 'HUAWEI MateBook 2020', '6', '0', 'https://res.vmallres.com/pimages/uomcdn/CN/pms/202112/gbom/6941487239467/428_428_3DE90D439D7F7AA0B2A4B0C82811C3CAmp.png', '5000.00', '电脑', '0', '1', '2022-01-07 20:05:36', null, null);
INSERT INTO `goods` VALUES ('8', '电脑4', '7', '0', 'https://res3.vmallres.com/pimages/product/6941487227624/428_428_5B52FE52A204DB8F572BB1B5B84B024991A392D7AD812FFFmp.png', '1000.00', '电脑', '1', '1', '2022-01-07 20:06:28', null, null);
INSERT INTO `goods` VALUES ('9', '电脑5', '3', '0', 'https://res3.vmallres.com/pimages/product/6941487226245/428_428_8469B0B848B462BAFEBE41AD073CA1FA57742CF934331580mp.png', '4000.00', '电脑', '0', '1', '2022-01-07 20:07:31', null, null);
INSERT INTO `goods` VALUES ('10', '净化器', '10', '0', 'https://res8.vmallres.com/pimages/product/6941487236602/428_428_F2B347FDD924A800E123C6CEEA9FE16CABB688C81AC1C611mp.png', '200.00', 'jing', '1', '0', '2022-01-07 20:43:44', null, null);
INSERT INTO `goods` VALUES ('11', 'HUAWEI Mate 40 Pro 4G', '1', '0', 'https://res.vmallres.com/pimages/uomcdn/CN/pms/202112/displayProduct/10086300679105/428_428_0809C308C0088E7123802AEE272C59E3mp.jpg', '5799.00', '手机', '0', '1', '2022-01-10 10:54:00', null, null);
INSERT INTO `goods` VALUES ('12', 'HUAWEIMate 40 Peo++', '1', '0', 'https://res.vmallres.com/pimages/product/6941487227990/428_428_598874EF80F9655678F277EA9780D002EDCD49EAB04757D2mp.png', '8499.00', '手机', '0', '1', '2022-01-10 10:55:04', null, null);
INSERT INTO `goods` VALUES ('13', 'HUAWEIMate X2', '1', '0', 'https://res.vmallres.com/pimages/uomcdn/CN/pms/202112/displayProduct/10086537361084/428_428_4C1839AB573F729A5FF0806BAB0242B4mp.jpg', '1799.00', '手机', '0', '1', '2022-01-10 11:05:05', null, null);
INSERT INTO `goods` VALUES ('14', 'HUAWEI Mate 40E', '1', '0', 'https://res.vmallres.com/pimages/product/6941487220281/428_428_B3DFC0760E36E0386387D44E284D2AE8799DC56EBEAAA9B2mp.png', '5099.00', '手机', '1', '0', '2022-01-10 11:06:40', null, null);
INSERT INTO `goods` VALUES ('15', 'HUAWEI Mate 40 Rs 保时捷设计', '1', '0', 'https://res.vmallres.com/pimages/uomcdn/CN/pms/202112/displayProduct/10086918242357/428_428_3ADA1E33223FF838B8EC31048683F7F8mp.jpg', '10999.00', '手机', '0', '1', '2022-01-10 11:07:34', null, null);
INSERT INTO `goods` VALUES ('16', 'HUAWEI Mate Xs', '1', '0', 'https://res.vmallres.com/pimages/product/6901443376506/428_428_5A4871DB483B6E0D92CA527C3D367A6A32E2B433F5870412mp.png', '16999.00', '手机', '1', '0', '2022-01-10 11:08:25', null, null);
INSERT INTO `goods` VALUES ('17', 'HUAWEI P50 Pocket', '2', '0', 'https://res.vmallres.com/pimages/uomcdn/CN/pms/202112/displayProduct/10086315434669/428_428_99B86DB68A2B1682EF6AB542071BF94Bmp.jpg', '8988.00', '手机', '0', '1', '2022-01-10 11:13:31', null, null);
INSERT INTO `goods` VALUES ('18', 'HUAWEI P50 Pro', '2', '0', 'https://res.vmallres.com/pimages/uomcdn/CN/pms/202112/displayProduct/10086526795134/428_428_F6BD12336620BEA8DAC2FEBA97D09307mp.jpg', '6458.00', '手机', '1', '0', '2022-01-10 11:14:44', null, null);
INSERT INTO `goods` VALUES ('19', 'HUAWEI P50', '2', '0', 'https://res.vmallres.com/pimages/product/6941487235759/428_428_0943ABB259CF32F335B5248DF2C3543460ECA31BFBDD2E3Bmp.png', '4488.00', '手机', '1', '0', '2022-01-10 11:15:39', null, null);
INSERT INTO `goods` VALUES ('20', 'HUAWEI P40', '2', '0', 'https://res.vmallres.com/pimages/product/6901443381357/428_428_6DF7F68F80E6D757209602BA23BBE55DA6C96B0F145CCB0Amp.png', '4188.00', '手机', '0', '1', '2022-01-10 11:16:53', null, null);
INSERT INTO `goods` VALUES ('21', 'HUAWEI P50 Pro', '2', '0', 'https://res.vmallres.com/pimages/uomcdn/CN/pms/202112/gbom/6941487233519/428_428_2FEB63089A343B9490857C09E3E733B9mp.png', '7458.00', '手机', '0', '1', '2022-01-10 11:17:57', null, null);
INSERT INTO `goods` VALUES ('22', 'HUAWEI P40 Pro', '2', '0', 'https://res.vmallres.com/pimages/product/6901443381524/428_428_B9DCDEB22DAB212FBD4ADBEA0361459B270FCB900F599219mp.png', '5988.00', '手机', '1', '0', '2022-01-10 11:18:41', null, null);
INSERT INTO `goods` VALUES ('23', 'HUAWEI P40 P++', '2', '0', 'https://res.vmallres.com/pimages/product/6901443398010/428_428_5BE5026C5A8835CD516910ADCAC66185782AC52F8535EEF7mp.png', '7988.00', '手机', '1', '0', '2022-01-10 11:19:39', null, null);
INSERT INTO `goods` VALUES ('24', 'HUAWEI nova 8 SE 4G版', '3', '0', 'https://res.vmallres.com/pimages/uomcdn/CN/pms/202112/displayProduct/10086296124699/428_428_4BB250F3C51EAF60ACE39DBCC6B2596Fmp.jpg', '2049.00', '手机', '0', '1', '2022-01-10 14:04:11', null, null);
INSERT INTO `goods` VALUES ('25', 'HUAWEI nove 9', '3', '0', 'https://res.vmallres.com/pimages/uomcdn/CN/pms/202112/displayProduct/10086462651953/428_428_3A5729FED7E6833C9289A90B0A71B433mp.jpg', '3369.00', '手机', '0', '1', '2022-01-10 14:05:44', null, null);
INSERT INTO `goods` VALUES ('26', 'HUAWEI nova 9Pro', '3', '0', 'https://res.vmallres.com/pimages/uomcdn/CN/pms/202112/displayProduct/10086577388322/428_428_5C0DC2F580C9E6016D49B726739FC181mp.jpg', '2649.00', '手机', '1', '0', '2022-01-10 14:06:59', null, null);
INSERT INTO `goods` VALUES ('27', 'HUAWEI nova 8 Pro 5G', '3', '0', 'https://res.vmallres.com/pimages/uomcdn/CN/pms/202112/displayProduct/10086199502267/428_428_181DD28DCCB7B916E45D83DF5B435DD7mp.jpg', '3799.00', '手机', '1', '0', '2022-01-10 14:07:56', null, null);
INSERT INTO `goods` VALUES ('28', 'HUAWEI Matebook X 2021款', '4', '0', 'https://res.vmallres.com/pimages/product/6941487215461/428_428_6E52FE5AD52A2106A11D6D894FCB12F04E037A1519BF7E05mp.png', '8299.00', '电脑', '1', '1', '2022-01-10 14:11:21', null, null);
INSERT INTO `goods` VALUES ('29', 'HUAWEI MATEBook x pro 2021款', '4', '0', 'https://res.vmallres.com/pimages/uomcdn/CN/pms/202112/displayProduct/10086857314109/428_428_C3B4EDC1CBDB58C859ED06B23B852CD1mp.jpg', '8799.00', '电脑', '1', '0', '2022-01-10 14:12:30', null, null);
INSERT INTO `goods` VALUES ('30', 'HUAWEI MateStation B520', '5', '0', 'https://res.vmallres.com/pimages/uomcdn/CN/pms/202111/gbom/6941487236237/428_428_E3BB58A53242A04D66AE112B27D666EBmp.png', '6299.00', '电脑', '0', '0', '2022-01-10 14:14:44', null, null);
INSERT INTO `goods` VALUES ('31', 'HUAWEI MateStation B515台式机', '5', '1', 'https://res.vmallres.com/pimages/product/6941487207497/428_428_9B7F38D2D2F2D1FD2643301F32563A2B605F54F70E294EA3mp.png', '3799.00', '电脑', '0', '1', '2022-01-10 14:15:57', null, null);
INSERT INTO `goods` VALUES ('32', 'HUAWEI MateBook B7', '5', '1', 'https://res.vmallres.com/pimages/product/6941487222780/428_428_475AE7EE1684FFA352EE92B05E9C5E60739B1F87791D1EBCmp.png', '9599.00', '电脑', '1', '1', '2022-01-10 14:17:08', null, null);
INSERT INTO `goods` VALUES ('33', '华为显示器23.8', '5', '0', 'https://res.vmallres.com/pimages/product/6941487205134/428_428_8E595D3F360874CDFE20EF0F0B23206877697D7801BC5B3Amp.png', '1099.00', '电脑', '0', '0', '2022-01-10 14:18:39', null, null);
INSERT INTO `goods` VALUES ('34', 'HUAWEI MateBook B3-420', '5', '0', 'https://res.vmallres.com/pimages/product/6941487217120/428_428_C87F6C546FEBC02F0A3931780657D7095AEDE8CC5BE5C793mp.png', '6299.00', '电脑', '1', '1', '2022-01-10 14:20:00', null, null);
INSERT INTO `goods` VALUES ('35', 'HUAWEI MateBook B5-430', '5', '0', 'https://res.vmallres.com/pimages/product/6941487231874/428_428_F25E2E42E8CE4FC87D4DBA2CC3441C7C698586AAFCE6FFFDmp.png', '7699.00', '电脑', '0', '0', '2022-01-10 14:20:56', null, null);
INSERT INTO `goods` VALUES ('36', 'HUAWEI MateBook B3-520', '5', '0', 'https://res.vmallres.com/pimages/product/6941487232871/428_428_2228B7B91DD59E0450A3A4C9EA0D38C9EF92DFA3D7E43CA3mp.png', '6299.00', '电脑', '1', '1', '2022-01-10 14:21:59', null, null);
INSERT INTO `goods` VALUES ('37', 'HUAWEI MateBook Book D 14', '6', '0', 'https://res.vmallres.com/pimages/uomcdn/CN/pms/202112/gbom/6941487239511/428_428_F5608DB88FB841A47DFCE5A1E057CF0Amp.png', '4599.00', '电脑', '0', '0', '2022-01-10 14:33:08', null, null);
INSERT INTO `goods` VALUES ('38', 'HUAWEI MateBook 4', '6', '0', 'https://res.vmallres.com/pimages/uomcdn/CN/pms/202112/gbom/6941487239511/428_428_F5608DB88FB841A47DFCE5A1E057CF0Amp.png', '4599.00', '电脑', '1', '1', '2022-01-10 14:34:48', null, null);
INSERT INTO `goods` VALUES ('39', 'HUAWEI MateBook d15', '6', '0', 'https://res.vmallres.com/pimages/uomcdn/CN/pms/202112/gbom/6941487239467/428_428_3DE90D439D7F7AA0B2A4B0C82811C3CAmp.png', '4799.00', '电脑', '1', '0', '2022-01-10 14:36:12', null, null);
INSERT INTO `goods` VALUES ('40', 'HUAWEI MatePad Pro12.6', '10', '0', 'https://res.vmallres.com/pimages/uomcdn/CN/pms/202112/displayProduct/10086366915386/428_428_99A67FAED5AB9E1CE9665BB2254E234Emp.jpg', '4699.00', '电脑', '0', '0', '2022-01-11 09:21:16', null, null);
INSERT INTO `goods` VALUES ('41', 'HUAWEI MatePad Pro 10.8', '10', '0', 'https://res.vmallres.com/pimages/uomcdn/CN/pms/202112/displayProduct/10086452383776/428_428_324199CBD68EC4AC055B03CB2AC1DA95mp.jpg', '3199.00', '电脑', '0', '1', '2022-01-11 09:22:00', null, null);
INSERT INTO `goods` VALUES ('42', 'HUAWEI MatePad 10.4英寸', '11', '0', 'https://res.vmallres.com/pimages/product/6941487206308/428_428_EA5D5B67B1B1792F155612C626B44B82DC3CC735A3DCCB51mp.png', '1999.00', '电脑', '1', '0', '2022-01-11 09:23:53', null, null);
INSERT INTO `goods` VALUES ('43', 'HUAWEI MatePad 11', '11', '0', 'https://res.vmallres.com/pimages/uomcdn/CN/pms/202112/displayProduct/10086145509015/428_428_1E0113FACA73BD9E2B079AD37EEB0CAFmp.jpg', '2649.00', '电脑', '0', '0', '2022-01-11 09:24:35', null, null);
INSERT INTO `goods` VALUES ('44', '华为畅想平板2 10.1英寸', '11', '0', 'https://res.vmallres.com/pimages/product/6901443446353/428_428_968D2054F013E26667A9C64A14A6E3A5482CA4FFF812F81Emp.png', '1599.00', '电脑', '1', '0', '2022-01-11 09:25:53', null, null);
INSERT INTO `goods` VALUES ('45', '华为平板M5 青春版 8.0英寸', '11', '0', 'https://res.vmallres.com/pimages/product/6901443294756/428_428_A428062B97BB6F5DD911D740DACD939C5E06CC90FC6DC3D0mp.png', '1349.00', '电脑', '0', '0', '2022-01-11 09:26:49', null, null);
INSERT INTO `goods` VALUES ('46', '华为平板c5e', '12', '1', 'https://res.vmallres.com/pimages/product/6901443446919/428_428_E72A63AFF50A0759D3666DEB3272486366DD2AE8CEBCB7AAmp.png', '1899.00', '电脑', '1', '1', '2022-01-11 09:31:41', null, null);
INSERT INTO `goods` VALUES ('47', '华为平板 c5 10.4英寸 2021款', '12', '1', 'https://res.vmallres.com/pimages/product/6941487236299/428_428_65BF06C28BCB660F134BBFC23F2CEB954A6E8CB2DB5C26ADmp.png', '2299.00', '电脑', '0', '0', '2022-01-11 09:32:40', null, null);
INSERT INTO `goods` VALUES ('48', '华为平板C5 10.4 2020款', '12', '1', 'https://res.vmallres.com/pimages/product/6901443402649/428_428_EBD7BD0299ED44F34909D79A7565EA235B58AA48C53A2E95mp.png', '2299.00', '电脑', '0', '1', '2022-01-11 09:33:37', null, null);
INSERT INTO `goods` VALUES ('49', '华为平板C7', '12', '1', 'https://res.vmallres.com/pimages/product/6941487239795/428_428_B86A8B349F8D517533CBF9266C9E02BC58106B5EA17E698Fmp.png', '3699.00', '电脑', '1', '0', '2022-01-11 09:34:16', null, null);
INSERT INTO `goods` VALUES ('50', '华为平板C3 8.0英寸', '12', '1', 'https://res.vmallres.com/pimages/product/6972453164285/428_428_78B0865B3C785C4EA0FACE20CDE141C3762AFE8F671D6468mp.png', '1599.00', '电脑', '0', '1', '2022-01-11 09:35:20', null, null);
INSERT INTO `goods` VALUES ('51', '华为平板 C3 9.7英寸', '12', '1', 'https://res.vmallres.com/pimages/product/6901443412341/428_428_4EEF423C1D98DD04A9B2D064ADF3F00F50C8FF4C1ED58784mp.png', '1499.00', '电脑', '1', '1', '2022-01-11 09:36:01', null, null);
INSERT INTO `goods` VALUES ('52', 'HUAWEI M_Pencil', '13', '0', 'https://res.vmallres.com/pimages/uomcdn/CN/pms/202112/gbom/6941487232796/428_428_2578CF76A0386202CA17F4C73C216F9Dmp.png', '69.00', '电脑', '1', '0', '2022-01-11 09:37:55', null, null);
INSERT INTO `goods` VALUES ('53', 'HUAWEI MatePad Pro', '13', '0', 'https://res.vmallres.com/pimages/product/6941487222681/428_428_1B3AB39313E505A1DC6096F045B2B81B64AF1981A02F6564mp.png', '599.00', '电脑', '1', '1', '2022-01-11 09:39:09', null, null);
