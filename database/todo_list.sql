/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : todo_list

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2014-01-23 22:01:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `mmem`
-- ----------------------------
DROP TABLE IF EXISTS `mmem`;
CREATE TABLE `mmem` (
  `id_mmem` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_mmem_cat` int(11) NOT NULL,
  `mmem_code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `sex` tinyint(4) DEFAULT NULL,
  `mmem_tit` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `lastname` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `address` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `email1` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `email2` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `mobile` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `comment` varchar(4000) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `id_create` int(10) unsigned NOT NULL DEFAULT '1',
  `dt_create` datetime NOT NULL,
  `id_update` int(10) unsigned NOT NULL DEFAULT '1',
  `dt_update` datetime NOT NULL,
  PRIMARY KEY (`id_mmem`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of mmem
-- ----------------------------
INSERT INTO `mmem` VALUES ('1', '3', 'ME570001', '1', '1', 'ดิษฐพงษ์ ', 'นิลนามะ', '1989-11-23', null, 'dittaphong@dn-soft.com', 'aostudio.nilnama@gmail.com', '0821428742', 'dnsoft', '21232f297a57a5a743894a0e4a801fc3', null, '1', '1', '2014-01-23 21:48:14', '1', '2014-01-23 21:48:16');

-- ----------------------------
-- Table structure for `mmem_cat`
-- ----------------------------
DROP TABLE IF EXISTS `mmem_cat`;
CREATE TABLE `mmem_cat` (
  `id_mmem_cat` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mmem_cat_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_th` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(4000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `id_create` int(10) unsigned NOT NULL DEFAULT '1',
  `dt_create` datetime NOT NULL,
  `id_update` int(10) unsigned NOT NULL DEFAULT '1',
  `dt_update` datetime NOT NULL,
  PRIMARY KEY (`id_mmem_cat`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mmem_cat
-- ----------------------------
INSERT INTO `mmem_cat` VALUES ('1', 'M1001', 'MD', 'ที่ปรึกษาโครงการ', null, '1', '1', '2014-01-23 21:43:41', '1', '2014-01-23 21:43:41');
INSERT INTO `mmem_cat` VALUES ('2', 'M2001', 'PM', 'ผู้บริหารโครงการ', null, '1', '1', '2014-01-23 21:43:41', '1', '2014-01-23 21:43:41');
INSERT INTO `mmem_cat` VALUES ('3', 'M3001', 'SA', 'นักวิเคราห์ระบบ', null, '1', '1', '2014-01-23 21:43:41', '1', '2014-01-23 21:43:41');
INSERT INTO `mmem_cat` VALUES ('4', 'M4001', 'DEV', 'นักพัฒนาระบบ', null, '1', '1', '2014-01-23 21:43:41', '1', '2014-01-23 21:43:41');
INSERT INTO `mmem_cat` VALUES ('5', 'M5001', 'Programmer', 'โปรแกรมเมอร์', null, '1', '1', '2014-01-23 21:43:41', '1', '2014-01-23 21:43:41');

-- ----------------------------
-- Table structure for `mpri`
-- ----------------------------
DROP TABLE IF EXISTS `mpri`;
CREATE TABLE `mpri` (
  `id_mpri` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mpri_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_th` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  `id_create` int(10) DEFAULT NULL,
  `dt_create` datetime DEFAULT NULL,
  `id_update` int(10) DEFAULT NULL,
  `dt_update` datetime DEFAULT NULL,
  PRIMARY KEY (`id_mpri`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of mpri
-- ----------------------------
INSERT INTO `mpri` VALUES ('1', 'PR001', 'สำคัญมาก', 'High', null, '1', '1', '2014-01-23 21:26:46', '1', '2014-01-23 21:26:55');
INSERT INTO `mpri` VALUES ('2', 'PR002', 'ปกติ', 'Medium', null, '1', '1', '2014-01-23 21:26:48', '1', '2014-01-23 21:26:57');
INSERT INTO `mpri` VALUES ('3', 'PR003', 'ต่ำ', 'Low', null, '1', '1', '2014-01-23 21:26:51', '1', '2014-01-23 21:26:59');

-- ----------------------------
-- Table structure for `mpro`
-- ----------------------------
DROP TABLE IF EXISTS `mpro`;
CREATE TABLE `mpro` (
  `id_mpro` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mpro_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_th` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `exp_finish_date` date DEFAULT NULL,
  `close_date` date DEFAULT NULL,
  `comment` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  `id_create` int(10) DEFAULT NULL,
  `dt_create` datetime DEFAULT NULL,
  `id_update` int(10) DEFAULT NULL,
  `dt_update` datetime DEFAULT NULL,
  PRIMARY KEY (`id_mpro`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of mpro
-- ----------------------------
INSERT INTO `mpro` VALUES ('1', 'DN001', 'บันทึกการทำงาน', 'Todo List', 'dn-soft', '2014-01-21', '2014-02-15', null, null, '1', '1', '2014-01-23 21:33:19', '1', '2014-01-23 21:33:35');
INSERT INTO `mpro` VALUES ('2', 'DN002', 'บัญชีครัวเรือน', 'List Cash', 'dn-soft', null, null, null, null, '0', '1', '2014-01-23 21:33:23', '1', '2014-01-23 21:33:38');
INSERT INTO `mpro` VALUES ('3', 'DN003', 'ระบบวัดประสิทธิภาพการทำงาน', 'KPI', 'dn-soft', null, null, null, null, '0', '1', '2014-01-23 21:33:25', '1', '2014-01-23 21:33:40');

-- ----------------------------
-- Table structure for `msta`
-- ----------------------------
DROP TABLE IF EXISTS `msta`;
CREATE TABLE `msta` (
  `id_msta` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msta_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_th` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  `id_create` int(10) DEFAULT NULL,
  `dt_create` datetime DEFAULT NULL,
  `id_update` int(10) DEFAULT NULL,
  `dt_update` datetime DEFAULT NULL,
  PRIMARY KEY (`id_msta`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of msta
-- ----------------------------
INSERT INTO `msta` VALUES ('1', 'ST001', 'เปิด', 'Open', null, '1', '1', '2014-01-23 21:38:50', '1', '2014-01-23 21:38:50');
INSERT INTO `msta` VALUES ('2', 'ST002', 'เปลี่ยน', 'Resolved', null, '1', '1', '2014-01-23 21:38:50', '1', '2014-01-23 21:38:50');
INSERT INTO `msta` VALUES ('3', 'ST003', 'ปิด', 'Closed', null, '1', '1', '2014-01-23 21:38:50', '1', '2014-01-23 21:38:50');
INSERT INTO `msta` VALUES ('4', 'ST004', 'ยกเลิก', 'Cancelled', null, '1', '1', '2014-01-23 21:38:50', '1', '2014-01-23 21:38:50');
INSERT INTO `msta` VALUES ('5', 'ST005', 'ทำซ้ำ', 'Reopen', null, '1', '1', '2014-01-23 21:38:50', '1', '2014-01-23 21:38:50');

-- ----------------------------
-- Table structure for `tdesc`
-- ----------------------------
DROP TABLE IF EXISTS `tdesc`;
CREATE TABLE `tdesc` (
  `id_tdes` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_ttodo_hdr` int(10) DEFAULT NULL,
  `tdes_code` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tdes_date` date DEFAULT NULL,
  `description` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  `id_create` int(10) NOT NULL,
  `dt_create` datetime NOT NULL,
  `id_update` int(10) NOT NULL,
  `dt_update` datetime NOT NULL,
  PRIMARY KEY (`id_tdes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tdesc
-- ----------------------------

-- ----------------------------
-- Table structure for `ttodo_hdr`
-- ----------------------------
DROP TABLE IF EXISTS `ttodo_hdr`;
CREATE TABLE `ttodo_hdr` (
  `id_ttodo_hdr` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `todo_code` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `id_mpro` int(10) NOT NULL,
  `id_mpri` int(10) NOT NULL,
  `id_msta` int(10) NOT NULL,
  `id_mmem` int(10) NOT NULL,
  `exp_to_fin_date` datetime DEFAULT NULL,
  `cre_datetime` datetime DEFAULT NULL,
  `clo_datetime` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `comment` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_create` tinyint(10) NOT NULL,
  `dt_create` datetime NOT NULL,
  `id_update` datetime DEFAULT NULL,
  `dt_update` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_ttodo_hdr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ttodo_hdr
-- ----------------------------

-- ----------------------------
-- Table structure for `ttopic`
-- ----------------------------
DROP TABLE IF EXISTS `ttopic`;
CREATE TABLE `ttopic` (
  `id_ttopic` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_ttodo_hdr` int(10) DEFAULT NULL,
  `topic_code` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `topic_date` date DEFAULT NULL,
  `topic` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  `id_create` int(10) NOT NULL,
  `dt_create` datetime NOT NULL,
  `id_update` int(10) NOT NULL,
  `dt_update` datetime NOT NULL,
  PRIMARY KEY (`id_ttopic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ttopic
-- ----------------------------
