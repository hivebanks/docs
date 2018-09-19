/*
Navicat MySQL Data Transfer

Source Server         : test.fnying.com
Source Server Version : 50637
Source Host           : localhost:3306
Source Database       : hb_test

Target Server Type    : MYSQL
Target Server Version : 50637
File Encoding         : 65001

Date: 2018-07-12 15:42:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for us_bind
-- ----------------------------
DROP TABLE IF EXISTS `us_bind`;
CREATE TABLE `us_bind` (
  `bind_id` char(36) CHARACTER SET ascii NOT NULL COMMENT '绑定ID',
  `us_id` char(36) CHARACTER SET ascii NOT NULL COMMENT '用户ID',
  `bind_type` char(4) CHARACTER SET ascii NOT NULL COMMENT '绑定类型',
  `bind_name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '绑定名称',
  `bind_info` text NOT NULL COMMENT '绑定内容',
  `bind_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '绑定标志',
  `utime` int(11) DEFAULT '0' COMMENT '更新时间',
  `ctime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`bind_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='用户绑定信息表';
