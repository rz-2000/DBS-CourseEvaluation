/*
 Navicat Premium Data Transfer

 Source Server         : DBS-CE
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : dbs-ce

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 29/05/2020 09:30:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `Cno` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Cname` char(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Cdept` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Ccredit` smallint(0) NULL DEFAULT NULL,
  `Cinfo` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Cteacher` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Cdate` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Cno`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '数据库', 'CS', 4, '1', '1', '1');
INSERT INTO `course` VALUES ('2', '数学', 'MA', 2, '1', '2', '2');
INSERT INTO `course` VALUES ('3', '信息系统', 'CS', 4, '1', '3', '3');
INSERT INTO `course` VALUES ('4', '操作系统', 'EN', 3, '1', '4', '4');
INSERT INTO `course` VALUES ('5', '数据结构', 'ZH', 4, '1', '5', '5');
INSERT INTO `course` VALUES ('6', '数据处理', 'IS', 2, '1', '6', '6');
INSERT INTO `course` VALUES ('7', 'Pascal语言', 'CS', 4, '1', '7', '7');

-- ----------------------------
-- Table structure for evaluate
-- ----------------------------
DROP TABLE IF EXISTS `evaluate`;
CREATE TABLE `evaluate`  (
  `Sno` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Cno` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Edate` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Econtent` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Sno`, `Cno`) USING BTREE,
  INDEX `Cno`(`Cno`) USING BTREE,
  CONSTRAINT `evaluate_ibfk_1` FOREIGN KEY (`Sno`) REFERENCES `student` (`Sno`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `evaluate_ibfk_2` FOREIGN KEY (`Cno`) REFERENCES `course` (`Cno`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of evaluate
-- ----------------------------
INSERT INTO `evaluate` VALUES ('201215121', '1', '2020.04.05', '无');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `Sno` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Sname` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Ssex` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Sage` smallint(0) NULL DEFAULT NULL,
  `Sdept` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Snick` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Sno`) USING BTREE,
  UNIQUE INDEX `Sname`(`Sname`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('201215121', '李勇', '男', 20, 'CS', '张三');
INSERT INTO `student` VALUES ('201215122', '刘晨', '女', 19, 'CS', '李四');
INSERT INTO `student` VALUES ('201215123', '王敏', '女', 18, 'MA', '王五');
INSERT INTO `student` VALUES ('201215125', '张立', '男', 19, 'IS', '赵六');

SET FOREIGN_KEY_CHECKS = 1;
