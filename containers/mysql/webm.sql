-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: webm
-- ------------------------------------------------------
-- Server version	5.7.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `webm`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `webm` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `webm`;

--
-- Table structure for table `atc_xref`
--

DROP TABLE IF EXISTS `atc_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atc_xref` (
  `app_id` varchar(30) NOT NULL,
  `obj_name` varchar(30) NOT NULL,
  `native_id` varchar(100) NOT NULL,
  `canonical_id` varchar(100) NOT NULL,
  `latch_closed` char(1) NOT NULL,
  PRIMARY KEY (`app_id`,`obj_name`,`native_id`,`canonical_id`),
  KEY `idx_atc_xref` (`app_id`,`obj_name`,`canonical_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atc_xref`
--

LOCK TABLES `atc_xref` WRITE;
/*!40000 ALTER TABLE `atc_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `atc_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `component_event`
--

DROP TABLE IF EXISTS `component_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `component_event` (
  `COMPONENT_EVENT_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `COMPONENT_CD` varchar(50) NOT NULL,
  `COMPONENT_DESC` varchar(50) DEFAULT NULL,
  `COMPONENT_EVENT` varchar(30) DEFAULT NULL,
  `COMPONENT_LEVEL` varchar(30) DEFAULT NULL,
  `EVENT_DT` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CTRL_INSERT_DT` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CTRL_UPDATE_DT` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`COMPONENT_EVENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component_event`
--

LOCK TABLES `component_event` WRITE;
/*!40000 ALTER TABLE `component_event` DISABLE KEYS */;
INSERT INTO `component_event` VALUES (1,'CTR','ComponentTracker','INSTALL','v8.0','2020-03-23 17:17:54','2020-03-23 17:17:54','2020-03-23 17:17:54'),(2,'CTR','ComponentTracker','MIGRATE','v8.0-10.4','2020-03-23 17:17:54','2020-03-23 17:17:54','2020-03-23 17:17:54'),(3,'CTR','ComponentTracker','INSTALL','v10.4','2020-03-23 17:17:54','2020-03-23 17:17:54','2020-03-23 17:17:54'),(4,'ISI','ISInternal','INSTALL','v9.5.1.fix2','2020-03-23 17:18:03','2020-03-23 17:18:03','2020-03-23 17:18:03'),(5,'ISI','ISInternal','MIGRATE','v9.5.1.fix2-9.8','2020-03-23 17:18:03','2020-03-23 17:18:03','2020-03-23 17:18:03'),(6,'ISI','ISInternal','INSTALL','v9.8','2020-03-23 17:18:03','2020-03-23 17:18:03','2020-03-23 17:18:03'),(7,'ISI','ISInternal','MIGRATE','v9.8-9.9.fix1','2020-03-23 17:18:03','2020-03-23 17:18:03','2020-03-23 17:18:03'),(8,'ISI','ISInternal','INSTALL','v9.9.fix1','2020-03-23 17:18:03','2020-03-23 17:18:03','2020-03-23 17:18:03'),(9,'ISI','ISInternal','MIGRATE','v9.9.fix1-9.10','2020-03-23 17:18:03','2020-03-23 17:18:03','2020-03-23 17:18:03'),(10,'ISI','ISInternal','INSTALL','v9.10','2020-03-23 17:18:03','2020-03-23 17:18:03','2020-03-23 17:18:03'),(11,'ISI','ISInternal','MIGRATE','v9.10-9.10.fix1','2020-03-23 17:18:04','2020-03-23 17:18:04','2020-03-23 17:18:04'),(12,'ISI','ISInternal','INSTALL','v9.10.fix1','2020-03-23 17:18:04','2020-03-23 17:18:04','2020-03-23 17:18:04'),(13,'ISI','ISInternal','MIGRATE','v9.10.fix1-9.10.fix2','2020-03-23 17:18:04','2020-03-23 17:18:04','2020-03-23 17:18:04'),(14,'ISI','ISInternal','INSTALL','v9.10.fix2','2020-03-23 17:18:04','2020-03-23 17:18:04','2020-03-23 17:18:04'),(15,'ISI','ISInternal','MIGRATE','v9.10.fix2-9.12','2020-03-23 17:18:05','2020-03-23 17:18:05','2020-03-23 17:18:05'),(16,'ISI','ISInternal','INSTALL','v9.12','2020-03-23 17:18:05','2020-03-23 17:18:05','2020-03-23 17:18:05'),(17,'ISI','ISInternal','MIGRATE','v9.12-9.12.fix1','2020-03-23 17:18:05','2020-03-23 17:18:05','2020-03-23 17:18:05'),(18,'ISI','ISInternal','INSTALL','v9.12.fix1','2020-03-23 17:18:06','2020-03-23 17:18:06','2020-03-23 17:18:06'),(19,'ISI','ISInternal','MIGRATE','v9.12.fix1-10.1.fix2','2020-03-23 17:18:06','2020-03-23 17:18:06','2020-03-23 17:18:06'),(20,'ISI','ISInternal','INSTALL','v10.1.fix2','2020-03-23 17:18:06','2020-03-23 17:18:06','2020-03-23 17:18:06'),(21,'ISI','ISInternal','MIGRATE','v10.1.fix2-10.1.fix3','2020-03-23 17:18:06','2020-03-23 17:18:06','2020-03-23 17:18:06'),(22,'ISI','ISInternal','INSTALL','v10.1.fix3','2020-03-23 17:18:06','2020-03-23 17:18:06','2020-03-23 17:18:06'),(23,'ISI','ISInternal','MIGRATE','v10.1.fix3-10.1.fix4','2020-03-23 17:18:07','2020-03-23 17:18:07','2020-03-23 17:18:07'),(24,'ISI','ISInternal','INSTALL','v10.1.fix4','2020-03-23 17:18:07','2020-03-23 17:18:07','2020-03-23 17:18:07'),(25,'ISI','ISInternal','MIGRATE','v10.1.fix4-10.2','2020-03-23 17:18:07','2020-03-23 17:18:07','2020-03-23 17:18:07'),(26,'ISI','ISInternal','INSTALL','v10.2','2020-03-23 17:18:07','2020-03-23 17:18:07','2020-03-23 17:18:07'),(27,'ISI','ISInternal','MIGRATE','v10.2-10.3','2020-03-23 17:18:08','2020-03-23 17:18:08','2020-03-23 17:18:08'),(28,'ISI','ISInternal','INSTALL','v10.3','2020-03-23 17:18:08','2020-03-23 17:18:08','2020-03-23 17:18:08'),(29,'ISI','ISInternal','MIGRATE','v10.3-10.3.fix1','2020-03-23 17:18:09','2020-03-23 17:18:09','2020-03-23 17:18:09'),(30,'ISI','ISInternal','INSTALL','v10.3.fix1','2020-03-23 17:18:09','2020-03-23 17:18:09','2020-03-23 17:18:09'),(31,'ISI','ISInternal','MIGRATE','v10.3.fix1-10.5','2020-03-23 17:18:10','2020-03-23 17:18:10','2020-03-23 17:18:10'),(32,'ISI','ISInternal','INSTALL','v10.5','2020-03-23 17:18:10','2020-03-23 17:18:10','2020-03-23 17:18:10'),(33,'DSL','DistributedLocking','INSTALL','v7.1','2020-03-23 17:18:13','2020-03-23 17:18:13','2020-03-23 17:18:13'),(34,'ISC','ISCoreAudit','INSTALL','v9.5.1','2020-03-23 17:18:23','2020-03-23 17:18:23','2020-03-23 17:18:23'),(35,'ISC','ISCoreAudit','MIGRATE','v9.5.1-9.5.1.fix1','2020-03-23 17:18:23','2020-03-23 17:18:23','2020-03-23 17:18:23'),(36,'ISC','ISCoreAudit','INSTALL','v9.5.1.fix1','2020-03-23 17:18:24','2020-03-23 17:18:24','2020-03-23 17:18:24'),(37,'ISC','ISCoreAudit','MIGRATE','v9.5.1.fix1-10.1.fix1','2020-03-23 17:18:24','2020-03-23 17:18:24','2020-03-23 17:18:24'),(38,'ISC','ISCoreAudit','INSTALL','v10.1.fix1','2020-03-23 17:18:24','2020-03-23 17:18:24','2020-03-23 17:18:24'),(39,'ISC','ISCoreAudit','MIGRATE','v10.1.fix1-10.3','2020-03-23 17:18:24','2020-03-23 17:18:24','2020-03-23 17:18:24'),(40,'ISC','ISCoreAudit','INSTALL','v10.3','2020-03-23 17:18:24','2020-03-23 17:18:24','2020-03-23 17:18:24'),(41,'XRF','CrossReference','INSTALL','v8.2.2','2020-03-23 17:18:30','2020-03-23 17:18:30','2020-03-23 17:18:30'),(42,'IDR','DocumentHistory','INSTALL','v7.1','2020-03-23 17:18:36','2020-03-23 17:18:36','2020-03-23 17:18:36');
/*!40000 ALTER TABLE `component_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `installed_component`
--

DROP TABLE IF EXISTS `installed_component`;
/*!50001 DROP VIEW IF EXISTS `installed_component`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `installed_component` AS SELECT 
 1 AS `COMPONENT_CD`,
 1 AS `COMPONENT_LEVEL`,
 1 AS `COMPONENT_DESC`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `is_account_locking_details`
--

DROP TABLE IF EXISTS `is_account_locking_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is_account_locking_details` (
  `USER_ID` varchar(128) NOT NULL,
  `FIRST_LOGIN_FAILED_TIME` decimal(20,0) DEFAULT NULL,
  `LAST_LOGIN_FAILED_TIME` decimal(20,0) DEFAULT NULL,
  `NUMBER_OF_FAILED_ATTEMPTS` int(11) DEFAULT NULL,
  `LOCKING_STATUS` char(1) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_account_locking_details`
--

LOCK TABLES `is_account_locking_details` WRITE;
/*!40000 ALTER TABLE `is_account_locking_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `is_account_locking_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `is_certificate_map`
--

DROP TABLE IF EXISTS `is_certificate_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is_certificate_map` (
  `ISSUER_SERIAL_NUM` varchar(700) NOT NULL,
  `CERT_USAGE` int(11) NOT NULL,
  `CERT_USER` varchar(255) NOT NULL,
  `CERT_SKI` varbinary(255) NOT NULL,
  `CERT_THUMBPRINT` varbinary(255) NOT NULL,
  `CERT_BYTES` blob NOT NULL,
  `CERT_EXPIRATION` datetime DEFAULT NULL,
  `CTRL_INSERT_DT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `CTRL_UPDATE_DT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ISSUER_SERIAL_NUM`,`CERT_USAGE`),
  KEY `ISCERTMAP_AK1` (`CERT_SKI`),
  KEY `ISCERTMAP_AK2` (`CERT_THUMBPRINT`),
  KEY `ISCERTMAP_AK3` (`CERT_USAGE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_certificate_map`
--

LOCK TABLES `is_certificate_map` WRITE;
/*!40000 ALTER TABLE `is_certificate_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `is_certificate_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `is_datastore`
--

DROP TABLE IF EXISTS `is_datastore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is_datastore` (
  `DATASTORE_ID` int(10) NOT NULL AUTO_INCREMENT,
  `STORAGE_CONTEXT` varchar(225) NOT NULL,
  `STORAGE_KEY` varchar(425) NOT NULL,
  `VALUE` mediumblob,
  `CTRL_INSERT_DT` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `CTRL_UPDATE_DT` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  PRIMARY KEY (`DATASTORE_ID`),
  UNIQUE KEY `ISDATSTR_AK1` (`STORAGE_CONTEXT`,`STORAGE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_datastore`
--

LOCK TABLES `is_datastore` WRITE;
/*!40000 ALTER TABLE `is_datastore` DISABLE KEYS */;
/*!40000 ALTER TABLE `is_datastore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `is_gd_locks`
--

DROP TABLE IF EXISTS `is_gd_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is_gd_locks` (
  `TRANSACTION_ID` varchar(255) NOT NULL,
  `LOCK_OWNER_HOST` varchar(255) NOT NULL,
  `LOCK_OWNER_PORT` varchar(5) NOT NULL,
  `LOCK_OWNER_INSTANCE` varchar(255) NOT NULL,
  `SWEEPER_LOCK` char(1) DEFAULT NULL,
  `CTRL_INSERT_DT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`TRANSACTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_gd_locks`
--

LOCK TABLES `is_gd_locks` WRITE;
/*!40000 ALTER TABLE `is_gd_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `is_gd_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `is_gd_transactions_in`
--

DROP TABLE IF EXISTS `is_gd_transactions_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is_gd_transactions_in` (
  `TRANSACTION_ID` varchar(255) NOT NULL,
  `TRANSACTION_TTL` decimal(19,0) NOT NULL,
  `TRANSACTION_STATUS` varchar(255) NOT NULL,
  `TRANSACTION_OWNER` varchar(512) DEFAULT NULL,
  `DESTINATION_SERVER` varchar(512) DEFAULT NULL,
  `DESTINATION_PORT` int(11) DEFAULT NULL,
  `DATA_VALUE` blob,
  `REMOTE_JOB` char(1) NOT NULL,
  `REMOTE_TRAN_ID` varchar(255) DEFAULT NULL,
  `REMOTE_FOLLOW_ID` varchar(255) DEFAULT NULL,
  `REMOTE_RETRY_LIMIT` int(11) DEFAULT NULL,
  `REMOTE_RETRIES` int(11) DEFAULT NULL,
  `REMOTE_INTERFACE` varchar(512) DEFAULT NULL,
  `REMOTE_SERVICE` varchar(255) DEFAULT NULL,
  `REMOTE_ONE_WAY` char(1) DEFAULT NULL,
  `REMOTE_CTX` blob,
  `CTRL_INSERT_DT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CTRL_UPDATE_DT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`TRANSACTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_gd_transactions_in`
--

LOCK TABLES `is_gd_transactions_in` WRITE;
/*!40000 ALTER TABLE `is_gd_transactions_in` DISABLE KEYS */;
/*!40000 ALTER TABLE `is_gd_transactions_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `is_gd_transactions_out`
--

DROP TABLE IF EXISTS `is_gd_transactions_out`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is_gd_transactions_out` (
  `TRANSACTION_ID` varchar(255) NOT NULL,
  `TRANSACTION_TTL` decimal(19,0) NOT NULL,
  `TRANSACTION_STATUS` varchar(255) NOT NULL,
  `TRANSACTION_OWNER` varchar(512) DEFAULT NULL,
  `DESTINATION_SERVER` varchar(512) DEFAULT NULL,
  `DESTINATION_PORT` int(11) DEFAULT NULL,
  `DATA_VALUE` blob,
  `REMOTE_JOB` char(1) NOT NULL,
  `REMOTE_TRAN_ID` varchar(255) DEFAULT NULL,
  `REMOTE_FOLLOW_ID` varchar(255) DEFAULT NULL,
  `REMOTE_RETRY_LIMIT` int(11) DEFAULT NULL,
  `REMOTE_RETRIES` int(11) DEFAULT NULL,
  `REMOTE_INTERFACE` varchar(512) DEFAULT NULL,
  `REMOTE_SERVICE` varchar(255) DEFAULT NULL,
  `REMOTE_ONE_WAY` char(1) DEFAULT NULL,
  `REMOTE_CTX` blob,
  `CTRL_INSERT_DT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CTRL_UPDATE_DT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`TRANSACTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_gd_transactions_out`
--

LOCK TABLES `is_gd_transactions_out` WRITE;
/*!40000 ALTER TABLE `is_gd_transactions_out` DISABLE KEYS */;
/*!40000 ALTER TABLE `is_gd_transactions_out` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `is_oauth_accesstoken`
--

DROP TABLE IF EXISTS `is_oauth_accesstoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is_oauth_accesstoken` (
  `ACCESSTOKEN_ID` varchar(100) NOT NULL,
  `TOKEN_ID` varchar(100) NOT NULL,
  `CREATED_TIME` decimal(19,0) DEFAULT NULL,
  `EXPIRE_TIME` decimal(19,0) DEFAULT NULL,
  PRIMARY KEY (`ACCESSTOKEN_ID`),
  KEY `ISOAUTH_ACCTOK_FK_TOK` (`TOKEN_ID`),
  CONSTRAINT `ISOAUTH_ACCTOK_FK_TOK` FOREIGN KEY (`TOKEN_ID`) REFERENCES `is_oauth_token` (`TOKEN_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_oauth_accesstoken`
--

LOCK TABLES `is_oauth_accesstoken` WRITE;
/*!40000 ALTER TABLE `is_oauth_accesstoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `is_oauth_accesstoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `is_oauth_client_redir`
--

DROP TABLE IF EXISTS `is_oauth_client_redir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is_oauth_client_redir` (
  `CLIENT_ID` varchar(100) NOT NULL,
  `REDIRECT_URI` varchar(700) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`REDIRECT_URI`),
  CONSTRAINT `ISOAUTHCLIREDIR_FK_CLNT` FOREIGN KEY (`CLIENT_ID`) REFERENCES `is_oauth_clients` (`CLIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_oauth_client_redir`
--

LOCK TABLES `is_oauth_client_redir` WRITE;
/*!40000 ALTER TABLE `is_oauth_client_redir` DISABLE KEYS */;
/*!40000 ALTER TABLE `is_oauth_client_redir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `is_oauth_client_scope`
--

DROP TABLE IF EXISTS `is_oauth_client_scope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is_oauth_client_scope` (
  `CLIENT_ID` varchar(100) NOT NULL,
  `SCOPE_NAME` varchar(100) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`SCOPE_NAME`),
  KEY `ISOAUTHCLISCOP_FK_SCOP` (`SCOPE_NAME`),
  CONSTRAINT `ISOAUTHCLISCOP_FK_CLNT` FOREIGN KEY (`CLIENT_ID`) REFERENCES `is_oauth_clients` (`CLIENT_ID`),
  CONSTRAINT `ISOAUTHCLISCOP_FK_SCOP` FOREIGN KEY (`SCOPE_NAME`) REFERENCES `is_oauth_scope` (`SCOPE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_oauth_client_scope`
--

LOCK TABLES `is_oauth_client_scope` WRITE;
/*!40000 ALTER TABLE `is_oauth_client_scope` DISABLE KEYS */;
/*!40000 ALTER TABLE `is_oauth_client_scope` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `is_oauth_clients`
--

DROP TABLE IF EXISTS `is_oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is_oauth_clients` (
  `CLIENT_ID` varchar(100) NOT NULL,
  `APPL_NAME` varchar(255) NOT NULL,
  `APPL_VERSION` varchar(255) DEFAULT NULL,
  `CLIENT_TYPE` smallint(6) DEFAULT NULL,
  `TOKEN_LIFETIME` int(11) DEFAULT NULL,
  `TOKEN_REFRESH_LIMIT` int(11) DEFAULT NULL,
  `CLIENT_SECRET` varchar(100) DEFAULT NULL,
  `ENABLED` smallint(6) DEFAULT NULL,
  `NOTES` varchar(2048) DEFAULT NULL,
  `APPROVAL_PG_TITLE` varchar(1024) DEFAULT NULL,
  `APPROVAL_PG_HEADING` varchar(1024) DEFAULT NULL,
  `APPROVAL_PG_LOGOFILE` varchar(2048) DEFAULT NULL,
  `APPROVAL_PG_FOOTER` varchar(1024) DEFAULT NULL,
  `APPROVAL_PG_FILENAME` varchar(2048) DEFAULT NULL,
  `ALLOWED_GRANTS` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`CLIENT_ID`),
  UNIQUE KEY `ISOAUTHCLIENT_UNQIDX1` (`APPL_NAME`,`APPL_VERSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_oauth_clients`
--

LOCK TABLES `is_oauth_clients` WRITE;
/*!40000 ALTER TABLE `is_oauth_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `is_oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `is_oauth_refreshtoken`
--

DROP TABLE IF EXISTS `is_oauth_refreshtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is_oauth_refreshtoken` (
  `REFRESHTOKEN_ID` varchar(100) NOT NULL,
  `TOKEN_ID` varchar(100) NOT NULL,
  `REMAINING_REFRESHES` int(11) DEFAULT NULL,
  `CREATED_TIME` decimal(19,0) DEFAULT NULL,
  `LAST_REFRESHED_TIME` decimal(19,0) DEFAULT NULL,
  PRIMARY KEY (`REFRESHTOKEN_ID`),
  KEY `ISOAUTH_REFTOK_FK_TOK` (`TOKEN_ID`),
  CONSTRAINT `ISOAUTH_REFTOK_FK_TOK` FOREIGN KEY (`TOKEN_ID`) REFERENCES `is_oauth_token` (`TOKEN_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_oauth_refreshtoken`
--

LOCK TABLES `is_oauth_refreshtoken` WRITE;
/*!40000 ALTER TABLE `is_oauth_refreshtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `is_oauth_refreshtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `is_oauth_scope`
--

DROP TABLE IF EXISTS `is_oauth_scope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is_oauth_scope` (
  `SCOPE_NAME` varchar(100) NOT NULL,
  `SCOPE_VALUE` blob,
  `SCOPE_DESCRIPTION` varchar(2048) DEFAULT NULL,
  `SCOPE_URL_TEMPLATES` blob,
  PRIMARY KEY (`SCOPE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_oauth_scope`
--

LOCK TABLES `is_oauth_scope` WRITE;
/*!40000 ALTER TABLE `is_oauth_scope` DISABLE KEYS */;
/*!40000 ALTER TABLE `is_oauth_scope` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `is_oauth_token`
--

DROP TABLE IF EXISTS `is_oauth_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is_oauth_token` (
  `TOKEN_ID` varchar(100) NOT NULL,
  `CLIENT_ID` varchar(100) NOT NULL,
  `OWNER_ID` varchar(100) DEFAULT NULL,
  `GRANT_TYPE` varchar(100) DEFAULT NULL,
  `AUTH_CODE` varchar(100) DEFAULT NULL,
  `TOKEN_TYPE` varchar(30) DEFAULT NULL,
  `ACCESSTOKEN_ID` varchar(100) DEFAULT NULL,
  `REFRESHTOKEN_ID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`TOKEN_ID`),
  KEY `ISOAUTHTOKEN_FK_CLNT` (`CLIENT_ID`),
  CONSTRAINT `ISOAUTHTOKEN_FK_CLNT` FOREIGN KEY (`CLIENT_ID`) REFERENCES `is_oauth_clients` (`CLIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_oauth_token`
--

LOCK TABLES `is_oauth_token` WRITE;
/*!40000 ALTER TABLE `is_oauth_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `is_oauth_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `is_oauth_token_scope`
--

DROP TABLE IF EXISTS `is_oauth_token_scope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is_oauth_token_scope` (
  `TOKEN_ID` varchar(100) NOT NULL,
  `SCOPE_NAME` varchar(100) NOT NULL,
  PRIMARY KEY (`TOKEN_ID`,`SCOPE_NAME`),
  KEY `ISOAUTHTOKSCOP_FK_SCOP` (`SCOPE_NAME`),
  CONSTRAINT `ISOAUTHTOKSCOP_FK_SCOP` FOREIGN KEY (`SCOPE_NAME`) REFERENCES `is_oauth_scope` (`SCOPE_NAME`),
  CONSTRAINT `ISOAUTHTOKSCOP_FK_TOK` FOREIGN KEY (`TOKEN_ID`) REFERENCES `is_oauth_token` (`TOKEN_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_oauth_token_scope`
--

LOCK TABLES `is_oauth_token_scope` WRITE;
/*!40000 ALTER TABLE `is_oauth_token_scope` DISABLE KEYS */;
/*!40000 ALTER TABLE `is_oauth_token_scope` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `is_trigger_doc`
--

DROP TABLE IF EXISTS `is_trigger_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is_trigger_doc` (
  `TRIGGER_DOC_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TRIGGER_ID` varchar(255) NOT NULL,
  `MSG_ID` varchar(255) DEFAULT NULL,
  `TRIGGER_DOCUMENT` blob,
  `CTRL_INSERT_DT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CTRL_UPDATE_DT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`TRIGGER_DOC_ID`),
  KEY `TRGDOC_FK_TRGSTATE` (`TRIGGER_ID`),
  CONSTRAINT `TRGDOC_FK_TRGSTATE` FOREIGN KEY (`TRIGGER_ID`) REFERENCES `is_trigger_state` (`TRIGGER_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_trigger_doc`
--

LOCK TABLES `is_trigger_doc` WRITE;
/*!40000 ALTER TABLE `is_trigger_doc` DISABLE KEYS */;
/*!40000 ALTER TABLE `is_trigger_doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `is_trigger_state`
--

DROP TABLE IF EXISTS `is_trigger_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is_trigger_state` (
  `TRIGGER_ID` varchar(255) NOT NULL,
  `TRIGGER_STATE` int(11) NOT NULL,
  `TRIGGER_NAME` varchar(255) NOT NULL,
  `TRIGGER_TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `TRIGGER_TIMEOUT` decimal(12,0) NOT NULL,
  `TRIGGER_EXPIRE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TRIGGER_SERVER` varchar(512) NOT NULL,
  `TRIGGER_VDOC_ID` varchar(512) DEFAULT NULL,
  `TRIGGER_TYPE` varchar(512) DEFAULT NULL,
  `TRIGGER_MSG_ID` varchar(512) DEFAULT NULL,
  `CTRL_INSERT_DT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `CTRL_UPDATE_DT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`TRIGGER_ID`),
  KEY `TRGDOC_EXPIRY_INDX` (`TRIGGER_EXPIRE_TIME`,`TRIGGER_STATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_trigger_state`
--

LOCK TABLES `is_trigger_state` WRITE;
/*!40000 ALTER TABLE `is_trigger_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `is_trigger_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `is_user_tasks`
--

DROP TABLE IF EXISTS `is_user_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is_user_tasks` (
  `UUID` varchar(700) NOT NULL,
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `SERVICE` varchar(1024) NOT NULL,
  `TARGET` varchar(80) NOT NULL,
  `RUNASUSER` varchar(80) DEFAULT NULL,
  `RUNFROMEND` int(11) NOT NULL,
  `TASKTYPE` int(11) NOT NULL,
  `STARTTIME` timestamp NULL DEFAULT NULL,
  `ENDTIME` timestamp NULL DEFAULT NULL,
  `TIMEINTERVAL` int(11) DEFAULT NULL,
  `MONTHMASK` int(11) DEFAULT NULL,
  `DAYOFWEEKMASK` int(11) DEFAULT NULL,
  `DAYOFMONTHMASK` int(11) DEFAULT NULL,
  `HOURMASK` int(11) DEFAULT NULL,
  `MINUTEMASK` decimal(25,0) DEFAULT NULL,
  `STATE` int(11) DEFAULT NULL,
  `RUNNINGON` varchar(80) DEFAULT NULL,
  `UUIDREF` varchar(1000) DEFAULT NULL,
  `NEXTRUN` timestamp NULL DEFAULT NULL,
  `LATENESS` int(11) DEFAULT NULL,
  `LATENESSACTION` int(11) DEFAULT NULL,
  `LASTERROR` varchar(256) DEFAULT NULL,
  `LASTSTACKTRACE` varchar(4000) DEFAULT NULL,
  `INPUTS` blob,
  `INCLUDECLUSTERNODES` varchar(4000) DEFAULT NULL,
  `INTERNALTASK` char(1) DEFAULT NULL,
  `START_AT` decimal(20,0) DEFAULT NULL,
  `END_AT` decimal(20,0) DEFAULT NULL,
  `RUN_AT` decimal(20,0) DEFAULT NULL,
  `LAST_UPDATED` decimal(20,0) DEFAULT NULL,
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_user_tasks`
--

LOCK TABLES `is_user_tasks` WRITE;
/*!40000 ALTER TABLE `is_user_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `is_user_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `is_wsrm_invoker_client`
--

DROP TABLE IF EXISTS `is_wsrm_invoker_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is_wsrm_invoker_client` (
  `MESSAGE_CONTEXT_REF_KEY` varchar(255) NOT NULL,
  `SEQUENCE_ID` varchar(255) DEFAULT NULL,
  `CONTEXT` blob,
  `MSG_NO` decimal(20,0) DEFAULT NULL,
  `FLAGS` int(11) DEFAULT NULL,
  PRIMARY KEY (`MESSAGE_CONTEXT_REF_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_wsrm_invoker_client`
--

LOCK TABLES `is_wsrm_invoker_client` WRITE;
/*!40000 ALTER TABLE `is_wsrm_invoker_client` DISABLE KEYS */;
/*!40000 ALTER TABLE `is_wsrm_invoker_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `is_wsrm_invoker_server`
--

DROP TABLE IF EXISTS `is_wsrm_invoker_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is_wsrm_invoker_server` (
  `MESSAGE_CONTEXT_REF_KEY` varchar(255) NOT NULL,
  `SEQUENCE_ID` varchar(255) DEFAULT NULL,
  `CONTEXT` blob,
  `MSG_NO` decimal(20,0) DEFAULT NULL,
  `FLAGS` int(11) DEFAULT NULL,
  PRIMARY KEY (`MESSAGE_CONTEXT_REF_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_wsrm_invoker_server`
--

LOCK TABLES `is_wsrm_invoker_server` WRITE;
/*!40000 ALTER TABLE `is_wsrm_invoker_server` DISABLE KEYS */;
/*!40000 ALTER TABLE `is_wsrm_invoker_server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `is_wsrm_msgctx_client`
--

DROP TABLE IF EXISTS `is_wsrm_msgctx_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is_wsrm_msgctx_client` (
  `CTX_KEY` varchar(255) NOT NULL,
  `CTX` blob,
  PRIMARY KEY (`CTX_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_wsrm_msgctx_client`
--

LOCK TABLES `is_wsrm_msgctx_client` WRITE;
/*!40000 ALTER TABLE `is_wsrm_msgctx_client` DISABLE KEYS */;
/*!40000 ALTER TABLE `is_wsrm_msgctx_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `is_wsrm_msgctx_server`
--

DROP TABLE IF EXISTS `is_wsrm_msgctx_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is_wsrm_msgctx_server` (
  `CTX_KEY` varchar(255) NOT NULL,
  `CTX` blob,
  PRIMARY KEY (`CTX_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_wsrm_msgctx_server`
--

LOCK TABLES `is_wsrm_msgctx_server` WRITE;
/*!40000 ALTER TABLE `is_wsrm_msgctx_server` DISABLE KEYS */;
/*!40000 ALTER TABLE `is_wsrm_msgctx_server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `is_wsrm_rmd_client`
--

DROP TABLE IF EXISTS `is_wsrm_rmd_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is_wsrm_rmd_client` (
  `SEQUENCE_ID` varchar(255) NOT NULL,
  `TO_EPR_ADDR` varchar(255) DEFAULT NULL,
  `TO_EPR` blob,
  `REPLY_TO_EPR_ADDR` varchar(255) DEFAULT NULL,
  `REPLY_TO_EPR` blob,
  `ACKS_TO_EPR_ADDR` varchar(255) DEFAULT NULL,
  `ACKS_TO_EPR` blob,
  `RM_VERSION` varchar(255) DEFAULT NULL,
  `SECURITY_TOKEN_DATA` varchar(255) DEFAULT NULL,
  `LAST_ACTIVATED_TIME` decimal(20,0) DEFAULT NULL,
  `CLOSED` int(11) DEFAULT NULL,
  `TERMINATED_FLAG` int(11) DEFAULT NULL,
  `POLLING_MODE` int(11) DEFAULT NULL,
  `SERVICE_NAME` varchar(255) DEFAULT NULL,
  `FLAGS` int(11) DEFAULT NULL,
  `REFERENCE_MESSAGE_KEY` varchar(255) DEFAULT NULL,
  `HIGHEST_IN_MESSAGE_ID` varchar(255) DEFAULT NULL,
  `LAST_IN_MESSAGE_ID` varchar(255) DEFAULT NULL,
  `SERVER_COMPLETED_MESSAGES` varchar(4000) DEFAULT NULL,
  `OUTOF_ORDER_RANGES` varchar(4000) DEFAULT NULL,
  `TO_ADDRESS` varchar(255) DEFAULT NULL,
  `OUTBOUND_INTERNAL_SEQUENCE` varchar(255) DEFAULT NULL,
  `NEXT_MSGNO_TO_PROCESS` decimal(20,0) DEFAULT NULL,
  `HIGHEST_IN_MESSAGE_NUMBER` decimal(20,0) DEFAULT NULL,
  `RMD_FLAGS` int(11) DEFAULT NULL,
  PRIMARY KEY (`SEQUENCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_wsrm_rmd_client`
--

LOCK TABLES `is_wsrm_rmd_client` WRITE;
/*!40000 ALTER TABLE `is_wsrm_rmd_client` DISABLE KEYS */;
/*!40000 ALTER TABLE `is_wsrm_rmd_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `is_wsrm_rmd_server`
--

DROP TABLE IF EXISTS `is_wsrm_rmd_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is_wsrm_rmd_server` (
  `SEQUENCE_ID` varchar(255) NOT NULL,
  `TO_EPR_ADDR` varchar(255) DEFAULT NULL,
  `TO_EPR` blob,
  `REPLY_TO_EPR_ADDR` varchar(255) DEFAULT NULL,
  `REPLY_TO_EPR` blob,
  `ACKS_TO_EPR_ADDR` varchar(255) DEFAULT NULL,
  `ACKS_TO_EPR` blob,
  `RM_VERSION` varchar(255) DEFAULT NULL,
  `SECURITY_TOKEN_DATA` varchar(255) DEFAULT NULL,
  `LAST_ACTIVATED_TIME` decimal(20,0) DEFAULT NULL,
  `CLOSED` int(11) DEFAULT NULL,
  `TERMINATED_FLAG` int(11) DEFAULT NULL,
  `POLLING_MODE` int(11) DEFAULT NULL,
  `SERVICE_NAME` varchar(255) DEFAULT NULL,
  `FLAGS` int(11) DEFAULT NULL,
  `REFERENCE_MESSAGE_KEY` varchar(255) DEFAULT NULL,
  `HIGHEST_IN_MESSAGE_ID` varchar(255) DEFAULT NULL,
  `LAST_IN_MESSAGE_ID` varchar(255) DEFAULT NULL,
  `SERVER_COMPLETED_MESSAGES` varchar(4000) DEFAULT NULL,
  `OUTOF_ORDER_RANGES` varchar(4000) DEFAULT NULL,
  `TO_ADDRESS` varchar(255) DEFAULT NULL,
  `OUTBOUND_INTERNAL_SEQUENCE` varchar(255) DEFAULT NULL,
  `NEXT_MSGNO_TO_PROCESS` decimal(20,0) DEFAULT NULL,
  `HIGHEST_IN_MESSAGE_NUMBER` decimal(20,0) DEFAULT NULL,
  `RMD_FLAGS` int(11) DEFAULT NULL,
  PRIMARY KEY (`SEQUENCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_wsrm_rmd_server`
--

LOCK TABLES `is_wsrm_rmd_server` WRITE;
/*!40000 ALTER TABLE `is_wsrm_rmd_server` DISABLE KEYS */;
/*!40000 ALTER TABLE `is_wsrm_rmd_server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `is_wsrm_rms_client`
--

DROP TABLE IF EXISTS `is_wsrm_rms_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is_wsrm_rms_client` (
  `CREATE_SEQ_MSG_ID` varchar(255) NOT NULL,
  `SEQUENCE_ID` varchar(255) DEFAULT NULL,
  `TO_EPR_ADDR` varchar(255) DEFAULT NULL,
  `TO_EPR` blob,
  `REPLY_TO_EPR_ADDR` varchar(255) DEFAULT NULL,
  `REPLY_TO_EPR` blob,
  `ACKS_TO_EPR_ADDR` varchar(255) DEFAULT NULL,
  `ACKS_TO_EPR` blob,
  `RM_VERSION` varchar(255) DEFAULT NULL,
  `SECURITY_TOKEN_DATA` varchar(255) DEFAULT NULL,
  `LAST_ACTIVATED_TIME` decimal(20,0) DEFAULT NULL,
  `CLOSED` int(11) DEFAULT NULL,
  `TERMINATED_FLAG` int(11) DEFAULT NULL,
  `POLLING_MODE` int(11) DEFAULT NULL,
  `SERVICE_NAME` varchar(255) DEFAULT NULL,
  `FLAGS` int(11) DEFAULT NULL,
  `ID` decimal(20,0) DEFAULT NULL,
  `INTERNAL_SEQUENCE_ID` varchar(255) DEFAULT NULL,
  `CREATE_SEQUENCE_MSG_STORE_KEY` varchar(255) DEFAULT NULL,
  `REFERENCE_MSG_STORE_KEY` varchar(255) DEFAULT NULL,
  `LAST_SEND_ERROR` blob,
  `HIGHEST_OUT_RELATES_TO` varchar(255) DEFAULT NULL,
  `CLIENT_COMPLETED_MESSAGES` varchar(4000) DEFAULT NULL,
  `TRANSPORT_TO` varchar(255) DEFAULT NULL,
  `OFFERED_ENDPOINT` varchar(255) DEFAULT NULL,
  `OFFERED_ENDPOINT_EPR_ADDR` varchar(255) DEFAULT NULL,
  `OFFERED_ENDPOINT_EPR` blob,
  `OFFERED_SEQUENCE` varchar(255) DEFAULT NULL,
  `ANONYMOUS_UUID` varchar(255) DEFAULT NULL,
  `LAST_SEND_ERROR_TIMESTAMP` decimal(20,0) DEFAULT NULL,
  `LAST_OUT_MESSAGE` decimal(20,0) DEFAULT NULL,
  `HIGHEST_OUT_MESSAGE_NUMBER` decimal(20,0) DEFAULT NULL,
  `NEXT_MESSAGE_NUMBER` decimal(20,0) DEFAULT NULL,
  `TERMINATE_ADDED` int(11) DEFAULT NULL,
  `TIMED_OUT` int(11) DEFAULT NULL,
  `SEQUENCE_CLOSED_CLIENT` int(11) DEFAULT NULL,
  `EXPECTED_REPLIES` decimal(20,0) DEFAULT NULL,
  `SOAP_VERSION` int(11) DEFAULT NULL,
  `TERMINATION_PAUSER_FOR_CS` int(11) DEFAULT NULL,
  `AVOID_AUTO_TERMINATION` int(11) DEFAULT NULL,
  `RMS_FLAGS` int(11) DEFAULT NULL,
  `REALLOCATED` int(11) DEFAULT NULL,
  `INTERNALSEQIDOFSEQUSEDFORREALL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CREATE_SEQ_MSG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_wsrm_rms_client`
--

LOCK TABLES `is_wsrm_rms_client` WRITE;
/*!40000 ALTER TABLE `is_wsrm_rms_client` DISABLE KEYS */;
/*!40000 ALTER TABLE `is_wsrm_rms_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `is_wsrm_rms_server`
--

DROP TABLE IF EXISTS `is_wsrm_rms_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is_wsrm_rms_server` (
  `CREATE_SEQ_MSG_ID` varchar(255) NOT NULL,
  `SEQUENCE_ID` varchar(255) DEFAULT NULL,
  `TO_EPR_ADDR` varchar(255) DEFAULT NULL,
  `TO_EPR` blob,
  `REPLY_TO_EPR_ADDR` varchar(255) DEFAULT NULL,
  `REPLY_TO_EPR` blob,
  `ACKS_TO_EPR_ADDR` varchar(255) DEFAULT NULL,
  `ACKS_TO_EPR` blob,
  `RM_VERSION` varchar(255) DEFAULT NULL,
  `SECURITY_TOKEN_DATA` varchar(255) DEFAULT NULL,
  `LAST_ACTIVATED_TIME` decimal(20,0) DEFAULT NULL,
  `CLOSED` int(11) DEFAULT NULL,
  `TERMINATED_FLAG` int(11) DEFAULT NULL,
  `POLLING_MODE` int(11) DEFAULT NULL,
  `SERVICE_NAME` varchar(255) DEFAULT NULL,
  `FLAGS` int(11) DEFAULT NULL,
  `ID` decimal(20,0) DEFAULT NULL,
  `INTERNAL_SEQUENCE_ID` varchar(255) DEFAULT NULL,
  `CREATE_SEQUENCE_MSG_STORE_KEY` varchar(255) DEFAULT NULL,
  `REFERENCE_MSG_STORE_KEY` varchar(255) DEFAULT NULL,
  `LAST_SEND_ERROR` blob,
  `HIGHEST_OUT_RELATES_TO` varchar(255) DEFAULT NULL,
  `CLIENT_COMPLETED_MESSAGES` varchar(4000) DEFAULT NULL,
  `TRANSPORT_TO` varchar(255) DEFAULT NULL,
  `OFFERED_ENDPOINT` varchar(255) DEFAULT NULL,
  `OFFERED_ENDPOINT_EPR_ADDR` varchar(255) DEFAULT NULL,
  `OFFERED_ENDPOINT_EPR` blob,
  `OFFERED_SEQUENCE` varchar(255) DEFAULT NULL,
  `ANONYMOUS_UUID` varchar(255) DEFAULT NULL,
  `LAST_SEND_ERROR_TIMESTAMP` decimal(20,0) DEFAULT NULL,
  `LAST_OUT_MESSAGE` decimal(20,0) DEFAULT NULL,
  `HIGHEST_OUT_MESSAGE_NUMBER` decimal(20,0) DEFAULT NULL,
  `NEXT_MESSAGE_NUMBER` decimal(20,0) DEFAULT NULL,
  `TERMINATE_ADDED` int(11) DEFAULT NULL,
  `TIMED_OUT` int(11) DEFAULT NULL,
  `SEQUENCE_CLOSED_CLIENT` int(11) DEFAULT NULL,
  `EXPECTED_REPLIES` decimal(20,0) DEFAULT NULL,
  `SOAP_VERSION` int(11) DEFAULT NULL,
  `TERMINATION_PAUSER_FOR_CS` int(11) DEFAULT NULL,
  `AVOID_AUTO_TERMINATION` int(11) DEFAULT NULL,
  `RMS_FLAGS` int(11) DEFAULT NULL,
  `REALLOCATED` int(11) DEFAULT NULL,
  `INTERNALSEQIDOFSEQUSEDFORREALL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CREATE_SEQ_MSG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_wsrm_rms_server`
--

LOCK TABLES `is_wsrm_rms_server` WRITE;
/*!40000 ALTER TABLE `is_wsrm_rms_server` DISABLE KEYS */;
/*!40000 ALTER TABLE `is_wsrm_rms_server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `is_wsrm_sender_client`
--

DROP TABLE IF EXISTS `is_wsrm_sender_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is_wsrm_sender_client` (
  `MESSAGE_ID` varchar(255) NOT NULL,
  `MESSAGE_CONTEXT_REF_KEY` varchar(255) DEFAULT NULL,
  `INTERNAL_SEQUENCE_ID` varchar(255) DEFAULT NULL,
  `SEQUENCE_ID` varchar(255) DEFAULT NULL,
  `TO_ADDRESS` varchar(255) DEFAULT NULL,
  `INBOUND_SEQUENCE_ID` varchar(255) DEFAULT NULL,
  `SEND` int(11) DEFAULT NULL,
  `SENT_COUNT` int(11) DEFAULT NULL,
  `MESSAGE_NUMBER` decimal(20,0) DEFAULT NULL,
  `RESEND` int(11) DEFAULT NULL,
  `TIME_TO_SEND` decimal(20,0) DEFAULT NULL,
  `MESSAGE_TYPE` int(11) DEFAULT NULL,
  `LAST_MESSAGE` int(11) DEFAULT NULL,
  `INBOUND_MESSAGE_NUMBER` decimal(20,0) DEFAULT NULL,
  `TRANSPORT_AVAILABLE` int(11) DEFAULT NULL,
  `FLAGS` int(11) DEFAULT NULL,
  PRIMARY KEY (`MESSAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_wsrm_sender_client`
--

LOCK TABLES `is_wsrm_sender_client` WRITE;
/*!40000 ALTER TABLE `is_wsrm_sender_client` DISABLE KEYS */;
/*!40000 ALTER TABLE `is_wsrm_sender_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `is_wsrm_sender_server`
--

DROP TABLE IF EXISTS `is_wsrm_sender_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is_wsrm_sender_server` (
  `MESSAGE_ID` varchar(255) NOT NULL,
  `MESSAGE_CONTEXT_REF_KEY` varchar(255) DEFAULT NULL,
  `INTERNAL_SEQUENCE_ID` varchar(255) DEFAULT NULL,
  `SEQUENCE_ID` varchar(255) DEFAULT NULL,
  `TO_ADDRESS` varchar(255) DEFAULT NULL,
  `INBOUND_SEQUENCE_ID` varchar(255) DEFAULT NULL,
  `SEND` int(11) DEFAULT NULL,
  `SENT_COUNT` int(11) DEFAULT NULL,
  `MESSAGE_NUMBER` decimal(20,0) DEFAULT NULL,
  `RESEND` int(11) DEFAULT NULL,
  `TIME_TO_SEND` decimal(20,0) DEFAULT NULL,
  `MESSAGE_TYPE` int(11) DEFAULT NULL,
  `LAST_MESSAGE` int(11) DEFAULT NULL,
  `INBOUND_MESSAGE_NUMBER` decimal(20,0) DEFAULT NULL,
  `TRANSPORT_AVAILABLE` int(11) DEFAULT NULL,
  `FLAGS` int(11) DEFAULT NULL,
  PRIMARY KEY (`MESSAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_wsrm_sender_server`
--

LOCK TABLES `is_wsrm_sender_server` WRITE;
/*!40000 ALTER TABLE `is_wsrm_sender_server` DISABLE KEYS */;
/*!40000 ALTER TABLE `is_wsrm_sender_server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wm_excl_dist_lock`
--

DROP TABLE IF EXISTS `wm_excl_dist_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wm_excl_dist_lock` (
  `EXCL_LOCK_ID` varchar(96) NOT NULL,
  `TARGET_ID` varchar(256) NOT NULL,
  `LOCK_HOLDER` varchar(256) NOT NULL,
  `LOCK_TYPE` varchar(1) NOT NULL,
  `LOCK_SHARE_COUNT` decimal(9,0) NOT NULL,
  `LOCK_TIMESTAMP` decimal(19,0) NOT NULL,
  PRIMARY KEY (`EXCL_LOCK_ID`),
  UNIQUE KEY `WMXCLDSTLCK_AK1X` (`EXCL_LOCK_ID`),
  UNIQUE KEY `WMXCLDSTLCK_AKX` (`TARGET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wm_excl_dist_lock`
--

LOCK TABLES `wm_excl_dist_lock` WRITE;
/*!40000 ALTER TABLE `wm_excl_dist_lock` DISABLE KEYS */;
/*!40000 ALTER TABLE `wm_excl_dist_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wm_idr_msg_hst`
--

DROP TABLE IF EXISTS `wm_idr_msg_hst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wm_idr_msg_hst` (
  `TRIGGERNAME` char(28) NOT NULL,
  `UUID` varchar(96) NOT NULL,
  `P_STATE` char(1) NOT NULL,
  `EXP_TIME` decimal(19,0) NOT NULL,
  PRIMARY KEY (`TRIGGERNAME`,`UUID`,`P_STATE`),
  UNIQUE KEY `IDR_MESSAGE_HISTORY_IDX` (`TRIGGERNAME`,`UUID`,`P_STATE`),
  KEY `IDR_MESSAGE_HISTORY_EXP_IDX` (`EXP_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wm_idr_msg_hst`
--

LOCK TABLES `wm_idr_msg_hst` WRITE;
/*!40000 ALTER TABLE `wm_idr_msg_hst` DISABLE KEYS */;
/*!40000 ALTER TABLE `wm_idr_msg_hst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wm_shar_dist_lock`
--

DROP TABLE IF EXISTS `wm_shar_dist_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wm_shar_dist_lock` (
  `SHAR_LOCK_ID` varchar(96) NOT NULL,
  `EXCL_LOCK_ID` varchar(96) NOT NULL,
  `LOCK_HOLDER` varchar(256) NOT NULL,
  `LOCK_TIMESTAMP` decimal(19,0) NOT NULL,
  PRIMARY KEY (`SHAR_LOCK_ID`),
  UNIQUE KEY `WMSHRDSTLCK_AK1X` (`SHAR_LOCK_ID`),
  KEY `WMSHRDSTLCK_IX` (`EXCL_LOCK_ID`),
  CONSTRAINT `WMSHRDSTLCK_WMXCLDSTLCK_FK` FOREIGN KEY (`EXCL_LOCK_ID`) REFERENCES `wm_excl_dist_lock` (`EXCL_LOCK_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wm_shar_dist_lock`
--

LOCK TABLES `wm_shar_dist_lock` WRITE;
/*!40000 ALTER TABLE `wm_shar_dist_lock` DISABLE KEYS */;
/*!40000 ALTER TABLE `wm_shar_dist_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wmdocument`
--

DROP TABLE IF EXISTS `wmdocument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wmdocument` (
  `ROOTCONTEXTID` char(36) NOT NULL,
  `PARENTCONTEXTID` char(36) DEFAULT NULL,
  `CONTEXTID` char(36) DEFAULT NULL,
  `AUDITTIMESTAMP` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `INSERTTIMESTAMP` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `SERVERID` varchar(1040) NOT NULL,
  `MSGID` char(36) NOT NULL,
  `DOCUMENTID` varchar(128) NOT NULL,
  `DOCUMENTNAME` varchar(128) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `ENQUEUETIMESTAMP` timestamp NULL DEFAULT NULL,
  `DOCUMENT` blob,
  `EXTERNALSERVERID` varchar(1040) DEFAULT NULL,
  UNIQUE KEY `IDX_DOC_MSGID` (`MSGID`),
  KEY `IDX_DOC_DOCNAME` (`DOCUMENTNAME`),
  KEY `IDX_DOC_AUDTM` (`AUDITTIMESTAMP`),
  KEY `IDX_DOC_ENQTM` (`DOCUMENTNAME`,`ENQUEUETIMESTAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wmdocument`
--

LOCK TABLES `wmdocument` WRITE;
/*!40000 ALTER TABLE `wmdocument` DISABLE KEYS */;
/*!40000 ALTER TABLE `wmdocument` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wmerror`
--

DROP TABLE IF EXISTS `wmerror`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wmerror` (
  `ROOTCONTEXTID` char(36) NOT NULL,
  `PARENTCONTEXTID` char(36) DEFAULT NULL,
  `CONTEXTID` char(36) DEFAULT NULL,
  `AUDITTIMESTAMP` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `INSERTTIMESTAMP` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `SERVERID` varchar(1040) NOT NULL,
  `MSGID` char(36) NOT NULL,
  `ERRORMESSAGE` varchar(4000) DEFAULT NULL,
  `ERRSTACKTRACE` varchar(4000) DEFAULT NULL,
  `SERVICENAME` varchar(256) DEFAULT NULL,
  `SERVICESTACK` varchar(1024) DEFAULT NULL,
  UNIQUE KEY `IDX_ERR_MSGID` (`MSGID`),
  KEY `IDX_ERR_CID` (`CONTEXTID`),
  KEY `IDX_ERR_SVRID` (`SERVERID`(700)),
  KEY `IDX_ERR_AUDTM` (`AUDITTIMESTAMP`),
  KEY `IDX_ERR_ARC` (`PARENTCONTEXTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wmerror`
--

LOCK TABLES `wmerror` WRITE;
/*!40000 ALTER TABLE `wmerror` DISABLE KEYS */;
/*!40000 ALTER TABLE `wmerror` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wmsecurity`
--

DROP TABLE IF EXISTS `wmsecurity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wmsecurity` (
  `ROOTCONTEXTID` char(36) NOT NULL,
  `PARENTCONTEXTID` char(36) DEFAULT NULL,
  `CONTEXTID` char(36) DEFAULT NULL,
  `AUDITTIMESTAMP` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `INSERTTIMESTAMP` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `SERVERID` varchar(1040) NOT NULL,
  `MSGID` char(36) NOT NULL,
  `CLIENTID` varchar(128) DEFAULT NULL,
  `USERID` varchar(64) NOT NULL,
  `TYPE` varchar(64) DEFAULT NULL,
  `MESSAGE` varchar(512) NOT NULL,
  `RESULT` varchar(32) DEFAULT NULL,
  `CLIENTAPPLICATION` varchar(128) DEFAULT NULL,
  `SERVICENAME` varchar(256) DEFAULT NULL,
  `REQUESTSIZE` int(11) DEFAULT NULL,
  UNIQUE KEY `IDX_SEC_MSGID` (`MSGID`),
  KEY `IDX_SEC_CID` (`CONTEXTID`),
  KEY `IDX_SEC_SVRID` (`SERVERID`(700))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wmsecurity`
--

LOCK TABLES `wmsecurity` WRITE;
/*!40000 ALTER TABLE `wmsecurity` DISABLE KEYS */;
/*!40000 ALTER TABLE `wmsecurity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wmservice`
--

DROP TABLE IF EXISTS `wmservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wmservice` (
  `ROOTCONTEXTID` char(36) NOT NULL,
  `PARENTCONTEXTID` char(36) DEFAULT NULL,
  `CONTEXTID` char(36) DEFAULT NULL,
  `AUDITTIMESTAMP` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `INSERTTIMESTAMP` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `SERVERID` varchar(1040) NOT NULL,
  `MSGID` char(36) NOT NULL,
  `USERID` varchar(64) DEFAULT NULL,
  `RESUBMITTABLE` int(11) DEFAULT NULL,
  `DURATION` int(11) DEFAULT NULL,
  `SERVICENAME` varchar(256) DEFAULT NULL,
  `STATUS` int(11) NOT NULL,
  `ERRORMESSAGE` varchar(1024) DEFAULT NULL,
  `PIPELINE` mediumblob,
  `PIPELINEFLAG` smallint(6) DEFAULT NULL,
  `SYSTEMDATA` blob,
  `SYSTEMDATAFLAG` smallint(6) DEFAULT NULL,
  `CUSTOMCONTEXTID` varchar(512) DEFAULT NULL,
  `AUDITEDPARENTID` char(36) DEFAULT NULL,
  `CLIENTAPPLICATION` varchar(128) DEFAULT NULL,
  UNIQUE KEY `IDX_SVC_MSGID` (`MSGID`),
  KEY `IDX_SVC_CID` (`CONTEXTID`),
  KEY `IDX_SVC_PCID` (`PARENTCONTEXTID`),
  KEY `IDX_SVC_AUDTM` (`AUDITTIMESTAMP`),
  KEY `IDX_SVC_SVCNM` (`SERVICENAME`),
  KEY `IDX_SVC_COM1` (`AUDITTIMESTAMP`,`CONTEXTID`),
  KEY `IDX_SVC_COM2` (`AUDITTIMESTAMP`,`STATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wmservice`
--

LOCK TABLES `wmservice` WRITE;
/*!40000 ALTER TABLE `wmservice` DISABLE KEYS */;
/*!40000 ALTER TABLE `wmservice` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'PIPES_AS_CONCAT,IGNORE_SPACE,NO_KEY_OPTIONS,NO_TABLE_OPTIONS,NO_FIELD_OPTIONS,STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`webm`@`%`*/ /*!50003 TRIGGER WMSERVICE_RAIU
  AFTER INSERT
	ON WMSERVICE
FOR EACH ROW
  BEGIN
	DECLARE prfirststatus INTEGER;
	DECLARE prfirsttime    TIMESTAMP(6);
    DECLARE prlaststatus   INTEGER;
    DECLARE prlasttime     TIMESTAMP(6);
    DECLARE prduration     INTEGER;
    DECLARE prcontextid    NCHAR (36);
    DECLARE newfirststatus INTEGER;
    DECLARE newfirsttime   TIMESTAMP(6);
    DECLARE newlaststatus  INTEGER;
    DECLARE newlasttime    TIMESTAMP(6);
    DECLARE newduration    INTEGER;
    DECLARE newcontextid   NCHAR (36);
	DECLARE DONE INT DEFAULT FALSE;
    DECLARE cur_col1 CURSOR FOR   
    SELECT CONTEXTID, AUDITTIMESTAMP, STATUS,
	   AUDITTIMESTAMP, STATUS, DURATION
    FROM WMSERVICE
    WHERE CONTEXTID = NEW.CONTEXTID
    AND AUDITTIMESTAMP = NEW.AUDITTIMESTAMP;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET DONE = TRUE;
	OPEN cur_col1;
	read_loop: LOOP
	FETCH cur_col1 INTO newcontextid,
	   newfirsttime,
	   newfirststatus,
	   newlasttime,
	   newlaststatus,
	   newduration;
		IF DONE THEN 
			LEAVE read_loop;
		END IF;
           IF newcontextid IS NOT NULL THEN       
              SELECT  CONTEXTID,
					  FIRSTTIME,
					  FIRSTSTATUS,
					  LASTTIME,
					  LASTSTATUS
					 FROM WMSERVICE_MIN_MAX
					 WHERE CONTEXTID = newcontextid
					 INTO prcontextid, prfirsttime, prfirststatus, prlasttime, prlaststatus;
              IF prcontextid IS NULL THEN
                 INSERT INTO WMSERVICE_MIN_MAX
                        (CONTEXTID,
                         FIRSTTIME,
                         FIRSTSTATUS,
                         LASTTIME,
                         LASTSTATUS,
                         DURATION
                        )
                 VALUES (newcontextid,
                         newfirsttime,
                         newfirststatus,
                         newlasttime,
                         newlaststatus,
                         newduration
                        );
             ELSE 
				IF prfirsttime > newfirsttime THEN
				  UPDATE WMSERVICE_MIN_MAX
						SET FIRSTTIME = newfirsttime,
							FIRSTSTATUS = newfirststatus
						WHERE CONTEXTID = newcontextid;
				END IF;
	        IF prlasttime < newlasttime THEN
	          UPDATE WMSERVICE_MIN_MAX
                  SET LASTTIME = newlasttime,
		   DURATION = newduration
                  WHERE CONTEXTID = newcontextid;
            END IF;
		  IF prlaststatus<>newlaststatus THEN
		       UPDATE wmservice_min_max
		       SET laststatus = newlaststatus
		       WHERE contextid = newcontextid;	    	 
                END IF;
		IF prlasttime = newfirsttime THEN
		 IF newlaststatus<>32776 THEN
	          UPDATE wmservice_min_max
	       	  SET lasttime = newlasttime,
		   laststatus = newlaststatus,
		   duration = newduration
	     	  WHERE contextid = newcontextid;
	      END IF;
         END IF;
		 END IF;
		END IF;
     END LOOP read_loop;
        CLOSE cur_col1;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `wmservice4x`
--

DROP TABLE IF EXISTS `wmservice4x`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wmservice4x` (
  `ACTIVATIONID` varchar(300) NOT NULL,
  `AUDITID` char(24) NOT NULL,
  `AUDITTYPE` int(11) NOT NULL,
  `INTEGRATIONNAME` varchar(512) DEFAULT NULL,
  `COMPONENTNAME` varchar(512) DEFAULT NULL,
  `ADAPTERNAME` varchar(128) DEFAULT NULL,
  `ADAPTERTYPE` varchar(128) DEFAULT NULL,
  `DOCUMENTID` varchar(128) DEFAULT NULL,
  `ENQUEUETIMESTAMP` date DEFAULT NULL,
  `SERVERID` varchar(1040) NOT NULL,
  `BRIEFMESSAGE` varchar(240) DEFAULT NULL,
  `FULLMESSAGE` varchar(1024) DEFAULT NULL,
  `AUDITTIMESTAMP` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  KEY `IDX_SVC4X_ACTID` (`ACTIVATIONID`),
  KEY `IDX_SVC4X_INTNAME` (`INTEGRATIONNAME`),
  KEY `IDX_SVC4X_AUDTM` (`AUDITTIMESTAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wmservice4x`
--

LOCK TABLES `wmservice4x` WRITE;
/*!40000 ALTER TABLE `wmservice4x` DISABLE KEYS */;
/*!40000 ALTER TABLE `wmservice4x` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wmservice_min_max`
--

DROP TABLE IF EXISTS `wmservice_min_max`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wmservice_min_max` (
  `CONTEXTID` char(36) NOT NULL,
  `FIRSTTIME` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `FIRSTSTATUS` int(11) NOT NULL,
  `LASTTIME` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `LASTSTATUS` int(11) NOT NULL,
  `DURATION` int(11) DEFAULT NULL,
  KEY `IDX_SVC_MINMAX_CTX` (`CONTEXTID`),
  KEY `IDX_SVC_MINMAX_LTM_CTX` (`LASTTIME`,`CONTEXTID`),
  KEY `IDX_SVC_MINMAX_FTM_STS` (`FIRSTTIME`,`LASTSTATUS`),
  KEY `IDX_SVC_MINMAX_LTM_STS` (`LASTTIME`,`LASTSTATUS`),
  KEY `IDX_SVC_MINMAX_FTM_CTX` (`FIRSTTIME`,`FIRSTSTATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wmservice_min_max`
--

LOCK TABLES `wmservice_min_max` WRITE;
/*!40000 ALTER TABLE `wmservice_min_max` DISABLE KEYS */;
/*!40000 ALTER TABLE `wmservice_min_max` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wmserviceactivitylog`
--

DROP TABLE IF EXISTS `wmserviceactivitylog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wmserviceactivitylog` (
  `ROOTCONTEXTID` char(36) NOT NULL,
  `PARENTCONTEXTID` char(36) DEFAULT NULL,
  `CONTEXTID` char(36) DEFAULT NULL,
  `AUDITTIMESTAMP` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `INSERTTIMESTAMP` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `SERVERID` varchar(1040) NOT NULL,
  `MSGID` char(36) NOT NULL,
  `ENTRYTYPE` int(11) DEFAULT NULL,
  `FULLMESSAGE` varchar(1024) DEFAULT NULL,
  `BRIEFMESSAGE` varchar(240) DEFAULT NULL,
  `B2BUSER` varchar(20) DEFAULT NULL,
  `PROCESSSTEPCONTEXT` char(44) DEFAULT NULL,
  UNIQUE KEY `IDX_SVCACTLOG_MSGID` (`MSGID`),
  KEY `IDX_SVCACTLOG_CID` (`CONTEXTID`),
  KEY `IDX_SVCACTLOG_PRO` (`PROCESSSTEPCONTEXT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wmserviceactivitylog`
--

LOCK TABLES `wmserviceactivitylog` WRITE;
/*!40000 ALTER TABLE `wmserviceactivitylog` DISABLE KEYS */;
/*!40000 ALTER TABLE `wmserviceactivitylog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wmserviceassoc`
--

DROP TABLE IF EXISTS `wmserviceassoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wmserviceassoc` (
  `ROOTCONTEXTID` char(36) NOT NULL,
  `PARENTCONTEXTID` char(36) DEFAULT NULL,
  `CONTEXTID` char(36) DEFAULT NULL,
  `AUDITTIMESTAMP` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `INSERTTIMESTAMP` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `SERVERID` varchar(1040) NOT NULL,
  `MSGID` char(36) NOT NULL,
  `EXTERNALID` varchar(512) NOT NULL,
  UNIQUE KEY `IDX_SVCASSOC_MSGID` (`MSGID`),
  KEY `IDX_SVCASSOC_CID` (`CONTEXTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wmserviceassoc`
--

LOCK TABLES `wmserviceassoc` WRITE;
/*!40000 ALTER TABLE `wmserviceassoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `wmserviceassoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wmservicecustomflds`
--

DROP TABLE IF EXISTS `wmservicecustomflds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wmservicecustomflds` (
  `ROOTCONTEXTID` char(36) NOT NULL,
  `PARENTCONTEXTID` char(36) DEFAULT NULL,
  `CONTEXTID` char(36) DEFAULT NULL,
  `AUDITTIMESTAMP` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `INSERTTIMESTAMP` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `SERVERID` varchar(1040) NOT NULL,
  `MSGID` char(36) NOT NULL,
  `FIELDNAME` varchar(512) NOT NULL,
  `FIELDALIAS` varchar(512) NOT NULL,
  `FIELDINDEX` int(11) DEFAULT NULL,
  `STRINGVALUE` varchar(512) DEFAULT NULL,
  `NUMBERVALUE` double DEFAULT NULL,
  `DATEVALUE` date DEFAULT NULL,
  `FIELDTYPE` smallint(6) DEFAULT '0',
  `INPUTFIELD` smallint(6) NOT NULL DEFAULT '0',
  UNIQUE KEY `IDX_SVCCUSTFLD_MSGID` (`MSGID`),
  KEY `IDX_SVCCUSTFLD_CID` (`CONTEXTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wmservicecustomflds`
--

LOCK TABLES `wmservicecustomflds` WRITE;
/*!40000 ALTER TABLE `wmservicecustomflds` DISABLE KEYS */;
/*!40000 ALTER TABLE `wmservicecustomflds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wmsession`
--

DROP TABLE IF EXISTS `wmsession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wmsession` (
  `ROOTCONTEXTID` char(36) NOT NULL,
  `PARENTCONTEXTID` char(36) DEFAULT NULL,
  `CONTEXTID` char(36) DEFAULT NULL,
  `AUDITTIMESTAMP` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `INSERTTIMESTAMP` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `SERVERID` varchar(1040) NOT NULL,
  `MSGID` char(36) NOT NULL,
  `SESSIONSTATE` int(11) DEFAULT NULL,
  `USERID` varchar(64) DEFAULT NULL,
  `SESSIONNAME` varchar(128) DEFAULT NULL,
  `RPCS` int(11) DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  `SESSIONID` varchar(64) DEFAULT NULL,
  `CLIENTAPPLICATION` varchar(128) DEFAULT NULL,
  UNIQUE KEY `IDX_SESS_MSGID` (`MSGID`),
  KEY `IDX_SESS_SVRID` (`SERVERID`(700)),
  KEY `IDX_SESS_AUDTM` (`AUDITTIMESTAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wmsession`
--

LOCK TABLES `wmsession` WRITE;
/*!40000 ALTER TABLE `wmsession` DISABLE KEYS */;
/*!40000 ALTER TABLE `wmsession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wmtxin`
--

DROP TABLE IF EXISTS `wmtxin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wmtxin` (
  `ROOTCONTEXTID` char(36) NOT NULL,
  `PARENTCONTEXTID` char(36) DEFAULT NULL,
  `CONTEXTID` char(36) DEFAULT NULL,
  `AUDITTIMESTAMP` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `INSERTTIMESTAMP` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `SERVERID` varchar(1040) NOT NULL,
  `MSGID` char(36) NOT NULL,
  `TXSTATUS` bigint(20) DEFAULT NULL,
  `TXMSG` varchar(128) DEFAULT NULL,
  `TXERRMSG` varchar(1024) DEFAULT NULL,
  UNIQUE KEY `IDX_TXIN_MSGID` (`MSGID`),
  KEY `IDX_TXIN_SVRID` (`SERVERID`(700)),
  KEY `IDX_TXIN_AUDTM` (`AUDITTIMESTAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wmtxin`
--

LOCK TABLES `wmtxin` WRITE;
/*!40000 ALTER TABLE `wmtxin` DISABLE KEYS */;
/*!40000 ALTER TABLE `wmtxin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wmtxout`
--

DROP TABLE IF EXISTS `wmtxout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wmtxout` (
  `ROOTCONTEXTID` char(36) NOT NULL,
  `PARENTCONTEXTID` char(36) DEFAULT NULL,
  `CONTEXTID` char(36) DEFAULT NULL,
  `AUDITTIMESTAMP` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `INSERTTIMESTAMP` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `SERVERID` varchar(1040) NOT NULL,
  `MSGID` char(36) NOT NULL,
  `TXSTATUS` bigint(20) DEFAULT NULL,
  `TXMSG` varchar(128) DEFAULT NULL,
  `TXERRMSG` varchar(1024) DEFAULT NULL,
  UNIQUE KEY `IDX_TXOUT_MSGID` (`MSGID`),
  KEY `IDX_TXOUT_SVRID` (`SERVERID`(700)),
  KEY `IDX_TXOUT_AUDTM` (`AUDITTIMESTAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wmtxout`
--

LOCK TABLES `wmtxout` WRITE;
/*!40000 ALTER TABLE `wmtxout` DISABLE KEYS */;
/*!40000 ALTER TABLE `wmtxout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `webm`
--

USE `webm`;

--
-- Final view structure for view `installed_component`
--

/*!50001 DROP VIEW IF EXISTS `installed_component`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`webm`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `installed_component` AS select distinct `component_event`.`COMPONENT_CD` AS `COMPONENT_CD`,`component_event`.`COMPONENT_LEVEL` AS `COMPONENT_LEVEL`,`component_event`.`COMPONENT_DESC` AS `COMPONENT_DESC` from `component_event` where ((`component_event`.`COMPONENT_EVENT` = 'INSTALL') and (not(`component_event`.`COMPONENT_EVENT_ID` in (select `e1`.`COMPONENT_EVENT_ID` from (`component_event` `e1` join `component_event` `e2`) where ((`e1`.`COMPONENT_CD` = `e2`.`COMPONENT_CD`) and (`e1`.`COMPONENT_EVENT_ID` < `e2`.`COMPONENT_EVENT_ID`)))))) */;
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

-- Dump completed on 2020-03-26 12:53:54
