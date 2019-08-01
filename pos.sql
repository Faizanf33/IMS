-- MySQL dump 10.16  Distrib 10.1.19-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: localhost
-- ------------------------------------------------------
-- Server version	10.1.19-MariaDB

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('highlights','highlightspos@'),('faraz','123');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_info`
--

DROP TABLE IF EXISTS `item_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_info` (
  `itemid` int(11) NOT NULL,
  `itemquantity` int(11) NOT NULL,
  `itemprice` double NOT NULL,
  `itemsaleprice` double NOT NULL,
  `itemsaletype` varchar(255) NOT NULL,
  `itemaddeddate` varchar(255) NOT NULL,
  `remainingquantity` int(11) NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `remainingquantityindex` (`remainingquantity`),
  CONSTRAINT `fk_iteminfo` FOREIGN KEY (`itemid`) REFERENCES `items` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_info`
--

LOCK TABLES `item_info` WRITE;
/*!40000 ALTER TABLE `item_info` DISABLE KEYS */;
INSERT INTO `item_info` VALUES (1,2,2000,2400,'Dozen','2019/07/29 00:50:37',2),(2,4,2000,2300,'Dozen','2019/07/29 00:51:16',3),(5,5,200,220,'Dozen','2019/07/30 23:35:31',5),(6,10,100,1000,'Dozen','2019/07/31 23:20:51',10),(7,5,100,120,'Pieces','2019/08/01 01:02:26',5),(8,6,100,120,'Half Dozen','2019/08/01 03:30:56',6);
/*!40000 ALTER TABLE `item_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  PRIMARY KEY (`item_name`,`company_name`),
  UNIQUE KEY `id` (`id`),
  KEY `item_id_index` (`id`),
  KEY `search_index` (`item_name`,`company_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'cooker','italy'),(2,'glass','italy'),(5,'tati2','tati'),(6,'hello world','no name'),(7,'hello world 2','no name'),(8,'abc','abce');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales` (
  `saleid` int(11) NOT NULL AUTO_INCREMENT,
  `bill` double NOT NULL,
  `discount` double NOT NULL,
  `saleday` varchar(255) NOT NULL,
  `saledate` varchar(255) NOT NULL,
  PRIMARY KEY (`saleid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,11166,0,'Sunday','2019/07/28'),(2,6166,0,'Sunday','2019/07/28'),(3,15500,0,'Sunday','2019/07/28'),(4,500,100,'Sunday','2019/07/28'),(5,370,30,'Monday','2019/07/29'),(6,6790,110,'Monday','2019/07/29'),(7,24000,0,'Monday','2019/07/29'),(8,4700,0,'Monday','2019/07/29'),(9,6900,0,'Monday','2019/07/29'),(10,2300,0,'Monday','2019/07/29'),(11,2300,0,'Monday','2019/07/29'),(12,2300,0,'Monday','2019/07/29'),(13,26400,0,'Monday','2019/07/29'),(14,7000,0,'Tuesday','2019/07/30'),(15,2300,0,'Tuesday','2019/07/30'),(16,2400,0,'Tuesday','2019/07/30');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-01  4:35:32
