-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-11-2021 a las 06:17:19
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inseguridad`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `denuncia`
--

CREATE TABLE `denuncia` (
  `iddenuncia` int(10) NOT NULL,
  `nombre` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `apellido_pat` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `apellido_mat` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tipo_denuncia` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `lugar` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fecha` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `denuncia`
--

INSERT INTO `denuncia` (`iddenuncia`, `nombre`, `apellido_pat`, `apellido_mat`, `tipo_denuncia`, `lugar`, `fecha`) VALUES
(1, 'José', 'Piaga', 'Martinez', 'robo a casa', 'patria nueva', '2021-11-17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `idmunicipio` int(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `clave_municipio` int(100) NOT NULL,
  `poblacion_total` int(10) NOT NULL,
  `fecha_delito` varchar(100) NOT NULL,
  `iddelincuencia` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`idmunicipio`, `nombre`, `clave_municipio`, `poblacion_total`, `fecha_delito`, `iddelincuencia`) VALUES
(1, 'Acacoyagua', 1, 17, '2020-01-03', 1),
(2, 'Acala', 2, 21, '2021-07-05', 2),
(3, 'Acapetahua', 3, 26, '2018-06-12', 3),
(4, 'Altamirano', 4, 26, '2010-01-03', 4),
(5, 'Amatán', 5, 24, '2019-01-03', 5),
(6, 'Amatenango de la Frontera', 6, 31, '2020-02-03', 6),
(7, 'Amatenango del Valle', 7, 17, '2020-01-03', 7),
(8, 'Ángel Albino Corzo', 8, 31, '2014-03-23', 1),
(9, 'Arriaga', 9, 41, '2014-09-03', 2),
(10, 'Bejucal de Ocampo', 10, 7, '2021-01-03', 3),
(11, 'Bella Vista', 11, 20, '2010-02-09', 4),
(12, 'Berriozábal', 12, 64, '2010-09-05', 5),
(13, 'Bochil', 13, 37, '2020-01-03', 6),
(14, 'El Bosque', 14, 24, '2010-01-27', 7),
(15, 'Cacahoatán', 15, 50, '2020-01-03', 1),
(16, 'Catazajá', 16, 17, '2020-11-03', 2),
(17, 'Cintalapa', 17, 88, '2020-11-03', 3),
(18, 'Coapilla', 18, 19, '2020-10-04', 4),
(19, 'Comitán de Domínguez', 19, 166, '2020-09-05', 5),
(20, 'La Concordia', 20, 49, '2020-06-07', 6),
(21, 'Copainalá', 21, 22, '2020-03-05', 7),
(22, 'Chalchihuitán', 22, 21, '2020-01-07', 1),
(23, 'Chamula', 23, 101, '2020-01-02', 2),
(24, 'Chanal', 24, 13, '2020-01-08', 3),
(25, 'Chapultenango', 25, 7, '2020-01-08', 4),
(26, 'Chenalhó', 26, 47, '2020-01-01', 5),
(27, 'Chiapa de Corzo', 27, 112, '2020-01-23', 6),
(28, 'Chiapilla', 28, 6, '2020-01-23', 7),
(29, 'Chicoasén', 29, 5, '2020-01-19', 1),
(30, 'Chicomuselo', 30, 36, '2020-01-20', 2),
(31, 'Chilón', 31, 17, '2000-01-03', 3),
(32, 'Escuintla', 32, 30, '2020-01-04', 4),
(33, 'Francisco León', 33, 7, '2021-01-05', 5),
(34, 'Frontera Comalapa', 34, 80, '2021-01-06', 6),
(35, 'Frontera Hidalgo', 35, 14, '2021-01-07', 7),
(36, 'La Grandeza', 36, 7, '2021-01-08', 1),
(37, 'Huehuetán', 37, 36, '2021-03-09', 2),
(38, 'Huixtán', 38, 22, '2021-04-01', 3),
(39, 'Huitiupán', 39, 27, '2021-05-02', 4),
(40, 'Huixtla', 40, 53, '2021-06-03', 5),
(41, 'La Independencia', 41, 46, '2021-03-01', 6),
(42, 'Ixhuatán', 42, 11, '2021-06-02', 7),
(43, 'Ixtacomitán', 43, 10, '2021-08-05', 7),
(44, 'Ixtapa', 44, 28, '2021-02-06', 7),
(45, 'Ixtapangajoya', 45, 6, '2021-01-07', 2),
(46, 'Jiquipilas', 46, 41, '2021-01-08', 3),
(47, 'Jitotol', 47, 24, '2021-12-09', 1),
(48, 'Juárez', 48, 21, '2020-12-10', 2),
(49, 'Larráinzar', 49, 31, '2021-01-11', 2),
(50, 'La Libertad', 50, 5, '2021-02-12', 3),
(51, 'Mapastepec', 51, 46, '2020-03-12', 4),
(52, 'Las Margaritas', 52, 141, '2021-04-14', 6),
(53, 'Mazapa de Madero', 53, 7, '2020-05-08', 6),
(54, 'Mazatán', 54, 28, '2020-11-07', 7),
(55, 'Metapa', 55, 5, '2020-11-05', 5),
(56, 'Mitontic', 56, 13, '2020-11-04', 4),
(57, 'Motozintla', 57, 76, '2020-11-03', 4),
(58, 'Nicolás Ruíz', 58, 4, '2020-11-13', 4),
(59, 'Ocosingo', 59, 234, '2020-11-23', 1),
(60, 'Ocotepec', 60, 14, '2020-11-13', 2),
(61, 'Ocozocoautla de Espinosa', 61, 97, '2021-01-03', 1),
(62, 'Ostuacán', 62, 18, '2021-01-03', 2),
(63, 'Osumacinta', 63, 3, '2021-02-03', 3),
(64, 'Oxchuc', 64, 54, '2021-03-03', 4),
(65, 'Palenque', 65, 132, '2021-04-03', 5),
(66, 'Pantelhó', 66, 26, '2021-05-03', 6),
(67, 'Pantepec', 67, 12, '2021-07-23', 7),
(68, 'Pichucalco', 68, 31, '2021-08-23', 1),
(69, 'Pijijiapan', 69, 51, '2021-09-23', 2),
(70, 'El Porvenir', 70, 12, '2019-10-23', 3),
(71, 'Villa Comaltitlán', 71, 17, '2019-11-13', 4),
(72, 'Pueblo Nuevo Solistahuacán', 72, 17, '2019-12-13', 5),
(73, 'Rayón', 73, 17, '2021-02-13', 6),
(74, 'Reforma', 74, 17, '2021-03-13', 7),
(75, 'Las Rosas', 75, 28, '2021-04-03', 1),
(76, 'Sabanilla', 76, 29, '2021-06-03', 2),
(77, 'Salto de Agua', 77, 64, '2021-07-03', 3),
(78, 'San Cristóbal de las Casas', 78, 215, '2021-01-13', 3),
(79, 'San Fernando', 79, 41, '2021-03-13', 3),
(80, 'Siltepec', 80, 17, '2021-07-13', 5),
(81, 'Simojovel', 81, 17, '2021-09-03', 6),
(82, 'Sitalá', 82, 17, '2021-10-13', 6),
(83, 'Socoltenango', 83, 19, '2021-11-13', 7),
(84, 'Solosuchiapa', 84, 8, '2021-12-03', 2),
(85, 'Soyaló', 85, 10, '2021-12-13', 2),
(86, 'Suchiapa', 86, 25, '2020-12-13', 3),
(87, 'Suchiate', 87, 41, '2020-02-03', 2),
(88, 'Sunuapa', 88, 2, '2021-03-03', 7),
(89, 'Tapachula', 89, 353, '2021-05-13', 7),
(90, 'Tapalapa', 90, 4, '2021-09-23', 6),
(91, 'Tapilula', 91, 17, '2021-01-03', 1),
(92, 'Tecpatán', 92, 17, '2020-01-03', 1),
(93, 'Tenejapa', 93, 17, '2020-01-03', 1),
(94, 'Teopisca', 94, 17, '2020-01-03', 1),
(95, 'Tila', 95, 83, '2020-01-03', 1),
(96, 'Tonalá', 96, 91, '2020-01-03', 1),
(97, 'Totolapa', 97, 7, '2020-01-03', 1),
(98, 'La Trinitaria', 98, 83, '2020-01-03', 1),
(99, 'Tumbalá', 99, 38, '2020-01-03', 1),
(100, 'Acacoyagua', 100, 17, '2020-01-03', 1),
(101, 'Tuxtla Gutiérrez', 101, 604, '2020-02-03', 1),
(102, 'Tuxtla Chico', 102, 41, '2020-03-03', 2),
(103, 'Tuzantán', 103, 30, '2020-04-03', 3),
(104, 'Tzimol', 104, 16, '2020-05-03', 4),
(105, 'Unión Juárez', 105, 116, '2020-06-03', 5),
(106, 'Venustiano Carranza', 106, 67, '2020-07-03', 6),
(107, 'Villa Corzo', 107, 65, '2020-08-03', 7),
(108, 'Villaflores', 108, 109, '2020-09-03', 1),
(109, 'San Lucas', 109, 7, '2020-10-03', 1),
(110, 'Yajalón', 110, 40, '2020-11-04', 2),
(111, 'Zinacantán', 111, 45, '2020-11-05', 3),
(112, 'San Juan Cancuc', 112, 37, '2020-11-06', 1),
(113, 'Aldama', 113, 8, '2020-11-07', 1),
(114, 'Benemérito de las Américas', 114, 23, '2020-12-08', 1),
(115, 'Maravilla Tenejapa', 115, 14, '2020-01-03', 0),
(116, 'Marqués de Comillas', 116, 12, '2020-02-05', 1),
(117, 'Montecristo de Guerrero', 117, 8, '2021-03-06', 1),
(118, 'San Andrés Duraznal', 118, 17, '2021-04-03', 1),
(119, 'Santiago el Pinar', 119, 17, '2021-01-07', 1),
(120, 'Capitán Luis Ángel Vidal', 120, 17, '2021-05-07', 1),
(121, 'Rincón Chamula San Pedro', 121, 8, '2020-01-08', 1),
(122, 'El Parral', 122, 15, '2020-05-03', 1),
(123, 'Emiliano Zapata', 123, 10, '2021-07-01', 1),
(124, 'Mezcalapa', 124, 23, '2021-08-28', 1),
(125, 'Honduras de la sierra', 125, 23, '2021-08-28', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `poblacioninsegura`
--

CREATE TABLE `poblacioninsegura` (
  `idpoblacion` int(10) NOT NULL,
  `poblacion` varchar(50) NOT NULL,
  `horario` varchar(20) NOT NULL,
  `idmunicipio` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `poblacioninsegura`
--

INSERT INTO `poblacioninsegura` (`idpoblacion`, `poblacion`, `horario`, `idmunicipio`) VALUES
(1, 'patria nueva', 'noche', 101),
(2, 'las granjas', 'noche y dia', 101),
(3, 'teran', 'noche', 101),
(4, 'la mision', 'noche', 101);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodelincuencia`
--

