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
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor` (
  `doctor_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `specialty` varchar(50) DEFAULT NULL,
  `address` char(100) DEFAULT NULL,
  `town_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`doctor_id`),
  KEY `doctor_fk` (`town_id`),
  CONSTRAINT `doctor_fk` FOREIGN KEY (`town_id`) REFERENCES `town` (`town_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'Sanja','Maric','+38164562358','Pediatrician','Dzona Kenija 9',2),(2,'Toma','Savic','+38166231475','Gynecologist','Dalmatinska 56',5),(3,'Ana','Slavkovic','+381647896352','Cardiologist','Kralja Petra 4',7),(4,'Nemanja','Ristic','+38169656321','Pediatrician','Severni bulevar 8',3),(5,'Olja','Todorovic','+38166235841','Dermatologist','Jove Ilica 25',2),(6,'Sara','Kolarov','+38165456545','Pediatrician','Studentska 5',4),(7,'Aleksa','Petrovic','+381648952789','Endocrinologist','Pancina 8',1),(8,'Dusica','Milovic','+38162321252','Pediatrician','Volgina 78',8),(9,'Marija','Minic','+38162897451','Gynecologist','Tosin bunar 12',3),(10,'Andrija','Jovic','+3816587123','Pediatrician','29 novembar 2',2),(11,'Nenad','Ristic','+3816200245','Cardiologist','Goce Delceve 25',9),(12,'Milica','Misovic','+38166230100','Pediatrician','Volgina 28',6),(13,'Liljana','Koncar','+38162321252','Pediatrician','Pancina 78',5),(14,'Predrag','Vranic','+38163800096','Dermatologist','Omladininskih brigada 5',3),(15,'Lazar','Djokovic','+381623563210','Cardiologist','Ljubice Lukovic 7',1),(16,'Mirijana','Milovic','+38166002520','Endocrinologist','Kneza Milosa 78',10),(17,'Mihaijlo','Lazic','+38163635696','Pediatrician','Ruzveltova 52',4),(18,'Stefan','Petrovic','+38164123456','Dermatologist','Jove Ilica 256',9),(19,'Dejan','Maksimovic','+38165236589','Cardiologist','Beogradska 78',3),(20,'Slavica','Petrovic','+38164587896','Endocrinologist','Balkanska 8',6),(21,'Lola','Kovac','+38169562310','Pediatrician','27 mart 5',5),(22,'Vesna','Lazic','+3816785201','Gynecologist','Djusina 74',1),(23,'Nikola','Simic','+38165636973','Dermatologist','Bulevar oslobodjenja 78',8),(24,'Andjela','Dokic','+381625600123','Endocrinologist','Severni bulevar 63',10);
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
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
