-- MySQL dump 10.13  Distrib 5.1.46, for apple-darwin10.2.0 (i386)
--
-- Host: localhost    Database: bitchesbrewer_development
-- ------------------------------------------------------
-- Server version	5.1.46

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
-- Table structure for table `breweries`
--

DROP TABLE IF EXISTS `breweries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `breweries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `head_brewer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mash_efficiency_percentage` float DEFAULT NULL,
  `volume_lost_to_mash_litres_per_kg` float DEFAULT NULL,
  `evaporation_rate_litres_per_hour` float DEFAULT NULL,
  `kettle_tax_litres` float DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `breweries`
--

LOCK TABLES `breweries` WRITE;
/*!40000 ALTER TABLE `breweries` DISABLE KEYS */;
INSERT INTO `breweries` VALUES (2,'Bitches Brewery','Breezy',61,0.82,11,2,'2010-11-14 11:37:25','2010-11-14 11:37:25');
/*!40000 ALTER TABLE `breweries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brews`
--

DROP TABLE IF EXISTS `brews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brewer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `original_gravity` float DEFAULT NULL,
  `final_gravity` float DEFAULT NULL,
  `fermentation_volume_litres` float DEFAULT NULL,
  `boil_time_minutes` int(11) DEFAULT NULL,
  `brewery_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brews`
--

LOCK TABLES `brews` WRITE;
/*!40000 ALTER TABLE `brews` DISABLE KEYS */;
INSERT INTO `brews` VALUES (32,'Special APA','Benny',1055,1008,25,60,2,'2010-11-15 15:11:54','2010-11-27 11:31:58'),(34,'Milky Stout','Breezy',NULL,NULL,24,60,2,'2010-11-16 10:13:31','2010-11-16 12:06:21');
/*!40000 ALTER TABLE `brews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fermentables`
--

DROP TABLE IF EXISTS `fermentables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fermentables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mash` tinyint(1) DEFAULT NULL,
  `points_per_kg_per_litre` float DEFAULT NULL,
  `weight_in_kg` float DEFAULT NULL,
  `brew_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fermentables`
--

LOCK TABLES `fermentables` WRITE;
/*!40000 ALTER TABLE `fermentables` DISABLE KEYS */;
INSERT INTO `fermentables` VALUES (6,'Munich',1,300,2.7,34,'2010-11-16 12:08:21','2010-11-16 12:24:24'),(8,'Pale',1,300,3.5,34,'2010-11-18 13:30:21','2010-11-18 13:30:21'),(12,'Munich',1,300,4.75,32,'2010-12-01 11:26:51','2010-12-01 12:05:02'),(13,'Pale Ale',1,300,3.3,32,'2010-12-01 11:27:18','2010-12-01 12:05:34'),(14,'chocolate',1,200,0.25,32,'2010-12-01 11:27:46','2010-12-01 11:27:46');
/*!40000 ALTER TABLE `fermentables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hop_additions`
--

DROP TABLE IF EXISTS `hop_additions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hop_additions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alpha_acid_percentage` float DEFAULT NULL,
  `weight_grams` float DEFAULT NULL,
  `boil_time_minutes` float DEFAULT NULL,
  `brew_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hop_additions`
--

LOCK TABLES `hop_additions` WRITE;
/*!40000 ALTER TABLE `hop_additions` DISABLE KEYS */;
INSERT INTO `hop_additions` VALUES (1,'Cascade',7.7,50,45,34,'2010-11-17 12:14:42','2010-11-17 12:19:39'),(3,'Cascade',7.7,25,30,34,'2010-11-17 12:17:49','2010-11-17 12:17:49'),(4,'cascade',7.7,25,60,32,'2010-11-18 13:11:33','2010-11-18 13:11:33'),(5,'cascade',7.7,25,15,34,'2010-11-18 13:28:55','2010-11-18 13:28:55'),(6,'Cascade',7.7,25,0,34,'2010-11-18 13:29:17','2010-11-18 13:29:17');
/*!40000 ALTER TABLE `hop_additions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20101114075141'),('20101114075227'),('20101114114325'),('20101117105923');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-12-01 23:13:00
