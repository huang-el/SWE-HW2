-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: recipe_site
-- ------------------------------------------------------
-- Server version	8.4.5

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
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` VALUES (1,'Chicken','Poultry meat from chickens'),(2,'Tofu','A soy-based protein'),(3,'Pork','Meat from pigs'),(4,'Beef','Meat from cows'),(5,'Rice','a grain, can be white or brown'),(6,'Water','The liquid that is made up of two parts hydrogen and one part oxygen'),(7,'Soy sauce','dark brown, salty condiment, made from fermented soy beans'),(8,'Brown sugar','unrefined or only partly refined sugar'),(9,'Garlic','bulbous herb of southern Europe; aromatic bulb breaks up into separate strong-flavored cloves and is used as seasoning'),(10,'Ginger','pungent rhizome of the common ginger plant; used fresh as a seasoning'),(11,'Vegetables','the parts of plants used for food'),(12,'Pork ribs','the curved bone in a pig’s chest'),(13,'Olive oil','oil from olives'),(14,'Salt','white crystalline form of especially sodium chloride used to season and preserve food'),(15,'Pepper','the black spice you sprinkle on your food to make it taste more flavorful'),(16,'BBQ sauce','spicy sweet and sour sauce usually based on catsup or chili sauce'),(17,'Beef brisket','a cut of meat from the breast or lower chest of beef'),(18,'Garlic powder','a seasoning made from dehydrated garlic cloves that have been ground into a fine powder'),(19,'Onion powder','dehydrated, ground onion used as a seasoning'),(20,'Vegetable oil','any of a group of liquid edible fats that are obtained from plants');
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-15  4:57:32
