-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: yamidb
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-09-30 13:47:10.973400'),(2,'auth','0001_initial','2018-09-30 13:47:11.984693'),(3,'admin','0001_initial','2018-09-30 13:47:12.257518'),(4,'admin','0002_logentry_remove_auto_add','2018-09-30 13:47:12.268370'),(5,'admin','0003_logentry_add_action_flag_choices','2018-09-30 13:47:12.280144'),(6,'contenttypes','0002_remove_content_type_name','2018-09-30 13:47:12.445944'),(7,'auth','0002_alter_permission_name_max_length','2018-09-30 13:47:12.542638'),(8,'auth','0003_alter_user_email_max_length','2018-09-30 13:47:12.602430'),(9,'auth','0004_alter_user_username_opts','2018-09-30 13:47:12.613278'),(10,'auth','0005_alter_user_last_login_null','2018-09-30 13:47:12.698642'),(11,'auth','0006_require_contenttypes_0002','2018-09-30 13:47:12.703425'),(12,'auth','0007_alter_validators_add_error_messages','2018-09-30 13:47:12.718818'),(13,'auth','0008_alter_user_username_max_length','2018-09-30 13:47:12.797549'),(14,'auth','0009_alter_user_last_name_max_length','2018-09-30 13:47:12.856441'),(15,'player','0001_initial','2018-09-30 13:47:12.860580'),(16,'player','0002_players','2018-09-30 13:47:12.864802'),(17,'player','0003_auto_20180930_2208','2018-09-30 14:09:21.087116');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
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
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`memberid`),
  KEY `member-team_idx` (`teamid`),
  CONSTRAINT `member-team` FOREIGN KEY (`teamid`) REFERENCES `teams` (`teamid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (70,'4','4','4','44',NULL,4,'4','44','4',0),(71,'','ma92son0@gmail.com','chueh920','',NULL,4,'','','yes',NULL),(72,'','ma92son0@gmail.com','chueh920','',NULL,5,'','','yes',NULL),(73,'','ma92son0@gmail.com','chueh920','',NULL,1,'','','yes',NULL),(74,'','ma92son0@gmail.com','chueh920','',NULL,1,'','','yes',NULL),(76,'闕立倫','ma92son0@gmail.com','chueh920','ma92son0@gmail.com',NULL,5,'54354354354','545454','yes',NULL),(77,'','ma92son0@gmail.com','chueh920','',NULL,1,'','','yes',NULL);
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
  `avg` decimal(3,3) NOT NULL,
  `h` int(11) NOT NULL,
  `hr` int(11) NOT NULL,
  `era` decimal(4,2) NOT NULL,
  `w` int(11) NOT NULL,
  `sv` int(11) NOT NULL,
  `rbi` int(11) NOT NULL,
  `sb` int(11) NOT NULL,
  `so` int(11) NOT NULL,
  `hld` int(11) NOT NULL,
  `ab` int(11) NOT NULL,
  `ip` decimal(4,1) NOT NULL,
  PRIMARY KEY (`playerid`),
  KEY `player-teams_idx` (`teamid`),
  CONSTRAINT `player-teams` FOREIGN KEY (`teamid`) REFERENCES `teams` (`teamid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3065 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (2856,'朱育賢',1,0.316,99,12,0.00,0,0,78,1,0,0,313,0.0),(2857,'林立',1,0.309,92,7,0.00,0,0,36,12,0,0,298,0.0),(2858,'劉時豪',1,0.252,56,0,0.00,0,0,17,0,0,0,222,0.0),(2859,'廖健富',1,0.385,112,10,0.00,0,0,67,0,0,0,291,0.0),(2860,'林泓育',1,0.338,89,6,0.00,0,0,47,0,0,0,263,0.0),(2861,'郭嚴文',1,0.322,103,10,0.00,0,0,50,2,0,0,320,0.0),(2862,'郭永維',1,0.343,84,0,0.00,0,0,32,2,0,0,245,0.0),(2863,'林承飛',1,0.297,65,5,0.00,0,0,40,2,0,0,219,0.0),(2864,'林智平',1,0.248,41,0,0.00,0,0,23,5,0,0,165,0.0),(2865,'詹智堯',1,0.262,27,1,0.00,0,0,7,1,0,0,103,0.0),(2866,'陽耀勳',1,0.260,33,3,0.00,0,0,14,1,0,0,127,0.0),(2867,'余德龍',1,0.246,17,0,0.00,0,0,10,0,0,0,69,0.0),(2868,'梁家榮',1,0.290,27,1,0.00,0,0,11,0,0,0,93,0.0),(2869,'嚴宏鈞',1,0.306,19,0,0.00,0,0,9,0,0,0,62,0.0),(2870,'黃敬瑋',1,0.259,15,2,0.00,0,0,11,1,0,0,58,0.0),(2871,'鍾承祐',1,0.174,8,0,0.00,0,0,6,0,0,0,46,0.0),(2872,'王柏融',1,0.348,155,16,0.00,0,0,81,9,0,0,445,0.0),(2873,'藍寅倫',1,0.326,139,15,0.00,0,0,59,6,0,0,426,0.0),(2874,'陳俊秀',1,0.373,141,16,0.00,0,0,76,5,0,0,378,0.0),(2875,'成晉',1,0.120,3,0,0.00,0,0,0,0,0,0,25,0.0),(2876,'黃浩然',1,0.091,1,0,0.00,0,0,0,0,0,0,11,0.0),(2877,'林政億',1,0.167,1,0,0.00,0,0,0,0,0,0,6,0.0),(2878,'楊岱均',1,0.000,0,0,0.00,0,0,0,0,0,0,4,0.0),(2879,'葉竹軒',1,0.250,1,0,0.00,0,0,0,0,0,0,4,0.0),(2880,'馮健庭',1,0.000,0,0,0.00,0,0,0,0,0,0,2,0.0),(2881,'#張閔勛',1,0.143,1,0,0.00,0,0,0,0,0,0,7,0.0),(2882,'林知譽',1,0.250,1,1,0.00,0,0,3,0,0,0,4,0.0),(2883,'陳晨威',1,0.125,1,0,0.00,0,0,0,0,0,0,8,0.0),(2884,'吳丞哲',1,0.000,0,0,4.10,5,3,0,0,43,18,0,59.1),(2885,'黃子鵬',1,0.000,0,0,2.53,5,0,0,0,45,15,0,53.1),(2886,'陳禹勳',1,0.000,0,0,3.22,3,30,0,0,56,3,0,50.1),(2887,'林國裕',1,0.000,0,0,3.32,2,0,0,0,32,12,0,38.0),(2888,'林柏佑',1,0.000,0,0,4.21,5,0,0,0,39,15,0,36.1),(2889,'洪聖欽',1,0.000,0,0,4.20,3,0,0,0,27,0,0,40.2),(2890,'王躍霖',1,0.000,0,0,7.11,0,0,0,0,21,4,0,19.0),(2891,'尼克斯',1,0.000,0,0,3.72,8,0,0,0,102,0,0,142.2),(2892,'克恩三世',1,0.000,0,0,3.38,12,0,0,0,103,0,0,149.0),(2893,'朱俊祥',1,0.000,0,0,5.09,1,0,0,0,24,7,0,23.0),(2894,'王溢正',1,0.000,0,0,4.25,8,0,0,0,103,0,0,139.2),(2895,'黃偉晟',1,0.000,0,0,7.16,2,0,0,0,10,1,0,16.1),(2896,'林樺慶',1,0.000,0,0,5.60,3,0,0,0,36,0,0,70.2),(2897,'史博威',1,0.000,0,0,4.79,7,0,0,0,50,0,0,73.1),(2898,'蘇俊羽',1,0.000,0,0,3.86,3,0,0,0,37,0,0,58.1),(2899,'道恩斯',1,0.000,0,0,7.08,4,0,0,0,51,0,0,54.2),(2900,'陳敏賜',1,0.000,0,0,3.68,0,0,0,0,1,0,0,7.1),(2901,'鄭承浩',1,0.000,0,0,8.44,0,0,0,0,3,0,0,5.1),(2902,'林逸翔',1,0.000,0,0,22.50,0,0,0,0,1,0,0,2.0),(2903,'游宗儒',1,0.000,0,0,36.00,0,0,0,0,0,0,0,1.0),(2904,'葉家淇',1,0.000,0,0,22.09,0,0,0,0,2,0,0,3.2),(2905,'高國慶',2,0.325,86,6,0.00,0,0,42,2,0,0,265,0.0),(2906,'陳鏞基',2,0.305,92,12,0.00,0,0,53,8,0,0,302,0.0),(2907,'吳桀睿',2,0.337,120,8,0.00,0,0,55,12,0,0,356,0.0),(2908,'唐肇廷',2,0.232,55,1,0.00,0,0,28,4,0,0,237,0.0),(2909,'潘武雄',2,0.295,74,10,0.00,0,0,48,4,0,0,251,0.0),(2910,'潘彥廷',2,0.315,46,3,0.00,0,0,25,6,0,0,146,0.0),(2911,'蘇智傑',2,0.307,75,17,0.00,0,0,49,13,0,0,244,0.0),(2912,'羅國龍',2,0.246,47,7,0.00,0,0,29,9,0,0,191,0.0),(2913,'鄧志偉',2,0.289,50,10,0.00,0,0,37,0,0,0,173,0.0),(2914,'鄭鎧文',2,0.229,38,10,0.00,0,0,33,5,0,0,166,0.0),(2915,'高志綱',2,0.291,30,0,0.00,0,0,13,2,0,0,103,0.0),(2916,'黃恩賜',2,0.224,26,0,0.00,0,0,10,5,0,0,116,0.0),(2917,'莊駿凱',2,0.278,30,0,0.00,0,0,8,2,0,0,108,0.0),(2918,'朱元勤',2,0.211,20,1,0.00,0,0,9,3,0,0,95,0.0),(2919,'林祐樂',2,0.180,9,0,0.00,0,0,8,1,0,0,50,0.0),(2920,'陳重廷',2,0.130,3,0,0.00,0,0,1,1,0,0,23,0.0),(2921,'方昶詠',2,0.098,4,0,0.00,0,0,2,0,0,0,41,0.0),(2922,'楊家維',2,0.233,7,1,0.00,0,0,6,0,0,0,30,0.0),(2923,'郭峻偉',2,0.222,6,0,0.00,0,0,2,0,0,0,27,0.0),(2924,'郭阜林',2,0.287,117,19,0.00,0,0,76,11,0,0,408,0.0),(2925,'陳傑憲',2,0.348,157,8,0.00,0,0,57,16,0,0,451,0.0),(2926,'陳重羽',2,0.305,82,0,0.00,0,0,30,14,0,0,269,0.0),(2927,'買嘉儀',2,0.421,8,0,0.00,0,0,2,0,0,0,19,0.0),(2928,'劉芙豪',2,0.083,1,0,0.00,0,0,1,0,0,0,12,0.0),(2929,'江亮緯',2,0.286,4,1,0.00,0,0,2,0,0,0,14,0.0),(2930,'吳國豪',2,0.000,0,0,0.00,0,0,0,0,0,0,4,0.0),(2931,'張偉聖',2,0.000,0,0,0.00,0,0,0,0,0,0,10,0.0),(2932,'薛惟中',2,0.000,0,0,0.00,0,0,0,0,0,0,2,0.0),(2933,'蔡奕玄',2,0.000,0,0,0.00,0,0,0,0,0,0,2,0.0),(2934,'王鏡銘',2,0.000,0,0,5.28,3,4,0,0,47,21,0,59.2),(2935,'邱浩鈞',2,0.000,0,0,3.24,4,2,0,0,39,23,0,50.0),(2936,'陳韻文',2,0.000,0,0,3.89,3,18,0,0,61,4,0,44.0),(2937,'黃竣彥',2,0.000,0,0,2.96,1,2,0,0,39,7,0,45.2),(2938,'傅于剛',2,0.000,0,0,5.03,1,0,0,0,35,4,0,34.0),(2939,'林子崴',2,0.000,0,0,5.85,0,0,0,0,15,6,0,20.0),(2940,'瑞安',2,0.000,0,0,4.31,8,0,0,0,138,0,0,146.1),(2941,'羅里奇',2,0.000,0,0,3.10,12,0,0,0,136,0,0,154.0),(2942,'王玉譜',2,0.000,0,0,7.50,1,0,0,0,29,3,0,36.0),(2943,'江承峰',2,0.000,0,0,5.03,0,0,0,0,17,4,0,19.2),(2944,'施子謙',2,0.000,0,0,3.80,11,0,0,0,52,0,0,104.1),(2945,'賴泊凱',2,0.000,0,0,6.63,0,0,0,0,11,0,0,19.0),(2946,'林其緯',2,0.000,0,0,6.97,1,0,0,0,17,0,0,20.2),(2947,'江辰晏',2,0.000,0,0,2.83,8,0,0,0,77,0,0,92.1),(2948,'馬丁尼茲',2,0.000,0,0,7.73,4,0,0,0,53,0,0,75.2),(2949,'陽建福',2,0.000,0,0,9.00,0,0,0,0,9,2,0,17.0),(2950,'鄭鈞仁',2,0.000,0,0,15.95,0,0,0,0,8,3,0,7.1),(2951,'林威志',2,0.000,0,0,6.75,1,0,0,0,7,1,0,10.2),(2952,'廖文揚',2,0.000,0,0,5.87,1,1,0,0,4,0,0,7.2),(2953,'陳育軒',2,0.000,0,0,9.00,1,0,0,0,6,0,0,8.0),(2954,'洪心騏',2,0.000,0,0,3.43,1,0,0,0,14,0,0,21.0),(2955,'安狄',2,0.000,0,0,5.14,2,0,0,0,16,0,0,28.0),(2956,'郭恆孝',2,0.000,0,0,0.00,0,0,0,0,0,1,0,1.2),(2957,'林航',2,0.000,0,0,0.00,0,0,0,0,0,0,0,0.1),(2958,'劉軒荅',2,0.000,0,0,9.00,0,0,0,0,4,0,0,3.0),(2959,'潘威倫',2,0.000,0,0,7.50,0,0,0,0,1,0,0,6.0),(2960,'知念広弥',2,0.000,0,0,13.50,0,0,0,0,5,0,0,4.2),(2961,'胡金龍',3,0.376,144,14,0.00,0,0,80,7,0,0,383,0.0),(2962,'張正偉',3,0.294,103,2,0.00,0,0,31,12,0,0,350,0.0),(2963,'林益全',3,0.318,110,8,0.00,0,0,53,2,0,0,346,0.0),(2964,'林宥穎',3,0.259,49,1,0.00,0,0,23,5,0,0,189,0.0),(2965,'于孟馗',3,0.274,49,1,0.00,0,0,18,4,0,0,179,0.0),(2966,'陳凱倫',3,0.256,33,2,0.00,0,0,17,2,0,0,129,0.0),(2967,'范國宸',3,0.284,55,2,0.00,0,0,19,2,0,0,194,0.0),(2968,'李宗賢',3,0.243,27,0,0.00,0,0,10,10,0,0,111,0.0),(2969,'高國輝',3,0.253,50,9,0.00,0,0,38,3,0,0,198,0.0),(2970,'方克偉',3,0.160,21,2,0.00,0,0,12,1,0,0,131,0.0),(2971,'高國麟',3,0.258,34,4,0.00,0,0,18,1,0,0,132,0.0),(2972,'高孝儀',3,0.260,34,2,0.00,0,0,19,4,0,0,131,0.0),(2973,'申皓瑋',3,0.290,40,4,0.00,0,0,18,1,0,0,138,0.0),(2974,'王正棠',3,0.356,42,0,0.00,0,0,16,2,0,0,118,0.0),(2975,'蔡友達',3,0.258,17,0,0.00,0,0,5,1,0,0,66,0.0),(2976,'林威廷',3,0.233,7,0,0.00,0,0,0,1,0,0,30,0.0),(2977,'吳宗峻',3,0.214,6,0,0.00,0,0,1,0,0,0,28,0.0),(2978,'石翔宇',3,0.211,4,0,0.00,0,0,2,0,0,0,19,0.0),(2979,'陳品捷',3,0.294,121,6,0.00,0,0,46,10,0,0,411,0.0),(2980,'蔣智賢',3,0.327,139,17,0.00,0,0,86,2,0,0,425,0.0),(2981,'林哲瑄',3,0.276,106,10,0.00,0,0,58,18,0,0,384,0.0),(2982,'張瑞麟',3,0.312,5,1,0.00,0,0,2,0,0,0,16,0.0),(2983,'林旺衛',3,0.000,0,0,0.00,0,0,0,1,0,0,9,0.0),(2984,'張建銘',3,0.077,1,0,0.00,0,0,0,0,0,0,13,0.0),(2985,'林瑋恩',3,0.300,6,0,0.00,0,0,2,0,0,0,20,0.0),(2986,'林志洋',3,0.400,2,0,0.00,0,0,1,0,0,0,5,0.0),(2987,'陳勤宗',3,0.333,1,0,0.00,0,0,0,0,0,0,3,0.0),(2988,'賴鴻誠',3,0.000,0,0,3.54,2,0,0,0,40,19,0,56.0),(2989,'倪福德',3,0.000,0,0,3.07,1,12,0,0,46,9,0,41.0),(2990,'張耿豪',3,0.000,0,0,5.20,1,1,0,0,27,7,0,36.1),(2991,'林晨樺',3,0.000,0,0,5.86,1,1,0,0,22,5,0,43.0),(2992,'郭泓志',3,0.000,0,0,3.71,4,0,0,0,44,11,0,34.0),(2993,'伍鐸',3,0.000,0,0,3.29,14,0,0,0,121,0,0,167.0),(2994,'羅力',3,0.000,0,0,3.40,10,0,0,0,153,0,0,156.0),(2995,'陳鴻文',3,0.000,0,0,4.62,3,1,0,0,48,4,0,50.2),(2996,'林煜清',3,0.000,0,0,5.27,1,0,0,0,27,2,0,41.0),(2997,'羅嘉仁',3,0.000,0,0,8.35,3,0,0,0,5,0,0,18.1),(2998,'林羿豪',3,0.000,0,0,4.05,1,5,0,0,17,2,0,20.0),(2999,'黃亦志',3,0.000,0,0,5.66,4,1,0,0,36,1,0,76.1),(3000,'布魯斯',3,0.000,0,0,5.72,2,0,0,0,90,0,0,102.1),(3001,'羅國華',3,0.000,0,0,6.00,1,0,0,0,11,1,0,12.0),(3002,'陳明軒',3,0.000,0,0,4.85,0,0,0,0,9,0,0,13.0),(3003,'羅華韋',3,0.000,0,0,9.39,0,0,0,0,11,1,0,7.2),(3004,'張竣龍',3,0.000,0,0,5.73,0,0,0,0,10,1,0,11.0),(3005,'蔡明晋',3,0.000,0,0,6.92,2,0,0,0,15,0,0,26.0),(3006,'范玉禹',3,0.000,0,0,10.24,0,0,0,0,4,0,0,9.2),(3007,'陳仕朋',3,0.000,0,0,7.24,0,0,0,0,13,0,0,27.1),(3008,'彭世杰',3,0.000,0,0,5.91,0,0,0,0,9,0,0,10.2),(3009,'喬登',3,0.000,0,0,5.97,2,0,0,0,31,0,0,37.2),(3010,'林克謙',3,0.000,0,0,9.00,0,0,0,0,2,0,0,6.0),(3011,'吳世豪',3,0.000,0,0,1.64,1,0,0,0,17,0,0,22.0),(3012,'林政賢',3,0.000,0,0,6.61,0,0,0,0,14,0,0,16.1),(3013,'歐書誠',3,0.000,0,0,3.38,0,0,0,0,3,0,0,5.1),(3014,'陳凱倫',3,0.000,0,0,9.00,0,0,0,0,1,0,0,2.0),(3015,'黃勝雄',3,0.000,0,0,0.00,0,0,0,0,0,0,0,0.0),(3016,'詹子賢',4,0.284,93,9,0.00,0,0,50,2,0,0,328,0.0),(3017,'黃鈞聲',4,0.276,53,2,0.00,0,0,21,0,0,0,192,0.0),(3018,'蘇緯達',4,0.221,31,5,0.00,0,0,16,1,0,0,140,0.0),(3019,'王勝偉',4,0.288,65,10,0.00,0,0,33,5,0,0,226,0.0),(3020,'陳江和',4,0.253,19,0,0.00,0,0,7,0,0,0,75,0.0),(3021,'林智勝',4,0.268,42,4,0.00,0,0,24,0,0,0,157,0.0),(3022,'陳偉漢',4,0.301,58,0,0.00,0,0,14,4,0,0,193,0.0),(3023,'吳東融',4,0.255,24,1,0.00,0,0,10,2,0,0,94,0.0),(3024,'王峻杰',4,0.257,26,3,0.00,0,0,13,0,0,0,101,0.0),(3025,'張志強',4,0.232,23,0,0.00,0,0,8,1,0,0,99,0.0),(3026,'吳明鴻',4,0.250,14,0,0.00,0,0,3,0,0,0,56,0.0),(3027,'岳東華',4,0.145,8,0,0.00,0,0,1,1,0,0,55,0.0),(3028,'許基宏',4,0.191,9,1,0.00,0,0,4,0,0,0,47,0.0),(3029,'曾陶鎔',4,0.167,6,1,0.00,0,0,5,0,0,0,36,0.0),(3030,'林明杰',4,0.133,4,0,0.00,0,0,0,0,0,0,30,0.0),(3031,'陳家駒',4,0.059,1,0,0.00,0,0,0,0,0,0,17,0.0),(3032,'王威晨',4,0.333,161,0,0.00,0,0,39,43,0,0,484,0.0),(3033,'陳子豪',4,0.286,117,13,0.00,0,0,80,3,0,0,409,0.0),(3034,'張志豪',4,0.264,101,22,0.00,0,0,60,4,0,0,382,0.0),(3035,'周思齊',4,0.307,120,11,0.00,0,0,64,2,0,0,391,0.0),(3036,'彭政閔',4,0.290,103,6,0.00,0,0,59,5,0,0,355,0.0),(3037,'林書逸',4,0.276,54,3,0.00,0,0,21,5,0,0,196,0.0),(3038,'陳文杰',4,0.160,4,0,0.00,0,0,2,0,0,0,25,0.0),(3039,'潘志芳',4,0.200,4,0,0.00,0,0,0,1,0,0,20,0.0),(3040,'黃稚峰',4,0.000,0,0,0.00,0,0,0,0,0,0,5,0.0),(3041,'鄭凱文',4,0.000,0,0,4.18,4,1,0,0,55,16,0,64.2),(3042,'鄭錡鴻',4,0.000,0,0,4.66,0,0,0,0,23,13,0,38.2),(3043,'陳柏豪',4,0.000,0,0,7.24,3,3,0,0,23,5,0,41.0),(3044,'萊福力',4,0.000,0,0,4.05,7,0,0,0,119,0,0,151.0),(3045,'官大元',4,0.000,0,0,4.88,3,1,0,0,22,3,0,31.1),(3046,'陳琥',4,0.000,0,0,4.66,3,0,0,0,85,1,0,94.2),(3047,'艾迪頓',4,0.000,0,0,3.30,9,0,0,0,139,0,0,158.0),(3048,'李振昌',4,0.000,0,0,1.46,1,13,0,0,21,0,0,24.2),(3049,'洪宸宇',4,0.000,0,0,5.94,2,0,0,0,18,1,0,33.1),(3050,'邱品睿',4,0.000,0,0,6.43,1,1,0,0,8,4,0,14.0),(3051,'吳哲源',4,0.000,0,0,6.46,1,0,0,0,21,2,0,30.2),(3052,'楊志龍',4,0.000,0,0,4.50,2,0,0,0,69,0,0,64.0),(3053,'江忠城',4,0.000,0,0,9.41,0,0,0,0,21,0,0,22.0),(3054,'謝榮豪',4,0.000,0,0,3.94,1,0,0,0,17,7,0,16.0),(3055,'賽格威',4,0.000,0,0,7.13,2,0,0,0,55,0,0,77.0),(3056,'蔡齊哲',4,0.000,0,0,8.15,2,0,0,0,31,1,0,49.2),(3057,'張凱倫',4,0.000,0,0,7.84,0,0,0,0,4,0,0,10.1),(3058,'紐維拉',4,0.000,0,0,5.19,3,0,0,0,52,0,0,60.2),(3059,'周磊',4,0.000,0,0,4.74,3,0,0,0,13,0,0,38.0),(3060,'彭識穎',4,0.000,0,0,7.94,0,0,0,0,4,0,0,5.2),(3061,'王鴻程',4,0.000,0,0,12.00,0,1,0,0,4,0,0,6.0),(3062,'王則鈞',4,0.000,0,0,9.53,1,0,0,0,5,0,0,5.2),(3063,'吳蔚驊',4,0.000,0,0,0.00,0,0,0,0,0,0,0,0.0),(3064,'王梓安',4,0.000,0,0,0.00,0,0,0,0,0,0,0,1.0);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
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

-- Dump completed on 2018-10-11 23:45:23
