-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: thaueastlhs01-dev.hosting.xuridisa.com    Database: island_db
-- ------------------------------------------------------
-- Server version	5.6.33-0ubuntu0.14.04.1-log

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
-- Table structure for table `accom_feature`
--

DROP TABLE IF EXISTS `accom_feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accom_feature` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` enum('A','H','D') NOT NULL DEFAULT 'H',
  `rank` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accom_feature`
--

LOCK TABLES `accom_feature` WRITE;
/*!40000 ALTER TABLE `accom_feature` DISABLE KEYS */;
INSERT INTO `accom_feature` VALUES (1,'Air Conditioning','A',1),(2,'DVD Player','A',2),(3,'Sky Channels','A',3),(4,'Microwave','A',4),(5,'Toaster','A',5),(6,'Refrigerator','A',6),(7,'Stereo','A',7),(8,'Outdoor Table and Chairs','A',8),(9,'Dining Table and Chairs','A',9),(10,'1 x Queen-Sized Bed','A',19),(11,'1 x Single bed','A',18),(12,'Single Fold out Couch','A',17),(13,'Double Glazed Windows','A',16),(14,'Carpet Throughout','A',15),(15,'Electric Blankets','A',14),(16,'32\" LCD TV','A',13),(17,'Radio Alarm Clock','A',12),(18,'Electric Kettle','A',11),(19,'Wine Glasses','A',10),(20,'Complimentary tea and coffee','A',20),(21,'1 x Double Fold Out Couch','A',21),(22,'Gas Hobs','A',22),(23,'Electric fry pan','A',23),(24,'2 x Single beds','A',24),(25,'Heater','A',25),(26,'Dual temp fridge/freezer','A',26),(27,'1 x Single/Double Bunk Set','A',32),(28,'1 x Single Bunk Set','A',31),(29,'Electric heating','A',30),(30,'Coffee mugs','A',29),(31,'Medium Kitchen Storage','A',28),(32,'Small mini fridge','A',27),(33,'One parking space per cabin booked.','A',33),(34,'Mineral Pools & Swimming Pool (seasonal)','A',39),(35,'Internet lounge with comfortable couches','A',38),(36,'Communal toilets and showers','A',37),(37,'Kitchen/dining rooms (with TV)','A',36),(38,'Drive through waste dump','A',35),(39,'Fresh Water and picnic tables','A',34),(40,'The powered camp sites have electrical hook-up with either hard or grassed surface parking','A',40),(41,'Untitled','D',0),(42,'Patio & BBQ Area','A',41),(43,'Potbelly Stove','A',42),(44,'Heat Pump','A',43),(45,'3 x Single Beds','A',44),(46,'Large deck area with BBQ','A',45),(47,'Outside, private bath','A',46),(48,'Private garden area','A',47),(49,'Small kitchen area','A',48),(50,'En-suite shower room','A',49),(51,'Electric radiator','A',50),(52,'1 x Queen-Sized Double Bed','A',51),(53,'1 x King-Sized Bed','A',52),(54,'BBQ','A',53),(55,'Kitchen Area','A',54),(56,'Dishwasher','A',55),(57,'Large open plan living/kitchen area','A',56),(58,'Untitled','A',67),(59,'Leather Lounge Suite','A',66),(60,'Flat Screen TV','A',65),(61,'Free Wi-Fi','A',64),(62,'Ensuite Bathroom','A',63),(63,'Tea/Coffee making facilities','A',62),(64,'Hairdryer','A',61),(65,'Bathrobes','A',60),(66,'Iron/Ironing board','A',59),(67,'Off Street Parking','A',58),(68,'Private Patio','A',57),(69,'BBQ','A',68),(70,'x','D',0);
/*!40000 ALTER TABLE `accom_feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accom_has_feature`
--

DROP TABLE IF EXISTS `accom_has_feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accom_has_feature` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feature_id` int(11) NOT NULL,
  `accom_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1592 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accom_has_feature`
--

LOCK TABLES `accom_has_feature` WRITE;
/*!40000 ALTER TABLE `accom_has_feature` DISABLE KEYS */;
INSERT INTO `accom_has_feature` VALUES (1383,1,6),(1384,5,6),(1385,9,6),(1386,16,6),(1387,12,6),(1388,21,6),(1389,25,6),(1508,1,3),(1509,5,3),(1510,9,3),(1511,16,3),(1512,12,3),(1513,21,3),(1562,3,2),(1563,4,2),(1564,32,2),(1565,53,2),(1566,65,2),(1567,61,2),(1586,4,1),(1587,16,1),(1588,20,1),(1589,32,1),(1590,31,1),(1591,61,1);
/*!40000 ALTER TABLE `accom_has_feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accommodation`
--

DROP TABLE IF EXISTS `accommodation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accommodation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_price` decimal(11,2) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `page_meta_data_id` int(11) NOT NULL,
  `slideshow_id` int(11) NOT NULL,
  `beds` int(11) DEFAULT NULL,
  `sqm` int(11) DEFAULT NULL,
  `pax` int(11) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `google_map_address` varchar(255) DEFAULT NULL,
  `address` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accommodation`
--

LOCK TABLES `accommodation` WRITE;
/*!40000 ALTER TABLE `accommodation` DISABLE KEYS */;
INSERT INTO `accommodation` VALUES (1,186.50,12,12,17,1,125,3,'-36.7469394','174.7343533','20 Constellation Dr, Rosedale, Auckland 0632, New Zealand','20 Constellation Dr, Rosedale, Auckland 0632, New'),(2,185.50,12,13,17,2,3,6,NULL,NULL,NULL,NULL),(3,255.00,13,17,17,2,1,1,NULL,NULL,NULL,NULL),(4,200.00,0,21,0,4,32,1,NULL,NULL,NULL,NULL),(5,0.00,14,23,1,0,0,0,NULL,NULL,NULL,NULL),(6,400.00,15,26,16,6,78,5,NULL,NULL,NULL,NULL),(7,0.00,0,31,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `accommodation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accommodation_has_compendium_section`
--

DROP TABLE IF EXISTS `accommodation_has_compendium_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accommodation_has_compendium_section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` mediumtext NOT NULL,
  `accommodation_id` int(11) NOT NULL,
  `compendium_section_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accommodation_has_compendium_section`
--

LOCK TABLES `accommodation_has_compendium_section` WRITE;
/*!40000 ALTER TABLE `accommodation_has_compendium_section` DISABLE KEYS */;
INSERT INTO `accommodation_has_compendium_section` VALUES (19,'',1,1),(20,'',1,8),(21,'',1,9),(22,'',1,10),(23,'',1,11),(24,'<p>resr</p>',1,17),(25,'',1,12);
/*!40000 ALTER TABLE `accommodation_has_compendium_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beamer_campaign`
--

DROP TABLE IF EXISTS `beamer_campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beamer_campaign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8 NOT NULL,
  `heading` varchar(255) CHARACTER SET utf8 NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `thumb_photo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `preview_note` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `terms_and_conditions` text CHARACTER SET utf8 NOT NULL,
  `beamer_phase` enum('D','P') NOT NULL DEFAULT 'D' COMMENT 'D= Draft , P=Published',
  `status` enum('A','D','H') NOT NULL DEFAULT 'H',
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_deleted` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beamer_campaign`
--

LOCK TABLES `beamer_campaign` WRITE;
/*!40000 ALTER TABLE `beamer_campaign` DISABLE KEYS */;
INSERT INTO `beamer_campaign` VALUES (6,'Jed Talk: SilverStripe','Jed Talk: SilverStripe','Jed Talk: SilverStripe','/library/800-3914-126.jpg','/uploads/2018/01/img-5a71349bcc6a8.jpg','','<p>Jed Talk: SilverStripe&nbsp;Jed Talk: SilverStripe&nbsp;Jed Talk: SilverStripe</p>','<p>Jed Talk: SilverStripe&nbsp;Jed Talk: SilverStripe&nbsp;Jed Talk: SilverStripe&nbsp;Jed Talk: SilverStripe</p>','P','H','2018-01-31 03:13:16','2018-01-31 03:14:36','0000-00-00 00:00:00',3,3,0),(7,'Testing Island Campaign','Testing Island Campaign','Testing Island Campaign','/library/testing-image.jpg','/uploads/2018/02/img-5a73b4704bc17.jpg','Testing Island Campaign','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nulla ante, vulputate vitae convallis vel, malesuada sed libero. Quisque commodo augue tortor, nec molestie sem volutpat a. Etiam metus purus, varius sit amet tempus sed, laoreet vel justo. Nunc sagittis ex at placerat ultrices. Sed sit amet nisl quis erat mattis tempor sed quis mi. Vestibulum maximus libero eget blandit laoreet. Donec vel lectus ac ipsum semper suscipit. Donec efficitur metus at nisi vulputate consectetur sed vel lectus. Phasellus eleifend enim a lectus eleifend, non semper justo auctor. Maecenas ut consectetur justo. Fusce ornare sit amet lectus ac dictum. Praesent hendrerit orci vitae tortor molestie, non sagittis ante efficitur. Pellentesque vel ante molestie, imperdiet risus et, hendrerit ex. Donec rhoncus enim sit amet sollicitudin porttitor. Sed feugiat, lacus in viverra pharetra, mauris neque blandit lacus, eu suscipit turpis massa quis sapien.</p>','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nulla ante, vulputate vitae convallis vel, malesuada sed libero. Quisque commodo augue tortor, nec molestie sem volutpat a. Etiam metus purus, varius sit amet tempus sed, laoreet vel justo. Nunc sagittis ex at placerat ultrices. Sed sit amet nisl quis erat mattis tempor sed quis mi. Vestibulum maximus libero eget blandit laoreet. Donec vel lectus ac ipsum semper suscipit. Donec efficitur metus at nisi vulputate consectetur sed vel lectus. Phasellus eleifend enim a lectus eleifend, non semper justo auctor. Maecenas ut consectetur justo. Fusce ornare sit amet lectus ac dictum. Praesent hendrerit orci vitae tortor molestie, non sagittis ante efficitur. Pellentesque vel ante molestie, imperdiet risus et, hendrerit ex. Donec rhoncus enim sit amet sollicitudin porttitor. Sed feugiat, lacus in viverra pharetra, mauris neque blandit lacus, eu suscipit turpis massa quis sapien.</p>','P','H','2018-02-01 01:05:06','2018-02-02 00:44:32','0000-00-00 00:00:00',3,3,0);
/*!40000 ALTER TABLE `beamer_campaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beamer_campaign_has_emails`
--

DROP TABLE IF EXISTS `beamer_campaign_has_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beamer_campaign_has_emails` (
  `beamer_campaign_id` int(11) NOT NULL,
  `beamer_email_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beamer_campaign_has_emails`
--

LOCK TABLES `beamer_campaign_has_emails` WRITE;
/*!40000 ALTER TABLE `beamer_campaign_has_emails` DISABLE KEYS */;
INSERT INTO `beamer_campaign_has_emails` VALUES (6,5),(7,6),(7,5);
/*!40000 ALTER TABLE `beamer_campaign_has_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beamer_campaign_section_items`
--

DROP TABLE IF EXISTS `beamer_campaign_section_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beamer_campaign_section_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `rank` smallint(6) NOT NULL,
  `beamer_campaign_section_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beamer_campaign_section_items`
--

LOCK TABLES `beamer_campaign_section_items` WRITE;
/*!40000 ALTER TABLE `beamer_campaign_section_items` DISABLE KEYS */;
INSERT INTO `beamer_campaign_section_items` VALUES (87,1,1,31),(88,2,1,32),(89,5,1,33),(125,1,1,42),(127,3,3,42),(128,2,1,43),(129,3,2,43),(130,1,1,44),(131,2,2,44),(132,16,3,44),(133,2,4,42);
/*!40000 ALTER TABLE `beamer_campaign_section_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beamer_campaign_sections`
--

DROP TABLE IF EXISTS `beamer_campaign_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beamer_campaign_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) CHARACTER SET utf8 NOT NULL,
  `section_type` varchar(20) CHARACTER SET utf8 NOT NULL,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  `beamer_campaign_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beamer_campaign_sections`
--

LOCK TABLES `beamer_campaign_sections` WRITE;
/*!40000 ALTER TABLE `beamer_campaign_sections` DISABLE KEYS */;
INSERT INTO `beamer_campaign_sections` VALUES (31,'Accommodation','accommodations',0,6),(32,'Blog','blogs',0,6),(33,'Pages','pages',0,6),(42,'Blog','blogs',1,7),(43,'Blog','blogs',1,7),(44,'Pages','pages',3,7);
/*!40000 ALTER TABLE `beamer_campaign_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beamer_email`
--

DROP TABLE IF EXISTS `beamer_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beamer_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `label` varchar(255) CHARACTER SET utf8 NOT NULL,
  `list_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `list_email_address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `status` enum('A','D','H') DEFAULT 'H',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beamer_email`
--

LOCK TABLES `beamer_email` WRITE;
/*!40000 ALTER TABLE `beamer_email` DISABLE KEYS */;
INSERT INTO `beamer_email` VALUES (5,'Test List','Test List','06224f3593','us15-ea8041ee8a-54b903437d@inbound.mailchimp.com','A'),(6,'NewsLetter 2','NewsLetter 2','cef75cbd82','us15-ea8041ee8a-45837cab1c@inbound.mailchimp.com','A');
/*!40000 ALTER TABLE `beamer_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_category`
--

DROP TABLE IF EXISTS `blog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_meta_data_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_category`
--

LOCK TABLES `blog_category` WRITE;
/*!40000 ALTER TABLE `blog_category` DISABLE KEYS */;
INSERT INTO `blog_category` VALUES (2,19),(3,27);
/*!40000 ALTER TABLE `blog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_post`
--

DROP TABLE IF EXISTS `blog_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_posted` datetime DEFAULT NULL,
  `page_meta_data_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_post`
--

LOCK TABLES `blog_post` WRITE;
/*!40000 ALTER TABLE `blog_post` DISABLE KEYS */;
INSERT INTO `blog_post` VALUES (2,'2017-11-16 00:00:00',20),(3,'2017-11-04 00:00:00',24),(4,'2018-01-03 00:00:00',28);
/*!40000 ALTER TABLE `blog_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_post_has_category`
--

DROP TABLE IF EXISTS `blog_post_has_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_post_has_category` (
  `category_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_post_has_category`
--

LOCK TABLES `blog_post_has_category` WRITE;
/*!40000 ALTER TABLE `blog_post_has_category` DISABLE KEYS */;
INSERT INTO `blog_post_has_category` VALUES (2,3),(3,4),(2,2);
/*!40000 ALTER TABLE `blog_post_has_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_accessgroups`
--

DROP TABLE IF EXISTS `cms_accessgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_accessgroups` (
  `access_id` int(11) NOT NULL AUTO_INCREMENT,
  `access_name` varchar(100) NOT NULL,
  `access_users` char(1) NOT NULL DEFAULT 'N',
  `access_userpasswords` char(1) NOT NULL DEFAULT 'N',
  `access_useraccesslevel` char(1) NOT NULL DEFAULT 'N',
  `access_accessgroups` char(1) NOT NULL DEFAULT 'N',
  `access_cmssettings` char(1) NOT NULL DEFAULT 'N',
  `access_settings` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`access_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_accessgroups`
--

LOCK TABLES `cms_accessgroups` WRITE;
/*!40000 ALTER TABLE `cms_accessgroups` DISABLE KEYS */;
INSERT INTO `cms_accessgroups` VALUES (1,'Super Administrator','Y','Y','Y','Y','Y','Y'),(2,'General Editor','Y','Y','N','N','N','Y');
/*!40000 ALTER TABLE `cms_accessgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_blacklist_user`
--

DROP TABLE IF EXISTS `cms_blacklist_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_blacklist_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_failed_attempt_on` datetime DEFAULT NULL,
  `failed_login_attempt_count` int(11) NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_disabled` tinyint(1) NOT NULL DEFAULT '0',
  `disabled_on` datetime DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `recent_login_attempt_on` datetime DEFAULT NULL,
  `failed_hour_count` int(11) NOT NULL,
  `total_failed_attempt` int(11) NOT NULL,
  `is_notified` tinyint(1) NOT NULL DEFAULT '0',
  `ip_address` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_blacklist_user`
--

LOCK TABLES `cms_blacklist_user` WRITE;
/*!40000 ALTER TABLE `cms_blacklist_user` DISABLE KEYS */;
INSERT INTO `cms_blacklist_user` VALUES (3,'2017-08-27 21:32:42',1,'2017-08-27 21:32:42',0,NULL,'stay@maramvineyard.com','2017-08-27 21:32:42',0,1,0,'108.162.249.193'),(6,'2018-02-08 01:30:08',1,'2018-02-08 01:30:08',0,NULL,'support@tomahawk.co.nzr','2018-02-08 01:30:08',0,1,0,'114.23.241.67');
/*!40000 ALTER TABLE `cms_blacklist_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_login_attempt`
--

DROP TABLE IF EXISTS `cms_login_attempt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_login_attempt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` tinyblob NOT NULL,
  `access_key` tinyblob,
  `is_successful` enum('N','Y') NOT NULL DEFAULT 'N',
  `ip_address` varchar(255) NOT NULL,
  `record_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_login_attempt`
--

LOCK TABLES `cms_login_attempt` WRITE;
/*!40000 ALTER TABLE `cms_login_attempt` DISABLE KEYS */;
INSERT INTO `cms_login_attempt` VALUES (1,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','127.0.0.1','2016-07-21 16:32:05'),(2,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','127.0.0.1','2016-07-22 08:45:25'),(3,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','127.0.0.1','2016-11-14 12:02:00'),(4,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','127.0.0.1','2016-12-05 13:12:05'),(5,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','127.0.0.1','2016-12-06 09:38:02'),(6,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','127.0.0.1','2016-12-07 08:49:19'),(7,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','127.0.0.1','2016-12-08 09:43:35'),(8,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','127.0.0.1','2017-06-12 23:18:58'),(9,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','I µíì\÷¸%\‘\‡Q\⁄J','N','127.0.0.1','2017-06-13 22:50:22'),(10,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','127.0.0.1','2017-06-13 22:50:27'),(11,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','127.0.0.1','2017-06-14 04:20:59'),(12,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','127.0.0.1','2017-06-14 23:01:05'),(13,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','127.0.0.1','2017-06-15 23:51:40'),(14,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','127.0.0.1','2017-06-18 23:55:42'),(15,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','127.0.0.1','2017-06-19 23:21:52'),(16,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2017-06-20 01:45:46'),(17,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2017-06-20 23:31:19'),(18,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2017-06-22 02:30:17'),(19,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','222.152.160.20','2017-06-23 03:25:18'),(20,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','222.152.160.20','2017-06-23 03:30:04'),(21,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2017-06-26 00:34:42'),(22,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2017-06-26 04:43:11'),(23,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2017-06-27 22:26:22'),(24,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','Û1≥˚>≠ë˝NÚ\‰N','N','222.152.162.134','2017-06-28 10:57:51'),(25,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','222.152.162.134','2017-06-28 10:57:58'),(26,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2017-06-29 22:50:06'),(27,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2017-06-29 23:51:26'),(28,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2017-07-02 22:41:48'),(29,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2017-07-03 22:11:37'),(30,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2017-08-04 03:39:12'),(31,')P\\\‹@¥\‡J\€5)?h\‰«º07\…\r[^ôAf\Á∫#>∏','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','125.236.169.220','2017-08-08 22:08:29'),(32,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2017-08-09 00:20:10'),(33,')P\\\‹@¥\‡J\€5)?h\‰«º07\…\r[^ôAf\Á∫#>∏','\‘?/\€F/_∫\ﬁ\»ˇE\r¡\ﬂ\–','N','125.236.169.220','2017-08-09 00:50:50'),(34,')P\\\‹@¥\‡J\€5)?h\‰«º07\…\r[^ôAf\Á∫#>∏','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','125.236.169.220','2017-08-09 00:51:02'),(35,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','122.62.205.56','2017-08-10 01:29:38'),(36,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','122.62.205.56','2017-08-21 05:02:55'),(37,')P\\\‹@¥\‡J\€5)?h\‰«º07\…\r[^ôAf\Á∫#>∏','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','125.236.183.124','2017-08-21 09:25:30'),(38,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2017-08-21 22:31:26'),(39,'8Mëk \ÀM\Íö\„3Û\«\Ï4K\'îK\›\√kêCπ!éaùñ','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2017-08-22 02:51:29'),(40,'8Mëk \ÀM\Íö\„3Û\«\Ï4K\'îK\›\√kêCπ!éaùñ','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2017-08-23 02:10:27'),(41,'8Mëk \ÀM\Íö\„3Û\«\Ï4K\'îK\›\√kêCπ!éaùñ','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2017-08-23 21:46:41'),(42,'8Mëk \ÀM\Íö\„3Û\«\Ï4K\'îK\›\√kêCπ!éaùñ','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','198.41.238.19','2017-08-24 00:00:23'),(43,'85\⁄`wp∏b¨\’vldC¢-¸n?∑wæç4\‰t','¯hqGá\È	Ö!ıîåYç','N','108.162.249.193','2017-08-27 21:32:42'),(44,')P\\\‹@¥\‡J\€5)?h\‰«º07\…\r[^ôAf\Á∫#>∏','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','108.162.249.193','2017-08-27 21:33:32'),(45,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','Û1≥˚>≠ë˝NÚ\‰N','N','198.41.238.31','2017-08-31 00:01:01'),(46,'8Mëk \ÀM\Íö\„3Û\«\Ï4K\'îK\›\√kêCπ!éaùñ','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','198.41.238.31','2017-08-31 00:02:16'),(47,'8Mëk \ÀM\Íö\„3Û\«\Ï4K\'îK\›\√kêCπ!éaùñ','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','198.41.238.31','2017-08-31 01:01:23'),(48,'8Mëk \ÀM\Íö\„3Û\«\Ï4K\'îK\›\√kêCπ!éaùñ','4{-Ω\Âµ_b«í],\ÿQ','N','198.41.238.31','2017-09-04 05:28:57'),(49,'8Mëk \ÀM\Íö\„3Û\«\Ï4K\'îK\›\√kêCπ!éaùñ','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','198.41.238.31','2017-09-12 03:45:34'),(50,'8Mëk \ÀM\Íö\„3Û\«\Ï4K\'îK\›\√kêCπ!éaùñ','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','198.41.238.31','2017-09-15 02:55:59'),(51,'8Mëk \ÀM\Íö\„3Û\«\Ï4K\'îK\›\√kêCπ!éaùñ','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2017-09-27 03:01:20'),(52,'8Mëk \ÀM\Íö\„3Û\«\Ï4K\'îK\›\√kêCπ!éaùñ','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2017-09-28 20:00:44'),(53,'8Mëk \ÀM\Íö\„3Û\«\Ï4K\'îK\›\√kêCπ!éaùñ','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','198.41.238.31','2017-10-12 01:04:08'),(54,'8Mëk \ÀM\Íö\„3Û\«\Ï4K\'îK\›\√kêCπ!éaùñ','Ñ§ó/\‹\Z\¬N!\‹:fŸ´)˚\Ó\ \Ì~\\ºÖu:ù\ ','N','198.41.238.31','2017-10-12 01:12:33'),(55,'8Mëk \ÀM\Íö\„3Û\«\Ï4K\'îK\›\√kêCπ!éaùñ','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','198.41.238.31','2017-10-12 01:12:41'),(56,'8Mëk \ÀM\Íö\„3Û\«\Ï4K\'îK\›\√kêCπ!éaùñ','Ñ§ó/\‹\Z\¬N!\‹:fŸ´)˚\Ó\ \Ì~\\ºÖu:ù\ ','N','198.41.238.31','2017-10-18 01:32:43'),(57,'8Mëk \ÀM\Íö\„3Û\«\Ï4K\'îK\›\√kêCπ!éaùñ','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','198.41.238.31','2017-10-18 01:32:52'),(58,'8Mëk \ÀM\Íö\„3Û\«\Ï4K\'îK\›\√kêCπ!éaùñ','Ñ§ó/\‹\Z\¬N!\‹:fŸ´)˚\Ó\ \Ì~\\ºÖu:ù\ ','N','198.41.238.31','2017-10-19 19:57:58'),(59,'8Mëk \ÀM\Íö\„3Û\«\Ï4K\'îK\›\√kêCπ!éaùñ','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','198.41.238.31','2017-10-19 19:58:10'),(60,'8Mëk \ÀM\Íö\„3Û\«\Ï4K\'îK\›\√kêCπ!éaùñ','Ñ§ó/\‹\Z\¬N!\‹:fŸ´)˚\Ó\ \Ì~\\ºÖu:ù\ ','N','198.41.238.31','2017-10-19 20:02:33'),(61,'8Mëk \ÀM\Íö\„3Û\«\Ï4K\'îK\›\√kêCπ!éaùñ','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','198.41.238.31','2017-10-19 20:02:38'),(62,'8Mëk \ÀM\Íö\„3Û\«\Ï4K\'îK\›\√kêCπ!éaùñ','Ñ§ó/\‹\Z\¬N!\‹:fŸ´)˚\Ó\ \Ì~\\ºÖu:ù\ ','N','198.41.238.31','2017-10-19 23:26:24'),(63,'8Mëk \ÀM\Íö\„3Û\«\Ï4K\'îK\›\√kêCπ!éaùñ','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','198.41.238.31','2017-10-19 23:26:29'),(64,'8Mëk \ÀM\Íö\„3Û\«\Ï4K\'îK\›\√kêCπ!éaùñ','Ñ§ó/\‹\Z\¬N!\‹:fŸ´)˚\Ó\ \Ì~\\ºÖu:ù\ ','N','198.41.238.31','2017-10-19 23:27:44'),(65,'8Mëk \ÀM\Íö\„3Û\«\Ï4K\'îK\›\√kêCπ!éaùñ','Ñ§ó/\‹\Z\¬N!\‹:fŸ´)˚\Ó\ \Ì~\\ºÖu:ù\ ','N','198.41.238.31','2017-10-19 23:29:08'),(66,'8Mëk \ÀM\Íö\„3Û\«\Ï4K\'îK\›\√kêCπ!éaùñ','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','198.41.238.31','2017-10-20 01:56:06'),(67,'8Mëk \ÀM\Íö\„3Û\«\Ï4K\'îK\›\√kêCπ!éaùñ','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','198.41.238.31','2017-10-30 01:01:07'),(68,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','Û1≥˚>≠ë˝NÚ\‰N','N','127.0.0.1','2017-10-31 02:51:40'),(69,'8Mëk \ÀM\Íö\„3Û\«\Ï4K\'îK\›\√kêCπ!éaùñ','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','127.0.0.1','2017-10-31 02:52:22'),(70,'8Mëk \ÀM\Íö\„3Û\«\Ï4K\'îK\›\√kêCπ!éaùñ','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','127.0.0.1','2017-10-31 02:54:48'),(71,'8Mëk \ÀM\Íö\„3Û\«\Ï4K\'îK\›\√kêCπ!éaùñ','Ñ§ó/\‹\Z\¬N!\‹:fŸ´)˚\Ó\ \Ì~\\ºÖu:ù\ ','N','127.0.0.1','2017-10-31 22:18:49'),(72,'8Mëk \ÀM\Íö\„3Û\«\Ï4K\'îK\›\√kêCπ!éaùñ','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','127.0.0.1','2017-11-01 02:53:07'),(73,'8Mëk \ÀM\Íö\„3Û\«\Ï4K\'îK\›\√kêCπ!éaùñ','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','127.0.0.1','2017-11-01 02:56:12'),(74,'8Mëk \ÀM\Íö\„3Û\«\Ï4K\'îK\›\√kêCπ!éaùñ','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','127.0.0.1','2017-11-01 03:05:52'),(75,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','Û1≥˚>≠ë˝NÚ\‰N','N','127.0.0.1','2017-11-06 05:06:56'),(76,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','Û1≥˚>≠ë˝NÚ\‰N','N','127.0.0.1','2017-11-06 05:07:01'),(77,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','Y7£∆å\‚\Àv˘$üZÚ¨\‹\0','N','127.0.0.1','2017-11-06 05:07:06'),(78,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','Û1≥˚>≠ë˝NÚ\‰N','N','127.0.0.1','2017-11-06 05:07:15'),(79,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','Y7£∆å\‚\Àv˘$üZÚ¨\‹\0','N','127.0.0.1','2017-11-06 05:08:31'),(80,'8Mëk \ÀM\Íö\„3Û\«\Ï4K\'îK\›\√kêCπ!éaùñ','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','127.0.0.1','2017-11-06 05:08:44'),(81,'8Mëk \ÀM\Íö\„3Û\«\Ï4K\'îK\›\√kêCπ!éaùñ','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','127.0.0.1','2017-11-07 04:29:03'),(82,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','Û1≥˚>≠ë˝NÚ\‰N','N','127.0.0.1','2017-11-08 02:39:52'),(83,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','Û1≥˚>≠ë˝NÚ\‰N','N','127.0.0.1','2017-11-08 02:40:07'),(84,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','Û1≥˚>≠ë˝NÚ\‰N','N','127.0.0.1','2017-11-08 02:40:18'),(85,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','Û1≥˚>≠ë˝NÚ\‰N','N','127.0.0.1','2017-11-08 02:40:50'),(86,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','Û1≥˚>≠ë˝NÚ\‰N','N','127.0.0.1','2017-11-08 02:42:53'),(87,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','Û1≥˚>≠ë˝NÚ\‰N','N','127.0.0.1','2017-11-08 02:46:23'),(88,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','Û1≥˚>≠ë˝NÚ\‰N','N','127.0.0.1','2017-11-08 02:51:09'),(89,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','127.0.0.1','2017-11-08 02:51:29'),(90,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','Û1≥˚>≠ë˝NÚ\‰N','N','127.0.0.1','2017-11-08 03:02:17'),(91,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','Û1≥˚>≠ë˝NÚ\‰N','N','127.0.0.1','2017-11-08 03:02:26'),(92,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','Û1≥˚>≠ë˝NÚ\‰N','N','127.0.0.1','2017-11-08 03:03:03'),(93,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2017-11-15 19:54:34'),(94,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2017-11-16 00:28:41'),(95,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2017-11-16 01:39:30'),(96,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2017-11-16 02:25:06'),(97,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','127.0.0.1','2017-11-17 01:47:26'),(98,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','127.0.0.1','2017-11-21 01:30:47'),(99,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','Û1≥˚>≠ë˝NÚ\‰N','N','127.0.0.1','2017-11-22 02:18:14'),(100,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','127.0.0.1','2017-11-22 02:18:16'),(101,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','127.0.0.1','2017-11-29 01:40:51'),(102,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','127.0.0.1','2017-12-03 22:14:11'),(103,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','127.0.0.1','2017-12-12 23:25:13'),(104,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','127.0.0.1','2017-12-14 00:32:10'),(105,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','127.0.0.1','2017-12-17 20:47:01'),(106,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','127.0.0.1','2017-12-18 03:11:05'),(107,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2017-12-20 22:19:06'),(108,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2017-12-21 00:01:13'),(109,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2017-12-21 02:08:29'),(110,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2017-12-21 03:09:37'),(111,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-03 20:07:17'),(112,'§\Ï9˜\ﬁi§\Ÿ◊°\Ï±P8\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-03 22:22:21'),(113,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-03 22:24:32'),(114,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-03 22:30:52'),(115,'§\Ï9˜\ﬁi§\Ÿ◊°\Ï±P8\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-03 22:40:14'),(116,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-04 01:51:02'),(117,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-07 19:05:01'),(118,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-07 21:21:06'),(119,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-07 22:10:18'),(120,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-08 00:05:56'),(121,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-08 01:06:13'),(122,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-08 19:44:46'),(123,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-15 21:13:02'),(124,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-16 23:16:05'),(125,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-17 00:28:47'),(126,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-17 21:22:48'),(127,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-17 22:44:38'),(128,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-22 20:53:09'),(129,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-22 21:31:43'),(130,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-22 22:28:21'),(131,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-22 23:43:22'),(132,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-23 02:23:23'),(133,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-23 20:19:47'),(134,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-23 22:20:22'),(135,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-23 22:23:27'),(136,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-23 22:34:09'),(137,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','Û1≥˚>≠ë˝NÚ\‰N','N','114.23.241.67','2018-01-23 22:38:36'),(138,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-23 22:38:38'),(139,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-24 00:46:42'),(140,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-24 01:48:25'),(141,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-24 02:13:28'),(142,'´)˚\Ó\ \Ì~\\ºÖu:ù\ ','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','N','114.23.241.67','2018-01-24 21:54:44'),(143,'´)˚\Ó\ \Ì~\\ºÖu:ù\ ','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','N','114.23.241.67','2018-01-24 21:54:46'),(144,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-24 23:26:34'),(145,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-24 23:29:57'),(146,'Øƒ∫7\“;R\ÕD\‚\Œ!•¿≈â\"ù¨-¡Rc=N\◊JK™','6´\Ì,U\ƒH\»ŒÜ\“5Ú	\r','N','114.23.241.67','2018-01-24 23:31:32'),(147,'Øƒ∫7\“;R\ÕD\‚\Œ!•¿≈â\"ù¨-¡Rc=N\◊JK™','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-24 23:31:40'),(148,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-25 02:09:37'),(149,'Øƒ∫7\“;R\ÕD\‚\Œ!•¿≈â\"ù¨-¡Rc=N\◊JK™','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-25 03:36:19'),(150,'Øƒ∫7\“;R\ÕD\‚\Œ!•¿≈â\"ù¨-¡Rc=N\◊JK™','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-25 03:37:09'),(151,'Øƒ∫7\“;R\ÕD\‚\Œ!•¿≈â\"ù¨-¡Rc=N\◊JK™','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-25 03:38:13'),(152,'Øƒ∫7\“;R\ÕD\‚\Œ!•¿≈â\"ù¨-¡Rc=N\◊JK™','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-25 03:39:13'),(153,'Øƒ∫7\“;R\ÕD\‚\Œ!•¿≈â\"ù¨-¡Rc=N\◊JK™','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-25 03:40:44'),(154,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-25 20:58:41'),(155,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-25 22:08:36'),(156,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-25 23:21:27'),(157,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-26 01:24:22'),(158,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-26 01:29:53'),(159,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-26 01:50:42'),(160,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-26 02:07:17'),(161,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-29 22:12:01'),(162,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-30 01:07:01'),(163,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-30 02:40:52'),(164,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-30 03:29:47'),(165,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-30 21:43:15'),(166,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-31 02:54:48'),(167,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-31 03:56:26'),(168,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-01-31 20:27:01'),(169,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-02-01 00:02:25'),(170,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-02-01 00:39:28'),(171,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-02-01 21:36:55'),(172,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-02-02 00:41:20'),(173,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-02-02 01:18:59'),(174,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-02-07 01:07:43'),(175,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏:˚Øy\Ì!Ü\Ï¢˝∫\Î','Û1≥˚>≠ë˝NÚ\‰N','N','114.23.241.67','2018-02-08 01:30:08'),(176,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-02-08 01:30:36'),(177,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-02-11 21:50:11'),(178,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-02-13 01:05:27'),(179,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-02-13 22:18:49'),(180,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-02-15 03:13:52'),(181,']\ŸF\÷@)\÷.\’	?ì\Ô\Õ¯∏\Ã~Ω®Dûnûì˘M≤5k','´)˚\Ó\ \Ì~\\ºÖu:ù\ ','Y','114.23.241.67','2018-02-15 20:20:58');
/*!40000 ALTER TABLE `cms_login_attempt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_settings`
--

DROP TABLE IF EXISTS `cms_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_settings` (
  `cmsset_id` int(11) NOT NULL AUTO_INCREMENT,
  `cmsset_name` varchar(100) NOT NULL,
  `cmsset_label` varchar(50) NOT NULL,
  `cmsset_explanation` varchar(255) NOT NULL,
  `cmsset_status` char(1) NOT NULL DEFAULT 'I',
  `cmsset_value` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsset_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_settings`
--

LOCK TABLES `cms_settings` WRITE;
/*!40000 ALTER TABLE `cms_settings` DISABLE KEYS */;
INSERT INTO `cms_settings` VALUES (10,'pages_maximum','Page Limit','','I','12'),(2,'pages_generations','Page Generation Limit','The number of levels of children pages that are allowed to be made.','A','5');
/*!40000 ALTER TABLE `cms_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users`
--

DROP TABLE IF EXISTS `cms_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key for user',
  `user_fname` varchar(45) DEFAULT NULL COMMENT 'User''s firstname',
  `user_lname` varchar(45) DEFAULT NULL COMMENT 'User''s lastname',
  `user_pass` varchar(255) DEFAULT NULL COMMENT 'User''s password (recommended as being sha256)',
  `user_email` varchar(100) DEFAULT NULL COMMENT 'User''s email address',
  `user_photo_path` varchar(255) DEFAULT NULL,
  `user_thumb_path` varchar(255) DEFAULT NULL,
  `user_introduction` mediumtext,
  `social_links` mediumtext,
  `last_login_date` datetime DEFAULT NULL,
  `access_id` int(11) DEFAULT '1' COMMENT 'User''s rights - whether they are admin, banned, general user etc. This is totally customisable and is up to the programmer.',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users`
--

LOCK TABLES `cms_users` WRITE;
/*!40000 ALTER TABLE `cms_users` DISABLE KEYS */;
INSERT INTO `cms_users` VALUES (3,NULL,NULL,'9bc129f7a46381be15f1329c4479e02c70d10d19','support@tomahawk.co.nz',NULL,NULL,NULL,NULL,'2018-02-15 20:20:58',1),(5,'kirsten','','46565ada28fc7c60635cad36d51886da1e3c6559','kirsten@tomahawk.co.nz',NULL,NULL,NULL,NULL,'2018-01-03 22:40:14',1),(7,'mike','z','7c4a8d09ca3762af61e59520943dc26494f8941b','michael@tomahawk.co.nz',NULL,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `cms_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color_palette_hex`
--

DROP TABLE IF EXISTS `color_palette_hex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `color_palette_hex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `primary_color` varchar(50) COLLATE utf8_unicode_ci DEFAULT '0',
  `secondary_color` varchar(50) COLLATE utf8_unicode_ci DEFAULT '0',
  `color1` varchar(50) COLLATE utf8_unicode_ci DEFAULT '0',
  `color2` varchar(50) COLLATE utf8_unicode_ci DEFAULT '0',
  `color3` varchar(50) COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color_palette_hex`
--

LOCK TABLES `color_palette_hex` WRITE;
/*!40000 ALTER TABLE `color_palette_hex` DISABLE KEYS */;
INSERT INTO `color_palette_hex` VALUES (1,'#008ed3','#45484F','#015e8d','#EAEBEC','#FCFCFC'),(2,'#ef9633','#45484F','#ce7f1b','#EAEBEC','#FCFCFC'),(3,'#ac0e0d','#80878D','#730b0b','#D5D5D5','#F4F4F4');
/*!40000 ALTER TABLE `color_palette_hex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color_palettes`
--

DROP TABLE IF EXISTS `color_palettes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `color_palettes` (
  `color_palette_id` smallint(5) unsigned NOT NULL,
  `color_palette_name` varchar(100) NOT NULL,
  `color_palette_path` varchar(255) NOT NULL,
  `color_palette_cms_preview_thumb_path` varchar(255) NOT NULL,
  `color_palette_ref` varchar(100) NOT NULL,
  PRIMARY KEY (`color_palette_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color_palettes`
--

LOCK TABLES `color_palettes` WRITE;
/*!40000 ALTER TABLE `color_palettes` DISABLE KEYS */;
INSERT INTO `color_palettes` VALUES (1,'palette1','/themes/palette1/assets/css/main.css','/images/color-palette-previews/palette1.jpg','palette1'),(2,'palette2','/themes/palette2/assets/css/main.css','/images/color-palette-previews/palette2.jpg','palette2'),(3,'palette3','/themes/palette3/assets/css/main.css','/images/color-palette-previews/palette3.jpg','palette3');
/*!40000 ALTER TABLE `color_palettes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compendium_section`
--

DROP TABLE IF EXISTS `compendium_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compendium_section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `icon` varchar(50) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `status` enum('A','H','D') NOT NULL DEFAULT 'H',
  `rank` int(11) NOT NULL,
  `is_generic` enum('0','1') NOT NULL DEFAULT '0',
  `has_dark_bg` enum('0','1') NOT NULL DEFAULT '0',
  `is_map` enum('0','1') NOT NULL DEFAULT '0',
  `default_content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compendium_section`
--

LOCK TABLES `compendium_section` WRITE;
/*!40000 ALTER TABLE `compendium_section` DISABLE KEYS */;
INSERT INTO `compendium_section` VALUES (1,'fa fa-info-circle','Welcome','A',1,'1','1','','<p>Flag: Generic</p>\r\n\r\n<p>- Welcome -</p>'),(2,'fa fa-clock-o','Arrival Information','A',2,'','1','','<p>Flag: Accommodation</p>\r\n\r\n<p>- Arrival Information -</p>'),(3,'fa fa-check','Departure Checklist','A',3,'','1','',''),(4,'fa fa-home','House Information','A',4,'','0','0',''),(8,'fa fa-ship','About Waiheke','A',6,'1','','','<p><strong>About Waiheke </strong></p>\r\n\r\n<p>Waiheke Island is known internationally as one of the most beautiful islands in the world. Just 35 minutes from downtown Auckland, Waiheke is often referred to as the Jewel in the Hauraki Gulf, and is an island of unique landscapes from beaches to rolling vineyards, diverse people from around the world, and an ever expanding selection of great wine and good food.&nbsp;</p>\r\n\r\n<p><strong>Beaches</strong><br />\r\nThere are five glorious white sand beaches on the north side of the island to choose from &ndash; Oneroa, Little Oneroa, Sandy Bay, Palm Beach and Onetangi Beach.&nbsp;</p>\r\n\r\n<p>The southern side beaches include Surfdale, Blackpool and Rocky Bay, and the Eastern side of the island is the shell covered beach at Whakanewha Regional Park &ndash; the perfect spot for a kayak and also where the camping ground is located.</p>\r\n\r\n<p>Man O&rsquo;War Bay at the &ldquo;bottom end&rdquo; is also well worth a visit (if you have a car) for some wine tasting at the renowned Man O&rsquo; War Vineyards tasting room right on the beach.</p>\r\n\r\n<p><strong>Geography</strong><br />\r\nThe island is 19.3 km long from west to east and varies in width from half a kilomter to 10 kilometers, and has a surface area of 92 km&sup2;. The coastline is 133.5 km, including 40 km of beaches. It is very hilly with few flat areas, the highest point being Maunganui at 231 metres. The climate is slightly warmer than Auckland with less humidity and rain and more sunshine hours.</p>\r\n\r\n<p>Townships<br />\r\n√¢‚Äî¬è&nbsp;&nbsp; &nbsp;Oneroa<br />\r\n√¢‚Äî¬è&nbsp;&nbsp; &nbsp;Surfdale<br />\r\n√¢‚Äî¬è&nbsp;&nbsp; &nbsp;Onetangi<br />\r\n√¢‚Äî¬è&nbsp;&nbsp; &nbsp;Rocky Bay</p>\r\n\r\n<p><strong>History</strong><br />\r\nVisit the Stony Batter WWII fortifications, which were built to keep the Japanese forces out. Open to the public they offer both an insight to the extent of defence preparations and wonderful views of the southern end of the Hauraki Gulf. Waiheke was discovered and settled by Maori approximately 1000 years ago and many signs of Maori occupation on Waiheke Island still exist today. Archaeological sites are scattered over the island including more than forty pa sites, cooking pits and terraced areas.</p>\r\n\r\n<p><strong>Viticulture</strong><br />\r\nWinegrowers have successfully matched the unique maritime climate and ancient soil structures to the selection of classical grape varieties in order to produce red and white wines with distinctive varietal character. There are over 20 wineries on the island, and during the summer months most have their cellar doors open to the public. You can visit most wineries via an organised tour, self-drive tour or hop on a many of the local buses.</p>\r\n\r\n<p><strong>Walks or Hiking</strong><br />\r\nOver 8 marked walks ranging in difficulty cross Waiheke with routes suitable for the very fit as well as easier routes for those just out for a stroll. Walkway maps can be found at the i-Site information center in Oneroa.</p>\r\n\r\n<p><strong>Birdlife on the island</strong><br />\r\nThere is a successful dotterel breeding programme, oystercatchers (torea-pango), white-faced heron (matukumoana), pied stilts (poaka), Caspian terns (Taranui), paradise ducks (putangitangi) are all found around the island Godwits (kuaka) are also sometimes spotted on the tidal flats while on the south side of the island where a large wetland is home to bittern (matuku), banded rail (mohopereru) and spotless crake (puweto).</p>\r\n\r\n<p><strong>Native bush</strong><br />\r\nWaiheke Island carefully guards it&rsquo;s status as a possum free island. The absence of these pests means forests and wildlife are allowed to thrive.</p>\r\n\r\n<p><strong>Visiting New Zealand</strong><br />\r\nIf it&rsquo;s your first time in New Zealand be sure to check out the 100% Pure New Zealand page for facts about travelling in New Zealand.</p>'),(9,'fa fa-list','Waiheke Services','A',7,'1','','','<p><strong>Waiheke Services </strong></p>\r\n\r\n<p><strong>Art galleries</strong></p>\r\n\r\n<p>Waiheke Community Art Gallery<br />\r\n2 Korora Road, Oneroa<br />\r\n93729907</p>\r\n\r\n<p>Toi Gallery<br />\r\n145 Ocean View Road, Oneroa<br />\r\n027 7732975</p>\r\n\r\n<p>Red Shed<br />\r\nMiro Road, Palm Beach<br />\r\n09 3729367</p>\r\n\r\n<p>Banks/ATMs</p>\r\n\r\n<p>ANZ<br />\r\n112 Ocean View Road, Oneroa</p>\r\n\r\n<p>ASB<br />\r\n120 Ocean View Road, Oneroa</p>\r\n\r\n<p>BNZ<br />\r\nOcean View Road, Oneroa</p>\r\n\r\n<p>Kiwibank<br />\r\nOcean View Road, Oneroa</p>\r\n\r\n<p>BBQs (public)</p>\r\n\r\n<p>There are free public BBQs located at beaches around the island.<br />\r\nLittle Oneroa, Palm Beach, Onetangi, Man O War Bay, Whakanewha Regional Park</p>\r\n\r\n<p>Cinema/Theatre</p>\r\n\r\n<p>Artworks Community Theatre<br />\r\n127 Ocean View Road, Oneroa<br />\r\n09 3722941</p>\r\n\r\n<p>Waiheke Island Cinema<br />\r\n2 Korora Road, Oneroa<br />\r\n09 3724240</p>\r\n\r\n<p>Dentists</p>\r\n\r\n<p>Oneroa Dental Surgery<br />\r\n9/118 Ocean View Road, Oneroa<br />\r\n09 3726849</p>\r\n\r\n<p>Waiheke Dental Centre<br />\r\n2 Putiki Road, Ostend<br />\r\n09 3727422</p>\r\n\r\n<p>DIY/Garden Centre</p>\r\n\r\n<p>Placemakers<br />\r\n102 Ostend Road, Ostend<br />\r\n09 3720060</p>\r\n\r\n<p>Dry cleaning</p>\r\n\r\n<p>Sparkle<br />\r\nBelgium Street, Ostend<br />\r\n09 3728969</p>\r\n\r\n<p>DVD hire</p>\r\n\r\n<p>Video Ezy<br />\r\nOcean View Road, Oneroa<br />\r\n09 3728192</p>\r\n\r\n<p>Emergency services</p>\r\n\r\n<p>Police/Fire/Ambulance<br />\r\n111</p>\r\n\r\n<p>Waiheke Police Station<br />\r\n104 Ocean View Road<br />\r\n09 3721150</p>\r\n\r\n<p>Facsimile service</p>\r\n\r\n<p>Take Note<br />\r\nOcean View Road, Oneroa<br />\r\n09 3727174</p>\r\n\r\n<p>Ferries</p>\r\n\r\n<p>Fullers<br />\r\nMatiatia Ferry Terminal, Ocean View Road, Oneroa<br />\r\n09 3679111</p>\r\n\r\n<p>Sealink<br />\r\nKennedy Point Terminal,Donald Bruce Rd,Surfdale<br />\r\n09 3005900</p>\r\n\r\n<p>Library</p>\r\n\r\n<p>Auckland City Libraries, Waiheke<br />\r\n2 Korora Road, Oneroa<br />\r\n09 3741325</p>\r\n\r\n<p>Market</p>\r\n\r\n<p>Ostend arts, craft and food market is held every Saturday morning 8am 12.30pm</p>\r\n\r\n<p>War Memorial Hall and grounds, Belgium Street, Ostend</p>\r\n\r\n<p>Medical Centres</p>\r\n\r\n<p>Oneroa Accident and Medical Centre<br />\r\n132 Ocean View Road, Oneroa<br />\r\n09 3728756</p>\r\n\r\n<p>Ostend Medical Centre<br />\r\n9 Belgium Street, Ostend<br />\r\n09 3725005</p>'),(10,'fa fa-star','Complimentary Booking Service','A',8,'1','','','<p><strong>Stay Waiheke Complimentary Booking Service</strong></p>\r\n\r\n<p>Stay Waiheke is pleased to be able to offer a complimentary booking service for a wide range of activities and services on offer including;</p>\r\n\r\n<p>√¢‚Äî¬è&nbsp;&nbsp; &nbsp;Beauty services<br />\r\n√¢‚Äî¬è&nbsp;&nbsp; &nbsp;Car/scooter/bike rental<br />\r\n√¢‚Äî¬è&nbsp;&nbsp; &nbsp;Catering<br />\r\n√¢‚Äî¬è&nbsp;&nbsp; &nbsp;Heli-tours<br />\r\n√¢‚Äî¬è&nbsp;&nbsp; &nbsp;Mobile massage services<br />\r\n√¢‚Äî¬è&nbsp;&nbsp; &nbsp;Nanny service/ baby equipment hire<br />\r\n√¢‚Äî¬è&nbsp;&nbsp; &nbsp;Sightseeing tours<br />\r\n√¢‚Äî¬è&nbsp;&nbsp; &nbsp;Wine-tasting</p>\r\n\r\n<p>For more information about the activities and services we can organise on your behalf please check out our website <a href=\"http://www.staywaiheke.com\">www.staywaiheke.com</a> or give us a call 09 3725402 or 021 563 271.</p>'),(11,'fa fa-file-text-o','Terms & Conditions','A',9,'1','','','<p><strong>Terms &amp; Conditions </strong></p>\r\n\r\n<p><strong>Booking Terms:</strong></p>\r\n\r\n<p>Check-In<br />\r\n1.&nbsp;&nbsp; &nbsp;Check in time is from 2pm. There is no guaranteed check in before 2pm.</p>\r\n\r\n<p>Check-Out<br />\r\n1.&nbsp;&nbsp; &nbsp;Check out time is 10.30 or by prior arrangement. &nbsp;The property must be completely vacated by check out time. Failure to comply will incur surcharge.</p>\r\n\r\n<p>Occupancy<br />\r\n1.&nbsp;&nbsp; &nbsp;All properties are let on the understanding that the accommodation is for holiday use only, for the period specified and that no right to remain in the accommodation exists for the applicants or anyone in the applicant&rsquo;s party beyond the specified date and time.<br />\r\n2.&nbsp;&nbsp; &nbsp;At no time during the period of permitted use may the property be occupied overnight by more than the number of people specified on the booking form.(including children &amp; infants)<br />\r\n3.&nbsp;&nbsp; &nbsp;Guests must not sub-let the property nor use it for the purposes other than a holiday house.<br />\r\n4.&nbsp;&nbsp; &nbsp;No caravans, tents or other accommodation will be placed at the property without written permission.</p>\r\n\r\n<p>Pets<br />\r\n1.&nbsp;&nbsp; &nbsp;The guest agrees not to allow any animals on the property without the written consent of &ldquo;STAY Waiheke&rdquo;.<br />\r\n2.&nbsp;&nbsp; &nbsp;a) When animals are allowed on the property, the guest agrees that pets are not to be left unattended inside or outside the property at any time, guests will remove all pet waste from the property and be fully responsible for any damage caused by the pet.</p>\r\n\r\n<p>No Smoking Policy<br />\r\n1.&nbsp;&nbsp; &nbsp;If smoking is allowed on the property, the guest agrees not to smoke inside the property. A breach of this policy will result in a NZ$500 cleaning fee. If smoking outdoors all cigarette butts must be disposed of.<br />\r\nUse of the Telephone<br />\r\n1.&nbsp;&nbsp; &nbsp;Where a telephone is available, the guest will ensure any calls made are &lsquo;collect&rsquo; or &lsquo;price required&rsquo; for anything outside the local calling area. Any costs incurred will be on charged to the guest.</p>\r\n\r\n<p>Linen<br />\r\n1.&nbsp;&nbsp; &nbsp;Where linen is provided by &lsquo;STAY Waiheke&rsquo; this includes bed sheets, pillow cases, bath towels and face cloths per person, hand towels, tea towels and bath mats. Beach or Spa towels are not provided unless stated on the web page for the property.&nbsp;<br />\r\n2.&nbsp;&nbsp; &nbsp;Some property owners store their own linen in the house. This linen is not intended for guest use. An additional charge is applicable if the guests use owner&rsquo;s linen.</p>\r\n\r\n<p>Quiet Enjoyment and Parties<br />\r\n1.&nbsp;&nbsp; &nbsp;The guest agrees to respect the rights of neighbors in regard to noise. &nbsp;Loud music is not permitted after 11pm. &nbsp;Local council noise regulations apply. &nbsp;Absolutely no house parties or &nbsp;weddings or post wedding BBQ&rsquo;s are allowed at the property without advance permission in writing.<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Children<br />\r\n1.&nbsp;&nbsp; &nbsp;The guests accept full responsibility for checking with &ldquo;STAY Waiheke&rdquo; as to whether or not the property is, to the best knowledge of &ldquo;STAY Waiheke&rdquo;, safe for children.</p>\r\n\r\n<p>Property Maintenance<br />\r\n1.&nbsp;&nbsp; &nbsp;Although every effort is made to maintain properties in good order, wear &amp; tear on rental property is unavoidable. &nbsp;Please notify &lsquo;STAY Waiheke&rsquo; as soon as possible if a problem relating to the property exists. Every effort will be made to rectify any problem that exists in a timely manner. &nbsp;Repairs will be made as soon as possible after notification.<br />\r\n2.&nbsp;&nbsp; &nbsp;The Guest is responsible for the safe-keeping of the owner&rsquo;s property and content during the period booked. Neither the owner nor &lsquo;STAY Waiheke&rsquo; is responsible for any stolen or lost items. Be safe and lock doors and windows when you are away and at night as you would at home. &nbsp;Any breakage or damage to content or structure of the building must be reported promptly to &lsquo;STAY Waiheke&rsquo; and the owner will be entitled to recover from the guest the cost of any repair or replacement needed due to guests act or default.<br />\r\n3.&nbsp;&nbsp; &nbsp;The Renter promises that it will:<br />\r\n4.&nbsp;&nbsp; &nbsp; Keep in a clean, liveable condition and in good repair (subject to Reasonable Wear and Tear):<br />\r\n5.&nbsp;&nbsp; &nbsp;(i) The interior of the Accommodation;<br />\r\n6.&nbsp;&nbsp; &nbsp;(ii) The carpets, curtains and all other items of the&nbsp;<br />\r\n7.&nbsp;&nbsp; &nbsp;Accommodation; an<br />\r\n8.&nbsp;&nbsp; &nbsp;(iii) All √Ø¬¨¬Åxtures and √Ø¬¨¬Åttings of the accommodation, including outdoor furniture, kyaks, boats .<br />\r\n9.&nbsp;&nbsp; &nbsp;Clean and keep free from blockages and obstructions all ;baths, sinks, lavatories, cisterns, drains, gutters, pipes, chimneys and the like;<br />\r\n10.&nbsp;&nbsp; &nbsp;16.1 &nbsp;Keep clean the insides of all windows and replace any glass or mirrors which break for any reason.<br />\r\n11.&nbsp;&nbsp; &nbsp;Not damage, change or remove any of the Owner/Property Manager&rsquo;s installations, furniture, √Ø¬¨¬Åxtures and √Ø¬¨¬Åttings;<br />\r\n12.&nbsp;&nbsp; &nbsp;BOND/ SECURITY DEPOSIT: The guest authorises &lsquo;STAY Waiheke&rsquo; to obtain an authorization for the security deposit on his/her credit card and to debit his /her credit card for costs incurred for damage, breakage or cleaning. Where a credit card is not available, the guest agrees to pay a security deposit at the time of final payment if requested to do so.The guest agrees that the liability is not limited to this amount. In the event that there is a problem with the credit card being debited the Renter agrees to immediately pay the amount owing to the Owner/Property Manager in cash, bank cheque or by electronic funds transfer of cleared funds to an account speci√Ø¬¨¬Åed by the Owner/Property Manager.<br />\r\n13.&nbsp;&nbsp; &nbsp;Some Owners/Property Managers require payment of a cash bond in addition to or instead of credit card bond. Typically the cash bond is $500 - $1,500 depending on the nature of the Accommodation, is paid into the Owner/Property Manager&rsquo;s nominated bank account prior to check in and is repaid within 7 working days of the completion of the Holiday Tenancy or upon the √Ø¬¨¬Ånal resolution of a dispute.<br />\r\n14.&nbsp;&nbsp; &nbsp;The property must be left in a clean and tidy state and all furniture returned to the place in which it was found on arrival. &nbsp;Guests are fully responsible for cleaning all crockery, cutlery, general utensils, Oven and BBQ, and disposing of their rubbish in the prescribed way. If they are left dirty you may be charged an min but not limited to excess clean charge of $50. All doors and windows are to be closed and locked before check-out.&nbsp;<br />\r\n15.&nbsp;&nbsp; &nbsp;Neither the owner nor &lsquo;STAY Waiheke&rsquo; shall be liable for any loss or damage to property however caused during your stay.<br />\r\n16.&nbsp;&nbsp; &nbsp;Whenever the Accommodation is left unattended, the Renter will fasten all locks to all doors and windows and activate any burglar alarm, to prevent unauthorised access to the Accommodation. A call out due to lost keys or lockout will attract a non-negotiable minimum fee of $100 plus GST to be deducted from the Renter&rsquo;s credit card. The Renter will not change or install any locks on any doors or windows nor have additional keys made&nbsp;<br />\r\n17.&nbsp;&nbsp; &nbsp;for any locks without the prior written consent of the Owner/Property Manager.</p>\r\n\r\n<p>Booking and Reservation Policy<br />\r\n1.&nbsp;&nbsp; &nbsp;The guest agrees that &lsquo;STAY Waiheke&rsquo; is the booking agent only and any dispute regarding the availability, the standard of the property or chattels will be solely between the guest and the owner of the property. The guest agrees that &lsquo;STAY Waiheke&rsquo; may give the guests contact details to the owner of the property if they request so.<br />\r\n2.&nbsp;&nbsp; &nbsp;No property shall be considered booked until &lsquo;STAY Waiheke&rsquo; has confirmed the booking in writing.<br />\r\n3.&nbsp;&nbsp; &nbsp;A 50% deposit of the total accommodation charge is payable within 48 hours of booking with the balance payable 14 days prior to the date of arrival. &nbsp;If booking falls between 15 December and 15 January, balance of payment is due 21 days prior to the date of arrival. &nbsp;The guests authorise STAY Waiheke to charge full payment due 10 days prior to arrival if no payment is made prior.<br />\r\n4.&nbsp;&nbsp; &nbsp;Some Owner/Property Managers require the Renter to agree to further terms and conditions speci√Ø¬¨¬Åc to its accommodation at the time of booking. If the Renter does not wish to be bound by an Owner/Property Manager&rsquo;s additional terms and conditions for any reason, then the Renter can cancel the booking and STAY Waiheke will refund the Renter in full subject to STAY Waiheke receiving notice in writing from the Renter within 5 working days&nbsp;<br />\r\n5.&nbsp;&nbsp; &nbsp;of the completion of the online booking process.<br />\r\n6.&nbsp;&nbsp; &nbsp;Dishonored payments of balances not received 7 days before the start of the let will result in the booking being canceled and deposit forfeited.</p>\r\n\r\n<p>Cancellation Policy<br />\r\n1.&nbsp;&nbsp; &nbsp;Cancellation of a booking by the guests will incur a $50 administration charge. In addition:<br />\r\na.&nbsp;&nbsp; &nbsp;Within 60 days of arrival:50% of the total accommodation costs unless the property can be rebooked.<br />\r\nb.&nbsp;&nbsp; &nbsp;Within 30 days of arrival: 100% of the total accommodation costs unless the property can be rebooked.<br />\r\nc.&nbsp;&nbsp; &nbsp;All booking canceled within 14 days of arrival or non-arrivals:100% of all booking costs.<br />\r\nd.&nbsp;&nbsp; &nbsp;No refunds are given for early departure.<br />\r\n2.&nbsp;&nbsp; &nbsp;The Guest agrees that, should the property become unavailable or un-live able for any reason (the reason to be verified by &lsquo;STAY Waiheke&rsquo; as being justified), then STAY Waiheke&rsquo; will use their best endeavors to find a satisfactory alternative. Should a replacement property not be available all monies paid by the guest to &lsquo;STAY Waiheke will be refunded in full. The guest agrees that the owner and &lsquo;STAY Waiheke&rsquo; liability is limited to the refunding of such monies.<br />\r\n3.&nbsp;&nbsp; &nbsp;&lsquo;STAY Waiheke&rsquo; reserves the right to cancel reservation at any time, in which event the deposit shall be refunded in full.<br />\r\nPrinciple<br />\r\n1.&nbsp;&nbsp; &nbsp;The guest agrees, that should all of these conditions not be adhered to, the owners or their agents will have the right to immediately terminate this contract and the guest and all other persons will vacate the property immediately if requested to do so by the owners or the owners&rsquo; agent. In this event, the guest agrees that no refund will be due or paid for any unused accommodation nights.<br />\r\n2.&nbsp;&nbsp; &nbsp;The Guest agrees that by making a booking, they indicate to accept the booking conditions as set out above.</p>\r\n\r\n<p>INSURANCE AND NO LIABILITY<br />\r\nThe Renter will not do anything that could adversely affect the Owner/Property Manager&rsquo;s insurance over the Accommodation.<br />\r\n1.&nbsp;&nbsp; &nbsp;The personal effects of the Renter will not be insured by the Owner/Property Manager. The Renter acknowledges that all personal items and vehicles (including vehicle contents) of the Renter remain the Renter&rsquo;s responsibility and the Owner/Property Manager accepts no responsibility for loss or damage.<br />\r\n2.&nbsp;&nbsp; &nbsp;In the event that the Renter uses extra facilities at the Accommodation including, but not limited to, kayaks, dinghies, bicycles, trampolines, spas and swimming pools, such use is entirely at the Renter&rsquo;s own risk at all times and the Owner/Property Manager accepts no responsibility for any injury or loss to the Renter. Children are to be supervised at all times by a parent or responsible adult.</p>'),(12,'fa fa-map-marker','Location Map','A',5,'','','1',''),(17,'test','test','D',0,'','','','');
/*!40000 ALTER TABLE `compendium_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_column`
--

DROP TABLE IF EXISTS `content_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_column` (
  `content` mediumtext NOT NULL,
  `css_class` varchar(255) NOT NULL,
  `span` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  `content_row_id` int(11) NOT NULL,
  KEY `content_row_id` (`content_row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_column`
--

LOCK TABLES `content_column` WRITE;
/*!40000 ALTER TABLE `content_column` DISABLE KEYS */;
INSERT INTO `content_column` VALUES ('<p>test<img alt=\"\" src=\"/library/test/chris-stephenson-dunedin.jpg\" /></p>','col-xs-12',0,1,242),('<p><img alt=\"\" src=\"/library/gallery/sauvignon/cds-6457-hdr.jpg\" /></p>','col-xs-12 col-sm-6 col-md-6',0,1,254),('<p>&nbsp;</p>\r\n\r\n<div -=\"\" 6=\"\" a=\"\" add=\"\" all=\"\" and=\"\" are=\"\" at=\"\" be=\"\" browser=\"\" browsers=\"\" but=\"\" can=\"\" changes=\"\" check=\"\" class=\"ViewPage_likesAndLabelsContainer_OB8\" client=\"\" cms=\"\" company=\"\" content=\"\" create=\"\" creating=\"\" data-internal-id=\"likes-and-labels-container\" delete=\"\" details=\"\" div=\"\" do=\"\" droid=\"\" dummy=\"\" excluding=\"\" file=\"\" first=\"\" front-end=\"\" go=\"\" google=\"\" has=\"\" helvetica=\"\" id=\"likes-and-labels-container\" if=\"\" image=\"\" images=\"\" in=\"\" instagram=\"\" is=\"\" least=\"\" links=\"\" log=\"\" mailchimp=\"\" manager=\"\" mobile=\"\" modules=\"\" move=\"\" not=\"\" noto=\"\" ol=\"\" on=\"\" one=\"\" other=\"\" pages=\"\" password=\"\" provided=\"\" quick=\"\" rank=\"\" saving.=\"\" segoe=\"\" settings=\"\" social=\"\" style=\"margin: 10px 0px; padding: 10px 0px; overflow: hidden; clear: both; color: rgb(51, 51, 51); font-family: -apple-system, BlinkMacSystemFont, \" successfully=\"\" test=\"\" them=\"\" then=\"\" thoroughly=\"\" through=\"\" to=\"\" trash=\"\" ul=\"\" uploading=\"\" user=\"\" users=\"\" which=\"\">\r\n<div style=\"margin: 0px; padding: 0px; width: 434.5px; display: inline-block; font-size: 13px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"LikeButton_LikeButton_1Ym\" style=\"margin: 0px; padding: 0px; display: inline;\">ahhahhah</div>\r\n</div>\r\n</div>\r\n</div>','col-xs-12 col-sm-6 col-md-6',0,2,254),('<p><img alt=\"\" src=\"/library/gallery/sauvignon/cds-6457-hdr.jpg\" /></p>','col-xs-12 col-sm-6 col-md-3',0,1,255),('<p><img alt=\"\" src=\"/library/gallery/sauvignon/cds-6478-hdr.jpg\" /></p>','col-xs-12 col-sm-6 col-md-3',0,2,255),('<p><img alt=\"\" src=\"/library/gallery/sauvignon/cds-6485-hdr.jpg\" /></p>','col-xs-12 col-sm-6 col-md-3',0,3,255),('<p>Check us out</p>','col-xs-12 col-sm-6 col-md-3',0,4,255),('<p><img alt=\"\" src=\"/library/bed-in-a-hotel-room-at-night_rwhe0yx_nge.jpg\" /></p>','col-xs-12 col-sm-6 col-md-3',0,1,256),('<p>Column 2</p>','col-xs-12 col-sm-6 col-md-3',0,2,256),('<p>Column 3</p>','col-xs-12 col-sm-6 col-md-3',0,3,256),('<p>Column 4</p>','col-xs-12 col-sm-6 col-md-3',0,4,256),('<p><strong>Island Escape Resort</strong></p>\r\n\r\n<p><strong>1 Island View Road<br />\r\nVaitape<br />\r\nBora Bora<br />\r\nFrench Polynesia</strong></p>\r\n\r\n<p><strong>Phone: +1 234 5678<br />\r\nEmail: stay@resbookislandresort.com</strong></p>','col-xs-12',0,1,290),('<p>&nbsp;<img alt=\"\" src=\"/library/man-old-fisherman-portrait-53159.jpg\" style=\"width: 500px; height: 399px;\" />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet a. Quisque quis sagittis libero, a pulvinar justo. Aliquam euismod eleifend nibh id mollis. Sed placerat bibendum faucibus. Sed eu pharetra risus. Vestibulum quis enim quis odio congue iaculis eget sed lacus. Etiam fermentum ullamcorper elit eget porttitor. Donec pretium magna rhoncus ante aliquam tincidunt eu at neque.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>','col-xs-12',0,1,329),('<p style=\"text-align: right;\"><img alt=\"\" src=\"/library/800-3914-126.jpg\" style=\"width: 200px; height: 200px; float: left; margin-left: 20px; margin-right: 20px;\" /></p>\r\n\r\n<p><strong>John Smith</strong></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet a. Quisque quis sagittis libero, a pulvinar justo. Aliquam euismod eleifend nibh id mollis. Sed placerat bibendum faucibus. Sed eu pharetra risus. Vestibulum quis enim quis odio congue iaculis eget sed lacus. Etiam fermentum ullamcorper elit eget porttitor. Donec pretium magna.</p>','col-xs-12 col-sm-6 col-md-6',0,1,330),('<p><img alt=\"\" src=\"/library/dsc-5402-243-345.jpg\" style=\"width: 200px; margin-left: 20px; margin-right: 20px; float: left; height: 200px;\" /></p>\r\n\r\n<p><strong>John Smith</strong></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet a. Quisque quis sagittis libero, a pulvinar justo. Aliquam euismod eleifend nibh id mollis. Sed placerat bibendum faucibus. Sed eu pharetra risus. Vestibulum quis enim quis odio congue iaculis eget sed lacus. Etiam fermentum ullamcorper elit eget porttitor. Donec pretium magna.</p>','col-xs-12 col-sm-6 col-md-6',0,2,330),('<p>Cras ultricies nulla vulputate eros mollis, at elementum elit consectetur. Etiam et sapien vel diam ultrices laoreet at ut nisi. Nullam placerat porta sem, in mollis leo tincidunt ac. Cras arcu risus, placerat pretium est eget, pellentesque tincidunt turpis. Donec eleifend massa ipsum, eu imperdiet est efficitur a. Suspendisse consectetur nunc id molestie molestie. Suspendisse a accumsan ligula, non consectetur mauris. Etiam quis sem eget arcu varius egestas ac aliquam nisi.</p>','col-xs-12 col-sm-6 col-md-6',0,1,333),('<p>Cras ultricies nulla vulputate eros mollis, at elementum elit consectetur. Etiam et sapien vel diam ultrices laoreet at ut nisi. Nullam placerat porta sem, in mollis leo tincidunt ac. Cras arcu risus, placerat pretium est eget, pellentesque tincidunt turpis. Donec eleifend massa ipsum, eu imperdiet est efficitur a. Suspendisse consectetur nunc id molestie molestie. Suspendisse a accumsan ligula, non consectetur mauris. Etiam quis sem eget arcu varius egestas ac aliquam nisi.</p>','col-xs-12 col-sm-6 col-md-6',0,2,333),('<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet a. Quisque quis sagittis libero, a pulvinar justo. Aliquam euismod eleifend nibh id mollis. Sed placerat bibendum faucibus. Sed eu pharetra risus. Vestibulum quis enim quis odio congue iaculis eget sed lacus. Etiam fermentum ullamcorper elit eget porttitor. Donec pretium magna rhoncus ante aliquam tincidunt eu at neque.&nbsp;</p>','col-xs-12 col-sm-6 col-md-6',0,1,336),('<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet a. Quisque quis sagittis libero, a pulvinar justo. Aliquam euismod eleifend nibh id mollis. Sed placerat bibendum faucibus. Sed eu pharetra risus. Vestibulum quis enim quis odio congue iaculis eget sed lacus. Etiam fermentum ullamcorper elit eget porttitor. Donec pretium magna rhoncus ante aliquam tincidunt eu at neque.&nbsp;</p>','col-xs-12 col-sm-6 col-md-6',0,2,336),('<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus hendrerit. Pellentesque aliquet nibh nec urna. In nisi neque, aliquet vel, dapibus id, mattis vel, nisi. Sed pretium, ligula sollicitudin laoreet viverra, tortor libero sodales leo, eget blandit nunc tortor eu nibh. Nullam mollis. Ut justo. Suspendisse potenti.</p>\r\n\r\n<p>Sed egestas, ante et vulputate volutpat, eros pede semper est, vitae luctus metus libero eu augue. Morbi purus libero, faucibus adipiscing, commodo quis, gravida id, est. Sed lectus. Praesent elementum hendrerit tortor. Sed semper lorem at felis. Vestibulum volutpat, lacus a ultrices sagittis, mi neque euismod dui, eu pulvinar nunc sapien ornare nisl. Phasellus pede arcu, dapibus eu, fermentum et, dapibus sed, urna.</p>\r\n\r\n<p>&nbsp;</p>','col-xs-12',0,1,337),('<ul style=\"margin-left: 120px;\">\r\n	<li style=\"margin-left: 80px;\">Lorem ipsum dolor sit .amet</li>\r\n	<li style=\"margin-left: 80px;\">Consectetur adipiscing elit.‚Äã</li>\r\n	<li style=\"margin-left: 80px;\">Sed mollis dapibus arcu, nec consectetur urna imperdiet a.</li>\r\n</ul>','col-xs-12 col-sm-6 col-md-6',0,1,338),('<ul style=\"margin-left: 120px;\">\r\n	<li>Lorem ipsum dolor sit .amet</li>\r\n	<li>Consectetur adipiscing elit.‚Äã</li>\r\n	<li>Sed mollis dapibus arcu, nec consectetur urna imperdiet a.</li>\r\n</ul>','col-xs-12 col-sm-6 col-md-6',0,2,338),('<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet a. Quisque quis sagittis libero, a pulvinar justo. Aliquam euismod eleifend nibh id mollis. Sed placerat bibendum faucibus. Sed eu pharetra risus. Vestibulum quis enim quis odio congue iaculis eget sed lacus. Etiam fermentum ullamcorper elit eget porttitor. Donec pretium magna rhoncus ante aliquam tincidunt eu at neque.&nbsp;</p>','col-xs-12 col-sm-6 col-md-6',0,1,343),('<p>Cras ultricies nulla vulputate eros mollis, at elementum elit consectetur. Etiam et sapien vel diam ultrices laoreet at ut nisi. Nullam placerat porta sem, in mollis leo tincidunt ac. Cras arcu risus, placerat pretium est eget, pellentesque tincidunt turpis. Donec eleifend massa ipsum, eu imperdiet est efficitur a. Suspendisse consectetur nunc id molestie molestie. Suspendisse a accumsan ligula, non consectetur mauris. Etiam quis sem eget arcu varius egestas ac aliquam nisi.</p>','col-xs-12 col-sm-6 col-md-6',0,2,343);
/*!40000 ALTER TABLE `content_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_row`
--

DROP TABLE IF EXISTS `content_row`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_row` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) NOT NULL,
  `page_meta_data_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `page_meta_data_id` (`page_meta_data_id`)
) ENGINE=InnoDB AUTO_INCREMENT=344 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_row`
--

LOCK TABLES `content_row` WRITE;
/*!40000 ALTER TABLE `content_row` DISABLE KEYS */;
INSERT INTO `content_row` VALUES (242,1,26),(254,1,25),(255,2,25),(256,3,25),(290,1,8),(329,1,5),(330,2,5),(331,1,2),(332,2,2),(333,3,2),(334,1,4),(335,2,4),(336,3,4),(337,1,22),(338,2,22),(340,1,13),(341,2,13),(343,1,1);
/*!40000 ALTER TABLE `content_row` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enquiry`
--

DROP TABLE IF EXISTS `enquiry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `contact_number` varchar(100) DEFAULT NULL,
  `comments` mediumtext,
  `status` enum('A','H','D') NOT NULL DEFAULT 'H',
  `date_of_enquiry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enquiry`
--

LOCK TABLES `enquiry` WRITE;
/*!40000 ALTER TABLE `enquiry` DISABLE KEYS */;
INSERT INTO `enquiry` VALUES (1,'Test','Test','test@test.com','123','test','D','2017-06-29 22:54:13','114.23.241.67'),(2,'Test','Test','test@test.com','','test','D','2017-06-30 00:56:32','114.23.241.67'),(3,'test','tezt','test@gmail.com','1234','Test','D','2017-07-24 03:30:38','114.23.241.67'),(4,'Sarah','Eichmann','saraheichmann@yahoo.com','8474710604','Hello,\r\nMy husband and I are planning a trip to New Zealand April of 2018.  I have most of our trip planned, but am trying to decide the best way to maximize our time in the Nelson area.   We are very interested in doing a day long wine/biking tour and a full day sail/kayak to Abel Tasman.  I was hoping you could tell me if your place is conveniently located to do both of those activities.  Also, is there something else in the area that we really shouldn\'t miss?  We will be there April 1st, so I\'m not positive how the weather would affect our plans.  We would probably arrive the evening of April 1st, and stay 4 nights.  So we would have one additional day to plan something.  Any advise would be greatly appreciated.  I also want to confirm that those dates would be available for us to stay.\r\nthank you very much,\r\nSarah','D','2017-09-10 01:08:17','162.158.214.13'),(5,'Martin','Jones','martin@tomahawk.co.nz','09 12356','test','A','2017-11-16 01:54:46','114.23.241.67'),(6,'kirsten','whittington','kirsten@tomahawk.co.nz','','','A','2018-01-03 20:08:20','114.23.241.67'),(7,'Kirsten','What','kirsten@tomshwk.co.cz','','','A','2018-01-03 20:48:19','114.23.241.67'),(8,'hrha','ahaah','kirsten@tomahawk.co.nz','','','A','2018-01-03 21:36:30','114.23.241.67'),(9,'kirsten','Whittington','kirsten@tomahawk.co.nz','','','A','2018-01-03 21:44:00','114.23.241.67'),(10,'mike','z','michael@tomahawk.co.nz','90123990','ojikhjafo','A','2018-01-04 02:10:42','114.23.241.67'),(11,'qwe','qwe','qwe@qw.com','123','qwe','A','2018-01-04 02:19:05','114.23.241.67'),(12,'kirsten','Whittington','kirsten@tomahawk.co.nz','','Please ignore','A','2018-01-09 08:46:02','114.23.241.67');
/*!40000 ALTER TABLE `enquiry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form`
--

DROP TABLE IF EXISTS `form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `public_token` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email_subject` varchar(255) DEFAULT NULL,
  `success_message` text,
  `mailchimp_list_id` varchar(255) NOT NULL,
  `terms_and_conditions` text,
  `xml_data` longtext,
  `json_data` text CHARACTER SET utf8 NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `date_deleted` datetime DEFAULT NULL,
  `status` enum('A','H','D') NOT NULL DEFAULT 'H',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form`
--

LOCK TABLES `form` WRITE;
/*!40000 ALTER TABLE `form` DISABLE KEYS */;
INSERT INTO `form` VALUES (3,'e75e1fe2fa','Form 1','Aenean non imperdiet erat, at iaculis tellus','Proin eget accumsan odio, nec consequat eros. Quisque ultrices hendrerit dui. Pellentesque sed mi at augue accumsan mattis. Curabitur ac neque ligula. Duis consectetur lorem a lorem tincidunt pharetra. Etiam a pretium augue, dignissim volutpat justo. Phasellus vel scelerisque odio, et eleifend massa.','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ornare interdum mauris, id cursus leo cursus eget. Morbi elementum ipsum at lectus suscipit sagittis. Donec aliquam eu metus a maximus. Donec euismod vel justo quis iaculis. Phasellus a pharetra sem. Curabitur blandit mollis dolor nec egestas. Ut ac urna ac nunc consequat commodo nec eu urna. Ut faucibus velit nec orci feugiat, in pharetra ipsum tempor. Vivamus eget venenatis diam. Sed ullamcorper sapien sit amet consequat convallis. Cras lacus lorem, posuere id nisl sed, molestie facilisis odio.</p>\r\n\r\n<p>Proin eget accumsan odio, nec consequat eros. Quisque ultrices hendrerit dui. Pellentesque sed mi at augue accumsan mattis. Curabitur ac neque ligula. Duis consectetur lorem a lorem tincidunt pharetra. Etiam a pretium augue, dignissim volutpat justo. Phasellus vel scelerisque odio, et eleifend massa.</p>\r\n\r\n<p>Etiam ac purus porta erat euismod volutpat. Etiam fringilla sem in mi lobortis mollis. Vivamus mi augue, tristique at tempus eu, facilisis eleifend odio. Vestibulum aliquet, nunc id dapibus auctor, enim neque imperdiet magna, ac mollis justo odio id enim. Vivamus nec dolor lobortis, lacinia massa ut, blandit lorem. Ut nec tristique lectus. Vivamus eget maximus justo, sed interdum lectus. Vestibulum faucibus felis nec ipsum rutrum malesuada. Nullam a lectus at lorem mattis pharetra. Maecenas blandit finibus mauris, sed pretium augue eleifend sed. Fusce tempus sagittis justo, vel malesuada magna.</p>','<form-template>\n	<fields>\n		<field type=\"text\" required=\"true\" label=\"First Name\" description=\"Your first name\" class=\"form-control\" name=\"first-name\" subtype=\"text\"></field>\n		<field type=\"textarea\" label=\"Text Area\" class=\"form-control\" name=\"textarea-1516846653594\"></field>\n		<field type=\"text\" label=\"Text Field\" class=\"form-control\" name=\"text-1516846267601\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Last Name\" description=\"Your last name\" class=\"form-control\" name=\"last-name\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Email Address\" description=\"Your email address\" class=\"form-control\" name=\"email-address\" subtype=\"text\"></field>\n		<field type=\"header\" subtype=\"h2\" label=\"Additional Information\" class=\"form-heading\"></field>\n		<field type=\"date\" required=\"true\" label=\"Arrival Date\" class=\"form-control\" name=\"date-1516672514853\"></field>\n		<field type=\"date\" required=\"true\" label=\"Departure Date\" class=\"form-control\" name=\"date-1516672543816\"></field>\n		<field type=\"select\" label=\"Select Tour Extra\" class=\"form-control\" name=\"select-1516672557027\">\n			<option label=\"Option 1\" value=\"option-1\" selected=\"true\">Option 1</option>\n			<option label=\"Option 2\" value=\"option-2\">Option 2</option>\n			<option label=\"Option 3\" value=\"option-3\">Option 3</option>\n		</field>\n		<field type=\"checkbox-group\" label=\"Proin eget accumsan odio\" toggle=\"true\" name=\"checkbox-group-1516672812218\">\n			<option label=\"Yes, Proin eget accumsan\" value=\"yes\" selected=\"true\">Yes, Proin eget accumsan</option>\n		</field>\n		<field type=\"textarea\" required=\"true\" label=\"Comments\" class=\"form-control\" name=\"textarea-1516672862845\"></field>\n	</fields>\n</form-template>','[{\"type\":\"text\",\"required\":true,\"label\":\"First Name\",\"description\":\"Your first name\",\"className\":\"form-control\",\"name\":\"first-name\",\"subtype\":\"text\"},{\"type\":\"textarea\",\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1516846653594\"},{\"type\":\"text\",\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1516846267601\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Last Name\",\"description\":\"Your last name\",\"className\":\"form-control\",\"name\":\"last-name\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Email Address\",\"description\":\"Your email address\",\"className\":\"form-control\",\"name\":\"email-address\",\"subtype\":\"text\"},{\"type\":\"header\",\"subtype\":\"h2\",\"label\":\"Additional Information\",\"className\":\"form-heading\"},{\"type\":\"date\",\"required\":true,\"label\":\"Arrival Date\",\"className\":\"form-control\",\"name\":\"date-1516672514853\"},{\"type\":\"date\",\"required\":true,\"label\":\"Departure Date\",\"className\":\"form-control\",\"name\":\"date-1516672543816\"},{\"type\":\"select\",\"label\":\"Select Tour Extra\",\"className\":\"form-control\",\"name\":\"select-1516672557027\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"checkbox-group\",\"label\":\"Proin eget accumsan odio\",\"toggle\":true,\"name\":\"checkbox-group-1516672812218\",\"values\":[{\"label\":\"Yes, Proin eget accumsan\",\"value\":\"yes\",\"selected\":true}]},{\"type\":\"textarea\",\"required\":true,\"label\":\"Comments\",\"className\":\"form-control\",\"name\":\"textarea-1516672862845\"}]','2018-01-23 01:43:32','2018-01-25 02:17:39',NULL,'A'),(4,'b70ce27759','Form 2','Testing Email Subject','Success! Aenean non imperdiet erat, at iaculis tellus','06224f3593','<p>Lorem&nbsp;ipsum&nbsp;dolor sit&nbsp;amet,&nbsp;consectetur&nbsp;adipiscing elit. Maecenas ornare&nbsp;interdum&nbsp;mauris, id&nbsp;cursus&nbsp;leo&nbsp;cursus&nbsp;eget.&nbsp;Morbi&nbsp;elementum&nbsp;ipsum&nbsp;at lectus suscipit sagittis.&nbsp;Donec&nbsp;aliquam&nbsp;eu metus a maximus.&nbsp;Donec&nbsp;euismod vel justo quis iaculis. Phasellus a&nbsp;pharetra&nbsp;sem. Curabitur blandit mollis dolor nec egestas. Ut ac urna ac nunc consequat&nbsp;commodo&nbsp;nec eu urna. Ut&nbsp;faucibus&nbsp;velit&nbsp;nec&nbsp;orci&nbsp;feugiat, in&nbsp;pharetra&nbsp;ipsum&nbsp;tempor. Vivamus&nbsp;eget&nbsp;venenatis diam. Sed&nbsp;ullamcorper&nbsp;sapien&nbsp;sit&nbsp;amet&nbsp;consequat&nbsp;convallis.&nbsp;Cras&nbsp;lacus&nbsp;lorem,&nbsp;posuere&nbsp;id&nbsp;nisl&nbsp;sed,&nbsp;molestie&nbsp;facilisis&nbsp;odio.</p>\r\n\r\n<p>Proin&nbsp;eget&nbsp;accumsan&nbsp;odio, nec consequat&nbsp;eros.&nbsp;Quisque&nbsp;ultrices&nbsp;hendrerit&nbsp;dui.&nbsp;Pellentesque&nbsp;sed&nbsp;mi at&nbsp;augue&nbsp;accumsan&nbsp;mattis. Curabitur ac&nbsp;neque&nbsp;ligula.&nbsp;Duis&nbsp;consectetur&nbsp;lorem&nbsp;a&nbsp;lorem&nbsp;tincidunt&nbsp;pharetra.&nbsp;Etiam&nbsp;a&nbsp;pretium&nbsp;augue,&nbsp;dignissim&nbsp;volutpat&nbsp;justo. Phasellus vel&nbsp;scelerisque&nbsp;odio, et&nbsp;eleifend&nbsp;massa.</p>\r\n\r\n<p>Etiam&nbsp;ac purus&nbsp;porta&nbsp;erat&nbsp;euismod&nbsp;volutpat.&nbsp;Etiam&nbsp;fringilla&nbsp;sem in mi&nbsp;lobortis&nbsp;mollis. Vivamus mi&nbsp;augue,&nbsp;tristique&nbsp;at&nbsp;tempus&nbsp;eu,&nbsp;facilisis&nbsp;eleifend&nbsp;odio.&nbsp;Vestibulum&nbsp;aliquet, nunc id&nbsp;dapibus&nbsp;auctor,&nbsp;enim&nbsp;neque&nbsp;imperdiet&nbsp;magna, ac mollis justo&nbsp;odio&nbsp;id&nbsp;enim. Vivamus nec dolor&nbsp;lobortis,&nbsp;lacinia&nbsp;massa&nbsp;ut, blandit&nbsp;lorem. Ut nec&nbsp;tristique&nbsp;lectus. Vivamus&nbsp;eget&nbsp;maximus justo,&nbsp;sed&nbsp;interdum&nbsp;lectus.&nbsp;Vestibulum&nbsp;faucibus&nbsp;felis&nbsp;nec&nbsp;ipsum&nbsp;rutrum&nbsp;malesuada.&nbsp;Nullam&nbsp;a lectus at&nbsp;lorem&nbsp;mattis&nbsp;pharetra. Maecenas blandit&nbsp;finibus&nbsp;mauris,&nbsp;sed&nbsp;pretium&nbsp;augue&nbsp;eleifend&nbsp;sed.&nbsp;Fusce&nbsp;tempus&nbsp;sagittis justo, vel&nbsp;malesuada&nbsp;magna.</p>','<form-template>\n	<fields>\n		<field type=\"text\" required=\"true\" label=\"First Name\" description=\"Your first name\" class=\"form-control\" name=\"first-name\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Last Name\" description=\"Your last name\" class=\"form-control\" name=\"last-name\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Email Address\" description=\"Your email address\" class=\"form-control\" name=\"email-address\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Text Field\" class=\"form-control\" name=\"text-1516922551600\" subtype=\"text\"></field>\n		<field type=\"textarea\" required=\"true\" label=\"Text Area\" class=\"form-control\" name=\"textarea-1516922557875\"></field>\n		<field type=\"select\" required=\"true\" label=\"Select\" class=\"form-control\" name=\"select-1516922559257\">\n			<option label=\"Option 1\" value=\"option-1\">Option 1</option>\n			<option label=\"Option 2\" value=\"option-2\">Option 2</option>\n			<option label=\"Option 3\" value=\"option-3\">Option 3</option>\n		</field>\n		<field type=\"radio-group\" required=\"true\" label=\"Radio Group\" name=\"radio-group-1516922561017\">\n			<option label=\"Option 1\" value=\"option-1\">Option 1</option>\n			<option label=\"Option 2\" value=\"option-2\">Option 2</option>\n			<option label=\"Option 3\" value=\"option-3\">Option 3</option>\n		</field>\n		<field type=\"checkbox-group\" required=\"true\" label=\"Checkbox Group\" name=\"checkbox-group-1516922565575\">\n			<option label=\"Option 1\" value=\"option-1\">Option 1</option>\n			<option label=\"Option 2\" value=\"Option 2\">Option 2</option>\n			<option label=\"Option 3\" value=\"Option 3\">Option 3</option>\n		</field>\n		<field type=\"checkbox-group\" required=\"true\" label=\"Checkbox Group\" name=\"checkbox-group-1517443373059\">\n			<option label=\"Option 1\" value=\"option-1\" selected=\"true\">Option 1</option>\n		</field>\n		<field type=\"checkbox-group\" required=\"true\" label=\"Checkbox Group\" toggle=\"true\" name=\"checkbox-group-1517274867193\">\n			<option label=\"Option 1\" value=\"option-1\" selected=\"true\">Option 1</option>\n			<option label=\"Option 2\" value=\"Option 2\">Option 2</option>\n		</field>\n		<field type=\"checkbox-group\" required=\"true\" label=\"Checkbox Group\" toggle=\"true\" name=\"checkbox-group-1517443374515\">\n			<option label=\"Option 1\" value=\"option-1\">Option 1</option>\n			<option label=\"Option 2\" value=\"Option 2\">Option 2</option>\n		</field>\n		<field type=\"date\" required=\"true\" label=\"Date Field\" class=\"form-control\" name=\"date-1516922567787\"></field>\n		<field type=\"header\" subtype=\"h2\" label=\"Header\"></field>\n	</fields>\n</form-template>','[{\"type\":\"text\",\"required\":true,\"label\":\"First Name\",\"description\":\"Your first name\",\"className\":\"form-control\",\"name\":\"first-name\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Last Name\",\"description\":\"Your last name\",\"className\":\"form-control\",\"name\":\"last-name\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Email Address\",\"description\":\"Your email address\",\"className\":\"form-control\",\"name\":\"email-address\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1516922551600\",\"subtype\":\"text\"},{\"type\":\"textarea\",\"required\":true,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1516922557875\"},{\"type\":\"select\",\"required\":true,\"label\":\"Select\",\"className\":\"form-control\",\"name\":\"select-1516922559257\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"radio-group\",\"required\":true,\"label\":\"Radio Group\",\"name\":\"radio-group-1516922561017\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"checkbox-group\",\"required\":true,\"label\":\"Checkbox Group\",\"name\":\"checkbox-group-1516922565575\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"Option 2\"},{\"label\":\"Option 3\",\"value\":\"Option 3\"}]},{\"type\":\"checkbox-group\",\"required\":true,\"label\":\"Checkbox Group\",\"name\":\"checkbox-group-1517443373059\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true}]},{\"type\":\"checkbox-group\",\"required\":true,\"label\":\"Checkbox Group\",\"toggle\":true,\"name\":\"checkbox-group-1517274867193\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true},{\"label\":\"Option 2\",\"value\":\"Option 2\"}]},{\"type\":\"checkbox-group\",\"required\":true,\"label\":\"Checkbox Group\",\"toggle\":true,\"name\":\"checkbox-group-1517443374515\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"Option 2\"}]},{\"type\":\"date\",\"required\":true,\"label\":\"Date Field\",\"className\":\"form-control\",\"name\":\"date-1516922567787\"},{\"type\":\"header\",\"subtype\":\"h2\",\"label\":\"Header\"}]','2018-01-25 23:21:51','2018-02-01 00:04:09',NULL,'A'),(5,'d17c3db433','Form 3','','','','','<form-template>\n	<fields>\n		<field class=\"form-control\" type=\"text\" required=\"true\" name=\"first-name\" description=\"Your first name\" subtype=\"text\" label=\"First Name\"></field>\n		<field class=\"form-control\" type=\"text\" required=\"true\" name=\"text-1516930180249\" description=\"Your first name\" subtype=\"text\" label=\"First Name\"></field>\n		<field class=\"form-control\" type=\"text\" required=\"true\" name=\"last-name\" description=\"Your last name\" subtype=\"text\" label=\"Last Name\"></field>\n		<field class=\"form-control\" type=\"text\" required=\"true\" name=\"text-1516930181816\" description=\"Your last name\" subtype=\"text\" label=\"Last Name\"></field>\n		<field class=\"form-control\" type=\"text\" required=\"true\" name=\"email-address\" description=\"Your email address\" subtype=\"text\" label=\"Email Address\"></field>\n		<field class=\"form-control\" type=\"text\" required=\"true\" name=\"text-1516930183056\" description=\"Your email address\" subtype=\"text\" label=\"Email Address\"></field>\n		<field class=\"form-control\" type=\"text\" required=\"true\" name=\"text-1516929867347\" subtype=\"text\" label=\"Text Field\"></field>\n		<field class=\"form-control\" type=\"text\" required=\"true\" name=\"text-1516930184912\" subtype=\"text\" label=\"Text Field\"></field>\n		<field class=\"form-control\" type=\"textarea\" required=\"true\" name=\"textarea-1516929868409\" label=\"Text Area\"></field>\n		<field class=\"form-control\" type=\"textarea\" required=\"true\" name=\"textarea-1516930186689\" label=\"Text Area\"></field>\n		<field class=\"form-control\" type=\"select\" required=\"true\" name=\"select-1516929869609\" label=\"Select\">\n			<option selected=\"true\" value=\"option-1\" label=\"Option 1\">Option 1</option>\n			<option value=\"option-2\" label=\"Option 2\">Option 2</option>\n			<option value=\"option-3\" label=\"Option 3\">Option 3</option>\n		</field>\n		<field class=\"form-control\" type=\"select\" required=\"true\" name=\"select-1516930188425\" label=\"Select\">\n			<option value=\"option-1\" label=\"Option 1\">Option 1</option>\n			<option value=\"option-2\" label=\"Option 2\">Option 2</option>\n			<option value=\"option-3\" label=\"Option 3\">Option 3</option>\n		</field>\n		<field type=\"radio-group\" required=\"true\" name=\"radio-group-1516929876748\" label=\"Radio Group\">\n			<option value=\"option-1\" label=\"Option 1\">Option 1</option>\n			<option value=\"option-2\" label=\"Option 2\">Option 2</option>\n			<option value=\"option-3\" label=\"Option 3\">Option 3</option>\n		</field>\n		<field type=\"radio-group\" required=\"true\" name=\"radio-group-1516930189753\" label=\"Radio Group\">\n			<option value=\"option-1\" label=\"Option 1\">Option 1</option>\n			<option value=\"option-2\" label=\"Option 2\">Option 2</option>\n			<option value=\"option-3\" label=\"Option 3\">Option 3</option>\n		</field>\n		<field type=\"radio-group\" required=\"true\" name=\"radio-group-1516929870810\" label=\"Radio Group\">\n			<option value=\"option-1\" label=\"Option 1\">Option 1</option>\n			<option value=\"option-2\" label=\"Option 2\">Option 2</option>\n			<option value=\"option-3\" label=\"Option 3\">Option 3</option>\n		</field>\n		<field type=\"checkbox-group\" required=\"true\" name=\"checkbox-group-1516929873559\" label=\"Checkbox Group\">\n			<option selected=\"true\" value=\"option-1\" label=\"Option 1\">Option 1</option>\n			<option selected=\"true\" value=\"\" label=\"\"></option>\n		</field>\n		<field type=\"checkbox-group\" required=\"true\" name=\"checkbox-group-1516930196289\" label=\"Checkbox Group\">\n			<option selected=\"true\" value=\"option-1\" label=\"Option 1\">Option 1</option>\n		</field>\n	</fields>\n</form-template>','[{\"type\":\"text\",\"required\":true,\"label\":\"First Name\",\"description\":\"Your first name\",\"className\":\"form-control\",\"name\":\"first-name\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"First Name\",\"description\":\"Your first name\",\"className\":\"form-control\",\"name\":\"text-1516930180249\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Last Name\",\"description\":\"Your last name\",\"className\":\"form-control\",\"name\":\"last-name\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Last Name\",\"description\":\"Your last name\",\"className\":\"form-control\",\"name\":\"text-1516930181816\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Email Address\",\"description\":\"Your email address\",\"className\":\"form-control\",\"name\":\"email-address\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Email Address\",\"description\":\"Your email address\",\"className\":\"form-control\",\"name\":\"text-1516930183056\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1516929867347\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1516930184912\",\"subtype\":\"text\"},{\"type\":\"textarea\",\"required\":true,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1516929868409\"},{\"type\":\"textarea\",\"required\":true,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1516930186689\"},{\"type\":\"select\",\"required\":true,\"label\":\"Select\",\"className\":\"form-control\",\"name\":\"select-1516929869609\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"select\",\"required\":true,\"label\":\"Select\",\"className\":\"form-control\",\"name\":\"select-1516930188425\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"radio-group\",\"required\":true,\"label\":\"Radio Group\",\"name\":\"radio-group-1516929876748\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"radio-group\",\"required\":true,\"label\":\"Radio Group\",\"name\":\"radio-group-1516930189753\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"radio-group\",\"required\":true,\"label\":\"Radio Group\",\"name\":\"radio-group-1516929870810\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"checkbox-group\",\"required\":true,\"label\":\"Checkbox Group\",\"name\":\"checkbox-group-1516929873559\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true},{\"label\":\"\",\"value\":\"\",\"selected\":true}]},{\"type\":\"checkbox-group\",\"required\":true,\"label\":\"Checkbox Group\",\"name\":\"checkbox-group-1516930196289\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true}]}]','2018-01-26 01:24:25','2018-01-26 01:33:36',NULL,'A'),(6,'29a87e6fcd','Form 4','','','','','<form-template>\n	<fields>\n		<field type=\"text\" required=\"true\" label=\"First Name\" description=\"Your first name\" class=\"form-control\" name=\"first-name\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"First Name\" description=\"Your first name\" class=\"form-control\" name=\"text-1516931510498\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Last Name\" description=\"Your last name\" class=\"form-control\" name=\"last-name\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Last Name\" description=\"Your last name\" class=\"form-control\" name=\"text-1516931511673\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Email Address\" description=\"Your email address\" class=\"form-control\" name=\"email-address\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Email Address\" description=\"Your email address\" class=\"form-control\" name=\"text-1516931513025\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Text Field\" class=\"form-control\" name=\"text-1516931470259\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Text Field\" class=\"form-control\" name=\"text-1516931514681\" subtype=\"text\"></field>\n		<field type=\"textarea\" required=\"true\" label=\"Text Area\" class=\"form-control\" name=\"textarea-1516931471469\"></field>\n		<field type=\"textarea\" required=\"true\" label=\"Text Area\" class=\"form-control\" name=\"textarea-1516931517338\"></field>\n		<field type=\"select\" required=\"true\" label=\"Select\" class=\"form-control\" name=\"select-1516931472601\">\n			<option label=\"Option 1\" value=\"option-1\">Option 1</option>\n			<option label=\"Option 2\" value=\"option-2\">Option 2</option>\n			<option label=\"Option 3\" value=\"option-3\">Option 3</option>\n		</field>\n		<field type=\"select\" required=\"true\" label=\"Select\" class=\"form-control\" name=\"select-1516931519457\">\n			<option label=\"Option 1\" value=\"option-1\" selected=\"true\">Option 1</option>\n			<option label=\"Option 2\" value=\"option-2\">Option 2</option>\n			<option label=\"Option 3\" value=\"option-3\">Option 3</option>\n		</field>\n		<field type=\"radio-group\" required=\"true\" label=\"Radio Group\" name=\"radio-group-1516931474785\">\n			<option label=\"Option 1\" value=\"option-1\">Option 1</option>\n			<option label=\"Option 2\" value=\"option-2\">Option 2</option>\n			<option label=\"Option 3\" value=\"option-3\">Option 3</option>\n		</field>\n		<field type=\"radio-group\" required=\"true\" label=\"Radio Group\" name=\"radio-group-1516931521418\">\n			<option label=\"Option 1\" value=\"option-1\">Option 1</option>\n			<option label=\"Option 2\" value=\"option-2\">Option 2</option>\n			<option label=\"Option 3\" value=\"option-3\">Option 3</option>\n		</field>\n		<field type=\"checkbox-group\" required=\"true\" label=\"Checkbox Group\" name=\"checkbox-group-1516931476584\">\n			<option label=\"Option 1\" value=\"option-1\" selected=\"true\">Option 1</option>\n		</field>\n		<field type=\"checkbox-group\" required=\"true\" label=\"Checkbox Group\" name=\"checkbox-group-1516931523714\">\n			<option label=\"Option 1\" value=\"option-1\" selected=\"true\">Option 1</option>\n		</field>\n		<field type=\"date\" required=\"true\" label=\"Date Field\" class=\"form-control\" name=\"date-1516931480007\"></field>\n		<field type=\"date\" required=\"true\" label=\"Date Field\" class=\"form-control\" name=\"date-1516931525930\"></field>\n		<field type=\"header\" subtype=\"h2\" label=\"Header\"></field>\n		<field type=\"header\" subtype=\"h2\" label=\"Header\"></field>\n	</fields>\n</form-template>','[{\"type\":\"text\",\"required\":true,\"label\":\"First Name\",\"description\":\"Your first name\",\"className\":\"form-control\",\"name\":\"first-name\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"First Name\",\"description\":\"Your first name\",\"className\":\"form-control\",\"name\":\"text-1516931510498\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Last Name\",\"description\":\"Your last name\",\"className\":\"form-control\",\"name\":\"last-name\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Last Name\",\"description\":\"Your last name\",\"className\":\"form-control\",\"name\":\"text-1516931511673\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Email Address\",\"description\":\"Your email address\",\"className\":\"form-control\",\"name\":\"email-address\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Email Address\",\"description\":\"Your email address\",\"className\":\"form-control\",\"name\":\"text-1516931513025\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1516931470259\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1516931514681\",\"subtype\":\"text\"},{\"type\":\"textarea\",\"required\":true,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1516931471469\"},{\"type\":\"textarea\",\"required\":true,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1516931517338\"},{\"type\":\"select\",\"required\":true,\"label\":\"Select\",\"className\":\"form-control\",\"name\":\"select-1516931472601\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"select\",\"required\":true,\"label\":\"Select\",\"className\":\"form-control\",\"name\":\"select-1516931519457\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"radio-group\",\"required\":true,\"label\":\"Radio Group\",\"name\":\"radio-group-1516931474785\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"radio-group\",\"required\":true,\"label\":\"Radio Group\",\"name\":\"radio-group-1516931521418\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"checkbox-group\",\"required\":true,\"label\":\"Checkbox Group\",\"name\":\"checkbox-group-1516931476584\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true}]},{\"type\":\"checkbox-group\",\"required\":true,\"label\":\"Checkbox Group\",\"name\":\"checkbox-group-1516931523714\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true}]},{\"type\":\"date\",\"required\":true,\"label\":\"Date Field\",\"className\":\"form-control\",\"name\":\"date-1516931480007\"},{\"type\":\"date\",\"required\":true,\"label\":\"Date Field\",\"className\":\"form-control\",\"name\":\"date-1516931525930\"},{\"type\":\"header\",\"subtype\":\"h2\",\"label\":\"Header\"},{\"type\":\"header\",\"subtype\":\"h2\",\"label\":\"Header\"}]','2018-01-26 01:50:47','2018-01-26 01:52:15',NULL,'A'),(7,'6860efefaf','Form 5','','','','','<form-template>\n	<fields>\n		<field type=\"text\" required=\"true\" label=\"First Name\" description=\"Your first name\" class=\"form-control\" name=\"first-name\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"First Name\" description=\"Your first name\" class=\"form-control\" name=\"text-1516932862205\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Last Name\" description=\"Your last name\" class=\"form-control\" name=\"last-name\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Last Name\" description=\"Your last name\" class=\"form-control\" name=\"text-1516932860889\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Email Address\" description=\"Your email address\" class=\"form-control\" name=\"email-address\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Email Address\" description=\"Your email address\" class=\"form-control\" name=\"text-1516932860071\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Text Field\" class=\"form-control\" name=\"text-1516932692067\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Text Field\" class=\"form-control\" name=\"text-1516932858172\" subtype=\"text\"></field>\n		<field type=\"textarea\" required=\"true\" label=\"Text Area\" class=\"form-control\" name=\"textarea-1516932695672\"></field>\n		<field type=\"textarea\" required=\"true\" label=\"Text Area\" class=\"form-control\" name=\"textarea-1516932857362\"></field>\n		<field type=\"select\" required=\"true\" label=\"Select\" class=\"form-control\" name=\"select-1516932698152\">\n			<option label=\"Option 1\" value=\"option-1\">Option 1</option>\n			<option label=\"Option 2\" value=\"option-2\">Option 2</option>\n			<option label=\"Option 3\" value=\"option-3\">Option 3</option>\n		</field>\n		<field type=\"select\" required=\"true\" label=\"Select\" class=\"form-control\" name=\"select-1516932855780\">\n			<option label=\"Option 1\" value=\"option-1\" selected=\"true\">Option 1</option>\n			<option label=\"Option 2\" value=\"option-2\">Option 2</option>\n			<option label=\"Option 3\" value=\"option-3\">Option 3</option>\n		</field>\n		<field type=\"radio-group\" required=\"true\" label=\"Radio Group\" name=\"radio-group-1516932703920\">\n			<option label=\"Option 1\" value=\"option-1\">Option 1</option>\n			<option label=\"Option 2\" value=\"option-2\">Option 2</option>\n			<option label=\"Option 3\" value=\"option-3\">Option 3</option>\n		</field>\n		<field type=\"radio-group\" required=\"true\" label=\"Radio Group\" name=\"radio-group-1516932855012\">\n			<option label=\"Option 1\" value=\"option-1\">Option 1</option>\n			<option label=\"Option 2\" value=\"option-2\">Option 2</option>\n			<option label=\"Option 3\" value=\"option-3\">Option 3</option>\n		</field>\n		<field type=\"checkbox-group\" required=\"true\" label=\"Checkbox Group\" name=\"checkbox-group-1516932761584\">\n			<option label=\"Option 1\" value=\"option-1\" selected=\"true\">Option 1</option>\n		</field>\n		<field type=\"checkbox-group\" required=\"true\" label=\"Checkbox Group\" name=\"checkbox-group-1516932853514\">\n			<option label=\"Option 1\" value=\"option-1\" selected=\"true\">Option 1</option>\n		</field>\n		<field type=\"date\" required=\"true\" label=\"Date Field\" class=\"form-control\" name=\"date-1516932770131\"></field>\n		<field type=\"date\" required=\"true\" label=\"Date Field\" class=\"form-control\" name=\"date-1516932851782\"></field>\n		<field type=\"header\" subtype=\"h2\" label=\"Header\"></field>\n		<field type=\"header\" subtype=\"h2\" label=\"Header\"></field>\n	</fields>\n</form-template>','[{\"type\":\"text\",\"required\":true,\"label\":\"First Name\",\"description\":\"Your first name\",\"className\":\"form-control\",\"name\":\"first-name\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"First Name\",\"description\":\"Your first name\",\"className\":\"form-control\",\"name\":\"text-1516932862205\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Last Name\",\"description\":\"Your last name\",\"className\":\"form-control\",\"name\":\"last-name\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Last Name\",\"description\":\"Your last name\",\"className\":\"form-control\",\"name\":\"text-1516932860889\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Email Address\",\"description\":\"Your email address\",\"className\":\"form-control\",\"name\":\"email-address\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Email Address\",\"description\":\"Your email address\",\"className\":\"form-control\",\"name\":\"text-1516932860071\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1516932692067\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1516932858172\",\"subtype\":\"text\"},{\"type\":\"textarea\",\"required\":true,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1516932695672\"},{\"type\":\"textarea\",\"required\":true,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1516932857362\"},{\"type\":\"select\",\"required\":true,\"label\":\"Select\",\"className\":\"form-control\",\"name\":\"select-1516932698152\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"select\",\"required\":true,\"label\":\"Select\",\"className\":\"form-control\",\"name\":\"select-1516932855780\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"radio-group\",\"required\":true,\"label\":\"Radio Group\",\"name\":\"radio-group-1516932703920\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"radio-group\",\"required\":true,\"label\":\"Radio Group\",\"name\":\"radio-group-1516932855012\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"checkbox-group\",\"required\":true,\"label\":\"Checkbox Group\",\"name\":\"checkbox-group-1516932761584\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true}]},{\"type\":\"checkbox-group\",\"required\":true,\"label\":\"Checkbox Group\",\"name\":\"checkbox-group-1516932853514\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true}]},{\"type\":\"date\",\"required\":true,\"label\":\"Date Field\",\"className\":\"form-control\",\"name\":\"date-1516932770131\"},{\"type\":\"date\",\"required\":true,\"label\":\"Date Field\",\"className\":\"form-control\",\"name\":\"date-1516932851782\"},{\"type\":\"header\",\"subtype\":\"h2\",\"label\":\"Header\"},{\"type\":\"header\",\"subtype\":\"h2\",\"label\":\"Header\"}]','2018-01-26 02:11:26','2018-01-26 02:15:54',NULL,'A');
/*!40000 ALTER TABLE `form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_entry`
--

DROP TABLE IF EXISTS `form_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `form_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_entry`
--

LOCK TABLES `form_entry` WRITE;
/*!40000 ALTER TABLE `form_entry` DISABLE KEYS */;
INSERT INTO `form_entry` VALUES (1,'Pinal','Desai','Pinal Desai','pinal.j.desai@gmail.com','114.23.241.67','2018-01-23 02:02:22',3),(2,'Pinal','Desai','Pinal Desai','pinal.j.desai@gmail.com','114.23.241.67','2018-01-23 02:03:59',3),(3,'Alpha','Test','Alpha Test','alan@tomahawk.co.nz','114.23.241.67','2018-01-30 01:15:59',4),(4,'Charlie','Test','Charlie Test','alan@tomahawk.co.nz','114.23.241.67','2018-01-30 01:23:38',4),(5,'Delta','Test','Delta Test','alan@tomahawk.co.nz','114.23.241.67','2018-01-30 01:27:56',4),(6,'Alpha','Test','Alpha Test','alan@tomahawk.co.nz','114.23.241.67','2018-01-30 01:34:23',4),(7,'Alpha','Test','Alpha Test','alan@tomahawk.co.nz','114.23.241.67','2018-01-30 01:38:08',4),(8,'Alpha','Test','Alpha Test','alan@tomahawk.co.nz','114.23.241.67','2018-01-30 01:40:34',4),(9,'Alpha','Test','Alpha Test','Alan@tomahawk.co.nz','114.23.241.67','2018-01-30 01:44:45',4),(10,'Alpha','Test','Alpha Test','alan@tomahawk.co.nz','114.23.241.67','2018-01-30 01:51:49',4),(11,'Charlie','Test','Charlie Test','alan@tomahawk.co.nz','114.23.241.67','2018-01-30 02:01:11',4),(12,'Delta','Test','Delta Test','alan@tomahawk.co.nz','114.23.241.67','2018-01-30 02:03:56',4),(13,'Alpha','Test','Alpha Test','alan@tomahawk.co.nz','114.23.241.67','2018-01-30 02:10:14',4),(14,'Alpha','Test','Alpha Test','alan@tomahawk.co.nz','114.23.241.67','2018-01-30 03:33:48',4),(15,'Test','Test','Test Test','test@dispostable.com','114.23.241.67','2018-01-31 20:53:30',4),(16,'Test','Test','Test Test','test@asdf.cc','114.23.241.67','2018-01-31 20:54:47',4),(17,'Test','Test','Test Test','test@ccc.cc','114.23.241.67','2018-01-31 21:03:17',4),(18,'island','test','island test','alan@tomahawk.co.nz','114.23.241.67','2018-02-01 00:05:43',4);
/*!40000 ALTER TABLE `form_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_entry_data`
--

DROP TABLE IF EXISTS `form_entry_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_entry_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `value` text,
  `form_id` int(11) NOT NULL,
  `form_entry_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_entry_data`
--

LOCK TABLES `form_entry_data` WRITE;
/*!40000 ALTER TABLE `form_entry_data` DISABLE KEYS */;
INSERT INTO `form_entry_data` VALUES (1,'First Name','Pinal',3,1),(2,'Last Name','Desai',3,1),(3,'Email Address','pinal.j.desai@gmail.com',3,1),(4,'Additional Information','',3,1),(5,'Arrival Date','24/01/2018',3,1),(6,'Departure Date','26/01/2018',3,1),(7,'Select Tour Extra','option-2',3,1),(8,'Proin eget accumsan odio','',3,1),(9,'Comments','This is a Test',3,1),(10,'First Name','Pinal',3,2),(11,'Last Name','Desai',3,2),(12,'Email Address','pinal.j.desai@gmail.com',3,2),(13,'Additional Information','',3,2),(14,'Arrival Date','27/01/2018',3,2),(15,'Departure Date','31/01/2018',3,2),(16,'Select Tour Extra','option-3',3,2),(17,'Proin eget accumsan odio','yes',3,2),(18,'Comments','TEST',3,2),(19,'First Name','Alpha',4,3),(20,'Last Name','Test',4,3),(21,'Email Address','alan@tomahawk.co.nz',4,3),(22,'Text Field','Text Field Test',4,3),(23,'Text Area','Text Area Test',4,3),(24,'Select','option-2',4,3),(25,'Radio Group','option-2, ',4,3),(26,'Checkbox Group','option-1, ',4,3),(27,'Checkbox Group','option-1, ',4,3),(28,'Date Field','01/04/2018',4,3),(29,'Header','',4,3),(30,'First Name','Charlie',4,4),(31,'Last Name','Test',4,4),(32,'Email Address','alan@tomahawk.co.nz',4,4),(33,'Text Field','Test Text Field',4,4),(34,'Text Area','Test Text Area',4,4),(35,'Select','option-1',4,4),(36,'Radio Group','option-2, ',4,4),(37,'Checkbox Group','option-1, ',4,4),(38,'Checkbox Group','option-1, Option 2, ',4,4),(39,'Date Field','01/06/2018',4,4),(40,'Header','',4,4),(41,'First Name','Delta',4,5),(42,'Last Name','Test',4,5),(43,'Email Address','alan@tomahawk.co.nz',4,5),(44,'Text Field','Test Field Test',4,5),(45,'Text Area','Text Area Test',4,5),(46,'Select','option-1',4,5),(47,'Radio Group','option-3, ',4,5),(48,'Checkbox Group','option-1, ',4,5),(49,'Checkbox Group','option-1, ',4,5),(50,'Date Field','01/06/2018',4,5),(51,'Header','',4,5),(52,'First Name','Alpha',4,6),(53,'Last Name','Test',4,6),(54,'Email Address','alan@tomahawk.co.nz',4,6),(55,'Text Field','Text Field Test',4,6),(56,'Text Area','Text Area Test',4,6),(57,'Select','option-1',4,6),(58,'Radio Group','option-1, ',4,6),(59,'Checkbox Group','option-1, ',4,6),(60,'Checkbox Group','option-1, ',4,6),(61,'Date Field','01/05/2018',4,6),(62,'Header','',4,6),(63,'First Name','Alpha',4,7),(64,'Last Name','Test',4,7),(65,'Email Address','alan@tomahawk.co.nz',4,7),(66,'Text Field','Text Field',4,7),(67,'Text Area','Text Area',4,7),(68,'Select','option-2',4,7),(69,'Radio Group','option-2, ',4,7),(70,'Checkbox Group','option-1, ',4,7),(71,'Checkbox Group','Option 2, ',4,7),(72,'Date Field','01/06/2018',4,7),(73,'Header','',4,7),(74,'First Name','Alpha',4,8),(75,'Last Name','Test',4,8),(76,'Email Address','alan@tomahawk.co.nz',4,8),(77,'Text Field','Text Field',4,8),(78,'Text Area','Text Area',4,8),(79,'Select','option-3',4,8),(80,'Radio Group','option-3, ',4,8),(81,'Checkbox Group','option-1, ',4,8),(82,'Checkbox Group','option-1, Option 2, ',4,8),(83,'Date Field','01/08/2018',4,8),(84,'Header','',4,8),(85,'First Name','Alpha',4,9),(86,'Last Name','Test',4,9),(87,'Email Address','Alan@tomahawk.co.nz',4,9),(88,'Text Field','Test',4,9),(89,'Text Area','Test',4,9),(90,'Select','option-2',4,9),(91,'Radio Group','option-2, ',4,9),(92,'Checkbox Group','option-1, ',4,9),(93,'Checkbox Group','Option 2, ',4,9),(94,'Date Field','01/05/2018',4,9),(95,'Header','',4,9),(96,'First Name','Alpha',4,10),(97,'Last Name','Test',4,10),(98,'Email Address','alan@tomahawk.co.nz',4,10),(99,'Text Field','Test',4,10),(100,'Text Area','Test',4,10),(101,'Select','option-3',4,10),(102,'Radio Group','option-3, ',4,10),(103,'Checkbox Group','option-1, ',4,10),(104,'Checkbox Group','option-1, ',4,10),(105,'Date Field','01/07/2018',4,10),(106,'Header','',4,10),(107,'First Name','Charlie',4,11),(108,'Last Name','Test',4,11),(109,'Email Address','alan@tomahawk.co.nz',4,11),(110,'Text Field','Test',4,11),(111,'Text Area','Test',4,11),(112,'Select','option-2',4,11),(113,'Radio Group','option-2, ',4,11),(114,'Checkbox Group','option-1, ',4,11),(115,'Checkbox Group','Option 2, ',4,11),(116,'Date Field','01/07/2018',4,11),(117,'Header','',4,11),(118,'First Name','Delta',4,12),(119,'Last Name','Test',4,12),(120,'Email Address','alan@tomahawk.co.nz',4,12),(121,'Text Field','Test',4,12),(122,'Text Area','Test',4,12),(123,'Select','option-2',4,12),(124,'Radio Group','option-2, ',4,12),(125,'Checkbox Group','option-1, ',4,12),(126,'Checkbox Group','Option 2, ',4,12),(127,'Date Field','02/08/2018',4,12),(128,'Header','',4,12),(129,'First Name','Alpha',4,13),(130,'Last Name','Test',4,13),(131,'Email Address','alan@tomahawk.co.nz',4,13),(132,'Text Field','Test',4,13),(133,'Text Area','Test',4,13),(134,'Select','option-1',4,13),(135,'Radio Group','option-1, ',4,13),(136,'Checkbox Group','option-1, ',4,13),(137,'Checkbox Group','option-1, Option 2, ',4,13),(138,'Date Field','01/06/2018',4,13),(139,'Header','',4,13),(140,'First Name','Alpha',4,14),(141,'Last Name','Test',4,14),(142,'Email Address','alan@tomahawk.co.nz',4,14),(143,'Text Field','test',4,14),(144,'Text Area','test',4,14),(145,'Select','option-1',4,14),(146,'Radio Group','option-1, ',4,14),(147,'Checkbox Group','option-1, ',4,14),(148,'Checkbox Group','option-1, Option 2, ',4,14),(149,'Date Field','01/02/2018',4,14),(150,'Header','',4,14),(151,'First Name','Test',4,15),(152,'Last Name','Test',4,15),(153,'Email Address','test@dispostable.com',4,15),(154,'Text Field','Test',4,15),(155,'Text Area','Test',4,15),(156,'Select','option-1',4,15),(157,'Radio Group','option-1, ',4,15),(158,'Checkbox Group','option-1, ',4,15),(159,'Checkbox Group','option-1, ',4,15),(160,'Date Field','02/02/2018',4,15),(161,'Header','',4,15),(162,'First Name','Test',4,16),(163,'Last Name','Test',4,16),(164,'Email Address','test@asdf.cc',4,16),(165,'Text Field','Test',4,16),(166,'Text Area','Test',4,16),(167,'Select','option-1',4,16),(168,'Radio Group','option-1, ',4,16),(169,'Checkbox Group','option-1, ',4,16),(170,'Checkbox Group','option-1, ',4,16),(171,'Date Field','22/02/2018',4,16),(172,'Header','',4,16),(173,'First Name','Test',4,17),(174,'Last Name','Test',4,17),(175,'Email Address','test@ccc.cc',4,17),(176,'Text Field','test@ccc.cc',4,17),(177,'Text Area','test@ccc.cc',4,17),(178,'Select','option-1',4,17),(179,'Radio Group','option-1, ',4,17),(180,'Checkbox Group','option-1, ',4,17),(181,'Checkbox Group','option-1, ',4,17),(182,'Date Field','02/02/2018',4,17),(183,'Header','',4,17),(184,'First Name','island',4,18),(185,'Last Name','test',4,18),(186,'Email Address','alan@tomahawk.co.nz',4,18),(187,'Text Field','island test',4,18),(188,'Text Area','island test',4,18),(189,'Select','option-1',4,18),(190,'Radio Group','option-1, ',4,18),(191,'Checkbox Group','option-1, ',4,18),(192,'Checkbox Group','option-1, ',4,18),(193,'Checkbox Group','option-1, ',4,18),(194,'Checkbox Group','option-1, ',4,18),(195,'Date Field','01/02/2018',4,18),(196,'Header','',4,18);
/*!40000 ALTER TABLE `form_entry_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_field`
--

DROP TABLE IF EXISTS `form_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `placeholder` varchar(255) DEFAULT NULL,
  `default_value` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `is_required` enum('N','Y') NOT NULL DEFAULT 'N',
  `is_multiple` enum('Y','N') DEFAULT 'N',
  `is_toggle` enum('Y','N') NOT NULL DEFAULT 'N',
  `class` varchar(255) DEFAULT NULL,
  `help_text` varchar(255) DEFAULT NULL,
  `subtype` varchar(255) DEFAULT NULL,
  `options_json` text,
  `rank` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=353 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_field`
--

LOCK TABLES `form_field` WRITE;
/*!40000 ALTER TABLE `form_field` DISABLE KEYS */;
INSERT INTO `form_field` VALUES (126,'First Name','first-name',NULL,NULL,'text','Y','N','N','form-control','Your first name','text','[]',1,3),(127,'Text Area','textarea-1516846653594',NULL,NULL,'textarea','N','N','N','form-control',NULL,NULL,'[]',2,3),(128,'Text Field','text-1516846267601',NULL,NULL,'text','N','N','N','form-control',NULL,'text','[]',3,3),(129,'Last Name','last-name',NULL,NULL,'text','Y','N','N','form-control','Your last name','text','[]',4,3),(130,'Email Address','email-address',NULL,NULL,'text','Y','N','N','form-control','Your email address','text','[]',5,3),(131,'Additional Information',NULL,NULL,NULL,'header','N','N','N','form-heading',NULL,'h2','[]',6,3),(132,'Arrival Date','date-1516672514853',NULL,NULL,'date','Y','N','N','form-control',NULL,NULL,'[]',7,3),(133,'Departure Date','date-1516672543816',NULL,NULL,'date','Y','N','N','form-control',NULL,NULL,'[]',8,3),(134,'Select Tour Extra','select-1516672557027',NULL,NULL,'select','N','N','N','form-control',NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]',9,3),(135,'Proin eget accumsan odio','checkbox-group-1516672812218',NULL,NULL,'checkbox-group','N','N','Y',NULL,NULL,NULL,'[{\"label\":\"Yes, Proin eget accumsan\",\"value\":\"yes\"}]',10,3),(136,'Comments','textarea-1516672862845',NULL,NULL,'textarea','Y','N','N','form-control',NULL,NULL,'[]',11,3),(186,'First Name','first-name',NULL,NULL,'text','Y','N','N','form-control','Your first name','text','[]',1,5),(187,'First Name','text-1516930180249',NULL,NULL,'text','Y','N','N','form-control','Your first name','text','[]',2,5),(188,'Last Name','last-name',NULL,NULL,'text','Y','N','N','form-control','Your last name','text','[]',3,5),(189,'Last Name','text-1516930181816',NULL,NULL,'text','Y','N','N','form-control','Your last name','text','[]',4,5),(190,'Email Address','email-address',NULL,NULL,'text','Y','N','N','form-control','Your email address','text','[]',5,5),(191,'Email Address','text-1516930183056',NULL,NULL,'text','Y','N','N','form-control','Your email address','text','[]',6,5),(192,'Text Field','text-1516929867347',NULL,NULL,'text','Y','N','N','form-control',NULL,'text','[]',7,5),(193,'Text Field','text-1516930184912',NULL,NULL,'text','Y','N','N','form-control',NULL,'text','[]',8,5),(194,'Text Area','textarea-1516929868409',NULL,NULL,'textarea','Y','N','N','form-control',NULL,NULL,'[]',9,5),(195,'Text Area','textarea-1516930186689',NULL,NULL,'textarea','Y','N','N','form-control',NULL,NULL,'[]',10,5),(196,'Select','select-1516929869609',NULL,NULL,'select','Y','N','N','form-control',NULL,NULL,'[{\"value\":\"option-1\",\"label\":\"Option 1\"},{\"value\":\"option-2\",\"label\":\"Option 2\"},{\"value\":\"option-3\",\"label\":\"Option 3\"}]',11,5),(197,'Select','select-1516930188425',NULL,NULL,'select','Y','N','N','form-control',NULL,NULL,'[{\"value\":\"option-1\",\"label\":\"Option 1\"},{\"value\":\"option-2\",\"label\":\"Option 2\"},{\"value\":\"option-3\",\"label\":\"Option 3\"}]',12,5),(198,'Radio Group','radio-group-1516929876748',NULL,NULL,'radio-group','Y','N','N',NULL,NULL,NULL,'[{\"value\":\"option-1\",\"label\":\"Option 1\"},{\"value\":\"option-2\",\"label\":\"Option 2\"},{\"value\":\"option-3\",\"label\":\"Option 3\"}]',13,5),(199,'Radio Group','radio-group-1516930189753',NULL,NULL,'radio-group','Y','N','N',NULL,NULL,NULL,'[{\"value\":\"option-1\",\"label\":\"Option 1\"},{\"value\":\"option-2\",\"label\":\"Option 2\"},{\"value\":\"option-3\",\"label\":\"Option 3\"}]',14,5),(200,'Radio Group','radio-group-1516929870810',NULL,NULL,'radio-group','Y','N','N',NULL,NULL,NULL,'[{\"value\":\"option-1\",\"label\":\"Option 1\"},{\"value\":\"option-2\",\"label\":\"Option 2\"},{\"value\":\"option-3\",\"label\":\"Option 3\"}]',15,5),(201,'Checkbox Group','checkbox-group-1516929873559',NULL,NULL,'checkbox-group','Y','N','N',NULL,NULL,NULL,'[{\"value\":\"option-1\",\"label\":\"Option 1\"},{\"value\":\"\",\"label\":\"\"}]',16,5),(202,'Checkbox Group','checkbox-group-1516930196289',NULL,NULL,'checkbox-group','Y','N','N',NULL,NULL,NULL,'[{\"value\":\"option-1\",\"label\":\"Option 1\"}]',17,5),(203,'First Name','first-name',NULL,NULL,'text','Y','N','N','form-control','Your first name','text','[]',1,6),(204,'First Name','text-1516931510498',NULL,NULL,'text','Y','N','N','form-control','Your first name','text','[]',2,6),(205,'Last Name','last-name',NULL,NULL,'text','Y','N','N','form-control','Your last name','text','[]',3,6),(206,'Last Name','text-1516931511673',NULL,NULL,'text','Y','N','N','form-control','Your last name','text','[]',4,6),(207,'Email Address','email-address',NULL,NULL,'text','Y','N','N','form-control','Your email address','text','[]',5,6),(208,'Email Address','text-1516931513025',NULL,NULL,'text','Y','N','N','form-control','Your email address','text','[]',6,6),(209,'Text Field','text-1516931470259',NULL,NULL,'text','Y','N','N','form-control',NULL,'text','[]',7,6),(210,'Text Field','text-1516931514681',NULL,NULL,'text','Y','N','N','form-control',NULL,'text','[]',8,6),(211,'Text Area','textarea-1516931471469',NULL,NULL,'textarea','Y','N','N','form-control',NULL,NULL,'[]',9,6),(212,'Text Area','textarea-1516931517338',NULL,NULL,'textarea','Y','N','N','form-control',NULL,NULL,'[]',10,6),(213,'Select','select-1516931472601',NULL,NULL,'select','Y','N','N','form-control',NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]',11,6),(214,'Select','select-1516931519457',NULL,NULL,'select','Y','N','N','form-control',NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]',12,6),(215,'Radio Group','radio-group-1516931474785',NULL,NULL,'radio-group','Y','N','N',NULL,NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]',13,6),(216,'Radio Group','radio-group-1516931521418',NULL,NULL,'radio-group','Y','N','N',NULL,NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]',14,6),(217,'Checkbox Group','checkbox-group-1516931476584',NULL,NULL,'checkbox-group','Y','N','N',NULL,NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"}]',15,6),(218,'Checkbox Group','checkbox-group-1516931523714',NULL,NULL,'checkbox-group','Y','N','N',NULL,NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"}]',16,6),(219,'Date Field','date-1516931480007',NULL,NULL,'date','Y','N','N','form-control',NULL,NULL,'[]',17,6),(220,'Date Field','date-1516931525930',NULL,NULL,'date','Y','N','N','form-control',NULL,NULL,'[]',18,6),(221,'Header',NULL,NULL,NULL,'header','N','N','N',NULL,NULL,'h2','[]',19,6),(222,'Header',NULL,NULL,NULL,'header','N','N','N',NULL,NULL,'h2','[]',20,6),(223,'First Name','first-name',NULL,NULL,'text','Y','N','N','form-control','Your first name','text','[]',1,7),(224,'First Name','text-1516932862205',NULL,NULL,'text','Y','N','N','form-control','Your first name','text','[]',2,7),(225,'Last Name','last-name',NULL,NULL,'text','Y','N','N','form-control','Your last name','text','[]',3,7),(226,'Last Name','text-1516932860889',NULL,NULL,'text','Y','N','N','form-control','Your last name','text','[]',4,7),(227,'Email Address','email-address',NULL,NULL,'text','Y','N','N','form-control','Your email address','text','[]',5,7),(228,'Email Address','text-1516932860071',NULL,NULL,'text','Y','N','N','form-control','Your email address','text','[]',6,7),(229,'Text Field','text-1516932692067',NULL,NULL,'text','Y','N','N','form-control',NULL,'text','[]',7,7),(230,'Text Field','text-1516932858172',NULL,NULL,'text','Y','N','N','form-control',NULL,'text','[]',8,7),(231,'Text Area','textarea-1516932695672',NULL,NULL,'textarea','Y','N','N','form-control',NULL,NULL,'[]',9,7),(232,'Text Area','textarea-1516932857362',NULL,NULL,'textarea','Y','N','N','form-control',NULL,NULL,'[]',10,7),(233,'Select','select-1516932698152',NULL,NULL,'select','Y','N','N','form-control',NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]',11,7),(234,'Select','select-1516932855780',NULL,NULL,'select','Y','N','N','form-control',NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]',12,7),(235,'Radio Group','radio-group-1516932703920',NULL,NULL,'radio-group','Y','N','N',NULL,NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]',13,7),(236,'Radio Group','radio-group-1516932855012',NULL,NULL,'radio-group','Y','N','N',NULL,NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]',14,7),(237,'Checkbox Group','checkbox-group-1516932761584',NULL,NULL,'checkbox-group','Y','N','N',NULL,NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"}]',15,7),(238,'Checkbox Group','checkbox-group-1516932853514',NULL,NULL,'checkbox-group','Y','N','N',NULL,NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"}]',16,7),(239,'Date Field','date-1516932770131',NULL,NULL,'date','Y','N','N','form-control',NULL,NULL,'[]',17,7),(240,'Date Field','date-1516932851782',NULL,NULL,'date','Y','N','N','form-control',NULL,NULL,'[]',18,7),(241,'Header',NULL,NULL,NULL,'header','N','N','N',NULL,NULL,'h2','[]',19,7),(242,'Header',NULL,NULL,NULL,'header','N','N','N',NULL,NULL,'h2','[]',20,7),(340,'First Name','first-name',NULL,NULL,'text','Y','N','N','form-control','Your first name','text','[]',1,4),(341,'Last Name','last-name',NULL,NULL,'text','Y','N','N','form-control','Your last name','text','[]',2,4),(342,'Email Address','email-address',NULL,NULL,'text','Y','N','N','form-control','Your email address','text','[]',3,4),(343,'Text Field','text-1516922551600',NULL,NULL,'text','Y','N','N','form-control',NULL,'text','[]',4,4),(344,'Text Area','textarea-1516922557875',NULL,NULL,'textarea','Y','N','N','form-control',NULL,NULL,'[]',5,4),(345,'Select','select-1516922559257',NULL,NULL,'select','Y','N','N','form-control',NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]',6,4),(346,'Radio Group','radio-group-1516922561017',NULL,NULL,'radio-group','Y','N','N',NULL,NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]',7,4),(347,'Checkbox Group','checkbox-group-1516922565575',NULL,NULL,'checkbox-group','Y','N','N',NULL,NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"Option 2\"},{\"label\":\"Option 3\",\"value\":\"Option 3\"}]',8,4),(348,'Checkbox Group','checkbox-group-1517443373059',NULL,NULL,'checkbox-group','Y','N','N',NULL,NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"}]',9,4),(349,'Checkbox Group','checkbox-group-1517274867193',NULL,NULL,'checkbox-group','Y','N','Y',NULL,NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"Option 2\"}]',10,4),(350,'Checkbox Group','checkbox-group-1517443374515',NULL,NULL,'checkbox-group','Y','N','Y',NULL,NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"Option 2\"}]',11,4),(351,'Date Field','date-1516922567787',NULL,NULL,'date','Y','N','N','form-control',NULL,NULL,'[]',12,4),(352,'Header',NULL,NULL,NULL,'header','N','N','N',NULL,NULL,'h2','[]',13,4);
/*!40000 ALTER TABLE `form_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_importantpages`
--

DROP TABLE IF EXISTS `general_importantpages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_importantpages` (
  `imppage_id` int(11) NOT NULL AUTO_INCREMENT,
  `imppage_name` varchar(150) NOT NULL,
  `page_id` int(11) NOT NULL,
  `imppage_showincms` enum('N','Y') NOT NULL DEFAULT 'Y',
  `is_mobile` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`imppage_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_importantpages`
--

LOCK TABLES `general_importantpages` WRITE;
/*!40000 ALTER TABLE `general_importantpages` DISABLE KEYS */;
INSERT INTO `general_importantpages` VALUES (1,'Home',1,'N',0),(2,'404',11,'Y',0),(3,'Testimonial',7,'Y',0),(4,'Contact',8,'Y',0),(5,'Accommodation',2,'Y',0),(6,'Bookings',6,'Y',0),(7,'Gallery',12,'Y',0),(8,'blog',15,'Y',0),(9,'Compendium',19,'Y',0);
/*!40000 ALTER TABLE `general_importantpages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_pages`
--

DROP TABLE IF EXISTS `general_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key for pages',
  `access_level` enum('P','L') NOT NULL DEFAULT 'P' COMMENT 'P = Public, L = Private',
  `meta_cache` tinyint(1) NOT NULL DEFAULT '1',
  `slideshow_type` enum('C','D') NOT NULL DEFAULT 'D',
  `parent_id` int(11) DEFAULT '0',
  `template_id` int(11) DEFAULT NULL,
  `page_meta_data_id` int(11) NOT NULL,
  `publish_on_set_time` enum('Y','N') NOT NULL DEFAULT 'Y',
  `publish_on` datetime DEFAULT NULL,
  `hide_on` datetime DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `page_parent` (`parent_id`),
  KEY `page_meta_data_id` (`page_meta_data_id`),
  KEY `template_id` (`template_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_pages`
--

LOCK TABLES `general_pages` WRITE;
/*!40000 ALTER TABLE `general_pages` DISABLE KEYS */;
INSERT INTO `general_pages` VALUES (1,'P',1,'D',0,1,1,'Y','2017-11-01 05:32:54','0000-00-00 00:00:00',0),(2,'P',1,'D',0,1,2,'Y','0000-00-00 00:00:00','0000-00-00 00:00:00',0),(3,'P',1,'D',0,1,3,'Y','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(4,'P',1,'D',0,1,4,'Y','0000-00-00 00:00:00','0000-00-00 00:00:00',0),(5,'P',1,'D',0,1,5,'N','0000-00-00 00:00:00','0000-00-00 00:00:00',0),(6,'P',1,'D',0,1,6,'Y','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(7,'P',1,'D',5,1,7,'Y','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(8,'P',1,'D',0,1,8,'Y','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(9,'P',1,'D',0,1,9,'Y','0000-00-00 00:00:00','0000-00-00 00:00:00',7),(10,'P',1,'D',0,1,10,'Y','0000-00-00 00:00:00','0000-00-00 00:00:00',4),(11,'P',1,'D',0,1,11,'Y','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(12,'P',1,'D',0,1,14,'Y','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(13,'P',1,'D',0,NULL,15,'Y','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(14,'P',1,'D',0,NULL,16,'Y','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(15,'P',1,'D',5,1,18,'Y','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(16,'P',1,'D',0,1,22,'N','0000-00-00 00:00:00','0000-00-00 00:00:00',0),(17,'P',1,'D',0,1,25,'Y','2018-01-03 22:01:58','2018-01-03 22:01:58',NULL),(18,'P',1,'D',0,1,29,'N','2018-01-22 21:32:45','2018-01-22 21:32:45',0),(19,'P',1,'D',0,2,30,'Y','2018-02-15 03:13:56','2018-02-15 03:13:56',0);
/*!40000 ALTER TABLE `general_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_settings`
--

DROP TABLE IF EXISTS `general_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) DEFAULT NULL COMMENT 'Company/Business/Website name	',
  `start_year` int(4) DEFAULT NULL,
  `email_address` mediumtext COMMENT 'Email Address',
  `phone_number` varchar(100) DEFAULT NULL,
  `address` mediumtext,
  `booking_url` varchar(255) DEFAULT NULL,
  `js_code_head_close` mediumtext,
  `js_code_body_open` mediumtext,
  `js_code_body_close` mediumtext,
  `adwords_code` mediumtext,
  `mailchimp_api_key` varchar(100) DEFAULT NULL,
  `mailchimp_list_id` varchar(50) DEFAULT NULL,
  `resbook_id` varchar(100) NOT NULL,
  `map_latitude` float(10,6) DEFAULT NULL,
  `map_longitude` float(10,6) DEFAULT NULL,
  `map_address` mediumtext,
  `map_styles` longtext,
  `map_heading` varchar(255) DEFAULT NULL,
  `map_description` mediumtext,
  `map_zoom_level` smallint(6) NOT NULL,
  `map_marker_latitude` float(10,6) NOT NULL,
  `map_marker_longitude` float(10,6) NOT NULL,
  `slideshow_speed` int(11) DEFAULT '3000',
  `set_sitemapupdated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `set_sitemapstatus` char(1) DEFAULT NULL,
  `homepage_slideshow_caption` varchar(255) DEFAULT NULL,
  `tripadvisor_widget_code` mediumtext,
  `color_palette_id` smallint(5) DEFAULT NULL,
  `company_logo_path` varchar(255) DEFAULT NULL,
  `webfont_headings` varchar(100) DEFAULT NULL,
  `webfont_text` varchar(100) DEFAULT NULL,
  `booking_engine_url` varchar(100) DEFAULT NULL,
  `mailchimp_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_settings`
--

LOCK TABLES `general_settings` WRITE;
/*!40000 ALTER TABLE `general_settings` DISABLE KEYS */;
INSERT INTO `general_settings` VALUES (1,'Island Template',0,'ian@tomahawk.co.nz; alan@tomahawk.co.nz','+64 21 441 755','17 Constellation Drive\r\nAuckland','','','','','','6577a17dd0a66458981c0b4126a86b45-us15','06224f3593','1144',-36.746597,174.736771,'19 Constellation Dr, Rosedale, Auckland 0632, New Zealand','[{\"featureType\":\"administrative\",\"elementType\":\"geometry\",\"stylers\":[{\"color\":\"#a7a7a7\"}]},{\"featureType\":\"administrative\",\"elementType\":\"labels.text.fill\",\"stylers\":[{\"visibility\":\"on\"},{\"color\":\"#737373\"}]},{\"featureType\":\"landscape\",\"elementType\":\"geometry.fill\",\"stylers\":[{\"visibility\":\"on\"},{\"color\":\"#efefef\"}]},{\"featureType\":\"poi\",\"elementType\":\"geometry.fill\",\"stylers\":[{\"visibility\":\"on\"},{\"color\":\"#dadada\"}]},{\"featureType\":\"poi\",\"elementType\":\"labels\",\"stylers\":[{\"visibility\":\"off\"}]},{\"featureType\":\"poi\",\"elementType\":\"labels.icon\",\"stylers\":[{\"visibility\":\"off\"}]},{\"featureType\":\"road\",\"elementType\":\"labels.text.fill\",\"stylers\":[{\"color\":\"#696969\"}]},{\"featureType\":\"road\",\"elementType\":\"labels.icon\",\"stylers\":[{\"visibility\":\"off\"}]},{\"featureType\":\"road.highway\",\"elementType\":\"geometry.fill\",\"stylers\":[{\"color\":\"#ffffff\"}]},{\"featureType\":\"road.highway\",\"elementType\":\"geometry.stroke\",\"stylers\":[{\"visibility\":\"on\"},{\"color\":\"#b3b3b3\"}]},{\"featureType\":\"road.arterial\",\"elementType\":\"geometry.fill\",\"stylers\":[{\"color\":\"#ffffff\"}]},{\"featureType\":\"road.arterial\",\"elementType\":\"geometry.stroke\",\"stylers\":[{\"color\":\"#d6d6d6\"}]},{\"featureType\":\"road.local\",\"elementType\":\"geometry.fill\",\"stylers\":[{\"visibility\":\"on\"},{\"color\":\"#ffffff\"},{\"weight\":1.8}]},{\"featureType\":\"road.local\",\"elementType\":\"geometry.stroke\",\"stylers\":[{\"color\":\"#d7d7d7\"}]},{\"featureType\":\"transit\",\"elementType\":\"all\",\"stylers\":[{\"color\":\"#808080\"},{\"visibility\":\"off\"}]},{\"featureType\":\"water\",\"elementType\":\"geometry.fill\",\"stylers\":[{\"color\":\"#d3d3d3\"}]}]','','',18,-36.746277,174.736389,5,'2018-02-15 20:21:22','I','','<div id=\"TA_selfserveprop452\" class=\"TA_selfserveprop\">\r\n<ul id=\"qUFEsQADPa\" class=\"TA_links hUYXyJei\">\r\n<li id=\"w52drAvt\" class=\"g9yvErBj\">\r\n<a target=\"_blank\" href=\"https://www.tripadvisor.co.nz/\"><img src=\"https://www.tripadvisor.co.nz/img/cdsi/img2/branding/150_logo-11900-2.png\" alt=\"TripAdvisor\"/></a>\r\n</li>\r\n</ul>\r\n</div>\r\n<script src=\"https://www.jscache.com/wejs?wtype=selfserveprop&uniq=452&locationId=6925660&lang=en_NZ&rating=true&nreviews=5&writereviewlink=true&popIdx=true&iswide=false&border=true&display_version=2\"></script>',3,'/library/island_logo.jpg','Default','Default','123','pinal@tomahawk.co.nz');
/*!40000 ALTER TABLE `general_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `installed_modules`
--

DROP TABLE IF EXISTS `installed_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `installed_modules` (
  `id` int(11) NOT NULL,
  `number` int(100) DEFAULT NULL,
  `label` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `description` longtext CHARACTER SET latin1,
  `type` enum('C','O','A') CHARACTER SET latin1 NOT NULL DEFAULT 'C',
  `status` enum('A','D','H') CHARACTER SET latin1 DEFAULT 'A',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `installed_modules`
--

LOCK TABLES `installed_modules` WRITE;
/*!40000 ALTER TABLE `installed_modules` DISABLE KEYS */;
INSERT INTO `installed_modules` VALUES (0,1,'Site Map','This is your main navigation for your website. You can have a maximum of 7 main menu links and any number of sub-menu links.','C','A'),(1,2,'General Content Pages','This is the main module you use to edit content on each page of your website.','C','A'),(2,3,'Quicklinks','These are automatically formatted image links to other pages on your website. You simply select a list of pages you want to link to and the CMS does the rest.','C','A'),(3,4,'Location Map','Your location page will include a Google map pinpointing your location.','C','A'),(4,5,'Slideshows','This module allows you to add any number of images to a gallery that can then be used as a slideshow on any of your website\'s pages.','C','A'),(5,6,'Photo Gallery','As many photo galleries can be created as you wish. These are then displayed on your main gallery page or an individual gallery can be included on any selected page.','C','A'),(6,7,'Accommodation or Activity Module - depending on Website type','This module allows you to easily setup your accommodation options and have them automatically displayed on your accommodation page','C','A'),(7,8,'Contact Page Enquiry Form','An enquiry form will sit on your contact page where visitors can send you messages by completing the form.','C','A'),(8,9,'File Manager','Using the file manager you can upload any type of document including photos, word documents, PDF file, etc. This allows you to create links on your site to these documents.','C','A'),(9,10,'Booking Button - Main navigation CTA to ResBook booking page or external link','Whether you\'re using ResBook or any other booking engine, your website will have a main booking call-to-action on every page of your website.','C','A'),(10,11,'Booking Calendar Widget - ResBook only','If you\'re using ResBook, this widget will sit on all pages of your site just below the hero slideshow.','C','A'),(11,12,'Social Media icon footer links','This module allows you to add links to the listed social media platforms and will display icons in the footer of your website.','C','A'),(12,13,'Partner logos - limited to 3 and displayed in the footer','This feature allows you to add up to 3 selected logos that will appear in your website. Contact us if you need to add more.','C','A'),(13,14,'Footer Links','When creating your website\'s site map you can specify which pages you want to have as links in the footer section of your site.','C','A'),(14,15,'Copyright Notice','The website will automatically insert a copyright notice into the footer of your website.','C','A'),(15,16,'Redirects Module','This module allows you to easily migrate from and older website to your new website by adding redirects from the old website pages to their equivalent page on your new site.','C','A'),(16,17,'Enquiries Module','This module provides access to all enquiries made through your contact page form.','C','A'),(17,18,'Sitemap Generator','This module allows you to create a site map XML file for submission to Google.','C','A'),(18,19,'Reviews','This module allows you to add as many customer reviews as you want. A randomly displayed review is displayed in your footer section.','O','A'),(19,20,'Mailchimp','','O','A');
/*!40000 ALTER TABLE `installed_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_pages`
--

DROP TABLE IF EXISTS `module_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_pages` (
  `modpages_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `modpages_rank` int(4) DEFAULT NULL,
  `mod_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`modpages_id`)
) ENGINE=MyISAM AUTO_INCREMENT=186 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_pages`
--

LOCK TABLES `module_pages` WRITE;
/*!40000 ALTER TABLE `module_pages` DISABLE KEYS */;
INSERT INTO `module_pages` VALUES (18,1,3,4),(7,7,2,4),(170,8,2,2),(185,1,4,3),(112,12,2,9),(182,4,3,6),(113,15,1,10),(167,17,2,3),(179,18,1,12);
/*!40000 ALTER TABLE `module_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_templates`
--

DROP TABLE IF EXISTS `module_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_templates` (
  `tmplmod_id` int(11) NOT NULL AUTO_INCREMENT,
  `tmpl_id` int(11) NOT NULL,
  `mod_id` int(11) NOT NULL,
  `tmplmod_rank` int(11) NOT NULL,
  PRIMARY KEY (`tmplmod_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_templates`
--

LOCK TABLES `module_templates` WRITE;
/*!40000 ALTER TABLE `module_templates` DISABLE KEYS */;
INSERT INTO `module_templates` VALUES (1,1,1,20),(2,1,5,8),(3,1,4,2),(4,1,7,7),(6,1,8,6),(7,1,11,10),(8,2,13,2);
/*!40000 ALTER TABLE `module_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modules` (
  `mod_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key for include',
  `mod_name` varchar(255) DEFAULT NULL COMMENT 'Include name',
  `mod_path` varchar(255) DEFAULT NULL COMMENT 'Include URL/file path (exclude the extension)',
  `mod_showincms` enum('N','Y') NOT NULL DEFAULT 'Y',
  `mod_mobile` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`mod_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modules`
--

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` VALUES (1,'Slideshow','slideshow','N',NULL),(2,'Contact','contact','Y',NULL),(3,'Quicklinks','quicklinks','Y',NULL),(5,'Testimonial','testimonial','N',NULL),(7,'Gallery Carousel','gallery_carousel','N',NULL),(6,'Map','map','Y',NULL),(4,'Accommodation','accommodation','N',NULL),(8,'Bookings','bookings','N',NULL),(9,'Gallery','gallery','Y',NULL),(10,'Blog','blog','Y',NULL),(11,'Form','form','N',NULL),(12,'Payments','payments','Y',NULL),(13,'Compendium','compendium','Y',NULL);
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_has_quicklink`
--

DROP TABLE IF EXISTS `page_has_quicklink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_has_quicklink` (
  `page_id` int(11) NOT NULL,
  `quicklink_page_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_has_quicklink`
--

LOCK TABLES `page_has_quicklink` WRITE;
/*!40000 ALTER TABLE `page_has_quicklink` DISABLE KEYS */;
INSERT INTO `page_has_quicklink` VALUES (17,2),(17,16),(17,4),(1,2),(1,16),(1,4);
/*!40000 ALTER TABLE `page_has_quicklink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_meta_data`
--

DROP TABLE IF EXISTS `page_meta_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_meta_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `menu_label` varchar(255) DEFAULT NULL,
  `footer_menu` varchar(255) DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `sub_heading` varchar(255) DEFAULT NULL,
  `quicklink_heading` varchar(255) DEFAULT NULL,
  `quicklink_menu_label` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `full_url` varchar(255) DEFAULT NULL,
  `introduction` mediumtext,
  `short_description` mediumtext,
  `description` mediumtext,
  `photo` varchar(255) DEFAULT NULL,
  `thumb_photo` varchar(255) DEFAULT NULL,
  `photo_caption` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `meta_description` mediumtext,
  `og_title` varchar(255) DEFAULT NULL,
  `og_meta_description` mediumtext,
  `og_image` varchar(255) DEFAULT NULL,
  `time_based_publishing` enum('N','Y') NOT NULL DEFAULT 'N',
  `publish_on` datetime DEFAULT NULL,
  `hide_on` datetime DEFAULT NULL,
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `status` enum('A','H','D') DEFAULT 'H',
  `rank` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `date_deleted` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `gallery_id` int(11) DEFAULT NULL,
  `slideshow_id` int(11) DEFAULT NULL,
  `page_meta_index_id` int(11) DEFAULT '1',
  `page_js_code_head_close` mediumtext,
  `page_js_code_body_open` mediumtext,
  `page_js_code_body_close` mediumtext,
  `quicklink_photo` varchar(255) DEFAULT NULL,
  `quicklink_thumb` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bsh_query_1` (`status`,`menu_label`,`heading`,`title`,`sub_heading`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_meta_data`
--

LOCK TABLES `page_meta_data` WRITE;
/*!40000 ALTER TABLE `page_meta_data` DISABLE KEYS */;
INSERT INTO `page_meta_data` VALUES (1,'Home','Home','Home','Boutique Tropical Island Hospitality','','','','home','/','','',NULL,'/library/beach-in-antigua_z1b84bad.jpg','/uploads/2018/02/img-5a8239fe8d5ad.jpg','','','','','','','N',NULL,NULL,1,'A',1,'2016-03-17 11:10:30','2018-02-13 01:06:07',NULL,1,3,0,1,1,'','','','',NULL),(2,'Accommodation','Accommodation','','Island Escape Resort Accommodation','','Accommodation Options','View Options','accommodation','/accommodation','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu.','This is a paragraph of text about acommodation options. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet.',NULL,'/library/a-row-of-blue-lounge-chairs-and-umbrellas-in-a-tropical-setting_byweqadcso.jpg','/uploads/2018/02/img-5a7262133b131.jpg','','','','','','','N',NULL,NULL,0,'A',2,'2017-06-12 23:21:07','2018-02-01 00:40:52',NULL,1,3,0,10,1,'','','','/library/bed-in-a-hotel-room-at-night_rwhe0yx_nge.jpg','/uploads/2017/11/img-5a1e0269b0d0a.jpg'),(4,'Our Location','Our Location','','Island Escape Resort - The Heart of Bora Bora','','Our Location','View Our Location','location','/location','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu.','This is a paragraph of text about our location. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet.',NULL,'/library/db-316-seychelles-a18-3936.jpg','/uploads/2018/02/img-5a726226eae7b.jpg','','','','','','','N',NULL,NULL,0,'A',4,'2017-06-12 23:22:20','2018-02-01 00:41:13',NULL,1,3,0,18,1,'','','','/library/maldives-beach-and-island_qjd6fe.jpg','/uploads/2017/11/img-5a1e02e832cb8.jpg'),(5,'About','About','','About Us','','About us','About Us','about-us','/about-us','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu.','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non',NULL,'/library/maldives-beach-and-island_qjd6fe.jpg','/uploads/2018/01/img-5a7133e476d72.jpg','','','','','','','N',NULL,NULL,0,'A',6,'2017-06-12 23:22:47','2018-01-31 03:11:33',NULL,1,3,0,19,1,'','','','/library/pexels-photo-271634.jpg','/uploads/2017/11/img-5a0b9949ca3c0.jpg'),(6,'Reservations','','','Reservations','','','','reservations','/reservations','','',NULL,'','','','','','','','','N',NULL,NULL,0,'A',8,'2017-06-12 23:22:58','2017-11-16 02:06:31',NULL,1,3,0,0,1,'','','','',NULL),(7,'Reviews','Reviews','','What our customers say','','','','reviews','/about-us/reviews','','',NULL,'','','','','','','','','N',NULL,NULL,0,'A',2,'2017-06-12 23:24:39','2017-11-15 21:58:01',NULL,1,3,0,0,1,'','','','',NULL),(8,'Contact','Contact','','Our Contact Details','','','','contact','/contact','','',NULL,'','','','','','','','','N',NULL,NULL,0,'A',7,'2017-06-12 23:25:27','2018-01-07 22:26:09',NULL,1,3,0,0,1,'','','','',NULL),(9,'Privacy Policy','','Privacy Policy','Privacy Policy','','','','privacy-policy','/privacy-policy','','',NULL,'','','','','','','','','N',NULL,NULL,0,'A',10,'2017-06-12 23:26:02','2018-01-26 02:16:11',NULL,1,3,0,0,1,'','','','',NULL),(10,'Terms & Conditions','','Terms & Conditions','Terms & Conditions','','','','terms-conditions','/terms-conditions','','',NULL,'','','','','','','','','N',NULL,NULL,0,'A',9,'2017-06-12 23:26:39','2018-01-30 01:10:15',NULL,1,3,0,0,1,'','','','',NULL),(11,'404 Error page','','','404 Error page','','','','404-error-page','/404-error-page','','',NULL,'','','','','','','','','N',NULL,NULL,0,'A',11,'2017-06-12 23:27:19','2017-11-15 21:58:33',NULL,1,3,0,0,1,'','','','',NULL),(12,'The Garden Room','The Garden Room',NULL,'The Garden Room',NULL,NULL,NULL,'the-garden-room','/accommodation/the-garden-room','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu.','This is a paragraph of text about acommodation options. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet.',NULL,'/library/dsc-5402-243-345.jpg','/uploads/2018/01/img-5a7133d9a8c36.jpg',NULL,'','','','','','N',NULL,NULL,0,'A',1,'2017-06-14 23:01:09','2018-02-15 03:25:52',NULL,1,3,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),(13,'Oceanfront Bungalow','Oceanfront Bungalow',NULL,'Oceanfront Bungalow',NULL,NULL,NULL,'oceanfront-bungalow','/accommodation/oceanfront-bungalow','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu.','This is a paragraph of text about the lodge\'s facilities. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet.',NULL,'/library/bed-in-a-hotel-room-at-night_svrb_xdnzx.jpg','/uploads/2018/01/img-5a529d3080a49.jpg',NULL,'','','','','','N',NULL,NULL,0,'A',2,'2017-06-15 02:54:40','2018-02-02 00:49:02',NULL,1,3,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),(14,'Gallery','Gallery','','GalleryAlpine Lodge & Retreat Gallery','','','','gallery','/gallery','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu.','',NULL,'','','','','','','','','N',NULL,NULL,0,'A',5,'2017-06-18 23:55:47','2017-11-15 21:57:36',NULL,1,3,0,0,1,'','','','',NULL),(17,'Poolside Cabin','Poolside Cabin',NULL,'Poolside Cabin',NULL,NULL,NULL,'poolside-cabin','/accommodation/poolside-cabin','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu.','This is a paragraph of text about our location. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet.',NULL,'/library/s3x5281-2145.jpg','/uploads/2018/01/img-5a529d49e87a6.jpg',NULL,'','','','','','N',NULL,NULL,0,'A',3,'2017-09-28 20:09:12','2018-01-07 22:49:45',NULL,1,3,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),(18,'Blog','Blog','','Blog','','','','blog','/about-us/blog','','',NULL,'','','','','','','','','N',NULL,NULL,0,'A',1,'2017-11-10 03:18:39','2017-11-15 21:57:54',NULL,3,3,0,0,1,'','','','',NULL),(19,'Test Blog Category','Test Blog Category',NULL,'Test Blog Category',NULL,NULL,NULL,'test-category','/category/test-category',NULL,NULL,NULL,'',NULL,NULL,'','','','','','N',NULL,NULL,0,'A',NULL,'2017-11-10 03:25:40','2017-11-15 20:39:34',NULL,3,3,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),(20,'Test Blog Post',NULL,NULL,'Test Blog Post',NULL,NULL,NULL,'testblogpost','/post/testblogpost',NULL,'short description test 1','<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus hendrerit. Pellentesque aliquet nibh nec urna. In nisi neque, aliquet vel, dapibus id, mattis vel, nisi. Sed pretium, ligula sollicitudin laoreet viverra, tortor libero sodales leo, eget blandit nunc tortor eu nibh. Nullam mollis. Ut justo. Suspendisse potenti.</p>\r\n\r\n<p>Sed egestas, ante et vulputate volutpat, eros pede semper est, vitae luctus metus libero eu augue. Morbi purus libero, faucibus adipiscing, commodo quis, gravida id, est. Sed lectus. Praesent elementum hendrerit tortor. Sed semper lorem at felis. Vestibulum volutpat, lacus a ultrices sagittis, mi neque euismod dui, eu pulvinar nunc sapien ornare nisl. Phasellus pede arcu, dapibus eu, fermentum et, dapibus sed, urna.</p>\r\n\r\n<p>Morbi interdum mollis sapien. Sed ac risus. Phasellus lacinia, magna a ullamcorper laoreet, lectus arcu pulvinar risus, vitae facilisis libero dolor a purus. Sed vel lacus. Mauris nibh felis, adipiscing varius, adipiscing in, lacinia vel, tellus. Suspendisse ac urna. Etiam pellentesque mauris ut lectus. Nunc tellus ante, mattis eget, gravida vitae, ultricies ac, leo. Integer leo pede, ornare a, lacinia eu, vulputate vel, nisl.</p>','/library/s3x5281-2145.jpg','/uploads/2018/01/img-5a7133ecd4da6.jpg',NULL,'','','','','','N',NULL,NULL,0,'A',NULL,'2017-11-10 03:26:26','2018-01-31 03:11:42',NULL,3,3,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),(22,'Facitilies','Facitilies','','Resort Services and Facilities','','The Resort\'s Facilities','The Resort\'s Facilities','facitilies','/facitilies','Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','This is a paragraph of text about the resort\'s facilities. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet',NULL,'/library/entrance-to-art-hotel-thailand_rpqxcild3fx.jpg','/uploads/2018/02/img-5a72623783f03.jpg','','','','','','','N',NULL,NULL,0,'A',3,'2017-11-15 03:51:08','2018-02-01 00:41:28',NULL,3,3,12,20,1,'','','','/library/beach-chair-at-vietname-hotel-design_hd7zseguhgg.jpg','/uploads/2017/11/img-5a1e02ab9d0ba.jpg'),(23,'Untitled','',NULL,'',NULL,NULL,NULL,'2017-11-16-023241','/accommodation/2017-11-16-023241','','',NULL,'/library/pexels-photo-271634.jpg','/uploads/2017/11/img-5a0cf9d4a199b.jpg',NULL,'','','','','/library/_mg_0918-2.jpg','N',NULL,NULL,0,'D',NULL,'2017-11-16 02:32:41','2017-11-16 02:37:08','2017-11-29 13:41:18',3,3,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),(24,'test blog post 2',NULL,NULL,'test blog post 2',NULL,NULL,NULL,'2017-11-21-024028','/post/2017-11-21-024028',NULL,'test 2','','/library/_mg_1678.jpg','/uploads/2017/11/img-5a138d4b91f34.jpg',NULL,'','','','','','N',NULL,NULL,0,'A',NULL,'2017-11-21 02:40:28','2017-11-21 03:19:55',NULL,3,3,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),(25,'test','test','','Test','','test','test','test-kirsten','/test-kirsten','Test','test',NULL,'','','','TesT','test','test','','','N',NULL,NULL,0,'D',13,'2018-01-03 22:01:58','2018-01-03 22:40:45','2018-01-07 22:38:44',3,5,0,16,1,'','','','/library/company-logo/logo.png','/uploads/2018/01/img-5a4d530a60dbf.jpg'),(26,'Small suite','small suite',NULL,'small suite',NULL,NULL,NULL,'test','/accommodation/test','test','test',NULL,'/library/test/chris-stephenson-dunedin.jpg','/uploads/2018/01/img-5a4d56099839d.jpg',NULL,'','','','','','N',NULL,NULL,0,'D',NULL,'2018-01-03 22:14:46','2018-01-03 22:16:36','2018-01-07 22:18:44',3,3,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),(27,'Beach','Beach',NULL,'Beach',NULL,NULL,NULL,'beach','/category/beach',NULL,NULL,NULL,'',NULL,NULL,'','','','','','N',NULL,NULL,0,'D',NULL,'2018-01-03 22:26:00','2018-01-03 22:26:13','2018-01-03 22:28:22',3,3,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),(28,'swimming',NULL,NULL,'swimming',NULL,NULL,NULL,'swimming','/post/swimming',NULL,'','<p><img alt=\"\" src=\"/library/beach-chair-at-vietname-hotel-design_hd7zseguhgg.jpg\" /></p>','/library/pexels-photo.jpg','/uploads/2018/01/img-5a4d58b089fa5.jpg',NULL,'','','','','','N',NULL,NULL,0,'D',NULL,'2018-01-03 22:26:20','2018-01-03 22:26:57','2018-01-08 20:03:58',3,3,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),(29,'Payments','','','Payments','','','','payments','/payments','','',NULL,'','','','Payments','','','','','N',NULL,NULL,0,'A',0,'2018-01-22 21:31:50','2018-01-22 21:33:16',NULL,3,3,0,0,1,'','','','',NULL),(30,'Compendium','','','Compendium','','','','compendium','/compendium','','',NULL,'','','','','','','','','N',NULL,NULL,0,'A',12,'2018-02-15 03:13:56','2018-02-15 03:19:03',NULL,3,3,0,0,1,'','','','',NULL),(31,'Untitled',NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-15 03:24:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N',NULL,NULL,0,'D',NULL,'2018-02-15 03:24:46','2018-02-15 03:24:46','2018-02-15 03:24:55',3,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `page_meta_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_meta_index`
--

DROP TABLE IF EXISTS `page_meta_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_meta_index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_meta_index`
--

LOCK TABLES `page_meta_index` WRITE;
/*!40000 ALTER TABLE `page_meta_index` DISABLE KEYS */;
INSERT INTO `page_meta_index` VALUES (1,'Index and Follow (Default)','all','Use this if you want to let search engines do their normal job.'),(2,'Do not Index or Follow','none','This is for sections of a site that shouldn\'t be indexed and shouldn\'t have links followed.'),(3,'Follow, but do not Index','noindex, follow','Search engine robots can follow any links on this page but will not include this page.'),(4,'Index but do not Follow','index, nofollow','Search engine robots should include this page but not follow any links on this page.'),(5,'Do not archive','noarchive','Useful if the content changes frequently: headlines, auctions, etc. The search engine still archives the information, but won\'t show it in the results.');
/*!40000 ALTER TABLE `page_meta_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partner_logos`
--

DROP TABLE IF EXISTS `partner_logos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partner_logos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo_label` varchar(10) DEFAULT NULL,
  `url_label` varchar(100) DEFAULT NULL,
  `photo_path` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `is_active` enum('N','Y') DEFAULT 'Y',
  `rank` int(11) DEFAULT NULL,
  `alt_text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partner_logos`
--

LOCK TABLES `partner_logos` WRITE;
/*!40000 ALTER TABLE `partner_logos` DISABLE KEYS */;
INSERT INTO `partner_logos` VALUES (1,'Logo1','Url1','/library/logo1.png','http://test.com','Y',1,'Partner logo 1'),(2,'Logo2','Url2','/library/fiji.png','http://test.com','Y',2,'Partner logo 2'),(3,'Logo3','Url3','/library/tm.png','http://test.com','Y',3,'Partner logo 3');
/*!40000 ALTER TABLE `partner_logos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_path` varchar(255) DEFAULT NULL COMMENT 'URL to the slide-image relative to the public_html folder (recommended). ',
  `thumb_path` varchar(255) DEFAULT NULL,
  `caption_heading` varchar(255) DEFAULT NULL,
  `caption` longtext,
  `alt_text` varchar(255) DEFAULT NULL,
  `button_label` varchar(30) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `width` smallint(6) NOT NULL,
  `height` smallint(6) NOT NULL,
  `type` enum('N','P') NOT NULL DEFAULT 'N',
  `rank` int(11) DEFAULT NULL COMMENT 'Heirarchy/Order for the slides (lower is greater)',
  `photo_group_id` int(11) DEFAULT NULL COMMENT 'Foreign Key to the slideshow group for this slide',
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `is_group` (`photo_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=398 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo`
--

LOCK TABLES `photo` WRITE;
/*!40000 ALTER TABLE `photo` DISABLE KEYS */;
INSERT INTO `photo` VALUES (87,'/library/cds-8794.jpg',NULL,'','','',NULL,NULL,1500,1000,'N',0,NULL,NULL),(86,'/library/cds-6824-hdr1.jpg',NULL,'','','',NULL,NULL,1500,1000,'N',0,NULL,NULL),(84,'/library/cds-6647-hdr.jpg',NULL,'','',NULL,NULL,NULL,1500,1000,'N',0,NULL,NULL),(352,'/library/slideshows/general/cds-6584-hdr.jpg','/uploads/2017/11/img-5a0baef7514a5.jpg',NULL,'','',NULL,NULL,1500,1000,'N',0,14,''),(348,'/library/slideshows/general/cds-6669-hdr.jpg','/uploads/2017/11/img-5a0baef6ec56d.jpg',NULL,'','',NULL,NULL,1500,1002,'N',0,14,''),(357,'/library/pexels-photo-279746.jpg','/uploads/2017/11/img-5a0baefb125d4.jpg',NULL,'','',NULL,NULL,1500,1000,'N',0,13,''),(356,'/library/_mg_4969.jpg','/uploads/2017/11/img-5a0baefaf0d7b.jpg',NULL,'','',NULL,NULL,1500,1000,'N',0,13,''),(355,'/library/cds-6647-hdr.jpg','/uploads/2017/11/img-5a0baefadae01.jpg',NULL,'','',NULL,NULL,1500,1000,'N',0,13,''),(354,'/library/pexels-photo.jpg','/uploads/2017/11/img-5a0baefa26114.jpg',NULL,'','',NULL,NULL,1500,1000,'N',0,13,''),(351,'/library/cds-8764-hdr.jpg','/uploads/2017/11/img-5a0baef73c3da.jpg',NULL,'','',NULL,NULL,1500,1000,'N',0,14,''),(350,'/library/cds-6824-hdr1.jpg','/uploads/2017/11/img-5a0baef72698f.jpg',NULL,'','',NULL,NULL,1500,1000,'N',0,14,''),(349,'/library/cds-6647-hdr.jpg','/uploads/2017/11/img-5a0baef70fd19.jpg',NULL,'','',NULL,NULL,1500,1000,'N',0,14,''),(85,'/library/cds-6647-hdr.jpg',NULL,'','','',NULL,NULL,1500,1000,'N',0,NULL,NULL),(82,'/library/cds-8764-hdr.jpg',NULL,'','',NULL,NULL,NULL,1500,1000,'N',0,NULL,NULL),(83,'/library/cds-6824-hdr1.jpg',NULL,'','',NULL,NULL,NULL,1500,1000,'N',1,NULL,NULL),(81,'/library/cds-6647-hdr.jpg',NULL,'','',NULL,NULL,NULL,1500,1000,'N',0,NULL,NULL),(80,'/library/cds-6647-hdr.jpg',NULL,'','',NULL,NULL,NULL,1500,1000,'N',0,NULL,NULL),(79,'/library/cds-8770.jpg',NULL,'','',NULL,NULL,NULL,1500,1000,'N',0,NULL,NULL),(88,'/library/cds-8794.jpg',NULL,'','','',NULL,NULL,1500,1000,'N',0,NULL,NULL),(89,'/library/cds-8794.jpg',NULL,'','','',NULL,NULL,1500,1000,'N',0,NULL,NULL),(393,'/library/entrance-to-art-hotel-thailand_rpqxcild3fx.jpg',NULL,'','Accommodation','',NULL,NULL,1500,1000,'N',0,10,NULL),(395,'/library/db-316-philippines-007-3784.jpg',NULL,'','Sun, Sea and Sand','',NULL,NULL,1500,1000,'N',0,18,NULL),(381,'/library/cds-6824-hdr1.jpg','/uploads/2017/12/img-5a31de7a39bf8.jpg',NULL,'','',NULL,NULL,1500,1000,'N',0,12,''),(353,'/library/pexels-photo-271634.jpg','/uploads/2017/11/img-5a0baef9f226b.jpg',NULL,'','',NULL,NULL,1500,1000,'N',0,13,''),(382,'/library/cds-8770.jpg','/uploads/2017/12/img-5a31de7a5012b.jpg',NULL,'','',NULL,NULL,1500,1000,'N',0,12,''),(380,'/library/cds-8764-hdr.jpg','/uploads/2017/12/img-5a31de7a24399.jpg',NULL,'','',NULL,NULL,1500,1000,'N',0,12,''),(379,'/library/maldives-beach-and-island_qjd6fe.jpg','/uploads/2017/12/img-5a31de79b660f.jpg',NULL,'','',NULL,NULL,1500,1000,'N',0,12,''),(378,'/library/pexels-photo-271634.jpg','/uploads/2017/12/img-5a31de798ef47.jpg',NULL,'','',NULL,NULL,1500,1000,'N',0,12,''),(377,'/library/pexels-photo.jpg','/uploads/2017/12/img-5a31de78c8a8f.jpg',NULL,'','',NULL,NULL,1500,1000,'N',0,12,''),(394,'/library/bed-in-a-hotel-room-at-night_rwhe0yx_nge.jpg',NULL,'','Peaceful and secluded','',NULL,NULL,1500,1000,'N',0,17,NULL),(392,'/library/db-316-seychelles-a18-3936.jpg',NULL,'','Welcome to Island Escape Resort','',NULL,NULL,1500,1000,'N',0,1,NULL),(396,'/library/beach-in-antigua_z1b84bad.jpg',NULL,'','About Us','',NULL,NULL,1500,1000,'N',0,19,NULL),(397,'/library/a-row-of-blue-lounge-chairs-and-umbrellas-in-a-tropical-setting_byweqadcso.jpg',NULL,'','Resort Facilities','',NULL,NULL,1500,1000,'N',0,20,NULL);
/*!40000 ALTER TABLE `photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo_group`
--

DROP TABLE IF EXISTS `photo_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key for the slideshow/gallery group',
  `name` varchar(255) NOT NULL,
  `menu_label` varchar(255) DEFAULT NULL,
  `type` enum('C','G','S') NOT NULL DEFAULT 'S' COMMENT 'C - Carousel, G - Gallery, S - Slideshow(Default)',
  `show_in_cms` enum('N','Y') NOT NULL DEFAULT 'Y',
  `show_on_gallery_page` enum('N','Y') NOT NULL DEFAULT 'N',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo_group`
--

LOCK TABLES `photo_group` WRITE;
/*!40000 ALTER TABLE `photo_group` DISABLE KEYS */;
INSERT INTO `photo_group` VALUES (1,'Home Page Slideshow',NULL,'S','Y','N',0),(14,'test gallery3','test gallery3','G','Y','Y',0),(13,'test gallery2','test gallery2','G','Y','Y',0),(12,'test gallery','test gallery','G','Y','Y',0),(18,'Location',NULL,'S','Y','N',0),(10,'Accommodation sildeshow',NULL,'S','Y','N',0),(17,'The Garden Room',NULL,'S','Y','N',0),(19,'About us',NULL,'S','Y','N',0),(20,'Facitilies',NULL,'S','Y','N',0);
/*!40000 ALTER TABLE `photo_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmt_account`
--

DROP TABLE IF EXISTS `pmt_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmt_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(100) NOT NULL,
  `user` varchar(255) NOT NULL,
  `api_key` text NOT NULL,
  `logo_path` varchar(150) DEFAULT NULL,
  `is_live` enum('N','Y') NOT NULL DEFAULT 'N' COMMENT 'N - No, Y - Yes',
  `has_cc` enum('N','Y') NOT NULL DEFAULT 'N' COMMENT 'N - No, Y - Yes',
  `type` enum('dps','paypal') NOT NULL DEFAULT 'dps',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmt_account`
--

LOCK TABLES `pmt_account` WRITE;
/*!40000 ALTER TABLE `pmt_account` DISABLE KEYS */;
INSERT INTO `pmt_account` VALUES (1,'DPS','Tomahawk_Dev','9d11e64e5f26792355ac0e16739a2bbc3d1818a14e4f165c2e307b0b8b117aa0','/graphics/dps-logo.png','N','Y','dps'),(2,'PayPal','pinal-facilitator@tomahawk.co.nz','AbIg9eYsVEB_wp_rSw6p0QbPLtpn-WSLh2vLbbLJgB0pJi-lD5Rtm982zGa9k9lBkRdjyKmUQMiGO9z1','/graphics/paypal-logo.png','N','N','paypal'),(3,'DPS','Tomahawk_Dev','9d11e64e5f26792355ac0e16739a2bbc3d1818a14e4f165c2e307b0b8b117aa0','/graphics/dps-logo.png','Y','Y','dps'),(4,'PayPal','pinal-facilitator@tomahawk.co.nz','AbIg9eYsVEB_wp_rSw6p0QbPLtpn-WSLh2vLbbLJgB0pJi-lD5Rtm982zGa9k9lBkRdjyKmUQMiGO9z1','/graphics/paypal-logo.png','Y','N','paypal');
/*!40000 ALTER TABLE `pmt_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmt_account_has_pmt_credit_card`
--

DROP TABLE IF EXISTS `pmt_account_has_pmt_credit_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmt_account_has_pmt_credit_card` (
  `pmt_account_id` int(11) NOT NULL,
  `pmt_credit_card_id` int(11) NOT NULL,
  PRIMARY KEY (`pmt_account_id`,`pmt_credit_card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmt_account_has_pmt_credit_card`
--

LOCK TABLES `pmt_account_has_pmt_credit_card` WRITE;
/*!40000 ALTER TABLE `pmt_account_has_pmt_credit_card` DISABLE KEYS */;
INSERT INTO `pmt_account_has_pmt_credit_card` VALUES (1,1),(1,2),(1,3),(1,4),(3,1),(3,2);
/*!40000 ALTER TABLE `pmt_account_has_pmt_credit_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmt_credit_card`
--

DROP TABLE IF EXISTS `pmt_credit_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmt_credit_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmt_credit_card`
--

LOCK TABLES `pmt_credit_card` WRITE;
/*!40000 ALTER TABLE `pmt_credit_card` DISABLE KEYS */;
INSERT INTO `pmt_credit_card` VALUES (1,'Visa','/graphics/credit-cards/visa.png'),(2,'MasterCard','/graphics/credit-cards/master-card.png'),(3,'American Express','/graphics/credit-cards/amex.png'),(4,'Diners Club','/graphics/credit-cards/diners.png');
/*!40000 ALTER TABLE `pmt_credit_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmt_history_status`
--

DROP TABLE IF EXISTS `pmt_history_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmt_history_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(60) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `status_name` (`label`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmt_history_status`
--

LOCK TABLES `pmt_history_status` WRITE;
/*!40000 ALTER TABLE `pmt_history_status` DISABLE KEYS */;
INSERT INTO `pmt_history_status` VALUES (1,'New','The request was created.'),(2,'Viewed','The request has been viewed by the client.'),(3,'Success','The client paid the request amount through'),(4,'Notify Admin Success','A notification email was sent successfully to you, informing you that a payment was made.'),(5,'Notify Client Success','A notification email was sent successfully to the client, regarding their payment transaction.\n'),(6,'Declined','Client payment attempt was unsuccessful.'),(7,'Sent','The request was sent successfully to the client.'),(8,'Notify Admin Fail','A notification email was sent successfully to you, informing you that a payment was declined.');
/*!40000 ALTER TABLE `pmt_history_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmt_message`
--

DROP TABLE IF EXISTS `pmt_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmt_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(60) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `status_name` (`label`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmt_message`
--

LOCK TABLES `pmt_message` WRITE;
/*!40000 ALTER TABLE `pmt_message` DISABLE KEYS */;
INSERT INTO `pmt_message` VALUES (1,'New','A newly created request.'),(2,'Viewed by client.','The request has been viewed by the client.'),(3,'Accepted by merchant','Payment Accepted. Your request has been processed through Direct Payment Solutions, and payment was accepted.'),(4,'Declined by merchant','Payment Declined. The request has been processed through Direct Payment Solutions, but the payment was declined. Please try again.'),(5,'Cancelled by client','The client cancelled the request.'),(6,'Deleted','The request has been deleted.'),(7,'Sent','Your request was sent successfully.');
/*!40000 ALTER TABLE `pmt_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmt_payer`
--

DROP TABLE IF EXISTS `pmt_payer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmt_payer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `full_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email_address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmt_payer`
--

LOCK TABLES `pmt_payer` WRITE;
/*!40000 ALTER TABLE `pmt_payer` DISABLE KEYS */;
INSERT INTO `pmt_payer` VALUES (56,'Alpha','Test','Alpha Test','alan@tomahawk.co.nz'),(57,'Alpha','Test','Alpha Test','alan@tomahawk.co.nz'),(58,'Alpha','Test','Alpha Test','alan@tomahawk.co.nz'),(59,'Beta','Test','Beta Test','homersimpsontesting@dispostable.com'),(60,'Beta','Test','Beta Test','alan@tomahawk.co.nz'),(61,'Beta','Test','Beta Test','alan@tomahawk.co.nz'),(62,'Charlie','Test','Charlie Test','alan@tomahawk.co.nz'),(63,'Delta','Test','Delta Test','alan@tomahawk.co.nz'),(64,'Foxtrot','Test','Foxtrot Test','alan@tomahawk.co.nz'),(65,'Golf','Test','Golf Test','alan@tomahawk.co.nz'),(66,'Hotel','Test','Hotel Test','alan@tomahawk.co.nz'),(67,'Ian','Chen','Ian Chen','ian@tomahawk.co.nz'),(68,'Ian','Chen','Ian Chen','ian@tomahawk.co.nz'),(69,'Ian','Chen','Ian Chen','ian@tomahawk.co.nz'),(70,'Ian','Chen','Ian Chen','ian@tomahawk.co.nz');
/*!40000 ALTER TABLE `pmt_payer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmt_request`
--

DROP TABLE IF EXISTS `pmt_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmt_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `public_token` varchar(15) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `status` enum('A','C','D','N','P') DEFAULT 'N' COMMENT 'A - Approved, C - Canceled, D - Declined, N - New, P - Pending',
  `cms_status` enum('A','D') NOT NULL DEFAULT 'A' COMMENT 'A - Active, D - Deleted',
  `reference` varchar(100) DEFAULT NULL,
  `request_url` varchar(255) DEFAULT NULL,
  `email_sent` enum('N','Y') NOT NULL DEFAULT 'N',
  `email_subject` varchar(150) DEFAULT NULL,
  `email_content` text,
  `comments` text,
  `created_on` datetime DEFAULT NULL,
  `approved_on` datetime DEFAULT NULL,
  `declined_on` datetime DEFAULT NULL,
  `pmt_payer_id` int(11) NOT NULL,
  `email_template_id` int(11) NOT NULL,
  `payment_type` enum('F','P') NOT NULL DEFAULT 'F',
  `pmt_transaction_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pmt_request_pmt_transaction_idx` (`pmt_transaction_id`),
  KEY `fk_pmt_payer1_idx` (`pmt_payer_id`),
  KEY `email_template_id` (`email_template_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmt_request`
--

LOCK TABLES `pmt_request` WRITE;
/*!40000 ALTER TABLE `pmt_request` DISABLE KEYS */;
INSERT INTO `pmt_request` VALUES (43,'bj5ts56p85e3hm1',1.00,'P','A','Testing Reference','https://island.netzone.nz/payments/?pid=bj5ts56p85e3hm1','N','Payment Details','<p>Dear Alpha Test,</p>\r\n\r\n<p>&nbsp;NZ$1</p>\r\n\r\n<p><a href=\"https://island.netzone.nz/payments/?pid=bj5ts56p85e3hm1\" target=\"_blank\">https://island.netzone.nz/payments/?pid=bj5ts56p85e3hm1</a></p>','','2018-01-22 21:22:16',NULL,NULL,56,4,'F',56),(44,'s5fb67012p3be4r',1.00,'P','A','Testing Reference 2','https://island.netzone.nz/payments/?pid=s5fb67012p3be4r','N','Payment Details','<p>Dear Alpha Test,</p>\r\n\r\n<p>&nbsp;NZ$1</p>\r\n\r\n<p><a href=\"https://island.netzone.nz/payments/?pid=s5fb67012p3be4r\" target=\"_blank\">https://island.netzone.nz/payments/?pid=s5fb67012p3be4r</a></p>',NULL,'2018-01-22 21:27:23',NULL,NULL,57,4,'P',57),(45,'65n0s4f4m1rp615',1.00,'A','A','Testing Reference 3','https://island.netzone.nz/payments/?pid=65n0s4f4m1rp615','Y','Payment Details TEST','<p>Dear Alpha Test,</p>\r\n\r\n<p>&nbsp;NZ$1</p>\r\n\r\n<p><a href=\"https://island.netzone.nz/payments/?pid=65n0s4f4m1rp615\" target=\"_blank\">https://island.netzone.nz/payments/?pid=65n0s4f4m1rp615</a></p>\r\n\r\n<p><strong>TESTING</strong></p>','Testing Chrome Full Payment','2018-01-22 22:23:31','2018-01-22 23:00:57',NULL,58,4,'F',58),(46,'57m352t6048es2t',1.00,'A','A','Testing Reference 4','https://island.netzone.nz/payments/?pid=57m352t6048es2t','Y','Payment Details TEST','<p>Dear Beta Test,</p>\r\n\r\n<p>&nbsp;NZ$1</p>\r\n\r\n<p><a href=\"https://island.netzone.nz/payments/?pid=57m352t6048es2t\" target=\"_blank\">https://island.netzone.nz/payments/?pid=57m352t6048es2t</a></p>\r\n\r\n<p><strong>TESTING</strong></p>','Testing Chrome Pre Auth Payment','2018-01-22 23:07:17','2018-01-22 23:10:01',NULL,59,4,'P',59),(47,'cnreb546h05r73s',1.00,'A','A','Testing Reference 5','https://island.netzone.nz/payments/?pid=cnreb546h05r73s','Y','Payment Details TEST','<p>Dear Beta Test,</p>\r\n\r\n<p>&nbsp;NZ$1</p>\r\n\r\n<p><a href=\"https://island.netzone.nz/payments/?pid=cnreb546h05r73s\" target=\"_blank\">https://island.netzone.nz/payments/?pid=cnreb546h05r73s</a></p>\r\n\r\n<p><strong>TESTING</strong></p>','Testing DPS Firefox','2018-01-22 23:14:04','2018-01-23 22:11:06',NULL,60,4,'P',60),(48,'hrs4a6cpd451t60',1.00,'P','A','Testing Reference 6','https://island.netzone.nz/payments/?pid=hrs4a6cpd451t60','N','Payment link','<p>Dear Beta Test,</p>\r\n\r\n<p><a href=\"https://island.netzone.nz/payments/?pid=hrs4a6cpd451t60\" target=\"_blank\">https://island.netzone.nz/payments/?pid=hrs4a6cpd451t60</a></p>\r\n\r\n<p><strong>TEST</strong></p>','dsfsd','2018-01-22 23:32:49',NULL,NULL,61,3,'F',61),(49,'8btcpjs7ebs25a6',10.00,'A','A','Testing Reference 7','https://island.netzone.nz/payments/?pid=8btcpjs7ebs25a6','Y','Payment Details Testing','<p>Dear Charlie Test,</p>\r\n\r\n<p><a href=\"https://island.netzone.nz/payments/?pid=8btcpjs7ebs25a6\" target=\"_blank\">https://island.netzone.nz/payments/?pid=8btcpjs7ebs25a6</a></p>\r\n\r\n<p>Test</p>','Testing Pre Auth Chrome','2018-01-23 21:57:35','2018-01-23 21:59:44',NULL,62,1,'P',62),(50,'oaajpb2pjpb72qm',1.00,'A','A','Reference 8','https://island.netzone.nz/payments/?pid=oaajpb2pjpb72qm','Y','Payment Details Testing','<p>Dear Delta Test,</p>\r\n\r\n<p><br />\r\nNZ$1&nbsp;&nbsp;</p>\r\n\r\n<p><br />\r\n<a href=\"https://island.netzone.nz/payments/?pid=oaajpb2pjpb72qm\" target=\"_blank\">https://island.netzone.nz/payments/?pid=oaajpb2pjpb72qm</a></p>\r\n\r\n<p><strong>Test</strong></p>','Testing Edge','2018-01-23 22:17:21','2018-01-23 22:19:49',NULL,63,2,'F',63),(51,'3g8fp56s2t76arf',1.00,'A','A','Reference 9','https://island.netzone.nz/payments/?pid=3g8fp56s2t76arf','Y','Payment Details TEST','<p>Dear Foxtrot Test,</p>\r\n\r\n<p>&nbsp;NZ$1</p>\r\n\r\n<p><a href=\"https://island.netzone.nz/payments/?pid=3g8fp56s2t76arf\" target=\"_blank\">https://island.netzone.nz/payments/?pid=3g8fp56s2t76arf</a></p>\r\n\r\n<p><strong>TESTING test</strong></p>','Testing IE','2018-01-23 22:21:40','2018-01-23 22:23:10',NULL,64,4,'F',64),(52,'tq61f65pqbj0457',1.00,'A','A','Reference 10','https://island.netzone.nz/payments/?pid=tq61f65pqbj0457','Y','Payment Details TEST','<p>Dear Golf Test,</p>\r\n\r\n<p>&nbsp;NZ$1</p>\r\n\r\n<p><a href=\"https://island.netzone.nz/payments/?pid=tq61f65pqbj0457\" target=\"_blank\">https://island.netzone.nz/payments/?pid=tq61f65pqbj0457</a></p>\r\n\r\n<p><strong>TESTING Test</strong></p>','Testing Safari','2018-01-23 22:25:27','2018-01-23 22:40:59',NULL,65,4,'P',65),(53,'a7b0nvhka66a5hh',1.00,'P','A','Reference 11','https://island.netzone.nz/payments/?pid=a7b0nvhka66a5hh','N','Payment Details TEST','<p>Dear Hotel Test,</p>\r\n\r\n<p>&nbsp;NZ$1</p>\r\n\r\n<p><a href=\"https://island.netzone.nz/payments/?pid=a7b0nvhka66a5hh\" target=\"_blank\">https://island.netzone.nz/payments/?pid=a7b0nvhka66a5hh</a></p>\r\n\r\n<p><strong>TESTING test</strong></p>','','2018-01-23 22:42:55',NULL,NULL,66,4,'P',66),(54,'ee5da46c9ka380d',1.00,'A','A','Test','https://island.netzone.nz/payments/?pid=ee5da46c9ka380d','Y','Payment Details','<p>Dear Ian Chen,</p>\r\n\r\n<p>&nbsp;NZ$1</p>\r\n\r\n<p><a href=\"https://island.netzone.nz/payments/?pid=ee5da46c9ka380d\" target=\"_blank\">https://island.netzone.nz/payments/?pid=ee5da46c9ka380d</a></p>','','2018-01-24 01:00:48','2018-01-24 01:28:11',NULL,67,4,'F',67),(55,'4ce7ca6m52a42ec',2.00,'A','A','Test','https://island.netzone.nz/payments/?pid=4ce7ca6m52a42ec','Y','','<p>Dear Ian Chen,</p>\r\n\r\n<p><a href=\"https://island.netzone.nz/payments/?pid=4ce7ca6m52a42ec\" target=\"_blank\">https://island.netzone.nz/payments/?pid=4ce7ca6m52a42ec</a></p>\r\n\r\n<p>&nbsp;</p>','','2018-01-24 01:34:22','2018-01-24 01:34:36',NULL,68,1,'F',68),(56,'26d54755oe8nck8',1.00,'A','A','Test','https://island.netzone.nz/payments/?pid=26d54755oe8nck8','Y','','<p>Dear Ian Chen,</p>\r\n\r\n<p><a href=\"https://island.netzone.nz/payments/?pid=26d54755oe8nck8\" target=\"_blank\">https://island.netzone.nz/payments/?pid=26d54755oe8nck8</a></p>\r\n\r\n<p>&nbsp;</p>','','2018-01-24 01:40:50','2018-01-24 01:41:03',NULL,69,1,'F',69),(57,'8cue7678apo7q46',1.00,'P','A','Test','https://island.netzone.nz/payments/?pid=8cue7678apo7q46','N','','<p>Dear Ian Chen,</p>\r\n\r\n<p><br />\r\nNZ$1&nbsp;&nbsp;</p>\r\n\r\n<p><br />\r\n<a href=\"https://island.netzone.nz/payments/?pid=8cue7678apo7q46\" target=\"_blank\">https://island.netzone.nz/payments/?pid=8cue7678apo7q46</a></p>\r\n\r\n<p>&nbsp;</p>','','2018-01-24 02:14:00',NULL,NULL,70,2,'F',70);
/*!40000 ALTER TABLE `pmt_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmt_request_history`
--

DROP TABLE IF EXISTS `pmt_request_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmt_request_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_time` datetime NOT NULL,
  `label` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `pmt_request_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pmt_request_id` (`pmt_request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=347 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmt_request_history`
--

LOCK TABLES `pmt_request_history` WRITE;
/*!40000 ALTER TABLE `pmt_request_history` DISABLE KEYS */;
INSERT INTO `pmt_request_history` VALUES (251,'2018-01-22 21:22:16','NEW','The request was created.',43),(252,'2018-01-22 21:22:16','SENT','The request was sent successfully to the client.',43),(253,'2018-01-22 21:27:23','NEW','The request was created.',44),(254,'2018-01-22 21:27:23','SENT','The request was sent successfully to the client.',44),(255,'2018-01-22 21:33:29','VIEWED','The request has been viewed by the client.',43),(256,'2018-01-22 21:52:48','SENT','The request was sent successfully to the client.',44),(257,'2018-01-22 21:57:57','VIEWED','The request has been viewed by the client.',44),(258,'2018-01-22 22:23:31','NEW','The request was created.',45),(259,'2018-01-22 22:23:31','SENT','The request was sent successfully to the client.',45),(260,'2018-01-22 22:24:35','VIEWED','The request has been viewed by the client.',45),(261,'2018-01-22 22:28:03','VIEWED','The request has been viewed by the client.',45),(262,'2018-01-22 23:00:57','SUCCESS','The client paid the request amount through',45),(263,'2018-01-22 23:00:57','NOTIFY CLIENT SUCCESS','A notification email was sent successfully to the client, regarding their payment transaction.',45),(264,'2018-01-22 23:00:57','NOTIFY ADMIN SUCCESS','A notification email was sent successfully to you, informing you that a payment was made.',45),(265,'2018-01-22 23:07:17','NEW','The request was created.',46),(266,'2018-01-22 23:07:17','SENT','The request was sent successfully to the client.',46),(267,'2018-01-22 23:09:13','VIEWED','The request has been viewed by the client.',46),(268,'2018-01-22 23:10:01','SUCCESS','The client paid the request amount through',46),(269,'2018-01-22 23:10:01','NOTIFY CLIENT SUCCESS','A notification email was sent successfully to the client, regarding their payment transaction.',46),(270,'2018-01-22 23:10:01','NOTIFY ADMIN SUCCESS','A notification email was sent successfully to you, informing you that a payment was made.',46),(271,'2018-01-22 23:14:04','NEW','The request was created.',47),(272,'2018-01-22 23:14:04','SENT','The request was sent successfully to the client.',47),(273,'2018-01-22 23:14:39','VIEWED','The request has been viewed by the client.',47),(274,'2018-01-22 23:32:49','NEW','The request was created.',48),(275,'2018-01-22 23:32:49','SENT','The request was sent successfully to the client.',48),(276,'2018-01-22 23:33:09','VIEWED','The request has been viewed by the client.',48),(277,'2018-01-22 23:34:41','SENT','The request was sent successfully to the client.',48),(278,'2018-01-22 23:37:18','VIEWED','The request has been viewed by the client.',43),(279,'2018-01-22 23:43:05','VIEWED','The request has been viewed by the client.',47),(280,'2018-01-23 00:28:47','VIEWED','The request has been viewed by the client.',47),(281,'2018-01-23 00:29:53','VIEWED','The request has been viewed by the client.',48),(282,'2018-01-23 00:33:33','VIEWED','The request has been viewed by the client.',47),(283,'2018-01-23 01:29:30','VIEWED','The request has been viewed by the client.',47),(284,'2018-01-23 01:37:04','VIEWED','The request has been viewed by the client.',48),(285,'2018-01-23 01:43:25','VIEWED','The request has been viewed by the client.',47),(286,'2018-01-23 02:27:44','VIEWED','The request has been viewed by the client.',48),(287,'2018-01-23 20:28:43','VIEWED','The request has been viewed by the client.',48),(288,'2018-01-23 21:51:50','VIEWED','The request has been viewed by the client.',48),(289,'2018-01-23 21:57:35','NEW','The request was created.',49),(290,'2018-01-23 21:57:35','SENT','The request was sent successfully to the client.',49),(291,'2018-01-23 21:58:34','VIEWED','The request has been viewed by the client.',49),(292,'2018-01-23 21:59:44','SUCCESS','The client paid the request amount through',49),(293,'2018-01-23 21:59:44','NOTIFY CLIENT SUCCESS','A notification email was sent successfully to the client, regarding their payment transaction.',49),(294,'2018-01-23 21:59:44','NOTIFY ADMIN SUCCESS','A notification email was sent successfully to you, informing you that a payment was made.',49),(295,'2018-01-23 22:09:42','VIEWED','The request has been viewed by the client.',47),(296,'2018-01-23 22:10:38','VIEWED','The request has been viewed by the client.',47),(297,'2018-01-23 22:11:06','SUCCESS','The client paid the request amount through',47),(298,'2018-01-23 22:11:06','NOTIFY CLIENT SUCCESS','A notification email was sent successfully to the client, regarding their payment transaction.',47),(299,'2018-01-23 22:11:06','NOTIFY ADMIN SUCCESS','A notification email was sent successfully to you, informing you that a payment was made.',47),(300,'2018-01-23 22:17:21','NEW','The request was created.',50),(301,'2018-01-23 22:17:21','SENT','The request was sent successfully to the client.',50),(302,'2018-01-23 22:17:56','SENT','The request was sent successfully to the client.',50),(303,'2018-01-23 22:18:33','VIEWED','The request has been viewed by the client.',50),(304,'2018-01-23 22:19:49','SUCCESS','The client paid the request amount through',50),(305,'2018-01-23 22:19:50','NOTIFY CLIENT SUCCESS','A notification email was sent successfully to the client, regarding their payment transaction.',50),(306,'2018-01-23 22:19:50','NOTIFY ADMIN SUCCESS','A notification email was sent successfully to you, informing you that a payment was made.',50),(307,'2018-01-23 22:21:40','NEW','The request was created.',51),(308,'2018-01-23 22:21:40','SENT','The request was sent successfully to the client.',51),(309,'2018-01-23 22:22:26','VIEWED','The request has been viewed by the client.',51),(310,'2018-01-23 22:23:10','SUCCESS','The client paid the request amount through',51),(311,'2018-01-23 22:23:10','NOTIFY CLIENT SUCCESS','A notification email was sent successfully to the client, regarding their payment transaction.',51),(312,'2018-01-23 22:23:10','NOTIFY ADMIN SUCCESS','A notification email was sent successfully to you, informing you that a payment was made.',51),(313,'2018-01-23 22:25:27','NEW','The request was created.',52),(314,'2018-01-23 22:25:27','SENT','The request was sent successfully to the client.',52),(315,'2018-01-23 22:38:29','VIEWED','The request has been viewed by the client.',52),(316,'2018-01-23 22:39:11','VIEWED','The request has been viewed by the client.',52),(317,'2018-01-23 22:40:59','SUCCESS','The client paid the request amount through',52),(318,'2018-01-23 22:40:59','NOTIFY CLIENT SUCCESS','A notification email was sent successfully to the client, regarding their payment transaction.',52),(319,'2018-01-23 22:40:59','NOTIFY ADMIN SUCCESS','A notification email was sent successfully to you, informing you that a payment was made.',52),(320,'2018-01-23 22:42:55','NEW','The request was created.',53),(321,'2018-01-23 22:42:55','SENT','The request was sent successfully to the client.',53),(322,'2018-01-23 22:43:11','VIEWED','The request has been viewed by the client.',53),(323,'2018-01-24 01:00:48','NEW','The request was created.',54),(324,'2018-01-24 01:00:48','SENT','The request was sent successfully to the client.',54),(325,'2018-01-24 01:13:29','VIEWED','The request has been viewed by the client.',53),(326,'2018-01-24 01:27:56','VIEWED','The request has been viewed by the client.',54),(327,'2018-01-24 01:28:11','SUCCESS','The client paid the request amount through',54),(328,'2018-01-24 01:28:11','NOTIFY CLIENT SUCCESS','A notification email was sent successfully to the client, regarding their payment transaction.',54),(329,'2018-01-24 01:28:11','NOTIFY ADMIN SUCCESS','A notification email was sent successfully to you, informing you that a payment was made.',54),(330,'2018-01-24 01:34:22','NEW','The request was created.',55),(331,'2018-01-24 01:34:22','SENT','The request was sent successfully to the client.',55),(332,'2018-01-24 01:34:25','VIEWED','The request has been viewed by the client.',55),(333,'2018-01-24 01:34:36','SUCCESS','The client paid the request amount through',55),(334,'2018-01-24 01:40:50','NEW','The request was created.',56),(335,'2018-01-24 01:40:50','SENT','The request was sent successfully to the client.',56),(336,'2018-01-24 01:40:54','VIEWED','The request has been viewed by the client.',56),(337,'2018-01-24 01:41:03','SUCCESS','The client paid the request amount through',56),(338,'2018-01-24 01:41:03','NOTIFY CLIENT SUCCESS','A notification email was sent successfully to the client, regarding their payment transaction.',56),(339,'2018-01-24 01:41:03','NOTIFY ADMIN SUCCESS','A notification email was sent successfully to you, informing you that a payment was made.',56),(340,'2018-01-24 01:47:48','VIEWED','The request has been viewed by the client.',53),(341,'2018-01-24 01:48:45','VIEWED','The request has been viewed by the client.',54),(342,'2018-01-24 02:13:39','VIEWED','The request has been viewed by the client.',56),(343,'2018-01-24 02:14:00','NEW','The request was created.',57),(344,'2018-01-24 02:14:00','SENT','The request was sent successfully to the client.',57),(345,'2018-01-24 02:14:03','VIEWED','The request has been viewed by the client.',57),(346,'2018-01-26 01:30:02','VIEWED','The request has been viewed by the client.',43);
/*!40000 ALTER TABLE `pmt_request_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmt_settings`
--

DROP TABLE IF EXISTS `pmt_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmt_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `encryption_key` varchar(40) NOT NULL,
  `notification_email_address` varchar(255) DEFAULT NULL,
  `terms_and_conditions` text,
  `success_message` text,
  `fail_message` text,
  `success_email_body` text,
  `fail_email_body` text,
  `processed_message` text,
  `payment_type` enum('F','P') NOT NULL DEFAULT 'F' COMMENT 'F: Full payment. P: pre-auth payment',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmt_settings`
--

LOCK TABLES `pmt_settings` WRITE;
/*!40000 ALTER TABLE `pmt_settings` DISABLE KEYS */;
INSERT INTO `pmt_settings` VALUES (1,'aafd03ccdce3520545c5f1c5599f6e60','ian@tomahawk.co.nz','<p><strong>Payment &ndash; </strong>A deposit of 25% of the total cost of your booking plus full payment of the itinerary planning fee is required once your bookings have been confirmed. The balance is then payable 42 days prior to the first day of your New Zealand itinerary. If a booking is made within 42 days of the first day of your New Zealand itinerary, full payment is required at the time of booking confirmation.</p>\r\n\r\n<p>Payments can either be made by credit card via the secure server on our web site or by direct crediting our bank account. Please be aware that for if you wish to make your payment by either Visa or MasterCard a 1.5% credit card fee will be applicable. If you would prefer to make your payment by American Express a 2.5% credit card fee will be applicable.</p>\r\n\r\n<p>Alternatively, you can choose to pay by direct credit into our bank account. We will absorb the cost of the deposit into our bank account; however any applicable fees charged by your bank will be your responsibility.</p>\r\n\r\n<p><strong>Cancellations Charges &ndash; </strong>If you have to cancel all, or part of your holiday for any reason, the following cancellation fees are applicable. For cancellation more than 30 days prior to your arrival in New Zealand: 25% (deposit amount); 8-30 days prior to your arrival: 40%; 7 days or less: 100%.<br />\r\nImportant note - Experience New Zealand Travel recommends that you obtain personal travel insurance to cover any cancellation of part or all of your holiday.</p>\r\n\r\n<p><strong>Amendment Fee:</strong> An amendment fee of NZ$20 per amendment will apply when a confirmed booking is changed.</p>\r\n\r\n<p><strong>ENZTL Responsibilities </strong>- ENZTL operate the experiencenz.com web site as agents for the owner/operators identified in the web site. Whilst we have visited (and do visit on a regular basis) all of the properties on the web site, we are not responsible for the individual properties. We are not liable for any loss or damage caused by any failure or improper performance by any of the owner/operators. However, in the event that a owner/operator cannot provide you with contracted accommodation, we will use our best endeavours to provide you with alternative accommodation, but otherwise we shall have no liability to you.</p>','<p><span style=\"font-size: 26px;\"><strong>Payment Success!</strong></span></p>\r\n\r\n<p>Your payment request was processed successfully. A confirmation email has been sent to <u>{email_address}</u></p>\r\n\r\n<p>Thank you for your booking.</p>','<p><span style=\"font-size: 26px;\"><strong>Payment Failed</strong></span></p>\r\n\r\n<p>Unfortunately, your payment was not processed.<br />\r\nThe response from your bank was <strong>{response_text}</strong>.</p>\r\n\r\n<p>Please check your email as you&#39;ll be emailed a new link to try again.</p>','<p><strong>Dear&nbsp;{full_name},</strong></p>\r\n\r\n<p>Thank you for making payment for our request on&nbsp;{request_date}.</p>\r\n\r\n<p>The amount of {currency_symbol}{amount} was successfully transferred to our bank account.</p>\r\n\r\n<p><strong>Date requested:</strong>&nbsp;{request_date}<br />\r\n<strong>Requested by:</strong>&nbsp;{from_name}<br />\r\n<strong>Amount:</strong>&nbsp;{currency_symbol}{amount}<br />\r\n<strong>Payment date:</strong>&nbsp;{payment_date}</p>\r\n\r\n<p><strong>Payment SUCCESSFUL</strong></p>\r\n\r\n<p>Please keep this email for your records.</p>\r\n\r\n<p>If you have any further queries, please contact us.</p>\r\n\r\n<p>Kind regards,<br />\r\n{from_name}</p>','<p><strong>Dear&nbsp;{full_name},</strong></p>\r\n\r\n<p>Thank you for visiting our payment page and trying to make payment. Unfortunately the payment was declined.</p>\r\n\r\n<p>Amount of {currency_symbol}{amount} &nbsp;is still withstanding.</p>\r\n\r\n<p><strong>Date requested:</strong>&nbsp;{request_date}<br />\r\n<strong>Requested by:</strong>&nbsp;{from_name}<br />\r\n<strong>Amount:</strong>&nbsp;{currency_symbol}{amount}<br />\r\n<strong>Payment date:</strong>&nbsp;{payment_date}</p>\r\n\r\n<p><strong>Payment FAILED</strong></p>\r\n\r\n<p>To re-process payment, please visit this link:</p>\r\n\r\n<p><a href=\"{payment_url}\">{payment_url}</a></p>\r\n\r\n<p>If you have any issues with payment, please contact us.</p>\r\n\r\n<p>Kind regards,<br />\r\n{from_name}</p>','<p><span style=\"font-size: 26px;\"><strong>Payment Transaction Already Processed</strong></span></p>\r\n\r\n<p>The payment request you tried to process has already been processed.</p>\r\n\r\n<p>You&#39;re seeing this page because the transaction request you tried to process has previously been completed successfully or canceled.</p>','F');
/*!40000 ALTER TABLE `pmt_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmt_template`
--

DROP TABLE IF EXISTS `pmt_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmt_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) NOT NULL,
  `from_email_address` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `content` text,
  `logo_path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmt_template`
--

LOCK TABLES `pmt_template` WRITE;
/*!40000 ALTER TABLE `pmt_template` DISABLE KEYS */;
INSERT INTO `pmt_template` VALUES (1,'Template 4','','','','','<p>Dear {first_name} {last_name},</p>\r\n\r\n<p>{payment_link}</p>\r\n\r\n<p>&nbsp;</p>','/graphics/logo-sm.png'),(2,'Template 3','','','','','<p>Dear {full_name},</p>\r\n\r\n<p><br />\r\nNZ${payment_amount}&nbsp;&nbsp;</p>\r\n\r\n<p><br />\r\n{payment_link}</p>\r\n\r\n<p>&nbsp;</p>','/graphics/logo-sm.png'),(3,'Template 2','','','','Payment link','<p>Dear {first_name} {last_name},</p>\r\n\r\n<p>{payment_link}</p>\r\n\r\n<p>&nbsp;</p>','/graphics/logo-drivingnz.png'),(4,'Template 1','','','','Payment Details','<p>Dear {full_name},</p>\r\n\r\n<p>&nbsp;NZ${payment_amount}</p>\r\n\r\n<p>{payment_link}</p>','/graphics/logo-drivingnz.png');
/*!40000 ALTER TABLE `pmt_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmt_template_tag`
--

DROP TABLE IF EXISTS `pmt_template_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmt_template_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmt_template_tag`
--

LOCK TABLES `pmt_template_tag` WRITE;
/*!40000 ALTER TABLE `pmt_template_tag` DISABLE KEYS */;
INSERT INTO `pmt_template_tag` VALUES (1,'First Name','first_name','Recipient\'s first name.'),(2,'Last Name','last_name','Recipient\'s last name.'),(3,'Full Name','full_name','Recipient\'s full name.'),(4,'Payment Amount','payment_amount','Amount of the payment request.'),(5,'Payment_Link','payment_link','Link to the payment page.'),(6,'Currency Symbol','currency_symbol','Currency Symbol displayed before any amount');
/*!40000 ALTER TABLE `pmt_template_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmt_transaction`
--

DROP TABLE IF EXISTS `pmt_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmt_transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount_settlement` decimal(10,2) DEFAULT '0.00',
  `auth_code` varchar(250) DEFAULT NULL,
  `cc_name` varchar(250) DEFAULT NULL,
  `cc_holder_name` varchar(250) DEFAULT NULL,
  `cc_number` varchar(200) DEFAULT NULL,
  `cc_date_expire` varchar(100) DEFAULT NULL,
  `dps_billing_id` varchar(20) DEFAULT NULL,
  `dps_ref` varchar(200) DEFAULT NULL,
  `type` varchar(100) NOT NULL,
  `data1` varchar(250) DEFAULT NULL,
  `paypal_payer_id` varchar(50) DEFAULT NULL,
  `paypal_payer_status` varchar(50) DEFAULT NULL,
  `currency_settlement` varchar(100) DEFAULT 'NZD',
  `client_ip` varchar(150) DEFAULT NULL,
  `txn_id` varchar(50) DEFAULT NULL,
  `currency_input` varchar(100) DEFAULT NULL,
  `merchant_ref` varchar(255) DEFAULT NULL,
  `response_text` varchar(255) DEFAULT NULL,
  `mac_address` varchar(255) DEFAULT NULL,
  `response_url` mediumtext NOT NULL,
  `date_processsed` datetime DEFAULT NULL,
  `pmt_account_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmt_transaction`
--

LOCK TABLES `pmt_transaction` WRITE;
/*!40000 ALTER TABLE `pmt_transaction` DISABLE KEYS */;
INSERT INTO `pmt_transaction` VALUES (56,1.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'NZD',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,2),(57,1.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'NZD',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0),(58,1.00,'120056','Visa','VISA','411111........11','0118','0000030339237968','00000003506dbd16','Purchase','65n0s4f4m1rp615',NULL,NULL,'','114.23.241.67','5a666cf05f80e','NZD','PMT-5a666cf05f7cb','APPROVED','','000003013022690903a1d70e80bc39b1','2018-01-22 23:00:57',3),(59,1.00,'121000','Visa','VISA','411111........11','0118','0000030339244751','00000003506e23a8','Auth','57m352t6048es2t',NULL,NULL,'','114.23.241.67','5a666f3693a94','NZD','PMT-5a666f3693a5a','APPROVED','','0000030130228762032692237f79bf9b','2018-01-22 23:10:01',3),(60,1.00,'111106','Diners','TEST','360000........08','0118','0000030339786271','00000003508e52b8','Auth','cnreb546h05r73s',NULL,NULL,'','114.23.241.67','5a67b2ed7338f','NZD','PMT-5a67b2ed7334c','APPROVED','','0000030130390538035119285ca95504','2018-01-23 22:11:06',1),(61,1.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'NZD',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,2),(62,10.00,'105943','Amex','TEST','377400........15','0118','0000030339778051','00000003508dd9c7','Auth','8btcpjs7ebs25a6',NULL,NULL,'','114.23.241.67','5a67b04219f42','NZD','PMT-5a67b04219ef6','APPROVED','','000003013038851103a9a2a0814b2900','2018-01-23 21:59:44',1),(63,1.00,'111949','MasterCard','TEST','543111........11','0118','0000030339792557','00000003508ead39','Purchase','oaajpb2pjpb72qm',NULL,NULL,'','114.23.241.67','5a67b4e13b677','NZD','PMT-5a67b4e13b634','APPROVED','','000003013039215303f9a35ccff84cb2','2018-01-23 22:19:49',1),(64,1.00,'112309','Amex','TEST','376000........06','0118','0000030339794999','00000003508ed2b6','Purchase','3g8fp56s2t76arf',NULL,NULL,'','114.23.241.67','5a67b5bf26fe1','NZD','PMT-5a67b5bf26f9d','APPROVED','','000003013039283503ebcb55080b079d','2018-01-23 22:23:10',1),(65,1.00,'114058','Diners','TEST','360000........08','0118','0000030339807978','00000003508f92c8','Auth','tq61f65pqbj0457',NULL,NULL,'','114.23.241.67','5a67b9b85631c','NZD','PMT-5a67b9b8562b6','APPROVED','','000003013039591503ef91e12151a283','2018-01-23 22:40:59',3),(66,1.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'NZD',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,2),(67,1.00,'142810','Visa','ASDF FEF','411111........11','0118','0000110003094022','0000000b011005b9','Purchase','ee5da46c9ka380d',NULL,NULL,'','114.23.241.67','5a67e123ebc90','NZD','PMT-5a67e123ebc4d','APPROVED','2BC20210','00001100011151900b88609cf6fd2b82','2018-01-24 01:28:11',3),(68,2.00,'143435','Visa','ASDF FEF','411111........11','0118','0000110003098576','0000000b01104933','Purchase','4ce7ca6m52a42ec',NULL,NULL,'','114.23.241.67','5a67e2a6a7f52','NZD','PMT-5a67e2a6a7f0f','APPROVED','2BC20210','00001100011165470b047b7a8b356669','2018-01-24 01:34:36',1),(69,1.00,'144103','Visa','ASDF FEF','411111........11','0118','0000110003103205','0000000b01108a2d','Purchase','26d54755oe8nck8',NULL,NULL,'','114.23.241.67','5a67e42a0443a','NZD','PMT-5a67e42a043fe','APPROVED','2BC20210','00001100011179300b854228fb64abe9','2018-01-24 01:41:03',1),(70,1.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'NZD',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,2);
/*!40000 ALTER TABLE `pmt_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `redirect`
--

DROP TABLE IF EXISTS `redirect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `redirect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_url` longtext NOT NULL,
  `new_url` longtext NOT NULL,
  `status_code` int(11) NOT NULL,
  `status` enum('A','H','D') NOT NULL DEFAULT 'H',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redirect`
--

LOCK TABLES `redirect` WRITE;
/*!40000 ALTER TABLE `redirect` DISABLE KEYS */;
INSERT INTO `redirect` VALUES (1,'http://www.maramavineyard.com/vineyard','http://www.maramavineyard.com/gallery',301,'D');
/*!40000 ALTER TABLE `redirect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_links`
--

DROP TABLE IF EXISTS `social_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(100) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `icon_path` varchar(255) DEFAULT NULL,
  `second_icon_path` varchar(255) DEFAULT NULL,
  `icon_alt` varchar(255) DEFAULT NULL,
  `widget_blob` mediumtext,
  `placement` enum('L','R') DEFAULT 'L',
  `use_icon` enum('0','1') DEFAULT '0',
  `icon_cls` varchar(255) DEFAULT NULL,
  `element_class` varchar(100) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `has_widget` enum('0','1') DEFAULT '0',
  `is_external` enum('0','1') DEFAULT '0',
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_links`
--

LOCK TABLES `social_links` WRITE;
/*!40000 ALTER TABLE `social_links` DISABLE KEYS */;
INSERT INTO `social_links` VALUES (1,'Facebook','https://www.facebook.com/','Join us on Facebook','/themes/global/graphics/social-icons/icon-facebook.png',NULL,'Join us on Facebook',NULL,'L','1','fa fa-facebook',NULL,1,'0','1','1'),(2,'Instagram','https://www.instagram.com/?hl=en','Follow us on Instagram','/themes/global/graphics/social-icons/icon-instagram.png',NULL,'Follow us on Instagram',NULL,'L','1','fa fa-instagram',NULL,2,'0','1','1'),(3,'Twitter','https://twitter.com/?lang=en','Follow us on Twitter','/themes/global/graphics/social-icons/icon-twitter.png',NULL,'Follow us on Twitter',NULL,'L','1','fa fa-twitter',NULL,4,'0','1','1'),(4,'Youtube','https://www.youtube.com','Join us on Youtube','/themes/global/graphics/social-icons/icon-youtube.png',NULL,'Join us on Youtube',NULL,'L','1','fa fa-youtube',NULL,3,'0','1','1'),(5,'Google+','https://plus.google.com/discover','Join us on Google+','/themes/global/graphics/social-icons/icon-googleplus.png',NULL,'Join us on Google+',NULL,'L','1','fa fa-google-plus',NULL,5,'0','1','1'),(6,'Pinterest','https://www.pinterest.nz/','Join us on Pinterest','/themes/global/graphics/social-icons/icon-pinterest.png',NULL,'Join us on Pinterest',NULL,'L','1','fa fa-pinterest-p',NULL,6,'0','1','1');
/*!40000 ALTER TABLE `social_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templates_normal`
--

DROP TABLE IF EXISTS `templates_normal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templates_normal` (
  `tmpl_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key for template',
  `tmpl_name` varchar(100) DEFAULT NULL COMMENT 'Template name',
  `tmpl_path` varchar(100) DEFAULT NULL COMMENT 'Template URL (i.e. ''default'', ''shop'', ''googlemap'' etc). It is recommended that you leave the extension up to the application/code.',
  `tmpl_previewimg` varchar(100) DEFAULT NULL,
  `tmpl_nummoduletags` int(11) NOT NULL DEFAULT '0',
  `tmpl_showincms` varchar(1) NOT NULL DEFAULT 'Y',
  `tmpl_mobile` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`tmpl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templates_normal`
--

LOCK TABLES `templates_normal` WRITE;
/*!40000 ALTER TABLE `templates_normal` DISABLE KEYS */;
INSERT INTO `templates_normal` VALUES (1,'Default','index.html',NULL,0,'Y',NULL),(2,'Compendium','compendium.html',NULL,0,'Y',NULL);
/*!40000 ALTER TABLE `templates_normal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonial`
--

DROP TABLE IF EXISTS `testimonial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonial` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key for the testimonial',
  `person` varchar(100) DEFAULT NULL COMMENT 'Who represents this testimonial',
  `company` varchar(100) NOT NULL,
  `detail` longtext COMMENT 'The testimonial itself',
  `status` enum('A','D','H') DEFAULT 'H' COMMENT 'Boolean for whether or not the current testimonial should be displayed. (0 = off, 1=on)',
  `rank` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonial`
--

LOCK TABLES `testimonial` WRITE;
/*!40000 ALTER TABLE `testimonial` DISABLE KEYS */;
INSERT INTO `testimonial` VALUES (10,'The Snow Family','','We absolutely loved every minute of our stay at ResBook Resort and look forward to our return vacation next year!','A',0),(11,'Test person 2','','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.','D',0),(12,'Test person 3','','Sed egestas, ante et vulputate volutpat, eros pede semper est, vitae luctus metus libero eu augue. Morbi purus libero, faucibus adipiscing, commodo quis, gravida id, est. Sed lectus. Praesent elementum hendrerit tortor. Sed semper lorem at felis. Vestibulum volutpat, lacus a ultrices sagittis, mi neque euismod dui, eu pulvinar nunc sapien ornare nisl. Phasellus pede arcu, dapibus eu, fermentum et, dapibus sed, urna.','D',0),(13,'test','','test','A',0);
/*!40000 ALTER TABLE `testimonial` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-19 11:30:05
