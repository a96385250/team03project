CREATE DATABASE  IF NOT EXISTS `yamidb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `yamidb`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: yamidb
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `articleid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `date` varchar(45) DEFAULT NULL,
  `teamid` int(11) DEFAULT NULL,
  `articletype` varchar(45) NOT NULL,
  PRIMARY KEY (`articleid`),
  KEY `article-team_idx` (`teamid`),
  CONSTRAINT `article-team` FOREIGN KEY (`teamid`) REFERENCES `teams` (`teamid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `eventid` int(11) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(45) NOT NULL,
  `startdate` varchar(45) NOT NULL,
  `enddate` varchar(45) NOT NULL,
  `eventdesc` varchar(200) DEFAULT NULL,
  `location` varchar(45) NOT NULL,
  `geolocation` varchar(45) DEFAULT NULL,
  `eventtype` varchar(45) NOT NULL,
  `teamid` int(11) NOT NULL,
  `memberid` int(11) NOT NULL,
  PRIMARY KEY (`eventid`),
  KEY `event-member_idx` (`memberid`),
  KEY `event-team_idx` (`teamid`),
  CONSTRAINT `event-member` FOREIGN KEY (`memberid`) REFERENCES `members` (`memberid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `event-team` FOREIGN KEY (`teamid`) REFERENCES `teams` (`teamid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_event`
--

DROP TABLE IF EXISTS `member_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_event` (
  `memberid` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  PRIMARY KEY (`memberid`,`eventid`),
  KEY `event_idx` (`eventid`),
  CONSTRAINT `event` FOREIGN KEY (`eventid`) REFERENCES `events` (`eventid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `member` FOREIGN KEY (`memberid`) REFERENCES `members` (`memberid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_event`
--

LOCK TABLES `member_event` WRITE;
/*!40000 ALTER TABLE `member_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `memberid` int(11) NOT NULL AUTO_INCREMENT,
  `membername` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `teamid` int(11) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phoneno` varchar(45) NOT NULL,
  `newsletter` varchar(45) DEFAULT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`memberid`),
  KEY `member-team_idx` (`teamid`),
  CONSTRAINT `member-team` FOREIGN KEY (`teamid`) REFERENCES `teams` (`teamid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players` (
  `playerid` int(11) NOT NULL AUTO_INCREMENT,
  `playername` varchar(45) NOT NULL,
  `teamid` int(11) NOT NULL,
  `avg` decimal(3,0) NOT NULL,
  `h` int(11) NOT NULL,
  `hr` int(11) NOT NULL,
  `era` decimal(3,0) NOT NULL,
  `w` int(11) NOT NULL,
  `sv` int(11) NOT NULL,
  `rbi` int(11) NOT NULL,
  `sb` int(11) NOT NULL,
  `so` int(11) NOT NULL,
  PRIMARY KEY (`playerid`),
  KEY `player-teams_idx` (`teamid`),
  CONSTRAINT `player-teams` FOREIGN KEY (`teamid`) REFERENCES `teams` (`teamid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productcat`
--

DROP TABLE IF EXISTS `productcat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productcat` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(45) NOT NULL,
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productcat`
--

LOCK TABLES `productcat` WRITE;
/*!40000 ALTER TABLE `productcat` DISABLE KEYS */;
/*!40000 ALTER TABLE `productcat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  `productname` varchar(55) NOT NULL,
  `productdesc` varchar(200) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `categoryid` int(11) NOT NULL,
  `teamid` int(11) NOT NULL,
  PRIMARY KEY (`productid`),
  KEY `categoryid` (`categoryid`),
  KEY `teamid` (`teamid`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`categoryid`) REFERENCES `productcat` (`categoryid`),
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`teamid`) REFERENCES `teams` (`teamid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scores`
--

DROP TABLE IF EXISTS `scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scores` (
  `scoreid` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(45) NOT NULL,
  `teamid` int(11) NOT NULL,
  `wins` int(11) NOT NULL,
  `loss` int(11) NOT NULL,
  PRIMARY KEY (`scoreid`),
  KEY `team-score_idx` (`teamid`),
  CONSTRAINT `team-score` FOREIGN KEY (`teamid`) REFERENCES `teams` (`teamid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scores`
--

LOCK TABLES `scores` WRITE;
/*!40000 ALTER TABLE `scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `teamid` int(11) NOT NULL AUTO_INCREMENT,
  `teamname` varchar(45) NOT NULL,
  `teamname_eng` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`teamid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'桃猿','Lamigo'),(2,'統一獅','Unilions'),(3,'富邦悍將','Fubon Guardians'),(4,'中信兄弟','Brothers'),(5,'中華職棒','CPBL');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-19 16:26:57
