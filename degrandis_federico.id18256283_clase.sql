-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 13-01-2022 a las 22:34:44
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
-- Base de datos: `id18256283_clase`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `DNI` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `fecha_nac` date NOT NULL,
  `Domicilio` varchar(100) NOT NULL,
  `Mail` varchar(50) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `PrimerMensaje` text NOT NULL,
  `fk_id_clase` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`DNI`, `Nombre`, `Apellido`, `fecha_nac`, `Domicilio`, `Mail`, `Telefono`, `PrimerMensaje`, `fk_id_clase`) VALUES
(897952, 'Raul', 'Lopez', '1955-12-11', 'AA', 'aa@aa', '24895249', 'prueba', 3),
(4511985, 'Raul', 'Lopez', '1955-12-11', 'AA', 'aa@aa', '24895249', 'prueba', 3),
(4811521, 'Ramon', 'Marcerl', '1992-07-12', 'Balcarce', 'be@be', '29829', 'prueba', 3),
(13467952, 'Pepito', 'Martinez', '1997-10-10', 'Chacabuco 402', '', '', '', 1),
(22846522, 'Juan', 'Perez', '1977-12-10', 'Obispo Salguero 293', '', '', '', 1),
(26468579, 'Chespirito', 'Gomez Bolaño', '1956-10-21', 'La Vecindad 150', '', '', '', 1),
(37134106, 'Federico', 'De Grandis', '1992-11-30', 'Parana 395', '', '', '', 2),
(42133593, 'Cosme', 'Fulanito', '2001-06-07', '[Concordia 3444]', '', '', '', 2),
(42484512, 'Ana', 'Maria', '2000-10-18', 'Balcarce 250', '', '', '', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE `clases` (
  `id_clase` int(11) NOT NULL,
  `nombreclase` varchar(200) NOT NULL,
  `profesor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clases`
--

INSERT INTO `clases` (`id_clase`, `nombreclase`, `profesor`) VALUES
(1, 'Php', 'Martinez'),
(2, 'Json', 'Hernandez'),
(3, 'MySql', 'Lopez');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`DNI`),
  ADD KEY `fk_id_clase` (`fk_id_clase`);

--
-- Indices de la tabla `clases`
--
ALTER TABLE `clases`
  ADD PRIMARY KEY (`id_clase`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clases`
--
ALTER TABLE `clases`
  MODIFY `id_clase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`fk_id_clase`) REFERENCES `clases` (`id_clase`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
