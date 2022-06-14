-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-06-2022 a las 19:24:17
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
  `gid` int(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `attendance`
--

INSERT INTO `attendance` (`aid`, `sid`, `date`, `ispresent`, `uid`, `id`, `gid`) VALUES
(478, 1, 1619647200, 1, 2, '4', NULL),
(477, 1, 1619647200, 1, 2, '4', NULL),
(476, 1, 1619647200, 1, 2, '4', NULL),
(475, 8, 1619647200, 1, 2, '4', NULL),
(474, 8, 1619647200, 1, 2, '4', NULL),
(473, 7, 1619647200, 1, 2, '4', NULL),
(472, 6, 1619647200, 1, 2, '4', NULL),
(471, 5, 1619647200, 1, 2, '4', NULL),
(470, 4, 1619647200, 1, 2, '4', NULL),
(469, 3, 1619647200, 1, 2, '4', NULL),
(468, 2, 1619647200, 1, 2, '4', NULL),
(467, 1, 1619647200, 1, 2, '4', NULL),
(466, 3, 1619388000, 1, 2, '4', NULL),
(465, 3, 1619388000, 1, 2, '4', NULL),
(464, 3, 1619388000, 1, 2, '4', NULL),
(463, 1, 1619388000, 1, 2, '4', NULL),
(462, 1, 1619388000, 1, 2, '4', NULL),
(461, 1, 1619388000, 1, 2, '4', NULL),
(460, 6, 1619388000, 1, 2, '4', NULL),
(459, 5, 1619388000, 0, 2, '4', NULL),
(458, 4, 1619388000, 1, 2, '4', NULL),
(457, 3, 1619388000, 1, 2, '4', NULL),
(456, 2, 1619388000, 1, 2, '4', NULL),
(455, 1, 1619388000, 1, 2, '4', NULL),
(454, 1, 1619388000, 1, 2, '4', NULL),
(453, 6, 1619388000, 1, 2, '4', NULL),
(452, 8, 1619388000, 1, 2, '4', NULL),
(451, 7, 1619388000, 0, 2, '4', NULL),
(450, 6, 1619388000, 1, 2, '4', NULL),
(449, 5, 1619388000, 0, 2, '4', NULL),
(448, 4, 1619388000, 1, 2, '4', NULL),
(447, 3, 1619388000, 1, 2, '4', NULL),
(446, 2, 1619388000, 0, 2, '4', NULL),
(445, 1, 1619388000, 1, 2, '4', NULL),
(444, 7, 1619733600, 1, 1, '1', NULL),
(0, 6, 1619733600, 1, 1, '1', NULL),
(442, 5, 1619733600, 0, 1, '1', NULL),
(441, 4, 1619733600, 1, 1, '1', NULL),
(440, 1, 1619733600, 1, 1, '1', NULL),
(439, 8, 1619733600, 1, 1, '1', NULL),
(438, 7, 1619733600, 0, 1, '1', NULL),
(437, 6, 1619733600, 1, 1, '1', NULL),
(436, 5, 1619733600, 1, 1, '1', NULL),
(435, 4, 1619733600, 1, 1, '1', NULL),
(434, 3, 1619733600, 1, 1, '1', NULL),
(433, 2, 1619733600, 1, 1, '1', NULL),
(432, 1, 1619733600, 1, 1, '1', NULL),
(431, 1, 1619733600, 0, 1, '1', NULL),
(430, 7, 1619733600, 1, 1, '1', NULL),
(429, 8, 1619733600, 1, 1, '1', NULL),
(428, 7, 1619733600, 1, 1, '1', NULL),
(427, 6, 1619733600, 0, 1, '1', NULL),
(426, 5, 1619733600, 1, 1, '1', NULL),
(425, 4, 1619733600, 1, 1, '1', NULL),
(424, 3, 1619733600, 1, 1, '1', NULL),
(423, 2, 1619733600, 1, 1, '1', NULL),
(422, 1, 1619733600, 1, 1, '1', NULL),
(421, 7, 1619647200, 0, 1, '1', NULL),
(420, 3, 1619647200, 1, 1, '1', NULL),
(419, 5, 1619647200, 0, 1, '1', NULL),
(418, 4, 1619647200, 0, 1, '1', NULL),
(417, 1, 1619647200, 1, 1, '1', NULL),
(416, 8, 1619647200, 1, 1, '1', NULL),
(415, 7, 1619647200, 0, 1, '1', NULL),
(414, 6, 1619647200, 0, 1, '1', NULL),
(413, 5, 1619647200, 1, 1, '1', NULL),
(412, 4, 1619647200, 1, 1, '1', NULL),
(411, 3, 1619647200, 1, 1, '1', NULL),
(410, 2, 1619647200, 0, 1, '1', NULL),
(409, 1, 1619647200, 0, 1, '1', NULL),
(408, 1, 1619647200, 0, 1, '1', NULL),
(407, 5, 1619647200, 1, 1, '1', NULL),
(406, 8, 1619647200, 1, 1, '1', NULL),
(405, 7, 1619647200, 1, 1, '1', NULL),
(404, 6, 1619647200, 1, 1, '1', NULL),
(403, 5, 1619647200, 1, 1, '1', NULL),
(402, 4, 1619647200, 1, 1, '1', NULL),
(401, 3, 1619647200, 1, 1, '1', NULL),
(400, 2, 1619647200, 0, 1, '1', NULL),
(399, 1, 1619647200, 0, 1, '1', NULL),
(398, 7, 1619906400, 1, 1, '1', NULL),
(397, 6, 1619906400, 1, 1, '1', NULL),
(396, 3, 1619906400, 1, 1, '1', NULL),
(395, 4, 1619906400, 1, 1, '1', NULL),
(394, 5, 1619906400, 1, 1, '1', NULL),
(393, 8, 1619906400, 1, 1, '1', NULL),
(392, 7, 1619906400, 1, 1, '1', NULL),
(391, 6, 1619906400, 1, 1, '1', NULL),
(390, 5, 1619906400, 0, 1, '1', NULL),
(389, 4, 1619906400, 1, 1, '1', NULL),
(388, 3, 1619906400, 1, 1, '1', NULL),
(387, 2, 1619906400, 1, 1, '1', NULL),
(386, 1, 1619906400, 1, 1, '1', NULL),
(385, 1, 1619906400, 1, 1, '1', NULL),
(384, 8, 1619906400, 1, 1, '1', NULL),
(383, 8, 1619906400, 0, 1, '1', NULL),
(382, 7, 1619906400, 1, 1, '1', NULL),
(381, 6, 1619906400, 1, 1, '1', NULL),
(380, 5, 1619906400, 0, 1, '1', NULL),
(379, 4, 1619906400, 1, 1, '1', NULL),
(378, 3, 1619906400, 1, 1, '1', NULL),
(377, 2, 1619906400, 1, 1, '1', NULL),
(376, 1, 1619906400, 1, 1, '1', NULL),
(375, 7, 1619820000, 1, 1, '1', NULL),
(374, 6, 1619820000, 1, 1, '1', NULL),
(373, 5, 1619820000, 0, 1, '1', NULL),
(372, 4, 1619820000, 1, 1, '1', NULL),
(371, 1, 1619820000, 1, 1, '1', NULL),
(370, 8, 1619820000, 1, 1, '1', NULL),
(369, 7, 1619820000, 1, 1, '1', NULL),
(368, 6, 1619820000, 0, 1, '1', NULL),
(367, 5, 1619820000, 1, 1, '1', NULL),
(366, 4, 1619820000, 1, 1, '1', NULL),
(365, 3, 1619820000, 1, 1, '1', NULL),
(660, 6, 1619906400, 1, 6, '3', NULL),
(683, 3, 1653343200, 0, 1, '1', NULL),
(684, 6, 1653343200, 0, 1, '1', NULL),
(685, 2, 1653343200, 0, 1, '1', NULL),
(686, 7, 1653343200, 0, 1, '1', NULL),
(687, 1, 1653343200, 0, 1, '1', NULL),
(688, 4, 1653343200, 0, 1, '1', NULL),
(689, 9, 1653343200, 0, 1, '1', NULL),
(690, 8, 1653343200, 0, 1, '1', NULL),
(691, 5, 1653343200, 0, 1, '1', NULL),
(692, 3, 1653343200, 1, 5, '3', NULL),
(693, 6, 1653343200, 1, 5, '3', NULL),
(694, 2, 1653343200, 0, 5, '3', NULL),
(695, 7, 1653343200, 1, 5, '3', NULL),
(696, 1, 1653343200, 0, 5, '3', NULL),
(697, 4, 1653343200, 1, 5, '3', NULL),
(698, 9, 1653343200, 1, 5, '3', NULL),
(699, 8, 1653343200, 1, 5, '3', NULL),
(700, 5, 1653343200, 1, 5, '3', NULL),
(701, 3, 1653343200, 1, 5, '5', NULL),
(702, 6, 1653343200, 1, 5, '5', NULL),
(703, 2, 1653343200, 1, 5, '5', NULL),
(704, 7, 1653343200, 1, 5, '5', NULL),
(705, 1, 1653343200, 1, 5, '5', NULL),
(706, 4, 1653343200, 1, 5, '5', NULL),
(707, 9, 1653343200, 1, 5, '5', NULL),
(708, 5, 1653343200, 1, 5, '5', NULL),
(709, 3, 1653256800, 1, 5, '3', NULL),
(710, 6, 1653256800, 1, 5, '3', NULL),
(711, 2, 1653256800, 1, 5, '3', NULL),
(712, 7, 1653256800, 1, 5, '3', NULL),
(713, 1, 1653256800, 1, 5, '3', NULL),
(714, 4, 1653256800, 1, 5, '3', NULL),
(715, 9, 1653256800, 1, 5, '3', NULL),
(716, 8, 1653256800, 1, 5, '3', NULL),
(717, 5, 1653256800, 1, 5, '3', NULL),
(718, 3, 1653256800, 1, 1, '1', NULL),
(719, 6, 1653256800, 0, 1, '1', NULL),
(720, 2, 1653256800, 0, 1, '1', NULL),
(721, 7, 1653256800, 1, 1, '1', NULL),
(722, 1, 1653256800, 0, 1, '1', NULL),
(723, 4, 1653256800, 1, 1, '1', NULL),
(724, 9, 1653256800, 0, 1, '1', NULL),
(725, 8, 1653256800, 0, 1, '1', NULL),
(726, 5, 1653256800, 1, 1, '1', NULL),
(727, 3, 1652997600, 1, 5, '3', NULL),
(728, 6, 1652997600, 0, 5, '3', NULL),
(729, 2, 1652997600, 1, 5, '3', NULL),
(730, 7, 1652997600, 0, 5, '3', NULL),
(731, 1, 1652997600, 1, 5, '3', NULL),
(732, 4, 1652997600, 0, 5, '3', NULL),
(733, 9, 1652997600, 1, 5, '3', NULL),
(734, 8, 1652997600, 0, 5, '3', NULL),
(735, 5, 1652997600, 1, 5, '3', NULL),
(736, 3, 1653429600, 1, 1, '1', NULL),
(737, 6, 1653429600, 0, 1, '1', NULL),
(738, 2, 1653429600, 1, 1, '1', NULL),
(739, 7, 1653429600, 1, 1, '1', NULL),
(740, 1, 1653429600, 0, 1, '1', NULL),
(741, 4, 1653429600, 1, 1, '1', NULL),
(742, 9, 1653429600, 0, 1, '1', NULL),
(743, 8, 1653429600, 1, 1, '1', NULL),
(744, 5, 1653429600, 0, 1, '1', NULL),
(745, 3, 1653256800, 1, 5, '5', NULL),
(746, 6, 1653256800, 1, 5, '5', NULL),
(747, 2, 1653256800, 1, 5, '5', NULL),
(748, 7, 1653256800, 1, 5, '5', NULL),
(749, 1, 1653256800, 1, 5, '5', NULL),
(750, 4, 1653256800, 1, 5, '5', NULL),
(751, 9, 1653256800, 1, 5, '5', NULL),
(752, 5, 1653256800, 1, 5, '5', NULL),
(753, 4, 1655157600, 1, 5, '3', NULL),
(754, 3, 1655157600, 1, 5, '3', NULL),
(755, 1, 1655157600, 1, 5, '3', NULL),
(756, 2, 1655157600, 1, 5, '3', NULL),
(757, 4, 1655157600, 1, 5, '5', NULL),
(758, 3, 1655157600, 0, 5, '5', NULL),
(759, 1, 1655157600, 0, 5, '5', NULL),
(760, 2, 1655157600, 1, 5, '5', NULL),
(761, 1, 1655071200, 1, 1, '1', 1),
(762, 2, 1655071200, 1, 1, '1', 1),
(763, 1, 1655071200, 1, 5, '5', 1),
(764, 2, 1655071200, 1, 5, '5', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `group`
--

CREATE TABLE `group` (
  `gid` int(6) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `group`
--

INSERT INTO `group` (`gid`, `name`) VALUES
(1, 'GII1201+CA1201'),
(2, 'GII1202+CA1202');

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
(2, 'GII1202+CA1202');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groupe_subject_student`
--

CREATE TABLE `groupe_subject_student` (
  `gid` int(6) NOT NULL,
  `id` int(6) NOT NULL,
  `sid` int(6) NOT NULL,
  `uid` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `groupe_subject_student`
--

INSERT INTO `groupe_subject_student` (`gid`, `id`, `sid`, `uid`) VALUES
(1, 1, 1, 5),
(1, 1, 2, 5),
(2, 1, 3, 5),
(2, 1, 4, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `student`
--

CREATE TABLE `student` (
  `sid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
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

INSERT INTO `student` (`sid`, `name`, `lastname`, `second_lastname`, `login`, `grade`, `groupe`, `rollno`) VALUES
(1, 'Marcos', 'Herrero', 'García', 'marcos.herrero', 'GII', 'GII1201+CA1201', '1'),
(2, 'Paula', 'Rodriguez', 'Diaz', 'paula.rodriguez', 'GII, PEARES', 'GII1201+CA1201', '2'),
(3, 'Álvaro', 'Fernandez', 'Ruiz', 'alvaro.fernandez', 'GII', 'GII1202+CA1202', '3'),
(4, 'Luis', 'Alonso', 'Peral', 'luis.alonso', 'GII', 'GII1202+CA1202', '4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `student_subject`
--

CREATE TABLE `student_subject` (
  `sid` int(11) NOT NULL,
  `id` varchar(6) NOT NULL,
  `gid` int(6) DEFAULT NULL,
  `uid` int(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `student_subject`
--

INSERT INTO `student_subject` (`sid`, `id`, `gid`, `uid`) VALUES
(1, '3', 1, 5),
(1, '5', 1, 5),
(1, '1', 1, 6),
(1, '2', 1, 6),
(2, '3', 1, 5),
(2, '5', 1, 5),
(2, '1', 1, 6),
(2, '2', 1, 6),
(3, '3', 2, 5),
(3, '5', 2, 5),
(3, '1', 2, 6),
(3, '2', 2, 6),
(4, '3', 2, 5),
(4, '5', 2, 5),
(4, '1', 2, 6),
(4, '2', 2, 6);

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
(4, 'IYA011', 'Física'),
(5, 'IYA024', 'Bases de Datos II');

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
(1, 'admin', 'admin', 'admin', 'admin.admin', 'admin', 'admin@gmail.com'),
(2, 'David', 'Pérez', 'Álvarez', 'david.perez', 'password', 'david.perez@uneatlantico.es'),
(4, 'Rodrigo', 'Zaldaña', 'Calles', 'rodrigo.zaldana', 'password', 'rodrigo.zaldana@uneatlantico.es'),
(5, 'Manuel', 'Masías', 'Vergara', 'manuel.masias', 'password', 'manuel.masias@uneatlantico.es'),
(6, 'Lázaro', 'Hernández', 'Hernández', 'lazaro.hernández', 'password', 'lazaro.hernández@uneatlantico.es');

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
-- Indices de la tabla `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`gid`);

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
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=765;

--
-- AUTO_INCREMENT de la tabla `group`
--
ALTER TABLE `group`
  MODIFY `gid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `student`
--
ALTER TABLE `student`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
