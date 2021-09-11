-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2021 at 06:02 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food-delivery`
--

-- --------------------------------------------------------

--
-- Table structure for table `addon`
--

CREATE TABLE `addon` (
  `id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `price` varchar(250) DEFAULT NULL,
  `s_data` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addon`
--

INSERT INTO `addon` (`id`, `store_id`, `name`, `price`, `s_data`, `created_at`, `updated_at`) VALUES
(1, 1, 'fries', '10', 'a:1:{i:5;N;}', '2020-08-31 10:03:14', '2020-08-31 10:06:29'),
(2, 1, 'coke', '20', 'a:1:{i:5;N;}', '2020-08-31 10:06:13', '2020-08-31 10:06:13'),
(4, 1, 'demo', '20', 'a:1:{i:5;N;}', '2020-08-31 10:10:00', '2020-08-31 10:10:00'),
(5, 2, 'taj add on', '40', 'a:1:{i:5;N;}', '2020-08-31 10:39:19', '2020-08-31 10:39:19');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `username` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `remember_token` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `shw_password` varchar(250) DEFAULT NULL,
  `perm` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `logo` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `fb` varchar(2500) DEFAULT NULL,
  `insta` varchar(2500) DEFAULT NULL,
  `twitter` varchar(2500) DEFAULT NULL,
  `youtube` varchar(2500) DEFAULT NULL,
  `sms_api` varchar(2500) DEFAULT NULL,
  `currency` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `store_type` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `paypal_client_id` varchar(250) DEFAULT NULL,
  `s_data` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `stripe_api_id` varchar(250) DEFAULT NULL,
  `stripe_client_id` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `username`, `password`, `remember_token`, `shw_password`, `perm`, `status`, `logo`, `fb`, `insta`, `twitter`, `youtube`, `sms_api`, `currency`, `store_type`, `paypal_client_id`, `s_data`, `stripe_api_id`, `stripe_client_id`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'saharanpunit@gmail.com', 'admin', '$2y$10$lDrNlab/0AxFzvXvcaqJ0.rme1cixxASz6pBsIRebFeUqyv/65122', 'ywH3L60u9r9BWdsvK6RQpdwcfBR2jubYZFJwuWVSTs2LUCo5XzXjohTeRiQb', NULL, 'ALL', 0, '1556735028236.png', 'FB', 'INSTA', 'ss', 'yy', NULL, '₹', 'Veg Only, Veg & Nonveg,Chinese Cousin,Sweet Shop,Ice Cream Parlor', 'AYIJrVsqZstVA06Q3_uoXpeXJ1XOnGfAmMkQ_njBpUmh8nHAuSr23TNzLrbkuzmaFX9Z5HrZlPmByy52', 'a:1:{i:5;s:130:\"الخضار فقط ، الخضار و Nonveg ، ابن عم الصينية ، متجر الحلو ، آيس كريم بارلور\";}', 'sk_test_zBEwnzJu7ESLQpfeHQJvTCAF00ELCjEvmc', 'pk_test_fLJjtfQhQoTwRPBjDmWjhsxw004EAIs6uo', '2019-03-27 14:47:27', '2020-02-02 13:14:03'),
(2, 'subadmin', NULL, 'subadmin1', '$2y$10$yS4sS0IGKXLifHj9LcSh0.gWNjJF/5LHxfxusQVw4NE0EkrHIL5za', NULL, 'subadmin', 'Settings,App Text,Manage Restaurants,Delivery Boys,Manage Orders,Reporting', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-22 00:48:20', '2020-09-16 10:53:02'),
(3, 'test', NULL, 'test123', '$2y$10$uuAwuhBN45sk63NgftKQf.aAUv1wCzxF5NukjsyXdMcEozQfR4swa', NULL, 'test123', 'Manage Restaurants', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-26 16:36:48', '2020-09-26 16:36:48');

-- --------------------------------------------------------

--
-- Table structure for table `app_user`
--

CREATE TABLE `app_user` (
  `id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `otp` varchar(250) DEFAULT NULL,
  `isPenalty` int(10) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_user`
--

INSERT INTO `app_user` (`id`, `name`, `email`, `password`, `phone`, `otp`, `isPenalty`, `created_at`, `updated_at`) VALUES
(1, 'Afsar', 'afsarkhan10182@gmail.com', '12345', '9123132300', NULL, 0, '2020-07-24 03:41:55', '2020-10-22 22:43:37'),
(2, 'TEST', NULL, '123456', '34523452345234', NULL, 0, '2020-08-22 00:02:55', '2020-08-22 00:02:55'),
(3, '3dgdfg', NULL, '123456', '43534', NULL, 0, '2020-09-23 23:15:38', '2020-09-23 23:15:38'),
(4, 'er', NULL, '123456', 're', NULL, 0, '2020-09-23 23:18:17', '2020-09-23 23:18:17'),
(5, 'erasd', NULL, '123456', 'reasd', NULL, 0, '2020-09-23 23:27:22', '2020-09-23 23:27:22'),
(6, 'wer', 'test@gmail.com', '123456', 'we', NULL, 0, '2020-09-23 23:46:25', '2020-10-09 15:58:37'),
(7, 'wer', NULL, '123456', '32', NULL, 0, '2020-09-23 23:48:57', '2020-09-23 23:48:57'),
(8, 'adsfasdf', NULL, '123456', '12341234', NULL, 0, '2020-09-24 09:49:16', '2020-09-24 09:49:16'),
(9, 'testing 24th sept', NULL, '123456', '908987776', NULL, 0, '2020-09-24 14:24:53', '2020-09-24 14:24:53'),
(10, '3', NULL, '123456', '3', NULL, 0, '2020-09-24 14:43:45', '2020-09-24 14:43:45'),
(11, 'wss', NULL, '123456', '222', NULL, 0, '2020-09-24 15:26:07', '2020-09-24 15:26:07'),
(12, 'll', NULL, '123456', '0000', NULL, 0, '2020-09-24 15:27:24', '2020-09-24 15:27:24'),
(13, 'asskjasdjkasdn', NULL, '123456', '03230`', NULL, 0, '2020-09-24 15:28:06', '2020-09-24 15:28:06'),
(14, 'sef', NULL, '123456', '34234', NULL, 0, '2020-09-25 02:42:25', '2020-09-25 02:42:25'),
(15, '23', NULL, '123456', '3234', NULL, 0, '2020-10-08 09:50:27', '2020-10-08 09:50:27'),
(16, 'aerawerq', 'sdfsdf@ds.com', '3333', '234234', NULL, 0, '2020-10-11 12:30:25', '2020-10-11 12:31:56');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `img` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `design_type` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `banner_store`
--

