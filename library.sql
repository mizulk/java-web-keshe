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

 Date: 18/12/2023 21:48:34
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
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `books` VALUES (31, '中外美术史', '李林', '中国轻工业出版社', 43.80, '艺术类', 10, '2023-12-18 16:06:11', '2023-12-18 17:55:27', '3-1.jpg', 0);
INSERT INTO `books` VALUES (32, '设计美学', '张玲 李正军', '人民邮电出版社', 33.50, '艺术类', 10, '2023-12-18 16:11:37', '2023-12-18 17:55:30', '3-2.jpg', 0);
INSERT INTO `books` VALUES (33, '视觉传达设计', '王景 刘淼', '清华大学出版社', 52.80, '艺术类', 10, '2023-12-18 16:13:07', '2023-12-18 17:55:33', '3-3.jpg', 0);
INSERT INTO `books` VALUES (34, 'MG动画设计与制作', '陈皓 李鹏', '人民邮电出版社', 59.40, '艺术类', 10, '2023-12-18 16:15:05', '2023-12-18 17:55:36', '3-4.jpg', 0);
INSERT INTO `books` VALUES (35, '对立之美', '严伯钧', '中信出版社', 86.00, '艺术类', 10, '2023-12-18 16:40:39', '2023-12-18 17:55:39', '3-5.jpg', 0);
INSERT INTO `books` VALUES (36, '播音主持艺考即兴评述', '谢伦浩', '中国传媒大学出版社', 30.00, '艺术类', 10, '2023-12-18 16:42:50', '2023-12-18 17:55:42', '3-6.jpg', 0);
INSERT INTO `books` VALUES (37, '艺考基本功-色彩静物', '吴俊芳', '中国纺织出版社', 41.34, '艺术类', 10, '2023-12-18 16:44:59', '2023-12-18 17:55:45', '3-7.jpg', 0);
INSERT INTO `books` VALUES (38, '常见玉石鉴赏', '蔡善武', '中国地质大学出版社', 18.00, '艺术类', 10, '2023-12-18 16:46:41', '2023-12-18 17:55:47', '3-8.jpg', 0);
INSERT INTO `books` VALUES (39, '伟大的中国绘画', '冯翰林', '华中科技大学出版社', 89.40, '艺术类', 10, '2023-12-18 16:48:22', '2023-12-18 17:55:50', '3-9.jpg', 0);
INSERT INTO `books` VALUES (40, '艺术美学', '雷礼锡', '武汉大学出版社', 18.70, '艺术类', 10, '2023-12-18 16:49:49', '2023-12-18 17:55:52', '3-10.jpg', 0);
INSERT INTO `books` VALUES (41, '中国徽州雕刻艺术', '安徽美术出版社编', '安徽美术出版社', 510.00, '艺术类', 10, '2023-12-18 16:51:56', '2023-12-18 17:55:54', '3-11.jpg', 0);
INSERT INTO `books` VALUES (42, '北大艺术评论', '王一川', '商务印书馆', 21.47, '艺术类', 10, '2023-12-18 16:53:24', '2023-12-18 17:55:57', '3-12.jpg', 0);
INSERT INTO `books` VALUES (43, '慢的艺术', '布鲁克·麦卡拉里', '南海出版公司', 38.20, '艺术类', 10, '2023-12-18 16:54:59', '2023-12-18 17:55:59', '3-13.jpg', 0);
INSERT INTO `books` VALUES (44, '包装设计', '玛丽安·罗斯奈', '上海人民美术出版社', 162.10, '艺术类', 10, '2023-12-18 16:57:05', '2023-12-18 17:56:03', '3-14.png', 0);
INSERT INTO `books` VALUES (45, '中外美术史', '林木', '人民美术出版社', 25.00, '艺术类', 10, '2023-12-18 16:59:30', '2023-12-18 17:56:05', '3-15.jpg', 0);
INSERT INTO `books` VALUES (46, '剑桥雅思真题精讲', '周成刚', '浙江教育出版社', 28.20, '外语类', 10, '2023-12-18 17:01:42', '2023-12-18 17:56:07', '4-1.jpg', 0);
INSERT INTO `books` VALUES (47, '专四词汇', '新东方考试研究中心', '浙江教育出版社', 26.60, '外语类', 10, '2023-12-18 17:24:03', '2023-12-18 17:56:11', '4-2.jpg', 0);
INSERT INTO `books` VALUES (48, '四级词汇', '新东方考试研究中心', '浙江教育出版社', 28.00, '外语类', 10, '2023-12-18 17:25:42', '2023-12-18 17:56:15', '4-3.jpg', 0);
INSERT INTO `books` VALUES (49, 'IELTS 13', '剑桥大学考试委员会', '海外版', 97.52, '外语类', 10, '2023-12-18 17:27:49', '2023-12-18 17:56:17', '4-4.jpg', 0);
INSERT INTO `books` VALUES (50, '英语词汇速记大全', '俞敏洪', '世界图书出版公司', 40.00, '外语类', 10, '2023-12-18 17:30:15', '2023-12-18 17:56:19', '4-5.jpg', 0);
INSERT INTO `books` VALUES (51, '英语电影视听说', '徐志英', '外语教学与研究出版社', 37.50, '外语类', 10, '2023-12-18 17:32:35', '2023-12-18 17:56:21', '4-6.jpg', 0);
INSERT INTO `books` VALUES (52, '新概念英语词汇大全', '于洋', '外语教学与研究出版社', 4.62, '外语类', 10, '2023-12-18 17:33:59', '2023-12-18 17:56:23', '4-7.jpg', 0);
INSERT INTO `books` VALUES (53, '药用拉丁语', '孙启时', '中国医药科技出版社', 34.50, '外语类', 10, '2023-12-18 17:35:42', '2023-12-18 17:56:26', '4-8.jpg', 0);
INSERT INTO `books` VALUES (54, '英语报刊选读', '张卫平', '外语教学与研究出版社', 29.70, '外语类', 10, '2023-12-18 17:37:12', '2023-12-18 17:56:28', '4-9.jpg', 0);
INSERT INTO `books` VALUES (55, '法律英语教程', '宋雷', '外国教育与研究出版社', 38.20, '外语类', 10, '2023-12-18 17:38:27', '2023-12-18 17:56:30', '4-10.jpg', 0);
INSERT INTO `books` VALUES (56, '5000英语短语', '耿小辉', '中国对外翻译出版公司', 59.00, '外语类', 10, '2023-12-18 17:40:55', '2023-12-18 17:56:33', '4-11.jpg', 0);
INSERT INTO `books` VALUES (57, '全国职称英语', '考试命题研究组', '辽宁大学出版社', 19.80, '外语类', 10, '2023-12-18 17:50:19', '2023-12-18 17:56:35', '4-12.png', 0);
INSERT INTO `books` VALUES (58, '商务德语教程', '蔡明剑', '外语教学与研究出版社', 20.10, '外语类', 10, '2023-12-18 17:51:45', '2023-12-18 17:56:37', '4-13.jpg', 0);
INSERT INTO `books` VALUES (59, '金融英语教程', '沈素萍', '外语教学与研究出版社', 26.70, '外语类', 10, '2023-12-18 17:53:22', '2023-12-18 17:56:39', '4-14.jpg', 0);
INSERT INTO `books` VALUES (60, '超实用外企英语面试', '有元美津世', '浙江教育出版社', 26.00, '外语类', 10, '2023-12-18 17:55:17', '2023-12-18 17:56:41', '4-15.jpg', 0);

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of managers
-- ----------------------------
INSERT INTO `managers` VALUES (1, 114514, '1919810', '电棍');

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of readers
-- ----------------------------
INSERT INTO `readers` VALUES (1, '123456', '123456', 'otto', 0, '123456', '2023-12-17 18:59:13', '123456', '2023-12-17 18:59:18', NULL, '13456', '123456');

-- ----------------------------
-- View structure for my_order
-- ----------------------------
DROP VIEW IF EXISTS `my_order`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `my_order` AS select `readers`.`name` AS `reader_name`,`orders`.`id` AS `order_id`,`books`.`book_name` AS `book_name`,`books`.`id` AS `book_id`,`books`.`price` AS `book_price`,`orders`.`order_time` AS `order_time`,`orders`.`amount` AS `order_amount`,`readers`.`id` AS `reader_id` from ((`readers` join `orders` on((`readers`.`id` = `orders`.`reader_id`))) join `books` on((`orders`.`book_id` = `books`.`id`)));

SET FOREIGN_KEY_CHECKS = 1;
