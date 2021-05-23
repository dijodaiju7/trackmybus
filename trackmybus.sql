-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2021 at 08:26 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trackmybus`
--

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `DriverId` varchar(10) NOT NULL,
  `DriverName` varchar(15) NOT NULL,
  `StartingPoint` varchar(30) NOT NULL,
  `Destination` varchar(30) NOT NULL,
  `CurrentLocation` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`DriverId`, `DriverName`, `StartingPoint`, `Destination`, `CurrentLocation`) VALUES
('TMBDR1', 'Mark', 'Ernakulam', 'Thrissur', 'Aluva'),
('TMBDR2', 'Mathew', 'Palakkad', 'Kollam', 'Chalakudy'),
('TMBDR3', 'Antony', 'Thiruvanathapuram', 'Kozhikode', 'Ernakulam'),
('', '', 'Aloor', 'Kalettumkara', ''),
('', '', 'Adoor', 'Pathanamthitta', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
