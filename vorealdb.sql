-- phpMyAdmin SQL Dump
-- version 4.2.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:3307
-- Tiempo de generación: 04-02-2015 a las 02:55:03
-- Versión del servidor: 5.5.39
-- Versión de PHP: 5.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `vorealdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `centro`
--

CREATE TABLE IF NOT EXISTS `centro` (
`id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `nombre_propietario` varchar(255) DEFAULT NULL,
  `dni_propietario` varchar(9) DEFAULT NULL,
  `telefono` int(9) DEFAULT NULL,
  `localidad` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `beneficio_facorp` int(4) DEFAULT NULL,
  `beneficio_fotodep` int(4) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `centro`
--

INSERT INTO `centro` (`id`, `nombre`, `nombre_propietario`, `dni_propietario`, `telefono`, `localidad`, `direccion`, `correo`, `beneficio_facorp`, `beneficio_fotodep`) VALUES
(1, 'Pepita Pulgarcita', 'Antonio Mateo Garcia', '76853797g', 987654321, 'valencia', 'C/ curtidors 1', 'antonio@voreal.com', 20, 30),
(2, 'Carlos chulio peluqueros', 'carlos chulio', '58647965d', 908765432, 'cullera', 'c/ wadalupe 5', 'carlos@voreal.com', 20, 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
`id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `poblacion` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` int(9) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dni` varchar(9) DEFAULT NULL,
  `fecna` date DEFAULT NULL,
  `id_centro` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `nombre`, `poblacion`, `direccion`, `telefono`, `email`, `dni`, `fecna`, `id_centro`) VALUES
(1, 'Mari Carmen', 'valencia', 'Avda. san martin', 345657999, 'cliente@voreal.com', '12345678p', '1987-02-11', 1),
(2, 'Sujaila', 'valencia', 'avda. castellon', 123456789, 'null@voreal.com', '12345678o', '1994-02-10', 2),
(3, 'Raquel Emperatriz', 'Valencia', 'C/ castan tobenyas', 123456789, 'raquel@voreal.com', '12345678u', '1901-05-27', 1),
(4, 'Noelia', 'valencia', 'plza. reino', 987654321, 'noelia@voreal.com', '09876543a', '1983-07-12', 1),
(5, 'Ricardo', 'valencia', 'falla caminou', 987654321, 'richard@voreal.com', '67854353g', '1994-02-04', 2),
(6, 'Miguel Angel Giner', 'Valencia', 'c/ inventada', 758097646, 'inventado@voreal.com', '56758763q', '1977-11-28', 1),
(7, 'Pablo Cervera Martin', 'Alicante', 'plza. de alicante', 698734523, 'alicante@voreal.com', '57964797w', '1991-05-15', 2),
(8, 'Rodrigo Moreno', 'Lisboa', 'c/ de lisboa', 586359875, 'lisboa@voreal.com', '54986479s', '1988-05-15', 1),
(9, 'Jose Maria Pardo', 'Castellon', 'c/ de castellon', 348567845, 'castellon@voreal.com', '58964797f', '1985-05-15', 1),
(10, 'Sergio Gomis Garcia', 'Alzira', 'c/ de las mujeres', 587659832, 'sergio@voreal.com', '57654982o', '1993-05-15', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objeto`
--

CREATE TABLE IF NOT EXISTS `objeto` (
  `id` int(6) NOT NULL COMMENT 'ID Objeto',
  `descripcion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Descripción'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `objeto`
--

INSERT INTO `objeto` (`id`, `descripcion`) VALUES
(3, 'cliente'),
(15, 'objeto'),
(17, 'operacion'),
(20, 'permiso'),
(30, 'tipooperacion'),
(34, 'tipousuario'),
(35, 'usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operacion`
--

CREATE TABLE IF NOT EXISTS `operacion` (
`id` int(6) NOT NULL COMMENT 'ID Operación',
  `descripcion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Descripción',
  `id_objeto` int(6) DEFAULT NULL COMMENT 'ID Objeto',
  `id_tipooperacion` int(6) DEFAULT NULL COMMENT 'ID Tipo Operación'
) ENGINE=InnoDB AUTO_INCREMENT=454 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `operacion`
--

INSERT INTO `operacion` (`id`, `descripcion`, `id_objeto`, `id_tipooperacion`) VALUES
(1, 'get', 1, 1),
(2, 'getaggregateviewone', 1, 1),
(3, 'getprettycolumns', 1, 1),
(4, 'getcolumns', 1, 1),
(5, 'getpage', 1, 1),
(6, 'getpages', 1, 1),
(7, 'getregisters', 1, 1),
(8, 'getaggregateviewsome', 1, 1),
(9, 'remove', 1, 2),
(10, 'set', 1, 2),
(11, 'updateOne', 1, 2),
(23, 'get', 2, 1),
(24, 'getaggregateviewone', 2, 1),
(25, 'getprettycolumns', 2, 1),
(26, 'getcolumns', 2, 1),
(27, 'getpage', 2, 1),
(28, 'getpages', 2, 1),
(29, 'getregisters', 2, 1),
(30, 'getaggregateviewsome', 2, 1),
(31, 'remove', 2, 2),
(32, 'set', 2, 2),
(33, 'updateOne', 2, 2),
(34, 'get', 3, 1),
(35, 'getaggregateviewone', 3, 1),
(36, 'getprettycolumns', 3, 1),
(37, 'getcolumns', 3, 1),
(38, 'getpage', 3, 1),
(39, 'getpages', 3, 1),
(40, 'getregisters', 3, 1),
(41, 'getaggregateviewsome', 3, 1),
(42, 'remove', 3, 2),
(43, 'set', 3, 2),
(44, 'updateOne', 3, 2),
(45, 'get', 4, 1),
(46, 'getaggregateviewone', 4, 1),
(47, 'getprettycolumns', 4, 1),
(48, 'getcolumns', 4, 1),
(49, 'getpage', 4, 1),
(50, 'getpages', 4, 1),
(51, 'getregisters', 4, 1),
(52, 'getaggregateviewsome', 4, 1),
(53, 'remove', 4, 2),
(54, 'set', 4, 2),
(55, 'updateOne', 4, 2),
(56, 'get', 5, 1),
(57, 'getaggregateviewone', 5, 1),
(58, 'getprettycolumns', 5, 1),
(59, 'getcolumns', 5, 1),
(60, 'getpage', 5, 1),
(61, 'getpages', 5, 1),
(62, 'getregisters', 5, 1),
(63, 'getaggregateviewsome', 5, 1),
(64, 'remove', 5, 2),
(65, 'set', 5, 2),
(66, 'updateOne', 5, 2),
(67, 'get', 6, 1),
(68, 'getaggregateviewone', 6, 1),
(69, 'getprettycolumns', 6, 1),
(70, 'getcolumns', 6, 1),
(71, 'getpage', 6, 1),
(72, 'getpages', 6, 1),
(73, 'getregisters', 6, 1),
(74, 'getaggregateviewsome', 6, 1),
(75, 'remove', 6, 2),
(76, 'set', 6, 2),
(77, 'updateOne', 6, 2),
(78, 'get', 7, 1),
(79, 'getaggregateviewone', 7, 1),
(80, 'getprettycolumns', 7, 1),
(81, 'getcolumns', 7, 1),
(82, 'getpage', 7, 1),
(83, 'getpages', 7, 1),
(84, 'getregisters', 7, 1),
(85, 'getaggregateviewsome', 7, 1),
(86, 'remove', 7, 2),
(87, 'set', 7, 2),
(88, 'updateOne', 7, 2),
(89, 'get', 8, 1),
(90, 'getaggregateviewone', 8, 1),
(91, 'getprettycolumns', 8, 1),
(92, 'getcolumns', 8, 1),
(93, 'getpage', 8, 1),
(94, 'getpages', 8, 1),
(95, 'getregisters', 8, 1),
(96, 'getaggregateviewsome', 8, 1),
(97, 'remove', 8, 2),
(98, 'set', 8, 2),
(99, 'updateOne', 8, 2),
(100, 'get', 9, 1),
(101, 'getaggregateviewone', 9, 1),
(102, 'getprettycolumns', 9, 1),
(103, 'getcolumns', 9, 1),
(104, 'getpage', 9, 1),
(105, 'getpages', 9, 1),
(106, 'getregisters', 9, 1),
(107, 'getaggregateviewsome', 9, 1),
(108, 'remove', 9, 2),
(109, 'set', 9, 2),
(110, 'updateOne', 9, 2),
(111, 'get', 10, 1),
(112, 'getaggregateviewone', 10, 1),
(113, 'getprettycolumns', 10, 1),
(114, 'getcolumns', 10, 1),
(115, 'getpage', 10, 1),
(116, 'getpages', 10, 1),
(117, 'getregisters', 10, 1),
(118, 'getaggregateviewsome', 10, 1),
(119, 'remove', 10, 2),
(120, 'set', 10, 2),
(121, 'updateOne', 10, 2),
(122, 'get', 11, 1),
(123, 'getaggregateviewone', 11, 1),
(124, 'getprettycolumns', 11, 1),
(125, 'getcolumns', 11, 1),
(126, 'getpage', 11, 1),
(127, 'getpages', 11, 1),
(128, 'getregisters', 11, 1),
(129, 'getaggregateviewsome', 11, 1),
(130, 'remove', 11, 2),
(131, 'set', 11, 2),
(132, 'updateOne', 11, 2),
(133, 'get', 12, 1),
(134, 'getaggregateviewone', 12, 1),
(135, 'getprettycolumns', 12, 1),
(136, 'getcolumns', 12, 1),
(137, 'getpage', 12, 1),
(138, 'getpages', 12, 1),
(139, 'getregisters', 12, 1),
(140, 'getaggregateviewsome', 12, 1),
(141, 'remove', 12, 2),
(142, 'set', 12, 2),
(143, 'updateOne', 12, 2),
(144, 'get', 13, 1),
(145, 'getaggregateviewone', 13, 1),
(146, 'getprettycolumns', 13, 1),
(147, 'getcolumns', 13, 1),
(148, 'getpage', 13, 1),
(149, 'getpages', 13, 1),
(150, 'getregisters', 13, 1),
(151, 'getaggregateviewsome', 13, 1),
(152, 'remove', 13, 2),
(153, 'set', 13, 2),
(154, 'updateOne', 13, 2),
(155, 'get', 14, 1),
(156, 'getaggregateviewone', 14, 1),
(157, 'getprettycolumns', 14, 1),
(158, 'getcolumns', 14, 1),
(159, 'getpage', 14, 1),
(160, 'getpages', 14, 1),
(161, 'getregisters', 14, 1),
(162, 'getaggregateviewsome', 14, 1),
(163, 'remove', 14, 2),
(164, 'set', 14, 2),
(165, 'updateOne', 14, 2),
(166, 'get', 15, 1),
(167, 'getaggregateviewone', 15, 1),
(168, 'getprettycolumns', 15, 1),
(169, 'getcolumns', 15, 1),
(170, 'getpage', 15, 1),
(171, 'getpages', 15, 1),
(172, 'getregisters', 15, 1),
(173, 'getaggregateviewsome', 15, 1),
(174, 'remove', 15, 2),
(175, 'set', 15, 2),
(176, 'updateOne', 15, 2),
(177, 'get', 16, 1),
(178, 'getaggregateviewone', 16, 1),
(179, 'getprettycolumns', 16, 1),
(180, 'getcolumns', 16, 1),
(181, 'getpage', 16, 1),
(182, 'getpages', 16, 1),
(183, 'getregisters', 16, 1),
(184, 'getaggregateviewsome', 16, 1),
(185, 'remove', 16, 2),
(186, 'set', 16, 2),
(187, 'updateOne', 16, 2),
(188, 'get', 17, 1),
(189, 'getaggregateviewone', 17, 1),
(190, 'getprettycolumns', 17, 1),
(191, 'getcolumns', 17, 1),
(192, 'getpage', 17, 1),
(193, 'getpages', 17, 1),
(194, 'getregisters', 17, 1),
(195, 'getaggregateviewsome', 17, 1),
(196, 'remove', 17, 2),
(197, 'set', 17, 2),
(198, 'updateOne', 17, 2),
(199, 'get', 18, 1),
(200, 'getaggregateviewone', 18, 1),
(201, 'getprettycolumns', 18, 1),
(202, 'getcolumns', 18, 1),
(203, 'getpage', 18, 1),
(204, 'getpages', 18, 1),
(205, 'getregisters', 18, 1),
(206, 'getaggregateviewsome', 18, 1),
(207, 'remove', 18, 2),
(208, 'set', 18, 2),
(209, 'updateOne', 18, 2),
(210, 'get', 19, 1),
(211, 'getaggregateviewone', 19, 1),
(212, 'getprettycolumns', 19, 1),
(213, 'getcolumns', 19, 1),
(214, 'getpage', 19, 1),
(215, 'getpages', 19, 1),
(216, 'getregisters', 19, 1),
(217, 'getaggregateviewsome', 19, 1),
(218, 'remove', 19, 2),
(219, 'set', 19, 2),
(220, 'updateOne', 19, 2),
(221, 'get', 20, 1),
(222, 'getaggregateviewone', 20, 1),
(223, 'getprettycolumns', 20, 1),
(224, 'getcolumns', 20, 1),
(225, 'getpage', 20, 1),
(226, 'getpages', 20, 1),
(227, 'getregisters', 20, 1),
(228, 'getaggregateviewsome', 20, 1),
(229, 'remove', 20, 2),
(230, 'set', 20, 2),
(231, 'updateOne', 20, 2),
(232, 'get', 21, 1),
(233, 'getaggregateviewone', 21, 1),
(234, 'getprettycolumns', 21, 1),
(235, 'getcolumns', 21, 1),
(236, 'getpage', 21, 1),
(237, 'getpages', 21, 1),
(238, 'getregisters', 21, 1),
(239, 'getaggregateviewsome', 21, 1),
(240, 'remove', 21, 2),
(241, 'set', 21, 2),
(242, 'updateOne', 21, 2),
(243, 'get', 22, 1),
(244, 'getaggregateviewone', 22, 1),
(245, 'getprettycolumns', 22, 1),
(246, 'getcolumns', 22, 1),
(247, 'getpage', 22, 1),
(248, 'getpages', 22, 1),
(249, 'getregisters', 22, 1),
(250, 'getaggregateviewsome', 22, 1),
(251, 'remove', 22, 2),
(252, 'set', 22, 2),
(253, 'updateOne', 22, 2),
(254, 'get', 23, 1),
(255, 'getaggregateviewone', 23, 1),
(256, 'getprettycolumns', 23, 1),
(257, 'getcolumns', 23, 1),
(258, 'getpage', 23, 1),
(259, 'getpages', 23, 1),
(260, 'getregisters', 23, 1),
(261, 'getaggregateviewsome', 23, 1),
(262, 'remove', 23, 2),
(263, 'set', 23, 2),
(264, 'updateOne', 23, 2),
(265, 'get', 24, 1),
(266, 'getaggregateviewone', 24, 1),
(267, 'getprettycolumns', 24, 1),
(268, 'getcolumns', 24, 1),
(269, 'getpage', 24, 1),
(270, 'getpages', 24, 1),
(271, 'getregisters', 24, 1),
(272, 'getaggregateviewsome', 24, 1),
(273, 'remove', 24, 2),
(274, 'set', 24, 2),
(275, 'updateOne', 24, 2),
(276, 'get', 25, 1),
(277, 'getaggregateviewone', 25, 1),
(278, 'getprettycolumns', 25, 1),
(279, 'getcolumns', 25, 1),
(280, 'getpage', 25, 1),
(281, 'getpages', 25, 1),
(282, 'getregisters', 25, 1),
(283, 'getaggregateviewsome', 25, 1),
(284, 'remove', 25, 2),
(285, 'set', 25, 2),
(286, 'updateOne', 25, 2),
(287, 'get', 26, 1),
(288, 'getaggregateviewone', 26, 1),
(289, 'getprettycolumns', 26, 1),
(290, 'getcolumns', 26, 1),
(291, 'getpage', 26, 1),
(292, 'getpages', 26, 1),
(293, 'getregisters', 26, 1),
(294, 'getaggregateviewsome', 26, 1),
(295, 'remove', 26, 2),
(296, 'set', 26, 2),
(297, 'updateOne', 26, 2),
(298, 'get', 27, 1),
(299, 'getaggregateviewone', 27, 1),
(300, 'getprettycolumns', 27, 1),
(301, 'getcolumns', 27, 1),
(302, 'getpage', 27, 1),
(303, 'getpages', 27, 1),
(304, 'getregisters', 27, 1),
(305, 'getaggregateviewsome', 27, 1),
(306, 'remove', 27, 2),
(307, 'set', 27, 2),
(308, 'updateOne', 27, 2),
(309, 'get', 28, 1),
(310, 'getaggregateviewone', 28, 1),
(311, 'getprettycolumns', 28, 1),
(312, 'getcolumns', 28, 1),
(313, 'getpage', 28, 1),
(314, 'getpages', 28, 1),
(315, 'getregisters', 28, 1),
(316, 'getaggregateviewsome', 28, 1),
(317, 'remove', 28, 2),
(318, 'set', 28, 2),
(319, 'updateOne', 28, 2),
(320, 'get', 29, 1),
(321, 'getaggregateviewone', 29, 1),
(322, 'getprettycolumns', 29, 1),
(323, 'getcolumns', 29, 1),
(324, 'getpage', 29, 1),
(325, 'getpages', 29, 1),
(326, 'getregisters', 29, 1),
(327, 'getaggregateviewsome', 29, 1),
(328, 'remove', 29, 2),
(329, 'set', 29, 2),
(330, 'updateOne', 29, 2),
(331, 'get', 30, 1),
(332, 'getaggregateviewone', 30, 1),
(333, 'getprettycolumns', 30, 1),
(334, 'getcolumns', 30, 1),
(335, 'getpage', 30, 1),
(336, 'getpages', 30, 1),
(337, 'getregisters', 30, 1),
(338, 'getaggregateviewsome', 30, 1),
(339, 'remove', 30, 2),
(340, 'set', 30, 2),
(341, 'updateOne', 30, 2),
(342, 'get', 31, 1),
(343, 'getaggregateviewone', 31, 1),
(344, 'getprettycolumns', 31, 1),
(345, 'getcolumns', 31, 1),
(346, 'getpage', 31, 1),
(347, 'getpages', 31, 1),
(348, 'getregisters', 31, 1),
(349, 'getaggregateviewsome', 31, 1),
(350, 'remove', 31, 2),
(351, 'set', 31, 2),
(352, 'updateOne', 31, 2),
(353, 'get', 32, 1),
(354, 'getaggregateviewone', 32, 1),
(355, 'getprettycolumns', 32, 1),
(356, 'getcolumns', 32, 1),
(357, 'getpage', 32, 1),
(358, 'getpages', 32, 1),
(359, 'getregisters', 32, 1),
(360, 'getaggregateviewsome', 32, 1),
(361, 'remove', 32, 2),
(362, 'set', 32, 2),
(363, 'updateOne', 32, 2),
(364, 'get', 33, 1),
(365, 'getaggregateviewone', 33, 1),
(366, 'getprettycolumns', 33, 1),
(367, 'getcolumns', 33, 1),
(368, 'getpage', 33, 1),
(369, 'getpages', 33, 1),
(370, 'getregisters', 33, 1),
(371, 'getaggregateviewsome', 33, 1),
(372, 'remove', 33, 2),
(373, 'set', 33, 2),
(374, 'updateOne', 33, 2),
(375, 'get', 34, 1),
(376, 'getaggregateviewone', 34, 1),
(377, 'getprettycolumns', 34, 1),
(378, 'getcolumns', 34, 1),
(379, 'getpage', 34, 1),
(380, 'getpages', 34, 1),
(381, 'getregisters', 34, 1),
(382, 'getaggregateviewsome', 34, 1),
(383, 'remove', 34, 2),
(384, 'set', 34, 2),
(385, 'updateOne', 34, 2),
(386, 'get', 35, 1),
(387, 'getaggregateviewone', 35, 1),
(388, 'getprettycolumns', 35, 1),
(389, 'getcolumns', 35, 1),
(390, 'getpage', 35, 1),
(391, 'getpages', 35, 1),
(392, 'getregisters', 35, 1),
(393, 'getaggregateviewsome', 35, 1),
(394, 'remove', 35, 2),
(395, 'set', 35, 2),
(396, 'updateOne', 35, 2),
(397, 'get', 36, 1),
(398, 'getaggregateviewone', 36, 1),
(399, 'getprettycolumns', 36, 1),
(400, 'getcolumns', 36, 1),
(401, 'getpage', 36, 1),
(402, 'getpages', 36, 1),
(403, 'getregisters', 36, 1),
(404, 'getaggregateviewsome', 36, 1),
(405, 'remove', 36, 2),
(406, 'set', 36, 2),
(407, 'updateOne', 36, 2),
(408, 'get', 37, 1),
(409, 'getaggregateviewone', 37, 1),
(410, 'getprettycolumns', 37, 1),
(411, 'getcolumns', 37, 1),
(412, 'getpage', 37, 1),
(413, 'getpages', 37, 1),
(414, 'getregisters', 37, 1),
(415, 'getaggregateviewsome', 37, 1),
(416, 'remove', 37, 2),
(417, 'set', 37, 2),
(418, 'updateOne', 37, 2),
(419, 'get', 38, 1),
(420, 'getaggregateviewone', 38, 1),
(421, 'getprettycolumns', 38, 1),
(422, 'getcolumns', 38, 1),
(423, 'getpage', 38, 1),
(424, 'getpages', 38, 1),
(425, 'getregisters', 38, 1),
(426, 'getaggregateviewsome', 38, 1),
(427, 'remove', 38, 2),
(428, 'set', 38, 2),
(429, 'updateOne', 38, 2),
(430, 'get', 39, 1),
(431, 'getaggregateviewone', 39, 1),
(432, 'getprettycolumns', 39, 1),
(433, 'getcolumns', 39, 1),
(434, 'getpage', 39, 1),
(435, 'getpages', 39, 1),
(436, 'getregisters', 39, 1),
(437, 'getaggregateviewsome', 39, 1),
(438, 'remove', 39, 2),
(439, 'set', 39, 2),
(440, 'updateOne', 39, 2),
(441, 'get', 40, 1),
(442, 'getaggregateviewone', 40, 1),
(443, 'getprettycolumns', 40, 1),
(444, 'getcolumns', 40, 1),
(445, 'getpage', 40, 1),
(446, 'getpages', 40, 1),
(447, 'getregisters', 40, 1),
(448, 'getaggregateviewsome', 40, 1),
(449, 'remove', 40, 2),
(450, 'set', 40, 2),
(451, 'updateOne', 40, 2),
(452, 'getAllPreguntas', 6, 1),
(453, 'setForm', 27, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE IF NOT EXISTS `permiso` (
`id` int(6) NOT NULL COMMENT 'ID Permiso',
  `id_tipousuario` int(6) DEFAULT NULL COMMENT 'ID Tipo de usuario',
  `id_tipooperacion` int(6) DEFAULT NULL COMMENT 'ID Tipo Operación',
  `permitido` tinyint(1) DEFAULT NULL COMMENT 'Permitido'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `permiso`
--

INSERT INTO `permiso` (`id`, `id_tipousuario`, `id_tipooperacion`, `permitido`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 2, 1, 1),
(4, 2, 2, 1),
(5, 3, 1, 1),
(6, 2, 2, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguimiento`
--

CREATE TABLE IF NOT EXISTS `seguimiento` (
`id` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `tratamiento` varchar(255) DEFAULT NULL,
  `precio` double(4,2) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `seguimiento`
--

INSERT INTO `seguimiento` (`id`, `id_cliente`, `fecha`, `tratamiento`, `precio`) VALUES
(1, 1, '2015-01-03', '30jc Pecho 28jc filtro 640', 30.00),
(2, 1, '2015-01-04', '30jc Pecho 28jc filtro 640', 30.00),
(3, 1, '2015-02-06', '30jc Pecho 28jc filtro 640', 30.00),
(4, 1, '2015-01-07', '30jc Pecho 28jc filtro 640', 30.00),
(5, 1, '2015-01-10', '30jc Pecho 28jc filtro 640', 30.00),
(6, 1, '2015-01-11', '30jc Pecho 28jc filtro 640', 30.00),
(7, 1, '2015-01-15', '30jc Pecho 28jc filtro 640', 30.00),
(8, 1, '2015-01-27', '30jc Pecho 28jc filtro 640', 30.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipooperacion`
--

CREATE TABLE IF NOT EXISTS `tipooperacion` (
`id` int(6) NOT NULL COMMENT 'Identificador',
  `descripcion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Descripción'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipooperacion`
--

INSERT INTO `tipooperacion` (`id`, `descripcion`) VALUES
(1, 'lectura'),
(2, 'escritura'),
(3, 'alta'),
(4, 'modificación'),
(5, 'borrado'),
(6, 'rellenar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE IF NOT EXISTS `tipousuario` (
`id` int(11) NOT NULL COMMENT 'Identificador',
  `descripcion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Descripción'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`id`, `descripcion`) VALUES
(1, 'Administrador'),
(2, 'Trabajador'),
(3, 'Centro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tratamiento`
--

CREATE TABLE IF NOT EXISTS `tratamiento` (
`id` int(11) NOT NULL,
  `tipo_tratamiento` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `precio_mujer` double(4,2) DEFAULT NULL,
  `precio_hombre` double(4,2) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tratamiento`
--

INSERT INTO `tratamiento` (`id`, `tipo_tratamiento`, `descripcion`, `precio_mujer`, `precio_hombre`) VALUES
(1, 'Radiofrecuencia', 'Lifting facial', 35.00, 35.00),
(2, 'Radiofrecuencia', 'Bio-facial', 35.00, 35.00),
(3, 'Radiofrecuencia', 'Bio-corporal', 35.00, 35.00),
(4, 'Radiofrecuencia', 'Cavitacion', 35.00, 35.00),
(5, 'Radiofrecuencia', 'Radiofrecuencia Bipolar', 35.00, 35.00),
(6, 'Radiofrecuencia', 'Vacuumterapia', 35.00, 35.00),
(7, 'Radiofrecuencia', 'Presoterapia', 19.00, 19.00),
(8, 'Radiofrecuencia', 'Presoterapia + Cavitacion', 45.00, 45.00),
(9, 'Radiofrecuencia', 'Bono 10 sesiones Presoterapia', 140.00, 140.00),
(10, 'Fotodepilacion IPL', 'Axilas', 20.00, 25.00),
(11, 'Fotodepilacion IPL', 'Axilas y Puvis', 55.00, NULL),
(12, 'Fotodepilacion IPL', 'Ingles', 20.00, 25.00),
(13, 'Fotodepilacion IPL', 'Ingles Brasileñas', 30.00, 35.00),
(14, 'Fotodepilacion IPL', 'Puvis', 45.00, NULL),
(15, 'Fotodepilacion IPL', 'Linea Perianal', 20.00, 25.00),
(16, 'Fotodepilacion IPL', 'Ingles + Axilas', 35.00, 40.00),
(17, 'Fotodepilacion IPL', 'Ingles Brasileñas + Axilas', 35.00, 40.00),
(18, 'Fotodepilacion IPL', 'Piernas Completas', 80.00, 90.00),
(19, 'Fotodepilacion IPL', 'Medias Piernas', 50.00, 60.00),
(20, 'Radiofrecuencia', 'Bioestimulacion', 25.00, 25.00),
(21, 'Fotodepilacion IPL', 'Brazos', 30.00, 40.00),
(22, 'Fotodepilacion IPL', 'Brazos + Manos', 35.00, 45.00),
(23, 'Fotodepilacion IPL', 'Pomulos', 10.00, 10.00),
(24, 'Fotodepilacion IPL', 'Labio', 10.00, NULL),
(25, 'Fotodepilacion IPL', 'Menton', 10.00, NULL),
(26, 'Fotodepilacion IPL', 'Lumbar', 20.00, 30.00),
(27, 'Fotodepilacion IPL', 'Pecho', 40.00, 50.00),
(28, 'Fotodepilacion IPL', 'Abdomen', 30.00, 40.00),
(29, 'Fotodepilacion IPL', 'Espalda', NULL, 50.00),
(30, 'Fotodepilacion IPL', 'Hombros', NULL, 40.00),
(31, 'Fotodepilacion IPL', 'Patillas', 15.00, 15.00),
(32, 'Fotodepilacion IPL', 'Facial Completo', 35.00, 40.00),
(33, 'Fotodepilacion IPL', 'Entrecejo', 6.00, 6.00),
(34, 'Fotodepilacion IPL', 'Barba', NULL, 30.00),
(35, 'Fotodepilacion IPL', 'Manos', 20.00, 25.00),
(36, 'Fotodepilacion IPL', 'Linea Alba', 15.00, 20.00),
(37, 'Fotodepilacion IPL', 'Gluteos', 35.00, 45.00),
(38, 'Fotodepilacion IPL', 'Pies', 20.00, 25.00),
(39, 'Fotodepilacion IPL', 'Foto rejuvenecimiento IPL', 35.00, 35.00),
(40, 'Fotodepilacion IPL', 'Tratamiento Acne IPL', 35.00, 35.00),
(41, 'Fotodepilacion IPL', 'Tratamiento Manchas IPL', 35.00, 35.00),
(42, 'Fotodepilacion IPL', 'Cuperosis IPL (Capilares)', 35.00, 35.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
`id` int(6) NOT NULL COMMENT 'Identificador',
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Nombre de usuario',
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Contraseña',
  `nombreComp` text COLLATE utf8_unicode_ci,
  `dni` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_tipousuario` int(11) DEFAULT NULL COMMENT 'Tipo de usuario',
  `skin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Plantilla'
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `login`, `password`, `nombreComp`, `dni`, `id_tipousuario`, `skin`) VALUES
(1, 'pepe', 'pepe', 'Pepe Garcia Molino', '56776676t', 2, 'main'),
(3, 'maria', 'maria', 'Maria Fuster Canyadas', '44353334o', 3, 'main'),
(11, 'rafael', 'rafael', 'Rafael Lopez Giner', '76977787j', 1, 'main');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `centro`
--
ALTER TABLE `centro`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `operacion`
--
ALTER TABLE `operacion`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipooperacion`
--
ALTER TABLE `tipooperacion`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tratamiento`
--
ALTER TABLE `tratamiento`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `centro`
--
ALTER TABLE `centro`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `operacion`
--
ALTER TABLE `operacion`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'ID Operación',AUTO_INCREMENT=454;
--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'ID Permiso',AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `tipooperacion`
--
ALTER TABLE `tipooperacion`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tratamiento`
--
ALTER TABLE `tratamiento`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
