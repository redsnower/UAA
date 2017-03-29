/*
SQLyog Ultimate v11.27 (32 bit)
MySQL - 5.5.28-log : Database - roncoo_mini_pay_dev
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`roncoo_mini_pay_dev` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `roncoo_mini_pay_dev`;

/*Table structure for table `pms_menu` */

DROP TABLE IF EXISTS `pms_menu`;

CREATE TABLE `pms_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `creater` varchar(50) NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `editor` varchar(50) DEFAULT NULL COMMENT '修改人',
  `edit_time` datetime DEFAULT NULL COMMENT '修改时间',
  `status` varchar(20) NOT NULL,
  `remark` varchar(300) DEFAULT NULL,
  `is_leaf` varchar(20) DEFAULT NULL,
  `level` smallint(6) DEFAULT NULL,
  `parent_id` bigint(20) NOT NULL,
  `target_name` varchar(100) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COMMENT='菜单表';

/*Data for the table `pms_menu` */

insert  into `pms_menu`(`id`,`version`,`creater`,`create_time`,`editor`,`edit_time`,`status`,`remark`,`is_leaf`,`level`,`parent_id`,`target_name`,`number`,`name`,`url`) values (1,0,'roncoo','2016-06-03 11:07:43','admin','2016-06-03 11:07:43','ACTIVE','','NO',1,0,'#','001','权限管理','##'),(2,0,'roncoo','2016-06-03 11:07:43','admin','2016-06-03 11:07:43','ACTIVE','','YES',2,1,'cdgl','00101','菜单管理','pms/menu/list'),(3,0,'roncoo','2016-06-03 11:07:43','admin','2016-06-03 11:07:43','ACTIVE','','YES',2,1,'qxgl','00102','权限管理','pms/permission/list'),(4,0,'roncoo','2016-06-03 11:07:43','admin','2016-06-03 11:07:43','ACTIVE','','YES',2,1,'jsgl','00103','角色管理','pms/role/list'),(5,0,'roncoo','2016-06-03 11:07:43','admin','2016-06-03 11:07:43','ACTIVE','','YES',2,1,'czygl','00104','操作员管理','pms/operator/list'),(10,0,'roncoo','2016-06-03 11:07:43','admin','2016-06-03 11:07:43','ACTIVE','','NO',1,0,'#','002','账户管理','##'),(12,0,'roncoo','2016-06-03 11:07:43','admin','2016-06-03 11:07:43','ACTIVE','','YES',2,10,'zhxx','00201','账户信息','account/list'),(13,0,'roncoo','2016-06-03 11:07:43','admin','2016-06-03 11:07:43','ACTIVE','','YES',2,10,'zhlsxx','00202','账户历史信息','account/historyList'),(20,0,'roncoo','2016-06-03 11:07:43','admin','2016-06-03 11:07:43','ACTIVE','','NO',1,0,'#','003','用户管理','##'),(22,0,'roncoo','2016-06-03 11:07:43','admin','2016-06-03 11:07:43','ACTIVE','','YES',2,20,'yhxx','00301','用户信息','user/info/list'),(30,0,'roncoo','2016-06-03 11:07:43','admin','2016-06-03 11:07:43','ACTIVE','','NO',1,0,'#','004','支付管理','##'),(32,0,'roncoo','2016-06-03 11:07:43','admin','2016-06-03 11:07:43','ACTIVE','','YES',2,30,'zfcpgl','00401','支付产品信息','pay/product/list'),(33,0,'roncoo','2016-06-03 11:07:43','admin','2016-06-03 11:07:43','ACTIVE','','YES',2,30,'yhzfpz','00402','用户支付配置','pay/config/list'),(40,0,'roncoo','2016-06-03 11:07:43','admin','2016-06-03 11:07:43','ACTIVE','','NO',1,0,'#','005','交易管理','##'),(42,0,'roncoo','2016-06-03 11:07:43','admin','2016-06-03 11:07:43','ACTIVE','','YES',2,40,'zfddgl','00501','支付订单管理','trade/listPaymentOrder'),(43,0,'roncoo','2016-06-03 11:07:43','admin','2016-06-03 11:07:43','ACTIVE','','YES',2,40,'zfjjgl','00502','支付记录管理','trade/listPaymentRecord'),(50,0,'roncoo','2016-06-03 11:07:43','admin','2016-06-03 11:07:43','ACTIVE','','NO',1,0,'#','006','结算管理','##'),(52,0,'roncoo','2016-06-03 11:07:43','admin','2016-06-03 11:07:43','ACTIVE','','YES',2,50,'jsjlgl','00601','结算记录管理','sett/list'),(60,0,'roncoo','2016-06-03 11:07:43','admin','2016-06-03 11:07:43','ACTIVE','','NO',1,0,'#','007','对账管理','##'),(62,0,'roncoo','2016-06-03 11:07:43','admin','2016-06-03 11:07:43','ACTIVE','','YES',2,60,'dzcclb','00701','对账差错列表','reconciliation/list/mistake'),(63,0,'roncoo','2016-06-03 11:07:43','admin','2016-06-03 11:07:43','ACTIVE','','YES',2,60,'dzpclb','00702','对账批次列表','reconciliation/list/checkbatch'),(64,0,'roncoo','2016-06-03 11:07:43','admin','2016-06-03 11:07:43','ACTIVE','','YES',2,60,'dzhcclb','00703','对账缓冲池列表','reconciliation/list/scratchPool');

/*Table structure for table `pms_menu_role` */

DROP TABLE IF EXISTS `pms_menu_role`;

CREATE TABLE `pms_menu_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `version` bigint(20) DEFAULT NULL,
  `creater` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `editor` varchar(50) DEFAULT NULL COMMENT '修改人',
  `edit_time` datetime DEFAULT NULL COMMENT '修改时间',
  `status` varchar(20) DEFAULT NULL,
  `remark` varchar(300) DEFAULT NULL,
  `role_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ak_key_2` (`role_id`,`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1053 DEFAULT CHARSET=utf8 COMMENT='权限与角色关联表';

/*Data for the table `pms_menu_role` */

insert  into `pms_menu_role`(`id`,`version`,`creater`,`create_time`,`editor`,`edit_time`,`status`,`remark`,`role_id`,`menu_id`) values (1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1),(1001,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,2),(1002,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,3),(1003,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,4),(1004,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,5),(1005,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,10),(1006,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,12),(1007,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,13),(1008,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,20),(1009,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,22),(1010,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,30),(1011,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,32),(1012,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,33),(1013,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,40),(1014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,42),(1015,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,43),(1016,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,50),(1017,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,52),(1018,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,60),(1019,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,62),(1020,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,63),(1021,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,64),(1031,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,1),(1032,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,2),(1033,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,3),(1034,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,4),(1035,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,5),(1036,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,10),(1037,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,12),(1038,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,13),(1039,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,20),(1040,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,22),(1041,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,30),(1042,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,32),(1043,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,33),(1044,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,40),(1045,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,42),(1046,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,43),(1047,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,50),(1048,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,52),(1049,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,60),(1050,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,62),(1051,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,63),(1052,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,64);

/*Table structure for table `pms_operator` */

DROP TABLE IF EXISTS `pms_operator`;

CREATE TABLE `pms_operator` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `version` bigint(20) NOT NULL,
  `creater` varchar(50) NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `editor` varchar(50) DEFAULT NULL COMMENT '修改人',
  `edit_time` datetime DEFAULT NULL COMMENT '修改时间',
  `status` varchar(20) NOT NULL,
  `remark` varchar(300) DEFAULT NULL,
  `real_name` varchar(50) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `login_name` varchar(50) NOT NULL,
  `login_pwd` varchar(256) NOT NULL,
  `type` varchar(20) NOT NULL,
  `salt` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ak_key_2` (`login_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='操作员表';

/*Data for the table `pms_operator` */

insert  into `pms_operator`(`id`,`version`,`creater`,`create_time`,`editor`,`edit_time`,`status`,`remark`,`real_name`,`mobile_no`,`login_name`,`login_pwd`,`type`,`salt`) values (1,0,'roncoo','2016-06-03 11:07:43','admin','2016-06-03 11:07:43','ACTIVE','超级管理员','超级管理员','18620936193','admin','d3c59d25033dbf980d29554025c23a75','ADMIN','8d78869f470951332959580424d4bf4f'),(2,0,'roncoo','2016-06-03 11:07:43','guest','2016-06-03 11:07:43','ACTIVE','游客','游客','18926215592','guest','3f0dbf580ee39ec03b632cb33935a363','USER','183d9f2f0f2ce760e98427a5603d1c73');

/*Table structure for table `pms_operator_log` */

DROP TABLE IF EXISTS `pms_operator_log`;

CREATE TABLE `pms_operator_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `version` bigint(20) NOT NULL,
  `creater` varchar(50) NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `editor` varchar(50) DEFAULT NULL COMMENT '修改人',
  `edit_time` datetime DEFAULT NULL COMMENT '修改时间',
  `status` varchar(20) NOT NULL,
  `remark` varchar(300) DEFAULT NULL,
  `operator_id` bigint(20) NOT NULL,
  `operator_name` varchar(50) NOT NULL,
  `operate_type` varchar(50) NOT NULL COMMENT '操作类型（1:增加，2:修改，3:删除，4:查询）',
  `ip` varchar(100) NOT NULL,
  `content` varchar(3000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限_操作员操作日志表';

/*Data for the table `pms_operator_log` */

/*Table structure for table `pms_permission` */

DROP TABLE IF EXISTS `pms_permission`;

CREATE TABLE `pms_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `version` bigint(20) NOT NULL,
  `creater` varchar(50) NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `editor` varchar(50) DEFAULT NULL COMMENT '修改人',
  `edit_time` datetime DEFAULT NULL COMMENT '修改时间',
  `status` varchar(20) NOT NULL,
  `remark` varchar(300) DEFAULT NULL,
  `permission_name` varchar(100) NOT NULL,
  `permission` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ak_key_2` (`permission`),
  KEY `ak_key_3` (`permission_name`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8 COMMENT='权限表';

/*Data for the table `pms_permission` */

insert  into `pms_permission`(`id`,`version`,`creater`,`create_time`,`editor`,`edit_time`,`status`,`remark`,`permission_name`,`permission`) values (1,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','权限管理-菜单-查看','权限管理-菜单-查看','pms:menu:view'),(2,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','权限管理-菜单-添加','权限管理-菜单-添加','pms:menu:add'),(3,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','权限管理-菜单-查看','权限管理-菜单-修改','pms:menu:edit'),(4,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','权限管理-菜单-删除','权限管理-菜单-删除','pms:menu:delete'),(11,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','权限管理-权限-查看','权限管理-权限-查看','pms:permission:view'),(12,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','权限管理-权限-添加','权限管理-权限-添加','pms:permission:add'),(13,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','权限管理-权限-修改','权限管理-权限-修改','pms:permission:edit'),(14,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','权限管理-权限-删除','权限管理-权限-删除','pms:permission:delete'),(21,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','权限管理-角色-查看','权限管理-角色-查看','pms:role:view'),(22,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','权限管理-角色-添加','权限管理-角色-添加','pms:role:add'),(23,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','权限管理-角色-修改','权限管理-角色-修改','pms:role:edit'),(24,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','权限管理-角色-删除','权限管理-角色-删除','pms:role:delete'),(25,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','权限管理-角色-分配权限','权限管理-角色-分配权限','pms:role:assignpermission'),(31,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','权限管理-操作员-查看','权限管理-操作员-查看','pms:operator:view'),(32,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','权限管理-操作员-添加','权限管理-操作员-添加','pms:operator:add'),(33,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','权限管理-操作员-查看','权限管理-操作员-修改','pms:operator:edit'),(34,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','权限管理-操作员-冻结与解冻','权限管理-操作员-冻结与解冻','pms:operator:changestatus'),(35,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','权限管理-操作员-重置密码','权限管理-操作员-重置密码','pms:operator:resetpwd'),(51,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','账户管理-账户-查看','账户管理-账户-查看','account:accountInfo:view'),(52,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','账户管理-账户-添加','账户管理-账户-添加','account:accountInfo:add'),(53,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','账户管理-账户-查看','账户管理-账户-修改','account:accountInfo:edit'),(54,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','账户管理-账户-删除','账户管理-账户-删除','account:accountInfo:delete'),(61,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','账户管理-账户历史-查看','账户管理-账户历史-查看','account:accountHistory:view'),(71,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','用户管理-用户信息-查看','用户管理-用户信息-查看','user:userInfo:view'),(72,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','用户管理-用户信息-添加','用户管理-用户信息-添加','user:userInfo:add'),(73,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','用户管理-用户信息-查看','用户管理-用户信息-修改','user:userInfo:edit'),(74,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','用户管理-用户信息-删除','用户管理-用户信息-删除','user:userInfo:delete'),(81,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','支付管理-支付产品-查看','支付管理-支付产品-查看','pay:product:view'),(82,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','支付管理-支付产品-添加','支付管理-支付产品-添加','pay:product:add'),(83,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','支付管理-支付产品-查看','支付管理-支付产品-修改','pay:product:edit'),(84,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','支付管理-支付产品-删除','支付管理-支付产品-删除','pay:product:delete'),(85,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','支付管理-支付方式-查看','支付管理-支付方式-查看','pay:way:view'),(86,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','支付管理-支付方式-添加','支付管理-支付方式-添加','pay:way:add'),(87,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','支付管理-支付方式-查看','支付管理-支付方式-修改','pay:way:edit'),(88,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','支付管理-支付方式-删除','支付管理-支付方式-删除','pay:way:delete'),(91,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','支付管理-支付配置-查看','支付管理-支付配置-查看','pay:config:view'),(92,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','支付管理-支付配置-添加','支付管理-支付配置-添加','pay:config:add'),(93,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','支付管理-支付配置-查看','支付管理-支付配置-修改','pay:config:edit'),(94,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','支付管理-支付配置-删除','支付管理-支付配置-删除','pay:config:delete'),(101,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','交易管理-订单-查看','交易管理-订单-查看','trade:order:view'),(102,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','交易管理-订单-添加','交易管理-订单-添加','trade:order:add'),(103,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','交易管理-订单-查看','交易管理-订单-修改','trade:order:edit'),(104,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','交易管理-订单-删除','交易管理-订单-删除','trade:order:delete'),(111,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','交易管理-记录-查看','交易管理-记录-查看','trade:record:view'),(112,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','交易管理-记录-添加','交易管理-记录-添加','trade:record:add'),(113,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','交易管理-记录-查看','交易管理-记录-修改','trade:record:edit'),(114,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','交易管理-记录-删除','交易管理-记录-删除','trade:record:delete'),(121,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','结算管理-记录-查看','结算管理-记录-查看','sett:record:view'),(122,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','结算管理-记录-添加','结算管理-记录-添加','sett:record:add'),(123,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','结算管理-记录-查看','结算管理-记录-修改','sett:record:edit'),(124,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','结算管理-记录-删除','结算管理-记录-删除','sett:record:delete'),(131,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','对账管理-差错-查看','对账管理-差错-查看','recon:mistake:view'),(132,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','对账管理-差错-添加','对账管理-差错-添加','recon:mistake:add'),(133,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','对账管理-差错-查看','对账管理-差错-修改','recon:mistake:edit'),(134,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','对账管理-差错-删除','对账管理-差错-删除','recon:mistake:delete'),(141,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','对账管理-批次-查看','对账管理-批次-查看','recon:batch:view'),(142,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','对账管理-批次-添加','对账管理-批次-添加','recon:batch:add'),(143,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','对账管理-批次-查看','对账管理-批次-修改','recon:batch:edit'),(144,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','对账管理-批次-删除','对账管理-批次-删除','recon:batch:delete'),(151,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','对账管理-缓冲池-查看','对账管理-缓冲池-查看','recon:scratchPool:view'),(152,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','对账管理-缓冲池-添加','对账管理-缓冲池-添加','recon:scratchPool:add'),(153,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','对账管理-缓冲池-查看','对账管理-缓冲池-修改','recon:scratchPool:edit'),(154,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','对账管理-缓冲池-删除','对账管理-缓冲池-删除','recon:scratchPool:delete');

/*Table structure for table `pms_role` */

DROP TABLE IF EXISTS `pms_role`;

CREATE TABLE `pms_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `version` bigint(20) DEFAULT NULL,
  `creater` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `editor` varchar(50) DEFAULT NULL COMMENT '修改人',
  `edit_time` datetime DEFAULT NULL COMMENT '修改时间',
  `status` varchar(20) DEFAULT NULL,
  `remark` varchar(300) DEFAULT NULL,
  `role_code` varchar(20) NOT NULL COMMENT '角色类型（1:超级管理员角色，0:普通操作员角色）',
  `role_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ak_key_2` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色表';

/*Data for the table `pms_role` */

insert  into `pms_role`(`id`,`version`,`creater`,`create_time`,`editor`,`edit_time`,`status`,`remark`,`role_code`,`role_name`) values (1,0,'roncoo','2016-06-03 11:07:43','admin','2016-06-03 11:07:43','ACTIVE','超级管理员角色','admin','超级管理员角色'),(2,0,'roncoo','2016-06-03 11:07:43','guest','2016-06-03 11:07:43','ACTIVE','游客角色','guest','游客角色');

/*Table structure for table `pms_role_operator` */

DROP TABLE IF EXISTS `pms_role_operator`;

CREATE TABLE `pms_role_operator` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `version` bigint(20) NOT NULL,
  `creater` varchar(50) NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `editor` varchar(50) DEFAULT NULL COMMENT '修改人',
  `edit_time` datetime DEFAULT NULL COMMENT '修改时间',
  `status` varchar(20) NOT NULL,
  `remark` varchar(300) DEFAULT NULL,
  `role_id` bigint(20) NOT NULL,
  `operator_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ak_key_2` (`role_id`,`operator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='操作员与角色关联表';

/*Data for the table `pms_role_operator` */

insert  into `pms_role_operator`(`id`,`version`,`creater`,`create_time`,`editor`,`edit_time`,`status`,`remark`,`role_id`,`operator_id`) values (1,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','',1,1),(2,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','',2,1),(3,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','',2,2);

/*Table structure for table `pms_role_permission` */

DROP TABLE IF EXISTS `pms_role_permission`;

CREATE TABLE `pms_role_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `version` bigint(20) DEFAULT NULL,
  `creater` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `editor` varchar(50) DEFAULT NULL COMMENT '修改人',
  `edit_time` datetime DEFAULT NULL COMMENT '修改时间',
  `status` varchar(20) DEFAULT NULL,
  `remark` varchar(300) DEFAULT NULL,
  `role_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ak_key_2` (`role_id`,`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1080 DEFAULT CHARSET=utf8 COMMENT='权限与角色关联表';

/*Data for the table `pms_role_permission` */

insert  into `pms_role_permission`(`id`,`version`,`creater`,`create_time`,`editor`,`edit_time`,`status`,`remark`,`role_id`,`permission_id`) values (1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,61),(1001,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,52),(1002,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,54),(1003,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,53),(1004,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,51),(1005,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,92),(1006,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,94),(1007,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,93),(1008,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,91),(1009,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,82),(1010,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,84),(1011,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,83),(1012,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,81),(1013,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,86),(1014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,88),(1015,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,87),(1016,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,85),(1017,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,2),(1018,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,4),(1019,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,3),(1020,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1),(1021,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,32),(1022,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,34),(1023,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,33),(1024,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,35),(1025,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,31),(1026,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,12),(1027,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,14),(1028,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,13),(1029,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,11),(1030,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,22),(1031,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,25),(1032,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,24),(1033,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,23),(1034,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,21),(1035,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,142),(1036,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,144),(1037,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,143),(1038,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,141),(1039,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,132),(1040,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,134),(1041,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,133),(1042,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,131),(1043,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,152),(1044,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,154),(1045,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,153),(1046,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,151),(1047,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,122),(1048,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,124),(1049,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,123),(1050,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,121),(1051,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,102),(1052,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,104),(1053,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,103),(1054,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,101),(1055,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,112),(1056,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,114),(1057,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,113),(1058,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,111),(1059,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,72),(1060,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,74),(1061,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,73),(1062,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,71),(1063,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','',2,1),(1064,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','',2,11),(1065,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','',2,21),(1066,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','',2,31),(1067,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','',2,41),(1068,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','',2,51),(1069,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','',2,61),(1070,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','',2,71),(1071,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','',2,81),(1072,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','',2,85),(1073,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','',2,91),(1074,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','',2,101),(1075,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','',2,111),(1076,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','',2,121),(1077,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','',2,131),(1078,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','',2,141),(1079,0,'roncoo','2016-06-03 11:07:43','test','2016-06-03 11:07:43','ACTIVE','',2,151);

/*Table structure for table `rp_account` */

DROP TABLE IF EXISTS `rp_account`;

CREATE TABLE `rp_account` (
  `id` varchar(50) NOT NULL,
  `create_time` datetime NOT NULL,
  `edit_time` datetime DEFAULT NULL,
  `version` bigint(20) NOT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `account_no` varchar(50) NOT NULL,
  `balance` decimal(20,6) NOT NULL,
  `unbalance` decimal(20,6) NOT NULL,
  `security_money` decimal(20,6) NOT NULL,
  `status` varchar(36) NOT NULL,
  `total_income` decimal(20,6) NOT NULL,
  `total_expend` decimal(20,6) NOT NULL,
  `today_income` decimal(20,6) NOT NULL,
  `today_expend` decimal(20,6) NOT NULL,
  `account_type` varchar(50) NOT NULL,
  `sett_amount` decimal(20,6) NOT NULL,
  `user_no` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资金账户表';

/*Data for the table `rp_account` */

/*Table structure for table `rp_account_check_batch` */

DROP TABLE IF EXISTS `rp_account_check_batch`;

CREATE TABLE `rp_account_check_batch` (
  `id` varchar(50) NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `create_time` datetime NOT NULL,
  `editor` varchar(100) DEFAULT NULL COMMENT '修改者',
  `creater` varchar(100) DEFAULT NULL COMMENT '创建者',
  `edit_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  `status` varchar(30) NOT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `batch_no` varchar(30) NOT NULL,
  `bill_date` date NOT NULL,
  `bill_type` varchar(30) DEFAULT NULL,
  `handle_status` varchar(10) DEFAULT NULL,
  `bank_type` varchar(30) DEFAULT NULL,
  `mistake_count` int(8) DEFAULT NULL,
  `unhandle_mistake_count` int(8) DEFAULT NULL,
  `trade_count` int(8) DEFAULT NULL,
  `bank_trade_count` int(8) DEFAULT NULL,
  `trade_amount` decimal(20,6) DEFAULT NULL,
  `bank_trade_amount` decimal(20,6) DEFAULT NULL,
  `refund_amount` decimal(20,6) DEFAULT NULL,
  `bank_refund_amount` decimal(20,6) DEFAULT NULL,
  `bank_fee` decimal(20,6) DEFAULT NULL,
  `org_check_file_path` varchar(500) DEFAULT NULL,
  `release_check_file_path` varchar(500) DEFAULT NULL,
  `release_status` varchar(15) DEFAULT NULL,
  `check_fail_msg` varchar(300) DEFAULT NULL,
  `bank_err_msg` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='对账批次表 rp_account_check_batch';

/*Data for the table `rp_account_check_batch` */

/*Table structure for table `rp_account_check_mistake` */

DROP TABLE IF EXISTS `rp_account_check_mistake`;

CREATE TABLE `rp_account_check_mistake` (
  `id` varchar(50) NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `create_time` datetime NOT NULL,
  `editor` varchar(100) DEFAULT NULL COMMENT '修改者',
  `creater` varchar(100) DEFAULT NULL COMMENT '创建者',
  `edit_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  `status` varchar(30) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `account_check_batch_no` varchar(50) NOT NULL,
  `bill_date` date NOT NULL,
  `bank_type` varchar(30) NOT NULL,
  `order_time` datetime DEFAULT NULL,
  `merchant_name` varchar(100) DEFAULT NULL,
  `merchant_no` varchar(50) DEFAULT NULL,
  `order_no` varchar(40) DEFAULT NULL,
  `trade_time` datetime DEFAULT NULL,
  `trx_no` varchar(20) DEFAULT NULL,
  `order_amount` decimal(20,6) DEFAULT NULL,
  `refund_amount` decimal(20,6) DEFAULT NULL,
  `trade_status` varchar(30) DEFAULT NULL,
  `fee` decimal(20,6) DEFAULT NULL,
  `bank_trade_time` datetime DEFAULT NULL,
  `bank_order_no` varchar(40) DEFAULT NULL,
  `bank_trx_no` varchar(40) DEFAULT NULL,
  `bank_trade_status` varchar(30) DEFAULT NULL,
  `bank_amount` decimal(20,6) DEFAULT NULL,
  `bank_refund_amount` decimal(20,6) DEFAULT NULL,
  `bank_fee` decimal(20,6) DEFAULT NULL,
  `err_type` varchar(30) NOT NULL,
  `handle_status` varchar(10) NOT NULL,
  `handle_value` varchar(1000) DEFAULT NULL,
  `handle_remark` varchar(1000) DEFAULT NULL,
  `operator_name` varchar(100) DEFAULT NULL,
  `operator_account_no` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='对账差错表 rp_account_check_mistake';

/*Data for the table `rp_account_check_mistake` */

/*Table structure for table `rp_account_check_mistake_scratch_pool` */

DROP TABLE IF EXISTS `rp_account_check_mistake_scratch_pool`;

CREATE TABLE `rp_account_check_mistake_scratch_pool` (
  `id` varchar(50) NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `create_time` datetime NOT NULL,
  `editor` varchar(100) DEFAULT NULL COMMENT '修改者',
  `creater` varchar(100) DEFAULT NULL COMMENT '创建者',
  `edit_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  `product_name` varchar(50) DEFAULT NULL COMMENT '商品名称',
  `merchant_order_no` varchar(30) NOT NULL COMMENT '商户订单号',
  `trx_no` char(20) NOT NULL COMMENT '支付流水号',
  `bank_order_no` char(20) DEFAULT NULL COMMENT '银行订单号',
  `bank_trx_no` varchar(30) DEFAULT NULL COMMENT '银行流水号',
  `order_amount` decimal(20,6) DEFAULT '0.000000' COMMENT '订单金额',
  `plat_income` decimal(20,6) DEFAULT NULL COMMENT '平台收入',
  `fee_rate` decimal(20,6) DEFAULT NULL COMMENT '费率',
  `plat_cost` decimal(20,6) DEFAULT NULL COMMENT '平台成本',
  `plat_profit` decimal(20,6) DEFAULT NULL COMMENT '平台利润',
  `status` varchar(30) DEFAULT NULL COMMENT '状态(参考枚举:paymentrecordstatusenum)',
  `pay_way_code` varchar(50) DEFAULT NULL COMMENT '支付通道编号',
  `pay_way_name` varchar(100) DEFAULT NULL COMMENT '支付通道名称',
  `pay_success_time` datetime DEFAULT NULL COMMENT '支付成功时间',
  `complete_time` datetime DEFAULT NULL COMMENT '完成时间',
  `is_refund` varchar(30) DEFAULT '101' COMMENT '是否退款(100:是,101:否,默认值为:101)',
  `refund_times` smallint(6) DEFAULT '0' COMMENT '退款次数(默认值为:0)',
  `success_refund_amount` decimal(20,6) DEFAULT NULL COMMENT '成功退款总金额',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `batch_no` varchar(50) DEFAULT NULL,
  `bill_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='差错暂存池';

/*Data for the table `rp_account_check_mistake_scratch_pool` */

/*Table structure for table `rp_account_history` */

DROP TABLE IF EXISTS `rp_account_history`;

CREATE TABLE `rp_account_history` (
  `id` varchar(50) NOT NULL,
  `create_time` datetime NOT NULL,
  `edit_time` datetime DEFAULT NULL,
  `version` bigint(20) NOT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `account_no` varchar(50) NOT NULL,
  `amount` decimal(20,6) NOT NULL,
  `balance` decimal(20,6) NOT NULL,
  `fund_direction` varchar(36) NOT NULL,
  `is_allow_sett` varchar(36) NOT NULL,
  `is_complete_sett` varchar(36) NOT NULL,
  `request_no` varchar(36) NOT NULL,
  `bank_trx_no` varchar(30) DEFAULT NULL,
  `trx_type` varchar(36) NOT NULL,
  `risk_day` int(11) DEFAULT NULL,
  `user_no` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资金账户流水表';

/*Data for the table `rp_account_history` */

/*Table structure for table `rp_notify_record` */

DROP TABLE IF EXISTS `rp_notify_record`;

CREATE TABLE `rp_notify_record` (
  `id` varchar(50) NOT NULL,
  `version` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `editor` varchar(100) DEFAULT NULL COMMENT '修改者',
  `creater` varchar(100) DEFAULT NULL COMMENT '创建者',
  `edit_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  `notify_times` int(11) NOT NULL,
  `limit_notify_times` int(11) NOT NULL,
  `url` varchar(2000) NOT NULL,
  `merchant_order_no` varchar(50) NOT NULL,
  `merchant_no` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL COMMENT '100:成功 101:失败',
  `notify_type` varchar(30) DEFAULT NULL COMMENT '通知类型',
  PRIMARY KEY (`id`),
  KEY `ak_key_2` (`merchant_order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通知记录表 rp_notify_record';

/*Data for the table `rp_notify_record` */

/*Table structure for table `rp_notify_record_log` */

DROP TABLE IF EXISTS `rp_notify_record_log`;

CREATE TABLE `rp_notify_record_log` (
  `id` varchar(50) NOT NULL,
  `version` int(11) NOT NULL,
  `editor` varchar(100) DEFAULT NULL COMMENT '修改者',
  `creater` varchar(100) DEFAULT NULL COMMENT '创建者',
  `edit_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  `create_time` datetime NOT NULL,
  `notify_id` varchar(50) NOT NULL,
  `request` varchar(2000) NOT NULL,
  `response` varchar(2000) NOT NULL,
  `merchant_no` varchar(50) NOT NULL,
  `merchant_order_no` varchar(50) NOT NULL COMMENT '商户订单号',
  `http_status` varchar(50) NOT NULL COMMENT 'http状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通知记录日志表 rp_notify_record_log';

/*Data for the table `rp_notify_record_log` */

/*Table structure for table `rp_pay_product` */

DROP TABLE IF EXISTS `rp_pay_product`;

CREATE TABLE `rp_pay_product` (
  `id` varchar(50) NOT NULL,
  `create_time` datetime NOT NULL,
  `edit_time` datetime DEFAULT NULL,
  `version` bigint(20) NOT NULL,
  `status` varchar(36) NOT NULL,
  `product_code` varchar(50) NOT NULL COMMENT '支付产品编号',
  `product_name` varchar(200) NOT NULL COMMENT '支付产品名称',
  `audit_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付产品表';

/*Data for the table `rp_pay_product` */

/*Table structure for table `rp_pay_way` */

DROP TABLE IF EXISTS `rp_pay_way`;

CREATE TABLE `rp_pay_way` (
  `id` varchar(50) NOT NULL COMMENT 'id',
  `version` bigint(20) NOT NULL DEFAULT '0' COMMENT 'version',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `edit_time` datetime DEFAULT NULL COMMENT '修改时间',
  `pay_way_code` varchar(50) NOT NULL COMMENT '支付方式编号',
  `pay_way_name` varchar(100) NOT NULL COMMENT '支付方式名称',
  `pay_type_code` varchar(50) NOT NULL COMMENT '支付类型编号',
  `pay_type_name` varchar(100) NOT NULL COMMENT '支付类型名称',
  `pay_product_code` varchar(50) DEFAULT NULL COMMENT '支付产品编号',
  `status` varchar(36) NOT NULL COMMENT '状态(100:正常状态,101非正常状态)',
  `sorts` int(11) DEFAULT '1000' COMMENT '排序(倒序排序,默认值1000)',
  `pay_rate` double NOT NULL COMMENT '商户支付费率',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付方式';

/*Data for the table `rp_pay_way` */

/*Table structure for table `rp_refund_record` */

DROP TABLE IF EXISTS `rp_refund_record`;

CREATE TABLE `rp_refund_record` (
  `id` varchar(50) NOT NULL COMMENT 'id',
  `version` int(11) NOT NULL COMMENT '版本号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `editor` varchar(100) DEFAULT NULL COMMENT '修改者',
  `creater` varchar(100) DEFAULT NULL COMMENT '创建者',
  `edit_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  `org_merchant_order_no` varchar(50) DEFAULT NULL COMMENT '原商户订单号',
  `org_trx_no` varchar(50) DEFAULT NULL COMMENT '原支付流水号',
  `org_bank_order_no` varchar(50) DEFAULT NULL COMMENT '原银行订单号',
  `org_bank_trx_no` varchar(50) DEFAULT NULL COMMENT '原银行流水号',
  `merchant_name` varchar(100) DEFAULT NULL COMMENT '商家名称',
  `merchant_no` varchar(100) NOT NULL COMMENT '商家编号',
  `org_product_name` varchar(60) DEFAULT NULL COMMENT '原商品名称',
  `org_biz_type` varchar(30) DEFAULT NULL COMMENT '原业务类型',
  `org_payment_type` varchar(30) DEFAULT NULL COMMENT '原支付方式类型',
  `refund_amount` decimal(20,6) DEFAULT NULL COMMENT '订单退款金额',
  `refund_trx_no` varchar(50) NOT NULL COMMENT '退款流水号',
  `refund_order_no` varchar(50) NOT NULL COMMENT '退款订单号',
  `bank_refund_order_no` varchar(50) DEFAULT NULL COMMENT '银行退款订单号',
  `bank_refund_trx_no` varchar(30) DEFAULT NULL COMMENT '银行退款流水号',
  `result_notify_url` varchar(500) DEFAULT NULL COMMENT '退款结果通知url',
  `refund_status` varchar(30) DEFAULT NULL COMMENT '退款状态',
  `refund_from` varchar(30) DEFAULT NULL COMMENT '退款来源（分发平台）',
  `refund_way` varchar(30) DEFAULT NULL COMMENT '退款方式',
  `refund_request_time` datetime DEFAULT NULL COMMENT '退款请求时间',
  `refund_success_time` datetime DEFAULT NULL COMMENT ' 退款成功时间',
  `refund_complete_time` datetime DEFAULT NULL COMMENT '退款完成时间',
  `request_apply_user_id` varchar(50) DEFAULT NULL COMMENT '退款请求,申请人登录名',
  `request_apply_user_name` varchar(90) DEFAULT NULL COMMENT '退款请求,申请人姓名',
  `refund_reason` varchar(500) DEFAULT NULL COMMENT '退款原因',
  `remark` varchar(3000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ak_key_2` (`refund_trx_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='退款记录表';

/*Data for the table `rp_refund_record` */

/*Table structure for table `rp_sett_daily_collect` */

DROP TABLE IF EXISTS `rp_sett_daily_collect`;

CREATE TABLE `rp_sett_daily_collect` (
  `id` varchar(50) NOT NULL COMMENT 'id',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `edit_time` datetime NOT NULL COMMENT '修改时间',
  `account_no` varchar(20) NOT NULL COMMENT '账户编号',
  `user_name` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `collect_date` date NOT NULL COMMENT '汇总日期',
  `collect_type` varchar(50) NOT NULL COMMENT '汇总类型(参考枚举:settdailycollecttypeenum)',
  `total_amount` decimal(24,10) NOT NULL COMMENT '交易总金额',
  `total_count` int(11) NOT NULL COMMENT '交易总笔数',
  `sett_status` varchar(50) NOT NULL COMMENT '结算状态(参考枚举:settdailycollectstatusenum)',
  `remark` varchar(300) DEFAULT NULL COMMENT '备注',
  `risk_day` int(11) DEFAULT NULL COMMENT '风险预存期天数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='每日待结算汇总';

/*Data for the table `rp_sett_daily_collect` */

/*Table structure for table `rp_sett_record` */

DROP TABLE IF EXISTS `rp_sett_record`;

CREATE TABLE `rp_sett_record` (
  `id` varchar(50) NOT NULL COMMENT 'id',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `edit_time` datetime NOT NULL COMMENT '修改时间',
  `sett_mode` varchar(50) DEFAULT NULL COMMENT '结算发起方式(参考settmodetypeenum)',
  `account_no` varchar(20) NOT NULL COMMENT '账户编号',
  `user_no` varchar(20) DEFAULT NULL COMMENT '用户编号',
  `user_name` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `user_type` varchar(50) DEFAULT NULL COMMENT '用户类型',
  `sett_date` date DEFAULT NULL COMMENT '结算日期',
  `bank_code` varchar(20) DEFAULT NULL COMMENT '银行编码',
  `bank_name` varchar(100) DEFAULT NULL COMMENT '银行名称',
  `bank_account_name` varchar(60) DEFAULT NULL COMMENT '开户名',
  `bank_account_no` varchar(20) DEFAULT NULL COMMENT '开户账户',
  `bank_account_type` varchar(50) DEFAULT NULL COMMENT '开户账户',
  `country` varchar(200) DEFAULT NULL COMMENT '开户行所在国家',
  `province` varchar(50) DEFAULT NULL COMMENT '开户行所在省份',
  `city` varchar(50) DEFAULT NULL COMMENT '开户行所在城市',
  `areas` varchar(50) DEFAULT NULL COMMENT '开户行所在区',
  `bank_account_address` varchar(300) DEFAULT NULL COMMENT '开户行全称',
  `mobile_no` varchar(20) DEFAULT NULL COMMENT '收款人手机号',
  `sett_amount` decimal(24,10) DEFAULT NULL COMMENT '结算金额',
  `sett_fee` decimal(16,6) DEFAULT NULL COMMENT '结算手续费',
  `remit_amount` decimal(16,2) DEFAULT NULL COMMENT '结算打款金额',
  `sett_status` varchar(50) DEFAULT NULL COMMENT '结算状态(参考枚举:settrecordstatusenum)',
  `remit_confirm_time` datetime DEFAULT NULL COMMENT '打款确认时间',
  `remark` varchar(200) DEFAULT NULL COMMENT '描述',
  `remit_remark` varchar(200) DEFAULT NULL COMMENT '打款备注',
  `operator_loginname` varchar(50) DEFAULT NULL COMMENT '操作员登录名',
  `operator_realname` varchar(50) DEFAULT NULL COMMENT '操作员姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='结算记录';

/*Data for the table `rp_sett_record` */

/*Table structure for table `rp_sett_record_annex` */

DROP TABLE IF EXISTS `rp_sett_record_annex`;

CREATE TABLE `rp_sett_record_annex` (
  `id` varchar(50) NOT NULL,
  `create_time` datetime NOT NULL,
  `edit_time` datetime DEFAULT NULL,
  `version` bigint(20) NOT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `is_delete` varchar(36) NOT NULL,
  `annex_name` varchar(200) DEFAULT NULL,
  `annex_address` varchar(500) NOT NULL,
  `settlement_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `rp_sett_record_annex` */

/*Table structure for table `rp_trade_payment_order` */

DROP TABLE IF EXISTS `rp_trade_payment_order`;

CREATE TABLE `rp_trade_payment_order` (
  `id` varchar(50) NOT NULL COMMENT 'id',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `editor` varchar(100) DEFAULT NULL COMMENT '修改者',
  `creater` varchar(100) DEFAULT NULL COMMENT '创建者',
  `edit_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  `status` varchar(50) DEFAULT NULL COMMENT '状态(参考枚举:orderstatusenum)',
  `product_name` varchar(300) DEFAULT NULL COMMENT '商品名称',
  `merchant_order_no` varchar(30) NOT NULL COMMENT '商户订单号',
  `order_amount` decimal(20,6) DEFAULT '0.000000' COMMENT '订单金额',
  `order_from` varchar(30) DEFAULT NULL COMMENT '订单来源',
  `merchant_name` varchar(100) DEFAULT NULL COMMENT '商家名称',
  `merchant_no` varchar(100) NOT NULL COMMENT '商户编号',
  `order_time` datetime DEFAULT NULL COMMENT '下单时间',
  `order_date` date DEFAULT NULL COMMENT '下单日期',
  `order_ip` varchar(50) DEFAULT NULL COMMENT '下单ip(客户端ip,在网关页面获取)',
  `order_referer_url` varchar(100) DEFAULT NULL COMMENT '从哪个页面链接过来的(可用于防诈骗)',
  `return_url` varchar(600) DEFAULT NULL COMMENT '页面回调通知url',
  `notify_url` varchar(600) DEFAULT NULL COMMENT '后台异步通知url',
  `cancel_reason` varchar(600) DEFAULT NULL COMMENT '订单撤销原因',
  `order_period` smallint(6) DEFAULT NULL COMMENT '订单有效期(单位分钟)',
  `expire_time` datetime DEFAULT NULL COMMENT '到期时间',
  `pay_way_code` varchar(50) DEFAULT NULL COMMENT '支付方式编号',
  `pay_way_name` varchar(100) DEFAULT NULL COMMENT '支付方式名称',
  `remark` varchar(200) DEFAULT NULL COMMENT '支付备注',
  `trx_type` varchar(30) DEFAULT NULL COMMENT '交易业务类型  ：消费、充值等',
  `trx_no` varchar(50) DEFAULT NULL COMMENT '支付流水号',
  `pay_type_code` varchar(50) DEFAULT NULL COMMENT '支付类型编号',
  `pay_type_name` varchar(100) DEFAULT NULL COMMENT '支付类型名称',
  `fund_into_type` varchar(30) DEFAULT NULL COMMENT '资金流入类型',
  `is_refund` varchar(30) DEFAULT '101' COMMENT '是否退款(100:是,101:否,默认值为:101)',
  `refund_times` int(11) DEFAULT '0' COMMENT '退款次数(默认值为:0)',
  `success_refund_amount` decimal(20,6) DEFAULT NULL COMMENT '成功退款总金额',
  `field1` varchar(500) DEFAULT NULL,
  `field2` varchar(500) DEFAULT NULL,
  `field3` varchar(500) DEFAULT NULL,
  `field4` varchar(500) DEFAULT NULL,
  `field5` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ak_key_2` (`merchant_order_no`,`merchant_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='roncoo pay 龙果支付 支付订单表';

/*Data for the table `rp_trade_payment_order` */

/*Table structure for table `rp_trade_payment_record` */

DROP TABLE IF EXISTS `rp_trade_payment_record`;

CREATE TABLE `rp_trade_payment_record` (
  `id` varchar(50) NOT NULL COMMENT 'id',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `status` varchar(30) DEFAULT NULL COMMENT '状态(参考枚举:paymentrecordstatusenum)',
  `editor` varchar(100) DEFAULT NULL COMMENT '修改者',
  `creater` varchar(100) DEFAULT NULL COMMENT '创建者',
  `edit_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  `product_name` varchar(50) DEFAULT NULL COMMENT '商品名称',
  `merchant_order_no` varchar(50) NOT NULL COMMENT '商户订单号',
  `trx_no` varchar(50) NOT NULL COMMENT '支付流水号',
  `bank_order_no` varchar(50) DEFAULT NULL COMMENT '银行订单号',
  `bank_trx_no` varchar(50) DEFAULT NULL COMMENT '银行流水号',
  `merchant_name` varchar(300) DEFAULT NULL COMMENT '商家名称',
  `merchant_no` varchar(50) NOT NULL COMMENT '商家编号',
  `payer_user_no` varchar(50) DEFAULT NULL COMMENT '付款人编号',
  `payer_name` varchar(60) DEFAULT NULL COMMENT '付款人名称',
  `payer_pay_amount` decimal(20,6) DEFAULT '0.000000' COMMENT '付款方支付金额',
  `payer_fee` decimal(20,6) DEFAULT '0.000000' COMMENT '付款方手续费',
  `payer_account_type` varchar(30) DEFAULT NULL COMMENT '付款方账户类型(参考账户类型枚举:accounttypeenum)',
  `receiver_user_no` varchar(15) DEFAULT NULL COMMENT '收款人编号',
  `receiver_name` varchar(60) DEFAULT NULL COMMENT '收款人名称',
  `receiver_pay_amount` decimal(20,6) DEFAULT '0.000000' COMMENT '收款方支付金额',
  `receiver_fee` decimal(20,6) DEFAULT '0.000000' COMMENT '收款方手续费',
  `receiver_account_type` varchar(30) DEFAULT NULL COMMENT '收款方账户类型(参考账户类型枚举:accounttypeenum)',
  `order_ip` varchar(30) DEFAULT NULL COMMENT '下单ip(客户端ip,从网关中获取)',
  `order_referer_url` varchar(100) DEFAULT NULL COMMENT '从哪个页面链接过来的(可用于防诈骗)',
  `order_amount` decimal(20,6) DEFAULT '0.000000' COMMENT '订单金额',
  `plat_income` decimal(20,6) DEFAULT NULL COMMENT '平台收入',
  `fee_rate` decimal(20,6) DEFAULT NULL COMMENT '费率',
  `plat_cost` decimal(20,6) DEFAULT NULL COMMENT '平台成本',
  `plat_profit` decimal(20,6) DEFAULT NULL COMMENT '平台利润',
  `return_url` varchar(600) DEFAULT NULL COMMENT '页面回调通知url',
  `notify_url` varchar(600) DEFAULT NULL COMMENT '后台异步通知url',
  `pay_way_code` varchar(50) DEFAULT NULL COMMENT '支付方式编号',
  `pay_way_name` varchar(100) DEFAULT NULL COMMENT '支付方式名称',
  `pay_success_time` datetime DEFAULT NULL COMMENT '支付成功时间',
  `complete_time` datetime DEFAULT NULL COMMENT '完成时间',
  `is_refund` varchar(30) DEFAULT '101' COMMENT '是否退款(100:是,101:否,默认值为:101)',
  `refund_times` int(11) DEFAULT '0' COMMENT '退款次数(默认值为:0)',
  `success_refund_amount` decimal(20,6) DEFAULT NULL COMMENT '成功退款总金额',
  `trx_type` varchar(30) DEFAULT NULL COMMENT '交易业务类型  ：消费、充值等',
  `order_from` varchar(30) DEFAULT NULL COMMENT '订单来源',
  `pay_type_code` varchar(50) DEFAULT NULL COMMENT '支付类型编号',
  `pay_type_name` varchar(100) DEFAULT NULL COMMENT '支付类型名称',
  `fund_into_type` varchar(30) DEFAULT NULL COMMENT '资金流入类型',
  `remark` varchar(3000) DEFAULT NULL COMMENT '备注',
  `field1` varchar(500) DEFAULT NULL,
  `field2` varchar(500) DEFAULT NULL,
  `field3` varchar(500) DEFAULT NULL,
  `field4` varchar(500) DEFAULT NULL,
  `field5` varchar(500) DEFAULT NULL,
  `bank_return_msg` varchar(2000) DEFAULT NULL COMMENT '银行返回信息',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ak_key_2` (`trx_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付记录表';

/*Data for the table `rp_trade_payment_record` */

/*Table structure for table `rp_user_bank_account` */

DROP TABLE IF EXISTS `rp_user_bank_account`;

CREATE TABLE `rp_user_bank_account` (
  `id` varchar(50) NOT NULL,
  `create_time` datetime NOT NULL,
  `edit_time` datetime DEFAULT NULL,
  `version` bigint(20) NOT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `status` varchar(36) NOT NULL,
  `user_no` varchar(50) NOT NULL,
  `bank_name` varchar(200) NOT NULL,
  `bank_code` varchar(50) NOT NULL,
  `bank_account_name` varchar(100) NOT NULL,
  `bank_account_no` varchar(36) NOT NULL,
  `card_type` varchar(36) NOT NULL,
  `card_no` varchar(36) NOT NULL,
  `mobile_no` varchar(50) NOT NULL,
  `is_default` varchar(36) DEFAULT NULL,
  `province` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `areas` varchar(20) DEFAULT NULL,
  `street` varchar(300) DEFAULT NULL,
  `bank_account_type` varchar(36) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户银行账户表';

/*Data for the table `rp_user_bank_account` */

/*Table structure for table `rp_user_info` */

DROP TABLE IF EXISTS `rp_user_info`;

CREATE TABLE `rp_user_info` (
  `id` varchar(50) NOT NULL,
  `create_time` datetime NOT NULL,
  `status` varchar(36) NOT NULL,
  `user_no` varchar(50) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `account_no` varchar(50) NOT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ak_key_2` (`account_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='该表用来存放用户的基本信息';

/*Data for the table `rp_user_info` */

/*Table structure for table `rp_user_pay_config` */

DROP TABLE IF EXISTS `rp_user_pay_config`;

CREATE TABLE `rp_user_pay_config` (
  `id` varchar(50) NOT NULL,
  `create_time` datetime NOT NULL,
  `edit_time` datetime DEFAULT NULL,
  `version` bigint(20) NOT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `status` varchar(36) NOT NULL,
  `audit_status` varchar(45) DEFAULT NULL,
  `is_auto_sett` varchar(36) NOT NULL DEFAULT 'no',
  `product_code` varchar(50) NOT NULL COMMENT '支付产品编号',
  `product_name` varchar(200) NOT NULL COMMENT '支付产品名称',
  `user_no` varchar(50) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `risk_day` int(11) DEFAULT NULL,
  `pay_key` varchar(50) DEFAULT NULL,
  `fund_into_type` varchar(50) DEFAULT NULL,
  `pay_secret` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付设置表';

/*Data for the table `rp_user_pay_config` */

/*Table structure for table `rp_user_pay_info` */

DROP TABLE IF EXISTS `rp_user_pay_info`;

CREATE TABLE `rp_user_pay_info` (
  `id_` varchar(50) NOT NULL,
  `create_time` datetime NOT NULL,
  `edit_time` datetime DEFAULT NULL,
  `version` bigint(20) NOT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `status` varchar(36) NOT NULL,
  `app_id` varchar(50) NOT NULL,
  `app_sectet` varchar(100) DEFAULT NULL,
  `merchant_id` varchar(50) DEFAULT NULL,
  `app_type` varchar(50) DEFAULT NULL,
  `user_no` varchar(50) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `partner_key` varchar(100) DEFAULT NULL,
  `pay_way_code` varchar(50) NOT NULL COMMENT '支付方式编号',
  `pay_way_name` varchar(100) NOT NULL COMMENT '支付方式名称',
  `offline_app_id` varchar(50) DEFAULT NULL,
  `rsa_private_key` varchar(100) DEFAULT NULL,
  `rsa_public_key` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='该表用来存放用户开通的第三方支付信息';

/*Data for the table `rp_user_pay_info` */

/*Table structure for table `seq_table` */

DROP TABLE IF EXISTS `seq_table`;

CREATE TABLE `seq_table` (
  `SEQ_NAME` varchar(50) NOT NULL,
  `CURRENT_VALUE` bigint(20) NOT NULL DEFAULT '1000000002',
  `INCREMENT` smallint(6) NOT NULL DEFAULT '1',
  `REMARK` varchar(100) NOT NULL,
  PRIMARY KEY (`SEQ_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `seq_table` */

insert  into `seq_table`(`SEQ_NAME`,`CURRENT_VALUE`,`INCREMENT`,`REMARK`) values ('ACCOUNT_NO_SEQ',10000000,1,'账户--账户编号'),('ACTIVITY_NO_SEQ',10000006,1,'活动--活动编号'),('BANK_ORDER_NO_SEQ',10000000,1,'交易—-银行订单号'),('RECONCILIATION_BATCH_NO_SEQ',10000000,1,'对账—-批次号'),('TRX_NO_SEQ',10000000,1,'交易—-支付流水号'),('USER_NO_SEQ',10001113,1,'用户--用户编号');

/* Function  structure for function  `FUN_DATE_ADD` */

/*!50003 DROP FUNCTION IF EXISTS `FUN_DATE_ADD` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` FUNCTION `FUN_DATE_ADD`(STR_DATE VARCHAR(10), STR_INTERVAL INTEGER) RETURNS date
BEGIN
     RETURN date_add(STR_DATE, INTERVAL STR_INTERVAL DAY);
END */$$
DELIMITER ;

/* Function  structure for function  `FUN_NOW` */

/*!50003 DROP FUNCTION IF EXISTS `FUN_NOW` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` FUNCTION `FUN_NOW`() RETURNS datetime
BEGIN 
RETURN now();
END */$$
DELIMITER ;

/* Function  structure for function  `FUN_SEQ` */

/*!50003 DROP FUNCTION IF EXISTS `FUN_SEQ` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` FUNCTION `FUN_SEQ`(SEQ VARCHAR(50)) RETURNS bigint(20)
BEGIN
     UPDATE SEQ_TABLE
     SET CURRENT_VALUE = CURRENT_VALUE + INCREMENT
     WHERE  SEQ_NAME=SEQ;
     RETURN FUN_SEQ_CURRENT_VALUE(SEQ);
END */$$
DELIMITER ;

/* Function  structure for function  `FUN_SEQ_CURRENT_VALUE` */

/*!50003 DROP FUNCTION IF EXISTS `FUN_SEQ_CURRENT_VALUE` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` FUNCTION `FUN_SEQ_CURRENT_VALUE`(SEQ VARCHAR(50)) RETURNS bigint(20)
BEGIN
    DECLARE VALUE INTEGER;
    SET VALUE=0;
    SELECT CURRENT_VALUE INTO VALUE
    FROM SEQ_TABLE 
    WHERE SEQ_NAME=SEQ;
    RETURN VALUE;
END */$$
DELIMITER ;

/* Function  structure for function  `FUN_SEQ_SET_VALUE` */

/*!50003 DROP FUNCTION IF EXISTS `FUN_SEQ_SET_VALUE` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` FUNCTION `FUN_SEQ_SET_VALUE`(SEQ VARCHAR(50), VALUE INTEGER) RETURNS bigint(20)
BEGIN
     UPDATE SEQ_TABLE 
     SET CURRENT_VALUE=VALUE
     WHERE SEQ_NAME=SEQ;
     RETURN FUN_SEQ_CURRENT_VALUE(SEQ);
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
