-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: fullday_scape
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
-- Dumping data for table `log_paquetes`
--

LOCK TABLES `log_paquetes` WRITE;
/*!40000 ALTER TABLE `log_paquetes` DISABLE KEYS */;
INSERT INTO `log_paquetes` VALUES (1,'root@localhost',NULL,'UPDATE_BEFORE','2023-10-11 14:45:15','Titulo: LOSROQUES check_in 2023-12-01 14:30:00 check_out 2023-12-20 14:30:00 precio 15'),(2,'root@localhost',NULL,'UPDATE_AFTER','2023-10-11 14:45:15','Titulo: LOSROQUES --check_in: 2023-12-01 14:30:00 --check_out: 2023-12-20 14:30:00 -- precio: 40');
/*!40000 ALTER TABLE `log_paquetes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_reservas`
--

LOCK TABLES `log_reservas` WRITE;
/*!40000 ALTER TABLE `log_reservas` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_reservas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `paquetes`
--

LOCK TABLES `paquetes` WRITE;
/*!40000 ALTER TABLE `paquetes` DISABLE KEYS */;
INSERT INTO `paquetes` VALUES (1,'MARGARITA','2023-09-24 15:30:00','2023-09-25 15:30:00','ESTE ES EL PAQUETE MAS COPADO DE MARGARITA CON TODO INCLUIDO',15),(3,'CANAIMA','2023-11-01 09:00:00','2023-11-06 09:00:00','ESTE ES EL PAQUETE CON UNA INCREIBLE TRAVESIA POR HERMOSAS MONTAÑAS',20),(4,'RIO DE JANEIRO','2023-12-01 14:30:00','2023-12-20 14:30:00','EN ESTE PAQUETE PODRAS VISITAR AL CRISTO REDENTOR',20),(5,'BAHIA DE CATA','2023-10-01 14:30:00','2023-10-10 14:30:00','EN ESTE PAQUETE PODRAS RECORRER TODAS SUS PLAYAS A MITAD DE PRECIO',50),(6,'ITALIA','2023-09-20 14:30:00','2023-10-20 14:30:00','EN ESTE PAQUETE PODRAS DEGUSTAR LAS PASTAS MAS POPULARES',10),(7,'MAR DEL PLATA','2023-12-01 11:30:00','2023-12-20 11:30:00','ESTE ES EL PAQUETE DONDE PODRAS COMER EN MANOLO AL MEJOR PRECIO',5),(8,'TREVELIN','2023-10-15 16:30:00','2023-10-25 16:30:00','EN ESTE PAQUETE PODRAS IR A VER LOS TULIPANES',10),(9,'IGUAZU','2023-12-05 14:30:00','2023-12-10 14:30:00','EN ESTE PAQUETE TE HOSPEDARAS EN EL MEJOR HOTEL CINCO ESTRELLAS',50),(10,'BARILOCHE','2023-09-15 14:30:00','2023-09-25 14:30:00','EN ESTE PAQUETE PODRAS ESQUIAR CON LOS MEJORES EQUIPOS',30);
/*!40000 ALTER TABLE `paquetes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `paquetes_promociones`
--

LOCK TABLES `paquetes_promociones` WRITE;
/*!40000 ALTER TABLE `paquetes_promociones` DISABLE KEYS */;
INSERT INTO `paquetes_promociones` VALUES (1,1,1),(2,1,4),(3,5,5),(4,10,8),(5,3,3),(6,6,2),(7,7,7),(8,8,10),(9,NULL,6),(10,1,9);
/*!40000 ALTER TABLE `paquetes_promociones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `paquetes_servicios`
--

LOCK TABLES `paquetes_servicios` WRITE;
/*!40000 ALTER TABLE `paquetes_servicios` DISABLE KEYS */;
INSERT INTO `paquetes_servicios` VALUES (1,1,1),(2,9,6),(3,10,4),(4,NULL,8),(5,6,10),(6,4,5),(7,8,7),(8,5,4),(9,3,7),(10,10,2);
/*!40000 ALTER TABLE `paquetes_servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `promociones`
--

LOCK TABLES `promociones` WRITE;
/*!40000 ALTER TABLE `promociones` DISABLE KEYS */;
INSERT INTO `promociones` VALUES (1,'Vacaciones a mitad',20),(2,'Dia de spa',15),(3,'Full day romantico',12.5),(4,'Cultura y gastronomia en un día',15),(5,'Aventura en el Agua',30),(6,'Sushi day',50),(7,'Actividad acuatica buceo',10),(8,'Dia de fotografias',20),(9,'Navegacion al atardecer',15),(10,'Alquiler de auto por dia',50.5);
/*!40000 ALTER TABLE `promociones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `reservas`
--

LOCK TABLES `reservas` WRITE;
/*!40000 ALTER TABLE `reservas` DISABLE KEYS */;
INSERT INTO `reservas` VALUES (1,25,'2023-09-24 15:30:00','2023-09-25 15:30:00',1,1),(2,90,'2023-12-24 15:30:00','2024-01-25 15:30:00',1,3),(3,100,'2023-11-24 15:30:00','2023-12-24 15:30:00',5,6),(4,150,'2023-10-24 15:30:00','2023-11-04 15:30:00',3,10),(5,10,'2023-09-24 15:30:00','2023-09-30 15:30:00',2,8),(6,110.7,'2023-09-24 15:30:00','2023-10-25 15:30:00',10,1),(7,167.9,'2024-01-24 15:30:00','2024-02-25 15:30:00',8,3),(8,300,'2023-09-30 15:30:00','2023-11-30 15:30:00',4,7),(9,270.5,'2023-10-01 15:30:00','2023-10-30 15:30:00',6,4),(10,200,'2024-02-10 15:30:00','2024-02-25 15:30:00',9,5);
/*!40000 ALTER TABLE `reservas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
INSERT INTO `servicios` VALUES (1,'Wifi'),(2,'Lavanderia'),(3,'Gym'),(4,'Transporte'),(5,'Spa'),(6,'comida y bebida'),(7,'Guia turistico'),(8,'fotografia y recuerdos'),(9,'Entretenimiento en vivo'),(10,'Guardería para mascotas');
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Christian','christian@example.com','95888745'),(2,'Giuliana','giuliana123@example.com','95382714'),(3,'Marco','Marco55@example.com','95382999'),(4,'Angel','Angel12@example.com','95888999'),(5,'Natalia','Nat25@example.com','95982333'),(6,'Emily','Emily@example.com','95666787'),(7,'David','David25@example.com','97858966'),(8,'Gabriela','Gabriela85@example.com','33585666'),(9,'Jose','Jose2525@example.com','96555444'),(10,'Paola','Paola123@example.com','24382999');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-29 22:16:28
