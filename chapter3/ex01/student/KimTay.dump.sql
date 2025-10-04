-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: KimTay
-- ------------------------------------------------------
-- Server version	8.0.40-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `CUSTOMER`
--

DROP TABLE IF EXISTS `CUSTOMER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CUSTOMER` (
  `CUST_ID` char(3) NOT NULL,
  `FIRST_NAME` varchar(20) DEFAULT NULL,
  `LAST_NAME` varchar(20) DEFAULT NULL,
  `ADDRESS` varchar(20) DEFAULT NULL,
  `CITY` varchar(15) DEFAULT NULL,
  `STATE` char(2) DEFAULT NULL,
  `POSTAL` char(5) DEFAULT NULL,
  `EMAIL` varchar(30) DEFAULT NULL,
  `BALANCE` decimal(7,2) DEFAULT NULL,
  `CREDIT_LIMIT` decimal(7,2) DEFAULT NULL,
  `REP_ID` char(2) DEFAULT NULL,
  PRIMARY KEY (`CUST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER`
--

LOCK TABLES `CUSTOMER` WRITE;
/*!40000 ALTER TABLE `CUSTOMER` DISABLE KEYS */;
INSERT INTO `CUSTOMER` VALUES ('125','Joey','Smith','17 Fourth St','Cody','WY','82414','jsmith17@example.com',80.68,500.00,'05'),('182','Billy','Rufton','21 Simple Cir','Garland','WY','82435','billyruff@example.com',43.13,750.00,'10'),('227','Sandra','Pincher','53 Verde Ln','Powell','WY','82440','spinch2@example.com',156.38,500.00,'15'),('294','Samantha','Smith','14 Rock Ln','Ralston','WY','82440','ssmith5@example.com',58.60,500.00,'10'),('314','Tom','Rascal','1 Rascal Farm Rd','Cody','WY','82414','trascal3@example.com',17.25,250.00,'15'),('375','Melanie','Jackson','42 Blackwater Way','Elk Butte','WY','82433','mjackson5@example.com',252.25,250.00,'05'),('435','James','Gonzalez','16 Rockway Rd','Wapiti','WY','82450','jgonzo@example.com',230.40,1000.00,'15'),('492','Elmer','Jackson','22 Jackson Farm Rd','Garland','WY','82435','ejackson4@example.com',45.20,500.00,'10'),('543','Angie','Hendricks','27 Locklear Ln','Powell','WY','82440','ahendricks7@example.com',315.00,750.00,'05'),('616','Sally','Cruz','199 18th Ave','Ralston','WY','82440','scruz5@example.com',8.33,500.00,'15'),('721','Leslie','Smith','123 Sheepland Rd','Elk Butte','WY','82433','lsmith12@example.com',166.65,1000.00,'10'),('795','Randy','Blacksmith','75 Stream Rd','Cody','WY','82414','rblacksmith6@example.com',61.50,500.00,'05');
/*!40000 ALTER TABLE `CUSTOMER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INVOICES`
--

DROP TABLE IF EXISTS `INVOICES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `INVOICES` (
  `INVOICE_NUM` char(5) NOT NULL,
  `INVOICE_DATE` date DEFAULT NULL,
  `CUST_ID` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`INVOICE_NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INVOICES`
--

LOCK TABLES `INVOICES` WRITE;
/*!40000 ALTER TABLE `INVOICES` DISABLE KEYS */;
INSERT INTO `INVOICES` VALUES ('14216','2021-11-15','125'),('14219','2021-11-15','227'),('14222','2021-11-16','294'),('14224','2021-11-16','182'),('14228','2021-11-18','435'),('14231','2021-11-18','125'),('14233','2021-11-18','435'),('14237','2021-11-19','616');
/*!40000 ALTER TABLE `INVOICES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INVOICE_LINE`
--

DROP TABLE IF EXISTS `INVOICE_LINE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `INVOICE_LINE` (
  `INVOICE_NUM` char(5) NOT NULL,
  `ITEM_ID` char(4) NOT NULL,
  `QUANTITY` decimal(10,0) DEFAULT NULL,
  `QUOTED_PRICE` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`INVOICE_NUM`,`ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INVOICE_LINE`
--

LOCK TABLES `INVOICE_LINE` WRITE;
/*!40000 ALTER TABLE `INVOICE_LINE` DISABLE KEYS */;
INSERT INTO `INVOICE_LINE` VALUES ('14216','CA75',3,37.99),('14219','AD72',2,79.99),('14219','DT12',4,39.99),('14222','LD14',1,47.99),('14224','KH81',4,18.99),('14228','FS42',1,124.99),('14228','PF19',1,74.99),('14231','UF39',2,189.99),('14233','KH81',1,19.99),('14233','QB92',4,109.95),('14233','WB49',4,74.95),('14237','LP73',3,54.95);
/*!40000 ALTER TABLE `INVOICE_LINE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ITEM`
--

DROP TABLE IF EXISTS `ITEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ITEM` (
  `ITEM_ID` char(4) NOT NULL,
  `DESCRIPTION` varchar(30) DEFAULT NULL,
  `ON_HAND` decimal(10,0) DEFAULT NULL,
  `CATEGORY` char(3) DEFAULT NULL,
  `LOCATION` char(1) DEFAULT NULL,
  `PRICE` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ITEM`
--

LOCK TABLES `ITEM` WRITE;
/*!40000 ALTER TABLE `ITEM` DISABLE KEYS */;
INSERT INTO `ITEM` VALUES ('AD72','Dog Feeding Station',12,'DOG','B',79.99),('BC33','Feathers Bird Cage (12x24x18)',10,'BRD','B',79.99),('CA75','Enclosed Cat Litter Station',15,'CAT','C',39.99),('DT12','Dog Toy Gift Set',27,'DOG','B',39.99),('FM23','Fly Mask with Ears',41,'HOR','C',24.95),('FS39','Folding Saddle Stand',12,'HOR','C',39.99),('FS42','Aquarium (55 Gallon)',5,'FSH','A',124.99),('KH81','Wild Bird Food (25 lb)',24,'BRD','C',19.99),('LD14','Locking Small Dog Door',14,'DOG','A',49.99),('LP73','Large Pet Carrier',23,'DOG','B',59.99),('PF19','Pump & Filter Kit',5,'FSH','A',74.99),('QB92','Quilted Stable Blanket',32,'HOR','C',119.99),('SP91','Small Pet Carrier',18,'CAT','B',39.99),('UF39','Underground Fence System',7,'DOG','A',199.99),('WB49','Insulated Water Bucket',34,'HOR','C',79.99);
/*!40000 ALTER TABLE `ITEM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SALES_REP`
--

DROP TABLE IF EXISTS `SALES_REP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SALES_REP` (
  `REP_ID` char(2) NOT NULL,
  `FIRST_NAME` varchar(20) DEFAULT NULL,
  `LAST_NAME` varchar(20) DEFAULT NULL,
  `ADDRESS` varchar(20) DEFAULT NULL,
  `CITY` varchar(15) DEFAULT NULL,
  `STATE` char(2) DEFAULT NULL,
  `POSTAL` char(5) DEFAULT NULL,
  `CELL_PHONE` char(12) DEFAULT NULL,
  `COMMISSION` decimal(7,2) DEFAULT NULL,
  `RATE` decimal(3,2) DEFAULT NULL,
  PRIMARY KEY (`REP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SALES_REP`
--

LOCK TABLES `SALES_REP` WRITE;
/*!40000 ALTER TABLE `SALES_REP` DISABLE KEYS */;
INSERT INTO `SALES_REP` VALUES ('05','Susan','Garcia','42 Mountain Ln','Cody','WY','82414','307-824-1245',12743.16,0.04),('10','Richard','Miller','87 Pikes Dr','Ralston','WY','82440','307-406-4321',20872.11,0.06),('15','Donna','Smith','312 Oak Rd','Powell','WY','82440','307-982-8401',14912.92,0.04),('20','Daniel','Jackson','19 Lookout Dr','Elk Butte','WY','82433','307-883-9481',0.00,0.04);
/*!40000 ALTER TABLE `SALES_REP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'KimTay'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-04 16:48:42
