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
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `buyerName` varchar(45) NOT NULL COMMENT '商品id',
  `buyerProductPrice` varchar(45) NOT NULL,
  `buyerProductId` int(11) NOT NULL,
  `buyerImage` varchar(255) DEFAULT NULL,
  `sellerId` int(11) DEFAULT NULL,
  `sellerProductPrice` varchar(45) DEFAULT NULL,
  `sellerProductId` int(11) DEFAULT NULL,
  `sellerImage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (10,'yangyi','34.0',8,'products/1/cs10008.jpg',1,'60.0',NULL,'products/3/100101.jpg'),(11,'yangyi','34.0',8,'products/1/cs10008.jpg',1,'20.0',NULL,'products/4/400102.jpg'),(19,'MRwang','18.0',546,'products/3/10010.jpeg',2,'70.0',NULL,'products/4/100102.jpg'),(20,'MRwang','18.0',546,'products/3/10010.jpeg',2,'10.0',NULL,'products/5/100101.jpg'),(21,'MRwang','18.0',546,'products/3/10010.jpeg',2,'10.0',NULL,'products/5/100101.jpg'),(22,'MRwang','18.0',546,'products/3/10010.jpeg',2,'10.0',NULL,'products/5/100101.jpg');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
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
