-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-12-06 14:31:04
-- 服务器版本： 10.1.16-MariaDB
-- PHP Version: 7.0.9
/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : shangcheng

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-07-04 21:25:45
*/

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yshop`
--

-- --------------------------------------------------------

--
-- 表的结构 `adminuser`
--

CREATE TABLE `adminuser` (
  `uid` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `minventory` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `adminuser`
--

INSERT INTO `adminuser` (`uid`, `username`, `password`, `minventory`) VALUES
(1, 'admin', 'admin', 50);

-- --------------------------------------------------------

--
-- 表的结构 `category`
--
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT NULL,
  `discount` float NOT NULL,
  `privilegeTime` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '女装男装', '0.8', '2017-06-28 20:49:42');
INSERT INTO `category` VALUES ('2', '鞋靴箱包', '0.5', '2017-06-28 20:49:45');
INSERT INTO `category` VALUES ('3', '日常生活用品', '1', '2017-06-28 20:49:49');
INSERT INTO `category` VALUES ('4', '珠宝配饰', '0.9', '2017-06-28 20:50:00');
INSERT INTO `category` VALUES ('5', '手机数码', '1', '2017-06-28 20:50:03');
INSERT INTO `category` VALUES ('6', '家用电器', '0.8', '2017-06-28 20:50:08');
INSERT INTO `category` VALUES ('7', '食品', '0.9', '2017-06-28 20:50:11');
/**
INSERT INTO `category` VALUES ('8', '化妆用品', '0.5', '2017-06-28 17:03:30');
*/
-- --------------------------------------------------------

--
-- 表的结构 `categorysecond`
--

CREATE TABLE `categorysecond` (
  `csid` int(11) NOT NULL AUTO_INCREMENT,
  `csname` varchar(255) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`csid`),
  KEY `FK_Renfrence` (`cid`),
  CONSTRAINT `FK_Refrence` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categorysecond
-- ----------------------------
INSERT INTO `categorysecond` VALUES ('1', '潮流女装', '1');
INSERT INTO `categorysecond` VALUES ('2', '初冬羽绒', '1');
INSERT INTO `categorysecond` VALUES ('3', '毛呢大衣', '1');
INSERT INTO `categorysecond` VALUES ('4', '温暖毛衣', '1');
INSERT INTO `categorysecond` VALUES ('5', '精选男装', '1');
INSERT INTO `categorysecond` VALUES ('6', '冬季外套', '1');
INSERT INTO `categorysecond` VALUES ('7', '羽绒服', '1');
INSERT INTO `categorysecond` VALUES ('9', '女鞋', '2');
INSERT INTO `categorysecond` VALUES ('10', '男鞋', '2');
INSERT INTO `categorysecond` VALUES ('11', '女包', '2');
INSERT INTO `categorysecond` VALUES ('12', '男包', '2');
INSERT INTO `categorysecond` VALUES ('13', '旅行箱包', '2');
INSERT INTO `categorysecond` VALUES ('15', '雨伞雨具', '3');
INSERT INTO `categorysecond` VALUES ('16', '洗嗮/熨烫', '3');
INSERT INTO `categorysecond` VALUES ('17', '净化除味', '3');
INSERT INTO `categorysecond` VALUES ('18', '缝纫针织', '3');
INSERT INTO `categorysecond` VALUES ('19', '骑行装备', '3');
INSERT INTO `categorysecond` VALUES ('20', '珠宝首饰', '4');
INSERT INTO `categorysecond` VALUES ('21', '时尚饰品', '4');
INSERT INTO `categorysecond` VALUES ('22', '品质手表', '4');
INSERT INTO `categorysecond` VALUES ('23', '眼镜配饰', '4');
INSERT INTO `categorysecond` VALUES ('24', '手机', '5');
INSERT INTO `categorysecond` VALUES ('25', '平板', '5');
INSERT INTO `categorysecond` VALUES ('26', '电脑', '5');
INSERT INTO `categorysecond` VALUES ('27', '相机', '5');
INSERT INTO `categorysecond` VALUES ('28', '大家电', '6');
INSERT INTO `categorysecond` VALUES ('29', '厨房电器', '6');
INSERT INTO `categorysecond` VALUES ('30', '生活电器', '6');
INSERT INTO `categorysecond` VALUES ('31', '个户电器', '6');
INSERT INTO `categorysecond` VALUES ('32', '办公耗材', '6');
INSERT INTO `categorysecond` VALUES ('33', '休闲零食', '7');
INSERT INTO `categorysecond` VALUES ('34', '烟酒糖茶', '7');
INSERT INTO `categorysecond` VALUES ('35', '生鲜果蔬', '7');
INSERT INTO `categorysecond` VALUES ('36', '粮油干货', '7');
INSERT INTO `categorysecond` VALUES ('37', '家居用品', '3');
/**
INSERT INTO `categorysecond` VALUES ('40', '护肤用品', '8');
INSERT INTO `categorysecond` VALUES ('41', '美妆', '8');
INSERT INTO `categorysecond` VALUES ('42', '洗发护发', '8');
INSERT INTO `categorysecond` VALUES ('43', '美容工具', '8');
INSERT INTO `categorysecond` VALUES ('44', '个人护理', '8');
*/

-- --------------------------------------------------------

--
-- 表的结构 `orderitem`
--

CREATE TABLE `orderitem` (
  `itemid` int(11) NOT NULL,
  `count` int(11) DEFAULT NULL,
  `subtotal` float DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `orderitem`
--

INSERT INTO `orderitem` (`itemid`, `count`, `subtotal`, `oid`, `pid`) VALUES
(1, 3, 249, 1, 71),
(2, 1, 358, 2, 51),
(3, 1, 18000, 3, 94),
(4, 1, 119, 4, 5),
(5, 1, 358, 5, 51),
(6, 1, 299, 5, 57),
(7, 2, 598, 6, 57),
(8, 1, 299, 7, 57),
(9, 1, 299, 9, 57),
(10, 1, 18000, 11, 94),
(11, 1, 358, 12, 42),
(12, 1, 299, 13, 57),
(13, 1, 9900, 14, 11),
(14, 2, 598, 15, 57),
(15, 1, 343, 16, 81),
(16, 1, 299, 16, 57),
(17, 2, 686, 17, 81),
(18, 1, 34, 18, 87),
(1s9, 2, 358, 19, 51),
(20, 1, 114, 20, 1),
(21, 1, 114, 23, 1),
(22, 1, 114, 25, 1),
(23, 2, 228, 26, 1),
(24, 1, 343, 27, 81),
(25, 4, 598, 28, 57),
(26, 1, 149.5, 29, 57),
(27, 1, 343, 30, 81),
(28, 1, 149.5, 30, 57),
(29, 2, 686, 31, 81),
(30, 1, 343, 33, 81),
(31, 1, 99, 34, 21),
(32, 1, 343, 35, 81),
(33, 1, 343, 37, 81),
(34, 1, 149.5, 37, 57),
(35, 1, 16200, 38, 94),
(36, 1, 149.5, 40, 57),
(37, 1, 343, 40, 81),
(38, 1, 41.5, 42, 68),
(39, 1, 343, 44, 81),
(40, 1, 16200, 45, 94),
(41, 1, 16200, 46, 94),
(42, 2, 32400, 47, 94),
(43, 1, 149.5, 49, 57),
(44, 1, 16200, 50, 94),
(45, 1, 343, 52, 81),
(46, 1, 149.5, 54, 57),
(47, 1, 16200, 55, 94),
(48, 1, 149.5, 57, 57),
(49, 2, 83, 59, 68),
(50, 1, 41.5, 61, 68),
(51, 10, 1495, 63, 57),
(52, 1, 41.5, 65, 68),
(53, 1, 41.5, 67, 68),
(54, 2, 83, 69, 68),
(55, 1, 41.5, 71, 68),
(56, 1, 41.5, 72, 68),
(57, 1, 41.5, 73, 68),
(58, 1, 41.5, 75, 68),
(59, 2, 83, 77, 68),
(60, 1, 41.5, 79, 68),
(61, 1, 41.5, 81, 68),
(62, 1, 41.5, 83, 68),
(63, 1, 41.5, 85, 98),
(64, 1, 343, 85, 81),
(65, 1, 149.5, 85, 57),
(66, 10, 3430, 87, 81),
(67, 2, 299, 89, 57),
(68, 1, 149.5, 91, 56),
(69, 1, 179, 93, 45),
(70, 2, 32400, 94, 94),
(71, 1, 114, 96, 1),
(72, 2, 172, 98, 2),
(73, 2, 119, 100, 3),
(74, 2, 119, 102, 4),
(75, 2, 119, 104, 5),
(76, 1, 59.5, 106, 9),
(77, 1, 79, 108, 10),
(78, 1, 4950, 110, 11),
(79, 1, 168, 112, 8),
(80, 1, 59.5, 114, 3),
(81, 1, 4950, 116, 12),
(82, 1, 16200, 118, 94),
(83, 1, 114, 119, 1),
(84, 1, 114, 121, 1),
(85, 198, 11781, 123, 4),
(86, 1, 59.5, 125, 4),
(87, 1, 171.5, 126, 81),
(88, 1, 171.5, 129, 81),
(89, 1, 171.5, 130, 81),
(90, 1, 171.5, 132, 81),
(91, 2, 343, 134, 81),
(92, 1, 343, 136, 104),
(93, 30, 5145, 137, 104),
(94, 2, 343, 139, 104),
(95, 4, 686, 140, 81),
(96, 1, 299, 142, 57),
(97, 2, 598, 143, 57),
(98, 1, 171.5, 143, 104),
(99, 3, 514.5, 145, 81),
(100, 1, 18000, 147, 94),
(101, 2, 343, 148, 81),
(102, 1, 171.5, 149, 81),
(103, 4, 686, 150, 81),
(104, 1, 343, 151, 104),
(105, 1, 343, 152, 81),
(106, 4, 1372, 153, 104),
(107, 2, 686, 153, 81),
(108, 4, 686, 154, 81),
(109, 2, 343, 155, 81),
(110, 1, 171.5, 156, 81),
(111, 1, 171.5, 158, 81),
(112, 2, 343, 159, 81),
(113, 2, 343, 160, 104),
(114, 2, 343, 162, 81),
(115, 2, 343, 164, 81),
(116, 2, 343, 164, 106),
(117, 1, 358, 164, 51),
(118, 5, 857.5, 165, 81),
(119, 2, 343, 167, 81),
(120, 2, 343, 168, 81),
(121, 2, 343, 169, 81),
(122, 4, 686, 171, 81),
(123, 2, 343, 171, 86),
(124, 2, 343, 172, 81),
(125, 5, 1432, 176, 51),
(126, 2, 343, 178, 81),
(127, 2, 343, 181, 81),
(128, 1, 171.5, 182, 81);

-- --------------------------------------------------------

--
-- 表的结构 `orders`
--

CREATE TABLE `orders` (
  `oid` int(11) NOT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ordertime` datetime DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `total` float DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `orders`
