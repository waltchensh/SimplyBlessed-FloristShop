/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-06-11 17:37:13
*/

SET FOREIGN_KEY_CHECKS=0;
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
