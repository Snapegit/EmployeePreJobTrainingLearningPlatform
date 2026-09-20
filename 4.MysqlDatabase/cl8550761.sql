-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl8550761
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
-- Current Database: `cl8550761`
--

/*!40000 DROP DATABASE IF EXISTS `cl8550761`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl8550761` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl8550761`;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/1708090980133.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daoshi`
--

DROP TABLE IF EXISTS `daoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `daoshizhanghao` varchar(200) NOT NULL COMMENT '导师账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `daoshixingming` varchar(200) NOT NULL COMMENT '导师姓名',
  `touxiang` longtext COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`id`),
  UNIQUE KEY `daoshizhanghao` (`daoshizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1708090411254 DEFAULT CHARSET=utf8 COMMENT='导师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daoshi`
--

LOCK TABLES `daoshi` WRITE;
/*!40000 ALTER TABLE `daoshi` DISABLE KEYS */;
INSERT INTO `daoshi` VALUES (111,'2024-02-16 13:12:27','导师账号1','123456','导师姓名1','file/daoshiTouxiang1.jpg','19819881111','男'),(112,'2024-02-16 13:12:27','导师账号2','123456','导师姓名2','file/daoshiTouxiang2.jpg','19819881112','男'),(113,'2024-02-16 13:12:27','导师账号3','123456','导师姓名3','file/daoshiTouxiang3.jpg','19819881113','男'),(114,'2024-02-16 13:12:27','导师账号4','123456','导师姓名4','file/daoshiTouxiang4.jpg','19819881114','男'),(115,'2024-02-16 13:12:27','导师账号5','123456','导师姓名5','file/daoshiTouxiang5.jpg','19819881115','男'),(116,'2024-02-16 13:12:27','导师账号6','123456','导师姓名6','file/daoshiTouxiang6.jpg','19819881116','男'),(1708090411253,'2024-02-16 13:33:31','2','2','2','file/1708090405480.jpg','13645645645','女');
/*!40000 ALTER TABLE `daoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussxuexiziyuan`
--

DROP TABLE IF EXISTS `discussxuexiziyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussxuexiziyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学习资源评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussxuexiziyuan`
--

LOCK TABLES `discussxuexiziyuan` WRITE;
/*!40000 ALTER TABLE `discussxuexiziyuan` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussxuexiziyuan` ENABLE KEYS */;
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
  `status` varchar(200) DEFAULT NULL COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708090720172 DEFAULT CHARSET=utf8 COMMENT='在线考试';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exampaper`
--

LOCK TABLES `exampaper` WRITE;
/*!40000 ALTER TABLE `exampaper` DISABLE KEYS */;
INSERT INTO `exampaper` VALUES (1,'2024-02-16 13:12:27','试卷1',120,'0'),(1708090720171,'2024-02-16 13:38:39','数学',60,'1');
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
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT NULL COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT NULL COMMENT '试题类型',
  `sequence` bigint(20) DEFAULT NULL COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708090847664 DEFAULT CHARSET=utf8 COMMENT='试题管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examquestion`
--

LOCK TABLES `examquestion` WRITE;
/*!40000 ALTER TABLE `examquestion` DISABLE KEYS */;
INSERT INTO `examquestion` VALUES (1,'2024-02-16 13:12:27',1,'试卷1','1+1等于多少?','[{\"text\":\"2\",\"code\":\"A\"},{\"text\":\"11\",\"code\":\"B\"},{\"text\":\"十\",\"code\":\"C\"},{\"text\":\"王\",\"code\":\"D\"}]',20,'A','2',0,1),(2,'2024-02-16 13:12:27',1,'试卷1','2-1等于1，对吗?','[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]',20,'A','2-1等于1',2,2),(3,'2024-02-16 13:12:27',1,'试卷1','下面哪些数是质数？。','[{\"text\":\"2\",\"code\":\"A\"},{\"text\":\"3\",\"code\":\"B\"},{\"text\":\"4\",\"code\":\"C\"},{\"text\":\"5\",\"code\":\"D\"}]',30,'A,B,D','2,3,5属于质数',1,3),(4,'2024-02-16 13:12:27',1,'试卷1','最小的自然是( )。','[]',30,'0','最小的自然数是0',3,4),(1708090761599,'2024-02-16 13:39:20',1708090720171,'数学','下面是偶数的是','[{\"text\":\"0\",\"code\":\"A\"},{\"text\":\"2\",\"code\":\"B\"},{\"text\":\"3\",\"code\":\"C\"},{\"text\":\"1\",\"code\":\"D\"}]',20,'B','2是偶数',0,1),(1708090792093,'2024-02-16 13:39:52',1708090720171,'数学','下面是奇数的是','[{\"text\":\"0\",\"code\":\"A\"},{\"text\":\"1\",\"code\":\"B\"},{\"text\":\"2\",\"code\":\"C\"},{\"text\":\"3\",\"code\":\"D\"}]',40,'B,D','1.3是奇数',1,2),(1708090828296,'2024-02-16 13:40:27',1708090720171,'数学','1+1等于2对吗','[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]',20,'对','2',2,3),(1708090847663,'2024-02-16 13:40:46',1708090720171,'数学','1+1等于（    ）','',20,'2','2',3,4);
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
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT NULL COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) DEFAULT NULL COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708090900644 DEFAULT CHARSET=utf8 COMMENT='考试记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examrecord`
--

