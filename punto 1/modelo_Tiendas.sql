-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.31 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para bd_info
DROP DATABASE IF EXISTS `bd_info`;
CREATE DATABASE IF NOT EXISTS `bd_info` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_info`;

-- Volcando estructura para tabla bd_info.tb_carrito
DROP TABLE IF EXISTS `tb_carrito`;
CREATE TABLE IF NOT EXISTS `tb_carrito` (
  `id_carrito` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `id_producto` int NOT NULL,
  `id_pedido` int NOT NULL,
  `estado` bit(1) DEFAULT b'1',
  PRIMARY KEY (`id_carrito`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_producto` (`id_producto`),
  KEY `id_pedido` (`id_pedido`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla bd_info.tb_carrito: 4 rows
DELETE FROM `tb_carrito`;
/*!40000 ALTER TABLE `tb_carrito` DISABLE KEYS */;
INSERT INTO `tb_carrito` (`id_carrito`, `id_usuario`, `id_producto`, `id_pedido`, `estado`) VALUES
	(1, 2, 1, 4, b'1'),
	(2, 3, 3, 1, b'1'),
	(3, 1, 2, 3, b'0'),
	(4, 2, 4, 2, b'1');
/*!40000 ALTER TABLE `tb_carrito` ENABLE KEYS */;

-- Volcando estructura para tabla bd_info.tb_categorias
DROP TABLE IF EXISTS `tb_categorias`;
CREATE TABLE IF NOT EXISTS `tb_categorias` (
  `id_categoria` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(45) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `estado` bit(1) DEFAULT b'1',
  PRIMARY KEY (`id_categoria`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla bd_info.tb_categorias: 3 rows
DELETE FROM `tb_categorias`;
/*!40000 ALTER TABLE `tb_categorias` DISABLE KEYS */;
INSERT INTO `tb_categorias` (`id_categoria`, `nombre_categoria`, `descripcion`, `estado`) VALUES
	(1, 'Despensa', 'Granos, Lacteos y derivados, Enlatados', b'1'),
	(2, 'Electrodomesticos', 'Estufas, Neveras, Televisores', b'1'),
	(3, 'Juguetes', 'Muñecas, Balones,Juegos de mesas', b'0');
/*!40000 ALTER TABLE `tb_categorias` ENABLE KEYS */;

-- Volcando estructura para tabla bd_info.tb_ciudad
DROP TABLE IF EXISTS `tb_ciudad`;
CREATE TABLE IF NOT EXISTS `tb_ciudad` (
  `id_ciudad` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre_ciudad` varchar(45) NOT NULL,
  `cobertura` bit(1) DEFAULT b'1',
  PRIMARY KEY (`id_ciudad`),
  UNIQUE KEY `nombre_ciudad` (`nombre_ciudad`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla bd_info.tb_ciudad: 4 rows
DELETE FROM `tb_ciudad`;
/*!40000 ALTER TABLE `tb_ciudad` DISABLE KEYS */;
INSERT INTO `tb_ciudad` (`id_ciudad`, `nombre_ciudad`, `cobertura`) VALUES
	(1, 'Armenia', b'1'),
	(2, 'Cali', b'1'),
	(3, 'jamundi', b'0'),
	(4, 'Bogota', b'1');
/*!40000 ALTER TABLE `tb_ciudad` ENABLE KEYS */;

-- Volcando estructura para tabla bd_info.tb_oferta
DROP TABLE IF EXISTS `tb_oferta`;
CREATE TABLE IF NOT EXISTS `tb_oferta` (
  `id_oferta` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre_oferta` varchar(45) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `estado` bit(1) DEFAULT b'1',
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  PRIMARY KEY (`id_oferta`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla bd_info.tb_oferta: 3 rows
DELETE FROM `tb_oferta`;
/*!40000 ALTER TABLE `tb_oferta` DISABLE KEYS */;
INSERT INTO `tb_oferta` (`id_oferta`, `nombre_oferta`, `descripcion`, `estado`, `fecha_inicio`, `fecha_fin`) VALUES
	(1, '20% de descuento', 'Obtenga 20% de descuento pagando con tarjetas', b'1', '2023-10-01', '2023-11-02'),
	(2, '30% de descuento', 'Obtenga 30% de descuento con tarjetas bancolo', b'1', '2023-10-15', '2023-10-20'),
	(3, '50% de descuento', 'Obtenga 50% de descuento pagando en efectivo', b'0', '2023-10-13', '2023-11-26');
/*!40000 ALTER TABLE `tb_oferta` ENABLE KEYS */;

-- Volcando estructura para tabla bd_info.tb_pedido
DROP TABLE IF EXISTS `tb_pedido`;
CREATE TABLE IF NOT EXISTS `tb_pedido` (
  `id_pedido` int unsigned NOT NULL AUTO_INCREMENT,
  `fecha_pago` date NOT NULL,
  `metodo_pago` varchar(45) NOT NULL,
  `estado` bit(1) DEFAULT b'1',
  PRIMARY KEY (`id_pedido`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla bd_info.tb_pedido: 5 rows
DELETE FROM `tb_pedido`;
/*!40000 ALTER TABLE `tb_pedido` DISABLE KEYS */;
INSERT INTO `tb_pedido` (`id_pedido`, `fecha_pago`, `metodo_pago`, `estado`) VALUES
	(1, '2023-03-22', 'Efectivo', b'1'),
	(2, '2023-07-05', 'Tarjeta de credito', b'1'),
	(3, '2022-12-22', 'Tarjeta debito', b'1'),
	(4, '2023-06-01', 'Transferencia', b'1'),
	(5, '2023-08-18', 'Bonos sodexo', b'1');
/*!40000 ALTER TABLE `tb_pedido` ENABLE KEYS */;

-- Volcando estructura para tabla bd_info.tb_productos
DROP TABLE IF EXISTS `tb_productos`;
CREATE TABLE IF NOT EXISTS `tb_productos` (
  `id_productos` int unsigned NOT NULL AUTO_INCREMENT,
  `descripcion_producto` varchar(45) DEFAULT NULL,
  `id_categoria` int NOT NULL,
  `precio` int NOT NULL,
  `cantidad` int unsigned NOT NULL,
  `id_oferta` int NOT NULL,
  PRIMARY KEY (`id_productos`),
  KEY `id_categoria` (`id_categoria`),
  KEY `id_oferta` (`id_oferta`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla bd_info.tb_productos: 4 rows
DELETE FROM `tb_productos`;
/*!40000 ALTER TABLE `tb_productos` DISABLE KEYS */;
INSERT INTO `tb_productos` (`id_productos`, `descripcion_producto`, `id_categoria`, `precio`, `cantidad`, `id_oferta`) VALUES
	(1, 'Cafe molido libra', 1, 24300, 20, 1),
	(2, 'Nevera Nofrost', 2, 1500000, 5, 2),
	(3, 'Estufa con horno', 2, 800000, 3, 0),
	(4, 'leche en polvo', 1, 30000, 12, 1);
/*!40000 ALTER TABLE `tb_productos` ENABLE KEYS */;

-- Volcando estructura para tabla bd_info.tb_rol
DROP TABLE IF EXISTS `tb_rol`;
CREATE TABLE IF NOT EXISTS `tb_rol` (
  `id_rol` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_rol`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla bd_info.tb_rol: 4 rows
DELETE FROM `tb_rol`;
/*!40000 ALTER TABLE `tb_rol` DISABLE KEYS */;
INSERT INTO `tb_rol` (`id_rol`, `nombre`, `descripcion`) VALUES
	(1, 'coordinador', 'jefe de tienda'),
	(2, 'jefe de area', 'jefe departamental'),
	(3, 'cliente', ' '),
	(4, 'asesor', 'servicio al cliente');
/*!40000 ALTER TABLE `tb_rol` ENABLE KEYS */;

-- Volcando estructura para tabla bd_info.tb_usuarios
DROP TABLE IF EXISTS `tb_usuarios`;
CREATE TABLE IF NOT EXISTS `tb_usuarios` (
  `id_usuario` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(60) NOT NULL,
  `id_ciudad` int NOT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `id_rol` int NOT NULL,
  `id_refiere` int unsigned DEFAULT NULL,
  `estado` bit(1) DEFAULT b'1',
  `contraseña_usuario` varchar(10) NOT NULL,
  `correo_usuario` varchar(45) NOT NULL,
  `telefono_usuario` varchar(13) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `correo_usuario` (`correo_usuario`),
  UNIQUE KEY `telefono_usuario` (`telefono_usuario`),
  KEY `id_ciudad` (`id_ciudad`),
  KEY `id_rol` (`id_rol`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla bd_info.tb_usuarios: 4 rows
DELETE FROM `tb_usuarios`;
/*!40000 ALTER TABLE `tb_usuarios` DISABLE KEYS */;
INSERT INTO `tb_usuarios` (`id_usuario`, `nombre_usuario`, `id_ciudad`, `direccion`, `id_rol`, `id_refiere`, `estado`, `contraseña_usuario`, `correo_usuario`, `telefono_usuario`, `created_at`, `updated_at`) VALUES
	(1, 'Steveen jimenez', 1, 'cra 19 #31-24', 1, 0, b'1', 'Stiven5512', 'stiven@gmail.com', '3215234984', '2023-09-22 17:05:00', '2023-09-22 17:05:00'),
	(2, 'Diana lopez', 1, 'cra 15 #10-11', 2, 3, b'1', 'dilo1211', 'dianayl@hotmail.com', '3053241053', '2023-09-22 17:05:00', '2023-09-22 17:05:00'),
	(3, 'anuar ocampo', 2, 'la victoria', 4, 2, b'1', 'iron1043', 'ironboss@gmail.com', '3035127624', '2023-09-22 17:05:00', '2023-09-22 17:05:00'),
	(4, 'juan estrada', 3, 'cra 20N #1-15', 3, 1, b'1', 'str4952', 'jestrada@outlook.com', '3157259432', '2023-09-22 17:05:00', '2023-09-22 17:05:00');
/*!40000 ALTER TABLE `tb_usuarios` ENABLE KEYS */;

-- Volcando estructura para tabla bd_info.tb_usuario_rol
DROP TABLE IF EXISTS `tb_usuario_rol`;
CREATE TABLE IF NOT EXISTS `tb_usuario_rol` (
  `id_usuario` int NOT NULL,
  `id_rol` int NOT NULL,
  `estado` bit(1) DEFAULT b'1',
  KEY `id_usuario` (`id_usuario`),
  KEY `id_rol` (`id_rol`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla bd_info.tb_usuario_rol: 4 rows
DELETE FROM `tb_usuario_rol`;
/*!40000 ALTER TABLE `tb_usuario_rol` DISABLE KEYS */;
INSERT INTO `tb_usuario_rol` (`id_usuario`, `id_rol`, `estado`) VALUES
	(1, 1, b'1'),
	(2, 2, b'1'),
	(3, 4, b'1'),
	(4, 3, b'1');
/*!40000 ALTER TABLE `tb_usuario_rol` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
