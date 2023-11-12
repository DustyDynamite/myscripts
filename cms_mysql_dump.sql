CREATE DATABASE  IF NOT EXISTS `cms` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cms`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: cms
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
-- Table structure for table `ascost`
--

DROP TABLE IF EXISTS `ascost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ascost` (
  `assetno` char(50) NOT NULL,
  `work_type` char(5) NOT NULL,
  `per1` bigint DEFAULT NULL,
  `per2` bigint DEFAULT NULL,
  `per3` bigint DEFAULT NULL,
  `per4` bigint DEFAULT NULL,
  `per5` bigint DEFAULT NULL,
  `per6` bigint DEFAULT NULL,
  `per7` bigint DEFAULT NULL,
  `per8` bigint DEFAULT NULL,
  `per9` bigint DEFAULT NULL,
  `per10` bigint DEFAULT NULL,
  `per11` bigint DEFAULT NULL,
  `per12` bigint DEFAULT NULL,
  `per13` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ascost`
--

LOCK TABLES `ascost` WRITE;
/*!40000 ALTER TABLE `ascost` DISABLE KEYS */;
/*!40000 ALTER TABLE `ascost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asdr`
--

DROP TABLE IF EXISTS `asdr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asdr` (
  `assetno` char(50) NOT NULL,
  `drawing_file` char(50) DEFAULT NULL,
  `description` text,
  `plant_no` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asdr`
--

LOCK TABLES `asdr` WRITE;
/*!40000 ALTER TABLE `asdr` DISABLE KEYS */;
/*!40000 ALTER TABLE `asdr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aseq`
--

DROP TABLE IF EXISTS `aseq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aseq` (
  `assetno` char(50) NOT NULL,
  `work_area` char(1) DEFAULT NULL,
  `mfg` char(25) DEFAULT NULL,
  `modelno` char(50) DEFAULT NULL,
  `partno` char(25) DEFAULT NULL,
  `supplier` char(25) DEFAULT NULL,
  `eqmtstatus` char(3) DEFAULT NULL,
  `serialno` char(50) DEFAULT NULL,
  `critfactor` char(1) DEFAULT NULL,
  `work_grp` char(15) DEFAULT NULL,
  `mfg_date` datetime DEFAULT NULL,
  `purch_date` datetime DEFAULT NULL,
  `install_date` datetime DEFAULT NULL,
  `overhaul_date` datetime DEFAULT NULL,
  `usage_date` datetime DEFAULT NULL,
  `eqmtusage` bigint DEFAULT NULL,
  `usageuom` char(8) DEFAULT NULL,
  `avg_usage` bigint DEFAULT NULL,
  `read_freq_uom` char(8) DEFAULT NULL,
  `reading_uom` char(8) DEFAULT NULL,
  `downtime` int DEFAULT NULL,
  `repl_cost` bigint DEFAULT NULL,
  `plant_no` char(3) DEFAULT NULL,
  `special_idno` char(25) DEFAULT NULL,
  `reading_freq` int DEFAULT NULL,
  `avail_hrs` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aseq`
--

LOCK TABLES `aseq` WRITE;
/*!40000 ALTER TABLE `aseq` DISABLE KEYS */;
/*!40000 ALTER TABLE `aseq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aseqdn`
--

DROP TABLE IF EXISTS `aseqdn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aseqdn` (
  `assetno` char(50) NOT NULL,
  `out_date` datetime NOT NULL,
  `out_time` int NOT NULL,
  `rts_date` datetime NOT NULL,
  `rts_time` int DEFAULT NULL,
  `downtime` bigint DEFAULT NULL,
  `sched_flag` char(1) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aseqdn`
--

LOCK TABLES `aseqdn` WRITE;
/*!40000 ALTER TABLE `aseqdn` DISABLE KEYS */;
/*!40000 ALTER TABLE `aseqdn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aseqhr`
--

DROP TABLE IF EXISTS `aseqhr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aseqhr` (
  `lvl1_assetno` char(50) NOT NULL,
  `lvl2_assetno` char(50) NOT NULL,
  `lvl3_assetno` char(50) NOT NULL,
  `lvl4_assetno` char(50) NOT NULL,
  `lvl5_assetno` char(50) NOT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aseqhr`
--

LOCK TABLES `aseqhr` WRITE;
/*!40000 ALTER TABLE `aseqhr` DISABLE KEYS */;
/*!40000 ALTER TABLE `aseqhr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aseqps`
--

DROP TABLE IF EXISTS `aseqps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aseqps` (
  `assetno` char(50) NOT NULL,
  `job_date` datetime NOT NULL,
  `from_time` int DEFAULT NULL,
  `to_time` int DEFAULT NULL,
  `joborderno` char(10) NOT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aseqps`
--

LOCK TABLES `aseqps` WRITE;
/*!40000 ALTER TABLE `aseqps` DISABLE KEYS */;
/*!40000 ALTER TABLE `aseqps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aseqpsh`
--

DROP TABLE IF EXISTS `aseqpsh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aseqpsh` (
  `assetno` char(50) NOT NULL,
  `rpt_date` datetime NOT NULL,
  `from_time` int DEFAULT NULL,
  `to_time` int DEFAULT NULL,
  `hours` bigint DEFAULT NULL,
  `joborderno` char(10) NOT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aseqpsh`
--

LOCK TABLES `aseqpsh` WRITE;
/*!40000 ALTER TABLE `aseqpsh` DISABLE KEYS */;
/*!40000 ALTER TABLE `aseqpsh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aseqra`
--

DROP TABLE IF EXISTS `aseqra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aseqra` (
  `assetno` char(50) NOT NULL,
  `eq_rating` bigint DEFAULT NULL,
  `rating_uom` char(8) NOT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aseqra`
--

LOCK TABLES `aseqra` WRITE;
/*!40000 ALTER TABLE `aseqra` DISABLE KEYS */;
/*!40000 ALTER TABLE `aseqra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aseqrd`
--

DROP TABLE IF EXISTS `aseqrd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aseqrd` (
  `assetno` char(50) NOT NULL,
  `reading_date` datetime NOT NULL,
  `reading_value` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aseqrd`
--

LOCK TABLES `aseqrd` WRITE;
/*!40000 ALTER TABLE `aseqrd` DISABLE KEYS */;
/*!40000 ALTER TABLE `aseqrd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asequsg`
--

DROP TABLE IF EXISTS `asequsg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asequsg` (
  `assetno` char(50) NOT NULL,
  `usage_date` datetime NOT NULL,
  `eqmt_usage` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asequsg`
--

LOCK TABLES `asequsg` WRITE;
/*!40000 ALTER TABLE `asequsg` DISABLE KEYS */;
/*!40000 ALTER TABLE `asequsg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asequsgt`
--

DROP TABLE IF EXISTS `asequsgt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asequsgt` (
  `assetno` char(50) NOT NULL,
  `usage_date` datetime NOT NULL,
  `eqmt_usage` bigint DEFAULT NULL,
  `plant_no` char(3) DEFAULT NULL,
  `comments` char(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asequsgt`
--

LOCK TABLES `asequsgt` WRITE;
/*!40000 ALTER TABLE `asequsgt` DISABLE KEYS */;
/*!40000 ALTER TABLE `asequsgt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asfa`
--

DROP TABLE IF EXISTS `asfa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asfa` (
  `assetno` char(50) NOT NULL,
  `facl_code` char(6) DEFAULT NULL,
  `usr1_date` datetime NOT NULL,
  `usr2_date` datetime NOT NULL,
  `usr3_date` datetime NOT NULL,
  `usr4_date` datetime NOT NULL,
  `usr5_date` datetime NOT NULL,
  `leaseno` char(25) DEFAULT NULL,
  `insurance_id` char(25) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `address_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asfa`
--

LOCK TABLES `asfa` WRITE;
/*!40000 ALTER TABLE `asfa` DISABLE KEYS */;
/*!40000 ALTER TABLE `asfa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asfadm`
--

DROP TABLE IF EXISTS `asfadm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asfadm` (
  `dm_category` char(12) NOT NULL,
  `dm_material` char(12) DEFAULT NULL,
  `dm_name` char(30) DEFAULT NULL,
  `dm_location` char(20) DEFAULT NULL,
  `assetno` char(50) DEFAULT NULL,
  `dm_date` datetime NOT NULL,
  `uom` char(8) DEFAULT NULL,
  `dm_quantity` int DEFAULT NULL,
  `dm_tot_cost` bigint DEFAULT NULL,
  `dm_year_1` bigint DEFAULT NULL,
  `dm_year_2` bigint DEFAULT NULL,
  `dm_year_3` bigint DEFAULT NULL,
  `dm_year_4` bigint DEFAULT NULL,
  `dm_year_5` bigint DEFAULT NULL,
  `dm_remarks` char(50) DEFAULT NULL,
  `dm_key` char(74) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asfadm`
--

LOCK TABLES `asfadm` WRITE;
/*!40000 ALTER TABLE `asfadm` DISABLE KEYS */;
/*!40000 ALTER TABLE `asfadm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ashry`
--

DROP TABLE IF EXISTS `ashry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ashry` (
  `user_key` char(50) NOT NULL,
  `assetno` char(50) NOT NULL,
  `assetshortdesc` char(30) DEFAULT NULL,
  `lvlno` int NOT NULL,
  `mfg` char(50) DEFAULT NULL,
  `modelno` char(50) DEFAULT NULL,
  `ltdlabcost` bigint DEFAULT NULL,
  `ltdmtlcost` bigint DEFAULT NULL,
  `ltdconcost` bigint DEFAULT NULL,
  `ytdlabcost` bigint DEFAULT NULL,
  `ytdmtlcost` bigint DEFAULT NULL,
  `ytdconcost` bigint DEFAULT NULL,
  `mtdlabcost` bigint DEFAULT NULL,
  `mtdmtlcost` bigint DEFAULT NULL,
  `mtdconcost` bigint DEFAULT NULL,
  `partno` char(25) NOT NULL,
  `stockno` char(25) DEFAULT NULL,
  `qty_needed` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ashry`
--

LOCK TABLES `ashry` WRITE;
/*!40000 ALTER TABLE `ashry` DISABLE KEYS */;
/*!40000 ALTER TABLE `ashry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asmh`
--

DROP TABLE IF EXISTS `asmh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asmh` (
  `assetno` char(50) NOT NULL,
  `component_id` char(50) DEFAULT NULL,
  `projectid` char(50) DEFAULT NULL,
  `wo` char(11) NOT NULL,
  `flt_code` char(15) DEFAULT NULL,
  `act_code` char(15) DEFAULT NULL,
  `org_date` datetime NOT NULL,
  `cmpl_date` datetime NOT NULL,
  `priority` char(1) DEFAULT NULL,
  `workreq` text,
  `corr_act` text,
  `labcost` bigint DEFAULT NULL,
  `mtlcost` bigint DEFAULT NULL,
  `concost` bigint DEFAULT NULL,
  `ttl_hours` bigint DEFAULT NULL,
  `chg_costcenter` char(50) DEFAULT NULL,
  `crd_costcenter` char(50) DEFAULT NULL,
  `laccount` char(50) DEFAULT NULL,
  `maccount` char(50) DEFAULT NULL,
  `caccount` char(50) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `work_type` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asmh`
--

LOCK TABLES `asmh` WRITE;
/*!40000 ALTER TABLE `asmh` DISABLE KEYS */;
/*!40000 ALTER TABLE `asmh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ast`
--

DROP TABLE IF EXISTS `ast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ast` (
  `assetno` char(50) NOT NULL,
  `asset_type` char(3) DEFAULT NULL,
  `assetshortdesc` char(30) DEFAULT NULL,
  `assetlongdesc` char(250) DEFAULT NULL,
  `assetlocn` char(50) DEFAULT NULL,
  `costcenter` char(50) DEFAULT NULL,
  `assetcost` bigint DEFAULT NULL,
  `mtdlabcost` bigint DEFAULT NULL,
  `mtdmtlcost` bigint DEFAULT NULL,
  `mtdconcost` bigint DEFAULT NULL,
  `ytdlabcost` bigint DEFAULT NULL,
  `ytdmtlcost` bigint DEFAULT NULL,
  `ytdconcost` bigint DEFAULT NULL,
  `ltdlabcost` bigint DEFAULT NULL,
  `ltdmtlcost` bigint DEFAULT NULL,
  `ltdconcost` bigint DEFAULT NULL,
  `parentid` char(50) DEFAULT NULL,
  `warranty_date` datetime DEFAULT NULL,
  `warranty_usage` bigint DEFAULT NULL,
  `deprterm` int DEFAULT NULL,
  `eqhr_level` int DEFAULT NULL,
  `safety_rqmts` text,
  `assetnotes` text,
  `plant_no` char(3) DEFAULT NULL,
  `a_opt1` char(80) DEFAULT NULL,
  `a_opt2` char(80) DEFAULT NULL,
  `a_opt3` char(80) DEFAULT NULL,
  `a_opt4` char(80) DEFAULT NULL,
  `a_opt5` text,
  `a_opt6` char(80) DEFAULT NULL,
  `a_opt7` char(80) DEFAULT NULL,
  `a_opt8` char(80) DEFAULT NULL,
  `a_opt9` char(80) DEFAULT NULL,
  `a_opt10` text,
  `asset_code` char(6) DEFAULT NULL,
  `assetgrpcode` char(15) DEFAULT NULL,
  `maint_ops_no` char(50) DEFAULT NULL,
  `assigned_to` char(25) DEFAULT NULL,
  `critical` char(1) DEFAULT NULL,
  `mastertagno` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ast`
--

LOCK TABLES `ast` WRITE;
/*!40000 ALTER TABLE `ast` DISABLE KEYS */;
/*!40000 ALTER TABLE `ast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `astpsv`
--

DROP TABLE IF EXISTS `astpsv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `astpsv` (
  `assetno` char(50) NOT NULL,
  `mfg_by` char(50) DEFAULT NULL,
  `model` char(50) DEFAULT NULL,
  `valve_type` char(30) DEFAULT NULL,
  `valve_size` char(25) DEFAULT NULL,
  `pres_rating` double DEFAULT NULL,
  `pres_uom` char(10) DEFAULT NULL,
  `setpsi` double DEFAULT NULL,
  `set_uom` char(10) DEFAULT NULL,
  `block_valve` char(1) DEFAULT NULL,
  `qtyinuse` bigint DEFAULT NULL,
  `psv1` double DEFAULT NULL,
  `psv2` double DEFAULT NULL,
  `psv3` double DEFAULT NULL,
  `psv4` double DEFAULT NULL,
  `psv5` double DEFAULT NULL,
  `psv6` double DEFAULT NULL,
  `psv7` double DEFAULT NULL,
  `psv8` double DEFAULT NULL,
  `psv9` double DEFAULT NULL,
  `plant_no` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `astpsv`
--

LOCK TABLES `astpsv` WRITE;
/*!40000 ALTER TABLE `astpsv` DISABLE KEYS */;
/*!40000 ALTER TABLE `astpsv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asve`
--

DROP TABLE IF EXISTS `asve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asve` (
  `assetno` char(50) NOT NULL,
  `license_no` char(20) DEFAULT NULL,
  `vehicle_id` char(20) DEFAULT NULL,
  `serial_no` char(50) DEFAULT NULL,
  `registration_no` char(20) DEFAULT NULL,
  `model` char(50) DEFAULT NULL,
  `mfg_date` datetime DEFAULT NULL,
  `overhaul_date` datetime DEFAULT NULL,
  `install_date` datetime DEFAULT NULL,
  `mfg` char(25) DEFAULT NULL,
  `supplier` char(25) DEFAULT NULL,
  `reg_exp_date` datetime DEFAULT NULL,
  `make` char(15) DEFAULT NULL,
  `model_year` int DEFAULT NULL,
  `classification` char(15) DEFAULT NULL,
  `ignition_key_code` char(10) DEFAULT NULL,
  `opr_lic_class` char(15) DEFAULT NULL,
  `gvwr` int DEFAULT NULL,
  `avg_usage` int DEFAULT NULL,
  `usage_date` datetime DEFAULT NULL,
  `usage_uom` char(8) DEFAULT NULL,
  `repl_cost` bigint DEFAULT NULL,
  `veh_status` char(3) DEFAULT NULL,
  `tire_size` char(10) DEFAULT NULL,
  `gross_weight` int DEFAULT NULL,
  `plant_no` char(3) DEFAULT NULL,
  `vehusage` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asve`
--

LOCK TABLES `asve` WRITE;
/*!40000 ALTER TABLE `asve` DISABLE KEYS */;
/*!40000 ALTER TABLE `asve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctshunt`
--

DROP TABLE IF EXISTS `ctshunt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ctshunt` (
  `shunt_no` bigint DEFAULT NULL,
  `read_date` datetime DEFAULT NULL,
  `reading_value` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctshunt`
--

LOCK TABLES `ctshunt` WRITE;
/*!40000 ALTER TABLE `ctshunt` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctshunt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbver`
--

DROP TABLE IF EXISTS `dbver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbver` (
  `ver` decimal(6,4) NOT NULL,
  `com` char(254) NOT NULL,
  `v_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbver`
--

LOCK TABLES `dbver` WRITE;
/*!40000 ALTER TABLE `dbver` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em`
--

DROP TABLE IF EXISTS `em`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `em` (
  `empl_id` char(25) NOT NULL,
  `name` char(50) DEFAULT NULL,
  `title` char(20) DEFAULT NULL,
  `nid` char(25) DEFAULT NULL,
  `status` char(3) NOT NULL,
  `supv_empl_id` char(25) DEFAULT NULL,
  `exempt` char(1) DEFAULT NULL,
  `datetimeofhire` datetime DEFAULT NULL,
  `probation_per` int DEFAULT NULL,
  `datetimeofterm` datetime DEFAULT NULL,
  `eth` char(1) DEFAULT NULL,
  `costcenter` char(50) DEFAULT NULL,
  `account` char(50) DEFAULT NULL,
  `shift` char(1) DEFAULT NULL,
  `ot_worked` bigint DEFAULT NULL,
  `ot_refused` bigint DEFAULT NULL,
  `purch_person` char(1) DEFAULT NULL,
  `work_area` char(1) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `craft` char(3) DEFAULT NULL,
  `work_grp` char(15) DEFAULT NULL,
  `dsp_module` char(15) DEFAULT NULL,
  `email_id` char(25) DEFAULT NULL,
  `chargerate` bigint DEFAULT NULL,
  `empnote` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em`
--

LOCK TABLES `em` WRITE;
/*!40000 ALTER TABLE `em` DISABLE KEYS */;
/*!40000 ALTER TABLE `em` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emcal`
--

DROP TABLE IF EXISTS `emcal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emcal` (
  `empl_id` char(25) NOT NULL,
  `january` char(31) DEFAULT NULL,
  `february` char(29) DEFAULT NULL,
  `march` char(31) DEFAULT NULL,
  `april` char(30) DEFAULT NULL,
  `may` char(31) DEFAULT NULL,
  `june` char(30) DEFAULT NULL,
  `july` char(31) DEFAULT NULL,
  `august` char(31) DEFAULT NULL,
  `september` char(30) DEFAULT NULL,
  `october` char(31) DEFAULT NULL,
  `november` char(30) DEFAULT NULL,
  `december` char(31) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emcal`
--

LOCK TABLES `emcal` WRITE;
/*!40000 ALTER TABLE `emcal` DISABLE KEYS */;
/*!40000 ALTER TABLE `emcal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emcr`
--

DROP TABLE IF EXISTS `emcr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emcr` (
  `empl_id` char(25) NOT NULL,
  `craft` char(3) NOT NULL,
  `payrate` bigint DEFAULT NULL,
  `supv_id` char(25) DEFAULT NULL,
  `chargerate` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emcr`
--

LOCK TABLES `emcr` WRITE;
/*!40000 ALTER TABLE `emcr` DISABLE KEYS */;
/*!40000 ALTER TABLE `emcr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emct`
--

DROP TABLE IF EXISTS `emct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emct` (
  `empl_id` char(25) NOT NULL,
  `datetime_in` datetime NOT NULL,
  `datetime_out` datetime NOT NULL,
  `time_in` int NOT NULL,
  `time_out` int DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `hours` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emct`
--

LOCK TABLES `emct` WRITE;
/*!40000 ALTER TABLE `emct` DISABLE KEYS */;
/*!40000 ALTER TABLE `emct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emcttmp`
--

DROP TABLE IF EXISTS `emcttmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emcttmp` (
  `empl_id` char(25) NOT NULL,
  `datetime_in` datetime NOT NULL,
  `datetime_out` datetime NOT NULL,
  `time_in` int NOT NULL,
  `time_out` int DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `hours` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emcttmp`
--

LOCK TABLES `emcttmp` WRITE;
/*!40000 ALTER TABLE `emcttmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `emcttmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emdl`
--

DROP TABLE IF EXISTS `emdl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emdl` (
  `empl_id` char(25) NOT NULL,
  `delay_code` char(2) NOT NULL,
  `wo` char(11) DEFAULT NULL,
  `dly_hrs` double NOT NULL,
  `dly_date` datetime NOT NULL,
  `chg_costcenter` char(50) DEFAULT NULL,
  `chg_account` char(50) DEFAULT NULL,
  `crd_costcenter` char(50) DEFAULT NULL,
  `crd_account` char(50) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `ovrhd_cost` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emdl`
--

LOCK TABLES `emdl` WRITE;
/*!40000 ALTER TABLE `emdl` DISABLE KEYS */;
/*!40000 ALTER TABLE `emdl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emdltmp`
--

DROP TABLE IF EXISTS `emdltmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emdltmp` (
  `empl_id` char(25) NOT NULL,
  `delay_code` char(2) NOT NULL,
  `wo` char(11) DEFAULT NULL,
  `dly_hrs` double NOT NULL,
  `dly_date` datetime NOT NULL,
  `chg_costcenter` char(50) DEFAULT NULL,
  `chg_account` char(50) DEFAULT NULL,
  `crd_costcenter` char(50) DEFAULT NULL,
  `crd_account` char(50) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `login_id` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emdltmp`
--

LOCK TABLES `emdltmp` WRITE;
/*!40000 ALTER TABLE `emdltmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `emdltmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emhi`
--

DROP TABLE IF EXISTS `emhi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emhi` (
  `empl_id` char(25) NOT NULL,
  `payrate` bigint DEFAULT NULL,
  `craft` char(3) DEFAULT NULL,
  `supv_id` char(25) DEFAULT NULL,
  `status` char(3) DEFAULT NULL,
  `effective_date` datetime NOT NULL,
  `remarks` char(50) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emhi`
--

LOCK TABLES `emhi` WRITE;
/*!40000 ALTER TABLE `emhi` DISABLE KEYS */;
/*!40000 ALTER TABLE `emhi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emlp`
--

DROP TABLE IF EXISTS `emlp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emlp` (
  `empl_id` char(25) NOT NULL,
  `craft` char(3) DEFAULT NULL,
  `supv_empl_id` char(25) DEFAULT NULL,
  `shift` char(1) DEFAULT NULL,
  `hours_type` char(2) DEFAULT NULL,
  `work_area` char(1) DEFAULT NULL,
  `strt_date` datetime NOT NULL,
  `strt_time` int DEFAULT NULL,
  `last_asg_date` datetime NOT NULL,
  `last_asg_time` int DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emlp`
--

LOCK TABLES `emlp` WRITE;
/*!40000 ALTER TABLE `emlp` DISABLE KEYS */;
/*!40000 ALTER TABLE `emlp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emnt`
--

DROP TABLE IF EXISTS `emnt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emnt` (
  `empl_id` char(25) NOT NULL,
  `vacn_per_period` bigint DEFAULT NULL,
  `sick_per_period` bigint DEFAULT NULL,
  `pdlv_per_period` bigint DEFAULT NULL,
  `vacn_balance` bigint DEFAULT NULL,
  `sick_balance` bigint DEFAULT NULL,
  `pdlv_balance` bigint DEFAULT NULL,
  `cum_unexcused` bigint DEFAULT NULL,
  `posting_date` datetime NOT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emnt`
--

LOCK TABLES `emnt` WRITE;
/*!40000 ALTER TABLE `emnt` DISABLE KEYS */;
/*!40000 ALTER TABLE `emnt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emntd`
--

DROP TABLE IF EXISTS `emntd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emntd` (
  `empl_id` char(25) NOT NULL,
  `hrs_date` datetime NOT NULL,
  `hours_type` char(2) NOT NULL,
  `hours` bigint DEFAULT NULL,
  `chg_costcenter` char(50) NOT NULL,
  `chg_account` char(50) DEFAULT NULL,
  `crd_costcenter` char(50) DEFAULT NULL,
  `crd_account` char(50) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emntd`
--

LOCK TABLES `emntd` WRITE;
/*!40000 ALTER TABLE `emntd` DISABLE KEYS */;
/*!40000 ALTER TABLE `emntd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emnttmp`
--

DROP TABLE IF EXISTS `emnttmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emnttmp` (
  `empl_id` char(25) NOT NULL,
  `hrs_date` datetime NOT NULL,
  `hours_type` char(2) NOT NULL,
  `hours` bigint DEFAULT NULL,
  `chg_costcenter` char(50) NOT NULL,
  `chg_account` char(50) DEFAULT NULL,
  `crd_costcenter` char(50) DEFAULT NULL,
  `crd_account` char(50) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `login_id` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emnttmp`
--

LOCK TABLES `emnttmp` WRITE;
/*!40000 ALTER TABLE `emnttmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `emnttmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emoteq`
--

DROP TABLE IF EXISTS `emoteq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emoteq` (
  `empl_id` char(25) NOT NULL,
  `offered_date` datetime NOT NULL,
  `work_date` datetime NOT NULL,
  `hours_offered` bigint DEFAULT NULL,
  `supv_empl_id` char(25) DEFAULT NULL,
  `hours_worked` bigint DEFAULT NULL,
  `hours_refused` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emoteq`
--

LOCK TABLES `emoteq` WRITE;
/*!40000 ALTER TABLE `emoteq` DISABLE KEYS */;
/*!40000 ALTER TABLE `emoteq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empa`
--

DROP TABLE IF EXISTS `empa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empa` (
  `empl_id` char(25) NOT NULL,
  `costcenter` char(50) NOT NULL,
  `low_range` bigint DEFAULT NULL,
  `high_range` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empa`
--

LOCK TABLES `empa` WRITE;
/*!40000 ALTER TABLE `empa` DISABLE KEYS */;
/*!40000 ALTER TABLE `empa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empe`
--

DROP TABLE IF EXISTS `empe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empe` (
  `empl_id` char(25) NOT NULL,
  `payrate` bigint DEFAULT NULL,
  `pay_period` char(10) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `datetime_of_birth` datetime NOT NULL,
  `marital_status` char(1) DEFAULT NULL,
  `insurance_id` char(25) DEFAULT NULL,
  `address_id` int DEFAULT NULL,
  `homephone` char(20) DEFAULT NULL,
  `emg_name` char(25) DEFAULT NULL,
  `emg_phone` char(20) DEFAULT NULL,
  `ira_idno` char(15) DEFAULT NULL,
  `remarks` text,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empe`
--

LOCK TABLES `empe` WRITE;
/*!40000 ALTER TABLE `empe` DISABLE KEYS */;
/*!40000 ALTER TABLE `empe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empex`
--

DROP TABLE IF EXISTS `empex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empex` (
  `empl_id` char(25) NOT NULL,
  `exemption_type` char(7) NOT NULL,
  `exemptions` int DEFAULT NULL,
  `fixed_amt` bigint DEFAULT NULL,
  `pct_amt` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empex`
--

LOCK TABLES `empex` WRITE;
/*!40000 ALTER TABLE `empex` DISABLE KEYS */;
/*!40000 ALTER TABLE `empex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empic`
--

DROP TABLE IF EXISTS `empic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empic` (
  `empl_id` char(25) NOT NULL,
  `picture_file` char(50) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empic`
--

LOCK TABLES `empic` WRITE;
/*!40000 ALTER TABLE `empic` DISABLE KEYS */;
/*!40000 ALTER TABLE `empic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empt`
--

DROP TABLE IF EXISTS `empt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empt` (
  `empl_id` char(25) NOT NULL,
  `rpt_date` datetime NOT NULL,
  `hours_type` char(2) NOT NULL,
  `wo` char(11) NOT NULL,
  `activity_code` char(25) NOT NULL,
  `craft` char(3) NOT NULL,
  `hours` double NOT NULL,
  `rate` bigint DEFAULT NULL,
  `supv_id` char(25) DEFAULT NULL,
  `act_cost` bigint DEFAULT NULL,
  `chg_costcenter` char(50) DEFAULT NULL,
  `chg_account` char(50) DEFAULT NULL,
  `crd_costcenter` char(50) DEFAULT NULL,
  `crd_account` char(50) DEFAULT NULL,
  `work_grp` char(15) DEFAULT NULL,
  `lvl1org` char(50) DEFAULT NULL,
  `lvl2org` char(50) DEFAULT NULL,
  `lvl3org` char(50) DEFAULT NULL,
  `lvl4org` char(50) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `assetno` char(50) DEFAULT NULL,
  `work_type` char(5) DEFAULT NULL,
  `ovrhd_cost` bigint DEFAULT NULL,
  `login_id` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empt`
--

LOCK TABLES `empt` WRITE;
/*!40000 ALTER TABLE `empt` DISABLE KEYS */;
/*!40000 ALTER TABLE `empt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empttmp`
--

DROP TABLE IF EXISTS `empttmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empttmp` (
  `empl_id` char(25) NOT NULL,
  `rpt_date` datetime NOT NULL,
  `hours_type` char(2) NOT NULL,
  `wo` char(11) NOT NULL,
  `activity_code` char(25) NOT NULL,
  `craft` char(3) NOT NULL,
  `hours` bigint NOT NULL,
  `supv_id` char(25) DEFAULT NULL,
  `rate` bigint DEFAULT NULL,
  `act_cost` bigint DEFAULT NULL,
  `chg_costcenter` char(50) DEFAULT NULL,
  `chg_account` char(50) DEFAULT NULL,
  `crd_costcenter` char(50) DEFAULT NULL,
  `crd_account` char(50) DEFAULT NULL,
  `work_grp` char(15) DEFAULT NULL,
  `lvl1org` char(50) DEFAULT NULL,
  `lvl4org` char(50) DEFAULT NULL,
  `lvl2org` char(50) DEFAULT NULL,
  `lvl3org` char(50) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `assetno` char(50) DEFAULT NULL,
  `work_type` char(5) DEFAULT NULL,
  `login_id` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empttmp`
--

LOCK TABLES `empttmp` WRITE;
/*!40000 ALTER TABLE `empttmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `empttmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emta`
--

DROP TABLE IF EXISTS `emta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emta` (
  `empl_id` char(25) NOT NULL,
  `rpt_date` datetime NOT NULL,
  `wo` char(11) NOT NULL,
  `activity_code` char(25) NOT NULL,
  `craft` char(3) NOT NULL,
  `hours_type` char(2) NOT NULL,
  `hours` bigint DEFAULT NULL,
  `rate` bigint DEFAULT NULL,
  `act_cost` bigint DEFAULT NULL,
  `chg_costcenter` char(50) DEFAULT NULL,
  `chg_account` char(50) DEFAULT NULL,
  `crd_costcenter` char(50) DEFAULT NULL,
  `crd_account` char(50) DEFAULT NULL,
  `time_in` int DEFAULT NULL,
  `time_out` int DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emta`
--

LOCK TABLES `emta` WRITE;
/*!40000 ALTER TABLE `emta` DISABLE KEYS */;
/*!40000 ALTER TABLE `emta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emth`
--

DROP TABLE IF EXISTS `emth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emth` (
  `empl_id` char(25) NOT NULL,
  `rpt_date` datetime NOT NULL,
  `wo` char(11) NOT NULL,
  `activity_code` char(25) NOT NULL,
  `craft` char(3) NOT NULL,
  `hours_type` char(2) NOT NULL,
  `hours` double NOT NULL,
  `rate` bigint DEFAULT NULL,
  `act_cost` bigint DEFAULT NULL,
  `chg_costcenter` char(50) DEFAULT NULL,
  `chg_account` char(50) DEFAULT NULL,
  `crd_costcenter` char(50) DEFAULT NULL,
  `crd_account` char(50) DEFAULT NULL,
  `time_in` int DEFAULT NULL,
  `time_out` int DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emth`
--

LOCK TABLES `emth` WRITE;
/*!40000 ALTER TABLE `emth` DISABLE KEYS */;
/*!40000 ALTER TABLE `emth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emtr`
--

DROP TABLE IF EXISTS `emtr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emtr` (
  `empl_id` char(25) NOT NULL,
  `course_id` char(10) NOT NULL,
  `datetime_cmpl` datetime NOT NULL,
  `ranking` char(10) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emtr`
--

LOCK TABLES `emtr` WRITE;
/*!40000 ALTER TABLE `emtr` DISABLE KEYS */;
/*!40000 ALTER TABLE `emtr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emws`
--

DROP TABLE IF EXISTS `emws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emws` (
  `empl_id` char(25) NOT NULL,
  `sched_date` datetime NOT NULL,
  `sched_time` int NOT NULL,
  `sched_hrs` bigint DEFAULT NULL,
  `wo` char(11) NOT NULL,
  `activity_code` char(25) NOT NULL,
  `craft` char(3) NOT NULL,
  `course_id` char(10) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `scheduled` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emws`
--

LOCK TABLES `emws` WRITE;
/*!40000 ALTER TABLE `emws` DISABLE KEYS */;
/*!40000 ALTER TABLE `emws` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mgt_ccnt`
--

DROP TABLE IF EXISTS `mgt_ccnt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mgt_ccnt` (
  `assetno` char(50) DEFAULT NULL,
  `assetshortdesc` char(30) DEFAULT NULL,
  `assetcost` bigint DEFAULT NULL,
  `ltdttlcost` bigint DEFAULT NULL,
  `lab_cost` bigint DEFAULT NULL,
  `mtl_cost` bigint DEFAULT NULL,
  `con_cost` bigint DEFAULT NULL,
  `wototalcost` bigint DEFAULT NULL,
  `wocount` int DEFAULT NULL,
  `login_id` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mgt_ccnt`
--

LOCK TABLES `mgt_ccnt` WRITE;
/*!40000 ALTER TABLE `mgt_ccnt` DISABLE KEYS */;
/*!40000 ALTER TABLE `mgt_ccnt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mgt_cpct`
--

DROP TABLE IF EXISTS `mgt_cpct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mgt_cpct` (
  `assetno` char(50) DEFAULT NULL,
  `assetshortdesc` char(30) DEFAULT NULL,
  `assetcost` bigint DEFAULT NULL,
  `ltdttlcost` bigint DEFAULT NULL,
  `lab_cost` bigint DEFAULT NULL,
  `mtl_cost` bigint DEFAULT NULL,
  `con_cost` bigint DEFAULT NULL,
  `wototalcost` bigint DEFAULT NULL,
  `wocount` int DEFAULT NULL,
  `login_id` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mgt_cpct`
--

LOCK TABLES `mgt_cpct` WRITE;
/*!40000 ALTER TABLE `mgt_cpct` DISABLE KEYS */;
/*!40000 ALTER TABLE `mgt_cpct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mgt_eqdn`
--

DROP TABLE IF EXISTS `mgt_eqdn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mgt_eqdn` (
  `login_id` char(25) DEFAULT NULL,
  `assetno` char(50) DEFAULT NULL,
  `assetshortdesc` char(80) DEFAULT NULL,
  `avail_hrs` bigint DEFAULT NULL,
  `sched_hrs` bigint DEFAULT NULL,
  `nonsched_hrs` bigint DEFAULT NULL,
  `out_date` datetime NOT NULL,
  `out_time` int DEFAULT NULL,
  `rts_date` datetime NOT NULL,
  `rts_time` int DEFAULT NULL,
  `sched_flag` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mgt_eqdn`
--

LOCK TABLES `mgt_eqdn` WRITE;
/*!40000 ALTER TABLE `mgt_eqdn` DISABLE KEYS */;
/*!40000 ALTER TABLE `mgt_eqdn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mgt_tmp1`
--

DROP TABLE IF EXISTS `mgt_tmp1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mgt_tmp1` (
  `assetno` char(50) DEFAULT NULL,
  `assetshortdesc` char(30) DEFAULT NULL,
  `assetcost` bigint DEFAULT NULL,
  `ltdttlcost` bigint DEFAULT NULL,
  `lab_cost` bigint DEFAULT NULL,
  `mtl_cost` bigint DEFAULT NULL,
  `con_cost` bigint DEFAULT NULL,
  `wototalcost` bigint DEFAULT NULL,
  `wocount` int DEFAULT NULL,
  `login_id` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mgt_tmp1`
--

LOCK TABLES `mgt_tmp1` WRITE;
/*!40000 ALTER TABLE `mgt_tmp1` DISABLE KEYS */;
/*!40000 ALTER TABLE `mgt_tmp1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mrmr`
--

DROP TABLE IF EXISTS `mrmr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mrmr` (
  `mtlrqnnum` int NOT NULL,
  `assetno` char(50) DEFAULT NULL,
  `costcenter` char(50) DEFAULT NULL,
  `maccount` char(50) DEFAULT NULL,
  `org_date` datetime NOT NULL,
  `req_date` datetime NOT NULL,
  `cmpl_date` datetime NOT NULL,
  `plant_no` char(3) NOT NULL,
  `wo` char(11) DEFAULT NULL,
  `requester` char(25) DEFAULT NULL,
  `entered_by` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mrmr`
--

LOCK TABLES `mrmr` WRITE;
/*!40000 ALTER TABLE `mrmr` DISABLE KEYS */;
/*!40000 ALTER TABLE `mrmr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mrmrd`
--

DROP TABLE IF EXISTS `mrmrd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mrmrd` (
  `mtlrqnnum` int NOT NULL,
  `mtlrqn_lineno` int NOT NULL,
  `stockno` char(25) DEFAULT NULL,
  `stk_locn` char(20) DEFAULT NULL,
  `description` text,
  `req_qty` bigint DEFAULT NULL,
  `rcv_qty` bigint DEFAULT NULL,
  `bo_qty` bigint DEFAULT NULL,
  `item_cost` bigint DEFAULT NULL,
  `wo` char(11) DEFAULT NULL,
  `activity_code` char(25) DEFAULT NULL,
  `mkey` char(25) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `pono` char(50) DEFAULT NULL,
  `po_lineno` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mrmrd`
--

LOCK TABLES `mrmrd` WRITE;
/*!40000 ALTER TABLE `mrmrd` DISABLE KEYS */;
/*!40000 ALTER TABLE `mrmrd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mrpr`
--

DROP TABLE IF EXISTS `mrpr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mrpr` (
  `stockno` char(25) NOT NULL,
  `joborderno` char(10) NOT NULL,
  `req_qty` bigint DEFAULT NULL,
  `req_date` datetime NOT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mrpr`
--

LOCK TABLES `mrpr` WRITE;
/*!40000 ALTER TABLE `mrpr` DISABLE KEYS */;
/*!40000 ALTER TABLE `mrpr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mscatcol`
--

DROP TABLE IF EXISTS `mscatcol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mscatcol` (
  `pbc_cnam` char(129) NOT NULL,
  `pbc_orglabl` char(254) DEFAULT NULL,
  `pbc_labl` char(254) NOT NULL,
  `pbc_orghdr` char(254) DEFAULT NULL,
  `pbc_hdr` char(254) NOT NULL,
  `chg_flag` char(1) NOT NULL,
  `pbc_ctype` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mscatcol`
--

LOCK TABLES `mscatcol` WRITE;
/*!40000 ALTER TABLE `mscatcol` DISABLE KEYS */;
/*!40000 ALTER TABLE `mscatcol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mscolind`
--

DROP TABLE IF EXISTS `mscolind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mscolind` (
  `dw_name` char(40) NOT NULL,
  `pbc_cnam` char(129) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mscolind`
--

LOCK TABLES `mscolind` WRITE;
/*!40000 ALTER TABLE `mscolind` DISABLE KEYS */;
/*!40000 ALTER TABLE `mscolind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mscols`
--

DROP TABLE IF EXISTS `mscols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mscols` (
  `cname` char(20) DEFAULT NULL,
  `ctype` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mscols`
--

LOCK TABLES `mscols` WRITE;
/*!40000 ALTER TABLE `mscols` DISABLE KEYS */;
/*!40000 ALTER TABLE `mscols` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtcs`
--

DROP TABLE IF EXISTS `mtcs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtcs` (
  `grn_no` char(50) NOT NULL,
  `grn_itm_no` int NOT NULL,
  `mkey` char(25) DEFAULT NULL,
  `rcv_qty` double DEFAULT NULL,
  `rcv_date` datetime NOT NULL,
  `rcv_time` int DEFAULT NULL,
  `rcv_empl_id` char(25) DEFAULT NULL,
  `pono` char(50) DEFAULT NULL,
  `po_lineno` int DEFAULT NULL,
  `isu_qty` double DEFAULT NULL,
  `rcv_cost` double DEFAULT NULL,
  `inv_cost` double DEFAULT NULL,
  `nonstkitm` char(1) DEFAULT NULL,
  `inv_qty` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtcs`
--

LOCK TABLES `mtcs` WRITE;
/*!40000 ALTER TABLE `mtcs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mtcs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtintf`
--

DROP TABLE IF EXISTS `mtintf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtintf` (
  `xn_type` char(5) DEFAULT NULL,
  `stockno` char(25) NOT NULL,
  `description` char(80) DEFAULT NULL,
  `partno` char(25) DEFAULT NULL,
  `item_cost` double DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `usg_date` datetime NOT NULL,
  `usg_time` int NOT NULL,
  `mtlrqnnum` int DEFAULT NULL,
  `wo` char(11) DEFAULT NULL,
  `activity_code` char(25) DEFAULT NULL,
  `mkey` char(25) DEFAULT NULL,
  `assetno` char(50) DEFAULT NULL,
  `chg_costcenter` char(50) DEFAULT NULL,
  `chg_account` char(50) DEFAULT NULL,
  `crd_costcenter` char(50) DEFAULT NULL,
  `crd_account` char(50) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtintf`
--

LOCK TABLES `mtintf` WRITE;
/*!40000 ALTER TABLE `mtintf` DISABLE KEYS */;
/*!40000 ALTER TABLE `mtintf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtns`
--

DROP TABLE IF EXISTS `mtns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtns` (
  `description` char(80) NOT NULL,
  `stk_locn` char(20) NOT NULL,
  `oh_qty` double NOT NULL,
  `partno` char(25) DEFAULT NULL,
  `supplier` char(25) DEFAULT NULL,
  `pono` char(50) DEFAULT NULL,
  `po_lineno` int DEFAULT NULL,
  `mtlrqnnum` int DEFAULT NULL,
  `mtlrqn_lineno` int DEFAULT NULL,
  `item_cost` bigint DEFAULT NULL,
  `uom` char(8) DEFAULT NULL,
  `rcv_date` datetime NOT NULL,
  `chg_costcenter` char(50) DEFAULT NULL,
  `chg_account` char(50) DEFAULT NULL,
  `crd_costcenter` char(50) DEFAULT NULL,
  `crd_account` char(50) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `create_time` int NOT NULL,
  `locn_cat` char(20) NOT NULL,
  `plant_no` char(3) NOT NULL,
  `mkey` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtns`
--

LOCK TABLES `mtns` WRITE;
/*!40000 ALTER TABLE `mtns` DISABLE KEYS */;
/*!40000 ALTER TABLE `mtns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtpm`
--

DROP TABLE IF EXISTS `mtpm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtpm` (
  `stockno` char(25) NOT NULL,
  `description` char(80) DEFAULT NULL,
  `com_code` char(25) DEFAULT NULL,
  `partno` char(25) DEFAULT NULL,
  `ext_description` text,
  `stk_loc` char(25) DEFAULT NULL,
  `ttl_oh` bigint DEFAULT NULL,
  `ttl_soft_resrv` bigint DEFAULT NULL,
  `ttl_hard_resrv` bigint DEFAULT NULL,
  `ttl_short` bigint DEFAULT NULL,
  `item_cost` bigint DEFAULT NULL,
  `issue_price` bigint DEFAULT NULL,
  `costcenter` char(50) DEFAULT NULL,
  `account` char(50) DEFAULT NULL,
  `acct_type` char(1) DEFAULT NULL,
  `order_pt` bigint DEFAULT NULL,
  `minimum` bigint DEFAULT NULL,
  `maximum` bigint DEFAULT NULL,
  `issue_uom` char(8) DEFAULT NULL,
  `rcv_uom` char(8) DEFAULT NULL,
  `eoq` bigint DEFAULT NULL,
  `order_rule1` char(1) DEFAULT NULL,
  `order_rule2` char(1) DEFAULT NULL,
  `order_rule3` char(1) DEFAULT NULL,
  `cube` bigint DEFAULT NULL,
  `storage_type` char(2) DEFAULT NULL,
  `abc_class` char(1) DEFAULT NULL,
  `lastcntdatetime` datetime DEFAULT NULL,
  `count_freq` int DEFAULT NULL,
  `lastactdatetime` datetime DEFAULT NULL,
  `shelf_life` int DEFAULT NULL,
  `ytd_usage` bigint DEFAULT NULL,
  `lastyr_usage` bigint DEFAULT NULL,
  `avg_leadtime` int DEFAULT NULL,
  `ytd_turns` int DEFAULT NULL,
  `lastyr_turns` int DEFAULT NULL,
  `ytd_stockouts` int DEFAULT NULL,
  `lastyr_stkouts` int DEFAULT NULL,
  `taxable` char(1) DEFAULT NULL,
  `std_cost` bigint DEFAULT NULL,
  `avg_cost` bigint DEFAULT NULL,
  `last_cost` bigint DEFAULT NULL,
  `due_in` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `critical_spare` char(1) DEFAULT NULL,
  `cr_code` char(10) DEFAULT NULL,
  `safestk_level` bigint DEFAULT NULL,
  `rec_supplier` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtpm`
--

LOCK TABLES `mtpm` WRITE;
/*!40000 ALTER TABLE `mtpm` DISABLE KEYS */;
/*!40000 ALTER TABLE `mtpm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtpmcb`
--

DROP TABLE IF EXISTS `mtpmcb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtpmcb` (
  `book_id` char(1) NOT NULL,
  `last_cr_date` datetime NOT NULL,
  `last_recon_date` datetime NOT NULL,
  `description` char(40) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtpmcb`
--

LOCK TABLES `mtpmcb` WRITE;
/*!40000 ALTER TABLE `mtpmcb` DISABLE KEYS */;
/*!40000 ALTER TABLE `mtpmcb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtpmcf`
--

DROP TABLE IF EXISTS `mtpmcf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtpmcf` (
  `book_id` char(1) NOT NULL,
  `stockno` char(25) NOT NULL,
  `stk_locn` char(20) DEFAULT NULL,
  `oh_qty` bigint DEFAULT NULL,
  `item_count` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtpmcf`
--

LOCK TABLES `mtpmcf` WRITE;
/*!40000 ALTER TABLE `mtpmcf` DISABLE KEYS */;
/*!40000 ALTER TABLE `mtpmcf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtpmd`
--

DROP TABLE IF EXISTS `mtpmd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtpmd` (
  `stockno` char(25) NOT NULL,
  `stk_locn` char(20) NOT NULL,
  `partno` char(25) DEFAULT NULL,
  `special_idno` char(25) DEFAULT NULL,
  `oh_qty` bigint DEFAULT NULL,
  `item_cost` bigint DEFAULT NULL,
  `costcenter` char(50) DEFAULT NULL,
  `account` char(50) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `lastactdatetime` datetime NOT NULL,
  `lastcntdatetime` datetime NOT NULL,
  `purge_flag` char(1) DEFAULT NULL,
  `order_rule` char(1) DEFAULT NULL,
  `lockout4count` char(1) NOT NULL,
  `order_pt` bigint DEFAULT NULL,
  `maximum` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `minimum` bigint DEFAULT NULL,
  `inc_ttloh` char(1) DEFAULT NULL,
  `usage` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtpmd`
--

LOCK TABLES `mtpmd` WRITE;
/*!40000 ALTER TABLE `mtpmd` DISABLE KEYS */;
/*!40000 ALTER TABLE `mtpmd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtpmhr`
--

DROP TABLE IF EXISTS `mtpmhr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtpmhr` (
  `mtlrqnnum` int NOT NULL,
  `stockno` char(25) DEFAULT NULL,
  `wo` char(11) NOT NULL,
  `activity_code` char(25) NOT NULL,
  `mkey` char(25) NOT NULL,
  `resrv_quantity` bigint DEFAULT NULL,
  `short_quantity` bigint DEFAULT NULL,
  `resrv_date` datetime NOT NULL,
  `due_date` datetime NOT NULL,
  `plant_no` char(3) NOT NULL,
  `mtlrqn_lineno` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtpmhr`
--

LOCK TABLES `mtpmhr` WRITE;
/*!40000 ALTER TABLE `mtpmhr` DISABLE KEYS */;
/*!40000 ALTER TABLE `mtpmhr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtpmsr`
--

DROP TABLE IF EXISTS `mtpmsr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtpmsr` (
  `stockno` char(25) NOT NULL,
  `wo` char(11) NOT NULL,
  `activity_code` char(25) NOT NULL,
  `mkey` char(25) NOT NULL,
  `rqd_quantity` bigint DEFAULT NULL,
  `resrv_date` datetime NOT NULL,
  `due_date` datetime NOT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtpmsr`
--

LOCK TABLES `mtpmsr` WRITE;
/*!40000 ALTER TABLE `mtpmsr` DISABLE KEYS */;
/*!40000 ALTER TABLE `mtpmsr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtpmsup`
--

DROP TABLE IF EXISTS `mtpmsup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtpmsup` (
  `stockno` char(25) NOT NULL,
  `supplier` char(25) NOT NULL,
  `last_itemcost` bigint DEFAULT NULL,
  `last_rcvd_date` datetime NOT NULL,
  `supplier_partno` char(25) DEFAULT NULL,
  `avg_leadtime` int DEFAULT NULL,
  `min_orderqty` bigint DEFAULT NULL,
  `order_uom` char(8) DEFAULT NULL,
  `rcpts_ctr` int DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `retail_price` bigint DEFAULT NULL,
  `discount_pct` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtpmsup`
--

LOCK TABLES `mtpmsup` WRITE;
/*!40000 ALTER TABLE `mtpmsup` DISABLE KEYS */;
/*!40000 ALTER TABLE `mtpmsup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtpmusg`
--

DROP TABLE IF EXISTS `mtpmusg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtpmusg` (
  `stockno` char(25) NOT NULL,
  `stk_locn` char(20) NOT NULL,
  `create_date` datetime NOT NULL,
  `qty` double NOT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtpmusg`
--

LOCK TABLES `mtpmusg` WRITE;
/*!40000 ALTER TABLE `mtpmusg` DISABLE KEYS */;
/*!40000 ALTER TABLE `mtpmusg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtrcatm`
--

DROP TABLE IF EXISTS `mtrcatm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtrcatm` (
  `FileTyp` char(10) DEFAULT NULL,
  `ChgCod` char(10) DEFAULT NULL,
  `Company` char(10) DEFAULT NULL,
  `StockNo` char(25) NOT NULL,
  `IssueUnit` char(10) DEFAULT NULL,
  `ShortDescription` char(80) DEFAULT NULL,
  `PartNo` char(50) DEFAULT NULL,
  `ManufacturerCode` char(50) DEFAULT NULL,
  `CommodityCode` char(50) DEFAULT NULL,
  `CustomDocNo` char(15) DEFAULT NULL,
  `LongDescription` char(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtrcatm`
--

LOCK TABLES `mtrcatm` WRITE;
/*!40000 ALTER TABLE `mtrcatm` DISABLE KEYS */;
/*!40000 ALTER TABLE `mtrcatm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtrcatw`
--

DROP TABLE IF EXISTS `mtrcatw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtrcatw` (
  `FileTpye` char(10) DEFAULT NULL,
  `ChgCode` char(10) DEFAULT NULL,
  `Company` char(15) DEFAULT NULL,
  `WHS` char(15) DEFAULT NULL,
  `StockNo` char(25) DEFAULT NULL,
  `CondCode` char(10) DEFAULT NULL,
  `Locator` char(50) DEFAULT NULL,
  `Qty` char(19) DEFAULT NULL,
  `UPriceLoc` char(15) DEFAULT NULL,
  `UPriceUS` char(15) DEFAULT NULL,
  `TotLocP` char(15) DEFAULT NULL,
  `TotUSP` char(15) DEFAULT NULL,
  `UnitCode` char(10) DEFAULT NULL,
  `MAXStok` char(15) DEFAULT NULL,
  `SafetyStok` char(15) DEFAULT NULL,
  `ReorderPt` char(15) DEFAULT NULL,
  `LeadTime` char(15) DEFAULT NULL,
  `SetupDate` char(15) DEFAULT NULL,
  `Blanks` char(1) DEFAULT NULL,
  `LastTransCode` char(50) DEFAULT NULL,
  `LastDocNo` char(50) DEFAULT NULL,
  `ConsumpCurr` char(15) DEFAULT NULL,
  `ConsLastQtr` char(15) DEFAULT NULL,
  `Cons3Qtr` char(15) DEFAULT NULL,
  `Cons2Qtr` char(15) DEFAULT NULL,
  `Cons1Qtr` char(15) DEFAULT NULL,
  `ControlTyp` char(10) DEFAULT NULL,
  `LocValOpBal` char(20) DEFAULT NULL,
  `USValOpBal` char(20) DEFAULT NULL,
  `QtyBal` char(20) DEFAULT NULL,
  `DateLastIssued` char(15) DEFAULT NULL,
  `Field32` char(50) DEFAULT NULL,
  `partno` char(50) DEFAULT NULL,
  `description` char(150) DEFAULT NULL,
  `costcenter` char(50) DEFAULT NULL,
  `critical_spare` char(1) DEFAULT NULL,
  `vendor` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtrcatw`
--

LOCK TABLES `mtrcatw` WRITE;
/*!40000 ALTER TABLE `mtrcatw` DISABLE KEYS */;
/*!40000 ALTER TABLE `mtrcatw` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtrectmp`
--

DROP TABLE IF EXISTS `mtrectmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtrectmp` (
  `stockno` char(25) DEFAULT NULL,
  `description` text,
  `mkey` char(25) NOT NULL,
  `partno` char(25) DEFAULT NULL,
  `rcv_qty` double NOT NULL,
  `rcv_uom` char(8) DEFAULT NULL,
  `rcv_cost` bigint DEFAULT NULL,
  `item_cost` bigint DEFAULT NULL,
  `chg_costcenter` char(50) DEFAULT NULL,
  `chg_account` char(50) DEFAULT NULL,
  `crd_costcenter` char(50) DEFAULT NULL,
  `crd_account` char(50) DEFAULT NULL,
  `pono` char(50) DEFAULT NULL,
  `supplier` char(25) DEFAULT NULL,
  `po_date` datetime NOT NULL,
  `buyer` char(25) DEFAULT NULL,
  `empl_id` char(25) DEFAULT NULL,
  `po_lineno` int DEFAULT NULL,
  `porqnnum` int DEFAULT NULL,
  `porqn_lineno` int DEFAULT NULL,
  `mtlrqnnum` int DEFAULT NULL,
  `mtlrqn_lineno` int DEFAULT NULL,
  `wo` char(11) DEFAULT NULL,
  `activity_code` char(25) DEFAULT NULL,
  `dept` char(20) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `create_time` int NOT NULL,
  `xn_type` char(2) NOT NULL,
  `plant_no` char(3) NOT NULL,
  `uom` char(8) DEFAULT NULL,
  `stk_locn` char(20) DEFAULT NULL,
  `locn_cat` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtrectmp`
--

LOCK TABLES `mtrectmp` WRITE;
/*!40000 ALTER TABLE `mtrectmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mtrectmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtrtrnm`
--

DROP TABLE IF EXISTS `mtrtrnm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtrtrnm` (
  `FileType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ChgCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `WHS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `DocCod` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `StokNo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `CondCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TransCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Blanks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AcctFrom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AFEFrom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AcctTo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Field13` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Qty` double DEFAULT NULL,
  `UnitCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `UPLoc` double DEFAULT NULL,
  `UPUs` double DEFAULT NULL,
  `TotPLoc` double DEFAULT NULL,
  `TotPUs` double DEFAULT NULL,
  `AcctPeriod` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `VouchRef` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `PONO` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Vendor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `OPId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `PrintFlag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `FromWHS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `VGenFlag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `OwnerTo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `OwnerFrom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `BurdenFlag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `RefFieldB` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TransDate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtrtrnm`
--

LOCK TABLES `mtrtrnm` WRITE;
/*!40000 ALTER TABLE `mtrtrnm` DISABLE KEYS */;
/*!40000 ALTER TABLE `mtrtrnm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mttl`
--

DROP TABLE IF EXISTS `mttl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mttl` (
  `tool_id` char(25) NOT NULL,
  `description` char(40) DEFAULT NULL,
  `ttl_oh` int DEFAULT NULL,
  `costcenter` char(50) DEFAULT NULL,
  `account` char(50) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mttl`
--

LOCK TABLES `mttl` WRITE;
/*!40000 ALTER TABLE `mttl` DISABLE KEYS */;
/*!40000 ALTER TABLE `mttl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mttlde`
--

DROP TABLE IF EXISTS `mttlde`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mttlde` (
  `tool_id` char(25) NOT NULL,
  `serialno` char(50) NOT NULL,
  `stk_locn` char(20) NOT NULL,
  `orig_cost` bigint DEFAULT NULL,
  `repl_cost` bigint DEFAULT NULL,
  `supplier` char(25) DEFAULT NULL,
  `supplier_partno` char(50) DEFAULT NULL,
  `curr_empl_id` char(25) DEFAULT NULL,
  `out_date` datetime NOT NULL,
  `out_time` int DEFAULT NULL,
  `costcenter` char(50) DEFAULT NULL,
  `account` char(50) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mttlde`
--

LOCK TABLES `mttlde` WRITE;
/*!40000 ALTER TABLE `mttlde` DISABLE KEYS */;
/*!40000 ALTER TABLE `mttlde` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mttldeh`
--

DROP TABLE IF EXISTS `mttldeh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mttldeh` (
  `tool_id` char(25) NOT NULL,
  `serialno` char(50) NOT NULL,
  `out_date` datetime NOT NULL,
  `out_time` int NOT NULL,
  `in_date` datetime NOT NULL,
  `in_time` int DEFAULT NULL,
  `empl_id` char(25) DEFAULT NULL,
  `cost` bigint DEFAULT NULL,
  `chg_costcenter` char(50) DEFAULT NULL,
  `chg_account` char(50) DEFAULT NULL,
  `crd_costcenter` char(50) DEFAULT NULL,
  `crd_account` char(50) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `stk_locn` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mttldeh`
--

LOCK TABLES `mttldeh` WRITE;
/*!40000 ALTER TABLE `mttldeh` DISABLE KEYS */;
/*!40000 ALTER TABLE `mttldeh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtusg`
--

DROP TABLE IF EXISTS `mtusg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtusg` (
  `wo` char(11) DEFAULT NULL,
  `activity_code` char(25) DEFAULT NULL,
  `mkey` char(25) NOT NULL,
  `stockno` char(25) DEFAULT NULL,
  `mtlrqnnum` int DEFAULT NULL,
  `description` char(80) DEFAULT NULL,
  `usg_date` datetime NOT NULL,
  `usg_time` int NOT NULL,
  `cur_date` datetime NOT NULL,
  `cur_time` int NOT NULL,
  `used_qty` bigint NOT NULL,
  `used_uom` char(8) DEFAULT NULL,
  `item_cost` bigint DEFAULT NULL,
  `chg_costcenter` char(50) DEFAULT NULL,
  `chg_account` char(50) DEFAULT NULL,
  `crd_costcenter` char(50) DEFAULT NULL,
  `crd_account` char(50) DEFAULT NULL,
  `assetno` char(50) DEFAULT NULL,
  `projectid` char(50) DEFAULT NULL,
  `nonstkitem` char(1) NOT NULL,
  `supplier` char(25) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `login_id` char(25) DEFAULT NULL,
  `stk_locn` char(20) DEFAULT NULL,
  `mtlrqn_lineno` int DEFAULT NULL,
  `work_type` char(5) DEFAULT NULL,
  `reference_id` int DEFAULT NULL,
  `grn_no` char(50) DEFAULT NULL,
  `grn_itm_no` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtusg`
--

LOCK TABLES `mtusg` WRITE;
/*!40000 ALTER TABLE `mtusg` DISABLE KEYS */;
/*!40000 ALTER TABLE `mtusg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtusga`
--

DROP TABLE IF EXISTS `mtusga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtusga` (
  `wo` char(11) NOT NULL,
  `activity_code` char(25) NOT NULL,
  `mkey` char(25) NOT NULL,
  `stockno` char(25) DEFAULT NULL,
  `description` char(80) DEFAULT NULL,
  `usg_date` datetime NOT NULL,
  `usg_time` int NOT NULL,
  `cur_date` datetime NOT NULL,
  `cur_time` int DEFAULT NULL,
  `used_qty` bigint DEFAULT NULL,
  `used_uom` char(8) DEFAULT NULL,
  `item_cost` bigint DEFAULT NULL,
  `chg_costcenter` char(50) DEFAULT NULL,
  `chg_account` char(50) DEFAULT NULL,
  `crd_costcenter` char(50) DEFAULT NULL,
  `crd_account` char(50) DEFAULT NULL,
  `mtlrqnnum` int DEFAULT NULL,
  `assetno` char(50) DEFAULT NULL,
  `projectid` char(50) DEFAULT NULL,
  `nonstkitem` char(1) NOT NULL,
  `supplier` char(25) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtusga`
--

LOCK TABLES `mtusga` WRITE;
/*!40000 ALTER TABLE `mtusga` DISABLE KEYS */;
/*!40000 ALTER TABLE `mtusga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtusgh`
--

DROP TABLE IF EXISTS `mtusgh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtusgh` (
  `wo` char(11) NOT NULL,
  `activity_code` char(25) NOT NULL,
  `mkey` char(25) NOT NULL,
  `stockno` char(25) DEFAULT NULL,
  `description` char(80) DEFAULT NULL,
  `usg_date` datetime NOT NULL,
  `usg_time` int NOT NULL,
  `cur_date` datetime NOT NULL,
  `cur_time` int DEFAULT NULL,
  `used_qty` bigint DEFAULT NULL,
  `used_uom` char(8) DEFAULT NULL,
  `item_cost` bigint DEFAULT NULL,
  `chg_costcenter` char(50) DEFAULT NULL,
  `chg_account` char(50) DEFAULT NULL,
  `crd_costcenter` char(50) DEFAULT NULL,
  `crd_account` char(50) DEFAULT NULL,
  `mtlrqnnum` int DEFAULT NULL,
  `assetno` char(50) DEFAULT NULL,
  `projectid` char(50) DEFAULT NULL,
  `nonstkitem` char(1) NOT NULL,
  `supplier` char(25) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtusgh`
--

LOCK TABLES `mtusgh` WRITE;
/*!40000 ALTER TABLE `mtusgh` DISABLE KEYS */;
/*!40000 ALTER TABLE `mtusgh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtusgtmp`
--

DROP TABLE IF EXISTS `mtusgtmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtusgtmp` (
  `wo` char(11) DEFAULT NULL,
  `activity_code` char(25) DEFAULT NULL,
  `mkey` char(25) NOT NULL,
  `stockno` char(25) DEFAULT NULL,
  `description` char(80) DEFAULT NULL,
  `usg_date` datetime NOT NULL,
  `usg_time` int NOT NULL,
  `cur_date` datetime NOT NULL,
  `cur_time` int NOT NULL,
  `used_qty` bigint NOT NULL,
  `used_uom` char(8) DEFAULT NULL,
  `item_cost` bigint DEFAULT NULL,
  `chg_costcenter` char(50) DEFAULT NULL,
  `chg_account` char(50) DEFAULT NULL,
  `crd_costcenter` char(50) DEFAULT NULL,
  `crd_account` char(50) DEFAULT NULL,
  `mtlrqnnum` int DEFAULT NULL,
  `assetno` char(50) DEFAULT NULL,
  `projectid` char(50) DEFAULT NULL,
  `nonstkitem` char(1) NOT NULL,
  `supplier` char(25) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `login_id` char(25) DEFAULT NULL,
  `stk_locn` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtusgtmp`
--

LOCK TABLES `mtusgtmp` WRITE;
/*!40000 ALTER TABLE `mtusgtmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mtusgtmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pbcatcol`
--

DROP TABLE IF EXISTS `pbcatcol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pbcatcol` (
  `pbc_tnam` char(129) NOT NULL,
  `pbc_tid` int DEFAULT NULL,
  `pbc_ownr` char(129) NOT NULL,
  `pbc_cnam` char(129) NOT NULL,
  `pbc_cid` int DEFAULT NULL,
  `pbc_labl` text,
  `pbc_lpos` int DEFAULT NULL,
  `pbc_hdr` text,
  `pbc_hpos` int DEFAULT NULL,
  `pbc_jtfy` int DEFAULT NULL,
  `pbc_mask` char(31) DEFAULT NULL,
  `pbc_case` int DEFAULT NULL,
  `pbc_hght` int DEFAULT NULL,
  `pbc_wdth` int DEFAULT NULL,
  `pbc_ptrn` char(31) DEFAULT NULL,
  `pbc_bmap` char(1) DEFAULT NULL,
  `pbc_init` text,
  `pbc_cmnt` text,
  `pbc_edit` char(31) DEFAULT NULL,
  `pbc_tag` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pbcatcol`
--

LOCK TABLES `pbcatcol` WRITE;
/*!40000 ALTER TABLE `pbcatcol` DISABLE KEYS */;
/*!40000 ALTER TABLE `pbcatcol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pbcatedt`
--

DROP TABLE IF EXISTS `pbcatedt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pbcatedt` (
  `pbe_name` char(30) NOT NULL,
  `pbe_edit` char(254) DEFAULT NULL,
  `pbe_type` smallint DEFAULT NULL,
  `pbe_cntr` int DEFAULT NULL,
  `pbe_seqn` smallint NOT NULL,
  `pbe_flag` int DEFAULT NULL,
  `pbe_work` char(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pbcatedt`
--

LOCK TABLES `pbcatedt` WRITE;
/*!40000 ALTER TABLE `pbcatedt` DISABLE KEYS */;
/*!40000 ALTER TABLE `pbcatedt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pbcatfmt`
--

DROP TABLE IF EXISTS `pbcatfmt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pbcatfmt` (
  `pbf_name` char(30) NOT NULL,
  `pbf_frmt` char(254) DEFAULT NULL,
  `pbf_type` smallint DEFAULT NULL,
  `pbf_cntr` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pbcatfmt`
--

LOCK TABLES `pbcatfmt` WRITE;
/*!40000 ALTER TABLE `pbcatfmt` DISABLE KEYS */;
/*!40000 ALTER TABLE `pbcatfmt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pbcattbl`
--

DROP TABLE IF EXISTS `pbcattbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pbcattbl` (
  `pbt_tnam` char(129) NOT NULL,
  `pbt_tid` int DEFAULT NULL,
  `pbt_ownr` char(129) NOT NULL,
  `pbd_fhgt` smallint DEFAULT NULL,
  `pbd_fwgt` smallint DEFAULT NULL,
  `pbd_fitl` char(1) DEFAULT NULL,
  `pbd_funl` char(1) DEFAULT NULL,
  `pbd_fchr` smallint DEFAULT NULL,
  `pbd_fptc` smallint DEFAULT NULL,
  `pbd_ffce` char(18) DEFAULT NULL,
  `pbh_fhgt` smallint DEFAULT NULL,
  `pbh_fwgt` smallint DEFAULT NULL,
  `pbh_fitl` char(1) DEFAULT NULL,
  `pbh_funl` char(1) DEFAULT NULL,
  `pbh_fchr` smallint DEFAULT NULL,
  `pbh_fptc` smallint DEFAULT NULL,
  `pbh_ffce` char(18) DEFAULT NULL,
  `pbl_fhgt` smallint DEFAULT NULL,
  `pbl_fwgt` smallint DEFAULT NULL,
  `pbl_fitl` char(1) DEFAULT NULL,
  `pbl_funl` char(1) DEFAULT NULL,
  `pbl_fchr` smallint DEFAULT NULL,
  `pbl_fptc` smallint DEFAULT NULL,
  `pbl_ffce` char(18) DEFAULT NULL,
  `pbt_cmnt` char(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pbcattbl`
--

LOCK TABLES `pbcattbl` WRITE;
/*!40000 ALTER TABLE `pbcattbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `pbcattbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pbcatvld`
--

DROP TABLE IF EXISTS `pbcatvld`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pbcatvld` (
  `pbv_name` char(30) NOT NULL,
  `pbv_vald` char(254) DEFAULT NULL,
  `pbv_type` smallint DEFAULT NULL,
  `pbv_cntr` int DEFAULT NULL,
  `pbv_msg` char(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pbcatvld`
--

LOCK TABLES `pbcatvld` WRITE;
/*!40000 ALTER TABLE `pbcatvld` DISABLE KEYS */;
/*!40000 ALTER TABLE `pbcatvld` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmgen2`
--

DROP TABLE IF EXISTS `pmgen2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pmgen2` (
  `pm_idno` int DEFAULT NULL,
  `assetno` char(50) DEFAULT NULL,
  `freq_code` char(5) DEFAULT NULL,
  `next_create` datetime NOT NULL,
  `override_date` datetime NOT NULL,
  `gen_flag` char(1) DEFAULT NULL,
  `curr_wo` char(11) DEFAULT NULL,
  `freq_type` char(2) DEFAULT NULL,
  `band` int DEFAULT NULL,
  `usg1` bigint DEFAULT NULL,
  `usg2` bigint DEFAULT NULL,
  `rec_no` int DEFAULT NULL,
  `shadow_grp` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmgen2`
--

LOCK TABLES `pmgen2` WRITE;
/*!40000 ALTER TABLE `pmgen2` DISABLE KEYS */;
/*!40000 ALTER TABLE `pmgen2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puhi`
--

DROP TABLE IF EXISTS `puhi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puhi` (
  `pono` char(50) NOT NULL,
  `supplier` char(25) DEFAULT NULL,
  `confirm_flag` char(1) DEFAULT NULL,
  `po_type` char(1) DEFAULT NULL,
  `shipto` char(15) DEFAULT NULL,
  `req_date` datetime NOT NULL,
  `po_date` datetime NOT NULL,
  `promised_date` datetime NOT NULL,
  `followup_date` datetime NOT NULL,
  `clo_date` datetime NOT NULL,
  `buyer` char(25) DEFAULT NULL,
  `contact` char(25) DEFAULT NULL,
  `fob` char(20) DEFAULT NULL,
  `shipvia` char(30) DEFAULT NULL,
  `status` char(3) DEFAULT NULL,
  `taxrate` bigint DEFAULT NULL,
  `terms` char(20) DEFAULT NULL,
  `tot_cost` bigint DEFAULT NULL,
  `explanation` char(25) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `contract_id` char(10) DEFAULT NULL,
  `freight` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puhi`
--

LOCK TABLES `puhi` WRITE;
/*!40000 ALTER TABLE `puhi` DISABLE KEYS */;
/*!40000 ALTER TABLE `puhi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puhiam`
--

DROP TABLE IF EXISTS `puhiam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puhiam` (
  `pono` char(50) NOT NULL,
  `ammendment_no` int NOT NULL,
  `supplier` char(25) DEFAULT NULL,
  `confirm_flag` char(1) DEFAULT NULL,
  `po_type` char(1) DEFAULT NULL,
  `shipto` char(15) DEFAULT NULL,
  `req_date` datetime NOT NULL,
  `po_date` datetime NOT NULL,
  `ammend_date` datetime NOT NULL,
  `promised_date` datetime NOT NULL,
  `followup_date` datetime NOT NULL,
  `clo_date` datetime NOT NULL,
  `buyer` char(25) DEFAULT NULL,
  `contact` char(25) DEFAULT NULL,
  `fob` char(20) DEFAULT NULL,
  `shipvia` char(30) DEFAULT NULL,
  `status` char(3) DEFAULT NULL,
  `taxrate` bigint DEFAULT NULL,
  `terms` char(20) DEFAULT NULL,
  `tot_cost` bigint DEFAULT NULL,
  `explanation` char(25) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `freight` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puhiam`
--

LOCK TABLES `puhiam` WRITE;
/*!40000 ALTER TABLE `puhiam` DISABLE KEYS */;
/*!40000 ALTER TABLE `puhiam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puhiamd`
--

DROP TABLE IF EXISTS `puhiamd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puhiamd` (
  `pono` char(50) NOT NULL,
  `ammendment_no` int NOT NULL,
  `po_lineno` int NOT NULL,
  `porqnnum` int DEFAULT NULL,
  `porqn_lineno` int DEFAULT NULL,
  `mtlrqnnum` int DEFAULT NULL,
  `mtlrqn_lineno` int DEFAULT NULL,
  `wo` char(11) DEFAULT NULL,
  `activity_code` char(25) DEFAULT NULL,
  `mkey` char(25) DEFAULT NULL,
  `promised_date` datetime NOT NULL,
  `dept` char(20) DEFAULT NULL,
  `markfor` char(15) DEFAULT NULL,
  `taxable` char(1) DEFAULT NULL,
  `ord_qty` bigint DEFAULT NULL,
  `ord_uom` char(8) DEFAULT NULL,
  `item_cost` bigint DEFAULT NULL,
  `stockno` char(25) DEFAULT NULL,
  `description` char(80) DEFAULT NULL,
  `ext_description` text,
  `rcv_qty` bigint DEFAULT NULL,
  `bo_qty` bigint DEFAULT NULL,
  `chg_costcenter` char(50) DEFAULT NULL,
  `chg_account` char(50) DEFAULT NULL,
  `crd_costcenter` char(50) DEFAULT NULL,
  `crd_account` char(50) DEFAULT NULL,
  `clo_flag` char(1) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `retail_price` bigint DEFAULT NULL,
  `discount_pct` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puhiamd`
--

LOCK TABLES `puhiamd` WRITE;
/*!40000 ALTER TABLE `puhiamd` DISABLE KEYS */;
/*!40000 ALTER TABLE `puhiamd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puhiap`
--

DROP TABLE IF EXISTS `puhiap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puhiap` (
  `pono` char(50) NOT NULL,
  `approver` char(25) NOT NULL,
  `costcenter` char(50) DEFAULT NULL,
  `ttl_cost` bigint DEFAULT NULL,
  `low_range` bigint DEFAULT NULL,
  `high_range` bigint DEFAULT NULL,
  `appr_date` datetime NOT NULL,
  `appr_time` int DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puhiap`
--

LOCK TABLES `puhiap` WRITE;
/*!40000 ALTER TABLE `puhiap` DISABLE KEYS */;
/*!40000 ALTER TABLE `puhiap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puhib`
--

DROP TABLE IF EXISTS `puhib`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puhib` (
  `pono` char(50) NOT NULL,
  `mkey` char(25) NOT NULL,
  `supplier` char(25) DEFAULT NULL,
  `chg_costcenter` char(50) DEFAULT NULL,
  `chg_account` char(50) DEFAULT NULL,
  `crd_costcenter` char(50) DEFAULT NULL,
  `crd_account` char(50) DEFAULT NULL,
  `partno` char(25) DEFAULT NULL,
  `stockno` char(25) DEFAULT NULL,
  `description` char(80) DEFAULT NULL,
  `rcv_qty` bigint DEFAULT NULL,
  `item_cost` bigint DEFAULT NULL,
  `tax` bigint DEFAULT NULL,
  `freight` bigint DEFAULT NULL,
  `ttl_cost` bigint DEFAULT NULL,
  `rcv_date` datetime NOT NULL,
  `plant_no` char(3) NOT NULL,
  `invoice_qty` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puhib`
--

LOCK TABLES `puhib` WRITE;
/*!40000 ALTER TABLE `puhib` DISABLE KEYS */;
/*!40000 ALTER TABLE `puhib` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puhide`
--

DROP TABLE IF EXISTS `puhide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puhide` (
  `pono` char(50) NOT NULL,
  `po_lineno` int NOT NULL,
  `porqnnum` int DEFAULT NULL,
  `porqn_lineno` int DEFAULT NULL,
  `mtlrqnnum` int DEFAULT NULL,
  `mtlrqn_lineno` int DEFAULT NULL,
  `wo` char(11) DEFAULT NULL,
  `activity_code` char(25) DEFAULT NULL,
  `mkey` char(25) DEFAULT NULL,
  `promised_date` datetime NOT NULL,
  `dept` char(20) DEFAULT NULL,
  `markfor` char(15) DEFAULT NULL,
  `taxable` char(1) DEFAULT NULL,
  `ord_qty` bigint DEFAULT NULL,
  `ord_uom` char(8) DEFAULT NULL,
  `item_cost` bigint DEFAULT NULL,
  `stockno` char(25) DEFAULT NULL,
  `description` char(80) DEFAULT NULL,
  `ext_description` text,
  `rcv_qty` bigint DEFAULT NULL,
  `bo_qty` bigint DEFAULT NULL,
  `chg_costcenter` char(50) DEFAULT NULL,
  `chg_account` char(50) DEFAULT NULL,
  `crd_costcenter` char(50) DEFAULT NULL,
  `crd_account` char(50) DEFAULT NULL,
  `clo_flag` char(1) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `invoice_qty` int DEFAULT NULL,
  `retail_price` bigint DEFAULT NULL,
  `discount_pct` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puhide`
--

LOCK TABLES `puhide` WRITE;
/*!40000 ALTER TABLE `puhide` DISABLE KEYS */;
/*!40000 ALTER TABLE `puhide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pupo`
--

DROP TABLE IF EXISTS `pupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pupo` (
  `pono` char(50) NOT NULL,
  `supplier` char(25) DEFAULT NULL,
  `confirm_flag` char(1) DEFAULT NULL,
  `po_type` char(1) DEFAULT NULL,
  `shipto` char(15) DEFAULT NULL,
  `req_date` datetime NOT NULL,
  `po_date` datetime NOT NULL,
  `promised_date` datetime NOT NULL,
  `followup_date` datetime NOT NULL,
  `clo_date` datetime NOT NULL,
  `buyer` char(25) DEFAULT NULL,
  `contact` char(25) DEFAULT NULL,
  `fob` char(20) DEFAULT NULL,
  `shipvia` char(30) DEFAULT NULL,
  `status` char(3) DEFAULT NULL,
  `taxrate` bigint DEFAULT NULL,
  `terms` char(20) DEFAULT NULL,
  `tot_cost` bigint DEFAULT NULL,
  `explanation` char(25) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `contract_id` char(10) DEFAULT NULL,
  `freight` bigint DEFAULT NULL,
  `po_ammend_ctr` int DEFAULT NULL,
  `print_count` int DEFAULT NULL,
  `p_opt1` char(80) DEFAULT NULL,
  `p_opt2` char(80) DEFAULT NULL,
  `p_opt3` char(80) DEFAULT NULL,
  `p_opt4` char(80) DEFAULT NULL,
  `p_opt5` text,
  `p_opt6` datetime NOT NULL,
  `p_opt7` datetime NOT NULL,
  `p_opt8` bigint DEFAULT NULL,
  `p_opt9` bigint DEFAULT NULL,
  `p_opt10` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pupo`
--

LOCK TABLES `pupo` WRITE;
/*!40000 ALTER TABLE `pupo` DISABLE KEYS */;
/*!40000 ALTER TABLE `pupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pupoam`
--

DROP TABLE IF EXISTS `pupoam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pupoam` (
  `pono` char(50) NOT NULL,
  `ammendment_no` int NOT NULL,
  `supplier` char(25) DEFAULT NULL,
  `confirm_flag` char(1) DEFAULT NULL,
  `po_type` char(1) DEFAULT NULL,
  `shipto` char(15) DEFAULT NULL,
  `req_date` datetime NOT NULL,
  `po_date` datetime NOT NULL,
  `ammend_date` datetime NOT NULL,
  `promised_date` datetime NOT NULL,
  `followup_date` datetime NOT NULL,
  `clo_date` datetime NOT NULL,
  `buyer` char(25) DEFAULT NULL,
  `contact` char(25) DEFAULT NULL,
  `fob` char(20) DEFAULT NULL,
  `shipvia` char(30) DEFAULT NULL,
  `status` char(3) DEFAULT NULL,
  `taxrate` bigint DEFAULT NULL,
  `terms` char(20) DEFAULT NULL,
  `tot_cost` bigint DEFAULT NULL,
  `explanation` char(25) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `freight` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pupoam`
--

LOCK TABLES `pupoam` WRITE;
/*!40000 ALTER TABLE `pupoam` DISABLE KEYS */;
/*!40000 ALTER TABLE `pupoam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pupoamd`
--

DROP TABLE IF EXISTS `pupoamd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pupoamd` (
  `pono` char(50) NOT NULL,
  `ammendment_no` int NOT NULL,
  `po_lineno` int NOT NULL,
  `porqnnum` int DEFAULT NULL,
  `porqn_lineno` int DEFAULT NULL,
  `mtlrqnnum` int DEFAULT NULL,
  `mtlrqn_lineno` int DEFAULT NULL,
  `wo` char(11) DEFAULT NULL,
  `activity_code` char(25) DEFAULT NULL,
  `mkey` char(25) DEFAULT NULL,
  `promised_date` datetime NOT NULL,
  `dept` char(20) DEFAULT NULL,
  `markfor` char(15) DEFAULT NULL,
  `taxable` char(1) DEFAULT NULL,
  `ord_qty` bigint DEFAULT NULL,
  `ord_uom` char(8) DEFAULT NULL,
  `item_cost` bigint DEFAULT NULL,
  `stockno` char(25) DEFAULT NULL,
  `description` char(80) DEFAULT NULL,
  `ext_description` text,
  `rcv_qty` bigint DEFAULT NULL,
  `bo_qty` bigint DEFAULT NULL,
  `chg_costcenter` char(50) DEFAULT NULL,
  `chg_account` char(50) DEFAULT NULL,
  `crd_costcenter` char(50) DEFAULT NULL,
  `crd_account` char(50) DEFAULT NULL,
  `clo_flag` char(1) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `item_category` char(3) DEFAULT NULL,
  `req_date` datetime NOT NULL,
  `retail_price` bigint DEFAULT NULL,
  `discount_pct` double DEFAULT NULL,
  `invoice_qty` int DEFAULT NULL,
  `last_change_date` datetime NOT NULL,
  `supplier_partno` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pupoamd`
--

LOCK TABLES `pupoamd` WRITE;
/*!40000 ALTER TABLE `pupoamd` DISABLE KEYS */;
/*!40000 ALTER TABLE `pupoamd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pupoap`
--

DROP TABLE IF EXISTS `pupoap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pupoap` (
  `pono` char(50) NOT NULL,
  `approver` char(25) NOT NULL,
  `costcenter` char(50) DEFAULT NULL,
  `ttl_cost` bigint DEFAULT NULL,
  `low_range` bigint DEFAULT NULL,
  `high_range` bigint DEFAULT NULL,
  `appr_date` datetime NOT NULL,
  `appr_time` int DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pupoap`
--

LOCK TABLES `pupoap` WRITE;
/*!40000 ALTER TABLE `pupoap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pupoap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pupob`
--

DROP TABLE IF EXISTS `pupob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pupob` (
  `pono` char(50) NOT NULL,
  `mkey` char(25) NOT NULL,
  `chg_costcenter` char(50) DEFAULT NULL,
  `chg_account` char(50) DEFAULT NULL,
  `crd_costcenter` char(50) DEFAULT NULL,
  `crd_account` char(50) DEFAULT NULL,
  `partno` char(25) DEFAULT NULL,
  `stockno` char(25) DEFAULT NULL,
  `description` char(80) DEFAULT NULL,
  `rcv_qty` bigint DEFAULT NULL,
  `item_cost` bigint DEFAULT NULL,
  `tax` bigint DEFAULT NULL,
  `freight` bigint DEFAULT NULL,
  `ttl_cost` bigint DEFAULT NULL,
  `rcv_date` datetime NOT NULL,
  `plant_no` char(3) NOT NULL,
  `item_category` char(3) DEFAULT NULL,
  `invoice_qty` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pupob`
--

LOCK TABLES `pupob` WRITE;
/*!40000 ALTER TABLE `pupob` DISABLE KEYS */;
/*!40000 ALTER TABLE `pupob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pupod`
--

DROP TABLE IF EXISTS `pupod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pupod` (
  `pono` char(50) NOT NULL,
  `po_lineno` int NOT NULL,
  `porqnnum` int DEFAULT NULL,
  `porqn_lineno` int DEFAULT NULL,
  `wo` char(11) DEFAULT NULL,
  `activity_code` char(25) DEFAULT NULL,
  `mkey` char(25) DEFAULT NULL,
  `promised_date` datetime NOT NULL,
  `dept` char(20) DEFAULT NULL,
  `markfor` char(15) DEFAULT NULL,
  `taxable` char(1) DEFAULT NULL,
  `ord_qty` bigint DEFAULT NULL,
  `ord_uom` char(8) DEFAULT NULL,
  `item_cost` bigint DEFAULT NULL,
  `stockno` char(25) DEFAULT NULL,
  `description` char(80) DEFAULT NULL,
  `ext_description` text,
  `rcv_qty` bigint DEFAULT NULL,
  `bo_qty` bigint DEFAULT NULL,
  `chg_costcenter` char(50) DEFAULT NULL,
  `chg_account` char(50) DEFAULT NULL,
  `crd_costcenter` char(50) DEFAULT NULL,
  `crd_account` char(50) DEFAULT NULL,
  `clo_flag` char(1) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `item_category` char(3) DEFAULT NULL,
  `req_date` datetime NOT NULL,
  `g_s` char(1) DEFAULT NULL,
  `invoice_qty` int DEFAULT NULL,
  `last_change_date` datetime NOT NULL,
  `retail_price` bigint DEFAULT NULL,
  `discount_pct` double DEFAULT NULL,
  `supplier_partno` char(25) DEFAULT NULL,
  `mtlrqnnum` int DEFAULT NULL,
  `mtlrqn_lineno` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pupod`
--

LOCK TABLES `pupod` WRITE;
/*!40000 ALTER TABLE `pupod` DISABLE KEYS */;
/*!40000 ALTER TABLE `pupod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pupods`
--

DROP TABLE IF EXISTS `pupods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pupods` (
  `pono` char(50) NOT NULL,
  `po_lineno` int NOT NULL,
  `porqnnum` int NOT NULL,
  `porqn_lineno` int NOT NULL,
  `chg_costcenter` char(50) DEFAULT NULL,
  `chg_account` char(50) DEFAULT NULL,
  `requester` char(25) DEFAULT NULL,
  `wo` char(11) DEFAULT NULL,
  `activity_code` char(25) DEFAULT NULL,
  `ord_qty` int DEFAULT NULL,
  `mtlrqnnum` int DEFAULT NULL,
  `mtlrqn_lineno` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pupods`
--

LOCK TABLES `pupods` WRITE;
/*!40000 ALTER TABLE `pupods` DISABLE KEYS */;
/*!40000 ALTER TABLE `pupods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puqt`
--

DROP TABLE IF EXISTS `puqt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puqt` (
  `porfqnum` int NOT NULL,
  `shipto` char(15) DEFAULT NULL,
  `req_date` datetime NOT NULL,
  `buyer` char(25) DEFAULT NULL,
  `ttl_cost` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puqt`
--

LOCK TABLES `puqt` WRITE;
/*!40000 ALTER TABLE `puqt` DISABLE KEYS */;
/*!40000 ALTER TABLE `puqt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puqtde`
--

DROP TABLE IF EXISTS `puqtde`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puqtde` (
  `porfqnum` int NOT NULL,
  `rfq_lineno` int NOT NULL,
  `porqnnum` int DEFAULT NULL,
  `porqn_lineno` int DEFAULT NULL,
  `mtlrqnnum` int DEFAULT NULL,
  `mtlrqn_lineno` int DEFAULT NULL,
  `wo` char(11) DEFAULT NULL,
  `activity_code` char(25) DEFAULT NULL,
  `mkey` char(25) DEFAULT NULL,
  `dept` char(20) DEFAULT NULL,
  `markfor` char(15) DEFAULT NULL,
  `qty_needed` bigint DEFAULT NULL,
  `needed_uom` char(8) DEFAULT NULL,
  `item_cost` bigint DEFAULT NULL,
  `stockno` char(25) DEFAULT NULL,
  `description` char(80) DEFAULT NULL,
  `ext_description` text,
  `chg_costcenter` char(50) DEFAULT NULL,
  `chg_account` char(50) DEFAULT NULL,
  `crd_costcenter` char(50) DEFAULT NULL,
  `crd_account` char(50) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `rec_supplier` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puqtde`
--

LOCK TABLES `puqtde` WRITE;
/*!40000 ALTER TABLE `puqtde` DISABLE KEYS */;
/*!40000 ALTER TABLE `puqtde` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puqtsu`
--

DROP TABLE IF EXISTS `puqtsu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puqtsu` (
  `porfqnum` int NOT NULL,
  `supplier` char(25) NOT NULL,
  `rfq_date` datetime NOT NULL,
  `contact` char(25) DEFAULT NULL,
  `status` char(3) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puqtsu`
--

LOCK TABLES `puqtsu` WRITE;
/*!40000 ALTER TABLE `puqtsu` DISABLE KEYS */;
/*!40000 ALTER TABLE `puqtsu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purq`
--

DROP TABLE IF EXISTS `purq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purq` (
  `porqnnum` int NOT NULL,
  `rqn_date` datetime NOT NULL,
  `rqn_time` int DEFAULT NULL,
  `requested_by` char(25) DEFAULT NULL,
  `dept` char(20) DEFAULT NULL,
  `req_date` datetime NOT NULL,
  `chg_costcenter` char(50) DEFAULT NULL,
  `chg_account` char(50) DEFAULT NULL,
  `crd_costcenter` char(50) DEFAULT NULL,
  `crd_account` char(50) DEFAULT NULL,
  `status` char(3) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `op_flag` char(1) DEFAULT NULL,
  `entered_by` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purq`
--

LOCK TABLES `purq` WRITE;
/*!40000 ALTER TABLE `purq` DISABLE KEYS */;
/*!40000 ALTER TABLE `purq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purqde`
--

DROP TABLE IF EXISTS `purqde`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purqde` (
  `porqnnum` int NOT NULL,
  `porqn_lineno` int NOT NULL,
  `mtlrqnnum` int DEFAULT NULL,
  `mtlrqn_lineno` int DEFAULT NULL,
  `wo` char(11) DEFAULT NULL,
  `activity_code` char(25) DEFAULT NULL,
  `mkey` char(25) NOT NULL,
  `stockno` char(25) DEFAULT NULL,
  `description` text,
  `contract_id` char(10) DEFAULT NULL,
  `projectid` char(50) DEFAULT NULL,
  `contract_lineno` int DEFAULT NULL,
  `op_refno` int DEFAULT NULL,
  `ord_qty` bigint DEFAULT NULL,
  `ord_uom` char(8) DEFAULT NULL,
  `item_cost` bigint DEFAULT NULL,
  `supplier` char(25) DEFAULT NULL,
  `stk_locn` char(20) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `rec_supplier` char(25) DEFAULT NULL,
  `pono` char(50) DEFAULT NULL,
  `po_lineno` int DEFAULT NULL,
  `rcv_in_full` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purqde`
--

LOCK TABLES `purqde` WRITE;
/*!40000 ALTER TABLE `purqde` DISABLE KEYS */;
/*!40000 ALTER TABLE `purqde` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stac`
--

DROP TABLE IF EXISTS `stac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stac` (
  `account` char(50) NOT NULL,
  `description` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stac`
--

LOCK TABLES `stac` WRITE;
/*!40000 ALTER TABLE `stac` DISABLE KEYS */;
/*!40000 ALTER TABLE `stac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stad`
--

DROP TABLE IF EXISTS `stad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stad` (
  `address_cat` char(5) NOT NULL,
  `description` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stad`
--

LOCK TABLES `stad` WRITE;
/*!40000 ALTER TABLE `stad` DISABLE KEYS */;
/*!40000 ALTER TABLE `stad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stal`
--

DROP TABLE IF EXISTS `stal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stal` (
  `address_id` int NOT NULL,
  `contact1` char(100) NOT NULL,
  `contact2` char(100) DEFAULT NULL,
  `company` char(100) NOT NULL,
  `address1` char(100) NOT NULL,
  `address2` char(100) DEFAULT NULL,
  `city` char(50) NOT NULL,
  `province` char(25) DEFAULT NULL,
  `country` char(25) NOT NULL,
  `postal_code` char(25) DEFAULT NULL,
  `phone` char(25) NOT NULL,
  `fax_phone` char(25) DEFAULT NULL,
  `e_mail` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stal`
--

LOCK TABLES `stal` WRITE;
/*!40000 ALTER TABLE `stal` DISABLE KEYS */;
/*!40000 ALTER TABLE `stal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stalbt`
--

DROP TABLE IF EXISTS `stalbt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stalbt` (
  `address_id` int NOT NULL,
  `contact1` char(100) DEFAULT NULL,
  `contact2` char(100) DEFAULT NULL,
  `company` char(100) DEFAULT NULL,
  `address1` char(100) DEFAULT NULL,
  `address2` char(100) DEFAULT NULL,
  `city` char(30) DEFAULT NULL,
  `state` char(5) DEFAULT NULL,
  `province` char(25) DEFAULT NULL,
  `country` char(25) DEFAULT NULL,
  `postal_code` char(25) DEFAULT NULL,
  `phone` char(25) DEFAULT NULL,
  `fax_phone` char(25) DEFAULT NULL,
  `modem_phone` char(25) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stalbt`
--

LOCK TABLES `stalbt` WRITE;
/*!40000 ALTER TABLE `stalbt` DISABLE KEYS */;
/*!40000 ALTER TABLE `stalbt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stas`
--

DROP TABLE IF EXISTS `stas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stas` (
  `autowonum` char(1) NOT NULL,
  `issue_rules` char(8) DEFAULT NULL,
  `order_rule` char(1) DEFAULT NULL,
  `mtl_det_purge` char(1) DEFAULT NULL,
  `auto_locn_add` char(1) DEFAULT NULL,
  `mtl_surcharge` bigint DEFAULT NULL,
  `multilocnactive` char(1) DEFAULT NULL,
  `maxsuppperpart` int DEFAULT NULL,
  `poprocesscost` bigint DEFAULT NULL,
  `fiscalyrperiods` int DEFAULT NULL,
  `absent_pct` bigint DEFAULT NULL,
  `auto_avg` char(1) DEFAULT NULL,
  `min_bklg` bigint DEFAULT NULL,
  `max_bklg` bigint DEFAULT NULL,
  `unsched_pty` char(1) DEFAULT NULL,
  `wo_so_rqd` char(1) DEFAULT NULL,
  `asset_rqd` char(1) DEFAULT NULL,
  `inv_usg_hist` char(1) DEFAULT NULL,
  `min_pm_lead` int DEFAULT NULL,
  `pm_closed_loop` char(1) NOT NULL,
  `overdue_days` int DEFAULT NULL,
  `warning_count` int DEFAULT NULL,
  `grace_period` int DEFAULT NULL,
  `ecs_pct` int DEFAULT NULL,
  `ecs_cnt` int DEFAULT NULL,
  `ctmms_period` int DEFAULT NULL,
  `current_yr` int DEFAULT NULL,
  `avail_hrs` double NOT NULL,
  `prod_pct` double NOT NULL,
  `sched_ord_rule` char(1) NOT NULL,
  `mtl_chk_flg` char(1) NOT NULL,
  `ext_wo_prnt` char(1) DEFAULT NULL,
  `counter` int DEFAULT NULL,
  `stock_location` char(20) DEFAULT NULL,
  `label_mgmt` char(20) DEFAULT NULL,
  `s_install_date` datetime NOT NULL,
  `activity_code` char(25) DEFAULT NULL,
  `initial_cost` bigint DEFAULT NULL,
  `reference_id` int DEFAULT NULL,
  `company_name` char(40) DEFAULT NULL,
  `po_auto_clo` char(1) DEFAULT NULL,
  `invoice_match` char(1) DEFAULT NULL,
  `autoponum` char(1) DEFAULT NULL,
  `safestkflg` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stas`
--

LOCK TABLES `stas` WRITE;
/*!40000 ALTER TABLE `stas` DISABLE KEYS */;
/*!40000 ALTER TABLE `stas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stast`
--

DROP TABLE IF EXISTS `stast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stast` (
  `asset_type` char(3) NOT NULL,
  `description` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stast`
--

LOCK TABLES `stast` WRITE;
/*!40000 ALTER TABLE `stast` DISABLE KEYS */;
/*!40000 ALTER TABLE `stast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `state` char(5) NOT NULL,
  `state_name` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stca`
--

DROP TABLE IF EXISTS `stca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stca` (
  `parameter` char(10) DEFAULT NULL,
  `parmkey` int NOT NULL,
  `route_type` char(1) NOT NULL,
  `description` char(80) NOT NULL,
  `low_value` bigint DEFAULT NULL,
  `high_value` bigint DEFAULT NULL,
  `reading_uom` char(8) DEFAULT NULL,
  `amount` bigint DEFAULT NULL,
  `usage_uom` char(8) DEFAULT NULL,
  `assetno` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stca`
--

LOCK TABLES `stca` WRITE;
/*!40000 ALTER TABLE `stca` DISABLE KEYS */;
/*!40000 ALTER TABLE `stca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stcabu`
--

DROP TABLE IF EXISTS `stcabu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stcabu` (
  `prod_year` int NOT NULL,
  `p1beg` datetime NOT NULL,
  `p2beg` datetime NOT NULL,
  `p3beg` datetime NOT NULL,
  `p4beg` datetime NOT NULL,
  `p5beg` datetime NOT NULL,
  `p6beg` datetime NOT NULL,
  `p7beg` datetime NOT NULL,
  `p8beg` datetime NOT NULL,
  `p9beg` datetime NOT NULL,
  `p10beg` datetime NOT NULL,
  `p11beg` datetime NOT NULL,
  `p12beg` datetime NOT NULL,
  `p13beg` datetime NOT NULL,
  `end_of_year` datetime NOT NULL,
  `p1name` char(10) DEFAULT NULL,
  `p2name` char(10) DEFAULT NULL,
  `p3name` char(10) DEFAULT NULL,
  `p4name` char(10) DEFAULT NULL,
  `p5name` char(10) DEFAULT NULL,
  `p6name` char(10) DEFAULT NULL,
  `p7name` char(10) DEFAULT NULL,
  `p8name` char(10) DEFAULT NULL,
  `p9name` char(10) DEFAULT NULL,
  `p10name` char(10) DEFAULT NULL,
  `p11name` char(10) DEFAULT NULL,
  `p12name` char(10) DEFAULT NULL,
  `p13name` char(10) DEFAULT NULL,
  `plant_no` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stcabu`
--

LOCK TABLES `stcabu` WRITE;
/*!40000 ALTER TABLE `stcabu` DISABLE KEYS */;
/*!40000 ALTER TABLE `stcabu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stcapr`
--

DROP TABLE IF EXISTS `stcapr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stcapr` (
  `prod_year` int NOT NULL,
  `january` char(31) DEFAULT NULL,
  `february` char(29) DEFAULT NULL,
  `march` char(31) DEFAULT NULL,
  `april` char(30) DEFAULT NULL,
  `may` char(31) DEFAULT NULL,
  `june` char(30) DEFAULT NULL,
  `july` char(31) DEFAULT NULL,
  `august` char(31) DEFAULT NULL,
  `september` char(30) DEFAULT NULL,
  `october` char(31) DEFAULT NULL,
  `november` char(30) DEFAULT NULL,
  `december` char(31) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stcapr`
--

LOCK TABLES `stcapr` WRITE;
/*!40000 ALTER TABLE `stcapr` DISABLE KEYS */;
/*!40000 ALTER TABLE `stcapr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stcat`
--

DROP TABLE IF EXISTS `stcat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stcat` (
  `item_category` char(3) NOT NULL,
  `description` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stcat`
--

LOCK TABLES `stcat` WRITE;
/*!40000 ALTER TABLE `stcat` DISABLE KEYS */;
/*!40000 ALTER TABLE `stcat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stcawk`
--

DROP TABLE IF EXISTS `stcawk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stcawk` (
  `empl_year` int NOT NULL,
  `january` char(31) DEFAULT NULL,
  `february` char(29) DEFAULT NULL,
  `march` char(31) DEFAULT NULL,
  `april` char(30) DEFAULT NULL,
  `may` char(31) DEFAULT NULL,
  `june` char(31) DEFAULT NULL,
  `july` char(31) DEFAULT NULL,
  `august` char(31) DEFAULT NULL,
  `september` char(30) DEFAULT NULL,
  `october` char(31) DEFAULT NULL,
  `november` char(30) DEFAULT NULL,
  `december` char(31) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stcawk`
--

LOCK TABLES `stcawk` WRITE;
/*!40000 ALTER TABLE `stcawk` DISABLE KEYS */;
/*!40000 ALTER TABLE `stcawk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stcom`
--

DROP TABLE IF EXISTS `stcom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stcom` (
  `com_code` char(25) NOT NULL,
  `description` char(25) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stcom`
--

LOCK TABLES `stcom` WRITE;
/*!40000 ALTER TABLE `stcom` DISABLE KEYS */;
/*!40000 ALTER TABLE `stcom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stdatetime`
--

DROP TABLE IF EXISTS `stdatetime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stdatetime` (
  `datetimeform` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stdatetime`
--

LOCK TABLES `stdatetime` WRITE;
/*!40000 ALTER TABLE `stdatetime` DISABLE KEYS */;
/*!40000 ALTER TABLE `stdatetime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stdays`
--

DROP TABLE IF EXISTS `stdays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stdays` (
  `dayofweek` char(3) NOT NULL,
  `longname` char(9) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `day_origin` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stdays`
--

LOCK TABLES `stdays` WRITE;
/*!40000 ALTER TABLE `stdays` DISABLE KEYS */;
/*!40000 ALTER TABLE `stdays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stdesc`
--

DROP TABLE IF EXISTS `stdesc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stdesc` (
  `long_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stdesc`
--

LOCK TABLES `stdesc` WRITE;
/*!40000 ALTER TABLE `stdesc` DISABLE KEYS */;
/*!40000 ALTER TABLE `stdesc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stdt`
--

DROP TABLE IF EXISTS `stdt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stdt` (
  `division_no` char(2) NOT NULL,
  `division_desc` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stdt`
--

LOCK TABLES `stdt` WRITE;
/*!40000 ALTER TABLE `stdt` DISABLE KEYS */;
/*!40000 ALTER TABLE `stdt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stdtbu`
--

DROP TABLE IF EXISTS `stdtbu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stdtbu` (
  `division_no` char(2) NOT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stdtbu`
--

LOCK TABLES `stdtbu` WRITE;
/*!40000 ALTER TABLE `stdtbu` DISABLE KEYS */;
/*!40000 ALTER TABLE `stdtbu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stdtbua`
--

DROP TABLE IF EXISTS `stdtbua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stdtbua` (
  `division_no` char(2) NOT NULL,
  `plant_no` char(3) NOT NULL,
  `account` char(50) NOT NULL,
  `per1` bigint DEFAULT NULL,
  `per2` bigint DEFAULT NULL,
  `per3` bigint DEFAULT NULL,
  `per4` bigint DEFAULT NULL,
  `per5` bigint DEFAULT NULL,
  `per6` bigint DEFAULT NULL,
  `per7` bigint DEFAULT NULL,
  `per8` bigint DEFAULT NULL,
  `per9` bigint DEFAULT NULL,
  `per10` bigint DEFAULT NULL,
  `per11` bigint DEFAULT NULL,
  `per12` bigint DEFAULT NULL,
  `per13` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stdtbua`
--

LOCK TABLES `stdtbua` WRITE;
/*!40000 ALTER TABLE `stdtbua` DISABLE KEYS */;
/*!40000 ALTER TABLE `stdtbua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stdtbud`
--

DROP TABLE IF EXISTS `stdtbud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stdtbud` (
  `division_no` char(2) NOT NULL,
  `plant_no` char(3) NOT NULL,
  `account` char(50) NOT NULL,
  `per1` bigint DEFAULT NULL,
  `per2` bigint DEFAULT NULL,
  `per3` bigint DEFAULT NULL,
  `per4` bigint DEFAULT NULL,
  `per5` bigint DEFAULT NULL,
  `per6` bigint DEFAULT NULL,
  `per7` bigint DEFAULT NULL,
  `per8` bigint DEFAULT NULL,
  `per9` bigint DEFAULT NULL,
  `per10` bigint DEFAULT NULL,
  `per11` bigint DEFAULT NULL,
  `per12` bigint DEFAULT NULL,
  `per13` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stdtbud`
--

LOCK TABLES `stdtbud` WRITE;
/*!40000 ALTER TABLE `stdtbud` DISABLE KEYS */;
/*!40000 ALTER TABLE `stdtbud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stdtst`
--

DROP TABLE IF EXISTS `stdtst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stdtst` (
  `shipto` char(15) NOT NULL,
  `address_id` int DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stdtst`
--

LOCK TABLES `stdtst` WRITE;
/*!40000 ALTER TABLE `stdtst` DISABLE KEYS */;
/*!40000 ALTER TABLE `stdtst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stesa`
--

DROP TABLE IF EXISTS `stesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stesa` (
  `esa_code` char(1) NOT NULL,
  `description` char(20) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stesa`
--

LOCK TABLES `stesa` WRITE;
/*!40000 ALTER TABLE `stesa` DISABLE KEYS */;
/*!40000 ALTER TABLE `stesa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stext`
--

DROP TABLE IF EXISTS `stext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stext` (
  `exemption_type` char(7) NOT NULL,
  `description` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stext`
--

LOCK TABLES `stext` WRITE;
/*!40000 ALTER TABLE `stext` DISABLE KEYS */;
/*!40000 ALTER TABLE `stext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stgraph`
--

DROP TABLE IF EXISTS `stgraph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stgraph` (
  `login_id` char(25) DEFAULT NULL,
  `category` char(50) DEFAULT NULL,
  `value` bigint DEFAULT NULL,
  `series` char(50) DEFAULT NULL,
  `legend` char(50) DEFAULT NULL,
  `description` char(50) DEFAULT NULL,
  `period` int DEFAULT NULL,
  `counter` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stgraph`
--

LOCK TABLES `stgraph` WRITE;
/*!40000 ALTER TABLE `stgraph` DISABLE KEYS */;
/*!40000 ALTER TABLE `stgraph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stii`
--

DROP TABLE IF EXISTS `stii`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stii` (
  `insurance_id` char(25) NOT NULL,
  `group_code` char(10) DEFAULT NULL,
  `insurance_type` char(15) DEFAULT NULL,
  `amount` bigint DEFAULT NULL,
  `carrier` char(25) DEFAULT NULL,
  `broker` char(25) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stii`
--

LOCK TABLES `stii` WRITE;
/*!40000 ALTER TABLE `stii` DISABLE KEYS */;
/*!40000 ALTER TABLE `stii` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stissr`
--

DROP TABLE IF EXISTS `stissr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stissr` (
  `issue_rule` char(1) NOT NULL,
  `description` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stissr`
--

LOCK TABLES `stissr` WRITE;
/*!40000 ALTER TABLE `stissr` DISABLE KEYS */;
/*!40000 ALTER TABLE `stissr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stli`
--

DROP TABLE IF EXISTS `stli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stli` (
  `leaseno` char(25) NOT NULL,
  `amountofspace` bigint DEFAULT NULL,
  `spaceuom` char(8) DEFAULT NULL,
  `rate` bigint DEFAULT NULL,
  `ratefrequency` char(8) DEFAULT NULL,
  `improvements` char(50) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stli`
--

LOCK TABLES `stli` WRITE;
/*!40000 ALTER TABLE `stli` DISABLE KEYS */;
/*!40000 ALTER TABLE `stli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stlu`
--

DROP TABLE IF EXISTS `stlu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stlu` (
  `lube_code` char(25) NOT NULL,
  `lube_name` char(20) DEFAULT NULL,
  `lube_type` char(10) DEFAULT NULL,
  `apply_method` char(60) DEFAULT NULL,
  `comments` char(65) DEFAULT NULL,
  `appl_notes` text,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stlu`
--

LOCK TABLES `stlu` WRITE;
/*!40000 ALTER TABLE `stlu` DISABLE KEYS */;
/*!40000 ALTER TABLE `stlu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stluft`
--

DROP TABLE IF EXISTS `stluft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stluft` (
  `freq_code` char(2) NOT NULL,
  `sched_code` char(1) DEFAULT NULL,
  `description` char(15) DEFAULT NULL,
  `cycleinweeks` int DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stluft`
--

LOCK TABLES `stluft` WRITE;
/*!40000 ALTER TABLE `stluft` DISABLE KEYS */;
/*!40000 ALTER TABLE `stluft` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stmac`
--

DROP TABLE IF EXISTS `stmac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stmac` (
  `access_code` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stmac`
--

LOCK TABLES `stmac` WRITE;
/*!40000 ALTER TABLE `stmac` DISABLE KEYS */;
/*!40000 ALTER TABLE `stmac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stmf`
--

DROP TABLE IF EXISTS `stmf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stmf` (
  `mfg` char(25) NOT NULL,
  `address_id` int DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stmf`
--

LOCK TABLES `stmf` WRITE;
/*!40000 ALTER TABLE `stmf` DISABLE KEYS */;
/*!40000 ALTER TABLE `stmf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stmfm`
--

DROP TABLE IF EXISTS `stmfm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stmfm` (
  `mfg` char(25) NOT NULL,
  `modelno` char(50) NOT NULL,
  `description` char(80) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stmfm`
--

LOCK TABLES `stmfm` WRITE;
/*!40000 ALTER TABLE `stmfm` DISABLE KEYS */;
/*!40000 ALTER TABLE `stmfm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stmfms`
--

DROP TABLE IF EXISTS `stmfms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stmfms` (
  `mfg` char(25) NOT NULL,
  `modelno` char(50) NOT NULL,
  `partno` char(25) NOT NULL,
  `stockno` char(25) DEFAULT NULL,
  `qty_needed` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stmfms`
--

LOCK TABLES `stmfms` WRITE;
/*!40000 ALTER TABLE `stmfms` DISABLE KEYS */;
/*!40000 ALTER TABLE `stmfms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stmrid`
--

DROP TABLE IF EXISTS `stmrid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stmrid` (
  `mtlrqnnum` int NOT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stmrid`
--

LOCK TABLES `stmrid` WRITE;
/*!40000 ALTER TABLE `stmrid` DISABLE KEYS */;
/*!40000 ALTER TABLE `stmrid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stms`
--

DROP TABLE IF EXISTS `stms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stms` (
  `marital_status` char(1) NOT NULL,
  `description` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stms`
--

LOCK TABLES `stms` WRITE;
/*!40000 ALTER TABLE `stms` DISABLE KEYS */;
/*!40000 ALTER TABLE `stms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stmsl`
--

DROP TABLE IF EXISTS `stmsl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stmsl` (
  `mstr_locn_cd` char(3) NOT NULL,
  `description` char(80) DEFAULT NULL,
  `address_id` int DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stmsl`
--

LOCK TABLES `stmsl` WRITE;
/*!40000 ALTER TABLE `stmsl` DISABLE KEYS */;
/*!40000 ALTER TABLE `stmsl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stmsla`
--

DROP TABLE IF EXISTS `stmsla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stmsla` (
  `mstr_locn_cd` char(3) NOT NULL,
  `area_locn_cd` char(5) NOT NULL,
  `description` char(80) DEFAULT NULL,
  `storage_type` char(2) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stmsla`
--

LOCK TABLES `stmsla` WRITE;
/*!40000 ALTER TABLE `stmsla` DISABLE KEYS */;
/*!40000 ALTER TABLE `stmsla` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stmslad`
--

DROP TABLE IF EXISTS `stmslad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stmslad` (
  `stk_locn` char(20) NOT NULL,
  `mstr_locn_cd` char(3) NOT NULL,
  `area_locn_cd` char(5) NOT NULL,
  `bin_id` char(12) NOT NULL,
  `locn_cat` char(20) NOT NULL,
  `costcenter` char(50) DEFAULT NULL,
  `account` char(50) DEFAULT NULL,
  `capacity` bigint DEFAULT NULL,
  `capacity_uom` char(8) DEFAULT NULL,
  `onhold` char(1) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stmslad`
--

LOCK TABLES `stmslad` WRITE;
/*!40000 ALTER TABLE `stmslad` DISABLE KEYS */;
/*!40000 ALTER TABLE `stmslad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stmslag`
--

DROP TABLE IF EXISTS `stmslag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stmslag` (
  `mstr_locn_cd` char(3) NOT NULL,
  `area_locn_cd` char(5) NOT NULL,
  `grp_code` char(5) NOT NULL,
  `access_code` char(1) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stmslag`
--

LOCK TABLES `stmslag` WRITE;
/*!40000 ALTER TABLE `stmslag` DISABLE KEYS */;
/*!40000 ALTER TABLE `stmslag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stmtcat`
--

DROP TABLE IF EXISTS `stmtcat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stmtcat` (
  `locn_cat` char(20) NOT NULL,
  `type` char(1) NOT NULL,
  `description` char(80) DEFAULT NULL,
  `inc_ttloh` char(1) NOT NULL,
  `usage` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stmtcat`
--

LOCK TABLES `stmtcat` WRITE;
/*!40000 ALTER TABLE `stmtcat` DISABLE KEYS */;
/*!40000 ALTER TABLE `stmtcat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stmtcr`
--

DROP TABLE IF EXISTS `stmtcr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stmtcr` (
  `cr_code` char(10) NOT NULL,
  `cr_description` char(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stmtcr`
--

LOCK TABLES `stmtcr` WRITE;
/*!40000 ALTER TABLE `stmtcr` DISABLE KEYS */;
/*!40000 ALTER TABLE `stmtcr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stmtpm`
--

DROP TABLE IF EXISTS `stmtpm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stmtpm` (
  `stockno` char(25) NOT NULL,
  `description` char(80) DEFAULT NULL,
  `ext_description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stmtpm`
--

LOCK TABLES `stmtpm` WRITE;
/*!40000 ALTER TABLE `stmtpm` DISABLE KEYS */;
/*!40000 ALTER TABLE `stmtpm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stmtxn`
--

DROP TABLE IF EXISTS `stmtxn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stmtxn` (
  `xn_code` char(5) NOT NULL,
  `description` char(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stmtxn`
--

LOCK TABLES `stmtxn` WRITE;
/*!40000 ALTER TABLE `stmtxn` DISABLE KEYS */;
/*!40000 ALTER TABLE `stmtxn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stntcat`
--

DROP TABLE IF EXISTS `stntcat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stntcat` (
  `np_cat` char(2) NOT NULL,
  `description` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stntcat`
--

LOCK TABLES `stntcat` WRITE;
/*!40000 ALTER TABLE `stntcat` DISABLE KEYS */;
/*!40000 ALTER TABLE `stntcat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stobid`
--

DROP TABLE IF EXISTS `stobid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stobid` (
  `obsrv_id` int NOT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stobid`
--

LOCK TABLES `stobid` WRITE;
/*!40000 ALTER TABLE `stobid` DISABLE KEYS */;
/*!40000 ALTER TABLE `stobid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stopr`
--

DROP TABLE IF EXISTS `stopr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stopr` (
  `op_refno` int NOT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stopr`
--

LOCK TABLES `stopr` WRITE;
/*!40000 ALTER TABLE `stopr` DISABLE KEYS */;
/*!40000 ALTER TABLE `stopr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stordr`
--

DROP TABLE IF EXISTS `stordr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stordr` (
  `order_rule` char(1) NOT NULL,
  `description` char(40) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stordr`
--

LOCK TABLES `stordr` WRITE;
/*!40000 ALTER TABLE `stordr` DISABLE KEYS */;
/*!40000 ALTER TABLE `stordr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stpmft`
--

DROP TABLE IF EXISTS `stpmft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stpmft` (
  `freq_type` char(2) NOT NULL,
  `description` char(20) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stpmft`
--

LOCK TABLES `stpmft` WRITE;
/*!40000 ALTER TABLE `stpmft` DISABLE KEYS */;
/*!40000 ALTER TABLE `stpmft` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stpmid`
--

DROP TABLE IF EXISTS `stpmid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stpmid` (
  `pm_idno` int NOT NULL,
  `description` char(50) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stpmid`
--

LOCK TABLES `stpmid` WRITE;
/*!40000 ALTER TABLE `stpmid` DISABLE KEYS */;
/*!40000 ALTER TABLE `stpmid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stpmst`
--

DROP TABLE IF EXISTS `stpmst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stpmst` (
  `dflt_status` char(3) NOT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stpmst`
--

LOCK TABLES `stpmst` WRITE;
/*!40000 ALTER TABLE `stpmst` DISABLE KEYS */;
/*!40000 ALTER TABLE `stpmst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stpnp`
--

DROP TABLE IF EXISTS `stpnp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stpnp` (
  `p_np_indicator` char(1) NOT NULL,
  `prod_flag` char(1) DEFAULT NULL,
  `description` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stpnp`
--

LOCK TABLES `stpnp` WRITE;
/*!40000 ALTER TABLE `stpnp` DISABLE KEYS */;
/*!40000 ALTER TABLE `stpnp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stpot`
--

DROP TABLE IF EXISTS `stpot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stpot` (
  `po_type` char(1) NOT NULL,
  `description` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stpot`
--

LOCK TABLES `stpot` WRITE;
/*!40000 ALTER TABLE `stpot` DISABLE KEYS */;
/*!40000 ALTER TABLE `stpot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stpt`
--

DROP TABLE IF EXISTS `stpt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stpt` (
  `plant_no` char(3) NOT NULL,
  `plant_desc` char(25) DEFAULT NULL,
  `plant_address` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stpt`
--

LOCK TABLES `stpt` WRITE;
/*!40000 ALTER TABLE `stpt` DISABLE KEYS */;
/*!40000 ALTER TABLE `stpt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptac`
--

DROP TABLE IF EXISTS `stptac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptac` (
  `activity_code` char(25) NOT NULL,
  `work_category` char(10) DEFAULT NULL,
  `short_desc` char(25) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `ext_description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptac`
--

LOCK TABLES `stptac` WRITE;
/*!40000 ALTER TABLE `stptac` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptacd`
--

DROP TABLE IF EXISTS `stptacd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptacd` (
  `code` char(15) NOT NULL,
  `description` text,
  `per1` int DEFAULT NULL,
  `per2` int DEFAULT NULL,
  `per3` int DEFAULT NULL,
  `per4` int DEFAULT NULL,
  `per5` int DEFAULT NULL,
  `per6` int DEFAULT NULL,
  `per7` int DEFAULT NULL,
  `per8` int DEFAULT NULL,
  `per9` int DEFAULT NULL,
  `per10` int DEFAULT NULL,
  `per11` int DEFAULT NULL,
  `per12` int DEFAULT NULL,
  `per13` int DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptacd`
--

LOCK TABLES `stptacd` WRITE;
/*!40000 ALTER TABLE `stptacd` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptacd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptacl`
--

DROP TABLE IF EXISTS `stptacl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptacl` (
  `activity_code` char(25) NOT NULL,
  `craft` char(3) NOT NULL,
  `hours` bigint DEFAULT NULL,
  `esa_code` char(1) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `ts_code` char(1) DEFAULT NULL,
  `crewsize` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptacl`
--

LOCK TABLES `stptacl` WRITE;
/*!40000 ALTER TABLE `stptacl` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptacl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptacm`
--

DROP TABLE IF EXISTS `stptacm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptacm` (
  `activity_code` char(25) NOT NULL,
  `mkey` char(25) NOT NULL,
  `stockno` char(25) DEFAULT NULL,
  `description` char(80) DEFAULT NULL,
  `qty_needed` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `mtl_uom` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptacm`
--

LOCK TABLES `stptacm` WRITE;
/*!40000 ALTER TABLE `stptacm` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptacm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptapp`
--

DROP TABLE IF EXISTS `stptapp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptapp` (
  `empl_id` char(25) NOT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptapp`
--

LOCK TABLES `stptapp` WRITE;
/*!40000 ALTER TABLE `stptapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptapp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptcc`
--

DROP TABLE IF EXISTS `stptcc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptcc` (
  `costcenter` char(50) NOT NULL,
  `description` char(50) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptcc`
--

LOCK TABLES `stptcc` WRITE;
/*!40000 ALTER TABLE `stptcc` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptcc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptcca`
--

DROP TABLE IF EXISTS `stptcca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptcca` (
  `costcenter` char(50) NOT NULL,
  `empl_id` char(25) NOT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptcca`
--

LOCK TABLES `stptcca` WRITE;
/*!40000 ALTER TABLE `stptcca` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptcca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptccb`
--

DROP TABLE IF EXISTS `stptccb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptccb` (
  `costcenter` char(50) NOT NULL,
  `account` char(50) NOT NULL,
  `per1` bigint DEFAULT NULL,
  `per2` bigint DEFAULT NULL,
  `per3` bigint DEFAULT NULL,
  `per4` bigint DEFAULT NULL,
  `per5` bigint DEFAULT NULL,
  `per6` bigint DEFAULT NULL,
  `per7` bigint DEFAULT NULL,
  `per8` bigint DEFAULT NULL,
  `per9` bigint DEFAULT NULL,
  `per10` bigint DEFAULT NULL,
  `per11` bigint DEFAULT NULL,
  `per12` bigint DEFAULT NULL,
  `per13` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `budget_year` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptccb`
--

LOCK TABLES `stptccb` WRITE;
/*!40000 ALTER TABLE `stptccb` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptccb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptccd`
--

DROP TABLE IF EXISTS `stptccd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptccd` (
  `code` char(15) NOT NULL,
  `description` text,
  `per1` int DEFAULT NULL,
  `per2` int DEFAULT NULL,
  `per3` int DEFAULT NULL,
  `per4` int DEFAULT NULL,
  `per5` int DEFAULT NULL,
  `per6` int DEFAULT NULL,
  `per7` int DEFAULT NULL,
  `per8` int DEFAULT NULL,
  `per9` int DEFAULT NULL,
  `per10` int DEFAULT NULL,
  `per11` int DEFAULT NULL,
  `per12` int DEFAULT NULL,
  `per13` int DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptccd`
--

LOCK TABLES `stptccd` WRITE;
/*!40000 ALTER TABLE `stptccd` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptccd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptcch`
--

DROP TABLE IF EXISTS `stptcch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptcch` (
  `costcenter` char(50) NOT NULL,
  `account` char(50) NOT NULL,
  `per1` bigint DEFAULT NULL,
  `per2` bigint DEFAULT NULL,
  `plant_no` char(3) DEFAULT NULL,
  `per3` bigint DEFAULT NULL,
  `per4` bigint DEFAULT NULL,
  `per5` bigint DEFAULT NULL,
  `per6` bigint DEFAULT NULL,
  `per7` bigint DEFAULT NULL,
  `per8` bigint DEFAULT NULL,
  `per9` bigint DEFAULT NULL,
  `per10` bigint DEFAULT NULL,
  `per11` bigint DEFAULT NULL,
  `per12` bigint DEFAULT NULL,
  `per13` bigint DEFAULT NULL,
  `budget_year` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptcch`
--

LOCK TABLES `stptcch` WRITE;
/*!40000 ALTER TABLE `stptcch` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptcch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptccm`
--

DROP TABLE IF EXISTS `stptccm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptccm` (
  `costcenter` char(50) NOT NULL,
  `account` char(50) NOT NULL,
  `xn_date` datetime NOT NULL,
  `xn_time` int NOT NULL,
  `empl_id` char(25) DEFAULT NULL,
  `credit_amt` bigint DEFAULT NULL,
  `charge_amt` bigint DEFAULT NULL,
  `description` char(80) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptccm`
--

LOCK TABLES `stptccm` WRITE;
/*!40000 ALTER TABLE `stptccm` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptccm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptcco`
--

DROP TABLE IF EXISTS `stptcco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptcco` (
  `crd_costcenter` char(50) NOT NULL,
  `chg_costcenter` char(50) NOT NULL,
  `ovrhd_factor` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptcco`
--

LOCK TABLES `stptcco` WRITE;
/*!40000 ALTER TABLE `stptcco` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptcco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptccr`
--

DROP TABLE IF EXISTS `stptccr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptccr` (
  `costcenter` char(50) NOT NULL,
  `account` char(50) NOT NULL,
  `per1` bigint DEFAULT NULL,
  `per2` bigint DEFAULT NULL,
  `plant_no` char(3) DEFAULT NULL,
  `per3` bigint DEFAULT NULL,
  `per4` bigint DEFAULT NULL,
  `per5` bigint DEFAULT NULL,
  `per6` bigint DEFAULT NULL,
  `per7` bigint DEFAULT NULL,
  `per8` bigint DEFAULT NULL,
  `per9` bigint DEFAULT NULL,
  `per10` bigint DEFAULT NULL,
  `per11` bigint DEFAULT NULL,
  `per12` bigint DEFAULT NULL,
  `per13` bigint DEFAULT NULL,
  `budget_year` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptccr`
--

LOCK TABLES `stptccr` WRITE;
/*!40000 ALTER TABLE `stptccr` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptccr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptcr`
--

DROP TABLE IF EXISTS `stptcr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptcr` (
  `craft` char(3) NOT NULL,
  `description` char(25) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptcr`
--

LOCK TABLES `stptcr` WRITE;
/*!40000 ALTER TABLE `stptcr` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptcr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptcrnc`
--

DROP TABLE IF EXISTS `stptcrnc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptcrnc` (
  `craft` char(3) NOT NULL,
  `week1` bigint DEFAULT NULL,
  `week2` bigint DEFAULT NULL,
  `week3` bigint DEFAULT NULL,
  `week4` bigint DEFAULT NULL,
  `week5` bigint DEFAULT NULL,
  `week6` bigint DEFAULT NULL,
  `week7` bigint DEFAULT NULL,
  `week8` bigint DEFAULT NULL,
  `week9` bigint DEFAULT NULL,
  `week10` bigint DEFAULT NULL,
  `week11` bigint DEFAULT NULL,
  `week12` bigint DEFAULT NULL,
  `week13` bigint DEFAULT NULL,
  `week14` bigint DEFAULT NULL,
  `week15` bigint DEFAULT NULL,
  `week16` bigint DEFAULT NULL,
  `week17` bigint DEFAULT NULL,
  `week18` bigint DEFAULT NULL,
  `week19` bigint DEFAULT NULL,
  `week20` bigint DEFAULT NULL,
  `week21` bigint DEFAULT NULL,
  `week22` bigint DEFAULT NULL,
  `week23` bigint DEFAULT NULL,
  `week24` bigint DEFAULT NULL,
  `week25` bigint DEFAULT NULL,
  `week26` bigint DEFAULT NULL,
  `week27` bigint DEFAULT NULL,
  `week28` bigint DEFAULT NULL,
  `week29` bigint DEFAULT NULL,
  `week30` bigint DEFAULT NULL,
  `week31` bigint DEFAULT NULL,
  `week32` bigint DEFAULT NULL,
  `week33` bigint DEFAULT NULL,
  `week34` bigint DEFAULT NULL,
  `week35` bigint DEFAULT NULL,
  `week36` bigint DEFAULT NULL,
  `week37` bigint DEFAULT NULL,
  `week38` bigint DEFAULT NULL,
  `week39` bigint DEFAULT NULL,
  `week40` bigint DEFAULT NULL,
  `week41` bigint DEFAULT NULL,
  `week42` bigint DEFAULT NULL,
  `week43` bigint DEFAULT NULL,
  `week44` bigint DEFAULT NULL,
  `week45` bigint DEFAULT NULL,
  `week46` bigint DEFAULT NULL,
  `week47` bigint DEFAULT NULL,
  `week48` bigint DEFAULT NULL,
  `week49` bigint DEFAULT NULL,
  `week50` bigint DEFAULT NULL,
  `week51` bigint DEFAULT NULL,
  `week52` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptcrnc`
--

LOCK TABLES `stptcrnc` WRITE;
/*!40000 ALTER TABLE `stptcrnc` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptcrnc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptcrnp`
--

DROP TABLE IF EXISTS `stptcrnp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptcrnp` (
  `craft` char(3) NOT NULL,
  `week1` bigint DEFAULT NULL,
  `week2` bigint DEFAULT NULL,
  `week3` bigint DEFAULT NULL,
  `week4` bigint DEFAULT NULL,
  `week5` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptcrnp`
--

LOCK TABLES `stptcrnp` WRITE;
/*!40000 ALTER TABLE `stptcrnp` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptcrnp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptcrtd`
--

DROP TABLE IF EXISTS `stptcrtd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptcrtd` (
  `craft` char(3) NOT NULL,
  `ts_code` char(1) NOT NULL,
  `low_end` bigint DEFAULT NULL,
  `high_end` bigint DEFAULT NULL,
  `ttl_jobs` int DEFAULT NULL,
  `ttl_hrs` bigint DEFAULT NULL,
  `avg_hrs` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptcrtd`
--

LOCK TABLES `stptcrtd` WRITE;
/*!40000 ALTER TABLE `stptcrtd` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptcrtd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptct`
--

DROP TABLE IF EXISTS `stptct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptct` (
  `critfactor` char(1) NOT NULL,
  `minutes_delay` int DEFAULT NULL,
  `emergency` char(1) DEFAULT NULL,
  `description` char(25) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptct`
--

LOCK TABLES `stptct` WRITE;
/*!40000 ALTER TABLE `stptct` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptdl`
--

DROP TABLE IF EXISTS `stptdl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptdl` (
  `delay_code` char(2) NOT NULL,
  `description` char(25) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptdl`
--

LOCK TABLES `stptdl` WRITE;
/*!40000 ALTER TABLE `stptdl` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptdl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptfa`
--

DROP TABLE IF EXISTS `stptfa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptfa` (
  `code` char(15) NOT NULL,
  `description` text,
  `per1` int DEFAULT NULL,
  `per2` int DEFAULT NULL,
  `per3` int DEFAULT NULL,
  `per4` int DEFAULT NULL,
  `per5` int DEFAULT NULL,
  `per6` int DEFAULT NULL,
  `per7` int DEFAULT NULL,
  `per8` int DEFAULT NULL,
  `per9` int DEFAULT NULL,
  `per10` int DEFAULT NULL,
  `per11` int DEFAULT NULL,
  `per12` int DEFAULT NULL,
  `per13` int DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptfa`
--

LOCK TABLES `stptfa` WRITE;
/*!40000 ALTER TABLE `stptfa` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptfa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptfrm`
--

DROP TABLE IF EXISTS `stptfrm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptfrm` (
  `empl_id` char(25) NOT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptfrm`
--

LOCK TABLES `stptfrm` WRITE;
/*!40000 ALTER TABLE `stptfrm` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptfrm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptnum`
--

DROP TABLE IF EXISTS `stptnum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptnum` (
  `corr_prefix` char(1) DEFAULT NULL,
  `corr_counter` int DEFAULT NULL,
  `pm_prefix` char(1) DEFAULT NULL,
  `pm_counter` int DEFAULT NULL,
  `task_prefix` char(1) DEFAULT NULL,
  `task_counter` int DEFAULT NULL,
  `pred_prefix` char(1) DEFAULT NULL,
  `pred_counter` int DEFAULT NULL,
  `disp_prefix` char(1) DEFAULT NULL,
  `disp_counter` int DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `wodummy_counter` int DEFAULT NULL,
  `stxns_counter` int DEFAULT NULL,
  `route_prefix` char(1) DEFAULT NULL,
  `route_counter` int DEFAULT NULL,
  `pupo_counter` int DEFAULT NULL,
  `pupo_prefix` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptnum`
--

LOCK TABLES `stptnum` WRITE;
/*!40000 ALTER TABLE `stptnum` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptnum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptor`
--

DROP TABLE IF EXISTS `stptor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptor` (
  `sched_ord_rule` char(1) NOT NULL,
  `description` char(25) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptor`
--

LOCK TABLES `stptor` WRITE;
/*!40000 ALTER TABLE `stptor` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptpln`
--

DROP TABLE IF EXISTS `stptpln`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptpln` (
  `empl_id` char(25) NOT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptpln`
--

LOCK TABLES `stptpln` WRITE;
/*!40000 ALTER TABLE `stptpln` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptpln` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptpmf`
--

DROP TABLE IF EXISTS `stptpmf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptpmf` (
  `freq_code` char(5) NOT NULL,
  `freq_type` char(2) NOT NULL,
  `band` int DEFAULT NULL,
  `lead_pct` bigint DEFAULT NULL,
  `cal_days` int DEFAULT NULL,
  `usg` bigint DEFAULT NULL,
  `usg_uom` char(8) DEFAULT NULL,
  `dayofweek` char(3) DEFAULT NULL,
  `dayofmonth` int DEFAULT NULL,
  `weekofmonth` int DEFAULT NULL,
  `description` char(20) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptpmf`
--

LOCK TABLES `stptpmf` WRITE;
/*!40000 ALTER TABLE `stptpmf` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptpmf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptsc`
--

DROP TABLE IF EXISTS `stptsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptsc` (
  `shift_code` char(1) NOT NULL,
  `description` char(25) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptsc`
--

LOCK TABLES `stptsc` WRITE;
/*!40000 ALTER TABLE `stptsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptsc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptsec`
--

DROP TABLE IF EXISTS `stptsec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptsec` (
  `window_name` char(40) NOT NULL,
  `window_type` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptsec`
--

LOCK TABLES `stptsec` WRITE;
/*!40000 ALTER TABLE `stptsec` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptsec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptsecv`
--

DROP TABLE IF EXISTS `stptsecv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptsecv` (
  `login_id` char(25) NOT NULL,
  `leaf_id` char(8) NOT NULL,
  `vdatetime` datetime NOT NULL,
  `vtime` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptsecv`
--

LOCK TABLES `stptsecv` WRITE;
/*!40000 ALTER TABLE `stptsecv` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptsecv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptsupv`
--

DROP TABLE IF EXISTS `stptsupv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptsupv` (
  `empl_id` char(25) NOT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptsupv`
--

LOCK TABLES `stptsupv` WRITE;
/*!40000 ALTER TABLE `stptsupv` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptsupv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stpttf`
--

DROP TABLE IF EXISTS `stpttf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stpttf` (
  `hours_type` char(2) NOT NULL,
  `p_np_indicator` char(1) DEFAULT NULL,
  `description` char(20) DEFAULT NULL,
  `account` char(50) DEFAULT NULL,
  `multiplier` bigint DEFAULT NULL,
  `adder` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `ytd_hours` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stpttf`
--

LOCK TABLES `stpttf` WRITE;
/*!40000 ALTER TABLE `stpttf` DISABLE KEYS */;
/*!40000 ALTER TABLE `stpttf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stpttg`
--

DROP TABLE IF EXISTS `stpttg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stpttg` (
  `grp_code` char(5) NOT NULL,
  `description` char(25) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stpttg`
--

LOCK TABLES `stpttg` WRITE;
/*!40000 ALTER TABLE `stpttg` DISABLE KEYS */;
/*!40000 ALTER TABLE `stpttg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptts`
--

DROP TABLE IF EXISTS `stptts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptts` (
  `ts_code` char(1) NOT NULL,
  `description` char(25) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptts`
--

LOCK TABLES `stptts` WRITE;
/*!40000 ALTER TABLE `stptts` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptug`
--

DROP TABLE IF EXISTS `stptug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptug` (
  `grp_code` char(5) NOT NULL,
  `description` char(40) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptug`
--

LOCK TABLES `stptug` WRITE;
/*!40000 ALTER TABLE `stptug` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptugl`
--

DROP TABLE IF EXISTS `stptugl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptugl` (
  `grp_code` char(5) NOT NULL,
  `login_id` char(25) NOT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptugl`
--

LOCK TABLES `stptugl` WRITE;
/*!40000 ALTER TABLE `stptugl` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptugl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptup`
--

DROP TABLE IF EXISTS `stptup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptup` (
  `login_id` char(25) NOT NULL,
  `empl_id` char(25) DEFAULT NULL,
  `initial_cmd` char(15) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `password` char(10) DEFAULT NULL,
  `logged_in_flag` char(1) DEFAULT NULL,
  `window_type` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptup`
--

LOCK TABLES `stptup` WRITE;
/*!40000 ALTER TABLE `stptup` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptwa`
--

DROP TABLE IF EXISTS `stptwa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptwa` (
  `work_area` char(1) NOT NULL,
  `description` char(25) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptwa`
--

LOCK TABLES `stptwa` WRITE;
/*!40000 ALTER TABLE `stptwa` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptwa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptwc`
--

DROP TABLE IF EXISTS `stptwc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptwc` (
  `work_class` char(5) NOT NULL,
  `description` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptwc`
--

LOCK TABLES `stptwc` WRITE;
/*!40000 ALTER TABLE `stptwc` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptwc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptwg`
--

DROP TABLE IF EXISTS `stptwg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptwg` (
  `work_grp` char(15) NOT NULL,
  `description` char(40) DEFAULT NULL,
  `foreman` char(25) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptwg`
--

LOCK TABLES `stptwg` WRITE;
/*!40000 ALTER TABLE `stptwg` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptwg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptwgc`
--

DROP TABLE IF EXISTS `stptwgc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptwgc` (
  `work_grp` char(15) NOT NULL,
  `costcenter` char(50) NOT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptwgc`
--

LOCK TABLES `stptwgc` WRITE;
/*!40000 ALTER TABLE `stptwgc` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptwgc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptwgl`
--

DROP TABLE IF EXISTS `stptwgl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptwgl` (
  `work_grp` char(15) NOT NULL,
  `empl_id` char(25) NOT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptwgl`
--

LOCK TABLES `stptwgl` WRITE;
/*!40000 ALTER TABLE `stptwgl` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptwgl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptwop`
--

DROP TABLE IF EXISTS `stptwop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptwop` (
  `priority` char(1) NOT NULL,
  `description` char(25) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `per1` int DEFAULT NULL,
  `per2` int DEFAULT NULL,
  `per3` int DEFAULT NULL,
  `per4` int DEFAULT NULL,
  `per5` int DEFAULT NULL,
  `per6` int DEFAULT NULL,
  `per7` int DEFAULT NULL,
  `per8` int DEFAULT NULL,
  `per9` int DEFAULT NULL,
  `per10` int DEFAULT NULL,
  `per11` int DEFAULT NULL,
  `per12` int DEFAULT NULL,
  `per13` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptwop`
--

LOCK TABLES `stptwop` WRITE;
/*!40000 ALTER TABLE `stptwop` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptwop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stptwt`
--

DROP TABLE IF EXISTS `stptwt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stptwt` (
  `work_type` char(5) NOT NULL,
  `description` char(25) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `per1` int DEFAULT NULL,
  `per2` int DEFAULT NULL,
  `per3` int DEFAULT NULL,
  `per4` int DEFAULT NULL,
  `per5` int DEFAULT NULL,
  `per6` int DEFAULT NULL,
  `per7` int DEFAULT NULL,
  `per8` int DEFAULT NULL,
  `per9` int DEFAULT NULL,
  `per10` int DEFAULT NULL,
  `per11` int DEFAULT NULL,
  `per12` int DEFAULT NULL,
  `per13` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stptwt`
--

LOCK TABLES `stptwt` WRITE;
/*!40000 ALTER TABLE `stptwt` DISABLE KEYS */;
/*!40000 ALTER TABLE `stptwt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stput`
--

DROP TABLE IF EXISTS `stput`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stput` (
  `doc_type` char(3) NOT NULL,
  `description` char(25) DEFAULT NULL,
  `doc_header` text,
  `doc_trailer` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stput`
--

LOCK TABLES `stput` WRITE;
/*!40000 ALTER TABLE `stput` DISABLE KEYS */;
/*!40000 ALTER TABLE `stput` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strqid`
--

DROP TABLE IF EXISTS `strqid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strqid` (
  `porqnnum` int NOT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strqid`
--

LOCK TABLES `strqid` WRITE;
/*!40000 ALTER TABLE `strqid` DISABLE KEYS */;
/*!40000 ALTER TABLE `strqid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strtcmt`
--

DROP TABLE IF EXISTS `strtcmt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strtcmt` (
  `comments` char(2) NOT NULL,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strtcmt`
--

LOCK TABLES `strtcmt` WRITE;
/*!40000 ALTER TABLE `strtcmt` DISABLE KEYS */;
/*!40000 ALTER TABLE `strtcmt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strttyp`
--

DROP TABLE IF EXISTS `strttyp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strttyp` (
  `route_type` char(1) NOT NULL,
  `description` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strttyp`
--

LOCK TABLES `strttyp` WRITE;
/*!40000 ALTER TABLE `strttyp` DISABLE KEYS */;
/*!40000 ALTER TABLE `strttyp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stsc`
--

DROP TABLE IF EXISTS `stsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stsc` (
  `st_cat` char(20) NOT NULL,
  `cat_type_tbl` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stsc`
--

LOCK TABLES `stsc` WRITE;
/*!40000 ALTER TABLE `stsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `stsc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stscem`
--

DROP TABLE IF EXISTS `stscem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stscem` (
  `status` char(3) NOT NULL,
  `description` char(20) DEFAULT NULL,
  `status_type` char(3) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `st_cat` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stscem`
--

LOCK TABLES `stscem` WRITE;
/*!40000 ALTER TABLE `stscem` DISABLE KEYS */;
/*!40000 ALTER TABLE `stscem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stsceq`
--

DROP TABLE IF EXISTS `stsceq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stsceq` (
  `status` char(3) NOT NULL,
  `description` char(20) DEFAULT NULL,
  `status_type` char(3) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `is_flag` char(1) DEFAULT NULL,
  `st_cat` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stsceq`
--

LOCK TABLES `stsceq` WRITE;
/*!40000 ALTER TABLE `stsceq` DISABLE KEYS */;
/*!40000 ALTER TABLE `stsceq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stscpu`
--

DROP TABLE IF EXISTS `stscpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stscpu` (
  `status` char(3) NOT NULL,
  `description` char(20) DEFAULT NULL,
  `status_type` char(3) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `st_cat` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stscpu`
--

LOCK TABLES `stscpu` WRITE;
/*!40000 ALTER TABLE `stscpu` DISABLE KEYS */;
/*!40000 ALTER TABLE `stscpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stscty`
--

DROP TABLE IF EXISTS `stscty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stscty` (
  `status_type` char(3) NOT NULL,
  `plant_no` char(3) NOT NULL,
  `description` char(25) DEFAULT NULL,
  `st_cat` char(20) NOT NULL,
  `cat_type_tbl` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stscty`
--

LOCK TABLES `stscty` WRITE;
/*!40000 ALTER TABLE `stscty` DISABLE KEYS */;
/*!40000 ALTER TABLE `stscty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stscwk`
--

DROP TABLE IF EXISTS `stscwk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stscwk` (
  `status` char(3) NOT NULL,
  `description` char(20) DEFAULT NULL,
  `status_type` char(3) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `st_cat` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stscwk`
--

LOCK TABLES `stscwk` WRITE;
/*!40000 ALTER TABLE `stscwk` DISABLE KEYS */;
/*!40000 ALTER TABLE `stscwk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stsex`
--

DROP TABLE IF EXISTS `stsex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stsex` (
  `sex` char(1) NOT NULL,
  `description` char(15) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stsex`
--

LOCK TABLES `stsex` WRITE;
/*!40000 ALTER TABLE `stsex` DISABLE KEYS */;
/*!40000 ALTER TABLE `stsex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stslt`
--

DROP TABLE IF EXISTS `stslt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stslt` (
  `storage_type` char(2) NOT NULL,
  `description` char(50) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stslt`
--

LOCK TABLES `stslt` WRITE;
/*!40000 ALTER TABLE `stslt` DISABLE KEYS */;
/*!40000 ALTER TABLE `stslt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stsu`
--

DROP TABLE IF EXISTS `stsu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stsu` (
  `supplier` char(25) NOT NULL,
  `address_id` int DEFAULT NULL,
  `rating` char(3) DEFAULT NULL,
  `buyer` char(25) DEFAULT NULL,
  `terms` char(20) DEFAULT NULL,
  `fob` char(20) DEFAULT NULL,
  `shipvia` char(30) DEFAULT NULL,
  `taxrate` bigint DEFAULT NULL,
  `lp_date` datetime DEFAULT NULL,
  `status` char(3) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stsu`
--

LOCK TABLES `stsu` WRITE;
/*!40000 ALTER TABLE `stsu` DISABLE KEYS */;
/*!40000 ALTER TABLE `stsu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stsuac`
--

DROP TABLE IF EXISTS `stsuac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stsuac` (
  `supplier` char(25) NOT NULL,
  `per1` bigint DEFAULT NULL,
  `per2` bigint DEFAULT NULL,
  `per3` bigint DEFAULT NULL,
  `per4` bigint DEFAULT NULL,
  `per5` bigint DEFAULT NULL,
  `per6` bigint DEFAULT NULL,
  `per7` bigint DEFAULT NULL,
  `per8` bigint DEFAULT NULL,
  `per9` bigint DEFAULT NULL,
  `per10` bigint DEFAULT NULL,
  `per11` bigint DEFAULT NULL,
  `per12` bigint DEFAULT NULL,
  `per13` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stsuac`
--

LOCK TABLES `stsuac` WRITE;
/*!40000 ALTER TABLE `stsuac` DISABLE KEYS */;
/*!40000 ALTER TABLE `stsuac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stsup`
--

DROP TABLE IF EXISTS `stsup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stsup` (
  `supplier` char(25) NOT NULL,
  `pono` char(50) NOT NULL,
  `rater` char(25) NOT NULL,
  `rating` char(3) DEFAULT NULL,
  `po_date` datetime NOT NULL,
  `rating_notes` char(25) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stsup`
--

LOCK TABLES `stsup` WRITE;
/*!40000 ALTER TABLE `stsup` DISABLE KEYS */;
/*!40000 ALTER TABLE `stsup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sttaid`
--

DROP TABLE IF EXISTS `sttaid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sttaid` (
  `task_id` int NOT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sttaid`
--

LOCK TABLES `sttaid` WRITE;
/*!40000 ALTER TABLE `sttaid` DISABLE KEYS */;
/*!40000 ALTER TABLE `sttaid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sttast`
--

DROP TABLE IF EXISTS `sttast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sttast` (
  `dflt_status` char(3) NOT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sttast`
--

LOCK TABLES `sttast` WRITE;
/*!40000 ALTER TABLE `sttast` DISABLE KEYS */;
/*!40000 ALTER TABLE `sttast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stti`
--

DROP TABLE IF EXISTS `stti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stti` (
  `course_id` char(10) NOT NULL,
  `address_id` int DEFAULT NULL,
  `description` text,
  `instructor` char(25) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stti`
--

LOCK TABLES `stti` WRITE;
/*!40000 ALTER TABLE `stti` DISABLE KEYS */;
/*!40000 ALTER TABLE `stti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sttime`
--

DROP TABLE IF EXISTS `sttime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sttime` (
  `timeform` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sttime`
--

LOCK TABLES `sttime` WRITE;
/*!40000 ALTER TABLE `sttime` DISABLE KEYS */;
/*!40000 ALTER TABLE `sttime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sttr`
--

DROP TABLE IF EXISTS `sttr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sttr` (
  `trend_id` char(10) NOT NULL,
  `description` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sttr`
--

LOCK TABLES `sttr` WRITE;
/*!40000 ALTER TABLE `sttr` DISABLE KEYS */;
/*!40000 ALTER TABLE `sttr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sttrdt`
--

DROP TABLE IF EXISTS `sttrdt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sttrdt` (
  `trend_id` char(10) NOT NULL,
  `per1` bigint DEFAULT NULL,
  `per2` bigint DEFAULT NULL,
  `per3` bigint DEFAULT NULL,
  `per4` bigint DEFAULT NULL,
  `per5` bigint DEFAULT NULL,
  `per6` bigint DEFAULT NULL,
  `per7` bigint DEFAULT NULL,
  `per8` bigint DEFAULT NULL,
  `per9` bigint DEFAULT NULL,
  `per10` bigint DEFAULT NULL,
  `per11` bigint DEFAULT NULL,
  `per12` bigint DEFAULT NULL,
  `per13` bigint DEFAULT NULL,
  `division_no` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sttrdt`
--

LOCK TABLES `sttrdt` WRITE;
/*!40000 ALTER TABLE `sttrdt` DISABLE KEYS */;
/*!40000 ALTER TABLE `sttrdt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sttrpt`
--

DROP TABLE IF EXISTS `sttrpt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sttrpt` (
  `trend_id` char(10) NOT NULL,
  `plant_no` char(3) NOT NULL,
  `per1` bigint DEFAULT NULL,
  `per2` bigint DEFAULT NULL,
  `per3` bigint DEFAULT NULL,
  `per4` bigint DEFAULT NULL,
  `per5` bigint DEFAULT NULL,
  `per6` bigint DEFAULT NULL,
  `per7` bigint DEFAULT NULL,
  `per8` bigint DEFAULT NULL,
  `per9` bigint DEFAULT NULL,
  `per10` bigint DEFAULT NULL,
  `per11` bigint DEFAULT NULL,
  `per12` bigint DEFAULT NULL,
  `per13` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sttrpt`
--

LOCK TABLES `sttrpt` WRITE;
/*!40000 ALTER TABLE `sttrpt` DISABLE KEYS */;
/*!40000 ALTER TABLE `sttrpt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stum`
--

DROP TABLE IF EXISTS `stum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stum` (
  `uom` char(8) NOT NULL,
  `uom_type` char(22) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `uom_desc` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stum`
--

LOCK TABLES `stum` WRITE;
/*!40000 ALTER TABLE `stum` DISABLE KEYS */;
/*!40000 ALTER TABLE `stum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stumca`
--

DROP TABLE IF EXISTS `stumca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stumca` (
  `uom` char(8) NOT NULL,
  `uom_type` char(22) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `uom_desc` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stumca`
--

LOCK TABLES `stumca` WRITE;
/*!40000 ALTER TABLE `stumca` DISABLE KEYS */;
/*!40000 ALTER TABLE `stumca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stumcnv`
--

DROP TABLE IF EXISTS `stumcnv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stumcnv` (
  `from_uom` char(8) NOT NULL,
  `to_uom` char(8) NOT NULL,
  `factor` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stumcnv`
--

LOCK TABLES `stumcnv` WRITE;
/*!40000 ALTER TABLE `stumcnv` DISABLE KEYS */;
/*!40000 ALTER TABLE `stumcnv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stumcp`
--

DROP TABLE IF EXISTS `stumcp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stumcp` (
  `uom` char(8) NOT NULL,
  `uom_type` char(22) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `uom_desc` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stumcp`
--

LOCK TABLES `stumcp` WRITE;
/*!40000 ALTER TABLE `stumcp` DISABLE KEYS */;
/*!40000 ALTER TABLE `stumcp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stumcu`
--

DROP TABLE IF EXISTS `stumcu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stumcu` (
  `uom` char(8) NOT NULL,
  `uom_type` char(22) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `uom_desc` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stumcu`
--

LOCK TABLES `stumcu` WRITE;
/*!40000 ALTER TABLE `stumcu` DISABLE KEYS */;
/*!40000 ALTER TABLE `stumcu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stumdm`
--

DROP TABLE IF EXISTS `stumdm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stumdm` (
  `uom` char(8) NOT NULL,
  `uom_type` char(22) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `uom_desc` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stumdm`
--

LOCK TABLES `stumdm` WRITE;
/*!40000 ALTER TABLE `stumdm` DISABLE KEYS */;
/*!40000 ALTER TABLE `stumdm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stumfr`
--

DROP TABLE IF EXISTS `stumfr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stumfr` (
  `uom` char(8) NOT NULL,
  `uom_type` char(22) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `uom_desc` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stumfr`
--

LOCK TABLES `stumfr` WRITE;
/*!40000 ALTER TABLE `stumfr` DISABLE KEYS */;
/*!40000 ALTER TABLE `stumfr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stummt`
--

DROP TABLE IF EXISTS `stummt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stummt` (
  `uom` char(8) NOT NULL,
  `uom_type` char(22) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `uom_desc` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stummt`
--

LOCK TABLES `stummt` WRITE;
/*!40000 ALTER TABLE `stummt` DISABLE KEYS */;
/*!40000 ALTER TABLE `stummt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stumrd`
--

DROP TABLE IF EXISTS `stumrd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stumrd` (
  `uom` char(8) NOT NULL,
  `uom_type` char(22) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `uom_desc` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stumrd`
--

LOCK TABLES `stumrd` WRITE;
/*!40000 ALTER TABLE `stumrd` DISABLE KEYS */;
/*!40000 ALTER TABLE `stumrd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stumrt`
--

DROP TABLE IF EXISTS `stumrt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stumrt` (
  `uom` char(8) NOT NULL,
  `uom_type` char(22) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `uom_desc` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stumrt`
--

LOCK TABLES `stumrt` WRITE;
/*!40000 ALTER TABLE `stumrt` DISABLE KEYS */;
/*!40000 ALTER TABLE `stumrt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stumsp`
--

DROP TABLE IF EXISTS `stumsp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stumsp` (
  `uom` char(8) NOT NULL,
  `uom_type` char(22) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `uom_desc` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stumsp`
--

LOCK TABLES `stumsp` WRITE;
/*!40000 ALTER TABLE `stumsp` DISABLE KEYS */;
/*!40000 ALTER TABLE `stumsp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stumt`
--

DROP TABLE IF EXISTS `stumt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stumt` (
  `uom_type` char(22) NOT NULL,
  `plant_no` char(3) NOT NULL,
  `description` char(30) DEFAULT NULL,
  `uom_mfile` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stumt`
--

LOCK TABLES `stumt` WRITE;
/*!40000 ALTER TABLE `stumt` DISABLE KEYS */;
/*!40000 ALTER TABLE `stumt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stumue`
--

DROP TABLE IF EXISTS `stumue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stumue` (
  `uom` char(8) NOT NULL,
  `uom_type` char(22) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `uom_desc` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stumue`
--

LOCK TABLES `stumue` WRITE;
/*!40000 ALTER TABLE `stumue` DISABLE KEYS */;
/*!40000 ALTER TABLE `stumue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stwkst`
--

DROP TABLE IF EXISTS `stwkst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stwkst` (
  `dflt_wo_status` char(3) NOT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stwkst`
--

LOCK TABLES `stwkst` WRITE;
/*!40000 ALTER TABLE `stwkst` DISABLE KEYS */;
/*!40000 ALTER TABLE `stwkst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stwo`
--

DROP TABLE IF EXISTS `stwo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stwo` (
  `wo` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stwo`
--

LOCK TABLES `stwo` WRITE;
/*!40000 ALTER TABLE `stwo` DISABLE KEYS */;
/*!40000 ALTER TABLE `stwo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stwrid`
--

DROP TABLE IF EXISTS `stwrid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stwrid` (
  `workreqno` int NOT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stwrid`
--

LOCK TABLES `stwrid` WRITE;
/*!40000 ALTER TABLE `stwrid` DISABLE KEYS */;
/*!40000 ALTER TABLE `stwrid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stxns`
--

DROP TABLE IF EXISTS `stxns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stxns` (
  `reference_id` int NOT NULL,
  `xn_code` char(5) DEFAULT NULL,
  `current_date` datetime NOT NULL,
  `current_time` int DEFAULT NULL,
  `xn_date` datetime NOT NULL,
  `isu_empl_id` char(25) DEFAULT NULL,
  `rcv_empl_id` char(25) DEFAULT NULL,
  `stockno` char(25) DEFAULT NULL,
  `description` char(80) DEFAULT NULL,
  `partno` char(25) DEFAULT NULL,
  `com_code` char(25) DEFAULT NULL,
  `isu_qty` bigint DEFAULT NULL,
  `rcv_qty` bigint DEFAULT NULL,
  `ord_qty` bigint DEFAULT NULL,
  `rtn_qty` bigint DEFAULT NULL,
  `bo_qty` bigint DEFAULT NULL,
  `chg_costcenter` char(50) DEFAULT NULL,
  `chg_account` char(50) DEFAULT NULL,
  `crd_costcenter` char(50) DEFAULT NULL,
  `crd_account` char(50) DEFAULT NULL,
  `assetno` char(50) DEFAULT NULL,
  `wo` char(11) DEFAULT NULL,
  `mtlrqnnum` int DEFAULT NULL,
  `item_cost` bigint DEFAULT NULL,
  `uom` char(8) DEFAULT NULL,
  `cnv_qty` bigint DEFAULT NULL,
  `pkguom` char(8) DEFAULT NULL,
  `ext_cost` bigint DEFAULT NULL,
  `porqnnum` int DEFAULT NULL,
  `approver` char(25) DEFAULT NULL,
  `supplier` char(25) DEFAULT NULL,
  `pono` char(50) DEFAULT NULL,
  `po_lineno` int DEFAULT NULL,
  `ttl_oh` bigint DEFAULT NULL,
  `stk_locn` char(20) DEFAULT NULL,
  `oh_qty` bigint DEFAULT NULL,
  `comments` char(25) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `to_stk_locn` char(20) DEFAULT NULL,
  `mtlrqn_lineno` int DEFAULT NULL,
  `grn_no` char(50) DEFAULT NULL,
  `grn_itm_no` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stxns`
--

LOCK TABLES `stxns` WRITE;
/*!40000 ALTER TABLE `stxns` DISABLE KEYS */;
/*!40000 ALTER TABLE `stxns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `styn`
--

DROP TABLE IF EXISTS `styn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `styn` (
  `indicator` char(1) NOT NULL,
  `yn_prompt` char(5) DEFAULT NULL,
  `description` char(15) DEFAULT NULL,
  `meaning` char(1) DEFAULT NULL,
  `cur_default` char(1) DEFAULT NULL,
  `b_binary` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `styn`
--

LOCK TABLES `styn` WRITE;
/*!40000 ALTER TABLE `styn` DISABLE KEYS */;
/*!40000 ALTER TABLE `styn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkar`
--

DROP TABLE IF EXISTS `wkar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkar` (
  `wo` char(11) NOT NULL,
  `projectid` char(50) DEFAULT NULL,
  `task_id` int DEFAULT NULL,
  `pm_idno` int DEFAULT NULL,
  `route_id` char(15) DEFAULT NULL,
  `workreqno` int DEFAULT NULL,
  `obsrv_id` int DEFAULT NULL,
  `assetno` char(50) DEFAULT NULL,
  `work_area` char(1) DEFAULT NULL,
  `work_type` char(5) DEFAULT NULL,
  `work_locn` char(20) DEFAULT NULL,
  `work_grp` char(15) DEFAULT NULL,
  `originator` char(25) DEFAULT NULL,
  `phone` char(20) DEFAULT NULL,
  `orig_priority` char(1) DEFAULT NULL,
  `planner` char(25) DEFAULT NULL,
  `plan_priority` char(1) DEFAULT NULL,
  `status` char(3) NOT NULL,
  `org_date` datetime NOT NULL,
  `org_time` int DEFAULT NULL,
  `due_date` datetime NOT NULL,
  `due_time` int DEFAULT NULL,
  `exc_date` datetime NOT NULL,
  `exc_time` int DEFAULT NULL,
  `sched_date` datetime NOT NULL,
  `sched_time` int DEFAULT NULL,
  `cmpl_date` datetime NOT NULL,
  `cmpl_time` int DEFAULT NULL,
  `sc_date` datetime NOT NULL,
  `sc_time` int DEFAULT NULL,
  `supv_id` char(25) DEFAULT NULL,
  `approved` char(1) DEFAULT NULL,
  `flt_code` char(15) DEFAULT NULL,
  `act_code` char(15) DEFAULT NULL,
  `critical_ratio` bigint DEFAULT NULL,
  `meter_reading` bigint DEFAULT NULL,
  `lab_cost` bigint DEFAULT NULL,
  `mtl_cost` bigint DEFAULT NULL,
  `con_cost` bigint DEFAULT NULL,
  `ovrhd_cost` bigint DEFAULT NULL,
  `support_rqmt` char(20) DEFAULT NULL,
  `workreq` text,
  `corr_action` text,
  `chg_costcenter` char(50) DEFAULT NULL,
  `crd_costcenter` char(50) DEFAULT NULL,
  `laccount` char(50) DEFAULT NULL,
  `maccount` char(50) DEFAULT NULL,
  `caccount` char(50) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `work_class` char(5) DEFAULT NULL,
  `finance_clo` char(1) NOT NULL,
  `safety` char(1) NOT NULL,
  `grp_code` char(5) DEFAULT NULL,
  `budget` bigint DEFAULT NULL,
  `fund_src` char(20) DEFAULT NULL,
  `ent_date` datetime DEFAULT NULL,
  `approver` char(25) DEFAULT NULL,
  `wo_open` char(1) DEFAULT NULL,
  `dispatch` char(1) DEFAULT NULL,
  `w_opt1` char(80) DEFAULT NULL,
  `w_opt2` char(80) DEFAULT NULL,
  `w_opt3` char(80) DEFAULT NULL,
  `w_opt4` char(80) DEFAULT NULL,
  `w_opt5` text,
  `w_opt6` char(80) DEFAULT NULL,
  `w_opt7` char(80) DEFAULT NULL,
  `w_opt8` char(80) DEFAULT NULL,
  `w_opt9` char(80) DEFAULT NULL,
  `w_opt10` text,
  `current_location` char(80) DEFAULT NULL,
  `cause_code` char(15) DEFAULT NULL,
  `wo_print` int DEFAULT NULL,
  `on_dispatch_q` char(1) DEFAULT NULL,
  `assetgrpcode` char(15) DEFAULT NULL,
  `assetlocn` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkar`
--

LOCK TABLES `wkar` WRITE;
/*!40000 ALTER TABLE `wkar` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkara`
--

DROP TABLE IF EXISTS `wkara`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkara` (
  `wo` char(11) NOT NULL,
  `activity_code` char(25) NOT NULL,
  `sched_start` datetime NOT NULL,
  `due_date` datetime NOT NULL,
  `predecessor` char(25) DEFAULT NULL,
  `component_id` char(50) DEFAULT NULL,
  `supv_id` char(25) DEFAULT NULL,
  `chg_costcenter` char(50) DEFAULT NULL,
  `crd_costcenter` char(50) DEFAULT NULL,
  `laccount` char(50) DEFAULT NULL,
  `maccount` char(50) DEFAULT NULL,
  `caccount` char(50) DEFAULT NULL,
  `cmpl_date` datetime NOT NULL,
  `plant_no` char(3) NOT NULL,
  `short_desc` char(25) DEFAULT NULL,
  `work_category` char(10) DEFAULT NULL,
  `work_grp` char(15) DEFAULT NULL,
  `workreq` text,
  `offset` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkara`
--

LOCK TABLES `wkara` WRITE;
/*!40000 ALTER TABLE `wkara` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkara` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkarac`
--

DROP TABLE IF EXISTS `wkarac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkarac` (
  `wo` char(11) NOT NULL,
  `activity_code` char(25) NOT NULL,
  `supplier` char(25) NOT NULL,
  `contract_id` char(10) DEFAULT NULL,
  `est_cost` bigint DEFAULT NULL,
  `pono` char(50) DEFAULT NULL,
  `cmpl_date` datetime NOT NULL,
  `act_cost` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `description_wkarac` char(80) DEFAULT NULL,
  `qty_needed_wkarac` bigint DEFAULT NULL,
  `svc_uom` char(8) DEFAULT NULL,
  `po_lineno` int DEFAULT NULL,
  `porqnnum` int DEFAULT NULL,
  `porqn_lineno` int DEFAULT NULL,
  `nonrefpono` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkarac`
--

LOCK TABLES `wkarac` WRITE;
/*!40000 ALTER TABLE `wkarac` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkarac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkaral`
--

DROP TABLE IF EXISTS `wkaral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkaral` (
  `wo` char(11) NOT NULL,
  `activity_code` char(25) NOT NULL,
  `craft` char(3) NOT NULL,
  `ts_code` char(1) DEFAULT NULL,
  `esa_code` char(1) DEFAULT NULL,
  `est_hrs` bigint DEFAULT NULL,
  `est_cost` bigint DEFAULT NULL,
  `act_hrs` bigint DEFAULT NULL,
  `act_cost` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `crewsize` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkaral`
--

LOCK TABLES `wkaral` WRITE;
/*!40000 ALTER TABLE `wkaral` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkaral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkaram`
--

DROP TABLE IF EXISTS `wkaram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkaram` (
  `wo` char(11) DEFAULT NULL,
  `activity_code` char(25) DEFAULT NULL,
  `mkey` char(25) DEFAULT NULL,
  `stockno` char(25) DEFAULT NULL,
  `description` char(80) DEFAULT NULL,
  `qty_needed` bigint DEFAULT NULL,
  `item_cost` bigint DEFAULT NULL,
  `mtlrqnnum` int DEFAULT NULL,
  `rec_supplier` char(25) DEFAULT NULL,
  `act_qty` bigint DEFAULT NULL,
  `act_cost` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `mtl_uom` char(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkaram`
--

LOCK TABLES `wkaram` WRITE;
/*!40000 ALTER TABLE `wkaram` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkaram` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkaw`
--

DROP TABLE IF EXISTS `wkaw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkaw` (
  `wo` char(11) NOT NULL,
  `projectid` char(50) DEFAULT NULL,
  `supv_id` char(25) DEFAULT NULL,
  `task_id` int DEFAULT NULL,
  `pm_idno` int DEFAULT NULL,
  `route_id` char(15) DEFAULT NULL,
  `workreqno` bigint NOT NULL,
  `obsrv_id` int DEFAULT NULL,
  `assetno` char(50) NOT NULL,
  `work_area` char(1) DEFAULT NULL,
  `work_type` char(5) DEFAULT NULL,
  `work_locn` char(20) DEFAULT NULL,
  `work_grp` char(15) DEFAULT NULL,
  `originator` char(25) DEFAULT NULL,
  `phone` char(20) DEFAULT NULL,
  `orig_priority` char(1) DEFAULT NULL,
  `planner` char(25) DEFAULT NULL,
  `plan_priority` char(1) DEFAULT NULL,
  `status` char(3) NOT NULL,
  `org_date` datetime NOT NULL,
  `org_time` int DEFAULT NULL,
  `due_date` datetime NOT NULL,
  `due_time` int DEFAULT NULL,
  `exc_date` datetime NOT NULL,
  `exc_time` int DEFAULT NULL,
  `sched_date` datetime NOT NULL,
  `sched_time` int DEFAULT NULL,
  `cmpl_date` datetime NOT NULL,
  `cmpl_time` int DEFAULT NULL,
  `sc_date` datetime DEFAULT NULL,
  `sc_time` int DEFAULT NULL,
  `approved` char(1) DEFAULT NULL,
  `flt_code` char(15) DEFAULT NULL,
  `act_code` char(15) DEFAULT NULL,
  `critical_ratio` bigint DEFAULT NULL,
  `meter_reading` bigint DEFAULT NULL,
  `lab_cost` bigint DEFAULT NULL,
  `mtl_cost` bigint DEFAULT NULL,
  `con_cost` bigint DEFAULT NULL,
  `ovrhd_cost` bigint DEFAULT NULL,
  `support_rqmt` char(20) DEFAULT NULL,
  `workreq` text,
  `corr_action` text,
  `chg_costcenter` char(50) NOT NULL,
  `crd_costcenter` char(50) NOT NULL,
  `laccount` char(50) NOT NULL,
  `maccount` char(50) NOT NULL,
  `caccount` char(50) NOT NULL,
  `plant_no` char(3) NOT NULL,
  `work_class` char(5) DEFAULT NULL,
  `finance_clo` char(1) DEFAULT NULL,
  `safety` char(1) NOT NULL,
  `grp_code` char(5) DEFAULT NULL,
  `budget` bigint DEFAULT NULL,
  `fund_src` char(20) DEFAULT NULL,
  `ent_date` datetime DEFAULT NULL,
  `wo_open` char(1) DEFAULT NULL,
  `dispatch` char(1) DEFAULT NULL,
  `w_opt1` char(80) DEFAULT NULL,
  `w_opt2` char(80) DEFAULT NULL,
  `w_opt3` char(80) DEFAULT NULL,
  `w_opt4` char(80) DEFAULT NULL,
  `w_opt5` text,
  `w_opt6` char(80) DEFAULT NULL,
  `w_opt7` char(80) DEFAULT NULL,
  `w_opt8` char(80) DEFAULT NULL,
  `w_opt9` char(80) DEFAULT NULL,
  `w_opt10` text,
  `current_location` char(80) DEFAULT NULL,
  `cause_code` char(15) DEFAULT NULL,
  `wo_print` char(1) DEFAULT NULL,
  `on_dispatch_q` char(1) DEFAULT NULL,
  `approver` char(25) DEFAULT NULL,
  `assetgrpcode` char(15) DEFAULT NULL,
  `assetlocn` char(50) DEFAULT NULL,
  `maint_ops_no` char(50) DEFAULT NULL,
  `safety_proc` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkaw`
--

LOCK TABLES `wkaw` WRITE;
/*!40000 ALTER TABLE `wkaw` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkaw` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkawa`
--

DROP TABLE IF EXISTS `wkawa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkawa` (
  `wo` char(11) NOT NULL,
  `activity_code` char(25) NOT NULL,
  `sched_start` datetime NOT NULL,
  `supv_id` char(25) DEFAULT NULL,
  `due_date` datetime NOT NULL,
  `predecessor` char(25) DEFAULT NULL,
  `component_id` char(50) DEFAULT NULL,
  `chg_costcenter` char(50) DEFAULT NULL,
  `crd_costcenter` char(50) DEFAULT NULL,
  `laccount` char(50) DEFAULT NULL,
  `maccount` char(50) DEFAULT NULL,
  `caccount` char(50) DEFAULT NULL,
  `cmpl_date` datetime NOT NULL,
  `plant_no` char(3) NOT NULL,
  `short_desc` char(25) DEFAULT NULL,
  `work_category` char(10) DEFAULT NULL,
  `work_grp` char(15) DEFAULT NULL,
  `workreq` text,
  `offset` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkawa`
--

LOCK TABLES `wkawa` WRITE;
/*!40000 ALTER TABLE `wkawa` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkawa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkawac`
--

DROP TABLE IF EXISTS `wkawac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkawac` (
  `wo` char(11) NOT NULL,
  `activity_code` char(25) DEFAULT NULL,
  `supplier` char(25) NOT NULL,
  `contract_id` char(10) DEFAULT NULL,
  `pono` char(50) DEFAULT NULL,
  `cmpl_date` datetime NOT NULL,
  `est_cost` bigint DEFAULT NULL,
  `act_cost` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `description_wkawac` char(80) DEFAULT NULL,
  `qty_needed_wkawac` bigint DEFAULT NULL,
  `svc_uom` char(8) DEFAULT NULL,
  `po_lineno` int DEFAULT NULL,
  `porqnnum` int DEFAULT NULL,
  `porqn_lineno` int DEFAULT NULL,
  `nonrefpono` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkawac`
--

LOCK TABLES `wkawac` WRITE;
/*!40000 ALTER TABLE `wkawac` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkawac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkawaci`
--

DROP TABLE IF EXISTS `wkawaci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkawaci` (
  `wo` char(11) NOT NULL,
  `activity_code` char(25) NOT NULL,
  `supplier` char(25) NOT NULL,
  `receive_date` datetime NOT NULL,
  `item_cost` bigint DEFAULT NULL,
  `receive_qty` bigint DEFAULT NULL,
  `receive_uom` char(8) DEFAULT NULL,
  `chg_costcenter` char(50) DEFAULT NULL,
  `chg_account` char(50) DEFAULT NULL,
  `crd_costcenter` char(50) DEFAULT NULL,
  `crd_account` char(50) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkawaci`
--

LOCK TABLES `wkawaci` WRITE;
/*!40000 ALTER TABLE `wkawaci` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkawaci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkawal`
--

DROP TABLE IF EXISTS `wkawal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkawal` (
  `wo` char(11) NOT NULL,
  `activity_code` char(25) NOT NULL,
  `craft` char(3) NOT NULL,
  `ts_code` char(1) DEFAULT NULL,
  `esa_code` char(1) DEFAULT NULL,
  `est_hrs` bigint DEFAULT NULL,
  `est_cost` bigint DEFAULT NULL,
  `act_hrs` bigint DEFAULT NULL,
  `act_cost` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `crewsize` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkawal`
--

LOCK TABLES `wkawal` WRITE;
/*!40000 ALTER TABLE `wkawal` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkawal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkawali`
--

DROP TABLE IF EXISTS `wkawali`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkawali` (
  `wo` char(11) NOT NULL,
  `activity_code` char(25) DEFAULT NULL,
  `craft` char(3) DEFAULT NULL,
  `empl_id` char(25) NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `start_time` int DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `end_time` int DEFAULT NULL,
  `est_hrs` int DEFAULT NULL,
  `act_hrs` int DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkawali`
--

LOCK TABLES `wkawali` WRITE;
/*!40000 ALTER TABLE `wkawali` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkawali` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkawam`
--

DROP TABLE IF EXISTS `wkawam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkawam` (
  `wo` char(11) NOT NULL,
  `activity_code` char(25) DEFAULT NULL,
  `mkey` char(25) DEFAULT NULL,
  `stockno` char(25) NOT NULL,
  `description` char(80) DEFAULT NULL,
  `qty_needed` bigint DEFAULT NULL,
  `item_cost` bigint DEFAULT NULL,
  `mtlrqnnum` int DEFAULT NULL,
  `rec_supplier` char(25) DEFAULT NULL,
  `act_qty` bigint DEFAULT NULL,
  `act_cost` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `mtl_uom` char(8) DEFAULT NULL,
  `porqnnum` int DEFAULT NULL,
  `porqn_lineno` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkawam`
--

LOCK TABLES `wkawam` WRITE;
/*!40000 ALTER TABLE `wkawam` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkawam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkawc`
--

DROP TABLE IF EXISTS `wkawc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkawc` (
  `wo` char(11) NOT NULL,
  `approver` char(25) NOT NULL,
  `appr_date` datetime NOT NULL,
  `appr_time` int DEFAULT NULL,
  `reject_desc` char(25) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkawc`
--

LOCK TABLES `wkawc` WRITE;
/*!40000 ALTER TABLE `wkawc` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkawc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkawp`
--

DROP TABLE IF EXISTS `wkawp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkawp` (
  `wo` char(11) NOT NULL,
  `procfile` char(50) NOT NULL,
  `plant_no` char(3) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkawp`
--

LOCK TABLES `wkawp` WRITE;
/*!40000 ALTER TABLE `wkawp` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkawp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkaws`
--

DROP TABLE IF EXISTS `wkaws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkaws` (
  `wo` char(11) NOT NULL,
  `status` char(3) NOT NULL,
  `start_date` datetime NOT NULL,
  `start_time` int NOT NULL,
  `end_date` datetime NOT NULL,
  `end_time` int DEFAULT NULL,
  `timeinstatus` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkaws`
--

LOCK TABLES `wkaws` WRITE;
/*!40000 ALTER TABLE `wkaws` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkaws` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkhi`
--

DROP TABLE IF EXISTS `wkhi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkhi` (
  `wo` char(11) NOT NULL,
  `projectid` char(50) DEFAULT NULL,
  `supv_id` char(25) DEFAULT NULL,
  `task_id` int DEFAULT NULL,
  `pm_idno` int DEFAULT NULL,
  `route_id` char(15) DEFAULT NULL,
  `workreqno` bigint DEFAULT NULL,
  `obsrv_id` int DEFAULT NULL,
  `assetno` char(50) DEFAULT NULL,
  `work_area` char(1) DEFAULT NULL,
  `work_type` char(5) DEFAULT NULL,
  `work_locn` char(20) DEFAULT NULL,
  `work_grp` char(15) DEFAULT NULL,
  `originator` char(25) DEFAULT NULL,
  `phone` char(20) DEFAULT NULL,
  `orig_priority` char(1) DEFAULT NULL,
  `planner` char(25) DEFAULT NULL,
  `plan_priority` char(1) DEFAULT NULL,
  `status` char(3) NOT NULL,
  `org_date` datetime NOT NULL,
  `org_time` int DEFAULT NULL,
  `due_date` datetime NOT NULL,
  `due_time` int DEFAULT NULL,
  `exc_date` datetime NOT NULL,
  `exc_time` int DEFAULT NULL,
  `sched_date` datetime NOT NULL,
  `sched_time` int DEFAULT NULL,
  `cmpl_date` datetime NOT NULL,
  `cmpl_time` int DEFAULT NULL,
  `sc_date` datetime NOT NULL,
  `sc_time` int DEFAULT NULL,
  `approved` char(1) DEFAULT NULL,
  `flt_code` char(15) DEFAULT NULL,
  `act_code` char(15) DEFAULT NULL,
  `critical_ratio` bigint DEFAULT NULL,
  `meter_reading` bigint DEFAULT NULL,
  `lab_cost` bigint DEFAULT NULL,
  `mtl_cost` bigint DEFAULT NULL,
  `con_cost` bigint DEFAULT NULL,
  `ovrhd_cost` bigint DEFAULT NULL,
  `support_rqmt` char(20) DEFAULT NULL,
  `workreq` text,
  `corr_action` text,
  `chg_costcenter` char(50) DEFAULT NULL,
  `crd_costcenter` char(50) DEFAULT NULL,
  `laccount` char(50) DEFAULT NULL,
  `maccount` char(50) DEFAULT NULL,
  `caccount` char(50) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `work_class` char(5) DEFAULT NULL,
  `finance_clo` char(1) NOT NULL,
  `safety` char(1) NOT NULL,
  `grp_code` char(5) DEFAULT NULL,
  `budget` bigint DEFAULT NULL,
  `fund_src` char(20) DEFAULT NULL,
  `ent_date` datetime NOT NULL,
  `approver` char(25) DEFAULT NULL,
  `wo_open` char(1) DEFAULT NULL,
  `dispatch` char(1) DEFAULT NULL,
  `w_opt1` char(80) DEFAULT NULL,
  `w_opt2` char(80) DEFAULT NULL,
  `w_opt3` char(80) DEFAULT NULL,
  `w_opt4` char(80) DEFAULT NULL,
  `w_opt5` text,
  `w_opt6` char(80) DEFAULT NULL,
  `w_opt7` char(80) DEFAULT NULL,
  `w_opt8` char(80) DEFAULT NULL,
  `w_opt9` char(80) DEFAULT NULL,
  `w_opt10` text,
  `current_location` char(80) DEFAULT NULL,
  `cause_code` char(15) DEFAULT NULL,
  `wo_print` int DEFAULT NULL,
  `on_dispatch_q` char(1) DEFAULT NULL,
  `assetgrpcode` char(15) DEFAULT NULL,
  `assetlocn` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkhi`
--

LOCK TABLES `wkhi` WRITE;
/*!40000 ALTER TABLE `wkhi` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkhi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkhia`
--

DROP TABLE IF EXISTS `wkhia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkhia` (
  `wo` char(11) NOT NULL,
  `activity_code` char(25) NOT NULL,
  `sched_start` datetime NOT NULL,
  `supv_id` char(25) DEFAULT NULL,
  `due_date` datetime NOT NULL,
  `predecessor` char(25) DEFAULT NULL,
  `component_id` char(50) DEFAULT NULL,
  `chg_costcenter` char(50) DEFAULT NULL,
  `crd_costcenter` char(50) DEFAULT NULL,
  `laccount` char(50) DEFAULT NULL,
  `maccount` char(50) DEFAULT NULL,
  `caccount` char(50) DEFAULT NULL,
  `cmpl_date` datetime NOT NULL,
  `plant_no` char(3) NOT NULL,
  `short_desc` char(25) DEFAULT NULL,
  `work_category` char(10) DEFAULT NULL,
  `work_grp` char(15) DEFAULT NULL,
  `workreq` text,
  `offset` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkhia`
--

LOCK TABLES `wkhia` WRITE;
/*!40000 ALTER TABLE `wkhia` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkhia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkhiac`
--

DROP TABLE IF EXISTS `wkhiac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkhiac` (
  `wo` char(11) NOT NULL,
  `activity_code` char(25) NOT NULL,
  `supplier` char(25) NOT NULL,
  `contract_id` char(10) DEFAULT NULL,
  `est_cost` bigint DEFAULT NULL,
  `pono` char(50) DEFAULT NULL,
  `cmpl_date` datetime NOT NULL,
  `act_cost` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `description_wkhiac` char(80) DEFAULT NULL,
  `qty_needed_wkhiac` bigint DEFAULT NULL,
  `svc_uom` char(8) DEFAULT NULL,
  `po_lineno` int DEFAULT NULL,
  `porqnnum` int DEFAULT NULL,
  `porqn_lineno` int DEFAULT NULL,
  `nonrefpono` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkhiac`
--

LOCK TABLES `wkhiac` WRITE;
/*!40000 ALTER TABLE `wkhiac` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkhiac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkhial`
--

DROP TABLE IF EXISTS `wkhial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkhial` (
  `wo` char(11) NOT NULL,
  `activity_code` char(25) NOT NULL,
  `craft` char(3) NOT NULL,
  `ts_code` char(1) DEFAULT NULL,
  `esa_code` char(1) DEFAULT NULL,
  `est_hrs` bigint DEFAULT NULL,
  `est_cost` bigint DEFAULT NULL,
  `act_hrs` bigint DEFAULT NULL,
  `act_cost` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `crewsize` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkhial`
--

LOCK TABLES `wkhial` WRITE;
/*!40000 ALTER TABLE `wkhial` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkhial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkhiam`
--

DROP TABLE IF EXISTS `wkhiam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkhiam` (
  `wo` char(11) NOT NULL,
  `activity_code` char(25) NOT NULL,
  `mkey` char(25) NOT NULL,
  `stockno` char(25) DEFAULT NULL,
  `description` char(80) DEFAULT NULL,
  `qty_needed` bigint DEFAULT NULL,
  `item_cost` bigint DEFAULT NULL,
  `mtlrqnnum` int DEFAULT NULL,
  `rec_supplier` char(25) DEFAULT NULL,
  `act_qty` bigint DEFAULT NULL,
  `act_cost` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `mtl_uom` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkhiam`
--

LOCK TABLES `wkhiam` WRITE;
/*!40000 ALTER TABLE `wkhiam` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkhiam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkob`
--

DROP TABLE IF EXISTS `wkob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkob` (
  `obsrv_id` int NOT NULL,
  `obsrv_date` datetime NOT NULL,
  `obsrv_time` int DEFAULT NULL,
  `originator` char(25) DEFAULT NULL,
  `phone` char(20) DEFAULT NULL,
  `assetno` char(50) DEFAULT NULL,
  `priority` char(1) DEFAULT NULL,
  `description` text,
  `action_taken` char(50) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkob`
--

LOCK TABLES `wkob` WRITE;
/*!40000 ALTER TABLE `wkob` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkpm`
--

DROP TABLE IF EXISTS `wkpm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkpm` (
  `pm_idno` int NOT NULL,
  `description` char(50) DEFAULT NULL,
  `assetno` char(50) NOT NULL,
  `freq_code` char(5) DEFAULT NULL,
  `curr_wo` char(11) DEFAULT NULL,
  `work_area` char(1) DEFAULT NULL,
  `work_locn` char(20) DEFAULT NULL,
  `lpm_date` datetime NOT NULL,
  `lpm_usg` bigint DEFAULT NULL,
  `lpm_uom` char(8) DEFAULT NULL,
  `next_create` datetime NOT NULL,
  `next_due` datetime NOT NULL,
  `lead_days` int DEFAULT NULL,
  `start_time` int DEFAULT NULL,
  `planner` char(25) DEFAULT NULL,
  `override_date` datetime DEFAULT NULL,
  `approver` char(25) DEFAULT NULL,
  `flt_code` char(15) DEFAULT NULL,
  `act_code` char(15) DEFAULT NULL,
  `plan_priority` char(1) DEFAULT NULL,
  `dflt_status` char(3) DEFAULT NULL,
  `season_beg` char(6) DEFAULT NULL,
  `season_end` char(6) DEFAULT NULL,
  `workreq` text NOT NULL,
  `ent_date` datetime DEFAULT NULL,
  `chg_costcenter` char(50) NOT NULL,
  `crd_costcenter` char(50) NOT NULL,
  `laccount` char(50) DEFAULT NULL,
  `maccount` char(50) DEFAULT NULL,
  `caccount` char(50) DEFAULT NULL,
  `auto_replan` char(1) DEFAULT NULL,
  `work_type` char(5) DEFAULT NULL,
  `work_class` char(5) DEFAULT NULL,
  `shadow_grp` char(5) DEFAULT NULL,
  `gen_flag` char(1) NOT NULL,
  `plant_no` char(3) NOT NULL,
  `pm_closed_loop` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkpm`
--

LOCK TABLES `wkpm` WRITE;
/*!40000 ALTER TABLE `wkpm` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkpm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkpma`
--

DROP TABLE IF EXISTS `wkpma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkpma` (
  `pm_idno` int NOT NULL,
  `activity_code` char(25) NOT NULL,
  `last_done_date` datetime NOT NULL,
  `last_act_date` datetime NOT NULL,
  `last_done_by` char(25) DEFAULT NULL,
  `component_id` char(50) DEFAULT NULL,
  `offset` int DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `workreq` text,
  `predecessor` char(25) DEFAULT NULL,
  `short_desc` char(25) DEFAULT NULL,
  `supv_id` char(25) DEFAULT NULL,
  `chg_costcenter` char(50) DEFAULT NULL,
  `crd_costcenter` char(50) DEFAULT NULL,
  `laccount` char(50) DEFAULT NULL,
  `maccount` char(50) DEFAULT NULL,
  `caccount` char(50) DEFAULT NULL,
  `work_category` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkpma`
--

LOCK TABLES `wkpma` WRITE;
/*!40000 ALTER TABLE `wkpma` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkpma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkpmac`
--

DROP TABLE IF EXISTS `wkpmac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkpmac` (
  `pm_idno` int NOT NULL,
  `activity_code` char(25) NOT NULL,
  `supplier` char(25) NOT NULL,
  `contract_id` char(10) DEFAULT NULL,
  `est_cost` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkpmac`
--

LOCK TABLES `wkpmac` WRITE;
/*!40000 ALTER TABLE `wkpmac` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkpmac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkpmal`
--

DROP TABLE IF EXISTS `wkpmal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkpmal` (
  `pm_idno` int NOT NULL,
  `activity_code` char(25) NOT NULL,
  `craft` char(3) NOT NULL,
  `crewsize` int DEFAULT NULL,
  `est_hrs` bigint DEFAULT NULL,
  `esa_code` char(1) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `ts_code` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkpmal`
--

LOCK TABLES `wkpmal` WRITE;
/*!40000 ALTER TABLE `wkpmal` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkpmal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkpmam`
--

DROP TABLE IF EXISTS `wkpmam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkpmam` (
  `pm_idno` int NOT NULL,
  `activity_code` char(25) NOT NULL,
  `mkey` char(25) NOT NULL,
  `stockno` char(25) DEFAULT NULL,
  `description` char(80) DEFAULT NULL,
  `qty_needed` bigint DEFAULT NULL,
  `item_cost` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `rec_supplier` char(25) DEFAULT NULL,
  `mtl_uom` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkpmam`
--

LOCK TABLES `wkpmam` WRITE;
/*!40000 ALTER TABLE `wkpmam` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkpmam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkpmp`
--

DROP TABLE IF EXISTS `wkpmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkpmp` (
  `pm_idno` int NOT NULL,
  `procfile` char(50) NOT NULL,
  `plant_no` char(3) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkpmp`
--

LOCK TABLES `wkpmp` WRITE;
/*!40000 ALTER TABLE `wkpmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkpmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkpr`
--

DROP TABLE IF EXISTS `wkpr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkpr` (
  `projectid` char(50) NOT NULL,
  `description` text,
  `budget` bigint DEFAULT NULL,
  `manager_id` char(25) DEFAULT NULL,
  `costcenter` char(50) DEFAULT NULL,
  `laccount` char(50) DEFAULT NULL,
  `maccount` char(50) DEFAULT NULL,
  `caccount` char(50) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `approved` char(1) NOT NULL,
  `due_days` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkpr`
--

LOCK TABLES `wkpr` WRITE;
/*!40000 ALTER TABLE `wkpr` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkpr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkpra`
--

DROP TABLE IF EXISTS `wkpra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkpra` (
  `projectid` char(50) NOT NULL,
  `approver` char(25) NOT NULL,
  `appr_date` datetime NOT NULL,
  `appr_time` int DEFAULT NULL,
  `reject_desc` char(25) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkpra`
--

LOCK TABLES `wkpra` WRITE;
/*!40000 ALTER TABLE `wkpra` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkpra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkprc`
--

DROP TABLE IF EXISTS `wkprc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkprc` (
  `projectid` char(50) NOT NULL,
  `est_labor` bigint DEFAULT NULL,
  `est_matl` bigint DEFAULT NULL,
  `est_contr` bigint DEFAULT NULL,
  `act_labor` bigint DEFAULT NULL,
  `act_matl` bigint DEFAULT NULL,
  `act_contr` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `activity_code` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkprc`
--

LOCK TABLES `wkprc` WRITE;
/*!40000 ALTER TABLE `wkprc` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkprc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkprm`
--

DROP TABLE IF EXISTS `wkprm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkprm` (
  `projectid` char(50) NOT NULL,
  `activity_code` char(25) NOT NULL,
  `sched_start` datetime NOT NULL,
  `actual_start` datetime NOT NULL,
  `due_date` datetime NOT NULL,
  `cmpl_date` datetime NOT NULL,
  `est_cost` bigint DEFAULT NULL,
  `act_cost` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkprm`
--

LOCK TABLES `wkprm` WRITE;
/*!40000 ALTER TABLE `wkprm` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkprm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkrt`
--

DROP TABLE IF EXISTS `wkrt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkrt` (
  `route_id` char(15) NOT NULL,
  `route_type` char(1) NOT NULL,
  `description` char(40) DEFAULT NULL,
  `chg_costcenter` char(50) DEFAULT NULL,
  `crd_costcenter` char(50) DEFAULT NULL,
  `laccount` char(50) DEFAULT NULL,
  `maccount` char(50) DEFAULT NULL,
  `caccount` char(50) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `rt_order` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkrt`
--

LOCK TABLES `wkrt` WRITE;
/*!40000 ALTER TABLE `wkrt` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkrt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkrtast`
--

DROP TABLE IF EXISTS `wkrtast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkrtast` (
  `route_id` char(15) NOT NULL,
  `assetno` char(50) NOT NULL,
  `ast_order` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkrtast`
--

LOCK TABLES `wkrtast` WRITE;
/*!40000 ALTER TABLE `wkrtast` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkrtast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkrtpt`
--

DROP TABLE IF EXISTS `wkrtpt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkrtpt` (
  `route_id` char(15) NOT NULL,
  `assetno` char(50) NOT NULL,
  `parmkey` int NOT NULL,
  `weekly_sched` char(52) DEFAULT NULL,
  `last_reading` bigint DEFAULT NULL,
  `last_cmpl_date` datetime NOT NULL,
  `last_gen_date` datetime NOT NULL,
  `gen_ctr` int DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `parameter` char(10) DEFAULT NULL,
  `pt_order` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkrtpt`
--

LOCK TABLES `wkrtpt` WRITE;
/*!40000 ALTER TABLE `wkrtpt` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkrtpt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkrtptah`
--

DROP TABLE IF EXISTS `wkrtptah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkrtptah` (
  `assetno` char(50) NOT NULL,
  `rd_date` datetime NOT NULL,
  `rd_time` int NOT NULL,
  `comments` char(80) DEFAULT NULL,
  `route_id` char(15) DEFAULT NULL,
  `wo` char(11) DEFAULT NULL,
  `empl_id` char(25) DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkrtptah`
--

LOCK TABLES `wkrtptah` WRITE;
/*!40000 ALTER TABLE `wkrtptah` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkrtptah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkrtptf`
--

DROP TABLE IF EXISTS `wkrtptf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkrtptf` (
  `route_id` char(15) NOT NULL,
  `point_assetno` char(50) NOT NULL,
  `inspect_point` char(30) NOT NULL,
  `freq_code` char(2) NOT NULL,
  `procfile` char(50) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `start_week` int NOT NULL,
  `end_week` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkrtptf`
--

LOCK TABLES `wkrtptf` WRITE;
/*!40000 ALTER TABLE `wkrtptf` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkrtptf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkrtptg`
--

DROP TABLE IF EXISTS `wkrtptg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkrtptg` (
  `route_id` char(15) NOT NULL,
  `assetno` char(50) NOT NULL,
  `wo` char(11) NOT NULL,
  `parmkey` int NOT NULL,
  `gen_date` datetime NOT NULL,
  `gen_time` int DEFAULT NULL,
  `gen_ctr` int DEFAULT NULL,
  `dl_flag` char(1) DEFAULT NULL,
  `value` bigint DEFAULT NULL,
  `rd_date` datetime NOT NULL,
  `rd_time` int DEFAULT NULL,
  `parameter` char(10) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `pt_order` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkrtptg`
--

LOCK TABLES `wkrtptg` WRITE;
/*!40000 ALTER TABLE `wkrtptg` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkrtptg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkrtpth`
--

DROP TABLE IF EXISTS `wkrtpth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkrtpth` (
  `route_id` char(15) NOT NULL,
  `assetno` char(50) NOT NULL,
  `rd_date` datetime NOT NULL,
  `parmkey` int NOT NULL,
  `rd_time` int NOT NULL,
  `value` double DEFAULT NULL,
  `plant_no` char(3) DEFAULT NULL,
  `comments` char(80) DEFAULT NULL,
  `parameter` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkrtpth`
--

LOCK TABLES `wkrtpth` WRITE;
/*!40000 ALTER TABLE `wkrtpth` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkrtpth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkrtuhdr`
--

DROP TABLE IF EXISTS `wkrtuhdr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkrtuhdr` (
  `wo` char(11) DEFAULT NULL,
  `route_id` char(15) DEFAULT NULL,
  `empl_id` char(25) DEFAULT NULL,
  `beg_date` datetime NOT NULL,
  `beg_time` int DEFAULT NULL,
  `end_date` datetime NOT NULL,
  `end_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkrtuhdr`
--

LOCK TABLES `wkrtuhdr` WRITE;
/*!40000 ALTER TABLE `wkrtuhdr` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkrtuhdr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkrturdh`
--

DROP TABLE IF EXISTS `wkrturdh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkrturdh` (
  `wo` char(11) DEFAULT NULL,
  `route_id` char(15) DEFAULT NULL,
  `assetno` char(50) DEFAULT NULL,
  `read_date` datetime NOT NULL,
  `read_time` int DEFAULT NULL,
  `empl_id` char(25) DEFAULT NULL,
  `comments` char(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkrturdh`
--

LOCK TABLES `wkrturdh` WRITE;
/*!40000 ALTER TABLE `wkrturdh` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkrturdh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkrturtm`
--

DROP TABLE IF EXISTS `wkrturtm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkrturtm` (
  `wo` char(11) DEFAULT NULL,
  `route_id` char(15) DEFAULT NULL,
  `assetno` char(50) DEFAULT NULL,
  `parameter` char(10) DEFAULT NULL,
  `reading` double DEFAULT NULL,
  `complete` int DEFAULT NULL,
  `read_date` datetime NOT NULL,
  `read_time` int DEFAULT NULL,
  `comments` char(80) DEFAULT NULL,
  `parmkey` int DEFAULT NULL,
  `empl_id` char(25) DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `start_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkrturtm`
--

LOCK TABLES `wkrturtm` WRITE;
/*!40000 ALTER TABLE `wkrturtm` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkrturtm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkta`
--

DROP TABLE IF EXISTS `wkta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkta` (
  `task_id` int NOT NULL,
  `grp_code` char(5) DEFAULT NULL,
  `planner` char(25) DEFAULT NULL,
  `assetno` char(50) DEFAULT NULL,
  `plan_priority` char(1) DEFAULT NULL,
  `projectid` char(50) DEFAULT NULL,
  `work_locn` char(20) DEFAULT NULL,
  `chg_costcenter` char(50) DEFAULT NULL,
  `crd_costcenter` char(50) DEFAULT NULL,
  `laccount` char(50) DEFAULT NULL,
  `maccount` char(50) DEFAULT NULL,
  `caccount` char(50) DEFAULT NULL,
  `auto_replan` char(1) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `work_type` char(5) DEFAULT NULL,
  `work_class` char(5) DEFAULT NULL,
  `workreq` text,
  `fund_src` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkta`
--

LOCK TABLES `wkta` WRITE;
/*!40000 ALTER TABLE `wkta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wktaa`
--

DROP TABLE IF EXISTS `wktaa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wktaa` (
  `task_id` int NOT NULL,
  `activity_code` char(25) NOT NULL,
  `predecessor` char(25) DEFAULT NULL,
  `offset` int DEFAULT NULL,
  `component_id` char(50) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `workreq` text,
  `work_category` char(10) DEFAULT NULL,
  `short_desc` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wktaa`
--

LOCK TABLES `wktaa` WRITE;
/*!40000 ALTER TABLE `wktaa` DISABLE KEYS */;
/*!40000 ALTER TABLE `wktaa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wktaac`
--

DROP TABLE IF EXISTS `wktaac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wktaac` (
  `task_id` int NOT NULL,
  `activity_code` char(25) NOT NULL,
  `supplier` char(25) NOT NULL,
  `contract_id` char(10) DEFAULT NULL,
  `est_cost` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wktaac`
--

LOCK TABLES `wktaac` WRITE;
/*!40000 ALTER TABLE `wktaac` DISABLE KEYS */;
/*!40000 ALTER TABLE `wktaac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wktaal`
--

DROP TABLE IF EXISTS `wktaal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wktaal` (
  `task_id` int NOT NULL,
  `activity_code` char(25) NOT NULL,
  `craft` char(3) NOT NULL,
  `crewsize` int DEFAULT NULL,
  `est_hrs` bigint DEFAULT NULL,
  `act_hrs` bigint DEFAULT NULL,
  `esa_code` char(1) DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `ts_code` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wktaal`
--

LOCK TABLES `wktaal` WRITE;
/*!40000 ALTER TABLE `wktaal` DISABLE KEYS */;
/*!40000 ALTER TABLE `wktaal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wktaam`
--

DROP TABLE IF EXISTS `wktaam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wktaam` (
  `task_id` int NOT NULL,
  `activity_code` char(25) NOT NULL,
  `mkey` char(25) NOT NULL,
  `stockno` char(25) DEFAULT NULL,
  `description` char(80) DEFAULT NULL,
  `qty_needed` bigint DEFAULT NULL,
  `item_cost` bigint DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `rec_supplier` char(25) DEFAULT NULL,
  `mtl_uom` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wktaam`
--

LOCK TABLES `wktaam` WRITE;
/*!40000 ALTER TABLE `wktaam` DISABLE KEYS */;
/*!40000 ALTER TABLE `wktaam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wkwr`
--

DROP TABLE IF EXISTS `wkwr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wkwr` (
  `workreqno` bigint NOT NULL,
  `org_date` datetime NOT NULL,
  `org_time` int DEFAULT NULL,
  `taken_by` char(25) DEFAULT NULL,
  `originator` char(25) DEFAULT NULL,
  `phone` char(20) DEFAULT NULL,
  `orig_priority` char(1) DEFAULT NULL,
  `due_date` datetime NOT NULL,
  `flt_code` char(15) DEFAULT NULL,
  `workreq` text NOT NULL,
  `assetno` char(50) NOT NULL,
  `status` char(3) NOT NULL,
  `wo` char(11) DEFAULT NULL,
  `approver` char(25) DEFAULT NULL,
  `appr_date` datetime DEFAULT NULL,
  `appr_time` int DEFAULT NULL,
  `plant_no` char(3) NOT NULL,
  `work_type` char(5) DEFAULT NULL,
  `work_class` char(5) DEFAULT NULL,
  `chg_costcenter` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wkwr`
--

LOCK TABLES `wkwr` WRITE;
/*!40000 ALTER TABLE `wkwr` DISABLE KEYS */;
/*!40000 ALTER TABLE `wkwr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'cms'
--

--
-- Dumping routines for database 'cms'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-09 15:18:48
