-- MySQL dump 10.13  Distrib 5.5.16, for Win64 (x86)
--
-- Host: localhost    Database: plyr
-- ------------------------------------------------------
-- Server version	5.5.16

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
-- Table structure for table `aashi`
--

DROP TABLE IF EXISTS `aashi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aashi` (
  `SONG_NAME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aashi`
--

LOCK TABLES `aashi` WRITE;
/*!40000 ALTER TABLE `aashi` DISABLE KEYS */;
/*!40000 ALTER TABLE `aashi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abc`
--

DROP TABLE IF EXISTS `abc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abc` (
  `SONG_NAME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abc`
--

LOCK TABLES `abc` WRITE;
/*!40000 ALTER TABLE `abc` DISABLE KEYS */;
INSERT INTO `abc` VALUES ('Accha ji Main Haari');
/*!40000 ALTER TABLE `abc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abcd`
--

DROP TABLE IF EXISTS `abcd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abcd` (
  `SONG_NAME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abcd`
--

LOCK TABLES `abcd` WRITE;
/*!40000 ALTER TABLE `abcd` DISABLE KEYS */;
INSERT INTO `abcd` VALUES ('Abhi na jao chod kar');
/*!40000 ALTER TABLE `abcd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aru`
--

DROP TABLE IF EXISTS `aru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aru` (
  `SONG_NAME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aru`
--

LOCK TABLES `aru` WRITE;
/*!40000 ALTER TABLE `aru` DISABLE KEYS */;
INSERT INTO `aru` VALUES ('Jaane kahan mera jigar gaya ji?');
/*!40000 ALTER TABLE `aru` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `example`
--

DROP TABLE IF EXISTS `example`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `example` (
  `rn` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`rn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `example`
--

LOCK TABLES `example` WRITE;
/*!40000 ALTER TABLE `example` DISABLE KEYS */;
/*!40000 ALTER TABLE `example` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk`
--

DROP TABLE IF EXISTS `kk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk` (
  `SONG_NAME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk`
--

LOCK TABLES `kk` WRITE;
/*!40000 ALTER TABLE `kk` DISABLE KEYS */;
INSERT INTO `kk` VALUES ('Bheegi bheegi raaton mein');
/*!40000 ALTER TABLE `kk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mughdha`
--

DROP TABLE IF EXISTS `mughdha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mughdha` (
  `SONG_NAME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mughdha`
--

LOCK TABLES `mughdha` WRITE;
/*!40000 ALTER TABLE `mughdha` DISABLE KEYS */;
INSERT INTO `mughdha` VALUES ('Bheegi bheegi raaton mein');
/*!40000 ALTER TABLE `mughdha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlists`
--

DROP TABLE IF EXISTS `playlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playlists` (
  `playlist_id` int(11) NOT NULL AUTO_INCREMENT,
  `playlist_name` varchar(255) NOT NULL DEFAULT '',
  `genre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`playlist_id`,`playlist_name`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlists`
--

LOCK TABLES `playlists` WRITE;
/*!40000 ALTER TABLE `playlists` DISABLE KEYS */;
INSERT INTO `playlists` VALUES (1,'aashi','Bollywood'),(2,'aashi','Bollywood'),(3,'aashi','Bollywood'),(4,'aashi','Bollywood'),(5,'aashi','Bollywood'),(6,'aashi','Bollywood'),(7,'abc','Bollywood'),(8,'vrushti','Bollywood'),(9,'sam','Bollywood'),(10,'kk','Bollywood'),(11,'mughdha','Bollywood'),(12,'abcd','Bollywood'),(13,'pqr','Bollywood'),(14,'xyz','Bollywood'),(15,'sid','Bollywood'),(16,'pravin','Bollywood'),(17,'pramod','Bollywood'),(18,'aru','Bollywood');
/*!40000 ALTER TABLE `playlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pqr`
--

DROP TABLE IF EXISTS `pqr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pqr` (
  `SONG_NAME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pqr`
--

LOCK TABLES `pqr` WRITE;
/*!40000 ALTER TABLE `pqr` DISABLE KEYS */;
INSERT INTO `pqr` VALUES ('Kajra Re!');
/*!40000 ALTER TABLE `pqr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pramod`
--

DROP TABLE IF EXISTS `pramod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pramod` (
  `SONG_NAME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pramod`
--

LOCK TABLES `pramod` WRITE;
/*!40000 ALTER TABLE `pramod` DISABLE KEYS */;
INSERT INTO `pramod` VALUES ('Mere Sapnon ki raani!');
/*!40000 ALTER TABLE `pramod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pravin`
--

DROP TABLE IF EXISTS `pravin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pravin` (
  `SONG_NAME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pravin`
--

LOCK TABLES `pravin` WRITE;
/*!40000 ALTER TABLE `pravin` DISABLE KEYS */;
INSERT INTO `pravin` VALUES ('O Palanhaare!');
/*!40000 ALTER TABLE `pravin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rusk`
--

DROP TABLE IF EXISTS `rusk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rusk` (
  `SONG_NAME` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rusk`
--

LOCK TABLES `rusk` WRITE;
/*!40000 ALTER TABLE `rusk` DISABLE KEYS */;
/*!40000 ALTER TABLE `rusk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sam`
--

DROP TABLE IF EXISTS `sam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sam` (
  `SONG_NAME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sam`
--

LOCK TABLES `sam` WRITE;
/*!40000 ALTER TABLE `sam` DISABLE KEYS */;
INSERT INTO `sam` VALUES ('Kajra Re!');
/*!40000 ALTER TABLE `sam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sid`
--

DROP TABLE IF EXISTS `sid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sid` (
  `SONG_NAME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sid`
--

LOCK TABLES `sid` WRITE;
/*!40000 ALTER TABLE `sid` DISABLE KEYS */;
INSERT INTO `sid` VALUES ('Abhi na jao chod kar');
/*!40000 ALTER TABLE `sid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `songs` (
  `song_id` int(11) NOT NULL AUTO_INCREMENT,
  `song_name` varchar(255) NOT NULL,
  `singer` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  PRIMARY KEY (`song_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES (1,'Abhi na jao chod kar','Asha Bhosle, Mohommed Rafi','Romantic'),(2,' Pal pal dil ke paas','Kishore Kumar','Romantic'),(3,'Bheegi bheegi raaton mein','Lata Mangeshkar, Kishore Kumar','Romantic'),(4,'O Palanhaare!',' Lata Mangeshkar, Udit Narayan','Devotional'),(5,'Kajra re!','Shankar Mahadevan, Javed Ali','Party'),(6,'Accha ji main haari!','Asha Bhosle, Mohommed Rafi','Romantic'),(7,'Mere Sapnon ki raani!','Kishore Kumar','Romantic'),(8,'Mera Geet amar kardo','Jagjit Singh','Sad'),(9,'Jaane kahan mera jigar gaya ji?','Mohommed Rafi','Romantic'),(10,'Tum aa gye ho','Lata Mangeshkar, Kishore Kumar','Romantic');
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrushti`
--

DROP TABLE IF EXISTS `vrushti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrushti` (
  `SONG_NAME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrushti`
--

LOCK TABLES `vrushti` WRITE;
/*!40000 ALTER TABLE `vrushti` DISABLE KEYS */;
INSERT INTO `vrushti` VALUES ('Accha ji Main Haari'),('Accha ji Main Haari'),('Bheegi bheegi raaton mein');
/*!40000 ALTER TABLE `vrushti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xyz`
--

DROP TABLE IF EXISTS `xyz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xyz` (
  `SONG_NAME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xyz`
--

LOCK TABLES `xyz` WRITE;
/*!40000 ALTER TABLE `xyz` DISABLE KEYS */;
INSERT INTO `xyz` VALUES (' Pal pal dil ke paas');
/*!40000 ALTER TABLE `xyz` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-11 13:43:17
