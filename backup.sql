-- MySQL dump 10.13  Distrib 5.5.27, for osx10.7 (i386)
--
-- Host: localhost    Database: demo_active_production
-- ------------------------------------------------------
-- Server version	5.5.27

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
-- Table structure for table `active_admin_comments`
--

DROP TABLE IF EXISTS `active_admin_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_admin_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resource_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`),
  KEY `index_active_admin_comments_on_namespace` (`namespace`),
  KEY `index_admin_notes_on_resource_type_and_resource_id` (`resource_type`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_admin_comments`
--

LOCK TABLES `active_admin_comments` WRITE;
/*!40000 ALTER TABLE `active_admin_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `active_admin_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admin_users_on_email` (`email`),
  UNIQUE KEY `index_admin_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin@example.com','$2a$10$AZC1XjarKvUAnBARmqMDJ.18rZCq3il4ykZF7s1CYaJB4dRWxUCre',NULL,NULL,'2012-10-18 04:31:06',2,'2012-10-18 04:31:06','2012-10-17 02:22:07','10.10.10.245','127.0.0.1','0000-00-00 00:00:00','2012-10-18 04:31:06');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci,
  `mark_type` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,'to speed it up or slow it down',1,1,'2012-10-18 04:03:59','2012-10-18 04:03:59'),(2,'it speeds up or slows down',0,1,'2012-10-18 04:03:59','2012-10-18 04:03:59'),(3,'than speeding it up or slowing it down',0,1,'2012-10-18 04:03:59','2012-10-18 04:03:59'),(4,'than speeding up or slowing down',0,1,'2012-10-18 04:03:59','2012-10-18 04:03:59'),(5,'skin',1,2,'2012-10-18 04:05:12','2012-10-18 04:05:12'),(6,'which is smooth',0,2,'2012-10-18 04:05:12','2012-10-18 04:05:12'),(7,'smooth skin',0,2,'2012-10-18 04:05:12','2012-10-18 04:05:12'),(8,'smooth-skinned',0,2,'2012-10-18 04:05:12','2012-10-18 04:05:12'),(9,'began to be used as rugs',1,3,'2012-10-18 04:06:21','2012-10-18 04:06:21'),(10,'rugs began to be used',0,3,'2012-10-18 04:06:21','2012-10-18 04:06:21'),(11,'as rugs began to be used',0,3,'2012-10-18 04:06:21','2012-10-18 04:06:21'),(12,'began to used them as rugs',0,3,'2012-10-18 04:06:21','2012-10-18 04:06:21'),(13,'the values',1,4,'2012-10-18 04:07:10','2012-10-18 04:07:10'),(14,'of the values',0,4,'2012-10-18 04:07:10','2012-10-18 04:07:10'),(15,'the values are',0,4,'2012-10-18 04:07:10','2012-10-18 04:07:10'),(16,'are the values',0,4,'2012-10-18 04:07:10','2012-10-18 04:07:10'),(17,'as was defines by others',1,5,'2012-10-18 04:08:10','2012-10-18 04:08:10'),(18,'its definitions by others',0,5,'2012-10-18 04:08:10','2012-10-18 04:08:10'),(19,'other\'s definition',0,5,'2012-10-18 04:08:10','2012-10-18 04:08:10'),(20,'as others defined it',0,5,'2012-10-18 04:08:10','2012-10-18 04:08:10'),(21,'to act',1,6,'2012-10-18 04:08:57','2012-10-18 04:08:57'),(22,'acting',0,6,'2012-10-18 04:08:57','2012-10-18 04:08:57'),(23,'that has acted',0,6,'2012-10-18 04:08:57','2012-10-18 04:08:57'),(24,'having acted',0,6,'2012-10-18 04:08:57','2012-10-18 04:08:57'),(25,'what is conceived',1,7,'2012-10-18 04:09:47','2012-10-18 04:09:47'),(26,'what it is conceived',0,7,'2012-10-18 04:09:47','2012-10-18 04:09:47'),(27,'what is conceived to be',0,7,'2012-10-18 04:09:47','2012-10-18 04:09:47'),(28,'what is being conceived',0,7,'2012-10-18 04:09:47','2012-10-18 04:09:47'),(29,'runs off that',1,8,'2012-10-18 04:10:30','2012-10-18 04:10:30'),(30,'runs it off',0,8,'2012-10-18 04:10:30','2012-10-18 04:10:30'),(31,'that runs it off',0,8,'2012-10-18 04:10:30','2012-10-18 04:10:30'),(32,'that runs off',0,8,'2012-10-18 04:10:30','2012-10-18 04:10:30'),(33,'much better from',0,9,'2012-10-18 04:11:25','2012-10-18 04:11:25'),(34,'more better than',0,9,'2012-10-18 04:11:25','2012-10-18 04:11:25'),(35,'much better as',0,9,'2012-10-18 04:11:25','2012-10-18 04:11:25'),(36,'much better than',1,9,'2012-10-18 04:11:25','2012-10-18 04:11:25'),(37,'others',0,10,'2012-10-18 04:12:05','2012-10-18 04:12:05'),(38,'thing',0,10,'2012-10-18 04:12:05','2012-10-18 04:12:05'),(39,'another',0,10,'2012-10-18 04:12:05','2012-10-18 04:12:05'),(40,'the other',1,10,'2012-10-18 04:12:05','2012-10-18 04:12:05'),(41,'almost surely',1,11,'2012-10-18 04:13:41','2012-10-18 04:13:41'),(42,'very likely',0,11,'2012-10-18 04:13:41','2012-10-18 04:13:41'),(43,'near positive',0,11,'2012-10-18 04:13:41','2012-10-18 04:13:41'),(44,'quite certainly',0,11,'2012-10-18 04:13:41','2012-10-18 04:13:41'),(45,'though charming and capable is he',1,12,'2012-10-18 04:14:51','2012-10-18 04:14:51'),(46,'even with charm and so capable',0,12,'2012-10-18 04:14:51','2012-10-18 04:14:51'),(47,'charming and having capability',0,12,'2012-10-18 04:14:51','2012-10-18 04:14:51'),(48,'however charming and capable',0,12,'2012-10-18 04:14:51','2012-10-18 04:14:51'),(49,'what has saved',1,13,'2012-10-18 04:15:35','2012-10-18 04:15:35'),(50,'which saved',0,13,'2012-10-18 04:15:35','2012-10-18 04:15:35'),(51,'which has saved',0,13,'2012-10-18 04:15:35','2012-10-18 04:15:35'),(52,'who saves',0,13,'2012-10-18 04:15:35','2012-10-18 04:15:35'),(53,'to understand',1,14,'2012-10-18 04:16:28','2012-10-18 04:16:28'),(54,'understandably',0,14,'2012-10-18 04:16:28','2012-10-18 04:16:28'),(55,'understandable',0,14,'2012-10-18 04:16:28','2012-10-18 04:16:28'),(56,'when understood',0,14,'2012-10-18 04:16:28','2012-10-18 04:16:28'),(57,'are voted',1,15,'2012-10-18 04:17:06','2012-10-18 04:17:06'),(58,'voting',0,15,'2012-10-18 04:17:06','2012-10-18 04:17:06'),(59,'to be voted',0,15,'2012-10-18 04:17:06','2012-10-18 04:17:06'),(60,'will vote',0,15,'2012-10-18 04:17:06','2012-10-18 04:17:06'),(61,'useful most world\'s ',0,16,'2012-10-18 04:17:48','2012-10-18 04:17:48'),(62,'world\'s most useful',1,16,'2012-10-18 04:17:48','2012-10-18 04:17:48'),(63,'useful world\'s most',0,16,'2012-10-18 04:17:48','2012-10-18 04:17:48'),(64,'most world\'s useful',0,16,'2012-10-18 04:17:48','2012-10-18 04:17:48'),(65,'in others droughts',1,17,'2012-10-18 04:18:19','2012-10-18 04:18:19'),(66,'droughts are others',0,17,'2012-10-18 04:18:19','2012-10-18 04:18:19'),(67,'while other droughts',0,17,'2012-10-18 04:18:19','2012-10-18 04:18:19'),(68,'others in drought',0,17,'2012-10-18 04:18:19','2012-10-18 04:18:19'),(69,'as others defined it',1,18,'2012-10-18 04:19:05','2012-10-18 04:19:05'),(70,'other\'s definitions',0,18,'2012-10-18 04:19:05','2012-10-18 04:19:05'),(71,'its definition by others',0,18,'2012-10-18 04:19:05','2012-10-18 04:19:05'),(72,'it was defined by others',0,18,'2012-10-18 04:19:05','2012-10-18 04:19:05'),(73,'Although such a short time',0,19,'2012-10-18 04:20:07','2012-10-18 04:20:07'),(74,'It is such a short',1,19,'2012-10-18 04:20:07','2012-10-18 04:20:07'),(75,'With so short time',0,19,'2012-10-18 04:20:07','2012-10-18 04:20:07'),(76,'With such a short time',0,19,'2012-10-18 04:20:07','2012-10-18 04:20:07'),(77,'regularly reading',1,20,'2012-10-18 04:20:43','2012-10-18 04:20:43'),(78,'were reading regularly',0,20,'2012-10-18 04:20:43','2012-10-18 04:20:43'),(79,'regularly reading what',0,20,'2012-10-18 04:20:43','2012-10-18 04:20:43'),(80,'who reading regularly',0,20,'2012-10-18 04:20:43','2012-10-18 04:20:43'),(81,'known',1,21,'2012-10-18 04:21:54','2012-10-18 04:21:54'),(82,'known are',1,21,'2012-10-18 04:21:54','2012-10-18 04:21:54'),(83,'they are known',0,21,'2012-10-18 04:21:54','2012-10-18 04:21:54'),(84,'what is known',0,21,'2012-10-18 04:21:54','2012-10-18 04:21:54'),(85,'of varying thickness',1,22,'2012-10-18 04:22:38','2012-10-18 04:22:38'),(86,'varied thickness',0,22,'2012-10-18 04:22:38','2012-10-18 04:22:38'),(87,'its thickness varies',0,22,'2012-10-18 04:22:38','2012-10-18 04:22:38'),(88,'its thickness varying',1,22,'2012-10-18 04:22:38','2012-10-18 04:22:38'),(89,'was one of the greatest periods',1,23,'2012-10-18 04:23:36','2012-10-18 04:23:36'),(90,'one of the greatest periods',0,23,'2012-10-18 04:23:36','2012-10-18 04:23:36'),(91,'was of the greatest periods',0,23,'2012-10-18 04:23:36','2012-10-18 04:23:36'),(92,'the greatest periods',1,23,'2012-10-18 04:23:36','2012-10-18 04:23:36'),(93,'give it that',1,24,'2012-10-18 04:24:48','2012-10-18 04:24:48'),(94,'that give it',0,24,'2012-10-18 04:24:48','2012-10-18 04:24:48'),(95,'give that',0,24,'2012-10-18 04:24:48','2012-10-18 04:24:48'),(96,'that gives it to',1,24,'2012-10-18 04:24:48','2012-10-18 04:24:48'),(97,'The cool air',1,25,'2012-10-18 04:25:28','2012-10-18 04:25:28'),(98,'If the air is cool',0,25,'2012-10-18 04:25:28','2012-10-18 04:25:28'),(99,'That the air cools',1,25,'2012-10-18 04:25:28','2012-10-18 04:25:28'),(100,'The cooler the air',0,25,'2012-10-18 04:25:28','2012-10-18 04:25:28'),(101,'was proved to be useful',1,26,'2012-10-18 04:27:01','2012-10-18 04:27:01'),(102,'has proved it useful',0,26,'2012-10-18 04:27:01','2012-10-18 04:27:01'),(103,'has been proved to be useful',0,26,'2012-10-18 04:27:01','2012-10-18 04:27:01'),(104,'has proved useful',1,26,'2012-10-18 04:27:01','2012-10-18 04:27:01'),(105,'a mental illness calling every quirk',0,27,'2012-10-18 04:27:32','2012-10-18 04:27:32'),(106,'a calling for mental illness ever quirk',1,27,'2012-10-18 04:27:32','2012-10-18 04:27:32'),(107,'calling mental illness an every',1,27,'2012-10-18 04:27:32','2012-10-18 04:27:32'),(108,'is',1,28,'2012-10-18 04:28:17','2012-10-18 04:28:17'),(109,'the',1,28,'2012-10-18 04:28:17','2012-10-18 04:28:17'),(110,'has',0,28,'2012-10-18 04:28:17','2012-10-18 04:28:17'),(111,'is has',0,28,'2012-10-18 04:28:17','2012-10-18 04:28:17'),(112,'when',1,29,'2012-10-18 04:33:47','2012-10-18 04:33:47'),(113,'is',0,29,'2012-10-18 04:33:47','2012-10-18 04:33:47'),(114,'that it is',1,29,'2012-10-18 04:33:47','2012-10-18 04:33:47'),(115,'was',0,29,'2012-10-18 04:33:47','2012-10-18 04:33:47'),(116,'how the thunder and lightening are far away',0,30,'2012-10-18 04:35:33','2012-10-18 04:35:33'),(117,'how far away the thunder and lightening are',1,30,'2012-10-18 04:35:33','2012-10-18 04:35:33'),(118,'how far away are the thunder and lightening',0,30,'2012-10-18 04:35:33','2012-10-18 04:35:33'),(119,'the thunder and lightening are how far away',1,30,'2012-10-18 04:35:33','2012-10-18 04:35:33'),(120,'it possible',1,31,'2012-10-18 04:37:00','2012-10-18 04:37:00'),(121,'possible',1,31,'2012-10-18 04:37:00','2012-10-18 04:37:00'),(122,'it is possible',1,31,'2012-10-18 04:37:00','2012-10-18 04:37:00'),(123,'possibility',0,31,'2012-10-18 04:37:00','2012-10-18 04:37:00'),(124,'days to shovel people several',1,32,'2012-10-18 04:37:56','2012-10-18 04:37:56'),(125,'people several days to shovel',0,32,'2012-10-18 04:37:56','2012-10-18 04:37:56'),(126,'several days people to shovel',1,32,'2012-10-18 04:37:56','2012-10-18 04:37:56'),(127,'people to shovel several days',0,32,'2012-10-18 04:37:56','2012-10-18 04:37:56'),(128,'known what',1,33,'2012-10-18 04:39:05','2012-10-18 04:39:05'),(129,'known what it is',1,33,'2012-10-18 04:39:05','2012-10-18 04:39:05'),(130,'what is known',0,33,'2012-10-18 04:39:05','2012-10-18 04:39:05'),(131,'what it is known',0,33,'2012-10-18 04:39:05','2012-10-18 04:39:05'),(132,'human behavior is studied',0,34,'2012-10-18 04:40:11','2012-10-18 04:40:11'),(133,'is human behavior studied',0,34,'2012-10-18 04:40:11','2012-10-18 04:40:11'),(134,'is studied human behavior',1,34,'2012-10-18 04:40:11','2012-10-18 04:40:11'),(135,'human behavior',1,34,'2012-10-18 04:40:11','2012-10-18 04:40:11'),(136,'was',0,35,'2012-10-18 04:41:12','2012-10-18 04:41:12'),(137,'were',1,35,'2012-10-18 04:41:12','2012-10-18 04:41:12'),(138,'who was',1,35,'2012-10-18 04:41:12','2012-10-18 04:41:12'),(139,'who were',0,35,'2012-10-18 04:41:12','2012-10-18 04:41:12'),(140,'that had the recently big sale went bankrupt',0,36,'2012-10-18 04:42:14','2012-10-18 04:42:14'),(141,'that recently had the big sale went bankrupt',0,36,'2012-10-18 04:42:14','2012-10-18 04:42:14'),(142,'that had the big recently sale went bankrupt',1,36,'2012-10-18 04:42:14','2012-10-18 04:42:14'),(143,'that had the big sale went recently bankrupt',1,36,'2012-10-18 04:42:14','2012-10-18 04:42:14'),(144,'that they grow',0,37,'2012-10-18 04:43:25','2012-10-18 04:43:25'),(145,'that grow',1,37,'2012-10-18 04:43:25','2012-10-18 04:43:25'),(146,'they grow it',0,37,'2012-10-18 04:43:25','2012-10-18 04:43:25'),(147,'do they grow',1,37,'2012-10-18 04:43:25','2012-10-18 04:43:25'),(148,'most famous ',1,38,'2012-10-18 04:44:39','2012-10-18 04:44:39'),(149,'the most famous',0,38,'2012-10-18 04:44:39','2012-10-18 04:44:39'),(150,'are most famous',0,38,'2012-10-18 04:44:39','2012-10-18 04:44:39'),(151,'and most famous',1,38,'2012-10-18 04:44:39','2012-10-18 04:44:39'),(152,'so can do',0,39,'2012-10-18 04:45:35','2012-10-18 04:45:35'),(153,'do so can',0,39,'2012-10-18 04:45:35','2012-10-18 04:45:35'),(154,'can do so',1,39,'2012-10-18 04:45:35','2012-10-18 04:45:35'),(155,'so do can',1,39,'2012-10-18 04:45:35','2012-10-18 04:45:35'),(156,'tuna',1,40,'2012-10-18 04:46:24','2012-10-18 04:46:24'),(157,'the tuna',1,40,'2012-10-18 04:46:24','2012-10-18 04:46:24'),(158,'being the tuna',1,40,'2012-10-18 04:46:24','2012-10-18 04:46:24'),(159,'is the tuna',0,40,'2012-10-18 04:46:24','2012-10-18 04:46:24'),(160,'All living things consist of',1,41,'2012-10-18 06:12:06','2012-10-18 06:12:06'),(161,'the one of the softest',1,42,'2012-10-18 06:12:55','2012-10-18 06:12:55'),(162,'in spite of',1,43,'2012-10-18 06:13:38','2012-10-18 06:13:38'),(163,'with which',1,44,'2012-10-18 06:15:00','2012-10-18 06:15:00'),(164,'for it',1,45,'2012-10-18 06:38:00','2012-10-18 06:38:00'),(165,'how one atom or molecule could stimulate',1,46,'2012-10-18 06:38:26','2012-10-18 06:38:26'),(166,'the oldest continuously occupied',1,47,'2012-10-18 06:38:49','2012-10-18 06:38:49'),(167,'by the president to be the best engineer',1,48,'2012-10-18 06:39:07','2012-10-18 06:39:07'),(168,'to be abandoned ',1,49,'2012-10-18 06:39:27','2012-10-18 06:39:27'),(169,'Making application for this job',1,50,'2012-10-18 06:39:46','2012-10-18 06:39:46'),(170,'with which',1,51,'2012-10-18 06:40:12','2012-10-18 06:40:12'),(171,'known what',1,52,'2012-10-18 06:40:52','2012-10-18 06:40:52'),(172,'human behavior is studied',1,53,'2012-10-18 06:41:18','2012-10-18 06:41:18'),(173,'who were',1,54,'2012-10-18 06:41:40','2012-10-18 06:41:40'),(174,'contrary',1,55,'2012-10-18 06:43:49','2012-10-18 06:43:49'),(175,'but',1,56,'2012-10-18 06:44:26','2012-10-18 06:44:26'),(176,'amount to',1,57,'2012-10-18 06:44:58','2012-10-18 06:44:58'),(177,' known what it is',1,58,'2012-10-18 06:45:18','2012-10-18 06:45:18'),(178,'human behavior is studied',1,59,'2012-10-18 06:45:42','2012-10-18 06:45:42');
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `subject_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'TOEIC','TOEIC exam',1,'2012-10-18 03:00:58','2012-10-18 03:18:26');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examquestions`
--

DROP TABLE IF EXISTS `examquestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examquestions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examquestions`
--

LOCK TABLES `examquestions` WRITE;
/*!40000 ALTER TABLE `examquestions` DISABLE KEYS */;
INSERT INTO `examquestions` VALUES (1,1,20,'2012-10-18 06:51:45','2012-10-18 06:51:45'),(2,1,2,'2012-10-18 06:51:45','2012-10-18 06:51:45'),(3,1,9,'2012-10-18 06:51:45','2012-10-18 06:51:45'),(4,1,5,'2012-10-18 06:51:45','2012-10-18 06:51:45'),(5,1,12,'2012-10-18 06:51:45','2012-10-18 06:51:45'),(6,1,14,'2012-10-18 06:51:45','2012-10-18 06:51:45'),(7,1,3,'2012-10-18 06:51:45','2012-10-18 06:51:45'),(8,1,16,'2012-10-18 06:51:45','2012-10-18 06:51:45'),(9,1,13,'2012-10-18 06:51:45','2012-10-18 06:51:45'),(10,1,6,'2012-10-18 06:51:45','2012-10-18 06:51:45'),(11,1,33,'2012-10-18 06:51:45','2012-10-18 06:51:45'),(12,1,40,'2012-10-18 06:51:45','2012-10-18 06:51:45'),(13,1,36,'2012-10-18 06:51:45','2012-10-18 06:51:45'),(14,1,31,'2012-10-18 06:51:45','2012-10-18 06:51:45'),(15,1,22,'2012-10-18 06:51:45','2012-10-18 06:51:45'),(16,1,59,'2012-10-18 06:51:45','2012-10-18 06:51:45'),(17,1,46,'2012-10-18 06:51:45','2012-10-18 06:51:45'),(18,1,55,'2012-10-18 06:51:45','2012-10-18 06:51:45'),(19,1,52,'2012-10-18 06:51:45','2012-10-18 06:51:45'),(20,1,49,'2012-10-18 06:51:45','2012-10-18 06:51:45'),(21,2,15,'2012-10-18 08:05:38','2012-10-18 08:05:38'),(22,2,17,'2012-10-18 08:05:38','2012-10-18 08:05:38'),(23,2,9,'2012-10-18 08:05:38','2012-10-18 08:05:38'),(24,2,16,'2012-10-18 08:05:38','2012-10-18 08:05:38'),(25,2,2,'2012-10-18 08:05:38','2012-10-18 08:05:38'),(26,2,19,'2012-10-18 08:05:38','2012-10-18 08:05:38'),(27,2,3,'2012-10-18 08:05:38','2012-10-18 08:05:38'),(28,2,13,'2012-10-18 08:05:38','2012-10-18 08:05:38'),(29,2,20,'2012-10-18 08:05:38','2012-10-18 08:05:38'),(30,2,5,'2012-10-18 08:05:38','2012-10-18 08:05:38'),(31,2,7,'2012-10-18 08:05:38','2012-10-18 08:05:38'),(32,2,14,'2012-10-18 08:05:38','2012-10-18 08:05:38'),(33,2,10,'2012-10-18 08:05:38','2012-10-18 08:05:38'),(34,2,6,'2012-10-18 08:05:38','2012-10-18 08:05:38'),(35,2,12,'2012-10-18 08:05:38','2012-10-18 08:05:38');
/*!40000 ALTER TABLE `examquestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exams`
--

DROP TABLE IF EXISTS `exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `category_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `hashid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_exam` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exams`
--

