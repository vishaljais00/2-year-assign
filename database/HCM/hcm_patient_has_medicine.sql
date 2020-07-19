CREATE DATABASE  IF NOT EXISTS `hcm` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hcm`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: hcm
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
-- Table structure for table `patient_has_medicine`
--

DROP TABLE IF EXISTS `patient_has_medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_has_medicine` (
  `Patient_Patient ID` int NOT NULL,
  `medicine_ID` int NOT NULL,
  `Date` date DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  PRIMARY KEY (`Patient_Patient ID`,`medicine_ID`),
  KEY `fk_Patient_has_medicine_medicine1_idx` (`medicine_ID`),
  KEY `fk_Patient_has_medicine_Patient1_idx` (`Patient_Patient ID`),
  CONSTRAINT `fk_Patient_has_medicine_medicine1` FOREIGN KEY (`medicine_ID`) REFERENCES `medicine` (`ID`),
  CONSTRAINT `fk_Patient_has_medicine_Patient1` FOREIGN KEY (`Patient_Patient ID`) REFERENCES `patient` (`Patient ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_has_medicine`
--

LOCK TABLES `patient_has_medicine` WRITE;
/*!40000 ALTER TABLE `patient_has_medicine` DISABLE KEYS */;
INSERT INTO `patient_has_medicine` VALUES (21,1,'2020-07-05',2),(21,3,'2020-07-06',NULL),(22,2,'2020-07-05',NULL),(23,1,'2020-07-05',NULL),(23,4,'2020-07-06',NULL),(24,5,'2020-07-07',NULL),(25,8,'2020-07-12',NULL),(26,6,'2020-07-10',NULL),(27,3,'2020-07-15',NULL),(28,7,'2020-07-20',NULL);
/*!40000 ALTER TABLE `patient_has_medicine` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-17  2:02:21
