SET NAMES UTF8;
DROP DATABASE IF EXISTS project;
CREATE DATABASE project CHARSET=UTF8;
USE project;

/******轮播图******/

CREATE TABLE project_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);

/******怀孕页面轮播图******/

CREATE TABLE pregnancy_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);

/******产后页面轮播图******/

CREATE TABLE childbirth_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);

/******育儿页面轮播图******/

CREATE TABLE teachChild_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);

/******生活页面轮播图******/

CREATE TABLE life_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);

/******精选页面轮播图******/

CREATE TABLE handpick_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);

/******楼层图******/

CREATE TABLE mainpt(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  href VARCHAR(128)
);

/******楼层内容******/

CREATE TABLE floor_cont(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(32),
  tips1 VARCHAR(64),
  tips2 VARCHAR(64),
  tips3 VARCHAR(64),
  tips4 VARCHAR(64)
);

INSERT INTO project_index_carousel VALUES
(NULL,'img/banners/banner/1.jpg','轮播图1','http://yuer.pcbaby.com.cn/376/3763484.html'),
(NULL,'img/banners/banner/2.jpg','轮播图2','http://pp.pcbaby.com.cn/photo/30018.html'),
(NULL,'img/banners/banner/3.jpg','轮播图3','http://product.pcbaby.com.cn/zx/fs/dg/1708/3725984.htm'),
(NULL,'img/banners/banner/4.jpg','轮播图4','http://ivy.pcbaby.com.cn/click?adid=456242&amp;id=pckids.shouye.jdt.'),
(NULL,'img/banners/banner/5.jpg','轮播图5','http://ivy.pcbaby.com.cn/click?adid=447438&amp;id=pckids.shouye.jdt.&amp;__uuid=5025');

INSERT INTO pregnancy_index_carousel VALUES
(NULL,'img/banners/pregnancy-banners/1.jpg','轮播图1','http://huaiyun.pcbaby.com.cn/374/3744484.html'),
(NULL,'img/banners/pregnancy-banners/2.jpg','轮播图2','http://huaiyun.pcbaby.com.cn/373/3730984.html'),
(NULL,'img/banners/pregnancy-banners/3.jpg','轮播图3','http://huaiyun.pcbaby.com.cn/370/3700064.html');

INSERT INTO childbirth_index_carousel VALUES
(NULL,'img/banners/childbirth-banners/1.jpg','轮播图1','http://chanhou.pcbaby.com.cn/371/3717706.html'),
(NULL,'img/banners/childbirth-banners/2.jpg','轮播图2','http://chanhou.pcbaby.com.cn/371/3717724.html'),
(NULL,'img/banners/childbirth-banners/3.jpg','轮播图3','http://chanhou.pcbaby.com.cn/371/3715504.html');

INSERT INTO teachChild_index_carousel VALUES
(NULL,'img/banners/teachChild-banners/1.jpg','轮播图1','http://yuer.pcbaby.com.cn/373/3735544.html'),
(NULL,'img/banners/teachChild-banners/2.jpg','轮播图2','http://yuer.pcbaby.com.cn/376/3763484.html'),
(NULL,'img/banners/teachChild-banners/3.jpg','轮播图3','http://pcbaby.pcvideo.com.cn/video-3155.html');

INSERT INTO life_index_carousel VALUES
(NULL,'img/banners/life-banners/1.jpg','轮播图1','http://life.pcbaby.com.cn/372/3728044.html'),
(NULL,'img/banners/life-banners/2.jpg','轮播图2','http://life.pcbaby.com.cn/374/3747024.html'),
(NULL,'img/banners/life-banners/3.jpg','轮播图3','http://life.pcbaby.com.cn/372/3720145.html');

INSERT INTO handpick_index_carousel VALUES
(NULL,'img/banners/handpick-banners/1.jpg','轮播图1','http://pcbaby.pcvideo.com.cn/video-3003.html'),
(NULL,'img/banners/handpick-banners/2.jpg','轮播图2','http://special.pcbaby.com.cn/368/zt3688324.html'),
(NULL,'img/banners/handpick-banners/3.jpg','轮播图3','http://pcbaby.pcvideo.com.cn/video-3043.html'),
(NULL,'img/banners/handpick-banners/4.jpg','轮播图4','http://special.pcbaby.com.cn/362/zt3622966.html'),
(NULL,'img/banners/handpick-banners/5.jpg','轮播图5','http://pcbaby.pcvideo.com.cn/video-2975.html');

INSERT INTO mainpt VALUES
(NULL,'img/banners/floor/1.png','http://bbs.pcbaby.com.cn/topic-19258610.html'),
(NULL,'img/banners/floor/2.png','http://product.pcbaby.com.cn/zx/pc/ry/1704/3498544.html'),
(NULL,'img/banners/floor/3.png','http://pcbaby.pcvideo.com.cn/video-3081.html'),
(NULL,'img/banners/floor/4.png','http://ivy.pcbaby.com.cn/click?adid=321770&amp;id=pckids.shouye.qtz.');

INSERT INTO floor_cont VALUES
(NULL,'看小便"晴雨表" 知宝宝健康','孕肚小 胎宝宝未必长不好','范建辉 产前需要去胎毒吗','大小宝适用 辅食添加攻略','注意3点 正确进行挫折教育'),
(NULL,'辅食有剩 这样保存营养不浪费','好的睡姿 养成高颜值的宝宝','妈咪烘焙屋 意式培根披萨','酸甜可口 西红柿木耳软面','朵妈手工课 海底世界贴画'),
(NULL,'五彩斑斓 教你做萌缤纷雪糕','开学季 家长们做好准备吗','什么水果 准妈妈吃更健康','掌握方法 养出"睡宝宝"','朵妈手工课 瓦楞纸立体树');

/******推荐工具******/

CREATE TABLE gd_name(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(8)
);
CREATE TABLE gs_name(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(8)
);
CREATE TABLE bd_name(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(8)
);
CREATE TABLE bs_name(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(8)
);
CREATE TABLE testres(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  score INT,
  evaluate VARCHAR(64)
);
CREATE TABLE renames(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  fname VARCHAR(2),
  lname VARCHAR(8),
  score INT,
  evaluate VARCHAR(64)
);
INSERT INTO gd_name VALUES
(1,"姿"),(null,"佩"),(null,"娟"),(null,"冰"),(null,"珂"),(null,"荷"),
(null,"彩"),(null,"艳"),(null,"丽"),(null,"婕"),(null,"悦"),(null,"仪"),
(null,"绵"),(null,"燕"),(null,"莉"),(null,"婷"),(null,"岚"),(null,"曼"),
(null,"娴"),(null,"莹"),(null,"桃"),(null,"琴"),(null,"君"),(null,"蓉"),
(null,"楠"),(null,"娜"),(null,"思"),(null,"蕙"),(null,"瑛"),(null,"紫"),
(null,"玲"),(null,"颖"),(null,"芊"),(null,"娇"),(null,"璐"),(null,"柔"),
(null,"畅"),(null,"晗"),(null,"琪"),(null,"虹"),(null,"姗"),(null,"贞"),
(null,"婧"),(null,"倩"),(null,"甜"),(null,"璇"),(null,"蕾"),(null,"芳"),
(null,"淑"),(null,"伊");
INSERT INTO gs_name VALUES
(1,"晓莹"),(null,"曼静"),(null,"心悦"),(null,"涵玉"),(null,"浣溪"),
(null,"依莲"),(null,"惜雪"),(null,"如芸"),(null,"寒烟"),(null,"泽娜"),
(null,"雅琴"),(null,"婉妍"),(null,"涟芸"),(null,"海瑶"),(null,"悦娜"),
(null,"熙晨"),(null,"乐帆"),(null,"心萍"),(null,"晓琳"),(null,"莉茜"),
(null,"思琪"),(null,"语晗"),(null,"奕婷"),(null,"雪瑶"),(null,"雅琳"),
(null,"心诺"),(null,"文娟"),(null,"欣凝"),(null,"佩洁"),(null,"晓月"),
(null,"佳婷"),(null,"文婷"),(null,"小萱"),(null,"馨慧"),(null,"思媛"),
(null,"碧珠"),(null,"文芳"),(null,"白灵"),(null,"秀圆"),(null,"璐娜"),
(null,"书瑶"),(null,"思敏"),(null,"佳琴"),(null,"文静"),(null,"雅芳"),
(null,"芹君"),(null,"雨嫣"),(null,"嘉怡"),(null,"思晨"),(null,"碧莹");
INSERT INTO bd_name VALUES
(1,"皓"),(null,"宸"),(null,"振"),(null,"涛"),(null,"宴"),(null,"飞"),
(null,"伦"),(null,"润"),(null,"兴"),(null,"航"),(null,"杰"),(null,"凯"),
(null,"恒"),(null,"麒"),(null,"升"),(null,"才"),(null,"良"),(null,"卓"),
(null,"茂"),(null,"义"),(null,"鹏"),(null,"仁"),(null,"渊"),(null,"喆"),
(null,"龙"),(null,"启"),(null,"逸"),(null,"轶"),(null,"海"),(null,"华"),
(null,"松"),(null,"嘉"),(null,"浩"),(null,"宽"),(null,"池"),(null,"泽"),
(null,"勉"),(null,"雷"),(null,"超"),(null,"烁"),(null,"乐"),(null,"新"),
(null,"星"),(null,"瀚"),(null,"瑞"),(null,"鑫"),(null,"威"),(null,"宪"),
(null,"宇"),(null,"赫");
INSERT INTO bs_name VALUES
(1,"佳明"),(null,"锐进"),(null,"逸明"),(null,"明轩"),(null,"志勇"),
(null,"锦程"),(null,"俊楚"),(null,"阳夏"),(null,"宇翔"),(null,"蔡晨"),
(null,"飞龙"),(null,"博瀚"),(null,"天瑞"),(null,"天承"),(null,"哲圣"),
(null,"冠宇"),(null,"立辉"),(null,"元恺"),(null,"梓浩"),(null,"建柏"),
(null,"泓潇"),(null,"腾远"),(null,"德辉"),(null,"俊达"),(null,"弘亮"),
(null,"正诚"),(null,"思昊"),(null,"景焕"),(null,"岳琨"),(null,"光熙"),
(null,"浩波"),(null,"皓轩"),(null,"宏才"),(null,"宇麒"),(null,"茂彦"),
(null,"明喆"),(null,"建明"),(null,"藤诚"),(null,"英杰"),(null,"天鸿"),
(null,"梦翔"),(null,"天骐"),(null,"展鹏"),(null,"佳俊"),(null,"耀然"),
(null,"志强"),(null,"志远"),(null,"书豪"),(null,"书凡"),(null,"文康");
INSERT INTO testres VALUES
(1,67,"这个名字一般，取这个名字，宝宝将来容易一意孤行，陷入孤军奋斗的困境。"),
(null,72,"这个名字还行，取这个名字宝宝将来辛勤努力之后终有收获，但这个收获比较晚。"),
(null,51,"这个名字很不好，少有成功的希望，易招病痛，甚至有急变灾祸。"),
(null,99," 这个名字取得非常好，这个名字寓意着宝宝，生来就有上天的庇佑。"),
(null,54,"这个名字很不好，取这个名字，宝宝将来身体上会经常有一些小毛病哦。"),
(null,75,"这个名字还行，取这个名字的宝宝，身体强壮，有运动天赋。"),
(null,80,"这个名字起得很不错，相信它会助你的宝宝一生顺利的。"),
(null,70," 这个名字一般，取这个名字，宝宝将来虽然桃花运旺盛，但对待感情，薄弱而不坚定。"),
(null,87," 这个名字很高尚，宝宝以后会给人一种高贵的气质。"),
(null,91," 这个名字取得非常好，会让宝宝将来更加孝顺父母，热爱家庭。"),
(null,100," 这个名字非常好，这个名字助宝宝一生有贵人相处，一帆风顺。"),
(null,90," 这个名字非常好，能让宝宝成为一个意志坚定的人，将来必成大器。"),
(null,59," 这个名字不太好，会令宝宝不善于言辞，容易被人误会。"),
(null,61," 这个名字一般，取这个名字的宝宝，处事容易冲动，耐力不佳。"),
(null,95," 这个名字非常好，取这个名字的宝宝，将来可能是一个志向远大的人，必有一番作为。"),
(null,78," 这个名字不错，取这个名字的宝宝，将来财运一般，但胜在有人真心相伴。"),
(null,68," 这个名字一般，取这个名字，宝宝虽然有一定的成功运，但是依赖性太强了。"),
(null,88," 这个名字很好，听起来很舒畅，给人一种如沐春风的感觉。"),
(null,50," 这个名字很不好，取此名可能对婚姻不利，需谨慎处理财富。"),
(null,96," 这个名字读起来气宇轩昂，寓意着宝宝以后做人光明磊落，堂堂正正。"),
(null,97," 这个名字非常好，会助宝宝成为一名博学多才的学者。"),
(null,89," 这个名字很好，会助宝宝名利双收，可获得意外的成功发展。");
INSERT INTO renames VALUES
(1,"张","三",89,"这个名字很好，会助宝宝名利双收，可获得意外的成功发展。");


