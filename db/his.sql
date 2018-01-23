/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : localhost:3306
 Source Schema         : his

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 23/01/2018 14:58:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_charge
-- ----------------------------
DROP TABLE IF EXISTS `t_charge`;
CREATE TABLE `t_charge` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(10000) COLLATE utf8_bin DEFAULT NULL,
  `cdate` date DEFAULT NULL,
  `cprice` double(10,2) DEFAULT NULL,
  `cdid` int(11) DEFAULT NULL,
  `eid` int(11) DEFAULT NULL,
  `pbid` int(11) DEFAULT NULL,
  `ctype` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_charge
-- ----------------------------
BEGIN;
INSERT INTO `t_charge` VALUES (5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_charge` VALUES (6, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_charge` VALUES (7, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_charge` VALUES (8, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_charge` VALUES (9, NULL, NULL, NULL, NULL, 0, 1, NULL);
INSERT INTO `t_charge` VALUES (10, '3132', NULL, 20.00, NULL, 0, 0, NULL);
INSERT INTO `t_charge` VALUES (11, '12344', NULL, 20.00, NULL, 0, 24, NULL);
INSERT INTO `t_charge` VALUES (12, '4444', NULL, 30.00, NULL, 0, 25, NULL);
INSERT INTO `t_charge` VALUES (13, '住院', NULL, 123.00, NULL, 0, 1, NULL);
INSERT INTO `t_charge` VALUES (14, '住院', NULL, 123.00, NULL, 0, 1, NULL);
INSERT INTO `t_charge` VALUES (15, '住院', NULL, 12.00, NULL, 0, 21, NULL);
INSERT INTO `t_charge` VALUES (16, '住院', NULL, 12.00, NULL, 0, 21, NULL);
INSERT INTO `t_charge` VALUES (17, '病床费', NULL, 123.00, NULL, 0, 25, NULL);
INSERT INTO `t_charge` VALUES (18, '病床费', NULL, 123.00, NULL, 0, 25, NULL);
INSERT INTO `t_charge` VALUES (19, '病床费', NULL, 123.00, NULL, 0, 25, NULL);
INSERT INTO `t_charge` VALUES (20, '病床费', NULL, 111.00, NULL, 0, 25, NULL);
INSERT INTO `t_charge` VALUES (21, '病床费', NULL, 123.00, NULL, 0, 25, NULL);
INSERT INTO `t_charge` VALUES (22, '病床费', NULL, 1222.00, NULL, 0, 25, NULL);
INSERT INTO `t_charge` VALUES (23, '病床费', NULL, 1233.00, NULL, 0, 25, NULL);
INSERT INTO `t_charge` VALUES (24, '病床费', NULL, 123.00, NULL, 0, 25, NULL);
INSERT INTO `t_charge` VALUES (25, '病床费', NULL, 123.00, NULL, 0, 25, NULL);
INSERT INTO `t_charge` VALUES (26, '病床费', NULL, 4444.00, NULL, 0, 25, NULL);
INSERT INTO `t_charge` VALUES (27, '病床费', NULL, 123213.00, NULL, 0, 25, NULL);
INSERT INTO `t_charge` VALUES (28, '病床费', NULL, 12344.00, NULL, 0, 25, NULL);
INSERT INTO `t_charge` VALUES (29, '病床费', NULL, 100.00, NULL, 0, 25, NULL);
INSERT INTO `t_charge` VALUES (30, 'das', NULL, 1.00, NULL, 0, 25, NULL);
INSERT INTO `t_charge` VALUES (31, '病床费', NULL, 1444.00, NULL, 0, 25, NULL);
INSERT INTO `t_charge` VALUES (32, '病床费', NULL, 4444.00, NULL, 0, 25, NULL);
INSERT INTO `t_charge` VALUES (33, '病床费', NULL, 1234444.00, NULL, 0, 25, NULL);
INSERT INTO `t_charge` VALUES (34, '病床费', NULL, 123333.00, NULL, 0, 25, NULL);
INSERT INTO `t_charge` VALUES (35, '病床费', NULL, 123.00, NULL, 0, 25, NULL);
INSERT INTO `t_charge` VALUES (36, '病床费', NULL, 123123.00, NULL, 0, 25, NULL);
INSERT INTO `t_charge` VALUES (37, '挂号', NULL, 20.00, NULL, 0, 26, NULL);
INSERT INTO `t_charge` VALUES (38, '123', NULL, 20.00, NULL, 0, 27, NULL);
INSERT INTO `t_charge` VALUES (39, '挂号', NULL, 20.00, NULL, 0, 28, NULL);
INSERT INTO `t_charge` VALUES (40, '挂号', NULL, 20.00, NULL, 0, 29, NULL);
INSERT INTO `t_charge` VALUES (41, '挂号', NULL, 20.00, NULL, 0, 30, NULL);
INSERT INTO `t_charge` VALUES (42, '病床费', NULL, 123.00, NULL, 0, 30, NULL);
INSERT INTO `t_charge` VALUES (43, '挂号', NULL, 20.00, NULL, 0, 31, '已结');
INSERT INTO `t_charge` VALUES (44, '病床费', NULL, NULL, NULL, 0, 31, NULL);
INSERT INTO `t_charge` VALUES (45, '住院', NULL, 3000.00, NULL, 0, 22, NULL);
INSERT INTO `t_charge` VALUES (46, '住院', NULL, 5000.00, NULL, 0, 27, '住院押金');
INSERT INTO `t_charge` VALUES (47, '住院押金', NULL, 5000.00, NULL, 0, 26, '押金');
INSERT INTO `t_charge` VALUES (48, '挂号', NULL, 20.00, NULL, 0, 32, '已结');
INSERT INTO `t_charge` VALUES (49, '住院押金', NULL, 80.00, NULL, 0, 32, '押金');
INSERT INTO `t_charge` VALUES (50, '挂号', NULL, 20.00, NULL, 0, 33, '已结');
INSERT INTO `t_charge` VALUES (51, '住院押金', NULL, 3000.00, NULL, 0, 33, '押金');
INSERT INTO `t_charge` VALUES (52, '病床费', NULL, NULL, NULL, 0, 33, NULL);
INSERT INTO `t_charge` VALUES (53, '挂号', NULL, 20.00, NULL, 0, 34, '已结');
INSERT INTO `t_charge` VALUES (54, '住院押金', NULL, 4000.00, NULL, 0, 34, '押金');
INSERT INTO `t_charge` VALUES (55, '病床费', NULL, NULL, NULL, 0, 34, NULL);
INSERT INTO `t_charge` VALUES (56, '购药', NULL, 500.00, NULL, 0, 34, '已结');
COMMIT;

-- ----------------------------
-- Table structure for t_chargeDetail
-- ----------------------------
DROP TABLE IF EXISTS `t_chargeDetail`;
CREATE TABLE `t_chargeDetail` (
  `cdid` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT NULL,
  `cdcount` int(11) DEFAULT NULL,
  `cdprice` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`cdid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for t_dept
-- ----------------------------
DROP TABLE IF EXISTS `t_dept`;
CREATE TABLE `t_dept` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `dname` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_dept
-- ----------------------------
BEGIN;
INSERT INTO `t_dept` VALUES (1, '123213');
INSERT INTO `t_dept` VALUES (2, NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_employee
-- ----------------------------
DROP TABLE IF EXISTS `t_employee`;
CREATE TABLE `t_employee` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `ename` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `egender` int(11) DEFAULT NULL,
  `eage` int(11) DEFAULT NULL,
  `ebirth` date DEFAULT NULL,
  `ephone` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `ecard` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `etype` int(11) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `pid` int(255) DEFAULT NULL,
  `did` int(10) DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_employee
-- ----------------------------
BEGIN;
INSERT INTO `t_employee` VALUES (1, '12', 123, 123, '2017-08-16', '123', '123', 123213, NULL, 1, NULL);
INSERT INTO `t_employee` VALUES (12, '1233', 0, 123, NULL, '123312', '123123', NULL, NULL, 0, 0);
INSERT INTO `t_employee` VALUES (13, '111', 0, 123, NULL, '123312', '123123', NULL, '111', 0, 0);
INSERT INTO `t_employee` VALUES (15, '123123', 1, 123132, NULL, '123213', '123123', NULL, '123123', 0, 0);
INSERT INTO `t_employee` VALUES (16, '123312', 0, 123, NULL, '123', '123', NULL, '123', 0, 0);
INSERT INTO `t_employee` VALUES (18, '213123', 1, 123123, NULL, '123123', '13123', NULL, '123123', 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for t_kind
-- ----------------------------
DROP TABLE IF EXISTS `t_kind`;
CREATE TABLE `t_kind` (
  `kid` int(11) NOT NULL AUTO_INCREMENT,
  `kname` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`kid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_kind
-- ----------------------------
BEGIN;
INSERT INTO `t_kind` VALUES (1, '中药');
INSERT INTO `t_kind` VALUES (2, '西药');
COMMIT;

-- ----------------------------
-- Table structure for t_medicine
-- ----------------------------
DROP TABLE IF EXISTS `t_medicine`;
CREATE TABLE `t_medicine` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `mrname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mname` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `mcount` int(11) DEFAULT NULL,
  `maddress` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `kid` int(11) DEFAULT NULL,
  `eid` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_medicine
-- ----------------------------
BEGIN;
INSERT INTO `t_medicine` VALUES (1, '新东方大药房', '人参', 123, '卞和', 1, NULL, 500);
COMMIT;

-- ----------------------------
-- Table structure for t_patientbase
-- ----------------------------
DROP TABLE IF EXISTS `t_patientbase`;
CREATE TABLE `t_patientbase` (
  `pbid` int(11) NOT NULL AUTO_INCREMENT,
  `pbname` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `pbgender` int(11) DEFAULT NULL,
  `pbage` int(11) DEFAULT NULL,
  `pbtime` date DEFAULT NULL,
  `did` int(11) DEFAULT NULL,
  `pbtype` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`pbid`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_patientbase
-- ----------------------------
BEGIN;
INSERT INTO `t_patientbase` VALUES (22, '213', 1, 123, '2017-08-11', 0, '待住院');
INSERT INTO `t_patientbase` VALUES (23, '123', 0, 123, NULL, 0, '待诊');
INSERT INTO `t_patientbase` VALUES (24, '12344', 0, 12344, NULL, 0, '待诊');
INSERT INTO `t_patientbase` VALUES (25, '4444', 0, 4444, NULL, 0, '待诊');
INSERT INTO `t_patientbase` VALUES (26, '213213123', 0, 23, NULL, 1, '待住院');
INSERT INTO `t_patientbase` VALUES (27, '12344444', 1, 123, NULL, 1, '待住院');
INSERT INTO `t_patientbase` VALUES (28, '小孩', 0, 12, NULL, 1, '');
INSERT INTO `t_patientbase` VALUES (29, '大人', 1, 32, NULL, 1, '待诊');
INSERT INTO `t_patientbase` VALUES (30, '老赵', 1, 123, '2017-08-11', 1, '待诊');
INSERT INTO `t_patientbase` VALUES (31, '老', 0, 123, '2017-08-11', 1, '待诊');
INSERT INTO `t_patientbase` VALUES (32, '李白', 1, 90, '2017-08-12', 1, '待住院');
INSERT INTO `t_patientbase` VALUES (33, '李嘉诚', 0, 12, '2017-08-13', 1, '待住院');
INSERT INTO `t_patientbase` VALUES (34, '宇哥', 0, 12, '2017-08-14', 1, '待住院');
COMMIT;

-- ----------------------------
-- Table structure for t_position
-- ----------------------------
DROP TABLE IF EXISTS `t_position`;
CREATE TABLE `t_position` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_position
-- ----------------------------
BEGIN;
INSERT INTO `t_position` VALUES (1, '12');
COMMIT;

-- ----------------------------
-- Table structure for t_recipe
-- ----------------------------
DROP TABLE IF EXISTS `t_recipe`;
CREATE TABLE `t_recipe` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `mname` varchar(255) DEFAULT NULL,
  `mcount` int(11) DEFAULT NULL,
  `runit` varchar(255) DEFAULT NULL,
  `rname` varchar(255) DEFAULT NULL,
  `pbid` int(11) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_recipe
-- ----------------------------
BEGIN;
INSERT INTO `t_recipe` VALUES (1, '123', 123, '123', '123', NULL);
INSERT INTO `t_recipe` VALUES (2, '123', 123, '123', '123', NULL);
INSERT INTO `t_recipe` VALUES (3, '123', 123, '123', '123', NULL);
INSERT INTO `t_recipe` VALUES (4, '213', 123, '123', '123', NULL);
INSERT INTO `t_recipe` VALUES (5, '123', 123, '123', '123', 25);
INSERT INTO `t_recipe` VALUES (6, '人参', 3, '234', '23', 30);
INSERT INTO `t_recipe` VALUES (7, '人参', 1, '颗', '123', 34);
COMMIT;

-- ----------------------------
-- Table structure for t_sickbed
-- ----------------------------
DROP TABLE IF EXISTS `t_sickbed`;
CREATE TABLE `t_sickbed` (
  `sbid` int(11) NOT NULL AUTO_INCREMENT,
  `srid` int(11) DEFAULT NULL,
  `sbname` int(20) DEFAULT NULL,
  `sbtype` int(11) DEFAULT NULL,
  `pbid` int(11) DEFAULT NULL,
  `eid` int(11) DEFAULT NULL,
  PRIMARY KEY (`sbid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_sickbed
-- ----------------------------
BEGIN;
INSERT INTO `t_sickbed` VALUES (1, 1, 1, 0, 1, NULL);
INSERT INTO `t_sickbed` VALUES (2, 1, 2, 1, 34, NULL);
INSERT INTO `t_sickbed` VALUES (3, 1, 4, 1, 33, NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_sickroom
-- ----------------------------
DROP TABLE IF EXISTS `t_sickroom`;
CREATE TABLE `t_sickroom` (
  `srid` int(11) NOT NULL AUTO_INCREMENT,
  `did` int(11) DEFAULT NULL,
  `srAllcount` int(11) DEFAULT NULL,
  `srcount` int(11) DEFAULT NULL,
  `srprice` double(111,0) DEFAULT NULL,
  `sbid` int(11) DEFAULT NULL,
  PRIMARY KEY (`srid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_sickroom
-- ----------------------------
BEGIN;
INSERT INTO `t_sickroom` VALUES (1, 1, 4, 2, 150, NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_stayhistory
-- ----------------------------
DROP TABLE IF EXISTS `t_stayhistory`;
CREATE TABLE `t_stayhistory` (
  `shid` int(11) NOT NULL AUTO_INCREMENT,
  `sbid` int(11) DEFAULT NULL,
  `eid` int(11) DEFAULT NULL,
  `pbid` int(20) DEFAULT NULL,
  `srid` int(11) DEFAULT NULL,
  `shdate` date DEFAULT NULL,
  `shOutdate` date DEFAULT NULL,
  `shprice` double(7,2) DEFAULT NULL,
  `pbname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`shid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_stayhistory
-- ----------------------------
BEGIN;
INSERT INTO `t_stayhistory` VALUES (12, 2, NULL, 25, 1, '2017-08-10', '2017-08-11', NULL, '4444');
INSERT INTO `t_stayhistory` VALUES (13, 4, NULL, 30, 1, '2017-08-11', '2017-08-11', NULL, '老赵');
INSERT INTO `t_stayhistory` VALUES (14, 4, NULL, 31, 1, '2017-08-11', '2017-08-11', NULL, '老');
INSERT INTO `t_stayhistory` VALUES (15, 4, NULL, 33, 1, '2017-08-13', NULL, NULL, '李嘉诚');
INSERT INTO `t_stayhistory` VALUES (16, 2, NULL, 34, 1, '2017-08-14', NULL, NULL, '宇哥');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
