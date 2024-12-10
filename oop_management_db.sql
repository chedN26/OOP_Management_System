-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2024 at 09:44 AM
-- Server version: 5.6.26
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oop_management_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill_tbl`
--

CREATE TABLE IF NOT EXISTS `bill_tbl` (
  `bill_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `tenant_name` varchar(100) NOT NULL,
  `rent` int(11) NOT NULL,
  `internet` int(11) NOT NULL,
  `electricity` float NOT NULL,
  `water` float NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=416 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_tbl`
--

INSERT INTO `bill_tbl` (`bill_id`, `unit_id`, `tenant_name`, `rent`, `internet`, `electricity`, `water`, `month`, `year`) VALUES
(395, 1, 'James Smith', 3500, 300, 317.625, 317.625, 12, 2024),
(396, 1, 'James Smith', 3500, 300, 371.745, 371.745, 11, 2024),
(397, 1, 'James Smith', 3500, 300, 288.41, 288.41, 10, 2024),
(398, 1, 'James Smith', 3500, 300, 335.775, 335.775, 9, 2024),
(399, 1, 'James Smith', 3500, 300, 396.87, 396.87, 8, 2024),
(400, 2, 'Sofia Rodriguez', 3500, 300, 307.02, 307.02, 12, 2024),
(401, 2, 'Sofia Rodriguez', 3500, 300, 395.2, 395.2, 11, 2024),
(402, 2, 'Sofia Rodriguez', 3500, 300, 378.75, 378.75, 10, 2024),
(403, 2, 'Sofia Rodriguez', 3500, 300, 299.98, 299.98, 9, 2024),
(404, 2, 'Sofia Rodriguez', 3500, 300, 425.6, 425.6, 8, 2024),
(405, 3, 'David Garcia', 3500, 300, 293.91, 293.91, 12, 2024),
(406, 3, 'David Garcia', 3500, 300, 347.3, 347.3, 11, 2024),
(407, 3, 'David Garcia', 3500, 300, 362.4, 362.4, 10, 2024),
(408, 3, 'David Garcia', 3500, 300, 295.78, 295.78, 9, 2024),
(409, 3, 'David Garcia', 3500, 300, 398.64, 398.64, 8, 2024),
(410, 4, 'Maria Hernandez', 3500, 300, 363.6, 363.6, 12, 2024),
(411, 4, 'Maria Hernandez', 3500, 300, 295.96, 295.96, 11, 2024),
(412, 4, 'Maria Hernandez', 3500, 300, 405.42, 405.42, 10, 2024),
(413, 4, 'Maria Hernandez', 3500, 300, 324.21, 324.21, 9, 2024),
(414, 4, 'Maria Hernandez', 3500, 300, 349.6, 349.6, 8, 2024),
(415, 1, 'Sofia Rodriguez', 3500, 300, 270, 407, 7, 2024);

-- --------------------------------------------------------

--
-- Table structure for table `electricity_tbl`
--

CREATE TABLE IF NOT EXISTS `electricity_tbl` (
  `electricity_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `previous` float NOT NULL,
  `current` float NOT NULL,
  `consumption` float NOT NULL,
  `rate` float NOT NULL,
  `total` float NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `electricity_tbl`
--

INSERT INTO `electricity_tbl` (`electricity_id`, `unit_id`, `previous`, `current`, `consumption`, `rate`, `total`, `month`, `year`) VALUES
(12, 1, 120.5, 150.75, 30.25, 10.5, 317.625, 12, 2024),
(13, 1, 150.75, 180.9, 30.15, 12.3, 371.745, 11, 2024),
(14, 1, 180.9, 210.35, 29.45, 9.8, 288.41, 10, 2024),
(15, 1, 210.35, 240.6, 30.25, 11.1, 335.775, 9, 2024),
(16, 1, 240.6, 270.15, 29.55, 13.4, 396.87, 8, 2024),
(17, 2, 140, 170.1, 30.1, 10.2, 307.02, 12, 2024),
(18, 2, 170.1, 200.5, 30.4, 13, 395.2, 11, 2024),
(19, 2, 200.5, 230.8, 30.3, 12.5, 378.75, 10, 2024),
(20, 2, 230.8, 261, 30.2, 9.9, 299.98, 9, 2024),
(21, 2, 261, 291.4, 30.4, 14, 425.6, 8, 2024),
(22, 3, 160.3, 190.6, 30.3, 9.7, 293.91, 12, 2024),
(23, 3, 190.6, 220.8, 30.2, 11.5, 347.3, 11, 2024),
(24, 3, 220.8, 251, 30.2, 12, 362.4, 10, 2024),
(25, 3, 251, 281.1, 30.1, 9.8, 295.78, 9, 2024),
(26, 3, 281.1, 311.3, 30.2, 13.2, 398.64, 8, 2024),
(27, 4, 180, 210.3, 30.3, 12, 363.6, 12, 2024),
(28, 4, 210.3, 240.5, 30.2, 9.8, 295.96, 11, 2024),
(29, 4, 240.5, 270.8, 30.3, 13.4, 405.42, 10, 2024),
(30, 4, 270.8, 301.1, 30.3, 10.7, 324.21, 9, 2024),
(31, 4, 301.1, 331.5, 30.4, 11.5, 349.6, 8, 2024),
(32, 1, 123, 160, 37, 11, 407, 7, 2024);

