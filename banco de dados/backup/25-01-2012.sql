-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.61-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema sgu
--

CREATE DATABASE IF NOT EXISTS sgu;
USE sgu;

--
-- Definition of table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria` (
  `COD_CAT` int(10) NOT NULL,
  `CATEGORIA` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`COD_CAT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categoria`
--

/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;


--
-- Definition of table `entrada_prod`
--

DROP TABLE IF EXISTS `entrada_prod`;
CREATE TABLE `entrada_prod` (
  `COD_ENTRADA` smallint(5) DEFAULT NULL,
  `PRODUTO` smallint(5) DEFAULT NULL,
  `QUANT` smallint(5) DEFAULT NULL,
  `DATA` varchar(255) DEFAULT NULL,
  UNIQUE KEY `COD_ENTRADA` (`COD_ENTRADA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entrada_prod`
--

/*!40000 ALTER TABLE `entrada_prod` DISABLE KEYS */;
INSERT INTO `entrada_prod` (`COD_ENTRADA`,`PRODUTO`,`QUANT`,`DATA`) VALUES 
 (1,1,1,NULL),
 (2,2,2,NULL),
 (3,3,2,NULL),
 (4,4,1,NULL),
 (5,5,1,NULL),
 (6,6,2,NULL),
 (7,7,2,NULL),
 (8,8,1,NULL),
 (9,9,3,NULL),
 (10,10,2,NULL),
 (11,11,4,NULL),
 (12,12,2,NULL),
 (13,13,3,NULL),
 (14,14,2,NULL),
 (15,15,4,NULL),
 (16,16,1,NULL),
 (17,17,1,NULL),
 (18,18,2,NULL),
 (19,19,1,NULL),
 (20,20,1,NULL),
 (21,21,5,NULL),
 (22,22,1,NULL),
 (23,23,2,NULL),
 (24,24,3,NULL),
 (25,25,1,NULL),
 (26,26,1,NULL),
 (27,27,1,NULL),
 (28,28,3,NULL),
 (29,29,2,NULL),
 (30,30,1,NULL),
 (31,31,1,NULL),
 (32,32,2,NULL),
 (33,33,1,NULL),
 (34,34,1,NULL),
 (35,35,1,NULL),
 (36,36,2,NULL),
 (37,37,1,NULL),
 (38,38,3,NULL),
 (39,39,1,NULL),
 (40,40,1,NULL),
 (41,41,1,NULL),
 (42,42,1,NULL),
 (43,43,1,NULL),
 (44,44,2,NULL),
 (45,45,2,NULL),
 (46,46,2,NULL),
 (47,47,1,NULL),
 (48,48,1,NULL),
 (49,49,4,NULL),
 (50,50,4,NULL),
 (51,51,1,NULL),
 (52,52,1,NULL),
 (53,53,2,NULL),
 (54,54,1,NULL),
 (55,55,1,NULL),
 (56,56,1,NULL),
 (57,57,1,NULL),
 (58,58,1,NULL),
 (59,59,1,NULL),
 (60,60,1,NULL),
 (61,61,1,NULL),
 (62,62,1,NULL),
 (63,63,1,NULL),
 (64,64,2,NULL),
 (65,65,2,NULL),
 (66,66,2,NULL),
 (67,67,2,NULL),
 (68,68,2,NULL),
 (69,69,1,NULL),
 (70,70,1,NULL),
 (71,71,2,NULL),
 (72,72,1,NULL),
 (73,73,1,NULL),
 (74,74,1,NULL),
 (75,75,2,NULL),
 (76,76,40,NULL),
 (77,77,28,NULL),
 (78,78,10,NULL),
 (79,79,3,NULL),
 (80,80,1,NULL),
 (81,81,1,NULL),
 (82,82,1,NULL),
 (83,83,1,NULL),
 (84,84,4,NULL),
 (85,85,2,NULL),
 (86,86,30,NULL),
 (87,87,10,NULL),
 (88,88,7,NULL),
 (89,89,5,NULL),
 (90,90,4,NULL),
 (91,91,1,NULL),
 (92,92,1,NULL),
 (93,93,2,NULL),
 (94,94,2,NULL),
 (95,95,1,NULL),
 (96,96,2,NULL),
 (97,97,1,NULL),
 (98,98,1,NULL),
 (99,99,2,NULL),
 (100,100,2,NULL),
 (101,101,4,NULL),
 (102,102,1,NULL),
 (103,103,1,NULL),
 (104,104,4,NULL),
 (105,105,7,NULL),
 (106,106,4,NULL),
 (107,107,2,NULL),
 (108,108,2,NULL),
 (109,109,2,NULL),
 (110,110,2,NULL),
 (111,111,2,NULL),
 (112,112,1,NULL),
 (113,113,1,NULL),
 (114,114,4,NULL),
 (115,115,2,NULL),
 (116,116,4,NULL),
 (117,117,2,NULL),
 (118,118,2,NULL),
 (119,119,1,NULL),
 (120,120,1,NULL),
 (121,121,1,NULL),
 (122,122,1,NULL),
 (123,123,1,NULL),
 (124,124,6,NULL),
 (125,125,6,NULL),
 (126,126,3,NULL),
 (127,127,9,NULL),
 (128,128,12,NULL),
 (129,129,2,NULL),
 (130,130,1,NULL),
 (131,131,1,NULL),
 (132,132,1,NULL),
 (133,133,1,NULL),
 (134,134,1,NULL),
 (135,135,1,NULL),
 (136,136,1,NULL),
 (137,137,1,NULL),
 (138,138,1,NULL),
 (139,139,1,NULL),
 (140,140,2,NULL),
 (141,141,2,NULL),
 (142,142,6,NULL),
 (143,143,1,NULL),
 (144,144,1,NULL),
 (145,145,2,NULL),
 (146,146,1,NULL),
 (147,147,1,'a1171088'),
 (148,148,1,'PEAK HOLD ET 3200A'),
 (149,149,1,'835-8'),
 (150,150,1,'815-200'),
 (151,151,1,'AP-055'),
 (152,152,1,'s-05'),
 (153,153,1,'1/2\"x10\"'),
 (154,154,1,'150-19 8x150mm'),
 (155,155,1,'3/8\"x6\"'),
 (156,156,1,'150 1/4\"x6\"'),
 (157,157,1,'3/16\"x6\" 160 ph1'),
 (158,158,1,'150 1/8\"x4\"'),
 (159,159,1,'1/4\"x4\" ph2'),
 (160,160,1,'SC 40, 220V AC, 400W'),
 (161,161,500,'40x60c'),
 (162,162,1,'220/380V AC, 60 CV, 1775 rpm'),
 (163,163,1,'220/380V AC, 40 CV, 1100 rpm'),
 (164,164,1,'220/380V AC, 7,5 CV'),
 (165,165,1,'220/380V AC, 7,5 CV, 1745 rpm'),
 (166,166,1,'220/380V AC, 1 CV'),
 (167,167,1,'220/380V AC, 10 CV'),
 (168,168,1,'C711, 220/380V AC, 15CV, 1160 rpm'),
 (169,169,6,'220 V AC, 50 A'),
 (170,170,1,'220V AC, 50 A'),
 (171,171,1,'3TB50, 220V AC, 150A'),
 (172,172,1,'CWM32, 220V AC'),
 (173,173,3,'3TF44, 220V AC, 50A'),
 (174,174,1,'KTP600, 24V DC'),
 (175,175,1,'E11NYCD, 127/220V AC, 23/15W'),
 (176,176,1,'MV1000, 110/220V AC'),
 (177,177,1,'C20, 220/380V AC, 20 A'),
 (178,178,1,'380V AC, 7,5 CV'),
 (179,179,1,'ET49V3, 110/220V AC'),
 (180,180,2,'NRF2F2, 220V AC, 1000W'),
 (181,181,1,'HEB603, 400/5 A'),
 (182,182,1,'K32A, 220/380V AC, 32A'),
 (183,183,1,'BSP 1,1/2\"'),
 (184,184,1,'220 5VA, 220V AC'),
 (185,185,2,'30A  500V AC, 30A'),
 (186,186,1,'VSTE 400, 220V AC, 400W'),
 (187,187,1,'400w, 220V AC'),
 (188,188,2,'FAE 25S, 110/220V AC'),
 (189,189,1,'JR28-3357, 220V AC, 37-50A'),
 (190,190,1,'G/040120, 220V AC, 14-20A'),
 (191,191,1,'RW 67-2D, 220V AC, 40-57A'),
 (192,192,1,'LRD33, 220V AC, 37-50A'),
 (193,193,1,'3UA58, 220V AC, 50-63A'),
 (194,194,2,'3UA52,220V AC, 16-25A'),
 (195,195,2,'3UA55, 220V AC, 20-32A'),
 (196,196,10,NULL),
 (197,197,10,NULL),
 (198,198,1,'CA10 A202600-E, 380V, 4A'),
 (199,199,1,'3TB50'),
 (200,200,1,'24V DC, 0-250°C'),
 (201,201,1,'24V DC, 0-250°C'),
 (202,202,1,'MWA 21A'),
 (203,203,2,'MWA 21A'),
 (204,204,11,'B-174'),
 (205,205,9,'B-56'),
 (206,206,8,'B-75'),
 (207,207,6,'BB-123'),
 (208,208,3,'C-96'),
 (209,209,2,'C-112'),
 (210,210,3,'C-96'),
 (211,211,2,'B-75'),
 (212,212,1,'C-85'),
 (213,213,1,'B-41'),
 (214,214,5,'B-46'),
 (215,215,1,'B65'),
 (216,216,6,NULL),
 (217,217,26,NULL),
 (218,218,28,NULL),
 (219,219,56,NULL),
 (220,220,28,NULL),
 (221,221,56,NULL),
 (222,222,56,NULL),
 (223,223,40,NULL),
 (224,224,28,NULL),
 (225,225,112,NULL),
 (226,226,2,NULL),
 (227,227,2,NULL),
 (228,228,2,NULL),
 (229,229,2,NULL),
 (230,230,2,NULL),
 (231,231,4,NULL),
 (232,232,2,NULL),
 (233,233,1,NULL),
 (234,234,2,NULL),
 (235,235,1,NULL),
 (236,236,2,NULL),
 (237,237,2,'12/01/18');
/*!40000 ALTER TABLE `entrada_prod` ENABLE KEYS */;


--
-- Definition of table `estoque`
--

DROP TABLE IF EXISTS `estoque`;
CREATE TABLE `estoque` (
  `PRODUTO` int(10) NOT NULL,
  `QUANT` int(10) DEFAULT NULL,
  PRIMARY KEY (`PRODUTO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `estoque`
