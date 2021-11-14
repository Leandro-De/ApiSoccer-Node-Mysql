-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-11-2021 a las 23:42:44
-- Versión del servidor: 5.5.32
-- Versión de PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `apisoccer`
--
CREATE DATABASE IF NOT EXISTS `apisoccer` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `apisoccer`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player`
--

CREATE TABLE IF NOT EXISTS `player` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `squad_number` int(11) NOT NULL,
  `position` varchar(50) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `player`
--

INSERT INTO `player` (`id`, `name`, `age`, `team_id`, `squad_number`, `position`, `nationality`) VALUES
(1, 'Eric', 21, 1, 2, 'attack', 'Espa'),
(2, 'Erisac', 23, 1, 4, 'attack', 'lder'),
(3, 'ECaren', 23, 2, 5, 'defensa', 'lder');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `team`
--

CREATE TABLE IF NOT EXISTS `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `league` varchar(20) NOT NULL,
  `country` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `pass` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `user`, `name`, `pass`) VALUES
(5, 'fer', 'fera', '$2a$08$SWoVy1Z9fKFMwGo3qOB7e.DwD5MrM2zRi8lZafS9ZZbRejJOYVgL6'),
(6, 'yer', 'yes', '$2a$08$wabdS6tSmRGRAF4PYhf4nuSIDI8fj9.0bBRLfyaVIMhgimJJdrm06'),
(7, 'fr', 'gf', '$2a$08$7tm.hkYKrdje3T.O1n70teaJopbyr9WnojLJbpnLrjbd18rkbO19G'),
(8, 'as', 'Yesid Varela', '$2a$08$Snv8HYi0y/xgi0f6k1A5x.Nej99Ln/0AKRf572hb5e.wR4JlXSPTe'),
(9, 'ss', 'sss', '$2a$08$6Fr9cVSjUOe6SwPFtIlYy.4NocuZN2l.2r3oSoQ5yvBa4XSgRysKi');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
