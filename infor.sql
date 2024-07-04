/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : information

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 10/06/2023 23:45:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score`  (
  `id` int NULL DEFAULT NULL,
  `subject` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `subjectTeacher` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `member` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `result` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES (2023001, '英语', '王老师', '张三', 95);
INSERT INTO `score` VALUES (2023001, '数学', '刘老师', '张三', 98);
INSERT INTO `score` VALUES (2023001, '语文', '李老师', '张三', 90);
INSERT INTO `score` VALUES (2023001, '物理', '张老师', '张三', 88);
INSERT INTO `score` VALUES (2023001, '化学', '吴老师', '张三', 78);
INSERT INTO `score` VALUES (2023001, '生物', '苗老师', '张三', 94);

INSERT INTO `score` VALUES (2023002, '英语', '王老师', '李四', 89);
INSERT INTO `score` VALUES (2023002, '数学', '刘老师', '李四', 95);
INSERT INTO `score` VALUES (2023002, '语文', '李老师', '李四', 90);
INSERT INTO `score` VALUES (2023002, '物理', '张老师', '李四', 97);
INSERT INTO `score` VALUES (2023002, '化学', '吴老师', '李四', 84);
INSERT INTO `score` VALUES (2023002, '生物', '苗老师', '李四', 92);

INSERT INTO `score` VALUES (2023003, '英语', '王老师', '王五', 96);
INSERT INTO `score` VALUES (2023003, '数学', '刘老师', '王五', 94);
INSERT INTO `score` VALUES (2023003, '语文', '李老师', '王五', 92);
INSERT INTO `score` VALUES (2023003, '历史', '赵老师', '王五', 83);
INSERT INTO `score` VALUES (2023003, '政治', '谢老师', '王五', 89);
INSERT INTO `score` VALUES (2023003, '地理', '周老师', '王五', 90);
-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `clazz` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (2023001, '张三', '男', '1班', '001');
INSERT INTO `student` VALUES (2023002, '李四', '男', '1班', '002');
INSERT INTO `student` VALUES (2023003, '王五', '女', '2班', '003');
-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `id` int NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `subject` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` int NULL DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (2022001, '王老师', '英语','女', 88888888, '2001');
INSERT INTO `teacher` VALUES (2022002, '刘老师', '数学','男', 11111111, '2002');
INSERT INTO `teacher` VALUES (2022003, '李老师', '语文','女', 22222222, '2003');
INSERT INTO `teacher` VALUES (2022004, '张老师', '物理','女', 77777777, '2004');
INSERT INTO `teacher` VALUES (2022005, '苗老师', '生物','女', 55555555, '2005');
INSERT INTO `teacher` VALUES (2022006, '吴老师', '化学','男', 66666666, '2006');
INSERT INTO `teacher` VALUES (2022007, '谢老师', '政治','男', 99999999, '2007');
INSERT INTO `teacher` VALUES (2022008, '赵老师', '历史','女', 44444444, '2008');
INSERT INTO `teacher` VALUES (2022009, '周老师', '地理','男', 33333333, '2009');
SET FOREIGN_KEY_CHECKS = 1;
