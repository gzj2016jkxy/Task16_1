
DROP DATABASE IF EXISTS `task15_book`;
CREATE DATABASE `task15_book` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

USE `task15_book`;

DROP TABLE IF EXISTS `bookinfo`;	
CREATE TABLE `bookinfo` (
	`id` int(11) NOT NULL auto_increment,			
	`isbn` varchar(13) NOT NULL ,					
	`typeid` int(11) NOT NULL,						
	`bookname` varchar(100) NOT NULL,				
	`writer` varchar(30) NOT NULL,					
	`translater` varchar(30) DEFAULT NULL,			
	`publisher` varchar(50) NOT NULL,				
	`date` varchar(40) NOT NULL,					
	`price` FLOAT NOT NULL,							
	PRIMARY KEY (`id`)								
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '图书信息表';

DROP TABLE IF EXISTS `booktype`;	
CREATE TABLE `booktype` (
	`id` int(11) NOT NULL auto_increment,			
	`typename` varchar(20) NOT NULL,					
	PRIMARY KEY (`id`)								
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '图书类别表';
	
DROP TABLE IF EXISTS `idcard`;	
CREATE TABLE `idcard` (
	`id` int(11) NOT NULL auto_increment,			
	`typename` varchar(20) NOT NULL,				
	PRIMARY KEY (`id`)								
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '证件类型表';

DROP TABLE IF EXISTS `readerinfo`;	
CREATE TABLE `readerinfo` (
	`id` int(11) NOT NULL auto_increment,			
	`name` varchar(30) NOT NULL,					
	`sex` varchar(2) NOT NULL,						
	`age` int(11) NOT NULL,							
	`idcardtype` int(11) NOT NULL,					
	`idcardno` varchar(30) NOT NULL,				
	`date` varchar(40) NOT NULL,					
	`maxnum` int(11) NOT NULL,						
	`tel` varchar(15) NOT NULL,						
	`keepmoney` FLOAT NOT NULL,						
	`zy` varchar(50) NOT NULL,						
	PRIMARY KEY (`id`)								
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '读者信息表';


DROP TABLE IF EXISTS `admin`;	
CREATE TABLE `admin` (
	`id` int(11) NOT NULL auto_increment,			
	`username` varchar(30) NOT NULL,				
	`password` varchar(30) NOT NULL,				
	`mail` varchar(30) NOT NULL,					
	PRIMARY KEY (`id`)								
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '管理员信息表';
	
	
insert into admin values(1,'admin','admin','123@456.com');

	
insert into booktype values(1,'Web前端');
insert into booktype values(2,'编程语言');
insert into booktype values(3,'操作系统');
insert into booktype values(4,'手机开发');


insert into idcard values(1,'学生证');
insert into idcard values(2,'身份证');


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


insert into readerinfo values(1,'王五','男',20,1,'10086','2016-08-1 09:43:22',5,'13812345678',100,'学生');
insert into readerinfo values(2,'赵六','男',25,2,'10086123456789','2016-08-1 09:43:22',10,'13887654321',500,'工程师');

