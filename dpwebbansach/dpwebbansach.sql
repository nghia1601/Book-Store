CREATE DATABASE  IF NOT EXISTS `products-db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `products-db`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: products-db
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `isAdmin` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'nghia','123',1),(2,'minh','123',0),(3,'dunz','123',0),(4,'giang','123',0),(5,'truong','123',0),(8,'nghia1','123',0),(9,'nghia2','123',0),(10,'giang66','456',1),(16,'phuc','66',1),(18,'nghia3','123',0),(23,'nghia2805','123456',1),(26,'dungnon','123',0),(27,'mok','123',0),(28,'hgiangbichodjt','123',0),(29,'hgiang111','123',0),(30,'nghia01','123',0),(31,'nghia032','123',0);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `idSach` varchar(25) NOT NULL,
  `idLoai` varchar(50) NOT NULL,
  `tenSach` varchar(100) NOT NULL,
  `giaSach` double NOT NULL,
  `moTa` varchar(500) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`idSach`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES ('SC01','SC','300 Bài Code TNH',100,'Sac hoc code cac loai','images/codethieunhi.png'),('SC02','SC','Code Css',200,'Sach hoc css','images/codecss.png'),('SC03','SC','Code Java',100,'Sách dùng để học code Java','images/javacode.png'),('SC04','SC','Code Python',100,'Sách dùng để học code python','images/codepython.png'),('TL01','TL','Đắc Nhân Tâm',100,'Sach tam ly','images/dacnhantamnho.png'),('TL02','TL','Tư Duy Nhanh Và Chậm',100,'\"Tư duy nhanh chậm\" là một khái niệm được phát triển bởi Daniel Kahneman, một nhà tâm lý học người Mỹ và người đoạt giải Nobel Kinh tế. Daniel Kahneman đã nghiên cứu và phát triển ý tưởng về tư duy nhanh và tư duy chậm trong sách của ông có tiêu đề \"Thinking, Fast and Slow\" (Tư duy, Nhanh và Chậm)','images/tuduy.png'),('TL03','TL','Tâm Lý Học',100,'\"Tâm lý học\" là cuốn sách của Richard Wiseman, một tác giả và nhà tâm lý học nổi tiếng. Cuốn sách này giới thiệu đến độc giả các khía cạnh cơ bản của tâm lý học một cách dễ hiểu và thú vị. Wiseman trình bày các thí nghiệm và nghiên cứu thú vị trong lĩnh vực tâm lý học, giúp độc giả hiểu rõ hơn về tư duy con người, quyết định, và cách thức làm việc với tâm trí. Cuốn sách này được viết theo cách hấp dẫn và tiếp cận cho người đọc không chuyên về tâm lý học.','images/tamlyhoc.png'),('TL04','TL','Bức Xúc Không Làm Ta Vô Can',100,'\"Bức Xúc Không Làm Ta Vô Can\" là cuốn sách tâm lý của Carol Tavris và Elliot Aronson, nói về cách chúng ta hiểu và quản lý cảm xúc của sự tức giận và bức xúc trong cuộc sống và mối quan hệ.','images/bucxuc.png'),('TT01','TT','Cuộc đời kỳ lạ của Nikola Tesla',100,'Sach tu truyen','images/tesla.png'),('TT02','TT','Wild',100,'\"Wild\" là cuốn hồi ký của Cheryl Strayed về cuộc hành trình qua Pacific Crest Trail.','images/wild.png'),('TT03','TT','12 Năm Nô Lệ',100,'\"12 Năm Nô Lệ\": 12 năm nô lệ - câu chuyện có thật về Solomon Northup, một công dân tự do của New York, bị bắt cóc làm nô lệ tại thành phố Washington năm 1841, và được giải cứu từ một đồn điền trồng bông ở tiểu bang Louisiana năm 1853. Chuyện do chính Solomon thuật lại, với sự chắp bút của David Wilson.','images/12namnole.png'),('TT04','TT','Nhật Ký CHEGUEVARA',100,'\"Nhật ký CHE GUEVARA\" là tập hồi ký của lãnh đạo cách mạng nổi tiếng Ernesto \"Che\" Guevara, chứa những trải nghiệm và tư duy của ông trong cuộc đấu tranh cho cách mạng và quyền của người dân nghèo.','images/nhatky.png'),('TTH01','TTH','Bố Già ',100,'Sach tieu thuyet','images/bogia.png'),('TTH02','TTH','Những Con Người Khốn khổ',100,'Sách kể về cuộc đời của những con người khốn khổ','images/nhungnguoikhonkho.png'),('TTH03','TTH','Thép Đã Tôi Thế Đấy',100,'Là cuốn tiểu thuyết hiện thực xã hội chủ nghĩa của nhà văn Liên Xô Nicolai Ostrovsky','images/thep.png'),('TTH04','TTH','Trăm Năm Cô Đơn',100,'“Trăm năm cô đơn” miêu tả về một huyền thoại của gia tộc bảy đời nhà Buendía và trăm năm thịnh suy của Macondo, một thị trấn nhỏ bên bờ biển Caribe, phản ánh lịch sử thay đổi khôn lường của châu Mỹ Latin, được coi là một kiệt tác của văn học Mỹ Latin.','images/tramnamcodon.png');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donhang`
--

DROP TABLE IF EXISTS `donhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donhang` (
  `idDH` varchar(25) NOT NULL,
  `id` int NOT NULL,
  `idLoai` varchar(50) NOT NULL,
  `idSach` varchar(25) NOT NULL,
  `tenSach` varchar(100) NOT NULL,
  `loaiSach` varchar(45) NOT NULL,
  `giaSach` float NOT NULL,
  `tenKH` varchar(45) NOT NULL,
  `diaChiKH` varchar(100) NOT NULL,
  `sdt` int NOT NULL,
  `tong` float NOT NULL,
  `soLuong` int NOT NULL,
  PRIMARY KEY (`idDH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donhang`
--

LOCK TABLES `donhang` WRITE;
/*!40000 ALTER TABLE `donhang` DISABLE KEYS */;
INSERT INTO `donhang` VALUES ('01',3,'SC','SC01','CodeJava','sachcode',100,'Dunz','tranduyhung',69696969,100,1);
/*!40000 ALTER TABLE `donhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaisach`
--

DROP TABLE IF EXISTS `loaisach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loaisach` (
  `idLoai` varchar(50) NOT NULL,
  `tenLoai` varchar(100) NOT NULL,
  PRIMARY KEY (`idLoai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaisach`
--

LOCK TABLES `loaisach` WRITE;
/*!40000 ALTER TABLE `loaisach` DISABLE KEYS */;
INSERT INTO `loaisach` VALUES ('SC','Sách Code'),('TL','Tâm Lý'),('TT','Tự Truyện'),('TTH','Tiểu Thuyết');
/*!40000 ALTER TABLE `loaisach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `code` int NOT NULL,
  `name` varchar(55) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'codejava',200),(2,'codecss',100),(3,'codepython',100),(4,'codehtml',150),(123,'123',123);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-28  8:19:41
