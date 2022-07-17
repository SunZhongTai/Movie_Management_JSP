/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : dazuoye

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-01-04 21:42:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cinema`
-- ----------------------------
DROP TABLE IF EXISTS `cinema`;
CREATE TABLE `cinema` (
  `cinemaname` varchar(20) NOT NULL,
  `row` int(2) NOT NULL,
  `col` int(2) NOT NULL,
  `housenum` int(2) NOT NULL,
  `Password` varchar(20) NOT NULL,
  PRIMARY KEY (`cinemaname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cinema
-- ----------------------------
INSERT INTO `cinema` VALUES ('万达影院', '5', '10', '3', '123');
INSERT INTO `cinema` VALUES ('幸福蓝海', '5', '10', '3', '123');
INSERT INTO `cinema` VALUES ('百盛', '5', '10', '3', '123');

-- ----------------------------
-- Table structure for `gljilu`
-- ----------------------------
DROP TABLE IF EXISTS `gljilu`;
CREATE TABLE `gljilu` (
  `username` varchar(20) NOT NULL,
  `dongzuo` int(3) NOT NULL,
  `aiqing` int(3) NOT NULL,
  `donghua` int(3) NOT NULL,
  `dz1` int(3) NOT NULL,
  `dz2` int(3) NOT NULL,
  `dz3` int(3) NOT NULL,
  `aq1` int(3) NOT NULL,
  `aq2` int(3) NOT NULL,
  `aq3` int(3) NOT NULL,
  `dh1` int(3) NOT NULL,
  `dh2` int(3) NOT NULL,
  `dh3` int(3) NOT NULL,
  `wanda` int(3) NOT NULL,
  `xingfu` int(3) NOT NULL,
  `baisheng` int(3) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gljilu
-- ----------------------------
INSERT INTO `gljilu` VALUES ('aaa', '3', '3', '1', '1', '1', '1', '1', '2', '0', '0', '0', '1', '5', '1', '1');
INSERT INTO `gljilu` VALUES ('bbb', '1', '1', '2', '0', '1', '0', '0', '1', '0', '0', '1', '1', '1', '1', '2');
INSERT INTO `gljilu` VALUES ('ccc', '0', '5', '1', '0', '0', '0', '2', '2', '1', '1', '0', '0', '5', '1', '0');

-- ----------------------------
-- Table structure for `jilu`
-- ----------------------------
DROP TABLE IF EXISTS `jilu`;
CREATE TABLE `jilu` (
  `username` varchar(255) NOT NULL,
  `moviename` varchar(255) NOT NULL,
  `cinemaname` varchar(255) NOT NULL,
  `housenum` int(3) NOT NULL,
  `row` int(11) NOT NULL,
  `col` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jilu
-- ----------------------------
INSERT INTO `jilu` VALUES ('aaa', '请以你的名字呼唤我', '幸福蓝海', '2', '3', '7');
INSERT INTO `jilu` VALUES ('aaa', '烟花', '百盛', '2', '1', '8');
INSERT INTO `jilu` VALUES ('aaa', '微微一笑很倾城', '万达影院', '1', '3', '9');
INSERT INTO `jilu` VALUES ('bbb', '请以你的名字呼唤我', '幸福蓝海', '2', '3', '8');
INSERT INTO `jilu` VALUES ('bbb', '烟花', '万达影院', '2', '4', '8');
INSERT INTO `jilu` VALUES ('bbb', '复仇者联盟3', '百盛', '3', '3', '9');
INSERT INTO `jilu` VALUES ('ccc', '疯狂动物城', '万达影院', '2', '4', '6');
INSERT INTO `jilu` VALUES ('ccc', '请以你的名字呼唤我', '百盛', '3', '2', '8');
INSERT INTO `jilu` VALUES ('ccc', '怦然心动', '万达影院', '3', '3', '7');
INSERT INTO `jilu` VALUES ('ccc', '微微一笑很倾城', '万达影院', '1', '3', '1');
INSERT INTO `jilu` VALUES ('ccc', '微微一笑很倾城', '万达影院', '2', '3', '9');
INSERT INTO `jilu` VALUES ('bbb', '寻梦环游记', '百盛', '1', '1', '7');
INSERT INTO `jilu` VALUES ('ccc', '请以你的名字呼唤我', '幸福蓝海', '1', '3', '7');
INSERT INTO `jilu` VALUES ('aaa', '复仇者联盟3', '幸福蓝海', '3', '1', '1');
INSERT INTO `jilu` VALUES ('aaa', '正义联盟', '幸福蓝海', '1', '1', '9');
INSERT INTO `jilu` VALUES ('null', '正义联盟', '幸福蓝海', '2', '5', '5');
INSERT INTO `jilu` VALUES ('null', '复仇者联盟3', '百盛', '3', '4', '7');
INSERT INTO `jilu` VALUES ('aaa', '侏罗纪世界2', '百盛', '1', '4', '1');
INSERT INTO `jilu` VALUES ('aaa', '复仇者联盟3', '幸福蓝海', '1', '1', '1');
INSERT INTO `jilu` VALUES ('aaa', '复仇者联盟3', '幸福蓝海', '3', '4', '2');
INSERT INTO `jilu` VALUES ('aaa', '侏罗纪世界2', '幸福蓝海', '2', '2', '10');
INSERT INTO `jilu` VALUES ('aaa', '复仇者联盟3', '百盛', '1', '4', '1');
INSERT INTO `jilu` VALUES ('aaa', '请以你的名字呼唤我', '幸福蓝海', '2', '4', '7');

-- ----------------------------
-- Table structure for `movie_info`
-- ----------------------------
DROP TABLE IF EXISTS `movie_info`;
CREATE TABLE `movie_info` (
  `moviename` varchar(20) NOT NULL,
  `leixing` varchar(20) DEFAULT NULL,
  `daoyan` varchar(255) DEFAULT NULL,
  `diqu` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`moviename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_info
-- ----------------------------
INSERT INTO `movie_info` VALUES ('ssss', 'dd', 'ddf', 'gdsg', 'gh f', 'E:\\my-eclipse\\myeclipse-workspace\\Dazuoye\\upload\\无标题.png');
INSERT INTO `movie_info` VALUES ('侏罗纪世界2', '动作片', '胡安·安东尼奥·巴亚纳', '西班牙 | 美国', '自6月上映以来，《侏罗纪世界》全球横扫10亿美金，这个数字令许多制片方艳羡不已。《侏罗纪世界2》将于2018年6月22日上映。', 'E:\\my-eclipse\\myeclipse-workspace\\Dazuoye\\WebRoot\\images\\in7.jpg');
INSERT INTO `movie_info` VALUES ('复仇者联盟3', '动作片', '杰克·科比 克里斯托弗·马库斯', '美国', '《复仇者联盟3：无限战争》是漫威电影宇宙10周年历史性集结，将作为漫威宇宙第三阶段收官之作。', 'E:\\my-eclipse\\myeclipse-workspace\\Dazuoye\\WebRoot\\images\\in6.jpg');
INSERT INTO `movie_info` VALUES ('寻梦环游记', '动画片', '李·昂克里奇 阿德里安·莫里纳', '美国', '米格遇见了魅力十足的落魄乐手埃克托(盖尔·加西亚·贝纳尔 配音)，他们一起踏上了探寻米格家族不为人知往事的奇妙之旅，并开启了一段震撼心灵、感动非凡、永生难忘的旅程', 'E:\\my-eclipse\\myeclipse-workspace\\Dazuoye\\WebRoot\\images\\in2.jpg');
INSERT INTO `movie_info` VALUES ('微微一笑很倾城', '爱情片', '赵天宇\r\n\r\n赵天宇', '中国', '该片改编自顾漫同名小说，讲述了一对大学风云情侣在游戏世界相遇、在现实世界相爱的奇幻爱情故事。该片于2016年8月12日在中国上映。', 'E:\\my-eclipse\\myeclipse-workspace\\Dazuoye\\WebRoot\\images\\in9.jpg');
INSERT INTO `movie_info` VALUES ('怦然心动', '爱情片', '罗伯·莱纳', '美国', '没想到，到了八年级，布莱斯开始觉得朱莉不同寻常的兴趣和对于家庭的自豪感使她显得很有魅力。 而朱莉则开始觉得布莱斯漂亮的蓝眼睛也许和他本人一样其实很空洞，毕竟，怎么会有人不把别人对树和鸡的感情当回事呢？', 'E:\\my-eclipse\\myeclipse-workspace\\Dazuoye\\WebRoot\\images\\in8.jpg');
INSERT INTO `movie_info` VALUES ('正义联盟', '动作片', '扎克·施奈德', '美国', '“美国正义联盟”里聚集了DC Comics旗下几乎所有知名的漫画英雄，包括蝙蝠侠、超人、闪电侠等等，众多英雄们聚集在一起除暴安良，保卫地球。', 'E:\\my-eclipse\\myeclipse-workspace\\Dazuoye\\WebRoot\\images\\in1.jpg');
INSERT INTO `movie_info` VALUES ('烟花', '动画片', '新房昭之 武内宣之\r\n\r\n', '日本', '影片讲述一群学生在夏天因为烟花展开了争论，他们打算趁着夏季烟花大会去探寻烟花的秘密。同时，他们的同学少女奈砂因为父母离异而决定离家出走。于是他们在烟花表演的夜晚，一起爬山去那个灯塔。', 'E:\\my-eclipse\\myeclipse-workspace\\Dazuoye\\WebRoot\\images\\in3.jpg');
INSERT INTO `movie_info` VALUES ('疯狂动物城', '动画片', '拜恩·霍华德 杰拉德·布什', '美国', '兔警官朱迪（金妮弗·古德温 配音）为了证明自己，决心侦破一桩神秘案件；即使要被迫与口若悬河、谎技高超的狐尼克（杰森·贝特曼 配音）联手合作，她也在所不惜。', 'E:\\my-eclipse\\myeclipse-workspace\\Dazuoye\\WebRoot\\images\\in5.jpg');
INSERT INTO `movie_info` VALUES ('请以你的名字呼唤我', '爱情片', '卢卡·瓜达格尼诺', '意大利 | 法国 | 巴西 | 美国', '该片改编自安德烈·艾席蒙的同名小说，讲述了24岁的美国博士生奥利弗在意大利结识了17岁的少年艾利欧，两人从而发展出一段暧昧的关系。', 'E:\\my-eclipse\\myeclipse-workspace\\Dazuoye\\WebRoot\\images\\in10.jpg');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `Name` varchar(20) NOT NULL,
  `value` varchar(2) NOT NULL,
  `Password` varchar(16) NOT NULL,
  `mail` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('aaa', 'u', '123', '15563831078@sina.cn');
INSERT INTO `user` VALUES ('bbb', 'u', '123', '15563831078@sina.cn');
INSERT INTO `user` VALUES ('ccc', 'u', '123', '15563831078@sina.cn');
INSERT INTO `user` VALUES ('ggg', 'g', '123', '15563831078@sina.cn');
