-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: smm
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` varchar(36) NOT NULL,
  `firstName` varchar(20) DEFAULT NULL,
  `lastName` varchar(20) NOT NULL,
  `gender` enum('Male','Female') DEFAULT NULL,
  `address` text,
  `dateofbirth` date DEFAULT NULL,
  `placeofbirth` varchar(45) DEFAULT NULL,
  `photoUrl` varchar(255) DEFAULT NULL,
  `phone` varchar(13) NOT NULL,
  `familyName` varchar(45) DEFAULT NULL,
  `familyNumber` varchar(15) DEFAULT NULL,
  `bloodType` enum('A','B','O','AB') DEFAULT NULL,
  `hiredDate` date DEFAULT NULL,
  `departmentId` int NOT NULL,
  `status` enum('Active','Inactive') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `phone_index` (`phone`),
  KEY `deptId_index` (`departmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('0deaef40-7d69-11ea-8756-6f780d6dfeb3','sabar','yuhu',NULL,NULL,'2020-04-01',NULL,'assets\\images\\employee\\2020-04-13T09-27-54.591Z.jpeg','089612321',NULL,NULL,NULL,NULL,2,'Active'),('1','Ridwan','Apa',NULL,NULL,NULL,NULL,NULL,'9871232187',NULL,NULL,'O','2020-03-02',1,'Inactive'),('1166ec60-7e76-11ea-9ba2-8516e1935363','Kuliah','yuhu',NULL,NULL,'2020-04-01',NULL,'\\images\\employee\\2020-04-15_00-33-35.jpeg','089612321',NULL,NULL,NULL,NULL,2,'Active'),('29e3b870-7e73-11ea-b79f-9bc25cfe4c88','ancur','yuhu',NULL,NULL,'2020-04-01',NULL,'\\\\assets\\images\\employee\\2020-04-15_00-12-47.jpeg','089612321',NULL,NULL,NULL,NULL,2,'Active'),('2f5c5310-7a55-11ea-b1e5-bf73fb5fbbf0','Mamanx','Garox',NULL,NULL,NULL,NULL,'images\\employee\\employee16.jpeg','asdasdsa',NULL,NULL,NULL,NULL,2,'Active'),('36c792e0-7e6f-11ea-a176-3b36b4ca097f','Kokom','yuhu',NULL,NULL,'2020-04-01',NULL,'\\assets\\images\\employee\\2020-04-14_23-44-31.jpeg','089612321',NULL,NULL,NULL,NULL,2,'Active'),('482b7d90-7e73-11ea-b79f-9bc25cfe4c88','mantepbeud','yuhu',NULL,NULL,'2020-04-01',NULL,'\\\\assets\\images\\employee\\2020-04-15_00-13-38.jpeg','089612321',NULL,NULL,NULL,NULL,2,'Active'),('4b6188b0-7d6a-11ea-8e5c-631fcf411688','mantap','yuhu',NULL,NULL,'2020-04-01',NULL,'assets\\images\\employee\\2020-04-13_04-36-47.jpeg','089612321',NULL,NULL,NULL,NULL,2,'Active'),('6538c6e0-7e73-11ea-9442-d3d04f38997d','apasi','yuhu',NULL,NULL,'2020-04-01',NULL,'\\assets\\images\\employee\\2020-04-15_00-14-27.jpeg','089612321',NULL,NULL,NULL,NULL,2,'Active'),('71d58960-7e73-11ea-9442-d3d04f38997d','gajelasmulter','yuhu',NULL,NULL,'2020-04-01',NULL,'\\assets\\images\\employee\\2020-04-15_00-14-48.jpeg','089612321',NULL,NULL,NULL,NULL,2,'Active'),('760e9f30-7e73-11ea-9442-d3d04f38997d','kontol','yuhu',NULL,NULL,'2020-04-01',NULL,'\\assets\\images\\employee\\2020-04-15_00-14-55.jpeg','089612321',NULL,NULL,NULL,NULL,2,'Active'),('9e619110-7d63-11ea-8feb-39e46a9dc0d0','uhuy','yuhu',NULL,NULL,'2020-04-01',NULL,'\\assets\\images\\employee\\2020-04-14_23-44-52.jpeg','089612321',NULL,NULL,NULL,NULL,2,'Active'),('ac8ca5f0-7e7a-11ea-b7e0-4d99abe034b7','gilagua','yuhu',NULL,NULL,'2020-04-01',NULL,'\\assets\\images\\employee\\2020-04-15_01-08-46.jpeg','089612321',NULL,NULL,NULL,NULL,2,'Active'),('b2713090-7e74-11ea-bc41-4ba00f41509e','konap','yuhu',NULL,NULL,'2020-04-01',NULL,'/images\\employee\\2020-04-15_00-23-46.jpeg','089612321',NULL,NULL,NULL,NULL,2,'Active'),('b4f418a0-7e79-11ea-9880-375c39310434','kgkjelas','yuhu',NULL,NULL,'2020-04-01',NULL,'\\images\\employee\\2020-04-15_00-59-38.jpeg','089612321',NULL,NULL,NULL,NULL,2,'Active'),('bc3e7f60-7e74-11ea-bc41-4ba00f41509e','apa\n','yuhu',NULL,NULL,'2020-04-01',NULL,'/images\\employee\\2020-04-15_00-24-02.jpeg','089612321',NULL,NULL,NULL,NULL,2,'Active'),('c54f9860-6b13-11ea-8e16-3dd56eccb0cf','Teguh','Mantap',NULL,NULL,NULL,NULL,'\\assets\\images\\employee\\2020-04-12T20-13-20.793Z.jpeg','0897213123',NULL,NULL,'O','2020-03-02',1,'Active'),('cc437600-7d6a-11ea-bc23-1d15b968ac35','joss','yuhu',NULL,NULL,'2020-04-01',NULL,'\\assets\\images\\employee\\2020-04-13_16-40-23.jpeg','089612321',NULL,NULL,NULL,NULL,2,'Active'),('d1783c50-6b13-11ea-8e16-3dd56eccb0cf','Adella','Uhuy',NULL,NULL,NULL,NULL,'\\assets\\images\\employee\\2020-04-12T20-18-32.677Z.jpeg','0897213123',NULL,NULL,'O','2020-03-02',1,'Active'),('d64343a0-7e74-11ea-a0c2-eb4c5503a8ee','Banyakdah','yuhu',NULL,NULL,'2020-04-01',NULL,'\\images\\employee\\2020-04-15_00-24-46.jpeg','089612321',NULL,NULL,NULL,NULL,2,'Active'),('d70cea80-6b13-11ea-8e16-3dd56eccb0cf','Rafly','SMM',NULL,NULL,NULL,NULL,NULL,'0897213123',NULL,NULL,'O','2020-03-02',1,'Inactive'),('e98f5e30-6b0f-11ea-ad53-a7f87add0823','Ronny','Sugianto',NULL,NULL,NULL,NULL,NULL,'0897213123',NULL,NULL,'O','2020-03-02',1,'Active');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-03  8:05:23
