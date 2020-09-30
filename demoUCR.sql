-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 192.168.99.100    Database: demo
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `curso` (
  `codigo_curso` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_curso` varchar(100) NOT NULL,
  `horas_curso` int(11) NOT NULL,
  `valor_curso` decimal(30,0) NOT NULL,
  `cupo_maximo` int(11) NOT NULL DEFAULT '15',
  `fk_tutor` int(11) NOT NULL,
  PRIMARY KEY (`codigo_curso`),
  UNIQUE KEY `nom_curso_UNIQUE` (`nombre_curso`),
  KEY `fk_tutor_curso_idx` (`fk_tutor`),
  CONSTRAINT `fk_tutor_curso` FOREIGN KEY (`fk_tutor`) REFERENCES `tutor` (`documento_tutor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=998878 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (149842,'Fundamentos de Bases de datos',40,500,15,12345),(250067,'Fundamentos de SQL',20,700,15,56789),(289011,'Manejo de Mysql ',45,550,15,12345),(345671,'Fundamentals of Oracle',60,3000,15,56789),(778877,'Ruby on Rails',100,4000,10,7777),(998877,'PL/SQL',80,4000,10,8888);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutor`
--

DROP TABLE IF EXISTS `tutor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tutor` (
  `documento_tutor` int(11) NOT NULL,
  `nombre_tutor` varchar(30) NOT NULL,
  `apellido_tutor` varchar(30) NOT NULL,
  `fecha_nacimiento` datetime NOT NULL,
  `estado` int(11) NOT NULL,
  `experiencia` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`documento_tutor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutor`
--

LOCK TABLES `tutor` WRITE;
/*!40000 ALTER TABLE `tutor` DISABLE KEYS */;
INSERT INTO `tutor` VALUES (7777,'Henry','castrillón','1980-03-03 00:00:00',1,'Estudiante de ADSI'),(8888,'DANIELA','OÑORO DIAZ','1980-03-03 00:00:00',1,'Estudiante de ADSI de bajo desempeño.!!.'),(9999,'ABRAHAM','GONZALES PEREZ','1980-03-03 00:00:00',0,'Estudiante de ADSI de bajo desempeño.!!.'),(12345,'JOSÉ','PEREZ','1980-07-01 00:00:00',1,'Experto en Oracle y SQL server'),(56789,'MARIA','JIMENEZ','1974-01-01 00:00:00',1,'Tutor del SENA por más de 10 años en el área de Desarrollo de Software'),(121212,'ANDRES','CAICEDO','1980-03-03 00:00:00',0,'Escritor Colombiano, que se suicidó a los 23 años.');
/*!40000 ALTER TABLE `tutor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_tutores`
--

DROP TABLE IF EXISTS `v_tutores`;
/*!50001 DROP VIEW IF EXISTS `v_tutores`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `v_tutores` AS SELECT 
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `edad`,
 1 AS `conocimientos`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'demo'
--
/*!50003 DROP FUNCTION IF EXISTS `get_edad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `get_edad`(fecha_nacimiento DATE) RETURNS int(11)
BEGIN
 declare resultado INT;
  
 select FLOOR( datediff(now(), fecha_nacimiento )/365) into resultado;

  RETURN resultado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `hola_mundo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `hola_mundo`() RETURNS varchar(100) CHARSET utf8mb4
BEGIN
   RETURN "Hola Mundo PL/SQL";
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `v_tutores`
--

/*!50001 DROP VIEW IF EXISTS `v_tutores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_tutores` AS select upper(`t`.`nombre_tutor`) AS `nombre`,upper(`t`.`apellido_tutor`) AS `apellido`,`GET_EDAD`(`t`.`fecha_nacimiento`) AS `edad`,`t`.`experiencia` AS `conocimientos` from `tutor` `t` */;
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

-- Dump completed on 2020-09-29 18:51:05
