-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2021 at 06:06 PM
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
-- Table structure for table `arduino`
--

CREATE TABLE `arduino` (
  `id` int(6) UNSIGNED NOT NULL,
  `sensor1` varchar(30) DEFAULT NULL,
  `sensor2` varchar(30) DEFAULT NULL,
  `sensor3` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(6, 0, 'fact', NULL, '2021-07-24 05:51:02', NULL),
(7, 0, 'fact', NULL, '2021-07-24 06:26:39', NULL),
(8, 0, 'fact', NULL, '2021-07-24 12:17:02', NULL),
(9, 0, 'fact', NULL, '2021-07-24 12:22:12', NULL),
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
  `longitude` double NOT NULL,
  `imageUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `company_name`, `credit_limit`, `phone`, `email`, `updated_at`, `created_at`, `password`, `api_token`, `latitude`, `longitude`, `imageUrl`) VALUES
(10, 'Moahmed Abdelfattah', 'M Company ', 5000, '01005748984', 'Mohamed Abdelfattah@gmail.com', '2021-07-21 16:04:57', '2021-05-08 20:44:42', '$2y$10$2gzIUisBl/0oqQ.GxAr0KeXV/sDPCwcqLsB/lsRs9pWulMcXFs1uK', 'IuKd9sgdKgRhRRliAvlPI0OFAC9Q0r6PC1GeOsaTFrVZQLD2U2tnrFzbltHU', 30.027323444436554, 31.23303272698302, 'https://cdn.discordapp.com/attachments/866650827380883496/868238031709155338/IMG_20210530_124449.jpg'),
(11, 'Mohamed Mousa', 'El Roda production', 7000, '01005747984', 'Mohamed.Mousa@gamil.com', '2021-07-23 21:01:12', '', '$2y$10$2gzIUisBl/0oqQ.GxAr0KeXV/sDPCwcqLsB/lsRs9pWulMcXFs1uK', 'J6ZBxcEQETVm11QJNb992FdVmVaxeHzyHrylabZ8gRHfUkooBPW5Umg4grap', 30.023279511599934, 31.226025320473088, 'https://cdn.discordapp.com/attachments/866650827380883496/868235621913739264/193505117_2885386878342054_5253953160473682336_n.jpg'),
(16, 'Mohamed.Ashrf', 'Giza store', 5000, '01005748984', 'Mohamed.Ashraf@gmail.com', '2021-07-24 14:43:08', '2021-07-22 16:28:52', '$2y$10$gY5HMZD6BBQWwVhTAxVPWu6pHfMlW5zyngwxIHnYgY2tVq7LhVycG', 'odTVMPCTE3LN3ttKIaFx2pJdZevQvJnDQ8rYPPgtGulMAAqFKdU44yi53kZE', 29.940027923187014, 31.195281816675234, 'https://cdn.discordapp.com/attachments/651464167383105563/868411015501594674/193818416_1850600891776695_8282787404938586732_n.jpg'),
(17, 'Mohamed.Taher', 'Mokatm store', 5000, '01005748984', 'Mohamed.Taher@gmail.com', '2021-07-22 16:30:11', '2021-07-22 16:30:11', '$2y$10$4ISwLCl4nEaAXIRN7RgQ8.U9AeVkQ1XWwqXQwoNFYWOjB81Y3O9O2', NULL, 30.008846385030655, 31.316301747362616, ''),
(18, 'Mahmoud.Ashraf', 'Bolaq store', 5000, '01005748984', 'Mahmoud.Ashraf@gmail.com', '2021-07-24 14:21:53', '2021-07-22 16:31:12', '$2y$10$W/RCbps.uCqUURo4mSYTsu2119bns2R68zq1byNr/V7mIXr1kGxZK', 'Iqix4ErQS364bJBLQ1cBCqJWfhnhWP01PUr22dgsKEZNv9VFfXMHwRY5jT1X', 30.038482136949714, 31.189522735810804, 'https://cdn.discordapp.com/attachments/866650827380883496/868411631082819594/194698331_2865338303689049_6065587074545362039_n.jpg');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `imageUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `is_manager`, `email`, `password`, `api_token`, `phone`, `available`, `job_tittle`, `supervisor_id`, `factory_id`, `created_at`, `updated_at`, `imageUrl`) VALUES
(3, 'Mahmoud Rageb', 0, 'Rageb@factory', '$2y$10$XGrJ775qahfoLwKGbrXAZedXU0RzmXQBu6.fr2en8awHE5zMW5WJ.', '4YjfPKqzceKKUq9CIJvH0Wimf6cozs3VXIO0Ry7ZaQpIYlBF0EniPJwDXwrq', '01005748984', 0, 'inventory supervisoer', NULL, 'fact', '2021-01-30 13:31:52', '2021-07-24 05:51:02', 'https://cdn.discordapp.com/attachments/573096138417111050/868381166078664744/192802087_963784947704059_7572111759993306419_n.jpg'),
(4, 'Abdelfattah Mohmaed ', 1, 'MO@factory', '$2y$10$vZCUhD12L/uSo.MZla8aG.MKVgt0tIKxApWhkZ2LJ3BzG44T7o9MO', 'efNH1RwG5FoyCwzHRviLniuyvQeCdzUxwF7QlUHt06f2Bf9kqiBK1ed1BUJW', NULL, 1, 'Manger', NULL, 'fact', '2021-01-30 13:32:54', '2021-07-24 11:33:37', 'https://cdn.discordapp.com/attachments/866650827380883496/868238031709155338/IMG_20210530_124449.jpg'),
(5, 'Bakr Mohamed ', 0, 'Bakr@factory', '$2y$10$PDWrWYOee6yAxhU.jaE.A.iGZQhH2dJBXoagMv8Y1kZOP3kotMTIi', 'LLEriFXX074pQYZ07AwMBqM5trRvzHbClayKN3U0FNdgCUr5kCGTjOGwKSVU', NULL, 0, ' Inventory supervioser', NULL, 'fact', '2021-02-05 13:47:19', '2021-07-24 11:34:10', 'https://cdn.discordapp.com/attachments/573096138417111050/868376661257760839/194360359_3536812999752878_3566670612381427582_n.jpg'),
(6, 'Mahmoud Saeed ', 0, 'msm7@factory', '$2y$10$26JVMIdLzK6VboGFqjT6auqHhKm16LUJcjjEg1WgmC3ahlJ1qzKSi', NULL, '01005748984', 0, 'driver', NULL, 'fact', '2021-02-06 09:42:03', '2021-07-24 12:17:02', 'https://cdn.discordapp.com/attachments/573096138417111050/868381167580221460/192862737_4010909725670349_941710975393216537_n.jpg'),
(9, 'Mohamed Mohsen', 0, 'Mohsen@factory', '$2y$10$bfxX.1jMFEw1xCavwY4ihupMfkkLAM6X7VnFN7APSf3wfm3EwvH5y', NULL, NULL, 0, 'driver', NULL, 'fact', '2021-07-12 20:12:13', '2021-07-24 12:22:12', 'https://cdn.discordapp.com/attachments/573096138417111050/868381165839605800/203691572_4101596543249819_3405651239738428567_n.jpg'),
(10, 'Mohamed Shrief', 0, 'Shrief@factory', '$2y$10$bfxX.1jMFEw1xCavwY4ihupMfkkLAM6X7VnFN7APSf3wfm3EwvH5y', NULL, '01005748984', 1, 'Inventory supervisor', NULL, 'fact', NULL, '2021-07-22 14:49:00', 'https://cdn.discordapp.com/attachments/651464167383105563/868410588731170816/193235169_5508539369218391_2312668250781113558_n.png'),
(11, 'Mohamed Sameh', 0, 'Mohamed.Sameh@gmail.com', '$2y$10$bfxX.1jMFEw1xCavwY4ihupMfkkLAM6X7VnFN7APSf3wfm3EwvH5y', NULL, '01005748984', 1, 'driver', NULL, 'fact', NULL, NULL, 'https://cdn.discordapp.com/attachments/866650827380883496/868412253307809812/74381705_1362613893900976_9102007337790472192_n.jpg');

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
(2, 500, 'Mokatm', 10, 'fact', NULL, NULL, 30.012845707559546, 31.29881061576493);

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
(31, '2021_07_21_182107_add_long_and_lat_to_tables', 16),
(32, '2021_07_23_205552_add_image_to_custmers', 17),
(33, '2021_07_25_133509_add_connter_to_products', 18);

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `rfid_counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Pepsi', 55, '2021-07-19 11:59:17', NULL, 'https://cdn.discordapp.com/attachments/866650827380883496/868225996757807124/-Bb5IdJK_400x400.jpg', 0),
(2, 'chpis', 65, '2021-07-19 11:59:04', '2021-07-19 11:59:04', 'https://cdn.discordapp.com/attachments/866650827380883496/868224141889790022/83WpLwaL.jpg', 15);

-- --------------------------------------------------------

--
-- Table structure for table `sensors`
--

CREATE TABLE `sensors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Indexes for table `arduino`
--
ALTER TABLE `arduino`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sensors`
--
ALTER TABLE `sensors`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `arduino`
--
ALTER TABLE `arduino`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

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
-- AUTO_INCREMENT for table `sensors`
--
ALTER TABLE `sensors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