-- --------------------------------------------------------

--
-- Table structure for table `unit_tbl`
--

CREATE TABLE IF NOT EXISTS `unit_tbl` (
  `unit_id` int(11) NOT NULL,
  `tenant` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit_tbl`
--

INSERT INTO `unit_tbl` (`unit_id`, `tenant`, `contact`) VALUES
(1, 'James Smith', '09171234567'),
(2, 'Sofia Rodriguez', '09234567890'),
(3, 'David Garcia', '09381234567'),
(4, 'Maria Hernandez', '09451234567'),
(5, 'Matthew Johnson', '09561234567'),
(6, 'Isabella Lopez', '09671234567'),
(7, 'Carlos Perez', '09781234567'),
(8, 'Emily Martinez', '09891234567'),
(9, 'Juan Torres', '09951234567'),
(10, 'Eva Sanchez', '09182345678');

-- --------------------------------------------------------

--
-- Table structure for table `water_tbl`
--

CREATE TABLE IF NOT EXISTS `water_tbl` (
  `water_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `previous` float NOT NULL,
  `current` float NOT NULL,
  `consumption` float NOT NULL,
  `rate` float NOT NULL,
  `total` float NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `water_tbl`
--

INSERT INTO `water_tbl` (`water_id`, `unit_id`, `previous`, `current`, `consumption`, `rate`, `total`, `month`, `year`) VALUES
(18, 1, 120.5, 150.75, 30.25, 10.5, 317.625, 12, 2024),
(19, 1, 150.75, 180.9, 30.15, 12.3, 371.745, 11, 2024),
(20, 1, 180.9, 210.35, 29.45, 9.8, 288.41, 10, 2024),
(21, 1, 210.35, 240.6, 30.25, 11.1, 335.775, 9, 2024),
(22, 1, 240.6, 270.15, 29.55, 13.4, 396.87, 8, 2024),
(23, 2, 140, 170.1, 30.1, 10.2, 307.02, 12, 2024),
(24, 2, 170.1, 200.5, 30.4, 13, 395.2, 11, 2024),
(25, 2, 200.5, 230.8, 30.3, 12.5, 378.75, 10, 2024),
(26, 2, 230.8, 261, 30.2, 9.9, 299.98, 9, 2024),
(27, 2, 261, 291.4, 30.4, 14, 425.6, 8, 2024),
(28, 3, 160.3, 190.6, 30.3, 9.7, 293.91, 12, 2024),
(29, 3, 190.6, 220.8, 30.2, 11.5, 347.3, 11, 2024),
(30, 3, 220.8, 251, 30.2, 12, 362.4, 10, 2024),
(31, 3, 251, 281.1, 30.1, 9.8, 295.78, 9, 2024),
(32, 3, 281.1, 311.3, 30.2, 13.2, 398.64, 8, 2024),
(33, 4, 180, 210.3, 30.3, 12, 363.6, 12, 2024),
(34, 4, 210.3, 240.5, 30.2, 9.8, 295.96, 11, 2024),
(35, 4, 240.5, 270.8, 30.3, 13.4, 405.42, 10, 2024),
(36, 4, 270.8, 301.1, 30.3, 10.7, 324.21, 9, 2024),
(37, 4, 301.1, 331.5, 30.4, 11.5, 349.6, 8, 2024),
(38, 1, 123, 150, 27, 10, 270, 7, 2024);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill_tbl`
--
ALTER TABLE `bill_tbl`
  ADD PRIMARY KEY (`bill_id`);

--
-- Indexes for table `electricity_tbl`
--
ALTER TABLE `electricity_tbl`
  ADD PRIMARY KEY (`electricity_id`);

--
-- Indexes for table `unit_tbl`
--
ALTER TABLE `unit_tbl`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `water_tbl`
--
ALTER TABLE `water_tbl`
  ADD PRIMARY KEY (`water_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill_tbl`
--
ALTER TABLE `bill_tbl`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=416;
--
-- AUTO_INCREMENT for table `electricity_tbl`
--
ALTER TABLE `electricity_tbl`
  MODIFY `electricity_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `unit_tbl`
--
ALTER TABLE `unit_tbl`
  MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `water_tbl`
--
ALTER TABLE `water_tbl`
  MODIFY `water_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
