/*
Navicat MySQL Data Transfer

Source Server         : testhb
Source Server Version : 50722
Source Host           : 47.254.40.100:3306
Source Database       : new_hivebanks

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-07-12 11:19:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for us_log_login_fail
-- ----------------------------
DROP TABLE IF EXISTS `us_log_login_fail`;
CREATE TABLE `us_log_login_fail` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `us_id` char(36) CHARACTER SET ascii NOT NULL COMMENT '用户ID',
  `us_ip` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户IP地址',
  `lgn_type` char(10) CHARACTER SET ascii NOT NULL COMMENT '登录类型',
  `count_error` tinyint(4) DEFAULT '0' COMMENT '登录错误次数',
  `limt_time` int(11) DEFAULT '0' COMMENT '限制时间戳',
  `ctime` datetime DEFAULT NULL COMMENT '错误时间',
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=292 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='用户登录失败记录';
