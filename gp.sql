-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2021 at 06:59 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gp`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `available` tinyint(1) NOT NULL DEFAULT 1,
  `factory_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `available`, `factory_id`, `created_at`, `updated_at`, `type`) VALUES
(6, 0, 'fact', NULL, '2021-07-22 14:53:41', NULL),
(7, 1, 'fact', NULL, '2021-07-21 16:35:54', NULL),
(8, 1, 'fact', NULL, '2021-07-18 14:07:26', NULL),
(9, 1, 'fact', NULL, '2021-07-22 14:42:01', NULL),
(10, 1, 'fact', NULL, '2021-07-22 14:49:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit_limit` double NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `company_name`, `credit_limit`, `phone`, `email`, `updated_at`, `created_at`, `password`, `api_token`, `latitude`, `longitude`) VALUES
(10, 'Moahmed Abdelfattah', 'M Company ', 5000, '01005748984', 'Mohamed Abdelfattah@gmail.com', '2021-07-21 16:04:57', '2021-05-08 20:44:42', '$2y$10$2gzIUisBl/0oqQ.GxAr0KeXV/sDPCwcqLsB/lsRs9pWulMcXFs1uK', 'IuKd9sgdKgRhRRliAvlPI0OFAC9Q0r6PC1GeOsaTFrVZQLD2U2tnrFzbltHU', 30.027323444436554, 31.23303272698302),
(11, 'Mohamed Mousa', 'El Roda production', 7000, '01005747984', 'Mohamed Mousa@gamil.com', NULL, '', '$2y$10$2gzIUisBl/0oqQ.GxAr0KeXV/sDPCwcqLsB/lsRs9pWulMcXFs1uK', NULL, 30.023279511599934, 31.226025320473088),
(16, 'Mohamed.Ashrf', 'Giza store', 5000, '01005748984', 'Mohamed.Ashrf@gmail.com', '2021-07-22 16:41:28', '2021-07-22 16:28:52', '$2y$10$gY5HMZD6BBQWwVhTAxVPWu6pHfMlW5zyngwxIHnYgY2tVq7LhVycG', 'YuOJ51eYoTdZjfauBQ0nCI3yoXpVKiJng3xbh9bu5ilxxbIUVtZJ4FCjAVPV', 29.940027923187014, 31.195281816675234),
(17, 'Mohamed.Taher', 'Mokatm store', 5000, '01005748984', 'Mohamed.Taher@gmail.com', '2021-07-22 16:30:11', '2021-07-22 16:30:11', '$2y$10$4ISwLCl4nEaAXIRN7RgQ8.U9AeVkQ1XWwqXQwoNFYWOjB81Y3O9O2', NULL, 30.008846385030655, 31.316301747362616),
(18, 'Mahmoud.Ashraf', 'Bolaq store', 5000, '01005748984', 'Mahmoud.Ashraf@gmail.com', '2021-07-22 16:31:12', '2021-07-22 16:31:12', '$2y$10$W/RCbps.uCqUURo4mSYTsu2119bns2R68zq1byNr/V7mIXr1kGxZK', NULL, 30.038482136949714, 31.189522735810804);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_manager` tinyint(1) NOT NULL DEFAULT 0,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `available` tinyint(1) NOT NULL DEFAULT 1,
  `job_tittle` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supervisor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `factory_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `is_manager`, `email`, `password`, `api_token`, `phone`, `available`, `job_tittle`, `supervisor_id`, `factory_id`, `created_at`, `updated_at`) VALUES