CREATE TABLE `tipodelincuencia` (
  `iddelincuencia` int(10) NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipodelincuencia`
--

INSERT INTO `tipodelincuencia` (`iddelincuencia`, `nombre`) VALUES
(1, 'Asalto'),
(2, 'Carterismo'),
(3, 'Violación'),
(4, 'Robo a casas'),
(5, 'Robo de vehículos'),
(6, 'Vandalismo'),
(7, 'Grafitis y pinta de muros');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `denuncia`
--
ALTER TABLE `denuncia`
  ADD PRIMARY KEY (`iddenuncia`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`idmunicipio`),
  ADD KEY `iddelincuencia` (`iddelincuencia`),
  ADD KEY `iddelincuencia_2` (`iddelincuencia`);

--
-- Indices de la tabla `poblacioninsegura`
--
ALTER TABLE `poblacioninsegura`
  ADD PRIMARY KEY (`idpoblacion`);

--
-- Indices de la tabla `tipodelincuencia`
--
ALTER TABLE `tipodelincuencia`
  ADD PRIMARY KEY (`iddelincuencia`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `denuncia`
--
ALTER TABLE `denuncia`
  MODIFY `iddenuncia` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `idmunicipio` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT de la tabla `poblacioninsegura`
--
ALTER TABLE `poblacioninsegura`
  MODIFY `idpoblacion` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipodelincuencia`
--
ALTER TABLE `tipodelincuencia`
  MODIFY `iddelincuencia` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
