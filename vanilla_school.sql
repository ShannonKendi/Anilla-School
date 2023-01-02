-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2023 at 09:45 PM
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
-- Database: `vanilla_school`
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
(6, '2023_01_01_095834_create_tbl_students_table', 1),
(7, '2023_01_01_123910_test', 2),
(15, '2019_12_14_000001_create_personal_access_tokens_table', 3),
(16, '2023_01_01_095658_create_tbl_staffs_table', 3),
(17, '2023_01_01_095708_create_tbl_notices_table', 3),
(18, '2023_01_01_095715_create_tbl_units_table', 3),
(19, '2023_01_01_095726_create_tbl_cworks_table', 3),
(20, '2023_01_01_124010_create_tbl_students_table', 3),
(21, '2023_01_01_193625_create_tbl_registrations_table', 4);

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
-- Table structure for table `tbl_cworks`
--

CREATE TABLE `tbl_cworks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cwork_head` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cwork_desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `posted_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cwork_unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notices`
--

CREATE TABLE `tbl_notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notice_header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notice_desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `posted_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registrations`
--

CREATE TABLE `tbl_registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_id` int(11) NOT NULL,
  `unit_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_registrations`
--

INSERT INTO `tbl_registrations` (`id`, `student_id`, `student_name`, `unit_id`, `unit_name`, `created_at`, `updated_at`) VALUES
(1, 2, '21 Savage', 3, 'NOLEJ', '2023-01-01 17:22:57', '2023-01-01 17:22:57'),
(2, 2, '21 Savage', 4, 'IAP', '2023-01-01 17:23:01', '2023-01-01 17:23:01'),
(3, 2, '21 Savage', 2, 'Java OOP', '2023-01-01 17:33:32', '2023-01-01 17:33:32'),
(6, 4, 'The Rock', 4, 'IAP', '2023-01-01 18:10:33', '2023-01-01 18:10:33'),
(7, 4, 'The Rock', 2, 'Java OOP', '2023-01-01 18:10:43', '2023-01-01 18:10:43'),
(8, 4, 'The Rock', 3, 'NOLEJ', '2023-01-01 18:11:11', '2023-01-01 18:11:11'),
(13, 5, 'Shannon Kihara', 8, 'IAP', '2023-01-02 15:37:58', '2023-01-02 15:37:58'),
(14, 7, 'Brenda Ocheieng\'', 8, 'IAP', '2023-01-02 15:50:30', '2023-01-02 15:50:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_staffs`
--

CREATE TABLE `tbl_staffs` (
  `staff_id` bigint(20) UNSIGNED NOT NULL,
  `staff_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_role` int(11) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_staffs`
--

INSERT INTO `tbl_staffs` (`staff_id`, `staff_name`, `staff_email`, `staff_password`, `staff_role`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN HR', 'admin@gmail.com', '$2y$10$evlFKklXr0Ghq7dXAZldmeugLky3v/84A9Y6NhrzkcdQiMV4TCbTe', 1, NULL, NULL, '2023-01-01 12:36:34', '2023-01-01 12:36:34'),
(4, 'Test teach', 'testteacher@gmail.com', '$2y$10$9kX5lvEKWe1Cr/bhO4DfM./1hRyrh608Qw.nozqY2QXfgHhkUygIS', 2, NULL, NULL, '2023-01-01 14:12:18', '2023-01-01 14:12:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_students`
--

CREATE TABLE `tbl_students` (
  `stud_id` bigint(20) UNSIGNED NOT NULL,
  `stud_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stud_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stud_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stud_enrol_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_students`
--

INSERT INTO `tbl_students` (`stud_id`, `stud_name`, `stud_email`, `stud_password`, `stud_enrol_status`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Brent Faiyaz', 'bfaiyaz@gmail.com', '$2y$10$4vQ6.rbjGTjgUT/U.4rwluiVgUhhrxbY29Ut.29tviEBVC7oRxLCK', 'waiting', NULL, NULL, '2023-01-01 12:44:01', '2023-01-01 12:44:01'),
(5, 'Shannon Kihara', 'shannon@gmail.com', '$2y$10$aaFhWQwKA1FpEkdF7vSsR.YYsLiG8nOaQT7rVjLR/MLI3CWo1Ld92', 'waiting', NULL, NULL, '2023-01-02 09:49:47', '2023-01-02 09:49:47'),
(6, 'Yvonne Ndambiri', 'yvonne@gmail.com', '$2y$10$x2jficd.yEuSHGFTOWOc4uXmcQ.jmpSwoLtqViN0RsUNkAEFw44/O', 'waiting', NULL, NULL, '2023-01-02 15:44:57', '2023-01-02 15:44:57'),
(7, 'Brenda Ocheieng\'', 'brenda@gmail.com', '$2y$10$jasU1XcD1wb3ajiWPT2Hn.m1pXfl3sy73ni.UqTsBY7kbm2E/z9Ry', 'waiting', NULL, NULL, '2023-01-02 15:49:24', '2023-01-02 15:49:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_units`
--

CREATE TABLE `tbl_units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unit_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_chapters` int(11) NOT NULL,
  `unit_lecturer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_units`
--

INSERT INTO `tbl_units` (`id`, `unit_name`, `unit_code`, `unit_desc`, `unit_chapters`, `unit_lecturer`, `remember_token`, `created_at`, `updated_at`) VALUES
(8, 'IAP', '23456', 'internet application programming', 29, 'Test teach', NULL, '2023-01-02 15:34:03', '2023-01-02 15:34:03');

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
-- Indexes for table `tbl_cworks`
--
ALTER TABLE `tbl_cworks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notices`
--
ALTER TABLE `tbl_notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_registrations`
--
ALTER TABLE `tbl_registrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_staffs`
--
ALTER TABLE `tbl_staffs`
  ADD PRIMARY KEY (`staff_id`),
  ADD UNIQUE KEY `tbl_staffs_staff_email_unique` (`staff_email`);

--
-- Indexes for table `tbl_students`
--
ALTER TABLE `tbl_students`
  ADD PRIMARY KEY (`stud_id`),
  ADD UNIQUE KEY `tbl_students_stud_email_unique` (`stud_email`);

--
-- Indexes for table `tbl_units`
--
ALTER TABLE `tbl_units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_units_unit_code_unique` (`unit_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cworks`
--
ALTER TABLE `tbl_cworks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_notices`
--
ALTER TABLE `tbl_notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_registrations`
--
ALTER TABLE `tbl_registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_staffs`
--
ALTER TABLE `tbl_staffs`
  MODIFY `staff_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_students`
--
ALTER TABLE `tbl_students`
  MODIFY `stud_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_units`
--
ALTER TABLE `tbl_units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
