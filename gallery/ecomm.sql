-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2021 at 06:13 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `role`, `email`, `mobile`, `status`) VALUES
(1, 'admin', 'admin', 0, 'prashantmanwan@gmail.com', '9612096180', 1),
(2, 'vishal', 'vishal', 1, 'vishal@gmail.com', '1234567890', 1),
(5, 'vishal1', 'vishal', 1, 'vishal@gmail.com', '1234567890', 1),
(6, 'ad1mohan', 'Nagaland@12PK', 1, 'prashantmanwan@gmail.com', '9612096180', 1);

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `heading1` varchar(255) NOT NULL,
  `heading2` varchar(255) NOT NULL,
  `btn_txt` varchar(255) DEFAULT NULL,
  `btn_link` varchar(55) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `order_no` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(6, 'Mix', 1),
(7, 'Birthday', 1),
(8, 'Anniversary', 1),
(9, 'Gift', 1),
(10, 'Valentine', 1),
(12, 'Kid', 1),
(13, 'Father', 1),
(14, 'Chocolate', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `district` varchar(191) NOT NULL DEFAULT '',
  `state` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `district`, `state`) VALUES
(1, 'Jamshedpur', 'Jamshedpur', 'Jharkhand'),
(2, 'Ranchi', 'Rachi', 'Jharkhand'),
(3, 'Kolkata', 'Kolkata', 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(8, 'Prashant Kumar', 'prashantmanwan@gmail.com', '9612096180', 'From APP', '2021-07-05 03:25:28'),
(9, 'Prashant Kumar', 'nashuyall@gmail.com', '9612096180', 'Hello', '2021-07-05 05:30:11'),
(10, 'Sushant', 'Sushant@enally.com', '8775446664', 'Check msg', '2021-07-06 06:58:05'),
(11, 'Sushant', 'Sushant@enally.com', '8775446664', 'Check msg', '2021-07-06 06:58:06'),
(12, 'Sushant', 'Sushant@enally.com', '8775446664', 'Check msg', '2021-07-06 06:58:21'),
(13, 'Prashant', 'prashantmanwan@gmail.com', '9612096180', 'alert removed!', '2021-07-07 06:21:00'),
(14, 'Prashant', 'prashantmanwan@gmail.com', '9612096180', 'alert removed!', '2021-07-07 06:21:57'),
(15, 'Prashant Kumar', 'admin@enally.in', '9612096180', 'Message send from mobile app, after removing alert function.', '2021-07-07 06:38:13'),
(16, 'Prashant Kumar', 'prashantmanwan@gmail.com', '9612096180', 'Message sent... Check', '2021-07-07 06:39:14'),
(17, 'Prashant', 'prashantmanwan@gmail.com', '9612096180', 'Hello', '2021-07-07 07:25:55'),
(18, 'Prashant', 'prashantmanwan@gmail.com', '9612096180', 'Hello', '2021-07-07 07:26:56'),
(19, 'Prashant', 'prashantmanwan@gmail.com', '9612096180', 'Hello', '2021-07-07 07:26:59'),
(20, 'Sudha', 'admin@enally.in', '9612096180', 'Hello', '2021-07-07 07:28:22'),
(21, 'Sudha', 'admin@enally.in', '9612096180', 'Hello', '2021-07-07 07:28:26'),
(22, 'Sudha', 'admin@enally.in', '9612096180', 'Hello', '2021-07-07 07:28:26'),
(23, 'Prashant Kumar PK', 'flev.ar2021@gmail.com', '9612096180', 'Hello', '2021-07-07 07:31:03'),
(24, 'prashantmanwan@gmail.com', 'admin@enally.in', '9612096180', 'Hello', '2021-07-07 07:31:56'),
(25, 'prashantflever', 'admin@enally.in', '9612096180', 'hello', '2021-07-07 07:36:25'),
(26, 'Prashant', 'prashantmanwan@gmail.com', '9612096180', 'Send...', '2021-07-07 07:37:23'),
(27, 'prashantflever', 'prashantmanwan@gmail.com', '9612096180', 'hello', '2021-07-07 07:37:58'),
(28, 'Pk', 'prashantmanwan@gmail.com', '9612096180', 'Checking...', '2021-07-07 07:38:27'),
(29, 'prashantflever', 'prashantmanwan@gmail.com', '9612096180', 'hello', '2021-07-07 07:39:45'),
(30, 'prashantflever', 'prashantmanwan@gmail.com', '9612096180', 'hello', '2021-07-07 07:39:49'),
(31, 'adminpk', 'admin@enally.in', '9612096180', 'hello', '2021-07-07 07:40:16'),
(32, 'Prashant Kumar', 'prashantmanwan@gmail.com', '9612096180', 'Hello', '2021-07-07 07:47:38'),
(33, 'prashantflever', 'prashantmanwan@gmail.com', '9612096180', 'hello', '2021-07-07 07:49:18'),
(34, 'Check', 'prashantmanwan@gmail.com', '9612096180', 'Hello', '2021-07-07 07:56:11'),
(35, 'prashantflever', 'admin@enally.in', '9612096180', 'hello', '2021-07-07 07:58:47'),
(36, 'Hello', 'prashantmanwan@gmail.com', '9612096180', 'Hello', '2021-07-07 07:59:19'),
(37, 'Hello', 'prashantmanwan@gmail.com', '9612096180', 'Hello', '2021-07-07 08:00:08'),
(38, 'Hello', 'prashantmanwan@gmail.com', '9612096180', 'Hello', '2021-07-07 08:00:23'),
(39, 'hello 44', 'prashantmanwan@gmail.com', '9612096180', 'hello', '2021-07-07 08:02:20'),
(40, 'Hello 45', 'prashantmanwan@gmail.com', '9612096180', 'Check', '2021-07-07 08:02:55'),
(41, 'hello 46 lap', 'nashuyall@gmail.com', '9612096180', 'hello', '2021-07-07 08:05:10'),
(42, 'Hello 47 mob', 'prashantmanwan@gmail.com', '9612096180', 'Hello', '2021-07-07 08:05:34'),
(43, 'Hello 47 mob', 'prashantmanwan@gmail.com', '9612096180', 'Hello', '2021-07-07 08:06:23'),
(44, 'adminpk@gmail.com', 'admin@enally.in', '9612096180', 'hello', '2021-07-07 08:06:43'),
(45, 'Hello 47 mob', 'prashantmanwan@gmail.com', '9612096180', 'Hello', '2021-07-07 08:06:54'),
(46, 'adminpk@gmail.com', 'admin@enally.in', '9612096180', 'hello', '2021-07-07 08:08:18'),
(47, 'adminpk', 'prashantmanwan@gmail.com', '9612096180', 'hello', '2021-07-07 08:08:41'),
(48, 'Prashant Kumar PK', 'prashantmanwan@gmail.com', '9612096180', 'hello', '2021-07-07 08:10:01'),
(49, 'Hello 47 mob', 'prashantmanwan@gmail.com', '9612096180', 'Hello', '2021-07-07 08:10:26'),
(50, 'Hello', 'prashantmanwan@gmail.com', '9612096180', 'Hello', '2021-07-07 08:10:51'),
(51, 'prashantflever', 'admin@enally.in', '9612096180', 'Register your Complain Here', '2021-07-07 11:48:47'),
(53, 'Prashant kumar', 'prashantmanwan@gmail.com', '9612096180', 'Hello', '2021-07-07 01:21:15'),
(54, 'AK Sir', 'aksir@gmail.com', '9612096180', 'Test message...', '2021-07-07 02:35:51'),
(55, 'Rrr', 'Rdg@gmail.com', '9612096180', 'Hhhh', '2021-07-08 10:28:30'),
(56, 'flevAR', 'flev.AR@gmail.com', '9612096180', 'Google auto suggestions message: To the song is his number is not good for you to be honest I am not sure if you want to get it now fine with me and', '2021-07-10 11:21:21'),
(57, 'Vishal mumar', 'vishalagarwal1814@gmail.com', '9006368430', 'Item was not good! So please refund the amount! Thnxu', '2021-07-19 12:20:06'),
(58, 'Prashant Kumar', 'prashantmanwan@gmail.com', '9876543219', 'Test Message sent by Prashant ?', '2021-07-23 06:28:40'),
(61, 'prashantman', 'prashantmanwan@gmail.com', '8414938789', 're to help and answer any question you might have.\r\nWe look forward to hearing from y', '2021-07-31 12:25:51'),
(62, 'Prashant Kumar', 'prashantmanwan@gmail.com', '8414938789', 'Hello check message...', '2021-08-01 12:25:18'),
(64, 'Prashant Kumar', 'prashant@flevar.in', '9612096180', 'I have few questions....', '2021-08-10 10:59:19'),
(65, 'gfgdf', 'dfgdfg', '3543523534534', 'dffdgdfgd', '2021-08-19 03:36:26'),
(66, 'Prashant Kumar', 'prashantmanwan@gmail.com', '8414938789', 'check', '2021-09-04 12:55:45'),
(67, 'Prashant Kumar', 'reyan1367@gmail.com', '9612096180', 'check 2', '2021-09-04 12:56:33');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_master`
--

CREATE TABLE `coupon_master` (
  `id` int(11) NOT NULL,
  `coupon_code` varchar(50) NOT NULL,
  `coupon_value` int(11) NOT NULL,
  `coupon_type` varchar(10) NOT NULL,
  `cart_min_value` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupon_master`
--

INSERT INTO `coupon_master` (`id`, `coupon_code`, `coupon_value`, `coupon_type`, `cart_min_value`, `status`) VALUES
(1, 'First50', 300, 'Rupee', 599, 0),
(2, 'First60', 20, 'Percentage', 1000, 0),
(3, 'WINTER', 100, 'Rupee', 999, 0),
(6, 'vishal', 100, 'Rupee', 300, 1),
(9, 'Prashant', 1000, 'Rupee', 2000, 1),
(10, 'Charlie', 999, 'Rupee', 1200, 1),
(11, 'First10', 1000, 'Rupee', 4000, 1),
(14, 'LAUNCH', 15, 'Percentage', 4000, 1),
(15, 'First30', 999, 'Rupee', 2000, 1),
(16, 'Lovely', 100, 'Percentage', 2000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `total_price` float NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `order_status` int(11) NOT NULL,
  `length` float NOT NULL,
  `breadth` float NOT NULL,
  `height` float NOT NULL,
  `weight` float NOT NULL,
  `txnid` varchar(200) NOT NULL,
  `mihpayid` varchar(200) NOT NULL,
  `ship_order_id` int(11) NOT NULL,
  `ship_shipment_id` int(11) NOT NULL,
  `payu_status` varchar(10) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `coupon_value` varchar(50) NOT NULL,
  `coupon_code` varchar(50) NOT NULL,
  `added_on` datetime NOT NULL,
  `namee` varchar(255) NOT NULL,
  `mobilee` varchar(255) NOT NULL,
  `emails` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `address`, `city`, `pincode`, `payment_type`, `total_price`, `payment_status`, `order_status`, `length`, `breadth`, `height`, `weight`, `txnid`, `mihpayid`, `ship_order_id`, `ship_shipment_id`, `payu_status`, `coupon_id`, `coupon_value`, `coupon_code`, `added_on`, `namee`, `mobilee`, `emails`) VALUES
(59, 7, 'AG Colony', 'Bihar', 797001, 'instamojo', 1399, 'complete', 1, 0, 0, 0, 0, 'fd647e9a701a4b4e8ae318fde6883391', 'MOJO1720O05A09231072', 0, 0, '', 6, '100', 'Vishal', '2021-07-20 05:59:13', 'Vishal Agrawal', '9612096999', ''),
(60, 17, 'JK Apartment', 'kohima', 797001, 'instamojo', 1849, 'complete', 1, 0, 0, 0, 0, '908527050b3147038f4aae72d6b207f2', 'MOJO1720R05A09231110', 0, 0, '', 6, '100', 'Vishal', '2021-07-20 07:32:56', 'Prashant Kumar', '9612096180', ''),
(61, 18, 'Kohima', 'Kohima', 797001, 'instamojo', 1399, 'pending', 1, 0, 0, 0, 0, '6af749c258fc487984b6a5ca30a33db0', '', 0, 0, '', 6, '100', 'vishal', '2021-07-20 07:40:07', 'Prashant', '9612096180', ''),
(62, 18, 'Kohima', 'Kohima', 797001, 'instamojo', 3187, 'pending', 1, 0, 0, 0, 0, 'fde1f1e9ec314001a7c334b576bd8799', '', 0, 0, '', 6, '100', 'Vishal', '2021-07-20 07:44:44', 'Prashant', '9612096180', ''),
(63, 18, 'Kohima', 'Kohima', 797001, 'instamojo', 2488, 'pending', 1, 0, 0, 0, 0, 'e259c5dde70836522704', '', 0, 0, '', 6, '100', 'Vishal', '2021-07-20 07:48:25', 'Prashant', '9612096180', ''),
(64, 18, 'Kohima', 'Kohima', 797001, 'instamojo', 2588, 'pending', 1, 0, 0, 0, 0, 'a18d27cbe9764ecfa56cdd8657737882', '', 0, 0, '', 0, '', '', '2021-07-20 07:49:13', 'Prashant', '9612096180', ''),
(65, 18, 'Kohima', 'Kohima', 797001, 'instamojo', 2488, 'complete', 1, 0, 0, 0, 0, '4658b5b5a5c34e638d768a098376e8e7', 'MOJO1720S05A09231121', 0, 0, '', 6, '100', 'Vishal', '2021-07-20 07:51:45', 'Prashant', '9612096180', ''),
(66, 19, 'Kohima', 'Nagaland', 797001, 'COD', 2998, 'pending', 1, 0, 0, 0, 0, 'fc83566bfa2332d95dc4', '', 0, 0, '', 0, '', '', '2021-07-20 08:24:50', 'Sushant', '7630918801', ''),
(67, 18, 'JK Apartment', 'Kohima', 797001, 'instamojo', 2588, 'complete', 1, 0, 0, 0, 0, '1452067052094e86910ae44d1b27b2a8', 'MOJO1720205A09231137', 0, 0, '', 0, '', '', '2021-07-20 09:12:47', 'Prashant Kumar', '9612096180', ''),
(68, 21, 'Jalna', 'Jalna', 431203, 'instamojo', 2588, 'pending', 1, 0, 0, 0, 0, '0909b5b169af47d7a3437b98ef1943ce', '', 0, 0, '', 0, '', '', '2021-07-21 07:38:09', 'Parth', '9403231688', ''),
(69, 21, 'Jalna', 'Jalna', 431203, 'instamojo', 2588, 'pending', 1, 0, 0, 0, 0, 'a2ad360702f94f8dbcde09be6d7c0b0f', '', 0, 0, '', 0, '', '', '2021-07-21 07:38:54', 'Parth', '9403231688', ''),
(70, 21, 'Jalna', 'Jalna', 431203, 'instamojo', 1089, 'complete', 1, 0, 0, 0, 0, 'e894526980ce4e9880480935ed5a20df', 'MOJO1721X05A77509689', 0, 0, '', 0, '', '', '2021-07-21 07:47:29', 'Parth', '9403231688', ''),
(71, 1, 'JK Apartment', 'Kohima', 797001, 'instamojo', 889, 'complete', 1, 0, 0, 0, 0, 'ab98b35213c94e418cea10392082fdc7', 'MOJO1721505A77509789', 0, 0, '', 6, '100', 'Vishal', '2021-07-21 11:33:42', 'Prashant Kumar', '9612096180', ''),
(72, 1, 'AG Colony', 'Kohima', 797001, 'instamojo', 4996, 'complete', 1, 0, 0, 0, 0, '36972b66c1854f0a9e84c3d6c4b4a530', 'MOJO1721R05A77509912', 0, 0, '', 11, '1000', 'First10', '2021-07-21 04:27:14', 'Prashant Kumar ', '1234567891', ''),
(73, 1, 'JK Apartment', 'Kohima', 797001, 'instamojo', 3497, 'pending', 1, 0, 0, 0, 0, 'ed73e922130742a384745e10d9fbc29f', '', 0, 0, '', 11, '1000', 'first10', '2021-07-21 09:15:13', 'Prashant Kumar', '1234567891', ''),
(74, 1, 'JK Apartment', '', 797001, 'instamojo', 1499, 'Success', 5, 0, 0, 0, 0, '2f9481ae05604ce2977e71481076ae81', 'MOJO1722L05A18363161', 0, 0, '', 0, '', '', '2021-07-22 06:28:26', 'Prashant Kumar', '9612096180', ''),
(75, 1, 'JK Apartment', 'West Bengal', 797001, 'COD', 1499, 'Success', 3, 0, 0, 0, 0, '97ed9bb189f545e18e20', '', 0, 0, '', 0, '', '', '2021-07-22 06:33:45', 'Prashant Kumar', '9612096180', ''),
(76, 1, 'JP Enclave', 'West Bengal', 797001, 'COD', 1499, 'pending', 0, 0, 0, 0, 0, 'c76e1271ea4e2d1322b1', '', 0, 0, '', 0, '', '', '2021-07-22 06:36:33', 'Prashant Kumar', '9612096180', ''),
(77, 26, 'A b c d', 'Andhra Pradesh', 831013, 'instamojo', 1089, 'Success', 5, 0, 0, 0, 0, '240ff757a90a401e953dd925b3608eab', 'MOJO1722S05A18363474', 0, 0, '', 0, '', '', '2021-07-22 07:55:23', 'Aditya', '9495426883', ''),
(78, 1, 'JP Enclave', 'Nagaland', 797001, 'instamojo', 3495, 'pending', 1, 0, 0, 0, 0, '26b3d14dc6234010b565551005ce5a54', '', 0, 0, '', 11, '1000', 'first10', '2021-07-23 06:23:31', 'Prashant', '9876543210', ''),
(79, 1, 'JP Enclave', 'Nagaland', 797001, 'instamojo', 3495, 'complete', 1, 0, 0, 0, 0, 'c16cd16e8be64c6dbd3a87c0ed6b168a', 'MOJO1723M05A99865887', 0, 0, '', 11, '1000', 'first10', '2021-07-23 06:25:52', 'Prashant Kumar', '9876543210', ''),
(80, 1, 'JP Apartment', '', 797001, 'instamojo', 1089, 'pending', 1, 0, 0, 0, 0, '789b112ead524f6cbe5f34656cdcbaaa', '', 0, 0, '', 0, '', '', '2021-07-24 02:33:37', 'Prashant', '9876543210', ''),
(81, 1, 'JP Apartment', 'West Bengal', 797001, 'instamojo', 1089, 'complete', 1, 0, 0, 0, 0, 'a3e198508566484f8f392b0c25d275d2', 'MOJO1724R05A86795510', 0, 0, '', 0, '', '', '2021-07-24 02:35:39', 'Prashant Kumar', '9876543219', ''),
(82, 1, 'JK Apartment', 'Nagaland', 797001, 'instamojo', 1399, 'complete', 1, 0, 0, 0, 0, '62509caa8bfc495d927cd93009e0c9f8', 'MOJO1725X05A54564194', 0, 0, '', 6, '100', 'vishal', '2021-07-25 12:38:52', 'Prashant Kumar', '9612096180', ''),
(83, 27, 'AG Colony', 'Bihar', 805103, 'instamojo', 6495, 'complete', 3, 0, 0, 0, 0, '9e7f4afe12b14bcd9122aade5a7bb1fe', 'MOJO1725405A54564199', 0, 0, '', 11, '1000', 'first10', '2021-07-25 01:01:56', 'Vishal Agrawal', '1234567891', ''),
(84, 1, 'JK Apartment', 'Nagaland', 797001, 'instamojo', 3497, 'complete', 2, 0, 0, 0, 0, '9c285d7274f347b6b3214ef8a08c1588', 'MOJO1801R05A52848832', 0, 0, '', 11, '1000', 'first10', '2021-08-01 12:04:48', 'Vishal Agrawal', '9612096180', ''),
(85, 1, 'AG Colony', 'Jammu and Kashmir', 797001, 'COD', 1800, 'pending', 1, 0, 0, 0, 0, 'e1d5b323f54af71c8119', '', 0, 0, '', 0, '', '', '2021-08-01 01:02:55', 'Prashant Kumar', '9612096180', ''),
(86, 1, 'Kohima PK', 'West Bengal', 797001, 'instamojo', 1499, 'pending', 1, 0, 0, 0, 0, 'dc1b812944354df3b7904e9de8ef6fd5', '', 0, 0, '', 0, '', '', '2021-08-03 08:47:37', 'Prashant Kumar', '9612096180', ''),
(87, 1, 'AG Colony', 'Jharkhand', 797001, 'instamojo', 1499, 'pending', 1, 0, 0, 0, 0, 'b50f5f94f031a332e523', '', 0, 0, '', 0, '', '', '2021-08-03 08:50:34', 'Prashant Kumar', '1234567891', ''),
(88, 1, 'AG Colony', 'Jharkhand', 797001, 'instamojo', 1499, 'complete', 1, 0, 0, 0, 0, '376b0e8743f44fb4a25c25de236201a6', 'MOJO1803F05A95752828', 0, 0, '', 0, '', '', '2021-08-03 08:52:21', 'Prashant Kumar', '1234567891', ''),
(89, 1, 'JK Apartment', 'Chandigarh', 797001, 'instamojo', 211, 'complete', 1, 0, 0, 0, 0, '79c2be286f5a4934ad3e03b53b3927b1', 'MOJO1803705A95752837', 0, 0, '', 0, '', '', '2021-08-03 09:55:58', 'Vishal Agrawal', '9612096180', ''),
(90, 1, 'AG Colony', 'West Bengal', 7979001, 'instamojo', 799, 'complete', 1, 0, 0, 0, 0, '283f09fd139242eca051571351ac52a0', 'MOJO1804U05A18180262', 0, 0, '', 6, '100', 'vishal', '2021-08-04 12:31:12', 'Prashant Kumar', '1234567891', ''),
(91, 1, 'JK Apartment', 'Nagaland', 797001, 'instamojo', 6048, 'complete', 2, 0, 0, 0, 0, 'ffdcec8b55ed406997f85d79bd96c75d', 'MOJO1807905A99151425', 0, 0, '', 15, '999', 'First30', '2021-08-07 11:31:23', 'Ashtrik', '9612096180', ''),
(92, 1, 'AG Colony', 'West Bengal', 797001, 'instamojo', 1650, 'complete', 1, 0, 0, 0, 0, 'edb11812791940789d000d57b0937187', 'MOJO1808K05A90827848', 0, 0, '', 6, '100', 'vishal', '2021-08-08 08:34:44', 'Prashant Kumar', '9612096180', ''),
(93, 1, 'Kohima', 'Nagaland', 797001, 'instamojo', 1650, 'complete', 1, 0, 0, 0, 0, 'cba5ff81f92247858ed5a0853ee043db', 'MOJO1808X05A90827863', 0, 0, '', 6, '100', 'vishal', '2021-08-08 10:06:23', 'Prashant Kumar', '961209610', ''),
(94, 1, 'JK Apartment', 'Nagaland', 797001, 'instamojo', 250, 'complete', 1, 0, 0, 0, 0, '6ab79100c6374151aee458f5204346ee', 'MOJO1808Y05A90827892', 0, 0, '', 6, '100', 'vishal', '2021-08-08 12:40:26', 'Prashant Kumar', '9612096180', ''),
(95, 29, 'Babu Ghat', 'West Bengal', 797001, 'instamojo', 6845, 'Success', 5, 0, 0, 0, 0, '12dd9c3e92224db0bfbd7400597f65e9', 'MOJO1809005A48130888', 0, 0, '', 11, '1000', 'First10', '2021-08-09 08:32:34', 'Rohan Kundu', '7991172410', ''),
(96, 30, 'JP Apartment', 'Nagaland', 797001, 'instamojo', 2631, 'complete', 1, 0, 0, 0, 0, '95fd0e68ac5447e3a49f029774d25737', 'MOJO1810O05A94811509', 0, 0, '', 15, '999', 'First30', '2021-08-10 10:56:50', 'Prashant Kumar', '9612096180', ''),
(97, 30, 'JK Apartment', 'West Bengal', 797001, 'instamojo', 4250, 'complete', 1, 0, 0, 0, 0, '4ab7dfe58e6749ce813c8a14cb96ea8b', 'MOJO1811T05A69389142', 0, 0, '', 0, '', '', '2021-08-11 09:01:11', 'Prashant Kumar', '9612096999', ''),
(98, 30, 'JK Apartment', 'Nagaland', 797001, 'instamojo', 222, 'complete', 1, 0, 0, 0, 0, '86a30c101acd455897130b6a4d1743e7', 'MOJO1814L05A34622076', 0, 0, '', 6, '100', 'vishal', '2021-08-14 03:38:48', 'Prashant Kumar', '9612096180', ''),
(99, 30, 'JK Apartment', 'Lakshadweep', 797001, 'instamojo', 1399, 'complete', 2, 0, 0, 0, 0, 'b9d20b6e696640049bfab1526e851a66', 'MOJO1815E05A35840481', 0, 0, '', 6, '100', 'vishal', '2021-08-15 09:09:13', 'Prashant Kumar', '9612096180', ''),
(100, 30, 'JK Apartment', 'Puducherry', 797001, 'instamojo', 2098, 'complete', 1, 0, 0, 0, 0, '3dc1d3a6fff54a24983970c9ee986dba', 'MOJO1815F05A35840484', 0, 0, '', 6, '100', 'vishal', '2021-08-15 09:16:24', 'Prashant Kumar', '9612096180', ''),
(101, 32, 'hhhh', 'Bihar', 124689, 'instamojo', 1234, 'pending', 1, 0, 0, 0, 0, '26ddf453fbd2435094db72be17640958', '', 0, 0, '', 0, '', '', '2021-08-15 01:36:00', 'cccc', '1234567890', ''),
(102, 32, 'hhhh', 'Bihar', 124689, 'COD', 1234, 'pending', 1, 0, 0, 0, 0, 'c7f22ae6238795bcd267', '', 0, 0, '', 0, '', '', '2021-08-15 01:36:25', 'cccc', '1234567890', ''),
(103, 30, 'Kohima', 'Chhattisgarh', 797001, 'instamojo', 6495, 'complete', 1, 0, 0, 0, 0, '56411892586d44978c290faeb263d0f1', 'MOJO1815I05A35840630', 0, 0, '', 11, '1000', 'First10', '2021-08-15 06:20:17', 'Prashant', '9612096180', ''),
(104, 1, 'JK Apartment', 'Himachal Pradesh', 797001, 'instamojo', 1499, 'pending', 1, 0, 0, 0, 0, 'f31bee75e7b4419bab10c31de3fdbc4d', '', 0, 0, '', 0, '', '', '2021-08-16 10:49:29', 'Prashant Kumar', '9612096180', ''),
(105, 1, 'AG Colony', 'Goa', 797001, 'instamojo', 1399, 'pending', 1, 0, 0, 0, 0, '766607992208414ca967dc20424bc5c7', '', 0, 0, '', 6, '100', 'vishal', '2021-08-16 10:50:45', 'Vishal Agrawal', '1234567891', ''),
(106, 1, 'AG Colony', 'Gujarat', 797001, 'instamojo', 1668.82, 'complete', 1, 0, 0, 0, 0, 'd9fac1a5038d4bbb80b1203d23614be0', 'MOJO1816F05A23978512', 0, 0, '', 6, '100', 'vishal', '2021-08-16 10:52:12', 'Prashant Kumar', '1234567891', ''),
(107, 1, 'JK Apartment', 'Goa', 797001, 'instamojo', 4306.46, 'complete', 1, 0, 0, 0, 0, '546ab5ffcda145b29340963387e75b42', 'MOJO1816P05A23978513', 0, 0, '', 11, '1000', 'First10', '2021-08-16 11:01:32', 'Prashant Kumar', '9612096180', ''),
(108, 1, 'AG Colony', 'Goa', 797001, 'instamojo', 4306.46, 'pending', 1, 0, 0, 0, 0, '91de88f376734085a8c2a8a1bab8c1fe', '', 0, 0, '', 11, '1000', 'first10', '2021-08-16 11:19:33', 'Prashant Kumar', '9612096180', ''),
(109, 1, 'Kohima', 'Nagaland', 797001, 'instamojo', 7024, 'pending', 1, 0, 0, 0, 0, '060491a1be9c4881a7346fee333705ff', '', 0, 0, '', 11, '1000', 'First10', '2021-08-16 11:34:43', 'Prashant Kumar', '9612096180', ''),
(110, 1, 'Kohima', 'Nagaland', 797001, 'instamojo', 7024, 'complete', 1, 0, 0, 0, 0, '93dcf057158d4daba4f16e84b1713e67', 'MOJO1816Y05A23978514', 0, 0, '', 11, '1000', 'First10', '2021-08-16 11:36:19', 'Prashant Kumar', '9612096180', ''),
(111, 1, 'JK Apartment', 'Nagaland', 797001, 'instamojo', 1185.02, 'pending', 1, 0, 0, 0, 0, 'f97ee1d99370442dabdb9f4b243e120e', '', 0, 0, '', 6, '100', 'vishal', '2021-08-17 04:27:14', 'Prashant Kumar', '9612096180', ''),
(112, 1, 'JK Apartment', 'Nagaland', 797001, 'instamojo', 1185.02, 'complete', 1, 0, 0, 0, 0, '02dbff2efc294ff6a04bc6e9093b98d8', 'MOJO1817K05A12388837', 0, 0, '', 6, '100', 'vishal', '2021-08-17 04:29:17', 'Prashant Kumar', '9612096180', ''),
(113, 1, 'Babu Ghat', 'Daman and Diu', 805103, 'instamojo', 2783.92, 'pending', 1, 0, 0, 0, 0, '74c15b9c823a4cbeb26fa22848003034', '', 0, 0, '', 6, '100', 'vishal', '2021-08-19 08:53:11', 'Prashant Kumar', '9612096180', ''),
(114, 1, 'AG Colony', 'Haryana', 805103, 'instamojo', 2783.92, 'complete', 1, 0, 0, 0, 0, '4d6f0a962ac246d7bc1ca305047c95b3', 'MOJO1819Q05A85029460', 0, 0, '', 6, '100', 'vishal', '2021-08-19 08:54:16', 'Prashant Kumar', '1234567891', ''),
(115, 1, '', '', 0, '', 1456.12, 'pending', 1, 0, 0, 0, 0, '6ac9c3b7876467cc27a7', '', 0, 0, '', 0, '', '', '2021-08-22 06:35:34', '', '', ''),
(116, 1, 'AG Colony', 'Andhra Pradesh', 797001, 'instamojo', 1356.12, 'pending', 1, 0, 0, 0, 0, '4a09f27be0ca4d6f8fecfd9b0230e985', '', 0, 0, '', 6, '100', 'vishal', '2021-08-22 08:03:01', 'Prashant Kumar', '9612096180', ''),
(117, 1, 'JK Apartment', 'Andaman and Nicobar Islands', 797001, 'instamojo', 1456.12, 'pending', 1, 0, 0, 0, 0, 'caa6322c0bea42b684837cd2420e358a', '', 0, 0, '', 0, '', '', '2021-08-22 08:04:15', 'Prashant Kumar', '9612096180', ''),
(118, 1, 'JK Apartment', 'Andhra Pradesh', 797001, 'instamojo', 1456.12, 'pending', 1, 0, 0, 0, 0, 'b53bb731577c54d6d131', '', 0, 0, '', 0, '', '', '2021-08-22 08:05:37', 'Prashant Kumar', '9612096180', ''),
(119, 1, 'AG Colony', 'Bihar', 797001, 'instamojo', 1456.12, 'pending', 1, 0, 0, 0, 0, '65dbc34437925506efb3', '', 0, 0, '', 0, '', '', '2021-08-22 08:05:52', 'Vishal Agrawal', '9612096180', ''),
(120, 1, 'JK Apartment', 'Dadar and Nagar Haveli', 805103, 'instamojo', 1356.12, 'pending', 1, 0, 0, 0, 0, 'a139d7fc4f7c365024db', '', 0, 0, '', 6, '100', 'vishal', '2021-08-22 08:06:23', 'Prashant Kumar', '9612096180', ''),
(121, 1, 'JK Apartment', 'Dadar and Nagar Haveli', 805103, 'instamojo', 1456.12, 'pending', 1, 0, 0, 0, 0, '41762820e00139493431', '', 0, 0, '', 0, '', '', '2021-08-22 08:07:25', 'Prashant Kumar', '9612096180', ''),
(122, 1, 'JK Apartment', 'Chandigarh', 797001, 'instamojo', 1356.12, 'pending', 1, 0, 0, 0, 0, '0a1dce7962d2d42b586e', '', 0, 0, '', 6, '100', 'vishal', '2021-08-22 08:07:44', 'Prashant Kumar', '9612096180', ''),
(123, 1, 'JK Apartment', 'Delhi', 797001, 'instamojo', 1356.12, 'pending', 1, 0, 0, 0, 0, '4627dcbacfae4411926abf3e7445fd90', '', 0, 0, '', 6, '100', 'vishal', '2021-08-22 08:08:18', 'Prashant Kumar', '9612096180', ''),
(124, 1, 'JK Apartment', 'Lakshadweep', 797001, 'instamojo', 1356.12, 'complete', 1, 0, 0, 0, 0, 'c7698e5546d24b4b8bcd59fc0f57ebe2', 'MOJO1822A05A48636345', 0, 0, '', 6, '100', 'vishal', '2021-08-22 08:13:25', 'Prashant Kumar', '9612096180', ''),
(125, 1, '', '', 0, '', 1456.12, 'pending', 1, 0, 0, 0, 0, '79003536fd7d9750211e', '', 0, 0, '', 0, '', '', '2021-08-22 08:30:11', '', '', ''),
(126, 1, '', '', 0, '', 1456.12, 'pending', 1, 0, 0, 0, 0, '5b7a56465305abbec138', '', 0, 0, '', 0, '', '', '2021-08-22 08:33:14', '', '', ''),
(127, 1, '', '', 0, '', 1356.12, 'pending', 1, 0, 0, 0, 0, '7a1b1efcb40a01977e45', '', 0, 0, '', 6, '100', 'vishal', '2021-08-22 08:38:48', '', '', ''),
(128, 1, '', '', 0, '', 1456.12, 'pending', 1, 0, 0, 0, 0, '86b61d26caa5b50603f0', '', 0, 0, '', 0, '', '', '2021-08-22 08:40:11', '', '', ''),
(129, 1, '', '', 0, '', 1456.12, 'pending', 1, 0, 0, 0, 0, '406c7184757f67082129', '', 0, 0, '', 0, '', '', '2021-08-22 08:40:57', '', '', ''),
(130, 1, '', '', 0, '', 1456.12, 'pending', 1, 0, 0, 0, 0, 'baa0abe210c884410f0e', '', 0, 0, '', 0, '', '', '2021-08-22 08:41:20', '', '', ''),
(131, 1, '', '', 0, '', 1456.12, 'pending', 1, 0, 0, 0, 0, '245712bfd8f6373ea155', '', 0, 0, '', 0, '', '', '2021-08-22 08:47:24', '', '', ''),
(132, 1, 'JK Apartment', 'Kohima, Near JP Appartment', 829209, 'instamojo', 1456.12, 'pending', 1, 0, 0, 0, 0, '90b080d439864c6f8f25f7fb7f8ea3fd', '', 0, 0, '', 0, '', '', '2021-08-22 08:58:08', 'Vishal Agrawal', '9612096180', ''),
(133, 1, 'JK Apartment', 'Kohima, Near JP Appartment', 831009, 'instamojo', 1356.12, 'pending', 1, 0, 0, 0, 0, '12027c1642b941a1a1497743a3ff50a5', '', 0, 0, '', 6, '100', 'vishal', '2021-08-22 09:13:02', 'Prashant Kumar', '1234567891', ''),
(134, 1, 'JK Apartment', 'fdsdf', 831010, 'COD', 1356.12, 'pending', 1, 0, 0, 0, 0, 'bfb0b087a115099e7016', '', 0, 0, '', 6, '100', 'vishal', '2021-08-22 09:51:12', 'Prashant Kumar', '9612096180', ''),
(135, 1, 'AG Colony', 'Kohima, Near JP Appartment', 831011, 'rozerpay', 1456.12, 'pending', 1, 0, 0, 0, 0, 'f5b29ac86ad377e1fec9', '', 0, 0, '', 0, '', '', '2021-08-22 10:49:44', 'Prashant Kumar', '9612096180', ''),
(136, 1, 'AG Colony', 'Kohima, Near JP Appartment', 831009, 'rozerpay', 1456.12, 'pending', 1, 0, 0, 0, 0, '133ad2022771f33c4add', '', 0, 0, '', 0, '', '', '2021-08-22 11:01:52', 'Prashant Kumar', '9612096180', ''),
(137, 1, 'JK Apartment', 'Kohima, Near JP Appartment', 831011, 'rozerpay', 1456.12, 'pending', 1, 0, 0, 0, 0, 'd61efc67bd6f5ade062a', '', 0, 0, '', 0, '', '', '2021-08-22 11:04:43', 'Vishal Agrawal', '9612096180', ''),
(138, 1, 'AG Colony', 'Kohima, Near JP Appartment', 831009, 'COD', 1456.12, 'pending', 1, 0, 0, 0, 0, '20e3697885689b791b32', '', 0, 0, '', 0, '', '', '2021-08-22 11:28:22', 'Vishal Agrawal', '9612096180', '');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`) VALUES
(62, 59, 37, 1, 1499),
(63, 60, 37, 1, 1499),
(64, 60, 32, 1, 450),
(65, 61, 37, 1, 1499),
(66, 62, 37, 1, 1499),
(67, 62, 33, 1, 699),
(68, 62, 36, 1, 1089),
(69, 63, 37, 1, 1499),
(70, 63, 36, 1, 1089),
(71, 64, 37, 1, 1499),
(72, 64, 36, 1, 1089),
(73, 65, 37, 1, 1499),
(74, 65, 36, 1, 1089),
(75, 66, 37, 2, 1499),
(76, 67, 37, 1, 1499),
(77, 67, 36, 1, 1089),
(78, 68, 36, 1, 1089),
(79, 68, 37, 1, 1499),
(80, 69, 36, 1, 1089),
(81, 69, 37, 1, 1499),
(82, 70, 36, 1, 1089),
(83, 71, 35, 1, 989),
(84, 72, 37, 4, 1499),
(85, 73, 37, 3, 1499),
(86, 74, 37, 1, 1499),
(87, 75, 37, 1, 1499),
(88, 76, 37, 1, 1499),
(89, 77, 36, 1, 1089),
(90, 78, 34, 5, 899),
(91, 79, 34, 5, 899),
(92, 80, 36, 1, 1089),
(93, 81, 36, 1, 1089),
(94, 82, 37, 1, 1499),
(95, 83, 37, 5, 1499),
(96, 84, 37, 3, 1499),
(97, 85, 32, 4, 450),
(98, 86, 37, 1, 1499),
(99, 87, 37, 1, 1499),
(100, 88, 37, 1, 1499),
(101, 89, 40, 1, 211),
(102, 90, 34, 1, 899),
(103, 91, 41, 3, 850),
(104, 91, 37, 3, 1499),
(105, 92, 46, 5, 350),
(106, 93, 46, 5, 350),
(107, 94, 46, 1, 350),
(108, 95, 46, 1, 350),
(109, 95, 37, 5, 1499),
(110, 96, 47, 3, 1210),
(111, 97, 41, 5, 850),
(112, 98, 45, 1, 322),
(113, 99, 37, 1, 1499),
(114, 100, 37, 1, 1499),
(115, 100, 44, 1, 699),
(116, 101, 48, 1, 1234),
(117, 102, 48, 1, 1234),
(118, 103, 37, 5, 1499),
(119, 104, 37, 1, 1499),
(120, 105, 37, 1, 1499),
(121, 106, 37, 1, 1499),
(122, 107, 37, 3, 1499),
(123, 108, 37, 3, 1499),
(124, 109, 41, 8, 850),
(125, 110, 41, 8, 850),
(126, 111, 42, 1, 1089),
(127, 112, 42, 1, 1089),
(128, 113, 48, 1, 1234),
(129, 113, 47, 1, 1210),
(130, 114, 48, 1, 1234),
(131, 114, 47, 1, 1210),
(132, 115, 48, 1, 1234),
(133, 116, 48, 1, 1234),
(134, 117, 48, 1, 1234),
(135, 118, 48, 1, 1234),
(136, 119, 48, 1, 1234),
(137, 120, 48, 1, 1234),
(138, 121, 48, 1, 1234),
(139, 122, 48, 1, 1234),
(140, 123, 48, 1, 1234),
(141, 124, 48, 1, 1234),
(142, 125, 48, 1, 1234),
(143, 126, 48, 1, 1234),
(144, 127, 48, 1, 1234),
(145, 128, 48, 1, 1234),
(146, 129, 48, 1, 1234),
(147, 130, 48, 1, 1234),
(148, 131, 48, 1, 1234),
(149, 132, 48, 1, 1234),
(150, 133, 48, 1, 1234),
(151, 134, 48, 1, 1234),
(152, 135, 48, 1, 1234),
(153, 136, 48, 1, 1234),
(154, 137, 48, 1, 1234),
(155, 138, 48, 1, 1234);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(5, 'Completed'),
(4, 'Canceled'),
(3, 'Shipped'),
(2, 'Processing'),
(1, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `pincode`
--

CREATE TABLE `pincode` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_office_name` varchar(100) DEFAULT NULL,
  `pincode` double DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pincode`
--

INSERT INTO `pincode` (`id`, `post_office_name`, `pincode`, `city_id`, `is_active`) VALUES
(1, 'Ananda Bazar Patrika', 700001, 3, 1),
(2, 'Braborne Road', 700001, 3, 1),
(3, 'Calcutta G P O', 700001, 3, 1),
(4, 'Council House Street', 700001, 3, 1),
(5, 'Custom House', 700001, 3, 1),
(6, 'Khangrapatti', 700001, 3, 1),
(7, 'Lalbazar', 700001, 3, 1),
(8, 'New Secretariate Bldg', 700001, 3, 1),
(9, 'R N Mukherjee Road', 700001, 3, 1),
(10, 'Radha Bazar', 700001, 3, 1),
(11, 'Reserve Bank Building', 700001, 3, 1),
(12, 'Telephone Bhavan', 700001, 3, 1),
(13, 'Treasury Building', 700001, 3, 1),
(14, 'W B Assembly', 700001, 3, 1),
(15, 'Writers Building', 700001, 3, 1),
(16, 'Cossipore Gun Factory', 700002, 3, 1),
(17, 'Cossipore H O', 700002, 3, 1),
(18, 'Indian Research', 700002, 3, 1),
(19, 'Paikpara', 700002, 3, 1),
(20, 'Postal Stores Depot', 700002, 3, 1),
(21, 'Satchasipara', 700002, 3, 1),
(22, 'Tala', 700002, 3, 1),
(23, 'Amrita Bazar', 700003, 3, 1),
(24, 'Bagh Bazar', 700003, 3, 1),
(25, 'Girish Avenue', 700003, 3, 1),
(26, 'Patrika', 700003, 3, 1),
(27, 'R G Kar M C Hospital', 700004, 3, 1),
(28, 'Shyambazar', 700004, 3, 1),
(29, 'Shyambazar Market', 700004, 3, 1),
(30, 'Ultadanga', 700004, 3, 1),
(31, 'Ahiritola', 700005, 3, 1),
(32, 'Hatkhola', 700005, 3, 1),
(33, 'Beadon Street', 700006, 3, 1),
(34, 'Bidhan Sarani', 700006, 3, 1),
(35, 'Jorasanko', 700006, 3, 1),
(36, 'Maniktala', 700006, 3, 1),
(37, 'Pathuriaghata', 700006, 3, 1),
(38, 'Sahitya Parisad', 700006, 3, 1),
(39, 'Archana', 700007, 3, 1),
(40, 'Barabazar H O', 700007, 3, 1),
(41, 'College Squire', 700007, 3, 1),
(42, 'Kalaker Street', 700007, 3, 1),
(43, 'Strand Road', 700007, 3, 1),
(44, 'Vishyasabha', 700007, 3, 1),
(45, 'Barisha', 700008, 3, 1),
(46, 'Purba Barisha', 700008, 3, 1),
(47, 'Sarani Rarsibagan', 700009, 3, 1),
(48, 'Beleghata H O', 700010, 3, 1),
(49, 'Joranandir', 700010, 3, 1),
(50, 'Subhas Sarobar', 700010, 3, 1),
(51, 'Narkeldanga', 700011, 3, 1),
(52, 'Bow Bazar', 700012, 3, 1),
(53, 'Sankaritala', 700012, 3, 1),
(54, 'Dharamtala', 700013, 3, 1),
(55, 'Mott Lane', 700013, 3, 1),
(56, 'Bamboovilla', 700014, 3, 1),
(57, 'Intally', 700014, 3, 1),
(58, 'Linton Street', 700014, 3, 1),
(59, 'Sealdah', 700014, 3, 1),
(60, 'Taltala', 700014, 3, 1),
(61, 'Sales Tax Building', 700015, 3, 1),
(62, 'Seal Lane', 700015, 3, 1),
(63, 'Tengra', 700015, 3, 1),
(64, 'Elliot Road', 700016, 3, 1),
(65, 'Madrassa', 700016, 3, 1),
(66, 'Park Street H O', 700016, 3, 1),
(67, 'Circus Avenue', 700017, 3, 1),
(68, 'Jhowtala', 700017, 3, 1),
(69, 'Park Circus', 700017, 3, 1),
(70, 'Shakespeare Sarani', 700017, 3, 1),
(71, 'Bartala', 700018, 3, 1),
(72, 'Rabindranagar', 700018, 3, 1),
(73, 'Ballygunge', 700019, 3, 1),
(74, 'Ballygunge R S', 700019, 3, 1),
(75, 'Ballygunge Science College', 700019, 3, 1),
(76, 'Garcha Road', 700019, 3, 1),
(77, 'Gariahat Market', 700019, 3, 1),
(78, 'Gol Park', 700019, 3, 1),
(79, 'Archarya Jagadish', 700020, 3, 1),
(80, 'Chandra Bose Road', 700020, 3, 1),
(81, 'Gokhale Road', 700020, 3, 1),
(82, 'Karnani Memorial Hospial', 700020, 3, 1),
(83, 'Lajpat Rai Sarani', 700020, 3, 1),
(84, 'Fort Willium', 700021, 3, 1),
(85, 'Bakery Road', 700022, 3, 1),
(86, 'Hastings', 700022, 3, 1),
(87, 'Kidderpore', 700023, 3, 1),
(88, 'Manstala', 700023, 3, 1),
(89, 'Market', 700023, 3, 1),
(90, 'Raja Janakinath', 700023, 3, 1),
(91, 'Watgunge', 700023, 3, 1),
(92, 'Garden Reach', 700024, 3, 1),
(93, 'Keshoram Cotton Mills', 700024, 3, 1),
(94, 'Paharpur Garden', 700024, 3, 1),
(95, 'Reach', 700024, 3, 1),
(96, 'Trenching Grand Road', 700024, 3, 1),
(97, 'Bhawanipore', 700025, 3, 1),
(98, 'Lansdown Market', 700025, 3, 1),
(99, 'Ramkrishna Park', 700025, 3, 1),
(100, 'Ranshet Wadi', 700025, 3, 1),
(101, 'Kalighat', 700026, 3, 1),
(102, 'Kalimandir', 700026, 3, 1),
(103, 'Keoratala', 700026, 3, 1),
(104, 'Protisthan', 700026, 3, 1),
(105, 'Ramkrishna Seva', 700026, 3, 1),
(106, 'Sahannagar', 700026, 3, 1),
(107, 'Southern Market', 700026, 3, 1),
(108, 'Alipore Bodyguard Line', 700027, 3, 1),
(109, 'Alipore Civil Court', 700027, 3, 1),
(110, 'Alipore District Board', 700027, 3, 1),
(111, 'Alipore H O', 700027, 3, 1),
(112, 'Alipore Store Yard', 700027, 3, 1),
(113, 'Chetla', 700027, 3, 1),
(114, 'Mominpore', 700027, 3, 1),
(115, 'National Library', 700027, 3, 1),
(116, 'Dum Dum', 700028, 3, 1),
(117, 'Jugipara Satgachi', 700028, 3, 1),
(118, 'Jungipara Salgs Nager Bzr', 700028, 3, 1),
(119, 'Kamalapur', 700028, 3, 1),
(120, 'Kumarpare', 700028, 3, 1),
(121, 'Ordnance Factory', 700028, 3, 1),
(122, 'Rajabagan', 700028, 3, 1),
(123, 'Dover Lane', 700029, 3, 1),
(124, 'Lake Market', 700029, 3, 1),
(125, 'Rash Behari Avenue', 700029, 3, 1),
(126, 'Sarat Bose Road', 700029, 3, 1),
(127, 'Ghughudanga', 700030, 3, 1),
(128, 'Purbe Sinthee', 700030, 3, 1),
(129, 'Sethbagan', 700030, 3, 1),
(130, 'K P Roy Lane', 700031, 3, 1),
(131, 'Bejoy Garh', 700032, 3, 1),
(132, 'Hossain Road', 700032, 3, 1),
(133, 'Jadavpur University', 700032, 3, 1),
(134, 'Prince Golam', 700032, 3, 1),
(135, 'Indrani Park', 700033, 3, 1),
(136, 'Tallygunge H O', 700033, 3, 1),
(137, 'Tollygunge Circular Road', 700033, 3, 1),
(138, 'Behala', 700034, 3, 1),
(139, 'Behala Municipal Market', 700034, 3, 1),
(140, 'Brahma Samaj Road', 700034, 3, 1),
(141, 'Jayasree Park', 700034, 3, 1),
(142, 'Parchanantala', 700034, 3, 1),
(143, 'Serhati', 700034, 3, 1),
(144, 'Alambazar', 700035, 3, 1),
(145, 'Ashokegarh', 700035, 3, 1),
(146, 'Bon Hooghly', 700035, 3, 1),
(147, 'Desh Bandhu Road', 700035, 3, 1),
(148, 'Indian Statistical Institute', 700035, 3, 1),
(149, 'Bengal Immunity', 700036, 3, 1),
(150, 'Belgachia', 700037, 3, 1),
(151, 'Belgachia Road', 700037, 3, 1),
(152, 'Northern Avenue', 700037, 3, 1),
(153, 'Bediadanga', 700039, 3, 1),
(154, 'Picnic Garden', 700039, 3, 1),
(155, 'Tiljala', 700039, 3, 1),
(156, 'Tiljalabazar', 700039, 3, 1),
(157, 'Topsia', 700039, 3, 1),
(158, 'Netajinagar', 700040, 3, 1),
(159, 'Regent Park', 700040, 3, 1),
(160, 'Russa', 700040, 3, 1),
(161, 'Paschim Putuary', 700041, 3, 1),
(162, 'Bose Pukur Road', 700042, 3, 1),
(163, 'Coal Dock Road', 700043, 3, 1),
(164, 'Sonai', 700043, 3, 1),
(165, 'South Eastern Rly', 700043, 3, 1),
(166, 'Badartala', 700044, 3, 1),
(167, 'Barasahebs Hat', 700044, 3, 1),
(168, 'Rajabagan Dok Yeard', 700044, 3, 1),
(169, 'La Gardens', 700045, 3, 1),
(170, 'Abinash Choudhury Lane', 700046, 3, 1),
(171, 'Gobinda Khatik Road', 700046, 3, 1),
(172, 'Ganguly Bagan', 700047, 3, 1),
(173, 'Garia Bus Terminus', 700047, 3, 1),
(174, 'Naktala', 700047, 3, 1),
(175, 'Basak Bagan', 700048, 3, 1),
(176, 'Patipukur', 700048, 3, 1),
(177, 'Sadhana Aushadhalaya Road', 700048, 3, 1),
(178, 'Sree Bhumi', 700048, 3, 1),
(179, 'Nimta', 700049, 3, 1),
(180, 'Udaipur', 700049, 3, 1),
(181, 'Sinthee', 700050, 3, 1),
(182, 'South Sinthee', 700050, 3, 1),
(183, 'Birati', 700051, 3, 1),
(184, 'Calcutta Air Port', 700052, 3, 1),
(185, 'Calcutta Air Port N T B', 700052, 3, 1),
(186, 'K R Bose Sarani', 700052, 3, 1),
(187, 'Kalabagan', 700053, 3, 1),
(188, 'Nalini Ranjan Avenue', 700053, 3, 1),
(189, 'New Alipore', 700053, 3, 1),
(190, 'Bengal Chemical', 700054, 3, 1),
(191, 'Kankurgachi', 700054, 3, 1),
(192, 'Phulbagan', 700054, 3, 1),
(193, 'Ram Krishna Samadhi Rd', 700054, 3, 1),
(194, 'Bangur Avenue', 700055, 3, 1),
(195, 'Dum Dum Park', 700055, 3, 1),
(196, 'Shyamnagar Dum Dum', 700055, 3, 1),
(197, 'Baguiati Super Market', 700059, 3, 1),
(198, 'Deshbandhu Nagar', 700059, 3, 1),
(199, 'Mahendra Banerjee Road', 700060, 3, 1),
(200, 'Parnasripally', 700060, 3, 1),
(201, 'W B G S Camp', 700062, 3, 1),
(202, 'Bidhangarh', 700066, 3, 1),
(203, 'Lily Biscuit', 700067, 3, 1),
(204, 'Ultadanga Main Road', 700067, 3, 1),
(205, 'Jodhpur Park', 700068, 3, 1),
(206, 'Esplanade', 700069, 3, 1),
(207, 'Great Eastern Hotel', 700069, 3, 1),
(208, 'Income Tax Building', 700069, 3, 1),
(209, 'Little Russel St', 700071, 3, 1),
(210, 'Middleton Row', 700071, 3, 1),
(211, 'Russel Street', 700071, 3, 1),
(212, 'Hindustan Building', 700072, 3, 1),
(213, 'Princeep Street', 700072, 3, 1),
(214, 'Sooterkeen Street', 700072, 3, 1),
(215, 'Sarani', 700085, 3, 1),
(216, 'New Market', 700087, 3, 1),
(217, 'Abhoy Guha Road', 711204, 3, 1),
(218, 'Mecluskie Ganj', 829208, 2, 1),
(219, 'Ray', 829209, 2, 1),
(220, 'Dakra Colliery', 829210, 2, 1),
(221, 'Bistupur Bazar', 831001, 1, 1),
(222, 'Bistupur Gate', 831001, 1, 1),
(223, 'Jamshedpur', 831001, 1, 1),
(224, 'Sakchi Court', 831001, 1, 1),
(225, 'Tatanagar', 831002, 1, 1),
(226, 'Cable Township', 831003, 1, 1),
(227, 'Golmuri', 831003, 1, 1),
(228, 'Palaza Market', 831004, 1, 1),
(229, 'Telco Works', 831004, 1, 1),
(230, 'Kadma', 831005, 1, 1),
(231, 'Burma Mines', 831007, 1, 1),
(232, 'Foundry Works', 831007, 1, 1),
(233, 'Kalimati Market', 831007, 1, 1),
(234, 'N M Laboratory', 831007, 1, 1),
(235, 'Indra Nagar', 831008, 1, 1),
(236, 'Agrico', 831009, 1, 1),
(237, 'Telco G Ms Office', 831010, 1, 1),
(238, 'Sonari', 831011, 1, 1),
(239, 'Sonbarsa', 831011, 1, 1),
(240, 'R I T Jamshedpur', 831014, 1, 1),
(241, 'Gobindpur Housing Colony', 831015, 1, 1),
(242, 'Rahragora', 831016, 1, 1),
(243, 'Baridih Colony', 831017, 1, 1),
(244, 'Baharagora', 832101, 1, 1),
(245, 'Daltonganj College', 832102, 1, 1),
(246, 'Jaduguda Mines', 832102, 1, 1),
(247, 'Maubhandar', 832103, 1, 1),
(248, 'Mosabani Mines', 832104, 1, 1),
(249, 'Patamda', 832105, 1, 1),
(250, 'Rakha Copper Project', 832106, 1, 1),
(251, 'Sundernagar', 832107, 1, 1),
(252, 'Gamharia', 832108, 1, 1),
(253, 'Adityapur Industrial Area', 832109, 1, 1),
(254, 'Azad Nagar', 832110, 1, 1),
(255, 'Dumuria', 832111, 1, 1),
(256, 'Ranchi', 834001, 2, 1),
(257, 'Ranchi Court', 834001, 2, 1),
(258, 'Ranchi Ho.', 834001, 2, 1),
(259, 'Ranchi Ho.', 834001, 2, 1),
(260, 'Ranchi Ho.', 834001, 2, 1),
(261, 'Ranchi Ho.', 834001, 2, 1),
(262, 'Ranchi Ho.', 834001, 2, 1),
(263, 'Ranchi Ho.', 834001, 2, 1),
(264, 'Ranchi Ho.', 834001, 2, 1),
(265, 'Ranchi Ho.', 834001, 2, 1),
(266, 'Ranchi Ho.', 834001, 2, 1),
(267, 'Ranchi Ho.', 834001, 2, 1),
(268, 'Ranchi Ho.', 834001, 2, 1),
(269, 'Ranchi Ho.', 834001, 2, 1),
(270, 'Ranchi Aerodrome', 834002, 2, 1),
(271, 'Hinoo Ho.', 834002, 2, 1),
(272, 'Hinoo Ho.', 834002, 2, 1),
(273, 'Hinoo Ho.', 834002, 2, 1),
(274, 'Hinoo Ho.', 834002, 2, 1),
(275, 'Hinoo Ho.', 834002, 2, 1),
(276, 'Hinoo Ho.', 834002, 2, 1),
(277, 'Hatia', 834003, 2, 1),
(278, 'Dhurwa', 834004, 2, 1),
(279, 'Dhurwa', 834004, 2, 1),
(280, 'Dhurwa', 834004, 2, 1),
(281, 'Dhurwa', 834004, 2, 1),
(282, 'Dhurwa', 834004, 2, 1),
(283, 'Dhurwa', 834004, 2, 1),
(284, 'Dhurwa', 834004, 2, 1),
(285, 'Hehal', 834005, 2, 1),
(286, 'Ranchi Agri College', 834006, 2, 1),
(287, 'Ranchi Veterinary College', 834007, 2, 1),
(288, 'Ranchi Veternary College', 834007, 2, 1),
(289, 'Ranchi Medical College C', 834008, 2, 1),
(290, 'Ranchi University', 834008, 2, 1),
(291, 'Ranchi University', 834008, 2, 1),
(292, 'Ranchi University', 834008, 2, 1),
(293, 'Ranchi Medical College', 834009, 2, 1),
(294, 'Ranchi Medical College', 834009, 2, 1),
(295, 'Namkum', 834010, 2, 1),
(296, 'Hatia Railway Colony', 834011, 2, 1),
(297, 'Harmu Housing Colony', 834012, 2, 1),
(298, 'Chotamuri', 835101, 2, 1),
(299, 'Silli', 835102, 2, 1),
(300, 'Silli', 835102, 2, 1),
(301, 'Silli', 835102, 2, 1),
(302, 'Silli', 835102, 2, 1),
(303, 'Silli', 835102, 2, 1),
(304, 'Tatisilwai', 835103, 2, 1),
(305, 'Bero', 835202, 2, 1),
(306, 'Brambe', 835205, 2, 1),
(307, 'Chainpur', 835206, 2, 1),
(308, 'Chainpur', 835206, 2, 1),
(309, 'Karra', 835209, 2, 1),
(310, 'Karra', 835209, 2, 1),
(311, 'Mandar', 835214, 2, 1),
(312, 'Mesra', 835215, 2, 1),
(313, 'Murhu', 835216, 2, 1),
(314, 'Neoria Vikas Vidyalaya', 835217, 2, 1),
(315, 'Ormanjhi', 835219, 2, 1),
(316, 'Ratu', 835222, 2, 1),
(317, 'Tamar', 835225, 2, 1),
(318, 'Torpa', 835227, 2, 1),
(319, 'Gobindpur Ranchi', 835234, 2, 1),
(320, 'Irba', 835235, 2, 1),
(321, 'Sikidiri', 835236, 2, 1),
(322, 'Irba', 835238, 2, 1),
(323, 'Chanho', 835239, 2, 1),
(324, 'Boreya', 835240, 2, 1),
(325, 'Lapung', 835244, 2, 1),
(326, 'Itki', 835301, 2, 1),
(327, 'Piskangri', 835303, 2, 1),
(328, 'Bhandra', 835306, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `sub_categories_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `best_seller` int(11) NOT NULL,
  `meta_title` varchar(2000) NOT NULL,
  `meta_desc` varchar(2000) NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL,
  `added_by` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `modal_glb` varchar(200) NOT NULL,
  `modal_usdz` varchar(200) NOT NULL,
  `modal_png` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categories_id`, `sub_categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `best_seller`, `meta_title`, `meta_desc`, `meta_keyword`, `added_by`, `status`, `modal_glb`, `modal_usdz`, `modal_png`) VALUES
