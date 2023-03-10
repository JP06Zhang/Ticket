/*
SQLyog Trial v13.1.8 (64 bit)
MySQL - 5.7.25-log : Database - ssm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm`;

/*Table structure for table `film` */

DROP TABLE IF EXISTS `film`;

CREATE TABLE `film` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `film_id` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '名字',
  `director` varchar(50) DEFAULT NULL COMMENT '导演',
  `player` varchar(500) DEFAULT NULL COMMENT '主演',
  `type` varchar(50) DEFAULT NULL COMMENT '类型',
  `country` varchar(50) DEFAULT NULL COMMENT '制片国家',
  `length` int(11) DEFAULT NULL COMMENT '片长（分钟）',
  `synopsis` varchar(1000) DEFAULT NULL COMMENT '剧情介绍',
  `play_time` date DEFAULT NULL COMMENT '上映时间',
  `img_path` varchar(100) DEFAULT NULL COMMENT '宣传图地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `film` */

insert  into `film`(`id`,`film_id`,`name`,`director`,`player`,`type`,`country`,`length`,`synopsis`,`play_time`,`img_path`) values 
(1,'1314','我的她','命运','祎祎大人','爱情','中国',52560000,'一个平庸的小男孩在大学遇到了带着色彩的她','2020-01-01','/img/1314.jpg'),
(2,'2222','蜘蛛侠：英雄无归',' 乔·沃茨','汤姆·赫兰德 / 赞达亚 / 本尼迪克特·康伯巴奇 / 雅各布·巴特朗 / 托比·马奎尔 ','动作 / 科幻 / 冒险','美国 / 冰岛',148,'《蜘蛛侠：英雄无归》是英雄系列三部曲的完结篇，也标志着漫威多元宇宙的正式开启。此次，蜘蛛侠（汤姆·赫兰德 饰）与奇异博士（本尼迪克特·康伯巴奇 饰）继《复联4》后再度联手打响时空混战。蜘蛛侠借助奇异博士操控时空的能力打开了时空通道，引发了前所未见的危机。','2021-12-15','/img/2222.jpg'),
(3,'3333','当幸福来敲门','加布里埃莱·穆奇诺','威尔·史密斯 / 贾登·史密斯 / 坦迪·牛顿 / 布莱恩·豪威 / 詹姆斯·凯伦 ','剧情 / 家庭 / 传记','美国',117,'克里斯•加纳（威尔·史密斯 Will Smith 饰）用尽全部积蓄买下了高科技治疗仪，到处向医院推销，可是价格高昂，接受的人不多。就算他多努力都无法提供一个良好的生活环境给妻儿，妻子（桑迪·牛顿 Thandie Newton 饰）最终选择离开家。从此他带着儿子克里斯托夫（贾登·史密斯 Jaden Smith 饰）相依为命。克里斯好不容易争取回来一个股票投资公司实习的机会，就算没有报酬，成功机会只有百分之五，他仍努力奋斗，儿子是他的力量。他看尽白眼，与儿子躲在地铁站里的公共厕所里，住在教堂的收容所里…… 他坚信，幸福明天就会来临。','2006-12-15','/img/3333.png'),
(4,'4444','肖申克的救赎',' 弗兰克·德拉邦特','蒂姆·罗宾斯 / 摩根·弗里曼 / 鲍勃·冈顿 / 威廉姆·赛德勒 / 克兰西·布朗 ','剧情 / 犯罪','美国',142,'一场谋杀案使银行家安迪（蒂姆•罗宾斯 Tim Robbins 饰）蒙冤入狱，谋杀妻子及其情人的指控将囚禁他终生。在肖申克监狱的首次现身就让监狱“大哥”瑞德（摩根•弗里曼 Morgan Freeman 饰）对他另眼相看。瑞德帮助他搞到一把石锤和一幅女明星海报，两人渐成患难 之交。很快，安迪在监狱里大显其才，担当监狱图书管理员，并利用自己的金融知识帮助监狱官避税，引起了典狱长的注意，被招致麾下帮助典狱长洗黑钱。偶然一次，他得知一名新入狱的小偷能够作证帮他洗脱谋杀罪。燃起一丝希望的安迪找到了典狱长，希望他能帮自己翻案。阴险伪善的狱长假装答应安迪，背后却派人杀死小偷，让他唯一能合法出狱的希望泯灭。沮丧的安迪并没有绝望，在一个电闪雷鸣的风雨夜，一场暗藏几十年的越狱计划让他自我救赎，重获自由！老朋友瑞德在他的鼓舞和帮助下，也勇敢地奔向自由。','1994-09-10','/img/4444.png'),
(5,'5555','你的名字','新海诚','神木隆之介 / 上白石萌音 / 长泽雅美 / 市原悦子 / 成田凌 ','剧情 / 爱情 / 动画','日本',106,'在远离大都会的小山村，住着巫女世家出身的高中女孩宫水三叶（上白石萌音 配音）。校园和家庭的原因本就让她充满烦恼，而近一段时间发生的奇怪事件，又让三叶摸不清头脑。不知从何时起，三叶在梦中就会变成一个住在东京的高中男孩。那里有陌生的同学和朋友，有亲切的前辈和繁华的街道，一切都是如此诱人而真实。另一方面，住在东京的高中男孩立花泷（神木隆之介 配音）则总在梦里来到陌生的小山村，以女孩子的身份过着全新的生活。许是受那颗神秘彗星的影响，立花和三叶在梦中交换了身份。他们以他者的角度体验着对方的人生，这期间有愤怒、有欢笑也有暖心。只是两人并不知道，身份交换的背后隐藏着重大而锥心的秘密……','2016-12-02','/img/5555.png'),
(6,'6666','流浪地球','郭帆',' 屈楚萧 / 吴京 / 李光洁 / 吴孟达 / 赵今麦','科幻 / 冒险 / 灾难','中国大陆',125,'近未来，科学家们发现太阳急速衰老膨胀，短时间内包括地球在内的整个太阳系都将被太阳所吞没。为了自救，人类提出一个名为“流浪地球”的大胆计划，即倾全球之力在地球表面建造上万座发动机和转向发动机，推动地球离开太阳系，用2500年的时间奔往另外一个栖息之地。中国航天员刘培强（吴京 饰）在儿子刘启四岁那年前往国际空间站，和国际同侪肩负起领航者的重任。转眼刘启（屈楚萧 饰）长大，他带着妹妹朵朵（赵今麦 饰）偷偷跑到地表，偷开外公韩子昂（吴孟达 饰）的运输车，结果不仅遭到逮捕，还遭遇了全球发动机停摆的事件。为了修好发动机，阻止地球坠入木星，全球开始展开饱和式营救，连刘启他们的车也被强征加入。在与时间赛跑的过程中，无数的人前仆后继，奋不顾身，只为延续百代子孙生存的希望……','2019-02-05','/img/6666.png'),
(7,'7777','战狼2','吴京',' 吴京 / 弗兰克·格里罗 / 吴刚 / 张翰 / 卢靖姗','动作 / 战争','中国大陆',123,'由于一怒杀害了强拆牺牲战友房子的恶霸，屡立功勋的冷锋（吴京 饰）受到军事法庭的判决。在押期间，亲密爱人龙小云壮烈牺牲。出狱后，冷锋辗转来到非洲，他辗转各地，只为寻找杀害小云的凶手。在此期间，冷锋逗留的国家发生叛乱，叛徒红巾军大开杀戒，血流成河。中国派出海军执行撤侨任务，期间冷锋得知有一位陈博士被困在五十五公里外的医院，而叛军则试图抓住这位博士。而从另一位华侨（于谦 饰）口中得知，杀害小云的凶手正待在这个国家。','2017-07-27','/img/7777.png'),
(8,'8888','白蛇：缘起','黄家康 / 赵霁','张喆 / 杨天翔 / 唐小喜 / 刘紫玲 / 张遥函 ','爱情 / 动画 / 奇幻','中国大陆 / 美国',99,'　幽暗洞中，白蛇（张喆 配音）苦苦修炼却不得其法，小青见此情景，将发髻上的碧玉簪子取下，令白蛇攥在手中。那一刻，五百年前的记忆瞬间苏醒。五百年前，晚唐君主昏聩庸碌，掌握邪术的国师只手遮天，命令天下百姓捕蛇修法。为了拯救族群，白蛇冒险行刺，结果却遭遇挫败，还失去了记忆。当她再度醒来，发现自己被一个专门捕蛇的村落所救下，而那个胆小却善良的青年许宣（杨天翔 配音）则吸引了白蛇的注意。与此同时，国师派出爪牙四处追寻白蛇的下落，而蛇族更误解白蛇叛逃人类，接二连三派出杀手。\r\n　　五百年后的一段姻缘，早在这乱世之间便已缔结……','2019-01-11','/img/8888.png');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `name` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`name`,`age`) values 
('学会Java了吗',22),
('zjp',18);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
