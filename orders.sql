-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 18, 2021 at 02:22 PM
-- Server version: 5.7.35
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_no` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_each` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estimated` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bil_address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_no`, `product_name`, `quantity`, `price_each`, `estimated`, `bil_address`, `ship_address`, `total`, `payment_method`, `created_at`, `updated_at`) VALUES
(1, 'Science', '2', '$23.00', '5-6', '2,Edward_Street', '2,Edward_Street', '$46.00', 'Cash', NULL, '2021-08-18 05:41:41'),
(3, 'Faber', '25', '$12.00', '2', '23,Illan_Road,WA', '23,Illan_Road,WA', '$300.00', 'Cash', NULL, '2021-08-18 06:18:11'),
(4, 'Faver', '300', '$5.00', '2', '14,Koly_Mall', '14,Koly_Mall', '$1500.00', 'Cash', NULL, '2021-08-18 05:37:40'),
(5, 'Haiku', '150', '$2.00', '1', '12,Pulai_Jaya', '12,Pulai_Jaya', '$300.00', 'Online Banking', NULL, '2021-08-18 06:05:51'),
(6, 'Manilla', '200', '$0.50', '2', '2,Jalan_Kino', '2,Jalan_Kino', '$100.00', 'Online Banking', NULL, '2021-08-18 06:18:25'),
(7, 'Pinocyo Scissor', '200', '$1.00', '4 days', '4,Jalan_Mannhis', '4,Jalan_Mannhis', '$200.00', 'Online Banking', NULL, NULL),
(8, 'Faber', '300', '$1.50', '1', '6,Onlu,4_Street', '6,Onlu,4_Street', '$450.00', 'Cash', NULL, '2021-08-18 04:41:59'),
(10, 'A4 Exercise Book', '500', '$2.00', '2-4 days', '24,Kory_Street', '24,Kory_Street', '$1000.00', 'Cash', NULL, NULL),
(12, 'A5 Exercise Book', '500', '$3.00', '1 day', '2,Jalan_Kwai', '2,Jalan_Kwai', '$1500.00', 'Online Banking', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
