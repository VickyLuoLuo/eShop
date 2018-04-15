CREATE DATABASE  IF NOT EXISTS `yshop` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `yshop`;
-- MySQL dump 10.13  Distrib 5.5.59, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: yshop
-- ------------------------------------------------------
-- Server version	5.5.59-0ubuntu0.14.04.1

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `cur_price` float DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `inventory` int(11) DEFAULT NULL,
  `is_hot` int(11) DEFAULT NULL,
  `org_price` float DEFAULT NULL,
  `pdate` datetime DEFAULT NULL,
  `pdesc` varchar(255) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `csid` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `FKED8DCCEFB9B74E02` (`csid`),
  CONSTRAINT `Refrence` FOREIGN KEY (`csid`) REFERENCES `categorysecond` (`csid`)
) ENGINE=InnoDB AUTO_INCREMENT=547 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (5,35,'products/1/cs10026.jpeg',1,0,100,'2017-06-25 21:00:00',NULL,'连衣裙',3,'Zs',1),(6,33,'products/1/cs10006.jpg',5,0,79,'2017-06-25 20:57:28',NULL,'粉嫩连衣裙',1,'yangyi',1),(7,43,'products/1/cs10007.jpg',2,0,103,'2017-06-25 20:57:54',NULL,'时尚针织',5,'New',1),(8,34,'products/1/cs10008.jpg',3,0,79,'2017-06-25 20:58:48',NULL,'精选少女风',1,'yangyi',1),(10,23,'products/1/cs10010.jpg',9,0,99,'2017-06-25 20:59:32',NULL,'粉嫩少女裙',9,'JL',1),(11,24,'products/1/cs10011.jpg',6,0,87,'2017-06-25 20:59:58',NULL,'连衣裙',10,'Ll',1),(12,23,'products/1/cs10012.jpg',6,0,98,'2017-06-25 21:01:47',NULL,'运动装',11,'Ly',1),(13,16,'products/1/cs10013.jpg',5,0,67,'2017-06-25 21:02:12',NULL,'显瘦中长款连衣裙',12,'Uin',1),(14,21,'products/1/cs10014.jpg',3,0,97,'2017-06-25 21:02:43',NULL,'时尚宽松上衣',13,'Jli',1),(15,21,'products/1/cs10015.jpg',2,0,85,'2017-06-25 21:03:01',NULL,'夏季新款全麻条纹裙',14,'Ajk',1),(16,20,'products/1/cs10016.jpg',3,0,90,'2017-06-25 21:03:27',NULL,'夏季收腰中长修身',15,'Sdf',1),(17,27,'products/1/cs10017.jpg',1,0,77,'2017-06-25 21:03:48',NULL,'小短裙',16,'Zio',1),(18,36,'products/1/cs10018.jpg',2,0,86,'2017-06-25 21:04:26',NULL,'有袖蕾丝V领裙',17,'Asd',1),(19,19,'products/1/cs10019.jpg',2,0,89,'2017-06-25 21:04:44',NULL,'时尚宽松流行上衣',18,'Qaq',1),(20,12,'products/1/cs10020.jpg',2,0,35,'2017-06-25 21:05:05',NULL,'潮流T桖衫',19,'Uzi',1),(21,22,'products/1/cs10021.jpg',2,0,45,'2017-06-25 21:05:40',NULL,'潮流T桖衫',20,'Two',1),(22,11,'products/1/cs10022.jpg',3,0,25,'2017-06-25 21:05:58',NULL,'时尚长裙',16,'Zio',1),(23,12,'products/1/cs10023.jpg',4,0,34,'2017-06-25 21:06:39',NULL,'露肩时尚衣',8,'Ybh',1),(24,15,'products/1/cs10024.jpg',8,0,33,'2017-06-25 21:07:03',NULL,'收身紧腰小裙',1,'Yzh',1),(25,24,'products/1/cs10025.jpg',4,0,70,'2017-06-25 21:07:29',NULL,'时尚外搭',3,'Zs',1),(27,30,'products/1/cs20001.jpg',1,0,120,'2017-06-25 21:09:32',NULL,'冬季新款羽绒服',6,'Lgm',2),(28,45,'products/1/cs20002.jpg',1,0,137,'2017-06-25 21:09:56',NULL,'假毛领时尚新款羽绒服',16,'Zio',2),(29,48,'products/1/cs20003.jpg',1,0,143,'2017-06-25 21:10:17',NULL,'进口无帽貂皮外套',6,'Lgm',2),(30,61,'products/1/cs20004.jpg',1,0,215,'2017-06-25 21:10:42',NULL,'进口无帽貂皮外套',1,'Yzh',2),(31,35,'products/1/cs20005.jpg',2,0,187,'2017-06-25 21:11:12',NULL,'修身时尚',8,'Ybh',2),(32,34,'products/1/cs20006.jpg',1,0,156,'2017-06-25 21:11:36',NULL,'冬季时尚外套',15,'Sdf',2),(33,65,'products/1/cs20008.jpg',1,0,218,'2017-06-25 21:11:58',NULL,'纯花色冬季外搭',6,'Lgm',2),(34,26,'products/1/cs20009.jpg',1,0,179,'2017-06-25 21:12:19',NULL,'冬季粉嫩外套',1,'Yzh',2),(35,34,'products/1/cs20010.jpg',1,0,189,'2017-06-25 21:12:41',NULL,'皇冠天鹅绒水貂皮大衣',8,'Ybh',2),(36,31,'products/1/cs20011.jpg',1,0,95,'2017-06-25 21:13:00',NULL,'学生党羽绒',4,'Ls',2),(37,47,'products/1/cs20012.jpg',1,0,289,'2017-06-25 21:13:21',NULL,'学生党羽绒服',3,'Zs',2),(39,27,'products/1/cs20013.jpg',1,0,177,'2017-07-01 21:14:08',NULL,'冬季外套',4,'Ls',2),(40,32,'products/1/cs20014.jpg',1,0,219,'2017-06-25 21:14:30',NULL,'时尚潮流羽绒服',2,'Abc',2),(42,43,'products/1/cs30001.png',1,0,156,'2017-06-25 21:22:58',NULL,'毛呢大衣',6,'Lgm',3),(43,35,'products/1/cs30002.png',3,0,167,'2017-06-25 21:24:04',NULL,'毛呢大衣',2,'Abc',3),(44,44,'products/1/cs30003.png',4,0,165,'2017-06-25 21:25:17',NULL,'毛呢大衣',16,'Zio',3),(45,12,'products/1/cs30004.png',1,0,134,'2017-06-25 21:26:23',NULL,'毛呢大衣',8,'Ybh',3),(46,34,'products/1/cs30005.png',2,0,156,'2017-06-25 21:27:28',NULL,'毛呢大衣',3,'Zs',3),(47,23,'products/1/cs30006.png',1,0,132,'2017-06-25 21:28:01',NULL,'毛呢大衣',19,'Uzi',3),(48,34,'products/1/cs30007.png',2,0,155,'2017-06-25 21:28:44',NULL,'毛呢大衣',19,'Uzi',3),(49,45,'products/1/cs30008.png',2,0,133,'2017-06-25 21:30:21',NULL,'毛呢大衣',2,'Abc',3),(50,35,'products/1/cs30009.png',2,0,167,'2017-06-25 21:30:40',NULL,'毛呢大衣',15,'Sdf',3),(51,20,'products/1/cs30010.png',2,0,120,'2017-06-25 21:30:59',NULL,'毛呢大衣',10,'Ll',3),(53,30,'products/1/cs40002.png',2,0,190,'2017-06-25 21:31:57',NULL,'街边时尚风',8,'Ybh',4),(54,45,'products/1/cs40003.png',4,0,132,'2017-06-25 21:33:18',NULL,'街边时尚风',17,'Asd',4),(55,26,'products/1/cs40004.jpg',2,0,167,'2017-06-25 21:33:48',NULL,'街边时尚风',16,'Zio',4),(56,78,'products/1/cs40005.png',2,0,412,'2017-06-25 21:36:13',NULL,'街边时尚风',1,'Yzh',4),(57,90,'products/1/cs40014.jpg',22,0,340,'2017-06-25 21:37:32',NULL,'街边时尚风',17,'Asd',4),(58,87,'products/1/cs40006.png',2,1,170,'2017-06-25 21:38:00',NULL,'街边时尚风',16,'Zio',4),(59,70,'products/1/cs40007.png',2,0,120,'2017-06-25 21:38:34',NULL,'街边时尚风',4,'Ls',4),(69,35,'products/1/cs40008.png',2,0,230,'2017-06-25 21:39:13',NULL,'街边时尚风',9,'JL',4),(70,20,'products/1/cs40009.png',2,0,130,'2017-06-25 21:39:47',NULL,'街边时尚风',19,'Uzi',4),(71,20,'products/1/cs40010.png',2,0,90,'2017-06-25 21:40:37',NULL,'街边时尚风',2,'Abc',4),(72,30,'products/1/cs40011.png',3,0,180,'2017-06-25 21:41:17',NULL,'街边时尚风',19,'Uzi',4),(73,40,'products/1/cs40012.jpg',1,0,120,'2017-06-25 21:41:46',NULL,'街边时尚风',10,'Ll',4),(74,60,'products/1/cs40013.jpg',2,0,220,'2017-06-25 21:42:35','','街边时尚风',6,'Lgm',4),(76,40,'products/1/cs50001.png',2,0,130,'2017-06-25 21:45:47',NULL,'街边时尚风',17,'Asd',5),(77,50,'products/1/cs50002.png',2,0,240,'2017-06-25 21:47:03',NULL,'精品流行男装',2,'Abc',5),(78,70,'products/1/cs50003.png',2,0,200,'2017-06-25 21:47:32',NULL,'精品流行男装',10,'Ll',5),(79,60,'products/1/cs50004.png',2,0,180,'2017-06-25 21:48:26',NULL,'精品流行男装',3,'Zs',5),(80,80,'products/1/cs50005.png',1,0,280,'2017-06-25 21:48:54',NULL,'精品流行男装',4,'Ls',5),(81,30,'products/1/cs50006.png',2,0,120,'2017-06-25 21:49:49','','精品流行男装',15,'Sdf',5),(82,40,'products/1/cs50007.png',1,0,120,'2017-06-25 21:50:30',NULL,'精品流行男装',16,'Zio',5),(83,79,'products/1/cs50008.png',1,0,230,'2017-06-25 21:50:57',NULL,'精品流行男装',13,'Jli',5),(84,30,'products/1/cs50009.png',2,0,130,'2017-06-25 21:52:25',NULL,'精品流行男装',17,'Asd',5),(85,79,'products/1/cs50010.png',1,0,220,'2017-06-25 21:52:56',NULL,'精品流行男装',13,'Jli',5),(86,60,'products/1/cs50011.png',2,0,179,'2017-06-25 21:53:44',NULL,'精品流行男装',2,'Abc',5),(87,40,'products/1/cs50012.jpg',1,0,180,'2017-06-25 21:54:25','','精品流行男装',13,'Jli',5),(95,39,'products/1/cs60001.png',1,0,230,'2017-06-25 21:55:38',NULL,'精选时尚潮流帽衫',4,'Ls',6),(96,30,'products/1/cs60002.png',2,0,170,'2017-06-25 21:55:57',NULL,NULL,11,'Ly',6),(97,29,'products/1/cs60003.png',1,0,198,'2017-06-25 21:56:19',NULL,'精选时尚潮流帽衫',16,'Zio',6),(98,37,'products/1/cs60004.png',10,0,168,'2017-06-25 21:56:41',NULL,'精选时尚潮流帽衫',8,'Ybh',6),(99,35,'products/1/cs60005.png',12,0,185,'2017-06-25 21:57:02',NULL,'精选时尚潮流帽衫',1,'Yzh',6),(100,20,'products/1/cs60006.png',5,0,130,'2017-06-25 21:57:38',NULL,'精选时尚潮流帽衫',17,'Asd',6),(101,36,'products/1/cs60007.png',3,0,176,'2017-06-25 21:58:20',NULL,'精选时尚潮流帽衫',6,'Lgm',6),(102,30,'products/1/cs60008.png',3,0,189,'2017-06-25 21:59:04',NULL,NULL,3,'Zs',6),(103,56,'products/1/cs60009.png',2,0,156,'2017-06-25 21:59:25',NULL,'精选时尚潮流帽衫',4,'Ls',6),(104,36,'products/1/cs60010.png',2,0,166,'2017-06-25 21:59:51',NULL,'精选时尚潮流帽衫',11,'Ly',6),(120,100,'products/1/cs70001.png',8,0,450,'2017-06-25 22:01:25',NULL,'冬季新款羽绒服',16,'Zio',7),(121,120,'products/1/cs70002.png',2,0,300,'2017-06-25 22:03:29',NULL,'冬季新款羽绒服',1,'Yzh',7),(122,80,'products/1/cs70003.png',2,0,240,'2017-06-25 22:04:24',NULL,'冬季新款羽绒服',2,'Abc',7),(123,90,'products/1/cs70004.png',2,0,340,'2017-06-25 22:05:06',NULL,'冬季新款羽绒服',19,'Uzi',7),(124,80,'products/1/cs70005.png',1,0,280,'2017-06-25 22:05:31',NULL,'冬季新款羽绒服',3,'Zs',7),(125,80,'products/1/cs70006.png',2,0,230,'2017-06-25 22:06:08',NULL,'冬季新款羽绒服',2,'Abc',7),(126,50,'products/1/cs70007.jpg',1,0,450,'2017-06-25 22:06:48',NULL,'冬季新款羽绒服',1,'Yzh',7),(127,70,'products/1/cs70008.jpg',1,0,300,'2017-06-25 22:07:45',NULL,'冬季新款羽绒服',8,'Ybh',7),(128,40,'products/1/cs70012.jpg',1,0,400,'2017-06-25 22:08:17',NULL,'冬季新款羽绒服',16,'Zio',7),(129,35,'products/1/cs70009.png',2,0,350,'2017-06-25 22:08:44',NULL,'冬季新款羽绒服',14,'Ajk',7),(130,50,'products/1/cs70010.png',2,0,280,'2017-06-25 22:09:21',NULL,'冬季新款羽绒服',2,'Abc',7),(131,25,'products/1/cs70011.jpg',2,0,220,'2017-06-25 22:09:49',NULL,'冬季新款羽绒服',4,'Ls',7),(140,20,'products/2/10001.png',2,0,60,'2017-06-25 22:49:05',NULL,'毛靴',2,'Abc',9),(141,25,'products/2/10002.png',1,0,130,'2017-06-25 22:49:45',NULL,'长靴',8,'Ybh',9),(142,23,'products/2/10003.png',1,0,70,'2017-06-25 22:50:10',NULL,'短靴',11,'Ly',9),(143,32,'products/2/10004.png',1,0,80,'2017-06-25 22:50:32',NULL,'皮靴',13,'Jli',9),(144,20,'products/2/10005.png',2,0,75,'2017-06-25 22:51:15',NULL,'皮靴',15,'Sdf',9),(145,28,'products/2/10006.png',1,0,80,'2017-06-25 22:51:38',NULL,'皮靴',19,'Uzi',9),(146,25,'products/2/10007.png',2,0,60,'2017-06-25 22:52:06',NULL,'防滑保暖靴',17,'Asd',9),(147,30,'products/2/10008.png',2,0,120,'2017-06-25 22:52:35',NULL,'时尚潮流精品靴',14,'Ajk',9),(148,25,'products/2/10009.png',1,0,95,'2017-06-25 22:53:06','','时尚潮流精品靴',4,'Ls',9),(149,25,'products/2/10010.jpg',2,1,150,'2017-06-25 22:53:35',NULL,'时尚潮流精品靴',19,'Uzi',9),(160,41,'products/2/200101.jpg',1,1,210,'2017-06-25 22:56:30',NULL,'男士新潮流运动鞋',NULL,NULL,10),(161,29,'products/2/200102.jpg',1,1,105,'2017-06-25 22:57:07',NULL,'男士新潮流运动鞋',14,'Ajk',10),(162,40,'products/2/200103.jpg',1,0,140,'2017-06-25 22:58:01',NULL,'男士新潮流运动鞋',2,'Abc',10),(170,20,'products/2/400101.jpg',2,0,80,'2017-06-25 22:58:47',NULL,'潮流女包',19,'Uzi',11),(171,25,'products/2/400102.jpg',2,1,65,'2017-07-01 22:59:58',NULL,'潮流女包',16,'Zio',11),(172,15,'products/2/400103.jpg',2,1,50,'2017-06-25 23:00:46',NULL,'潮流女包',6,'Lgm',11),(180,15,'products/2/300101.jpg',1,0,70,'2017-06-25 23:01:24',NULL,'商用男包',2,'Abc',12),(181,5,'products/2/300102.jpg',2,0,35,'2017-06-25 23:01:50',NULL,'小包',4,'Ls',12),(182,25,'products/2/300103.jpg',1,0,105,'2017-06-25 23:02:45',NULL,'商用男包',9,'JL',12),(190,18,'products/2/500101.png',2,0,98,'2017-06-25 23:03:18',NULL,'户外眼镜',2,'Abc',13),(191,30,'products/2/500102.jpg',2,0,270,'2017-06-25 23:04:07',NULL,'登山鞋',1,'Yzh',13),(201,60,'products/3/100101.jpg',2,1,280,'2017-07-05 16:35:16',NULL,'少女风四件套',8,'Ybh',37),(202,50,'products/3/100102.jpg',3,0,190,'2017-06-26 16:36:08',NULL,'家用四件套',9,'JL',37),(203,19,'products/3/200101.jpg',2,1,45,'2017-06-26 16:36:56',NULL,'雨伞',16,'Zio',15),(204,12,'products/3/200102.jpg',1,0,35,'2017-06-26 16:37:27',NULL,'雨伞',6,'Lgm',15),(210,35,'products/3/300101.jpg',2,1,120,'2017-06-26 16:41:10',NULL,'熨斗',4,'Ls',16),(220,10,'products/3/400101.jpg',10,0,30,'2017-06-26 16:42:23',NULL,NULL,3,'Zs',17),(221,10,'products/3/400102.jpg',20,0,27,'2017-06-26 16:43:33',NULL,'喷剂',10,'Ll',17),(230,1,'products/3/500101.jpg',5,1,5,'2017-06-26 16:44:24',NULL,'针线包',3,'Zs',18),(231,40,'products/3/500102.jpg',2,0,120,'2017-06-26 16:45:10',NULL,'缝纫机',11,'Ly',18),(251,60,'products/4/100101.jpg',2,0,180,'2017-06-26 16:48:13',NULL,'时尚纯银吊坠',8,'Ybh',20),(252,70,'products/4/100102.jpg',2,1,230,'2017-07-01 16:51:57',NULL,'纯银手镯',18,'Qaq',20),(253,45,'products/4/100103.jpg',2,1,180,'2017-06-26 16:56:45',NULL,'时尚纯银吊坠',18,'Qaq',20),(254,25,'products/4/100104.jpg',1,0,50,'2017-06-26 16:58:22',NULL,'纯银戒指',19,'Uzi',20),(255,28,'products/4/100105.jpg',2,0,80,'2017-06-26 16:59:27',NULL,'小孩纯银项圈',20,'Two',20),(260,9,'products/4/200101.jpg',10,0,20,'2017-06-26 17:00:47',NULL,'潮流发带',20,'Two',21),(261,5,'products/4/200102.jpg',20,0,15,'2017-06-26 17:01:27',NULL,'时尚耳坠',20,'Two',21),(262,3,'products/4/200103.jpg',5,0,10,'2017-06-26 17:02:21',NULL,'潮流耳坠',8,'Ybh',21),(263,6,'products/4/200104.jpg',10,0,18,'2017-06-26 17:02:51',NULL,'时尚饰品',15,'Sdf',21),(270,30,'products/4/300101.jpg',2,0,120,'2017-06-26 17:03:28',NULL,'进口时尚手表',16,'Zio',22),(271,40,'products/4/300102.jpg',2,1,150,'2017-06-26 17:04:08',NULL,'时尚情侣表',18,'Qaq',22),(272,30,'products/4/300103.jpg',1,0,150,'2017-06-26 17:04:42',NULL,'小清新手表',20,'Two',22),(280,15,'products/4/400101.jpg',3,0,30,'2017-06-26 17:05:21',NULL,'眼镜饰品',17,'Asd',23),(281,20,'products/4/400102.jpg',3,1,65,'2017-07-01 17:06:15',NULL,'小清新眼镜',4,'Ls',23),(282,5,'products/4/400103.jpg',3,0,20,'2017-06-26 17:06:33',NULL,'小清新眼镜',13,'Jli',23),(301,10,'products/5/100101.jpg',4,1,25,'2017-06-26 17:07:54',NULL,'时尚潮流手机壳',19,'Uzi',24),(302,7,'products/5/100102.jpg',3,0,18,'2017-06-26 17:08:35',NULL,'时尚潮流手机壳',11,'Ly',24),(303,3,'products/5/100103.jpg',2,0,10,'2017-06-26 17:08:59',NULL,'手机钢化模',16,'Zio',24),(304,300,'products/5/100104.jpg',1,0,1098,'2017-06-12 17:09:37',NULL,'美图手机',17,'Asd',24),(305,399,'products/5/100105.jpg',1,0,999,'2017-06-26 17:10:33',NULL,'小米手机',10,'Ll',24),(311,200,'products/5/200101.jpg',2,0,670,'2017-06-26 17:11:16',NULL,'平板',14,'Ajk',25),(312,120,'products/5/200102.jpg',1,0,500,'2017-06-26 17:12:02',NULL,'平板',9,'JL',25),(313,410,'products/5/200103.jpg',1,0,799,'2017-06-26 17:12:34',NULL,'平板',8,'Ybh',25),(320,400,'products/5/300101.jpg',2,0,1200,'2017-06-26 17:13:54',NULL,'电脑',14,'Ajk',26),(321,800,'products/5/300102.jpg',1,0,2500,'2017-06-26 17:14:40',NULL,'电脑',13,'Jli',26),(330,700,'products/5/400101.jpg',1,0,2800,'2017-06-26 17:15:12',NULL,'佳能照相机',4,'Ls',27),(331,600,'products/5/400102.jpg',2,0,1500,'2017-06-26 17:15:35',NULL,'索尼照相机',10,'Ll',27),(332,670,'products/5/400103.jpg',1,0,2600,'2017-06-26 17:16:12',NULL,'佳能照相机',3,'Zs',27),(333,400,'products/5/400104.jpg',1,0,1500,'2017-06-26 17:16:44',NULL,'佳能照相机',17,'Asd',27),(401,300,'products/6/100101.jpg',2,0,1800,'2017-06-26 17:18:47',NULL,'微波炉',4,'Ls',29),(402,270,'products/6/100102.jpg',2,0,1500,'2017-06-26 17:20:08',NULL,'电饭煲',1,'Yzh',29),(410,20,'products/6/200201.jpg',1,0,60,'2017-06-26 17:21:53',NULL,'电吹风',18,'Qaq',30),(411,25,'products/6/200202.jpg',1,0,120,'2017-06-26 17:22:49',NULL,'电热水壶',18,'Qaq',30),(413,20,'products/6/300302.jpg',2,0,65,'2017-06-26 17:23:42','','全自动按摩盆',3,'Zs',30),(414,27,'products/6/300303.jpg',1,0,120,'2017-06-26 17:24:11',NULL,'家用电子秤',20,'Two',30),(421,150,'products/6/400401.jpg',1,0,888,'2017-06-26 17:25:00',NULL,'全自动洗衣机',16,'Zio',28),(422,430,'products/6/400402.jpg',1,0,1300,'2017-06-26 17:25:37',NULL,'空调',8,'Ybh',28),(423,790,'products/6/400403.jpg',1,0,2500,'2017-06-26 17:26:07',NULL,'双门电冰箱',12,'Uin',28),(424,400,'products/6/400404.jpg',1,0,1600,'2017-06-26 17:26:40',NULL,'家用电冰箱',12,'Uin',28),(431,5,'products/6/500501.jpg',2,0,20,'2017-06-26 17:27:37',NULL,'家用小桌',20,'Two',32),(432,25,'products/6/500502.jpg',1,1,70,'2017-06-26 17:28:01','','时尚小桌',15,'Sdf',32),(433,23,'products/6/500503.jpg',1,0,65,'2017-06-26 17:28:36',NULL,'时尚小桌',3,'Zs',32),(434,35,'products/6/500504.jpg',1,0,80,'2017-06-26 17:29:04',NULL,'摇摇椅',9,'JL',32),(501,6,'products/7/100101.jpg',10,0,15,'2017-06-26 17:30:04',NULL,'休闲小食',2,'Abc',33),(502,3,'products/7/100102.jpg',20,0,8,'2017-06-26 17:30:54',NULL,'休闲小食',12,'Uin',33),(503,6,'products/7/100103.jpg',29,0,15,'2017-06-26 17:31:28',NULL,'休闲小食',3,'Zs',33),(504,14,'products/7/100104.jpg',10,0,20,'2017-06-26 17:31:51',NULL,'休闲小食',20,'Two',33),(505,20,'products/7/100105.jpg',1,1,35,'2017-06-26 17:32:36',NULL,'休闲小食',16,'Zio',33),(506,17,'products/7/100106.jpg',5,0,30,'2017-06-26 17:33:06',NULL,'休闲小食',10,'Ll',33),(507,8,'products/7/100107.jpg',10,0,15,'2017-06-26 17:33:30',NULL,'休闲小食',4,'Ls',33),(508,22,'products/7/100108.jpg',2,0,45,'2017-06-26 17:33:57',NULL,'休闲小食',18,'Qaq',33),(511,15,'products/7/200101.jpg',2,0,55,'2017-06-26 17:34:25',NULL,'精选好茶',2,'Abc',34),(512,55,'products/7/200102.jpg',5,0,140,'2017-06-26 17:34:53',NULL,'电子烟',1,'Yzh',34),(513,21,'products/7/200103.jpg',7,0,65,'2017-05-01 17:35:13',NULL,'龙井瓶',14,'Ajk',34),(514,39,'products/7/200104.jpg',2,0,89,'2017-05-01 17:35:34',NULL,'装茶茶',20,'Two',34),(515,35,'products/7/200105.jpg',2,1,79,'2017-05-01 17:36:01',NULL,NULL,3,'Zs',34),(516,21,'products/7/200106.jpg',1,0,53,'2017-06-26 17:36:23',NULL,'闺蜜酒',9,'JL',34),(517,15,'products/7/200107.jpg',2,0,35,'2017-06-26 17:36:59',NULL,'棒棒糖',18,'Qaq',34),(518,41,'products/7/200108.jpg',2,0,85,'2017-05-01 17:37:27',NULL,NULL,4,'Ls',34),(519,25,'products/7/200109.jpg',2,0,75,'2017-05-01 17:37:48',NULL,'杜康酒',20,'Two',34),(531,9,'products/7/300101.jpg',5,0,20,'2017-05-31 17:38:13',NULL,'蚬子',16,'Zio',35),(532,30,'products/7/300102.jpg',2,0,55,'2017-06-26 17:38:46',NULL,'牛肉',18,'Qaq',35),(541,44,'products/7/400101.jpg',2,0,85,'2017-05-01 17:39:34',NULL,'豆油',14,'Ajk',36),(542,14,'products/7/400102.jpg',4,1,35,'2017-06-26 17:39:52',NULL,'调味套装',10,'Ll',36),(546,18,'products/3/10010.jpeg',1,NULL,30,'2018-04-15 01:15:20','','糖',2,'MRwang',34);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-15 15:38:46