/*!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.6.18-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: runescape
-- ------------------------------------------------------
-- Server version	10.6.18-MariaDB-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `teleports`
--

DROP TABLE IF EXISTS `teleports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teleports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `image` tinytext DEFAULT NULL,
  `latitude` int(11) NOT NULL,
  `longitude` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teleports`
--

LOCK TABLES `teleports` WRITE;
/*!40000 ALTER TABLE `teleports` DISABLE KEYS */;
INSERT INTO `teleports` VALUES (1,'Wilderness Obelisk','/images/thumb/Wilderness_Obelisk.png/250px-Wilderness_Obelisk.png?bad8d',3748,3156,0),(2,'Wilderness Obelisk','/images/thumb/Wilderness_Obelisk.png/250px-Wilderness_Obelisk.png?bad8d',3620,3156,0),(3,'Wilderness Obelisk','/images/thumb/Wilderness_Obelisk.png/250px-Wilderness_Obelisk.png?bad8d',3667,3227,0),(4,'Wilderness Obelisk','/images/thumb/Wilderness_Obelisk.png/250px-Wilderness_Obelisk.png?bad8d',3732,3035,0),(5,'Wilderness Obelisk','/images/thumb/Wilderness_Obelisk.png/250px-Wilderness_Obelisk.png?bad8d',3794,3106,0),(6,'Wilderness Obelisk','/images/thumb/Wilderness_Obelisk.png/250px-Wilderness_Obelisk.png?bad8d',3867,2980,0),(7,'Wilderness Obelisk','/images/thumb/Wilderness_Obelisk.png/250px-Wilderness_Obelisk.png?bad8d',3916,3307,0),(8,'Lumbridge Home Teleport','/images/Lumbridge_Home_Teleport.png?aac7e',3218,3221,0),(9,'Varrock Teleport','/images/Varrock_Teleport.png?f1569',3424,3213,0),(10,'Varrock Teleport','/images/Varrock_Teleport.png?f1569',3479,3165,0),(11,'Lumbridge Teleport','/images/Lumbridge_Teleport.png?38e26',3218,3221,0),(12,'Falador Teleport','/images/Falador_Teleport.png?5f472',3378,2964,0),(13,'Camelot Teleport','/images/Camelot_Teleport.png?5cae4',3479,2757,0),(14,'Camelot Teleport','/images/Camelot_Teleport.png?5cae4',3484,2726,0),(15,'Kourend Castle Teleport','/images/Kourend_Castle_Teleport.png?68272',3673,1641,0),(16,'Ardougne Teleport','/images/Ardougne_Teleport.png?5b0f1',3305,2662,0),(17,'Civitas illa Fortis Teleport','/images/Civitas_illa_Fortis_Teleport.png?2b465',3133,1681,0),(18,'Watchtower Teleport','/images/Watchtower_Teleport.png?49eba',3114,2546,0),(19,'Watchtower Teleport','/images/Watchtower_Teleport.png?49eba',3097,2584,0),(20,'Trollheim Teleport','/images/Trollheim_Teleport.png?013d2',3679,2890,0),(21,'Ape Atoll Teleport (standard)','/images/Ape_Atoll_Teleport_%28standard%29.png?529e0',2799,2798,0),(22,'Teleother Lumbridge','/images/Teleother_Lumbridge.png?43b11',3218,3221,0),(23,'Teleother Falador','/images/Teleother_Falador.png?1da1d',3378,2964,0),(24,'Teleother Camelot','/images/Teleother_Camelot.png?861f1',3479,2757,0),(25,'Edgeville Home Teleport','/images/Edgeville_Home_Teleport.png?17355',3502,3088,0),(26,'Paddewwa Teleport','/images/Paddewwa_Teleport.png?d3386',9881,3097,12),(27,'Senntisten Teleport','/images/Senntisten_Teleport.png?8abaa',3337,3320,0),(28,'Kharyrll Teleport','/images/Kharyrll_Teleport.png?ad4e0',3473,3494,0),(29,'Lassar Teleport','/images/Lassar_Teleport.png?2154b',3470,3004,0),(30,'Dareeyak Teleport','/images/Dareeyak_Teleport.png?d1dbe',3696,2968,0),(31,'Carrallanger Teleport','/images/Carrallanger_Teleport.png?c2e90',3666,3158,0),(32,'Annakarl Teleport','/images/Annakarl_Teleport.png?93572',3888,3288,0),(33,'Ghorrock Teleport','/images/Ghorrock_Teleport.png?ed9c3',3872,2976,0),(34,'Lunar Home Teleport','/images/Lunar_Home_Teleport.png?17355',3915,2113,0),(35,'Moonclan Teleport','/images/Moonclan_Teleport.png?68443',3915,2113,0),(36,'Ourania Teleport','/images/Ourania_Teleport.png?ef101',3246,2468,0),(37,'Waterbirth Teleport','/images/Waterbirth_Teleport.png?d5d71',3755,2546,0),(38,'Barbarian Teleport','/images/Barbarian_Teleport.png?08e6f',3569,2543,0),(39,'Khazard Teleport','/images/Khazard_Teleport.png?964bd',3167,2636,0),(40,'Port Khazard','/images/thumb/Port_Khazard.png/300px-Port_Khazard.png?444e9',3159,2653,0),(41,'Fishing Guild Teleport','/images/Fishing_Guild_Teleport.png?d5f4a',3391,2613,0),(42,'Catherby Teleport','/images/Catherby_Teleport.png?81097',3449,2801,0),(43,'Catherby','/images/thumb/Catherby.png/300px-Catherby.png?f65b4',3443,2814,0),(44,'Ice Plateau Teleport','/images/Ice_Plateau_Teleport.png?5ad06',3938,2975,0),(45,'Tele Group Moonclan','/images/Tele_Group_Moonclan.png?84e6d',3915,2109,0),(46,'Tele Group Waterbirth','/images/Tele_Group_Waterbirth.png?05663',3755,2546,0),(47,'Tele Group Barbarian','/images/Tele_Group_Barbarian.png?8b18a',3569,2543,0),(48,'Tele Group Khazard','/images/Tele_Group_Khazard.png?1e6e5',3167,2636,0),(49,'Tele Group Fishing Guild','/images/Tele_Group_Fishing_Guild.png?a9666',3391,2613,0),(50,'Tele Group Catherby','/images/Tele_Group_Catherby.png?e750e',3449,2801,0),(51,'Tele Group Ice Plateau','/images/Tele_Group_Ice_Plateau.png?e9c0a',3938,2975,0),(52,'Arceuus Home Teleport','/images/Arceuus_Home_Teleport.png?043d2',3882,1700,0),(53,'Arceuus Library Teleport','/images/Arceuus_Library_Teleport.png?ff831',3837,1632,0),(54,'Draynor Manor Teleport','/images/Draynor_Manor_Teleport.png?152a5',3351,3109,0),(55,'Battlefront Teleport','/images/Battlefront_Teleport.png?61920',3740,1347,0),(56,'Mind Altar Teleport','/images/Mind_Altar_Teleport.png?0ea53',3510,2979,0),(57,'Salve Graveyard Teleport','/images/Salve_Graveyard_Teleport.png?d81cb',3461,3433,0),(58,'Fenkenstrain\'s Castle Teleport','/images/Fenkenstrain%27s_Castle_Teleport.png?aec4b',3529,3548,0),(59,'West Ardougne Teleport','/images/West_Ardougne_Teleport.png?e2abd',3290,2500,0),(60,'Harmony Island Teleport','/images/Harmony_Island_Teleport.png?a8d5c',2866,3797,0),(61,'Cemetery Teleport','/images/Cemetery_Teleport.png?8d4d3',3764,2981,0),(62,'Barrows Teleport','/images/Barrows_Teleport.png?ff831',3315,3564,0),(63,'Ape Atoll Teleport (Arceuus)','/images/Ape_Atoll_Teleport_%28Arceuus%29.png?043d2',2703,2769,0),(64,'Games necklace','/images/Games_necklace.png?7d47a',3571,2520,0),(65,'Games necklace','/images/Games_necklace.png?7d47a',3553,2899,0),(66,'Games necklace','/images/Games_necklace.png?7d47a',4254,2967,10031),(67,'Games necklace','/images/Games_necklace.png?7d47a',9500,3245,10146),(68,'Games necklace','/images/Games_necklace.png?7d47a',3940,1631,0),(69,'Ring of dueling','/images/Ring_of_dueling.png?4f1c0',3235,3315,0),(70,'Ring of dueling','/images/Ring_of_dueling.png?4f1c0',3090,2440,0),(71,'Ring of dueling','/images/Ring_of_dueling.png?4f1c0',3635,3151,0),(72,'Ring of dueling','/images/Ring_of_dueling.png?4f1c0',3107,1793,0),(73,'Combat bracelet','/images/Combat_bracelet_%28uncharged%29.png?43e7d',3547,2882,0),(74,'Combat bracelet','/images/Combat_bracelet_%28uncharged%29.png?43e7d',3368,3192,0),(75,'Combat bracelet','/images/Combat_bracelet_%28uncharged%29.png?43e7d',3490,3052,0),(76,'Combat bracelet','/images/Combat_bracelet_%28uncharged%29.png?43e7d',3439,2653,0),(77,'Skills necklace','/images/Skills_necklace_%28uncharged%29.png?1d1f2',3390,2611,0),(78,'Skills necklace','/images/Skills_necklace_%28uncharged%29.png?1d1f2',9763,3049,6),(79,'Skills necklace','/images/Skills_necklace_%28uncharged%29.png?1d1f2',3295,2933,0),(80,'Skills necklace','/images/Skills_necklace_%28uncharged%29.png?1d1f2',3438,3144,0),(81,'Skills necklace','/images/Skills_necklace_%28uncharged%29.png?1d1f2',3505,1662,0),(82,'Skills necklace','/images/Skills_necklace_%28uncharged%29.png?1d1f2',3719,1248,0),(83,'Amulet of glory','/images/Amulet_of_glory.png?ec289',3496,3087,0),(84,'Amulet of glory','/images/Amulet_of_glory.png?ec289',3176,2918,0),(85,'Amulet of glory','/images/Amulet_of_glory.png?ec289',3251,3105,0),(86,'Amulet of glory','/images/Amulet_of_glory.png?ec289',3163,3293,0),(87,'Amulet of eternal glory','/images/Amulet_of_eternal_glory.png?248b4',3496,3087,0),(88,'Amulet of eternal glory','/images/Amulet_of_eternal_glory.png?248b4',3176,2918,0),(89,'Amulet of eternal glory','/images/Amulet_of_eternal_glory.png?248b4',3251,3105,0),(90,'Amulet of eternal glory','/images/Amulet_of_eternal_glory.png?248b4',3163,3293,0),(91,'Ring of wealth','/images/Ring_of_wealth_%28uncharged%29.png?dd602',3862,2534,0),(92,'Ring of wealth','/images/Ring_of_wealth_%28uncharged%29.png?dd602',3478,3163,0),(93,'Ring of wealth','/images/Ring_of_wealth_%28uncharged%29.png?dd602',3375,2995,0),(94,'Ring of wealth','/images/Ring_of_wealth_%28uncharged%29.png?dd602',10168,2824,10),(95,'Slayer ring','/images/Slayer_ring.png?1d1f2',3422,2431,-1),(96,'Slayer ring','/images/Slayer_ring.png?1d1f2',3537,3421,-1),(97,'Slayer ring','/images/Slayer_ring.png?1d1f2',9999,2802,-1),(98,'Slayer ring','/images/Slayer_ring.png?1d1f2',4601,3185,-1),(99,'Slayer ring','/images/Slayer_ring.png?1d1f2',4636,2028,-1),(100,'Slayer ring (eternal)','/images/Slayer_ring_%28eternal%29.png?0df0a',3422,2431,-1),(101,'Slayer ring (eternal)','/images/Slayer_ring_%28eternal%29.png?0df0a',3537,3421,-1),(102,'Slayer ring (eternal)','/images/Slayer_ring_%28eternal%29.png?0df0a',9999,2802,-1),(103,'Slayer ring (eternal)','/images/Slayer_ring_%28eternal%29.png?0df0a',4601,3185,-1),(104,'Slayer ring (eternal)','/images/Slayer_ring_%28eternal%29.png?0df0a',4636,2028,-1),(105,'Digsite pendant','/images/Digsite_pendant.png?3043c',3445,3341,0),(106,'Digsite pendant','/images/Digsite_pendant.png?3043c',3869,3763,0),(107,'Digsite pendant','/images/Digsite_pendant.png?3043c',10456,3549,10101),(108,'Ring of returning','/images/Ring_of_returning.png?8c89f',3219,3221,0),(109,'Ring of returning','/images/Ring_of_returning.png?8c89f',3480,2758,0),(110,'Ring of returning','/images/Ring_of_returning.png?8c89f',3338,2971,0),(111,'Ring of returning','/images/Ring_of_returning.png?8c89f',3470,3095,0),(112,'Ring of returning','/images/Ring_of_returning.png?8c89f',6076,3264,29),(113,'Ring of returning','/images/Ring_of_returning.png?8c89f',3635,3150,0),(114,'Ring of returning','/images/Ring_of_returning.png?8c89f',3673,1629,0),(115,'Necklace of passage','/images/Necklace_of_passage.png?8393a',3179,3114,0),(116,'Necklace of passage','/images/Necklace_of_passage.png?8393a',3349,2430,0),(117,'Necklace of passage','/images/Necklace_of_passage.png?8393a',3158,3405,0),(118,'Burning amulet','/images/Burning_amulet.png?acbdf',3634,3234,0),(119,'Burning amulet','/images/Burning_amulet.png?acbdf',3651,3038,0),(120,'Burning amulet','/images/Burning_amulet.png?acbdf',3842,3028,0),(121,'Varrock teleport (tablet)','/images/Varrock_teleport_%28tablet%29.png?35dd5',3424,3213,0),(122,'Varrock teleport (tablet)','/images/Varrock_teleport_%28tablet%29.png?35dd5',3479,3165,0),(123,'Falador teleport (tablet)','/images/Falador_teleport_%28tablet%29.png?97fe8',3378,2964,0),(124,'Lumbridge teleport (tablet)','/images/Lumbridge_teleport_%28tablet%29.png?ed6d0',3218,3221,0),(125,'Camelot teleport (tablet)','/images/Camelot_teleport_%28tablet%29.png?de576',3479,2757,0),(126,'Ardougne teleport (tablet)','/images/Ardougne_teleport_%28tablet%29.png?e56f0',3305,2662,0),(127,'Civitas illa fortis teleport (tablet)','/images/Civitas_illa_fortis_teleport_%28tablet%29.png?d31dc',3133,1681,0),(128,'Watchtower teleport (tablet)','/images/Watchtower_teleport_%28tablet%29.png?f0e76',3112,2549,0),(129,'Watchtower teleport (tablet)','/images/Watchtower_teleport_%28tablet%29.png?f0e76',3097,2584,0),(130,'Rimmington teleport','/images/Rimmington_teleport.png?4e1b1',3224,2953,0),(131,'Taverley teleport','/images/Taverley_teleport.png?d511d',3465,2893,0),(132,'Pollnivneach teleport','/images/Pollnivneach_teleport.png?f976b',3004,3340,0),(133,'Rellekka teleport','/images/Rellekka_teleport.png?b11fe',3631,2670,0),(134,'Brimhaven teleport','/images/Brimhaven_teleport.png?ada18',3179,2757,0),(135,'Brimhaven','/images/thumb/Brimhaven.png/300px-Brimhaven.png?73a11',3184,2760,0),(136,'Yanille teleport','/images/Yanille_teleport.png?7e7a8',3096,2544,0),(137,'Trollheim teleport (tablet)','/images/Trollheim_teleport_%28tablet%29.png?5c5a6',3679,2890,0),(138,'Hosidius teleport','/images/Hosidius_teleport.png?1940c',3517,1743,0),(139,'Paddewwa teleport (tablet)','/images/Paddewwa_teleport_%28tablet%29.png?f976b',9883,3100,-1),(140,'Senntisten teleport (tablet)','/images/Senntisten_teleport_%28tablet%29.png?847d4',3337,3320,0),(141,'Kharyrll teleport (tablet)','/images/Kharyrll_teleport_%28tablet%29.png?2aa89',3473,3494,0),(142,'Lassar teleport (tablet)','/images/Lassar_teleport_%28tablet%29.png?6592f',3470,3002,0),(143,'Dareeyak teleport (tablet)','/images/Dareeyak_teleport_%28tablet%29.png?85335',3696,2968,0),(144,'Carrallanger teleport (tablet)','/images/Carrallanger_teleport_%28tablet%29.png?3c432',3666,3158,0),(145,'Annakarl teleport (tablet)','/images/Annakarl_teleport_%28tablet%29.png?cbe92',3886,3288,0),(146,'Ghorrock teleport (tablet)','/images/Ghorrock_teleport_%28tablet%29.png?77553',3873,2974,0),(147,'Moonclan teleport (tablet)','/images/Moonclan_teleport_%28tablet%29.png?7027d',3915,2113,0),(148,'Ourania teleport (tablet)','/images/Ourania_teleport_%28tablet%29.png?b2e22',3246,2468,0),(149,'Waterbirth teleport (tablet)','/images/Waterbirth_teleport_%28tablet%29.png?75a26',3756,2546,0),(150,'Barbarian teleport (tablet)','/images/Barbarian_teleport_%28tablet%29.png?3be33',3569,2543,0),(151,'Khazard teleport (tablet)','/images/Khazard_teleport_%28tablet%29.png?2aa89',3167,2636,0),(152,'Fishing guild teleport (tablet)','/images/Fishing_guild_teleport_%28tablet%29.png?4a487',3391,2613,0),(153,'Catherby teleport (tablet)','/images/Catherby_teleport_%28tablet%29.png?39d34',3449,2801,0),(154,'Ice plateau teleport (tablet)','/images/Ice_plateau_teleport_%28tablet%29.png?7331d',3938,2975,0),(155,'Arceuus library teleport (tablet)','/images/Arceuus_library_teleport_%28tablet%29.png?1f712',3838,1633,0),(156,'Draynor manor teleport (tablet)','/images/Draynor_manor_teleport_%28tablet%29.png?5eb13',3351,3109,0),(157,'Battlefront teleport (tablet)','/images/Battlefront_teleport_%28tablet%29.png?3be33',3740,1347,0),(158,'Mind altar teleport (tablet)','/images/Mind_altar_teleport_%28tablet%29.png?ccf02',3509,2980,0),(159,'Salve graveyard teleport (tablet)','/images/Salve_graveyard_teleport_%28tablet%29.png?a8fa6',3461,3432,0),(160,'Fenkenstrain\'s castle teleport (tablet)','/images/Fenkenstrain%27s_castle_teleport_%28tablet%29.png?97fe8',3529,3548,0),(161,'West ardougne teleport (tablet)','/images/West_ardougne_teleport_%28tablet%29.png?07b10',3291,2500,0),(162,'Harmony island teleport (tablet)','/images/Harmony_island_teleport_%28tablet%29.png?bfea5',2867,3797,0),(163,'Cemetery teleport (tablet)','/images/Cemetery_teleport_%28tablet%29.png?273ca',3763,2980,0),(164,'Barrows teleport (tablet)','/images/Barrows_teleport_%28tablet%29.png?e9754',3314,3565,0),(165,'Ape atoll teleport (tablet)','/images/Ape_atoll_teleport_%28tablet%29.png?1f712',9102,2771,-1),(166,'Wilderness crabs teleport','/images/Wilderness_crabs_teleport.png?b56cf',3782,3352,0),(167,'Nardah teleport','/images/Nardah_teleport.png?efa1f',2917,3419,0),(168,'Digsite teleport','/images/Digsite_teleport.png?3043c',3412,3325,0),(169,'Feldip hills teleport','/images/Feldip_hills_teleport.png?97fe8',2925,2541,0),(170,'Lunar isle teleport','/images/Lunar_isle_teleport.png?8bd5a',3913,2094,0),(171,'Mort\'ton teleport','/images/Mort%27ton_teleport.png?045fc',3288,3488,0),(172,'Pest control teleport','/images/Pest_control_teleport.png?64f1b',2659,2658,0),(173,'Piscatoris teleport','/images/Piscatoris_teleport.png?bbceb',3649,2339,0),(174,'Tai bwo wannai teleport','/images/Tai_bwo_wannai_teleport.png?9074d',3066,2789,0),(175,'Iorwerth camp teleport','/images/Iorwerth_camp_teleport.png?13f14',3258,2194,0),(176,'Mos le\'harmless teleport','/images/Mos_le%27harmless_teleport.png?df7b3',2996,3701,0),(177,'Mos Le\'Harmless','/images/thumb/Mos_Le%27Harmless.png/300px-Mos_Le%27Harmless.png?1391e',2999,3735,0),(178,'Lumberyard teleport','/images/Lumberyard_teleport.png?8bd5a',3487,3302,0),(179,'Zul-andra teleport','/images/Zul-andra_teleport.png?8abb8',3056,2196,0),(180,'Key master teleport','/images/Key_master_teleport.png?fcd52',1250,1310,-1),(181,'Revenant cave teleport','/images/Revenant_cave_teleport.png?b11fe',3832,3128,0),(182,'Watson teleport','/images/Watson_teleport.png?b7686',3580,1645,0),(183,'Karamja gloves 3','/images/Karamja_gloves_3.png?863e0',9387,2840,-1),(184,'Karamja gloves 4','/images/Karamja_gloves_4.png?863e0',9387,2840,-1),(185,'Karamja gloves 4','/images/Karamja_gloves_4.png?863e0',2982,2869,0),(186,'Ardougne cloak 1','/images/Ardougne_cloak_1.png?c0a17',3221,2606,0),(187,'Desert amulet 2','/images/Desert_amulet_2.png?2c9d4',2918,3420,0),(188,'Desert amulet 3','/images/Desert_amulet_3.png?3043c',2918,3420,0),(189,'Desert amulet 4','/images/Desert_amulet_4.png?3043c',2927,3426,0),(190,'Morytania legs 1','/images/Morytania_legs_1.png?716c7',9888,3683,-1),(191,'Morytania legs 2','/images/Morytania_legs_2.png?5c9bf',9888,3683,-1),(192,'Morytania legs 3','/images/Morytania_legs_3.png?7027d',9888,3683,-1),(193,'Morytania legs 3','/images/Morytania_legs_3.png?7027d',3230,3482,-1),(194,'Morytania legs 4','/images/Morytania_legs_4.png?de10d',9888,3683,-1),(195,'Morytania legs 4','/images/Morytania_legs_4.png?de10d',3230,3482,-1),(196,'Fremennik sea boots 1','/images/Fremennik_sea_boots_1.png?c83d6',3675,2643,0),(197,'Fremennik sea boots 2','/images/Fremennik_sea_boots_2.png?c83d6',3675,2643,0),(198,'Fremennik sea boots 3','/images/Fremennik_sea_boots_3.png?f59ab',3675,2643,0),(199,'Fremennik sea boots 4','/images/Fremennik_sea_boots_4.png?f59ab',3675,2643,0),(200,'Kandarin headgear 3','/images/Kandarin_headgear_3.png?cff7a',3414,2733,0),(201,'Kandarin headgear 4','/images/Kandarin_headgear_4.png?cff7a',3414,2733,0),(202,'Explorer\'s ring 2','/images/Explorer%27s_ring_2.png?97fe8',3291,3052,0),(203,'Explorer\'s ring 3','/images/Explorer%27s_ring_3.png?b8cf0',3291,3052,0),(204,'Explorer\'s ring 4','/images/Explorer%27s_ring_4.png?b8cf0',3291,3052,0),(205,'Rada\'s blessing 1','/images/Rada%27s_blessing_1.png?9a45f',3455,1554,0),(206,'Rada\'s blessing 2','/images/Rada%27s_blessing_2.png?9a45f',3455,1554,0),(207,'Rada\'s blessing 3','/images/Rada%27s_blessing_3.png?219da',3455,1554,0),(208,'Rada\'s blessing 3','/images/Rada%27s_blessing_3.png?219da',3800,1311,0),(209,'Rada\'s blessing 4','/images/Rada%27s_blessing_4.png?b8388',3455,1554,0),(210,'Rada\'s blessing 4','/images/Rada%27s_blessing_4.png?b8388',3800,1311,0),(211,'Crafting cape','/images/Crafting_cape.png?720eb',3286,2931,0),(212,'Construct. cape','/images/Construct._cape.png?260b5',3224,2953,0),(213,'Construct. cape','/images/Construct._cape.png?260b5',3465,2893,0),(214,'Construct. cape','/images/Construct._cape.png?260b5',3004,3340,0),(215,'Construct. cape','/images/Construct._cape.png?260b5',3517,1743,0),(216,'Construct. cape','/images/Construct._cape.png?260b5',3647,2665,0),(217,'Construct. cape','/images/Construct._cape.png?260b5',3179,2757,0),(218,'Construct. cape','/images/Construct._cape.png?260b5',3096,2544,0),(219,'Construct. cape','/images/Construct._cape.png?260b5',6076,3239,-1),(220,'Fishing cape','/images/Fishing_cape.png?4a487',3401,2604,0),(221,'Farming cape','/images/Farming_cape.png?97fe8',3725,1248,0),(222,'Hunter cape','/images/Hunter_cape.png?7331d',2917,2556,-1),(223,'Hunter cape','/images/Hunter_cape.png?7331d',3772,3144,0),(224,'Hunter cape','/images/Hunter_cape.png?7331d',3046,1558,0),(225,'Ectophial','/images/Ectophial.png?7a7c0',3522,3660,0),(226,'Enchanted lyre','/images/Enchanted_lyre.png?b8cf0',3644,2662,0),(227,'Enchanted lyre','/images/Enchanted_lyre.png?b8cf0',3755,2551,0),(228,'Enchanted lyre','/images/Enchanted_lyre.png?b8cf0',3809,2409,0),(229,'Enchanted lyre','/images/Enchanted_lyre.png?b8cf0',3802,2336,0),(230,'Enchanted lyre(i)','/images/Enchanted_lyre%28i%29.png?8df58',3644,2662,0),(231,'Enchanted lyre(i)','/images/Enchanted_lyre%28i%29.png?8df58',3755,2551,0),(232,'Enchanted lyre(i)','/images/Enchanted_lyre%28i%29.png?8df58',3809,2409,0),(233,'Enchanted lyre(i)','/images/Enchanted_lyre%28i%29.png?8df58',3802,2336,0),(234,'Camulet','/images/Camulet.png?39d34',9315,3105,10054),(235,'Camulet','/images/Camulet.png?39d34',2924,3191,0),(236,'Drakan\'s medallion','/images/Drakan%27s_medallion.png?5eb13',3230,3649,0),(237,'Drakan\'s medallion','/images/Drakan%27s_medallion.png?5eb13',3337,3592,0),(238,'Drakan\'s medallion','/images/Drakan%27s_medallion.png?5eb13',9700,3808,14),(239,'Stony basalt','/images/Stony_basalt.png?276c6',3694,2845,0),(240,'Stony basalt','/images/Stony_basalt.png?276c6',3695,2837,0),(241,'Icy basalt','/images/Icy_basalt.png?f36f9',3938,2846,0),(242,'Calcified moth','/images/Calcified_moth_1.png?4734d',9550,1439,-1),(243,'Pharaoh\'s sceptre','/images/Pharaoh%27s_sceptre_%28uncharged%29.png?b225e',4428,1934,10129),(244,'Pharaoh\'s sceptre','/images/Pharaoh%27s_sceptre_%28uncharged%29.png?b225e',2827,3341,0),(245,'Pharaoh\'s sceptre','/images/Pharaoh%27s_sceptre_%28uncharged%29.png?b225e',2897,3232,0),(246,'Pharaoh\'s sceptre','/images/Pharaoh%27s_sceptre_%28uncharged%29.png?b225e',2718,3313,0),(247,'Xeric\'s talisman','/images/Xeric%27s_talisman_%28inert%29.png?046c7',3530,1579,0),(248,'Xeric\'s talisman','/images/Xeric%27s_talisman_%28inert%29.png?046c7',3566,1752,0),(249,'Xeric\'s talisman','/images/Xeric%27s_talisman_%28inert%29.png?046c7',3815,1504,0),(250,'Xeric\'s talisman','/images/Xeric%27s_talisman_%28inert%29.png?046c7',3673,1644,0),(251,'Xeric\'s talisman','/images/Xeric%27s_talisman_%28inert%29.png?046c7',3560,1254,0),(252,'Chronicle','/images/Chronicle.png?c50c3',3355,3201,0),(253,'Amulet of the eye','/images/Amulet_of_the_eye.png?2e99c',9461,3615,-1),(254,'Ring of the elements','/images/Ring_of_the_elements_%28uncharged%29.png?5d60c',3276,2981,0),(255,'Ring of the elements','/images/Ring_of_the_elements_%28uncharged%29.png?5d60c',3155,3170,0),(256,'Ring of the elements','/images/Ring_of_the_elements_%28uncharged%29.png?5d60c',3468,3288,0),(257,'Ring of the elements','/images/Ring_of_the_elements_%28uncharged%29.png?5d60c',3279,3314,0),(258,'Ancient shard','/images/Ancient_shard.png?0b6b6',10042,1661,32),(259,'Ring of shadows','/images/Ring_of_shadows_%28uncharged%29.png?7f747',6436,3296,-1),(260,'Ring of shadows','/images/Ring_of_shadows_%28uncharged%29.png?7f747',10336,2912,-1),(261,'Ring of shadows','/images/Ring_of_shadows_%28uncharged%29.png?7f747',6434,2019,-1),(262,'Ring of shadows','/images/Ring_of_shadows_%28uncharged%29.png?7f747',6435,2588,-1),(263,'Ring of shadows','/images/Ring_of_shadows_%28uncharged%29.png?7f747',3424,1175,-1),(264,'Port Sarim','/images/thumb/Port_Sarim.png/300px-Port_Sarim.png?bbe01',3221,3029,0);
/*!40000 ALTER TABLE `teleports` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-29 13:52:15