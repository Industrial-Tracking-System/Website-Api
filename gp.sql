-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2021 at 03:55 PM
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
(6, 1, 'fact', NULL, '2021-07-15 11:45:00', NULL),
(7, 1, 'fact', NULL, '2021-07-15 11:18:39', NULL),
(8, 1, 'fact', NULL, '2021-07-15 11:21:05', NULL),
(9, 1, 'fact', NULL, '2021-07-15 11:21:32', NULL),
(10, 1, 'fact', NULL, '2021-07-15 11:22:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adress` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit_limit` double NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `adress`, `company_name`, `credit_limit`, `phone`, `email`, `updated_at`, `created_at`, `password`) VALUES
(10, '00', '30.0273250366121, 31.23310003798322', 'sayda', 5000, '01005748984', 'mohamed', '2021-05-08 20:44:42', '2021-05-08 20:44:42', '$2y$10$2gzIUisBl/0oqQ.GxAr0KeXV/sDPCwcqLsB/lsRs9pWulMcXFs1uK'),
(11, 'mohamed', '30.03558716119857, 31.23597847619803', 'asdasd', 7000, '01005747984', 'nn@aa.com', NULL, '', '123');

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
(3, 'moh', 0, 'moh1@factory', '$2y$10$XGrJ775qahfoLwKGbrXAZedXU0RzmXQBu6.fr2en8awHE5zMW5WJ.', NULL, NULL, 1, 'spo', NULL, 'fact', '2021-01-30 13:31:52', '2021-07-15 11:44:35'),
(4, 'zz', 1, 'zz2@factory', '$2y$10$vZCUhD12L/uSo.MZla8aG.MKVgt0tIKxApWhkZ2LJ3BzG44T7o9MO', NULL, NULL, 1, 'aas', NULL, 'fact', '2021-01-30 13:32:54', '2021-01-30 13:32:54'),
(5, 'mojhamed', 0, 'mojhamed3@factory', '$2y$10$PDWrWYOee6yAxhU.jaE.A.iGZQhH2dJBXoagMv8Y1kZOP3kotMTIi', NULL, NULL, 1, 'supervioser', NULL, 'fact', '2021-02-05 13:47:19', '2021-07-15 11:45:00'),
(6, 'ahmed', 0, 'ahmed4@factory', '$2y$10$26JVMIdLzK6VboGFqjT6auqHhKm16LUJcjjEg1WgmC3ahlJ1qzKSi', NULL, NULL, 1, 'sop', NULL, 'fact', '2021-02-06 09:42:03', '2021-07-15 11:18:39'),
(9, 'sdf', 0, 'sdf5@factory', '$2y$10$bfxX.1jMFEw1xCavwY4ihupMfkkLAM6X7VnFN7APSf3wfm3EwvH5y', NULL, NULL, 1, 'sdfsdf', NULL, 'fact', '2021-07-12 20:12:13', '2021-07-15 11:21:05');

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
  `addres` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `capaicty`, `location`, `employee_id`, `factory_id`, `created_at`, `updated_at`, `addres`) VALUES
(1, 500, 'sayda', 3, 'fact', NULL, NULL, '30.029123739785703,31.237168780811302'),
(2, 600, 'saad zagloul', 6, 'fact', NULL, NULL, '30.036518845133443,31.240557020277983'),
(5, 6, 'Asd', 9, 'Fact', NULL, NULL, 'Asdad');

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
(28, '2021_07_17_124603_token_to_employee', 13);

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
(69, '2021-05-11', 650, 'prepreing', 10, 5, 2, '2021-07-15 11:45:00', '2021-07-15 11:45:00', 6);

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
(10, 69, 2, '2021-07-15 11:45:01', '2021-07-15 11:45:01');

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
(5, 1, 2, 'fact', NULL, NULL),
(6, 2, 2, 'fact', NULL, NULL),
(7, 2, 2, 'fact', NULL, NULL),
(21, 2, 1, 'fact', '2021-07-16 14:17:25', '2021-07-16 14:17:25'),
(22, 1, 1, 'fact', '2021-07-16 14:17:25', '2021-07-16 14:17:25'),
(23, 2, 2, 'fact', '2021-07-16 14:17:25', '2021-07-16 14:17:25'),
(24, 1, 2, 'fact', '2021-07-16 14:17:25', '2021-07-16 14:17:25'),
(25, 2, 2, 'fact', '2021-07-16 14:17:25', '2021-07-16 14:17:25'),
(26, 1, 1, 'fact', '2021-07-16 14:17:25', '2021-07-16 14:17:25');

-- --------------------------------------------------------

--
-- Table structure for table `product_descriptions`
--

CREATE TABLE `product_descriptions` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_descriptions`
--

INSERT INTO `product_descriptions` (`category_id`, `category_name`, `cost`, `created_at`, `updated_at`) VALUES
(1, 'Food', 50, NULL, NULL),
(2, 'drink', 60, NULL, NULL);

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
(67, 5, '2021-07-14 17:10:20', '2021-07-14 17:10:20'),
(67, 6, '2021-07-14 17:10:21', '2021-07-14 17:10:21'),
(67, 7, '2021-07-14 17:10:21', '2021-07-14 17:10:21'),
(69, 5, '2021-07-15 11:45:00', '2021-07-15 11:45:00'),
(69, 6, '2021-07-15 11:45:01', '2021-07-15 11:45:01'),
(69, 7, '2021-07-15 11:45:01', '2021-07-15 11:45:01');

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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `rfid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `product_descriptions`
--
ALTER TABLE `product_descriptions`
  MODIFY `category_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
