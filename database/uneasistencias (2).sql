-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-06-2022 a las 10:56:29
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
-- Estructura de tabla para la tabla `attendance`
--

CREATE TABLE `attendance` (
  `aid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `ispresent` tinyint(4) NOT NULL,
  `uid` int(11) NOT NULL,
  `id` varchar(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `attendance`
--

INSERT INTO `attendance` (`aid`, `sid`, `date`, `ispresent`, `uid`, `id`) VALUES
(478, 1, 1619647200, 1, 2, '4'),
(477, 1, 1619647200, 1, 2, '4'),
(476, 1, 1619647200, 1, 2, '4'),
(475, 8, 1619647200, 1, 2, '4'),
(474, 8, 1619647200, 1, 2, '4'),
(473, 7, 1619647200, 1, 2, '4'),
(472, 6, 1619647200, 1, 2, '4'),
(471, 5, 1619647200, 1, 2, '4'),
(470, 4, 1619647200, 1, 2, '4'),
(469, 3, 1619647200, 1, 2, '4'),
(468, 2, 1619647200, 1, 2, '4'),
(467, 1, 1619647200, 1, 2, '4'),
(466, 3, 1619388000, 1, 2, '4'),
(465, 3, 1619388000, 1, 2, '4'),
(464, 3, 1619388000, 1, 2, '4'),
(463, 1, 1619388000, 1, 2, '4'),
(462, 1, 1619388000, 1, 2, '4'),
(461, 1, 1619388000, 1, 2, '4'),
(460, 6, 1619388000, 1, 2, '4'),
(459, 5, 1619388000, 0, 2, '4'),
(458, 4, 1619388000, 1, 2, '4'),
(457, 3, 1619388000, 1, 2, '4'),
(456, 2, 1619388000, 1, 2, '4'),
(455, 1, 1619388000, 1, 2, '4'),
(454, 1, 1619388000, 1, 2, '4'),
(453, 6, 1619388000, 1, 2, '4'),
(452, 8, 1619388000, 1, 2, '4'),
(451, 7, 1619388000, 0, 2, '4'),
(450, 6, 1619388000, 1, 2, '4'),
(449, 5, 1619388000, 0, 2, '4'),
(448, 4, 1619388000, 1, 2, '4'),
(447, 3, 1619388000, 1, 2, '4'),
(446, 2, 1619388000, 0, 2, '4'),
(445, 1, 1619388000, 1, 2, '4'),
(444, 7, 1619733600, 1, 1, '1'),
(0, 6, 1619733600, 1, 1, '1'),
(442, 5, 1619733600, 0, 1, '1'),
(441, 4, 1619733600, 1, 1, '1'),
(440, 1, 1619733600, 1, 1, '1'),
(439, 8, 1619733600, 1, 1, '1'),
(438, 7, 1619733600, 0, 1, '1'),
(437, 6, 1619733600, 1, 1, '1'),
(436, 5, 1619733600, 1, 1, '1'),
(435, 4, 1619733600, 1, 1, '1'),
(434, 3, 1619733600, 1, 1, '1'),
(433, 2, 1619733600, 1, 1, '1'),
(432, 1, 1619733600, 1, 1, '1'),
(431, 1, 1619733600, 0, 1, '1'),
(430, 7, 1619733600, 1, 1, '1'),
(429, 8, 1619733600, 1, 1, '1'),
(428, 7, 1619733600, 1, 1, '1'),
(427, 6, 1619733600, 0, 1, '1'),
(426, 5, 1619733600, 1, 1, '1'),
(425, 4, 1619733600, 1, 1, '1'),
(424, 3, 1619733600, 1, 1, '1'),
(423, 2, 1619733600, 1, 1, '1'),
(422, 1, 1619733600, 1, 1, '1'),
(421, 7, 1619647200, 0, 1, '1'),
(420, 3, 1619647200, 1, 1, '1'),
(419, 5, 1619647200, 0, 1, '1'),
(418, 4, 1619647200, 0, 1, '1'),
(417, 1, 1619647200, 1, 1, '1'),
(416, 8, 1619647200, 1, 1, '1'),
(415, 7, 1619647200, 0, 1, '1'),
(414, 6, 1619647200, 0, 1, '1'),
(413, 5, 1619647200, 1, 1, '1'),
(412, 4, 1619647200, 1, 1, '1'),
(411, 3, 1619647200, 1, 1, '1'),
(410, 2, 1619647200, 0, 1, '1'),
(409, 1, 1619647200, 0, 1, '1'),
(408, 1, 1619647200, 0, 1, '1'),
(407, 5, 1619647200, 1, 1, '1'),
(406, 8, 1619647200, 1, 1, '1'),
(405, 7, 1619647200, 1, 1, '1'),
(404, 6, 1619647200, 1, 1, '1'),
(403, 5, 1619647200, 1, 1, '1'),
(402, 4, 1619647200, 1, 1, '1'),
(401, 3, 1619647200, 1, 1, '1'),
(400, 2, 1619647200, 0, 1, '1'),
(399, 1, 1619647200, 0, 1, '1'),
(398, 7, 1619906400, 1, 1, '1'),
(397, 6, 1619906400, 1, 1, '1'),
(396, 3, 1619906400, 1, 1, '1'),
(395, 4, 1619906400, 1, 1, '1'),
(394, 5, 1619906400, 1, 1, '1'),
(393, 8, 1619906400, 1, 1, '1'),
(392, 7, 1619906400, 1, 1, '1'),
(391, 6, 1619906400, 1, 1, '1'),
(390, 5, 1619906400, 0, 1, '1'),
(389, 4, 1619906400, 1, 1, '1'),
(388, 3, 1619906400, 1, 1, '1'),
(387, 2, 1619906400, 1, 1, '1'),
(386, 1, 1619906400, 1, 1, '1'),
(385, 1, 1619906400, 1, 1, '1'),
(384, 8, 1619906400, 1, 1, '1'),
(383, 8, 1619906400, 0, 1, '1'),
(382, 7, 1619906400, 1, 1, '1'),
(381, 6, 1619906400, 1, 1, '1'),
(380, 5, 1619906400, 0, 1, '1'),
(379, 4, 1619906400, 1, 1, '1'),
(378, 3, 1619906400, 1, 1, '1'),
(377, 2, 1619906400, 1, 1, '1'),
(376, 1, 1619906400, 1, 1, '1'),
(375, 7, 1619820000, 1, 1, '1'),
(374, 6, 1619820000, 1, 1, '1'),
(373, 5, 1619820000, 0, 1, '1'),
(372, 4, 1619820000, 1, 1, '1'),
(371, 1, 1619820000, 1, 1, '1'),
(370, 8, 1619820000, 1, 1, '1'),
(369, 7, 1619820000, 1, 1, '1'),
(368, 6, 1619820000, 0, 1, '1'),
(367, 5, 1619820000, 1, 1, '1'),
(366, 4, 1619820000, 1, 1, '1'),
(365, 3, 1619820000, 1, 1, '1'),
(660, 6, 1619906400, 1, 6, '3'),
(683, 3, 1653343200, 0, 1, '1'),
(684, 6, 1653343200, 0, 1, '1'),
(685, 2, 1653343200, 0, 1, '1'),
(686, 7, 1653343200, 0, 1, '1'),
(687, 1, 1653343200, 0, 1, '1'),
(688, 4, 1653343200, 0, 1, '1'),
(689, 9, 1653343200, 0, 1, '1'),
(690, 8, 1653343200, 0, 1, '1'),
(691, 5, 1653343200, 0, 1, '1'),
(692, 3, 1653343200, 1, 5, '3'),
(693, 6, 1653343200, 1, 5, '3'),
(694, 2, 1653343200, 0, 5, '3'),
(695, 7, 1653343200, 1, 5, '3'),
(696, 1, 1653343200, 0, 5, '3'),
(697, 4, 1653343200, 1, 5, '3'),
(698, 9, 1653343200, 1, 5, '3'),
(699, 8, 1653343200, 1, 5, '3'),
(700, 5, 1653343200, 1, 5, '3'),
(701, 3, 1653343200, 1, 5, '5'),
(702, 6, 1653343200, 1, 5, '5'),
(703, 2, 1653343200, 1, 5, '5'),
(704, 7, 1653343200, 1, 5, '5'),
(705, 1, 1653343200, 1, 5, '5'),
(706, 4, 1653343200, 1, 5, '5'),
(707, 9, 1653343200, 1, 5, '5'),
(708, 5, 1653343200, 1, 5, '5'),
(709, 3, 1653256800, 1, 5, '3'),
(710, 6, 1653256800, 1, 5, '3'),
(711, 2, 1653256800, 1, 5, '3'),
(712, 7, 1653256800, 1, 5, '3'),
(713, 1, 1653256800, 1, 5, '3'),
(714, 4, 1653256800, 1, 5, '3'),
(715, 9, 1653256800, 1, 5, '3'),
(716, 8, 1653256800, 1, 5, '3'),
(717, 5, 1653256800, 1, 5, '3'),
(718, 3, 1653256800, 1, 1, '1'),
(719, 6, 1653256800, 0, 1, '1'),
(720, 2, 1653256800, 0, 1, '1'),
(721, 7, 1653256800, 1, 1, '1'),
(722, 1, 1653256800, 0, 1, '1'),
(723, 4, 1653256800, 1, 1, '1'),
(724, 9, 1653256800, 0, 1, '1'),
(725, 8, 1653256800, 0, 1, '1'),
(726, 5, 1653256800, 1, 1, '1'),
(727, 3, 1652997600, 1, 5, '3'),
(728, 6, 1652997600, 0, 5, '3'),
(729, 2, 1652997600, 1, 5, '3'),
(730, 7, 1652997600, 0, 5, '3'),
(731, 1, 1652997600, 1, 5, '3'),
(732, 4, 1652997600, 0, 5, '3'),
(733, 9, 1652997600, 1, 5, '3'),
(734, 8, 1652997600, 0, 5, '3'),
(735, 5, 1652997600, 1, 5, '3'),
(736, 3, 1653429600, 1, 1, '1'),
(737, 6, 1653429600, 0, 1, '1'),
(738, 2, 1653429600, 1, 1, '1'),
(739, 7, 1653429600, 1, 1, '1'),
(740, 1, 1653429600, 0, 1, '1'),
(741, 4, 1653429600, 1, 1, '1'),
(742, 9, 1653429600, 0, 1, '1'),
(743, 8, 1653429600, 1, 1, '1'),
(744, 5, 1653429600, 0, 1, '1'),
(745, 3, 1653256800, 1, 5, '5'),
(746, 6, 1653256800, 1, 5, '5'),
(747, 2, 1653256800, 1, 5, '5'),
(748, 7, 1653256800, 1, 5, '5'),
(749, 1, 1653256800, 1, 5, '5'),
(750, 4, 1653256800, 1, 5, '5'),
(751, 9, 1653256800, 1, 5, '5'),
(752, 5, 1653256800, 1, 5, '5'),
(753, 4, 1655157600, 1, 5, '3'),
(754, 3, 1655157600, 1, 5, '3'),
(755, 1, 1655157600, 1, 5, '3'),
(756, 2, 1655157600, 1, 5, '3'),
(757, 4, 1655157600, 1, 5, '5'),
(758, 3, 1655157600, 0, 5, '5'),
(759, 1, 1655157600, 0, 5, '5'),
(760, 2, 1655157600, 1, 5, '5');

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
  `id` varchar(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `student_subject`
--

INSERT INTO `student_subject` (`sid`, `id`) VALUES
(1, '1'),
(1, '2'),
(1, '3'),
(1, '4'),
(1, '5'),
(2, '1'),
(2, '2'),
(2, '3'),
(2, '4'),
(2, '5'),
(3, '1'),
(3, '2'),
(3, '3'),
(3, '4'),
(3, '5'),
(4, '1'),
(4, '2'),
(4, '3'),
(4, '4'),
(4, '5'),
(5, '1'),
(5, '2'),
(5, '3'),
(5, '4'),
(5, '5'),
(6, '1'),
(6, '2'),
(6, '3'),
(6, '4'),
(6, '5'),
(7, '1'),
(7, '2'),
(7, '3'),
(7, '4'),
(7, '5'),
(8, '1'),
(8, '2'),
(8, '3'),
(8, '4'),
(9, '1'),
(9, '2'),
(9, '3'),
(9, '4'),
(9, '5');

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
-- Indices de la tabla `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`aid`);

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
-- AUTO_INCREMENT de la tabla `attendance`
--
ALTER TABLE `attendance`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=761;

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