(32, 6, 5, 'Walnut Cake Half Kg', 490, 450, 4, '269334604_walnut.JPG', 'Cake Flavour- Chocolate', '1. Cake Flavour- Chocolate<br>\r\n    2. Type of Cake- Cream<br>\r\n    3. Weight- Half Kg<br>\r\n    4. Shape- Round<br>\r\n    5. Serves- 4-6 People<br>\r\n    6. Size- 6 inches in Diameter<br>\r\n\r\n    Every cake we offer is handcrafted and since each chef has his/her own way of baking and designing a cake, there might be slight variation in the product in terms of design and shape.\r\n    The chosen delivery time is an estimate and depends on the availability of the product and the destination to which you want the product to be delivered.\r\n    Since cakes are perishable in nature, we attempt delivery of your order only once. The delivery cannot be redirected to any other address.\r\n    This product is hand delivered and will not be delivered along with courier products.\r\n    Occasionally, substitutions of flavours/designs is necessary due to temporary and/or regional unavailability issues.', 1, 'Cake Flavour- Chocolate', 'Cake Flavour- Chocolate', 'Cake Flavour- Chocolate', 1, 1, 'modal_glb/32Chocolate-cake.glb', 'modal_usdz/32Chocolate-cake.usdz', 'modal_img/32Chocolate.png'),
(33, 8, 0, 'Truffle Walnut Cake Half Kg', 799, 699, 10, '405545330_festive-dessert-birthday-valentine-dayred-velvet-cake-with-fireworks_114579-1399.jpg', 'Cake Flavour- Truffle Walnut', 'Type of Cake- Cream CakeWeight- Half KgShape- RoundServes- 4-6 PeopleSize- 6 Inches in Diameter\r\n    The cake stand, cutlery & accessories used in the image are only for representation purposes. They are not delivered with the cake.\r\n    This cake is hand delivered in a good quality cardboard box.\r\n    Country of Origin: India', 0, 'Cake Flavour- Truffle Walnut', 'Cake Flavour- Truffle Walnut', 'Cake Flavour- Truffle Walnut', 1, 1, '', '0', '0'),
(34, 7, 8, 'Strawberry Love Cake', 999, 899, 8, '940911582_103dfe4467804f1faae3447057811342.jpg', 'Best Of Akhil  Akhil Jukebox or Mashup', 'Best Of Akhil  Akhil Jukebox or Mashup Latest  Akhil  Songs Akhil Best Top 10 Songs Collections', 1, 'Best Of Akhil  Akhil Jukebox or Mashup Latest  Akhil  Songs  Akhil Best Top 10 Songs Collections', 'Best Of Akhil  Akhil Jukebox or Mashup Latest  Akhil  Songs  Akhil Best Top 10 Songs Collections', 'Best Of Akhil  Akhil Jukebox or Mashup Latest  Akhil  Songs Akhil Best Top 10 Songs Collections', 1, 1, 'modal_glb/34Cake-1.glb', 'modal_usdz/34Cake-1.usdz', 'modal_img/34Cake-1.png'),
(35, 6, 14, 'Caramel Fudge Cake Half Kg', 1099, 989, 50, '217471630_new1.JPG', 'Cake Flavour- Caramel', 'Product Details:\r\n1. Cake Flavour- Caramel<br>\r\n2. Type of Cake- Cream Cake<br>\r\n3. Weight- Half Kg<br>\r\n4. Shape- Round<br>\r\n5. Serves- 4-6 People<br>\r\n6. Size- 6 Inches in Diameter<br>\r\n<br><br>\r\n<strong>Delivery Information:</strong><br>\r\nEvery cake we offer is handcrafted and since each chef has his/her own way of baking and designing a cake, there might be slight variation in the product in terms of design and shape.<br>\r\n since cakes are perishable in nature, we attempt delivery of your order only once. The delivery cannot be redirected to any other address.<br><br>\r\n This product is hand-delivered and will not be delivered along with courier products.\r\nOccasionally, substitutions of flavours/designs is necessary due to temporary and/or regional unavailability issues.', 1, 'Cake Flavour- Caramel', 'The chosen delivery time is an estimate and depends on the availability of the product and the destination to which you want the product to be delivered', 'Chocolate Cake', 1, 1, 'modal_glb/35Cake-1.glb', 'modal_usdz/35Cake-1.usdz', 'modal_img/35Cake-1.png'),
(36, 12, 15, 'Adorable Kid\'s - Chocolate 1 Kg', 1299, 1089, 30, '954862090_kid.JPG', 'The cake stand, cutlery & accessories', '<strong>Product Details:</strong><br>\r\nCake Flavour- Chocolate\r\nType of Cake- Cream\r\nWeight- 1 Kg\r\nShape- Designer (As per the image shown)\r\nServes- 10-12 People\r\nSize- 9 inches in Diameter\r\n<br><br>\r\n\r\n<strong>Delivery Information</strong>\r\nEvery cake we offer is handcrafted and since each chef has his/her own way of baking and designing a cake, there might be slight variation in the product in terms of design and shape.\r\nThe chosen delivery time is an estimate and depends on the availability of the product and the destination to which you want the product to be delivered.<br>\r\nThis product is hand-delivered and will not be delivered along with courier products.\r\nOccasionally, substitutions of flavours/designs is necessary due to temporary and/or regional unavailability issues.', 1, 'This product is hand delivered and will not be delivered along with courier products', 'This product is hand delivered and will not be delivered along with courier products', 'product', 1, 1, 'modal_glb/36Chocolate-cake.glb', 'modal_usdz/36Chocolate-cake.usdz', 'modal_img/36Chocolate.png'),
(37, 9, 0, 'Dating Cake - Chocolate 1 Kg', 1500, 1499, 45, '574167160_nn.JPG', 'Shape- Designer', '<strong>Product Details:</strong><br>\r\nCake Flavour- Chocolate\r\nType of Cake- Cream\r\nWeight- 1 Kg\r\nShape- Designer (As per the image shown)\r\nServes- 10-12 People\r\nSize- 9 inches in Diameter\r\n<br><br>\r\n\r\n<strong>Delivery Information</strong>\r\nEvery cake we offer is handcrafted and since each chef has his/her own way of baking and designing a cake, there might be slight variation in the product in terms of design and shape.\r\nThe chosen delivery time is an estimate and depends on the availability of the product and the destination to which you want the product to be delivered.<br>\r\nThis product is hand-delivered and will not be delivered along with courier products.\r\nOccasionally, substitutions of flavours/designs is necessary due to temporary and/or regional unavailability issues.', 0, 'Adorable Kid\'s - Chocolate 1 Kg', 'Adorable Kid\'s - Chocolate 1 Kg', 'Adorable Kid\'s - Chocolate 1 Kg', 1, 1, 'modal_glb/3732Chocolate-cake.glb', 'modal_usdz/3736Chocolate-cake.usdz', 'modal_img/3732Chocolate.png'),
(41, 8, 0, 'Strawberry Love Cake New', 899, 850, 45, '667853502_1986111.jpg', 'Special For Love One', 'An association of human assets and inventive minds. Merge of skills and passion is our mantra.\\r\\nCOLLABORATION EQUALS INNOVATION!', 1, 'An association of human assets and inventive minds. Merge of skills and passion is our mantra.\\r\\nCOLLABORATION EQUALS INNOVATION!', 'An association of human assets and inventive minds. Merge of skills and passion is our mantra.\\r\\nCOLLABORATION EQUALS INNOVATION!', 'An association of human assets and inventive minds. Merge of skills and passion is our mantra.\\r\\nCOLLABORATION EQUALS INNOVATION!', 1, 1, '', '', ''),
(42, 13, 16, 'Best Dad cake', 1000, 400, 23, '358895005_imagesd.jpg', 'Small cake For Best Dad', 'An association of human assets and inventive minds. Merge of skills and passion is our mantra.\\r\\nCOLLABORATION EQUALS INNOVATION!', 1, 'An association of human assets and inventive minds. Merge of skills and passion is our mantra.\\r\\nCOLLABORATION EQUALS INNOVATION!', 'An association of human assets and inventive minds. Merge of skills and passion is our mantra.\\r\\nCOLLABORATION EQUALS INNOVATION!', 'An association of human assets and inventive minds. Merge of skills and passion is our mantra.\\r\\nCOLLABORATION EQUALS INNOVATION!', 1, 1, '', '', ''),
(43, 10, 12, 'Be Mine', 1599, 1200, 22, '139952896_5-jan-valentine-cakes-designs.jpg', 'For Your Valentine', 'An association of human assets and inventive minds. Merge of skills and passion is our mantra.', 1, 'An association of human assets and inventive minds. Merge of skills and passion is our mantra.', 'An association of human assets and inventive minds. Merge of skills and passion is our mantra.', 'An association of human assets and inventive minds. Merge of skills and passion is our mantra.', 2, 1, '', '', ''),
(44, 10, 13, 'Boyfriend Cake', 799, 699, 21, '299370706_516-201904241251317301740015.jpg', 'Boy Friend Stuff', 'Entrepreneur\'s Abode of Alliance!\r\n\r\nAn association of human assets and inventive minds. Merge of skills and passion is our mantra.\r\nCOLLABORATION EQUALS INNOVATION!', 0, 'Entrepreneur\'s Abode of Alliance!\r\n\r\nAn association of human assets and inventive minds. Merge of skills and passion is our mantra.\r\nCOLLABORATION EQUALS INNOVATION!', 'Entrepreneur\'s Abode of Alliance!\r\n\r\nAn association of human assets and inventive minds. Merge of skills and passion is our mantra.\r\nCOLLABORATION EQUALS INNOVATION!', 'Entrepreneur\'s Abode of Alliance!\r\n\r\nAn association of human assets and inventive minds. Merge of skills and passion is our mantra.\r\nCOLLABORATION EQUALS INNOVATION!', 2, 1, '', '', ''),
(45, 12, 15, 'Kid Special Cake', 490, 322, 22, '640659450_vanilla-buttercream-cake-feature-1-720x720.jpg', 'For your kids', 'Entrepreneur\'s Abode of Alliance!\r\n\r\nAn association of human assets and inventive minds. Merge of skills and passion is our mantra.\r\nCOLLABORATION EQUALS INNOVATION!', 0, 'Entrepreneur\'s Abode of Alliance!\r\n\r\nAn association of human assets and inventive minds. Merge of skills and passion is our mantra.\r\nCOLLABORATION EQUALS INNOVATION!', 'Entrepreneur\'s Abode of Alliance!\r\n\r\nAn association of human assets and inventive minds. Merge of skills and passion is our mantra.\r\nCOLLABORATION EQUALS INNOVATION!', 'Entrepreneur\'s Abode of Alliance!\r\n\r\nAn association of human assets and inventive minds. Merge of skills and passion is our mantra.\r\nCOLLABORATION EQUALS INNOVATION!', 2, 1, '', '', ''),
(46, 7, 11, 'RED VELVET CAKE', 500, 350, 10, '575626326_65b135d597e0545be709a2dc6045e668.jpg', 'Loving Cakes', 'This is a one of the best red velvet cake.', 1, 'Red Velvet', 'This is a one of the best red velvet cake.', 'Red velvet, loving cake, red cake,', 1, 1, '', '', ''),
(47, 13, 16, 'Cake for Father', 1299, 1210, 10, '220871452_images.jpg', 'Cake for your loving dad', 'Our website is under construction. We`ll be here soon\r\nwith our new awesome site.', 0, 'Our website is under construction. We`ll be here soon\r\nwith our new awesome site.', 'Our website is under construction. We`ll be here soon\r\nwith our new awesome site.', 'Our website is under construction. We`ll be here soon\r\nwith our new awesome site.', 2, 1, 'modal_glb/4735Cake-1.glb', 'modal_usdz/4735Cake-1.usdz', 'modal_img/4735Cake-1.png'),
(48, 7, 9, 'Bidthday Special 2', 1299, 1234, 10, '387664656_15799450012-350x350.jpg', 'Hello Team,\r\n\r\nWe have recently created a workspace on Slack. Kindly use your professional email provided by flevAR.in to login to slack.\r\n\r\nWe have already sent you an invite but, in case you didn\'t receive any mail. You can use this link:', 'Hello Team,\r\n\r\nWe have recently created a workspace on Slack. Kindly use your professional email provided by flevAR.in to login to slack.\r\n\r\nWe have already sent you an invite but, in case you didn\'t receive any mail. You can use this link:', 0, 'Hello Team,\r\n\r\nWe have recently created a workspace on Slack. Kindly use your professional email provided by flevAR.in to login to slack.\r\n\r\nWe have already sent you an invite but, in case you didn\'t receive any mail. You can use this link:', 'Hello Team,\r\n\r\nWe have recently created a workspace on Slack. Kindly use your professional email provided by flevAR.in to login to slack.\r\n\r\nWe have already sent you an invite but, in case you didn\'t receive any mail. You can use this link:', 'Hello Team,\r\n\r\nWe have recently created a workspace on Slack. Kindly use your professional email provided by flevAR.in to login to slack.\r\n\r\nWe have already sent you an invite but, in case you didn\'t receive any mail. You can use this link:', 1, 1, 'modal_glb/481628685859_cake.glb', 'modal_usdz/481628685859_cake.usdz', 'modal_img/4832Chocolate.png');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_images` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `product_images`) VALUES
(1, 8, '479197953_526258680_Floral-Print-Polo-T-shirt1.jpg'),
(2, 8, '301120849_309027777_Floral-Print-Polo-T-shirt.jpg'),
(22, 19, '338374108_pack8.png'),
(23, 19, '968511635_pack5.png'),
(29, 5, '137752262_post.png'),
(30, 5, '772200440_pk.jpeg'),
(31, 29, '414778251_pack4.png'),
(32, 29, '825935721_pack5.png'),
(33, 29, '151091814_Pack2.png'),
(35, 30, '990787791_images.jpg'),
(36, 31, '932786540_pack4.png'),
(37, 31, '943660998_pack5.png'),
(38, 32, '267829543_15799450012-350x350.jpg'),
(39, 32, '600483867_15799450012-350x350.jpg'),
(40, 33, '507474308_happy-valentine_s-day-photo-cake.jpg'),
(41, 33, '659314256_cake1.jpg'),
(42, 34, '368355855_16025847532-350x350.jpg'),
(43, 34, '177469966_happy-valentine_s-day-photo-cake.jpg'),
(44, 35, '348417677_new2.JPG'),
(45, 35, '362169875_new3.JPG'),
(46, 36, '879852711_kid2.JPG'),
(47, 36, '133007776_kid3.JPG'),
(48, 37, '255765357_nn2.JPG'),
(49, 37, '656674984_Capturefdf.JPG'),
(50, 41, '700272652_14 (2).jpg'),
(51, 41, '292493527_14 (3).jpg'),
(52, 43, '287857576_14 (3).jpg'),
(53, 43, '645390069_14 (2).jpg'),
(54, 44, '648981312_product-500x500.jpeg'),
(55, 44, '234004242_65b135d597e0545be709a2dc6045e668.jpg'),
(56, 45, '647310874_dccm-900x900.jpg'),
(57, 45, '762193114_images.jpg'),
(58, 46, '175243652_14 (3).jpeg'),
(59, 46, '436164741_14 (2).jpeg'),
(60, 47, '757003248_1 (1).jpg'),
(61, 47, '807007501_1 (2).jpg'),
(65, 48, '438206933_35 (2).jpg'),
(66, 48, '683198567_kid.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `product_location_mapping`
--

CREATE TABLE `product_location_mapping` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_location_mapping`
--