(3, 'Mahmoud Rageb', 0, 'Rageb@factory', '$2y$10$XGrJ775qahfoLwKGbrXAZedXU0RzmXQBu6.fr2en8awHE5zMW5WJ.', '4YjfPKqzceKKUq9CIJvH0Wimf6cozs3VXIO0Ry7ZaQpIYlBF0EniPJwDXwrq', '01005748984', 0, 'inventory supervisoer', NULL, 'fact', '2021-01-30 13:31:52', '2021-07-22 14:53:41'),
(4, 'Abdelfattah Mohmaed ', 1, 'MO@factory', '$2y$10$vZCUhD12L/uSo.MZla8aG.MKVgt0tIKxApWhkZ2LJ3BzG44T7o9MO', '7YhADZ59kkYPcRN5jHrCaLOesFxU1fceCaGG6u0Jrl0dnTiYQ7zwqXBf7AfK', NULL, 1, 'Manger', NULL, 'fact', '2021-01-30 13:32:54', '2021-07-21 14:39:39'),
(5, 'Bakr Mohamed ', 0, 'Bakr@factory', '$2y$10$PDWrWYOee6yAxhU.jaE.A.iGZQhH2dJBXoagMv8Y1kZOP3kotMTIi', 'zUgoJ6TeGfSYJUVb9gygmLbW2UYtRDmLNhBOGAAfEEejMIlylOGNLkquzvbS', NULL, 1, ' Inventory supervioser', NULL, 'fact', '2021-02-05 13:47:19', '2021-07-22 14:40:58'),
(6, 'Mahmoud Saeed ', 0, 'msm7@factory', '$2y$10$26JVMIdLzK6VboGFqjT6auqHhKm16LUJcjjEg1WgmC3ahlJ1qzKSi', NULL, '01005748984', 1, 'driver', NULL, 'fact', '2021-02-06 09:42:03', '2021-07-18 14:07:26'),
(9, 'Mohamed Mohsen', 0, 'Mohsen@factory', '$2y$10$bfxX.1jMFEw1xCavwY4ihupMfkkLAM6X7VnFN7APSf3wfm3EwvH5y', NULL, NULL, 1, 'driver', NULL, 'fact', '2021-07-12 20:12:13', '2021-07-22 14:42:01'),
(10, 'Mohamed Shrief', 0, 'Shrief@factory', '123', NULL, '01005748984', 1, 'Inventory supervisor', NULL, 'fact', NULL, '2021-07-22 14:49:00');

-- --------------------------------------------------------

--
-- Table structure for table `factories`
--

