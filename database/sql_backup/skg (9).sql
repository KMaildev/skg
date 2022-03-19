-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 19, 2022 at 09:13 PM
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
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ac_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `approved_bies`
--

CREATE TABLE `approved_bies` (
  `id` int(11) NOT NULL,
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
(1, 2, 2, 'public/approvedby/MsdW8ym5eqjW3Y2ZRQSYAotnV3eQSvRoBK4t1uks.jpg', 'floor_plan_1.jpeg', NULL, '2022-03-17', '14:30:07', '2022-03-17 08:00:07', '2022-03-17 08:00:07');

-- --------------------------------------------------------

--
-- Table structure for table `archi_exterior_designs`
--

CREATE TABLE `archi_exterior_designs` (
  `id` int(11) NOT NULL,
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
(1, 26, 3, 'public/archiexteriordesign/UV4WxwQq6XnhvxPYeCUn9KkvdnEBqE1F66iikJhg.pdf', 'THU KHA SHWE PYI  Hospital Archi Dwg (2).pdf', NULL, '2022-03-16', '17:26:55', '2022-03-16 10:26:55', '2022-03-16 10:26:55'),
(2, 16, 3, 'public/archiexteriordesign/uPMfsWeFypc0RPw4En73khaKg1rkd1IAwFTXhzoz.pdf', 'Archi 1032022.pdf', NULL, '2022-03-16', '18:33:15', '2022-03-16 11:33:15', '2022-03-16 11:33:15'),
(3, 6, 3, 'public/archiexteriordesign/IjaQHDAJ9BXCLeKKo7l6d61gay5TwzzrPuDqU92M.pdf', 'MWD Archi 11.12.2021.pdf', NULL, '2022-03-16', '22:37:17', '2022-03-16 15:37:17', '2022-03-16 15:37:17'),
(4, 5, 3, 'public/archiexteriordesign/BdEJcwQsAetR4IxjzSB4CaCdK3NpLzHVIpHX5cHH.pdf', 'MSSDAArchi.pdf', NULL, '2022-03-16', '22:51:08', '2022-03-16 15:51:08', '2022-03-16 15:51:08'),
(5, 30, 3, 'public/archiexteriordesign/MquaZEec3re6x2D3muv1zsvXUrvR6OZ1FCjhiDbd.pdf', 'MNSD FENCE 17.3.2022 (1).pdf', NULL, '2022-03-17', '10:50:08', '2022-03-17 03:50:08', '2022-03-17 03:50:08'),
(6, 2, 2, 'public/archiexteriordesign/JA2WuQwOkJuBb4QaZt3jMXuYddtlM2NXM6o001Nr.jpg', 'floor_plan_1.jpeg', NULL, '2022-03-17', '14:30:16', '2022-03-17 08:00:16', '2022-03-17 08:00:16');

-- --------------------------------------------------------

--
-- Table structure for table `chartof_accounts`
--

CREATE TABLE `chartof_accounts` (
  `id` int(11) NOT NULL,
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
-- Table structure for table `contracts`
--

CREATE TABLE `contracts` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `contract_file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_time` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
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
(2, 'U Nyi Nyi Shin Thant', 'No. 81, Yadanar Housing, Dagon Seikkan Tsp.', '90\' x 87\'', 'Steel Structure', 'Normal Package', '2022-03-15', '2022-03-15 09:27:18', '2022-03-15 09:27:18', '095001154', 'YGN_DGSK_0001', NULL, 'No. 81, Yadanar Housing, Dagon Seikkan Tsp.', '3 Storeyed with Roof Slab', NULL),
(4, 'Ko Aung Kyaw Myo', 'No. 223/B, Daung Min Street, 14 Quarter, South Okkala Tsp', '24\' x 35\'', 'RC', 'Normal Package', '2022-03-15', '2022-03-15 15:26:27', '2022-03-15 15:26:27', '09 420 027 285', 'YGN- SOKL- 00002', NULL, 'No. 223/B, Daung Min Street, 14 Quarter, South Okkala Tsp', '3 Storeyed with Roof Slab', NULL),
(5, 'U Moe Min Thu', 'No.555/A, Thuya Street, 9 Quarter, South Okkalapa Tsp, Yangon', '17\' x 45\'', 'RC', 'Diamond Package', '2022-03-15', '2022-03-15 15:34:03', '2022-03-15 15:34:03', '09 254 476 677', 'YGN_SOKL_00003', NULL, 'No.555/A, Thuya Street, 9 Quarter, South Okkalapa Tsp, Yangon', '2.5 Storeyed with 4 Angle Roofing', NULL),
(6, 'Ko Hluon Moe Thu', 'No.36 A, Zaya Thiri 3 Street, Zaya Thiri Quarter, Dawpon Tsp, Yangon', '43\' x10\' 6\"', 'RC', 'Diamond package', '2022-03-15', '2022-03-15 16:05:28', '2022-03-15 16:05:28', '09 420 066 552', 'YGN_DP_00004', NULL, 'No.36 A, Zaya Thiri 3 Street, Zaya Thiri Quarter, Dawpon Tsp, Yangon', '2.5 Storeyed with Roof Slab', NULL),
(7, 'Ko San Htoo', 'No.429/A, Damayone Street, 16/3 Quarter, Thingangyun Tsp, Yangon', '18\' x 47\'', 'RC', 'Diamond Package', '2022-03-15', '2022-03-15 16:16:44', '2022-03-15 16:16:44', '09 7777 992 879', 'YGN_TGG_00005', NULL, 'No.429/A, Damayone Street, 16/3 Quarter, Thingangyun Tsp, Yangon', '2.5 Storeyed with Roof Slab', NULL),
(8, 'Ko Khant Si Thu', 'No.1560, U Aww Street, North Dagon Tsp, Yangon', '20\' x 40\'', 'RC', 'Diamond Package', '2022-03-15', '2022-03-15 16:28:07', '2022-03-15 16:28:07', '09 787364202', 'YGN_ND_00006', NULL, 'No.1560, U Aww Street, North Dagon Tsp, Yangon', '2.5 Storeyed with Roof Slab', NULL),
(9, 'U Wint Naing', 'No. 35A, 170 A, War War Win Mya Khar Nyo Housing, Tharkayta Tsp, yangon', '48\' x 55\'', 'RC', 'Normal Package', '2022-03-15', '2022-03-15 16:37:52', '2022-03-15 16:37:52', '09 695925256', 'YGN_TKT_00007', NULL, 'No. 35A, 170 A, War War Win Mya Khar Nyo Housing, Tharkayta Tsp, yangon', '3 Storeyed wih Roof Slab', NULL),
(10, 'Ko Tin Latt', 'No.93, U Paing (19/1/2), Mingalar Street, Zay Kyo Quarter, Mawlamyine', '18\' x 35\'', 'RC', 'Gold Package', '2022-03-15', '2022-03-15 16:48:52', '2022-03-15 16:48:52', '09 254219549', 'MLM_ZK_00008', NULL, 'No.93, U Paing (19/1/2), Mingalar Street, Zay Kyo Quarter, Mawlamyine', NULL, NULL),
(11, 'Ma Zin Wah', 'No.22, Ma Soe Yein Street, 5 Quarter, Mayangone Tsp, Yangon', '35\' x 35\'', 'RC', 'Diamond Package', '2022-03-16', '2022-03-15 17:03:34', '2022-03-15 17:03:34', '09 261112010', 'YGN_MYG_00009', NULL, 'No.22, Ma Soe Yein Street, 5 Quarter, Mayangone Tsp, Yangon', '1 Storeyed with Roofing', NULL),
(12, 'Ma Hnin Wutyi Phyo', 'No.87, Thudathana Street, 16/ 2 Quarter, Thingangyun Tsp, Yangon', '12\' x 47\'', 'RC', 'Gold Package', '2022-03-16', '2022-03-15 17:10:01', '2022-03-15 17:10:01', '09 4444 53677', 'YGN_TGG_00010', NULL, 'No.87, Thudathana Street, 16/ 2 Quarter, Thingangyun Tsp, Yangon', '2 Storeyed wth Roof Slab', NULL),
(13, 'Ko Aung Khin Sint', 'No.678, Corner of 4 Street and Min Ye Kyaw Swar Street, 1 Quarter, Thamine, Mayangone', '23\' x 44\'', 'RC', 'Diamond Package', '2022-03-16', '2022-03-15 17:18:19', '2022-03-15 17:18:19', '09 5024374', 'YGN_MYG_00011', NULL, 'No.678, Corner of 4 Street and Min Ye Kyaw Swar Street, 1 Quarter, Thamine, Mayangone', '3.5 Storeyed with Roofing', NULL),
(14, 'Ko Zaw Htut Aung', 'No.1117/1, Shwe Hnin Si  5 Street, 5 Quarter,, Mayangone Tsp, Yangon', '24\' x 46\'', 'RC', 'Diamond Package', '2022-03-16', '2022-03-15 17:51:31', '2022-03-15 17:51:31', '09 509 7171', 'YGN_MYG_00012', NULL, 'No.1117/1, Shwe Hnin Si  5 Street, 5 Quarter,, Mayangone Tsp, Yangon', '3 Storeyed with Roof Slab', NULL),
(15, 'Ko Htut Aung', 'No.43, Bo Gyoke Street, 14 Ward, East Dagon, Yangon', '23\' x40\'', 'RC', 'Diamond Package', '2022-03-16', '2022-03-15 17:57:04', '2022-03-15 17:57:04', '09 5409956', 'YGN_ED_00014', NULL, 'No.43, Bo Gyoke Street, 14 Ward, East Dagon, Yangon', '2 Storeyed with Roof Slab', NULL),
(16, 'Daw Khin Aye Aye Khine', 'No.55/B, Dana Aung Street, Thuwanna, Thingangyun Tsp, Yangon', '30\' x 40\'', 'RC', 'Diamond Package', '2022-03-16', '2022-03-16 07:12:36', '2022-03-16 07:12:36', '09 783923123', 'YGN_TGG_00015', NULL, 'No.55/B, Dana Aung Street, Thuwanna, Thingangyun Tsp, Yangon', '2.5 Storeyed with Roof Slab', NULL),
(17, 'Daw War War Lwin', 'Tharkayta Tsp, Yangon', '18\' x 46\'', 'RC', 'Gold Package', '2022-03-16', '2022-03-16 07:30:06', '2022-03-16 07:30:06', '09 260646900', 'YGN_TKT_00016', NULL, 'Tharkayta Tsp, Yangon', '3 Storeyed with Roof Slab', NULL),
(18, 'Ma Yamin', 'Dagon Seik Kan Tsp, Yangon', '18\' x 45\'', 'RC', 'Gold Package', '2022-03-16', '2022-03-16 07:38:55', '2022-03-16 07:38:55', '09 957708938', 'YGN_DSK_00017', NULL, 'Dagon Seik Kan Tsp, Yangon', '2.5 Storeyed with Roof Slab', NULL),
(19, 'U Zayar Oo', 'Insein Tsp, Yangon', '20\' 6\" x 50\' 6\"', 'RC', 'Gold Package', '2022-03-16', '2022-03-16 08:09:08', '2022-03-16 08:09:08', '09 5117327', 'YGN_IS_00018', NULL, 'Insein Tsp, Yangon', '2.5 Storeyed with Roofing', NULL),
(20, 'Ma Ei Cho', 'South Okkalapa Tsp, Yangon', '18\' x 47\'', 'RC', 'Diamond Package', '2022-03-16', '2022-03-16 08:33:28', '2022-03-16 08:33:28', '09 5413279', 'YGN_SOKL_00019', NULL, 'South Okkalapa Tsp, Yangon', '2.5 Storeyed with Roofing', NULL),
(21, 'Ma Su Latt Kyaw Win', 'Tharkayta Tsp, Yangon', '18\' x 45\'', 'RC', 'Gold Package', '2022-03-16', '2022-03-16 08:44:03', '2022-03-16 08:44:03', '09 794928677', 'YGN_TKT_00020', NULL, 'Tharkayta Tsp, Yangon', '2.5 Storeyed with Roof Slab', NULL),
(22, 'Ko Phay Chit Htay', 'Hintada', '26\' 6\" x 42\'', 'RC', 'Normal Package', '2022-03-16', '2022-03-16 08:49:56', '2022-03-16 08:49:56', '09 404955455', 'YGN_HTD_00021', NULL, 'Hintada', '2 Storeyed with Roof Slab', NULL),
(23, 'Ko Ba Nyar', 'Hintada', '55\' x 46\'', 'RC', 'Normal Package', '2022-03-16', '2022-03-16 08:56:20', '2022-03-16 08:56:20', '09 695628555', 'YGN_HTD_00022', NULL, 'Hintada', '2.5 Storeyed with Roof Slab', NULL),
(24, 'U Myat Ko Ko', 'No.23, Daw Hla Kin Street, 2 Quarter, Mayangone Tsp, Yangon', '18\' x 47\'', 'RC', 'Gold Package', '2022-03-16', '2022-03-16 09:04:22', '2022-03-16 09:04:22', '09 5173420', 'YGN_MYG_00023', NULL, 'No.23, Daw Hla Kin Street, 2 Quarter, Mayangone Tsp, Yangon', '3 Storeyed with Roof Slab', NULL),
(25, 'Aye Chan Aung Hospital', 'Shwe Pyi Tar Tsp, Yangon', 'As per Archi + Structure Drawing', 'RC', 'Normal Package', '2022-03-16', '2022-03-16 09:10:12', '2022-03-16 09:10:12', '09 445477814', 'YGN_SPT_00024', NULL, 'Shwe Pyi Tar Tsp, Yangon', '5 Storeyed with Roof Slab', NULL),
(26, 'Ko Kyaw Myat Htoo', 'Mayangone Tsp, Yangon', '40\' x 25\'', 'RC', 'Gold Package', '2022-03-16', '2022-03-16 09:14:02', '2022-03-16 09:14:02', '09 401558370', 'YGN_MYG_00025', NULL, 'Mayangone Tsp, Yangon', '2 Storeyed with Roof Slab', NULL),
(27, 'U Myat Nyein', 'North Dagon, Yanon', '26\' x 30\'', 'RC', 'Normal Package', '2022-03-16', '2022-03-16 09:22:40', '2022-03-16 09:22:40', '09 500 7875', 'YGN_ND_00026', NULL, 'North Dagon, Yanon', '2 Storeyed with Roof Slab', NULL),
(28, 'Ko Myo Min Zaw', 'Insein Tsp, Yangon', '18\' x 50\'', 'RC', 'Diamond Package', '2022-03-16', '2022-03-16 09:26:22', '2022-03-16 09:26:22', '09 774670068', 'YGN_IS_00027', NULL, 'Insein Tsp, Yangon', '2.5 Storeyed with Roof Slab', NULL),
(29, 'Ma Nan Su Myat Sandi', 'No.19, 2 Street, 3 Quarter, South Okkala Tsp, Yangon', '26\' x 30\'', 'RC', 'ID work and Fencing', '2022-03-16', '2022-03-16 16:51:24', '2022-03-16 16:51:24', '09 5173224', 'YGN_SOKL_00027', NULL, 'No.19, 2 Street, 3 Quarter, South Okkala Tsp, Yangon', '3 Storeyed with Roof Slab', NULL),
(30, 'Ko Paing Hein Aye', 'Kungyangon , Yangon', '26\' x 60\'', 'RC', 'Normal Package', '2022-03-17', '2022-03-16 17:20:34', '2022-03-16 17:20:34', '09 794586961', 'YGN_KGG_00029', NULL, 'Kungyangon , Yangon', '2.5 Storeyed with Roof Slab', NULL),
(31, 'U Kyaw Zaya Tun', 'No. 89, Thida Street, Myaungmya, Ayeyarwaddy', '36\' x 42\'', 'RC', 'ID Work', '2022-03-17', '2022-03-16 17:29:50', '2022-03-16 17:29:50', '09422462276', 'AYWD_MM_00030', NULL, 'No. 89, Thida Street, Myaungmya, Ayeyarwaddy', '2 Storeyed with Roof Slab', NULL),
(32, 'U Moe Aung Win', 'No.141, Site Pyoe Ywar Taunggyi District , Nyaung Shwe , Shan State', '29\' x 46\'', 'RC', 'Diamond package', '2022-03-17', '2022-03-16 17:40:21', '2022-03-16 17:40:21', '09 43174303', 'SS_NS_00031', NULL, 'No.141, Site Pyoe Ywar Taunggyi District , Nyaung Shwe , Shan State', '1.5 Storeyed with Roofing', NULL);

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
(1, 'Management/Director', '2022-03-07 17:28:07', '2022-03-07 17:28:07'),
(2, 'Management/ Manager', '2022-03-07 17:28:17', '2022-03-07 17:28:17'),
(3, 'HR', '2022-03-07 17:28:25', '2022-03-07 17:28:25'),
(4, 'Marketing', '2022-03-07 17:28:33', '2022-03-07 17:28:33'),
(5, 'Finance', '2022-03-07 17:28:40', '2022-03-07 17:28:40'),
(6, 'Archi Designer', '2022-03-07 17:28:47', '2022-03-07 17:28:47'),
(7, 'Structure Designer', '2022-03-07 17:28:54', '2022-03-07 17:28:54'),
(8, 'Operation', '2022-03-07 17:29:03', '2022-03-07 17:29:03'),
(9, 'Engineer', '2022-03-07 17:29:06', '2022-03-07 17:29:06');

-- --------------------------------------------------------

--
-- Table structure for table `exterior_design_fees`
--

CREATE TABLE `exterior_design_fees` (
  `id` int(11) NOT NULL,
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
(1, 25, 3, 'public/quotationproposal/UQ5VGiWZnfIsyGE72gTCrCIQZdPlCGekdzS962Tz.pdf', '0073233 - U myat ko ko - drawing quotation - 15.3.2022.pdf', NULL, '2022-03-16', '17:52:07', '2022-03-16 10:52:07', '2022-03-16 10:52:07'),
(2, 24, 3, 'public/quotationproposal/3EePolebmF60QVknvYlu5nT2dDt0wtvRvRrYOLko.pdf', 'Ko Banyar-Archi Design Fees.pdf', NULL, '2022-03-16', '18:00:17', '2022-03-16 11:00:17', '2022-03-16 11:00:17'),
(4, 2, 2, 'public/quotationproposal/mm4ArJ1TvA93GdebViLv7gA0FOFVOld1qCQLdLSX.pdf', 'sample.pdf', NULL, '2022-03-17', '14:29:47', '2022-03-17 07:59:47', '2022-03-17 07:59:47');

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
-- Table structure for table `fixed_assets`
--

CREATE TABLE `fixed_assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `desciption` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_warehouse_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fixed_assets`
--

INSERT INTO `fixed_assets` (`id`, `item_name`, `unit`, `qty`, `desciption`, `main_warehouse_id`, `created_at`, `updated_at`) VALUES
(2, 'T Column', 'Nos', 25, NULL, 1, '2022-03-19 08:44:10', '2022-03-19 18:41:51'),
(3, 'Submersible Pump', 'Nos', 13, NULL, 1, '2022-03-19 11:00:06', '2022-03-19 11:00:06'),
(4, 'Concrete Mixer', 'Nos', 10, NULL, 1, '2022-03-19 11:00:18', '2022-03-19 11:00:18'),
(5, 'Generator', 'Nos', 10, NULL, 1, '2022-03-19 11:00:32', '2022-03-19 11:00:32');

-- --------------------------------------------------------

--
-- Table structure for table `floor_plans`
--

CREATE TABLE `floor_plans` (
  `id` int(11) NOT NULL,
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
(1, 2, 2, 'public/floor_plans/cJJTlVGdOKYxXQpQeHjn1LgnGLlC51cQpClDxlpM.doc', '2022-03-15', '16:58:28', '2022-03-15 16:58:28', '2022-03-15 09:58:28', '2022-03-15 09:58:28', 'Interview Questions.docx', NULL),
(3, 27, 3, 'public/floor_plans/xAwWzpNdr5na340X3Uz9tdCN0th5kblN63HGx6q7.pdf', '2022-03-16', '17:19:28', '2022-03-16 17:19:28', '2022-03-16 10:19:28', '2022-03-16 10:19:28', 'KO KYAW MYAT HTOO.pdf', NULL),
(4, 25, 3, 'public/floor_plans/tQurvO2mHZpyIwgdhSRSbgkFaRuwCAYANI5YdiWQ.pdf', '2022-03-16', '17:51:32', '2022-03-16 17:51:32', '2022-03-16 10:51:32', '2022-03-16 10:51:32', 'UMKK_Floor Plan.pdf', NULL),
(5, 24, 3, 'public/floor_plans/jlBztUWfDE2XuUyiZUeZYr3ECeeRmQO14KPOYA15.pdf', '2022-03-16', '17:57:19', '2022-03-16 17:57:19', '2022-03-16 10:57:19', '2022-03-16 10:57:19', 'KO BANYAR Floor Plan.pdf', NULL),
(6, 23, 3, 'public/floor_plans/fSefg3eTNhm36HmQBDQn31KXsACO9lMltwopNnAR.pdf', '2022-03-16', '18:02:12', '2022-03-16 18:02:12', '2022-03-16 11:02:12', '2022-03-16 11:02:12', 'kpchr3.pdf', NULL),
(7, 19, 3, 'public/floor_plans/62ngvkkzrNHlrQ25uElyHISlu0HaOn8HCEgHmeje.pdf', '2022-03-16', '18:03:55', '2022-03-16 18:03:55', '2022-03-16 11:03:55', '2022-03-16 11:03:55', 'MYM#P0073229R4#PFP#14032022.pdf', NULL),
(8, 18, 3, 'public/floor_plans/Qxou7t3HeB6qXOrYDCCsK2j8aI4jYw0z7bMLmgKA.pdf', '2022-03-16', '18:19:57', '2022-03-16 18:19:57', '2022-03-16 11:19:57', '2022-03-16 11:19:57', 'DWWL#P0073222R1#PFP#28022022.pdf', NULL),
(9, 17, 3, 'public/floor_plans/u8Plae0rhgut0GqrxE4Vbc3Esv4BBYsY6sqXxbRe.pdf', '2022-03-16', '18:23:57', '2022-03-16 18:23:57', '2022-03-16 11:23:57', '2022-03-16 11:23:57', 'DKAAK#CONFIRMPFP#P0073223R0#15032022.pdf', NULL),
(10, 16, 3, 'public/floor_plans/SKwotITDSoBhapWpbcd1zMIpOFCGhAAnQfYslAWO.pdf', '2022-03-16', '18:32:07', '2022-03-16 18:32:07', '2022-03-16 11:32:07', '2022-03-16 11:32:07', 'kha_1646216608 Floor Plan.pdf', NULL),
(11, 14, 3, 'public/floor_plans/vrjigxaNpYoczegLDbarsJUi5m1zjWtBVD9JXeTP.pdf', '2022-03-16', '20:04:30', '2022-03-16 20:04:30', '2022-03-16 13:04:30', '2022-03-16 13:04:30', 'Floor plan.pdf', NULL),
(12, 13, 3, 'public/floor_plans/9wg8Wr7CMSGtM6doT7HnkYt7wFeBsrdStDv6IS62.pdf', '2022-03-16', '20:13:53', '2022-03-16 20:13:53', '2022-03-16 13:13:53', '2022-03-16 13:13:53', 'MAHninWuttYi-17.2.2022 3.pdf', NULL),
(13, 12, 3, 'public/floor_plans/P7FtOvNMVvakecvVUmdmWW54X8Yaoru2zcnkARMR.pdf', '2022-03-16', '20:30:43', '2022-03-16 20:30:43', '2022-03-16 13:30:43', '2022-03-16 13:30:43', 'FloorPlan.pdf', NULL),
(14, 11, 3, 'public/floor_plans/erNePdpLherfSkFJ6yyNdvIDq9p1ADNYVeocHjFj.pdf', '2022-03-16', '20:53:20', '2022-03-16 20:53:20', '2022-03-16 13:53:20', '2022-03-16 13:53:20', 'Floor Plan.pdf', NULL),
(15, 9, 3, 'public/floor_plans/H79Je9LL3j4yHIAdsf5BTGgrYot9Naj4S9PAt6Kg.pdf', '2022-03-16', '21:15:21', '2022-03-16 21:15:21', '2022-03-16 14:15:21', '2022-03-16 14:15:21', 'Floor Plan.pdf', NULL),
(16, 8, 3, 'public/floor_plans/JucqLZka8v6cg0ARF5ETg4LO0nC9YjH1kneRfTKg.pdf', '2022-03-16', '21:30:46', '2022-03-16 21:30:46', '2022-03-16 14:30:46', '2022-03-16 14:30:46', 'Floor Plan.pdf', NULL),
(17, 7, 3, 'public/floor_plans/nauv1wZ6oJTlU3meP66KOrLb1RurH9FrdI5VnTn0.pdf', '2022-03-16', '21:41:49', '2022-03-16 21:41:49', '2022-03-16 14:41:49', '2022-03-16 14:41:49', 'Floor Plan.pdf', NULL),
(18, 6, 3, 'public/floor_plans/vm3wAWBnqmN8xicMXjGb5kHHPFLc5ZmQ3714uBno.pdf', '2022-03-16', '22:36:20', '2022-03-16 22:36:20', '2022-03-16 15:36:20', '2022-03-16 15:36:20', 'Floor Plan.pdf', NULL),
(19, 5, 3, 'public/floor_plans/lUWChNUFN35nMftUttZIWffMAO7Tx6f6vRcDwTHi.pdf', '2022-03-16', '22:50:27', '2022-03-16 22:50:27', '2022-03-16 15:50:27', '2022-03-16 15:50:27', 'Floor Plan.pdf', NULL),
(20, 20, 12, 'public/floor_plans/0K9Vckt4Gs3Xin2GgpL0R1lSAcf16BDQpS8QG66k.rar', '2022-03-17', '11:29:59', '2022-03-17 11:29:59', '2022-03-17 04:29:59', '2022-03-17 04:29:59', 'ko zayar oo.rar', NULL),
(21, 20, 12, 'public/floor_plans/ZFD90jdlidMe6DqMIMoIeOJFWLfWoMP86aSvvp9E.rar', '2022-03-17', '11:31:06', '2022-03-17 11:31:06', '2022-03-17 04:31:06', '2022-03-17 04:31:06', 'ko zayar oo.rar', NULL),
(22, 10, 4, 'public/floor_plans/stcYTIgxoclkalKl9Z7qQCUY1bY8U7GiNn0PJo5Y.pdf', '2022-03-17', '11:37:08', '2022-03-17 11:37:08', '2022-03-17 04:37:08', '2022-03-17 04:37:08', 'UWN-PMY-ARCH-DWG11032022.pdf', NULL),
(23, 10, 4, 'public/floor_plans/oIvq8vbp4D6yBvCBs0uOhAHYznjmGotOzox8nVgU.bin', '2022-03-17', '11:37:49', '2022-03-17 11:37:49', '2022-03-17 04:37:49', '2022-03-17 04:37:49', 'UWN-PMY-ARCH-DWG11032022.dwg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `labours`
--

CREATE TABLE `labours` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `labours`
--

INSERT INTO `labours` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Steel Fixers', '2022-02-15 09:44:28', '2022-02-15 09:47:40'),
(2, 'Steel Fixer', '2022-02-15 09:44:51', '2022-02-15 09:44:51'),
(3, 'Surveryor', '2022-02-15 09:45:03', '2022-02-15 09:45:03'),
(4, 'Worker', '2022-02-15 09:45:09', '2022-02-15 09:45:09');

-- --------------------------------------------------------

--
-- Table structure for table `main_warehouses`
--

CREATE TABLE `main_warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `main_warehouses`
--

INSERT INTO `main_warehouses` (`id`, `warehouse_code`, `warehouse_name`, `location`, `created_at`, `updated_at`) VALUES
(1, 'W-00001', 'Main Warehouse', 'Yangon', '2022-03-19 07:19:49', '2022-03-19 07:36:43');

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id` int(11) NOT NULL,
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
(41, '2022_03_07_160507_create_permission_tables', 34),
(42, '2022_03_07_224304_add_phone_to_users_table', 35),
(43, '2022_03_08_013300_add_display_order_to_projects_table', 36),
(0, '2022_03_12_112634_create_permits_table', 37),
(0, '2022_03_12_114056_create_contracts_table', 38),
(0, '2022_03_17_125912_add_processing_file_and_processing_file_upload_date_to_projects', 38),
(0, '2022_03_17_135030_create_processing_files_table', 39),
(0, '2022_03_17_162206_create_projects_users_table', 40),
(0, '2022_03_17_165639_create_projects_users_table', 41),
(0, '2022_03_17_165826_create_projects_users_table', 42),
(0, '2022_03_19_134244_create_main_warehouses_table', 43),
(0, '2022_03_19_141838_create_fixed_assets_table', 44);

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

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(5, 'App\\User', 5),
(5, 'App\\User', 3),
(6, 'App\\User', 6),
(5, 'App\\User', 7),
(5, 'App\\User', 9),
(6, 'App\\User', 8),
(5, 'App\\User', 10),
(5, 'App\\User', 11),
(6, 'App\\User', 12),
(6, 'App\\User', 13),
(7, 'App\\User', 2),
(5, 'App\\User', 14),
(7, 'App\\User', 1),
(7, 'App\\User', 15),
(5, 'App\\User', 16),
(6, 'App\\User', 17),
(6, 'App\\User', 18),
(6, 'App\\User', 4),
(7, 'App\\User', 19),
(0, 'App\\User', 20),
(0, 'App\\User', 21),
(0, 'App\\User', 22);

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
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(5, 'floor_plan_view', 'web', '2022-03-07 17:32:08', '2022-03-07 17:32:08'),
(6, 'floor_plan_create', 'web', '2022-03-07 17:32:13', '2022-03-07 17:32:13'),
(7, 'quotation_proposal_view', 'web', '2022-03-07 17:33:00', '2022-03-07 17:33:00'),
(8, 'quotation_proposal_create', 'web', '2022-03-07 17:33:04', '2022-03-07 17:33:04'),
(9, 'archi_exterior_design_view', 'web', '2022-03-07 17:34:42', '2022-03-07 17:34:42'),
(10, 'archi_exterior_design_create', 'web', '2022-03-07 17:34:47', '2022-03-07 17:34:47'),
(11, 'accept_project_module', 'web', '2022-03-07 17:49:20', '2022-03-07 17:49:20'),
(12, 'accept_inventory_module', 'web', '2022-03-07 17:57:01', '2022-03-07 17:57:01'),
(13, 'accept_purchase_module', 'web', '2022-03-07 17:57:24', '2022-03-07 17:57:24'),
(14, 'accept_engineer_module', 'web', '2022-03-07 17:57:41', '2022-03-07 17:57:41'),
(15, 'accept_accounting_module', 'web', '2022-03-07 17:57:52', '2022-03-07 17:57:52'),
(16, 'accept_qs_module', 'web', '2022-03-07 17:58:08', '2022-03-07 17:58:08'),
(17, 'accept_sale_module', 'web', '2022-03-07 17:58:22', '2022-03-07 17:58:22'),
(18, 'accept_hr_module', 'web', '2022-03-07 17:58:33', '2022-03-07 17:58:33'),
(19, 'accept_documents_module', 'web', '2022-03-07 17:58:46', '2022-03-07 17:58:46'),
(20, 'accept_setting_module', 'web', '2022-03-07 17:58:59', '2022-03-07 17:58:59'),
(21, 'accept_activities_module', 'web', '2022-03-07 17:59:12', '2022-03-07 17:59:12'),
(22, 'structure_design_view', 'web', '2022-03-07 18:11:53', '2022-03-07 18:11:53'),
(23, 'structure_design_create', 'web', '2022-03-07 18:11:59', '2022-03-07 18:11:59'),
(24, 'exterior_design_fees_view', 'web', '2022-03-07 18:17:14', '2022-03-07 18:17:14'),
(25, 'structure_design_fees_view', 'web', '2022-03-07 18:17:33', '2022-03-07 18:17:33'),
(26, 'customer_edit_delete', 'web', '2022-03-15 09:04:45', '2022-03-15 09:04:45'),
(27, 'project_delete', 'web', '2022-03-15 09:04:51', '2022-03-15 09:04:51'),
(28, 'project_file_delete', 'web', '2022-03-17 07:58:56', '2022-03-17 07:58:56');

-- --------------------------------------------------------

--
-- Table structure for table `permits`
--

CREATE TABLE `permits` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permit_file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_time` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permits`
--

INSERT INTO `permits` (`id`, `project_id`, `user_id`, `permit_file`, `original_name`, `remark`, `upload_date`, `upload_time`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'public/permit/ekKpLRXliHsIBDI30XCJdrzLE1gDpIdDHG728rab.jpg', 'floor_plan_3.jpeg', NULL, '2022-03-17', '14:30:25', '2022-03-17 08:00:25', '2022-03-17 08:00:25');

-- --------------------------------------------------------

--
-- Table structure for table `processing_files`
--

CREATE TABLE `processing_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `processing_file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_time` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
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
  `approved_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_order` int(11) NOT NULL DEFAULT 0,
  `permit_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permit_upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contract_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contract_upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processing_file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processing_file_upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `customer_id`, `floor_plan_status`, `floor_plan_upload_date`, `quotation_proposal_status`, `quotation_proposal_date`, `exterior_design_fees`, `structure_design_fees`, `archi_exterior_design_status`, `archi_exterior_design_upload_date`, `structure_design_status`, `structure_design_upload_date`, `created_date`, `remark`, `project_status`, `created_at`, `updated_at`, `exterior_design_fees_date`, `structure_design_fees_date`, `approved_status`, `approved_date`, `display_order`, `permit_status`, `permit_upload_date`, `contract_status`, `contract_upload_date`, `processing_file`, `processing_file_upload_date`) VALUES
(2, 2, 'finished', '2022-03-15 16:58:55', 'finished', '2022-03-17 14:29:37', 'done', 'done', 'finished', '2022-03-17 14:30:16', 'finished', '2022-03-17 13:18:47', '2022-03-15', NULL, 'Proposal', '2022-03-15 09:37:54', '2022-03-17 08:23:07', '2022-03-17 14:29:47', '2022-03-17 14:29:56', 'approved', '2022-03-17 14:30:07', 1, 'finished', '2022-03-17 14:30:25', 'finished', '2022-03-17 14:53:07', 'finished', '2022-03-17 14:18:22'),
(5, 4, 'finished', '2022-03-16 22:50:27', 'finished', '2022-03-16 22:50:45', NULL, NULL, 'finished', '2022-03-16 22:51:08', NULL, NULL, '2022-03-15', NULL, 'Proposal', '2022-03-15 15:26:46', '2022-03-17 03:53:15', NULL, NULL, NULL, NULL, 2, NULL, NULL, 'finished', '2022-03-16 22:51:32', NULL, NULL),
(6, 5, 'finished', '2022-03-16 22:36:20', 'finished', '2022-03-16 22:36:52', NULL, NULL, 'finished', '2022-03-16 22:37:17', NULL, NULL, '2022-03-15', NULL, 'Proposal', '2022-03-15 15:34:27', '2022-03-17 03:53:15', NULL, NULL, NULL, NULL, 3, NULL, NULL, 'finished', '2022-03-16 22:39:00', NULL, NULL),
(7, 6, 'finished', '2022-03-16 21:41:49', 'finished', '2022-03-16 21:42:03', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-15', NULL, 'Proposal', '2022-03-15 16:05:40', '2022-03-17 03:53:15', NULL, NULL, NULL, NULL, 4, NULL, NULL, 'finished', '2022-03-16 21:43:00', NULL, NULL),
(8, 7, 'finished', '2022-03-16 21:30:46', 'finished', '2022-03-16 21:33:37', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-15', NULL, 'Proposal', '2022-03-15 16:16:57', '2022-03-17 03:53:15', NULL, NULL, NULL, NULL, 5, NULL, NULL, 'finished', '2022-03-16 21:37:02', NULL, NULL),
(9, 8, 'finished', '2022-03-16 21:15:21', 'finished', '2022-03-16 21:15:44', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-15', NULL, 'Proposal', '2022-03-15 16:28:19', '2022-03-17 03:53:15', NULL, NULL, NULL, NULL, 6, NULL, NULL, 'finished', '2022-03-16 21:19:08', NULL, NULL),
(10, 9, 'finished', '2022-03-17 11:37:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-15', NULL, 'Proposal', '2022-03-15 16:38:04', '2022-03-17 04:37:49', NULL, NULL, NULL, NULL, 7, NULL, NULL, 'finished', '2022-03-16 21:02:33', NULL, NULL),
(11, 10, 'finished', '2022-03-16 20:53:20', 'finished', '2022-03-16 20:53:55', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-15', NULL, 'Proposal', '2022-03-15 16:49:11', '2022-03-17 03:53:15', NULL, NULL, NULL, NULL, 8, NULL, NULL, 'finished', '2022-03-16 20:57:21', NULL, NULL),
(12, 11, 'finished', '2022-03-16 20:30:43', 'finished', '2022-03-16 20:31:28', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-15 17:04:41', '2022-03-17 03:53:15', NULL, NULL, NULL, NULL, 9, NULL, NULL, 'finished', '2022-03-16 20:34:27', NULL, NULL),
(13, 12, 'finished', '2022-03-16 20:13:53', 'finished', '2022-03-16 20:14:41', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-15 17:10:30', '2022-03-17 03:53:15', NULL, NULL, NULL, NULL, 10, NULL, NULL, 'finished', '2022-03-16 20:16:59', NULL, NULL),
(14, 13, 'finished', '2022-03-16 20:04:30', 'finished', '2022-03-16 20:05:03', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-15 17:18:33', '2022-03-17 03:53:15', NULL, NULL, NULL, NULL, 11, NULL, NULL, 'finished', '2022-03-16 20:06:52', NULL, NULL),
(15, 14, NULL, NULL, 'finished', '2022-03-16 18:35:32', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-15 17:51:50', '2022-03-17 03:53:15', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 15, 'finished', '2022-03-16 18:32:07', 'finished', '2022-03-16 18:32:29', NULL, NULL, 'finished', '2022-03-16 18:33:15', NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-15 17:57:43', '2022-03-17 03:53:15', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 16, 'finished', '2022-03-16 18:23:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 07:13:15', '2022-03-17 03:53:15', NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 17, 'finished', '2022-03-16 18:19:57', 'finished', '2022-03-16 18:20:25', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 07:30:27', '2022-03-17 03:53:15', NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 18, 'finished', '2022-03-16 18:03:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 07:39:12', '2022-03-17 03:53:15', NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 19, 'finished', '2022-03-17 11:31:06', 'finished', '2022-03-16 18:12:01', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 08:09:27', '2022-03-17 04:31:06', NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 08:33:44', '2022-03-17 03:53:15', NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 08:44:19', '2022-03-17 03:53:15', NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 22, 'finished', '2022-03-16 18:02:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 08:50:13', '2022-03-17 03:53:15', NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 23, 'finished', '2022-03-16 17:57:19', 'finished', '2022-03-16 17:58:29', 'done', 'done', NULL, NULL, NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 08:56:36', '2022-03-17 03:53:15', '2022-03-16 18:00:17', '2022-03-16 18:00:37', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 24, 'finished', '2022-03-16 17:51:32', NULL, NULL, 'done', NULL, NULL, NULL, NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 09:04:38', '2022-03-17 03:53:15', '2022-03-16 17:52:07', NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 25, NULL, NULL, 'finished', '2022-03-16 17:24:29', NULL, NULL, 'finished', '2022-03-16 17:26:55', NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 09:10:26', '2022-03-17 03:53:15', NULL, NULL, NULL, NULL, 23, 'finished', '2022-03-16 17:45:37', NULL, NULL, NULL, NULL),
(27, 26, 'finished', '2022-03-16 17:19:28', 'finished', '2022-03-16 17:19:55', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 09:14:19', '2022-03-17 03:53:15', NULL, NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 27, NULL, NULL, 'finished', '2022-03-16 17:17:39', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 09:22:52', '2022-03-17 03:53:15', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 28, NULL, NULL, 'finished', '2022-03-16 17:14:33', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 09:26:41', '2022-03-17 03:53:15', NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 29, NULL, NULL, 'finished', '2022-03-16 23:59:15', NULL, NULL, 'finished', '2022-03-17 10:50:08', NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 16:57:25', '2022-03-17 03:53:15', NULL, NULL, NULL, NULL, 27, NULL, NULL, 'finished', '2022-03-17 00:03:09', NULL, NULL),
(31, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-17', NULL, 'Proposal', '2022-03-16 17:20:51', '2022-03-17 03:53:15', NULL, NULL, NULL, NULL, 28, NULL, NULL, 'finished', '2022-03-17 00:21:10', NULL, NULL),
(32, 31, NULL, NULL, 'finished', '2022-03-17 00:31:02', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-17', NULL, 'Proposal', '2022-03-16 17:30:01', '2022-03-17 03:53:15', NULL, NULL, NULL, NULL, 29, NULL, NULL, 'finished', '2022-03-17 00:31:23', NULL, NULL),
(33, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-17', NULL, 'Proposal', '2022-03-16 17:40:39', '2022-03-17 03:53:15', NULL, NULL, NULL, NULL, 30, NULL, NULL, 'finished', '2022-03-17 00:41:37', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projects_users`
--

CREATE TABLE `projects_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `projects_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects_users`
--

INSERT INTO `projects_users` (`id`, `projects_id`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 20, '', '2022-03-19 05:28:57', '2022-03-19 05:28:57'),
(2, 5, 20, '', '2022-03-19 05:29:05', '2022-03-19 05:29:05'),
(3, 33, 20, '', '2022-03-19 05:29:15', '2022-03-19 05:29:15'),
(4, 15, 21, '', '2022-03-19 05:29:24', '2022-03-19 05:29:24'),
(5, 31, 22, '', '2022-03-19 05:29:31', '2022-03-19 05:29:31');

-- --------------------------------------------------------

--
-- Table structure for table `quotationproposals`
--

CREATE TABLE `quotationproposals` (
  `id` int(11) NOT NULL,
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
(1, 29, 3, 'public/quotationproposal/Eo67F4lJsoynVrFuIeGeEc6KbLg1n876ng6tqbOx.pdf', 'Quotation - Ko Myo Min Zaw.pdf', NULL, '2022-03-16', '17:14:33', '2022-03-16 10:14:33', '2022-03-16 10:14:33'),
(2, 28, 3, 'public/quotationproposal/ZcbVGQWWevO8Dq8aLuUG5oIlFxqJMVA7dS0PFOd8.pdf', 'Quotation Proposal For DSPN.pdf', NULL, '2022-03-16', '17:17:39', '2022-03-16 10:17:39', '2022-03-16 10:17:39'),
(3, 27, 3, 'public/quotationproposal/mh6jEQdFpFTtS82VXs9SaSvSU6pxr4JSwYxNoSak.pdf', 'Ko Kyaw Myat Htoo Quotation.pdf', NULL, '2022-03-16', '17:19:55', '2022-03-16 10:19:55', '2022-03-16 10:19:55'),
(4, 26, 3, 'public/quotationproposal/lBb487rv6rtBa5gfBtwh8ipmcFike1VjGTyMilrV.pdf', 'Aye Chan Aung Quotation 22.2.22.pdf', NULL, '2022-03-16', '17:24:29', '2022-03-16 10:24:29', '2022-03-16 10:24:29'),
(5, 24, 3, 'public/quotationproposal/QKGTTVcMK5SRsjpUqa001rEE5mq75JL4gwGv3uXt.pdf', 'Quotation Proposal For KBN with Swimming  Pool (14.3.22).pdf', NULL, '2022-03-16', '17:57:46', '2022-03-16 10:57:46', '2022-03-16 10:57:46'),
(6, 24, 3, 'public/quotationproposal/QUcFf43x2zpl6TiMfpdobHBH4voEjnIGfdgdeyhc.pdf', 'Quotation Proposal For KBN without Swimming Pool.pdf', NULL, '2022-03-16', '17:58:29', '2022-03-16 10:58:29', '2022-03-16 10:58:29'),
(7, 20, 3, 'public/quotationproposal/oMkExbRbB8dReOaI0pfQjEWKR3YA87pSi50JM6q7.pdf', 'Ko Zayar Oo Final Revised 8.3.22.pdf', NULL, '2022-03-16', '18:12:01', '2022-03-16 11:12:01', '2022-03-16 11:12:01'),
(8, 18, 3, 'public/quotationproposal/9plTpcOAKfmTFtwFgytXW4IH69UWsYqgmBLpALIM.pdf', 'Quotation proposal for DWWL.pdf', NULL, '2022-03-16', '18:20:25', '2022-03-16 11:20:25', '2022-03-16 11:20:25'),
(9, 16, 3, 'public/quotationproposal/haTOqe91GpO6mSzoe56wCP4KWoob3A80jMd3KUgC.pdf', 'Ko Htut Aung Combine_1647353626.pdf', NULL, '2022-03-16', '18:32:29', '2022-03-16 11:32:29', '2022-03-16 11:32:29'),
(10, 15, 3, 'public/quotationproposal/59Bh1T6h7fCOINGRK360j7bJLByulYBbKWh3rF28.pdf', 'Ko Zaw Htut Aung ( combined ) 7.3.2022.pdf', NULL, '2022-03-16', '18:35:32', '2022-03-16 11:35:32', '2022-03-16 11:35:32'),
(11, 14, 3, 'public/quotationproposal/8Lsov57XjxCmLjb2dfwGZU1LhgpF6pDPuSTMSRtY.pdf', 'Ko Aung Khin Sint ( roofing ) 23.2.22.pdf', NULL, '2022-03-16', '20:05:03', '2022-03-16 13:05:03', '2022-03-16 13:05:03'),
(12, 13, 3, 'public/quotationproposal/tFrHPrseBLcjvFvpClipTWJzvt6ZVjEe50bJ4tkv.pdf', 'MAHninWuttYi-17.2.2022.pdf', NULL, '2022-03-16', '20:14:41', '2022-03-16 13:14:41', '2022-03-16 13:14:41'),
(13, 12, 3, 'public/quotationproposal/6vsHXI2e8rBIfXTKMyXxxKmT6jetJCfw3i94qztE.pdf', 'Quotation Proposal Ma Zin Wah 17.2.22.pdf', NULL, '2022-03-16', '20:31:28', '2022-03-16 13:31:28', '2022-03-16 13:31:28'),
(14, 11, 3, 'public/quotationproposal/KKhXAdOD1IjVvJspbcB1Uf9ZXt8deqNC9XNEot0V.pdf', 'KTL - Actual combined 3.2.2022_1645773372.pdf', NULL, '2022-03-16', '20:53:43', '2022-03-16 13:53:43', '2022-03-16 13:53:43'),
(15, 11, 3, 'public/quotationproposal/8pMu0GV78Vqr7EW99ffkXdVKxrHEQDR6QauVCtlf.pdf', 'Ko Tin latt - Modified (roofing).pdf', NULL, '2022-03-16', '20:53:55', '2022-03-16 13:53:55', '2022-03-16 13:53:55'),
(16, 9, 3, 'public/quotationproposal/UtkKnOCDwJQ4Ow3XPBPwPjkaGQxFAQ2F8owozpWT.pdf', '25.1.2022 - Ko Khant Si Thu - roof slab.pdf', NULL, '2022-03-16', '21:15:44', '2022-03-16 14:15:44', '2022-03-16 14:15:44'),
(17, 8, 3, 'public/quotationproposal/IE5WlVhC8i9gxkfEkMIbjRzyn0weL7ypLJpSd5du.pdf', 'Building Quotation.pdf', NULL, '2022-03-16', '21:32:35', '2022-03-16 14:32:35', '2022-03-16 14:32:35'),
(18, 8, 3, 'public/quotationproposal/zodYwARSjnGhGzshLAoTXkSpPjzbSzGInBYvOgba.pdf', 'Extra Land Area Concrete Work.pdf', NULL, '2022-03-16', '21:32:43', '2022-03-16 14:32:43', '2022-03-16 14:32:43'),
(19, 8, 3, 'public/quotationproposal/x0AvVU75iVw1mzJGUYKtziWBNACywPen3qAOtySI.pdf', 'KSH\'s Modified.pdf', NULL, '2022-03-16', '21:33:37', '2022-03-16 14:33:37', '2022-03-16 14:33:37'),
(20, 7, 3, 'public/quotationproposal/eXA1xz3w1DwHpwU1XIfOJn8fG6CAvUiYitMF34kv.pdf', 'Quotation Proposal - Final Approval revised.pdf', NULL, '2022-03-16', '21:42:03', '2022-03-16 14:42:03', '2022-03-16 14:42:03'),
(21, 6, 3, 'public/quotationproposal/ZqQiULm9DunmMFM45ISkMWWV05NdlJOTp5rNiF4i.pdf', 'Quotation Proposal-Ma Waddy(21.12.21)_Roofing_1640067336.pdf', NULL, '2022-03-16', '22:36:52', '2022-03-16 15:36:52', '2022-03-16 15:36:52'),
(22, 5, 3, 'public/quotationproposal/NzaMIE1MLmgOaJuROgTRyfPLdiSIKnf8FBDVPdTg.pdf', 'MSSDA Quotation.pdf', NULL, '2022-03-16', '22:50:45', '2022-03-16 15:50:45', '2022-03-16 15:50:45'),
(23, 30, 3, 'public/quotationproposal/Sy1dBCXyQDgcliBRZmJQ4CsPd7vDaX9KJydxk9jR.pdf', 'Quotation Proposal - Ma Nan Sandi (South Oakala) Fencing & Infrastructure Work.pdf', NULL, '2022-03-16', '23:59:15', '2022-03-16 16:59:15', '2022-03-16 16:59:15'),
(24, 32, 3, 'public/quotationproposal/eHnPjJ3RrUFSfUcCSyggdxfn2NszuzfY0D2pqSiP.pdf', 'Quotation Proposal For U Kyaw Zayar Tun -R3.pdf', NULL, '2022-03-17', '00:31:02', '2022-03-16 17:31:02', '2022-03-16 17:31:02'),
(25, 2, 2, 'public/quotationproposal/BI7vDvVDjJZfHPMA3Bm6K1xDTTyhb4cz2aSsG2cB.jpg', 'floor_plan_3.jpeg', NULL, '2022-03-17', '14:29:37', '2022-03-17 07:59:37', '2022-03-17 07:59:37');

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
(5, 'Marketing', 'web', '2022-03-07 17:33:53', '2022-03-07 17:33:53'),
(6, 'Archi Designer', 'web', '2022-03-07 17:35:47', '2022-03-07 17:35:47'),
(7, 'Management/Director', 'web', '2022-03-07 17:37:37', '2022-03-07 17:37:37'),
(0, 'Engineer', 'web', '2022-03-19 18:46:23', '2022-03-19 18:46:23');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(5, 5),
(6, 5),
(7, 5),
(8, 5),
(9, 5),
(10, 5),
(11, 5),
(12, 5),
(17, 5),
(19, 5),
(21, 5),
(22, 5),
(23, 5),
(24, 5),
(25, 5),
(5, 6),
(6, 6),
(7, 6),
(8, 6),
(9, 6),
(10, 6),
(11, 6),
(19, 6),
(22, 6),
(23, 6),
(24, 6),
(25, 6),
(5, 7),
(6, 7),
(7, 7),
(8, 7),
(9, 7),
(10, 7),
(11, 7),
(12, 7),
(13, 7),
(14, 7),
(15, 7),
(16, 7),
(17, 7),
(18, 7),
(19, 7),
(20, 7),
(21, 7),
(22, 7),
(23, 7),
(24, 7),
(25, 7),
(26, 7),
(27, 7),
(28, 7),
(14, 0);

-- --------------------------------------------------------

--
-- Table structure for table `structure_designs`
--

CREATE TABLE `structure_designs` (
  `id` int(11) NOT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `structure_design_fees`
--

CREATE TABLE `structure_design_fees` (
  `id` int(11) NOT NULL,
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
(1, 24, 3, 'public/quotationproposal/e6mJHwN2kebQ8LiTfejKQ3ZkfhakBc7yy39JnXrB.pdf', 'Ko Banyar Structure Fees.pdf', NULL, '2022-03-16', '18:00:37', '2022-03-16 11:00:37', '2022-03-16 11:00:37'),
(2, 2, 2, 'public/quotationproposal/z05U2wTwdz3add5q1g2vFyFgavH82n0TcqwrhCyr.jpg', 'floor_plan_1.jpeg', NULL, '2022-03-17', '14:29:56', '2022-03-17 07:59:56', '2022-03-17 07:59:56');

-- --------------------------------------------------------

--
-- Table structure for table `unitos_of_measures`
--

CREATE TABLE `unitos_of_measures` (
  `id` int(11) NOT NULL,
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
(3, 'Sht', '2022-02-15 04:07:45', '2022-02-15 04:07:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nrc_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `employee_id`, `phone`, `nrc_number`, `gender`, `address`, `department_id`) VALUES
(1, 'Admin', 'admin@skg.com', NULL, '$2y$10$iY.PTOOlASzaLY549BHGH.aQorS3bbzjX7P9wcQ2QbJH/sGWI0aXa', NULL, '2022-02-14 04:00:05', '2022-03-17 04:09:21', 'EMP-00001', '09455165415', '-', 'male', 'YGN', 1),
(2, 'AUNG MYO HTUT', 'aungmyohtut.skgroup@gmail.com', NULL, '$2y$10$MEYSyQ6Ko6CQCAx7XgKkA.Xc8YkRTyIlJK4IK.EwgHdMgL0JCEhhq', 'bMSaDFXrYTiJBxmm1hBu4mJRiRjJcQ9ApxjluylLI2tA4M3J21uf42zKUgJ1', '2022-02-14 04:00:32', '2022-03-17 04:06:28', 'EMP - 00002', '09772746336', '5/aab(n)009887', 'male', 'YGN', 1),
(3, 'Ma Pearl Yadanar Soe', 'pearl.skgroup@gmail.com', NULL, '$2y$10$0pXU2VmMO93OUqXn5xESr.sR9pKbZZ4SG.rlZ2VLSJ6LEddgVxeVy', 'w0qC5zZnJI4ZlSTqv1CBlLGe0LtbNpIwnVGtMcN4aS0ZoA1dBl9ky6xG8uQL', '2022-03-07 17:39:27', '2022-03-15 08:37:35', 'EMP-00003', '09751446005', '12/KaThaNa (N)050585', 'female', 'YGN', 4),
(4, 'Archi Myo Thet', 'myothet.skgroup@gmail.com', NULL, '$2y$10$2c4SBc0VKRUwuwESkP.hlugtkpMOZ85am9YuO75zZDJYN3fiF9J1G', 'YwEkUw3QZI6scWBld8C7nRiNYfSV8ziKXj78C0EAlhnarfq8uqasHn8QbVyN', '2022-03-07 18:22:19', '2022-03-17 04:28:37', 'EMP-00004', '09751446090', '12/Thakata(N)180068', 'male', 'YGN', 6),
(5, 'Ma Hpoo Ngone Kyaw', 'hpoongone.skgroup@gmail.com', NULL, '$2y$10$wbCsGmqe7rSeDa.GmCsYQeqgknZdelTsPQIQ/ytaKbBgV8tD5baEO', NULL, '2022-03-11 09:14:52', '2022-03-11 09:14:52', 'EMP - 00005', '09751446006', '12/TaMaNa(N)119539', 'female', 'No 127/5, PaDaMyar Street, Thinkangyun Tsp.', 4),
(6, 'Ma Nandar Hlaing', 'nandar.skgroup@gmail.com', NULL, '$2y$10$3fyamQpVSU/glzf9si7DJuZwHP4Ii7lVyRBRrqykV2TLwho1HxRLC', 'p0tUdZfhtyuiclgbYWwAsRrWiFDvlcbXMLmA5dcJj0d8rukE0KoYLvOZvBgB', '2022-03-15 09:03:34', '2022-03-17 03:51:49', 'EMP - 00006', '09751445235', '12/Thagaka(N)179672', 'female', 'No. 74, Min Nanda Road, Dawpone', 7),
(7, 'Ko Nyan Lin Htet', 'nyanlinnhtet.skgroup@gmail.com', NULL, '$2y$10$JogAQY0yFfB3XA.5xUkhHOdzgjhIkvpCcgnjbRnOGR33vwCrArCUq', NULL, '2022-03-15 09:05:41', '2022-03-15 09:05:41', 'EMP - 00007', '09795154291', '12/ThaKaTa(N)162871', 'male', 'YGN', 8),
(8, 'marketing', 'marketing@gmail.com', NULL, '$2y$10$oCUHBB./6fbUQkiAoKkJ6OPq0yW9sYBFEsoNYXjrdyrFVq/Q1LqmO', NULL, '2022-03-15 09:06:40', '2022-03-15 09:06:40', 'EMP - 00008', '09123123123', '5/abc(n)009998', 'male', 'YGN', 4),
(9, 'Ma Ei Chan Myae Khin', 'eichan.skgroup@gmail.com', NULL, '$2y$10$1z/r7CaxdUEup10459nareiiLFv8PwN549AACQEc79EJ2lZEn7Ehq', 'fLfACBkB72K5vlRz2EdDrIFXAxLZ7R0BX8WiEsnr3Ey4Ac5Wg9djw7gCBFkZ', '2022-03-15 09:07:37', '2022-03-15 09:07:37', 'EMP - 00009', '09977820259', '12/KaTaTa(N)032895', 'male', 'YGN', 4),
(10, 'Ma Moh Moh', 'mohmoh.skgroup@gmail.com', NULL, '$2y$10$BtSiWTSfsBAGtFZxj3qUd.oJc.3E0VMEF/aOfJk45/7wwZANHlCJS', 'yqsMQ92HwGrstjsadiNB9r2hrGnNELicrcg4FlGKtCaI9Vd4U1hIr8dmCuq3', '2022-03-15 09:14:23', '2022-03-17 04:42:04', 'EMP - 00010', '09798868709', '14/PaThaNa(N)201615', 'female', 'No.21/33, Zaw Gyi Street, 9 Quarter, Lanmadaw Tsp, Yangon', 8),
(11, 'Ma Pan Chue Chue', 'chuechue.skgroup@gmail.com', NULL, '$2y$10$/fXRS50gtqgyKrc.p6e7qOOT38TdElzv4iNatPGEbg0oTi6U4b5Hu', NULL, '2022-03-15 10:38:45', '2022-03-15 10:38:45', 'EMP - 00011', '09751445863', '9/TaTHaNa(N)156794', 'female', 'No.345, Kantaw Street, Thingangyun Township', 8),
(12, 'Ma Zar Kyi Moe Naing', 'zarkyi.skgroup@gmail.com', NULL, '$2y$10$laYvqCLwBhR/XUiAFE0jaeqVUlWtvQUf50ezWA4KzYaCfEjMiAe82', 'tgB42N4dkpgdnSjgEMzYOYPM3E5EHdMAT9xXkRdCAch5rdF4aoMwWuOhwXTw', '2022-03-17 04:03:41', '2022-03-17 04:03:41', 'EMP - 00012', '09772177564', '12/DaGaMa(N)035420', 'female', 'No.(331), Bayintnaung Rd, 31 Quarter, North Dagon Tsp', 6),
(13, 'Ko Ye Htet Min', 'yehtetmin.skgroup@gmail.com', NULL, '$2y$10$PcOWn8fvMti0qkiOp/BET.jalwumj4WEfuvigo1bn0w9W4iZTHR4u', NULL, '2022-03-17 04:05:16', '2022-03-17 04:26:45', 'EMP - 00013', '0943096345', '12/BaThaHta(N)040271', 'male', 'No.(202), MaharNawarat Condo (A), 50th Street, Botahtaung Tsp.', 6),
(14, 'Ko Chan Myae Zaw', 'chanmyae.skgroup@gmail.com', NULL, '$2y$10$8AyZUb63vY5l4KAS90aOJ.vyLjxJeDFK5IB2.PCZy60AAXgpxh5xK', 'MJmtK1OCtYJAOaBkXoax3ZnZmPpwDX9tu24r94uIBpL2Nuv0Ux5wPPnrY8mL', '2022-03-17 04:08:50', '2022-03-17 05:28:29', 'EMP - 00014', '09751445993', '7/WaMaNa(N)171834', 'male', 'No.(10), Alone Street, Alone Township, Yangon', 2),
(15, 'Ko Thein Zaw Win', 'theinzawwin.skgroup@gmail.com', NULL, '$2y$10$E9UNOfdt.kIOFHTy5TTIWet1npM6MZ8ZtbcBaKFCu5AuCyJW4yDkm', NULL, '2022-03-17 04:11:30', '2022-03-17 04:11:30', 'EMP - 00015', '09964105346', '12/PaBaTa(N)034640', 'male', 'No. (9), 6B, 166 Street, Tamwe Township.', 2),
(16, 'Ma Thu Zar Hein', 'mazar.skgroup@gmail.com', NULL, '$2y$10$KbpXC0..XWyU3fPmMVabnebR1NX8SPkMCBBHJ3yJO9fjKXTsWRKbq', '03sTzJsT0CqdHV603Y2OQ2IgRzpGwyo0HANPBBLivvR85DxfsmIrVQRawhFv', '2022-03-17 04:24:34', '2022-03-17 06:02:05', 'EMP - 00016', '09740875438', '9/KaPaTa(N)195155', 'female', 'No(205(3B),Aung Thiri street, Myot Thit Quarter, Dawbon Tsp', 8),
(17, 'Ma Kay Thi Hlaing', 'kaymama.skgroup@gmail.com', NULL, '$2y$10$y4Iu4PTyPTB2pv3jLgcEuum.BLKeGSKgiodG5SoRtnPt0Zqfa9r8W', NULL, '2022-03-17 04:26:53', '2022-03-17 04:26:53', 'EMP - 00017', '09751446027', '12/LaMaTa(N)000705', 'female', 'No.52, 89 street, Mingalar Taung Nyut Tsp', 8),
(18, 'Ma Hsu Myat Win', 'hsumyat.skgroup@gmail.com', NULL, '$2y$10$oPB3qKCyQnzBIerf/mBBRuP3z81CGXDY4nIE1pQ.gpNyctD3nx4Yy', NULL, '2022-03-17 04:28:05', '2022-03-17 04:28:05', 'EMP - 00018', '09751445220', '7/PhaMaNa (N)220433', 'female', 'No.(205/3B), Aung Thiri Street, Myo Thit Quarter, Dawpon Tsp', 8),
(19, 'AUNG HTET PAING', 'aunghtetpaing.skgroup@gmail.com', NULL, '$2y$10$gQfTPFveu0nOs7Wob8Hb3.UYTTpz3o3gJnEQlt7sAZVCYjOb6MC9S', NULL, '2022-03-17 04:38:03', '2022-03-17 04:38:03', 'EMP - 00019', '09751445870', '12/Lathana(N)021656', 'male', 'No. 74, Min Nanda Road, Dawpone Tsp, Yangon', 1),
(20, 'eng1', 'eng1@gmail.com', NULL, '$2y$10$XnIu2JETNPds2jvpQghVIOjvPiZ7m8m4zCKkRBx7vbFHZyJ39w9LS', NULL, '2022-03-17 09:29:32', '2022-03-17 09:29:32', 'EMP-00020', '0912312312', '5/abc(n)009223', 'male', 'YGN', 9),
(21, 'eng2', 'eng2@gmail.com', NULL, '$2y$10$hOhQtry/aVKTro5J4oFdsusSNs5msEALux4JQcl6mT7q5DC9b3n9u', NULL, '2022-03-17 09:30:20', '2022-03-17 09:30:20', 'EMP-00021', '09123121231', 'nrc(n)093442', 'male', 'ygn', 9),
(22, 'eng3', 'eng3@gmail.com', NULL, '$2y$10$LVNaZXT8xmM9jlIKzW4sbOq1w1yN5p/Lij9etvbDVohrMP436nTAC', NULL, '2022-03-17 11:43:03', '2022-03-17 11:43:03', 'EMP-000010', '0955516154', '5/abc(n)009234', 'male', 'ygn', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_classifications`
--
ALTER TABLE `account_classifications`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `fixed_assets`
--
ALTER TABLE `fixed_assets`
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
-- Indexes for table `main_warehouses`
--
ALTER TABLE `main_warehouses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permits`
--
ALTER TABLE `permits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `processing_files`
--
ALTER TABLE `processing_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects_users`
--
ALTER TABLE `projects_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotationproposals`
--
ALTER TABLE `quotationproposals`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_classifications`
--
ALTER TABLE `account_classifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `approved_bies`
--
ALTER TABLE `approved_bies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `archi_exterior_designs`
--
ALTER TABLE `archi_exterior_designs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `chartof_accounts`
--
ALTER TABLE `chartof_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `exterior_design_fees`
--
ALTER TABLE `exterior_design_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fixed_assets`
--
ALTER TABLE `fixed_assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `floor_plans`
--
ALTER TABLE `floor_plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `labours`
--
ALTER TABLE `labours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `main_warehouses`
--
ALTER TABLE `main_warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `permits`
--
ALTER TABLE `permits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `processing_files`
--
ALTER TABLE `processing_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `projects_users`
--
ALTER TABLE `projects_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `quotationproposals`
--
ALTER TABLE `quotationproposals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `structure_designs`
--
ALTER TABLE `structure_designs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `structure_design_fees`
--
ALTER TABLE `structure_design_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
