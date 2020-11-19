/*
 Navicat Premium Data Transfer

 Source Server         : MySql
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : powersystemdb

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 19/11/2020 14:23:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ps_function
-- ----------------------------
DROP TABLE IF EXISTS `ps_function`;
CREATE TABLE `ps_function`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `functionCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `functionName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `creationTime` datetime(0) NOT NULL DEFAULT '2013-01-01 00:00:01',
  `createdBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lastUpdateTime` datetime(0) NULL DEFAULT '2013-01-01 00:00:01',
  `funcUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `isStart` int(0) NULL DEFAULT 1 COMMENT '1为启用0为不启用',
  `parentId` int(0) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ps_function
-- ----------------------------
INSERT INTO `ps_function` VALUES (1, '1', '系统管理', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:01:31', NULL, 0, 1);
INSERT INTO `ps_function` VALUES (2, '2', '塔杆管理', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:01:31', NULL, 0, 1);
INSERT INTO `ps_function` VALUES (3, '3', '线路管理', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:01:31', NULL, 0, 1);
INSERT INTO `ps_function` VALUES (4, '4', '缺陷管理', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:01:31', NULL, 0, 1);
INSERT INTO `ps_function` VALUES (5, '5', '巡查任务管理', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:01:31', NULL, 0, 1);
INSERT INTO `ps_function` VALUES (6, '6', '消缺任务管理', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:01:31', NULL, 0, 1);
INSERT INTO `ps_function` VALUES (7, '7', '信息统计', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:01:31', NULL, 0, 1);
INSERT INTO `ps_function` VALUES (8, '8', '角色管理', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:01:31', NULL, 1, 1);
INSERT INTO `ps_function` VALUES (9, '9', '用户管理', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:01:31', NULL, 1, 1);
INSERT INTO `ps_function` VALUES (10, '10', '角色权限管理', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:01:31', NULL, 1, 1);
INSERT INTO `ps_function` VALUES (11, '11', '系统配置', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:01:31', NULL, 0, 1);
INSERT INTO `ps_function` VALUES (12, '12', '缺陷类型设置', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:01:31', NULL, 4, 1);
INSERT INTO `ps_function` VALUES (13, '13', '缺陷等级确认', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:01:31', NULL, 4, 1);
INSERT INTO `ps_function` VALUES (14, '14', '巡检任务定制与分配', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:01:31', NULL, 5, 1);
INSERT INTO `ps_function` VALUES (15, '15', '巡检任务执行与回执', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:01:31', NULL, 5, 1);
INSERT INTO `ps_function` VALUES (16, '16', '缺陷查询', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:01:31', NULL, 5, 1);
INSERT INTO `ps_function` VALUES (17, '17', '缺陷任务定制与分配', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:01:31', NULL, 6, 1);
INSERT INTO `ps_function` VALUES (18, '18', '缺陷任务执行与回执', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:01:31', NULL, 6, 1);
INSERT INTO `ps_function` VALUES (19, '19', '消缺查询', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:01:31', NULL, 6, 1);
INSERT INTO `ps_function` VALUES (20, '20', '巡查记录统计', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:01:31', NULL, 7, 1);
INSERT INTO `ps_function` VALUES (21, '21', '消缺记录统计', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:01:31', NULL, 7, 1);
INSERT INTO `ps_function` VALUES (22, '22', '添加角色', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:01:31', NULL, 8, 1);
INSERT INTO `ps_function` VALUES (23, '23', '修改角色', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:01:31', NULL, 8, 1);
INSERT INTO `ps_function` VALUES (24, '24', '删除角色', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:01:31', NULL, 8, 1);
INSERT INTO `ps_function` VALUES (25, '25', '角色状态', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:01:31', NULL, 8, 1);
INSERT INTO `ps_function` VALUES (26, '26', '添加用户', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:01:31', NULL, 9, 1);
INSERT INTO `ps_function` VALUES (27, '27', '修改用户', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:01:31', NULL, 9, 1);
INSERT INTO `ps_function` VALUES (28, '28', '删除用户', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:01:31', NULL, 9, 1);
INSERT INTO `ps_function` VALUES (29, '29', '用户状态', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:01:31', NULL, 9, 1);
INSERT INTO `ps_function` VALUES (30, '20', '用户log查看', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:01:31', NULL, 9, 1);

-- ----------------------------
-- Table structure for ps_inspectiontask_detail
-- ----------------------------
DROP TABLE IF EXISTS `ps_inspectiontask_detail`;
CREATE TABLE `ps_inspectiontask_detail`  (
  `id` int(0) UNSIGNED NOT NULL COMMENT '主键ID',
  `taskId` int(0) NOT NULL COMMENT '主表任务ID',
  `poleId` int(0) NOT NULL COMMENT '杆塔ID',
  `poleCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lineCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lineName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `isBug` int(0) NOT NULL DEFAULT 1 COMMENT '有无缺陷/故障，1、有，0、无',
  `intactRate` double NOT NULL COMMENT '完好率',
  `bugLevel` int(0) NOT NULL COMMENT '缺陷级别ID',
  `bugLevelName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `bugType` int(0) NOT NULL COMMENT '缺陷类型ID',
  `bugTypeName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `bugDesc` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `discovererCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `discovererName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `discoverTime` datetime(0) NOT NULL COMMENT '发现时间',
  `isSolve` int(0) NOT NULL DEFAULT 0 COMMENT '是否消缺，1、是，0、否',
  `inspectTime` datetime(0) NULL DEFAULT NULL COMMENT '巡检时间',
  `creationTime` datetime(0) NOT NULL COMMENT '创建时间',
  `createdBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lastUpdateTime` datetime(0) NULL DEFAULT '2013-01-01 00:00:01' COMMENT '最后修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ps_inspectiontask_detail
-- ----------------------------

-- ----------------------------
-- Table structure for ps_inspectiontask_main
-- ----------------------------
DROP TABLE IF EXISTS `ps_inspectiontask_main`;
CREATE TABLE `ps_inspectiontask_main`  (
  `id` int(0) UNSIGNED NOT NULL COMMENT '主键ID',
  `ps__id` int(0) NULL DEFAULT NULL COMMENT '主键ID',
  `inspectionTaskCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `inspectionTaskName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lineId` int(0) NOT NULL COMMENT '所属线路ID',
  `lineCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lineName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `startPole` int(0) NOT NULL COMMENT '起始杆号ID',
  `startPoleCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `endPole` int(0) NOT NULL COMMENT '终止杆号ID',
  `endPoleCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `issuedByCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `issuedByName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `issuedTime` datetime(0) NOT NULL COMMENT '任务下发时间',
  `taskStatus` int(0) NOT NULL COMMENT '任务状态ID',
  `taskStatusName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `finishTime` datetime(0) NOT NULL COMMENT '任务完成时间',
  `common` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `creationTime` datetime(0) NOT NULL COMMENT '创建时间',
  `createdBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lastUpdateTime` datetime(0) NULL DEFAULT '2013-01-01 00:00:01' COMMENT '最后修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ps_inspectiontask_main
-- ----------------------------
INSERT INTO `ps_inspectiontask_main` VALUES (3, NULL, 'RW0235', '西魏一线任务巡查', 4, NULL, NULL, 1, NULL, 123, NULL, NULL, '线路管理员张三', '2020-06-01 00:00:00', 2, '待分配', '2020-06-02 00:00:00', NULL, '2020-06-10 00:00:00', '否', '2013-01-01 00:00:01');
INSERT INTO `ps_inspectiontask_main` VALUES (4, NULL, 'RW0236', '西魏一线任务巡查', 4, NULL, NULL, 1, NULL, 123, NULL, NULL, '线路管理员张三', '2020-06-01 00:00:00', 2, '待分配', '2020-06-02 00:00:00', NULL, '2020-06-10 00:00:00', '否', '2013-01-01 00:00:01');
INSERT INTO `ps_inspectiontask_main` VALUES (5, NULL, 'RW0237', '西魏一线任务巡查', 4, NULL, NULL, 1, NULL, 123, NULL, NULL, '线路管理员张三', '2020-06-01 00:00:00', 2, '待分配', '2020-06-02 00:00:00', NULL, '2020-06-10 00:00:00', '否', '2013-01-01 00:00:01');
INSERT INTO `ps_inspectiontask_main` VALUES (6, NULL, 'RW0238', '西魏一线任务巡查', 4, NULL, NULL, 1, NULL, 123, NULL, NULL, '线路管理员张三', '2020-06-01 00:00:00', 2, '待分配', '2020-06-02 00:00:00', NULL, '2020-06-10 00:00:00', '否', '2013-01-01 00:00:01');
INSERT INTO `ps_inspectiontask_main` VALUES (7, NULL, 'RW0239', '西魏一线任务巡查', 4, NULL, NULL, 1, NULL, 123, NULL, NULL, '线路管理员张三', '2020-06-01 00:00:00', 2, '待分配', '2020-06-02 00:00:00', NULL, '2020-06-10 00:00:00', '否', '2013-01-01 00:00:01');
INSERT INTO `ps_inspectiontask_main` VALUES (8, NULL, 'RW0240', '西魏一线任务巡查', 4, NULL, NULL, 1, NULL, 123, NULL, NULL, '线路管理员张三', '2020-06-01 00:00:00', 2, '待分配', '2020-06-02 00:00:00', NULL, '2020-06-10 00:00:00', '否', '2013-01-01 00:00:01');
INSERT INTO `ps_inspectiontask_main` VALUES (9, NULL, 'RW0241', '西魏一线任务巡查', 4, NULL, NULL, 1, NULL, 123, NULL, NULL, '线路管理员张三', '2020-06-01 00:00:00', 2, '待分配', '2020-06-02 00:00:00', NULL, '2020-06-10 00:00:00', '否', '2013-01-01 00:00:01');
INSERT INTO `ps_inspectiontask_main` VALUES (10, NULL, 'RW0242', '西魏一线任务巡查', 4, NULL, NULL, 1, NULL, 123, NULL, NULL, '线路管理员张三', '2020-06-01 00:00:00', 2, '待分配', '2020-06-02 00:00:00', NULL, '2020-06-10 00:00:00', '否', '2013-01-01 00:00:01');
INSERT INTO `ps_inspectiontask_main` VALUES (11, NULL, 'RW0233', '西魏一线任务巡查', 4, NULL, NULL, 1, NULL, 123, NULL, NULL, '线路管理员张三', '2020-06-01 00:00:00', 2, '待分配', '2020-06-02 00:00:00', NULL, '2020-06-10 00:00:00', '否', '2013-01-01 00:00:01');

-- ----------------------------
-- Table structure for ps_inspector_detail
-- ----------------------------
DROP TABLE IF EXISTS `ps_inspector_detail`;
CREATE TABLE `ps_inspector_detail`  (
  `id` int(0) UNSIGNED NOT NULL COMMENT '主键ID',
  `taskId` int(0) NOT NULL COMMENT '主表任务ID',
  `inspectorCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `inspectorName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `creationTime` datetime(0) NOT NULL COMMENT '创建时间',
  `createdBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lastUpdateTime` datetime(0) NULL DEFAULT '2013-01-01 00:00:01' COMMENT '最后修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ps_inspector_detail
-- ----------------------------

-- ----------------------------
-- Table structure for ps_line_info
-- ----------------------------
DROP TABLE IF EXISTS `ps_line_info`;
CREATE TABLE `ps_line_info`  (
  `id` int(0) UNSIGNED NOT NULL,
  `lineCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '线路编号',
  `lineName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '线路名称',
  `lineLength` double NULL DEFAULT NULL COMMENT '线路长度',
  `backLength` double NULL DEFAULT NULL COMMENT '回路长度',
  `productDate` date NULL DEFAULT NULL COMMENT '投运时间',
  `voltageLevel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电压等级',
  `startPole` int(0) NULL DEFAULT NULL COMMENT '起始杆号ID',
  `startPoleCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '起始杆号CODE',
  `endPole` int(0) NULL DEFAULT NULL COMMENT '终止杆号ID',
  `endPoleCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '终止杆号CODE',
  `towerBaseNum` int(0) NULL DEFAULT NULL COMMENT '塔基数',
  `maintenanceCompany` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '维修单位',
  `runningStatus` int(0) NULL DEFAULT NULL COMMENT '运行状态id',
  `runningStatusName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '运行状态name',
  `common` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '备注',
  `isStart` int(0) NOT NULL DEFAULT 1 COMMENT '是否启用（1、启用0、不启用）',
  `creationTime` datetime(0) NULL DEFAULT NULL,
  `createdBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lastUpdateTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ps_line_info
-- ----------------------------

-- ----------------------------
-- Table structure for ps_logs
-- ----------------------------
DROP TABLE IF EXISTS `ps_logs`;
CREATE TABLE `ps_logs`  (
  `id` int(0) UNSIGNED NOT NULL,
  `userCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `userName` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `operateInfo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `operateDatetime` datetime(0) NOT NULL DEFAULT '2012-01-01 00:01:01',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ps_logs
-- ----------------------------

-- ----------------------------
-- Table structure for ps_pole_info
-- ----------------------------
DROP TABLE IF EXISTS `ps_pole_info`;
CREATE TABLE `ps_pole_info`  (
  `id` int(0) UNSIGNED NOT NULL COMMENT '杆塔主键ID',
  `poleCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lineId` int(0) NOT NULL COMMENT '所属线路ID',
  `lineCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lineName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `creationTime` datetime(0) NOT NULL COMMENT '创建时间',
  `createdBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lastUpdateTime` datetime(0) NULL DEFAULT '2013-01-01 00:00:01' COMMENT '最后修改时间',
  `isStart` int(0) NULL DEFAULT 1 COMMENT '是否启用1为启用0为不启用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ps_pole_info
-- ----------------------------

-- ----------------------------
-- Table structure for ps_role
-- ----------------------------
DROP TABLE IF EXISTS `ps_role`;
CREATE TABLE `ps_role`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '角色主键ID',
  `roleName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `creationTime` datetime(0) NOT NULL COMMENT '创建时间',
  `createdBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lastUpdateTime` datetime(0) NULL DEFAULT '2013-01-01 00:00:01' COMMENT '最后修改时间',
  `isStart` int(0) NULL DEFAULT 1 COMMENT '是否启用1为启用0为不启用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ps_role
-- ----------------------------
INSERT INTO `ps_role` VALUES (1, '张三', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:03:14', 1);
INSERT INTO `ps_role` VALUES (2, '李四', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:03:14', 1);
INSERT INTO `ps_role` VALUES (3, '王二', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:03:14', 1);
INSERT INTO `ps_role` VALUES (4, '麻子', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:03:14', 1);
INSERT INTO `ps_role` VALUES (5, '邱常宽', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:03:14', 1);
INSERT INTO `ps_role` VALUES (6, '小白菜', '2020-06-10 15:03:14', 'admin', '2020-06-10 15:03:14', 1);
INSERT INTO `ps_role` VALUES (7, '巡查任务管理员', '2020-09-10 14:06:33', '邱常宽', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role` VALUES (8, '巡查任务管理员', '2020-10-07 14:07:09', '李家辉', '2013-01-01 00:00:01', 1);

-- ----------------------------
-- Table structure for ps_role_premission
-- ----------------------------
DROP TABLE IF EXISTS `ps_role_premission`;
CREATE TABLE `ps_role_premission`  (
  `id` int(0) UNSIGNED NOT NULL COMMENT '主键ID',
  `ps__id` int(0) NULL DEFAULT NULL,
  `roleId` int(0) NOT NULL COMMENT '角色ID',
  `functionCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `creationTime` datetime(0) NOT NULL COMMENT '创建时间',
  `createdBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lastUpdateTime` datetime(0) NULL DEFAULT '2013-01-01 00:00:01' COMMENT '最后修改时间',
  `isStart` int(0) NULL DEFAULT 1 COMMENT '1为启用0为不启用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ps_role_premission
-- ----------------------------
INSERT INTO `ps_role_premission` VALUES (9, NULL, 7, '8', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (10, NULL, 3, '9', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (11, NULL, 4, '10', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (12, NULL, 5, '11', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (13, NULL, 6, '12', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (14, NULL, 1, '14', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (15, NULL, 2, '14', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (16, NULL, 3, '16', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (17, NULL, 4, '17', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (18, NULL, 5, '18', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (19, NULL, 6, '19', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (20, NULL, 1, '20', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (21, NULL, 2, '21', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (22, NULL, 3, '22', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (23, NULL, 4, '23', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (24, NULL, 5, '24', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (25, NULL, 6, '25', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (26, NULL, 1, '26', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (27, NULL, 2, '27', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (28, NULL, 3, '28', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (29, NULL, 4, '29', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (30, NULL, 5, '30', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (31, NULL, 6, '31', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (32, NULL, 1, '32', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (33, NULL, 2, '33', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (34, NULL, 3, '34', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (35, NULL, 4, '35', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (36, NULL, 5, '36', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (37, NULL, 6, '37', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (38, NULL, 1, '39', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (40, NULL, 2, '40', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (41, NULL, 3, '41', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (42, NULL, 4, '42', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (43, NULL, 5, '43', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (44, NULL, 6, '44', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (45, NULL, 1, '45', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (46, NULL, 2, '46', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (47, NULL, 3, '47', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (48, NULL, 4, '48', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (49, NULL, 5, '49', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (50, NULL, 6, '50', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (51, NULL, 1, '51', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (52, NULL, 2, '52', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (53, NULL, 3, '53', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (54, NULL, 4, '54', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (55, NULL, 5, '55', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (56, NULL, 6, '56', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (57, NULL, 1, '57', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (58, NULL, 2, '58', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (59, NULL, 3, '59', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (60, NULL, 4, '60', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (61, NULL, 5, '61', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);
INSERT INTO `ps_role_premission` VALUES (62, NULL, 6, '62', '2020-06-08 07:06:47', 'admin', '2013-01-01 00:00:01', 1);

-- ----------------------------
-- Table structure for ps_solver_detail
-- ----------------------------
DROP TABLE IF EXISTS `ps_solver_detail`;
CREATE TABLE `ps_solver_detail`  (
  `id` int(0) UNSIGNED NOT NULL COMMENT '主键ID',
  `ps__id` int(0) NULL DEFAULT NULL COMMENT '主键ID',
  `taskId` int(0) NOT NULL COMMENT '主表任务ID',
  `solverCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `solverName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `creationTime` datetime(0) NOT NULL COMMENT '创建时间',
  `createdBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lastUpdateTime` datetime(0) NULL DEFAULT '2013-01-01 00:00:01' COMMENT '最后修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ps_solver_detail
-- ----------------------------

-- ----------------------------
-- Table structure for ps_solvetask_detail
-- ----------------------------
DROP TABLE IF EXISTS `ps_solvetask_detail`;
CREATE TABLE `ps_solvetask_detail`  (
  `id` int(0) UNSIGNED NOT NULL COMMENT '主键ID',
  `taskId` int(0) NOT NULL COMMENT '主表任务ID',
  `inspectionTaskDelId` int(0) NOT NULL COMMENT '巡检任务子表ID',
  `creationTime` datetime(0) NOT NULL COMMENT '创建时间',
  `createdBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lastUpdateTime` datetime(0) NULL DEFAULT '2013-01-01 00:00:01' COMMENT '最后修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ps_solvetask_detail
-- ----------------------------

-- ----------------------------
-- Table structure for ps_solvetask_main
-- ----------------------------
DROP TABLE IF EXISTS `ps_solvetask_main`;
CREATE TABLE `ps_solvetask_main`  (
  `id` int(0) UNSIGNED NOT NULL COMMENT '主键ID',
  `solveTaskCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `workDocType` int(0) NOT NULL COMMENT '工作单据ID',
  `workDocTypeName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `taskDesc` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `taskManagerCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `taskManagerName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `taskStatus` int(0) NOT NULL COMMENT '任务状态ID',
  `taskStatusName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `finishTime` datetime(0) NOT NULL COMMENT '任务完成时间',
  `common` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `managerSuggestion` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `taskFinishDesc` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `taskFinishReport` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `taskNotes` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `issuedByCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `issuedByName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `issuedTime` datetime(0) NOT NULL COMMENT '任务下发时间',
  `issuedSuggestion` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `creationTime` datetime(0) NOT NULL COMMENT '创建时间',
  `createdBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lastUpdateTime` datetime(0) NULL DEFAULT '2013-01-01 00:00:01' COMMENT '最后修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ps_solvetask_main
-- ----------------------------

-- ----------------------------
-- Table structure for ps_systemconfig
-- ----------------------------
DROP TABLE IF EXISTS `ps_systemconfig`;
CREATE TABLE `ps_systemconfig`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `configCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `configName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `configValueId` int(0) NOT NULL,
  `configValueName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `isStart` int(0) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ps_systemconfig
-- ----------------------------

-- ----------------------------
-- Table structure for ps_user
-- ----------------------------
DROP TABLE IF EXISTS `ps_user`;
CREATE TABLE `ps_user`  (
  `id` int(0) UNSIGNED NOT NULL COMMENT '主键ID',
  `userCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `userName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `userPassword` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `age` int(0) NULL DEFAULT NULL COMMENT '年龄',
  `entryDate` date NULL DEFAULT NULL COMMENT '入职日期',
  `dimissionDate` date NULL DEFAULT NULL COMMENT '离职日期',
  `phoneTel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `creationTime` datetime(0) NOT NULL COMMENT '注册时间',
  `lastLoginTime` datetime(0) NULL DEFAULT '2013-01-01 00:00:01' COMMENT '最后登录时间',
  `createdBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lastUpdateTime` datetime(0) NULL DEFAULT '2013-01-01 00:00:01' COMMENT '最后修改时间',
  `userStatus` int(0) NULL DEFAULT 1 COMMENT '使用状态1为正常0为冻结',
  `roleId` int(0) NOT NULL DEFAULT 0 COMMENT '所属角色',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ps_user
-- ----------------------------
INSERT INTO `ps_user` VALUES (1, 'lb', '李白', 's05bse6q2qlb9qblls96s592y55y556s', '男', 20, '2020-06-10', '2020-12-10', '18868886888', '153236@qq.com', '2020-06-11 15:03:14', '2020-12-09 15:03:14', 'admin', '2020-08-21 15:03:14', 1, 1);
INSERT INTO `ps_user` VALUES (2, 'zf', '张飞', 's05bse6q2qlb9qblls96s592y55y556s', '男', 21, '2020-06-10', '2020-12-10', '18868886888', '153236@qq.com', '2020-06-11 15:03:14', '2020-12-09 15:03:14', 'admin', '2020-08-21 15:03:14', 1, 2);
INSERT INTO `ps_user` VALUES (3, 'zs', '张三', 's05bse6q2qlb9qblls96s592y55y556s', '女', 22, '2020-06-10', '2020-12-10', '18868886888', '153236@qq.com', '2020-06-11 15:03:14', '2020-12-09 15:03:14', 'admin', '2020-08-21 15:03:14', 1, 3);
INSERT INTO `ps_user` VALUES (4, '2', '王二', 's05bse6q2qlb9qblls96s592y55y556s', '男', 23, '2020-06-10', '2020-12-10', '18868886888', '153236@qq.com', '2020-06-11 15:03:14', '2020-12-09 15:03:14', 'admin', '2020-08-21 15:03:14', 1, 8);
INSERT INTO `ps_user` VALUES (5, '1', '麻子', 's05bse6q2qlb9qblls96s592y55y556s', '女', 24, '2020-06-10', '2020-12-10', '18868886888', '153236@qq.com', '2020-06-11 15:03:14', '2020-12-09 15:03:14', 'admin', '2020-08-21 15:03:14', 1, 7);

SET FOREIGN_KEY_CHECKS = 1;
