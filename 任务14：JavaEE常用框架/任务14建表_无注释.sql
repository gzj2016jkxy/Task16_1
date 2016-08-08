
DROP DATABASE IF EXISTS `task14_blog`;
CREATE DATABASE `task14_blog` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

USE `task14_blog`;


DROP TABLE IF EXISTS `tab_artile`;	
CREATE TABLE `tab_artile` (
	`id` int(11) NOT NULL auto_increment,			
	`Aclass` int(11) NOT NULL ,						
	`Atitle` varchar(50) NOT NULL,					
	`Acontent` varchar(5000) default NULL,			
	`Adate` varchar(40) NOT NULL,					
	PRIMARY KEY (`id`)								
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '博文信息表';


DROP TABLE IF EXISTS `tab_artitle_class`;	
CREATE TABLE `tab_artitle_class` (
	`id` int(11) NOT NULL auto_increment,			
	`Acname` varchar(50) NOT NULL,					
	`Acdate` varchar(40) NOT NULL,					
	PRIMARY KEY (`id`)								
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '博文类别信息表';

DROP TABLE IF EXISTS `tab_article_commend`;	
CREATE TABLE `tab_article_commend` (
	`id` int(11) NOT NULL auto_increment,			
	`Cid` int(11) NOT NULL ,						
	`Cname` varchar(50) default '游客',				
	`Ccontent` varchar(200) default NULL,			
	`Cdate` varchar(40) NOT NULL,					
	PRIMARY KEY (`id`)								
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '博文评论信息表';


DROP TABLE IF EXISTS `tab_manager`;	
CREATE TABLE `tab_manager` (
	`id` int(11) NOT NULL auto_increment,			
	`Mname` varchar(50) NOT NULL,					
	`Mpasswd` varchar(50) NOT NULL,					
	PRIMARY KEY (`id`)								
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '管理员信息表';


DROP TABLE IF EXISTS `tab_photo`;	
CREATE TABLE `tab_photo` (
	`id` int(11) NOT NULL auto_increment,			
	`Pclass` int(11) NOT NULL ,						
	`Pname` varchar(50) NOT NULL,					
	`Ppic` varchar(50) default NULL,				
	`Pinfo` varchar(100) default NULL,				
	`Pdate` varchar(40) NOT NULL,					
	PRIMARY KEY (`id`)								
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '照片信息表';


DROP TABLE IF EXISTS `tab_photo_class`;	
CREATE TABLE `tab_photo_class` (
	`id` int(11) NOT NULL auto_increment,			
	`Pcname` varchar(50) NOT NULL,		
	`Pcdate` varchar(40) NOT NULL,					
	PRIMARY KEY (`id`)								
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '照片类别信息表';



insert into tab_manager values(1,'admin','admin');


insert into tab_artitle_class values(1,'Web前端','2016-07-18 09:43:22');
insert into tab_artitle_class values(2,'编程语言','2016-07-18 09:43:22');
insert into tab_artitle_class values(3,'操作系统','2016-07-18 09:43:22');
insert into tab_artitle_class values(4,'手机开发','2016-07-18 09:43:22');

insert into tab_article_commend values(1,1,'游客','感谢博主分享！','2016-07-18 09:43:22');
insert into tab_article_commend values(2,1,'游客','感谢博主分享！','2016-07-18 09:43:22');

insert into tab_artile values(1,1,'HTML 5 简介',
	'HTML5 将成为 HTML、XHTML 以及 HTML DOM 的新标准。HTML 的上一个版本诞生于 1999 年。自从那以后，Web 世界已经经历了巨变。HTML5 仍处于完善之中。然而，大部分现代浏览器已经具备了某些 HTML5 支持。',
	'2016-07-18 09:43:22');
insert into tab_artile values(2,1,'CSS3 简介',
	'CSS即层叠样式表（Cascading StyleSheet）。 在网页制作时采用层叠样式表技术，可以有效地对页面的布局、字体、颜色、背景和其它效果实现更加精确的控制。 只要对相应的代码做一些简单的修改，就可以改变同一页面的不同部分，或者页数不同的网页的外观和格式。CSS3是CSS技术的升级版本，CSS3语言开发是朝着模块化发展的。',
	'2016-07-18 09:43:22');
insert into tab_artile values(3,1,'javascript 简介',
	'JavaScript一种直译式脚本语言，是一种动态类型、弱类型、基于原型的语言，内置支持类型。它的解释器被称为JavaScript引擎，为浏览器的一部分，广泛用于客户端的脚本语言，最早是在HTML（标准通用标记语言下的一个应用）网页上使用，用来给HTML网页增加动态功能。',
	'2016-07-18 09:43:22');
insert into tab_artile values(4,1,'jQuery 简介',
	'JQuery是继prototype之后又一个优秀的Javascript库。它是轻量级的js库 ，它兼容CSS3，还兼容各种浏览器（IE 6.0+, FF 1.5+, Safari 2.0+, Opera 9.0+），jQuery2.0及后续版本将不再支持IE6/7/8浏览器。jQuery使用户能更方便地处理HTML（标准通用标记语言下的一个应用）、events、实现动画效果，并且方便地为网站提供AJAX交互。jQuery还有一个比较大的优势是，它的文档说明很全，而且各种应用也说得很详细，同时还有许多成熟的插件可供选择。jQuery能够使用户的html页面保持代码和html内容分离，也就是说，不用再在html里面插入一堆js来调用命令了，只需要定义id即可。',
	'2016-07-18 09:43:22');
insert into tab_artile values(5,1,'Bootstrap 简介',
	'Bootstrap，来自 Twitter，是目前很受欢迎的前端框架。Bootstrap 是基于 HTML、CSS、JAVASCRIPT 的，它简洁灵活，使得 Web 开发更加快捷。它由Twitter的设计师Mark Otto和Jacob Thornton合作开发，是一个CSS/HTML框架。Bootstrap提供了优雅的HTML和CSS规范，它即是由动态CSS语言Less写成。Bootstrap一经推出后颇受欢迎，一直是GitHub上的热门开源项目，包括NASA的MSNBC（微软全国广播公司）的Breaking News都使用了该项目。国内一些移动开发者较为熟悉的框架，如WeX5前端开源框架等，也是基于Bootstrap源码进行性能优化而来。',
	'2016-07-18 09:43:22');
insert into tab_artile values(6,1,'jQuery UI 简介',
	'jQuery UI 是以 jQuery 为基础的开源 JavaScript 网页用户界面代码库。包含底层用户交互、动画、特效和可更换主题的可视控件。我们可以直接用它来构建具有很好交互性的web应用程序。所有插件测试能兼容IE 6.0+, Firefox 3+, Safari 3.1+, Opera 9.6+, 和GoogleChrome。',
	'2016-07-18 09:43:22');
insert into tab_artile values(7,2,'Java 简介',
	'Java是一门面向对象编程语言，不仅吸收了C++语言的各种优点，还摒弃了C++里难以理解的多继承、指针等概念，因此Java语言具有功能强大和简单易用两个特征。Java语言作为静态面向对象编程语言的代表，极好地实现了面向对象理论，允许程序员以优雅的思维方式进行复杂的编程。',
	'2016-07-18 09:43:22');
insert into tab_artile values(8,2,'C# 简介',
	'C#是微软公司发布的一种面向对象的、运行于.NET Framework之上的高级程序设计语言。并定于在微软职业开发者论坛(PDC)上登台亮相。C#是微软公司研究员Anders Hejlsberg的最新成果。C#看起来与Java有着惊人的相似；它包括了诸如单一继承、接口、与Java几乎同样的语法和编译成中间代码再运行的过程。但是C#与Java有着明显的不同，它借鉴了Delphi的一个特点，与COM（组件对象模型）是直接集成的，而且它是微软公司 .NET windows网络框架的主角。',
	'2016-07-18 09:43:22');
insert into tab_artile values(9,2,'PHP 简介',
	'PHP（外文名:PHP: Hypertext Preprocessor，中文名：“超文本预处理器”）是一种通用开源脚本语言。语法吸收了C语言、Java和Perl的特点，利于学习，使用广泛，主要适用于Web开发领域。PHP 独特的语法混合了C、Java、Perl以及PHP自创的语法。它可以比CGI或者Perl更快速地执行动态网页。用PHP做出的动态页面与其他的编程语言相比，PHP是将程序嵌入到HTML（标准通用标记语言下的一个应用）文档中去执行，执行效率比完全生成HTML标记的CGI要高许多；PHP还可以执行编译后代码，编译可以达到加密和优化代码运行，使代码运行更快。',
	'2016-07-18 09:43:22');
insert into tab_artile values(10,3,'linux 简介',
	'Linux是一套免费使用和自由传播的类Unix操作系统，是一个基于POSIX和UNIX的多用户、多任务、支持多线程和多CPU的操作系统。它能运行主要的UNIX工具软件、应用程序和网络协议。它支持32位和64位硬件。Linux继承了Unix以网络为核心的设计思想，是一个性能稳定的多用户网络操作系统。',
	'2016-07-18 09:43:22');
insert into tab_artile values(11,3,'Windows操作系统',
	'Microsoft Windows,是美国微软公司研发的一套操作系统，它问世于1985年，起初仅仅是Microsoft-DOS模拟环境，后续的系统版本由于微软不断的更新升级，不但易用，也慢慢的成为家家户户人们最喜爱的操作系统。',
	'2016-07-18 09:43:22');
insert into tab_artile values(12,4,'Android 简介',
	'Android是一种基于Linux的自由及开放源代码的操作系统，主要使用于移动设备，如智能手机和平板电脑，由Google公司和开放手机联盟领导及开发。尚未有统一中文名称，中国大陆地区较多人使用“安卓”或“安致”。Android操作系统最初由Andy Rubin开发，主要支持手机。2005年8月由Google收购注资。2007年11月，Google与84家硬件制造商、软件开发商及电信营运商组建开放手机联盟共同研发改良Android系统。随后Google以Apache开源许可证的授权方式，发布了Android的源代码。第一部Android智能手机发布于2008年10月。Android逐渐扩展到平板电脑及其他领域上，如电视、数码相机、游戏机等。2011年第一季度，Android在全球的市场份额首次超过塞班系统，跃居全球第一。 ',
	'2016-07-18 09:43:22');
insert into tab_artile values(13,4,'Android 系统架构',
	'Android的系统架构和其操作系统一样，采用了分层的架构。从架构图看，Android分为四个层，从高层到低层分别是应用程序层、应用程序框架层、系统运行库层和Linux内核层。',
	'2016-07-18 09:43:22');
insert into tab_artile values(14,4,'iOS 简介',
	'iOS是由苹果公司开发的移动操作系统。苹果公司最早于2007年1月9日的Macworld大会上公布这个系统，最初是设计给iPhone使用的，后来陆续套用到iPod touch、iPad以及Apple TV等产品上。iOS与苹果的Mac OS X操作系统一样，属于类Unix的商业操作系统。原本这个系统名为iPhone OS，因为iPad，iPhone，iPod touch都使用iPhone OS，所以2010WWDC大会上宣布改名为iOS（iOS为美国Cisco公司网络设备操作系统注册商标，苹果改名已获得Cisco公司授权）。',
	'2016-07-18 09:43:22');
insert into tab_artile values(15,4,'Swift',
	'Swift，苹果于2014年WWDC（苹果开发者大会）发布的新开发语言，可与Objective-C共同运行于Mac OS和iOS平台，用于搭建基于苹果平台的应用程序。Swift是苹果公司在WWDC2014上发布的全新开发语言。从演示视频及随后在appstore上线的标准文档看来，语法内容混合了OC,JS,Python，语法简单，使用方便，并可与OC混合使用。',
	'2016-07-18 09:43:22');


insert into tab_photo_class values(1,'红玫瑰','2016-07-18 09:43:22');
insert into tab_photo_class values(2,'白玫瑰','2016-07-18 09:43:22');
insert into tab_photo_class values(3,'粉玫瑰','2016-07-18 09:43:22');
insert into tab_photo_class values(4,'紫玫瑰','2016-07-18 09:43:22');
insert into tab_photo_class values(5,'蓝玫瑰','2016-07-18 09:43:22');


insert into tab_photo values(1,1,'醉爱-红玫瑰（9支）','h1.jpg','我的最爱','2016-07-18 09:43:22');
insert into tab_photo values(2,1,'香水百合玫瑰','h2.jpg','我的最爱','2016-07-18 09:43:22');
insert into tab_photo values(3,1,'唯爱红玫瑰','h3.jpg','我的最爱','2016-07-18 09:43:22');
insert into tab_photo values(4,1,'梦巴黎红玫瑰','h4.jpg','我的最爱','2016-07-18 09:43:22');
insert into tab_photo values(5,1,'思念红玫瑰','h5.jpg','我的最爱','2016-07-18 09:43:22');
insert into tab_photo values(6,1,'愿得一人心玫瑰','h6.jpg','我的最爱','2016-07-18 09:43:22');
insert into tab_photo values(7,2,'约见','b1.jpg','我的最爱','2016-07-18 09:43:22');
insert into tab_photo values(8,2,'相知','b2.jpg','我的最爱','2016-07-18 09:43:22');
insert into tab_photo values(9,2,'相依相伴','b3.jpg','我的最爱','2016-07-18 09:43:22');
insert into tab_photo values(10,2,'初遇见','b4.jpg','我的最爱','2016-07-18 09:43:22');
insert into tab_photo values(11,2,'心醉','b5.jpg','我的最爱','2016-07-18 09:43:22');
insert into tab_photo values(12,2,'夏之恋','b6.jpg','我的最爱','2016-07-18 09:43:22');
insert into tab_photo values(13,3,'粉红回忆','f1.jpg','我的最爱','2016-07-18 09:43:22');
insert into tab_photo values(14,3,'暖','f2.jpg','我的最爱','2016-07-18 09:43:22');
insert into tab_photo values(15,4,'纯真年代','b1.jpg','我的最爱','2016-07-18 09:43:22');
insert into tab_photo values(16,5,'蓝魅','l2.jpg','我的最爱','2016-07-18 09:43:22');
insert into tab_photo values(17,5,'蓝色醉爱','l3.jpg','我的最爱','2016-07-18 09:43:22');
insert into tab_photo values(18,5,'至尊玫瑰','l4.jpg','我的最爱','2016-07-18 09:43:22');



