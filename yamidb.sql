-- MySQL dump 10.13  Distrib 5.7.21, for macos10.13 (x86_64)
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add teams',6,'add_teams'),(22,'Can change teams',6,'change_teams'),(23,'Can delete teams',6,'delete_teams'),(24,'Can view teams',6,'view_teams'),(25,'Can add members',7,'add_members'),(26,'Can change members',7,'change_members'),(27,'Can delete members',7,'delete_members'),(28,'Can view members',7,'view_members'),(29,'Can add teams',8,'add_teams'),(30,'Can change teams',8,'change_teams'),(31,'Can delete teams',8,'delete_teams'),(32,'Can view teams',8,'view_teams'),(33,'Can add players',9,'add_players'),(34,'Can change players',9,'change_players'),(35,'Can delete players',9,'delete_players'),(36,'Can view players',9,'view_players'),(37,'Can add actmember',10,'add_actmember'),(38,'Can change actmember',10,'change_actmember'),(39,'Can delete actmember',10,'delete_actmember'),(40,'Can view actmember',10,'view_actmember'),(41,'Can add location',11,'add_location'),(42,'Can change location',11,'change_location'),(43,'Can delete location',11,'delete_location'),(44,'Can view location',11,'view_location'),(45,'Can add players',12,'add_players'),(46,'Can change players',12,'change_players'),(47,'Can delete players',12,'delete_players'),(48,'Can view players',12,'view_players'),(49,'Can add teams',13,'add_teams'),(50,'Can change teams',13,'change_teams'),(51,'Can delete teams',13,'delete_teams'),(52,'Can view teams',13,'view_teams');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (10,'act','actmember'),(11,'act','location'),(1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'player','players'),(8,'player','teams'),(7,'signin','members'),(6,'signin','teams'),(12,'todo','players'),(13,'todo','teams');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-09-30 13:47:10.973400'),(2,'auth','0001_initial','2018-09-30 13:47:11.984693'),(3,'admin','0001_initial','2018-09-30 13:47:12.257518'),(4,'admin','0002_logentry_remove_auto_add','2018-09-30 13:47:12.268370'),(5,'admin','0003_logentry_add_action_flag_choices','2018-09-30 13:47:12.280144'),(6,'contenttypes','0002_remove_content_type_name','2018-09-30 13:47:12.445944'),(7,'auth','0002_alter_permission_name_max_length','2018-09-30 13:47:12.542638'),(8,'auth','0003_alter_user_email_max_length','2018-09-30 13:47:12.602430'),(9,'auth','0004_alter_user_username_opts','2018-09-30 13:47:12.613278'),(10,'auth','0005_alter_user_last_login_null','2018-09-30 13:47:12.698642'),(11,'auth','0006_require_contenttypes_0002','2018-09-30 13:47:12.703425'),(12,'auth','0007_alter_validators_add_error_messages','2018-09-30 13:47:12.718818'),(13,'auth','0008_alter_user_username_max_length','2018-09-30 13:47:12.797549'),(14,'auth','0009_alter_user_last_name_max_length','2018-09-30 13:47:12.856441'),(15,'player','0001_initial','2018-09-30 13:47:12.860580'),(16,'player','0002_players','2018-09-30 13:47:12.864802'),(17,'player','0003_auto_20180930_2208','2018-09-30 14:09:21.087116'),(18,'player','0003_auto_20181001_0857','2019-05-25 06:24:45.430242'),(19,'player','0004_merge_20190525_1423','2019-05-25 06:24:45.439362'),(20,'act','0001_initial','2019-05-25 07:08:52.413752'),(21,'player','0005_auto_20190525_1508','2019-05-25 07:08:52.424771'),(22,'todo','0001_initial','2019-05-25 07:23:26.288540');
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
  `era` decimal(5,2) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=6658 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (6502,'藍寅倫',1,0.337,55,5,0.00,0,0,28,2,0,0,163,0.0),(6503,'郭嚴文',1,0.338,49,3,0.00,0,0,32,0,0,0,145,0.0),(6504,'朱育賢',1,0.367,55,11,0.00,0,0,41,0,0,0,150,0.0),(6505,'林泓育',1,0.372,54,8,0.00,0,0,30,0,0,0,145,0.0),(6506,'陳晨威',1,0.325,52,3,0.00,0,0,17,10,0,0,160,0.0),(6507,'陳俊秀',1,0.322,39,2,0.00,0,0,19,0,0,0,121,0.0),(6508,'廖健富',1,0.319,30,2,0.00,0,0,18,1,0,0,94,0.0),(6509,'黃敬瑋',1,0.257,19,1,0.00,0,0,10,0,0,0,74,0.0),(6510,'林立',1,0.397,29,4,0.00,0,0,11,2,0,0,73,0.0),(6511,'梁家榮',1,0.265,13,0,0.00,0,0,5,0,0,0,49,0.0),(6512,'林智平',1,0.260,13,0,0.00,0,0,5,3,0,0,50,0.0),(6513,'劉時豪',1,0.240,6,0,0.00,0,0,1,0,0,0,25,0.0),(6514,'詹智堯',1,0.129,4,0,0.00,0,0,2,1,0,0,31,0.0),(6515,'鍾承祐',1,0.310,9,1,0.00,0,0,4,0,0,0,29,0.0),(6516,'陽耀勳',1,0.188,3,0,0.00,0,0,1,0,0,0,16,0.0),(6517,'余德龍',1,0.312,5,0,0.00,0,0,0,0,0,0,16,0.0),(6518,'林承飛',1,0.143,2,0,0.00,0,0,0,0,0,0,14,0.0),(6519,'邱丹',1,0.235,4,0,0.00,0,0,1,0,0,0,17,0.0),(6520,'郭永維',1,0.000,0,0,0.00,0,0,0,0,0,0,8,0.0),(6521,'柏納帝那',1,0.333,4,1,0.00,0,0,2,1,0,0,12,0.0),(6522,'黃子鵬',1,0.000,0,0,0.82,1,0,0,0,15,11,0,22.0),(6523,'王躍霖',1,0.000,0,0,4.79,1,0,0,0,20,3,0,20.2),(6524,'吳丞哲',1,0.000,0,0,5.12,1,1,0,0,15,2,0,19.1),(6525,'陳禹勳',1,0.000,0,0,9.45,0,4,0,0,14,2,0,13.1),(6526,'洪聖欽',1,0.000,0,0,4.82,2,0,0,0,4,2,0,9.1),(6527,'李茲',1,0.000,0,0,4.37,2,2,0,0,54,0,0,55.2),(6528,'王溢正',1,0.000,0,0,3.61,5,0,0,0,49,0,0,52.1),(6529,'尼克斯',1,0.000,0,0,2.75,5,0,0,0,40,0,0,59.0),(6530,'林柏佑',1,0.000,0,0,4.91,0,0,0,0,6,1,0,7.1),(6531,'史博威',1,0.000,0,0,6.82,0,0,0,0,23,0,0,31.2),(6532,'翁瑋均',1,0.000,0,0,3.12,3,0,0,0,13,0,0,34.2),(6533,'游朝惟',1,0.000,0,0,5.40,0,0,0,0,5,0,0,6.2),(6534,'賴智垣',1,0.000,0,0,16.20,0,0,0,0,1,0,0,1.2),(6535,'黃偉晟',1,0.000,0,0,6.75,0,0,0,0,3,0,0,2.2),(6536,'葉家淇',1,0.000,0,0,108.00,0,0,0,0,0,0,0,0.1),(6537,'蘇俊羽',1,0.000,0,0,9.00,0,0,0,0,1,0,0,2.0),(6538,'蘇智傑',2,0.259,38,8,0.00,0,0,21,5,0,0,147,0.0),(6539,'陳重羽',2,0.275,33,2,0.00,0,0,11,3,0,0,120,0.0),(6540,'潘武雄',2,0.286,36,4,0.00,0,0,17,1,0,0,126,0.0),(6541,'唐肇廷',2,0.235,19,1,0.00,0,0,2,1,0,0,81,0.0),(6542,'楊家維',2,0.255,28,3,0.00,0,0,15,1,0,0,110,0.0),(6543,'陳鏞基',2,0.240,23,5,0.00,0,0,10,3,0,0,96,0.0),(6544,'高國慶',2,0.260,20,3,0.00,0,0,10,0,0,0,77,0.0),(6545,'林祐樂',2,0.205,17,1,0.00,0,0,9,0,0,0,83,0.0),(6546,'郭阜林',2,0.167,15,2,0.00,0,0,7,0,0,0,90,0.0),(6547,'潘彥廷',2,0.178,8,1,0.00,0,0,3,2,0,0,45,0.0),(6548,'林祖傑',2,0.259,15,1,0.00,0,0,7,1,0,0,58,0.0),(6549,'黃恩賜',2,0.306,15,0,0.00,0,0,9,0,0,0,49,0.0),(6550,'陳傑憲',2,0.372,29,2,0.00,0,0,15,5,0,0,78,0.0),(6551,'江亮緯',2,0.250,7,1,0.00,0,0,2,0,0,0,28,0.0),(6552,'蔡奕玄',2,0.211,4,1,0.00,0,0,2,0,0,0,19,0.0),(6553,'鄭鎧文',2,0.217,5,1,0.00,0,0,2,1,0,0,23,0.0),(6554,'方昶詠',2,0.125,2,0,0.00,0,0,0,3,0,0,16,0.0),(6555,'羅國龍',2,0.231,6,0,0.00,0,0,0,0,0,0,26,0.0),(6556,'林靖凱',2,0.250,6,0,0.00,0,0,1,0,0,0,24,0.0),(6557,'買嘉儀',2,0.095,2,0,0.00,0,0,3,1,0,0,21,0.0),(6558,'郭峻偉',2,0.235,4,0,0.00,0,0,1,0,0,0,17,0.0),(6559,'林勝傑',2,0.273,3,1,0.00,0,0,2,0,0,0,11,0.0),(6560,'莊駿凱',2,0.111,1,0,0.00,0,0,0,0,0,0,9,0.0),(6561,'張偉聖',2,0.143,1,0,0.00,0,0,1,0,0,0,7,0.0),(6562,'朱元勤',2,0.000,0,0,0.00,0,0,0,0,0,0,1,0.0),(6563,'陳韻文',2,0.000,0,0,1.71,1,14,0,0,19,0,0,21.0),(6564,'王鏡銘',2,0.000,0,0,7.36,1,0,0,0,21,8,0,18.1),(6565,'劉軒荅',2,0.000,0,0,2.70,0,0,0,0,14,7,0,23.1),(6566,'邱浩鈞',2,0.000,0,0,6.59,0,0,0,0,13,10,0,13.2),(6567,'林其緯',2,0.000,0,0,4.32,1,0,0,0,13,4,0,16.2),(6568,'知念広弥',2,0.000,0,0,10.38,2,0,0,0,11,3,0,8.2),(6569,'奧斯丁',2,0.000,0,0,5.11,2,0,0,0,32,2,0,37.0),(6570,'施子謙',2,0.000,0,0,5.32,2,0,0,0,27,0,0,47.1),(6571,'江辰晏',2,0.000,0,0,4.06,2,0,0,0,32,0,0,44.1),(6572,'潘威倫',2,0.000,0,0,3.38,4,0,0,0,21,0,0,45.1),(6573,'傅于剛',2,0.000,0,0,6.35,0,0,0,0,6,2,0,5.2),(6574,'羅里奇',2,0.000,0,0,2.93,1,0,0,0,23,0,0,30.2),(6575,'王玉譜',2,0.000,0,0,4.60,0,0,0,0,8,0,0,15.2),(6576,'郭恆孝',2,0.000,0,0,12.46,0,0,0,0,0,0,0,4.1),(6577,'林子崴',2,0.000,0,0,19.29,0,0,0,0,3,0,0,4.2),(6578,'鄭鈞仁',2,0.000,0,0,21.60,0,0,0,0,1,0,0,1.2),(6579,'瑞安',2,0.000,0,0,2.41,2,0,0,0,15,0,0,18.2),(6580,'陳育軒',2,0.000,0,0,18.00,0,0,0,0,1,0,0,1.0),(6581,'林威志',2,0.000,0,0,0.00,0,0,0,0,0,0,0,1.0),(6582,'林益全',3,0.316,43,7,0.00,0,0,31,0,0,0,136,0.0),(6583,'林哲瑄',3,0.294,42,1,0.00,0,0,16,6,0,0,143,0.0),(6584,'王正棠',3,0.302,38,1,0.00,0,0,16,2,0,0,126,0.0),(6585,'胡金龍',3,0.320,40,1,0.00,0,0,13,2,0,0,125,0.0),(6586,'李宗賢',3,0.284,25,1,0.00,0,0,5,2,0,0,88,0.0),(6587,'蔣智賢',3,0.282,24,1,0.00,0,0,8,0,0,0,85,0.0),(6588,'林宥穎',3,0.250,20,0,0.00,0,0,14,0,0,0,80,0.0),(6589,'陳凱倫',3,0.304,17,3,0.00,0,0,9,2,0,0,56,0.0),(6590,'陳品捷',3,0.136,9,2,0.00,0,0,5,0,0,0,66,0.0),(6591,'張正偉',3,0.318,21,0,0.00,0,0,6,1,0,0,66,0.0),(6592,'高國麟',3,0.227,10,3,0.00,0,0,10,0,0,0,44,0.0),(6593,'林威廷',3,0.366,15,0,0.00,0,0,2,2,0,0,41,0.0),(6594,'高孝儀',3,0.226,7,0,0.00,0,0,2,1,0,0,31,0.0),(6595,'高國輝',3,0.211,8,1,0.00,0,0,6,0,0,0,38,0.0),(6596,'申皓瑋',3,0.286,6,1,0.00,0,0,2,1,0,0,21,0.0),(6597,'范國宸',3,0.342,13,3,0.00,0,0,14,0,0,0,38,0.0),(6598,'方克偉',3,0.316,6,1,0.00,0,0,1,0,0,0,19,0.0),(6599,'于孟馗',3,0.150,3,0,0.00,0,0,0,0,0,0,20,0.0),(6600,'戴培峰',3,0.182,2,0,0.00,0,0,2,0,0,0,11,0.0),(6601,'張詠漢',3,0.167,2,0,0.00,0,0,0,0,0,0,12,0.0),(6602,'楊晉豪',3,0.250,1,0,0.00,0,0,0,0,0,0,4,0.0),(6603,'蔡友達',3,0.091,1,0,0.00,0,0,0,0,0,0,11,0.0),(6604,'陳鴻文',3,0.000,0,0,2.12,1,2,0,0,16,3,0,17.0),(6605,'賴鴻誠',3,0.000,0,0,7.36,0,0,0,0,9,4,0,11.0),(6606,'張竣龍',3,0.000,0,0,1.45,1,0,0,0,19,3,0,18.2),(6607,'歐書誠',3,0.000,0,0,1.04,1,0,0,0,15,2,0,17.1),(6608,'林羿豪',3,0.000,0,0,3.72,0,0,0,0,9,2,0,9.2),(6609,'索沙',3,0.000,0,0,1.36,7,0,0,0,76,0,0,73.0),(6610,'伍鐸',3,0.000,0,0,4.94,2,0,0,0,36,0,0,51.0),(6611,'倪福德',3,0.000,0,0,1.17,0,3,0,0,3,1,0,7.2),(6612,'陳仕朋',3,0.000,0,0,5.19,3,0,0,0,21,0,0,34.2),(6613,'羅力',3,0.000,0,0,1.89,3,0,0,0,45,0,0,47.2),(6614,'林晨樺',3,0.000,0,0,11.74,0,0,0,0,5,0,0,7.2),(6615,'林克謙',3,0.000,0,0,5.06,0,0,0,0,5,0,0,5.1),(6616,'羅嘉仁',3,0.000,0,0,16.20,0,0,0,0,1,0,0,1.2),(6617,'羅華韋',3,0.000,0,0,9.00,0,0,0,0,1,0,0,3.0),(6618,'羅國華',3,0.000,0,0,2.70,0,0,0,0,2,1,0,3.1),(6619,'吳世豪',3,0.000,0,0,12.00,0,0,0,0,9,0,0,6.0),(6620,'陳品學',3,0.000,0,0,9.39,0,0,0,0,8,0,0,7.2),(6621,'王威晨',4,0.272,41,0,0.00,0,0,10,10,0,0,151,0.0),(6622,'林書逸',4,0.265,31,3,0.00,0,0,15,3,0,0,117,0.0),(6623,'林智勝',4,0.303,36,7,0.00,0,0,19,0,0,0,119,0.0),(6624,'黃鈞聲',4,0.260,25,0,0.00,0,0,8,0,0,0,96,0.0),(6625,'王勝偉',4,0.190,20,2,0.00,0,0,10,1,0,0,105,0.0),(6626,'詹子賢',4,0.277,26,10,0.00,0,0,18,2,0,0,94,0.0),(6627,'張志豪',4,0.267,23,8,0.00,0,0,18,4,0,0,86,0.0),(6628,'陳子豪',4,0.300,30,6,0.00,0,0,15,0,0,0,100,0.0),(6629,'彭政閔',4,0.294,30,1,0.00,0,0,11,0,0,0,102,0.0),(6630,'周思齊',4,0.275,22,2,0.00,0,0,13,3,0,0,80,0.0),(6631,'林明杰',4,0.281,9,0,0.00,0,0,5,1,0,0,32,0.0),(6632,'里迪',4,0.250,24,5,0.00,0,0,14,0,0,0,96,0.0),(6633,'陳偉漢',4,0.240,12,0,0.00,0,0,6,0,0,0,50,0.0),(6634,'吳東融',4,0.217,5,0,0.00,0,0,0,1,0,0,23,0.0),(6635,'陳江和',4,0.250,3,0,0.00,0,0,3,0,0,0,12,0.0),(6636,'許基宏',4,0.152,5,0,0.00,0,0,3,0,0,0,33,0.0),(6637,'張志強',4,0.200,5,0,0.00,0,0,2,0,0,0,25,0.0),(6638,'陳文杰',4,0.174,4,0,0.00,0,0,1,3,0,0,23,0.0),(6639,'艾銳克',4,0.000,0,0,0.00,0,0,0,0,0,0,9,0.0),(6640,'官大元',4,0.000,0,0,0.00,0,0,0,0,0,0,0,0.0),(6641,'鄭佳彥',4,0.000,0,0,4.20,1,1,0,0,13,9,0,15.0),(6642,'鄭凱文',4,0.000,0,0,4.26,4,1,0,0,6,5,0,19.0),(6643,'謝榮豪',4,0.000,0,0,5.19,0,5,0,0,10,4,0,17.1),(6644,'李振昌',4,0.000,0,0,2.29,2,1,0,0,20,2,0,19.2),(6645,'官大元',4,0.000,0,0,3.18,0,0,0,0,11,1,0,28.1),(6646,'吳俊偉',4,0.000,0,0,3.45,3,0,0,0,10,2,0,15.2),(6647,'萊福力',4,0.000,0,0,2.54,2,0,0,0,38,1,0,49.2),(6648,'黃恩賜',4,0.000,0,0,6.39,1,0,0,0,16,1,0,38.0),(6649,'蔡齊哲',4,0.000,0,0,5.48,2,0,0,0,23,0,0,44.1),(6650,'艾迪頓',4,0.000,0,0,5.98,4,0,0,0,29,0,0,43.2),(6651,'楊志龍',4,0.000,0,0,5.95,1,0,0,0,26,0,0,39.1),(6652,'洪宸宇',4,0.000,0,0,10.80,0,0,0,0,4,1,0,6.2),(6653,'江忠城',4,0.000,0,0,0.00,0,0,0,0,5,0,0,6.0),(6654,'彭識穎',4,0.000,0,0,4.50,0,0,0,0,0,0,0,2.0),(6655,'王鴻程',4,0.000,0,0,0.00,0,0,0,0,1,0,0,4.1),(6656,'吳哲源',4,0.000,0,0,13.50,0,0,0,0,0,0,0,1.1),(6657,'王奕凱',4,0.000,0,0,0.00,0,0,0,0,2,0,0,1.2);
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
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

-- Dump completed on 2019-05-25 16:02:36
