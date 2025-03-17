/*
 Navicat Premium Dump SQL

 Source Server         : yuzhouchen
 Source Server Type    : MySQL
 Source Server Version : 80300 (8.3.0)
 Source Host           : localhost:3306
 Source Schema         : tedu_store

 Target Server Type    : MySQL
 Target Server Version : 80300 (8.3.0)
 File Encoding         : 65001

 Date: 17/03/2025 21:16:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for delivery_address
-- ----------------------------
DROP TABLE IF EXISTS `delivery_address`;
CREATE TABLE `delivery_address`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `address_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `recipient_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `postal_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_default` tinyint(1) NULL DEFAULT 0,
  `created_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `province_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `city_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `district_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `delivery_address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of delivery_address
-- ----------------------------
INSERT INTO `delivery_address` VALUES (11, 1, '学校', '王硕', '河北省 保定市 莲池区 保定学院', '1213', '17736207629', 1, '2025-03-17 00:00:00', '2025-03-17 00:00:00', '130000', '130600', '130606');
INSERT INTO `delivery_address` VALUES (14, 1, '家', '闫海龙', '河北省 邯郸市 邱县 随便', '123', '13399999999', 0, '2025-03-17 00:00:00', '2025-03-17 00:00:00', '130000', '130400', '130430');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `gender` int NULL DEFAULT NULL,
  `created_user` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_time` date NULL DEFAULT NULL,
  `modified_user` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modified_time` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_username`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'admin1', '123456', '123@123.com', '13333365531', 0, NULL, NULL, 'admin1', '2025-03-17');
INSERT INTO `t_user` VALUES (2, 'admin2', '123456', 'universe0602@outlook.com', '13333366531', 0, 'admin2', '2025-03-15', 'admin2', '2025-03-15');
INSERT INTO `t_user` VALUES (3, 'admin3', '123456', 'universe@outlook.com', '13333366532', 0, 'admin3', '2025-03-15', 'admin3', '2025-03-15');
INSERT INTO `t_user` VALUES (4, 'admin4', '123456', 'iiamgreaterthaniwas@gmail.com', '13333366533', 0, 'admin4', '2025-03-15', 'admin4', '2025-03-15');
INSERT INTO `t_user` VALUES (5, 'admin5', '123456', 'test@1234.com', '13333333332', 0, 'admin5', '2025-03-15', 'admin5', '2025-03-15');
INSERT INTO `t_user` VALUES (6, 'yhldsb', '123456', '11@1', '13399999999', 0, 'yhldsb', '2025-03-15', 'yhldsb', '2025-03-15');

SET FOREIGN_KEY_CHECKS = 1;
