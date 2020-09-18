/*
 Navicat Premium Data Transfer

 Source Server         : s1.server.52admin.net
 Source Server Type    : MySQL
 Source Server Version : 50647
 Source Host           : s1.server.52admin.net:33061
 Source Schema         : questionnaire

 Target Server Type    : MySQL
 Target Server Version : 50647
 File Encoding         : 65001

 Date: 30/01/2020 19:02:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

use homestead;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `a_username` varchar(25) NOT NULL COMMENT '用户名',
  `a_password` varchar(40) NOT NULL COMMENT '密码',
  `status` tinyint(4) NOT NULL default '0' COMMENT '状态',
  `create_time` bigint(20) NOT NULL default '0' COMMENT '创建时间',
  `update_time` bigint(20) NOT NULL default '0' COMMENT '更新时间',
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of admin
-- ----------------------------
BEGIN;
INSERT INTO `admin` VALUES (1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997',1,unix_timestamp(now()),unix_timestamp(now()));
COMMIT;

-- ----------------------------
-- Table structure for ads
-- ----------------------------
DROP TABLE IF EXISTS `ads`;
CREATE TABLE `ads` (
  `ad_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `naire_id` bigint(20) NOT NULL COMMENT '问卷ID',
  `ad_name` varchar(255) NOT NULL COMMENT '广告名称',
  `ad_url` varchar(255) NOT NULL COMMENT '广告图片地址',
  `ad_href` varchar(255) NOT NULL COMMENT '广告外链',
  `ad_target` int(1) NOT NULL COMMENT '广告打开方式，0本窗口，1新窗口',
  `status` tinyint(4) NOT NULL default '0' COMMENT '状态',
  `create_time` bigint(20) NOT NULL default '0' COMMENT '创建时间',
  `update_time` bigint(20) NOT NULL default '0' COMMENT '更新时间',
  PRIMARY KEY (`ad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='广告表';

-- ----------------------------
-- Table structure for configs
-- ----------------------------
DROP TABLE IF EXISTS `configs`;
CREATE TABLE `configs` (
  `config_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `config_name` varchar(255) NOT NULL COMMENT '配置名称',
  `config_val` text NOT NULL COMMENT '配置的值',
  `config_comments` text NOT NULL COMMENT '配置说明',
  `status` tinyint(4) NOT NULL default '0' COMMENT '状态',
  `create_time` bigint(20) NOT NULL default '0' COMMENT '创建时间',
  `update_time` bigint(20) NOT NULL default '0' COMMENT '更新时间',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of configs
-- ----------------------------
BEGIN;
INSERT INTO `configs` VALUES (1, 'smtp_sending', '0', '0未在任务中，1在任务中',1,unix_timestamp(now()),unix_timestamp(now()));
COMMIT;

-- ----------------------------
-- Table structure for naire
-- ----------------------------
DROP TABLE IF EXISTS `naire`;
CREATE TABLE `naire` (
  `naire_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '问卷id',
  `admin_id` bigint(20) NOT NULL COMMENT '管理员id',
  `n_createtime` bigint(20) NOT NULL COMMENT '创建时间',
  `n_deadline` varchar(14) NOT NULL COMMENT '截止时间',
  `n_title` varchar(255) NOT NULL COMMENT '问卷标题',
  `n_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '发布状态',
  `n_intro` text COMMENT '问卷介绍',
  `n_options` text NOT NULL COMMENT '问卷相关配置(JSON)',
  `status` tinyint(4) NOT NULL default '0' COMMENT '状态',
  `update_time` bigint(20) NOT NULL default '0' COMMENT '更新时间',
  PRIMARY KEY (`naire_id`),
  KEY `naire_id` (`naire_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='问卷表';

-- ----------------------------
-- Table structure for options
-- ----------------------------
DROP TABLE IF EXISTS `options`;
CREATE TABLE `options` (
  `options_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '选项ID',
  `o_value` text NOT NULL COMMENT '选项内容',
  `o_desc` varchar(500) NOT NULL COMMENT '选项描述',
  `o_image` varchar(255) NOT NULL COMMENT '选项图片',
  `naire_id` bigint(20) NOT NULL COMMENT '问卷ID',
  `question_id` bigint(20) NOT NULL COMMENT '题目ID',
  `o_isaddtion` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有附加内容',
  `status` tinyint(4) NOT NULL default '0' COMMENT '状态',
  `create_time` bigint(20) NOT NULL default '0' COMMENT '创建时间',
  `update_time` bigint(20) NOT NULL default '0' COMMENT '更新时间',
  PRIMARY KEY (`options_id`),
  KEY `options_id` (`options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='题目选项表';

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `question_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '题目ID',
  `q_content` text NOT NULL COMMENT '题目内容',
  `q_type` varchar(10) NOT NULL COMMENT '题目类型（单选、多选、填空）',
  `naire_id` bigint(20) NOT NULL COMMENT '问卷ID',
  `q_isrequire` tinyint(1) NOT NULL COMMENT '是否为必填项',
  `q_setting` varchar(500) NOT NULL COMMENT '题目配置，如至少选几项等',
  `q_description` text COMMENT '问题描述',
  `status` tinyint(4) NOT NULL default '0' COMMENT '状态',
  `create_time` bigint(20) NOT NULL default '0' COMMENT '创建时间',
  `update_time` bigint(20) NOT NULL default '0' COMMENT '更新时间',
  PRIMARY KEY (`question_id`),
  KEY `question_id` (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='题目表';

-- ----------------------------
-- Table structure for result
-- ----------------------------
DROP TABLE IF EXISTS `result`;
CREATE TABLE `result` (
  `result_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'result_id',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `naire_id` bigint(20) NOT NULL COMMENT '问卷ID',
  `question_id` bigint(20) NOT NULL COMMENT '题目ID',
  `options_id` bigint(20) NOT NULL COMMENT '选项ID',
  `o_addtion` text COMMENT '附加文字',
  `status` tinyint(4) NOT NULL default '0' COMMENT '状态',
  `create_time` bigint(20) NOT NULL default '0' COMMENT '创建时间',
  `update_time` bigint(20) NOT NULL default '0' COMMENT '更新时间',
  PRIMARY KEY (`result_id`),
  UNIQUE KEY `user_id` (`user_id`,`naire_id`,`question_id`,`options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for submit_log
-- ----------------------------
DROP TABLE IF EXISTS `submit_log`;
-- truncate table submit_log;
CREATE TABLE `submit_log` (
  `submit_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '填写时间表',
  `naire_id` bigint(20) NOT NULL COMMENT '问卷ID',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `s_createtime` bigint(20) NOT NULL COMMENT '完成时间',
  `status` tinyint(4) NOT NULL default '0' COMMENT '状态',
  `update_time` bigint(20) NOT NULL default '0' COMMENT '更新时间',
  PRIMARY KEY (`submit_log_id`),
  UNIQUE KEY `naire_id` (`naire_id`,`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for task
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task` (
  `task_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `naire_id` bigint(20) NOT NULL COMMENT '问卷ID',
  `task_status` int(1) NOT NULL DEFAULT '0' COMMENT '发送状态（0未发，1已发，2处理中）',
  `task_createtime` bigint(20) NOT NULL COMMENT '任务创建时间',
  `task_updatetime` bigint(20) NOT NULL COMMENT '任务状态更新时间',
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `u_name` varchar(100) NOT NULL COMMENT '姓名',
  `u_sex` int(1) NOT NULL COMMENT '性别',
  `u_class` varchar(255) NOT NULL COMMENT '部门',
  `u_number` char(10) NOT NULL COMMENT '工号',
  `u_identity` varchar(18) NOT NULL COMMENT '身份证',
  `u_birthday` varchar(8) NOT NULL COMMENT '出生日期',
  `u_nation` varchar(10) NOT NULL COMMENT '民族',
  `u_password` varchar(40) NOT NULL COMMENT '密码',
  `u_tel` varchar(11) NOT NULL COMMENT '手机号',
  `u_email` varchar(255) NOT NULL COMMENT '邮箱',
  `u_status` int(1) NOT NULL DEFAULT '0' COMMENT '用户状态（0正常，1被冻结）',
  `u_active_time` bigint(20) NOT NULL COMMENT '用户最近的活跃时间',
  `create_time` bigint(20) NOT NULL default '0' COMMENT '创建时间',
  `update_time` bigint(20) NOT NULL default '0' COMMENT '更新时间',
  PRIMARY KEY (`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

SET FOREIGN_KEY_CHECKS = 1;
