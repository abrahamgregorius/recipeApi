-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 21, 2023 at 04:49 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `indo_recipe`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`) VALUES
(1, 'Main Dish', 'main-dish'),
(2, 'Appetizer', 'appetizer'),
(3, 'Salad', 'salad'),
(4, 'Soup', 'soup'),
(5, 'Dessert', 'dessert'),
(6, 'Condiment', 'condiment'),
(7, 'Snack', 'snack');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `recipe_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `recipe_id`, `user_id`, `comment`, `created_at`) VALUES
(1, 1, 10, 'Mouthwatering dishes that exceeded my expectations.', '2023-08-11 06:40:54'),
(2, 1, 37, 'Every dish was a delightful explosion of flavors. Loved it!', '2023-08-11 20:41:18'),
(3, 1, 20, 'Exceeded all expectations. The food was unbelievably good.', '2023-08-01 06:17:56'),
(4, 1, 11, 'I\'m in awe of the amazing flavors. Truly top-notch cuisine!', '2023-08-05 11:11:42'),
(5, 1, 29, 'I can\'t stop thinking about how delicious the food was.', '2023-08-13 19:19:29'),
(6, 2, 20, 'Exquisite flavors that left me wanting more.', '2023-07-28 08:42:05'),
(7, 2, 25, 'Delicious food that made me fall in love with every bite.', '2023-07-29 07:14:52'),
(8, 2, 43, 'The food was a delightful symphony of tastes. Loved it!', '2023-07-31 10:12:12'),
(9, 2, 36, 'I can\'t stop thinking about how delicious the food was.', '2023-07-29 05:21:27'),
(10, 2, 12, 'Mouthwatering dishes that exceeded my expectations.', '2023-07-26 04:43:21'),
(11, 3, 42, 'The food was simply divine. A treat for the taste buds!', '2023-08-19 16:11:35'),
(12, 3, 17, 'Every bite was a burst of flavor. Truly delightful!', '2023-08-09 23:26:34'),
(13, 3, 29, 'Delicious food that made me fall in love with every bite.', '2023-07-29 22:36:34'),
(14, 3, 33, 'The flavors danced on my palate. Truly a culinary delight.', '2023-08-16 08:24:46'),
(15, 3, 4, 'The taste was heavenly. A culinary masterpiece!', '2023-08-16 23:47:20'),
(16, 4, 7, 'The food was so delicious it made my day. Thank you!', '2023-08-09 04:23:58'),
(17, 4, 51, 'Every dish was a delightful explosion of flavors. Loved it!', '2023-08-14 18:32:01'),
(18, 4, 47, 'I can\'t stop thinking about how delicious the food was.', '2023-07-23 12:42:25'),
(19, 4, 33, 'The food was cooked to perfection. So scrumptious!', '2023-08-02 09:54:27'),
(20, 4, 9, 'Delicious food that made me fall in love with every bite.', '2023-07-28 23:07:24'),
(21, 5, 5, 'The food was simply divine. A treat for the taste buds!', '2023-08-15 07:10:48'),
(22, 5, 24, 'Exceeded all expectations. The food was unbelievably good.', '2023-07-29 17:57:09'),
(23, 5, 46, 'Exquisite flavors that left me wanting more.', '2023-08-08 14:47:52'),
(24, 5, 51, 'The food was simply divine. A treat for the taste buds!', '2023-07-28 05:44:58'),
(25, 5, 13, 'Delicious food that made me fall in love with every bite.', '2023-07-24 02:02:09'),
(26, 6, 50, 'Exceeded all expectations. The food was unbelievably good.', '2023-08-10 09:01:09'),
(27, 6, 36, 'Delicious food that made me fall in love with every bite.', '2023-08-13 08:45:10'),
(28, 6, 29, 'Mouthwatering dishes that exceeded my expectations.', '2023-08-16 05:05:17'),
(29, 6, 33, 'Every bite was a burst of flavor. Truly delightful!', '2023-07-31 20:51:49'),
(30, 6, 7, 'I\'m still savoring the deliciousness. It was incredible!', '2023-08-04 18:57:24'),
(31, 7, 33, 'The food was absolutely delicious! I couldn\'t get enough.', '2023-07-31 01:20:22'),
(32, 7, 6, 'Mouthwatering dishes that exceeded my expectations.', '2023-08-05 10:42:09'),
(33, 7, 2, 'The food was absolutely delicious! I couldn\'t get enough.', '2023-08-19 14:26:59'),
(34, 7, 27, 'The food was so delicious it made my day. Thank you!', '2023-08-14 10:01:49'),
(35, 7, 36, 'Delicious dishes that left me wanting to try everything.', '2023-08-14 15:12:23'),
(36, 8, 47, 'I\'m still savoring the deliciousness. It was incredible!', '2023-07-30 05:30:48'),
(37, 8, 27, 'I can\'t stop thinking about how delicious the food was.', '2023-07-22 03:34:01'),
(38, 8, 29, 'Every bite was a burst of flavor. Truly delightful!', '2023-07-22 19:44:04'),
(39, 8, 3, 'I\'m still savoring the deliciousness. It was incredible!', '2023-08-10 14:25:35'),
(40, 8, 40, 'The food was a delightful symphony of tastes. Loved it!', '2023-08-18 05:10:04'),
(41, 9, 38, 'Absolutely delicious! I would highly recommend it.', '2023-07-25 05:08:19'),
(42, 9, 20, 'The food was absolutely delicious! I couldn\'t get enough.', '2023-07-30 10:48:26'),
(43, 9, 33, 'Every dish was a delightful explosion of flavors. Loved it!', '2023-08-11 09:13:32'),
(44, 9, 28, 'The taste was heavenly. A culinary masterpiece!', '2023-07-31 17:09:22'),
(45, 9, 24, 'Delicious dishes that left me wanting to try everything.', '2023-08-09 17:24:10'),
(46, 10, 27, 'The taste was heavenly. A culinary masterpiece!', '2023-08-16 09:27:50'),
(47, 10, 17, 'The food was cooked to perfection. So scrumptious!', '2023-08-09 01:24:42'),
(48, 10, 25, 'Every dish was a delightful explosion of flavors. Loved it!', '2023-08-06 14:11:18'),
(49, 10, 39, 'Every bite was a burst of flavor. Truly delightful!', '2023-07-22 15:01:08'),
(50, 10, 15, 'The food was so delicious it made my day. Thank you!', '2023-07-22 04:53:43'),
(51, 11, 43, 'The food was cooked to perfection. So scrumptious!', '2023-08-08 18:53:17'),
(52, 11, 1, 'I\'m in awe of the amazing flavors. Truly top-notch cuisine!', '2023-07-28 02:17:22'),
(53, 11, 29, 'The food was simply divine. A treat for the taste buds!', '2023-07-25 10:28:45'),
(54, 11, 24, 'The food was simply divine. A treat for the taste buds!', '2023-08-06 21:33:50'),
(55, 11, 1, 'Absolutely delicious! I would highly recommend it.', '2023-08-04 20:42:54'),
(56, 12, 34, 'Delicious food that satisfied my cravings perfectly.', '2023-07-22 12:10:00'),
(57, 12, 31, 'Delicious food that made me fall in love with every bite.', '2023-08-14 19:11:47'),
(58, 12, 37, 'Mouthwatering dishes that exceeded my expectations.', '2023-08-20 03:45:51'),
(59, 12, 3, 'Mouthwatering dishes that exceeded my expectations.', '2023-08-02 15:33:32'),
(60, 12, 32, 'Every bite was a burst of flavor. Truly delightful!', '2023-07-28 07:09:43');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2023_08_17_025231_create_categories_table', 1),
(4, '2023_08_17_025232_create_recipes_table', 1),
(5, '2023_08_17_025250_create_comments_table', 1),
(6, '2023_08_17_025254_create_ratings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `recipe_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `rating` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `recipe_id`, `user_id`, `rating`, `created_at`) VALUES
(1, 1, 2, 5, '2023-08-21 02:49:10'),
(2, 1, 22, 2, '2023-08-21 02:49:10'),
(3, 1, 50, 4, '2023-08-21 02:49:10'),
(4, 1, 41, 3, '2023-08-21 02:49:10'),
(5, 1, 31, 3, '2023-08-21 02:49:10'),
(6, 1, 47, 4, '2023-08-21 02:49:10'),
(7, 1, 30, 2, '2023-08-21 02:49:10'),
(8, 1, 36, 5, '2023-08-21 02:49:10'),
(9, 1, 38, 5, '2023-08-21 02:49:10'),
(10, 1, 26, 5, '2023-08-21 02:49:10'),
(11, 1, 3, 3, '2023-08-21 02:49:10'),
(12, 1, 1, 4, '2023-08-21 02:49:10'),
(13, 1, 8, 3, '2023-08-21 02:49:10'),
(14, 1, 17, 5, '2023-08-21 02:49:10'),
(15, 1, 13, 4, '2023-08-21 02:49:10'),
(16, 1, 34, 3, '2023-08-21 02:49:10'),
(17, 1, 25, 3, '2023-08-21 02:49:10'),
(18, 1, 43, 4, '2023-08-21 02:49:10'),
(19, 1, 19, 5, '2023-08-21 02:49:10'),
(20, 1, 49, 5, '2023-08-21 02:49:10'),
(21, 1, 21, 1, '2023-08-21 02:49:10'),
(22, 1, 10, 3, '2023-08-21 02:49:10'),
(23, 1, 11, 4, '2023-08-21 02:49:10'),
(24, 1, 40, 5, '2023-08-21 02:49:10'),
(25, 1, 27, 4, '2023-08-21 02:49:10'),
(26, 1, 46, 4, '2023-08-21 02:49:10'),
(27, 1, 15, 4, '2023-08-21 02:49:10'),
(28, 1, 48, 5, '2023-08-21 02:49:10'),
(29, 1, 42, 4, '2023-08-21 02:49:10'),
(30, 1, 7, 5, '2023-08-21 02:49:10'),
(31, 1, 24, 4, '2023-08-21 02:49:10'),
(32, 1, 12, 2, '2023-08-21 02:49:10'),
(33, 2, 35, 2, '2023-08-21 02:49:10'),
(34, 2, 11, 5, '2023-08-21 02:49:10'),
(35, 3, 42, 4, '2023-08-21 02:49:10'),
(36, 3, 19, 1, '2023-08-21 02:49:10'),
(37, 3, 10, 3, '2023-08-21 02:49:10'),
(38, 3, 14, 2, '2023-08-21 02:49:10'),
(39, 3, 20, 4, '2023-08-21 02:49:10'),
(40, 3, 47, 4, '2023-08-21 02:49:10'),
(41, 3, 38, 5, '2023-08-21 02:49:10'),
(42, 3, 36, 3, '2023-08-21 02:49:10'),
(43, 3, 32, 3, '2023-08-21 02:49:10'),
(44, 3, 33, 5, '2023-08-21 02:49:10'),
(45, 3, 13, 4, '2023-08-21 02:49:10'),
(46, 3, 21, 3, '2023-08-21 02:49:10'),
(47, 3, 44, 2, '2023-08-21 02:49:10'),
(48, 3, 51, 5, '2023-08-21 02:49:10'),
(49, 3, 1, 5, '2023-08-21 02:49:10'),
(50, 3, 48, 5, '2023-08-21 02:49:10'),
(51, 3, 34, 3, '2023-08-21 02:49:10'),
(52, 3, 5, 5, '2023-08-21 02:49:10'),
(53, 3, 4, 5, '2023-08-21 02:49:10'),
(54, 3, 27, 5, '2023-08-21 02:49:10'),
(55, 3, 16, 2, '2023-08-21 02:49:10'),
(56, 3, 31, 5, '2023-08-21 02:49:10'),
(57, 3, 49, 4, '2023-08-21 02:49:10'),
(58, 3, 30, 4, '2023-08-21 02:49:10'),
(59, 3, 7, 3, '2023-08-21 02:49:10'),
(60, 3, 45, 4, '2023-08-21 02:49:10'),
(61, 3, 8, 4, '2023-08-21 02:49:10'),
(62, 3, 39, 4, '2023-08-21 02:49:10'),
(63, 3, 29, 5, '2023-08-21 02:49:10'),
(64, 3, 3, 3, '2023-08-21 02:49:10'),
(65, 3, 6, 4, '2023-08-21 02:49:10'),
(66, 4, 30, 4, '2023-08-21 02:49:10'),
(67, 4, 19, 3, '2023-08-21 02:49:10'),
(68, 4, 23, 5, '2023-08-21 02:49:10'),
(69, 4, 9, 4, '2023-08-21 02:49:10'),
(70, 4, 31, 3, '2023-08-21 02:49:10'),
(71, 4, 7, 3, '2023-08-21 02:49:10'),
(72, 4, 51, 4, '2023-08-21 02:49:10'),
(73, 4, 16, 5, '2023-08-21 02:49:10'),
(74, 4, 41, 4, '2023-08-21 02:49:10'),
(75, 4, 10, 4, '2023-08-21 02:49:10'),
(76, 4, 48, 5, '2023-08-21 02:49:10'),
(77, 4, 33, 4, '2023-08-21 02:49:10'),
(78, 4, 11, 3, '2023-08-21 02:49:10'),
(79, 4, 26, 5, '2023-08-21 02:49:10'),
(80, 4, 8, 5, '2023-08-21 02:49:10'),
(81, 4, 45, 3, '2023-08-21 02:49:10'),
(82, 4, 14, 3, '2023-08-21 02:49:10'),
(83, 4, 4, 5, '2023-08-21 02:49:10'),
(84, 4, 40, 3, '2023-08-21 02:49:10'),
(85, 4, 39, 2, '2023-08-21 02:49:10'),
(86, 4, 21, 5, '2023-08-21 02:49:10'),
(87, 4, 34, 4, '2023-08-21 02:49:10'),
(88, 4, 47, 4, '2023-08-21 02:49:10'),
(89, 4, 46, 4, '2023-08-21 02:49:10'),
(90, 4, 28, 4, '2023-08-21 02:49:10'),
(91, 4, 12, 5, '2023-08-21 02:49:10'),
(92, 4, 18, 4, '2023-08-21 02:49:10'),
(93, 4, 29, 3, '2023-08-21 02:49:10'),
(94, 4, 15, 3, '2023-08-21 02:49:10'),
(95, 4, 5, 5, '2023-08-21 02:49:10'),
(96, 4, 22, 4, '2023-08-21 02:49:10'),
(97, 4, 37, 4, '2023-08-21 02:49:10'),
(98, 4, 27, 2, '2023-08-21 02:49:10'),
(99, 5, 30, 5, '2023-08-21 02:49:10'),
(100, 5, 36, 5, '2023-08-21 02:49:10'),
(101, 5, 45, 4, '2023-08-21 02:49:10'),
(102, 5, 19, 4, '2023-08-21 02:49:10'),
(103, 5, 28, 3, '2023-08-21 02:49:10'),
(104, 5, 10, 4, '2023-08-21 02:49:10'),
(105, 5, 49, 4, '2023-08-21 02:49:10'),
(106, 5, 12, 2, '2023-08-21 02:49:10'),
(107, 5, 20, 4, '2023-08-21 02:49:10'),
(108, 5, 4, 4, '2023-08-21 02:49:10'),
(109, 5, 34, 3, '2023-08-21 02:49:10'),
(110, 5, 24, 4, '2023-08-21 02:49:10'),
(111, 5, 40, 2, '2023-08-21 02:49:10'),
(112, 5, 26, 5, '2023-08-21 02:49:10'),
(113, 5, 11, 3, '2023-08-21 02:49:10'),
(114, 5, 13, 5, '2023-08-21 02:49:10'),
(115, 5, 43, 2, '2023-08-21 02:49:10'),
(116, 5, 41, 4, '2023-08-21 02:49:10'),
(117, 5, 31, 3, '2023-08-21 02:49:10'),
(118, 5, 6, 4, '2023-08-21 02:49:10'),
(119, 5, 2, 5, '2023-08-21 02:49:10'),
(120, 5, 3, 2, '2023-08-21 02:49:10'),
(121, 6, 45, 4, '2023-08-21 02:49:10'),
(122, 6, 36, 3, '2023-08-21 02:49:10'),
(123, 7, 1, 4, '2023-08-21 02:49:10'),
(124, 7, 46, 4, '2023-08-21 02:49:10'),
(125, 7, 35, 1, '2023-08-21 02:49:10'),
(126, 7, 50, 4, '2023-08-21 02:49:10'),
(127, 7, 28, 2, '2023-08-21 02:49:10'),
(128, 7, 45, 3, '2023-08-21 02:49:10'),
(129, 7, 5, 3, '2023-08-21 02:49:10'),
(130, 7, 22, 4, '2023-08-21 02:49:10'),
(131, 7, 16, 5, '2023-08-21 02:49:10'),
(132, 7, 41, 4, '2023-08-21 02:49:10'),
(133, 7, 38, 4, '2023-08-21 02:49:10'),
(134, 7, 11, 2, '2023-08-21 02:49:10'),
(135, 7, 48, 1, '2023-08-21 02:49:10'),
(136, 7, 49, 4, '2023-08-21 02:49:10'),
(137, 7, 19, 5, '2023-08-21 02:49:10'),
(138, 7, 27, 2, '2023-08-21 02:49:10'),
(139, 7, 8, 4, '2023-08-21 02:49:10'),
(140, 7, 9, 4, '2023-08-21 02:49:10'),
(141, 8, 15, 5, '2023-08-21 02:49:10'),
(142, 8, 45, 4, '2023-08-21 02:49:10'),
(143, 8, 22, 1, '2023-08-21 02:49:10'),
(144, 8, 31, 2, '2023-08-21 02:49:10'),
(145, 8, 32, 5, '2023-08-21 02:49:10'),
(146, 8, 14, 5, '2023-08-21 02:49:10'),
(147, 8, 25, 4, '2023-08-21 02:49:10'),
(148, 8, 34, 4, '2023-08-21 02:49:10'),
(149, 8, 13, 3, '2023-08-21 02:49:10'),
(150, 8, 10, 2, '2023-08-21 02:49:10'),
(151, 8, 42, 2, '2023-08-21 02:49:10'),
(152, 8, 3, 3, '2023-08-21 02:49:10'),
(153, 8, 6, 5, '2023-08-21 02:49:10'),
(154, 8, 51, 4, '2023-08-21 02:49:10'),
(155, 8, 18, 3, '2023-08-21 02:49:10'),
(156, 8, 41, 4, '2023-08-21 02:49:10'),
(157, 8, 39, 5, '2023-08-21 02:49:10'),
(158, 8, 33, 2, '2023-08-21 02:49:10'),
(159, 8, 1, 2, '2023-08-21 02:49:10'),
(160, 8, 46, 3, '2023-08-21 02:49:10'),
(161, 8, 21, 5, '2023-08-21 02:49:10'),
(162, 8, 49, 3, '2023-08-21 02:49:10'),
(163, 8, 24, 1, '2023-08-21 02:49:10'),
(164, 8, 4, 4, '2023-08-21 02:49:10'),
(165, 8, 9, 4, '2023-08-21 02:49:10'),
(166, 8, 47, 4, '2023-08-21 02:49:10'),
(167, 8, 27, 2, '2023-08-21 02:49:10'),
(168, 8, 48, 4, '2023-08-21 02:49:10'),
(169, 8, 20, 2, '2023-08-21 02:49:10'),
(170, 8, 40, 5, '2023-08-21 02:49:10'),
(171, 8, 50, 2, '2023-08-21 02:49:10'),
(172, 8, 29, 2, '2023-08-21 02:49:10'),
(173, 8, 30, 4, '2023-08-21 02:49:10'),
(174, 8, 11, 5, '2023-08-21 02:49:10'),
(175, 8, 19, 5, '2023-08-21 02:49:10'),
(176, 8, 38, 3, '2023-08-21 02:49:10'),
(177, 8, 35, 3, '2023-08-21 02:49:10'),
(178, 8, 12, 2, '2023-08-21 02:49:10'),
(179, 8, 43, 4, '2023-08-21 02:49:10'),
(180, 8, 2, 3, '2023-08-21 02:49:10'),
(181, 8, 5, 5, '2023-08-21 02:49:10'),
(182, 9, 47, 4, '2023-08-21 02:49:10'),
(183, 9, 48, 4, '2023-08-21 02:49:10'),
(184, 9, 31, 4, '2023-08-21 02:49:10'),
(185, 9, 30, 4, '2023-08-21 02:49:10'),
(186, 9, 23, 5, '2023-08-21 02:49:10'),
(187, 10, 13, 2, '2023-08-21 02:49:10'),
(188, 10, 46, 2, '2023-08-21 02:49:10'),
(189, 10, 31, 5, '2023-08-21 02:49:10'),
(190, 10, 24, 5, '2023-08-21 02:49:10'),
(191, 10, 23, 4, '2023-08-21 02:49:10'),
(192, 10, 51, 3, '2023-08-21 02:49:10'),
(193, 10, 21, 2, '2023-08-21 02:49:10'),
(194, 10, 37, 5, '2023-08-21 02:49:10'),
(195, 10, 1, 4, '2023-08-21 02:49:10'),
(196, 10, 4, 5, '2023-08-21 02:49:10'),
(197, 10, 29, 2, '2023-08-21 02:49:10'),
(198, 10, 25, 2, '2023-08-21 02:49:10'),
(199, 10, 14, 5, '2023-08-21 02:49:10'),
(200, 10, 34, 4, '2023-08-21 02:49:10'),
(201, 10, 11, 3, '2023-08-21 02:49:10'),
(202, 10, 45, 4, '2023-08-21 02:49:10'),
(203, 10, 32, 4, '2023-08-21 02:49:10'),
(204, 10, 44, 3, '2023-08-21 02:49:10'),
(205, 10, 36, 4, '2023-08-21 02:49:10'),
(206, 10, 8, 4, '2023-08-21 02:49:10'),
(207, 10, 41, 4, '2023-08-21 02:49:10'),
(208, 10, 33, 5, '2023-08-21 02:49:10'),
(209, 10, 5, 4, '2023-08-21 02:49:10'),
(210, 10, 9, 2, '2023-08-21 02:49:10'),
(211, 10, 18, 5, '2023-08-21 02:49:10'),
(212, 10, 28, 5, '2023-08-21 02:49:10'),
(213, 10, 7, 3, '2023-08-21 02:49:10'),
(214, 10, 47, 4, '2023-08-21 02:49:10'),
(215, 10, 39, 3, '2023-08-21 02:49:10'),
(216, 10, 2, 3, '2023-08-21 02:49:10'),
(217, 10, 48, 3, '2023-08-21 02:49:10'),
(218, 10, 40, 3, '2023-08-21 02:49:10'),
(219, 10, 6, 2, '2023-08-21 02:49:10'),
(220, 10, 22, 4, '2023-08-21 02:49:10'),
(221, 10, 26, 5, '2023-08-21 02:49:10'),
(222, 10, 30, 4, '2023-08-21 02:49:10'),
(223, 10, 19, 3, '2023-08-21 02:49:10'),
(224, 10, 20, 1, '2023-08-21 02:49:10'),
(225, 10, 10, 5, '2023-08-21 02:49:10'),
(226, 10, 43, 2, '2023-08-21 02:49:10'),
(227, 10, 3, 5, '2023-08-21 02:49:10'),
(228, 10, 49, 5, '2023-08-21 02:49:10'),
(229, 10, 17, 4, '2023-08-21 02:49:10'),
(230, 10, 35, 2, '2023-08-21 02:49:10'),
(231, 10, 27, 5, '2023-08-21 02:49:10'),
(232, 10, 42, 4, '2023-08-21 02:49:10'),
(233, 10, 16, 4, '2023-08-21 02:49:10'),
(234, 11, 36, 5, '2023-08-21 02:49:10'),
(235, 11, 47, 1, '2023-08-21 02:49:10'),
(236, 11, 2, 5, '2023-08-21 02:49:10'),
(237, 11, 35, 4, '2023-08-21 02:49:10'),
(238, 12, 18, 4, '2023-08-21 02:49:10'),
(239, 12, 51, 5, '2023-08-21 02:49:10'),
(240, 12, 6, 2, '2023-08-21 02:49:10'),
(241, 12, 38, 1, '2023-08-21 02:49:10'),
(242, 12, 31, 2, '2023-08-21 02:49:10'),
(243, 12, 50, 2, '2023-08-21 02:49:10'),
(244, 12, 25, 4, '2023-08-21 02:49:10'),
(245, 12, 14, 3, '2023-08-21 02:49:10'),
(246, 12, 42, 4, '2023-08-21 02:49:10'),
(247, 12, 32, 2, '2023-08-21 02:49:10'),
(248, 12, 36, 5, '2023-08-21 02:49:10'),
(249, 12, 35, 4, '2023-08-21 02:49:10'),
(250, 12, 2, 4, '2023-08-21 02:49:10'),
(251, 12, 15, 3, '2023-08-21 02:49:10'),
(252, 12, 27, 3, '2023-08-21 02:49:10'),
(253, 12, 7, 4, '2023-08-21 02:49:10'),
(254, 12, 37, 5, '2023-08-21 02:49:10'),
(255, 12, 30, 5, '2023-08-21 02:49:10'),
(256, 12, 49, 3, '2023-08-21 02:49:10'),
(257, 12, 24, 3, '2023-08-21 02:49:10'),
(258, 12, 11, 4, '2023-08-21 02:49:10'),
(259, 12, 26, 3, '2023-08-21 02:49:10'),
(260, 12, 48, 3, '2023-08-21 02:49:10'),
(261, 12, 33, 5, '2023-08-21 02:49:10'),
(262, 12, 22, 4, '2023-08-21 02:49:10'),
(263, 12, 19, 5, '2023-08-21 02:49:10'),
(264, 12, 43, 4, '2023-08-21 02:49:10'),
(265, 12, 47, 5, '2023-08-21 02:49:10'),
(266, 12, 8, 5, '2023-08-21 02:49:10'),
(267, 12, 46, 5, '2023-08-21 02:49:10'),
(268, 12, 34, 3, '2023-08-21 02:49:10'),
(269, 12, 21, 5, '2023-08-21 02:49:10'),
(270, 12, 41, 2, '2023-08-21 02:49:10');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `ingredients` text NOT NULL,
  `method` text NOT NULL,
  `tips` text NOT NULL,
  `energy` int(11) NOT NULL COMMENT 'in kcal',
  `carbohydrate` int(11) NOT NULL COMMENT 'in gram (g)',
  `protein` int(11) NOT NULL COMMENT 'in gram (g)',
  `thumbnail` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `title`, `slug`, `category_id`, `ingredients`, `method`, `tips`, `energy`, `carbohydrate`, `protein`, `thumbnail`, `user_id`, `created_at`) VALUES
