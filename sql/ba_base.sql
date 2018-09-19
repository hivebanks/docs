/*
Navicat MySQL Data Transfer

Source Server         : testhb
Source Server Version : 50722
Source Host           : 47.254.40.100:3306
Source Database       : ba_new_hivebanks

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-07-12 11:16:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ba_base
-- ----------------------------
DROP TABLE IF EXISTS `ba_base`;
CREATE TABLE `ba_base` (
  `ba_id` char(36) CHARACTER SET ascii NOT NULL COMMENT '代理商ID',
  `ba_nm` int(11) unsigned DEFAULT '0' COMMENT '代理商编号（内部唯一）',
  `ba_account` varchar(50) CHARACTER SET ascii DEFAULT '' COMMENT '代理商表示账号（内部唯一）',
  `base_amount` decimal(16,0) unsigned NOT NULL DEFAULT '0' COMMENT '基准资产余额',
  `lock_amount` decimal(16,0) unsigned NOT NULL DEFAULT '0' COMMENT '锁定余额',
  `ba_type` varchar(50) CHARACTER SET ascii DEFAULT '' COMMENT '代理商类型',
  `ba_level` tinyint(4) NOT NULL DEFAULT '0' COMMENT '代理商等级',
  `security_level` tinyint(4) DEFAULT '0' COMMENT '安全等级',
  `utime` int(11) DEFAULT '0' COMMENT '更新时间',
  `ctime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`ba_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='BA主表';
