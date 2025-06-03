-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: cruise
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `activitylevel`
--

DROP TABLE IF EXISTS `activitylevel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activitylevel` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `exLevel` varchar(25) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `exLevel` (`exLevel`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activitylevel`
--

LOCK TABLES `activitylevel` WRITE;
/*!40000 ALTER TABLE `activitylevel` DISABLE KEYS */;
INSERT INTO `activitylevel` VALUES (3,'Difficult'),(2,'Easy'),(1,'Moderate');
/*!40000 ALTER TABLE `activitylevel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `bookedexcursionview`
--

DROP TABLE IF EXISTS `bookedexcursionview`;
/*!50001 DROP VIEW IF EXISTS `bookedexcursionview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `bookedexcursionview` AS SELECT 
 1 AS `Crew Member`,
 1 AS `Passenger`,
 1 AS `Excursion`,
 1 AS `Food/Beverage`,
 1 AS `Duration in Minutes`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `citystate`
--

DROP TABLE IF EXISTS `citystate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citystate` (
  `city` varchar(90) NOT NULL,
  `state` char(2) NOT NULL,
  `zipCode` char(5) NOT NULL,
  PRIMARY KEY (`zipCode`),
  UNIQUE KEY `zipCode` (`zipCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citystate`
--

LOCK TABLES `citystate` WRITE;
/*!40000 ALTER TABLE `citystate` DISABLE KEYS */;
INSERT INTO `citystate` VALUES ('Trumbull','CT','06611'),('Paterson','NJ','07501'),('Piscataway','NJ','08854'),('Ballston Spa','NY','12020'),('Havertown','PA','19083'),('Waldorf','MD','20601'),('Glenarden','MD','20706'),('Chesterfield','VA','23832'),('Abingdon','VA','24210'),('Indian Trail','NC','28079'),('Mooresville','NC','28115'),('Clover','SC','29710'),('Duluth','GA','30096'),('Jupiter','FL','33458'),('Nashville','TN','37205'),('Memphis','TN','38117'),('Vicksburg','MS','39180'),('Willoughby','OH','44094'),('Cuyahoga Falls','OH','44223'),('Chillicothe','OH','45601'),('Noblesville','IN','46060'),('Battle Creek','MI','49016'),('Jefferson','LA','70121'),('Covington','LA','70433'),('Scottsdale','AZ','85260'),('Ontario','CA','91764'),('San Marcos','CA','92078'),('Huntington Beach','CA','92647'),('Santa Cruz','CA','95060');
/*!40000 ALTER TABLE `citystate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crew`
--

DROP TABLE IF EXISTS `crew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crew` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `address` varchar(90) NOT NULL,
  `zipCode` char(5) NOT NULL,
  `phone` char(10) NOT NULL,
  `email` varchar(90) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`),
  KEY `zipCode` (`zipCode`),
  CONSTRAINT `crew_ibfk_1` FOREIGN KEY (`zipCode`) REFERENCES `citystate` (`zipCode`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crew`
--

LOCK TABLES `crew` WRITE;
/*!40000 ALTER TABLE `crew` DISABLE KEYS */;
INSERT INTO `crew` VALUES (1,'Igor','Prince','12 Creekside St','92647','2025550109','iprince@cruise.com'),(2,'Dante','Rennie','137 Wall St','38117','2025550112','drennie@cruise.com'),(3,'Thomas','Waters','411 Shirley St','24210','2025550115','twaters@cruise.com'),(4,'Avaya','Clarke','7771 Border Court','92078','2025550119','aclarke@cruise.com'),(5,'Haniya','Kaiser','6 South Sulphur Springs Street','70121','2025550121','hkaiser@cruise.com'),(6,'Victor','Newman','942 New Saddle Drive','70433','2025550122','vnewman@cruise.com'),(7,'Douglas','Guthrie','9 Wrangler Ave','91764','2025550124','dguthrie@cruise.com'),(8,'Brian','Roberts','7319 S. Greenview Drive','44223','2025550125','broberts@cruise.com'),(9,'Paris','Solis','763 West Mulberry St','49016','2025550132','psolis@cruise.com'),(10,'Umaiza','Heath','545 Ohio Ave','85260','2025550135','uheath@cruise.com'),(11,'Raheem','Montgomery','71 Paris Hill Rd.','39180','4134849795','rmontgomery@cruise.com'),(12,'Leo','Bird','201 Eagle Dr.','12020','7747829407','lbird@cruise.com'),(13,'Oliwier','Barnett','81 Cedar Swamp St.','39180','2764343958','obarnett@cruise.com'),(14,'Fern','Garner','37 Gartner Court','12020','2256254378','fgarner@cruise.com'),(15,'Dawson','Marquez','90 Mammoth Street','45601','7634882879','dmarquez@cruise.com'),(16,'Raja','Glass','7918 Talbot Ave.','45601','2319969540','rglass@cruise.com'),(17,'Alissa','Ortiz','7756 Fulton Court','23832','2397268929','aortiz@cruise.com'),(18,'Nicholas','Pena','8123 Race Ave.','95060','7815242242','npena@cruise.com'),(19,'Harvey','West','9 Cherry Ave','23832','7326232762','hwest@cruise.com'),(20,'Aamina','Dillon','9 West Boston Lane','95060','2035745299','adillon@cruise.com'),(21,'Louis','Giles','598 North Road','28115','2708583758','lgiles@cruise.com'),(22,'Krystal','Walters','583 North Nichols Street','95060','3232591832','kwalters@cruise.com'),(23,'Alexa','Preston','9227 North Bow Ridge Street','28115','4098496634','apreston@cruise.com'),(24,'Rebekah','Morgan','9437 East 6th Street','20601','6073928343','rmorgan@cruise.com'),(25,'Ethan','Ali','167 NE. Depot Dr.','28115','2245499884','eali@cruise.com'),(26,'Malik','Vincent','312 Colonial Ave.','19083','9149573014','mvincent@cruise.com'),(27,'Sara','Barron','9064 E. Swanson St.','20601','8707743244','sbarron@cruise.com'),(28,'Lyra','Murphy','400 Nut Swamp Drive','19083','3527673126','lmurphy@cruise.com'),(29,'Awais','Carrillo','225 South Manhattan Street','28079','6369577670','acarrillo@cruise.com'),(30,'Kaya','Hodge','9572 William Lane','46060','2125271561','khodge@cruise.com'),(31,'Jemima','Miller','9290 Indian Spring Rd.','28079','6206673264','jmiller@cruise.com'),(32,'Laila','Christensen','15 Rose Avenue','07501','9017396978','lchristensen@cruise.com'),(33,'Honey','Warren','7946 Leeton Ridge Street','06611','5858531050','hwarren@cruise.com'),(34,'Brodie','Gordon','71 Jackson Ave.','46060','9016899813','bgordon@cruise.com'),(35,'Lauren','Morton','7931 Rockaway Street','28079','4476721422','lmorton@cruise.com'),(36,'Ty','Bell','921 Brook St.','07501','2393336881','tbell@cruise.com'),(37,'Floyd','Johns','2 Shore Street','06611','4065842872','fjohns@cruise.com'),(38,'Mathew','Horton','1 Rockland Ave.','46060','7195789907','mhorton@cruise.com'),(39,'Ernest','Higgins','451 Marshall Lane','06611','7637651247','ehiggins@cruise.com'),(40,'Kamil','Lozano','75 N. Golden Star Street','07501','7638554744','klozano@cruise.com');
/*!40000 ALTER TABLE `crew` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crewexcursion`
--

DROP TABLE IF EXISTS `crewexcursion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crewexcursion` (
  `crewID` int NOT NULL,
  `excurionID` int NOT NULL,
  PRIMARY KEY (`crewID`,`excurionID`),
  KEY `excurionID` (`excurionID`),
  CONSTRAINT `crewexcursion_ibfk_1` FOREIGN KEY (`crewID`) REFERENCES `crew` (`ID`),
  CONSTRAINT `crewexcursion_ibfk_2` FOREIGN KEY (`excurionID`) REFERENCES `excursion` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crewexcursion`
--

LOCK TABLES `crewexcursion` WRITE;
/*!40000 ALTER TABLE `crewexcursion` DISABLE KEYS */;
INSERT INTO `crewexcursion` VALUES (32,1),(31,2),(32,3),(29,4),(31,5),(29,6),(16,7),(16,8),(29,9),(32,9),(16,10),(31,11);
/*!40000 ALTER TABLE `crewexcursion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crewposition`
--

DROP TABLE IF EXISTS `crewposition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crewposition` (
  `crewID` int NOT NULL,
  `positionID` int NOT NULL,
  PRIMARY KEY (`crewID`,`positionID`),
  UNIQUE KEY `crewID` (`crewID`),
  KEY `positionID` (`positionID`),
  CONSTRAINT `crewposition_ibfk_1` FOREIGN KEY (`crewID`) REFERENCES `crew` (`ID`),
  CONSTRAINT `crewposition_ibfk_2` FOREIGN KEY (`positionID`) REFERENCES `position` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crewposition`
--

LOCK TABLES `crewposition` WRITE;
/*!40000 ALTER TABLE `crewposition` DISABLE KEYS */;
INSERT INTO `crewposition` VALUES (1,24),(2,12),(3,6),(4,3),(5,1),(6,20),(7,10),(8,5),(9,2),(10,16),(11,4),(12,19),(13,8),(14,17),(15,8),(16,23),(17,12),(18,10),(19,11),(20,5),(21,20),(22,13),(23,21),(24,15),(25,17),(26,7),(27,9),(28,18),(29,23),(30,13),(31,23),(32,23),(33,7),(34,19),(35,10),(36,15),(37,13),(38,7),(39,22),(40,14);
/*!40000 ALTER TABLE `crewposition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `crewpositionview`
--

DROP TABLE IF EXISTS `crewpositionview`;
/*!50001 DROP VIEW IF EXISTS `crewpositionview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `crewpositionview` AS SELECT 
 1 AS `Crew Member`,
 1 AS `Crew Phone`,
 1 AS `Crew Position`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `excursion`
--

DROP TABLE IF EXISTS `excursion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `excursion` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(300) NOT NULL,
  `sizeID` int NOT NULL,
  `typeID` int NOT NULL,
  `foodBeverageID` int NOT NULL,
  `activityLevelID` int NOT NULL,
  `durationMinutes` int NOT NULL,
  `price` decimal(6,2) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `name` (`name`),
  KEY `activityLevelID` (`activityLevelID`),
  KEY `sizeID` (`sizeID`),
  KEY `typeID` (`typeID`),
  KEY `foodBeverageID` (`foodBeverageID`),
  CONSTRAINT `excursion_ibfk_1` FOREIGN KEY (`activityLevelID`) REFERENCES `activitylevel` (`ID`),
  CONSTRAINT `excursion_ibfk_2` FOREIGN KEY (`sizeID`) REFERENCES `size` (`ID`),
  CONSTRAINT `excursion_ibfk_3` FOREIGN KEY (`typeID`) REFERENCES `type` (`ID`),
  CONSTRAINT `excursion_ibfk_4` FOREIGN KEY (`foodBeverageID`) REFERENCES `foodbeverage` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `excursion`
--

LOCK TABLES `excursion` WRITE;
/*!40000 ALTER TABLE `excursion` DISABLE KEYS */;
INSERT INTO `excursion` VALUES (1,'Skagway City and White Pass Summit','Start with a tour of historic Skagway, and learn of its lawless days during the \nKlondike Gold Rush of 1897-99 and travel through the White Pass Summit with lots of\nstops along the way to photograph the beautiful scenery.',1,1,1,1,150,65.00),(2,'Scenic Waterfall Adventure','When you stop in Skagway, there is no better scenic and relaxing ride to the areas \nbeautiful waterfall destinations, both in the state and along the Klondike Highway \ninto Canada.',1,2,1,2,180,75.00),(3,'Helicopter Glacier Discovery','When you stop in Skagway, there is no better scenic and relaxing ride to the areas \nbeautiful waterfall destinations, both in the state and along the Klondike Highway \ninto Canada.',1,2,1,2,180,435.00),(4,'White Pass Summit Rail and Bus Excursion','See more of Alaska on this scenic excursion that combines the best of the White \nPass Railroad with a bus tour along a different route with stops along the way.',2,1,1,2,225,186.00),(5,'White Pass Summit Rail and Yukon Suspension Bridge','See more of Alaska on this scenic excursion that combines the best of the White \nPass Railroad with an expedition to the Yukon Suspension Bridge.',2,1,1,2,285,229.00),(6,'Exclusive Juneau City and Mendenhall Glacier Tour','This half day program will give you a city orientation and a visit to the Mendenhall Glacier and visitors center.',1,1,2,2,180,75.00),(7,'Whales and Mendenhall Glacier','Alaska spectacular marine life and one of its best known glaciers all in a half day program on a boat holding a maximum of 40 guests. Whale viewing is guaranteed.',1,1,3,1,280,225.00),(8,'Best of Juneau','Combine whale watching, a salmon bake, and views of the Mendenhall Glacier in this Juneau combination.',1,4,5,2,375,223.00),(9,'Mendenhall Lake Kayak and Salmon Bake','Kayak into the breathtaking glacial waters of Mendenhall Lake and allow your senses to absorb the beauty this majestic place has to offer.',2,5,7,1,300,293.00),(10,'Mendenhall Glacier Trek','For the hearty and experienced hiker, come along for glacier trekking on the Mendenhall Glacier!',2,5,3,3,480,257.00),(11,'Helicopter Dog Sledding Extended Tour','This is a \"once in a lifetime\" tour. The helicopter flight is only one part of this legendary experience that includes flying over the Juneau Icefield to the dog camp and then experiencing a kennel tour and a dogsled ride. Choose this extended adventure for more time at the glacier!',2,5,1,2,220,832.00);
/*!40000 ALTER TABLE `excursion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `excursionview`
--

DROP TABLE IF EXISTS `excursionview`;
/*!50001 DROP VIEW IF EXISTS `excursionview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `excursionview` AS SELECT 
 1 AS `Excursion`,
 1 AS `Size`,
 1 AS `Type`,
 1 AS `Food/Beverage`,
 1 AS `Activity Level`,
 1 AS `Duration in Minutes`,
 1 AS `Price`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `foodbeverage`
--

DROP TABLE IF EXISTS `foodbeverage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `foodbeverage` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `offering` varchar(25) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `offering` (`offering`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foodbeverage`
--

LOCK TABLES `foodbeverage` WRITE;
/*!40000 ALTER TABLE `foodbeverage` DISABLE KEYS */;
INSERT INTO `foodbeverage` VALUES (8,'Beverages Included'),(6,'Buffet Included'),(4,'Coffee Included'),(7,'Lunch Included'),(2,'None'),(1,'Not Included'),(5,'Salmon Bake'),(3,'Snack');
/*!40000 ALTER TABLE `foodbeverage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passenger`
--

DROP TABLE IF EXISTS `passenger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passenger` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `address` varchar(90) NOT NULL,
  `zipCode` char(5) NOT NULL,
  `phone` char(10) NOT NULL,
  `email` varchar(90) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`),
  KEY `zipCode` (`zipCode`),
  CONSTRAINT `passenger_ibfk_1` FOREIGN KEY (`zipCode`) REFERENCES `citystate` (`zipCode`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passenger`
--

LOCK TABLES `passenger` WRITE;
/*!40000 ALTER TABLE `passenger` DISABLE KEYS */;
INSERT INTO `passenger` VALUES (1,'Goodman','Yvonne','12 Creekside St','37205','2025550109','ygoodman@isp.com'),(2,'Mackenzie','Dante','137 Wall St','37205','2025550112','dmackenzie@isp.com'),(3,'Rollins','Alysha','411 Shirley St','37205','2025550115','arollins@isp.com'),(4,'Gonzalez','Avaya','7771 Border Court','37205','2025550119','agonzalez@isp.com'),(5,'Kelly','Haniya','6 South Sulphur Springs Street','37205','2025550121','hkelly@isp.com'),(6,'Chambers','Nathalie','942 New Saddle Drive','29710','2025550122','nchambers@isp.com'),(7,'Rollins','Daniel','9 Wrangler Ave','29710','2025550124','drollins@isp.com'),(8,'Mckee','Beverley','7319 S. Greenview Drive','29710','2025550125','bmckee@isp.com'),(9,'Lindsey','Paris','763 West Mulberry St','29710','2025550132','plindsey@isp.com'),(10,'Melia','Umaiza','545 Ohio Ave','29710','2025550135','umelia@isp.com'),(11,'Prince','Nico','20 Middle River Street','44094','2025550137','nprince@isp.com'),(12,'Rennie','Javan','8112 North Country St','44094','2025550139','jrennie@isp.com'),(13,'Waters','Ali','83 Rockland Lane','44094','2025550144','awaters@isp.com'),(14,'Clarke','JohnPaul','1 Riverside Lane','44094','2025550153','jpcClarke@isp.com'),(15,'Kaiser','Dane','694 Wall Road','44094','2025550155','kdaiser@isp.com'),(16,'Newman','Hammad','9970 State Court','30096','2025550157','hnewman@isp.com'),(17,'Guthrie','Maha','54 Woodsman Drive','30096','2025550161','mguthrie@isp.com'),(18,'Roberts','Tulisa','7174 Studebaker Street','30096','2025550163','troberts@isp.com'),(19,'Solis','Robin','8474 Wentworth Street','30096','2025550164','rsolis@isp.com'),(20,'Heath','Kavita','796 Hartford St','30096','2025550165','kheath@isp.com'),(21,'White','Meera','484 Bridge St','08854','2025550166','mwhite@isp.com'),(22,'Esparza','Bradlee','7031 Gainsway St','08854','2025550173','besparza@isp.com'),(23,'Leonard','Leilani','37 Monroe Street','08854','2025550175','lleonard@isp.com'),(24,'Brook','Stefanie','7990 West Surrey St','08854','2025550179','sbrook@isp.com'),(25,'Squires','Grover','7618 Madison Court','08854','2025550180','gsquires@isp.com'),(26,'Kumar','Jonathan','25 Annadale Court','33458','2025550182','jkumar@isp.com'),(27,'Neville','Angus','9841 Smith Drive','33458','2025550187','aneville@isp.com'),(28,'Sparrow','Uzair','7999 Hall Street','33458','2025550188','usparrow@isp.com'),(29,'Currie','Amari','8411 Pleasant St','33458','2025550194','acurrie@isp.com'),(30,'Wallace','Imaani','33 Pierce Rd','33458','2025550195','iwallace@isp.com'),(31,'House','Efe','97 High Point Street','20706','2025550196','ehouse@isp.com'),(32,'Atkinson','Atticus','66 Harrison Dr','20706','2025550197','aatkinson@isp.com'),(33,'Ramirez','Michelle','370 Hill Field Ave','20706','2025550198','mramirez@isp.com'),(34,'Hassan','Remy','249 Devon Lane','20706','2025550199','rhassan@isp.com'),(35,'Beck','Jordana','7911 Carson Lane','20706','2025550200','jbeck@isp.com');
/*!40000 ALTER TABLE `passenger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passengerexcursion`
--

DROP TABLE IF EXISTS `passengerexcursion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passengerexcursion` (
  `passengerID` int NOT NULL,
  `excursionID` int NOT NULL,
  PRIMARY KEY (`passengerID`,`excursionID`),
  KEY `excursionID` (`excursionID`),
  CONSTRAINT `passengerexcursion_ibfk_1` FOREIGN KEY (`passengerID`) REFERENCES `passenger` (`ID`),
  CONSTRAINT `passengerexcursion_ibfk_2` FOREIGN KEY (`excursionID`) REFERENCES `excursion` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passengerexcursion`
--

LOCK TABLES `passengerexcursion` WRITE;
/*!40000 ALTER TABLE `passengerexcursion` DISABLE KEYS */;
INSERT INTO `passengerexcursion` VALUES (5,1),(7,1),(12,1),(1,2),(2,2),(23,3),(27,3),(8,4),(11,4),(16,5),(30,5),(19,6),(20,6),(15,7),(28,7),(32,8),(35,8),(22,11),(31,11);
/*!40000 ALTER TABLE `passengerexcursion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `description` varchar(50) NOT NULL,
  `hourly` decimal(5,2) NOT NULL DEFAULT '11.00',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `description` (`description`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,'Accounting & Finance',15.00),(2,'Activities & Fitness',15.00),(3,'Administration',18.00),(4,'Advertising & Marketing',21.00),(5,'Casino',13.00),(6,'Culinary Chef',25.00),(7,'Deck & Engine',18.00),(8,'Engineering',39.00),(9,'Entertainment',22.00),(10,'Food & Beverage',13.00),(11,'Front Desk & Concierge',21.00),(12,'Guest Services',14.00),(13,'Housekeeping',12.00),(14,'HR',15.00),(15,'IT & Internet',20.00),(16,'Legal',40.00),(17,'Mechanic & Maintenance',34.00),(18,'Procurement & Purchasing',18.00),(19,'Retail & Merchandising',24.00),(20,'Sales & Reservations',24.00),(21,'Salon & Spa',25.00),(22,'Security & Surveillance',18.00),(23,'Shore Excursion',20.00),(24,'Travel & Tourism',23.00);
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `size`
--

DROP TABLE IF EXISTS `size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `size` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `exSize` varchar(25) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `exSize` (`exSize`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `size`
--

LOCK TABLES `size` WRITE;
/*!40000 ALTER TABLE `size` DISABLE KEYS */;
INSERT INTO `size` VALUES (3,'Private'),(2,'Small'),(1,'Standard');
/*!40000 ALTER TABLE `size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timesheet`
--

DROP TABLE IF EXISTS `timesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timesheet` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `crewId` int NOT NULL,
  `sun` int NOT NULL DEFAULT '0',
  `mon` int NOT NULL DEFAULT '0',
  `tues` int NOT NULL DEFAULT '0',
  `wed` int NOT NULL DEFAULT '0',
  `thurs` int NOT NULL DEFAULT '0',
  `fri` int NOT NULL DEFAULT '0',
  `sat` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `crewId` (`crewId`),
  CONSTRAINT `timesheet_ibfk_1` FOREIGN KEY (`crewId`) REFERENCES `crew` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timesheet`
--

LOCK TABLES `timesheet` WRITE;
/*!40000 ALTER TABLE `timesheet` DISABLE KEYS */;
INSERT INTO `timesheet` VALUES (1,25,12,0,12,0,4,12,0),(2,13,7,4,9,0,0,10,3),(3,27,0,12,6,10,6,8,0),(4,36,8,8,0,0,8,10,6),(5,12,0,8,8,8,8,8,0),(6,29,12,0,12,0,4,12,0),(7,32,0,12,6,10,6,8,0),(8,4,10,8,0,0,8,10,10),(9,20,8,8,0,0,8,10,6),(10,14,12,0,12,0,4,12,0),(11,21,8,8,0,0,8,10,6),(12,16,12,0,12,0,4,12,0),(13,34,0,8,8,8,8,8,0),(14,7,12,0,12,0,4,12,0),(15,10,6,6,6,6,6,5,0),(16,39,0,8,8,8,8,8,0),(17,30,10,8,0,0,8,10,10),(18,38,7,4,9,0,0,10,3),(19,37,6,6,6,6,6,5,0),(20,5,6,6,6,6,6,5,0),(21,40,10,8,0,0,8,10,10),(22,15,7,4,9,0,0,10,3),(23,31,10,8,0,0,8,10,10),(24,11,10,8,0,0,8,10,10),(25,24,7,4,9,0,0,10,3),(26,35,8,8,0,0,8,10,6),(27,28,12,0,12,0,4,12,0),(28,6,0,8,8,8,8,8,0),(29,17,10,8,0,0,8,10,10),(30,18,0,8,8,8,8,8,0),(31,23,6,6,6,6,6,5,0),(32,1,0,12,6,10,6,8,0),(33,2,0,8,8,8,8,8,0),(34,8,8,8,0,0,8,10,6),(35,9,0,12,6,10,6,8,0),(36,26,0,12,6,10,6,8,0),(37,22,6,6,6,6,6,5,0),(38,33,0,12,6,10,6,8,0),(39,3,6,6,6,6,6,5,0),(40,19,0,8,8,8,8,8,0);
/*!40000 ALTER TABLE `timesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `timesheetview`
--

DROP TABLE IF EXISTS `timesheetview`;
/*!50001 DROP VIEW IF EXISTS `timesheetview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `timesheetview` AS SELECT 
 1 AS `Crew Member`,
 1 AS `Hours`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `exType` varchar(25) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `exType` (`exType`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (5,'Active'),(6,'Beach'),(4,'Cuisine'),(2,'Cultural'),(1,'Scenic'),(3,'Water');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'cruise'
--
/*!50003 DROP PROCEDURE IF EXISTS `payCheck` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `payCheck`(IN crewNum int, INOUT salary varchar(4000))
BEGIN
 
    DECLARE v_finished INTEGER DEFAULT 0;
    DECLARE v_lines varchar(100) DEFAULT "--------------------------------------------------------------------------------";
    DECLARE v_cFirst VARCHAR(100) DEFAULT "";
    DECLARE v_cLast VARCHAR(100) DEFAULT "";
    DECLARE v_cAddress VARCHAR(100) DEFAULT "";
    DECLARE v_cCity VARCHAR(100) DEFAULT "";
    DECLARE v_cState VARCHAR(100) DEFAULT "";
    DECLARE v_cZip VARCHAR(100) DEFAULT "";
    DECLARE v_tHours INT DEFAULT 0;
    DECLARE v_pHourly DECIMAL(5,2) DEFAULT 0.0;
    DECLARE v_overtime INT DEFAULT 0;
    DECLARE v_count INTEGER DEFAULT 0;
    DECLARE v_pay DECIMAL(8,2) DEFAULT 0.0;
 
    DEClARE crew_cursor CURSOR FOR 
 
    SELECT c.firstName, c.lastName, c.address, cs.city, cs.state, cs.zipCode, sum(ts.sun + ts.mon + ts.tues + ts.wed + ts.thurs + ts.fri + ts.sat) "hours", p.hourly
    FROM crew c, cityState cs, timesheet ts, position p, crewposition cp
    WHERE ts.crewId = c.ID
    AND p.ID = cp.positionId
    AND cs.zipCode = c.zipCode
    AND cp.crewId = c.ID
    AND ts.crewId = crewNum
    GROUP BY c.firstName, c.lastName, c.address, cs.city, cs.state, cs.zipCode, "hours", p.hourly;

    DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET v_finished = 1;

    OPEN crew_cursor;

    get_crew: LOOP
 
        FETCH crew_cursor 
        INTO v_cFirst, v_cLast, v_cAddress, v_cCity, v_cState, v_cZip, v_tHours, v_pHourly;

        IF v_finished = 1 THEN 
            LEAVE get_crew;
        END IF;
 
        SET v_count = v_count + 1;

        IF v_count = 1 THEN
            IF v_tHours <= 40 THEN
                SET v_pay = v_tHours * v_pHourly;
            ELSEIF v_tHours > 40 THEN
                SET v_overtime = (v_tHours - 40) * (v_pHourly * 1.5);
                SET v_pay = 40 * v_pHourly;
                SET v_pay = v_pay + v_overtime;
            END IF;

            SET salary = CONCAT(salary, '\From:\n');
            SET salary = CONCAT(salary, '\nCGS 2545 Cruiselines\n');
            SET salary = CONCAT(salary, '\UCF\n');
            SET salary = CONCAT(salary, '\MSB 260\n\n');
            SET salary = CONCAT(salary, 'Pay to the order of:\n\n');
            SET salary = CONCAT(salary, v_cFirst, ' ', v_cLast, '\n');
            SET salary = CONCAT(salary, v_cAddress, '\n');
            SET salary = CONCAT(salary, v_cCity, ', ', v_cState, ' ', v_cZip, '\n\n');
            SET salary = CONCAT(salary, 'In the amount of:\n\n');
            SET salary = CONCAT(salary, '$', v_pay, '\n');
            SET salary = CONCAT(salary, '\n', v_lines, '\n');
        END IF;
    END LOOP get_crew;

    CLOSE crew_cursor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `bookedexcursionview`
--

/*!50001 DROP VIEW IF EXISTS `bookedexcursionview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bookedexcursionview` AS select distinct concat_ws(' ',`c`.`firstName`,`c`.`lastName`) AS `Crew Member`,concat_ws(' ',`p`.`firstName`,`p`.`lastName`) AS `Passenger`,`e`.`name` AS `Excursion`,`fb`.`offering` AS `Food/Beverage`,`e`.`durationMinutes` AS `Duration in Minutes` from (((((`crew` `c` join `passenger` `p`) join `excursion` `e`) join `passengerexcursion` `pe`) join `foodbeverage` `fb`) join `crewexcursion` `ce`) where ((`p`.`ID` = `pe`.`passengerID`) and (`e`.`ID` = `pe`.`excursionID`) and (`c`.`ID` = `ce`.`crewID`) and (`e`.`ID` = `ce`.`excurionID`) and (`e`.`foodBeverageID` = `fb`.`ID`)) order by `e`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `crewpositionview`
--

/*!50001 DROP VIEW IF EXISTS `crewpositionview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `crewpositionview` AS select concat_ws(' ',`c`.`firstName`,`c`.`lastName`) AS `Crew Member`,`c`.`phone` AS `Crew Phone`,`p`.`description` AS `Crew Position` from ((`crew` `c` join `crewposition` `cp` on((`cp`.`crewID` = `c`.`ID`))) join `position` `p` on((`p`.`ID` = `cp`.`positionID`))) order by `p`.`description`,`c`.`lastName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `excursionview`
--

/*!50001 DROP VIEW IF EXISTS `excursionview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `excursionview` AS select `e`.`name` AS `Excursion`,`s`.`exSize` AS `Size`,`t`.`exType` AS `Type`,`f`.`offering` AS `Food/Beverage`,`a`.`exLevel` AS `Activity Level`,`e`.`durationMinutes` AS `Duration in Minutes`,`e`.`price` AS `Price` from ((((`excursion` `e` join `foodbeverage` `f`) join `type` `t`) join `size` `s`) join `activitylevel` `a`) where ((`e`.`sizeID` = `s`.`ID`) and (`e`.`typeID` = `t`.`ID`) and (`e`.`foodBeverageID` = `f`.`ID`) and (`e`.`activityLevelID` = `a`.`ID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `timesheetview`
--

/*!50001 DROP VIEW IF EXISTS `timesheetview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `timesheetview` AS select concat_ws(' ',`c`.`firstName`,`c`.`lastName`) AS `Crew Member`,sum(((((((`ts`.`sun` + `ts`.`mon`) + `ts`.`tues`) + `ts`.`wed`) + `ts`.`thurs`) + `ts`.`fri`) + `ts`.`sat`)) AS `Hours` from (`crew` `c` join `timesheet` `ts`) where (`c`.`ID` = `ts`.`crewId`) group by 'Crew Member',`c`.`lastName`,`c`.`firstName` order by `c`.`lastName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-17 15:19:15