--

/*!40000 ALTER TABLE `estoque` DISABLE KEYS */;
INSERT INTO `estoque` (`PRODUTO`,`QUANT`) VALUES 
 (1,1),
 (2,2),
 (3,2),
 (4,1),
 (5,1),
 (6,2),
 (7,2),
 (8,1),
 (9,3),
 (10,2),
 (11,4),
 (12,2),
 (13,3),
 (14,2),
 (15,4),
 (16,1),
 (17,1),
 (18,2),
 (19,1),
 (20,1),
 (21,5),
 (22,1),
 (23,2),
 (24,3),
 (25,1),
 (26,1),
 (27,1),
 (28,3),
 (29,2),
 (30,1),
 (31,1),
 (32,2),
 (33,1),
 (34,1),
 (35,1),
 (36,2),
 (37,1),
 (38,3),
 (39,1),
 (40,1),
 (41,1),
 (42,1),
 (43,1),
 (44,2),
 (45,2),
 (46,2),
 (47,1),
 (48,1),
 (49,4),
 (50,4),
 (51,1),
 (52,1),
 (53,2),
 (54,1),
 (55,1),
 (56,1),
 (57,1),
 (58,1),
 (59,1),
 (60,1),
 (61,1),
 (62,1),
 (63,1),
 (64,2),
 (65,2),
 (66,2),
 (67,2),
 (68,2),
 (69,1),
 (70,1),
 (71,2),
 (72,1),
 (73,1),
 (74,1),
 (75,2),
 (78,9),
 (79,2),
 (80,1),
 (81,1),
 (82,1),
 (83,1),
 (84,4),
 (85,2),
 (86,30),
 (87,10),
 (88,7),
 (89,5),
 (90,4),
 (91,1),
 (92,1),
 (94,2),
 (95,1),
 (96,2),
 (97,1),
 (98,1),
 (99,2),
 (100,2),
 (101,3),
 (102,1),
 (103,1),
 (104,4),
 (105,7),
 (106,4),
 (108,2),
 (109,2),
 (110,2),
 (111,2),
 (112,1),
 (113,1),
 (114,4),
 (115,2),
 (116,4),
 (118,2),
 (119,1),
 (120,1),
 (121,1),
 (122,1),
 (123,1),
 (124,6),
 (125,6),
 (126,3),
 (127,9),
 (128,12),
 (129,2),
 (130,1),
 (131,1),
 (132,1),
 (133,1),
 (134,1),
 (135,1),
 (136,1),
 (137,1),
 (138,1),
 (139,1),
 (140,2),
 (141,2),
 (142,6),
 (143,1),
 (144,1),
 (145,2),
 (146,1),
 (147,1),
 (148,1),
 (149,1),
 (150,1),
 (151,1),
 (152,1),
 (153,1),
 (154,1),
 (155,1),
 (156,1),
 (157,1),
 (158,1),
 (159,1),
 (160,1),
 (161,500),
 (162,1),
 (163,1),
 (164,1),
 (165,1),
 (166,1),
 (167,1),
 (168,1),
 (169,6),
 (170,1),
 (171,1),
 (172,1),
 (173,3),
 (174,1),
 (175,1),
 (176,1),
 (177,1),
 (178,1),
 (179,1),
 (180,2),
 (181,1),
 (182,1),
 (183,1),
 (184,1),
 (185,2),
 (186,1),
 (187,1),
 (188,2),
 (189,1),
 (190,1),
 (191,1),
 (192,1),
 (193,1),
 (194,2),
 (195,2),
 (196,10),
 (197,10),
 (198,1),
 (199,1),
 (200,1),
 (201,1),
 (202,1),
 (203,2),
 (204,11),
 (205,9),
 (206,8),
 (207,6),
 (208,3),
 (209,2),
 (210,3),
 (211,2),
 (212,1),
 (213,1),
 (214,5),
 (215,1),
 (216,2),
 (217,2),
 (218,28),
 (219,28),
 (221,28),
 (222,28),
 (223,12),
 (225,56),
 (226,2);
