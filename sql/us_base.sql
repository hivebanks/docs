/*
Navicat MySQL Data Transfer

Source Server         : test.fnying.com
Source Server Version : 50637
Source Host           : localhost:3306
Source Database       : hb_test

Target Server Type    : MYSQL
Target Server Version : 50637
File Encoding         : 65001

Date: 2018-07-12 15:42:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for us_base
-- ----------------------------
DROP TABLE IF EXISTS `us_base`;
CREATE TABLE `us_base` (
  `us_id` char(36) CHARACTER SET ascii NOT NULL COMMENT '用户ID',
  `us_nm` int(11) unsigned DEFAULT '0' COMMENT '用户编号（内部唯一）',
  `us_account` varchar(50) CHARACTER SET ascii DEFAULT '' COMMENT '用户账号（内部唯一）',
  `base_amount` decimal(16,0) unsigned NOT NULL DEFAULT '0' COMMENT '基准资产余额',
  `lock_amount` decimal(16,0) unsigned NOT NULL DEFAULT '0' COMMENT '锁定余额',
  `us_type` varchar(50) CHARACTER SET ascii DEFAULT '' COMMENT '用户类型',
  `us_level` tinyint(4) NOT NULL DEFAULT '0' COMMENT '用户等级',
  `security_level` tinyint(4) DEFAULT '0' COMMENT '安全等级',
  `utime` int(11) DEFAULT '0' COMMENT '更新时间',
  `ctime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`us_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户主表';
