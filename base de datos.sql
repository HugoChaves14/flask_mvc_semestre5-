-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         10.5.8-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para flask_mvc
CREATE DATABASE IF NOT EXISTS `flask_mvc` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `flask_mvc`;

-- Volcando estructura para tabla flask_mvc.productos
CREATE TABLE IF NOT EXISTS `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descricion` varchar(255) DEFAULT NULL,
  `precio_venta` varchar(255) DEFAULT NULL,
  `precio_compra` varchar(255) DEFAULT NULL,
  `estado` enum('activo','inactivo') DEFAULT NULL,
  `editar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla flask_mvc.productos: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio_venta`, `precio_compra`, `estado`, `editar`) VALUES
	(1, 'Gaseosa', NULL, NULL, NULL, NULL, NULL),
	(2, 'Leche', NULL, NULL, NULL, NULL, NULL),
	(3, 'galletas', NULL, NULL, NULL, NULL, NULL),
	(4, 'queso', NULL, NULL, NULL, NULL, NULL),
	(5, 'yogurth', NULL, NULL, NULL, NULL, NULL),
	(6, 'cuaderno', NULL, NULL, NULL, NULL, NULL),
	(7, 'gato', NULL, NULL, NULL, NULL, NULL),
	(8, 'hugo', 'hola', '300', '200', 'inactivo', NULL),
	(9, 'lapiz', NULL, '2000', '500', 'activo', NULL);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;