/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-06-11 17:36:40
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `admin_pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO admin VALUES ('admin', 'admin');

-- ----------------------------
-- Table structure for `blueflowers`
-- ----------------------------
DROP TABLE IF EXISTS `blueflowers`;
CREATE TABLE `blueflowers` (
  `flower_id` int(10) NOT NULL AUTO_INCREMENT,
  `img_id` varchar(255) NOT NULL,
  `img_name` varchar(255) NOT NULL,
  `dollar` varchar(10) NOT NULL,
  `star` varchar(5) DEFAULT NULL,
  `Introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `evaluation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `productdetails` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`flower_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blueflowers
-- ----------------------------
INSERT INTO blueflowers VALUES ('1', 'flowers/white01.jpg', '白花#1', '5', '3', 'good', 'good', 'good');
INSERT INTO blueflowers VALUES ('2', 'flowers/white02.jpg', '白花#2', '8', '4', 'good', 'good', 'good');
INSERT INTO blueflowers VALUES ('3', 'flowers/white03.jpg', '白花#3', '11', '4', 'good', 'good', 'good');
INSERT INTO blueflowers VALUES ('4', 'flowers/white04.jpg', '白花#4', '11', '4', 'good', 'good', 'good');
INSERT INTO blueflowers VALUES ('5', 'flowers/white05.jpg', '白花#5', '11', '4', 'good', 'good', 'good');
INSERT INTO blueflowers VALUES ('6', 'flowers/white06.jpg', '白花#6', '11', '4', 'good', 'good', 'good');

-- ----------------------------
-- Table structure for `cart`
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `no` int(11) NOT NULL,
  `no_order` int(11) NOT NULL,
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `date_order` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `postalcode` int(10) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO cart VALUES ('1', '1', '123', '123', 'flowers/blue01.jpg', '藍花01', '5', '1', '60', '2019-06-07', '2qwewqe@qweqe', 'qwewqe', '123');
INSERT INTO cart VALUES ('2', '2', '123', '123', 'flowers/blue02.jpg', '藍花02', '5', '1', '60', '2019-06-07', 'dadqw@daqwdq', 'wedqdq', '123');