CREATE TABLE `factories` (
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `factories`
--

INSERT INTO `factories` (`name`, `capacity`, `created_at`, `updated_at`) VALUES
('fact', 200, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `capaicty` double NOT NULL,
  `location` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `factory_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `capaicty`, `location`, `employee_id`, `factory_id`, `created_at`, `updated_at`, `latitude`, `longitude`) VALUES
(1, 500, 'Sayad inventory ', 3, 'fact', NULL, NULL, 30.029123739785703, 31.237168780811302),
(2, 600, 'Saad Zagloul', 6, 'fact', NULL, NULL, 30.036518845133443, 31.240557020277983),
(6, 500, 'Dokki', 5, 'Fact', NULL, NULL, 30.037542189613614, 31.205186572052902),
(7, 500, 'Giza', 9, 'Fact', NULL, NULL, 30.015463427294378, 31.209161167262597),
(8, 500, 'Mokatm', 10, 'fact', NULL, NULL, 30.012845707559546, 31.29881061576493);

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
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2021_01_23_145151_create_factories_table', 1),
(8, '2021_01_23_145221_create_employees_table', 1),
(9, '2021_01_23_145235_create_cars_table', 1),
(10, '2021_01_23_145309_create_inventories_table', 1),
(11, '2021_01_23_145415_create_customers_table', 1),
(12, '2021_01_23_145539_create_product_descriptions_table', 1),
(13, '2021_01_23_145557_create_orders_table', 1),
(14, '2021_01_23_145607_create_order_items_table', 1),
(15, '2021_01_23_161031_create_products_table', 1),
(16, '2021_05_07_215330_add_email_columns_to_customers_table', 2),
(17, '2021_05_07_215950_drop_customers_table', 2),
(18, '2021_05_07_220845_removecsutomer', 3),
(19, '2021_05_07_221941_add_password_to_customers_table', 4),
(20, '2021_05_07_223820_add_password_to_customers_table', 5),
(21, '2021_07_11_114038_create_tests_table', 6),
(22, '2021_07_11_154300_create_tracking_products_table', 7),
(23, '2021_07_11_155548_create__adders_to_inventory', 8),
(24, '2021_07_14_164817_car_to_order', 9),
(25, '2021_07_14_183408_cars_to_orders', 10),
(26, '2021_07_14_184213_cartoorder', 11),
(27, '2021_07_17_124029_add_tokentoemploye', 12),
(28, '2021_07_17_124603_token_to_employee', 13),
(29, '2021_07_18_143153_add_token', 14),
(30, '2021_07_19_130157_add_quantity_and_url_to_product__des', 15),
(31, '2021_07_21_182107_add_long_and_lat_to_tables', 16);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '7HCtDkU4tP19QXIKeC9wmlf6s2r0mAlgsKO9ExoD', NULL, 'http://localhost', 1, 0, 0, '2021-07-17 10:11:01', '2021-07-17 10:11:01'),
(2, NULL, 'Laravel Password Grant Client', 'KPm3fIIiaxZMIddJKMVrOH09VYowRY6UUsSVIWpf', 'users', 'http://localhost', 0, 1, 0, '2021-07-17 10:11:01', '2021-07-17 10:11:01');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-07-17 10:11:01', '2021-07-17 10:11:01');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `total_cost` double NOT NULL,
  `stauts` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `inventory_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `car_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `date`, `total_cost`, `stauts`, `customer_id`, `employee_id`, `inventory_id`, `created_at`, `updated_at`, `car_id`) VALUES
(65, '2021-05-11', 1350, 'prepreing', 11, 3, 2, '2021-07-14 16:51:49', '2021-07-14 16:51:49', 6),
(66, '2021-05-11', 1350, 'prepreing', 10, 5, 1, '2021-07-14 16:52:03', '2021-07-14 16:52:03', 7),
(67, '2021-05-11', 1350, 'prepreing', 11, 5, 2, '2021-07-14 17:10:20', '2021-07-14 17:10:20', 6),
(68, '2021-05-11', 1350, 'prepreing', 10, 3, 1, '2021-07-14 17:15:00', '2021-07-14 17:15:00', 6),
(69, '2021-05-11', 650, 'prepreing', 10, 5, 2, '2021-07-15 11:45:00', '2021-07-15 11:45:00', 6),
(70, '2021-05-11', 650, 'prepreing', 10, 5, 1, '2021-07-18 12:27:09', '2021-07-18 12:27:09', 7),
(71, '2021-05-11', 650, 'prepreing', 10, 6, 1, '2021-07-18 14:07:26', '2021-07-18 14:07:26', 8),
(72, '2021-05-11', 650, 'prepreing', 11, 3, 2, '2021-07-21 16:35:14', '2021-07-21 16:35:14', 6),
(73, '2021-05-11', 650, 'prepreing', 10, 5, 1, '2021-07-21 16:35:54', '2021-07-21 16:35:54', 7),
(74, '2021-05-11', 650, 'prepreing', 16, 9, 1, '2021-07-22 14:42:01', '2021-07-22 14:42:01', 9),
(75, '2021-05-11', 650, 'prepreing', 17, 10, 2, '2021-07-22 14:49:01', '2021-07-22 14:49:01', 10),
(76, '2021-05-11', 650, 'prepreing', 17, 3, 8, '2021-07-22 14:53:41', '2021-07-22 14:53:41', 6);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `quantity` int(11) NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`quantity`, `order_id`, `category_id`, `created_at`, `updated_at`) VALUES
(15, 65, 1, '2021-07-14 16:51:49', '2021-07-14 16:51:49'),
(10, 65, 2, '2021-07-14 16:51:49', '2021-07-14 16:51:49'),
(15, 66, 1, '2021-07-14 16:52:03', '2021-07-14 16:52:03'),
(10, 66, 2, '2021-07-14 16:52:03', '2021-07-14 16:52:03'),
(15, 67, 1, '2021-07-14 17:10:21', '2021-07-14 17:10:21'),
(10, 67, 2, '2021-07-14 17:10:21', '2021-07-14 17:10:21'),
(15, 68, 1, '2021-07-14 17:15:00', '2021-07-14 17:15:00'),
(10, 68, 2, '2021-07-14 17:15:00', '2021-07-14 17:15:00'),
(1, 69, 1, '2021-07-15 11:45:01', '2021-07-15 11:45:01'),
(10, 69, 2, '2021-07-15 11:45:01', '2021-07-15 11:45:01'),
(1, 70, 1, '2021-07-18 12:27:10', '2021-07-18 12:27:10'),
(10, 70, 2, '2021-07-18 12:27:10', '2021-07-18 12:27:10'),
(1, 71, 1, '2021-07-18 14:07:27', '2021-07-18 14:07:27'),
(10, 71, 2, '2021-07-18 14:07:27', '2021-07-18 14:07:27'),
(1, 72, 1, '2021-07-21 16:35:14', '2021-07-21 16:35:14'),
(10, 72, 2, '2021-07-21 16:35:15', '2021-07-21 16:35:15'),
(1, 73, 1, '2021-07-21 16:35:55', '2021-07-21 16:35:55'),
(10, 73, 2, '2021-07-21 16:35:55', '2021-07-21 16:35:55'),
(1, 74, 1, '2021-07-22 14:42:02', '2021-07-22 14:42:02'),
(10, 74, 2, '2021-07-22 14:42:02', '2021-07-22 14:42:02'),
(1, 75, 1, '2021-07-22 14:49:01', '2021-07-22 14:49:01'),
(10, 75, 2, '2021-07-22 14:49:01', '2021-07-22 14:49:01'),
(1, 76, 1, '2021-07-22 14:53:41', '2021-07-22 14:53:41'),
(10, 76, 2, '2021-07-22 14:53:41', '2021-07-22 14:53:41');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `rfid` bigint(20) UNSIGNED NOT NULL,
  `description_id` bigint(20) UNSIGNED NOT NULL,
  `inventory_id` bigint(20) UNSIGNED NOT NULL,
  `factory_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`rfid`, `description_id`, `inventory_id`, `factory_id`, `created_at`, `updated_at`) VALUES
(21, 2, 1, 'fact', '2021-07-16 14:17:25', '2021-07-16 14:17:25'),
(22, 1, 8, 'fact', '2021-07-16 14:17:25', '2021-07-16 14:17:25'),
(23, 2, 2, 'fact', '2021-07-16 14:17:25', '2021-07-16 14:17:25'),
(24, 1, 2, 'fact', '2021-07-16 14:17:25', '2021-07-16 14:17:25'),
(25, 2, 7, 'fact', '2021-07-16 14:17:25', '2021-07-16 14:17:25'),
(26, 1, 1, 'fact', '2021-07-16 14:17:25', '2021-07-16 14:17:25'),
(30, 2, 6, 'fact', '2021-07-22 14:52:19', '2021-07-22 14:52:19'),
(32, 1, 6, 'fact', '2021-07-22 14:52:19', '2021-07-22 14:52:19'),
(36, 1, 2, 'fact', '2021-07-22 14:52:21', '2021-07-22 14:52:21'),
(37, 2, 7, 'fact', '2021-07-22 14:52:21', '2021-07-22 14:52:21'),
(41, 2, 8, 'fact', '2021-07-22 14:52:22', '2021-07-22 14:52:22'),
(43, 2, 1, 'fact', '2021-07-22 14:52:22', '2021-07-22 14:52:22');

-- --------------------------------------------------------

--
-- Table structure for table `product_descriptions`
--

CREATE TABLE `product_descriptions` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_descriptions`
--

INSERT INTO `product_descriptions` (`category_id`, `category_name`, `cost`, `created_at`, `updated_at`, `image_path`, `quantity`) VALUES
(1, 'Food', 50, '2021-07-19 11:59:17', NULL, 'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg', 0),
(2, 'drink', 60, '2021-07-19 11:59:17', NULL, 'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg', 0),
(3, 'cockacola', 120, '2021-07-19 11:58:30', '2021-07-19 11:58:30', 'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg', 15),
(4, 'oil', 120, '2021-07-19 11:58:50', '2021-07-19 11:58:50', 'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg', 15),
(5, 'chpis', 120, '2021-07-19 11:59:04', '2021-07-19 11:59:04', 'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg', 15),
(6, 'choclate', 120, '2021-07-19 11:59:17', '2021-07-19 11:59:17', 'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg', 15),
(7, 'sprite', 45, '2021-07-19 12:36:50', '2021-07-19 12:36:50', 'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg', 15),
(8, '3nab', 54, '2021-07-19 12:37:11', '2021-07-19 12:37:11', 'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tracking_products`
--

CREATE TABLE `tracking_products` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `rfid` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tracking_products`
--

INSERT INTO `tracking_products` (`order_id`, `rfid`, `created_at`, `updated_at`) VALUES
(70, 22, '2021-07-18 12:27:09', '2021-07-18 12:27:09'),
(70, 26, '2021-07-18 12:27:09', '2021-07-18 12:27:09'),
(70, 21, '2021-07-18 12:27:10', '2021-07-18 12:27:10'),
(71, 22, '2021-07-18 14:07:26', '2021-07-18 14:07:26'),
(71, 26, '2021-07-18 14:07:27', '2021-07-18 14:07:27'),
(71, 21, '2021-07-18 14:07:27', '2021-07-18 14:07:27'),
(72, 24, '2021-07-21 16:35:14', '2021-07-21 16:35:14'),
(72, 23, '2021-07-21 16:35:14', '2021-07-21 16:35:14'),
(72, 25, '2021-07-21 16:35:14', '2021-07-21 16:35:14'),
(73, 22, '2021-07-21 16:35:54', '2021-07-21 16:35:54'),
(73, 26, '2021-07-21 16:35:55', '2021-07-21 16:35:55'),
(73, 21, '2021-07-21 16:35:55', '2021-07-21 16:35:55'),
(74, 22, '2021-07-22 14:42:01', '2021-07-22 14:42:01'),
(74, 26, '2021-07-22 14:42:01', '2021-07-22 14:42:01'),
(74, 21, '2021-07-22 14:42:02', '2021-07-22 14:42:02'),
(75, 24, '2021-07-22 14:49:01', '2021-07-22 14:49:01'),
(75, 23, '2021-07-22 14:49:01', '2021-07-22 14:49:01'),
(75, 25, '2021-07-22 14:49:01', '2021-07-22 14:49:01'),
(76, 22, '2021-07-22 14:53:41', '2021-07-22 14:53:41'),
(76, 41, '2021-07-22 14:53:41', '2021-07-22 14:53:41');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cars_factory_id_foreign` (`factory_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_api_token_unique` (`api_token`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_api_token_unique` (`api_token`),
  ADD KEY `employees_factory_id_foreign` (`factory_id`);

--
-- Indexes for table `factories`
--
ALTER TABLE `factories`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventories_employee_id_foreign` (`employee_id`),
  ADD KEY `inventories_factory_id_foreign` (`factory_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`),
  ADD KEY `orders_employee_id_foreign` (`employee_id`),
  ADD KEY `orders_inventory_id_foreign` (`inventory_id`),
  ADD KEY `orders_car_id_foreign` (`car_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_category_id_foreign` (`category_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`rfid`),
  ADD KEY `products_description_id_foreign` (`description_id`),
  ADD KEY `products_inventory_id_foreign` (`inventory_id`),
  ADD KEY `products_factory_id_foreign` (`factory_id`);

--
-- Indexes for table `product_descriptions`
--
ALTER TABLE `product_descriptions`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tracking_products`
--
ALTER TABLE `tracking_products`
  ADD KEY `tracking_products_order_id_foreign` (`order_id`),
  ADD KEY `tracking_products_rfid_foreign` (`rfid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `rfid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `product_descriptions`
--
ALTER TABLE `product_descriptions`
  MODIFY `category_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `cars_factory_id_foreign` FOREIGN KEY (`factory_id`) REFERENCES `factories` (`name`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_factory_id_foreign` FOREIGN KEY (`factory_id`) REFERENCES `factories` (`name`);

--
-- Constraints for table `inventories`
--
ALTER TABLE `inventories`
  ADD CONSTRAINT `inventories_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `inventories_factory_id_foreign` FOREIGN KEY (`factory_id`) REFERENCES `factories` (`name`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_car_id_foreign` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`),
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `orders_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `orders_inventory_id_foreign` FOREIGN KEY (`inventory_id`) REFERENCES `inventories` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `product_descriptions` (`category_id`),
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_description_id_foreign` FOREIGN KEY (`description_id`) REFERENCES `product_descriptions` (`category_id`),
  ADD CONSTRAINT `products_factory_id_foreign` FOREIGN KEY (`factory_id`) REFERENCES `factories` (`name`),
  ADD CONSTRAINT `products_inventory_id_foreign` FOREIGN KEY (`inventory_id`) REFERENCES `inventories` (`id`);

--
-- Constraints for table `tracking_products`
--
ALTER TABLE `tracking_products`
  ADD CONSTRAINT `tracking_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `tracking_products_rfid_foreign` FOREIGN KEY (`rfid`) REFERENCES `products` (`rfid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
