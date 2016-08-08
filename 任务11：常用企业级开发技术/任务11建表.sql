------------------------------------------------------------
--建立数据库task11_vip
------------------------------------------------------------
DROP DATABASE IF EXISTS `task11_vip`;
CREATE DATABASE `task11_vip` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

USE `task11_vip`;

------------------------------------------------------------
--VIP表：用来存放VIP用户的详细信息
------------------------------------------------------------
DROP TABLE IF EXISTS `vip`;
CREATE TABLE `vip` (
	`vipId` int(11) NOT NULL auto_increment,		--VIP编号
	`joinTime` date default NULL,					--入会时间
	`name` varchar(20) default NULL,				--姓名
	`age` int(11) default NULL,						--年龄
	`profession` varchar(20) default NULL,			--成分
	PRIMARY KEY (`vipId`)							--主键
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = 'VIP用户的详细信息表';

------------------------------------------------------------
--commodity表：用来存放商品的详细信息
------------------------------------------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity` (
	`commodityId` int(11) NOT NULL auto_increment,	--商品编号
	`commodityName` varchar(30) default NULL,		--商品名称
	`price` decimal(10,2) default NULL,				--商品价格
	`agio` decimal(4,3) default NULL,				--商品折扣
	PRIMARY KEY (`commodityId`)						--主键
	) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT = '商品的详细信息表';

------------------------------------------------------------
--consume表：用来存放VIP用户购物的详细信息
------------------------------------------------------------
DROP TABLE IF EXISTS `consume`;
CREATE TABLE `consume` (
	`consumeId` int(11) NOT NULL auto_increment,	--消费ID
	`vipid` int(11) default NULL,					--VIP编号	
	`commodityId` int(11) default NULL,				--商品编号	
	PRIMARY KEY (`consumeId`),						--主键
	KEY `vipid` (`vipid`),
	KEY `commodityId` (`commodityId`),
	CONSTRAINT `consume_ibfk_2` FOREIGN KEY (`commodityId`) REFERENCES
	`commodity` (`commodityId`),
	CONSTRAINT `consume_ibfk_1` FOREIGN KEY (`vipid`) REFERENCES `vip`
	(`vipId`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = 'VIP用户购物的详细信息表';

------------------------------------------------------------
--user表：用来存放管理用户信息
------------------------------------------------------------
DROP TABLE IF EXISTS `user`;	
CREATE TABLE `user` (
	`username` varchar(20) NOT NULL default '',		--用户名
	`password` varchar(20) default NULL,			--用户口令
	`quanxian` int(11) default NULL,				--用户权限
	PRIMARY KEY (`username`)						--主键
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '管理用户信息表';

INSERT INTO `user` VALUES ('admin','admin',1);
INSERT INTO `user` VALUES ('123','123',0);

INSERT INTO `vip` VALUES (1,'2016-04-22','小刘',30,'工程师');
INSERT INTO `vip` VALUES (2,'2016-04-22','张三',50,'评论员');
INSERT INTO `vip` VALUES (3,'2016-04-22','李四',21,'程序员');

INSERT INTO `commodity` VALUES (1,'苹果',2.3,0.8);
INSERT INTO `commodity` VALUES (2,'橘子',2.5,0.7);
INSERT INTO `commodity` VALUES (3,'梨',2.1,0.9);

INSERT INTO `consume` VALUES (1,1,1);
INSERT INTO `consume` VALUES (2,1,2);
INSERT INTO `consume` VALUES (3,1,3);
INSERT INTO `consume` VALUES (4,2,1);
INSERT INTO `consume` VALUES (5,2,2);
INSERT INTO `consume` VALUES (6,2,3);
INSERT INTO `consume` VALUES (7,3,1);
INSERT INTO `consume` VALUES (8,3,2);
INSERT INTO `consume` VALUES (9,3,3);



	
	
