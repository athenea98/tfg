-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-05-2022 a las 19:39:56
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
-- Base de datos: `studentattdb`
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
(478, 1, 1619647200, 1, 2, 'IYA011'),
(477, 1, 1619647200, 1, 2, 'IYA011'),
(476, 1, 1619647200, 1, 2, 'IYA011'),
(475, 8, 1619647200, 1, 2, 'IYA011'),
(474, 8, 1619647200, 1, 2, 'IYA011'),
(473, 7, 1619647200, 1, 2, 'IYA011'),
(472, 6, 1619647200, 1, 2, 'IYA011'),
(471, 5, 1619647200, 1, 2, 'IYA011'),
(470, 4, 1619647200, 1, 2, 'IYA011'),
(469, 3, 1619647200, 1, 2, 'IYA011'),
(468, 2, 1619647200, 1, 2, 'IYA011'),
(467, 1, 1619647200, 1, 2, 'IYA011'),
(466, 3, 1619388000, 1, 2, 'IYA011'),
(465, 3, 1619388000, 1, 2, 'IYA011'),
(464, 3, 1619388000, 1, 2, 'IYA011'),
(463, 1, 1619388000, 1, 2, 'IYA011'),
(462, 1, 1619388000, 1, 2, 'IYA011'),
(461, 1, 1619388000, 1, 2, 'IYA011'),
(460, 6, 1619388000, 1, 2, 'IYA011'),
(459, 5, 1619388000, 0, 2, 'IYA011'),
(458, 4, 1619388000, 1, 2, 'IYA011'),
(457, 3, 1619388000, 1, 2, 'IYA011'),
(456, 2, 1619388000, 1, 2, 'IYA011'),
(455, 1, 1619388000, 1, 2, 'IYA011'),
(454, 1, 1619388000, 1, 2, 'IYA011'),
(453, 6, 1619388000, 1, 2, 'IYA011'),
(452, 8, 1619388000, 1, 2, 'IYA011'),
(451, 7, 1619388000, 0, 2, 'IYA011'),
(450, 6, 1619388000, 1, 2, 'IYA011'),
(449, 5, 1619388000, 0, 2, 'IYA011'),
(448, 4, 1619388000, 1, 2, 'IYA011'),
(447, 3, 1619388000, 1, 2, 'IYA011'),
(446, 2, 1619388000, 0, 2, 'IYA011'),
(445, 1, 1619388000, 1, 2, 'IYA011'),
(444, 7, 1619733600, 1, 1, 'IYA049'),
(443, 6, 1619733600, 1, 1, 'IYA049'),
(442, 5, 1619733600, 0, 1, 'IYA049'),
(441, 4, 1619733600, 1, 1, 'IYA049'),
(440, 1, 1619733600, 1, 1, 'IYA049'),
(439, 8, 1619733600, 1, 1, 'IYA049'),
(438, 7, 1619733600, 0, 1, 'IYA049'),
(437, 6, 1619733600, 1, 1, 'IYA049'),
(436, 5, 1619733600, 1, 1, 'IYA049'),
(435, 4, 1619733600, 1, 1, 'IYA049'),
(434, 3, 1619733600, 1, 1, 'IYA049'),
(433, 2, 1619733600, 1, 1, 'IYA049'),
(432, 1, 1619733600, 1, 1, 'IYA049'),
(431, 1, 1619733600, 0, 1, 'IYA049'),
(430, 7, 1619733600, 1, 1, 'IYA049'),
(429, 8, 1619733600, 1, 1, 'IYA049'),
(428, 7, 1619733600, 1, 1, 'IYA049'),
(427, 6, 1619733600, 0, 1, 'IYA049'),
(426, 5, 1619733600, 1, 1, 'IYA049'),
(425, 4, 1619733600, 1, 1, 'IYA049'),
(424, 3, 1619733600, 1, 1, 'IYA049'),
(423, 2, 1619733600, 1, 1, 'IYA049'),
(422, 1, 1619733600, 1, 1, 'IYA049'),
(421, 7, 1619647200, 0, 1, 'IYA049'),
(420, 3, 1619647200, 1, 1, 'IYA049'),
(419, 5, 1619647200, 0, 1, 'IYA049'),
(418, 4, 1619647200, 0, 1, 'IYA049'),
(417, 1, 1619647200, 1, 1, 'IYA049'),
(416, 8, 1619647200, 1, 1, 'IYA049'),
(415, 7, 1619647200, 0, 1, 'IYA049'),
(414, 6, 1619647200, 0, 1, 'IYA049'),
(413, 5, 1619647200, 1, 1, 'IYA049'),
(412, 4, 1619647200, 1, 1, 'IYA049'),
(411, 3, 1619647200, 1, 1, 'IYA049'),
(410, 2, 1619647200, 0, 1, 'IYA049'),
(409, 1, 1619647200, 0, 1, 'IYA049'),
(408, 1, 1619647200, 0, 1, 'IYA049'),
(407, 5, 1619647200, 1, 1, 'IYA049'),
(406, 8, 1619647200, 1, 1, 'IYA049'),
(405, 7, 1619647200, 1, 1, 'IYA049'),
(404, 6, 1619647200, 1, 1, 'IYA049'),
(403, 5, 1619647200, 1, 1, 'IYA049'),
(402, 4, 1619647200, 1, 1, 'IYA049'),
(401, 3, 1619647200, 1, 1, 'IYA049'),
(400, 2, 1619647200, 0, 1, 'IYA049'),
(399, 1, 1619647200, 0, 1, 'IYA049'),
(398, 7, 1619906400, 1, 1, 'IYA049'),
(397, 6, 1619906400, 1, 1, 'IYA049'),
(396, 3, 1619906400, 1, 1, 'IYA049'),
(395, 4, 1619906400, 1, 1, 'IYA049'),
(394, 5, 1619906400, 1, 1, 'IYA049'),
(393, 8, 1619906400, 1, 1, 'IYA049'),
(392, 7, 1619906400, 1, 1, 'IYA049'),
(391, 6, 1619906400, 1, 1, 'IYA049'),
(390, 5, 1619906400, 0, 1, 'IYA049'),
(389, 4, 1619906400, 1, 1, 'IYA049'),
(388, 3, 1619906400, 1, 1, 'IYA049'),
(387, 2, 1619906400, 1, 1, 'IYA049'),
(386, 1, 1619906400, 1, 1, 'IYA049'),
(385, 1, 1619906400, 1, 1, 'IYA049'),
(384, 8, 1619906400, 1, 1, 'IYA049'),
(383, 8, 1619906400, 0, 1, 'IYA049'),
(382, 7, 1619906400, 1, 1, 'IYA049'),
(381, 6, 1619906400, 1, 1, 'IYA049'),
(380, 5, 1619906400, 0, 1, 'IYA049'),
(379, 4, 1619906400, 1, 1, 'IYA049'),
(378, 3, 1619906400, 1, 1, 'IYA049'),
(377, 2, 1619906400, 1, 1, 'IYA049'),
(376, 1, 1619906400, 1, 1, 'IYA049'),
(375, 7, 1619820000, 1, 1, 'IYA049'),
(374, 6, 1619820000, 1, 1, 'IYA049'),
(373, 5, 1619820000, 0, 1, 'IYA049'),
(372, 4, 1619820000, 1, 1, 'IYA049'),
(371, 1, 1619820000, 1, 1, 'IYA049'),
(370, 8, 1619820000, 1, 1, 'IYA049'),
(369, 7, 1619820000, 1, 1, 'IYA049'),
(368, 6, 1619820000, 0, 1, 'IYA049'),
(367, 5, 1619820000, 1, 1, 'IYA049'),
(366, 4, 1619820000, 1, 1, 'IYA049'),
(365, 3, 1619820000, 1, 1, 'IYA049'),
(660, 6, 1619906400, 1, 6, 'IYA022');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `student`
--

