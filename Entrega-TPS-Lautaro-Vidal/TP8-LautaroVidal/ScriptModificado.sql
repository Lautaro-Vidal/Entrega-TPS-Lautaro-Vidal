CREATE DATABASE  IF NOT EXISTS `ajedrez` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ajedrez`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: ajedrez
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `color` (
  `idColor` int NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idColor`),
  UNIQUE KEY `idColor_UNIQUE` (`idColor`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES (1,'Blanco'),(2,'Negro');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pieza`
--

DROP TABLE IF EXISTS `pieza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pieza` (
  `idPieza` int unsigned NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(45) DEFAULT NULL,
  `idColor` int NOT NULL,
  `idTipoPieza` int NOT NULL,
  `Posicion` varchar(45) DEFAULT NULL,
  `Comportamiento` varchar(45) DEFAULT NULL,
  `Movimiento` varchar(45) DEFAULT NULL,
  `Fecha_Creacion` date DEFAULT NULL,
  PRIMARY KEY (`idPieza`,`idColor`,`idTipoPieza`),
  KEY `fk_Pieza_Color_idx` (`idColor`),
  KEY `fk_Pieza_TipoPieza1_idx` (`idTipoPieza`),
  CONSTRAINT `fk_Pieza_Color` FOREIGN KEY (`idColor`) REFERENCES `color` (`idColor`),
  CONSTRAINT `fk_Pieza_TipoPieza1` FOREIGN KEY (`idTipoPieza`) REFERENCES `tipopieza` (`idTipoPieza`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pieza`
--

LOCK TABLES `pieza` WRITE;
/*!40000 ALTER TABLE `pieza` DISABLE KEYS */;
-- Insertar las 32 piezas del ajedrez
INSERT INTO `pieza` VALUES (1, 'Rey Blanco', 1, 1, 'E1', NULL, NULL, NULL),
(2, 'Reina Blanca', 1, 1, 'D1', NULL, NULL, NULL),
(3, 'Alfil Blanco', 1, 2, 'C1', NULL, NULL, NULL),
(4, 'Alfil Blanco', 1, 2, 'F1', NULL, NULL, NULL),
(5, 'Caballo Blanco', 1, 3, 'B1', NULL, NULL, NULL),
(6, 'Caballo Blanco', 1, 3, 'G1', NULL, NULL, NULL),
(7, 'Torre Blanca', 1, 4, 'A1', NULL, NULL, NULL),
(8, 'Torre Blanca', 1, 4, 'H1', NULL, NULL, NULL),
(9, 'Peon Blanco', 1, 5, 'A2', NULL, NULL, NULL),
(10, 'Peon Blanco', 1, 5, 'B2', NULL, NULL, NULL),
(11, 'Peon Blanco', 1, 5, 'C2', NULL, NULL, NULL),
(12, 'Peon Blanco', 1, 5, 'D2', NULL, NULL, NULL),
(13, 'Peon Blanco', 1, 5, 'E2', NULL, NULL, NULL),
(14, 'Peon Blanco', 1, 5, 'F2', NULL, NULL, NULL),
(15, 'Peon Blanco', 1, 5, 'G2', NULL, NULL, NULL),
(16, 'Peon Blanco', 1, 5, 'H2', NULL, NULL, NULL),
(17, 'Rey Negro', 2, 1, 'E8', NULL, NULL, NULL),
(18, 'Reina Negra', 2, 1, 'D8', NULL, NULL, NULL),
(19, 'Alfil Negro', 2, 2, 'C8', NULL, NULL, NULL),
(20, 'Alfil Negro', 2, 2, 'F8', NULL, NULL, NULL),
(21, 'Caballo Negro', 2, 3, 'B8', NULL, NULL, NULL),
(22, 'Caballo Negro', 2, 3, 'G8', NULL, NULL, NULL),
(23, 'Torre Negra', 2, 4, 'A8', NULL, NULL, NULL),
(24, 'Torre Negra', 2, 4, 'H8', NULL, NULL, NULL),
(25, 'Peon Negro', 2, 5, 'A7', NULL, NULL, NULL),
(26, 'Peon Negro', 2, 5, 'B7', NULL, NULL, NULL),
(27, 'Peon Negro', 2, 5, 'C7', NULL, NULL, NULL),
(28, 'Peon Negro', 2, 5, 'D7', NULL, NULL, NULL),
(29, 'Peon Negro', 2, 5, 'E7', NULL, NULL, NULL),
(30, 'Peon Negro', 2, 5, 'F7', NULL, NULL, NULL),
(31, 'Peon Negro', 2, 5, 'G7', NULL, NULL, NULL),
(32, 'Peon Negro', 2, 5, 'H7', NULL, NULL, NULL);

/*!40000 ALTER TABLE `pieza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipopieza`
--

DROP TABLE IF EXISTS `tipopieza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipopieza` (
  `idTipoPieza` int NOT NULL AUTO_INCREMENT,
  `Descripciondepieza` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTipoPieza`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipopieza`
--

LOCK TABLES `tipopieza` WRITE;
/*!40000 ALTER TABLE `tipopieza` DISABLE KEYS */;
INSERT INTO `tipopieza` VALUES (1,'Reina'),(2,'Rey'),(3,'Torre'),(4,'Alfil'),(5,'Caballo'),(6,'Peon');
/*!40000 ALTER TABLE `tipopieza` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-25 18:21:16
