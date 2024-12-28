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

 Date: 21/12/2024 13:49:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for checkins
-- ----------------------------
DROP TABLE IF EXISTS `checkins`;
CREATE TABLE `checkins`  (
  `CheckinID` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '打卡记录唯一标识（主键）',
  `UserID` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL COMMENT '打卡学生ID（外键，关联用户表的Identification字段）',
  `TaskID` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT '打卡任务ID（外键，关联活动表的homeworkID）',
  `CheckinTime` datetime(0) NOT NULL COMMENT '打卡时间',
  `Content` text CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NULL COMMENT '打卡内容（文字描述）',
  `Attachment` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NULL DEFAULT NULL COMMENT '打卡附件存储路径（可选）',
  `Status` enum('已确认','未确认') CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL DEFAULT '未确认' COMMENT '打卡状态',
  PRIMARY KEY (`CheckinID`) USING BTREE,
  INDEX `FK_TaskID`(`TaskID`) USING BTREE,
  INDEX `FK_UserID`(`UserID`) USING BTREE,
  CONSTRAINT `FK_TaskID` FOREIGN KEY (`TaskID`) REFERENCES `tasks` (`HomeworkID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_UserID` FOREIGN KEY (`UserID`) REFERENCES `user` (`Identification`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_unicode_520_ci COMMENT = '学生打卡记录表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
