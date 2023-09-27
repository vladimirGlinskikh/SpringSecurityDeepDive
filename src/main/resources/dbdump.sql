-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: 192.168.112.1    Database: auth2db
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `authentication_methods`
--

DROP TABLE IF EXISTS `authentication_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authentication_methods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `authentication_method` varchar(100) DEFAULT NULL,
  `client_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authentication_methods`
--

LOCK TABLES `authentication_methods` WRITE;
/*!40000 ALTER TABLE `authentication_methods` DISABLE KEYS */;
INSERT INTO `authentication_methods` VALUES (1,'client_secret_basic',1);
/*!40000 ALTER TABLE `authentication_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `client_id` varchar(45) DEFAULT NULL,
  `secret` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Vladimir','secret');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grand_types`
--

DROP TABLE IF EXISTS `grand_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grand_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `grand_type` varchar(45) DEFAULT NULL,
  `client_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grand_types`
--

LOCK TABLES `grand_types` WRITE;
/*!40000 ALTER TABLE `grand_types` DISABLE KEYS */;
INSERT INTO `grand_types` VALUES (1,'AUTHORIZATION_CODE',1),(2,'CLIENT_CREDENTIALS',1);
/*!40000 ALTER TABLE `grand_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `redirect_url`
--

DROP TABLE IF EXISTS `redirect_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `redirect_url` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(500) DEFAULT NULL,
  `client_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redirect_url`
--

LOCK TABLES `redirect_url` WRITE;
/*!40000 ALTER TABLE `redirect_url` DISABLE KEYS */;
INSERT INTO `redirect_url` VALUES (1,'https://vladimir-glinskikh.ru',1);
/*!40000 ALTER TABLE `redirect_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scopes`
--

DROP TABLE IF EXISTS `scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scopes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `scope` varchar(45) DEFAULT NULL,
  `client_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scopes`
--

LOCK TABLES `scopes` WRITE;
/*!40000 ALTER TABLE `scopes` DISABLE KEYS */;
INSERT INTO `scopes` VALUES (1,'OPENID',1);
/*!40000 ALTER TABLE `scopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token_settings`
--

DROP TABLE IF EXISTS `token_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `access_token_ttl` int DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `client_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_settings`
--

LOCK TABLES `token_settings` WRITE;
/*!40000 ALTER TABLE `token_settings` DISABLE KEYS */;
INSERT INTO `token_settings` VALUES (1,5,'reference',1);
/*!40000 ALTER TABLE `token_settings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-27  3:37:28
