-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 11-04-2018 a las 23:37:04
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `u479275263_stock`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(255) NOT NULL,
  `descripcion_categoria` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre_categoria`, `descripcion_categoria`, `date_added`) VALUES
(1, 'Repuestos', 'Equipos para el hogar', '2016-12-19 00:00:00'),
(4, 'Equipos', 'Equipos de computo', '2016-12-19 21:06:37'),
(13, 'comida', 'comidas culeras', '2018-03-23 21:40:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `id_historial` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `nota` varchar(255) NOT NULL,
  `referencia` varchar(100) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`id_historial`, `id_producto`, `user_id`, `fecha`, `nota`, `referencia`, `cantidad`) VALUES
(3, 2, 2, '2017-04-09 22:44:20', 'Francisco agregÃ³ 5000 producto(s) al inventario', 'YOLO', 5000),
(4, 2, 1, '2017-04-09 23:24:41', 'Francisco Javier agregÃ³ 5000 producto(s) al inventario', 'TU cola', 5000),
(5, 2, 1, '2017-04-09 23:25:06', 'Francisco Javier eliminÃ³ 9999 producto(s) del inventario', 'Tu puta madre', 9999),
(6, 2, 1, '2017-04-09 23:32:17', 'Francisco Javier agregÃ³ 1 producto(s) al inventario', ':D', 1),
(7, 3, 2, '2017-04-09 23:20:29', 'Francisco agregó 10 producto(s) al inventario', 'tu cola', 10),
(8, 2, 2, '2017-04-10 00:11:02', 'Francisco agregó 5000 producto(s) al inventario', 'manitas puto', 5000),
(9, 2, 2, '2017-04-10 00:11:23', 'Francisco agregó 5 producto(s) al inventario', 'z', 5),
(10, 2, 2, '2017-04-10 00:11:38', 'Francisco eliminó 3000 producto(s) del inventario', 'mane', 3000),
(11, 4, 2, '2017-04-10 04:42:07', 'Francisco agregó 1 producto(s) al inventario', 'Ale hermosa', 1),
(12, 4, 2, '2017-04-10 04:42:31', 'Francisco agregó 4 producto(s) al inventario', 'YOLO', 4),
(13, 4, 2, '2017-04-10 04:42:52', 'Francisco eliminó 4 producto(s) del inventario', 'Necesito dinero para ir a guadalajara', 4),
(14, 5, 2, '2017-04-10 17:16:52', 'Francisco agregó 1 producto(s) al inventario', 'ISEI', 1),
(15, 5, 2, '2017-04-10 17:18:28', 'Francisco agregó 200 producto(s) al inventario', 'llego nuevo', 200),
(16, 5, 2, '2017-04-10 17:18:44', 'Francisco eliminó 2000 producto(s) del inventario', 'Sacaron el producto', 2000),
(17, 5, 2, '2017-04-10 17:19:00', 'Francisco agregó 1800 producto(s) al inventario', '20', 1800),
(18, 6, 2, '2017-05-04 20:35:06', 'Francisco agregó 1 producto(s) al inventario', '12345ASDF', 1),
(19, 6, 2, '2017-05-04 20:35:21', 'Francisco agregó 1 producto(s) al inventario', '500', 1),
(20, 6, 2, '2017-05-04 20:35:31', 'Francisco eliminó 2 producto(s) del inventario', '600', 2),
(21, 5, 1, '2017-05-04 20:36:33', 'Francisco Javier agregó 3 producto(s) al inventario', '500', 3),
(22, 6, 2, '2017-09-17 19:12:50', 'Francisco agregó 1 producto(s) al inventario', '', 1),
(23, 5, 5, '2017-09-17 19:13:35', 'Martín agregó 1 producto(s) al inventario', '13453', 1),
(24, 5, 5, '2017-09-17 19:26:04', 'Martín agregó 1 producto(s) al inventario', '13453', 1),
(25, 7, 2, '2017-09-19 12:38:19', 'Francisco agregó 5 producto(s) al inventario', 'asd', 5),
(26, 7, 2, '2017-09-19 12:38:32', 'Francisco eliminó 4 producto(s) del inventario', 'salida de tienda', 4),
(27, 8, 2, '2017-09-24 15:27:14', 'Francisco agregó 40 producto(s) al inventario', '101', 40),
(28, 9, 2, '2017-11-22 23:51:13', 'Francisco agregó 12 producto(s) al inventario', 'Asdd', 12),
(29, 9, 2, '2017-11-22 23:51:34', 'Francisco agregó 5 producto(s) al inventario', 'Llegó', 5),
(30, 9, 2, '2017-11-22 23:51:57', 'Francisco eliminó 16 producto(s) del inventario', 'Pagó', 16),
(31, 9, 1, '2017-11-22 23:53:34', 'Francisco Javier agregó 5 producto(s) al inventario', '', 5),
(32, 10, 1, '2018-03-23 21:40:53', 'Francisco Javier agregÃ³ 20 producto(s) al inventario', '150628', 20),
(33, 10, 1, '2018-03-23 21:41:06', 'Francisco Javier agregÃ³ 10 producto(s) al inventario', 'entro comida', 10),
(34, 10, 1, '2018-03-23 21:41:22', 'Francisco Javier eliminÃ³ 25 producto(s) del inventario', 'compraron un chingo', 25),
(35, 10, 1, '2018-03-27 18:28:58', 'Francisco Javier agregÃ³ 23 producto(s) al inventario', 'asÃ­', 23),
(36, 10, 1, '2018-03-27 18:29:19', 'Francisco Javier eliminÃ³ 15 producto(s) del inventario', 'afed', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id_producto` int(11) NOT NULL,
  `codigo_producto` char(20) NOT NULL,
  `nombre_producto` char(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `precio_producto` double NOT NULL,
  `stock` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `ubicacion` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id_producto`, `codigo_producto`, `nombre_producto`, `date_added`, `precio_producto`, `stock`, `id_categoria`, `ubicacion`) VALUES
(8, '101', 'Desarmador', '2017-09-24 15:27:14', 50, 40, 4, ''),
(9, 'Asdd', 'Lente', '2017-11-22 23:51:13', 4000, 6, 4, ''),
(10, '150628', 'pizadilla', '2018-03-23 21:40:53', 50, 13, 13, 'A un costado del agua de sabors');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL COMMENT 'auto incrementing user_id of each user, unique index',
  `firstname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s name, unique',
  `user_password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s password in salted and hashed format',
  `user_email` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s email, unique',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='user data';

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `user_name`, `user_password_hash`, `user_email`, `date_added`) VALUES
(1, 'Francisco Javier', 'Salas Martinez', 'admin', '$2y$10$MPMklUzZdIhMYt5.ijEe8uEQovVj7ez55I8YegwyZx/Oqn226SF5y', 'admin@admin.com', '2016-12-19 15:06:00'),
(2, 'Francisco', 'Salas', 'paco', '$2y$10$rQb7DUad4Bv4vzYO7OK/p.0pdS4Xj9M7mDj2iKrUDJ82/WgzBjPT.', 'lezpaul26@gmail.com', '2017-04-09 22:27:40');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`id_historial`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_producto`),
  ADD UNIQUE KEY `codigo_producto` (`codigo_producto`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
  MODIFY `id_historial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto incrementing user_id of each user, unique index', AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
