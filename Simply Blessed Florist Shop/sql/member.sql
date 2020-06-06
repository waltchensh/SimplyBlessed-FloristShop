/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-06-11 17:37:27
*/

SET FOREIGN_KEY_CHECKS=0;
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
