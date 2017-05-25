-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2017 at 10:54 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloodbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `blooddonated`
--

CREATE TABLE `blooddonated` (
  `id` int(3) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `gender` varchar(50) NOT NULL,
  `groups` int(20) DEFAULT NULL,
  `unit` int(3) NOT NULL,
  `camp` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `contact` int(12) NOT NULL,
  `adhaar` int(17) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blooddonated`
--

INSERT INTO `blooddonated` (`id`, `name`, `gender`, `groups`, `unit`, `camp`, `date`, `contact`, `adhaar`) VALUES
(1, 'some name', 'male', NULL, 62, '7', '2017-05-08', 72637862, 2147483647),
(2, 'saikat', 'male', 15, 1, '9', '2017-05-09', 8983189, 98989798),
(3, 'saikat', 'male', 15, 1, '9', '2017-05-09', 8983189, 98989798);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blooddonated`
--
ALTER TABLE `blooddonated`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blooddonated`
--
ALTER TABLE `blooddonated`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
