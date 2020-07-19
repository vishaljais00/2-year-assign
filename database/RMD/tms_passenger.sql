-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: tms
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
-- Table structure for table `passenger`
--

DROP TABLE IF EXISTS `passenger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passenger` (
  `full_name` varchar(50) NOT NULL,
  `mobile_number` int NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  PRIMARY KEY (`email_id`),
  CONSTRAINT `passenger_chk_1` CHECK ((`GENDER` in (_utf8mb4'Male',_utf8mb4'Female',_utf8mb4'Unknown')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passenger`
--

LOCK TABLES `passenger` WRITE;
/*!40000 ALTER TABLE `passenger` DISABLE KEYS */;
INSERT INTO `passenger` VALUES ('Ajay',52545648,'Ajau@gmail.com','vwy','chennai','Chennai','male','1989-02-14'),('Ayusk',565456,'Ayusk@gmail.com','ghi','Delhi','Delhi','male','1989-03-15'),('Kavya',5456486,'Kavya@gmail.com','jkl','Noida','UP','female','1989-02-10'),('Kunal',98188,'kunal@gmail.com','abc','Delhi','Delhi','male','1989-02-20'),('Nahida',2123126,'Nahida@gmail.com','lmo','Noida','UP','female','1989-02-11'),('Ravi',456456,'Ravi@gmail.com','def','Delhi','Delhi','male','1989-02-19'),('Rekha',71417441,'Rekha@gmail.ocm','pqr','Noida','UP','female','1989-02-12'),('Santosh',755654,'Santosh@gmail.com','stu','Mumbai','Maharastra','male','1989-02-13'),('Suresh',5485,'Sureah@gmail.com','xyz','kanpur','UP','male','1989-02-16'),('VIjay',456456,'Vijay@gmail.com','abcab','Pune','maharastra','male','1989-02-17');
/*!40000 ALTER TABLE `passenger` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-17  2:04:59
