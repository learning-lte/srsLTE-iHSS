-- MySQL dump 10.13  Distrib 8.0.17, for Linux (x86_64)
--
-- Host: localhost    Database: ihss
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_imsi` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_key`  varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,                                /* the type of this parameter should be a hexa on 32 characters */
  `user_op_type` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_op_or_opc` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,                           /* the type of this parameter should be a hexa on 32 characters */
  `user_amf`  varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_sqn` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,                                /* the type of this parameter should be a hexa on 12 characters */
  `user_qci` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_email` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'ue2','001010123456780','00112233445566778899aabbccddeeff','opc','63bfa50ee6523365ff14c1f45f88737d','8000','000000001234','7','sou@email.com');
INSERT INTO `user` VALUES (2,'ue1','001010123456789','00112233445566778899aabbccddeeff','opc','63bfa50ee6523365ff14c1f45f88737d','8000','000000001234','7','dou@email.com');
INSERT INTO `user` VALUES (3,'ue3','901700000022950','0d1fe19b5d4c8e6ba4e995b255fbc975','op','25e26876efc9631ee10fd05eda1d0ec7','8000','000000001234','7','midu@email.com');
INSERT INTO `user` VALUES (4,'ue4','901700000022969','8baf473f2f8fd09487cccbd7097c6862','op','11111111111111111111111111111111','8000','000000001234','7','midu@email.com');
INSERT INTO `user` VALUES (5,'ue6','901700000027988','b46fadaa27a9785c7803b9bd7b3450de','opc','47d3987d31a606289b6c01d4c31a31a2','8000','000000001234','7','midu@email.com');
INSERT INTO `user` VALUES (6,'ue5','901700000027989','7b3cba07409abdd16c1ceffed3e5ab53','opc','bc4a47aeb1bfe38b542172aee0c28082','8000','000000001234','9','midu@email.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*UNLOCK TABLES;*/;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-02 14:27:54
