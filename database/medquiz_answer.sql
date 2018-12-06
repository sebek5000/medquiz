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
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `text` varchar(1000) DEFAULT NULL,
  `questionId` int(11) DEFAULT NULL,
  `isCorrect` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `questionId` (`questionId`),
  CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`questionId`) REFERENCES `question` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` VALUES (1,'wszystkich, ponieważ zawsze można wykonać część zadań ratunkowych',1,1),(2,'tylko osób, które mają przygotowanie medyczne',1,0),(3,'wszystkich, ale za popełnione błędy zawsze grozi odpowiedzialność karna',1,0),(4,'należy oglądać, jak inni się męczą',1,0),(5,'tylko do lekarzy',2,0),(6,'do każdej osoby',2,1),(7,'tylko do służb ratowniczych',2,0),(8,'do osób, które wypadku nie widziały',2,0),(9,'udzielić pomocy tym, których stan zagraża życiu',3,1),(10,'podać rannym leki uspokajające',3,0),(11,'pojechać po lekarza',3,0),(12,'dać poszkodowanym jeść i pić',3,0),(13,'podać rannym leki',4,0),(14,'oddalić się z miejsca wypadku w celu wezwania lekarza',4,0),(15,'udzielić pomocy osobom z zagrożeniem życia',4,1),(16,'nagrywać zdarzenie',4,0),(17,'zabezpieczyć miejsce wypadku',5,1),(18,'zapisać świadków wypadku',5,0),(19,'udzielić pierwszej pomocy',5,0),(20,'zadbać o komfort psychiczny poszkodowanych',5,0),(21,'zapisać adresy świadków',6,0),(22,'zapewnić bezpieczeństwo w miejscu wypadku',6,1),(23,'oddalić się celem wezwania pogotowia ratunkowego lub policji',6,0),(24,'dać jej muzykę do posłuchania',7,0),(25,'namawiać ją do pozostania i wezwać pomoc medyczną',7,1),(26,'podać jej coś do picia i środki przeciwbólowe',7,0),(27,'pozwolić jej iść do domu, zalecając wizytę u lekarza',7,0),(28,'dać jej muzykę do posłuchania',7,0),(29,'kiedy przestanie być bezpiecznie',8,0),(30,'do utraty sił przez ratownika',8,0),(31,'do przejęcia poszkodowanego przez pogotowie',8,0),(32,'wszystkie odpowiedzi są poprawne',8,1),(33,'112',9,1),(34,'999',9,0),(35,'998',9,0),(36,'994',9,0),(37,'997',10,0),(38,'989',10,0),(39,'998',10,1),(40,'999',10,0),(41,'na wznak',11,0),(42,'siedząca',11,0),(43,'boczna ustalona',11,1),(44,'czterokończynowa',11,0),(45,'bocnza ustalona',12,1),(46,'na plecach',12,0),(47,'półsiedząca',12,0),(48,'przeciwwstrząsowa',12,0),(49,'można podać do picia wszystko',13,0),(50,'można podać do picia zimną wodę',13,0),(51,'nie wolno podawać nic do picia',13,1),(52,'można podać coś do jedzenia',13,0),(53,'na brzuchu z ręką pod głowę',14,0),(54,'na plecach',14,0),(55,'w pozycji bezpiecznej (bocznej ustalonej)',14,1),(56,'przeciwwstrząsowej',14,0),(57,'na wznak',15,0),(58,'twarzą do ziemi',15,1),(59,'na brzuchu',15,0),(60,'należy położyć go na plecach i odchylić głowę do tyłu',16,0),(61,'trzeba przygiąć jego głowę do klatki piersiowej',16,0),(62,'należy ułożyć go w pozycji bezpiecznej',16,1),(63,'należy położyć go na brzuchu',16,0),(64,'na boku',17,0),(65,'na wznak, na twardym podłożu',17,1),(66,'na brzuchu',17,0),(67,'poprosić go, żeby położył się gdzieś indziej',17,0),(68,'usadzić go w pozycji półleżącej',18,0),(69,'położyć go w pozycji bocznej ustalonej',18,0),(70,'nie ruszać go i czekać na przybycie służb medycznych',18,1),(71,'położyć go na brzuchu',18,0),(72,'ułożyć głowę w pozycji bocznej',19,0),(73,'unieruchomić głowę',19,1),(74,'nie ruszać poszkodowanego do czasu przyjazdu lekarza',19,0),(75,'położyć go na brzuchu',19,0),(76,'zmiażdżenia lub oderwania kończyny',20,1),(77,'zranienia głowy',20,0),(78,'każdej rany',20,0),(79,'w przypadku większego krwotoku',20,0),(80,'napoić osobę poszkodowaną',21,0),(81,'zdezynfekować ją',21,0),(82,'podnieść kończynę do góry i zatamować krwawienie',21,1),(83,'położyć poszkodowanego',21,0),(84,'watę',22,0),(85,'jałową gazę',22,1),(86,'ligninę',22,0),(87,'chusteczkę',22,0),(88,'opatrunek uciskowy z gay lub płótna oraz bandaż',23,1),(89,'jodynę lub gencjanę',23,0),(90,'tylko jałową gazę',23,0),(91,'tylko bandaż',23,0),(92,'naczynia żylnego',24,0),(93,'krwawiących tkanek miękkich',24,0),(94,'naczynia tętniczego',24,1),(95,'nosa',24,0),(96,'natychmiast go wyjąć',25,0),(97,'pozostawić go w ranie',25,1),(98,'wyjąć go i nałożyć jałowy opatrunek',25,0),(99,'to zależy od wielkości przedmiotu',25,0),(100,'podać poszkodowanemu środki przeciwbólowe',26,0),(101,'unieruchmić dwa sąsiadujące ze sobą stawy',26,1),(102,'nie ruszać poszkodowanego do czasu przyjazdu lekarza',26,0),(103,'położyć go na brzuchu',26,0),(104,'leży na plecach z uniesionymi rękami i nogami',27,1),(105,'leży na boku',27,0),(106,'znajduje się w pozycji półsiedzącej',27,0),(107,'leży na brzuchu',27,0),(108,'polewaniu oparzonego miejsca zimną wodą',28,1),(109,'polewaniu oparzonego miejsca ciepłą wodą',28,0),(110,'smarowaniu oparzonego miejsca maścią',28,0),(111,'smarowaniu oparzonego miejsca majonezem',28,0),(112,'posmarować dłoń kremem',29,0),(113,'zdjąć pierścionki i obrączki',29,1),(114,'zdezynfekować',29,0),(115,'włoyć pod zimną wodę',29,0),(116,'nastawić',30,0),(117,'naciągnąć i zmniejszyć ból',30,0),(118,'unieruchomić ją i dwa sąsiednie stawy',30,1),(119,'zrobić opatrunek',30,0),(120,'nastawić',31,0),(121,'pozostawić bez zmian i podać środek przeciwbólowy',31,0),(122,'unieruchomić',31,1),(123,'polać zimną wodą',31,0),(124,'zadbać o swój rower',6,0);
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-06 22:09:04