LOCK TABLES `exams` WRITE;
/*!40000 ALTER TABLE `exams` DISABLE KEYS */;
INSERT INTO `exams` VALUES (1,'Test 1','1',1,'2012-10-18 06:51:45','2012-10-18 06:51:45','356a192b7913b04c54574d18c28d46e6395428ab',10),(2,'1','1',1,'2012-10-18 08:05:37','2012-10-18 08:05:37','da4b9237bacccdf19c0760cab7aec4a8359010b0',10);
/*!40000 ALTER TABLE `exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci,
  `mark` float DEFAULT NULL,
  `type_question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'<p>\r\n	The greater an objects&#39;s mass, the more difficult it is ____________ .&nbsp; (A)</p>\r\n',1,'One correct answer',1,'2012-10-18 04:03:59','2012-10-18 04:03:59'),(2,'<p>\r\n	The grape is the ___________ , juicy fruit of a woody vine</p>\r\n',1,'One correct answer',1,'2012-10-18 04:05:12','2012-10-18 04:05:12'),(3,'<p>\r\n	In the second half of the nineteenth century, textiles from the southwestern United state, particularly fabrics woven by the Navajo people, _____________________</p>\r\n',1,'One correct answer',1,'2012-10-18 04:06:21','2012-10-18 04:06:21'),(4,'<p>\r\n	During adolescence many young people begin to question ------ held by their families</p>\r\n',1,'One correct answer',1,'2012-10-18 04:07:10','2012-10-18 04:07:10'),(5,'<p>\r\n	In her writing, Elimor Wylie often dealt with her own personality as it was, rather than _________ .</p>\r\n',1,'One correct answer',1,'2012-10-18 04:08:10','2012-10-18 04:08:10'),(6,'<p>\r\n	Congress chartered the first Bank of the United States in 1791 to engage in general commercial banking and __________&nbsp; as a fiscal agent of the federal government</p>\r\n',1,'One correct answer',1,'2012-10-18 04:08:57','2012-10-18 04:08:57'),(7,'<p>\r\n	Essentially, a theory is an abstract, symbolic representation of _____________ reality.</p>\r\n',1,'One correct answer',1,'2012-10-18 04:09:47','2012-10-18 04:09:47'),(8,'<p>\r\n	The more arid the continent, the less the amount of annual precipitation _______________ .</p>\r\n',1,'One correct answer',1,'2012-10-18 04:10:30','2012-10-18 04:10:30'),(9,'<p>\r\n	He really deserved the award because he performed _______________ was expected of him.</p>\r\n',1,'One correct answer',1,'2012-10-18 04:11:25','2012-10-18 04:11:25'),(10,'<p>\r\n	To take pride in what deserves boasting is one thing, and to take good care of it is quite _________ .</p>\r\n',1,'One correct answer',1,'2012-10-18 04:12:05','2012-10-18 04:12:05'),(11,'<p>\r\n	&quot;Do you think that the labor bill will be passed?&quot;</p>\r\n<p>\r\n	&quot;Oh, yes. It&#39;s _________ that it will.&quot;</p>\r\n',1,'One correct answer',1,'2012-10-18 04:13:41','2012-10-18 04:13:41'),(12,'<p>\r\n	It would be difficult for a man of his political affiliation, _______, to become a senator from the south.</p>\r\n',1,'One correct answer',1,'2012-10-18 04:14:51','2012-10-18 04:14:51'),(13,'<p>\r\n	Penicillin is perhaps the drug ________ more lives than any other in the history of medicine.</p>\r\n',1,'One correct answer',1,'2012-10-18 04:15:35','2012-10-18 04:15:35'),(14,'<p>\r\n	A politician can make a legislative proposal more _______ by giving specific examples of what its effect will be.</p>\r\n',1,'One correct answer',1,'2012-10-18 04:16:28','2012-10-18 04:16:28'),(15,'<p>\r\n	Before every presidential election in the United States, the statisticians try to guess the proportion of the population that _________ for each candidate.</p>\r\n',1,'One correct answer',1,'2012-10-18 04:17:06','2012-10-18 04:17:06'),(16,'<p>\r\n	The decimal numeral system is one of the ______ ways of expressing numbers.</p>\r\n',1,'One correct answer',1,'2012-10-18 04:17:48','2012-10-18 04:17:48'),(17,'<p>\r\n	Nebraska has floods in some years, ___________ .</p>\r\n',1,'One correct answer',1,'2012-10-18 04:18:19','2012-10-18 04:18:19'),(18,'<p>\r\n	In her writing, Elinor Wylie, often dealt with her own responsibility as it was, rater than _______ .</p>\r\n',1,'One correct answer',1,'2012-10-18 04:19:05','2012-10-18 04:19:05'),(19,'<p>\r\n	_______________ left before the deadline, it doesn&#39;t seem likely that John will accomplish the job.</p>\r\n',1,'One correct answer',1,'2012-10-18 04:20:07','2012-10-18 04:20:07'),(20,'<p>\r\n	With the start for the penny papers in the 1830&#39;s, the number of people _________<br />\r\n	a newspaper rose considerably.</p>\r\n',1,'One correct answer',1,'2012-10-18 04:20:43','2012-10-18 04:20:43'),(21,'<p>\r\n	At present production levels, _________ deposits of bauxite can provide the world with aluminum for hundreds of years.</p>\r\n',1,'More correct answers',1,'2012-10-18 04:21:54','2012-10-18 04:21:54'),(22,'<p>\r\n	Au bones have an exterior layer, termed the cortex, that is smooth, dense, continuous, and ___________ .</p>\r\n',1,'More correct answers',1,'2012-10-18 04:22:38','2012-10-18 04:22:38'),(23,'<p>\r\n	Coinciding with the development of jazz in New Orleans in the 1920&#39;s ______ in blues music.</p>\r\n',1,'More correct answers',1,'2012-10-18 04:23:36','2012-10-18 04:23:36'),(24,'<p>\r\n	Despite its wide range of styles and instrumentation, country music has certain common features _______ its own special character.</p>\r\n',1,'More correct answers',1,'2012-10-18 04:24:48','2012-10-18 04:24:48'),(25,'<p>\r\n	_______ around stones that are sunwarmed, even the smallest of stones creates tiny currents of warm air.</p>\r\n',1,'More correct answers',1,'2012-10-18 04:25:28','2012-10-18 04:25:28'),(26,'<p>\r\n	This Information _______________________ to a great many people.</p>\r\n',1,'More correct answers',1,'2012-10-18 04:27:01','2012-10-18 04:27:01'),(27,'<p>\r\n	Psychiatrists are ridiculed for ________________ , but new research on genes and the brain suggests they might be right.</p>\r\n',1,'More correct answers',1,'2012-10-18 04:27:32','2012-10-18 04:27:32'),(28,'<p>\r\n	The closer to one of the Earth&#39;s poles, the greater _______ gravitational force.</p>\r\n',1,'More correct answers',1,'2012-10-18 04:28:17','2012-10-18 04:28:17'),(29,'<p>\r\n	The flamingo uses its bill _________ feeding to filter mud and water from the tiny plants and animals that it finds in shallow ponds.</p>\r\n',1,'More correct answers',1,'2012-10-18 04:33:47','2012-10-18 04:33:47'),(30,'<p>\r\n	The amount of lapsed time between the thunder and lightening can be used to determine __________ .</p>\r\n',1,'More correct answers',1,'2012-10-18 04:35:33','2012-10-18 04:35:33'),(31,'<p>\r\n	The application of electronic controls made _________ by the microprocessor and computer storage have multiplied the uses of the modern typewriter.</p>\r\n',1,'More correct answers',1,'2012-10-18 04:37:00','2012-10-18 04:37:00'),(32,'<p>\r\n	After the great blizzard of 1988 in the northeastern United States, it took some _________ the snow away from their homes.</p>\r\n',1,'More correct answers',1,'2012-10-18 04:37:56','2012-10-18 04:37:56'),(33,'<p>\r\n	A logarithm is .......algebra as an exponent.</p>\r\n',1,'More correct answers',1,'2012-10-18 04:39:05','2012-10-18 04:39:05'),(34,'<p>\r\n	Not only ............... in the field of psychology but animal behavior is examined as well.</p>\r\n',1,'More correct answers',1,'2012-10-18 04:40:11','2012-10-18 04:40:11'),(35,'<p>\r\n	Every one of the boys&nbsp; ....... here yesterday has a bicycle.</p>\r\n',1,'More correct answers',1,'2012-10-18 04:41:12','2012-10-18 04:41:12'),(36,'<p>\r\n	The store&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .</p>\r\n',1,'More correct answers',1,'2012-10-18 04:42:14','2012-10-18 04:42:14'),(37,'<p>\r\n	Farmers grow popcorn in much the same way .......... field corn, except that the rows are planted&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; closer together.</p>\r\n',1,'More correct answers',1,'2012-10-18 04:43:25','2012-10-18 04:43:25'),(38,'<p>\r\n	The Grapes of Wrath, a novel about the Depression years of the 1930&#39;s, is one of John Steinbecks&#39;s ........... books.</p>\r\n',1,'More correct answers',1,'2012-10-18 04:44:39','2012-10-18 04:44:39'),(39,'<p>\r\n	A semiconductor is a substance that seldom conducts electricity, but ......... under certain circumstances.</p>\r\n',1,'More correct answers',1,'2012-10-18 04:45:35','2012-10-18 04:45:35'),(40,'<p>\r\n	Among the giants of the sea ........., which may weigh up to 1,000 pounds.</p>\r\n',1,'More correct answers',1,'2012-10-18 04:46:24','2012-10-18 04:46:24'),(41,'<p>\r\n	........... one of more units of living substance called protoplasm.</p>\r\n',1,'Open answer',1,'2012-10-18 06:12:06','2012-10-18 06:12:06'),(42,'<p>\r\n	Diamond is the hardest substance known, whereas graphite, another carbon allotrope, is..............&nbsp; .</p>\r\n',1,'Open answer',1,'2012-10-18 06:12:55','2012-10-18 06:12:55'),(43,'<p>\r\n	Until the ninth century, written words were not actually separated, .............. in some&nbsp;literary writing, dots or points were used to indicate divisions.</p>\r\n',1,'Open answer',1,'2012-10-18 06:13:38','2012-10-18 06:13:38'),(44,'<p>\r\n	The farmer uses wood to build a house .................. to store grains.&nbsp;</p>\r\n',1,'Open answer',1,'2012-10-18 06:15:00','2012-10-18 06:15:00'),(45,'<p>\r\n	Physicists sought ways .................... many others to emit light, amplifying it to much&nbsp;higher powers</p>\r\n',1,'Open answer',1,'2012-10-18 06:38:00','2012-10-18 06:38:00'),(46,'<p>\r\n	An ideal is a standard .................. people judge real phenomena.</p>\r\n',1,'Open answer',1,'2012-10-18 06:38:26','2012-10-18 06:38:26'),(47,'<p>\r\n	Founded around 1075, the Acoma pueblo is considered ..............settlement in the United States</p>\r\n',1,'Open answer',1,'2012-10-18 06:38:49','2012-10-18 06:38:49'),(48,'<p>\r\n	Jacobson is often referred to&nbsp; ...............&nbsp; at the factory</p>\r\n',1,'Open answer',1,'2012-10-18 06:39:07','2012-10-18 06:39:07'),(49,'<p>\r\n	The truck was found ................ an Highway 63.</p>\r\n',1,'Open answer',1,'2012-10-18 06:39:27','2012-10-18 06:39:27'),(50,'<p>\r\n	......................., a Form 57 must be completed.</p>\r\n',1,'Open answer',1,'2012-10-18 06:39:46','2012-10-18 06:39:46'),(51,'<p>\r\n	The farmer uses wood to build a house&nbsp; ................... to store grains.</p>\r\n',1,'Open answer',1,'2012-10-18 06:40:12','2012-10-18 06:40:12'),(52,'<p>\r\n	A logarithm is ........ in algebra as an exponent.</p>\r\n',1,'Open answer',1,'2012-10-18 06:40:52','2012-10-18 06:40:52'),(53,'<p>\r\n	Not only ................. in the field of psychology but animal behavior is examined as well.</p>\r\n',1,'Open answer',1,'2012-10-18 06:41:18','2012-10-18 06:41:18'),(54,'<p>\r\n	Every one of the boys ............. here yesterday has a bicycle</p>\r\n',1,'Open answer',1,'2012-10-18 06:41:40','2012-10-18 06:41:40'),(55,'<p>\r\n	Until the ninth century, written words were not actually separated, .............. in some literary writing,&nbsp;dots or points were used to indicate divisions.</p>\r\n',1,'Open answer',1,'2012-10-18 06:43:49','2012-10-18 06:43:49'),(56,'<p>\r\n	Until the ninth century, written words were not actually separated, .............. in some literary writing,<img alt=\"\" data-rich-file-id=\"6\" src=\"/system/rich/rich_files/rich_files/000/000/006/thumb/bb.jpeg\" /></p>\r\n',1,'Open answer',1,'2012-10-18 06:44:26','2012-10-18 06:44:26'),(57,'<p>\r\n	The production of tin ore in the United States is relatively insignificant, ___________ less than one hundred tons annually.</p>\r\n',1,'Open answer',1,'2012-10-18 06:44:58','2012-10-18 06:44:58'),(58,'<p>\r\n	A logarithm is ______________ .algebra as an exponent.</p>\r\n',1,'Open answer',1,'2012-10-18 06:45:18','2012-10-18 06:45:18'),(59,'<p>\r\n	Not only _________________ in the field of psychology but animal behavior is examined as well.</p>\r\n',1,'Open answer',1,'2012-10-18 06:45:42','2012-10-18 06:45:42');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rich_rich_files`
--

DROP TABLE IF EXISTS `rich_rich_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rich_rich_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `rich_file_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rich_file_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rich_file_file_size` int(11) DEFAULT NULL,
  `rich_file_updated_at` datetime DEFAULT NULL,
  `owner_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `uri_cache` text COLLATE utf8_unicode_ci,
  `simplified_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'file',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rich_rich_files`
--

LOCK TABLES `rich_rich_files` WRITE;
/*!40000 ALTER TABLE `rich_rich_files` DISABLE KEYS */;
INSERT INTO `rich_rich_files` VALUES (6,'2012-10-18 06:44:10','2012-10-18 06:44:10','bb.jpeg','image/jpeg',14011,'2012-10-18 06:44:10',NULL,NULL,'{\"thumb\":\"/system/rich/rich_files/rich_files/000/000/006/thumb/bb.jpeg\",\"rich_thumb\":\"/system/rich/rich_files/rich_files/000/000/006/rich_thumb/bb.jpeg\",\"original\":\"/system/rich/rich_files/rich_files/000/000/006/original/bb.jpeg\"}','image');
/*!40000 ALTER TABLE `rich_rich_files` ENABLE KEYS */;
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
INSERT INTO `schema_migrations` VALUES ('20120917004827'),('20120917004829'),('20120917004830'),('20120917005022'),('20120917005632'),('20120917005633'),('20120917005634'),('20120917011302'),('20120917013714'),('20120917015221'),('20120917015558'),('20120917035359'),('20120918022903'),('20120920025823'),('20120920061002'),('20120921081323'),('20120924041517');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'English','English Test','2012-10-18 03:00:49','2012-10-18 03:18:09');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tmpanswers`
--

DROP TABLE IF EXISTS `tmpanswers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmpanswers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userexam_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `con_answer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmpanswers`
--

