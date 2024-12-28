/*
 Navicat Premium Data Transfer

 Source Server         : kiana
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : task_clocking

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 21/12/2024 13:50:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `UserID` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `Role` enum('STUDENT','TEACHER') CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL COMMENT '用户角色（学生/教师）',
  `Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `Identification` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NULL DEFAULT NULL COMMENT '学生学号/教师教工号',
  `ClassID` int NULL DEFAULT NULL COMMENT '学生班级ID, 教师为NULL',
  `Password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NULL DEFAULT NULL COMMENT '用户密码（加密存储）',
  PRIMARY KEY (`UserID`) USING BTREE,
  INDEX `Identification`(`Identification`) USING BTREE,
  INDEX `ClassID`(`ClassID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_520_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
