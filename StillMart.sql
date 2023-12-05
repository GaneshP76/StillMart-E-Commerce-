-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `bid`
--

DROP TABLE IF EXISTS `bid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bid` (
  `bidId` int NOT NULL AUTO_INCREMENT,
  `custId1` int DEFAULT NULL,
  `price` double DEFAULT NULL,
  `bcustId` int DEFAULT NULL,
  `bprice` double DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`bidId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bid`
--

LOCK TABLES `bid` WRITE;
/*!40000 ALTER TABLE `bid` DISABLE KEYS */;
/*!40000 ALTER TABLE `bid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cartId` int NOT NULL AUTO_INCREMENT,
  `quantity` int DEFAULT NULL,
  `custId` int DEFAULT NULL,
  `itemId1` int DEFAULT NULL,
  PRIMARY KEY (`cartId`),
  KEY `FK_cnhutlbsba3c622gs3mtlybx9` (`custId`),
  CONSTRAINT `FK_cnhutlbsba3c622gs3mtlybx9` FOREIGN KEY (`custId`) REFERENCES `customer` (`custId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (11,1,1,1),(12,1,15,3),(13,1,15,3),(14,1,15,3),(15,1,15,3);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `cat_view`
--

DROP TABLE IF EXISTS `cat_view`;
/*!50001 DROP VIEW IF EXISTS `cat_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cat_view` AS SELECT 
 1 AS `subName`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `catId` int NOT NULL AUTO_INCREMENT,
  `catName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`catId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Mobiles'),(2,'Dressing'),(3,'Furniture'),(4,'Books');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `custId` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(30) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `LastName` varchar(30) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phoneNum` varchar(15) DEFAULT NULL,
  `userName` varchar(20) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `doorNum` varchar(20) DEFAULT NULL,
  `profilePath` varchar(50) DEFAULT NULL,
  `state` varchar(40) DEFAULT NULL,
  `street` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`custId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'lahari','female','Devisetti','root','devisettilahari@gmail.com','9182860366','its_lahari','Bhimavaram','7-8-9','PicsArt_08-22-06.55.26.jpg','jsfkjj','jlflkfj'),(2,'lohitha','female','vethsa','root','lohitha@gmail.com','8868736763','lohitha',NULL,NULL,NULL,NULL,NULL),(3,'satya lahari','Female','','','',NULL,'',NULL,NULL,NULL,NULL,NULL),(4,'pallavi sowmya','Female','gundu','root','devisetti@gmail.com','8008587986','its_pallavi',NULL,NULL,'DSC01661.JPG',NULL,NULL),(6,'sri rani','female','gundu','root','rani123@gmail.com',NULL,'its_sri',NULL,NULL,NULL,NULL,NULL),(7,'sai','male','gundu','1sSsai','saichanti@gmail.com','9493309782','its_sai',' ',' ',NULL,' ',' '),(8,'abhi',NULL,'nav','Abhi123','abhi@gmail.com','2333221122','abhi','rjy','3-5-7','w3.jpg','Andhra Pradesh','rokaroad'),(9,'suresh','male','devisetti','Kalyani29!','suresh@gmail.com','8988979879','suresh',' RJy',' jndjknwjk',NULL,' Andhrapradesh',' Veesi'),(10,'ashithreddy','male','alla','Ashy@261199','himajasri.ch@gmail.com','9492807940','ashy',' ',' ',NULL,' ',' '),(12,'kavya','female','challapilla','Kavya@4296','sri_kavya.challapilla@okstate.com','4057232853','kavya',' ',' ',NULL,' ',' '),(13,'Srilasya','female','Chellapilla','Lasya@369','lasya.ch@gmail.com','6301593799','lasyaravi',' ',' ',NULL,' ',' '),(15,'phani','male','ravuri','Phani@123','phani@gmail.com','9037716671','phani',' stillwater','f 21',NULL,' okc',' N duck'),(16,'navya','female','b','Navya@123','navya@gmail.com','7089878234','navya',' ',' ',NULL,' ',' ');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `itemId` int NOT NULL AUTO_INCREMENT,
  `itemName` varchar(40) CHARACTER SET latin1 DEFAULT NULL,
  `image` varchar(40) CHARACTER SET latin1 DEFAULT NULL,
  `ftr1` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `ftr2` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `ftr3` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `ftr4` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `price` float DEFAULT NULL,
  `subId` int DEFAULT NULL,
  PRIMARY KEY (`itemId`),
  KEY `subId` (`subId`),
  CONSTRAINT `item_ibfk_1` FOREIGN KEY (`subId`) REFERENCES `subcategory` (`SubId`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'Samsung Galaxy A30','pics/SA30.jpeg','4GB RAM|64GB ROM|Expandable upto 512GB','16.26 cms(6.4 inch) FHD+Display','16MP+5MP|16MP Front camera','1 year warranty',16990,10),(2,'Samsung Galaxy A50','pics/SA50.jpeg','6GB RAM|64GB ROM|Expandable upto 512GB','16.26 cms(6.4 inch) FHD+Display','16MP+5MP|16MP Front camera','1 year warranty',22990,10),(3,'Samsung Galaxy S10','pics/SS10.jpeg','8GB RAM|128GB ROM|Expandable upto 512GB','15.49 cms(6.1 inch) FHD+Display','16MP+12MP|16MP Front camera','1 year warranty',66900,10),(4,'Samsung Galaxy Note 9','pics/SN9.jpeg','8GB RAM|512GB ROM|Expandable upto 512GB','16.26 cms(6.4 inch) FHD+Display','12MP+12MP|8MP Front camera','1 year warranty',84900,10),(5,'Redmi Note 7','pics/RN7.jpeg','4 GB RAM|64 GB ROM|Expandable upto 256 GB','16.0 cm(6.3 inch) FHD + Display','12 MP + 2 MP|13 MP Front Camera','4000 mAH Li-Polymer battery',11999,11),(6,'Redmi Note 6 Pro','pics/RN6P.jpeg','6 GB RAM|64 GB ROM|Expandable upto 256 GB','15.9 cm(6.26 inch) FHD + Display','12 MP + 5 MP|20 MP+2 MP Dual Front Camera','4000 mAH Li-Polymer battery',15999,11),(7,'Redmi Note 5 Pro','pics/RN5P.jpeg','6 GB RAM|64 GB ROM|Expandable upto 128 GB','15.21 cm(5.99 inch) FHD + Display','12 MP + 5 MP|20 MP Front Camera','4000 mAH Li-Polymer battery',14990,11),(8,'Redmi Y2','pics/RY2.jpeg','4 GB RAM|64 GB ROM|Expandable upto 256 GB','15.21 cm(5.99 inch) FHD + Display','12 MP + 5 MP|16 MP Front Camera','3080 mAH Li-Polymer battery',11999,11),(9,'One Plus 5','pics/OP5.jpeg','8 GB RAM|128 GB ROM|Expandable upto 256 GB','13.97 cm(5.5 inch) FHD + Display','16 MP + 20 MP|16 MP Front Camera','3300 mAH battery',37999,12),(10,'One Plus 5 Black','pics/OP5B.jpeg','8 GB RAM|128 GB ROM|Expandable upto 256 GB','13.97 cm(5.5 inch) FHD + Display','16 MP + 20 MP|20 MP Front Camera','3300 mAH battery',31999,12),(11,'Oppo F11 Pro','pics/OF11P.jpeg','6 GB RAM|64 GB ROM|Expandable upto 256 GB','16.51 cm(6.5 inch) FHD + Display','48 MP + 5 MP|16 MP Front Camera','4000 mAH Li-Polymer battery',24990,13),(12,'Oppo F9 Pro','pics/OF9P.jpeg','6 GB RAM|64 GB ROM|Expandable upto 256 GB','16.0 cm(6.3 inch) FHD + Display','16 MP + 2 MP|25 MP Front Camera','3500 mAH Li-Polymer battery',17990,13),(13,'Oppo A7','pics/OA7.jpeg','4 GB RAM|64 GB ROM|Expandable upto 256 GB','15.75 cm(6.2 inch) FHD + Display','13 MP + 2 MP|16 MP Front Camera','4230 mAH Li-Polymer battery',14990,13),(14,'Oppo Find X','pics/OFX.jpeg','8 GB RAM|256 GB ROM','16.26 cm(6.4 inch) FHD + Display','16 MP + 20 MP|25 MP Front Camera','3730 mAH Li-Polymer battery',58990,13),(15,'Embroiderd Anarkali','pics/E1.jpeg','Available Colours: Green,Black','Available Sizes : L,XL,Free','Material : Silk','Discount : 10%',1133,14),(16,'Printed Anarkali','pics/E2.jpeg','Available Colours: Pink,Blue','Available Sizes : L,XL,Free','Material : Silk','Discount : 10%',999,14),(17,'Printed Cut Kurta','pics/E3.jpeg','Available Colours: Black,Blue','Available Sizes : M,L,XL,Free','Material : Benaras','Discount : 15%',944,14),(18,'Solid Straight Kurta','pics/E4.jpeg','Available Colours: White,Black,Blue,Orange','Available Sizes : M,L,XL,Free','Material : Cotton','Discount : 15%',550,14),(19,'Party Sleeve Top','pics/WE1.jpeg','Available Colours: White,Black,Pink,Yellow','Available Sizes : S,L,XL','Material : Silk','Discount : 20%',398,15),(20,'casual Sleeve Top','pics/WE2.jpeg','Available Colours: ---','Available Sizes :M,S,L,XL','Material : Cotton','Discount : 30%',399,15),(21,'casual Blazer','pics/WE3.jpeg','Available Colours: Black,Blue','Available Sizes :36,38,42','Material : Denim','Discount : 30%',1795,15),(22,'Solid Men Waist Coat','pics/WE4.jpeg','Available Colours: Cement,Red,Black','Available Sizes : 34,36,38,42,44','Material : Denim','Discount : 30%',899,15),(23,'Cotton Short Top','pics/S1.jpg','Elbow Sleeves and chinese collar Kurthi','Length : 30 inches','Pattern ; Embroidered','Work Type : Mirror Work',299,16),(24,'Vasthra Cotton Top','pics/S2.jpg','Cotton flex stitched top or short Kurthi','Length : 30 inches','Style : Casual and Straight','Work Type : Finished With interlock stitches',478,16),(25,'Cotton casual shirt','pics/S3.jpg','100% high grade cotton fabric','High quality fabric and stitching','Full sleeve casual shirt','Slim fit,fabric:100% cotton',699,16),(26,'Cotton T shirt','pics/S4.jpg','Color: Black','Sleeve type : Full Sleeve','Neck color:round','Fit type:Regular Fit',345,16),(27,'Women Sweater','pics/WIN1.jpeg','Sleeve Type:Full Sleeve','Color: Black,White,Green','Discount:15% offer','Size: S, M, L, XL',381,17),(28,'Women Round Pullover','pics/WIN2.jpeg','Fabric: Pure Cotton','Full Sleeve','Western wear','Size: S, M, L, XL',647,17),(29,'Solid men jacket','pics/WIN3.jpeg','Brand: Wild Craft','Colors:Red, Blue','Sleeve: Full Sleeve','Size: S, M, L',2198,17),(30,'Solid men jacket1','pics/WIN4.jpeg','Brand: Rodid','Colors:Black White','Sleeve: Full Sleeve','Size:  M, L',2947,17),(31,'Decorative Candle Stand','pics/HL1.jpeg','Color:Multi Color','Tea light Holder set','Material: Glass','Width X height : 3*3 inch',290,18),(32,'Mosaic Decorated Lamp','pics/HL2.jpeg','Cord length:1.5 feet','Light used: CFL,Incandescent,LED','Material: Glass','1 bulb',470,18),(33,'Candle Light Stand','pics/HL3.jpeg','Decorative show piece','width*height*depth:13cm*17cm*13cm','Type:Personality','weight:0.4gms',399,18),(34,'Wire mesh pendant','pics/HL4.jpeg','1 bulb','Light used:Incandescent','Cord Length:100cm','Material:Iron',999,18),(35,'Extra Large Wall Stickers','pics/HD1.jpeg','Colour : Multicolour','Pack of 1','Width * Height : 155 cm * 115 cm','Theme : Floral and Botanical',89,19),(36,'Sizzlr Window Curtain','pics/HD2.jpeg','Material : Polyster','Ideal Location : Living and Bedroom','Width * Height : 153 cm * 115 cm','Theme : Floral',449,19),(37,'Four Walls Wodden Vase','pics/HD3.jpeg','Material : Wooden','Suitable for table','Width * Height*Depth : 20 inch * 15 inch * 15 inch','Colour : brown',420,19),(38,'Hand Crafted Smoke Buddha Statue','pics/HD4.jpeg','Decorative Item','Type : religious Idol','Width * Height*Depth : 6 cm * 8 cm * 13 cm','Weight : 240 gms',192,19),(39,'Hobby Crafts Rangoli Stencil','pics/FD3.jpeg','Discount 10% offer','Type : Rangoli Stencil','Seller : Indicrafts 137','Number of stencils : 5',342,20),(40,'Lovato Multicolour Tealight Candle','pics/FD1.jpeg','Pack of 50','N/A Fragrance','Burn Time : 3.5 hrs','Shape ; Round, Colour : Multicolour',159,20),(41,'Bandekar Generic Christmas Tree','pics/FD2.jpeg','Pack of 50','Colour : Green','Sales Package : 50 Hanging ornaments','Suitable For : Indoor',1078,20),(42,'SPHINX Artificial MariGold Garland','pics/FD4.jpeg','Length : 5ft','Colour : Red','Hand Made','Made Of : Recycled Plastic',599,20),(43,'Skora RoundShape PetBed','pics/PS1.jpeg','Bed Type : Enclosed','Washable','Pet Type ; Dog, Cat, Ferret, Rabbit, Monkey','Material : High Quality Fleece Fabric',999,21),(44,'Dog kennel','pics/PS2.jpeg','Type : House','Brand : Aquapetzworld','Pet Type : Dog','Package of 1',6999,21),(45,'Aquarium','pics/PS3.jpeg','Material ; Acrylic','Brand : SRI','Tank Capacity : 5L','Hood Material : Plastic',1789,21),(46,'Cage For Birds','pics/PS4.jpg','Type : House','Suitable For : Indoor and Outdoor','Weight : 1kg','Lockable : Yes',2489,21),(47,'Marvell SuperHero','pics/C1.jpeg','Author : Scholastic','Language ; English','Edition : 2017','Binding : Hard Cover',700,22),(48,'Marvell Ironman Comics','pics/C2.jpeg','Writer : Mike Fredrich','Language ; English','Published By : Marvell Comics','Debuted in 1968',500,22),(49,'Amazing Spiderman','pics/C3.jpeg','Binding : Hard cover','Language ; English','Publisher : Random House USA','Pages : 24',350,22),(50,'The Ingredible Hulk','pics/C4.jpeg','Theme : Movies','Language ; English','Orientation ; Portrait','Pages : 100',200,22),(51,'Life Is What You Make It','pics/F1.jpeg','Binding : Paper Black','Language ; English','Publisher : Shrishti','Author : Preethi Shenoy',100,23),(52,'Game Of Thrones','pics/F2.jpeg','Binding : Paper Black','Language ; English','Publisher : Harper','Author : George R.R Martin',336,23),(53,'Something I Never Told You','pics/F3.jpeg','Binding : Paper Black','Language : English','Publisher : Penguin Random House','Author : Shravya Bhinder',150,23),(54,'The Hobbit','pics/F4.jpeg','Binding : Paper Black','Language : English','Publisher : Harper','Author : Tolkien',220,23),(55,'Matilda','pics/K1.jpeg','Binding : Paper Black','Language : English','Publisher : Penguin Books Limited','Author : Roald Dahl',220,24),(56,'The BFG','pics/K2.jpeg','Binding : Paper Black','Genre : Juvenire Fiction','Publisher : Penguin Books Limited','Author : Roald Dahl',220,24),(57,'Welcome To Dead House','pics/K3.jpeg','Binding : Paper Black','Genre : Juvenire Fiction','Publisher : Scholastic US','Pages : 123',150,24),(58,'Diary Of A Wimpy Kid','pics/K4.jpeg','Binding : Paper Black','Genre : Juvenire Fiction','Publisher : Penguin','Pages : 150',230,24),(59,'The $100 StartUp','pics/B1.jpeg','Binding : Paper Black','Genre : Business and Economics','Publisher : Pan Macmillan','Refurbished',310,25),(60,'The Intelligent Investor','pics/B2.jpeg','Binding : Paper Black','Genre : Business and Economics','Publisher : HarperCollians','Refurbished',400,25),(61,'Kautilyas Arthashastra','pics/B3.jpeg','Binding : Paper Black','Genre : Business and Economics','Publisher : Jaico','Edition : 2009(First Edition)',228,25),(62,'Icon Steve Jobs','pics/B4.jpeg','Binding : Paper Black','Genre : Business and Economics','Publisher : Wiley','Edition :01, 2006',275,25),(63,'Goldthreaded Crop Top','pics/BL1.PNG','Color : Blue','Size : M,L','Type : Traditional wear','Material : High quality fabric',900,14),(64,'Goldthreaded Crop Top','pics/BL2.PNG','Color : Gold And Silver','Size : M,L,XL','Type : Traditional wear','Material : High quality fabric',900,14),(65,'White Cotton top','pics/BL3.PNG','Color : White','Size : S,M,L','Type : Summer wear','Material : Cotton',650,16),(66,'Work Blouse','pics/CT1.PNG','Color : Gold','Size : M','Type : Ethnic wear','Material : Silk',750,14),(67,'Top With OverCoat','pics/CT2.PNG','Color : Black and Yellow','Size : L,M','Type : Summer wear','Material : Cotton',400,16),(68,'Top With OverCoat','pics/CT3.PNG','Color : Red and White','Size : L,M','Type : Ethnic wear','Material : Cotton',450,14),(69,'Cotton Top','pics/CT4.PNG','Color : Blue','Size : L,M','Type : Ethnic wear','Material : Cotton',450,14),(70,'Umbrella Ghagra','pics/G1.PNG','Color : Pink','Size : L,M','Type : Ethnic wear','Material : net',1200,14),(71,'Straight Cut Ghagra','pics/G2.PNG','Color : Black','Size : L,M','Type : Ethnic wear','Material : net',1100,14),(72,'Cotton Patiyala','pics/PT1.PNG','Color : Pale Brown','Size : L,M','Type : Summer wear','Material : Cotton',400,16),(73,'Cotton Patiyala','pics/PT2.PNG','Color : Cyan','Size : L,M','Type : Summer wear','Material : Cotton',400,16),(74,'Printed Long Skirt','pics/SK1.PNG','Color : Brown and White','Size : L,M','Type : Summer wear','Material : Cotton',700,16),(75,'Printed Long Skirt','pics/SK2.PNG','Color : Blue and Gold','Size : L,M','Type : Traditional wear','Material : Silk',1100,14),(76,'Printed Long Skirt','pics/SK3.PNG','Color : Pink and Silver','Size : L,M','Type : Traditional wear','Material : Silk',1100,14),(77,'Printed Pallazo','pics/PA1.PNG','Color : Blue','Size : L,M','Type : Western wear','Material : cotton',700,15),(78,'Plain Pallazo','pics/PA2.PNG','Color : Pink','Size : L,M','Type : Western wear','Material : cotton',700,15),(79,'Pallazo','pics/PA3.PNG','Color : Purple','Size : L,M','Type : Western wear','Material : cotton',700,15),(80,'Western T-Shirt','pics/T1.PNG','Color : Pink','Size : L,M','Type : Western wear','Material : cotton',700,15),(81,'Western T-Shirt','pics/T2.PNG','Color : Black','Size : L,M','Type : Western wear','Material : cotton',700,15),(82,'Western Top','pics/T3.PNG','Color : Maroon','Size : L,M','Type : Western wear','Material : cotton',600,15),(83,'Western Top','pics/TA1.PNG','Color : Cream','Size : L,M','Type : Western wear','Material : cotton',600,15),(84,'Western Top','pics/TA2.PNG','Color : White','Size : L,M','Type : Western wear','Material : cotton',600,15),(85,'Western T-shirt','pics/TA3.PNG','Color : Pink','Size : L,M','Type : Western wear','Material : cotton',600,15),(86,'Black Jean','pics/Z1.PNG','Color : Black','Size : L,M','Type : Western wear','Material:Jean',1000,15),(87,'white Jean','pics/Z2.PNG','Color : White','Size : L,M','Type : Western wear','Material:Jean',1000,15),(88,'Blue Jean','pics/Z3.PNG','Color : Blue','Size : L,M','Type : Western wear','Material : Jean',1000,15),(89,'iphone','pics/i14.jpeg','8gb ram|128 gb rom|expandable upto 256gb','12.03','16mp','3 year',50,10);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_insert_price` BEFORE INSERT ON `item` FOR EACH ROW BEGIN
IF NEW.price < 100 THEN
SET NEW.price = 100;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `item_BEFORE_INSERT` BEFORE INSERT ON `item` FOR EACH ROW BEGIN
IF NEW.price < 100 THEN
SET NEW.price = 100;
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `orderitem`
--

DROP TABLE IF EXISTS `orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderitem` (
  `orderItemId` int NOT NULL AUTO_INCREMENT,
  `itemId1` int DEFAULT NULL,
  `orderId1` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`orderItemId`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitem`
--

LOCK TABLES `orderitem` WRITE;
/*!40000 ALTER TABLE `orderitem` DISABLE KEYS */;
INSERT INTO `orderitem` VALUES (1,3,1,1),(2,2,2,3),(3,1,2,3),(4,2,2,3),(5,1,3,1),(6,3,3,1),(7,2,7,1),(8,1,7,1),(9,1,7,1),(10,1,7,1),(11,1,11,1),(12,1,11,1),(13,2,11,1),(14,1,12,1),(15,1,13,1),(16,1,14,1),(17,3,15,1),(18,1,16,1),(19,1,17,1),(20,2,17,1),(21,2,21,1),(22,1,21,3),(23,60,22,1),(24,60,22,1),(25,21,23,1),(26,52,23,1),(27,52,24,1),(28,82,25,1),(29,82,26,1),(30,1,27,1),(31,82,27,1),(32,87,28,1),(33,69,28,1);
/*!40000 ALTER TABLE `orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderId` int NOT NULL AUTO_INCREMENT,
  `custId1` int DEFAULT NULL,
  `date1` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (7,1,'5/5/2019'),(8,1,'01/01/70'),(9,1,'5/5/2019'),(10,1,'5/5/2019'),(11,1,'5/5/2019'),(12,2,'01/01/70'),(13,1,'01/01/1970'),(14,1,'5/5/2019'),(15,1,'06/05/2019'),(16,1,'06/05/2019'),(17,4,'07/05/2019'),(18,1,'07/05/2019'),(19,1,'07/05/2019'),(20,1,'07/05/2019'),(21,1,'5/5/2019'),(22,1,'16/06/19'),(23,8,'11/09/20'),(24,8,'11/09/20'),(25,8,'24/09/20'),(26,8,'26/09/20'),(27,9,'11/09/21'),(28,1,'16/12/21'),(29,1,'05/01/22'),(30,10,'28/11/22'),(31,15,'28/11/22'),(32,15,'28/11/22'),(33,15,'28/11/22');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcategory` (
  `subId` int NOT NULL AUTO_INCREMENT,
  `subName` varchar(20) DEFAULT NULL,
  `catId` int DEFAULT NULL,
  PRIMARY KEY (`subId`),
  KEY `catId` (`catId`),
  CONSTRAINT `subcategory_ibfk_1` FOREIGN KEY (`catId`) REFERENCES `category` (`catId`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategory`
--

LOCK TABLES `subcategory` WRITE;
/*!40000 ALTER TABLE `subcategory` DISABLE KEYS */;
INSERT INTO `subcategory` VALUES (10,'Samsung',1),(11,'Redmi',1),(12,'Oneplus',1),(13,'Oppo',1),(14,'Ethnic',2),(15,'Western',2),(16,'Summer',2),(17,'Winter',2),(18,'HomeLight',3),(19,'HomeDecor',3),(20,'FestiveDecor',3),(21,'PetSupplies',3),(22,'Comics',4),(23,'Fiction',4),(24,'Kids',4),(25,'Business',4);
/*!40000 ALTER TABLE `subcategory` ENABLE KEYS */;
UNLOCK TABLES;

/* This is to delete the item from the cart once it is ordered*/
CREATE TRIGGER CartTrig 
AFTER INSERT ON orders REFERENCING NEW ROW AS NewTuple  
FOR EACH ROW WHEN (NewTuple.custId1 in (select custId from cart)) 
DELETE * FROM cart where custId=NewTuple.custId1;

/* This query will group the item based on sub category*/
SELECT ALL FROM ITEM WHERE 
SUBID IN (SELECT SUBID FROM SUB_CATEGORY INNER JOIN CATEGORY ON SUB_CATEGORY.CATID = CATEGORY.CATID WHERE SUBNAME = NAME) GROUP BY SUBID;

/* store procedure*/
create procedure filter_by_CatId(IN categoryId VARCHAR(20))
BEGIN
select * from subcategory where catId = categoryId;
END &&
--

/*a view for order table*/
create view order_view as select * from orders;

-- Final view structure for view `cat_view`
--

/*!50001 DROP VIEW IF EXISTS `cat_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cat_view` AS select distinct `s`.`subName` AS `subName` from (`subcategory` `s` join `category` `c` on((`c`.`catId` = `s`.`catId`))) */;
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