CREATE TABLE `banner_store` (
  `id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `cart_no` varchar(250) DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `price` varchar(250) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `qty_type` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `cart_no`, `store_id`, `item_id`, `price`, `qty`, `qty_type`, `created_at`, `updated_at`) VALUES
(17, '1939925248', 2, 3, '10', 1, 0, '2020-08-31 11:11:38', '2020-08-31 11:11:38');

-- --------------------------------------------------------

--
-- Table structure for table `cart_addon`
--

CREATE TABLE `cart_addon` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `addon_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart_addon`
--

INSERT INTO `cart_addon` (`id`, `cart_id`, `item_id`, `addon_id`, `qty`, `created_at`, `updated_at`) VALUES
(1, 46, 1, 1, 1, '2020-09-15 10:41:37', '2020-09-15 10:41:37');

-- --------------------------------------------------------

--
-- Table structure for table `cart_coupen`
--

CREATE TABLE `cart_coupen` (
  `id` int(11) NOT NULL,
  `cart_no` varchar(250) DEFAULT NULL,
  `code` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `amount` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `sort_no` int(11) DEFAULT 0,
  `s_data` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `store_id`, `name`, `status`, `sort_no`, `s_data`, `created_at`, `updated_at`) VALUES
(1, 1, 'Starter', 0, 1, 'a:1:{i:5;N;}', '2020-08-08 10:27:00', '2020-08-08 10:27:00'),
(3, 2, 'gravy', 0, 1, 'a:1:{i:5;N;}', '2020-08-11 18:07:46', '2020-08-31 10:34:12'),
(4, 2, 'pastaaaa', 0, 3, 'a:1:{i:5;N;}', '2020-08-22 00:06:44', '2020-08-31 10:36:57'),
(5, 2, 'cat3', 0, 2, 'a:1:{i:5;N;}', '2020-08-31 10:36:43', '2020-08-31 11:07:59'),
(6, 2, 'cat2', 0, 4, 'a:1:{i:5;N;}', '2020-08-31 11:04:37', '2020-08-31 11:05:43');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `s_data` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name`, `status`, `s_data`, `created_at`, `updated_at`) VALUES
(1, 'Pune', 0, 'a:1:{i:5;N;}', '2020-07-24 03:20:35', '2020-07-24 03:20:35'),
(2, 'test', 0, 'a:1:{i:5;N;}', '2020-08-18 01:54:10', '2020-08-18 01:54:10');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boys`
--

CREATE TABLE `delivery_boys` (
  `id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `shw_password` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `start_time` varchar(6) DEFAULT NULL,
  `end_time` varchar(6) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `lat` varchar(200) DEFAULT NULL,
  `lng` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_boys`
--

INSERT INTO `delivery_boys` (`id`, `store_id`, `name`, `phone`, `password`, `shw_password`, `address`, `start_time`, `end_time`, `status`, `lat`, `lng`, `created_at`, `updated_at`) VALUES
(1, 0, 'test delivery person', '9898989810', '$2y$10$Bdc0Hu.hVzKnKjNBIu6OHOWYlbjC7DqrjubAkNbYJakmassY8mIBC', 'delivery', NULL, NULL, NULL, 0, NULL, NULL, '2020-08-08 10:56:53', '2020-08-08 23:38:50'),
(2, 0, 'second', '23123123', '$2y$10$XHiF1r3SC3BhDzQAb5qo3.4AfmjuN1l0yiDE8uLKo/EQKM/0KfJ2K', 'test', NULL, NULL, NULL, 1, NULL, NULL, '2020-08-21 01:20:40', '2020-08-22 00:56:43'),
(4, 0, 'restau delivery', '9888888888', '$2y$10$boaI8TZs5eF1dOScVsC.6O9Jt0K2E0Ta0BsfqLMiHlPsvoJl8NYiW', 'test', NULL, NULL, NULL, 0, NULL, NULL, '2020-09-05 01:38:58', '2020-09-05 01:38:58'),
(5, 0, 'asd', '3234', '$2y$10$5a/CK5R4Hb3SpMIcNskmVOBLg2PxbNXRi6S6pmf1bAbNa94iwv1NK', 'asdasd', NULL, NULL, NULL, 0, NULL, NULL, '2020-09-05 01:46:57', '2020-09-05 01:46:57'),
(6, 2, 'alhamdulillah delivery', '9999', '$2y$10$ojgIouHMF.jKXtc6O3UOBOeiJCQ6fI1dFqZTYdpu/kx/bFyEROLNa', 'sdfasdfas', NULL, NULL, NULL, 1, NULL, NULL, '2020-09-05 10:56:30', '2020-09-24 17:31:54'),
(8, 0, '234234', '234234', '$2y$10$pJpLYbeofKotYJU.2HfBDO7Yp69/kMwMipVxA9YGxCSPj8GEMjkF.', 'asdasd', NULL, NULL, NULL, 0, NULL, NULL, '2020-09-05 10:58:20', '2020-09-05 10:58:20'),
(11, 2, 'asdasdasd testtttt', '213123', '$2y$10$unmZBGE9KBPeoimSPaxGoeYclCjxg0MiUBZ4yoq1P/hjiVpq2C3Jy', '213', NULL, NULL, NULL, 1, NULL, NULL, '2020-09-23 23:00:59', '2020-09-23 23:09:42'),
(12, 2, 'erwerwerwer', '3233223', '$2y$10$SrhHKrBp1E3hpPvT0.MwquJV/zhADYz1EMeEMvmmcaDB5KVtr22sK', 'google123', NULL, NULL, NULL, 0, NULL, NULL, '2020-09-23 23:12:18', '2020-09-23 23:12:18'),
(13, 2, 'tttttttttttttttttttttt', '423', '$2y$10$.Bmx09VRghDpqzPRiAppiusFf4MhULFjoAW83e1i6AX0KeVTqXKqu', 'google123', NULL, NULL, NULL, 0, NULL, NULL, '2020-09-23 23:13:11', '2020-09-23 23:13:11'),
(14, 2, 'popopo', '21', '$2y$10$VIDZHJMWZE3ZX0pyxZ3T0OZS9HJhNBBoFHUwb9gnEEfwXdEvhVcPG', 'google123', NULL, NULL, NULL, 1, NULL, NULL, '2020-09-23 23:14:40', '2020-09-23 23:14:40'),
(15, 1, 'boy1', '12345', '$2y$10$NsZVyjCz4dIJWAw0/rYfXu8WWiI3Uf0dJdrjhQ1C.0W2X0op4sPNK', 'test', 'testsetsetset', '21:40', '22:00', 0, NULL, NULL, '2020-09-25 11:46:48', '2020-10-15 19:42:01'),
(16, 1, 'boy2', '99999', '$2y$10$ixm0MCAljdi1JPnL67E0cuRPq8Inpqk7HNTWM885Ysj.toSQUq79C', '99999', 'asdasdasd', '1:00', '2:00', 1, NULL, NULL, '2020-09-25 11:49:46', '2020-10-15 18:59:02');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(1500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `status` int(11) NOT NULL,
  `img` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `kids_price` varchar(250) DEFAULT NULL,
  `small_price` varchar(250) DEFAULT NULL,
  `medium_price` varchar(250) DEFAULT NULL,
  `large_price` varchar(250) DEFAULT NULL,
  `discount_kids_price` varchar(250) DEFAULT NULL,
  `discount_small_price` varchar(250) DEFAULT NULL,
  `discount_medium_price` varchar(250) DEFAULT NULL,
  `discount_large_price` varchar(250) DEFAULT NULL,
  `sort_no` int(11) NOT NULL DEFAULT 0,
  `nonveg` int(11) NOT NULL DEFAULT 0,
  `s_data` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `store_id`, `category_id`, `name`, `description`, `status`, `img`, `kids_price`, `small_price`, `medium_price`, `large_price`, `discount_kids_price`, `discount_small_price`, `discount_medium_price`, `discount_large_price`, `sort_no`, `nonveg`, `s_data`, `qty`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Fruit Salds', 'Testing Description', 0, '1599771134491.PNG', NULL, '40', '50', NULL, NULL, '10', '33', NULL, -8, 0, 'a:2:{i:0;a:1:{i:5;N;}i:1;a:1:{i:5;N;}}', 0, '2020-09-15 21:30:51', '2020-09-16 01:00:51'),
(2, 2, 3, 'gravy', 'zdgfsdfgsdfgsdfgsdfg', 0, '1598857047535.PNG', NULL, '10', '101', '1111', NULL, NULL, NULL, NULL, 2, 1, 'a:2:{i:0;a:1:{i:5;N;}i:1;a:1:{i:5;N;}}', 0, '2020-08-31 07:53:27', '2020-08-31 11:23:27'),
(3, 2, 4, 'test', 'description large price', 0, '1598857031358.png', NULL, NULL, '20', NULL, NULL, NULL, NULL, NULL, 1, 0, 'a:2:{i:0;a:1:{i:5;N;}i:1;a:1:{i:5;N;}}', 0, '2020-08-31 07:49:21', '2020-08-31 11:19:21'),
(4, 2, 5, 'cat3', NULL, 0, NULL, NULL, NULL, '20', NULL, NULL, NULL, NULL, NULL, 3, 0, 'a:2:{i:0;a:1:{i:5;N;}i:1;a:1:{i:5;N;}}', 0, '2020-08-31 07:49:10', '2020-08-31 11:19:10'),
(5, 2, 6, 'four', NULL, 0, NULL, NULL, NULL, NULL, '20', NULL, NULL, NULL, NULL, 0, 0, 'a:2:{i:0;a:1:{i:5;N;}i:1;a:1:{i:5;N;}}', 2, '2020-08-31 08:11:53', '2020-08-31 11:41:53'),
(6, 1, 1, 's', 's', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'a:2:{i:0;a:1:{i:5;N;}i:1;a:1:{i:5;N;}}', 0, '2020-09-25 11:33:54', '2020-09-25 11:33:54');

-- --------------------------------------------------------

--
-- Table structure for table `item_addon`
--

CREATE TABLE `item_addon` (
  `id` int(11) NOT NULL,
  `addon_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_addon`
--

INSERT INTO `item_addon` (`id`, `addon_id`, `item_id`, `created_at`, `updated_at`) VALUES
(6, 4, 1, '2020-09-11 23:49:14', '2020-09-11 23:49:14'),
(7, 2, 1, '2020-09-11 23:49:14', '2020-09-11 23:49:14'),
(8, 1, 1, '2020-09-11 23:49:14', '2020-09-11 23:49:14');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `icon` varchar(250) DEFAULT NULL,
  `sort_no` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `name`, `type`, `icon`, `sort_no`, `created_at`, `updated_at`) VALUES
(5, 'Arabic', 1, '1577798871131.png', 5, '2019-12-31 11:57:51', '2019-12-31 11:57:51');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `title` varchar(2500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `offer`
--

CREATE TABLE `offer` (
  `id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `code` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(5000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `min_cart_value` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `upto` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `value` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `start_from` varchar(250) DEFAULT NULL,
  `valid_till` varchar(250) DEFAULT NULL,
  `s_data` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offer`
--

INSERT INTO `offer` (`id`, `store_id`, `code`, `description`, `min_cart_value`, `upto`, `type`, `value`, `status`, `start_from`, `valid_till`, `s_data`, `created_at`, `updated_at`) VALUES
(1, 0, 'test1232222', 'test', '0', '20', 1, '10', 0, NULL, NULL, 'a:2:{i:0;a:1:{i:5;N;}i:1;a:1:{i:5;N;}}', '2020-08-10 17:17:26', '2020-09-11 23:50:22');

-- --------------------------------------------------------

--
-- Table structure for table `offer_store`
--

CREATE TABLE `offer_store` (
  `id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `offer_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offer_store`
--

INSERT INTO `offer_store` (`id`, `store_id`, `offer_id`, `created_at`, `updated_at`) VALUES
(4, 1, 1, '2020-09-11 23:50:22', '2020-09-11 23:50:22');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `phone` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `address` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `commision_type` varchar(20) DEFAULT NULL,
  `commision_value` varchar(20) DEFAULT NULL,
  `balance_amount` varchar(51) DEFAULT NULL,
  `d_charges` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `discount` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `total` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `status_by` int(11) NOT NULL DEFAULT 0,
  `status_time` varchar(250) DEFAULT NULL,
  `d_boy` int(11) NOT NULL DEFAULT 0,
  `notes` varchar(2500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `cancelled_notes` varchar(250) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `payment_method` int(11) NOT NULL DEFAULT 0,
  `payment_id` varchar(2500) DEFAULT NULL,
  `lat` varchar(250) DEFAULT NULL,
  `lng` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `store_id`, `name`, `email`, `phone`, `address`, `commision_type`, `commision_value`, `balance_amount`, `d_charges`, `discount`, `total`, `status`, `status_by`, `status_time`, `d_boy`, `notes`, `cancelled_notes`, `type`, `payment_method`, `payment_id`, `lat`, `lng`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Afsar', 'afsarkhan10182@gmail.com', '9123132300', 'pune', '0', '10', '100', '10', '0', '20', 3, 1, '25-Sep-2020 | 02:35:AM', 16, NULL, NULL, 1, 1, '0', '10', '45', '2020-09-25 00:32:56', '2020-09-25 00:35:18'),
(2, 1, 1, 'Afsar', 'afsarkhan10182@gmail.com', '9123132300', 'pune', '0', '10', '90', '10', '0', '43', 2, 3, '23-Oct-2020 | 12:49:AM', 0, NULL, NULL, 1, 1, '0', '10', '45', '2020-09-25 00:37:37', '2020-10-22 22:49:04'),
(3, 1, 1, 'Afsar', 'afsarkhan10182@gmail.com', '9123132300', 'pune', '0', '20', '80', '10', '0', '20', 2, 3, '09-Oct-2020 | 01:20:AM', 15, 'asdasd', 'test', 1, 1, '0', '10', '45', '2020-09-25 00:39:34', '2020-10-08 23:20:50'),
(4, 1, 2, 'Afsar', 'afsarkhan10182@gmail.com', '9123132300', 'pune', '0', '0', '60', '10', '0', '43', 5, 1, '25-Sep-2020 | 03:24:PM', 15, 'sadfasd', NULL, 1, 1, '0', '10', '45', '2020-09-23 00:41:43', '2020-09-28 17:23:24'),
(5, 14, 2, 'sef', 'none', '34234', 'sdf', '0', '10', '50', '50', '0', '80', 1, 0, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2020-09-25 02:42:25', '2020-09-25 02:42:25'),
(6, 15, 5, '23', 'none', '3234', '3', NULL, NULL, NULL, '0', '0', '20', 1, 0, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2020-10-08 09:50:27', '2020-10-08 09:50:27'),
(7, 6, 1, 'wer', 'test@gmail.com', 'we', 'pune', '0', '0', '10', '10', '0', '20', 2, 3, '08-Oct-2020 | 11:25:PM', 0, NULL, NULL, 1, 1, '0', '10', '45', '2020-10-08 21:24:33', '2020-10-08 21:25:30'),
(8, 6, 1, 'wer', 'test@gmail.com', 'we', 'pune', '0', '0', '0', '10', '0', '43', 2, 1, '09-Oct-2020 | 12:36:AM', 15, NULL, NULL, 1, 1, '0', '10', '45', '2020-10-08 22:35:17', '2020-10-08 23:18:36'),
(9, 6, 1, 'wer', 'test@gmail.com', 'we', 'pune', '0', '0', '213', '10', '0', '43', 2, 3, '09-Oct-2020 | 01:34:AM', 15, NULL, 'yyyyyyyyyyyyyy', 1, 1, '0', '10', '45', '2020-10-08 23:28:00', '2020-10-08 23:34:05'),
(10, 6, 1, 'wer', 'test@gmail.com', 'we', 'pune', '0', '0', '213', '10', '0', '20', 2, 3, '09-Oct-2020 | 10:13:AM', 15, NULL, 'testingsadfasdsadfasdf sasdfasdfasdfa dafsdfasdf sdfasdfasdfasdfasdfasdfsa', 1, 1, '0', '10', '45', '2020-10-09 08:01:04', '2020-10-09 08:13:47'),
(11, 6, 1, 'wer', 'test@gmail.com', 'we', 'pune', '0', '0', '213', '0', '0', '33', 0, 0, NULL, 0, NULL, NULL, 1, 1, '0', '10', '45', '2020-10-09 08:53:05', '2020-10-09 08:53:05'),
(12, 6, 1, 'wer', 'test@gmail.com', 'we', 'pune', '0', '0', '213', '0', '0', '10', 2, 3, '09-Oct-2020 | 11:06:AM', 15, NULL, 'don t know', 1, 1, '0', '10', '45', '2020-10-09 09:05:04', '2020-10-09 09:06:38'),
(13, 6, 1, 'wer', 'test@gmail.com', 'we', 'pune', '0', '0', '213', '0', '10', '70', 2, 1, '09-Oct-2020 | 05:42:PM', 0, NULL, NULL, 1, 1, '0', '10', '45', '2020-10-09 15:29:50', '2020-10-09 15:42:47'),
(14, 6, 1, 'wer', 'test@gmail.com', 'we', 'pune', '0', '0', '213', '0', '10', '40', 5, 1, '09-Oct-2020 | 05:47:PM', 15, NULL, NULL, 1, 1, '0', '10', '45', '2020-10-09 15:45:55', '2020-10-09 15:58:37'),
(15, 6, 1, 'wer', 'test@gmail.com', 'we', 'pune', '0', '0', '213', '0', '0', '30', 2, 3, '09-Oct-2020 | 06:01:PM', 0, NULL, NULL, 1, 1, '0', '10', '45', '2020-10-09 16:01:07', '2020-10-09 16:01:24'),
(16, 6, 1, 'wer', 'test@gmail.com', 'we', 'pune', '0', '0', '213', '0', '0', '10', 0, 0, NULL, 0, NULL, NULL, 1, 1, '0', '10', '45', '2020-10-09 16:12:51', '2020-10-09 16:12:51'),
(17, 1, 1, 'Afsar', 'afsarkhan10182@gmail.com', '9123132300', 'pune', '0', '0', '213', '0', '0', '10', 2, 3, '23-Oct-2020 | 12:48:AM', 0, NULL, NULL, 1, 1, '0', '10', '45', '2020-10-11 00:34:38', '2020-10-22 22:48:59'),
(18, 1, 1, 'Afsar', 'afsarkhan10182@gmail.com', '9123132300', 'pune', '0', '0', '213', '0', '0', '10', 5, 1, '13-Oct-2020 | 02:52:AM', 15, NULL, NULL, 1, 1, '0', '10', '45', '2020-10-13 00:49:05', '2020-10-13 00:52:46'),
(19, 1, 1, 'Afsar', 'afsarkhan10182@gmail.com', '9123132300', 'pune', '0', '0', '213', '0', '0', '10', 5, 1, '13-Oct-2020 | 02:59:AM', 15, NULL, NULL, 1, 1, '0', '10', '45', '2020-10-13 01:04:42', '2020-10-13 01:04:42'),
(20, 1, 1, 'Afsar', 'afsarkhan10182@gmail.com', '9123132300', 'pune', '0', '0', '213', '0', '0', '10', 2, 3, '23-Oct-2020 | 12:48:AM', 0, NULL, NULL, 1, 1, '0', '10', '45', '2020-10-13 01:15:25', '2020-10-22 22:48:54'),
(21, 1, 1, 'Afsar', 'afsarkhan10182@gmail.com', '9123132300', 'pune', '0', '0', '213', '0', '0', '10', 2, 3, '23-Oct-2020 | 12:49:AM', 0, NULL, NULL, 1, 1, '0', '10', '45', '2020-10-22 22:46:17', '2020-10-22 22:49:31');

-- --------------------------------------------------------

--
-- Table structure for table `order_addon`
--

CREATE TABLE `order_addon` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `addon_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `price` varchar(250) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `qty_type` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`id`, `order_id`, `item_id`, `price`, `qty`, `qty_type`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '10', 1, 2, '2020-09-25 00:32:56', '2020-09-25 00:32:56'),
(2, 2, 1, '33', 1, 3, '2020-09-25 00:37:37', '2020-09-25 00:37:37'),
(3, 3, 1, '10', 1, 2, '2020-09-25 00:39:34', '2020-09-25 00:39:34'),
(4, 4, 1, '33', 1, 3, '2020-09-25 00:41:43', '2020-09-25 00:41:43'),
(5, 5, 1, '10', 3, 2, '2020-09-25 02:42:25', '2020-09-25 02:42:25'),
(6, 6, 1, '10', 2, 2, '2020-10-08 09:50:27', '2020-10-08 09:50:27'),
(7, 7, 1, '10', 1, 2, '2020-10-08 21:24:33', '2020-10-08 21:24:33'),
(8, 8, 1, '33', 1, 3, '2020-10-08 22:35:17', '2020-10-08 22:35:17'),
(9, 9, 1, '33', 1, 3, '2020-10-08 23:28:00', '2020-10-08 23:28:00'),
(10, 10, 1, '10', 1, 2, '2020-10-09 08:01:04', '2020-10-09 08:01:04'),
(11, 11, 1, '33', 1, 3, '2020-10-09 08:53:05', '2020-10-09 08:53:05'),
(12, 12, 1, '10', 1, 2, '2020-10-09 09:05:04', '2020-10-09 09:05:04'),
(13, 13, 1, '10', 8, 2, '2020-10-09 15:29:50', '2020-10-09 15:29:50'),
(14, 14, 1, '10', 3, 2, '2020-10-09 15:45:55', '2020-10-09 15:45:55'),
(15, 15, 1, '10', 3, 2, '2020-10-09 16:01:07', '2020-10-09 16:01:07'),
(16, 16, 1, '10', 1, 2, '2020-10-09 16:12:51', '2020-10-09 16:12:51'),
(17, 17, 1, '10', 1, 2, '2020-10-11 00:34:38', '2020-10-11 00:34:38'),
(18, 18, 1, '10', 1, 2, '2020-10-13 00:49:05', '2020-10-13 00:49:05'),
(19, 19, 1, '10', 1, 2, '2020-10-13 01:04:42', '2020-10-13 01:04:42'),
(20, 20, 1, '10', 1, 2, '2020-10-13 01:15:25', '2020-10-13 01:15:25'),
(21, 21, 1, '10', 1, 2, '2020-10-22 22:46:17', '2020-10-22 22:46:17');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `about_us` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `about_img` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `how` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `how_img` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `faq` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `contact_us` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `s_data` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `about_us`, `about_img`, `how`, `how_img`, `faq`, `contact_us`, `s_data`, `created_at`, `updated_at`) VALUES
(1, '<p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">About US</strong></p><p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">?is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled?</span></p>', '1576255917314.jpeg', '<p style=\"font-size: 14.4px;\"><span style=\"font-weight: bolder; margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">How</span></p><p style=\"font-size: 14.4px;\"><span style=\"font-weight: bolder; margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</span><span style=\"font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">?is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled?</span></p>', '1576255917525.jpeg', '<p style=\"font-size: 14.4px;\"><span style=\"font-weight: bolder; margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Faq</span></p><p style=\"font-size: 14.4px;\"><span style=\"font-weight: bolder; margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</span><span style=\"font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">?is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled?</span><br></p>', '<p style=\"font-size: 14.4px;\"><span style=\"font-weight: bolder; margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Contact</span></p><p style=\"font-size: 14.4px;\"><span style=\"font-weight: bolder; margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</span><span style=\"font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">?is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled?</span><br></p>', 'a:4:{i:0;a:5:{i:2;s:611:\"<p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">About US</strong></p><p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled </span></p>\";i:1;s:611:\"<p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">About US</strong></p><p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled </span></p>\";i:3;s:611:\"<p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">About US</strong></p><p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled </span></p>\";i:4;s:611:\"<p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">About US</strong></p><p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled </span></p>\";i:5;s:611:\"<p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">About US</strong></p><p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled </span></p>\";}i:1;a:5:{i:2;s:1437:\"<p><strong open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\" style=\"font-family: &quot;Hind Vadodara&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 0.9rem; margin: 0px; padding: 0px;\">How its Work</strong></p><p><strong open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\" style=\"font-family: &quot;Hind Vadodara&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 0.9rem; margin: 0px; padding: 0px;\">Lorem Ipsum</strong><span open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\" style=\"font-family: &quot;Hind Vadodara&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 0.9rem;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled&nbsp;</span><br></p>\";i:1;s:611:\"<p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">About US</strong></p><p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled </span></p>\";i:3;s:611:\"<p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">About US</strong></p><p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled </span></p>\";i:4;s:611:\"<p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">About US</strong></p><p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled </span></p>\";i:5;s:611:\"<p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">About US</strong></p><p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled </span></p>\";}i:2;a:5:{i:2;s:1430:\"<p><strong open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\" style=\"font-family: &quot;Hind Vadodara&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 0.9rem; margin: 0px; padding: 0px;\">Faq\'s</strong></p><p><strong open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\" style=\"font-family: &quot;Hind Vadodara&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 0.9rem; margin: 0px; padding: 0px;\">Lorem Ipsum</strong><span open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\" style=\"font-family: &quot;Hind Vadodara&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 0.9rem;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled&nbsp;</span><br></p>\";i:1;s:611:\"<p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">About US</strong></p><p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled </span></p>\";i:3;s:611:\"<p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">About US</strong></p><p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled </span></p>\";i:4;s:611:\"<p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">About US</strong></p><p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled </span></p>\";i:5;s:611:\"<p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">About US</strong></p><p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled </span></p>\";}i:3;a:5:{i:2;s:1435:\"<p><strong open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\" style=\"font-family: &quot;Hind Vadodara&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 0.9rem; margin: 0px; padding: 0px;\">Contact Us</strong></p><p><strong open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\" style=\"font-family: &quot;Hind Vadodara&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 0.9rem; margin: 0px; padding: 0px;\">Lorem Ipsum</strong><span open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\" style=\"font-family: &quot;Hind Vadodara&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 0.9rem;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled&nbsp;</span><br></p>\";i:1;s:611:\"<p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">About US</strong></p><p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled </span></p>\";i:3;s:611:\"<p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">About US</strong></p><p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled </span></p>\";i:4;s:611:\"<p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">About US</strong></p><p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled </span></p>\";i:5;s:611:\"<p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">About US</strong></p><p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled </span></p>\";}}', '2019-12-10 16:51:23', '2020-01-01 12:49:34');

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`id`, `name`) VALUES
(1, 'Settings'),
(2, 'App Text'),
(3, 'Languages'),
(4, 'Banners'),
(5, 'Manage Cities'),
(6, 'App Pages'),
(7, 'Manage Restaurants'),
(8, 'Discount Offers'),
(9, 'Delivery Boys'),
(10, 'Manage Orders'),
(11, 'Push Notification'),
(12, 'Reporting'),
(13, 'App Users');

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `star` int(11) NOT NULL DEFAULT 0,
  `comment` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rate`
--

INSERT INTO `rate` (`id`, `user_id`, `store_id`, `order_id`, `star`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 5, 'delicious food', '2020-08-08 12:12:47', '2020-08-08 12:12:47'),
(2, 1, 1, 4, 4, 'best food', '2020-08-10 17:40:55', '2020-08-10 17:40:55');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `img` varchar(250) DEFAULT NULL,
  `sort_no` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `text`
--

CREATE TABLE `text` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `s_data` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `text`
--

INSERT INTO `text` (`id`, `lang_id`, `s_data`, `created_at`, `updated_at`) VALUES
(128, 2, 'a:108:{s:11:\"skip_button\";s:6:\"h Skip\";s:12:\"enter_button\";s:13:\"H Get Started\";s:10:\"city_title\";N;s:11:\"city_search\";N;s:12:\"city_heading\";N;s:11:\"city_button\";N;s:11:\"home_search\";N;s:10:\"home_offer\";N;s:18:\"home_fast_delivery\";N;s:13:\"home_trending\";N;s:16:\"home_new_arrival\";N;s:14:\"home_by_rating\";N;s:11:\"home_coupon\";N;s:15:\"home_per_person\";N;s:16:\"home_footer_name\";N;s:12:\"home_nearest\";N;s:9:\"home_cart\";N;s:12:\"home_profile\";N;s:10:\"menu_title\";N;s:15:\"menu_page_title\";N;s:11:\"menu_footer\";N;s:14:\"item_view_info\";N;s:13:\"item_veg_only\";N;s:15:\"item_add_button\";N;s:16:\"item_addon_title\";N;s:17:\"item_size_heading\";N;s:10:\"item_small\";N;s:6:\"item_m\";N;s:10:\"item_large\";N;s:15:\"addon_add_title\";N;s:18:\"item_addon_heading\";N;s:17:\"item_addon_button\";N;s:10:\"info_title\";N;s:17:\"info_rating_title\";N;s:9:\"info_open\";N;s:10:\"info_close\";N;s:11:\"info_person\";N;s:11:\"info_d_time\";N;s:12:\"cart_heading\";N;s:10:\"cart_total\";N;s:13:\"cart_delivery\";N;s:11:\"cart_coupon\";N;s:12:\"cart_payable\";N;s:11:\"cart_button\";N;s:10:\"cart_empty\";N;s:16:\"cart_start_order\";N;s:10:\"cart_price\";N;s:8:\"cart_qty\";N;s:13:\"cart_discount\";N;s:10:\"cart_apply\";N;s:12:\"coupon_title\";N;s:14:\"coupon_heading\";N;s:13:\"coupon_button\";N;s:11:\"login_title\";N;s:13:\"login_heading\";N;s:12:\"login_button\";N;s:21:\"login_forgot_password\";N;s:20:\"login_reset_password\";N;s:12:\"login_signup\";N;s:12:\"forgot_title\";N;s:14:\"forgot_heading\";N;s:11:\"forgot_text\";N;s:12:\"signup_title\";N;s:14:\"signup_heading\";N;s:13:\"signup_button\";N;s:11:\"place_title\";N;s:22:\"place_delivery_heading\";N;s:17:\"place_add_address\";N;s:18:\"place_address_text\";N;s:21:\"place_payment_heading\";N;s:18:\"place_order_button\";N;s:9:\"add_title\";N;s:11:\"add_address\";N;s:12:\"add_landmark\";N;s:10:\"add_button\";N;s:13:\"confirm_title\";N;s:15:\"confirm_heading\";N;s:18:\"confirm_view_order\";N;s:16:\"confirm_order_id\";N;s:13:\"confirm_total\";N;s:13:\"profile_title\";N;s:15:\"profile_heading\";N;s:15:\"profile_welcome\";N;s:21:\"profile_order_history\";N;s:15:\"profile_setting\";N;s:14:\"profile_logout\";N;s:13:\"history_title\";N;s:15:\"history_heading\";N;s:12:\"history_date\";N;s:14:\"history_status\";N;s:12:\"history_item\";N;s:11:\"history_qty\";N;s:13:\"history_price\";N;s:14:\"history_rating\";N;s:14:\"history_cancel\";N;s:12:\"rating_title\";N;s:14:\"rating_heading\";N;s:10:\"rating_msg\";N;s:13:\"rating_button\";N;s:11:\"about_title\";N;s:9:\"how_title\";N;s:9:\"faq_title\";N;s:13:\"contact_title\";N;s:8:\"language\";N;s:4:\"home\";N;s:4:\"city\";N;s:7:\"account\";N;s:5:\"order\";N;}', '2020-01-04 17:31:07', '2020-01-04 17:31:07'),
(129, 1, 'a:108:{s:11:\"skip_button\";N;s:12:\"enter_button\";N;s:10:\"city_title\";N;s:11:\"city_search\";N;s:12:\"city_heading\";N;s:11:\"city_button\";N;s:11:\"home_search\";N;s:10:\"home_offer\";N;s:18:\"home_fast_delivery\";N;s:13:\"home_trending\";N;s:16:\"home_new_arrival\";N;s:14:\"home_by_rating\";N;s:11:\"home_coupon\";N;s:15:\"home_per_person\";N;s:16:\"home_footer_name\";N;s:12:\"home_nearest\";N;s:9:\"home_cart\";N;s:12:\"home_profile\";N;s:10:\"menu_title\";N;s:15:\"menu_page_title\";N;s:11:\"menu_footer\";N;s:14:\"item_view_info\";N;s:13:\"item_veg_only\";N;s:15:\"item_add_button\";N;s:16:\"item_addon_title\";N;s:17:\"item_size_heading\";N;s:10:\"item_small\";N;s:6:\"item_m\";N;s:10:\"item_large\";N;s:15:\"addon_add_title\";N;s:18:\"item_addon_heading\";N;s:17:\"item_addon_button\";N;s:10:\"info_title\";N;s:17:\"info_rating_title\";N;s:9:\"info_open\";N;s:10:\"info_close\";N;s:11:\"info_person\";N;s:11:\"info_d_time\";N;s:12:\"cart_heading\";N;s:10:\"cart_total\";N;s:13:\"cart_delivery\";N;s:11:\"cart_coupon\";N;s:12:\"cart_payable\";N;s:11:\"cart_button\";N;s:10:\"cart_empty\";N;s:16:\"cart_start_order\";N;s:10:\"cart_price\";N;s:8:\"cart_qty\";N;s:13:\"cart_discount\";N;s:10:\"cart_apply\";N;s:12:\"coupon_title\";N;s:14:\"coupon_heading\";N;s:13:\"coupon_button\";N;s:11:\"login_title\";N;s:13:\"login_heading\";N;s:12:\"login_button\";N;s:21:\"login_forgot_password\";N;s:20:\"login_reset_password\";N;s:12:\"login_signup\";N;s:12:\"forgot_title\";N;s:14:\"forgot_heading\";N;s:11:\"forgot_text\";N;s:12:\"signup_title\";N;s:14:\"signup_heading\";N;s:13:\"signup_button\";N;s:11:\"place_title\";N;s:22:\"place_delivery_heading\";N;s:17:\"place_add_address\";N;s:18:\"place_address_text\";N;s:21:\"place_payment_heading\";N;s:18:\"place_order_button\";N;s:9:\"add_title\";N;s:11:\"add_address\";N;s:12:\"add_landmark\";N;s:10:\"add_button\";N;s:13:\"confirm_title\";N;s:15:\"confirm_heading\";N;s:18:\"confirm_view_order\";N;s:16:\"confirm_order_id\";N;s:13:\"confirm_total\";N;s:13:\"profile_title\";N;s:15:\"profile_heading\";N;s:15:\"profile_welcome\";N;s:21:\"profile_order_history\";N;s:15:\"profile_setting\";N;s:14:\"profile_logout\";N;s:13:\"history_title\";N;s:15:\"history_heading\";N;s:12:\"history_date\";N;s:14:\"history_status\";N;s:12:\"history_item\";N;s:11:\"history_qty\";N;s:13:\"history_price\";N;s:14:\"history_rating\";N;s:14:\"history_cancel\";N;s:12:\"rating_title\";N;s:14:\"rating_heading\";N;s:10:\"rating_msg\";N;s:13:\"rating_button\";N;s:11:\"about_title\";N;s:9:\"how_title\";N;s:9:\"faq_title\";N;s:13:\"contact_title\";N;s:8:\"language\";N;s:4:\"home\";N;s:4:\"city\";N;s:7:\"account\";N;s:5:\"order\";N;}', '2020-01-04 17:31:08', '2020-01-04 17:31:08'),
(130, 3, 'a:108:{s:11:\"skip_button\";N;s:12:\"enter_button\";N;s:10:\"city_title\";N;s:11:\"city_search\";N;s:12:\"city_heading\";N;s:11:\"city_button\";N;s:11:\"home_search\";N;s:10:\"home_offer\";N;s:18:\"home_fast_delivery\";N;s:13:\"home_trending\";N;s:16:\"home_new_arrival\";N;s:14:\"home_by_rating\";N;s:11:\"home_coupon\";N;s:15:\"home_per_person\";N;s:16:\"home_footer_name\";N;s:12:\"home_nearest\";N;s:9:\"home_cart\";N;s:12:\"home_profile\";N;s:10:\"menu_title\";N;s:15:\"menu_page_title\";N;s:11:\"menu_footer\";N;s:14:\"item_view_info\";N;s:13:\"item_veg_only\";N;s:15:\"item_add_button\";N;s:16:\"item_addon_title\";N;s:17:\"item_size_heading\";N;s:10:\"item_small\";N;s:6:\"item_m\";N;s:10:\"item_large\";N;s:15:\"addon_add_title\";N;s:18:\"item_addon_heading\";N;s:17:\"item_addon_button\";N;s:10:\"info_title\";N;s:17:\"info_rating_title\";N;s:9:\"info_open\";N;s:10:\"info_close\";N;s:11:\"info_person\";N;s:11:\"info_d_time\";N;s:12:\"cart_heading\";N;s:10:\"cart_total\";N;s:13:\"cart_delivery\";N;s:11:\"cart_coupon\";N;s:12:\"cart_payable\";N;s:11:\"cart_button\";N;s:10:\"cart_empty\";N;s:16:\"cart_start_order\";N;s:10:\"cart_price\";N;s:8:\"cart_qty\";N;s:13:\"cart_discount\";N;s:10:\"cart_apply\";N;s:12:\"coupon_title\";N;s:14:\"coupon_heading\";N;s:13:\"coupon_button\";N;s:11:\"login_title\";N;s:13:\"login_heading\";N;s:12:\"login_button\";N;s:21:\"login_forgot_password\";N;s:20:\"login_reset_password\";N;s:12:\"login_signup\";N;s:12:\"forgot_title\";N;s:14:\"forgot_heading\";N;s:11:\"forgot_text\";N;s:12:\"signup_title\";N;s:14:\"signup_heading\";N;s:13:\"signup_button\";N;s:11:\"place_title\";N;s:22:\"place_delivery_heading\";N;s:17:\"place_add_address\";N;s:18:\"place_address_text\";N;s:21:\"place_payment_heading\";N;s:18:\"place_order_button\";N;s:9:\"add_title\";N;s:11:\"add_address\";N;s:12:\"add_landmark\";N;s:10:\"add_button\";N;s:13:\"confirm_title\";N;s:15:\"confirm_heading\";N;s:18:\"confirm_view_order\";N;s:16:\"confirm_order_id\";N;s:13:\"confirm_total\";N;s:13:\"profile_title\";N;s:15:\"profile_heading\";N;s:15:\"profile_welcome\";N;s:21:\"profile_order_history\";N;s:15:\"profile_setting\";N;s:14:\"profile_logout\";N;s:13:\"history_title\";N;s:15:\"history_heading\";N;s:12:\"history_date\";N;s:14:\"history_status\";N;s:12:\"history_item\";N;s:11:\"history_qty\";N;s:13:\"history_price\";N;s:14:\"history_rating\";N;s:14:\"history_cancel\";N;s:12:\"rating_title\";N;s:14:\"rating_heading\";N;s:10:\"rating_msg\";N;s:13:\"rating_button\";N;s:11:\"about_title\";N;s:9:\"how_title\";N;s:9:\"faq_title\";N;s:13:\"contact_title\";N;s:8:\"language\";N;s:4:\"home\";N;s:4:\"city\";N;s:7:\"account\";N;s:5:\"order\";N;}', '2020-01-04 17:31:08', '2020-01-04 17:31:08'),
(131, 4, 'a:108:{s:11:\"skip_button\";N;s:12:\"enter_button\";N;s:10:\"city_title\";N;s:11:\"city_search\";N;s:12:\"city_heading\";N;s:11:\"city_button\";N;s:11:\"home_search\";N;s:10:\"home_offer\";N;s:18:\"home_fast_delivery\";N;s:13:\"home_trending\";N;s:16:\"home_new_arrival\";N;s:14:\"home_by_rating\";N;s:11:\"home_coupon\";N;s:15:\"home_per_person\";N;s:16:\"home_footer_name\";N;s:12:\"home_nearest\";N;s:9:\"home_cart\";N;s:12:\"home_profile\";N;s:10:\"menu_title\";N;s:15:\"menu_page_title\";N;s:11:\"menu_footer\";N;s:14:\"item_view_info\";N;s:13:\"item_veg_only\";N;s:15:\"item_add_button\";N;s:16:\"item_addon_title\";N;s:17:\"item_size_heading\";N;s:10:\"item_small\";N;s:6:\"item_m\";N;s:10:\"item_large\";N;s:15:\"addon_add_title\";N;s:18:\"item_addon_heading\";N;s:17:\"item_addon_button\";N;s:10:\"info_title\";N;s:17:\"info_rating_title\";N;s:9:\"info_open\";N;s:10:\"info_close\";N;s:11:\"info_person\";N;s:11:\"info_d_time\";N;s:12:\"cart_heading\";N;s:10:\"cart_total\";N;s:13:\"cart_delivery\";N;s:11:\"cart_coupon\";N;s:12:\"cart_payable\";N;s:11:\"cart_button\";N;s:10:\"cart_empty\";N;s:16:\"cart_start_order\";N;s:10:\"cart_price\";N;s:8:\"cart_qty\";N;s:13:\"cart_discount\";N;s:10:\"cart_apply\";N;s:12:\"coupon_title\";N;s:14:\"coupon_heading\";N;s:13:\"coupon_button\";N;s:11:\"login_title\";N;s:13:\"login_heading\";N;s:12:\"login_button\";N;s:21:\"login_forgot_password\";N;s:20:\"login_reset_password\";N;s:12:\"login_signup\";N;s:12:\"forgot_title\";N;s:14:\"forgot_heading\";N;s:11:\"forgot_text\";N;s:12:\"signup_title\";N;s:14:\"signup_heading\";N;s:13:\"signup_button\";N;s:11:\"place_title\";N;s:22:\"place_delivery_heading\";N;s:17:\"place_add_address\";N;s:18:\"place_address_text\";N;s:21:\"place_payment_heading\";N;s:18:\"place_order_button\";N;s:9:\"add_title\";N;s:11:\"add_address\";N;s:12:\"add_landmark\";N;s:10:\"add_button\";N;s:13:\"confirm_title\";N;s:15:\"confirm_heading\";N;s:18:\"confirm_view_order\";N;s:16:\"confirm_order_id\";N;s:13:\"confirm_total\";N;s:13:\"profile_title\";N;s:15:\"profile_heading\";N;s:15:\"profile_welcome\";N;s:21:\"profile_order_history\";N;s:15:\"profile_setting\";N;s:14:\"profile_logout\";N;s:13:\"history_title\";N;s:15:\"history_heading\";N;s:12:\"history_date\";N;s:14:\"history_status\";N;s:12:\"history_item\";N;s:11:\"history_qty\";N;s:13:\"history_price\";N;s:14:\"history_rating\";N;s:14:\"history_cancel\";N;s:12:\"rating_title\";N;s:14:\"rating_heading\";N;s:10:\"rating_msg\";N;s:13:\"rating_button\";N;s:11:\"about_title\";N;s:9:\"how_title\";N;s:9:\"faq_title\";N;s:13:\"contact_title\";N;s:8:\"language\";N;s:4:\"home\";N;s:4:\"city\";N;s:7:\"account\";N;s:5:\"order\";N;}', '2020-01-04 17:31:08', '2020-01-04 17:31:08'),
(175, 0, 'a:134:{s:11:\"skip_button\";s:4:\"Skip\";s:12:\"enter_button\";s:11:\"Get Started\";s:10:\"city_title\";s:11:\"Select City\";s:11:\"city_search\";s:6:\"Search\";s:12:\"city_heading\";s:22:\"Select City & Continue\";s:11:\"city_button\";s:6:\"Update\";s:11:\"home_search\";s:31:\"Search for restaurants,dishes..\";s:10:\"home_offer\";s:11:\"Great Offer\";s:18:\"home_fast_delivery\";s:13:\"Fast Delivery\";s:13:\"home_trending\";s:8:\"Trending\";s:16:\"home_new_arrival\";s:11:\"New Arrival\";s:14:\"home_by_rating\";s:9:\"By Rating\";s:11:\"home_coupon\";N;s:15:\"home_per_person\";s:10:\"per person\";s:16:\"home_footer_name\";s:4:\"Home\";s:12:\"home_nearest\";s:7:\"Nearest\";s:9:\"home_cart\";s:4:\"Cart\";s:12:\"home_profile\";s:7:\"Profile\";s:10:\"menu_title\";s:4:\"Menu\";s:15:\"menu_page_title\";s:11:\"Information\";s:11:\"menu_footer\";s:15:\"App version 1.1\";s:14:\"item_view_info\";s:29:\"View more info about this app\";s:13:\"item_veg_only\";s:8:\"Veg Only\";s:15:\"item_add_button\";s:3:\"Add\";s:16:\"item_addon_title\";s:13:\"Select Option\";s:17:\"item_size_heading\";s:16:\"Select Item Size\";s:9:\"item_kids\";s:4:\"Kids\";s:10:\"item_small\";s:5:\"Small\";s:6:\"item_m\";s:6:\"Medium\";s:10:\"item_large\";s:5:\"Large\";s:15:\"addon_add_title\";s:3:\"Add\";s:18:\"item_addon_heading\";s:29:\"You can also add some addon\'s\";s:17:\"item_addon_button\";s:3:\"Add\";s:10:\"info_title\";s:16:\"View Information\";s:17:\"info_rating_title\";s:16:\"Rating & Reviews\";s:9:\"info_open\";s:12:\"Opening Time\";s:10:\"info_close\";s:12:\"Closing Time\";s:11:\"info_person\";s:15:\"Per Person Cost\";s:11:\"info_d_time\";s:13:\"Delivery Time\";s:12:\"cart_heading\";s:17:\"Manage Cart Items\";s:10:\"cart_total\";s:12:\"Total Amount\";s:13:\"cart_delivery\";s:16:\"Delivery Charges\";s:11:\"cart_coupon\";s:23:\"Have a discount coupon?\";s:12:\"cart_payable\";s:20:\"Total Payable Amount\";s:11:\"cart_button\";s:11:\"Place Order\";s:10:\"cart_empty\";s:24:\"Opps! Your cart is empty\";s:16:\"cart_start_order\";s:14:\"Start Ordering\";s:10:\"cart_price\";s:5:\"Price\";s:8:\"cart_qty\";s:8:\"Quantity\";s:13:\"cart_discount\";s:8:\"Discount\";s:10:\"cart_apply\";s:5:\"Apply\";s:12:\"coupon_title\";s:12:\"Apply Coupon\";s:14:\"coupon_heading\";s:24:\"Avilable Discount Coupon\";s:13:\"coupon_button\";s:5:\"Apply\";s:11:\"login_title\";s:5:\"Login\";s:13:\"login_heading\";s:24:\"Please login to continue\";s:12:\"login_button\";s:5:\"Login\";s:21:\"login_forgot_password\";s:16:\"Forgot Password?\";s:20:\"login_reset_password\";s:10:\"Reset Here\";s:12:\"login_signup\";s:18:\"Create New Account\";s:12:\"forgot_title\";s:21:\"Forgot Your Password?\";s:14:\"forgot_heading\";s:30:\"Don\'t worry you can reset here\";s:11:\"forgot_text\";s:27:\"Enter Your Registered Email\";s:12:\"signup_title\";s:6:\"Signup\";s:14:\"signup_heading\";s:20:\"Personal Information\";s:13:\"signup_button\";s:6:\"Signup\";s:11:\"place_title\";s:11:\"Place Order\";s:22:\"place_delivery_heading\";s:23:\"Select Delivery Address\";s:17:\"place_add_address\";s:7:\"Add New\";s:18:\"place_address_text\";s:57:\"Opps! not able to find any address saved in your account.\";s:21:\"place_payment_heading\";s:21:\"Select Payment Method\";s:18:\"place_order_button\";s:11:\"Place Order\";s:9:\"add_title\";s:15:\"Add New Address\";s:11:\"add_address\";s:7:\"Address\";s:12:\"add_landmark\";s:8:\"Landmark\";s:10:\"add_button\";s:12:\"Save Address\";s:13:\"confirm_title\";s:30:\"Your order placed successfully\";s:15:\"confirm_heading\";s:84:\"Your order placed successfully. You will be notified when your order status changed.\";s:18:\"confirm_view_order\";s:18:\"View Order Details\";s:16:\"confirm_order_id\";s:8:\"Order ID\";s:13:\"confirm_total\";s:20:\"Total Payable Amount\";s:13:\"profile_title\";s:10:\"My Account\";s:15:\"profile_heading\";s:10:\"My Account\";s:15:\"profile_welcome\";s:9:\"Welcome !\";s:21:\"profile_order_history\";s:13:\"Order History\";s:15:\"profile_setting\";s:16:\"Account Settings\";s:14:\"profile_logout\";s:6:\"Logout\";s:13:\"history_title\";s:13:\"Order History\";s:15:\"history_heading\";N;s:12:\"history_date\";s:9:\"Date Time\";s:14:\"history_status\";s:6:\"Status\";s:12:\"history_item\";s:4:\"Item\";s:11:\"history_qty\";s:3:\"Qty\";s:13:\"history_price\";s:5:\"Price\";s:14:\"history_rating\";s:11:\"Give Rating\";s:14:\"history_cancel\";s:12:\"Cancel Order\";s:12:\"rating_title\";s:26:\"Give Your Reviews & Rating\";s:14:\"rating_heading\";s:13:\"Select Rating\";s:10:\"rating_msg\";s:17:\"Write Your Review\";s:13:\"rating_button\";s:6:\"Submit\";s:11:\"about_title\";s:8:\"About Us\";s:9:\"how_title\";s:12:\"How it Works\";s:9:\"faq_title\";s:5:\"Faq\'s\";s:13:\"contact_title\";s:10:\"Contact Us\";s:8:\"language\";s:8:\"Language\";s:4:\"home\";s:4:\"Home\";s:4:\"city\";s:4:\"City\";s:7:\"account\";s:10:\"My Account\";s:5:\"order\";s:9:\"My Orders\";s:10:\"d_no_order\";s:26:\"Sorry! No new order found.\";s:11:\"d_new_order\";s:10:\"New Orders\";s:13:\"d_view_detail\";s:11:\"View Detail\";s:6:\"d_user\";s:4:\"User\";s:7:\"d_phone\";s:5:\"Phone\";s:9:\"d_address\";s:7:\"Address\";s:12:\"d_start_ride\";s:10:\"Start Ride\";s:15:\"d_complete_ride\";s:13:\"Complete Ride\";s:14:\"d_total_amount\";s:12:\"Total Amount\";s:5:\"d_pay\";s:14:\"Payment Method\";s:5:\"close\";s:25:\"Store is closed right now\";s:13:\"s_total_order\";s:11:\"Total Order\";s:16:\"s_complete_order\";s:16:\"Completed Orders\";s:11:\"s_new_order\";s:10:\"New Orders\";s:12:\"s_new_status\";s:14:\"Order Received\";s:15:\"s_confirm_order\";s:15:\"Order Confirmed\";s:21:\"s_out_delivery_status\";s:16:\"Out For Delivery\";s:17:\"s_complete_status\";s:14:\"Order Complete\";s:14:\"s_detail_title\";s:12:\"Order Detail\";s:12:\"s_menu_title\";s:9:\"Menu Item\";s:16:\"s_order_overview\";s:15:\"Orders Overview\";s:9:\"s_c_order\";s:14:\"Complete Order\";s:15:\"s_cancel_button\";s:12:\"Cancel Order\";s:16:\"s_confirm_button\";s:13:\"Confirm Order\";s:15:\"s_assign_button\";s:19:\"Assign Delivery Boy\";}', '2020-09-15 01:25:50', '2020-09-15 01:25:50'),
(176, 5, 'a:134:{s:11:\"skip_button\";s:8:\"تخطى\";s:12:\"enter_button\";s:5:\"Enter\";s:10:\"city_title\";s:19:\"اختر مدينة\";s:11:\"city_search\";s:6:\"بحث\";s:12:\"city_heading\";s:34:\"اختر مدينة ومتابعة\";s:11:\"city_button\";s:10:\"تحديث\";s:11:\"home_search\";s:50:\"البحث عن المطاعم والأطباق ..\";s:10:\"home_offer\";s:15:\"عرض رائع\";s:18:\"home_fast_delivery\";s:19:\"توصيل سريع\";s:13:\"home_trending\";s:12:\"الشائع\";s:16:\"home_new_arrival\";s:17:\"قادم جديد\";s:14:\"home_by_rating\";s:21:\"حسب التقييم\";s:11:\"home_coupon\";N;s:15:\"home_per_person\";s:23:\"للشخص الواحد\";s:16:\"home_footer_name\";s:29:\"الصفحة الرئيسية\";s:12:\"home_nearest\";s:8:\"أقرب\";s:9:\"home_cart\";s:21:\"عربة التسوق\";s:12:\"home_profile\";s:23:\"الملف الشخصي\";s:10:\"menu_title\";s:19:\"قائمة طعام\";s:15:\"menu_page_title\";s:14:\"معلومات\";s:11:\"menu_footer\";s:29:\"إصدار التطبيق 1.1\";s:14:\"item_view_info\";s:68:\"عرض مزيد من المعلومات حول هذا التطبيق\";s:13:\"item_veg_only\";s:19:\"الخضار فقط\";s:15:\"item_add_button\";s:10:\"إضافة\";s:16:\"item_addon_title\";s:19:\"حدد الخيار\";s:17:\"item_size_heading\";s:26:\"حدد حجم العنصر\";s:9:\"item_kids\";N;s:10:\"item_small\";s:8:\"صغير\";s:6:\"item_m\";s:10:\"متوسط\";s:10:\"item_large\";s:8:\"كبير\";s:15:\"addon_add_title\";s:10:\"إضافة\";s:18:\"item_addon_heading\";s:50:\"يمكنك أيضا إضافة بعض الملحق\";s:17:\"item_addon_button\";s:10:\"إضافة\";s:10:\"info_title\";s:25:\"عرض المعلومات\";s:17:\"info_rating_title\";s:35:\"التقييم والمراجعات\";s:9:\"info_open\";s:17:\"وقت مفتوح\";s:10:\"info_close\";s:21:\"وقت الإغلاق\";s:11:\"info_person\";s:21:\"تكلفة الفرد\";s:11:\"info_d_time\";s:23:\"موعد التسليم\";s:12:\"cart_heading\";s:32:\"إدارة عناصر السلة\";s:10:\"cart_total\";s:29:\"المبلغ الإجمالي\";s:13:\"cart_delivery\";s:23:\"رسوم التوصيل\";s:11:\"cart_coupon\";s:33:\"هل لديك كوبون خصم؟\";s:12:\"cart_payable\";s:40:\"إجمالي المبلغ المستحق\";s:11:\"cart_button\";s:19:\"مكان الامر\";s:10:\"cart_empty\";s:44:\"انتبه! عربة التسوق فارغة\";s:16:\"cart_start_order\";s:17:\"بدء الطلب\";s:10:\"cart_price\";s:10:\"السعر\";s:8:\"cart_qty\";s:8:\"كمية\";s:13:\"cart_discount\";s:6:\"خصم\";s:10:\"cart_apply\";s:10:\"تطبيق\";s:12:\"coupon_title\";s:25:\"تطبيق القسيمة\";s:14:\"coupon_heading\";s:30:\"Avilable كوبون الخصم\";s:13:\"coupon_button\";s:10:\"تطبيق\";s:11:\"login_title\";s:23:\"تسجيل الدخول\";s:13:\"login_heading\";s:53:\"الرجاء تسجيل الدخول للمتابعة\";s:12:\"login_button\";s:23:\"تسجيل الدخول\";s:21:\"login_forgot_password\";s:37:\"هل نسيت كلمة المرور؟\";s:20:\"login_reset_password\";s:28:\"إعادة تعيين هنا\";s:12:\"login_signup\";s:28:\"انشاء حساب جديد\";s:12:\"forgot_title\";s:30:\"نسيت رقمك السري؟\";s:14:\"forgot_heading\";s:60:\"لا تقلق ، يمكنك إعادة التعيين هنا\";s:11:\"forgot_text\";s:53:\"أدخل بريدك الإلكتروني المسجل\";s:12:\"signup_title\";s:6:\"سجل\";s:14:\"signup_heading\";s:25:\"معلومات شخصية\";s:13:\"signup_button\";s:6:\"سجل\";s:11:\"place_title\";s:19:\"مكان الامر\";s:22:\"place_delivery_heading\";s:32:\"حدد عنوان التسليم\";s:17:\"place_add_address\";s:15:\"اضف جديد\";s:18:\"place_address_text\";s:98:\"انتبه! غير قادر على العثور على أي عنوان محفوظ في حسابك.\";s:21:\"place_payment_heading\";s:32:\"اختار طريقة الدفع\";s:18:\"place_order_button\";s:19:\"مكان الامر\";s:9:\"add_title\";s:30:\"إضافة عنوان جديد\";s:11:\"add_address\";s:10:\"عنوان\";s:12:\"add_landmark\";s:19:\"معلم معروف\";s:10:\"add_button\";s:10:\"إرسال\";s:13:\"confirm_title\";s:15:\"تم الطلب\";s:15:\"confirm_heading\";s:91:\"تم وضع طلبك بنجاح. سيتم إخطارك عند تغيير حالة طلبك.\";s:18:\"confirm_view_order\";s:36:\"معاينة تفاصيل الطلب\";s:16:\"confirm_order_id\";s:45:\"رقم التعريف الخاص بالطلب\";s:13:\"confirm_total\";s:40:\"إجمالي المبلغ المستحق\";s:13:\"profile_title\";s:10:\"حسابي\";s:15:\"profile_heading\";s:10:\"حسابي\";s:15:\"profile_welcome\";s:15:\"أهلا بك !\";s:21:\"profile_order_history\";s:21:\"تاريخ الطلب\";s:15:\"profile_setting\";s:25:\"إعدادت الحساب\";s:14:\"profile_logout\";s:19:\"تسجيل خروج\";s:13:\"history_title\";s:21:\"تاريخ الطلب\";s:15:\"history_heading\";N;s:12:\"history_date\";s:21:\"تاريخ الوقت\";s:14:\"history_status\";s:12:\"الحالة\";s:12:\"history_item\";s:6:\"بند\";s:11:\"history_qty\";s:8:\"كمية\";s:13:\"history_price\";s:10:\"السعر\";s:14:\"history_rating\";s:21:\"إعطاء تقييم\";s:14:\"history_cancel\";s:21:\"الغاء الطلب\";s:12:\"rating_title\";s:68:\"إعطاء الاستعراضات الخاصة بك والتقييم\";s:14:\"rating_heading\";s:23:\"اختر التصنيف\";s:10:\"rating_msg\";s:23:\"اكتب مراجعتك\";s:13:\"rating_button\";s:10:\"إرسال\";s:11:\"about_title\";s:21:\"معلومات عنا\";s:9:\"how_title\";s:15:\"كيف تعمل\";s:9:\"faq_title\";s:18:\"التعليمات\";s:13:\"contact_title\";s:8:\"اتصل\";s:8:\"language\";s:6:\"لغة\";s:4:\"home\";s:29:\"الصفحة الرئيسية\";s:4:\"city\";s:10:\"مدينة\";s:7:\"account\";s:10:\"حسابي\";s:5:\"order\";s:6:\"طلب\";s:10:\"d_no_order\";s:56:\"آسف! لم يتم العثور على طلب جديد.\";s:11:\"d_new_order\";s:21:\"طلبات جديدة\";s:13:\"d_view_detail\";s:23:\"عرض التفاصيل\";s:6:\"d_user\";s:16:\"المستعمل\";s:7:\"d_phone\";s:8:\"هاتف\";s:9:\"d_address\";s:10:\"عنوان\";s:12:\"d_start_ride\";s:21:\"ابدأ الركوب\";s:15:\"d_complete_ride\";s:19:\"رحلة كاملة\";s:14:\"d_total_amount\";s:29:\"المبلغ الإجمالي\";s:5:\"d_pay\";s:39:\"طريقة الدفع او السداد\";s:5:\"close\";s:26:\"متجر مغلق الآن\";s:13:\"s_total_order\";s:26:\"من أجل الكاملة\";s:16:\"s_complete_order\";s:23:\"أوامر مكتملة\";s:11:\"s_new_order\";s:21:\"طلبات جديدة\";s:12:\"s_new_status\";s:15:\"طلب وارد\";s:15:\"s_confirm_order\";s:26:\"تم تاكيد الطلب\";s:21:\"s_out_delivery_status\";s:23:\"خارج للتوصيل\";s:17:\"s_complete_status\";s:19:\"الطلب جاهز\";s:14:\"s_detail_title\";s:23:\"تفاصيل الطلب\";s:12:\"s_menu_title\";s:34:\"إدارة عنصر القائمة\";s:16:\"s_order_overview\";s:39:\"نظرة عامة على الطلبات\";s:9:\"s_c_order\";s:19:\"اكمل الطلب\";s:15:\"s_cancel_button\";s:21:\"الغاء الطلب\";s:16:\"s_confirm_button\";s:17:\"أكد الطلب\";s:15:\"s_assign_button\";s:21:\"تعيين رايدر\";}', '2020-09-15 01:25:50', '2020-09-15 01:25:50');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `start_time` varchar(250) DEFAULT NULL,
  `end_time` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `store_id`, `name`, `start_time`, `end_time`, `created_at`, `updated_at`) VALUES
(1, 7, 'Breakfast', '6', '11:30', '2019-10-04 12:30:11', '2019-10-04 12:30:33'),
(2, 7, 'Lunch', '11:30', '17', '2019-10-04 12:30:28', '2019-10-04 12:30:28'),
(3, 7, 'Dinner', '15', '23', '2019-10-04 12:30:49', '2019-10-04 12:30:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `sub_id` int(11) DEFAULT NULL,
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `postcode` varchar(250) DEFAULT NULL,
  `license_number` varchar(250) DEFAULT NULL,
  `city_id` int(11) DEFAULT 0,
  `address` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `img` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `password` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `shw_password` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `remember_token` varchar(250) DEFAULT NULL,
  `min_cart_value` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `penalty_charge` int(11) DEFAULT NULL,
  `delivery_charges_value` varchar(250) DEFAULT NULL,
  `opening_time` varchar(6) DEFAULT NULL,
  `closing_time` varchar(6) DEFAULT NULL,
  `trending` int(11) NOT NULL DEFAULT 0,
  `delivery_time` varchar(250) DEFAULT NULL,
  `person_cost` varchar(250) DEFAULT NULL,
  `balance_amount` varchar(250) DEFAULT NULL,
  `wallet_expire_from` date DEFAULT NULL,
  `validate_period` varchar(250) DEFAULT NULL,
  `lat` varchar(250) DEFAULT NULL,
  `lng` varchar(250) DEFAULT NULL,
  `open` int(11) NOT NULL DEFAULT 0,
  `type` varchar(250) DEFAULT NULL,
  `s_data` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `c_type` int(20) DEFAULT NULL,
  `c_value` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `sub_id`, `name`, `email`, `phone`, `postcode`, `license_number`, `city_id`, `address`, `img`, `status`, `password`, `shw_password`, `remember_token`, `min_cart_value`, `penalty_charge`, `delivery_charges_value`, `opening_time`, `closing_time`, `trending`, `delivery_time`, `person_cost`, `balance_amount`, `wallet_expire_from`, `validate_period`, `lat`, `lng`, `open`, `type`, `s_data`, `c_type`, `c_value`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Alhamdulillah', 'restaurant1@gmail.com', '8621321212', '1234', '12345', 1, 'Kondhwa, Punedsgsdfsdf', '1596869246285.jpg', 0, '$2y$10$WzRV.vTLJRsk.BugKzoHsOxABORDgQwa2aztpbvE/JigBfZRbPPoa', 'restaurant1', NULL, '1', 20, '10', '00', '23:30', 1, '20', '200', '213', '2020-10-09', '1', '34.5553494', '69.207486', 0, 'Veg & Nonveg', 'a:2:{i:0;a:1:{i:5;N;}i:1;a:1:{i:5;N;}}', 0, '0', '2020-08-08 01:20:59', '2020-10-09 15:03:16'),
(2, 2, 'Taj', 'Taj00@gmail.com', '98123123123', 'wqeqw', '545', 1, 'Mumbai', '1599682161354.PNG', 0, '$2y$10$0zOKFSKTntiUIRHYUfJMK.0YIOXgkEbcuxju5IF6wKwaeP4/FKoWS', 'test', NULL, '50', NULL, '50', '13:00', '23:00', 0, '10', '100', '50', '2020-09-24', '3', NULL, NULL, 0, 'Veg & Nonveg', 'a:2:{i:0;a:1:{i:5;N;}i:1;a:1:{i:5;N;}}', 0, '10', '2020-08-12 18:06:05', '2020-09-26 15:09:23'),
(3, 1, 'asdfasdf', 'adminasdfasdf@d.com', '453453', '3', '3333', 2, 'sd', '1601125280543.png', 0, '$2y$10$efuhAzPt6HrrxkXM0XksQO/bHVMDF/Qj2nAlYb6J9glbpoYse6fP2', 'Sanoj12345', NULL, NULL, NULL, NULL, 'Select', 'Select', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Veg & Nonveg', 'a:2:{i:0;a:1:{i:5;N;}i:1;a:1:{i:5;N;}}', NULL, NULL, '2020-09-26 16:31:20', '2020-09-26 16:31:20'),
(4, 2, 'yurtyurty111', 'sa@d.com', '123123', '222', '121', 1, 'e', '1601125421673.png', 0, '$2y$10$jbD/YLMJpayEFgSiLQv.k.5d4jtvDawPDa4UK3.hZjxSkWOGIajwy', 'Sanoj12345', NULL, NULL, NULL, NULL, 'Select', 'Select', 0, NULL, NULL, NULL, NULL, '1', NULL, NULL, 0, 'Veg Only', 'a:2:{i:0;a:1:{i:5;N;}i:1;a:1:{i:5;N;}}', 0, '0', '2020-09-26 16:33:41', '2020-09-26 16:37:31'),
(5, 3, '2323', 'sdaf@s.com', '123123', '222', '12', 2, 'sdas,dsfasdf', '1601125730345.png', 0, '$2y$10$PurpngxWNJdV7.3JlpTY.OJP6ed/5P9i5nu2F89coNpSVHse1SUDC', 'wq23q323qw', NULL, NULL, NULL, NULL, 'Select', 'Select', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Veg & Nonveg', 'a:2:{i:0;a:1:{i:5;N;}i:1;a:1:{i:5;N;}}', NULL, NULL, '2020-09-26 16:38:50', '2020-09-26 16:38:50');

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(2500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `lat` varchar(250) DEFAULT NULL,
  `lng` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`id`, `user_id`, `address`, `lat`, `lng`, `created_at`, `updated_at`) VALUES
(1, 1, 'pune', '10', '45', '2020-08-08 12:07:32', '2020-08-08 12:07:32'),
(2, 1, 'pune', '10', '45', '2020-08-31 11:49:25', '2020-08-31 11:49:25'),
(3, 1, 'pune', '10', '45', '2020-08-31 18:24:55', '2020-08-31 18:24:55'),
(4, 1, 'Address Not Available!', '19.289324660539588', '73.05144698252562', '2020-08-31 22:36:36', '2020-08-31 22:36:36'),
(5, 6, 'pune', '10', '45', '2020-10-08 21:20:20', '2020-10-08 21:20:20'),
(6, 6, 'Address Not Available!', '19.288944159665224', '73.053581', '2020-10-09 15:08:43', '2020-10-09 15:08:43');

-- --------------------------------------------------------

--
-- Table structure for table `user_image`
--

CREATE TABLE `user_image` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `img` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_image`
--

INSERT INTO `user_image` (`id`, `user_id`, `img`, `created_at`, `updated_at`) VALUES
(3, 1, '1597148250583.jpg', '2020-08-11 15:47:30', '2020-08-11 15:47:30'),
(5, 1, '1597781237578.jpg', '2020-08-18 23:37:17', '2020-08-18 23:37:17'),
(6, 1, '1597781237221.jpg', '2020-08-18 23:37:17', '2020-08-18 23:37:17');

-- --------------------------------------------------------

--
-- Table structure for table `user_wallet`
--

CREATE TABLE `user_wallet` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_mode` varchar(250) DEFAULT NULL,
  `add_money` varchar(250) DEFAULT NULL,
  `balance_amount` varchar(250) DEFAULT NULL,
  `wallet_expire_from` timestamp NOT NULL DEFAULT current_timestamp(),
  `wallet_expire_to` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_wallet`
--

INSERT INTO `user_wallet` (`id`, `user_id`, `payment_mode`, `add_money`, `balance_amount`, `wallet_expire_from`, `wallet_expire_to`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '100', NULL, '2020-08-11 13:22:45', '2020-08-11 13:22:45', '2020-08-11 16:52:45', '2020-08-11 16:52:45'),
(2, 1, NULL, '120', NULL, '2020-08-11 13:23:23', '2020-08-11 13:23:23', '2020-08-11 16:53:23', '2020-08-11 16:53:23'),
(3, 2, NULL, NULL, NULL, '2020-08-11 14:36:05', '2020-08-11 14:36:05', '2020-08-11 18:06:05', '2020-08-11 18:06:05'),
(4, 2, NULL, '300', NULL, '2020-08-11 14:38:11', '2020-08-11 14:38:11', '2020-08-11 18:08:11', '2020-08-11 18:08:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addon`
--
ALTER TABLE `addon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_user`
--
ALTER TABLE `app_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_store`
--
ALTER TABLE `banner_store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_addon`
--
ALTER TABLE `cart_addon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_coupen`
--
ALTER TABLE `cart_coupen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_boys`
--
ALTER TABLE `delivery_boys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_addon`
--
ALTER TABLE `item_addon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer`
--
ALTER TABLE `offer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer_store`
--
ALTER TABLE `offer_store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_addon`
--
ALTER TABLE `order_addon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `text`
--
ALTER TABLE `text`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_image`
--
ALTER TABLE `user_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_wallet`
--
ALTER TABLE `user_wallet`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addon`
--
ALTER TABLE `addon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `app_user`
--
ALTER TABLE `app_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `banner_store`
--
ALTER TABLE `banner_store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `cart_addon`
--
ALTER TABLE `cart_addon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart_coupen`
--
ALTER TABLE `cart_coupen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `delivery_boys`
--
ALTER TABLE `delivery_boys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `item_addon`
--
ALTER TABLE `item_addon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offer`
--
ALTER TABLE `offer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `offer_store`
--
ALTER TABLE `offer_store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `order_addon`
--
ALTER TABLE `order_addon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `rate`
--
ALTER TABLE `rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `text`
--
ALTER TABLE `text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_image`
--
ALTER TABLE `user_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_wallet`
--
ALTER TABLE `user_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
