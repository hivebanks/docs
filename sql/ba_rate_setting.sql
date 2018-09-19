/*
Navicat MySQL Data Transfer

Source Server         : testhb
Source Server Version : 50722
Source Host           : 47.254.40.100:3306
Source Database       : ba_new_hivebanks

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-07-12 11:15:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ba_rate_setting
-- ----------------------------
DROP TABLE IF EXISTS `ba_rate_setting`;
CREATE TABLE `ba_rate_setting` (
  `set_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '设定ID',
  `ba_id` char(36) CHARACTER SET ascii NOT NULL COMMENT '代理商ID',
  `bit_type` varchar(50) CHARACTER SET ascii DEFAULT NULL COMMENT '代理数字货币类型',
  `rate_type` tinyint(1) DEFAULT '0' COMMENT '汇率类型 1 充值 2 提现',
  `base_rate` decimal(30,16) DEFAULT '1.0000000000000000' COMMENT '基本汇率',
  `tx_fee` decimal(30,4) DEFAULT '0.0000' COMMENT '交易手续费率',
  `min_amount` decimal(30,16) NOT NULL DEFAULT '0.0000000000000000' COMMENT '最小额度',
  `max_amount` decimal(30,16) NOT NULL DEFAULT '0.0000000000000000' COMMENT '最大额度',
  `us_level` tinyint(4) NOT NULL DEFAULT '0' COMMENT '用户等级要求',
  `limit_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `set_time` int(11) DEFAULT '0' COMMENT '设定时间戳',
  PRIMARY KEY (`set_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='BA汇率设定表';
