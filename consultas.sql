-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-01-2022 a las 12:35:39
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `consultas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultas recibidas`
--

CREATE TABLE `consultas recibidas` (
  `ID` int(11) NOT NULL,
  `Nombre y Apellido` varchar(25) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Mensaje` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultasrecibidas`
--

CREATE TABLE `consultasrecibidas` (
  `ID` int(11) NOT NULL,
  `Nombre y Apellido` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Mensaje` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `consultasrecibidas`
--

INSERT INTO `consultasrecibidas` (`ID`, `Nombre y Apellido`, `Email`, `Telefono`, `Mensaje`) VALUES
(4, 'Federico DG', 'fefe@fefe', '32923', 'fff'),
(5, 'Federico DG', 'fefe@fefe', '32923', 'fff'),
(6, 'federico', 'fededg@fede', '3839', 'esto es una prueba'),
(7, 'federico', 'fededg@fede', '3839', 'esto es una prueba'),
(8, 'federico', 'fededg@fede', '51515', 'prueba2');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `consultas recibidas`
--
ALTER TABLE `consultas recibidas`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `consultasrecibidas`
--
ALTER TABLE `consultasrecibidas`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `consultas recibidas`
--
ALTER TABLE `consultas recibidas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `consultasrecibidas`
--
ALTER TABLE `consultasrecibidas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