(1, 'Nasi Goreng', 'nasi-goreng', 1, '<ul> <li>Beef or chicken</li> <li>Lemongrass</li> <li>Garlic</li> <li>Shallots</li> <li>Turmeric</li> <li>Coriander seeds</li> <li>Cumin seeds</li> <li>Chili peppers</li> <li>Coconut milk</li> <li>Kaffir lime leaves</li> <li>Lime juice</li> <li>Vegetable oil</li> </ul>', '<ul><li>Cook rice and set aside.</li><li>Sauté garlic, onion, and protein of choice.</li><li>Add cooked rice, soy sauce, and seasonings.</li><li>Stir-fry until well combined.</li></ul>', 'Use cold leftover rice for better texture.', 300, 45, 10, 'recipes/nasi-goreng.png', 28, '2023-08-14 21:46:37'),
(2, 'Sate Ayam', 'sate-ayam', 2, '<ul> <li>Beef or chicken</li> <li>Lemongrass</li> <li>Garlic</li> <li>Shallots</li> <li>Turmeric</li> <li>Coriander seeds</li> <li>Cumin seeds</li> <li>Chili peppers</li> <li>Coconut milk</li> <li>Kaffir lime leaves</li> <li>Lime juice</li> <li>Vegetable oil</li> </ul>', '<ul><li>Marinate chicken in a flavorful blend of spices.</li><li>Skewer the chicken and grill or barbecue until cooked.</li><li>Serve with peanut sauce and rice cakes.</li></ul>', 'Soak wooden skewers in water before grilling to prevent burning.', 200, 5, 20, 'recipes/sate-ayam.png', 7, '2023-08-07 22:51:18'),
(3, 'Gado-Gado', 'gado-gado', 3, '<ul> <li>Vegetables (such as cabbage, beansprouts, and spinach)</li> <li>Tofu</li> <li>Tempeh</li> <li>Boiled eggs</li> <li>Peanut sauce</li> <li>Shrimp crackers</li> </ul>', '<ul><li>Boil or steam potatoes, beans, and cabbage.</li><li>Arrange vegetables and protein on a plate.</li><li>Drizzle with peanut sauce and serve.</li></ul>', 'Blanch vegetables briefly for a crisp texture.', 250, 30, 10, 'recipes/gado-gado.png', 44, '2023-08-18 07:09:27'),
(4, 'Rendang', 'rendang', 1, '<ul> <li>Beef or chicken</li> <li>Lemongrass</li> <li>Garlic</li> <li>Shallots</li> <li>Turmeric</li> <li>Coriander seeds</li> <li>Cumin seeds</li> <li>Chili peppers</li> <li>Coconut milk</li> <li>Kaffir lime leaves</li> <li>Lime juice</li> <li>Vegetable oil</li> </ul>', '<ul><li>Slow-cook beef with spices, coconut milk, and herbs.</li><li>Continue cooking until the sauce thickens and meat is tender.</li></ul>', 'Use a cut of beef suitable for slow cooking, such as chuck or brisket.', 400, 15, 25, 'recipes/rendang.png', 21, '2023-08-12 09:09:52'),
(5, 'Soto Ayam', 'soto-ayam', 4, '<ul> <li>Chicken</li> <li>Water</li> <li>Garlic</li> <li>Shallots</li> <li>Lemongrass</li> <li>Galangal</li> <li>Turmeric</li> <li>Bay leaves</li> <li>Candlenuts</li> <li>Salt</li> <li>Pepper</li> <li>Vermicelli noodles</li> <li>Bean sprouts</li> </ul>', '<ul><li>Boil chicken with aromatics to make a flavorful broth.</li><li>Shred the cooked chicken and set aside.</li><li>Cook noodles or rice separately.</li><li>Assemble the soup by combining broth, chicken, and noodles or rice.</li></ul>', 'Serve with lime, fried shallots, and sambal for added flavor.', 150, 10, 15, 'recipes/soto-ayam.png', 1, '2023-07-25 15:44:42'),
(6, 'Bakso', 'bakso', 1, '<ul> <li>Ground beef or chicken</li> <li>Tapioca flour</li> <li>Garlic</li> <li>Shallots</li> <li>Salt</li> <li>Pepper</li> <li>Beef or chicken broth</li> <li>Egg noodles</li> <li>Bok choy</li> <li>Fried onions</li> </ul>', '<ul><li>Mix ground meat with spices, garlic, and starch.</li><li>Shape into meatballs and cook in boiling broth.</li><li>Serve with noodles, broth, and various toppings.</li></ul>', 'Add a bit of ice water to the meat mixture for a bouncy texture.', 300, 20, 18, 'recipes/bakso.png', 23, '2023-08-15 13:44:53'),
(7, 'Martabak Manis', 'martabak-manis', 5, '<ul> <li>All-purpose flour</li> <li>Yeast</li> <li>Granulated sugar</li> <li>Salt</li> <li>Water</li> <li>Condensed milk</li> <li>Chocolate sprinkles</li> <li>Crushed peanuts</li> <li>Butter</li> </ul>', '<ul><li>Prepare a sweet pancake batter.</li><li>Cook the pancake, then spread with butter and sprinkle sugar.</li><li>Fold in your choice of fillings, such as chocolate or cheese.</li></ul>', 'Serve with condensed milk for extra sweetness.', 350, 40, 8, 'recipes/martabak-manis.png', 1, '2023-08-15 20:32:01'),
(8, 'Pepes Ikan', 'pepes-ikan', 1, '<ul> <li>Fresh fish fillets</li> <li>Shallots</li> <li>Garlic</li> <li>Chili peppers</li> <li>Turmeric</li> <li>Kaffir lime leaves</li> <li>Galangal</li> <li>Salt</li> <li>Sugar</li> <li>Lemongrass</li> <li>Banana leaves</li> </ul>', '<ul><li>Marinate fish with a blend of spices.</li><li>Wrap the fish in banana leaves and steam until cooked.</li></ul>', 'Use firm white fish, like snapper or grouper, for best results.', 200, 5, 25, 'recipes/pepes-ikan.png', 31, '2023-07-31 13:35:10'),
(9, 'Sate Padang', 'sate-padang', 1, '<ul> <li>Beef or chicken</li> <li>Lemongrass</li> <li>Garlic</li> <li>Shallots</li> <li>Turmeric</li> <li>Coriander seeds</li> <li>Cumin seeds</li> <li>Chili peppers</li> <li>Coconut milk</li> <li>Kaffir lime leaves</li> <li>Lime juice</li> <li>Vegetable oil</li> </ul>', '<ul><li>Marinate beef with spices and herbs.</li><li>Skewer the beef and grill or barbecue until cooked.</li><li>Serve with thick and rich Padang-style sauce.</li></ul>', 'Use tender cuts of beef for the best results.', 350, 10, 25, 'recipes/sate-padang.png', 25, '2023-08-12 17:39:39'),
(10, 'Sambal Matah', 'sambal-matah', 6, '<ul> <li>Beef or chicken</li> <li>Lemongrass</li> <li>Garlic</li> <li>Shallots</li> <li>Turmeric</li> <li>Coriander seeds</li> <li>Cumin seeds</li> <li>Chili peppers</li> <li>Coconut milk</li> <li>Kaffir lime leaves</li> <li>Lime juice</li> <li>Vegetable oil</li> </ul>', '<ul><li>Finely chop shallots, lemongrass, chili peppers, and other ingredients.</li><li>Mix with lime juice, shrimp paste, and a bit of oil.</li><li>Let the flavors meld for a while before serving.</li></ul>', 'Adjust the amount of chili peppers to your preferred level of spiciness.', 50, 5, 1, 'recipes/sambal-matah.png', 36, '2023-07-22 08:30:18'),
(11, 'Pisang Goreng', 'pisang-goreng', 7, ' <ul> <li>Ripe bananas</li> <li>All-purpose flour</li> <li>Rice flour</li> <li>Baking powder</li> <li>Salt</li> <li>Granulated sugar</li> <li>Water</li> <li>Vegetable oil for frying</li> </ul> ', '<ul><li>Make a simple batter with flour, sugar, and water.</li><li>Dip banana slices into the batter.</li><li>Deep-fry until golden brown and crispy.</li></ul>', 'Serve with a dusting of powdered sugar or a drizzle of chocolate sauce.', 200, 30, 2, 'recipes/pisang-goreng.png', 41, '2023-07-28 00:48:30'),
(12, 'Pempek', 'pempek', 2, '<ul> <li>Ground fish (usually mackerel)</li> <li>Tapioca flour</li> <li>Garlic</li> <li>Shallots</li> <li>Salt</li> <li>Sugar</li> <li>Vinegar</li> <li>Cucumber</li> <li>Chili sauce</li> <li>Yellow noodles</li> </ul>', '<ul><li>Mix fish paste with tapioca starch and seasonings.</li><li>Shape into various forms like balls or rolls.</li><li>Boil or deep-fry until cooked.</li><li>Serve with a tangy vinegar-based dipping sauce.</li></ul>', 'Add a bit of sago flour for a lighter texture.', 180, 20, 10, 'recipes/pempek.png', 4, '2023-08-16 15:15:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('Administrator','User') NOT NULL DEFAULT 'User',
  `token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `token`) VALUES
(1, 'admin', '$2y$10$QgOWoLD2p2oJXXBU7iQAMuE5B2RrMHzoGmHUT.55zFu2mfLQQcYsm', 'Administrator', NULL),
(2, 'user1', '$2y$10$lzZl1WSbpl4WQ6FneukOsujVzGf8EQQLncjuvKCh6EFRjj1MV5/zq', 'User', NULL),
(3, 'user2', '$2y$10$jUPUp5cZERfT8Q3ikW3QL./V/CfuBe/Z0JopAW6EuPQROuHxlaDHW', 'User', NULL),
(4, 'user3', '$2y$10$YYQwqeGAWC19FL3oBkl8M.htO96pmuGoYoTPJ5tMZzw6ZrJGqHKXi', 'User', NULL),
(5, 'user4', '$2y$10$jxSuv1ub7KPHsZIsMVld3eZ29HXei88GaLzu0HDqXyTJokoWEQhmi', 'User', NULL),
(6, 'user5', '$2y$10$8gEs1HTkQc1fyochjgXp6eMQ6I8yKd4JcVUlAgZJM81jCvn7f5z0W', 'User', NULL),
(7, 'user6', '$2y$10$kITLgWFB97lc0MzoFMPUv.TvXYEi3mzsqqAPZPQN8Ba2Bow4nhPpK', 'User', NULL),
(8, 'user7', '$2y$10$CrlamlSUVT.1PiShqlZHIuIVLqcKWDtEdyvSAZwqU/gtyNwKZhCpK', 'User', NULL),
(9, 'user8', '$2y$10$YVQyRaKnxOa3hHPTf8z6W.G9Em7u5NKrRygpJQy1.R6g2Z3cYIjwS', 'User', NULL),
(10, 'user9', '$2y$10$gf0YS5OFqvMyPDLdznWvte0ruBoCdvtQWDTxgJ5vrbMUZuLWqmrNy', 'User', NULL),
(11, 'user10', '$2y$10$iQqVcpUEGKHYmR9LNZ/xsuFYRppu3VX2yPMS4qhGE61RXB1BCaIla', 'User', NULL),
(12, 'user11', '$2y$10$XsgspatKYRQBcmBoKbEbduqTZt8DPoDW5LD/zY5pijHTMCKgXWJlS', 'User', NULL),
(13, 'user12', '$2y$10$prEyQvo.nrrl6Jjlt9BNhes19vFJjQ2E6CDIZe9JJupTVDA0GefzW', 'User', NULL),
(14, 'user13', '$2y$10$jPOUIL1Su6axsrCvnGXaGe1itBF9YLSemopVGaNrPVs9c1UfNv9U6', 'User', NULL),
(15, 'user14', '$2y$10$7mEYouFa9Ur7RoG8Ma7HROJYTjGVEqwQ0gL.yU37BWaKlbQL8NCmq', 'User', NULL),
(16, 'user15', '$2y$10$I3BxLLucdihyVshbfnbrxOdYLjUgoDuAfoUaETkM.1DGeRukvIWfi', 'User', NULL),
(17, 'user16', '$2y$10$Ok9GeSbebzlLw8IaXz49WO6jNVVfMvMhCC9QAleTmlrU3x2UD3rhm', 'User', NULL),
(18, 'user17', '$2y$10$UrxaB5nKF.yMlg4jIyVtPuYX7nmlRxROSKnP26wEP6Zi9WTpHEgN.', 'User', NULL),
(19, 'user18', '$2y$10$oUItgVKz0ZcE/2lKEC/M0.YtMY8gd0gAcKs5y.hPEnGSIA2O2.QDu', 'User', NULL),
(20, 'user19', '$2y$10$I0EhvBmkjFNJhBrZKwohNufQT4OPnOyDhQH6InSLBKKUGw0or/W9e', 'User', NULL),
(21, 'user20', '$2y$10$RXictbsnW7qRIIfP9owJaefgX2Yq1dCwWUDgDWKT.k1KXroy45fUK', 'User', NULL),
(22, 'user21', '$2y$10$4fjc8qkCFY08UA6M..A6H.ETEkQcrjYLYKOBFPucHT0L57uEK4Rl2', 'User', NULL),
(23, 'user22', '$2y$10$QrrDn4DL3aYKDTkpNc7gF.FVJYsleniVqSlCMgK7QJ3BrcV.iLVLG', 'User', NULL),
(24, 'user23', '$2y$10$mTcu7brUNUyFnXDbewn.YuFJKj58wB61QhUgExoc1E69iroqJ7OJ2', 'User', NULL),
(25, 'user24', '$2y$10$P04SChU2FtJiiD1a5kFT.e6FfMSSgFIwXNs3iOpzkONgblbpNCWta', 'User', NULL),
(26, 'user25', '$2y$10$fI1.HSwCT9I0GtkUk650N.eDMy9AW22.tE7pwX.2ScsnGBwSs6swC', 'User', NULL),
(27, 'user26', '$2y$10$vaM8dZ319Wq1Jc2fp5ODye3kT1P3xWabQXyRA22VXl/QsbZaf9PnS', 'User', NULL),
(28, 'user27', '$2y$10$cmHQvAv0NE34w/WAQaD2H.bbwxFASf8D2l4fhIOb/OyIId.XqM8xy', 'User', NULL),
(29, 'user28', '$2y$10$yV9YBzV3XHVE8WRFkZnJYuPqHxWeSVQIE.6OtNZLoomM0hEy/Nzre', 'User', NULL),
(30, 'user29', '$2y$10$5T7vLfU4BSRo5ppEMbPp.u/GBoefS8kqGzv8y7bazAJjsadfnwsk2', 'User', NULL),
(31, 'user30', '$2y$10$QOio8O2xOcdbTS4wIehxqekWm1yrNCiNc5ribU35xR/0FG5ScbPHG', 'User', NULL),
(32, 'user31', '$2y$10$6OMoxhhubKMlpwflyHktsOKqcMzySisl7fuJhuugBdOq53U4WsZZy', 'User', NULL),
(33, 'user32', '$2y$10$gFRoLN2MBQF0fYHC0myvl.MOkRMAZf85q7Vjils83cp.0HTOwqipi', 'User', NULL),
(34, 'user33', '$2y$10$zsY3XyXoU7nOT9LawnlQGePMfyI1dHfI2fkoSexPJkBsTjkoqn6OG', 'User', NULL),
(35, 'user34', '$2y$10$zxvSpokc/31FvAnIZHnbh.rnozFhcBkQXtlNVUdrdXtB4Npok7wfG', 'User', NULL),
(36, 'user35', '$2y$10$dQNJyOZtxyrWcUDSU0dSLuUINEm/ZqJqfa7V.AMJVqDf.4OmjuPDC', 'User', NULL),
(37, 'user36', '$2y$10$jh3zFkKx0gUTYiStH.BeKeMaMpfRiiGnClNIEyLsULD6BE2T1e2xG', 'User', NULL),
(38, 'user37', '$2y$10$ZjjjTBZFb3JeZvTAp.HZLe7Ww/z6BJR0RgZlHLNWxlirDJYyS00n2', 'User', NULL),
(39, 'user38', '$2y$10$P7jP4VZC7l.d9aZtyrUyF.xuvtnVAw1yxIwiBREdikQsl7HnuQyPC', 'User', NULL),
(40, 'user39', '$2y$10$YSUCNWA0T3cU5.KBszW3ReSJ8pGJ4YGEbMsG5MFB4YyxtacEIFona', 'User', NULL),
(41, 'user40', '$2y$10$EOlZ7g9F4cdNJBW/F1MI4ulFjEj5xbQ2EwbFA2vmNIZ/yZLo823o2', 'User', NULL),
(42, 'user41', '$2y$10$5G/Z5JkFNMMYXUsVnb7eXuRsWLGYq7IKIUhs2oz3YlhG8QLE9D6PG', 'User', NULL),
(43, 'user42', '$2y$10$uttL7PYCrHz4H42m51jYVuVZITIEibnotqqYI/Q4AO2B4nsSE2ZYm', 'User', NULL),
(44, 'user43', '$2y$10$ee61p0W2CCPQq6eZXdINbe9COyRMBLPLCiy6M4/3/5xU2yrwZKgJG', 'User', NULL),
(45, 'user44', '$2y$10$KiftGOdvPJyhygfdO6kf0eGhj4ZxTj84SXlPIL8vRNxiZqddnM/B2', 'User', NULL),
(46, 'user45', '$2y$10$2rdgYh/hVc7VCIHRK5AWOOv7X3ceb8Hck3ElvflDtuqU8ot3mhi7y', 'User', NULL),
(47, 'user46', '$2y$10$56GB4Im/Af9tPrM6EU7DYOMwnmJOlm43pEwq8RsGcl/oH0z6mt9sO', 'User', NULL),
(48, 'user47', '$2y$10$9YAtZoIcya5.7Q8HsFJdK.EfDE1WhDPqqjNt39/IJp8vP9kU12mP6', 'User', NULL),
(49, 'user48', '$2y$10$kCLLYGvNB3aa.j4v30VPnuQA6d//j2/SdkSy/32pu25Wd02TAm.Cu', 'User', NULL),
(50, 'user49', '$2y$10$aVE0lByGNfifHMmuo0CkOeYn50KcKmP1SpNIU1hbqW1ix9eDpsa0q', 'User', NULL),
(51, 'user50', '$2y$10$lK3624cBg3KX9oXKEfY8eOzsy5w78jhYuZewrWS/TYgSGjszSC0AW', 'User', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_recipe_id_foreign` (`recipe_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_recipe_id_foreign` (`recipe_id`),
  ADD KEY `ratings_user_id_foreign` (`user_id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `recipes_slug_unique` (`slug`),
  ADD KEY `recipes_category_id_foreign` (`category_id`),
  ADD KEY `recipes_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_recipe_id_foreign` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_recipe_id_foreign` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `recipes`
--
ALTER TABLE `recipes`
  ADD CONSTRAINT `recipes_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `recipes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