/******life楼层图片轮播******/

CREATE TABLE index_lunbo_tishi(
    iltid INT PRIMARY KEY AUTO_INCREMENT,
    iltname VARCHAR(8),#标题
    ilttitle VARCHAR(8),#鼠标悬停时提示
    ilthref VARCHAR(128)#链接网址
);
CREATE TABLE index_lunbo_pic(
  ilpid INT PRIMARY KEY AUTO_INCREMENT,
  ilppic VARCHAR(128),#图片地址
  ilptip VARCHAR(16),#鼠标悬停时提示
  ilpspe BOOLEAN,#是否特殊，特殊为1，样式如同：相机png亲子游
  ilphref VARCHAR(128),#链接网址
  ilpzhanwei INT,#图片所占格数，注：只能横向
  ilpye INT #图片在轮播中的层数
);
INSERT INTO index_lunbo_tishi VALUES
(null,"乳铁蛋白","乳铁蛋白",";"),
(null,"男孩取名","男孩名字",";"),
(null,"女孩取名","女孩名字",";"),
(null,"小名","小名大全",";"),
(null,"双胞胎起名","双胞胎起名",";"),
(null,"生日祝福语","生日祝福语",";"),
(null,"暑假作业","暑假作业",";");
INSERT INTO index_lunbo_pic VALUES
(null,"img/img-cxq/0327qinziqiang.jpg","童真小伙伴 踏春趣游记",0,";",2,1),
(null,"img/img-cxq/qzy.png","亲子游",1,";",1,1),
(null,"img/img-cxq/0327qizixiao2.jpg","明媚春光小萌妞花海游",0,";",1,1),
(null,"img/img-cxq/0327.jpg","暖春季 萌娃乐游植物园",0,";",1,1),
(null,"img/img-cxq/0327qinzixiao3.jpg","趣意田园游 亲子采摘乐",0,";",1,1),
(null,"img/img-cxq/0327qiziqiangda2.jpg","乐享假日 温馨亲子园游乐",0,";",2,1),
(null,"img/img-cxq/0327qizixiao5.jpg","阳光小正太 春野乐悠游",0,";",1,1),
(null,"img/img-cxq/0327qinzixiao1.jpg","春意盎然小萌妞花海游",0,";",1,1),


(null,"img/img-cxq/0327mengbao3.jpg","活力小正太逗趣随心拍",0,";",1,2),
(null,"img/img-cxq/0327mengbao6.jpg","精灵小宝贝 萌趣创意照",0,";",1,2),
(null,"img/img-cxq/0327mengbao2.jpg","乐活小萌宝 趣意时光纪",0,";",1,2),
(null,"img/img-cxq/0327mengbao1.jpg","童真纪 萌宝逗趣满月照",0,";",2,2),
(null,"img/img-cxq/0327mengbao4.jpg","萌萌哒小妞国风文艺拍",0,";",1,2),
(null,"img/img-cxq/mb.png","萌宝",1,";",1,2),
(null,"img/img-cxq/0327mengbao.jpg","复古中国风 甜美闺蜜照",0,";",2,2),
(null,"img/img-cxq/0327mengbao7.jpg","活泼宝贝萌趣时尚大片",0,";",1,2),

(null,"img/img-cxq/382x245.jpg","夏克立 一生陪你做公主",0,";",2,3),
(null,"img/img-cxq/185x245.jpg","胡静：率性女神",0,";",1,3),
(null,"img/img-cxq/xm.png","星妈星爸",1,";",1,3),
(null,"img/img-cxq/tongleixb.jpg","童蕾：魅力妈妈",0,";",1,3),
(null,"img/img-cxq/xiujiekaixb.jpg","修杰楷：咘咘来了",0,";",1,3),
(null,"img/img-cxq/185x2454.jpg","梁静：大女人小心思",0,";",1,3),
(null,"img/img-cxq/zhangzhilin_1.jpg","张智霖：男神不老",0,";",1,3),
(null,"img/img-cxq/380x245.jpg","何冲：父亲是新角色",0,";",2,3),

(null,"img/img-cxq/1851xiu.jpg","周末到 日式料理约起来",0,";",1,4),
(null,"img/img-cxq/1852xiu.jpg","带上点心 和爸爸去郊游",0,";",1,4),
(null,"img/img-cxq/shanyao.jpg","健康时蔬 山药鲜香美味",0,";",1,4),
(null,"img/img-cxq/2.jpg","全麦膳食 为备孕添助力",0,";",2,4),
(null,"img/img-cxq/yumitang.jpg","产后喝骨汤 补钙促恢复",0,";",1,4),
(null,"img/img-cxq/3806xiu.jpg","红心火龙果 美丽好滋味",0,";",2,4),
(null,"img/img-cxq/ms.png ","美食",1,";",1,4),
(null,"img/img-cxq/18548xiu.jpg","家常美味 准妈妈好开胃",0,";",1,4),


(null,"img/img-cxq/s33.jpg","D&G",0,";",1,5),
(null,"img/img-cxq/s2.jpg","Stella McCartney",0,";",1,5),
(null,"img/img-cxq/1.jpg","Alfonso",0,";",1,5),
(null,"img/img-cxq/tzdp.png","童装大片",1,";",1,5),
(null,"img/img-cxq/s4.jpg","Amaia kids",0,";",1,5),
(null,"img/img-cxq/s1.jpg","H&M",0,";",1,5),
(null,"img/img-cxq/da.jpg","D&G",0,";",2,5),
(null,"img/img-cxq/3_1.jpg","Dior",0,";",2,5);

/******登录及注册******/

CREATE TABLE user(
	uid int primary key AUTO_INCREMENT,
	uname VARCHAR(10) NOT NULL DEFAULT "",
	upwd VARCHAR(32) NOT NULL DEFAULT "",
	email VARCHAR(32) NOT NULL DEFAULT "",
	phone VARCHAR(16)NOT NULL DEFAULT ""
);
INSERT INTO user VALUES(NULL,'Tom','123456','123@qq.con','12345612311');
INSERT INTO user VALUES(NULL,'Mary','123456','123@qq.con','12345612311');
INSERT INTO user VALUES(NULL,'King','123456','123@qq.con','18770032504');
INSERT INTO user VALUES(NULL,'lilei','123456','123@qq.con','18770032504');





/******个人中心 v妈推荐******/

