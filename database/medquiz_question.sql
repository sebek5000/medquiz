-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: medquiz
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(1500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,'Obowiązek udzielenia pomocy ofiarom wypadku dotyczy: '),(2,'Obowiązek udzielenia pomocy ofiarom wypadku dotyczy: '),(3,'Przy udzielaniu rannym pierwszej pomocy na miejscu wypadku należy przede wszystkim: '),(4,'Przy udzielaniu pierwszej pomocy poszkodowanym w wypadku należy przede wszystkim: '),(5,'Świadek wypadku, w którym są ofiary, w pierwszej kolejności powinien:'),(6,'Kierujący rowerem uczestniczący w wypadku drogowym z ofiarami w ludziach powinien w pierwszej kolejności:'),(7,'Jeżeli ofiara wypadku po kilku minutach odzyskała przytomność i chce iść do domu, to należy:'),(8,'Masaż serca prowadzi się do momentu:'),(9,'Aby wezwać pomoc z telefonu komórkowego, należy zadzwonić pod numer alarmowy:'),(10,'Numer alarmowy straży pożarnej to:'),(11,'Najbezpieczniejsze ułożenie poszkodowanego to pozycja:'),(12,'Najbardziej bezpieczna dla poszkodowanego jest pozycja:'),(13,'Osobie nieprzytomnej:'),(14,'Poszkodowanego, który jest nieprzytomny, ale oddycha, należy ułożyć:'),(15,'Ułożenie ciała poszkodowanego ułatwiające oddychanie i krążenie krwi, a także zapobiegające zakrztuszeniu umożliwia pozycja:'),(16,'Jeżeli nieprzytomny ranny oddycha i ma wyczuwalne tętno, lecz zaczyna wymiotować:'),(17,'Jeżeli ranny jest przytomny i podejrzewamy u niego uraz kręgosłupa piersiowego, to należy go ułożyć:'),(18,'Jeżeli u poszkodowanego podejrzewamy uszkodzenie kręgosłupa, to należy:'),(19,'W razie podejrzenia uszkodzenia kręgosłupa na odcinku szyjnym należy:'),(20,'Opaskę uciskową należy stosować w wypadku:'),(21,'Przy silnie krwawiącej ranie w pierwszej kolejności należy:'),(22,'Na krwawiącą ranę przed jej zabandażowaniem należy położyć:'),(23,'Do opatrywania krwawiących ran stosuje się:'),(24,'Najbardziej niebezpieczna dla człowieka jest utrata krwi z:'),(25,'Jeżeli w ranie znajduje się ostry przedmiot, należy:'),(26,'Przy złamaniu kości przedramienia należy:'),(27,'Omdlenie mija najszybciej, gdy poszkodowany:'),(28,'Pierwsza pomoc w przypadku oparzeń powinna polegać na:'),(29,'W przypadku poparzenia dłoni należy w pierwszej kolejności:'),(30,'W sytuacji złamania kości należy ją:'),(31,'Złamaną rękę należy:'),(53,'Świadek wypadku, w którym są ofiary, w pierwszej kolejności powinien: '),(54,'Kierujący rowerem uczestniczący w wypadku drogowym z ofiarami w ludziach powinien w pierwszej '),(55,'Jeżeli ofiara wypadku po kilku minutach odzyskała przytomność i chce iść do domu, to należy: ');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-09  8:30:30
