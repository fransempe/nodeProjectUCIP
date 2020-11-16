-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.5.24-log - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para testmysql2
CREATE DATABASE IF NOT EXISTS `testmysql2` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `testmysql2`;

-- Volcando estructura para tabla testmysql2.categorias
CREATE TABLE IF NOT EXISTS `categorias` (
  `categoria_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`categoria_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla testmysql2.categorias: ~4 rows (aproximadamente)
DELETE FROM `categorias`;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` (`categoria_id`, `nombre`) VALUES
	(1, 'minuta'),
	(2, 'pasta'),
	(3, 'entrada'),
	(4, 'postre');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;

-- Volcando estructura para tabla testmysql2.categoria_platos
CREATE TABLE IF NOT EXISTS `categoria_platos` (
  `id_categoria` int(11) NOT NULL DEFAULT '0',
  `id_plato` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_categoria`,`id_plato`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla testmysql2.categoria_platos: ~0 rows (aproximadamente)
DELETE FROM `categoria_platos`;
/*!40000 ALTER TABLE `categoria_platos` DISABLE KEYS */;
/*!40000 ALTER TABLE `categoria_platos` ENABLE KEYS */;

-- Volcando estructura para tabla testmysql2.platos
CREATE TABLE IF NOT EXISTS `platos` (
  `plato_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `precio` float NOT NULL,
  PRIMARY KEY (`plato_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla testmysql2.platos: ~4 rows (aproximadamente)
DELETE FROM `platos`;
/*!40000 ALTER TABLE `platos` DISABLE KEYS */;
INSERT INTO `platos` (`plato_id`, `nombre`, `precio`) VALUES
	(1, 'papas', 100),
	(2, 'sorrentinos', 150),
	(3, 'ensalada', 100),
	(4, 'helado', 150);
/*!40000 ALTER TABLE `platos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
