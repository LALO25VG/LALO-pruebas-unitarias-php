/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.8.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: papeleria3a
-- ------------------------------------------------------
-- Server version	11.8.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargo` (
  `claveCargo` int(11) NOT NULL AUTO_INCREMENT,
  `cargo` varchar(20) DEFAULT NULL,
  `salario` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`claveCargo`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `cargo` VALUES
(41,'Gerente',15000.00),
(42,'Cajero',8000.00),
(43,'Auxiliar',7000.00),
(44,'Almacenista',7500.00),
(45,'Vendedor',9000.00),
(46,'Supervisor',10000.00),
(47,'Recepcionista',8500.00),
(48,'Diseñador',12000.00),
(49,'Contador',14000.00),
(50,'Marketing',11000.00),
(51,'Logística',9500.00),
-- Este archivo fue reemplazado/neutralizado porque el proyecto usa
-- `dump-papeleria3a-Script.sql` (contiene CREATE DATABASE y USE).
-- Para recrear la base de datos completa, usar:
-- src\database\dump-papeleria3a-Script.sql
set autocommit=0;
/*!40000 ALTER TABLE `usuario2` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta` (
  `idVenta` int(11) NOT NULL AUTO_INCREMENT,
  `total` decimal(10,2) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `idCliente` int(11) DEFAULT NULL,
  `RFC` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`idVenta`),
  KEY `fkCliente` (`idCliente`),
  KEY `fkEmpleado` (`RFC`),
  CONSTRAINT `fkCliente` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fkEmpleado` FOREIGN KEY (`RFC`) REFERENCES `empleado` (`RFC`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `venta` VALUES
(1,1200.50,'2024-11-01',1,'EMP00000001A'),
(2,450.00,'2024-11-02',2,'EMP00000002B'),
(3,750.00,'2024-11-03',3,'EMP00000003C'),
(4,300.00,'2024-11-04',4,'EMP00000004D'),
(5,900.00,'2024-11-05',5,'EMP00000005E'),
(6,600.00,'2024-11-06',6,'EMP00000006F'),
(7,1500.00,'2024-11-07',7,'EMP00000007G'),
(8,850.00,'2024-11-08',8,'EMP00000008H'),
(9,400.00,'2024-11-09',9,'EMP00000009I'),
(10,250.00,'2024-11-10',10,'EMP00000010J'),
(11,3000.00,'2024-11-11',11,'EMP00000011K'),
(12,750.00,'2024-11-12',12,'EMP00000012L'),
(13,950.00,'2024-11-13',13,'EMP00000013M'),
(14,1200.00,'2024-11-14',14,'EMP00000014N'),
(15,400.00,'2024-11-15',15,'EMP00000015O'),
(16,600.00,'2024-11-16',16,'EMP00000016P'),
(17,2200.00,'2024-11-17',17,'EMP00000017Q'),
(18,1500.00,'2024-11-18',18,'EMP00000018R'),
(19,850.00,'2024-11-19',19,'EMP00000019S'),
(20,300.00,'2024-11-20',20,'EMP00000020T');
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping routines for database 'papeleria3a'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-11-08 19:03:27
