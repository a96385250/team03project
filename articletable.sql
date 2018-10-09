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
  `teamid` int(11) DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `imgurl` varchar(200) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `summary` varchar(500) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`articleid`),
  KEY `article-team_idx` (`teamid`),
  CONSTRAINT `article-team` FOREIGN KEY (`teamid`) REFERENCES `teams` (`teamid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=267 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (255,3,'中華職棒29年季後挑戰賽 猛獅悍將正面對決','http://www.cpbl.com.tw//news/view/18406.html?&news=18406','http://cpbl-elta.cdn.hinet.net/upload/news/18406.jpg','2018/10/08','【10/8台北】Lamigo桃猿在10月5日確定奪下下半季冠軍後，中華職棒29年季後挑戰賽確定由年度戰績排名第二的統一7-ELEVEn獅出戰排名第三的富邦悍將。季後挑戰賽將於10月19日（五）假台...',NULL),(256,3,'郭阜林再見轟 瑞安投出中職史上首場完全比賽','http://www.cpbl.com.tw//news/view/18404.html?&news=18404','http://cpbl-elta.cdn.hinet.net/upload/news/18404.jpg','2018/10/07','中華職棒29年例行賽進入補賽周，賽事已邁入倒數階段，不過就在10月7日有重大紀錄誕生，統一7-ELEVEn獅先發投手瑞安面對中信兄弟27個人次完全壓制，完美連續製造27個出局數，加上...',NULL),(257,3,'楊家維本季首轟出爐 統一賞中信兄弟對戰四連敗','http://www.cpbl.com.tw//news/view/18403.html?&news=18403','http://cpbl-elta.cdn.hinet.net/upload/news/18403.jpg','2018/10/07','統一7-ELEVEn獅年輕小將、「腎鬥士」楊家維，在這場與中信兄弟的補賽，開張本季第一發紅不讓，加上獅子軍全隊用16支安打換得10分，終場統一就以10：6擊敗中信兄弟，收下對戰四連...',NULL),(258,3,'朱育賢、王柏融開轟　桃猿連續四個半季封王','http://www.cpbl.com.tw//news/view/18401.html?&news=18401','http://cpbl-elta.cdn.hinet.net/upload/news/18401.jpg','2018/10/05','Lamigo桃猿在桃園棒球場迎戰富邦悍將，賽前猿隊已經亮起下半季封王魔術數字M1。這場比賽猿隊展現想要封王的決心、火力全開，全隊掃出17支安打，其中包含朱育賢、王柏融的全壘...',NULL),(259,3,'伍鐸7.1局失2分好投 富邦擊退中信兄弟','http://www.cpbl.com.tw//news/view/18398.html?&news=18398','http://cpbl-elta.cdn.hinet.net/upload/news/18398.jpg','2018/10/04','今（4）日在新莊棒球場的比賽，由中信兄弟對上富邦悍將，靠著胡金龍第一局開轟，以及先發投手伍鐸7.1局失2分的好投壓制，富邦以5：2奪下勝利。這場讓中信兄弟確定年度勝率墊...',NULL),(260,3,'王柏融開轟猿勝獅 Lamigo下半季封王數字M2','http://www.cpbl.com.tw//news/view/18397.html?&news=18397','http://cpbl-elta.cdn.hinet.net/upload/news/18397.jpg','2018/10/04','Lamigo桃猿今(3)日來到澄清湖棒球場作客，對戰主場球隊統一7-ELEVEn獅。一開賽Lamigo就處於4分落後，但在四局上先靠著投手不穩追回3分，五局上又藉著失誤追平比數，柏融大王此時再...',NULL),(261,3,' 桃猿嚴宏鈞再見安打    下半季封王數字M3','http://www.cpbl.com.tw//news/view/18395.html?&news=18395','http://cpbl-elta.cdn.hinet.net/upload/news/18395.jpg','2018/10/02','下半季首場補賽就打得難分難解，富邦悍將九局上追平比數為4比4，九局下，嚴宏鈞敲出生涯首支再見安打，5比4氣走富邦悍將，幫助球隊確定全年度勝率第一名，下半季封王魔術數...',NULL),(262,3,'洪宸宇5.2局好投無失分 帶領中信兄弟奪勝','http://www.cpbl.com.tw//news/view/18392.html?&news=18392','http://cpbl-elta.cdn.hinet.net/upload/news/18392.jpg','2018/09/30','中信兄弟在洲際主場迎戰來訪的Lamigo桃猿，三連戰前兩場比賽戰績1勝1敗，最終戰靠著打擊爆發，全場共擊出14支安打，終場以11：6贏得勝利，成功在這個系列賽搶占上風。下半季在...',NULL),(263,3,'富邦悍將黃亦志好投   統一7-ELEVEn獅苦吞四連敗','http://www.cpbl.com.tw//news/view/18391.html?&news=18391','http://cpbl-elta.cdn.hinet.net/upload/news/18391.jpg','2018/09/30','富邦悍將週日雙重賽午場賽事中，先發投手黃亦志投5局失1分好投壓制，富邦悍將牛棚四位投手力守不失分，再加上獅隊發生致命失誤，終場3比1擊敗統一7-ELEVEn獅，讓獅隊苦吞四連敗...',NULL),(264,3,' 富邦悍將羅力八局好投   獅隊苦吞三連敗','http://www.cpbl.com.tw//news/view/18389.html?&news=18389','http://cpbl-elta.cdn.hinet.net/upload/news/18389.jpg','2018/09/29','富邦悍將週六新莊主場在先發投手羅力強投優勢下，最終6比3擊敗統一7-ELEVEn獅，贏得本週第二勝，獅隊則苦吞三連敗。羅力主投8局僅被敲3支安打失2分，優異表現獲選為單場最有價...',NULL),(265,3,'紐維拉投無安打比賽　中斷桃猿十連勝','http://www.cpbl.com.tw//news/view/18387.html?&news=18387','http://cpbl-elta.cdn.hinet.net/upload/news/18387.jpg','2018/09/29','中信兄弟在洲際棒球場迎戰聯盟龍頭Lamigo桃猿，地主隊兄弟在首局就靠著周思齊帶有1分打點的保送先馳得點，加上先發投手紐維拉投出本季中職第二場無安打比賽，終場兄弟就以1:0...',NULL),(266,3,'《二軍》鍾承祐開轟葉家淇好投 Lamigo系列戰扳回一城','http://www.cpbl.com.tw//news/view/18386.html?&news=18386','http://cpbl-elta.cdn.hinet.net/upload/news/18386.jpg','2018/09/28','中華職棒29年二軍總冠軍賽第三戰，已被中信兄弟二軍取得兩勝優勢的Lamigo二軍，面對沒有退路的一戰，在鍾承祐三局上開轟為球隊首開得分紀錄後，Lamigo一路領先，加上先發投手葉...',NULL);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
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
  `count` int(11) DEFAULT NULL,
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-09 21:09:58
