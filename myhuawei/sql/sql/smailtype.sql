/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : huawei

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2022-02-07 19:50:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for smailtype
-- ----------------------------
DROP TABLE IF EXISTS `smailtype`;
CREATE TABLE `smailtype` (
  `smid` int(11) NOT NULL AUTO_INCREMENT,
  `smname` varchar(255) NOT NULL,
  `smtu` varchar(255) NOT NULL,
  `smstate` int(1) NOT NULL DEFAULT '0' COMMENT '默认值0  —— 0可用 1不可用',
  `btid` int(11) NOT NULL,
  PRIMARY KEY (`smid`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of smailtype
-- ----------------------------
INSERT INTO `smailtype` VALUES ('1', 'Mate系列', 'https://res.vmallres.com/uomcdn/CN/cms/202104/93D89B71BFEB8551AB20F238E0415157.png', '0', '1');
INSERT INTO `smailtype` VALUES ('2', 'P系列', 'https://res.vmallres.com/uomcdn/CN/cms/202108/F9479C6E6C946F129FF08B3C13574FC5.png', '0', '1');
INSERT INTO `smailtype` VALUES ('3', 'nova系列', 'https://res.vmallres.com/uomcdn/CN/cms/202110/BA686E3523ABDE3DEABD97703F9DC484.png', '0', '1');
INSERT INTO `smailtype` VALUES ('4', 'MateBook X 系列', 'https://res.vmallres.com/uomcdn/CN/cms/202112/440FEFF2C700BB3982F8AC79EBC0CBDD.png', '0', '2');
INSERT INTO `smailtype` VALUES ('5', '商用电脑', 'https://res.vmallres.com/uomcdn/CN/cms/202111/968D554E85F587A0AFAC0D251BD1B2B9.png', '0', '2');
INSERT INTO `smailtype` VALUES ('6', 'MateBook D 系列', 'https://res.vmallres.com/uomcdn/CN/cms/202109/02961F56224A4BD6CEC959E205E4661A.png', '0', '2');
INSERT INTO `smailtype` VALUES ('7', 'MateBook B 系列', 'https://res.vmallres.com/uomcdn/CN/cms/202111/B93CAD812CCA950DEF7F250B33EF3FF3.png', '0', '2');
INSERT INTO `smailtype` VALUES ('8', 'MateBook 系列', 'https://res.vmallres.com/uomcdn/CN/cms/202109/4EA727576342CCC916474C918DF9E48D.png', '0', '2');
INSERT INTO `smailtype` VALUES ('9', 'MateBook c 系列', 'https://res.vmallres.com/uomcdn/CN/cms/202111/D74B2EB2903F32A89268968980323094.png', '0', '2');
INSERT INTO `smailtype` VALUES ('10', 'MatePad Pro系列', 'https://res.vmallres.com/uomcdn/CN/cms/202110/678D88DFA6B6A01967A0995C198EDB44.png', '0', '3');
INSERT INTO `smailtype` VALUES ('11', '畅想系列', 'https://res.vmallres.com/uomcdn/CN/cms/202110/D688A462D268ADD8771D1523DB1A9B49.png', '0', '3');
INSERT INTO `smailtype` VALUES ('12', '商用平板', 'https://res.vmallres.com/uomcdn/CN/cms/202111/8281776E1CF644A3A43221DB7817F18F.png', '0', '3');
INSERT INTO `smailtype` VALUES ('13', '配件', 'https://res.vmallres.com/uomcdn/CN/cms/202104/C08476F64A50EF05A8877CF1FD39FCF7.png', '0', '3');
INSERT INTO `smailtype` VALUES ('14', '打印机', 'https://res.vmallres.com/uomcdn/CN/cms/202110/77D22988741B55158C415D45125A0AA0.png', '0', '2');
INSERT INTO `smailtype` VALUES ('15', '台式机', 'https://res.vmallres.com/uomcdn/CN/cms/202110/ED0105E5FF209F8A3F2DD321DE797371.png', '0', '2');
INSERT INTO `smailtype` VALUES ('16', '华为认证手机', 'https://res.vmallres.com/uomcdn/CN/cms/202108/FFFC583DF0D62696F4A74240C44B8BE5.png', '0', '1');
INSERT INTO `smailtype` VALUES ('17', '智慧屏v系列', 'https://res.vmallres.com/uomcdn/CN/cms/202111/62302B708B47707DD70479A6D1BF5468.png', '0', '4');
INSERT INTO `smailtype` VALUES ('18', '智慧屏s系列', 'https://res.vmallres.com/uomcdn/CN/cms/202104/9720ED7916EAE17DA4948272203DACA5.png', '0', '4');
INSERT INTO `smailtype` VALUES ('19', '智慧屏x系列', 'https://res.vmallres.com/uomcdn/CN/cms/202110/6573EB17AF45AA280DDE43B0AB3932F0.png', '0', '4');
INSERT INTO `smailtype` VALUES ('20', '学习智慧屏', 'https://res.vmallres.com/uomcdn/CN/cms/202111/D4AF4574D26E0A3162F195724B337502.jpg', '0', '4');
INSERT INTO `smailtype` VALUES ('21', '买会员送智慧屏', 'https://res.vmallres.com/uomcdn/CN/cms/202112/84A1CC4E0C51E53B29D3DB74851E28B0.png', '0', '4');
INSERT INTO `smailtype` VALUES ('22', '商用智慧屏', 'https://res.vmallres.com/uomcdn/CN/cms/202111/F4477AD1A86B590CD499546CA9C8294F.png', '0', '4');
INSERT INTO `smailtype` VALUES ('23', '智慧科技', 'https://res.vmallres.com/uomcdn/CN/cms/202111/2CCB1517716303A74823A19207D91139.png', '0', '5');
INSERT INTO `smailtype` VALUES ('24', '经典全能', 'https://res.vmallres.com/uomcdn/CN/cms/202111/9851B0BC3AB522AE2B3198C359436845.png', '0', '5');
INSERT INTO `smailtype` VALUES ('25', '专业极致', 'https://res.vmallres.com/uomcdn/CN/cms/202111/15CF58E276389EC34FDAA76A9FD5CBA1.png', '0', '5');
INSERT INTO `smailtype` VALUES ('26', '时尚潮流', 'https://res.vmallres.com/uomcdn/CN/cms/202111/EC0D0391AA7A507758B125475E6BF11D.png', '0', '5');
INSERT INTO `smailtype` VALUES ('27', '真无线耳机', 'https://res.vmallres.com/uomcdn/CN/cms/202104/D4FB3449003E0851536AC549CF48F8A3.png', '0', '6');
INSERT INTO `smailtype` VALUES ('28', '有线耳机', 'https://res.vmallres.com/uomcdn/CN/cms/202104/B096A599E69B9E55A5CAEB7C998CFA57.jpg', '0', '6');
INSERT INTO `smailtype` VALUES ('29', '智能眼镜', 'https://res.vmallres.com/uomcdn/CN/cms/202201/654F216227EF4DDE5F83A12AA66DECFE.png', '0', '6');
INSERT INTO `smailtype` VALUES ('30', '精品路由', 'https://res.vmallres.com/uomcdn/CN/cms/202111/CFABA82AA41F45229F021F47DC553B4B.png', '0', '7');
INSERT INTO `smailtype` VALUES ('31', '移动路由', 'https://res.vmallres.com/uomcdn/CN/cms/202111/717021D74C8432AEAA621577FABEF55C.png', '0', '7');
INSERT INTO `smailtype` VALUES ('32', '全屋wifi', 'https://res.vmallres.com/uomcdn/CN/cms/202104/0CEE12D77CD386E94F43C0622EBB34DB.png', '0', '7');
INSERT INTO `smailtype` VALUES ('33', '充电器', 'https://res.vmallres.com/uomcdn/CN/cms/202104/05A4D960A9636F4EF8A460D0005A4CE5.png', '1', '8');
INSERT INTO `smailtype` VALUES ('34', '移动电源', 'https://res.vmallres.com/uomcdn/CN/cms/202104/F64ED3C128836DCE36518565191D48F6.jpg', '0', '8');
INSERT INTO `smailtype` VALUES ('35', '自拍杆', 'https://res.vmallres.com/uomcdn/CN/cms/202104/DCA084923F2E9CCAEFDC81A4DCD96315.png', '0', '8');
INSERT INTO `smailtype` VALUES ('36', '摄像头', 'https://res.vmallres.com/uomcdn/CN/cms/202104/0412598040823D8F57E5A14B443C2889.png', '0', '8');
INSERT INTO `smailtype` VALUES ('37', '保护壳', 'https://res.vmallres.com/uomcdn/CN/cms/202104/147C9A35420253D1A88BB6D23C69AD0E.png', '0', '8');
INSERT INTO `smailtype` VALUES ('38', '健身保健', 'https://res.vmallres.com/uomcdn/CN/cms/202104/98DDDB5905343C31A6E2773AC449261F.png', '0', '9');
INSERT INTO `smailtype` VALUES ('39', '个护美妆', 'https://res.vmallres.com/uomcdn/CN/cms/202104/048AD4120AC00FED9BDC9BA2D7299C63.png', '0', '9');
INSERT INTO `smailtype` VALUES ('40', '智能家装', 'https://res.vmallres.com/uomcdn/CN/cms/202108/52BD9C2BA5412F91666DF1D74225970D.jpg', '0', '9');
INSERT INTO `smailtype` VALUES ('41', '空气净化器', 'https://res.vmallres.com/uomcdn/CN/cms/202104/40CA3B1F5B9EEA0393DD360FC0865AD6.png', '0', '10');
INSERT INTO `smailtype` VALUES ('42', '厨电卫浴', 'https://res.vmallres.com/uomcdn/CN/cms/202104/3DE4AA44D81D4EA50989DABABA161FA9.png', '0', '10');
INSERT INTO `smailtype` VALUES ('43', '净水器', 'https://res.vmallres.com/uomcdn/CN/cms/202104/AEBF3DA95E94A7811C9A93749BD5FAA5.png', '0', '10');
INSERT INTO `smailtype` VALUES ('44', '甄选美酒', 'https://res.vmallres.com/uomcdn/CN/cms/202108/BDB72D88655FF167F75B1FF80D6DF69A.png', '0', '11');
INSERT INTO `smailtype` VALUES ('45', '严选良食', 'https://res.vmallres.com/uomcdn/CN/cms/202108/53A115B22FC2F23DC2BD49039168265C.png', '0', '11');
INSERT INTO `smailtype` VALUES ('46', '进口生鲜', 'https://res.vmallres.com/uomcdn/CN/cms/202109/AAA0B20ABF24C6D37CA5A1032382E670.jpg', '0', '11');
INSERT INTO `smailtype` VALUES ('47', '精选好物', 'https://res.vmallres.com/uomcdn/CN/cms/202104/0E394A1B2558BC2E0F4E146C6FBEA405.png', '0', '11');
INSERT INTO `smailtype` VALUES ('48', '华为视频卡', 'https://res.vmallres.com/uomcdn/CN/cms/202104/3B96419CE99D4185DA253E96CC434EA2.png', '0', '12');
INSERT INTO `smailtype` VALUES ('49', '花币卡', 'https://res.vmallres.com/uomcdn/CN/cms/202104/D301B353B39DBD64AC308AA3681C31E2.png', '0', '12');
INSERT INTO `smailtype` VALUES ('50', '手机延保', 'https://res.vmallres.com/uomcdn/CN/cms/202112/C21600E9F26FF039E15FD0E76D5FEAAE.png', '0', '12');
INSERT INTO `smailtype` VALUES ('51', '平板延保', 'https://res.vmallres.com/uomcdn/CN/cms/202112/1A26F5FAD50EB91369D77EBAEFA2AB43.png', '0', '12');
INSERT INTO `smailtype` VALUES ('52', '笔记本延保', 'https://res.vmallres.com/uomcdn/CN/cms/202112/F73EC0E777B59101F05575EBFCAAC503.png', '0', '12');
INSERT INTO `smailtype` VALUES ('53', '换新服务', 'https://res.vmallres.com/uomcdn/CN/cms/202112/714E35A7F32E088D0DD88D51016E4580.png', '0', '12');