--

INSERT INTO `orders` (`oid`, `addr`, `name`, `ordertime`, `phone`, `state`, `total`, `uid`) VALUES
(1, 'dfd', 'admin', '2016-11-22 23:55:55', 'dffds', 1, 249, 38),
(2, 'dfd', 'admin', '2016-11-22 23:57:50', 'dffds', 1, 358, 38),
(3, 'dfd', 'admin', '2016-11-23 16:58:05', 'dffds', 1, 18000, 38),
(4, NULL, NULL, '2016-11-23 16:59:35', NULL, 1, 119, 38),
(5, 'dfd', 'admin', '2016-11-23 17:37:09', 'dffds', 1, 657, 38),
(6, 'dfd', 'admin', '2016-11-24 00:09:18', 'dffds', 1, 598, 38),
(7, NULL, NULL, '2016-11-24 00:14:43', NULL, 1, 299, 38),
(8, 'dfd', 'admin', '2016-11-24 00:19:40', 'dffds', 1, 299, 38),
(9, 'dfd', 'admin', '2016-11-24 00:19:40', 'dffds', 2, 299, 38),
(10, 'dfd', 'admin', '2016-11-24 00:27:43', 'dffds', 1, 18000, 38),
(11, 'dfd', 'admin', '2016-11-24 00:27:43', 'dffds', 2, 18000, 38),
(12, 'dfd', 'admin', '2016-11-24 09:54:30', 'dffds', 1, 358, 38),
(13, 'dfd', 'admin', '2016-11-24 09:54:46', 'dffds', 1, 299, 38),
(14, 'dfd', 'admin', '2016-11-24 11:07:29', 'dffds', 1, 9900, 38),
(15, NULL, NULL, '2016-11-24 11:14:56', NULL, 1, 598, 38),
(16, 'dfd', 'admin', '2016-11-24 19:51:53', 'dffds', 1, 642, 38),
(17, 'dfd', 'admin', '2016-11-26 16:24:39', 'dffds', 1, 686, 38),
(18, 'dfd', '', '2016-11-26 16:26:33', 'dffds', 1, 34, 38),
(19, NULL, NULL, '2016-11-26 16:26:55', NULL, 1, 358, 38),
(20, NULL, NULL, '2016-11-26 16:35:54', NULL, 1, 114, 38),
(21, NULL, NULL, '2016-11-26 16:39:53', NULL, 1, 0, 38),
(22, NULL, NULL, '2016-11-26 16:40:00', NULL, 1, 0, 38),
(23, NULL, NULL, '2016-11-26 16:40:07', NULL, 1, 114, 38),
(24, NULL, NULL, '2016-11-26 16:40:47', NULL, 1, 0, 38),
(25, NULL, NULL, '2016-11-26 16:40:53', NULL, 1, 114, 38),
(26, NULL, NULL, '2016-11-26 16:41:07', NULL, 1, 228, 38),
(27, NULL, NULL, '2016-11-26 16:44:54', NULL, 1, 343, 38),
(28, NULL, NULL, '2016-11-26 17:26:55', NULL, 1, 598, 38),
(29, 'dfd', 'admin', '2016-11-26 19:35:24', 'dffds', 1, 149.5, 38),
(30, 'dfd', 'admin', '2016-11-26 22:10:55', 'dffds', 1, 492.5, 38),
(31, 'dfd', 'admin', '2016-11-26 22:27:21', 'dffds', 1, 686, 38),
(32, 'dfd', 'admin', '2016-11-26 22:38:32', 'dffds', 1, 343, 38),
(33, 'dfd', 'admin', '2016-11-26 22:38:32', 'dffds', 2, 343, 38),
(34, 'dfd', 'admin', '2016-11-26 23:29:55', 'dffds', 1, 99, 38),
(35, 'dfd', 'admin', '2016-11-26 23:44:22', 'dffds', 1, 343, 38),
(36, 'dfd', 'admin', '2016-11-26 23:46:48', 'dffds', 1, 492.5, 38),
(37, 'dfd', 'admin', '2016-11-26 23:46:48', 'dffds', 2, 492.5, 38),
(38, 'dfd', 'admin', '2016-11-26 23:47:25', 'dffds', 1, 16200, 38),
(39, 'dfd', 'admin', '2016-11-26 23:57:40', 'dffds', 1, 492.5, 38),
(40, 'dfd', 'admin', '2016-11-26 23:57:40', 'dffds', 2, 492.5, 38),
(41, 'dfd', 'admin', '2016-11-27 00:03:40', 'dffds', 1, 41.5, 38),
(42, 'dfd', 'admin', '2016-11-27 00:03:40', 'dffds', 2, 41.5, 38),
(43, 'dfd', 'admin', '2016-11-27 00:29:38', 'dffds', 1, 343, 38),
(44, 'dfd', 'admin', '2016-11-27 00:29:38', 'dffds', 2, 343, 38),
(45, 'dfd', 'admin', '2016-11-27 00:34:30', 'dffds', 1, 16200, 38),
(46, 'dfd', 'admin', '2016-11-27 00:42:39', 'dffds', 1, 16200, 38),
(47, 'dfd', 'admin', '2016-11-27 00:45:00', 'dffds', 1, 32400, 38),
(48, 'dfd', 'admin', '2016-11-27 10:49:07', 'dffds', 1, 149.5, 38),
(49, 'dfd', 'admin', '2016-11-27 10:49:07', 'dffds', 2, 149.5, 38),
(50, 'dfd', 'admin', '2016-11-27 10:49:28', 'dffds', 1, 16200, 38),
(51, 'dfd', 'admin', '2016-11-27 10:50:13', 'dffds', 1, 343, 38),
(52, 'dfd', 'admin', '2016-11-27 10:50:13', 'dffds', 2, 343, 38),
(53, 'dfd', 'admin', '2016-11-27 10:55:44', 'dffds', 1, 149.5, 38),
(54, 'dfd', 'admin', '2016-11-27 10:55:44', 'dffds', 2, 149.5, 38),
(55, 'dfd', 'admin', '2016-11-27 12:27:05', 'dffds', 1, 16200, 38),
(56, 'dfd', 'admin', '2016-11-27 12:27:28', 'dffds', 1, 149.5, 38),
(57, 'dfd', 'admin', '2016-11-27 12:27:28', 'dffds', 2, 149.5, 38),
(58, 'dfd', 'admin', '2016-11-27 12:58:55', 'dffds', 1, 83, 38),
(59, 'dfd', 'admin', '2016-11-27 12:58:55', 'dffds', 2, 83, 38),
(60, 'dfd', 'admin', '2016-11-27 13:01:39', 'dffds', 1, 41.5, 38),
(61, 'dfd', 'admin', '2016-11-27 13:01:39', 'dffds', 2, 41.5, 38),
(62, 'dfd', 'admin', '2016-11-27 13:08:35', 'dffds', 1, 1495, 38),
(63, 'dfd', 'admin', '2016-11-27 13:08:35', 'dffds', 2, 1495, 38),
(64, 'dfd', 'admin', '2016-11-27 13:17:39', 'dffds', 1, 41.5, 38),
(65, 'dfd', 'admin', '2016-11-27 13:17:39', 'dffds', 2, 41.5, 38),
(66, 'dfd', 'admin', '2016-11-27 13:22:22', 'dffds', 1, 41.5, 38),
(67, 'dfd', 'admin', '2016-11-27 13:22:22', 'dffds', 2, 41.5, 38),
(68, 'dfd', 'admin', '2016-11-27 13:24:25', 'dffds', 1, 83, 38),
(69, 'dfd', 'admin', '2016-11-27 13:24:25', 'dffds', 2, 83, 38),
(70, 'dfd', 'admin', '2016-11-27 13:35:25', 'dffds', 1, 41.5, 38),
(71, 'dfd', 'admin', '2016-11-27 13:35:25', 'dffds', 2, 41.5, 38),
(72, NULL, NULL, '2016-11-27 13:35:52', NULL, 1, 41.5, 38),
(73, NULL, NULL, '2016-11-27 13:38:24', NULL, 1, 41.5, 38),
(74, 'dfd', 'admin', '2016-11-27 13:49:25', 'dffds', 1, 41.5, 38),
(75, 'dfd', 'admin', '2016-11-27 13:49:25', 'dffds', 2, 41.5, 38),
(76, 'dfd', 'admin', '2016-11-27 13:52:51', 'dffds', 1, 83, 38),
(77, 'dfd', 'admin', '2016-11-27 13:52:51', 'dffds', 2, 83, 38),
(78, 'dfd', 'admin', '2016-11-27 13:53:21', 'dffds', 1, 41.5, 38),
(79, 'dfd', 'admin', '2016-11-27 13:53:21', 'dffds', 2, 41.5, 38),
(80, 'dfd', 'admin', '2016-11-27 13:55:23', 'dffds', 1, 41.5, 38),
(81, 'dfd', 'admin', '2016-11-27 13:55:23', 'dffds', 2, 41.5, 38),
(82, 'dfd', 'admin', '2016-11-27 13:58:59', 'dffds', 1, 41.5, 38),
(83, 'dfd', 'admin', '2016-11-27 13:58:59', 'dffds', 2, 41.5, 38),
(84, 'dfd', 'admin', '2016-11-27 14:00:13', 'dffds', 1, 534, 38),
(85, 'dfd', 'admin', '2016-11-27 14:00:13', 'dffds', 2, 534, 38),
(86, 'dfd', 'admin', '2016-11-27 14:01:32', 'dffds', 1, 3430, 38),
(87, 'dfd', 'admin', '2016-11-27 14:01:32', 'dffds', 2, 3430, 38),
(88, 'dfd', 'admin', '2016-11-27 14:04:25', 'dffds', 1, 299, 38),
(89, 'dfd', 'admin', '2016-11-27 14:04:25', 'dffds', 2, 299, 38),
(90, 'dfd', 'admin', '2016-11-27 14:09:45', 'dffds', 1, 149.5, 38),
(91, 'dfd', 'admin', '2016-11-27 14:09:45', 'dffds', 2, 149.5, 38),
(92, 'dfd', 'admin', '2016-11-27 14:17:22', 'dffds', 1, 179, 38),
(93, 'dfd', 'admin', '2016-11-27 14:17:22', 'dffds', 2, 179, 38),
(94, 'dfd', 'admin', '2016-11-27 14:54:34', 'dffds', 1, 32400, 38),
(95, 'dfd', 'admin', '2016-11-27 14:55:52', 'dffds', 1, 114, 38),
(96, 'dfd', 'admin', '2016-11-27 14:55:52', 'dffds', 2, 114, 38),
(97, 'dfd', 'admin', '2016-11-27 15:26:29', 'dffds', 1, 172, 38),
(98, 'dfd', 'admin', '2016-11-27 15:26:29', 'dffds', 2, 172, 38),
(99, 'dfd', 'admin', '2016-11-27 15:42:54', 'dffds', 1, 119, 38),
(100, 'dfd', 'admin', '2016-11-27 15:42:54', 'dffds', 2, 119, 38),
(101, 'dfd', 'admin', '2016-11-27 15:49:39', 'dffds', 1, 119, 38),
(102, 'dfd', 'admin', '2016-11-27 15:49:39', 'dffds', 2, 119, 38),
(103, 'dfd', 'admin', '2016-11-27 15:52:05', 'dffds', 1, 119, 38),
(104, 'dfd', 'admin', '2016-11-27 15:52:05', 'dffds', 2, 119, 38),
(105, 'dfd', 'admin', '2016-11-27 15:53:06', 'dffds', 1, 59.5, 38),
(106, 'dfd', 'admin', '2016-11-27 15:53:06', 'dffds', 2, 59.5, 38),
(107, 'dfd', 'admin', '2016-11-27 15:58:36', 'dffds', 1, 79, 38),
(108, 'dfd', 'admin', '2016-11-27 15:58:36', 'dffds', 2, 79, 38),
(109, 'dfd', 'admin', '2016-11-27 16:22:18', 'dffds', 1, 4950, 38),
(110, 'dfd', 'admin', '2016-11-27 16:22:18', 'dffds', 2, 4950, 38),
(111, 'dfd', 'admin', '2016-11-27 16:23:22', 'dffds', 1, 168, 38),
(112, 'dfd', 'admin', '2016-11-27 16:23:22', 'dffds', 2, 168, 38),
(113, 'dfd', 'admin', '2016-11-27 16:24:46', 'dffds', 1, 59.5, 38),
(114, 'dfd', 'admin', '2016-11-27 16:24:46', 'dffds', 2, 59.5, 38),
(115, 'dfd', 'admin', '2016-11-27 16:28:35', 'dffds', 1, 4950, 38),
(116, 'dfd', 'admin', '2016-11-27 16:28:35', 'dffds', 2, 4950, 38),
(117, 'dfd', 'admin', '2016-11-27 16:29:24', 'dffds', 1, 16200, 38),
(118, 'dfd', 'admin', '2016-11-27 16:29:24', 'dffds', 2, 16200, 38),
(119, NULL, NULL, '2016-11-27 16:34:12', NULL, 1, 114, 38),
(120, 'dfd', 'admin', '2016-11-27 16:34:20', 'dffds', 1, 114, 38),
(121, 'dfd', 'admin', '2016-11-27 16:34:20', 'dffds', 2, 114, 38),
(122, 'dfd', 'admin', '2016-11-27 16:35:02', 'dffds', 1, 11781, 38),
(123, 'dfd', 'admin', '2016-11-27 16:35:02', 'dffds', 2, 11781, 38),
(124, 'dfd', 'admin', '2016-11-27 16:35:19', 'dffds', 1, 59.5, 38),
(125, 'dfd', 'admin', '2016-11-27 16:35:19', 'dffds', 2, 59.5, 38),
(126, NULL, NULL, '2016-11-30 17:29:31', NULL, 1, 171.5, 39),
(127, NULL, NULL, '2016-11-30 17:29:45', NULL, 1, 0, 39),
(128, NULL, NULL, '2016-11-30 17:29:49', NULL, 1, 0, 39),
(129, 'JiaZi', 'Joryun', '2016-11-30 17:30:28', '15521075723', 1, 171.5, 39),
(130, 'JiaZi', 'Joryun', '2016-11-30 17:35:43', '15521075723', 1, 171.5, 39),
(131, 'JiaZi', 'Joryun', '2016-11-30 17:40:42', '15521075723', 1, 171.5, 39),
(132, 'JiaZi', 'Joryun', '2016-11-30 17:40:42', '15521075723', 2, 171.5, 39),
(133, 'JiaZi', 'Joryun', '2016-11-30 17:45:43', '15521075723', 1, 343, 39),
(134, 'JiaZi', 'Joryun', '2016-11-30 17:45:43', '15521075723', 2, 343, 39),
(135, 'dfd', 'admin', '2016-12-05 00:18:18', 'dffds', 1, 343, 38),
(136, 'dfd', 'admin', '2016-12-05 00:18:18', 'dffds', 2, 343, 38),
(137, NULL, NULL, '2016-12-05 13:21:49', NULL, 1, 5145, 38),
(138, NULL, NULL, '2016-12-05 13:22:03', NULL, 1, 0, 38),
(139, NULL, NULL, '2016-12-05 13:22:18', NULL, 1, 343, 38),
(140, NULL, NULL, '2016-12-05 13:46:00', NULL, 1, 686, 38),
(141, 'dfd', 'admin', '2016-12-05 13:46:36', 'dffds', 1, 299, 38),
(142, 'dfd', 'admin', '2016-12-05 13:46:36', 'dffds', 2, 299, 38),
(143, NULL, NULL, '2016-12-05 13:47:39', NULL, 1, 769.5, 38),
(144, NULL, NULL, '2016-12-05 13:48:00', NULL, 1, 0, 38),
(145, NULL, NULL, '2016-12-05 13:50:50', NULL, 1, 514.5, 38),
(146, 'dfd', 'admin', '2016-12-05 14:07:52', 'dffds', 1, 18000, 38),
(147, 'dfd', 'admin', '2016-12-05 14:07:52', 'dffds', 2, 18000, 38),
(148, NULL, NULL, '2016-12-05 14:53:20', NULL, 1, 343, 38),
(149, NULL, NULL, '2016-12-05 14:57:55', NULL, 1, 171.5, 38),
(150, NULL, NULL, '2016-12-05 15:10:09', NULL, 1, 686, 38),
(151, NULL, NULL, '2016-12-06 11:36:46', NULL, 1, 343, 38),
(152, NULL, NULL, '2016-12-06 11:37:12', NULL, 1, 343, 38),
(153, NULL, NULL, '2016-12-06 11:59:08', NULL, 1, 1715, 38),
(154, NULL, NULL, '2016-12-06 12:00:56', NULL, 1, 686, 38),
(155, NULL, NULL, '2016-12-06 12:02:41', NULL, 1, 343, 38),
(156, NULL, NULL, '2016-12-06 12:03:37', NULL, 1, 171.5, 38),
(157, NULL, NULL, '2016-12-06 12:04:15', NULL, 1, 0, 38),
(158, NULL, NULL, '2016-12-06 12:04:24', NULL, 1, 171, 38),
(159, NULL, NULL, '2016-12-06 12:04:42', NULL, 1, 323, 38),
(160, NULL, NULL, '2016-12-06 12:05:06', NULL, 1, 323, 38),
(161, NULL, NULL, '2016-12-06 12:05:57', NULL, 1, 0, 38),
(162, NULL, NULL, '2016-12-06 12:06:07', NULL, 1, 323, 38),
(163, 'dfd', 'admin', '2016-12-06 12:09:39', 'dffds', 1, 1024, 38),
(164, 'dfd', 'admin', '2016-12-06 12:09:39', 'dffds', 2, 1024, 38),
(165, NULL, NULL, '2016-12-06 12:29:01', NULL, 1, 837, 38),
(166, NULL, NULL, '2016-12-06 12:29:09', NULL, 1, 857, 38),
(167, NULL, NULL, '2016-12-06 12:32:02', NULL, 1, 323, 38),
(168, NULL, NULL, '2016-12-06 12:33:35', NULL, 1, 323, 38),
(169, NULL, NULL, '2016-12-06 12:38:43', NULL, 1, 323, 38),
(170, NULL, NULL, '2016-12-06 12:39:05', NULL, 1, 0, 38),
(171, NULL, NULL, '2016-12-06 12:40:47', NULL, 1, 1009, 38),
(172, NULL, NULL, '2016-12-06 19:29:43', NULL, 1, 343, 39),
(173, 'JiaZi', 'Joryun', '2016-12-06 19:29:57', '15521075723', 1, 323, 39),
(174, 'JiaZi', 'Joryun', '2016-12-06 19:29:57', '15521075723', 2, 323, 39),
(175, 'JiaZi', 'Joryun', '2016-12-06 21:15:11', '15521075723', 1, 1412, 39),
(176, 'JiaZi', 'Joryun', '2016-12-06 21:15:11', '15521075723', 2, 1412, 39),
(177, 'JiaZi', 'Joryun', '2016-12-06 21:15:49', '15521075723', 1, 323, 39),
(178, 'JiaZi', 'Joryun', '2016-12-06 21:15:49', '15521075723', 2, 323, 39),
(179, 'JiaZi', 'Joryun', '2016-12-06 21:15:49', '15521075723', 2, 323, 39),
(180, 'JiaZi', 'Joryun', '2016-12-06 21:29:32', '15521075723', 1, 323, 39),
(181, 'JiaZi', 'Joryun', '2016-12-06 21:29:32', '15521075723', 2, 323, 39),
(182, NULL, NULL, '2016-12-06 21:29:58', NULL, 1, 171, 39);

