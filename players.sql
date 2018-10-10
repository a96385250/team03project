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
) ENGINE=InnoDB AUTO_INCREMENT=2856 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (2648,'陳俊秀',1,0.368,0,16,0.00,0,0,73,72,0,0,372,0.0),(2649,'朱育賢',1,0.316,0,12,0.00,0,0,78,64,0,0,310,0.0),(2650,'林立',1,0.306,0,7,0.00,0,0,36,82,0,0,297,0.0),(2651,'劉時豪',1,0.252,0,0,0.00,0,0,17,28,0,0,222,0.0),(2652,'廖健富',1,0.385,0,10,0.00,0,0,67,40,0,0,291,0.0),(2653,'林泓育',1,0.342,0,6,0.00,0,0,47,43,0,0,260,0.0),(2654,'郭嚴文',1,0.325,0,10,0.00,0,0,50,37,0,0,317,0.0),(2655,'郭永維',1,0.344,0,0,0.00,0,0,32,31,0,0,241,0.0),(2656,'林智平',1,0.248,0,0,0.00,0,0,23,21,0,0,165,0.0),(2657,'林承飛',1,0.295,0,5,0.00,0,0,40,62,0,0,210,0.0),(2658,'詹智堯',1,0.267,0,1,0.00,0,0,7,15,0,0,101,0.0),(2659,'陽耀勳',1,0.260,0,3,0.00,0,0,14,27,0,0,127,0.0),(2660,'余德龍',1,0.246,0,0,0.00,0,0,10,11,0,0,69,0.0),(2661,'梁家榮',1,0.307,0,1,0.00,0,0,11,17,0,0,88,0.0),(2662,'嚴宏鈞',1,0.293,0,0,0.00,0,0,8,14,0,0,58,0.0),(2663,'黃敬瑋',1,0.259,0,2,0.00,0,0,11,22,0,0,54,0.0),(2664,'鍾承祐',1,0.175,0,0,0.00,0,0,5,7,0,0,40,0.0),(2665,'王柏融',1,0.352,0,16,0.00,0,0,81,62,0,0,437,0.0),(2666,'藍寅倫',1,0.325,0,15,0.00,0,0,59,64,0,0,421,0.0),(2667,'成晉',1,0.120,0,0,0.00,0,0,0,6,0,0,25,0.0),(2668,'黃浩然',1,0.091,0,0,0.00,0,0,0,5,0,0,11,0.0),(2669,'林政億',1,0.167,0,0,0.00,0,0,0,1,0,0,6,0.0),(2670,'楊岱均',1,0.000,0,0,0.00,0,0,0,1,0,0,4,0.0),(2671,'葉竹軒',1,0.250,0,0,0.00,0,0,0,2,0,0,4,0.0),(2672,'馮健庭',1,0.000,0,0,0.00,0,0,0,0,0,0,2,0.0),(2673,'#張閔勛',1,0.143,0,0,0.00,0,0,0,1,0,0,7,0.0),(2674,'林知譽',1,0.250,0,1,0.00,0,0,3,2,0,0,4,0.0),(2675,'吳丞哲',1,0.250,0,1,4.10,5,3,3,2,43,18,4,59.1),(2676,'黃子鵬',1,0.250,0,1,2.58,5,0,3,2,44,15,4,52.1),(2677,'陳禹勳',1,0.250,0,1,3.22,3,30,3,2,56,3,4,50.1),(2678,'林國裕',1,0.250,0,1,3.44,2,0,3,2,32,12,4,36.2),(2679,'林柏佑',1,0.250,0,1,4.33,5,0,3,2,37,15,4,35.1),(2680,'洪聖欽',1,0.250,0,1,4.31,3,0,3,2,26,0,4,39.2),(2681,'王躍霖',1,0.250,0,1,7.11,0,0,3,2,21,4,4,19.0),(2682,'尼克斯',1,0.250,0,1,3.52,8,0,3,2,96,0,4,138.0),(2683,'克恩三世',1,0.250,0,1,3.38,12,0,3,2,103,0,4,149.0),(2684,'王溢正',1,0.250,0,1,4.25,8,0,3,2,103,0,4,139.2),(2685,'朱俊祥',1,0.250,0,1,5.57,1,0,3,2,23,7,4,21.0),(2686,'黃偉晟',1,0.250,0,1,7.16,2,0,3,2,10,1,4,16.1),(2687,'林樺慶',1,0.250,0,1,5.35,3,0,3,2,35,0,4,65.2),(2688,'史博威',1,0.250,0,1,4.79,7,0,3,2,50,0,4,73.1),(2689,'蘇俊羽',1,0.250,0,1,3.86,3,0,3,2,37,0,4,58.1),(2690,'道恩斯',1,0.250,0,1,7.08,4,0,3,2,51,0,4,54.2),(2691,'陳敏賜',1,0.250,0,1,3.68,0,0,3,2,1,0,4,7.1),(2692,'鄭承浩',1,0.250,0,1,8.44,0,0,3,2,3,0,4,5.1),(2693,'林逸翔',1,0.250,0,1,22.50,0,0,3,2,1,0,4,2.0),(2694,'游宗儒',1,0.250,0,1,36.00,0,0,3,2,0,0,4,1.0),(2695,'葉家淇',1,0.250,0,1,22.09,0,0,3,2,2,0,4,3.2),(2696,'高國慶',1,0.325,0,6,0.00,0,0,42,33,0,0,265,0.0),(2697,'陳鏞基',2,0.305,0,12,0.00,0,0,53,94,0,0,302,0.0),(2698,'吳桀睿',2,0.337,0,8,0.00,0,0,55,43,0,0,356,0.0),(2699,'唐肇廷',2,0.232,0,1,0.00,0,0,28,45,0,0,237,0.0),(2700,'潘武雄',2,0.295,0,10,0.00,0,0,48,42,0,0,251,0.0),(2701,'潘彥廷',2,0.315,0,3,0.00,0,0,25,33,0,0,146,0.0),(2702,'蘇智傑',2,0.307,0,17,0.00,0,0,49,59,0,0,244,0.0),(2703,'羅國龍',2,0.246,0,7,0.00,0,0,29,46,0,0,191,0.0),(2704,'鄧志偉',2,0.289,0,10,0.00,0,0,37,51,0,0,173,0.0),(2705,'鄭鎧文',2,0.229,0,10,0.00,0,0,33,68,0,0,166,0.0),(2706,'高志綱',2,0.291,0,0,0.00,0,0,13,11,0,0,103,0.0),(2707,'黃恩賜',2,0.224,0,0,0.00,0,0,10,34,0,0,116,0.0),(2708,'莊駿凱',2,0.278,0,0,0.00,0,0,8,24,0,0,108,0.0),(2709,'朱元勤',2,0.211,0,1,0.00,0,0,9,30,0,0,95,0.0),(2710,'林祐樂',2,0.180,0,0,0.00,0,0,8,15,0,0,50,0.0),(2711,'陳重廷',2,0.130,0,0,0.00,0,0,1,8,0,0,23,0.0),(2712,'方昶詠',2,0.098,0,0,0.00,0,0,2,17,0,0,41,0.0),(2713,'楊家維',2,0.233,0,1,0.00,0,0,6,14,0,0,30,0.0),(2714,'郭峻偉',2,0.222,0,0,0.00,0,0,2,1,0,0,27,0.0),(2715,'郭阜林',2,0.287,0,19,0.00,0,0,76,100,0,0,408,0.0),(2716,'陳傑憲',2,0.348,0,8,0.00,0,0,57,42,0,0,451,0.0),(2717,'陳重羽',2,0.305,0,0,0.00,0,0,30,61,0,0,269,0.0),(2718,'買嘉儀',2,0.421,0,0,0.00,0,0,2,5,0,0,19,0.0),(2719,'劉芙豪',2,0.083,0,0,0.00,0,0,1,4,0,0,12,0.0),(2720,'江亮緯',2,0.286,0,1,0.00,0,0,2,6,0,0,14,0.0),(2721,'吳國豪',2,0.000,0,0,0.00,0,0,0,2,0,0,4,0.0),(2722,'張偉聖',2,0.000,0,0,0.00,0,0,0,4,0,0,10,0.0),(2723,'薛惟中',2,0.000,0,0,0.00,0,0,0,0,0,0,2,0.0),(2724,'蔡奕玄',2,0.000,0,0,0.00,0,0,0,1,0,0,2,0.0),(2725,'王鏡銘',2,0.000,0,0,5.28,3,4,0,1,47,21,2,59.2),(2726,'邱浩鈞',2,0.000,0,0,3.24,4,2,0,1,39,23,2,50.0),(2727,'陳韻文',2,0.000,0,0,3.89,3,18,0,1,61,4,2,44.0),(2728,'黃竣彥',2,0.000,0,0,2.96,1,2,0,1,39,7,2,45.2),(2729,'傅于剛',2,0.000,0,0,5.03,1,0,0,1,35,4,2,34.0),(2730,'林子崴',2,0.000,0,0,5.85,0,0,0,1,15,6,2,20.0),(2731,'瑞安',2,0.000,0,0,4.31,8,0,0,1,138,0,2,146.1),(2732,'羅里奇',2,0.000,0,0,3.10,12,0,0,1,136,0,2,154.0),(2733,'王玉譜',2,0.000,0,0,7.50,1,0,0,1,29,3,2,36.0),(2734,'江承峰',2,0.000,0,0,5.03,0,0,0,1,17,4,2,19.2),(2735,'施子謙',2,0.000,0,0,3.80,11,0,0,1,52,0,2,104.1),(2736,'賴泊凱',2,0.000,0,0,6.63,0,0,0,1,11,0,2,19.0),(2737,'林其緯',2,0.000,0,0,6.97,1,0,0,1,17,0,2,20.2),(2738,'江辰晏',2,0.000,0,0,2.83,8,0,0,1,77,0,2,92.1),(2739,'馬丁尼茲',2,0.000,0,0,7.73,4,0,0,1,53,0,2,75.2),(2740,'陽建福',2,0.000,0,0,9.00,0,0,0,1,9,2,2,17.0),(2741,'鄭鈞仁',2,0.000,0,0,15.95,0,0,0,1,8,3,2,7.1),(2742,'林威志',2,0.000,0,0,6.75,1,0,0,1,7,1,2,10.2),(2743,'廖文揚',2,0.000,0,0,5.87,1,1,0,1,4,0,2,7.2),(2744,'陳育軒',2,0.000,0,0,9.00,1,0,0,1,6,0,2,8.0),(2745,'洪心騏',2,0.000,0,0,3.43,1,0,0,1,14,0,2,21.0),(2746,'安狄',2,0.000,0,0,5.14,2,0,0,1,16,0,2,28.0),(2747,'郭恆孝',2,0.000,0,0,0.00,0,0,0,1,0,1,2,1.2),(2748,'林航',2,0.000,0,0,0.00,0,0,0,1,0,0,2,0.1),(2749,'劉軒荅',2,0.000,0,0,9.00,0,0,0,1,4,0,2,3.0),(2750,'潘威倫',2,0.000,0,0,7.50,0,0,0,1,1,0,2,6.0),(2751,'知念広弥',2,0.000,0,0,13.50,0,0,0,1,5,0,2,4.2),(2752,'胡金龍',1,0.376,0,14,0.00,0,0,80,39,0,0,383,0.0),(2753,'張正偉',3,0.294,0,2,0.00,0,0,31,54,0,0,350,0.0),(2754,'林益全',3,0.318,0,8,0.00,0,0,53,53,0,0,346,0.0),(2755,'林宥穎',3,0.259,0,1,0.00,0,0,23,30,0,0,189,0.0),(2756,'于孟馗',3,0.274,0,1,0.00,0,0,18,32,0,0,179,0.0),(2757,'陳凱倫',3,0.256,0,2,0.00,0,0,17,28,0,0,129,0.0),(2758,'范國宸',3,0.284,0,2,0.00,0,0,19,35,0,0,194,0.0),(2759,'李宗賢',3,0.243,0,0,0.00,0,0,10,25,0,0,111,0.0),(2760,'高國輝',3,0.253,0,9,0.00,0,0,38,52,0,0,198,0.0),(2761,'方克偉',3,0.160,0,2,0.00,0,0,12,25,0,0,131,0.0),(2762,'高國麟',3,0.258,0,4,0.00,0,0,18,42,0,0,132,0.0),(2763,'高孝儀',3,0.260,0,2,0.00,0,0,19,15,0,0,131,0.0),(2764,'申皓瑋',3,0.290,0,4,0.00,0,0,18,42,0,0,138,0.0),(2765,'王正棠',3,0.356,0,0,0.00,0,0,16,17,0,0,118,0.0),(2766,'蔡友達',3,0.258,0,0,0.00,0,0,5,22,0,0,66,0.0),(2767,'林威廷',3,0.233,0,0,0.00,0,0,0,4,0,0,30,0.0),(2768,'吳宗峻',3,0.214,0,0,0.00,0,0,1,11,0,0,28,0.0),(2769,'石翔宇',3,0.211,0,0,0.00,0,0,2,6,0,0,19,0.0),(2770,'陳品捷',3,0.294,0,6,0.00,0,0,46,74,0,0,411,0.0),(2771,'蔣智賢',3,0.327,0,17,0.00,0,0,86,72,0,0,425,0.0),(2772,'林哲瑄',3,0.276,0,10,0.00,0,0,58,65,0,0,384,0.0),(2773,'張瑞麟',3,0.312,0,1,0.00,0,0,2,4,0,0,16,0.0),(2774,'林旺衛',3,0.000,0,0,0.00,0,0,0,5,0,0,9,0.0),(2775,'張建銘',3,0.077,0,0,0.00,0,0,0,6,0,0,13,0.0),(2776,'林瑋恩',3,0.300,0,0,0.00,0,0,2,6,0,0,20,0.0),(2777,'林志洋',3,0.400,0,0,0.00,0,0,1,0,0,0,5,0.0),(2778,'陳勤宗',3,0.333,0,0,0.00,0,0,0,0,0,0,3,0.0),(2779,'賴鴻誠',3,0.333,0,0,3.54,2,0,0,0,40,19,3,56.0),(2780,'倪福德',3,0.333,0,0,3.07,1,12,0,0,46,9,3,41.0),(2781,'張耿豪',3,0.333,0,0,5.20,1,1,0,0,27,7,3,36.1),(2782,'林晨樺',3,0.333,0,0,5.86,1,1,0,0,22,5,3,43.0),(2783,'郭泓志',3,0.333,0,0,3.71,4,0,0,0,44,11,3,34.0),(2784,'伍鐸',3,0.333,0,0,3.29,14,0,0,0,121,0,3,167.0),(2785,'羅力',3,0.333,0,0,3.40,10,0,0,0,153,0,3,156.0),(2786,'陳鴻文',3,0.333,0,0,4.62,3,1,0,0,48,4,3,50.2),(2787,'林煜清',3,0.333,0,0,5.27,1,0,0,0,27,2,3,41.0),(2788,'羅嘉仁',3,0.333,0,0,8.35,3,0,0,0,5,0,3,18.1),(2789,'林羿豪',3,0.333,0,0,4.05,1,5,0,0,17,2,3,20.0),(2790,'黃亦志',3,0.333,0,0,5.66,4,1,0,0,36,1,3,76.1),(2791,'布魯斯',3,0.333,0,0,5.72,2,0,0,0,90,0,3,102.1),(2792,'羅國華',3,0.333,0,0,6.00,1,0,0,0,11,1,3,12.0),(2793,'陳明軒',3,0.333,0,0,4.85,0,0,0,0,9,0,3,13.0),(2794,'羅華韋',3,0.333,0,0,9.39,0,0,0,0,11,1,3,7.2),(2795,'張竣龍',3,0.333,0,0,5.73,0,0,0,0,10,1,3,11.0),(2796,'蔡明晋',3,0.333,0,0,6.92,2,0,0,0,15,0,3,26.0),(2797,'范玉禹',3,0.333,0,0,10.24,0,0,0,0,4,0,3,9.2),(2798,'陳仕朋',3,0.333,0,0,7.24,0,0,0,0,13,0,3,27.1),(2799,'彭世杰',3,0.333,0,0,5.91,0,0,0,0,9,0,3,10.2),(2800,'喬登',3,0.333,0,0,5.97,2,0,0,0,31,0,3,37.2),(2801,'林克謙',3,0.333,0,0,9.00,0,0,0,0,2,0,3,6.0),(2802,'吳世豪',3,0.333,0,0,1.64,1,0,0,0,17,0,3,22.0),(2803,'林政賢',3,0.333,0,0,6.61,0,0,0,0,14,0,3,16.1),(2804,'歐書誠',3,0.333,0,0,3.38,0,0,0,0,3,0,3,5.1),(2805,'陳凱倫',3,0.333,0,0,9.00,0,0,0,0,1,0,3,2.0),(2806,'黃勝雄',3,0.333,0,0,0.00,0,0,0,0,0,0,3,0.0),(2807,'林書逸',1,0.280,0,3,0.00,0,0,21,52,0,0,189,0.0),(2808,'詹子賢',4,0.287,0,9,0.00,0,0,48,64,0,0,324,0.0),(2809,'黃鈞聲',4,0.277,0,2,0.00,0,0,19,27,0,0,188,0.0),(2810,'蘇緯達',4,0.221,0,5,0.00,0,0,16,41,0,0,140,0.0),(2811,'陳江和',4,0.253,0,0,0.00,0,0,7,11,0,0,75,0.0),(2812,'王勝偉',4,0.280,0,9,0.00,0,0,29,46,0,0,218,0.0),(2813,'林智勝',4,0.260,0,4,0.00,0,0,24,32,0,0,150,0.0),(2814,'陳偉漢',4,0.301,0,0,0.00,0,0,14,24,0,0,186,0.0),(2815,'吳東融',4,0.255,0,1,0.00,0,0,10,22,0,0,94,0.0),(2816,'王峻杰',4,0.257,0,3,0.00,0,0,13,31,0,0,101,0.0),(2817,'張志強',4,0.232,0,0,0.00,0,0,8,25,0,0,99,0.0),(2818,'吳明鴻',4,0.250,0,0,0.00,0,0,3,16,0,0,56,0.0),(2819,'岳東華',4,0.145,0,0,0.00,0,0,1,16,0,0,55,0.0),(2820,'許基宏',4,0.191,0,1,0.00,0,0,4,19,0,0,47,0.0),(2821,'曾陶鎔',4,0.167,0,1,0.00,0,0,5,13,0,0,36,0.0),(2822,'林明杰',4,0.143,0,0,0.00,0,0,0,10,0,0,28,0.0),(2823,'陳家駒',4,0.059,0,0,0.00,0,0,0,2,0,0,17,0.0),(2824,'王威晨',4,0.330,0,0,0.00,0,0,39,63,0,0,476,0.0),(2825,'陳子豪',4,0.289,0,13,0.00,0,0,80,93,0,0,405,0.0),(2826,'周思齊',4,0.305,0,11,0.00,0,0,63,59,0,0,390,0.0),(2827,'張志豪',4,0.265,0,21,0.00,0,0,59,108,0,0,377,0.0),(2828,'彭政閔',4,0.290,0,6,0.00,0,0,59,50,0,0,352,0.0),(2829,'潘志芳',4,0.200,0,0,0.00,0,0,0,7,0,0,20,0.0),(2830,'陳文杰',4,0.167,0,0,0.00,0,0,2,6,0,0,18,0.0),(2831,'黃稚峰',4,0.000,0,0,0.00,0,0,0,3,0,0,5,0.0),(2832,'鄭凱文',4,0.000,0,0,4.22,4,1,0,3,53,15,5,64.0),(2833,'鄭錡鴻',4,0.000,0,0,4.82,0,0,0,3,23,12,5,37.1),(2834,'陳柏豪',4,0.000,0,0,7.24,3,3,0,3,23,5,5,41.0),(2835,'官大元',4,0.000,0,0,4.88,3,1,0,3,22,3,5,31.1),(2836,'萊福力',4,0.000,0,0,4.09,6,0,0,3,119,0,5,149.2),(2837,'陳琥',4,0.000,0,0,4.40,3,0,0,3,83,1,5,92.0),(2838,'艾迪頓',4,0.000,0,0,3.30,9,0,0,3,139,0,5,158.0),(2839,'邱品睿',4,0.000,0,0,6.43,1,1,0,3,8,4,5,14.0),(2840,'吳哲源',4,0.000,0,0,6.46,1,0,0,3,21,2,5,30.2),(2841,'洪宸宇',4,0.000,0,0,6.44,2,0,0,3,15,1,5,29.1),(2842,'李振昌',4,0.000,0,0,1.59,1,12,0,3,19,0,5,22.2),(2843,'江忠城',4,0.000,0,0,9.41,0,0,0,3,21,0,5,22.0),(2844,'楊志龍',4,0.000,0,0,4.65,2,0,0,3,66,0,5,62.0),(2845,'謝榮豪',4,0.000,0,0,4.20,1,0,0,3,16,6,5,15.0),(2846,'賽格威',4,0.000,0,0,7.13,2,0,0,3,55,0,5,77.0),(2847,'蔡齊哲',4,0.000,0,0,8.15,2,0,0,3,31,1,5,49.2),(2848,'張凱倫',4,0.000,0,0,7.84,0,0,0,3,4,0,5,10.1),(2849,'紐維拉',4,0.000,0,0,5.37,2,0,0,3,50,0,5,58.2),(2850,'周磊',4,0.000,0,0,4.74,3,0,0,3,13,0,5,38.0),(2851,'王鴻程',4,0.000,0,0,12.00,0,1,0,3,4,0,5,6.0),(2852,'彭識穎',4,0.000,0,0,9.64,0,0,0,3,4,0,5,4.2),(2853,'王則鈞',4,0.000,0,0,9.53,1,0,0,3,5,0,5,5.2),(2854,'吳蔚驊',4,0.000,0,0,0.00,0,0,0,3,0,0,5,0.0),(2855,'王梓安',4,0.000,0,0,0.00,0,0,0,3,0,0,5,1.0);
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

-- Dump completed on 2018-10-09 20:40:39