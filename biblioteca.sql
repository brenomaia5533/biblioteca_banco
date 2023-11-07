CREATE DATABASE  IF NOT EXISTS `oscar` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `oscar`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: oscar
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `autores`
--

DROP TABLE IF EXISTS `autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autores` (
  `autor_id` int NOT NULL AUTO_INCREMENT,
  `autor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`autor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autores`
--

LOCK TABLES `autores` WRITE;
/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` VALUES (1,'John Green'),(2,'J.K. Rowling'),(3,'J.R.R. Tolkien'),(4,'J.D. Salinger'),(5,'George Orwell'),(6,'Rick Riordan');
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editoras`
--

DROP TABLE IF EXISTS `editoras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editoras` (
  `editora_id` int NOT NULL AUTO_INCREMENT,
  `editora` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`editora_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editoras`
--

LOCK TABLES `editoras` WRITE;
/*!40000 ALTER TABLE `editoras` DISABLE KEYS */;
INSERT INTO `editoras` VALUES (1,'Intrínseca'),(2,'Rocco'),(3,'Martins Fontes'),(4,'Little, Brown and Company'),(5,'Companhia Editora Nacional');
/*!40000 ALTER TABLE `editoras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livros`
--

DROP TABLE IF EXISTS `livros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livros` (
  `livros_id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `autor` varchar(255) DEFAULT NULL,
  `editora` varchar(255) DEFAULT NULL,
  `ano_publicacao` int DEFAULT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  `autor_id` int DEFAULT NULL,
  `editora_id` int DEFAULT NULL,
  PRIMARY KEY (`livros_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livros`
--

LOCK TABLES `livros` WRITE;
/*!40000 ALTER TABLE `livros` DISABLE KEYS */;
INSERT INTO `livros` VALUES (1,'A Culpa é das Estrelas','John Green','Intrínseca',2012,'978-85-8057-346-6',NULL,NULL),(2,'Harry Potter e a Pedra Filosofal','J.K. Rowling','Rocco',1997,'9788532511010',NULL,NULL),(3,'O Senhor dos Anéis: A Sociedade do Anel','J.R.R. Tolkien','Martins Fontes',1954,'9788533603149',NULL,NULL),(4,'The Catcher in the Rye','J.D. Salinger','Little, Brown and Company',1951,'9780316769488',NULL,NULL),(5,'1984','George Orwell','Companhia Editora Nacional',1949,'978-85-221-0616-9',NULL,NULL),(6,'Percy Jackson e o Ladrão de Raios','Rick Riordan','Intrínseca',2005,'9788598078355',NULL,NULL),(7,'Grande Sertao: Veredas','Joao Guimaraes Rosa','Nova Fronteira',1956,'978-85-209-2325-1',6,1),(8,'Memorias Postumas de Bras Cubas','Machado de Assis','Companhia das Letras',1881,'9788535910663',7,2),(9,'Vidas Secas','Graciliano Ramos','Companhia Editora Nacional',1938,'9788572326972',8,3),(10,'O Alienista','Machado de Assis','Martin Claret',1882,'9788572327429',9,4),(11,'O Cortiço','Aluisio Azevedo','Penguin Companhia',1890,'9788579027048',10,5),(12,'Dom Casmurro','Machado de Assis','Penguin Companhia',1899,'9788583862093',11,5),(13,'Macunaima','Mario de Andrade','Companhia Editora Nacional',1928,'9788503012302',12,3);
/*!40000 ALTER TABLE `livros` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-06 21:39:30
