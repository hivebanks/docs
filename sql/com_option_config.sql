/*
Navicat MySQL Data Transfer

Source Server         : testhb
Source Server Version : 50722
Source Host           : 47.254.40.100:3306
Source Database       : ba_new_hivebanks

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-07-12 11:15:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for com_option_config
-- ----------------------------
DROP TABLE IF EXISTS `com_option_config`;
CREATE TABLE `com_option_config` (
  `option_name` varchar(255) CHARACTER SET ascii NOT NULL COMMENT '选项名称',
  `option_key` varchar(255) CHARACTER SET ascii NOT NULL COMMENT '选项关键字',
  `option_value` varchar(255) NOT NULL COMMENT '选项内容',
  `option_sort` decimal(30,16) NOT NULL DEFAULT '0.0000000000000000' COMMENT '选项排序',
  `sub_id` char(2) CHARACTER SET ascii NOT NULL DEFAULT 'US' COMMENT '模块ID',
  PRIMARY KEY (`option_name`,`option_key`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='共通选项配置表';
