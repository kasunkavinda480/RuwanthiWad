-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2021 at 03:09 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ruwanthidb`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `des` text NOT NULL,
  `phone` text NOT NULL,
  `location` text NOT NULL,
  `img` text DEFAULT NULL,
  `post_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `status` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `price` text NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `title`, `des`, `phone`, `location`, `img`, `post_date`, `modified_date`, `status`, `user_id`, `category_id`, `price`, `stock`) VALUES
(69, 'aaa', 'aa', '722133368', 'Colombo', 'upload/9325.jpg', '2021-06-19 17:28:32', '2021-06-19 17:28:32', 0, 17, 3, '10', 20),
(70, 'New Iphone 5', 'thius j sl\nsdsjkld\nssd', '722133368', 'Colombo', 'upload/2236.jpg', '2021-06-19 18:15:42', '2021-06-19 18:15:42', 0, 17, 1, '35000', 10),
(71, 'New Iphone 6', 'thiusasd\nas\nda j sl\nsdsjkld\nssd', '722133368', 'Colombo', 'upload/7175.jpg', '2021-06-19 18:16:21', '2021-06-19 18:16:21', 0, 17, 1, '4500', 10),
(72, 'New Iphone 4', 'thiusasd\nas\nda j sl\nsdsjkld\nssd', '722133368', 'Colombo', 'upload/4635.jpg', '2021-06-19 18:16:36', '2021-06-19 18:16:36', 0, 17, 1, '4500', 10),
(73, 'New Iphone 4 es', 'thiusasd\nas\nda j sl\nsdsjkld\nssd', '722133368', 'Colombo', 'upload/1284.jpg', '2021-06-19 18:16:48', '2021-06-19 18:16:48', 0, 17, 1, '4500', 10),
(74, 'new Item RK', 'dsfsdf\nsdf\ndsf\ndsf\ndsfdsfsdf', '722133368', 'Colombo', 'upload/5508.jpg', '2021-06-20 20:44:52', '2021-06-20 20:44:52', 0, 17, 3, '500', 10),
(75, 'New  Test earrring ', 'jksdghf gsdf sd\nfdsfgf\n\ndsafds\nfs\nadf ds\nf dsa\ngdsgdsgsdf dkfjhs lkwdsjf hd', '75421678', 'Colombo', 'upload/6676.jpg', '2021-06-25 17:39:45', '2021-06-25 17:39:45', 0, 19, 12, '200', 20),
(76, 'New  Test earrring 22', 'jksdghf gsdf sd\nfdsfgf\n\ndsafds\nfs\nadf ds\nf dsa\ngdsgdsgsdf dkfjhs lkwdsjf hd', '75421678', 'Colombo', 'upload/6487.png', '2021-06-25 18:10:42', '2021-06-25 18:10:42', 0, 19, 12, '350', 20);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_type`) VALUES
(12, 'earring'),
(13, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `Location` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `Location`) VALUES
(1, 'Colombo'),
(2, 'Mathara'),
(3, 'Badulla'),
(4, 'Nuwara');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `oid` int(11) NOT NULL,
  `Users_id` int(11) NOT NULL,
  `userName` text NOT NULL,
  `Address` text NOT NULL,
  `NetAmount` double NOT NULL,
  `odate` datetime NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`oid`, `Users_id`, `userName`, `Address`, `NetAmount`, `odate`, `state`) VALUES
(6, 18, 'kasun', 'ss', 10500, '2021-06-22 00:16:14', 0),
(7, 18, 'kasun', 'ss', 10500, '2021-06-22 00:16:44', 0),
(8, 18, 'kasun', 'ss', 10500, '2021-06-22 00:17:19', 0),
(9, 19, 'malith deshn', 'hakmana road ,matara', 10500, '2021-06-25 17:32:58', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `idOrderItems` int(11) NOT NULL,
  `Order_oid` int(11) NOT NULL,
  `Proid` int(11) NOT NULL,
  `Image` text NOT NULL,
  `Name` text NOT NULL,
  `Price` double NOT NULL,
  `qty` int(11) NOT NULL,
  `Amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`idOrderItems`, `Order_oid`, `Proid`, `Image`, `Name`, `Price`, `qty`, `Amount`) VALUES
(9, 6, 74, '', '', 500, 3, 1500),
(10, 6, 73, '', '', 4500, 2, 9000),
(11, 7, 74, '', '', 500, 3, 1500),
(12, 7, 73, '', '', 4500, 2, 9000),
(13, 8, 74, 'php_Action/user/upload/5508.jpg', '', 500, 3, 1500),
(14, 8, 73, 'php_Action/user/upload/1284.jpg', '', 4500, 2, 9000),
(15, 9, 74, 'php_Action/user/upload/5508.jpg', 'new Item RK', 500, 3, 1500),
(16, 9, 73, 'php_Action/user/upload/1284.jpg', 'New Iphone 4 es', 4500, 2, 9000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `Name` tinytext DEFAULT NULL,
  `Email` tinytext DEFAULT NULL,
  `Password` tinytext DEFAULT NULL,
  `Type` tinytext DEFAULT NULL,
  `Activate` tinytext DEFAULT NULL,
  `ActiveCode` tinytext DEFAULT NULL,
  `RegDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Name`, `Email`, `Password`, `Type`, `Activate`, `ActiveCode`, `RegDate`) VALUES
(17, 'aaa', 'aa@gmali.com', 'c3gyb0w5blpJYjAzRWFvTGpYV3grUT09', 'Normal', 'active', '146801', '2021-06-19'),
(18, 'kasun', 'kasun@gmail.com', 'Z1JNY01VandrS3d5WUhuZlZiQjdkdz09', 'Normal', 'active', '130755', '2021-06-21'),
(19, 'malith deshn', 'malith@gmail.com', 'SUt2S3I3R3NKTk9LM2VnUXhUM2tCQT09', 'Normal', 'active', '462158', '2021-06-25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`idOrderItems`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `idOrderItems` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
