-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm5g92n
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='在线客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (101,'2021-03-19 01:33:02',1,1,'提问1','回复1',1),(102,'2021-03-19 01:33:02',2,2,'提问2','回复2',2),(103,'2021-03-19 01:33:02',3,3,'提问3','回复3',3),(104,'2021-03-19 01:33:02',4,4,'提问4','回复4',4),(105,'2021-03-19 01:33:02',5,5,'提问5','回复5',5),(106,'2021-03-19 01:33:02',6,6,'提问6','回复6',6);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm5g92n/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm5g92n/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm5g92n/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusslajixinxi`
--

DROP TABLE IF EXISTS `discusslajixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusslajixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COMMENT='垃圾信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusslajixinxi`
--

LOCK TABLES `discusslajixinxi` WRITE;
/*!40000 ALTER TABLE `discusslajixinxi` DISABLE KEYS */;
INSERT INTO `discusslajixinxi` VALUES (161,'2021-03-19 01:33:02',1,1,'用户名1','评论内容1','回复内容1'),(162,'2021-03-19 01:33:02',2,2,'用户名2','评论内容2','回复内容2'),(163,'2021-03-19 01:33:02',3,3,'用户名3','评论内容3','回复内容3'),(164,'2021-03-19 01:33:02',4,4,'用户名4','评论内容4','回复内容4'),(165,'2021-03-19 01:33:02',5,5,'用户名5','评论内容5','回复内容5'),(166,'2021-03-19 01:33:02',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusslajixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exampaper`
--

DROP TABLE IF EXISTS `exampaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试卷表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exampaper`
--

LOCK TABLES `exampaper` WRITE;
/*!40000 ALTER TABLE `exampaper` DISABLE KEYS */;
/*!40000 ALTER TABLE `exampaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examquestion`
--

DROP TABLE IF EXISTS `examquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examquestion`
--

LOCK TABLES `examquestion` WRITE;
/*!40000 ALTER TABLE `examquestion` DISABLE KEYS */;
/*!40000 ALTER TABLE `examquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examrecord`
--

DROP TABLE IF EXISTS `examrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考试记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examrecord`
--

LOCK TABLES `examrecord` WRITE;
/*!40000 ALTER TABLE `examrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `examrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jifenxiaohao`
--

DROP TABLE IF EXISTS `jifenxiaohao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jifenxiaohao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `duihuanbianhao` varchar(200) DEFAULT NULL COMMENT '兑换编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `jifenshu` varchar(200) DEFAULT NULL COMMENT '积分数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='积分消耗';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jifenxiaohao`
--

LOCK TABLES `jifenxiaohao` WRITE;
/*!40000 ALTER TABLE `jifenxiaohao` DISABLE KEYS */;
INSERT INTO `jifenxiaohao` VALUES (91,'2021-03-19 01:33:02','账号1','姓名1','兑换编号1','商品名称1','积分数1'),(92,'2021-03-19 01:33:02','账号2','姓名2','兑换编号2','商品名称2','积分数2'),(93,'2021-03-19 01:33:02','账号3','姓名3','兑换编号3','商品名称3','积分数3'),(94,'2021-03-19 01:33:02','账号4','姓名4','兑换编号4','商品名称4','积分数4'),(95,'2021-03-19 01:33:02','账号5','姓名5','兑换编号5','商品名称5','积分数5'),(96,'2021-03-19 01:33:02','账号6','姓名6','兑换编号6','商品名称6','积分数6');
/*!40000 ALTER TABLE `jifenxiaohao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jifenzengjia`
--

DROP TABLE IF EXISTS `jifenzengjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jifenzengjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jifenshu` varchar(200) DEFAULT NULL COMMENT '积分数',
  `jilushijian` datetime DEFAULT NULL COMMENT '记录时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='积分增加';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jifenzengjia`
--

LOCK TABLES `jifenzengjia` WRITE;
/*!40000 ALTER TABLE `jifenzengjia` DISABLE KEYS */;
INSERT INTO `jifenzengjia` VALUES (51,'2021-03-19 01:33:02','账号1','姓名1','积分数1','2021-03-19 09:33:02'),(52,'2021-03-19 01:33:02','账号2','姓名2','积分数2','2021-03-19 09:33:02'),(53,'2021-03-19 01:33:02','账号3','姓名3','积分数3','2021-03-19 09:33:02'),(54,'2021-03-19 01:33:02','账号4','姓名4','积分数4','2021-03-19 09:33:02'),(55,'2021-03-19 01:33:02','账号5','姓名5','积分数5','2021-03-19 09:33:02'),(56,'2021-03-19 01:33:02','账号6','姓名6','积分数6','2021-03-19 09:33:02');
/*!40000 ALTER TABLE `jifenzengjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lajifenlei`
--

DROP TABLE IF EXISTS `lajifenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lajifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='垃圾分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lajifenlei`
--

LOCK TABLES `lajifenlei` WRITE;
/*!40000 ALTER TABLE `lajifenlei` DISABLE KEYS */;
INSERT INTO `lajifenlei` VALUES (31,'2021-03-19 01:33:02','分类1'),(32,'2021-03-19 01:33:02','分类2'),(33,'2021-03-19 01:33:02','分类3'),(34,'2021-03-19 01:33:02','分类4'),(35,'2021-03-19 01:33:02','分类5'),(36,'2021-03-19 01:33:02','分类6');
/*!40000 ALTER TABLE `lajifenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lajixinxi`
--

DROP TABLE IF EXISTS `lajixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lajixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `lajibianhao` varchar(200) DEFAULT NULL COMMENT '垃圾编号',
  `lajimingcheng` varchar(200) DEFAULT NULL COMMENT '垃圾名称',
  `lajitupian` varchar(200) DEFAULT NULL COMMENT '垃圾图片',
  `lajifenlei` varchar(200) DEFAULT NULL COMMENT '垃圾分类',
  `lajijianjie` longtext COMMENT '垃圾简介',
  `weihaichengdu` varchar(200) DEFAULT NULL COMMENT '危害程度',
  `lajixiangqing` longtext COMMENT '垃圾详情',
  `yingduicuoshi` varchar(200) DEFAULT NULL COMMENT '应对措施',
  PRIMARY KEY (`id`),
  UNIQUE KEY `lajibianhao` (`lajibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='垃圾信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lajixinxi`
--

LOCK TABLES `lajixinxi` WRITE;
/*!40000 ALTER TABLE `lajixinxi` DISABLE KEYS */;
INSERT INTO `lajixinxi` VALUES (21,'2021-03-19 01:33:02','垃圾编号1','垃圾名称1','http://localhost:8080/ssm5g92n/upload/lajixinxi_lajitupian1.jpg','垃圾分类1','垃圾简介1','低','垃圾详情1','应对措施1'),(22,'2021-03-19 01:33:02','垃圾编号2','垃圾名称2','http://localhost:8080/ssm5g92n/upload/lajixinxi_lajitupian2.jpg','垃圾分类2','垃圾简介2','低','垃圾详情2','应对措施2'),(23,'2021-03-19 01:33:02','垃圾编号3','垃圾名称3','http://localhost:8080/ssm5g92n/upload/lajixinxi_lajitupian3.jpg','垃圾分类3','垃圾简介3','低','垃圾详情3','应对措施3'),(24,'2021-03-19 01:33:02','垃圾编号4','垃圾名称4','http://localhost:8080/ssm5g92n/upload/lajixinxi_lajitupian4.jpg','垃圾分类4','垃圾简介4','低','垃圾详情4','应对措施4'),(25,'2021-03-19 01:33:02','垃圾编号5','垃圾名称5','http://localhost:8080/ssm5g92n/upload/lajixinxi_lajitupian5.jpg','垃圾分类5','垃圾简介5','低','垃圾详情5','应对措施5'),(26,'2021-03-19 01:33:02','垃圾编号6','垃圾名称6','http://localhost:8080/ssm5g92n/upload/lajixinxi_lajitupian6.jpg','垃圾分类6','垃圾简介6','低','垃圾详情6','应对措施6');
/*!40000 ALTER TABLE `lajixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lipinduihuan`
--

DROP TABLE IF EXISTS `lipinduihuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lipinduihuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `duihuanbianhao` varchar(200) DEFAULT NULL COMMENT '兑换编号',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpintupian` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `jifenshu` varchar(200) DEFAULT NULL COMMENT '积分数',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `songhuodizhi` varchar(200) DEFAULT NULL COMMENT '送货地址',
  `duihuanshijian` datetime DEFAULT NULL COMMENT '兑换时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `duihuanbianhao` (`duihuanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='礼品兑换';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lipinduihuan`
--

LOCK TABLES `lipinduihuan` WRITE;
/*!40000 ALTER TABLE `lipinduihuan` DISABLE KEYS */;
INSERT INTO `lipinduihuan` VALUES (81,'2021-03-19 01:33:02','兑换编号1','商品编号1','商品名称1','http://localhost:8080/ssm5g92n/upload/lipinduihuan_shangpintupian1.jpg','积分数1','账号1','姓名1','送货地址1','2021-03-19 09:33:02','是',''),(82,'2021-03-19 01:33:02','兑换编号2','商品编号2','商品名称2','http://localhost:8080/ssm5g92n/upload/lipinduihuan_shangpintupian2.jpg','积分数2','账号2','姓名2','送货地址2','2021-03-19 09:33:02','是',''),(83,'2021-03-19 01:33:02','兑换编号3','商品编号3','商品名称3','http://localhost:8080/ssm5g92n/upload/lipinduihuan_shangpintupian3.jpg','积分数3','账号3','姓名3','送货地址3','2021-03-19 09:33:02','是',''),(84,'2021-03-19 01:33:02','兑换编号4','商品编号4','商品名称4','http://localhost:8080/ssm5g92n/upload/lipinduihuan_shangpintupian4.jpg','积分数4','账号4','姓名4','送货地址4','2021-03-19 09:33:02','是',''),(85,'2021-03-19 01:33:02','兑换编号5','商品编号5','商品名称5','http://localhost:8080/ssm5g92n/upload/lipinduihuan_shangpintupian5.jpg','积分数5','账号5','姓名5','送货地址5','2021-03-19 09:33:02','是',''),(86,'2021-03-19 01:33:02','兑换编号6','商品编号6','商品名称6','http://localhost:8080/ssm5g92n/upload/lipinduihuan_shangpintupian6.jpg','积分数6','账号6','姓名6','送货地址6','2021-03-19 09:33:02','是','');
/*!40000 ALTER TABLE `lipinduihuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (151,'2021-03-19 01:33:02',1,'用户名1','留言内容1','回复内容1'),(152,'2021-03-19 01:33:02',2,'用户名2','留言内容2','回复内容2'),(153,'2021-03-19 01:33:02',3,'用户名3','留言内容3','回复内容3'),(154,'2021-03-19 01:33:02',4,'用户名4','留言内容4','回复内容4'),(155,'2021-03-19 01:33:02',5,'用户名5','留言内容5','回复内容5'),(156,'2021-03-19 01:33:02',6,'用户名6','留言内容6','回复内容6');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='资讯信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (141,'2021-03-19 01:33:02','标题1','简介1','http://localhost:8080/ssm5g92n/upload/news_picture1.jpg','内容1'),(142,'2021-03-19 01:33:02','标题2','简介2','http://localhost:8080/ssm5g92n/upload/news_picture2.jpg','内容2'),(143,'2021-03-19 01:33:02','标题3','简介3','http://localhost:8080/ssm5g92n/upload/news_picture3.jpg','内容3'),(144,'2021-03-19 01:33:02','标题4','简介4','http://localhost:8080/ssm5g92n/upload/news_picture4.jpg','内容4'),(145,'2021-03-19 01:33:02','标题5','简介5','http://localhost:8080/ssm5g92n/upload/news_picture5.jpg','内容5'),(146,'2021-03-19 01:33:02','标题6','简介6','http://localhost:8080/ssm5g92n/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangchenglipin`
--

DROP TABLE IF EXISTS `shangchenglipin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangchenglipin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  `shangpintupian` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `jifenshu` int(11) DEFAULT NULL COMMENT '积分数',
  `shangpinpinpai` varchar(200) DEFAULT NULL COMMENT '商品品牌',
  `shangpinjieshao` longtext COMMENT '商品介绍',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='商城礼品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangchenglipin`
--

LOCK TABLES `shangchenglipin` WRITE;
/*!40000 ALTER TABLE `shangchenglipin` DISABLE KEYS */;
INSERT INTO `shangchenglipin` VALUES (61,'2021-03-19 01:33:02','商品编号1','商品名称1','商品分类1','http://localhost:8080/ssm5g92n/upload/shangchenglipin_shangpintupian1.jpg',1,'商品品牌1','商品介绍1'),(62,'2021-03-19 01:33:02','商品编号2','商品名称2','商品分类2','http://localhost:8080/ssm5g92n/upload/shangchenglipin_shangpintupian2.jpg',2,'商品品牌2','商品介绍2'),(63,'2021-03-19 01:33:02','商品编号3','商品名称3','商品分类3','http://localhost:8080/ssm5g92n/upload/shangchenglipin_shangpintupian3.jpg',3,'商品品牌3','商品介绍3'),(64,'2021-03-19 01:33:02','商品编号4','商品名称4','商品分类4','http://localhost:8080/ssm5g92n/upload/shangchenglipin_shangpintupian4.jpg',4,'商品品牌4','商品介绍4'),(65,'2021-03-19 01:33:02','商品编号5','商品名称5','商品分类5','http://localhost:8080/ssm5g92n/upload/shangchenglipin_shangpintupian5.jpg',5,'商品品牌5','商品介绍5'),(66,'2021-03-19 01:33:02','商品编号6','商品名称6','商品分类6','http://localhost:8080/ssm5g92n/upload/shangchenglipin_shangpintupian6.jpg',6,'商品品牌6','商品介绍6');
/*!40000 ALTER TABLE `shangchenglipin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinfenlei`
--

DROP TABLE IF EXISTS `shangpinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='商品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinfenlei`
--

LOCK TABLES `shangpinfenlei` WRITE;
/*!40000 ALTER TABLE `shangpinfenlei` DISABLE KEYS */;
INSERT INTO `shangpinfenlei` VALUES (71,'2021-03-19 01:33:02','商品分类1'),(72,'2021-03-19 01:33:02','商品分类2'),(73,'2021-03-19 01:33:02','商品分类3'),(74,'2021-03-19 01:33:02','商品分类4'),(75,'2021-03-19 01:33:02','商品分类5'),(76,'2021-03-19 01:33:02','商品分类6');
/*!40000 ALTER TABLE `shangpinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-19 01:33:02');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-19 01:33:02','用户1','123456','姓名1','男',1,'13823888881','http://localhost:8080/ssm5g92n/upload/yonghu_zhaopian1.jpg'),(12,'2021-03-19 01:33:02','用户2','123456','姓名2','男',2,'13823888882','http://localhost:8080/ssm5g92n/upload/yonghu_zhaopian2.jpg'),(13,'2021-03-19 01:33:02','用户3','123456','姓名3','男',3,'13823888883','http://localhost:8080/ssm5g92n/upload/yonghu_zhaopian3.jpg'),(14,'2021-03-19 01:33:02','用户4','123456','姓名4','男',4,'13823888884','http://localhost:8080/ssm5g92n/upload/yonghu_zhaopian4.jpg'),(15,'2021-03-19 01:33:02','用户5','123456','姓名5','男',5,'13823888885','http://localhost:8080/ssm5g92n/upload/yonghu_zhaopian5.jpg'),(16,'2021-03-19 01:33:02','用户6','123456','姓名6','男',6,'13823888886','http://localhost:8080/ssm5g92n/upload/yonghu_zhaopian6.jpg');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghujifen`
--

DROP TABLE IF EXISTS `yonghujifen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghujifen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jifenshu` int(11) NOT NULL COMMENT '积分数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='用户积分';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghujifen`
--

LOCK TABLES `yonghujifen` WRITE;
/*!40000 ALTER TABLE `yonghujifen` DISABLE KEYS */;
INSERT INTO `yonghujifen` VALUES (41,'2021-03-19 01:33:02','账号1','姓名1',1),(42,'2021-03-19 01:33:02','账号2','姓名2',2),(43,'2021-03-19 01:33:02','账号3','姓名3',3),(44,'2021-03-19 01:33:02','账号4','姓名4',4),(45,'2021-03-19 01:33:02','账号5','姓名5',5),(46,'2021-03-19 01:33:02','账号6','姓名6',6);
/*!40000 ALTER TABLE `yonghujifen` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-20 18:03:48
