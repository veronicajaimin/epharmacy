-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2022 at 03:11 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(8, 'Bone & Joint Pain', '2022-06-08 05:31:34', '2022-06-08 05:31:34'),
(9, 'Fever, Pain & Inflammation', '2022-06-08 05:31:44', '2022-06-08 05:31:44'),
(10, 'Allergy & Immune System', '2022-06-08 05:31:58', '2022-06-08 05:31:58'),
(11, 'Ear, Nose & Throat (ENT)', '2022-06-08 05:32:10', '2022-06-08 05:32:10'),
(12, 'Skin Diseases', '2022-06-08 05:32:21', '2022-06-08 05:32:21'),
(13, 'Digestive System', '2022-06-08 05:32:33', '2022-06-08 05:32:33'),
(14, 'Infections', '2022-06-08 05:32:50', '2022-06-08 05:32:50'),
(15, 'Bladder Conditions', '2022-06-08 05:33:05', '2022-06-08 05:33:05'),
(16, 'Women\'s Health', '2022-06-08 05:33:14', '2022-06-08 05:33:14'),
(17, 'Travel Medicine', '2022-06-08 05:33:42', '2022-06-08 05:33:42'),
(18, 'Smoking Cessation', '2022-06-08 05:33:53', '2022-06-08 05:33:53'),
(19, 'Injections & Other Sterile Solutions', '2022-06-08 05:34:06', '2022-06-08 05:34:06'),
(20, 'Eye Conditions', '2022-06-08 05:34:17', '2022-06-08 05:34:17'),
(21, 'Cough & Cold', '2022-06-08 05:34:27', '2022-06-08 05:34:27'),
(22, 'Constipation/Diarrhoea Conditions', '2022-06-08 05:34:36', '2022-06-08 05:34:36'),
(23, 'Deworming', '2022-06-08 05:34:47', '2022-06-08 05:34:47'),
(24, 'Testing', '2022-06-19 03:25:18', '2022-06-19 03:25:18');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_06_14_141428_create_sessions_table', 1),
(7, '2022_06_14_201416_create_categories_table', 2),
(8, '2022_06_14_203258_create_products_table', 3),
(9, '2022_06_14_204157_create_carts_table', 4),
(10, '2022_06_14_204444_create_orders_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `user_id`, `product_title`, `quantity`, `price`, `image`, `product_id`, `payment_status`, `delivery_status`, `created_at`, `updated_at`) VALUES
(1, 'Veronica', 'veronicajaimin98@gmail.com', '0178618381', 'Unimas', '3', 'LifeFactor Truflex Capsule', '1', '313', '1654695528.png', '8', 'Cash On Delivery', 'Order has been cancelled', '2022-06-15 08:29:19', '2022-06-15 08:29:32'),
(2, 'Veronica', 'veronicajaimin98@gmail.com', '0178618381', 'Unimas', '3', 'LifeFactor Truflex', '1', '313', '1654695528.png', '8', 'Paid', 'Delivered', '2022-06-15 23:25:32', '2022-06-15 16:07:08'),
(3, 'Veronica', 'veronicajaimin98@gmail.com', '0178618381', 'Unimas', '3', 'Solaray Cranactin Af Extract', '1', '70.5', '1655030947.png', '15', 'Cash On Delivery', 'Processing', '2022-06-15 23:25:32', '2022-06-15 23:25:32'),
(4, 'Veronica', 'veronicajaimin98@gmail.com', '0178618381', 'Unimas', '3', 'Mac Dual Action Lozenges', '1', '56', '1655030344.png', '11', 'Cash On Delivery', 'Processing', '2022-06-15 23:26:53', '2022-06-15 23:26:53'),
(5, 'Veronica', 'veronicajaimin98@gmail.com', '0178618381', 'Unimas', '3', 'Dermalex Eczema Cream', '1', '46', '1655030438.png', '12', 'Cash On Delivery', 'Processing', '2022-06-15 23:26:53', '2022-06-15 23:26:53'),
(6, 'Veronica', 'veronicajaimin98@gmail.com', '0178618381', 'Unimas', '3', 'LifeFactor Truflex', '1', '313', '1654695528.png', '8', 'Cash On Delivery', 'Processing', '2022-06-15 23:29:07', '2022-06-15 23:29:07'),
(7, 'Veronica', 'veronicajaimin98@gmail.com', '0178618381', 'Unimas', '3', 'LifeFactor Truflex', '1', '313', '1654695528.png', '8', 'Cash On Delivery', 'Processing', '2022-06-15 23:29:07', '2022-06-15 23:29:07'),
(8, 'vrons', '67999@siswa.unimas.my', '12345678', 'uniams', '5', 'Reparil 20mg Tablet', '1', '42.8', '1654802208.jpg', '9', 'Cash On Delivery', 'Order has been cancelled', '2022-06-15 17:07:46', '2022-06-16 15:45:13'),
(9, 'Syifaa Aini', 'syifaalks85@gmail.com', '01124350663', 'UNIMAS', '6', 'Reparil 20mg Tablet', '2', '85.6', '1654802208.jpg', '9', 'Cash On Delivery', 'Order has been cancelled', '2022-06-15 19:23:08', '2022-06-15 19:24:03'),
(10, 'Syifaa Aini', 'syifaalks85@gmail.com', '01124350663', 'UNIMAS', '6', 'Stada Cezti 10', '1', '29', '1655030233.jpg', '10', 'Cash On Delivery', 'Order has been cancelled', '2022-06-15 19:23:08', '2022-06-15 19:24:15'),
(11, 'Syifaa Aini', 'syifaalks85@gmail.com', '01124350663', 'UNIMAS', '6', 'Reparil 20mg Tablet', '1', '42.8', '1654802208.jpg', '9', 'Paid', 'processing', '2022-06-15 19:28:17', '2022-06-15 19:28:17'),
(12, 'vrons', '67999@siswa.unimas.my', '12345678', 'uniams', '5', 'Reparil 20mg Tablet', '1', '42.8', '1654802208.jpg', '9', 'Paid', 'processing', '2022-06-16 15:25:30', '2022-06-16 15:25:30'),
(13, 'vrons', '67999@siswa.unimas.my', '12345678', 'uniams', '5', 'Reparil 20mg Tablet', '1', '42.8', '1654802208.jpg', '9', 'Cash On Delivery', 'Order has been cancelled', '2022-06-16 15:45:24', '2022-06-16 15:50:04'),
(14, 'Veronica', 'veronicajaimin98@gmail.com', '0178618381', 'Unimas', '3', 'Reparil 20mg Tablet', '1', '42.8', '1654802208.jpg', '9', 'Cash On Delivery', 'Processing', '2022-06-17 02:10:37', '2022-06-17 02:10:37'),
(15, 'Veronica', 'veronicajaimin98@gmail.com', '0178618381', 'Unimas', '3', 'rgnjn', '1', '12', '1655406606.png', '17', 'Cash On Delivery', 'Processing', '2022-06-17 02:10:37', '2022-06-17 02:10:37'),
(16, 'vrons', '67999@siswa.unimas.my', '12345678', 'uniams', '5', 'Solaray Cranactin Af Extract', '2', '141', '1655030947.png', '15', 'Paid', 'processing', '2022-06-17 06:32:31', '2022-06-17 06:32:31'),
(17, 'vrons', '67999@siswa.unimas.my', '12345678', 'uniams', '5', 'LifeFactor Truflex', '1', '313', '1654695528.png', '8', 'Paid', 'processing', '2022-06-17 06:32:31', '2022-06-17 06:32:31'),
(18, 'Veronica', 'queen19980717@gmail.com', '0178618381', 'Unimas', '8', 'Reparil 20mg Tablet', '1', '42.8', '1654802208.jpg', '9', 'Paid', 'processing', '2022-06-19 03:14:25', '2022-06-19 03:14:25'),
(19, 'Veronica', 'queen19980717@gmail.com', '0178618381', 'Unimas', '8', 'LifeFactor Truflex', '1', '313', '1654695528.png', '8', 'Paid', 'processing', '2022-06-19 03:14:25', '2022-06-19 03:14:25'),
(20, 'Veronica', 'queen19980717@gmail.com', '0178618381', 'Unimas', '8', 'Stada Cezti 10', '1', '29', '1655030233.jpg', '10', 'Cash On Delivery', 'Order has been cancelled', '2022-06-19 03:15:05', '2022-06-19 03:15:21'),
(21, 'Veronica', 'queen19980717@gmail.com', '0178618381', 'Unimas', '8', 'Mac Dual Action Lozenges', '1', '56', '1655030344.png', '11', 'Paid', 'Delivered', '2022-06-19 03:15:05', '2022-06-19 03:25:51');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('mishenhaniza@gmail.com', '$2y$10$7cuLr6OCqclR.WpkfQeD.e8rnc/ZtbZ2sQ5SpII9WrSOxbWR2P66y', '2022-06-15 23:52:31');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `category`, `quantity`, `price`, `discount_price`, `created_at`, `updated_at`) VALUES
(8, 'LifeFactor Truflex', 'The LifeFactor Truflex Capsule is formulated from gum resin extracted from Frankincense which contains anti-inflammatory properties, beneficial to relieve symptoms of joint pain and stiffness. It also slows down the degeneration of joints and supports hea', '1654695528.png', 'Bone & Joint Pain', '10', '348.00', '313.00', '2022-06-08 05:38:48', '2022-06-09 11:19:51'),
(9, 'Reparil 20mg Tablet', 'How To Use Reparil: 20mg Tablet This medicine is for oral use only. Swallow this medication as a whole with water. Do not chew, crush or break it. It is better to take this medication at a fixed time each day if it is indicated for everyday use. Administr', '1654802208.jpg', 'Fever, Pain & Inflammation', '50', '42.80', NULL, '2022-06-09 11:16:48', '2022-06-09 11:25:00'),
(10, 'Stada Cezti 10', 'Active Ingredient  Cetirizine  Introduction of Stada Cezti 10 10mg Tablet Cezti 10 10mg Tablet may be taken with or without meals, depending on your preference. According to the reason you are taking it, the dosage you need may differ. This medication is ', '1655030233.jpg', 'Allergy & Immune System', '30', '29.00', NULL, '2022-06-12 02:37:13', '2022-06-12 02:37:13'),
(11, 'Mac Dual Action Lozenges', 'This medication is not to be handled with wet hands. It is to be taken orally by allowing it to dissolve slowly. Do not chew or swallow. It may take awhile before it dissolves completely.', '1655030344.png', 'Ear, Nose & Throat (ENT)', '30', '56.00', NULL, '2022-06-12 02:39:04', '2022-06-12 02:39:04'),
(12, 'Dermalex Eczema Cream', 'The most common kind of eczema has an effective therapy. This creamy, non-greasy cream has been scientifically proved to deeply hydrate and replace moisture levels in the skin. It also aids the skin\'s natural healing process, which strengthens and restore', '1655030438.png', 'Skin Diseases', '30', '46.00', NULL, '2022-06-12 02:40:38', '2022-06-12 02:40:38'),
(13, 'Five Pagodas Ya Hom', 'From an ancient recipe passed down from generation to generation. REFRESHING AND REVIVING. To be taken if you are weary and unwell. Also useful for stomach problems or nausea. It may be consumed orally as well as inhaled.', '1655030557.png', 'Digestive System', '30', '11.14', NULL, '2022-06-12 02:42:37', '2022-06-12 02:50:45'),
(14, 'Ural Effervescent Granule', 'Ural ® is a sugar free, effective and pleasantly lemon flavoured urinary alkalinizer made in Australia. Ural ® indicated for relieving of discomfort in mild UTI, symptomatic relief of dysuria, to enhance the action of certain antibiotics, in gout to preve', '1655030864.png', 'Infections', '35', '42.60', '34.00', '2022-06-12 02:47:44', '2022-06-12 02:47:44'),
(15, 'Solaray Cranactin Af Extract', 'Prevents Adherence of Bacteria on Urinary Bladder (UTI)', '1655030947.png', 'Bladder Conditions', '60', '108.00', '70.50', '2022-06-12 02:49:07', '2022-06-12 02:51:03'),
(16, 'LIKE', 'OK', '1655371829.png', 'Travel Medicine', '20', '12.2', NULL, '2022-06-16 16:30:29', '2022-06-16 16:30:29'),
(18, 'Solaray Uva Ursi-H', 'Solaray Uva Ursi-H is tradionally used as a tonic for urinary tract problems. It helps relieve urinary tract swelling, constipation, reduce inflammation as well as soothes stomach pain. It also helps detoxify the body and boost the immune system.', '1655421084.png', 'Infections', '30', '72.90', '47.50', '2022-06-17 06:11:24', '2022-06-17 06:11:24'),
(20, 'Test product 1', 'stomach ache medicine', '1655583888.png', 'Travel Medicine', '30', '50.20', NULL, '2022-06-19 03:23:51', '2022-06-19 03:24:48');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ALX0OdQxmlq9Mp3ySUPOq8rwP8foC5oLwFEPJCL4', 8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWGtuSldCT2JtNzdhZmdMM21SWFFLdnQ1TUFJdWVrNWhMdVRVVDA4UyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZWRpcmVjdCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjg7fQ==', 1655598811),
('g9qfvRAytWDQWQ8WwSmQe8j81nrLSKHCncfJSy2N', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRld6QkFuYWFjdEtYbE9sR3h4a0RGUEh5WUhGSGhJcEJnYTY0WEx4eCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC92aWV3X2NhdGVnb3J5Ijt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9', 1655584194),
('Uk6QYwpgEf9PI63LOSdh9PTzrZj7R64C15dKtoLn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMHRjZFQzbWZ1bzNyU2tuU2czT3VjbGxjcnN5Zm9vVll1NVMzVGVmMCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fX0=', 1655583466),
('XsmRoLIQhFJgbtT2hIueTmc4rhePzGsgJhyRP8RJ', 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMDRBY0drc0RGZUx5dkpZMVBNWkVJUm5ZTFBJUktoR0ZBRnV0SjNlQSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZWdpc3RlciI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjc7fQ==', 1655582726);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `phone`, `address`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Ver', 'veron@gmail.com', '0', '123456', 'mmm', NULL, '$2y$10$6wxGVoUInsxwuDASr2aSKujNVEEEzNDscGJoCym49p0K.Ns6Ju0MK', NULL, NULL, '2022-06-14 21:18:56', NULL, NULL, NULL, '2022-06-15 02:37:12', '2022-06-15 02:37:12'),
(2, 'Admin', 'admin@gmail.com', '1', '0178631246', 'admin', '2022-06-14 21:18:43', '$2y$10$PdqZB7.e8RvMJiImfo7KZOfkSo4MUzlLc6hg6ntj2arUhVTFM0aqi', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-15 02:38:08', '2022-06-15 02:38:08'),
(3, 'Veronica', 'veronicajaimin98@gmail.com', '0', '0178618381', 'Unimas', '2022-06-15 04:44:57', '$2y$10$uYJMjxCcqApDBe1U6FyeXuAQtQ.uJgFCQgy33Zq3PEZTHHrnLTElO', NULL, NULL, NULL, '4Z0XauOz7aakKg7lki2E3YBFjsxBJ23ENFARlNOcmMJbMgntdZH90e8BRxvv', NULL, NULL, '2022-06-15 04:44:14', '2022-06-15 23:04:19'),
(4, 'mishen', 'mishenhaniza@gmail.com', '0', '01156241196', 'unimas', NULL, '$2y$10$rwDS9l5oiZkaCB40wSfGDumjfWYaSJXXQK9eak8wxixKcYLlUSAym', NULL, NULL, NULL, 'EJc9xbIZmDXTR0OlOxOl8F05kbs3P4jl2lHGTv2yL6zbWU2co0q55iPaiQqJ', NULL, NULL, '2022-06-15 08:03:02', '2022-06-15 08:03:02'),
(5, 'vrons', '67999@siswa.unimas.my', '0', '12345678', 'uniams', '2022-06-15 16:34:28', '$2y$10$dMPbwU2h9rQadkGxttDiaOdFo8J6jWUjESaQjPnmPmHeOFHKPpxNG', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-15 16:32:59', '2022-06-15 16:34:28'),
(6, 'Syifaa Aini', 'syifaalks85@gmail.com', '0', '01124350663', 'UNIMAS', '2022-06-15 12:21:00', '$2y$10$BH35JiRPzVeXUSy1wDGT4OJnT2b0cZmbjhVggFmRATmMoNsRHYaqm', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-15 19:20:05', '2022-06-15 19:20:05'),
(7, 'Veronica', 'queen1998@gmail.com', '0', '01786183281', 'Unimas', NULL, '$2y$10$o6YrbvpP8pYt8oHzlg4wf.4sQ2cbsaVebr7DvG/DnfLoBpfCA6eGe', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-19 03:05:15', '2022-06-19 03:05:15'),
(8, 'Veronica', 'queen19980717@gmail.com', '0', '0178618381', 'Unimas', '2022-06-19 03:11:52', '$2y$10$AsUkCM557Uex6LNHoOc/sOTiccposIrS4SN17Qux3OcrI7uo0hE86', NULL, NULL, NULL, 'le1oubgXnC7SEzyVdB5RBOsHXJ0tY1VscbYhyq8FQW0OGc2TbmW9MGZdhJmu', NULL, NULL, '2022-06-19 03:07:37', '2022-06-19 03:11:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
