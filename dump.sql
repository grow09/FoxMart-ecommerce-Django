-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: eShop
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
-- Table structure for table `FoxApp_category`
--

DROP TABLE IF EXISTS `FoxApp_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FoxApp_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FoxApp_category_slug_863bfc36` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FoxApp_category`
--

LOCK TABLES `FoxApp_category` WRITE;
/*!40000 ALTER TABLE `FoxApp_category` DISABLE KEYS */;
INSERT INTO `FoxApp_category` VALUES (1,'Computers','pc','static/Resource/sysblock.jpg'),(2,'Laptops','laptop','static/Resource/laptope.jpg'),(3,'Smartphones','smartphone','static/Resource/smartphone.jpg');
/*!40000 ALTER TABLE `FoxApp_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FoxApp_contributor`
--

DROP TABLE IF EXISTS `FoxApp_contributor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FoxApp_contributor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `maker` varchar(100) NOT NULL,
  `model` varchar(200) NOT NULL,
  `link_itbox` varchar(250) NOT NULL,
  `link_rozetka` varchar(250) NOT NULL,
  `link_citrus` varchar(250) NOT NULL,
  `link_allo` varchar(250) NOT NULL,
  `link_stylus` varchar(250) NOT NULL,
  `img1` varchar(250) NOT NULL,
  `img2` varchar(250) NOT NULL,
  `img3` varchar(250) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FoxApp_contributor_category_id_e04b9fe9_fk_FoxApp_category_id` (`category_id`),
  CONSTRAINT `FoxApp_contributor_category_id_e04b9fe9_fk_FoxApp_category_id` FOREIGN KEY (`category_id`) REFERENCES `FoxApp_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FoxApp_contributor`
--

LOCK TABLES `FoxApp_contributor` WRITE;
/*!40000 ALTER TABLE `FoxApp_contributor` DISABLE KEYS */;
INSERT INTO `FoxApp_contributor` VALUES (1,'Apple','A1418 iMac 21.5\"','https://www.itbox.ua/product/Kompyuter_Apple_A1418_iMac_215_Z0TH001VF-p521701/','https://hard.rozetka.com.ua/apple_mk442ua_a/p8146274/','https://www.citrus.ua/imac/apple-imac-mmqa2-614811.html','https://allo.ua/ru/products/monobloki/apple-a1418-imac-21-5-z0pe005a6.html','https://stylus.ua/apple-imac-215-mmqa2-2017-p293861c515.html','https://img8.itbox.ua/1024x1024/prod_img/8/U0363958_big.jpg','https://img8.itbox.ua/1024x1024/prod_img/8/U0363958_7big.jpg','https://img8.itbox.ua/1024x1024/prod_img/8/U0363958_5big.jpg',1),(2,'Apple','MacBook Air A1466','https://www.itbox.ua/product/Noutbuk_Apple_MacBook_Air_A1466_MQD32UA_A-p287994/','https://rozetka.com.ua/apple_mqd32ua_a/p17929266/?gclid=Cj0KCQjw09HzBRDrARIsAG60GP8ZGqmELpwITHfXGHvEATfk6Cjiw5bIbrIQ6dJ5bFCKSu-uE_wXgKAaAtOwEALw_wcB','https://www.citrus.ua/noutbuki-i-ultrabuki/apple-macbook-air-mqd32-614780.html','https://allo.ua/ru/products/notebooks/apple-a1466-macbook-air-mqd32ua-a.html','https://allo.ua/ru/products/notebooks/apple-a1466-macbook-air-mqd32ua-a.html','https://img7.itbox.ua/1024x1024/prod_img/7/U0247407_big.jpg','https://img7.itbox.ua/1024x1024/prod_img/7/U0247407_2big.jpg','https://img7.itbox.ua/1024x1024/prod_img/7/U0247407_4big.jpg',2),(3,'Apple','iPhone XR 64Gb Black','https://www.itbox.ua/product/Mobilniy_telefon_Apple_iPhone_XR_64Gb_Black-p476963/','https://rozetka.com.ua/apple_mry42/p141513709/','https://www.citrus.ua/smartfony/iphone-xr-apple-632724.html','https://allo.ua/ru/products/mobile/apple-iphone-xr-64gb-black.html','https://stylus.ua/apple-iphone-xr-64gb-black-p400388c170.html','https://img8.itbox.ua/1024x1024/prod_img/8/U0314438_4big.jpg','https://img8.itbox.ua/1024x1024/prod_img/8/U0314438_2big.jpg','https://img8.itbox.ua/1024x1024/prod_img/8/U0314438_3big.jpg',3);
/*!40000 ALTER TABLE `FoxApp_contributor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FoxApp_products`
--

DROP TABLE IF EXISTS `FoxApp_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FoxApp_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpu` varchar(100) NOT NULL,
  `speed` double NOT NULL,
  `videocard` varchar(100) NOT NULL,
  `ram_type` varchar(100) NOT NULL,
  `ram` int(11) NOT NULL,
  `hd_type` varchar(100) NOT NULL,
  `hd` int(11) NOT NULL,
  `diagonal` double NOT NULL,
  `main_cam` int(11) NOT NULL,
  `back_cam` varchar(100) NOT NULL,
  `front_cam` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `os` varchar(100) NOT NULL,
  `price_itbox` int(11) NOT NULL,
  `price_rozetka` int(11) NOT NULL,
  `price_citrus` int(11) NOT NULL,
  `price_allo` int(11) NOT NULL,
  `price_stylus` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `slug` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FoxApp_products_category_id_a749fae8_fk_FoxApp_category_id` (`category_id`),
  KEY `FoxApp_products_model_id_5f6aff3e_fk_FoxApp_contributor_id` (`model_id`),
  KEY `FoxApp_products_slug_0bbf91ec` (`slug`),
  CONSTRAINT `FoxApp_products_category_id_a749fae8_fk_FoxApp_category_id` FOREIGN KEY (`category_id`) REFERENCES `FoxApp_category` (`id`),
  CONSTRAINT `FoxApp_products_model_id_5f6aff3e_fk_FoxApp_contributor_id` FOREIGN KEY (`model_id`) REFERENCES `FoxApp_contributor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FoxApp_products`
