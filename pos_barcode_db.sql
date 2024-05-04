-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2024 at 05:22 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos_barcode_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catid` int(11) NOT NULL,
  `category` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catid`, `category`) VALUES
(1, 'Soap'),
(2, 'Mobile'),
(3, 'Watches'),
(4, 'Health Care'),
(9, 'Grocery'),
(10, 'Fashion'),
(11, 'Electronics'),
(12, 'Baby & Kids'),
(13, 'Beverages'),
(14, 'Cosmetics'),
(15, 'Hardware'),
(16, 'Laptop'),
(17, 'Veg'),
(18, 'Non Veg'),
(19, 'Books'),
(20, 'Vegetables'),
(21, 'Spices'),
(22, 'Body Lotions'),
(23, 'Medicines');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_invoice`
--

CREATE TABLE `tbl_invoice` (
  `invoice_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `subtotal` double NOT NULL,
  `discount` double NOT NULL,
  `sgst` float NOT NULL,
  `cgst` float NOT NULL,
  `total` double NOT NULL,
  `payment_type` tinytext NOT NULL,
  `due` double NOT NULL,
  `paid` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_invoice`
--

INSERT INTO `tbl_invoice` (`invoice_id`, `order_date`, `subtotal`, `discount`, `sgst`, `cgst`, `total`, `payment_type`, `due`, `paid`) VALUES
(2, '2023-02-21', 425, 2, 2.5, 2.5, 437.75, 'Card', -62.25, 500),
(3, '2023-03-05', 0, 2, 2.5, 2.5, 0, 'Cash', 0, 0),
(4, '2023-02-21', 1045, 2, 2.5, 2.5, 1076.35, 'Check', 23.65, 1100),
(5, '2023-03-01', 185, 2, 2.5, 2.5, 190.55, 'Cash', -9.45, 200),
(6, '2023-03-02', 1220, 2, 2.5, 2.5, 1256.6, 'Card', 0, 1256.6),
(7, '2023-03-02', 22550, 2, 2.5, 2.5, 23226.5, 'Check', 0, 23226.5),
(8, '2023-03-02', 1000, 2, 2.5, 2.5, 1030, 'Card', 0, 1030),
(9, '2023-03-02', 22300, 2, 2.5, 2.5, 22969, 'Check', 0, 22969),
(10, '2023-03-02', 680, 2, 2.5, 2.5, 700.4, 'Cash', -9.6, 710),
(11, '2023-03-02', 200, 2, 2.5, 2.5, 206, 'Cash', -14, 220),
(12, '2023-03-02', 25, 2, 2.5, 2.5, 25.75, 'Cash', -4.25, 30),
(13, '2023-03-02', 800, 2, 2.5, 2.5, 824, 'Cash', -76, 900),
(14, '2023-03-02', 50, 2, 2.5, 2.5, 51.5, 'Card', 0, 51.5),
(15, '2023-03-02', 50, 2, 2.5, 2.5, 51.5, 'Check', 0, 51.5),
(16, '2023-03-02', 190, 2, 2.5, 2.5, 195.7, 'Card', 0, 195.7),
(17, '2023-03-04', 25, 2, 2.5, 2.5, 25.75, 'Cash', -4.25, 30),
(18, '2023-03-04', 1200, 2, 2.5, 2.5, 1236, 'Card', 0, 1236),
(19, '2023-03-04', 750, 2, 2.5, 2.5, 772.5, 'Check', 0, 772.5),
(20, '2023-03-04', 340, 2, 2.5, 2.5, 350.2, 'Cash', 0, 350.2),
(21, '2023-03-04', 400, 2, 2.5, 2.5, 412, 'Cash', 0, 412),
(22, '2023-03-04', 21500, 2, 2.5, 2.5, 22145, 'Card', 0, 22145),
(23, '2023-03-06', 2920, 2, 2.5, 2.5, 3007.6, 'Cash', -92.4, 3100),
(24, '2023-03-06', 225, 2, 2.5, 2.5, 231.75, 'Check', 0, 231.75),
(26, '2023-03-07', 25, 2, 2.5, 2.5, 25.75, 'Cash', -4.25, 30),
(27, '2023-03-07', 200, 2, 2.5, 2.5, 206, 'Card', 0, 206),
(36, '2023-03-08', 1845, 2, 2.5, 2.5, 1900.35, 'Card', 0, 1900.35),
(37, '2023-03-08', 840, 2, 2.5, 2.5, 865.2, 'Check', 0, 865.2),
(38, '2023-03-08', 22550, 2, 2.5, 2.5, 23226.5, 'Cash', -1773.5, 25000),
(39, '2023-03-09', 1050, 2, 2.5, 2.5, 1081.5, 'Cash', -18.5, 1100),
(40, '2023-03-09', 750, 2, 2.5, 2.5, 772.5, 'Cash', 27.5, 800),
(41, '2023-03-14', 750, 2, 2.5, 2.5, 772.5, 'Cash', -27.5, 800),
(42, '2023-03-14', 200, 2, 2.5, 2.5, 206, 'Card', 0, 206),
(43, '2023-03-17', 765, 2, 2.5, 2.5, 787.95, 'Cash', 787.95, 0),
(44, '2023-03-17', 1400, 2, 2.5, 2.5, 1442, 'Cash', 58, 1500),
(45, '2024-04-28', 500, 2, 2.5, 2.5, 515, 'Cash', -5, 520),
(46, '2024-04-28', 1600, 2, 2.5, 2.5, 1648, 'Cash', -52, 1700),
(47, '2024-04-28', 1360, 2, 2.5, 2.5, 1400.8, 'Cash', 0.8, 1400),
(49, '2024-04-28', 160, 2, 2.5, 2.5, 164.8, 'UPI', 0.8, 164),
(50, '2024-04-29', 1350, 2, 2.5, 2.5, 1390.5, 'Cash', -9.5, 1400),
(51, '2024-04-29', 80, 2, 2.5, 2.5, 82.4, 'Cash', 7.6, 90),
(52, '2024-04-29', 8000, 2, 2.5, 2.5, 8240, 'Cash', -760, 9000),
(53, '2024-04-29', 0, 2, 2.5, 2.5, 0, 'Cash', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_invoice_details`
--

