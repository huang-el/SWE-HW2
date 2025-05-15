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
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `protein_type` varchar(255) DEFAULT NULL,
  `instructions` text,
  `ingredient_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ingredient_id` (`ingredient_id`),
  CONSTRAINT `recipes_ibfk_1` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes`
--

LOCK TABLES `recipes` WRITE;
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
INSERT INTO `recipes` VALUES (14,'recipe1','Chicken','recipe1, chicken, chicken',NULL),(15,'Teriyaki Chicken','Chicken','Sauté bite-sized pieces of boneless, skinless chicken in a skillet until browned. Then, mix soy sauce, brown sugar, garlic, and ginger to create a sauce, pour it over the chicken, and cook until thickened, serving it over rice with vegetables.',NULL),(16,'Pork Ribs','Pork','1. Preheat the Oven:\r\nPreheat your oven to 300°F (150°C).\r\n2. Prepare the Ribs:\r\nRemove the membrane from the back of the ribs for better flavor and tenderness. You can do this by sliding a knife under the membrane and pulling it off with a paper towel.\r\nRub the ribs with olive oil, then season generously with salt, pepper, and any dry rub you prefer.\r\n3. Bake the Ribs:\r\nPlace the ribs on a baking sheet lined with aluminum foil. Cover the ribs with another piece of foil to keep them moist.\r\nBake in the preheated oven for about 2.5 to 3 hours, or until the ribs are tender.\r\n4. Add Barbecue Sauce:\r\nRemove the ribs from the oven and discard the top layer of foil. Brush a generous amount of barbecue sauce over the ribs.\r\nIncrease the oven temperature to 400°F (200°C) and return the ribs to the oven, uncovered, for an additional 15-20 minutes. This will caramelize the sauce.\r\n5. Serve:\r\nOnce done, remove the ribs from the oven and let them rest for a few minutes. Cut between the bones to separate the ribs and serve with extra barbecue sauce on the side.',NULL),(17,'Smoked beef brisket','Beef','1. Prepare the Brisket:\r\nTrim excess fat from the brisket, leaving about 1/4 inch of fat cap for flavor and moisture.\r\nIn a small bowl, mix together the kosher salt, black pepper, garlic powder, onion powder, paprika, and brown sugar.\r\nRub the spice mixture all over the brisket, ensuring it’s evenly coated. Let it sit at room temperature for about 1 hour or refrigerate overnight for deeper flavor.\r\n2. Preheat the Smoker:\r\nPreheat your smoker to 225°F (107°C). If using a charcoal smoker, set it up for indirect heat. Add wood chips to the coals for smoke flavor.\r\n3. Smoke the Brisket:\r\nPlace the brisket in the smoker, fat side up. This allows the fat to baste the meat as it cooks.\r\nSmoke the brisket for about 1.5 hours per pound, or until it reaches an internal temperature of 195°F to 205°F (90°C to 96°C). Use a meat thermometer to check the temperature.\r\n4. Spritzing:\r\nEvery hour, spritz the brisket with beef broth or apple juice to keep it moist and enhance the flavor.\r\n5. Wrap (Optional):\r\nWhen the brisket reaches an internal temperature of about 165°F (74°C), you can wrap it in butcher paper or aluminum foil to help it cook faster and retain moisture. This is known as the \"Texas Crutch.\"\r\n6. Rest the Brisket:\r\nOnce the brisket reaches the desired temperature, remove it from the smoker and let it rest for at least 30 minutes to 1 hour. This allows the juices to redistribute.\r\n7. Slice and Serve:\r\nSlice the brisket against the grain into thin slices. Serve with your favorite barbecue sauce, pickles, and sides like coleslaw or baked beans.\r\n',NULL),(18,'Fried tofu','Tofu','1. Prepare the Tofu:\r\nDrain the tofu and press it to remove excess moisture. You can do this by wrapping the tofu block in a clean kitchen towel and placing a heavy object on top for about 15-20 minutes.\r\nOnce pressed, cut the tofu into cubes or slices, depending on your preference.\r\n2. Marinate the Tofu:\r\nIn a bowl, mix the soy sauce with any additional seasonings you like (e.g., garlic powder, onion powder).\r\nAdd the tofu pieces to the bowl and gently toss to coat. Let it marinate for at least 15 minutes.\r\n3. Coat the Tofu (Optional):\r\nIf you want extra crispy tofu, sprinkle cornstarch over the marinated tofu and toss gently to coat.\r\n4. Fry the Tofu:\r\nHeat the vegetable oil in a non-stick skillet or frying pan over medium-high heat.\r\nOnce the oil is hot, add the tofu pieces in a single layer. Avoid overcrowding the pan; you may need to fry in batches.\r\nFry the tofu for about 3-4 minutes on each side, or until golden brown and crispy.\r\n5. Drain and Serve:\r\nOnce fried, transfer the tofu to a plate lined with paper towels to drain excess oil.\r\nServe hot as a snack, in a stir-fry, or with your favorite dipping sauce.',NULL);
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;
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
