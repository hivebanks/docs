/*
Navicat MySQL Data Transfer

Source Server         : testhb
Source Server Version : 50722
Source Host           : 47.254.40.100:3306
Source Database       : ba_new_hivebanks

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-07-12 11:16:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ba_bind
-- ----------------------------
DROP TABLE IF EXISTS `ba_bind`;
CREATE TABLE `ba_bind` (
  `bind_id` char(36) CHARACTER SET ascii NOT NULL COMMENT '绑定ID',
  `ba_id` char(36) CHARACTER SET ascii NOT NULL COMMENT '用户ID',
  `bind_type` char(4) CHARACTER SET ascii NOT NULL COMMENT '绑定类型',
  `bind_name` varchar(50) NOT NULL DEFAULT '' COMMENT '绑定名称',
  `bind_info` text CHARACTER SET utf8mb4 NOT NULL COMMENT '绑定内容',
  `bind_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '绑定标志',
  `utime` int(11) DEFAULT '0' COMMENT '更新时间',
  `ctime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`bind_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='BA绑定信息表';
