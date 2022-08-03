-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: elevaga
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

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
-- Table structure for table `Animal`
--

DROP TABLE IF EXISTS `Animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Animal` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `sexe` char(1) DEFAULT NULL,
  `date_naissance` date NOT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `commentaires` text,
  `espece_id` smallint(5) unsigned NOT NULL,
  `race_id` smallint(5) unsigned DEFAULT NULL,
  `color` varchar(30) DEFAULT NULL,
  `castrate_or_not` enum('Y','N') DEFAULT NULL,
  `price` smallint(5) unsigned DEFAULT NULL,
  `price_buy` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ind_un_espece_nom` (`nom`,`espece_id`),
  KEY `ind_date_de_naiss` (`date_naissance`),
  KEY `fk_espece_id` (`espece_id`),
  KEY `fk_race_espece_id` (`race_id`),
  CONSTRAINT `fk_espece_id` FOREIGN KEY (`espece_id`) REFERENCES `Espece` (`id`),
  CONSTRAINT `fk_race_espece_id` FOREIGN KEY (`race_id`) REFERENCES `Race` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Animal`
--

LOCK TABLES `Animal` WRITE;
/*!40000 ALTER TABLE `Animal` DISABLE KEYS */;
INSERT INTO `Animal` VALUES (2,'F','2018-09-11','Fox','without left eye',1,1,'Black','Y',240,200),(3,'M','2018-06-18','Rolex','wIthout left leg',1,1,'White','Y',120,100),(5,'M','2018-09-11','ALA',NULL,1,2,'Red','Y',648,540),(6,'F','2018-06-28','Bobine',NULL,1,3,'Brown','Y',1200,1000),(7,'F','2018-07-15','Rox','Savage',1,3,'Black','Y',840,700),(8,'F','2018-01-17','Tortilla',NULL,1,1,'Black','Y',780,650),(9,'M','2018-01-15','Sam',NULL,1,2,'White','Y',516,430),(11,'F','2018-07-12','Fox',NULL,2,4,'Red','Y',240,200),(12,'M','2018-03-05','Rolex',NULL,2,5,'Red','Y',300,250),(14,'F','2018-08-29','ALA',NULL,2,6,'Green','Y',1800,1500),(15,'F','2018-07-26','Bobine',NULL,2,5,'White','Y',1080,900),(16,'F','2018-08-12','Rox',NULL,2,4,'White_Black','Y',300,250),(17,'F','2018-06-15','Tortilla',NULL,2,5,'White_Brown','Y',180,150),(18,'F','2018-01-27','Sam',NULL,2,6,'Black_Grey','Y',1440,1200),(20,'F','2018-09-17','Karkadan',NULL,10,29,'White','Y',912,760),(21,'F','2018-05-26','Tartaroga',NULL,10,30,'Grey','Y',1200,1000),(22,'F','2018-01-18','Cocsinel',NULL,10,31,'Red','Y',360,300),(23,'M','2018-05-07','Tortilla',NULL,9,26,'Brown','Y',240,200),(24,'M','2018-01-19','Sam',NULL,9,27,'Black','Y',120,100),(25,'M','2018-07-21','Hbib',NULL,9,28,'Black','Y',600,500),(26,'F','2018-07-05','Fox',NULL,9,26,'White','Y',648,540),(27,'F','2018-02-22','Rolex',NULL,9,27,'Brown','Y',1200,1000),(29,'F','2018-04-05','ALA',NULL,9,26,'Red','Y',780,650),(30,'F','2018-06-30','Bobine',NULL,9,27,'Grey','Y',516,430),(31,'F','2018-01-30','Rox',NULL,9,28,'Green','Y',144,120),(32,'M','2018-07-10','Tortilla',NULL,8,23,'White','Y',240,200),(33,'M','2018-05-12','Sou',NULL,8,24,'White_Black','Y',300,250),(34,'M','2018-06-22','Sami_Sam',NULL,8,25,'White_Brown','Y',444,370),(35,'M','2018-06-29','Rex',NULL,8,23,'Black_Grey','Y',1800,1500),(36,'M','2018-04-08','Imed',NULL,8,24,'Black','Y',1080,900),(38,'F','2018-08-27','Rox',NULL,3,7,'Grey','N',180,150),(39,'F','2018-07-19','Tortilla',NULL,3,8,'Red','N',1440,1200),(40,'F','2018-09-19','Sam',NULL,3,9,'Brown','N',96,80),(41,'F','2018-01-09','Hbib',NULL,3,7,'Black','N',912,760),(42,'F','2018-08-08','Fox',NULL,3,8,'Black','N',1200,1000),(43,'M','2018-09-04','Rolex',NULL,3,9,'White','N',360,300),(45,'M','2018-03-14','ALA',NULL,3,8,'Red','N',120,100),(46,'F','2018-01-21','Bobine',NULL,3,9,'Red','N',600,500),(47,'F','2018-05-08','Rox',NULL,4,10,'Grey','N',648,540),(48,'F','2018-05-01','Tortilla',NULL,4,11,'Green','N',1200,1000),(49,'M','2018-04-07','Sam',NULL,4,12,'White','N',840,700),(50,'M','2018-05-17','Hbib',NULL,4,13,'White_Black','N',780,650),(51,'M','2018-06-10','Karkadan',NULL,4,10,'White_Brown','N',516,430),(52,'M','2018-07-12','Tartaroga',NULL,4,11,'Black_Grey','N',144,120),(53,'M','2018-02-01','Cocsinel',NULL,4,12,'Black','N',240,200),(54,'F','2018-05-08','Tortilla',NULL,5,14,'White','N',300,250),(55,'F','2018-07-10','Sam',NULL,5,15,'Grey','N',444,370),(56,'F','2018-05-18','Hbib',NULL,5,16,'Red','Y',1800,1500),(57,'F','2018-08-03','Fox',NULL,5,14,'Brown','Y',1080,900),(58,'F','2018-04-27','Rolex','blind',5,15,'Black','Y',300,250),(60,'M','2018-08-14','ALA','wIthout left leg',5,14,'White','Y',1440,1200),(61,'M','2018-09-04','Bobine','do not hear',5,15,'Brown','Y',96,80),(62,'M','2018-06-17','Rox',NULL,5,16,'Red','Y',912,760),(63,'M','2018-02-11','Tortilla',NULL,6,17,'Red','N',1200,1000),(64,'M','2018-09-12','Gabi',NULL,6,18,'Grey','N',360,300),(65,'M','2018-08-03','Monta',NULL,6,19,'Green','N',240,200),(66,'F','2018-04-10','ALA','different eyes Color',6,17,'White','N',120,100),(67,'F','2018-05-07','Rolex',NULL,6,18,'White_Black','Y',600,500),(68,'M','2018-07-19','Fox',NULL,6,19,'White_Brown','Y',648,540),(70,'M','2018-01-17','Bobine',NULL,6,18,'Brown','Y',840,700),(71,'M','2018-04-20','Rox',NULL,6,19,'Red','Y',780,650),(72,'F','2018-03-06','Tortilla',NULL,7,20,'Red','Y',516,430),(73,'F','2018-03-02','Sam',NULL,7,21,'Grey','Y',144,120),(74,'M','2018-01-11','Hbib',NULL,7,22,'Green','N',240,200),(75,'M','2018-06-28','Karkadan',NULL,7,20,'White','Y',300,250),(76,'F','2018-02-07','Tartaroga',NULL,7,21,'White_Black','Y',444,370),(77,'F','2018-06-05','Cocsinel',NULL,7,22,'White_Brown','Y',1800,1500),(78,'M','2018-04-23','Tartaroga',NULL,1,1,'Black_Grey','Y',1080,900),(79,'M','2018-01-17','Samouna',NULL,1,1,'Black','Y',300,250),(81,'M','2018-06-22','Foxar',NULL,1,2,'Grey','Y',1440,1200),(83,'F','2018-05-08','Cloe',NULL,1,3,'Brown','N',912,760),(84,'F','2018-02-28','Minak',NULL,1,1,'Black','N',1200,1000),(86,'F','2018-08-26','Castro',NULL,1,3,'White','Y',240,200),(87,'M','2018-03-12','AL_AL',NULL,1,1,'Brown','Y',120,100),(88,'M','2018-06-29','Agerbi',NULL,1,2,'Red','Y',600,500),(89,'M','2018-07-02','Hamadi',NULL,1,3,'Red','Y',648,540),(90,'F','2018-01-12','Emir',NULL,1,2,'Grey','Y',1200,1000),(91,'M','2018-05-21','Asvas',NULL,1,3,'Green','Y',840,700),(92,'M','2018-04-01','Makrouna','Blind',1,3,'Brown','Y',780,650),(93,'F','2018-05-03','Nabil','Missing left leg',2,4,'Red','Y',516,430),(94,'F','2018-05-23','Tik_Tok','deaf',2,5,'Red','Y',144,120),(95,'M','2018-09-17','Cloe','without left eyes',2,4,'Grey','Y',240,200),(96,'F','2018-03-28','Minak','wIthout left leg',2,6,'Green','Y',300,250),(97,'F','2018-09-19','Kitt','deaf',2,5,'White','Y',444,370),(98,'F','2018-08-30','Castro','without left eye',2,4,'White_Black','Y',1800,1500),(99,'F','2018-09-16','AL_AL','wIthout left leg',2,5,'White_Brown','N',1080,900),(100,'F','2018-08-04','Agerbi','Blind',2,6,'Black_Grey','N',300,250),(101,'F','2018-04-16','Hamadi','Right eye Blind',2,6,'Black','N',180,150),(102,'F','2018-06-18','Emir','wIthout left leg',2,4,'White','N',1440,1200),(104,'M','2018-05-27','Makrouna',NULL,2,5,'Red','Y',912,760),(105,'M','2018-06-13','Nabil',NULL,3,7,'Brown','Y',1200,1000),(106,'M','2018-09-23','Tik_Tok',NULL,3,8,'Black','Y',360,300),(107,'M','2018-05-18','Cloe',NULL,3,9,'Black','Y',240,200),(108,'M','2018-07-28','Minak',NULL,3,7,'White','Y',120,100),(109,'M','2018-01-26','Kitt',NULL,3,8,'Brown','Y',600,500),(110,'M','2018-06-12','Castro',NULL,3,9,'Red','N',648,540),(111,'M','2018-03-05','AL_AL',NULL,3,7,'Red','N',1080,900),(112,'F','2018-03-19','Agerbi',NULL,3,8,'Grey','N',300,250),(113,'F','2018-08-06','Hamadi',NULL,3,9,'Green','N',180,150),(114,'F','2018-02-11','Emir',NULL,3,7,'Green','Y',1440,1200),(115,'F','2018-01-28','Asvas',NULL,3,8,'White','Y',96,80),(116,'F','2018-06-26','Makrouna',NULL,3,9,'White_Black','Y',912,760),(117,'F','2018-03-31','Nabil',NULL,4,10,'White_Brown','Y',1200,1000),(118,'F','2018-09-26','Tik_Tok',NULL,4,11,'Black_Grey','Y',360,300),(119,'F','2018-07-15','Cloe',NULL,4,12,'Black','Y',240,200),(120,'F','2018-06-24','Minak',NULL,4,13,'White','Y',120,100),(121,'F','2018-09-19','Kitt',NULL,4,10,'Grey','Y',600,500),(122,'M','2018-09-03','Castro',NULL,4,11,'Red','Y',648,540),(123,'M','2018-08-18','AL_AL',NULL,4,12,'Brown','Y',1200,1000),(124,'M','2018-04-28','Agerbi',NULL,4,10,'Black','Y',840,700),(125,'M','2018-08-02','Hamadi',NULL,4,11,'Black','Y',780,650),(126,'M','2018-07-24','Emir',NULL,4,12,'White','Y',516,430),(127,'M','2018-09-25','Asvas',NULL,4,13,'Brown','N',144,120),(128,'M','2018-06-16','Makrouna',NULL,4,10,'Red','N',240,200),(129,'M','2018-09-15','Nabil',NULL,5,14,'Red','N',300,250),(130,'M','2018-05-26','Tik_Tok',NULL,5,15,'Grey','N',444,370),(131,'M','2018-01-26','Cloe',NULL,5,16,'Green','Y',1800,1500),(132,'F','2018-08-10','Minak',NULL,5,14,'White','Y',1080,900),(133,'F','2018-09-16','Kitt',NULL,5,15,'White_Black','Y',300,250),(134,'F','2018-09-21','Castro',NULL,5,16,'White_Brown','Y',180,150),(135,'F','2018-01-12','AL_AL',NULL,5,14,'Black_Grey','Y',1440,1200),(136,'M','2018-06-08','Agerbi',NULL,5,15,'White','Y',96,80),(137,'M','2018-08-28','Hamadi',NULL,5,16,'Brown','Y',912,760),(138,'M','2018-06-27','Emir',NULL,5,14,'Red','N',1200,1000),(139,'M','2018-09-06','Asvas',NULL,5,15,'Red','N',360,300),(140,'M','2018-08-19','Makrouna',NULL,5,14,'Grey','N',240,200),(141,'M','2018-09-23','Nabil',NULL,6,17,'Green','N',1080,900),(142,'M','2018-02-26','Tik_Tok',NULL,6,18,'Green','Y',300,250),(143,'M','2018-07-08','Cloe',NULL,6,19,'White','Y',180,150),(144,'M','2018-05-27','Minak',NULL,6,17,'White_Black','Y',1440,1200),(145,'F','2018-08-06','Kitt',NULL,6,18,'White_Brown','Y',96,80),(146,'F','2018-01-10','Castro',NULL,6,19,'Black_Grey','Y',912,760),(147,'F','2018-03-31','AL_AL',NULL,6,17,'Black','Y',1200,1000),(148,'F','2018-06-03','Agerbi',NULL,6,18,'White','Y',360,300),(149,'F','2018-04-24','Hamadi',NULL,6,19,'Grey','N',240,200),(150,'F','2018-10-01','Emir',NULL,6,17,'Red','N',120,100),(151,'F','2018-07-20','Asvas',NULL,6,18,'Brown','N',600,500),(152,'M','2018-02-01','Makrouna',NULL,6,19,'Black','N',648,540),(153,'M','2018-02-15','Nabil',NULL,7,20,'Black','Y',1200,1000),(154,'M','2018-09-29','Tik_Tok',NULL,7,21,'White','Y',840,700),(155,'M','2018-03-25','Barbour',NULL,1,1,'Brown','Y',780,650),(156,'M','2018-07-01','AKA',NULL,1,2,'Red','Y',516,430),(157,'M','2018-05-14','Sabrine',NULL,1,3,'Red','Y',144,120),(158,'M','2018-08-31','Karouma',NULL,1,1,'Grey','Y',240,200),(160,'M','2018-06-11','Barbour',NULL,9,26,'White','N',444,370),(161,'M','2018-02-17','AKA',NULL,9,27,'White','N',1800,1500),(162,'M','2018-02-01','Sabrine',NULL,9,28,'Brown','N',1080,900),(163,'M','2018-07-27','Karouma',NULL,9,26,'Red','N',300,250),(164,'M','2018-03-27','Milbouna',NULL,9,27,'Red','Y',180,150),(165,'M','2018-02-26','Barbour',NULL,2,4,'Grey','Y',1440,1200),(166,'F','2018-01-01','AKA',NULL,2,5,'Green','Y',96,80),(167,'F','2018-09-07','Sabrine',NULL,2,4,'White','Y',912,760),(168,'F','2018-07-24','Karouma',NULL,2,6,'White_Black','Y',1200,1000),(169,'F','2018-03-03','Milbouna',NULL,2,5,'White_Brown','Y',1080,900),(170,'F','2018-05-22','Barbour',NULL,3,7,'Black_Grey','Y',300,250),(171,'M','2018-08-07','AKA',NULL,3,8,'White','N',180,150),(172,'M','2018-05-26','Sabrine',NULL,3,9,'White','N',1440,1200),(173,'M','2018-01-23','Karouma',NULL,3,9,'Brown','N',96,80),(174,'M','2018-05-22','Milbouna',NULL,5,15,'Red','N',912,760),(175,'M','2018-06-30','Barbour',NULL,5,14,'Red','Y',1200,1000),(176,'M','2018-02-04','AKA',NULL,5,15,'Grey','Y',360,300),(177,'F','2018-04-22','Sabrine',NULL,5,16,'Green','Y',240,200),(178,'F','2018-05-30','Karouma',NULL,5,14,'White','Y',120,100),(179,'F','2018-03-10','Milbouna',NULL,10,29,'White_Black','Y',600,500),(180,'F','2018-04-25','Fak_Fak',NULL,10,30,'White_Brown','Y',648,540),(181,'F','2018-07-08','Haze',NULL,10,31,'Black_Grey','Y',1200,1000),(182,'F','2018-09-05','Fak_Fak',NULL,1,1,'White','N',840,700),(183,'F','2018-03-08','Haze',NULL,1,2,'Grey','N',780,650),(184,'M','2018-08-12','Fak_Fak',NULL,2,4,'Red','N',516,430),(185,'M','2018-06-04','Haze',NULL,2,5,'Brown','N',144,120),(186,'M','2018-06-20','Fak_Fak',NULL,3,7,'Black','Y',240,200),(187,'M','2018-03-16','Haze',NULL,3,8,'Black','Y',300,250),(188,'F','2018-07-21','Fak_Fak',NULL,4,10,'White','Y',444,370),(189,'F','2018-08-05','Haze',NULL,4,11,'Brown','Y',1800,1500),(190,'F','2018-01-27','Emira',NULL,7,20,'Red','Y',1080,900),(191,'F','2018-01-06','Firas',NULL,7,21,'Red','Y',300,250),(192,'F','2018-09-08','Kong',NULL,7,22,'Grey','Y',180,150),(193,'M','2018-01-31','Mihadh',NULL,7,20,'Green','N',1440,1200),(194,'M','2018-04-26','Ferneni',NULL,7,21,'Green','N',96,80),(195,'M','2018-08-28','Emira',NULL,2,4,'White','N',912,760),(196,'M','2018-06-06','Firas',NULL,2,5,'White_Black','N',1200,1000),(197,'F','2018-06-07','Kong',NULL,2,6,'White_Brown','Y',360,300),(198,'F','2018-06-26','Mihadh',NULL,8,25,'Black_Grey','Y',240,200),(199,'F','2018-09-11','Ferneni',NULL,6,19,'Black','Y',1080,900),(200,'F','2018-07-05','Angour',NULL,10,31,'White','Y',300,250),(201,'M','2019-12-18','Foxy ',NULL,2,6,'black ','Y',200,185);
/*!40000 ALTER TABLE `Animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Animal_gebaught`
--

DROP TABLE IF EXISTS `Animal_gebaught`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Animal_gebaught` (
  `id` smallint(5) unsigned NOT NULL,
  `race` varchar(50) DEFAULT NULL,
  `espece` varchar(50) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Animal_gebaught`
--

LOCK TABLES `Animal_gebaught` WRITE;
/*!40000 ALTER TABLE `Animal_gebaught` DISABLE KEYS */;
INSERT INTO `Animal_gebaught` VALUES (10,'Ostrich','birds','Hbib'),(19,'Zebrafish','Fishes','Hbib'),(80,'Parrot','birds','Hbouba'),(82,'Ostrich','birds','Rolexiz'),(85,'Parrot','birds','Kitt'),(103,'Goldfish','Fishes','Asvas'),(159,'Parrot','birds','Milbouna');
/*!40000 ALTER TABLE `Animal_gebaught` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Custmer`
--

DROP TABLE IF EXISTS `Custmer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Custmer` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=312 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Custmer`
--

LOCK TABLES `Custmer` WRITE;
/*!40000 ALTER TABLE `Custmer` DISABLE KEYS */;
INSERT INTO `Custmer` VALUES (302,'sousou','0000'),(303,'sddnsa djsad ','0000'),(304,'eroooorooo','0000'),(305,'youssef','0000'),(306,'mohamed','0000'),(307,'jaab ghrab','0000'),(308,'omar','omar'),(309,'ala','ala'),(310,'titi','••••'),(311,'gast','gast');
/*!40000 ALTER TABLE `Custmer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Espece`
--

DROP TABLE IF EXISTS `Espece`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Espece` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `nom_courant` varchar(40) NOT NULL,
  `nom_latin` varchar(40) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nom_latin` (`nom_latin`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Espece`
--

LOCK TABLES `Espece` WRITE;
/*!40000 ALTER TABLE `Espece` DISABLE KEYS */;
INSERT INTO `Espece` VALUES (1,'birds','Omnivore','Terrestrial'),(2,'Fishes','yuiyuij','Aquatic'),(3,'Reptiles','Carnivore','Terrestrial'),(4,'Dogs','jgjgj','Terrestrial'),(5,'cats','gfhfghfgh','Terrestrial'),(6,'Horses','Herbivore','Terrestrial'),(7,'Hamsters','kjhkhkh','Terrestrial'),(8,'Rabbits','oiouiouio','Terrestrial'),(9,'Guinea pigs','sdadasdsd','Terrestrial'),(10,'Hedgehogs','ertret','Terrestrial');
/*!40000 ALTER TABLE `Espece` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Race`
--

DROP TABLE IF EXISTS `Race`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Race` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `espece_id` smallint(5) unsigned NOT NULL,
  `nom` varchar(40) NOT NULL,
  `descreption` text,
  PRIMARY KEY (`id`),
  KEY `fk_espece_id_race` (`espece_id`),
  CONSTRAINT `fk_espece_id_race` FOREIGN KEY (`espece_id`) REFERENCES `Espece` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Race`
--

LOCK TABLES `Race` WRITE;
/*!40000 ALTER TABLE `Race` DISABLE KEYS */;
INSERT INTO `Race` VALUES (2,1,'Parrot','Flight'),(3,1,'Ostrich','Walking'),(4,2,'Goldfish','Swimming'),(5,2,'Oscar','Swimming'),(6,2,'Zebrafish','Swimming'),(7,3,'bearded dragon','Walking'),(8,3,'Ball Python','Walking'),(9,3,'Tortoise','Walking'),(10,4,'German Shepherd','Walking'),(11,4,'Chihuahua','Walking'),(12,4,'Dachshund','Walking'),(13,4,'Bulldog','Walking'),(14,5,'Bengal Cat','Walking'),(15,5,'Siamese Cat','Walking'),(16,5,'Munchkin Cat','Walking'),(17,6,'Arabian Horse','Walking'),(18,6,'American Horse','Walking'),(19,6,'Icelandic Horse','Walking'),(20,7,'Winter white dwarf hamster','Walking'),(21,7,'Chinese hamster','Walking'),(22,7,'Golden hamster','Walking'),(23,8,'French Lop','Walking'),(24,8,'mini Lop','Walking'),(25,8,'Flemish Giant','Walking'),(26,9,'Teddy guinea pig','Walking'),(27,9,'Abyssinian guinea pig','Walking'),(28,9,'Skinny pig','Walking'),(29,10,'North African hedgehog','Walking'),(30,10,'Somali hedgehog','Walking'),(31,10,'European hedgehog','Walking');
/*!40000 ALTER TABLE `Race` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `who_baught`
--

DROP TABLE IF EXISTS `who_baught`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `who_baught` (
  `user_id` smallint(5) unsigned NOT NULL,
  `Animal_id` smallint(5) unsigned NOT NULL,
  `price` smallint(5) unsigned NOT NULL,
  `date_of_sell` date NOT NULL,
  `price_buy` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`Animal_id`),
  KEY `fk_who_baught_user_id` (`user_id`),
  CONSTRAINT `fk_Animal_id` FOREIGN KEY (`Animal_id`) REFERENCES `Animal_gebaught` (`id`),
  CONSTRAINT `fk_who_baught_user_id` FOREIGN KEY (`user_id`) REFERENCES `Custmer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `who_baught`
--

LOCK TABLES `who_baught` WRITE;
/*!40000 ALTER TABLE `who_baught` DISABLE KEYS */;
INSERT INTO `who_baught` VALUES (308,10,144,'2019-12-19',120),(306,80,180,'2019-12-18',150),(306,85,360,'2019-12-18',300),(311,103,96,'2019-12-19',80),(306,159,300,'2019-12-18',250);
/*!40000 ALTER TABLE `who_baught` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-19  1:56:28
