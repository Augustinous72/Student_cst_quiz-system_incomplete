-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2021 at 10:58 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `signup`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Reg Number` int(9) NOT NULL,
  `Email` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `Username`, `Reg Number`, `Email`) VALUES
(1, 'Augustinous72', 220001300, ''),
(2, 'Augustinous72', 220001300, 'Augustious72@gmail.com'),
(3, 'Augustinous72', 220001300, 'Augustious72@gmail.com'),
(4, 'Augustinous72', 220001300, ''),
(5, 'mugabo', 220001212, 'Augustinhog@gmail.com'),
(6, 'Augustinous72', 20001313, 'emmy72@gmail.com'),
(40, 'Augustinous72', 98765, 'qqqqqqqqqqqqqqqqqq@gmail.com'),
(41, 'Augustinous72', 98765, 'qqqqqqqqqqqqqqqqqq@gmail.com'),
(42, 'Augustinous72', 987654, ''),
(43, 'Augustinous72', 987654, ''),
(44, 'Augustinous72', 987654, ''),
(45, 'Augustinous72', 987654, ''),
(46, 'Augustinous72', 987654, ''),
(47, 'Augustinous72', 987654, ''),
(48, 'Augustinous72', 987654, ''),
(49, 'Augustinous72', 987654, ''),
(50, 'Augustinous72', 987654, ''),
(51, 'Augustinous72', 987654, ''),
(52, 'Augustinous72', 987654, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
