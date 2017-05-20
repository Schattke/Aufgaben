-- phpMyAdmin SQL Dump
-- version 3.3.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 12. September 2016 um 10:28
-- Server Version: 5.1.46
-- PHP-Version: 5.3.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `test`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `abteilung`
--
USE hbu417sql1;

CREATE TABLE IF NOT EXISTS `abteilung` (
  `anr` int(255) NOT NULL,
  `name` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`anr`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Daten für Tabelle `abteilung`
--

INSERT INTO `abteilung` (`anr`, `name`) VALUES
(1, 'Verkauf'),
(2, 'Lager');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kunde`
--

CREATE TABLE IF NOT EXISTS `kunde` (
  `knr` int(255) NOT NULL,
  `name` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`knr`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Daten für Tabelle `kunde`
--

INSERT INTO `kunde` (`knr`, `name`) VALUES
(1, 'Saturn'),
(2, 'MediaMarkt');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `mitarbeiter`
--

CREATE TABLE IF NOT EXISTS `mitarbeiter` (
  `mnr` int(255) NOT NULL,
  `name` text COLLATE latin1_general_ci NOT NULL,
  `tel` int(255) NOT NULL,
  `anr` int(255) NOT NULL COMMENT 'FK',
  `position` text COLLATE latin1_general_ci NOT NULL,
  `vnr` int(255) NOT NULL,
  PRIMARY KEY (`mnr`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Daten für Tabelle `mitarbeiter`
--

INSERT INTO `mitarbeiter` (`mnr`, `name`, `tel`, `anr`, `position`, `vnr`) VALUES
(1, 'Henry Hötzel', 2147483647, 1, 'Mitarbeiter', 1),
(2, 'Für GONDOR', 2147483647, 2, 'Leiter', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `mitarbeiter_projekt`
--

CREATE TABLE IF NOT EXISTS `mitarbeiter_projekt` (
  `mnr` int(255) NOT NULL,
  `pnr` int(255) NOT NULL,
  `Wochenstunden` int(255) NOT NULL,
  PRIMARY KEY (`mnr`,`pnr`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Daten für Tabelle `mitarbeiter_projekt`
--

INSERT INTO `mitarbeiter_projekt` (`mnr`, `pnr`, `Wochenstunden`) VALUES
(1, 1, 20),
(2, 1, 15);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `projekt`
--

CREATE TABLE IF NOT EXISTS `projekt` (
  `pnr` int(255) NOT NULL,
  `pbez` text COLLATE latin1_general_ci NOT NULL,
  `knr` int(255) NOT NULL COMMENT 'FK',
  PRIMARY KEY (`pnr`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Daten für Tabelle `projekt`
--

INSERT INTO `projekt` (`pnr`, `pbez`, `knr`) VALUES
(1, 'App Entwicklung', 1),
(2, 'Server', 2);
