USE `tang_poetry`;

------------------------------------------------------------
--users表：用来存放管理用户信息
------------------------------------------------------------
DROP TABLE IF EXISTS `users`;	
CREATE TABLE `users` (
	`userid` int(11) NOT NULL auto_increment,		--用户ID
	`username` varchar(20) NOT NULL default '',		--用户名
	`password` varchar(20) default NULL,			--用户口令	
	PRIMARY KEY (`userid`)							--主键
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '用户信息表';
	
------------------------------------------------------------
--collection表：用来存放用户收集的诗集ID
------------------------------------------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection` (
	`collectionid` int(11) NOT NULL auto_increment,	--收藏ID
	`userid` int(11) default NULL,					--用户ID	
	`id` int(11) default NULL,						--诗集ID	
	PRIMARY KEY (`collectionid`)					--主键	
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '用户收集诗集表';

INSERT INTO `users` VALUES (1,'123','123');
INSERT INTO `users` VALUES (2,'admin','admin');

INSERT INTO `collection` VALUES (1,1,1);
INSERT INTO `collection` VALUES (2,1,2);
INSERT INTO `collection` VALUES (3,1,3);
INSERT INTO `collection` VALUES (4,2,1);
INSERT INTO `collection` VALUES (5,2,2);
INSERT INTO `collection` VALUES (6,2,3);
