/*
Navicat MySQL Data Transfer

Source Server         : testhb
Source Server Version : 50722
Source Host           : 47.254.40.100:3306
Source Database       : new_hivebanks

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-07-12 11:19:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for us_log_login
-- ----------------------------
DROP TABLE IF EXISTS `us_log_login`;
CREATE TABLE `us_log_login` (
  `hash_id` char(64) CHARACTER SET ascii NOT NULL COMMENT 'HASH值',
  `prvs_hash` char(64) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT '上一HASH值',
  `us_id` char(36) CHARACTER SET ascii NOT NULL COMMENT '用户ID',
  `lgn_type` char(10) CHARACTER SET ascii NOT NULL COMMENT '登录类型',
  `us_ip` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户IP地址',
  `ip_area` varchar(255) DEFAULT NULL COMMENT 'IP地区',
  `utime` int(11) DEFAULT '0' COMMENT '更新时间戳',
  `ctime` datetime DEFAULT NULL COMMENT '提交时间',
  PRIMARY KEY (`hash_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户登录记录';