CREATE TABLE `student` (
  `sid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `second_lastname` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `student`
--
INSERT INTO `student` (`sid`, `name`, `lastname`, `second_lastname`, `login`) VALUES
(1, 'Pablo', 'Herrero', 'García', 'pablo.herrero'),
(2, 'Paula', 'de Costa', 'Pereira', 'paula.decosta'),
(3, 'Álvaro', 'Cabezas', 'Ruiz', 'alvaro.cabezas'),
(4, 'Víctor Ernesto', 'Martínez', 'Leal', 'victor.martinez'),
(5, 'Pablo', 'Toca', 'Berdejo', 'pablo.toca'),
(6, 'Luis', 'Cachón', 'Ortiz', 'luis.cachon'),
(7, 'Sergio', 'Díez', 'Fernández', 'sergio.diez'),
(8, 'Atenea', 'Ruigomez', 'Noriega', 'atenea.ruigomez'),
(9, 'Fernando', 'Parra', 'Galnares', 'fernando.parra');

--
-- Estructura de tabla para la tabla `student_subject`
--

CREATE TABLE `student_subject` (
  `sid` int(11) NOT NULL,
  `id` varchar(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subject`
--
INSERT INTO `student_subject` (`sid`, `id`) VALUES
(1, 'IYA049'),
(1, 'IYA003'),
(1, 'IYA022'),
(1, 'IYA022'),
(1, 'IYA024'),
(2, 'IYA049'),
(2, 'IYA003'),
(2, 'IYA022'),
(2, 'IYA022'),
(2, 'IYA024'),
(3, 'IYA049'),
(3, 'IYA003'),
(3, 'IYA022'),
(3, 'IYA022'),
(3, 'IYA024'),
(4, 'IYA049'),
(4, 'IYA003'),
(4, 'IYA022'),
(4, 'IYA022'),
(4, 'IYA024'),
(5, 'IYA049'),
(5, 'IYA003'),
(5, 'IYA022'),
(5, 'IYA022'),
(5, 'IYA024'),
(6, 'IYA049'),
(6, 'IYA003'),
(6, 'IYA022'),
(6, 'IYA022'),
(6, 'IYA024'),
(7, 'IYA049'),
(7, 'IYA003'),
(7, 'IYA022'),
(7, 'IYA022'),
(7, 'IYA024'),
(8, 'IYA049'),
(8, 'IYA003'),
(8, 'IYA022'),
(8, 'IYA022'),
(8, 'IYA024'),
(9, 'IYA049'),
(9, 'IYA003'),
(9, 'IYA022'),
(9, 'IYA022'),
(9, 'IYA024');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subject`
--

CREATE TABLE `subject` (
  `id` varchar(6) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `subject`
--

INSERT INTO `subject` (`id`, `name`) VALUES
('IYA049', 'Programación Web I'),
('IYA003', 'Programación I'),
('IYA022', 'Redes de Ordenadores'),
('IYA011', 'Física'),
('IYA024', 'Bases de Datos II');

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
(1, 'IYA049'),
(3, 'IYA003'),
(4, 'IYA024'),
(2, 'IYA011'),
(5, 'IYA022'),
(6, 'IYA003'),
(6, 'IYA022'),
(6, 'IYA024');

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
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=683;

--
-- AUTO_INCREMENT de la tabla `student`
--
ALTER TABLE `student`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT de la tabla `subject`
--
ALTER TABLE `subject`
  MODIFY `id` varchar(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;