CREATE TABLE `tbl_invoice_details` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `barcode` varchar(200) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `qty` int(11) NOT NULL,
  `rate` double NOT NULL,
  `saleprice` double NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_invoice_details`
--

INSERT INTO `tbl_invoice_details` (`id`, `invoice_id`, `barcode`, `product_id`, `product_name`, `qty`, `rate`, `saleprice`, `order_date`) VALUES
(15, 6, '6121422', 6, 'Suger Packet 5 KG', 1, 200, 200, '2023-03-02'),
(16, 6, '8901030843891', 8, 'Pepsodent Toothpaste', 5, 140, 700, '2023-03-02'),
(17, 6, '8901030865237', 3, 'kissan tomato katchup', 2, 160, 320, '2023-03-02'),
(18, 7, '8901057310062', 2, 'Kangaro Stapler', 1, 200, 200, '2023-03-02'),
(19, 7, '8901057510028', 1, 'Kangaro Stapler Pins', 1, 50, 50, '2023-03-02'),
(20, 7, '7121434', 4, 'lenovo charger', 1, 800, 800, '2023-03-02'),
(21, 7, '6971914086630', 11, 'Real me XT', 1, 21500, 21500, '2023-03-02'),
(22, 8, '8904000952210', 7, 'Dyna Soap', 10, 25, 250, '2023-03-02'),
(23, 8, '8906105612730', 10, 'Wow Omega 3 Capsules', 1, 500, 500, '2023-03-02'),
(24, 8, '8809461562230', 9, 'Modelling Comb', 1, 250, 250, '2023-03-02'),
(25, 9, '6971914086630', 11, 'Real me XT', 1, 21500, 21500, '2023-03-02'),
(26, 9, '7121434', 4, 'lenovo charger', 1, 800, 800, '2023-03-02'),
(27, 10, '12114804', 12, 'Mix Spices 500gm', 1, 240, 240, '2023-03-02'),
(28, 10, '8901030865237', 3, 'kissan tomato katchup', 1, 160, 160, '2023-03-02'),
(29, 10, '6121422', 6, 'Suger Packet 5 KG', 1, 200, 200, '2023-03-02'),
(30, 10, '5120819', 5, 'Veg Burger', 1, 80, 80, '2023-03-02'),
(31, 11, '8901057310062', 2, 'Kangaro Stapler', 1, 200, 200, '2023-03-02'),
(32, 12, '8904000952210', 7, 'Dyna Soap', 1, 25, 25, '2023-03-02'),
(33, 13, '7121434', 4, 'lenovo charger', 1, 800, 800, '2023-03-02'),
(34, 14, '8901057510028', 1, 'Kangaro Stapler Pins', 1, 50, 50, '2023-03-02'),
(35, 15, '8901057510028', 1, 'Kangaro Stapler Pins', 1, 50, 50, '2023-03-02'),
(36, 16, '8904000952210', 7, 'Dyna Soap', 2, 25, 50, '2023-03-02'),
(37, 16, '8901030843891', 8, 'Pepsodent Toothpaste', 1, 140, 140, '2023-03-02'),
(38, 17, '8904000952210', 7, 'Dyna Soap', 1, 25, 25, '2023-03-04'),
(39, 18, '8901030865237', 3, 'kissan tomato katchup', 1, 160, 160, '2023-03-04'),
(40, 18, '7121434', 4, 'lenovo charger', 1, 800, 800, '2023-03-04'),
(41, 18, '12114804', 12, 'Mix Spices 500gm', 1, 240, 240, '2023-03-04'),
(42, 19, '8906105612730', 10, 'Wow Omega 3 Capsules', 1, 500, 500, '2023-03-04'),
(43, 19, '8809461562230', 9, 'Modelling Comb', 1, 250, 250, '2023-03-04'),
(44, 20, '6121422', 6, 'Suger Packet 5 KG', 1, 200, 200, '2023-03-04'),
(45, 20, '8901030843891', 8, 'Pepsodent Toothpaste', 1, 140, 140, '2023-03-04'),
(46, 21, '8901030865237', 3, 'kissan tomato katchup', 1, 160, 160, '2023-03-04'),
(47, 21, '12114804', 12, 'Mix Spices 500gm', 1, 240, 240, '2023-03-04'),
(48, 22, '6971914086630', 11, 'Real me XT', 1, 21500, 21500, '2023-03-04'),
(87, 2, '8904000952210', 7, 'Dyna Soap', 1, 25, 25, '2023-02-21'),
(88, 2, '8901057310062', 2, 'Kangaro Stapler', 2, 200, 400, '2023-02-21'),
(94, 5, '8904000952210', 7, 'Dyna Soap', 1, 25, 25, '2023-03-01'),
(95, 5, '8901030865237', 3, 'kissan tomato katchup', 1, 160, 160, '2023-03-01'),
(96, 4, '8901030843891', 8, 'Pepsodent Toothpaste', 1, 140, 140, '2023-02-21'),
(97, 4, '8904000952210', 7, 'Dyna Soap', 1, 25, 25, '2023-02-21'),
(98, 4, '5120819', 5, 'Veg Burger', 1, 80, 80, '2023-02-21'),
(99, 4, '7121434', 4, 'lenovo charger', 1, 800, 800, '2023-02-21'),
(100, 23, '8901030865237', 3, 'kissan tomato katchup', 2, 160, 320, '2023-03-06'),
(101, 23, '8901057510028', 1, 'Kangaro Stapler Pins', 2, 50, 100, '2023-03-06'),
(102, 23, '8906105612730', 10, 'Wow Omega 3 Capsules', 5, 500, 2500, '2023-03-06'),
(103, 24, '8904000952210', 7, 'Dyna Soap', 1, 25, 25, '2023-03-06'),
(104, 24, '6121422', 6, 'Suger Packet 5 KG', 1, 200, 200, '2023-03-06'),
(115, 26, '8904000952210', 7, 'Dyna Soap', 1, 25, 25, '2023-03-07'),
(116, 27, '8901057310062', 2, 'Kangaro Stapler', 1, 200, 200, '2023-03-07'),
(162, 36, '8904000952210', 7, 'Dyna Soap', 1, 25, 25, '2023-03-08'),
(163, 36, '8901057310062', 2, 'Kangaro Stapler', 1, 200, 200, '2023-03-08'),
(164, 36, '8901057510028', 1, 'Kangaro Stapler Pins', 1, 50, 50, '2023-03-08'),
(165, 36, '8901030865237', 3, 'kissan tomato katchup', 1, 160, 160, '2023-03-08'),
(166, 36, '8906105612730', 10, 'Wow Omega 3 Capsules', 1, 500, 500, '2023-03-08'),
(167, 36, '5120819', 5, 'Veg Burger', 1, 80, 80, '2023-03-08'),
(168, 36, '6121422', 6, 'Suger Packet 5 KG', 1, 200, 200, '2023-03-08'),
(169, 36, '8901030843891', 8, 'Pepsodent Toothpaste', 1, 140, 140, '2023-03-08'),
(170, 36, '8809461562230', 9, 'Modelling Comb', 1, 250, 250, '2023-03-08'),
(171, 36, '12114804', 12, 'Mix Spices 500gm', 1, 240, 240, '2023-03-08'),
(172, 37, '6121422', 6, 'Suger Packet 5 KG', 1, 200, 200, '2023-03-08'),
(173, 37, '8906105612730', 10, 'Wow Omega 3 Capsules', 1, 500, 500, '2023-03-08'),
(174, 37, '8901030843891', 8, 'Pepsodent Toothpaste', 1, 140, 140, '2023-03-08'),
(175, 38, '7121434', 4, 'lenovo charger', 1, 800, 800, '2023-03-08'),
(176, 38, '8809461562230', 9, 'Modelling Comb', 1, 250, 250, '2023-03-08'),
(177, 38, '6971914086630', 11, 'Real me XT', 1, 21500, 21500, '2023-03-08'),
(178, 39, '8901030865237', 3, 'kissan tomato katchup', 1, 160, 160, '2023-03-09'),
(179, 39, '8901057510028', 1, 'Kangaro Stapler Pins', 1, 50, 50, '2023-03-09'),
(180, 39, '8901030843891', 8, 'Pepsodent Toothpaste', 1, 140, 140, '2023-03-09'),
(181, 39, '8906105612730', 10, 'Wow Omega 3 Capsules', 1, 500, 500, '2023-03-09'),
(182, 39, '6121422', 6, 'Suger Packet 5 KG', 1, 200, 200, '2023-03-09'),
(184, 40, '8906105612730', 10, 'Wow Omega 3 Capsules', 1, 500, 500, '2023-03-09'),
(185, 40, '8809461562230', 9, 'Modelling Comb', 1, 250, 250, '2023-03-09'),
(186, 41, '8901057510028', 1, 'Kangaro Stapler Pins', 5, 50, 250, '2023-03-14'),
(187, 41, '8906105612730', 10, 'Wow Omega 3 Capsules', 1, 500, 500, '2023-03-14'),
(189, 42, '8901057310062', 2, 'Kangaro Stapler', 1, 200, 200, '2023-03-14'),
(190, 43, '8901057510028', 1, 'Kangaro Stapler Pins', 3, 50, 150, '2023-03-17'),
(191, 43, '8901057310062', 2, 'Kangaro Stapler', 1, 200, 200, '2023-03-17'),
(192, 43, '8901030843891', 8, 'Pepsodent Toothpaste', 1, 140, 140, '2023-03-17'),
(193, 43, '8904000952210', 7, 'Dyna Soap', 1, 25, 25, '2023-03-17'),
(194, 43, '8809461562230', 9, 'Modelling Comb', 1, 250, 250, '2023-03-17'),
(200, 44, '8901057310062', 2, 'Kangaro Stapler', 3, 200, 600, '2023-03-17'),
(201, 44, '8901030865237', 3, 'kissan tomato katchup', 1, 160, 160, '2023-03-17'),
(202, 44, '8901030843891', 8, 'Pepsodent Toothpaste', 1, 140, 140, '2023-03-17'),
(203, 44, '8906105612730', 10, 'Wow Omega 3 Capsules', 1, 500, 500, '2023-03-17'),
(204, 45, '8901057510028', 1, 'Kangaro Stapler Pins', 10, 50, 500, '2024-04-28'),
(205, 46, '5120819', 5, 'Veg Burger', 20, 80, 1600, '2024-04-28'),
(206, 47, '5120819', 5, 'Veg Burger', 17, 80, 1360, '2024-04-28'),
(209, 49, '8901030865237', 3, 'kissan tomato katchup', 1, 160, 160, '2024-04-28'),
(210, 50, '8901057510028', 1, 'Kangaro Stapler Pins', 1, 50, 50, '2024-04-29'),
(211, 50, '7121434', 4, 'lenovo charger', 1, 800, 800, '2024-04-29'),
(212, 50, '8906105612730', 10, 'Wow Omega 3 Capsules', 1, 500, 500, '2024-04-29'),
(215, 51, '5120819', 5, 'Veg Burger', 1, 80, 80, '2024-04-29'),
(216, 52, '5120819', 5, 'Veg Burger', 100, 80, 8000, '2024-04-29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `pid` int(11) NOT NULL,
  `barcode` varchar(1000) NOT NULL,
  `product` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `stock` int(11) NOT NULL,
  `purchaseprice` float NOT NULL,
  `saleprice` float NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`pid`, `barcode`, `product`, `category`, `description`, `stock`, `purchaseprice`, `saleprice`, `image`) VALUES
(1, '8901057510028', 'Kangaro Stapler Pins', 'Hardware', 'no 10 mm', 463, 30, 50, '639a07f9bd5d4.jpg'),
(2, '8901057310062', 'Kangaro Stapler', 'Hardware', 'no 10', 189, 150, 200, '639a088ba5aa8.jpg'),
(3, '8901030865237', 'kissan tomato katchup', 'Grocery', '1.2kg', 165, 110, 160, '639a0eea4ae36.jpg'),
(4, '7121434', 'lenovo charger', 'Laptop', '12v', 93, 450, 800, '639a0f563d3b6.jpg'),
(5, '5120819', 'Veg Burger', 'Veg', 'small p', 859, 50, 80, '63b95327e78f0.png'),
(6, '6121422', 'Suger Packet 5 KG', 'Grocery', '5 KG Suger Packet ', 493, 120, 200, '639a19867b32a.jpg'),
(7, '8904000952210', 'Dyna Soap', 'Soap', 'Dyna Premium Beauty Sandal and Saffron Soap', 975, 15, 25, '63a54421a2087.jpg'),
(8, '8901030843891', 'Pepsodent Toothpaste', 'Grocery', 'Pepsodent GERMI CHECK JUMBO\r\nADVANCED GERMI CHECK FORMULA  ', 334, 80, 140, '63b9a7bc9175e.jpg'),
(9, '8809461562230', 'Modelling Comb', 'Electronics', 'Modelling Comb Electronic Comb for men .', 114, 130, 250, '63a5461349496.jpg'),
(10, '8906105612730', 'Wow Omega 3 Capsules', 'Medicines', 'Wow Omega 3 60N softgel Capsules  ', 106, 380, 500, '63a546b584e3b.jpg'),
(11, '6971914086630', 'Real me XT', 'Mobile', 'Model : RMX1921', 145, 18000, 21500, '63a547ca0e89a.jpg'),
(12, '12114804', 'Mix Spices 500gm', 'Grocery', 'Mix Spices Pack 500gm', 296, 180, 240, '63a5481c962ff.jpg'),
(22, '22072445', 'Tshirt', 'Fashion', 'Black Tshirt', 100, 500, 750, '662efde515daa.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_taxdis`
--

