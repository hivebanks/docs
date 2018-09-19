/*
Navicat MySQL Data Transfer

Source Server         : test.fnying.com
Source Server Version : 50637
Source Host           : localhost:3306
Source Database       : hb_test

Target Server Type    : MYSQL
Target Server Version : 50637
File Encoding         : 65001

Date: 2018-07-12 15:08:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for us_ba_withdraw_request
-- ----------------------------
DROP TABLE IF EXISTS `us_ba_withdraw_request`;
CREATE TABLE `us_ba_withdraw_request` (
  `qa_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '请求ID',
  `us_id` char(36) CHARACTER SET ascii NOT NULL COMMENT '用户ID',
  `ba_id` char(36) CHARACTER SET ascii NOT NULL COMMENT '代理商ID',
  `asset_id` varchar(36) CHARACTER SET ascii NOT NULL COMMENT '提现资产ID',
  `account_id` varchar(36) CHARACTER SET ascii NOT NULL COMMENT '提现账号ID',
  `bit_amount` decimal(30,16) NOT NULL DEFAULT '0.0000000000000000' COMMENT '数字货币金额',
  `base_amount` decimal(30,16) NOT NULL DEFAULT '0.0000000000000000' COMMENT '提现资产金额',
  `qa_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '请求状态',
  `tx_hash` char(64) CHARACTER SET ascii DEFAULT NULL COMMENT '交易HASH',
  `tx_type` char(10) CHARACTER SET ascii NOT NULL COMMENT '交易类型',
  `tx_detail` text COMMENT '交易明细（JSON）',
  `tx_fee` decimal(30,4) DEFAULT '0.0000' COMMENT '交易手续费',
  `tx_time` int(11) DEFAULT '0' COMMENT '请求时间戳',
  PRIMARY KEY (`qa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='用户数字资产提现请求';
