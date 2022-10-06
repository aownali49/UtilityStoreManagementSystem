-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 09, 2021 at 06:05 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `utility store management system`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `C_ID` int(11) NOT NULL AUTO_INCREMENT,
  `C_NAME` varchar(200) NOT NULL,
  `C_PHNO` varchar(200) NOT NULL,
  `C_BILL` int(200) NOT NULL,
  `C_ADDRESS` text NOT NULL,
  PRIMARY KEY (`C_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`C_ID`, `C_NAME`, `C_PHNO`, `C_BILL`, `C_ADDRESS`) VALUES
(6, 'aown ali', '03217741667', 1500, 'isb'),
(7, 'usman khan', '0327564849', 3000, 'murree');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `O_ID` int(200) NOT NULL AUTO_INCREMENT,
  `O_DATE` varchar(200) NOT NULL,
  `O_BILL` varchar(200) NOT NULL,
  PRIMARY KEY (`O_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`O_ID`, `O_DATE`, `O_BILL`) VALUES
(3, '1-january-2020', '1500'),
(5, '12 june 2021', '1100');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `P_ID` int(11) NOT NULL AUTO_INCREMENT,
  `P_TYPE` varchar(200) NOT NULL,
  `P_PRICE` varchar(200) NOT NULL,
  `P_MANUFACTURER` varchar(200) NOT NULL,
  PRIMARY KEY (`P_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`P_ID`, `P_TYPE`, `P_PRICE`, `P_MANUFACTURER`) VALUES
(1, 'OIL/food', '1500', 'KISAN');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
  `S_ID` int(11) NOT NULL AUTO_INCREMENT,
  `S_NAME` varchar(200) NOT NULL,
  `S_PHNO` varchar(200) NOT NULL,
  `S_CNIC` varchar(200) NOT NULL,
  `S_ADDRESS` varchar(200) NOT NULL,
  PRIMARY KEY (`S_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`S_ID`, `S_NAME`, `S_PHNO`, `S_CNIC`, `S_ADDRESS`) VALUES
(2, 'Babar Azam', '03415841748', '94402-4-80-983-9', 'Islamabad'),
(3, 'Raja Rehan', '03115841747', '34402-4-80-983-9', 'Rawalpindi');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
