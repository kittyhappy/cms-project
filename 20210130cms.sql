/*
 Navicat Premium Data Transfer

 Source Server         : root的mysql
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : 20210130cms

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 04/02/2021 23:34:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for film
-- ----------------------------
DROP TABLE IF EXISTS `film`;
CREATE TABLE `film`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `film_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `film_pic` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `director` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `actor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `release_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `del_flag` int(1) UNSIGNED ZEROFILL NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of film
-- ----------------------------
INSERT INTO `film` VALUES (2, '金刚狼', '1612447349961.jpg', '加文·胡德', '休·杰克曼', '美国', '2', '3', '<p>1845年的加拿大某庄园，那时候的金刚狼还是个6、7岁的小男孩，体弱多病，他的名字是詹姆斯，疼爱他的父亲叫他吉米，悲剧发生在某一天晚上，园丁罗根杀死了父亲，丧父之痛激发了小詹姆斯体内的奇特能力，从他身体里长出了由骨骼形成的“骨爪”，他用“骨爪”杀死了罗根，罗根死前对他说“你是我的儿子”。母亲将小詹姆斯视为怪物，他当晚跑出了家门，跟随他一起离开的还有他同父异母的哥哥维克多，也就是后来的剑齿虎。<br></p>', '20121009', 1);
INSERT INTO `film` VALUES (3, '金刚狼2', '1612449101349.jpg', '加文·胡德', '休·杰克曼', '美国', '2', '3', '<p>1845年的加拿大某庄园，那时候的金刚狼还是个6、7岁的小男孩，体弱多病，他的名字是詹姆斯，疼爱他的父亲叫他吉米，悲剧发生在某一天晚上，园丁罗根杀死了父亲，丧父之痛激发了小詹姆斯体内的奇特能力，从他身体里长出了由骨骼形成的“骨爪”，他用“骨爪”杀死了罗根，罗根死前对他说“你是我的儿子”。母亲将小詹姆斯视为怪物，他当晚跑出了家门，跟随他一起离开的还有他同父异母的哥哥维克多，也就是后来的剑齿虎。<br></p>', '20120908', 0);
INSERT INTO `film` VALUES (5, '金刚狼3', '1612449982152.jpg', '加文·胡德', '休·杰克曼', '美国', '1', '3', '<p>1845年的加拿大某庄园，那时候的金刚狼还是个6、7岁的小男孩，体弱多病，他的名字是詹姆斯，疼爱他的父亲叫他吉米，悲剧发生在某一天晚上，园丁罗根杀死了父亲，丧父之痛激发了小詹姆斯体内的奇特能力，从他身体里长出了由骨骼形成的“骨爪”，他用“骨爪”杀死了罗根，罗根死前对他说“你是我的儿子”。母亲将小詹姆斯视为怪物，他当晚跑出了家门，跟随他一起离开的还有他同父异母的哥哥维克多，也就是后来的剑齿虎。<br></p>', '20080907', 0);

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `type_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  `value` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典名',
  `label` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典值',
  `description` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `create_by` int NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `update_by` int NULL DEFAULT NULL,
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES (1, 'gender', '1', '男', '性别', NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (2, 'gender', '2', '女', '性别', NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (3, 'orderStatus', '1', '未付款', '订单状态', NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (4, 'orderStatus', '2', '待付款', '订单状态', NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (5, 'orderStatus', '3', '已付款', '订单状态', NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (6, 'orderStatus', '4', '已收货', '订单状态', NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (7, 'filmtype', '1', '动作', '类型', NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (8, 'filmtype', '2', '剧情', '类型', NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (9, 'filmtype', '3', '情感', '类型', NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (10, 'filmtype', '4', '记录', '类型', NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (11, 'language', '1', '汉语普通话', '语言', NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (12, 'language', '2', '汉语粤语', '语言', NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (13, 'language', '3', '英语', '语言', NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (14, 'language', '4', '法语', '语言', NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (15, 'userStatus', '1', '正常', '用户状态', NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (16, 'userStatus', '2', '冻结', '用户状态', NULL, NULL, NULL, NULL, '0');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pid` bigint NULL DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `create_by` int NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_by` int NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, 0, '系统管理', NULL, NULL, '&#xe609;', NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_menu` VALUES (2, 1, '控制台', '/a/console', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_menu` VALUES (3, 1, '用户管理', '/a/user/list', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_menu` VALUES (4, 1, '菜单管理', '/a/menu/list', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_menu` VALUES (5, 1, '角色管理', '/a/role/list', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_menu` VALUES (6, 0, '影片管理', NULL, NULL, '&#xe857;', NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_menu` VALUES (7, 6, '图集', '/a/album/list', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_menu` VALUES (14, 6, '影片列表', '/a/film/list', NULL, NULL, NULL, NULL, NULL, NULL, '0');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_by` int NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_by` int NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_role` VALUES (2, '分店管理员', NULL, NULL, NULL, NULL, NULL, '0');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sys_role_id` bigint NULL DEFAULT NULL COMMENT '角色ID',
  `sys_menu_id` bigint NULL DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 111 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色与菜单对应关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (88, 4, 1);
INSERT INTO `sys_role_menu` VALUES (89, 4, 2);
INSERT INTO `sys_role_menu` VALUES (96, 1, 2);
INSERT INTO `sys_role_menu` VALUES (97, 1, 1);
INSERT INTO `sys_role_menu` VALUES (98, 1, 3);
INSERT INTO `sys_role_menu` VALUES (99, 1, 1);
INSERT INTO `sys_role_menu` VALUES (100, 1, 4);
INSERT INTO `sys_role_menu` VALUES (101, 1, 1);
INSERT INTO `sys_role_menu` VALUES (102, 1, 5);
INSERT INTO `sys_role_menu` VALUES (103, 1, 1);
INSERT INTO `sys_role_menu` VALUES (104, 1, 7);
INSERT INTO `sys_role_menu` VALUES (105, 1, 6);
INSERT INTO `sys_role_menu` VALUES (106, 1, 14);
INSERT INTO `sys_role_menu` VALUES (107, 1, 6);
INSERT INTO `sys_role_menu` VALUES (108, 2, 7);
INSERT INTO `sys_role_menu` VALUES (109, 2, 6);
INSERT INTO `sys_role_menu` VALUES (110, 2, 14);
INSERT INTO `sys_role_menu` VALUES (111, 2, 6);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint NULL DEFAULT NULL,
  `create_by` int NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_by` int NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', NULL, '$2a$10$7YeyQKrlX/lTktWAOKmqD.3t6.iPMuEKBZ2TOnFe4ei9AESHkWG12', '1104975916@qq.com', '15250420158', 1, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_user` VALUES (2, 'tony', 'tony', '$2a$10$Obxwu29fB.FXvlNB9tXMHOQZzwZh4MkqsMbGktwJzYCNCZYIMD1ra', '1918082411@qq.com', '15250420158', 1, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_user` VALUES (3, 'edwarder', '蓝莲花', '$2a$10$jk434mfu4vInG7cIDu57ZuRgt.Q92mbZTfFFU1M2KOsb36KkdVPO.', '110495916@qq.com', '15250420158', 1, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_user` VALUES (4, 'zhangsan', '张三', '$2a$10$77MrQYpbWfIJHUIzTLNmq.pBw.mctOpOGEv08ZPCB8hHfXvg0KImG', '1', '15250420158', 1, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_user` VALUES (5, 'ztc', 'zhangtianci', '$2a$10$oRTxpcnf5L62IbAlZqVLvOKCI66IeCM5Z06zfOyejJOMxPCkHnBYK', '123456@167.com', '1234567', 1, NULL, NULL, NULL, NULL, '0');
INSERT INTO `sys_user` VALUES (6, 'wangwu', '王五', '$2a$10$w5zR.PvUslsDbK7V359kFeXTQzi9FfOlpKeCbreybwI9a0SJPEpnK', '12399004@163.com', '13456677', 2, NULL, NULL, NULL, NULL, '0');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sys_user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `sys_role_id` int NULL DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与角色对应关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1, 1);
INSERT INTO `sys_user_role` VALUES (11, 2, 2);
INSERT INTO `sys_user_role` VALUES (17, 3, 1);
INSERT INTO `sys_user_role` VALUES (22, 5, NULL);
INSERT INTO `sys_user_role` VALUES (23, 5, 2);
INSERT INTO `sys_user_role` VALUES (24, 4, 1);
INSERT INTO `sys_user_role` VALUES (25, 4, 2);
INSERT INTO `sys_user_role` VALUES (30, 6, NULL);
INSERT INTO `sys_user_role` VALUES (31, 6, 2);

SET FOREIGN_KEY_CHECKS = 1;
