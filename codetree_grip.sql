-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 16, 2022 at 01:12 PM
-- Server version: 10.3.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codetree_grip`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `first_name`, `last_name`, `email`, `mobile`, `username`, `password`, `image`, `role`, `status`, `created_at`, `updated_at`) VALUES
(1, 'kamruzzaman', 'kajol', 'admin@gmail.com', '01646735100', 'admin', '$2y$10$bJF.DrZvBKDqlDP3fjyWMOPc.5Da25Z4QBqy8ahnTzrFsP4SskrSW', 'public/uploads/profile_image/icon-5359553_1280.webp', 1, 1, NULL, NULL),
(3, 'manager', 'rahman', 'manager@gmail.com', NULL, 'manager', '$2y$10$M9fOI6JTehdUE/GvszfBvugBImbYWYv92SV5f4OhjKU/BEtD7ey3q', 'public/uploads/profile_image/kousar.jpg', 2, 1, '2020-02-10 09:13:07', '2020-02-10 09:13:07'),
(4, 'Monzu', 'Automobiles', 'monzuautomobiles89@yahoo.com', '01711563272', 'monzuautomobiles', '$2y$10$7hPwVPofIQHCoHMWBXxHcOouKsU6/E.IIs1cs4QFbeUEwfJRhwsYS', NULL, 1, 1, '2020-02-24 09:03:54', '2020-02-24 09:03:54'),
(5, 'Ashfaq', 'Rahman', 'ashfaq@gmail.com', NULL, 'ashfaq', '$2y$10$wN.nbAaPu.dpaL4N8h52Get5GMyoHWZ.KE31/vfiLPMqQ.4i7LW9S', NULL, 1, 1, '2020-03-05 13:07:33', '2020-03-05 13:07:33'),
(6, 'Ashfaq', 'Rahman', 'ashfaq@gmail.com', NULL, 'ashfaq', '$2y$10$PRrgN5rNjQ7Y9mYWhkBBHeWp5IfCSDT3GRfozOvTMtElMXzns.45q', NULL, 1, 1, '2020-03-05 13:14:05', '2020-03-05 13:14:05'),
(7, 'Nahin', 'Khan', 'nahin_khan@outlook.com', NULL, 'nahin', '$2y$10$ep3hY4HFr7sX5EduJumTOuaxGUKWxhoJFW2SmKXnxFBTo77it5GB.', NULL, 3, 1, '2022-07-30 08:16:57', '2022-07-30 08:16:57');

-- --------------------------------------------------------

--
-- Table structure for table `billers`
--

CREATE TABLE `billers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_footer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billers`
--

INSERT INTO `billers` (`id`, `name`, `logo`, `email`, `phone`, `address`, `city`, `invoice_footer`, `postal_code`, `created_at`, `updated_at`) VALUES
(1, 'shahadat Hossain', NULL, NULL, '01813-600979', '46 new eskaton road, Banglamotor', 'Dhaka', NULL, NULL, '2020-02-25 13:27:48', '2020-02-25 13:27:48');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `code`, `slug`, `description`, `image`, `company`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Formula1', 'BC-1', 'formula1', NULL, NULL, NULL, 1, '2020-02-25 13:05:26', '2020-02-25 13:05:26'),
(2, 'Toyota', 'BC-2', 'toyota', NULL, NULL, NULL, 1, '2020-03-05 15:22:37', '2020-03-05 15:22:37'),
(3, 'RBI', 'BC-3', 'rbi', NULL, NULL, NULL, 1, '2020-03-05 15:22:52', '2020-03-05 15:22:52'),
(4, 'Stop', 'BC-4', 'stop', NULL, NULL, NULL, 1, '2020-03-05 15:23:03', '2020-03-05 15:23:03'),
(5, 'Denso', 'BC-5', 'denso', NULL, NULL, NULL, 1, '2020-03-05 15:23:15', '2020-03-05 15:23:15'),
(6, 'OSK', 'BC-6', 'osk', NULL, NULL, NULL, 1, '2020-03-05 15:23:24', '2020-03-05 15:23:24'),
(7, 'Advios', 'BC-7', 'advios', NULL, NULL, NULL, 1, '2020-03-05 15:23:38', '2020-03-05 15:23:38'),
(8, 'Gunk', 'BC-8', 'gunk', NULL, NULL, NULL, 1, '2020-03-05 15:23:47', '2020-03-05 15:23:47'),
(9, 'Seger', 'BC-9', 'seger', NULL, NULL, NULL, 1, '2020-03-05 15:23:58', '2020-03-05 15:23:58'),
(10, 'NGK', 'BC-10', 'ngk', NULL, NULL, NULL, 1, '2020-03-05 15:24:42', '2020-03-05 15:24:42'),
(11, 'ELEPHANT', 'BC-11', 'elephant', NULL, NULL, NULL, 1, '2020-03-05 15:25:07', '2020-03-05 15:25:07'),
(12, '555', 'BC-12', '555', NULL, NULL, NULL, 1, '2020-03-05 15:25:19', '2020-03-05 15:25:19'),
(13, 'MK', 'BC-13', 'mk', NULL, NULL, NULL, 1, '2020-03-05 15:25:33', '2020-03-05 15:25:33'),
(14, 'Galaxy', 'BC-14', 'galaxy', NULL, NULL, NULL, 1, '2020-03-05 15:26:01', '2020-03-05 15:26:01'),
(15, 'kyb', 'BC-15', 'kyb', NULL, NULL, NULL, 1, '2020-03-05 15:26:21', '2020-03-05 15:26:21'),
(16, 'sp', 'BC-16', 'sp', NULL, NULL, NULL, 1, '2020-03-05 15:26:30', '2020-03-05 15:26:30'),
(17, 'NSK', 'BC-17', 'nsk', NULL, NULL, NULL, 1, '2020-03-05 15:27:20', '2020-03-05 15:27:20'),
(18, 'Lubking', 'BC-18', 'lubking', NULL, NULL, 'skill auto corporation', 1, '2020-03-09 16:36:24', '2020-03-09 16:36:24'),
(19, 'Engine oil', 'BC-19', 'engine-oil', NULL, NULL, NULL, 1, '2020-03-10 13:03:46', '2020-03-10 13:03:46'),
(20, 'sakura', 'BC-20', 'sakura', NULL, NULL, NULL, 1, '2020-03-15 19:17:16', '2020-03-15 19:17:16'),
(21, 'Aisien', 'BC-21', 'aisien', NULL, NULL, NULL, 1, '2020-03-15 19:23:21', '2020-03-15 19:23:21'),
(22, 'Olympia 4T', 'BC-22', 'olympia-4t', '<p>asdf</p>', NULL, 'Saptak', 1, '2022-05-12 09:19:52', '2022-05-12 09:19:52');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `parentId` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `code`, `description`, `slug`, `status`, `parentId`, `created_at`, `updated_at`) VALUES
(1, 'Car wax', NULL, 'CC-1', NULL, 'car-wax', 1, NULL, '2020-02-25 13:00:43', '2020-02-25 13:00:43'),
(2, 'Auto parts', NULL, 'CC-2', NULL, 'auto-parts', 1, NULL, '2020-03-08 13:04:17', '2020-03-08 13:04:17'),
(4, 'Lubricating Oil', NULL, 'CC-3', NULL, 'lube', 1, NULL, '2022-05-12 09:09:21', '2022-05-12 09:09:21');

-- --------------------------------------------------------

--
-- Table structure for table `cheque_infos`
--

CREATE TABLE `cheque_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cheque_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cheque_infos`
--

INSERT INTO `cheque_infos` (`id`, `reference`, `cheque_number`, `bank_name`, `user_id`, `type`, `created_at`, `updated_at`) VALUES
(1, '33', NULL, 'NCC BANK', '30', 'sale', '2020-03-09 21:05:00', '2020-03-09 21:05:00'),
(2, '77', '12000*4', 'premier bank', '55', 'sale', '2020-03-19 19:50:29', '2020-03-19 19:50:29');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_balance` double DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `group`, `name`, `mobile`, `mobile2`, `email`, `company`, `address`, `start_balance`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Walk-in Customer', '01773340092', NULL, 'monzuautomobiles89@yahhho.com', NULL, NULL, NULL, 1, NULL, '2020-02-24 09:18:18', '2020-02-24 09:18:18'),
(2, 1, 'Jamir Automobiles', '01852819772', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-02-25 13:13:37', '2020-02-25 13:13:37'),
(3, 1, 'One Motor', '01720544556', NULL, NULL, NULL, 'Mohakali', NULL, 1, NULL, '2020-03-03 20:04:59', '2020-03-03 20:04:59'),
(4, 1, 'Kamal paint', '01734496400', '01711905608', NULL, NULL, NULL, NULL, 1, NULL, '2020-03-03 20:29:00', '2020-03-03 20:29:00'),
(5, 1, 'Fahad Autos', '01917793969', NULL, NULL, NULL, 'Baridhara', NULL, 1, NULL, '2020-03-03 20:44:00', '2020-03-03 20:44:00'),
(6, 1, 'Auto corner (RahimF1)', '01711872799', NULL, NULL, NULL, 'jessore', NULL, 1, NULL, '2020-03-04 09:40:21', '2020-03-04 09:40:21'),
(7, 1, 'Shafiq car paint', '01712194718', '02-58155618', NULL, NULL, NULL, NULL, 1, NULL, '2020-03-04 09:41:20', '2020-03-04 09:41:20'),
(8, 1, 'Hanif paint', '01816732934', NULL, NULL, NULL, 'Katabon', NULL, 1, NULL, '2020-03-04 11:49:04', '2020-03-04 11:49:04'),
(9, 1, 'Bahar paint', '01817600116', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-03-04 17:58:25', '2020-03-04 17:58:25'),
(10, 1, 'Oli Hardware', '01826170005', NULL, NULL, NULL, 'chawkbazar,chittagong', NULL, 1, NULL, '2020-03-05 15:40:54', '2020-03-05 15:40:54'),
(11, 1, 'SARSINA  COLOR PAINT', '01727365362', NULL, NULL, NULL, 'Biswaroad', NULL, 1, NULL, '2020-03-05 18:12:50', '2020-03-05 18:12:50'),
(12, 1, 'Bismillah auto', '01712932730', NULL, NULL, NULL, 'Sayadpur', NULL, 1, NULL, '2020-03-06 10:59:26', '2020-03-06 10:59:26'),
(13, 1, 'shyamoli motor', '01913349446', NULL, NULL, NULL, 'Badarganj', 9000, 1, NULL, '2020-03-06 11:33:48', '2020-03-06 11:33:48'),
(14, 1, 'Lucky Paint', '01735469069', NULL, NULL, NULL, 'Razarbag', NULL, 1, NULL, '2020-03-06 11:42:01', '2020-03-06 11:42:01'),
(15, 1, 'Lotus paint', '01731677628', NULL, NULL, NULL, 'Malibag', NULL, 1, NULL, '2020-03-08 16:46:25', '2020-03-08 16:46:25'),
(16, 1, 'Uzzal paint', '01951665272', NULL, NULL, 'Uzzal Paint', 'Bijoynagar', NULL, 1, NULL, '2020-03-08 16:53:49', '2020-03-08 16:53:49'),
(17, 1, 'City Vehicle', '01674424432', NULL, NULL, NULL, 'Banglamotor', NULL, 1, NULL, '2020-03-08 17:02:17', '2020-03-08 17:02:17'),
(18, 1, 'Farid Bai', '01628685567', NULL, NULL, NULL, 'chittagong', NULL, 1, NULL, '2020-03-08 18:58:41', '2020-03-08 18:58:41'),
(19, 1, 'Babul paint', '01819437263', NULL, NULL, NULL, 'kawranbazar', NULL, 1, NULL, '2020-03-08 19:28:40', '2020-03-08 19:28:40'),
(20, 1, 'Billac paint', '01818745665', NULL, NULL, NULL, 'Chittagong', NULL, 1, NULL, '2020-03-08 20:03:08', '2020-03-08 20:03:08'),
(21, 1, 'Kapci Color paint', '01718703694', NULL, NULL, NULL, 'Baridhara, J block', NULL, 1, NULL, '2020-03-09 13:20:24', '2020-03-09 13:20:24'),
(22, 1, 'Tanvir car paint', '01729797006', NULL, NULL, NULL, 'Mohakali', NULL, 1, NULL, '2020-03-09 17:35:47', '2020-03-09 17:35:47'),
(23, 1, 'Karib Auto Ltd', '01733755188', NULL, NULL, NULL, 'Bijoynagar', 29820, 1, NULL, '2020-03-09 17:38:49', '2020-03-09 17:38:49'),
(24, 1, 'J& M paint', '01712896546', NULL, NULL, NULL, 'Nawabpur', NULL, 1, NULL, '2020-03-09 17:44:07', '2020-03-09 17:44:07'),
(25, 1, 'RAFA Enterprise', '01724164804', NULL, NULL, NULL, 'Mohakali', NULL, 1, NULL, '2020-03-09 17:47:39', '2020-03-09 17:47:39'),
(26, 1, 'joy color paint', '029336817', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-03-09 18:03:23', '2020-03-09 18:03:23'),
(27, 1, 'Bengal Auto color', '01724022933', NULL, NULL, NULL, 'Kakrail', NULL, 1, NULL, '2020-03-09 18:06:26', '2020-03-09 18:06:26'),
(28, 1, 'Bhuiyan Corporation', '01914870347', NULL, NULL, NULL, 'Wari', NULL, 1, NULL, '2020-03-09 18:10:04', '2020-03-09 18:10:04'),
(29, 1, 'New Auto Traders', '029569111', NULL, NULL, NULL, 'Banglabazar', NULL, 1, NULL, '2020-03-09 20:48:55', '2020-03-09 20:48:55'),
(30, 1, 'Ridoy Enterprise (Barkat)', '01719788555', NULL, NULL, NULL, 'Bangsal', NULL, 1, NULL, '2020-03-09 20:55:12', '2020-03-09 20:55:12'),
(31, 1, 'Hawladar car paint', '01678373835', NULL, NULL, NULL, 'Mirpur', NULL, 1, NULL, '2020-03-10 10:05:16', '2020-03-10 10:05:16'),
(32, 1, 'Nabil car decoration', '01718303802', NULL, NULL, NULL, 'Mirpur', 123000, 1, NULL, '2020-03-10 14:03:35', '2020-03-10 14:03:35'),
(33, 1, 'CSD cantonment', '01728140802', NULL, NULL, NULL, 'cantonment', NULL, 1, NULL, '2020-03-10 16:24:53', '2020-03-10 16:24:53'),
(34, 1, 'Intake motor', '01741001700', NULL, NULL, NULL, 'Nikunja, uttara', NULL, 1, NULL, '2020-03-10 19:35:51', '2020-03-10 19:35:51'),
(35, 1, 'Piash motor', '01670200705', NULL, NULL, NULL, 'Mirpur 10', 632845, 1, NULL, '2020-03-11 12:20:47', '2020-03-11 12:20:47'),
(36, 1, 'Mahin Paint', '01711287594', NULL, NULL, NULL, 'Mohakali', NULL, 1, NULL, '2020-03-12 19:33:44', '2020-03-12 19:33:44'),
(37, 1, 'Ismail Paint', '01816693634', NULL, NULL, NULL, 'savar', NULL, 1, NULL, '2020-03-12 19:36:43', '2020-03-12 19:36:43'),
(38, 1, 'Asia Car Paint', '01917024090', NULL, NULL, NULL, 'Mathijeel', NULL, 1, NULL, '2020-03-12 19:40:05', '2020-03-12 19:40:05'),
(39, 1, 'Faridpur color paint', '01916710429', NULL, NULL, NULL, 'Gabtoli', NULL, 1, NULL, '2020-03-12 19:49:15', '2020-03-12 19:49:15'),
(40, 1, 'Mostafa Autos', '01738331750', NULL, NULL, NULL, 'Baridhara', 441500, 1, NULL, '2020-03-12 20:15:05', '2020-03-12 20:15:05'),
(41, 1, 'S.T motor', '01919382738', NULL, NULL, NULL, '314 sk mujib road, chittagong', NULL, 1, NULL, '2020-03-14 10:55:12', '2020-03-14 10:55:12'),
(42, 1, 'SAJIB Enterprise', '01712616898', NULL, NULL, NULL, 'Banglabazar', NULL, 1, NULL, '2020-03-14 16:52:21', '2020-03-14 16:52:21'),
(43, 1, 'DK autos', '01727334380', NULL, NULL, NULL, 'zahera mansion , Banglamotor', NULL, 1, NULL, '2020-03-15 18:18:25', '2020-03-15 18:18:25'),
(44, 1, 'Giash Motor', '01817797652', NULL, NULL, NULL, 'mirpur', NULL, 1, NULL, '2020-03-16 12:58:45', '2020-03-16 12:58:45'),
(45, 1, 'Anwar Motor', '01716794133', NULL, NULL, NULL, 'Banglamotor', NULL, 1, NULL, '2020-03-16 13:06:06', '2020-03-16 13:06:06'),
(46, 1, 'Sammi Auto Parts', '01767074140', NULL, NULL, NULL, 'Khalpar, Uttara', NULL, 1, NULL, '2020-03-16 17:53:34', '2020-03-16 17:53:34'),
(47, 1, 'New Nahar Paint', '01711226669', NULL, NULL, NULL, 'Mirpur 10', NULL, 1, NULL, '2020-03-16 18:08:46', '2020-03-16 18:08:46'),
(48, 1, 'km motor Titu', '01819937590', NULL, NULL, NULL, NULL, 56540, 1, NULL, '2020-03-16 18:14:50', '2020-03-16 18:14:50'),
(49, 1, 'Chowdhury and sons', '01823508023', NULL, NULL, NULL, '314 sk mujib road, chittagong', NULL, 1, NULL, '2020-03-17 10:24:49', '2020-03-17 10:24:49'),
(50, 1, 'New Bangla Motor', '01813308306', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-03-17 10:38:18', '2020-03-17 10:38:18'),
(51, 1, 'Boishaki Color Paint', '01731803055', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-03-17 10:42:33', '2020-03-17 10:42:33'),
(52, 1, 'Rising Autos', '01711881983', NULL, NULL, NULL, 'Banglabzar', 20500, 1, NULL, '2020-03-17 10:53:08', '2020-03-17 10:53:08'),
(53, 1, 'Bismillah Car Decoration', '01775554554', NULL, NULL, NULL, 'Mohakali', NULL, 1, NULL, '2020-03-17 12:44:22', '2020-03-17 12:44:22'),
(54, 1, 'Rasel Car Decoration', '01972661741', NULL, NULL, NULL, NULL, 500, 1, NULL, '2020-03-19 11:42:39', '2020-03-19 11:42:39'),
(55, 1, 'Biswas Enterprise MizanF1', '01924424044', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-03-19 19:47:16', '2020-03-19 19:47:16'),
(56, 1, 'Milon F1 Broker', '01714873679', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-03-21 09:33:25', '2020-03-21 09:33:25'),
(57, 1, 'Towhid Motor', '01711240391', NULL, NULL, NULL, 'Mohakali', NULL, 1, NULL, '2020-03-21 09:40:59', '2020-03-21 09:40:59'),
(58, 1, 'Ananda Motor', '01673989132', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-03-21 09:41:43', '2020-03-21 09:41:43'),
(59, 1, 'Sumon Bearing', '01932847430', NULL, NULL, NULL, 'Baridhara', NULL, 1, NULL, '2020-03-21 10:00:19', '2020-03-21 10:00:19'),
(60, 1, 'Mohakali motor', '01711062522', NULL, NULL, NULL, 'Mohakali', NULL, 1, NULL, '2020-03-21 10:19:54', '2020-03-21 10:19:54'),
(61, 1, 'JAMAN MOTORS', '01942796814', NULL, NULL, NULL, 'Shymoli', 44560, 1, NULL, '2020-03-21 10:48:44', '2020-03-21 10:48:44'),
(62, 1, 'Shoronika Motors', '01753294476', NULL, NULL, NULL, 'Banglabazar', 323990, 1, NULL, '2020-03-21 12:12:01', '2020-03-21 12:12:01'),
(63, 1, 'Sumi Autos', '01732363668', NULL, NULL, NULL, 'Banglabazar', 20090, 1, NULL, '2020-03-21 12:16:03', '2020-03-21 12:16:03'),
(64, 1, 'Shimul Motors', '01746125677', NULL, NULL, NULL, NULL, 136100, 1, NULL, '2020-03-21 12:57:39', '2020-03-21 12:57:39'),
(65, 1, 'Real Motors', '01711235684', NULL, NULL, NULL, NULL, 18100, 1, NULL, '2020-03-21 13:01:40', '2020-03-21 13:01:40'),
(66, 1, 'Sohel Supply', '01711362040', NULL, NULL, NULL, 'Banglabazar', NULL, 1, NULL, '2020-03-21 13:07:29', '2020-03-21 13:07:29'),
(67, 1, 'Chattalah Motors', '01913218678', NULL, NULL, NULL, NULL, 40800, 1, NULL, '2020-03-21 13:13:10', '2020-03-21 13:13:10'),
(68, 1, 'Tayef Trading', '01710861465', NULL, NULL, NULL, 'Banglabazar', 48300, 1, NULL, '2020-03-21 13:20:56', '2020-03-21 13:20:56'),
(69, 1, 'Akatha Motors', '01914868083', NULL, NULL, NULL, NULL, 3750, 1, NULL, '2020-03-21 13:23:54', '2020-03-21 13:23:54'),
(70, 1, 'Bikas Automobiles', '01719321319', NULL, NULL, NULL, 'Banglabazar', 111365, 1, NULL, '2020-03-21 15:09:16', '2020-03-21 15:09:16'),
(71, 1, 'Skill Auto corporation', '01732660978', NULL, NULL, NULL, 'Bijoynagar', 87650, 1, NULL, '2020-03-21 15:15:55', '2020-03-21 15:15:55'),
(72, 1, 'Jeyana Motocraft', '01727303030', NULL, NULL, NULL, 'Bijoynagar', 10795, 1, NULL, '2020-03-21 15:17:00', '2020-03-21 15:17:00'),
(73, 1, 'Babul Motor', '01714216492', NULL, NULL, NULL, 'Bijoynagar', NULL, 1, NULL, '2020-03-21 15:18:05', '2020-03-21 15:18:05'),
(74, 1, 'Bidan Motor', '01817610847', NULL, NULL, NULL, 'Bijoynagar', 72640, 1, NULL, '2020-03-21 15:21:55', '2020-03-21 15:21:55'),
(75, 1, 'Tutel Enterprise', '01814485539', NULL, NULL, NULL, 'Bijoynagar', 13350, 1, NULL, '2020-03-21 15:23:45', '2020-03-21 15:23:45'),
(76, 1, 'TOYOTA GARDEN', '01812874594', NULL, NULL, NULL, 'Bijynagar', 14110, 1, NULL, '2020-03-21 15:25:30', '2020-03-21 15:25:30'),
(77, 1, 'ATHOY MOTOR', '01817714390', NULL, NULL, NULL, 'BiJoynagar', 104500, 1, NULL, '2020-03-21 15:26:33', '2020-03-21 15:26:33'),
(78, 1, 'AKTHER & BROTHERS', '0248951204', NULL, NULL, NULL, 'Uttara', 4650, 1, NULL, '2020-03-21 15:29:48', '2020-03-21 15:29:48'),
(79, 1, 'Evan Autos', '01831179065', NULL, NULL, NULL, 'uttara', 27310, 1, NULL, '2020-03-21 15:38:48', '2020-03-21 15:38:48'),
(80, 1, 'Rajdhani Motors', '01812951305', NULL, NULL, NULL, 'uttara', 1300, 1, NULL, '2020-03-21 15:40:22', '2020-03-21 15:40:22'),
(81, 1, 'Janani Motors', '01711078557', NULL, NULL, NULL, 'uttara', 67595, 1, NULL, '2020-03-21 15:41:21', '2020-03-21 15:41:21'),
(82, 1, 'progoti car decoration', '01716063897', NULL, NULL, NULL, 'uttara', 8160, 1, NULL, '2020-03-21 15:43:06', '2020-03-21 15:43:06'),
(83, 1, 'Jamil Motors', '01818889688', NULL, NULL, NULL, 'uttara', 10000, 1, NULL, '2020-03-21 15:44:04', '2020-03-21 15:44:04'),
(84, 1, 'MR car Decoration', '01766621994', NULL, NULL, NULL, 'uttara', NULL, 1, NULL, '2020-03-21 15:44:48', '2020-03-21 15:44:48'),
(85, 1, 'MR car Decoration 2', '0186444801', NULL, NULL, NULL, 'uttara', 12740, 1, NULL, '2020-03-21 15:54:03', '2020-03-21 15:54:03'),
(86, 1, 'Ruf Light', '01819118713', NULL, NULL, NULL, 'uttara', 94550, 1, NULL, '2020-03-21 15:54:53', '2020-03-21 15:54:53'),
(87, 1, 'Masud Car Decoration', '017111037222', NULL, NULL, NULL, 'uttara', 32510, 1, NULL, '2020-03-21 15:55:42', '2020-03-21 15:55:42'),
(88, 1, 'Rubul Auto House /Vip', '01720642179', NULL, NULL, NULL, 'uttara', 20810, 1, NULL, '2020-03-21 15:57:16', '2020-03-21 15:57:16'),
(89, 1, 'Ali Autos', '01732585838', NULL, NULL, NULL, 'uttara', 154450, 1, NULL, '2020-03-21 15:58:52', '2020-03-21 15:58:52'),
(90, 1, 'Happy Light', '01672934561', NULL, NULL, NULL, 'uttara', 25435, 1, NULL, '2020-03-21 15:59:52', '2020-03-21 15:59:52'),
(91, 1, 'Bismillah color paint', '01817014888', NULL, NULL, NULL, 'uttara', 13800, 1, NULL, '2020-03-21 16:00:35', '2020-03-21 16:00:35'),
(92, 1, 'Lucky Motor', '01912066310', NULL, NULL, NULL, 'uttara', NULL, 1, NULL, '2020-03-21 16:12:44', '2020-03-21 16:12:44'),
(93, 1, 'sumon enterprises', '01818514091', NULL, NULL, NULL, 'uttara', NULL, 1, NULL, '2020-03-21 16:13:38', '2020-03-21 16:13:38'),
(94, 1, 'DADA MOTORS', '01611312910', NULL, NULL, NULL, 'MIRPUR', 48060, 1, NULL, '2020-03-21 16:14:46', '2020-03-21 16:14:46'),
(95, 1, 'Rabbi Motor', '01911164814', NULL, NULL, NULL, 'shymoli', NULL, 1, NULL, '2020-03-21 16:16:23', '2020-03-21 16:16:23'),
(96, 1, 'Nohash car', '016809959010', NULL, NULL, NULL, NULL, 14620, 1, NULL, '2020-03-21 16:18:21', '2020-03-21 16:18:21'),
(97, 1, 'Parts Points samsu', '01716715114', NULL, NULL, NULL, 'mohammadpur', 4175, 1, NULL, '2020-03-21 16:20:51', '2020-03-21 16:20:51'),
(98, 1, 'Avinas car decoration', '01747666416', NULL, NULL, NULL, 'mohakali', NULL, 1, NULL, '2020-03-21 16:22:00', '2020-03-21 16:22:00'),
(99, 1, 'JR motors', '01712023114', NULL, NULL, NULL, 'mohakali', 5280, 1, NULL, '2020-03-21 16:23:01', '2020-03-21 16:23:01'),
(100, 1, 'Ena motor sahin', '01715659301', NULL, NULL, NULL, 'mohakali', 485, 1, NULL, '2020-03-21 16:25:54', '2020-03-21 16:25:54'),
(101, 1, 'Ena motor kokon', '01712076350', NULL, NULL, NULL, 'mohakali', 47950, 1, NULL, '2020-03-21 16:27:14', '2020-03-21 16:27:14'),
(102, 1, 'Concord Motor', '01817500360', NULL, NULL, NULL, 'mohakali', 16530, 1, NULL, '2020-03-21 16:28:35', '2020-03-21 16:28:35'),
(103, 1, 'OSAKA MOTORS', '01711628298', NULL, NULL, NULL, 'MOHAKALI', 42410, 1, NULL, '2020-03-21 16:29:29', '2020-03-21 16:29:29'),
(104, 1, 'IDEAL ONE', '028878532', NULL, NULL, NULL, 'gulshan link road', 55140, 1, NULL, '2020-03-21 16:33:39', '2020-03-21 16:33:39'),
(105, 1, 'MA AUTOMOBILES', '01758247118', NULL, NULL, NULL, 'mohakali', 4745, 1, NULL, '2020-03-21 16:38:56', '2020-03-21 16:38:56'),
(106, 1, 'MA AUTOMOBILES', '017582471118', NULL, NULL, NULL, 'moahakali', 4745, 1, NULL, '2020-03-21 16:45:59', '2020-03-21 16:45:59'),
(107, 1, 'New Manik Motors', '01812261371', NULL, NULL, NULL, 'mohakali', 72550, 1, NULL, '2020-03-21 16:48:01', '2020-03-21 16:48:01'),
(108, 1, 'Royal motors', '01819485077', NULL, NULL, NULL, 'mohakali', 10740, 1, NULL, '2020-03-21 16:49:22', '2020-03-21 16:49:22'),
(109, 1, 'Mohakali motor', '01794668788', NULL, NULL, NULL, 'mohali', 15920, 1, NULL, '2020-03-21 16:50:32', '2020-03-21 16:50:32'),
(110, 1, 'Alamgir Bai', '01711102008', NULL, NULL, NULL, 'Mohakali', 22545, 1, NULL, '2020-03-21 16:51:41', '2020-03-21 16:51:41'),
(111, 1, 'Kalam Motors', '01819014323', NULL, NULL, NULL, 'Mohakali', NULL, 1, NULL, '2020-03-21 16:52:36', '2020-03-21 16:52:36'),
(112, 1, 'Belal Motors', '01791741255', NULL, NULL, NULL, 'Mohakali', 35135, 1, NULL, '2020-03-21 16:54:35', '2020-03-21 16:54:35'),
(113, 1, 'Marium Motors', '01918160741', NULL, NULL, NULL, 'Baridara', 12750, 1, NULL, '2020-03-21 16:55:39', '2020-03-21 16:55:39'),
(114, 1, 'Brothers motors', '01819494948', NULL, NULL, NULL, 'Baridara', 111260, 1, NULL, '2020-03-21 16:56:53', '2020-03-21 16:56:53'),
(115, 1, 'Shahadat Automobiles', '029343649', NULL, NULL, NULL, 'TMC', 61350, 1, NULL, '2020-03-21 16:58:31', '2020-03-21 16:58:31'),
(116, 1, 'Pacific Autos Shahin', '01711544571', NULL, NULL, NULL, 'shymoli', 25980, 1, NULL, '2020-03-21 16:59:40', '2020-03-21 16:59:40'),
(117, 1, 'Iqbal Autos', '01819188673', NULL, NULL, NULL, 'ac market', 1470, 1, NULL, '2020-03-21 17:01:01', '2020-03-21 17:01:01'),
(118, 1, 'Tanjila Autos', '01718691633', NULL, NULL, NULL, 'Farhad market', 3600, 1, NULL, '2020-03-21 17:04:19', '2020-03-21 17:04:19'),
(119, 1, 'Titas motor', '01815229265', NULL, NULL, NULL, 'Banglamotor', 5600, 1, NULL, '2020-03-21 17:05:12', '2020-03-21 17:05:12'),
(120, 1, 'Masum Motor', '01715059800', NULL, NULL, NULL, 'Helena centre', 11250, 1, NULL, '2020-03-21 17:06:15', '2020-03-21 17:06:15'),
(121, 1, 'Rasel motpr', '01727165134', NULL, NULL, NULL, 'Habib center', 132980, 1, NULL, '2020-03-21 17:07:33', '2020-03-21 17:07:33'),
(122, 1, 'Moon Enterprise', '01819404757', NULL, NULL, NULL, 'TMC', 62200, 1, NULL, '2020-03-21 17:08:38', '2020-03-21 17:08:38'),
(123, 1, 'J HOQUE', '01819467948', NULL, NULL, NULL, 'Banglamotor', 72490, 1, NULL, '2020-03-21 17:09:37', '2020-03-21 17:09:37'),
(124, 1, 'Munna car', '01814918512', NULL, NULL, NULL, 'Banglamotor', 9580, 1, NULL, '2020-03-21 17:10:51', '2020-03-21 17:10:51'),
(125, 1, 'Jahir famous', '01716244372', NULL, NULL, NULL, '3795', NULL, 1, NULL, '2020-03-21 17:19:19', '2020-03-21 17:19:19'),
(126, 1, 'Auto Agency', '01621974678', NULL, NULL, NULL, 'Chittagong', 15130, 1, NULL, '2020-03-21 17:20:16', '2020-03-21 17:20:16'),
(127, 1, 'HAWA MOTOR', '01687770073', NULL, NULL, NULL, 'Barisal', 6435, 1, NULL, '2020-03-21 17:21:51', '2020-03-21 17:21:51'),
(128, 1, 'Suci Motors', '01711301936', NULL, NULL, NULL, 'Bogra', 2495, 1, NULL, '2020-03-21 17:34:43', '2020-03-21 17:34:43'),
(129, 1, 'Classic motor', '01711326150', NULL, NULL, NULL, 'sylhet', 15350, 1, NULL, '2020-03-21 17:36:58', '2020-03-21 17:36:58'),
(130, 1, 'AK TRADE INTERNATIONAL', '029343625', NULL, NULL, NULL, 'Helena centre', 138710, 1, NULL, '2020-03-21 17:38:49', '2020-03-21 17:38:49'),
(131, 1, 'Oishee motor', '01913218679', NULL, NULL, NULL, 'Banglamotor', 6800, 1, NULL, '2020-03-21 17:40:24', '2020-03-21 17:40:24'),
(132, 1, 'Khair Automobiles', '01817078458', NULL, NULL, NULL, 'mohsin plaza', 16375, 1, NULL, '2020-03-21 17:41:51', '2020-03-21 17:41:51'),
(133, 1, 'ANANDA AUTOMOBILES', '0171223565', NULL, NULL, NULL, 'Banglabazar', 132840, 1, NULL, '2020-03-21 17:43:23', '2020-03-21 17:43:23'),
(134, 1, 'Taher Automobiles', '01676190322', NULL, NULL, NULL, 'Chittagong', 12050, 1, NULL, '2020-03-21 17:44:38', '2020-03-21 17:44:38'),
(135, 1, 'SA LIGHT', '01723523471', NULL, NULL, NULL, 'Uttara', 14980, 1, NULL, '2020-03-21 17:51:54', '2020-03-21 17:51:54'),
(136, 1, 'Rafiq sylhet', '01711485277', NULL, NULL, NULL, 'sylhet', 2000, 1, NULL, '2020-03-21 17:52:52', '2020-03-21 17:52:52'),
(137, 1, 'MADINA  HARDWARE', '01786711740', NULL, NULL, NULL, 'Nawabpur', 2800, 1, NULL, '2020-03-21 17:54:50', '2020-03-21 17:54:50'),
(138, 1, 'Star Hardware', '01813600979', NULL, NULL, NULL, 'Nawabpur', 9400, 1, NULL, '2020-03-21 17:58:00', '2020-03-21 17:58:00'),
(139, 1, 'Nawabpur Machineries', '01715993135', NULL, NULL, NULL, 'Nawabpur', 12200, 1, NULL, '2020-03-21 17:59:11', '2020-03-21 17:59:11'),
(140, 1, 'UPAMA TRADING', '01717237360', NULL, NULL, NULL, 'nwabpur', 1400, 1, NULL, '2020-03-21 17:59:57', '2020-03-21 17:59:57'),
(141, 1, 'Kazal Traders', '01715298914', NULL, NULL, NULL, 'Nawabpur', 5180, 1, NULL, '2020-03-21 18:00:51', '2020-03-21 18:00:51'),
(142, 1, 'BM motors  Mainul Bai', '01842053827', NULL, NULL, NULL, 'Banglabazar', 70390, 1, NULL, '2020-03-21 18:01:50', '2020-03-21 18:01:50'),
(143, 1, 'Munir Car deco.', '01816631595', NULL, NULL, NULL, 'uttara', 1520, 1, NULL, '2020-03-21 18:02:42', '2020-03-21 18:02:42'),
(144, 1, 'AK MOTOR KADER', '01819406629', NULL, NULL, NULL, 'AC market', 89110, 1, NULL, '2020-03-21 18:04:42', '2020-03-21 18:04:42'),
(145, 1, 'New Munna car', '01847409840', NULL, NULL, NULL, 'Banglamotor', NULL, 1, NULL, '2020-03-22 16:29:28', '2020-03-22 16:29:28'),
(146, 1, 'Nahin Khan', '+8801312010704', NULL, 'nahin_khan@outlook.com', NULL, '50/3, Beside Ananda Bhaban Community Centre, Shantinagar', NULL, 1, NULL, '2022-05-11 10:17:58', '2022-05-11 10:17:58');

-- --------------------------------------------------------

--
-- Table structure for table `customer_groups`
--

CREATE TABLE `customer_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_groups`
--

INSERT INTO `customer_groups` (`id`, `name`, `percentage`, `status`, `created_at`, `updated_at`) VALUES
(1, 'General', 0, 1, '2020-01-18 03:08:02', '2020-01-18 03:08:02'),
(2, 'Reseller', 5, 1, '2020-01-18 03:09:14', '2020-01-18 03:09:14'),
(3, 'Nahin Khan', 10, 1, '2022-05-12 09:01:12', '2022-05-12 09:01:12');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eDate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` double NOT NULL,
  `added_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `code`, `store_id`, `reference`, `document`, `category`, `note`, `eDate`, `cost`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 'EX-1', NULL, NULL, NULL, 1, NULL, '2020-03-05', 10000, 4, '2020-03-08 16:22:10', '2020-03-08 16:22:10'),
(2, 'EX-2', NULL, 'Salary', NULL, 1, 'Sumon Driver = 18000\r\nRakib             = 8000\r\nSharif               = 10500', '2020-03-08', 36500, 4, '2020-03-11 20:06:06', '2020-03-11 20:06:06'),
(4, 'EX-3', NULL, 'Olympia 4T', NULL, 2, NULL, '2022-07-30', 1000, 1, '2022-07-30 08:13:21', '2022-07-30 08:13:21');

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `name`, `code`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Store Expense', 'CIMSEC-1', 'this is store expense', 1, '2020-01-18 01:42:51', '2020-01-18 01:42:51'),
(2, 'Other Expense', 'EC-2', '<p>asdf</p>', 1, '2022-05-12 09:23:53', '2022-05-12 09:23:53'),
(3, 'Nahin Khan', 'EC-3', NULL, 1, '2022-07-30 08:36:28', '2022-07-30 08:36:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_01_02_062848_create_admins_table', 2),
(8, '2020_01_16_064532_create_categories_table', 3),
(11, '2020_01_16_100509_create_brands_table', 4),
(12, '2020_01_17_131743_create_units_table', 5),
(13, '2020_01_18_065556_create_expense_categories_table', 6),
(14, '2020_01_18_082636_create_customer_groups_table', 7),
(15, '2020_01_18_095909_create_suppliers_table', 8),
(16, '2020_01_19_062947_create_customers_table', 9),
(17, '2020_01_19_094738_create_products_table', 10),
(18, '2020_01_20_061718_create_systems_table', 11),
(21, '2020_01_21_093546_create_expenses_table', 12),
(22, '2020_01_22_085039_create_stocks_table', 13),
(27, '2020_01_23_061832_create_sub_categories_table', 15),
(28, '2020_01_27_074328_create_stores_table', 16),
(29, '2020_01_28_111501_create_billers_table', 17),
(30, '2020_01_22_085144_create_purchases_table', 18),
(31, '2020_01_31_135530_create_purchase_product_lists_table', 18),
(32, '2020_02_02_063636_create_sales_table', 19),
(34, '2020_02_02_063954_create_sales_products_table', 20),
(35, '2020_02_10_120724_create_permission_tables', 21),
(36, '2020_02_23_153138_create_cheque_infos_table', 22),
(37, '2020_02_24_121326_create_sales_due_returns_table', 23),
(38, '2020_03_03_145228_create_payments_table', 24),
(39, '2020_09_10_140001_create_webcategories_table', 24),
(40, '2020_09_10_140959_create_webproducts_table', 24),
(41, '2020_09_10_161813_create_webcats_table', 25),
(42, '2020_09_10_161842_create_webpros_table', 25);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Admin', 1),
(1, 'App\\Admin', 4),
(1, 'App\\Admin', 5),
(1, 'App\\Admin', 6),
(2, 'App\\Admin', 3),
(3, 'App\\Admin', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salereference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchasereference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paidBy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pDate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transectionBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `reference`, `salereference`, `purchasereference`, `paidBy`, `amount`, `type`, `pDate`, `transectionBy`, `created_at`, `updated_at`) VALUES
(1, 'PAY-2022-05-11/1', 'IC-00000092', NULL, 'cash', 500, 'Received', '2022-05-11', '1', '2022-05-11 10:23:15', '2022-05-11 10:23:15'),
(2, 'PAY-2022-05-11/2', 'IC-00000092', NULL, 'cash', 500, 'Received', '2022-05-11', '1', '2022-05-11 10:28:59', '2022-05-11 10:28:59'),
(4, 'PAY-2022-05-12/3', 'IC-00000092', NULL, 'cash', 500, 'Received', '2022-05-12', '1', '2022-05-12 08:18:31', '2022-05-12 08:18:31'),
(6, 'PAY-2022-05-12/4', NULL, 'PUC-1', 'cash', 500, 'paid', '2022-05-12', '1', '2022-05-12 08:28:52', '2022-05-12 08:28:52'),
(7, 'PAY-2022-05-12/5', NULL, 'EX-3', 'cash', 500, 'paid', '2022-05-12', '1', '2022-05-12 08:30:03', '2022-05-12 08:30:03'),
(8, 'PAY-2022-06-20/6', 'IC-00000093', NULL, 'cash', 0, 'Received', '2022-06-20', '1', '2022-06-20 06:07:22', '2022-06-20 06:07:22'),
(9, 'PAY-2022-06-20/7', 'IC-00000094', NULL, 'cash', 400, 'Received', '2022-06-20', '1', '2022-06-20 06:36:14', '2022-06-20 06:36:14'),
(10, 'PAY-2022-06-26/8', 'IC-00000095', NULL, 'cash', 500, 'Received', '2022-06-26', '1', '2022-06-26 14:08:19', '2022-06-26 14:08:19'),
(11, 'PAY-2022-06-26/9', 'IC-00000096', NULL, 'cash', 1000, 'Received', '2022-06-26', '1', '2022-06-26 14:10:20', '2022-06-26 14:10:20'),
(12, 'PAY-2022-06-26/10', 'IC-00000097', NULL, 'cash', 1000, 'Received', '2022-06-26', '1', '2022-06-26 14:13:55', '2022-06-26 14:13:55'),
(13, 'PAY-2022-07-30/11', 'IC-00000097', NULL, 'cash', 250000, 'Received', '2022-07-30', '1', '2022-07-30 08:05:03', '2022-07-30 08:05:03'),
(14, 'PAY-2022-07-30/12', 'IC-00000098', NULL, 'cash', 120000, 'Received', '2022-07-30', '1', '2022-07-30 08:09:01', '2022-07-30 08:09:01'),
(15, 'PAY-2022-07-30/13', NULL, 'PUC-2', 'cash', 10000, 'paid', '2022-07-30', '1', '2022-07-30 08:11:50', '2022-07-30 08:11:50'),
(16, 'PAY-2022-07-30/14', NULL, 'PUC-3', 'cash', 10000, 'paid', '2022-07-30', '1', '2022-07-30 08:12:21', '2022-07-30 08:12:21'),
(17, 'PAY-2022-07-30/15', NULL, 'PUC-4', 'cash', 10000, 'paid', '2022-07-30', '1', '2022-07-30 08:12:40', '2022-07-30 08:12:40'),
(18, 'PAY-2022-07-30/16', NULL, 'EX-3', 'cash', 1000, 'paid', '2022-07-30', '1', '2022-07-30 08:13:21', '2022-07-30 08:13:21');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'add product', 'admin', '2020-02-10 07:44:16', '2020-02-10 07:44:16'),
(3, 'edit product', 'admin', '2020-02-11 10:01:40', '2020-02-11 10:01:40'),
(4, 'product list', 'admin', '2020-02-11 10:01:57', '2020-02-11 10:01:57'),
(5, 'print barcode', 'admin', '2020-02-11 10:02:32', '2020-02-11 10:02:32'),
(6, 'pos module', 'admin', '2020-02-11 10:03:41', '2020-02-11 10:03:41'),
(7, 'purchase list', 'admin', '2020-02-11 10:04:34', '2020-02-11 10:04:34'),
(8, 'add purchase', 'admin', '2020-02-11 10:04:34', '2020-02-11 10:04:34'),
(9, 'edit purchase', 'admin', '2020-02-11 10:04:34', '2020-02-11 10:04:34'),
(10, 'Add sale', 'admin', '2020-02-11 10:05:35', '2020-02-11 10:05:35'),
(11, 'sales list', 'admin', '2020-02-11 10:05:35', '2020-02-11 10:05:35'),
(12, 'edit sale', 'admin', '2020-02-11 10:05:35', '2020-02-11 10:05:35'),
(13, 'sale list', 'admin', '2020-02-11 10:06:36', '2020-02-11 10:06:36'),
(14, 'Add expense', 'admin', '2020-02-11 10:07:10', '2020-02-11 10:07:10'),
(15, 'edit expense', 'admin', '2020-02-11 10:07:10', '2020-02-11 10:07:10'),
(16, 'expense list', 'admin', '2020-02-11 10:08:59', '2020-02-11 10:08:59'),
(17, 'add customer', 'admin', '2020-02-11 10:08:59', '2020-02-11 10:08:59'),
(18, 'delete customer', 'admin', '2020-02-11 10:08:59', '2020-02-11 10:08:59'),
(19, 'edit customer', 'admin', '2020-02-11 10:08:59', '2020-02-11 10:08:59'),
(20, 'customer list', 'admin', '2020-02-11 10:10:10', '2020-02-11 10:10:10'),
(21, 'add supplier', 'admin', '2020-02-11 10:10:10', '2020-02-11 10:10:10'),
(22, 'delete supplier', 'admin', '2020-02-11 10:10:10', '2020-02-11 10:10:10'),
(23, 'edit supplier', 'admin', '2020-02-11 10:10:10', '2020-02-11 10:10:10'),
(24, 'supplier list', 'admin', '2020-02-11 10:10:10', '2020-02-11 10:10:10'),
(25, 'add biller', 'admin', '2020-02-11 10:14:07', '2020-02-11 10:14:07'),
(26, 'delete biller', 'admin', '2020-02-11 10:14:07', '2020-02-11 10:14:07'),
(27, 'edit biller', 'admin', '2020-02-11 10:14:07', '2020-02-11 10:14:07'),
(28, 'biller list', 'admin', '2020-02-11 10:14:07', '2020-02-11 10:14:07'),
(29, 'add user', 'admin', '2020-02-11 10:16:35', '2020-02-11 10:16:35'),
(30, 'delete user', 'admin', '2020-02-11 10:16:35', '2020-02-11 10:16:35'),
(31, 'edit user', 'admin', '2020-02-11 10:16:35', '2020-02-11 10:16:35'),
(32, 'user list', 'admin', '2020-02-11 10:16:35', '2020-02-11 10:16:35'),
(33, 'chnage permission', 'admin', '2020-02-11 10:16:35', '2020-02-11 10:16:35'),
(34, 'permission list', 'admin', '2020-02-11 10:16:35', '2020-02-11 10:16:35'),
(35, 'add user role', 'admin', '2020-02-11 10:16:35', '2020-02-11 10:16:35'),
(36, 'user role list', 'admin', '2020-02-11 10:16:35', '2020-02-11 10:16:35'),
(37, 'delete user role', 'admin', '2020-02-11 10:16:35', '2020-02-11 10:16:35'),
(38, 'system setting', 'admin', '2020-02-11 10:17:13', '2020-02-11 10:17:13'),
(39, 'delete product', 'admin', '2020-03-05 14:30:44', '2020-03-05 14:30:44');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier` int(11) DEFAULT NULL,
  `codeSymbology` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `subcategory` int(11) DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `brand` int(11) DEFAULT NULL,
  `purchase_price` int(11) NOT NULL,
  `sell_price` int(11) NOT NULL,
  `whole_sell` double DEFAULT 0,
  `start_inventory` int(10) DEFAULT 0,
  `start_cost` double NOT NULL DEFAULT 0,
  `alert_qty` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `code`, `slug`, `supplier`, `codeSymbology`, `category`, `subcategory`, `unit`, `brand`, `purchase_price`, `sell_price`, `whole_sell`, `start_inventory`, `start_cost`, `alert_qty`, `image`, `description`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Fomula1 paste wax 12.0z', 'PC-3', 'fomula1-paste-wax-120z', 0, NULL, 1, NULL, 8, 0, 380, 400, 400, 17700, 6785000, 12, NULL, NULL, 1, '2020-03-03 16:29:16', '2020-03-03 16:29:16'),
(4, 'Formula1 car wax 8.0z', 'PC-4', 'formula1-car-wax-80z', 0, NULL, 0, 0, 8, 1, 310, 350, 335, 16800, 5320000, 12, NULL, NULL, 1, '2020-03-03 16:31:53', '2020-03-03 16:31:53'),
(5, 'FORMULA WASH & WAX 473ml', 'PC-5', 'formula-wash-wax-473ml', 0, NULL, 0, 0, 8, 1, 250, 325, 300, 600, 150000, 12, NULL, NULL, 1, '2020-03-03 16:40:26', '2020-03-03 16:40:26'),
(6, 'Formula1 non frag protectant', 'PC-6', 'formula1-non-frag-protectant', 0, NULL, 1, NULL, 8, 1, 190, 230, 230, 600, 114000, NULL, NULL, NULL, 1, '2020-03-03 18:18:15', '2020-03-03 18:18:15'),
(7, 'Formula1 frag protectant', 'PC-7', 'formula1-frag-protectant', 0, NULL, 1, 0, 8, NULL, 270, 320, 300, 360, 97200, 12, NULL, NULL, 1, '2020-03-03 18:30:11', '2020-03-03 18:30:11'),
(8, 'FORMULA1 100 WASHES', 'PC-8', 'formula1-100-washes', 0, NULL, 1, 0, 8, NULL, 800, 950, 900, 360, 288000, NULL, NULL, NULL, 1, '2020-03-03 19:28:10', '2020-03-03 19:28:10'),
(9, 'Denso 2pin snail', 'PC-9', 'denso-2pin-snail', 0, NULL, 1, 0, 10, NULL, 730, 760, 760, 45, 0, NULL, NULL, NULL, 1, '2020-03-03 20:03:58', '2020-03-03 20:03:58'),
(10, 'Denso 1pin Disc', 'PC-10', 'denso-1pin-disc', NULL, NULL, 2, NULL, 10, NULL, 620, 650, 650, 30, 18600, 10, NULL, NULL, 1, '2020-03-08 15:59:46', '2020-03-08 15:59:46'),
(11, 'Denso 1pin snail', 'PC-11', 'denso-1pin-snail', NULL, NULL, 2, NULL, 4, NULL, 730, 780, 760, 50, 36500, NULL, NULL, NULL, 1, '2020-03-08 16:02:39', '2020-03-08 16:02:39'),
(12, 'Denso 2pin Disc', 'PC-12', 'denso-2pin-disc', NULL, NULL, 2, NULL, 10, NULL, 500, 550, 530, 40, 20000, 10, NULL, NULL, 1, '2020-03-08 16:08:12', '2020-03-08 16:08:12'),
(13, 'SEGER Horn 2pin Disc', 'PC-13', 'seger-horn-2pin-disc', NULL, NULL, 1, NULL, 10, NULL, 475, 500, 490, 120, 57000, 10, NULL, NULL, 1, '2020-03-08 16:10:05', '2020-03-08 16:10:05'),
(14, 'SEGER Horn 2pin snail', 'PC-14', 'seger-horn-2pin-snail', NULL, NULL, 2, NULL, 10, NULL, 475, 500, 490, 120, 57000, 10, NULL, NULL, 1, '2020-03-08 16:11:40', '2020-03-08 16:11:40'),
(15, 'Elephant Horn 2pin Disc', 'PC-15', 'elephant-horn-2pin-disc', NULL, NULL, 2, NULL, 10, NULL, 715, 780, 750, NULL, 0, NULL, NULL, NULL, 1, '2020-03-08 16:12:57', '2020-03-08 16:12:57'),
(16, 'Elephant Horn 1pin Disc', 'PC-16', 'elephant-horn-1pin-disc', NULL, NULL, 2, NULL, 10, NULL, 715, 780, 780, NULL, 0, NULL, NULL, NULL, 1, '2020-03-08 16:14:31', '2020-03-08 16:14:31'),
(17, 'OSK Horn Disc', 'PC-17', 'osk-horn-disc', NULL, NULL, 2, NULL, 10, NULL, 340, 380, 380, 20, 6800, 10, NULL, NULL, 1, '2020-03-08 16:19:20', '2020-03-08 16:19:20'),
(18, 'osk Horn snail', 'PC-18', 'osk-horn-snail', NULL, NULL, 2, NULL, 10, NULL, 340, 380, 380, 20, 6800, 10, NULL, NULL, 1, '2020-03-08 16:20:15', '2020-03-08 16:20:15'),
(19, 'Lubking 20w50 SL/CF', 'PC-19', 'lubking-20w50-slcf', NULL, NULL, 2, NULL, 8, 18, 1242, 1400, 1380, 31, 24840, 2, NULL, NULL, 1, '2020-03-09 16:44:14', '2020-03-09 16:44:14'),
(20, 'Lubking 0W20 SN/GF-5 ECO HYBRID Fully synthetic', 'PC-20', 'lubking-0w30-sngf-5-eco-hybrid-fully-synthetic', NULL, NULL, 2, NULL, 8, NULL, 1980, 2200, 2200, 4, 39600, NULL, NULL, NULL, 1, '2020-03-09 16:47:42', '2020-03-09 16:47:42'),
(21, 'Lubking 5W40 sn/gf Fully synthetic Eco-Drive', 'PC-21', 'lubking-5w40-sngf-fully-synthetic-eco-drive', NULL, NULL, 2, NULL, 8, NULL, 2430, 2700, 2700, 3, 38880, NULL, NULL, NULL, 1, '2020-03-09 16:55:47', '2020-03-09 16:55:47'),
(22, 'Lubking 10w30 API-SN PLUS', 'PC-22', 'lubking-10w30', NULL, NULL, 2, NULL, 8, NULL, 1575, 1750, 1750, 7, 0, NULL, NULL, NULL, 1, '2020-03-09 16:59:24', '2020-03-09 16:59:24'),
(23, 'PRO-10 ( ANTI RUST)', 'PC-23', 'pro-10-anti-rust', NULL, NULL, 2, NULL, 8, 14, 180, 220, 220, 3600, 0, 24, NULL, NULL, 1, '2020-03-09 18:38:26', '2020-03-09 18:38:26'),
(24, 'Carb & choke cleaner', 'PC-24', 'carb-choke-cleaner', NULL, NULL, 2, NULL, 8, NULL, 180, 220, 220, 600, 108000, 12, NULL, NULL, 1, '2020-03-09 18:39:44', '2020-03-09 18:39:44'),
(25, 'Havoline Formula', 'PC-25', 'havoline-formula', NULL, NULL, 2, NULL, 8, 19, 1280, 1300, 1300, 8, 10240, NULL, NULL, NULL, 1, '2020-03-10 13:43:52', '2020-03-10 13:43:52'),
(26, 'Havoline CNG', 'PC-26', 'havoline-cng', NULL, NULL, 2, NULL, 8, NULL, 1230, 1250, 1250, 8, 9840, NULL, NULL, NULL, 1, '2020-03-10 13:48:26', '2020-03-10 13:48:26'),
(27, 'shell Hx51270', 'PC-27', 'shell-hx51270', NULL, NULL, 2, NULL, 11, NULL, 1270, 1290, 1290, 8, 10160, NULL, NULL, NULL, 1, '2020-03-10 13:50:34', '2020-03-10 13:50:34'),
(28, 'Mobil special', 'PC-28', 'mobil-special', NULL, NULL, 2, NULL, 8, NULL, 1340, 1350, 1350, 16, 21440, NULL, NULL, NULL, 1, '2020-03-10 13:52:28', '2020-03-10 13:52:28'),
(29, 'Hundai GA500', 'PC-29', 'hundai-ga500', NULL, NULL, 2, NULL, 11, NULL, 1050, 1070, 1070, 8, 8400, NULL, NULL, NULL, 1, '2020-03-10 13:54:03', '2020-03-10 13:54:03'),
(30, 'Super v 5 Ltr', 'PC-30', 'super-v-5-ltr', NULL, NULL, 2, NULL, 11, NULL, 2100, 2120, 2120, 4, 8400, NULL, NULL, NULL, 1, '2020-03-10 14:02:12', '2020-03-10 14:02:12'),
(31, 'H4 Bulb 100/90', 'PC-31', 'h4-bulb-10090', NULL, NULL, 2, NULL, 8, NULL, 155, 170, 170, 100, 15500, NULL, NULL, NULL, 1, '2020-03-10 16:36:50', '2020-03-10 16:36:50'),
(32, 'E.D Bulb 1881', 'PC-32', 'ed-bulb-1881', NULL, NULL, 1, NULL, 8, NULL, 38, 45, 45, 2000, 76000, 10, NULL, NULL, 1, '2020-03-10 16:38:05', '2020-03-10 16:38:05'),
(33, 'super v 1Ltr', 'PC-33', 'super-v-1ltr', NULL, NULL, 2, NULL, 8, NULL, 440, 450, 450, 12, 5280, NULL, NULL, NULL, 1, '2020-03-10 17:44:10', '2020-03-10 17:44:10'),
(34, 'Havoline 10w30  1Ltr', 'PC-34', 'havoline-10w30-1ltr', NULL, NULL, 2, NULL, 8, NULL, 324, 330, 330, 24, 7776, NULL, NULL, NULL, 1, '2020-03-10 17:46:10', '2020-03-10 17:46:10'),
(35, 'Havoline 20w40  1Ltr', 'PC-35', 'havoline-20w40-1ltr', NULL, NULL, 2, NULL, 8, NULL, 324, 340, 340, 24, 7776, NULL, NULL, NULL, 1, '2020-03-10 17:50:27', '2020-03-10 17:50:27'),
(36, 'Havoline 20w50 1ltr', 'PC-36', 'havoline-20w50-1ltr', NULL, NULL, 2, NULL, 8, NULL, 324, 330, 330, 24, 7776, NULL, NULL, NULL, 1, '2020-03-10 17:55:26', '2020-03-10 17:55:26'),
(37, 'Havoline coolant', 'PC-37', 'havoline-coolant', NULL, NULL, 2, NULL, 8, 19, 800, 820, 820, 4, 3200, NULL, NULL, NULL, 1, '2020-03-10 20:02:39', '2020-03-10 20:02:39'),
(38, 'Lubking 5w30', 'PC-38', 'lubking-5w30', 1, NULL, 2, NULL, 8, NULL, 2520, 2800, 2800, NULL, 0, 2, NULL, NULL, 1, '2020-03-11 18:59:48', '2020-03-11 18:59:48'),
(39, 'MK 2183 y  2nz', 'PC-39', 'mk-2183-y-2nz', 1, NULL, 2, NULL, 10, 13, 722, 760, 760, NULL, 0, NULL, NULL, NULL, 1, '2020-03-12 11:28:08', '2020-03-12 11:28:08'),
(40, 'MK 2342', 'PC-40', 'mk-2342', 1, NULL, 2, NULL, 10, NULL, 760, 800, 800, NULL, 0, NULL, NULL, NULL, 1, '2020-03-12 11:29:16', '2020-03-12 11:29:16'),
(41, 'mk 2023 EE90 Y', 'PC-41', 'mk-2023-ee90-y', 1, NULL, 2, NULL, 10, NULL, 560, 590, 590, NULL, 0, 5, NULL, NULL, 1, '2020-03-12 11:33:27', '2020-03-12 11:33:27'),
(42, 'MK 2288 EE90/AE 100', 'PC-42', 'mk-2288-ee90ae-100', 1, NULL, 2, NULL, 10, NULL, 646, 680, 680, NULL, 0, NULL, NULL, NULL, 1, '2020-03-12 11:35:26', '2020-03-12 11:35:26'),
(43, 'MK 2232', 'PC-43', 'mk-2232', 1, NULL, 2, NULL, 10, NULL, 810, 850, 850, 8, 6480, NULL, NULL, NULL, 1, '2020-03-12 11:53:08', '2020-03-12 11:53:08'),
(44, 'MK 2358 PROVOX', 'PC-44', 'mk-2358-provox', 1, NULL, 2, NULL, 10, NULL, 1235, 1300, 1300, 3, 3705, NULL, NULL, NULL, 1, '2020-03-12 11:57:28', '2020-03-12 11:57:28'),
(45, 'MK 2378 1TR', 'PC-45', 'mk-2378-1tr', 1, NULL, 2, NULL, 10, NULL, 1615, 1700, 1700, 2, 3230, NULL, NULL, NULL, 1, '2020-03-12 11:59:12', '2020-03-12 11:59:12'),
(46, 'MK 2330 HIACE', 'PC-46', 'mk-2330-hiace', 1, NULL, 2, NULL, 10, NULL, 1710, 1800, 1800, NULL, 0, NULL, NULL, NULL, 1, '2020-03-12 12:00:49', '2020-03-12 12:00:49'),
(47, 'MK 2339 NOAH', 'PC-47', 'mk-2339-noah', 1, NULL, 2, NULL, 10, NULL, 1235, 1300, 1300, NULL, 0, NULL, NULL, NULL, 1, '2020-03-12 12:01:45', '2020-03-12 12:01:45'),
(48, 'mk 2252 Y Allion', 'PC-48', 'mk-2252-y-allion', 1, NULL, 2, NULL, 10, NULL, 930, 980, 980, 4, 3720, NULL, NULL, NULL, 1, '2020-03-12 12:03:46', '2020-03-12 12:03:46'),
(49, 'MK 2253 AXIO 2012', 'PC-49', 'mk-2253-axio-2012', 1, NULL, 2, NULL, 10, NULL, 1235, 1300, 1300, NULL, 0, NULL, NULL, NULL, 1, '2020-03-12 12:06:19', '2020-03-12 12:06:19'),
(50, 'MK 2174 PROVOX', 'PC-50', 'mk-2174-provox', 1, NULL, 2, NULL, 10, NULL, 695, 730, 730, NULL, 0, NULL, NULL, NULL, 1, '2020-03-12 12:08:52', '2020-03-12 12:08:52'),
(51, 'MK 2104 1TR', 'PC-51', 'mk-2104-1tr', 1, NULL, 2, NULL, 10, NULL, 820, 860, 860, 16, 13120, NULL, NULL, NULL, 1, '2020-03-12 12:12:38', '2020-03-12 12:12:38'),
(52, 'MK 2026 Y', 'PC-52', 'mk-2026-y', 1, NULL, 2, NULL, 10, NULL, 695, 730, 730, NULL, 0, NULL, NULL, NULL, 1, '2020-03-12 12:15:08', '2020-03-12 12:15:08'),
(53, 'mk 2217 y voxy', 'PC-53', 'mk-2217-y-voxy', 1, NULL, 2, NULL, 10, NULL, 1190, 1250, 1250, 6, 7140, NULL, NULL, NULL, 1, '2020-03-12 12:16:06', '2020-03-12 12:16:06'),
(54, '555 Ball joint 2nz 3642', 'PC-54', '555-ball-joint-2nz', 1, NULL, 2, NULL, 10, NULL, 2050, 2150, 2150, 11, 18450, 5, NULL, NULL, 1, '2020-03-12 15:55:56', '2020-03-12 15:55:56'),
(55, '555 Tie Rod 2nz 3641', 'PC-55', '555-tie-rod-2nz', 1, NULL, 2, NULL, 10, NULL, 1490, 1550, 1550, 1, 1490, 5, NULL, NULL, 1, '2020-03-12 15:57:45', '2020-03-12 15:57:45'),
(56, 'Hanger bush 2nz Big', 'PC-56', 'hanger-bush-2nz-big', 1, NULL, 2, NULL, 10, NULL, 275, 290, 290, NULL, 0, 20, NULL, NULL, 1, '2020-03-12 16:00:35', '2020-03-12 16:00:35'),
(57, 'Hanger bush 2nz small', 'PC-57', 'hanger-bush-2nz-small', 1, NULL, 2, NULL, 10, NULL, 180, 220, 220, NULL, 0, 12, NULL, NULL, 1, '2020-03-12 16:02:30', '2020-03-12 16:02:30'),
(58, 'Shock mounting 2nz (gen)', 'PC-58', 'shock-mounting-2nz-gen', 1, NULL, 2, NULL, 10, NULL, 1140, 1200, 1180, NULL, 0, 10, NULL, NULL, 1, '2020-03-12 16:03:22', '2020-03-12 16:03:22'),
(59, 'Shock mounting 2nz RBI', 'PC-59', 'shock-mounting-2nz-rbi', 1, NULL, 2, NULL, 10, NULL, 1140, 1200, 1180, NULL, 0, NULL, NULL, NULL, 1, '2020-03-12 16:04:44', '2020-03-12 16:04:44'),
(60, 'link assy kit 2nz RBI', 'PC-60', 'link-assy-kit-2nz-rbi', 1, NULL, 2, NULL, 10, NULL, 1140, 1180, 1180, NULL, 0, NULL, NULL, NULL, 1, '2020-03-12 16:05:38', '2020-03-12 16:05:38'),
(61, 'cv boot 2nz inner', 'PC-61', 'cv-boot-2nz-inner', 1, NULL, 2, NULL, 10, NULL, 245, 260, NULL, NULL, 0, NULL, NULL, NULL, 1, '2020-03-12 16:06:19', '2020-03-12 16:06:19'),
(62, 'cv boot outer', 'PC-62', 'cv-boot-outer', 1, NULL, 2, NULL, 11, NULL, 245, 260, 260, NULL, 0, NULL, NULL, NULL, 1, '2020-03-12 16:07:33', '2020-03-12 16:07:33'),
(63, 'link assy kit 2nz  copy', 'PC-63', 'link-assy-kit-2nz-copy', 1, NULL, 2, NULL, 10, NULL, 450, 550, 550, NULL, 0, NULL, NULL, NULL, 1, '2020-03-12 16:13:47', '2020-03-12 16:13:47'),
(64, 'stop power oil', 'PC-64', 'stop-power-oil', 1, NULL, 2, NULL, 8, NULL, 141, 150, 150, NULL, 0, NULL, NULL, NULL, 1, '2020-03-12 16:22:33', '2020-03-12 16:22:33'),
(65, 'stop fuel injection', 'PC-65', 'stop-fuel-injection', 1, NULL, 2, NULL, 8, NULL, 141, 150, 150, NULL, 0, NULL, NULL, NULL, 1, '2020-03-12 16:24:16', '2020-03-12 16:24:16'),
(66, 'stop octane booster', 'PC-66', 'stop-octane-booster', 1, NULL, 2, NULL, 10, NULL, 141, 150, 150, NULL, 0, NULL, NULL, NULL, 1, '2020-03-12 16:25:20', '2020-03-12 16:25:20'),
(67, 'stop oil treatment', 'PC-67', 'stop-oil-treatment', 1, NULL, 2, NULL, 8, NULL, 150, 160, 160, NULL, 0, NULL, NULL, NULL, 1, '2020-03-12 16:27:08', '2020-03-12 16:27:08'),
(68, 'seiken Brake oil', 'PC-68', 'seiken-brake-oil', 1, NULL, 2, NULL, 8, NULL, 1615, 170, 170, NULL, 0, NULL, NULL, NULL, 1, '2020-03-12 16:28:51', '2020-03-12 16:28:51'),
(69, 'TCL B.OIL', 'PC-69', 'tcl-boil', 1, NULL, 2, NULL, 8, NULL, 143, 150, 150, NULL, 0, NULL, NULL, NULL, 1, '2020-03-12 16:29:57', '2020-03-12 16:29:57'),
(70, 'Sakura B. oil', 'PC-70', 'sakura-b-oil', 1, NULL, 2, NULL, 8, NULL, 140, 145, 145, NULL, 0, NULL, NULL, NULL, 1, '2020-03-12 16:31:08', '2020-03-12 16:31:08'),
(71, 'Wagner B oil', 'PC-71', 'wagner-b-oil', 1, NULL, 2, NULL, 4, NULL, 125, 140, 140, NULL, 0, NULL, NULL, NULL, 1, '2020-03-12 16:31:57', '2020-03-12 16:31:57'),
(72, 'Air filter 22020', 'PC-72', 'air-filter-22020', 1, NULL, 2, NULL, 8, NULL, 40, 55, 55, NULL, 0, NULL, NULL, NULL, 1, '2020-03-12 16:34:51', '2020-03-12 16:34:51'),
(73, 'Air filter 21050', 'PC-73', 'air-filter-21050', 1, NULL, 2, NULL, 8, NULL, 40, 55, 55, NULL, 0, NULL, NULL, NULL, 1, '2020-03-12 16:36:00', '2020-03-12 16:36:00'),
(74, 'BMT 127  2NZ', 'PC-74', 'bmt-127-2nz', 1, NULL, 2, NULL, 8, NULL, 1300, 1500, 1500, NULL, 0, NULL, NULL, NULL, 1, '2020-03-12 16:38:25', '2020-03-12 16:38:25'),
(75, 'BMT 003 Probox', 'PC-75', 'bmt-003-probox', 1, NULL, 2, NULL, 8, NULL, 1300, 1500, 1500, NULL, 0, NULL, NULL, NULL, 1, '2020-03-12 16:39:40', '2020-03-12 16:39:40'),
(76, 'BMT 098 2HOLE', 'PC-76', 'bmt-098-2hole', 1, NULL, 2, NULL, 8, NULL, 1200, 1300, 1350, NULL, 0, NULL, NULL, NULL, 1, '2020-03-12 16:42:05', '2020-03-12 16:42:05'),
(77, 'BMT 020 NOAH', 'PC-77', 'bmt-020-noah', 1, NULL, 2, NULL, 8, NULL, 1300, 1500, 1500, NULL, 0, NULL, NULL, NULL, 1, '2020-03-12 16:43:08', '2020-03-12 16:43:08'),
(78, 'BMT AXIO COLD', 'PC-78', 'bmt-axio-cold', 1, NULL, 2, NULL, 8, NULL, 2000, 2200, 2200, NULL, 0, NULL, NULL, NULL, 1, '2020-03-12 16:45:47', '2020-03-12 16:45:47'),
(79, 'XL BEARING 4OBW12 JAPAN', 'PC-79', 'xl-bearing-4obw12-japan', 1, NULL, 2, NULL, 8, NULL, 1190, 1250, 1230, NULL, 0, NULL, NULL, NULL, 1, '2020-03-12 16:46:33', '2020-03-12 16:46:33'),
(81, 'XL BEARING 4OBW12 Thailand', 'PC-80', 'xl-bearing-4obw12-thailand', 1, NULL, 1, NULL, 8, NULL, 1000, 1050, 1050, 24, 24000, NULL, NULL, NULL, 1, '2020-03-14 12:10:41', '2020-03-14 12:10:41'),
(82, 'XL BEARING 38BW22 JAPAN', 'PC-82', 'xl-bearing-38bw22-japan', 1, NULL, 1, NULL, 8, NULL, 1200, 1250, 1250, NULL, 0, NULL, NULL, NULL, 1, '2020-03-14 15:45:00', '2020-03-14 15:45:00'),
(83, 'XL BEARING 38BW22 Thailand', 'PC-83', 'xl-bearing-38bw22-thailand', 1, NULL, 1, NULL, 8, NULL, 1045, 1100, 1100, 2, 2090, NULL, NULL, NULL, 1, '2020-03-14 15:46:03', '2020-03-14 15:46:03'),
(84, 'XL BEARING 38BW12 japan', 'PC-84', 'xl-bearing-38bw12-japan', 1, NULL, 1, NULL, 8, NULL, 855, 900, 900, NULL, 0, NULL, NULL, NULL, 1, '2020-03-14 15:47:04', '2020-03-14 15:47:04'),
(85, 'kyb 14/15 AE100 F', 'PC-85', 'kyb-1415', 1, NULL, 2, NULL, 10, NULL, 3500, 4000, 3800, NULL, 0, NULL, NULL, NULL, 1, '2020-03-14 16:24:03', '2020-03-14 16:24:03'),
(86, 'kyb 16/17 AE100  R', 'PC-86', 'kyb-1617-ae100-r', 1, NULL, 2, NULL, 10, NULL, 3500, 4000, 3800, NULL, 0, NULL, NULL, NULL, 1, '2020-03-14 16:25:12', '2020-03-14 16:25:12'),
(87, 'Kyb 307 2nz R', 'PC-87', 'kyb-307-2nz-r', 1, NULL, 2, NULL, 10, NULL, 2200, 2700, 2600, NULL, 0, NULL, NULL, NULL, 1, '2020-03-14 16:26:04', '2020-03-14 16:26:04'),
(88, 'kyb 407 probox', 'PC-88', 'kyb-407-probox', 1, NULL, 2, NULL, 10, NULL, 3500, 4000, 4000, 2, 7000, NULL, NULL, NULL, 1, '2020-03-14 16:26:52', '2020-03-14 16:26:52'),
(89, 'Air 30060 normal', 'PC-89', 'air-30060-normal', 1, NULL, 2, NULL, 8, NULL, 160, 250, 250, NULL, 0, NULL, NULL, NULL, 1, '2020-03-14 17:23:33', '2020-03-14 17:23:33'),
(90, 'Air filter 22020 blue', 'PC-90', 'air-filter-22020-blue', 1, NULL, 2, NULL, 8, NULL, 110, 130, 130, NULL, 0, NULL, NULL, NULL, 1, '2020-03-14 17:24:29', '2020-03-14 17:24:29'),
(91, 'Air fiilter 54100', 'PC-91', 'air-fiilter-54100', 1, NULL, 1, NULL, 8, NULL, 140, 160, 160, NULL, 0, NULL, NULL, NULL, 1, '2020-03-14 17:25:12', '2020-03-14 17:25:12'),
(92, 'Air filter 11050', 'PC-92', 'air-filter-11050', 1, NULL, 2, NULL, 8, NULL, 70, 90, 90, NULL, 0, NULL, NULL, NULL, 1, '2020-03-14 17:26:42', '2020-03-14 17:26:42'),
(93, 'Brake pad 47030 2nz', 'PC-93', 'brake-pad-47030-2nz', 1, NULL, 2, NULL, 10, NULL, 3000, 3050, 3050, 3, 9000, NULL, NULL, NULL, 1, '2020-03-15 18:29:03', '2020-03-15 18:29:03'),
(94, 'Brake pad yzzE3', 'PC-94', 'brake-pad-yzze3', 1, NULL, 2, NULL, 10, NULL, 3000, 3050, 3050, 5, 15000, NULL, NULL, NULL, 1, '2020-03-15 18:32:31', '2020-03-15 18:32:31'),
(95, 'Brake pad YZZR3', 'PC-95', 'brake-pad-yzzr3', 1, NULL, 1, NULL, 10, NULL, 3700, 3800, 3800, 4, 14800, NULL, NULL, NULL, 1, '2020-03-15 18:33:26', '2020-03-15 18:33:26'),
(96, 'Brake shoe 52040 2nz', 'PC-96', 'brake-shoe-52040-2nz', 1, NULL, 2, NULL, 10, NULL, 2100, 2200, 2200, 15, 31500, NULL, NULL, NULL, 1, '2020-03-15 18:37:22', '2020-03-15 18:37:22'),
(97, 'Air fiter Aqua Hybrid', 'PC-97', 'air-fiter-aqua-hybrid', 1, NULL, 2, NULL, 8, NULL, 200, 220, 220, NULL, 0, NULL, NULL, NULL, 1, '2020-03-15 18:42:23', '2020-03-15 18:42:23'),
(98, 'Brake shoe 52140 Genuine', 'PC-98', 'brake-shoe-52140-genuine', 1, NULL, 2, NULL, 10, NULL, 2100, 2150, 2150, NULL, 0, NULL, NULL, NULL, 1, '2020-03-15 19:01:30', '2020-03-15 19:01:30'),
(99, 'MK 2274 y  Allion new', 'PC-99', 'mk-2274-y-allion-new', 1, NULL, 2, NULL, 10, 13, 1285, 1350, 1350, 18, 23130, NULL, NULL, NULL, 1, '2020-03-15 19:03:42', '2020-03-15 19:03:42'),
(100, 'Radiator 12438 -A Axio single', 'PC-100', 'radiator-12438-a', 1, NULL, 2, NULL, 8, NULL, 2600, 2700, 2700, NULL, 0, NULL, NULL, NULL, 1, '2020-03-15 19:14:00', '2020-03-15 19:14:00'),
(101, 'Radiator 12105 1nz/2nz', 'PC-101', 'radiator-12105-1nz2nz', 1, NULL, 2, NULL, 8, NULL, 2500, 2600, 2600, NULL, 0, NULL, NULL, NULL, 1, '2020-03-15 19:16:09', '2020-03-15 19:16:09'),
(102, 'plugwire 12601', 'PC-102', 'plugwire-12601', 1, NULL, 2, NULL, 10, NULL, 3515, 3600, 3600, 3, 10545, NULL, NULL, NULL, 1, '2020-03-15 19:19:58', '2020-03-15 19:19:58'),
(103, 'plugwire 95', 'PC-103', 'plugwire-95', 1, NULL, 2, NULL, 10, NULL, 3325, 3450, 3450, 2, 6650, NULL, NULL, NULL, 1, '2020-03-15 19:21:15', '2020-03-15 19:21:15'),
(104, '555 Ball joint 3972 1tr', 'PC-104', '555-ball-joint-3972-1tr', 1, NULL, 2, NULL, 10, NULL, 2720, 2850, 2850, 10, 27200, NULL, NULL, NULL, 1, '2020-03-15 20:13:22', '2020-03-15 20:13:22'),
(105, '555 Rack end 1tr 3970', 'PC-105', '555-rack-end-1tr-3970', 1, NULL, 2, NULL, 10, NULL, 2210, 2300, 2300, 5, 11050, NULL, NULL, NULL, 1, '2020-03-15 20:15:45', '2020-03-15 20:15:45'),
(106, '555 Tie Rod End 1tr', 'PC-106', '555-tie-rod-end-1tr', 1, NULL, 2, NULL, 10, NULL, 1530, 1630, 1630, NULL, 0, NULL, NULL, NULL, 1, '2020-03-15 20:17:51', '2020-03-15 20:17:51'),
(107, 'Clutch cover 019 3sz', 'PC-107', 'clutch-cover-019-3sz', 1, NULL, 2, NULL, 8, NULL, 2710, 2800, 2800, 2, 5420, NULL, NULL, NULL, 1, '2020-03-15 20:37:56', '2020-03-15 20:37:56'),
(108, 'Thurst washer 7k 25', 'PC-108', 'thurst-washer-7k-25', 1, NULL, 2, NULL, 10, NULL, 210, 230, 230, 5, 1050, NULL, NULL, NULL, 1, '2020-03-15 20:39:53', '2020-03-15 20:39:53'),
(109, 'Thurst washer 3sz', 'PC-109', 'thurst-washer-3sz', 1, NULL, 2, NULL, 10, NULL, 252, 265, 265, 5, 1260, NULL, NULL, NULL, 1, '2020-03-15 20:41:12', '2020-03-15 20:41:12'),
(110, 'plug G. power', 'PC-110', 'plug-g-power', 1, NULL, 2, NULL, 10, NULL, 820, 850, 850, NULL, 0, NULL, NULL, NULL, 1, '2020-03-15 20:44:14', '2020-03-15 20:44:14'),
(111, 'plug 47 genuine', 'PC-111', 'plug-47-genuine', 1, NULL, 2, NULL, 8, NULL, 810, 820, 820, NULL, 0, NULL, NULL, NULL, 1, '2020-03-15 20:45:22', '2020-03-15 20:45:22'),
(112, '555 Ball joint 2942 EP80', 'PC-112', '555-ball-joint-2942-ep80', 1, NULL, 2, NULL, 10, 12, 1955, 2050, 2050, NULL, 0, NULL, NULL, NULL, 1, '2020-03-15 20:51:12', '2020-03-15 20:51:12'),
(113, 'Cluch plate 3sz Exedy 135', 'PC-113', 'cluch-plate-3sz-exedy', 1, NULL, 2, NULL, 8, NULL, 3200, 3300, 3300, NULL, 0, NULL, NULL, NULL, 1, '2020-03-16 10:27:59', '2020-03-16 10:27:59'),
(114, '555 Rack End 2920  copy', 'PC-114', '555-rack-end-2920-copy', 1, NULL, 2, NULL, 10, NULL, 1000, 1200, 1200, NULL, 0, NULL, NULL, NULL, 1, '2020-03-16 10:45:25', '2020-03-16 10:45:25'),
(115, 'Elephant Horn Big', 'PC-115', 'elephant-horn-big', 1, NULL, 2, NULL, 10, NULL, 950, 980, 980, 10, 9500, NULL, NULL, NULL, 1, '2020-03-16 11:22:51', '2020-03-16 11:22:51'),
(116, 'Chesis Bush (25-02240)', 'PC-116', 'chesis-bush-25-02240', 1, NULL, 2, NULL, 10, NULL, 740, 770, 770, NULL, 0, NULL, NULL, NULL, 1, '2020-03-16 11:23:39', '2020-03-16 11:23:39'),
(117, 'water pump 2nz genuine Toyota copy', 'PC-117', 'water-pump-2nz-genuine-toyota-copy', 1, NULL, 2, NULL, 8, NULL, 800, 1000, 1000, NULL, 0, NULL, NULL, NULL, 1, '2020-03-16 17:56:58', '2020-03-16 17:56:58'),
(118, 'water pump 2nz Aisin copy', 'PC-118', 'water-pump-2nz-aisin-copy', 1, NULL, 2, NULL, 8, NULL, 600, 650, 650, NULL, 0, NULL, NULL, NULL, 1, '2020-03-16 17:57:50', '2020-03-16 17:57:50'),
(119, 'Water pump 2nz GMB', 'PC-119', 'water-pump-2nz-gmb', 1, NULL, 2, NULL, 8, NULL, 1150, 1200, 1200, NULL, 0, NULL, NULL, NULL, 1, '2020-03-16 17:59:03', '2020-03-16 17:59:03'),
(120, 'water pump 2E Aisin copy', 'PC-120', 'water-pump-2e-aisin-copy', 1, NULL, 2, NULL, 8, NULL, 500, 550, 550, NULL, 0, NULL, NULL, NULL, 1, '2020-03-16 17:59:40', '2020-03-16 17:59:40'),
(121, 'water pump 1AZ Aisin copy', 'PC-121', 'water-pump-1az-aisin-copy', 1, NULL, 2, NULL, 8, NULL, 600, 700, 700, NULL, 0, NULL, NULL, NULL, 1, '2020-03-16 18:00:27', '2020-03-16 18:00:27'),
(122, 'water pump 4E Aisin copy', 'PC-122', 'water-pump-4e-aisin-copy', 1, NULL, 2, NULL, 8, NULL, 600, 600, 650, NULL, 0, NULL, NULL, NULL, 1, '2020-03-16 18:01:22', '2020-03-16 18:01:22'),
(123, 'water pump 1tr Aisin copy', 'PC-123', 'water-pump-1tr-aisin-copy', 1, NULL, 2, NULL, 8, NULL, 800, 1000, 1000, NULL, 0, NULL, NULL, NULL, 1, '2020-03-16 18:02:53', '2020-03-16 18:02:53'),
(124, 'Brake shoe 52040 2nz copy', 'PC-124', 'brake-shoe-52040-2nz-copy', 1, NULL, 2, NULL, 10, NULL, 500, 900, 900, NULL, 0, NULL, NULL, NULL, 1, '2020-03-16 18:05:23', '2020-03-16 18:05:23'),
(125, '555 link kit 3640 2nz', 'PC-125', '555-link-kit-3640-2nz', 1, NULL, 2, NULL, 10, NULL, 1870, 2000, 2000, 10, 18700, NULL, NULL, NULL, 1, '2020-03-16 18:45:03', '2020-03-16 18:45:03'),
(126, 'Head Gasket 4E 11070', 'PC-126', 'head-gasket-4e-11070', 1, NULL, 2, NULL, 8, NULL, 140, 200, 180, NULL, 0, NULL, NULL, NULL, 1, '2020-03-17 10:47:54', '2020-03-17 10:47:54'),
(127, 'Air filter Nissan X-tail old', 'PC-127', 'air-filter-nissan-x-tail-old', 1, NULL, 2, NULL, 8, NULL, 280, 300, 300, 3, 840, NULL, NULL, NULL, 1, '2020-03-18 15:35:59', '2020-03-18 15:35:59'),
(128, 'Air filter Nissan X-tail new/Hybrid (4B1AB)', 'PC-128', 'air-filter-nissan-x-tail-newhybrid-4b1ab', 1, NULL, 2, NULL, 8, NULL, 280, 320, 320, 3, 840, NULL, NULL, NULL, 1, '2020-03-18 15:41:07', '2020-03-18 15:41:07'),
(129, 'oil filter 82 mitsubishi', 'PC-129', 'oil-filter-82-mitsubishi', 1, NULL, 2, NULL, 8, NULL, 200, 230, 230, NULL, 0, NULL, NULL, NULL, 1, '2020-03-18 15:44:13', '2020-03-18 15:44:13'),
(130, 'oil filter uoo Nissan', 'PC-130', 'oil-filter-uoo-nissan', 1, NULL, 2, NULL, 8, NULL, 140, 160, 160, NULL, 0, NULL, NULL, NULL, 1, '2020-03-18 15:51:32', '2020-03-18 15:51:32'),
(131, 'oil filter 37 mmc', 'PC-131', 'oil-filter-37-mmc', 1, NULL, 2, NULL, 8, NULL, 140, 160, 160, NULL, 0, NULL, NULL, NULL, 1, '2020-03-18 15:53:18', '2020-03-18 15:53:18'),
(132, 'oil filter Nissan Foo', 'PC-132', 'oil-filter-nissan-foo', 1, NULL, 2, NULL, 8, NULL, 140, 160, 160, NULL, 0, NULL, NULL, NULL, 1, '2020-03-18 15:54:03', '2020-03-18 15:54:03'),
(133, 'Oil filter Hond vezel small', 'PC-133', 'oil-filter-hond-vezel-small', 1, NULL, 2, NULL, 8, NULL, 140, 160, 160, NULL, 0, NULL, NULL, NULL, 1, '2020-03-18 15:55:28', '2020-03-18 15:55:28'),
(134, 'Oil filter Hond vezel Big', 'PC-134', 'oil-filter-hond-vezel-big', 1, NULL, 2, NULL, 8, NULL, 140, 160, 160, NULL, 0, NULL, NULL, NULL, 1, '2020-03-18 15:56:08', '2020-03-18 15:56:08'),
(135, 'oil filter 900 mmc', 'PC-135', 'oil-filter-900-mmc', 1, NULL, 2, NULL, 8, NULL, 200, 230, 230, NULL, 0, NULL, NULL, NULL, 1, '2020-03-18 15:57:50', '2020-03-18 15:57:50'),
(136, 'Air fiter 50040 prado', 'PC-136', 'air-fiter-50040-prado', 1, NULL, 2, NULL, 8, NULL, 220, 250, 250, NULL, 0, NULL, NULL, NULL, 1, '2020-03-18 15:59:41', '2020-03-18 15:59:41'),
(137, 'Air filter 21060 Aqua', 'PC-137', 'air-filter-21060-aqua', 1, NULL, 2, NULL, 8, NULL, 220, 240, 240, NULL, 0, NULL, NULL, NULL, 1, '2020-03-18 16:09:34', '2020-03-18 16:09:34'),
(138, 'Air filter Honda vezel', 'PC-138', 'air-filter-honda-vezel', 1, NULL, 2, NULL, 8, NULL, 220, 240, 240, 1, 220, NULL, NULL, NULL, 1, '2020-03-18 16:10:34', '2020-03-18 16:10:34'),
(139, 'Air filter N-16', 'PC-139', 'air-filter-n-16', 1, NULL, 2, NULL, 8, NULL, 170, 200, 200, NULL, 0, NULL, NULL, NULL, 1, '2020-03-18 16:11:28', '2020-03-18 16:11:28'),
(140, 'Ac filter Honda vezel', 'PC-140', 'ac-filter-honda-vezel', 1, NULL, 2, NULL, 8, NULL, 150, 170, 170, NULL, 0, NULL, NULL, NULL, 1, '2020-03-18 16:12:36', '2020-03-18 16:12:36'),
(141, 'Sp 14/15 AE-100 Front', 'PC-141', 'sp-1415-ae-100-front', 1, NULL, 2, NULL, 10, NULL, 3050, 3300, 3300, NULL, 0, NULL, NULL, NULL, 1, '2020-03-18 19:31:09', '2020-03-18 19:31:09'),
(142, 'sp 16/17 AE 100 Rear', 'PC-142', 'sp-1617-ae-100-rear', 1, NULL, 2, NULL, 10, NULL, 3100, 3350, 3350, 21, 65100, NULL, NULL, NULL, 1, '2020-03-18 19:31:52', '2020-03-18 19:31:52'),
(143, 'sp 38/39 X-corolla  Front', 'PC-143', 'sp-3839-x-corolla-front', 1, NULL, 2, NULL, 10, NULL, 3100, 3400, 3400, 28, 86800, NULL, NULL, NULL, 1, '2020-03-18 19:32:57', '2020-03-18 19:32:57'),
(144, 'sp 307 X-corolla Rear', 'PC-144', 'sp-307-x-corolla-rear', 1, NULL, 2, NULL, 10, NULL, 2100, 2400, 2400, 6, 12600, NULL, NULL, NULL, 1, '2020-03-18 19:33:43', '2020-03-18 19:33:43'),
(145, 'sp 407 probox Front', 'PC-145', 'sp-407-probox-front', 1, NULL, 2, NULL, 10, NULL, 3100, 3350, 3350, 4, 12400, NULL, NULL, NULL, 1, '2020-03-18 19:37:15', '2020-03-18 19:37:15'),
(146, 'sp 97/98 ST190  Front', 'PC-146', 'sp-9798-st190-front', 1, NULL, 2, NULL, 10, NULL, 3050, 3300, 3300, 4, 12200, NULL, NULL, NULL, 1, '2020-03-18 19:38:57', '2020-03-18 19:38:57'),
(147, 'sp 63/64 Big CARINA TI', 'PC-147', 'sp-6364-big-carina-ti', 1, NULL, 2, NULL, 10, NULL, 3200, 3500, 3500, 8, 25600, NULL, NULL, NULL, 1, '2020-03-18 19:41:19', '2020-03-18 19:41:19'),
(148, 'Spring 2nz front', 'PC-148', 'spring-2nz-front', 1, NULL, 2, NULL, 10, NULL, 1500, 1600, 1600, NULL, 0, NULL, NULL, NULL, 1, '2020-03-19 10:10:19', '2020-03-19 10:10:19'),
(149, 'Spring 2nz Rear', 'PC-149', 'spring-2nz-rear', 1, NULL, 2, NULL, 10, NULL, 1500, 1600, 1600, NULL, 0, NULL, NULL, NULL, 1, '2020-03-19 10:10:58', '2020-03-19 10:10:58'),
(151, 'Spring AE-100 Front', 'PC-150', 'spring-ae-100-front', 1, NULL, 2, NULL, 10, NULL, 1500, 1600, 1600, NULL, 0, NULL, NULL, NULL, 1, '2020-03-19 10:13:54', '2020-03-19 10:13:54'),
(152, 'Spring AE-100 Rear', 'PC-152', 'spring-ae-100-rear', 1, NULL, 2, NULL, 10, NULL, 1500, 1600, 1600, NULL, 0, NULL, NULL, NULL, 1, '2020-03-19 10:14:34', '2020-03-19 10:14:34'),
(153, 'Spring EE-90 Rear', 'PC-153', 'spring-ee-90-rear', 1, NULL, 2, NULL, 4, NULL, 1500, 1600, 1600, NULL, 0, NULL, NULL, NULL, 1, '2020-03-19 10:15:15', '2020-03-19 10:15:15'),
(154, 'Spring probox Front', 'PC-154', 'spring-probox-front', 1, NULL, 2, NULL, 10, NULL, 1650, 1800, 1800, NULL, 0, NULL, NULL, NULL, 1, '2020-03-19 10:17:28', '2020-03-19 10:17:28'),
(155, 'Spring probox Rear', 'PC-155', 'spring-probox-rear', 1, NULL, 2, NULL, 10, NULL, 1650, 1800, 1800, NULL, 0, NULL, NULL, NULL, 1, '2020-03-19 10:18:07', '2020-03-19 10:18:07'),
(156, 'CV Joint 1051 NKN gen', 'PC-156', 'cv-joint-1051-nkn-gen', 1, NULL, 1, NULL, 10, NULL, 5100, 5200, 5200, NULL, 0, NULL, NULL, NULL, 1, '2020-03-19 10:19:17', '2020-03-19 10:19:17'),
(157, 'CV Joint 1257 2nz  NKN gen', 'PC-157', 'cv-joint-1257-2nz-nkn-gen', 1, NULL, 2, NULL, 10, NULL, 5300, 5400, 5400, NULL, 0, NULL, NULL, NULL, 1, '2020-03-19 10:20:11', '2020-03-19 10:20:11'),
(158, 'CV Joint 1257 2nz  NKN c', 'PC-158', 'cv-joint-1257-2nz-nkn-c', 1, NULL, 2, NULL, 10, NULL, 1600, 1750, 1750, NULL, 0, NULL, NULL, NULL, 1, '2020-03-19 10:21:18', '2020-03-19 10:21:18'),
(159, 'CV Joint 1051 EE90 NKN 2', 'PC-159', 'cv-joint-1051-ee90-nkn-2', 1, NULL, 2, NULL, 10, NULL, 1550, 1700, 1700, NULL, 0, NULL, NULL, NULL, 1, '2020-03-19 10:22:13', '2020-03-19 10:22:13'),
(160, 'MK 2118 Y AE-100', 'PC-160', 'mk-2118-y-ae-100', 1, NULL, 2, NULL, 10, 13, 790, 830, 830, NULL, 0, NULL, NULL, NULL, 1, '2020-03-19 10:29:13', '2020-03-19 10:29:13'),
(161, 'Ac filer 1nz 52010 N', 'PC-161', 'ac-filer-1nz-52010-n', 1, NULL, 2, NULL, 8, NULL, 31, 45, 45, NULL, 0, NULL, NULL, NULL, 1, '2020-03-19 10:58:39', '2020-03-19 10:58:39'),
(162, 'Ac filter 52020 NZT N', 'PC-162', 'ac-filter-52020-nzt-n', 1, NULL, 2, NULL, 8, NULL, 31, 45, 45, NULL, 0, NULL, NULL, NULL, 1, '2020-03-19 10:59:22', '2020-03-19 10:59:22'),
(163, 'Ac filter 52010 1st quality', 'PC-163', 'ac-filter-52010-1st-quality', 1, NULL, 2, NULL, 8, NULL, 150, 180, 180, NULL, 0, NULL, NULL, NULL, 1, '2020-03-19 11:01:34', '2020-03-19 11:01:34'),
(164, 'Ac filter 52020 1st quality', 'PC-164', 'ac-filter-52020-1st-quality', 1, NULL, 2, NULL, 8, NULL, 150, 200, 200, NULL, 0, NULL, NULL, NULL, 1, '2020-03-19 11:02:33', '2020-03-19 11:02:33'),
(165, 'Ac filter 52020 2nd', 'PC-165', 'ac-filter-52020-2nd', 1, NULL, 1, NULL, 8, NULL, 100, 120, 120, NULL, 0, NULL, NULL, NULL, 1, '2020-03-19 11:03:18', '2020-03-19 11:03:18'),
(166, 'Ac filter 52010 2nd', 'PC-166', 'ac-filter-52010-2nd', 1, NULL, 2, NULL, 8, NULL, 80, 100, 100, NULL, 0, NULL, NULL, NULL, 1, '2020-03-19 11:04:16', '2020-03-19 11:04:16'),
(167, 'ED bulb 1891', 'PC-167', 'ed-bulb-1891', 1, NULL, 2, NULL, 8, NULL, 38, 45, 45, NULL, 0, NULL, NULL, NULL, 1, '2020-03-19 11:24:23', '2020-03-19 11:24:23'),
(168, 'Ac fiter Nissan X tail EB70A', 'PC-168', 'ac-fiter-nissan-x-tail-eb70a', 1, NULL, 2, NULL, 4, NULL, 250, 280, 280, NULL, 0, NULL, NULL, NULL, 1, '2020-03-19 11:34:03', '2020-03-19 11:34:03'),
(169, 'Formula1 Fast wax', 'PC-169', 'formula1-fast-wax', 1, NULL, 1, NULL, 8, NULL, 450, 550, 550, NULL, 0, NULL, NULL, NULL, 1, '2020-03-19 11:48:06', '2020-03-19 11:48:06'),
(170, 'Hubs 02090 2nz', 'PC-170', 'hubs-02090-2nz', 1, NULL, 2, NULL, 10, NULL, 1600, 1750, 1750, NULL, 0, NULL, NULL, NULL, 1, '2020-03-21 10:02:10', '2020-03-21 10:02:10'),
(171, 'Hubs 26010 1TR', 'PC-171', 'hubs-26010-1tr', 1, NULL, 2, NULL, 8, NULL, 950, 1200, 1150, NULL, 0, NULL, NULL, NULL, 1, '2020-03-21 10:04:48', '2020-03-21 10:04:48'),
(172, 'Hubs 08020 Voxy', 'PC-172', 'hubs-08020-voxy', 1, NULL, 2, NULL, 10, NULL, 2100, 2500, 2300, NULL, 0, NULL, NULL, NULL, 1, '2020-03-21 10:05:55', '2020-03-21 10:05:55'),
(173, 'Hubs 0D060 provox', 'PC-173', 'hubs-0d060-provox', 1, NULL, 2, NULL, 8, NULL, 1550, 1700, 1700, NULL, 0, NULL, NULL, NULL, 1, '2020-03-21 10:07:55', '2020-03-21 10:07:55'),
(174, 'Overlink kit 21040 2nz', 'PC-174', 'overlink-kit-21040-2nz', 1, NULL, 2, NULL, 8, NULL, 800, 1000, 1000, NULL, 0, NULL, NULL, NULL, 1, '2020-03-21 11:32:57', '2020-03-21 11:32:57'),
(175, 'Overlink kit 11040 4E', 'PC-175', 'overlink-kit-11040-4e', 1, NULL, 2, NULL, 10, NULL, 800, 1000, 900, NULL, 0, NULL, NULL, NULL, 1, '2020-03-21 11:34:41', '2020-03-21 11:34:41'),
(176, 'Overlink kit 02090 5A', 'PC-176', 'overlink-kit-02090-5a', 1, NULL, 2, NULL, 10, NULL, 800, 900, 900, NULL, 0, NULL, NULL, NULL, 1, '2020-03-21 11:35:31', '2020-03-21 11:35:31'),
(177, 'Rack End 3640 2nz 1no', 'PC-177', 'rack-end-3640-2nz-1no', 1, NULL, 2, NULL, 10, 12, 1450, 1550, 1550, NULL, 0, NULL, NULL, NULL, 1, '2020-03-21 19:12:11', '2020-03-21 19:12:11'),
(178, 'Formula1 Mr leather spray 16.0z', 'PC-178', 'formula1-mr-leather-spray-160z', 1, NULL, 1, NULL, 8, NULL, 600, 700, 700, 24, 14400, NULL, NULL, NULL, 1, '2020-03-22 09:52:41', '2020-03-22 09:52:41'),
(179, 'Formula1 Mr Leather', 'PC-179', 'formula1-mr-leather', 1, NULL, 1, NULL, 8, NULL, 550, 600, 600, 24, 13200, NULL, NULL, NULL, 1, '2020-03-22 09:55:00', '2020-03-22 09:55:00'),
(180, 'Formula1 Glass Cleaner', 'PC-180', 'formula1-glass-cleaner', 1, NULL, 1, NULL, 8, NULL, 450, 500, 500, 60, 27000, NULL, NULL, NULL, 1, '2020-03-22 09:56:24', '2020-03-22 09:56:24'),
(181, 'Formul1 Scratch out 8.0z', 'PC-181', 'formul1-scratch-out-80z', 1, NULL, 1, NULL, 8, NULL, 450, 500, 500, 60, 27000, NULL, NULL, NULL, 1, '2020-03-22 09:58:00', '2020-03-22 09:58:00'),
(182, 'Gunk oil treatment', 'PC-182', 'gunk-oil-treatment', 1, NULL, 1, NULL, 8, NULL, 150, 180, 180, NULL, 0, NULL, NULL, NULL, 1, '2020-03-22 10:38:45', '2020-03-22 10:38:45'),
(183, 'Gunk motor Flush', 'PC-183', 'gunk-motor-flush', 1, NULL, 2, NULL, 8, NULL, 400, 450, 450, NULL, 0, NULL, NULL, NULL, 1, '2020-03-22 10:40:20', '2020-03-22 10:40:20'),
(184, 'Gunk Radiator Flush', 'PC-184', 'gunk-radiator-flush', 1, NULL, 1, NULL, 8, NULL, 200, 250, 250, NULL, 0, NULL, NULL, NULL, 1, '2020-03-22 10:41:38', '2020-03-22 10:41:38'),
(185, 'Gunk Fuel system Booster', 'PC-185', 'gunk-fuel-system-booster', 1, NULL, 1, NULL, 4, NULL, 350, 350, 350, NULL, 0, NULL, NULL, NULL, 1, '2020-03-22 10:44:24', '2020-03-22 10:44:24'),
(186, 'Gunk Fuel injector cleaner', 'PC-186', 'gunk-fuel-injector-cleaner', 1, NULL, 1, NULL, 8, NULL, 160, 180, 180, NULL, 0, NULL, NULL, NULL, 1, '2020-03-22 10:46:07', '2020-03-22 10:46:07'),
(187, 'Gunk Octane Booster', 'PC-187', 'gunk-octane-booster', 1, NULL, 1, NULL, 8, NULL, 200, 250, 250, NULL, 0, NULL, NULL, NULL, 1, '2020-03-22 10:48:20', '2020-03-22 10:48:20'),
(188, 'Gunk carpet & upholster cleaner', 'PC-188', 'gunk-carpet-upholster-cleaner', 1, NULL, 1, NULL, 8, NULL, 300, 450, 450, NULL, 0, NULL, NULL, NULL, 1, '2020-03-22 10:50:04', '2020-03-22 10:50:04'),
(189, 'Detail express DX-5', 'PC-189', 'detail-express-dx-5', 1, NULL, 1, NULL, 8, NULL, 1500, 2000, 2000, NULL, 0, NULL, NULL, NULL, 1, '2020-03-22 10:52:46', '2020-03-22 10:52:46'),
(190, 'Detail express DX-10', 'PC-190', 'detail-express-dx-10', 1, NULL, 1, NULL, 8, NULL, 1100, 1500, 1500, NULL, 0, NULL, NULL, NULL, 1, '2020-03-22 10:54:01', '2020-03-22 10:54:01'),
(191, 'Detail express DX-15', 'PC-191', 'detail-express-dx-15', 1, NULL, 1, NULL, 8, NULL, 1000, 1500, 1500, NULL, 0, NULL, NULL, NULL, 1, '2020-03-22 10:55:02', '2020-03-22 10:55:02'),
(192, 'Detail express DX-20', 'PC-192', 'detail-express-dx-20', 1, NULL, 1, NULL, 4, NULL, 1000, 2000, 2000, NULL, 0, NULL, NULL, NULL, 1, '2020-03-22 10:55:44', '2020-03-22 10:55:44'),
(193, 'plug 21 blue', 'PC-193', 'plug-21-blue', 1, NULL, 2, NULL, 8, NULL, 150, 170, 170, NULL, 0, NULL, NULL, NULL, 1, '2020-03-22 11:09:27', '2020-03-22 11:09:27'),
(194, 'plug 47 blue iridium', 'PC-194', 'plug-47-blue-iridium', 1, NULL, 2, NULL, 8, 2, 150, 170, 170, NULL, 0, NULL, NULL, NULL, 1, '2020-03-22 11:15:57', '2020-03-22 11:15:57'),
(195, 'plug 91 blue', 'PC-195', 'plug-91-blue', 1, NULL, 2, NULL, 8, NULL, 150, 170, 170, NULL, 0, NULL, NULL, NULL, 1, '2020-03-22 11:27:04', '2020-03-22 11:27:04'),
(196, 'plug 10 blue', 'PC-196', 'plug-10-blue', 1, NULL, 2, NULL, 8, NULL, 150, 170, 170, NULL, 0, NULL, NULL, NULL, 1, '2020-03-22 11:27:47', '2020-03-22 11:27:47'),
(197, 'plug 49 blue', 'PC-197', 'plug-49-blue', 1, NULL, 2, NULL, 8, NULL, 150, 170, 170, NULL, 0, NULL, NULL, NULL, 1, '2020-03-22 11:28:28', '2020-03-22 11:28:28'),
(198, 'plug 53 blue', 'PC-198', 'plug-53-blue', 1, NULL, 2, NULL, 8, NULL, 150, 170, 170, NULL, 0, NULL, NULL, NULL, 1, '2020-03-22 11:29:26', '2020-03-22 11:29:26'),
(199, 'plug 43 blue', 'PC-199', 'plug-43-blue', 1, NULL, 2, NULL, 8, NULL, 150, 170, 170, NULL, 0, NULL, NULL, NULL, 1, '2020-03-22 11:30:13', '2020-03-22 11:30:13'),
(200, 'plug 88 blue', 'PC-200', 'plug-88-blue', 1, NULL, 2, NULL, 8, NULL, 150, 170, 170, NULL, 0, NULL, NULL, NULL, 1, '2020-03-22 11:33:33', '2020-03-22 11:33:33'),
(201, 'plug 10 Normal', 'PC-201', 'plug-10-normal', 1, NULL, 2, NULL, 8, NULL, 110, 130, 130, NULL, 0, NULL, NULL, NULL, 1, '2020-03-22 11:34:58', '2020-03-22 11:34:58'),
(202, 'plug 43 Normal', 'PC-202', 'plug-43-normal', 1, NULL, 2, NULL, 8, NULL, 110, 130, 130, NULL, 0, NULL, NULL, NULL, 1, '2020-03-22 11:35:47', '2020-03-22 11:35:47'),
(203, 'plug 49 Normal', 'PC-203', 'plug-49-normal', 1, NULL, 2, NULL, 8, NULL, 120, 140, 130, NULL, 0, NULL, NULL, NULL, 1, '2020-03-22 11:39:36', '2020-03-22 11:39:36'),
(204, 'plug 53 Normal', 'PC-204', 'plug-53-normal', 1, NULL, 2, NULL, 8, NULL, 110, 130, 130, NULL, 0, NULL, NULL, NULL, 1, '2020-03-22 11:40:45', '2020-03-22 11:40:45'),
(205, 'Fuel pump Axio', 'PC-205', 'fuel-pump-axio', 1, NULL, 2, NULL, 8, NULL, 350, 450, 400, NULL, 0, NULL, NULL, NULL, 1, '2020-03-22 11:47:06', '2020-03-22 11:47:06'),
(207, 'Fuel pump 1tr', 'PC-206', 'fuel-pump-1tr', 1, NULL, 2, NULL, 8, NULL, 350, 500, 500, NULL, 0, NULL, NULL, NULL, 1, '2020-03-22 11:58:05', '2020-03-22 11:58:05'),
(208, 'Fuel pump Denso s/pin', 'PC-208', 'fuel-pump-denso-spin', 1, NULL, 2, NULL, 8, NULL, 370, 450, 450, NULL, 0, NULL, NULL, NULL, 1, '2020-03-22 12:08:07', '2020-03-22 12:08:07'),
(209, 'Denso 2pin Disc C', 'PC-209', 'denso-2pin-disc-c', 1, NULL, 2, NULL, 10, NULL, 350, 400, 400, NULL, 0, NULL, NULL, NULL, 1, '2020-03-22 16:42:30', '2020-03-22 16:42:30'),
(210, 'Denso 1pin Disc C', 'PC-210', 'denso-1pin-disc-c', 1, NULL, 2, NULL, 10, NULL, 400, 450, 450, NULL, 0, NULL, NULL, NULL, 1, '2020-03-22 16:43:42', '2020-03-22 16:43:42'),
(211, 'Denso 2pin snail C', 'PC-211', 'denso-2pin-snail-c', 1, NULL, 2, NULL, 10, NULL, 460, 500, 500, NULL, 0, NULL, NULL, NULL, 1, '2020-03-22 16:50:00', '2020-03-22 16:50:00'),
(213, 'Denso 1pin snail C', 'PC-212', 'denso-1pin-snail-c', 1, NULL, 2, NULL, 10, NULL, 500, 550, 550, NULL, 0, NULL, NULL, NULL, 1, '2020-03-22 16:51:35', '2020-03-22 16:51:35'),
(214, 'Oil filter YZZE1 genuine', 'PC-214', 'oil-filter-yzze1-genuine', 1, NULL, 2, NULL, 10, NULL, 285, 300, 300, NULL, 0, NULL, NULL, NULL, 1, '2020-03-22 16:52:54', '2020-03-22 16:52:54'),
(215, 'oil Filter YZZE1 C', 'PC-215', 'oil-filter-yzze1-c', 1, NULL, 2, NULL, 8, NULL, 95, 110, 110, NULL, 0, NULL, NULL, NULL, 1, '2020-03-22 16:54:33', '2020-03-22 16:54:33'),
(216, 'Radiator cap sankie  AE100', 'PC-216', 'radiator-cap-sankie-ae100', 1, NULL, 2, NULL, 8, NULL, 220, 240, 240, NULL, 0, NULL, NULL, NULL, 1, '2020-03-22 16:55:27', '2020-03-22 16:55:27'),
(217, 'Radiator cap sankie  EE90', 'PC-217', 'radiator-cap-sankie-ee90', 1, NULL, 2, NULL, 8, NULL, 220, 240, 240, NULL, 0, NULL, NULL, NULL, 1, '2020-03-22 16:56:10', '2020-03-22 16:56:10'),
(218, 'oil filter 10003 R', 'PC-218', 'oil-filter-10003-r', 1, NULL, 2, NULL, 8, NULL, 130, 170, 170, 3600, 468000, NULL, NULL, NULL, 1, '2020-03-22 17:04:53', '2020-03-22 17:04:53'),
(219, 'Grease Toyo Big', 'PC-219', 'grease-toyo-big', 2, NULL, 2, NULL, 8, NULL, 196, 220, 210, NULL, 0, NULL, NULL, NULL, 1, '2020-09-06 10:24:51', '2020-09-06 10:24:51'),
(220, 'Mr Leather spray', 'PC-220', 'mr-leather-spray', 1, NULL, 1, NULL, 8, NULL, 500, 800, 800, NULL, 0, NULL, NULL, NULL, 1, '2020-09-07 15:18:36', '2020-09-07 15:18:36'),
(221, 'Olympia 4T', 'PC-221', 'olympia-4t', 1, NULL, 4, 1, 12, 22, 230, 430, 400, 1000, 230000, 300, NULL, NULL, 1, '2022-07-30 08:02:38', '2022-07-30 08:02:38');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `grand_total` double NOT NULL,
  `discount` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `due` double DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `documents` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `import_by` int(11) DEFAULT NULL,
  `is_received` int(11) NOT NULL DEFAULT 0,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `code`, `biller_id`, `store_id`, `grand_total`, `discount`, `tax`, `paid_amount`, `due`, `note`, `documents`, `import_by`, `is_received`, `reference`, `purchase_date`, `supplier_id`, `created_at`, `updated_at`) VALUES
(2, 'PUC-1', NULL, 1, 190, 10, NULL, 500, -320, '<p>asdasf</p>', NULL, 1, 1, 'rajshahi', '2022-05-12', '2', '2022-05-12 08:28:52', '2022-05-12 08:28:52'),
(3, 'PUC-2', NULL, 1, 0, 50, NULL, 10000, -10050, NULL, NULL, 1, 1, NULL, '2022-07-30', '4', '2022-07-30 08:11:50', '2022-07-30 08:11:50'),
(4, 'PUC-3', NULL, 1, 0, 50, NULL, 10000, -10050, 'Olympia 4T', NULL, 1, 1, NULL, '2022-07-30', '4', '2022-07-30 08:12:21', '2022-07-30 08:12:21'),
(5, 'PUC-4', NULL, 1, 0, 50, NULL, 10000, -10050, 'Olympia 4T', NULL, 1, 1, 'Olympia 4T', '2022-07-30', '4', '2022-07-30 08:12:40', '2022-07-30 08:12:40');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_product_lists`
--

CREATE TABLE `purchase_product_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `unit_price` double NOT NULL,
  `qty` int(11) NOT NULL,
  `subtotal` double NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_product_lists`
--

INSERT INTO `purchase_product_lists` (`id`, `purchase_id`, `pro_id`, `unit_price`, `qty`, `subtotal`, `store_id`, `created_at`, `updated_at`) VALUES
(2, 2, 6, 190, 1, 190, 1, '2022-05-12 08:28:52', '2022-05-12 08:28:52');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'admin', '2020-02-10 06:33:38', '2020-02-10 06:33:38'),
(2, 'manager', 'admin', '2020-02-10 07:37:44', '2020-02-10 07:37:44'),
(3, 'customer', 'admin', '2020-09-10 07:54:24', '2020-09-10 07:54:24'),
(4, 'superv', 'admin', '2022-07-30 08:26:00', '2022-07-30 08:26:00');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(6, 2),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(10, 2),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(14, 2),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sales_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `grand_total` double NOT NULL,
  `discount` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `due` double DEFAULT NULL,
  `due_return` float DEFAULT 0,
  `payment_type` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cateated_by` int(11) NOT NULL,
  `sales_type` varchar(110) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `sales_date`, `code`, `biller_id`, `store_id`, `grand_total`, `discount`, `tax`, `paid_amount`, `due`, `due_return`, `payment_type`, `payment_note`, `cateated_by`, `sales_type`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, '2020-02-25', 'IC-00000001', 1, 1, 391, 50, 21, 300, 91, 91, 'cash', 'he ll pay on 3.3.20', 4, 'g', '2', '2020-02-25 13:35:44', '2020-02-25 13:35:44'),
(2, '2020-03-03', 'IC-00000002', 1, 1, 12850, 0, 0, 0, 12850, 0, 'cash', NULL, 4, 'g', '3', '2020-03-03 20:11:16', '2020-03-03 20:11:16'),
(3, '2020-03-03', 'IC-00000003', 1, 1, 9700, 100, 0, 0, 9700, 9700, 'cash', NULL, 4, 'g', '4', '2020-03-03 20:36:16', '2020-03-03 20:36:16'),
(4, '2020-03-03', 'IC-00000004', 1, 1, 237500, 2500, 0, 0, 237500, 237500, 'cash', NULL, 4, 'g', '5', '2020-03-03 20:45:13', '2020-03-03 20:45:13'),
(5, '2020-03-04', 'IC-00000005', 1, 1, 48000, 1000, 0, 0, 48000, 48000, 'cash', NULL, 4, 'g', '7', '2020-03-04 09:49:44', '2020-03-04 09:49:44'),
(6, '2020-03-04', 'IC-00000006', 1, 1, 240000, 5000, 0, 0, 240000, 90000, 'cash', NULL, 4, 'g', '6', '2020-03-04 10:15:02', '2020-03-04 10:15:02'),
(7, '2020-03-04', 'IC-00000007', 1, 1, 19000, 600, 0, 0, 19000, 19000, 'cash', NULL, 4, 'g', '8', '2020-03-04 11:52:46', '2020-03-04 11:52:46'),
(9, '2020-03-04', 'IC-00000009', 1, 1, 48000, 1000, 0, 0, 48000, 48000, 'cash', NULL, 4, 'g', '9', '2020-03-04 17:59:35', '2020-03-04 17:59:35'),
(10, '2020-03-05', 'IC-00000009', 1, 1, 48000, 2400, 0, 0, 48000, 48000, 'cash', 'ucb bank', 4, 'g', '10', '2020-03-05 15:42:14', '2020-03-05 15:42:14'),
(11, '2020-03-05', 'IC-00000010', 1, 1, 14400, 720, 0, 0, 14400, 14400, 'cash', NULL, 4, 'g', '11', '2020-03-05 18:13:57', '2020-03-05 18:13:57'),
(12, '2020-03-03', 'IC-00000011', 1, 1, 465000, 39000, 0, 0, 465000, 465000, 'cash', NULL, 4, 'g', '12', '2020-03-06 11:09:37', '2020-03-06 11:09:37'),
(13, '2020-03-03', 'IC-00000012', 1, 1, 245000, 7000, 0, 91000, 154000, 59000, 'cash', 'advance', 4, 'g', '13', '2020-03-06 11:36:12', '2020-03-06 11:36:12'),
(14, '2020-03-03', 'IC-00000013', 1, 1, 49200, 1200, 0, 0, 49200, 49200, 'cash', NULL, 4, 'g', '14', '2020-03-06 11:43:36', '2020-03-06 11:43:36'),
(15, '2020-03-05', 'IC-00000014', 1, 1, 2500, 20, 0, 0, 2500, 0, 'cash', 'Transfort costing', 4, 'g', '13', '2020-03-08 16:31:07', '2020-03-08 16:31:07'),
(17, '2020-03-03', 'IC-00000016', 1, 1, 13800, 480, 0, 7000, 6800, 2700, 'cash', NULL, 4, 'g', '1', '2020-03-08 17:00:25', '2020-03-08 17:00:25'),
(18, '2020-03-03', 'IC-00000017', 1, 1, 675000, 39000, 0, 0, 675000, 0, 'cash', NULL, 4, 'g', '1', '2020-03-08 17:04:26', '2020-03-08 17:04:26'),
(19, '2020-03-03', 'IC-00000018', 1, 1, 675000, 39000, 0, 0, 675000, 0, 'cash', NULL, 4, 'g', '17', '2020-03-08 17:06:12', '2020-03-08 17:06:12'),
(20, '2020-03-08', 'IC-00000019', 1, 1, 20000, 1000, 0, 20000, 0, 0, 'cash', 'paid by UCB', 4, 'g', '18', '2020-03-08 19:00:14', '2020-03-08 19:00:14'),
(21, '2020-03-04', 'IC-00000020', 1, 1, 240000, 0, 0, 50000, 190000, 0, 'cash', 'Advance', 4, 'g', '19', '2020-03-08 19:30:12', '2020-03-08 19:30:12'),
(23, '2020-03-08', 'IC-00000022', 1, 1, 92000, 1000, 0, 42000, 50000, 0, 'cash', NULL, 4, 'g', '20', '2020-03-08 20:05:39', '2020-03-08 20:05:39'),
(24, '2020-03-09', 'IC-00000023', 1, 1, 24000, 0, 0, 0, 24000, 24000, 'cash', NULL, 4, 'g', '21', '2020-03-09 13:21:21', '2020-03-09 13:21:21'),
(25, '2020-03-03', 'IC-00000024', 1, 1, 24000, 0, 0, 24000, 0, 0, 'cash', NULL, 4, 'g', '22', '2020-03-09 17:36:46', '2020-03-09 17:36:46'),
(26, '2020-03-03', 'IC-00000025', 1, 1, 5000, 40, 0, 0, 5000, 5000, 'cash', NULL, 4, 'g', '23', '2020-03-09 17:39:51', '2020-03-09 17:39:51'),
(27, '2020-03-03', 'IC-00000026', 1, 1, 8800, 200, 0, 8800, 0, 0, 'cash', NULL, 4, 'g', '24', '2020-03-09 17:45:40', '2020-03-09 17:45:40'),
(28, '2020-03-03', 'IC-00000027', 1, 1, 48000, 0, 0, 48000, 0, 0, 'cash', 'cheq paid 12.3.20 = 48000', 4, 'g', '25', '2020-03-09 17:57:58', '2020-03-09 17:57:58'),
(29, '2020-03-03', 'IC-00000028', 1, 1, 73500, 2100, 0, 0, 73500, 50000, 'cash', NULL, 4, 'g', '26', '2020-03-09 18:04:45', '2020-03-09 18:04:45'),
(30, '2020-03-04', 'IC-00000029', 1, 1, 26700, 60, 0, 0, 26700, 26700, 'cash', NULL, 4, 'g', '27', '2020-03-09 18:07:52', '2020-03-09 18:07:52'),
(31, '2020-03-04', 'IC-00000030', 1, 1, 25200, 0, 0, 25000, 200, 0, 'cash', NULL, 4, 'g', '28', '2020-03-09 18:16:15', '2020-03-09 18:16:15'),
(32, '2020-03-08', 'IC-00000031', 1, 1, 173000, 11800, 0, 0, 173000, 173000, 'cash', NULL, 4, 'g', '29', '2020-03-09 20:53:27', '2020-03-09 20:53:27'),
(33, '2020-03-03', 'IC-00000032', 1, 1, 265600, 5000, 0, 223000, 42600, 0, 'Cheque', 'CHEQ PAID', 4, 'g', '30', '2020-03-09 21:05:00', '2020-03-09 21:05:00'),
(34, '2020-03-10', 'IC-00000033', 1, 1, 24000, 0, 0, 0, 24000, 24000, 'cash', NULL, 4, 'g', '31', '2020-03-10 10:07:38', '2020-03-10 10:07:38'),
(35, '2020-03-10', 'IC-00000034', 1, 1, 17590, 0, 0, 0, 17590, 17590, 'cash', NULL, 4, 'g', '32', '2020-03-10 14:07:08', '2020-03-10 14:07:08'),
(36, '2020-03-10', 'IC-00000035', 1, 1, 46500, 60, 0, 45500, 1000, 0, 'cash', NULL, 4, 'g', '33', '2020-03-10 16:27:53', '2020-03-10 16:27:53'),
(37, '2020-03-10', 'IC-00000036', 1, 1, 78000, 0, 0, 0, 78000, 0, 'cash', NULL, 4, 'g', '1', '2020-03-10 16:29:52', '2020-03-10 16:29:52'),
(38, '2020-03-10', 'IC-00000037', 1, 1, 22850, 0, 0, 0, 22850, 22850, 'cash', NULL, 4, 'g', '34', '2020-03-10 20:10:48', '2020-03-10 20:10:48'),
(39, '2020-03-03', 'IC-00000038', 1, 1, 48000, 0, 0, 48000, 0, 0, 'cash', NULL, 4, 'g', '36', '2020-03-12 19:34:47', '2020-03-12 19:34:47'),
(40, '2020-03-12', 'IC-00000039', 1, 1, 48000, 0, 0, 0, 48000, 48000, 'cash', NULL, 4, 'g', '36', '2020-03-12 19:35:31', '2020-03-12 19:35:31'),
(41, '2020-03-04', 'IC-00000040', 1, 1, 57600, 0, 0, 0, 57600, 30000, 'cash', NULL, 4, 'g', '37', '2020-03-12 19:38:25', '2020-03-12 19:38:25'),
(42, '2020-03-12', 'IC-00000041', 1, 1, 24000, 0, 0, 0, 24000, 24000, 'cash', NULL, 4, 'g', '38', '2020-03-12 19:40:44', '2020-03-12 19:40:44'),
(43, '2020-03-12', 'IC-00000042', 1, 1, 28200, 600, 0, 28200, 0, 0, 'cash', NULL, 4, 'g', '39', '2020-03-12 19:50:28', '2020-03-12 19:50:28'),
(44, '2020-03-12', 'IC-00000043', 1, 1, 11210371, 29, 0, 0, 11210371, 0, 'cash', NULL, 4, 'g', '29', '2020-03-12 20:01:20', '2020-03-12 20:01:20'),
(45, '2020-03-02', 'IC-00000044', 1, 1, 25200, 0, 0, 0, 25200, 0, 'cash', NULL, 4, 'g', '42', '2020-03-14 16:53:10', '2020-03-14 16:53:10'),
(46, '2020-03-14', 'IC-00000045', 1, 1, 2350, 0, 0, 2350, 0, 0, 'cash', NULL, 4, 'g', '1', '2020-03-14 18:23:20', '2020-03-14 18:23:20'),
(47, '2020-03-14', 'IC-00000046', 1, 1, 5400, 0, 0, 5400, 0, 0, 'cash', NULL, 4, 'g', '1', '2020-03-14 20:24:07', '2020-03-14 20:24:07'),
(48, '2020-03-15', 'IC-00000047', 1, 1, 3520, 80, 0, 0, 3520, 0, 'cash', NULL, 1, 'g', '43', '2020-03-15 18:19:22', '2020-03-15 18:19:22'),
(49, '2020-03-10', 'IC-00000048', 1, 1, 22490, 0, 0, 0, 22490, 43600, 'cash', NULL, 1, 'g', '32', '2020-03-15 19:05:21', '2020-03-15 19:05:21'),
(50, '2020-03-15', 'IC-00000049', 1, 1, 84385, 0, 0, 0, 84385, 0, 'cash', NULL, 1, 'g', '35', '2020-03-15 20:56:46', '2020-03-15 20:56:46'),
(51, '2020-03-15', 'IC-00000050', 1, 1, 70100, 325, 0, 0, 70100, 0, 'cash', NULL, 1, 'g', '35', '2020-03-16 11:15:00', '2020-03-16 11:15:00'),
(52, '2020-03-16', 'IC-00000051', 1, 1, 11220, 0, 0, 0, 11220, 0, 'cash', NULL, 4, 'g', '45', '2020-03-16 13:07:56', '2020-03-16 13:07:56'),
(53, '2020-03-16', 'IC-00000052', 1, 1, 5800, 0, 0, 0, 5800, 9360, 'cash', NULL, 4, 'g', '44', '2020-03-16 13:12:38', '2020-03-16 13:12:38'),
(54, '2020-03-11', 'IC-00000053', 1, 1, 3560, 0, 0, 0, 3560, 1370, 'cash', NULL, 4, 'g', '44', '2020-03-16 14:03:38', '2020-03-16 14:03:38'),
(55, '2020-03-16', 'IC-00000054', 1, 1, 3580, 0, 0, 0, 3580, 0, 'cash', NULL, 4, 'g', '34', '2020-03-16 14:04:37', '2020-03-16 14:04:37'),
(56, '2020-03-14', 'IC-00000055', 1, 1, 900, 0, 0, 0, 900, 0, 'cash', NULL, 4, 'g', '1', '2020-03-16 14:05:49', '2020-03-16 14:05:49'),
(57, '2020-03-16', 'IC-00000056', 1, 1, 1370, 30, 0, 0, 1370, 0, 'cash', NULL, 4, 'g', '44', '2020-03-16 14:10:00', '2020-03-16 14:10:00'),
(58, '2020-03-16', 'IC-00000057', 1, 1, 9410, 0, 0, 0, 9410, 0, 'cash', NULL, 4, 'g', '46', '2020-03-16 17:55:01', '2020-03-16 17:55:01'),
(59, '2020-03-16', 'IC-00000058', 1, 1, 19200, 0, 0, 0, 19200, 19200, 'cash', NULL, 4, 'g', '47', '2020-03-16 18:09:54', '2020-03-16 18:09:54'),
(60, '2020-03-15', 'IC-00000059', 1, 1, 25760, 16, 0, 0, 25760, 0, 'cash', NULL, 4, 'g', '48', '2020-03-16 18:21:39', '2020-03-16 18:21:39'),
(61, '2020-03-16', 'IC-00000060', 1, 1, 19500, 0, 0, 0, 19500, 0, 'cash', NULL, 4, 'g', '35', '2020-03-16 18:46:06', '2020-03-16 18:46:06'),
(62, '2020-03-03', 'IC-00000061', 1, 1, 46080, 600, 0, 0, 46080, 20000, 'cash', NULL, 4, 'g', '49', '2020-03-17 10:28:56', '2020-03-17 10:28:56'),
(63, '2020-03-03', 'IC-00000062', 1, 1, 105800, 400, 0, 0, 105800, 105800, 'cash', NULL, 4, 'g', '50', '2020-03-17 10:40:07', '2020-03-17 10:40:07'),
(64, '2020-03-04', 'IC-00000063', 1, 1, 24000, 0, 0, 24000, 0, 0, 'cash', 'CHq paid', 4, 'g', '51', '2020-03-17 10:43:24', '2020-03-17 10:43:24'),
(65, '2020-03-05', 'IC-00000064', 1, 1, 900, 0, 0, 0, 900, 900, 'cash', NULL, 4, 'g', '50', '2020-03-17 10:48:51', '2020-03-17 10:48:51'),
(66, '2020-03-08', 'IC-00000065', 1, 1, 80000, 4000, 0, 0, 80000, 80000, 'cash', NULL, 4, 'g', '52', '2020-03-17 10:54:14', '2020-03-17 10:54:14'),
(67, '2020-03-08', 'IC-00000066', 1, 1, 40000, 2000, 0, 0, 40000, 14410, 'cash', NULL, 4, 'g', '52', '2020-03-17 11:03:58', '2020-03-17 11:03:58'),
(68, '2020-03-17', 'IC-00000067', 1, 1, 1400, 0, 0, 1400, 0, 0, 'cash', NULL, 4, 'g', '1', '2020-03-17 12:26:34', '2020-03-17 12:26:34'),
(69, '2020-03-14', 'IC-00000068', 1, 1, 7600, 0, 0, 0, 7600, 5000, 'cash', NULL, 4, 'g', '53', '2020-03-17 12:44:57', '2020-03-17 12:44:57'),
(70, '2020-03-18', 'IC-00000069', 1, 1, 2700, 0, 0, 0, 2700, 0, 'cash', 'Sahid motor TMC', 4, 'g', '1', '2020-03-18 15:16:54', '2020-03-18 15:16:54'),
(71, '2020-03-19', 'IC-00000070', 1, 1, 5640, 0, 0, 0, 5640, 0, 'cash', NULL, 4, 'g', '32', '2020-03-19 11:12:40', '2020-03-19 11:12:40'),
(72, '2020-03-14', 'IC-00000071', 1, 1, 17750, 0, 0, 0, 17750, 0, 'cash', NULL, 4, 'g', '32', '2020-03-19 11:26:51', '2020-03-19 11:26:51'),
(73, '2020-03-19', 'IC-00000072', 1, 1, 1080, 0, 0, 0, 1080, 0, 'cash', NULL, 4, 'g', '50', '2020-03-19 16:44:23', '2020-03-19 16:44:23'),
(74, '2020-03-19', 'IC-00000073', 1, 1, 23820, 0, 0, 0, 23820, 0, 'cash', NULL, 4, 'g', '54', '2020-03-19 18:16:23', '2020-03-19 18:16:23'),
(75, '2020-03-03', 'IC-00000074', 1, 1, 48000, 0, 0, 48000, 0, 0, 'cash', NULL, 4, 'g', '55', '2020-03-19 19:48:28', '2020-03-19 19:48:28'),
(76, '2020-03-03', 'IC-00000075', 1, 1, 0, 0, 0, 48000, -48000, 0, 'cash', NULL, 4, 'g', '55', '2020-03-19 19:48:45', '2020-03-19 19:48:45'),
(77, '2020-03-18', 'IC-00000076', 1, 1, 48000, 0, 0, 48000, 0, 0, 'Cheque', NULL, 4, 'g', '55', '2020-03-19 19:50:29', '2020-03-19 19:50:29'),
(78, '2020-03-21', 'IC-00000077', 1, 1, 19100, 100, 0, 19100, 0, 0, 'cash', NULL, 4, 'g', '56', '2020-03-21 09:34:43', '2020-03-21 09:34:43'),
(79, '2020-03-21', 'IC-00000078', 1, 1, 15040, 0, 0, 0, 15040, 0, 'cash', NULL, 4, 'g', '59', '2020-03-21 10:10:07', '2020-03-21 10:10:07'),
(80, '2020-03-21', 'IC-00000079', 1, 1, 0, 0, 0, 0, 0, 0, 'cash', NULL, 4, 'g', '59', '2020-03-21 10:11:45', '2020-03-21 10:11:45'),
(81, '2020-03-21', 'IC-00000080', 1, 1, 33140, 0, 0, 0, 33140, 0, 'cash', NULL, 4, 'g', '35', '2020-03-21 10:40:56', '2020-03-21 10:40:56'),
(82, '2020-03-21', 'IC-00000081', 1, 1, 8350, 0, 0, 0, 8350, 0, 'cash', NULL, 4, 'g', '61', '2020-03-21 10:53:56', '2020-03-21 10:53:56'),
(83, '2020-03-21', 'IC-00000082', 1, 1, 240000, 0, 0, 0, 240000, 0, 'cash', NULL, 4, 'g', '6', '2020-03-21 12:02:17', '2020-03-21 12:02:17'),
(84, '2020-03-21', 'IC-00000083', 1, 1, 51480, 120, 0, 0, 51480, 0, 'cash', NULL, 4, 'g', '63', '2020-03-21 12:24:42', '2020-03-21 12:24:42'),
(85, '2020-03-21', 'IC-00000084', 1, 1, 11340, 0, 0, 0, 11340, 0, 'cash', NULL, 4, 'g', '109', '2020-03-21 19:04:06', '2020-03-21 19:04:06'),
(86, '2020-03-21', 'IC-00000085', 1, 1, 57400, 0, 0, 0, 57400, 0, 'cash', NULL, 4, 'g', '114', '2020-03-21 19:14:27', '2020-03-21 19:14:27'),
(87, '2020-03-10', 'IC-00000086', 1, 1, 13050, 0, 0, 0, 13050, 0, 'cash', NULL, 4, 'g', '135', '2020-03-22 11:18:01', '2020-03-22 11:18:01'),
(88, '2020-03-10', 'IC-00000087', 1, 1, 0, 0, 0, 0, 0, 0, 'cash', NULL, 4, 'g', '135', '2020-03-22 11:21:32', '2020-03-22 11:21:32'),
(89, '2020-03-22', 'IC-00000088', 1, 1, 14200, 0, 0, 0, 14200, 14200, 'cash', NULL, 4, 'g', '145', '2020-03-22 17:17:26', '2020-03-22 17:17:26'),
(90, '2020-03-23', 'IC-00000089', 1, 1, 400000, 0, 0, 200000, 200000, 0, 'cash', NULL, 4, 'g', '144', '2020-03-23 11:08:52', '2020-03-23 11:08:52'),
(91, '2020-08-19', 'IC-00000090', 1, 1, 43920, 0, 0, 432920, -389000, 0, 'cash', NULL, 4, 'g', '33', '2020-09-04 05:13:52', '2020-09-04 05:13:52'),
(92, '2020-09-09', 'IC-00000091', 1, 1, 35550, 3950, 0, 0, 35550, 0, 'cash', 'sales return', 4, 'g', '71', '2020-09-09 05:40:20', '2020-09-09 05:40:20'),
(94, '2022-05-11', 'IC-00000092', 1, 1, 241.5, 0, 11.5, 500, -258.5, 0, 'cash', NULL, 1, '1', '146', '2022-05-11 10:28:59', '2022-05-11 10:28:59'),
(96, '2022-05-12', 'IC-00000092', 1, 1, 750, 0, 0, 500, 250, 0, 'cash', NULL, 1, 'g', '1', '2022-05-12 08:18:31', '2022-05-12 08:18:31'),
(97, '2022-06-20', 'IC-00000093', 1, 1, 400, 0, 0, 0, 400, 0, 'cash', NULL, 1, '1', '1', '2022-06-20 06:07:22', '2022-06-20 06:07:22'),
(98, '2022-06-20', 'IC-00000094', 1, 1, 400, 0, 0, 400, 0, 0, 'cash', NULL, 1, '1', '1', '2022-06-20 06:36:14', '2022-06-20 06:36:14'),
(99, '2022-06-26', 'IC-00000095', 1, 1, 350, 0, 0, 500, -150, 0, 'cash', NULL, 1, '1', '1', '2022-06-26 14:08:19', '2022-06-26 14:08:19'),
(100, '2022-06-26', 'IC-00000096', 1, 1, 950, 0, 0, 1000, -50, 0, 'cash', NULL, 1, '1', '1', '2022-06-26 14:10:20', '2022-06-26 14:10:20'),
(101, '2022-06-26', 'IC-00000097', 1, 1, 400, 0, 0, 1000, -600, 0, 'cash', NULL, 1, 'g', '1', '2022-06-26 14:13:55', '2022-06-26 14:13:55'),
(102, '2022-07-30', 'IC-00000097', 1, 1, 247250, 0, 32250, 250000, -2750, 0, 'cash', NULL, 1, '1', '1', '2022-07-30 08:05:03', '2022-07-30 08:05:03'),
(103, '2022-07-30', 'IC-00000098', 1, 1, 119970, 9030, 0, 120000, -30, 0, 'cash', NULL, 1, 'g', '1', '2022-07-30 08:09:01', '2022-07-30 08:09:01');

-- --------------------------------------------------------

--
-- Table structure for table `sales_due_returns`
--

CREATE TABLE `sales_due_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `paid_amount` double NOT NULL,
  `current_due` double NOT NULL,
  `balance` double NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_date` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_due_returns`
--

INSERT INTO `sales_due_returns` (`id`, `customer_id`, `paid_amount`, `current_due`, `balance`, `payment_method`, `payment_note`, `paid_date`, `created_at`, `updated_at`) VALUES
(1, 8, 19000, 19000, 0, 'cash', NULL, '2020-03-03', '2020-03-04 12:05:07', '2020-03-04 12:05:07'),
(2, 4, 9700, 9700, 0, 'cash', NULL, '2020-03-04', '2020-03-04 14:00:00', '2020-03-04 14:00:00'),
(3, 1, 10800, 10800, 0, 'cash', NULL, '2020-03-04', '2020-03-04 14:15:10', '2020-03-04 14:15:10'),
(4, 5, 237500, 237500, 0, 'cash', NULL, '2020-03-04', '2020-03-04 17:43:00', '2020-03-04 17:43:00'),
(5, 7, 48000, 48000, 0, 'cash', NULL, '2020-03-04', '2020-03-04 17:43:38', '2020-03-04 17:43:38'),
(7, 2, 91, 91, 0, 'cash', NULL, '2020-03-05', '2020-03-05 14:15:39', '2020-03-05 14:15:39'),
(8, 10, 48000, 48000, 0, 'cash', NULL, '2020-03-05', '2020-03-06 10:52:40', '2020-03-06 10:52:40'),
(9, 9, 48000, 48000, 0, 'cash', NULL, '2020-03-05', '2020-03-06 10:53:18', '2020-03-06 10:53:18'),
(10, 12, 460000, 465000, 5000, 'cash', NULL, '2020-03-03', '2020-03-06 11:10:28', '2020-03-06 11:10:28'),
(11, 12, 3000, 5000, 2000, 'cash', NULL, '2020-03-05', '2020-03-06 11:10:53', '2020-03-06 11:10:53'),
(12, 12, 2000, 2000, 0, 'cash', 'EiD Bonus', '2020-03-05', '2020-03-06 11:12:09', '2020-03-06 11:12:09'),
(13, 13, 9000, 165500, 156500, 'cash', NULL, '2020-03-05', '2020-03-08 16:35:33', '2020-03-08 16:35:33'),
(14, 14, 1200, 49200, 48000, 'cash', NULL, '2020-03-08', '2020-03-08 16:44:35', '2020-03-08 16:44:35'),
(15, 14, 48000, 48000, 0, 'cash', 'cheq uttra bank 15/3/20', '2020-03-15', '2020-03-09 16:33:43', '2020-03-09 16:33:43'),
(16, 27, 26700, 26700, 0, 'cash', NULL, '2020-03-04', '2020-03-09 18:08:29', '2020-03-09 18:08:29'),
(17, 21, 24000, 24000, 0, 'cash', NULL, '2020-03-09', '2020-03-09 20:17:24', '2020-03-09 20:17:24'),
(18, 11, 14400, 14400, 0, 'cash', NULL, '2020-03-09', '2020-03-10 18:29:18', '2020-03-10 18:29:18'),
(19, 31, 24000, 24000, 0, 'cash', NULL, '2020-03-24', '2020-03-11 17:14:34', '2020-03-11 17:14:34'),
(20, 29, 173000, 11383371, 11210371, 'cash', 'adjustment payment', '2020-03-12', '2020-03-12 20:02:35', '2020-03-12 20:02:35'),
(21, 40, 50000, 441500, 391500, 'cash', 'Exim bank 2004', '2020-03-12', '2020-03-12 20:16:53', '2020-03-12 20:16:53'),
(22, 37, 30000, 57600, 27600, 'cash', NULL, '2020-03-14', '2020-03-14 09:34:50', '2020-03-14 09:34:50'),
(23, 34, 22850, 22850, 0, 'cash', 'chq paid for mobil', '2020-03-17', '2020-03-14 16:59:08', '2020-03-14 16:59:08'),
(24, 40, 50000, 391500, 341500, 'cash', NULL, '2020-03-14', '2020-03-14 17:16:02', '2020-03-14 17:16:02'),
(25, 32, 38700, 163080, 124380, 'cash', 'chq paid', '2020-03-20', '2020-03-15 19:06:38', '2020-03-15 19:06:38'),
(26, 32, 50000, 124380, 74380, 'cash', 'chq paid', '2020-03-30', '2020-03-15 19:07:05', '2020-03-15 19:07:05'),
(27, 6, 50000, 240000, 190000, 'cash', NULL, '2020-03-16', '2020-03-16 12:45:28', '2020-03-16 12:45:28'),
(28, 2, 20000, 44400, 24400, 'cash', 'standard bank', '2020-03-16', '2020-03-16 14:11:44', '2020-03-16 14:11:44'),
(29, 38, 24000, 24000, 0, 'cash', 'chq paid (Ripon)', '2020-03-25', '2020-03-16 14:14:54', '2020-03-16 14:14:54'),
(30, 44, 3560, 10730, 7170, 'cash', 'mobil', '2020-03-17', '2020-03-17 10:36:54', '2020-03-17 10:36:54'),
(31, 36, 48000, 48000, 0, 'cash', NULL, '2020-03-20', '2020-03-17 11:30:42', '2020-03-17 11:30:42'),
(32, 1, 2700, 752600, 749900, 'cash', 'shahid motor paiid by goods', '2020-03-18', '2020-03-18 15:17:51', '2020-03-18 15:17:51'),
(33, 50, 106700, 106700, 0, 'cash', 'chq paid', '2020-04-06', '2020-03-18 18:30:25', '2020-03-18 18:30:25'),
(34, 47, 19200, 19200, 0, 'cash', NULL, '2020-03-16', '2020-03-18 18:39:26', '2020-03-18 18:39:26'),
(35, 49, 20000, 46080, 26080, 'cash', 'standard bank', '2020-03-18', '2020-03-18 18:41:44', '2020-03-18 18:41:44'),
(36, 26, 50000, 73500, 23500, 'cash', 'chq paid', '2020-03-25', '2020-03-19 18:28:09', '2020-03-19 18:28:09'),
(37, 62, 25000, 323990, 298990, 'cash', 'chq', '2020-02-17', '2020-03-21 12:26:35', '2020-03-21 12:26:35'),
(38, 62, 25000, 298990, 273990, 'cash', 'chq', '2020-03-01', '2020-03-21 12:27:02', '2020-03-21 12:27:02'),
(39, 62, 25000, 273990, 248990, 'cash', 'chq', '2020-03-16', '2020-03-21 12:27:34', '2020-03-21 12:27:34'),
(40, 52, 94410, 140500, 46090, 'cash', NULL, '2020-03-08', '2020-03-21 13:04:31', '2020-03-21 13:04:31'),
(41, 70, 30000, 111365, 81365, 'cash', NULL, '2020-03-10', '2020-03-21 15:09:44', '2020-03-21 15:09:44'),
(42, 74, 30000, 72640, 42640, 'cash', NULL, '2020-03-05', '2020-03-21 15:22:21', '2020-03-21 15:22:21'),
(43, 79, 5000, 27310, 22310, 'cash', NULL, '2020-03-25', '2020-03-21 15:39:13', '2020-03-21 15:39:13'),
(44, 87, 15000, 32510, 17510, 'cash', NULL, '2020-03-08', '2020-03-21 15:56:09', '2020-03-21 15:56:09'),
(45, 134, 11000, 12050, 1050, 'cash', NULL, '2020-01-21', '2020-03-21 17:46:07', '2020-03-21 17:46:07'),
(46, 144, 100000, 89110, -10890, 'cash', NULL, '2020-02-28', '2020-03-21 18:05:11', '2020-03-21 18:05:11'),
(47, 53, 5000, 7600, 2600, 'cash', NULL, '2020-03-19', '2020-03-21 18:07:55', '2020-03-21 18:07:55'),
(48, 13, 50000, 156500, 106500, 'cash', 'chq', '2020-03-22', '2020-03-21 19:48:36', '2020-03-21 19:48:36'),
(49, 23, 5000, 34820, 29820, 'cash', 'adjustment', '2020-03-22', '2020-03-22 18:35:52', '2020-03-22 18:35:52'),
(50, 145, 7300, 14200, 6900, 'cash', 'CHQ', '2020-03-25', '2020-03-22 19:15:10', '2020-03-22 19:15:10'),
(51, 145, 6900, 6900, 0, 'cash', 'CHQ', '2020-04-05', '2020-03-22 19:15:39', '2020-03-22 19:15:39'),
(52, 23, 29800, 29820, 20, 'cash', 'chq 23/3/20', '2020-03-23', '2020-03-23 12:02:06', '2020-03-23 12:02:06'),
(53, 6, 40000, 430000, 390000, 'cash', NULL, '2020-03-23', '2020-03-23 15:43:50', '2020-03-23 15:43:50'),
(54, 44, 7170, 7170, 0, 'cash', NULL, '2020-09-03', '2020-09-07 10:37:59', '2020-09-07 10:37:59');

-- --------------------------------------------------------

--
-- Table structure for table `sales_products`
--

CREATE TABLE `sales_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sales_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `unit_cost` double NOT NULL,
  `unit_price` double NOT NULL,
  `qty` int(11) NOT NULL,
  `subtotal` double NOT NULL,
  `product_revenue` double NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_products`
--

INSERT INTO `sales_products` (`id`, `sales_date`, `sale_id`, `pro_id`, `unit_cost`, `unit_price`, `qty`, `subtotal`, `product_revenue`, `store_id`, `created_at`, `updated_at`) VALUES
(1, '2020-02-25', 1, 1, 390, 420, 1, 420, 30, 1, '2020-02-25 13:35:44', '2020-02-25 13:35:44'),
(2, '2020-03-03', 2, 1, 4600, 4900, 1, 4900, 300, 1, '2020-03-03 20:11:16', '2020-03-03 20:11:16'),
(3, '2020-03-03', 2, 4, 3800, 4100, 1, 4100, 300, 1, '2020-03-03 20:11:16', '2020-03-03 20:11:16'),
(4, '2020-03-03', 2, 9, 730, 770, 5, 3850, 200, 1, '2020-03-03 20:11:16', '2020-03-03 20:11:16'),
(5, '2020-03-03', 3, 3, 4600, 4900, 2, 9800, 600, 1, '2020-03-03 20:36:16', '2020-03-03 20:36:16'),
(6, '2020-03-03', 4, 1, 4600, 4800, 50, 240000, 10000, 1, '2020-03-03 20:45:14', '2020-03-03 20:45:14'),
(7, '2020-03-04', 5, 3, 4600, 4900, 10, 49000, 3000, 1, '2020-03-04 09:49:44', '2020-03-04 09:49:44'),
(8, '2020-03-04', 6, 1, 4600, 4900, 50, 245000, 15000, 1, '2020-03-04 10:15:02', '2020-03-04 10:15:02'),
(9, '2020-03-04', 7, 1, 4600, 4900, 4, 19600, 1200, 1, '2020-03-04 11:52:46', '2020-03-04 11:52:46'),
(11, '2020-03-04', 9, 3, 4600, 4900, 10, 49000, 3000, 1, '2020-03-04 17:59:35', '2020-03-04 17:59:35'),
(12, '2020-03-05', 10, 3, 380, 420, 120, 50400, 4800, 1, '2020-03-05 15:42:14', '2020-03-05 15:42:14'),
(13, '2020-03-05', 11, 3, 380, 420, 36, 15120, 1440, 1, '2020-03-05 18:13:57', '2020-03-05 18:13:57'),
(14, '2020-03-03', 12, 3, 380, 420, 1200, 504000, 48000, 1, '2020-03-06 11:09:37', '2020-03-06 11:09:37'),
(15, '2020-03-03', 13, 3, 380, 420, 600, 252000, 24000, 1, '2020-03-06 11:36:12', '2020-03-06 11:36:12'),
(16, '2020-03-03', 14, 3, 380, 420, 120, 50400, 4800, 1, '2020-03-06 11:43:36', '2020-03-06 11:43:36'),
(17, '2020-03-05', 15, 3, 380, 420, 6, 2520, 240, 1, '2020-03-08 16:31:07', '2020-03-08 16:31:07'),
(19, '2020-03-03', 17, 3, 380, 420, 24, 10080, 960, 1, '2020-03-08 17:00:25', '2020-03-08 17:00:25'),
(20, '2020-03-03', 17, 4, 310, 350, 12, 4200, 480, 1, '2020-03-08 17:00:25', '2020-03-08 17:00:25'),
(21, '2020-03-03', 18, 3, 380, 420, 1200, 504000, 48000, 1, '2020-03-08 17:04:27', '2020-03-08 17:04:27'),
(22, '2020-03-03', 18, 4, 310, 350, 600, 210000, 24000, 1, '2020-03-08 17:04:27', '2020-03-08 17:04:27'),
(23, '2020-03-03', 19, 3, 380, 420, 1200, 504000, 48000, 1, '2020-03-08 17:06:12', '2020-03-08 17:06:12'),
(24, '2020-03-03', 19, 4, 310, 350, 600, 210000, 24000, 1, '2020-03-08 17:06:12', '2020-03-08 17:06:12'),
(25, '2020-03-08', 20, 4, 310, 350, 60, 21000, 2400, 1, '2020-03-08 19:00:14', '2020-03-08 19:00:14'),
(26, '2020-03-04', 21, 3, 380, 400, 600, 240000, 12000, 1, '2020-03-08 19:30:12', '2020-03-08 19:30:12'),
(29, '2020-03-08', 23, 3, 380, 400, 180, 72000, 3600, 1, '2020-03-08 20:05:39', '2020-03-08 20:05:39'),
(30, '2020-03-08', 23, 4, 310, 350, 60, 21000, 2400, 1, '2020-03-08 20:05:39', '2020-03-08 20:05:39'),
(31, '2020-03-09', 24, 3, 380, 400, 60, 24000, 1200, 1, '2020-03-09 13:21:21', '2020-03-09 13:21:21'),
(32, '2020-03-03', 25, 3, 380, 400, 60, 24000, 1200, 1, '2020-03-09 17:36:46', '2020-03-09 17:36:46'),
(33, '2020-03-03', 26, 3, 380, 420, 12, 5040, 480, 1, '2020-03-09 17:39:51', '2020-03-09 17:39:51'),
(34, '2020-03-03', 27, 3, 380, 400, 12, 4800, 240, 1, '2020-03-09 17:45:40', '2020-03-09 17:45:40'),
(35, '2020-03-03', 27, 4, 310, 350, 12, 4200, 480, 1, '2020-03-09 17:45:40', '2020-03-09 17:45:40'),
(36, '2020-03-03', 28, 3, 380, 400, 120, 48000, 2400, 1, '2020-03-09 17:57:58', '2020-03-09 17:57:58'),
(37, '2020-03-03', 29, 3, 380, 420, 180, 75600, 7200, 1, '2020-03-09 18:04:45', '2020-03-09 18:04:45'),
(38, '2020-03-04', 30, 3, 380, 400, 60, 24000, 1200, 1, '2020-03-09 18:07:52', '2020-03-09 18:07:52'),
(39, '2020-03-04', 30, 6, 190, 230, 12, 2760, 480, 1, '2020-03-09 18:07:52', '2020-03-09 18:07:52'),
(40, '2020-03-04', 31, 3, 380, 400, 24, 9600, 480, 1, '2020-03-09 18:16:15', '2020-03-09 18:16:15'),
(41, '2020-03-04', 31, 4, 310, 325, 48, 15600, 720, 1, '2020-03-09 18:16:15', '2020-03-09 18:16:15'),
(42, '2020-03-08', 32, 3, 380, 420, 240, 100800, 9600, 1, '2020-03-09 20:53:27', '2020-03-09 20:53:27'),
(43, '2020-03-08', 32, 4, 310, 350, 240, 84000, 9600, 1, '2020-03-09 20:53:27', '2020-03-09 20:53:27'),
(44, '2020-03-03', 33, 3, 380, 400, 360, 144000, 7200, 1, '2020-03-09 21:05:00', '2020-03-09 21:05:00'),
(45, '2020-03-03', 33, 4, 310, 350, 240, 84000, 9600, 1, '2020-03-09 21:05:00', '2020-03-09 21:05:00'),
(46, '2020-03-03', 33, 23, 180, 210, 120, 25200, 3600, 1, '2020-03-09 21:05:00', '2020-03-09 21:05:00'),
(47, '2020-03-03', 33, 5, 250, 290, 60, 17400, 2400, 1, '2020-03-09 21:05:00', '2020-03-09 21:05:00'),
(48, '2020-03-10', 34, 3, 380, 400, 60, 24000, 1200, 1, '2020-03-10 10:07:38', '2020-03-10 10:07:38'),
(49, '2020-03-10', 35, 28, 1340, 1350, 4, 5400, 40, 1, '2020-03-10 14:07:08', '2020-03-10 14:07:08'),
(50, '2020-03-10', 35, 30, 2100, 2110, 4, 8440, 40, 1, '2020-03-10 14:07:08', '2020-03-10 14:07:08'),
(51, '2020-03-10', 35, 25, 1280, 1300, 1, 1300, 20, 1, '2020-03-10 14:07:08', '2020-03-10 14:07:08'),
(52, '2020-03-10', 35, 29, 1050, 1070, 1, 1070, 20, 1, '2020-03-10 14:07:08', '2020-03-10 14:07:08'),
(53, '2020-03-10', 35, 19, 1242, 1380, 1, 1380, 138, 1, '2020-03-10 14:07:08', '2020-03-10 14:07:08'),
(54, '2020-03-10', 36, 3, 380, 400, 36, 14400, 720, 1, '2020-03-10 16:27:53', '2020-03-10 16:27:53'),
(55, '2020-03-10', 36, 4, 310, 340, 36, 12240, 1080, 1, '2020-03-10 16:27:53', '2020-03-10 16:27:53'),
(56, '2020-03-10', 36, 6, 190, 230, 24, 5520, 960, 1, '2020-03-10 16:27:53', '2020-03-10 16:27:53'),
(57, '2020-03-10', 36, 5, 250, 300, 48, 14400, 2400, 1, '2020-03-10 16:27:53', '2020-03-10 16:27:53'),
(58, '2020-03-10', 37, 4, 310, 325, 240, 78000, 3600, 1, '2020-03-10 16:29:52', '2020-03-10 16:29:52'),
(59, '2020-03-10', 38, 28, 1340, 1350, 4, 5400, 40, 1, '2020-03-10 20:10:48', '2020-03-10 20:10:48'),
(60, '2020-03-10', 38, 26, 1230, 1250, 4, 5000, 80, 1, '2020-03-10 20:10:48', '2020-03-10 20:10:48'),
(61, '2020-03-10', 38, 34, 324, 340, 5, 1700, 80, 1, '2020-03-10 20:10:48', '2020-03-10 20:10:48'),
(62, '2020-03-10', 38, 35, 324, 340, 5, 1700, 80, 1, '2020-03-10 20:10:48', '2020-03-10 20:10:48'),
(63, '2020-03-10', 38, 36, 324, 340, 5, 1700, 80, 1, '2020-03-10 20:10:48', '2020-03-10 20:10:48'),
(64, '2020-03-10', 38, 33, 440, 450, 5, 2250, 50, 1, '2020-03-10 20:10:48', '2020-03-10 20:10:48'),
(65, '2020-03-10', 38, 29, 1050, 1070, 4, 4280, 80, 1, '2020-03-10 20:10:48', '2020-03-10 20:10:48'),
(66, '2020-03-10', 38, 37, 800, 820, 1, 820, 20, 1, '2020-03-10 20:10:48', '2020-03-10 20:10:48'),
(67, '2020-03-03', 39, 3, 380, 400, 120, 48000, 2400, 1, '2020-03-12 19:34:47', '2020-03-12 19:34:47'),
(68, '2020-03-12', 40, 3, 380, 400, 120, 48000, 2400, 1, '2020-03-12 19:35:31', '2020-03-12 19:35:31'),
(69, '2020-03-04', 41, 3, 380, 400, 144, 57600, 2880, 1, '2020-03-12 19:38:25', '2020-03-12 19:38:25'),
(70, '2020-03-12', 42, 3, 380, 400, 60, 24000, 1200, 1, '2020-03-12 19:40:44', '2020-03-12 19:40:44'),
(71, '2020-03-12', 43, 3, 380, 400, 72, 28800, 1440, 1, '2020-03-12 19:50:28', '2020-03-12 19:50:28'),
(72, '2020-03-12', 44, 80, 100, 100, 112104, 11210400, 0, 1, '2020-03-12 20:01:20', '2020-03-12 20:01:20'),
(73, '2020-03-02', 45, 6, 190, 210, 120, 25200, 2400, 1, '2020-03-14 16:53:10', '2020-03-14 16:53:10'),
(74, '2020-03-14', 46, 19, 1242, 1450, 1, 1450, 208, 1, '2020-03-14 18:23:20', '2020-03-14 18:23:20'),
(75, '2020-03-14', 46, 37, 800, 900, 1, 900, 100, 1, '2020-03-14 18:23:20', '2020-03-14 18:23:20'),
(76, '2020-03-14', 47, 28, 1340, 1350, 4, 5400, 40, 1, '2020-03-14 20:24:07', '2020-03-14 20:24:07'),
(77, '2020-03-15', 48, 19, 1242, 1400, 1, 1400, 158, 1, '2020-03-15 18:19:22', '2020-03-15 18:19:22'),
(78, '2020-03-15', 48, 20, 1980, 2200, 1, 2200, 220, 1, '2020-03-15 18:19:22', '2020-03-15 18:19:22'),
(79, '2020-03-10', 49, 73, 40, 50, 40, 2000, 400, 1, '2020-03-15 19:05:21', '2020-03-15 19:05:21'),
(80, '2020-03-10', 49, 72, 40, 50, 40, 2000, 400, 1, '2020-03-15 19:05:21', '2020-03-15 19:05:21'),
(81, '2020-03-10', 49, 60, 1140, 1180, 2, 2360, 80, 1, '2020-03-15 19:05:21', '2020-03-15 19:05:21'),
(82, '2020-03-10', 49, 58, 1140, 1180, 2, 2360, 80, 1, '2020-03-15 19:05:21', '2020-03-15 19:05:21'),
(83, '2020-03-10', 49, 95, 3700, 3800, 1, 3800, 100, 1, '2020-03-15 19:05:21', '2020-03-15 19:05:21'),
(84, '2020-03-10', 49, 94, 3000, 3020, 1, 3020, 20, 1, '2020-03-15 19:05:21', '2020-03-15 19:05:21'),
(85, '2020-03-10', 49, 98, 2100, 2150, 1, 2150, 50, 1, '2020-03-15 19:05:21', '2020-03-15 19:05:21'),
(86, '2020-03-10', 49, 99, 1285, 1350, 1, 1350, 65, 1, '2020-03-15 19:05:21', '2020-03-15 19:05:21'),
(87, '2020-03-10', 49, 82, 1200, 1250, 1, 1250, 50, 1, '2020-03-15 19:05:21', '2020-03-15 19:05:21'),
(88, '2020-03-10', 49, 97, 200, 220, 10, 2200, 200, 1, '2020-03-15 19:05:21', '2020-03-15 19:05:21'),
(89, '2020-03-15', 50, 104, 2720, 2850, 2, 5700, 260, 1, '2020-03-15 20:56:46', '2020-03-15 20:56:46'),
(90, '2020-03-15', 50, 106, 1530, 1630, 2, 3260, 200, 1, '2020-03-15 20:56:46', '2020-03-15 20:56:46'),
(91, '2020-03-15', 50, 105, 2210, 2300, 2, 4600, 180, 1, '2020-03-15 20:56:46', '2020-03-15 20:56:46'),
(92, '2020-03-15', 50, 108, 210, 230, 5, 1150, 100, 1, '2020-03-15 20:56:46', '2020-03-15 20:56:46'),
(93, '2020-03-15', 50, 109, 252, 265, 5, 1325, 65, 1, '2020-03-15 20:56:46', '2020-03-15 20:56:46'),
(94, '2020-03-15', 50, 95, 3700, 3800, 2, 7600, 200, 1, '2020-03-15 20:56:46', '2020-03-15 20:56:46'),
(95, '2020-03-15', 50, 112, 1955, 2050, 2, 4100, 190, 1, '2020-03-15 20:56:46', '2020-03-15 20:56:46'),
(96, '2020-03-15', 50, 102, 3515, 3600, 3, 10800, 255, 1, '2020-03-15 20:56:46', '2020-03-15 20:56:46'),
(97, '2020-03-15', 50, 103, 3325, 3450, 2, 6900, 250, 1, '2020-03-15 20:56:46', '2020-03-15 20:56:46'),
(98, '2020-03-15', 50, 110, 820, 850, 5, 4250, 150, 1, '2020-03-15 20:56:46', '2020-03-15 20:56:46'),
(99, '2020-03-15', 50, 111, 810, 820, 10, 8200, 100, 1, '2020-03-15 20:56:46', '2020-03-15 20:56:46'),
(100, '2020-03-15', 50, 100, 2600, 2700, 5, 13500, 500, 1, '2020-03-15 20:56:46', '2020-03-15 20:56:46'),
(101, '2020-03-15', 50, 101, 2500, 2600, 5, 13000, 500, 1, '2020-03-15 20:56:46', '2020-03-15 20:56:46'),
(102, '2020-03-15', 51, 107, 2710, 2800, 2, 5600, 180, 1, '2020-03-16 11:15:00', '2020-03-16 11:15:00'),
(103, '2020-03-15', 51, 113, 3700, 3250, 2, 6500, -900, 1, '2020-03-16 11:15:00', '2020-03-16 11:15:00'),
(104, '2020-03-15', 51, 93, 3000, 3050, 3, 9150, 150, 1, '2020-03-16 11:15:00', '2020-03-16 11:15:00'),
(105, '2020-03-15', 51, 96, 2100, 2175, 5, 10875, 375, 1, '2020-03-16 11:15:00', '2020-03-16 11:15:00'),
(106, '2020-03-15', 51, 94, 3000, 3050, 5, 15250, 250, 1, '2020-03-16 11:15:00', '2020-03-16 11:15:00'),
(107, '2020-03-15', 51, 98, 2100, 2150, 5, 10750, 250, 1, '2020-03-16 11:15:00', '2020-03-16 11:15:00'),
(108, '2020-03-15', 51, 75, 1300, 1500, 5, 7500, 1000, 1, '2020-03-16 11:15:00', '2020-03-16 11:15:00'),
(109, '2020-03-15', 51, 114, 1000, 1200, 4, 4800, 800, 1, '2020-03-16 11:15:00', '2020-03-16 11:15:00'),
(110, '2020-03-16', 52, 19, 1242, 1380, 4, 5520, 552, 1, '2020-03-16 13:07:56', '2020-03-16 13:07:56'),
(111, '2020-03-16', 52, 20, 1980, 2200, 1, 2200, 220, 1, '2020-03-16 13:07:56', '2020-03-16 13:07:56'),
(112, '2020-03-16', 52, 22, 1575, 1750, 2, 3500, 350, 1, '2020-03-16 13:07:56', '2020-03-16 13:07:56'),
(113, '2020-03-16', 53, 19, 1242, 1350, 1, 1350, 108, 1, '2020-03-16 13:12:38', '2020-03-16 13:12:38'),
(114, '2020-03-16', 53, 21, 2430, 2750, 1, 2750, 320, 1, '2020-03-16 13:12:38', '2020-03-16 13:12:38'),
(115, '2020-03-16', 53, 22, 1575, 1700, 1, 1700, 125, 1, '2020-03-16 13:12:38', '2020-03-16 13:12:38'),
(116, '2020-03-11', 54, 33, 440, 440, 2, 880, 0, 1, '2020-03-16 14:03:38', '2020-03-16 14:03:38'),
(117, '2020-03-11', 54, 28, 1340, 1340, 2, 2680, 0, 1, '2020-03-16 14:03:38', '2020-03-16 14:03:38'),
(118, '2020-03-16', 55, 19, 1242, 1380, 1, 1380, 138, 1, '2020-03-16 14:04:37', '2020-03-16 14:04:37'),
(119, '2020-03-16', 55, 20, 1980, 2200, 1, 2200, 220, 1, '2020-03-16 14:04:37', '2020-03-16 14:04:37'),
(120, '2020-03-14', 56, 37, 800, 900, 1, 900, 100, 1, '2020-03-16 14:05:50', '2020-03-16 14:05:50'),
(121, '2020-03-16', 57, 19, 1242, 1400, 1, 1400, 158, 1, '2020-03-16 14:10:00', '2020-03-16 14:10:00'),
(122, '2020-03-16', 58, 116, 740, 760, 6, 4560, 120, 1, '2020-03-16 17:55:01', '2020-03-16 17:55:01'),
(123, '2020-03-16', 58, 115, 950, 970, 5, 4850, 100, 1, '2020-03-16 17:55:01', '2020-03-16 17:55:01'),
(124, '2020-03-16', 59, 3, 380, 400, 48, 19200, 960, 1, '2020-03-16 18:09:54', '2020-03-16 18:09:54'),
(125, '2020-03-15', 60, 8, 800, 900, 3, 2700, 300, 1, '2020-03-16 18:21:39', '2020-03-16 18:21:39'),
(126, '2020-03-15', 60, 3, 380, 409, 12, 4908, 348, 1, '2020-03-16 18:21:39', '2020-03-16 18:21:39'),
(127, '2020-03-15', 60, 4, 310, 342, 24, 8208, 768, 1, '2020-03-16 18:21:39', '2020-03-16 18:21:39'),
(128, '2020-03-15', 60, 5, 250, 300, 12, 3600, 600, 1, '2020-03-16 18:21:39', '2020-03-16 18:21:39'),
(129, '2020-03-15', 60, 6, 190, 230, 12, 2760, 480, 1, '2020-03-16 18:21:39', '2020-03-16 18:21:39'),
(130, '2020-03-15', 60, 7, 270, 300, 12, 3600, 360, 1, '2020-03-16 18:21:39', '2020-03-16 18:21:39'),
(131, '2020-03-16', 61, 125, 1870, 1950, 10, 19500, 800, 1, '2020-03-16 18:46:06', '2020-03-16 18:46:06'),
(132, '2020-03-03', 62, 24, 180, 220, 12, 2640, 480, 1, '2020-03-17 10:28:56', '2020-03-17 10:28:56'),
(133, '2020-03-03', 62, 6, 190, 220, 12, 2640, 360, 1, '2020-03-17 10:28:56', '2020-03-17 10:28:56'),
(134, '2020-03-03', 62, 7, 270, 300, 12, 3600, 360, 1, '2020-03-17 10:28:56', '2020-03-17 10:28:56'),
(135, '2020-03-03', 62, 3, 380, 400, 36, 14400, 720, 1, '2020-03-17 10:28:56', '2020-03-17 10:28:56'),
(136, '2020-03-03', 62, 4, 310, 350, 36, 12600, 1440, 1, '2020-03-17 10:28:56', '2020-03-17 10:28:56'),
(137, '2020-03-03', 62, 5, 250, 300, 36, 10800, 1800, 1, '2020-03-17 10:28:56', '2020-03-17 10:28:56'),
(138, '2020-03-03', 63, 3, 380, 400, 240, 96000, 4800, 1, '2020-03-17 10:40:07', '2020-03-17 10:40:07'),
(139, '2020-03-03', 63, 5, 250, 300, 6, 1800, 300, 1, '2020-03-17 10:40:07', '2020-03-17 10:40:07'),
(140, '2020-03-03', 63, 4, 310, 350, 24, 8400, 960, 1, '2020-03-17 10:40:07', '2020-03-17 10:40:07'),
(141, '2020-03-04', 64, 3, 380, 400, 60, 24000, 1200, 1, '2020-03-17 10:43:24', '2020-03-17 10:43:24'),
(142, '2020-03-05', 65, 126, 140, 180, 5, 900, 200, 1, '2020-03-17 10:48:51', '2020-03-17 10:48:51'),
(143, '2020-03-08', 66, 4, 310, 350, 240, 84000, 9600, 1, '2020-03-17 10:54:14', '2020-03-17 10:54:14'),
(144, '2020-03-08', 67, 4, 310, 350, 120, 42000, 4800, 1, '2020-03-17 11:03:58', '2020-03-17 11:03:58'),
(145, '2020-03-17', 68, 19, 1242, 1400, 1, 1400, 158, 1, '2020-03-17 12:26:34', '2020-03-17 12:26:34'),
(146, '2020-03-14', 69, 9, 730, 760, 10, 7600, 300, 1, '2020-03-17 12:44:57', '2020-03-17 12:44:57'),
(147, '2020-03-18', 70, 28, 1340, 1350, 2, 2700, 20, 1, '2020-03-18 15:16:54', '2020-03-18 15:16:54'),
(148, '2020-03-19', 71, 48, 930, 980, 3, 2940, 150, 1, '2020-03-19 11:12:40', '2020-03-19 11:12:40'),
(149, '2020-03-19', 71, 161, 31, 45, 20, 900, 280, 1, '2020-03-19 11:12:40', '2020-03-19 11:12:40'),
(150, '2020-03-19', 71, 162, 31, 45, 40, 1800, 560, 1, '2020-03-19 11:12:40', '2020-03-19 11:12:40'),
(151, '2020-03-14', 72, 31, 155, 170, 20, 3400, 300, 1, '2020-03-19 11:26:51', '2020-03-19 11:26:51'),
(152, '2020-03-14', 72, 12, 500, 530, 10, 5300, 300, 1, '2020-03-19 11:26:51', '2020-03-19 11:26:51'),
(153, '2020-03-14', 72, 10, 620, 650, 5, 3250, 150, 1, '2020-03-19 11:26:51', '2020-03-19 11:26:51'),
(154, '2020-03-14', 72, 9, 730, 770, 5, 3850, 200, 1, '2020-03-19 11:26:51', '2020-03-19 11:26:51'),
(155, '2020-03-14', 72, 66, 141, 150, 10, 1500, 90, 1, '2020-03-19 11:26:51', '2020-03-19 11:26:51'),
(156, '2020-03-14', 72, 167, 38, 45, 10, 450, 70, 1, '2020-03-19 11:26:51', '2020-03-19 11:26:51'),
(157, '2020-03-19', 73, 126, 140, 180, 6, 1080, 240, 1, '2020-03-19 16:44:23', '2020-03-19 16:44:23'),
(158, '2020-03-19', 74, 165, 100, 120, 10, 1200, 200, 1, '2020-03-19 18:16:23', '2020-03-19 18:16:23'),
(159, '2020-03-19', 74, 128, 280, 300, 3, 900, 60, 1, '2020-03-19 18:16:23', '2020-03-19 18:16:23'),
(160, '2020-03-19', 74, 168, 250, 280, 3, 840, 90, 1, '2020-03-19 18:16:23', '2020-03-19 18:16:23'),
(161, '2020-03-19', 74, 138, 220, 240, 3, 720, 60, 1, '2020-03-19 18:16:23', '2020-03-19 18:16:23'),
(162, '2020-03-19', 74, 140, 150, 170, 3, 510, 60, 1, '2020-03-19 18:16:23', '2020-03-19 18:16:23'),
(163, '2020-03-19', 74, 73, 40, 50, 10, 500, 100, 1, '2020-03-19 18:16:23', '2020-03-19 18:16:23'),
(164, '2020-03-19', 74, 10, 620, 630, 5, 3150, 50, 1, '2020-03-19 18:16:23', '2020-03-19 18:16:23'),
(165, '2020-03-19', 74, 12, 500, 530, 10, 5300, 300, 1, '2020-03-19 18:16:23', '2020-03-19 18:16:23'),
(166, '2020-03-19', 74, 3, 380, 400, 24, 9600, 480, 1, '2020-03-19 18:16:23', '2020-03-19 18:16:23'),
(167, '2020-03-19', 74, 169, 450, 550, 2, 1100, 200, 1, '2020-03-19 18:16:23', '2020-03-19 18:16:23'),
(168, '2020-03-03', 75, 3, 380, 400, 120, 48000, 2400, 1, '2020-03-19 19:48:28', '2020-03-19 19:48:28'),
(169, '2020-03-18', 77, 3, 380, 400, 120, 48000, 2400, 1, '2020-03-19 19:50:29', '2020-03-19 19:50:29'),
(170, '2020-03-21', 78, 3, 380, 400, 48, 19200, 960, 1, '2020-03-21 09:34:43', '2020-03-21 09:34:43'),
(171, '2020-03-21', 79, 171, 950, 1100, 6, 6600, 900, 1, '2020-03-21 10:10:07', '2020-03-21 10:10:07'),
(172, '2020-03-21', 79, 81, 1000, 1030, 4, 4120, 120, 1, '2020-03-21 10:10:07', '2020-03-21 10:10:07'),
(173, '2020-03-21', 79, 83, 1045, 1080, 4, 4320, 140, 1, '2020-03-21 10:10:07', '2020-03-21 10:10:07'),
(174, '2020-03-21', 81, 39, 705, 740, 10, 7400, 350, 1, '2020-03-21 10:40:56', '2020-03-21 10:40:56'),
(175, '2020-03-21', 81, 48, 930, 980, 8, 7840, 400, 1, '2020-03-21 10:40:56', '2020-03-21 10:40:56'),
(176, '2020-03-21', 81, 42, 646, 680, 10, 6800, 340, 1, '2020-03-21 10:40:56', '2020-03-21 10:40:56'),
(177, '2020-03-21', 81, 40, 760, 800, 10, 8000, 400, 1, '2020-03-21 10:40:56', '2020-03-21 10:40:56'),
(178, '2020-03-21', 81, 153, 1500, 1550, 2, 3100, 100, 1, '2020-03-21 10:40:56', '2020-03-21 10:40:56'),
(179, '2020-03-21', 82, 165, 100, 120, 10, 1200, 200, 1, '2020-03-21 10:53:56', '2020-03-21 10:53:56'),
(180, '2020-03-21', 82, 74, 1300, 3500, 1, 3500, 2200, 1, '2020-03-21 10:53:56', '2020-03-21 10:53:56'),
(181, '2020-03-21', 82, 164, 150, 200, 10, 2000, 500, 1, '2020-03-21 10:53:56', '2020-03-21 10:53:56'),
(182, '2020-03-21', 82, 63, 450, 550, 3, 1650, 300, 1, '2020-03-21 10:53:56', '2020-03-21 10:53:56'),
(183, '2020-03-21', 83, 3, 380, 400, 600, 240000, 12000, 1, '2020-03-21 12:02:17', '2020-03-21 12:02:17'),
(184, '2020-03-21', 84, 3, 380, 400, 120, 48000, 2400, 1, '2020-03-21 12:24:42', '2020-03-21 12:24:42'),
(185, '2020-03-21', 84, 5, 250, 300, 12, 3600, 600, 1, '2020-03-21 12:24:42', '2020-03-21 12:24:42'),
(186, '2020-03-21', 85, 3, 380, 420, 3, 1260, 120, 1, '2020-03-21 19:04:06', '2020-03-21 19:04:06'),
(187, '2020-03-21', 85, 4, 310, 340, 3, 1020, 90, 1, '2020-03-21 19:04:06', '2020-03-21 19:04:06'),
(188, '2020-03-21', 85, 87, 2200, 2600, 1, 2600, 400, 1, '2020-03-21 19:04:06', '2020-03-21 19:04:06'),
(189, '2020-03-21', 85, 76, 1200, 1250, 2, 2500, 100, 1, '2020-03-21 19:04:06', '2020-03-21 19:04:06'),
(190, '2020-03-21', 85, 39, 705, 740, 3, 2220, 105, 1, '2020-03-21 19:04:06', '2020-03-21 19:04:06'),
(191, '2020-03-21', 85, 41, 547, 580, 3, 1740, 99, 1, '2020-03-21 19:04:06', '2020-03-21 19:04:06'),
(192, '2020-03-21', 86, 63, 450, 600, 50, 30000, 7500, 1, '2020-03-21 19:14:27', '2020-03-21 19:14:27'),
(193, '2020-03-21', 86, 73, 40, 55, 120, 6600, 1800, 1, '2020-03-21 19:14:27', '2020-03-21 19:14:27'),
(194, '2020-03-21', 86, 54, 2050, 2150, 4, 8600, 400, 1, '2020-03-21 19:14:27', '2020-03-21 19:14:27'),
(195, '2020-03-21', 86, 55, 1490, 1550, 4, 6200, 240, 1, '2020-03-21 19:14:27', '2020-03-21 19:14:27'),
(196, '2020-03-21', 86, 177, 1450, 1500, 4, 6000, 200, 1, '2020-03-21 19:14:27', '2020-03-21 19:14:27'),
(197, '2020-03-10', 87, 17, 340, 380, 5, 1900, 200, 1, '2020-03-22 11:18:01', '2020-03-22 11:18:01'),
(198, '2020-03-10', 87, 18, 340, 380, 5, 1900, 200, 1, '2020-03-22 11:18:01', '2020-03-22 11:18:01'),
(199, '2020-03-10', 87, 12, 500, 530, 5, 2650, 150, 1, '2020-03-22 11:18:01', '2020-03-22 11:18:01'),
(200, '2020-03-10', 87, 10, 620, 640, 5, 3200, 100, 1, '2020-03-22 11:18:01', '2020-03-22 11:18:01'),
(201, '2020-03-10', 87, 194, 150, 170, 10, 1700, 200, 1, '2020-03-22 11:18:01', '2020-03-22 11:18:01'),
(202, '2020-03-10', 87, 193, 150, 170, 10, 1700, 200, 1, '2020-03-22 11:18:01', '2020-03-22 11:18:01'),
(203, '2020-03-22', 89, 3, 380, 420, 4, 1680, 160, 1, '2020-03-22 17:17:26', '2020-03-22 17:17:26'),
(204, '2020-03-22', 89, 4, 310, 340, 6, 2040, 180, 1, '2020-03-22 17:17:26', '2020-03-22 17:17:26'),
(205, '2020-03-22', 89, 12, 500, 530, 2, 1060, 60, 1, '2020-03-22 17:17:26', '2020-03-22 17:17:26'),
(206, '2020-03-22', 89, 10, 620, 640, 2, 1280, 40, 1, '2020-03-22 17:17:26', '2020-03-22 17:17:26'),
(207, '2020-03-22', 89, 11, 730, 770, 2, 1540, 80, 1, '2020-03-22 17:17:26', '2020-03-22 17:17:26'),
(208, '2020-03-22', 89, 209, 350, 380, 4, 1520, 120, 1, '2020-03-22 17:17:26', '2020-03-22 17:17:26'),
(209, '2020-03-22', 89, 210, 400, 430, 2, 860, 60, 1, '2020-03-22 17:17:26', '2020-03-22 17:17:26'),
(210, '2020-03-22', 89, 215, 95, 110, 10, 1100, 150, 1, '2020-03-22 17:17:26', '2020-03-22 17:17:26'),
(211, '2020-03-22', 89, 6, 190, 230, 4, 920, 160, 1, '2020-03-22 17:17:26', '2020-03-22 17:17:26'),
(212, '2020-03-22', 89, 7, 270, 320, 2, 640, 100, 1, '2020-03-22 17:17:26', '2020-03-22 17:17:26'),
(213, '2020-03-22', 89, 162, 31, 45, 5, 225, 70, 1, '2020-03-22 17:17:26', '2020-03-22 17:17:26'),
(214, '2020-03-22', 89, 161, 31, 45, 5, 225, 70, 1, '2020-03-22 17:17:26', '2020-03-22 17:17:26'),
(215, '2020-03-22', 89, 72, 40, 55, 5, 275, 75, 1, '2020-03-22 17:17:26', '2020-03-22 17:17:26'),
(216, '2020-03-22', 89, 73, 40, 55, 5, 275, 75, 1, '2020-03-22 17:17:26', '2020-03-22 17:17:26'),
(217, '2020-03-22', 89, 216, 220, 140, 4, 560, -320, 1, '2020-03-22 17:17:26', '2020-03-22 17:17:26'),
(218, '2020-03-23', 90, 218, 130, 160, 2500, 400000, 75000, 1, '2020-03-23 11:08:52', '2020-03-23 11:08:52'),
(219, '2020-08-19', 91, 3, 380, 410, 36, 14760, 1080, 1, '2020-09-04 05:13:52', '2020-09-04 05:13:52'),
(220, '2020-08-19', 91, 4, 310, 335, 24, 8040, 600, 1, '2020-09-04 05:13:52', '2020-09-04 05:13:52'),
(221, '2020-08-19', 91, 5, 250, 325, 48, 15600, 3600, 1, '2020-09-04 05:13:52', '2020-09-04 05:13:52'),
(222, '2020-08-19', 91, 6, 190, 230, 24, 5520, 960, 1, '2020-09-04 05:13:52', '2020-09-04 05:13:52'),
(223, '2020-09-09', 92, 38, 2520, 2800, 4, 11200, 1120, 1, '2020-09-09 05:40:20', '2020-09-09 05:40:20'),
(224, '2020-09-09', 92, 21, 2430, 2700, 4, 10800, 1080, 1, '2020-09-09 05:40:20', '2020-09-09 05:40:20'),
(225, '2020-09-09', 92, 22, 1575, 1750, 10, 17500, 1750, 1, '2020-09-09 05:40:20', '2020-09-09 05:40:20'),
(227, '2022-05-11', 94, 6, 190, 230, 1, 230, 40, 1, '2022-05-11 10:28:59', '2022-05-11 10:28:59'),
(229, '2022-05-12', 96, 3, 380, 400, 1, 400, 20, 1, '2022-05-12 08:18:31', '2022-05-12 08:18:31'),
(230, '2022-05-12', 96, 4, 310, 350, 1, 350, 40, 1, '2022-05-12 08:18:31', '2022-05-12 08:18:31'),
(231, '2022-06-20', 97, 3, 380, 400, 1, 400, 20, 1, '2022-06-20 06:07:22', '2022-06-20 06:07:22'),
(232, '2022-06-20', 98, 3, 380, 400, 1, 400, 20, 1, '2022-06-20 06:36:14', '2022-06-20 06:36:14'),
(233, '2022-06-26', 99, 4, 310, 350, 1, 350, 40, 1, '2022-06-26 14:08:19', '2022-06-26 14:08:19'),
(234, '2022-06-26', 100, 8, 800, 950, 1, 950, 150, 1, '2022-06-26 14:10:20', '2022-06-26 14:10:20'),
(235, '2022-06-26', 101, 3, 380, 400, 1, 400, 20, 1, '2022-06-26 14:13:55', '2022-06-26 14:13:55'),
(236, '2022-07-30', 102, 221, 230, 430, 500, 215000, 100000, 1, '2022-07-30 08:05:03', '2022-07-30 08:05:03'),
(237, '2022-07-30', 103, 221, 230, 430, 300, 129000, 60000, 1, '2022-07-30 08:09:01', '2022-07-30 08:09:01');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_id` int(11) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `store` int(11) DEFAULT NULL,
  `start_stock` int(11) DEFAULT NULL,
  `last_import` int(11) DEFAULT NULL,
  `last_export` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `pro_id`, `stock`, `store`, `start_stock`, `last_import`, `last_export`, `created_at`, `updated_at`) VALUES
(1, 1, 0, NULL, NULL, NULL, NULL, '2020-02-24 15:34:10', '2020-02-24 15:34:10'),
(2, 1, 0, NULL, NULL, NULL, NULL, '2020-02-24 16:53:04', '2020-02-24 16:53:04'),
(3, 2, 0, NULL, NULL, NULL, NULL, '2020-02-24 16:55:33', '2020-02-24 16:55:33'),
(4, 4, 0, NULL, NULL, NULL, NULL, '2020-02-24 17:00:09', '2020-02-24 17:00:09'),
(5, 5, 0, NULL, NULL, NULL, NULL, '2020-02-24 17:00:37', '2020-02-24 17:00:37'),
(6, 6, 0, NULL, NULL, NULL, NULL, '2020-02-24 17:02:27', '2020-02-24 17:02:27'),
(7, 1, 0, NULL, NULL, NULL, NULL, '2020-02-25 13:09:43', '2020-02-25 13:09:43'),
(8, 2, 0, NULL, NULL, NULL, NULL, '2020-02-25 14:03:59', '2020-02-25 14:03:59'),
(9, 3, 0, NULL, NULL, NULL, NULL, '2020-03-03 16:29:16', '2020-03-03 16:29:16'),
(10, 4, 0, NULL, NULL, NULL, NULL, '2020-03-03 16:31:53', '2020-03-03 16:31:53'),
(11, 5, 0, NULL, NULL, NULL, NULL, '2020-03-03 16:40:26', '2020-03-03 16:40:26'),
(12, 6, 0, NULL, NULL, NULL, NULL, '2020-03-03 18:18:15', '2020-03-03 18:18:15'),
(13, 7, 0, NULL, NULL, NULL, NULL, '2020-03-03 18:30:11', '2020-03-03 18:30:11'),
(14, 8, 0, NULL, NULL, NULL, NULL, '2020-03-03 19:28:10', '2020-03-03 19:28:10'),
(15, 9, 0, NULL, NULL, NULL, NULL, '2020-03-03 20:03:58', '2020-03-03 20:03:58'),
(16, 10, 0, NULL, NULL, NULL, NULL, '2020-03-08 15:59:46', '2020-03-08 15:59:46'),
(17, 11, 0, NULL, NULL, NULL, NULL, '2020-03-08 16:02:39', '2020-03-08 16:02:39'),
(18, 12, 0, NULL, NULL, NULL, NULL, '2020-03-08 16:08:12', '2020-03-08 16:08:12'),
(19, 13, 0, NULL, NULL, NULL, NULL, '2020-03-08 16:10:05', '2020-03-08 16:10:05'),
(20, 14, 0, NULL, NULL, NULL, NULL, '2020-03-08 16:11:40', '2020-03-08 16:11:40'),
(21, 15, 0, NULL, NULL, NULL, NULL, '2020-03-08 16:12:57', '2020-03-08 16:12:57'),
(22, 16, 0, NULL, NULL, NULL, NULL, '2020-03-08 16:14:31', '2020-03-08 16:14:31'),
(23, 17, 0, NULL, NULL, NULL, NULL, '2020-03-08 16:19:20', '2020-03-08 16:19:20'),
(24, 18, 0, NULL, NULL, NULL, NULL, '2020-03-08 16:20:15', '2020-03-08 16:20:15'),
(25, 19, 0, NULL, NULL, NULL, NULL, '2020-03-09 16:44:14', '2020-03-09 16:44:14'),
(26, 20, 0, NULL, NULL, NULL, NULL, '2020-03-09 16:47:42', '2020-03-09 16:47:42'),
(27, 21, 0, NULL, NULL, NULL, NULL, '2020-03-09 16:55:47', '2020-03-09 16:55:47'),
(28, 22, 0, NULL, NULL, NULL, NULL, '2020-03-09 16:59:24', '2020-03-09 16:59:24'),
(29, 23, 0, NULL, NULL, NULL, NULL, '2020-03-09 18:38:26', '2020-03-09 18:38:26'),
(30, 24, 0, NULL, NULL, NULL, NULL, '2020-03-09 18:39:44', '2020-03-09 18:39:44'),
(31, 25, 0, NULL, NULL, NULL, NULL, '2020-03-10 13:43:52', '2020-03-10 13:43:52'),
(32, 26, 0, NULL, NULL, NULL, NULL, '2020-03-10 13:48:26', '2020-03-10 13:48:26'),
(33, 27, 0, NULL, NULL, NULL, NULL, '2020-03-10 13:50:34', '2020-03-10 13:50:34'),
(34, 28, 0, NULL, NULL, NULL, NULL, '2020-03-10 13:52:28', '2020-03-10 13:52:28'),
(35, 29, 0, NULL, NULL, NULL, NULL, '2020-03-10 13:54:03', '2020-03-10 13:54:03'),
(36, 30, 0, NULL, NULL, NULL, NULL, '2020-03-10 14:02:12', '2020-03-10 14:02:12'),
(37, 31, 0, NULL, NULL, NULL, NULL, '2020-03-10 16:36:50', '2020-03-10 16:36:50'),
(38, 32, 0, NULL, NULL, NULL, NULL, '2020-03-10 16:38:05', '2020-03-10 16:38:05'),
(39, 33, 0, NULL, NULL, NULL, NULL, '2020-03-10 17:44:10', '2020-03-10 17:44:10'),
(40, 34, 0, NULL, NULL, NULL, NULL, '2020-03-10 17:46:10', '2020-03-10 17:46:10'),
(41, 35, 0, NULL, NULL, NULL, NULL, '2020-03-10 17:50:27', '2020-03-10 17:50:27'),
(42, 36, 0, NULL, NULL, NULL, NULL, '2020-03-10 17:55:26', '2020-03-10 17:55:26'),
(43, 37, 0, NULL, NULL, NULL, NULL, '2020-03-10 20:02:39', '2020-03-10 20:02:39'),
(44, 38, 0, NULL, NULL, NULL, NULL, '2020-03-11 18:59:49', '2020-03-11 18:59:49'),
(45, 39, 0, NULL, NULL, NULL, NULL, '2020-03-12 11:28:08', '2020-03-12 11:28:08'),
(46, 40, 0, NULL, NULL, NULL, NULL, '2020-03-12 11:29:16', '2020-03-12 11:29:16'),
(47, 41, 0, NULL, NULL, NULL, NULL, '2020-03-12 11:33:27', '2020-03-12 11:33:27'),
(48, 42, 0, NULL, NULL, NULL, NULL, '2020-03-12 11:35:26', '2020-03-12 11:35:26'),
(49, 43, 0, NULL, NULL, NULL, NULL, '2020-03-12 11:53:08', '2020-03-12 11:53:08'),
(50, 44, 0, NULL, NULL, NULL, NULL, '2020-03-12 11:57:28', '2020-03-12 11:57:28'),
(51, 45, 0, NULL, NULL, NULL, NULL, '2020-03-12 11:59:12', '2020-03-12 11:59:12'),
(52, 46, 0, NULL, NULL, NULL, NULL, '2020-03-12 12:00:49', '2020-03-12 12:00:49'),
(53, 47, 0, NULL, NULL, NULL, NULL, '2020-03-12 12:01:45', '2020-03-12 12:01:45'),
(54, 48, 0, NULL, NULL, NULL, NULL, '2020-03-12 12:03:46', '2020-03-12 12:03:46'),
(55, 49, 0, NULL, NULL, NULL, NULL, '2020-03-12 12:06:19', '2020-03-12 12:06:19'),
(56, 50, 0, NULL, NULL, NULL, NULL, '2020-03-12 12:08:52', '2020-03-12 12:08:52'),
(57, 51, 0, NULL, NULL, NULL, NULL, '2020-03-12 12:12:38', '2020-03-12 12:12:38'),
(58, 52, 0, NULL, NULL, NULL, NULL, '2020-03-12 12:15:08', '2020-03-12 12:15:08'),
(59, 53, 0, NULL, NULL, NULL, NULL, '2020-03-12 12:16:06', '2020-03-12 12:16:06'),
(60, 54, 0, NULL, NULL, NULL, NULL, '2020-03-12 15:55:56', '2020-03-12 15:55:56'),
(61, 55, 0, NULL, NULL, NULL, NULL, '2020-03-12 15:57:45', '2020-03-12 15:57:45'),
(62, 56, 0, NULL, NULL, NULL, NULL, '2020-03-12 16:00:35', '2020-03-12 16:00:35'),
(63, 57, 0, NULL, NULL, NULL, NULL, '2020-03-12 16:02:30', '2020-03-12 16:02:30'),
(64, 58, 0, NULL, NULL, NULL, NULL, '2020-03-12 16:03:22', '2020-03-12 16:03:22'),
(65, 59, 0, NULL, NULL, NULL, NULL, '2020-03-12 16:04:44', '2020-03-12 16:04:44'),
(66, 60, 0, NULL, NULL, NULL, NULL, '2020-03-12 16:05:38', '2020-03-12 16:05:38'),
(67, 61, 0, NULL, NULL, NULL, NULL, '2020-03-12 16:06:19', '2020-03-12 16:06:19'),
(68, 62, 0, NULL, NULL, NULL, NULL, '2020-03-12 16:07:33', '2020-03-12 16:07:33'),
(69, 63, 0, NULL, NULL, NULL, NULL, '2020-03-12 16:13:47', '2020-03-12 16:13:47'),
(70, 64, 0, NULL, NULL, NULL, NULL, '2020-03-12 16:22:33', '2020-03-12 16:22:33'),
(71, 65, 0, NULL, NULL, NULL, NULL, '2020-03-12 16:24:16', '2020-03-12 16:24:16'),
(72, 66, 0, NULL, NULL, NULL, NULL, '2020-03-12 16:25:21', '2020-03-12 16:25:21'),
(73, 67, 0, NULL, NULL, NULL, NULL, '2020-03-12 16:27:08', '2020-03-12 16:27:08'),
(74, 68, 0, NULL, NULL, NULL, NULL, '2020-03-12 16:28:51', '2020-03-12 16:28:51'),
(75, 69, 0, NULL, NULL, NULL, NULL, '2020-03-12 16:29:57', '2020-03-12 16:29:57'),
(76, 70, 0, NULL, NULL, NULL, NULL, '2020-03-12 16:31:08', '2020-03-12 16:31:08'),
(77, 71, 0, NULL, NULL, NULL, NULL, '2020-03-12 16:31:57', '2020-03-12 16:31:57'),
(78, 72, 0, NULL, NULL, NULL, NULL, '2020-03-12 16:34:51', '2020-03-12 16:34:51'),
(79, 73, 0, NULL, NULL, NULL, NULL, '2020-03-12 16:36:00', '2020-03-12 16:36:00'),
(80, 74, 0, NULL, NULL, NULL, NULL, '2020-03-12 16:38:25', '2020-03-12 16:38:25'),
(81, 75, 0, NULL, NULL, NULL, NULL, '2020-03-12 16:39:40', '2020-03-12 16:39:40'),
(82, 76, 0, NULL, NULL, NULL, NULL, '2020-03-12 16:42:05', '2020-03-12 16:42:05'),
(83, 77, 0, NULL, NULL, NULL, NULL, '2020-03-12 16:43:08', '2020-03-12 16:43:08'),
(84, 78, 0, NULL, NULL, NULL, NULL, '2020-03-12 16:45:47', '2020-03-12 16:45:47'),
(85, 79, 0, NULL, NULL, NULL, NULL, '2020-03-12 16:46:34', '2020-03-12 16:46:34'),
(86, 80, 0, NULL, NULL, NULL, NULL, '2020-03-12 19:59:08', '2020-03-12 19:59:08'),
(87, 81, 0, NULL, NULL, NULL, NULL, '2020-03-14 12:10:41', '2020-03-14 12:10:41'),
(88, 82, 0, NULL, NULL, NULL, NULL, '2020-03-14 15:45:00', '2020-03-14 15:45:00'),
(89, 83, 0, NULL, NULL, NULL, NULL, '2020-03-14 15:46:03', '2020-03-14 15:46:03'),
(90, 84, 0, NULL, NULL, NULL, NULL, '2020-03-14 15:47:04', '2020-03-14 15:47:04'),
(91, 85, 0, NULL, NULL, NULL, NULL, '2020-03-14 16:24:04', '2020-03-14 16:24:04'),
(92, 86, 0, NULL, NULL, NULL, NULL, '2020-03-14 16:25:12', '2020-03-14 16:25:12'),
(93, 87, 0, NULL, NULL, NULL, NULL, '2020-03-14 16:26:04', '2020-03-14 16:26:04'),
(94, 88, 0, NULL, NULL, NULL, NULL, '2020-03-14 16:26:52', '2020-03-14 16:26:52'),
(95, 89, 0, NULL, NULL, NULL, NULL, '2020-03-14 17:23:33', '2020-03-14 17:23:33'),
(96, 90, 0, NULL, NULL, NULL, NULL, '2020-03-14 17:24:29', '2020-03-14 17:24:29'),
(97, 91, 0, NULL, NULL, NULL, NULL, '2020-03-14 17:25:12', '2020-03-14 17:25:12'),
(98, 92, 0, NULL, NULL, NULL, NULL, '2020-03-14 17:26:42', '2020-03-14 17:26:42'),
(99, 93, 0, NULL, NULL, NULL, NULL, '2020-03-15 18:29:03', '2020-03-15 18:29:03'),
(100, 94, 0, NULL, NULL, NULL, NULL, '2020-03-15 18:32:31', '2020-03-15 18:32:31'),
(101, 95, 0, NULL, NULL, NULL, NULL, '2020-03-15 18:33:26', '2020-03-15 18:33:26'),
(102, 96, 0, NULL, NULL, NULL, NULL, '2020-03-15 18:37:22', '2020-03-15 18:37:22'),
(103, 97, 0, NULL, NULL, NULL, NULL, '2020-03-15 18:42:23', '2020-03-15 18:42:23'),
(104, 98, 0, NULL, NULL, NULL, NULL, '2020-03-15 19:01:30', '2020-03-15 19:01:30'),
(105, 99, 0, NULL, NULL, NULL, NULL, '2020-03-15 19:03:42', '2020-03-15 19:03:42'),
(106, 100, 0, NULL, NULL, NULL, NULL, '2020-03-15 19:14:00', '2020-03-15 19:14:00'),
(107, 101, 0, NULL, NULL, NULL, NULL, '2020-03-15 19:16:09', '2020-03-15 19:16:09'),
(108, 102, 0, NULL, NULL, NULL, NULL, '2020-03-15 19:19:58', '2020-03-15 19:19:58'),
(109, 103, 0, NULL, NULL, NULL, NULL, '2020-03-15 19:21:15', '2020-03-15 19:21:15'),
(110, 104, 0, NULL, NULL, NULL, NULL, '2020-03-15 20:13:22', '2020-03-15 20:13:22'),
(111, 105, 0, NULL, NULL, NULL, NULL, '2020-03-15 20:15:45', '2020-03-15 20:15:45'),
(112, 106, 0, NULL, NULL, NULL, NULL, '2020-03-15 20:17:51', '2020-03-15 20:17:51'),
(113, 107, 0, NULL, NULL, NULL, NULL, '2020-03-15 20:37:56', '2020-03-15 20:37:56'),
(114, 108, 0, NULL, NULL, NULL, NULL, '2020-03-15 20:39:53', '2020-03-15 20:39:53'),
(115, 109, 0, NULL, NULL, NULL, NULL, '2020-03-15 20:41:12', '2020-03-15 20:41:12'),
(116, 110, 0, NULL, NULL, NULL, NULL, '2020-03-15 20:44:14', '2020-03-15 20:44:14'),
(117, 111, 0, NULL, NULL, NULL, NULL, '2020-03-15 20:45:22', '2020-03-15 20:45:22'),
(118, 112, 0, NULL, NULL, NULL, NULL, '2020-03-15 20:51:12', '2020-03-15 20:51:12'),
(119, 113, 0, NULL, NULL, NULL, NULL, '2020-03-16 10:27:59', '2020-03-16 10:27:59'),
(120, 114, 0, NULL, NULL, NULL, NULL, '2020-03-16 10:45:25', '2020-03-16 10:45:25'),
(121, 115, 0, NULL, NULL, NULL, NULL, '2020-03-16 11:22:51', '2020-03-16 11:22:51'),
(122, 116, 0, NULL, NULL, NULL, NULL, '2020-03-16 11:23:39', '2020-03-16 11:23:39'),
(123, 117, 0, NULL, NULL, NULL, NULL, '2020-03-16 17:56:58', '2020-03-16 17:56:58'),
(124, 118, 0, NULL, NULL, NULL, NULL, '2020-03-16 17:57:50', '2020-03-16 17:57:50'),
(125, 119, 0, NULL, NULL, NULL, NULL, '2020-03-16 17:59:03', '2020-03-16 17:59:03'),
(126, 120, 0, NULL, NULL, NULL, NULL, '2020-03-16 17:59:40', '2020-03-16 17:59:40'),
(127, 121, 0, NULL, NULL, NULL, NULL, '2020-03-16 18:00:27', '2020-03-16 18:00:27'),
(128, 122, 0, NULL, NULL, NULL, NULL, '2020-03-16 18:01:22', '2020-03-16 18:01:22'),
(129, 123, 0, NULL, NULL, NULL, NULL, '2020-03-16 18:02:53', '2020-03-16 18:02:53'),
(130, 124, 0, NULL, NULL, NULL, NULL, '2020-03-16 18:05:23', '2020-03-16 18:05:23'),
(131, 125, 0, NULL, NULL, NULL, NULL, '2020-03-16 18:45:03', '2020-03-16 18:45:03'),
(132, 126, 0, NULL, NULL, NULL, NULL, '2020-03-17 10:47:54', '2020-03-17 10:47:54'),
(133, 127, 0, NULL, NULL, NULL, NULL, '2020-03-18 15:35:59', '2020-03-18 15:35:59'),
(134, 128, 0, NULL, NULL, NULL, NULL, '2020-03-18 15:41:07', '2020-03-18 15:41:07'),
(135, 129, 0, NULL, NULL, NULL, NULL, '2020-03-18 15:44:13', '2020-03-18 15:44:13'),
(136, 130, 0, NULL, NULL, NULL, NULL, '2020-03-18 15:51:32', '2020-03-18 15:51:32'),
(137, 131, 0, NULL, NULL, NULL, NULL, '2020-03-18 15:53:18', '2020-03-18 15:53:18'),
(138, 132, 0, NULL, NULL, NULL, NULL, '2020-03-18 15:54:03', '2020-03-18 15:54:03'),
(139, 133, 0, NULL, NULL, NULL, NULL, '2020-03-18 15:55:28', '2020-03-18 15:55:28'),
(140, 134, 0, NULL, NULL, NULL, NULL, '2020-03-18 15:56:08', '2020-03-18 15:56:08'),
(141, 135, 0, NULL, NULL, NULL, NULL, '2020-03-18 15:57:50', '2020-03-18 15:57:50'),
(142, 136, 0, NULL, NULL, NULL, NULL, '2020-03-18 15:59:41', '2020-03-18 15:59:41'),
(143, 137, 0, NULL, NULL, NULL, NULL, '2020-03-18 16:09:34', '2020-03-18 16:09:34'),
(144, 138, 0, NULL, NULL, NULL, NULL, '2020-03-18 16:10:34', '2020-03-18 16:10:34'),
(145, 139, 0, NULL, NULL, NULL, NULL, '2020-03-18 16:11:28', '2020-03-18 16:11:28'),
(146, 140, 0, NULL, NULL, NULL, NULL, '2020-03-18 16:12:36', '2020-03-18 16:12:36'),
(147, 141, 0, NULL, NULL, NULL, NULL, '2020-03-18 19:31:09', '2020-03-18 19:31:09'),
(148, 142, 0, NULL, NULL, NULL, NULL, '2020-03-18 19:31:52', '2020-03-18 19:31:52'),
(149, 143, 0, NULL, NULL, NULL, NULL, '2020-03-18 19:32:57', '2020-03-18 19:32:57'),
(150, 144, 0, NULL, NULL, NULL, NULL, '2020-03-18 19:33:44', '2020-03-18 19:33:44'),
(151, 145, 0, NULL, NULL, NULL, NULL, '2020-03-18 19:37:15', '2020-03-18 19:37:15'),
(152, 146, 0, NULL, NULL, NULL, NULL, '2020-03-18 19:38:57', '2020-03-18 19:38:57'),
(153, 147, 0, NULL, NULL, NULL, NULL, '2020-03-18 19:41:19', '2020-03-18 19:41:19'),
(154, 148, 0, NULL, NULL, NULL, NULL, '2020-03-19 10:10:19', '2020-03-19 10:10:19'),
(155, 149, 0, NULL, NULL, NULL, NULL, '2020-03-19 10:10:58', '2020-03-19 10:10:58'),
(156, 151, 0, NULL, NULL, NULL, NULL, '2020-03-19 10:13:54', '2020-03-19 10:13:54'),
(157, 152, 0, NULL, NULL, NULL, NULL, '2020-03-19 10:14:34', '2020-03-19 10:14:34'),
(158, 153, 0, NULL, NULL, NULL, NULL, '2020-03-19 10:15:15', '2020-03-19 10:15:15'),
(159, 154, 0, NULL, NULL, NULL, NULL, '2020-03-19 10:17:28', '2020-03-19 10:17:28'),
(160, 155, 0, NULL, NULL, NULL, NULL, '2020-03-19 10:18:07', '2020-03-19 10:18:07'),
(161, 156, 0, NULL, NULL, NULL, NULL, '2020-03-19 10:19:17', '2020-03-19 10:19:17'),
(162, 157, 0, NULL, NULL, NULL, NULL, '2020-03-19 10:20:12', '2020-03-19 10:20:12'),
(163, 158, 0, NULL, NULL, NULL, NULL, '2020-03-19 10:21:18', '2020-03-19 10:21:18'),
(164, 159, 0, NULL, NULL, NULL, NULL, '2020-03-19 10:22:13', '2020-03-19 10:22:13'),
(165, 160, 0, NULL, NULL, NULL, NULL, '2020-03-19 10:29:13', '2020-03-19 10:29:13'),
(166, 161, 0, NULL, NULL, NULL, NULL, '2020-03-19 10:58:39', '2020-03-19 10:58:39'),
(167, 162, 0, NULL, NULL, NULL, NULL, '2020-03-19 10:59:22', '2020-03-19 10:59:22'),
(168, 163, 0, NULL, NULL, NULL, NULL, '2020-03-19 11:01:34', '2020-03-19 11:01:34'),
(169, 164, 0, NULL, NULL, NULL, NULL, '2020-03-19 11:02:33', '2020-03-19 11:02:33'),
(170, 165, 0, NULL, NULL, NULL, NULL, '2020-03-19 11:03:18', '2020-03-19 11:03:18'),
(171, 166, 0, NULL, NULL, NULL, NULL, '2020-03-19 11:04:16', '2020-03-19 11:04:16'),
(172, 167, 0, NULL, NULL, NULL, NULL, '2020-03-19 11:24:23', '2020-03-19 11:24:23'),
(173, 168, 0, NULL, NULL, NULL, NULL, '2020-03-19 11:34:03', '2020-03-19 11:34:03'),
(174, 169, 0, NULL, NULL, NULL, NULL, '2020-03-19 11:48:06', '2020-03-19 11:48:06'),
(175, 170, 0, NULL, NULL, NULL, NULL, '2020-03-21 10:02:10', '2020-03-21 10:02:10'),
(176, 171, 0, NULL, NULL, NULL, NULL, '2020-03-21 10:04:48', '2020-03-21 10:04:48'),
(177, 172, 0, NULL, NULL, NULL, NULL, '2020-03-21 10:05:55', '2020-03-21 10:05:55'),
(178, 173, 0, NULL, NULL, NULL, NULL, '2020-03-21 10:07:55', '2020-03-21 10:07:55'),
(179, 174, 0, NULL, NULL, NULL, NULL, '2020-03-21 11:32:57', '2020-03-21 11:32:57'),
(180, 175, 0, NULL, NULL, NULL, NULL, '2020-03-21 11:34:41', '2020-03-21 11:34:41'),
(181, 176, 0, NULL, NULL, NULL, NULL, '2020-03-21 11:35:31', '2020-03-21 11:35:31'),
(182, 177, 0, NULL, NULL, NULL, NULL, '2020-03-21 19:12:11', '2020-03-21 19:12:11'),
(183, 178, 0, NULL, NULL, NULL, NULL, '2020-03-22 09:52:41', '2020-03-22 09:52:41'),
(184, 179, 0, NULL, NULL, NULL, NULL, '2020-03-22 09:55:00', '2020-03-22 09:55:00'),
(185, 180, 0, NULL, NULL, NULL, NULL, '2020-03-22 09:56:24', '2020-03-22 09:56:24'),
(186, 181, 0, NULL, NULL, NULL, NULL, '2020-03-22 09:58:00', '2020-03-22 09:58:00'),
(187, 182, 0, NULL, NULL, NULL, NULL, '2020-03-22 10:38:45', '2020-03-22 10:38:45'),
(188, 183, 0, NULL, NULL, NULL, NULL, '2020-03-22 10:40:20', '2020-03-22 10:40:20'),
(189, 184, 0, NULL, NULL, NULL, NULL, '2020-03-22 10:41:38', '2020-03-22 10:41:38'),
(190, 185, 0, NULL, NULL, NULL, NULL, '2020-03-22 10:44:24', '2020-03-22 10:44:24'),
(191, 186, 0, NULL, NULL, NULL, NULL, '2020-03-22 10:46:07', '2020-03-22 10:46:07'),
(192, 187, 0, NULL, NULL, NULL, NULL, '2020-03-22 10:48:20', '2020-03-22 10:48:20'),
(193, 188, 0, NULL, NULL, NULL, NULL, '2020-03-22 10:50:04', '2020-03-22 10:50:04'),
(194, 189, 0, NULL, NULL, NULL, NULL, '2020-03-22 10:52:46', '2020-03-22 10:52:46'),
(195, 190, 0, NULL, NULL, NULL, NULL, '2020-03-22 10:54:01', '2020-03-22 10:54:01'),
(196, 191, 0, NULL, NULL, NULL, NULL, '2020-03-22 10:55:02', '2020-03-22 10:55:02'),
(197, 192, 0, NULL, NULL, NULL, NULL, '2020-03-22 10:55:44', '2020-03-22 10:55:44'),
(198, 193, 0, NULL, NULL, NULL, NULL, '2020-03-22 11:09:27', '2020-03-22 11:09:27'),
(199, 194, 0, NULL, NULL, NULL, NULL, '2020-03-22 11:15:57', '2020-03-22 11:15:57'),
(200, 195, 0, NULL, NULL, NULL, NULL, '2020-03-22 11:27:04', '2020-03-22 11:27:04'),
(201, 196, 0, NULL, NULL, NULL, NULL, '2020-03-22 11:27:47', '2020-03-22 11:27:47'),
(202, 197, 0, NULL, NULL, NULL, NULL, '2020-03-22 11:28:28', '2020-03-22 11:28:28'),
(203, 198, 0, NULL, NULL, NULL, NULL, '2020-03-22 11:29:26', '2020-03-22 11:29:26'),
(204, 199, 0, NULL, NULL, NULL, NULL, '2020-03-22 11:30:13', '2020-03-22 11:30:13'),
(205, 200, 0, NULL, NULL, NULL, NULL, '2020-03-22 11:33:33', '2020-03-22 11:33:33'),
(206, 201, 0, NULL, NULL, NULL, NULL, '2020-03-22 11:34:58', '2020-03-22 11:34:58'),
(207, 202, 0, NULL, NULL, NULL, NULL, '2020-03-22 11:35:47', '2020-03-22 11:35:47'),
(208, 203, 0, NULL, NULL, NULL, NULL, '2020-03-22 11:39:36', '2020-03-22 11:39:36'),
(209, 204, 0, NULL, NULL, NULL, NULL, '2020-03-22 11:40:45', '2020-03-22 11:40:45'),
(210, 205, 0, NULL, NULL, NULL, NULL, '2020-03-22 11:47:06', '2020-03-22 11:47:06'),
(211, 207, 0, NULL, NULL, NULL, NULL, '2020-03-22 11:58:05', '2020-03-22 11:58:05'),
(212, 208, 0, NULL, NULL, NULL, NULL, '2020-03-22 12:08:07', '2020-03-22 12:08:07'),
(213, 209, 0, NULL, NULL, NULL, NULL, '2020-03-22 16:42:30', '2020-03-22 16:42:30'),
(214, 210, 0, NULL, NULL, NULL, NULL, '2020-03-22 16:43:43', '2020-03-22 16:43:43'),
(215, 211, 0, NULL, NULL, NULL, NULL, '2020-03-22 16:50:00', '2020-03-22 16:50:00'),
(216, 213, 0, NULL, NULL, NULL, NULL, '2020-03-22 16:51:35', '2020-03-22 16:51:35'),
(217, 214, 0, NULL, NULL, NULL, NULL, '2020-03-22 16:52:54', '2020-03-22 16:52:54'),
(218, 215, 0, NULL, NULL, NULL, NULL, '2020-03-22 16:54:33', '2020-03-22 16:54:33'),
(219, 216, 0, NULL, NULL, NULL, NULL, '2020-03-22 16:55:27', '2020-03-22 16:55:27'),
(220, 217, 0, NULL, NULL, NULL, NULL, '2020-03-22 16:56:10', '2020-03-22 16:56:10'),
(221, 218, 0, NULL, NULL, NULL, NULL, '2020-03-22 17:04:53', '2020-03-22 17:04:53'),
(222, 219, 0, NULL, NULL, NULL, NULL, '2020-09-06 10:24:51', '2020-09-06 10:24:51'),
(223, 220, 0, NULL, NULL, NULL, NULL, '2020-09-07 15:18:36', '2020-09-07 15:18:36'),
(224, 221, 0, NULL, NULL, NULL, NULL, '2020-09-10 11:17:06', '2020-09-10 11:17:06'),
(225, 221, 0, NULL, NULL, NULL, NULL, '2022-07-30 08:02:38', '2022-07-30 08:02:38');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `email`, `phone`, `address`, `code`, `document`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bangla Motor Store', 'monzuautomobiles89@yahhho.com', '01773340092', 'Bangla Motor', 'SC-1', NULL, 1, '2020-02-24 09:09:28', '2020-02-24 09:09:28'),
(3, 'Nahin Khan', 'nahin_khan@outlook.com', '0131 201 0704', '50/3, Beside Ananda Bhaban Community Centre, Shantinagar\r\nFlat - 7B', 'SC-2', NULL, 1, '2022-07-30 08:33:26', '2022-07-30 08:33:26');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `parentId` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `image`, `code`, `description`, `slug`, `status`, `parentId`, `created_at`, `updated_at`) VALUES
(1, 'Olympia', NULL, 'SCC-1', NULL, 'olympia', 1, 4, '2022-05-12 09:10:50', '2022-05-12 09:10:50');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_balance` double DEFAULT NULL,
  `custom1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `company`, `mobile`, `name`, `email`, `city`, `country`, `postal_code`, `address`, `start_balance`, `custom1`, `custom2`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Tashfa Autos', '01817783135', 'sayed', 'tashfaautos@gmail.com', 'Dhaka', 'Bangladesh', NULL, 'Rampura , Banasree', 108800, NULL, NULL, 1, NULL, '2020-03-11 11:51:01', '2020-03-11 11:51:01'),
(2, 'Hossain Motor', '029352273', 'Badal', NULL, 'Dhaka', 'Bangladesh', NULL, 'Fantasia ac market , Banglamotor', NULL, NULL, NULL, 1, NULL, '2020-03-15 19:10:30', '2020-03-15 19:10:30'),
(3, 'Rising Autos', '01711881983', 'shiblu', NULL, 'Dhaka', 'Bangladesh', NULL, 'Banglabazar', 94410, NULL, NULL, 1, NULL, '2020-03-17 10:58:13', '2020-03-17 10:58:13'),
(4, 'dasda', '01312010704', 'Nahin Khan', 'nahin_khan@outlook.com', 'Dhaka', 'Bangladesh', '1217', '50/3, Beside Ananda Bhaban Community Centre, Shantinagar', 100, NULL, NULL, 1, NULL, '2022-05-12 08:56:27', '2022-05-12 08:56:27');

-- --------------------------------------------------------

--
-- Table structure for table `systems`
--

CREATE TABLE `systems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `siteName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteEmail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteLogo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sitePhone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unitCode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expenseCategoryUnit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brandCode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryCode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subCategoryCode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productCode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoiceCode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchaseCode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storeCode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `systems`
--

INSERT INTO `systems` (`id`, `siteName`, `siteEmail`, `siteLogo`, `sitePhone`, `address`, `mobile`, `moto`, `unitCode`, `expenseCategoryUnit`, `brandCode`, `categoryCode`, `subCategoryCode`, `productCode`, `invoiceCode`, `purchaseCode`, `storeCode`, `created_at`, `updated_at`) VALUES
(1, 'MONZU AUTOMOBILES', 'monzuautomobiles89@yahoo.com', 'logo', '029351492/ 01813600979', '87 new esktaon road, Home town ac market , Banglamotor, Dhaka-1000', '01711563272', 'we ensure the best quality', 'pc', 'EC', 'BC', 'CC', 'SCC', 'PC', 'IC', 'PUC', 'SC', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operator` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operation_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `code`, `name`, `base_unit`, `operator`, `operation_value`, `status`, `created_at`, `updated_at`) VALUES
(4, 'CIMSU-1', 'KG', NULL, NULL, NULL, 1, '2020-01-18 00:51:47', '2020-01-18 00:51:47'),
(5, 'CIMSU-2', 'PIC', NULL, NULL, NULL, 1, '2020-01-18 00:51:55', '2020-01-18 00:51:55'),
(7, 'CIMSU-3', 'Samll Carton', 'PIC', '*', '10', 1, '2020-01-18 00:53:24', '2020-01-18 00:53:24'),
(8, 'pc-4', 'pcs', NULL, NULL, NULL, 1, '2020-03-03 15:28:11', '2020-03-03 15:28:11'),
(9, 'pc-5', 'carton', NULL, NULL, NULL, 1, '2020-03-03 15:28:46', '2020-03-03 15:28:46'),
(10, 'pc-6', 'set', NULL, NULL, NULL, 1, '2020-03-03 15:28:59', '2020-03-03 15:28:59'),
(11, 'pc-7', 'Can', NULL, NULL, NULL, 1, '2020-03-09 17:12:53', '2020-03-09 17:12:53'),
(12, 'pc-8', 'Litre', NULL, NULL, NULL, 1, '2022-05-12 09:23:19', '2022-05-12 09:23:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `type` int(11) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webcats`
--

CREATE TABLE `webcats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webcats`
--

INSERT INTO `webcats` (`id`, `cname`, `image`, `description`, `status`, `created_at`, `updated_at`) VALUES
(7, 'AIR  FILTER', 'public/uploads/image_400x400.png', 'store', 1, '2020-09-10 11:38:06', '2020-09-10 11:38:06'),
(9, 'WHEEL-BEARINGS', 'public/uploads/image2_400x400.png', 'WHEEL-BEARINGS', 1, '2020-09-10 11:40:06', '2020-09-10 11:40:06');

-- --------------------------------------------------------

--
-- Table structure for table `webpros`
--

CREATE TABLE `webpros` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `condition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webpros`
--

INSERT INTO `webpros` (`id`, `c_id`, `name`, `brand`, `condition`, `price`, `image`, `image1`, `image2`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, '7', 'HONDA 17220-5K0-A00 GENUINE AIR CLEANER FILTER', 'HONDA', 'New', 2000, 'public/uploads/HONDA-17220-5K0-A00-GENUINE-AIR-CLEANER-FILTER--600x400.jpg', 'public/uploads/HONDA-17220-5K0-A00-GENUINE-AIR-CLEANER-FILTER-600x332.jpg', 'public/uploads/HONDA-17220-5K0-A00-GENUINE-AIR-CLEANER-FILTER--600x400.jpg', '<p>good</p>', 1, '2020-09-12 06:13:39', '2020-09-12 06:13:39'),
(3, '7', 'HONDA 17220-R6A-J00 GENUINE AIR CLEANER FILTER', 'HONDA', 'New', 2200, 'public/uploads/HONDA-17220-R6A-J00-GENUINE-AIR-CLEANER-FILTER-600x400.jpg', 'public/uploads/HONDA-17220-R6A-J00-GENUINE-AIR-CLEANER-FILTER-600x400.jpg', 'public/uploads/HONDA-17220-R6A-J00-GENUINE-AIR-CLEANER-FILTER-600x400.jpg', '<p>best</p>', 1, '2020-09-12 06:15:38', '2020-09-12 06:15:38'),
(4, '7', 'HONDA 17220-RZA-000 GENUINE AIR CLEANER FILTER', 'HONDA', 'New', 2300, 'public/uploads/HONDA-17220-RZA-000-GENUINE-AIR-CLEANER-FILTER-600x892.jpg', 'public/uploads/HONDA-17220-RZA-000-GENUINE-AIR-CLEANER-FILTER-600x892.jpg', 'public/uploads/HONDA-17220-RZA-000-GENUINE-AIR-CLEANER-FILTER-600x892.jpg', '<p>best</p>', 1, '2020-09-12 06:17:09', '2020-09-12 06:17:09'),
(5, '9', 'KOYO DAC3870W-7CS66 FRONT AXLE WHEEL HUBS BEARING', 'KOYO', 'New', 4600, 'public/uploads/KOYO-DAC3870W-7CS66-FRONT-AXLE-WHEEL-HUBS-BEARING-600x400.jpg', 'public/uploads/KOYO-DAC3870W-7CS66-FRONT-AXLE-WHEEL-HUBS-BEARING-600x400.jpg', 'public/uploads/KOYO-DAC3870W-7CS66-FRONT-AXLE-WHEEL-HUBS-BEARING-600x400.jpg', '<p>good</p>', 1, '2020-09-12 06:19:48', '2020-09-12 06:19:48'),
(6, '9', 'KOYO TOYOTA FRONT AXLE WHEEL HUB BEARING', 'KOYO', 'New', 3500, 'public/uploads/bearings_online_koyo_dac4074w3cs80_toyotacorollafront_wheel_bearing.png', 'public/uploads/DAC4074W3CS80-768x576.jpg', 'public/uploads/bearings_online_koyo_dac4074w3cs80_toyotacorollafront_wheel_bearing.png', '<p>Good</p>', 1, '2020-09-12 06:20:57', '2020-09-12 06:20:57'),
(7, '9', 'MITSUBISHI MR418068 REAR AXLE WHEEL HUBS ASSY', 'MITSUBISHI', 'New', 4000, 'public/uploads/MITSUBISHI-MR418068-REAR-AXLE-WHEEL-HUBS-ASSY-600x400.jpg', 'public/uploads/MITSUBISHI-MR418068-REAR-AXLE-WHEEL-HUBS-ASSY-600x400.jpg', 'public/uploads/MITSUBISHI-MR418068-REAR-AXLE-WHEEL-HUBS-ASSY-600x400.jpg', '<p>good</p>', 1, '2020-09-12 06:21:54', '2020-09-12 06:21:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billers`
--
ALTER TABLE `billers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_code_unique` (`code`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_code_unique` (`code`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `cheque_infos`
--
ALTER TABLE `cheque_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- Indexes for table `customer_groups`
--
ALTER TABLE `customer_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_code_unique` (`code`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_product_lists`
--
ALTER TABLE `purchase_product_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_due_returns`
--
ALTER TABLE `sales_due_returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_products`
--
ALTER TABLE `sales_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_categories_code_unique` (`code`),
  ADD UNIQUE KEY `sub_categories_slug_unique` (`slug`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `systems`
--
ALTER TABLE `systems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `webcats`
--
ALTER TABLE `webcats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webpros`
--
ALTER TABLE `webpros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `billers`
--
ALTER TABLE `billers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cheque_infos`
--
ALTER TABLE `cheque_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `customer_groups`
--
ALTER TABLE `customer_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `purchase_product_lists`
--
ALTER TABLE `purchase_product_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `sales_due_returns`
--
ALTER TABLE `sales_due_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `sales_products`
--
ALTER TABLE `sales_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `systems`
--
ALTER TABLE `systems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webcats`
--
ALTER TABLE `webcats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `webpros`
--
ALTER TABLE `webpros`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
