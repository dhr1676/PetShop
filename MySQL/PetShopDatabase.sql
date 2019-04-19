CREATE DATABASE  IF NOT EXISTS `petshop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `petshop`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: petshop
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `breed`
--

DROP TABLE IF EXISTS `breed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `breed` (
  `breed_id` int(11) NOT NULL,
  `breed_name` varchar(100) NOT NULL,
  PRIMARY KEY (`breed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `breed`
--

LOCK TABLES `breed` WRITE;
/*!40000 ALTER TABLE `breed` DISABLE KEYS */;
INSERT INTO `breed` VALUES (1,'Affenpinscher'),(2,'Afghan Hound'),(3,'Airedale Terrier'),(4,'Akbash'),(5,'Akita'),(6,'Alaskan Malamute'),(7,'American Bulldog'),(8,'American Eskimo Dog'),(9,'American Hairless Terrier'),(10,'American Staffordshire Terrier'),(11,'American Water Spaniel'),(12,'Anatolian Shepherd'),(13,'Appenzell Mountain Dog'),(14,'Australian Cattle Dog/Blue Heeler'),(15,'Australian Kelpie'),(16,'Australian Shepherd'),(17,'Australian Terrier'),(18,'Basenji'),(19,'Basset Hound'),(20,'Beagle'),(21,'Bearded Collie'),(22,'Beauceron'),(23,'Bedlington Terrier'),(24,'Belgian Shepherd Dog Sheepdog'),(25,'Belgian Shepherd Laekenois'),(26,'Belgian Shepherd Malinois'),(27,'Belgian Shepherd Tervuren'),(28,'Bernese Mountain Dog'),(29,'Bichon Frise'),(30,'Black and Tan Coonhound'),(31,'Black Labrador Retriever'),(32,'Black Mouth Cur'),(33,'Black Russian Terrier'),(34,'Bloodhound'),(35,'Blue Lacy'),(36,'Bluetick Coonhound'),(37,'Boerboel'),(38,'Bolognese'),(39,'Border Collie'),(40,'Border Terrier'),(41,'Borzoi'),(42,'Boston Terrier'),(43,'Bouvier des Flanders'),(44,'Boxer'),(45,'Boykin Spaniel'),(46,'Briard'),(47,'Brittany Spaniel'),(48,'Brussels Griffon'),(49,'Bull Terrier'),(50,'Bullmastiff'),(51,'Cairn Terrier'),(52,'Canaan Dog'),(53,'Cane Corso Mastiff'),(54,'Carolina Dog'),(55,'Catahoula Leopard Dog'),(56,'Cattle Dog'),(57,'Caucasian Sheepdog (Caucasian Ovtcharka)'),(58,'Cavalier King Charles Spaniel'),(59,'Chesapeake Bay Retriever'),(60,'Chihuahua'),(61,'Chinese Crested Dog'),(62,'Chinese Foo Dog'),(63,'Chinook'),(64,'Chocolate Labrador Retriever'),(65,'Chow Chow'),(66,'Cirneco dell\'Etna'),(67,'Clumber Spaniel'),(68,'Cockapoo'),(69,'Cocker Spaniel'),(70,'Collie'),(71,'Coonhound'),(72,'Corgi'),(73,'Coton de Tulear'),(74,'Curly-Coated Retriever'),(75,'Dachshund'),(76,'Dalmatian'),(77,'Dandi Dinmont Terrier'),(78,'Doberman Pinscher'),(79,'Dogo Argentino'),(80,'Dogue de Bordeaux'),(81,'Dutch Shepherd'),(82,'English Bulldog'),(83,'English Cocker Spaniel'),(84,'English Coonhound'),(85,'English Pointer'),(86,'English Setter'),(87,'English Shepherd'),(88,'English Springer Spaniel'),(89,'English Toy Spaniel'),(90,'Entlebucher'),(91,'Eskimo Dog'),(92,'Feist'),(93,'Field Spaniel'),(94,'Fila Brasileiro'),(95,'Finnish Lapphund'),(96,'Finnish Spitz'),(97,'Flat-coated Retriever'),(98,'Fox Terrier'),(99,'Foxhound'),(100,'French Bulldog'),(101,'Galgo Spanish Greyhound'),(102,'German Pinscher'),(103,'German Shepherd Dog'),(104,'German Shorthaired Pointer'),(105,'German Spitz'),(106,'German Wirehaired Pointer'),(107,'Giant Schnauzer'),(108,'Glen of Imaal Terrier'),(109,'Golden Retriever'),(110,'Gordon Setter'),(111,'Great Dane'),(112,'Great Pyrenees'),(113,'Greater Swiss Mountain Dog'),(114,'Greyhound'),(115,'Harrier'),(116,'Havanese'),(117,'Hound'),(118,'Hovawart'),(119,'Husky'),(120,'Ibizan Hound'),(121,'Illyrian Sheepdog'),(122,'Irish Setter'),(123,'Irish Terrier'),(124,'Irish Water Spaniel'),(125,'Irish Wolfhound'),(126,'Italian Greyhound'),(127,'Italian Spinone'),(128,'Jack Russell Terrier'),(129,'Jack Russell Terrier (Parson Russell Terrier)'),(130,'Japanese Chin'),(131,'Jindo'),(132,'Kai Dog'),(133,'Karelian Bear Dog'),(134,'Keeshond'),(135,'Kerry Blue Terrier'),(136,'Kishu'),(137,'Klee Kai'),(138,'Komondor'),(139,'Kuvasz'),(140,'Kyi Leo'),(141,'Labrador Retriever'),(142,'Lakeland Terrier'),(143,'Lancashire Heeler'),(144,'Leonberger'),(145,'Lhasa Apso'),(146,'Lowchen'),(147,'Maltese'),(148,'Manchester Terrier'),(149,'Maremma Sheepdog'),(150,'Mastiff'),(151,'McNab'),(152,'Miniature Pinscher'),(153,'Mountain Cur'),(154,'Mountain Dog'),(155,'Munsterlander'),(156,'Neapolitan Mastiff'),(157,'New Guinea Singing Dog'),(158,'Newfoundland Dog'),(159,'Norfolk Terrier'),(160,'Norwegian Buhund'),(161,'Norwegian Elkhound'),(162,'Norwegian Lundehund'),(163,'Norwich Terrier'),(164,'Nova Scotia Duck-Tolling Retriever'),(165,'Old English Sheepdog'),(166,'Otterhound'),(167,'Papillon'),(168,'Patterdale Terrier (Fell Terrier)'),(169,'Pekingese'),(170,'Peruvian Inca Orchid'),(171,'Petit Basset Griffon Vendeen'),(172,'Pharaoh Hound'),(173,'Pit Bull Terrier'),(174,'Plott Hound'),(175,'Podengo Portugueso'),(176,'Pointer'),(177,'Polish Lowland Sheepdog'),(178,'Pomeranian'),(179,'Poodle'),(180,'Portuguese Water Dog'),(181,'Presa Canario'),(182,'Pug'),(183,'Puli'),(184,'Pumi'),(185,'Rat Terrier'),(186,'Redbone Coonhound'),(187,'Retriever'),(188,'Rhodesian Ridgeback'),(189,'Rottweiler'),(190,'Saint Bernard'),(191,'Saluki'),(192,'Samoyed'),(193,'Sarplaninac'),(194,'Schipperke'),(195,'Schnauzer'),(196,'Scottish Deerhound'),(197,'Scottish Terrier Scottie'),(198,'Sealyham Terrier'),(199,'Setter'),(200,'Shar Pei'),(201,'Sheep Dog'),(202,'Shepherd'),(203,'Shetland Sheepdog Sheltie'),(204,'Shiba Inu'),(205,'Shih Tzu'),(206,'Siberian Husky'),(207,'Silky Terrier'),(208,'Skye Terrier'),(209,'Sloughi'),(210,'Smooth Fox Terrier'),(211,'South Russian Ovtcharka'),(212,'Spaniel'),(213,'Spitz'),(214,'Staffordshire Bull Terrier'),(215,'Standard Poodle'),(216,'Sussex Spaniel'),(217,'Swedish Vallhund'),(218,'Terrier'),(219,'Thai Ridgeback'),(220,'Tibetan Mastiff'),(221,'Tibetan Spaniel'),(222,'Tibetan Terrier'),(223,'Tosa Inu'),(224,'Toy Fox Terrier'),(225,'Treeing Walker Coonhound'),(226,'Vizsla'),(227,'Weimaraner'),(228,'Welsh Corgi'),(229,'Welsh Springer Spaniel'),(230,'Welsh Terrier'),(231,'West Highland White Terrier Westie'),(232,'Wheaten Terrier'),(233,'Whippet'),(234,'White German Shepherd'),(235,'Wire Fox Terrier'),(236,'Wire-haired Pointing Griffon'),(237,'Wirehaired Terrier'),(238,'Xoloitzcuintle/Mexican Hairless'),(239,'Yellow Labrador Retriever'),(240,'Yorkshire Terrier Yorkie'),(241,'Abyssinian'),(242,'American Curl'),(243,'American Shorthair'),(244,'American Wirehair'),(245,'Applehead Siamese'),(246,'Balinese'),(247,'Bengal'),(248,'Birman'),(249,'Bobtail'),(250,'Bombay'),(251,'British Shorthair'),(252,'Burmese'),(253,'Burmilla'),(254,'Calico'),(255,'Canadian Hairless'),(256,'Chartreux'),(257,'Chausie'),(258,'Chinchilla'),(259,'Cornish Rex'),(260,'Cymric'),(261,'Devon Rex'),(262,'Dilute Calico'),(263,'Dilute Tortoiseshell'),(264,'Domestic Long Hair'),(265,'Domestic Medium Hair'),(266,'Domestic Short Hair'),(267,'Egyptian Mau'),(268,'Exotic Shorthair'),(269,'Extra-Toes Cat (Hemingway Polydactyl)'),(270,'Havana'),(271,'Himalayan'),(272,'Japanese Bobtail'),(273,'Javanese'),(274,'Korat'),(275,'LaPerm'),(276,'Maine Coon'),(277,'Manx'),(278,'Munchkin'),(279,'Nebelung'),(280,'Norwegian Forest Cat'),(281,'Ocicat'),(282,'Oriental Long Hair'),(283,'Oriental Short Hair'),(284,'Oriental Tabby'),(285,'Persian'),(286,'Pixie-Bob'),(287,'Ragamuffin'),(288,'Ragdoll'),(289,'Russian Blue'),(290,'Scottish Fold'),(291,'Selkirk Rex'),(292,'Siamese'),(293,'Siberian'),(294,'Silver'),(295,'Singapura'),(296,'Snowshoe'),(297,'Somali'),(298,'Sphynx (hairless cat)'),(299,'Tabby'),(300,'Tiger'),(301,'Tonkinese'),(302,'Torbie'),(303,'Tortoiseshell'),(304,'Turkish Angora'),(305,'Turkish Van'),(306,'Tuxedo'),(307,'Mixed Breed');
/*!40000 ALTER TABLE `breed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `color` (
  `color_id` int(11) NOT NULL,
  `color_name` varchar(45) NOT NULL,
  PRIMARY KEY (`color_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES (1,'Black'),(2,'Brown'),(3,'Golden'),(4,'Yellow'),(5,'Cream'),(6,'Gray'),(7,'White');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fur`
--

DROP TABLE IF EXISTS `fur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `fur` (
  `fur_id` int(11) NOT NULL,
  `fur_type` varchar(45) NOT NULL,
  PRIMARY KEY (`fur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fur`
--

LOCK TABLES `fur` WRITE;
/*!40000 ALTER TABLE `fur` DISABLE KEYS */;
INSERT INTO `fur` VALUES (0,'Not Specified'),(1,'Short'),(2,'Medium'),(3,'Long');
/*!40000 ALTER TABLE `fur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `gender` (
  `gender_id` int(11) NOT NULL,
  `gender_type` varchar(45) NOT NULL,
  PRIMARY KEY (`gender_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` VALUES (1,'Male'),(2,'Female'),(3,'Mixed');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `health`
--

DROP TABLE IF EXISTS `health`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `health` (
  `health_id` int(11) NOT NULL,
  `health_type` varchar(45) NOT NULL,
  PRIMARY KEY (`health_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `health`
--

LOCK TABLES `health` WRITE;
/*!40000 ALTER TABLE `health` DISABLE KEYS */;
INSERT INTO `health` VALUES (0,'Not Specified'),(1,'Healthy'),(2,'Minor Injury'),(3,'Serious Injury');
/*!40000 ALTER TABLE `health` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maturity`
--

DROP TABLE IF EXISTS `maturity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `maturity` (
  `maturity_id` int(11) NOT NULL,
  `maturity_type` varchar(45) NOT NULL,
  PRIMARY KEY (`maturity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maturity`
--

LOCK TABLES `maturity` WRITE;
/*!40000 ALTER TABLE `maturity` DISABLE KEYS */;
INSERT INTO `maturity` VALUES (0,'Not Specified'),(1,'Small'),(2,'Medium'),(3,'Large'),(4,'Extra Large');
/*!40000 ALTER TABLE `maturity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_info`
--

DROP TABLE IF EXISTS `pet_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pet_info` (
  `pet_id` varchar(50) NOT NULL,
  `pet_type` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `breed` int(11) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `maturity_size` int(11) DEFAULT NULL,
  `fur_length` int(11) DEFAULT NULL,
  `vaccinated` int(11) DEFAULT NULL,
  `sterilized` int(11) DEFAULT NULL,
  `health` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `fee` int(11) DEFAULT NULL,
  `shop` int(11) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`pet_id`),
  KEY `breed_fk_idx` (`breed`),
  KEY `color_fk_idx` (`color`),
  KEY `fur_fk_idx` (`fur_length`),
  KEY `gender_fk_idx` (`gender`),
  KEY `health_fk_idx` (`health`),
  KEY `maturity_fk_idx` (`maturity_size`),
  KEY `pet_type_fk_idx` (`pet_type`),
  KEY `shop_fk_idx` (`shop`),
  KEY `sterilized_fk_idx` (`sterilized`),
  KEY `vaccinated_fk_idx` (`vaccinated`),
  CONSTRAINT `breed_fk` FOREIGN KEY (`breed`) REFERENCES `breed` (`breed_id`),
  CONSTRAINT `color_fk` FOREIGN KEY (`color`) REFERENCES `color` (`color_id`),
  CONSTRAINT `fur_fk` FOREIGN KEY (`fur_length`) REFERENCES `fur` (`fur_id`),
  CONSTRAINT `gender_fk` FOREIGN KEY (`gender`) REFERENCES `gender` (`gender_id`),
  CONSTRAINT `health_fk` FOREIGN KEY (`health`) REFERENCES `health` (`health_id`),
  CONSTRAINT `maturity_fk` FOREIGN KEY (`maturity_size`) REFERENCES `maturity` (`maturity_id`),
  CONSTRAINT `pet_type_fk` FOREIGN KEY (`pet_type`) REFERENCES `pet_type` (`type_id`),
  CONSTRAINT `shop_fk` FOREIGN KEY (`shop`) REFERENCES `shop` (`shop_id`),
  CONSTRAINT `sterilized_fk` FOREIGN KEY (`sterilized`) REFERENCES `sterilized` (`sterilized_id`),
  CONSTRAINT `vaccinated_fk` FOREIGN KEY (`vaccinated`) REFERENCES `vaccinated` (`vaccinated_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_info`
--

LOCK TABLES `pet_info` WRITE;
/*!40000 ALTER TABLE `pet_info` DISABLE KEYS */;
INSERT INTO `pet_info` VALUES ('000a290e4',1,'Cutie Pie',2,307,2,1,2,2,2,2,1,1,0,41327,'went to teluk kumba kuanthai restaurant saw this female puppies alone by the beach.. Adopters must vaccinate, spay and keep puppy indoors/fenced Call/WhatsApp: Address: teluk kumba'),('00ac364a4',2,'Crusty',6,266,2,2,1,1,2,2,2,1,0,41326,'My friend and I have brought her to the vet and she is currently being taken care of a foster. She will be well in about two months\' time and all ready for adoption! Please don\'t hesitate to ask any more questions. For more information:'),('00be0a63e',2,'Nonet',2,265,2,1,1,2,2,2,1,1,0,41326,'I found her 2 days ago inside \'longkang\' during raining. She was cleaned and dewormed. And ready to be adopted. Her fur wmis soft, short tail and very cute..still trauma probably becase she was dumped without her mother but she started o play with toys and active.'),('00e50c7a7',2,'Sam',2,285,1,3,2,3,2,2,1,1,0,41326,'Hi,I am moving to a new home next month, the new place does not allow pets. I currently have 11 cats at home, sadly I have to put some of them up for adoption. Please help me find a loving home for my adorable cats.'),('00eced1f0',2,'Kitten',1,266,3,1,1,1,2,2,1,2,0,41326,'Found this two kitten yestrdy... bath them with thick n flea syampoo and remove 70% of it but still hve some on them...hve to take both together as they are attached to each other'),('00f63c6fc',2,'Kristal',22,266,1,1,2,1,1,1,1,1,1,41326,'Very playful and lovable. Toilet trained. Sleeps in the house.'),('0a0e8c15b',1,'Fenny',5,307,2,1,2,2,1,2,1,1,0,41326,'Fenny was rescued from Old Klang Rd market when she was only 2 months old and I have fostered her since then. She is 5 mths old now and I hope she can get a good home. She looks like a mixed breed of local mongrel and Dalmation. She is a very quiet girl and does not make too much noise, that makes her a very good companion for children or elderly couple. Please call Mrs Lai of Paws Mission for more adoption details.'),('0a140a67e',1,'Jeany',3,307,2,1,2,2,1,2,1,1,0,41326,'Beautiful 3-4 months old female German Sherperd mixed for adoption. Pls. contact Amy for detail - + .'),('0a20eaed8',2,'Latte',6,266,1,3,1,1,2,2,1,1,0,41326,'Latte is one of three kittens that were rescued from an owner who neglects them. They are kept in a small cage daily for several months. They were not fed regularly, especially in the last few days before the owner gave them up to us. Due to the small space, one of them would always end up sleeping on the dirty litter, or topple their water and food bowls - which were not replaced. I We could not bare to watch anymore, so we pestered the owner to give them to us. We felt that it is better for them to be with someone else, or roam around the streets to find their food rather than being kept like prisoners in their cage. They were hungry and smelly when we took them and would purr contentedly as soon as we touch them. We already have 5 cats - all rescued kittens - sharing our small apartment, we hope that you could give Latte a loving home.'),('0a266921d',1,'Daisy & Bobby',7,205,3,2,1,1,1,2,1,2,500,41326,'A pair of Shih Tzu for adoption. Bobby (Male) 6 Month No MKA / Microchip Healthy / Naughty Daisy (Female) 7 Month With MKA & Microchip She\'s Mini Shih Tzu very cute and smarter than Bobby. Adopter needs to take both of them as they grow up together. I\'m unable to take care due to some personal reason. For those who interested adoption fees is negotiable. We will donate the adoption fees to charity.More picture will be given for serious adopter. Now they just get their fur bald. For serious adopter please leave their phone number i\'ll get back to you ASAP. Thank you.'),('0a4203544',1,'Bambi',60,179,2,5,1,2,3,1,1,1,250,41326,'Bambi was dumped with four others at a playground and was picked up by a Malay lady. She is now ready for a forever home.....yes, a FOREVER home, not to be dumped again or given up!'),('0a4fc94e5',2,'Popo2',3,243,2,2,1,1,1,2,1,1,0,41336,'I rescued this cat 3 month ago. She is healthy, dewormed and vaccinated. She is very cute and adorable.'),('0a5be413e',1,'W3',2,307,2,7,2,2,1,2,1,1,0,41326,'FOR ADOPTION'),('0a8bc19f6',2,'Tux',2,266,1,1,1,1,2,2,1,1,50,41326,'Found abandoned at a petrol station along the LDP highway and living on scraps. A beautiful tuxedo with white gloved paw paw...;-) Friendly disposition and will be a great lap cat. I need adopter to sign a paper stating he/she will spay kitty when reaching ideal age.'),('0aa767c04',1,'Sita',24,307,2,2,2,1,1,1,1,1,0,41326,'This is sita, very smart and a good guardian... I hope she gets a responsible owner as she will appreciate u in all ways.'),('0ab4214b4',1,'FairGirl',2,307,2,1,2,1,2,2,1,1,0,41326,'This baby is the last of the 4 adorable puppies rescued. All found their forever home except FairGirl baby. As a normal puppy, she needs playing moment w her human parents and seek attention for hugs and tummy tickles. Only for those staying in landed houses and REAL ANIMAL LOVERS who totally understand that puppies do cry and bark! Or else please get a stuff toy. Sorry... A bit emo there.. Anyways, if interested pls do whatsapp me or call me or msg me. Whichever way, I will b happy to get your INTEREST. :)'),('0ac279a25',1,'Snoopy',7,307,1,2,2,2,2,2,1,1,0,41326,'Introducing Snoopy!!! He\'s a mixed breed Male around 7-8 months old. He\'s cute, affectionate and like to get attention from people. He\'s easy to train as they have been staying with people before. Snoopy is your perfect indoor or outdoor pet. If you interested to give Snoopy a home before this X\'mas, please give Wen Jing a call. Her contact number is, thanks! biggrin.gif'),('0ac71c2c1',2,'Fatty',12,266,1,1,3,1,1,1,1,1,0,41401,'Fatty is Lengcai\'s elder brother and he\'s very loving, friendly and sweet. Fatty was born and breed inside our house and he has never been outside the house before. Fatty only eats cat food strictly and drink cooked water. Kindly adopt Fatty as we\'re currently moving new home and our new home could only accomodate maximum 6 cats. Thanks.'),('0acb3bf7a',2,'Two Kittens',2,265,3,1,2,2,3,2,1,2,0,41326,'3 healthy and active kittens are available for good homes. If interested pls call the number above for Auntie Yap.'),('0af142ee3',1,'14 Weeks Old Stray Pup',3,307,2,1,2,1,2,3,1,2,0,41326,'I have 3 pup, about 14 weeks old. Its all stray pup. They need a sweet home.'),('0af365e26',1,'Dot',3,307,1,2,2,1,3,3,1,1,10,41326,'This puppy is found nearby my hse. Looking for new home for him, I can deliver Dot within Klang Valley. Thanks :)'),('0b0d903f4',2,'Misty',12,303,2,2,2,1,2,1,1,1,0,41326,'For serious adopter only! Condition : Must be kept Indoors always & Adopter must be financially independent (students will not be considered unless able to convince otherwise, will need to talk to the parents) and able to commit for the next years of her life. Character : Cool character, not fussy. Laidback and playful at times. A bit shy & wary of strangers. Will need time to get warmed up to adopted family. Suitable for a quiet home environment without much commotion. Location: Kota Kemuning, Shah Alam, Selangor'),('0b3763054',1,'Puppy 3',1,307,2,7,2,2,1,2,1,1,0,41326,'For Adoption'),('0b4a0d698',2,'Taco And Nacho',1,266,3,1,2,1,2,2,1,2,0,41401,'Two small kittens, abandoned by their mum inside a hardware store near my place of work. Only a few weeks old! They can eat wet food but clearly miss their mother. Taco (ginger) is the more outgoing and adventurous one, while Nacho (black and white) is more needy. They\'re currently living in my bathroom and my dog is helping to take care of them.'),('0b4a33baa',1,'Blackie',6,307,1,1,2,1,2,2,1,1,0,41330,'Blackie is a very gentle and friendly little boy. Found him wondering at the back lane of a row of shoplots. He is very healthy and we have detick him. He is very easy going and we are hoping to find him a loving home. If you think you can give him a good home. Please contact Ms.Sandy at or email:'),('0b6064845',1,'Naomi',84,307,2,1,2,2,1,1,1,1,0,41326,'Gender : Female. Estimated age : Approximately 7 years old. (as of ) Color : Brown. Spayed : Yes. Vaccinated : Yes. Characteristic : Very friendly to all dogs and humans. Tame and cheerful. A great joy to be around with. Adoption fee : Up to the generosity of adopter. Fee will be used for the vet bills of our other rescues. We are looking for people to open their hearts and homes, to adopt her and give her a forever home she can count on. Please help us to SHARE to help us to find her a loving and forever home. Much appreciated.'),('0b74e375f',1,'Bernie Girl',1,307,2,1,2,1,3,3,1,1,0,41326,'Lovely puppy looking for a home sweet home. Commitment to spay is compulsory'),('0b74f813f',2,'Mimi',6,266,2,4,1,1,1,1,1,1,0,41326,'Mimi was abused ..her tail was burned by cruel ugly man and need to amputate. Her toes were also cut off. She was rescued and now she is well and healthy and ready to find a home. She deserves a 2nd chance. She is so well behave..perhaps she had gone through so much in her life. Plz open your heart and take her home. Tq'),('0b807a7dd',2,'Mimi',2,266,2,1,2,1,2,2,1,1,0,41327,'Female kitten for free adoption. She is around 2 1/2 month, Very healthy appetite & eat both kibbles & wet food If you are interested in giving a home to this lovely kitten, kindly contact me at'),('0b817da84',2,'TOMPOK',12,266,1,1,2,1,1,1,1,1,0,41401,'LOOKING FOR A FOREVER HOME FOR HIM'),('0b819602d',2,'JackJack (Black)& Turtle (Tor.shell',2,303,3,1,2,1,2,2,1,2,0,41332,'JackJack black male kitten. Turtle tortoiseshell female kitten Interested please contact me at thanks!'),('0b942f000',2,'BaiLi',48,266,2,1,2,1,1,1,1,1,0,41326,'My cat BaiLi is 4 years old. Recently, I found out my son is allergic to cat\'s dander. Unfortunately, I have to give her away. She is a sensitive soul, loves loads of attention. Cries a lot when she doesn\'t get her food on time.'),('0bc3f09be',1,'Trenny 2007',48,189,2,1,3,2,1,2,1,1,0,41330,'Trenny (MKA registed) was adopted in Jun from Mr. Shankar my old school mate. She bited and damaged the new imported Luxus car (front and rear bumper sensors) on the 1st night. All her bad movement was captured on CCTV ha! ha! ha! My dear friend Shankar have to paid RM+ for the bumpers and Electronic Sensors Board not including Custom TAX have to direct part order from Japan and waited for 3 weeks long to reached Malaysia. Ha! Ha! Ha! WHAT A GOOD LAUGH'),('0bd2d5882',1,'Puppy 4',2,307,1,2,2,2,1,2,1,1,0,41326,'For Adoption'),('0bd394ec8',2,'Fervi & Auri',2,264,1,4,1,2,2,2,1,2,0,41361,'-umur 2bln -poo pee dlm pasir -pndai mkn dryfood/wetfood -male SELF PICKUP ONLY'),('0bd83ba72',1,'Puppy Brownie',2,307,2,2,2,1,2,2,1,1,80,41326,'Mixed Puppy 2 Months+ Dewormed & Healthy Cute & Smart Adoption Fee : RM80'),('0bdd7f7ac',2,'Mama Yen And 2 Kittens',14,265,3,3,1,2,2,2,1,3,0,41326,'Giving away a mommy cat with its 2 kittens. All the kittens are well-behaved, not yet litter-trained. Mommy cat is in perfect condition, also well behaved and is very loving. All of them are healthy. None of them are picky about food so dry cat food would be fine for them. If you are willing to pick up the whole group, you may ask for us to spay/neuter them or not before adopting the cats (no charges). Please contact me via whatsapp for more details about them and to discuss adoption.'),('0be09ae87',2,'Dottie',12,264,1,1,3,3,1,1,1,1,0,41326,'Dottie is Zoey\'s older brother, the eldest from a litter of four. He is a healthy mix breed male cat, he was neutered at the age of 7 months.'),('0beacc42e',2,'Sweet Cat',8,266,1,2,2,1,3,3,1,1,0,41326,'A sweet and loving male stray that comes to our house for food.'),('0bf83cc3e',2,'Sabby',3,266,2,1,1,1,2,2,1,1,0,41326,'Sabby loves to eat, sleep, play and repeat. Oh she enjoys a good belly rub too. Looking for a good home who thinks that having a black cat is good luck. She will bring you lots of smiles trust me!'),('0c0508818',2,'Klin',12,299,1,3,2,1,3,2,1,1,0,41401,'Found it stray at the corner of closing shop. Don\'t have enough to manage him.Quiet flabby. Have been feeding him with Blackwood. n interested, please call me at.'),('0c17e1f32',2,'Oren',14,266,2,2,2,1,3,3,1,1,0,41326,'Hai...i looking for someone who want to adopt her...i found her at my apartment...mommy to be... i put her in my house but always fight with my own cats...i cant keep her because my cats not going well with her...'),('0c1e8a6f2',1,'Rose & Mary',3,307,2,1,3,1,3,3,1,2,0,41326,'Could not keep them in industrial area. Found some foreign worker feed stray cat poison foos and dead. Cousin rescue them.'),('0c281122e',1,'Night Fury & Dannis Manace',16,75,2,1,2,2,1,3,1,2,0,41326,'They both are sisters. Night and Dannis are a mix of dachshund and husky. Very hyperactive. They can also be considered as guard dogs. Very loving and loves to play. Dannis looks more like her mom as dachshund and Night is total mixture of her mom(dachshund) and dad(Husky).'),('0c46298f8',2,'Kitty 11',4,266,2,1,2,1,2,1,1,1,0,41401,'Rescued by Ling. already neutered+dewormed.female-4mths'),('0c47e700c',1,'Toto',36,179,1,5,1,2,1,1,1,1,200,41401,'Creamy white, 3 yo male, small size poodle up for adoption. Spayed and healthy. Serious adopter only. Looking for loving family with older kids. Very active, very smart, very cute. Adoption fees RM. Reason to let go: Personality clash with my the other dog.'),('0c49c9df2',2,'Meow',36,266,2,1,2,3,1,3,1,1,300,41326,'Whatapp me if you interested in meow'),('0c4c55b39',2,'Stormtroopers Of The Caribbean',1,266,3,1,1,2,2,2,1,2,0,41401,'Too many cats in a small room of apartment will cause sanitary issues. Hope there are kind hearted and reaponsible adopters will take good care of these kittens Preferable self collect on Wednesday and Friday 8.30 - 9pm.'),('0c5b71bf0',2,'Mumsie & Kitty',6,254,2,5,2,1,1,1,1,2,50,41326,'Mummy cat and kitten was rescued from the abandoned building. MOthere cats is friendly and kitten is really warm and cuddly They are now boarded in a vet clinic in Klang and needs to go to a good home soon. Anyone cat lovers there please come forward and help to rehome these lovely cats.'),('0c5fe8151',1,'Shadow',60,213,1,3,2,2,1,2,1,1,0,41401,'My dog\'s name is Shadow and he is cream in colour but he has golden highlights, he is also a bit light brown on his back. Shadow knows how to sit and give his paw(only if you have a treat) he is very playfull, and he can sometimes roll-over! but first you have to make him sit, then lie down and then make a roll-over gesture and say roll-over boy! to make him sit say: sit! to make him lie down say: down! and to make him giv his paw say: paw! (but first you have to make him sit!):)Well... if u do adopte Shadow please take very good care of him and show him lots of love!and tender care!'),('0c612e8df',2,'Arwen',12,266,2,7,2,1,1,1,1,1,0,41326,'Arwen is a gentle young mother cat who turned up at my friend\'s doorstep with her 4 kittens one day. We are going to get her vaccinated, dewormed and spayed prior to adoption. ~ Too many animals have no homes. Please spay and neuter. It is the responsible thing to do. ~'),('0c859ef92',2,'Cesar',2,266,1,1,1,1,2,2,1,1,0,41401,'Active, friendly, loves to be carried and cuddled, curious and adventurous.. loves to follow around and make friends'),('0c862b8a3',1,'Juli',15,307,2,1,2,2,1,1,1,1,0,41326,'playful and loyal'),('0cb450c62',2,'Anne',4,242,2,5,2,2,1,2,2,1,350,41326,'Healthy friendly cute likes to play. Food royal canin. Kitten right ear had small surgery remove pulse. Now can adopt. The surgery cost me RM. I would like to give my kitten for cat lovers only. Thank you.'),('0cbe33a44',1,'Bai Bai',15,213,2,7,1,2,1,3,1,1,1,41326,'from Taiwan Japanese spitz, white coat ,includ mka microchip. -- lim'),('0cde886ff',2,'Ginger Kitten',3,266,1,3,2,1,2,2,1,1,0,41326,'Beautiful ginger male kittens. He is playful and energetic. Home stay kitten hence are domesticated and toilet trained (using pine wood litter). He has been de-wormed and are clear from fleas. Too young to be vaccinated. Age: 3 months Current food: IAMS Kittens and Royal Canine Kittens Toilet trained: Yes (using pine wood litter) De-wormed: Yes Vaccinated: No'),('0cde9b460',2,'Gingy',24,265,2,4,2,2,2,2,1,1,0,41326,'Gingy is an adorable mummiest cat. Found her 2 years ago at a playground hiding from other big cats. She was about 3 weeks old at that time.'),('0ce80622f',1,'Minnie',2,307,2,7,2,1,2,2,1,1,20,41327,'The puppy is currently taking shelter at SPCA Seberang Perai. Please contact SPCA Seberang Perai if you are interested to adopt her as your pet. Alternatively, visit for more puppies/dogs for adoption.'),('0ce98d199',2,'Xiao Bai And Baby',10,266,2,7,2,2,1,1,1,2,0,41326,'I am currently renting a room in Petaling Jaya and I have 3 cats. Unfortunately, I have to move back to hometown and my parents already have 3 dogs in the house. Therefore, I have to put my 2 cats for adoption and bring one back to hometown. Both of them are white in color(little bit yellowish). Xiao Bai(9 months) is spayed and Baby(birthday at 21 July ) is not spay yet. Both of them are female, dewormed and vaccinated. wish they can find their home sweet home.'),('0ced977d7',2,'Blackie',6,266,2,1,2,1,2,2,1,1,0,41401,'Very active and likes to play things involving running a lot. Reason to give up is because the housing area it is currently in is full of stray dogs so she is not able to enjoy playing outside much.');
/*!40000 ALTER TABLE `pet_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_type`
--

DROP TABLE IF EXISTS `pet_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pet_type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(45) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_type`
--

LOCK TABLES `pet_type` WRITE;
/*!40000 ALTER TABLE `pet_type` DISABLE KEYS */;
INSERT INTO `pet_type` VALUES (1,'Dog'),(2,'Cat');
/*!40000 ALTER TABLE `pet_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `shop` (
  `shop_id` int(11) NOT NULL,
  `shop_name` varchar(45) NOT NULL,
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES (123,'Ding'),(41324,'Melaka'),(41325,'Kedah'),(41326,'Selangor'),(41327,'Pulau Pinang'),(41330,'Perak'),(41332,'Negeri Sembilan'),(41335,'Pahang'),(41336,'Johor'),(41342,'Sarawak'),(41345,'Sabah'),(41361,'Terengganu'),(41367,'Kelantan'),(41380,'Perlis'),(41401,'Kuala Lumpur'),(41415,'Labuan');
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sterilized`
--

DROP TABLE IF EXISTS `sterilized`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sterilized` (
  `sterilized_id` int(11) NOT NULL,
  `sterilized_type` varchar(45) NOT NULL,
  PRIMARY KEY (`sterilized_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sterilized`
--

LOCK TABLES `sterilized` WRITE;
/*!40000 ALTER TABLE `sterilized` DISABLE KEYS */;
INSERT INTO `sterilized` VALUES (1,'Yes'),(2,'No'),(3,'Not Sure');
/*!40000 ALTER TABLE `sterilized` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vaccinated`
--

DROP TABLE IF EXISTS `vaccinated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vaccinated` (
  `vaccinated_id` int(11) NOT NULL,
  `vaccinated_type` varchar(45) NOT NULL,
  PRIMARY KEY (`vaccinated_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vaccinated`
--

LOCK TABLES `vaccinated` WRITE;
/*!40000 ALTER TABLE `vaccinated` DISABLE KEYS */;
INSERT INTO `vaccinated` VALUES (1,'Yes'),(2,'No'),(3,'Not Sure');
/*!40000 ALTER TABLE `vaccinated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'petshop'
--

--
-- Dumping routines for database 'petshop'
--
/*!50003 DROP PROCEDURE IF EXISTS `create_pet` */;
ALTER DATABASE `petshop` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_pet`(
	pet_id_input varchar(50), 
    pet_type_input int, 
    name_input varchar(50), 
    age_input int, 
    breed_input int, 
    gender_input int, 
    color_input int, 
    maturity_size_input int, 
    fur_length_input int, 
    vaccinated_input int, 
    sterilized_input int, 
    health_input int, 
    quantity_input int, 
    fee_input int, 
    shop_input int, 
    description_input varchar(200))
BEGIN
  INSERT INTO petshop.pet_info (
	pet_id, pet_type, name, age, 
    breed, gender, color, maturity_size, 
    fur_length, vaccinated, sterilized, health, 
    quantity, fee, shop, description)
  VALUES (
	pet_id_input, pet_type_input, name_input, age_input, 
    breed_input, gender_input, color_input, maturity_size_input, 
    fur_length_input, vaccinated_input, sterilized_input, health_input, 
    quantity_input, fee_input, shop_input, description_input);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `petshop` CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `create_shop` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_shop`(
	shop_id_input int, 
    shop_name_input varchar(45)
    )
BEGIN
  INSERT INTO petshop.shop (
	shop_id, shop_name)
  VALUES (
	shop_id_input, shop_name_input);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `search_pet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `search_pet`(pet_id_input varchar(50))
BEGIN
	SELECT 
		t1.pet_id,
		t1.pet_type,
		t1.name,
		t1.age,
		t2.breed_name AS breed,
		t1.gender,
		t1.color,
		t1.maturity_size,
		t1.fur_length,
		t1.vaccinated,
		t1.sterilized,
		t1.health,
		t1.quantity,
		t1.fee,
		t3.shop_name as shop,
		t1.description
	FROM
		petshop.pet_info AS t1
			JOIN
		petshop.breed AS t2 ON t1.breed = t2.breed_id
			JOIN
		petshop.shop AS t3 ON t1.shop = t3.shop_id
	WHERE t1.pet_id = pet_id_input
	ORDER BY t1.pet_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `search_shop` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `search_shop`(shop_id_input varchar(50) )
BEGIN
  SELECT 
    t2.shop_id, t2.shop_name, t1.pet_id, t1.name
FROM
    pet_info AS t1
        JOIN
    shop AS t2 ON t1.shop = t2.shop_id
WHERE t2.shop_id = shop_id_input
ORDER BY shop_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_pet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_pet`(
	pet_id_input varchar(50), 
    pet_type_input int, 
    name_input varchar(50), 
    age_input int, 
    breed_input int, 
    gender_input int, 
    color_input int, 
    maturity_size_input int, 
    fur_length_input int, 
    vaccinated_input int, 
    sterilized_input int, 
    health_input int, 
    quantity_input int, 
    fee_input int, 
    shop_input int, 
    description_input varchar(200))
BEGIN
  SET SQL_SAFE_UPDATES = 0;
UPDATE petshop.pet_info 
SET 
    pet_type = pet_type_input,
    name = name_input,
    age = age_input,
    breed = breed_input,
    gender = gender_input,
    color = color_input,
    maturity_size = maturity_size_input,
    fur_length = fur_length_input,
    vaccinated = vaccinated_input,
    sterilized = sterilized_input,
    health = health_input,
    quantity = quantity_input,
    fee = fee_input,
    shop = shop_input,
    description = description_input
WHERE
    pet_id = pet_id_input;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_shop` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_shop`(
	shop_id_input int, 
    shop_name_input varchar(45))
BEGIN
  SET SQL_SAFE_UPDATES = 0;
UPDATE petshop.shop 
SET 
    shop_name = shop_name_input
WHERE
    shop_id = shop_id_input;
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

-- Dump completed on 2019-04-16 14:47:19
