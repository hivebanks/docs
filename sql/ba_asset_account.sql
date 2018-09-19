/*
Navicat MySQL Data Transfer

Source Server         : testhb
Source Server Version : 50722
Source Host           : 47.254.40.100:3306
Source Database       : ba_new_hivebanks

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-07-12 11:17:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ba_asset_account
-- ----------------------------
DROP TABLE IF EXISTS `ba_asset_account`;
CREATE TABLE `ba_asset_account` (
  `account_id` char(36) CHARACTER SET ascii NOT NULL COMMENT '账号ID',
  `ba_id` char(36) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT '用户ID',
  `batch_id` varchar(36) CHARACTER SET ascii DEFAULT '' COMMENT '生产批号',
  `bit_type` varchar(36) CHARACTER SET ascii NOT NULL COMMENT '数字货币类型',
  `bit_address` varchar(512) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT '数字货币地址',
  `bind_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '绑定标志',
  `bind_us_id` char(36) CHARACTER SET ascii DEFAULT NULL COMMENT '绑定用户ID',
  `bind_hash` char(64) CHARACTER SET ascii DEFAULT NULL COMMENT '绑定Hash',
  `utime` int(11) DEFAULT '0' COMMENT '更新时间',
  `ctime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`account_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='BA数字资产外部账号';
