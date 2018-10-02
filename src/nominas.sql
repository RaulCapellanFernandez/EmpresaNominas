-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.18-log - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             9.4.0.5169
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para nominas
CREATE DATABASE IF NOT EXISTS `nominas` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `nominas`;

-- Volcando estructura para tabla nominas.categorias
CREATE TABLE IF NOT EXISTS `categorias` (
  `IdCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `NombreCategoria` varchar(75) NOT NULL DEFAULT '0',
  `SalarioBaseCategoria` double NOT NULL DEFAULT '0',
  `ComplementoCategoria` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`IdCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla nominas.categorias: ~14 rows (aproximadamente)
DELETE FROM `categorias`;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;

-- Volcando estructura para tabla nominas.empresas
CREATE TABLE IF NOT EXISTS `empresas` (
  `IdEmpresa` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `CIF` varchar(10) NOT NULL,
  PRIMARY KEY (`IdEmpresa`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla nominas.empresas: ~2 rows (aproximadamente)
DELETE FROM `empresas`;
/*!40000 ALTER TABLE `empresas` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresas` ENABLE KEYS */;

-- Volcando estructura para tabla nominas.nomina
CREATE TABLE IF NOT EXISTS `nomina` (
  `IdNomina` int(11) NOT NULL AUTO_INCREMENT,
  `Mes` int(11) NOT NULL DEFAULT '0',
  `Anio` int(11) NOT NULL DEFAULT '0',
  `NumeroTrienios` int(11) NOT NULL DEFAULT '0',
  `ImporteTrienios` double unsigned NOT NULL DEFAULT '0',
  `importeSalarioMes` double unsigned NOT NULL DEFAULT '0',
  `importeComplementoMes` double unsigned NOT NULL DEFAULT '0',
  `ValorProrrateo` double unsigned NOT NULL DEFAULT '0',
  `brutoAnual` double unsigned NOT NULL DEFAULT '0',
  `IRPF` double unsigned NOT NULL DEFAULT '0',
  `ImporteIRPF` double unsigned NOT NULL DEFAULT '0',
  `BaseEmpresario` double unsigned NOT NULL DEFAULT '0',
  `SeguridadSocialEmpresario` double unsigned NOT NULL DEFAULT '0',
  `ImporteSeguridadSocialEmpresario` double unsigned NOT NULL DEFAULT '0',
  `DesempleoEmpresario` double unsigned NOT NULL DEFAULT '0',
  `ImporteDesempleoEmpresario` double unsigned NOT NULL DEFAULT '0',
  `FormacionEmpresario` double unsigned NOT NULL DEFAULT '0',
  `ImporteFormacionEmpresario` double unsigned NOT NULL DEFAULT '0',
  `AccidentesTrabajoEmpresario` double unsigned NOT NULL DEFAULT '0',
  `ImporteAccidentesTrabajoEmpresario` double unsigned NOT NULL DEFAULT '0',
  `FOGASAEmpresario` double unsigned NOT NULL DEFAULT '0',
  `ImporteFOGASAEMpresario` double unsigned NOT NULL DEFAULT '0',
  `SeguridadSocialTrabajador` double unsigned NOT NULL DEFAULT '0',
  `ImporteSeguridadSocialTrabajador` double unsigned NOT NULL DEFAULT '0',
  `DesempleoTrabajador` double unsigned NOT NULL DEFAULT '0',
  `ImporteDesempleoTrabajador` double unsigned NOT NULL DEFAULT '0',
  `FormacionTrabajador` double unsigned NOT NULL DEFAULT '0',
  `ImporteFormacionTrabajador` double unsigned NOT NULL DEFAULT '0',
  `BrutoNomina` double unsigned NOT NULL DEFAULT '0',
  `LiquidoNomina` double unsigned NOT NULL DEFAULT '0',
  `CosteTotalEmpresario` double unsigned NOT NULL DEFAULT '0',
  `IdTrabajador` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`IdNomina`),
  KEY `FK_Trabaajador` (`IdTrabajador`),
  CONSTRAINT `FK_Trabaajador` FOREIGN KEY (`IdTrabajador`) REFERENCES `trabajadorbbdd` (`idTrabajador`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla nominas.nomina: ~7 rows (aproximadamente)
DELETE FROM `nomina`;
/*!40000 ALTER TABLE `nomina` DISABLE KEYS */;
/*!40000 ALTER TABLE `nomina` ENABLE KEYS */;

-- Volcando estructura para tabla nominas.trabajadorbbdd
CREATE TABLE IF NOT EXISTS `trabajadorbbdd` (
  `idTrabajador` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL DEFAULT '0',
  `Apellido1` varchar(75) NOT NULL DEFAULT '0',
  `Apellido2` varchar(75) DEFAULT '0',
  `NIFNIE` varchar(10) NOT NULL DEFAULT '0',
  `email` varchar(75) DEFAULT '0',
  `FechaAlta` date DEFAULT NULL,
  `CodigoCuenta` varchar(20) DEFAULT NULL,
  `IBAN` varchar(24) DEFAULT NULL,
  `IdEmpresa` int(11) NOT NULL DEFAULT '0',
  `IdCategoria` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idTrabajador`),
  KEY `FK_Empresa` (`IdEmpresa`),
  KEY `FK_Categorias` (`IdCategoria`),
  CONSTRAINT `FK_Categorias` FOREIGN KEY (`IdCategoria`) REFERENCES `categorias` (`IdCategoria`),
  CONSTRAINT `FK_Empresa` FOREIGN KEY (`IdEmpresa`) REFERENCES `empresas` (`IdEmpresa`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla nominas.trabajadorbbdd: ~5 rows (aproximadamente)
DELETE FROM `trabajadorbbdd`;
/*!40000 ALTER TABLE `trabajadorbbdd` DISABLE KEYS */;
/*!40000 ALTER TABLE `trabajadorbbdd` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
