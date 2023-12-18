/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80034
 Source Host           : localhost:3306
 Source Schema         : library

 Target Server Type    : MySQL
 Target Server Version : 80034
 File Encoding         : 65001

 Date: 18/12/2023 16:03:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `book_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `author` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `publisher` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `book_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `repertory` int NOT NULL,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `bought` int NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES (1, '局外人', '阿尔贝·加缪', '台海出版社', 31.00, '文学类', 10, '2023-12-18 13:38:13', '2023-12-18 15:26:06', '1-1.jpg', 0);
INSERT INTO `books` VALUES (2, '古文观止', '钟基 李先银 王身钢', '中华书局', 36.00, '文学类', 10, '2023-12-18 13:42:37', '2023-12-18 15:26:09', '1-2.jpg', 0);
INSERT INTO `books` VALUES (3, '活着', '余华', '北京十月文艺出版社', 31.00, '文学类', 10, '2023-12-18 13:45:25', '2023-12-18 15:26:13', '1-3.jpg', 0);
INSERT INTO `books` VALUES (4, '在轮下', '赫尔曼·黑塞', '台海出版社', 12.90, '文学类', 10, '2023-12-18 13:47:22', '2023-12-18 15:26:16', '1-4.jpg', 0);
INSERT INTO `books` VALUES (5, '我与地坛', '史铁生', '人民文学出版社', 17.50, '文学类', 10, '2023-12-18 13:48:30', '2023-12-18 15:26:19', '1-5.jpg', 0);
INSERT INTO `books` VALUES (6, '狂人日记', '鲁迅', '民主与建设出版社', 11.90, '文学类', 10, '2023-12-18 13:50:03', '2023-12-18 15:26:20', '1-6.jpg', 0);
INSERT INTO `books` VALUES (7, '故乡', '鲁迅', '中国文联出版社', 13.00, '文学类', 10, '2023-12-18 13:51:15', '2023-12-18 15:26:23', '1-7.jpg', 0);
INSERT INTO `books` VALUES (8, '彷徨', '鲁迅', '人民文学出版社', 14.90, '文学类', 10, '2023-12-18 13:52:24', '2023-12-18 15:26:26', '1-8.jpg', 0);
INSERT INTO `books` VALUES (9, '平凡的世界', '路遥', '北京十月文艺出版社', 98.00, '文学类', 10, '2023-12-18 13:53:45', '2023-12-18 15:26:29', '1-9.jpg', 0);
INSERT INTO `books` VALUES (10, '呐喊', '鲁迅', '人民文学出版社', 10.90, '文学类', 10, '2023-12-18 13:55:13', '2023-12-18 15:26:31', '1-10.jpg', 0);
INSERT INTO `books` VALUES (11, '蛙', '莫言', '浙江文艺出版社', 47.90, '文学类', 10, '2023-12-18 13:56:57', '2023-12-18 15:26:35', '1-11.jpg', 0);
INSERT INTO `books` VALUES (12, '茶馆', '老舍', '台海出版社', 12.90, '文学类', 10, '2023-12-18 13:58:32', '2023-12-18 15:26:38', '1-12.jpg', 0);
INSERT INTO `books` VALUES (13, '四世同堂', '老舍', '人民文学出版社', 35.90, '文学类', 10, '2023-12-18 13:59:41', '2023-12-18 15:26:45', '1-13.jpg', 0);
INSERT INTO `books` VALUES (14, '骆驼祥子', '老舍', '南海出版公司', 35.00, '文学类', 10, '2023-12-18 14:01:09', '2023-12-18 15:26:48', '1-14.jpg', 0);
INSERT INTO `books` VALUES (15, '白鹿原', '陈忠实', '人民文学出版社', 28.50, '文学类', 10, '2023-12-18 14:02:29', '2023-12-18 15:26:51', '1-15.jpg', 0);
INSERT INTO `books` VALUES (16, '世界简史', '赫伯特·乔治·威尔斯', '民主与建设出版社', 12.90, '历史类', 10, '2023-12-18 14:05:45', '2023-12-18 15:26:53', '2-1.jpg', 0);
INSERT INTO `books` VALUES (17, '明朝简史', '吴晗', '中国华侨出版社', 23.18, '历史类', 10, '2023-12-18 14:07:13', '2023-12-18 15:26:56', '2-2.jpg', 0);
INSERT INTO `books` VALUES (18, '三国史话', '吕思勉', '中国友谊出版公司', 15.00, '历史类', 10, '2023-12-18 14:08:45', '2023-12-18 15:26:58', '2-3.jpg', 0);
INSERT INTO `books` VALUES (19, '中国历史常识', '吕思勉', '浙江工商大学出版社', 9.40, '历史类', 10, '2023-12-18 14:10:32', '2023-12-18 15:27:01', '2-4.jpg', 0);
INSERT INTO `books` VALUES (20, '春秋战国', '高兴宇', '中国国际广播出版社', 38.12, '历史类', 10, '2023-12-18 14:15:43', '2023-12-18 15:27:04', '2-5.jpg', 0);
INSERT INTO `books` VALUES (21, '史记', '司马迁', '吉林文史出版社', 10.40, '历史类', 10, '2023-12-18 14:16:59', '2023-12-18 15:27:06', '2-6.jpg', 0);
INSERT INTO `books` VALUES (22, '资治通鉴', '司马光', '江苏凤凰美术出版社', 28.20, '历史类', 10, '2023-12-18 14:26:33', '2023-12-18 15:27:09', '2-7.png', 0);
INSERT INTO `books` VALUES (23, '北洋军阀史', '来新夏', '东方出版中心', 58.00, '历史类', 10, '2023-12-18 14:29:00', '2023-12-18 15:27:11', '2-8.jpg', 0);
INSERT INTO `books` VALUES (24, '细读南北朝二百年', '陈峰韬', '华文出版社', 34.30, '历史类', 10, '2023-12-18 14:31:06', '2023-12-18 15:27:20', '2-9.jpg', 0);
INSERT INTO `books` VALUES (25, '中南海人物春秋', '顾保孜', '华夏出版社', 78.00, '历史类', 10, '2023-12-18 14:52:44', '2023-12-18 15:27:23', '2-10.jpg', 0);
INSERT INTO `books` VALUES (26, '大地中国', '韩茂莉', '文汇出版社', 69.00, '历史类', 10, '2023-12-18 14:54:31', '2023-12-18 15:27:25', '2-11.jpg', 0);
INSERT INTO `books` VALUES (27, '趣说中国史', '趣哥', '台海出版社', 24.90, '历史类', 10, '2023-12-18 14:56:04', '2023-12-18 15:27:28', '2-12.png', 0);
INSERT INTO `books` VALUES (28, '大清十二帝', '曲波 清馨', '中国华侨出版社', 58.00, '历史类', 10, '2023-12-18 14:57:54', '2023-12-18 15:27:31', '2-13.jpg', 0);
INSERT INTO `books` VALUES (29, '历史的镜子', '吴晗', '中国华侨出版社', 32.50, '历史类', 10, '2023-12-18 14:59:17', '2023-12-18 15:27:33', '2-14.jpg', 0);
INSERT INTO `books` VALUES (30, '中华上下五千年', '李金龙', '吉林文史出版社', 29.80, '历史类', 10, '2023-12-18 15:00:54', '2023-12-18 15:27:36', '2-15.png', 0);

-- ----------------------------
-- Table structure for managers
-- ----------------------------
DROP TABLE IF EXISTS `managers`;
CREATE TABLE `managers`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `work_number` int NOT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of managers
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `reader_id` int NOT NULL,
  `book_id` int NOT NULL,
  `amount` int NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `order_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for readers
-- ----------------------------
DROP TABLE IF EXISTS `readers`;
CREATE TABLE `readers`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `account` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` tinyint NULL DEFAULT NULL,
  `telephone` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `birth` datetime(0) NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `e_mail` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of readers
-- ----------------------------
INSERT INTO `readers` VALUES (1, '123456', '123456', 'otto', 0, '123456', '2023-12-17 18:59:13', '123456', '2023-12-17 18:59:18', NULL, '13456', '123456');

SET FOREIGN_KEY_CHECKS = 1;