-- ----------------------------
-- Table structure for `counter`
-- ----------------------------
DROP TABLE IF EXISTS `counter`;
CREATE TABLE `counter` (
  `count` bigint(20) NOT NULL,
  PRIMARY KEY (`count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of counter
-- ----------------------------
INSERT INTO counter VALUES ('110');

-- ----------------------------
-- Table structure for `member`
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `member_no` int(3) NOT NULL AUTO_INCREMENT,
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pwd` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`member_no`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO member VALUES ('3', 'gg', '123', '123', '123', '123', '123');
INSERT INTO member VALUES ('4', 'gggg', '123', 'ga', '123@123', '9090909', '1313');
INSERT INTO member VALUES ('5', 'test', '123', '中文', '62584894@595499', '1615', '52525525');
INSERT INTO member VALUES ('22', '123', '123', '中文', 'ä¸­æ', '1615', '123');
INSERT INTO member VALUES ('24', '123', '123', '中文', '123', '1615', '123');
INSERT INTO member VALUES ('25', '123', '123', '中文', '123', '1615', '123');
INSERT INTO member VALUES ('26', '123', '123', '中文', '123', '1615', '123');
INSERT INTO member VALUES ('27', '123', '123', '中文', '123', '1615', '123');
INSERT INTO member VALUES ('31', '123', '321', '中文', '123', '1615', '123');
INSERT INTO member VALUES ('32', '123', '123', '123wedwqwqe', '123', '123', '123');
INSERT INTO member VALUES ('33', '123', '123', 'edw', '123', '123', '123');
INSERT INTO member VALUES ('34', '12344', '321', '123', '123', '112', '123');
INSERT INTO member VALUES ('35', '123', '123', '123', '123', '123', '123');

-- ----------------------------
-- Table structure for `pinkflowers`
-- ----------------------------
DROP TABLE IF EXISTS `pinkflowers`;
CREATE TABLE `pinkflowers` (
  `flower_id` int(10) NOT NULL AUTO_INCREMENT,
  `img_id` varchar(255) NOT NULL,
  `img_name` varchar(255) NOT NULL,
  `dollar` varchar(10) NOT NULL,
  `star` varchar(5) DEFAULT NULL,
  `Introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `evaluation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `productdetails` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`flower_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pinkflowers
-- ----------------------------
INSERT INTO pinkflowers VALUES ('1', 'flowers/pink01.jpg', '粉花#1', '10', 's', 's', 's', 's');
INSERT INTO pinkflowers VALUES ('2', 'flowers/pink02.jpg', '粉花#2', '8', '2', 'flowers/white02.jpg', 'good', '8');
INSERT INTO pinkflowers VALUES ('3', 'flowers/pink03.jpg', '粉花#3', '11', '4', 'good', 'good', 'good');
INSERT INTO pinkflowers VALUES ('4', 'flowers/pink04.jpg', '粉花#4', '11', '4', 'good', 'good', 'good');
INSERT INTO pinkflowers VALUES ('5', 'flowers/pink05.jpg', '粉花#5', '11', '4', 'good', 'good', 'good');
INSERT INTO pinkflowers VALUES ('6', 'flowers/pink06.jpg', '粉花#6', '11', '4', 'good', 'good', 'good');

-- ----------------------------
-- Table structure for `purpleflowers`
-- ----------------------------
DROP TABLE IF EXISTS `purpleflowers`;
CREATE TABLE `purpleflowers` (
  `flower_id` int(10) NOT NULL AUTO_INCREMENT,
  `img_id` varchar(255) NOT NULL,
  `img_name` varchar(255) NOT NULL,
  `dollar` varchar(10) NOT NULL,
  `star` varchar(5) DEFAULT NULL,
  `Introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `evaluation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `productdetails` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`flower_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of purpleflowers
-- ----------------------------
INSERT INTO purpleflowers VALUES ('1', 'flowers/white01.jpg', '白花#1', '5', '3', 'good', 'good', 'good');
INSERT INTO purpleflowers VALUES ('2', 'flowers/white02.jpg', '白花#2', '8', '4', 'good', 'good', 'good');
INSERT INTO purpleflowers VALUES ('3', 'flowers/white03.jpg', '白花#3', '11', '4', 'good', 'good', 'good');
INSERT INTO purpleflowers VALUES ('4', 'flowers/white04.jpg', '白花#4', '11', '4', 'good', 'good', 'good');
INSERT INTO purpleflowers VALUES ('5', 'flowers/white05.jpg', '白花#5', '11', '4', 'good', 'good', 'good');
INSERT INTO purpleflowers VALUES ('7', 'flowers/white01.jpg', 'test', 'NTD$4', null, null, null, null);

-- ----------------------------
-- Table structure for `redflowers`
-- ----------------------------
DROP TABLE IF EXISTS `redflowers`;
CREATE TABLE `redflowers` (
  `flower_id` int(10) NOT NULL AUTO_INCREMENT,
  `img_id` varchar(255) NOT NULL,
  `img_name` varchar(255) NOT NULL,
  `dollar` varchar(10) NOT NULL,
  `star` varchar(5) DEFAULT NULL,
  `Introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `evaluation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `productdetails` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`flower_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of redflowers
-- ----------------------------
INSERT INTO redflowers VALUES ('1', 'flowers/white01.jpg', '白花#1', '5', '3', 'good', 'good', 'good');
INSERT INTO redflowers VALUES ('2', 'flowers/white02.jpg', '白花#2', '8', '4', 'good', 'good', 'good');
INSERT INTO redflowers VALUES ('3', 'flowers/white03.jpg', '白花#3', '11', '4', 'good', 'good', 'good');
INSERT INTO redflowers VALUES ('4', 'flowers/white04.jpg', '白花#4', '11', '4', 'good', 'good', 'good');
INSERT INTO redflowers VALUES ('5', 'flowers/white05.jpg', '白花#5', '11', '4', 'good', 'good', 'good');
INSERT INTO redflowers VALUES ('6', 'flowers/white06.jpg', '白花#6', '11', '4', 'good', 'good', 'good');

-- ----------------------------
-- Table structure for `whiteflowers`
-- ----------------------------
DROP TABLE IF EXISTS `whiteflowers`;
CREATE TABLE `whiteflowers` (
  `flower_id` int(10) NOT NULL AUTO_INCREMENT,
  `img_id` varchar(255) NOT NULL,
  `img_name` varchar(255) NOT NULL,
  `dollar` varchar(10) NOT NULL,
  `star` varchar(5) DEFAULT NULL,
  `Introduction` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `evaluation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `productdetails` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`flower_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of whiteflowers
-- ----------------------------
INSERT INTO whiteflowers VALUES ('1', 'flowers/white01.jpg', '白花#1', '5', '3', '<h1>恰似·初見</h1>\r\n                <h2>一如初見，花落人間。</h2>\r\n                <hr>\r\n                <div align=\"left\">\r\n                <h2>商品詳情</h2>\r\n				<h3>鮮花主花材:混搭花束</h3>\r\n				<h3>鮮花規格(直徑X高):50*60</h3>\r\n				<h3>鮮花朵數:其他</h3>\r\n				<h3>適用節日:情人節、耶誕節、3.8婦女節、母親節、教師節、七夕……</h3>\r\n				<h3>貨號:W01</h3>\r\n				<h3>是否含花瓶:不含花瓶</h3>\r\n				<h3>適用場景:愛意表達、生日探望、求婚友情、周年紀念……</h3>\r\n				<h3>適用對象:愛人、老師、客戶、領導、長輩、朋友、同事</h3>\r\n				<h3>鮮花綠植工藝:鮮花(鮮切花) </h3>\r\n				<h3>是否週期購:否</h3>', 'good', 'good');
INSERT INTO whiteflowers VALUES ('2', 'flowers/white02.jpg', '白花#2', '8', '4', 'good', 'good', 'good');
INSERT INTO whiteflowers VALUES ('3', 'flowers/white03.jpg', '白花#3', '11', '4', 'good', 'good', 'good');
INSERT INTO whiteflowers VALUES ('4', 'flowers/white04.jpg', '白花#4', '11', '4', 'good', 'good', 'good');
INSERT INTO whiteflowers VALUES ('6', 'flowers/white06.jpg', '白花#6', '11', '4', 'good', 'good', 'good');
INSERT INTO whiteflowers VALUES ('11', 'flowers/white01.jpg', 'test', '4', null, null, null, null);
