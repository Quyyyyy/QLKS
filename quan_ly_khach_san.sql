-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: quan_ly_khach_san
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `datphong`
--

DROP TABLE IF EXISTS `datphong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datphong` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_kh` int DEFAULT NULL,
  `Ngaydat` date DEFAULT NULL,
  `Ngaytra` date DEFAULT NULL,
  `Songuoio` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_kh` (`id_kh`),
  CONSTRAINT `datphong_ibfk_1` FOREIGN KEY (`id_kh`) REFERENCES `khachhang` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datphong`
--

LOCK TABLES `datphong` WRITE;
/*!40000 ALTER TABLE `datphong` DISABLE KEYS */;
INSERT INTO `datphong` VALUES (1,1,'2023-05-10','2023-05-12',1,0),(4,3,'2023-05-30','2023-06-01',5,0);
/*!40000 ALTER TABLE `datphong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dichvu`
--

DROP TABLE IF EXISTS `dichvu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dichvu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten` varchar(50) DEFAULT NULL,
  `gia` int DEFAULT NULL,
  `deleted` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dichvu`
--

LOCK TABLES `dichvu` WRITE;
/*!40000 ALTER TABLE `dichvu` DISABLE KEYS */;
INSERT INTO `dichvu` VALUES (1,'giặt là',50000,0);
/*!40000 ALTER TABLE `dichvu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtphong_ct`
--

DROP TABLE IF EXISTS `dtphong_ct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtphong_ct` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_dp` int DEFAULT NULL,
  `id_p` int DEFAULT NULL,
  `songayo` int DEFAULT NULL,
  `dongia` int DEFAULT NULL,
  `thanhtien` int DEFAULT NULL,
  `ngay` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_p` (`id_p`),
  KEY `id_dp` (`id_dp`),
  CONSTRAINT `dtphong_ct_ibfk_1` FOREIGN KEY (`id_p`) REFERENCES `phong` (`id`),
  CONSTRAINT `dtphong_ct_ibfk_2` FOREIGN KEY (`id_dp`) REFERENCES `datphong` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtphong_ct`
--

LOCK TABLES `dtphong_ct` WRITE;
/*!40000 ALTER TABLE `dtphong_ct` DISABLE KEYS */;
INSERT INTO `dtphong_ct` VALUES (1,1,1,2,500000,1000000,'2023-05-10');
/*!40000 ALTER TABLE `dtphong_ct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtphong_dv`
--

DROP TABLE IF EXISTS `dtphong_dv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtphong_dv` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_dp` int DEFAULT NULL,
  `id_p` int DEFAULT NULL,
  `id_dv` int DEFAULT NULL,
  `soluong` int DEFAULT NULL,
  `dongia` int DEFAULT NULL,
  `thanhtien` int DEFAULT NULL,
  `ngay` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_p` (`id_p`),
  KEY `id_dp` (`id_dp`),
  KEY `id_dv` (`id_dv`),
  CONSTRAINT `dtphong_dv_ibfk_1` FOREIGN KEY (`id_p`) REFERENCES `phong` (`id`),
  CONSTRAINT `dtphong_dv_ibfk_2` FOREIGN KEY (`id_dp`) REFERENCES `datphong` (`id`),
  CONSTRAINT `dtphong_dv_ibfk_3` FOREIGN KEY (`id_dv`) REFERENCES `dichvu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtphong_dv`
--

LOCK TABLES `dtphong_dv` WRITE;
/*!40000 ALTER TABLE `dtphong_dv` DISABLE KEYS */;
/*!40000 ALTER TABLE `dtphong_dv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khachhang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hoten` varchar(50) DEFAULT NULL,
  `sdt` varchar(50) DEFAULT NULL,
  `diachi` varchar(50) DEFAULT NULL,
  `cccd` varchar(50) DEFAULT NULL,
  `deleted` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachhang`
--

LOCK TABLES `khachhang` WRITE;
/*!40000 ALTER TABLE `khachhang` DISABLE KEYS */;
INSERT INTO `khachhang` VALUES (1,'Bùi Anh Hào','0936645036','Cầu Giấy','030201007930',0),(2,'Đỗ Đại Minh','0915355651','Hà Nội','030201007538',0),(3,'Nguyễn Đình Quân','0354076176','Hà Đông','030201007642',0),(4,'Nguyễn Kiều Oanh','012345678','Thanh Xuân','030201007531',0);
/*!40000 ALTER TABLE `khachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaiphong`
--

DROP TABLE IF EXISTS `loaiphong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loaiphong` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tenloai` varchar(30) DEFAULT NULL,
  `dongia` varchar(30) DEFAULT NULL,
  `songuoi` int DEFAULT NULL,
  `sogiuong` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaiphong`
--

LOCK TABLES `loaiphong` WRITE;
/*!40000 ALTER TABLE `loaiphong` DISABLE KEYS */;
INSERT INTO `loaiphong` VALUES (1,'thường','500000',2,2),(2,'vip','900000',4,2);
/*!40000 ALTER TABLE `loaiphong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phong`
--

DROP TABLE IF EXISTS `phong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phong` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_l` int DEFAULT NULL,
  `tenphong` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `deleted` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_l` (`id_l`),
  CONSTRAINT `phong_ibfk_1` FOREIGN KEY (`id_l`) REFERENCES `loaiphong` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phong`
--

LOCK TABLES `phong` WRITE;
/*!40000 ALTER TABLE `phong` DISABLE KEYS */;
INSERT INTO `phong` VALUES (1,1,'P201','action',0),(2,1,'P202','no action',0),(3,1,'P203','no action',0),(4,1,'P204','no action',0),(5,1,'P205','no action',0),(6,1,'P206','no action',0),(7,1,'P207','no action',0),(8,1,'P301','no action',0),(9,1,'P302','no action',0),(10,2,'P303','no action',0);
/*!40000 ALTER TABLE `phong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hoten` varchar(50) DEFAULT NULL,
  `giotinh` varchar(10) DEFAULT NULL,
  `diachi` varchar(50) DEFAULT NULL,
  `sdt` varchar(50) DEFAULT NULL,
  `chucvu` varchar(50) DEFAULT NULL,
  `cccd` varchar(20) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Đào Trọng Phúc','Nam','Hà Đông','0963991723','quản lý','0300201007543','phucdt','123456');
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

-- Dump completed on 2023-05-10 12:34:52
