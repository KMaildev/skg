-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 17, 2022 at 02:21 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skg`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_classifications`
--

CREATE TABLE `account_classifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ac_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_types`
--

CREATE TABLE `account_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_classification_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `financial_statement` enum('BalanceSheet','IncomeStatement') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chartof_accounts`
--

CREATE TABLE `chartof_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `coa_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_type_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_classification_id` int(11) NOT NULL,
  `account_opening_balance` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_location` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `building_area` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `construction_type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_scope` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `site_location`, `building_area`, `construction_type`, `job_scope`, `created_date`, `created_at`, `updated_at`, `phone`) VALUES
(1, 'Ko Moe Aung Win WIn', 'Nyaung Shwe \"Township\'\'\".', '29\'-0\" L x 46\'-0\" Bx 23\'-0\"Ht;', '1.5 Storeyed  Residence Building.', 'Substructure+ Super Structure Work', '2022-02-16', '2022-02-16 02:14:35', '2022-02-16 02:26:33', '09444161554'),
(2, 'Aung Aung', 'Hlaing, Yangon', '29\'-0\" L x 46\'-0\" Bx 23\'-0\"Ht;', '1.5 Storeyed  Residence Building.', 'Substructure+ Super Structure Work', '2022-02-16', '2022-02-09 02:21:26', '2022-02-16 02:22:14', '09255678857');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `floor_plans`
--

CREATE TABLE `floor_plans` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `floor_plan_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_time` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_date_time` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `original_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `floor_plans`
--

