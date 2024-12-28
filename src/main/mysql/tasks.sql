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

 Date: 21/12/2024 13:49:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tasks
-- ----------------------------
DROP TABLE IF EXISTS `tasks`;
CREATE TABLE `tasks`  (
  `HomeworkID` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '活动唯一标识（主键）',
  `TeacherID` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NULL DEFAULT NULL COMMENT '发布任务的教师ID（外键，关联用户表）',
  `ClassID` int NULL DEFAULT NULL COMMENT '任务所属班级ID（外键，关联班级表，若全校作业则为NULL）',
  `Title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NULL DEFAULT NULL COMMENT '任务标题',
  `Content` text CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NULL COMMENT '任务内容简述',
  `Deadline` datetime(0) NULL DEFAULT NULL COMMENT '每天任务截止时间',
  `StartDate` datetime(0) NULL DEFAULT NULL COMMENT '任务开始日期',
  `EndDate` datetime(0) NULL DEFAULT NULL COMMENT '任务结束日期',
  `Attachment` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NULL DEFAULT NULL COMMENT '作业附件存储路径',
  PRIMARY KEY (`HomeworkID`) USING BTREE,
  INDEX `Tasks_Teacher_ID`(`TeacherID`) USING BTREE,
  INDEX `Tasks_Class_ID`(`ClassID`) USING BTREE,
  INDEX `EndDate`(`EndDate`) USING BTREE,
  INDEX `Deadline`(`Deadline`) USING BTREE,
  CONSTRAINT `Tasks_Class_ID` FOREIGN KEY (`ClassID`) REFERENCES `classes` (`ClassID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Tasks_Teacher_ID` FOREIGN KEY (`TeacherID`) REFERENCES `user` (`Identification`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_unicode_520_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
