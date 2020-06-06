/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-06-11 17:37:32
*/

SET FOREIGN_KEY_CHECKS=0;
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