LOCK TABLES `tmpanswers` WRITE;
/*!40000 ALTER TABLE `tmpanswers` DISABLE KEYS */;
INSERT INTO `tmpanswers` VALUES (16,7,59,'','2012-10-18 07:34:52','2012-10-18 07:34:52'),(17,7,46,'','2012-10-18 07:34:52','2012-10-18 07:34:52'),(18,7,55,'','2012-10-18 07:34:52','2012-10-18 07:34:52'),(19,7,52,'','2012-10-18 07:34:52','2012-10-18 07:34:52'),(20,7,49,'','2012-10-18 07:34:52','2012-10-18 07:34:52'),(21,6,59,'','2012-10-18 07:35:25','2012-10-18 07:35:25'),(22,6,46,'','2012-10-18 07:35:25','2012-10-18 07:35:25'),(23,6,55,'','2012-10-18 07:35:25','2012-10-18 07:35:25'),(24,6,52,'','2012-10-18 07:35:25','2012-10-18 07:35:25'),(25,6,49,'','2012-10-18 07:35:25','2012-10-18 07:35:25'),(31,4,59,'','2012-10-18 07:36:20','2012-10-18 07:36:20'),(32,4,46,'','2012-10-18 07:36:20','2012-10-18 07:36:20'),(33,4,55,'','2012-10-18 07:36:20','2012-10-18 07:36:20'),(34,4,52,'','2012-10-18 07:36:20','2012-10-18 07:36:20'),(35,4,49,'','2012-10-18 07:36:20','2012-10-18 07:36:20'),(41,2,59,'','2012-10-18 07:38:17','2012-10-18 07:38:17'),(42,2,46,'','2012-10-18 07:38:17','2012-10-18 07:38:17'),(43,2,55,'','2012-10-18 07:38:17','2012-10-18 07:38:17'),(44,2,52,'','2012-10-18 07:38:17','2012-10-18 07:38:17'),(45,2,49,'','2012-10-18 07:38:17','2012-10-18 07:38:17');
/*!40000 ALTER TABLE `tmpanswers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userexams`
--

DROP TABLE IF EXISTS `userexams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userexams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `tmp_point` float DEFAULT NULL,
  `sum_point` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_start` datetime DEFAULT NULL,
  `time_end` datetime DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userexams`
--

LOCK TABLES `userexams` WRITE;
/*!40000 ALTER TABLE `userexams` DISABLE KEYS */;
INSERT INTO `userexams` VALUES (1,NULL,1,NULL,NULL,'2012-10-18 06:51:45','2012-10-18 06:51:45','6z0fj4',NULL,NULL,NULL),(2,'a4k35r',1,0,NULL,'2012-10-18 06:51:45','2012-10-18 07:38:17','a4k35r','2012-10-18 07:37:18','2012-10-18 07:38:17','OK. Completed this test on time!'),(3,'gc4606',1,0,1,'2012-10-18 06:51:45','2012-10-18 07:38:31','gc4606','2012-10-18 07:36:27','2012-10-18 07:37:09','OK. Completed this test on time!'),(4,'ugip75sad',1,0,NULL,'2012-10-18 06:51:45','2012-10-18 07:36:20','ugip75','2012-10-18 07:35:59','2012-10-18 07:36:20','OK. Completed this test on time!'),(5,'lj94rh',1,0,0,'2012-10-18 06:51:45','2012-10-18 07:38:28','lj94rh','2012-10-18 07:35:34','2012-10-18 07:35:51','OK. Completed this test on time!'),(6,'4a3vz2',1,0,NULL,'2012-10-18 06:51:45','2012-10-18 07:35:25','4a3vz2','2012-10-18 07:35:19','2012-10-18 07:35:25','OK. Completed this test on time!'),(7,'7v9z1g',1,0,NULL,'2012-10-18 06:51:45','2012-10-18 07:34:52','7v9z1g','2012-10-18 07:31:16','2012-10-18 07:34:52','OK. Completed this test on time!'),(8,'6iw28m',1,1,5,'2012-10-18 06:51:45','2012-10-18 07:31:04','6iw28m','2012-10-18 07:30:26','2012-10-18 07:30:39','OK. Completed this test on time!'),(9,'j9rjyz',1,10,14,'2012-10-18 06:51:45','2012-10-18 06:55:06','j9rjyz','2012-10-18 06:54:30','2012-10-18 06:54:52','OK. Completed this test on time!'),(10,'4ssbmc',1,0,1,'2012-10-18 06:51:45','2012-10-18 06:55:14','4ssbmc','2012-10-18 06:53:10','2012-10-18 06:53:37','OK. Completed this test on time!'),(11,NULL,2,NULL,NULL,'2012-10-18 08:05:38','2012-10-18 08:05:38','zkvipb',NULL,NULL,NULL),(12,NULL,2,NULL,NULL,'2012-10-18 08:05:38','2012-10-18 08:05:38','lv0iki',NULL,NULL,NULL),(13,NULL,2,NULL,NULL,'2012-10-18 08:05:38','2012-10-18 08:05:38','dob89a',NULL,NULL,NULL),(14,NULL,2,NULL,NULL,'2012-10-18 08:05:38','2012-10-18 08:05:38','ljdfl5',NULL,NULL,NULL),(15,NULL,2,NULL,NULL,'2012-10-18 08:05:38','2012-10-18 08:05:38','d5396a',NULL,NULL,NULL),(16,NULL,2,NULL,NULL,'2012-10-18 08:05:38','2012-10-18 08:05:38','1yrqyr',NULL,NULL,NULL),(17,NULL,2,NULL,NULL,'2012-10-18 08:05:38','2012-10-18 08:05:38','nzed3u',NULL,NULL,NULL),(18,NULL,2,NULL,NULL,'2012-10-18 08:05:38','2012-10-18 08:05:38','rqv7oa',NULL,NULL,NULL),(19,NULL,2,NULL,NULL,'2012-10-18 08:05:38','2012-10-18 08:05:38','m36p9c',NULL,NULL,NULL),(20,'3ffk2b',2,9,NULL,'2012-10-18 08:05:38','2012-10-18 08:06:44','3ffk2b','2012-10-18 08:06:23','2012-10-18 08:06:44','OK. Completed this test on time!');
/*!40000 ALTER TABLE `userexams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-18 17:07:00