/*!40000 ALTER TABLE `estoque` ENABLE KEYS */;


--
-- Definition of table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
CREATE TABLE `funcionario` (
  `cod_func` int(10) NOT NULL,
  `NOME` varchar(45) DEFAULT NULL,
  `CPF` varchar(20) DEFAULT NULL,
  `RG` varchar(20) DEFAULT NULL,
  `IDADE` varchar(20) DEFAULT NULL,
  `ENDERECO` varchar(45) DEFAULT NULL,
  `CIDADE` varchar(30) DEFAULT NULL,
  `UF` char(2) DEFAULT NULL,
  `PAIS` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cod_func`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `funcionario`
--

/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;


--
-- Definition of table `marca`
--

DROP TABLE IF EXISTS `marca`;
CREATE TABLE `marca` (
  `COD_MARCA` int(10) NOT NULL,
  `MARCA` varchar(30) DEFAULT NULL,
  `FABRICANTE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`COD_MARCA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marca`
--

/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;


--
-- Definition of table `produto`
--

DROP TABLE IF EXISTS `produto`;
CREATE TABLE `produto` (
  `COD_PROD` int(10) NOT NULL,
  `DESCRICAO` varchar(40) DEFAULT NULL,
  `MARCA` varchar(40) DEFAULT NULL,
  `COD_SERIE` varchar(40) DEFAULT NULL,
  `UNIDADE` varchar(20) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  UNIQUE KEY `COD_PROD` (`COD_PROD`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produto`
--

/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` (`COD_PROD`,`DESCRICAO`,`MARCA`,`COD_SERIE`,`UNIDADE`,`valor`) VALUES 
 (1,'chave de boa combinada 1,1/2\"',NULL,NULL,NULL,NULL),
 (2,'chave de boca combinada 1,1/4\"',NULL,NULL,NULL,NULL),
 (3,'chave de boca combinada 1,1/8\"',NULL,NULL,NULL,NULL),
 (4,'chave estrela 28.25',NULL,NULL,NULL,NULL),
 (5,'chave estrela 24.26',NULL,NULL,NULL,NULL),
 (6,'chave estrela 27.32',NULL,NULL,NULL,NULL),
 (7,'chave de boca combinada 1\"',NULL,NULL,NULL,NULL),
 (8,'chave de boca combinada 30mm',NULL,NULL,NULL,NULL),
 (9,'chave de boca 15/16\"',NULL,NULL,NULL,NULL),
 (10,'chave de boca combinada 7/8\"',NULL,NULL,NULL,NULL),
 (11,'chave de boca combinada 19mm',NULL,NULL,NULL,NULL),
 (12,'chave de boca combinada 3/4\"',NULL,NULL,NULL,NULL),
 (13,'chave de boca combinada 11/16\"',NULL,NULL,NULL,NULL),
 (14,'chave de boca combinada 11/16\"x5/8\"',NULL,NULL,NULL,NULL),
 (15,'chave de boca combinada 5/8\"',NULL,NULL,NULL,NULL),
 (16,'chave de boca 20x22mm',NULL,NULL,NULL,NULL),
 (17,'chave de boca 21x23mm',NULL,NULL,NULL,NULL),
 (18,'chave de boca combinada 9/16\"',NULL,NULL,NULL,NULL),
 (19,'chave de boca combinada 14mm',NULL,NULL,NULL,NULL),
 (20,'chave de boca combinada 1/2\"',NULL,NULL,NULL,NULL),
 (21,'chave de boca combinada 7/16\"',NULL,NULL,NULL,NULL),
 (22,'chave de boca combinada 15x16mm',NULL,NULL,NULL,NULL),
 (23,'chave de boca combinada 3/8\"',NULL,NULL,NULL,NULL),
 (24,'chave de boca combinada 10mm',NULL,NULL,NULL,NULL),
 (25,'chave de boca combinada 11mm',NULL,NULL,NULL,NULL),
 (26,'chave de boca  estrela 6x7mm',NULL,NULL,NULL,NULL),
 (27,'chave de boca combinada 9mm',NULL,NULL,NULL,NULL),
 (28,'chave de boca combinada 1/4\"',NULL,NULL,NULL,NULL),
 (29,'chave de boca combinada 8mm',NULL,NULL,NULL,NULL),
 (30,'chave L 9/16\"',NULL,NULL,NULL,NULL),
 (31,'chave L 13mm',NULL,NULL,NULL,NULL),
 (32,'chave grifo 24mm',NULL,NULL,NULL,NULL),
 (33,'chave grifo 14mm',NULL,NULL,NULL,NULL),
 (34,'chave grifo 12mm',NULL,NULL,NULL,NULL),
 (35,'alicate de pressão',NULL,NULL,NULL,NULL),
 (36,'alicate de trava',NULL,NULL,NULL,NULL),
 (37,'alicate universal',NULL,NULL,NULL,NULL),
 (38,'marreta média',NULL,NULL,NULL,NULL),
 (39,'chave de fenda 11\"x3/8\"',NULL,NULL,NULL,NULL),
 (40,'chave de fenda 10\"x3/8\"',NULL,NULL,NULL,NULL),
 (41,'chave de fenda 7\"x5/16\"',NULL,NULL,NULL,NULL),
 (42,'chave philipis 6\"',NULL,NULL,NULL,NULL),
 (43,'chave de fenda 6\"x3/16\"',NULL,NULL,NULL,NULL),
 (44,'rebitador stanley',NULL,NULL,NULL,NULL),
 (45,'arco de serra',NULL,NULL,NULL,NULL),
 (46,'desandador de macho',NULL,NULL,NULL,NULL),
 (47,'chave hallen 1,5 a 10 mmm',NULL,NULL,NULL,NULL),
 (48,'chave hallen 3/32\" a 3/8\"',NULL,NULL,NULL,NULL),
 (49,'chave hallen 3/8\"',NULL,NULL,NULL,NULL),
 (50,'chave hallen 10mm',NULL,NULL,NULL,NULL),
 (51,'chave hallen 1/2\"',NULL,NULL,NULL,NULL),
 (52,'chave hallen 9/16\"',NULL,NULL,NULL,NULL),
 (53,'chave hallen 8mm',NULL,NULL,NULL,NULL),
 (54,'chave hallen 5/16\"',NULL,NULL,NULL,NULL),
 (55,'chave hallen 7mm',NULL,NULL,NULL,NULL),
 (56,'chave hallen 6mm',NULL,NULL,NULL,NULL),
 (57,'chave hallen 1/4\"',NULL,NULL,NULL,NULL),
 (58,'chave hallen 7/32\"',NULL,NULL,NULL,NULL),
 (59,'chave hallen 5mm',NULL,NULL,NULL,NULL),
 (60,'chave hallen 1/8\"',NULL,NULL,NULL,NULL),
 (61,'chave hallen 1,5mm',NULL,NULL,NULL,NULL),
 (62,'chave hallen torque',NULL,NULL,NULL,NULL),
 (63,'broca',NULL,NULL,NULL,NULL),
 (64,'machinho 5/8\"',NULL,NULL,NULL,NULL),
 (65,'machinho 1/2\"',NULL,NULL,NULL,NULL),
 (66,'machinho 5/16\"',NULL,NULL,NULL,NULL),
 (67,'machinho 1/4\"',NULL,NULL,NULL,NULL),
 (68,'esquadro',NULL,NULL,NULL,NULL),
 (69,'paquímetro',NULL,NULL,NULL,NULL),
 (70,'talhadeira',NULL,NULL,NULL,NULL),
 (71,'estilete',NULL,NULL,NULL,NULL),
 (72,'chave de pito 1/2 a 1,1/4\"',NULL,NULL,NULL,NULL),
 (73,'chave de pito 3/8\" a 32',NULL,NULL,NULL,NULL),
 (74,'saca polia 3 pernas GEDORE',NULL,NULL,NULL,NULL),
 (75,'esticador',NULL,NULL,NULL,NULL),
 (76,'braço nº 80-220 misturador SULPEÇAS',NULL,NULL,NULL,NULL),
 (77,'palheta nº 42-d116 misturador',NULL,NULL,NULL,NULL),
 (78,'anél de vedação fixo 42-D-109 mist.',NULL,NULL,NULL,NULL),
 (79,'anél de vedação fixo 42-D-120 mist.',NULL,NULL,NULL,NULL),
 (80,'acop. engrenagem 42-E-215 mist.',NULL,NULL,NULL,NULL),
 (81,'corr. de rolo tripla 1\"x5/8\"116.088.3m',NULL,NULL,NULL,NULL),
 (82,'engrenagem tripla 119 A',NULL,NULL,NULL,NULL),
 (83,'engrenagem bomba CAP',NULL,NULL,NULL,NULL),
 (84,'rolete de apoio secador',NULL,NULL,NULL,NULL),
 (85,'roletes de escora nº 42-D-108',NULL,NULL,NULL,NULL),
 (86,'roletes de arasto de apoio 270mm',NULL,NULL,NULL,NULL),
 (87,'rolete de arrasto 230mm',NULL,NULL,NULL,NULL),
 (88,'rolete de arrasto 280mm',NULL,NULL,NULL,NULL),
 (89,'rolete de arrasto 960mm',NULL,NULL,NULL,NULL),
 (90,'rolete de arrasto 720mm',NULL,NULL,NULL,NULL),
 (91,'rolete de arrasto 680mm',NULL,NULL,NULL,NULL),
 (92,'mancal SN 517',NULL,NULL,NULL,NULL),
 (93,'mancal SNHL 513',NULL,NULL,NULL,NULL),
 (94,'bomba propulsora de graxa',NULL,NULL,NULL,NULL),
 (95,'pistão pneumático 5\"x550mm',NULL,NULL,NULL,NULL),
 (96,'pistão pneumático 200mmx80-183',NULL,NULL,NULL,NULL),
 (97,'válvula matal parker 7030021100',NULL,NULL,NULL,NULL),
 (98,'válvula parker 20000207 A3456-K-AS',NULL,NULL,NULL,NULL),
 (99,'retentor nº 6018',NULL,NULL,NULL,NULL),
 (100,'retentor nº 5337',NULL,NULL,NULL,NULL),
 (101,'retentor 5300',NULL,NULL,NULL,NULL),
 (102,'retentor nº 5306',NULL,NULL,NULL,NULL),
 (103,'retentor nº 00485',NULL,NULL,NULL,NULL),
 (104,'rolamento nº 22222 misturador',NULL,NULL,NULL,NULL),
 (105,'rolamento nº 22216 secador',NULL,NULL,NULL,NULL),
 (106,'rolamento nº elevador',NULL,NULL,NULL,NULL),
 (107,'rolamento nº 22213 elevador',NULL,NULL,NULL,NULL),
 (108,'rolamento nº 1214 usina de solos',NULL,NULL,NULL,NULL),
 (109,'rolamento nº 6212 usina de solos',NULL,NULL,NULL,NULL),
 (110,'rolamento nº 1299',NULL,NULL,NULL,NULL),
 (111,'rolamento nº 1307',NULL,NULL,NULL,NULL),
 (112,'rolamento nº 6307',NULL,NULL,NULL,NULL),
 (113,'rolam,ento nº22314 peneira',NULL,NULL,NULL,NULL),
 (114,'bucha H 322',NULL,NULL,NULL,NULL),
 (115,'bucha H 317',NULL,NULL,NULL,NULL),
 (116,'bucha H 313',NULL,NULL,NULL,NULL),
 (117,'bucha H 213',NULL,NULL,NULL,NULL),
 (118,'bucha H 209',NULL,NULL,NULL,NULL),
 (119,'furadeira Bosch GSB 20-2 RE PAT:5913',NULL,NULL,NULL,NULL),
 (120,'furadeira Bosch 0601174148',NULL,NULL,NULL,NULL),
 (121,'esmerilhadeira Bosch GWS 7-115',NULL,NULL,NULL,NULL),
 (122,'esmerilh. Bosch GSW 25-180 PT 5911',NULL,NULL,NULL,NULL),
 (123,'retífica Bosch GGS 27L PT 5910',NULL,NULL,NULL,NULL),
 (124,'escova rotativa p emerilhadeira',NULL,NULL,NULL,NULL),
 (125,'disco de desbaste 7/8\"x1/4\"',NULL,NULL,NULL,NULL),
 (126,'disco de corte7\"x1/8\"',NULL,NULL,NULL,NULL),
 (127,'disco de desbaste 4\"x1/2\"',NULL,NULL,NULL,NULL),
 (128,'disco de corte 4,1/2\"x3/64\"',NULL,NULL,NULL,NULL),
 (129,'disco de esmeril 152,4x19,5mm',NULL,NULL,NULL,NULL),
 (130,'furadeira bancada chulz ISB 16 PT 5853',NULL,NULL,NULL,NULL),
 (131,'esmeril MMI150 PATRIMÔNIO: 5914',NULL,NULL,NULL,NULL),
 (132,'morsa Forjasul nº5',NULL,NULL,NULL,NULL),
 (133,'massarico',NULL,NULL,NULL,NULL),
 (134,'ap solda ORIGON TM ARC 406 PT5927',NULL,NULL,NULL,NULL),
 (135,'mancal de rolete usado 42-D-102',NULL,NULL,NULL,NULL),
 (136,'tampa superior usada112-E-102',NULL,NULL,NULL,NULL),
 (137,'tampa inferior 112-E-103',NULL,NULL,NULL,NULL),
 (138,'redutor 1:18 103-B-100',NULL,NULL,NULL,NULL),
 (139,'roda dentada 100-D-101',NULL,NULL,NULL,NULL),
 (140,'pinhão de entrada  100-D-102',NULL,NULL,NULL,NULL),
 (141,'eixo do rolete usado 42-D-101',NULL,NULL,NULL,NULL),
 (142,'caneca do elevador',NULL,NULL,NULL,NULL),
 (143,'tampa filtro asfalto SDCJ cod:0062002',NULL,NULL,NULL,NULL),
 (144,'talha man. cap 1T SC 0780 nº série: 440',NULL,NULL,NULL,NULL),
 (145,'tambor de óleo térmico IPITHERM 200L',NULL,NULL,NULL,NULL),
 (146,'alicate universal','Tramontina',NULL,NULL,NULL),
 (147,'alicate universal','Most Felling','a1171088',NULL,NULL),
 (148,'multímetro','minipa','PEAK HOLD ET 3200A',NULL,NULL),
 (149,'alicate de bico','Robust','835-8',NULL,NULL),
 (150,'alicate de corte','Robust','815-200',NULL,NULL),
 (151,'alicate prensa-terminal','Vonder','AP-055',NULL,NULL),
 (152,'estilete','Starret','s-05',NULL,NULL),
 (153,'chave de fenda','Gedore Vanadium','1/2\"x10\"',NULL,NULL),
 (154,'chave de fenda','Gedore Vanadium','150-19 8x150mm',NULL,NULL),
 (155,'chave de fenda','Gedore Vanadium','3/8\"x6\"',NULL,NULL),
 (156,'chave de fenda','Gedore Vanadium','150 1/4\"x6\"',NULL,NULL),
 (157,'chave philips','Gedore Vanadium','3/16\"x6\" 160 ph1',NULL,NULL),
 (158,'chave de fenda','Gedore Vanadium','150 1/8\"x4\"',NULL,NULL),
 (159,'chave philips','Gedore Vanadium','1/4\"x4\" ph2',NULL,NULL),
 (160,'aparelho de solda-estanho','Hikari Plus','SC 40, 220V AC, 400W',NULL,NULL),
 (161,'solda estanho','Cobix','40x60c',NULL,NULL),
 (162,'motor trifásico','EBERLE','220/380V AC, 60 CV, 1775 rpm',NULL,NULL),
 (163,'motor trifásico','WEG','220/380V AC, 40 CV, 1100 rpm',NULL,NULL),
 (164,'motor trifásico','WEG','220/380V AC, 7,5 CV',NULL,NULL),
 (165,'motor trifásico','WEG','220/380V AC, 7,5 CV, 1745 rpm',NULL,NULL),
 (166,'motor trifásico',NULL,'220/380V AC, 1 CV',NULL,NULL),
 (167,'motor trifásico','WEG','220/380V AC, 10 CV',NULL,NULL),
 (168,'motor trifásico','WEG','C711, 220/380V AC, 15CV, 1160 rpm',NULL,NULL),
 (169,'contator  trifásico','Siemens','220 V AC, 50 A',NULL,NULL),
 (170,'contator  trifásico','Siemens','220V AC, 50 A',NULL,NULL),
 (171,'contator  trifásico','Siemens','3TB50, 220V AC, 150A',NULL,NULL),
 (172,'contator  trifásico','Weg','CWM32, 220V AC',NULL,NULL),
 (173,'contator  trifásico','Siemens','3TF44, 220V AC, 50A',NULL,NULL),
 (174,'Interfase IHM Toush Screen','Siemens','KTP600, 24V DC',NULL,NULL),
 (175,'ventilador de painél elétrico','Ventisilva','E11NYCD, 127/220V AC, 23/15W',NULL,NULL),
 (176,'Transformador','Super Memex','MV1000, 110/220V AC',NULL,NULL),
 (177,'disjuntor monofásico','Siemens','C20, 220/380V AC, 20 A',NULL,NULL),
 (178,'chave liga/desliga bifásica','Margirius','380V AC, 7,5 CV',NULL,NULL),
 (179,'horímetro digital','Innova','ET49V3, 110/220V AC',NULL,NULL),
 (180,'relé fotoelétrico','Exactron','NRF2F2, 220V AC, 1000W',NULL,NULL),
 (181,'transformador de corrente','H&B Brasil','HEB603, 400/5 A',NULL,NULL),
 (182,'disjuntor bifásico','Schneider','K32A, 220/380V AC, 32A',NULL,NULL),
 (183,'prensa cabo','Steak','BSP 1,1/2\"',NULL,NULL),
 (184,'bobina p válvula pneumática','Metal work','220 5VA, 220V AC',NULL,NULL),
 (185,'tomada trifásica','Lumibras','30A  500V AC, 30A',NULL,NULL),
 (186,'Reator p sódio v. metálico','Dud watts','VSTE 400, 220V AC, 400W',NULL,NULL),
 (187,'Reator p sódio v. metálico','Intral','400w, 220V AC',NULL,NULL),
 (188,'Sensor PNP NPN',NULL,'FAE 25S, 110/220V AC',NULL,NULL),
 (189,'relé de sobrecarga','CCA','JR28-3357, 220V AC, 37-50A',NULL,NULL),
 (190,'relé de sobrecarga','Siemens','G/040120, 220V AC, 14-20A',NULL,NULL),
 (191,'relé de sobrecarga','WEG','RW 67-2D, 220V AC, 40-57A',NULL,NULL),
 (192,'relé de sobrecarga','Schneider','LRD33, 220V AC, 37-50A',NULL,NULL),
 (193,'relé de sobrecarga','Siemens','3UA58, 220V AC, 50-63A',NULL,NULL),
 (194,'relé de sobrecarga','Siemens','3UA52,220V AC, 16-25A',NULL,NULL),
 (195,'relé de sobrecarga','Siemens','3UA55, 220V AC, 20-32A',NULL,NULL),
 (196,'contato ch. compensadora',NULL,NULL,NULL,NULL),
 (197,'barramento ch compesadora',NULL,NULL,NULL,NULL),
 (198,'chave trifásica mecânica','Kraus & Naimer','CA10 A202600-E, 380V, 4A',NULL,NULL),
 (199,'jogo de contato contator trif.','Siemens','3TB50',NULL,NULL),
 (200,'PT 100 (COM DEFEITO)','Samrello','24V DC, 0-250°C',NULL,NULL),
 (201,'PT 100 (COM DEFEITO)','MS','24V DC, 0-250°C',NULL,NULL),
 (202,'amp. Movimot SEW','SEW','MWA 21A',NULL,NULL),
 (203,'amp. Movimot SEW(DEFEITO)','SEW','MWA 21A',NULL,NULL),
 (204,'CORREIA',NULL,'B-174',NULL,NULL),
 (205,'CORREIA',NULL,'B-56',NULL,NULL),
 (206,'CORREIA',NULL,'B-75',NULL,NULL),
 (207,'CORREIA',NULL,'BB-123',NULL,NULL),
 (208,'CORREIA',NULL,'C-96',NULL,NULL),
 (209,'CORREIA',NULL,'C-112',NULL,NULL),
 (210,'CORREIA (USADA)',NULL,'C-96',NULL,NULL),
 (211,'CORREIA (USADA)',NULL,'B-75',NULL,NULL),
 (212,'CORREIA (USADA)',NULL,'C-85',NULL,NULL),
 (213,'CORREIA (USADA)',NULL,'B-41',NULL,NULL),
 (214,'CORREIA (USADA)',NULL,'B-46',NULL,NULL),
 (215,'CORREIA',NULL,'B65',NULL,NULL),
 (216,'braço direito do misturador',NULL,NULL,NULL,NULL),
 (217,'braço esquerdo do misturador',NULL,NULL,NULL,NULL),
 (218,'palheta',NULL,NULL,NULL,NULL),
 (219,'parafuso 3/4',NULL,NULL,NULL,NULL),
 (220,'porca 3/4',NULL,NULL,NULL,NULL),
 (221,'arruela lisa 3/4',NULL,NULL,NULL,NULL),
 (222,'arruela de pressão 3/4',NULL,NULL,NULL,NULL),
 (223,'parafuso 5/8 x70mm',NULL,NULL,NULL,NULL),
 (224,'porca 5/8',NULL,NULL,NULL,NULL),
 (225,'arruela lisa 5/8',NULL,NULL,NULL,NULL),
 (226,'rolmento 11265',NULL,NULL,NULL,NULL),
 (227,'arruela 10618',NULL,NULL,NULL,NULL),
 (228,'porca 10474',NULL,NULL,NULL,NULL),
 (229,'pinhão do retentor 40353',NULL,NULL,NULL,NULL),
 (230,'retentor 10894',NULL,NULL,NULL,NULL),
 (231,'rolamento 11138',NULL,NULL,NULL,NULL),
 (232,'rolamento 11265',NULL,NULL,NULL,NULL),
 (233,'tampa do mancal 40068',NULL,NULL,NULL,NULL),
 (234,'retentor 10947',NULL,NULL,NULL,NULL),
 (235,'tampa do redutor 112E105',NULL,NULL,NULL,NULL),
 (236,'eixo do rolete',NULL,NULL,NULL,NULL),
 (237,'rolamento 11255','N/I','11265','peça',0);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;


--
-- Definition of table `saida_prod`
--

DROP TABLE IF EXISTS `saida_prod`;
CREATE TABLE `saida_prod` (
  `COD_SAIDA` int(11) NOT NULL DEFAULT '0',
  `PRODUTO` int(11) DEFAULT NULL,
  `QUANT` int(11) DEFAULT NULL,
  `DATA` date DEFAULT NULL,
  `FINALIDADE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`COD_SAIDA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saida_prod`
--

/*!40000 ALTER TABLE `saida_prod` DISABLE KEYS */;
INSERT INTO `saida_prod` (`COD_SAIDA`,`PRODUTO`,`QUANT`,`DATA`,`FINALIDADE`) VALUES 
 (1,216,4,'2016-01-12',NULL),
 (2,77,28,'2012-01-05',NULL),
 (3,237,2,'2012-01-10',NULL),
 (4,217,24,'2012-01-10',NULL),
 (5,219,28,'2012-01-10',NULL),
 (6,220,28,'2012-01-10',NULL),
 (7,221,28,'2012-01-10',NULL),
 (8,222,28,'2012-01-10',NULL),
 (9,223,28,'2012-01-10',NULL),
 (10,225,56,'2012-01-10',NULL),
 (11,224,28,'2012-01-10',NULL),
 (12,78,1,'2012-01-10',NULL),
 (13,79,1,'2012-01-10',NULL),
 (14,93,2,'2012-01-10',NULL),
 (15,101,1,'2012-01-10',NULL),
 (16,117,2,'2012-01-10',NULL),
 (17,236,2,'2012-01-10',NULL),
 (18,229,2,'2012-01-10',NULL),
 (19,230,2,'2012-01-10',NULL),
 (20,231,4,'2012-01-10',NULL),
 (21,235,1,'2012-01-10',NULL),
 (22,227,2,'2012-01-10',NULL),
 (23,228,2,'2012-01-10',NULL),
 (24,234,2,'2012-01-10',NULL),
 (25,233,1,'2012-01-10',NULL),
 (26,232,2,'2012-01-10',NULL);
/*!40000 ALTER TABLE `saida_prod` ENABLE KEYS */;


--
-- Definition of table `setor`
--

DROP TABLE IF EXISTS `setor`;
CREATE TABLE `setor` (
  `COD_SETOR` int(10) NOT NULL,
  `SETOR` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`COD_SETOR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setor`
--

/*!40000 ALTER TABLE `setor` DISABLE KEYS */;
/*!40000 ALTER TABLE `setor` ENABLE KEYS */;


--
-- Definition of table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user` varchar(45) NOT NULL,
  `SENHA` varchar(45) NOT NULL,
  `NOME` varchar(45) DEFAULT NULL,
  `ENDERECO` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`user`,`SENHA`,`NOME`,`ENDERECO`) VALUES 
 ('jocinei','201129','Jocinei da Rosa','Rua Ramiro Porto 195');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