CREATE TABLE rm(
	uid INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(128),
	content VARCHAR(8192),
	dtime DATETIME,
	keyword VARCHAR(128),
	href1 VARCHAR(254),
	href2 VARCHAR(254)
);
INSERT INTO rm VALUES
(1,'备孕困扰：月经期间同房那些事','月经期间可以同房吗？这是一个搜索频度较高的词，有些姐妹对备孕知识了解不多，不太会推算排卵期，也不知道月经期间是否会排卵。有些姐妹还在月经期间同房，以为也可以怀孕。下面就来了解一下月经期间同房那些事。','2012-07-04 17:57:28','经期同房的危害','http://huaiyun.pcbaby.com.cn/yunqian/xyc/1207/1115876.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%BE%AD%C6%DA%CD%AC%B7%BF%B5%C4%CE%A3%BA%A6'),
(NULL,'别老想着升儿子 生女儿三大好处','虽然大家知道重男轻女是封建思想，虽然也知道生男生女都一样，但还是有不少人心心念念盼着生儿子。其实生女儿也很多好处，如果你内心对生男生女有偏执，不妨来看看生女儿的好处，别老想着生儿子。','2012-07-04 16:10:30','生女儿的好处','http://huaiyun.pcbaby.com.cn/yunqian/shengyu/1207/1115816.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%C9%FA%C5%AE%B6%F9%B5%C4%BA%C3%B4%A6'),
(NULL,'孕前 给自己指定一个运动计划','不想因怀孕让身材一去不复返，及早下功夫是必要的！孕期保持好体重，产后快速进入瘦身角色，这些都还不够！最好从孕前就打好身体基础，不仅有利于产后身材恢复，还能帮助孕妈咪提升身体素质，更好孕育宝宝！','2016-06-06 16:28:51','备孕','http://huaiyun.pcbaby.com.cn/297/2976344.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NULL,'雀斑萌妹纸 父母遗传性更大','爱美之心，人皆有之。尤其是女性对美丽的要求更高。女人都希望自己能够拥有漂亮白皙的皮肤，性感妩媚的身材。但是现实生活中，很多女性被脸上的雀斑困扰，整个人都失去了自信。那么，为什么有的人先天会长雀斑呢?今天小编就为大家揭秘。','2016-05-25 17:27:47','备孕','http://huaiyun.pcbaby.com.cn/295/2952022.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(Null,'孕前口腔检查 不得不做的理由','备孕可不是说说而已，为了生个健康的宝宝，备孕爸妈也是拼了。他们在准备怀孕之前一般都会做很多准备工作，调整作息和饮食习惯， 做产前体检等等。很多人孕前都会事无巨细的做好各项检查，但是有一项往往容易忽视，那就是牙科检查，为什么孕前要检查牙齿？这里有不得不做的理由。','2016-03-23 16:08:23','备孕','http://huaiyun.pcbaby.com.cn/278/2785726.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NULL,'别老想着升儿子 生女儿三大好处','虽然大家知道重男轻女是封建思想，虽然也知道生男生女都一样，但还是有不少人心心念念盼着生儿子。其实生女儿也很多好处，如果你内心对生男生女有偏执，不妨来看看生女儿的好处，别老想着生儿子。','2012-07-04 16:10:30','生女儿的好处','http://huaiyun.pcbaby.com.cn/yunqian/shengyu/1207/1115816.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%C9%FA%C5%AE%B6%F9%B5%C4%BA%C3%B4%A6'),
(NULL,'孕前 给自己指定一个运动计划','不想因怀孕让身材一去不复返，及早下功夫是必要的！孕期保持好体重，产后快速进入瘦身角色，这些都还不够！最好从孕前就打好身体基础，不仅有利于产后身材恢复，还能帮助孕妈咪提升身体素质，更好孕育宝宝！','2016-06-06 16:28:51','备孕','http://huaiyun.pcbaby.com.cn/297/2976344.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NULL,'雀斑萌妹纸 父母遗传性更大','爱美之心，人皆有之。尤其是女性对美丽的要求更高。女人都希望自己能够拥有漂亮白皙的皮肤，性感妩媚的身材。但是现实生活中，很多女性被脸上的雀斑困扰，整个人都失去了自信。那么，为什么有的人先天会长雀斑呢?今天小编就为大家揭秘。','2016-05-25 17:27:47','备孕','http://huaiyun.pcbaby.com.cn/295/2952022.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NUll,'孕前口腔检查 不得不做的理由','备孕可不是说说而已，为了生个健康的宝宝，备孕爸妈也是拼了。他们在准备怀孕之前一般都会做很多准备工作，调整作息和饮食习惯， 做产前体检等等。很多人孕前都会事无巨细的做好各项检查，但是有一项往往容易忽视，那就是牙科检查，为什么孕前要检查牙齿？这里有不得不做的理由。','2016-03-23 16:08:23','备孕','http://huaiyun.pcbaby.com.cn/278/2785726.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NULL,'备孕困扰：月经期间同房那些事','月经期间可以同房吗？这是一个搜索频度较高的词，有些姐妹对备孕知识了解不多，不太会推算排卵期，也不知道月经期间是否会排卵。有些姐妹还在月经期间同房，以为也可以怀孕。下面就来了解一下月经期间同房那些事。','2012-07-04 17:57:28','经期同房的危害','http://huaiyun.pcbaby.com.cn/yunqian/xyc/1207/1115876.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%BE%AD%C6%DA%CD%AC%B7%BF%B5%C4%CE%A3%BA%A6'),
(NULL,'孕前 给自己指定一个运动计划','不想因怀孕让身材一去不复返，及早下功夫是必要的！孕期保持好体重，产后快速进入瘦身角色，这些都还不够！最好从孕前就打好身体基础，不仅有利于产后身材恢复，还能帮助孕妈咪提升身体素质，更好孕育宝宝！','2016-06-06 16:28:51','备孕','http://huaiyun.pcbaby.com.cn/297/2976344.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NULL,'雀斑萌妹纸 父母遗传性更大','爱美之心，人皆有之。尤其是女性对美丽的要求更高。女人都希望自己能够拥有漂亮白皙的皮肤，性感妩媚的身材。但是现实生活中，很多女性被脸上的雀斑困扰，整个人都失去了自信。那么，为什么有的人先天会长雀斑呢?今天小编就为大家揭秘。','2016-05-25 17:27:47','备孕','http://huaiyun.pcbaby.com.cn/295/2952022.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(Null,'孕前口腔检查 不得不做的理由','备孕可不是说说而已，为了生个健康的宝宝，备孕爸妈也是拼了。他们在准备怀孕之前一般都会做很多准备工作，调整作息和饮食习惯， 做产前体检等等。很多人孕前都会事无巨细的做好各项检查，但是有一项往往容易忽视，那就是牙科检查，为什么孕前要检查牙齿？这里有不得不做的理由。','2016-03-23 16:08:23','备孕','http://huaiyun.pcbaby.com.cn/278/2785726.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NULL,'别老想着升儿子 生女儿三大好处','虽然大家知道重男轻女是封建思想，虽然也知道生男生女都一样，但还是有不少人心心念念盼着生儿子。其实生女儿也很多好处，如果你内心对生男生女有偏执，不妨来看看生女儿的好处，别老想着生儿子。','2012-07-04 16:10:30','生女儿的好处','http://huaiyun.pcbaby.com.cn/yunqian/shengyu/1207/1115816.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%C9%FA%C5%AE%B6%F9%B5%C4%BA%C3%B4%A6'),
(NULL,'孕前 给自己指定一个运动计划','不想因怀孕让身材一去不复返，及早下功夫是必要的！孕期保持好体重，产后快速进入瘦身角色，这些都还不够！最好从孕前就打好身体基础，不仅有利于产后身材恢复，还能帮助孕妈咪提升身体素质，更好孕育宝宝！','2016-06-06 16:28:51','备孕','http://huaiyun.pcbaby.com.cn/297/2976344.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NULL,'雀斑萌妹纸 父母遗传性更大','爱美之心，人皆有之。尤其是女性对美丽的要求更高。女人都希望自己能够拥有漂亮白皙的皮肤，性感妩媚的身材。但是现实生活中，很多女性被脸上的雀斑困扰，整个人都失去了自信。那么，为什么有的人先天会长雀斑呢?今天小编就为大家揭秘。','2016-05-25 17:27:47','备孕','http://huaiyun.pcbaby.com.cn/295/2952022.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NULL,'别老想着升儿子 生女儿三大好处','虽然大家知道重男轻女是封建思想，虽然也知道生男生女都一样，但还是有不少人心心念念盼着生儿子。其实生女儿也很多好处，如果你内心对生男生女有偏执，不妨来看看生女儿的好处，别老想着生儿子。','2012-07-04 16:10:30','生女儿的好处','http://huaiyun.pcbaby.com.cn/yunqian/shengyu/1207/1115816.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%C9%FA%C5%AE%B6%F9%B5%C4%BA%C3%B4%A6'),
(NULL,'孕前 给自己指定一个运动计划','不想因怀孕让身材一去不复返，及早下功夫是必要的！孕期保持好体重，产后快速进入瘦身角色，这些都还不够！最好从孕前就打好身体基础，不仅有利于产后身材恢复，还能帮助孕妈咪提升身体素质，更好孕育宝宝！','2016-06-06 16:28:51','备孕','http://huaiyun.pcbaby.com.cn/297/2976344.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NULL,'雀斑萌妹纸 父母遗传性更大','爱美之心，人皆有之。尤其是女性对美丽的要求更高。女人都希望自己能够拥有漂亮白皙的皮肤，性感妩媚的身材。但是现实生活中，很多女性被脸上的雀斑困扰，整个人都失去了自信。那么，为什么有的人先天会长雀斑呢?今天小编就为大家揭秘。','2016-05-25 17:27:47','备孕','http://huaiyun.pcbaby.com.cn/295/2952022.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NUll,'孕前口腔检查 不得不做的理由','备孕可不是说说而已，为了生个健康的宝宝，备孕爸妈也是拼了。他们在准备怀孕之前一般都会做很多准备工作，调整作息和饮食习惯， 做产前体检等等。很多人孕前都会事无巨细的做好各项检查，但是有一项往往容易忽视，那就是牙科检查，为什么孕前要检查牙齿？这里有不得不做的理由。','2016-03-23 16:08:23','备孕','http://huaiyun.pcbaby.com.cn/278/2785726.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NULL,'备孕困扰：月经期间同房那些事','月经期间可以同房吗？这是一个搜索频度较高的词，有些姐妹对备孕知识了解不多，不太会推算排卵期，也不知道月经期间是否会排卵。有些姐妹还在月经期间同房，以为也可以怀孕。下面就来了解一下月经期间同房那些事。','2012-07-04 17:57:28','经期同房的危害','http://huaiyun.pcbaby.com.cn/yunqian/xyc/1207/1115876.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%BE%AD%C6%DA%CD%AC%B7%BF%B5%C4%CE%A3%BA%A6'),
(NULL,'孕前 给自己指定一个运动计划','不想因怀孕让身材一去不复返，及早下功夫是必要的！孕期保持好体重，产后快速进入瘦身角色，这些都还不够！最好从孕前就打好身体基础，不仅有利于产后身材恢复，还能帮助孕妈咪提升身体素质，更好孕育宝宝！','2016-06-06 16:28:51','备孕','http://huaiyun.pcbaby.com.cn/297/2976344.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NULL,'雀斑萌妹纸 父母遗传性更大','爱美之心，人皆有之。尤其是女性对美丽的要求更高。女人都希望自己能够拥有漂亮白皙的皮肤，性感妩媚的身材。但是现实生活中，很多女性被脸上的雀斑困扰，整个人都失去了自信。那么，为什么有的人先天会长雀斑呢?今天小编就为大家揭秘。','2016-05-25 17:27:47','备孕','http://huaiyun.pcbaby.com.cn/295/2952022.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(Null,'孕前口腔检查 不得不做的理由','备孕可不是说说而已，为了生个健康的宝宝，备孕爸妈也是拼了。他们在准备怀孕之前一般都会做很多准备工作，调整作息和饮食习惯， 做产前体检等等。很多人孕前都会事无巨细的做好各项检查，但是有一项往往容易忽视，那就是牙科检查，为什么孕前要检查牙齿？这里有不得不做的理由。','2016-03-23 16:08:23','备孕','http://huaiyun.pcbaby.com.cn/278/2785726.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(Null,'孕前口腔检查 不得不做的理由','备孕可不是说说而已，为了生个健康的宝宝，备孕爸妈也是拼了。他们在准备怀孕之前一般都会做很多准备工作，调整作息和饮食习惯， 做产前体检等等。很多人孕前都会事无巨细的做好各项检查，但是有一项往往容易忽视，那就是牙科检查，为什么孕前要检查牙齿？这里有不得不做的理由。','2016-03-23 16:08:23','备孕','http://huaiyun.pcbaby.com.cn/278/2785726.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NULL,'别老想着升儿子 生女儿三大好处','虽然大家知道重男轻女是封建思想，虽然也知道生男生女都一样，但还是有不少人心心念念盼着生儿子。其实生女儿也很多好处，如果你内心对生男生女有偏执，不妨来看看生女儿的好处，别老想着生儿子。','2012-07-04 16:10:30','生女儿的好处','http://huaiyun.pcbaby.com.cn/yunqian/shengyu/1207/1115816.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%C9%FA%C5%AE%B6%F9%B5%C4%BA%C3%B4%A6'),
(NULL,'孕前 给自己指定一个运动计划','不想因怀孕让身材一去不复返，及早下功夫是必要的！孕期保持好体重，产后快速进入瘦身角色，这些都还不够！最好从孕前就打好身体基础，不仅有利于产后身材恢复，还能帮助孕妈咪提升身体素质，更好孕育宝宝！','2016-06-06 16:28:51','备孕','http://huaiyun.pcbaby.com.cn/297/2976344.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NULL,'雀斑萌妹纸 父母遗传性更大','爱美之心，人皆有之。尤其是女性对美丽的要求更高。女人都希望自己能够拥有漂亮白皙的皮肤，性感妩媚的身材。但是现实生活中，很多女性被脸上的雀斑困扰，整个人都失去了自信。那么，为什么有的人先天会长雀斑呢?今天小编就为大家揭秘。','2016-05-25 17:27:47','备孕','http://huaiyun.pcbaby.com.cn/295/2952022.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NUll,'孕前口腔检查 不得不做的理由','备孕可不是说说而已，为了生个健康的宝宝，备孕爸妈也是拼了。他们在准备怀孕之前一般都会做很多准备工作，调整作息和饮食习惯， 做产前体检等等。很多人孕前都会事无巨细的做好各项检查，但是有一项往往容易忽视，那就是牙科检查，为什么孕前要检查牙齿？这里有不得不做的理由。','2016-03-23 16:08:23','备孕','http://huaiyun.pcbaby.com.cn/278/2785726.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NULL,'备孕困扰：月经期间同房那些事','月经期间可以同房吗？这是一个搜索频度较高的词，有些姐妹对备孕知识了解不多，不太会推算排卵期，也不知道月经期间是否会排卵。有些姐妹还在月经期间同房，以为也可以怀孕。下面就来了解一下月经期间同房那些事。','2012-07-04 17:57:28','经期同房的危害','http://huaiyun.pcbaby.com.cn/yunqian/xyc/1207/1115876.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%BE%AD%C6%DA%CD%AC%B7%BF%B5%C4%CE%A3%BA%A6'),
(NULL,'孕前 给自己指定一个运动计划','不想因怀孕让身材一去不复返，及早下功夫是必要的！孕期保持好体重，产后快速进入瘦身角色，这些都还不够！最好从孕前就打好身体基础，不仅有利于产后身材恢复，还能帮助孕妈咪提升身体素质，更好孕育宝宝！','2016-06-06 16:28:51','备孕','http://huaiyun.pcbaby.com.cn/297/2976344.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NULL,'雀斑萌妹纸 父母遗传性更大','爱美之心，人皆有之。尤其是女性对美丽的要求更高。女人都希望自己能够拥有漂亮白皙的皮肤，性感妩媚的身材。但是现实生活中，很多女性被脸上的雀斑困扰，整个人都失去了自信。那么，为什么有的人先天会长雀斑呢?今天小编就为大家揭秘。','2016-05-25 17:27:47','备孕','http://huaiyun.pcbaby.com.cn/295/2952022.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(Null,'孕前口腔检查 不得不做的理由','备孕可不是说说而已，为了生个健康的宝宝，备孕爸妈也是拼了。他们在准备怀孕之前一般都会做很多准备工作，调整作息和饮食习惯， 做产前体检等等。很多人孕前都会事无巨细的做好各项检查，但是有一项往往容易忽视，那就是牙科检查，为什么孕前要检查牙齿？这里有不得不做的理由。','2016-03-23 16:08:23','备孕','http://huaiyun.pcbaby.com.cn/278/2785726.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NULL,'别老想着升儿子 生女儿三大好处','虽然大家知道重男轻女是封建思想，虽然也知道生男生女都一样，但还是有不少人心心念念盼着生儿子。其实生女儿也很多好处，如果你内心对生男生女有偏执，不妨来看看生女儿的好处，别老想着生儿子。','2012-07-04 16:10:30','生女儿的好处','http://huaiyun.pcbaby.com.cn/yunqian/shengyu/1207/1115816.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%C9%FA%C5%AE%B6%F9%B5%C4%BA%C3%B4%A6'),
(NULL,'孕前 给自己指定一个运动计划','不想因怀孕让身材一去不复返，及早下功夫是必要的！孕期保持好体重，产后快速进入瘦身角色，这些都还不够！最好从孕前就打好身体基础，不仅有利于产后身材恢复，还能帮助孕妈咪提升身体素质，更好孕育宝宝！','2016-06-06 16:28:51','备孕','http://huaiyun.pcbaby.com.cn/297/2976344.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NULL,'雀斑萌妹纸 父母遗传性更大','爱美之心，人皆有之。尤其是女性对美丽的要求更高。女人都希望自己能够拥有漂亮白皙的皮肤，性感妩媚的身材。但是现实生活中，很多女性被脸上的雀斑困扰，整个人都失去了自信。那么，为什么有的人先天会长雀斑呢?今天小编就为大家揭秘。','2016-05-25 17:27:47','备孕','http://huaiyun.pcbaby.com.cn/295/2952022.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(Null,'孕前口腔检查 不得不做的理由','备孕可不是说说而已，为了生个健康的宝宝，备孕爸妈也是拼了。他们在准备怀孕之前一般都会做很多准备工作，调整作息和饮食习惯， 做产前体检等等。很多人孕前都会事无巨细的做好各项检查，但是有一项往往容易忽视，那就是牙科检查，为什么孕前要检查牙齿？这里有不得不做的理由。','2016-03-23 16:08:23','备孕','http://huaiyun.pcbaby.com.cn/278/2785726.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(Null,'孕前口腔检查 不得不做的理由','备孕可不是说说而已，为了生个健康的宝宝，备孕爸妈也是拼了。他们在准备怀孕之前一般都会做很多准备工作，调整作息和饮食习惯， 做产前体检等等。很多人孕前都会事无巨细的做好各项检查，但是有一项往往容易忽视，那就是牙科检查，为什么孕前要检查牙齿？这里有不得不做的理由。','2016-03-23 16:08:23','备孕','http://huaiyun.pcbaby.com.cn/278/2785726.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NULL,'别老想着升儿子 生女儿三大好处','虽然大家知道重男轻女是封建思想，虽然也知道生男生女都一样，但还是有不少人心心念念盼着生儿子。其实生女儿也很多好处，如果你内心对生男生女有偏执，不妨来看看生女儿的好处，别老想着生儿子。','2012-07-04 16:10:30','生女儿的好处','http://huaiyun.pcbaby.com.cn/yunqian/shengyu/1207/1115816.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%C9%FA%C5%AE%B6%F9%B5%C4%BA%C3%B4%A6'),
(NULL,'孕前 给自己指定一个运动计划','不想因怀孕让身材一去不复返，及早下功夫是必要的！孕期保持好体重，产后快速进入瘦身角色，这些都还不够！最好从孕前就打好身体基础，不仅有利于产后身材恢复，还能帮助孕妈咪提升身体素质，更好孕育宝宝！','2016-06-06 16:28:51','备孕','http://huaiyun.pcbaby.com.cn/297/2976344.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NULL,'雀斑萌妹纸 父母遗传性更大','爱美之心，人皆有之。尤其是女性对美丽的要求更高。女人都希望自己能够拥有漂亮白皙的皮肤，性感妩媚的身材。但是现实生活中，很多女性被脸上的雀斑困扰，整个人都失去了自信。那么，为什么有的人先天会长雀斑呢?今天小编就为大家揭秘。','2016-05-25 17:27:47','备孕','http://huaiyun.pcbaby.com.cn/295/2952022.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NUll,'孕前口腔检查 不得不做的理由','备孕可不是说说而已，为了生个健康的宝宝，备孕爸妈也是拼了。他们在准备怀孕之前一般都会做很多准备工作，调整作息和饮食习惯， 做产前体检等等。很多人孕前都会事无巨细的做好各项检查，但是有一项往往容易忽视，那就是牙科检查，为什么孕前要检查牙齿？这里有不得不做的理由。','2016-03-23 16:08:23','备孕','http://huaiyun.pcbaby.com.cn/278/2785726.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NULL,'备孕困扰：月经期间同房那些事','月经期间可以同房吗？这是一个搜索频度较高的词，有些姐妹对备孕知识了解不多，不太会推算排卵期，也不知道月经期间是否会排卵。有些姐妹还在月经期间同房，以为也可以怀孕。下面就来了解一下月经期间同房那些事。','2012-07-04 17:57:28','经期同房的危害','http://huaiyun.pcbaby.com.cn/yunqian/xyc/1207/1115876.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%BE%AD%C6%DA%CD%AC%B7%BF%B5%C4%CE%A3%BA%A6'),
(NULL,'别老想着升儿子 生女儿三大好处','虽然大家知道重男轻女是封建思想，虽然也知道生男生女都一样，但还是有不少人心心念念盼着生儿子。其实生女儿也很多好处，如果你内心对生男生女有偏执，不妨来看看生女儿的好处，别老想着生儿子。','2012-07-04 16:10:30','生女儿的好处','http://huaiyun.pcbaby.com.cn/yunqian/shengyu/1207/1115816.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%C9%FA%C5%AE%B6%F9%B5%C4%BA%C3%B4%A6'),
(NULL,'孕前 给自己指定一个运动计划','不想因怀孕让身材一去不复返，及早下功夫是必要的！孕期保持好体重，产后快速进入瘦身角色，这些都还不够！最好从孕前就打好身体基础，不仅有利于产后身材恢复，还能帮助孕妈咪提升身体素质，更好孕育宝宝！','2016-06-06 16:28:51','备孕','http://huaiyun.pcbaby.com.cn/297/2976344.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NULL,'雀斑萌妹纸 父母遗传性更大','爱美之心，人皆有之。尤其是女性对美丽的要求更高。女人都希望自己能够拥有漂亮白皙的皮肤，性感妩媚的身材。但是现实生活中，很多女性被脸上的雀斑困扰，整个人都失去了自信。那么，为什么有的人先天会长雀斑呢?今天小编就为大家揭秘。','2016-05-25 17:27:47','备孕','http://huaiyun.pcbaby.com.cn/295/2952022.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NUll,'孕前口腔检查 不得不做的理由','备孕可不是说说而已，为了生个健康的宝宝，备孕爸妈也是拼了。他们在准备怀孕之前一般都会做很多准备工作，调整作息和饮食习惯， 做产前体检等等。很多人孕前都会事无巨细的做好各项检查，但是有一项往往容易忽视，那就是牙科检查，为什么孕前要检查牙齿？这里有不得不做的理由。','2016-03-23 16:08:23','备孕','http://huaiyun.pcbaby.com.cn/278/2785726.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NULL,'备孕困扰：月经期间同房那些事','月经期间可以同房吗？这是一个搜索频度较高的词，有些姐妹对备孕知识了解不多，不太会推算排卵期，也不知道月经期间是否会排卵。有些姐妹还在月经期间同房，以为也可以怀孕。下面就来了解一下月经期间同房那些事。','2012-07-04 17:57:28','经期同房的危害','http://huaiyun.pcbaby.com.cn/yunqian/xyc/1207/1115876.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%BE%AD%C6%DA%CD%AC%B7%BF%B5%C4%CE%A3%BA%A6'),
(NULL,'孕前 给自己指定一个运动计划','不想因怀孕让身材一去不复返，及早下功夫是必要的！孕期保持好体重，产后快速进入瘦身角色，这些都还不够！最好从孕前就打好身体基础，不仅有利于产后身材恢复，还能帮助孕妈咪提升身体素质，更好孕育宝宝！','2016-06-06 16:28:51','备孕','http://huaiyun.pcbaby.com.cn/297/2976344.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NULL,'雀斑萌妹纸 父母遗传性更大','爱美之心，人皆有之。尤其是女性对美丽的要求更高。女人都希望自己能够拥有漂亮白皙的皮肤，性感妩媚的身材。但是现实生活中，很多女性被脸上的雀斑困扰，整个人都失去了自信。那么，为什么有的人先天会长雀斑呢?今天小编就为大家揭秘。','2016-05-25 17:27:47','备孕','http://huaiyun.pcbaby.com.cn/295/2952022.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(Null,'孕前口腔检查 不得不做的理由','备孕可不是说说而已，为了生个健康的宝宝，备孕爸妈也是拼了。他们在准备怀孕之前一般都会做很多准备工作，调整作息和饮食习惯， 做产前体检等等。很多人孕前都会事无巨细的做好各项检查，但是有一项往往容易忽视，那就是牙科检查，为什么孕前要检查牙齿？这里有不得不做的理由。','2016-03-23 16:08:23','备孕','http://huaiyun.pcbaby.com.cn/278/2785726.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(Null,'孕前口腔检查 不得不做的理由','备孕可不是说说而已，为了生个健康的宝宝，备孕爸妈也是拼了。他们在准备怀孕之前一般都会做很多准备工作，调整作息和饮食习惯， 做产前体检等等。很多人孕前都会事无巨细的做好各项检查，但是有一项往往容易忽视，那就是牙科检查，为什么孕前要检查牙齿？这里有不得不做的理由。','2016-03-23 16:08:23','备孕','http://huaiyun.pcbaby.com.cn/278/2785726.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NULL,'别老想着升儿子 生女儿三大好处','虽然大家知道重男轻女是封建思想，虽然也知道生男生女都一样，但还是有不少人心心念念盼着生儿子。其实生女儿也很多好处，如果你内心对生男生女有偏执，不妨来看看生女儿的好处，别老想着生儿子。','2012-07-04 16:10:30','生女儿的好处','http://huaiyun.pcbaby.com.cn/yunqian/shengyu/1207/1115816.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%C9%FA%C5%AE%B6%F9%B5%C4%BA%C3%B4%A6'),
(NULL,'孕前 给自己指定一个运动计划','不想因怀孕让身材一去不复返，及早下功夫是必要的！孕期保持好体重，产后快速进入瘦身角色，这些都还不够！最好从孕前就打好身体基础，不仅有利于产后身材恢复，还能帮助孕妈咪提升身体素质，更好孕育宝宝！','2016-06-06 16:28:51','备孕','http://huaiyun.pcbaby.com.cn/297/2976344.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NULL,'雀斑萌妹纸 父母遗传性更大','爱美之心，人皆有之。尤其是女性对美丽的要求更高。女人都希望自己能够拥有漂亮白皙的皮肤，性感妩媚的身材。但是现实生活中，很多女性被脸上的雀斑困扰，整个人都失去了自信。那么，为什么有的人先天会长雀斑呢?今天小编就为大家揭秘。','2016-05-25 17:27:47','备孕','http://huaiyun.pcbaby.com.cn/295/2952022.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NUll,'孕前口腔检查 不得不做的理由','备孕可不是说说而已，为了生个健康的宝宝，备孕爸妈也是拼了。他们在准备怀孕之前一般都会做很多准备工作，调整作息和饮食习惯， 做产前体检等等。很多人孕前都会事无巨细的做好各项检查，但是有一项往往容易忽视，那就是牙科检查，为什么孕前要检查牙齿？这里有不得不做的理由。','2016-03-23 16:08:23','备孕','http://huaiyun.pcbaby.com.cn/278/2785726.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NULL,'备孕困扰：月经期间同房那些事','月经期间可以同房吗？这是一个搜索频度较高的词，有些姐妹对备孕知识了解不多，不太会推算排卵期，也不知道月经期间是否会排卵。有些姐妹还在月经期间同房，以为也可以怀孕。下面就来了解一下月经期间同房那些事。','2012-07-04 17:57:28','经期同房的危害','http://huaiyun.pcbaby.com.cn/yunqian/xyc/1207/1115876.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%BE%AD%C6%DA%CD%AC%B7%BF%B5%C4%CE%A3%BA%A6'),
(NULL,'孕前 给自己指定一个运动计划','不想因怀孕让身材一去不复返，及早下功夫是必要的！孕期保持好体重，产后快速进入瘦身角色，这些都还不够！最好从孕前就打好身体基础，不仅有利于产后身材恢复，还能帮助孕妈咪提升身体素质，更好孕育宝宝！','2016-06-06 16:28:51','备孕','http://huaiyun.pcbaby.com.cn/297/2976344.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NULL,'雀斑萌妹纸 父母遗传性更大','爱美之心，人皆有之。尤其是女性对美丽的要求更高。女人都希望自己能够拥有漂亮白皙的皮肤，性感妩媚的身材。但是现实生活中，很多女性被脸上的雀斑困扰，整个人都失去了自信。那么，为什么有的人先天会长雀斑呢?今天小编就为大家揭秘。','2016-05-25 17:27:47','备孕','http://huaiyun.pcbaby.com.cn/295/2952022.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(Null,'孕前口腔检查 不得不做的理由','备孕可不是说说而已，为了生个健康的宝宝，备孕爸妈也是拼了。他们在准备怀孕之前一般都会做很多准备工作，调整作息和饮食习惯， 做产前体检等等。很多人孕前都会事无巨细的做好各项检查，但是有一项往往容易忽视，那就是牙科检查，为什么孕前要检查牙齿？这里有不得不做的理由。','2016-03-23 16:08:23','备孕','http://huaiyun.pcbaby.com.cn/278/2785726.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NULL,'别老想着升儿子 生女儿三大好处','虽然大家知道重男轻女是封建思想，虽然也知道生男生女都一样，但还是有不少人心心念念盼着生儿子。其实生女儿也很多好处，如果你内心对生男生女有偏执，不妨来看看生女儿的好处，别老想着生儿子。','2012-07-04 16:10:30','生女儿的好处','http://huaiyun.pcbaby.com.cn/yunqian/shengyu/1207/1115816.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%C9%FA%C5%AE%B6%F9%B5%C4%BA%C3%B4%A6'),
(NULL,'孕前 给自己指定一个运动计划','不想因怀孕让身材一去不复返，及早下功夫是必要的！孕期保持好体重，产后快速进入瘦身角色，这些都还不够！最好从孕前就打好身体基础，不仅有利于产后身材恢复，还能帮助孕妈咪提升身体素质，更好孕育宝宝！','2016-06-06 16:28:51','备孕','http://huaiyun.pcbaby.com.cn/297/2976344.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NULL,'雀斑萌妹纸 父母遗传性更大','爱美之心，人皆有之。尤其是女性对美丽的要求更高。女人都希望自己能够拥有漂亮白皙的皮肤，性感妩媚的身材。但是现实生活中，很多女性被脸上的雀斑困扰，整个人都失去了自信。那么，为什么有的人先天会长雀斑呢?今天小编就为大家揭秘。','2016-05-25 17:27:47','备孕','http://huaiyun.pcbaby.com.cn/295/2952022.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(Null,'孕前口腔检查 不得不做的理由','备孕可不是说说而已，为了生个健康的宝宝，备孕爸妈也是拼了。他们在准备怀孕之前一般都会做很多准备工作，调整作息和饮食习惯， 做产前体检等等。很多人孕前都会事无巨细的做好各项检查，但是有一项往往容易忽视，那就是牙科检查，为什么孕前要检查牙齿？这里有不得不做的理由。','2016-03-23 16:08:23','备孕','http://huaiyun.pcbaby.com.cn/278/2785726.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(Null,'孕前口腔检查 不得不做的理由','备孕可不是说说而已，为了生个健康的宝宝，备孕爸妈也是拼了。他们在准备怀孕之前一般都会做很多准备工作，调整作息和饮食习惯， 做产前体检等等。很多人孕前都会事无巨细的做好各项检查，但是有一项往往容易忽视，那就是牙科检查，为什么孕前要检查牙齿？这里有不得不做的理由。','2016-03-23 16:08:23','备孕','http://huaiyun.pcbaby.com.cn/278/2785726.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NULL,'别老想着升儿子 生女儿三大好处','虽然大家知道重男轻女是封建思想，虽然也知道生男生女都一样，但还是有不少人心心念念盼着生儿子。其实生女儿也很多好处，如果你内心对生男生女有偏执，不妨来看看生女儿的好处，别老想着生儿子。','2012-07-04 16:10:30','生女儿的好处','http://huaiyun.pcbaby.com.cn/yunqian/shengyu/1207/1115816.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%C9%FA%C5%AE%B6%F9%B5%C4%BA%C3%B4%A6'),
(NULL,'孕前 给自己指定一个运动计划','不想因怀孕让身材一去不复返，及早下功夫是必要的！孕期保持好体重，产后快速进入瘦身角色，这些都还不够！最好从孕前就打好身体基础，不仅有利于产后身材恢复，还能帮助孕妈咪提升身体素质，更好孕育宝宝！','2016-06-06 16:28:51','备孕','http://huaiyun.pcbaby.com.cn/297/2976344.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NULL,'雀斑萌妹纸 父母遗传性更大','爱美之心，人皆有之。尤其是女性对美丽的要求更高。女人都希望自己能够拥有漂亮白皙的皮肤，性感妩媚的身材。但是现实生活中，很多女性被脸上的雀斑困扰，整个人都失去了自信。那么，为什么有的人先天会长雀斑呢?今天小编就为大家揭秘。','2016-05-25 17:27:47','备孕','http://huaiyun.pcbaby.com.cn/295/2952022.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NUll,'孕前口腔检查 不得不做的理由','备孕可不是说说而已，为了生个健康的宝宝，备孕爸妈也是拼了。他们在准备怀孕之前一般都会做很多准备工作，调整作息和饮食习惯， 做产前体检等等。很多人孕前都会事无巨细的做好各项检查，但是有一项往往容易忽视，那就是牙科检查，为什么孕前要检查牙齿？这里有不得不做的理由。','2016-03-23 16:08:23','备孕','http://huaiyun.pcbaby.com.cn/278/2785726.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%B1%B8%D4%D0'),
(NULL,'备孕困扰：月经期间同房那些事','月经期间可以同房吗？这是一个搜索频度较高的词，有些姐妹对备孕知识了解不多，不太会推算排卵期，也不知道月经期间是否会排卵。有些姐妹还在月经期间同房，以为也可以怀孕。下面就来了解一下月经期间同房那些事。','2012-07-04 17:57:28','经期同房的危害','http://huaiyun.pcbaby.com.cn/yunqian/xyc/1207/1115876.html','http://ks.pcbaby.com.cn/kids_index.jsp?q=%BE%AD%C6%DA%CD%AC%B7%BF%B5%C4%CE%A3%BA%A6');

/******精选专题页面******/

CREATE TABLE zhuanti_lunbo(
  ztlbid INT PRIMARY KEY AUTO_INCREMENT,
  ztlbtitle VARCHAR(16),#鼠标悬停时提示
  ztlbpic VARCHAR(128),#图片地址
  ztlbhref VARCHAR(128) #链接网址
);
INSERT INTO zhuanti_lunbo VALUES
(null,"刷牙大作战 让乳牙更健康","img/zhuanti/1.jpg","#"),
(null,"戴娇倩：爱与陪伴 影视女王的温情育儿","img/zhuanti/2.jpg","#"),
(null,"走心横评 四款宝宝棉柔巾","img/zhuanti/3.jpg","#"),
(null,"奶粉颜色偏黄？原来是因为…","img/zhuanti/4.jpg","#"),
(null,"原来是它 纸尿裤的吸水秘密","img/zhuanti/5.jpg","#");

CREATE TABLE zhuanti_pplm(
  ztppid INT PRIMARY KEY AUTO_INCREMENT,
  ztpptt VARCHAR(16),
  ztpphref VARCHAR(128)
);
INSERT INTO zhuanti_pplm VALUES
(null,"PCbaby宝贝购","#"),
(null,"PCbaby新主张","#"),
(null,"PCbaby潮童","#"),
(null,"榜样星妈","#"),
(null,"榜样星爸","#"),
(null,"妈咪私享家","#"),
(null,"妈妈娱乐观","#"),
(null,"亲子乐享会","#"),
(null,"数读母婴","#"),
(null,"问编辑","#"),
(null,"细节控","#"),
(null,"星妈必修课","#"),
(null,"测评擂台","#");

CREATE TABLE zhuanti_lc(
  ztlcid INT PRIMARY KEY AUTO_INCREMENT,
  ztlctt VARCHAR(20), #标题
  ztlcpic VARCHAR(128),#图片地址
  ztlcjj VARCHAR(40),#一句话介绍
  ztlchref VARCHAR(128),#链接
  ztlclb VARCHAR(4) #所属专题名
);
INSERT INTO zhuanti_lc VALUES
(null,"网络时代 育儿需要正能量","img/zhuanti/zt1.jpg","“问题奶粉”“儿童性早熟”…我们从互联网获取知识帮助更好养育的同时，也...","#","怀孕专题"),
(null,"双薪家庭 爸妈上班教育不缺席","img/zhuanti/zt2.jpg","放暑假啦！孩子乐了，把书包一甩，头一扭，屁颠屁颠的玩去了。可惜，孩子放...","#","怀孕专题"),
(null,"女人三十 爱自己的女人更幸福","img/zhuanti/zt3.jpg","三十岁是女人最美好的时光，精致优雅，生命犹如郁金香，丰盈饱满。女人三十...","#","怀孕专题"),

(null,"刷牙大作战 让乳牙更健康","img/zhuanti/zt4.jpg","健康的乳牙，对宝宝的成长发育至关重要，因此必须保护好它们。保护乳牙，刷...","#","育儿专题"),
(null,"母亲节特别策划：妈妈的手有魔法","img/zhuanti/zt5.jpg","在孩子心目中，妈妈的手是万能的，似乎拥有的魔法般，神奇变变变，就变出了...","#","育儿专题"),
(null,"妈妈心声 再难也把孩子带身边","img/zhuanti/zt6.jpg","有多少孩子和父母分离？有多少爸妈留孩子在老家赴远方工作？我们有太多的苦...","#","育儿专题"),

(null,"PCbaby直击2016CBME","img/zhuanti/zt7.jpg","2016年7月20日-22日，第16届CBME孕婴童展、CBME童装展在上海虹桥国家会展中...","#","用品专题"),
(null,"时光刻印 宝贝与我的六一儿童节","img/zhuanti/zt8.jpg","童年的记忆，是我们心底最美的珍藏，陪伴着我们度过日日夜夜。转眼间，当年...","#","用品专题"),
(null,"非你莫薯 6款人气薯片/薯条实测","img/zhuanti/zt9.jpg","青春五月天，不负流年不负胃。吃起来咔呲脆的薯片（薯条），是“吃货”们无...","#","用品专题"),

(null,"童晓洁：地包天不担心 牙齿矫正促健康","img/zhuanti/zt10.jpg","孩子牙齿发育不好是个不容忽视的口腔健康问题，其中“地包天”“哨牙”等问...","#","专家视点"),
(null,"刘长伟：产后“奶”妈 均衡营养来助力","img/zhuanti/zt11.jpg","8月1至7日是世界母乳喂养周。哺乳期妈妈最关心的话题之一就是如何让宝宝的...","#","专家视点"),
(null,"邓列华：夏日防痱大战 从清洁皮肤开始","img/zhuanti/zt12.jpg","炎炎夏日，宝宝出汗多，很容易在身上长痱子，痱子是夏天最多见的皮肤急性炎...","#","专家视点"),

(null,"周末乐缤纷 穿越大闯关","img/zhuanti/zt13.png","2017年9月17日，太平洋亲子网携手珠江啤酒博物馆联合举办“周末乐缤纷 穿越...","#","互动专题"),
(null,"酷玩周末，相约琶洲婴芭莎展","img/zhuanti/zt14.png","2017年9月11日，由太平洋亲子网、惠儿堂等品牌联合主办的婴芭莎展在琶洲保...","#","互动专题"),
(null,"感父爱如山 追寻童年梦","img/zhuanti/zt15.jpg","2017年6月17日，太平洋亲子网携手童乐惠儿童活动品牌机构联合举办“感父爱...","#","互动专题");

/*************************************图文解说****************************************************/
CREATE TABLE image_show (
	iid INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(64),
	href VARCHAR(64),
	src VARCHAR(64)
);
INSERT INTO image_show VALUES
	(NULL,"夏天宝宝吃水果 注意十点","#","img/pic-comment/image_show_1.jpg"),
	(NULL,"小心登革热 四招积极预防","#","img/pic-comment/image_show_2.jpg"),
	(NULL,"用四个方法 度过睡眠倒退期","#","img/pic-comment/image_show_3.jpg"),
	(NULL,"这八种做法 伤害孩子的安全感","#","img/pic-comment/image_show_4.jpg"),
	(NULL,"孕妈留心四招 预防急性胰腺炎","#","img/pic-comment/image_show_5.jpg"),
	(NULL,"别一哭就喂 四招判断宝宝是否吃饱","#","img/pic-comment/image_show_6.jpg"),
	(NULL,"常见不适 在家护理or去医院","#","img/pic-comment/image_show_7.jpg"),
	(NULL,"关注宝宝免疫力最低的两个时期","#","img/pic-comment/image_show_8.jpg"),
	(NULL,"孩子爱不告自拿？家长这么管教","#","img/pic-comment/image_show_9.jpg"),
	(NULL,"孩子喝鲜羊奶 小心三大危害","#","img/pic-comment/image_show_10.jpg"),
	(NULL,"孩子在家轰趴 食物这样准备","#","img/pic-comment/image_show_11.jpg"),
	(NULL,"警惕三项错误的婴幼儿运动","#","img/pic-comment/image_show_12.jpg"),
	(NULL,"快速区分 儿童抽搐八大原因","#","img/pic-comment/image_show_13.jpg"),
	(NULL,"牢记四个症状 警惕急性阑尾炎","#","img/pic-comment/image_show_14.jpg"),
	(NULL,"论如何打造一间合格的母婴室","#","img/pic-comment/image_show_15.jpg"),
	(NULL,"妈妈留心抚触的10个误区","#","img/pic-comment/image_show_16.jpg"),
	(NULL,"盲目给孩子进补 小心七大危害","#","img/pic-comment/image_show_17.jpg"),
	(NULL,"全面解读四种眼部分泌物","#","img/pic-comment/image_show_18.jpg"),
	(NULL,"十个方法让宝宝爱上俯趴","#","img/pic-comment/image_show_19.jpg"),
	(NULL,"十招培养孩子的数学能力","#","img/pic-comment/image_show_20.jpg"),
	(NULL,"体形瘦小与生长激素那些事","#","img/pic-comment/image_show_21.jpg"),
	(NULL,"挑选哺乳内衣 注意七个要点","#","img/pic-comment/image_show_22.jpg"),
	(NULL,"完全解读：母乳6个月后是否没营养","#","img/pic-comment/image_show_23.jpg"),
	(NULL,"卧室大改造 育儿更舒心","#","img/pic-comment/image_show_24.jpg"),
	(NULL,"五个内耳前庭练习 在家轻松做","#","img/pic-comment/image_show_25.jpg"),
	(NULL,"夏天宝宝吃水果 注意十点","#","img/pic-comment/image_show_1.jpg"),
	(NULL,"小心登革热 四招积极预防","#","img/pic-comment/image_show_2.jpg"),
	(NULL,"用四个方法 度过睡眠倒退期","#","img/pic-comment/image_show_3.jpg"),
	(NULL,"这八种做法 伤害孩子的安全感","#","img/pic-comment/image_show_4.jpg"),
	(NULL,"孕妈留心四招 预防急性胰腺炎","#","img/pic-comment/image_show_5.jpg"),
	(NULL,"别一哭就喂 四招判断宝宝是否吃饱","#","img/pic-comment/image_show_6.jpg"),
	(NULL,"常见不适 在家护理or去医院","#","img/pic-comment/image_show_7.jpg"),
	(NULL,"关注宝宝免疫力最低的两个时期","#","img/pic-comment/image_show_8.jpg"),
	(NULL,"孩子爱不告自拿？家长这么管教","#","img/pic-comment/image_show_9.jpg"),
	(NULL,"孩子喝鲜羊奶 小心三大危害","#","img/pic-comment/image_show_10.jpg"),
	(NULL,"孩子在家轰趴 食物这样准备","#","img/pic-comment/image_show_11.jpg"),
	(NULL,"警惕三项错误的婴幼儿运动","#","img/pic-comment/image_show_12.jpg"),
	(NULL,"快速区分 儿童抽搐八大原因","#","img/pic-comment/image_show_13.jpg"),
	(NULL,"牢记四个症状 警惕急性阑尾炎","#","img/pic-comment/image_show_14.jpg"),
	(NULL,"论如何打造一间合格的母婴室","#","img/pic-comment/image_show_15.jpg"),
	(NULL,"妈妈留心抚触的10个误区","#","img/pic-comment/image_show_16.jpg"),
	(NULL,"盲目给孩子进补 小心七大危害","#","img/pic-comment/image_show_17.jpg"),
	(NULL,"全面解读四种眼部分泌物","#","img/pic-comment/image_show_18.jpg"),
	(NULL,"十个方法让宝宝爱上俯趴","#","img/pic-comment/image_show_19.jpg"),
	(NULL,"十招培养孩子的数学能力","#","img/pic-comment/image_show_20.jpg"),
	(NULL,"体形瘦小与生长激素那些事","#","img/pic-comment/image_show_21.jpg"),
	(NULL,"挑选哺乳内衣 注意七个要点","#","img/pic-comment/image_show_22.jpg"),
	(NULL,"完全解读：母乳6个月后是否没营养","#","img/pic-comment/image_show_23.jpg"),
	(NULL,"卧室大改造 育儿更舒心","#","img/pic-comment/image_show_24.jpg"),
	(NULL,"五个内耳前庭练习 在家轻松做","#","img/pic-comment/image_show_25.jpg"),
	(NULL,"夏天宝宝吃水果 注意十点","#","img/pic-comment/image_show_1.jpg"),
	(NULL,"小心登革热 四招积极预防","#","img/pic-comment/image_show_2.jpg"),
	(NULL,"用四个方法 度过睡眠倒退期","#","img/pic-comment/image_show_3.jpg"),
	(NULL,"这八种做法 伤害孩子的安全感","#","img/pic-comment/image_show_4.jpg"),
	(NULL,"孕妈留心四招 预防急性胰腺炎","#","img/pic-comment/image_show_5.jpg"),
	(NULL,"别一哭就喂 四招判断宝宝是否吃饱","#","img/pic-comment/image_show_6.jpg"),
	(NULL,"常见不适 在家护理or去医院","#","img/pic-comment/image_show_7.jpg"),
	(NULL,"关注宝宝免疫力最低的两个时期","#","img/pic-comment/image_show_8.jpg"),
	(NULL,"孩子爱不告自拿？家长这么管教","#","img/pic-comment/image_show_9.jpg"),
	(NULL,"孩子喝鲜羊奶 小心三大危害","#","img/pic-comment/image_show_10.jpg"),
	(NULL,"孩子在家轰趴 食物这样准备","#","img/pic-comment/image_show_11.jpg"),
	(NULL,"警惕三项错误的婴幼儿运动","#","img/pic-comment/image_show_12.jpg"),
	(NULL,"快速区分 儿童抽搐八大原因","#","img/pic-comment/image_show_13.jpg"),
	(NULL,"牢记四个症状 警惕急性阑尾炎","#","img/pic-comment/image_show_14.jpg"),
	(NULL,"论如何打造一间合格的母婴室","#","img/pic-comment/image_show_15.jpg"),
	(NULL,"妈妈留心抚触的10个误区","#","img/pic-comment/image_show_16.jpg"),
	(NULL,"盲目给孩子进补 小心七大危害","#","img/pic-comment/image_show_17.jpg"),
	(NULL,"全面解读四种眼部分泌物","#","img/pic-comment/image_show_18.jpg"),
	(NULL,"十个方法让宝宝爱上俯趴","#","img/pic-comment/image_show_19.jpg"),
	(NULL,"十招培养孩子的数学能力","#","img/pic-comment/image_show_20.jpg"),
	(NULL,"体形瘦小与生长激素那些事","#","img/pic-comment/image_show_21.jpg"),
	(NULL,"挑选哺乳内衣 注意七个要点","#","img/pic-comment/image_show_22.jpg"),
	(NULL,"完全解读：母乳6个月后是否没营养","#","img/pic-comment/image_show_23.jpg"),
	(NULL,"卧室大改造 育儿更舒心","#","img/pic-comment/image_show_24.jpg"),
	(NULL,"五个内耳前庭练习 在家轻松做","#","img/pic-comment/image_show_25.jpg"),
	(NULL,"夏天宝宝吃水果 注意十点","#","img/pic-comment/image_show_1.jpg"),
	(NULL,"小心登革热 四招积极预防","#","img/pic-comment/image_show_2.jpg"),
	(NULL,"用四个方法 度过睡眠倒退期","#","img/pic-comment/image_show_3.jpg"),
	(NULL,"这八种做法 伤害孩子的安全感","#","img/pic-comment/image_show_4.jpg"),
	(NULL,"孕妈留心四招 预防急性胰腺炎","#","img/pic-comment/image_show_5.jpg"),
	(NULL,"别一哭就喂 四招判断宝宝是否吃饱","#","img/pic-comment/image_show_6.jpg"),
	(NULL,"常见不适 在家护理or去医院","#","img/pic-comment/image_show_7.jpg"),
	(NULL,"关注宝宝免疫力最低的两个时期","#","img/pic-comment/image_show_8.jpg"),
	(NULL,"孩子爱不告自拿？家长这么管教","#","img/pic-comment/image_show_9.jpg"),
	(NULL,"孩子喝鲜羊奶 小心三大危害","#","img/pic-comment/image_show_10.jpg"),
	(NULL,"孩子在家轰趴 食物这样准备","#","img/pic-comment/image_show_11.jpg"),
	(NULL,"警惕三项错误的婴幼儿运动","#","img/pic-comment/image_show_12.jpg"),
	(NULL,"快速区分 儿童抽搐八大原因","#","img/pic-comment/image_show_13.jpg"),
	(NULL,"牢记四个症状 警惕急性阑尾炎","#","img/pic-comment/image_show_14.jpg"),
	(NULL,"论如何打造一间合格的母婴室","#","img/pic-comment/image_show_15.jpg"),
	(NULL,"妈妈留心抚触的10个误区","#","img/pic-comment/image_show_16.jpg"),
	(NULL,"盲目给孩子进补 小心七大危害","#","img/pic-comment/image_show_17.jpg"),
	(NULL,"全面解读四种眼部分泌物","#","img/pic-comment/image_show_18.jpg"),
	(NULL,"十个方法让宝宝爱上俯趴","#","img/pic-comment/image_show_19.jpg"),
	(NULL,"十招培养孩子的数学能力","#","img/pic-comment/image_show_20.jpg"),
	(NULL,"体形瘦小与生长激素那些事","#","img/pic-comment/image_show_21.jpg"),
	(NULL,"挑选哺乳内衣 注意七个要点","#","img/pic-comment/image_show_22.jpg"),
	(NULL,"完全解读：母乳6个月后是否没营养","#","img/pic-comment/image_show_23.jpg"),
	(NULL,"卧室大改造 育儿更舒心","#","img/pic-comment/image_show_24.jpg"),
	(NULL,"五个内耳前庭练习 在家轻松做","#","img/pic-comment/image_show_25.jpg"),
	(NULL,"用四个方法 度过睡眠倒退期","#","img/pic-comment/image_show_3.jpg"),
	(NULL,"这八种做法 伤害孩子的安全感","#","img/pic-comment/image_show_4.jpg"),
	(NULL,"孕妈留心四招 预防急性胰腺炎","#","img/pic-comment/image_show_5.jpg"),
	(NULL,"别一哭就喂 四招判断宝宝是否吃饱","#","img/pic-comment/image_show_6.jpg"),
	(NULL,"常见不适 在家护理or去医院","#","img/pic-comment/image_show_7.jpg"),
	(NULL,"关注宝宝免疫力最低的两个时期","#","img/pic-comment/image_show_8.jpg"),
	(NULL,"孩子爱不告自拿？家长这么管教","#","img/pic-comment/image_show_9.jpg"),
	(NULL,"孩子喝鲜羊奶 小心三大危害","#","img/pic-comment/image_show_10.jpg"),
	(NULL,"孩子在家轰趴 食物这样准备","#","img/pic-comment/image_show_11.jpg"),
	(NULL,"警惕三项错误的婴幼儿运动","#","img/pic-comment/image_show_12.jpg"),
	(NULL,"快速区分 儿童抽搐八大原因","#","img/pic-comment/image_show_13.jpg"),
	(NULL,"牢记四个症状 警惕急性阑尾炎","#","img/pic-comment/image_show_14.jpg"),
	(NULL,"论如何打造一间合格的母婴室","#","img/pic-comment/image_show_15.jpg"),
	(NULL,"妈妈留心抚触的10个误区","#","img/pic-comment/image_show_16.jpg"),
	(NULL,"盲目给孩子进补 小心七大危害","#","img/pic-comment/image_show_17.jpg"),
	(NULL,"全面解读四种眼部分泌物","#","img/pic-comment/image_show_18.jpg"),
	(NULL,"十个方法让宝宝爱上俯趴","#","img/pic-comment/image_show_19.jpg"),
	(NULL,"十招培养孩子的数学能力","#","img/pic-comment/image_show_20.jpg"),
	(NULL,"体形瘦小与生长激素那些事","#","img/pic-comment/image_show_21.jpg"),
	(NULL,"挑选哺乳内衣 注意七个要点","#","img/pic-comment/image_show_22.jpg"),
	(NULL,"完全解读：母乳6个月后是否没营养","#","img/pic-comment/image_show_23.jpg"),
	(NULL,"卧室大改造 育儿更舒心","#","img/pic-comment/image_show_24.jpg"),
	(NULL,"五个内耳前庭练习 在家轻松做","#","img/pic-comment/image_show_25.jpg"),
	(NULL,"夏天宝宝吃水果 注意十点","#","img/pic-comment/image_show_1.jpg"),
	(NULL,"小心登革热 四招积极预防","#","img/pic-comment/image_show_2.jpg"),
	(NULL,"用四个方法 度过睡眠倒退期","#","img/pic-comment/image_show_3.jpg"),
	(NULL,"这八种做法 伤害孩子的安全感","#","img/pic-comment/image_show_4.jpg"),
	(NULL,"孕妈留心四招 预防急性胰腺炎","#","img/pic-comment/image_show_5.jpg"),
	(NULL,"别一哭就喂 四招判断宝宝是否吃饱","#","img/pic-comment/image_show_6.jpg"),
	(NULL,"常见不适 在家护理or去医院","#","img/pic-comment/image_show_7.jpg"),
	(NULL,"关注宝宝免疫力最低的两个时期","#","img/pic-comment/image_show_8.jpg"),
	(NULL,"孩子爱不告自拿？家长这么管教","#","img/pic-comment/image_show_9.jpg"),
	(NULL,"孩子喝鲜羊奶 小心三大危害","#","img/pic-comment/image_show_10.jpg"),
	(NULL,"孩子在家轰趴 食物这样准备","#","img/pic-comment/image_show_11.jpg"),
	(NULL,"警惕三项错误的婴幼儿运动","#","img/pic-comment/image_show_12.jpg"),
	(NULL,"快速区分 儿童抽搐八大原因","#","img/pic-comment/image_show_13.jpg"),
	(NULL,"牢记四个症状 警惕急性阑尾炎","#","img/pic-comment/image_show_14.jpg"),
	(NULL,"论如何打造一间合格的母婴室","#","img/pic-comment/image_show_15.jpg"),
	(NULL,"妈妈留心抚触的10个误区","#","img/pic-comment/image_show_16.jpg"),
	(NULL,"盲目给孩子进补 小心七大危害","#","img/pic-comment/image_show_17.jpg"),
	(NULL,"全面解读四种眼部分泌物","#","img/pic-comment/image_show_18.jpg"),
	(NULL,"十个方法让宝宝爱上俯趴","#","img/pic-comment/image_show_19.jpg"),
	(NULL,"十招培养孩子的数学能力","#","img/pic-comment/image_show_20.jpg"),
	(NULL,"体形瘦小与生长激素那些事","#","img/pic-comment/image_show_21.jpg"),
	(NULL,"挑选哺乳内衣 注意七个要点","#","img/pic-comment/image_show_22.jpg"),
	(NULL,"完全解读：母乳6个月后是否没营养","#","img/pic-comment/image_show_23.jpg"),
	(NULL,"卧室大改造 育儿更舒心","#","img/pic-comment/image_show_24.jpg"),
	(NULL,"五个内耳前庭练习 在家轻松做","#","img/pic-comment/image_show_25.jpg"),
	(NULL,"打黄体酮针 注意五大事项","#","img/pic-comment/image_show_26.jpg");

/*************************************图片上传****************************************************/
CREATE TABLE album(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128) 
);

/************************个人中心-我的文档****************************************************/
CREATE TABLE user_detail (
	uid INT PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(32) UNIQUE,
	upwd VARCHAR (16) NOT NULL,
	nickname	 VARCHAR(32) DEFAULT NULL,
	gender	 VARCHAR(16) DEFAULT 0,
	birth	 VARCHAR(16) DEFAULT NULL,
	residence	 VARCHAR(32) DEFAULT 0,
	residence_city	 VARCHAR(32) DEFAULT 0,
	hometown	 VARCHAR(32) DEFAULT 0,
	hometown_city	 VARCHAR(32) DEFAULT 0,
	industry	 VARCHAR(32) DEFAULT 0,
	url	 VARCHAR(128) DEFAULT NULL,
	email	 VARCHAR(32) DEFAULT NULL,
	autograph	 VARCHAR(32) DEFAULT NULL,
	hobby	 VARCHAR(256) DEFAULT NULL,
	speciality	 VARCHAR(128) DEFAULT NULL,
	parenting	 VARCHAR(128) DEFAULT 0,
	user_name	 VARCHAR(64) DEFAULT NULL,
	qq_msn   VARCHAR(64) DEFAULT NULL,
	mailing_address   VARCHAR(64) DEFAULT NULL,
	postalcode   VARCHAR(64) DEFAULT NULL,
	phone   VARCHAR(64) DEFAULT NULL,
	education   VARCHAR(64) DEFAULT 0,
	university   VARCHAR(64) DEFAULT NULL,
	high_school   VARCHAR(64) DEFAULT NULL,
	middle_school   VARCHAR(64) DEFAULT NULL
);
INSERT INTO user_detail(uname,upwd) values('lilei','123456');
INSERT INTO user_detail(uname,upwd) values('Tom','123456');
INSERT INTO user_detail(uname,upwd) values('King','123456');
INSERT INTO user_detail(uname,upwd) VALUES ('Mary','123456');
SELECT * FROM user_detail;










