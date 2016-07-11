-- MySQL dump 10.13  Distrib 5.6.31, for Win32 (AMD64)
--
-- Host: localhost    Database: wine
-- ------------------------------------------------------
-- Server version	5.6.31-log

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
-- Current Database: `wine`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `wine` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `wine`;

--
-- Table structure for table `funding`
--

DROP TABLE IF EXISTS `funding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funding` (
  `vineyardID` int(11) DEFAULT NULL,
  `futureID` int(11) DEFAULT NULL,
  `fundingMetadata` blob,
  UNIQUE KEY `pkFunding` (`vineyardID`,`futureID`),
  KEY `futureID` (`futureID`),
  CONSTRAINT `funding_ibfk_1` FOREIGN KEY (`vineyardID`) REFERENCES `vineyard` (`vineyardId`),
  CONSTRAINT `funding_ibfk_2` FOREIGN KEY (`futureID`) REFERENCES `future` (`futureID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funding`
--

LOCK TABLES `funding` WRITE;
/*!40000 ALTER TABLE `funding` DISABLE KEYS */;
/*!40000 ALTER TABLE `funding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `future`
--

DROP TABLE IF EXISTS `future`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `future` (
  `futureID` int(11) NOT NULL AUTO_INCREMENT,
  `futureName` varchar(55) DEFAULT NULL,
  `futureDescription` varchar(255) DEFAULT NULL,
  `futureExpireDate` date DEFAULT NULL,
  PRIMARY KEY (`futureID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `future`
--

LOCK TABLES `future` WRITE;
/*!40000 ALTER TABLE `future` DISABLE KEYS */;
INSERT INTO `future` VALUES (1,'”BARCLAYS 10152015 CHARDONNAY $128”','” Lorem ipsum dolor sit amet','0000-00-00'),(2,'”2”','”01010111101011010001010010”',NULL);
/*!40000 ALTER TABLE `future` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vineyard`
--

DROP TABLE IF EXISTS `vineyard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vineyard` (
  `vineyardId` int(11) NOT NULL AUTO_INCREMENT,
  `vineyardName` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`vineyardId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vineyard`
--

LOCK TABLES `vineyard` WRITE;
/*!40000 ALTER TABLE `vineyard` DISABLE KEYS */;
INSERT INTO `vineyard` VALUES (1,'vineyardName'),(2,'yellow tail'),(3,'vineyardName'),(4,'vineyardName'),(5,'vineyardName'),(6,''),(7,'vineyardName'),(8,''),(9,'vineyardName'),(11,'vineyardName'),(12,'vineyardName'),(13,'vineyardName'),(14,'vineyardName');
/*!40000 ALTER TABLE `vineyard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wine`
--

DROP TABLE IF EXISTS `wine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wine` (
  `wineID` int(11) NOT NULL AUTO_INCREMENT,
  `wineName` varchar(25) DEFAULT NULL,
  `wineDescription` varchar(255) DEFAULT NULL,
  `vineyardID` int(11) DEFAULT NULL,
  PRIMARY KEY (`wineID`),
  KEY `vineyardID` (`vineyardID`),
  CONSTRAINT `wine_ibfk_1` FOREIGN KEY (`vineyardID`) REFERENCES `vineyard` (`vineyardId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wine`
--

LOCK TABLES `wine` WRITE;
/*!40000 ALTER TABLE `wine` DISABLE KEYS */;
/*!40000 ALTER TABLE `wine` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-11 18:52:48
