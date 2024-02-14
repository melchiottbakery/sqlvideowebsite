CREATE DATABASE  IF NOT EXISTS `final0420` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `final0420`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: final0420
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `c_userId` int NOT NULL,
  `c_vidUrl` varchar(255) NOT NULL,
  `comment_date` datetime NOT NULL,
  `content` varchar(255) NOT NULL,
  `likes` int DEFAULT '0',
  `reply_num` int DEFAULT '0',
  PRIMARY KEY (`c_userId`,`c_vidUrl`,`comment_date`),
  KEY `c_vidUrl` (`c_vidUrl`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`c_userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`c_vidUrl`) REFERENCES `video` (`videoUrl`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'https://www.youtube.com/watch?v=fJ9rUzIMcZQ','2023-04-03 00:00:00','This is my favorite video on the channel so far.',18,2),(2,'https://www.youtube.com/watch?v=5qap5aO4i9A','2023-03-20 00:00:00','This video was very helpful!',12,3),(3,'https://www.youtube.com/watch?v=I8dG4Gu1J_E','2023-03-25 00:00:00','Can you make a video about X topic?',5,1),(4,'https://www.youtube.com/watch?v=ArHc-7XpPBo','2023-03-28 00:00:00','I appreciate the effort you put into this video, it shows!',10,4),(5,'https://www.youtube.com/watch?v=5qap5aO4i9A','2023-03-15 00:00:00','Great video, thanks for sharing!',8,2),(6,'https://www.youtube.com/watch?v=fJ9rUzIMcZQ','2023-04-04 00:00:00','Can you do a video about Y topic next?',6,1),(7,'https://www.youtube.com/watch?v=I8dG4Gu1J_E','2023-03-22 00:00:00','I love this channel, keep up the good work!',20,5),(8,'https://www.youtube.com/watch?v=fJ9rUzIMcZQ','2023-04-02 00:00:00','Your videos have helped me a lot in my studies, thank you!',15,6),(9,'https://www.youtube.com/watch?v=I8dG4Gu1J_E','2023-03-27 00:00:00','Interesting video, but I have some disagreements with your points.',3,0),(10,'https://www.youtube.com/watch?v=IbYOfjLDPYo','2023-04-05 00:00:00','I found this video very insightful, thank you!',7,1),(11,'https://www.youtube.com/watch?v=ArHc-7XpPBo','2023-04-10 00:00:00','I just discovered your channel and I love it already!',5,1),(12,'https://www.youtube.com/watch?v=7dqJTP6l9y0','2023-04-11 00:00:00','The examples you gave in this video were really helpful.',12,3),(13,'https://www.youtube.com/watch?v=4twN6NnmZNU','2023-04-13 00:00:00','Your videos have helped me a lot in my research, thank you!',8,2),(14,'https://www.youtube.com/watch?v=wQXZptfRUsE','2023-04-15 00:00:00','I appreciate how clearly you explain complex concepts.',15,4),(15,'https://www.youtube.com/watch?v=t1vqjiGI3wU','2023-04-16 00:00:00','I have been struggling with this topic for a while and this video really helped me understand it better.',10,2),(16,'https://www.youtube.com/watch?v=iPmCxQuWwck','2023-04-17 00:00:00','I disagree with some of your points in this video, but it was still interesting to watch.',2,0),(17,'https://www.youtube.com/watch?v=ifxMxrd-Elc','2023-04-19 00:00:00','I always look forward to your videos, they are so informative and well-made.',20,5),(18,'https://www.youtube.com/watch?v=zFgpNbsO-CE','2023-04-20 00:00:00','I learned so much from this video, thank you for sharing your knowledge!',15,3),(19,'https://www.youtube.com/watch?v=xT8J6TBJIjw','2023-04-21 00:00:00','This video was a great introduction to the topic, I can\'t wait to learn more!',7,1),(20,'https://www.youtube.com/watch?v=lJQKtp03X9M','2023-04-23 00:00:00','I would love to see more videos about this topic, it is so fascinating!',4,1);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creator`
--

DROP TABLE IF EXISTS `creator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `creator` (
  `creatorId` int NOT NULL,
  `subscriber_count` int DEFAULT '0',
  `video_num` int DEFAULT '0',
  `description` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`creatorId`),
  CONSTRAINT `creator_ibfk_1` FOREIGN KEY (`creatorId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creator`
--

LOCK TABLES `creator` WRITE;
/*!40000 ALTER TABLE `creator` DISABLE KEYS */;
INSERT INTO `creator` VALUES (1,1000,6,'A travel vlogger who takes you on adventures around the world.'),(2,500,15,'A makeup artist who creates bold and colorful looks for all skin tones.'),(3,2000,30,'A gamer who streams live gameplay and provides tips and tricks for fellow gamers.'),(4,150,5,'A food enthusiast who shares recipes and cooking techniques from around the world.'),(11,300,10,'A musician who posts covers and original music on their channel.'),(12,800,25,'A comedian who creates hilarious skits and parodies on various topics.'),(13,250,8,'A fitness trainer who provides workout routines and healthy lifestyle advice.'),(14,1200,18,'A book reviewer who shares their thoughts on the latest novels and literary classics.');
/*!40000 ALTER TABLE `creator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerservice`
--

DROP TABLE IF EXISTS `customerservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerservice` (
  `service_id` int NOT NULL,
  `timezone` int NOT NULL,
  `rating` int NOT NULL,
  PRIMARY KEY (`service_id`),
  CONSTRAINT `customerservice_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `staff` (`staffId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerservice`
--

LOCK TABLES `customerservice` WRITE;
/*!40000 ALTER TABLE `customerservice` DISABLE KEYS */;
INSERT INTO `customerservice` VALUES (3,-8,3),(4,5,4),(5,-3,2),(6,0,4),(13,8,1),(14,-7,5),(15,-2,3),(16,1,4);
/*!40000 ALTER TABLE `customerservice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moderator`
--

DROP TABLE IF EXISTS `moderator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moderator` (
  `modid` int NOT NULL,
  `mod_theme` varchar(50) NOT NULL,
  `modvid_count` int DEFAULT '0',
  PRIMARY KEY (`modid`),
  CONSTRAINT `moderator_ibfk_1` FOREIGN KEY (`modid`) REFERENCES `staff` (`staffId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moderator`
--

LOCK TABLES `moderator` WRITE;
/*!40000 ALTER TABLE `moderator` DISABLE KEYS */;
INSERT INTO `moderator` VALUES (7,'Sports',7),(8,'Music',6),(9,'Food',5),(10,'Technology',4),(17,'Beauty',3),(18,'Comedy',3),(19,'Politics',3),(20,'Science',2);
/*!40000 ALTER TABLE `moderator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `report_userId` int NOT NULL,
  `report_cuId` int NOT NULL,
  `report_date` datetime NOT NULL,
  `description` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`report_userId`,`report_cuId`,`report_date`),
  KEY `report_cuId` (`report_cuId`),
  CONSTRAINT `report_ibfk_1` FOREIGN KEY (`report_cuId`) REFERENCES `customerservice` (`service_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `report_ibfk_2` FOREIGN KEY (`report_userId`) REFERENCES `user` (`userId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (1,3,'2023-02-11 14:30:00','Inappropriate language used'),(1,3,'2023-02-15 10:30:00','Inappropriate language used'),(2,4,'2023-02-25 11:30:00','Service was unresponsive'),(2,4,'2023-03-01 15:30:00','Service was unresponsive'),(3,5,'2023-03-01 16:30:00','Service did not deliver as promised'),(3,5,'2023-04-15 12:30:00','Service did not deliver as promised'),(4,6,'2023-03-02 16:30:00','Service did not meet expectations'),(4,6,'2023-04-15 13:30:00','Service did not meet expectations'),(5,3,'2023-03-02 10:30:00','Service did not respond to multiple inquiries'),(5,3,'2023-04-15 14:30:00','Service did not respond to multiple inquiries'),(6,4,'2023-03-03 10:30:00','Service was not provided as described'),(6,4,'2023-04-15 15:30:00','Service was not provided as described'),(7,5,'2023-03-03 10:30:00','Service did not meet expectations'),(7,5,'2023-04-15 16:30:00','Service did not meet expectations'),(8,6,'2023-04-14 10:30:00','Inappropriate content shared'),(8,6,'2023-04-15 17:30:00','Inappropriate content shared'),(9,3,'2023-03-15 10:30:00','Service was not provided'),(9,3,'2023-04-15 18:30:00','Service was not provided'),(10,4,'2023-03-25 10:30:00','Service did not meet expectations'),(10,4,'2023-04-15 19:30:00','Service did not meet expectations'),(11,13,'2023-04-16 10:30:00','Product was damaged during shipping'),(12,14,'2023-04-16 11:30:00','Wrong item received'),(13,15,'2023-04-16 12:30:00','Item did not match description'),(14,16,'2023-04-16 13:30:00','Defective product'),(15,13,'2023-04-16 14:30:00','Package was not delivered'),(16,14,'2023-04-16 15:30:00','Item was not as expected'),(17,15,'2023-04-16 16:30:00','Item was damaged during shipment'),(18,16,'2023-04-16 17:30:00','Item was not delivered at all'),(19,13,'2023-04-16 18:30:00','Product did not work as advertised'),(20,14,'2023-04-16 19:30:00','Service was not provided'),(21,3,'2023-04-20 10:15:00','Service was not provided as described.'),(22,4,'2023-04-19 14:20:00','Service did not meet expectations.'),(23,5,'2023-04-18 16:30:00','Service did not deliver as promised.'),(24,6,'2023-04-17 08:45:00','Inappropriate language used in service.'),(25,13,'2023-04-16 11:25:00','Service was unresponsive.'),(26,14,'2023-04-15 13:40:00','Service did not meet expectations.'),(27,15,'2023-04-14 09:55:00','Service did not respond to multiple inquiries.'),(28,16,'2023-04-13 16:10:00','Service was not provided at all.'),(29,3,'2023-04-12 12:30:00','Service did not meet expectations.'),(30,4,'2023-04-11 15:50:00','Service did not deliver as promised.');
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staffId` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `join_date` date DEFAULT NULL,
  PRIMARY KEY (`staffId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'John Doe','2021-01-01'),(2,'Jane Smith','2021-03-15'),(3,'Bob Johnson','2021-06-30'),(4,'Samantha Lee','2022-01-01'),(5,'Alex Chen','2022-02-14'),(6,'Emily Davis','2022-03-01'),(7,'Mark Wilson','2022-03-15'),(8,'Grace Kim','2022-04-01'),(9,'Chris Brown','2022-05-01'),(10,'Sophia Rodriguez','2022-06-01'),(11,'William Turner','2020-01-01'),(12,'Emma Johnson','2020-02-02'),(13,'Daniel Smith','2020-03-03'),(14,'Olivia Lee','2020-04-04'),(15,'Lucas Chen','2020-05-05'),(16,'Sophia Adams','2020-06-06'),(17,'Henry Garcia','2020-07-07'),(18,'Ava Wilson','2020-08-08'),(19,'Jack Brown','2020-09-09'),(20,'Isabella Davis','2020-10-10'),(21,'Antonio Rossi','2020-11-11'),(22,'Lara Tanaka','2020-12-12'),(23,'Giovanni Bianchi','2021-01-01'),(24,'Aiko Yamamoto','2021-02-02'),(25,'Fabio Russo','2021-03-03'),(26,'Hiroshi Kimura','2021-04-04'),(27,'Julia Schneider','2021-05-05'),(28,'Ravi Patel','2021-06-06'),(29,'Nina Wong','2021-07-07'),(30,'Josh Hugger','2021-06-04');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriber`
--

DROP TABLE IF EXISTS `subscriber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscriber` (
  `subId` int DEFAULT NULL,
  `subtoId` int DEFAULT NULL,
  `subDate` date DEFAULT NULL,
  `notification` enum('Yes','No') DEFAULT NULL,
  KEY `subtoId` (`subtoId`),
  KEY `subId` (`subId`),
  CONSTRAINT `subscriber_ibfk_1` FOREIGN KEY (`subtoId`) REFERENCES `creator` (`creatorId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `subscriber_ibfk_2` FOREIGN KEY (`subId`) REFERENCES `viewer` (`viewerId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriber`
--

LOCK TABLES `subscriber` WRITE;
/*!40000 ALTER TABLE `subscriber` DISABLE KEYS */;
INSERT INTO `subscriber` VALUES (2,1,'2023-03-01','Yes'),(3,2,'2023-03-02','Yes'),(4,3,'2023-03-03','No'),(5,4,'2023-03-04','Yes'),(6,1,'2023-03-05','Yes'),(7,2,'2023-03-06','No'),(8,3,'2023-03-07','Yes'),(9,4,'2023-03-08','Yes'),(10,1,'2023-03-09','No'),(1,2,'2023-03-10','Yes'),(2,2,'2023-03-01','Yes'),(3,3,'2023-03-02','Yes'),(4,4,'2023-03-03','No'),(5,1,'2023-03-04','Yes'),(6,2,'2023-03-05','Yes'),(7,3,'2023-03-06','No'),(8,4,'2023-03-07','Yes'),(9,11,'2023-03-08','Yes'),(10,12,'2023-03-09','No'),(1,13,'2023-03-10','Yes'),(21,11,'2023-03-01','Yes'),(23,12,'2023-03-02','Yes'),(24,14,'2023-03-03','No'),(25,11,'2023-03-04','Yes'),(26,12,'2023-03-05','Yes'),(27,13,'2023-03-06','No'),(28,14,'2023-03-07','Yes'),(29,11,'2023-03-08','Yes'),(30,12,'2023-03-09','No'),(1,13,'2023-03-10','Yes');
/*!40000 ALTER TABLE `subscriber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userId` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `join_date` date DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'johndoe123','2021-01-01','johndoe123@example.com'),(2,'janesmith456','2021-03-15','janesmith456@example.com'),(3,'bobjohnson789','2021-06-30','bobjohnson789@example.com'),(4,'samanthalee012','2022-01-01','samanthalee012@example.com'),(5,'alexchen345','2022-02-14','alexchen345@example.com'),(6,'emilydavis678','2022-03-01','emilydavis678@example.com'),(7,'markwilson901','2022-03-15','markwilson901@example.com'),(8,'gracekim234','2022-04-01','gracekim234@example.com'),(9,'chrisbrown567','2022-05-01','chrisbrown567@example.com'),(10,'sophiarodriguez890','2022-06-01','sophiarodriguez890@example.com'),(11,'peterparker11','2018-05-23','peterparker11@example.com'),(12,'janedoe12','2018-07-17','janedoe12@example.com'),(13,'tonystark13','2018-09-08','tonystark13@example.com'),(14,'sarahjohnson14','2018-12-01','sarahjohnson14@example.com'),(15,'kevinlee15','2019-02-14','kevinlee15@example.com'),(16,'meganbaker16','2019-05-01','meganbaker16@example.com'),(17,'davidkim17','2019-08-10','davidkim17@example.com'),(18,'lisachen18','2019-10-31','lisachen18@example.com'),(19,'adamsmith19','2020-02-01','adamsmith19@example.com'),(20,'jenniferbrown20','2020-04-15','jenniferbrown20@example.com'),(21,'harrypotter21','2020-06-30','harrypotter21@example.com'),(22,'amandarodriguez22','2020-09-20','amandarodriguez22@example.com'),(23,'michaeljackson23','2020-11-11','michaeljackson23@example.com'),(24,'katyperry24','2021-01-01','katyperry24@example.com'),(25,'paulmccartney25','2021-02-14','paulmccartney25@example.com'),(26,'carolinebrown26','2021-04-01','carolinebrown26@example.com'),(27,'stevejobs27','2021-06-15','stevejobs27@example.com'),(28,'jessicasimpson28','2021-08-05','jessicasimpson28@example.com'),(29,'davidsmith29','2021-10-20','davidsmith29@example.com'),(30,'nataliewilson30','2021-12-25','nataliewilson30@example.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video` (
  `videoUrl` varchar(255) NOT NULL,
  `vid_creatorId` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `create_date` date NOT NULL,
  `views` int DEFAULT '0',
  `download` int DEFAULT '0',
  `likes` int DEFAULT '0',
  `shares` int DEFAULT '0',
  `theme` varchar(255) NOT NULL,
  `lengthOfMin` int NOT NULL,
  `revenue` int DEFAULT '0',
  `modid` int DEFAULT NULL,
  PRIMARY KEY (`videoUrl`),
  KEY `vid_creatorId` (`vid_creatorId`),
  KEY `modid` (`modid`),
  CONSTRAINT `video_ibfk_1` FOREIGN KEY (`vid_creatorId`) REFERENCES `creator` (`creatorId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `video_ibfk_2` FOREIGN KEY (`modid`) REFERENCES `moderator` (`modid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES ('https://www.youtube.com/watch?v=0xTMS7wyCYA',4,'Building a Custom PC','2022-01-23',25000,20000,500,100,'Technology',120,15000,10),('https://www.youtube.com/watch?v=4twN6NnmZNU',14,'Climate Change and its Effects','2022-03-22',10000,5000,500,100,'Science',90,8000,20),('https://www.youtube.com/watch?v=4wW8sACF43U',14,'The Physics of Black Holes','2022-03-12',5000,2000,100,50,'Science',60,6000,20),('https://www.youtube.com/watch?v=5qap5aO4i9A',1,'Climbing Mount Everest','2022-02-14',50000,30000,1500,350,'Sports',120,20000,7),('https://www.youtube.com/watch?v=7dqJTP6l9y0',2,'Guitar Lessons for Beginners','2022-04-12',4000,2000,100,20,'Music',45,5000,8),('https://www.youtube.com/watch?v=ArHc-7XpPBo',2,'The Science of Astrophysics','2021-10-18',5000,2000,150,50,'Music',60,6000,8),('https://www.youtube.com/watch?v=Az_-GHsX-h0',4,'Virtual Reality Gaming','2022-01-10',15000,10000,300,50,'Technology',30,5000,10),('https://www.youtube.com/watch?v=bGwE8BCEKyk',4,'Coding Bootcamp','2021-11-20',10000,5000,500,100,'Technology',90,8000,10),('https://www.youtube.com/watch?v=C7Zj6oYCEbU',2,'Drumming Techniques for Beginners','2022-05-05',5000,3000,150,30,'Music',60,7000,8),('https://www.youtube.com/watch?v=fJ9rUzIMcZQ',3,'Traveling to Japan','2022-02-10',100000,80000,2000,1000,'Food',90,30000,9),('https://www.youtube.com/watch?v=FN2DBUQj-Zs',11,'Smokey Eye Makeup Tutorial','2022-03-02',70000,50000,3000,800,'Beauty',30,20000,17),('https://www.youtube.com/watch?v=I8dG4Gu1J_E',2,'Cooking with Chef Ramsay','2022-01-28',250000,200000,12000,6000,'Music',30,75000,8),('https://www.youtube.com/watch?v=IbYOfjLDPYo',2,'Singing and Vocal Lessons','2022-03-08',20000,15000,500,100,'Music',60,8000,8),('https://www.youtube.com/watch?v=ifxMxrd-Elc',11,'Everyday Makeup Tutorial','2022-01-10',60000,40000,2000,500,'Beauty',25,15000,17),('https://www.youtube.com/watch?v=ihH25Z20ep4',11,'Natural Skincare Routine','2022-02-03',80000,60000,2500,500,'Beauty',20,18000,17),('https://www.youtube.com/watch?v=iPmCxQuWwck',13,'Election Analysis and Results','2022-02-22',10000,5000,250,50,'Politics',60,8000,19),('https://www.youtube.com/watch?v=KgjFY-_M-3w',1,'Fashion Trends of 2023','2022-03-01',500000,300000,5000,2000,'Sports',15,120000,7),('https://www.youtube.com/watch?v=lJQKtp03X9M',12,'Stand-Up Comedy Special','2022-02-20',120000,100000,5000,1000,'Comedy',60,40000,18),('https://www.youtube.com/watch?v=lV7bITVo9Uo',1,'Snowboarding in the Alps','2022-02-08',80000,60000,2500,600,'Sports',75,30000,7),('https://www.youtube.com/watch?v=mY8FnlCZXtM',12,'Pranking my Friends','2022-03-05',150000,100000,7000,2000,'Comedy',15,30000,18),('https://www.youtube.com/watch?v=n2yTcRiAP7Q',3,'DIY Home Decor','2021-12-03',150000,100000,3500,1200,'Food',45,45000,9),('https://www.youtube.com/watch?v=RR_F4GcNOp4',1,'Summer Fashion Trends','2022-05-01',1200000,900000,10000,4000,'Sports',10,200000,7),('https://www.youtube.com/watch?v=RRwVjK-nfCc',13,'Debunking Political Myths','2022-02-25',20000,15000,500,100,'Politics',45,5000,19),('https://www.youtube.com/watch?v=sFXWwJQuonM',12,'Roasting Celebrities','2022-02-18',250000,200000,10000,3000,'Comedy',45,60000,18),('https://www.youtube.com/watch?v=t1vqjiGI3wU',3,'Baking Perfect Cupcakes','2022-03-15',80000,60000,2000,500,'Food',60,25000,9),('https://www.youtube.com/watch?v=vY3pAi3zq3E',1,'Fitness and Workout Routines','2022-01-02',75000,50000,2500,500,'Sports',45,25000,7),('https://www.youtube.com/watch?v=wQXZptfRUsE',13,'Interview with a Politician','2022-03-15',5000,3000,150,50,'Politics',30,1000,19),('https://www.youtube.com/watch?v=xT8J6TBJIjw',3,'Thai Street Food Tour','2022-02-25',200000,150000,4000,800,'Food',45,50000,9),('https://www.youtube.com/watch?v=ZbpUHkKBwFc',2,'Saxophone Lessons for Beginners','2022-05-09',10000,8000,300,50,'Music',60,10000,8),('https://www.youtube.com/watch?v=zFgpNbsO-CE',4,'Painting Tutorials','2021-12-20',50000,40000,1000,200,'Technology',60,15000,10),('https://www.youtube.com/watch?v=ZJBjKecMgF0',1,'Yoga for Stress Relief','2022-03-03',100000,80000,4000,1000,'Sports',30,35000,7),('https://www.youtube.com/watch?v=ZYt0XgpLjV4',3,'Sushi Making Tutorial','2022-03-21',120000,90000,3000,800,'Food',30,40000,9);
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `check_video_title_unique` BEFORE INSERT ON `video` FOR EACH ROW BEGIN
    DECLARE title_count INT;
    SELECT COUNT(*) INTO title_count FROM video WHERE title = NEW.title;
    IF (title_count > 0) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Video title must be unique.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `set_video_create_date` BEFORE INSERT ON `video` FOR EACH ROW BEGIN
	SET NEW.create_date = NOW();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `video_theme_validation` BEFORE INSERT ON `video` FOR EACH ROW BEGIN
    DECLARE vid_mod_theme VARCHAR(50);
    DECLARE modid_exists INT;
    
    -- Check if modid exists in moderator table
    SELECT COUNT(*) INTO modid_exists
    FROM moderator
    WHERE modid = NEW.modid;
    
    IF modid_exists = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: Invalid modid';
    ELSE
        SELECT mod_theme INTO vid_mod_theme
        FROM moderator
        WHERE modid = NEW.modid;
        
        IF vid_mod_theme <> NEW.theme THEN
            SIGNAL SQLSTATE '45000' -- Custom error code for application-defined error
            SET MESSAGE_TEXT = 'Error: Moderator theme does not match the video theme';
        END IF;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `video_creator_validation` BEFORE INSERT ON `video` FOR EACH ROW BEGIN
	DECLARE creator_count INT;
    SELECT COUNT(*) INTO creator_count FROM creator WHERE creatorId = NEW.vid_creatorId;
    IF creator_count = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'CreatorId does not exist in creator table';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_moderator_video_count` AFTER INSERT ON `video` FOR EACH ROW BEGIN
	DECLARE mod_before_count INT;
    DECLARE mod_now_count INT;
    SELECT modvid_count INTO mod_before_count FROM moderator WHERE modid= NEW.modid;
    
    SELECT COUNT(*) INTO mod_now_count FROM video WHERE modid = NEW.modid;
    
    IF mod_before_count <=  mod_now_count THEN

	UPDATE moderator SET modvid_count = mod_now_count WHERE modid= NEW.modid;

	ELSE
	
    UPDATE moderator SET modvid_count = modvid_count +1  WHERE modid= NEW.modid;

    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_creator_video_num` AFTER INSERT ON `video` FOR EACH ROW BEGIN
    UPDATE creator SET video_num =( SELECT COUNT(*) FROM video WHERE vid_creatorId = NEW.vid_creatorId)  WHERE creatorId = NEW.vid_creatorId;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `log_video_insertion` AFTER INSERT ON `video` FOR EACH ROW BEGIN
	INSERT INTO video_insert_log (videoUrl, creator_username, mod_theme, insert_date)
    VALUES (NEW.videoUrl, (SELECT username FROM user WHERE userId = NEW.vid_creatorId),
            (SELECT mod_theme FROM moderator WHERE modid = NEW.modid), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_creator_video_num_delete` AFTER DELETE ON `video` FOR EACH ROW BEGIN
    UPDATE creator  SET video_num =( SELECT COUNT(*) FROM video WHERE vid_creatorId = OLD.vid_creatorId)
    WHERE creatorId = OLD.vid_creatorId;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `video_insert_log`
--

DROP TABLE IF EXISTS `video_insert_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video_insert_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `videoUrl` varchar(255) NOT NULL,
  `creator_username` varchar(255) NOT NULL,
  `mod_theme` varchar(50) NOT NULL,
  `insert_date` datetime NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_insert_log`
--

LOCK TABLES `video_insert_log` WRITE;
/*!40000 ALTER TABLE `video_insert_log` DISABLE KEYS */;
INSERT INTO `video_insert_log` VALUES (1,'test.com','johndoe123','Sports','2023-04-21 15:37:22'),(2,'test.com','johndoe123','Sports','2023-04-21 16:00:17');
/*!40000 ALTER TABLE `video_insert_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viewer`
--

DROP TABLE IF EXISTS `viewer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viewer` (
  `viewerId` int NOT NULL,
  `viewed_video_num` int DEFAULT '0',
  PRIMARY KEY (`viewerId`),
  CONSTRAINT `viewer_ibfk_1` FOREIGN KEY (`viewerId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viewer`
--

LOCK TABLES `viewer` WRITE;
/*!40000 ALTER TABLE `viewer` DISABLE KEYS */;
INSERT INTO `viewer` VALUES (1,10),(2,20),(3,30),(4,5),(5,15),(6,25),(7,8),(8,18),(9,12),(10,10),(11,22),(12,7),(13,19),(14,14),(15,27),(16,6),(17,11),(18,21),(19,13),(20,8),(21,17),(22,13),(23,11),(24,6),(25,22),(26,14),(27,19),(28,27),(29,8),(30,12);
/*!40000 ALTER TABLE `viewer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'final0420'
--

--
-- Dumping routines for database 'final0420'
--
/*!50003 DROP FUNCTION IF EXISTS `delete_video` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `delete_video`(
    video_url VARCHAR(255)
) RETURNS varchar(50) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
DECLARE message VARCHAR(50);
    -- check if video exists
    IF EXISTS(SELECT * FROM video WHERE videoUrl = video_url) THEN
        -- delete video
        DELETE FROM video WHERE videoUrl = video_url;
        SET message = 'Video deleted successfully';
        -- delete related comments
        DELETE FROM comment WHERE c_vidUrl = video_url;
    ELSE
        SET message = 'Video does not exist';
    END IF;
    RETURN message;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `get_subscriber_count` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `get_subscriber_count`(username VARCHAR(255)) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE subscriber_count_p INT;
    DECLARE creatorid_exists INT;
	SELECT COUNT(*) INTO creatorid_exists
    FROM creator c
    WHERE c.creatorId =  (SELECT u.userId From user u WHERE u.username=username);
    IF creatorid_exists = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: Not Creator';
    ELSE
    SELECT subscriber_count INTO subscriber_count_p
    FROM creator
    WHERE creatorId = (SELECT u.userId From user u WHERE u.username=username);
    END IF;
    RETURN subscriber_count_p;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_comment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_comment`(
    IN c_userId INT,
    IN c_vidUrl VARCHAR(255),
    IN content VARCHAR(255)
)
BEGIN
    DECLARE creator_id INT;
    DECLARE viewer_id INT;
    
    DECLARE videoUrl_exists VARCHAR(255);
    
    -- Check if the user exists
--     SELECT userId INTO creator_id FROM creator WHERE creatorId = (SELECT vid_creatorId FROM video WHERE videoUrl = c_vidUrl);
    
    SELECT videoUrl INTO videoUrl_exists FROM video WHERE  videoUrl = c_vidUrl; 
    SELECT viewerId INTO viewer_id FROM viewer WHERE viewerId = c_userId;
    
    IF videoUrl_exists IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'The VIDEO does not exist.';
    END IF;
    
    IF viewer_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'The viewer does not exist.';
    END IF;
        
    -- Insert the new comment
    INSERT INTO comment (c_userId, c_vidUrl, comment_date, content)
    VALUES (c_userId, c_vidUrl,NOW(), content);
    
    -- Update the comment count for the video
    -- UPDATE video SET comments = comments + 1 WHERE videoUrl = c_vidUrl;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_new_staff` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_new_staff`( IN new_staff_id INT,
    IN new_staff_name VARCHAR(50),
    IN new_staff_role INT
)
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION ROLLBACK;
    START TRANSACTION;
    
    -- check if staff already exists
    SELECT COUNT(*) INTO @staff_count FROM staff WHERE staffId = new_staff_id;
    
    IF @staff_count = 0 THEN
        -- insert new staff into staff table
        INSERT INTO staff (staffId, name, join_date) 
        VALUES (new_staff_id, new_staff_name, NOW());
    END IF;

    IF new_staff_role = 0 THEN
        -- insert new customer service into customerService table
        INSERT INTO customerService (service_id, timezone, rating) VALUES (new_staff_id, 0, 0);
    ELSEIF new_staff_role = 1 THEN
        -- insert new moderator into moderator table
        INSERT INTO moderator (modid, mod_theme, modvid_count) VALUES (new_staff_id, 'default', 0);
    END IF;
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_new_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_new_user`(IN new_user_id INT,
    IN new_user_username VARCHAR(255),
    IN new_user_email VARCHAR(100),
    IN is_creator INT,
    IN is_viewer INT
)
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION ROLLBACK;
    START TRANSACTION;
    -- check if user already exists
    SELECT COUNT(*) INTO @user_count FROM user WHERE userId = new_user_id;
    IF @user_count = 0 THEN
        -- insert new user into user table
        INSERT INTO user (userId, username, join_date, email) 
        VALUES (new_user_id, new_user_username, now(), new_user_email);
    END IF;

    IF is_creator = 1 THEN
        -- insert new creator into creator table
        INSERT INTO creator (creatorId) VALUES (new_user_id);
    END IF;
    IF is_viewer = 1 THEN
        -- insert new viewer into viewer table
        INSERT INTO viewer (viewerId) VALUES (new_user_id);
    END IF;
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_comment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_comment`(
    IN p_c_userId INT,
    IN p_c_vidUrl VARCHAR(255),
    IN p_comment_date DATETIME
)
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION ROLLBACK;
    START TRANSACTION;
    -- check if comment exists
    SELECT COUNT(*) INTO @comment_count FROM comment WHERE c_userId = p_c_userId 
        AND c_vidUrl = p_c_vidUrl AND comment_date = p_comment_date;
    IF @comment_count = 1 THEN
        -- delete comment
        DELETE FROM comment WHERE c_userId = p_c_userId AND c_vidUrl = p_c_vidUrl 
            AND comment_date = p_comment_date;
    ELSE
        -- comment not found, return error
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Comment not found';
    END IF;
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `filter_comment_by_likes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `filter_comment_by_likes`()
BEGIN
    SELECT v.title AS title ,u.username, c.comment_date AS date, c.content, c.likes, c.reply_num AS replies
	FROM comment c
    JOIN user u  ON c.c_userId = u.userId
    JOIN video v ON v.videoUrl = c.c_vidUrl
    ORDER BY c.likes DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `filter_comment_by_reply` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `filter_comment_by_reply`()
BEGIN
    SELECT v.title AS title ,u.username, c.comment_date AS date, c.content, c.likes, c.reply_num AS replies
	FROM comment c
    JOIN user u  ON c.c_userId = u.userId
    JOIN video v ON v.videoUrl = c.c_vidUrl
	ORDER BY c.reply_num DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `filter_videos_by_download` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `filter_videos_by_download`()
BEGIN
    SELECT v.videoUrl, u.username AS "Creator Name", v.title, v.create_date, v.views, v.download, v.likes, v.shares, v.theme, v.lengthOfMin, v.revenue, s.name AS "Moderator Name" FROM video v
    JOIN creator c ON c.creatorId=v.vid_creatorId
    JOIN user u ON u.userId= c.creatorId
    JOIN staff s ON s.staffId = v.modid
  ORDER BY download DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `filter_videos_by_likes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `filter_videos_by_likes`()
BEGIN
    SELECT v.videoUrl, u.username AS "Creator Name", v.title, v.create_date, v.views, v.download, v.likes, v.shares, v.theme, v.lengthOfMin, v.revenue, s.name AS "Moderator Name" FROM video v
    JOIN creator c ON c.creatorId=v.vid_creatorId
    JOIN user u ON u.userId= c.creatorId
    JOIN staff s ON s.staffId = v.modid
  ORDER BY likes DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `filter_videos_by_shares` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `filter_videos_by_shares`()
BEGIN
    SELECT v.videoUrl, u.username AS "Creator Name", v.title, v.create_date, v.views, v.download, v.likes, v.shares, v.theme, v.lengthOfMin, v.revenue, s.name AS "Moderator Name" FROM video v
    JOIN creator c ON c.creatorId=v.vid_creatorId
    JOIN user u ON u.userId= c.creatorId
    JOIN staff s ON s.staffId = v.modid
  ORDER BY shares DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `filter_videos_by_upload_date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `filter_videos_by_upload_date`(IN num_videos INT)
BEGIN
    SELECT v.videoUrl, u.username AS "Creator Name", v.title, v.create_date, v.views, v.download, v.likes, v.shares, v.theme, v.lengthOfMin, v.revenue, s.name AS "Moderator Name" FROM video v
    JOIN creator c ON c.creatorId=v.vid_creatorId
    JOIN user u ON u.userId= c.creatorId
    JOIN staff s ON s.staffId = v.modid
    ORDER BY create_date DESC
    LIMIT num_videos;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `filter_videos_by_view` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `filter_videos_by_view`()
BEGIN
    SELECT v.videoUrl, u.username AS "Creator Name", v.title, v.create_date, v.views, v.download, v.likes, v.shares, v.theme, v.lengthOfMin, v.revenue, s.name AS "Moderator Name" FROM video v
    JOIN creator c ON c.creatorId=v.vid_creatorId
    JOIN user u ON u.userId= c.creatorId
    JOIN staff s ON s.staffId = v.modid
  ORDER BY views DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_comments_by_videoUrl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_comments_by_videoUrl`(IN videoUrl VARCHAR(255))
BEGIN
    SELECT u.username, c.comment_date AS date, c.content, c.likes, c.reply_num AS replies
    FROM comment c
    JOIN user u  ON c.c_userId = u.userId
    WHERE c.c_vidUrl = videoUrl;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_videos_by_creator` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_videos_by_creator`(IN username VARCHAR(255))
BEGIN

    SELECT v.videoUrl, u.username AS "Creator Name", v.title, v.create_date, v.views, v.download, v.likes, v.shares, v.theme, v.lengthOfMin, v.revenue, s.name AS "Moderator Name" FROM video v
    JOIN creator c ON c.creatorId=v.vid_creatorId
    JOIN user u ON u.userId= c.creatorId
    JOIN staff s ON s.staffId = v.modid
    WHERE v.vid_creatorId = 
    (SELECT u.userId From user u WHERE u.username=username);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_videos_by_title` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_videos_by_title`(IN title_p VARCHAR(255))
BEGIN
    SELECT v.videoUrl, u.username AS "Creator Name", v.title, v.create_date, v.views, v.download, v.likes, v.shares, v.theme, v.lengthOfMin, v.revenue, s.name AS "Moderator Name" FROM video v
    JOIN creator c ON c.creatorId=v.vid_creatorId
    JOIN user u ON u.userId= c.creatorId
    JOIN staff s ON s.staffId = v.modid
    WHERE v.title = title_p;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_videos_by_url` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_videos_by_url`(IN url_p VARCHAR(255))
BEGIN
    SELECT v.videoUrl, u.username AS "Creator Name", v.title, v.create_date, v.views, v.download, v.likes, v.shares, v.theme, v.lengthOfMin, v.revenue, s.name AS "Moderator Name" FROM video v
    JOIN creator c ON c.creatorId=v.vid_creatorId
    JOIN user u ON u.userId= c.creatorId
    JOIN staff s ON s.staffId = v.modid
    WHERE v.videoUrl = url_p;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_video` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_video`(
    IN p_videoUrl VARCHAR(255),
    IN p_vid_creatorId INT,
    IN p_title VARCHAR(255),
    IN p_theme VARCHAR(255),
    IN p_lengthOfMin INT,
    IN p_modid INT
)
BEGIN
    -- Insert new video
    INSERT INTO video(videoUrl, vid_creatorId, title,  theme, lengthOfMin, modid)
    VALUES (p_videoUrl, p_vid_creatorId, p_title, p_theme, p_lengthOfMin, p_modid);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_video_title` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_video_title`(
  IN video_url VARCHAR(255),
  IN new_title VARCHAR(255)
)
BEGIN
  UPDATE video
  SET title = new_title
  WHERE videoUrl = video_url;
  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-21 16:20:03
