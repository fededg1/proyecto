-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 13-01-2022 a las 22:36:41
-- Versión del servidor: 10.5.12-MariaDB
-- Versión de PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id18256283_consultas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultasrecibidas`
--

CREATE TABLE `consultasrecibidas` (
  `ID` int(11) NOT NULL,
  `Nombre y Apellido` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Telefono` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Mensaje` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `consultasrecibidas`
--

INSERT INTO `consultasrecibidas` (`ID`, `Nombre y Apellido`, `Email`, `Telefono`, `Mensaje`) VALUES
(1, 'Luis Gonzalez', 'luisito@gmail.com', '87587585', 'esto es una prueba'),
(2, 'aa', 'aa@aa', '3839', 'prueba');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `consultasrecibidas`
--
ALTER TABLE `consultasrecibidas`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `consultasrecibidas`
--
ALTER TABLE `consultasrecibidas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
