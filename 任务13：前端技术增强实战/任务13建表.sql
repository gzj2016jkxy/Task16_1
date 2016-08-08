------------------------------------------------------------
--建立数据库task13_flowerorder
------------------------------------------------------------
DROP DATABASE IF EXISTS `task13_flowerorder`;
CREATE DATABASE `task13_flowerorder` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

USE `task13_flowerorder`;

------------------------------------------------------------
--用户资料表users
------------------------------------------------------------
DROP TABLE IF EXISTS `users`;	
CREATE TABLE `users` (
	`usersId` int(11) NOT NULL auto_increment,			--用户ID
	`usersName` varchar(40) NOT NULL default '',		--用户名
	`usersPass` varchar(40) default NULL,				--用户密码
	`usersPassQuestion` varchar(40) default NULL,		--找回密码问题
	`usersPassReply` varchar(40) default NULL,			--找回密码答案
	`usersTrueName` varchar(40) default NULL,			--用户真实姓名
	`usersAddress` varchar(100) default NULL,			--地址
	`usersPhone` varchar(100) default NULL,				--电话
	`usersE_mail` varchar(100) default NULL,			--邮箱		
	PRIMARY KEY (`usersId`)								--主键
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '用户资料表';

------------------------------------------------------------
--种类表sort
------------------------------------------------------------
DROP TABLE IF EXISTS `sort`;
CREATE TABLE `sort` (
	`sortId` int(11) NOT NULL auto_increment,			--鲜花类别ID
	`sortName` varchar(40) NOT NULL,					--鲜花类别名称	
	PRIMARY KEY (`sortId`)								--主键	
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '种类表';

------------------------------------------------------------
--管理员表admin
------------------------------------------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
	`adminId` int(11) NOT NULL auto_increment,			--管理员ID
	`adminName` varchar(40) NOT NULL,					--管理员账号
	`adminPass` varchar(40) NOT NULL,					--管理员密码	
	PRIMARY KEY (`adminId`)								--主键	
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '管理员表';

------------------------------------------------------------
--鲜花商品表goods
------------------------------------------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
	`goodsId` int(11) NOT NULL auto_increment,			--鲜花ID
	`goodsName` varchar(40) NOT NULL,					--鲜花名称
	`goodsmaterial` varchar(200) NOT NULL,				--鲜花材料	
	`goodsPackage` varchar(200) NOT NULL,				--鲜花包装
	`goodsLanguage` varchar(200) NOT NULL,				--花语
	`goodsPrice`  FLOAT NOT NULL,				    	--价格
	`goodsCent` varchar(40) NOT NULL,					--积分
	`goodsScope` varchar(100) NOT NULL,					--配送范围
	`goodsPlace` varchar(100) NOT NULL,					--鲜花的适用场合
	`goodsHabitus` varchar(100) NOT NULL,				--鲜花的状态(上架或下架)
	`sortName` varchar(40) NOT NULL,					--鲜花所属类别的名称	
	PRIMARY KEY (`goodsId`)								--主键	
	) ENGINE=InnoDB AUTO_INCREMENT = 3000 DEFAULT CHARSET=utf8 COMMENT = '商品表';

------------------------------------------------------------
--留言表leaveLanguage
------------------------------------------------------------
DROP TABLE IF EXISTS `leaveLanguage`;
CREATE TABLE `leaveLanguage` (
	`leaveLanguageId` int(11) NOT NULL auto_increment,	--留言ID
	`name` varchar(40) default NULL,					--留言人的用户名(为空就是游客)
	`qq` varchar(40) default NULL,						--留言人的QQ
	`email` varchar(100) default NULL,					--留言人的email
	`leaveLanguage` varchar(200) NOT NULL,				--留言的内容
	`dateTime` varchar(40) NOT NULL,					--留言的日期
	PRIMARY KEY (`leaveLanguageId`)						--主键	
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '留言表';

------------------------------------------------------------
--订单表orders
------------------------------------------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
	`ordersId` int(11) NOT NULL auto_increment,			--订单ID
	`usersName` varchar(40) NOT NULL,					--用户名
	`ordersPrice` varchar(40) default NULL,				--订单的总价
	`ordersDatetime` varchar(40) default NULL,			--订单生成的时间
	PRIMARY KEY (`ordersId`)							--主键	
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '订单表';

------------------------------------------------------------
--订单细节表ordersDetails
------------------------------------------------------------
DROP TABLE IF EXISTS `ordersDetails`;
CREATE TABLE `ordersDetails` (
	`detailId` int(11) NOT NULL auto_increment,			--订单细节ID
	`ordersId` int(11) NOT NULL ,						--所属订单的ID
	`goodsName` varchar(40) NOT NULL,					--鲜花的名称
	`goodsPrice` varchar(40) default NULL,				--鲜花的单价
	`goodsCount` int(11) NOT NULL,						--鲜花的数量
	PRIMARY KEY (`detailId`)							--主键
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '订单细节表';

------------------------------------------------------------
--订购鲜花公司表produce
------------------------------------------------------------
DROP TABLE IF EXISTS `produce`;
CREATE TABLE `produce` (
	`produceId` int(11) NOT NULL auto_increment,		--公司的ID
	`produceName` varchar(40) NOT NULL,					--公司名称
	PRIMARY KEY (`produceId`)							--主键	
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '订购鲜花公司表';

------------------------------------------------------------
--鲜花公司细节表produceDetails  
------------------------------------------------------------
DROP TABLE IF EXISTS `produceDetails`;
CREATE TABLE `produceDetails` (
	`produceId` int(11) NOT NULL ,						--公司的ID	
	`sortId` int(11) NOT NULL ,							--鲜花种类ID
	`goodsId` int(11) NOT NULL 							--鲜花ID	
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '鲜花公司细节表';

------------------------------------------------------------
--管理员表admin插入一条记录
------------------------------------------------------------	
insert into admin values(1,'admin','admin');

------------------------------------------------------------
--用户资料表users插入一条记录
------------------------------------------------------------
insert into users values(1,'123','123','密码找回','123','小明','北京','13512345678','123@456.com');

------------------------------------------------------------
--鲜花类别表插入10条记录
------------------------------------------------------------
insert into sort values(1,'浪漫爱情');
insert into sort values(2,'祝福用花');
insert into sort values(3,'致谢致歉');
insert into sort values(4,'哀思怀念');
insert into sort values(5,'商业花篮');
insert into sort values(6,'生日快乐');
insert into sort values(7,'慰问探望');
insert into sort values(8,'家居生活');
insert into sort values(9,'婚礼庆典');
insert into sort values(10,'会议鲜花');

------------------------------------------------------------
--订购鲜花公司表produce插入4条记录
------------------------------------------------------------
insert into produce values(1,'王氏鲜花有限公司');
insert into produce values(2,'刘氏鲜花有限公司');
insert into produce values(3,'张氏鲜花有限公司');
insert into produce values(4,'flowers有限公司');

------------------------------------------------------------
--鲜花商品表goods插入数据
------------------------------------------------------------

insert into goods values(null,'爱在你身旁','20枝粉玫瑰，满天星，绿叶 ','粉色网纱,精美花篮','把我的心来满足你.. ',
        128,'8分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','浪漫爱情');
insert into goods values(null,'情意绵绵','12枝洋兰，2枝粉色香水百合，2枝桔梗','高档网纱,精美花篮','有一种情意 只等待一位永远的爱人 有一种思念 只等待值得珍惜的人',
        208,'14分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
		'爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','浪漫爱情');
insert into goods values(null,'馨香情谊','红色，黄色，粉色玫瑰共12枝，紫色，白色槟菊＋绿叶丰满','藤编花篮圆形插花，蓝色蝴蝶结装饰','愿你今天的回忆温馨 愿你今天的梦甜在心 愿你这一年欢欢喜喜 祝你每天过的美好无比!',
        108,'7分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
		'爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','浪漫爱情');
insert into goods values(null,'你是我的全部','11枝靓丽粉色玫瑰，粉色、紫色勿忘我＋绿叶丰满。','粉色卷边纸圆形包装。红色蝴蝶结束扎。','你甜甜的笑容，是我眼中最美的风景。可爱的明眸，是我眼中最美的心灵。你是我全部的爱！',
        98,'6分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
		'爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','浪漫爱情');
insert into goods values(null,'心中只有你','红玫瑰20枝，满天星丰满，高山羊齿8枝','高档纱网圆形包装，粉色蝴蝶结','我的心里只有你，你占踞着我心全部！',
        128,'8分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
		'爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','浪漫爱情');
insert into goods values(null,'留恋','21枝粉玫瑰＋3枝粉色百合＋情人草','精美花篮','亲爱的，你可知道，我是多么多么地爱你，从日落到天明，从春季到冬季，我想告诉你，那个让我梦萦魂牵的人，是你，是你，还是你！',
        82,'5分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','浪漫爱情');
insert into goods values(null,'好想好想你','12枝红玫瑰，点缀满天星及叶材','透明玻璃纸包扇形，并以艳粉色小蝴蝶结束紧花束','留恋你的身影，思念你的味道！永远...',
        178,'12分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','浪漫爱情');
insert into goods values(null,'表白','15支白玫瑰+情人草+配叶','草绿色皱纹纸圆形包装，紫色丝带束扎','悄悄的，不想打扰你；静静的，又想起你；不知从何说起，愿花儿能帮我告诉你：真的好想你，总胜过藏在心里。。。。',
         118,'8分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','浪漫爱情');
insert into goods values(null,'心心相印','红玫瑰40朵, 白(粉.黄)玫瑰37朵,外围一圈满天星,组成心型图案','红玫瑰40朵, 白(粉.黄)玫瑰37朵,外围一圈满天星,组成心型图案','心心相印',
        266,'21分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','浪漫爱情');
insert into goods values(null,'与我相知','红玫瑰22枝，满天星丰满','浅绿色网纱，蝴蝶结','问尔所之，是否如适。蕙兰莞荽，郁郁香芷。彼方淑女，凭君寄辞。伊人曾在，与我相知。',
        126,'8分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','浪漫爱情');
insert into goods values(null,'思念到永远','8支粉百合 情人草 黄莺','淡绿色皱纹纸花束 缎带打结','我在外地，心却跟你在一起；知道么，我随时都在挂念着你，思念你，吻你',
       158,'10分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','浪漫爱情');
insert into goods values(null,'知心爱人','66枝粉玫瑰，黄莺围边','双色手揉纸精美包装，丝带花装饰','把你的爱藏在心里，直到永远，一生之中最难得的，有一个知心爱人…… ',
       266,'18分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
	   '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','浪漫爱情');
insert into goods values(null,'思念','红玫瑰19枝,高山积雪外围,龟贝叶围一圈.','3张锡纸圆形内衬,红色丝绵纸3张圆形包装,款丝带束扎.','命运造就了你我.知道我在他乡思念你么?爱你,直到永远',
        138,'9分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ' ,'浪漫爱情');
insert into goods values(null,'今生唯一的爱','红玫瑰6枝,满天星丰满.黄莺点缀','红色玻璃纸多张圆形包装','真的不想爱上你，却无可救药的恋上你。难道，真的是情非得以',
        66,'4分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','浪漫爱情');
insert into goods values(null,'百合问候','多头白色香水百合6枝，情人草丰满','紫色透明纸圆形包装，同色蝴蝶结束扎','你就像这百合花一样，香味在我心中永远挥散不去。女人是半边天，女人是伟大的…..',
        118,'8分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
		'爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','浪漫爱情');
insert into goods values(null,'我心依旧','靓丽粉色玫瑰16枝，情人草丰满。绿叶衬托','淡粉色棉纸西式包装，粉色纱蝴蝶结束扎','我真的好想你，有你的日子，一切都是那么美好，风和日丽，鲜花遍地',
        102,'7分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','浪漫爱情');

insert into goods values(null,'星光灿烂','12枝粉郁金香（或粉玫瑰）, 勿忘我，满天星及点缀花饰花束 ','紫色绵纸高档包装',' 星光灿烂 ',
        128,'8分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','祝福用花');
insert into goods values(null,'敬意/教师节','红色康乃馨26枝，黄莺丰满，满天星点','淡紫色手揉纸圆形包装，红色皱纸托底，紫色宽丝带束扎','老师，学生的成长倾注着您无数的辛勤与汗水，但无论岁月如何流逝，在我心中您永远伟大，永远年轻...',
        86,'6分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','祝福用花');
insert into goods values(null,'祝福串串/教师节','红色，黄色，粉色多头康乃馨各11枝','圆形透明玻璃花瓶盛放','祝福串成一首诗，一段旋律，开启一片温馨的春的园地。老师节日快乐！',
        98,'6分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','祝福用花');
insert into goods values(null,'难忘师恩/教师节','18枝粉色康乃馨、18枝红色康乃馨、6枝浅色剑兰、2枝多头粉百合，3枝铁炮百合','方型花篮',
       '老师，没有忘记过去的时光，没有忘记您的音容笑貌，您是我永远的启明星！',
        162,'11分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','祝福用花');
insert into goods values(null,'感谢老师/教师节','红康乃馨12枝，黄莺1扎，高山积雪少许。','绿色绵纸1张内衬，白色手揉纸1张托底，粉花棉纸1张腰部包裹，绿绵丝带束扎 ','知道你对我的关心和爱护，在这个特殊的日子，我要说，老师，谢谢您',
        78,'5分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','祝福用花');
insert into goods values(null,'老爸，辛苦了','黄玫瑰8枝，巴西木3片，白洋兰5枝（如果由于地区原因用紫洋兰代替），天门冬少许。','淡蓝色手揉纸1张、深蓝色手揉纸0.5张扇形包装，深蓝色手揉纸1张托底','一年一度您的日子，在没有我在身边的时候希望也能快快乐乐过每一分每一秒。老爸，辛苦了！ ',
        86,'6分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
		'爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','祝福用花');
insert into goods values(null,'赞美父亲','黄扶郎9枝，粉色多头康乃馨16枝，勿忘我10枝','绿色绵纸，黄色沙网丝带，圆形包装','父亲，您在我心中永远高大，刚强！赞美您',
        80,'5分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','祝福用花');
insert into goods values(null,'祝福永伴','16枝靓丽黄色玫瑰，粉色多头康乃馨＋天冬草丰满','绿色棉纸圆形包装，绿色蝴蝶结束扎 ','父亲，让我的祝福永远伴随着你',
        118, '8分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','祝福用花');
insert into goods values(null,'父爱之美','6枝红色太阳菊，8枝黄色玫瑰，黄莺丰满，针叶托底。','淡橙色棉纸内衬，深绿色皱纹纸西式包装，绿色蝴蝶结束扎','您常在给我理解的注视，您常说快乐是孩子的礼物。所以今天，我送上一个笑，温暖您的心',
        89,'6分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','祝福用花');
insert into goods values(null,'感谢您，爸爸','12枝红色太阳菊，9枝黄色康乃馨，黄莺丰满','淡红色棉纸圆形包装，粉色蝴蝶结缎带','是您用自己的肩膀挑起了生活的重担，太多的言语也无法向您表达，我对您深深的爱意。我爱您，爸爸',
        86,'6分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','祝福用花');
insert into goods values(null,'健康久久','99枝粉色康乃馨','粉色棉纱纸 红色蝴蝶结','祝您永远健康，永远快乐，永远年轻',
       178,'12分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','祝福用花');
insert into goods values(null,'青春永驻','红色康乃馨26枝，黄莺丰满，满天星点缀','淡紫色手揉纸圆形包装，红色皱纸托底，紫色宽丝带束扎','妈妈，孩子的长大倾注着您无数的辛勤与汗水，但无论岁月如何流逝，在我心中您永远年轻，永远美丽...',
       82,'5分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','祝福用花');
insert into goods values(null,'念亲恩','红色康乃馨28枝，满天星适量','黄色皱纹纸包装，丝带打结,圆形花束','明月朗相对念母亲，怀念怎不悲莫禁；父母亲爱心柔善像碧月，常在心里问何日报；惟独我离别，无法慰亲旁，轻弹曲韵梦中送',
       79,'5分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','祝福用花');
insert into goods values(null,'祝您永远健康','99枝粉康乃馨配满天星,周围一圈绿叶 ','深红色皱纹纸普通包装 ,圆形花束','祝您的身体健康久久!',
       169,'11分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','祝福用花');
insert into goods values(null,'祝您幸福，妈妈','桃红色康乃馨18枝，黄色康乃馨13枝，多头康乃馨15枝，黄莺1扎，巴西木10片','花篮','妈妈,辛苦了一辈子,该歇歇了,祝您一生幸福',
       138,'9分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','祝福用花');
insert into goods values(null,'恩情','粉色康乃馨10枝，白色玫瑰5枝，粉色玫瑰5枝，满天星适量，配叶搭配 ','圆形有柄花篮','我愿将祝福化作的天使，永远保佑着你......',
       118,'8分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','祝福用花');

insert into goods values(null,'快乐的微笑','18枝红色玫瑰、适量粉色小菊花、黄莺','圆型花篮','愿你一年365天天天开心,8760小时时时快乐,5256000分分分精彩,1536000秒秒秒幸福 ',
       138,'9分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','慰问探望');
insert into goods values(null,'温暖的心灵','28枝紫粉玫瑰','单面花束,紫色绵纸','平安，快乐，幸福，健康，是我永远的祝福。请接受我淡淡地祝福，浓浓地思念',
       188,'12分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','慰问探望');
insert into goods values(null,'阳光明媚','6枝黄玫瑰、6枝粉玫瑰、6枝白色玫瑰、8枝太阳花、紫孔雀、黄莺、绿叶','精致花篮','心情似春天的阳光,照的人格外舒服;身体好点了么?',
       139,'9分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','慰问探望');
insert into goods values(null,'心情如春','18枝粉色康乃馨、18枝红色康乃馨、6枝浅色剑兰、3枝铁炮百合','方型花篮','精神畅快，心气平和。饮食有节，寒暖当心。起居心时，劳逸均匀',
       158,'10分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','慰问探望');
insert into goods values(null,'平安一生','2朵粉香水百合、9枝粉玫瑰、黄色多头康乃馨、绿叶适量','高档紫色绵纸、粉色花结','你的康复，就是我的幸福；你的安康，就是我的平安。保重身体！',
       98,'6分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','慰问探望');
insert into goods values(null,'阳光总在风雨后','2枝向日葵、3枝粉香水百合、4枝铁炮百合、6枝红玫瑰、剑兰、黄莺、绿叶','精美花篮','阳光总在风雨后，请相信有彩虹，风风雨雨都接受，我一直会在你的左右。早日康复!',
       160,'11分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','慰问探望');
insert into goods values(null,'涓涓思念','36枝桃红色康乃馨、3枝粉香水百合、金鱼草、绿叶','圆型花篮、蝴蝶结',' 听说你病了，我为你特制了药哦，里面有：一克阳光、两克新鲜空气、三克愉快心情，还有一公斤我的爱 ',
       168,'11分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','慰问探望');
insert into goods values(null,'永远健康','12枝黄色扶郎，绿叶适量','高档棉纱纸包装','有个好心情，永远健康',
       60,'4分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
	   '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','慰问探望');
insert into goods values(null,'早日康复','粉色、红色、黄色、白色太阳菊各10枝，粉色玫瑰8枝、各色康乃馨共18枝、紫色桔梗12枝、情人草＋绿叶','花篮圆形插花','轻轻的一声问侯，不想惊扰你！只想真切知道你的一切是否安好,愿你早日康复…..',
       188,'12分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','慰问探望');
insert into goods values(null,'我心中的太阳','5枝多头铁炮百合, 5支太阳花，配绿叶、雷丝、勿忘我','扇形包装','您的健康象太阳，永远发光，永不磨灭!',
       108,'10分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','慰问探望');
insert into goods values(null,'想你','香水多头百合4枝，白玫瑰9枝','皱纸包装','让心情平静下来,享受上帝赐予我们的好生活',
       148,'15分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','慰问探望');
insert into goods values(null,'一网情深','12朵白玫瑰,黄莺,绿叶搭配','绿色皱纹纸包装，绿色银边丝带打结',' 让我们一起编织生活的梦 ',
       88,'10分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','慰问探望');
insert into goods values(null,'共团圆','粉色香水百合4朵，白色铁炮百合2枝，红色康乃馨6枝，粉色剑兰2枝，香橙，鲜桃，葡萄，苹果，猕猴桃，香蕉等时令水果','果篮','早日康复',
       178,'18分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','慰问探望');
insert into goods values(null,'热情','2枝郁金香、2枝百合、1枝红掌、满天星、香蕉、葡萄、苹果、梨、桔子、菠萝等','花篮','花篮',
       212,'21分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','慰问探望');
insert into goods values(null,'真情','12枝白玫瑰,4朵白百合,满天星,外围绿叶','白色绵纸包装，淡粉色丝带打结 圆形花束','让我在心中默念着你，让鲜花送去苍白的温馨，安息吧，我的亲人！',
       156,'0分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','慰问探望');
insert into goods values(null,'早日康复','19朵粉玫瑰、天冬或蓬莱松+绿叶','精美花篮','祝早日恢复身体健康!',
       158,'15分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','慰问探望');

insert into goods values(null,'吾爱永在','11支康乃馨、配草、满天星','精美港式包装','我的爱永远伴随着你！',
       58,'4分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','致谢致歉');
insert into goods values(null,'天涯共此时','16支白百合+30支红玫瑰+情人草','高档韩国软纱','海上生明月,天涯共此时！愿今夜的月光照亮您所有的梦想,衷心祝愿美梦成真！',
       428,'28分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
	   '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','致谢致歉');
insert into goods values(null,'你的心你的梦','白、红、黄、粉、香摈色各10枝香水玫瑰','白色衬纸粉色圆形包装','愿五色玫瑰放飞你的心情，让你的梦成为多姿多彩的美妙世界！',
       202,'12分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','致谢致歉');
insert into goods values(null,'梦中情人','11枝红色玫瑰、黄莺丰满','黄色皱纹纸圆形豪华包装（橘红色丝带结）','你如出水芙蓉般美丽动人',
       92,'10分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','致谢致歉');
insert into goods values(null,'想你','6枝红玫瑰,高山积雪(或满天星)环绕','高档棉纸包装','您好，我永远记得您的纯情和无私的关爱——我终生不忘！祝您健康幸福、青春永驻',
       56,'4分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','致谢致歉');
insert into goods values(null,'淡淡的笑容','16枝白玫瑰+绿叶','白色韩国沙兜底简单包装',' 您好，我永远记得您的纯情和无私的关爱——我终生不忘！祝您健康幸福、青春永驻 ',
       100,'8分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
	   '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','致谢致歉');
insert into goods values(null,'原谅我','33支粉色香水玫瑰、丰满绿叶','粉色圆形包装（褐色丝带结）','原谅我，是我的错！愿花能代表我的心，携手共创明天！',
       178,'10分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
	   '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','致谢致歉');
insert into goods values(null,'紫色爱恋','11枝红玫瑰+满天星','草绿色皱纹包装纸圆形包装，黄色丝带束扎','您好，我永远记得您的纯情和无私的关爱——我终生不忘！祝您健康幸福、青春永驻',
       88,'8分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','致谢致歉');
insert into goods values(null,'全是我的错','6枝粉色香水百合，排草','草绿色皱纹包装纸圆形包装，黄色丝带束扎','全是我的错，让你伤心生气!愿让风送去我的关怀、云带去我的祝福、花传递我的心意.不要再生气好么？',
       128,'12分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','致谢致歉');
insert into goods values(null,'期待','红色、白色香水玫瑰各6支、勿忘我、黄莺','单面内衬白纸外粉色包装','您好，我永远记得您的纯情和无私的关爱——我终生不忘！祝您健康幸福、青春永驻',
       118,'11分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','致谢致歉');
insert into goods values(null,'情意无价','20枝白马蹄莲','单面白衬纸绿色包装纸（淡绿色的丝带结）','点点关怀点点爱，我想把它放大',
       108,'8分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','致谢致歉');
insert into goods values(null,'点点关怀','12枝红色康乃馨、12枝白色康乃馨，蓬莱松陪衬。红色丝带束扎','红色丝带束扎','只给你一点点关怀，只要你一点点开心.点点关怀点点爱，我想把它放大',
        89,'8分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','致谢致歉');
insert into goods values(null,'笑容绽放','黄色郁金香6枝、百合1枝,满天星,栀子叶','丝网,粉色棉纱纸包装（红丝带）','你的泪、你的笑在我心中是最美',
       118,'5分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','致谢致歉');
insert into goods values(null,'爱永相随','26支粉玫瑰+一圈满天星,点缀绿叶','中高圆蓝系丝带包装','表白对你的爱',
       148,'12分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','致谢致歉');
insert into goods values(null,'表白对你的爱','9朵香水百合+配草','中高圆蓝系丝带包装','表白对你的爱',
       98,'8分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','致谢致歉');

insert into goods values(null,'爱意浓浓','六枝红玫瑰点缀孔雀草（或满天星）及叶材','透明花瓶',' 你我相爱是爱情之神赐予我们的缘份，快乐的时光是我们未来美好生活的序幕，希望她延伸到永远！ ',
       70,'5分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','家居生活');
insert into goods values(null,'多彩人生','红色，黄色，粉色玫瑰各6枝，黄莺丰满','透明玻璃花瓶盛放','我愿能化作天使，让你的生活更加多姿多彩',
       120,'8分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','家居生活');
insert into goods values(null,'美梦成真','19枝靓丽粉色玫瑰，绿叶丰满','透明圆形玻璃花瓶盛放','星空中点点闪烁的荧光，环绕着缤纷的绮丽梦想，祝福你今年许下的心愿，都能一一实现在你眼前，祝你佳节温馨喜悦',
       138,'8分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','家居生活');
insert into goods values(null,'祝福串串','红色，黄色，粉色多头康乃馨各12枝','圆孢透明玻璃花瓶盛放','祝福串成一首诗，一段旋律，开启一片温馨的春的园地',
       108,'7分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','家居生活');
insert into goods values(null,'遥远的思念','9枝靓丽粉色玫瑰，粉色康乃馨20枝，多头粉色康乃馨＋勿忘我丰满','透明玻璃花瓶盛放。粉色蝴蝶结装饰','远方的你是否无恙？在遥远的思念里，改变的是我的容颜，不变的是永远爱你的心！',
       118,'8分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','家居生活');
insert into goods values(null,'往事','靓丽粉色玫瑰10枝，黄色太阳菊3枝，黄莺，绿叶丰满','圆形透明玻璃花瓶盛放','那些难忘的日子，是我永远吟唱的旋律。你如今还好吗？',
       98,'6分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
	   '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','家居生活');
insert into goods values(null,'美好人生','多头粉色香水百合2枝，情人草，绿叶艺术插花','透明玻璃花瓶盛放','思念是一季的花香，漫过山谷，笼罩你我，而祝福是无边的关注，溢出眼睛，直到心底',
       72,'5分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','家居生活');
insert into goods values(null,'容颜不变','12枝靓丽红色玫瑰，彩色槟菊丰满',' 透明玻璃花瓶盛放 ','心中的你容颜永不变...',
       118,'8分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','家居生活');
insert into goods values(null,'家的感觉','靓丽粉色玫瑰11枝，多头粉色康乃馨20枝。绿叶丰满',' 圆形透明玻璃花瓶盛放',' 有家的感觉真好 ',
       116,'8分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','家居生活');
insert into goods values(null,'家居幸福','2枝多头香水百合、16枝红玫瑰、黄莺、勿忘我','中台叉包装，花篮','你如出水芙蓉般美丽动人',
       168,'12分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','家居生活');
insert into goods values(null,'家居幸福蓝系列8','黄、红色雏菊，黄莺','中提蓝包装','你如出水芙蓉般美丽动人',
       82,'0分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','家居生活');
insert into goods values(null,'家居幸福蓝系列7',' 粉色香水百合、粉色康乃馨、麒麟菊、黄莺 ',' 中提蓝包装 ','你如出水芙蓉般美丽动人',
       100,'0分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','家居生活');
insert into goods values(null,'家居幸福蓝系列10','粉色幸福花、满天星','中高圆蓝系丝带包装','你如出水芙蓉般美丽动人',
       71,'0分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','家居生活');
insert into goods values(null,'家居幸福蓝系列9','粉色香水百合、粉色香水玫瑰、白色小菊、剑兰','中高圆蓝系丝带包装','你如出水芙蓉般美丽动人',
       90,'0分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','家居生活');
insert into goods values(null,'家居平安花瓶系列6','黄色太阳花、绿叶','高档玻璃花瓶包装','你如出水芙蓉般美丽动人',
       76,'0分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
	   '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','家居生活');

insert into goods values(null,'永远想念(','黄色、白色菊花各5枝；6枝橙色太阳菊；3枝泰国兰、紫色勿忘我若干、绿叶＋针叶','紫色棉纸单面包装；白色蝴蝶结缎带','直到现在，我才慢慢感觉到，心灵最深处的那种孤寂、那种无依的悲哀，一点一点的侵蚀、包围我，每当夜深人静的时候，那种悲伤就会毫不掩饰的涌上心头',
       108,'7分(每分代表一元,可用于下次购物)','配送全国各大中城市',
       '哀思怀念','上架 ','哀思怀念');
insert into goods values(null,'百年之后','天堂鸟1，马蹄莲3，白百合3，黄扶郎3，白扶郎5，黄菊5，橙色百合3，兰花3，白色多头康乃馨3，黄色勿忘我点缀，龟背5，散尾叶7。','花篮','花篮',
		218,'20分(每分代表一元,可用于下次购物)','配送全国各大中城市',
       '哀思怀念','上架 ','哀思怀念');
insert into goods values(null,'反璞归真','粉百合一朵、黄色、白色菊花各12枝、紫色勿忘我＋泰国兰若干','花篮圆形插花','一生的劳累与奔波，这一刻开始拥有了宁静，开始回归了最自然的天地怀抱',
       129,'9分(每分代表一元,可用于下次购物)','配送全国各大中城市',
       '哀思怀念','上架 ','哀思怀念');
insert into goods values(null,'哭泣风铃','多头白色香水百合16朵、铁炮百合8朵、天堂鸟1枝,黄菊花9枝,白菊花6枝,杨兰6枝,黄莺丰满、散尾葵','单面落地花篮，成品规格1.2米高','那风中的风铃任凭风雨的吹打，那声音有点凄凉。。。。。雨声、风声、风铃声，夹杂在一起。模糊的让人无法辨析他们的声音，似在哭泣，是啊！雨中有谁会听到风铃哭泣的声音呢？',
       326,'40分(每分代表一元,可用于下次购物)','配送全国各大中城市',
       '哀思怀念','上架 ','哀思怀念');
insert into goods values(null,'默念(哀思)','白扶郎20枝，白康乃馨66枝，芦荀草间隔','扶郎用紫色透明纸单独包装，周围用黄色绵纸球形包装','让我在心中默念着你，让鲜花送去苍白的温馨，安息吧，我的亲人！',
       180,'20分(每分代表一元,可用于下次购物)','配送全国各大中城市',
       '哀思怀念','上架 ','哀思怀念');
insert into goods values(null,'我心飞翔','多头粉百合1枝，白百合1枝，火鹤2枝，天堂鸟5枝，龙柳3枝，仙羽7片，一叶兰4片，黄莺适量','藤编圆形一只，花泥 成品规格：直径35CM，高60CM','时常在梦中看到 我有一双翅膀 飞到很远的地方 无忧无虑的飞翔 等待你给我情网 给我温暖的阳光 带着一些好心情 让我的心也徜徉',
       158,'15分(每分代表一元,可用于下次购物)','配送全国各大中城市',
       '哀思怀念','上架 ','哀思怀念');
insert into goods values(null,'天使','粉色康乃馨10枝，白色玫瑰5枝，粉色玫瑰5枝，满天星适量，配叶搭配。','白色衬纸粉色圆形包装','我愿将祝福化作的天使，永远保佑着你……',
       106,'10分(每分代表一元,可用于下次购物)','配送全国各大中城市',
       '哀思怀念','上架 ','哀思怀念');

insert into goods values(null,'爱你,永远',' 21支粉玫瑰+满天星+绿叶',' 内衬粉色卷边纸,外粉色绵纸精美包装 ','让那最美丽的颜色停留在温暖的感情世界，让那最真挚的祝福珍藏在浓郁的感情世界，让我最关心的人永远生活在幸福的感情世界……21,爱你!',
        138,'9分(每分代表一元,可用于下次购物) ','配送全国各大中城市 ',
       '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架  ' , '生日快乐');
insert into goods values(null,'一生有你','12枝粉色康乃馨，满天星，绿叶 ','粉色网纱,精美花篮','我是您的Baby，您是我得唯一，即使时光荏苒、岁月变迁，一生都会陪在您的身旁感受您的抚爱',
         82,'5分(每分代表一元,可用于下次购物) ','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','生日快乐');
insert into  goods values(null,'含馨','8枝红色康乃馨，19枝粉色康乃馨，9枝粉色玫瑰，6枝黄色玫瑰，绿叶，满天星 ','精美花篮','情丝丝,雨丝丝,我想你无人知,爱丝丝,恋丝丝,真心爱你愿你知,心思思,想思思,一天不见傻痴痴',
        158,'10分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','生日快乐');
insert into  goods values(null,'橘子香水','16枝香槟玫瑰，黄莺丰满','绿色皱纹纸包装','眼睛为你下着雨，心里为你撑着伞。一路上有你陪伴，从此生命再无憾',
        108,'7分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','生日快乐');
insert into  goods values(null,'静静的爱','16枝红玫瑰，2枝多头香水百合，黄莺丰满 ','内层玻璃纸，外层紫色棉纸，圆形花束','有你的季节，天空是蓝的，花儿是笑着的',
        148,'10分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','生日快乐');
insert into  goods values(null,'无限爱','5枝香水百合、33枝红玫瑰、黄莺、满天星','紫色卷边纸、丝带包装','天真笑容动我心，追你一生是真心，一生一世不变心',
        258,'17分(每分代表一元,可用于下次购物)','配送全国各大中城市',
		'爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','生日快乐');
insert into  goods values(null,'缘定今生','16支粉红色郁金香，配黄莺丰满','红褐色丝棉纸和粉红色皱纹纸双重包装，扎浅紫色宽边丝带，单面花束','千古明月有阴晴圆缺，拥吻着春江潮起潮落，有缘的你我定会风雨兼程，绕青山，染层林，流向真爱之海不复回',
        228,'15分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','生日快乐');
insert into  goods values(null,'美丽无限','白玫瑰16枝，多头粉色百合5枝，黄莺丰满','绿色棉纸包装，淡黄色纱网呈“结式”束裹，圆形花束','每当想起你，就忆起曾经，和你共同织过无数旖旎的梦',
        218,'14分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','生日快乐');
insert into  goods values(null,'此情不渝','20支粉玫瑰、紫色勿忘我、满天星、配草','粉色皱纹纸双层包装，粉色丝带扎束','多少年后,再次相见,往事如烟，心酸的浪漫说不清，你我怎能匆匆擦肩而过？不论多久,我将对你此情不渝.',
        128,'8分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','生日快乐');
insert into  goods values(null,'真的爱你','粉玫瑰19枝，多头白百合4枝，红掌4枝，黄莺，绿叶丰满','绿色丝棉纸包装，圆形花束','喜欢你那可爱面容，喜欢你那可人的双眼…… 不知道用怎样的词句来表白，我只能傻傻的说一声：宝贝！真的爱你！',
        238,'16分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','生日快乐');
insert into  goods values(null,'平安一生','粉色香水百合2朵、粉色玫瑰3枝、粉色康乃馨6枝，配满天星和绿叶','桔色棉纸内衬、墨绿色皱纹纸外包装，圆形花束','愿平安快乐与你相伴，幸福永远陪伴你',
        98,'6分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','生日快乐');
insert into  goods values(null,'爱的奇迹','1枝粉色多头香水百合，8枝粉玫瑰，10枝泰国兰，点缀勿忘我，小翠菊花饰和丰富叶材','高脚花篮,饰绿色蝴蝶结','心心相映，就会有爱的奇迹',
        116,'8分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','生日快乐');
insert into  goods values(null,'倾心','8枝粉玫瑰，8枝白玫瑰，8枝粉色康乃馨，点缀叶上黄金，丰富叶材','白色高脚提把花篮，淡粉色法国结装饰','人比花娇，芳香伊人',
        118,'8分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','生日快乐');
insert into  goods values(null,'相伴今生','3枝多头粉百合，5枝红玫瑰，点缀情人草、叶材','精美花瓶。（艺术花瓶，图片供参考）','爱你的心不变，想你的人是我。记住我们的约定，相伴到今生！',
        118,'8分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','生日快乐');
insert into  goods values(null,'缘','20枝红玫瑰，点缀满天星（或黄莺）及叶材','粉色绵纸圆形包装，蝴蝶结','一同走过的日子，是人生最亮丽的风景，是心底最珍惜的回忆！',
        108,'7分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','生日快乐');
insert into  goods values(null,'生日祝福','靓丽红色玫瑰12枝，满天星丰满。','淡紫色绵纸圆形围裹，白色纱内衬，紫色蝴蝶结束扎。','没有阳光，就没有雨后的彩虹。假如我是彩虹，那么，你就是阳光；是的，有了你，我的生活才会五彩缤纷。',
        92,'6分(每分代表一元,可用于下次购物)', '配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','生日快乐');

insert into  goods values(null,'永结同心','9枝红玫瑰,21枝白玫瑰',' 粉色纱网和银色绵纸包装，丝带打结，单面花束 。','世界太大太寂寞，只有有你的这一个角落，片刻的温柔让我心情解脱，你心事种种，我愿意有相同的感受',
        178,'18分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','婚礼庆典');
insert into  goods values(null,'胸花系列1/婚礼','玫瑰...... ','粉色纱网和银色绵纸包装，丝带打结，单面花束','世界太大太寂寞，只有有你的这一个角落，片刻的温柔让我心情解脱，你心事种种，我愿意有相同的感受',
        6,'0分(每分代表一元,可用于下次购物)','配送全国各大中城市',
		'爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','婚礼庆典');
insert into  goods values(null,'胸花系列2/婚礼','3朵泰国兰.... ','粉色纱网和银色绵纸包装，丝带打结，单面花束','世界太大太寂寞，只有有你的这一个角落，片刻的温柔让我心情解脱，你心事种种，我愿意有相同的感受',
        11,'0分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','婚礼庆典');
insert into  goods values(null,'胸花系列3','玫瑰......','精美包装','世界太大太寂寞，只有有你的这一个角落，片刻的温柔让我心情解脱，你心事种种，我愿意有相同的感受',
        10,'0分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','婚礼庆典');
insert into  goods values(null,'爱情宣言','16枝粉玫瑰+高山积雪,点缀勿忘我','精美包装','世界太大太寂寞，只有有你的这一个角落，片刻的温柔让我心情解脱，你心事种种，我愿意有相同的感受',
        148,'10分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','婚礼庆典');
insert into  goods values(null,'深深情意','6支多头粉色百合，勿忘我','蓝晶绿的包装和墨绿色的绸带','贤静素雅，脉脉含情得意韵',
        138,'9分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','婚礼庆典');
insert into  goods values(null,'我心只有你','33枝红玫瑰，周围一圈满天星，外围绿叶','粉色绵纸心形包装','愿快乐与你相伴，愿你的生活永远阳光，更愿你如鲜花靓丽',
        178,'12分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','婚礼庆典');
insert into  goods values(null,'一生的爱','12朵粉玫瑰,满天星','花瓶 四面型','让心情平静下来,享受上帝赐予我们的好生活',
        108,'7分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','婚礼庆典');
insert into  goods values(null,'恋情','18枝精品玫瑰，加米兰，配绿叶','粉色纱网和银色绵纸包装，丝带打结，单面花束','让心情平静下来,享受上帝赐予我们的好生活',
        128,'12分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','婚礼庆典');
insert into  goods values(null,'情意绵绵','36支粉玫瑰，满天星配大片绿叶','土黄色布纹纸,丝带打结，单面花束','让心情平静下来,享受上帝赐予我们的好生活',
        178,'20分(每分代表一元,可用于下次购物)','配送全国各大中城市',
		'爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','婚礼庆典');
insert into  goods values(null,'喜洋洋',' 粉色香水百合4朵，白色铁炮百合2枝，红色康乃馨6枝，粉色剑兰2枝，香橙，鲜桃，葡萄，苹果 ','花篮','让心情平静下来,享受上帝赐予我们的好生活',
        299,'25分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','婚礼庆典');
insert into  goods values(null,'前程似锦',' 18枝扶郎+丰满黄莺 ','精美包装','让心情平静下来,享受上帝赐予我们的好生活',
        98,'10分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','婚礼庆典');
insert into  goods values(null,'深深的爱人','红色玫瑰12枝,绿叶点缀 ','紫色丝带花装饰,精美绵纸包装','让心情平静下来,享受上帝赐予我们的好生活',
        96,'10分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','婚礼庆典');

insert into  goods values(null,'前程似锦','铁炮百合36枝，粉百合10枝，红玫瑰，粉玫瑰11枝，散尾，黄莺丰满','单层花篮一只 成品规格：高80CM','前程似锦',
       656,'43分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','商业花篮');
insert into  goods values(null,'金碧辉煌',' 火鹤5枝，洋兰10枝，剑兰11枝，小鸟13枝，香水百合11朵，红玫瑰，粉玫瑰各20枝，黄菊花20枝，各色康乃馨28枝，散尾叶，黄莺，鱼尾叶间插 ','三层花篮一只 成品规格：200CM','金碧辉煌',
        498,'30分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','商业花篮');
insert into  goods values(null,'开业大吉',' 粉剑兰7枝，小鸟6枝，白百合3枝，黄菊花30枝，红玫瑰，粉玫瑰各15枝，各色康乃馨28枝，黄莺丰满','三层花篮一只 成品规格：180CM','开业大吉',
        406,'20分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','商业花篮');
insert into  goods values(null,'乔迁之喜','白百合2枝，康乃馨1扎，红玫瑰6枝，黄莺、勿忘我，散尾葵等绿叶点缀，花篮插制','台面花篮','人说商如风雨。。。，我有一把伞-撑出的是优质和诚意！',
        128,'8分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','商业花篮');
insert into  goods values(null,'喜洋洋',' 2枝天堂鸟，2枝跳舞兰，1枝富贵竹，2枝红掌，6枝铁炮，1枝多头白百合，1枝多头粉百合，10枝红色康乃馨，10枝粉色康乃馨，6枝白色康乃馨，2枝黄康乃馨，6枝泰国兰，多片散尾葵、龟背竹 ','90公分高花篮','幽香拂面，紫气兆祥，庆开业典礼，祝生意如春浓，财源似水来！',
        338,'22分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','商业花篮');
insert into  goods values(null,'红红火火','百合、红玫瑰、粉玫瑰、康乃馨、扇尾葵、黄莺','花篮','开业之际送上我诚挚祝贺，情深意重，祝你在未来的岁月，事业蒸蒸日上，财源广进！',
        228,'19分(每分代表一元,可用于下次购物)','配送全国各大中城市',
		'爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','商业花篮');
insert into  goods values(null,'开业庆典','红掌、天堂鸟，红色康乃馨、红色，粉色非洲菊，铁炮百合，粉百合，红玫瑰，黄菊，剑兰，叶材','5层开业庆典花篮，1.8米左右高','开业、庆典、会议等活动',
        558,'50分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','商业花篮');
insert into  goods values(null,'春光无限','玫瑰、百合、非洲菊、情人草、针叶等','托盘花泥插花','这是一款常用的住宅、办公室桌面摆放的台面插花',
        168,'11分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','商业花篮');
insert into  goods values(null,'会议花篮','马蹄莲、玫瑰、康乃馨、非洲菊、红掌、剑兰、菊花、针叶等','小型会议花篮','步步高升',
        228,'25分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','商业花篮');
insert into  goods values(null,'节节高升/庆典','针葵叶、太阳花,黄金鸟、百合,玫瑰、.....','3层开业庆典花篮，1.8米左右高','有你的季节，天空是蓝的，花儿是笑着的',
        389,'22分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','商业花篮');
insert into  goods values(null,'爱你一生一世',' 爱你一生一世/爱情鲜花  ',' 淡紫色棉纸圆形包装，紫色蝴蝶结束扎 ',' 亲爱的，新一年的开始，让我和你相約到永远，爱到 一生一世，永远不分离……. ',
        118,'8分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','商业花篮');
insert into  goods values(null,'牵挂','16支红玫瑰+黄莺+蕾丝花','内用白色羽纱，外用深绿色皱纹圆形包装 ',' 认识你以后才知道有一种心情叫做依恋，有一种感觉叫做牵挂！原来等待也可以如此美丽 ',
        128,'8分(每分代表一元,可用于下次购物)','配送全国各大中城市',
		'爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','商业花篮');
insert into  goods values(null,'亲情问候',' 粉色康乃馨22枝，满天星适量 ','内用白色羽纱，外用深绿色皱纹圆形包装 ',' 认识你以后才知道有一种心情叫做依恋，有一种感觉叫做牵挂！原来等待也可以如此美丽 ',
        78,'4分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','商业花篮');
insert into  goods values(null,'如此爱你',' 红玫瑰20枝，满天星丰满，高山羊齿8枝 ','内用白色羽纱，外用深绿色皱纹圆形包装 ',' 我的心里只有你，你占踞着我心全部！ ',
        128,'8分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','商业花篮');
insert into  goods values(null,'天籁之心(粉)',' 红玫瑰20枝，满天星丰满，高山羊齿8枝 ','内用白色羽纱，外用深绿色皱纹圆形包装 ',' 我的心里只有你，你占踞着我心全部！ ',
        88,'8分(每分代表一元,可用于下次购物)','配送全国各大中城市',
		'爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','商业花篮');
insert into  goods values(null,'想你爱你',' 红玫瑰20枝，满天星丰满，高山羊齿8枝 ',' 淡紫色皱纹纸包装，下托黄色皱纹纸，紫色丝带打结。圆形花束  ','想你一生，爱你一世 ',
        128,'8分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','商业花篮');
insert into  goods values(null,'欣欣向荣',' 6枝多头香水百合，16枝红玫瑰点缀，紫色勿忘我，黄莺和叶材的单侧花篮  ',' 花篮。精美包装  ','想你一生，爱你一世 ',
        118,'8分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','商业花篮');
insert into  goods values(null,'幸福连连','粉玫瑰9枝，粉色康乃馨9枝，黄莺丰满，满天星点缀 ',' 花篮。精美包装  ','祝福你 ！快乐永远！幸福连连！ ',
        82,'5分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','商业花篮');
insert into  goods values(null,'这样爱你','粉玫瑰9枝，粉色康乃馨9枝，黄莺丰满，满天星点缀 ',' 淡紫色皱纹纸里包装，红色皱纹纸外包装  ','想你一生，爱你一世',
        68,'10分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','商业花篮');

insert into  goods values(null,'台面鲜花','靓丽红玫瑰 28 枝，多头白色香水百合 1 枝，绿叶丰满','托盘花泥插花','我的思念是绵绵的风，从春到夏，从秋到冬，只要你的窗帘轻轻飘动，就是我在轻声地将你呼唤',
        208,'20分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','会议鲜花');
insert into  goods values(null,'台面鲜花',' 多头粉色香水百合，红色太阳菊，黄玫瑰，红色康乃馨，绿叶 ','高档绵纸,单面包装','我的思念是绵绵的风，从春到夏，从秋到冬，只要你的窗帘轻轻飘动，就是我在轻声地将你呼唤',
        158,'16分(每分代表一元,可用于下次购物)', '配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','会议鲜花');
insert into  goods values(null,'台面鲜花','  靓丽红玫瑰，粉色康乃馨，多头粉色香水百合，绿叶 ','托盘花泥插花',' 我的思念是绵绵的风，从春到夏，从秋到冬，只要你的窗帘轻轻飘动，就是我在轻声地将你呼唤 ',
        158,'15分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','会议鲜花');
insert into  goods values(null,'台面鲜花','  靓丽红玫瑰，粉色康乃馨，多头粉色香水百合，绿叶 ','托盘花泥插花',' 我的思念是绵绵的风，从春到夏，从秋到冬，只要你的窗帘轻轻飘动，就是我在轻声地将你呼唤 ',
        158,'15分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','会议鲜花');
insert into  goods values(null,' 会议用花','红掌、百合、剑兰、康乃馨','会议用花','宾馆、酒店前台摆放用花，签字仪式、会议用花',
        258,'30分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','会议鲜花');
insert into  goods values(null,'台面插花','扶郎、泰国兰、小菊、配叶、配草','会议用花','祝您生意兴隆',
        160,'16分(每分代表一元,可用于下次购物)','配送全国各大中城市',
		'爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','会议鲜花');
insert into  goods values(null,'大朵蝴蝶兰','大朵蝴蝶兰,並使用陶瓷花器五株','陶瓷花器','有你的季节，天空是蓝的，花儿是笑着的',
        560,'50分(每分代表一元,可用于下次购物)','配送全国各大中城市',
        '爱情 | 生日 | 思念 | 祝福 | 友情 | 会议 ','上架 ','会议鲜花');

------------------------------------------------------------
--厂商明细表插入数据
------------------------------------------------------------		
insert into produceDetails values('1','4','3079');
insert into produceDetails values('4','10','3124');
insert into produceDetails values('4','10','3125');
insert into produceDetails values('2','10','3124');
insert into produceDetails values('1','10','3126');
insert into produceDetails values('3','10','3127');
insert into produceDetails values('4','9','3104');
insert into produceDetails values('3','9','3103');
insert into produceDetails values('3','9','3102');
insert into produceDetails values('3','9','3103');
insert into produceDetails values('2','8','3075');
insert into produceDetails values('2','8','3076');
insert into produceDetails values('2','1','3066');
insert into produceDetails values('2','8','3074');
insert into produceDetails values('1','5','3077');
insert into produceDetails values('1','5','3076');
insert into produceDetails values('3','5','3064');
insert into produceDetails values('3','5','3118');
insert into produceDetails values('3','6','3100');
insert into produceDetails values('1','6','3086');
insert into produceDetails values('1', '7','3095');
insert into produceDetails values('2','7','3091');
insert into produceDetails values('2','7','3095');
insert into produceDetails values('2','3','3054');
insert into produceDetails values('2','3','3056');
insert into produceDetails values('4','2','3029');
insert into produceDetails values('4','2','3030');	
