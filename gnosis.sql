-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-01-2023 a las 22:29:32
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gnosis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `parrafouno` longtext COLLATE utf8mb4_spanish2_ci NOT NULL,
  `imagendos` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `parrafodos` longtext COLLATE utf8mb4_spanish2_ci NOT NULL,
  `imagentres` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `parrafotres` longtext COLLATE utf8mb4_spanish2_ci NOT NULL,
  `parrafocuatro` longtext COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursillistas`
--

CREATE TABLE `cursillistas` (
  `id` int(11) NOT NULL,
  `rama` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `lumisial` varchar(255) NOT NULL,
  `cedula` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `nombrecurso` varchar(255) NOT NULL,
  `descripcion` longtext NOT NULL,
  `formulario` longtext NOT NULL,
  `fecha` varchar(255) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id`, `titulo`, `imagen`, `nombrecurso`, `descripcion`, `formulario`, `fecha`) VALUES
(1, 'Curso De Misioneros Nacionales 2022', 'archivos/samael grava.png', 'curso/misioneros/nacionales/lumendelumine', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '\r\n<h1 class=\"formularioCursoM\">\r\n	<form id=\"fmCurso\" method=\"POST\" enctype=\"multipart/form-data\" onsubmit=\"return agregarCursoNuevo()\" autocomplete=\"off\">\r\n	    <h2>Curso de Misioneros</h2>\r\n	    <input type=\"text\" name=\"estado\" placeholder=\"Estado\" autocomplete=\"off\">\r\n	    <input type=\"text\" name=\"lumisial\" placeholder=\"Lumisial\" autocomplete=\"off\">\r\n	    <input type=\"text\" name=\"rama\" placeholder=\"Rama\" autocomplete=\"off\">\r\n	    <input type=\"text\" name=\"cedula\" placeholder=\"Cedula\" autocomplete=\"off\">\r\n	    <input type=\"text\" name=\"nombre\" placeholder=\"Nombre\" autocomplete=\"off\">\r\n	    <input type=\"text\" name=\"apellido\" placeholder=\"Apellido\" autocomplete=\"off\">\r\n	    <input type=\"email\" name=\"email\" placeholder=\"Email\" autocomplete=\"off\">\r\n	    <input type=\"phone\" name=\"telefono\" placeholder=\"Telefono\" autocomplete=\"off\">\r\n	    <input type=\"file\" name=\"foto\" >\r\n	    <input type=\"submit\" value=\"REGISTRARME\">\r\n	</form>\r\n\r\n	</h1>\r\n	', '2022-02-27 16:52:59'),
(2, 'Curso de Instructores Locales Caracas', 'archivos/samael cortado.jpg', 'curso/instructores/regional/caracas/parvatty', '\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '\r\n<h1 class=\"formularioCursoI\">\r\n	<form id=\"fmCurso\" method=\"POST\" enctype=\"multipart/form-data\" onsubmit=\"return agregarCursoNuevo()\" autocomplete=\"off\">\r\n	    <h2>Curso de Instructores</h2>	    \r\n	    <input type=\"text\" name=\"estado\" placeholder=\"Estado\" autocomplete=\"off\">\r\n	    <input type=\"text\" name=\"lumisial\" placeholder=\"Lumisial\" autocomplete=\"off\">\r\n	    <input type=\"text\" name=\"rama\" placeholder=\"Rama\" autocomplete=\"off\">\r\n	    <input type=\"text\" name=\"cedula\" placeholder=\"Cedula\" autocomplete=\"off\">\r\n	    <input type=\"text\" name=\"nombre\" placeholder=\"Nombre\" autocomplete=\"off\">\r\n	    <input type=\"text\" name=\"apellido\" placeholder=\"Apellido\" autocomplete=\"off\">\r\n	    <input type=\"email\" name=\"email\" placeholder=\"Email\" autocomplete=\"off\">\r\n	    <input type=\"phone\" name=\"telefono\" placeholder=\"Telefono\" autocomplete=\"off\">\r\n	    <input type=\"file\" name=\"foto\" >\r\n	    <input type=\"submit\" value=\"REGISTRARME\">\r\n	</form>\r\n\r\n	</h1>\r\n	', '2022-02-27 16:56:19'),
(3, 'Curso Promotores de Ageacac Nacional', 'archivos/petronila.jpg', 'curso/ageacac/nacional/academialacksmidaimon', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '\r\n<h1 class=\"formularioCursoA\">\r\n	<form id=\"fmCurso\" method=\"POST\" enctype=\"multipart/form-data\" onsubmit=\"return agregarCursoNuevo()\" autocomplete=\"off\">\r\n	    <h2>Curso de Ageacac</h2>\r\n	    <input type=\"text\" name=\"estado\" placeholder=\"Estado\" autocomplete=\"off\">\r\n	    <input type=\"text\" name=\"lumisial\" placeholder=\"Lumisial\" autocomplete=\"off\">\r\n	    <input type=\"text\" name=\"rama\" placeholder=\"Rama\" autocomplete=\"off\">\r\n	    <input type=\"text\" name=\"cedula\" placeholder=\"Cedula\" autocomplete=\"off\">\r\n	    <input type=\"text\" name=\"nombre\" placeholder=\"Nombre\" autocomplete=\"off\">\r\n	    <input type=\"text\" name=\"apellido\" placeholder=\"Apellido\" autocomplete=\"off\">\r\n	    <input type=\"email\" name=\"email\" placeholder=\"Email\" autocomplete=\"off\">\r\n	    <input type=\"phone\" name=\"telefono\" placeholder=\"Telefono\" autocomplete=\"off\">\r\n	    <input type=\"file\" name=\"foto\" >\r\n	    <input type=\"submit\" value=\"REGISTRARME\">\r\n	</form>\r\n\r\n	</h1>\r\n	', '2022-02-27 17:00:06'),
(4, 'Curso de Promotores de Juventudes Gnosticas', 'archivos/moria.jpg', 'curso/juventudes/nacional/academiaversalles', '\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '\r\n<h1 class=\"formularioCursoJ\">\r\n	<form id=\"fmCurso\" method=\"POST\" enctype=\"multipart/form-data\" onsubmit=\"return agregarCursoNuevo()\" autocomplete=\"off\">\r\n	    <h2>Curso de Juventudes</h2>\r\n	    <input type=\"text\" name=\"estado\" placeholder=\"Estado\" autocomplete=\"off\">\r\n	    <input type=\"text\" name=\"lumisial\" placeholder=\"Lumisial\" autocomplete=\"off\">\r\n	    <input type=\"text\" name=\"rama\" placeholder=\"Rama\" autocomplete=\"off\">\r\n	    <input type=\"text\" name=\"cedula\" placeholder=\"Cedula\" autocomplete=\"off\">\r\n	    <input type=\"text\" name=\"nombre\" placeholder=\"Nombre\" autocomplete=\"off\">\r\n	    <input type=\"text\" name=\"apellido\" placeholder=\"Apellido\" autocomplete=\"off\">\r\n	    <input type=\"email\" name=\"email\" placeholder=\"Email\" autocomplete=\"off\">\r\n	    <input type=\"phone\" name=\"telefono\" placeholder=\"Telefono\" autocomplete=\"off\">\r\n	    <input type=\"file\" name=\"foto\" >\r\n	    <input type=\"submit\" value=\"REGISTRARME\">\r\n	</form>\r\n\r\n	</h1>\r\n	', '2022-02-27 17:02:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentos`
--

CREATE TABLE `documentos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `tipo` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `ruta` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `autor` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `rama` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `cargo` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `fecha` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `documentos`
--

INSERT INTO `documentos` (`id`, `nombre`, `tipo`, `ruta`, `autor`, `rama`, `cargo`, `fecha`) VALUES
(1, 'anillo-pentagrama-1x1.jpg', 'jpg', 'archivos/anillo-pentagrama-1x1.jpg', 'CarlaM', 'ENSEÑANZA', 'MISIONERO', '2021-10-20 12:48:32'),
(2, 'anillo-pentagrama-1x1-dos.jpg', 'jpg', 'archivos/anillo-pentagrama-1x1-dos.jpg', 'CarlaM', 'ENSEÑANZA', 'MISIONERO', '2021-10-20 12:48:32'),
(3, 'anillo-pentagrama-1x1-tres.jpg', 'jpg', 'archivos/anillo-pentagrama-1x1-tres.jpg', 'CarlaM', 'ENSEÑANZA', 'MISIONERO', '2021-10-20 12:52:21'),
(4, 'modelo-para-fondo-tres.jpg', 'jpg', 'archivos/modelo-para-fondo-tres.jpg', 'CarlaM', 'ENSEÑANZA', 'MISIONERO', '2021-10-20 12:52:22'),
(5, 'anillo-pentagrama-1x1-dos.jpg', 'jpg', 'archivos/anillo-pentagrama-1x1-dos.jpg', 'CarlaM', 'ENSEÑANZA', 'MISIONERO', '2021-10-22 11:03:34'),
(6, 'anillo-pentagrama-1x1-tres.jpg', 'jpg', 'archivos/anillo-pentagrama-1x1-tres.jpg', 'CarlaM', 'ENSEÑANZA', 'MISIONERO', '2021-10-22 11:03:34'),
(7, 'modelo-tres.jpg', 'jpg', 'archivos/modelo-tres.jpg', 'CarlaM', 'ENSEÑANZA', 'MISIONERO', '2021-10-22 11:11:44'),
(8, 'modelo-uno.jpg', 'jpg', 'archivos/modelo-uno.jpg', 'CarlaM', 'ENSEÑANZA', 'MISIONERO', '2021-10-22 11:11:44'),
(9, '788882312194plataforma web.pptx', 'pptx', 'archivos/788882312194plataforma web.pptx', 'CarlaM', 'ENSEÑANZA', 'MISIONERO', '2021-10-22 12:41:12'),
(10, '4933357616042007_Lexus_LS460.mp4', 'mp4', 'archivos/4933357616042007_Lexus_LS460.mp4', 'CarlaM', 'ENSEÑANZA', 'MISIONERO', '2021-10-22 12:41:13'),
(12, 'IMG 20210625 102401.jpg', 'jpg', 'archivos/IMG 20210625 102401.jpg', 'CarlaM', 'ENSEÑANZA', 'MISIONERO', '2021-10-22 15:03:17'),
(13, 'IMG 20210625 102415.jpg', 'jpg', 'archivos/IMG 20210625 102415.jpg', 'CarlaM', 'ENSEÑANZA', 'MISIONERO', '2021-10-22 15:03:18'),
(14, '4TO LISTADO CAMARA AVANZADA.xlsx', 'xlsx', 'archivos/4TO LISTADO CAMARA AVANZADA.xlsx', 'Mari', 'AGEACAC', 'COORDINADOR AGEACAC', '2021-10-22 17:37:57'),
(15, 'BASE DE DATOS 1 [Autoguardado].pptx', 'pptx', 'archivos/BASE DE DATOS 1 [Autoguardado].pptx', 'Mari', 'AGEACAC', 'COORDINADOR AGEACAC', '2021-10-22 17:38:40'),
(16, 'gabriel.jpg', 'jpg', 'archivos/gabriel.jpg', 'Mari', 'AGEACAC', 'COORDINADOR AGEACAC', '2021-10-22 17:38:40'),
(17, 'INFORME DEPARTAMENTO DE TECNOTRONICA WEB.docx', 'docx', 'archivos/INFORME DEPARTAMENTO DE TECNOTRONICA WEB.docx', 'Mari', 'AGEACAC', 'COORDINADOR AGEACAC', '2021-10-22 17:38:40'),
(18, 'INFORME DEPARTAMENTO DE TECNOTRONICA WEB.pdf', 'pdf', 'archivos/INFORME DEPARTAMENTO DE TECNOTRONICA WEB.pdf', 'Mari', 'AGEACAC', 'COORDINADOR AGEACAC', '2021-10-22 17:38:40'),
(19, 'aron.jpg', 'jpg', 'archivos/aron.jpg', 'OsirisRojas', 'ENSEÑANZA', 'ADMIN', '2021-11-08 17:21:18'),
(20, 'aronfondo.jpg', 'jpg', 'archivos/aronfondo.jpg', 'OsirisRojas', 'ENSEÑANZA', 'ADMIN', '2021-11-08 17:21:18'),
(21, 'lakhsmi con flu.jpg', 'jpg', 'archivos/lakhsmi con flu.jpg', 'marta', 'ENSEÑANZA', 'INSTRUCTOR LOCAL', '2021-11-08 17:30:10'),
(22, 'lakshimisolo.png', 'png', 'archivos/lakshimisolo.png', 'marta', 'ENSEÑANZA', 'INSTRUCTOR LOCAL', '2021-11-08 17:30:10'),
(23, 'petronila.jpg', 'jpg', 'archivos/petronila.jpg', 'Gerson', 'ENSEÑANZA', 'OBISPO', '2021-11-08 17:32:08'),
(24, 'samael cortado.jpg', 'jpg', 'archivos/samael cortado.jpg', 'marcos', 'ENSEÑANZA', 'OBISPO', '2021-11-08 18:22:10'),
(25, 'lakhsmi con flu.jpg', 'jpg', 'archivos/lakhsmi con flu.jpg', 'Mari', 'AGEACAC', 'COORDINADOR AGEACAC', '2021-11-08 18:43:13'),
(26, 'lakshimisolo.png', 'png', 'archivos/lakshimisolo.png', 'Mari', 'AGEACAC', 'COORDINADOR AGEACAC', '2021-11-08 18:43:13'),
(27, '1969-Samael-Aun-Weor-Curso-Esoterico-de-las-Runas.pdf', 'pdf', 'archivos/1969-Samael-Aun-Weor-Curso-Esoterico-de-las-Runas.pdf', 'OsirisRojas', 'ENSEÑANZA', 'ADMIN', '2021-11-09 00:14:42'),
(28, '1978-Samael-Aun-Weor-Tarot-y-Kabala.pdf', 'pdf', 'archivos/1978-Samael-Aun-Weor-Tarot-y-Kabala.pdf', 'OsirisRojas', 'ENSEÑANZA', 'ADMIN', '2021-11-09 00:14:42'),
(29, 'antonio-banderas-blue-seduction-for-men.jpg', 'jpg', 'archivos/antonio-banderas-blue-seduction-for-men.jpg', 'OsirisRojas', 'ENSEÑANZA', 'ADMIN', '2022-01-24 11:08:05'),
(30, 'antonio-banderas-the-secret.jpg', 'jpg', 'archivos/antonio-banderas-the-secret.jpg', 'OsirisRojas', 'ENSEÑANZA', 'ADMIN', '2022-01-24 11:08:05'),
(31, 'britney-spears-fantasy-midnight.jpg', 'jpg', 'archivos/britney-spears-fantasy-midnight.jpg', 'OsirisRojas', 'ENSEÑANZA', 'ADMIN', '2022-01-24 11:08:19'),
(32, 'britney-spears-hidden-fantasy.jpg', 'jpg', 'archivos/britney-spears-hidden-fantasy.jpg', 'OsirisRojas', 'ENSEÑANZA', 'ADMIN', '2022-01-24 11:08:19'),
(33, 'britney-spears-violeta.jpg', 'jpg', 'archivos/britney-spears-violeta.jpg', 'OsirisRojas', 'ENSEÑANZA', 'ADMIN', '2022-01-24 11:08:19'),
(34, 'creed-1760.jpg', 'jpg', 'archivos/creed-1760.jpg', 'OsirisRojas', 'ENSEÑANZA', 'ADMIN', '2022-01-24 11:08:46'),
(35, 'creed-aventus-black.jpg', 'jpg', 'archivos/creed-aventus-black.jpg', 'OsirisRojas', 'ENSEÑANZA', 'ADMIN', '2022-01-24 11:08:46'),
(36, 'creed-eventus.jpg', 'jpg', 'archivos/creed-eventus.jpg', 'OsirisRojas', 'ENSEÑANZA', 'ADMIN', '2022-01-24 11:08:46'),
(37, 'creed-green-irish-tweed.jpg', 'jpg', 'archivos/creed-green-irish-tweed.jpg', 'OsirisRojas', 'ENSEÑANZA', 'ADMIN', '2022-01-24 11:08:46'),
(38, 'creed-millesime-imperial.jpg', 'jpg', 'archivos/creed-millesime-imperial.jpg', 'OsirisRojas', 'ENSEÑANZA', 'ADMIN', '2022-01-24 11:08:46'),
(39, 'creed-silver-mountain-water.jpg', 'jpg', 'archivos/creed-silver-mountain-water.jpg', 'OsirisRojas', 'ENSEÑANZA', 'ADMIN', '2022-01-24 11:08:46'),
(40, 'creed-viking.jpg', 'jpg', 'archivos/creed-viking.jpg', 'OsirisRojas', 'ENSEÑANZA', 'ADMIN', '2022-01-24 11:08:46'),
(41, 'creed-viking-yellow.jpg', 'jpg', 'archivos/creed-viking-yellow.jpg', 'OsirisRojas', 'ENSEÑANZA', 'ADMIN', '2022-01-24 11:08:46'),
(42, 'lakhsmi con flu.jpg', 'jpg', 'archivos/lakhsmi con flu.jpg', 'OsirisRojas', 'ENSEÑANZA', 'ADMIN', '2022-02-27 14:52:33'),
(43, 'lakshimisolo.png', 'png', 'archivos/lakshimisolo.png', 'OsirisRojas', 'ENSEÑANZA', 'ADMIN', '2022-02-27 14:52:34'),
(44, 'litelantes.jpg', 'jpg', 'archivos/litelantes.jpg', 'OsirisRojas', 'ENSEÑANZA', 'ADMIN', '2022-02-27 14:52:34'),
(45, 'liz minerva.jpg', 'jpg', 'archivos/liz minerva.jpg', 'OsirisRojas', 'ENSEÑANZA', 'ADMIN', '2022-02-27 14:52:34'),
(46, 'moria.jpg', 'jpg', 'archivos/moria.jpg', 'OsirisRojas', 'ENSEÑANZA', 'ADMIN', '2022-02-27 14:52:34'),
(47, 'petronila.jpg', 'jpg', 'archivos/petronila.jpg', 'OsirisRojas', 'ENSEÑANZA', 'ADMIN', '2022-02-27 14:52:34'),
(48, 'samael cortado.jpg', 'jpg', 'archivos/samael cortado.jpg', 'OsirisRojas', 'ENSEÑANZA', 'ADMIN', '2022-02-27 14:52:34'),
(49, 'samael grava.png', 'png', 'archivos/samael grava.png', 'OsirisRojas', 'ENSEÑANZA', 'ADMIN', '2022-02-27 14:52:34'),
(50, 'samael-solo.png', 'png', 'archivos/samael-solo.png', 'OsirisRojas', 'ENSEÑANZA', 'ADMIN', '2022-02-27 14:52:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entregamaterial`
--

CREATE TABLE `entregamaterial` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `post` longtext COLLATE utf8mb4_spanish2_ci NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `entregamaterial`
--

INSERT INTO `entregamaterial` (`id`, `titulo`, `post`, `fecha`) VALUES
(1, 'Prueba 173823', '\r\n<h1 class=\"titleCenterBig\">Probando de nuevo</h1>\r\n	', '2021-08-04'),
(2, 'doge', '\r\n<h1 class=\"titleLeftBig\">DOGUECOIN</h1>\r\n	', '2021-10-14'),
(3, 'Prueba tres entrega material', '\r\n<h1 class=\"titleLeftBig\">entega 3</h1>\r\n	\r\n<a href=\"archivos/788882312194plataforma web.pptx\" target=\"_blank\" download><img  class=\"capturarArchivo\" src=\"img/pp.png\"></a>\r\n	', '2021-10-23'),
(4, 'Biografia V.M ARON', '\r\n<h1 class=\"titleCenterBig\">Biografia V.M ARON</h1>\r\n	\r\n<p class=\"capturarTextJustificado\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n	\r\n<div class=\"capturarTextoImg\">	\r\n	<p class=\"text\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n	<a href=\"archivos/aronfondo.jpg\" target=\"_blank\" download><img alt=\"VM ARON\" title=\"VM ARON\" src=\"archivos/aronfondo.jpg\"></a>\r\n</div>\r\n	\r\n<p class=\"capturarTextJustificado\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n	', '2021-11-08'),
(5, 'CONFERCIA PUBLICA DICIEMBRE', '\r\n<h1 class=\"titleLeftBig\">CONFERCIA PUBLICA DICIEMBRE</h1>\r\n	\r\n<p class=\"capturarTextJustificado\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n	', '2021-11-09'),
(6, 'Biografía Samael Aun Weor', '\r\n<div class=\"capturarTextoImg\">	\r\n	<p class=\"text\"> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n	<a href=\"archivos/samael grava.png\" target=\"_blank\" download><img alt=\"Samael\" title=\"Samael\" src=\"archivos/samael grava.png\"></a>\r\n</div>\r\n	\r\n<p class=\"capturarTextJustificado\"> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n	\r\n<p class=\"capturarTextJustificado\"> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n	\r\n<p class=\"capturarTextJustificado\"> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n	', '2022-02-28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `img`
--

CREATE TABLE `img` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `autor` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `rama` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `cargo` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `archivo` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `descripcion` longtext COLLATE utf8mb4_spanish2_ci NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `img`
--

INSERT INTO `img` (`id`, `nombre`, `autor`, `rama`, `cargo`, `archivo`, `descripcion`, `fecha`) VALUES
(1, 'imagen 1 maestra luz alba', '45367722', 'ENSEÑANZA', 'SECRETARÍA DE ENSEÑANZA', 'imgblog/905584604981luzalba.jpg', 'entrevista vm luz alba', '2021-05-05'),
(2, 'samael', '53111234', 'TECNOTRONICA', 'COORDINADOR TECNOTRONICA', 'imgblog/176124000193samael cortado.jpg', 'foto a usar el mes de mayo', '2021-05-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informe`
--

CREATE TABLE `informe` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `cantidadpa` varchar(255) NOT NULL,
  `cantidadpf` varchar(255) NOT NULL,
  `observaciones` varchar(255) NOT NULL,
  `autor` varchar(255) NOT NULL,
  `rama` varchar(255) NOT NULL,
  `cargo` varchar(255) NOT NULL,
  `archivo` varchar(255) NOT NULL,
  `fecha` varchar(255) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `informe`
--

INSERT INTO `informe` (`id`, `titulo`, `cantidadpa`, `cantidadpf`, `observaciones`, `autor`, `rama`, `cargo`, `archivo`, `fecha`) VALUES
(1, 'informe octubre', '5', '1', 'Se realizo consagración de 4 personas', 'CarlaM', 'ENSEÑANZA', 'MISIONERO', 'informes/BASE DE DATOS 1 [Autoguardado].pptx', '2021-10-25 10:22:30'),
(2, 'prueba 3', '1', '1', 'rtfwfwref', 'CarlaM', 'ENSEÑANZA', 'MISIONERO', 'informes/4TO LISTADO CAMARA AVANZADA.xlsx', '2021-10-25 11:05:49'),
(3, 'prueba4', '3', '4', 'sfdgwsf', 'CarlaM', 'ENSEÑANZA', 'MISIONERO', 'informes/aaaaa.jpeg', '2021-10-25 11:06:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscritos`
--

CREATE TABLE `inscritos` (
  `id` int(11) NOT NULL,
  `cedula` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `diocesis` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `lumisial` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `instructor` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `tipo` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `tipocamara` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `estatus` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `acin` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `final` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `inscritos`
--

INSERT INTO `inscritos` (`id`, `cedula`, `nombre`, `apellido`, `email`, `telefono`, `estado`, `diocesis`, `lumisial`, `instructor`, `tipo`, `tipocamara`, `estatus`, `acin`, `final`, `fecha`) VALUES
(36, '55645512', 'Maria', 'jimenez', 'ji@gmail.com', '89456561156', 'DISTRITO CAPITAL', 'caracasmirandaoccidente', 'Parvatty', 'aida1119', 'PRESENCIAL', 'BASICA', 'ASIMILADO', 'ACTIVO', 'PROCESANDO', '2021-08-05'),
(38, '1551266', 'Ramon', 'Flores', 'Ramon@gmail.com', '96845615656', 'DISTRITO CAPITAL', 'caracasmirandaoccidente', 'Parvatty', 'ADMIN', 'PRESENCIAL', 'BASICA', 'ASIMILADO', 'ACTIVO', 'PROCESANDO', '2021-08-05'),
(40, '545666989', 'Carlos', 'Rodriguez', 'carlos@gmail.com', '56414561456', 'DISTRITO CAPITAL', 'caracasmirandaoccidente', 'Parvatty', 'ADMIN', 'PRESENCIAL', 'BASICA', 'ASIMILADO', 'ACTIVO', 'PROCESANDO', '2021-08-05'),
(41, '4185552', 'dario', 'Cardenas', 'cardenas@gmail.com', '414712', 'DISTRITO CAPITAL', 'caracasmirandaoccidente', 'Parvatty', 'ADMIN', 'PRESENCIAL', 'REINGRESO', 'ASIMILADO', 'ACTIVO', 'PROCESANDO', '2021-08-12'),
(43, '8263285', 'Pedro ', 'Magallanes', 'Pedro@gmail.com', '125188255215', 'DISTRITO CAPITAL', 'caracasmirandaoccidente', 'Estela Maris', 'ADMIN', 'PRESENCIAL', 'BASICA', 'ASIMILADO', 'ACTIVO', 'PROCESANDO', '2021-08-12'),
(44, '54725565', 'JIMENE', 'ZULDORFD', 'zuldorft@gmail.com', '18548423', 'DISTRITO CAPITAL', 'caracasmirandaoccidente', 'Estela Maris', 'ADMIN', 'PRESENCIAL', 'BASICA', 'ASIMILADO', 'ACTIVO', 'PROCESANDO', '2021-08-12'),
(46, '52456127', 'maria', 'prado', 'prados@gmail.com', '2456185', 'DISTRITO CAPITAL', 'caracasmirandaoccidente', 'Parvati', 'ADMIN', 'PRESENCIAL', 'BASICA', 'ASIMILADO', 'ACTIVO', 'PROCESANDO', '2021-10-15'),
(47, '18415615', 'marcos', 'morales', 'morale@gmail.com', '456156561', 'DISTRITO CAPITAL', 'caracasmirandaoccidente', 'Estela Maris', 'ADMIN', 'PRESENCIAL', 'BASICA', 'ASIMILADO', 'ACTIVO', 'PROCESANDO', '2021-11-08'),
(48, '98156165', 'maria', 'Giraldo', 'giral@gmail.com', '54156156', 'DISTRITO CAPITAL', 'caracasmirandaoccidente', 'Fenix', 'ADMIN', 'PRESENCIAL', 'BASICA', 'ASIMILADO', 'ACTIVO', 'PROCESANDO', '2021-11-08'),
(49, '51515125', 'Carlos ', 'Manzanare', 'manzanare@gmail.com', '6856561', 'DISTRITO CAPITAL', 'caracasmirandaoccidente', 'Estela Maris', 'ADMIN', 'PRESENCIAL', 'REINGRESO', 'ASIMILADO', 'ACTIVO', 'PROCESANDO', '2021-11-09'),
(50, '2332444', 'javier', 'ramirez', 'hfhfhf@gmail.com', '154562585', 'DISTRITO CAPITAL', 'caracasmirandaoccidente', 'parvati', 'aida1119', 'PRESENCIAL', 'BASICA', 'ASIMILADO', 'ACTIVO', 'PROCESANDO', '2022-09-29'),
(51, '654562626', 'gonzalo', 'armenidas', 'ar@gmail.com', '15526265', 'DISTRITO CAPITAL', 'caracasmirandaoccidente', 'parvati', 'aida1119', 'PRESENCIAL', 'REINGRESO', 'ASIMILADO', 'ACTIVO', 'PROCESANDO', '2022-09-30'),
(52, '654562626', 'gonzalo', 'armenidas', 'ar@gmail.com', '15526265', 'DISTRITO CAPITAL', 'caracasmirandaoriente', 'parvati', 'ADMIN', 'PRESENCIAL', 'BASICA', 'ASIMILADO', 'ACTIVO', 'PROCESANDO', '2022-09-30'),
(53, '5684551', 'karla', 'morga', 'morga@gmail.com', '54652626', 'DISTRITO CAPITAL', 'caracasmirandaoccidente', 'parvati', 'aida1119', 'PRESENCIAL', 'BASICA', 'ASIMILADO', 'ACTIVO', 'PROCESANDO', '2022-09-30'),
(54, '85215252', 'markos', 'ramirez', 'ra@gmail.com', '284812', 'DISTRITO CAPITAL', 'caracasmirandaoccidente', 'Parvati', 'aida1119', 'ONLINE', 'AULA', 'ASIMILADO', 'ACTIVO', 'PROCESANDO', '2022-09-30'),
(55, '5463634', 'ewrer', 'ertwet', 'wf@w.ed', '3424253523', 'DISTRITO CAPITAL', 'caracasmirandaoccidente', 'parvati', 'aida1119', 'ONLINE', 'AULA', 'ASIMILADO', 'ACTIVO', 'PROCESANDO', '2022-09-30'),
(56, '45345345', 'Emerson', 'Rangel', 'ewrfg@k.ll', '43253245', 'DISTRITO CAPITAL', 'caracasmirandaoccidente', 'Parvati', 'aida1119', 'ONLINE', 'AULA', 'ASIMILADO', 'ACTIVO', 'PROCESANDO', '2022-09-30'),
(57, '56345646', 'omar', 'rengifo', 'eryr@gmail.com', '365346436', 'DISTRITO CAPITAL', 'caracasmirandaoccidente', 'parvati', 'aida1119', 'ONLINE', 'AULA', 'ASIMILADO', 'ACTIVO', 'PROCESANDO', '2022-10-03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instructores`
--

CREATE TABLE `instructores` (
  `id` int(11) NOT NULL,
  `usuario` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `cedula` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `fechanacimiento` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `sexo` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `ecivil` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `hijos` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `nhijos` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `profesion` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `rama` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `cargo` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `ungido` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `tipoungido` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `diocesis` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `lumisial` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `estadosrecorridos` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `estatus` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `fecha` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `instructores`
--

INSERT INTO `instructores` (`id`, `usuario`, `cedula`, `fechanacimiento`, `sexo`, `ecivil`, `hijos`, `nhijos`, `profesion`, `telefono`, `nombre`, `apellido`, `rama`, `cargo`, `ungido`, `tipoungido`, `estado`, `diocesis`, `lumisial`, `estadosrecorridos`, `estatus`, `email`, `password`, `img`, `fecha`) VALUES
(1, 'admin', '19555566', '2022-08-19', 'MASCULINO', 'SOLTERO', 'NO', 'N/A', 'PROGRAMADOR', '04147018122', 'osiris', 'rojas', 'ENSEÑANZA', 'ADMIN', 'NO', 'N/A', 'DISTRITO CAPITAL', 'Caracas Oeste', 'Parvatti', 'trujillo, táchira, Caracas', 'INACTIVO', 'martinez.adonay33@gmail.com', 'add1b2fe10bee5f19a451a64ba5d9761b36a4d6c', 'img/fotosUsuarios/red.jpg', '2022-08-19 12:06:47'),
(2, 'galipan', '10513296', '1969-12-05', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'enrique', 'machiste', 'ENSEÑANZA', 'ENCARGADO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'DISTRITO CAPITAL', 'distritocapitalymirandaoriente', 'moria', 'caracas, miranda', 'ACTIVO', 'enriquemachiste@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'img/fotosUsuarios/red.jpg', '2022-08-26 14:44:26'),
(3, 'caracasmiranda', '12657854', '2022-08-26', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'carlos', 'martinez', 'ENSEÑANZA', 'COORDINADOR MISIONAL', 'PORCOMPLETAR', 'PORCOMPLETAR', 'DISTRITO CAPITAL', 'distritocapitalymirandaoriente', 'moria', 'caracas', 'ACTIVO', 'vvvdfdd@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'img/fotosUsuarios/red.jpg', '2022-08-26 14:59:10'),
(4, 'gnosis27', '5517672', '2022-08-27', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Francisco', 'Chacón', 'ENSEÑANZA', 'OBISPO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'GUÁRICO', 'Guárico', 'Chokmah', 'Guaira, Aragua, Carabobo', 'ACTIVO', 'servicioselectronicossub@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'img/fotosUsuarios/red.jpg', '2022-08-27 21:02:17'),
(5, 'roberto', '15315045', '1979-08-29', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'roberto', 'rojas', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'TÁCHIRA', 'Guárico', 'xochipilli', 'Lara, barinas occidente, Zulia, Táchira sur.', 'ACTIVO', 'zatori29@hotmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'img/fotosUsuarios/red.jpg', '2022-08-27 21:19:58'),
(6, 'Lorenlu', '14586007', '1987-08-30', 'FEMENINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Loren', 'Luque', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORTUGUESA', 'Portuguesa', 'Esculapio', 'Merida, trujillo, Sucre, Guarico, Caracas, Portuguesa', 'ACTIVO', 'quintaverdad@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'img/fotosUsuarios/red.jpg', '2022-08-28 18:57:37'),
(7, 'Gpirela52', '24241657', '1994-08-04', 'FEMENINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Genesis ', 'Pirela', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'LARA', 'Lara', 'Sophia', 'Apure, Amazonas, Guarico, Bolivar, Nueva Esparta y Lara', 'ACTIVO', 'gpirela52@gmail.com', '23427aa58d8f892d2165eeb4581c2c99f894fec2', 'img/fotosUsuarios/red.jpg', '2022-08-28 19:00:02'),
(8, 'Joseluis22', '21489349', '1990-10-02', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Jose Luis', 'Garcia', 'ENSEÑANZA', 'COORDINADOR MISIONAL', 'PORCOMPLETAR', 'PORCOMPLETAR', 'LARA', 'Lara', 'Sophia', 'Guarico, Apure, Bolivar, Nueva Esparta', 'ACTIVO', 'joseluis.ideos@gmail.com', 'cf48d73550a303724b63139b880ea5c7333edb00', 'img/fotosUsuarios/red.jpg', '2022-08-28 19:02:25'),
(9, 'zulay19', '11505036', '1974-04-14', 'FEMENINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'zulay c.', 'martinez n.', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'TÁCHIRA', 'tachira sur', 'logos michael', 'nueva esparta, templo de curacion de los teques', 'ACTIVO', 'zulay19martinez27@gmail.com', 'da50deb573e80fa4e075ed4bffc9bc41746d5c15', 'img/fotosUsuarios/red.jpg', '2022-08-28 19:07:22'),
(10, 'antonio27', '10147003', '1970-01-12', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'antonio r. ', 'guerrero p.', 'ENSEÑANZA', 'COORDINADOR MISIONAL', 'PORCOMPLETAR', 'PORCOMPLETAR', 'TÁCHIRA', 'tachira sur', 'logos michael', 'nueva esparta, templo de curacion de los teques', 'ACTIVO', 'yijabdul@gmail.com', '9d56fde7e49e90ad7b30c8b71e8d2b8b519e4f88', 'img/fotosUsuarios/red.jpg', '2022-08-28 19:10:21'),
(11, 'Gracielita', '10370630', '1969-09-04', 'FEMENINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Graciela', 'Perez', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'TÁCHIRA', 'Táchira Centro', 'Templo Lakhsmi Paraiso', 'Todos', 'INACTIVO', 'vasquezyosmarjose@hotmail.com', '54f9c5db018042c5624c67dc1de588c11164e3ac', 'img/fotosUsuarios/red.jpg', '2022-08-28 19:18:23'),
(12, 'joseV', '11272047', '1972-01-03', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'jose', 'Vasquez', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'TÁCHIRA', 'Táchira centro', 'Lakshmi', 'todos', 'INACTIVO', 'vasquezyosmarjose@hotmail.com', '54f9c5db018042c5624c67dc1de588c11164e3ac', 'img/fotosUsuarios/red.jpg', '2022-08-28 19:21:04'),
(13, 'aguilablanca', '17208662', '1955-08-04', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Domingo', 'Acero', 'ENSEÑANZA', 'COORDINADOR MISIONAL', 'PORCOMPLETAR', 'PORCOMPLETAR', 'SUCRE', 'Sucre', 'Atman', 'tachira,amazonas,apure,sucre', 'ACTIVO', 'domingoacero@homail.com', '553c26ed4580c28c0e3e8fdc54363f1fc5805f6e', 'img/fotosUsuarios/red.jpg', '2022-08-28 19:23:36'),
(14, 'yrfate21', '8436750', '1963-04-21', 'FEMENINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Olga', 'Castillo', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'SUCRE', 'Sucre', 'Atman', 'apure,amazonas,sucre', 'ACTIVO', 'olgatere63@gmail.com', '04c7392929688c75d76c39f4a6d7e864526d319e', 'img/fotosUsuarios/red.jpg', '2022-08-28 19:25:31'),
(15, 'josanz56', '4733591', '1957-01-12', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'jose gregorio', 'sanchez caceres', 'ENSEÑANZA', 'INSTRUCTOR LOCAL', 'PORCOMPLETAR', 'PORCOMPLETAR', 'TRUJILLO', 'Trujillo', 'Kutumi', 'trujillo,carabobo,anzoategui', 'ACTIVO', 'telecom.unefa.merida@gmail.com', 'abc41827af852de0c95da3b2bbad8ee4a765ccba', 'img/fotosUsuarios/red.jpg', '2022-08-28 19:28:56'),
(16, 'Azucena', '10284516', '1969-12-31', 'FEMENINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Azucena', 'Pirez', 'TECNOTRONICA', 'COORDINADOR TECNOTRONICA', 'PORCOMPLETAR', 'PORCOMPLETAR', 'MIRANDA', 'Miranda Oriente', 'Ehekatel', 'bolivar,miranda,barinas,portuguesa,cojedes,trujillo,anzoategui,sucre', 'ACTIVO', 'azucenapirez@gmail.com', 'f13a41f4e66a94d91d041bd57d921312a88cd3d7', 'img/fotosUsuarios/red.jpg', '2022-08-28 19:31:58'),
(17, 'luismision', '25712348', '1971-03-14', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'luis', 'Vady', 'ENSEÑANZA', 'OBISPO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'ZULIA', 'Zulia Oriente', 'esmun', 'yaracuy,carabobo,falcon,apure,cojedes,monagas,bolivar,aragua,sucre,zulia', 'ACTIVO', 'lisvadypaladines@gmail.com', 'c1518d88642b7c33c50bafcb487baf63c6bcdd1e', 'img/fotosUsuarios/red.jpg', '2022-08-28 19:35:48'),
(18, 'lourdesmision', '9473038', '1966-10-15', 'FEMENINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Lourdes', 'Labrador', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'ZULIA', 'Zulia Oriente', 'smun', 'falcon,zulia,apure,cojedes,monagas,bolivar,aragua,sucre,zulia', 'ACTIVO', 'lourdesencontacto19@gmail.com', '1c8160f3f9070653d2486d22492cf8d95d645afd', 'img/fotosUsuarios/red.jpg', '2022-08-28 19:40:28'),
(19, 'OscarG', '23686797', '1966-05-06', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Oscar', 'Gomez', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORTUGUESA', 'Portuguesa', 'sivananda', 'caracas,miranda,carabobo', 'ACTIVO', 'oscarprogreso1966@gmail.com', '6097e0d5d0be8600456103ec47ad59bb189c6201', 'img/fotosUsuarios/red.jpg', '2022-08-28 19:43:14'),
(20, 'lucreciaargentina', '84498352', '1953-04-02', 'FEMENINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Lucrecia Hilda', 'Gomez', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'TRUJILLO', 'Trujillo', 'Isis', 'trujillo,tachira', 'ACTIVO', 'lucreciahildagomez@gmail.com', '1332c725200ca330a677ba7c38487bda4c369468', 'img/fotosUsuarios/red.jpg', '2022-08-28 19:46:31'),
(21, 'americaP', '3847851', '1953-04-09', 'FEMENINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'America', 'Padilla', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'CARABOBO', 'Carabobo Oriente', 'Sardis', 'lara,merida,carabobo', 'ACTIVO', 'ameriblanco.19@hotmail.com', 'f715ffaf2c8294df43df3357c6a37f04b900fb06', 'img/fotosUsuarios/red.jpg', '2022-08-28 19:50:27'),
(22, 'edgaraparicio', '10054780', '1969-10-23', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Edgar ', 'Aparicio', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'BARINAS', 'Barinas Oriente', 'Chesed', 'barinas', 'ACTIVO', 'edgaraparicio@gmail.com', '73e96e48dd74d1eefede03fa9e5b4311291883b8', 'img/fotosUsuarios/red.jpg', '2022-08-28 19:52:58'),
(23, 'elenaT', '9566172', '1964-04-05', 'FEMENINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Elena ', 'Salazar', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORTUGUESA', 'Portuguesa', 'Kefren', 'apure,portuguesa', 'INACTIVO', 'sochipil572@gmail.com', '37e6fc50b8e530d616facf80161dd14cd14405d4', 'img/fotosUsuarios/red.jpg', '2022-08-28 20:44:30'),
(24, 'mmm11111', '4114779', '1954-01-03', 'FEMENINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Maria Milagros ', 'Medina', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'ARAGUA', 'Aragua', 'Criston', 'bolivar,cojedes,zulia,lara', 'INACTIVO', 'barbasmila@ymail.com', '0f85d55f03e24beebf29aa28050587a8e1db7eef', 'img/fotosUsuarios/red.jpg', '2022-08-28 20:48:30'),
(25, 'yasmiramejias', '12191884', '1973-03-14', 'FEMENINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Yasmira ', 'Mejias', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'TÁCHIRA', 'Táchira sur', 'Angel Metraton', 'tachira', 'ACTIVO', 'jose_misionero19@hotmail.com', '121c1423a1f3765399cc6f5bcde7c5e09f8b7733', 'img/fotosUsuarios/red.jpg', '2022-08-28 20:51:53'),
(26, 'caraballomisionero', '8879415', '1966-10-02', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Jose', 'Caraballo', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'TÁCHIRA', 'Táchira sur', 'Angel Metraton', 'tachira', 'ACTIVO', 'jose_misionero19@hotmail.com', '121c1423a1f3765399cc6f5bcde7c5e09f8b7733', 'img/fotosUsuarios/red.jpg', '2022-08-28 20:54:54'),
(27, 'Daniela19', '11716584', '1973-12-05', 'FEMENINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Daniela', 'Torrealba', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'APURE', 'Apure amazonas', 'Rakocsis', 'guarico,portuguesa,trujillo,lara,barinas,apure', 'ACTIVO', 'dani_torrealba@hotmail.com', '78f6805262ea565d8917316c9d2cedccac40e3a0', 'img/fotosUsuarios/red.jpg', '2022-08-28 20:58:04'),
(28, 'luisar19', '9365088', '1968-11-09', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Jose Luis', 'Araque Quintero', 'ENSEÑANZA', 'ENCARGADO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'APURE', 'Apure amazonas', 'Rakocsis', 'guarico,lara,barinas,portuguesa,trujillo,apure', 'ACTIVO', 'meliom68@hotmail.com', '78f6805262ea565d8917316c9d2cedccac40e3a0', 'img/fotosUsuarios/red.jpg', '2022-08-28 21:02:14'),
(29, 'ricardo974', '18828668', '1988-08-14', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Ricardo', 'Eshwar', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'BARINAS', 'Barinas Oriente', 'Chesed', 'cojedes,lara,tachira,merida,barinas', 'ACTIVO', 'eshwarinderjeet@gmail.com', 'ffd085ee7bb6f193809b37091b2971a36106015a', 'img/fotosUsuarios/red.jpg', '2022-08-28 21:05:49'),
(30, 'escudo$1', '7981388', '1966-05-11', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Nery', 'Castañeda', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'LARA', 'Lara', 'Sophia', 'anzoategui,lara', 'ACTIVO', 'nerycasta66@gmail.com', '6945ea14544937eb10e988ed42cad664b3cd30a4', 'img/fotosUsuarios/red.jpg', '2022-08-28 21:08:47'),
(31, 'mariela11', '23686795', '1969-06-24', 'FEMENINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Mariela', 'Lopez', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORTUGUESA', 'Portuguesa', 'Sivananda', 'miranda,caracas,carabobo,portuguesa', 'ACTIVO', 'oscarprogreso1966@gmail.com', '20c055667054dc2437d68024df87238a912590f4', 'img/fotosUsuarios/red.jpg', '2022-08-28 21:14:29'),
(32, 'nelsoneliolaya', '6019086', '1956-08-30', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Nelson', 'Olaya', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'TÁCHIRA', 'Táchira Centro', 'Moria', 'falcon,trujillo,zulia,merida,tachira,portuguesa', 'ACTIVO', 'store456@gmail.com', 'de4ccf39c1546762e95f0aa3d10db9c9eab80d1c', 'img/fotosUsuarios/red.jpg', '2022-08-28 21:19:04'),
(33, 'joseligio19', '5282321', '1956-03-17', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Jose Eligio', 'Perez Garcia', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'BARINAS', 'Barinas Occidente', 'El Tercer Logos', 'yaracuy,nueva esparta, portuguesa, falcon, lara, trujillo', 'INACTIVO', 'jepg@gmail.com', 'ed9cc7f011d5de92d229479affa4930e87e3f15c', 'img/fotosUsuarios/red.jpg', '2022-08-28 21:23:49'),
(34, 'gisbel19', '9988868', '1968-05-22', 'FEMENINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Belkis Gisella', 'Navea Roa', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'BARINAS', 'Barinas Occidente', 'El Tercer Logos', 'yaracuy,nueva esparta, falcon, portuguesa, trujillo, lara, cojedes', 'INACTIVO', 'gisbel19@yahoo.com', '0539514b2390464e84a03d1af4669e38fd23aa54', 'img/fotosUsuarios/red.jpg', '2022-08-28 21:27:56'),
(35, 'carlos19', '12760159', '1972-08-13', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Carlos  Alejandro', 'Niño Vivas', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'MÉRIDA', 'Merida Panamericana', 'Logos Michael', 'lara,anzoategui,cojedes,zulia,trujillo,falcon,merida', 'ACTIVO', 'carlomar240610@gmail.com', '506bcd8a53f0bb81ffbdd66b76a8940e61f5a4a9', 'img/fotosUsuarios/red.jpg', '2022-08-28 21:37:05'),
(36, 'Eduarda14', '9503397', '1964-02-10', 'FEMENINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Maria Eduarda', 'Faneite ', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'MÉRIDA', 'Merida Panamericana', 'Logos Michael', 'cojedes,tachira,lara,anzoategui,trujillo,zulia,falcon,merida', 'ACTIVO', 'carlomar240610@gmail.com', 'c340252730ccb7e92a36fa69771305073ea99449', 'img/fotosUsuarios/red.jpg', '2022-08-28 21:42:50'),
(37, 'registromisionaljair', '22313466', '1994-02-26', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Jair', 'Rivas', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'ANZOÁTEGUI', 'Anzoátegui', 'Osiris', 'guarico,monagas,anzoategui', 'ACTIVO', 'rivas_jair_1@hotmail.com', '8cb8a7c633d88c1558e743b8c91c47db49a99aee', 'img/fotosUsuarios/red.jpg', '2022-08-28 21:48:31'),
(38, 'aida1119', '5224596', '1961-01-26', 'FEMENINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Blanca Aida', 'Martínez Paredes', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'DISTRITO CAPITAL', 'caracasmirandaoccidente', 'Parvati', 'lara,caracas,barinas,trujillo,tachira', 'ACTIVO', 'aid.marti11@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'img/fotosUsuarios/red.jpg', '2022-08-28 22:15:13'),
(39, 'luismorenou', '11971640', '1971-07-29', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Luis', 'Moreno', 'ENSEÑANZA', 'COORDINADOR MISIONAL', 'PORCOMPLETAR', 'PORCOMPLETAR', 'TÁCHIRA', 'Táchira Norte', 'Anubis', 'tachira', 'ACTIVO', 'luismorenou@gmail.com', 'f851bf1a2cb478b59b016cbee87a1934d23c1de7', 'img/fotosUsuarios/169518157440291319fonfo_windows_red.jpg', '2022-08-29 07:19:46'),
(40, '31416epm', '12815679', '1974-08-23', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Elias', 'Perez Meneses', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'TÁCHIRA', 'Táchira Sur', 'Zachariel', 'zulia,bolivar,monagas,deltamacuro,tachira', 'INACTIVO', 'meneses.perez12@gmail.com', 'e978516dbc7703d28040bf7aef188236bcd603ba', 'img/fotosUsuarios/496227609136291322fonfo_windows_red.jpg', '2022-08-29 07:22:36'),
(41, 'emiro7', '87106613', '1968-09-10', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Luis Emiro', 'Peña Gerrero', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'MÉRIDA', 'Merida Metropolitana', 'Keter', 'bolivar,delta amacuro, anzoategui, amazonas, merida', 'ACTIVO', 'emiro8710@gmail.com', '2269ad9c03c799a751205c54c5cef58ba55264fa', 'img/fotosUsuarios/617852350802291325fonfo_windows_red.jpg', '2022-08-29 07:25:44'),
(42, 'anaelsalaguado', '3061448', '1953-07-26', 'FEMENINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Ana Elsa', 'Laguado Porras', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'ARAGUA', 'Aragua', 'Chesed', 'lara,yaracuy,trujillo,aragua', 'ACTIVO', 'anaelaguado@gmail.com', '99fd6892a5281a39baacfa100414a5782c6e2a63', 'img/fotosUsuarios/822811327136291329fonfo_windows_red.jpg', '2022-08-29 07:29:50'),
(43, 'albaluciaramirez', '9247131', '1964-11-20', 'FEMENINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Alba Lucia', 'Ramirez Andrade', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'TÁCHIRA', 'Táchira Centro', 'Templo VM Lakshmi', 'bolivar,barinas,tachira', 'ACTIVO', 'albaluciar32@gmail.com', 'a30fe2a0ef4c613d3caf7fbcff06cbb0c7832a93', 'img/fotosUsuarios/392038452522291337fonfo_windows_red.jpg', '2022-08-29 07:37:46'),
(44, 'nestorlopez', '5387061', '1958-11-23', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Nestor', 'Lopez', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'TÁCHIRA', 'Táchira Norte', 'Templo VM Lakshmi', 'bolivar,barinas,tachira', 'ACTIVO', 'nestorlopez14@gmail.com', 'a30fe2a0ef4c613d3caf7fbcff06cbb0c7832a93', 'img/fotosUsuarios/457687199765291340fonfo_windows_red.jpg', '2022-08-29 07:40:35'),
(45, 'alejandrotoro', '18236622', '1987-06-18', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Alejandro', 'Toro', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'CARABOBO', 'Carabobo Occidente', 'Metraton', 'carabobo', 'ACTIVO', 'alegeminisaca@gmail.com', 'ce7e1729307b33c60c87bf35d6bb4dc4b68003b4', 'img/fotosUsuarios/635663493938291343fonfo_windows_red.jpg', '2022-08-29 07:43:12'),
(46, 'marisave', '23825017', '1973-04-21', 'FEMENINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Maria Isabel', 'Vera de Rojas', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'BARINAS', 'Barinas Oriente', 'Quetzalcoatl', 'barinas', 'ACTIVO', 'veramariaisabel91@gmail.com', 'b5aec9379e5259a601237ba7bbb35c45fa0b831c', 'img/fotosUsuarios/844282394277291346fonfo_windows_red.jpg', '2022-08-29 07:46:02'),
(47, 'wilderrojas', '22683416', '1972-07-19', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Wilder Jesus', 'Rojas Arboleda', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'BARINAS', 'Barinas Oriente', 'Quetzalcoatl', 'tachira,barinas', 'ACTIVO', 'wilderrojasjr1972@gmail.com', 'b5aec9379e5259a601237ba7bbb35c45fa0b831c', 'img/fotosUsuarios/158820885220291348fonfo_windows_red.jpg', '2022-08-29 07:48:30'),
(48, 'carlos1927', '13448180', '1976-09-15', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Carlos Alfredo ', 'Dumith Peña', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'BARINAS', 'Barinas Occidente', 'Angel Aroch', 'merida,cojedes,yaracuy,tachira,zulia,trujillo,bolivar,aragua,barinas', 'ACTIVO', 'carlosdumith2014@gmail.com', '4fc82d604cedfc6fed7a3336702f7e3497d908a4', 'img/fotosUsuarios/424930587042291353fonfo_windows_red.jpg', '2022-08-29 07:53:10'),
(49, 'anshar11', '20879401', '1992-07-31', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Yohan Luis', 'Medina Colmenares', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'MÉRIDA', 'Merida Metropolitana', 'Kether', 'lara,monagas,delta amacuro,sucre, merida', 'ACTIVO', 'anshar007@hotmail.com', '33dafe062cd20d141b1dc639df5fbb8d00f4db06', 'img/fotosUsuarios/622990395238291356fonfo_windows_red.jpg', '2022-08-29 07:56:15'),
(50, 'neirafrancia', '21220447', '1993-06-14', 'FEMENINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Francia Eliana', 'Neira Bohorquez', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'MÉRIDA', 'Merida Metropolitana', 'Kether', 'lara,monagas,delta amacuro,sucre,merida', 'ACTIVO', 'neirafrancia@gmail.com', '2db274d8016ec847288d4b26c800f059e9496d6d', 'img/fotosUsuarios/851342714525291359fonfo_windows_red.jpg', '2022-08-29 07:59:10'),
(51, 'louis74', '12375504', '1974-12-24', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Hector Alfredo', 'Louis Suarez', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORTUGUESA', 'Portuguesa', 'Kefren', 'anzoategui,bolivar,trujillo,barinas,sucre,amazonas,monagas,cojedes,portuguesa, guarico,apure,merida,yaracuy', 'ACTIVO', 'hectorlouis165@gmail.com', '47297a5126965b097657e571ecd488483b34bb3a', 'img/fotosUsuarios/488724981626291407fonfo_windows_red.jpg', '2022-08-29 08:07:45'),
(52, 'Christianavea198', '15692911', '1982-04-10', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Christian Alberto ', 'Navea Ramirez', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORTUGUESA', 'Portuguesa', 'Kefren', 'Apure, Bolívar, Cojedes, Lara, Portuguesa', 'ACTIVO', 'Christianavea@gmail.com', '9dc3a10621908b1dd5dbb49b8d6afe8a21710bfb', 'img/fotosUsuarios/717487590624291414fonfo_windows_red.jpg', '2022-08-29 08:14:20'),
(53, 'IsgraelMuñoz1960', '8915373', '1960-08-15', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Isgrael Artuto', 'Muñoz Basanta', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'MÉRIDA', 'Merida Metropolitana', 'Stela Maris', 'Apure, Amazona, Bolívar, Nueva Esparta, Mérida', 'ACTIVO', 'Gnosisgrael@gmail.com', 'd95659914ed4c9321bc64903583390c5691791cc', 'img/fotosUsuarios/894051690970291421fonfo_windows_red.jpg', '2022-08-29 08:21:35'),
(54, 'eladiolovera', '7055254', '1959-02-19', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Eladio ', 'Lovera', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'CARABOBO', 'Carabobo Occidente', 'Academia Lakshmi Daimon', 'cojedes, carabobo', 'ACTIVO', 'eladio@hotmail.com', '1fb27bde2342b682a95981e272e3c0ab3e759d1f', 'img/fotosUsuarios/817557571942291429fonfo_windows_red.jpg', '2022-08-29 08:29:07'),
(55, 'mariaantonieta11', '5635345', '1961-03-14', 'FEMENINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Maria Antonieta', 'Guastella Andara', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'TRUJILLO', 'Trujillo', 'Kutumi', 'lara,trujillo', 'INACTIVO', 'N/A', '7c222fb2927d828af22f592134e8932480637c0d', 'img/fotosUsuarios/800184594807291432fonfo_windows_red.jpg', '2022-08-29 08:32:09'),
(56, 'ovalloslindarte', '5440880', '1967-06-10', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Fernando', 'Ovallos', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'CARABOBO', 'Carabobo Occidente', 'Academia Lakshmi Daimon', 'monagas,apure,tachira,yaracuy,guarico,lara,carabobo', 'ACTIVO', 'N/A', '7c222fb2927d828af22f592134e8932480637c0d', 'img/fotosUsuarios/834680048515291436fonfo_windows_red.jpg', '2022-08-29 08:36:45'),
(57, 'ernestojo', '9326681', '1965-12-25', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Ernesto Jose', 'Carrillo Franco', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'TÁCHIRA', 'Táchira Norte', 'Anubis', 'trujillo, lara,tachira', 'ACTIVO', 'N/A', '7c222fb2927d828af22f592134e8932480637c0d', 'img/fotosUsuarios/336555524675291439fonfo_windows_red.jpg', '2022-08-29 08:39:31'),
(58, 'yohrbelinaum', '19604852', '1990-01-03', 'FEMENINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Yohrbelin Yohnnay', 'Villalobos Villegas', 'ENSEÑANZA', 'INSTRUCTOR LOCAL', 'PORCOMPLETAR', 'PORCOMPLETAR', 'ARAGUA', 'Aragua', 'Angel Adonai', 'carabobo, aragua', 'ACTIVO', 'yohrbevillalobos@hotmail.com', '441d72aecb3bf225facdd8d8597a12b744551d59', 'img/fotosUsuarios/308322025277291446fonfo_windows_red.jpg', '2022-08-29 08:46:34'),
(59, 'facundoalirio', '83632426', '1969-11-27', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Facundo Alirio', 'Guerra Hernandez', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'TÁCHIRA', 'Táchira Norte', 'Anubis', 'anzoategui, merida, tachira', 'ACTIVO', 'aliriomusico_27@hotmail.com', '1432020448b7703738b2e73d7a9f5cd8e5d01582', 'img/fotosUsuarios/632208465716291450fonfo_windows_red.jpg', '2022-08-29 08:50:23'),
(60, 'angel.lopez033', '18683243', '1987-06-03', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Angel', 'Lopez', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'ARAGUA', 'Aragua', 'Angel Adonai', 'carabobo,aragua', 'ACTIVO', 'angel.lopez033@gmail.com', 'f86a4920e7e6637c4fdc7f53d768cb6c3eebf9b4', 'img/fotosUsuarios/670481598755291454fonfo_windows_red.jpg', '2022-08-29 08:54:37'),
(61, 'edieruni', '84290837', '1976-11-02', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Edier ', 'Uni Rengifo', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'TÁCHIRA', 'Táchira centro', 'Maha Lakshmi', 'barinas,lara,aragua,tachira,bolivar,merida', 'ACTIVO', 'uniedier@gmail.com', '8c0a1c39afcbb689107982a9b4afeb755e0a609b', 'img/fotosUsuarios/464619129082291844fonfo_windows_red.jpg', '2022-08-29 12:44:35'),
(62, 'ardilaguerrero', '27989745', '2001-09-20', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Adonay ', 'Ardila', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'TÁCHIRA', 'Táchira Norte', 'Zeus Daimon', 'tachira', 'ACTIVO', 'adonayardilaguerrero.3@gmail.com', 'b5580095dcded28de89bf7d744f950ce8aafc8cf', 'img/fotosUsuarios/504596120320291851fonfo_windows_red.jpg', '2022-08-29 12:51:02'),
(63, 'Juan_f', '30235748', '2003-08-07', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'juan fernando', 'araujo montilla', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'TRUJILLO', 'trujillo', 'luz alba', 'valencia, barquisimeto, tachira, maracaibo, merida.', 'ACTIVO', 'juan_f-a@outlook.es', '1598d87608d8fea5da8ba2bc5495f2e47e8e168f', 'img/fotosUsuarios/718122143079291859fonfo_windows_red.jpg', '2022-08-29 12:59:48'),
(64, 'testali1', '21200247', '1993-03-01', 'FEMENINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'liliana lucia', 'testa correa', 'JUVENTUDES', 'PROMOTOR DE JUVENTUDES', 'PORCOMPLETAR', 'PORCOMPLETAR', 'FALCÓN', 'falcon', 'racoxi', 'zulia, barinas, trujillo, carabobo, guarico, metropolitana', 'ACTIVO', 'testaliliana.19@gmail.com', 'ada06fa0fb85bdf4cdb9bbd9b47a7b476bd69a70', 'img/fotosUsuarios/930914230297291908fonfo_windows_red.jpg', '2022-08-29 13:08:54'),
(65, 'davilafer', '20221842', '1990-06-22', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'fernado javier', 'davila muñoz', 'JUVENTUDES', 'PROMOTOR DE JUVENTUDES', 'PORCOMPLETAR', 'PORCOMPLETAR', 'FALCÓN', 'falcon', 'racoxi', 'carabobo, lara, barinas, trujillo, metropolitana guarico, aragua.', 'ACTIVO', 'fernandodavila376@gmail.com', '44f070ce98291c79a2997acc6555098ea9466c07', 'img/fotosUsuarios/493347370627291912fonfo_windows_red.jpg', '2022-08-29 13:12:42'),
(66, 'domingapeña', '5154616', '1959-03-16', 'FEMENINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'domiga caridad', 'peña', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'GUÁRICO', 'guarico', 'angel adonay', 'carabobo, aragua, trujillo, portugesa bolivar, zulia, guarico.', 'ACTIVO', 'domingacaridadp@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', 'img/fotosUsuarios/872587720120291916fonfo_windows_red.jpg', '2022-08-29 13:16:40'),
(67, 'gaspararturo', '84585923', '1982-10-25', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'gaspar arturo', 'valenzuela morras', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'ANZOÁTEGUI', 'Anzoategui', 'binah', 'Bolivar, Anzoategui.', 'ACTIVO', 'gaspar.arturo.v.m@gmail.com', '9f954e21e4effa70f7491b3cc7d2579e730ae6d7', 'img/fotosUsuarios/961280999173291921fonfo_windows_red.jpg', '2022-08-29 13:21:27'),
(68, 'aris27', '19184449', '1988-07-25', 'FEMENINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Aris Clarivel', 'Cedeño Marcano', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'ANZOÁTEGUI', 'Anzoategui', 'Binah', 'Anzoategui', 'ACTIVO', 'arisclavelcedeno@gmail.com', 'e326ee6e703538a54c3d74d7bdcb6a39b10e52fb', 'img/fotosUsuarios/139684969528291925fonfo_windows_red.jpg', '2022-08-29 13:25:11'),
(69, 'Victorrodriguez', '12787230', '1975-01-27', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Victor Jose', 'Rodriguez Vargas', 'ENSEÑANZA', 'OBISPO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'LARA', 'Lara', 'Algel Metraton', 'todos', 'ACTIVO', 'ageacac@gmail.com', 'eb8c6976eb8fe149a642d36c616373793715cf8d', 'img/fotosUsuarios/748717998760291928fonfo_windows_red.jpg', '2022-08-29 13:28:55'),
(70, 'yosmergh', '12720922', '1976-06-30', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Yosmer Gregorio', 'Gonzalez Hernandez', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'CARABOBO', 'Carabobo Occidente', 'Hadit', 'tachira,yaracuy,caracas,margarita,trujillo,carabobo', 'ACTIVO', 'yosmergonzalez@gmail.com', '45ee1b156c68b3834bc7409eb8e471d2e095afbc', 'img/fotosUsuarios/538019104522291936fonfo_windows_red.jpg', '2022-08-29 13:36:00'),
(71, 'aulioantonio', '16739267', '1982-07-11', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Aulio Antonio', 'Araujo Hernandez', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'TRUJILLO', 'Trujillo', 'Luz Alba', 'barinas,zulia,carabobo,trujillo', 'ACTIVO', 'aulinh10068@gmail.com', '9b3508afd79e6d371e0d7ac9ab124578a3b677e6', 'img/fotosUsuarios/976884208954291943fonfo_windows_red.jpg', '2022-08-29 13:43:55'),
(72, 'nellyb19.$', '6293132', '1968-09-01', 'FEMENINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Nelly Teresa', 'Berrios Chiquito de Gonzalez', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'CARABOBO', 'Carabobo Occidente', 'Hadid', 'tachira,trujillo,yaracuy,caracas,margarita,carabobo', 'ACTIVO', 'nellyberrios19@gmail.com', 'ef9011e81a698ad35e1e84bf38472a076f67f131', 'img/fotosUsuarios/979648363314291945fonfo_windows_red.jpg', '2022-08-29 13:45:34'),
(73, 'nanimar', '17494430', '1985-01-04', 'FEMENINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Náyila ', 'Hernandez', 'AGEACAC', 'COORDINADOR AGEACAC', 'PORCOMPLETAR', 'PORCOMPLETAR', 'CARABOBO', 'Carabobo Occidente', 'Academia VM Lakshmi', 'todos', 'ACTIVO', 'hernandeznayila142@gmail.com', '4fc69d074bb1b3097eae2066e918cc5608798241', 'img/fotosUsuarios/446623562993291950fonfo_windows_red.jpg', '2022-08-29 13:50:00'),
(74, 'LENNY1985', '8863884', '1963-01-19', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Mario de la Cruz', 'Nava Fuenmayor', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'GUÁRICO', 'Guarico', 'Parvati', 'carabobo,guarico', 'ACTIVO', 'mariodelacruznavaf@gmail.com', 'b56f400dfc8fa451d217cc684773c327d82b8c40', 'img/fotosUsuarios/683774974530291958fonfo_windows_red.jpg', '2022-08-29 13:58:10'),
(75, 'coraluna', '29918331', '2002-12-20', 'FEMENINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'coradi', 'Luna Ramirez', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'TÁCHIRA', 'Tachira Centro', 'Moria', 'tachira centro', 'ACTIVO', 'coradiluna@gmail.com', '41241a6218820647b4be091aebc6455203f7fee7', 'img/fotosUsuarios/681665418160300057fonfo_windows_red.jpg', '2022-08-29 18:57:13'),
(76, 'lisce_14', '26927061', '1998-03-13', 'FEMENINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Lis Celeste', 'Araque Rincon', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'BARINAS', 'Barinas Oriente', 'Emperatriz Cosmica', 'Carabobo, Barinas.', 'ACTIVO', 'lis.araque27@gmail.com', '0c422ba64421103f8f58fc3c8676caf9c7c73178', 'img/fotosUsuarios/36244599682300102fonfo_windows_red.jpg', '2022-08-29 19:02:32'),
(77, 'titojzn', '21220478', '1991-12-08', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Tito josue', 'zambrano niño', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'TÁCHIRA', 'Tachira Sur', 'Logos Michael', 'Portuguesa, Falcon, Guarico, Nueva esparta, Merida', 'ACTIVO', 'titojzn@hotmail.com', 'eaf6431258af146cf32cd85c805c5e73f7054b0c', 'img/fotosUsuarios/480435789756300107fonfo_windows_red.jpg', '2022-08-29 19:07:52'),
(78, 'Armonia', '29723623', '1983-01-13', 'FEMENINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Diana Patricia', 'Kischners villamil', 'ENSEÑANZA', 'COORDINADOR TECNOTRONICA', 'PORCOMPLETAR', 'PORCOMPLETAR', 'CARABOBO', 'Carabobo Occidente', 'Hadit', 'todos', 'ACTIVO', 'diamantedivino19@gmail.com', '6e5f075eb0580b6af4887113f1f878cbc33324d3', 'img/fotosUsuarios/695870585050300115fonfo_windows_red.jpg', '2022-08-29 19:15:00'),
(79, 'luisalejz1956', '20080854', '1988-12-12', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Luis Enrrique', 'Alejandro Zorrilla', 'ENSEÑANZA', 'COORDINADOR MISIONAL', 'PORCOMPLETAR', 'PORCOMPLETAR', 'BOLÍVAR', 'Bolivar Oriente', 'Lakhsmi', 'guarico,yaracuy,zulia,bolivar', 'ACTIVO', 'luisalejz1133@gmail.com', '2587941d967f7d0918b0f046e4fd91541a145a64', 'img/fotosUsuarios/617090287419300136fonfo_windows_red.jpg', '2022-08-29 19:36:07'),
(80, 'aquilezmendez', '29810856', '2001-06-25', 'MASCULINO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'PORCOMPLETAR', 'Aquiles', 'Méndez', 'ENSEÑANZA', 'MISIONERO', 'PORCOMPLETAR', 'PORCOMPLETAR', 'CARABOBO', 'Carabobo Occidente', 'Hadith', 'carabobo', 'ACTIVO', 'aquilezmm@gmail.com', '0592ab45a991a1e8180e7b9d03036953d1e2447e', 'img/fotosUsuarios/271044584587300523fonfo_windows_red.jpg', '2022-08-29 23:23:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `ruta` varchar(255) NOT NULL,
  `nombreImagen` text NOT NULL,
  `tipoImagen` varchar(255) NOT NULL,
  `rutaFinalImagen` varchar(255) NOT NULL,
  `maestro` varchar(255) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `camara` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `titulo`, `tipo`, `ruta`, `nombreImagen`, `tipoImagen`, `rutaFinalImagen`, `maestro`, `categoria`, `camara`) VALUES
(1, '02_revolucion_bel.pdf', 'pdf', 'libros/02_revolucion_bel.pdf', 'rb.jpg', 'jpg', 'libros/rb.jpg', 'samael', 'ANTROPOLOGIA', 'PRIMERA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajescoordinaciones`
--

CREATE TABLE `mensajescoordinaciones` (
  `id` int(11) NOT NULL,
  `rama` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `diocesis` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `post` longtext NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mensajescoordinaciones`
--

INSERT INTO `mensajescoordinaciones` (`id`, `rama`, `estado`, `diocesis`, `titulo`, `post`, `fecha`) VALUES
(1, 'AGEACAC', 'COJEDES', 'COJEDES', 'Ageaca prueba 1', '\r\n<h1 class=\"titleLeftBig\">Prueba 1 Ageacac</h1>\r\n	', '2021-11-06'),
(2, 'ENSEÑANZA', 'ARAGUA', 'Aragua', 'prueba 1 de post diocesano', '\r\n<h1 class=\"titleCenterBig\">prueba 1 de post diocesano</h1>\r\n	', '2021-11-06'),
(3, 'JUVENTUDES', 'FALCÓN', 'falcon', 'prueba 1 entrega material juventudes', '\r\n<h1 class=\"titleCenterBig\">prueba 1 entrega material juventudes</h1>\r\n	', '2021-11-06'),
(4, 'TECNOTRONICA', 'BOLÍVAR', 'Bolivar este', 'Prueba post entrega material de tecnotronica', '\r\n<h1 class=\"titleCenterBig\">Prueba post entrega material de tecnotronica</h1>\r\n	', '2021-11-06'),
(5, 'ENSEÑANZA', 'DISTRITO CAPITAL', 'Caracas centro', 'Biografia Elena P.V', '\r\n<h1 class=\"titleCenterBig\">Biografia Elena P.V</h1>\r\n	\r\n<p class=\"capturarTextJustificado\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n	\r\n<div class=\"capturarTextoImg\">	\r\n	<a href=\"archivos/petronila.jpg\" target=\"_blank\" download><img alt=\"Elena P.V\" title=\"Elena P.V\" src=\"archivos/petronila.jpg\"></a>\r\n	<p class=\"text\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n</div>\r\n	\r\n<p class=\"capturarTextJustificado\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n	', '2021-11-08'),
(6, 'ENSEÑANZA', 'COJEDES', 'Cojedes', 'V.M. SAMAEL AUN WEOR', '\r\n<h1 class=\"titleCenterBig\">V.M. SAMAEL AUN WEOR</h1>\r\n	\r\n<p class=\"capturarTextJustificado\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n	\r\n<div class=\"capturarTextoImg\">	\r\n	<p class=\"text\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n	<a href=\"archivos/samael cortado.jpg\" target=\"_blank\" download><img alt=\"VM SAMAEL\" title=\"VM SAMAEL\" src=\"archivos/samael cortado.jpg\"></a>\r\n</div>\r\n	\r\n<p class=\"capturarTextJustificado\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n	\r\n<p class=\"capturarTextJustificado\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n	', '2021-11-08'),
(7, 'AGEACAC', 'COJEDES', 'COJEDES', 'VM LAKSHMI', '\r\n<h1 class=\"titleCenterBig\">VM LAKSHMI</h1>\r\n	\r\n<p class=\"capturarTextJustificado\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n	\r\n<div class=\"capturarTextoImg\">	\r\n	<p class=\"text\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n	<a href=\"archivos/lakhsmi con flu.jpg\" target=\"_blank\" download><img alt=\"VM LAKSHMI\" title=\"VM LAKSHMI\" src=\"archivos/lakhsmi con flu.jpg\"></a>\r\n</div>\r\n	\r\n<p class=\"capturarTextJustificado\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n	', '2021-11-08'),
(8, 'JUVENTUDES', 'FALCÓN', 'falcon', 'La Juventud', '\r\n<h1 class=\"titleCenterBig\">La Juventud</h1>\r\n	\r\n<p class=\"capturarTextJustificado\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n	', '2021-11-08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postsegunda`
--

CREATE TABLE `postsegunda` (
  `id` int(11) NOT NULL,
  `rama` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `diocesis` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `imgdestacada` varchar(255) NOT NULL,
  `descripcion` longtext NOT NULL,
  `post` longtext NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `postsegunda`
--

INSERT INTO `postsegunda` (`id`, `rama`, `tipo`, `estado`, `diocesis`, `titulo`, `imgdestacada`, `descripcion`, `post`, `fecha`) VALUES
(1, 'ENSEÑANZA', 'ALQUIMIA', 'NACIONAL', 'Caracas', 'Post uno', 'archivos/creed-green-irish-tweed.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '\n<h1 class=\"titleLeftBig\">Green Irish Tweed</h1>\n	\n<div class=\"capturarTextoImg\">	\n	<p class=\"text\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n	<a href=\"archivos/creed-green-irish-tweed.jpg\" target=\"_blank\" download><img alt=\"creed-green-irish-tweed\" title=\"creed-green-irish-tweed\" src=\"archivos/creed-green-irish-tweed.jpg\"></a>\n</div>\n	\n<p class=\"capturarTextJustificado\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n	\n<p class=\"capturarTextJustificado\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n	', '2022-01-24'),
(2, 'ENSEÑANZA', 'ANTROPOLOGIA', 'NACIONAL', 'Caracas', 'Segundo post', 'archivos/britney-spears-violeta.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '\r\n<h1 class=\"titleLeftBig\">Britney Spears Violeta</h1>\r\n	\r\n<div class=\"capturarTextoImg\">	\r\n	<p class=\"text\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n	<a href=\"archivos/britney-spears-violeta.jpg\" target=\"_blank\" download><img alt=\"britney-spears-violeta\" title=\"britney-spears-violeta\" src=\"archivos/britney-spears-violeta.jpg\"></a>\r\n</div>\r\n	\r\n<p class=\"capturarTextJustificado\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n	\r\n<p class=\"capturarTextJustificado\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n	', '2022-01-24'),
(3, 'ENSEÑANZA', 'ASTROLOGIA', 'NACIONAL', 'Caracas', 'Tercer Post', 'archivos/antonio-banderas-blue-seduction-for-men.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '\r\n<h1 class=\"titleLeftBig\">Antonio Banderas Blue Seduction For Men</h1>\r\n	\r\n<div class=\"capturarTextoImg\">	\r\n	<p class=\"text\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n	<a href=\"archivos/antonio-banderas-blue-seduction-for-men.jpg\" target=\"_blank\" download><img alt=\"antonio-banderas-blue-seduction-for-men\" title=\"antonio-banderas-blue-seduction-for-men\" src=\"archivos/antonio-banderas-blue-seduction-for-men.jpg\"></a>\r\n</div>\r\n	\r\n<p class=\"capturarTextJustificado\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n	\r\n<p class=\"capturarTextJustificado\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n	', '2022-01-24'),
(4, 'ENSEÑANZA', 'PSICOLOGIA', 'NACIONAL', 'Caracas', 'Cuarto Post', 'archivos/creed-eventus.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '\r\n<h1 class=\"titleLeftBig\">Creed Eventus</h1>\r\n	\r\n<div class=\"capturarTextoImg\">	\r\n	<p class=\"text\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n	<a href=\"archivos/creed-eventus.jpg\" target=\"_blank\" download><img alt=\"creed-eventus\" title=\"creed-eventus\" src=\"archivos/creed-eventus.jpg\"></a>\r\n</div>\r\n	\r\n<p class=\"capturarTextJustificado\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n	\r\n<p class=\"capturarTextJustificado\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n	', '2022-01-24'),
(5, 'ENSEÑANZA', 'EJERCICIOS', 'NACIONAL', 'Caracas', 'Quinto Post', 'archivos/creed-green-irish-tweed.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '\r\n<h1 class=\"titleLeftBig\">Creed Green Irish Tweed</h1>\r\n	\r\n<div class=\"capturarTextoImg\">	\r\n	<a href=\"archivos/creed-green-irish-tweed.jpg\" target=\"_blank\" download><img alt=\"creed-green-irish-tweed\" title=\"creed-green-irish-tweed\" src=\"archivos/creed-green-irish-tweed.jpg\"></a>\r\n	<p class=\"text\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n</div>\r\n	\r\n<p class=\"capturarTextJustificado\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n	\r\n<p class=\"capturarTextJustificado\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n	', '2022-01-24'),
(6, 'ENSEÑANZA', 'ALQUIMIA', 'NACIONAL', 'Caracas', 'Prueba Imagen', 'archivos/creed-viking-yellow.jpg', 'prueba del direccionamiento de imagen', '\r\n<a href=\"../coordinacion/archivos/creed-viking-yellow.jpg\" target=\"_blank\" download><img  class=\"capturarImg\" alt=\"Prueba\" title=\"Prueba\" src=\"../coordinacion/archivos/creed-viking-yellow.jpg\"></a>\r\n	', '2022-02-24'),
(7, 'ENSEÑANZA', 'ALQUIMIA', 'NACIONAL', 'Caracas', 'prueba con archivos', 'archivos/creed-viking.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n		consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n		cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n		proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '\r\n<a href=\"../coordinacion/archivos/creed-viking.jpg\" target=\"_blank\" download><img  class=\"capturarImg\" alt=\"Prueba 2\" title=\"Prueba 2\" src=\"../coordinacion/archivos/creed-viking.jpg\"></a>\r\n	\r\n<div class=\"capturarTextoImg\">	\r\n	<p class=\"text\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod 		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo 		consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse 		cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 		proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n	<a href=\"archivos/creed-silver-mountain-water.jpg\" target=\"_blank\" download><img alt=\"Prueba 3\" title=\"Prueba 3\" src=\"archivos/creed-silver-mountain-water.jpg\"></a>\r\n</div>\r\n	\r\n<div class=\"capturarTextoImg\">	\r\n	<a href=\"archivos/creed-millesime-imperial.jpg\" target=\"_blank\" download><img alt=\"Prueba 4\" title=\"Prueba 4\" src=\"archivos/creed-millesime-imperial.jpg\"></a>\r\n	<p class=\"text\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod 		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo 		consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse 		cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 		proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n</div>\r\n	\r\n<a href=\"archivos/1978-Samael-Aun-Weor-Tarot-y-Kabala.pdf\" target=\"_blank\" download><img  class=\"capturarArchivo\" src=\"img/pdf.png\"></a>\r\n	', '2022-02-24'),
(8, 'ENSEÑANZA', 'ALQUIMIA', 'NACIONAL', 'Caracas', 'prueba 6', 'archivos/creed-silver-mountain-water.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '\r\n<div class=\"capturarTextoImg\">	\r\n	<p class=\"text\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n	<a href=\"../coordinacion/archivos/creed-silver-mountain-water.jpg\" target=\"_blank\" download><img alt=\"prueba 6\" title=\"prueba 6\" src=\"../coordinacion/archivos/creed-silver-mountain-water.jpg\"></a>\r\n</div>\r\n	', '2022-02-24'),
(9, 'ENSEÑANZA', 'ALQUIMIA', 'NACIONAL', 'Caracas', 'prueba 7', 'archivos/creed-millesime-imperial.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '\r\n<div class=\"capturarTextoImg\">	\r\n	<p class=\"text\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n	<a href=\"../coordinacion/archivos/creed-silver-mountain-water.jpg\" target=\"_blank\" download><img alt=\"prueba 6\" title=\"prueba 6\" src=\"../coordinacion/archivos/creed-silver-mountain-water.jpg\"></a>\r\n</div>\r\n	\r\n<div class=\"capturarTextoImg\">	\r\n	<a href=\"../coordinacion/archivos/creed-millesime-imperial.jpg\" target=\"_blank\" download><img alt=\"prueba 7\" title=\"prueba 7\" src=\"../coordinacion/archivos/creed-millesime-imperial.jpg\"></a>\r\n	<p class=\"text\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n</div>\r\n	', '2022-02-24'),
(10, 'ENSEÑANZA', 'ALQUIMIA', 'NACIONAL', 'Caracas', 'archivo 1', 'img/pdf.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '\r\n<a href=\"../coordinacion/archivos/1978-Samael-Aun-Weor-Tarot-y-Kabala.pdf\" target=\"_blank\" download><img  class=\"capturarArchivo\" src=\"img/pdf.png\"></a>\r\n	', '2022-02-24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postweb`
--

CREATE TABLE `postweb` (
  `id` int(11) NOT NULL,
  `rama` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `post` longtext NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `postweb`
--

INSERT INTO `postweb` (`id`, `rama`, `tipo`, `estado`, `titulo`, `post`, `fecha`) VALUES
(1, 'AGEACAC', 'psicologia', 'COJEDES', 'prueba 1 ageacac post en la web', '\r\n<h1 class=\"titleCenterBig\">prueba 1 ageacac post en la web</h1>\r\n	', '2021-11-07'),
(2, 'AGEACAC', 'astrologia', 'COJEDES', 'prueba 2 ageacac post en la web', '\r\n<h1 class=\"titleCenterBig\">prueba 2 ageacac post en la web</h1>\r\n	', '2021-11-07'),
(3, 'AGEACAC', 'alquimia', 'COJEDES', 'prueba 3 ageacac post en la web', '\r\n<h1 class=\"titleCenterBig\">prueba 3 ageacac post en la web</h1>\r\n	', '2021-11-07'),
(4, 'JUVENTUDES', 'parcticas', 'FALCÓN', 'prueva 1 juventudes post web', '\r\n<h1 class=\"titleCenterBig\">prueva 1 juventudes post web</h1>\r\n	', '2021-11-07'),
(5, 'ENSEÑANZA', 'teurgia', 'COJEDES', 'prueba 1 diocesis post web', '\r\n<h1 class=\"titleCenterBig\">prueba 1 diocesis post web</h1>\r\n	', '2021-11-07'),
(6, 'TECNOTRONICA', 'antropologia', 'BOLÍVAR', 'prueba 1 tecnotronica post web', '\r\n<h1 class=\"titleCenterBig\">prueba 1 tecnotronica post web</h1>\r\n	', '2021-11-07'),
(7, 'ENSEÑANZA', 'antropologia', 'NACIONAL', 'prueba 1 post web admin', '\n<h1 class=\"titleCenterBig\">prueba 1 post web admin</h1>\n	', '2021-11-07'),
(8, 'ENSEÑANZA', '', 'NACIONAL', 'prueba imagen', '\r\n<a href=\"../coordinacion/archivos/creed-viking-yellow.jpg\" target=\"_blank\" download><img  class=\"capturarImg\" alt=\"dff\" title=\"dff\" src=\"../coordinacion/archivos/creed-viking-yellow.jpg\"></a>\r\n	', '2022-02-24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `diocesis` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `lumisial` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `usuario` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `nombre` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `apellido` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `fecha` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `diocesis`, `lumisial`, `usuario`, `nombre`, `apellido`, `email`, `password`, `img`, `fecha`) VALUES
(1, 'METROPOLITANA', 'PARVATTY', 'OSIRIS', 'OSIRIS', 'ROJAS', 'OSIRIS@GMAIL.COM', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'img/imgUsers/97642762322202253balasdepool.jpg', '2021-07-20 15:53:42'),
(2, 'METROPOLITANA', 'METRATON', 'OSCAR', 'OSCAR', 'PEREZ', 'OSCAR@GMAIL.COM', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'img/imgUsers/25378468324202258aaaaaaa.jpg', '2021-07-20 15:58:27'),
(3, 'Metropolitana', 'Parvatty', 'Btx', 'Roberto', 'Coronel', 'btx@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'img/imgUsers/351387226640232108IMG_20210722_133742.jpg', '2021-07-23 14:08:27');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cursillistas`
--
ALTER TABLE `cursillistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `entregamaterial`
--
ALTER TABLE `entregamaterial`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `informe`
--
ALTER TABLE `informe`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inscritos`
--
ALTER TABLE `inscritos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `instructores`
--
ALTER TABLE `instructores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mensajescoordinaciones`
--
ALTER TABLE `mensajescoordinaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `postsegunda`
--
ALTER TABLE `postsegunda`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `postweb`
--
ALTER TABLE `postweb`
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
-- AUTO_INCREMENT de la tabla `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cursillistas`
--
ALTER TABLE `cursillistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `documentos`
--
ALTER TABLE `documentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `entregamaterial`
--
ALTER TABLE `entregamaterial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `img`
--
ALTER TABLE `img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `informe`
--
ALTER TABLE `informe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `inscritos`
--
ALTER TABLE `inscritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `instructores`
--
ALTER TABLE `instructores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `mensajescoordinaciones`
--
ALTER TABLE `mensajescoordinaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `postsegunda`
--
ALTER TABLE `postsegunda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `postweb`
--
ALTER TABLE `postweb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
