-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.19-nt


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

CREATE DATABASE /*!32312 IF NOT EXISTS*/ sgu;
USE sgu;

--
-- Table structure for table `sgu`.`entrada_produto`
--

DROP TABLE IF EXISTS `entrada_produto`;
CREATE TABLE `entrada_produto` (
  `cod_entrada` int(10) NOT NULL default '0',
  `produto` int(10) default NULL,
  `quant` int(10) default NULL,
  `data` date default NULL,
  PRIMARY KEY  (`cod_entrada`),
  KEY `produto` (`produto`),
  CONSTRAINT `produto` FOREIGN KEY (`produto`) REFERENCES `produtos` (`cod_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sgu`.`entrada_produto`
--

/*!40000 ALTER TABLE `entrada_produto` DISABLE KEYS */;
INSERT INTO `entrada_produto` (`cod_entrada`,`produto`,`quant`,`data`) VALUES 
 (1,1,20000,'2016-01-12'),
 (2,1,20000,'2016-01-12');
/*!40000 ALTER TABLE `entrada_produto` ENABLE KEYS */;


--
-- Table structure for table `sgu`.`estoque`
--

DROP TABLE IF EXISTS `estoque`;
CREATE TABLE `estoque` (
  `cod_produto` int(10) NOT NULL default '0',
  `quant` int(10) default NULL,
  PRIMARY KEY  (`cod_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sgu`.`estoque`
--

/*!40000 ALTER TABLE `estoque` DISABLE KEYS */;
/*!40000 ALTER TABLE `estoque` ENABLE KEYS */;


--
-- Table structure for table `sgu`.`produtos`
--

DROP TABLE IF EXISTS `produtos`;
CREATE TABLE `produtos` (
  `cod_produto` int(10) NOT NULL default '0',
  `descricao` varchar(45) default NULL,
  `unidade` varchar(45) default NULL,
  `valor_unit` varchar(45) default NULL,
  PRIMARY KEY  (`cod_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sgu`.`produtos`
--

/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` (`cod_produto`,`descricao`,`unidade`,`valor_unit`) VALUES 
 (1,'CAP 30/45','KG','1,67'),
 (2,'CAP 60/85','KG','1,95');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;


--
-- Table structure for table `sgu`.`saida_produto`
--

DROP TABLE IF EXISTS `saida_produto`;
CREATE TABLE `saida_produto` (
  `cod_saida` int(10) NOT NULL default '0',
  `produto` int(10) default NULL,
  `quant` int(10) default NULL,
  `data` date default NULL,
  PRIMARY KEY  (`cod_saida`),
  KEY `prod` (`produto`),
  CONSTRAINT `prod` FOREIGN KEY (`produto`) REFERENCES `produtos` (`cod_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sgu`.`saida_produto`
--

/*!40000 ALTER TABLE `saida_produto` DISABLE KEYS */;
INSERT INTO `saida_produto` (`cod_saida`,`produto`,`quant`,`data`) VALUES 
 (1,1,20000,'2016-01-12');
/*!40000 ALTER TABLE `saida_produto` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
