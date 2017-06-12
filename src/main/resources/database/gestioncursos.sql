-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-06-2017 a las 19:51:38
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `appllodio`
--
CREATE DATABASE IF NOT EXISTS `appllodio` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `appllodio`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `barrio`
--

CREATE TABLE `barrio` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `barrio`
--

INSERT INTO `barrio` (`codigo`, `nombre`) VALUES
(1, 'ugarte'),
(2, 'areta'),
(3, 'latiorro'),
(4, 'landaluce'),
(5, 'gardea'),
(6, 'larraño'),
(7, 'zona centro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fiesta`
--

CREATE TABLE `fiesta` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8 NOT NULL,
  `descripcion` text CHARACTER SET utf8,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fiesta`
--

INSERT INTO `fiesta` (`codigo`, `nombre`, `descripcion`, `fecha`) VALUES
(1, 'Feria de San Blas', 'Sábado anterior o coincidente con el 3 de febrero. Importante Feria que gira en torno al caserío especialmente relacionada con la matanza del cerdo. Exposición de productos del caserío y de artesanía. Concurso gastronómico de patas de cerdo.', '2017-02-03'),
(2, 'Viernes de Dolores', 'De gran tradición para los llodianos, se realiza el viernes anterior al inicio de la Semana Santa. Importante Feria Exposición de ganado vacuno, equino y ovino. Importante prueba de arrastre de piedra con bueyes. Se puede considerar una de las fiestas más importantes de la comarca.', '2017-03-23'),
(3, 'Santa Agueda', 'Se celebra el segundo día de Pascua Resurrección en la ermita de María Magdalena en Larraño, al pie de Luja.', '2017-04-18'),
(4, 'San Prudencio', 'Patrono de Alava, el día 28 de abril. Tamborrada y Concurso de Caracoles.', '2017-04-28'),
(5, 'Santa Cruz', '3 de mayo en el barrio de Gardea', '2017-05-03'),
(6, 'Santa Lucía', 'El segundo día de Pascua de Pentecostés o siete semanas después de Resurrección. Importante romería que se celebra en la campa existente junto a la ermita en el entorno de Santa María del Yermo.', '2017-06-03'),
(7, 'San Antonio', 'El 13 de junio. Su ermita está dedicada también a la advocación de Santa Apolonia.', '2017-06-13'),
(8, 'San Juan', 'El 24 de junio en el barrio de Larrazabal.', '2017-06-24'),
(9, 'Santa Ana', 'El 26 de julio, en el barrio de Areta.', '2017-07-26'),
(10, 'San Ignacio', 'El 31 de julio, en el barrio de Ugarte', '2017-07-31'),
(11, 'San Roke', 'Patrono del Valle de Llodio. Las fiestas en su honor comienzan el 15 de agosto, la Asunción, y se extienden hasta el último domingo del mes, día en el que se celebra, desde 1599, la comida de hermandad de los cofrades de San Roke. La víspera se celebra la popular fiesta llamada “Día de las morcillas”.', '2017-08-15'),
(12, 'San Bartolomé', 'En la ermita del santo en Larra, el 24 de agosto.', '2017-08-24'),
(13, 'Latiorroko Jaiak', 'Fiestas de este populoso barrio de Llodio, a mediados de septiembre.', '2017-09-14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restaurante`
--

CREATE TABLE `restaurante` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `numero` varchar(3) DEFAULT 'S/N',
  `telefono` varchar(9) DEFAULT NULL,
  `documento` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `restaurante`
--

INSERT INTO `restaurante` (`codigo`, `nombre`, `direccion`, `numero`, `telefono`, `documento`) VALUES
(1, 'balintxareketa', 'malkuartu bidea', '1', '946724350', ''),
(2, 'palacio anuncibai', 'vitoria', '', '946726188', ''),
(3, 'telepizza', 'zumalacarregui', '15', '944030456', ''),
(4, 'Karrika', 'poligono industrialdea', '4', '946728207', ''),
(5, 'batzoki llodio', 'plaza alberto acero', '12', '946034000', ''),
(6, 'paraiso chino', 'virgen del carmen', '31', '946726517', ''),
(7, 'capucci katua', 'zubiko kurajo', '7', '946559953', ''),
(8, 'el tunel', 'vitoria', '5', '946720558', ''),
(9, 'tolo', 'virgen del carmen', '9', '672235065', ''),
(10, 'txanxiku', 'zubiaur', '3', '946722774', ''),
(11, 'utzine', 'lamuza', '23', '946721232', ''),
(12, 'centro gallego', 'ruperto urquijo', '1', '946726009', ''),
(13, 'txakoli beldui', 'caserio beldio', 'S/N', '685757648', ''),
(14, 'andoniren', 'tres cruces', '25', '946721495', ''),
(15, 'biribil', 'zumalakarregi ', '39', '946728000', ''),
(16, 'dorrea', 'ugarte', '16', '944048878', ''),
(17, 'larrea', 'doctor fleming', '3', '946725013', ''),
(18, 'ugarte', 'ugarte', '11', '946725699', ''),
(19, 'mu lian', 'tres cruces', '5', '946728424', ''),
(20, 'laurak', 'tres cruces', '17', '946722725', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `barrio`
--
ALTER TABLE `barrio`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `fiesta`
--
ALTER TABLE `fiesta`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `barrio`
--
ALTER TABLE `barrio`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `fiesta`
--
ALTER TABLE `fiesta`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;--
-- Base de datos: `gestioncursos`
--
CREATE DATABASE IF NOT EXISTS `gestioncursos` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `gestioncursos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `codigo` int(2) NOT NULL COMMENT 'el campo clave de la tabla. Es auto generado.',
  `nomcurso` varchar(50) COLLATE utf8_bin NOT NULL,
  `codcurso` varchar(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`codigo`, `nomcurso`, `codcurso`) VALUES
(1, 'programaciã³n para pdas', 'emin3004'),
(2, 'SEGURIDAD DE LA INFORMACIÓN', 'ER523'),
(3, 'GESTIÓN Y DESARROLLO DE APLICACIONES WIRELESS', 'CI03'),
(4, 'SMS 2003', 'CI04'),
(5, 'INTRODUCCIÓN A VISUAL BASIC .NET', 'CI05'),
(6, 'GESTIÓN DE SISTEMAS CON PATROL', 'CI06'),
(7, 'TÉCNICAS DE DESARROLLO ESTRUCTURADO', 'CI07'),
(8, 'UML – TÉCNICAS DE DESARROLLO ORIENTADAS A OBJETOS', 'CI08'),
(9, 'GESTIÓN DE PROYECTOS. ESTIMACIÓN MEDIANTE PUNTOS D', 'CI09'),
(10, 'MICROSOFT WINDOWS MILLENIUM', 'IU105'),
(11, 'WINDOWS NT 4.0: WORKSTATION: USUARIO', 'IU106'),
(12, 'WINDOWS 2000 PROFESSIONAL: USUARIO', 'IU107'),
(13, 'MICROSOFT WORD 97: INICIACIÓN', 'IU200'),
(14, 'MICROSOFT WORD 97: AVANZADO', 'IU201'),
(15, 'MICROSOFT WORD 2000: INICIACIÓN', 'IU202'),
(16, 'MICROSOFT WORD 2000: AVANZADO', 'IU203'),
(17, 'MICROSOFT WORD 2003: INICIACIÓN', 'IU204'),
(18, 'MICROSOFT WORD 2003: AVANZADO', 'IU205'),
(19, 'COREL WORDPERFECT 8: INICIACIÓN', 'IU206'),
(20, 'COREL WORDPERFECT 8: AVANZADO', 'IU207'),
(21, 'LOTUS WORDPRO MILENIUM: INICIACIÓN', 'IU208'),
(22, 'LOTUS WORDPRO MILENIUM: AVANZADO', 'IU209'),
(23, 'MICROSOFT EXCEL 97: INICIACIÓN', 'IU300'),
(24, 'MICROSOFT EXCEL 97: AVANZADO', 'IU301'),
(25, 'MICROSOFT EXCEL 2000: INICIACIÓN', 'IU302'),
(26, 'MICROSOFT EXCEL 2000: AVANZADO', 'IU303'),
(27, 'MICROSOFT EXCEL 2003: INICIACIÓN', 'IU304'),
(28, 'MICROSOFT EXCEL 2003: AVANZADO', 'IU305'),
(29, 'LOTUS 1-2-3 MILENIUM: INICIACIÓN', 'IU306'),
(30, 'LOTUS 1-2-3 MILENIUM: AVANZADO', 'IU307'),
(31, 'COREL QUATTRO PRO 8: INICIACIÓN', 'IU308'),
(32, 'MICROSOFT POWERPOINT 97', 'IU400'),
(33, 'MICROSOFT POWERPOINT 2000', 'IU401'),
(34, 'MICROSOFT POWERPOINT 2003', 'IU402'),
(35, 'MICROSOFT VISIO 2000', 'IU403'),
(36, 'MICROSOFT VISIO 2003', 'IU404'),
(37, 'HARVARD GRAPHICS 98', 'IU405'),
(38, 'LOTUS FREELANCE GRAPHICS MILENIUM', 'IU406'),
(39, 'MICROGRAFX ABC FLOWCHARTER 7.0', 'IU407'),
(40, 'MICROSOFT ACCESS 97: INICIACIÓN', 'IU500'),
(41, 'MICROSOFT ACCESS 97: AVANZADO Y MACROS', 'IU501'),
(42, 'MICROSOFT ACCESS 2000: INICIACIÓN', 'IU502'),
(43, 'MICROSOFT ACCESS 2000: AVANZADO', 'IU503'),
(44, 'MICROSOFT ACCESS 2003: INICIACIÓN', 'IU504'),
(45, 'MICROSOFT ACCESS 2003: AVANZADO', 'IU505'),
(46, 'LOTUS APPROACH MILENIUM: INICIACIÓN', 'IU506'),
(47, 'CLARIS FILEMAKER PRO 4.0: INICIACIÓN', 'IU507'),
(48, 'BORLAND VISUAL DBASE 7: INICIACIÓN', 'IU508'),
(49, 'ACCESO A INTERNET', 'IU600'),
(50, 'MICROSOFT FRONTPAGE 98', 'IU601'),
(51, 'MICROSOFT FRONTPAGE 2000', 'IU602'),
(52, 'MICROSOFT FRONTPAGE 2003', 'IU603'),
(53, 'MICROSOFT OUTLOOK 97/98', 'IU604'),
(54, 'MICROSOFT OUTLOOK 2000', 'IU605'),
(55, 'MICROSOFT OUTLOOK 2003', 'IU606'),
(56, 'MICROSOFT PROJECT 98', 'IU700'),
(57, 'MICROSOFT PROJECT 2000', 'IU701'),
(58, 'MICROSOFT PROJECT 2003', 'IU702'),
(59, 'CA SUPERPROJECT 4.0', 'IU703'),
(60, 'LOTUS ORGANIZER 97', 'IU704'),
(61, 'MICROSOFT OFFICE 97', 'IU800'),
(62, 'MICROSOFT OFFICE 2000', 'IU801'),
(63, 'MICROSOFT OFFICE 2003', 'IU802'),
(64, 'LOTUS SMARTSUITE MILLENNIUM', 'IU803'),
(65, 'COREL WORDPERFECT SUITE 8', 'IU804'),
(66, 'TÉCNICAS DE DISEŃO Y PRESENTACIÓN VISUAL', 'DG100'),
(67, 'COREL DRAW 10', 'DG101'),
(68, 'COREL PHOTO-PAINT 9', 'DG102'),
(69, 'MACROMEDIA FREEHAND 10', 'DG103'),
(70, 'MACROMEDIA FIREWORKS 4', 'DG104'),
(71, 'MICROSOFT PHOTODRAW 2000', 'DG105'),
(72, 'ADOBE PHOTOSHOP 6', 'DG106'),
(73, 'ADOBE ILLUSTRATOR 9', 'DG107'),
(74, 'ADOBE IMAGEREADY 3', 'DG108'),
(75, 'ANIMATOR PRO 1.3', 'DG109'),
(76, '3D STUDIO MAX 3', 'DG110'),
(77, 'MICROSOFT PUBLISHER 98', 'DG200'),
(78, 'MICROSOFT PUBLISHER 2000', 'DG201'),
(79, 'QUARKXPRESS 4', 'DG202'),
(80, 'ADOBE INDESING 1.5', 'DG203'),
(81, 'ADOBE PAGEMAKER 7.0', 'DG204'),
(82, 'VENTURA PUBLISHER 2.0', 'DG205'),
(83, 'ADOBE PREMIERE 5', 'DG300'),
(84, 'SOUND FORGE XP', 'DG301'),
(85, 'GESTIÓN DE PROYECTOS MULTIMEDIA', 'DG400'),
(86, 'MACROMEDIA DIRECTOR 8', 'DG401'),
(87, 'MACROMEDIA AUTHORWARE 5', 'DG402'),
(88, 'LINGO', 'DG403'),
(89, 'ADOBE ACROBAT EDITOR 5', 'DG500'),
(90, 'ADOBE GOLIVE 5', 'DG501'),
(91, 'MACROMEDIA FLASH 5', 'DG502'),
(92, 'MACROMEDIA DREAMWEAVER 4', 'DG503'),
(93, 'MACROMEDIA ULTRADEV 4', 'DG504'),
(94, 'AUTOCAD v. 14: INICIACIÓN', 'DG600'),
(95, 'AUTOCAD v. 14: AVANZADO', 'DG601'),
(96, 'AUTOCAD v. 14: 3D', 'DG602'),
(97, 'AUTOCAD 2000: ACTUALIZACIÓN', 'DG603'),
(98, 'AUTOCAD 2000: INICIACIÓN', 'DG604'),
(99, 'AUTOCAD 2000: AVANZADO', 'DG605'),
(100, 'AUTOCAD 2000: 3D', 'DG606'),
(101, 'MICROSTATION 95', 'DG607'),
(102, '3D STUDIO VIZ', 'DG608'),
(103, 'JAVA - J2EE', 'CI10'),
(104, 'Sql server 2005: Administración', 'CI11'),
(105, 'Sql Server 2005: Programación', 'CI12'),
(106, 'Crystal Reports 10', 'CI13'),
(107, 'Seguridad en el desarrollo WEB', 'CI14'),
(108, 'ASP .NET', 'CI15'),
(109, '2005/01 -Técnico en Software Ofimático', ''),
(110, 'OFIMATICA', ''),
(111, 'OFIMATICA (EXCEL + ACCESS)', ''),
(112, 'INTERNET', ''),
(113, 'PROJECT 2003', ''),
(114, 'INTERNET (SSI)', ''),
(115, 'INTERNET (SSI)', ''),
(116, 'OFIMATICA', ''),
(117, 'OFIMATICA (Word-Excel - Access)', ''),
(118, 'OFIMATICA (SSI)', ''),
(119, 'PROJECT 2003 - INICIO', ''),
(120, 'ARQUITECTURA REDES', ''),
(121, 'PROJECT 2003 - AVANZADO (Estudio K)', ''),
(122, 'PHOTOSHOP', ''),
(123, 'ACCESS& EXCEL 2003', ''),
(124, 'JAVA', ''),
(125, 'OFIMATICA (GARBEKO)', ''),
(126, 'TSO 01- Técnico en Software Ofimático', ''),
(127, 'Ofimática (SSI - Oficinas)', ''),
(128, 'Ofimática (SSI)', ''),
(129, 'Crystal Reports', ''),
(130, 'Excel 2003 - Avanzado', ''),
(131, 'Ofimática - Rezikleta', ''),
(132, 'TSO 02- Técnico en Software Ofimático', ''),
(133, 'JAVA Avanzado - Microserver', ''),
(134, 'Ofimática (Matrici)', ''),
(135, 'Access 2003 Ini-Medio', ''),
(136, 'Ofimática (Patxi S.Coop)', ''),
(137, 'Excel 2003 - Básico (Aranceta)', ''),
(138, 'Excel 2003 - Intermedio (Aranceta)', ''),
(139, 'Excel 2003 - Intermedio (Aranceta)', ''),
(140, 'Excel 2003 - Avanzado (Aranceta)', ''),
(141, 'Word 2003 - Inicio (Aranceta)', ''),
(142, 'Word 2003 - Inicio (Aranceta)', ''),
(143, 'Word 2003 - Avanzado (Aranceta)', ''),
(144, 'Freehand - Iniciación (Cartonajes Lantegi)', ''),
(145, 'Outlook 2000 - Grp. 1- ( Cartonajes Lantegi)', ''),
(146, 'Outlook 2000 - Grp. 2 - ( Cartonajes Lantegi)', ''),
(147, 'Excel 2000 - Avanzado - (Cartonajes Lantegi)', ''),
(148, 'Excel 2000  - Inicio (Cartonajes Lantegi)', ''),
(149, 'TSO 03- Técnico en Software Ofimático', ''),
(150, 'Access 2003 - (Bilbo Zaharra)', ''),
(151, 'Excel 2003 Avanzado - (Bilbo Zaharra)', ''),
(152, 'Photoshop (Bilbo Zaharra)', ''),
(153, 'Office 2000 (Burdinola) - Grupo 1', ''),
(154, 'Office 2000 (Burdinola) - Grupo 2', ''),
(155, 'Outlook 2003 - Grupo 1 - (Berohi)', ''),
(156, 'Outlook 2003 - Grupo 2 - (Berohi)', ''),
(157, 'Office 2003 - (SSI)', ''),
(158, 'Internet/Outlook - (SSI)', ''),
(159, 'Outlook 2003 - Grupo 3 - (Berohi)', ''),
(160, 'Office 2003  - (Bilbo Zaharra)', ''),
(161, 'Project 2003 - Garapen', ''),
(162, 'Excel 2003 Avanzado   - Abierto', ''),
(163, 'Access Avanzado - Abierto', ''),
(164, 'OFFICE 2003', ''),
(165, 'Informática Básica', ''),
(166, 'Access 2003 - Patxi S.Coop', ''),
(167, 'Excel Avanzado - Agintzari', ''),
(168, 'Crystal Reports - Consulmar', ''),
(169, 'TSO 01/2007  - Técnico en Software Ofimático', ''),
(170, 'ING 01/2007 - Inglés: Atención al público', ''),
(171, 'POO 01 - 2007 - Programación Orientada a Objetos', ''),
(172, 'PBD 01-2007 - Programador BBDD relacionales', ''),
(173, 'TSO 02/2007  - Técnico en Software Ofimático', ''),
(174, 'TSO 03/2007  - Técnico en Software Ofimático', ''),
(175, 'ING 02/2007 - Inglés: Atención al público', ''),
(176, 'AP 01/2007  - Analista Programador', ''),
(177, 'Windows 2003 Server - Dosnet', ''),
(178, 'Programación COBOL', ''),
(179, '03 - TSO - Prácticas Ipartek', ''),
(180, '03 - TSO - Prácticas Enkartelec 3003', ''),
(181, '03 - TSO - Prácticas Ofyde', ''),
(182, 'Project 2003 - Rotork', ''),
(183, '01/2007- TSO - Practicas Ipartek', ''),
(184, '01/2007- POO - Practicas Ipartek', ''),
(185, 'Java- J2EE - Lantik', ''),
(186, 'SQL Server 2005 - Admistración - Servatas', ''),
(187, 'MS Excel 2003: Avanzado - Eraginkor', ''),
(188, 'Excel 2003 -Ini+ Avanzado - Grupo 1', ''),
(189, 'Excel 2003 - Ini+Avanzado - Grupo 2', ''),
(190, 'Excel 2003 - Ini+Avanzado - Grupo 3', ''),
(191, 'Office 2003 - Bilbo Zaharra - Eraginkor', ''),
(192, 'TSO - 02/2007 Practicas Ipartek', ''),
(193, 'TSO - 02/2007 Prácticas DOSNET', ''),
(194, 'Curso Ihobe', ''),
(195, 'J2ME', ''),
(196, 'Practicas Analista Programador - Avenir', ''),
(197, 'Informática Básica - Alfus', ''),
(198, 'OF - Office 2003 - Desempleados', ''),
(199, 'OF - Office 2003 - Desempleados II', ''),
(200, 'HO - Microsot Excel 2003 - Desempleados', ''),
(201, 'TP - Project 2003 - Abierto + Desempleados', ''),
(202, 'Excel - Emaus', ''),
(203, 'Prácticas Programador BBDD - LUR', ''),
(204, 'Practicas Analista programador - Ipartek', ''),
(205, 'Prácticas Programador BBDD - Ipartek', ''),
(206, 'HO - Adobe Photoshop CS2 - Desempleados', ''),
(207, 'HO - Microsoft Excel 2003 - Desempleados II', ''),
(208, 'OF - Office 2003 - Desempleados III', ''),
(209, 'OF - Office 2003 - Desempleados IV', ''),
(210, 'HO - Adobe Photoshop CS2 - Desempleados II', ''),
(211, 'HO - Microsoft Excel 2003 - Desempleados III', ''),
(212, 'Prácticas TSO-3 2007 - Ipartek', ''),
(213, 'Prácticas TSO-3 2007 - Asoma', ''),
(214, 'Prácticas TSO-3 2007 - DOSNET', ''),
(215, 'Prácticas TSO-3 2007 - Getxo Empresarial', ''),
(216, 'SL - Adobe Photoshop CS2 - Desempleados III', ''),
(217, 'SL - Microsoft Word 2003 - Desempleados I', ''),
(218, 'TP - Project 2003 -  Desempleados I', ''),
(219, 'SL - Microsoft Windows XP - Desempleados I', ''),
(220, 'Project 2003', ''),
(221, 'TSO 01/2008  - Técnico en Software Ofimático', 'IFCI17'),
(222, 'PBD 01-2008 - Programador BBDD relacionales', 'IFCI4004'),
(223, 'TSO 02/2008  - Técnico en Software Ofimático', ''),
(224, 'POO 01 - 2008 - Programación Orientada a Objetos', ''),
(225, 'IU 01 - 2008 - Informática de usuario', 'IFCI23'),
(226, 'Outlook - Gamesa', ''),
(227, 'Programación COBOL/TSO/JCL', ''),
(228, 'Evaluación - COBOL/TSO/JCL', ''),
(229, 'Outlook II  - Gamesa', ''),
(230, 'Informática básica', ''),
(231, 'SQL Server - Admin - G1', ''),
(232, 'SQL Server - Admin - G2', ''),
(233, 'Practicas PBDDR - Ipartek', ''),
(234, 'SQL Server - Admin - G3', ''),
(235, 'OF - OFFICE 2003 - Desempleados I', ''),
(236, 'Project 2003 - MB Sistemas', ''),
(237, 'Informática de usuario - Bilbo zaharra', ''),
(238, 'Skype Behargintza - I', ''),
(239, 'Excel 2003 - Avanzado I', ''),
(240, 'JAVA- J2EE - G1', ''),
(241, 'Project 2003 - G1', ''),
(242, 'Practicas TSO/02', ''),
(243, 'Excel 2003 - Avanzado II', ''),
(244, 'TSO 01/2009  - Técnico en Software Ofimático', ''),
(245, 'IU 01 - 2009 - Informática de usuario', ''),
(246, 'POO 01 - 2009 - Programación Orientada a Objetos', 'EMIN3004'),
(247, 'TSO 02/2009  - Técnico en Software Ofimático', 'IFCI17'),
(248, 'PBD 01-2009 - Programador BBDD relacionales', 'IFC4004'),
(249, 'JAVA- J2EE - G2', ''),
(250, 'Project 2003 - G2', ''),
(251, 'Práticas - 2008 - Programación Orientada a Objetos', ''),
(252, 'Prácticas - TSO01/2009 Técnico Software Ofimático', ''),
(253, 'ADMINISTRADORES(ENCUESTAS)', ''),
(254, 'Sql server 2005', ''),
(255, 'Prácticas - IU01/2009 Informática de Usuario', ''),
(256, 'JAVA-J2EE INEM', 'EMIN3004'),
(257, 'VISUAL BASIC.NET INEM', 'IFCI17'),
(258, 'OF - 01 / Office 2003 - Eraginkor', 'IU802'),
(259, 'OF - 02 / Office 2003 - Eraginkor', 'IU802'),
(260, 'OF - 03 / Office 2003 - Eraginkor', 'IU802'),
(261, 'OF - 04 / Office 2003 - Eraginkor', 'IU802'),
(262, 'SQL Server - Admin', ''),
(263, 'Excel 2007 Avanzado', ''),
(264, 'PROGRAMADOR BBDD REL INEM', 'IFC4004'),
(265, 'SQL Server - Admin - G4', ''),
(266, 'OF - 05 / Office 2003 - Eraginkor', 'IU802'),
(267, 'Prácticas - TSO02/2009 Técnico Software Ofimático', ''),
(268, 'Prácticas - TSO02/2009 Programación Orien. Objetos', ''),
(269, 'Prácticas - TSO02/2009 Técnico Software G1', ''),
(270, 'Prácticas - TSO02/2009 Técnico Software G2', ''),
(271, 'Prácticas - POO01/2009 POO', 'CI01'),
(272, 'Vacaciones 2010', ''),
(273, 'Word 2003 (Tutoría)', ''),
(274, 'Java/J2EE', 'CI10'),
(275, 'Project 2003 G1- Hobetuz', 'IU702'),
(276, 'Consultoría Dosnet', ''),
(277, 'Java/J2EE G1- Hobetuz', 'CI10'),
(278, 'Excel 2003 - Nivel medio G1', 'ERIU304'),
(279, 'Project 2003 G1', 'ERIU702'),
(280, 'Excel 2003 - Avanzado G1', 'ERIU305'),
(281, 'Word 2003', 'ERIU204'),
(282, 'Excel 2003 - Nivel medio G2', 'ERIU304'),
(283, 'Project 2003 G2', 'ERIU702'),
(284, 'Java-J2EE', 'ERCI10'),
(285, 'Excel 2003 - Avanzado G2', 'ERIU305'),
(286, 'Visaul .NET', 'ERCI05'),
(287, 'Velneo (Dosnet)', ''),
(289, 'Excel 2003 - Avanzado -  Hobetuz G1', 'IU305'),
(291, 'Sql Server 2005 - G2', ''),
(292, 'Sql Server 2005 - G3', ''),
(293, 'Java/J2EE G2- Hobetuz', 'CI10'),
(294, 'Prueba', ''),
(457, 'JAVA-J2EE ERKIDE', 'ERCI10'),
(458, 'SQL SEVER 2005 ADMINISTRACION ERKIDE', 'ERCI11'),
(459, 'SQL SERVER 2005 PROGRAMACION ERKIDE', 'ERCI12'),
(460, 'WORD 2000 INICIACION ERKIDE', 'ERIU202'),
(461, 'WORD 2003 INICIACION ERKIDE', 'ERIU204'),
(462, 'WORD 2003 AVANZADO ERKIDE', 'ERIU205'),
(463, 'EXCEL 2003 INICIACION ERKIDE', 'ERIU304'),
(464, 'EXCEL 2003 AVANZADO ERKIDE', 'ERIU305'),
(465, 'PROJECT 2003 ERKIDE', 'ERIU702'),
(466, 'VISUAL BASIC  .NET ERKIDE', 'ERCI05'),
(467, 'JAVA - J2EE', ''),
(468, 'Seguridad en el Desarrollo Web', ''),
(469, 'Seguridad en el desarrollo web', ''),
(470, 'Sql Server 2005', 'ERCI12'),
(471, 'Excel 2003 Iniciación', ''),
(472, 'Project 2003 G2 - Hobetuz', 'IU702'),
(473, 'Excel 2003 - Avanzado  G2- Hobetuz', 'IU305'),
(474, 'Excel 2003 Iniciación G2', ''),
(475, 'TSO 01/2010 Técnico en Software Ofimático', 'IFCI17'),
(477, 'Project 2003', ''),
(478, '** Pedido Interno **', ''),
(479, 'Prácticas - PBBDD 01/2009 PBBDD - G1', ''),
(480, 'Prácticas - PBBDD 01/2009 PBBDD - G2', ''),
(481, 'WINDOWS XP PROFESSIONAL: USUARIO', 'IU108'),
(482, 'MICROSOFT WORD 2007: INICIACIÓN', 'IU210'),
(483, 'MICROSOFT WORD 2007: AVANZADO', 'IU211'),
(484, 'MICROSOFT EXCEL 2007: INICIACIÓN', 'IU309'),
(485, 'MICROSOFT EXCEL 2007: AVANZADO', 'IU310'),
(486, 'MICROSOFT POWERPOINT 2007', 'IU408'),
(487, 'MICROSOFT ACCESS 2007: INICIACIÓN', 'IU509'),
(488, 'MICROSOFT ACCESS 2007: AVANZADO', 'IU510'),
(489, 'MICROSOFT OUTLOOK 2007', 'IU607'),
(490, 'MICROSOFT PROJECT 2007', 'IU705'),
(491, 'MICROSOFT OFFICE 2007', 'IU805'),
(493, '01/2010 Programación Orientada a Objetos', 'EMIN3004'),
(494, 'TSO 03/2010 Técnico en Software Ofimático', 'IFCI17'),
(495, 'Excel 2003 - Avanzado G3', 'ERIU305'),
(496, 'Project 2003 G3 - Hobetuz', 'IU702'),
(497, 'Excel 2003 G1 (Bilbao)', ''),
(498, 'Excel 2003 G2  (Bilbao)', ''),
(499, 'Redes sociales G1  (Bilbao)', ''),
(500, 'Redes sociales G2  (Bilbao)', ''),
(501, 'Excel 2003 G1 (Donosti)', ''),
(502, 'Excel 2003 G2 (Donosti)', ''),
(503, 'Redes sociales G1  (Donosti)', ''),
(504, 'Redes sociales G2  (Donosti)', ''),
(505, 'Access Básico', ''),
(506, 'Excel Avanzado', ''),
(507, 'Velneo V7', ''),
(508, 'Office 2003', ''),
(509, 'Word 2003 G2', 'ERIU205'),
(510, 'Excel 2003 - Nivel medio G3', 'ERIU304'),
(511, 'Prácticas - TSO02/2010 Técnico Software', ''),
(512, 'TSO 02/2010 Técnico en Software Ofimático', 'IFCI17'),
(513, 'Prácticas - TSO01/2010 Técnico Software', ''),
(514, 'Access / Programación VBA', ''),
(515, 'Vacaciones 2010 (Merino)', ''),
(516, 'Excel 2003 - Nivel medio G1', 'ERIU304'),
(517, 'Gestión de Proyectos - Project 2007 G1', 'ERIU705'),
(518, 'Excel 2003 - Avanzado G1', 'ERIU305'),
(519, 'Taller de Word Avanzado', 'ERIU212'),
(520, 'Excel 2007 - Nivel medio G2', 'ERIU309'),
(521, 'Erkide 06', ''),
(522, 'Erkide 06', ''),
(523, 'Gestión de Proyectos - Project 2007 G2', 'ERIU705'),
(524, 'Mejora de la productividad con Outlook y Office 03', 'ERIU608'),
(525, 'Excel 2007 - Avanzado G2', 'IU310'),
(526, 'Visual .NET', 'ERCI05'),
(527, 'Microsoft Power Point 2003', 'ERIU402'),
(528, 'Deutsch für Anfänger', ''),
(529, 'Microsoft Access 2003', 'ERIU504'),
(530, 'Redes Sociales en la empresa', 'ERIU609'),
(531, 'Google Adwords Básico', 'ERIU610'),
(532, 'Soluciones Empresariales de Google', 'ERIU611'),
(533, 'Java SE (Standard Edition) - Online', 'ERCI19'),
(534, 'Microsoft SQL Server 2005 - Online', 'ERCI18'),
(535, 'Programación páginas web con ASP .NET - Online', 'ERCI17'),
(536, 'Programación páginas web con PHP - Online', 'ERCI16'),
(537, 'Introducción a Visual Basic.NET', 'ERCI05'),
(538, 'Programación páginas Web con ASP.NET - Online', 'ERCI17'),
(539, 'Adobe Photoshop CS 4 Básico - Online', 'ERDG111'),
(540, 'Adobe Photoshop CS 4 Avanzado - Online', 'ERDG112'),
(541, 'Windows Server 2003 Standard Edition - Online', 'ERIU109'),
(542, 'Microsoft Excel 2007: Avanzado', 'ERIU310'),
(543, 'Microsoft Excel 2007 (Experto) - Online', 'ERIU311'),
(544, 'Microsoft Excel 2007 (Avanzado) - Online', 'ERIU312'),
(545, 'Mejora de la productividad con Office y Outlook 20', 'ERIU608'),
(546, 'Introducción a Visual Basic.NET - ERKIDE', 'ERCI05'),
(547, 'Programación páginas Web con PHP - Online - ERKIDE', 'ERCI16'),
(548, 'Programación páginas Web con ASP.NET - Online - ER', 'ERCI17'),
(549, 'Microsoft SQL Server 2005 - Online - ERKIDE', 'ERCI18'),
(550, 'Java SE (Standard Edition) - Online - ERKIDE', 'ERCI19'),
(551, 'Adobe Photoshop CS 4 Básico - Online - ERKIDE', 'ERDG111'),
(552, 'Adobe Photoshop CS 4 Avanzado - Online - ERKIDE', 'ERDG112'),
(553, 'Windows Server 2003 Standard Edition - Online - ER', 'ERIU109'),
(554, 'Taller de Word Avanzado - ERKIDE', 'ERIU212'),
(555, 'Microsoft Excel 2003: Iniciación - ERKIDE', 'ERIU304'),
(556, 'Microsoft Excel 2003: Avanzado - ERKIDE', 'ERIU305'),
(557, 'Microsoft Excel 2007: Iniciación - ERKIDE', 'ERIU309'),
(558, 'Microsoft Excel 2007: Avanzado - ERKIDE', 'ERIU310'),
(559, 'Microsoft Excel 2007 (Experto) - Online - ERKIDE', 'ERIU311'),
(560, 'Microsoft Excel 2007 (Avanzado) - Online - ERKIDE', 'ERIU312'),
(561, 'Microsoft PowerPoint 2003 - ERKIDE', 'ERIU402'),
(562, 'Microsoft Access 2003: Iniciación - ERKIDE', 'ERIU504'),
(563, 'Mejora de la productividad con Office y Outlook 20', 'ERIU608'),
(565, 'Google Adwords Básico - ERKIDE', 'ERIU610'),
(566, 'Soluciones empresariales de Google - ERKIDE', 'ERIU611'),
(567, 'Microsoft Project 2007 - ERKIDE', 'ERIU705'),
(568, 'Windows Server 2003 Standard Edition - Online', 'ERIU109'),
(569, 'Adobe Photoshop CS 4 Básico - Online', 'ERDG111'),
(570, 'Adobe Photoshop CS 4 Avanzado - Online', 'ERDG112'),
(571, 'Microsoft Excel 2007 (Experto) - Online', 'ERIU311'),
(572, 'Microsoft Excel 2007 (Avanzado) - Online', 'ERIU312'),
(573, 'Microsoft Project 2007', ''),
(574, 'Visual Basic . NET', ''),
(575, 'Prácticas 01/2010 Programación Orientada a Objetos', ''),
(576, 'Java/JEE G1- Hobetuz', 'CI10'),
(577, 'Excel 2003 - Avanzado I', 'IU305'),
(578, 'CSS', ''),
(579, 'Excel 2003 Avanzado', ''),
(580, 'Microsoft Project 2003', ''),
(581, 'SOLMELIA', ''),
(582, 'Photoshop CS4 Básico - Online', ''),
(583, 'Photoshop CS4 Avanzado - Online', 'CI01'),
(585, 'Excel 2003 Avanzado', ''),
(586, 'Java/JEE G2- Hobetuz', 'CI10'),
(587, 'Office 2003 & Redes Sociales', ''),
(588, 'Adobe Photoshop CS 4 Básico - Online', 'ERDG111'),
(589, 'Adobe Photoshop CS 4 Avanzado - Online*COPIA', 'ERDG112'),
(590, 'Microsoft Excel 2007 (Experto) - Online*COPIA', 'ERIU311'),
(591, 'Project  2007', 'IU705'),
(592, 'Excel 2007 Avanzado', 'IU310'),
(593, 'Microsoft Excel 2007 (Avanzado) - Online*COPIA', 'ERIU312'),
(594, 'Informática Básica Gr.1', ''),
(595, 'Informática Básica Gr.2', ''),
(596, 'Office 2003', ''),
(597, 'Project  2007 (Gr.2)', 'IU705'),
(598, 'Informática Básica Gr.1 y 2', ''),
(599, 'Prueba de estados', 'CI01'),
(600, 'MICROSOFT WORD 2007: AVANZADO', 'IU211'),
(601, 'MICROSOFT ACCESS 2007: AVANZADO', 'IU510'),
(602, 'MICROSOFT OFFICE 2007', 'IU805'),
(603, 'MICROSOFT WORD 2010: INICIACIÓN', 'IU212'),
(604, 'MICROSOFT WORD 2010: AVANZADO', 'IU213'),
(605, 'MICROSOFT EXCEL 2010: INICIACIÓN', 'IU311'),
(606, 'MICROSOFT EXCEL 2010: AVANZADO', 'IU312'),
(607, 'MICROSOFT ACCESS 2010: INICIACIÓN', 'IU511'),
(608, 'MICROSOFT ACCESS 2010: AVANZADO', 'IU512'),
(609, 'MICROSOFT OUTLOOK 2010', 'IU608'),
(610, 'MICROSOFT PROJECT 2010', 'IU706'),
(611, 'MICROSOFT OFFICE 2010', 'IU806'),
(612, 'Tripartita Grupo Bentas', ''),
(613, '01/2011 Programación Orientada a Objetos', 'EMIN3004'),
(614, 'PBD 01-2011 - Programador BBDD relacionales', 'IFC4004'),
(615, 'Práctic.  01-2011 - Programador BBDD relacionales', ''),
(616, 'Java/JEE G1- Hobetuz (2011)', 'CI10'),
(617, 'Excel 2007 Avanz. G1- Hobetuz (2011)', ''),
(618, 'Project 2007 G1- Hobetuz (20011)', ''),
(619, 'Java/JEE G2- Hobetuz (2011)', ''),
(620, '178-Microsoft Excel 2003 Bas. (Online)', ''),
(621, '181-Microsoft Excel 2003 Avan. (Online)', ''),
(622, '196-Microsoft Access 2003 Bas. (Online)', ''),
(623, '199-Microsoft Access 2003 Avan. (Online)', ''),
(624, 'Word 2007 - Avanzado', ''),
(625, 'Excel 2007 - Inicio', ''),
(626, 'Access 2007 - Inicio', ''),
(627, 'Excel 2003 Gr.1 - Bilbao', ''),
(628, 'Excel 2003 Gr.2 - Bilbao', ''),
(629, 'Excel 2003 Gr.1 - Donosti', ''),
(630, 'Excel 2003 Gr.2 - Donosti', ''),
(631, 'Práct. 01/2011 Programación Orientada a Objetos', ''),
(632, 'Project 2007', ''),
(633, 'Excel 2007 Medio', ''),
(634, 'Taller de Word Avanzado', 'ERIU212'),
(635, 'Excel 2003 - Nivel medio', 'ERIU304'),
(636, 'Excel 2003 - Avanzado', 'ERIU305'),
(637, 'Social Media Marketing: Gestión de Redes Sociales', 'ERIU609'),
(638, 'Gestión de BBDD. Access 2003', 'ERIU504'),
(639, 'Social Media Marketing: Gestión de Redes Sociales', 'ERIU609'),
(640, 'Excel 2007 - Nivel medio', 'ERIU309'),
(641, 'Excel 2007 - Nivel Avanzado', 'ERIU310'),
(642, 'Presentaciones eficaces. Power Point 2003/2007', 'ERIU402'),
(643, 'JAVA. Introducción a JEE', 'ERCI10'),
(644, 'Publicidad en Internet. Soluciones Google', 'ERIU612'),
(645, 'Gestión de Proyectos. Project 2007', 'ERIU310'),
(646, 'Excel 2007 Avanzado', ''),
(647, 'Administración Sistemas Operativos', ''),
(648, 'Excel 2007 Avanzado - Hobetuz', 'IU310'),
(649, 'Microsoft Word 2007 Avanzado - Online (Gr.1)', 'ERO271'),
(650, 'Microsoft Word 2007 Avanzado - Online (Gr.2)', 'ERO271'),
(651, 'Microsoft Word 2007 Experto - Online (Gr.1)', 'ERO274'),
(652, 'Microsoft Word 2007 Experto - Online (Gr.2)', 'ERO274'),
(653, 'Microsoft Excel 2007 Avanzado - Online (Gr.1)', 'ERIU312'),
(654, 'Microsoft Excel 2007 Avanzado - Online (Gr.2)', 'ERIU312'),
(655, 'Microsoft Excel 2007 Experto - Online (Gr.1)', 'ERIU311'),
(656, 'Microsoft Excel 2007 Experto - Online (Gr.2)', 'ERIU311'),
(657, 'Adobe Photoshop CS 4 Básico - Online (Gr.1)', 'ERDG111'),
(658, 'Adobe Photoshop CS 4 Básico - Online (Gr.2)', 'ERDG111'),
(659, 'Adobe Photoshop CS 4 Avanzado - Online (Gr.1)', 'ERDG112'),
(660, 'Adobe Photoshop CS 4 Avanzado - Online (Gr.2)', 'ERDG112'),
(661, 'Microsoft SQL Server 2005 - Online', 'ERCI18'),
(662, 'Windows Server 2003 Standard Edition - Online', 'ERIU109'),
(663, 'Linux Básico - Online', 'ERO328'),
(664, 'Linux Avanzado - Online', 'ERO331'),
(665, 'Programación páginas web con ASP .NET - Online', 'ERCI17'),
(666, 'Programación páginas web con PHP - Online', 'ERCI16'),
(667, 'Visual Basic .NET - Online', 'ERCI05'),
(668, 'MICROSOFT WORD 2007 AVANZADO - Online - ERKIDE', 'ERO271'),
(669, 'MICROSOFT WORD 2007: EXPERTO - Online', 'ERO274'),
(670, 'GESTIÓN DE PROYECTOS CON METODOLOGÍAS ÁGILES: SCRU', 'CI16'),
(671, 'Publicidad en Internet. Soluciones Google', 'ERIU612'),
(672, 'LINUX BÁSICO - Online', 'ERO328'),
(673, 'LINUX AVANZADO - Online', 'ERO331'),
(674, 'SOCIAL MEDIA MARKETING: GESTIÓN DE REDES SOCIALES', 'ERIU609'),
(675, 'Project 2007', 'IU705'),
(676, 'Webex Meeting Center', ''),
(677, 'Excel 2007 - Iniciación', ''),
(678, 'Visual Basic .NET - Online', ''),
(679, 'UF1289 - Diseńo elementos sofware', 'UF1289'),
(680, 'DISEŃO DE ELEMENTOS SOFTWARE CON TECNOLOGIAS\nBASAD', 'UF1289'),
(681, 'Excel & Access 2003', ''),
(682, 'Excel 2007 Gr1', ''),
(683, 'Excel 2007 Gr2', ''),
(684, 'Excel 2007 Gr3', ''),
(685, 'Excel 2007 Gr4', ''),
(686, 'Excel 2007 Gr5', ''),
(687, 'Excel 2007 Gr6', ''),
(688, 'UF1290 - Impl e Int de elem Soft  Basadas en comp', 'UF1290'),
(689, 'IMPLEMENTACION E INTEGRACION DE ELEMENTOS\nSOFTWARE', 'UF1290'),
(691, 'Microsoft Excel 2007 (Básico) - Online', 'E286'),
(692, 'Microsoft Excel 2007 (Avanzado) - Online', 'ERIU312'),
(693, 'Microsoft Excel 2007 (Experto) - Online', 'ERIU311'),
(694, 'Microsoft Access 2007 (Básico) - Online', 'E310'),
(695, 'Microsoft Access 2007 (Avanzado) - Online', 'E313'),
(696, 'Microsoft Project 2010 - Online', 'E25023'),
(697, 'Java SE (Standard Edition) - Online', 'ERCI19'),
(698, 'Microsoft SQL Server 2005 - Online', 'ERCI18'),
(699, 'Microsoft Visual Basic .NET - Online', 'E9202'),
(700, 'Programación páginas web con ASP .NET 3.5 - Online', 'ERCI17'),
(702, 'Social Media Marketing: Gestión de Redes Sociales', 'ERIU609'),
(703, 'Excel 2007 Avanzado', 'IU310'),
(704, 'Microsoft Project 2007', 'IU705'),
(705, 'Microsoft Excel 2007 (Básico)', 'E286'),
(706, 'Microsoft Excel 2007 (Completo)', 'E283'),
(707, 'Microsoft Access 2007 (Básico)', 'E310'),
(708, 'Microsoft Access 2007 (Avanzado)', 'E313'),
(709, 'Microsoft Visual Basic .NET - Online', 'E514'),
(710, 'UF1291 Desplie. y puesta en func. de compon Soft', ''),
(711, 'Social Media Marketing. Gestión de Redes Sociales', 'ERIU609'),
(712, 'Microsoft Excel 2007 (Completo) - Online', ''),
(713, 'Microsoft PowerPoint 2007 - Online', 'E2268'),
(714, 'Visual Basic 2008 - Online', 'E9202'),
(715, 'Office 2003 & Redes Sociales', ''),
(716, 'SQL Server 2008 Admin&Progr.', ''),
(717, 'Microsoft Excel 2007 (Básico) - Online', ''),
(718, 'Microsoft Excel 2007 (Avanzado) - Online', ''),
(719, 'Microsoft Excel 2007 (Experto) - Online', ''),
(720, 'Microsoft Access 2007 (Básico) - Online', ''),
(721, 'Microsoft Access 2007 (Avanzado) - Online', ''),
(722, 'Microsoft Project 2010 - Online', ''),
(723, 'Java SE (Standard Edition) - Online', ''),
(724, 'Microsoft SQL Server 2005 - Online', ''),
(725, 'Microsoft Visual Basic .NET - Online', ''),
(726, 'Programación páginas web con ASP .NET 3.5 - Online', ''),
(727, 'Excel 2007 Avanzado', ''),
(728, 'Microsoft Project 2007', ''),
(729, 'Social Media Marketing. Gestión de Redes Sociales', ''),
(730, 'Java/JEE', 'ERCI10'),
(731, 'Herramientas Ofimáticas para la busqueda de Empleo', 'CI17'),
(732, '13296 - Herramientas Ofimáticas', 'CI17'),
(733, 'Excel 2007 Avanzado', ''),
(734, 'Access 2007 Avanzado', ''),
(735, 'Office', ''),
(736, 'Excel 2007 Gr4', ''),
(737, 'Excel 2007 Gr5', ''),
(738, 'Excel 2007 Gr6', ''),
(739, '01/2012 POO -  Programación Orientada a Objetos', 'EMIN3004'),
(740, '02/2012 POO - Programación Orientada a objetos', ''),
(741, 'Excel 2007 - Básico', 'IU309'),
(748, 'Excel 2007 Experto Online', ''),
(749, 'Access 2007 Avanzado Online', ''),
(750, 'Linux Básico Online', ''),
(751, 'Excel 2007 Avanzado', 'IU310'),
(752, 'Excel 2007 Avanzado', ''),
(753, 'Microsoft Outlook 2007 Online', '2666'),
(754, 'Microsoft Power Point  2007 Online', 'E2268'),
(755, 'Microsoft Word 2007 (Experto) Online', 'ERO274'),
(756, 'Microsoft Access 2007 (Avanzado) Online', ''),
(757, 'Microsoft Outlook 2007 Online', ''),
(758, 'Microsoft Power Point  2007 Online', ''),
(759, 'Microsoft Outlook 2007 Online', 'ERCI20'),
(760, 'Office Gr.2', ''),
(761, 'Office Gr.3', ''),
(762, 'Office Gr.4', ''),
(763, 'Prueba FTP', ''),
(764, 'Bonificados Online', ''),
(765, 'Project 2007', 'IU705'),
(767, 'UF1844 - Desa.  Aplic. Web en entornos servidor', ''),
(768, 'UF1845- Acceso a Datos Aplic. Web entorno serv.', ''),
(769, 'UF1846 - Desarrollo aplicaciones Web Distribuidas', ''),
(770, 'Project 2007 Gr. 1', ''),
(771, 'Project 2007 Gr. 2', ''),
(772, 'Project 2007', ''),
(773, 'Excel 2007 Gr 1', ''),
(774, 'Excel 2007 Gr 2', ''),
(775, 'Excel 2007 Gr 3', ''),
(776, 'Excel 2007 Avanzado', 'IU310'),
(777, 'Taller de Word Avanzado', 'ERIU212'),
(778, 'OpenOffice Writer. Creación de Documentos', 'ERIU721'),
(779, 'Microsoft Excel 2007. Nivel medio', 'IU309'),
(780, 'Microsoft Excel 2007 Avanzado', 'IU310'),
(781, 'Open Office Calc. Hojas de Cálculo', 'ERIU706'),
(782, 'Open Office Calc. Hojas de Cálculo. Avanzado', 'ERIU707'),
(783, 'Gestión de Bases de Datos. Microsoft Access 2007', 'IU509'),
(784, 'OpenOffice Base. Gestión de Bases de Datos', 'ERIU708'),
(785, 'Redes Sociales. Aplicación Empresarial Gr.1', 'ERIU609'),
(786, 'Redes Sociales. Aplicación Empresarial Gr.2', 'ERIU609'),
(787, 'Publicidad en Internet. Soluciones Google', 'ERIU612'),
(788, 'Planificación y Gestión de Proyectos. Project 2007', 'IU705'),
(789, 'Presentaciones Eficaces. PowerPoint 2007', 'IU400'),
(790, 'OpenOffice Impress. Presentaciones eficaces', 'ERIU709'),
(791, 'Microsoft Excel 2007 Avanzado - Online  (T)', 'ERIU312'),
(792, 'Microsoft Excel 2007 Experto - Online  (T)', 'ERIU311'),
(793, 'Microsoft Access 2007 - Online (T)', 'ERIU711'),
(794, 'Microsot Access 2007 Avanzado - Online (T)', 'ERIU712'),
(795, 'Microsoft Project 2010 - Online (T)', 'ERIU713'),
(796, 'Java SE - Online (T)', 'ERCI19'),
(797, 'Adobe Photoshop CS 4 Básico - Online Gr.1', 'ERDG111'),
(798, 'Adobe Photoshop CS 4 Básico - Online', 'ERDG111'),
(799, 'Adobe Photoshop CS 4 Avanzado - Online (Gr.1)', 'ERDG112'),
(800, 'Adobe Photoshop CS 4 Avanzado - Online(Gr2)', 'ERDG112'),
(801, 'Windows Server 2003 Standard Edition - Online', 'ERIU109'),
(802, 'Microsoft SQL Server 2005 - Online', 'ERCI18'),
(803, 'Linux Básico - Online', 'ERO328'),
(804, 'Linux Avanzado - Online', 'ERO331'),
(805, 'Programación páginas web con ASP .NET - Online', 'ERCI17'),
(806, 'Programación páginas web con PHP - Online', 'ERCI16'),
(807, 'Marketing Digital - Online', 'ERIU714'),
(808, 'Firma y Facturación Electrónica – Online', 'ERIU715'),
(809, 'Estrategias efectivas de E-mail Marketing – Online', 'ERIU716'),
(810, 'Soluciones TICS para la gest. de clientes - Online', 'ERIU717'),
(811, 'Comercio electrónico para Pymes – Online', 'ERIU718'),
(812, 'Comunicación en los medios Sociales – Online', 'ERIU719'),
(813, 'Publicidad en Internet - Online', 'ERIU720'),
(814, 'OpenOffice Calc. Hojas de Calculo', 'ERIU706'),
(815, 'OpenOffice Calc. Hojas de Calculo. Nivel avanzado', 'ERIU707'),
(816, 'OpenOffice Base. Gestión de Bases de Datos', 'ERIU708'),
(817, 'Openoffice Impress. Presentaciones Eficaces', 'ERIU709'),
(818, 'Microsoft Access 2007 - Online', 'ERIU711'),
(819, 'Microsoft Access 2007: Avanzado - Online', 'ERIU712'),
(820, 'Microsoft Project 2010. Online', 'ERIU713'),
(821, 'Marketing Digital - Online', 'ERIU714'),
(823, 'Estrategias Efectivas de E-mail Marketing - Online', 'ERIU716'),
(824, 'Soluciones Tics para la Gestión de Clientes - Onli', 'ERIU717'),
(825, 'Comercio Electrónico para Pymes - Online', 'ERIU718'),
(826, 'Comunicación en los Medios Sociales - Online', 'ERIU719'),
(827, 'Publicidad en Internet - Online', 'ERIU720'),
(828, 'Excel 2007 Avanzado Gr.1', ''),
(829, 'Excel 2007 Avanzado Gr.2', ''),
(830, 'Excel 2007 Avanzado', 'IU310'),
(832, 'Firma y Facturación Electrónica - Online', 'ERIU715'),
(833, 'Openoffice Writer. Creación de Documentos', 'ERIU721'),
(834, 'Construcción de páginas WEB', 'UF1302'),
(835, 'UF1302 - Construcción de páginas WEB', 'UF1302'),
(836, 'Microsoft Access 2003', ''),
(837, 'Resolución prevencion de problemas con el pc', ''),
(838, 'Excel 2003 - Nivel Básico', ''),
(839, 'Excel 2003 - Nivel Básico (Grupo 2)', ''),
(840, 'Excel 2003 - Nivel Avanzado', ''),
(841, 'Las TIC´s en la prestación de servicios (Grupo 1)', ''),
(842, 'Las TIC´s en la prestación de servicios (Grupo 2)', ''),
(843, 'Las TIC´s en la prestación de servicios (Grupo 3)', ''),
(844, 'Las TIC´s en la prestación de servicios (Grupo 4)', ''),
(845, 'UF1289 - Diseńo elementos software', 'UF1289'),
(846, 'UF1290 - Impl Int de elem Soft  Basadas en comp', 'UF1290'),
(847, 'UF1291 - Desplie. y puesta en func. de compon Soft', ''),
(848, 'Excel 2007 Avanzado Gr.1', ''),
(849, 'Excel 2007 Avanzado Gr.2', ''),
(850, 'Administrativos (Construcción)', 'GC01'),
(851, 'Albańilería  (Construcción)', 'GC02'),
(852, 'Formación inicial aula permanente  (Construcción)', 'GC03'),
(853, 'Cantería (Construcción)', 'GC04'),
(854, 'Demolición y Rehabilitación (Construcción)', 'GC05'),
(855, 'Electricidad  (Construcción)', 'GC06'),
(856, 'Encofrados  (Construcción)', 'GC07'),
(857, 'Ferrallado (Construcción)', 'GC08'),
(858, 'Fontanería (Construcción)', 'GC09'),
(859, 'Gerentes Construcción', 'GC10'),
(860, 'Mandos Intermedios  (Construcción)', 'GC11'),
(861, 'Operadores de vehículos y maq. movimiento de tierr', 'GC12'),
(862, 'Formación de NIVEL BÁSICO de prev. en la construcc', 'GC13'),
(863, 'Operador de aparatos elevadores  (Construcción)', 'GC14'),
(864, 'Operador de equipos manuales  (Construcción)', 'GC15'),
(865, 'Pintura  (Construcción)', 'GC17'),
(866, 'Responsables de obra y técnicos de ejecución  (Con', 'GC18'),
(867, 'Revestimiento de yeso  (Construcción)', 'GC19'),
(868, 'Solados y alicatados  (Construcción)', 'GC20'),
(869, 'Administrativos (Metal)', 'GM01'),
(870, 'Instalación de ascensores  (Metal)', 'GM02'),
(871, 'Directivos metal', 'GM03'),
(872, 'Electricidad: montaje y mantenimiento de instalaci', 'GM04'),
(873, 'Ferrallado (Metal)', 'GM05'),
(874, 'Fontanería e instalaciones de climatización  (Meta', 'GM06'),
(875, 'Responsables de obra y tecnicos de ejecución  (Met', 'GM07'),
(876, 'Instalaciones, reparaciones, montajes, estructuras', 'GM08'),
(877, 'Formación de NIVEL BASICO en el sector del metal', 'GM09'),
(878, 'Operador de elementos de elevación  (Metal)', 'GM10'),
(879, 'Operador de equipos manuales  (Metal)', 'GM11'),
(880, 'Responsables de obra y tecnicos de ejecución  (Met', 'GM12'),
(881, 'Java/JEE', 'CI10'),
(882, 'Excel 2007 Avanzado (Gr. 2)', ''),
(883, 'Google Drive', ''),
(884, 'Las TIC´s en la prestación de servicios (Grupo1-1)', ''),
(885, 'Las TIC´s en la prestación de servicios (Grupo1-2)', ''),
(886, 'Las TIC´s en la prestación de servicios (Grupo3-2)', ''),
(887, 'PHP', ''),
(888, 'Microsoft Access 2007', ''),
(889, 'SCRUM', ''),
(890, 'Excel 2007/2010 Avanzado', ''),
(891, 'Informática Básica', ''),
(892, 'Excel 2003 Nivel Medio', ''),
(893, 'HTML 5 y CSS3', '2013001'),
(894, 'HTML 5 y CSS3', '2013001(25062013-042'),
(895, 'Power Point 2007', ''),
(896, 'Macromedia Dreamweaver 8', '388'),
(897, 'Macromedia Flash 8', '391'),
(898, '01/2013 POO -  Programación Orientada a Objetos', 'EMIN3004'),
(899, 'Prezzi. Presentaciones Gráficas', ''),
(900, 'Programación páginas web con ASP.NET', 'CI17_P'),
(901, 'Presentaciones eficaces con PREZI', 'CI18_P'),
(902, 'Google Drive', 'CI19_P'),
(903, 'HTML5 y CSS3', 'CI20_P'),
(904, 'Android, desarrollo de aplicaciones para dispositi', 'CI21_P'),
(905, 'Productividad con Outlook', 'CI22_P'),
(906, 'OpenOffice (Básico)', 'CI23_P'),
(907, '02/2013 POO -  Programación Orientada a Objetos', 'EMIN3004'),
(908, '01/2013 PBD -  Programador Bases de Datos Relacion', 'IFCI400413'),
(909, 'HTML5 Y CSS3', ''),
(910, 'Microsoft Word 2013 (Básico)', 'CI24_P'),
(911, 'Microsoft Word 2013 (Avanzado)', 'CI25'),
(912, 'Microsoft Excel 2013 (Iniciaciación)', 'CI26'),
(913, 'Microsoft Excel 2013 (Avanzado)', 'CI27'),
(914, 'Microsoft Access 2013 (Iniciaciación)', 'CI28'),
(915, 'Microsoft Access 2013 (Avanzado)', 'CI29'),
(916, 'Microsoft Outlook 2013', 'CI30'),
(917, '24020 - Protección de Datos (Online)', ''),
(918, '289 - Excel 2007 Avanzado (Online)', ''),
(919, '28231 - Control de la Calidad N (ISO) (Online)', ''),
(920, '27776 - Certificados Digitales (Online)', ''),
(921, '292 - Excel 2007 Experto', ''),
(922, 'Photoshop', 'CI31'),
(923, 'IFCI4004-2013 PROGRAMADOR BASES DE DATOS RELACIONA', 'IFCI400413'),
(924, 'Pizarras electrónicas', ''),
(925, 'Oracle 10g (Online)', ''),
(926, '505 - Java SE (Standard Edition) (Online)', ''),
(927, 'UF1844 - Desa Apliciones Web entorno Servidor', ''),
(928, '526 - Oracle 10G (Online)', ''),
(929, '23348 - Excel 2010 Facil (Online)', ''),
(930, '190 -  Excel 2003 Facil (Online)', ''),
(931, '23134 - Access 2010 Completo (Online)', ''),
(932, 'UF1845 - Acceso Datos  Apliciones Web ent Servidor', ''),
(933, 'UF1846 - Desarrollo Aplic. Web Distribuidas', ''),
(934, 'MF0493_3 - Implantación Aplic. Web entorno interne', ''),
(935, 'Contabilidad', 'CI32'),
(936, 'Nóminas y Seguros Sociales', 'CI33'),
(937, 'ContaPlus', 'CI34'),
(938, 'NominaPlus', 'CI35'),
(939, 'Excel 2003 Avanzado', ''),
(940, 'Microsoft Word 2013 (Iniciación)', 'CI24'),
(941, 'FacturaPlus', 'CI36'),
(942, 'SYMPHONY 2 DESARROLLO DE APLICACIONES WEB', 'CI37'),
(943, 'Windows 7 Administración', 'CI39'),
(944, 'Windows 8 Administración', 'CI38'),
(945, 'Windows Server 2012', 'CI40'),
(946, 'Actualización conocimientos de Word 2003 a Word 20', 'CI41'),
(948, 'Actualización conocimientos de Excel 2003 a Excel ', 'CI42'),
(949, 'Actualización conocimientos de PowerPoint2003 a Po', 'CI43'),
(950, 'Actualización conocimientos de Access 2003 a Acces', 'CI44'),
(951, '292 - Excel 2007 experto (Online)', ''),
(952, '25023 - Project 2010 (Online)', ''),
(953, 'IFCT0309 - Montaje y Repar. De Sist. Microinformát', 'IFCT0309_IP'),
(954, '289 - Excel 2007 Avanzado (Online)', ''),
(955, 'Prezi. Presentaciones Gráficas', ''),
(956, 'Contaplus Avanzado', ''),
(957, '28231 - Control de la calidad normas ISO(Online)', ''),
(958, '27776 -Certificados Digitales (Online)', ''),
(959, '292 - Excel 2007 Experto (Online)', ''),
(960, 'IFCT0309 - Montaje y Repar. De Sist. Microinformát', 'IFCT0309_IP'),
(961, '25023 - Microsoft Project 2010 (Online)', ''),
(962, 'Pizarras Digitales & Tablets', ''),
(963, 'Windows 7/Windows 8 (Gr.1)', ''),
(964, 'Windows 7/Windows 8 (Gr.2)', ''),
(965, 'Windows Server 2012 (Gr.1)', ''),
(966, 'Windows Server 2012 (Gr.2)', ''),
(967, 'NominaPlus', 'ERCI35'),
(968, 'ContaPlus', 'ERCI34'),
(969, 'Google Drive. Documentos en la Nube', 'ERCI19_P'),
(970, 'Microsoft Excel 2010 - Nivel medio', 'ERIU-311'),
(971, 'Microsoft Excel 2010 - Avanzado', 'ERIU-312'),
(972, 'Presentaciones eficaces con PREZI', 'ERCI18P'),
(973, 'Planificación y Gestión de  Proyectos. Project 10', 'ERIU-706'),
(974, 'Marketing en Redes Sociales', 'ERIU-609'),
(975, 'Publicidad en Internet. Soluciones Google', 'ERKIU612'),
(976, 'Gestión de Bases de Datos para no expertos', 'ERIU-512'),
(977, '23384 - Excel 2010 Avanzado (Online)', '23384'),
(978, '23312 - Excel 2010 Experto (Online)', '23312'),
(979, '23098-Microsoft Access 2010 - Online', '23098'),
(980, '23062-Microsoft Access 2010 Avanzado - Online', '23062'),
(981, '25023-Microsoft Project 2010 – Online', '25023'),
(982, '505-JAVA SE - Online', 'ER505'),
(983, 'Productividad con Outlook (Gr1)', ''),
(984, 'Productividad con Outlook (Gr 2)', ''),
(985, '01/2013 POO -  Practicas POO', ''),
(986, '01/2013 POO -  Practicas POO', ''),
(987, '01/2013 PBD -  Practicas PBDR', ''),
(988, 'PREZI - Grupo 2', ''),
(989, 'PREZI - Grupo 1', ''),
(990, 'Pizarras Digitales - Grupo 1', ''),
(991, 'Actualización Visual 6.0 a .NET', ''),
(992, 'Adobe Photoshop CS 6 Básico - Online', 'ER28375'),
(993, 'Adobe Photoshop CS 6 Básico - Online', 'ER28375'),
(994, 'Adobe Photoshop CS 6 Avanzado - Online', 'ER28389'),
(995, 'Adobe Photoshop CS 6 Avanzado - Online', 'ER28389'),
(996, 'Microsoft SQL Server 2005 - Online', 'ER523'),
(997, 'Linux Básico - Online', 'ER328'),
(998, 'Linux Avanzado - Online', 'ER331'),
(999, 'Diseńo web avanzado con HTML5 y CSS3 – Online', 'ER24290'),
(1000, 'Comercio electrónico. Aplicación práctica (Online)', 'ERKI07'),
(1001, 'Seguridad en el comercio electrónico (Online)', 'ERK118'),
(1002, 'Experto en publicidad y posicion. en Internet', 'EREI02'),
(1003, 'Community Manager (Online)', 'ERK027'),
(1004, 'Internet cómo canal de comercializ. y de relación', 'ERK053'),
(1005, 'Seguridad y protección de redes informát. (Online)', 'ERK105'),
(1006, 'Estrategias efectivas de e-mail marketing (Online)', 'ERK110'),
(1007, 'Publicidad en Internet (Online)', 'ERK114'),
(1008, 'Microsoft Excel 2010 Avanzado (Erkide 2014)', '23384'),
(1009, 'Microsoft Excel 2010 Experto (Erkide 2014)', 'ER23312'),
(1010, 'Microsoft Excel 2010 Experto (Erkide 2014)', 'ER23312'),
(1011, 'Microsoft Access 2010 Avanzado (Erkide 2014)', '23062'),
(1012, 'Microsoft Access 2010 Avanzado (Erkide 2014)', '23062'),
(1013, 'Microsoft Project 2010 (Erkide 2014)', '25023'),
(1014, 'JAVA SE (Erkide 2014)', 'ER505'),
(1015, 'Adobe Photoshop CS 6 Básico (Erkide 2014)', 'ER28375'),
(1016, 'Adobe Photoshop CS 6 Avanzado(Erkide 2014)', 'ER28389'),
(1017, 'Microsoft SQL Server 2005 (Erkide 2014)', 'ER523'),
(1018, 'LINUX Básico (Erkide 2014)', 'ER328'),
(1019, 'Linux Avanzado (Erkide 2014)', 'ER331'),
(1020, 'Diseńo WEB avanzado con HTML5 y CSS3 (Erkide 2014)', 'ER24290'),
(1021, 'Comercio electrónico aplicación práctica (Erkide 2', 'ERKI07'),
(1022, 'Seguridad en el comercio electrónico (Erkide 2014)', 'ERK118'),
(1023, 'Experto en publicidad y posicionamiento en Interne', 'EREI02'),
(1024, 'Community Manager (Erkide 2014)', 'ERK027'),
(1025, 'Internet cómo canal de comercialización y de relac', 'ERK053'),
(1026, 'Seguridad y protección de redes informáticas (Erki', 'ERK105'),
(1027, 'Estrategias efectivas de E-Mail Marketing (Erkide ', 'ERK110'),
(1028, 'Publicidad en Internet (Erkide 2014)', 'ERK114'),
(1029, 'Presentaciones Eficaces con PREZI (Erkide 2014)', 'ERCI18P'),
(1030, 'Planificación y gestión de proyectos PROJECT 2010 ', 'ERIU-706'),
(1031, 'Publicidad en Internet soluciones Google (Erkide 2', 'ERKIU612'),
(1032, 'Marketing con Redes Sociales (Erkide 2014)', 'ERIU-609'),
(1033, 'Gestión de Bases de Datos para no expertos (Erkide', 'ERIU-512'),
(1034, 'Microsoft Excel 2010 Nivel Medio (Erkide 2014)', 'ERIU-311'),
(1035, 'Google Drive. Documentos en la nube (Erkide 2014)', 'ERCI19_P'),
(1036, 'Contaplus 2012 (Erkide 2014)', 'ERCI34'),
(1037, 'NominaPlus 2012 (Erkide 2014)', 'ERCI35'),
(1038, 'PREZI - GEHILAN', ''),
(1039, 'Project 2010', ''),
(1040, 'Productividad con Outlook (Gr 3)', ''),
(1041, 'Productividad con Outlook (Gr 4)', ''),
(1042, 'Actualización Excel 2003 a 2010 (Gr. 1)', ''),
(1043, 'Actualización Excel 2003 a 2010 (Gr. 2)', ''),
(1044, 'Actualización Access 2003 a 2010 (Gr. 1)', ''),
(1045, 'Actualización Access 2003 a 2010 (Gr. 2)', ''),
(1046, 'Actualización Word 2003 a 2010 (Gr. 1)', ''),
(1047, 'Actualización Word 2003 a 2010 (Gr. 2)', ''),
(1048, 'Actualización PowerPoint 2003 a 2010 (Gr. 1)', ''),
(1049, 'Actualización PowerPoint 2003 a 2010 (Gr. 2)', ''),
(1050, 'romocionar mi comercio a través de Internet', ''),
(1051, 'Integración de las Redes Sociales en la web', ''),
(1052, 'Vender mis productos a través de mi tienda online', ''),
(1053, 'Diseńo de cartelería con Microsoft Publisher', ''),
(1054, 'El blog como herramienta de venta', ''),
(1055, 'Libro-registro de operaciones económicas', ''),
(1056, 'Excel 2003 - Iniciación', ''),
(1057, 'Excel 2007 Avanzado', 'IU310'),
(1058, 'PHP JavaScript y NodeJS', ''),
(1059, 'Actualización Office 2003 a 2010', ''),
(1060, 'Redes Sociales Gr1', ''),
(1061, 'Redes Sociales Gr2', ''),
(1062, 'Redes Sociales Gr3', ''),
(1063, 'Desarrollo de aplicaciones WEB en el entorno servi', 'IFCD0210UF1844'),
(1064, 'UF1844 - Desarrollo Aplic web en el entorno servid', 'IFCD0210UF1844'),
(1065, 'Microsoft Project 2013', 'CI45'),
(1066, 'Actualización W in 8- Word 213 - Excel 13 - Gr1', ''),
(1067, 'Actualización W in 8- Word 213 - Excel 13 - Gr2', ''),
(1068, 'SharePoint Usuario Avanzado', 'CI46'),
(1069, 'Tablet Android, herramienta de productividad', 'CI47'),
(1070, 'Productividad con Outlook Gr1', ''),
(1071, 'Productividad con Outlook Gr2', ''),
(1072, 'Productividad con Outlook Gr3', ''),
(1073, 'Productividad con Outlook Gr4', ''),
(1074, 'PREZI - Grupo 3', ''),
(1075, '28934 - Windows 8 (Fácil) - Online', ''),
(1076, '289-Microsoft Excel 2007 (Avanzado) - Online', ''),
(1077, '292 - Microsoft Excel 2007 (Experto) - Online', ''),
(1078, 'Excel 2013 - Tablas Dinámicas', ''),
(1079, '02/2013 POO -  Practicas POO', ''),
(1080, 'NominaPlus 2013', ''),
(1081, 'Excel 2010', ''),
(1082, 'Excel 2007. Tablas Dinámicas', ''),
(1083, 'Project 2007 - Gr.1', ''),
(1084, 'Project 2007 - Gr.2', ''),
(1085, 'Manejo de Tabletas y Aplicaciones Gr. 1', ''),
(1086, 'Manejo de Tabletas y Aplicaciones Gr. 2', ''),
(1087, 'Windows Server 2012', ''),
(1088, 'PREZI', ''),
(1089, 'Share Point', ''),
(1090, 'Windows Server 2012', ''),
(1091, 'Android. Desarrollo de Aplicaciones', ''),
(1092, '24290-Diseńo web avanzado con HTML5 y CSS3', ''),
(1093, 'Android. Desarrollo de Aplic para Dispositivos Mov', 'CI52'),
(1094, 'IFCD0210- Desarrollo de Aplic. Con Tecn WEB', 'IFCD0210_FIC'),
(1095, 'Excel 2007/2010 Avanzado', 'IU310'),
(1096, 'UF1841-Elabor de Doc Web mediante Leng de Marcas', 'CI20_P'),
(1097, 'Marketing con Redes Sociales Gr.2', ''),
(1098, 'MICROSOFT POWERPOINT 2010', 'IU409'),
(1099, 'PRACT-IFCT0309 - Montaje y Repar. De Sist. Micro', ''),
(1100, 'Google APP´S', ''),
(1101, 'PREZI. Presentaciones Eficaces', ''),
(1102, 'Libro-registro de operaciones económicas', ''),
(1103, 'Pract Txurdianaga Aratabe', ''),
(1104, 'Responsive Web Design - Desa Gr.1', ''),
(1105, 'Responsive Web Design - Desa Gr.2', ''),
(1106, 'Responsive Web Design - Analist.  Gr.1', ''),
(1107, 'Android. Desarrollo de Aplicaciones para dispositi', 'CI52'),
(1108, 'Creación y generación de páginas web con Wordpress', 'CI50'),
(1109, 'Joomla', ''),
(1110, 'Ilustrator', ''),
(1111, 'Contabilidad General', ''),
(1112, 'GOOGLE DRIVE. DOCUMENTOS EN LA NUBE', 'CI19'),
(1113, 'GOOGLE APPS', 'CI53'),
(1114, 'RESPONSIVE WEB DESIGN (RWD)', 'CI49'),
(1115, 'APRENDE A UTILIZAR BLOGS', 'CI55'),
(1116, 'JOOMLA', 'CI51'),
(1117, 'ADOBE ILLUSTRATOR', 'CI54'),
(1118, 'MICROSOFT EXCEL: BASES DE DATOS, TABLAS DINAMICAS', 'CI56'),
(1119, 'Desarrollo de aplicaciones con tecnologías web', 'IFCD0210_FIC'),
(1120, 'Cómo posicionar páginas WEB - Online', ''),
(1121, 'Productividad con Outlook Gr.1', ''),
(1122, 'Aprende a utilizar Blogs', ''),
(1123, 'Google APP´s', ''),
(1124, 'IFCD0210- Desarrollo de Aplic. Con Tecn WEB', ''),
(1125, 'Administración de permisos y accesos al servidor', ''),
(1126, 'Tablas Dinámicas y Macros Gr.1', ''),
(1127, 'Tablas Dinámicas y Macros Gr.2', ''),
(1128, 'Administrador de Sistemas: Mant. Equipos', ''),
(1129, 'PREZI', ''),
(1130, 'PREZI. Presentaciones Eficaces', ''),
(1131, '358 - OpenOffice 2.1 (Básico)', ''),
(1132, 'IFCD0112 - PROGRAMACIÓN CON LENG OO Y BBDD Relacio', 'MF0227_3'),
(1133, 'Microsoft Excel 2003 (Básico) - Online', ''),
(1134, 'MF0227_3 Programación orientada a objetos', 'MF0227_3'),
(1135, 'Excel 2003 Iniciación', ''),
(1136, 'Excel (Nivel Básico)', ''),
(1137, 'Libro de registro de operaciones', ''),
(1138, 'Diseńo de cartelería avanz con Microsoft Publisher', ''),
(1139, 'Prácticas IFCD0210 - GFI', ''),
(1140, 'Responsive Web Design - Analist.  Gr.2', ''),
(1141, 'Administración WordPress', ''),
(1142, 'HTML5 y CSS3', ''),
(1143, '28459-Program pág web JavaScript ASP NET 35(VB)', ''),
(1144, '30319- Windows Server 2012 (Online)', ''),
(1145, '617- Microsoft Word 2007 Advanced (Ingles)(Online)', ''),
(1146, '614- Microsoft Excel 2007 Advanced (ingles)(Online', ''),
(1147, 'TMEN01-English - Beginner A1 (Online)', ''),
(1148, 'TEMN08- English - Advanced +B2 (Online)', ''),
(1149, 'TMEN07- English - Advanced B2 (Online)', ''),
(1150, 'Windows 7 - Excel 2007 Iniciación', ''),
(1151, 'Excel 2010', ''),
(1152, '14195-Microsoft Visual C# 2008', ''),
(1153, 'Microsoft Excel 2010', 'IU312'),
(1154, 'JAVA/JEE', ''),
(1155, 'JClic, Hot Potatoes, ExeLearning Gr.1', ''),
(1156, 'JClic, Hot Potatoes, ExeLearning Gr.2', ''),
(1157, 'Tutorización  JClic, Hot Potatoes, ExeLearning', ''),
(1158, 'IFCD0210- Desarrollo de Aplic. Con Tecn WEB', 'IFCD0210_FIC'),
(1159, 'ASP . NET', ''),
(1160, 'HTML5, CSS3, JS, JQuery y NodeJS', ''),
(1161, 'Microsoft Excel 2010', ''),
(1162, 'Microsoft Excel 2013', ''),
(1163, 'Conocimientos básicos de Excel 2013', ''),
(1164, 'Excel 2013 Medio-Avanzado', ''),
(1165, 'Actulialización de conocimientos Excel 2013 Gr1', ''),
(1166, 'Actulialización de conocimientos Excel 2013 Gr2', ''),
(1167, 'Actulialización de conocimientos Word 2013 Gr1', ''),
(1168, 'Actulialización de conocimientos Word 2013 Gr2', ''),
(1169, 'Actulialización de conocimientos Outlook 2013 Gr1', ''),
(1170, 'Publicidad en internet', 'ERIU720'),
(1171, 'Actulialización de conocimientos Outlook 2013 Gr2', ''),
(1172, 'Gestión Blog´s', ''),
(1173, 'NominaPlus', 'CI35'),
(1174, 'ContaPlus', 'CI34'),
(1175, 'Finanzas para No Financieros con Apoyo de Excel', 'CI60'),
(1176, 'Google Drive. Documentos en la Nube', 'ERCI19_P'),
(1177, 'Microsoft Excel 2010 - Nivel Medio', 'ERIU-311'),
(1178, 'Microsoft Excel 2010 - Avanzado', 'ERIU-312'),
(1179, 'Adaptación al Cambio: De Excel 2003 a 2010', 'CI42'),
(1180, 'Marketing con Redes Sociales', 'ERIU-609'),
(1181, 'Publicidad en Internet. Soluciones Google', 'ERKIU612'),
(1182, 'Tablet Android. Herramienta de Productividad', 'CI47'),
(1183, 'Presentaciones Eficaces con PREZI', 'ERCI18P'),
(1184, 'Responsive Web Design (RWD)', 'CI49'),
(1185, 'Microsoft Excel 2010 Avanzado - OnLine', 'ERIU-312'),
(1186, 'Microsoft Excel 2010 Experto - OnLine', 'ER23312'),
(1187, 'Microsoft Access 2010 - Online', '23098'),
(1188, 'Microsoft Access 2010 Avanzado - Online', 'ER23062'),
(1189, 'Microsoft Project 2010 – Online', 'ER25023'),
(1190, 'JAVA SE - Online', 'ER505'),
(1191, 'Adobe Photoshop CS 6 Básico - Online G1', 'ER28375'),
(1192, 'Adobe Photoshop CS 6 Básico - Online G2', 'ER28375'),
(1193, 'Adobe Photoshop CS 6 Avanzado - Online G1', 'ER28389'),
(1194, 'Adobe Photoshop CS 6 Avanzado - Online G2', 'ER28389'),
(1195, 'Microsoft SQL Server 2005 - Online', 'ER523'),
(1196, 'Linux OpenSuse Básico - Online', 'ER328'),
(1197, 'Linux OpenSuse Avanzado - Online', 'ER331'),
(1198, 'Diseńo web avanzado con HTML5 y CSS3 – Online', 'ER24290'),
(1199, 'Comercio electrónico. Aplicación práctica (Online)', 'ERKI07'),
(1200, 'Seguridad en el comercio electrónico', 'ERK118'),
(1201, 'Experto en publicidad y posición. en Internet', 'EREI02'),
(1202, 'Community Manager', 'ERK027'),
(1203, 'Internet cómo canal de comercia. y de relación', 'ERK053'),
(1204, 'Seguridad y protección de redes informáticas', 'ERK105'),
(1205, 'Estrategias efectivas de e-mail marketing', 'ERK110'),
(1206, 'PowerPivot', 'CI59'),
(1207, 'FINANZAS PARA NO FINANCIEROS CON APOYO DE EXCEL', 'CI60'),
(1208, 'Microsoft Excel 2010 Gr.2', 'IU312'),
(1209, 'Prácticas IFCD0210 - GFI', ''),
(1210, 'InkSape', ''),
(1211, 'Excel 2013 Avanzado', ''),
(1212, 'Excel 2010 Avan - SQL', ''),
(1213, 'UF1841-Elaboración de doc. web con leng de Marca', 'CI20_P'),
(1214, 'Microsoft Excel 2010 Avanzado Gr.3', 'IU312'),
(1215, 'SPRI: Formación autónomos y microempresas', ''),
(1216, 'SAGE - Reserva Sala', ''),
(1217, 'Primeros Auxilios', ''),
(1218, 'PREZI', ''),
(1219, 'Prácticas - IFCD0210 Ipartek', ''),
(1220, 'Euskera', ''),
(1221, 'MF0227_3: Programación orientada a objetos', 'CI69'),
(1222, 'MF0952_2: Publicación de páginas web', ''),
(1223, 'UF1842', ''),
(1225, 'UF0511 TRATAMIENTO BÁSICO DE DATOS Y HOJAS DE CÁLC', 'UF0511'),
(1226, 'UF0511-Tratamiento bási de datos y hojas de Calcu', 'UF0328'),
(1227, 'UF0328 - Organización y operaciones con hojas de c', 'UF0328'),
(1228, 'GIMP', ''),
(1229, 'GOOGLE DRIVE -BLOGS', ''),
(1230, 'POWERPOINT 2010  Avanzado', ''),
(1231, 'Word 2010  Avanzado', 'CI01'),
(1232, 'JCLIC', ''),
(1233, 'PREZI', ''),
(1234, 'Productividad con Outlook Gr 1', ''),
(1235, 'Excel 2010 Avanzado', ''),
(1236, 'WRITTER OnLine (Euskera)', 'av004'),
(1237, 'OPEN OFFICE BASE Online (Euskera)', 'av001'),
(1238, 'OPEN OFFICE CALC Online (Euskera)', 'av002'),
(1239, 'OPEN OFFICE IMPRESS Online (Euskera)', 'av003'),
(1240, 'UF0328 Organ y Opera con Hojas de Cálc y Téc Graf', 'UF0328'),
(1241, 'Microsoft Excel 2010 Avanzado Gr.4', 'IU312');
INSERT INTO `curso` (`codigo`, `nomcurso`, `codcurso`) VALUES
(1242, 'Excel 2010 Experto (Online)', ''),
(1243, 'POWER CENTER', 'CI64'),
(1244, 'Desarrollo de Aplic Con Android', ''),
(1245, 'Desarrollo JAVA EE', ''),
(1246, 'SCRUM', ''),
(1247, 'POWERCENTER & TERADATA', 'CI61'),
(1248, 'UF0328 Organ y Opera con Hojas de Cálc y Téc Graf', 'UF0328'),
(1249, 'Programacion con Android', ''),
(1250, 'Programacion con Android Gr.1', ''),
(1251, 'Programacion con Android Gr.2', ''),
(1252, 'Plan Formación Online', ''),
(1253, 'Google Drive  Gr1', ''),
(1254, 'Sage Murano', ''),
(1255, 'PowerPivot', ''),
(1256, 'Jclic, Hot Potatoes, ExeLearning Gr2', ''),
(1257, 'DESARROLLO JAVA JEE', 'CI64'),
(1258, 'Excel 2010 Básico', ''),
(1259, 'Excel 2010 Avanzado Gr1', ''),
(1260, 'Excel 2010 Avanzado Gr2', ''),
(1261, 'Excel 2014- PowerPivot', ''),
(1262, 'JAVA-JEE (GFI)', 'CI64'),
(1263, 'JAVA-JEE (GFI) Prácticas', ''),
(1264, 'IFCD0110 - Confección y Public de Pág Web', ''),
(1265, 'IFCT0309-Montaje y Repara de Sist Microinformático', ''),
(1266, 'IFCM0310-Gestión de redes de voz y datos', ''),
(1267, 'Desarrollo Aplicaciones Web entorno cliente', 'CI69'),
(1268, 'Google App´s, Calendar Nivel Medio', ''),
(1269, 'Google App´s, Calendar Nivel Avanzado', ''),
(1270, 'Excel 2013: Gráficos', ''),
(1271, 'word 2013, Smartart', ''),
(1272, 'Adobe Acrobat X Pro', ''),
(1273, 'Euskera Nivel II', ''),
(1274, 'Excel Experto- Introduc a  Power Pivot', ''),
(1275, 'Desarrollo JAVA EE( II)', ''),
(1276, 'ANDROID: Desarrollo de aplicac para disposit Móv', ''),
(1277, 'Desarrollo IOS', ''),
(1278, 'Windows Phone 8', ''),
(1279, 'SQL Server 2008 Administración', 'CI70'),
(1280, 'SQL Server 2008 Programación', 'CI71'),
(1281, 'PL-SQL (ORACLE 12C)', ''),
(1282, 'SCRUM', ''),
(1283, '19715- IFCD0112: Prácticas CERTIOREM', ''),
(1284, '18715- IFCD0112: Prácticas IPARTEK', ''),
(1285, '????-IFCD0210 Prácticas IPARTEK', ''),
(1286, '????-IFCD0210- Desarrollo de Aplic. Con Tecn WEB', ''),
(1287, 'AJAX + JQUERY', ''),
(1288, 'Programadores', ''),
(1289, 'QclickView', ''),
(1290, 'Redes Sociales en la empresa - ERKIDE', 'ERIU609'),
(1291, 'Desarrollo JAVA EE( III)', ''),
(1292, 'Admin Google APP´s', ''),
(1293, 'BOOTSTRAP', 'CI74'),
(1294, 'PL-SQL (ORACLE 12C)', 'CI67'),
(1295, 'TESTING SOFTWARE', 'CI68'),
(1296, 'QLICKVIEW', 'CI72'),
(1297, 'UML – TÉCNICAS DE DESARROLLO ORIENTADAS A OBJETOS', ''),
(1298, 'Redes Sociales  y Posicionamiento WEB', ''),
(1299, 'Microsoft Excel 2010/2013 - Nivel medio', 'CI82'),
(1300, 'Microsoft Excel 2010/2013 – Avanzado', 'CI27'),
(1301, 'Microsoft Excel 2010/2013 – Avanzado', 'CI27'),
(1302, 'Comercio Electrónico. Tu tienda en  en 5 días', 'CI80'),
(1303, 'PowerPivot: Tratamiento Avanzado de Datos', 'CI59'),
(1304, 'Captación clientes mediante Email Market:Mailchimp', 'CI79'),
(1305, 'Productividad con Outlook 2010/2013', ''),
(1306, 'Productividad con Outlook 2010/2013', 'CI22_P'),
(1307, 'Microsoft Excel 2010/2013 - Nivel Avanzado', 'CI27'),
(1308, 'Moodle: Entorno virtual de aprendizaje', 'CI76'),
(1309, 'WORDPRESS: Cómo elaborar páginas web para Pymes', 'CI50'),
(1310, 'SAGE', ''),
(1311, 'Publicidad en Internet. Soluciones Google', 'ERIU612'),
(1312, 'Uso de Aplic Google: Docs, Calc, Forms, Drive..', 'CI19'),
(1313, 'Redes Sociales: Aplicación empresarial', 'ERIU-609'),
(1314, 'CANVA: Diseńo  de Imágenes para no diseńadores', 'CI81'),
(1315, 'Presentaciones eficaces con PREZI', 'CI18_P'),
(1316, 'Open office: Ofimática Con Software Libre', 'CI78'),
(1317, 'Adaptación a Windows 10', 'CI77'),
(1318, 'Autocad Inventor', ''),
(1319, 'Administración IIS', ''),
(1320, 'SQL SERVER (Ipartek)', ''),
(1321, 'MF0223_3: S.O. y Aplicaciones Informáticas', ''),
(1322, 'APP´s móviles/multiplataforma con HTML5 y JavaScri', ''),
(1323, 'WebApps, Apps Híbridas y  Nativas para iOS/Android', ''),
(1324, 'Excel 2007', ''),
(1326, 'Microsoft Excel 2013 Avanzado – Online', '30637'),
(1327, 'Microsoft Excel 2013 Avanzado – Online', '30637'),
(1328, 'Microsoft Excel 2013 Profesional - Online', '30650'),
(1329, 'Microsoft Excel 2013 Profesional - Online', '30650'),
(1330, 'Microsoft Access 2013 – Online', '31283'),
(1331, 'Microsoft Word 2013 Avanzado - Online', '30437'),
(1332, 'Diseńo web avanzado con HTML5 y CSS3 - Online', '24290'),
(1333, 'Adobe Photoshop CS 6 Básico - Online', '28375'),
(1334, 'Adobe Photoshop CS 6 Básico - Online', '28375'),
(1335, 'Adobe Photoshop CS 6 Avanzado - Online', '28389'),
(1336, 'Microsoft SQL Server 2005 - Online', '523'),
(1337, 'Oracle 12c– Online', '34304'),
(1338, 'Windows Server 2012 - Online', '30319'),
(1339, 'Lenguaje HTML, XHTML Y CSS - Online', 'ERK008'),
(1340, 'Lenguaje JAVASCRIPT - Online', 'ERK010'),
(1341, 'Lenguaje  AJAX - Online', 'ERK011'),
(1342, 'Lenguaje  XML - Online', 'ERK012'),
(1343, 'Comercio electrónico. Aplicación práctica - Online', 'ERKI07'),
(1344, 'Seguridad en el comercio electrónico - Online', 'ERK118'),
(1345, 'Experto en Public y Posicionam. en Internet-Online', 'EREI02'),
(1346, 'Community Manager - Online', 'ERK027'),
(1347, 'Internet cómo canal de comercialización Y Relac', 'ERK053'),
(1348, 'Seguridad y protección de redes informát - Online', 'ERK105'),
(1349, 'Estrategias efectivas de e-mail marketing - Online', 'ERK110'),
(1350, 'Publicidad en Internet - Online', 'ERK114'),
(1351, 'Seguridad de la información - Online', 'ERK102'),
(1352, 'Firma y facturación electrónica - Online', 'ERIU715'),
(1353, 'MOODLE: ENTORNO VIRTUAL DE APRENDIZAJE', 'CI76'),
(1354, 'OPENOFFICE: Ofimática con software libre', 'CI78'),
(1355, 'CAPTACION DE CLIENTES A TRAVÉS DEL EMAIL MARKETING', 'CI79'),
(1356, 'COMERCIO ELECTRONICO. Tu tienda en funcionamiento ', 'CI80'),
(1357, 'CANVA: DISEŃO DE IMÁGENES PARA NO DISEŃADORES', 'CI81'),
(1358, 'MICROSOFT EXCEL 2010-2013 NIVEL MEDIO', 'CI82'),
(1359, 'REDES SOCIALES: APLICACIÓN EMPRESARIAL', 'CI84'),
(1360, 'Lenguaje HTML, XHTML y CSS', 'ERK008'),
(1361, 'Lenguaje JAVASCRIPT', 'ERK010'),
(1362, 'Lenguaje AJAX', 'ERK011'),
(1363, 'Lenguaje XML', 'ERK012'),
(1364, 'Comercio electrónico aplicación práctica.', 'ERKI07'),
(1365, 'Seguridad en el comercio electrónico', 'ERK118'),
(1366, 'Experto en publicidad y posicionamiento en Interne', 'EREI02'),
(1367, 'Community Manager (Erkide)', 'ERK027'),
(1368, 'PREZI. Presentaciones Eficaces', ''),
(1369, 'Microsoft Excel 2013 Experto', ''),
(1370, 'Tansac SQL & Administración SQL', ''),
(1371, 'Microsoft Project 2010', ''),
(1372, '18978-IFCD0112: Prácticas (GFI)', ''),
(1373, '18978-IFCD0112: Prácticas (Ipartek)', ''),
(1374, 'Excel tablas dinámicas', ''),
(1375, 'TRANSACT - SQL', 'CI87'),
(1376, 'ADMINISTRACION GOOGLE APPS', 'CI85'),
(1377, 'Google Drive', ''),
(1378, 'HTML5 y CSS3 Avanzado', ''),
(1379, '18978-IFCD0112: Prácticas (Ipartek)', ''),
(1380, 'Community Manager', ''),
(1381, 'Gestión de Archivos', ''),
(1382, 'Microsoft Excel 2010/2013 Avanzado', 'CI27'),
(1383, 'Aplicac Web + HTML5 CSS3 JavaScript Angular JS', ''),
(1384, 'ACTUALIZACIÓN CONOCIMIENTOS POWERPOINT 2010', ''),
(1385, 'Project 2013', ''),
(1386, 'Project 2013 Gr.2', ''),
(1387, 'Formularios y Encuestas', ''),
(1388, 'SharePoint Designer - Fljos de Trabajo', ''),
(1389, 'Usuario Avanzado SharePoint', ''),
(1390, 'Windows Server 2012', ''),
(1391, 'Desarrollo JAVA/ JEE y entorno Host', 'CI88'),
(1392, 'Presto', ''),
(1393, 'JAVA/JEE Analistas', ''),
(1394, 'Comunity Manager', ''),
(1395, '???-IFCD0112 -PROGR CON LENG OO Y BBDD Rel GFI2', 'CI92'),
(1396, '???-IFCD0112 -PROGR CON LENG OO Y BBDD Rel GFI', 'CI97'),
(1397, 'Microsoft Project 2010', ''),
(1398, 'Desarrollo Gestión Formación', ''),
(1399, 'Hobetuz Paln Empresa(IPARTEK)', ''),
(1400, 'PRESTO', 'CI91'),
(1401, 'DESARROLLO WEB CON SYMFONY2', 'CI90'),
(1402, 'SYMFONY2 AVANZADO', 'CI90'),
(1403, 'Aprende a utilizar Blog´s', ''),
(1404, 'JCLICK', ''),
(1405, 'Herramientas Excel', ''),
(1406, 'Excel 2010 Avanzado', ''),
(1407, 'Iniciación al Euskera', ''),
(1408, 'Angular JS', ''),
(1409, 'Angular JS Gr2', ''),
(1410, 'Seguridad y Salud en el trabajo personal administr', ''),
(1411, 'Excel 2013 Avanzado', ''),
(1412, 'Microsoft Excel 2013', ''),
(1413, 'Desarrollo de Aplicaciones', ''),
(1414, 'Excel 2010 Avanzado Gr1', ''),
(1415, 'Excel 2010 Avanzado Gr2', ''),
(1416, 'Nóminas Y Seguros Sociales', ''),
(1417, 'Desarrollo Avanzado con JAVA EE(IFCD02010)', 'CI92'),
(1418, 'Desarrollo Avanzado con JAVA EE', 'CI92'),
(1419, 'Excel 2013 Avanzado: Integración con ERP', 'CI93'),
(1420, 'Desarrollo con JAVA/JEE - Gr1', 'CI94'),
(1421, 'Excel 2013 Avanzado: Integración con ERP - Gr2', 'CI93'),
(1422, 'Desarrollo con JAVA/JEE - Gr2', 'CI94'),
(1423, 'CI93-USO AVANZADO DE HOJAS ELECTRONICAS. INTEGRACI', 'CI93'),
(1424, 'CI93-USO AVANZADO DE HOJAS ELECTRONICAS. INTEGRACI', 'CI93'),
(1425, 'CI94-JAVA EE (Hobetuz 2016)', 'CI94'),
(1428, 'JAVA /JEE', 'CI94'),
(1429, 'Excel 2013 Avanzado: Integración con ERP - Gr3', 'CI93'),
(1430, 'Responsive WEB Design', 'CI49'),
(1431, 'Primero Auxilios', ''),
(1432, 'Redes Sociales Aplicación empresarial', 'IU609'),
(1433, 'Android: Desarrollo de Aplic para Dispositivos Móv', 'CI95'),
(1434, 'Android, desarrollo de aplicaciones para dispositi', 'CI21_P'),
(1435, 'Android:Desarrollo de Aplicaciones para Dispositiv', 'CI95'),
(1436, 'Desarrollo con JAVA/JEE', 'CI94'),
(1437, 'Excel 2013 Avanzado: Integración con ERP', 'CI109'),
(1438, 'Responsive WEB Design', 'CI49'),
(1439, 'Redes Sociales Aplicación empresarial', 'IU609'),
(1440, 'Android: Desarrollo de Aplic para Dispositivos Móv', 'CI95'),
(1441, 'Gestión De Proyec Con Metodologías Ágiles: Scrum', 'CI16'),
(1442, 'Desarrollo Apps Iphone  (Ios – Xcode )', 'CI96'),
(1443, 'PL-SQL (ORACLE 12C)', 'CI67'),
(1444, 'Publicidad en Internet. Soluciones Google', 'ERIU612'),
(1445, 'Administración de Aplicaciones Google:Google APP´s', 'CI85'),
(1446, 'PL-SQL (ORACLE 12C)', 'CI67'),
(1447, 'Desarrollo Apps Iphone (Ios-Xcode )', 'CI96'),
(1448, 'Desarrollo Avanzado  con ASP.NET y JAVA/JEE', 'CI97'),
(1449, 'Desarrollo Avanzado con ASP.NET y JAVA/JEE', 'CI97'),
(1450, 'Tuoría Excel - Tablas Dinámicas (Contro Partes)', ''),
(1451, 'Moodle Adaptado al profesorado Infantil/Primaria', ''),
(1452, 'Moodle Adaptado al profesorado Infantil/Primaria', ''),
(1453, 'Moodle Adaptado al profesorado Secundaria/Ciclos', ''),
(1454, 'Moodle Adaptado al profesorado Secundaria/Ciclos', ''),
(1455, 'Microsoft Project 2010', ''),
(1456, 'Tutoría Comunity Manager', ''),
(1457, 'Google Drive Básico (Euskera)', ''),
(1458, 'Plataforma  + Trabajos en Altura', ''),
(1459, 'Redes Sociales Aplicación empresarial Gr2', 'IU609'),
(1460, 'Seguridad y manejo de Carretillas Elevadoras', ''),
(1461, 'Extinción de Incendios', ''),
(1462, 'Desarrollo Apps Iphone  (Ios – Xcode )', 'CI96'),
(1463, 'Administración de Aplicaciones Google:Google APP´s', 'CI85'),
(1464, 'Programación con JAVA/JEE - Gr3', 'CI94'),
(1465, 'Excel 2013 Avanzado: Integración con ERP - Gr4', 'CI93'),
(1466, 'Android: Desarrollo de Aplic para Dispositivos Móv', 'CI95'),
(1467, 'Responsive WEB Design Gr2', 'CI49'),
(1468, 'Excel 2013 Avanzado: Integración con ERP - Gr5', 'CI93'),
(1469, '1319-IFCD0210 Prácticas GFI', ''),
(1470, '1319-IFCD0210 Prácticas BILBOMATICA', ''),
(1471, '1319-IFCD0210 Prácticas GFI - .NET', ''),
(1472, 'Excel 2010 Avanzado', ''),
(1473, '1319-IFCD0210 Prácticas SERIKAT', ''),
(1474, 'PREZI Presentaciones Eficaces & CANVA', ''),
(1475, 'Excel Avanzado 2010', ''),
(1476, '1327-IFCD0210 Prácticas GFI - JAVA', ''),
(1477, '1327-IFCD0210 Prácticas SERIKAT - JAVA', ''),
(1478, 'Excel 2013 Avanzado: Integración con ERP - Gr6', 'CI93'),
(1479, 'Excel 2013 Avanzado: Integración con ERP - Gr7', 'CI93'),
(1480, 'Excel 2013 Avanzado: Integración con ERP - Gr8', 'CI93'),
(1481, '1319-IFCD0210 Prácticas IPARTEK - JAVA', ''),
(1482, 'Excel 2010 Avanzado - Macros', ''),
(1483, 'Redes Sociales Aplicación empresarial Gr3', 'IU609'),
(1484, 'Redes Sociales Aplicación empresarial Gr4', 'IU609'),
(1485, 'Gestión De Proyectos Con Metodologías Ágiles:SCRUM', 'CI16'),
(1486, 'UF1841-Elaboración de Doc web mediante Leng de Mar', 'CI20_P'),
(1487, 'Excel 2013 Avanzado: Integración con ERP - Gr9', 'CI109'),
(1488, '2673-IFCD0210 DESARROLLO DE APLIC CON TECN WEB', 'CI92'),
(1489, '1956-IFCT0108-OPER AUX DE MONT Y MANT DE SIS MICRO', 'IFCT0108_CP'),
(1490, '???-IFCD0112 -PROGR CON LENG OO Y BBDD Rel', ''),
(1491, 'IFCT0108-OPER AUX DE MONT Y MANT DE SIS MICRO', 'IFCT0108_CP'),
(1492, 'Programación con JAVA/JEE - Gr4', 'CI94'),
(1493, 'Android: Desarrollo de Aplic para Dispositivos Móv', 'CI95'),
(1494, 'Redes Sociales Aplicación empresarial Gr5', 'IU609'),
(1495, 'Alquiler Aula Bilbomática', ''),
(1496, 'SQL SERVER Básico', ''),
(1497, 'Vacaciones Docentes', ''),
(1498, 'PREZI: Presentaciones Eficaces', ''),
(1499, '??-IFCD0210 DESARROLLO DE APLIC CON TECN WEB', ''),
(1500, 'LucidPress', ''),
(1501, '1319-IFCD0210 Prácticas CONINPE - .NET', ''),
(1502, 'Excel 2013 Básico', ''),
(1503, 'Arrow (Alquiler Aula)', ''),
(1504, 'Adobe Photoshop Basico CS6', ''),
(1505, 'Trabajo colaborativo- One Note', ''),
(1506, 'Excel 2007 Avanzado', ''),
(1507, 'NóminaPlus', ''),
(1508, 'Excel 2013 Avanzado: Integración con ERP - Gr10', 'CI109'),
(1509, 'Arrow (Alquiler Aula)', ''),
(1510, 'Prácticas Informática Euskadi', ''),
(1511, 'Moodle: Entorno virtual de aprendizaje', 'CI76'),
(1512, 'WORDPRESS: Cómo elaborar páginas web para Pymes', 'CI50'),
(1513, 'Ofimát en la nube con Google: Doc,Calc,Forms,Drive', 'CI161'),
(1514, 'Microsoft Excel 2013 - Nivel medio', 'CI26'),
(1515, 'Excel 2013 Avanzado: Integración con ERP', 'CI109'),
(1516, 'Inkscape-Tratamiento De Gráficos Vectoriales', 'CI162'),
(1517, 'Excel 2013 Avanzado: Integración con ERP', 'CI109'),
(1518, 'PowerPivot: Tratamiento Avanzado de Datos', 'CI59'),
(1519, 'Redes Sociales: Aplicación empresarial', 'IU609'),
(1520, 'Publicidad en Internet. Soluciones Google', 'ERIU612'),
(1521, 'Captación clientes mediante Email Market:Mailchimp', 'CI79'),
(1522, 'Comercio Electrónico. Tu tienda en  en 5 días', 'CI80'),
(1523, 'Microsoft Project 2013: Gestión de Proyectos', 'CI45'),
(1524, 'Presto: Presupuestos, mediciones y certificaciones', 'CI91'),
(1525, 'CANVA: Diseńo de imágenes para no diseńadores', 'CI81'),
(1526, 'Presentaciones eficaces con PREZI', 'ERCI18P'),
(1527, 'Seguridad y Salud en el trabajo administrativo', ''),
(1528, 'Seguridad y Salud en el trabajo administrativo', ''),
(1529, 'Seguridad y Salud en el trabajo administrativo', ''),
(1530, 'Responsive WEB Design Gr3', 'CI49'),
(1531, 'Responsive WEB Design Gr4', 'CI49'),
(1532, 'Excel 2013 Avanzado: Integración con ERP - Gr11', 'CI109'),
(1533, 'Excel 2013 Avanzado: Integración con ERP - Gr12', 'CI109'),
(1534, 'PL-SQL (ORACLE 12C) Gr2', 'CI67'),
(1535, 'UF328 - Excel y repr. Gráfica de documentos', 'UF0328'),
(1536, 'Tutoría Excel 2013', ''),
(1537, 'Tutoría Excel 2013', ''),
(1538, 'Android: Desarrollo de Aplicacac para Disposi Móv', 'CI95'),
(1539, 'Publicidad en Internet: Soluciones Google', 'ERIU612'),
(1540, 'Procesamiento de datos Big Data', ''),
(1541, 'Windows 10 Administración', 'CI119'),
(1542, 'Seguridad Informática Avanzada', ''),
(1543, 'Administración Google Apps', 'CI85'),
(1544, 'Creación de páginas web con Wordpress', 'CI50'),
(1545, 'MOODLE: Entorno virtual para el aprendizaje', 'CI76'),
(1547, 'Aprender a utilizar Blogs', 'CI55'),
(1548, 'OpenOffice 4.1.3', 'CI103'),
(1549, 'Word 2013 Iniciación', 'CI24'),
(1550, 'Word 2013 Avanzado', 'CI25'),
(1552, 'Excel 2013 Iniciación', 'CI26'),
(1553, 'Excel 2013 Avanzado', 'CI27'),
(1554, 'Access 2013 Iniciación', 'CI28'),
(1555, 'Access 2013 Avanzado', 'CI29'),
(1556, 'Outlook 2013', 'CI30'),
(1557, 'Excel: Bases de datos y tablas dinámicas', 'CI56'),
(1558, 'Click View', 'CI72'),
(1559, 'Taller de Word Avanzado', 'ERIU212'),
(1560, 'Word 2007 Iniciación', 'IU210'),
(1561, 'Word 2007 Avanzado', 'IU211'),
(1562, 'Word 2010 Iniciación', 'IU212'),
(1563, 'Word 2010 Avanzado', 'IU213'),
(1564, 'Excel 2007 Iniciación', 'IU309'),
(1566, 'ClikView Business Intelligence', 'CI72'),
(1567, 'QlikView Business Intelligence', 'CI72'),
(1568, 'Excel 2007 Avanzado', 'IU310'),
(1569, 'Excel 2010 Iniciación', 'IU311'),
(1570, 'Excel 2010 Avanzado', 'IU312'),
(1571, 'PowerPoint 2007', 'IU408'),
(1572, 'Access 2007 Iniciación', 'IU509'),
(1573, 'Access 2007 Avanzado', 'IU510'),
(1574, 'Access 2010 Iniciación', 'IU511'),
(1575, 'Access 2010 Avanzado', 'IU512'),
(1576, 'Outlook 2010', 'IU608'),
(1577, 'Microsoft Office  2010', 'IU806'),
(1578, 'Microsoft  Office 2010', 'IU806'),
(1579, 'Microsoft  Office  2010', 'IU806'),
(1580, 'PowerPoint 2010', 'CI100'),
(1581, 'PowerPoint 2013', 'CI101'),
(1582, 'Microsoft Office 2013', 'CI102'),
(1583, 'Finanzas para no financieros con el apoyo de Excel', 'CI105'),
(1584, 'Hot Potatoes, proyectos educativos', 'CI106'),
(1585, 'Jclic, proyectos educativos', 'CI107'),
(1586, 'Exelearning, proyectos educativos', 'CI108'),
(1587, 'Uso Avanzado de Excel - Integración con ERP', 'CI109'),
(1589, 'Excel 2013 Avanzado, integración con ERP empresari', 'CI109'),
(1590, 'Power View exploración, visualización y presentaci', 'CI110'),
(1591, 'Moodle, entorno virtual de aprendizaje', 'CI76'),
(1592, 'Joomla, sistema de gestión de contenidos Web', 'CI51'),
(1593, 'Captación de clientes a través de Email Marketing,', 'CI79'),
(1594, 'Social Media Marketing, gestión de redes sociales', 'ERIU609'),
(1595, 'Publicidad en internet, soluciones Google', 'ERIU612'),
(1596, 'Comercio electronico, tu tienda en funcionamiento ', 'CI80'),
(1597, 'Canva, diseńo de imágenes para no diseńadores', 'CI81'),
(1598, 'Comercio electrónico, tu tienda en funcionamiento ', 'CI80'),
(1599, 'Soluciones Tics para la gestión de Clientes Online', 'ERIU717'),
(1600, 'Presto, mediciones y presupuestos en la construcci', 'CI91'),
(1601, 'Gestión de proyectos con tecnologías ágiles, SCRUM', 'CI16'),
(1602, 'Microsoft  Project 2010', 'IU706'),
(1603, 'Gestión de proyectos PMBOK', 'CI125'),
(1604, 'Adobe Illustrator CC', 'CI54'),
(1605, 'Photoshop CC', 'CI31'),
(1606, 'Responsive Web Desing (RWD)', 'CI49'),
(1607, 'Word 2016 Iniciación', 'CI126'),
(1608, 'Word 2016 Avanzado', 'CI127'),
(1609, 'Excel 2016 Inicial', 'CI128'),
(1610, 'Excel 2016 Iniciación', 'CI128'),
(1611, 'Excel 2016 Avanzado', 'CI129'),
(1612, 'Access 2016 Iniciación', 'CI130'),
(1613, 'Access 2016 Avanzado', 'CI131'),
(1614, 'PowerPoint 2016', 'CI132'),
(1615, 'Autocad Inventor', 'CI75'),
(1616, 'Lucidpress, diseńo y maquetación de \npublicaciones', 'CI133'),
(1617, 'Excel 2010 Avanzado', ''),
(1618, 'Project 2010', ''),
(1619, 'Tutoría Comunity Manager', ''),
(1620, 'Gestión de Proyectos con OpenProject', 'CI134'),
(1621, 'Excel 2013', ''),
(1622, 'Tutoría Libre Project', ''),
(1623, 'Gestión De Proyec Con Metodologías Ágiles: Scrum', ''),
(1624, 'Alfabetización Informática (Tabletas - PC´s)', ''),
(1625, 'Microsoft Excel 2013 Avanzado-Online', '30637'),
(1626, 'Microsoft Excel 2013 Avanzado– Online', '30637'),
(1627, 'Microsoft Excel 2013 Profesional- Online', '30650'),
(1628, 'Microsoft Excel 2013 Profesional- Online', '30650'),
(1629, 'Microsoft Access 2013 – Online', '31283'),
(1630, 'Microsoft Word 2013 Avanzado- Online', '30437'),
(1631, 'Diseńo web avanzado con HTML5 y CSS3 - Online', '24290'),
(1632, 'Adobe Photoshop CS 6 Básico - Online', '28375'),
(1633, 'Adobe Photoshop CS 6 Básico - Online', '28375'),
(1634, 'Microsoft SQL Server 2005 - Online', '523'),
(1635, 'Oracle 12c– Online', '34304'),
(1636, 'Adobe Photoshop CS 6 Avanzado - Online', '28389'),
(1637, 'Adobe Photoshop CS 6 Avanzado - Online', '28389'),
(1638, 'Lenguaje HTML, XHTML Y CSS - Online', 'ERK008'),
(1639, 'Lenguaje JAVASCRIPT - Online', 'ERK010'),
(1640, 'Lenguaje AJAX - Online', 'ERK011'),
(1641, 'Lenguaje XML - Online', 'ERK012'),
(1642, 'Comercio electrónico. Aplicación práctica - Online', 'ERKI07'),
(1643, 'Seguridad en el comercio electrónico - Online', 'ERK118'),
(1644, 'Experto en publi y posicion en Internet - Online', 'EREI02'),
(1645, 'Community Manager – Online', 'ERK027'),
(1646, 'Internet cómo canal de comercializ. y de relación', 'ERK053'),
(1647, 'Seguridad y protección de redes informáticas-Onlin', 'ERK105'),
(1648, 'Estrategias efectivas de e-mail marketing - Online', 'ERIU716'),
(1649, 'Publicidad en Internet - Online', 'ERK114'),
(1650, 'Seguridad de la información - Online', 'ERK102'),
(1651, 'Firma y facturación electrónica - Online', 'ERIU715'),
(1652, 'Symfony', ''),
(1653, 'Uso de aplicaciones Google: Doc\'s, Calc, Forms, Dr', 'CI161'),
(1654, 'InkScape - Tratamiento de Gráficos Vectoriales', 'CI162'),
(1655, 'IFCD0210 DESARROLLO DE APLIC CON TECN WEB', 'IFCD0210_FIC'),
(1656, 'Programación con JAVA/JEE - Gr5', 'CI94'),
(1657, 'Modelado de Objetos con Casos de Uso y UML 2.0', 'CI135'),
(1658, 'SAP Crystal Reports', 'CI136'),
(1659, 'Seguridad Web SQL Injection & XSS', 'CI137'),
(1660, 'Desarrollo Web con ASP.net MVC 5', 'CI138'),
(1661, 'Diseńo Web HTML5, CSS3 y JavaScript', 'CI139'),
(1662, 'Primefaces 6.0', 'CI140'),
(1663, 'Desarrollo Avanzado Web con JAVA - JEE - Hibernate', 'CI141'),
(1664, 'Oracle 12C - PL-SQL', 'CI142'),
(1665, 'Testing de Software', 'CI143'),
(1666, 'Internet Information Server (IIS) 10', 'CI144'),
(1667, 'Bootstrap 3', 'CI145'),
(1668, 'Liferay administración 7.0', 'CI146'),
(1669, 'Angular JS 1.5', 'CI147'),
(1670, 'Desarrollo Avanzado Web con JAVA -EE- Completo - E', 'CI148'),
(1671, 'Programación Web con JAVA -JEE- Avanzado', 'CI149'),
(1672, 'Programación orientada a objetos con lenguaje para', 'CI150'),
(1673, 'SQL Server 2014 Programación avanzada con Transact', 'CI151'),
(1674, 'SQL Server 2014 Administración', 'CI152'),
(1675, 'SQL Server 2014 Programacion inicial con Transact ', 'CI153'),
(1676, 'Desarrollo de Aplicaciones de Escritorio y Acceso ', 'CI154'),
(1677, 'Hibernate 5 y JPA 2', 'CI155'),
(1678, 'Spring 4 - Avanzado', 'CI156'),
(1679, 'Spring 4 - Básico', 'CI157'),
(1680, 'Spring Boot 2', 'CI158'),
(1681, 'Mongo DB, Base de datos no Relacional', 'CI159'),
(1682, 'Node JS', 'CI160'),
(1683, 'Android, desarrollo de aplicaciones para dispositi', 'CI168'),
(1684, 'Android, desarrollo de aplicaciones para dispositi', 'CI169'),
(1685, 'Desarrollo Apps Iphone (los Xwiht)', 'CI163'),
(1686, 'html', '123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `codigo` int(2) NOT NULL AUTO_INCREMENT COMMENT 'el campo clave de la tabla. Es auto generado.', AUTO_INCREMENT=1687;--
-- Base de datos: `gestiondocente`
--
CREATE DATABASE IF NOT EXISTS `gestiondocente` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `gestiondocente`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `codigo` int(11) NOT NULL COMMENT 'el campo clave de la tabla. Es auto generado.',
  `nombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `apellidos` varchar(250) COLLATE utf8_bin NOT NULL,
  `fNacimiento` date DEFAULT NULL,
  `direccion` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `poblacion` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `codigopostal` int(5) UNSIGNED ZEROFILL DEFAULT NULL,
  `telefono` int(9) NOT NULL,
  `email` varchar(150) COLLATE utf8_bin NOT NULL,
  `dni` varchar(9) COLLATE utf8_bin NOT NULL,
  `nHermanos` int(2) DEFAULT '0',
  `activo` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`codigo`, `nombre`, `apellidos`, `fNacimiento`, `direccion`, `poblacion`, `codigopostal`, `telefono`, `email`, `dni`, `nHermanos`, `activo`) VALUES
(0, 'alumno', 'sin asignar', NULL, NULL, NULL, 00000, 0, 'aaaaaaa@aaaaa.com', '0000000x', 0, 1),
(1, 'sergio', 'aparicio vargas', '1977-12-01', '', '', 00000, 944110293, 'aaaa@aaaa.com', '44974398z', 0, 1),
(2, 'maite', 'monasterio', '1986-11-11', '', '', 48007, 944110293, 'mmonasterio@gmail.com', '16071559x', 0, 1),
(4, 'enrique javier', 'ruiz jimenez', '2017-02-14', '', '', 00048, 944110239, 'enrique@gmail.com', '45677362y', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `codigo` int(11) NOT NULL,
  `nombre` text COLLATE utf8_bin NOT NULL,
  `email` varchar(150) COLLATE utf8_bin NOT NULL,
  `telefono` int(9) NOT NULL,
  `direccion` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `poblacion` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `codigopostal` int(5) UNSIGNED ZEROFILL DEFAULT NULL,
  `identificador` varchar(15) COLLATE utf8_bin NOT NULL,
  `activo` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`codigo`, `nombre`, `email`, `telefono`, `direccion`, `poblacion`, `codigopostal`, `identificador`, `activo`) VALUES
(1, 'SERIKAT CONSULTORÍA E INFORMÁTICA, S.A.', 'info@serikat.es', 944250100, 'c/ Ercilla 19', 'Bilbao', 48009, 'A-48476006', 1),
(2, 'lanbide - servicio vasco de empleo', 'info@lanbide.net', 945160601, 'Jose Atxotegi 1', 'Vitoria-Gazteiz', 01009, 'Q0100571l', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `identificador` varchar(12) COLLATE utf8_bin NOT NULL,
  `fInicio` date DEFAULT NULL,
  `fFin` date DEFAULT NULL,
  `nHoras` int(4) NOT NULL,
  `temario` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `activo` tinyint(4) DEFAULT '1',
  `cliente_codigo` int(11) DEFAULT NULL,
  `precio` double(8,2) DEFAULT '0.00',
  `profesor_codigo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`codigo`, `nombre`, `identificador`, `fInicio`, `fFin`, `nHoras`, `temario`, `activo`, `cliente_codigo`, `precio`, `profesor_codigo`) VALUES
(1, 'Desarrrollo de Aplicaciones con Tecnologias Web', '18482673', '2017-01-09', '2017-06-13', 510, NULL, 1, 2, 300000.00, 1),
(2, 'Desarrollo de Bases de Datos y Programacion orientada a Objetos', '18488229', '2017-02-20', '2017-09-29', 630, NULL, 1, 1, 400000.00, NULL),
(3, '', '', NULL, NULL, 0, NULL, 0, 1, 0.00, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imparticion`
--

CREATE TABLE `imparticion` (
  `codigo` int(11) NOT NULL,
  `curso_codigo` int(11) NOT NULL,
  `alumno_codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `codigo` int(11) NOT NULL,
  `NSS` bigint(12) DEFAULT NULL,
  `nombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `apellidos` varchar(250) COLLATE utf8_bin NOT NULL,
  `fNacimiento` date DEFAULT NULL,
  `DNI` varchar(9) COLLATE utf8_bin NOT NULL,
  `direccion` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `poblacion` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `codigopostal` int(5) UNSIGNED ZEROFILL DEFAULT NULL,
  `telefono` int(9) NOT NULL,
  `email` varchar(150) COLLATE utf8_bin NOT NULL,
  `activo` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`codigo`, `NSS`, `nombre`, `apellidos`, `fNacimiento`, `DNI`, `direccion`, `poblacion`, `codigopostal`, `telefono`, `email`, `activo`) VALUES
(0, 0, 'profesor', 'sin asignar', NULL, '00000000z', NULL, NULL, NULL, 0, 'aaaaaaaa@aaaaa.aaa', 1),
(1, 481234567840, 'Urko', 'Villanueva Alvarez', '1976-11-24', '30693142x', 'Av. Mazustegi 9', 'Bilbao', 48009, 944110293, 'uvillanueva@ipartek.com', 1),
(2, 0, 'profesor', 'sin asignar', NULL, '00000000z', NULL, NULL, NULL, 0, 'aaaaaaaa@aaaaa.aaa', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`codigo`),
  ADD UNIQUE KEY `dni_UNIQUE` (`dni`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `fk_curso_profesor_codigo_idx` (`profesor_codigo`),
  ADD KEY `fk_curso_cliente_codigo_idx` (`cliente_codigo`) USING BTREE;

--
-- Indices de la tabla `imparticion`
--
ALTER TABLE `imparticion`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `fk_imparticion_alumno_codigo_idx` (`alumno_codigo`),
  ADD KEY `fk_imparticion_curso_codigo_idx` (`curso_codigo`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'el campo clave de la tabla. Es auto generado.', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `imparticion`
--
ALTER TABLE `imparticion`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `profesor`
--
ALTER TABLE `profesor`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `fk_curso_cliente_codigo` FOREIGN KEY (`cliente_codigo`) REFERENCES `cliente` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_curso_profesor_codigo` FOREIGN KEY (`profesor_codigo`) REFERENCES `profesor` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `imparticion`
--
ALTER TABLE `imparticion`
  ADD CONSTRAINT `fk_imparticion_alumno_codigo` FOREIGN KEY (`alumno_codigo`) REFERENCES `alumno` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_imparticion_curso_codigo` FOREIGN KEY (`curso_codigo`) REFERENCES `curso` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Base de datos: `gestionllodio`
--
CREATE DATABASE IF NOT EXISTS `gestionllodio` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `gestionllodio`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `barrio`
--

CREATE TABLE `barrio` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `activo` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `barrio`
--

INSERT INTO `barrio` (`codigo`, `nombre`, `activo`) VALUES
(1, 'ugarte', 1),
(2, 'gardea', 1),
(3, 'areta', 1),
(4, 'landaluze', 1),
(5, 'larraño', 1),
(6, 'lateorro', 1),
(7, 'zona centro', 1),
(8, 'larra', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(50) CHARACTER SET latin1 NOT NULL,
  `ambito` varchar(50) CHARACTER SET latin1 NOT NULL,
  `telefono` varchar(9) CHARACTER SET latin1 NOT NULL,
  `activo` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`codigo`, `nombre`, `ambito`, `telefono`, `activo`) VALUES
(1, 'Ertzaintza', 'Emergencias', '944063860', 1),
(2, 'Policía municipal', 'Emergencias', '944034888', 1),
(3, 'Bomberos de Ayala', 'Emergencias', '946726565', 1),
(4, 'Consultorio médico', 'Servicios médicos', '946007480', 1),
(5, 'Cruz Roja', 'Servicios médicos', '946726458', 1),
(6, 'Hospital de Santiago Apóstol', 'Servicios médicos', '945007600', 1),
(7, 'Hospital de Txagorritxu', 'Servicios médicos', '945007000', 1),
(8, 'Hospital de Leza', 'Servicios médicos', '945006900', 1),
(9, 'Hospital Psiquiátrico de Álava', 'Servicios médicos', '945006555', 1),
(10, 'Clínica Álava', 'Servicios médicos', '945142100', 1),
(11, 'Policlínico San José', 'Servicios médicos', '945140900', 1),
(12, 'DYA', 'Servicios médicos', '945281020', 1),
(13, 'Urgencias médicas', 'Servicios médicos', '945244444', 1),
(14, 'Asociación de Donantes de Sangre', 'Servicios médicos', '945260977', 1),
(15, 'Banco de Sangre de Araba', 'Servicios médicos', '945007627', 1),
(16, 'Acogida a la Vida', 'Servicios de apoyo social', '945271619', 1),
(17, 'Alcohólicos Anónimos', 'Servicios de apoyo social', '945250417', 1),
(18, 'Cáritas', 'Servicios de apoyo social', '946721797', 1),
(19, 'Denuncias publicidad sexista', 'Servicios de apoyo social', '900191010', 1),
(20, 'Drogodependencias', 'Servicios de apoyo social', '902471818', 1),
(21, 'Información sobre el SIDA', 'Servicios de apoyo social', '945257766', 1),
(22, 'Madres y padres separados', 'Servicios de apoyo social', '945259831', 1),
(23, 'Maltrato infantil', 'Servicios de apoyo social', '900202010', 1),
(24, 'Mujeres maltratadas', 'Servicios de apoyo social', '945134444', 1),
(25, 'Prevención de la ludopatía', 'Servicios de apoyo social', '945140468', 1),
(26, 'Proyecto Hombre', 'Servicios de apoyo social', '945143720', 1),
(27, 'Sartu', 'Servicios de apoyo social', '946727773', 1),
(28, 'Teléfono de la Esperanza', 'Servicios de apoyo social', '945147014', 1),
(29, 'Teléfono Dorado', 'Servicios de apoyo social', '900222223', 1),
(30, 'Aeropuerto de Foronda', 'Transportes', '945163518', 1),
(31, 'Aeropuerto de Loiu', 'Transportes', '944869301', 1),
(32, 'Renfe', 'Transportes', '902240202', 1),
(33, 'Bizkaibus', 'Transportes', '944484080', 1),
(34, 'Ayuntamiento de Laudio/Llodio', 'Administraciones públicas', '944034800', 1),
(35, 'Diputación Foral de Álava', 'Administraciones públicas', '945181818', 1),
(36, 'Diputación Foral de Bizkaia', 'Administraciones públicas', '944208000', 1),
(37, 'Delegación de Hacienda', 'Administraciones públicas', '946725483', 1),
(38, 'Gobierno Vasco', 'Administraciones públicas', '945018000', 1),
(39, 'CEP Lamuza', 'Centros educativos', '946720226', 1),
(40, 'CEP Latiorro', 'Centros educativos', '946721874', 1),
(41, 'CEP Fabian Legorburu', 'Centros educativos', '946722001', 1),
(42, 'Colegio La Milagrosa', 'Centros educativos', '946720701', 1),
(43, 'Laudio Ikastola', 'Centros educativos', '946726737', 1),
(44, 'Laudio Institutua Behekoa', 'Centros educativos', '946720086', 1),
(45, 'Laudio Institutua Goikoa', 'Centros educativos', '946721870', 1),
(46, 'Centro Municipal de Formación Profesional', 'Centros educativos', '946720505', 1),
(47, 'CEPA Laudio', 'Centros educativos', '946721734', 1),
(48, 'Haurreskola Matxintxu', 'Centros educativos', '944049543', 1),
(49, 'Casa de Cultura', 'Otros', '944034920', 1),
(50, 'Gazteleku', 'Otros', '94 038583', 1),
(51, 'Oficina de Turismo', 'Otros', '944034930', 1),
(52, 'Servicio de Aguas - Aqualia', 'Otros', '911779121', 1),
(53, 'Archivo municipal', 'Otros', '946726051', 1),
(54, 'Correos y Telégrafos', 'Otros', '946720041', 1),
(55, 'Tanatorio Alto Nervión', 'Otros', '946727750', 1),
(56, 'INEM', 'Otros', '646720047', 1),
(57, 'Langai', 'Otros', '901222901', 1),
(58, 'KZGunea', 'Otros', '946728397', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fiesta`
--

CREATE TABLE `fiesta` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `descripcion` text CHARACTER SET latin1,
  `fecha` date DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  `barrio_codigo2` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `fiesta`
--

INSERT INTO `fiesta` (`codigo`, `nombre`, `descripcion`, `fecha`, `activo`, `barrio_codigo2`) VALUES
(1, 'feria de san blas', 'importante feria que gira en torno al caserío especialmente relacionada con la matanza del cerdo. exposición de productos del caserío y de artesanía. concurso gastronómico de patas de cerdo.', '2017-02-03', 1, 6),
(2, 'viernes de dolores', 'de gran tradición para los llodianos, se realiza el viernes anterior al inicio de la semana santa. importante feria exposición de ganado vacuno, equino y ovino. importante prueba de arrastre de piedra con bueyes. se puede considerar una de las fiestas más importantes de la comarca.', '2017-04-07', 1, 7),
(3, 'santa agueda', 'se celebra el segundo día de pascua resurrección en la ermita de maría magdalena en larraño, al pie de luja.', '2017-04-11', 1, 5),
(4, 'san prudencio', 'tamborrada y concurso de caracoles.', '2017-04-28', 1, 7),
(5, 'santa cruz', '3 de mayo en el barrio de gardea', '2017-05-03', 1, 2),
(6, 'santa lucía', 'el segundo día de pascua de pentecostés o siete semanas después de resurrección. importante romería que se celebra en la campa existente junto a la ermita en el entorno de santa maría del yermo.', '2017-06-06', 1, 1),
(7, 'san antonio', 'su ermita está dedicada también a la advocación de santa apolonia.', '2017-06-13', 1, 6),
(8, 'san juan', 'el 24 de junio en el barrio de larrazabal.', '2017-06-24', 1, 4),
(9, 'santa ana', 'el 26 de julio, en el barrio de areta.', '2017-07-26', 1, 3),
(10, 'san ignacio', 'el 31 de julio, en el barrio de ugarte', '2017-07-31', 1, 1),
(11, 'san roke', 'patrono del valle de llodio, la asunción, y se extienden hasta el último domingo del mes, día en el que se celebra, desde 1599, la comida de hermandad de los cofrades de san roke. la víspera se celebra la popular fiesta llamada “día de las morcillas”.', '2017-08-15', 1, 7),
(12, 'san bartolomé', 'en la ermita del santo en larra', '2017-08-24', 1, 6),
(13, 'latiorroko jaiak', 'fiestas de este populoso barrio de llodio, a mediados de septiembre.', '2017-09-13', 1, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restaurante`
--

CREATE TABLE `restaurante` (
  `codigo` int(11) NOT NULL,
  `barrio_codigo` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `numero` varchar(3) DEFAULT 'S/N',
  `telefono` varchar(9) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `restaurante`
--

INSERT INTO `restaurante` (`codigo`, `barrio_codigo`, `nombre`, `direccion`, `numero`, `telefono`, `activo`) VALUES
(1, 4, 'balintxareketa', 'malkuartu bidea', '1', '946724350', 1),
(2, 3, 'palacio anuncibai', 'vitoria', '', '946726188', 1),
(3, 7, 'telepizza', 'zumalacarregui', '15', '944030456', 1),
(4, 2, 'Karrika', 'poligono industrialdea', '4', '946728207', 1),
(5, 7, 'batzoki llodio', 'plaza alberto acero', '12', '946034000', 1),
(6, 7, 'paraiso chino', 'virgen del carmen', '31', '946726517', 1),
(7, 7, 'capucci katua', 'zubiko kurajo', '7', '946559953', 1),
(8, 3, 'el tunel', 'vitoria', '5', '946720558', 1),
(9, 7, 'tolo', 'virgen del carmen', '9', '672235065', 1),
(10, 7, 'txanxiku', 'zubiaur', '3', '946722774', 1),
(11, 4, 'utzine', 'lamuza', '23', '946721232', 1),
(12, 7, 'centro gallego', 'ruperto urquijo', '1', '946726009', 1),
(13, 2, 'txakoli beldui', 'caserio beldio', 'S/N', '685757648', 1),
(14, 2, 'andoniren', 'tres cruces', '25', '946721495', 1),
(15, 7, 'biribil', 'zumalakarregi ', '39', '946728000', 1),
(16, 1, 'dorrea', 'ugarte', '16', '944048878', 1),
(17, 7, 'larrea', 'doctor fleming', '3', '946725013', 1),
(18, 1, 'ugarte', 'ugarte', '11', '946725699', 1),
(19, 2, 'mu lian', 'tres cruces', '5', '946728424', 1),
(20, 2, 'laurak', 'tres cruces', '17', '946722725', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `barrio`
--
ALTER TABLE `barrio`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `fiesta`
--
ALTER TABLE `fiesta`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `restaurante`
--
ALTER TABLE `restaurante`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `fk_barrio_barrio_codigo_idx` (`barrio_codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `barrio`
--
ALTER TABLE `barrio`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT de la tabla `fiesta`
--
ALTER TABLE `fiesta`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `restaurante`
--
ALTER TABLE `restaurante`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

--
-- Volcado de datos para la tabla `pma__central_columns`
--

INSERT INTO `pma__central_columns` (`db_name`, `col_name`, `col_type`, `col_length`, `col_collation`, `col_isNull`, `col_extra`, `col_default`) VALUES
('gestionllodio', 'restaurante_codigo', 'int', '11', '', 0, ',', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Volcado de datos para la tabla `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"relation_lines\":\"true\",\"snap_to_grid\":\"off\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Volcado de datos para la tabla `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'gestiondocente.sql', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"barrio\",\"restaurante\"],\"table_structure[]\":[\"barrio\",\"restaurante\"],\"table_data[]\":[\"barrio\",\"restaurante\"],\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"json_structure_or_data\":\"data\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Estructura de la tabla @TABLE@\",\"latex_structure_continued_caption\":\"Estructura de la tabla @TABLE@ (continÃºa)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Contenido de la tabla @TABLE@\",\"latex_data_continued_caption\":\"Contenido de la tabla @TABLE@ (continÃºa)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"excel_columns\":null,\"htmlword_columns\":null,\"json_pretty_print\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_use_transaction\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'table', 'gestioncursos', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"allrows\":\"1\",\"output_format\":\"sendit\",\"filename_template\":\"@TABLE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"json_structure_or_data\":\"data\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Estructura de la tabla @TABLE@\",\"latex_structure_continued_caption\":\"Estructura de la tabla @TABLE@ (continÃºa)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Contenido de la tabla @TABLE@\",\"latex_data_continued_caption\":\"Contenido de la tabla @TABLE@ (continÃºa)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"excel_columns\":null,\"htmlword_columns\":null,\"json_pretty_print\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_use_transaction\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(3, 'root', 'server', 'gestioncursos', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"appllodio\",\"gestioncursos\",\"gestiondocente\",\"gestionllodio\",\"phpmyadmin\",\"test\"],\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"json_structure_or_data\":\"data\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Estructura de la tabla @TABLE@\",\"latex_structure_continued_caption\":\"Estructura de la tabla @TABLE@ (continÃºa)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Contenido de la tabla @TABLE@\",\"latex_data_continued_caption\":\"Contenido de la tabla @TABLE@ (continÃºa)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"excel_columns\":null,\"htmlword_columns\":null,\"json_pretty_print\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_use_transaction\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"gestioncursos\",\"table\":\"curso\"},{\"db\":\"appllodio\",\"table\":\"fiesta\"},{\"db\":\"appllodio\",\"table\":\"restaurante\"},{\"db\":\"appllodio\",\"table\":\"barrio\"},{\"db\":\"gestionllodio\",\"table\":\"barrio\"},{\"db\":\"appllodio\",\"table\":\"aaaa\"},{\"db\":\"gestionllodio\",\"table\":\"restaurante\"},{\"db\":\"gestionllodio\",\"table\":\"fiesta\"},{\"db\":\"gestionllodio\",\"table\":\"contacto\"},{\"db\":\"gestionllodio\",\"table\":\"enlace\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Volcado de datos para la tabla `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'gestionllodio', 'fiesta', '{\"CREATE_TIME\":\"2017-04-16 11:08:59\",\"col_order\":[\"0\",\"1\",\"3\",\"2\",\"4\",\"5\"],\"col_visib\":[\"1\",\"1\",\"1\",\"1\",\"1\",\"1\"],\"sorted_col\":\"`fiesta`.`barrio_codigo2`  DESC\"}', '2017-04-17 10:24:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2017-04-21 19:55:47', '{\"lang\":\"es\",\"collation_connection\":\"utf8mb4_general_ci\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
