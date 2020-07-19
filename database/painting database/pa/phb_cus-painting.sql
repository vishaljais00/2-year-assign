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
-- Table structure for table `cus-painting`
--

DROP TABLE IF EXISTS `cus-painting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cus-painting` (
  `painting-no` int NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `theme` varchar(45) DEFAULT NULL,
  `date-of-hiring` datetime DEFAULT NULL,
  `date-due-back` datetime DEFAULT NULL,
  `returned` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`painting-no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cus-painting`
--

LOCK TABLES `cus-painting` WRITE;
/*!40000 ALTER TABLE `cus-painting` DISABLE KEYS */;
INSERT INTO `cus-painting` VALUES (1,'ABC','NATURE','2020-07-10 00:00:00','2020-07-13 00:00:00','YES'),(2,'Monalisa','beauti','2020-07-11 00:00:00','2020-07-14 00:00:00','YES'),(3,'abstract','creative','2020-07-12 00:00:00','2020-07-15 00:00:00','YES'),(4,'qusar','city','2020-07-12 00:00:00','2020-07-15 00:00:00','YES'),(5,'arabiannignt','arab','2020-07-12 00:00:00','2020-07-15 00:00:00','YES'),(6,'ramayan','hindu','2020-07-13 00:00:00','2020-07-16 00:00:00','YES'),(7,'mahabharat','hindu','2020-07-13 00:00:00','2020-07-16 00:00:00','YES'),(8,'krishan','romance','2020-07-14 00:00:00','2020-07-17 00:00:00','NO'),(9,'vishnu','ved','2020-07-15 00:00:00','2020-07-18 00:00:00','NO');
/*!40000 ALTER TABLE `cus-painting` ENABLE KEYS */;
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
