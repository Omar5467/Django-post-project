-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: dbposts
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add posts',7,'add_posts'),(26,'Can change posts',7,'change_posts'),(27,'Can delete posts',7,'delete_posts'),(28,'Can view posts',7,'view_posts');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (4,'pbkdf2_sha256$870000$StX5zf62e9NiyexwbLMnnn$iH3k9d+y8XxFECwhTcANsRDbR0JeQH4dhFTOgfE6K1w=','2025-01-01 11:08:15.216484',1,'farhan','','','',1,1,'2024-12-22 08:54:19.421984'),(5,'pbkdf2_sha256$870000$e8OqTJNZP57vCbHgcJEUIS$8a9F39B4svTDw52s6qmkGJk1ofiMADkiaMveXb3YZnA=','2024-12-23 09:01:03.214608',0,'ali','','','',0,1,'2024-12-22 11:01:06.093106');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (5,'2024-12-22 08:55:04.557517','3','admin',3,'',4,4),(6,'2024-12-22 08:55:04.557560','2','ismail',3,'',4,4),(7,'2024-12-22 08:55:04.557585','1','omar',3,'',4,4),(8,'2024-12-23 08:28:19.165074','3','my new post',3,'',7,4),(9,'2024-12-23 08:28:19.165127','2','My second post',3,'',7,4),(10,'2024-12-23 08:28:19.165154','1','My first post',3,'',7,4),(11,'2025-01-01 07:06:22.312662','6','452',3,'',7,4),(12,'2025-01-01 07:06:37.174284','7','New post',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',7,4),(13,'2025-01-01 07:10:37.479613','8','fadf',3,'',7,4);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'posts','posts'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-12-19 09:06:19.866205'),(2,'auth','0001_initial','2024-12-19 09:06:20.179683'),(3,'admin','0001_initial','2024-12-19 09:06:20.257515'),(4,'admin','0002_logentry_remove_auto_add','2024-12-19 09:06:20.262323'),(5,'admin','0003_logentry_add_action_flag_choices','2024-12-19 09:06:20.266666'),(6,'contenttypes','0002_remove_content_type_name','2024-12-19 09:06:20.313214'),(7,'auth','0002_alter_permission_name_max_length','2024-12-19 09:06:20.350744'),(8,'auth','0003_alter_user_email_max_length','2024-12-19 09:06:20.364431'),(9,'auth','0004_alter_user_username_opts','2024-12-19 09:06:20.369022'),(10,'auth','0005_alter_user_last_login_null','2024-12-19 09:06:20.407354'),(11,'auth','0006_require_contenttypes_0002','2024-12-19 09:06:20.409946'),(12,'auth','0007_alter_validators_add_error_messages','2024-12-19 09:06:20.414914'),(13,'auth','0008_alter_user_username_max_length','2024-12-19 09:06:20.451704'),(14,'auth','0009_alter_user_last_name_max_length','2024-12-19 09:06:20.493105'),(15,'auth','0010_alter_group_name_max_length','2024-12-19 09:06:20.503096'),(16,'auth','0011_update_proxy_permissions','2024-12-19 09:06:20.508042'),(17,'auth','0012_alter_user_first_name_max_length','2024-12-19 09:06:20.548071'),(18,'sessions','0001_initial','2024-12-19 09:06:20.567994'),(19,'posts','0001_initial','2024-12-19 09:13:41.666359'),(20,'posts','0002_posts_banner','2024-12-22 06:33:52.236630'),(21,'posts','0003_posts_author','2024-12-23 08:51:14.301455');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('27yg0csqo9j8es5j9zpybo8sxibzup7b','.eJxVjMsOwiAQRf-FtSHDG1y69xvIAINUDU1KuzL-uzbpQrf3nHNfLOK2trgNWuJU2JlpdvrdEuYH9R2UO_bbzPPc12VKfFf4QQe_zoWel8P9O2g42rcGktoprSAkRwpNLZSTIoEKPBYKgMIFm2oVWboC1oH1XmWjpfGQjGHvD-MFN2w:1tPgrv:h1cbgKPY0Ujii5FywBwUDYRzvmWlU_ycbArOB_Vkljc','2025-01-06 11:45:03.867932'),('3jw2geq3nn5lfa5qx59px7qhez6lu7v2','.eJxVjMsOwiAQRf-FtSHDG1y69xvIAINUDU1KuzL-uzbpQrf3nHNfLOK2trgNWuJU2JlpdvrdEuYH9R2UO_bbzPPc12VKfFf4QQe_zoWel8P9O2g42rcGktoprSAkRwpNLZSTIoEKPBYKgMIFm2oVWboC1oH1XmWjpfGQjGHvD-MFN2w:1tSwaF:VDy9np9u7IjVaINJxFsfGUg6iAeJP8-uzYkbuEkokYU','2025-01-15 11:08:15.218102'),('4xpy037lel4jll7jkjrhcwbcy4xky0aa','.eJxVjMsOwiAQRf-FtSHDG1y69xvIAINUDU1KuzL-uzbpQrf3nHNfLOK2trgNWuJU2JlpdvrdEuYH9R2UO_bbzPPc12VKfFf4QQe_zoWel8P9O2g42rcGktoprSAkRwpNLZSTIoEKPBYKgMIFm2oVWboC1oH1XmWjpfGQjGHvD-MFN2w:1tSuv7:Yf7Z4CpnVu_uoRmkB_xx6z6cNNxcQTFgniJ42VB3H-A','2025-01-15 09:21:41.533497'),('hjlk23zlnuhbr23a3ap95hdt9qa9nejl','.eJxVjEEOwiAQRe_C2pABYSou3fcMZIBBqgaS0q6Md7dNutDtf-_9t_C0LsWvnWc_JXEVSpx-t0DxyXUH6UH13mRsdZmnIHdFHrTLsSV-3Q7376BQL1sNloccgZx1Q75gyBogGIvWJmbDDCombR1GBlaE5uxyQL01aDg7CuLzBepAOHE:1tOCeN:xVNFT71PVeHPog0_P5e_ZjC795UmIr7vNbJhXgYFyog','2025-01-02 09:16:55.852411'),('np8ntgni7jvl7p6leeumnd7s41mh33kr','.eJxVjEEOwiAQRe_C2pABYSou3fcMZIBBqgaS0q6Md7dNutDtf-_9t_C0LsWvnWc_JXEVSpx-t0DxyXUH6UH13mRsdZmnIHdFHrTLsSV-3Q7376BQL1sNloccgZx1Q75gyBogGIvWJmbDDCombR1GBlaE5uxyQL01aDg7CuLzBepAOHE:1tOEn8:8-_A49donV1q_18cUwwabFoC6jX2SiJH5wSHW-CasLQ','2025-01-02 11:34:06.163778'),('sh5to838ovevo6yrhv309g9u3qy7s4c4','.eJxVjMsOwiAQRf-FtSHDG1y69xvIAINUDU1KuzL-uzbpQrf3nHNfLOK2trgNWuJU2JlpdvrdEuYH9R2UO_bbzPPc12VKfFf4QQe_zoWel8P9O2g42rcGktoprSAkRwpNLZSTIoEKPBYKgMIFm2oVWboC1oH1XmWjpfGQjGHvD-MFN2w:1tPcA5:tjvFrevGo125bEE3hMd26M8K5RFO1u29IZ0sBjLRL4M','2025-01-06 06:43:29.357557'),('u6a18h95zkdxn0z2ofnkg7n5n2nmcuzo','.eJxVjMsOwiAQRf-FtSHDG1y69xvIAINUDU1KuzL-uzbpQrf3nHNfLOK2trgNWuJU2JlpdvrdEuYH9R2UO_bbzPPc12VKfFf4QQe_zoWel8P9O2g42rcGktoprSAkRwpNLZSTIoEKPBYKgMIFm2oVWboC1oH1XmWjpfGQjGHvD-MFN2w:1tSrqQ:K5xHKT9bJOt9tA8os9fXig4N-xqZcGoasof-xo6wvkk','2025-01-15 06:04:38.183826'),('v9e1f5uh4hb71nfg7vlrp1qgd6ees5kn','.eJxVjMsOwiAQRf-FtSHDG1y69xvIAINUDU1KuzL-uzbpQrf3nHNfLOK2trgNWuJU2JlpdvrdEuYH9R2UO_bbzPPc12VKfFf4QQe_zoWel8P9O2g42rcGktoprSAkRwpNLZSTIoEKPBYKgMIFm2oVWboC1oH1XmWjpfGQjGHvD-MFN2w:1tSu5s:N7uXASFMyJ7YwsesgXLQYSLUEaQ-20hX0-QuC1r5sEk','2025-01-15 08:28:44.897733');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_posts`
--

DROP TABLE IF EXISTS `posts_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_posts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(75) NOT NULL,
  `body` longtext NOT NULL,
  `slug` varchar(50) NOT NULL,
  `date` datetime(6) NOT NULL,
  `banner` varchar(100) NOT NULL,
  `author_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_posts_slug_32f5860d` (`slug`),
  KEY `posts_posts_author_id_6063ccbf_fk_auth_user_id` (`author_id`),
  CONSTRAINT `posts_posts_author_id_6063ccbf_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_posts`
--

LOCK TABLES `posts_posts` WRITE;
/*!40000 ALTER TABLE `posts_posts` DISABLE KEYS */;
INSERT INTO `posts_posts` VALUES (4,'Test post','This is test post','test-post','2024-12-23 08:59:06.365756','Workflow-in-SalvationDATA-Digital-Lab2_I6XJ4mI.jpg',4),(5,'Fist post','This is the first post','first-post','2024-12-23 09:01:47.271206','banner_fuLoqCb.png',5),(7,'New post','This post is a new post about Somali situations','new-post','2025-01-01 07:05:37.473771','banner.png',4);
/*!40000 ALTER TABLE `posts_posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-02 11:45:48
