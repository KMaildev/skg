-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 07, 2022 at 12:23 PM
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
-- Table structure for table `approved_bies`
--

CREATE TABLE `approved_bies` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `approved_file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_time` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `approved_bies`
--

INSERT INTO `approved_bies` (`id`, `project_id`, `user_id`, `approved_file`, `original_name`, `remark`, `upload_date`, `upload_time`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'public/approvedby/7bXIkGrsGhqbsPOpO5J5xoPqTMW0qc4qFkGwHRYu.pdf', 'sample.pdf', NULL, '2022-03-07', '14:00:02', '2022-03-07 07:30:02', '2022-03-07 07:30:02');

-- --------------------------------------------------------

--
-- Table structure for table `archi_exterior_designs`
--

CREATE TABLE `archi_exterior_designs` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `archi_exterior_design_file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_time` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `archi_exterior_designs`
--

INSERT INTO `archi_exterior_designs` (`id`, `project_id`, `user_id`, `archi_exterior_design_file`, `original_name`, `remark`, `upload_date`, `upload_time`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'public/archiexteriordesign/dSBd9ERaopcvbUTOdOobELkMr8mWgkHilSpw126P.jpg', 'floor_plan_1.jpeg', NULL, '2022-03-07', '10:42:13', '2022-03-07 04:12:13', '2022-03-07 04:12:13'),
(2, 1, 2, 'public/archiexteriordesign/Ifw32WVZCABdvDb9XkUarVmI3v2vx4OxxG8CjacE.jpg', 'floor_plan_2.jpeg', NULL, '2022-03-07', '10:42:13', '2022-03-07 04:12:13', '2022-03-07 04:12:13'),
(3, 1, 2, 'public/archiexteriordesign/eY3AuePWZ9axSKsEvql4y1HugJVKWlbrFqfxL6jo.jpg', 'floor_plan_3.jpeg', NULL, '2022-03-07', '10:42:13', '2022-03-07 04:12:13', '2022-03-07 04:12:13');

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
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storeyed` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `site_location`, `building_area`, `construction_type`, `job_scope`, `created_date`, `created_at`, `updated_at`, `phone`, `project_code`, `remark`, `address`, `storeyed`, `email`) VALUES
(1, 'Mg Mg', 'Yangon', 'Yangon', 'Yangon', 'Yangon', '2022-03-07', '2022-03-07 04:09:33', '2022-03-07 04:09:33', '09444161997', 'P-00001', NULL, 'Yangon', 'Yangon', 'mgmg@gmail.com'),
(2, 'Aung Aung', 'YGN', NULL, NULL, NULL, '2022-03-07', '2022-03-07 04:10:01', '2022-03-07 04:10:01', '09444161997', 'P-00002', NULL, 'YGN', NULL, 'aung@gmail.com'),
(3, 'Soe Soe', 'YGN', NULL, NULL, NULL, '2022-03-07', '2022-03-07 04:10:39', '2022-03-07 04:10:39', '09255678857', 'P-00003', NULL, 'YGN', NULL, 'soe@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'HR', '2022-03-07 09:08:33', '2022-03-07 09:22:25'),
(2, 'Engineering', '2022-03-07 09:08:51', '2022-03-07 09:08:51'),
(3, 'Manager', '2022-03-07 09:22:36', '2022-03-07 09:22:36');

-- --------------------------------------------------------

--
-- Table structure for table `exterior_design_fees`
--

CREATE TABLE `exterior_design_fees` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `exterior_design_fees` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_time` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exterior_design_fees`
--

INSERT INTO `exterior_design_fees` (`id`, `project_id`, `user_id`, `exterior_design_fees`, `original_name`, `remark`, `upload_date`, `upload_time`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'public/quotationproposal/dAZwD5WojMjDDMoHQTl5jNb2SYIV4hboM7J3peuj.pdf', 'sample.pdf', NULL, '2022-03-07', '10:41:54', '2022-03-07 04:11:54', '2022-03-07 04:11:54');

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
(1, 1, 2, 'public/floor_plans/cSqghMYIrsjhuSzyiA5PJBkmPuPcvy84Ile8N4Hb.jpg', '2022-03-07', '10:41:29', '2022-03-07 10:41:29', '2022-03-07 04:11:29', '2022-03-07 04:11:29', 'floor_plan_1.jpeg', NULL),
(2, 1, 2, 'public/floor_plans/Kbjwp75mx0gVKRnI3NQjhF5iuhZSuGhoSqKCOGJZ.jpg', '2022-03-07', '10:41:29', '2022-03-07 10:41:29', '2022-03-07 04:11:29', '2022-03-07 04:11:29', 'floor_plan_2.jpeg', NULL),
(3, 1, 2, 'public/floor_plans/UPw2EZFkP5FLIMssaNkhVCNjTkVdAX6T5quGTbw4.jpg', '2022-03-07', '10:41:29', '2022-03-07 10:41:29', '2022-03-07 04:11:29', '2022-03-07 04:11:29', 'floor_plan_3.jpeg', NULL);

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unitos_of_measure_id` int(11) DEFAULT NULL,
  `selling_price` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_account_id` int(11) DEFAULT NULL,
  `cost_price` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_account_id` int(11) DEFAULT NULL,
  `receivable_account_id` int(11) DEFAULT NULL,
  `payable_account_id` int(11) DEFAULT NULL,
  `opening_inventory_account_id` int(11) DEFAULT NULL,
  `closing_inventory_account_id` int(11) DEFAULT NULL,
  `closing_stock_account_id` int(11) DEFAULT NULL,
  `quantity_on_hand` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `as_of_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opening_cost_price` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
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
(22, '2022_02_17_191518_add_remark_to_floor_plans_table', 15),
(23, '2022_02_25_151550_create_quotationproposals_table', 16),
(24, '2022_02_25_175232_add_exterior_design_fees_date_to_projects_table', 17),
(25, '2022_02_26_110040_create_archi_exterior_designs_table', 18),
(26, '2022_02_26_111149_add_created_at_to_archi_exterior_designs_table', 19),
(27, '2022_02_26_112316_create_structure_designs_table', 20),
(28, '2022_02_26_170910_add_item_code_to_materials_table', 21),
(29, '2022_02_26_180358_add_item_accounts_to_materials_table', 22),
(30, '2022_02_26_182608_drop_materials_table', 23),
(31, '2022_02_26_182908_add_opening_cost_price_to_materials_table', 24),
(32, '2022_03_06_120436_add_project_code_to_customers_table', 25),
(33, '2022_03_06_121148_add_address_to_customers_table', 26),
(34, '2022_03_06_122220_add_email_to_customers_table', 27),
(35, '2022_03_06_124826_remove_project_code_from_projects_table', 28),
(36, '2022_03_06_185209_create_exterior_design_fees_table', 29),
(37, '2022_03_06_191013_create_structure_design_fees_table', 30),
(38, '2022_03_06_232222_add_approved_by_to_projects_table', 31),
(39, '2022_03_06_232721_create_approved_bies_table', 32),
(40, '2022_03_07_153017_create_departments_table', 33),
(41, '2022_03_07_160507_create_permission_tables', 34);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'floor_plan_create', 'web', '2022-03-07 10:53:19', '2022-03-07 10:54:52'),
(2, 'floor_plan_view', 'web', '2022-03-07 10:53:31', '2022-03-07 10:53:31'),
(3, 'quotation_proposal_create', 'web', '2022-03-07 11:20:36', '2022-03-07 11:20:36'),
(4, 'quotation_proposal_view', 'web', '2022-03-07 11:20:51', '2022-03-07 11:20:51');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  `exterior_design_fees_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `structure_design_fees_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `customer_id`, `floor_plan_status`, `floor_plan_upload_date`, `quotation_proposal_status`, `quotation_proposal_date`, `exterior_design_fees`, `structure_design_fees`, `archi_exterior_design_status`, `archi_exterior_design_upload_date`, `structure_design_status`, `structure_design_upload_date`, `created_date`, `remark`, `project_status`, `created_at`, `updated_at`, `exterior_design_fees_date`, `structure_design_fees_date`, `approved_status`, `approved_date`) VALUES
(1, 1, 'finished', '2022-03-07 10:41:29', 'finished', '2022-03-07 10:41:44', 'done', 'done', 'finished', '2022-03-07 10:42:13', 'finished', '2022-03-07 10:42:25', '2022-03-07', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, <span style=\"background-color: rgb(255, 255, 0);\">when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. </span>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Proposal', '2022-03-07 04:10:47', '2022-03-07 07:30:02', '2022-03-07 10:41:54', '2022-03-07 10:42:02', 'approved', '2022-03-07 14:00:02'),
(2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07', NULL, 'Proposal', '2022-03-07 04:10:52', '2022-03-07 04:10:52', NULL, NULL, NULL, NULL),
(3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07', NULL, 'Proposal', '2022-03-07 04:10:55', '2022-03-07 04:10:55', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quotationproposals`
--

CREATE TABLE `quotationproposals` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quotation_file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_time` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotationproposals`
--

INSERT INTO `quotationproposals` (`id`, `project_id`, `user_id`, `quotation_file`, `original_name`, `remark`, `upload_date`, `upload_time`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'public/quotationproposal/bqfjuOi1RFpPCsvoOeYNtgDfLWqByvF5zJCucZVF.pdf', 'sample.pdf', NULL, '2022-03-07', '10:41:44', '2022-03-07 04:11:44', '2022-03-07 04:11:44');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2022-03-07 10:18:24', '2022-03-07 11:08:17'),
(2, 'Engineering', 'web', '2022-03-07 10:22:39', '2022-03-07 10:22:39');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `structure_designs`
--

CREATE TABLE `structure_designs` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `structure_design_file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_time` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `structure_designs`
--

INSERT INTO `structure_designs` (`id`, `project_id`, `user_id`, `structure_design_file`, `original_name`, `remark`, `upload_date`, `upload_time`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'public/structuredesign/aiCZsUk3n3dTytoXft2APW4vuKZJNIAf14XWbpfl.jpg', 'floor_plan_1.jpeg', NULL, '2022-03-07', '10:42:25', '2022-03-07 04:12:25', '2022-03-07 04:12:25'),
(2, 1, 2, 'public/structuredesign/5Lax5F9js2KT8ipLYI5ODwU6O8d4JhLzCjqQkJgL.jpg', 'floor_plan_2.jpeg', NULL, '2022-03-07', '10:42:25', '2022-03-07 04:12:25', '2022-03-07 04:12:25'),
(3, 1, 2, 'public/structuredesign/PhOjDrsOb5jixljjG642R6JAeArtmRATFCQJO3sL.jpg', 'floor_plan_3.jpeg', NULL, '2022-03-07', '10:42:25', '2022-03-07 04:12:25', '2022-03-07 04:12:25');

-- --------------------------------------------------------

--
-- Table structure for table `structure_design_fees`
--

CREATE TABLE `structure_design_fees` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `structure_design_fees` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_time` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `structure_design_fees`
--

INSERT INTO `structure_design_fees` (`id`, `project_id`, `user_id`, `structure_design_fees`, `original_name`, `remark`, `upload_date`, `upload_time`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'public/quotationproposal/LKmCYaqrK5NGLQHscbXJ0fpnbNVgWkN6qGvqSXuF.pdf', 'sample.pdf', NULL, '2022-03-07', '10:42:02', '2022-03-07 04:12:02', '2022-03-07 04:12:02');

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
-- Indexes for table `approved_bies`
--
ALTER TABLE `approved_bies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `archi_exterior_designs`
--
ALTER TABLE `archi_exterior_designs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exterior_design_fees`
--
ALTER TABLE `exterior_design_fees`
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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotationproposals`
--
ALTER TABLE `quotationproposals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `structure_designs`
--
ALTER TABLE `structure_designs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `structure_design_fees`
--
ALTER TABLE `structure_design_fees`
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
-- AUTO_INCREMENT for table `approved_bies`
--
ALTER TABLE `approved_bies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `archi_exterior_designs`
--
ALTER TABLE `archi_exterior_designs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chartof_accounts`
--
ALTER TABLE `chartof_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `exterior_design_fees`
--
ALTER TABLE `exterior_design_fees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `floor_plans`
--
ALTER TABLE `floor_plans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `labours`
--
ALTER TABLE `labours`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `quotationproposals`
--
ALTER TABLE `quotationproposals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `structure_designs`
--
ALTER TABLE `structure_designs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `structure_design_fees`
--
ALTER TABLE `structure_design_fees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
