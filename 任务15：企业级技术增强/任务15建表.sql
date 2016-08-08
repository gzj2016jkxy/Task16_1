------------------------------------------------------------
--建立数据库task15_book
------------------------------------------------------------
DROP DATABASE IF EXISTS `task15_book`;
CREATE DATABASE `task15_book` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

USE `task15_book`;

------------------------------------------------------------
--图书信息表bookinfo
------------------------------------------------------------
DROP TABLE IF EXISTS `bookinfo`;	
CREATE TABLE `bookinfo` (
	`id` int(11) NOT NULL auto_increment,			--自动编号
	`isbn` varchar(13) NOT NULL ,					--国际标准书号
	`typeid` int(11) NOT NULL,						--图书类型id	
	`bookname` varchar(100) NOT NULL,				--书名
	`writer` varchar(30) NOT NULL,					--作者	
	`translater` varchar(30) DEFAULT NULL,			--译者	
	`publisher` varchar(50) NOT NULL,				--出版社	
	`date` varchar(40) NOT NULL,					--出版日期	
	`price` FLOAT NOT NULL,							--价格	
	PRIMARY KEY (`id`)								--主键
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '图书信息表';

------------------------------------------------------------
--图书类别表booktype
------------------------------------------------------------
DROP TABLE IF EXISTS `booktype`;	
CREATE TABLE `booktype` (
	`id` int(11) NOT NULL auto_increment,			--自动编号
	`typename` varchar(20) NOT NULL,				--图书类型	
	PRIMARY KEY (`id`)								--主键
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '图书类别表';

------------------------------------------------------------
--证件类型表idcard
------------------------------------------------------------
DROP TABLE IF EXISTS `idcard`;	
CREATE TABLE `idcard` (
	`id` int(11) NOT NULL auto_increment,			--自动编号
	`typename` varchar(20) NOT NULL,				--证件类型
	PRIMARY KEY (`id`)								--主键
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '证件类型表';

------------------------------------------------------------
--读者信息表readerinfo
------------------------------------------------------------
DROP TABLE IF EXISTS `readerinfo`;	
CREATE TABLE `readerinfo` (
	`id` int(11) NOT NULL auto_increment,			--自动编号
	`name` varchar(30) NOT NULL,					--姓名	
	`sex` varchar(2) NOT NULL,						--性别	
	`age` int(11) NOT NULL,							--年龄	
	`idcardtype` int(11) NOT NULL,					--证件类型	
	`idcardno` varchar(30) NOT NULL,				--证件号码	
	`date` varchar(40) NOT NULL,					--办证日期	
	`maxnum` int(11) NOT NULL,						--最大可借书量	
	`tel` varchar(15) NOT NULL,						--电话号码	
	`keepmoney` FLOAT NOT NULL,						--押金	
	`zy` varchar(50) NOT NULL,						--职业	
	PRIMARY KEY (`id`)								--主键
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '读者信息表';

------------------------------------------------------------
--管理员信息表admin
------------------------------------------------------------
DROP TABLE IF EXISTS `admin`;	
CREATE TABLE `admin` (
	`id` int(11) NOT NULL auto_increment,			--自动编号
	`username` varchar(30) NOT NULL,				--用户名
	`password` varchar(30) NOT NULL,				--密码
	`mail` varchar(30) NOT NULL,					--邮箱
	PRIMARY KEY (`id`)								--主键
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '管理员信息表';

------------------------------------------------------------
--管理员信息表admin插入一条记录
------------------------------------------------------------	
insert into admin values(1,'admin','admin','123@456.com');

------------------------------------------------------------
--图书类别表booktype插入记录
------------------------------------------------------------	
insert into booktype values(1,'Web前端');
insert into booktype values(2,'编程语言');
insert into booktype values(3,'操作系统');
insert into booktype values(4,'手机开发');


------------------------------------------------------------
--证件类型表idcard插入记录
------------------------------------------------------------	
insert into idcard values(1,'学生证');
insert into idcard values(2,'身份证');

------------------------------------------------------------
--图书信息表bookinfo插入记录
------------------------------------------------------------
insert into bookinfo values(1,'9787807423501',1,'HTML 5 简介','张三1','李四1','旭日出版社','2010-08-1 09:43:22',35);
insert into bookinfo values(2,'9787807423502',1,'CSS3 简介','张三2','李四2','旭日出版社','2010-08-1 09:43:22',35);
insert into bookinfo values(3,'9787807423503',1,'javascript 简介','张三3','李四3','旭日出版社','2010-08-1 09:43:22',35);
insert into bookinfo values(4,'9787807423504',1,'jQuery 简介','张三4','李四4','旭日出版社','2010-08-1 09:43:22',35);
insert into bookinfo values(5,'9787807423505',1,'Bootstrap 简介','张三5','李四5','旭日出版社','2010-08-1 09:43:22',35);
insert into bookinfo values(6,'9787807423506',1,'jQuery UI 简介','张三6','李四6','旭日出版社','2010-08-1 09:43:22',35);
insert into bookinfo values(7,'9787807423507',2,'Java 简介','张三7','李四7','旭日出版社','2010-08-1 09:43:22',35);
insert into bookinfo values(8,'9787807423508',2,'C# 简介','张三8','李四8','旭日出版社','2010-08-1 09:43:22',35);
insert into bookinfo values(9,'9787807423509',2,'PHP 简介','张三9','李四9','旭日出版社','2010-08-1 09:43:22',35);
insert into bookinfo values(10,'9787807423510',3,'linux 简介','张三10','李四10','旭日出版社','2010-08-1 09:43:22',35);
insert into bookinfo values(11,'9787807423511',3,'Windows操作系统','张三11','李四11','旭日出版社','2010-08-1 09:43:22',35);
insert into bookinfo values(12,'9787807423512',4,'Android 简介','张三12','李四12','旭日出版社','2010-08-1 09:43:22',35);
insert into bookinfo values(13,'9787807423513',4,'Android 系统架构','张三13','李四13','旭日出版社','2010-08-1 09:43:22',35);
insert into bookinfo values(14,'9787807423514',4,'iOS 简介','张三14','李四14','旭日出版社','2010-08-1 09:43:22',35);
insert into bookinfo values(15,'9787807423515',4,'Swift','张三15','李四15','旭日出版社','2010-08-1 09:43:22',35);

------------------------------------------------------------
--读者信息表readerinfo插入记录
------------------------------------------------------------
insert into readerinfo values(1,'王五','男',20,1,'10086','2016-08-1 09:43:22',5,'13812345678',100,'学生');
insert into readerinfo values(2,'赵六','男',25,2,'10086123456789','2016-08-1 09:43:22',10,'13887654321',500,'工程师');

