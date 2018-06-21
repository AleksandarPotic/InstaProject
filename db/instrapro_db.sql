-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2018 at 12:34 PM
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

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user`, `text`, `created_at`, `updated_at`) VALUES
(4, 2, 'aleksandar_potic', 'Cao', '2018-06-13 17:57:35', '2018-06-13 17:57:35'),
(5, 1, 'aleksandar_potic', 'Nesto', '2018-06-13 17:57:53', '2018-06-13 17:57:53'),
(6, 2, 'aleksandar_potic', 'Hello World!!!', '2018-06-13 17:58:43', '2018-06-13 17:58:43'),
(7, 1, 'aleksandar_potic', 'ttyytty', '2018-06-13 18:00:08', '2018-06-13 18:00:08'),
(8, 2, 'aleksandar_potic', 'Svidja mi se slika!', '2018-06-13 18:09:35', '2018-06-13 18:09:35'),
(9, 1, 'aleksandar_potic', 'This is nice pic', '2018-06-13 20:16:13', '2018-06-13 20:16:13'),
(10, 1, 'aleksandar_potic', 'i love you', '2018-06-13 20:17:08', '2018-06-13 20:17:08'),
(11, 3, 'aleksandar_potic', 'My favorite place!!!', '2018-06-13 20:25:29', '2018-06-13 20:25:29'),
(12, 3, 'aleksandar_potic', 'And for me same!!', '2018-06-13 21:11:56', '2018-06-13 21:11:56'),
(13, 3, 'tove_looo', 'I am tove lo', '2018-06-13 21:16:07', '2018-06-13 21:16:07'),
(14, 3, 'aleksandar_potic', 'i\'m aleksandar', '2018-06-13 21:16:37', '2018-06-13 21:16:37'),
(15, 2, 'aleksandar_potic', 'dasasdsa', '2018-06-13 21:16:43', '2018-06-13 21:16:43'),
(16, 3, '1', 'necu necu', '2018-06-15 13:58:01', '2018-06-15 13:58:01'),
(17, 3, 'aleksandar_potic', 'wwww', '2018-06-15 14:00:12', '2018-06-15 14:00:12'),
(18, 3, 'aleksandar_potic', 'adsads', '2018-06-15 14:10:18', '2018-06-15 14:10:18'),
(19, 3, 'aleksandar_potic', 'yyyyy', '2018-06-15 14:10:45', '2018-06-15 14:10:45'),
(26, 4, 'aleksandar_potic', 'adasd', '2018-06-16 08:13:26', '2018-06-16 08:13:26'),
(27, 4, 'aleksandar_potic', 'Lepa slika', '2018-06-16 10:23:26', '2018-06-16 10:23:26'),
(28, 4, 'aleksandar_potic', 'adsjha sd', '2018-06-16 13:51:01', '2018-06-16 13:51:01'),
(29, 4, 'aleksandar_potic', 'das adsads', '2018-06-16 13:51:03', '2018-06-16 13:51:03'),
(30, 4, 'aleksandar_potic', 'dsaadsas', '2018-06-16 13:51:04', '2018-06-16 13:51:04'),
(31, 4, 'aleksandar_potic', 'dsaadsas', '2018-06-16 13:51:05', '2018-06-16 13:51:05'),
(33, 4, 'aleksandar_potic', 'gsdffdassa', '2018-06-16 13:51:12', '2018-06-16 13:51:12'),
(34, 4, 'aleksandar_potic', 'gsdffdassa', '2018-06-16 13:51:12', '2018-06-16 13:51:12'),
(35, 4, 'aleksandar_potic', 'dasadsa', '2018-06-16 13:51:13', '2018-06-16 13:51:13'),
(36, 4, 'aleksandar_potic', 'dasadsads', '2018-06-16 13:51:14', '2018-06-16 13:51:14'),
(37, 4, 'aleksandar_potic', 'dasadsads', '2018-06-16 13:51:14', '2018-06-16 13:51:14'),
(38, 4, 'aleksandar_potic', 'ads', '2018-06-16 13:51:14', '2018-06-16 13:51:14'),
(39, 4, 'aleksandar_potic', 'ads', '2018-06-16 13:51:15', '2018-06-16 13:51:15'),
(40, 4, 'aleksandar_potic', 'das', '2018-06-16 13:51:16', '2018-06-16 13:51:16'),
(41, 4, 'aleksandar_potic', 'adsdasdas', '2018-06-16 13:51:33', '2018-06-16 13:51:33'),
(42, 4, 'aleksandar_potic', 'adssad', '2018-06-16 13:51:34', '2018-06-16 13:51:34'),
(43, 4, 'aleksandar_potic', '123123123', '2018-06-16 13:51:37', '2018-06-16 13:51:37'),
(44, 4, 'aleksandar_potic', '43425', '2018-06-16 13:51:39', '2018-06-16 13:51:39'),
(45, 2, 'aleksandar_potic', 'Hello', '2018-06-16 14:15:57', '2018-06-16 14:15:57'),
(46, 2, 'aleksandar_potic', 'pozdrav', '2018-06-16 14:16:27', '2018-06-16 14:16:27'),
(47, 2, 'aleksandar_potic', 'pozzz', '2018-06-16 14:16:55', '2018-06-16 14:16:55'),
(48, 1, 'aleksandar_potic', 'Volim vas', '2018-06-16 14:17:04', '2018-06-16 14:17:04'),
(49, 2, 'aleksandar_potic', 'pooo', '2018-06-16 14:18:30', '2018-06-16 14:18:30'),
(50, 3, 'tove_looo', 'pooo', '2018-06-17 09:00:03', '2018-06-17 09:00:03'),
(51, 3, 'tove_looo', 'oioi', '2018-06-17 09:04:10', '2018-06-17 09:04:10'),
(52, 3, 'aleksandar_potic', 'pppp', '2018-06-17 09:25:04', '2018-06-17 09:25:04'),
(53, 4, 'aleksandar_potic', 'cao drazo', '2018-06-20 11:22:31', '2018-06-20 11:22:31'),
(54, 2, 'Nikola', 'Lepa slika', '2018-06-20 12:28:34', '2018-06-20 12:28:34');

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
(69, 2, 1, '2018-06-21 08:31:25', '2018-06-21 08:31:25'),
(71, 1, 3, '2018-06-21 08:31:56', '2018-06-21 08:31:56');

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
(69, 2, 1, '2018-06-21 08:31:25', '2018-06-21 08:31:25'),
(71, 1, 3, '2018-06-21 08:31:56', '2018-06-21 08:31:56');

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

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `user_nick_name`, `post_id`, `created_at`, `updated_at`) VALUES
(236, 2, 'tove_looo', 2, '2018-06-16 11:09:13', '2018-06-16 11:09:13'),
(237, 2, 'tove_looo', 4, '2018-06-16 11:09:39', '2018-06-16 11:09:39'),
(257, 1, 'aleksandar_potic', 2, '2018-06-16 15:56:43', '2018-06-16 15:56:43'),
(274, 1, 'aleksandar_potic', 3, '2018-06-17 09:25:59', '2018-06-17 09:25:59'),
(277, 1, 'aleksandar_potic', 4, '2018-06-20 11:22:23', '2018-06-20 11:22:23'),
(278, 3, 'Nikola', 2, '2018-06-20 12:28:29', '2018-06-20 12:28:29');

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
(7, '2018_06_20_141447_create_followings_table', 6);

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
(1, 1, 'post-1.jpg', 'Descksadijasij', 'Nis, Serbia', '2018-06-13 04:00:00', '2018-06-14 12:34:45'),
(2, 1, 'post-2.jpg', 'adssaddsadas ', 'LA, California', '2018-06-13 07:00:00', '2018-06-14 12:34:43'),
(3, 2, 'post-3.jpg', 'adas adsadsads asdasdaasdas adsasas', 'Pirot, Serbia', '2018-06-13 20:00:00', '2018-06-14 15:04:18'),
(4, 1, 'post-3.jpg', 'adskja kja kjak jak j', 'Pirot, Serbia', '2018-06-15 17:16:00', '2018-06-15 08:13:00');

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
(1, 'aleksandar_potic', 'Aleksandar', 'Potic', 'aleksandar1995potic@gmail.com', '$2y$10$/byuAUIlOvJ2Dp6VIzs2TufiHY663GFgEKi5YwUtTsa7QqHU2Cgxm', '50pnLyYO2ipr8nsqhzfsdyeLHOYWAzTEIjcfcEhCfzaT6d7IWZuYDAo3T4Lx', '2018-06-13 11:34:43', '2018-06-13 11:34:43'),
(2, 'tove_looo', 'Tove', 'Lo', 'tovelo@gmail.com', '$2y$10$/byuAUIlOvJ2Dp6VIzs2TufiHY663GFgEKi5YwUtTsa7QqHU2Cgxm', 'MEJWqEVHJg8v1r0p6abY3H6ifC7zZcA3vD5khKvFvdusxFs3RUbRhNmGPtle', '2018-06-13 01:00:00', '2018-06-13 05:00:00'),
(3, 'nikola', 'Nikola', 'Nikolic', 'nikolanikolic@gmail.com', '$2y$10$/byuAUIlOvJ2Dp6VIzs2TufiHY663GFgEKi5YwUtTsa7QqHU2Cgxm', 'NwkL794sahbMJKTGhr0I7LDQiaShu4jZ59JHOJ50GPz0TDRSiqH0wAUyXWgA', NULL, NULL);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `followings`
--
ALTER TABLE `followings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
