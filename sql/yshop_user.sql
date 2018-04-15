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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `addr` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `money` float NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `vipFlag` tinyint(1) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'as',21,'001','123@qq.com',1500,'yangyi','123','1234',1,'Yzh',1),(2,'asd',22,'002','1234@qq.com',200,'MRwang','123','12345',1,'Abc',1),(3,'asdf',21,'003','12345@qq.com',0,'Mrszhang','123','12345',1,'Zs',1),(4,'asdf',21,'004','123456@qq.com',0,'Mrsli','123','12345',1,'Ls',1),(5,'qwe',1,'005','email@qq.com',0,'Mrsqi','123.','100',1,'New',1),(6,'kl',20,'112','123456@qq.com',0,'Mrzhang','1234','111',1,'Lgm',0),(7,'8',8,'007','8@qq.com',0,'LISI','1234','8',1,'Ao',0),(8,'qw',20,'112','123456@qq.com',0,'Mrzhao','1234','112',1,'Ybh',0),(9,'qwe',20,'112','123456@qq.com',0,'Mrqi','1234','1234',1,'JL',0),(10,'asd',20,'112','123456@qq.com',0,'Mrli','1233','124',1,'Ll',1),(11,'sad',20,'112','123456@qq.com',0,'Mrluo','1332','31232',1,'Lol',0),(12,'sad',20,'112','123456@qq.com',0,'yunduo','4324','3133',1,'Uin',0),(13,'jkj',20,'112','123456@qq.com',0,'Mrjun','4144','1763',1,'Jui',1),(14,'sda',20,'112','123456@qq.com',0,'Mrskan','12131','6463',1,'Aak',0),(15,'ddS',20,'112','123456@qq.com',0,'Mrssa','123','4241',1,'Sdf',0),(16,'zxk',20,'112','123456@qq.com',0,'LIuna','42332','1212',1,'Zio',0),(17,'axm',20,'112','123456@qq.com',0,'Liuning','21312','2321',1,'Asd',1),(18,'nmnij',20,'112','123456@qq.com',0,'Liqiang','31332','4143',1,'Qaq',0),(19,'nij',20,'111','123456@qq.com',0,'wangbo','23213','12312',1,'Uzi',0),(20,'qwer',2,'011','two@qq.com',0,'lijun','1234.','1',1,'Two',0),(21,'asd',21,'012','12345@qq.com',0,'zhangsan','123','999',1,'Aq',0),(22,'as',11,'013','123@qq.com',0,'w','123','12345',1,'Wange',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `u_afterinsert` AFTER INSERT ON `user` FOR EACH ROW insert into wallet(uid) values (new.uid) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-15 15:38:46
