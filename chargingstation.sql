-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 22, 2024 at 07:09 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chargingstation`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `chargername` varchar(100) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `total_cost` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `chargername`, `duration`, `total_cost`, `latitude`, `longitude`, `date`, `time`) VALUES
(3, 'kaloor', '1', '22.0', '10.061901860691357', '76.30254864692688', '2024-3-22', '10:53'),
(4, 'kaloor', '2', '44.0', '10.061901860691357', '76.30254864692688', '2024-3-22', '11:1');

-- --------------------------------------------------------

--
-- Table structure for table `chargerowner`
--

CREATE TABLE `chargerowner` (
  `id` int(11) NOT NULL,
  `chargername` varchar(300) NOT NULL,
  `phone` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `chargerno` varchar(300) NOT NULL,
  `latitude` varchar(200) NOT NULL,
  `longitude` varchar(200) NOT NULL,
  `rating` int(100) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chargerowner`
--

INSERT INTO `chargerowner` (`id`, `chargername`, `phone`, `email`, `password`, `chargerno`, `latitude`, `longitude`, `rating`) VALUES
(9, 'kaloor', '567745777', 'sajithlal65@gmail.com', '123123', '22', '10.061901860691357', '76.30254864692688', 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `item1` varchar(300) NOT NULL,
  `price1` varchar(100) NOT NULL,
  `item2` varchar(100) NOT NULL,
  `price2` varchar(100) NOT NULL,
  `item3` varchar(100) NOT NULL,
  `price3` varchar(100) NOT NULL,
  `item4` varchar(100) NOT NULL,
  `price4` varchar(100) NOT NULL,
  `item5` varchar(100) NOT NULL,
  `price5` varchar(100) NOT NULL,
  `item6` varchar(100) NOT NULL,
  `price6` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `latitude` varchar(200) NOT NULL,
  `longitude` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `phone`, `password`, `email`, `latitude`, `longitude`) VALUES
(2, '', '', '', '', '', ''),
(3, '', '', '', '', '', ''),
(4, '', '', '', '', '', ''),
(6, 'Abhimanue', '', '1234567', 'abhinanekb2@gmail.com', '', ''),
(8, 'abhi ', '', 'pass', 'abhimanuekb2@gmail.com', '', ''),
(9, 'sample', '', 'samplepass', 'sampleemail.com', '', ''),
(10, 'name1', '', 'pass12', 'email1@gmai.com', '', ''),
(11, 'new', '', 'pass', 'jsjsj@gmail.com', '', ''),
(12, 'sanitha', '', 'hai', 'san@gmail.com', '', ''),
(13, '', '', '', '', '', ''),
(14, 'abhi', '', 'pass123', 'abhimanuekb2@gmail.com', '', ''),
(15, 'gopika', '8592861441', 'gopika', 'aaaa', '10.00737253', '76.31036177');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `truckname` varchar(100) NOT NULL,
  `rating` int(10) NOT NULL,
  `review_text` varchar(1000) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `truckname`, `rating`, `review_text`, `name`) VALUES
(1, 'abhi', 2, 'nice food truck', 'saj'),
(2, 'abhi', 4, 'super ', 'ss'),
(3, 'lkafnsf', 3, 'tss', 'gopika'),
(4, 'lkafnsf', 5, 'nice', 'gopika'),
(5, 'Truck11', 3, '', 'gopika');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chargerowner`
--
ALTER TABLE `chargerowner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `chargerowner`
--
ALTER TABLE `chargerowner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
