-- MySQL dump 10.13  Distrib 5.7.33, for Linux (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	5.7.33

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
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `patient_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` char(100) DEFAULT NULL,
  `town_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`patient_id`),
  KEY `patient_fk` (`town_id`),
  CONSTRAINT `patient_fk` FOREIGN KEY (`town_id`) REFERENCES `town` (`town_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'Milan','Arsic','+38169895200','Jove Ilica 52',3),(2,'Jovana','Pavlovic','+381698512302','Lole Ribara 147',4),(3,'Adrej','Vuckovic','+381065214785','Blok 30',6),(4,'Rasa','Popov','+381624556123','Takovska 45',5),(5,'Andjela','Krasic','+381654578126','Pancina 48',2),(6,'Dragan','Savic','+381607852142','Kamenicka 85',7),(7,'Aljosa','Matic','+381698525896','Bulevar osolobodjenja 63',1),(8,'Bojana','Tomovic','+381698500006','Nemanjina 78',8),(9,'Andrijana','Petrovic','+381631020306','Dimitrija Tucovica 23',9),(10,'Milos','Danilovic','+381662030508','Jove Ilica 528',10),(11,'Ana','Rakic','+381647852369','Karadjordjeva 89',5),(12,'Milan','Bozovic','+38163908088','Severni bulevar 45',3),(13,'Sergej','Milanovic','+381695689235','Ruzveltova 2',4),(14,'Katarina','Antic','+38169788978','Bulevar 589',1),(15,'Milica','Popovic','+38162568945','Volgina 89',2),(16,'Darko','Vucic','+381641245785','Kralja Petra 78',7),(17,'Marija','Arsic','+38161471474','Nikisicka 896',8),(18,'Sinisa','Topic','+381603036600','Ljubice Lukovic 78',6),(19,'Natalija','Aleksic','+38169699995','Jezdimir Lovic 85',9),(20,'Bojan','Milosevic','+381647852563','Pancina 857',10),(21,'Marta','Vranic','+381645252520','Kneza Milosa 123',3),(22,'Olivera','Bozic','+3816623303502','Topolska 18',2);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-15 17:00:49
