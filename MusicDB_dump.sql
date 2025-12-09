-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (arm64)
--
-- Host: localhost    Database: Music
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `roles`
--

CREATE SCHEMA IF NOT EXISTS Music;
USE Music;


DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ofx66keruapi6vyqpv6f2or37` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_USER');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `songs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `artist` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES (1,'A A A','PLK'),(2,'A Bacalhau','Ana Bacalhau'),(3,'A Ballad of Non Le Jon','JANNABI'),(4,'A Beautiful Life','MarieMarie'),(5,'A Bela e A Fera','Cidalia Castro'),(6,'A Beleza Vai Mudar O Mundo','Soraia Tavares'),(7,'A Better Morning','Patrick Jonsson'),(8,'A Bitter Lullaby','Martin Almgren'),(9,'A Blaze','Bill Laurance'),(10,'A Boat Beneath a Sunny Sky','AWKWARD i'),(11,'A Boat To An Island On The Wall','Ben Howard'),(12,'A Brand New Wayo','Mixed Grill'),(13,'A Cabritinha','Quim Barreiros'),(14,'A Cachete','BLOKE'),(15,'A Calabasas Freestyle','Jaden'),(16,'A Capa Sotto','Clementino'),(17,'A Capella','Chase Goehring'),(18,'A Case of You','Joni Mitchell'),(19,'A Chance Encounter','Spider Farmer'),(20,'A Change Is Gonna Come','Greta Van Fleet'),(21,'A Christmas Carol Main Title','Alan Silvestri'),(22,'A Christmas Carol','Jose Mari Chan'),(23,'A Christmas Night To Remember','The Mamas'),(24,'A Christmas Song for You','Jose Mari Chan'),(25,'A Conversation','Ben Whishaw'),(26,'A Correr los Lakers','El Alfa'),(27,'A Couple Acres Greener','Mipso'),(28,'A Couple Of Forevers','Chrisette Michele'),(29,'A Crime To Remember','Pop Evil'),(30,'A Cual Piso','Jhonny Ventura'),(31,'A Cualquier Otra Parte','Dorian'),(32,'A DECADE IN THE RAIN','coldrain'),(33,'A DIO','Salmo'),(34,'A DOMANI PER SEMPRE','Sofia Tornambene'),(35,'A Daily Song','Hwang Chi Yeul'),(36,'A Day Of Sun','Alexander Search'),(37,'A Day With Me','Luna Is A Bep'),(38,'A Day With You','Amiel Sol'),(39,'A Day for Redemption','Mors Principium Est'),(40,'A Desalambrar','Daniel Viglietti'),(41,'A Design for Life','Manic Street Preachers'),(42,'A Different Corner','George Michael'),(43,'A Dios Le Pido','Juanes'),(44,'A Donde Vayas','Los Bukis'),(45,'A Dos Metros de Ti','Dani Ilabel'),(46,'A Dream I Keep Returning To','Ludwig Hart'),(47,'A Dream That Never Stops','Ozark Henry'),(48,'A Dream of You and Me','Future Islands'),(49,'A Drop In The Ocean','Ron Pope'),(50,'A Ella Le Gustas el Hombre Viejo','Samy y Sandra Sandoval'),(51,'A Ella','KAROL G'),(52,'A Esa','Daniela Darcourt'),(53,'A Escolhida','Mc Pedrinho'),(54,'A Escondidas','MYA'),(55,'A Face In The Crowd','Tom Petty'),(56,'A Face To Call Home','John Mayer'),(57,'A Fever Dream','Everything Everything'),(58,'A Field of Flowers','Manuel Boltano'),(59,'A Fifth Of Beethoven','Walter Murphy'),(60,'A Fighting Chance','Trevor Kowalski'),(61,'A Fuego','Farina'),(62,'A Game of Thrones','BennieNolen'),(63,'A Garagem Da Vizinha','Quim Barreiros'),(64,'A Gente Brigou','Mc Don Juan'),(65,'A Girl Like Me','gugudan'),(66,'A Girl Like You','Edwyn Collins'),(67,'A God Like You','Kirk Franklin'),(68,'A Gogo','Naza'),(69,'A Great Design','Black Marble'),(70,'A Guy with a Girl','Blake Shelton'),(71,'A HAPPY NEW YEAR','Yumi Matsutoya'),(72,'A Head Full of Dreams','Coldplay'),(73,'A Hero Like You','Frik n Chic'),(74,'A Hole In The Earth','Daughter'),(75,'A Holly Jolly Christmas','Brett Eldredge'),(76,'A Huevo','NK'),(77,'A Hunter Gathers','Junkie XL'),(78,'A Ja','Ego'),(79,'A Jealous Heart Never Rests','The Black Madonna'),(80,'A Kele Nta','MHD'),(81,'A Kind Of Love','Marc Almond'),(82,'A Kindly Reminder','Passenger'),(83,'A L I E N S','Coldplay'),(84,'A LOT of Money','Dymenplaxx'),(85,'A La Mar','Vicente Garcia'),(86,'A La Sombra De Mi Madre','Leo Dan'),(87,'A La Tess','Jnr Slice'),(88,'A La Ventana Carolina','El David Aguilar'),(89,'A Lamenting Song','Max Richter'),(90,'A Lannister Always Pays His Debts','Ramin Djawadi'),(91,'A Las Nueve','No Te Va Gustar'),(92,'A Leo Underwater','Daffodils'),(93,'A Lesson in Vengeance','Obituary'),(94,'A Letter Home','Berlioz'),(95,'A Letter to You','Kevin Hugo'),(96,'A Lifetime to Repair','Kylie Minogue'),(97,'A Line in the Sand','Linkin Park'),(98,'A Little Bit Off','Five Finger Death Punch'),(99,'A Little Bit Yours','JP Saxe'),(100,'A Little Longer','Broiler'),(101,'A Little Love','Beyond Beyond'),(102,'A Little Messed Up','june'),(103,'A Little More Numb','Les Big Byrd'),(104,'A Little More','Alessia Cara'),(105,'A Little Piano','DJ Mitsu The Beats'),(106,'A Little Piece of Heaven','Avenged Sevenfold'),(107,'A Little Quiet','SKAAR'),(108,'A Little Something to Give','Thomas Dybdahl'),(109,'A Little Taste','Veronica Swift'),(110,'A Little Time','The Beautiful South'),(111,'A Little Too Late','Woody Pitney'),(112,'A Little While','Tshego'),(113,'A Little Work','Fergie'),(114,'A Lo Cubano','DJ Krlos Berrospi'),(115,'A Lo Enfermo','Mati Drugs'),(116,'A Lo Lejos Me Veran','El de La Guitarra'),(117,'A Lo Loco','Joshua Dietrich'),(118,'A Lo Que Vinimos','Paola Navarrete'),(119,'A Lonely Night','The Weeknd'),(120,'A Long Time','Shannon K'),(121,'A Long Year','Matthew And The Atlas'),(122,'A Los Culish Les Gusta','isra'),(123,'A Love To Last A Lifetime','Juris'),(124,'A Love Unreal','Black Label Society'),(125,'A Low and Distant Sound Gradually Swelling and Increasing','Shane Carruth'),(126,'A Lua E Eu','Cassiano'),(127,'A Lua','Pabllo Vittar'),(128,'A Lyga','Angelou'),(129,'A Marshmallow World','Darlene Love'),(130,'A Match Into Water','Pierce The Veil'),(131,'A Matter of Time','Sennek'),(132,'A Maze','Freddie Joachim'),(133,'A Mea','The Motans'),(134,'A Medio Camino','Eros Ramazzotti'),(135,'A Melhor do Baile','Dani Russo'),(136,'A Memory In My Heart','Yangpa'),(137,'A Memory for Life','MAMAMOO'),(138,'A Message to Myself','Roo Panes'),(139,'A Message','Coldplay'),(140,'A Mi Lado','Angie Valverde'),(141,'A Mi Manera','Chucho Flash'),(142,'A Mi Me Gusta el Taca Taca','Daddy Melquiades'),(143,'A Mi Me Gustan Mayores','Natalie Summer'),(144,'A Mi Me Vuelve Loco Tu Forma de Ser','Alex Puebla'),(145,'A Mi Que Me Importa','Harryson'),(146,'A Mia Madre Le Piace la Coca','Trap God'),(147,'A Mil','Cruzando El Charco'),(148,'A Milenar Arte De Meter O Louco','Projota'),(149,'A Milli','Lil Wayne'),(150,'A Million Goodbyes','Lea Heart'),(151,'A Million Kisses Late','Matt Dusk'),(152,'A Million Miles','mansionz'),(153,'A Million Reasons','Anthony Rocket'),(154,'A Million Songs','Sophia Somajo'),(155,'A Million Times More','Pipes And Pints'),(156,'A Million Years','Mariette'),(157,'A Million on My Soul','Alexiane'),(158,'A Minha Menina','Os Mutantes'),(159,'A Minor Story','Pieter de Graaf'),(160,'A Moment Apart','ODESZA'),(161,'A Mover la Colita','La Sonora Dinamita'),(162,'A Muse','dvsn'),(163,'A Natural','Gord Downie'),(164,'A Nearly Peaceful Place','Krzysztof Wierzynkiewicz'),(165,'A New Day','starRo'),(166,'A New Error','Moderat'),(167,'A New Wave','VILA XON'),(168,'A Nice Dream for Each Other','BeverlyGeogleWinters'),(169,'A Night Of Insomnia','Wally Lopez'),(170,'A Night like tonight','BY THE MOON'),(171,'A No No','Mariah Carey'),(172,'A Nossa Metade','Sara Carreira'),(173,'A Nossa Vez','Calema'),(174,'A Nuestros Pies','Berni Pietra'),(175,'A Painting in Paris','Arrested Youth'),(176,'A Palo Seco','Belchior'),(177,'A Passage to India','BennieNolen'),(178,'A Pele Que Habito','Baco Exu do Blues'),(179,'A Perfect Christmas','Jose Mari Chan'),(180,'A Perfect Day To Chase Tornados','Jim White'),(181,'A Pesar de Todo','Beret'),(182,'A Pesar del Tiempo','Mickey Taveras'),(183,'A Phone Call In Amsterdam','Valley'),(184,'A Pit','VETO'),(185,'A Place Called You','Emma Stevens'),(186,'A Place To Call Home','Michael Ottosson'),(187,'A Place for My Head','Linkin Park'),(188,'A Place in the Sun','Maoli'),(189,'A Place','Nils Frahm'),(190,'A Poca Luz','Ojos de Luna'),(191,'A Ponte','Trago'),(192,'A Portrait Of','Sorority Noise'),(193,'A Primera Vista','Pedro Aznar'),(194,'A Prominent Response','Piotr Miteska'),(195,'A Pure Person','Lim Giong'),(196,'A Puro Dolor','Los Pibes del Penal'),(197,'A QUEDA','Gloria Groove'),(198,'A Qualquer Hora','Irma'),(199,'A Que No Me Dejas','Alejandro Sanz'),(200,'A Quema Ropa','Lucas Sugo'),(201,'A Question Of Time','Exit Eden'),(202,'A Quick Getaway','Stephen Rennicks'),(203,'A Rainy Night in Soho','The Pogues'),(204,'A Real Road Song','Dandelion'),(205,'A Reason to Fight','Disturbed'),(206,'A Rebelarnos Contra la Amistad','Cayo la Cabra'),(207,'A Redoblar','El Zucara'),(208,'A Rocket to the Moon','Gavin D'),(209,'A Rose Infested','Seven Day Sleep'),(210,'A Rose Is Still a Rose','Aretha Franklin'),(211,'A STAR IS BORN','ASH ISLAND'),(212,'A Sama De','Tommie Christiaan'),(213,'A San Fernando un Ratito a Pie y Otro Caminando','Manolo Garcia'),(214,'A Sant Hilari','Doctor Prats'),(215,'A Scent of Lily','Augustine'),(216,'A Seat at the Table','ARISE'),(217,'A Short History of Neadfy Everthing','LouChamberlain'),(218,'A Shoulder to Cry On','Tommy Page'),(219,'A Sign to Believe','Qaayel'),(220,'A Simple Little Lullaby','Eamonn Watt'),(221,'A Simple Place','Atomic Rose'),(222,'A Simple Song','Chris Stapleton'),(223,'A Sky Full of Stars','CHANYEOL'),(224,'A Slowly Falling City','Union Pulse'),(225,'A Solas','Maria Becerra'),(226,'A Solitary Reign','Amenra'),(227,'A Sombra','Orelha Negra'),(228,'A Song About Being Sad','Rex Orange County'),(229,'A Song About Her','Jason Henshaw'),(230,'A Song About Space','Reese Lansangan'),(231,'A Song For Mama','Boyz II Men'),(232,'A Song For The Lovers','Richard Ashcroft'),(233,'A Song For You','Amy Winehouse'),(234,'A Song Written Easily','ONEUS'),(235,'A Song for Everything','Maren Morris'),(236,'A Song','SCALLER'),(237,'A Soraka Roubou Meu Pentakill','Prometeus'),(238,'A Spaceman Came Travelling','Chris de Burgh'),(239,'A Stare Bound in Stone','At The Gates'),(240,'A Su Lado','Kaze'),(241,'A Summer Thing','Cayucas'),(242,'A T A R A X I A','La Casa Azul'),(243,'A TU LAO','Recycled J'),(244,'A Tan Solo una Hora','Gabriel Pagan'),(245,'A Te','Jovanotti'),(246,'A Terra Gira','Os Quatro e Meia'),(247,'A Thank You in Fives','Dylan Ryche'),(248,'A Thousand Bad Times','Post Malone'),(249,'A Thousand Dreams','Vic Hamberlin'),(250,'A Thousand Miles','Vanessa Carlton'),(251,'A Thousand Secrets','Apanemic'),(252,'A Thousand Shards of Heaven','Lunatic Soul'),(253,'A Thousand Years','Boyce Avenue'),(254,'A Ti Te Ocurre Algo','Leiva'),(255,'A Ti Virgencita','Miriam Solis'),(256,'A Ti Volvere','Tito Rojas'),(257,'A Ti','Ricardo Arjona'),(258,'A Time For Love','Mandevilla'),(259,'A Time of Wonder','Alexis Ffrench'),(260,'A Todos Um Bom Natal','Coro de Santo Amaro de Oeiras'),(261,'A Todos los Veo Caer','Maria Daniela'),(262,'A Town Called Crime','Michelle Cadreau'),(263,'A Traveler of Faraway Palace','FernHarris'),(264,'A Traves Del Vaso','Grupo Arranke'),(265,'A Travez del Vaso','Imperio Mayor'),(266,'A Tres Colores','Las Ligas Menores'),(267,'A Trick of the Light','Villagers'),(268,'A Trip To The Moon','Aiolos Rue'),(269,'A Trip to Trumpton','Urban Hype'),(270,'A Tu Favor','Andres Garcia'),(271,'A Tu Lado','Entremares'),(272,'A Tu Merced','Bad Bunny'),(273,'A Tu Regreso','Cecilia Todd'),(274,'A Tua Voz','Gloria Groove'),(275,'A UN PASSO DA DIO','Achille Lauro'),(276,'A Un Paio Di Passi Dal Cuore','Alvis'),(277,'A Vava Inouva','Idir'),(278,'A Veces Vuelvo','Catupecu Machu'),(279,'A Veces','Covi Quintana'),(280,'A Very Merry Christmas to You','Victor Willis'),(281,'A Very Special Autumn','Sindrandi'),(282,'A Vida Nunca Cansa','Tiago Iorc'),(283,'A Vida Toda','Carolina Deslandes'),(284,'A Violent Noise','The xx'),(285,'A Violent Sky','Apparat'),(286,'A Virgin Unspotted','Ken Dorset'),(287,'A Vuelos','Antonio Orozco'),(288,'A Walk Down the Aisle','In Amber'),(289,'A Walk','Yerin Baek'),(290,'A Way To Love Me Still','Alex Vargas'),(291,'A Way to Heaven','Maurice Windham'),(292,'A Way with Murder','Mini Simmons'),(293,'A Week','The Shalalalas'),(294,'A Weird Invitation','Phlake'),(295,'A Whisper','Coldplay'),(296,'A Whiter Shade Of Pale','Procol Harum'),(297,'A Whole New World','Love Falk'),(298,'A Wish On Christmas Night','Jose Mari Chan'),(299,'A Wolf Who Wears Sheeps Clothes','Mac DeMarco'),(300,'A Woman','Tory Lanez'),(301,'A Wonderful Life','Brian Fallon'),(302,'A World Alone','Lorde'),(303,'A Ya Lil','Ily'),(304,'A Year Ago','Birds of Bellwoods'),(305,'A byah ti kazala','Rayna'),(306,'A closeness','Dermot Kennedy'),(307,'A coup de crick','Jul'),(308,'A dix','Kalash Criminel'),(309,'A fuego lento','Rosana'),(310,'A fuego','DrefQuila'),(311,'A la Buena','Domino Saints'),(312,'A la Distancia','Siddhartha'),(313,'A la Folie','Juliette Armanet'),(314,'A la Gustavo','Hooss'),(315,'A la Luz','Barbi Recanati'),(316,'A la Medida','Ricardo Arjona'),(317,'A la Sombra de Mi Mama','Leo Dan'),(318,'A la base','Nekfeu'),(319,'A la bourre','Jnr Slice'),(320,'A la deriva','Txarango'),(321,'A la vie a la mort','Bruma'),(322,'A las Nueve','No Te Va Gustar'),(323,'A letter to my younger self','Ambar Lucid'),(324,'A little thing','Peck Palitchoke'),(325,'A me ci pensi mai','Federica Abbate'),(326,'A mi manera','Raphael'),(327,'A mi reina','Tierra Adentro'),(328,'A nach B','LOKO BEN'),(329,'A natale puoi','Alicia'),(330,'A niech pada','Karolina Baszak'),(331,'A noite toda','Micael'),(332,'A pesar de todo','Beret'),(333,'A proposito di lei','Baustelle'),(334,'A quemarropa','Fito y Fitipaldis'),(335,'A ta merci','Fishbach'),(336,'A tanto amor','Coro Pascua Joven San Isidro'),(337,'A thought on an autumn night','JANNABI'),(338,'A un minuto de ti','Mikel Erentxun'),(339,'A un paio di passi dal cuore','Alvis'),(340,'A un passo da te','MINACELENTANO'),(341,'A volte le cose vanno in una direzione opposta a quella che pensavi','Umberto Maria Giardini'),(342,'A wczoraj z wieczora','Enej'),(343,'A','SiM'),(344,'AAA','Papillon'),(345,'AAH SHIT','Imenella'),(346,'ABC City','Holograms'),(347,'ABC','Guitarricadelafuente'),(348,'ABDI MUSTI ALI','Gigis'),(349,'ABER WO BIST DU','ELIF'),(350,'ABKD','Assembly Generals'),(351,'ABOUT YOU','The Kid LAROI'),(352,'ABS','Zwieberr'),(353,'ABSENT','IVY RED'),(354,'ACHILLOVA PATA','Mirai'),(355,'ACTION','CHAI'),(356,'ADAMAS','LiSA'),(357,'ADCT','MORGAN'),(358,'ADDJAS','KEiiNO'),(359,'ADEM','Brooze'),(360,'ADHD','Herbert Munkhammar'),(361,'ADHS','RIN'),(362,'ADIOS','Team X'),(363,'ADMIT IT','Ski Mask The Slump God'),(364,'ADMV','Maluma'),(365,'ADN','Disiz'),(366,'ADORE YOU','iKON'),(367,'AFFET','Maestro'),(368,'AFIKSH','RICTA'),(369,'AFTER LIGHT','HYDE'),(370,'AFTER MOON','TWICE'),(371,'AFTUR HEIM','Haki'),(372,'AGEHA','GENERATIONS from EXILE TRIBE'),(373,'AGNES WATER','Jamie Rose'),(374,'AGREE','MINO'),(375,'AGoodLife','Slow J'),(376,'AHA','Fourty'),(377,'AHH','Seyer'),(378,'AHU','King Khalil'),(379,'AI BIET','WEAN'),(380,'AI Nash','YoungBoy Never Broke Again'),(381,'AI Not No Body','SummerFoster'),(382,'AI','Ghostemane'),(383,'AIKAKONE','Sexmane'),(384,'AILAVJUU','Oliver'),(385,'AINT GOIN BACK','Russ'),(386,'AIR','WINNER'),(387,'AIVAN SAMA','NIGEL'),(388,'AJAX is Kampioen','Danny Lukassen'),(389,'AK Parti Benim','AK Parti'),(390,'AKANIZER','Laylow'),(391,'AKM','Rytmus'),(392,'AKRIBIA','WEN'),(393,'AL CAPONE','Eladio Carrion'),(394,'ALAMBETANT','STIKSTOF'),(395,'ALARM','MINO'),(396,'ALASKA','BROCKHAMPTON'),(397,'ALDO RITMO','Salmo'),(398,'ALEIN','Haki'),(399,'ALELE','JohniBelea'),(400,'ALIEN','BOBBY'),(401,'ALKIS','OZZIAN'),(402,'ALL CAPS','STIKSTOF'),(403,'ALL I NEED','SUR'),(404,'ALL IN','Stray Kids'),(405,'ALLES DOPE','Cro'),(406,'ALLES KAPOT','STIKSTOF'),(407,'ALLES SCHON GESEHEN','Katja Krasavice'),(408,'ALMA DINAMITA','WOS'),(409,'ALMAS GEMELAS','Myke Towers'),(410,'ALO','VessoU'),(411,'ALONE','SEUNGRI'),(412,'ALTO RIESGO','Myke Towers'),(413,'ALURE','Shimmi'),(414,'ALWAYS DO','The Kid LAROI'),(415,'ALWAYS','Yoon Mirae'),(416,'ALYX','Sigma'),(417,'AM Moonlight','Left Field Messiah'),(418,'AMAKABOGERA','Maymay Entrata'),(419,'AMAME','LOUTA'),(420,'AMAR PARA ESQUECER','GROGNation'),(421,'AMARTIES','RICTA'),(422,'AMATERASU','Maddy Soma'),(423,'AMAZING GRACE','DaBaby'),(424,'AMBRAS','STIKSTOF'),(425,'AMBUSH','OFB'),(426,'AMERICAN DREAM','Farid Bang'),(427,'AMERICAN GODS','ONR'),(428,'AMERIKA','Rammstein'),(429,'AMEX BLACK','Joker Bra'),(430,'AMG GL','Sero El Mero'),(431,'AMG Technology','Hamza'),(432,'AMG','Farruko'),(433,'AMICI','PSICOLOGI'),(434,'AMIGA','Dardan'),(435,'AMN Skit','Cassper Nyovest'),(436,'AMOR DE CINE','Humbe'),(437,'AMOR DEL GHETTO','BANDIDO'),(438,'AMS','Martin Kohlstedt'),(439,'AMTAR','Mousv'),(440,'ANASA','iLLEOo'),(441,'ANDRE ROSE','Zayo'),(442,'ANETOI','VLOSPA'),(443,'ANGELA','SAMI'),(444,'ANIMA','DrefGold'),(445,'ANIMAL','HAVAL'),(446,'ANKKURI','ODE'),(447,'ANKURAS','GROGNation'),(448,'ANL','NCT DREAM'),(449,'ANNE','Firat'),(450,'ANNO ZERO','Dani Faiv'),(451,'ANOTHER DAY','PARTYNEXTDOOR'),(452,'ANTES QUE SE ACABE','Bad Bunny'),(453,'ANTI EVERYBODY','KILLY'),(454,'ANTIASSIMILIERT','Genetikk'),(455,'ANTIPATICO','Salmo'),(456,'ANTWOORD','Boef'),(457,'ANXIETY','ANNABELLE'),(458,'ANXT','Random Recipe'),(459,'ANYMORE','John Wolf'),(460,'ANYTHING YOU WANT','Tifa Chen'),(461,'AP','Ashafar'),(462,'APESHIT','Bree Runway'),(463,'APO ALLH MATIA','RICTA'),(464,'APOLOGY','iKON'),(465,'APPLAUS','FOURTY'),(466,'APRIL','SIRIMONGKOL'),(467,'AQUA','Luciano'),(468,'ARE WE ALONE','Suchmos'),(469,'ARGENTINA','Gunna'),(470,'ARIA','Majk Spirit'),(471,'ARISTOCRAT','MORGENSHTERN'),(472,'ARRESTATIE','Chivv'),(473,'ARSENICO','AIELLO'),(474,'ART IS DEAD','Bo Burnham'),(475,'AS ONE','UVERworld'),(476,'ASAP','Mirror'),(477,'ASAS','Luan Santana'),(478,'ASKIM BENIM','AMAL'),(479,'ASMR','Asakura'),(480,'ASOZIAL','Farid Bang'),(481,'ASTMAFLOW','CHO'),(482,'ASTRONAUTE','Youssoupha'),(483,'ASTROTHUNDER','Travis Scott'),(484,'ATARAX','XOV'),(485,'ATEO','Feid'),(486,'ATHENS','GAB'),(487,'ATLiens','Outkast'),(488,'ATM','Stormy'),(489,'ATTENTION','Joji'),(490,'ATWA','System Of A Down'),(491,'AUA','Artigeardit'),(492,'AUATC','Bon Iver'),(493,'AUF WIEDERSEHEN','Mozzik'),(494,'AURORA','MINO'),(495,'AUTOPISTA','Mesita'),(496,'AVALANCHE','UVERworld'),(497,'AVM','YG Pablo'),(498,'AVXNTADXR','Feid'),(499,'AWAKE','Elee Bermudez'),(500,'AWAY','Oxlade');
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  KEY `FKh8ciramu9cc9q3qcqiv4ue8a6` (`role_id`),
  KEY `FKhfh9dx7w3ubf1co1vdev94g3f` (`user_id`),
  CONSTRAINT `FKh8ciramu9cc9q3qcqiv4ue8a6` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `FKhfh9dx7w3ubf1co1vdev94g3f` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,1);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_r43af9ap4edm43mmtq01oddj6` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'$2a$10$/v/MkBjM/FZfn0wWK2NzmeZTPm2KpfSw6Kw8A8jqOKbj0WVB5fg2y','CCT1234');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-23 11:14:25
