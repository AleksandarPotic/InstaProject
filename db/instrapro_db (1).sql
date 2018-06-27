-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2018 at 02:31 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `instrapro_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `user` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `id` int(10) UNSIGNED NOT NULL,
  `follow` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `followers`
--

INSERT INTO `followers` (`id`, `follow`, `user_id`, `created_at`, `updated_at`) VALUES
(71, 1, 3, '2018-06-21 08:31:56', '2018-06-21 08:31:56'),
(73, 2, 3, '2018-06-21 08:36:27', '2018-06-21 08:36:27'),
(75, 5, 1, '2018-06-21 15:38:01', '2018-06-21 15:38:01'),
(76, 4, 1, '2018-06-21 15:39:18', '2018-06-21 15:39:18'),
(78, 1, 2, '2018-06-22 12:40:54', '2018-06-22 12:40:54'),
(79, 5, 2, '2018-06-22 12:41:06', '2018-06-22 12:41:06'),
(82, 2, 1, '2018-06-26 10:59:50', '2018-06-26 10:59:50');

-- --------------------------------------------------------

--
-- Table structure for table `followings`
--

CREATE TABLE `followings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `following` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `followings`
--

INSERT INTO `followings` (`id`, `user_id`, `following`, `created_at`, `updated_at`) VALUES
(71, 1, 3, '2018-06-21 08:31:56', '2018-06-21 08:31:56'),
(73, 2, 3, '2018-06-21 08:36:27', '2018-06-21 08:36:27'),
(75, 5, 1, '2018-06-21 15:38:01', '2018-06-21 15:38:01'),
(76, 4, 1, '2018-06-21 15:39:18', '2018-06-21 15:39:18'),
(78, 1, 2, '2018-06-22 12:40:54', '2018-06-22 12:40:54'),
(79, 5, 2, '2018-06-22 12:41:06', '2018-06-22 12:41:06'),
(82, 2, 1, '2018-06-26 10:59:50', '2018-06-26 10:59:50');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_nick_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messangers`
--

CREATE TABLE `messangers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `receiver` int(11) NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messangers`
--

INSERT INTO `messangers` (`id`, `user_id`, `receiver`, `text`, `created_at`, `updated_at`) VALUES
(4, 1, 5, 'cao', '2018-06-26 10:59:30', '2018-06-26 10:59:30'),
(5, 1, 2, 'zdravoooo', '2018-06-26 10:59:57', '2018-06-26 10:59:57'),
(6, 1, 3, 'vole', '2018-06-26 11:07:59', '2018-06-26 11:07:59'),
(7, 1, 4, 'pozzz', '2018-06-26 11:08:13', '2018-06-26 11:08:13');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_06_13_151022_create_posts_table', 2),
(4, '2018_06_13_152054_create_comments_table', 3),
(5, '2018_06_14_135100_create_likes_table', 4),
(6, '2018_06_20_140248_create_followers_table', 5),
(7, '2018_06_20_141447_create_followings_table', 6),
(8, '2018_06_22_093618_create_messangers_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `images` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `images`, `description`, `location`, `created_at`, `updated_at`) VALUES
(16, 1, '/storage/peTlj3Vr3X6q9A6gexxR.jpg', 'Lepi Jadran!!!', 'Tivat, Montenegro', '2018-06-27 10:22:40', '2018-06-27 10:22:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `nick_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nick_name`, `first_name`, `last_name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'aleksandar_potic', 'Aleksandar', 'Potic', 'aleksandar1995potic@gmail.com', '$2y$10$/byuAUIlOvJ2Dp6VIzs2TufiHY663GFgEKi5YwUtTsa7QqHU2Cgxm', 'eFYccJOrkgWUBFLLK6MPglLeZoCUPyqa4eW8DiTGWfxz4Sf6zZmvYVXH7Qij', '2018-06-13 11:34:43', '2018-06-13 11:34:43'),
(2, 'tove_looo', 'Tove', 'Lo', 'tovelo@gmail.com', '$2y$10$/byuAUIlOvJ2Dp6VIzs2TufiHY663GFgEKi5YwUtTsa7QqHU2Cgxm', 'rwannppYBnnFxpsrDnkbbZrer5SGBxsF5xfw052uIDcNpyjk7lq5lyphUMwm', '2018-06-13 01:00:00', '2018-06-13 05:00:00'),
(3, 'nikola', 'Nikola', 'Nikolic', 'nikolanikolic@gmail.com', '$2y$10$/byuAUIlOvJ2Dp6VIzs2TufiHY663GFgEKi5YwUtTsa7QqHU2Cgxm', 'NwkL794sahbMJKTGhr0I7LDQiaShu4jZ59JHOJ50GPz0TDRSiqH0wAUyXWgA', NULL, NULL),
(4, 'marinko', 'Marinko', 'Rokvic', 'marinkorokvic@gmail.com', '$2y$10$/byuAUIlOvJ2Dp6VIzs2TufiHY663GFgEKi5YwUtTsa7QqHU2Cgxm', NULL, NULL, NULL),
(5, 'nikola_r', 'Nikola', 'Rokvic', 'nikola_rokvic@gmail.com', '$2y$10$/byuAUIlOvJ2Dp6VIzs2TufiHY663GFgEKi5YwUtTsa7QqHU2Cgxm', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `followings`
--
ALTER TABLE `followings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messangers`
--
ALTER TABLE `messangers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_nick_name_unique` (`nick_name`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `followings`
--
ALTER TABLE `followings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT for table `messangers`
--
ALTER TABLE `messangers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
