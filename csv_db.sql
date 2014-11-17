-- phpMyAdmin SQL Dump
-- version 4.1.11
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Oct 31, 2014 at 10:37 PM
-- Server version: 5.5.28-log
-- PHP Version: 5.5.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `csv_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `year_report`
--

CREATE TABLE IF NOT EXISTS `year_report` (
  `JobID` int(3) DEFAULT NULL,
  `LocactionName` varchar(5) DEFAULT NULL,
  `LocationID` int(4) DEFAULT NULL,
  `Area` varchar(7) DEFAULT NULL,
  `AreaID` int(4) DEFAULT NULL,
  `Month` int(2) DEFAULT NULL,
  `PointsScored` int(3) DEFAULT NULL,
  `PointsOutOf` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `year_report`
--

INSERT INTO `year_report` (`JobID`, `LocactionName`, `LocationID`, `Area`, `AreaID`, `Month`, `PointsScored`, `PointsOutOf`) VALUES
(1, 'Loc A', 123, 'Area A', 1, 1, 15, 15),
(2, 'Loc B', 124, 'Area A', 1, 1, 5, 15),
(3, 'Loc C', 125, 'Area A', 1, 2, 18, 20),
(4, 'Loc D', 126, 'Area B', 7, 10, 23, 30),
(5, 'Loc E', 127, 'Area FA', 1842, 2, 14, 20),
(6, 'Loc F', 130, 'Area C', 78, 1, 75, 75),
(7, 'Loc G', 1123, 'Area FA', 1842, 10, 7, 50),
(8, 'Loc H', 321, 'Area C', 78, 1, 44, 60),
(9, 'Loc I', 99, 'Area X', 111, 1, 45, 75),
(10, 'Loc J', 97, 'Area X', 111, 1, 0, 15),
(11, 'Loc A', 123, 'Area A', 1, 2, 75, 88),
(12, 'Loc B', 124, 'Area A', 1, 2, 7, 15),
(13, 'Loc C', 125, 'Area A', 1, 8, 1, 50),
(14, 'Loc D', 126, 'Area B', 7, 9, 50, 50),
(15, 'Loc E', 127, 'Area FA', 1842, 10, 20, 25),
(16, 'Loc F', 130, 'Area C', 78, 2, 95, 95),
(17, 'Loc G', 1123, 'Area FA', 1842, 9, 19, 75),
(18, 'Loc H', 321, 'Area C', 78, 2, 60, 65),
(19, 'Loc I', 99, 'Area X', 111, 2, 99, 100),
(20, 'Loc J', 97, 'Area X', 111, 2, 100, 100),
(21, 'Loc A', 123, 'Area A', 1, 3, 13, 60),
(22, 'Loc B', 124, 'Area A', 1, 3, 15, 15),
(23, 'Loc C', 125, 'Area A', 1, 7, 100, 110),
(24, 'Loc D', 126, 'Area B', 7, 8, 100, 100),
(25, 'Loc E', 127, 'Area FA', 1842, 6, 45, 50),
(26, 'Loc F', 130, 'Area C', 78, 3, 150, 150),
(27, 'Loc G', 1123, 'Area FA', 1842, 8, 100, 100),
(28, 'Loc H', 321, 'Area C', 78, 3, 75, 75),
(29, 'Loc I', 99, 'Area X', 111, 3, 94, 100),
(30, 'Loc J', 97, 'Area X', 111, 3, 90, 150),
(31, 'Loc A', 123, 'Area A', 1, 4, 100, 100),
(32, 'Loc B', 124, 'Area A', 1, 4, 60, 65),
(33, 'Loc C', 125, 'Area A', 1, 5, 45, 50),
(34, 'Loc D', 126, 'Area B', 7, 7, 75, 100),
(35, 'Loc E', 127, 'Area FA', 1842, 5, 40, 66),
(36, 'Loc F', 130, 'Area C', 78, 4, 110, 110),
(37, 'Loc G', 1123, 'Area FA', 1842, 7, 24, 80),
(38, 'Loc H', 321, 'Area C', 78, 4, 65, 100),
(39, 'Loc I', 99, 'Area X', 111, 4, 100, 100),
(40, 'Loc J', 97, 'Area X', 111, 4, 0, 45),
(41, 'Loc A', 123, 'Area A', 1, 5, 98, 99),
(42, 'Loc B', 124, 'Area A', 1, 5, 65, 66),
(43, 'Loc C', 125, 'Area A', 1, 6, 60, 65),
(44, 'Loc D', 126, 'Area B', 7, 6, 65, 100),
(45, 'Loc E', 127, 'Area FA', 1842, 4, 60, 75),
(46, 'Loc F', 130, 'Area C', 78, 5, 85, 85),
(47, 'Loc G', 1123, 'Area FA', 1842, 6, 65, 75),
(48, 'Loc H', 321, 'Area C', 78, 5, 77, 99),
(49, 'Loc I', 99, 'Area X', 111, 5, 100, 100),
(50, 'Loc J', 97, 'Area X', 111, 5, 88, 150),
(51, 'Loc A', 123, 'Area A', 1, 6, 25, 30),
(52, 'Loc B', 124, 'Area A', 1, 8, 42, 50),
(53, 'Loc C', 125, 'Area A', 1, 3, 99, 99),
(54, 'Loc D', 126, 'Area B', 7, 5, 66, 75),
(55, 'Loc E', 127, 'Area FA', 1842, 3, 75, 75),
(56, 'Loc F', 130, 'Area C', 78, 6, 77, 77),
(57, 'Loc G', 1123, 'Area FA', 1842, 5, 4, 100),
(58, 'Loc H', 321, 'Area C', 78, 6, 100, 166),
(59, 'Loc I', 99, 'Area X', 111, 6, 100, 100),
(60, 'Loc J', 97, 'Area X', 111, 6, 77, 95),
(61, 'Loc A', 123, 'Area A', 1, 7, 25, 25),
(62, 'Loc B', 124, 'Area A', 1, 6, 44, 75),
(63, 'Loc C', 125, 'Area A', 1, 4, 80, 80),
(64, 'Loc D', 126, 'Area B', 7, 4, 90, 125),
(65, 'Loc E', 127, 'Area FA', 1842, 1, 100, 100),
(66, 'Loc F', 130, 'Area C', 78, 7, 15, 15),
(67, 'Loc G', 1123, 'Area FA', 1842, 4, 6, 45),
(68, 'Loc H', 321, 'Area C', 78, 7, 9, 25),
(69, 'Loc I', 99, 'Area X', 111, 7, 100, 100),
(70, 'Loc J', 97, 'Area X', 111, 7, 66, 100),
(71, 'Loc A', 123, 'Area A', 1, 8, 50, 50),
(72, 'Loc B', 124, 'Area A', 1, 7, 100, 100),
(73, 'Loc C', 125, 'Area A', 1, 2, 40, 40),
(74, 'Loc D', 126, 'Area B', 7, 3, 90, 90),
(75, 'Loc E', 127, 'Area FA', 1842, 7, 100, 152),
(76, 'Loc F', 130, 'Area C', 78, 8, 96, 96),
(77, 'Loc G', 1123, 'Area FA', 1842, 3, 80, 80),
(78, 'Loc H', 321, 'Area C', 78, 8, 44, 44),
(79, 'Loc I', 99, 'Area X', 111, 8, 100, 100),
(80, 'Loc J', 97, 'Area X', 111, 8, 0, 50),
(81, 'Loc A', 123, 'Area A', 1, 9, 66, 78),
(82, 'Loc B', 124, 'Area A', 1, 10, 90, 100),
(83, 'Loc C', 125, 'Area A', 1, 10, 65, 65),
(84, 'Loc D', 126, 'Area B', 7, 2, 14, 14),
(85, 'Loc E', 127, 'Area FA', 1842, 8, 150, 150),
(86, 'Loc F', 130, 'Area C', 78, 9, 55, 55),
(87, 'Loc G', 1123, 'Area FA', 1842, 2, 91, 200),
(88, 'Loc H', 321, 'Area C', 78, 9, 59, 60),
(89, 'Loc I', 99, 'Area X', 111, 9, 100, 100),
(90, 'Loc J', 97, 'Area X', 111, 9, 34, 35),
(91, 'Loc A', 123, 'Area A', 1, 10, 15, 45),
(92, 'Loc B', 124, 'Area A', 1, 9, 9, 50),
(93, 'Loc C', 125, 'Area A', 1, 1, 70, 75),
(94, 'Loc D', 126, 'Area B', 7, 1, 88, 200),
(95, 'Loc E', 127, 'Area FA', 1842, 9, 14, 16),
(96, 'Loc F', 130, 'Area C', 78, 10, 100, 100),
(97, 'Loc G', 1123, 'Area FA', 1842, 1, 10, 15),
(98, 'Loc H', 321, 'Area C', 78, 10, 100, 100),
(99, 'Loc I', 99, 'Area X', 111, 10, 100, 100),
(100, 'Loc J', 97, 'Area X', 111, 10, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
