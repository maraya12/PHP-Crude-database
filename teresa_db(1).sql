-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2019 at 10:31 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `teresa_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `cId` int(11) NOT NULL,
  `cName` varchar(255) NOT NULL,
  `cContact` varchar(255) NOT NULL,
  `cAddress` varchar(255) NOT NULL,
  `cDateAdded` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cId`, `cName`, `cContact`, `cAddress`, `cDateAdded`) VALUES
(1, 'Maraya', '09235554123', 'Cebu City', '2019-09-07 12:46:30'),
(2, 'Louie', '09562237849', 'Cebu City', '2019-09-07 12:46:30');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `oId` int(11) NOT NULL,
  `oNo` int(11) NOT NULL,
  `pId` int(11) NOT NULL,
  `cId` int(11) NOT NULL,
  `oQuantity` int(11) NOT NULL,
  `oDate` datetime NOT NULL,
  `uId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`oId`, `oNo`, `pId`, `cId`, `oQuantity`, `oDate`, `uId`) VALUES
(1, 1, 1, 1, 1, '2019-09-07 12:54:24', 1),
(2, 2, 2, 2, 3, '2019-09-07 12:54:24', 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `pId` int(11) NOT NULL,
  `pName` varchar(255) NOT NULL,
  `pDesc` varchar(255) NOT NULL,
  `pPrice` float NOT NULL,
  `pStock` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pId`, `pName`, `pDesc`, `pPrice`, `pStock`) VALUES
(1, 'Ultralight Camping Tent', 'Fly and bottom material \r\n20D silicone nylon PU 4000mm+\r\nTent rods: 7001 aluminum\r\nPackage size: 48*15cm\r\nWeight: about 2KG', 4999, 5),
(2, 'Double Lightweight Hammock', 'Product Detail:\r\nMaterial: Rip proof parachute nylon 210T\r\nSize: 260cm x 140 cm\r\nWeight: 500g\r\nFolded Size: 18 x 13 x 7cm\r\nMax Capacity: 300 kg', 2999, 10);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `uId` int(11) NOT NULL,
  `uUserName` varchar(255) NOT NULL,
  `uPassword` varchar(255) NOT NULL,
  `uDateAdded` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uId`, `uUserName`, `uPassword`, `uDateAdded`) VALUES
(1, 'User1', '2fba5f8aa89da59c9722a70eec597638', '2019-09-07 12:35:17'),
(2, 'User2', 'f7f812a39c98cd92180eed084b48ac42', '2019-09-07 12:35:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`oId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `cId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `oId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
