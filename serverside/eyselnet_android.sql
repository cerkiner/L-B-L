-- phpMyAdmin SQL Dump
-- version 3.4.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 06, 2013 at 12:16 PM
-- Server version: 5.5.34
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `eyselnet_android`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `place_name` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `start_time` int(11) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  PRIMARY KEY (`event_id`),
  KEY `place_code` (`place_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=106 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_name`, `place_name`, `start_time`, `latitude`, `longitude`) VALUES
(1, 'Action Party', 'Place of AP', 1388894020, 85, 126),
(2, 'National Action Party', 'Place of NAP', 1388836420, -76, -88),
(3, 'Peoples Action Party', 'Place of PAP', 1387752820, -41, -6),
(4, 'Agrarian Party', 'Place of AP', 1387634020, 0, 109),
(5, 'Alliance Party', 'Place of AP', 1387817620, -61, 125),
(6, 'National Alliance', 'Place of NA', 1386590020, -47, -25),
(7, 'New Alliance Party', 'Place of NAP', 1388199220, -80, -12),
(8, 'Centre Party', 'Place of CP', 1388883220, -25, 83),
(9, 'Christian Party', 'Place of CP', 1387292020, -34, 7),
(10, 'Christian Democratic Party and Christian Democratic Union', 'Place of CDP4aCDU', 1388663620, -54, -157),
(11, 'Christian Peoples Party', 'Place of CPP', 1388062420, -58, -167),
(12, 'Civic Party', 'Place of CP', 1387684420, -67, -138),
(13, 'Civic Democratic Party', 'Place of CDP', 1388321620, 28, -39),
(14, 'Colorado Party', 'Place of CP', 1387022020, -67, 141),
(15, 'Communist Party and Communist League', 'Place of CP4aCL', 1386518020, 33, -159),
(16, 'International Communist League', 'Place of ICL', 1388645620, 43, -73),
(17, 'Revolutionary Communist League', 'Place of RCL', 1387212820, -11, -53),
(18, 'Worker-Communist Party', 'Place of WCP', 1388379220, -16, 77),
(19, 'Revolutionary Communist Party', 'Place of RCP', 1387698820, 46, -170),
(20, 'Conservative Party', 'Place of CP', 1386489220, 25, -98),
(21, 'Conservative Peoples Party', 'Place of CPP', 1386647620, -39, -34),
(22, 'Democratic Party and Democratic Alliance', 'Place of DP4aDA', 1386734020, 51, 13),
(23, 'Christian Democratic Party and Christian Democratic Union', 'Place of CDP4aCDU', 1387022020, 6, -111),
(24, 'Civic Democratic Party', 'Place of CDP', 1388004820, 48, -64),
(25, 'Union of Democratic Forces', 'Place of UoDF', 1387731220, 53, -179),
(26, 'Free Democratic Party', 'Place of FDP', 1387871620, 31, 87),
(27, 'Democratic Labour Party', 'Place of DLP', 1388616820, 87, -114),
(28, 'Liberal Democratic Party', 'Place of LDP', 1386989620, 46, 35),
(29, 'National Democratic Party and National Democratic Congress', 'Place of NDP4aNDC', 1388775220, -44, -54),
(30, 'New Democratic Party', 'Place of NDP', 1388843620, -41, 176),
(31, 'Democratic Peoples Party', 'Place of DPP', 1386903220, -26, -81),
(32, 'Progressive Democratic Party', 'Place of PDP', 1387914820, -5, -159),
(33, 'Radical Democratic Party', 'Place of RDP', 1386748420, 37, 33),
(34, 'Social Democratic Party', 'Place of SDP', 1387227220, -31, -53),
(35, 'Social Democratic Union', 'Place of SDU', 1388033620, 62, -126),
(36, 'Democratic Socialist Party', 'Place of DSP', 1388037220, -16, 116),
(37, 'United Democratic Party', 'Place of UDP', 1387385620, -40, 109),
(38, 'Equality Party', 'Place of EP', 1387842820, 0, 21),
(39, 'Fatherland Party and Fatherland Union', 'Place of FP4aFU', 1386824020, -13, 113),
(40, 'Union of Democratic Forces', 'Place of UoDF', 1387698820, -21, -149),
(41, 'Free Democratic Party', 'Place of FDP', 1387666420, 13, -21),
(42, 'Freedom Party', 'Place of FP', 1388357620, -62, 149),
(43, 'Green Party', 'Place of GP', 1388498020, -40, 43),
(44, 'Independence Party', 'Place of IP', 1387468420, 17, 160),
(45, 'International', 'Place of I', 1388354020, -49, 103),
(46, 'Industrial Workers of the World', 'Place of IWotW', 1388721220, 66, -109),
(47, 'Labour Party', 'Place of LP', 1388271220, -47, -9),
(48, 'Democratic Labour Party', 'Place of DLP', 1387778020, 54, 170),
(49, 'Socialist Labour Party', 'Place of SLP', 1386662020, 82, -35),
(50, 'Left Party', 'Place of LP', 1388699620, -8, 103),
(51, 'United Left', 'Place of UL', 1388915620, 80, -52),
(52, 'Liberal Party', 'Place of LP', 1387511620, 37, 5),
(53, 'Liberal Democratic Party', 'Place of LDP', 1387292020, 5, 105),
(54, 'National Liberal Party', 'Place of NLP', 1388840020, 79, -41),
(55, 'Radical Liberal Party', 'Place of RLP', 1388699620, 36, 41),
(56, 'Social Liberal Party', 'Place of SLP', 1388159620, 19, -8),
(57, 'Libertarian Party', 'Place of LP', 1388652820, -29, 79),
(58, 'Motherland Party', 'Place of MP', 1387335220, 67, 7),
(59, 'National Party, National Front and National Congress', 'Place of NP4NFaNC', 1387263220, 83, -10),
(60, 'National Alliance', 'Place of NA', 1388267620, 65, 153),
(61, 'National Democratic Party and National Democratic Congress', 'Place of NDP4aNDC', 1387731220, 62, 133),
(62, 'National Liberal Party', 'Place of NLP', 1388624020, -41, 27),
(63, 'New National Party', 'Place of NNP', 1387396420, 20, -144),
(64, 'National Socialist Party', 'Place of NSP', 1386874420, 12, -167),
(65, 'National Unity Party', 'Place of NUP', 1387839220, -6, 84),
(66, 'New Party', 'Place of NP', 1386863620, -63, -57),
(67, 'New Alliance Party', 'Place of NAP', 1388058820, -84, 64),
(68, 'New Democratic Party', 'Place of NDP', 1387353220, -20, 17),
(69, 'New National Party', 'Place of NNP', 1388652820, 40, 2),
(70, 'Peoples Party', 'Place of PP', 1387324420, -9, -49),
(71, 'Christian Peoples Party', 'Place of CPP', 1387137220, 84, -105),
(72, 'Conservative Peoples Party', 'Place of CPP', 1386802420, 60, -7),
(73, 'Democratic Peoples Party', 'Place of DPP', 1388242420, -52, -147),
(74, 'Liberal Peoples Party', 'Place of LPP', 1388490820, -21, 58),
(75, 'Republican Peoples Party', 'Place of RPP', 1388577220, 80, -133),
(76, 'Popular Party and Popular Alliance', 'Place of PP4aPA', 1387907620, -70, -78),
(77, 'Pirate Party', 'Place of PP', 1388757220, 46, -65),
(78, 'Progressive Party', 'Place of PP', 1387943620, -69, 76),
(79, 'Progressive Democratic Party', 'Place of PDP', 1386806020, -90, -25),
(80, 'Radical Party', 'Place of RP', 1388069620, -26, 136),
(81, 'Radical Democratic Party', 'Place of RDP', 1386471220, 24, 122),
(82, 'Left Radical Party', 'Place of LRP', 1386993220, 50, 61),
(83, 'Reform Party', 'Place of RP', 1388195620, -1, 138),
(84, 'Republican Party', 'Place of RP', 1388426020, -34, -83),
(85, 'Republican Peoples Party', 'Place of RPP', 1387569220, -61, -104),
(86, 'Revolutionary Party', 'Place of RP', 1387889620, 45, -64),
(87, 'Revolutionary Communist Party', 'Place of RCP', 1388595220, 31, -152),
(88, 'Social Democratic Party', 'Place of SDP', 1386881620, -42, -109),
(89, 'Social Democratic Union', 'Place of SDU', 1388660020, -16, -108),
(90, 'Socialist Party', 'Place of SP', 1387227220, -79, 19),
(91, 'Democratic Socialist Party', 'Place of DSP', 1386914020, -77, -113),
(92, 'Socialist Labour Party', 'Place of SLP', 1386507220, -37, 166),
(93, 'National Socialist Party', 'Place of NSP', 1388184820, 90, -16),
(94, 'Socialist Workers Party', 'Place of SWP', 1387889620, 52, 95),
(95, 'Unionist Party', 'Place of UP', 1388559220, -48, 154),
(96, 'Unity Party, United Party', 'Place of UP4UP', 1386572020, 57, 62),
(97, 'United Left', 'Place of UL', 1387378420, 31, -57),
(98, 'National Unity Party', 'Place of NUP', 1387569220, 63, 40),
(99, 'United Democratic Party', 'Place of UDP', 1388062420, 42, -171),
(100, 'United Workers Party', 'Place of UWP', 1388559220, -82, -148),
(101, 'Workers Party', 'Place of WP', 1387436020, -48, -121),
(102, 'Socialist Workers Party', 'Place of SWP', 1387896820, -43, -15),
(103, 'United Workers Party', 'Place of UWP', 1387796020, 83, -16),
(104, 'Worker-Communist Party', 'Place of WCP', 1388933620, 7, -94),
(105, 'Workers League', 'Place of WL', 1388339620, -22, -9);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
