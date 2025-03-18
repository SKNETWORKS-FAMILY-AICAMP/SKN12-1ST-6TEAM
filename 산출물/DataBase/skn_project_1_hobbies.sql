-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 192.168.0.15    Database: skn_project_1
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `hobbies`
--

DROP TABLE IF EXISTS `hobbies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hobbies` (
  `hobby_id` int NOT NULL AUTO_INCREMENT,
  `hobby_name` varchar(50) NOT NULL,
  PRIMARY KEY (`hobby_id`),
  UNIQUE KEY `hobby_name` (`hobby_name`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hobbies`
--

LOCK TABLES `hobbies` WRITE;
/*!40000 ALTER TABLE `hobbies` DISABLE KEYS */;
INSERT INTO `hobbies` VALUES (34,''),(6,'골프'),(33,'기타 실내 활동'),(19,'기타 야외 활동'),(11,'낚시'),(27,'독서'),(5,'등산'),(32,'바둑'),(14,'배드민턴'),(31,'볼링'),(22,'비디오 감상'),(3,'사진촬영'),(1,'산책'),(20,'소셜네트워킹(트위터/페이스북/블로그 등)'),(29,'수영'),(13,'스포츠 관람(야구, 축구 등)'),(28,'스포츠 댄스'),(12,'스포츠 활동(야구/농구 등)'),(21,'악기연주(기타, 피아노 등)'),(7,'여행'),(24,'연극/뮤지컬 관람'),(17,'영화 관람(극장)'),(23,'요가'),(18,'요리'),(25,'음악감상'),(16,'인라인 스케이트'),(2,'자동차 드라이빙'),(4,'자전거 타기'),(10,'조깅'),(9,'캠핑(오토캠핑)'),(30,'컴퓨터 게임'),(15,'테니스'),(8,'트래킹(올레, 둘레길 등)'),(26,'헬스');
/*!40000 ALTER TABLE `hobbies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-18 11:16:01