-- --------------------------------------------------------

--
-- 表的结构 `packet`
--

CREATE TABLE `packet` (
  `pacid` int(11) NOT NULL COMMENT '卡包编号',
  `uid` int(11) NOT NULL COMMENT '客户编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='卡包表';

--
-- 转存表中的数据 `packet`
--

INSERT INTO `packet` (`pacid`, `uid`) VALUES
(1, 39);

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `org_price` float DEFAULT NULL,
  `cur_price` float DEFAULT NULL,
  `inventory` int(5) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `pdesc` varchar(255) DEFAULT NULL,
  `is_hot` int(11) DEFAULT NULL,
  `pdate` datetime DEFAULT NULL,
  `csid` int(11) DEFAULT NULL,
  `is_top` int(11) DEFAULT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `product`
--
CREATE TABLE `product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `cur_price` float DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `inventory` int(11) DEFAULT NULL,
  `is_hot` int(11) DEFAULT NULL,
  `org_price` float DEFAULT NULL,
  `pdate` datetime DEFAULT NULL,
  `pdesc` varchar(255) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `csid` int(11) DEFAULT NULL,
  `is_top` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `FK_Renfrence` (`csid`),
  CONSTRAINT `FK_Renfrence` FOREIGN KEY (`csid`) REFERENCES `categorysecond` (`csid`)
) ENGINE=InnoDB AUTO_INCREMENT=545 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('5', '35', 'products/1/cs10026.jpeg', '1', '0', '100', '2017-06-25 21:00:00', '', '连衣裙', '3', 'Zs', '1');
INSERT INTO `product` VALUES ('6', '33', 'products/1/cs10006.jpg', '5', '0', '79', '2017-06-25 20:57:28', null, '粉嫩连衣裙', '4', 'Ls', '1');
INSERT INTO `product` VALUES ('7', '43', 'products/1/cs10007.jpg', '2', '0', '103', '2017-06-25 20:57:54', null, '时尚针织', '5', 'New', '1');
INSERT INTO `product` VALUES ('8', '34', 'products/1/cs10008.jpg', '3', '0', '79', '2017-06-25 20:58:48', null, '精选少女风', '6', 'Lgm', '1');
INSERT INTO `product` VALUES ('10', '23', 'products/1/cs10010.jpg', '9', '0', '99', '2017-06-25 20:59:32', null, '粉嫩少女裙', '9', 'JL', '1');
INSERT INTO `product` VALUES ('11', '24', 'products/1/cs10011.jpg', '6', '0', '87', '2017-06-25 20:59:58', null, '连衣裙', '10', 'Ll', '1');
INSERT INTO `product` VALUES ('12', '23', 'products/1/cs10012.jpg', '6', '0', '98', '2017-06-25 21:01:47', null, '运动装', '11', 'Ly', '1');
INSERT INTO `product` VALUES ('13', '16', 'products/1/cs10013.jpg', '5', '0', '67', '2017-06-25 21:02:12', null, '显瘦中长款连衣裙', '12', 'Uin', '1');
INSERT INTO `product` VALUES ('14', '21', 'products/1/cs10014.jpg', '3', '0', '97', '2017-06-25 21:02:43', null, '时尚宽松上衣', '13', 'Jli', '1');
INSERT INTO `product` VALUES ('15', '21', 'products/1/cs10015.jpg', '2', '0', '85', '2017-06-25 21:03:01', null, '夏季新款全麻条纹裙', '14', 'Ajk', '1');
INSERT INTO `product` VALUES ('16', '20', 'products/1/cs10016.jpg', '3', '0', '90', '2017-06-25 21:03:27', null, '夏季收腰中长修身', '15', 'Sdf', '1');
INSERT INTO `product` VALUES ('17', '27', 'products/1/cs10017.jpg', '1', '0', '77', '2017-06-25 21:03:48', null, '小短裙', '16', 'Zio', '1');
INSERT INTO `product` VALUES ('18', '36', 'products/1/cs10018.jpg', '2', '0', '86', '2017-06-25 21:04:26', null, '有袖蕾丝V领裙', '17', 'Asd', '1');
INSERT INTO `product` VALUES ('19', '19', 'products/1/cs10019.jpg', '2', '0', '89', '2017-06-25 21:04:44', null, '时尚宽松流行上衣', '18', 'Qaq', '1');
INSERT INTO `product` VALUES ('20', '12', 'products/1/cs10020.jpg', '2', '0', '35', '2017-06-25 21:05:05', null, '潮流T桖衫', '19', 'Uzi', '1');
INSERT INTO `product` VALUES ('21', '22', 'products/1/cs10021.jpg', '2', '0', '45', '2017-06-25 21:05:40', null, '潮流T桖衫', '20', 'Two', '1');
INSERT INTO `product` VALUES ('22', '11', 'products/1/cs10022.jpg', '3', '0', '25', '2017-06-25 21:05:58', null, '时尚长裙', '16', 'Zio', '1');
INSERT INTO `product` VALUES ('23', '12', 'products/1/cs10023.jpg', '4', '0', '34', '2017-06-25 21:06:39', null, '露肩时尚衣', '8', 'Ybh', '1');
INSERT INTO `product` VALUES ('24', '15', 'products/1/cs10024.jpg', '8', '0', '33', '2017-06-25 21:07:03', null, '收身紧腰小裙', '1', 'Yzh', '1');
INSERT INTO `product` VALUES ('25', '24', 'products/1/cs10025.jpg', '4', '0', '70', '2017-06-25 21:07:29', null, '时尚外搭', '3', 'Zs', '1');
INSERT INTO `product` VALUES ('27', '30', 'products/1/cs20001.jpg', '1', '0', '120', '2017-06-25 21:09:32', null, '冬季新款羽绒服', '6', 'Lgm', '2');
INSERT INTO `product` VALUES ('28', '45', 'products/1/cs20002.jpg', '1', '0', '137', '2017-06-25 21:09:56', null, '假毛领时尚新款羽绒服', '16', 'Zio', '2');
INSERT INTO `product` VALUES ('29', '48', 'products/1/cs20003.jpg', '1', '0', '143', '2017-06-25 21:10:17', null, '进口无帽貂皮外套', '6', 'Lgm', '2');
INSERT INTO `product` VALUES ('30', '61', 'products/1/cs20004.jpg', '1', '0', '215', '2017-06-25 21:10:42', null, '进口无帽貂皮外套', '1', 'Yzh', '2');
INSERT INTO `product` VALUES ('31', '35', 'products/1/cs20005.jpg', '2', '0', '187', '2017-06-25 21:11:12', null, '修身时尚', '8', 'Ybh', '2');
INSERT INTO `product` VALUES ('32', '34', 'products/1/cs20006.jpg', '1', '0', '156', '2017-06-25 21:11:36', null, '冬季时尚外套', '15', 'Sdf', '2');
INSERT INTO `product` VALUES ('33', '65', 'products/1/cs20008.jpg', '1', '0', '218', '2017-06-25 21:11:58', null, '纯花色冬季外搭', '6', 'Lgm', '2');
INSERT INTO `product` VALUES ('34', '26', 'products/1/cs20009.jpg', '1', '0', '179', '2017-06-25 21:12:19', null, '冬季粉嫩外套', '1', 'Yzh', '2');
INSERT INTO `product` VALUES ('35', '34', 'products/1/cs20010.jpg', '1', '0', '189', '2017-06-25 21:12:41', null, '皇冠天鹅绒水貂皮大衣', '8', 'Ybh', '2');
INSERT INTO `product` VALUES ('36', '31', 'products/1/cs20011.jpg', '1', '0', '95', '2017-06-25 21:13:00', null, '学生党羽绒', '4', 'Ls', '2');
INSERT INTO `product` VALUES ('37', '47', 'products/1/cs20012.jpg', '1', '0', '289', '2017-06-25 21:13:21', null, '学生党羽绒服', '3', 'Zs', '2');
INSERT INTO `product` VALUES ('39', '27', 'products/1/cs20013.jpg', '1', '0', '177', '2017-07-01 21:14:08', null, '冬季外套', '4', 'Ls', '2');
INSERT INTO `product` VALUES ('40', '32', 'products/1/cs20014.jpg', '1', '0', '219', '2017-06-25 21:14:30', null, '时尚潮流羽绒服', '2', 'Abc', '2');
INSERT INTO `product` VALUES ('42', '43', 'products/1/cs30001.png', '1', '0', '156', '2017-06-25 21:22:58', null, '毛呢大衣', '6', 'Lgm', '3');
INSERT INTO `product` VALUES ('43', '35', 'products/1/cs30002.png', '3', '0', '167', '2017-06-25 21:24:04', null, '毛呢大衣', '2', 'Abc', '3');
INSERT INTO `product` VALUES ('44', '44', 'products/1/cs30003.png', '4', '0', '165', '2017-06-25 21:25:17', null, '毛呢大衣', '16', 'Zio', '3');
INSERT INTO `product` VALUES ('45', '12', 'products/1/cs30004.png', '1', '0', '134', '2017-06-25 21:26:23', null, '毛呢大衣', '8', 'Ybh', '3');
INSERT INTO `product` VALUES ('46', '34', 'products/1/cs30005.png', '2', '0', '156', '2017-06-25 21:27:28', null, '毛呢大衣', '3', 'Zs', '3');
INSERT INTO `product` VALUES ('47', '23', 'products/1/cs30006.png', '1', '0', '132', '2017-06-25 21:28:01', null, '毛呢大衣', '19', 'Uzi', '3');
INSERT INTO `product` VALUES ('48', '34', 'products/1/cs30007.png', '2', '0', '155', '2017-06-25 21:28:44', null, '毛呢大衣', '19', 'Uzi', '3');
INSERT INTO `product` VALUES ('49', '45', 'products/1/cs30008.png', '2', '0', '133', '2017-06-25 21:30:21', null, '毛呢大衣', '2', 'Abc', '3');
INSERT INTO `product` VALUES ('50', '35', 'products/1/cs30009.png', '2', '0', '167', '2017-06-25 21:30:40', null, '毛呢大衣', '15', 'Sdf', '3');
INSERT INTO `product` VALUES ('51', '20', 'products/1/cs30010.png', '2', '0', '120', '2017-06-25 21:30:59', null, '毛呢大衣', '10', 'Ll', '3');
INSERT INTO `product` VALUES ('53', '30', 'products/1/cs40002.png', '2', '0', '190', '2017-06-25 21:31:57', null, '街边时尚风', '8', 'Ybh', '4');
INSERT INTO `product` VALUES ('54', '45', 'products/1/cs40003.png', '4', '0', '132', '2017-06-25 21:33:18', null, '街边时尚风', '17', 'Asd', '4');
INSERT INTO `product` VALUES ('55', '26', 'products/1/cs40004.jpg', '2', '0', '167', '2017-06-25 21:33:48', null, '街边时尚风', '16', 'Zio', '4');
INSERT INTO `product` VALUES ('56', '78', 'products/1/cs40005.png', '2', '0', '412', '2017-06-25 21:36:13', null, '街边时尚风', '1', 'Yzh', '4');
INSERT INTO `product` VALUES ('57', '90', 'products/1/cs40014.jpg', '22', '0', '340', '2017-06-25 21:37:32', null, '街边时尚风', '17', 'Asd', '4');
INSERT INTO `product` VALUES ('58', '87', 'products/1/cs40006.png', '2', '1', '170', '2017-06-25 21:38:00', null, '街边时尚风', '16', 'Zio', '4');
INSERT INTO `product` VALUES ('59', '70', 'products/1/cs40007.png', '2', '0', '120', '2017-06-25 21:38:34', null, '街边时尚风', '4', 'Ls', '4');
INSERT INTO `product` VALUES ('69', '35', 'products/1/cs40008.png', '2', '0', '230', '2017-06-25 21:39:13', null, '街边时尚风', '9', 'JL', '4');
INSERT INTO `product` VALUES ('70', '20', 'products/1/cs40009.png', '2', '0', '130', '2017-06-25 21:39:47', null, '街边时尚风', '19', 'Uzi', '4');
INSERT INTO `product` VALUES ('71', '20', 'products/1/cs40010.png', '2', '0', '90', '2017-06-25 21:40:37', null, '街边时尚风', '2', 'Abc', '4');
INSERT INTO `product` VALUES ('72', '30', 'products/1/cs40011.png', '3', '0', '180', '2017-06-25 21:41:17', null, '街边时尚风', '19', 'Uzi', '4');
INSERT INTO `product` VALUES ('73', '40', 'products/1/cs40012.jpg', '1', '0', '120', '2017-06-25 21:41:46', null, '街边时尚风', '10', 'Ll', '4');
INSERT INTO `product` VALUES ('74', '60', 'products/1/cs40013.jpg', '2', '0', '220', '2017-06-25 21:42:35', '', '街边时尚风', '6', 'Lgm', '4');
INSERT INTO `product` VALUES ('76', '40', 'products/1/cs50001.png', '2', '0', '130', '2017-06-25 21:45:47', null, '街边时尚风', '17', 'Asd', '5');
INSERT INTO `product` VALUES ('77', '50', 'products/1/cs50002.png', '2', '0', '240', '2017-06-25 21:47:03', null, '精品流行男装', '2', 'Abc', '5');
INSERT INTO `product` VALUES ('78', '70', 'products/1/cs50003.png', '2', '0', '200', '2017-06-25 21:47:32', null, '精品流行男装', '10', 'Ll', '5');
INSERT INTO `product` VALUES ('79', '60', 'products/1/cs50004.png', '2', '0', '180', '2017-06-25 21:48:26', null, '精品流行男装', '3', 'Zs', '5');
INSERT INTO `product` VALUES ('80', '80', 'products/1/cs50005.png', '1', '0', '280', '2017-06-25 21:48:54', null, '精品流行男装', '4', 'Ls', '5');
INSERT INTO `product` VALUES ('81', '30', 'products/1/cs50006.png', '2', '0', '120', '2017-06-25 21:49:49', '', '精品流行男装', '15', 'Sdf', '5');
INSERT INTO `product` VALUES ('82', '40', 'products/1/cs50007.png', '1', '0', '120', '2017-06-25 21:50:30', null, '精品流行男装', '16', 'Zio', '5');
INSERT INTO `product` VALUES ('83', '79', 'products/1/cs50008.png', '1', '0', '230', '2017-06-25 21:50:57', null, '精品流行男装', '13', 'Jli', '5');
INSERT INTO `product` VALUES ('84', '30', 'products/1/cs50009.png', '2', '0', '130', '2017-06-25 21:52:25', null, '精品流行男装', '17', 'Asd', '5');
INSERT INTO `product` VALUES ('85', '79', 'products/1/cs50010.png', '1', '0', '220', '2017-06-25 21:52:56', null, '精品流行男装', '13', 'Jli', '5');
INSERT INTO `product` VALUES ('86', '60', 'products/1/cs50011.png', '2', '0', '179', '2017-06-25 21:53:44', null, '精品流行男装', '2', 'Abc', '5');
INSERT INTO `product` VALUES ('87', '40', 'products/1/cs50012.jpg', '1', '0', '180', '2017-06-25 21:54:25', '', '精品流行男装', '13', 'Jli', '5');
INSERT INTO `product` VALUES ('95', '39', 'products/1/cs60001.png', '1', '0', '230', '2017-06-25 21:55:38', null, '精选时尚潮流帽衫', '4', 'Ls', '6');
INSERT INTO `product` VALUES ('96', '30', 'products/1/cs60002.png', '2', '0', '170', '2017-06-25 21:55:57', null, null, '11', 'Ly', '6');
INSERT INTO `product` VALUES ('97', '29', 'products/1/cs60003.png', '1', '0', '198', '2017-06-25 21:56:19', null, '精选时尚潮流帽衫', '16', 'Zio', '6');
INSERT INTO `product` VALUES ('98', '37', 'products/1/cs60004.png', '10', '0', '168', '2017-06-25 21:56:41', null, '精选时尚潮流帽衫', '8', 'Ybh', '6');
INSERT INTO `product` VALUES ('99', '35', 'products/1/cs60005.png', '12', '0', '185', '2017-06-25 21:57:02', null, '精选时尚潮流帽衫', '1', 'Yzh', '6');
INSERT INTO `product` VALUES ('100', '20', 'products/1/cs60006.png', '5', '0', '130', '2017-06-25 21:57:38', null, '精选时尚潮流帽衫', '17', 'Asd', '6');
INSERT INTO `product` VALUES ('101', '36', 'products/1/cs60007.png', '3', '0', '176', '2017-06-25 21:58:20', null, '精选时尚潮流帽衫', '6', 'Lgm', '6');
INSERT INTO `product` VALUES ('102', '30', 'products/1/cs60008.png', '3', '0', '189', '2017-06-25 21:59:04', null, null, '3', 'Zs', '6');
INSERT INTO `product` VALUES ('103', '56', 'products/1/cs60009.png', '2', '0', '156', '2017-06-25 21:59:25', null, '精选时尚潮流帽衫', '4', 'Ls', '6');
INSERT INTO `product` VALUES ('104', '36', 'products/1/cs60010.png', '2', '0', '166', '2017-06-25 21:59:51', null, '精选时尚潮流帽衫', '11', 'Ly', '6');
INSERT INTO `product` VALUES ('120', '100', 'products/1/cs70001.png', '8', '0', '450', '2017-06-25 22:01:25', null, '冬季新款羽绒服', '16', 'Zio', '7');
INSERT INTO `product` VALUES ('121', '120', 'products/1/cs70002.png', '2', '0', '300', '2017-06-25 22:03:29', null, '冬季新款羽绒服', '1', 'Yzh', '7');
INSERT INTO `product` VALUES ('122', '80', 'products/1/cs70003.png', '2', '0', '240', '2017-06-25 22:04:24', null, '冬季新款羽绒服', '2', 'Abc', '7');
INSERT INTO `product` VALUES ('123', '90', 'products/1/cs70004.png', '2', '0', '340', '2017-06-25 22:05:06', null, '冬季新款羽绒服', '19', 'Uzi', '7');
INSERT INTO `product` VALUES ('124', '80', 'products/1/cs70005.png', '1', '0', '280', '2017-06-25 22:05:31', null, '冬季新款羽绒服', '3', 'Zs', '7');
INSERT INTO `product` VALUES ('125', '80', 'products/1/cs70006.png', '2', '0', '230', '2017-06-25 22:06:08', null, '冬季新款羽绒服', '2', 'Abc', '7');
INSERT INTO `product` VALUES ('126', '50', 'products/1/cs70007.jpg', '1', '0', '450', '2017-06-25 22:06:48', null, '冬季新款羽绒服', '1', 'Yzh', '7');
INSERT INTO `product` VALUES ('127', '70', 'products/1/cs70008.jpg', '1', '0', '300', '2017-06-25 22:07:45', null, '冬季新款羽绒服', '8', 'Ybh', '7');
INSERT INTO `product` VALUES ('128', '40', 'products/1/cs70012.jpg', '1', '0', '400', '2017-06-25 22:08:17', null, '冬季新款羽绒服', '16', 'Zio', '7');
INSERT INTO `product` VALUES ('129', '35', 'products/1/cs70009.png', '2', '0', '350', '2017-06-25 22:08:44', null, '冬季新款羽绒服', '14', 'Ajk', '7');
INSERT INTO `product` VALUES ('130', '50', 'products/1/cs70010.png', '2', '0', '280', '2017-06-25 22:09:21', null, '冬季新款羽绒服', '2', 'Abc', '7');
INSERT INTO `product` VALUES ('131', '25', 'products/1/cs70011.jpg', '2', '0', '220', '2017-06-25 22:09:49', null, '冬季新款羽绒服', '4', 'Ls', '7');
INSERT INTO `product` VALUES ('140', '20', 'products/2/10001.png', '2', '0', '60', '2017-06-25 22:49:05', null, '毛靴', '2', 'Abc', '9');
INSERT INTO `product` VALUES ('141', '25', 'products/2/10002.png', '1', '0', '130', '2017-06-25 22:49:45', null, '长靴', '8', 'Ybh', '9');
INSERT INTO `product` VALUES ('142', '23', 'products/2/10003.png', '1', '0', '70', '2017-06-25 22:50:10', null, '短靴', '11', 'Ly', '9');
INSERT INTO `product` VALUES ('143', '32', 'products/2/10004.png', '1', '0', '80', '2017-06-25 22:50:32', null, '皮靴', '13', 'Jli', '9');
INSERT INTO `product` VALUES ('144', '20', 'products/2/10005.png', '2', '0', '75', '2017-06-25 22:51:15', null, '皮靴', '15', 'Sdf', '9');
INSERT INTO `product` VALUES ('145', '28', 'products/2/10006.png', '1', '0', '80', '2017-06-25 22:51:38', null, '皮靴', '19', 'Uzi', '9');
INSERT INTO `product` VALUES ('146', '25', 'products/2/10007.png', '2', '0', '60', '2017-06-25 22:52:06', null, '防滑保暖靴', '17', 'Asd', '9');
INSERT INTO `product` VALUES ('147', '30', 'products/2/10008.png', '2', '0', '120', '2017-06-25 22:52:35', null, '时尚潮流精品靴', '14', 'Ajk', '9');
INSERT INTO `product` VALUES ('148', '25', 'products/2/10009.png', '1', '0', '95', '2017-06-25 22:53:06', '', '时尚潮流精品靴', '4', 'Ls', '9');
INSERT INTO `product` VALUES ('149', '25', 'products/2/10010.jpg', '2', '1', '150', '2017-06-25 22:53:35', null, '时尚潮流精品靴', '19', 'Uzi', '9');
INSERT INTO `product` VALUES ('160', '41', 'products/2/200101.jpg', '1', '1', '210', '2017-06-25 22:56:30', null, '男士新潮流运动鞋', null, null, '10');
INSERT INTO `product` VALUES ('161', '29', 'products/2/200102.jpg', '1', '1', '105', '2017-06-25 22:57:07', null, '男士新潮流运动鞋', '14', 'Ajk', '10');
INSERT INTO `product` VALUES ('162', '40', 'products/2/200103.jpg', '1', '0', '140', '2017-06-25 22:58:01', null, '男士新潮流运动鞋', '2', 'Abc', '10');
INSERT INTO `product` VALUES ('170', '20', 'products/2/400101.jpg', '2', '0', '80', '2017-06-25 22:58:47', null, '潮流女包', '19', 'Uzi', '11');
INSERT INTO `product` VALUES ('171', '25', 'products/2/400102.jpg', '2', '1', '65', '2017-07-01 22:59:58', null, '潮流女包', '16', 'Zio', '11');
INSERT INTO `product` VALUES ('172', '15', 'products/2/400103.jpg', '2', '1', '50', '2017-06-25 23:00:46', null, '潮流女包', '6', 'Lgm', '11');
INSERT INTO `product` VALUES ('180', '15', 'products/2/300101.jpg', '1', '0', '70', '2017-06-25 23:01:24', null, '商用男包', '2', 'Abc', '12');
INSERT INTO `product` VALUES ('181', '5', 'products/2/300102.jpg', '2', '0', '35', '2017-06-25 23:01:50', null, '小包', '4', 'Ls', '12');
INSERT INTO `product` VALUES ('182', '25', 'products/2/300103.jpg', '1', '0', '105', '2017-06-25 23:02:45', null, '商用男包', '9', 'JL', '12');
INSERT INTO `product` VALUES ('190', '18', 'products/2/500101.png', '2', '0', '98', '2017-06-25 23:03:18', null, '户外眼镜', '2', 'Abc', '13');
INSERT INTO `product` VALUES ('191', '30', 'products/2/500102.jpg', '2', '0', '270', '2017-06-25 23:04:07', null, '登山鞋', '1', 'Yzh', '13');
INSERT INTO `product` VALUES ('201', '60', 'products/3/100101.jpg', '2', '1', '280', '2017-07-05 16:35:16', null, '少女风四件套', '8', 'Ybh', '37');
INSERT INTO `product` VALUES ('202', '50', 'products/3/100102.jpg', '3', '0', '190', '2017-06-26 16:36:08', null, '家用四件套', '9', 'JL', '37');
INSERT INTO `product` VALUES ('203', '19', 'products/3/200101.jpg', '2', '1', '45', '2017-06-26 16:36:56', null, '雨伞', '16', 'Zio', '15');
INSERT INTO `product` VALUES ('204', '12', 'products/3/200102.jpg', '1', '0', '35', '2017-06-26 16:37:27', null, '雨伞', '6', 'Lgm', '15');
INSERT INTO `product` VALUES ('210', '35', 'products/3/300101.jpg', '2', '1', '120', '2017-06-26 16:41:10', null, '熨斗', '4', 'Ls', '16');
INSERT INTO `product` VALUES ('220', '10', 'products/3/400101.jpg', '10', '0', '30', '2017-06-26 16:42:23', null, null, '3', 'Zs', '17');
INSERT INTO `product` VALUES ('221', '10', 'products/3/400102.jpg', '20', '0', '27', '2017-06-26 16:43:33', null, '喷剂', '10', 'Ll', '17');
INSERT INTO `product` VALUES ('230', '1', 'products/3/500101.jpg', '5', '1', '5', '2017-06-26 16:44:24', null, '针线包', '3', 'Zs', '18');
INSERT INTO `product` VALUES ('231', '40', 'products/3/500102.jpg', '2', '0', '120', '2017-06-26 16:45:10', null, '缝纫机', '11', 'Ly', '18');
INSERT INTO `product` VALUES ('251', '60', 'products/4/100101.jpg', '2', '0', '180', '2017-06-26 16:48:13', null, '时尚纯银吊坠', '8', 'Ybh', '20');
INSERT INTO `product` VALUES ('252', '70', 'products/4/100102.jpg', '2', '1', '230', '2017-07-01 16:51:57', null, '纯银手镯', '18', 'Qaq', '20');
INSERT INTO `product` VALUES ('253', '45', 'products/4/100103.jpg', '2', '1', '180', '2017-06-26 16:56:45', null, '时尚纯银吊坠', '18', 'Qaq', '20');
INSERT INTO `product` VALUES ('254', '25', 'products/4/100104.jpg', '1', '0', '50', '2017-06-26 16:58:22', null, '纯银戒指', '19', 'Uzi', '20');
INSERT INTO `product` VALUES ('255', '28', 'products/4/100105.jpg', '2', '0', '80', '2017-06-26 16:59:27', null, '小孩纯银项圈', '20', 'Two', '20');
INSERT INTO `product` VALUES ('260', '9', 'products/4/200101.jpg', '10', '0', '20', '2017-06-26 17:00:47', null, '潮流发带', '20', 'Two', '21');
INSERT INTO `product` VALUES ('261', '5', 'products/4/200102.jpg', '20', '0', '15', '2017-06-26 17:01:27', null, '时尚耳坠', '20', 'Two', '21');
INSERT INTO `product` VALUES ('262', '3', 'products/4/200103.jpg', '5', '0', '10', '2017-06-26 17:02:21', null, '潮流耳坠', '8', 'Ybh', '21');
INSERT INTO `product` VALUES ('263', '6', 'products/4/200104.jpg', '10', '0', '18', '2017-06-26 17:02:51', null, '时尚饰品', '15', 'Sdf', '21');
INSERT INTO `product` VALUES ('270', '30', 'products/4/300101.jpg', '2', '0', '120', '2017-06-26 17:03:28', null, '进口时尚手表', '16', 'Zio', '22');
INSERT INTO `product` VALUES ('271', '40', 'products/4/300102.jpg', '2', '1', '150', '2017-06-26 17:04:08', null, '时尚情侣表', '18', 'Qaq', '22');
INSERT INTO `product` VALUES ('272', '30', 'products/4/300103.jpg', '1', '0', '150', '2017-06-26 17:04:42', null, '小清新手表', '20', 'Two', '22');
INSERT INTO `product` VALUES ('280', '15', 'products/4/400101.jpg', '3', '0', '30', '2017-06-26 17:05:21', null, '眼镜饰品', '17', 'Asd', '23');
INSERT INTO `product` VALUES ('281', '20', 'products/4/400102.jpg', '3', '1', '65', '2017-07-01 17:06:15', null, '小清新眼镜', '4', 'Ls', '23');
INSERT INTO `product` VALUES ('282', '5', 'products/4/400103.jpg', '3', '0', '20', '2017-06-26 17:06:33', null, '小清新眼镜', '13', 'Jli', '23');
INSERT INTO `product` VALUES ('301', '10', 'products/5/100101.jpg', '4', '1', '25', '2017-06-26 17:07:54', null, '时尚潮流手机壳', '19', 'Uzi', '24');
INSERT INTO `product` VALUES ('302', '7', 'products/5/100102.jpg', '3', '0', '18', '2017-06-26 17:08:35', null, '时尚潮流手机壳', '11', 'Ly', '24');
INSERT INTO `product` VALUES ('303', '3', 'products/5/100103.jpg', '2', '0', '10', '2017-06-26 17:08:59', null, '手机钢化模', '16', 'Zio', '24');
INSERT INTO `product` VALUES ('304', '300', 'products/5/100104.jpg', '1', '0', '1098', '2017-06-12 17:09:37', null, '美图手机', '17', 'Asd', '24');
INSERT INTO `product` VALUES ('305', '399', 'products/5/100105.jpg', '1', '0', '999', '2017-06-26 17:10:33', null, '小米手机', '10', 'Ll', '24');
INSERT INTO `product` VALUES ('311', '200', 'products/5/200101.jpg', '2', '0', '670', '2017-06-26 17:11:16', null, '平板', '14', 'Ajk', '25');
INSERT INTO `product` VALUES ('312', '120', 'products/5/200102.jpg', '1', '0', '500', '2017-06-26 17:12:02', null, '平板', '9', 'JL', '25');
INSERT INTO `product` VALUES ('313', '410', 'products/5/200103.jpg', '1', '0', '799', '2017-06-26 17:12:34', null, '平板', '8', 'Ybh', '25');
INSERT INTO `product` VALUES ('320', '400', 'products/5/300101.jpg', '2', '0', '1200', '2017-06-26 17:13:54', null, '电脑', '14', 'Ajk', '26');
INSERT INTO `product` VALUES ('321', '800', 'products/5/300102.jpg', '1', '0', '2500', '2017-06-26 17:14:40', null, '电脑', '13', 'Jli', '26');
INSERT INTO `product` VALUES ('330', '700', 'products/5/400101.jpg', '1', '0', '2800', '2017-06-26 17:15:12', null, '佳能照相机', '4', 'Ls', '27');
INSERT INTO `product` VALUES ('331', '600', 'products/5/400102.jpg', '2', '0', '1500', '2017-06-26 17:15:35', null, '索尼照相机', '10', 'Ll', '27');
INSERT INTO `product` VALUES ('332', '670', 'products/5/400103.jpg', '1', '0', '2600', '2017-06-26 17:16:12', null, '佳能照相机', '3', 'Zs', '27');
INSERT INTO `product` VALUES ('333', '400', 'products/5/400104.jpg', '1', '0', '1500', '2017-06-26 17:16:44', null, '佳能照相机', '17', 'Asd', '27');
INSERT INTO `product` VALUES ('401', '300', 'products/6/100101.jpg', '2', '0', '1800', '2017-06-26 17:18:47', null, '微波炉', '4', 'Ls', '29');
INSERT INTO `product` VALUES ('402', '270', 'products/6/100102.jpg', '2', '0', '1500', '2017-06-26 17:20:08', null, '电饭煲', '1', 'Yzh', '29');
INSERT INTO `product` VALUES ('410', '20', 'products/6/200201.jpg', '1', '0', '60', '2017-06-26 17:21:53', null, '电吹风', '18', 'Qaq', '30');
INSERT INTO `product` VALUES ('411', '25', 'products/6/200202.jpg', '1', '0', '120', '2017-06-26 17:22:49', null, '电热水壶', '18', 'Qaq', '30');
INSERT INTO `product` VALUES ('413', '20', 'products/6/300302.jpg', '2', '0', '65', '2017-06-26 17:23:42', '', '全自动按摩盆', '3', 'Zs', '30');
INSERT INTO `product` VALUES ('414', '27', 'products/6/300303.jpg', '1', '0', '120', '2017-06-26 17:24:11', null, '家用电子秤', '20', 'Two', '30');
INSERT INTO `product` VALUES ('421', '150', 'products/6/400401.jpg', '1', '0', '888', '2017-06-26 17:25:00', null, '全自动洗衣机', '16', 'Zio', '28');
INSERT INTO `product` VALUES ('422', '430', 'products/6/400402.jpg', '1', '0', '1300', '2017-06-26 17:25:37', null, '空调', '8', 'Ybh', '28');
INSERT INTO `product` VALUES ('423', '790', 'products/6/400403.jpg', '1', '0', '2500', '2017-06-26 17:26:07', null, '双门电冰箱', '12', 'Uin', '28');
INSERT INTO `product` VALUES ('424', '400', 'products/6/400404.jpg', '1', '0', '1600', '2017-06-26 17:26:40', null, '家用电冰箱', '12', 'Uin', '28');
INSERT INTO `product` VALUES ('431', '5', 'products/6/500501.jpg', '2', '0', '20', '2017-06-26 17:27:37', null, '家用小桌', '20', 'Two', '32');
INSERT INTO `product` VALUES ('432', '25', 'products/6/500502.jpg', '1', '1', '70', '2017-06-26 17:28:01', '', '时尚小桌', '15', 'Sdf', '32');
INSERT INTO `product` VALUES ('433', '23', 'products/6/500503.jpg', '1', '0', '65', '2017-06-26 17:28:36', null, '时尚小桌', '3', 'Zs', '32');
INSERT INTO `product` VALUES ('434', '35', 'products/6/500504.jpg', '1', '0', '80', '2017-06-26 17:29:04', null, '摇摇椅', '9', 'JL', '32');
INSERT INTO `product` VALUES ('501', '6', 'products/7/100101.jpg', '10', '0', '15', '2017-06-26 17:30:04', null, '休闲小食', '2', 'Abc', '33');
INSERT INTO `product` VALUES ('502', '3', 'products/7/100102.jpg', '20', '0', '8', '2017-06-26 17:30:54', null, '休闲小食', '12', 'Uin', '33');
INSERT INTO `product` VALUES ('503', '6', 'products/7/100103.jpg', '29', '0', '15', '2017-06-26 17:31:28', null, '休闲小食', '3', 'Zs', '33');
INSERT INTO `product` VALUES ('504', '14', 'products/7/100104.jpg', '10', '0', '20', '2017-06-26 17:31:51', null, '休闲小食', '20', 'Two', '33');
INSERT INTO `product` VALUES ('505', '20', 'products/7/100105.jpg', '1', '1', '35', '2017-06-26 17:32:36', null, '休闲小食', '16', 'Zio', '33');
INSERT INTO `product` VALUES ('506', '17', 'products/7/100106.jpg', '5', '0', '30', '2017-06-26 17:33:06', null, '休闲小食', '10', 'Ll', '33');
INSERT INTO `product` VALUES ('507', '8', 'products/7/100107.jpg', '10', '0', '15', '2017-06-26 17:33:30', null, '休闲小食', '4', 'Ls', '33');
INSERT INTO `product` VALUES ('508', '22', 'products/7/100108.jpg', '2', '0', '45', '2017-06-26 17:33:57', null, '休闲小食', '18', 'Qaq', '33');
INSERT INTO `product` VALUES ('511', '15', 'products/7/200101.jpg', '2', '0', '55', '2017-06-26 17:34:25', null, '精选好茶', '2', 'Abc', '34');
INSERT INTO `product` VALUES ('512', '55', 'products/7/200102.jpg', '5', '0', '140', '2017-06-26 17:34:53', null, '电子烟', '1', 'Yzh', '34');
INSERT INTO `product` VALUES ('513', '21', 'products/7/200103.jpg', '7', '0', '65', '2017-05-01 17:35:13', null, '龙井瓶', '14', 'Ajk', '34');
INSERT INTO `product` VALUES ('514', '39', 'products/7/200104.jpg', '2', '0', '89', '2017-05-01 17:35:34', null, '装茶茶', '20', 'Two', '34');
INSERT INTO `product` VALUES ('515', '35', 'products/7/200105.jpg', '2', '1', '79', '2017-05-01 17:36:01', null, null, '3', 'Zs', '34');
INSERT INTO `product` VALUES ('516', '21', 'products/7/200106.jpg', '1', '0', '53', '2017-06-26 17:36:23', null, '闺蜜酒', '9', 'JL', '34');
INSERT INTO `product` VALUES ('517', '15', 'products/7/200107.jpg', '2', '0', '35', '2017-06-26 17:36:59', null, '棒棒糖', '18', 'Qaq', '34');
INSERT INTO `product` VALUES ('518', '41', 'products/7/200108.jpg', '2', '0', '85', '2017-05-01 17:37:27', null, null, '4', 'Ls', '34');
INSERT INTO `product` VALUES ('519', '25', 'products/7/200109.jpg', '2', '0', '75', '2017-05-01 17:37:48', null, '杜康酒', '20', 'Two', '34');
INSERT INTO `product` VALUES ('531', '9', 'products/7/300101.jpg', '5', '0', '20', '2017-05-31 17:38:13', null, '蚬子', '16', 'Zio', '35');
INSERT INTO `product` VALUES ('532', '30', 'products/7/300102.jpg', '2', '0', '55', '2017-06-26 17:38:46', null, '牛肉', '18', 'Qaq', '35');
INSERT INTO `product` VALUES ('541', '44', 'products/7/400101.jpg', '2', '0', '85', '2017-05-01 17:39:34', null, '豆油', '14', 'Ajk', '36');
INSERT INTO `product` VALUES ('542', '14', 'products/7/400102.jpg', '4', '1', '35', '2017-06-26 17:39:52', null, '调味套装', '10', 'Ll', '36');
INSERT INTO `product` VALUES ('543', '35', 'products/7/200110.jpg', '2', '0', '89', '2017-04-05 09:51:31', null, '酱香酒', '12', 'Uin', null);
INSERT INTO `product` VALUES ('544', null, null, null, null, null, null, null, null, '20', 'Two', null);


--
-- 表的结构 `ticket`
--

CREATE TABLE `ticket` (
  `tid` int(11) NOT NULL COMMENT '优惠券编号',
  `privilege` double NOT NULL COMMENT '优惠券金额',
  `consume` double NOT NULL COMMENT '满减金额',
  `useTime` datetime NOT NULL COMMENT '使用期限',
  `cid` int(11) NOT NULL COMMENT '类别编号',
  `pacid` int(11) NOT NULL COMMENT '卡包编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='优惠券表';

--
-- 转存表中的数据 `ticket`
--

INSERT INTO `ticket` (`tid`, `privilege`, `consume`, `useTime`, `cid`, `pacid`) VALUES
(1, 20, 199, '2016-12-27 00:00:00', 2, 1),
(2, 20, 1000, '2016-12-27 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `age` int(5) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `code` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `user`
--
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `addr` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `money` float NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `vipFlag` tinyint(1) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'as', '21', '001', 

'123@qq.com', '1500', 'yangyi', '123', '1234', '1', 

'Yzh', '1');
INSERT INTO `user` VALUES ('2', 'asd', '22', '002', 

'1234@qq.com', '200', 'MRwang', '123', '12345', '1', 

'Abc', '1');
INSERT INTO `user` VALUES ('3', 'asdf', '21', '003', 

'12345@qq.com', '0', 'Mrszhang', '123', '12345', '1', 

'Zs', '1');
INSERT INTO `user` VALUES ('4', 'asdf', '21', '004', 

'123456@qq.com', '0', 'Mrsli', '123', '12345', '1', 

'Ls', '1');
INSERT INTO `user` VALUES ('5', 'qwe', '1', '005', 

'email@qq.com', '0', 'Mrsqi', '123.', '100', '1', 

'New', '1');
INSERT INTO `user` VALUES ('6', 'kl', '20','112', 

'123456@qq.com', '0', 'Mrzhang', '1234', '111', '1', 

'Lgm', '0');
INSERT INTO `user` VALUES ('7', '8', '8', '007', 

'8@qq.com', '0', 'LISI', '1234', '8', '1', 'Ao', '0');
INSERT INTO `user` VALUES ('8', 'qw', '20', '112', 

'123456@qq.com', '0', 'Mrzhao', '1234', '112', '1', 

'Ybh', '0');
INSERT INTO `user` VALUES ('9', 'qwe', '20', '112', 

'123456@qq.com', '0', 'Mrqi', '1234', '1234', '1', 

'JL', '0');
INSERT INTO `user` VALUES ('10', 'asd', '20', '112', 

'123456@qq.com', '0', 'Mrli', '1233', '124', '1', 'Ll', 

'1');
INSERT INTO `user` VALUES ('11', 'sad', '20', '112', 

'123456@qq.com', '0', 'Mrluo', '1332', '31232', '1', 

'Lol', '0');
INSERT INTO `user` VALUES ('12', 'sad', '20', '112', 

'123456@qq.com', '0', 'yunduo', '4324', '3133', '1', 

'Uin', '0');
INSERT INTO `user` VALUES ('13', 'jkj', '20', '112', 

'123456@qq.com', '0', 'Mrjun', '4144', '1763', '1', 

'Jui', '1');
INSERT INTO `user` VALUES ('14', 'sda', '20','112', 

'123456@qq.com', '0', 'Mrskan', '12131', '6463', '1', 

'Aak', '0');
INSERT INTO `user` VALUES ('15', 'ddS', '20', '112', 

'123456@qq.com', '0', 'Mrssa', '123', '4241', '1', 

'Sdf', '0');
INSERT INTO `user` VALUES ('16', 'zxk', '20', '112', 

'123456@qq.com', '0', 'LIuna', '42332', '1212', '1', 

'Zio', '0');
INSERT INTO `user` VALUES ('17', 'axm', '20', '112', 

'123456@qq.com', '0', 'Liuning', '21312', '2321', '1', 

'Asd', '1');
INSERT INTO `user` VALUES ('18', 'nmnij', '20', '112', 

'123456@qq.com', '0', 'Liqiang', '31332', '4143', '1', 

'Qaq', '0');
INSERT INTO `user` VALUES ('19', 'nij', '20', '111', 

'123456@qq.com', '0', 'wangbo', '23213', '12312', '1', 

'Uzi', '0');
INSERT INTO `user` VALUES ('20', 'qwer', '2', '011', 

'two@qq.com', '0', 'lijun', '1234.', '1', '1', 'Two', 

'0');
INSERT INTO `user` VALUES ('21', 'asd', '21', '012', 

'12345@qq.com', '0', 'zhangsan', '123', '999', '1', 

'Aq', '0');
INSERT INTO `user` VALUES ('22', 'as', '11', '013', '123@qq.com', '0', 'w', '123', '12345', '1', 'Wange', '1');
--
-- 触发器 `user`
--
DELIMITER $$
CREATE TRIGGER `u_afterinsert` AFTER INSERT ON `user` FOR EACH ROW insert into wallet(uid) values (new.uid)
$$
DELIMITER ;


-- --------------------------------------------------------

--
-- 表的结构 `wallet`
--

CREATE TABLE `wallet` (
  `wid` int(11) NOT NULL,
  `money` float NOT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `wallet`
--

INSERT INTO `wallet` (`wid`, `money`, `uid`) VALUES
(1, 67575.5, 38),
(2, 663447, 39),
(3, 0, 40);

-- --------------------------------------------------------

--
-- 表的结构 `warn`
--

CREATE TABLE `warn` (
  `mid` int(5) NOT NULL DEFAULT '0',
  `minventory` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `warn`
--

INSERT INTO `warn` (`mid`, `minventory`) VALUES
(1, 50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminuser`
--
ALTER TABLE `adminuser`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `categorysecond`
--
ALTER TABLE `categorysecond`
  ADD PRIMARY KEY (`csid`),
  ADD KEY `FK936FCAF21DB1FD15` (`cid`);

--
-- Indexes for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD PRIMARY KEY (`itemid`),
  ADD KEY `FK_Renfrence` (`oid`),
  ADD KEY `FK_Renfrence` (`pid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`oid`),
  ADD KEY `FK_tk1pibf08nelmar48icf0w8jn` (`uid`);

--
-- Indexes for table `packet`
--
ALTER TABLE `packet`
  ADD PRIMARY KEY (`pacid`),
  ADD UNIQUE KEY `UK_th5acal46shrmg0fotogxoq3y` (`uid`),
  ADD KEY `FK_th5acal46shrmg0fotogxoq3y` (`uid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `FKED8DCCEFB9B74E02` (`csid`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`tid`),
  ADD UNIQUE KEY `UK_bveamlrms7iguexr6uteopdo9` (`cid`),
  ADD KEY `FK_bveamlrms7iguexr6uteopdo9` (`cid`),
  ADD KEY `FK_13jp9b8h01m4bimt122eyhtjj` (`pacid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`wid`),
  ADD UNIQUE KEY `UK_gd56wkq3b1wc4gd068p6iwsq` (`uid`);

--
-- Indexes for table `warn`
--
ALTER TABLE `warn`
  ADD PRIMARY KEY (`mid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `adminuser`
--
ALTER TABLE `adminuser`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `category`
--
ALTER TABLE `category`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `categorysecond`
--
ALTER TABLE `categorysecond`
  MODIFY `csid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- 使用表AUTO_INCREMENT `orderitem`
--
ALTER TABLE `orderitem`
  MODIFY `itemid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- 使用表AUTO_INCREMENT `orders`
--
ALTER TABLE `orders`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;
--
-- 使用表AUTO_INCREMENT `packet`
--
ALTER TABLE `packet`
  MODIFY `pacid` int(11) NOT NULL AUTO_INCREMENT COMMENT '卡包编号', AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- 使用表AUTO_INCREMENT `ticket`
--
ALTER TABLE `ticket`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT COMMENT '优惠券编号', AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- 使用表AUTO_INCREMENT `wallet`
--
ALTER TABLE `wallet`
  MODIFY `wid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 限制导出的表
--

--
-- 限制表 `categorysecond`
--
ALTER TABLE `categorysecond`
  ADD CONSTRAINT `FKRefrence` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`);

--
-- 限制表 `orderitem`
--
ALTER TABLE `orderitem`
  ADD CONSTRAINT `FK_Refrence` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`),
  ADD CONSTRAINT `FK_Refrence` FOREIGN KEY (`oid`) REFERENCES `orders` (`oid`);

--
-- 限制表 `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_Refrence` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`);

--
-- 限制表 `packet`
--
ALTER TABLE `packet`
  ADD CONSTRAINT `FK_Refrence` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`);

--
-- 限制表 `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `Refrence` FOREIGN KEY (`csid`) REFERENCES `categorysecond` (`csid`);

--
-- 限制表 `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `FK_Refrence` FOREIGN KEY (`pacid`) REFERENCES `packet` (`pacid`),
  ADD CONSTRAINT `FK_Refrence` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`);

--
-- 限制表 `wallet`
--
ALTER TABLE `wallet`
  ADD CONSTRAINT `wallet_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
