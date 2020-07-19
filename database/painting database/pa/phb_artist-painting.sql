CREATE DATABASE  IF NOT EXISTS `phb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `phb`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: phb
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `artist-painting`
--

DROP TABLE IF EXISTS `artist-painting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artist-painting` (
  `painting-no` int NOT NULL,
  `painting-tittle` varchar(45) DEFAULT NULL,
  `painting-theme` varchar(45) DEFAULT NULL,
  `rental-price` int DEFAULT NULL,
  `owner-no` int NOT NULL,
  `owner-name` varchar(45) DEFAULT NULL,
  `owner-ph-no` int DEFAULT NULL,
  PRIMARY KEY (`painting-no`),
  KEY `owner-no_idx` (`owner-no`),
  CONSTRAINT `owner-no` FOREIGN KEY (`owner-no`) REFERENCES `owner-report` (`owner-no`),
  CONSTRAINT `painting-no` FOREIGN KEY (`painting-no`) REFERENCES `owner-painting-return` (`painting-no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist-painting`
--

LOCK TABLES `artist-painting` WRITE;
/*!40000 ALTER TABLE `artist-painting` DISABLE KEYS */;
INSERT INTO `artist-painting` VALUES (1,'ABC','NATURE',2000,21,'abishek',9818),(2,'Monalisa','beauti',10000,22,'saurav',940),(3,'abstract','creative',5000,23,'hitesh',938),(4,'qusar','city',3500,24,'salman',9560),(5,'arabiannignt','arab',7000,25,'sharukh',865),(6,'ramayan','hindu',5600,26,'amir',900),(7,'mahabharat','hindu',3800,27,'nawaj',9650),(8,'krishan','romance',9000,28,'ranvir',920),(9,'vishnu','ved',7000,29,'ranvijay',846);
/*!40000 ALTER TABLE `artist-painting` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-18  6:11:50
