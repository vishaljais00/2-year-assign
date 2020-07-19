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
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `Patient ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(145) DEFAULT NULL,
  `Phone` int DEFAULT NULL,
  `Address` varchar(145) DEFAULT NULL,
  `Date of birth` date DEFAULT NULL,
  `Email` varchar(150) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `Doctor_Doctor ID` int NOT NULL,
  `Discharged` date DEFAULT NULL,
  PRIMARY KEY (`Patient ID`),
  UNIQUE KEY `Phone_UNIQUE` (`Phone`),
  KEY `fk_Patient_Doctor_idx` (`Doctor_Doctor ID`),
  CONSTRAINT `fk_Patient_Doctor` FOREIGN KEY (`Doctor_Doctor ID`) REFERENCES `doctor` (`Doctor ID`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (21,'angad',9818,'ABC.ab','1999-07-16','vcvxc','male',123,'2020-07-10'),(22,'anvika',4684,'sdvdf','1999-07-10','csvx','female',123,'2020-07-11'),(23,'adhyak',45654,'sdgvdfb','2002-05-10','dghbfg','male',124,'2020-07-10'),(24,'vishwa',45698,'lgyrkjdh','2001-02-12','dhgfj','male',125,'2020-07-12'),(25,'rheya',69852,'jgfjdw','2000-08-12','mfjOEU','female',127,'2020-07-12'),(26,'rehan',25985,'mnvdq','1999-03-15','bdftir','male',126,'2020-07-13'),(27,'naman',5466,'mbgh','1999-05-26','hghffg','male',127,'2020-07-14'),(28,'Aryan',5465,'vdvdf','1989-05-27','dffycgy','male',123,'2020-05-16'),(29,'kavya',14654,'vggvjh','1972-06-28','bbdfb','female',125,'2020-06-07'),(30,'Harsh',4564,'svdv','2001-09-07','vdbdfb','male',128,'2020-03-15');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
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