INSERT INTO `floor_plans` (`id`, `project_id`, `user_id`, `floor_plan_image`, `upload_date`, `upload_time`, `upload_date_time`, `created_at`, `updated_at`, `original_name`, `remark`) VALUES
(1, 1, 2, 'public/floor_plans/iHbdUtWToa6AUmuY7SsJ08QXyGLgQU531hNSspfa.jpg', '2022-02-17', '19:22:12', '2022-02-17 19:22:12', '2022-02-17 12:52:12', '2022-02-17 12:52:12', '0-02-01-e94fc5812e1d322e90444fcd55f1df520980e20ff370c3f481ae2df131aeef7b_1c6da9eaee618f.jpg', 'Completed'),
(2, 1, 2, 'public/floor_plans/aMkmwiF4jtcCm1Zp7ckTNUi7YVg8pDAIMduFbELU.jpg', '2022-02-17', '19:22:12', '2022-02-17 19:22:12', '2022-02-17 12:52:12', '2022-02-17 12:52:12', '0-02-06-17ed3a2952f0db19ee697e8ca5d982ffecae5561d50a6a2f8cb002846f7246f2_1c6daa63416520.jpg', 'Completed'),
(3, 1, 2, 'public/floor_plans/RDShVtjYB1gcqWRSOG7yQ1S2w2fqZ8QZxEYjKMpm.jpg', '2022-02-17', '19:22:12', '2022-02-17 19:22:12', '2022-02-17 12:52:12', '2022-02-17 12:52:12', '0-02-06-39bb7a76d31c46bf9cc8b1666909cc10c53d0e6b3e1bb26fd88cb257f8a6efc1_1c6daa63411446.jpg', 'Completed'),
(4, 1, 2, 'public/floor_plans/Bkv8OIoZCTWCnc6oYMzryV2js9Uc4T2ZHGuWqP7l.jpg', '2022-02-17', '19:22:12', '2022-02-17 19:22:12', '2022-02-17 12:52:12', '2022-02-17 12:52:12', '0-02-06-22627bf493d5953f07219f838422419b671f4356a1c64c0a8b80e85926de7c32_1c6daa554b9b71.jpg', 'Completed'),
(5, 2, 2, 'public/floor_plans/4hzIDoWji9dOb95AED8H97DYb0QS1kwjs6GJPXRp.jpg', '2022-02-17', '19:50:49', '2022-02-17 19:50:49', '2022-02-17 13:20:49', '2022-02-17 13:20:49', '0-02-06-39bb7a76d31c46bf9cc8b1666909cc10c53d0e6b3e1bb26fd88cb257f8a6efc1_1c6daa63411446.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `labours`
--

CREATE TABLE `labours` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `labours`
--

INSERT INTO `labours` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Steel Fixers', '2022-02-15 09:44:28', '2022-02-15 09:47:40'),
(3, 'Steel Fixer', '2022-02-15 09:44:51', '2022-02-15 09:44:51'),
(4, 'Surveryor', '2022-02-15 09:45:03', '2022-02-15 09:45:03'),
(5, 'Worker', '2022-02-15 09:45:09', '2022-02-15 09:45:09');

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'River Shingle', '2022-02-15 09:21:51', '2022-02-15 09:25:12'),
(3, 'Jungle Wood', '2022-02-15 09:22:03', '2022-02-15 09:22:03'),
(4, 'Ko Moe Aung Win', '2022-02-16 02:13:31', '2022-02-16 02:13:31');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_02_10_103209_create_account_classifications_table', 1),
(5, '2022_02_10_173302_create_account_types_table', 1),
(6, '2022_02_11_065406_create_chartof_accounts_table', 1),
(7, '2022_02_11_073056_add_account_classification_id_to_chartof_accounts_table', 1),
(8, '2022_02_14_033711_add_account_opening_balance_to_chartof_accounts_table', 1),
(9, '2022_02_15_100945_create_unitos_of_measures_table', 2),
(10, '2022_02_15_151522_create_materials_table', 3),
(11, '2022_02_15_160317_create_labours_table', 4),
(12, '2022_02_16_080734_create_customers_table', 5),
(13, '2022_02_16_082816_add_phone_to_customers_table', 6),
(14, '2022_02_16_102525_create_projects_table', 7),
(15, '2022_02_16_105840_add_remark_to_projects_table', 8),
(16, '2022_02_16_151851_add_project_status_to_projects_table', 9),
(17, '2022_02_16_152346_add_project_status_to_projects_table', 10),
(18, '2022_02_16_153303_drop_projects_table', 11),
(19, '2022_02_16_153632_create_projects_table', 12),
(20, '2022_02_17_171505_create_floor_plans_table', 13),
(21, '2022_02_17_184711_add_original_name_to_floor_plans_table', 14),
(22, '2022_02_17_191518_add_remark_to_floor_plans_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `project_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `floor_plan_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `floor_plan_upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quotation_proposal_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quotation_proposal_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exterior_design_fees` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `structure_design_fees` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archi_exterior_design_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archi_exterior_design_upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `structure_design_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `structure_design_upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `customer_id`, `project_code`, `floor_plan_status`, `floor_plan_upload_date`, `quotation_proposal_status`, `quotation_proposal_date`, `exterior_design_fees`, `structure_design_fees`, `archi_exterior_design_status`, `archi_exterior_design_upload_date`, `structure_design_status`, `structure_design_upload_date`, `created_date`, `remark`, `project_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'P-00001', 'finished', '2022-02-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-16', NULL, 'Proposal', '2022-02-16 04:15:00', '2022-02-17 12:52:12'),
(2, 2, 'P-00002', 'finished', '2022-02-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-16', 'Ok Good', 'Proposal', '2022-02-16 03:58:23', '2022-02-17 13:20:49'),
(3, 2, 'P-00003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-16', NULL, 'Proposal', '2022-02-16 09:11:14', '2022-02-18 09:11:14'),
(4, 2, 'P-00004', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-16', NULL, 'Proposal', '2022-02-16 10:05:29', '2022-02-25 05:05:29');

-- --------------------------------------------------------

--
-- Table structure for table `unitos_of_measures`
--

CREATE TABLE `unitos_of_measures` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unitos_of_measures`
--

INSERT INTO `unitos_of_measures` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Bags', NULL, '2022-02-15 04:17:11'),
(2, 'Suds', '2022-02-15 04:05:15', '2022-02-15 04:05:15'),
(4, 'Sht', '2022-02-15 04:07:45', '2022-02-15 04:07:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
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
(1, 'Admin', 'admin@skg.com', NULL, '$2y$10$iY.PTOOlASzaLY549BHGH.aQorS3bbzjX7P9wcQ2QbJH/sGWI0aXa', NULL, '2022-02-14 04:00:05', '2022-02-14 04:00:05'),
(2, 'Admin', 'admin@gmail.com', NULL, '$2y$10$8uBpiBB94GPnidoG.jGrCO1n/hPduvn42VIfuHE27QGwqxU3MMaPa', NULL, '2022-02-14 04:00:32', '2022-02-14 04:00:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_classifications`
--
ALTER TABLE `account_classifications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_classifications_ac_code_unique` (`ac_code`);

--
-- Indexes for table `account_types`
--
ALTER TABLE `account_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_types_number_unique` (`number`);

--
-- Indexes for table `chartof_accounts`
--
ALTER TABLE `chartof_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `chartof_accounts_coa_number_unique` (`coa_number`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `floor_plans`
--
ALTER TABLE `floor_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labours`
--
ALTER TABLE `labours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
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
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unitos_of_measures`
--
ALTER TABLE `unitos_of_measures`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `account_classifications`
--
ALTER TABLE `account_classifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_types`
--
ALTER TABLE `account_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chartof_accounts`
--
ALTER TABLE `chartof_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `floor_plans`
--
ALTER TABLE `floor_plans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `labours`
--
ALTER TABLE `labours`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `unitos_of_measures`
--
ALTER TABLE `unitos_of_measures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
