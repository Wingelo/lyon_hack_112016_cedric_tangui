-- MySQL dump 10.13  Distrib 5.7.16, for Linux (x86_64)
--
-- Host: localhost    Database: symfony
-- ------------------------------------------------------
-- Server version	5.7.16-0ubuntu0.16.04.1

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fos_user`
--

DROP TABLE IF EXISTS `fos_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fos_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `pays` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_957A6479C05FB297` (`confirmation_token`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fos_user`
--

LOCK TABLES `fos_user` WRITE;
/*!40000 ALTER TABLE `fos_user` DISABLE KEYS */;
INSERT INTO `fos_user` VALUES (1,'test','test','test','test',1,'scnoo3r0nnkw4wkckkgss4ww4sc8s08','$2y$13$scnoo3r0nnkw4wkckkgssuiBging40AKKc4y4AUlyiwExyfkHNaJ2','2016-11-10 02:19:37',0,0,NULL,NULL,NULL,'a:1:{i:0;s:10:\"ROLE_ADMIN\";}',0,NULL,'France','Lyon','ced','gamrat'),(2,'wingel','wingel','cedric_gamrat@gmail.com','cedric_gamrat@gmail.com',1,'e74pjcvsrs0kg88g8ggow00kg4ksggc','$2y$13$e74pjcvsrs0kg88g8ggowuDhb5Cgx8ua45JHGX3T4WARorrg8Xv5K','2016-11-10 01:50:42',0,0,NULL,NULL,NULL,'a:0:{}',0,NULL,'France','Lyon','Gamrat','Cédric'),(3,'flskjd','flskjd','tangu@gmdf.col','tangu@gmdf.col',1,'128ydan4qyxcckkwo44g8cgo44g4cck','$2y$13$128ydan4qyxcckkwo44g8OrVVbyEp0qIW50cxI.eo6wSmlQlynYUW','2016-11-09 21:27:07',0,0,NULL,NULL,NULL,'a:0:{}',0,NULL,'France','Lyon','fsdsd','fdsfds'),(4,'ppp','ppp','lol@gmdf.col','lol@gmdf.col',1,'1f4b5m0xjy1w0w8kw80cskkcg04w0s8','$2y$13$1f4b5m0xjy1w0w8kw80cseMmjCIpv6uZ2Ms9gft1koafmUuoZ4Cdi','2016-11-09 21:35:00',0,0,NULL,NULL,NULL,'a:0:{}',0,NULL,'France','Lyon','fsdsd','fdsfds'),(5,'monkymoi','monkymoi','cedric.gamrat@gmail.com','cedric.gamrat@gmail.com',1,'ct89s8x9h1c0wwkoogssg0884gckw4s','$2y$13$ct89s8x9h1c0wwkoogssgu5urSLyb1I/Sbn.b8tMyYX57ZuqAj8K6','2016-11-10 01:45:58',0,0,NULL,NULL,NULL,'a:0:{}',0,NULL,'France','Villeurbanne','Gamrat','Cédric'),(6,'monkymp','monkymp','cedric.garat@gmail.com','cedric.garat@gmail.com',1,'2mvqj38ms944koswgk0c4co8kssg488','$2y$13$2mvqj38ms944koswgk0c4OU6WEl13RiqRFow08vFm0BW1tbWfkh7G','2016-11-10 01:47:19',0,0,NULL,NULL,NULL,'a:0:{}',0,NULL,'France','Villeurbanne','Gamrat','Cédric'),(7,'popopopo','popopopo','tangu@gmdf.colp','tangu@gmdf.colp',1,'j6hg9quz6hc8k0o00w8o480s0sgcw0o','$2y$13$j6hg9quz6hc8k0o00w8o4u15DyRayVpoE.HW4m62nxS6LzWoSgGfm','2016-11-10 01:51:16',0,0,NULL,NULL,NULL,'a:0:{}',0,NULL,'Villeurbanne','Villeurbanne','fsdsd','Cédric');
/*!40000 ALTER TABLE `fos_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-10  2:22:27
