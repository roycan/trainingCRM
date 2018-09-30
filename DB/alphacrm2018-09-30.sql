-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2018 at 08:47 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alphacrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `companytable`
--

CREATE TABLE `companytable` (
  `id` int(11) UNSIGNED NOT NULL,
  `preName` varchar(50) DEFAULT NULL,
  `Name` varchar(250) NOT NULL,
  `regType` varchar(50) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `StreetA` varchar(150) DEFAULT NULL,
  `StreetB` varchar(150) DEFAULT NULL,
  `StreetC` varchar(150) DEFAULT NULL,
  `City` varchar(150) DEFAULT NULL,
  `Region` varchar(150) DEFAULT NULL,
  `Postcode` varchar(50) DEFAULT NULL,
  `Country` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companytable`
--

INSERT INTO `companytable` (`id`, `preName`, `Name`, `regType`, `reg_date`, `StreetA`, `StreetB`, `StreetC`, `City`, `Region`, `Postcode`, `Country`) VALUES
(34, 'The', 'Roy Co.', '', '2018-09-26 09:58:21', '', '', '', '', 'Metro Manila', '', 'Philippines'),
(35, '', 'TMIT World', 'Limited', '2018-09-26 10:18:30', '44 Lily Close', '', '', 'Bicester', 'Oxfordshire', 'OX26 3EJ', 'United Kingdom'),
(36, 'The', 'Pie Company', '', '2018-09-26 10:26:50', '89 Gravy Road', '', '', 'Pastryville', 'NSW', '1297', 'Australia'),
(37, 'The', 'Roy Company', '', '2018-09-26 10:26:50', '', '', '', '', 'Metro Manila', '', 'Philippines'),
(38, '', 'TMIT World', 'Limited', '2018-09-26 10:26:50', '44 Lily Close', '', '', 'Bicester', 'Oxfordshire', 'OX26 3EJ', 'UK'),
(39, 'The', 'Pie Company', '', '2018-09-26 10:31:20', '89 Gravy Road', '', '', 'Pastryville', 'NSW', '1297', 'Australia'),
(40, 'The', 'Roy Company', '', '2018-09-26 10:31:20', '', '', '', '', 'Metro Manila', '', 'Philippines'),
(41, '', 'TMIT World', 'Limited', '2018-09-26 10:31:20', '44 Lily Close', '', '', 'Bicester', 'Oxfordshire', 'OX26 3EJ', 'UK');

-- --------------------------------------------------------

--
-- Table structure for table `persontable`
--

CREATE TABLE `persontable` (
  `id` int(11) UNSIGNED NOT NULL,
  `Salutation` varchar(20) DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) NOT NULL,
  `CompanyID` int(11) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `persontable`
--

INSERT INTO `persontable` (`id`, `Salutation`, `FirstName`, `LastName`, `CompanyID`, `reg_date`) VALUES
(5, 'Mr.', 'Roy Vincent', 'Canseco', 3, '2018-09-26 10:41:08'),
(6, 'Mr.', 'Bill', 'Bloggs', 0, '2018-09-26 13:46:56'),
(7, 'Mrs.', 'Wilhelmina', 'Bloggs', 1, '2018-09-26 13:46:56'),
(8, 'Mrs.', 'Hermione', 'Hermit', 300, '2018-09-26 13:46:56');

-- --------------------------------------------------------

--
-- Table structure for table `tcompany`
--

CREATE TABLE `tcompany` (
  `ID` int(11) NOT NULL,
  `preName` varchar(50) DEFAULT NULL,
  `Name` varchar(250) NOT NULL,
  `RegType` varchar(50) DEFAULT NULL,
  `StreetA` varchar(150) DEFAULT NULL,
  `StreetB` varchar(150) DEFAULT NULL,
  `StreetC` varchar(150) DEFAULT NULL,
  `City` varchar(150) DEFAULT NULL,
  `Region` varchar(150) DEFAULT NULL,
  `Postcode` varchar(50) DEFAULT NULL,
  `Country` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tcompany`
--

INSERT INTO `tcompany` (`ID`, `preName`, `Name`, `RegType`, `StreetA`, `StreetB`, `StreetC`, `City`, `Region`, `Postcode`, `Country`) VALUES
(1, 'The', 'Pie Company', '', 'Fen Street', '', '', 'Norwich', 'Norfolk', '', 'UK\r\n'),
(2, '', 'TMIT', 'Ltd', '42 Lily Close', '', '', 'Bicester', 'Oxon', 'OX26 3EJ', 'UK\r\n'),
(3, 'La', 'Monde Reale', '', 'Rue De LAu', '', '', 'Paris', '', '', 'France\r\n'),
(4, '', 'Burger Jack', 'Inc', 'King Lane', '', '', 'NY', 'NY', 'NY777', 'USA\n'),
(5, 'The', 'Really Great Car', 'Co', 'Pickle Ave.', '', '', 'Douglas', 'IOM', 'IM99', 'UK\n'),
(6, '', 'Fish', 'PLC', 'Cod Row', '', '', 'Billingsgate', 'London', 'E14', 'England\n'),
(7, '', 'Extravaganza', 'Unlimited', 'Superheros Road', '', '', '', 'Neverland', '', 'Fairy Kingdom'),
(8, '', 'Baggins Bags', '', 'Bag End', '', '', 'Hobiton', 'Gwynedd', '', 'Middle Earth'),
(12, '', 'The Company', '', '', '', '', '', '', '', ''),
(13, 'Roy', 'Roy Vincent Canseco', 'Unlimited', '44 Aramismis St. ', 'Project 7', '', 'Quezon City', 'NCR', '1105', 'Philippines');

-- --------------------------------------------------------

--
-- Table structure for table `tlookup`
--

CREATE TABLE `tlookup` (
  `ID` int(11) NOT NULL,
  `lookupType` varchar(50) NOT NULL,
  `lookupValue` varchar(250) NOT NULL,
  `lookupOrder` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tlookup`
--

INSERT INTO `tlookup` (`ID`, `lookupType`, `lookupValue`, `lookupOrder`) VALUES
(1, 'Salutation', 'Mr', 1),
(2, 'Salutation', 'Mrs', 2),
(3, 'Salutation', 'Ms', 3),
(4, 'Salutation', 'Miss', 4),
(5, 'Salutation', 'Dr', 5),
(6, 'Salutation', 'Prof.', 6),
(7, 'Salutation', 'Sir', 7),
(8, 'Salutation', 'Lord', 8),
(9, 'Salutation', 'Lady', 9),
(10, 'Salutation', 'Hon.', 10),
(11, 'Salutation', 'Rt.Hon.', 11),
(12, 'Salutation', 'Rev.', 12),
(13, 'Salutation', 'Rt.Rev.', 13),
(14, 'Salutation', 'Baron', 14),
(15, 'Salutation', 'Baroness', 15),
(16, 'Salutation', 'Count', 16),
(17, 'Salutation', 'Countess', 17),
(18, 'Salutation', 'Capt.', 18),
(19, 'Salutation', 'Major', 19),
(20, 'Salutation', 'Col.', 20),
(21, 'Salutation', 'Gen.', 21),
(22, 'Salutation', 'M.', 22);

-- --------------------------------------------------------

--
-- Table structure for table `tperson`
--

CREATE TABLE `tperson` (
  `ID` int(11) NOT NULL,
  `Salutation` varchar(20) DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) NOT NULL,
  `CompanyID` int(11) NOT NULL,
  `Tel` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tperson`
--

INSERT INTO `tperson` (`ID`, `Salutation`, `FirstName`, `LastName`, `CompanyID`, `Tel`, `email`) VALUES
(1, 'Mr', 'Mike', 'Freighn', 4, NULL, NULL),
(2, 'Mrs', 'Kathie', 'Arnott', 2, NULL, NULL),
(3, 'Ms', 'Zeta', 'Flowers', 1, NULL, NULL),
(4, 'M', 'Guy', 'Donnet', 3, NULL, NULL),
(5, 'Mrs', 'Harriet', 'Hennesey', 3, NULL, NULL),
(6, 'Dr', 'George', 'Terry', 2, NULL, NULL),
(7, 'Sir', 'Geoffrey', 'Paul', 1, NULL, NULL),
(8, 'Mrs', 'Laura', 'Winalott', 0, NULL, NULL),
(9, 'Mr', 'Peter', 'Bellows', 1, NULL, NULL),
(10, 'Prof', 'Russell', 'Tandie', 2, NULL, NULL),
(11, 'Mr', 'Riley', 'Goffs', 1, NULL, NULL),
(12, 'Mrs', 'Sue', 'Gentle', 0, NULL, NULL),
(13, 'Ms', 'Taylor', 'McFly', 1, NULL, NULL),
(14, 'Sir', 'William', 'Brite', 5, '', NULL),
(15, 'Mr', 'Peter', 'Flynn', 5, NULL, NULL),
(16, 'Prof.', 'Roy', 'Canseco', 1, '9433568909', 'rlcanseco@up.edu.ph'),
(18, 'Mr', 'Roy', 'Canseco', 1, '9433568909', 'roy.canseco@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companytable`
--
ALTER TABLE `companytable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `persontable`
--
ALTER TABLE `persontable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tcompany`
--
ALTER TABLE `tcompany`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tlookup`
--
ALTER TABLE `tlookup`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tperson`
--
ALTER TABLE `tperson`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companytable`
--
ALTER TABLE `companytable`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `persontable`
--
ALTER TABLE `persontable`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tcompany`
--
ALTER TABLE `tcompany`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tlookup`
--
ALTER TABLE `tlookup`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tperson`
--
ALTER TABLE `tperson`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
