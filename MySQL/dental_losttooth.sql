-- phpMyAdmin SQL Dump
-- version 5.1.1-2.fc35
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 16, 2021 at 10:02 AM
-- Server version: 10.5.12-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dental_losttooth`
--

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`doc_id`, `doc_name`, `doc_isActive`) VALUES
(1, 'Dr. Bryce Larkin', 1),
(2, 'Dr. Charles Carmichael', 1),
(3, 'Dr. Sarah Walker', 1);

--
-- Dumping data for table `maritial_status`
--

INSERT INTO `maritial_status` (`mstatus_id`, `mstatus_status`, `mstatus_isActive`) VALUES
(1, 'Single', 1),
(2, 'Married', 1),
(3, 'Single', 1),
(4, 'Married', 1),
(5, 'Divorsed', 1),
(6, 'Widowed', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