--

LOCK TABLES `FoxApp_products` WRITE;
/*!40000 ALTER TABLE `FoxApp_products` DISABLE KEYS */;
INSERT INTO `FoxApp_products` VALUES (1,'Intel Core i5',2.3,'Iris Plus Graphics 640','DDR4',8,'SSD',256,0,0,'0','0','0','0',37973,0,36999,0,36855,1,1,'A1418iMac215'),(2,'Intel Core i5',1.8,'Intel HD Graphics','DDR3',8,'No ODD',128,0,0,'0','0','0','0',23999,23999,23999,23999,23999,2,2,''),(3,'Apple A12 Bionic',0,'0','0',3,'0',0,6.1,12,'12 Mpx','7 Mpx','черный','iOS 12',20999,18499,18499,18499,17499,3,3,'');
/*!40000 ALTER TABLE `FoxApp_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add category',7,'add_category'),(26,'Can change category',7,'change_category'),(27,'Can delete category',7,'delete_category'),(28,'Can view category',7,'view_category'),(29,'Can add contributor',8,'add_contributor'),(30,'Can change contributor',8,'change_contributor'),(31,'Can delete contributor',8,'delete_contributor'),(32,'Can view contributor',8,'view_contributor'),(33,'Can add products',9,'add_products'),(34,'Can change products',9,'change_products'),(35,'Can delete products',9,'delete_products'),(36,'Can view products',9,'view_products');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$180000$cRc6rC8XwRiQ$XCo/3otbF26VSo3095L6lV2fqavpi4gtZPlHfy9blSk=','2020-05-03 10:55:32.483454',1,'admin','','','grovexd94@gmail.com',1,1,'2020-05-03 10:55:26.109308');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-05-03 10:59:51.446702','1','Computers',1,'[{\"added\": {}}]',7,1),(2,'2020-05-03 10:59:58.475687','2','Laptops',1,'[{\"added\": {}}]',7,1),(3,'2020-05-03 11:00:26.539052','1','A1418 iMac 21.5\"',1,'[{\"added\": {}}]',8,1),(4,'2020-05-03 11:00:44.020804','2','MacBook Air A1466',1,'[{\"added\": {}}]',8,1),(5,'2020-05-03 14:06:39.319900','2','Products object (2)',3,'',9,1),(6,'2020-05-03 14:11:58.723642','3','Smartphones',1,'[{\"added\": {}}]',7,1),(7,'2020-05-03 14:12:24.399507','3','iPhone XR 64Gb Black',1,'[{\"added\": {}}]',8,1),(8,'2020-05-03 14:26:38.351917','3','Products object (3)',3,'',9,1),(9,'2020-05-03 14:51:47.584814','3','Smartphones',2,'[{\"changed\": {\"fields\": [\"Img\"]}}]',7,1),(10,'2020-05-03 14:51:56.596975','2','Laptops',2,'[{\"changed\": {\"fields\": [\"Img\"]}}]',7,1),(11,'2020-05-03 14:52:05.807011','1','Computers',2,'[{\"changed\": {\"fields\": [\"Img\"]}}]',7,1),(12,'2020-05-03 14:54:45.094694','3','Smartphones',2,'[{\"changed\": {\"fields\": [\"Img\"]}}]',7,1),(13,'2020-05-03 14:58:43.710928','3','Smartphones',2,'[{\"changed\": {\"fields\": [\"Img\"]}}]',7,1),(14,'2020-05-03 15:05:47.684344','3','Smartphones',2,'[{\"changed\": {\"fields\": [\"Img\"]}}]',7,1),(15,'2020-05-03 15:06:03.082491','2','Laptops',2,'[{\"changed\": {\"fields\": [\"Img\"]}}]',7,1),(16,'2020-05-03 15:06:18.793112','1','Computers',2,'[{\"changed\": {\"fields\": [\"Img\"]}}]',7,1),(17,'2020-05-06 21:22:01.846211','2','Products object (2)',2,'[{\"changed\": {\"fields\": [\"Cpu\"]}}]',9,1),(18,'2020-05-06 21:22:18.900896','1','Products object (1)',2,'[]',9,1),(19,'2020-05-06 21:22:53.462116','1','Products object (1)',2,'[]',9,1),(20,'2020-05-06 21:23:19.683869','1','Products object (1)',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'FoxApp','category'),(8,'FoxApp','contributor'),(9,'FoxApp','products'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-05-03 09:23:33.390527'),(2,'auth','0001_initial','2020-05-03 09:23:33.527996'),(3,'admin','0001_initial','2020-05-03 09:23:33.852470'),(4,'admin','0002_logentry_remove_auto_add','2020-05-03 09:23:33.934782'),(5,'admin','0003_logentry_add_action_flag_choices','2020-05-03 09:23:33.947482'),(6,'contenttypes','0002_remove_content_type_name','2020-05-03 09:23:34.032226'),(7,'auth','0002_alter_permission_name_max_length','2020-05-03 09:23:34.049936'),(8,'auth','0003_alter_user_email_max_length','2020-05-03 09:23:34.064264'),(9,'auth','0004_alter_user_username_opts','2020-05-03 09:23:34.081289'),(10,'auth','0005_alter_user_last_login_null','2020-05-03 09:23:34.116845'),(11,'auth','0006_require_contenttypes_0002','2020-05-03 09:23:34.120349'),(12,'auth','0007_alter_validators_add_error_messages','2020-05-03 09:23:34.135615'),(13,'auth','0008_alter_user_username_max_length','2020-05-03 09:23:34.150080'),(14,'auth','0009_alter_user_last_name_max_length','2020-05-03 09:23:34.166546'),(15,'auth','0010_alter_group_name_max_length','2020-05-03 09:23:34.181590'),(16,'auth','0011_update_proxy_permissions','2020-05-03 09:23:34.197360'),(17,'sessions','0001_initial','2020-05-03 09:23:34.222949'),(18,'FoxApp','0001_initial','2020-05-03 10:54:35.373462'),(19,'FoxApp','0002_category_img','2020-05-03 14:51:14.414510'),(20,'FoxApp','0003_auto_20200506_2116','2020-05-06 21:17:02.414798');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('a2w92jp5ka311bklk78xj4qw4is5bvl8','ZTcyYmRmOWE3YjIzZTVmYmU4OTFkNzFiOWUxNjcwNjZhZWNiOTRlMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YzYyYjM3ZTIwNTk0MTNjNzljODRlMWUwMTdlMzAwMDBhZjEzNmY2In0=','2020-05-17 10:55:32.487506');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-07  5:03:02
