-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2024 at 11:50 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentdb`
--

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2024_08_29_092930_create_teachers_table', 2),
(3, '2024_08_29_093703_create_students_table', 3),
(4, '2024_08_29_191807_add_deleted_at_to_students_table', 4),
(5, '2024_08_30_063827_create_users_table', 5);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admission_date` date NOT NULL,
  `yearly_fees` decimal(10,2) NOT NULL,
  `teacher_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `class_name`, `admission_date`, `yearly_fees`, `teacher_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'Bob Brown', '9th Grade', '2023-09-01', '1400.00', 2, '2024-08-29 04:18:11', '2024-08-29 13:52:25', '2024-08-29 13:52:25'),
(7, 'shubham pawade', '10th', '2024-08-29', '23000.00', 2, '2024-08-29 12:40:48', '2024-08-29 13:59:44', '2024-08-29 13:59:44'),
(8, 'vikas', '10th', '2024-08-29', '32000.00', 1, '2024-08-29 12:41:28', '2024-08-29 13:59:49', '2024-08-29 13:59:49'),
(9, 'rohit', '7th', '2024-08-30', '21000.00', 2, '2024-08-29 13:02:34', '2024-08-30 03:51:43', '2024-08-30 03:51:43'),
(10, 'yogesh Gawande', '6th', '2024-08-30', '11000.00', 1, '2024-08-29 13:03:14', '2024-08-30 03:51:48', '2024-08-30 03:51:48'),
(31, 'Bella Hirthe', 'rerum Grade', '2018-03-15', '1337.75', 7, '2024-08-29 13:07:59', '2024-08-30 03:53:19', '2024-08-30 03:53:19'),
(32, 'Jennie McDermott', 'quae Grade', '1994-05-04', '1735.22', 7, '2024-08-29 13:07:59', '2024-08-30 03:54:17', '2024-08-30 03:54:17'),
(33, 'Hadley Balistreri II', 'pariatur Grade', '2005-03-10', '1717.51', 5, '2024-08-29 13:07:59', '2024-08-30 04:00:11', '2024-08-30 04:00:11'),
(34, 'Miss Nikita Beahan PhD', 'deserunt Grade', '1979-12-20', '1482.91', 2, '2024-08-29 13:07:59', '2024-08-30 03:56:09', '2024-08-30 03:56:09'),
(35, 'Audrey Rippin', 'sed Grade', '2018-01-22', '1932.57', 6, '2024-08-29 13:07:59', '2024-08-30 03:56:32', '2024-08-30 03:56:32'),
(36, 'Dexter Kihn', 'est Grade', '2014-07-22', '1658.57', 6, '2024-08-29 13:07:59', '2024-08-30 04:00:03', '2024-08-30 04:00:03'),
(37, 'Hailee Baumbach', 'est Grade', '2006-05-29', '1737.41', 5, '2024-08-29 13:07:59', '2024-08-29 13:07:59', NULL),
(38, 'Adolfo Miller', 'dolor Grade', '2022-04-27', '1874.92', 6, '2024-08-29 13:07:59', '2024-08-29 13:07:59', NULL),
(39, 'Lyric Schaden', 'voluptates Grade', '1978-02-02', '1292.59', 4, '2024-08-29 13:07:59', '2024-08-29 13:07:59', NULL),
(40, 'Dr. Brock Ritchie Sr.', 'voluptatem Grade', '1974-04-13', '1678.93', 5, '2024-08-29 13:07:59', '2024-08-29 13:07:59', NULL),
(41, 'Ebba Yost', 'perferendis Grade', '1986-11-14', '1644.64', 10, '2024-08-29 13:07:59', '2024-08-29 13:07:59', NULL),
(42, 'Dr. Jacky Simonis', 'laudantium Grade', '1992-01-26', '1120.45', 10, '2024-08-29 13:07:59', '2024-08-29 13:07:59', NULL),
(43, 'Beaulah Connelly', 'et Grade', '1980-06-15', '1634.66', 8, '2024-08-29 13:07:59', '2024-08-29 13:07:59', NULL),
(44, 'Everardo Bartoletti', 'nostrum Grade', '2024-11-15', '1532.27', 4, '2024-08-29 13:07:59', '2024-08-29 13:07:59', NULL),
(45, 'Pearline Yost', 'officiis Grade', '1999-07-20', '1635.27', 7, '2024-08-29 13:07:59', '2024-08-29 13:07:59', NULL),
(46, 'Lennie Kuvalis', 'consequatur Grade', '1982-09-27', '1727.90', 5, '2024-08-29 13:07:59', '2024-08-29 13:07:59', NULL),
(47, 'Mrs. Abbigail Schaden MD', 'ea Grade', '2013-07-17', '1378.20', 5, '2024-08-29 13:07:59', '2024-08-29 13:07:59', NULL),
(48, 'Vern Brown', 'velit Grade', '1996-02-02', '1716.19', 3, '2024-08-29 13:07:59', '2024-08-29 13:07:59', NULL),
(49, 'Lourdes Bartell', 'fugit Grade', '2014-03-17', '1210.49', 10, '2024-08-29 13:07:59', '2024-08-29 13:07:59', NULL),
(50, 'Mr. Kevin Stiedemann', 'eos Grade', '1975-01-02', '1189.72', 9, '2024-08-29 13:07:59', '2024-08-29 13:07:59', NULL),
(51, 'Shubham Pawade', '6th', '2024-08-30', '2122.00', 10, '2024-08-30 03:57:38', '2024-08-30 03:57:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `email`, `subject`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'john.doe@example.com', 'Mathematics', '2024-08-29 04:14:26', '2024-08-29 04:14:26'),
(2, 'Jane Smith', 'jane.smith@example.com', 'English', '2024-08-29 04:14:26', '2024-08-29 04:14:26'),
(3, 'Devon Wuckert PhD', 'doyle.adaline@example.org', 'repudiandae', '2024-08-29 13:07:59', '2024-08-29 13:07:59'),
(4, 'Katheryn Friesen', 'ksanford@example.net', 'accusantium', '2024-08-29 13:07:59', '2024-08-29 13:07:59'),
(5, 'Prof. Chris Gleichner', 'pagac.timmothy@example.org', 'nobis', '2024-08-29 13:07:59', '2024-08-29 13:07:59'),
(6, 'Jude White', 'lazaro.bailey@example.com', 'aut', '2024-08-29 13:07:59', '2024-08-29 13:07:59'),
(7, 'Elouise Harber', 'okey.flatley@example.net', 'aspernatur', '2024-08-29 13:07:59', '2024-08-29 13:07:59'),
(8, 'Emory Schowalter', 'ewalsh@example.com', 'perferendis', '2024-08-29 13:07:59', '2024-08-29 13:07:59'),
(9, 'Tyree Hudson', 'gideon.spinka@example.net', 'minima', '2024-08-29 13:07:59', '2024-08-29 13:07:59'),
(10, 'Monique Jacobs MD', 'abdul42@example.org', 'reiciendis', '2024-08-29 13:07:59', '2024-08-29 13:07:59'),
(11, 'Prof. Shania Wiegand III', 'wpouros@example.org', 'perferendis', '2024-08-29 13:07:59', '2024-08-29 13:07:59'),
(12, 'Noelia Graham', 'dixie87@example.com', 'accusantium', '2024-08-29 13:07:59', '2024-08-29 13:07:59');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$12$Ma.djlC9exOc5zPHfRk0uufc7A.itFvaEh2Uv6JvPEfh68abbmmJ.', NULL, '2024-08-30 01:10:58', '2024-08-30 01:10:58');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teachers_email_unique` (`email`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
