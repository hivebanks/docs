/*
Navicat MySQL Data Transfer

Source Server         : testhb
Source Server Version : 50722
Source Host           : 47.254.40.100:3306
Source Database       : ba_new_hivebanks

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-07-12 11:17:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for com_base_balance
-- ----------------------------
DROP TABLE IF EXISTS `com_base_balance`;
CREATE TABLE `com_base_balance` (
  `hash_id` char(64) CHARACTER SET ascii NOT NULL COMMENT 'HASH值',
  `prvs_hash` char(64) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT '借方上次交易HASH值',
  `tx_id` char(64) CHARACTER SET ascii DEFAULT NULL COMMENT '交易ID（借贷双方同）',
  `credit_id` char(36) CHARACTER SET ascii NOT NULL COMMENT '借方ID',
  `debit_id` char(36) CHARACTER SET ascii NOT NULL COMMENT '贷方ID',
  `tx_type` char(10) CHARACTER SET ascii NOT NULL COMMENT '交易类型',
  `tx_amount` decimal(16,0) NOT NULL DEFAULT '0' COMMENT '交易金额',
  `credit_balance` decimal(16,0) NOT NULL DEFAULT '0' COMMENT '借方交易后余额',
  `utime` int(11) DEFAULT '0' COMMENT '变动时间戳',
  `ctime` datetime DEFAULT NULL COMMENT '变动时间',
  PRIMARY KEY (`hash_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='基准资产变动记录';