CREATE TABLE `tbl_taxdis` (
  `taxdis_id` int(11) NOT NULL,
  `sgst` float NOT NULL,
  `cgst` float NOT NULL,
  `discount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_taxdis`
--

INSERT INTO `tbl_taxdis` (`taxdis_id`, `sgst`, `cgst`, `discount`) VALUES
(1, 2.5, 2.5, 2),
(2, 5, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `userid` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `useremail` varchar(200) NOT NULL,
  `userpassword` varchar(200) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`userid`, `username`, `useremail`, `userpassword`, `role`) VALUES
(2, 'user', 'user@gmail.com', '123', 'User'),
(15, 'Admin_2', 'admin2@gmail.com', '12345', 'Admin'),
(16, 'Admin', 'admin@gmail.com', '12345', 'Admin'),
(17, 'Sarath', 'sarath@gmail.com', '12345', 'User'),
(19, 'Barath', 'b@gmail.com', '12345', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `tbl_invoice`
--
ALTER TABLE `tbl_invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `tbl_invoice_details`
--
ALTER TABLE `tbl_invoice_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `tbl_taxdis`
--
ALTER TABLE `tbl_taxdis`
  ADD PRIMARY KEY (`taxdis_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_invoice`
--
ALTER TABLE `tbl_invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tbl_invoice_details`
--
ALTER TABLE `tbl_invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_taxdis`
--
ALTER TABLE `tbl_taxdis`
  MODIFY `taxdis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
