-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2018 at 01:55 PM
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
(1, 29, 'aleksandar_potic', 'Lepooo', '2018-06-29 08:51:51', '2018-06-29 08:51:51');

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
(78, 1, 2, '2018-06-22 12:40:54', '2018-06-22 12:40:54'),
(79, 5, 2, '2018-06-22 12:41:06', '2018-06-22 12:41:06'),
(83, 2, 1, '2018-06-29 09:19:31', '2018-06-29 09:19:31');

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
(78, 1, 2, '2018-06-22 12:40:54', '2018-06-22 12:40:54'),
(79, 5, 2, '2018-06-22 12:41:06', '2018-06-22 12:41:06'),
(83, 2, 1, '2018-06-29 09:19:31', '2018-06-29 09:19:31');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_nick_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `user_nick_name`, `user_avatar`, `post_id`, `created_at`, `updated_at`) VALUES
(285, 2, 'tove_looo', '/storage/profile/GYqmJnoE3AX8W2fwgznR.jpg', 28, '2018-06-29 09:29:08', '2018-06-29 09:29:08'),
(286, 2, 'tove_looo', '/storage/profile/GYqmJnoE3AX8W2fwgznR.jpg', 32, '2018-06-29 09:29:17', '2018-06-29 09:29:17'),
(287, 3, 'nikola', '/storage/profile/profile.jpg', 32, '2018-06-29 09:33:09', '2018-06-29 09:33:09');

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
(7, 4, 1, 'pozzz', '2018-06-26 11:08:13', '2018-06-26 11:08:13'),
(8, 1, 2, 'sddsaasd', '2018-06-27 22:00:00', '2018-06-27 22:00:00'),
(9, 2, 1, 'hello', '2018-06-28 08:11:33', '2018-06-28 08:11:33'),
(10, 2, 1, 'ale', '2018-06-28 08:18:01', '2018-06-28 08:18:01'),
(11, 2, 1, 'as', '2018-06-28 08:18:43', '2018-06-28 08:18:43'),
(14, 2, 1, 'drasadasd', '2018-06-28 08:43:57', '2018-06-28 08:43:57'),
(15, 2, 1, 'aleksandar', '2018-06-28 08:49:25', '2018-06-28 08:49:25'),
(16, 1, 2, 'poo', '2018-06-28 08:52:15', '2018-06-28 08:52:15'),
(17, 2, 1, 'tt', '2018-06-28 08:52:51', '2018-06-28 08:52:51'),
(18, 2, 1, 'hello', '2018-06-28 09:01:15', '2018-06-28 09:01:15'),
(22, 2, 1, 'helll', '2018-06-28 09:08:07', '2018-06-28 09:08:07'),
(23, 2, 1, 'pp', '2018-06-28 09:10:13', '2018-06-28 09:10:13'),
(24, 2, 1, 'zdaravoo', '2018-06-28 15:27:42', '2018-06-28 15:27:42'),
(25, 1, 2, 'cao', '2018-06-28 15:27:52', '2018-06-28 15:27:52'),
(26, 1, 2, 'aleksandar', '2018-06-28 15:52:10', '2018-06-28 15:52:10');

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
(27, 1, '/storage/5mH28T2RraQ2H0oF5tdZ.jpg', 'Nice Paris!!!', 'Paris, France', '2018-06-27 18:47:39', '2018-06-27 18:47:39'),
(28, 2, '/storage/RvVFak3ajIntzmrh77xG.jpg', 'Night!!!', 'California, SAD', '2018-06-27 19:28:15', '2018-06-27 19:28:15'),
(29, 1, '/storage/xj2MtGFhLduabmc7qKg2.jpg', 'adsads', 'Samala, Australia', '2018-06-29 07:52:46', '2018-06-29 07:52:46'),
(30, 1, '/storage/0cp30vOyfIP0PKunCDSp.jpg', 'dsadas', 'Samala, Australia', '2018-06-29 09:20:10', '2018-06-29 09:20:10'),
(31, 1, '/storage/lvrB8OZkrNFtuKXOcxwv.jpg', 'asdsa', 'Samala, Australia', '2018-06-29 09:20:17', '2018-06-29 09:20:17'),
(32, 1, '/storage/VEmDsfIzDtOTYq3H7OSA.jpg', 'adsdas', 'Amsterdam, Nederland', '2018-06-29 09:20:31', '2018-06-29 09:20:31'),
(33, 3, '/storage/fTgtV2ydNQUCnbeNRzWJ.jpg', 'Climbing', 'Pirot, Serbia', '2018-06-29 09:37:02', '2018-06-29 09:37:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `nick_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '/storage/profile/profile.jpg',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nick_name`, `first_name`, `last_name`, `avatar`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'aleksandar_potic', 'Aleksandar', 'Potic', '/storage/profile/AGNlmfFfckVmZo0TqqFW.jpg', 'aleksandar1995potic@gmail.com', '$2y$10$/byuAUIlOvJ2Dp6VIzs2TufiHY663GFgEKi5YwUtTsa7QqHU2Cgxm', 'iTKPNu8KXH6BD6SEJJzR64MyR1guE21RDZHxsdI1Um9qfLUtQYIKfTr13ylr', '2018-06-13 11:34:43', '2018-06-29 07:11:59'),
(2, 'tove_looo', 'Tove', 'Lo', '/storage/profile/GYqmJnoE3AX8W2fwgznR.jpg', 'tovelo@gmail.com', '$2y$10$/byuAUIlOvJ2Dp6VIzs2TufiHY663GFgEKi5YwUtTsa7QqHU2Cgxm', '2bdy5D5KUMrh82rx5xC3Nbd1xl7EScXAVZrwOrIiUI7ACUEYoMYVdVRrFbO2', '2018-06-13 01:00:00', '2018-06-27 19:23:52'),
(3, 'nikola', 'Nikola', 'Nikolic', '/storage/profile/0IgiabBsDinvfVns2q5y.jpg', 'nikolanikolic@gmail.com', '$2y$10$/byuAUIlOvJ2Dp6VIzs2TufiHY663GFgEKi5YwUtTsa7QqHU2Cgxm', 'CoFB2qM8JvVuBs4JenoKEApxNl3ScseWUQ6tuMJz9qlE8gWlHwYIptJpSmbU', NULL, '2018-06-29 09:36:18'),
(4, 'marinko', 'Marinko', 'Rokvic', '/storage/profile/profile.jpg', 'marinkorokvic@gmail.com', '$2y$10$/byuAUIlOvJ2Dp6VIzs2TufiHY663GFgEKi5YwUtTsa7QqHU2Cgxm', NULL, NULL, NULL),
(5, 'nikola_r', 'Nikola', 'Rokvic', '/storage/profile/profile.jpg', 'nikola_rokvic@gmail.com', '$2y$10$/byuAUIlOvJ2Dp6VIzs2TufiHY663GFgEKi5YwUtTsa7QqHU2Cgxm', NULL, NULL, NULL);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;

--
-- AUTO_INCREMENT for table `messangers`
--
ALTER TABLE `messangers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
