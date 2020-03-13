-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mar 13, 2020 alle 08:37
-- Versione del server: 10.4.11-MariaDB
-- Versione PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `corona`
--
CREATE DATABASE IF NOT EXISTS `corona` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `corona`;

-- --------------------------------------------------------

--
-- Struttura della tabella `daily_rep`
--

DROP TABLE IF EXISTS `daily_rep`;
CREATE TABLE IF NOT EXISTS `daily_rep` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DA` varchar(255) NOT NULL,
  `RE` varchar(255) NOT NULL,
  `LU` varchar(255) NOT NULL,
  `TOT` int(11) NOT NULL,
  `INC` int(11) NOT NULL,
  `GU` int(11) NOT NULL,
  `DE` int(11) NOT NULL,
  `TA` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `daily_rep`
--

INSERT INTO `daily_rep` (`ID`, `DA`, `RE`, `LU`, `TOT`, `INC`, `GU`, `DE`, `TA`) VALUES
(1, '2020-03-11', 'Totale casi', 'TOT. ITALIA', 10149, 0, 1004, 631, 60761),
(2, '2020-03-12', 'Totale casi', 'TOT. ITALIA', 10590, 0, 1045, 827, 73154),
(3, '2020-03-10', '', '', 10149, 0, 0, 0, 0),
(4, '2020-03-09', '', '', 9172, 0, 0, 0, 0),
(5, '2020-03-08', '', '', 7985, 0, 0, 0, 0),
(6, '2020-03-07', '', '', 5883, 0, 0, 0, 0),
(7, '2020-03-06', '', '', 4636, 0, 0, 0, 0),
(8, '2020-03-05', '', '', 3858, 0, 0, 0, 0),
(9, '2020-03-04', '', '', 3089, 0, 0, 0, 0),
(10, '2020-03-03', '', '', 2502, 0, 0, 0, 0),
(11, '2020-03-13', 'Totale casi', 'TOT. ITALIA', 12839, 0, 1258, 1016, 86011);

-- --------------------------------------------------------

--
-- Struttura della tabella `date_rep`
--

DROP TABLE IF EXISTS `date_rep`;
CREATE TABLE IF NOT EXISTS `date_rep` (
  `date` varchar(255) NOT NULL,
  UNIQUE KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `date_rep`
--

INSERT INTO `date_rep` (`date`) VALUES
('2020-03-03'),
('2020-03-04'),
('2020-03-05'),
('2020-03-06'),
('2020-03-07'),
('2020-03-08'),
('2020-03-09'),
('2020-03-10'),
('2020-03-11'),
('2020-03-12'),
('2020-03-13');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