LOCK TABLES `examrecord` WRITE;
/*!40000 ALTER TABLE `examrecord` DISABLE KEYS */;
INSERT INTO `examrecord` VALUES (1708090899707,'2024-02-16 13:41:39','1',1708090720171,'数学',1708090828296,'1+1等于2对吗','[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]',20,'对','2',0,'B',1708090391087),(1708090900324,'2024-02-16 13:41:39','1',1708090720171,'数学',1708090847663,'1+1等于（    ）','[]',20,'2','2',20,'2',1708090391087),(1708090900326,'2024-02-16 13:41:39','1',1708090720171,'数学',1708090761599,'下面是偶数的是','[{\"text\":\"0\",\"code\":\"A\"},{\"text\":\"2\",\"code\":\"B\"},{\"text\":\"3\",\"code\":\"C\"},{\"text\":\"1\",\"code\":\"D\"}]',20,'B','2是偶数',20,'B',1708090391087),(1708090900643,'2024-02-16 13:41:39','1',1708090720171,'数学',1708090792093,'下面是奇数的是','[{\"text\":\"0\",\"code\":\"A\"},{\"text\":\"1\",\"code\":\"B\"},{\"text\":\"2\",\"code\":\"C\"},{\"text\":\"3\",\"code\":\"D\"}]',40,'B,D','1.3是奇数',40,'B,D',1708090391087);
/*!40000 ALTER TABLE `examrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jihuadianping`
--

DROP TABLE IF EXISTS `jihuadianping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jihuadianping` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `jihuabiaoti` varchar(200) NOT NULL COMMENT '计划标题',
  `xuexijindu` varchar(200) DEFAULT NULL COMMENT '学习进度',
  `xuexineirong` varchar(200) DEFAULT NULL COMMENT '学习内容',
  `dianpingneirong` varchar(200) DEFAULT NULL COMMENT '点评内容',
  `daoshizhanghao` varchar(200) DEFAULT NULL COMMENT '导师账号',
  `daoshixingming` varchar(200) DEFAULT NULL COMMENT '导师姓名',
  `dianpingshijian` datetime DEFAULT NULL COMMENT '点评时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708090587648 DEFAULT CHARSET=utf8 COMMENT='计划点评';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jihuadianping`
--

LOCK TABLES `jihuadianping` WRITE;
/*!40000 ALTER TABLE `jihuadianping` DISABLE KEYS */;
INSERT INTO `jihuadianping` VALUES (151,'2024-02-16 13:12:27','员工工号1','员工姓名1','计划标题1','学习进度1','学习内容1','点评内容1','导师账号1','导师姓名1','2024-02-16 21:12:27'),(152,'2024-02-16 13:12:27','员工工号2','员工姓名2','计划标题2','学习进度2','学习内容2','点评内容2','导师账号2','导师姓名2','2024-02-16 21:12:27'),(153,'2024-02-16 13:12:27','员工工号3','员工姓名3','计划标题3','学习进度3','学习内容3','点评内容3','导师账号3','导师姓名3','2024-02-16 21:12:27'),(154,'2024-02-16 13:12:27','员工工号4','员工姓名4','计划标题4','学习进度4','学习内容4','点评内容4','导师账号4','导师姓名4','2024-02-16 21:12:27'),(155,'2024-02-16 13:12:27','员工工号5','员工姓名5','计划标题5','学习进度5','学习内容5','点评内容5','导师账号5','导师姓名5','2024-02-16 21:12:27'),(156,'2024-02-16 13:12:27','员工工号6','员工姓名6','计划标题6','学习进度6','学习内容6','点评内容6','导师账号6','导师姓名6','2024-02-16 21:12:27'),(1708090587647,'2024-02-16 13:36:27','1','小王','学习','进行中','学习的内容','点评','2','2','2024-02-16 21:36:23');
/*!40000 ALTER TABLE `jihuadianping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jihuajindu`
--

DROP TABLE IF EXISTS `jihuajindu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jihuajindu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `jihuabiaoti` varchar(200) NOT NULL COMMENT '计划标题',
  `xuexijindu` varchar(200) DEFAULT NULL COMMENT '学习进度',
  `xuexineirong` varchar(200) DEFAULT NULL COMMENT '学习内容',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `gengxinshijian` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708090537947 DEFAULT CHARSET=utf8 COMMENT='计划进度';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jihuajindu`
--

LOCK TABLES `jihuajindu` WRITE;
/*!40000 ALTER TABLE `jihuajindu` DISABLE KEYS */;
INSERT INTO `jihuajindu` VALUES (141,'2024-02-16 13:12:27','员工工号1','员工姓名1','计划标题1','学习进度1','学习内容1','备注1','2024-02-16 21:12:27'),(142,'2024-02-16 13:12:27','员工工号2','员工姓名2','计划标题2','学习进度2','学习内容2','备注2','2024-02-16 21:12:27'),(143,'2024-02-16 13:12:27','员工工号3','员工姓名3','计划标题3','学习进度3','学习内容3','备注3','2024-02-16 21:12:27'),(144,'2024-02-16 13:12:27','员工工号4','员工姓名4','计划标题4','学习进度4','学习内容4','备注4','2024-02-16 21:12:27'),(145,'2024-02-16 13:12:27','员工工号5','员工姓名5','计划标题5','学习进度5','学习内容5','备注5','2024-02-16 21:12:27'),(146,'2024-02-16 13:12:27','员工工号6','员工姓名6','计划标题6','学习进度6','学习内容6','备注6','2024-02-16 21:12:27'),(1708090537946,'2024-02-16 13:35:37','1','小王','学习','进行中','学习的内容','','2024-02-16 21:35:26');
/*!40000 ALTER TABLE `jihuajindu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengfenlei`
--

DROP TABLE IF EXISTS `kechengfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengfenlei` varchar(200) NOT NULL COMMENT '课程分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengfenlei` (`kechengfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1708090613340 DEFAULT CHARSET=utf8 COMMENT='课程分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengfenlei`
--

LOCK TABLES `kechengfenlei` WRITE;
/*!40000 ALTER TABLE `kechengfenlei` DISABLE KEYS */;
INSERT INTO `kechengfenlei` VALUES (71,'2024-02-16 13:12:27','课程分类1'),(72,'2024-02-16 13:12:27','课程分类2'),(73,'2024-02-16 13:12:27','课程分类3'),(74,'2024-02-16 13:12:27','课程分类4'),(75,'2024-02-16 13:12:27','课程分类5'),(76,'2024-02-16 13:12:27','课程分类6'),(1708090613339,'2024-02-16 13:36:52','入职基础');
/*!40000 ALTER TABLE `kechengfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-02-16 13:12:28','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-send\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"在线考试\",\"tableName\":\"exampaper\"},{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"打印\",\"导出\"],\"menu\":\"试题管理\",\"menuJump\":\"列表\",\"tableName\":\"examquestion\"},{\"appFrontIcon\":\"cuIcon-send\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"试卷列表\",\"menuJump\":\"12\",\"tableName\":\"exampaper\"},{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"考试记录\",\"tableName\":\"examrecord\"}],\"fontClass\":\"icon-common20\",\"menu\":\"试卷管理\",\"unicode\":\"&#xee02;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"计划进度\",\"menuJump\":\"列表\",\"tableName\":\"jihuajindu\"},{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"计划点评\",\"menuJump\":\"列表\",\"tableName\":\"jihuadianping\"},{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"学习计划\",\"menuJump\":\"列表\",\"tableName\":\"xuexijihua\"}],\"fontClass\":\"icon-common28\",\"menu\":\"学习计划管理\",\"unicode\":\"&#xee2d;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"学习信息\",\"menuJump\":\"列表\",\"tableName\":\"xuexixinxi\"},{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"课程分类\",\"menuJump\":\"列表\",\"tableName\":\"kechengfenlei\"},{\"appFrontIcon\":\"cuIcon-send\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"学习资源\",\"menuJump\":\"列表\",\"tableName\":\"xuexiziyuan\"}],\"fontClass\":\"icon-common44\",\"menu\":\"学习课程管理\",\"unicode\":\"&#xef28;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"员工\",\"menuJump\":\"列表\",\"tableName\":\"yuangong\"}],\"fontClass\":\"icon-user5\",\"menu\":\"用户管理\",\"unicode\":\"&#xef9b;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"},{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"fontClass\":\"icon-common5\",\"menu\":\"管理员管理\",\"unicode\":\"&#xedae;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"导师\",\"menuJump\":\"列表\",\"tableName\":\"daoshi\"}],\"fontClass\":\"icon-user3\",\"menu\":\"教师管理\",\"unicode\":\"&#xef99;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-time\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"指导咨询\",\"menuJump\":\"列表\",\"tableName\":\"zhidaozixun\"}],\"fontClass\":\"icon-common8\",\"menu\":\"指导咨询管理\",\"unicode\":\"&#xedb6;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"公告信息\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"查看\"],\"fontClass\":\"icon-common42\",\"menu\":\"试卷列表\",\"menuJump\":\"12\",\"tableName\":\"exampaper\",\"unicode\":\"&#xef24;\"}],\"fontClass\":\"icon-common42\",\"menu\":\"在线考试\",\"unicode\":\"&#xef24;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\",\"学习\"],\"menu\":\"学习资源\",\"menuJump\":\"列表\",\"tableName\":\"xuexiziyuan\"}],\"menu\":\"学习课程管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"查看\"],\"menu\":\"我的收藏\",\"menuJump\":\"1\",\"tableName\":\"storeup\"}],\"fontClass\":\"icon-common6\",\"menu\":\"我的收藏管理\",\"unicode\":\"&#xedad;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"计划点评\",\"menuJump\":\"列表\",\"tableName\":\"jihuadianping\"},{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"进度\"],\"menu\":\"学习计划\",\"menuJump\":\"列表\",\"tableName\":\"xuexijihua\"},{\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"点评\"],\"menu\":\"计划进度\",\"menuJump\":\"列表\",\"tableName\":\"jihuajindu\"}],\"fontClass\":\"icon-common28\",\"menu\":\"学习计划管理\",\"unicode\":\"&#xee2d;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"学习信息\",\"menuJump\":\"列表\",\"tableName\":\"xuexixinxi\"}],\"fontClass\":\"icon-common44\",\"menu\":\"学习课程管理\",\"unicode\":\"&#xef28;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"考试记录\",\"tableName\":\"examrecord\"},{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"错题本\",\"menuJump\":\"22\",\"tableName\":\"examrecord\"}],\"fontClass\":\"icon-common20\",\"menu\":\"试卷管理\",\"unicode\":\"&#xee02;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-time\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"指导咨询\",\"menuJump\":\"列表\",\"tableName\":\"zhidaozixun\"}],\"fontClass\":\"icon-common8\",\"menu\":\"指导咨询管理\",\"unicode\":\"&#xedb6;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"公告信息\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"查看\"],\"fontClass\":\"icon-common42\",\"menu\":\"试卷列表\",\"menuJump\":\"12\",\"tableName\":\"exampaper\",\"unicode\":\"&#xef24;\"}],\"fontClass\":\"icon-common42\",\"menu\":\"在线考试\",\"unicode\":\"&#xef24;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\",\"学习\"],\"menu\":\"学习资源\",\"menuJump\":\"列表\",\"tableName\":\"xuexiziyuan\"}],\"menu\":\"学习课程管理\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"否\",\"roleName\":\"员工\",\"tableName\":\"yuangong\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-send\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"试卷列表\",\"menuJump\":\"12\",\"tableName\":\"exampaper\"},{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"考试记录\",\"tableName\":\"examrecord\"},{\"appFrontIcon\":\"cuIcon-send\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"在线考试\",\"tableName\":\"exampaper\"},{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"试题管理\",\"menuJump\":\"列表\",\"tableName\":\"examquestion\"}],\"fontClass\":\"icon-common20\",\"menu\":\"试卷管理\",\"unicode\":\"&#xee02;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-time\",\"buttons\":[\"查看\",\"删除\",\"审核\"],\"menu\":\"指导咨询\",\"menuJump\":\"列表\",\"tableName\":\"zhidaozixun\"}],\"fontClass\":\"icon-common8\",\"menu\":\"指导咨询管理\",\"unicode\":\"&#xedb6;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"学习信息\",\"menuJump\":\"列表\",\"tableName\":\"xuexixinxi\"},{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"课程分类\",\"menuJump\":\"列表\",\"tableName\":\"kechengfenlei\"},{\"appFrontIcon\":\"cuIcon-send\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"学习资源\",\"menuJump\":\"列表\",\"tableName\":\"xuexiziyuan\"}],\"fontClass\":\"icon-common44\",\"menu\":\"学习课程管理\",\"unicode\":\"&#xef28;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"查看\",\"删除\",\"点评\"],\"menu\":\"计划进度\",\"menuJump\":\"列表\",\"tableName\":\"jihuajindu\"},{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"查看\",\"删除\",\"修改\"],\"menu\":\"计划点评\",\"menuJump\":\"列表\",\"tableName\":\"jihuadianping\"}],\"fontClass\":\"icon-common28\",\"menu\":\"学习计划管理\",\"unicode\":\"&#xee2d;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"公告信息\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"查看\"],\"fontClass\":\"icon-common42\",\"menu\":\"试卷列表\",\"menuJump\":\"12\",\"tableName\":\"exampaper\",\"unicode\":\"&#xef24;\"}],\"fontClass\":\"icon-common42\",\"menu\":\"在线考试\",\"unicode\":\"&#xef24;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\",\"学习\"],\"menu\":\"学习资源\",\"menuJump\":\"列表\",\"tableName\":\"xuexiziyuan\"}],\"menu\":\"学习课程管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"导师\",\"tableName\":\"daoshi\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
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
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708091000082 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2024-02-16 13:12:27','青花瓷','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起','file/newsPicture1.jpg','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起， 隔江千万里，在瓶底书前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起， 晕开了局，如传世的青花瓷自顾自美丽，你眼带笑意，色白花青的锦鲤跃然于碗底，临摹宋体落款时却惦记着你，你隐藏在窑烧里千年的秘密，极细腻犹如绣花针落地，帘外芭蕉惹骤雨门环惹铜绿，而我路过那江南小镇惹了你，在泼墨山水画里，你从墨色深处被隐去，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天色等烟雨 ，而我在等你，月色被打捞起， 晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起 ，晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意。'),(102,'2024-02-16 13:12:27','理想三旬','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在','file/newsPicture2.jpg','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在，青春又醉倒在，籍籍无名的怀，靠嬉笑来虚度，聚散得慷慨，辗转却去不到，对的站台，如果漂泊是成长，必经的路牌，你迷醒岁月中，那贫瘠的未来，像遗憾季节里，未结果的爱，弄脏了每一页诗，吻最疼痛的告白，而风声吹到这，已不需要释怀，就老去吧，孤独别醒来，渴望的离开只是无处停摆就歌唱吧，眼睛眯起来而热泪的崩坏，只是没抵达的存在，就甜蜜地忍耐，繁星润湿窗台，光影跳动着像在，困倦里说爱，再无谓的感慨，以为明白，梦倒塌的地方，今已爬满青苔。'),(103,'2024-02-16 13:12:27','七里香','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠','file/newsPicture3.jpg','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，雨下整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，你是我唯一想要的了解，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，那饱满的稻穗幸福了这个季节，而你的脸颊像田里熟透的番茄，你突然对我说七里香的名字很美，我此刻却只想亲吻你倔强的嘴，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，是我唯一想要的了解。'),(104,'2024-02-16 13:12:27','江南','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸','file/newsPicture4.jpg','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天 抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，相信爱一天抵过永远。在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂。'),(105,'2024-02-16 13:12:27','那些你很冒险的梦','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落','file/newsPicture5.jpg','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心有多执着就加倍心痛，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，我不想放手 你松开的左手，你爱的放纵 我白不回天空，我输了 累了，但你再也 不回头，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，你真的不懂 我的爱已降落。'),(106,'2024-02-16 13:12:27','孤勇者','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望','file/newsPicture6.jpg','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望，不肯哭一场，爱你破烂的衣裳，却敢堵命运的枪，爱你和我那么像，缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，他们说 要戒了你的狂，就像擦掉了污垢，他们说 要顺台阶而上，而代价是低头，那就让我 不可 乘风，你一样骄傲着 那种孤勇，谁说对弈平凡的不算英雄，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你破烂的衣裳 却敢堵命运的枪，爱你和我那么像 缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，你的斑驳 与众不同 与众不同，你的沉默 震耳欲聋 震耳欲聋，You Are The Hero，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你来自于蛮荒 一生不借谁的光，你将造你的城邦 在废墟之上，去吗 去啊 以最卑微的梦，战吗 战啊 以最孤高的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄。'),(1708091000081,'2024-02-16 13:43:19','通知','简述','file/1708090992563.jpg','<p>详情</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) DEFAULT NULL COMMENT 'refid',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT NULL COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='我的收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,61,'员工工号1','yuangong','员工','orifi8dbyx9fgm40ow99l7aew4ot0zbi','2024-02-16 13:31:59','2024-02-16 14:31:59'),(2,1,'admin','users','管理员','rcao5nr1s68jyq5fjorwri2p7gdczqk0','2024-02-16 13:32:48','2024-02-16 14:42:25'),(3,1708090391087,'1','yuangong','员工','a1wcwdvygca7snj0wagzmcqw59gdra3b','2024-02-16 13:33:40','2024-02-16 14:41:01'),(4,1708090411253,'2','daoshi','管理员','q5xqcalgjxziy55tbufa3hnz6tndy5s5','2024-02-16 13:36:16','2024-02-16 14:36:16');
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
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-02-16 13:12:28','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuexijihua`
--

DROP TABLE IF EXISTS `xuexijihua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuexijihua` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `jihuabiaoti` varchar(200) NOT NULL COMMENT '计划标题',
  `kaishiriqi` date NOT NULL COMMENT '开始日期',
  `jieshuriqi` date NOT NULL COMMENT '结束日期',
  `jihuaneirong` longtext NOT NULL COMMENT '计划内容',
  `jihuashijian` datetime DEFAULT NULL COMMENT '计划时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708090512714 DEFAULT CHARSET=utf8 COMMENT='学习计划';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuexijihua`
--

LOCK TABLES `xuexijihua` WRITE;
/*!40000 ALTER TABLE `xuexijihua` DISABLE KEYS */;
INSERT INTO `xuexijihua` VALUES (131,'2024-02-16 13:12:27','员工工号1','员工姓名1','计划标题1','2024-02-16','2024-02-16','计划内容1','2024-02-16 21:12:27','备注1'),(132,'2024-02-16 13:12:27','员工工号2','员工姓名2','计划标题2','2024-02-16','2024-02-16','计划内容2','2024-02-16 21:12:27','备注2'),(133,'2024-02-16 13:12:27','员工工号3','员工姓名3','计划标题3','2024-02-16','2024-02-16','计划内容3','2024-02-16 21:12:27','备注3'),(134,'2024-02-16 13:12:27','员工工号4','员工姓名4','计划标题4','2024-02-16','2024-02-16','计划内容4','2024-02-16 21:12:27','备注4'),(135,'2024-02-16 13:12:27','员工工号5','员工姓名5','计划标题5','2024-02-16','2024-02-16','计划内容5','2024-02-16 21:12:27','备注5'),(136,'2024-02-16 13:12:27','员工工号6','员工姓名6','计划标题6','2024-02-16','2024-02-16','计划内容6','2024-02-16 21:12:27','备注6'),(1708090512713,'2024-02-16 13:35:11','1','小王','学习','2024-02-16','2024-02-24','<p>计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情</p>','2024-02-16 21:33:52','');
/*!40000 ALTER TABLE `xuexijihua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuexixinxi`
--

DROP TABLE IF EXISTS `xuexixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuexixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziyuanmingcheng` varchar(200) NOT NULL COMMENT '资源名称',
  `kechengfenlei` varchar(200) NOT NULL COMMENT '课程分类',
  `jianshu` longtext COMMENT '简述',
  `daoshizhanghao` varchar(200) DEFAULT NULL COMMENT '导师账号',
  `daoshixingming` varchar(200) DEFAULT NULL COMMENT '导师姓名',
  `xueshengshijian` datetime DEFAULT NULL COMMENT '学生时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708090882319 DEFAULT CHARSET=utf8 COMMENT='学习信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuexixinxi`
--

LOCK TABLES `xuexixinxi` WRITE;
/*!40000 ALTER TABLE `xuexixinxi` DISABLE KEYS */;
INSERT INTO `xuexixinxi` VALUES (121,'2024-02-16 13:12:27','资源名称1','课程分类1','简述1','导师账号1','导师姓名1','2024-02-16 21:12:27','员工工号1','员工姓名1'),(122,'2024-02-16 13:12:27','资源名称2','课程分类2','简述2','导师账号2','导师姓名2','2024-02-16 21:12:27','员工工号2','员工姓名2'),(123,'2024-02-16 13:12:27','资源名称3','课程分类3','简述3','导师账号3','导师姓名3','2024-02-16 21:12:27','员工工号3','员工姓名3'),(124,'2024-02-16 13:12:27','资源名称4','课程分类4','简述4','导师账号4','导师姓名4','2024-02-16 21:12:27','员工工号4','员工姓名4'),(125,'2024-02-16 13:12:27','资源名称5','课程分类5','简述5','导师账号5','导师姓名5','2024-02-16 21:12:27','员工工号5','员工姓名5'),(126,'2024-02-16 13:12:27','资源名称6','课程分类6','简述6','导师账号6','导师姓名6','2024-02-16 21:12:27','员工工号6','员工姓名6'),(1708090882318,'2024-02-16 13:41:22','公司文化','入职基础','简述','2','2','2024-02-16 21:41:21','1','小王');
/*!40000 ALTER TABLE `xuexixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuexiziyuan`
--

DROP TABLE IF EXISTS `xuexiziyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuexiziyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziyuanmingcheng` varchar(200) NOT NULL COMMENT '资源名称',
  `fengmian` longtext COMMENT '封面',
  `kechengfenlei` varchar(200) NOT NULL COMMENT '课程分类',
  `shipin` longtext COMMENT '视频',
  `jianshu` longtext COMMENT '简述',
  `xiangqing` longtext COMMENT '详情',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  `daoshizhanghao` varchar(200) DEFAULT NULL COMMENT '导师账号',
  `daoshixingming` varchar(200) DEFAULT NULL COMMENT '导师姓名',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708090678348 DEFAULT CHARSET=utf8 COMMENT='学习资源';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuexiziyuan`
--

LOCK TABLES `xuexiziyuan` WRITE;
/*!40000 ALTER TABLE `xuexiziyuan` DISABLE KEYS */;
INSERT INTO `xuexiziyuan` VALUES (81,'2024-02-16 13:12:27','资源名称1','file/xuexiziyuanFengmian1.jpg,file/xuexiziyuanFengmian2.jpg,file/xuexiziyuanFengmian3.jpg','课程分类1','','简述1','详情1',1,'导师账号1','导师姓名1','2024-02-16 21:12:27'),(82,'2024-02-16 13:12:27','资源名称2','file/xuexiziyuanFengmian2.jpg,file/xuexiziyuanFengmian3.jpg,file/xuexiziyuanFengmian4.jpg','课程分类2','','简述2','详情2',2,'导师账号2','导师姓名2','2024-02-16 21:12:27'),(83,'2024-02-16 13:12:27','资源名称3','file/xuexiziyuanFengmian3.jpg,file/xuexiziyuanFengmian4.jpg,file/xuexiziyuanFengmian5.jpg','课程分类3','','简述3','详情3',3,'导师账号3','导师姓名3','2024-02-16 21:12:27'),(84,'2024-02-16 13:12:27','资源名称4','file/xuexiziyuanFengmian4.jpg,file/xuexiziyuanFengmian5.jpg,file/xuexiziyuanFengmian6.jpg','课程分类4','','简述4','详情4',4,'导师账号4','导师姓名4','2024-02-16 21:12:27'),(85,'2024-02-16 13:12:27','资源名称5','file/xuexiziyuanFengmian5.jpg,file/xuexiziyuanFengmian6.jpg,file/xuexiziyuanFengmian7.jpg','课程分类5','','简述5','详情5',5,'导师账号5','导师姓名5','2024-02-16 21:12:27'),(86,'2024-02-16 13:12:27','资源名称6','file/xuexiziyuanFengmian6.jpg,file/xuexiziyuanFengmian7.jpg,file/xuexiziyuanFengmian8.jpg','课程分类6','','简述6','详情6',6,'导师账号6','导师姓名6','2024-02-16 21:12:27'),(1708090678347,'2024-02-16 13:37:57','公司文化','file/1708090631943.jpg','入职基础','file/1708090640686.mp4','简述','<p>计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情计划详情<img src=\"http://localhost:8080/cl8550761/file/1708090676114.jpg\" alt=\"\" data-href=\"\" style=\"\"/></p>',0,'2','2','2024-02-16 21:36:59');
/*!40000 ALTER TABLE `xuexiziyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangong`
--

DROP TABLE IF EXISTS `yuangong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) NOT NULL COMMENT '员工工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) NOT NULL COMMENT '员工姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuangonggonghao` (`yuangonggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1708090391088 DEFAULT CHARSET=utf8 COMMENT='员工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangong`
--

LOCK TABLES `yuangong` WRITE;
/*!40000 ALTER TABLE `yuangong` DISABLE KEYS */;
INSERT INTO `yuangong` VALUES (61,'2024-02-16 13:12:27','员工工号1','123456','员工姓名1','file/yuangongTouxiang1.jpg','男','19819881111'),(62,'2024-02-16 13:12:27','员工工号2','123456','员工姓名2','file/yuangongTouxiang2.jpg','男','19819881112'),(63,'2024-02-16 13:12:27','员工工号3','123456','员工姓名3','file/yuangongTouxiang3.jpg','男','19819881113'),(64,'2024-02-16 13:12:27','员工工号4','123456','员工姓名4','file/yuangongTouxiang4.jpg','男','19819881114'),(65,'2024-02-16 13:12:27','员工工号5','123456','员工姓名5','file/yuangongTouxiang5.jpg','男','19819881115'),(66,'2024-02-16 13:12:27','员工工号6','123456','员工姓名6','file/yuangongTouxiang6.jpg','男','19819881116'),(1708090391087,'2024-02-16 13:33:11','1','1','小王','file/1708090386703.jpeg','女','13612312312');
/*!40000 ALTER TABLE `yuangong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhidaozixun`
--

DROP TABLE IF EXISTS `zhidaozixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhidaozixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `daoshizhanghao` varchar(200) DEFAULT NULL COMMENT '导师账号',
  `daoshixingming` varchar(200) DEFAULT NULL COMMENT '导师姓名',
  `zixunwenti` longtext COMMENT '咨询问题',
  `zixunshijian` datetime DEFAULT NULL COMMENT '咨询时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708090565053 DEFAULT CHARSET=utf8 COMMENT='指导咨询';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhidaozixun`
--

LOCK TABLES `zhidaozixun` WRITE;
/*!40000 ALTER TABLE `zhidaozixun` DISABLE KEYS */;
INSERT INTO `zhidaozixun` VALUES (161,'2024-02-16 13:12:27','导师账号1','导师姓名1','咨询问题1','2024-02-16 21:12:27','员工工号1','员工姓名1',''),(162,'2024-02-16 13:12:27','导师账号2','导师姓名2','咨询问题2','2024-02-16 21:12:27','员工工号2','员工姓名2',''),(163,'2024-02-16 13:12:27','导师账号3','导师姓名3','咨询问题3','2024-02-16 21:12:27','员工工号3','员工姓名3',''),(164,'2024-02-16 13:12:27','导师账号4','导师姓名4','咨询问题4','2024-02-16 21:12:27','员工工号4','员工姓名4',''),(165,'2024-02-16 13:12:27','导师账号5','导师姓名5','咨询问题5','2024-02-16 21:12:27','员工工号5','员工姓名5',''),(166,'2024-02-16 13:12:27','导师账号6','导师姓名6','咨询问题6','2024-02-16 21:12:27','员工工号6','员工姓名6',''),(1708090565052,'2024-02-16 13:36:04','2','2','咨询问题','2024-02-16 00:00:00','1','小王','回复');
/*!40000 ALTER TABLE `zhidaozixun` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-28 12:50:46