INSERT INTO `product_location_mapping` (`id`, `product_id`, `city_id`) VALUES
(9, 48, 3),
(12, 43, 1),
(13, 43, 2),
(14, 43, 3),
(17, 42, 3),
(20, 32, 3),
(21, 47, 3),
(22, 44, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_review`
--

CREATE TABLE `product_review` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` varchar(20) NOT NULL,
  `review` text NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_review`
--

INSERT INTO `product_review` (`id`, `product_id`, `user_id`, `rating`, `review`, `status`, `added_on`) VALUES
(2, 9, 1, 'Good', 'asAS', 0, '2021-05-05 08:31:39'),
(8, 8, 1, 'Fantastic', 'Like it', 1, '2021-06-27 02:33:50'),
(9, 8, 1, 'Good', 'Not Bad', 1, '2021-06-27 02:34:04'),
(10, 8, 1, 'Bad', 'adasdasd', 1, '2021-06-27 04:04:11'),
(11, 8, 1, 'Bad', 'New comment 44', 1, '2021-06-27 04:04:31'),
(12, 8, 1, 'Very Good', 'Nice content', 1, '2021-06-27 04:10:33'),
(13, 3, 1, 'Fantastic', 'Nice Product worth buying...', 1, '2021-06-27 06:02:28'),
(14, 8, 1, 'Worst', 'Recently Viewed', 1, '2021-06-29 05:51:08'),
(15, 31, 1, 'Very Good', 'I loved it.', 1, '2021-06-29 06:09:54'),
(16, 31, 1, 'Worst', 'bad product', 1, '2021-06-29 09:37:28'),
(17, 33, 1, 'Very Good', 'I like this product', 1, '2021-06-29 05:19:36'),
(18, 32, 1, 'Fantastic', 'I love it... Worth buying.', 1, '2021-07-05 04:22:58'),
(19, 34, 1, 'Fantastic', 'Worth buying 🙂.', 1, '2021-07-23 06:32:37'),
(20, 37, 1, 'Fantastic', 'Worth buying :)', 1, '2021-08-01 12:00:46');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(100) NOT NULL,
  `serv_head` varchar(200) NOT NULL,
  `serv_link` varchar(200) NOT NULL,
  `serv_vac` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shiprocket_token`
--

CREATE TABLE `shiprocket_token` (
  `id` int(11) NOT NULL,
  `token` varchar(500) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shiprocket_token`
--

INSERT INTO `shiprocket_token` (`id`, `token`, `added_on`) VALUES
(1, '', '2019-04-09 00:28:23');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `sub_categories` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `categories_id`, `sub_categories`, `status`) VALUES
(1, 2, 'T-Shirt', 1),
(2, 2, 'Trouser', 1),
(3, 4, 'Shirt', 1),
(4, 5, 'Sub-chocolate', 1),
(5, 6, 'Chocolate', 1),
(6, 6, 'vanilla', 1),
(7, 6, 'strawberry', 1),
(8, 7, 'Girlfriend', 1),
(9, 7, 'boyfriend', 1),
(10, 7, 'wife', 1),
(11, 7, 'friend', 1),
(12, 10, 'Girlfriend', 1),
(13, 10, 'boyfriend', 1),
(14, 6, 'Vegetarian', 1),
(15, 12, 'Kid Special', 1),
(16, 13, 'Fathers Day', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `email_verified` int(11) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `mobile_verified` int(11) NOT NULL,
  `added_on` datetime NOT NULL,
  `update_city` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `email_verified`, `mobile`, `mobile_verified`, `added_on`, `update_city`) VALUES
(4, 'Prashant Kumar', '73f95ee473881dea4afd89c06165fa66', 'flev.ar2021@gmail.com', 0, '9612096182', 0, '2020-05-13 00:00:00', 0),
(6, 'Demo User', 'f74c334492e852c2748fcd6483e6c6ba ', 'demo@demo.com ', 1, '9612096180', 1, '2020-10-08 00:00:00', 0),
(19, 'Sushant', '0eb635a109be482d973ed1c4a5fbb77a', 'sushantkumarkohima@gmail.com', 0, ' ', 0, '2021-07-20 08:21:37', 0),
(20, 'M  Shreyaskumar Sharma', '102ec2fc2da7d10487e2ac4014250757', 'shreyaskumar24gem@gmail.com', 0, ' ', 0, '2021-07-21 07:20:23', 0),
(21, 'Parth', '25f9e794323b453885f5181f1b624d0b', 'parth12ashtikar@gmail.com', 0, ' ', 0, '2021-07-21 07:36:38', 0),
(22, 'komal', '10166b98ae62d8ca2e260733dade71b5', 'komalgolii@gmail.com', 0, ' ', 0, '2021-07-21 07:36:47', 0),
(23, 'Aakriti', 'de4f141e946925bfe08b2c0f2dba88e5', 'dollsharma29oct@gmail.com', 0, ' ', 0, '2021-07-21 07:43:26', 0),
(24, 'sushant', '8774d4b1e633f9522288ab7138d1f45e', 'Sushantkumar4867@gmail.com', 0, ' ', 0, '2021-07-21 09:13:23', 0),
(26, 'Aditya', 'ae5656d15e740e2db86f3c239b506cca', 'adi.mohan1999@gmail.com', 0, '9304166649', 0, '2021-07-22 07:47:48', 0),
(28, 'Royal Chaudhary', '5d6a7555a07c234e2fede9acfc98fe66', 'roychaudhary1999@icloud.com', 0, '9536565343', 0, '2021-07-31 04:35:16', 0),
(29, 'Rohan Kundu', '21232f297a57a5a743894a0e4a801fc3', '1941012029.e.rohankundu@gmail.com', 0, '7991172410', 0, '2021-08-09 08:15:54', 0),
(30, 'Developer Account', '7dd6c75750780d352831abc222bffc96', 'prashant@flevar.in', 0, '7005090682', 0, '2021-08-09 11:18:57', 0),
(31, 'FlevAR Support', '7a8489429cff6d2bc3ac91ca8ac09ad0', 'support@flevar.in', 0, '1234567980', 0, '2021-08-10 04:59:26', 0),
(32, 'test', '25f9e794323b453885f5181f1b624d0b', 'bijzay37@gmail.com', 0, '918918445778', 0, '2021-08-15 01:31:39', 0),
(34, 'Amit', 'f74c334492e852c2748fcd6483e6c6ba', 'amitaich382@gmail.com', 1, '8340573054', 0, '2021-08-23 10:50:04', 0),
(37, 'Vishal Kumar', 'f74c334492e852c2748fcd6483e6c6ba', 'vishalagarwal1814@gmail.com', 1, '9006368430', 1, '2021-08-30 07:18:07', 0),
(38, 'Aharnish Atul', 'fdab0a4280b21655c5d5147df1e5cd4f', 'Vickyatul10@gmail.com', 1, '7050876113', 1, '2021-08-30 05:47:13', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `product_id`, `added_on`) VALUES
(41, 25, 37, '2021-07-21 09:10:47'),
(45, 29, 41, '2021-08-09 09:21:15'),
(46, 30, 41, '2021-08-11 09:00:13'),
(50, 6, 48, '2021-08-31 04:27:03'),
(51, 6, 43, '2021-09-01 02:21:50'),
(52, 6, 44, '2021-09-04 05:33:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_master`
--
ALTER TABLE `coupon_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pincode`
--
ALTER TABLE `pincode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_location_mapping`
--
ALTER TABLE `product_location_mapping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_review`
--
ALTER TABLE `product_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shiprocket_token`
--
ALTER TABLE `shiprocket_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `coupon_master`
--
ALTER TABLE `coupon_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pincode`
--
ALTER TABLE `pincode`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=329;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `product_location_mapping`
--
ALTER TABLE `product_location_mapping`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product_review`
--
ALTER TABLE `product_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shiprocket_token`
--
ALTER TABLE `shiprocket_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
