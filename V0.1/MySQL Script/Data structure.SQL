@@ -1,5219 +0,0 @@
/*
Source Database       : mdm
Target Server Type    : MYSQL
Date: 2017-09-29 10:00:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `certificate`
-- ----------------------------
DROP TABLE IF EXISTS `certificate`;
CREATE TABLE `certificate` (
  `id` varchar(32) NOT NULL,
  `epnum` varchar(6) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `certype` varchar(80) DEFAULT NULL,
  `cernumber` varchar(80) DEFAULT NULL,
  `ceratvbd` varchar(20) DEFAULT NULL,
  `ceratved` varchar(20) DEFAULT NULL,
  `remark` varchar(32) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `createDate` varchar(20) DEFAULT NULL,
  `createMember` varchar(32) DEFAULT NULL,
  `updateDate` varchar(20) DEFAULT NULL,
  `updateMember` varchar(32) DEFAULT NULL,
  `epbi` varchar(60) DEFAULT NULL,
  `cerdelfg` varchar(1) DEFAULT NULL,
  `phProp` varchar(32) DEFAULT NULL,
  `enable` varchar(2) DEFAULT NULL,
  `ws0` varchar(255) DEFAULT NULL,
  `ws1` varchar(255) DEFAULT NULL,
  `ws2` varchar(255) DEFAULT NULL,
  `ws3` varchar(255) DEFAULT NULL,
  `ws4` varchar(255) DEFAULT NULL,
  `ws5` varchar(255) DEFAULT NULL,
  `ws6` varchar(255) DEFAULT NULL,
  `ws7` varchar(255) DEFAULT NULL,
  `ws8` varchar(255) DEFAULT NULL,
  `ws9` varchar(255) DEFAULT NULL,
  `usrct` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `cfg_bean`
-- ----------------------------
DROP TABLE IF EXISTS `cfg_bean`;
CREATE TABLE `cfg_bean` (
  `id` varchar(32) NOT NULL,
  `bean` varchar(20) DEFAULT NULL COMMENT '大写字母开头的BEANNAME',
  `descr` varchar(20) DEFAULT NULL,
  `isFlow` varchar(1) DEFAULT NULL COMMENT '是否属于流程处理',
  `descrProperty` varchar(20) DEFAULT NULL,
  `pkg` varchar(10) DEFAULT NULL,
  `tableName` varchar(20) DEFAULT NULL,
  `usrct` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `cfg_bean_state`
-- ----------------------------
DROP TABLE IF EXISTS `cfg_bean_state`;
CREATE TABLE `cfg_bean_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'bean的状态',
  `bean` int(11) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `descr` varchar(20) DEFAULT NULL,
  `ord` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cfg_bean_state
-- ----------------------------

-- ----------------------------
-- Table structure for `cfg_cons`
-- ----------------------------
DROP TABLE IF EXISTS `cfg_cons`;
CREATE TABLE `cfg_cons` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `enable` varchar(2) DEFAULT NULL,
  `domain` varchar(32) DEFAULT NULL,
  `ord` int(11) DEFAULT NULL,
  `usrct` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `cfg_domain`
-- ----------------------------
DROP TABLE IF EXISTS `cfg_domain`;
CREATE TABLE `cfg_domain` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `domain` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `enable` varchar(2) DEFAULT NULL,
  `pkg` varchar(5) DEFAULT NULL,
  `usrct` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `cfg_filter`
-- ----------------------------
DROP TABLE IF EXISTS `cfg_filter`;
CREATE TABLE `cfg_filter` (
  `id` varchar(32) NOT NULL,
  `permission` varchar(32) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `ord` varchar(3) DEFAULT NULL,
  `usrct` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `cfg_filter_property`
-- ----------------------------
DROP TABLE IF EXISTS `cfg_filter_property`;
CREATE TABLE `cfg_filter_property` (
  `id` varchar(32) NOT NULL,
  `filter` varchar(32) DEFAULT NULL,
  `property` varchar(32) DEFAULT NULL,
  `op` varchar(255) DEFAULT NULL,
  `val` varchar(255) DEFAULT NULL,
  `clazz` varchar(255) DEFAULT NULL,
  `usrct` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `cfg_loginfo`
-- ----------------------------
DROP TABLE IF EXISTS `cfg_loginfo`;
CREATE TABLE `cfg_loginfo` (
  `id` varchar(32) NOT NULL,
  `loginId` varchar(32) DEFAULT NULL,
  `loginName` varchar(32) DEFAULT NULL,
  `loginIp` varchar(32) DEFAULT NULL,
  `sysName` varchar(32) DEFAULT NULL,
  `beginTime` varchar(32) DEFAULT NULL,
  `endTime` varchar(32) DEFAULT NULL,
  `enable` varchar(2) DEFAULT NULL,
  `createDate` varchar(20) DEFAULT NULL,
  `createMember` varchar(32) DEFAULT NULL,
  `updateDate` varchar(20) DEFAULT NULL,
  `updateMember` varchar(32) DEFAULT NULL,
  `ws0` varchar(255) DEFAULT NULL,
  `ws1` varchar(255) DEFAULT NULL,
  `ws2` varchar(255) DEFAULT NULL,
  `ws3` varchar(255) DEFAULT NULL,
  `ws4` varchar(255) DEFAULT NULL,
  `ws5` varchar(255) DEFAULT NULL,
  `ws6` varchar(255) DEFAULT NULL,
  `ws7` varchar(255) DEFAULT NULL,
  `ws8` varchar(255) DEFAULT NULL,
  `ws9` varchar(255) DEFAULT NULL,
  `usrct` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `loginIp1` (`loginIp`) USING BTREE,
  KEY `enable1` (`enable`) USING BTREE,
  KEY `endTime1` (`endTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `cfg_member`
-- ----------------------------
DROP TABLE IF EXISTS `cfg_member`;
CREATE TABLE `cfg_member` (
  `id` varchar(32) NOT NULL COMMENT '人员表',
  `org` varchar(32) DEFAULT NULL,
  `loginId` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `psd` varchar(255) DEFAULT NULL,
  `usrct` varchar(4) DEFAULT NULL,
  `oranId` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cfg_member
-- ----------------------------


-- ----------------------------
-- Table structure for `cfg_member_edit`
-- ----------------------------
DROP TABLE IF EXISTS `cfg_member_edit`;
CREATE TABLE `cfg_member_edit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member` varchar(32) DEFAULT NULL,
  `enable` varchar(2) DEFAULT NULL,
  `createDate` varchar(20) DEFAULT NULL,
  `createMember` int(11) DEFAULT NULL,
  `updateDate` varchar(20) DEFAULT NULL,
  `updateMember` int(11) DEFAULT NULL,
  `ws0` varchar(255) DEFAULT NULL,
  `ws1` varchar(255) DEFAULT NULL,
  `ws2` varchar(255) DEFAULT NULL,
  `ws3` varchar(255) DEFAULT NULL,
  `ws4` varchar(255) DEFAULT NULL,
  `ws5` varchar(255) DEFAULT NULL,
  `ws6` varchar(255) DEFAULT NULL,
  `ws7` varchar(255) DEFAULT NULL,
  `ws8` varchar(255) DEFAULT NULL,
  `ws9` varchar(255) DEFAULT NULL,
  `usrct` varchar(4) DEFAULT NULL,
  `ndescr` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cfg_member_edit
-- ----------------------------

-- ----------------------------
-- Table structure for `cfg_menu`
-- ----------------------------
DROP TABLE IF EXISTS `cfg_menu`;
CREATE TABLE `cfg_menu` (
  `id` varchar(32) NOT NULL,
  `permission` varchar(32) DEFAULT NULL,
  `parentPermission` varchar(32) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `ord` int(11) DEFAULT NULL,
  `enable` varchar(2) DEFAULT NULL,
  `createDate` varchar(20) DEFAULT NULL,
  `createMember` varchar(32) DEFAULT NULL,
  `updateDate` varchar(20) DEFAULT NULL,
  `updateMember` varchar(32) DEFAULT NULL,
  `usrct` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `cfg_myinput`
-- ----------------------------
DROP TABLE IF EXISTS `cfg_myinput`;
CREATE TABLE `cfg_myinput` (
  `id` varchar(11) NOT NULL,
  `descr` varchar(10) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `usrct` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `cfg_opermi`
-- ----------------------------
DROP TABLE IF EXISTS `cfg_opermi`;
CREATE TABLE `cfg_opermi` (
  `id` varchar(32) NOT NULL,
  `descr` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `sys` varchar(100) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `enable` varchar(2) DEFAULT NULL,
  `createDate` varchar(20) DEFAULT NULL,
  `createMember` varchar(32) DEFAULT NULL,
  `updateDate` varchar(20) DEFAULT NULL,
  `updateMember` varchar(32) DEFAULT NULL,
  `ws0` varchar(255) DEFAULT NULL,
  `ws1` varchar(255) DEFAULT NULL,
  `ws2` varchar(255) DEFAULT NULL,
  `ws3` varchar(255) DEFAULT NULL,
  `ws4` varchar(255) DEFAULT NULL,
  `ws5` varchar(255) DEFAULT NULL,
  `ws6` varchar(255) DEFAULT NULL,
  `ws7` varchar(255) DEFAULT NULL,
  `ws8` varchar(255) DEFAULT NULL,
  `ws9` varchar(255) DEFAULT NULL,
  `usrct` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `cfg_org`
-- ----------------------------
DROP TABLE IF EXISTS `cfg_org`;
CREATE TABLE `cfg_org` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `orge` varchar(32) DEFAULT NULL,
  `orgCode` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `parent` varchar(32) DEFAULT NULL,
  `orglv` varchar(4) DEFAULT NULL,
  `offi` varchar(2) DEFAULT NULL COMMENT '1 行政组织 2 岗位组织',
  `att1` varchar(2) DEFAULT NULL COMMENT '组织的性质',
  `att2` varchar(2) DEFAULT NULL,
  `att3` varchar(2) DEFAULT NULL,
  `usrct` varchar(4) DEFAULT NULL,
  `delfg` varchar(1) DEFAULT NULL,
  `oranId` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `cfg_org_member`
-- ----------------------------
DROP TABLE IF EXISTS `cfg_org_member`;
CREATE TABLE `cfg_org_member` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `org` varchar(32) DEFAULT NULL,
  `member` varchar(32) DEFAULT NULL,
  `enable` varchar(2) DEFAULT NULL,
  `createDate` varchar(20) DEFAULT NULL,
  `createMember` varchar(32) DEFAULT NULL,
  `updateDate` varchar(20) DEFAULT NULL,
  `updateMember` varchar(32) DEFAULT NULL,
  `ws0` varchar(255) DEFAULT NULL,
  `ws1` varchar(255) DEFAULT NULL,
  `ws2` varchar(255) DEFAULT NULL,
  `ws3` varchar(255) DEFAULT NULL,
  `ws4` varchar(255) DEFAULT NULL,
  `ws5` varchar(255) DEFAULT NULL,
  `ws6` varchar(255) DEFAULT NULL,
  `ws7` varchar(255) DEFAULT NULL,
  `ws8` varchar(255) DEFAULT NULL,
  `ws9` varchar(255) DEFAULT NULL,
  `usrct` varchar(4) DEFAULT NULL,
  `delfg` varchar(1) DEFAULT NULL,
  `oranId` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `cfg_perf`
-- ----------------------------
DROP TABLE IF EXISTS `cfg_perf`;
CREATE TABLE `cfg_perf` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `bean` varchar(32) DEFAULT NULL,
  `permission` varchar(32) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `kind` varchar(10) DEFAULT NULL COMMENT 'LIST、EDIT、ADD、DETAIL、EXPORT',
  `ord` varchar(2) DEFAULT NULL COMMENT '多个同Permission的perf需要显示其中一个Perf的时候',
  `perf` varchar(11) DEFAULT NULL COMMENT '人员的权限组对应多个同kind的不同perf时，弹出页面让用户做选择某种perf显示方式，当处于流程编辑时，默认选择与流程当前状态相匹配的perf（详见cfg_perf_state）',
  `layout` varchar(5000) DEFAULT NULL,
  `usrct` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `cfg_perf_property`
-- ----------------------------
DROP TABLE IF EXISTS `cfg_perf_property`;
CREATE TABLE `cfg_perf_property` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `perf` varchar(32) DEFAULT NULL,
  `property` varchar(32) DEFAULT NULL,
  `editshowhide` varchar(1) DEFAULT NULL COMMENT '0-hide，1-show，2-edit',
  `kind` varchar(11) DEFAULT NULL COMMENT '一个perf上对于一个Property有多个用途',
  `myinput` varchar(32) DEFAULT NULL,
  `required` varchar(1) DEFAULT NULL,
  `valueurl` varchar(200) DEFAULT NULL,
  `validType` varchar(20) DEFAULT NULL,
  `dftvalue` varchar(20) DEFAULT NULL,
  `width` varchar(5) DEFAULT NULL COMMENT 'list中使用',
  `min` varchar(5) DEFAULT NULL,
  `max` varchar(5) DEFAULT NULL,
  `showvalue` varchar(200) DEFAULT NULL COMMENT '对于域中的value，需要如何显示成他的descr。如何定义这个指代关系，使得程序能够默认去显示对应的descr',
  `usrct` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='不同示显方式对应不同的字段属性的是否可见可写';


-- ----------------------------
-- Table structure for `cfg_perf_state`
-- ----------------------------
DROP TABLE IF EXISTS `cfg_perf_state`;
CREATE TABLE `cfg_perf_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '单为流程设置，edit显示方式与人员权限、bean自身的状态相关联，人员进入bean的edit界面\r\n1、判断flow中的权限 2判断beanstate 3联合查询得到editperf',
  `perf` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='单为流程设置，edit显示方式与bean自身的状态相关联，人员进入bean的edit界面\r\n1、判断flow中的权限 2';

-- ----------------------------
-- Records of cfg_perf_state
-- ----------------------------

-- ----------------------------
-- Table structure for `cfg_permission`
-- ----------------------------
DROP TABLE IF EXISTS `cfg_permission`;
CREATE TABLE `cfg_permission` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `parent` varchar(32) DEFAULT NULL,
  `namespace` varchar(255) DEFAULT NULL,
  `actionName` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `type` varchar(4) DEFAULT NULL,
  `ord` varchar(1) DEFAULT NULL,
  `enable` varchar(2) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `usrct` varchar(4) DEFAULT NULL,
  `perf` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `cfg_property`
-- ----------------------------
DROP TABLE IF EXISTS `cfg_property`;
CREATE TABLE `cfg_property` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `bean` varchar(32) DEFAULT NULL,
  `property` varchar(40) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL COMMENT '若pro是外键则是对应的BEANNAME,程序中type为BEANNAME，若pro是FILE，则是File，在程序中其type是string，影响表格中post_enctype',
  `descr` varchar(200) DEFAULT NULL,
  `length` varchar(5) DEFAULT NULL,
  `votype` varchar(200) DEFAULT NULL,
  `myinput` varchar(32) DEFAULT NULL,
  `required` varchar(1) DEFAULT NULL,
  `valueurl` varchar(200) DEFAULT NULL,
  `validType` varchar(20) DEFAULT NULL,
  `dftvalue` varchar(200) DEFAULT NULL,
  `width` varchar(5) DEFAULT NULL,
  `min` varchar(5) DEFAULT NULL,
  `max` varchar(5) DEFAULT NULL,
  `showvalue` varchar(200) DEFAULT NULL,
  `ord` int(3) DEFAULT NULL,
  `usrct` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `cfg_quote`
-- ----------------------------
DROP TABLE IF EXISTS `cfg_quote`;
CREATE TABLE `cfg_quote` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `descr` varchar(255) DEFAULT NULL,
  `oranPerf` varchar(32) DEFAULT NULL,
  `oranProperty` varchar(32) DEFAULT NULL,
  `quotePerf` varchar(32) DEFAULT NULL,
  `quoteProperty` varchar(32) DEFAULT NULL,
  `divTitle` varchar(255) DEFAULT NULL,
  `usrct` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `cfg_role`
-- ----------------------------
DROP TABLE IF EXISTS `cfg_role`;
CREATE TABLE `cfg_role` (
  `id` varchar(32) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `ord` int(2) DEFAULT NULL,
  `usrct` varchar(4) DEFAULT NULL,
  `sys` varchar(6) DEFAULT NULL,
  `mark` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role` (`role`) USING BTREE,
  KEY `sys` (`sys`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `cfg_role_att`
-- ----------------------------
DROP TABLE IF EXISTS `cfg_role_att`;
CREATE TABLE `cfg_role_att` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `role` varchar(32) DEFAULT NULL,
  `att` varchar(2) DEFAULT NULL,
  `enable` varchar(2) DEFAULT NULL,
  `createDate` varchar(20) DEFAULT NULL,
  `createMember` varchar(32) DEFAULT NULL,
  `updateDate` varchar(20) DEFAULT NULL,
  `updateMember` varchar(32) DEFAULT NULL,
  `ws8` varchar(255) DEFAULT NULL,
  `ws9` varchar(255) DEFAULT NULL,
  `ws0` varchar(255) DEFAULT NULL,
  `ws1` varchar(255) DEFAULT NULL,
  `ws2` varchar(255) DEFAULT NULL,
  `ws3` varchar(255) DEFAULT NULL,
  `ws4` varchar(255) DEFAULT NULL,
  `ws5` varchar(255) DEFAULT NULL,
  `ws6` varchar(255) DEFAULT NULL,
  `ws7` varchar(255) DEFAULT NULL,
  `usrct` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cfg_role_att
-- ----------------------------

-- ----------------------------
-- Table structure for `cfg_role_filter`
-- ----------------------------
DROP TABLE IF EXISTS `cfg_role_filter`;
CREATE TABLE `cfg_role_filter` (
  `id` varchar(32) NOT NULL,
  `role` varchar(32) DEFAULT NULL,
  `filter` varchar(32) DEFAULT NULL,
  `usrct` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

 -- ----------------------------
-- Table structure for `cfg_role_member`
-- ----------------------------
DROP TABLE IF EXISTS `cfg_role_member`;
CREATE TABLE `cfg_role_member` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `role` varchar(32) DEFAULT NULL,
  `member` varchar(32) DEFAULT NULL,
  `enable` varchar(2) DEFAULT NULL,
  `createDate` varchar(20) DEFAULT NULL,
  `createMember` varchar(32) DEFAULT NULL,
  `updateDate` varchar(20) DEFAULT NULL,
  `updateMember` varchar(32) DEFAULT NULL,
  `ws0` varchar(255) DEFAULT NULL,
  `ws1` varchar(255) DEFAULT NULL,
  `ws2` varchar(255) DEFAULT NULL,
  `ws3` varchar(255) DEFAULT NULL,
  `ws4` varchar(255) DEFAULT NULL,
  `ws5` varchar(255) DEFAULT NULL,
  `ws6` varchar(255) DEFAULT NULL,
  `ws7` varchar(255) DEFAULT NULL,
  `ws8` varchar(255) DEFAULT NULL,
  `ws9` varchar(255) DEFAULT NULL,
  `usrct` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role` (`role`) USING BTREE,
  KEY `member` (`member`) USING BTREE,
  KEY `enable` (`enable`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `cfg_role_opermi`
-- ----------------------------
DROP TABLE IF EXISTS `cfg_role_opermi`;
CREATE TABLE `cfg_role_opermi` (
  `id` varchar(32) NOT NULL,
  `role` varchar(32) DEFAULT NULL,
  `opermi` varchar(32) DEFAULT NULL,
  `remark` varchar(60) DEFAULT NULL,
  `enable` varchar(2) DEFAULT NULL,
  `createDate` varchar(20) DEFAULT NULL,
  `createMember` varchar(32) DEFAULT NULL,
  `updateDate` varchar(20) DEFAULT NULL,
  `updateMember` varchar(32) DEFAULT NULL,
  `ws0` varchar(255) DEFAULT NULL,
  `ws1` varchar(255) DEFAULT NULL,
  `ws2` varchar(255) DEFAULT NULL,
  `ws3` varchar(255) DEFAULT NULL,
  `ws4` varchar(255) DEFAULT NULL,
  `ws5` varchar(255) DEFAULT NULL,
  `ws6` varchar(255) DEFAULT NULL,
  `ws7` varchar(255) DEFAULT NULL,
  `ws8` varchar(255) DEFAULT NULL,
  `ws9` varchar(255) DEFAULT NULL,
  `usrct` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role` (`role`) USING BTREE,
  KEY `enable` (`enable`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `cfg_role_org`
-- ----------------------------
DROP TABLE IF EXISTS `cfg_role_org`;
CREATE TABLE `cfg_role_org` (
  `id` varchar(32) NOT NULL,
  `role` varchar(32) DEFAULT NULL,
  `org` varchar(32) DEFAULT NULL,
  `enable` varchar(2) DEFAULT NULL,
  `createDate` varchar(20) DEFAULT NULL,
  `createMember` varchar(32) DEFAULT NULL,
  `updateDate` varchar(20) DEFAULT NULL,
  `updateMember` varchar(32) DEFAULT NULL,
  `ws0` varchar(255) DEFAULT NULL,
  `ws1` varchar(255) DEFAULT NULL,
  `ws2` varchar(255) DEFAULT NULL,
  `ws3` varchar(255) DEFAULT NULL,
  `ws4` varchar(255) DEFAULT NULL,
  `ws5` varchar(255) DEFAULT NULL,
  `ws6` varchar(255) DEFAULT NULL,
  `ws7` varchar(255) DEFAULT NULL,
  `ws8` varchar(255) DEFAULT NULL,
  `ws9` varchar(255) DEFAULT NULL,
  `usrct` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `org` (`org`) USING BTREE,
  KEY `role` (`role`) USING BTREE,
  KEY `enable` (`enable`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `cfg_role_orn`
-- ----------------------------
DROP TABLE IF EXISTS `cfg_role_orn`;
CREATE TABLE `cfg_role_orn` (
  `id` varchar(32) NOT NULL,
  `role` varchar(32) DEFAULT NULL,
  `orni` varchar(32) DEFAULT NULL,
  `orgd` varchar(32) DEFAULT NULL,
  `enable` varchar(2) DEFAULT NULL,
  `createDate` varchar(20) DEFAULT NULL,
  `createMember` varchar(32) DEFAULT NULL,
  `updateDate` varchar(20) DEFAULT NULL,
  `updateMember` varchar(32) DEFAULT NULL,
  `ws0` varchar(255) DEFAULT NULL,
  `ws1` varchar(255) DEFAULT NULL,
  `ws2` varchar(255) DEFAULT NULL,
  `ws3` varchar(255) DEFAULT NULL,
  `ws4` varchar(255) DEFAULT NULL,
  `ws5` varchar(255) DEFAULT NULL,
  `ws6` varchar(255) DEFAULT NULL,
  `ws7` varchar(255) DEFAULT NULL,
  `ws8` varchar(255) DEFAULT NULL,
  `ws9` varchar(255) DEFAULT NULL,
  `usrct` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role` (`role`) USING BTREE,
  KEY `orni` (`orni`) USING BTREE,
  KEY `enable` (`enable`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;








-- ----------------------------
-- Table structure for `cfg_role_perf`
-- ----------------------------
DROP TABLE IF EXISTS `cfg_role_perf`;
CREATE TABLE `cfg_role_perf` (
  `id` varchar(32) NOT NULL,
  `role` varchar(32) DEFAULT NULL,
  `perf` varchar(32) DEFAULT NULL,
  `usrct` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

 
-- ----------------------------
-- Table structure for `cfg_role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `cfg_role_permission`;
CREATE TABLE `cfg_role_permission` (
  `id` varchar(32) NOT NULL COMMENT '权限表',
  `role` varchar(32) DEFAULT NULL,
  `permission` varchar(32) DEFAULT NULL,
  `usrct` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





-- ----------------------------
-- Table structure for `cfg_vericode`
-- ----------------------------
DROP TABLE IF EXISTS `cfg_vericode`;
CREATE TABLE `cfg_vericode` (
  `id` varchar(32) NOT NULL,
  `loginId` varchar(32) DEFAULT NULL,
  `syuid` varchar(50) DEFAULT NULL,
  `veriCode` varchar(32) DEFAULT NULL,
  `beginTime` varchar(32) DEFAULT NULL,
  `endTime` varchar(32) DEFAULT NULL,
  `enable` varchar(2) DEFAULT NULL,
  `createDate` varchar(20) DEFAULT NULL,
  `createMember` varchar(32) DEFAULT NULL,
  `updateDate` varchar(20) DEFAULT NULL,
  `updateMember` varchar(32) DEFAULT NULL,
  `ws0` varchar(255) DEFAULT NULL,
  `ws1` varchar(255) DEFAULT NULL,
  `ws2` varchar(255) DEFAULT NULL,
  `ws3` varchar(255) DEFAULT NULL,
  `ws4` varchar(255) DEFAULT NULL,
  `ws5` varchar(255) DEFAULT NULL,
  `ws6` varchar(255) DEFAULT NULL,
  `ws7` varchar(255) DEFAULT NULL,
  `ws8` varchar(255) DEFAULT NULL,
  `ws9` varchar(255) DEFAULT NULL,
  `usrct` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `enable` (`enable`),
  KEY `endTime` (`endTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `coct`
-- ----------------------------
DROP TABLE IF EXISTS `coct`;
CREATE TABLE `coct` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `cstid` varchar(10) CHARACTER SET utf8 NOT NULL,
  `cstdc` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`cstid`),
  UNIQUE KEY `IX_coct` (`cstid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of coct
-- ----------------------------

-- ----------------------------
-- Table structure for `com_constant`
-- ----------------------------
DROP TABLE IF EXISTS `com_constant`;
CREATE TABLE `com_constant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `descr` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `value` longtext CHARACTER SET utf8,
  `domainid` int(11) DEFAULT NULL,
  `ord` int(11) DEFAULT NULL,
  `enable` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `com_domain`
-- ----------------------------
DROP TABLE IF EXISTS `com_domain`;
CREATE TABLE `com_domain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `descr` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `enable` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `com_module`
-- ----------------------------
DROP TABLE IF EXISTS `com_module`;
CREATE TABLE `com_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descr` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ord` int(11) DEFAULT NULL,
  `enable` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

 
-- ----------------------------
-- Table structure for `com_url`
-- ----------------------------
DROP TABLE IF EXISTS `com_url`;
CREATE TABLE `com_url` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `descr` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `modId` int(11) DEFAULT NULL,
  `isShowInLeft` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ord` int(11) DEFAULT NULL,
  `isNew` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `enable` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `ddemployee`
-- ----------------------------
DROP TABLE IF EXISTS `ddemployee`;
CREATE TABLE `ddemployee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `departmentid` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `position` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `userid` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `mobile` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22133 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ddemployee
-- ----------------------------

-- ----------------------------
-- Table structure for `dwbi`
-- ----------------------------
DROP TABLE IF EXISTS `dwbi`;
CREATE TABLE `dwbi` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `dwiid` varchar(40) CHARACTER SET utf8 NOT NULL,
  `dwisd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `dwidc` varchar(80) CHARACTER SET utf8 DEFAULT NULL,
  `dwiar` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `dwirk` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `dwitg` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `dwicg` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `dwimc` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `dwisc` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `dwino` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `dwitp` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `dwifm` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dwbi
-- ----------------------------

-- ----------------------------
-- Table structure for `dwbt`
-- ----------------------------
DROP TABLE IF EXISTS `dwbt`;
CREATE TABLE `dwbt` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `dwiid` varchar(40) CHARACTER SET utf8 NOT NULL,
  `dwdtc` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `tabnf` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `fednf` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `tabnt` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `frmla` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `dwiui` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `orgid` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `orgcd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `vlmfu` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `vlmfl` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `vlmnm` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `vlwpl` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `dwiep` varchar(4) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dwbt
-- ----------------------------

-- ----------------------------
-- Table structure for `dwmc`
-- ----------------------------
DROP TABLE IF EXISTS `dwmc`;
CREATE TABLE `dwmc` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `dwitg` varchar(4) CHARACTER SET utf8 NOT NULL,
  `dwicg` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `ctgid` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `ctgir` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dwmc
-- ----------------------------

-- ----------------------------
-- Table structure for `dwmg`
-- ----------------------------
DROP TABLE IF EXISTS `dwmg`;
CREATE TABLE `dwmg` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `dwitg` varchar(4) CHARACTER SET utf8 NOT NULL,
  `ctgyd` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `ctgyr` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dwmg
-- ----------------------------

-- ----------------------------
-- Table structure for `dwmm`
-- ----------------------------
DROP TABLE IF EXISTS `dwmm`;
CREATE TABLE `dwmm` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `dwitg` varchar(4) CHARACTER SET utf8 NOT NULL,
  `dwicg` varchar(4) CHARACTER SET utf8 NOT NULL,
  `dwimc` varchar(4) CHARACTER SET utf8 NOT NULL,
  `mddcd` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `mddcr` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dwmm
-- ----------------------------

-- ----------------------------
-- Table structure for `dwms`
-- ----------------------------
DROP TABLE IF EXISTS `dwms`;
CREATE TABLE `dwms` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `dwitg` varchar(4) CHARACTER SET utf8 NOT NULL,
  `dwicg` varchar(4) CHARACTER SET utf8 NOT NULL,
  `dwimc` varchar(4) CHARACTER SET utf8 NOT NULL,
  `dwisc` varchar(4) CHARACTER SET utf8 NOT NULL,
  `sddcd` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `sddcr` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dwms
-- ----------------------------

-- ----------------------------
-- Table structure for `edhg`
-- ----------------------------
DROP TABLE IF EXISTS `edhg`;
CREATE TABLE `edhg` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `edhdg` varchar(4) CHARACTER SET utf8 NOT NULL,
  `edhdd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`edhdg`),
  UNIQUE KEY `IX_edhg` (`edhdg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of edhg
-- ----------------------------

-- ----------------------------
-- Table structure for `edrt`
-- ----------------------------
DROP TABLE IF EXISTS `edrt`;
CREATE TABLE `edrt` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `hsrtp` varchar(4) CHARACTER SET utf8 NOT NULL,
  `hsrdc` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`hsrtp`),
  UNIQUE KEY `IX_edrt` (`hsrtp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of edrt
-- ----------------------------

-- ----------------------------
-- Table structure for `epad`
-- ----------------------------
DROP TABLE IF EXISTS `epad`;
CREATE TABLE `epad` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `addid` varchar(10) CHARACTER SET utf8 NOT NULL,
  `addnm` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`addid`),
  UNIQUE KEY `IX_epad` (`addid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epad
-- ----------------------------

-- ----------------------------
-- Table structure for `epba`
-- ----------------------------
DROP TABLE IF EXISTS `epba`;
CREATE TABLE `epba` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epnum` varchar(20) CHARACTER SET utf8 NOT NULL,
  `atgp1` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgp2` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgp3` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgp4` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgp5` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgp6` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgp7` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgp8` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgp9` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpa` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpb` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpc` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpd` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpe` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpf` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpg` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgph` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpi` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpj` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpk` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpl` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpm` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpn` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpo` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpp` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpq` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpr` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgps` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpt` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpu` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpv` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpw` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpx` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpy` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpz` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgp1` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgp2` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgp3` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgp4` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgp5` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgp6` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgp7` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgp8` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgp9` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgpa` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgpb` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgpc` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgpd` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgpe` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgpf` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgpg` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgph` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgpi` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgpj` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgpk` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epnum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epba
-- ----------------------------

-- ----------------------------
-- Table structure for `epbi`
-- ----------------------------
DROP TABLE IF EXISTS `epbi`;
CREATE TABLE `epbi` (
  `id` varchar(32) NOT NULL,
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epnum` varchar(20) CHARACTER SET utf8 NOT NULL,
  `epytp` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `syuid` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `psd` varchar(50) DEFAULT NULL,
  `epnuo` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `sname` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `mname` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `fname` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `bname` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `alias` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `natin` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `gendr` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `idcad` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `ptcad` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `sscad` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `epysu` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `sptwk` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `yeagt` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `regtd` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `leadt` varchar(8) DEFAULT NULL COMMENT '离职日期',
  `polaf` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `fulln` varchar(20) DEFAULT NULL,
  `prewa` varchar(10) DEFAULT NULL,
  `ltwdt` varchar(8) DEFAULT NULL,
  `linid` varchar(4) DEFAULT NULL,
  `station` varchar(32) DEFAULT NULL,
  `pstnm` varchar(10) DEFAULT NULL,
  `title` varchar(10) DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `eptyid` int(11) DEFAULT NULL,
  `tonaid` int(11) DEFAULT NULL,
  `epstid` int(11) DEFAULT NULL,
  `sbpsid` int(11) DEFAULT NULL,
  `epspid` int(11) DEFAULT NULL,
  `epniid` varchar(50) DEFAULT NULL,
  `epesid` int(11) DEFAULT NULL,
  `createMember` varchar(32) DEFAULT NULL,
  `createDate` varchar(20) DEFAULT NULL,
  `updateMember` varchar(32) DEFAULT NULL,
  `updateDate` varchar(20) DEFAULT NULL,
  `confirm` varchar(1) DEFAULT NULL,
  `conMember` varchar(32) DEFAULT NULL,
  `conDate` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `photeState` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_epbi` (`epnum`) USING BTREE,
  KEY `epniid` (`epniid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epbi
-- ----------------------------

-- ----------------------------
-- Table structure for `epco`
-- ----------------------------
DROP TABLE IF EXISTS `epco`;
CREATE TABLE `epco` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `wkcom` varchar(10) CHARACTER SET utf8 NOT NULL,
  `wknms` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `wknmf` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `gactc` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `indst` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `cmnat` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `cmscl` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`wkcom`),
  UNIQUE KEY `IX_epco` (`wkcom`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epco
-- ----------------------------

-- ----------------------------
-- Table structure for `epec`
-- ----------------------------
DROP TABLE IF EXISTS `epec`;
CREATE TABLE `epec` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `ectid` varchar(10) CHARACTER SET utf8 NOT NULL,
  `ectnm` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`ectid`),
  UNIQUE KEY `IX_epec` (`ectid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epec
-- ----------------------------

-- ----------------------------
-- Table structure for `epep`
-- ----------------------------
DROP TABLE IF EXISTS `epep`;
CREATE TABLE `epep` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epnum` varchar(20) CHARACTER SET utf8 NOT NULL,
  `natpa` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `plbrt` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `blodt` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `datbt` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `marig` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `etid0` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `etid1` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `etid2` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `etid3` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `etid4` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `etid5` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `etid6` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `etid7` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `etid8` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `etid9` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `etida` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `fstwd` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `scsbf` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `cpmsf` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `dstfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `nowla` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `spsnm` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `spmnm` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `spfnm` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `spblt` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `spwuc` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `spidc` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `sppti` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `hsrtp` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `hsrpr` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `hsrci` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `hsrco` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `hsrst` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `hsrbd` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `hsrpc` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `livpr` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `livci` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `livco` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `livst` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `livbd` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `livpc` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `epbiid` varchar(32) DEFAULT NULL,
  `ward1` varchar(32) DEFAULT NULL,
  `ward2` varchar(32) DEFAULT NULL,
  `ward3` varchar(32) DEFAULT NULL,
  `ward4` varchar(32) DEFAULT NULL,
  `ward5` varchar(32) DEFAULT NULL,
  `ward6` varchar(32) DEFAULT NULL,
  `createMember` varchar(32) DEFAULT NULL,
  `createDate` varchar(20) DEFAULT NULL,
  `updateMember` varchar(32) DEFAULT NULL,
  `updateDate` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `epnum` (`epnum`),
  KEY `epbiid` (`epbiid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






-- ----------------------------
-- Table structure for `epes`
-- ----------------------------
DROP TABLE IF EXISTS `epes`;
CREATE TABLE `epes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epnum` varchar(20) CHARACTER SET utf8 NOT NULL,
  `comcd` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `linum` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `depct` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `wksps` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `wkcls` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `bteam` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `cstst` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `prfct` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `pstnt` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `pstnm` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `pston` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `tywkn` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `dsupi` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eppan` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `mnswt` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `enrdt` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `enraf` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `ncwaf` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `anlnd` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `apitf` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `apitd` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `title` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `titdt` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `ttref` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `ttgtl` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `tecre` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `sklve` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `sklcf` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `gcotm` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `lfsct` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `gdscf` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `gdpff` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `gdadf` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `gdxlf` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `gddtf` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `gdscj` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `gdpfj` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `gdadj` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `gdxlj` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `gddtj` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `lstat` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `lstad` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `lsran` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `lstec` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `lsten` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `lstsm` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `lspsy` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `lswcn` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `lswft` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `lswet` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `lswpt` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `epedt` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `epcln` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `epcpn` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `bwcln` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `bwcpn` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `ctdts` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `ctdtb` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `ctdte` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `spdts` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `spdtb` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `spdte` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `cadts` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `cadtb` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `cadte` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `netwc` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `netpe` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `ntrcd` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `epbiid` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `tlscg` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `orni` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `orni2` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `locto` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `extnu` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `createMember` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `createDate` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `updateMember` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `updateDate` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `epnum` (`epnum`),
  KEY `epbiid` (`epbiid`),
  KEY `orni` (`orni`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7528 DEFAULT CHARSET=latin1;



-- ----------------------------
-- Table structure for `epg1`
-- ----------------------------
DROP TABLE IF EXISTS `epg1`;
CREATE TABLE `epg1` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgup` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epgup`),
  UNIQUE KEY `IX_epg1` (`epgup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epg1
-- ----------------------------

-- ----------------------------
-- Table structure for `epg2`
-- ----------------------------
DROP TABLE IF EXISTS `epg2`;
CREATE TABLE `epg2` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgup` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epgup`),
  UNIQUE KEY `IX_epg2` (`epgup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epg2
-- ----------------------------

-- ----------------------------
-- Table structure for `epg3`
-- ----------------------------
DROP TABLE IF EXISTS `epg3`;
CREATE TABLE `epg3` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgup` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epgup`),
  UNIQUE KEY `IX_epg3` (`epgup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epg3
-- ----------------------------

-- ----------------------------
-- Table structure for `epg4`
-- ----------------------------
DROP TABLE IF EXISTS `epg4`;
CREATE TABLE `epg4` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgup` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epgup`),
  UNIQUE KEY `IX_epg4` (`epgup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epg4
-- ----------------------------

-- ----------------------------
-- Table structure for `epg5`
-- ----------------------------
DROP TABLE IF EXISTS `epg5`;
CREATE TABLE `epg5` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgup` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epgup`),
  UNIQUE KEY `IX_epg5` (`epgup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epg5
-- ----------------------------

-- ----------------------------
-- Table structure for `epg6`
-- ----------------------------
DROP TABLE IF EXISTS `epg6`;
CREATE TABLE `epg6` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgup` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epgup`),
  UNIQUE KEY `IX_epg6` (`epgup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epg6
-- ----------------------------

-- ----------------------------
-- Table structure for `epg7`
-- ----------------------------
DROP TABLE IF EXISTS `epg7`;
CREATE TABLE `epg7` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgup` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epgup`),
  UNIQUE KEY `IX_epg7` (`epgup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epg7
-- ----------------------------

-- ----------------------------
-- Table structure for `epg8`
-- ----------------------------
DROP TABLE IF EXISTS `epg8`;
CREATE TABLE `epg8` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgup` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epgup`),
  UNIQUE KEY `IX_epg8` (`epgup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epg8
-- ----------------------------

-- ----------------------------
-- Table structure for `epg9`
-- ----------------------------
DROP TABLE IF EXISTS `epg9`;
CREATE TABLE `epg9` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgup` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epgup`),
  UNIQUE KEY `IX_epg9` (`epgup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epg9
-- ----------------------------

-- ----------------------------
-- Table structure for `epga`
-- ----------------------------
DROP TABLE IF EXISTS `epga`;
CREATE TABLE `epga` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgup` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epgup`),
  UNIQUE KEY `IX_epga` (`epgup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epga
-- ----------------------------

-- ----------------------------
-- Table structure for `epgb`
-- ----------------------------
DROP TABLE IF EXISTS `epgb`;
CREATE TABLE `epgb` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgup` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epgup`),
  UNIQUE KEY `IX_epgb` (`epgup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epgb
-- ----------------------------

-- ----------------------------
-- Table structure for `epgc`
-- ----------------------------
DROP TABLE IF EXISTS `epgc`;
CREATE TABLE `epgc` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgup` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epgup`),
  UNIQUE KEY `IX_epgc` (`epgup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epgc
-- ----------------------------

-- ----------------------------
-- Table structure for `epgd`
-- ----------------------------
DROP TABLE IF EXISTS `epgd`;
CREATE TABLE `epgd` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgup` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epgup`),
  UNIQUE KEY `IX_epgd` (`epgup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epgd
-- ----------------------------

-- ----------------------------
-- Table structure for `epge`
-- ----------------------------
DROP TABLE IF EXISTS `epge`;
CREATE TABLE `epge` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgup` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epgup`),
  UNIQUE KEY `IX_epge` (`epgup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epge
-- ----------------------------

-- ----------------------------
-- Table structure for `epgf`
-- ----------------------------
DROP TABLE IF EXISTS `epgf`;
CREATE TABLE `epgf` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgup` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epgup`),
  UNIQUE KEY `IX_epgf` (`epgup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epgf
-- ----------------------------

-- ----------------------------
-- Table structure for `epgg`
-- ----------------------------
DROP TABLE IF EXISTS `epgg`;
CREATE TABLE `epgg` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgup` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epgup`),
  UNIQUE KEY `IX_epgg` (`epgup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epgg
-- ----------------------------

-- ----------------------------
-- Table structure for `epgh`
-- ----------------------------
DROP TABLE IF EXISTS `epgh`;
CREATE TABLE `epgh` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgup` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epgup`),
  UNIQUE KEY `IX_epgh` (`epgup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epgh
-- ----------------------------

-- ----------------------------
-- Table structure for `epgi`
-- ----------------------------
DROP TABLE IF EXISTS `epgi`;
CREATE TABLE `epgi` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgup` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epgup`),
  UNIQUE KEY `IX_epgi` (`epgup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epgi
-- ----------------------------

-- ----------------------------
-- Table structure for `epgj`
-- ----------------------------
DROP TABLE IF EXISTS `epgj`;
CREATE TABLE `epgj` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgup` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epgup`),
  UNIQUE KEY `IX_epgj` (`epgup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epgj
-- ----------------------------

-- ----------------------------
-- Table structure for `epgk`
-- ----------------------------
DROP TABLE IF EXISTS `epgk`;
CREATE TABLE `epgk` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgup` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epgup`),
  UNIQUE KEY `IX_epgk` (`epgup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epgk
-- ----------------------------

-- ----------------------------
-- Table structure for `epgl`
-- ----------------------------
DROP TABLE IF EXISTS `epgl`;
CREATE TABLE `epgl` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgup` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epgup`),
  UNIQUE KEY `IX_epgl` (`epgup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epgl
-- ----------------------------

-- ----------------------------
-- Table structure for `epgm`
-- ----------------------------
DROP TABLE IF EXISTS `epgm`;
CREATE TABLE `epgm` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgup` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epgup`),
  UNIQUE KEY `IX_epgm` (`epgup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epgm
-- ----------------------------

-- ----------------------------
-- Table structure for `epgn`
-- ----------------------------
DROP TABLE IF EXISTS `epgn`;
CREATE TABLE `epgn` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgup` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epgup`),
  UNIQUE KEY `IX_epgn` (`epgup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epgn
-- ----------------------------

-- ----------------------------
-- Table structure for `epgo`
-- ----------------------------
DROP TABLE IF EXISTS `epgo`;
CREATE TABLE `epgo` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgup` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epgup`),
  UNIQUE KEY `IX_epgo` (`epgup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epgo
-- ----------------------------

-- ----------------------------
-- Table structure for `epgp`
-- ----------------------------
DROP TABLE IF EXISTS `epgp`;
CREATE TABLE `epgp` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgup` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epgup`),
  UNIQUE KEY `IX_epgp` (`epgup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epgp
-- ----------------------------

-- ----------------------------
-- Table structure for `epgq`
-- ----------------------------
DROP TABLE IF EXISTS `epgq`;
CREATE TABLE `epgq` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgup` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epgup`),
  UNIQUE KEY `IX_epgq` (`epgup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epgq
-- ----------------------------

-- ----------------------------
-- Table structure for `epgr`
-- ----------------------------
DROP TABLE IF EXISTS `epgr`;
CREATE TABLE `epgr` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgup` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epgup`),
  UNIQUE KEY `IX_epgr` (`epgup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epgr
-- ----------------------------

-- ----------------------------
-- Table structure for `epgs`
-- ----------------------------
DROP TABLE IF EXISTS `epgs`;
CREATE TABLE `epgs` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgup` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epgup`),
  UNIQUE KEY `IX_epgs` (`epgup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epgs
-- ----------------------------

-- ----------------------------
-- Table structure for `epgt`
-- ----------------------------
DROP TABLE IF EXISTS `epgt`;
CREATE TABLE `epgt` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgup` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epgup`),
  UNIQUE KEY `IX_epgt` (`epgup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epgt
-- ----------------------------

-- ----------------------------
-- Table structure for `epgu`
-- ----------------------------
DROP TABLE IF EXISTS `epgu`;
CREATE TABLE `epgu` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgup` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epgup`),
  UNIQUE KEY `IX_epgu` (`epgup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epgu
-- ----------------------------

-- ----------------------------
-- Table structure for `epgv`
-- ----------------------------
DROP TABLE IF EXISTS `epgv`;
CREATE TABLE `epgv` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgup` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epgup`),
  UNIQUE KEY `IX_epgv` (`epgup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epgv
-- ----------------------------

-- ----------------------------
-- Table structure for `epgw`
-- ----------------------------
DROP TABLE IF EXISTS `epgw`;
CREATE TABLE `epgw` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgup` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epgup`),
  UNIQUE KEY `IX_epgw` (`epgup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epgw
-- ----------------------------

-- ----------------------------
-- Table structure for `epgx`
-- ----------------------------
DROP TABLE IF EXISTS `epgx`;
CREATE TABLE `epgx` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgup` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epgup`),
  UNIQUE KEY `IX_epgx` (`epgup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epgx
-- ----------------------------

-- ----------------------------
-- Table structure for `epgy`
-- ----------------------------
DROP TABLE IF EXISTS `epgy`;
CREATE TABLE `epgy` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgup` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epgup`),
  UNIQUE KEY `IX_epgy` (`epgup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epgy
-- ----------------------------

-- ----------------------------
-- Table structure for `epgz`
-- ----------------------------
DROP TABLE IF EXISTS `epgz`;
CREATE TABLE `epgz` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgup` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epgpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epgup`),
  UNIQUE KEY `IX_epgz` (`epgup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epgz
-- ----------------------------

-- ----------------------------
-- Table structure for `ephb`
-- ----------------------------
DROP TABLE IF EXISTS `ephb`;
CREATE TABLE `ephb` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `hobcd` varchar(4) CHARACTER SET utf8 NOT NULL,
  `hobdc` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`hobcd`),
  UNIQUE KEY `IX_ephb` (`hobcd`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ephb
-- ----------------------------

-- ----------------------------
-- Table structure for `ephi`
-- ----------------------------
DROP TABLE IF EXISTS `ephi`;
CREATE TABLE `ephi` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epnum` varchar(20) CHARACTER SET utf8 NOT NULL,
  `ovdht` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `ovmt1` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `ovmt2` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `ovet1` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `ovet2` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `leavc` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `leavr` longtext CHARACTER SET utf8,
  `achid` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `ached` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `achno` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `achic` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `achec` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `pbidt` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `leqdt` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `lepdt` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `leadt` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `lecdt` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `enatf` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `leatf` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `cetid` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `cetdt` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `cetim` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `lmfid` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `lmfdt` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `lmfim` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `ltecn` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `strcn` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `ltird` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `ltord` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `lthrd` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `ensm1` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `lvsm1` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `ensm2` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `lvsm2` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `ensm3` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `lvsm3` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `ensm4` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `lvsm4` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epnum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ephi
-- ----------------------------

-- ----------------------------
-- Table structure for `epit`
-- ----------------------------
DROP TABLE IF EXISTS `epit`;
CREATE TABLE `epit` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `hobcd` varchar(4) CHARACTER SET utf8 NOT NULL,
  `hobdc` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`hobcd`),
  UNIQUE KEY `IX_epit` (`hobcd`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epit
-- ----------------------------

-- ----------------------------
-- Table structure for `eple`
-- ----------------------------
DROP TABLE IF EXISTS `eple`;
CREATE TABLE `eple` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epspt` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epspd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epspt`),
  UNIQUE KEY `IX_eple` (`epspt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of eple
-- ----------------------------

-- ----------------------------
-- Table structure for `epni`
-- ----------------------------
DROP TABLE IF EXISTS `epni`;
CREATE TABLE `epni` (
  `id` varchar(32) CHARACTER SET utf8 NOT NULL,
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epnum` varchar(20) CHARACTER SET utf8 NOT NULL,
  `jtltd` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `part1` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `jtpd1` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `part2` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `jtpd2` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `part3` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `jtpd3` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `bakid` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `baknm` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `etstf` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `lestf` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `pticf` varchar(80) CHARACTER SET utf8 NOT NULL,
  `ptwkf` varchar(80) CHARACTER SET utf8 DEFAULT NULL,
  `ptlff` varchar(80) CHARACTER SET utf8 DEFAULT NULL,
  `hmtnm` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `mtel1` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `mtel2` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `egtp1` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `egtp2` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `shoet` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `jackt` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `trust` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `tel1` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `tel2` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `createMember` varchar(32) DEFAULT NULL,
  `createDate` varchar(20) DEFAULT NULL,
  `updateMember` varchar(32) DEFAULT NULL,
  `updateDate` varchar(20) DEFAULT NULL,
  `wz` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `epnum` (`epnum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;












-- ----------------------------
-- Table structure for `eppa`
-- ----------------------------
DROP TABLE IF EXISTS `eppa`;
CREATE TABLE `eppa` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epnum` varchar(20) CHARACTER SET utf8 NOT NULL,
  `spca1` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `spca2` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `spca3` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `spca4` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `spca5` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `spca6` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `spca7` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `spca8` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `spca9` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `spcaa` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `hobe1` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `hobe2` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `hobe3` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `hobe4` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `hobe5` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `hobe6` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `hobe7` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `hobe8` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `hobe9` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `hobea` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `intr1` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `intr2` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `intr3` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `intr4` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `intr5` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `intr6` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `intr7` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `intr8` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `intr9` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `intra` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `spsk1` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `spsk2` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `spsk3` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `spsk4` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `spsk5` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `spsk6` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `spsk7` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `spsk8` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `spsk9` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `spska` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `spss1` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `spss2` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `spss3` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `spss4` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `spss5` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `spss6` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `spss7` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `spss8` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `spss9` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `spssa` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epnum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of eppa
-- ----------------------------

-- ----------------------------
-- Table structure for `eppf`
-- ----------------------------
DROP TABLE IF EXISTS `eppf`;
CREATE TABLE `eppf` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `pfiid` varchar(10) CHARACTER SET utf8 NOT NULL,
  `pfnms` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `pfnmf` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `pffcs` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`pfiid`),
  UNIQUE KEY `IX_eppf` (`pfiid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of eppf
-- ----------------------------

-- ----------------------------
-- Table structure for `eppr`
-- ----------------------------
DROP TABLE IF EXISTS `eppr`;
CREATE TABLE `eppr` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `pjrki` varchar(10) CHARACTER SET utf8 NOT NULL,
  `pjmkd` longtext CHARACTER SET utf8,
  PRIMARY KEY (`usrct`,`pjrki`),
  UNIQUE KEY `IX_eppr` (`pjrki`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of eppr
-- ----------------------------

-- ----------------------------
-- Table structure for `epr1`
-- ----------------------------
DROP TABLE IF EXISTS `epr1`;
CREATE TABLE `epr1` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acguc` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acgud` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`acguc`),
  UNIQUE KEY `IX_epr1` (`acguc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epr1
-- ----------------------------

-- ----------------------------
-- Table structure for `epr2`
-- ----------------------------
DROP TABLE IF EXISTS `epr2`;
CREATE TABLE `epr2` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acguc` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acgud` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`acguc`),
  UNIQUE KEY `IX_epr2` (`acguc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epr2
-- ----------------------------

-- ----------------------------
-- Table structure for `epr3`
-- ----------------------------
DROP TABLE IF EXISTS `epr3`;
CREATE TABLE `epr3` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acguc` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acgud` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`acguc`),
  UNIQUE KEY `IX_epr3` (`acguc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epr3
-- ----------------------------

-- ----------------------------
-- Table structure for `epr4`
-- ----------------------------
DROP TABLE IF EXISTS `epr4`;
CREATE TABLE `epr4` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acguc` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acgud` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`acguc`),
  UNIQUE KEY `IX_epr4` (`acguc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epr4
-- ----------------------------

-- ----------------------------
-- Table structure for `epr5`
-- ----------------------------
DROP TABLE IF EXISTS `epr5`;
CREATE TABLE `epr5` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acguc` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acgud` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`acguc`),
  UNIQUE KEY `IX_epr5` (`acguc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epr5
-- ----------------------------

-- ----------------------------
-- Table structure for `epr6`
-- ----------------------------
DROP TABLE IF EXISTS `epr6`;
CREATE TABLE `epr6` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acguc` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acgud` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`acguc`),
  UNIQUE KEY `IX_epr6` (`acguc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epr6
-- ----------------------------

-- ----------------------------
-- Table structure for `epr7`
-- ----------------------------
DROP TABLE IF EXISTS `epr7`;
CREATE TABLE `epr7` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acguc` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acgud` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`acguc`),
  UNIQUE KEY `IX_epr7` (`acguc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epr7
-- ----------------------------

-- ----------------------------
-- Table structure for `epr8`
-- ----------------------------
DROP TABLE IF EXISTS `epr8`;
CREATE TABLE `epr8` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acguc` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acgud` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`acguc`),
  UNIQUE KEY `IX_epr8` (`acguc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epr8
-- ----------------------------

-- ----------------------------
-- Table structure for `epr9`
-- ----------------------------
DROP TABLE IF EXISTS `epr9`;
CREATE TABLE `epr9` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acguc` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acgud` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`acguc`),
  UNIQUE KEY `IX_epr9` (`acguc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epr9
-- ----------------------------

-- ----------------------------
-- Table structure for `epra`
-- ----------------------------
DROP TABLE IF EXISTS `epra`;
CREATE TABLE `epra` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acguc` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acgud` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`acguc`),
  UNIQUE KEY `IX_epra` (`acguc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epra
-- ----------------------------

-- ----------------------------
-- Table structure for `eprb`
-- ----------------------------
DROP TABLE IF EXISTS `eprb`;
CREATE TABLE `eprb` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acguc` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acgud` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`acguc`),
  UNIQUE KEY `IX_eprb` (`acguc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of eprb
-- ----------------------------

-- ----------------------------
-- Table structure for `eprc`
-- ----------------------------
DROP TABLE IF EXISTS `eprc`;
CREATE TABLE `eprc` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acguc` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acgud` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`acguc`),
  UNIQUE KEY `IX_eprc` (`acguc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of eprc
-- ----------------------------

-- ----------------------------
-- Table structure for `eprd`
-- ----------------------------
DROP TABLE IF EXISTS `eprd`;
CREATE TABLE `eprd` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acguc` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acgud` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`acguc`),
  UNIQUE KEY `IX_eprd` (`acguc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of eprd
-- ----------------------------

-- ----------------------------
-- Table structure for `epre`
-- ----------------------------
DROP TABLE IF EXISTS `epre`;
CREATE TABLE `epre` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acguc` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acgud` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`acguc`),
  UNIQUE KEY `IX_epre` (`acguc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epre
-- ----------------------------

-- ----------------------------
-- Table structure for `eprf`
-- ----------------------------
DROP TABLE IF EXISTS `eprf`;
CREATE TABLE `eprf` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acguc` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acgud` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`acguc`),
  UNIQUE KEY `IX_eprf` (`acguc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of eprf
-- ----------------------------

-- ----------------------------
-- Table structure for `eprg`
-- ----------------------------
DROP TABLE IF EXISTS `eprg`;
CREATE TABLE `eprg` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acguc` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acgud` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`acguc`),
  UNIQUE KEY `IX_eprg` (`acguc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of eprg
-- ----------------------------

-- ----------------------------
-- Table structure for `eprh`
-- ----------------------------
DROP TABLE IF EXISTS `eprh`;
CREATE TABLE `eprh` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acguc` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acgud` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`acguc`),
  UNIQUE KEY `IX_eprh` (`acguc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of eprh
-- ----------------------------

-- ----------------------------
-- Table structure for `epri`
-- ----------------------------
DROP TABLE IF EXISTS `epri`;
CREATE TABLE `epri` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acguc` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acgud` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`acguc`),
  UNIQUE KEY `IX_epri` (`acguc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epri
-- ----------------------------

-- ----------------------------
-- Table structure for `eprj`
-- ----------------------------
DROP TABLE IF EXISTS `eprj`;
CREATE TABLE `eprj` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acguc` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acgud` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`acguc`),
  UNIQUE KEY `IX_eprj` (`acguc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of eprj
-- ----------------------------

-- ----------------------------
-- Table structure for `eprk`
-- ----------------------------
DROP TABLE IF EXISTS `eprk`;
CREATE TABLE `eprk` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acguc` varchar(4) CHARACTER SET utf8 NOT NULL,
  `acgud` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`acguc`),
  UNIQUE KEY `IX_eprk` (`acguc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of eprk
-- ----------------------------

-- ----------------------------
-- Table structure for `eprm`
-- ----------------------------
DROP TABLE IF EXISTS `eprm`;
CREATE TABLE `eprm` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `erwrn` varchar(10) CHARACTER SET utf8 NOT NULL,
  `remak` longtext CHARACTER SET utf8,
  PRIMARY KEY (`usrct`,`erwrn`),
  UNIQUE KEY `IX_eprm` (`erwrn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of eprm
-- ----------------------------

-- ----------------------------
-- Table structure for `epsc`
-- ----------------------------
DROP TABLE IF EXISTS `epsc`;
CREATE TABLE `epsc` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `hobcd` varchar(4) CHARACTER SET utf8 NOT NULL,
  `hobdc` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`hobcd`),
  UNIQUE KEY `IX_epsc` (`hobcd`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epsc
-- ----------------------------

-- ----------------------------
-- Table structure for `epsd`
-- ----------------------------
DROP TABLE IF EXISTS `epsd`;
CREATE TABLE `epsd` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `sklve` varchar(4) CHARACTER SET utf8 NOT NULL,
  `sklvd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`sklve`),
  UNIQUE KEY `IX_epsd` (`sklve`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epsd
-- ----------------------------

-- ----------------------------
-- Table structure for `epsh`
-- ----------------------------
DROP TABLE IF EXISTS `epsh`;
CREATE TABLE `epsh` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `shidn` varchar(10) CHARACTER SET utf8 NOT NULL,
  `shnms` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `shnmf` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `shenj` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`shidn`),
  UNIQUE KEY `IX_epsh` (`shidn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epsh
-- ----------------------------

-- ----------------------------
-- Table structure for `epsk`
-- ----------------------------
DROP TABLE IF EXISTS `epsk`;
CREATE TABLE `epsk` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `hobcd` varchar(4) CHARACTER SET utf8 NOT NULL,
  `hobdc` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`hobcd`),
  UNIQUE KEY `IX_epsk` (`hobcd`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epsk
-- ----------------------------

-- ----------------------------
-- Table structure for `epsl`
-- ----------------------------
DROP TABLE IF EXISTS `epsl`;
CREATE TABLE `epsl` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `sklcf` varchar(4) CHARACTER SET utf8 NOT NULL,
  `sklcd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`sklcf`),
  UNIQUE KEY `IX_epsl` (`sklcf`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epsl
-- ----------------------------

-- ----------------------------
-- Table structure for `epsp`
-- ----------------------------
DROP TABLE IF EXISTS `epsp`;
CREATE TABLE `epsp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epspt` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epspd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IX_epsp` (`epspt`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
 
-- Table structure for `epss`
-- ----------------------------
DROP TABLE IF EXISTS `epss`;
CREATE TABLE `epss` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `hobcd` varchar(4) CHARACTER SET utf8 NOT NULL,
  `hobdc` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`hobcd`),
  UNIQUE KEY `IX_epss` (`hobcd`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of epss
-- ----------------------------

-- ----------------------------
-- Table structure for `epst`
-- ----------------------------
DROP TABLE IF EXISTS `epst`;
CREATE TABLE `epst` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epysu` varchar(4) CHARACTER SET utf8 NOT NULL,
  `esudc` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IX_epst` (`epysu`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
 
-- ----------------------------
-- Table structure for `epty`
-- ----------------------------
DROP TABLE IF EXISTS `epty`;
CREATE TABLE `epty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epytp` varchar(4) CHARACTER SET utf8 NOT NULL,
  `eptpd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IX_epty` (`epytp`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
 

-- ----------------------------
-- Table structure for `ered`
-- ----------------------------
DROP TABLE IF EXISTS `ered`;
CREATE TABLE `ered` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epnum` varchar(20) CHARACTER SET utf8 NOT NULL,
  `edutt` varchar(4) CHARACTER SET utf8 NOT NULL,
  `eudty` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `edscf` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `edpfj` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `edtad` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `edtec` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `adcnb` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `eccnb` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `edbed` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `edeed` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epnum`,`edutt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ered
-- ----------------------------

-- ----------------------------
-- Table structure for `erlg`
-- ----------------------------
DROP TABLE IF EXISTS `erlg`;
CREATE TABLE `erlg` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epnum` varchar(20) CHARACTER SET utf8 NOT NULL,
  `prjit` varchar(4) CHARACTER SET utf8 NOT NULL,
  `isola` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `lgcls` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `lgedt` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epnum`,`prjit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of erlg
-- ----------------------------

-- ----------------------------
-- Table structure for `erpj`
-- ----------------------------
DROP TABLE IF EXISTS `erpj`;
CREATE TABLE `erpj` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epnum` varchar(20) CHARACTER SET utf8 NOT NULL,
  `prjit` varchar(4) CHARACTER SET utf8 NOT NULL,
  `prjnm` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `pjbdt` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `pjedt` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `prjru` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `prwkd` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `prrdm` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epnum`,`prjit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of erpj
-- ----------------------------

-- ----------------------------
-- Table structure for `ertn`
-- ----------------------------
DROP TABLE IF EXISTS `ertn`;
CREATE TABLE `ertn` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epnum` varchar(20) CHARACTER SET utf8 NOT NULL,
  `ertit` varchar(4) CHARACTER SET utf8 NOT NULL,
  `ertty` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `tnscf` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `tnted` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `tnbed` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `tneed` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `tntfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `tngal` decimal(8,2) DEFAULT NULL,
  `tnpfj` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `tnsle` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `tnlcf` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `tnctm` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `tlfst` int(11) DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epnum`,`ertit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ertn
-- ----------------------------

-- ----------------------------
-- Table structure for `erwk`
-- ----------------------------
DROP TABLE IF EXISTS `erwk`;
CREATE TABLE `erwk` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epnum` varchar(20) CHARACTER SET utf8 NOT NULL,
  `erwit` varchar(4) CHARACTER SET utf8 NOT NULL,
  `erwcn` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `erswk` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `erwft` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `erwet` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `erwpt` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `erwrn` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epnum`,`erwit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of erwk
-- ----------------------------

-- ----------------------------
-- Table structure for `esba`
-- ----------------------------
DROP TABLE IF EXISTS `esba`;
CREATE TABLE `esba` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epnum` varchar(20) CHARACTER SET utf8 NOT NULL,
  `atgp1` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgp2` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgp3` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgp4` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgp5` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgp6` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgp7` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgp8` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgp9` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpa` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpb` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpc` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpd` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpe` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpf` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpg` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgph` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpi` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpj` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpk` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpl` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpm` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpn` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpo` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpp` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpq` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpr` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgps` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpt` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpu` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpv` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpw` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpx` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpy` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `atgpz` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgp1` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgp2` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgp3` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgp4` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgp5` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgp6` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgp7` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgp8` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgp9` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgpa` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgpb` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgpc` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgpd` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgpe` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgpf` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgpg` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgph` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgpi` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgpj` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `acgpk` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`epnum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of esba
-- ----------------------------

-- ----------------------------
-- Table structure for `esbi`
-- ----------------------------
DROP TABLE IF EXISTS `esbi`;
CREATE TABLE `esbi` (
  `id` varchar(32) NOT NULL,
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `esnum` varchar(20) CHARACTER SET utf8 NOT NULL,
  `psd` varchar(50) DEFAULT NULL,
  `epytp` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `syuid` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `epnuo` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `sname` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `mname` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `fname` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `bname` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `alias` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `natin` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `gendr` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `idcad` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `ptcad` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `sscad` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `epysu` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `sptwk` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `yeagt` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `regtd` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `polaf` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `esniid` int(11) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `photeState` varchar(1) DEFAULT NULL,
  `createMember` varchar(32) DEFAULT NULL,
  `createDate` varchar(20) DEFAULT NULL,
  `updateMember` varchar(32) DEFAULT NULL,
  `updateDate` varchar(20) DEFAULT NULL,
  `soianID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `esnum` (`esnum`),
  KEY `IX_esbi` (`esnum`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;





-- ----------------------------
-- Table structure for `esbs`
-- ----------------------------
DROP TABLE IF EXISTS `esbs`;
CREATE TABLE `esbs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epnum` varchar(20) CHARACTER SET utf8 NOT NULL,
  `wkcom` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `prjno` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `comcd` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `linum` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `depct` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `wksps` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `wkcls` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `bteam` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `cstst` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `prfct` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `pstnt` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `pstnm` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `pston` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `tywkn` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `dsupi` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eppan` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `mnswt` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `ncwaf` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `anlnd` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `apitf` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `apitd` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `title` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `titdt` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `ttref` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `ttgtl` int(11) DEFAULT NULL,
  `tecre` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `sklve` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `sklcf` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `gcotm` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `lfsct` int(11) DEFAULT NULL,
  `gdscf` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `gdpff` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `gdadf` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `gddtf` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `gdscj` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `gdpfj` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `gdadj` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `gddtj` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `lstat` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `lstad` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `lsran` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `lstec` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `lsten` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `lstsm` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `lswcn` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `lswft` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `lswet` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `lswpt` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `epedt` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `epcln` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `epcpn` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `bwcln` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `bwcpn` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `ctdts` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `ctdtb` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `ctdte` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `spdts` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `spdtb` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `spdte` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `cadts` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `cadtb` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `cadte` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `netwc` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `netpe` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `ntrcd` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `locto` varchar(50) DEFAULT NULL,
  `extnu` varchar(20) DEFAULT NULL,
  `tlscg` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of esbs
-- ----------------------------

-- ----------------------------
-- Table structure for `esep`
-- ----------------------------
DROP TABLE IF EXISTS `esep`;
CREATE TABLE `esep` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epnum` varchar(20) CHARACTER SET utf8 NOT NULL,
  `natpa` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `plbrt` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `blodt` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `datbt` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `marig` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `etid0` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `etid1` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `etid2` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `etid3` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `etid4` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `etid5` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `etid6` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `etid7` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `etid8` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `etid9` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `etida` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `fstwd` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `scsbf` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `cpmsf` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `dstfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `nowla` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `spsnm` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `spmnm` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `spfnm` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `spblt` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `spwuc` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `spidc` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `sppti` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `hsrtp` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `hsrpr` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `hsrci` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `hsrco` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `hsrst` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `hsrbd` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `hsrpc` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `livpr` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `livci` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `livco` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `livst` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `livbd` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `livpc` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `epbiid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=latin1;

 
-- ----------------------------
-- Table structure for `esni`
-- ----------------------------
DROP TABLE IF EXISTS `esni`;
CREATE TABLE `esni` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `epnum` varchar(20) CHARACTER SET utf8 NOT NULL,
  `jtltd` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `part1` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `jtpd1` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `part2` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `jtpd2` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `part3` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `jtpd3` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `bakid` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `baknm` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `etstf` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `lestf` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `pticf` varchar(80) CHARACTER SET utf8 NOT NULL,
  `ptwkf` varchar(80) CHARACTER SET utf8 DEFAULT NULL,
  `ptlff` varchar(80) CHARACTER SET utf8 DEFAULT NULL,
  `hmtnm` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `mtel1` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `mtel2` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `egtp1` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `egtp2` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `shoet` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `jackt` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `trust` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `createMember` varchar(32) DEFAULT NULL,
  `createDate` varchar(20) DEFAULT NULL,
  `updateMember` varchar(32) DEFAULT NULL,
  `updateDate` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4645 DEFAULT CHARSET=latin1;




-- ----------------------------
-- Table structure for `fed_tosend`
-- ----------------------------
DROP TABLE IF EXISTS `fed_tosend`;
CREATE TABLE `fed_tosend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(10) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `content` text,
  `state` varchar(255) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `partyid` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `inserttime` varchar(20) DEFAULT NULL,
  `senttime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=FEDERATED DEFAULT;
--  CHARSET=utf8 CONNECTION='mysql://root: @ '




-- ----------------------------
-- Table structure for `fipr`
-- ----------------------------
DROP TABLE IF EXISTS `fipr`;
CREATE TABLE `fipr` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `prfid` varchar(10) CHARACTER SET utf8 NOT NULL,
  `prfdc` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`prfid`),
  UNIQUE KEY `IX_fipr` (`prfid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of fipr
-- ----------------------------

-- ----------------------------
-- Table structure for `gtd`
-- ----------------------------
DROP TABLE IF EXISTS `gtd`;
CREATE TABLE `gtd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `d_deptid` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `utime` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `g_deptid` int(11) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=372 DEFAULT CHARSET=latin1;




-- ----------------------------
-- Table structure for `iact`
-- ----------------------------
DROP TABLE IF EXISTS `iact`;
CREATE TABLE `iact` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `amtcd` varchar(8) CHARACTER SET utf8 NOT NULL,
  `amctg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `ambct` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `ammdc` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `amsbc` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `amtdc` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `amtlr` varchar(80) CHARACTER SET utf8 DEFAULT NULL,
  `amtu1` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `amtu2` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `amdpc` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`amtcd`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of iact
-- ----------------------------

-- ----------------------------
-- Table structure for `ic2d`
-- ----------------------------
DROP TABLE IF EXISTS `ic2d`;
CREATE TABLE `ic2d` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `matnm` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `qtyds` int(11) DEFAULT NULL,
  `qttds` int(11) DEFAULT NULL,
  `qttdd` int(11) DEFAULT NULL,
  `qttdt` int(11) DEFAULT NULL,
  `qtafb` int(11) DEFAULT NULL,
  `qrafr` int(11) DEFAULT NULL,
  `qttas` int(11) DEFAULT NULL,
  `qttsk` int(11) DEFAULT NULL,
  `ic2hid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=459 DEFAULT CHARSET=latin1;




-- ----------------------------
-- Table structure for `ic2h`
-- ----------------------------
DROP TABLE IF EXISTS `ic2h`;
CREATE TABLE `ic2h` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `stcon` varchar(10) CHARACTER SET utf8 NOT NULL,
  `staid` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `stcdt` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `stcrn` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `stcdp` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `stcdc` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `stcst` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `dtcrt` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `tmcrt` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `dtrel` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `tmrel` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `dtfen` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `tmfen` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `mfpfn` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `ic2lid` int(11) DEFAULT NULL,
  `ic2rid` int(11) DEFAULT NULL,
  `orgdid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

 
 
-- ----------------------------
-- Table structure for `ic2l`
-- ----------------------------
DROP TABLE IF EXISTS `ic2l`;
CREATE TABLE `ic2l` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `stcon` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `qtyds` int(11) DEFAULT NULL,
  `qttds` int(11) DEFAULT NULL,
  `qttdd` int(11) DEFAULT NULL,
  `qttdr` int(11) DEFAULT NULL,
  `qttdt` int(11) DEFAULT NULL,
  `qttdm` int(11) DEFAULT NULL,
  `qtwgr` int(11) DEFAULT NULL,
  `qtafb` int(11) DEFAULT NULL,
  `qrafr` int(11) DEFAULT NULL,
  `qttdb` int(11) DEFAULT NULL,
  `qttas` int(11) DEFAULT NULL,
  `qttsk` int(11) DEFAULT NULL,
  `qtwsv` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

 
-- ----------------------------
-- Table structure for `ic2r`
-- ----------------------------
DROP TABLE IF EXISTS `ic2r`;
CREATE TABLE `ic2r` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `stcrn` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `remak` longtext CHARACTER SET utf8,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
 

-- ----------------------------
-- Table structure for `idas`
-- ----------------------------
DROP TABLE IF EXISTS `idas`;
CREATE TABLE `idas` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `linid` varchar(4) CHARACTER SET utf8 NOT NULL,
  `stbid` varchar(4) CHARACTER SET utf8 NOT NULL,
  `aswid` varchar(10) CHARACTER SET utf8 NOT NULL,
  `aswcd` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `aswdc` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `locae` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `posao` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `ofprf` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `ofscd` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `ofset` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`linid`,`stbid`,`aswid`),
  UNIQUE KEY `IX_idas` (`aswid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of idas
-- ----------------------------

-- ----------------------------
-- Table structure for `idbh`
-- ----------------------------
DROP TABLE IF EXISTS `idbh`;
CREATE TABLE `idbh` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `bomid` varchar(10) CHARACTER SET utf8 NOT NULL,
  `matnm` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `linid` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `bomti` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `wbsid` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `bomst` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `bmabd` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `bmaed` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `bmlmk` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `bmcmk` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `ecnid` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `bmbqt` decimal(16,2) DEFAULT NULL,
  `bmbut` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `bomlv` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `rutid` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`bomid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of idbh
-- ----------------------------

-- ----------------------------
-- Table structure for `idbi`
-- ----------------------------
DROP TABLE IF EXISTS `idbi`;
CREATE TABLE `idbi` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `bomid` varchar(10) CHARACTER SET utf8 NOT NULL,
  `bomit` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `bomtp` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `rutid` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `rutit` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `matnm` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `cmpqt` decimal(16,2) DEFAULT NULL,
  `cmput` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `fdcnr` decimal(12,2) DEFAULT NULL,
  `fdcqt` decimal(16,2) DEFAULT NULL,
  `subrk` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `subpc` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `subgp` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `moprs` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `itmt1` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `itmt2` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `setar` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `bomct` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `supfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`bomid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of idbi
-- ----------------------------

-- ----------------------------
-- Table structure for `idbt`
-- ----------------------------
DROP TABLE IF EXISTS `idbt`;
CREATE TABLE `idbt` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `bomti` varchar(1) CHARACTER SET utf8 NOT NULL,
  `bomds` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `bomrl` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `rutdf` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `ruted` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `rutbd` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `rotpr` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `rotas` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `rotab` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `rotaa` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `rotob` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `rotoa` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `rotpm` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `rotct` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `roter` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `rotnm` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `rotbk` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`bomti`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of idbt
-- ----------------------------

-- ----------------------------
-- Table structure for `idds`
-- ----------------------------
DROP TABLE IF EXISTS `idds`;
CREATE TABLE `idds` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `linid` varchar(4) CHARACTER SET utf8 NOT NULL,
  `staid` varchar(4) CHARACTER SET utf8 NOT NULL,
  `stadc` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `crpaf` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `jobcd` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`linid`,`staid`),
  UNIQUE KEY `IX_idds` (`staid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of idds
-- ----------------------------

-- ----------------------------
-- Table structure for `idec`
-- ----------------------------
DROP TABLE IF EXISTS `idec`;
CREATE TABLE `idec` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `eqccd` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `wzbm` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `linid` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `eqcsd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `eqcfd` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `tmstm` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `eqcsc` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqcsr` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `eqcod` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `eqcif` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `lbtpy` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `lbpnb` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `ecmrm` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `idspid` int(11) DEFAULT NULL,
  `idepid` int(11) DEFAULT NULL,
  `idesid` int(11) DEFAULT NULL,
  `idemid` int(11) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `updateDate` varchar(20) DEFAULT NULL,
  `updateMember` varchar(32) DEFAULT NULL,
  `sys` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78065 DEFAULT CHARSET=latin1;



-- ----------------------------
-- Table structure for `idee`
-- ----------------------------
DROP TABLE IF EXISTS `idee`;
CREATE TABLE `idee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `eqccd` varchar(10) CHARACTER SET utf8 NOT NULL,
  `eqonm` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `ccntn` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `eqcad` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `eqcp0` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqcp1` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqcp2` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqcp3` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqcp4` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqcp5` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqcp6` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqcp7` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqcp8` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqcp9` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqcf0` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqcf1` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqcf2` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqcf3` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqcf4` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqcf5` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqcf6` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqcf7` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqcf8` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqcf9` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `idecid` int(11) DEFAULT NULL,
  `idsdid1` int(11) DEFAULT NULL,
  `idsdid2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78064 DEFAULT CHARSET=latin1;







-- ----------------------------
-- Table structure for `idel`
-- ----------------------------
DROP TABLE IF EXISTS `idel`;
CREATE TABLE `idel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `pfscd` varchar(4) CHARACTER SET utf8 NOT NULL,
  `eqpcd` varchar(10) CHARACTER SET utf8 NOT NULL,
  `eqscd` varchar(10) CHARACTER SET utf8 NOT NULL,
  `eqmcd` varchar(10) CHARACTER SET utf8 NOT NULL,
  `linid` varchar(4) CHARACTER SET utf8 NOT NULL,
  `prdar` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `fgintm` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `dfprp` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `dfprg` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `dfplp` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `dfplg` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `proco` varchar(3) CHARACTER SET utf8 DEFAULT NULL,g
  `stoco` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `dfstk` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `dflct` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `prcst` decimal(16,2) DEFAULT NULL,
  `prcmv` decimal(16,2) DEFAULT NULL,
  `prcp1` decimal(16,2) DEFAULT NULL,
  `prcph` decimal(16,2) DEFAULT NULL,
  `prcpl` decimal(16,2) DEFAULT NULL,
  `prcpm` decimal(16,2) DEFAULT NULL,
  `prqti` decimal(16,2) DEFAULT NULL,
  `prqtp` decimal(16,2) DEFAULT NULL,
  `eisbe` decimal(16,2) DEFAULT NULL,
  `mabst` decimal(16,2) DEFAULT NULL,
  `cspq1` decimal(16,2) DEFAULT NULL,
  `cspq2` decimal(16,2) DEFAULT NULL,
  `cspq3` decimal(16,2) DEFAULT NULL,
  `tmlkf` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `idlnid` int(11) DEFAULT NULL,
  `idspid` int(11) DEFAULT NULL,
  `idepid` int(11) DEFAULT NULL,
  `idesid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of idel
-- ----------------------------

-- ----------------------------
-- Table structure for `idem`
-- ----------------------------
DROP TABLE IF EXISTS `idem`;
CREATE TABLE `idem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `pfscd` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `eqpcd` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqscd` varchar(10) DEFAULT NULL,
  `eqmcd` varchar(10) CHARACTER SET utf8 NOT NULL,
  `matnm` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `eqmsd` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqmfd` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `tmstm` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `spec` longtext CHARACTER SET utf8,
  `bismt` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `ctcod` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `matfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `cadfn` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `cadfv` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `pigfg` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `eqmif` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `mkicd` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `batfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `tetre` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `isoco` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `fgabc` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `fgved` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `fgfsn` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `fgfwp` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `fggvp` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `fgvdp` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `fgdgc` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `fgtdd` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `fgclc` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `fgcdp` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `cdpid` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `tosty` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `gpcmc` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `prdtm` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `slftm` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `facue` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `fgfia` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `altm1` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `altm2` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `altm3` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `altm4` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `altm5` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `eqmg0` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqmg1` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqmg2` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqmg3` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqmg4` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqmg5` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqmg6` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqmg7` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqmg8` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqmg9` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqmga` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqmgb` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqmgc` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqmge` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqmgf` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqmgg` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqmc0` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqmc1` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqmc2` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqmc3` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqmc4` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqmc5` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqmc6` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqmc7` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqmc8` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqmc9` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqmrn` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `idsp` int(11) DEFAULT NULL,
  `idep` int(11) DEFAULT NULL,
  `ides` int(11) DEFAULT NULL,
  `t002t` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IX_idem` (`matnm`)
) ENGINE=InnoDB AUTO_INCREMENT=4553 DEFAULT CHARSET=latin1;



-- ----------------------------
-- Table structure for `idep`
-- ----------------------------
DROP TABLE IF EXISTS `idep`;
CREATE TABLE `idep` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `pfscd` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `pfssd` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqpcd` varchar(10) CHARACTER SET utf8 NOT NULL,
  `eqpsd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `eqpfd` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `eqpif` varchar(1) CHARACTER SET utf8 NOT NULL,
  `eqpg0` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqpg1` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqpg2` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqpg3` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqpg4` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqpg5` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqpg6` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqpg7` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqpg8` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqpg9` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqpc0` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqpc1` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqpc2` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqpc3` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqpc4` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqpc5` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqpc6` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqpc7` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqpc8` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqpc9` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqprm` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `idspid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=416 DEFAULT CHARSET=latin1;



-- ----------------------------
-- Table structure for `ides`
-- ----------------------------
DROP TABLE IF EXISTS `ides`;
CREATE TABLE `ides` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `pfscd` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `pfssd` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqpcd` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqpsd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `eqscd` varchar(10) CHARACTER SET utf8 NOT NULL,
  `eqssd` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `eqsfd` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `eqsif` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `eqsg0` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqsg1` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqsg2` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqsg3` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqsg4` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqsg5` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqsg6` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqsg7` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqsg8` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqsg9` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqsc0` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqsc1` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqsc2` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqsc3` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqsc4` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqsc5` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqsc6` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqsc7` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqsc8` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqsc9` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqsrm` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `idspid` int(11) DEFAULT NULL,
  `idepid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3781 DEFAULT CHARSET=latin1;





-- ----------------------------
-- Table structure for `idln`
-- ----------------------------
DROP TABLE IF EXISTS `idln`;
CREATE TABLE `idln` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `linid` varchar(4) CHARACTER SET utf8 NOT NULL,
  `linti` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `lindc` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `comcd` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `cadpn` int(11) DEFAULT NULL,
  `statn` int(11) DEFAULT NULL,
  `bantn` int(11) DEFAULT NULL,
  `cetsn` int(11) DEFAULT NULL,
  `mansb` int(11) DEFAULT NULL,
  `msbnb` int(11) DEFAULT NULL,
  `dsbnb` int(11) DEFAULT NULL,
  `fsbnb` int(11) DEFAULT NULL,
  `pssnb` int(11) DEFAULT NULL,
  `etbtp` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `degsp` int(11) DEFAULT NULL,
  `rmxsp` int(11) DEFAULT NULL,
  `lgatb` decimal(12,3) DEFAULT NULL,
  `lgmln` decimal(12,3) DEFAULT NULL,
  `lgtcl` int(11) DEFAULT NULL,
  `chaan` int(11) DEFAULT NULL,
  `contn` int(11) DEFAULT NULL,
  `maxsl` int(11) DEFAULT NULL,
  `mixrd` int(11) DEFAULT NULL,
  `faupt` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `fautt` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IX_idln` (`linid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
 
-- ----------------------------
-- Table structure for `idpa`
-- ----------------------------
DROP TABLE IF EXISTS `idpa`;
CREATE TABLE `idpa` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `linid` varchar(4) CHARACTER SET utf8 NOT NULL,
  `pwaid` varchar(4) CHARACTER SET utf8 NOT NULL,
  `pwacd` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `pwadc` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `pwaty` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `stbid` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `aswbn` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `steid` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `aswen` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `pwaai` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `pltid` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`linid`,`pwaid`),
  UNIQUE KEY `IX_idpa` (`pwaid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of idpa
-- ----------------------------

-- ----------------------------
-- Table structure for `idrh`
-- ----------------------------
DROP TABLE IF EXISTS `idrh`;
CREATE TABLE `idrh` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `rutid` varchar(10) CHARACTER SET utf8 NOT NULL,
  `matnm` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `linid` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `ruttp` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`rutid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of idrh
-- ----------------------------

-- ----------------------------
-- Table structure for `idri`
-- ----------------------------
DROP TABLE IF EXISTS `idri`;
CREATE TABLE `idri` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `rutid` varchar(10) CHARACTER SET utf8 NOT NULL,
  `rutit` varchar(4) CHARACTER SET utf8 NOT NULL,
  `rutod` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `rutop` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `routp` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `rutro` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `rutor` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `linid` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `cotid` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `prfid` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `conkc` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `conlt` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `basqt` decimal(16,2) DEFAULT NULL,
  `wprsu` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `hedur` decimal(16,2) DEFAULT NULL,
  `hedut` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `stpur` decimal(16,2) DEFAULT NULL,
  `stuut` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `calbc` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `sectc` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `tolpc` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `opeic` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `sprri` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`rutid`,`rutit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of idri
-- ----------------------------

-- ----------------------------
-- Table structure for `idrs`
-- ----------------------------
DROP TABLE IF EXISTS `idrs`;
CREATE TABLE `idrs` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `rutst` varchar(1) CHARACTER SET utf8 NOT NULL,
  `rutss` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`rutst`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of idrs
-- ----------------------------

-- ----------------------------
-- Table structure for `idrt`
-- ----------------------------
DROP TABLE IF EXISTS `idrt`;
CREATE TABLE `idrt` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `rutti` varchar(1) CHARACTER SET utf8 NOT NULL,
  `rutds` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `rutpp` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`rutti`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of idrt
-- ----------------------------

-- ----------------------------
-- Table structure for `idsd`
-- ----------------------------
DROP TABLE IF EXISTS `idsd`;
CREATE TABLE `idsd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `linid` varchar(4) CHARACTER SET utf8 NOT NULL,
  `staid` varchar(6) CHARACTER SET utf8 NOT NULL,
  `pstid` varchar(5) CHARACTER SET utf8 NOT NULL,
  `pstdd` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `lindc` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `stadc` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `location` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `pstsc` varchar(4) CHARACTER SET utf8 NOT NULL,
  `pstsd` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `pstcd` varchar(20) CHARACTER SET utf8 NOT NULL,
  `pstfd` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `spflg` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `millk` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `millm` decimal(9,3) DEFAULT NULL,
  `milbk` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `milbm` decimal(9,3) DEFAULT NULL,
  `milek` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `milem` decimal(9,3) DEFAULT NULL,
  `pstma` decimal(16,2) DEFAULT NULL,
  `costc` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `profc` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `dutyp` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `telei` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `pstac` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `pstai` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `updateDate` varchar(20) DEFAULT NULL,
  `updateMember` varchar(32) DEFAULT NULL,
  `sys` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19709 DEFAULT CHARSET=latin1;
 
-- ----------------------------
-- Table structure for `idse`
-- ----------------------------
DROP TABLE IF EXISTS `idse`;
CREATE TABLE `idse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `linid` varchar(4) CHARACTER SET utf8 NOT NULL,
  `staid` varchar(6) CHARACTER SET utf8 NOT NULL,
  `pstid` varchar(5) CHARACTER SET utf8 NOT NULL,
  `lindc` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `stadc` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `psttc` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `pstsd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `pstfd` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `stabi` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `staei` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `lasid` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `plcid` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1594 DEFAULT CHARSET=latin1;
 
-- ----------------------------
-- Table structure for `idsm`
-- ----------------------------
DROP TABLE IF EXISTS `idsm`;
CREATE TABLE `idsm` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `linid` varchar(4) CHARACTER SET utf8 NOT NULL,
  `staid` varchar(4) CHARACTER SET utf8 NOT NULL,
  `stacd` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `stadc` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `stamd` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `staue` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `stast` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`linid`,`staid`),
  UNIQUE KEY `IX_idsm` (`staid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of idsm
-- ----------------------------

-- ----------------------------
-- Table structure for `idsp`
-- ----------------------------
DROP TABLE IF EXISTS `idsp`;
CREATE TABLE `idsp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `pfscd` varchar(4) CHARACTER SET utf8 NOT NULL,
  `pfssd` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `pfsfd` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `pfcgp` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IX_idsp` (`pfscd`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;
 -- ----------------------------
-- Table structure for `idst`
-- ----------------------------
DROP TABLE IF EXISTS `idst`;
CREATE TABLE `idst` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `linid` varchar(4) CHARACTER SET utf8 NOT NULL,
  `lindc` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `orgcd` varchar(20) DEFAULT NULL,
  `staid` varchar(6) CHARACTER SET utf8 NOT NULL,
  `afcstanb` varchar(40) DEFAULT NULL,
  `stanb` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `stadc` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `staty` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `stasf` varchar(1) CHARACTER SET utf8 NOT NULL,
  `stidn` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `sttbn` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `stten` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `tunty` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `stnty` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `stmod` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `syald` decimal(12,3) DEFAULT '0.000',
  `stawd` decimal(12,3) DEFAULT '0.000',
  `stmmk` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `stmmm` decimal(9,3) DEFAULT '0.000',
  `linti` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `st2md` decimal(12,3) DEFAULT '0.000',
  `stadi` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `staui` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `mark` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `iemr`
-- ----------------------------
DROP TABLE IF EXISTS `iemr`;
CREATE TABLE `iemr` (
  `eqmrn` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqmrt` longtext CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of iemr
-- ----------------------------

-- ----------------------------
-- Table structure for `isc1`
-- ----------------------------
DROP TABLE IF EXISTS `isc1`;
CREATE TABLE `isc1` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `eqsc1` varchar(4) CHARACTER SET utf8 NOT NULL,
  `eqscs` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `eqscr` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `delst` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`eqsc1`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of isc1
-- ----------------------------

-- ----------------------------
-- Table structure for `iscp`
-- ----------------------------
DROP TABLE IF EXISTS `iscp`;
CREATE TABLE `iscp` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `eqspi` varchar(20) CHARACTER SET utf8 NOT NULL,
  `eqsen` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`eqspi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of iscp
-- ----------------------------

-- ----------------------------
-- Table structure for `isif`
-- ----------------------------
DROP TABLE IF EXISTS `isif`;
CREATE TABLE `isif` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `pfscd` varchar(4) CHARACTER SET utf8 NOT NULL,
  `eqpcd` varchar(10) CHARACTER SET utf8 NOT NULL,
  `eqscd` varchar(10) CHARACTER SET utf8 NOT NULL,
  `eqmcd` varchar(10) CHARACTER SET utf8 NOT NULL,
  `eqccd` varchar(10) CHARACTER SET utf8 NOT NULL,
  `eqsen` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `eqsun` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `eqsps` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `eqsmc` decimal(16,2) DEFAULT NULL,
  `eqsed` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `eqsnd` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `eqsad` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `eqsdr` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `eqsd1` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `eqsp1` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `eqsd2` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `eqsp2` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `eqsd3` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `eqsp3` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `eqsd4` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `eqsp4` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `eqsd5` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `eqsp5` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `eqsd6` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `eqsp6` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `eqsd7` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `eqsp7` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `eqsd8` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `eqsp8` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `eqsd9` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `eqsp9` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `eqsda` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `eqspa` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `eqsdb` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `eqspb` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `eqsdc` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `eqspc` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `eqsdd` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `eqspd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `eqsde` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `eqspe` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `eqsdf` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `eqspf` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `eqsdg` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `eqspg` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `eqsdh` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `eqsph` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `eqsdi` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `eqspi` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `eqsdj` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `eqspj` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `eqsdk` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `eqspk` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `orgid` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `orgcd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `esnum` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `eqsmdt` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `eqspmt` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `eqpdd` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `eqpdn` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `eqpqn` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `eqdoc` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `eqpui` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqtui` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqsui` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqmvc` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eqsrs` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `eqsc1` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `eqsc2` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `eqsc3` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `eqsc4` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `eqsc5` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `eqsg1` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `eqsg2` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `eqsg3` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `eqsg4` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `eqsg5` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `eqsrk` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `idceid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=490 DEFAULT CHARSET=latin1;



-- ----------------------------
-- Table structure for `ism_secret`
-- ----------------------------
DROP TABLE IF EXISTS `ism_secret`;
CREATE TABLE `ism_secret` (
  `id` varchar(32) NOT NULL,
  `descr` varchar(40) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL,
  `delfg` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

 
-- ----------------------------
-- Table structure for `isse`
-- ----------------------------
DROP TABLE IF EXISTS `isse`;
CREATE TABLE `isse` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `speid` varchar(4) CHARACTER SET utf8 NOT NULL,
  `spedc` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `spelr` varchar(80) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`speid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `member`
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `loginId` varchar(50) NOT NULL,
  `psd` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `orgId` varchar(50) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `dept` varchar(50) DEFAULT NULL,
  `deptId` varchar(50) DEFAULT NULL,
  `mobilePhone` varchar(50) DEFAULT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `positionCode` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `addr` varchar(50) DEFAULT NULL,
  `addrTel` varchar(50) DEFAULT NULL,
  `titles` varchar(50) DEFAULT NULL,
  `politics` varchar(50) DEFAULT NULL,
  `positionType` varchar(50) DEFAULT NULL,
  `inTime` varchar(50) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `interest` varchar(50) DEFAULT NULL,
  `shudi` varchar(50) DEFAULT NULL,
  `up` varchar(50) DEFAULT NULL,
  `ut` varchar(50) DEFAULT NULL,
  `no` varchar(50) DEFAULT NULL,
  `gtime` varchar(50) DEFAULT NULL,
  `gschool` varchar(50) DEFAULT NULL,
  `gspec` varchar(50) DEFAULT NULL,
  `han` varchar(50) DEFAULT NULL,
  `dschool` varchar(50) DEFAULT NULL,
  `dspec` varchar(50) DEFAULT NULL,
  `degree` varchar(50) DEFAULT NULL,
  `record` varchar(50) DEFAULT NULL,
  `maxRecord` varchar(50) DEFAULT NULL,
  `birth` varchar(50) DEFAULT NULL,
  `drecord` varchar(50) DEFAULT NULL,
  `ddegree` varchar(50) DEFAULT NULL,
  `maxDegree` varchar(50) DEFAULT NULL,
  `maxRecordKind` varchar(50) DEFAULT NULL,
  `dtime` varchar(50) DEFAULT NULL,
  `titleTime` varchar(50) DEFAULT NULL,
  `stime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`loginId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------


-- ----------------------------
-- Table structure for `member_tmp`
-- ----------------------------
DROP TABLE IF EXISTS `member_tmp`;
CREATE TABLE `member_tmp` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `compy` varchar(10) DEFAULT NULL,
  `orgd` int(11) DEFAULT NULL,
  `sname` varchar(20) DEFAULT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `gendr` varchar(1) DEFAULT NULL,
  `datbt` varchar(10) DEFAULT NULL,
  `epnum` varchar(20) DEFAULT NULL,
  `syuid` varchar(20) DEFAULT NULL,
  `fulln` varchar(20) DEFAULT NULL,
  `fstwd` varchar(10) DEFAULT NULL,
  `regtd` varchar(10) DEFAULT NULL,
  `natin` varchar(4) DEFAULT NULL,
  `marig` varchar(1) DEFAULT NULL,
  `natpa` varchar(10) DEFAULT NULL,
  `title` varchar(10) DEFAULT NULL,
  `polaf` varchar(4) DEFAULT NULL,
  `jtpd1` varchar(10) DEFAULT NULL,
  `epysu` varchar(4) DEFAULT NULL,
  `hsrtp` varchar(4) DEFAULT NULL,
  `idcad` varchar(40) DEFAULT NULL,
  `state` varchar(1) DEFAULT NULL,
  `mtel1` varchar(11) DEFAULT NULL,
  `gdscf` varchar(20) DEFAULT NULL,
  `gdpff` varchar(20) DEFAULT NULL,
  `gdadf` varchar(10) DEFAULT NULL,
  `gddtf` varchar(10) DEFAULT NULL,
  `gdscj` varchar(20) DEFAULT NULL,
  `gdpfj` varchar(20) DEFAULT NULL,
  `gdadj` varchar(10) DEFAULT NULL,
  `gdxlf` varchar(10) DEFAULT NULL,
  `gddtj` varchar(10) DEFAULT NULL,
  `gdxlj` varchar(10) DEFAULT NULL,
  `lstad` varchar(5) DEFAULT NULL,
  `lstsm` varchar(10) DEFAULT NULL,
  `titdt` varchar(10) DEFAULT NULL,
  `apitf` varchar(1) DEFAULT NULL,
  `apitd` varchar(10) DEFAULT NULL,
  `ttref` varchar(1) DEFAULT NULL,
  `ttgtl` varchar(2) DEFAULT NULL,
  `tecre` varchar(1) DEFAULT NULL,
  `sklve` varchar(10) DEFAULT NULL,
  `sklcf` varchar(10) DEFAULT NULL,
  `gcotm` varchar(10) DEFAULT NULL,
  `lfscf` varchar(2) DEFAULT NULL,
  `linum` varchar(4) DEFAULT NULL,
  `pstnm` varchar(10) DEFAULT NULL,
  `pstnt` varchar(4) DEFAULT NULL,
  `spsnm` varchar(10) DEFAULT NULL,
  `spfnm` varchar(10) DEFAULT NULL,
  `spwuc` varchar(10) DEFAULT NULL,
  `egtp1` varchar(15) DEFAULT NULL,
  `hsrpr` varchar(50) DEFAULT NULL,
  `hsrci` varchar(10) DEFAULT NULL,
  `hsrco` varchar(10) DEFAULT NULL,
  `hsrst` varchar(40) DEFAULT NULL,
  `hsrbd` varchar(40) DEFAULT NULL,
  `hsrpc` varchar(10) DEFAULT NULL,
  `livpr` varchar(50) DEFAULT NULL,
  `livci` varchar(10) DEFAULT NULL,
  `livco` varchar(10) DEFAULT NULL,
  `livst` varchar(40) DEFAULT NULL,
  `livbd` varchar(40) DEFAULT NULL,
  `livpc` varchar(10) DEFAULT NULL,
  `nowla` varchar(1) DEFAULT NULL,
  `lswcn` varchar(10) DEFAULT NULL,
  `lswft` varchar(10) DEFAULT NULL,
  `lswet` varchar(10) DEFAULT NULL,
  `lswpt` varchar(20) DEFAULT NULL,
  `lspsy` varchar(2) DEFAULT NULL,
  `ward1` varchar(32) DEFAULT NULL,
  `yeagt` varchar(1) DEFAULT NULL,
  `ward2` varchar(32) DEFAULT NULL,
  `orni` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `oeuc`
-- ----------------------------
DROP TABLE IF EXISTS `oeuc`;
CREATE TABLE `oeuc` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `wkcom` varchar(10) CHARACTER SET utf8 NOT NULL,
  `wknms` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `wknmf` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `begdt` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `enddt` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`wkcom`),
  UNIQUE KEY `IX_oeuc` (`wkcom`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of oeuc
-- ----------------------------

-- ----------------------------
-- Table structure for `orc2`
-- ----------------------------
DROP TABLE IF EXISTS `orc2`;
CREATE TABLE `orc2` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `comid` varchar(4) CHARACTER SET utf8 NOT NULL,
  `comsd` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `comfd` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`comid`),
  UNIQUE KEY `IX_orc2` (`comid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of orc2
-- ----------------------------

-- ----------------------------
-- Table structure for `ordp`
-- ----------------------------
DROP TABLE IF EXISTS `ordp`;
CREATE TABLE `ordp` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `depti` varchar(20) CHARACTER SET utf8 NOT NULL,
  `depsd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `depfd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `comcd` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `linid` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `cotct` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `prfct` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`depti`),
  UNIQUE KEY `IX_ordp` (`depti`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ordp
-- ----------------------------

-- ----------------------------
-- Table structure for `oreo`
-- ----------------------------
DROP TABLE IF EXISTS `oreo`;
CREATE TABLE `oreo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `orgid` varchar(4) CHARACTER SET utf8 NOT NULL,
  `orgcd` varchar(20) CHARACTER SET utf8 NOT NULL,
  `epeid` varchar(20) CHARACTER SET utf8 NOT NULL,
  `atvbd` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `atved` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `orgdid` int(11) DEFAULT NULL,
  `esvwid` varchar(32) DEFAULT NULL,
  `createMember` varchar(32) DEFAULT NULL,
  `createDate` varchar(20) DEFAULT NULL,
  `updateMember` varchar(32) DEFAULT NULL,
  `updateDate` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `epeid` (`epeid`),
  KEY `orgdid` (`orgdid`) USING BTREE,
  KEY `esvwid` (`esvwid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5211 DEFAULT CHARSET=latin1;


-- ----------------------------
-- Table structure for `orep`
-- ----------------------------
DROP TABLE IF EXISTS `orep`;
CREATE TABLE `orep` (
  `id` varchar(32) NOT NULL,
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `orgid` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `orgcd` varchar(20) CHARACTER SET utf8 NOT NULL,
  `epnum` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `atvbd` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `atved` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `epbi` varchar(32) DEFAULT NULL,
  `orgd` int(11) DEFAULT NULL,
  `createMember` varchar(32) DEFAULT NULL,
  `createDate` varchar(20) DEFAULT NULL,
  `updateMember` varchar(32) DEFAULT NULL,
  `updateDate` varchar(20) DEFAULT NULL,
  `ncwaf` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `epnum` (`epnum`),
  KEY `epbi` (`epbi`),
  KEY `delfg` (`delfg`) USING BTREE,
  KEY `orgid` (`orgid`) USING BTREE,
  KEY `orgd` (`orgd`) USING BTREE,
  KEY `usrct` (`usrct`) USING BTREE,
  KEY `orgcd` (`orgcd`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






-- ----------------------------
-- Table structure for `orgd`
-- ----------------------------
DROP TABLE IF EXISTS `orgd`;
CREATE TABLE `orgd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `orgid` varchar(4) CHARACTER SET utf8 NOT NULL,
  `orgcd` varchar(20) CHARACTER SET utf8 NOT NULL,
  `orgsd` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `orgfd` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `orglv` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `speif` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `extk0` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `extk1` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `extk2` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `extk3` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `extk4` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `extk5` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `extk6` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `extk7` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `extk8` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `extk9` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `extka` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `extkb` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `extkc` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `extkd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `extke` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `extkf` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `atvbd` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `atved` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `orgfi` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `orgfl` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `orprm` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `orgeid` int(11) DEFAULT NULL,
  `createDate` varchar(20) DEFAULT NULL,
  `createMember` varchar(32) DEFAULT NULL,
  `updateDate` varchar(20) DEFAULT NULL,
  `updateMember` varchar(32) DEFAULT NULL,
  `ddid` varchar(32) DEFAULT NULL,
  `mark` varchar(1) DEFAULT NULL,
  `oranID` varchar(160) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orgcd` (`orgcd`),
  KEY `orgeid` (`orgeid`) USING BTREE,
  KEY `delfg` (`delfg`) USING BTREE,
  KEY `usrct` (`usrct`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1747 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `orge`
-- ----------------------------
DROP TABLE IF EXISTS `orge`;
CREATE TABLE `orge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `orgid` varchar(4) CHARACTER SET utf8 NOT NULL,
  `orgvl` varchar(4) CHARACTER SET utf8 NOT NULL,
  `orgtp` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `orgds` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `orgdf` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `admin` longtext CHARACTER SET utf8,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IX_orge` (`orgid`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `orln`
-- ----------------------------
DROP TABLE IF EXISTS `orln`;
CREATE TABLE `orln` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `linid` varchar(4) CHARACTER SET utf8 NOT NULL,
  `lindc` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `comcd` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `cadpn` int(11) DEFAULT NULL,
  `statn` int(11) DEFAULT NULL,
  `bantn` int(11) DEFAULT NULL,
  `cetsn` int(11) DEFAULT NULL,
  `mansb` int(11) DEFAULT NULL,
  `msbnb` int(11) DEFAULT NULL,
  `dsbnb` int(11) DEFAULT NULL,
  `fsbnb` int(11) DEFAULT NULL,
  `pssnb` int(11) DEFAULT NULL,
  `etbtp` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `degsp` int(11) DEFAULT NULL,
  `rmxsp` int(11) DEFAULT NULL,
  `lgatb` decimal(12,3) DEFAULT NULL,
  `lgmln` decimal(12,3) DEFAULT NULL,
  `lgtcl` int(11) DEFAULT NULL,
  `chaan` int(11) DEFAULT NULL,
  `contn` int(11) DEFAULT NULL,
  `maxsl` int(11) DEFAULT NULL,
  `mixrd` int(11) DEFAULT NULL,
  `faupt` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `fautt` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`linid`),
  UNIQUE KEY `IX_orln` (`linid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of orln
-- ----------------------------

-- ----------------------------
-- Table structure for `ornc`
-- ----------------------------
DROP TABLE IF EXISTS `ornc`;
CREATE TABLE `ornc` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `orgid` varchar(4) CHARACTER SET utf8 NOT NULL,
  `orgcd` varchar(20) CHARACTER SET utf8 NOT NULL,
  `orgcdds` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `pstnm` varchar(20) CHARACTER SET utf8 NOT NULL,
  `pstnmds` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `cetid` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `cetdt` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `cettm` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `mfidf` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `mfdtf` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `mftmf` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `oncif` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `mfids` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `mfdts` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `mftms` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `oncis` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `mfidt` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `mfdtt` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `mftmt` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `oncit` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `orgdid` int(11) DEFAULT NULL,
  PRIMARY KEY (`usrct`,`orgid`,`orgcd`,`pstnm`),
  UNIQUE KEY `IX_ornc` (`pstnm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- ----------------------------
-- Table structure for `ornh`
-- ----------------------------
DROP TABLE IF EXISTS `ornh`;
CREATE TABLE `ornh` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `orgid` varchar(4) CHARACTER SET utf8 NOT NULL,
  `orgcd` varchar(20) CHARACTER SET utf8 NOT NULL,
  `orgcdds` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `pstnm` varchar(20) CHARACTER SET utf8 NOT NULL,
  `ornci` varchar(20) CHARACTER SET utf8 NOT NULL,
  `mdfid` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `mdfdt` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `mdftm` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `ptsdo` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `ptfdo` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `ptono` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ptonods` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `ptcso` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ptcsods` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `avbdo` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `avedo` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `dlfgo` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `ptsdn` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `ptfdn` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `ptonn` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ptonnds` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `ptcsn` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ptcsnds` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `avbdn` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `avedn` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `dlfgn` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `orgdid` int(11) DEFAULT NULL,
  PRIMARY KEY (`usrct`,`orgid`,`orgcd`,`pstnm`,`ornci`),
  UNIQUE KEY `IX_ornh` (`ornci`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ornh
-- ----------------------------

-- ----------------------------
-- Table structure for `orni`
-- ----------------------------
DROP TABLE IF EXISTS `orni`;
CREATE TABLE `orni` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `orgcd` varchar(20) DEFAULT NULL COMMENT '组织编号',
  `pstnm` varchar(32) DEFAULT NULL,
  `pstdc` varchar(25) DEFAULT NULL,
  `pston` varchar(3) DEFAULT NULL,
  `pstcs` varchar(10) DEFAULT NULL,
  `delfg` varchar(1) DEFAULT NULL COMMENT '删除标准',
  `orgd` varchar(32) DEFAULT NULL COMMENT 'ORGD',
  `orwt` varchar(11) DEFAULT NULL,
  `ortc` varchar(11) DEFAULT NULL,
  `updateMember` varchar(32) DEFAULT NULL,
  `updateDate` varchar(20) DEFAULT NULL,
  `createMember` varchar(32) DEFAULT NULL,
  `createDate` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `ornt`
-- ----------------------------
DROP TABLE IF EXISTS `ornt`;
CREATE TABLE `ornt` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `pstnt` varchar(4) CHARACTER SET utf8 NOT NULL,
  `pstnd` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`pstnt`),
  UNIQUE KEY `IX_ornt` (`pstnt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ornt
-- ----------------------------

-- ----------------------------
-- Table structure for `orpp`
-- ----------------------------
DROP TABLE IF EXISTS `orpp`;
CREATE TABLE `orpp` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `orgid` varchar(4) CHARACTER SET utf8 NOT NULL,
  `orgcd` varchar(20) CHARACTER SET utf8 NOT NULL,
  `pstnm` varchar(10) CHARACTER SET utf8 NOT NULL,
  `nbrop` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `atvbd` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `atved` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`orgid`,`orgcd`,`pstnm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of orpp
-- ----------------------------

-- ----------------------------
-- Table structure for `ortc`
-- ----------------------------
DROP TABLE IF EXISTS `ortc`;
CREATE TABLE `ortc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `orgid` varchar(4) CHARACTER SET utf8 NOT NULL,
  `pston` varchar(10) CHARACTER SET utf8 NOT NULL,
  `psosd` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `psofd` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `atvbd` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `atved` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IX_ortc_1` (`pston`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;


-- ----------------------------
-- Table structure for `ortm`
-- ----------------------------
DROP TABLE IF EXISTS `ortm`;
CREATE TABLE `ortm` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `btemi` varchar(20) CHARACTER SET utf8 NOT NULL,
  `btmsd` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `btmfd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `wksid` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `wkcls` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`btemi`),
  UNIQUE KEY `IX_ortm` (`btemi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
 
-- ----------------------------
-- Table structure for `ortp`
-- ----------------------------
DROP TABLE IF EXISTS `ortp`;
CREATE TABLE `ortp` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `orgtp` varchar(4) CHARACTER SET utf8 NOT NULL,
  `orgds` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `orgdf` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`orgtp`),
  UNIQUE KEY `IX_ortp` (`orgtp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- ----------------------------
-- Table structure for `ortt`
-- ----------------------------
DROP TABLE IF EXISTS `ortt`;
CREATE TABLE `ortt` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `title` varchar(4) CHARACTER SET utf8 NOT NULL,
  `titdc` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`title`),
  UNIQUE KEY `IX_ortt` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ortt
-- ----------------------------

-- ----------------------------
-- Table structure for `ortw`
-- ----------------------------
DROP TABLE IF EXISTS `ortw`;
CREATE TABLE `ortw` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `tywkn` varchar(10) CHARACTER SET utf8 NOT NULL,
  `tywdc` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`tywkn`),
  UNIQUE KEY `IX_ortw` (`tywkn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ortw
-- ----------------------------

-- ----------------------------
-- Table structure for `orwc`
-- ----------------------------
DROP TABLE IF EXISTS `orwc`;
CREATE TABLE `orwc` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `wkcli` varchar(20) CHARACTER SET utf8 NOT NULL,
  `wkcsd` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `wkcfd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `wksid` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`wkcli`),
  UNIQUE KEY `IX_orwc` (`wkcli`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of orwc
-- ----------------------------

-- ----------------------------
-- Table structure for `orws`
-- ----------------------------
DROP TABLE IF EXISTS `orws`;
CREATE TABLE `orws` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `wksid` varchar(20) CHARACTER SET utf8 NOT NULL,
  `wkssd` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `wksfd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`wksid`),
  UNIQUE KEY `IX_orws` (`wksid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- ----------------------------
-- Table structure for `orwt`
-- ----------------------------
DROP TABLE IF EXISTS `orwt`;
CREATE TABLE `orwt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `orgid` varchar(4) CHARACTER SET utf8 NOT NULL,
  `pstcs` varchar(10) CHARACTER SET utf8 NOT NULL,
  `pstsd` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `pstfd` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `atvbd` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `atved` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IX_orwt` (`pstcs`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `sbbk`
-- ----------------------------
DROP TABLE IF EXISTS `sbbk`;
CREATE TABLE `sbbk` (
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `bakid` varchar(4) CHARACTER SET utf8 NOT NULL,
  `baksd` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `bakld` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`usrct`,`bakid`),
  UNIQUE KEY `IX_sbbk` (`bakid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sbbk
-- ----------------------------

-- ----------------------------
-- Table structure for `sbbt`
-- ----------------------------
DROP TABLE IF EXISTS `sbbt`;
CREATE TABLE `sbbt` (
  `blodt` varchar(2) CHARACTER SET utf8 NOT NULL,
  `bodds` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`blodt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sbbt
-- ----------------------------

-- ----------------------------
-- Table structure for `sbci`
-- ----------------------------
DROP TABLE IF EXISTS `sbci`;
CREATE TABLE `sbci` (
  `cityc` varchar(10) CHARACTER SET utf8 NOT NULL,
  `blods` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `boddd` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `blodt` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `spcfg` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `numcd` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `letcd` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `letdc` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`cityc`),
  UNIQUE KEY `IX_sbci` (`blods`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sbci
-- ----------------------------

-- ----------------------------
-- Table structure for `sbco`
-- ----------------------------
DROP TABLE IF EXISTS `sbco`;
CREATE TABLE `sbco` (
  `conty` varchar(10) CHARACTER SET utf8 NOT NULL,
  `cntds` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `cntdd` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `numcd` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `letcd` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `letdc` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `postc` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `cityc` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`conty`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sbco
-- ----------------------------

-- ----------------------------
-- Table structure for `sbnp`
-- ----------------------------
DROP TABLE IF EXISTS `sbnp`;
CREATE TABLE `sbnp` (
  `ntvpa` varchar(10) CHARACTER SET utf8 NOT NULL,
  `ntpdc` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ntvpa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sbnp
-- ----------------------------

-- ----------------------------
-- Table structure for `sbpc`
-- ----------------------------
DROP TABLE IF EXISTS `sbpc`;
CREATE TABLE `sbpc` (
  `pstcd` varchar(10) CHARACTER SET utf8 NOT NULL,
  `conty` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`pstcd`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sbpc
-- ----------------------------

-- ----------------------------
-- Table structure for `sbps`
-- ----------------------------
DROP TABLE IF EXISTS `sbps`;
CREATE TABLE `sbps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `polaf` varchar(4) CHARACTER SET utf8 NOT NULL,
  `eplad` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;


-- ----------------------------
-- Table structure for `sbpt`
-- ----------------------------
DROP TABLE IF EXISTS `sbpt`;
CREATE TABLE `sbpt` (
  `party` varchar(4) CHARACTER SET utf8 NOT NULL,
  `partd` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `delst` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`party`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `sbpv`
-- ----------------------------
DROP TABLE IF EXISTS `sbpv`;
CREATE TABLE `sbpv` (
  `blodt` varchar(4) CHARACTER SET utf8 NOT NULL,
  `blods` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `boddd` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `spcfg` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `numcd` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `letcd` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `letdc` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `cityc` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`blodt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 
-- ----------------------------
-- Table structure for `t002`
-- ----------------------------
DROP TABLE IF EXISTS `t002`;
CREATE TABLE `t002` (
  `isoco` varchar(3) CHARACTER SET utf8 NOT NULL,
  `delfg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`isoco`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- ----------------------------
-- Table structure for `t002t`
-- ----------------------------
DROP TABLE IF EXISTS `t002t`;
CREATE TABLE `t002t` (
  `isoco` varchar(3) CHARACTER SET utf8 NOT NULL,
  `lagky` varchar(2) CHARACTER SET utf8 NOT NULL,
  `isotx` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`isoco`,`lagky`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 -- ----------------------------
-- Table structure for `t010`
-- ----------------------------
DROP TABLE IF EXISTS `t010`;
CREATE TABLE `t010` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lagky` varchar(2) CHARACTER SET utf8 NOT NULL,
  `isola` varchar(2) CHARACTER SET utf8 NOT NULL,
  `sptxt` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delst` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`lagky`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

 
-- ----------------------------
-- Table structure for `tmp`
-- ----------------------------
DROP TABLE IF EXISTS `tmp`;
CREATE TABLE `tmp` (
  `userCode` varchar(6) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 -- ----------------------------
-- Table structure for `tona`
-- ----------------------------
DROP TABLE IF EXISTS `tona`;
CREATE TABLE `tona` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `natin` varchar(4) CHARACTER SET utf8 NOT NULL,
  `natds` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `delst` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;
 
-- ----------------------------
-- Table structure for `usct`
-- ----------------------------
DROP TABLE IF EXISTS `usct`;
CREATE TABLE `usct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usrct` varchar(4) CHARACTER SET utf8 NOT NULL,
  `clnam` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `cityn` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `funds` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `temlk` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `tramd` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `matrz` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `lastu` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `lastd` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IX_usct` (`usrct`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1; 



-- ----------------------------
-- Table structure for `ward`
-- ----------------------------
DROP TABLE IF EXISTS `ward`;
CREATE TABLE `ward` (
  `id` varchar(32) NOT NULL,
  `dcode` varchar(6) DEFAULT NULL,
  `descr` varchar(15) DEFAULT NULL,
  `parent` varchar(32) DEFAULT NULL,
  `orglv` varchar(2) DEFAULT NULL,
  `delfg` varchar(1) DEFAULT NULL,
  `att1` varchar(10) DEFAULT NULL,
  `att2` varchar(10) DEFAULT NULL,
  `att3` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- View structure for `cfg_member_v`
-- ----------------------------
DROP VIEW IF EXISTS `cfg_member_v`;
CREATE ALGORITHM=UNDEFINED DEFINER=`xxhk`@`%` SQL SECURITY DEFINER VIEW `cfg_member_v` AS select `epbi`.`id` AS `id`,NULL AS `org`,`epbi`.`epnum` AS `loginId`,`epbi`.`syuid` AS `syuid`,concat(`epbi`.`sname`,`epbi`.`fname`) AS `descr`,`epbi`.`psd` AS `psd`,_utf8'mdm' AS `usrct`,_utf8'1' AS `source`,NULL AS `oranId` from `epbi` where (`epbi`.`delfg` = _utf8'0') union all select `esbi`.`id` AS `id`,NULL AS `org`,`esbi`.`esnum` AS `loginId`,`esbi`.`syuid` AS `syuid`,concat(`esbi`.`sname`,`esbi`.`fname`) AS `descr`,`esbi`.`psd` AS `psd`,_utf8'mdm' AS `usrct`,_utf8'2' AS `source`,NULL AS `oranId` from `esbi` where (`esbi`.`delfg` = _utf8'0') ;

-- ----------------------------
-- View structure for `cfg_org_member_v`
-- ----------------------------
DROP VIEW IF EXISTS `cfg_org_member_v`;
CREATE ALGORITHM=UNDEFINED DEFINER=`xxhk`@`%` SQL SECURITY DEFINER VIEW `cfg_org_member_v` AS select `orep`.`id` AS `id`,`orep`.`epbi` AS `member`,`orep`.`orgd` AS `org`,`orep`.`delfg` AS `delfg`,(1 - `orep`.`delfg`) AS `enable`,_utf8'mdm' AS `usrct`,NULL AS `oranId`,NULL AS `createDate`,NULL AS `createMember`,NULL AS `updateDate`,NULL AS `updateMember`,NULL AS `ws0`,NULL AS `ws1`,NULL AS `ws2`,NULL AS `ws3`,NULL AS `ws4`,NULL AS `ws5`,NULL AS `ws6`,NULL AS `ws7`,NULL AS `ws8`,NULL AS `ws9` from `orep` ;

-- ----------------------------
-- View structure for `cfg_org_v`
-- ----------------------------
DROP VIEW IF EXISTS `cfg_org_v`;
CREATE ALGORITHM=UNDEFINED DEFINER=`xxhk`@`%` SQL SECURITY DEFINER VIEW `cfg_org_v` AS select distinct `orgd`.`id` AS `id`,`orgd`.`orgid` AS `orge`,`orgd`.`orgcd` AS `orgCode`,`orgd`.`orgfd` AS `descr`,(select `t`.`id` AS `id` from `orgd` `t` where (`t`.`orgcd` = `orgd`.`orgfi`)) AS `parent`,`orgd`.`orglv` AS `orglv`,`orgd`.`speif` AS `offi`,`orgd`.`extk1` AS `att1`,`orgd`.`extk2` AS `att2`,`orgd`.`extk3` AS `att3`,_utf8'mdm' AS `usrct`,`orgd`.`delfg` AS `delfg`,`orgd`.`extkf` AS `oranId` from `orgd` where (`orgd`.`delfg` = _utf8'0') ;

-- ----------------------------
-- View structure for `esvw`
-- ----------------------------
DROP VIEW IF EXISTS `esvw`;
CREATE ALGORITHM=UNDEFINED DEFINER=`xxhk`@`%` SQL SECURITY DEFINER VIEW `esvw` AS select `esbi`.`id` AS `id`,`esbi`.`usrct` AS `usrct`,`esbi`.`esnum` AS `esnum`,`epty`.`eptpd` AS `eptpd`,concat(`esbi`.`sname`,`esbi`.`fname`) AS `name`,`esep`.`etida` AS `etida`,`esni`.`mtel1` AS `mtel1`,`esbi`.`delfg` AS `delfg`,`esep`.`id` AS `esepid`,`esni`.`id` AS `esniid` from (((`esbi` left join `esni` on((`esni`.`epnum` = `esbi`.`esnum`))) left join `esep` on((`esbi`.`esnum` = `esep`.`epnum`))) join `epty` on((`esbi`.`epytp` = `epty`.`epytp`))) ;

-- ----------------------------
-- View structure for `idce`
-- ----------------------------
DROP VIEW IF EXISTS `idce`;
CREATE ALGORITHM=UNDEFINED DEFINER=`xxhk`@`%` SQL SECURITY DEFINER VIEW `idce` AS select `idec`.`id` AS `id`,`idsp`.`pfscd` AS `pfscd`,`idsp`.`pfssd` AS `pfssd`,`idep`.`eqpcd` AS `eqpcd`,`idep`.`eqpsd` AS `eqpsd`,`ides`.`eqscd` AS `eqscd`,`ides`.`eqssd` AS `eqssd`,`idem`.`eqmcd` AS `eqmcd`,`idem`.`eqmsd` AS `eqmsd`,`idec`.`wzbm` AS `wzbm`,`idec`.`eqccd` AS `eqccd`,`idec`.`eqcsd` AS `eqcsd`,`idec`.`eqcsr` AS `eqcsr`,`idec`.`linid` AS `linid`,ifnull(`idec`.`status`,_latin1'') AS `status`,ifnull(`idec`.`updateDate`,_latin1'') AS `updateDate`,ifnull(`idec`.`updateMember`,_latin1'') AS `updateMember`,ifnull(`idec`.`sys`,_latin1'') AS `sys`,`idsd`.`pstcd` AS `pstcd1`,`idsd`.`pstfd` AS `pstfd1`,`idsd_1`.`pstcd` AS `pstcd2`,`idsd_1`.`pstfd` AS `pstfd2`,`idee`.`usrct` AS `usrct`,`idee`.`idsdid1` AS `idsd1id`,`idee`.`idsdid2` AS `idsd2id`,`idsp`.`id` AS `idspid`,`idep`.`id` AS `idepid`,`ides`.`id` AS `idesid`,`idem`.`id` AS `idemid`,`idee`.`eqonm` AS `eqonm`,`idec`.`eqcfd` AS `eqcfd`,`idee`.`ccntn` AS `ccntn`,`idec`.`eqcsc` AS `eqcsc`,`idec`.`eqcod` AS `eqcod`,`idec`.`eqcif` AS `eqcif`,`idec`.`lbtpy` AS `lbtpy`,`idec`.`lbpnb` AS `lbpnb`,`idec`.`ecmrm` AS `ecmrm`,`idec`.`delfg` AS `delfg`,`idee`.`eqcad` AS `eqcad`,`idee`.`eqcp0` AS `eqcp0`,`idee`.`eqcp1` AS `eqcp1`,`idee`.`eqcp2` AS `eqcp2`,`idee`.`eqcp3` AS `eqcp3`,`idee`.`eqcp4` AS `eqcp4`,`idee`.`eqcp5` AS `eqcp5`,`idee`.`eqcp6` AS `eqcp6`,`idee`.`eqcp8` AS `eqcp8`,`idee`.`eqcp7` AS `eqcp7`,`idee`.`eqcp9` AS `eqcp9`,`idee`.`eqcf0` AS `eqcf0`,`idee`.`eqcf1` AS `eqcf1`,`idee`.`eqcf2` AS `eqcf2`,`idee`.`eqcf3` AS `eqcf3`,`idee`.`eqcf4` AS `eqcf4`,`idee`.`eqcf5` AS `eqcf5`,`idee`.`eqcf6` AS `eqcf6`,`idee`.`eqcf7` AS `eqcf7`,`idee`.`eqcf8` AS `eqcf8`,`idee`.`eqcf9` AS `eqcf9`,`idee`.`id` AS `ideeid` from (((((((`idec` join `idee` on((`idec`.`id` = `idee`.`idecid`))) join `idem` on((`idec`.`idemid` = `idem`.`id`))) join `ides` on((`idem`.`ides` = `ides`.`id`))) join `idep` on((`ides`.`idepid` = `idep`.`id`))) join `idsp` on((`idep`.`idspid` = `idsp`.`id`))) left join `idsd` on((`idee`.`idsdid1` = `idsd`.`id`))) left join `idsd` `idsd_1` on((`idee`.`idsdid2` = `idsd_1`.`id`))) ;

-- ----------------------------
-- View structure for `ordg_admt`
-- ----------------------------
DROP VIEW IF EXISTS `ordg_admt`;
CREATE ALGORITHM=UNDEFINED DEFINER=`xxhk`@`%` SQL SECURITY DEFINER VIEW `ordg_admt` AS select `orgd`.`orgcd` AS `orgcd`,`orgd`.`orgsd` AS `orgsd`,`orgd`.`orgfd` AS `orgfd`,`orgd`.`orglv` AS `orglv`,`orgd`.`speif` AS `speif`,`orgd`.`orgfi` AS `orgfi`,`orgd`.`orgfl` AS `orgfl`,`orgd`.`orprm` AS `orprm`,`orgd`.`atved` AS `atved`,`orgd`.`atvbd` AS `atvbd`,`orgd`.`orgid` AS `orgid`,`orgd`.`delfg` AS `delfg` from ((`orgd` join `orge` on((`orgd`.`orgid` = `orge`.`orgid`))) join `ortp` on((`orge`.`orgtp` = `ortp`.`orgtp`))) where ((`orge`.`delfg` <> _utf8'1') and (`ortp`.`delfg` = _utf8'0') and (`ortp`.`orgtp` = _utf8'0100') and (`orgd`.`delfg` = _utf8'0') and (`orgd`.`extk6` <> _utf8'1')) union all select if((length(`idst`.`staid`) = 4),concat(`idst`.`linid`,`idst`.`staid`,_utf8'0'),concat(`idst`.`linid`,`idst`.`staid`)) AS `if(LENGTH(staid)=4,CONCAT(linid,staid,'0'),CONCAT(linid,staid))`,`idst`.`stadc` AS `stadc`,`idst`.`stadc` AS `stadc`,3 AS `3`,0 AS `0`,`idst`.`orgcd` AS `orgcd`,2 AS `2`,_utf8'' AS `a`,_utf8'' AS `b`,_utf8'' AS `c`,_utf8'1100' AS `1100`,`idst`.`delfg` AS `delfg` from `idst` where (`idst`.`stasf` = 0) ;

-- ----------------------------
-- View structure for `ordg_vsms`
-- ----------------------------
DROP VIEW IF EXISTS `ordg_vsms`;
CREATE ALGORITHM=UNDEFINED DEFINER=`xxhk`@`%` SQL SECURITY DEFINER VIEW `ordg_vsms` AS select `epbi`.`epnum` AS `epnum`,concat(`epbi`.`sname`,`epbi`.`mname`,`epbi`.`fname`) AS `EPNAM`,`orep`.`orgcd` AS `orgcd`,`orgd`.`orgsd` AS `orgsd`,replace(replace(`epbi`.`gendr`,0,_utf8'女'),1,_utf8'男') AS `gendr`,`epbi`.`regtd` AS `regtd`,`tona`.`natds` AS `natds`,`orep`.`atvbd` AS `atvbd`,`orep`.`atved` AS `atved`,`epni`.`mtel1` AS `mtel1`,`epbi`.`delfg` AS `delfg` from ((((((`epbi` left join `orep` on(((`epbi`.`epnum` = `orep`.`epnum`) and (`orep`.`orgid` = 1000) and `orep`.`orgd` in (select `orgd`.`id` AS `id` from `orgd` where ((`orgd`.`orgid` = _utf8'1000') and (`orgd`.`delfg` = 0) and (`orgd`.`extk6` <> _utf8'1'))) and (`orep`.`delfg` = 0)))) left join `orgd` on(((`orep`.`usrct` = `orgd`.`usrct`) and (`orep`.`orgcd` = `orgd`.`orgcd`)))) left join `tona` on((`epbi`.`natin` = `tona`.`natin`))) left join `epst` on((`epbi`.`epysu` = `epst`.`epysu`))) left join `sbps` on((`epbi`.`polaf` = `sbps`.`polaf`))) left join `epni` on((`epbi`.`epnum` = `epni`.`epnum`))) where (`epbi`.`id` <> _latin1'4944') ;

-- ----------------------------
-- View structure for `view_inner_member`
-- ----------------------------
DROP VIEW IF EXISTS `view_inner_member`;
CREATE ALGORITHM=UNDEFINED DEFINER=`xxhk`@`10.10.38.47` SQL SECURITY DEFINER VIEW `view_inner_member` AS select `epbi`.`id` AS `id`,`epni`.`mtel1` AS `mtel1`,`epep`.`fstwd` AS `fstwd`,`epes`.`linum` AS `linum`,`epes`.`orni` AS `orniid`,`orep`.`orgd` AS `orgd` from (((((`epbi` join `epni`) join `orep`) join `orgd`) join `epep`) join `epes`) where ((`epbi`.`id` = `orep`.`epbi`) and (`orgd`.`id` = `orep`.`orgd`) and (`epbi`.`epnum` = `epni`.`epnum`) and (`epbi`.`id` = `epep`.`epbiid`) and (convert(`epbi`.`id` using utf8) = `epes`.`epbiid`) and (`orep`.`orgid` = 1000) and (`orep`.`delfg` = 0) and (`orgd`.`extk6` <> 1)) ;

-- ----------------------------
-- View structure for `view_ism_dd`
-- ----------------------------
DROP VIEW IF EXISTS `view_ism_dd`;
CREATE ALGORITHM=UNDEFINED DEFINER=`xxhk`@`%` SQL SECURITY DEFINER VIEW `view_ism_dd` AS select `epbi`.`epnum` AS `emp_code`,concat(`epbi`.`sname`,`epbi`.`mname`,`epbi`.`fname`) AS `emp_name`,`epni`.`mtel1` AS `phone`,`orep`.`orgcd` AS `dd_group_code`,`orgd`.`orgfd` AS `dd_group_name`,`orgd`.`orgid` AS `orgid`,`epbi`.`leadt` AS `leadt`,`epbi`.`delfg` AS `delfg` from (((`epbi` left join `orep` on(((`orep`.`epnum` = `epbi`.`epnum`) and (`orep`.`delfg` = 0) and `orep`.`orgd` in (select `orgd`.`id` AS `id` from `orgd` where (((`orgd`.`extk6` = _utf8'') or isnull(`orgd`.`extk6`)) and `orgd`.`orgid` in (select `orge`.`orgid` AS `orgid` from `orge` where (`orge`.`delfg` = _utf8'4')) and (`orgd`.`delfg` = _utf8'0')))))) left join `orgd` on(((`orep`.`usrct` = `orgd`.`usrct`) and (`orep`.`orgcd` = `orgd`.`orgcd`)))) left join `epni` on((convert(`epni`.`id` using utf8) = convert(`epbi`.`epniid` using utf8)))) where (`epbi`.`id` <> _latin1'4944') ;

-- ----------------------------
-- View structure for `view_ism_idst`
-- ----------------------------
DROP VIEW IF EXISTS `view_ism_idst`;
CREATE ALGORITHM=UNDEFINED DEFINER=`xxhk`@`%` SQL SECURITY DEFINER VIEW `view_ism_idst` AS select `idln`.`linid` AS `line_id`,`idln`.`lindc` AS `line_name`,`idln`.`linti` AS `linti`,`idst`.`orgcd` AS `orgcd`,`idst`.`staid` AS `staid`,`idst`.`stanb` AS `station_id`,ifnull(`idst`.`afcstanb`,_latin1'') AS `afcstanb`,`idst`.`stasf` AS `stasf`,`idst`.`stadc` AS `station_name`,`idst`.`delfg` AS `delfg` from (`idst` left join `idln` on((`idst`.`linid` = `idln`.`linid`))) where (`idst`.`stasf` = _utf8'0') ;

-- ----------------------------
-- View structure for `view_ism_member`
-- ----------------------------
DROP VIEW IF EXISTS `view_ism_member`;
CREATE ALGORITHM=UNDEFINED DEFINER=`xxhk`@`%` SQL SECURITY DEFINER VIEW `view_ism_member` AS select `epbi`.`id` AS `emp_id`,`epbi`.`epnum` AS `emp_code`,concat(`epbi`.`sname`,`epbi`.`mname`,`epbi`.`fname`) AS `emp_name`,`epni`.`mtel1` AS `phone`,`epni`.`egtp1` AS `egtp1`,`orep`.`orgcd` AS `org_code`,`orgd`.`orgfd` AS `org_name`,`orni`.`pstdc` AS `pstdc`,`orni`.`pstnm` AS `pstnm`,`epbi`.`leadt` AS `leadt`,`epbi`.`delfg` AS `delfg` from (((((`epbi` left join `orep` on(((`orep`.`epnum` = `epbi`.`epnum`) and (`orep`.`orgid` = 1000) and (`orep`.`delfg` = 0) and `orep`.`orgd` in (select `orgd`.`id` AS `id` from `orgd` where (((`orgd`.`extk6` = _utf8'') or isnull(`orgd`.`extk6`)) and (`orgd`.`orgid` = _utf8'1000') and (`orgd`.`delfg` = _utf8'0')))))) left join `orgd` on(((`orep`.`usrct` = `orgd`.`usrct`) and (`orep`.`orgcd` = `orgd`.`orgcd`)))) left join `epes` on((convert(`epbi`.`id` using utf8) = `epes`.`epbiid`))) left join `epni` on((convert(`epni`.`id` using utf8) = convert(`epbi`.`epniid` using utf8)))) left join `orni` on((convert(`epes`.`orni` using utf8) = `orni`.`id`))) where (`epbi`.`id` <> _latin1'4944') ;

-- ----------------------------
-- View structure for `view_ism_orgd`
-- ----------------------------
DROP VIEW IF EXISTS `view_ism_orgd`;
CREATE ALGORITHM=UNDEFINED DEFINER=`xxhk`@`localhost` SQL SECURITY DEFINER VIEW `view_ism_orgd` AS select `orgd`.`id` AS `id`,`orgd`.`orgid` AS `orgid`,`orgd`.`orgcd` AS `orgcd`,`orgd`.`orgsd` AS `orgsd`,`orgd`.`orgfd` AS `orgfd`,`orgd`.`orglv` AS `orglv`,`orgd`.`orgfi` AS `orgfi`,`orgd`.`orgfl` AS `orgfl`,`orgd`.`extk6` AS `extk6`,`orgd`.`speif` AS `speif`,`orgd`.`delfg` AS `delfg`,`orge`.`orgds` AS `orgds`,`orge`.`orgdf` AS `orgdf`,`orgd`.`ddid` AS `ddid`,`orgd`.`mark` AS `mark`,`orge`.`delfg` AS `delfgdd` from (`orgd` left join `orge` on((`orgd`.`orgid` = `orge`.`orgid`))) ;

-- ----------------------------
-- View structure for `view_ism_org_people`
-- ----------------------------
DROP VIEW IF EXISTS `view_ism_org_people`;
CREATE ALGORITHM=UNDEFINED DEFINER=`xxhk`@`localhost` SQL SECURITY DEFINER VIEW `view_ism_org_people` AS select concat(_utf8'y',cast(`orep`.`id` as char charset utf8)) AS `id`,`orep`.`orgcd` AS `orgcd`,`orep`.`epnum` AS `epnum`,`orep`.`delfg` AS `delfg` from `orep` union all select concat(_utf8'x',cast(`oreo`.`id` as char charset utf8)) AS `id`,`oreo`.`orgcd` AS `orgcd`,`oreo`.`epeid` AS `epeid`,`oreo`.`delfg` AS `delfg` from `oreo` ;

-- ----------------------------
-- View structure for `view_ism_people`
-- ----------------------------
DROP VIEW IF EXISTS `view_ism_people`;
CREATE ALGORITHM=UNDEFINED DEFINER=`xxhk`@`localhost` SQL SECURITY DEFINER VIEW `view_ism_people` AS select concat(_utf8'y',cast(`epbi`.`id` as char charset utf8)) AS `id`,`epbi`.`epnum` AS `epnum`,concat(`epbi`.`sname`,`epbi`.`fname`) AS `name`,ifnull(`orni`.`pstnm`,_utf8'') AS `pstnm`,ifnull(`epni`.`mtel1`,_utf8'') AS `mtel1`,ifnull(`epni`.`mtel2`,_utf8'') AS `mtel2`,ifnull(`orni`.`pstdc`,_utf8'') AS `pstdc`,_utf8'1' AS `sign`,`epbi`.`delfg` AS `delfg` from (((`epbi` left join `epes` on((`epbi`.`epnum` = `epes`.`epnum`))) left join `epni` on((`epbi`.`epnum` = `epni`.`epnum`))) left join `orni` on((convert(`epes`.`orni` using utf8) = `orni`.`id`))) union all select concat(_utf8'x',cast(`esbi`.`id` as char charset utf8)) AS `id`,`esbi`.`esnum` AS `epnum`,concat(`esbi`.`sname`,`esbi`.`fname`) AS `name`,ifnull(`esbs`.`pstnm`,_utf8'') AS `pstnm`,ifnull(`esni`.`mtel1`,_utf8'') AS `mtel1`,ifnull(`esni`.`mtel2`,_utf8'') AS `mtel2`,ifnull(`orni`.`pstdc`,_utf8'') AS `pstdc`,_utf8'0' AS `sign`,`esbi`.`delfg` AS `delfg` from (((`esbi` left join `esbs` on((`esbi`.`esnum` = `esbs`.`epnum`))) left join `esni` on((`esbi`.`esnum` = `esni`.`epnum`))) left join `orni` on((`esbs`.`pstnm` = `orni`.`pstnm`))) ;

-- ----------------------------
-- View structure for `view_membernew`
-- ----------------------------
DROP VIEW IF EXISTS `view_membernew`;
CREATE ALGORITHM=MERGE DEFINER=`xxhk`@`%` SQL SECURITY DEFINER VIEW `view_membernew` AS select `epbi`.`id` AS `id`,`epbi`.`usrct` AS `usrct`,`epbi`.`epnum` AS `epnum`,`epbi`.`epytp` AS `epytp`,`epbi`.`syuid` AS `syuid`,concat(`epbi`.`sname`,`epbi`.`mname`,`epbi`.`fname`) AS `name`,`epbi`.`natin` AS `natin`,`epbi`.`gendr` AS `gendr`,`epbi`.`epysu` AS `epysu`,`epbi`.`sptwk` AS `sptwk`,`epbi`.`yeagt` AS `yeagt`,`epbi`.`regtd` AS `regtd`,`epbi`.`polaf` AS `polaf`,`epbi`.`prewa` AS `prewa`,`epbi`.`ltwdt` AS `ltwdt`,`epbi`.`delfg` AS `delfg`,`epni`.`mtel1` AS `mtel1`,`epes`.`linum` AS `linum`,`epes`.`pstnt` AS `pstnt`,`orep`.`id` AS `id1`,`orgd`.`orgcd` AS `orgcd`,`orgd`.`orgsd` AS `orgsd`,`orgd`.`orgfd` AS `orgfd`,`orep`.`orgd` AS `orgd`,`epbi`.`leadt` AS `leadt`,`orni`.`pstdc` AS `pstdc`,`epep`.`fstwd` AS `fstwd`,`orni`.`pstnm` AS `pstnm`,`epes`.`id` AS `epes`,`epes`.`orni` AS `orni`,`epes`.`orni2` AS `orni2`,`epbi`.`epnum` AS `phProp`,NULL AS `orgd2`,`epbi`.`createMember` AS `createMember`,`epbi`.`createDate` AS `createDate`,`epbi`.`confirm` AS `confirm`,`epbi`.`conMember` AS `conMember`,`epbi`.`conDate` AS `conDate`,`epbi`.`updateMember` AS `updateMember`,`epbi`.`updateDate` AS `updateDate`,`orep`.`ncwaf` AS `ncwaf` from ((((((`epbi` left join `epes` on((`epbi`.`epnum` = `epes`.`epnum`))) left join `epep` on((`epbi`.`epnum` = `epep`.`epnum`))) left join `orep` on(((`orep`.`epnum` = `epbi`.`epnum`) and (`orep`.`orgid` = 1000) and (`orep`.`delfg` = 0) and `orep`.`orgd` in (select `orgd`.`id` AS `id` from `orgd` where (((`orgd`.`extk6` = _utf8'') or isnull(`orgd`.`extk6`)) and (`orgd`.`delfg` = _utf8'0')))))) left join `orgd` on(((`orep`.`usrct` = `orgd`.`usrct`) and (`orep`.`orgcd` = `orgd`.`orgcd`) and (`orgd`.`delfg` = _utf8'0')))) left join `orni` on((convert(`epes`.`orni` using utf8) = `orni`.`id`))) left join `epni` on((`epni`.`epnum` = `epbi`.`epnum`))) where (`epbi`.`id` <> _latin1'4944') ;

-- ----------------------------
-- View structure for `view_off_orep`
-- ----------------------------
DROP VIEW IF EXISTS `view_off_orep`;
CREATE ALGORITHM=UNDEFINED DEFINER=`xxhk`@`10.10.38.47` SQL SECURITY DEFINER VIEW `view_off_orep` AS select `orgd`.`id` AS `gid`,`orep`.`epbi` AS `gep` from (`orep` join `orgd`) where ((`orgd`.`id` = `orep`.`orgd`) and (`orep`.`orgid` = _utf8'1000') and (`orep`.`delfg` = _utf8'0') and (`orgd`.`extk6` <> _utf8'1')) ;

-- ----------------------------
-- View structure for `view_orgd`
-- ----------------------------
DROP VIEW IF EXISTS `view_orgd`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `view_orgd` AS select `orgd`.`id` AS `id`,`orgd`.`ddid` AS `ddid`,`orgd`.`orgid` AS `orgid`,(select `t`.`ddid` AS `ddid` from `orgd` `t` where (`t`.`orgcd` = `orgd`.`orgfi`)) AS `parentid`,`orgd`.`orgcd` AS `orgcd`,`orgd`.`orgsd` AS `orgsd`,`orgd`.`orglv` AS `orglv`,`orgd`.`orgfi` AS `orgfi`,`orgd`.`orgfl` AS `orgfl`,`orgd`.`delfg` AS `delfg` from `orgd` where `orgd`.`orgcd` in (select `orgd_1`.`orgcd` AS `orgcd` from `orgd` `orgd_1` where (`orgd_1`.`orgid` in (select `orge`.`orgid` AS `orgid` from `orge` where (`orge`.`delfg` = 4)) and (`orgd_1`.`extk6` <> 1))) ;

-- ----------------------------
-- View structure for `view_orgd_bk`
-- ----------------------------
DROP VIEW IF EXISTS `view_orgd_bk`;
CREATE ALGORITHM=UNDEFINED DEFINER=`xxhk`@`%` SQL SECURITY DEFINER VIEW `view_orgd_bk` AS select `orgd`.`id` AS `id`,`orgd`.`orgid` AS `orgid`,`orgd`.`orgcd` AS `orgcd`,`orgd`.`orgsd` AS `orgsd`,`orgd`.`orglv` AS `orglv`,`orgd`.`orgfi` AS `orgfi`,`orgd`.`orgfl` AS `orgfl`,`orgd`.`delfg` AS `delfg` from `orgd` where `orgd`.`orgcd` in (select `orgd_1`.`orgcd` AS `orgcd` from `orgd` `orgd_1` where (`orgd_1`.`orgid` in (select `orge`.`orgid` AS `orgid` from `orge` where (`orge`.`delfg` = 4)) and (`orgd_1`.`extk6` <> 1))) ;

-- ----------------------------
-- View structure for `view_orop`
-- ----------------------------
DROP VIEW IF EXISTS `view_orop`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `view_orop` AS select concat(`epbi`.`id`,_latin1'y') AS `id`,`epbi`.`epnum` AS `epnum`,concat(`epbi`.`sname`,`epbi`.`fname`) AS `name`,`epbi`.`delfg` AS `eDelfg`,`orni`.`pstnm` AS `pstnm`,`epni`.`mtel1` AS `mtel1`,ifnull(`orni`.`pstdc`,_utf8'') AS `pstsd`,ifnull(`epes`.`locto`,_utf8'') AS `locto`,ifnull(`epes`.`extnu`,_utf8'') AS `extnu`,concat(`orep`.`id`,_latin1'y') AS `orepid`,`orep`.`orgcd` AS `orgcd`,`orep`.`orgd` AS `orgdid`,`orgd`.`id` AS `g_deptid`,`orep`.`delfg` AS `oDelfg`,`orgd`.`orgsd` AS `orgsd`,`orgd`.`ddid` AS `d_deptid` from (((((`epbi` left join `orep` on((`epbi`.`epnum` = `orep`.`epnum`))) left join `orgd` on((`orep`.`orgd` = `orgd`.`id`))) left join `epes` on((`epbi`.`epnum` = `epes`.`epnum`))) left join `epni` on((`epbi`.`epnum` = `epni`.`epnum`))) left join `orni` on((convert(`epes`.`orni` using utf8) = `orni`.`id`))) where (`orep`.`orgd` in (select `orgd_1`.`id` AS `id_1` from `orgd` `orgd_1` where (`orgd_1`.`orgid` in (select `orge`.`orgid` AS `orgid` from `orge` where (`orge`.`delfg` = 4)) and (`orgd_1`.`extk6` <> 1) and (`orgd`.`delfg` = _utf8'0'))) and (`epni`.`mtel1` is not null) and (`orep`.`delfg` = _utf8'0')) union all select concat(`esbi`.`id`,'x') AS `id`,`esbi`.`esnum` AS `epnum`,concat(`esbi`.`sname`,`esbi`.`fname`) AS `name`,`esbi`.`delfg` AS `eDelfg`,`esbs`.`pstnm` AS `pstnm`,`esni`.`mtel1` AS `mtel1`,ifnull(`orni`.`pstdc`,_utf8'') AS `pstsd`,ifnull(`esbs`.`locto`,'') AS `locto`,ifnull(`esbs`.`extnu`,'') AS `extnu`,concat(`oreo`.`id`,_utf8'x') AS `orepid`,`oreo`.`orgcd` AS `orgcd`,`oreo`.`orgdid` AS `orgdid`,`orgd`.`id` AS `g_deptid`,`oreo`.`delfg` AS `oDelfg`,`orgd`.`orgsd` AS `orgsd`,`orgd`.`ddid` AS `d_deptid` from (((((`esbi` left join `oreo` on((`esbi`.`esnum` = `oreo`.`epeid`))) left join `orgd` on((`oreo`.`orgdid` = `orgd`.`id`))) left join `esbs` on((`esbi`.`esnum` = `esbs`.`epnum`))) left join `esni` on((`esbi`.`esnum` = `esni`.`epnum`))) left join `orni` on((`esbs`.`pstnm` = `orni`.`pstnm`))) where (`oreo`.`orgdid` in (select `orgd_1`.`id` AS `id_1` from `orgd` `orgd_1` where ((`orgd_1`.`delfg` = 0) and `orgd_1`.`orgid` in (select `orge`.`orgid` AS `orgid` from `orge` where (`orge`.`delfg` = 4)) and (`orgd_1`.`extk6` <> 1) and (`orgd`.`delfg` = _utf8'0'))) and (`esni`.`mtel1` is not null) and (`oreo`.`delfg` = _utf8'0')) ;

-- ----------------------------
-- View structure for `view_oropgb`
-- ----------------------------
DROP VIEW IF EXISTS `view_oropgb`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `view_oropgb` AS select `view_orop`.`id` AS `id`,`view_orop`.`epnum` AS `epnum`,`view_orop`.`name` AS `name`,`view_orop`.`pstsd` AS `pstsd`,`view_orop`.`mtel1` AS `mtel1`,`view_orop`.`locto` AS `locto`,`view_orop`.`extnu` AS `extnu`,`view_orop`.`eDelfg` AS `eDelfg`,group_concat(`view_orop`.`d_deptid`,',' separator ',') AS `d_deptidlist` from `view_orop` group by `view_orop`.`epnum` ;

-- ----------------------------
-- View structure for `view_orop_bk`
-- ----------------------------
DROP VIEW IF EXISTS `view_orop_bk`;
CREATE ALGORITHM=UNDEFINED DEFINER=`xxhk`@`%` SQL SECURITY DEFINER VIEW `view_orop_bk` AS select concat(`orep`.`id`,_latin1'y') AS `id`,`epbi`.`epnum` AS `epnum`,`orep`.`orgcd` AS `orgcd`,`orgd`.`id` AS `g_deptid`,`orep`.`delfg` AS `delfg`,`orgd`.`orgsd` AS `orgsd` from ((`epbi` left join `orep` on((`epbi`.`epnum` = `orep`.`epnum`))) left join `orgd` on((`orep`.`orgcd` = `orgd`.`orgcd`))) where (`orep`.`orgcd` in (select `orgd_1`.`orgcd` AS `orgcd` from `orgd` `orgd_1` where (`orgd_1`.`orgid` in (select `orge`.`orgid` AS `orgid` from `orge` where (`orge`.`delfg` = 4)) and (`orgd_1`.`extk6` <> 1))) and (`epbi`.`delfg` = 0)) union all select concat(`oreo`.`id`,_utf8'x') AS `id`,`esbi`.`esnum` AS `esnum`,`oreo`.`orgcd` AS `orgcd`,`orgd`.`id` AS `g_deptid`,`oreo`.`delfg` AS `delfg`,`orgd`.`orgsd` AS `orgsd` from ((`esbi` left join `oreo` on((`esbi`.`esnum` = `oreo`.`epeid`))) left join `orgd` on((`oreo`.`orgcd` = `orgd`.`orgcd`))) where (`oreo`.`orgcd` in (select `orgd_1`.`orgcd` AS `orgcd` from `orgd` `orgd_1` where ((`orgd_1`.`delfg` = 0) and `orgd_1`.`orgid` in (select `orge`.`orgid` AS `orgid` from `orge` where (`orge`.`delfg` = 4)))) and (`esbi`.`delfg` = 0)) ;

-- ----------------------------
-- View structure for `view_perinfor`
-- ----------------------------
DROP VIEW IF EXISTS `view_perinfor`;
CREATE ALGORITHM=UNDEFINED DEFINER=`xxhk`@`%` SQL SECURITY DEFINER VIEW `view_perinfor` AS select concat(`epbi`.`id`,_latin1'y') AS `id`,`epbi`.`epnum` AS `epnum`,concat(`epbi`.`sname`,`epbi`.`fname`) AS `name`,`epbi`.`delfg` AS `delfg`,`orni`.`pstnm` AS `pstnm`,`epni`.`mtel1` AS `mtel1`,`orni`.`pstdc` AS `pstsd`,`epes`.`locto` AS `locto`,`epes`.`extnu` AS `extnu` from (((`epbi` left join `epes` on((`epbi`.`epnum` = `epes`.`epnum`))) left join `epni` on((`epbi`.`epnum` = `epni`.`epnum`))) left join `orni` on((convert(`epes`.`orni` using utf8) = `orni`.`id`))) where (`epni`.`mtel1` is not null) union all select concat(`esbi`.`id`,_latin1'x') AS `id`,`esbi`.`esnum` AS `esnum`,concat(`esbi`.`sname`,`esbi`.`fname`) AS `name`,`esbi`.`delfg` AS `delfg`,`esbs`.`pstnm` AS `pstnm`,`esni`.`mtel1` AS `mtel1`,`orni`.`pstdc` AS `pstsd`,`esbs`.`locto` AS `locto`,`esbs`.`extnu` AS `extnu` from (((`esbi` left join `esbs` on((`esbi`.`esnum` = `esbs`.`epnum`))) left join `esni` on((`esbi`.`esnum` = `esni`.`epnum`))) left join `orni` on((`esbs`.`pstnm` = `orni`.`pstnm`))) where (`esni`.`mtel1` is not null) ;

-- ----------------------------
-- View structure for `view_tcks_cfg_member`
-- ----------------------------
DROP VIEW IF EXISTS `view_tcks_cfg_member`;
CREATE ALGORITHM=UNDEFINED DEFINER=`xxhk`@`%` SQL SECURITY DEFINER VIEW `view_tcks_cfg_member` AS select `epbi`.`epnum` AS `epnum`,concat(`epbi`.`sname`,`epbi`.`fname`) AS `ename`,`epbi`.`confirm` AS `confirmed`,`epbi`.`delfg` AS `delfg`,`epes`.`orni` AS `orni`,`epes`.`orni2` AS `orni2`,`epbi`.`photeState` AS `photeState`,`epbi`.`gendr` AS `gendr`,`epbi`.`syuid` AS `syuid` from (`epbi` left join `epes` on((`epbi`.`epnum` = `epes`.`epnum`))) union all select `esbi`.`esnum` AS `epnum`,concat(`esbi`.`sname`,`esbi`.`fname`) AS `ename`,_utf8'1' AS `confirmed`,`esbi`.`delfg` AS `delfg`,NULL AS `NULL`,NULL AS `NULL`,`esbi`.`photeState` AS `photeState`,`esbi`.`gendr` AS `gendr`,`esbi`.`syuid` AS `syuid` from `esbi` ;

-- ----------------------------
-- View structure for `view_tcks_cfg_org`
-- ----------------------------
DROP VIEW IF EXISTS `view_tcks_cfg_org`;
CREATE ALGORITHM=UNDEFINED DEFINER=`xxhk`@`%` SQL SECURITY DEFINER VIEW `view_tcks_cfg_org` AS select distinct `orgd`.`id` AS `id`,`orgd`.`orgid` AS `orge`,`orgd`.`orgcd` AS `orgCode`,`orgd`.`orgfd` AS `descr`,(select `t`.`id` AS `id` from `orgd` `t` where (`t`.`orgcd` = `orgd`.`orgfi`)) AS `parentId`,`orgd`.`delfg` AS `delfg`,`orgd`.`orglv` AS `orglv`,`orgd`.`extk6` AS `extk6` from `orgd` ;

-- ----------------------------
-- View structure for `view_tcks_cfg_org_member`
-- ----------------------------
DROP VIEW IF EXISTS `view_tcks_cfg_org_member`;
CREATE ALGORITHM=UNDEFINED DEFINER=`xxhk`@`%` SQL SECURITY DEFINER VIEW `view_tcks_cfg_org_member` AS select concat(_utf8'p',cast(`orep`.`id` as char charset utf8)) AS `id`,`orep`.`orgcd` AS `orgcd`,`orep`.`epnum` AS `epnum`,`orep`.`delfg` AS `delfg` from `orep` union all select concat(_utf8'o',cast(`oreo`.`id` as char charset utf8)) AS `id`,`oreo`.`orgcd` AS `orgcd`,`oreo`.`epeid` AS `epeid`,`oreo`.`delfg` AS `delfg` from `oreo` ;

-- ----------------------------
-- View structure for `view_wwsms_asset_devcl`
-- ----------------------------
DROP VIEW IF EXISTS `view_wwsms_asset_devcl`;
CREATE ALGORITHM=UNDEFINED DEFINER=`xxhk`@`%` SQL SECURITY DEFINER VIEW `view_wwsms_asset_devcl` AS select concat(_utf8'xt',cast(`idsp`.`id` as char charset utf8)) AS `id`,`idsp`.`pfscd` AS `code`,`idsp`.`pfscd` AS `fullcode`,`idsp`.`pfssd` AS `descr`,_utf8'0' AS `lv`,NULL AS `parent`,NULL AS `pcode`,`idsp`.`delfg` AS `delfg` from `idsp` union select concat(_utf8'zxt',cast(`e`.`id` as char charset utf8)) AS `id`,`e`.`eqpcd` AS `eqpcd`,concat(`s`.`pfscd`,`e`.`eqpcd`) AS `fullcode`,`e`.`eqpsd` AS `eqpsd`,_utf8'1' AS `lv`,concat(_utf8'xt',cast(`e`.`idspid` as char charset utf8)) AS `parent`,`s`.`pfscd` AS `pfscd`,`e`.`delfg` AS `delfg` from (`idep` `e` join `idsp` `s`) where (`e`.`idspid` = `s`.`id`) union select concat(_utf8's',cast(`s`.`id` as char charset utf8)) AS `id`,`s`.`eqscd` AS `eqscd`,concat(`i`.`pfscd`,`p`.`eqpcd`,`s`.`eqscd`) AS `fullcode`,`s`.`eqssd` AS `eqssd`,_utf8'2' AS `lv`,concat(_utf8'zxt',cast(`p`.`id` as char charset utf8)) AS `parent`,concat(`i`.`pfscd`,`p`.`eqpcd`) AS `pcode`,`s`.`delfg` AS `delfg` from ((`idep` `p` join `ides` `s`) join `idsp` `i`) where ((`s`.`idepid` = `p`.`id`) and (`i`.`id` = `p`.`idspid`)) ;

-- ----------------------------
-- View structure for `view_wwsms_cfg_org`
-- ----------------------------
DROP VIEW IF EXISTS `view_wwsms_cfg_org`;
CREATE ALGORITHM=UNDEFINED DEFINER=`xxhk`@`%` SQL SECURITY DEFINER VIEW `view_wwsms_cfg_org` AS select concat(convert(`idst`.`orgcd` using utf8),`idst`.`staid`) AS `orgCode`,`idst`.`stadc` AS `stadc`,concat(`idst`.`lindc`,_utf8'/',`idst`.`stadc`) AS `descr`,_utf8'3' AS `orglv`,_utf8'1' AS `speif`,`idst`.`orgcd` AS `orgfi`,_utf8'2' AS `orgfl`,_utf8'' AS `orprm`,_utf8'99991230' AS `atved`,_utf8'20150101' AS `atvbd`,_utf8'1400' AS `orge`,`idst`.`delfg` AS `delfg` from `idst` where ((`idst`.`stasf` = 0) and (`idst`.`delfg` not in (_utf8'1',_utf8'4'))) ;

-- ----------------------------
-- View structure for `yqxt_admt`
-- ----------------------------
DROP VIEW IF EXISTS `yqxt_admt`;
CREATE ALGORITHM=UNDEFINED DEFINER=`xxhk`@`%` SQL SECURITY DEFINER VIEW `yqxt_admt` AS select `orgd`.`orgcd` AS `orgcd`,`orgd`.`orgsd` AS `orgsd`,`orgd`.`orgfd` AS `orgfd`,`orgd`.`orglv` AS `orglv`,`orgd`.`speif` AS `speif`,`orgd`.`orgfi` AS `orgfi`,`orgd`.`orgfl` AS `orgfl`,`orgd`.`orprm` AS `orprm`,`orgd`.`atved` AS `atved`,`orgd`.`atvbd` AS `atvbd`,`orgd`.`orgid` AS `orgid`,`orgd`.`delfg` AS `delfg` from ((`orgd` join `orge` on((`orgd`.`orgid` = `orge`.`orgid`))) join `ortp` on((`orge`.`orgtp` = `ortp`.`orgtp`))) where ((`orge`.`delfg` <> _utf8'1') and (`ortp`.`delfg` = _utf8'0') and (`ortp`.`orgtp` = _utf8'0100') and (`orgd`.`delfg` = _utf8'0') and ((`orgd`.`extk6` = _utf8'') or isnull(`orgd`.`extk6`))) union all select concat(convert(`idst`.`orgcd` using utf8),`idst`.`staid`) AS `CONCAT(orgcd,staid)`,`idst`.`stadc` AS `stadc`,concat(`idst`.`lindc`,_utf8'/',`idst`.`stadc`) AS `CONCAT(lindc,'/',stadc)`,_utf8'3' AS `3`,_utf8'1' AS `1`,`idst`.`orgcd` AS `orgcd`,_utf8'2' AS `2`,_utf8'' AS `a`,_utf8'99991230' AS `99991230`,_utf8'20150101' AS `20150101`,_utf8'1000' AS `1000`,`idst`.`delfg` AS `delfg` from `idst` where ((`idst`.`stasf` = 0) and (`idst`.`delfg` not in (_utf8'1',_utf8'4'))) ;

-- ----------------------------
-- View structure for `yqxt_vsms`
-- ----------------------------
DROP VIEW IF EXISTS `yqxt_vsms`;
CREATE ALGORITHM=UNDEFINED DEFINER=`xxhk`@`%` SQL SECURITY DEFINER VIEW `yqxt_vsms` AS select `epbi`.`epnum` AS `epnum`,concat(`epbi`.`sname`,`epbi`.`mname`,`epbi`.`fname`) AS `EPNAM`,`idln`.`lindc` AS `lindc`,`orep`.`orgcd` AS `orgcd`,`orgd`.`orgsd` AS `orgsd`,`epbi`.`station` AS `station`,replace(replace(`epbi`.`gendr`,0,_utf8'女'),1,_utf8'男') AS `gendr`,`orni`.`pstdc` AS `pstdc`,`epbi`.`idcad` AS `idcad`,NULL AS `email`,NULL AS `ftype`,`epep`.`fstwd` AS `fstwd`,`epbi`.`regtd` AS `regtd`,`orep`.`ncwaf` AS `ncwaf`,`epbi`.`leadt` AS `leadt`,NULL AS `ttype`,`epes`.`epcpn` AS `epcpn`,`epbi`.`delfg` AS `delfg` from (((((((`epbi` left join `orep` on(((`orep`.`epnum` = `epbi`.`epnum`) and (`orep`.`orgid` = 1000) and (`orep`.`delfg` = 0) and `orep`.`orgd` in (select `orgd`.`id` AS `id` from `orgd` where (((`orgd`.`extk6` = _utf8'') or isnull(`orgd`.`extk6`)) and (`orgd`.`orgid` = _utf8'1000') and (`orgd`.`delfg` = _utf8'0')))))) left join `orgd` on(((`orep`.`usrct` = `orgd`.`usrct`) and (`orep`.`orgcd` = `orgd`.`orgcd`)))) left join `epst` on((`epbi`.`epysu` = `epst`.`epysu`))) left join `epes` on((convert(`epbi`.`id` using utf8) = `epes`.`epbiid`))) left join `orni` on((convert(`epes`.`orni` using utf8) = `orni`.`id`))) left join `epep` on((`epep`.`epbiid` = `epbi`.`id`))) left join `idln` on((`epes`.`linum` = `idln`.`linid`))) where (`epbi`.`id` <> _latin1'4944') union all select `esbi`.`esnum` AS `epnum`,concat(`esbi`.`sname`,`esbi`.`mname`,`esbi`.`fname`) AS `EPNAM`,NULL AS `lindc`,`oreo`.`orgcd` AS `orgcd`,`orgd`.`orgsd` AS `orgsd`,NULL AS `station`,replace(replace(`esbi`.`gendr`,0,_utf8'女'),1,_utf8'男') AS `gendr`,NULL AS `pstdc`,`esbi`.`idcad` AS `idcad`,NULL AS `email`,NULL AS `ftype`,NULL AS `fstwd`,NULL AS `regtd`,NULL AS `ncwaf`,NULL AS `leadt`,NULL AS `ttype`,NULL AS `epcpn`,`esbi`.`delfg` AS `delfg` from (((`esbi` left join `oreo` on(((`oreo`.`epeid` = `esbi`.`esnum`) and (`oreo`.`delfg` = 0) and `oreo`.`orgdid` in (select `orgd`.`id` AS `id` from `orgd` where (((`orgd`.`extk6` = _utf8'') or isnull(`orgd`.`extk6`)) and (`orgd`.`orgid` = _utf8'1000') and (`orgd`.`delfg` = _utf8'0')))))) left join `orgd` on(((`oreo`.`usrct` = `orgd`.`usrct`) and (`oreo`.`orgcd` = `orgd`.`orgcd`)))) left join `epst` on((`esbi`.`epysu` = `epst`.`epysu`))) where (`esbi`.`esnum` = _utf8'000132') ;
DROP TRIGGER IF EXISTS `t_afterinsert_on_orni`;
DELIMITER ;;
CREATE TRIGGER `t_afterinsert_on_orni` AFTER INSERT ON `orni` FOR EACH ROW BEGIN	
set @content1  =CONCAT('增加岗位增加，岗位编码为',new.pstnm);	
set @content2  =CONCAT('增加岗位增加，岗位描述为',new.pstdc);		
insert into fed_tosend(date,time,content,state,type,userid,partyid,status,inserttime,senttime) 	
values('','',@content2,1,'增加岗位编码',204715,'','notsent',date_add(NOW(), interval 5 minute),''),	
('','',@content1,1,'增加岗位编码',204715,'','notsent',date_add(NOW(), interval 5 minute),''),	 
('','',@content2,1,'增加岗位编码',200390,'','notsent',date_add(NOW(), interval 5 minute),''),	
('','',@content1,1,'增加岗位编码',200390,'','notsent',date_add(NOW(), interval 5 minute),''),	
('','',@content2,1,'增加岗位编码',201582,'','notsent',date_add(NOW(), interval 5 minute),''),	
('','',@content1,1,'增加岗位编码',201582,'','notsent',date_add(NOW(), interval 5 minute),''),
('','',@content2,1,'增加岗位编码',200589,'','notsent',date_add(NOW(), interval 5 minute),''),	
('','',@content1,1,'增加岗位编码',200589,'','notsent',date_add(NOW(), interval 5 minute),''),	 
('','',@content2,1,'增加岗位编码',203759,'','notsent',date_add(NOW(), interval 5 minute),''),	
('','',@content1,1,'增加岗位编码',203759,'','notsent',date_add(NOW(), interval 5 minute),'');	
	
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `t_afterupdate_on_orni`;
DELIMITER ;;
CREATE TRIGGER `t_afterupdate_on_orni` AFTER UPDATE ON `orni` FOR EACH ROW BEGIN	
	
	
if(new.delfg = '1')	
    then 	
set @content  =CONCAT('岗位状态更新，岗位编码为',new.pstnm,'有效岗位被置无效');	
end if;	
 if(new.delfg = '0')	
    then 	
 set @content =CONCAT('岗位状态更新，岗位编码为',new.pstnm,'无效岗位被置有效');	
end if;	
insert into fed_tosend(date,time,content,state,type,userid,partyid,status,inserttime,senttime) 	
values('','',@content,1,'更新岗位状态',204715,'','notsent',date_add(NOW(), interval 5 minute),''),	
('','',@content,1,'更新岗位状态',200390,'','notsent',date_add(NOW(), interval 5 minute),''),	
('','',@content,1,'更新岗位状态',201582,'','notsent',date_add(NOW(), interval 5 minute),''),	
('','',@content,1,'更新岗位状态',200589,'','notsent',date_add(NOW(), interval 5 minute),''),	
('','',@content,1,'更新岗位状态',203759,'','notsent',date_add(NOW(), interval 5 minute),'');	
	
END
;;
DELIMITER ;