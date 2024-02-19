-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2024 at 06:25 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_rest`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(6, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 'admin@gmail.com', '', '2018-04-09 07:36:18');

-- --------------------------------------------------------

--
-- Table structure for table `admin_codes`
--

CREATE TABLE `admin_codes` (
  `id` int(222) NOT NULL,
  `codes` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_codes`
--

INSERT INTO `admin_codes` (`id`, `codes`) VALUES
(1, 'QX5ZMN'),
(2, 'QFE6ZM'),
(3, 'QMZR92'),
(4, 'QPGIOV'),
(5, 'QSTE52'),
(6, 'QMTZ2J');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(18, 54, 'Chicken Biryani', 'Get real taste of Chicken Biryani', '3.00', '6578c269356aa.jpg'),
(19, 54, 'Beef Biryani', 'Get real taste of Beef Biryani', '4.00', '6578c320b2ab7.jpg'),
(20, 54, 'Vegetable Biryani', 'Get real taste of Vegetable Biryani', '2.00', '6578c3e1ae8aa.jpg'),
(21, 55, 'Normal Naan', 'Get real taste of Naan', '0.10', '6578c4fec1a64.jpg'),
(22, 55, 'Butter Naan', 'Get real taste of Butter Naan', '0.20', '6578c55819fd9.jpg'),
(23, 55, 'Garlic Naan', 'Get real taste of Garlic Naan', '0.30', '6578c59695fff.jpg'),
(24, 56, 'Chicken Burger', 'Get real taste of Chicken Burger', '2.00', '6578c630a500f.jpg'),
(25, 56, 'Beef Burger', 'Get real taste of Beef Burger', '3.00', '6578c6614ec09.jpg'),
(26, 56, 'Vegetable Burger', 'Get real taste of Vegetable Burger', '1.20', '6578c70dac5f2.jpg'),
(27, 57, 'Chicken Pizza', 'Get real taste of Chicken Pizza', '4.00', '6578c7dc93bc6.jpg'),
(28, 57, 'Beef Pizza', 'Get real taste of Beef Pizza', '5.00', '6578c85139eff.jpg'),
(29, 57, 'Vegetable Pizza', 'Get real taste of Vegetable Pizza', '2.00', '6578c894b7abe.jpg'),
(30, 58, 'French Fries', 'Get real taste of French Fries', '1.00', '6578c90bb8c90.jpg'),
(31, 58, 'Chicken Chaap', 'Get real taste of Chicken Chaap', '1.50', '6578c96022d30.jpg'),
(32, 58, 'Beef Noodles', 'Get real taste of Beef Noodles', '2.00', '6578c9a02c911.jpg'),
(33, 59, 'Lassi', 'Get real taste of Lassi', '1.50', '6578c9f84e97d.jpg'),
(34, 59, 'Cold Coffee', 'Get real taste of Cold Coffee', '1.00', '6578ca37c4f8f.jpg'),
(35, 59, 'Mango Juice', 'Get real taste of Mango Juice', '0.60', '6578ca72e2119.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(71, 39, 'in process', 'In Process', '2023-12-12 21:25:47');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(54, 11, 'Biryani House', 'sbiryanihouse@gmail.com', '+88029134904', 'sbiryanihouse.com', '8am', '8pm', '24hr-x7', '30/5, Block-F, Babar Road, Mohammadpur, Dhaka-1207', '6578be1edc1fc.jpg', '2023-12-12 20:10:06'),
(55, 12, 'Naan House', 'snaanhouse@gmail.com', '+88029134904', 'snaanhouse.com', '8am', '8pm', '24hr-x7', '30/5, Block-F, Babar Road, Mohammadpur, Dhaka-1207', '6578bef44a2fe.jpg', '2023-12-12 20:13:40'),
(56, 13, 'Burger House', 'sburgerhouse@gmail.com', '+88029134904', 'sburgerhouse.com', '8am', '8pm', '24hr-x7', '30/5, Block-F, Babar Road, Mohammadpur, Dhaka-1207', '6578bf8ee0f05.jpg', '2023-12-12 20:16:14'),
(57, 14, 'Pizza House', 'spizzahouse@gmail.com', '+88029134904', 'spizzahouse.com', '8am', '8pm', '24hr-x7', '30/5, Block-F, Babar Road, Mohammadpur, Dhaka-1207', '6578c07a92eec.jpg', '2023-12-12 20:20:10'),
(58, 15, 'Snacks House', 'ssnackshouse@gmail.com', '+88029134904', 'ssnackshouse.com', '8am', '8pm', '24hr-x7', '30/5, Block-F, Babar Road, Mohammadpur, Dhaka-1207', '6578c1102d1b8.jpg', '2023-12-12 20:22:40'),
(59, 16, 'Beverage House', 'sbeveragehouse@gmail.com', '+88029134904', 'sbeveragehouse.com', '8am', '8pm', '24hr-x7', '30/5, Block-F, Babar Road, Mohammadpur, Dhaka-1207', '6578c1f008aa4.jpg', '2023-12-12 20:26:24');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(11, 'Biryani', '2023-12-12 19:57:47'),
(12, 'Naan', '2023-12-12 19:58:44'),
(13, 'Burger', '2023-12-12 19:59:00'),
(14, 'Pizza', '2023-12-12 19:59:43'),
(15, 'Snacks', '2023-12-12 19:59:50'),
(16, 'Beverage', '2023-12-12 20:00:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(33, 'dibboroy', 'Dibbo', 'Roy', 'dibboroy@gmail.com', '01715818201', 'a9e3bf8392b0eac86811e7add5a28356', 'House # 1, Road # 1, Dhanmondi, Dhaka-1205', 1, '2023-12-12 21:16:08'),
(34, 'mehrubasalsable', 'Mehruba', 'Salsable', 'mehrubasalsable@gmail.com', '01715818202', '3618863c3bec7cc852c17a6ea5efbb59', 'House # 2, Road # 2, Dhanmondi, Dhaka-1205', 1, '2023-12-12 21:21:19');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(39, 33, 'Chicken Biryani', 1, '3.00', 'in process', '2023-12-12 21:25:47'),
(40, 34, 'Beef Pizza', 1, '5.00', NULL, '2023-12-12 21:22:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `admin_codes`
--
ALTER TABLE `admin_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin_codes`
--
ALTER TABLE `admin_codes`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
