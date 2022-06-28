-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-06-2022 a las 21:37:40
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `uneasistencias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `aid` int(6) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`aid`, `name`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `attendance`
--

CREATE TABLE `attendance` (
  `aid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `ispresent` tinyint(4) NOT NULL,
  `uid` int(11) NOT NULL,
  `id` varchar(6) NOT NULL,
  `gid` int(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `attendance`
--

INSERT INTO `attendance` (`aid`, `sid`, `date`, `ispresent`, `uid`, `id`, `gid`) VALUES
(767, 1, 1655071200, 0, 5, '5', 1),
(768, 2, 1655071200, 1, 5, '5', 1),
(769, 4, 1655416800, 0, 5, '5', 2),
(770, 3, 1655416800, 1, 5, '5', 2),
(771, 1, 1655330400, 1, 5, '5', 1),
(772, 2, 1655330400, 0, 5, '5', 1),
(773, 1, 1654466400, 1, 5, '5', 1),
(774, 2, 1654466400, 1, 5, '5', 1),
(775, 1, 1655416800, 1, 5, '5', 1),
(776, 2, 1655416800, 1, 5, '5', 1),
(777, 1, 1654639200, 0, 5, '5', 1),
(778, 2, 1654639200, 1, 5, '5', 1),
(779, 4, 1654639200, 1, 5, '5', 2),
(780, 3, 1654639200, 0, 5, '5', 2),
(781, 1, 1655157600, 1, 5, '5', 1),
(782, 2, 1655157600, 0, 5, '5', 1),
(783, 4, 1655157600, 0, 5, '5', 2),
(784, 3, 1655157600, 1, 5, '5', 2),
(785, 1, 1655244000, 0, 5, '5', 1),
(786, 2, 1655244000, 1, 5, '5', 1),
(787, 1, 1655416800, 1, 1, '1', 1),
(788, 2, 1655416800, 0, 1, '1', 1),
(789, 1, 1655589600, 1, 5, '5', 1),
(790, 2, 1655589600, 0, 5, '5', 1),
(791, 3, 1655071200, 1, 5, '5', 2),
(792, 4, 1655071200, 1, 5, '5', 2),
(793, 1, 1655071200, 0, 1, '1', 1),
(794, 2, 1655071200, 1, 1, '1', 1),
(795, 1, 1655157600, 0, 1, '1', 1),
(796, 2, 1655157600, 1, 1, '1', 1),
(797, 1, 1655244000, 0, 1, '1', 1),
(798, 2, 1655244000, 1, 1, '1', 1),
(799, 1, 1655330400, 0, 1, '1', 1),
(800, 2, 1655330400, 0, 1, '1', 1),
(801, 1, 1655157600, 1, 5, '3', 1),
(802, 2, 1655157600, 1, 5, '3', 1),
(803, 1, 1655244000, 1, 5, '3', 1),
(804, 2, 1655244000, 1, 5, '3', 1),
(805, 1, 1655071200, 1, 5, '3', 1),
(806, 2, 1655071200, 1, 5, '3', 1),
(807, 1, 1654725600, 1, 5, '3', 1),
(808, 2, 1654725600, 1, 5, '3', 1),
(809, 1, 1654466400, 1, 5, '3', 1),
(810, 2, 1654466400, 1, 5, '3', 1),
(811, 12, 1656280800, 1, 3, '2', 1),
(812, 20, 1656280800, 1, 3, '2', 1),
(813, 8, 1656280800, 1, 3, '2', 1),
(814, 19, 1656280800, 1, 3, '2', 1),
(815, 21, 1656280800, 1, 3, '2', 1),
(816, 5, 1656280800, 1, 3, '2', 1),
(817, 9, 1656280800, 1, 3, '2', 1),
(818, 25, 1656280800, 1, 3, '2', 1),
(819, 23, 1656280800, 1, 3, '2', 1),
(820, 6, 1656280800, 1, 3, '2', 1),
(821, 7, 1656280800, 1, 3, '2', 1),
(822, 13, 1656280800, 1, 3, '2', 1),
(823, 11, 1656280800, 1, 3, '2', 1),
(824, 22, 1656280800, 1, 3, '2', 1),
(825, 24, 1656280800, 1, 3, '2', 1),
(826, 10, 1656280800, 1, 3, '2', 1),
(827, 16, 1656280800, 1, 3, '2', 2),
(828, 17, 1656280800, 0, 3, '2', 2),
(829, 14, 1656280800, 1, 3, '2', 2),
(830, 18, 1656280800, 1, 3, '2', 2),
(831, 15, 1656280800, 0, 3, '2', 2),
(832, 2, 1654639200, 1, 5, '3', 1),
(833, 2, 1654812000, 1, 5, '3', 1),
(834, 2, 1655330400, 1, 5, '3', 1),
(835, 2, 1655416800, 1, 5, '3', 1),
(836, 1, 1654466400, 1, 1, '1', 1),
(837, 1, 1654466400, 1, 1, '1', 1),
(838, 1, 1654466400, 1, 1, '1', 1),
(839, 1, 1654466400, 1, 1, '1', 1),
(840, 1, 1654466400, 1, 1, '1', 1),
(841, 1, 1654466400, 1, 1, '1', 1),
(842, 1, 1654466400, 1, 1, '1', 1),
(843, 1, 1654466400, 1, 1, '1', 1),
(844, 1, 1654466400, 1, 1, '1', 1),
(845, 2, 1654466400, 1, 1, '1', 1),
(846, 1, 1654552800, 1, 1, '1', 1),
(847, 1, 1654552800, 1, 1, '1', 1),
(848, 1, 1654552800, 1, 1, '1', 1),
(849, 1, 1654552800, 1, 1, '1', 1),
(850, 1, 1654552800, 1, 1, '1', 1),
(851, 1, 1654552800, 1, 1, '1', 1),
(852, 1, 1654552800, 1, 1, '1', 1),
(853, 1, 1654552800, 1, 1, '1', 1),
(854, 1, 1654552800, 1, 1, '1', 1),
(855, 2, 1654552800, 1, 1, '1', 1),
(856, 1, 1654639200, 1, 1, '1', 1),
(857, 1, 1654639200, 1, 1, '1', 1),
(858, 1, 1654639200, 1, 1, '1', 1),
(859, 1, 1654639200, 1, 1, '1', 1),
(860, 1, 1654639200, 1, 1, '1', 1),
(861, 1, 1654639200, 1, 1, '1', 1),
(862, 1, 1654639200, 1, 1, '1', 1),
(863, 1, 1654639200, 1, 1, '1', 1),
(864, 1, 1654639200, 1, 1, '1', 1),
(865, 2, 1654639200, 1, 1, '1', 1),
(866, 1, 1654725600, 1, 1, '1', 1),
(867, 1, 1654725600, 1, 1, '1', 1),
(868, 1, 1654725600, 1, 1, '1', 1),
(869, 1, 1654725600, 1, 1, '1', 1),
(870, 1, 1654725600, 1, 1, '1', 1),
(871, 1, 1654725600, 1, 1, '1', 1),
(872, 1, 1654725600, 1, 1, '1', 1),
(873, 1, 1654725600, 1, 1, '1', 1),
(874, 1, 1654725600, 1, 1, '1', 1),
(875, 2, 1654725600, 1, 1, '1', 1),
(876, 1, 1655935200, 1, 1, '1', 1),
(877, 1, 1655935200, 1, 1, '1', 1),
(878, 1, 1655935200, 1, 1, '1', 1),
(879, 1, 1655935200, 1, 1, '1', 1),
(880, 1, 1655935200, 1, 1, '1', 1),
(881, 1, 1655935200, 1, 1, '1', 1),
(882, 1, 1655935200, 1, 1, '1', 1),
(883, 1, 1655935200, 1, 1, '1', 1),
(884, 1, 1655935200, 1, 1, '1', 1),
(885, 2, 1655935200, 1, 1, '1', 1),
(886, 12, 1655676000, 0, 3, '2', 1),
(887, 20, 1655676000, 0, 3, '2', 1),
(888, 8, 1655676000, 0, 3, '2', 1),
(889, 19, 1655676000, 0, 3, '2', 1),
(890, 21, 1655676000, 0, 3, '2', 1),
(891, 5, 1655676000, 0, 3, '2', 1),
(892, 9, 1655676000, 0, 3, '2', 1),
(893, 25, 1655676000, 0, 3, '2', 1),
(894, 23, 1655676000, 0, 3, '2', 1),
(895, 6, 1655676000, 0, 3, '2', 1),
(896, 7, 1655676000, 0, 3, '2', 1),
(897, 13, 1655676000, 0, 3, '2', 1),
(898, 11, 1655676000, 0, 3, '2', 1),
(899, 22, 1655676000, 0, 3, '2', 1),
(900, 2, 1655676000, 1, 3, '2', 1),
(901, 24, 1655676000, 0, 3, '2', 1),
(902, 10, 1655676000, 0, 3, '2', 1),
(903, 2, 1655157600, 1, 3, '2', 1),
(904, 2, 1655330400, 1, 3, '2', 1),
(905, 2, 1654466400, 0, 2, '4', 1),
(906, 2, 1654552800, 0, 2, '4', 1),
(907, 2, 1654639200, 1, 2, '4', 1),
(908, 2, 1654725600, 1, 2, '4', 1),
(909, 2, 1654812000, 1, 2, '4', 1),
(910, 2, 1655071200, 0, 2, '4', 1),
(911, 2, 1655157600, 0, 2, '4', 1),
(912, 2, 1655244000, 0, 2, '4', 1),
(913, 2, 1655330400, 0, 2, '4', 1),
(914, 2, 1655416800, 0, 2, '4', 1),
(915, 2, 1655676000, 0, 2, '4', 1),
(916, 2, 1655762400, 0, 2, '4', 1),
(917, 12, 1654725600, 1, 3, '2', 1),
(918, 20, 1654725600, 1, 3, '2', 1),
(919, 8, 1654725600, 1, 3, '2', 1),
(920, 19, 1654725600, 1, 3, '2', 1),
(921, 21, 1654725600, 1, 3, '2', 1),
(922, 5, 1654725600, 1, 3, '2', 1),
(923, 9, 1654725600, 1, 3, '2', 1),
(924, 25, 1654725600, 1, 3, '2', 1),
(925, 23, 1654725600, 1, 3, '2', 1),
(926, 6, 1654725600, 1, 3, '2', 1),
(927, 7, 1654725600, 1, 3, '2', 1),
(928, 13, 1654725600, 1, 3, '2', 1),
(929, 11, 1654725600, 1, 3, '2', 1),
(930, 22, 1654725600, 1, 3, '2', 1),
(931, 2, 1654725600, 1, 3, '2', 1),
(932, 24, 1654725600, 1, 3, '2', 1),
(933, 10, 1654725600, 1, 3, '2', 1),
(934, 16, 1654552800, 1, 3, '2', 2),
(935, 17, 1654552800, 1, 3, '2', 2),
(936, 14, 1654552800, 1, 3, '2', 2),
(937, 18, 1654552800, 1, 3, '2', 2),
(938, 15, 1654552800, 1, 3, '2', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groupe`
--

CREATE TABLE `groupe` (
  `gid` int(6) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `groupe`
--

INSERT INTO `groupe` (`gid`, `name`) VALUES
(1, 'GII1201+CA1201'),
(2, 'GII1202+CA1202'),
(3, 'GII2101+PER2101'),
(4, 'GII2102+PER2102'),
(5, 'GII4201+CA1201');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `student`
--

CREATE TABLE `student` (
  `sid` int(11) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `second_lastname` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `groupe` varchar(255) NOT NULL,
  `rollno` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `student`
--

INSERT INTO `student` (`sid`, `sname`, `lastname`, `second_lastname`, `login`, `grade`, `groupe`, `rollno`) VALUES
(1, 'Marcos', 'Herrero', 'García', 'marcos.herrero', 'GII', 'GII1201+CA1201', '1'),
(2, 'Paula', 'Rodriguez', 'Diaz', 'paula.rodriguez', 'GII, PEARES', 'GII1201+CA1201', '2'),
(3, 'Álvaro', 'Fernandez', 'Ruiz', 'alvaro.fernandez', 'GII', 'GII1202+CA1202', '3'),
(4, 'Luis', 'Alonso', 'Peral', 'luis.alonso', 'GII', 'GII1202+CA1202', '4'),
(5, 'Francisco', 'Díaz', 'Díaz', 'francisco.diaz', 'GII', 'GII1201+CA1201', '5'),
(6, 'Manuel', 'Pavón', 'Rodriguez', 'manuel.pavon', 'GII', 'GII1201+CA1201', '6'),
(7, 'María', 'Concepción', 'Hidalgo', 'maria.concepcion', 'GII', 'GII1201+CA1201', '7'),
(8, 'Catalina', 'Peña', 'Alvarez', 'catalina.pena', 'GII', 'GII1201+CA1201', '8'),
(9, 'Gloria', 'Marin', 'Gutierrez', 'gloria.marin', 'GII, PEARES', 'GII1201+CA1201', '9'),
(10, 'Xavier', 'Hernández', 'Flores', 'xavier.hernandez', 'GII', 'GII1201+CA1201', '10'),
(11, 'Pablo', 'Bravo', 'Delgado', 'pablo.bravo', 'CA, PEARES', 'GII1201+CA1201', '11'),
(12, 'Alfredo', 'Gallego', 'Ferrer', 'alfredo.gallego', 'CA', 'GII1201+CA1201', '12'),
(13, 'Nerea', 'Flores', 'Rojas', 'nerea.flores', 'CA', 'GII1201+CA1201', '13'),
(14, 'Joaquin', 'Campos', 'Llano', 'joaquin.campos', 'CA', 'GII1202+CA1202', '14'),
(15, 'Sergio', 'Gallego', 'Cruz', 'sergio.gallego', 'CA', 'GII1202+CA1202', '15'),
(16, 'Antonio', 'Gomez', 'Martin', 'antonio.gomez', 'CA, PEARES', 'GII1202+CA1202', '16'),
(17, 'Hugo', 'Molina', 'Reyes', 'hugo.molina', 'CA', 'GII1202+CA1202', '17'),
(18, 'Julian', 'Reyes', 'Pastor', 'julian.reyes', 'CA', 'GII1202+CA1202', '18'),
(19, 'Enrique', 'Castro', 'Fuentes', 'enrique.castro', 'CA', 'GII1201+CA1201', '19'),
(20, 'Ángeles', 'Velasco', 'Mendez', 'angeles.velasco', 'CA', 'GII1201+CA1201', '20'),
(21, 'Fernando', 'Velasco', 'Diaz', 'fernando.velasco', 'GII', 'GII1201+CA1201', '21'),
(22, 'Patricio', 'Martinez', 'Fuentes', 'patricio.martinez', 'GII', 'GII1201+CA1201', '22'),
(23, 'Luis', 'Suarez', 'Lopez', 'luis.suarez', 'GII', 'GII1201+CA1201', '23'),
(24, 'Rodolfo', 'Villa', 'Agudo', 'rodolfo.agudo', 'GII', 'GII1201+CA1201', '24'),
(25, 'Juan', 'Sierra', 'Sierra', 'juan.sierra', 'GII', 'GII1201+CA1201', '25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `student_subject`
--

CREATE TABLE `student_subject` (
  `gid` int(6) NOT NULL,
  `id` int(6) NOT NULL,
  `sid` int(6) NOT NULL,
  `uid` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `student_subject`
--

INSERT INTO `student_subject` (`gid`, `id`, `sid`, `uid`) VALUES
(1, 1, 1, 5),
(1, 1, 2, 5),
(2, 1, 3, 5),
(2, 1, 4, 5),
(1, 2, 7, 3),
(1, 2, 8, 3),
(1, 2, 9, 3),
(1, 2, 10, 3),
(1, 2, 11, 3),
(1, 2, 12, 3),
(1, 2, 13, 3),
(2, 2, 14, 3),
(2, 2, 15, 3),
(2, 2, 16, 3),
(2, 2, 17, 3),
(2, 2, 18, 3),
(1, 2, 5, 3),
(1, 2, 6, 3),
(1, 2, 19, 3),
(1, 2, 20, 3),
(1, 2, 21, 3),
(1, 2, 22, 3),
(1, 2, 23, 3),
(1, 2, 24, 3),
(1, 2, 25, 3),
(1, 1, 1, 1),
(1, 1, 1, 2),
(1, 1, 1, 3),
(1, 1, 1, 4),
(1, 1, 1, 5),
(1, 1, 1, 6),
(1, 1, 1, 7),
(1, 1, 1, 8),
(1, 2, 2, 1),
(1, 3, 2, 6),
(1, 4, 2, 3),
(1, 5, 2, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subject`
--

CREATE TABLE `subject` (
  `id` int(6) NOT NULL,
  `code` varchar(6) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `subject`
--

INSERT INTO `subject` (`id`, `code`, `name`) VALUES
(1, 'IYA049', 'Programación Web I'),
(2, 'IYA003', 'Programación I'),
(3, 'IYA022', 'Redes de Ordenadores'),
(4, 'IYA024', 'Bases de Datos II'),
(5, 'IYA004', 'Sistemas Operativos'),
(6, 'IYA051', 'Inteligencia Artificial'),
(7, 'CSJ118', 'Economía de la Empresa'),
(8, 'IYA043', 'Seguridad y Criptografía');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `second_lastname` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`uid`, `name`, `lastname`, `second_lastname`, `login`, `password`, `email`) VALUES
(5, 'Juan Luis', 'Vidal', 'Mazón', 'juanluis.vidal', 'password', 'juanluis.vidal@uneatlantico.es'),
(1, 'David', 'Pérez', 'Álvarez', 'david.perez', 'password', 'david.perez@uneatlantico.es'),
(2, 'Rodrigo', 'Zaldaña', 'Calles', 'rodrigo.zaldana', 'password', 'rodrigo.zaldana@uneatlantico.es'),
(3, 'Manuel', 'Masías', 'Vergara', 'manuel.masias', 'password', 'manuel.masias@uneatlantico.es'),
(4, 'Lázaro', 'Hernández', 'Hernández', 'lazaro.hernández', 'password', 'lazaro.hernández@uneatlantico.es'),
(6, 'Jose Manuel', 'Breñosa', 'Breñosa', 'josemanuel.breñosa', 'password', 'josemanuel.breñosa@uneatlantico.es'),
(7, 'Inna', 'Alexeeva', 'Alexeeva', 'inna.alexeeva', 'password', 'inna.alexeeva@uneatlantico.es'),
(8, 'Javer', 'Bel', 'Blesa', 'javier.bel', 'password', 'javier.bel@uneatlantico.es');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_subject`
--

CREATE TABLE `user_subject` (
  `uid` int(11) NOT NULL,
  `id` varchar(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user_subject`
--

INSERT INTO `user_subject` (`uid`, `id`) VALUES
(1, '1'),
(3, '2'),
(4, '5'),
(2, '4'),
(5, '3'),
(6, '2'),
(6, '3'),
(6, '5'),
(5, '5');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indices de la tabla `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`aid`);

--
-- Indices de la tabla `groupe`
--
ALTER TABLE `groupe`
  ADD PRIMARY KEY (`gid`);

--
-- Indices de la tabla `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`sid`);

--
-- Indices de la tabla `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `attendance`
--
ALTER TABLE `attendance`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=939;

--
-- AUTO_INCREMENT de la tabla `student`
--
ALTER TABLE `student`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
