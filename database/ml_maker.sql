-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2026 at 08:34 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ml_maker`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(100) NOT NULL,
  `entity_type` varchar(50) DEFAULT NULL,
  `entity_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `status` enum('success','failure','warning') DEFAULT 'success',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `action`, `entity_type`, `entity_id`, `description`, `ip_address`, `status`, `created_at`) VALUES
(1, NULL, 'LOGIN_FAILED', 'user', NULL, 'Failed login for: abubakarrafi4@gmail.com', NULL, 'failure', '2026-05-01 06:05:22'),
(2, NULL, 'LOGIN_FAILED', 'user', NULL, 'Failed login for: abubakarrafi4@gmail.com', NULL, 'failure', '2026-05-01 06:05:30'),
(3, NULL, 'LOGIN_FAILED', 'user', NULL, 'Failed login for: abubakarrafi4@gmail.com', NULL, 'failure', '2026-05-01 06:06:11'),
(4, NULL, 'LOGIN_FAILED', 'user', NULL, 'Failed login for: abubakarrafi4@gmail.com', NULL, 'failure', '2026-05-01 06:08:06'),
(5, NULL, 'LOGIN_FAILED', 'user', NULL, 'Failed login for: abubakarrafi4@gmail.com', NULL, 'failure', '2026-05-01 06:08:08'),
(6, NULL, 'LOGIN_FAILED', 'user', NULL, 'Failed login for: abubakarrafi4@gmail.com', NULL, 'failure', '2026-05-01 06:08:09'),
(7, NULL, 'LOGIN_FAILED', 'user', NULL, 'Failed login for: abubakarrafi4@gmail.com', NULL, 'failure', '2026-05-01 06:08:09'),
(8, NULL, 'LOGIN_FAILED', 'user', NULL, 'Failed login for: abubakarrafi4@gmail.com', NULL, 'failure', '2026-05-01 06:08:13'),
(9, NULL, 'LOGIN_FAILED', 'user', NULL, 'Failed login for: abubakarrafi4@gmail.com', NULL, 'failure', '2026-05-01 06:26:19'),
(10, NULL, 'LOGIN_FAILED', 'user', NULL, 'Failed login for: abubakarrafi4@gmail.com', NULL, 'failure', '2026-05-01 06:26:29'),
(11, NULL, 'LOGIN_FAILED', 'user', NULL, 'Failed login for: abubakarrafi4@gmail.com', NULL, 'failure', '2026-05-01 06:26:31'),
(12, NULL, 'LOGIN_FAILED', 'user', NULL, 'Failed login for: abubakarrafi4@gmail.com', NULL, 'failure', '2026-05-01 06:35:31'),
(13, NULL, 'LOGIN_FAILED', 'user', NULL, 'Failed login for: abubakarrafi4@gmail.com', NULL, 'failure', '2026-05-01 06:35:36'),
(14, NULL, 'LOGIN_FAILED', 'user', NULL, 'Failed login for: abubakarrafi4@gmail.com', NULL, 'failure', '2026-05-01 06:35:37'),
(15, NULL, 'LOGIN_FAILED', 'user', NULL, 'Failed login for: abubakarrafi4@gmail.com', NULL, 'failure', '2026-05-01 06:53:31'),
(16, NULL, 'LOGIN_FAILED', 'user', NULL, 'Failed login for: abubakarrafi4@gmail.com', NULL, 'failure', '2026-05-01 09:12:50'),
(17, 1, 'USER_REGISTER', 'user', 1, 'New user registered: rafi', NULL, 'success', '2026-05-01 10:10:57'),
(18, NULL, 'LOGIN_FAILED', 'user', NULL, 'Failed login for: abubakarrafi4@gmail.com', NULL, 'failure', '2026-05-01 10:11:12'),
(19, 2, 'USER_REGISTER', 'user', 2, 'New user registered: raha', NULL, 'success', '2026-05-01 10:12:00'),
(20, NULL, 'LOGIN_FAILED', 'user', NULL, 'Failed login for: raha@gmail.com', NULL, 'failure', '2026-05-01 10:12:27'),
(21, NULL, 'LOGIN_FAILED', 'user', NULL, 'Failed login for: raha@gmail.com', NULL, 'failure', '2026-05-01 10:12:32'),
(22, 2, 'USER_LOGIN', 'user', 2, 'User logged in: raha', NULL, 'success', '2026-05-01 10:13:45'),
(23, 2, 'FILE_ANALYZED', 'upload', 1, 'File analyzed: dim.csv', NULL, 'success', '2026-05-01 10:14:06'),
(24, 2, 'USER_LOGIN', 'user', 2, 'User logged in: raha', NULL, 'success', '2026-05-01 10:14:58'),
(25, 2, 'USER_LOGIN', 'user', 2, 'User logged in: raha', NULL, 'success', '2026-05-01 11:00:03'),
(26, 2, 'FILE_ANALYZED', 'upload', 5, 'File analyzed: weather_data.csv', NULL, 'success', '2026-05-01 11:09:42'),
(27, 2, 'FILE_ANALYZED', 'upload', 6, 'File analyzed: Yield_df.csv', NULL, 'success', '2026-05-01 11:10:18'),
(28, 2, 'USER_LOGIN', 'user', 2, 'User logged in: raha', NULL, 'success', '2026-05-01 11:10:57'),
(29, 2, 'FILE_ANALYZED', 'upload', 7, 'File analyzed: car1.csv', NULL, 'success', '2026-05-01 11:11:22'),
(30, 2, 'FILE_ANALYZED', 'upload', 8, 'File analyzed: Yield_df.csv', NULL, 'success', '2026-05-01 11:12:25'),
(31, 2, 'FILE_ANALYZED', 'upload', 9, 'File analyzed: weather_data.csv', NULL, 'success', '2026-05-01 11:19:24'),
(32, 2, 'USER_LOGIN', 'user', 2, 'User logged in: raha', NULL, 'success', '2026-05-01 11:22:40'),
(33, 2, 'FILE_ANALYZED', 'upload', 10, 'File analyzed: Yield_df.csv', NULL, 'success', '2026-05-01 11:22:57'),
(34, 3, 'USER_REGISTER', 'user', 3, 'New user registered: ripa', NULL, 'success', '2026-05-01 11:25:48'),
(35, 3, 'USER_LOGIN', 'user', 3, 'User logged in: ripa', NULL, 'success', '2026-05-01 11:26:04'),
(36, 3, 'FILE_ANALYZED', 'upload', 11, 'File analyzed: pokemon.csv', NULL, 'success', '2026-05-01 11:26:49'),
(37, 3, 'USER_LOGIN', 'user', 3, 'User logged in: ripa', NULL, 'success', '2026-05-01 11:28:03'),
(38, 3, 'FILE_ANALYZED', 'upload', 12, 'File analyzed: car.csv', NULL, 'success', '2026-05-01 11:28:23'),
(39, 2, 'USER_LOGIN', 'user', 2, 'User logged in: raha', NULL, 'success', '2026-05-01 11:32:03'),
(40, 2, 'FILE_ANALYZED', 'upload', 13, 'File analyzed: weather_data.csv', NULL, 'success', '2026-05-01 11:32:43'),
(41, 2, 'ANALYSIS_FAILED', 'upload', 14, '\'MLAlgorithm\' object has no attribute \'table\'', NULL, 'failure', '2026-05-01 11:49:04'),
(42, 2, 'ANALYSIS_FAILED', 'upload', 15, '\'MLAlgorithm\' object has no attribute \'_table_\'', NULL, 'failure', '2026-05-01 11:55:49'),
(43, 2, 'ANALYSIS_FAILED', 'upload', 16, '\'MLAlgorithm\' object has no attribute \'_table_\'', NULL, 'failure', '2026-05-01 12:14:05'),
(44, 2, 'ANALYSIS_FAILED', 'upload', 17, '\'MLAlgorithm\' object has no attribute \'_table_\'', NULL, 'failure', '2026-05-01 12:15:27'),
(45, 2, 'ANALYSIS_FAILED', 'upload', 18, '\'MLAlgorithm\' object has no attribute \'_table_\'', NULL, 'failure', '2026-05-01 12:22:07'),
(46, 2, 'FILE_ANALYZED', 'upload', 19, 'File analyzed: weather_data.csv', NULL, 'success', '2026-05-01 12:23:44'),
(47, 2, 'USER_LOGIN', 'user', 2, 'User logged in: raha', NULL, 'success', '2026-05-01 16:06:06'),
(48, 2, 'FILE_ANALYZED', 'upload', 20, 'File analyzed: students_records.csv', NULL, 'success', '2026-05-01 16:06:27'),
(49, 2, 'FILE_ANALYZED', 'upload', 21, 'File analyzed: movies.csv', NULL, 'success', '2026-05-01 16:23:26'),
(50, 2, 'USER_LOGIN', 'user', 2, 'User logged in: raha', NULL, 'success', '2026-05-01 16:25:15'),
(51, 2, 'FILE_ANALYZED', 'upload', 22, 'File analyzed: bike.csv', NULL, 'success', '2026-05-01 16:25:33'),
(52, 2, 'FILE_ANALYZED', 'upload', 23, 'File analyzed: weather_data.csv', NULL, 'success', '2026-05-01 16:35:17'),
(53, 2, 'USER_LOGIN', 'user', 2, 'User logged in: raha', NULL, 'success', '2026-05-03 15:35:31'),
(54, 2, 'FILE_ANALYZED', 'upload', 24, 'File analyzed: Real_Combine.csv', NULL, 'success', '2026-05-03 15:36:05'),
(55, 2, 'FILE_ANALYZED', 'upload', 25, 'File analyzed: Heart1.csv', NULL, 'success', '2026-05-03 18:41:47'),
(56, 2, 'USER_LOGIN', 'user', 2, 'User logged in: raha', NULL, 'success', '2026-05-04 05:50:32'),
(57, 2, 'FILE_ANALYZED', 'upload', 26, 'File analyzed: bal2.csv', NULL, 'success', '2026-05-04 05:50:53'),
(58, 2, 'USER_LOGIN', 'user', 2, 'User logged in: raha', NULL, 'success', '2026-05-05 18:25:29'),
(59, 2, 'FILE_ANALYZED', 'upload', 27, 'File analyzed: Real_Combine.csv', NULL, 'success', '2026-05-05 19:37:47'),
(60, 2, 'USER_LOGIN', 'user', 2, 'User logged in: raha', NULL, 'success', '2026-05-05 19:55:25'),
(61, 2, 'FILE_ANALYZED', 'upload', 28, 'File analyzed: Real_Combine.csv', NULL, 'success', '2026-05-05 20:01:03'),
(62, 2, 'FILE_ANALYZED', 'upload', 29, 'File analyzed: heart.csv', NULL, 'success', '2026-05-05 20:07:45'),
(63, 2, 'FILE_ANALYZED', 'upload', 30, 'File analyzed: bal2.csv', NULL, 'success', '2026-05-05 20:14:04'),
(64, 2, 'FILE_ANALYZED', 'upload', 31, 'File analyzed: BikeStore.csv', NULL, 'success', '2026-05-05 20:14:23'),
(65, 2, 'ANALYSIS_FAILED', 'upload', 32, 'Failed to load file: Excel file format cannot be determined, you must specify an engine manually.', NULL, 'failure', '2026-05-05 20:22:28'),
(66, 2, 'FILE_ANALYZED', 'upload', 33, 'File analyzed: Real_Combine.csv', NULL, 'success', '2026-05-05 20:22:42'),
(67, 2, 'USER_LOGIN', 'user', 2, 'User logged in: raha', NULL, 'success', '2026-05-05 20:26:50'),
(68, 2, 'FILE_ANALYZED', 'upload', 34, 'File analyzed: income.csv', NULL, 'success', '2026-05-05 20:27:28'),
(69, 2, 'USER_LOGIN', 'user', 2, 'User logged in: raha', NULL, 'success', '2026-05-06 01:33:49'),
(70, 2, 'USER_LOGIN', 'user', 2, 'User logged in: raha', NULL, 'success', '2026-05-06 04:45:51'),
(71, 2, 'FILE_ANALYZED', 'upload', 35, 'File analyzed: brands.csv', NULL, 'success', '2026-05-06 04:46:08'),
(72, 2, 'USER_LOGIN', 'user', 2, 'User logged in: raha', NULL, 'success', '2026-05-06 05:03:22'),
(73, 2, 'FILE_ANALYZED', 'upload', 36, 'File analyzed: train_u6lujuX_CVtuZ9i.csv', NULL, 'success', '2026-05-06 05:04:05'),
(74, 2, 'USER_LOGIN', 'user', 2, 'User logged in: raha', NULL, 'success', '2026-05-06 05:05:18'),
(75, 2, 'FILE_ANALYZED', 'upload', 37, 'File analyzed: Real_Combine.csv', NULL, 'success', '2026-05-06 05:05:30'),
(76, 2, 'FILE_ANALYZED', 'upload', 38, 'File analyzed: bal2.csv', NULL, 'success', '2026-05-06 07:01:20'),
(77, 2, 'USER_LOGIN', 'user', 2, 'User logged in: raha', NULL, 'success', '2026-05-06 17:27:01'),
(78, 2, 'FILE_ANALYZED', 'upload', 39, 'File analyzed: weather_data.csv', NULL, 'success', '2026-05-06 17:28:47'),
(79, 2, 'USER_LOGIN', 'user', 2, 'User logged in: raha', NULL, 'success', '2026-07-24 13:58:01'),
(80, 2, 'FILE_ANALYZED', 'upload', 40, 'File analyzed: gt.csv', NULL, 'success', '2026-07-24 13:58:54'),
(81, NULL, 'LOGIN_FAILED', 'user', NULL, 'Failed login for: tareq', NULL, 'failure', '2026-07-25 05:35:23'),
(82, 2, 'USER_LOGIN', 'user', 2, 'User logged in: raha', NULL, 'success', '2026-07-25 06:55:09'),
(83, NULL, 'LOGIN_FAILED', 'user', NULL, 'Failed login for: hasan', NULL, 'failure', '2026-07-25 07:23:13'),
(84, NULL, 'LOGIN_FAILED', 'user', NULL, 'Failed login for: saikat', NULL, 'failure', '2026-07-25 07:25:29'),
(85, 4, 'USER_REGISTER', 'user', 4, 'New user registered: amin', NULL, 'success', '2026-07-25 07:26:16'),
(86, 4, 'USER_LOGIN', 'user', 4, 'User logged in: amin', NULL, 'success', '2026-07-25 07:26:27'),
(87, 5, 'USER_REGISTER', 'user', 5, 'New user registered: emon', NULL, 'success', '2026-07-25 07:31:00'),
(88, 5, 'USER_LOGIN', 'user', 5, 'User logged in: emon', NULL, 'success', '2026-07-25 07:31:39'),
(89, 5, 'FILE_ANALYZED', 'upload', 41, 'File analyzed: gt.csv', NULL, 'success', '2026-07-25 07:32:31'),
(90, 6, 'USER_REGISTER', 'user', 6, 'New user registered: rifat', NULL, 'success', '2026-07-25 16:26:29'),
(91, 6, 'USER_LOGIN', 'user', 6, 'User logged in: rifat', NULL, 'success', '2026-07-25 16:26:48'),
(92, 6, 'FILE_ANALYZED', 'upload', 42, 'File analyzed: gt.csv', NULL, 'success', '2026-07-25 16:37:33'),
(93, 6, 'FILE_ANALYZED', 'upload', 43, 'File analyzed: annual-enterprise-survey-2025-financial-year-provisional-size-bands.csv', NULL, 'success', '2026-07-25 16:40:54'),
(94, 6, 'FILE_ANALYZED', 'upload', 44, 'File analyzed: business-financial-data-march-2026-quarter.csv', NULL, 'success', '2026-07-25 16:52:16'),
(95, 6, 'FILE_ANALYZED', 'upload', 45, 'File analyzed: machine-readable-business-employment-data-mar-2026-quarter.csv', NULL, 'success', '2026-07-25 16:52:41'),
(96, NULL, 'LOGIN_FAILED', 'user', NULL, 'Failed login for: raha', NULL, 'failure', '2026-07-26 04:55:04'),
(97, 6, 'USER_LOGIN', 'user', 6, 'User logged in: rifat', NULL, 'success', '2026-07-26 04:55:28'),
(98, NULL, 'LOGIN_FAILED', 'user', NULL, 'Failed login for: raha', NULL, 'failure', '2026-07-26 05:27:47'),
(99, 6, 'USER_LOGIN', 'user', 6, 'User logged in: rifat', NULL, 'success', '2026-07-26 05:28:04'),
(100, 6, 'USER_LOGIN', 'user', 6, 'User logged in: rifat', NULL, 'success', '2026-07-26 06:13:12'),
(101, 6, 'FILE_ANALYZED', 'upload', 46, 'File analyzed: annual-enterprise-survey-2025-financial-year-provisional-size-bands.csv', NULL, 'success', '2026-07-26 06:13:29'),
(102, 6, 'USER_LOGIN', 'user', 6, 'User logged in: rifat', NULL, 'success', '2026-07-26 06:22:54'),
(103, 6, 'USER_LOGIN', 'user', 6, 'User logged in: rifat', NULL, 'success', '2026-07-26 15:31:26'),
(104, 7, 'USER_REGISTER', 'user', 7, 'New user registered: ahsan', NULL, 'success', '2026-07-26 15:32:43'),
(105, 7, 'USER_LOGIN', 'user', 7, 'User logged in: ahsan', NULL, 'success', '2026-07-26 15:33:16'),
(106, 6, 'USER_LOGIN', 'user', 6, 'User logged in: rifat', NULL, 'success', '2026-07-26 15:34:26'),
(107, 6, 'FILE_ANALYZED', 'upload', 47, 'File analyzed: machine-readable-business-employment-data-mar-2026-quarter.csv', NULL, 'success', '2026-07-26 15:35:03'),
(108, NULL, 'LOGIN_FAILED', 'user', NULL, 'Failed login for: raha', NULL, 'failure', '2026-08-02 16:45:42'),
(109, 6, 'USER_LOGIN', 'user', 6, 'User logged in: rifat', NULL, 'success', '2026-08-02 16:46:01'),
(110, NULL, 'LOGIN_FAILED', 'user', NULL, 'Failed login for: rifat@gmail.com', NULL, 'failure', '2026-08-02 16:54:40'),
(111, 6, 'USER_LOGIN', 'user', 6, 'User logged in: rifat', NULL, 'success', '2026-08-02 16:54:47'),
(112, 6, 'FILE_ANALYZED', 'upload', 49, 'File analyzed: machine-readable-business-employment-data-mar-2026-quarter.csv', NULL, 'success', '2026-08-02 17:02:40');

-- --------------------------------------------------------

--
-- Table structure for table `algorithm_categories`
--

CREATE TABLE `algorithm_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `use_case` text DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `algorithm_categories`
--

INSERT INTO `algorithm_categories` (`id`, `name`, `description`, `use_case`, `icon`, `created_at`) VALUES
(1, 'Classification', 'Classification algorithms', NULL, NULL, '2026-05-01 11:39:58'),
(2, 'Regression', 'Regression algorithms', NULL, NULL, '2026-05-01 11:39:58'),
(3, 'Clustering', 'Clustering algorithms', NULL, NULL, '2026-05-01 11:39:58');

-- --------------------------------------------------------

--
-- Table structure for table `analysis_reports`
--

CREATE TABLE `analysis_reports` (
  `id` int(11) NOT NULL,
  `upload_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `report_title` varchar(255) NOT NULL,
  `report_summary` text DEFAULT NULL,
  `data_quality_score` decimal(5,2) DEFAULT NULL,
  `recommended_preprocessing` text DEFAULT NULL,
  `feature_engineering_tips` text DEFAULT NULL,
  `report_html` text DEFAULT NULL,
  `report_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`report_json`)),
  `is_public` tinyint(1) DEFAULT 0,
  `view_count` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `analysis_reports`
--

INSERT INTO `analysis_reports` (`id`, `upload_id`, `user_id`, `report_title`, `report_summary`, `data_quality_score`, `recommended_preprocessing`, `feature_engineering_tips`, `report_html`, `report_json`, `is_public`, `view_count`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Analysis Report - dim.csv', 'ডেটাসেটটিতে 1,458 rows এবং 1 columns আছে। সমস্যার ধরন: Clustering। সেরা অ্যালগরিদম: N/A। ডেটা মান স্কোর: 100.0/100।', 100.00, '• ডেটাসেটটি ভালো অবস্থায় আছে। সরাসরি মডেল ট্রেন করা যাবে।', '• Correlated features remove করুন।\n• Feature scaling প্রয়োগ করুন।\n• Outlier detection করুন।', NULL, '{\"profile\": {\"total_rows\": 1458, \"total_columns\": 1, \"numeric_columns\": 0, \"categorical_columns\": 0, \"datetime_columns\": 0, \"text_columns\": 1, \"missing_value_percentage\": 0.0, \"duplicate_row_percentage\": 0.0, \"target_column\": null, \"problem_type\": \"clustering\", \"is_imbalanced\": false, \"class_count\": null, \"memory_usage_mb\": 0.09}, \"recommendations\": []}', 0, 0, '2026-05-01 10:14:06', '2026-05-01 10:14:06'),
(2, 5, 2, 'Analysis Report - weather_data.csv', 'ডেটাসেটটিতে 10 rows এবং 4 columns আছে। সমস্যার ধরন: Classification। সেরা অ্যালগরিদম: N/A। ডেটা মান স্কোর: 80.0/100।', 80.00, '• Encoding: Categorical কলামগুলো Label Encoding বা One-Hot Encoding করুন।', '• Correlated features remove করুন।\n• Feature scaling প্রয়োগ করুন।\n• Outlier detection করুন।', NULL, '{\"profile\": {\"total_rows\": 10, \"total_columns\": 4, \"numeric_columns\": 0, \"categorical_columns\": 4, \"datetime_columns\": 0, \"text_columns\": 0, \"missing_value_percentage\": 0.0, \"duplicate_row_percentage\": 0.0, \"target_column\": \"Play\", \"problem_type\": \"classification\", \"is_imbalanced\": false, \"class_count\": 2, \"memory_usage_mb\": 0.0}, \"recommendations\": []}', 0, 0, '2026-05-01 11:09:42', '2026-05-01 11:09:42'),
(3, 6, 2, 'Analysis Report - Yield_df.csv', 'ডেটাসেটটিতে 28,242 rows এবং 8 columns আছে। সমস্যার ধরন: Regression। সেরা অ্যালগরিদম: N/A। ডেটা মান স্কোর: 100.0/100।', 100.00, '• Encoding: Categorical কলামগুলো Label Encoding বা One-Hot Encoding করুন।\n• Scaling: Numerical কলামগুলো StandardScaler বা MinMaxScaler দিয়ে normalize করুন।', '• Correlated features remove করুন।\n• Feature scaling প্রয়োগ করুন।\n• Outlier detection করুন।', NULL, '{\"profile\": {\"total_rows\": 28242, \"total_columns\": 8, \"numeric_columns\": 6, \"categorical_columns\": 2, \"datetime_columns\": 0, \"text_columns\": 0, \"missing_value_percentage\": 0.0, \"duplicate_row_percentage\": 0.0, \"target_column\": \"avg_temp\", \"problem_type\": \"regression\", \"is_imbalanced\": false, \"class_count\": null, \"memory_usage_mb\": 4.34}, \"recommendations\": []}', 0, 0, '2026-05-01 11:10:18', '2026-05-01 11:10:18'),
(4, 7, 2, 'Analysis Report - car1.csv', 'ডেটাসেটটিতে 205 rows এবং 23 columns আছে। সমস্যার ধরন: Clustering। সেরা অ্যালগরিদম: N/A। ডেটা মান স্কোর: 90.0/100।', 90.00, '• Encoding: Categorical কলামগুলো Label Encoding বা One-Hot Encoding করুন।\n• Scaling: Numerical কলামগুলো StandardScaler বা MinMaxScaler দিয়ে normalize করুন।', '• Correlated features remove করুন।\n• Feature scaling প্রয়োগ করুন।\n• Outlier detection করুন।', NULL, '{\"profile\": {\"total_rows\": 205, \"total_columns\": 23, \"numeric_columns\": 10, \"categorical_columns\": 12, \"datetime_columns\": 0, \"text_columns\": 1, \"missing_value_percentage\": 0.0, \"duplicate_row_percentage\": 0.0, \"target_column\": null, \"problem_type\": \"clustering\", \"is_imbalanced\": false, \"class_count\": null, \"memory_usage_mb\": 0.15}, \"recommendations\": []}', 0, 0, '2026-05-01 11:11:22', '2026-05-01 11:11:22'),
(5, 8, 2, 'Analysis Report - Yield_df.csv', 'ডেটাসেটটিতে 28,242 rows এবং 8 columns আছে। সমস্যার ধরন: Regression। সেরা অ্যালগরিদম: N/A। ডেটা মান স্কোর: 100.0/100।', 100.00, '• Encoding: Categorical কলামগুলো Label Encoding বা One-Hot Encoding করুন।\n• Scaling: Numerical কলামগুলো StandardScaler বা MinMaxScaler দিয়ে normalize করুন।', '• Correlated features remove করুন।\n• Feature scaling প্রয়োগ করুন।\n• Outlier detection করুন।', NULL, '{\"profile\": {\"total_rows\": 28242, \"total_columns\": 8, \"numeric_columns\": 6, \"categorical_columns\": 2, \"datetime_columns\": 0, \"text_columns\": 0, \"missing_value_percentage\": 0.0, \"duplicate_row_percentage\": 0.0, \"target_column\": \"avg_temp\", \"problem_type\": \"regression\", \"is_imbalanced\": false, \"class_count\": null, \"memory_usage_mb\": 4.34}, \"recommendations\": []}', 0, 0, '2026-05-01 11:12:25', '2026-05-01 11:12:25'),
(6, 9, 2, 'Analysis Report - weather_data.csv', 'ডেটাসেটটিতে 10 rows এবং 4 columns আছে। সমস্যার ধরন: Classification। সেরা অ্যালগরিদম: N/A। ডেটা মান স্কোর: 80.0/100।', 80.00, '• Encoding: Categorical কলামগুলো Label Encoding বা One-Hot Encoding করুন।', '• Correlated features remove করুন।\n• Feature scaling প্রয়োগ করুন।\n• Outlier detection করুন।', NULL, '{\"profile\": {\"total_rows\": 10, \"total_columns\": 4, \"numeric_columns\": 0, \"categorical_columns\": 4, \"datetime_columns\": 0, \"text_columns\": 0, \"missing_value_percentage\": 0.0, \"duplicate_row_percentage\": 0.0, \"target_column\": \"Play\", \"problem_type\": \"classification\", \"is_imbalanced\": false, \"class_count\": 2, \"memory_usage_mb\": 0.0}, \"recommendations\": []}', 0, 0, '2026-05-01 11:19:24', '2026-05-01 11:19:24'),
(7, 10, 2, 'Analysis Report - Yield_df.csv', 'ডেটাসেটটিতে 28,242 rows এবং 8 columns আছে। সমস্যার ধরন: Regression। সেরা অ্যালগরিদম: N/A। ডেটা মান স্কোর: 100.0/100।', 100.00, '• Encoding: Categorical কলামগুলো Label Encoding বা One-Hot Encoding করুন।\n• Scaling: Numerical কলামগুলো StandardScaler বা MinMaxScaler দিয়ে normalize করুন।', '• Correlated features remove করুন।\n• Feature scaling প্রয়োগ করুন।\n• Outlier detection করুন।', NULL, '{\"profile\": {\"total_rows\": 28242, \"total_columns\": 8, \"numeric_columns\": 6, \"categorical_columns\": 2, \"datetime_columns\": 0, \"text_columns\": 0, \"missing_value_percentage\": 0.0, \"duplicate_row_percentage\": 0.0, \"target_column\": \"avg_temp\", \"problem_type\": \"regression\", \"is_imbalanced\": false, \"class_count\": null, \"memory_usage_mb\": 4.34}, \"recommendations\": []}', 0, 0, '2026-05-01 11:22:56', '2026-05-01 11:22:56'),
(8, 11, 3, 'Analysis Report - pokemon.csv', 'ডেটাসেটটিতে 801 rows এবং 41 columns আছে। সমস্যার ধরন: Classification। সেরা অ্যালগরিদম: N/A। ডেটা মান স্কোর: 87.62/100।', 87.62, '• Missing Values: Numerical কলামে mean/median imputation এবং categorical কলামে mode বা \'Unknown\' দিয়ে পূরণ করুন।\n• Encoding: Categorical কলামগুলো Label Encoding বা One-Hot Encoding করুন।\n• Scaling: Numerical কলামগুলো StandardScaler বা MinMaxScaler দিয়ে normalize করুন।\n• Imbalanced Data: SMOTE, RandomOverSampler অথবা class_weight=\'balanced\' ব্যবহার করুন।', '• Correlated features remove করুন।\n• Feature scaling প্রয়োগ করুন।\n• Outlier detection করুন।', NULL, '{\"profile\": {\"total_rows\": 801, \"total_columns\": 41, \"numeric_columns\": 34, \"categorical_columns\": 5, \"datetime_columns\": 0, \"text_columns\": 2, \"missing_value_percentage\": 1.59, \"duplicate_row_percentage\": 0.0, \"target_column\": \"is_legendary\", \"problem_type\": \"classification\", \"is_imbalanced\": true, \"class_count\": 2, \"memory_usage_mb\": 0.59}, \"recommendations\": []}', 0, 0, '2026-05-01 11:26:49', '2026-05-01 11:26:49'),
(9, 12, 3, 'Analysis Report - car.csv', 'ডেটাসেটটিতে 205 rows এবং 23 columns আছে। সমস্যার ধরন: Clustering। সেরা অ্যালগরিদম: N/A। ডেটা মান স্কোর: 90.0/100।', 90.00, '• Encoding: Categorical কলামগুলো Label Encoding বা One-Hot Encoding করুন।\n• Scaling: Numerical কলামগুলো StandardScaler বা MinMaxScaler দিয়ে normalize করুন।', '• Correlated features remove করুন।\n• Feature scaling প্রয়োগ করুন।\n• Outlier detection করুন।', NULL, '{\"profile\": {\"total_rows\": 205, \"total_columns\": 23, \"numeric_columns\": 10, \"categorical_columns\": 12, \"datetime_columns\": 0, \"text_columns\": 1, \"missing_value_percentage\": 0.0, \"duplicate_row_percentage\": 0.0, \"target_column\": null, \"problem_type\": \"clustering\", \"is_imbalanced\": false, \"class_count\": null, \"memory_usage_mb\": 0.15}, \"recommendations\": []}', 0, 0, '2026-05-01 11:28:23', '2026-05-01 11:28:23'),
(10, 13, 2, 'Analysis Report - weather_data.csv', 'ডেটাসেটটিতে 10 rows এবং 4 columns আছে। সমস্যার ধরন: Classification। সেরা অ্যালগরিদম: N/A। ডেটা মান স্কোর: 80.0/100।', 80.00, '• Encoding: Categorical কলামগুলো Label Encoding বা One-Hot Encoding করুন।', '• Correlated features remove করুন।\n• Feature scaling প্রয়োগ করুন।\n• Outlier detection করুন।', NULL, '{\"profile\": {\"total_rows\": 10, \"total_columns\": 4, \"numeric_columns\": 0, \"categorical_columns\": 4, \"datetime_columns\": 0, \"text_columns\": 0, \"missing_value_percentage\": 0.0, \"duplicate_row_percentage\": 0.0, \"target_column\": \"Play\", \"problem_type\": \"classification\", \"is_imbalanced\": false, \"class_count\": 2, \"memory_usage_mb\": 0.0}, \"recommendations\": []}', 0, 0, '2026-05-01 11:32:43', '2026-05-01 11:32:43'),
(11, 19, 2, 'Analysis Report - weather_data.csv', 'ডেটাসেটটিতে 10 rows এবং 4 columns আছে। সমস্যার ধরন: Classification। সেরা অ্যালগরিদম: Random Forest। ডেটা মান স্কোর: 80.0/100।', 80.00, '• Encoding: Categorical কলামগুলো Label Encoding বা One-Hot Encoding করুন।', '• Correlated features remove করুন।\n• Feature scaling প্রয়োগ করুন।\n• Outlier detection করুন।', NULL, '{\"profile\": {\"total_rows\": 10, \"total_columns\": 4, \"numeric_columns\": 0, \"categorical_columns\": 4, \"datetime_columns\": 0, \"text_columns\": 0, \"missing_value_percentage\": 0.0, \"duplicate_row_percentage\": 0.0, \"target_column\": \"Play\", \"problem_type\": \"classification\", \"is_imbalanced\": false, \"class_count\": 2, \"memory_usage_mb\": 0.0}, \"recommendations\": [{\"rank\": 1, \"algorithm_id\": 1, \"algorithm_name\": \"Random Forest\", \"short_name\": \"RF\", \"category\": \"Classification\", \"confidence_score\": 68.0, \"suitability_score\": 68.0, \"strengths\": \"Robust\", \"weaknesses\": \"Slow\", \"best_for\": \"Mixed data\", \"complexity\": \"medium\", \"interpretability\": \"medium\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Random Forest Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"negative\", \"text\": \"Random Forest \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0995\\u09ae\\u09aa\\u0995\\u09cd\\u09b7\\u09c7 100 rows \\u09a6\\u09b0\\u0995\\u09be\\u09b0, \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 \\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u09ae\\u09be\\u09a4\\u09cd\\u09b0 10 rows \\u0986\\u099b\\u09c7\\u0964\", \"weight\": 1.2}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u0995\\u09cb\\u09a8\\u09cb missing value \\u09a8\\u09c7\\u0987, \\u09b8\\u09ac \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09ad\\u09be\\u09b2\\u09cb\\u0964\", \"weight\": 0.5}, {\"type\": \"positive\", \"text\": \"4\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7 \\u098f\\u09ac\\u0982 Random Forest \\u09b8\\u09c7\\u099f\\u09bf \\u09b8\\u09b0\\u09be\\u09b8\\u09b0\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.0}]}, {\"rank\": 2, \"algorithm_id\": 3, \"algorithm_name\": \"Decision Tree\", \"short_name\": \"DT\", \"category\": \"Classification\", \"confidence_score\": 68.0, \"suitability_score\": 68.0, \"strengths\": \"Interpretable\", \"weaknesses\": \"Overfitting\", \"best_for\": \"Simple classification\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Decision Tree Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"negative\", \"text\": \"Decision Tree \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0995\\u09ae\\u09aa\\u0995\\u09cd\\u09b7\\u09c7 50 rows \\u09a6\\u09b0\\u0995\\u09be\\u09b0, \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 \\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u09ae\\u09be\\u09a4\\u09cd\\u09b0 10 rows \\u0986\\u099b\\u09c7\\u0964\", \"weight\": 1.2}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u0995\\u09cb\\u09a8\\u09cb missing value \\u09a8\\u09c7\\u0987, \\u09b8\\u09ac \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09ad\\u09be\\u09b2\\u09cb\\u0964\", \"weight\": 0.5}, {\"type\": \"positive\", \"text\": \"4\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7 \\u098f\\u09ac\\u0982 Decision Tree \\u09b8\\u09c7\\u099f\\u09bf \\u09b8\\u09b0\\u09be\\u09b8\\u09b0\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.0}]}, {\"rank\": 3, \"algorithm_id\": 2, \"algorithm_name\": \"Logistic Regression\", \"short_name\": \"LR\", \"category\": \"Classification\", \"confidence_score\": 52.0, \"suitability_score\": 52.0, \"strengths\": \"Fast\", \"weaknesses\": \"Linear only\", \"best_for\": \"Binary classification\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Logistic Regression Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"negative\", \"text\": \"Logistic Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0995\\u09ae\\u09aa\\u0995\\u09cd\\u09b7\\u09c7 50 rows \\u09a6\\u09b0\\u0995\\u09be\\u09b0, \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 \\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u09ae\\u09be\\u09a4\\u09cd\\u09b0 10 rows \\u0986\\u099b\\u09c7\\u0964\", \"weight\": 1.2}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u0995\\u09cb\\u09a8\\u09cb missing value \\u09a8\\u09c7\\u0987, \\u09b8\\u09ac \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09ad\\u09be\\u09b2\\u09cb\\u0964\", \"weight\": 0.5}, {\"type\": \"negative\", \"text\": \"4\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7, Logistic Regression \\u09ac\\u09cd\\u09af\\u09ac\\u09b9\\u09be\\u09b0\\u09c7\\u09b0 \\u0986\\u0997\\u09c7 encoding \\u09aa\\u09cd\\u09b0\\u09af\\u09bc\\u09cb\\u099c\\u09a8\\u0964\", \"weight\": 0.8}]}, {\"rank\": 4, \"algorithm_id\": 4, \"algorithm_name\": \"XGBoost\", \"short_name\": \"XGB\", \"category\": \"Classification\", \"confidence_score\": 52.0, \"suitability_score\": 52.0, \"strengths\": \"Very accurate\", \"weaknesses\": \"Complex\", \"best_for\": \"Structured data\", \"complexity\": \"high\", \"interpretability\": \"low\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 XGBoost Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"negative\", \"text\": \"XGBoost \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0995\\u09ae\\u09aa\\u0995\\u09cd\\u09b7\\u09c7 100 rows \\u09a6\\u09b0\\u0995\\u09be\\u09b0, \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 \\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u09ae\\u09be\\u09a4\\u09cd\\u09b0 10 rows \\u0986\\u099b\\u09c7\\u0964\", \"weight\": 1.2}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u0995\\u09cb\\u09a8\\u09cb missing value \\u09a8\\u09c7\\u0987, \\u09b8\\u09ac \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09ad\\u09be\\u09b2\\u09cb\\u0964\", \"weight\": 0.5}, {\"type\": \"negative\", \"text\": \"4\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7, XGBoost \\u09ac\\u09cd\\u09af\\u09ac\\u09b9\\u09be\\u09b0\\u09c7\\u09b0 \\u0986\\u0997\\u09c7 encoding \\u09aa\\u09cd\\u09b0\\u09af\\u09bc\\u09cb\\u099c\\u09a8\\u0964\", \"weight\": 0.8}]}]}', 0, 0, '2026-05-01 12:23:44', '2026-05-01 12:23:44'),
(12, 20, 2, 'Analysis Report - students_records.csv', 'ডেটাসেটটিতে 21 rows এবং 5 columns আছে। সমস্যার ধরন: Classification। সেরা অ্যালগরিদম: Random Forest। ডেটা মান স্কোর: 64.28/100।', 64.28, '• Missing Values: Numerical কলামে mean/median imputation এবং categorical কলামে mode বা \'Unknown\' দিয়ে পূরণ করুন।\n• Encoding: Categorical কলামগুলো Label Encoding বা One-Hot Encoding করুন।\n• Scaling: Numerical কলামগুলো StandardScaler বা MinMaxScaler দিয়ে normalize করুন।\n• Imbalanced Data: SMOTE, RandomOverSampler অথবা class_weight=\'balanced\' ব্যবহার করুন।', '• Correlated features remove করুন।\n• Feature scaling প্রয়োগ করুন।\n• Outlier detection করুন।', NULL, '{\"profile\": {\"total_rows\": 21, \"total_columns\": 5, \"numeric_columns\": 2, \"categorical_columns\": 2, \"datetime_columns\": 0, \"text_columns\": 1, \"missing_value_percentage\": 3.81, \"duplicate_row_percentage\": 0.0, \"target_column\": \"Admission_Year\", \"problem_type\": \"classification\", \"is_imbalanced\": true, \"class_count\": 6, \"memory_usage_mb\": 0.0}, \"recommendations\": [{\"rank\": 1, \"algorithm_id\": 1, \"algorithm_name\": \"Random Forest\", \"short_name\": \"RF\", \"category\": \"Classification\", \"confidence_score\": 78.0, \"suitability_score\": 78.0, \"strengths\": \"Robust\", \"weaknesses\": \"Slow\", \"best_for\": \"Mixed data\", \"complexity\": \"medium\", \"interpretability\": \"medium\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Random Forest Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"negative\", \"text\": \"Random Forest \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0995\\u09ae\\u09aa\\u0995\\u09cd\\u09b7\\u09c7 100 rows \\u09a6\\u09b0\\u0995\\u09be\\u09b0, \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 \\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u09ae\\u09be\\u09a4\\u09cd\\u09b0 21 rows \\u0986\\u099b\\u09c7\\u0964\", \"weight\": 1.2}, {\"type\": \"positive\", \"text\": \"2\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7 \\u098f\\u09ac\\u0982 Random Forest \\u09b8\\u09c7\\u099f\\u09bf \\u09b8\\u09b0\\u09be\\u09b8\\u09b0\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f imbalanced \\u098f\\u09ac\\u0982 Random Forest imbalanced data handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09b8\\u0995\\u09cd\\u09b7\\u09ae\\u0964\", \"weight\": 1.0}]}, {\"rank\": 2, \"algorithm_id\": 4, \"algorithm_name\": \"XGBoost\", \"short_name\": \"XGB\", \"category\": \"Classification\", \"confidence_score\": 62.0, \"suitability_score\": 62.0, \"strengths\": \"Very accurate\", \"weaknesses\": \"Complex\", \"best_for\": \"Structured data\", \"complexity\": \"high\", \"interpretability\": \"low\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 XGBoost Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"negative\", \"text\": \"XGBoost \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0995\\u09ae\\u09aa\\u0995\\u09cd\\u09b7\\u09c7 100 rows \\u09a6\\u09b0\\u0995\\u09be\\u09b0, \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 \\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u09ae\\u09be\\u09a4\\u09cd\\u09b0 21 rows \\u0986\\u099b\\u09c7\\u0964\", \"weight\": 1.2}, {\"type\": \"negative\", \"text\": \"2\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7, XGBoost \\u09ac\\u09cd\\u09af\\u09ac\\u09b9\\u09be\\u09b0\\u09c7\\u09b0 \\u0986\\u0997\\u09c7 encoding \\u09aa\\u09cd\\u09b0\\u09af\\u09bc\\u09cb\\u099c\\u09a8\\u0964\", \"weight\": 0.8}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f imbalanced \\u098f\\u09ac\\u0982 XGBoost imbalanced data handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09b8\\u0995\\u09cd\\u09b7\\u09ae\\u0964\", \"weight\": 1.0}]}, {\"rank\": 3, \"algorithm_id\": 3, \"algorithm_name\": \"Decision Tree\", \"short_name\": \"DT\", \"category\": \"Classification\", \"confidence_score\": 58.0, \"suitability_score\": 58.0, \"strengths\": \"Interpretable\", \"weaknesses\": \"Overfitting\", \"best_for\": \"Simple classification\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Decision Tree Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"negative\", \"text\": \"Decision Tree \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0995\\u09ae\\u09aa\\u0995\\u09cd\\u09b7\\u09c7 50 rows \\u09a6\\u09b0\\u0995\\u09be\\u09b0, \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 \\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u09ae\\u09be\\u09a4\\u09cd\\u09b0 21 rows \\u0986\\u099b\\u09c7\\u0964\", \"weight\": 1.2}, {\"type\": \"positive\", \"text\": \"2\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7 \\u098f\\u09ac\\u0982 Decision Tree \\u09b8\\u09c7\\u099f\\u09bf \\u09b8\\u09b0\\u09be\\u09b8\\u09b0\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.0}, {\"type\": \"negative\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f imbalanced\\u0964 Decision Tree \\u09ac\\u09cd\\u09af\\u09ac\\u09b9\\u09be\\u09b0\\u09c7 SMOTE \\u09ac\\u09be class_weight \\u09aa\\u09cd\\u09b0\\u09af\\u09bc\\u09cb\\u099c\\u09a8 \\u09b9\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 0.8}]}, {\"rank\": 4, \"algorithm_id\": 2, \"algorithm_name\": \"Logistic Regression\", \"short_name\": \"LR\", \"category\": \"Classification\", \"confidence_score\": 42.0, \"suitability_score\": 42.0, \"strengths\": \"Fast\", \"weaknesses\": \"Linear only\", \"best_for\": \"Binary classification\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Logistic Regression Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"negative\", \"text\": \"Logistic Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0995\\u09ae\\u09aa\\u0995\\u09cd\\u09b7\\u09c7 50 rows \\u09a6\\u09b0\\u0995\\u09be\\u09b0, \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 \\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u09ae\\u09be\\u09a4\\u09cd\\u09b0 21 rows \\u0986\\u099b\\u09c7\\u0964\", \"weight\": 1.2}, {\"type\": \"negative\", \"text\": \"2\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7, Logistic Regression \\u09ac\\u09cd\\u09af\\u09ac\\u09b9\\u09be\\u09b0\\u09c7\\u09b0 \\u0986\\u0997\\u09c7 encoding \\u09aa\\u09cd\\u09b0\\u09af\\u09bc\\u09cb\\u099c\\u09a8\\u0964\", \"weight\": 0.8}, {\"type\": \"negative\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f imbalanced\\u0964 Logistic Regression \\u09ac\\u09cd\\u09af\\u09ac\\u09b9\\u09be\\u09b0\\u09c7 SMOTE \\u09ac\\u09be class_weight \\u09aa\\u09cd\\u09b0\\u09af\\u09bc\\u09cb\\u099c\\u09a8 \\u09b9\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 0.8}]}]}', 0, 0, '2026-05-01 16:06:27', '2026-05-01 16:06:27'),
(13, 21, 2, 'Analysis Report - movies.csv', 'ডেটাসেটটিতে 4,803 rows এবং 20 columns আছে। সমস্যার ধরন: Regression। সেরা অ্যালগরিদম: Linear Regression। ডেটা মান স্কোর: 93.85/100।', 93.85, '• Missing Values: Numerical কলামে mean/median imputation এবং categorical কলামে mode বা \'Unknown\' দিয়ে পূরণ করুন।\n• Encoding: Categorical কলামগুলো Label Encoding বা One-Hot Encoding করুন।\n• Scaling: Numerical কলামগুলো StandardScaler বা MinMaxScaler দিয়ে normalize করুন।', '• Correlated features remove করুন।\n• Feature scaling প্রয়োগ করুন।\n• Outlier detection করুন।', NULL, '{\"profile\": {\"total_rows\": 4803, \"total_columns\": 20, \"numeric_columns\": 7, \"categorical_columns\": 5, \"datetime_columns\": 0, \"text_columns\": 8, \"missing_value_percentage\": 4.1, \"duplicate_row_percentage\": 0.0, \"target_column\": \"vote_count\", \"problem_type\": \"regression\", \"is_imbalanced\": false, \"class_count\": null, \"memory_usage_mb\": 7.93}, \"recommendations\": [{\"rank\": 1, \"algorithm_id\": 5, \"algorithm_name\": \"Linear Regression\", \"short_name\": \"LinReg\", \"category\": \"Regression\", \"confidence_score\": 75.0, \"suitability_score\": 75.0, \"strengths\": \"Simple\", \"weaknesses\": \"Linear only\", \"best_for\": \"Continuous prediction\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Regression \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Linear Regression Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0989\\u09aa\\u09af\\u09c1\\u0995\\u09cd\\u09a4\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 4,803 rows \\u0986\\u099b\\u09c7, Linear Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"negative\", \"text\": \"5\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7, Linear Regression \\u09ac\\u09cd\\u09af\\u09ac\\u09b9\\u09be\\u09b0\\u09c7\\u09b0 \\u0986\\u0997\\u09c7 encoding \\u09aa\\u09cd\\u09b0\\u09af\\u09bc\\u09cb\\u099c\\u09a8\\u0964\", \"weight\": 0.8}]}, {\"rank\": 2, \"algorithm_id\": 6, \"algorithm_name\": \"Ridge Regression\", \"short_name\": \"Ridge\", \"category\": \"Regression\", \"confidence_score\": 75.0, \"suitability_score\": 75.0, \"strengths\": \"Handles collinearity\", \"weaknesses\": \"Linear only\", \"best_for\": \"Correlated features\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Regression \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Ridge Regression Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0989\\u09aa\\u09af\\u09c1\\u0995\\u09cd\\u09a4\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 4,803 rows \\u0986\\u099b\\u09c7, Ridge Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"negative\", \"text\": \"5\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7, Ridge Regression \\u09ac\\u09cd\\u09af\\u09ac\\u09b9\\u09be\\u09b0\\u09c7\\u09b0 \\u0986\\u0997\\u09c7 encoding \\u09aa\\u09cd\\u09b0\\u09af\\u09bc\\u09cb\\u099c\\u09a8\\u0964\", \"weight\": 0.8}]}]}', 0, 0, '2026-05-01 16:23:26', '2026-05-01 16:23:26'),
(14, 22, 2, 'Analysis Report - bike.csv', 'ডেটাসেটটিতে 205 rows এবং 26 columns আছে। সমস্যার ধরন: Regression। সেরা অ্যালগরিদম: Linear Regression। ডেটা মান স্কোর: 90.0/100।', 90.00, '• Encoding: Categorical কলামগুলো Label Encoding বা One-Hot Encoding করুন।\n• Scaling: Numerical কলামগুলো StandardScaler বা MinMaxScaler দিয়ে normalize করুন।', '• Correlated features remove করুন।\n• Feature scaling প্রয়োগ করুন।\n• Outlier detection করুন।', NULL, '{\"profile\": {\"total_rows\": 205, \"total_columns\": 26, \"numeric_columns\": 16, \"categorical_columns\": 10, \"datetime_columns\": 0, \"text_columns\": 0, \"missing_value_percentage\": 0.0, \"duplicate_row_percentage\": 0.0, \"target_column\": \"price\", \"problem_type\": \"regression\", \"is_imbalanced\": false, \"class_count\": null, \"memory_usage_mb\": 0.13}, \"recommendations\": [{\"rank\": 1, \"algorithm_id\": 5, \"algorithm_name\": \"Linear Regression\", \"short_name\": \"LinReg\", \"category\": \"Regression\", \"confidence_score\": 75.0, \"suitability_score\": 75.0, \"strengths\": \"Simple\", \"weaknesses\": \"Linear only\", \"best_for\": \"Continuous prediction\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Regression \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Linear Regression Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0989\\u09aa\\u09af\\u09c1\\u0995\\u09cd\\u09a4\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 205 rows \\u0986\\u099b\\u09c7, Linear Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u0995\\u09cb\\u09a8\\u09cb missing value \\u09a8\\u09c7\\u0987, \\u09b8\\u09ac \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09ad\\u09be\\u09b2\\u09cb\\u0964\", \"weight\": 0.5}, {\"type\": \"negative\", \"text\": \"10\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7, Linear Regression \\u09ac\\u09cd\\u09af\\u09ac\\u09b9\\u09be\\u09b0\\u09c7\\u09b0 \\u0986\\u0997\\u09c7 encoding \\u09aa\\u09cd\\u09b0\\u09af\\u09bc\\u09cb\\u099c\\u09a8\\u0964\", \"weight\": 0.8}]}, {\"rank\": 2, \"algorithm_id\": 6, \"algorithm_name\": \"Ridge Regression\", \"short_name\": \"Ridge\", \"category\": \"Regression\", \"confidence_score\": 75.0, \"suitability_score\": 75.0, \"strengths\": \"Handles collinearity\", \"weaknesses\": \"Linear only\", \"best_for\": \"Correlated features\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Regression \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Ridge Regression Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0989\\u09aa\\u09af\\u09c1\\u0995\\u09cd\\u09a4\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 205 rows \\u0986\\u099b\\u09c7, Ridge Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u0995\\u09cb\\u09a8\\u09cb missing value \\u09a8\\u09c7\\u0987, \\u09b8\\u09ac \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09ad\\u09be\\u09b2\\u09cb\\u0964\", \"weight\": 0.5}, {\"type\": \"negative\", \"text\": \"10\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7, Ridge Regression \\u09ac\\u09cd\\u09af\\u09ac\\u09b9\\u09be\\u09b0\\u09c7\\u09b0 \\u0986\\u0997\\u09c7 encoding \\u09aa\\u09cd\\u09b0\\u09af\\u09bc\\u09cb\\u099c\\u09a8\\u0964\", \"weight\": 0.8}]}]}', 0, 0, '2026-05-01 16:25:33', '2026-05-01 16:25:33'),
(15, 23, 2, 'Analysis Report - weather_data.csv', 'ডেটাসেটটিতে 10 rows এবং 4 columns আছে। সমস্যার ধরন: Classification। সেরা অ্যালগরিদম: Random Forest। ডেটা মান স্কোর: 80.0/100।', 80.00, '• Encoding: Categorical কলামগুলো Label Encoding বা One-Hot Encoding করুন।', '• Correlated features remove করুন।\n• Feature scaling প্রয়োগ করুন।\n• Outlier detection করুন।', NULL, '{\"profile\": {\"total_rows\": 10, \"total_columns\": 4, \"numeric_columns\": 0, \"categorical_columns\": 4, \"datetime_columns\": 0, \"text_columns\": 0, \"missing_value_percentage\": 0.0, \"duplicate_row_percentage\": 0.0, \"target_column\": \"Play\", \"problem_type\": \"classification\", \"is_imbalanced\": false, \"class_count\": 2, \"memory_usage_mb\": 0.0}, \"recommendations\": [{\"rank\": 1, \"algorithm_id\": 1, \"algorithm_name\": \"Random Forest\", \"short_name\": \"RF\", \"category\": \"Classification\", \"confidence_score\": 68.0, \"suitability_score\": 68.0, \"strengths\": \"Robust\", \"weaknesses\": \"Slow\", \"best_for\": \"Mixed data\", \"complexity\": \"medium\", \"interpretability\": \"medium\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Random Forest Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"negative\", \"text\": \"Random Forest \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0995\\u09ae\\u09aa\\u0995\\u09cd\\u09b7\\u09c7 100 rows \\u09a6\\u09b0\\u0995\\u09be\\u09b0, \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 \\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u09ae\\u09be\\u09a4\\u09cd\\u09b0 10 rows \\u0986\\u099b\\u09c7\\u0964\", \"weight\": 1.2}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u0995\\u09cb\\u09a8\\u09cb missing value \\u09a8\\u09c7\\u0987, \\u09b8\\u09ac \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09ad\\u09be\\u09b2\\u09cb\\u0964\", \"weight\": 0.5}, {\"type\": \"positive\", \"text\": \"4\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7 \\u098f\\u09ac\\u0982 Random Forest \\u09b8\\u09c7\\u099f\\u09bf \\u09b8\\u09b0\\u09be\\u09b8\\u09b0\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.0}]}, {\"rank\": 2, \"algorithm_id\": 3, \"algorithm_name\": \"Decision Tree\", \"short_name\": \"DT\", \"category\": \"Classification\", \"confidence_score\": 68.0, \"suitability_score\": 68.0, \"strengths\": \"Interpretable\", \"weaknesses\": \"Overfitting\", \"best_for\": \"Simple classification\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Decision Tree Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"negative\", \"text\": \"Decision Tree \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0995\\u09ae\\u09aa\\u0995\\u09cd\\u09b7\\u09c7 50 rows \\u09a6\\u09b0\\u0995\\u09be\\u09b0, \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 \\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u09ae\\u09be\\u09a4\\u09cd\\u09b0 10 rows \\u0986\\u099b\\u09c7\\u0964\", \"weight\": 1.2}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u0995\\u09cb\\u09a8\\u09cb missing value \\u09a8\\u09c7\\u0987, \\u09b8\\u09ac \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09ad\\u09be\\u09b2\\u09cb\\u0964\", \"weight\": 0.5}, {\"type\": \"positive\", \"text\": \"4\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7 \\u098f\\u09ac\\u0982 Decision Tree \\u09b8\\u09c7\\u099f\\u09bf \\u09b8\\u09b0\\u09be\\u09b8\\u09b0\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.0}]}, {\"rank\": 3, \"algorithm_id\": 2, \"algorithm_name\": \"Logistic Regression\", \"short_name\": \"LR\", \"category\": \"Classification\", \"confidence_score\": 52.0, \"suitability_score\": 52.0, \"strengths\": \"Fast\", \"weaknesses\": \"Linear only\", \"best_for\": \"Binary classification\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Logistic Regression Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"negative\", \"text\": \"Logistic Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0995\\u09ae\\u09aa\\u0995\\u09cd\\u09b7\\u09c7 50 rows \\u09a6\\u09b0\\u0995\\u09be\\u09b0, \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 \\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u09ae\\u09be\\u09a4\\u09cd\\u09b0 10 rows \\u0986\\u099b\\u09c7\\u0964\", \"weight\": 1.2}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u0995\\u09cb\\u09a8\\u09cb missing value \\u09a8\\u09c7\\u0987, \\u09b8\\u09ac \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09ad\\u09be\\u09b2\\u09cb\\u0964\", \"weight\": 0.5}, {\"type\": \"negative\", \"text\": \"4\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7, Logistic Regression \\u09ac\\u09cd\\u09af\\u09ac\\u09b9\\u09be\\u09b0\\u09c7\\u09b0 \\u0986\\u0997\\u09c7 encoding \\u09aa\\u09cd\\u09b0\\u09af\\u09bc\\u09cb\\u099c\\u09a8\\u0964\", \"weight\": 0.8}]}, {\"rank\": 4, \"algorithm_id\": 4, \"algorithm_name\": \"XGBoost\", \"short_name\": \"XGB\", \"category\": \"Classification\", \"confidence_score\": 52.0, \"suitability_score\": 52.0, \"strengths\": \"Very accurate\", \"weaknesses\": \"Complex\", \"best_for\": \"Structured data\", \"complexity\": \"high\", \"interpretability\": \"low\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 XGBoost Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"negative\", \"text\": \"XGBoost \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0995\\u09ae\\u09aa\\u0995\\u09cd\\u09b7\\u09c7 100 rows \\u09a6\\u09b0\\u0995\\u09be\\u09b0, \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 \\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u09ae\\u09be\\u09a4\\u09cd\\u09b0 10 rows \\u0986\\u099b\\u09c7\\u0964\", \"weight\": 1.2}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u0995\\u09cb\\u09a8\\u09cb missing value \\u09a8\\u09c7\\u0987, \\u09b8\\u09ac \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09ad\\u09be\\u09b2\\u09cb\\u0964\", \"weight\": 0.5}, {\"type\": \"negative\", \"text\": \"4\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7, XGBoost \\u09ac\\u09cd\\u09af\\u09ac\\u09b9\\u09be\\u09b0\\u09c7\\u09b0 \\u0986\\u0997\\u09c7 encoding \\u09aa\\u09cd\\u09b0\\u09af\\u09bc\\u09cb\\u099c\\u09a8\\u0964\", \"weight\": 0.8}]}]}', 0, 0, '2026-05-01 16:35:17', '2026-05-01 16:35:17'),
(16, 24, 2, 'Analysis Report - Real_Combine.csv', 'ডেটাসেটটিতে 1,093 rows এবং 9 columns আছে। সমস্যার ধরন: Regression। সেরা অ্যালগরিদম: Linear Regression। ডেটা মান স্কোর: 89.98/100।', 89.98, '• Missing Values: Numerical কলামে mean/median imputation এবং categorical কলামে mode বা \'Unknown\' দিয়ে পূরণ করুন।\n• Scaling: Numerical কলামগুলো StandardScaler বা MinMaxScaler দিয়ে normalize করুন।\n• Duplicates: ডুপ্লিকেট rows remove করুন।', '• Correlated features remove করুন।\n• Feature scaling প্রয়োগ করুন।\n• Outlier detection করুন।', NULL, '{\"profile\": {\"total_rows\": 1093, \"total_columns\": 9, \"numeric_columns\": 9, \"categorical_columns\": 0, \"datetime_columns\": 0, \"text_columns\": 0, \"missing_value_percentage\": 0.01, \"duplicate_row_percentage\": 33.12, \"target_column\": \"PM 2.5\", \"problem_type\": \"regression\", \"is_imbalanced\": false, \"class_count\": null, \"memory_usage_mb\": 0.08}, \"recommendations\": [{\"rank\": 1, \"algorithm_id\": 5, \"algorithm_name\": \"Linear Regression\", \"short_name\": \"LinReg\", \"category\": \"Regression\", \"confidence_score\": 88.0, \"suitability_score\": 88.0, \"strengths\": \"Simple\", \"weaknesses\": \"Linear only\", \"best_for\": \"Continuous prediction\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Regression \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Linear Regression Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0989\\u09aa\\u09af\\u09c1\\u0995\\u09cd\\u09a4\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 1,093 rows \\u0986\\u099b\\u09c7, Linear Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u0995\\u09ae features (9) \\u098f\\u09ac\\u0982 \\u09ac\\u09c7\\u09b6\\u09bf\\u09b0\\u09ad\\u09be\\u0997 numeric \\u09b9\\u0993\\u09af\\u09bc\\u09be\\u09af\\u09bc Linear model \\u09ad\\u09be\\u09b2\\u09cb \\u0995\\u09be\\u099c \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 0.8}]}, {\"rank\": 2, \"algorithm_id\": 6, \"algorithm_name\": \"Ridge Regression\", \"short_name\": \"Ridge\", \"category\": \"Regression\", \"confidence_score\": 88.0, \"suitability_score\": 88.0, \"strengths\": \"Handles collinearity\", \"weaknesses\": \"Linear only\", \"best_for\": \"Correlated features\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Regression \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Ridge Regression Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0989\\u09aa\\u09af\\u09c1\\u0995\\u09cd\\u09a4\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 1,093 rows \\u0986\\u099b\\u09c7, Ridge Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u0995\\u09ae features (9) \\u098f\\u09ac\\u0982 \\u09ac\\u09c7\\u09b6\\u09bf\\u09b0\\u09ad\\u09be\\u0997 numeric \\u09b9\\u0993\\u09af\\u09bc\\u09be\\u09af\\u09bc Linear model \\u09ad\\u09be\\u09b2\\u09cb \\u0995\\u09be\\u099c \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 0.8}]}]}', 0, 0, '2026-05-03 15:36:05', '2026-05-03 15:36:05'),
(17, 25, 2, 'Analysis Report - Heart1.csv', 'ডেটাসেটটিতে 1,025 rows এবং 14 columns আছে। সমস্যার ধরন: Classification। সেরা অ্যালগরিদম: Random Forest। ডেটা মান স্কোর: 90.0/100।', 90.00, '• Scaling: Numerical কলামগুলো StandardScaler বা MinMaxScaler দিয়ে normalize করুন।\n• Duplicates: ডুপ্লিকেট rows remove করুন।', '• Correlated features remove করুন।\n• Feature scaling প্রয়োগ করুন।\n• Outlier detection করুন।', NULL, '{\"profile\": {\"total_rows\": 1025, \"total_columns\": 14, \"numeric_columns\": 14, \"categorical_columns\": 0, \"datetime_columns\": 0, \"text_columns\": 0, \"missing_value_percentage\": 0.0, \"duplicate_row_percentage\": 70.54, \"target_column\": \"target\", \"problem_type\": \"classification\", \"is_imbalanced\": false, \"class_count\": 2, \"memory_usage_mb\": 0.11}, \"recommendations\": [{\"rank\": 1, \"algorithm_id\": 1, \"algorithm_name\": \"Random Forest\", \"short_name\": \"RF\", \"category\": \"Classification\", \"confidence_score\": 83.0, \"suitability_score\": 83.0, \"strengths\": \"Robust\", \"weaknesses\": \"Slow\", \"best_for\": \"Mixed data\", \"complexity\": \"medium\", \"interpretability\": \"medium\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Random Forest Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 1,025 rows \\u0986\\u099b\\u09c7, Random Forest \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u0995\\u09cb\\u09a8\\u09cb missing value \\u09a8\\u09c7\\u0987, \\u09b8\\u09ac \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09ad\\u09be\\u09b2\\u09cb\\u0964\", \"weight\": 0.5}]}, {\"rank\": 2, \"algorithm_id\": 2, \"algorithm_name\": \"Logistic Regression\", \"short_name\": \"LR\", \"category\": \"Classification\", \"confidence_score\": 83.0, \"suitability_score\": 83.0, \"strengths\": \"Fast\", \"weaknesses\": \"Linear only\", \"best_for\": \"Binary classification\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Logistic Regression Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 1,025 rows \\u0986\\u099b\\u09c7, Logistic Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u0995\\u09cb\\u09a8\\u09cb missing value \\u09a8\\u09c7\\u0987, \\u09b8\\u09ac \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09ad\\u09be\\u09b2\\u09cb\\u0964\", \"weight\": 0.5}]}, {\"rank\": 3, \"algorithm_id\": 3, \"algorithm_name\": \"Decision Tree\", \"short_name\": \"DT\", \"category\": \"Classification\", \"confidence_score\": 83.0, \"suitability_score\": 83.0, \"strengths\": \"Interpretable\", \"weaknesses\": \"Overfitting\", \"best_for\": \"Simple classification\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Decision Tree Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 1,025 rows \\u0986\\u099b\\u09c7, Decision Tree \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u0995\\u09cb\\u09a8\\u09cb missing value \\u09a8\\u09c7\\u0987, \\u09b8\\u09ac \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09ad\\u09be\\u09b2\\u09cb\\u0964\", \"weight\": 0.5}]}, {\"rank\": 4, \"algorithm_id\": 4, \"algorithm_name\": \"XGBoost\", \"short_name\": \"XGB\", \"category\": \"Classification\", \"confidence_score\": 83.0, \"suitability_score\": 83.0, \"strengths\": \"Very accurate\", \"weaknesses\": \"Complex\", \"best_for\": \"Structured data\", \"complexity\": \"high\", \"interpretability\": \"low\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 XGBoost Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 1,025 rows \\u0986\\u099b\\u09c7, XGBoost \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u0995\\u09cb\\u09a8\\u09cb missing value \\u09a8\\u09c7\\u0987, \\u09b8\\u09ac \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09ad\\u09be\\u09b2\\u09cb\\u0964\", \"weight\": 0.5}]}]}', 0, 0, '2026-05-03 18:41:47', '2026-05-03 18:41:47');
INSERT INTO `analysis_reports` (`id`, `upload_id`, `user_id`, `report_title`, `report_summary`, `data_quality_score`, `recommended_preprocessing`, `feature_engineering_tips`, `report_html`, `report_json`, `is_public`, `view_count`, `created_at`, `updated_at`) VALUES
(18, 26, 2, 'Analysis Report - bal2.csv', 'ডেটাসেটটিতে 50,000 rows এবং 1 columns আছে। সমস্যার ধরন: Clustering। সেরা অ্যালগরিদম: K-Means। ডেটা মান স্কোর: 100.0/100।', 100.00, '• ডেটাসেটটি ভালো অবস্থায় আছে। সরাসরি মডেল ট্রেন করা যাবে।', '• Correlated features remove করুন।\n• Feature scaling প্রয়োগ করুন।\n• Outlier detection করুন।', NULL, '{\"profile\": {\"total_rows\": 50000, \"total_columns\": 1, \"numeric_columns\": 0, \"categorical_columns\": 0, \"datetime_columns\": 0, \"text_columns\": 1, \"missing_value_percentage\": 0.0, \"duplicate_row_percentage\": 0.0, \"target_column\": null, \"problem_type\": \"clustering\", \"is_imbalanced\": false, \"class_count\": null, \"memory_usage_mb\": 3.55}, \"recommendations\": [{\"rank\": 1, \"algorithm_id\": 7, \"algorithm_name\": \"K-Means\", \"short_name\": \"KMeans\", \"category\": \"Clustering\", \"confidence_score\": 83.0, \"suitability_score\": 83.0, \"strengths\": \"Simple\", \"weaknesses\": \"Need K\", \"best_for\": \"Segmentation\", \"complexity\": \"low\", \"interpretability\": \"medium\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09b2\\u09c7\\u09ac\\u09c7\\u09b2\\u09ac\\u09bf\\u09b9\\u09c0\\u09a8 \\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc K-Means Clustering \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 50,000 rows \\u0986\\u099b\\u09c7, K-Means \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u0995\\u09cb\\u09a8\\u09cb missing value \\u09a8\\u09c7\\u0987, \\u09b8\\u09ac \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09ad\\u09be\\u09b2\\u09cb\\u0964\", \"weight\": 0.5}]}]}', 0, 0, '2026-05-04 05:50:53', '2026-05-04 05:50:53'),
(19, 27, 2, 'Analysis Report - Real_Combine.csv', 'ডেটাসেটটিতে 1,093 rows এবং 9 columns আছে। সমস্যার ধরন: Regression। সেরা অ্যালগরিদম: Linear Regression। ডেটা মান স্কোর: 89.98/100।', 89.98, '• Missing Values: Numerical কলামে mean/median imputation এবং categorical কলামে mode বা \'Unknown\' দিয়ে পূরণ করুন।\n• Scaling: Numerical কলামগুলো StandardScaler বা MinMaxScaler দিয়ে normalize করুন।\n• Duplicates: ডুপ্লিকেট rows remove করুন।', '• Correlated features remove করুন।\n• Feature scaling প্রয়োগ করুন।\n• Outlier detection করুন।', NULL, '{\"profile\": {\"total_rows\": 1093, \"total_columns\": 9, \"numeric_columns\": 9, \"categorical_columns\": 0, \"datetime_columns\": 0, \"text_columns\": 0, \"missing_value_percentage\": 0.01, \"duplicate_row_percentage\": 33.12, \"target_column\": \"PM 2.5\", \"problem_type\": \"regression\", \"is_imbalanced\": false, \"class_count\": null, \"memory_usage_mb\": 0.08}, \"recommendations\": [{\"rank\": 1, \"algorithm_id\": 5, \"algorithm_name\": \"Linear Regression\", \"short_name\": \"LinReg\", \"category\": \"Regression\", \"confidence_score\": 88.0, \"suitability_score\": 88.0, \"strengths\": \"Simple\", \"weaknesses\": \"Linear only\", \"best_for\": \"Continuous prediction\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Regression \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Linear Regression Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0989\\u09aa\\u09af\\u09c1\\u0995\\u09cd\\u09a4\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 1,093 rows \\u0986\\u099b\\u09c7, Linear Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u0995\\u09ae features (9) \\u098f\\u09ac\\u0982 \\u09ac\\u09c7\\u09b6\\u09bf\\u09b0\\u09ad\\u09be\\u0997 numeric \\u09b9\\u0993\\u09af\\u09bc\\u09be\\u09af\\u09bc Linear model \\u09ad\\u09be\\u09b2\\u09cb \\u0995\\u09be\\u099c \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 0.8}]}, {\"rank\": 2, \"algorithm_id\": 6, \"algorithm_name\": \"Ridge Regression\", \"short_name\": \"Ridge\", \"category\": \"Regression\", \"confidence_score\": 88.0, \"suitability_score\": 88.0, \"strengths\": \"Handles collinearity\", \"weaknesses\": \"Linear only\", \"best_for\": \"Correlated features\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Regression \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Ridge Regression Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0989\\u09aa\\u09af\\u09c1\\u0995\\u09cd\\u09a4\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 1,093 rows \\u0986\\u099b\\u09c7, Ridge Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u0995\\u09ae features (9) \\u098f\\u09ac\\u0982 \\u09ac\\u09c7\\u09b6\\u09bf\\u09b0\\u09ad\\u09be\\u0997 numeric \\u09b9\\u0993\\u09af\\u09bc\\u09be\\u09af\\u09bc Linear model \\u09ad\\u09be\\u09b2\\u09cb \\u0995\\u09be\\u099c \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 0.8}]}]}', 0, 0, '2026-05-05 19:37:47', '2026-05-05 19:37:47'),
(20, 28, 2, 'Analysis Report - Real_Combine.csv', 'ডেটাসেটটিতে 1,093 rows এবং 9 columns আছে। সমস্যার ধরন: Regression। সেরা অ্যালগরিদম: Linear Regression। ডেটা মান স্কোর: 89.98/100।', 89.98, '• Missing Values: Numerical কলামে mean/median imputation এবং categorical কলামে mode বা \'Unknown\' দিয়ে পূরণ করুন।\n• Scaling: Numerical কলামগুলো StandardScaler বা MinMaxScaler দিয়ে normalize করুন।\n• Duplicates: ডুপ্লিকেট rows remove করুন।', '• Correlated features remove করুন।\n• Feature scaling প্রয়োগ করুন।\n• Outlier detection করুন।', NULL, '{\"profile\": {\"total_rows\": 1093, \"total_columns\": 9, \"numeric_columns\": 9, \"categorical_columns\": 0, \"datetime_columns\": 0, \"text_columns\": 0, \"missing_value_percentage\": 0.01, \"duplicate_row_percentage\": 33.12, \"target_column\": \"PM 2.5\", \"problem_type\": \"regression\", \"is_imbalanced\": false, \"class_count\": null, \"memory_usage_mb\": 0.08}, \"recommendations\": [{\"rank\": 1, \"algorithm_id\": 5, \"algorithm_name\": \"Linear Regression\", \"short_name\": \"LinReg\", \"category\": \"Regression\", \"confidence_score\": 88.0, \"suitability_score\": 88.0, \"strengths\": \"Simple\", \"weaknesses\": \"Linear only\", \"best_for\": \"Continuous prediction\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Regression \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Linear Regression Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0989\\u09aa\\u09af\\u09c1\\u0995\\u09cd\\u09a4\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 1,093 rows \\u0986\\u099b\\u09c7, Linear Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u0995\\u09ae features (9) \\u098f\\u09ac\\u0982 \\u09ac\\u09c7\\u09b6\\u09bf\\u09b0\\u09ad\\u09be\\u0997 numeric \\u09b9\\u0993\\u09af\\u09bc\\u09be\\u09af\\u09bc Linear model \\u09ad\\u09be\\u09b2\\u09cb \\u0995\\u09be\\u099c \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 0.8}]}, {\"rank\": 2, \"algorithm_id\": 6, \"algorithm_name\": \"Ridge Regression\", \"short_name\": \"Ridge\", \"category\": \"Regression\", \"confidence_score\": 88.0, \"suitability_score\": 88.0, \"strengths\": \"Handles collinearity\", \"weaknesses\": \"Linear only\", \"best_for\": \"Correlated features\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Regression \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Ridge Regression Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0989\\u09aa\\u09af\\u09c1\\u0995\\u09cd\\u09a4\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 1,093 rows \\u0986\\u099b\\u09c7, Ridge Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u0995\\u09ae features (9) \\u098f\\u09ac\\u0982 \\u09ac\\u09c7\\u09b6\\u09bf\\u09b0\\u09ad\\u09be\\u0997 numeric \\u09b9\\u0993\\u09af\\u09bc\\u09be\\u09af\\u09bc Linear model \\u09ad\\u09be\\u09b2\\u09cb \\u0995\\u09be\\u099c \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 0.8}]}]}', 0, 0, '2026-05-05 20:01:03', '2026-05-05 20:01:03'),
(21, 29, 2, 'Analysis Report - heart.csv', 'ডেটাসেটটিতে 1,025 rows এবং 14 columns আছে। সমস্যার ধরন: Classification। সেরা অ্যালগরিদম: Random Forest। ডেটা মান স্কোর: 90.0/100।', 90.00, '• Scaling: Numerical কলামগুলো StandardScaler বা MinMaxScaler দিয়ে normalize করুন।\n• Duplicates: ডুপ্লিকেট rows remove করুন।', '• Correlated features remove করুন।\n• Feature scaling প্রয়োগ করুন।\n• Outlier detection করুন।', NULL, '{\"profile\": {\"total_rows\": 1025, \"total_columns\": 14, \"numeric_columns\": 14, \"categorical_columns\": 0, \"datetime_columns\": 0, \"text_columns\": 0, \"missing_value_percentage\": 0.0, \"duplicate_row_percentage\": 70.54, \"target_column\": \"target\", \"problem_type\": \"classification\", \"is_imbalanced\": false, \"class_count\": 2, \"memory_usage_mb\": 0.11}, \"recommendations\": [{\"rank\": 1, \"algorithm_id\": 1, \"algorithm_name\": \"Random Forest\", \"short_name\": \"RF\", \"category\": \"Classification\", \"confidence_score\": 83.0, \"suitability_score\": 83.0, \"strengths\": \"Robust\", \"weaknesses\": \"Slow\", \"best_for\": \"Mixed data\", \"complexity\": \"medium\", \"interpretability\": \"medium\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Random Forest Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 1,025 rows \\u0986\\u099b\\u09c7, Random Forest \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u0995\\u09cb\\u09a8\\u09cb missing value \\u09a8\\u09c7\\u0987, \\u09b8\\u09ac \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09ad\\u09be\\u09b2\\u09cb\\u0964\", \"weight\": 0.5}]}, {\"rank\": 2, \"algorithm_id\": 2, \"algorithm_name\": \"Logistic Regression\", \"short_name\": \"LR\", \"category\": \"Classification\", \"confidence_score\": 83.0, \"suitability_score\": 83.0, \"strengths\": \"Fast\", \"weaknesses\": \"Linear only\", \"best_for\": \"Binary classification\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Logistic Regression Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 1,025 rows \\u0986\\u099b\\u09c7, Logistic Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u0995\\u09cb\\u09a8\\u09cb missing value \\u09a8\\u09c7\\u0987, \\u09b8\\u09ac \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09ad\\u09be\\u09b2\\u09cb\\u0964\", \"weight\": 0.5}]}, {\"rank\": 3, \"algorithm_id\": 3, \"algorithm_name\": \"Decision Tree\", \"short_name\": \"DT\", \"category\": \"Classification\", \"confidence_score\": 83.0, \"suitability_score\": 83.0, \"strengths\": \"Interpretable\", \"weaknesses\": \"Overfitting\", \"best_for\": \"Simple classification\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Decision Tree Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 1,025 rows \\u0986\\u099b\\u09c7, Decision Tree \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u0995\\u09cb\\u09a8\\u09cb missing value \\u09a8\\u09c7\\u0987, \\u09b8\\u09ac \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09ad\\u09be\\u09b2\\u09cb\\u0964\", \"weight\": 0.5}]}, {\"rank\": 4, \"algorithm_id\": 4, \"algorithm_name\": \"XGBoost\", \"short_name\": \"XGB\", \"category\": \"Classification\", \"confidence_score\": 83.0, \"suitability_score\": 83.0, \"strengths\": \"Very accurate\", \"weaknesses\": \"Complex\", \"best_for\": \"Structured data\", \"complexity\": \"high\", \"interpretability\": \"low\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 XGBoost Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 1,025 rows \\u0986\\u099b\\u09c7, XGBoost \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u0995\\u09cb\\u09a8\\u09cb missing value \\u09a8\\u09c7\\u0987, \\u09b8\\u09ac \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09ad\\u09be\\u09b2\\u09cb\\u0964\", \"weight\": 0.5}]}]}', 0, 0, '2026-05-05 20:07:45', '2026-05-05 20:07:45'),
(22, 30, 2, 'Analysis Report - bal2.csv', 'ডেটাসেটটিতে 50,000 rows এবং 1 columns আছে। সমস্যার ধরন: Clustering। সেরা অ্যালগরিদম: K-Means। ডেটা মান স্কোর: 100.0/100।', 100.00, '• ডেটাসেটটি ভালো অবস্থায় আছে। সরাসরি মডেল ট্রেন করা যাবে।', '• Correlated features remove করুন।\n• Feature scaling প্রয়োগ করুন।\n• Outlier detection করুন।', NULL, '{\"profile\": {\"total_rows\": 50000, \"total_columns\": 1, \"numeric_columns\": 0, \"categorical_columns\": 0, \"datetime_columns\": 0, \"text_columns\": 1, \"missing_value_percentage\": 0.0, \"duplicate_row_percentage\": 0.0, \"target_column\": null, \"problem_type\": \"clustering\", \"is_imbalanced\": false, \"class_count\": null, \"memory_usage_mb\": 3.55}, \"recommendations\": [{\"rank\": 1, \"algorithm_id\": 7, \"algorithm_name\": \"K-Means\", \"short_name\": \"KMeans\", \"category\": \"Clustering\", \"confidence_score\": 83.0, \"suitability_score\": 83.0, \"strengths\": \"Simple\", \"weaknesses\": \"Need K\", \"best_for\": \"Segmentation\", \"complexity\": \"low\", \"interpretability\": \"medium\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09b2\\u09c7\\u09ac\\u09c7\\u09b2\\u09ac\\u09bf\\u09b9\\u09c0\\u09a8 \\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc K-Means Clustering \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 50,000 rows \\u0986\\u099b\\u09c7, K-Means \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u0995\\u09cb\\u09a8\\u09cb missing value \\u09a8\\u09c7\\u0987, \\u09b8\\u09ac \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09ad\\u09be\\u09b2\\u09cb\\u0964\", \"weight\": 0.5}]}]}', 0, 0, '2026-05-05 20:14:04', '2026-05-05 20:14:04'),
(23, 31, 2, 'Analysis Report - BikeStore.csv', 'ডেটাসেটটিতে 9 rows এবং 2 columns আছে। সমস্যার ধরন: Clustering। সেরা অ্যালগরিদম: K-Means। ডেটা মান স্কোর: 80.0/100।', 80.00, '• Scaling: Numerical কলামগুলো StandardScaler বা MinMaxScaler দিয়ে normalize করুন।', '• Correlated features remove করুন।\n• Feature scaling প্রয়োগ করুন।\n• Outlier detection করুন।', NULL, '{\"profile\": {\"total_rows\": 9, \"total_columns\": 2, \"numeric_columns\": 1, \"categorical_columns\": 0, \"datetime_columns\": 0, \"text_columns\": 1, \"missing_value_percentage\": 0.0, \"duplicate_row_percentage\": 0.0, \"target_column\": null, \"problem_type\": \"clustering\", \"is_imbalanced\": false, \"class_count\": null, \"memory_usage_mb\": 0.0}, \"recommendations\": [{\"rank\": 1, \"algorithm_id\": 7, \"algorithm_name\": \"K-Means\", \"short_name\": \"KMeans\", \"category\": \"Clustering\", \"confidence_score\": 60.0, \"suitability_score\": 60.0, \"strengths\": \"Simple\", \"weaknesses\": \"Need K\", \"best_for\": \"Segmentation\", \"complexity\": \"low\", \"interpretability\": \"medium\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09b2\\u09c7\\u09ac\\u09c7\\u09b2\\u09ac\\u09bf\\u09b9\\u09c0\\u09a8 \\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc K-Means Clustering \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.5}, {\"type\": \"negative\", \"text\": \"K-Means \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0995\\u09ae\\u09aa\\u0995\\u09cd\\u09b7\\u09c7 50 rows \\u09a6\\u09b0\\u0995\\u09be\\u09b0, \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 \\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u09ae\\u09be\\u09a4\\u09cd\\u09b0 9 rows \\u0986\\u099b\\u09c7\\u0964\", \"weight\": 1.2}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u0995\\u09cb\\u09a8\\u09cb missing value \\u09a8\\u09c7\\u0987, \\u09b8\\u09ac \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09ad\\u09be\\u09b2\\u09cb\\u0964\", \"weight\": 0.5}]}]}', 0, 0, '2026-05-05 20:14:23', '2026-05-05 20:14:23'),
(24, 33, 2, 'Analysis Report - Real_Combine.csv', 'The dataset contains 1,093 rows and 9 columns. Problem type: Regression. Top recommended algorithm: Linear Regression. Data quality score: 89.98/100.', 89.98, '• Missing Values: Numerical কলামে mean/median imputation এবং categorical কলামে mode বা \'Unknown\' দিয়ে পূরণ করুন।\n• Scaling: Numerical কলামগুলো StandardScaler বা MinMaxScaler দিয়ে normalize করুন।\n• Duplicates: ডুপ্লিকেট rows remove করুন।', '• Remove correlated features.\n• Apply feature scaling.\n• Perform outlier detection.', NULL, '{\"profile\": {\"total_rows\": 1093, \"total_columns\": 9, \"numeric_columns\": 9, \"categorical_columns\": 0, \"datetime_columns\": 0, \"text_columns\": 0, \"missing_value_percentage\": 0.01, \"duplicate_row_percentage\": 33.12, \"target_column\": \"PM 2.5\", \"problem_type\": \"regression\", \"is_imbalanced\": false, \"class_count\": null, \"memory_usage_mb\": 0.08}, \"recommendations\": [{\"rank\": 1, \"algorithm_id\": 5, \"algorithm_name\": \"Linear Regression\", \"short_name\": \"LinReg\", \"category\": \"Regression\", \"confidence_score\": 88.0, \"suitability_score\": 88.0, \"strengths\": \"Simple\", \"weaknesses\": \"Linear only\", \"best_for\": \"Continuous prediction\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Regression \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Linear Regression Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0989\\u09aa\\u09af\\u09c1\\u0995\\u09cd\\u09a4\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 1,093 rows \\u0986\\u099b\\u09c7, Linear Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u0995\\u09ae features (9) \\u098f\\u09ac\\u0982 \\u09ac\\u09c7\\u09b6\\u09bf\\u09b0\\u09ad\\u09be\\u0997 numeric \\u09b9\\u0993\\u09af\\u09bc\\u09be\\u09af\\u09bc Linear model \\u09ad\\u09be\\u09b2\\u09cb \\u0995\\u09be\\u099c \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 0.8}]}, {\"rank\": 2, \"algorithm_id\": 6, \"algorithm_name\": \"Ridge Regression\", \"short_name\": \"Ridge\", \"category\": \"Regression\", \"confidence_score\": 88.0, \"suitability_score\": 88.0, \"strengths\": \"Handles collinearity\", \"weaknesses\": \"Linear only\", \"best_for\": \"Correlated features\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Regression \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Ridge Regression Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0989\\u09aa\\u09af\\u09c1\\u0995\\u09cd\\u09a4\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 1,093 rows \\u0986\\u099b\\u09c7, Ridge Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u0995\\u09ae features (9) \\u098f\\u09ac\\u0982 \\u09ac\\u09c7\\u09b6\\u09bf\\u09b0\\u09ad\\u09be\\u0997 numeric \\u09b9\\u0993\\u09af\\u09bc\\u09be\\u09af\\u09bc Linear model \\u09ad\\u09be\\u09b2\\u09cb \\u0995\\u09be\\u099c \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 0.8}]}]}', 0, 0, '2026-05-05 20:22:42', '2026-05-05 20:22:42'),
(25, 34, 2, 'Analysis Report - income.csv', 'The dataset contains 1,500 rows and 5 columns. Problem type: Classification. Top recommended algorithm: Logistic Regression. Data quality score: 100.0/100.', 100.00, '• Scaling: Numerical কলামগুলো StandardScaler বা MinMaxScaler দিয়ে normalize করুন।', '• Remove correlated features.\n• Apply feature scaling.\n• Perform outlier detection.', NULL, '{\"profile\": {\"total_rows\": 1500, \"total_columns\": 5, \"numeric_columns\": 5, \"categorical_columns\": 0, \"datetime_columns\": 0, \"text_columns\": 0, \"missing_value_percentage\": 0.0, \"duplicate_row_percentage\": 0.0, \"target_column\": \"Gender\", \"problem_type\": \"classification\", \"is_imbalanced\": false, \"class_count\": 2, \"memory_usage_mb\": 0.06}, \"recommendations\": [{\"rank\": 1, \"algorithm_id\": 2, \"algorithm_name\": \"Logistic Regression\", \"short_name\": \"LR\", \"category\": \"Classification\", \"confidence_score\": 88.0, \"suitability_score\": 88.0, \"strengths\": \"Fast\", \"weaknesses\": \"Linear only\", \"best_for\": \"Binary classification\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Logistic Regression Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 1,500 rows \\u0986\\u099b\\u09c7, Logistic Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u0995\\u09cb\\u09a8\\u09cb missing value \\u09a8\\u09c7\\u0987, \\u09b8\\u09ac \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09ad\\u09be\\u09b2\\u09cb\\u0964\", \"weight\": 0.5}, {\"type\": \"positive\", \"text\": \"\\u0995\\u09ae features (5) \\u098f\\u09ac\\u0982 \\u09ac\\u09c7\\u09b6\\u09bf\\u09b0\\u09ad\\u09be\\u0997 numeric \\u09b9\\u0993\\u09af\\u09bc\\u09be\\u09af\\u09bc Linear model \\u09ad\\u09be\\u09b2\\u09cb \\u0995\\u09be\\u099c \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 0.8}]}, {\"rank\": 2, \"algorithm_id\": 1, \"algorithm_name\": \"Random Forest\", \"short_name\": \"RF\", \"category\": \"Classification\", \"confidence_score\": 83.0, \"suitability_score\": 83.0, \"strengths\": \"Robust\", \"weaknesses\": \"Slow\", \"best_for\": \"Mixed data\", \"complexity\": \"medium\", \"interpretability\": \"medium\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Random Forest Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 1,500 rows \\u0986\\u099b\\u09c7, Random Forest \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u0995\\u09cb\\u09a8\\u09cb missing value \\u09a8\\u09c7\\u0987, \\u09b8\\u09ac \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09ad\\u09be\\u09b2\\u09cb\\u0964\", \"weight\": 0.5}]}, {\"rank\": 3, \"algorithm_id\": 3, \"algorithm_name\": \"Decision Tree\", \"short_name\": \"DT\", \"category\": \"Classification\", \"confidence_score\": 83.0, \"suitability_score\": 83.0, \"strengths\": \"Interpretable\", \"weaknesses\": \"Overfitting\", \"best_for\": \"Simple classification\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Decision Tree Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 1,500 rows \\u0986\\u099b\\u09c7, Decision Tree \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u0995\\u09cb\\u09a8\\u09cb missing value \\u09a8\\u09c7\\u0987, \\u09b8\\u09ac \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09ad\\u09be\\u09b2\\u09cb\\u0964\", \"weight\": 0.5}]}, {\"rank\": 4, \"algorithm_id\": 4, \"algorithm_name\": \"XGBoost\", \"short_name\": \"XGB\", \"category\": \"Classification\", \"confidence_score\": 83.0, \"suitability_score\": 83.0, \"strengths\": \"Very accurate\", \"weaknesses\": \"Complex\", \"best_for\": \"Structured data\", \"complexity\": \"high\", \"interpretability\": \"low\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 XGBoost Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 1,500 rows \\u0986\\u099b\\u09c7, XGBoost \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u0995\\u09cb\\u09a8\\u09cb missing value \\u09a8\\u09c7\\u0987, \\u09b8\\u09ac \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09ad\\u09be\\u09b2\\u09cb\\u0964\", \"weight\": 0.5}]}]}', 0, 0, '2026-05-05 20:27:28', '2026-05-05 20:27:28'),
(26, 35, 2, 'Analysis Report - brands.csv', 'The dataset contains 9 rows and 2 columns. Problem type: Clustering. Top recommended algorithm: K-Means. Data quality score: 80.0/100.', 80.00, '• Scaling: Numerical কলামগুলো StandardScaler বা MinMaxScaler দিয়ে normalize করুন।', '• Remove correlated features.\n• Apply feature scaling.\n• Perform outlier detection.', NULL, '{\"profile\": {\"total_rows\": 9, \"total_columns\": 2, \"numeric_columns\": 1, \"categorical_columns\": 0, \"datetime_columns\": 0, \"text_columns\": 1, \"missing_value_percentage\": 0.0, \"duplicate_row_percentage\": 0.0, \"target_column\": null, \"problem_type\": \"clustering\", \"is_imbalanced\": false, \"class_count\": null, \"memory_usage_mb\": 0.0}, \"recommendations\": [{\"rank\": 1, \"algorithm_id\": 7, \"algorithm_name\": \"K-Means\", \"short_name\": \"KMeans\", \"category\": \"Clustering\", \"confidence_score\": 60.0, \"suitability_score\": 60.0, \"strengths\": \"Simple\", \"weaknesses\": \"Need K\", \"best_for\": \"Segmentation\", \"complexity\": \"low\", \"interpretability\": \"medium\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09b2\\u09c7\\u09ac\\u09c7\\u09b2\\u09ac\\u09bf\\u09b9\\u09c0\\u09a8 \\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc K-Means Clustering \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.5}, {\"type\": \"negative\", \"text\": \"K-Means \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0995\\u09ae\\u09aa\\u0995\\u09cd\\u09b7\\u09c7 50 rows \\u09a6\\u09b0\\u0995\\u09be\\u09b0, \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 \\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u09ae\\u09be\\u09a4\\u09cd\\u09b0 9 rows \\u0986\\u099b\\u09c7\\u0964\", \"weight\": 1.2}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u0995\\u09cb\\u09a8\\u09cb missing value \\u09a8\\u09c7\\u0987, \\u09b8\\u09ac \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09ad\\u09be\\u09b2\\u09cb\\u0964\", \"weight\": 0.5}]}]}', 0, 0, '2026-05-06 04:46:08', '2026-05-06 04:46:08'),
(27, 36, 2, 'Analysis Report - train_u6lujuX_CVtuZ9i.csv', 'The dataset contains 614 rows and 13 columns. Problem type: Classification. Top recommended algorithm: Random Forest. Data quality score: 97.2/100.', 97.20, '• Missing Values: Numerical কলামে mean/median imputation এবং categorical কলামে mode বা \'Unknown\' দিয়ে পূরণ করুন।\n• Encoding: Categorical কলামগুলো Label Encoding বা One-Hot Encoding করুন।\n• Scaling: Numerical কলামগুলো StandardScaler বা MinMaxScaler দিয়ে normalize করুন।', '• Remove correlated features.\n• Apply feature scaling.\n• Perform outlier detection.', NULL, '{\"profile\": {\"total_rows\": 614, \"total_columns\": 13, \"numeric_columns\": 5, \"categorical_columns\": 7, \"datetime_columns\": 0, \"text_columns\": 1, \"missing_value_percentage\": 1.87, \"duplicate_row_percentage\": 0.0, \"target_column\": \"Loan_Status\", \"problem_type\": \"classification\", \"is_imbalanced\": false, \"class_count\": 2, \"memory_usage_mb\": 0.27}, \"recommendations\": [{\"rank\": 1, \"algorithm_id\": 1, \"algorithm_name\": \"Random Forest\", \"short_name\": \"RF\", \"category\": \"Classification\", \"confidence_score\": 91.0, \"suitability_score\": 91.0, \"strengths\": \"Robust\", \"weaknesses\": \"Slow\", \"best_for\": \"Mixed data\", \"complexity\": \"medium\", \"interpretability\": \"medium\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Random Forest Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 614 rows \\u0986\\u099b\\u09c7, Random Forest \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"7\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7 \\u098f\\u09ac\\u0982 Random Forest \\u09b8\\u09c7\\u099f\\u09bf \\u09b8\\u09b0\\u09be\\u09b8\\u09b0\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.0}]}, {\"rank\": 2, \"algorithm_id\": 3, \"algorithm_name\": \"Decision Tree\", \"short_name\": \"DT\", \"category\": \"Classification\", \"confidence_score\": 91.0, \"suitability_score\": 91.0, \"strengths\": \"Interpretable\", \"weaknesses\": \"Overfitting\", \"best_for\": \"Simple classification\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Decision Tree Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 614 rows \\u0986\\u099b\\u09c7, Decision Tree \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"7\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7 \\u098f\\u09ac\\u0982 Decision Tree \\u09b8\\u09c7\\u099f\\u09bf \\u09b8\\u09b0\\u09be\\u09b8\\u09b0\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.0}]}, {\"rank\": 3, \"algorithm_id\": 2, \"algorithm_name\": \"Logistic Regression\", \"short_name\": \"LR\", \"category\": \"Classification\", \"confidence_score\": 75.0, \"suitability_score\": 75.0, \"strengths\": \"Fast\", \"weaknesses\": \"Linear only\", \"best_for\": \"Binary classification\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Logistic Regression Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 614 rows \\u0986\\u099b\\u09c7, Logistic Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"negative\", \"text\": \"7\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7, Logistic Regression \\u09ac\\u09cd\\u09af\\u09ac\\u09b9\\u09be\\u09b0\\u09c7\\u09b0 \\u0986\\u0997\\u09c7 encoding \\u09aa\\u09cd\\u09b0\\u09af\\u09bc\\u09cb\\u099c\\u09a8\\u0964\", \"weight\": 0.8}]}, {\"rank\": 4, \"algorithm_id\": 4, \"algorithm_name\": \"XGBoost\", \"short_name\": \"XGB\", \"category\": \"Classification\", \"confidence_score\": 75.0, \"suitability_score\": 75.0, \"strengths\": \"Very accurate\", \"weaknesses\": \"Complex\", \"best_for\": \"Structured data\", \"complexity\": \"high\", \"interpretability\": \"low\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 XGBoost Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 614 rows \\u0986\\u099b\\u09c7, XGBoost \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"negative\", \"text\": \"7\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7, XGBoost \\u09ac\\u09cd\\u09af\\u09ac\\u09b9\\u09be\\u09b0\\u09c7\\u09b0 \\u0986\\u0997\\u09c7 encoding \\u09aa\\u09cd\\u09b0\\u09af\\u09bc\\u09cb\\u099c\\u09a8\\u0964\", \"weight\": 0.8}]}]}', 0, 0, '2026-05-06 05:04:05', '2026-05-06 05:04:05'),
(28, 37, 2, 'Analysis Report - Real_Combine.csv', 'The dataset contains 1,093 rows and 9 columns. Problem type: Regression. Top recommended algorithm: Linear Regression. Data quality score: 89.98/100.', 89.98, '• Missing Values: Numerical কলামে mean/median imputation এবং categorical কলামে mode বা \'Unknown\' দিয়ে পূরণ করুন।\n• Scaling: Numerical কলামগুলো StandardScaler বা MinMaxScaler দিয়ে normalize করুন।\n• Duplicates: ডুপ্লিকেট rows remove করুন।', '• Remove correlated features.\n• Apply feature scaling.\n• Perform outlier detection.', NULL, '{\"profile\": {\"total_rows\": 1093, \"total_columns\": 9, \"numeric_columns\": 9, \"categorical_columns\": 0, \"datetime_columns\": 0, \"text_columns\": 0, \"missing_value_percentage\": 0.01, \"duplicate_row_percentage\": 33.12, \"target_column\": \"PM 2.5\", \"problem_type\": \"regression\", \"is_imbalanced\": false, \"class_count\": null, \"memory_usage_mb\": 0.08}, \"recommendations\": [{\"rank\": 1, \"algorithm_id\": 5, \"algorithm_name\": \"Linear Regression\", \"short_name\": \"LinReg\", \"category\": \"Regression\", \"confidence_score\": 88.0, \"suitability_score\": 88.0, \"strengths\": \"Simple\", \"weaknesses\": \"Linear only\", \"best_for\": \"Continuous prediction\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Regression \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Linear Regression Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0989\\u09aa\\u09af\\u09c1\\u0995\\u09cd\\u09a4\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 1,093 rows \\u0986\\u099b\\u09c7, Linear Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u0995\\u09ae features (9) \\u098f\\u09ac\\u0982 \\u09ac\\u09c7\\u09b6\\u09bf\\u09b0\\u09ad\\u09be\\u0997 numeric \\u09b9\\u0993\\u09af\\u09bc\\u09be\\u09af\\u09bc Linear model \\u09ad\\u09be\\u09b2\\u09cb \\u0995\\u09be\\u099c \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 0.8}]}, {\"rank\": 2, \"algorithm_id\": 6, \"algorithm_name\": \"Ridge Regression\", \"short_name\": \"Ridge\", \"category\": \"Regression\", \"confidence_score\": 88.0, \"suitability_score\": 88.0, \"strengths\": \"Handles collinearity\", \"weaknesses\": \"Linear only\", \"best_for\": \"Correlated features\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Regression \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Ridge Regression Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0989\\u09aa\\u09af\\u09c1\\u0995\\u09cd\\u09a4\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 1,093 rows \\u0986\\u099b\\u09c7, Ridge Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u0995\\u09ae features (9) \\u098f\\u09ac\\u0982 \\u09ac\\u09c7\\u09b6\\u09bf\\u09b0\\u09ad\\u09be\\u0997 numeric \\u09b9\\u0993\\u09af\\u09bc\\u09be\\u09af\\u09bc Linear model \\u09ad\\u09be\\u09b2\\u09cb \\u0995\\u09be\\u099c \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 0.8}]}]}', 0, 0, '2026-05-06 05:05:30', '2026-05-06 05:05:30'),
(29, 38, 2, 'Analysis Report - bal2.csv', 'The dataset contains 50,000 rows and 1 columns. Problem type: Clustering. Top recommended algorithm: K-Means. Data quality score: 100.0/100.', 100.00, '• ডেটাসেটটি ভালো অবস্থায় আছে। সরাসরি মডেল ট্রেন করা যাবে।', '• Remove correlated features.\n• Apply feature scaling.\n• Perform outlier detection.', NULL, '{\"profile\": {\"total_rows\": 50000, \"total_columns\": 1, \"numeric_columns\": 0, \"categorical_columns\": 0, \"datetime_columns\": 0, \"text_columns\": 1, \"missing_value_percentage\": 0.0, \"duplicate_row_percentage\": 0.0, \"target_column\": null, \"problem_type\": \"clustering\", \"is_imbalanced\": false, \"class_count\": null, \"memory_usage_mb\": 3.55}, \"recommendations\": [{\"rank\": 1, \"algorithm_id\": 7, \"algorithm_name\": \"K-Means\", \"short_name\": \"KMeans\", \"category\": \"Clustering\", \"confidence_score\": 83.0, \"suitability_score\": 83.0, \"strengths\": \"Simple\", \"weaknesses\": \"Need K\", \"best_for\": \"Segmentation\", \"complexity\": \"low\", \"interpretability\": \"medium\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09b2\\u09c7\\u09ac\\u09c7\\u09b2\\u09ac\\u09bf\\u09b9\\u09c0\\u09a8 \\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc K-Means Clustering \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 50,000 rows \\u0986\\u099b\\u09c7, K-Means \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u0995\\u09cb\\u09a8\\u09cb missing value \\u09a8\\u09c7\\u0987, \\u09b8\\u09ac \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09ad\\u09be\\u09b2\\u09cb\\u0964\", \"weight\": 0.5}]}]}', 0, 0, '2026-05-06 07:01:20', '2026-05-06 07:01:20');
INSERT INTO `analysis_reports` (`id`, `upload_id`, `user_id`, `report_title`, `report_summary`, `data_quality_score`, `recommended_preprocessing`, `feature_engineering_tips`, `report_html`, `report_json`, `is_public`, `view_count`, `created_at`, `updated_at`) VALUES
(30, 39, 2, 'Analysis Report - weather_data.csv', 'The dataset contains 10 rows and 4 columns. Problem type: Classification. Top recommended algorithm: Random Forest. Data quality score: 80.0/100.', 80.00, '• Encoding: Categorical কলামগুলো Label Encoding বা One-Hot Encoding করুন।', '• Remove correlated features.\n• Apply feature scaling.\n• Perform outlier detection.', NULL, '{\"profile\": {\"total_rows\": 10, \"total_columns\": 4, \"numeric_columns\": 0, \"categorical_columns\": 4, \"datetime_columns\": 0, \"text_columns\": 0, \"missing_value_percentage\": 0.0, \"duplicate_row_percentage\": 0.0, \"target_column\": \"Play\", \"problem_type\": \"classification\", \"is_imbalanced\": false, \"class_count\": 2, \"memory_usage_mb\": 0.0}, \"recommendations\": [{\"rank\": 1, \"algorithm_id\": 1, \"algorithm_name\": \"Random Forest\", \"short_name\": \"RF\", \"category\": \"Classification\", \"confidence_score\": 68.0, \"suitability_score\": 68.0, \"strengths\": \"Robust\", \"weaknesses\": \"Slow\", \"best_for\": \"Mixed data\", \"complexity\": \"medium\", \"interpretability\": \"medium\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Random Forest Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"negative\", \"text\": \"Random Forest \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0995\\u09ae\\u09aa\\u0995\\u09cd\\u09b7\\u09c7 100 rows \\u09a6\\u09b0\\u0995\\u09be\\u09b0, \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 \\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u09ae\\u09be\\u09a4\\u09cd\\u09b0 10 rows \\u0986\\u099b\\u09c7\\u0964\", \"weight\": 1.2}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u0995\\u09cb\\u09a8\\u09cb missing value \\u09a8\\u09c7\\u0987, \\u09b8\\u09ac \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09ad\\u09be\\u09b2\\u09cb\\u0964\", \"weight\": 0.5}, {\"type\": \"positive\", \"text\": \"4\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7 \\u098f\\u09ac\\u0982 Random Forest \\u09b8\\u09c7\\u099f\\u09bf \\u09b8\\u09b0\\u09be\\u09b8\\u09b0\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.0}]}, {\"rank\": 2, \"algorithm_id\": 3, \"algorithm_name\": \"Decision Tree\", \"short_name\": \"DT\", \"category\": \"Classification\", \"confidence_score\": 68.0, \"suitability_score\": 68.0, \"strengths\": \"Interpretable\", \"weaknesses\": \"Overfitting\", \"best_for\": \"Simple classification\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Decision Tree Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"negative\", \"text\": \"Decision Tree \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0995\\u09ae\\u09aa\\u0995\\u09cd\\u09b7\\u09c7 50 rows \\u09a6\\u09b0\\u0995\\u09be\\u09b0, \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 \\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u09ae\\u09be\\u09a4\\u09cd\\u09b0 10 rows \\u0986\\u099b\\u09c7\\u0964\", \"weight\": 1.2}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u0995\\u09cb\\u09a8\\u09cb missing value \\u09a8\\u09c7\\u0987, \\u09b8\\u09ac \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09ad\\u09be\\u09b2\\u09cb\\u0964\", \"weight\": 0.5}, {\"type\": \"positive\", \"text\": \"4\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7 \\u098f\\u09ac\\u0982 Decision Tree \\u09b8\\u09c7\\u099f\\u09bf \\u09b8\\u09b0\\u09be\\u09b8\\u09b0\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.0}]}, {\"rank\": 3, \"algorithm_id\": 2, \"algorithm_name\": \"Logistic Regression\", \"short_name\": \"LR\", \"category\": \"Classification\", \"confidence_score\": 52.0, \"suitability_score\": 52.0, \"strengths\": \"Fast\", \"weaknesses\": \"Linear only\", \"best_for\": \"Binary classification\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Logistic Regression Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"negative\", \"text\": \"Logistic Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0995\\u09ae\\u09aa\\u0995\\u09cd\\u09b7\\u09c7 50 rows \\u09a6\\u09b0\\u0995\\u09be\\u09b0, \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 \\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u09ae\\u09be\\u09a4\\u09cd\\u09b0 10 rows \\u0986\\u099b\\u09c7\\u0964\", \"weight\": 1.2}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u0995\\u09cb\\u09a8\\u09cb missing value \\u09a8\\u09c7\\u0987, \\u09b8\\u09ac \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09ad\\u09be\\u09b2\\u09cb\\u0964\", \"weight\": 0.5}, {\"type\": \"negative\", \"text\": \"4\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7, Logistic Regression \\u09ac\\u09cd\\u09af\\u09ac\\u09b9\\u09be\\u09b0\\u09c7\\u09b0 \\u0986\\u0997\\u09c7 encoding \\u09aa\\u09cd\\u09b0\\u09af\\u09bc\\u09cb\\u099c\\u09a8\\u0964\", \"weight\": 0.8}]}, {\"rank\": 4, \"algorithm_id\": 4, \"algorithm_name\": \"XGBoost\", \"short_name\": \"XGB\", \"category\": \"Classification\", \"confidence_score\": 52.0, \"suitability_score\": 52.0, \"strengths\": \"Very accurate\", \"weaknesses\": \"Complex\", \"best_for\": \"Structured data\", \"complexity\": \"high\", \"interpretability\": \"low\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 XGBoost Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"negative\", \"text\": \"XGBoost \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0995\\u09ae\\u09aa\\u0995\\u09cd\\u09b7\\u09c7 100 rows \\u09a6\\u09b0\\u0995\\u09be\\u09b0, \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 \\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u09ae\\u09be\\u09a4\\u09cd\\u09b0 10 rows \\u0986\\u099b\\u09c7\\u0964\", \"weight\": 1.2}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u0995\\u09cb\\u09a8\\u09cb missing value \\u09a8\\u09c7\\u0987, \\u09b8\\u09ac \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09ad\\u09be\\u09b2\\u09cb\\u0964\", \"weight\": 0.5}, {\"type\": \"negative\", \"text\": \"4\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7, XGBoost \\u09ac\\u09cd\\u09af\\u09ac\\u09b9\\u09be\\u09b0\\u09c7\\u09b0 \\u0986\\u0997\\u09c7 encoding \\u09aa\\u09cd\\u09b0\\u09af\\u09bc\\u09cb\\u099c\\u09a8\\u0964\", \"weight\": 0.8}]}]}', 0, 0, '2026-05-06 17:28:47', '2026-05-06 17:28:47'),
(31, 40, 2, 'Analysis Report - gt.csv', 'The dataset contains 25 rows and 2 columns. Problem type: Clustering. Top recommended algorithm: K-Means. Data quality score: 80.0/100.', 80.00, '• ডেটাসেটটি ভালো অবস্থায় আছে। সরাসরি মডেল ট্রেন করা যাবে।', '• Remove correlated features.\n• Apply feature scaling.\n• Perform outlier detection.', NULL, '{\"profile\": {\"total_rows\": 25, \"total_columns\": 2, \"numeric_columns\": 0, \"categorical_columns\": 0, \"datetime_columns\": 0, \"text_columns\": 2, \"missing_value_percentage\": 0.0, \"duplicate_row_percentage\": 0.0, \"target_column\": null, \"problem_type\": \"clustering\", \"is_imbalanced\": false, \"class_count\": null, \"memory_usage_mb\": 0.01}, \"recommendations\": [{\"rank\": 1, \"algorithm_id\": 7, \"algorithm_name\": \"K-Means\", \"short_name\": \"KMeans\", \"category\": \"Clustering\", \"confidence_score\": 60.0, \"suitability_score\": 60.0, \"strengths\": \"Simple\", \"weaknesses\": \"Need K\", \"best_for\": \"Segmentation\", \"complexity\": \"low\", \"interpretability\": \"medium\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09b2\\u09c7\\u09ac\\u09c7\\u09b2\\u09ac\\u09bf\\u09b9\\u09c0\\u09a8 \\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc K-Means Clustering \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.5}, {\"type\": \"negative\", \"text\": \"K-Means \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0995\\u09ae\\u09aa\\u0995\\u09cd\\u09b7\\u09c7 50 rows \\u09a6\\u09b0\\u0995\\u09be\\u09b0, \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 \\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u09ae\\u09be\\u09a4\\u09cd\\u09b0 25 rows \\u0986\\u099b\\u09c7\\u0964\", \"weight\": 1.2}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u0995\\u09cb\\u09a8\\u09cb missing value \\u09a8\\u09c7\\u0987, \\u09b8\\u09ac \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09ad\\u09be\\u09b2\\u09cb\\u0964\", \"weight\": 0.5}]}]}', 0, 0, '2026-07-24 13:58:54', '2026-07-24 13:58:54'),
(32, 41, 5, 'Analysis Report - gt.csv', 'The dataset contains 25 rows and 2 columns. Problem type: Clustering. Top recommended algorithm: K-Means. Data quality score: 80.0/100.', 80.00, '• ডেটাসেটটি ভালো অবস্থায় আছে। সরাসরি মডেল ট্রেন করা যাবে।', '• Remove correlated features.\n• Apply feature scaling.\n• Perform outlier detection.', NULL, '{\"profile\": {\"total_rows\": 25, \"total_columns\": 2, \"numeric_columns\": 0, \"categorical_columns\": 0, \"datetime_columns\": 0, \"text_columns\": 2, \"missing_value_percentage\": 0.0, \"duplicate_row_percentage\": 0.0, \"target_column\": null, \"problem_type\": \"clustering\", \"is_imbalanced\": false, \"class_count\": null, \"memory_usage_mb\": 0.01}, \"recommendations\": [{\"rank\": 1, \"algorithm_id\": 7, \"algorithm_name\": \"K-Means\", \"short_name\": \"KMeans\", \"category\": \"Clustering\", \"confidence_score\": 60.0, \"suitability_score\": 60.0, \"strengths\": \"Simple\", \"weaknesses\": \"Need K\", \"best_for\": \"Segmentation\", \"complexity\": \"low\", \"interpretability\": \"medium\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09b2\\u09c7\\u09ac\\u09c7\\u09b2\\u09ac\\u09bf\\u09b9\\u09c0\\u09a8 \\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc K-Means Clustering \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.5}, {\"type\": \"negative\", \"text\": \"K-Means \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0995\\u09ae\\u09aa\\u0995\\u09cd\\u09b7\\u09c7 50 rows \\u09a6\\u09b0\\u0995\\u09be\\u09b0, \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 \\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u09ae\\u09be\\u09a4\\u09cd\\u09b0 25 rows \\u0986\\u099b\\u09c7\\u0964\", \"weight\": 1.2}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u0995\\u09cb\\u09a8\\u09cb missing value \\u09a8\\u09c7\\u0987, \\u09b8\\u09ac \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09ad\\u09be\\u09b2\\u09cb\\u0964\", \"weight\": 0.5}]}]}', 0, 0, '2026-07-25 07:32:31', '2026-07-25 07:32:31'),
(33, 42, 6, 'Analysis Report - gt.csv', 'The dataset contains 25 rows and 2 columns. Problem type: Clustering. Top recommended algorithm: K-Means. Data quality score: 80.0/100.', 80.00, '• ডেটাসেটটি ভালো অবস্থায় আছে। সরাসরি মডেল ট্রেন করা যাবে।', '• Remove correlated features.\n• Apply feature scaling.\n• Perform outlier detection.', NULL, '{\"profile\": {\"total_rows\": 25, \"total_columns\": 2, \"numeric_columns\": 0, \"categorical_columns\": 0, \"datetime_columns\": 0, \"text_columns\": 2, \"missing_value_percentage\": 0.0, \"duplicate_row_percentage\": 0.0, \"target_column\": null, \"problem_type\": \"clustering\", \"is_imbalanced\": false, \"class_count\": null, \"memory_usage_mb\": 0.01}, \"recommendations\": [{\"rank\": 1, \"algorithm_id\": 7, \"algorithm_name\": \"K-Means\", \"short_name\": \"KMeans\", \"category\": \"Clustering\", \"confidence_score\": 60.0, \"suitability_score\": 60.0, \"strengths\": \"Simple\", \"weaknesses\": \"Need K\", \"best_for\": \"Segmentation\", \"complexity\": \"low\", \"interpretability\": \"medium\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09b2\\u09c7\\u09ac\\u09c7\\u09b2\\u09ac\\u09bf\\u09b9\\u09c0\\u09a8 \\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc K-Means Clustering \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.5}, {\"type\": \"negative\", \"text\": \"K-Means \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0995\\u09ae\\u09aa\\u0995\\u09cd\\u09b7\\u09c7 50 rows \\u09a6\\u09b0\\u0995\\u09be\\u09b0, \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 \\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u09ae\\u09be\\u09a4\\u09cd\\u09b0 25 rows \\u0986\\u099b\\u09c7\\u0964\", \"weight\": 1.2}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc \\u0995\\u09cb\\u09a8\\u09cb missing value \\u09a8\\u09c7\\u0987, \\u09b8\\u09ac \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09ad\\u09be\\u09b2\\u09cb\\u0964\", \"weight\": 0.5}]}]}', 0, 0, '2026-07-25 16:37:33', '2026-07-25 16:37:33'),
(34, 43, 6, 'Analysis Report - annual-enterprise-survey-2025-financial-year-provisional-size-bands.csv', 'The dataset contains 23,220 rows and 16 columns. Problem type: Classification. Top recommended algorithm: Random Forest. Data quality score: 70.0/100.', 70.00, '• Missing Values: Numerical কলামে mean/median imputation এবং categorical কলামে mode বা \'Unknown\' দিয়ে পূরণ করুন।\n• Encoding: Categorical কলামগুলো Label Encoding বা One-Hot Encoding করুন।\n• Scaling: Numerical কলামগুলো StandardScaler বা MinMaxScaler দিয়ে normalize করুন।', '• Remove correlated features.\n• Apply feature scaling.\n• Perform outlier detection.', NULL, '{\"profile\": {\"total_rows\": 23220, \"total_columns\": 16, \"numeric_columns\": 4, \"categorical_columns\": 12, \"datetime_columns\": 0, \"text_columns\": 0, \"missing_value_percentage\": 56.17, \"duplicate_row_percentage\": 0.0, \"target_column\": \"Unnamed: 15\", \"problem_type\": \"classification\", \"is_imbalanced\": false, \"class_count\": 1, \"memory_usage_mb\": 13.14}, \"recommendations\": [{\"rank\": 1, \"algorithm_id\": 1, \"algorithm_name\": \"Random Forest\", \"short_name\": \"RF\", \"category\": \"Classification\", \"confidence_score\": 100.0, \"suitability_score\": 100.0, \"strengths\": \"Robust\", \"weaknesses\": \"Slow\", \"best_for\": \"Mixed data\", \"complexity\": \"medium\", \"interpretability\": \"medium\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Random Forest Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 23,220 rows \\u0986\\u099b\\u09c7, Random Forest \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc 56.2% missing values \\u0986\\u099b\\u09c7 \\u098f\\u09ac\\u0982 Random Forest \\u09b8\\u09c7\\u099f\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"12\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7 \\u098f\\u09ac\\u0982 Random Forest \\u09b8\\u09c7\\u099f\\u09bf \\u09b8\\u09b0\\u09be\\u09b8\\u09b0\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.0}]}, {\"rank\": 2, \"algorithm_id\": 4, \"algorithm_name\": \"XGBoost\", \"short_name\": \"XGB\", \"category\": \"Classification\", \"confidence_score\": 85.0, \"suitability_score\": 85.0, \"strengths\": \"Very accurate\", \"weaknesses\": \"Complex\", \"best_for\": \"Structured data\", \"complexity\": \"high\", \"interpretability\": \"low\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 XGBoost Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 23,220 rows \\u0986\\u099b\\u09c7, XGBoost \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc 56.2% missing values \\u0986\\u099b\\u09c7 \\u098f\\u09ac\\u0982 XGBoost \\u09b8\\u09c7\\u099f\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.0}, {\"type\": \"negative\", \"text\": \"12\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7, XGBoost \\u09ac\\u09cd\\u09af\\u09ac\\u09b9\\u09be\\u09b0\\u09c7\\u09b0 \\u0986\\u0997\\u09c7 encoding \\u09aa\\u09cd\\u09b0\\u09af\\u09bc\\u09cb\\u099c\\u09a8\\u0964\", \"weight\": 0.8}]}, {\"rank\": 3, \"algorithm_id\": 3, \"algorithm_name\": \"Decision Tree\", \"short_name\": \"DT\", \"category\": \"Classification\", \"confidence_score\": 79.0, \"suitability_score\": 79.0, \"strengths\": \"Interpretable\", \"weaknesses\": \"Overfitting\", \"best_for\": \"Simple classification\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Decision Tree Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 23,220 rows \\u0986\\u099b\\u09c7, Decision Tree \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"negative\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc 56.2% missing values \\u0986\\u099b\\u09c7 \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 Decision Tree \\u09b8\\u09b0\\u09be\\u09b8\\u09b0\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7 \\u09a8\\u09be\\u0964 Imputation \\u09a6\\u09b0\\u0995\\u09be\\u09b0 \\u09b9\\u09ac\\u09c7\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"12\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7 \\u098f\\u09ac\\u0982 Decision Tree \\u09b8\\u09c7\\u099f\\u09bf \\u09b8\\u09b0\\u09be\\u09b8\\u09b0\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.0}]}, {\"rank\": 4, \"algorithm_id\": 2, \"algorithm_name\": \"Logistic Regression\", \"short_name\": \"LR\", \"category\": \"Classification\", \"confidence_score\": 63.0, \"suitability_score\": 63.0, \"strengths\": \"Fast\", \"weaknesses\": \"Linear only\", \"best_for\": \"Binary classification\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Logistic Regression Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 23,220 rows \\u0986\\u099b\\u09c7, Logistic Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"negative\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc 56.2% missing values \\u0986\\u099b\\u09c7 \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 Logistic Regression \\u09b8\\u09b0\\u09be\\u09b8\\u09b0\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7 \\u09a8\\u09be\\u0964 Imputation \\u09a6\\u09b0\\u0995\\u09be\\u09b0 \\u09b9\\u09ac\\u09c7\\u0964\", \"weight\": 1.0}, {\"type\": \"negative\", \"text\": \"12\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7, Logistic Regression \\u09ac\\u09cd\\u09af\\u09ac\\u09b9\\u09be\\u09b0\\u09c7\\u09b0 \\u0986\\u0997\\u09c7 encoding \\u09aa\\u09cd\\u09b0\\u09af\\u09bc\\u09cb\\u099c\\u09a8\\u0964\", \"weight\": 0.8}]}]}', 0, 0, '2026-07-25 16:40:54', '2026-07-25 16:40:54'),
(35, 44, 6, 'Analysis Report - business-financial-data-march-2026-quarter.csv', 'The dataset contains 9,555 rows and 14 columns. Problem type: Classification. Top recommended algorithm: Random Forest. Data quality score: 78.54/100.', 78.54, '• Missing Values: Numerical কলামে mean/median imputation এবং categorical কলামে mode বা \'Unknown\' দিয়ে পূরণ করুন।\n• Encoding: Categorical কলামগুলো Label Encoding বা One-Hot Encoding করুন।\n• Scaling: Numerical কলামগুলো StandardScaler বা MinMaxScaler দিয়ে normalize করুন।', '• Remove correlated features.\n• Apply feature scaling.\n• Perform outlier detection.', NULL, '{\"profile\": {\"total_rows\": 9555, \"total_columns\": 14, \"numeric_columns\": 4, \"categorical_columns\": 10, \"datetime_columns\": 0, \"text_columns\": 0, \"missing_value_percentage\": 14.31, \"duplicate_row_percentage\": 0.0, \"target_column\": \"Series_title_5\", \"problem_type\": \"classification\", \"is_imbalanced\": false, \"class_count\": 0, \"memory_usage_mb\": 6.2}, \"recommendations\": [{\"rank\": 1, \"algorithm_id\": 1, \"algorithm_name\": \"Random Forest\", \"short_name\": \"RF\", \"category\": \"Classification\", \"confidence_score\": 100.0, \"suitability_score\": 100.0, \"strengths\": \"Robust\", \"weaknesses\": \"Slow\", \"best_for\": \"Mixed data\", \"complexity\": \"medium\", \"interpretability\": \"medium\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Random Forest Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 9,555 rows \\u0986\\u099b\\u09c7, Random Forest \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc 14.3% missing values \\u0986\\u099b\\u09c7 \\u098f\\u09ac\\u0982 Random Forest \\u09b8\\u09c7\\u099f\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"10\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7 \\u098f\\u09ac\\u0982 Random Forest \\u09b8\\u09c7\\u099f\\u09bf \\u09b8\\u09b0\\u09be\\u09b8\\u09b0\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.0}]}, {\"rank\": 2, \"algorithm_id\": 4, \"algorithm_name\": \"XGBoost\", \"short_name\": \"XGB\", \"category\": \"Classification\", \"confidence_score\": 85.0, \"suitability_score\": 85.0, \"strengths\": \"Very accurate\", \"weaknesses\": \"Complex\", \"best_for\": \"Structured data\", \"complexity\": \"high\", \"interpretability\": \"low\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 XGBoost Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 9,555 rows \\u0986\\u099b\\u09c7, XGBoost \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc 14.3% missing values \\u0986\\u099b\\u09c7 \\u098f\\u09ac\\u0982 XGBoost \\u09b8\\u09c7\\u099f\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.0}, {\"type\": \"negative\", \"text\": \"10\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7, XGBoost \\u09ac\\u09cd\\u09af\\u09ac\\u09b9\\u09be\\u09b0\\u09c7\\u09b0 \\u0986\\u0997\\u09c7 encoding \\u09aa\\u09cd\\u09b0\\u09af\\u09bc\\u09cb\\u099c\\u09a8\\u0964\", \"weight\": 0.8}]}, {\"rank\": 3, \"algorithm_id\": 3, \"algorithm_name\": \"Decision Tree\", \"short_name\": \"DT\", \"category\": \"Classification\", \"confidence_score\": 79.0, \"suitability_score\": 79.0, \"strengths\": \"Interpretable\", \"weaknesses\": \"Overfitting\", \"best_for\": \"Simple classification\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Decision Tree Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 9,555 rows \\u0986\\u099b\\u09c7, Decision Tree \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"negative\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc 14.3% missing values \\u0986\\u099b\\u09c7 \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 Decision Tree \\u09b8\\u09b0\\u09be\\u09b8\\u09b0\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7 \\u09a8\\u09be\\u0964 Imputation \\u09a6\\u09b0\\u0995\\u09be\\u09b0 \\u09b9\\u09ac\\u09c7\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"10\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7 \\u098f\\u09ac\\u0982 Decision Tree \\u09b8\\u09c7\\u099f\\u09bf \\u09b8\\u09b0\\u09be\\u09b8\\u09b0\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.0}]}, {\"rank\": 4, \"algorithm_id\": 2, \"algorithm_name\": \"Logistic Regression\", \"short_name\": \"LR\", \"category\": \"Classification\", \"confidence_score\": 63.0, \"suitability_score\": 63.0, \"strengths\": \"Fast\", \"weaknesses\": \"Linear only\", \"best_for\": \"Binary classification\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Logistic Regression Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 9,555 rows \\u0986\\u099b\\u09c7, Logistic Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"negative\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc 14.3% missing values \\u0986\\u099b\\u09c7 \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 Logistic Regression \\u09b8\\u09b0\\u09be\\u09b8\\u09b0\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7 \\u09a8\\u09be\\u0964 Imputation \\u09a6\\u09b0\\u0995\\u09be\\u09b0 \\u09b9\\u09ac\\u09c7\\u0964\", \"weight\": 1.0}, {\"type\": \"negative\", \"text\": \"10\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7, Logistic Regression \\u09ac\\u09cd\\u09af\\u09ac\\u09b9\\u09be\\u09b0\\u09c7\\u09b0 \\u0986\\u0997\\u09c7 encoding \\u09aa\\u09cd\\u09b0\\u09af\\u09bc\\u09cb\\u099c\\u09a8\\u0964\", \"weight\": 0.8}]}]}', 0, 0, '2026-07-25 16:52:16', '2026-07-25 16:52:16'),
(36, 45, 6, 'Analysis Report - machine-readable-business-employment-data-mar-2026-quarter.csv', 'The dataset contains 26,059 rows and 14 columns. Problem type: Classification. Top recommended algorithm: Random Forest. Data quality score: 70.0/100.', 70.00, '• Missing Values: Numerical কলামে mean/median imputation এবং categorical কলামে mode বা \'Unknown\' দিয়ে পূরণ করুন।\n• Encoding: Categorical কলামগুলো Label Encoding বা One-Hot Encoding করুন।\n• Scaling: Numerical কলামগুলো StandardScaler বা MinMaxScaler দিয়ে normalize করুন।', '• Remove correlated features.\n• Apply feature scaling.\n• Perform outlier detection.', NULL, '{\"profile\": {\"total_rows\": 26059, \"total_columns\": 14, \"numeric_columns\": 5, \"categorical_columns\": 9, \"datetime_columns\": 0, \"text_columns\": 0, \"missing_value_percentage\": 21.43, \"duplicate_row_percentage\": 0.0, \"target_column\": \"Series_title_5\", \"problem_type\": \"classification\", \"is_imbalanced\": false, \"class_count\": 0, \"memory_usage_mb\": 14.74}, \"recommendations\": [{\"rank\": 1, \"algorithm_id\": 1, \"algorithm_name\": \"Random Forest\", \"short_name\": \"RF\", \"category\": \"Classification\", \"confidence_score\": 100.0, \"suitability_score\": 100.0, \"strengths\": \"Robust\", \"weaknesses\": \"Slow\", \"best_for\": \"Mixed data\", \"complexity\": \"medium\", \"interpretability\": \"medium\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Random Forest Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 26,059 rows \\u0986\\u099b\\u09c7, Random Forest \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc 21.4% missing values \\u0986\\u099b\\u09c7 \\u098f\\u09ac\\u0982 Random Forest \\u09b8\\u09c7\\u099f\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"9\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7 \\u098f\\u09ac\\u0982 Random Forest \\u09b8\\u09c7\\u099f\\u09bf \\u09b8\\u09b0\\u09be\\u09b8\\u09b0\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.0}]}, {\"rank\": 2, \"algorithm_id\": 4, \"algorithm_name\": \"XGBoost\", \"short_name\": \"XGB\", \"category\": \"Classification\", \"confidence_score\": 85.0, \"suitability_score\": 85.0, \"strengths\": \"Very accurate\", \"weaknesses\": \"Complex\", \"best_for\": \"Structured data\", \"complexity\": \"high\", \"interpretability\": \"low\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 XGBoost Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 26,059 rows \\u0986\\u099b\\u09c7, XGBoost \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc 21.4% missing values \\u0986\\u099b\\u09c7 \\u098f\\u09ac\\u0982 XGBoost \\u09b8\\u09c7\\u099f\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.0}, {\"type\": \"negative\", \"text\": \"9\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7, XGBoost \\u09ac\\u09cd\\u09af\\u09ac\\u09b9\\u09be\\u09b0\\u09c7\\u09b0 \\u0986\\u0997\\u09c7 encoding \\u09aa\\u09cd\\u09b0\\u09af\\u09bc\\u09cb\\u099c\\u09a8\\u0964\", \"weight\": 0.8}]}, {\"rank\": 3, \"algorithm_id\": 3, \"algorithm_name\": \"Decision Tree\", \"short_name\": \"DT\", \"category\": \"Classification\", \"confidence_score\": 79.0, \"suitability_score\": 79.0, \"strengths\": \"Interpretable\", \"weaknesses\": \"Overfitting\", \"best_for\": \"Simple classification\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Decision Tree Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 26,059 rows \\u0986\\u099b\\u09c7, Decision Tree \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"negative\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc 21.4% missing values \\u0986\\u099b\\u09c7 \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 Decision Tree \\u09b8\\u09b0\\u09be\\u09b8\\u09b0\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7 \\u09a8\\u09be\\u0964 Imputation \\u09a6\\u09b0\\u0995\\u09be\\u09b0 \\u09b9\\u09ac\\u09c7\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"9\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7 \\u098f\\u09ac\\u0982 Decision Tree \\u09b8\\u09c7\\u099f\\u09bf \\u09b8\\u09b0\\u09be\\u09b8\\u09b0\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.0}]}, {\"rank\": 4, \"algorithm_id\": 2, \"algorithm_name\": \"Logistic Regression\", \"short_name\": \"LR\", \"category\": \"Classification\", \"confidence_score\": 63.0, \"suitability_score\": 63.0, \"strengths\": \"Fast\", \"weaknesses\": \"Linear only\", \"best_for\": \"Binary classification\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Logistic Regression Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 26,059 rows \\u0986\\u099b\\u09c7, Logistic Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"negative\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc 21.4% missing values \\u0986\\u099b\\u09c7 \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 Logistic Regression \\u09b8\\u09b0\\u09be\\u09b8\\u09b0\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7 \\u09a8\\u09be\\u0964 Imputation \\u09a6\\u09b0\\u0995\\u09be\\u09b0 \\u09b9\\u09ac\\u09c7\\u0964\", \"weight\": 1.0}, {\"type\": \"negative\", \"text\": \"9\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7, Logistic Regression \\u09ac\\u09cd\\u09af\\u09ac\\u09b9\\u09be\\u09b0\\u09c7\\u09b0 \\u0986\\u0997\\u09c7 encoding \\u09aa\\u09cd\\u09b0\\u09af\\u09bc\\u09cb\\u099c\\u09a8\\u0964\", \"weight\": 0.8}]}]}', 0, 0, '2026-07-25 16:52:41', '2026-07-25 16:52:41'),
(37, 46, 6, 'Analysis Report - annual-enterprise-survey-2025-financial-year-provisional-size-bands.csv', 'The dataset contains 23,220 rows and 16 columns. Problem type: Classification. Top recommended algorithm: Random Forest. Data quality score: 70.0/100.', 70.00, '• Missing Values: Numerical কলামে mean/median imputation এবং categorical কলামে mode বা \'Unknown\' দিয়ে পূরণ করুন।\n• Encoding: Categorical কলামগুলো Label Encoding বা One-Hot Encoding করুন।\n• Scaling: Numerical কলামগুলো StandardScaler বা MinMaxScaler দিয়ে normalize করুন।', '• Remove correlated features.\n• Apply feature scaling.\n• Perform outlier detection.', NULL, '{\"profile\": {\"total_rows\": 23220, \"total_columns\": 16, \"numeric_columns\": 4, \"categorical_columns\": 12, \"datetime_columns\": 0, \"text_columns\": 0, \"missing_value_percentage\": 56.17, \"duplicate_row_percentage\": 0.0, \"target_column\": \"Unnamed: 15\", \"problem_type\": \"classification\", \"is_imbalanced\": false, \"class_count\": 1, \"memory_usage_mb\": 13.14}, \"recommendations\": [{\"rank\": 1, \"algorithm_id\": 1, \"algorithm_name\": \"Random Forest\", \"short_name\": \"RF\", \"category\": \"Classification\", \"confidence_score\": 100.0, \"suitability_score\": 100.0, \"strengths\": \"Robust\", \"weaknesses\": \"Slow\", \"best_for\": \"Mixed data\", \"complexity\": \"medium\", \"interpretability\": \"medium\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Random Forest Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 23,220 rows \\u0986\\u099b\\u09c7, Random Forest \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc 56.2% missing values \\u0986\\u099b\\u09c7 \\u098f\\u09ac\\u0982 Random Forest \\u09b8\\u09c7\\u099f\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"12\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7 \\u098f\\u09ac\\u0982 Random Forest \\u09b8\\u09c7\\u099f\\u09bf \\u09b8\\u09b0\\u09be\\u09b8\\u09b0\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.0}]}, {\"rank\": 2, \"algorithm_id\": 4, \"algorithm_name\": \"XGBoost\", \"short_name\": \"XGB\", \"category\": \"Classification\", \"confidence_score\": 85.0, \"suitability_score\": 85.0, \"strengths\": \"Very accurate\", \"weaknesses\": \"Complex\", \"best_for\": \"Structured data\", \"complexity\": \"high\", \"interpretability\": \"low\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 XGBoost Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 23,220 rows \\u0986\\u099b\\u09c7, XGBoost \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc 56.2% missing values \\u0986\\u099b\\u09c7 \\u098f\\u09ac\\u0982 XGBoost \\u09b8\\u09c7\\u099f\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.0}, {\"type\": \"negative\", \"text\": \"12\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7, XGBoost \\u09ac\\u09cd\\u09af\\u09ac\\u09b9\\u09be\\u09b0\\u09c7\\u09b0 \\u0986\\u0997\\u09c7 encoding \\u09aa\\u09cd\\u09b0\\u09af\\u09bc\\u09cb\\u099c\\u09a8\\u0964\", \"weight\": 0.8}]}, {\"rank\": 3, \"algorithm_id\": 3, \"algorithm_name\": \"Decision Tree\", \"short_name\": \"DT\", \"category\": \"Classification\", \"confidence_score\": 79.0, \"suitability_score\": 79.0, \"strengths\": \"Interpretable\", \"weaknesses\": \"Overfitting\", \"best_for\": \"Simple classification\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Decision Tree Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 23,220 rows \\u0986\\u099b\\u09c7, Decision Tree \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"negative\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc 56.2% missing values \\u0986\\u099b\\u09c7 \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 Decision Tree \\u09b8\\u09b0\\u09be\\u09b8\\u09b0\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7 \\u09a8\\u09be\\u0964 Imputation \\u09a6\\u09b0\\u0995\\u09be\\u09b0 \\u09b9\\u09ac\\u09c7\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"12\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7 \\u098f\\u09ac\\u0982 Decision Tree \\u09b8\\u09c7\\u099f\\u09bf \\u09b8\\u09b0\\u09be\\u09b8\\u09b0\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.0}]}, {\"rank\": 4, \"algorithm_id\": 2, \"algorithm_name\": \"Logistic Regression\", \"short_name\": \"LR\", \"category\": \"Classification\", \"confidence_score\": 63.0, \"suitability_score\": 63.0, \"strengths\": \"Fast\", \"weaknesses\": \"Linear only\", \"best_for\": \"Binary classification\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Logistic Regression Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 23,220 rows \\u0986\\u099b\\u09c7, Logistic Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"negative\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc 56.2% missing values \\u0986\\u099b\\u09c7 \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 Logistic Regression \\u09b8\\u09b0\\u09be\\u09b8\\u09b0\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7 \\u09a8\\u09be\\u0964 Imputation \\u09a6\\u09b0\\u0995\\u09be\\u09b0 \\u09b9\\u09ac\\u09c7\\u0964\", \"weight\": 1.0}, {\"type\": \"negative\", \"text\": \"12\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7, Logistic Regression \\u09ac\\u09cd\\u09af\\u09ac\\u09b9\\u09be\\u09b0\\u09c7\\u09b0 \\u0986\\u0997\\u09c7 encoding \\u09aa\\u09cd\\u09b0\\u09af\\u09bc\\u09cb\\u099c\\u09a8\\u0964\", \"weight\": 0.8}]}]}', 0, 0, '2026-07-26 06:13:29', '2026-07-26 06:13:29');
INSERT INTO `analysis_reports` (`id`, `upload_id`, `user_id`, `report_title`, `report_summary`, `data_quality_score`, `recommended_preprocessing`, `feature_engineering_tips`, `report_html`, `report_json`, `is_public`, `view_count`, `created_at`, `updated_at`) VALUES
(38, 47, 6, 'Analysis Report - machine-readable-business-employment-data-mar-2026-quarter.csv', 'The dataset contains 26,059 rows and 14 columns. Problem type: Classification. Top recommended algorithm: Random Forest. Data quality score: 70.0/100.', 70.00, '• Missing Values: Numerical কলামে mean/median imputation এবং categorical কলামে mode বা \'Unknown\' দিয়ে পূরণ করুন।\n• Encoding: Categorical কলামগুলো Label Encoding বা One-Hot Encoding করুন।\n• Scaling: Numerical কলামগুলো StandardScaler বা MinMaxScaler দিয়ে normalize করুন।', '• Remove correlated features.\n• Apply feature scaling.\n• Perform outlier detection.', NULL, '{\"profile\": {\"total_rows\": 26059, \"total_columns\": 14, \"numeric_columns\": 5, \"categorical_columns\": 9, \"datetime_columns\": 0, \"text_columns\": 0, \"missing_value_percentage\": 21.43, \"duplicate_row_percentage\": 0.0, \"target_column\": \"Series_title_5\", \"problem_type\": \"classification\", \"is_imbalanced\": false, \"class_count\": 0, \"memory_usage_mb\": 14.74}, \"recommendations\": [{\"rank\": 1, \"algorithm_id\": 1, \"algorithm_name\": \"Random Forest\", \"short_name\": \"RF\", \"category\": \"Classification\", \"confidence_score\": 100.0, \"suitability_score\": 100.0, \"strengths\": \"Robust\", \"weaknesses\": \"Slow\", \"best_for\": \"Mixed data\", \"complexity\": \"medium\", \"interpretability\": \"medium\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Random Forest Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 26,059 rows \\u0986\\u099b\\u09c7, Random Forest \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc 21.4% missing values \\u0986\\u099b\\u09c7 \\u098f\\u09ac\\u0982 Random Forest \\u09b8\\u09c7\\u099f\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"9\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7 \\u098f\\u09ac\\u0982 Random Forest \\u09b8\\u09c7\\u099f\\u09bf \\u09b8\\u09b0\\u09be\\u09b8\\u09b0\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.0}]}, {\"rank\": 2, \"algorithm_id\": 4, \"algorithm_name\": \"XGBoost\", \"short_name\": \"XGB\", \"category\": \"Classification\", \"confidence_score\": 85.0, \"suitability_score\": 85.0, \"strengths\": \"Very accurate\", \"weaknesses\": \"Complex\", \"best_for\": \"Structured data\", \"complexity\": \"high\", \"interpretability\": \"low\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 XGBoost Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 26,059 rows \\u0986\\u099b\\u09c7, XGBoost \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc 21.4% missing values \\u0986\\u099b\\u09c7 \\u098f\\u09ac\\u0982 XGBoost \\u09b8\\u09c7\\u099f\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.0}, {\"type\": \"negative\", \"text\": \"9\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7, XGBoost \\u09ac\\u09cd\\u09af\\u09ac\\u09b9\\u09be\\u09b0\\u09c7\\u09b0 \\u0986\\u0997\\u09c7 encoding \\u09aa\\u09cd\\u09b0\\u09af\\u09bc\\u09cb\\u099c\\u09a8\\u0964\", \"weight\": 0.8}]}, {\"rank\": 3, \"algorithm_id\": 3, \"algorithm_name\": \"Decision Tree\", \"short_name\": \"DT\", \"category\": \"Classification\", \"confidence_score\": 79.0, \"suitability_score\": 79.0, \"strengths\": \"Interpretable\", \"weaknesses\": \"Overfitting\", \"best_for\": \"Simple classification\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Decision Tree Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 26,059 rows \\u0986\\u099b\\u09c7, Decision Tree \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"negative\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc 21.4% missing values \\u0986\\u099b\\u09c7 \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 Decision Tree \\u09b8\\u09b0\\u09be\\u09b8\\u09b0\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7 \\u09a8\\u09be\\u0964 Imputation \\u09a6\\u09b0\\u0995\\u09be\\u09b0 \\u09b9\\u09ac\\u09c7\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"9\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7 \\u098f\\u09ac\\u0982 Decision Tree \\u09b8\\u09c7\\u099f\\u09bf \\u09b8\\u09b0\\u09be\\u09b8\\u09b0\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.0}]}, {\"rank\": 4, \"algorithm_id\": 2, \"algorithm_name\": \"Logistic Regression\", \"short_name\": \"LR\", \"category\": \"Classification\", \"confidence_score\": 63.0, \"suitability_score\": 63.0, \"strengths\": \"Fast\", \"weaknesses\": \"Linear only\", \"best_for\": \"Binary classification\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Logistic Regression Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 26,059 rows \\u0986\\u099b\\u09c7, Logistic Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"negative\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc 21.4% missing values \\u0986\\u099b\\u09c7 \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 Logistic Regression \\u09b8\\u09b0\\u09be\\u09b8\\u09b0\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7 \\u09a8\\u09be\\u0964 Imputation \\u09a6\\u09b0\\u0995\\u09be\\u09b0 \\u09b9\\u09ac\\u09c7\\u0964\", \"weight\": 1.0}, {\"type\": \"negative\", \"text\": \"9\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7, Logistic Regression \\u09ac\\u09cd\\u09af\\u09ac\\u09b9\\u09be\\u09b0\\u09c7\\u09b0 \\u0986\\u0997\\u09c7 encoding \\u09aa\\u09cd\\u09b0\\u09af\\u09bc\\u09cb\\u099c\\u09a8\\u0964\", \"weight\": 0.8}]}]}', 0, 0, '2026-07-26 15:35:03', '2026-07-26 15:35:03'),
(39, 49, 6, 'Analysis Report - machine-readable-business-employment-data-mar-2026-quarter.csv', 'The dataset contains 26,059 rows and 14 columns. Problem type: Classification. Top recommended algorithm: Random Forest. Data quality score: 70.0/100.', 70.00, '• Missing Values: Numerical কলামে mean/median imputation এবং categorical কলামে mode বা \'Unknown\' দিয়ে পূরণ করুন।\n• Encoding: Categorical কলামগুলো Label Encoding বা One-Hot Encoding করুন।\n• Scaling: Numerical কলামগুলো StandardScaler বা MinMaxScaler দিয়ে normalize করুন।', '• Remove correlated features.\n• Apply feature scaling.\n• Perform outlier detection.', NULL, '{\"profile\": {\"total_rows\": 26059, \"total_columns\": 14, \"numeric_columns\": 5, \"categorical_columns\": 9, \"datetime_columns\": 0, \"text_columns\": 0, \"missing_value_percentage\": 21.43, \"duplicate_row_percentage\": 0.0, \"target_column\": \"Series_title_5\", \"problem_type\": \"classification\", \"is_imbalanced\": false, \"class_count\": 0, \"memory_usage_mb\": 14.74}, \"recommendations\": [{\"rank\": 1, \"algorithm_id\": 1, \"algorithm_name\": \"Random Forest\", \"short_name\": \"RF\", \"category\": \"Classification\", \"confidence_score\": 100.0, \"suitability_score\": 100.0, \"strengths\": \"Robust\", \"weaknesses\": \"Slow\", \"best_for\": \"Mixed data\", \"complexity\": \"medium\", \"interpretability\": \"medium\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Random Forest Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 26,059 rows \\u0986\\u099b\\u09c7, Random Forest \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc 21.4% missing values \\u0986\\u099b\\u09c7 \\u098f\\u09ac\\u0982 Random Forest \\u09b8\\u09c7\\u099f\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"9\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7 \\u098f\\u09ac\\u0982 Random Forest \\u09b8\\u09c7\\u099f\\u09bf \\u09b8\\u09b0\\u09be\\u09b8\\u09b0\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.0}]}, {\"rank\": 2, \"algorithm_id\": 4, \"algorithm_name\": \"XGBoost\", \"short_name\": \"XGB\", \"category\": \"Classification\", \"confidence_score\": 85.0, \"suitability_score\": 85.0, \"strengths\": \"Very accurate\", \"weaknesses\": \"Complex\", \"best_for\": \"Structured data\", \"complexity\": \"high\", \"interpretability\": \"low\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 XGBoost Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 26,059 rows \\u0986\\u099b\\u09c7, XGBoost \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc 21.4% missing values \\u0986\\u099b\\u09c7 \\u098f\\u09ac\\u0982 XGBoost \\u09b8\\u09c7\\u099f\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.0}, {\"type\": \"negative\", \"text\": \"9\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7, XGBoost \\u09ac\\u09cd\\u09af\\u09ac\\u09b9\\u09be\\u09b0\\u09c7\\u09b0 \\u0986\\u0997\\u09c7 encoding \\u09aa\\u09cd\\u09b0\\u09af\\u09bc\\u09cb\\u099c\\u09a8\\u0964\", \"weight\": 0.8}]}, {\"rank\": 3, \"algorithm_id\": 3, \"algorithm_name\": \"Decision Tree\", \"short_name\": \"DT\", \"category\": \"Classification\", \"confidence_score\": 79.0, \"suitability_score\": 79.0, \"strengths\": \"Interpretable\", \"weaknesses\": \"Overfitting\", \"best_for\": \"Simple classification\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Decision Tree Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 26,059 rows \\u0986\\u099b\\u09c7, Decision Tree \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"negative\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc 21.4% missing values \\u0986\\u099b\\u09c7 \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 Decision Tree \\u09b8\\u09b0\\u09be\\u09b8\\u09b0\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7 \\u09a8\\u09be\\u0964 Imputation \\u09a6\\u09b0\\u0995\\u09be\\u09b0 \\u09b9\\u09ac\\u09c7\\u0964\", \"weight\": 1.0}, {\"type\": \"positive\", \"text\": \"9\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7 \\u098f\\u09ac\\u0982 Decision Tree \\u09b8\\u09c7\\u099f\\u09bf \\u09b8\\u09b0\\u09be\\u09b8\\u09b0\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7\\u0964\", \"weight\": 1.0}]}, {\"rank\": 4, \"algorithm_id\": 2, \"algorithm_name\": \"Logistic Regression\", \"short_name\": \"LR\", \"category\": \"Classification\", \"confidence_score\": 63.0, \"suitability_score\": 63.0, \"strengths\": \"Fast\", \"weaknesses\": \"Linear only\", \"best_for\": \"Binary classification\", \"complexity\": \"low\", \"interpretability\": \"high\", \"reasons\": [{\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u099f\\u09bf Classification \\u09b8\\u09ae\\u09b8\\u09cd\\u09af\\u09be \\u098f\\u09ac\\u0982 Logistic Regression Classification \\u0985\\u09cd\\u09af\\u09be\\u09b2\\u0997\\u09b0\\u09bf\\u09a6\\u09ae\\u0964\", \"weight\": 1.5}, {\"type\": \"positive\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09b8\\u09c7\\u099f\\u09c7 26,059 rows \\u0986\\u099b\\u09c7, Logistic Regression \\u098f\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u09af\\u09a5\\u09c7\\u09b7\\u09cd\\u099f\\u0964\", \"weight\": 1.0}, {\"type\": \"negative\", \"text\": \"\\u09a1\\u09c7\\u099f\\u09be\\u09af\\u09bc 21.4% missing values \\u0986\\u099b\\u09c7 \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 Logistic Regression \\u09b8\\u09b0\\u09be\\u09b8\\u09b0\\u09bf handle \\u0995\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b0\\u09c7 \\u09a8\\u09be\\u0964 Imputation \\u09a6\\u09b0\\u0995\\u09be\\u09b0 \\u09b9\\u09ac\\u09c7\\u0964\", \"weight\": 1.0}, {\"type\": \"negative\", \"text\": \"9\\u099f\\u09bf categorical column \\u0986\\u099b\\u09c7, Logistic Regression \\u09ac\\u09cd\\u09af\\u09ac\\u09b9\\u09be\\u09b0\\u09c7\\u09b0 \\u0986\\u0997\\u09c7 encoding \\u09aa\\u09cd\\u09b0\\u09af\\u09bc\\u09cb\\u099c\\u09a8\\u0964\", \"weight\": 0.8}]}]}', 0, 0, '2026-08-02 17:02:40', '2026-08-02 17:02:40');

-- --------------------------------------------------------

--
-- Table structure for table `column_statistics`
--

CREATE TABLE `column_statistics` (
  `id` int(11) NOT NULL,
  `dataset_profile_id` int(11) NOT NULL,
  `column_name` varchar(100) NOT NULL,
  `data_type` varchar(50) NOT NULL,
  `inferred_type` enum('numeric','categorical','datetime','text','boolean') NOT NULL,
  `missing_count` int(11) DEFAULT 0,
  `missing_percentage` decimal(5,2) DEFAULT 0.00,
  `unique_count` int(11) DEFAULT 0,
  `unique_percentage` decimal(5,2) DEFAULT 0.00,
  `mean_value` decimal(20,6) DEFAULT NULL,
  `std_value` decimal(20,6) DEFAULT NULL,
  `min_value` decimal(20,6) DEFAULT NULL,
  `max_value` decimal(20,6) DEFAULT NULL,
  `median_value` decimal(20,6) DEFAULT NULL,
  `skewness` decimal(10,4) DEFAULT NULL,
  `kurtosis` decimal(10,4) DEFAULT NULL,
  `most_frequent_value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `column_statistics`
--

INSERT INTO `column_statistics` (`id`, `dataset_profile_id`, `column_name`, `data_type`, `inferred_type`, `missing_count`, `missing_percentage`, `unique_count`, `unique_percentage`, `mean_value`, `std_value`, `min_value`, `max_value`, `median_value`, `skewness`, `kurtosis`, `most_frequent_value`, `created_at`) VALUES
(1, 1, '1,461,102,594.79', 'object', 'text', 0, 0.00, 1458, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1,462,157,895.89', '2026-05-01 10:14:06'),
(2, 2, 'Weather', 'object', 'categorical', 0, 0.00, 3, 30.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cloudy', '2026-05-01 10:15:33'),
(3, 2, 'Humidity', 'object', 'categorical', 0, 0.00, 2, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '2026-05-01 10:15:33'),
(4, 2, 'Wind', 'object', 'categorical', 0, 0.00, 2, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Week', '2026-05-01 10:15:33'),
(5, 2, 'Play', 'object', 'categorical', 0, 0.00, 2, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', '2026-05-01 10:15:33'),
(10, 4, 'Weather', 'object', 'categorical', 0, 0.00, 3, 30.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cloudy', '2026-05-01 10:55:15'),
(11, 4, 'Humidity', 'object', 'categorical', 0, 0.00, 2, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '2026-05-01 10:55:15'),
(12, 4, 'Wind', 'object', 'categorical', 0, 0.00, 2, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Week', '2026-05-01 10:55:15'),
(13, 4, 'Play', 'object', 'categorical', 0, 0.00, 2, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', '2026-05-01 10:55:15'),
(14, 5, 'Weather', 'object', 'categorical', 0, 0.00, 3, 30.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cloudy', '2026-05-01 11:09:42'),
(15, 5, 'Humidity', 'object', 'categorical', 0, 0.00, 2, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '2026-05-01 11:09:42'),
(16, 5, 'Wind', 'object', 'categorical', 0, 0.00, 2, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Week', '2026-05-01 11:09:42'),
(17, 5, 'Play', 'object', 'categorical', 0, 0.00, 2, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', '2026-05-01 11:09:42'),
(18, 6, 'Unnamed: 0', 'int64', 'numeric', 0, 0.00, 28242, 100.00, 14120.500000, 8152.907488, 0.000000, 28241.000000, 14120.500000, 0.0000, -1.2000, '0', '2026-05-01 11:10:18'),
(19, 6, 'Area', 'object', 'categorical', 0, 0.00, 101, 0.36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'India', '2026-05-01 11:10:18'),
(20, 6, 'Item', 'object', 'categorical', 0, 0.00, 10, 0.04, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Potatoes', '2026-05-01 11:10:18'),
(21, 6, 'Year', 'int64', 'numeric', 0, 0.00, 23, 0.08, 2001.544296, 7.051905, 1990.000000, 2013.000000, 2001.000000, 0.0122, -1.2719, '2012', '2026-05-01 11:10:18'),
(22, 6, 'hg/ha_yield', 'int64', 'numeric', 0, 0.00, 11514, 40.77, 77053.332094, 84956.612897, 50.000000, 501412.000000, 38295.000000, 1.7932, 3.0661, '10000', '2026-05-01 11:10:18'),
(23, 6, 'average_rain_fall_mm_per_year', 'int64', 'numeric', 0, 0.00, 100, 0.35, 1149.055980, 709.812150, 51.000000, 3240.000000, 1083.000000, 0.8538, 0.3071, '1083', '2026-05-01 11:10:18'),
(24, 6, 'pesticides_tonnes', 'float64', 'numeric', 0, 0.00, 1673, 5.92, 37076.909344, 59958.784665, 0.040000, 367778.000000, 17529.440000, 3.4903, 14.0073, '1597.0', '2026-05-01 11:10:18'),
(25, 6, 'avg_temp', 'float64', 'numeric', 0, 0.00, 1831, 6.48, 20.542627, 6.312051, 1.300000, 30.650000, 21.510000, -0.7416, -0.4172, '27.2', '2026-05-01 11:10:18'),
(26, 7, 'ID', 'int64', 'numeric', 0, 0.00, 205, 100.00, 103.000000, 59.322565, 1.000000, 205.000000, 103.000000, 0.0000, -1.2000, '1', '2026-05-01 11:11:22'),
(27, 7, 'make', 'object', 'categorical', 0, 0.00, 22, 10.73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'toyota', '2026-05-01 11:11:22'),
(28, 7, 'fuel_type', 'object', 'categorical', 0, 0.00, 2, 0.98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gas', '2026-05-01 11:11:22'),
(29, 7, 'aspiration', 'object', 'categorical', 0, 0.00, 2, 0.98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'std', '2026-05-01 11:11:22'),
(30, 7, 'num_of_doors', 'object', 'categorical', 0, 0.00, 3, 1.46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'four', '2026-05-01 11:11:22'),
(31, 7, 'body_style', 'object', 'categorical', 0, 0.00, 5, 2.44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sedan', '2026-05-01 11:11:22'),
(32, 7, 'drive_wheels', 'object', 'categorical', 0, 0.00, 3, 1.46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fwd', '2026-05-01 11:11:22'),
(33, 7, 'engine_location', 'object', 'categorical', 0, 0.00, 2, 0.98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'front', '2026-05-01 11:11:22'),
(34, 7, 'wheel_base', 'float64', 'numeric', 0, 0.00, 53, 25.85, 98.756585, 6.021776, 86.600000, 120.900000, 97.000000, 1.0502, 1.0170, '94.5', '2026-05-01 11:11:22'),
(35, 7, 'length', 'float64', 'numeric', 0, 0.00, 75, 36.59, 174.049268, 12.337289, 141.100000, 208.100000, 173.200000, 0.1560, -0.0829, '157.3', '2026-05-01 11:11:22'),
(36, 7, 'width', 'float64', 'numeric', 0, 0.00, 44, 21.46, 65.907805, 2.145204, 60.300000, 72.300000, 65.500000, 0.9040, 0.7028, '63.8', '2026-05-01 11:11:22'),
(37, 7, 'height', 'float64', 'numeric', 0, 0.00, 49, 23.90, 53.724878, 2.443522, 47.800000, 59.800000, 54.100000, 0.0631, -0.4438, '50.8', '2026-05-01 11:11:22'),
(38, 7, 'curb_weight', 'int64', 'numeric', 0, 0.00, 171, 83.41, 2555.565854, 520.680204, 1488.000000, 4066.000000, 2414.000000, 0.6814, -0.0429, '2385', '2026-05-01 11:11:22'),
(39, 7, 'engine_type', 'object', 'categorical', 0, 0.00, 7, 3.41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ohc', '2026-05-01 11:11:22'),
(40, 7, 'num_of_cylinders', 'object', 'categorical', 0, 0.00, 7, 3.41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'four', '2026-05-01 11:11:22'),
(41, 7, 'engine_size', 'int64', 'numeric', 0, 0.00, 44, 21.46, 126.907317, 41.642693, 61.000000, 326.000000, 120.000000, 1.9477, 5.3057, '92', '2026-05-01 11:11:22'),
(42, 7, 'fuel_system', 'object', 'categorical', 0, 0.00, 8, 3.90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mpfi', '2026-05-01 11:11:22'),
(43, 7, 'compression_ratio', 'float64', 'numeric', 0, 0.00, 32, 15.61, 10.142537, 3.972040, 7.000000, 23.000000, 9.000000, 2.6109, 5.2331, '9.0', '2026-05-01 11:11:22'),
(44, 7, 'horsepower', 'object', 'categorical', 0, 0.00, 60, 29.27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '68', '2026-05-01 11:11:22'),
(45, 7, 'peak_rpm', 'object', 'categorical', 0, 0.00, 24, 11.71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5500', '2026-05-01 11:11:22'),
(46, 7, 'city_mpg', 'int64', 'numeric', 0, 0.00, 29, 14.15, 25.219512, 6.542142, 13.000000, 49.000000, 24.000000, 0.6637, 0.5786, '31', '2026-05-01 11:11:22'),
(47, 7, 'highway_mpg', 'int64', 'numeric', 0, 0.00, 30, 14.63, 30.751220, 6.886443, 16.000000, 54.000000, 30.000000, 0.5400, 0.4401, '25', '2026-05-01 11:11:22'),
(48, 7, 'price', 'object', 'text', 0, 0.00, 187, 91.22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '?', '2026-05-01 11:11:22'),
(49, 8, 'Unnamed: 0', 'int64', 'numeric', 0, 0.00, 28242, 100.00, 14120.500000, 8152.907488, 0.000000, 28241.000000, 14120.500000, 0.0000, -1.2000, '0', '2026-05-01 11:12:25'),
(50, 8, 'Area', 'object', 'categorical', 0, 0.00, 101, 0.36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'India', '2026-05-01 11:12:25'),
(51, 8, 'Item', 'object', 'categorical', 0, 0.00, 10, 0.04, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Potatoes', '2026-05-01 11:12:25'),
(52, 8, 'Year', 'int64', 'numeric', 0, 0.00, 23, 0.08, 2001.544296, 7.051905, 1990.000000, 2013.000000, 2001.000000, 0.0122, -1.2719, '2012', '2026-05-01 11:12:25'),
(53, 8, 'hg/ha_yield', 'int64', 'numeric', 0, 0.00, 11514, 40.77, 77053.332094, 84956.612897, 50.000000, 501412.000000, 38295.000000, 1.7932, 3.0661, '10000', '2026-05-01 11:12:25'),
(54, 8, 'average_rain_fall_mm_per_year', 'int64', 'numeric', 0, 0.00, 100, 0.35, 1149.055980, 709.812150, 51.000000, 3240.000000, 1083.000000, 0.8538, 0.3071, '1083', '2026-05-01 11:12:25'),
(55, 8, 'pesticides_tonnes', 'float64', 'numeric', 0, 0.00, 1673, 5.92, 37076.909344, 59958.784665, 0.040000, 367778.000000, 17529.440000, 3.4903, 14.0073, '1597.0', '2026-05-01 11:12:25'),
(56, 8, 'avg_temp', 'float64', 'numeric', 0, 0.00, 1831, 6.48, 20.542627, 6.312051, 1.300000, 30.650000, 21.510000, -0.7416, -0.4172, '27.2', '2026-05-01 11:12:25'),
(57, 9, 'Weather', 'object', 'categorical', 0, 0.00, 3, 30.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cloudy', '2026-05-01 11:19:24'),
(58, 9, 'Humidity', 'object', 'categorical', 0, 0.00, 2, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '2026-05-01 11:19:24'),
(59, 9, 'Wind', 'object', 'categorical', 0, 0.00, 2, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Week', '2026-05-01 11:19:24'),
(60, 9, 'Play', 'object', 'categorical', 0, 0.00, 2, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', '2026-05-01 11:19:24'),
(61, 10, 'Unnamed: 0', 'int64', 'numeric', 0, 0.00, 28242, 100.00, 14120.500000, 8152.907488, 0.000000, 28241.000000, 14120.500000, 0.0000, -1.2000, '0', '2026-05-01 11:22:56'),
(62, 10, 'Area', 'object', 'categorical', 0, 0.00, 101, 0.36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'India', '2026-05-01 11:22:56'),
(63, 10, 'Item', 'object', 'categorical', 0, 0.00, 10, 0.04, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Potatoes', '2026-05-01 11:22:56'),
(64, 10, 'Year', 'int64', 'numeric', 0, 0.00, 23, 0.08, 2001.544296, 7.051905, 1990.000000, 2013.000000, 2001.000000, 0.0122, -1.2719, '2012', '2026-05-01 11:22:56'),
(65, 10, 'hg/ha_yield', 'int64', 'numeric', 0, 0.00, 11514, 40.77, 77053.332094, 84956.612897, 50.000000, 501412.000000, 38295.000000, 1.7932, 3.0661, '10000', '2026-05-01 11:22:56'),
(66, 10, 'average_rain_fall_mm_per_year', 'int64', 'numeric', 0, 0.00, 100, 0.35, 1149.055980, 709.812150, 51.000000, 3240.000000, 1083.000000, 0.8538, 0.3071, '1083', '2026-05-01 11:22:56'),
(67, 10, 'pesticides_tonnes', 'float64', 'numeric', 0, 0.00, 1673, 5.92, 37076.909344, 59958.784665, 0.040000, 367778.000000, 17529.440000, 3.4903, 14.0073, '1597.0', '2026-05-01 11:22:56'),
(68, 10, 'avg_temp', 'float64', 'numeric', 0, 0.00, 1831, 6.48, 20.542627, 6.312051, 1.300000, 30.650000, 21.510000, -0.7416, -0.4172, '27.2', '2026-05-01 11:22:56'),
(69, 11, 'abilities', 'object', 'categorical', 0, 0.00, 482, 60.17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\'Levitate\']', '2026-05-01 11:26:49'),
(70, 11, 'against_bug', 'float64', 'numeric', 0, 0.00, 5, 0.62, 0.996255, 0.597248, 0.250000, 4.000000, 1.000000, 1.7565, 4.9980, '1.0', '2026-05-01 11:26:49'),
(71, 11, 'against_dark', 'float64', 'numeric', 0, 0.00, 5, 0.62, 1.057116, 0.438142, 0.250000, 4.000000, 1.000000, 1.7211, 5.4100, '1.0', '2026-05-01 11:26:49'),
(72, 11, 'against_dragon', 'float64', 'numeric', 0, 0.00, 4, 0.50, 0.968789, 0.353058, 0.000000, 2.000000, 1.000000, 0.0032, 4.4504, '1.0', '2026-05-01 11:26:49'),
(73, 11, 'against_electric', 'float64', 'numeric', 0, 0.00, 6, 0.75, 1.073970, 0.654962, 0.000000, 4.000000, 1.000000, 0.9348, 2.1132, '1.0', '2026-05-01 11:26:49'),
(74, 11, 'against_fairy', 'float64', 'numeric', 0, 0.00, 5, 0.62, 1.068976, 0.522167, 0.250000, 4.000000, 1.000000, 2.4751, 9.8328, '1.0', '2026-05-01 11:26:49'),
(75, 11, 'against_fight', 'float64', 'numeric', 0, 0.00, 6, 0.75, 1.065543, 0.717251, 0.000000, 4.000000, 1.000000, 1.2571, 2.6816, '1.0', '2026-05-01 11:26:49'),
(76, 11, 'against_fire', 'float64', 'numeric', 0, 0.00, 5, 0.62, 1.135456, 0.691853, 0.250000, 4.000000, 1.000000, 1.6103, 3.7488, '1.0', '2026-05-01 11:26:49'),
(77, 11, 'against_flying', 'float64', 'numeric', 0, 0.00, 5, 0.62, 1.192884, 0.604488, 0.250000, 4.000000, 1.000000, 1.7708, 5.0614, '1.0', '2026-05-01 11:26:49'),
(78, 11, 'against_ghost', 'float64', 'numeric', 0, 0.00, 5, 0.62, 0.985019, 0.558256, 0.000000, 4.000000, 1.000000, 0.4535, 2.0336, '1.0', '2026-05-01 11:26:49'),
(79, 11, 'against_grass', 'float64', 'numeric', 0, 0.00, 5, 0.62, 1.034020, 0.788896, 0.250000, 4.000000, 1.000000, 1.9712, 4.5887, '1.0', '2026-05-01 11:26:49'),
(80, 11, 'against_ground', 'float64', 'numeric', 0, 0.00, 6, 0.75, 1.098002, 0.738818, 0.000000, 4.000000, 1.000000, 1.0792, 2.6675, '1.0', '2026-05-01 11:26:49'),
(81, 11, 'against_ice', 'float64', 'numeric', 0, 0.00, 5, 0.62, 1.208177, 0.735356, 0.250000, 4.000000, 1.000000, 1.5715, 3.3660, '1.0', '2026-05-01 11:26:49'),
(82, 11, 'against_normal', 'float64', 'numeric', 0, 0.00, 4, 0.50, 0.887016, 0.266106, 0.000000, 1.000000, 1.000000, -2.2893, 4.1458, '1.0', '2026-05-01 11:26:49'),
(83, 11, 'against_poison', 'float64', 'numeric', 0, 0.00, 6, 0.75, 0.975343, 0.549375, 0.000000, 4.000000, 1.000000, 1.3735, 5.0853, '1.0', '2026-05-01 11:26:49'),
(84, 11, 'against_psychic', 'float64', 'numeric', 0, 0.00, 6, 0.75, 1.005306, 0.495183, 0.000000, 4.000000, 1.000000, 0.9371, 3.6248, '1.0', '2026-05-01 11:26:49'),
(85, 11, 'against_rock', 'float64', 'numeric', 0, 0.00, 5, 0.62, 1.250312, 0.697148, 0.250000, 4.000000, 1.000000, 1.8378, 4.5777, '1.0', '2026-05-01 11:26:49'),
(86, 11, 'against_steel', 'float64', 'numeric', 0, 0.00, 5, 0.62, 0.983458, 0.500117, 0.250000, 4.000000, 1.000000, 1.8484, 6.1193, '1.0', '2026-05-01 11:26:49'),
(87, 11, 'against_water', 'float64', 'numeric', 0, 0.00, 5, 0.62, 1.058365, 0.606562, 0.250000, 4.000000, 1.000000, 2.0809, 6.5193, '1.0', '2026-05-01 11:26:49'),
(88, 11, 'attack', 'int64', 'numeric', 0, 0.00, 114, 14.23, 77.857678, 32.158820, 5.000000, 185.000000, 75.000000, 0.5308, 0.0713, '100', '2026-05-01 11:26:49'),
(89, 11, 'base_egg_steps', 'int64', 'numeric', 0, 0.00, 10, 1.25, 7191.011236, 6558.220422, 1280.000000, 30720.000000, 5120.000000, 2.9558, 7.5813, '5120', '2026-05-01 11:26:49'),
(90, 11, 'base_happiness', 'int64', 'numeric', 0, 0.00, 6, 0.75, 65.362047, 19.598948, 0.000000, 140.000000, 70.000000, -1.1823, 5.9370, '70', '2026-05-01 11:26:49'),
(91, 11, 'base_total', 'int64', 'numeric', 0, 0.00, 203, 25.34, 428.377029, 119.203577, 180.000000, 780.000000, 435.000000, 0.1746, -0.5280, '405', '2026-05-01 11:26:49'),
(92, 11, 'capture_rate', 'object', 'categorical', 0, 0.00, 34, 4.24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '45', '2026-05-01 11:26:49'),
(93, 11, 'classfication', 'object', 'categorical', 0, 0.00, 588, 73.41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dragon Pokémon', '2026-05-01 11:26:49'),
(94, 11, 'defense', 'int64', 'numeric', 0, 0.00, 109, 13.61, 73.008739, 30.769159, 5.000000, 230.000000, 70.000000, 1.1211, 2.5834, '50', '2026-05-01 11:26:49'),
(95, 11, 'experience_growth', 'int64', 'numeric', 0, 0.00, 6, 0.75, 1054995.905119, 160255.835096, 600000.000000, 1640000.000000, 1000000.000000, 0.3111, 2.8529, '1000000', '2026-05-01 11:26:49'),
(96, 11, 'height_m', 'float64', 'numeric', 20, 2.50, 51, 6.37, 1.163892, 1.080326, 0.100000, 14.500000, 1.000000, 5.0800, 43.1047, '0.6', '2026-05-01 11:26:49'),
(97, 11, 'hp', 'int64', 'numeric', 0, 0.00, 99, 12.36, 68.958801, 26.576015, 1.000000, 255.000000, 65.000000, 1.8266, 8.3350, '60', '2026-05-01 11:26:49'),
(98, 11, 'japanese_name', 'object', 'text', 0, 0.00, 801, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Abagouraアバゴーラ', '2026-05-01 11:26:49'),
(99, 11, 'name', 'object', 'text', 0, 0.00, 801, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Abomasnow', '2026-05-01 11:26:49'),
(100, 11, 'percentage_male', 'float64', 'numeric', 98, 12.23, 7, 0.87, 55.155761, 20.261623, 0.000000, 100.000000, 50.000000, 0.0663, 1.1591, '50.0', '2026-05-01 11:26:49'),
(101, 11, 'pokedex_number', 'int64', 'numeric', 0, 0.00, 801, 100.00, 401.000000, 231.373075, 1.000000, 801.000000, 401.000000, 0.0000, -1.2000, '1', '2026-05-01 11:26:49'),
(102, 11, 'sp_attack', 'int64', 'numeric', 0, 0.00, 111, 13.86, 71.305868, 32.353826, 10.000000, 194.000000, 65.000000, 0.7784, 0.4125, '40', '2026-05-01 11:26:49'),
(103, 11, 'sp_defense', 'int64', 'numeric', 0, 0.00, 97, 12.11, 70.911361, 27.942501, 20.000000, 230.000000, 66.000000, 0.8676, 1.5259, '50', '2026-05-01 11:26:49'),
(104, 11, 'speed', 'int64', 'numeric', 0, 0.00, 113, 14.11, 66.334582, 28.907662, 5.000000, 180.000000, 65.000000, 0.4389, -0.1187, '60', '2026-05-01 11:26:49'),
(105, 11, 'type1', 'object', 'categorical', 0, 0.00, 18, 2.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'water', '2026-05-01 11:26:49'),
(106, 11, 'type2', 'object', 'categorical', 384, 47.94, 18, 2.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flying', '2026-05-01 11:26:49'),
(107, 11, 'weight_kg', 'float64', 'numeric', 20, 2.50, 421, 52.56, 61.378105, 109.354766, 0.100000, 999.900000, 27.300000, 4.8710, 31.7358, '15.0', '2026-05-01 11:26:49'),
(108, 11, 'generation', 'int64', 'numeric', 0, 0.00, 7, 0.87, 3.690387, 1.930420, 1.000000, 7.000000, 4.000000, 0.1172, -1.1190, '5', '2026-05-01 11:26:49'),
(109, 11, 'is_legendary', 'int64', 'numeric', 0, 0.00, 2, 0.25, 0.087391, 0.282583, 0.000000, 1.000000, 0.000000, 2.9276, 6.5871, '0', '2026-05-01 11:26:49'),
(110, 12, 'Unnamed: 0', 'int64', 'numeric', 0, 0.00, 205, 100.00, 103.000000, 59.322565, 1.000000, 205.000000, 103.000000, 0.0000, -1.2000, '1', '2026-05-01 11:28:23'),
(111, 12, 'make', 'object', 'categorical', 0, 0.00, 22, 10.73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'toyota', '2026-05-01 11:28:23'),
(112, 12, 'fuel_type', 'object', 'categorical', 0, 0.00, 2, 0.98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gas', '2026-05-01 11:28:23'),
(113, 12, 'aspiration', 'object', 'categorical', 0, 0.00, 2, 0.98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'std', '2026-05-01 11:28:23'),
(114, 12, 'num_of_doors', 'object', 'categorical', 0, 0.00, 3, 1.46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'four', '2026-05-01 11:28:23'),
(115, 12, 'body_style', 'object', 'categorical', 0, 0.00, 5, 2.44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sedan', '2026-05-01 11:28:23'),
(116, 12, 'drive_wheels', 'object', 'categorical', 0, 0.00, 3, 1.46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fwd', '2026-05-01 11:28:23'),
(117, 12, 'engine_location', 'object', 'categorical', 0, 0.00, 2, 0.98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'front', '2026-05-01 11:28:23'),
(118, 12, 'wheel_base', 'float64', 'numeric', 0, 0.00, 53, 25.85, 98.756585, 6.021776, 86.600000, 120.900000, 97.000000, 1.0502, 1.0170, '94.5', '2026-05-01 11:28:23'),
(119, 12, 'length', 'float64', 'numeric', 0, 0.00, 75, 36.59, 174.049268, 12.337289, 141.100000, 208.100000, 173.200000, 0.1560, -0.0829, '157.3', '2026-05-01 11:28:23'),
(120, 12, 'width', 'float64', 'numeric', 0, 0.00, 44, 21.46, 65.907805, 2.145204, 60.300000, 72.300000, 65.500000, 0.9040, 0.7028, '63.8', '2026-05-01 11:28:23'),
(121, 12, 'height', 'float64', 'numeric', 0, 0.00, 49, 23.90, 53.724878, 2.443522, 47.800000, 59.800000, 54.100000, 0.0631, -0.4438, '50.8', '2026-05-01 11:28:23'),
(122, 12, 'curb_weight', 'int64', 'numeric', 0, 0.00, 171, 83.41, 2555.565854, 520.680204, 1488.000000, 4066.000000, 2414.000000, 0.6814, -0.0429, '2385', '2026-05-01 11:28:23'),
(123, 12, 'engine_type', 'object', 'categorical', 0, 0.00, 7, 3.41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ohc', '2026-05-01 11:28:23'),
(124, 12, 'num_of_cylinders', 'object', 'categorical', 0, 0.00, 7, 3.41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'four', '2026-05-01 11:28:23'),
(125, 12, 'engine_size', 'int64', 'numeric', 0, 0.00, 44, 21.46, 126.907317, 41.642693, 61.000000, 326.000000, 120.000000, 1.9477, 5.3057, '92', '2026-05-01 11:28:23'),
(126, 12, 'fuel_system', 'object', 'categorical', 0, 0.00, 8, 3.90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mpfi', '2026-05-01 11:28:23'),
(127, 12, 'compression_ratio', 'float64', 'numeric', 0, 0.00, 32, 15.61, 10.142537, 3.972040, 7.000000, 23.000000, 9.000000, 2.6109, 5.2331, '9.0', '2026-05-01 11:28:23'),
(128, 12, 'horsepower', 'object', 'categorical', 0, 0.00, 60, 29.27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '68', '2026-05-01 11:28:23'),
(129, 12, 'peak_rpm', 'object', 'categorical', 0, 0.00, 24, 11.71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5500', '2026-05-01 11:28:23'),
(130, 12, 'city_mpg', 'int64', 'numeric', 0, 0.00, 29, 14.15, 25.219512, 6.542142, 13.000000, 49.000000, 24.000000, 0.6637, 0.5786, '31', '2026-05-01 11:28:23'),
(131, 12, 'highway_mpg', 'int64', 'numeric', 0, 0.00, 30, 14.63, 30.751220, 6.886443, 16.000000, 54.000000, 30.000000, 0.5400, 0.4401, '25', '2026-05-01 11:28:23'),
(132, 12, 'price', 'object', 'text', 0, 0.00, 187, 91.22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '?', '2026-05-01 11:28:23'),
(133, 13, 'Weather', 'object', 'categorical', 0, 0.00, 3, 30.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cloudy', '2026-05-01 11:32:43'),
(134, 13, 'Humidity', 'object', 'categorical', 0, 0.00, 2, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '2026-05-01 11:32:43'),
(135, 13, 'Wind', 'object', 'categorical', 0, 0.00, 2, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Week', '2026-05-01 11:32:43'),
(136, 13, 'Play', 'object', 'categorical', 0, 0.00, 2, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', '2026-05-01 11:32:43'),
(137, 14, 'ID', 'object', 'text', 0, 0.00, 21, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '...', '2026-05-01 11:49:04'),
(138, 14, 'Name', 'object', 'categorical', 1, 4.76, 18, 85.71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Farhana Hossain', '2026-05-01 11:49:04'),
(139, 14, 'Department', 'object', 'categorical', 1, 4.76, 8, 38.10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BBA', '2026-05-01 11:49:04'),
(140, 14, 'GPA', 'float64', 'numeric', 1, 4.76, 20, 95.24, 2.906000, 0.648094, 2.050000, 3.960000, 2.855000, 0.2537, -1.4484, '2.05', '2026-05-01 11:49:04'),
(141, 14, 'Admission_Year', 'float64', 'numeric', 1, 4.76, 6, 28.57, 2021.200000, 2.067289, 2018.000000, 2024.000000, 2021.000000, -0.0191, -0.9573, '2021.0', '2026-05-01 11:49:04'),
(142, 15, 'Weather', 'object', 'categorical', 0, 0.00, 3, 30.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cloudy', '2026-05-01 11:55:48'),
(143, 15, 'Humidity', 'object', 'categorical', 0, 0.00, 2, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '2026-05-01 11:55:48'),
(144, 15, 'Wind', 'object', 'categorical', 0, 0.00, 2, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Week', '2026-05-01 11:55:48'),
(145, 15, 'Play', 'object', 'categorical', 0, 0.00, 2, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', '2026-05-01 11:55:48'),
(146, 16, 'Weather', 'object', 'categorical', 0, 0.00, 3, 30.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cloudy', '2026-05-01 12:14:05'),
(147, 16, 'Humidity', 'object', 'categorical', 0, 0.00, 2, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '2026-05-01 12:14:05'),
(148, 16, 'Wind', 'object', 'categorical', 0, 0.00, 2, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Week', '2026-05-01 12:14:05'),
(149, 16, 'Play', 'object', 'categorical', 0, 0.00, 2, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', '2026-05-01 12:14:05'),
(150, 17, 'Unnamed: 0', 'int64', 'numeric', 0, 0.00, 30, 100.00, 14.500000, 8.803408, 0.000000, 29.000000, 14.500000, 0.0000, -1.2000, '0', '2026-05-01 12:15:27'),
(151, 17, 'YearsExperience', 'float64', 'numeric', 0, 0.00, 28, 93.33, 5.413333, 2.837888, 1.200000, 10.600000, 4.800000, 0.3796, -1.0122, '3.3', '2026-05-01 12:15:27'),
(152, 17, 'Salary', 'int64', 'numeric', 0, 0.00, 30, 100.00, 76004.000000, 27414.429785, 37732.000000, 122392.000000, 65238.000000, 0.3541, -1.2954, '37732', '2026-05-01 12:15:27'),
(153, 18, 'Weather', 'object', 'categorical', 0, 0.00, 3, 30.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cloudy', '2026-05-01 12:22:07'),
(154, 18, 'Humidity', 'object', 'categorical', 0, 0.00, 2, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '2026-05-01 12:22:07'),
(155, 18, 'Wind', 'object', 'categorical', 0, 0.00, 2, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Week', '2026-05-01 12:22:07'),
(156, 18, 'Play', 'object', 'categorical', 0, 0.00, 2, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', '2026-05-01 12:22:07'),
(157, 19, 'Weather', 'object', 'categorical', 0, 0.00, 3, 30.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cloudy', '2026-05-01 12:23:44'),
(158, 19, 'Humidity', 'object', 'categorical', 0, 0.00, 2, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '2026-05-01 12:23:44'),
(159, 19, 'Wind', 'object', 'categorical', 0, 0.00, 2, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Week', '2026-05-01 12:23:44'),
(160, 19, 'Play', 'object', 'categorical', 0, 0.00, 2, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', '2026-05-01 12:23:44'),
(161, 20, 'ID', 'object', 'text', 0, 0.00, 21, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '...', '2026-05-01 16:06:26'),
(162, 20, 'Name', 'object', 'categorical', 1, 4.76, 18, 85.71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Farhana Hossain', '2026-05-01 16:06:26'),
(163, 20, 'Department', 'object', 'categorical', 1, 4.76, 8, 38.10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BBA', '2026-05-01 16:06:26'),
(164, 20, 'GPA', 'float64', 'numeric', 1, 4.76, 20, 95.24, 2.906000, 0.648094, 2.050000, 3.960000, 2.855000, 0.2537, -1.4484, '2.05', '2026-05-01 16:06:26'),
(165, 20, 'Admission_Year', 'float64', 'numeric', 1, 4.76, 6, 28.57, 2021.200000, 2.067289, 2018.000000, 2024.000000, 2021.000000, -0.0191, -0.9573, '2021.0', '2026-05-01 16:06:26'),
(166, 21, 'budget', 'int64', 'numeric', 0, 0.00, 436, 9.08, 29045039.875286, 40722391.258550, 0.000000, 380000000.000000, 15000000.000000, 2.4372, 7.6581, '0', '2026-05-01 16:23:26'),
(167, 21, 'genres', 'object', 'text', 0, 0.00, 1175, 24.46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"id\": 18, \"name\": \"Drama\"}]', '2026-05-01 16:23:26'),
(168, 21, 'homepage', 'object', 'categorical', 3091, 64.36, 1691, 35.21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://www.missionimpossible.com/', '2026-05-01 16:23:26'),
(169, 21, 'id', 'int64', 'numeric', 0, 0.00, 4803, 100.00, 57165.484281, 88694.614033, 5.000000, 459488.000000, 14629.000000, 2.0721, 3.3467, '5', '2026-05-01 16:23:26'),
(170, 21, 'keywords', 'object', 'text', 0, 0.00, 4222, 87.90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[]', '2026-05-01 16:23:26'),
(171, 21, 'original_language', 'object', 'categorical', 0, 0.00, 37, 0.77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'en', '2026-05-01 16:23:26'),
(172, 21, 'original_title', 'object', 'text', 0, 0.00, 4801, 99.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Batman', '2026-05-01 16:23:26'),
(173, 21, 'overview', 'object', 'text', 3, 0.06, 4800, 99.94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' ', '2026-05-01 16:23:26'),
(174, 21, 'popularity', 'float64', 'numeric', 0, 0.00, 4802, 99.98, 21.492301, 31.816650, 0.000000, 875.581305, 12.921594, 9.7214, 191.9958, '8.902102', '2026-05-01 16:23:26'),
(175, 21, 'production_companies', 'object', 'text', 0, 0.00, 3697, 76.97, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[]', '2026-05-01 16:23:26'),
(176, 21, 'production_countries', 'object', 'text', 0, 0.00, 469, 9.76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"iso_3166_1\": \"US\", \"name\": \"United States of America\"}]', '2026-05-01 16:23:26'),
(177, 21, 'release_date', 'object', 'categorical', 1, 0.02, 3280, 68.29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1/1/2006', '2026-05-01 16:23:26'),
(178, 21, 'revenue', 'int64', 'numeric', 0, 0.00, 3297, 68.64, 82260638.651676, 162857100.942830, 0.000000, 2787965087.000000, 19170001.000000, 4.4447, 33.1236, '0', '2026-05-01 16:23:26'),
(179, 21, 'runtime', 'float64', 'numeric', 2, 0.04, 156, 3.25, 106.875859, 22.611935, 0.000000, 338.000000, 103.000000, 0.7160, 8.9354, '90.0', '2026-05-01 16:23:26'),
(180, 21, 'spoken_languages', 'object', 'text', 0, 0.00, 544, 11.33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"iso_639_1\": \"en\", \"name\": \"English\"}]', '2026-05-01 16:23:26'),
(181, 21, 'status', 'object', 'categorical', 0, 0.00, 3, 0.06, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Released', '2026-05-01 16:23:26'),
(182, 21, 'tagline', 'object', 'categorical', 844, 17.57, 3944, 82.12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Based on a true story.', '2026-05-01 16:23:26'),
(183, 21, 'title', 'object', 'text', 0, 0.00, 4800, 99.94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Batman', '2026-05-01 16:23:26'),
(184, 21, 'vote_average', 'float64', 'numeric', 0, 0.00, 71, 1.48, 6.092172, 1.194612, 0.000000, 10.000000, 6.200000, -1.9597, 7.7924, '6.0', '2026-05-01 16:23:26'),
(185, 21, 'vote_count', 'int64', 'numeric', 0, 0.00, 1609, 33.50, 690.217989, 1234.585891, 0.000000, 13752.000000, 235.000000, 3.8241, 19.9139, '0', '2026-05-01 16:23:26'),
(186, 22, 'car_ID', 'int64', 'numeric', 0, 0.00, 205, 100.00, 103.000000, 59.322565, 1.000000, 205.000000, 103.000000, 0.0000, -1.2000, '1', '2026-05-01 16:25:33'),
(187, 22, 'symboling', 'int64', 'numeric', 0, 0.00, 6, 2.93, 0.834146, 1.245307, -2.000000, 3.000000, 1.000000, 0.2111, -0.6763, '0', '2026-05-01 16:25:33'),
(188, 22, 'CarName', 'object', 'categorical', 0, 0.00, 147, 71.71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'peugeot 504', '2026-05-01 16:25:33'),
(189, 22, 'fueltype', 'object', 'categorical', 0, 0.00, 2, 0.98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gas', '2026-05-01 16:25:33'),
(190, 22, 'aspiration', 'object', 'categorical', 0, 0.00, 2, 0.98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'std', '2026-05-01 16:25:33'),
(191, 22, 'doornumber', 'object', 'categorical', 0, 0.00, 2, 0.98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'four', '2026-05-01 16:25:33'),
(192, 22, 'carbody', 'object', 'categorical', 0, 0.00, 5, 2.44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sedan', '2026-05-01 16:25:33'),
(193, 22, 'drivewheel', 'object', 'categorical', 0, 0.00, 3, 1.46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fwd', '2026-05-01 16:25:33'),
(194, 22, 'enginelocation', 'object', 'categorical', 0, 0.00, 2, 0.98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'front', '2026-05-01 16:25:33'),
(195, 22, 'wheelbase', 'float64', 'numeric', 0, 0.00, 53, 25.85, 98.756585, 6.021776, 86.600000, 120.900000, 97.000000, 1.0502, 1.0170, '94.5', '2026-05-01 16:25:33'),
(196, 22, 'carlength', 'float64', 'numeric', 0, 0.00, 75, 36.59, 174.049268, 12.337289, 141.100000, 208.100000, 173.200000, 0.1560, -0.0829, '157.3', '2026-05-01 16:25:33'),
(197, 22, 'carwidth', 'float64', 'numeric', 0, 0.00, 44, 21.46, 65.907805, 2.145204, 60.300000, 72.300000, 65.500000, 0.9040, 0.7028, '63.8', '2026-05-01 16:25:33'),
(198, 22, 'carheight', 'float64', 'numeric', 0, 0.00, 49, 23.90, 53.724878, 2.443522, 47.800000, 59.800000, 54.100000, 0.0631, -0.4438, '50.8', '2026-05-01 16:25:33'),
(199, 22, 'curbweight', 'int64', 'numeric', 0, 0.00, 171, 83.41, 2555.565854, 520.680204, 1488.000000, 4066.000000, 2414.000000, 0.6814, -0.0429, '2385', '2026-05-01 16:25:33'),
(200, 22, 'enginetype', 'object', 'categorical', 0, 0.00, 7, 3.41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ohc', '2026-05-01 16:25:33'),
(201, 22, 'cylindernumber', 'object', 'categorical', 0, 0.00, 7, 3.41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'four', '2026-05-01 16:25:33'),
(202, 22, 'enginesize', 'int64', 'numeric', 0, 0.00, 44, 21.46, 126.907317, 41.642693, 61.000000, 326.000000, 120.000000, 1.9477, 5.3057, '92', '2026-05-01 16:25:33'),
(203, 22, 'fuelsystem', 'object', 'categorical', 0, 0.00, 8, 3.90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mpfi', '2026-05-01 16:25:33'),
(204, 22, 'boreratio', 'float64', 'numeric', 0, 0.00, 38, 18.54, 3.329756, 0.270844, 2.540000, 3.940000, 3.310000, 0.0202, -0.7850, '3.62', '2026-05-01 16:25:33'),
(205, 22, 'stroke', 'float64', 'numeric', 0, 0.00, 37, 18.05, 3.255415, 0.313597, 2.070000, 4.170000, 3.290000, -0.6897, 2.1744, '3.4', '2026-05-01 16:25:33'),
(206, 22, 'compressionratio', 'float64', 'numeric', 0, 0.00, 32, 15.61, 10.142537, 3.972040, 7.000000, 23.000000, 9.000000, 2.6109, 5.2331, '9.0', '2026-05-01 16:25:33'),
(207, 22, 'horsepower', 'int64', 'numeric', 0, 0.00, 59, 28.78, 104.117073, 39.544167, 48.000000, 288.000000, 95.000000, 1.4053, 2.6840, '68', '2026-05-01 16:25:33'),
(208, 22, 'peakrpm', 'int64', 'numeric', 0, 0.00, 23, 11.22, 5125.121951, 476.985643, 4150.000000, 6600.000000, 5200.000000, 0.0752, 0.0868, '5500', '2026-05-01 16:25:33'),
(209, 22, 'citympg', 'int64', 'numeric', 0, 0.00, 29, 14.15, 25.219512, 6.542142, 13.000000, 49.000000, 24.000000, 0.6637, 0.5786, '31', '2026-05-01 16:25:33'),
(210, 22, 'highwaympg', 'int64', 'numeric', 0, 0.00, 30, 14.63, 30.751220, 6.886443, 16.000000, 54.000000, 30.000000, 0.5400, 0.4401, '25', '2026-05-01 16:25:33'),
(211, 22, 'price', 'float64', 'numeric', 0, 0.00, 189, 92.20, 13276.710571, 7988.852332, 5118.000000, 45400.000000, 10295.000000, 1.7777, 3.0516, '5572.0', '2026-05-01 16:25:33'),
(212, 23, 'Weather', 'object', 'categorical', 0, 0.00, 3, 30.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cloudy', '2026-05-01 16:35:17'),
(213, 23, 'Humidity', 'object', 'categorical', 0, 0.00, 2, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '2026-05-01 16:35:17'),
(214, 23, 'Wind', 'object', 'categorical', 0, 0.00, 2, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Week', '2026-05-01 16:35:17'),
(215, 23, 'Play', 'object', 'categorical', 0, 0.00, 2, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', '2026-05-01 16:35:17'),
(216, 24, 'T', 'float64', 'numeric', 0, 0.00, 243, 22.23, 26.009241, 7.237401, 6.700000, 38.500000, 28.200000, -0.4433, -0.9420, '30.4', '2026-05-03 15:36:05'),
(217, 24, 'TM', 'float64', 'numeric', 0, 0.00, 238, 21.77, 32.482251, 6.679078, 9.800000, 45.500000, 34.200000, -0.5409, -0.3822, '35.0', '2026-05-03 15:36:05'),
(218, 24, 'Tm', 'float64', 'numeric', 0, 0.00, 223, 20.40, 19.460201, 7.438653, 0.000000, 32.700000, 21.200000, -0.3301, -1.2536, '26.0', '2026-05-03 15:36:05'),
(219, 24, 'SLP', 'float64', 'numeric', 0, 0.00, 254, 23.24, 1008.081885, 7.529237, 991.500000, 1023.200000, 1008.100000, -0.0531, -1.3282, '1015.4', '2026-05-03 15:36:05'),
(220, 24, 'H', 'float64', 'numeric', 0, 0.00, 76, 6.95, 62.918573, 15.709816, 20.000000, 98.000000, 64.000000, -0.4356, -0.1534, '61.0', '2026-05-03 15:36:05'),
(221, 24, 'VV', 'float64', 'numeric', 0, 0.00, 22, 2.01, 2.003111, 0.747541, 0.300000, 5.800000, 1.900000, 0.0827, 1.0089, '1.9', '2026-05-03 15:36:05'),
(222, 24, 'V', 'float64', 'numeric', 0, 0.00, 94, 8.60, 6.751510, 3.841137, 0.400000, 24.400000, 6.500000, 0.6491, 0.3607, '7.8', '2026-05-03 15:36:05'),
(223, 24, 'VM', 'float64', 'numeric', 0, 0.00, 27, 2.47, 15.805124, 7.308435, 1.900000, 57.600000, 14.800000, 1.3272, 4.3262, '14.8', '2026-05-03 15:36:05'),
(224, 24, 'PM 2.5', 'float64', 'numeric', 1, 0.09, 555, 50.78, 109.090984, 84.465790, 0.000000, 404.500000, 83.458333, 0.9938, 0.3052, '0.0', '2026-05-03 15:36:05'),
(225, 25, 'age', 'int64', 'numeric', 0, 0.00, 41, 4.00, 54.434146, 9.072290, 29.000000, 77.000000, 56.000000, -0.2489, -0.5256, '58', '2026-05-03 18:41:47'),
(226, 25, 'sex', 'int64', 'numeric', 0, 0.00, 2, 0.20, 0.695610, 0.460373, 0.000000, 1.000000, 1.000000, -0.8514, -1.2775, '1', '2026-05-03 18:41:47'),
(227, 25, 'cp', 'int64', 'numeric', 0, 0.00, 4, 0.39, 0.942439, 1.029641, 0.000000, 3.000000, 1.000000, 0.5295, -1.1495, '0', '2026-05-03 18:41:47'),
(228, 25, 'trestbps', 'int64', 'numeric', 0, 0.00, 49, 4.78, 131.611707, 17.516718, 94.000000, 200.000000, 130.000000, 0.7398, 0.9912, '120', '2026-05-03 18:41:47'),
(229, 25, 'chol', 'int64', 'numeric', 0, 0.00, 152, 14.83, 246.000000, 51.592510, 126.000000, 564.000000, 240.000000, 1.0741, 3.9968, '204', '2026-05-03 18:41:47'),
(230, 25, 'fbs', 'int64', 'numeric', 0, 0.00, 2, 0.20, 0.149268, 0.356527, 0.000000, 1.000000, 0.000000, 1.9713, 1.8899, '0', '2026-05-03 18:41:47'),
(231, 25, 'restecg', 'int64', 'numeric', 0, 0.00, 3, 0.29, 0.529756, 0.527878, 0.000000, 2.000000, 1.000000, 0.1804, -1.3096, '1', '2026-05-03 18:41:47'),
(232, 25, 'thalach', 'int64', 'numeric', 0, 0.00, 91, 8.88, 149.114146, 23.005724, 71.000000, 202.000000, 152.000000, -0.5138, -0.0888, '162', '2026-05-03 18:41:47'),
(233, 25, 'exang', 'int64', 'numeric', 0, 0.00, 2, 0.20, 0.336585, 0.472772, 0.000000, 1.000000, 0.000000, 0.6927, -1.5232, '0', '2026-05-03 18:41:47'),
(234, 25, 'oldpeak', 'float64', 'numeric', 0, 0.00, 40, 3.90, 1.071512, 1.175053, 0.000000, 6.200000, 0.800000, 1.2109, 1.3145, '0.0', '2026-05-03 18:41:47'),
(235, 25, 'slope', 'int64', 'numeric', 0, 0.00, 3, 0.29, 1.385366, 0.617755, 0.000000, 2.000000, 1.000000, -0.4791, -0.6471, '1', '2026-05-03 18:41:47'),
(236, 25, 'ca', 'int64', 'numeric', 0, 0.00, 5, 0.49, 0.754146, 1.030798, 0.000000, 4.000000, 0.000000, 1.2612, 0.7011, '0', '2026-05-03 18:41:47'),
(237, 25, 'thal', 'int64', 'numeric', 0, 0.00, 4, 0.39, 2.323902, 0.620660, 0.000000, 3.000000, 2.000000, -0.5244, 0.2508, '2', '2026-05-03 18:41:47'),
(238, 25, 'target', 'int64', 'numeric', 0, 0.00, 2, 0.20, 0.513171, 0.500070, 0.000000, 1.000000, 1.000000, -0.0528, -2.0011, '1', '2026-05-03 18:41:47'),
(239, 26, 'id,accident_risk', 'object', 'text', 0, 0.00, 50000, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '517754,0.2908660517206335', '2026-05-04 05:50:53'),
(240, 27, 'T', 'float64', 'numeric', 0, 0.00, 243, 22.23, 26.009241, 7.237401, 6.700000, 38.500000, 28.200000, -0.4433, -0.9420, '30.4', '2026-05-05 19:37:47'),
(241, 27, 'TM', 'float64', 'numeric', 0, 0.00, 238, 21.77, 32.482251, 6.679078, 9.800000, 45.500000, 34.200000, -0.5409, -0.3822, '35.0', '2026-05-05 19:37:47'),
(242, 27, 'Tm', 'float64', 'numeric', 0, 0.00, 223, 20.40, 19.460201, 7.438653, 0.000000, 32.700000, 21.200000, -0.3301, -1.2536, '26.0', '2026-05-05 19:37:47'),
(243, 27, 'SLP', 'float64', 'numeric', 0, 0.00, 254, 23.24, 1008.081885, 7.529237, 991.500000, 1023.200000, 1008.100000, -0.0531, -1.3282, '1015.4', '2026-05-05 19:37:47'),
(244, 27, 'H', 'float64', 'numeric', 0, 0.00, 76, 6.95, 62.918573, 15.709816, 20.000000, 98.000000, 64.000000, -0.4356, -0.1534, '61.0', '2026-05-05 19:37:47'),
(245, 27, 'VV', 'float64', 'numeric', 0, 0.00, 22, 2.01, 2.003111, 0.747541, 0.300000, 5.800000, 1.900000, 0.0827, 1.0089, '1.9', '2026-05-05 19:37:47'),
(246, 27, 'V', 'float64', 'numeric', 0, 0.00, 94, 8.60, 6.751510, 3.841137, 0.400000, 24.400000, 6.500000, 0.6491, 0.3607, '7.8', '2026-05-05 19:37:47'),
(247, 27, 'VM', 'float64', 'numeric', 0, 0.00, 27, 2.47, 15.805124, 7.308435, 1.900000, 57.600000, 14.800000, 1.3272, 4.3262, '14.8', '2026-05-05 19:37:47'),
(248, 27, 'PM 2.5', 'float64', 'numeric', 1, 0.09, 555, 50.78, 109.090984, 84.465790, 0.000000, 404.500000, 83.458333, 0.9938, 0.3052, '0.0', '2026-05-05 19:37:47'),
(249, 28, 'T', 'float64', 'numeric', 0, 0.00, 243, 22.23, 26.009241, 7.237401, 6.700000, 38.500000, 28.200000, -0.4433, -0.9420, '30.4', '2026-05-05 20:01:03'),
(250, 28, 'TM', 'float64', 'numeric', 0, 0.00, 238, 21.77, 32.482251, 6.679078, 9.800000, 45.500000, 34.200000, -0.5409, -0.3822, '35.0', '2026-05-05 20:01:03'),
(251, 28, 'Tm', 'float64', 'numeric', 0, 0.00, 223, 20.40, 19.460201, 7.438653, 0.000000, 32.700000, 21.200000, -0.3301, -1.2536, '26.0', '2026-05-05 20:01:03'),
(252, 28, 'SLP', 'float64', 'numeric', 0, 0.00, 254, 23.24, 1008.081885, 7.529237, 991.500000, 1023.200000, 1008.100000, -0.0531, -1.3282, '1015.4', '2026-05-05 20:01:03'),
(253, 28, 'H', 'float64', 'numeric', 0, 0.00, 76, 6.95, 62.918573, 15.709816, 20.000000, 98.000000, 64.000000, -0.4356, -0.1534, '61.0', '2026-05-05 20:01:03'),
(254, 28, 'VV', 'float64', 'numeric', 0, 0.00, 22, 2.01, 2.003111, 0.747541, 0.300000, 5.800000, 1.900000, 0.0827, 1.0089, '1.9', '2026-05-05 20:01:03'),
(255, 28, 'V', 'float64', 'numeric', 0, 0.00, 94, 8.60, 6.751510, 3.841137, 0.400000, 24.400000, 6.500000, 0.6491, 0.3607, '7.8', '2026-05-05 20:01:03'),
(256, 28, 'VM', 'float64', 'numeric', 0, 0.00, 27, 2.47, 15.805124, 7.308435, 1.900000, 57.600000, 14.800000, 1.3272, 4.3262, '14.8', '2026-05-05 20:01:03'),
(257, 28, 'PM 2.5', 'float64', 'numeric', 1, 0.09, 555, 50.78, 109.090984, 84.465790, 0.000000, 404.500000, 83.458333, 0.9938, 0.3052, '0.0', '2026-05-05 20:01:03'),
(258, 29, 'age', 'int64', 'numeric', 0, 0.00, 41, 4.00, 54.434146, 9.072290, 29.000000, 77.000000, 56.000000, -0.2489, -0.5256, '58', '2026-05-05 20:07:45'),
(259, 29, 'sex', 'int64', 'numeric', 0, 0.00, 2, 0.20, 0.695610, 0.460373, 0.000000, 1.000000, 1.000000, -0.8514, -1.2775, '1', '2026-05-05 20:07:45'),
(260, 29, 'cp', 'int64', 'numeric', 0, 0.00, 4, 0.39, 0.942439, 1.029641, 0.000000, 3.000000, 1.000000, 0.5295, -1.1495, '0', '2026-05-05 20:07:45'),
(261, 29, 'trestbps', 'int64', 'numeric', 0, 0.00, 49, 4.78, 131.611707, 17.516718, 94.000000, 200.000000, 130.000000, 0.7398, 0.9912, '120', '2026-05-05 20:07:45'),
(262, 29, 'chol', 'int64', 'numeric', 0, 0.00, 152, 14.83, 246.000000, 51.592510, 126.000000, 564.000000, 240.000000, 1.0741, 3.9968, '204', '2026-05-05 20:07:45'),
(263, 29, 'fbs', 'int64', 'numeric', 0, 0.00, 2, 0.20, 0.149268, 0.356527, 0.000000, 1.000000, 0.000000, 1.9713, 1.8899, '0', '2026-05-05 20:07:45'),
(264, 29, 'restecg', 'int64', 'numeric', 0, 0.00, 3, 0.29, 0.529756, 0.527878, 0.000000, 2.000000, 1.000000, 0.1804, -1.3096, '1', '2026-05-05 20:07:45'),
(265, 29, 'thalach', 'int64', 'numeric', 0, 0.00, 91, 8.88, 149.114146, 23.005724, 71.000000, 202.000000, 152.000000, -0.5138, -0.0888, '162', '2026-05-05 20:07:45'),
(266, 29, 'exang', 'int64', 'numeric', 0, 0.00, 2, 0.20, 0.336585, 0.472772, 0.000000, 1.000000, 0.000000, 0.6927, -1.5232, '0', '2026-05-05 20:07:45'),
(267, 29, 'oldpeak', 'float64', 'numeric', 0, 0.00, 40, 3.90, 1.071512, 1.175053, 0.000000, 6.200000, 0.800000, 1.2109, 1.3145, '0.0', '2026-05-05 20:07:45'),
(268, 29, 'slope', 'int64', 'numeric', 0, 0.00, 3, 0.29, 1.385366, 0.617755, 0.000000, 2.000000, 1.000000, -0.4791, -0.6471, '1', '2026-05-05 20:07:45'),
(269, 29, 'ca', 'int64', 'numeric', 0, 0.00, 5, 0.49, 0.754146, 1.030798, 0.000000, 4.000000, 0.000000, 1.2612, 0.7011, '0', '2026-05-05 20:07:45'),
(270, 29, 'thal', 'int64', 'numeric', 0, 0.00, 4, 0.39, 2.323902, 0.620660, 0.000000, 3.000000, 2.000000, -0.5244, 0.2508, '2', '2026-05-05 20:07:45'),
(271, 29, 'target', 'int64', 'numeric', 0, 0.00, 2, 0.20, 0.513171, 0.500070, 0.000000, 1.000000, 1.000000, -0.0528, -2.0011, '1', '2026-05-05 20:07:45'),
(272, 30, 'id,accident_risk', 'object', 'text', 0, 0.00, 50000, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '517754,0.2908660517206335', '2026-05-05 20:14:04'),
(273, 31, 'brand_id', 'int64', 'numeric', 0, 0.00, 9, 100.00, 5.000000, 2.738613, 1.000000, 9.000000, 5.000000, 0.0000, -1.2000, '1', '2026-05-05 20:14:23'),
(274, 31, 'brand_name', 'object', 'text', 0, 0.00, 9, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Electra', '2026-05-05 20:14:23'),
(275, 32, 'T', 'float64', 'numeric', 0, 0.00, 243, 22.23, 26.009241, 7.237401, 6.700000, 38.500000, 28.200000, -0.4433, -0.9420, '30.4', '2026-05-05 20:22:42'),
(276, 32, 'TM', 'float64', 'numeric', 0, 0.00, 238, 21.77, 32.482251, 6.679078, 9.800000, 45.500000, 34.200000, -0.5409, -0.3822, '35.0', '2026-05-05 20:22:42'),
(277, 32, 'Tm', 'float64', 'numeric', 0, 0.00, 223, 20.40, 19.460201, 7.438653, 0.000000, 32.700000, 21.200000, -0.3301, -1.2536, '26.0', '2026-05-05 20:22:42'),
(278, 32, 'SLP', 'float64', 'numeric', 0, 0.00, 254, 23.24, 1008.081885, 7.529237, 991.500000, 1023.200000, 1008.100000, -0.0531, -1.3282, '1015.4', '2026-05-05 20:22:42'),
(279, 32, 'H', 'float64', 'numeric', 0, 0.00, 76, 6.95, 62.918573, 15.709816, 20.000000, 98.000000, 64.000000, -0.4356, -0.1534, '61.0', '2026-05-05 20:22:42'),
(280, 32, 'VV', 'float64', 'numeric', 0, 0.00, 22, 2.01, 2.003111, 0.747541, 0.300000, 5.800000, 1.900000, 0.0827, 1.0089, '1.9', '2026-05-05 20:22:42'),
(281, 32, 'V', 'float64', 'numeric', 0, 0.00, 94, 8.60, 6.751510, 3.841137, 0.400000, 24.400000, 6.500000, 0.6491, 0.3607, '7.8', '2026-05-05 20:22:42'),
(282, 32, 'VM', 'float64', 'numeric', 0, 0.00, 27, 2.47, 15.805124, 7.308435, 1.900000, 57.600000, 14.800000, 1.3272, 4.3262, '14.8', '2026-05-05 20:22:42'),
(283, 32, 'PM 2.5', 'float64', 'numeric', 1, 0.09, 555, 50.78, 109.090984, 84.465790, 0.000000, 404.500000, 83.458333, 0.9938, 0.3052, '0.0', '2026-05-05 20:22:42'),
(284, 33, 'ID', 'int64', 'numeric', 0, 0.00, 1500, 100.00, 750.500000, 433.157015, 1.000000, 1500.000000, 750.500000, 0.0000, -1.2000, '1', '2026-05-05 20:27:28'),
(285, 33, 'Income', 'int64', 'numeric', 0, 0.00, 105, 7.00, 75.986000, 20.005215, 14.000000, 134.000000, 76.000000, -0.0356, -0.4117, '81', '2026-05-05 20:27:28'),
(286, 33, 'Age', 'int64', 'numeric', 0, 0.00, 53, 3.53, 43.582000, 15.169466, 18.000000, 70.000000, 44.000000, 0.0047, -1.2207, '50', '2026-05-05 20:27:28'),
(287, 33, 'Education', 'int64', 'numeric', 0, 0.00, 11, 0.73, 14.681333, 2.693812, 10.000000, 20.000000, 15.000000, 0.1605, -1.0869, '12', '2026-05-05 20:27:28'),
(288, 33, 'Gender', 'int64', 'numeric', 0, 0.00, 2, 0.13, 0.490000, 0.500067, 0.000000, 1.000000, 0.000000, 0.0400, -2.0011, '0', '2026-05-05 20:27:28'),
(289, 34, 'brand_id', 'int64', 'numeric', 0, 0.00, 9, 100.00, 5.000000, 2.738613, 1.000000, 9.000000, 5.000000, 0.0000, -1.2000, '1', '2026-05-06 04:46:07'),
(290, 34, 'brand_name', 'object', 'text', 0, 0.00, 9, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Electra', '2026-05-06 04:46:07'),
(291, 35, 'Loan_ID', 'object', 'text', 0, 0.00, 614, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LP001002', '2026-05-06 05:04:05'),
(292, 35, 'Gender', 'object', 'categorical', 13, 2.12, 2, 0.33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Male', '2026-05-06 05:04:05'),
(293, 35, 'Married', 'object', 'categorical', 3, 0.49, 2, 0.33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', '2026-05-06 05:04:05'),
(294, 35, 'Dependents', 'object', 'categorical', 15, 2.44, 4, 0.65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2026-05-06 05:04:05'),
(295, 35, 'Education', 'object', 'categorical', 0, 0.00, 2, 0.33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', '2026-05-06 05:04:05'),
(296, 35, 'Self_Employed', 'object', 'categorical', 32, 5.21, 2, 0.33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', '2026-05-06 05:04:05'),
(297, 35, 'ApplicantIncome', 'int64', 'numeric', 0, 0.00, 505, 82.25, 5403.459283, 6109.041673, 150.000000, 81000.000000, 3812.500000, 6.5395, 60.5407, '2500', '2026-05-06 05:04:05'),
(298, 35, 'CoapplicantIncome', 'float64', 'numeric', 0, 0.00, 287, 46.74, 1621.245798, 2926.248369, 0.000000, 41667.000000, 1188.500000, 7.4915, 84.9564, '0.0', '2026-05-06 05:04:05'),
(299, 35, 'LoanAmount', 'float64', 'numeric', 22, 3.58, 203, 33.06, 146.412162, 85.587325, 9.000000, 700.000000, 128.000000, 2.6776, 10.4015, '120.0', '2026-05-06 05:04:05'),
(300, 35, 'Loan_Amount_Term', 'float64', 'numeric', 14, 2.28, 10, 1.63, 342.000000, 65.120410, 12.000000, 480.000000, 360.000000, -2.3624, 6.6735, '360.0', '2026-05-06 05:04:05'),
(301, 35, 'Credit_History', 'float64', 'numeric', 50, 8.14, 2, 0.33, 0.842199, 0.364878, 0.000000, 1.000000, 1.000000, -1.8824, 1.5488, '1.0', '2026-05-06 05:04:05'),
(302, 35, 'Property_Area', 'object', 'categorical', 0, 0.00, 3, 0.49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Semiurban', '2026-05-06 05:04:05'),
(303, 35, 'Loan_Status', 'object', 'categorical', 0, 0.00, 2, 0.33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', '2026-05-06 05:04:05'),
(304, 36, 'T', 'float64', 'numeric', 0, 0.00, 243, 22.23, 26.009241, 7.237401, 6.700000, 38.500000, 28.200000, -0.4433, -0.9420, '30.4', '2026-05-06 05:05:30'),
(305, 36, 'TM', 'float64', 'numeric', 0, 0.00, 238, 21.77, 32.482251, 6.679078, 9.800000, 45.500000, 34.200000, -0.5409, -0.3822, '35.0', '2026-05-06 05:05:30'),
(306, 36, 'Tm', 'float64', 'numeric', 0, 0.00, 223, 20.40, 19.460201, 7.438653, 0.000000, 32.700000, 21.200000, -0.3301, -1.2536, '26.0', '2026-05-06 05:05:30'),
(307, 36, 'SLP', 'float64', 'numeric', 0, 0.00, 254, 23.24, 1008.081885, 7.529237, 991.500000, 1023.200000, 1008.100000, -0.0531, -1.3282, '1015.4', '2026-05-06 05:05:30'),
(308, 36, 'H', 'float64', 'numeric', 0, 0.00, 76, 6.95, 62.918573, 15.709816, 20.000000, 98.000000, 64.000000, -0.4356, -0.1534, '61.0', '2026-05-06 05:05:30'),
(309, 36, 'VV', 'float64', 'numeric', 0, 0.00, 22, 2.01, 2.003111, 0.747541, 0.300000, 5.800000, 1.900000, 0.0827, 1.0089, '1.9', '2026-05-06 05:05:30'),
(310, 36, 'V', 'float64', 'numeric', 0, 0.00, 94, 8.60, 6.751510, 3.841137, 0.400000, 24.400000, 6.500000, 0.6491, 0.3607, '7.8', '2026-05-06 05:05:30'),
(311, 36, 'VM', 'float64', 'numeric', 0, 0.00, 27, 2.47, 15.805124, 7.308435, 1.900000, 57.600000, 14.800000, 1.3272, 4.3262, '14.8', '2026-05-06 05:05:30'),
(312, 36, 'PM 2.5', 'float64', 'numeric', 1, 0.09, 555, 50.78, 109.090984, 84.465790, 0.000000, 404.500000, 83.458333, 0.9938, 0.3052, '0.0', '2026-05-06 05:05:30'),
(313, 37, 'id,accident_risk', 'object', 'text', 0, 0.00, 50000, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '517754,0.2908660517206335', '2026-05-06 07:01:20'),
(314, 38, 'Weather', 'object', 'categorical', 0, 0.00, 3, 30.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cloudy', '2026-05-06 17:28:46'),
(315, 38, 'Humidity', 'object', 'categorical', 0, 0.00, 2, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '2026-05-06 17:28:46'),
(316, 38, 'Wind', 'object', 'categorical', 0, 0.00, 2, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Week', '2026-05-06 17:28:46'),
(317, 38, 'Play', 'object', 'categorical', 0, 0.00, 2, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', '2026-05-06 17:28:46'),
(318, 39, 'image', 'object', 'text', 0, 0.00, 25, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.jpg', '2026-07-24 13:58:54'),
(319, 39, 'gt_text', 'object', 'text', 0, 0.00, 25, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2D Echo Trop T positive LVSD 38 to 40 RCA preserved valve function Normal sinus rhythm 4 x 20 TPR', '2026-07-24 13:58:54'),
(320, 40, 'image', 'object', 'text', 0, 0.00, 25, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.jpg', '2026-07-25 07:32:31'),
(321, 40, 'gt_text', 'object', 'text', 0, 0.00, 25, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2D Echo Trop T positive LVSD 38 to 40 RCA preserved valve function Normal sinus rhythm 4 x 20 TPR', '2026-07-25 07:32:31'),
(322, 41, 'image', 'object', 'text', 0, 0.00, 25, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.jpg', '2026-07-25 16:37:33'),
(323, 41, 'gt_text', 'object', 'text', 0, 0.00, 25, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2D Echo Trop T positive LVSD 38 to 40 RCA preserved valve function Normal sinus rhythm 4 x 20 TPR', '2026-07-25 16:37:33'),
(324, 42, 'year', 'int64', 'numeric', 0, 0.00, 15, 0.06, 2018.000000, 4.320587, 2011.000000, 2025.000000, 2018.000000, 0.0000, -1.2107, '2011', '2026-07-25 16:40:54'),
(325, 42, 'industry_code_ANZSIC', 'object', 'categorical', 0, 0.00, 20, 0.09, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', '2026-07-25 16:40:54');
INSERT INTO `column_statistics` (`id`, `dataset_profile_id`, `column_name`, `data_type`, `inferred_type`, `missing_count`, `missing_percentage`, `unique_count`, `unique_percentage`, `mean_value`, `std_value`, `min_value`, `max_value`, `median_value`, `skewness`, `kurtosis`, `most_frequent_value`, `created_at`) VALUES
(326, 42, 'industry_name_ANZSIC', 'object', 'categorical', 0, 0.00, 20, 0.09, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Accommodation and Food Services', '2026-07-25 16:40:54'),
(327, 42, 'rme_size_grp', 'object', 'categorical', 0, 0.00, 10, 0.04, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a_0', '2026-07-25 16:40:54'),
(328, 42, 'variable', 'object', 'categorical', 0, 0.00, 9, 0.04, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Activity unit', '2026-07-25 16:40:54'),
(329, 42, 'value', 'object', 'categorical', 0, 0.00, 9306, 40.08, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'C', '2026-07-25 16:40:54'),
(330, 42, 'unit', 'object', 'categorical', 0, 0.00, 2, 0.01, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DOLLARS(millions)', '2026-07-25 16:40:54'),
(331, 42, 'Unnamed: 7', 'float64', 'numeric', 23220, 100.00, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-07-25 16:40:54'),
(332, 42, 'Unnamed: 8', 'float64', 'numeric', 23220, 100.00, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-07-25 16:40:54'),
(333, 42, 'Unnamed: 9', 'float64', 'numeric', 23179, 99.82, 2, 0.01, 2022.268293, 0.448575, 2022.000000, 2023.000000, 2022.000000, 1.0861, -0.8652, '2022.0', '2026-07-25 16:40:54'),
(334, 42, 'Unnamed: 10', 'object', 'categorical', 23177, 99.81, 10, 0.04, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'R', '2026-07-25 16:40:54'),
(335, 42, 'Unnamed: 11', 'object', 'categorical', 23179, 99.82, 8, 0.03, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arts and Recreation Services', '2026-07-25 16:40:54'),
(336, 42, 'Unnamed: 12', 'object', 'categorical', 23179, 99.82, 8, 0.03, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'g_100-199', '2026-07-25 16:40:54'),
(337, 42, 'Unnamed: 13', 'object', 'categorical', 23179, 99.82, 6, 0.03, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Fixed tangible assets', '2026-07-25 16:40:54'),
(338, 42, 'Unnamed: 14', 'object', 'categorical', 23179, 99.82, 1, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'C', '2026-07-25 16:40:54'),
(339, 42, 'Unnamed: 15', 'object', 'categorical', 23179, 99.82, 1, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DOLLARS(millions)', '2026-07-25 16:40:54'),
(340, 43, 'Series_reference', 'object', 'categorical', 0, 0.00, 240, 2.51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BDCQ.SF1AA2CA', '2026-07-25 16:52:16'),
(341, 43, 'Period', 'float64', 'numeric', 0, 0.00, 40, 0.42, 2020.845501, 2.892394, 2016.060000, 2026.030000, 2021.060000, -0.0014, -1.1717, '2017.09', '2026-07-25 16:52:16'),
(342, 43, 'Data_value', 'float64', 'numeric', 45, 0.47, 7103, 74.34, 5515.748286, 8065.792799, -398.194000, 43002.425000, 2374.097000, 2.2412, 4.5006, '5613.637', '2026-07-25 16:52:16'),
(343, 43, 'Suppressed', 'object', 'categorical', 9540, 99.84, 1, 0.01, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', '2026-07-25 16:52:16'),
(344, 43, 'STATUS', 'object', 'categorical', 0, 0.00, 3, 0.03, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '2026-07-25 16:52:16'),
(345, 43, 'UNITS', 'object', 'categorical', 0, 0.00, 1, 0.01, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dollars', '2026-07-25 16:52:16'),
(346, 43, 'Magnitude', 'int64', 'numeric', 0, 0.00, 1, 0.01, 6.000000, 0.000000, 6.000000, 6.000000, 6.000000, 0.0000, 0.0000, '6', '2026-07-25 16:52:16'),
(347, 43, 'Subject', 'object', 'categorical', 0, 0.00, 1, 0.01, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Business Data Collection - BDC', '2026-07-25 16:52:16'),
(348, 43, 'Group', 'object', 'categorical', 0, 0.00, 2, 0.02, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Industry by financial variable (NZSIOC Level 2)', '2026-07-25 16:52:16'),
(349, 43, 'Series_title_1', 'object', 'categorical', 0, 0.00, 4, 0.04, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sales (operating income)', '2026-07-25 16:52:16'),
(350, 43, 'Series_title_2', 'object', 'categorical', 0, 0.00, 31, 0.32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Construction', '2026-07-25 16:52:16'),
(351, 43, 'Series_title_3', 'object', 'categorical', 0, 0.00, 2, 0.02, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Current prices', '2026-07-25 16:52:16'),
(352, 43, 'Series_title_4', 'object', 'categorical', 0, 0.00, 3, 0.03, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Unadjusted', '2026-07-25 16:52:16'),
(353, 43, 'Series_title_5', 'float64', 'numeric', 9555, 100.00, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-07-25 16:52:16'),
(354, 44, 'Series_reference', 'object', 'categorical', 0, 0.00, 462, 1.77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BDCQ.SEA1AA', '2026-07-25 16:52:41'),
(355, 44, 'Period', 'float64', 'numeric', 0, 0.00, 60, 0.23, 2018.036443, 4.280631, 2011.060000, 2026.030000, 2018.060000, 0.0901, -1.1376, '2012.09', '2026-07-25 16:52:41'),
(356, 44, 'Data_value', 'float64', 'numeric', 2839, 10.89, 20658, 79.27, 74018.024483, 214255.444813, 1.171797, 2321295.000000, 14265.500000, 6.9551, 57.5536, '287.0', '2026-07-25 16:52:41'),
(357, 44, 'Suppressed', 'object', 'categorical', 23220, 89.11, 1, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', '2026-07-25 16:52:41'),
(358, 44, 'STATUS', 'object', 'categorical', 0, 0.00, 3, 0.01, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '2026-07-25 16:52:41'),
(359, 44, 'UNITS', 'object', 'categorical', 0, 0.00, 2, 0.01, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Number', '2026-07-25 16:52:41'),
(360, 44, 'Magnitude', 'int64', 'numeric', 0, 0.00, 2, 0.01, 2.249280, 2.904607, 0.000000, 6.000000, 0.000000, 0.5170, -1.7329, '0', '2026-07-25 16:52:41'),
(361, 44, 'Subject', 'object', 'categorical', 0, 0.00, 1, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Business Data Collection - BDC', '2026-07-25 16:52:41'),
(362, 44, 'Group', 'object', 'categorical', 0, 0.00, 5, 0.02, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Territorial authority by employment variable', '2026-07-25 16:52:41'),
(363, 44, 'Series_title_1', 'object', 'categorical', 0, 0.00, 3, 0.01, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Filled jobs', '2026-07-25 16:52:41'),
(364, 44, 'Series_title_2', 'object', 'categorical', 0, 0.00, 116, 0.45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Auckland', '2026-07-25 16:52:41'),
(365, 44, 'Series_title_3', 'object', 'categorical', 0, 0.00, 3, 0.01, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Actual', '2026-07-25 16:52:41'),
(366, 44, 'Series_title_4', 'float64', 'numeric', 26059, 100.00, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-07-25 16:52:41'),
(367, 44, 'Series_title_5', 'float64', 'numeric', 26059, 100.00, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-07-25 16:52:41'),
(368, 45, 'year', 'int64', 'numeric', 0, 0.00, 15, 0.06, 2018.000000, 4.320587, 2011.000000, 2025.000000, 2018.000000, 0.0000, -1.2107, '2011', '2026-07-26 06:13:29'),
(369, 45, 'industry_code_ANZSIC', 'object', 'categorical', 0, 0.00, 20, 0.09, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', '2026-07-26 06:13:29'),
(370, 45, 'industry_name_ANZSIC', 'object', 'categorical', 0, 0.00, 20, 0.09, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Accommodation and Food Services', '2026-07-26 06:13:29'),
(371, 45, 'rme_size_grp', 'object', 'categorical', 0, 0.00, 10, 0.04, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a_0', '2026-07-26 06:13:29'),
(372, 45, 'variable', 'object', 'categorical', 0, 0.00, 9, 0.04, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Activity unit', '2026-07-26 06:13:29'),
(373, 45, 'value', 'object', 'categorical', 0, 0.00, 9306, 40.08, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'C', '2026-07-26 06:13:29'),
(374, 45, 'unit', 'object', 'categorical', 0, 0.00, 2, 0.01, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DOLLARS(millions)', '2026-07-26 06:13:29'),
(375, 45, 'Unnamed: 7', 'float64', 'numeric', 23220, 100.00, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-07-26 06:13:29'),
(376, 45, 'Unnamed: 8', 'float64', 'numeric', 23220, 100.00, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-07-26 06:13:29'),
(377, 45, 'Unnamed: 9', 'float64', 'numeric', 23179, 99.82, 2, 0.01, 2022.268293, 0.448575, 2022.000000, 2023.000000, 2022.000000, 1.0861, -0.8652, '2022.0', '2026-07-26 06:13:29'),
(378, 45, 'Unnamed: 10', 'object', 'categorical', 23177, 99.81, 10, 0.04, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'R', '2026-07-26 06:13:29'),
(379, 45, 'Unnamed: 11', 'object', 'categorical', 23179, 99.82, 8, 0.03, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arts and Recreation Services', '2026-07-26 06:13:29'),
(380, 45, 'Unnamed: 12', 'object', 'categorical', 23179, 99.82, 8, 0.03, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'g_100-199', '2026-07-26 06:13:29'),
(381, 45, 'Unnamed: 13', 'object', 'categorical', 23179, 99.82, 6, 0.03, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Fixed tangible assets', '2026-07-26 06:13:29'),
(382, 45, 'Unnamed: 14', 'object', 'categorical', 23179, 99.82, 1, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'C', '2026-07-26 06:13:29'),
(383, 45, 'Unnamed: 15', 'object', 'categorical', 23179, 99.82, 1, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DOLLARS(millions)', '2026-07-26 06:13:29'),
(384, 46, 'Series_reference', 'object', 'categorical', 0, 0.00, 462, 1.77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BDCQ.SEA1AA', '2026-07-26 15:35:03'),
(385, 46, 'Period', 'float64', 'numeric', 0, 0.00, 60, 0.23, 2018.036443, 4.280631, 2011.060000, 2026.030000, 2018.060000, 0.0901, -1.1376, '2012.09', '2026-07-26 15:35:03'),
(386, 46, 'Data_value', 'float64', 'numeric', 2839, 10.89, 20658, 79.27, 74018.024483, 214255.444813, 1.171797, 2321295.000000, 14265.500000, 6.9551, 57.5536, '287.0', '2026-07-26 15:35:03'),
(387, 46, 'Suppressed', 'object', 'categorical', 23220, 89.11, 1, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', '2026-07-26 15:35:03'),
(388, 46, 'STATUS', 'object', 'categorical', 0, 0.00, 3, 0.01, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '2026-07-26 15:35:03'),
(389, 46, 'UNITS', 'object', 'categorical', 0, 0.00, 2, 0.01, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Number', '2026-07-26 15:35:03'),
(390, 46, 'Magnitude', 'int64', 'numeric', 0, 0.00, 2, 0.01, 2.249280, 2.904607, 0.000000, 6.000000, 0.000000, 0.5170, -1.7329, '0', '2026-07-26 15:35:03'),
(391, 46, 'Subject', 'object', 'categorical', 0, 0.00, 1, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Business Data Collection - BDC', '2026-07-26 15:35:03'),
(392, 46, 'Group', 'object', 'categorical', 0, 0.00, 5, 0.02, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Territorial authority by employment variable', '2026-07-26 15:35:03'),
(393, 46, 'Series_title_1', 'object', 'categorical', 0, 0.00, 3, 0.01, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Filled jobs', '2026-07-26 15:35:03'),
(394, 46, 'Series_title_2', 'object', 'categorical', 0, 0.00, 116, 0.45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Auckland', '2026-07-26 15:35:03'),
(395, 46, 'Series_title_3', 'object', 'categorical', 0, 0.00, 3, 0.01, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Actual', '2026-07-26 15:35:03'),
(396, 46, 'Series_title_4', 'float64', 'numeric', 26059, 100.00, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-07-26 15:35:03'),
(397, 46, 'Series_title_5', 'float64', 'numeric', 26059, 100.00, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-07-26 15:35:03'),
(398, 47, 'Series_reference', 'object', 'categorical', 0, 0.00, 462, 1.77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BDCQ.SEA1AA', '2026-08-02 17:02:40'),
(399, 47, 'Period', 'float64', 'numeric', 0, 0.00, 60, 0.23, 2018.036443, 4.280631, 2011.060000, 2026.030000, 2018.060000, 0.0901, -1.1376, '2012.09', '2026-08-02 17:02:40'),
(400, 47, 'Data_value', 'float64', 'numeric', 2839, 10.89, 20658, 79.27, 74018.024483, 214255.444813, 1.171797, 2321295.000000, 14265.500000, 6.9551, 57.5536, '287.0', '2026-08-02 17:02:40'),
(401, 47, 'Suppressed', 'object', 'categorical', 23220, 89.11, 1, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', '2026-08-02 17:02:40'),
(402, 47, 'STATUS', 'object', 'categorical', 0, 0.00, 3, 0.01, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '2026-08-02 17:02:40'),
(403, 47, 'UNITS', 'object', 'categorical', 0, 0.00, 2, 0.01, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Number', '2026-08-02 17:02:40'),
(404, 47, 'Magnitude', 'int64', 'numeric', 0, 0.00, 2, 0.01, 2.249280, 2.904607, 0.000000, 6.000000, 0.000000, 0.5170, -1.7329, '0', '2026-08-02 17:02:40'),
(405, 47, 'Subject', 'object', 'categorical', 0, 0.00, 1, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Business Data Collection - BDC', '2026-08-02 17:02:40'),
(406, 47, 'Group', 'object', 'categorical', 0, 0.00, 5, 0.02, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Territorial authority by employment variable', '2026-08-02 17:02:40'),
(407, 47, 'Series_title_1', 'object', 'categorical', 0, 0.00, 3, 0.01, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Filled jobs', '2026-08-02 17:02:40'),
(408, 47, 'Series_title_2', 'object', 'categorical', 0, 0.00, 116, 0.45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Auckland', '2026-08-02 17:02:40'),
(409, 47, 'Series_title_3', 'object', 'categorical', 0, 0.00, 3, 0.01, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Actual', '2026-08-02 17:02:40'),
(410, 47, 'Series_title_4', 'float64', 'numeric', 26059, 100.00, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-08-02 17:02:40'),
(411, 47, 'Series_title_5', 'float64', 'numeric', 26059, 100.00, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-08-02 17:02:40');

-- --------------------------------------------------------

--
-- Table structure for table `dataset_profiles`
--

CREATE TABLE `dataset_profiles` (
  `id` int(11) NOT NULL,
  `upload_id` int(11) NOT NULL,
  `total_rows` int(11) NOT NULL,
  `total_columns` int(11) NOT NULL,
  `numeric_columns` int(11) DEFAULT 0,
  `categorical_columns` int(11) DEFAULT 0,
  `datetime_columns` int(11) DEFAULT 0,
  `text_columns` int(11) DEFAULT 0,
  `missing_value_percentage` decimal(5,2) DEFAULT 0.00,
  `duplicate_row_percentage` decimal(5,2) DEFAULT 0.00,
  `target_column` varchar(100) DEFAULT NULL,
  `problem_type` enum('classification','regression','clustering','unknown') DEFAULT 'unknown',
  `is_imbalanced` tinyint(1) DEFAULT 0,
  `class_count` int(11) DEFAULT NULL,
  `memory_usage_mb` decimal(10,2) DEFAULT NULL,
  `profiling_status` enum('pending','completed','failed') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dataset_profiles`
--

INSERT INTO `dataset_profiles` (`id`, `upload_id`, `total_rows`, `total_columns`, `numeric_columns`, `categorical_columns`, `datetime_columns`, `text_columns`, `missing_value_percentage`, `duplicate_row_percentage`, `target_column`, `problem_type`, `is_imbalanced`, `class_count`, `memory_usage_mb`, `profiling_status`, `created_at`) VALUES
(1, 1, 1458, 1, 0, 0, 0, 1, 0.00, 0.00, NULL, 'clustering', 0, NULL, 0.09, 'completed', '2026-05-01 10:14:06'),
(2, 2, 10, 4, 0, 4, 0, 0, 0.00, 0.00, 'Play', 'classification', 0, 2, 0.00, 'completed', '2026-05-01 10:15:33'),
(4, 4, 10, 4, 0, 4, 0, 0, 0.00, 0.00, 'Play', 'classification', 0, 2, 0.00, 'completed', '2026-05-01 10:55:15'),
(5, 5, 10, 4, 0, 4, 0, 0, 0.00, 0.00, 'Play', 'classification', 0, 2, 0.00, 'completed', '2026-05-01 11:09:42'),
(6, 6, 28242, 8, 6, 2, 0, 0, 0.00, 0.00, 'avg_temp', 'regression', 0, NULL, 4.34, 'completed', '2026-05-01 11:10:18'),
(7, 7, 205, 23, 10, 12, 0, 1, 0.00, 0.00, NULL, 'clustering', 0, NULL, 0.15, 'completed', '2026-05-01 11:11:22'),
(8, 8, 28242, 8, 6, 2, 0, 0, 0.00, 0.00, 'avg_temp', 'regression', 0, NULL, 4.34, 'completed', '2026-05-01 11:12:25'),
(9, 9, 10, 4, 0, 4, 0, 0, 0.00, 0.00, 'Play', 'classification', 0, 2, 0.00, 'completed', '2026-05-01 11:19:24'),
(10, 10, 28242, 8, 6, 2, 0, 0, 0.00, 0.00, 'avg_temp', 'regression', 0, NULL, 4.34, 'completed', '2026-05-01 11:22:56'),
(11, 11, 801, 41, 34, 5, 0, 2, 1.59, 0.00, 'is_legendary', 'classification', 1, 2, 0.59, 'completed', '2026-05-01 11:26:49'),
(12, 12, 205, 23, 10, 12, 0, 1, 0.00, 0.00, NULL, 'clustering', 0, NULL, 0.15, 'completed', '2026-05-01 11:28:23'),
(13, 13, 10, 4, 0, 4, 0, 0, 0.00, 0.00, 'Play', 'classification', 0, 2, 0.00, 'completed', '2026-05-01 11:32:43'),
(14, 14, 21, 5, 2, 2, 0, 1, 3.81, 0.00, 'Admission_Year', 'classification', 1, 6, 0.00, 'completed', '2026-05-01 11:49:04'),
(15, 15, 10, 4, 0, 4, 0, 0, 0.00, 0.00, 'Play', 'classification', 0, 2, 0.00, 'completed', '2026-05-01 11:55:48'),
(16, 16, 10, 4, 0, 4, 0, 0, 0.00, 0.00, 'Play', 'classification', 0, 2, 0.00, 'completed', '2026-05-01 12:14:05'),
(17, 17, 30, 3, 3, 0, 0, 0, 0.00, 0.00, 'Salary', 'regression', 0, NULL, 0.00, 'completed', '2026-05-01 12:15:27'),
(18, 18, 10, 4, 0, 4, 0, 0, 0.00, 0.00, 'Play', 'classification', 0, 2, 0.00, 'completed', '2026-05-01 12:22:07'),
(19, 19, 10, 4, 0, 4, 0, 0, 0.00, 0.00, 'Play', 'classification', 0, 2, 0.00, 'completed', '2026-05-01 12:23:44'),
(20, 20, 21, 5, 2, 2, 0, 1, 3.81, 0.00, 'Admission_Year', 'classification', 1, 6, 0.00, 'completed', '2026-05-01 16:06:26'),
(21, 21, 4803, 20, 7, 5, 0, 8, 4.10, 0.00, 'vote_count', 'regression', 0, NULL, 7.93, 'completed', '2026-05-01 16:23:26'),
(22, 22, 205, 26, 16, 10, 0, 0, 0.00, 0.00, 'price', 'regression', 0, NULL, 0.13, 'completed', '2026-05-01 16:25:33'),
(23, 23, 10, 4, 0, 4, 0, 0, 0.00, 0.00, 'Play', 'classification', 0, 2, 0.00, 'completed', '2026-05-01 16:35:16'),
(24, 24, 1093, 9, 9, 0, 0, 0, 0.01, 33.12, 'PM 2.5', 'regression', 0, NULL, 0.08, 'completed', '2026-05-03 15:36:05'),
(25, 25, 1025, 14, 14, 0, 0, 0, 0.00, 70.54, 'target', 'classification', 0, 2, 0.11, 'completed', '2026-05-03 18:41:47'),
(26, 26, 50000, 1, 0, 0, 0, 1, 0.00, 0.00, NULL, 'clustering', 0, NULL, 3.55, 'completed', '2026-05-04 05:50:53'),
(27, 27, 1093, 9, 9, 0, 0, 0, 0.01, 33.12, 'PM 2.5', 'regression', 0, NULL, 0.08, 'completed', '2026-05-05 19:37:47'),
(28, 28, 1093, 9, 9, 0, 0, 0, 0.01, 33.12, 'PM 2.5', 'regression', 0, NULL, 0.08, 'completed', '2026-05-05 20:01:03'),
(29, 29, 1025, 14, 14, 0, 0, 0, 0.00, 70.54, 'target', 'classification', 0, 2, 0.11, 'completed', '2026-05-05 20:07:45'),
(30, 30, 50000, 1, 0, 0, 0, 1, 0.00, 0.00, NULL, 'clustering', 0, NULL, 3.55, 'completed', '2026-05-05 20:14:04'),
(31, 31, 9, 2, 1, 0, 0, 1, 0.00, 0.00, NULL, 'clustering', 0, NULL, 0.00, 'completed', '2026-05-05 20:14:23'),
(32, 33, 1093, 9, 9, 0, 0, 0, 0.01, 33.12, 'PM 2.5', 'regression', 0, NULL, 0.08, 'completed', '2026-05-05 20:22:42'),
(33, 34, 1500, 5, 5, 0, 0, 0, 0.00, 0.00, 'Gender', 'classification', 0, 2, 0.06, 'completed', '2026-05-05 20:27:28'),
(34, 35, 9, 2, 1, 0, 0, 1, 0.00, 0.00, NULL, 'clustering', 0, NULL, 0.00, 'completed', '2026-05-06 04:46:07'),
(35, 36, 614, 13, 5, 7, 0, 1, 1.87, 0.00, 'Loan_Status', 'classification', 0, 2, 0.27, 'completed', '2026-05-06 05:04:05'),
(36, 37, 1093, 9, 9, 0, 0, 0, 0.01, 33.12, 'PM 2.5', 'regression', 0, NULL, 0.08, 'completed', '2026-05-06 05:05:30'),
(37, 38, 50000, 1, 0, 0, 0, 1, 0.00, 0.00, NULL, 'clustering', 0, NULL, 3.55, 'completed', '2026-05-06 07:01:20'),
(38, 39, 10, 4, 0, 4, 0, 0, 0.00, 0.00, 'Play', 'classification', 0, 2, 0.00, 'completed', '2026-05-06 17:28:46'),
(39, 40, 25, 2, 0, 0, 0, 2, 0.00, 0.00, NULL, 'clustering', 0, NULL, 0.01, 'completed', '2026-07-24 13:58:54'),
(40, 41, 25, 2, 0, 0, 0, 2, 0.00, 0.00, NULL, 'clustering', 0, NULL, 0.01, 'completed', '2026-07-25 07:32:31'),
(41, 42, 25, 2, 0, 0, 0, 2, 0.00, 0.00, NULL, 'clustering', 0, NULL, 0.01, 'completed', '2026-07-25 16:37:33'),
(42, 43, 23220, 16, 4, 12, 0, 0, 56.17, 0.00, 'Unnamed: 15', 'classification', 0, 1, 13.14, 'completed', '2026-07-25 16:40:54'),
(43, 44, 9555, 14, 4, 10, 0, 0, 14.31, 0.00, 'Series_title_5', 'classification', 0, 0, 6.20, 'completed', '2026-07-25 16:52:16'),
(44, 45, 26059, 14, 5, 9, 0, 0, 21.43, 0.00, 'Series_title_5', 'classification', 0, 0, 14.74, 'completed', '2026-07-25 16:52:41'),
(45, 46, 23220, 16, 4, 12, 0, 0, 56.17, 0.00, 'Unnamed: 15', 'classification', 0, 1, 13.14, 'completed', '2026-07-26 06:13:29'),
(46, 47, 26059, 14, 5, 9, 0, 0, 21.43, 0.00, 'Series_title_5', 'classification', 0, 0, 14.74, 'completed', '2026-07-26 15:35:03'),
(47, 49, 26059, 14, 5, 9, 0, 0, 21.43, 0.00, 'Series_title_5', 'classification', 0, 0, 14.74, 'completed', '2026-08-02 17:02:40');

-- --------------------------------------------------------

--
-- Table structure for table `file_uploads`
--

CREATE TABLE `file_uploads` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `original_filename` varchar(255) NOT NULL,
  `stored_filename` varchar(255) NOT NULL,
  `file_type` enum('csv','excel','json','xml','text') NOT NULL,
  `file_size_bytes` bigint(20) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `upload_status` enum('pending','processing','completed','failed') DEFAULT 'pending',
  `error_message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `file_uploads`
--

INSERT INTO `file_uploads` (`id`, `user_id`, `original_filename`, `stored_filename`, `file_type`, `file_size_bytes`, `file_path`, `upload_status`, `error_message`, `created_at`) VALUES
(1, 2, 'dim.csv', '56b40bfac3e64f18bfc65c55a8b8ba62_dim.csv', 'csv', 28907, 'uploads\\56b40bfac3e64f18bfc65c55a8b8ba62_dim.csv', 'completed', NULL, '2026-05-01 10:14:05'),
(2, 2, 'weather_data.csv', '6e7be7898fd14929b2f46bcb6e43a765_weather_data.csv', 'csv', 257, 'uploads\\6e7be7898fd14929b2f46bcb6e43a765_weather_data.csv', 'completed', NULL, '2026-05-01 10:15:33'),
(4, 2, 'weather_data.csv', '2043e75c5820475c90b61115b95e45be_weather_data.csv', 'csv', 257, 'uploads\\2043e75c5820475c90b61115b95e45be_weather_data.csv', 'completed', NULL, '2026-05-01 10:55:15'),
(5, 2, 'weather_data.csv', '90b7272905cb4939b8101cbb589fe61f_weather_data.csv', 'csv', 257, 'uploads\\90b7272905cb4939b8101cbb589fe61f_weather_data.csv', 'completed', NULL, '2026-05-01 11:09:42'),
(6, 2, 'Yield_df.csv', 'cef2c1e620aa41bc93279e83140686f2_Yield_df.csv', 'csv', 1480286, 'uploads\\cef2c1e620aa41bc93279e83140686f2_Yield_df.csv', 'completed', NULL, '2026-05-01 11:10:18'),
(7, 2, 'car1.csv', '3fb967abe2d14186b2932de6b169f351_car1.csv', 'csv', 22642, 'uploads\\3fb967abe2d14186b2932de6b169f351_car1.csv', 'completed', NULL, '2026-05-01 11:11:22'),
(8, 2, 'Yield_df.csv', '1da3e4ed986d46058c796f7b7c446e59_Yield_df.csv', 'csv', 1480286, 'uploads\\1da3e4ed986d46058c796f7b7c446e59_Yield_df.csv', 'completed', NULL, '2026-05-01 11:12:24'),
(9, 2, 'weather_data.csv', 'c56fb51c8a7c4d628f24f9fafdbb19bf_weather_data.csv', 'csv', 257, 'uploads\\c56fb51c8a7c4d628f24f9fafdbb19bf_weather_data.csv', 'completed', NULL, '2026-05-01 11:19:23'),
(10, 2, 'Yield_df.csv', '8a03159b2bc44a3089cd5ca52f7e78cf_Yield_df.csv', 'csv', 1480286, 'uploads\\8a03159b2bc44a3089cd5ca52f7e78cf_Yield_df.csv', 'completed', NULL, '2026-05-01 11:22:56'),
(11, 3, 'pokemon.csv', '60e8e26014ad4ad99a564d9762af1ec9_pokemon.csv', 'csv', 160568, 'uploads\\60e8e26014ad4ad99a564d9762af1ec9_pokemon.csv', 'completed', NULL, '2026-05-01 11:26:49'),
(12, 3, 'car.csv', '8fddfd8a776c4d8489fba20eca4c1da9_car.csv', 'csv', 22640, 'uploads\\8fddfd8a776c4d8489fba20eca4c1da9_car.csv', 'completed', NULL, '2026-05-01 11:28:23'),
(13, 2, 'weather_data.csv', 'ba632d270ed84e4e95a0e21aef889bd1_weather_data.csv', 'csv', 257, 'uploads\\ba632d270ed84e4e95a0e21aef889bd1_weather_data.csv', 'completed', NULL, '2026-05-01 11:32:43'),
(14, 2, 'students_records.csv', '0d63b19dae10459781d3ab0bda3a1be1_students_records.csv', 'csv', 674, 'uploads\\0d63b19dae10459781d3ab0bda3a1be1_students_records.csv', 'failed', '\'MLAlgorithm\' object has no attribute \'table\'', '2026-05-01 11:49:03'),
(15, 2, 'weather_data.csv', '26fe42406fea4c95b55abe29608877ee_weather_data.csv', 'csv', 257, 'uploads\\26fe42406fea4c95b55abe29608877ee_weather_data.csv', 'failed', '\'MLAlgorithm\' object has no attribute \'_table_\'', '2026-05-01 11:55:48'),
(16, 2, 'weather_data.csv', '0f04aa7d327b4dab8b282c399953444b_weather_data.csv', 'csv', 257, 'uploads\\0f04aa7d327b4dab8b282c399953444b_weather_data.csv', 'failed', '\'MLAlgorithm\' object has no attribute \'_table_\'', '2026-05-01 12:14:05'),
(17, 2, 'tk.csv', '1fb54a082f654f2db28b00ada42a3d99_tk.csv', 'csv', 435, 'uploads\\1fb54a082f654f2db28b00ada42a3d99_tk.csv', 'failed', '\'MLAlgorithm\' object has no attribute \'_table_\'', '2026-05-01 12:15:27'),
(18, 2, 'weather_data.csv', '2a402155831846cc98f5a8b7b9e51bb8_weather_data.csv', 'csv', 257, 'uploads\\2a402155831846cc98f5a8b7b9e51bb8_weather_data.csv', 'failed', '\'MLAlgorithm\' object has no attribute \'_table_\'', '2026-05-01 12:22:07'),
(19, 2, 'weather_data.csv', '12e18f19b1134252a6ae1ede6f244aa2_weather_data.csv', 'csv', 257, 'uploads\\12e18f19b1134252a6ae1ede6f244aa2_weather_data.csv', 'completed', NULL, '2026-05-01 12:23:44'),
(20, 2, 'students_records.csv', '7815f6ca20ce4cd49a3884c916e24437_students_records.csv', 'csv', 674, 'uploads\\7815f6ca20ce4cd49a3884c916e24437_students_records.csv', 'completed', NULL, '2026-05-01 16:06:26'),
(21, 2, 'movies.csv', '2bce3048c1214e41927fdb4fbd7dfa41_movies.csv', 'csv', 5697018, 'uploads\\2bce3048c1214e41927fdb4fbd7dfa41_movies.csv', 'completed', NULL, '2026-05-01 16:23:25'),
(22, 2, 'bike.csv', '207fad28637a4c6f9e109d8961c2b272_bike.csv', 'csv', 26717, 'uploads\\207fad28637a4c6f9e109d8961c2b272_bike.csv', 'completed', NULL, '2026-05-01 16:25:33'),
(23, 2, 'weather_data.csv', '32321986aa894ea78466aabae4f58587_weather_data.csv', 'csv', 257, 'uploads\\32321986aa894ea78466aabae4f58587_weather_data.csv', 'completed', NULL, '2026-05-01 16:35:16'),
(24, 2, 'Real_Combine.csv', '7ef6c4ba19054c90bdda9c410c8b72b3_Real_Combine.csv', 'csv', 61870, 'uploads\\7ef6c4ba19054c90bdda9c410c8b72b3_Real_Combine.csv', 'completed', NULL, '2026-05-03 15:36:04'),
(25, 2, 'Heart1.csv', 'f1205e19f41d422f9132b03f365d1393_Heart1.csv', 'csv', 38114, 'uploads\\f1205e19f41d422f9132b03f365d1393_Heart1.csv', 'completed', NULL, '2026-05-03 18:41:47'),
(26, 2, 'bal2.csv', '4dc8250af43543479a71bd1116d0a343_bal2.csv', 'csv', 5073689, 'uploads\\4dc8250af43543479a71bd1116d0a343_bal2.csv', 'completed', NULL, '2026-05-04 05:50:52'),
(27, 2, 'Real_Combine.csv', '1312a6ea870340829dd41a86569c14d8_Real_Combine.csv', 'csv', 61870, 'uploads\\1312a6ea870340829dd41a86569c14d8_Real_Combine.csv', 'completed', NULL, '2026-05-05 19:37:46'),
(28, 2, 'Real_Combine.csv', '78011a6cb4cf4f9385af3c6daa9052d7_Real_Combine.csv', 'csv', 61870, 'uploads\\78011a6cb4cf4f9385af3c6daa9052d7_Real_Combine.csv', 'completed', NULL, '2026-05-05 20:01:03'),
(29, 2, 'heart.csv', 'a6206f50452744be924cfe80d4d52a3f_heart.csv', 'csv', 38114, 'uploads\\a6206f50452744be924cfe80d4d52a3f_heart.csv', 'completed', NULL, '2026-05-05 20:07:45'),
(30, 2, 'bal2.csv', 'c3aa4bf3178347e0a13b6ffa8a792a21_bal2.csv', 'csv', 5073689, 'uploads\\c3aa4bf3178347e0a13b6ffa8a792a21_bal2.csv', 'completed', NULL, '2026-05-05 20:14:04'),
(31, 2, 'BikeStore.csv', '959c527f01804b9faf943a4adb8ba60e_BikeStore.csv', 'csv', 120, 'uploads\\959c527f01804b9faf943a4adb8ba60e_BikeStore.csv', 'completed', NULL, '2026-05-05 20:14:23'),
(32, 2, 'bal3.xls', 'deac22bc2118410daaded80ef857dd69_bal3.xls', 'excel', 4728531, 'uploads\\deac22bc2118410daaded80ef857dd69_bal3.xls', 'failed', 'Failed to load file: Excel file format cannot be determined, you must specify an engine manually.', '2026-05-05 20:22:28'),
(33, 2, 'Real_Combine.csv', '78f86afc9a104c7080d5fd82ce6be75a_Real_Combine.csv', 'csv', 61870, 'uploads\\78f86afc9a104c7080d5fd82ce6be75a_Real_Combine.csv', 'completed', NULL, '2026-05-05 20:22:42'),
(34, 2, 'income.csv', '1eb49c860d2444b39b30b719065e23db_income.csv', 'csv', 27623, 'uploads\\1eb49c860d2444b39b30b719065e23db_income.csv', 'completed', NULL, '2026-05-05 20:27:28'),
(35, 2, 'brands.csv', '24dd0a8d2eb543f9b55969c6c29da264_brands.csv', 'csv', 120, 'uploads\\24dd0a8d2eb543f9b55969c6c29da264_brands.csv', 'completed', NULL, '2026-05-06 04:46:07'),
(36, 2, 'train_u6lujuX_CVtuZ9i.csv', '6a024b43fd654e1fbb457e1a7354ef77_train_u6lujuX_CVtuZ9i.csv', 'csv', 37398, 'uploads\\6a024b43fd654e1fbb457e1a7354ef77_train_u6lujuX_CVtuZ9i.csv', 'completed', NULL, '2026-05-06 05:04:04'),
(37, 2, 'Real_Combine.csv', '565d3ae76acf4bf5a1d3793ee242498e_Real_Combine.csv', 'csv', 61870, 'uploads\\565d3ae76acf4bf5a1d3793ee242498e_Real_Combine.csv', 'completed', NULL, '2026-05-06 05:05:30'),
(38, 2, 'bal2.csv', '12a42a8f90ce479faf792f21a675ff68_bal2.csv', 'csv', 5073689, 'uploads\\12a42a8f90ce479faf792f21a675ff68_bal2.csv', 'completed', NULL, '2026-05-06 07:01:20'),
(39, 2, 'weather_data.csv', '073b6ac105324be2823081d18344fd9f_weather_data.csv', 'csv', 257, 'uploads\\073b6ac105324be2823081d18344fd9f_weather_data.csv', 'completed', NULL, '2026-05-06 17:28:46'),
(40, 2, 'gt.csv', 'd9741fac2017449480881d6bb6b89003_gt.csv', 'csv', 5608, 'uploads\\d9741fac2017449480881d6bb6b89003_gt.csv', 'completed', NULL, '2026-07-24 13:58:53'),
(41, 5, 'gt.csv', '85f518d4aa8341659c1078f6462902d8_gt.csv', 'csv', 5608, 'uploads\\85f518d4aa8341659c1078f6462902d8_gt.csv', 'completed', NULL, '2026-07-25 07:32:31'),
(42, 6, 'gt.csv', '44e9d34858cd42ec8f6130342c2fde99_gt.csv', 'csv', 5608, 'uploads\\44e9d34858cd42ec8f6130342c2fde99_gt.csv', 'completed', NULL, '2026-07-25 16:37:33'),
(43, 6, 'annual-enterprise-survey-2025-financial-year-provisional-size-bands.csv', 'ef753c1a12df47239dd7a2d87bcfb997_annual-enterprise-survey-2025-financial-year-provisional-size-bands.csv', 'csv', 2249137, 'uploads\\ef753c1a12df47239dd7a2d87bcfb997_annual-enterprise-survey-2025-financial-year-provisional-size-bands.csv', 'completed', NULL, '2026-07-25 16:40:54'),
(44, 6, 'business-financial-data-march-2026-quarter.csv', 'a5118652266c49c9b921a29de76dea6a_business-financial-data-march-2026-quarter.csv', 'csv', 1970831, 'uploads\\a5118652266c49c9b921a29de76dea6a_business-financial-data-march-2026-quarter.csv', 'completed', NULL, '2026-07-25 16:52:16'),
(45, 6, 'machine-readable-business-employment-data-mar-2026-quarter.csv', '25a8b328d948409191f1be80c81e8138_machine-readable-business-employment-data-mar-2026-quarter.csv', 'csv', 4044361, 'uploads\\25a8b328d948409191f1be80c81e8138_machine-readable-business-employment-data-mar-2026-quarter.csv', 'completed', NULL, '2026-07-25 16:52:40'),
(46, 6, 'annual-enterprise-survey-2025-financial-year-provisional-size-bands.csv', '2a74b3a544de41aea600b3f8a7f5ad4f_annual-enterprise-survey-2025-financial-year-provisional-size-bands.csv', 'csv', 2249137, 'uploads\\2a74b3a544de41aea600b3f8a7f5ad4f_annual-enterprise-survey-2025-financial-year-provisional-size-bands.csv', 'completed', NULL, '2026-07-26 06:13:28'),
(47, 6, 'machine-readable-business-employment-data-mar-2026-quarter.csv', '6e89226228684ca995dc1bc3da23e17a_machine-readable-business-employment-data-mar-2026-quarter.csv', 'csv', 4044361, 'uploads\\6e89226228684ca995dc1bc3da23e17a_machine-readable-business-employment-data-mar-2026-quarter.csv', 'completed', NULL, '2026-07-26 15:35:02'),
(48, 1, 'sales_data.csv', 'upload_002.csv', 'csv', 204800, '/uploads/upload_002.csv', 'pending', NULL, '2026-07-28 20:19:27'),
(49, 6, 'machine-readable-business-employment-data-mar-2026-quarter.csv', 'fa448ddd5d544930bd09ec66a82f9c79_machine-readable-business-employment-data-mar-2026-quarter.csv', 'csv', 4044361, 'uploads\\fa448ddd5d544930bd09ec66a82f9c79_machine-readable-business-employment-data-mar-2026-quarter.csv', 'completed', NULL, '2026-08-02 17:02:40');

-- --------------------------------------------------------

--
-- Table structure for table `ml_algorithms`
--

CREATE TABLE `ml_algorithms` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `short_name` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `strengths` text DEFAULT NULL,
  `weaknesses` text DEFAULT NULL,
  `best_for` text DEFAULT NULL,
  `min_samples` int(11) DEFAULT 50,
  `handles_missing` tinyint(1) DEFAULT 0,
  `handles_categorical` tinyint(1) DEFAULT 0,
  `handles_imbalanced` tinyint(1) DEFAULT 0,
  `requires_scaling` tinyint(1) DEFAULT 1,
  `complexity` enum('low','medium','high') DEFAULT 'medium',
  `interpretability` enum('low','medium','high') DEFAULT 'medium',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ml_algorithms`
--

INSERT INTO `ml_algorithms` (`id`, `category_id`, `name`, `short_name`, `description`, `strengths`, `weaknesses`, `best_for`, `min_samples`, `handles_missing`, `handles_categorical`, `handles_imbalanced`, `requires_scaling`, `complexity`, `interpretability`, `created_at`) VALUES
(1, 1, 'Random Forest', 'RF', 'Ensemble learning', 'Robust', 'Slow', 'Mixed data', 100, 1, 1, 1, 0, 'medium', 'medium', '2026-05-01 11:47:50'),
(2, 1, 'Logistic Regression', 'LR', 'Linear classification', 'Fast', 'Linear only', 'Binary classification', 50, 0, 0, 0, 1, 'low', 'high', '2026-05-01 11:47:50'),
(3, 1, 'Decision Tree', 'DT', 'Tree classifier', 'Interpretable', 'Overfitting', 'Simple classification', 50, 0, 1, 0, 0, 'low', 'high', '2026-05-01 11:47:50'),
(4, 1, 'XGBoost', 'XGB', 'Gradient boosting', 'Very accurate', 'Complex', 'Structured data', 100, 1, 0, 1, 0, 'high', 'low', '2026-05-01 11:47:50'),
(5, 2, 'Linear Regression', 'LinReg', 'Linear regression', 'Simple', 'Linear only', 'Continuous prediction', 50, 0, 0, 0, 1, 'low', 'high', '2026-05-01 11:47:50'),
(6, 2, 'Ridge Regression', 'Ridge', 'Regularized regression', 'Handles collinearity', 'Linear only', 'Correlated features', 50, 0, 0, 0, 1, 'low', 'high', '2026-05-01 11:47:50'),
(7, 3, 'K-Means', 'KMeans', 'Clustering', 'Simple', 'Need K', 'Segmentation', 50, 0, 0, 0, 1, 'low', 'medium', '2026-05-01 11:47:50');

-- --------------------------------------------------------

--
-- Table structure for table `recommendations`
--

CREATE TABLE `recommendations` (
  `id` int(11) NOT NULL,
  `upload_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `algorithm_id` int(11) NOT NULL,
  `rank_position` int(11) NOT NULL,
  `confidence_score` decimal(5,2) NOT NULL,
  `suitability_score` decimal(5,2) NOT NULL,
  `recommendation_status` enum('active','archived') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recommendations`
--

INSERT INTO `recommendations` (`id`, `upload_id`, `user_id`, `algorithm_id`, `rank_position`, `confidence_score`, `suitability_score`, `recommendation_status`, `created_at`) VALUES
(1, 19, 2, 1, 1, 68.00, 68.00, 'active', '2026-05-01 12:23:44'),
(2, 19, 2, 3, 2, 68.00, 68.00, 'active', '2026-05-01 12:23:44'),
(3, 19, 2, 2, 3, 52.00, 52.00, 'active', '2026-05-01 12:23:44'),
(4, 19, 2, 4, 4, 52.00, 52.00, 'active', '2026-05-01 12:23:44'),
(5, 20, 2, 1, 1, 78.00, 78.00, 'active', '2026-05-01 16:06:26'),
(6, 20, 2, 4, 2, 62.00, 62.00, 'active', '2026-05-01 16:06:27'),
(7, 20, 2, 3, 3, 58.00, 58.00, 'active', '2026-05-01 16:06:27'),
(8, 20, 2, 2, 4, 42.00, 42.00, 'active', '2026-05-01 16:06:27'),
(9, 21, 2, 5, 1, 75.00, 75.00, 'active', '2026-05-01 16:23:26'),
(10, 21, 2, 6, 2, 75.00, 75.00, 'active', '2026-05-01 16:23:26'),
(11, 22, 2, 5, 1, 75.00, 75.00, 'active', '2026-05-01 16:25:33'),
(12, 22, 2, 6, 2, 75.00, 75.00, 'active', '2026-05-01 16:25:33'),
(13, 23, 2, 1, 1, 68.00, 68.00, 'active', '2026-05-01 16:35:17'),
(14, 23, 2, 3, 2, 68.00, 68.00, 'active', '2026-05-01 16:35:17'),
(15, 23, 2, 2, 3, 52.00, 52.00, 'active', '2026-05-01 16:35:17'),
(16, 23, 2, 4, 4, 52.00, 52.00, 'active', '2026-05-01 16:35:17'),
(17, 24, 2, 5, 1, 88.00, 88.00, 'active', '2026-05-03 15:36:05'),
(18, 24, 2, 6, 2, 88.00, 88.00, 'active', '2026-05-03 15:36:05'),
(19, 25, 2, 1, 1, 83.00, 83.00, 'active', '2026-05-03 18:41:47'),
(20, 25, 2, 2, 2, 83.00, 83.00, 'active', '2026-05-03 18:41:47'),
(21, 25, 2, 3, 3, 83.00, 83.00, 'active', '2026-05-03 18:41:47'),
(22, 25, 2, 4, 4, 83.00, 83.00, 'active', '2026-05-03 18:41:47'),
(23, 26, 2, 7, 1, 83.00, 83.00, 'active', '2026-05-04 05:50:53'),
(24, 27, 2, 5, 1, 88.00, 88.00, 'active', '2026-05-05 19:37:47'),
(25, 27, 2, 6, 2, 88.00, 88.00, 'active', '2026-05-05 19:37:47'),
(26, 28, 2, 5, 1, 88.00, 88.00, 'active', '2026-05-05 20:01:03'),
(27, 28, 2, 6, 2, 88.00, 88.00, 'active', '2026-05-05 20:01:03'),
(28, 29, 2, 1, 1, 83.00, 83.00, 'active', '2026-05-05 20:07:45'),
(29, 29, 2, 2, 2, 83.00, 83.00, 'active', '2026-05-05 20:07:45'),
(30, 29, 2, 3, 3, 83.00, 83.00, 'active', '2026-05-05 20:07:45'),
(31, 29, 2, 4, 4, 83.00, 83.00, 'active', '2026-05-05 20:07:45'),
(32, 30, 2, 7, 1, 83.00, 83.00, 'active', '2026-05-05 20:14:04'),
(33, 31, 2, 7, 1, 60.00, 60.00, 'active', '2026-05-05 20:14:23'),
(34, 33, 2, 5, 1, 88.00, 88.00, 'active', '2026-05-05 20:22:42'),
(35, 33, 2, 6, 2, 88.00, 88.00, 'active', '2026-05-05 20:22:42'),
(36, 34, 2, 2, 1, 88.00, 88.00, 'active', '2026-05-05 20:27:28'),
(37, 34, 2, 1, 2, 83.00, 83.00, 'active', '2026-05-05 20:27:28'),
(38, 34, 2, 3, 3, 83.00, 83.00, 'active', '2026-05-05 20:27:28'),
(39, 34, 2, 4, 4, 83.00, 83.00, 'active', '2026-05-05 20:27:28'),
(40, 35, 2, 7, 1, 60.00, 60.00, 'active', '2026-05-06 04:46:08'),
(41, 36, 2, 1, 1, 91.00, 91.00, 'active', '2026-05-06 05:04:05'),
(42, 36, 2, 3, 2, 91.00, 91.00, 'active', '2026-05-06 05:04:05'),
(43, 36, 2, 2, 3, 75.00, 75.00, 'active', '2026-05-06 05:04:05'),
(44, 36, 2, 4, 4, 75.00, 75.00, 'active', '2026-05-06 05:04:05'),
(45, 37, 2, 5, 1, 88.00, 88.00, 'active', '2026-05-06 05:05:30'),
(46, 37, 2, 6, 2, 88.00, 88.00, 'active', '2026-05-06 05:05:30'),
(47, 38, 2, 7, 1, 83.00, 83.00, 'active', '2026-05-06 07:01:20'),
(48, 39, 2, 1, 1, 68.00, 68.00, 'active', '2026-05-06 17:28:46'),
(49, 39, 2, 3, 2, 68.00, 68.00, 'active', '2026-05-06 17:28:46'),
(50, 39, 2, 2, 3, 52.00, 52.00, 'active', '2026-05-06 17:28:46'),
(51, 39, 2, 4, 4, 52.00, 52.00, 'active', '2026-05-06 17:28:46'),
(52, 40, 2, 7, 1, 60.00, 60.00, 'active', '2026-07-24 13:58:54'),
(53, 41, 5, 7, 1, 60.00, 60.00, 'active', '2026-07-25 07:32:31'),
(54, 42, 6, 7, 1, 60.00, 60.00, 'active', '2026-07-25 16:37:33'),
(55, 43, 6, 1, 1, 100.00, 100.00, 'active', '2026-07-25 16:40:54'),
(56, 43, 6, 4, 2, 85.00, 85.00, 'active', '2026-07-25 16:40:54'),
(57, 43, 6, 3, 3, 79.00, 79.00, 'active', '2026-07-25 16:40:54'),
(58, 43, 6, 2, 4, 63.00, 63.00, 'active', '2026-07-25 16:40:54'),
(59, 44, 6, 1, 1, 100.00, 100.00, 'active', '2026-07-25 16:52:16'),
(60, 44, 6, 4, 2, 85.00, 85.00, 'active', '2026-07-25 16:52:16'),
(61, 44, 6, 3, 3, 79.00, 79.00, 'active', '2026-07-25 16:52:16'),
(62, 44, 6, 2, 4, 63.00, 63.00, 'active', '2026-07-25 16:52:16'),
(63, 45, 6, 1, 1, 100.00, 100.00, 'active', '2026-07-25 16:52:41'),
(64, 45, 6, 4, 2, 85.00, 85.00, 'active', '2026-07-25 16:52:41'),
(65, 45, 6, 3, 3, 79.00, 79.00, 'active', '2026-07-25 16:52:41'),
(66, 45, 6, 2, 4, 63.00, 63.00, 'active', '2026-07-25 16:52:41'),
(67, 46, 6, 1, 1, 100.00, 100.00, 'active', '2026-07-26 06:13:29'),
(68, 46, 6, 4, 2, 85.00, 85.00, 'active', '2026-07-26 06:13:29'),
(69, 46, 6, 3, 3, 79.00, 79.00, 'active', '2026-07-26 06:13:29'),
(70, 46, 6, 2, 4, 63.00, 63.00, 'active', '2026-07-26 06:13:29'),
(71, 47, 6, 1, 1, 100.00, 100.00, 'active', '2026-07-26 15:35:03'),
(72, 47, 6, 4, 2, 85.00, 85.00, 'active', '2026-07-26 15:35:03'),
(73, 47, 6, 3, 3, 79.00, 79.00, 'active', '2026-07-26 15:35:03'),
(74, 47, 6, 2, 4, 63.00, 63.00, 'active', '2026-07-26 15:35:03'),
(75, 49, 6, 1, 1, 100.00, 100.00, 'active', '2026-08-02 17:02:40'),
(76, 49, 6, 4, 2, 85.00, 85.00, 'active', '2026-08-02 17:02:40'),
(77, 49, 6, 3, 3, 79.00, 79.00, 'active', '2026-08-02 17:02:40'),
(78, 49, 6, 2, 4, 63.00, 63.00, 'active', '2026-08-02 17:02:40');

-- --------------------------------------------------------

--
-- Table structure for table `recommendation_reasons`
--

CREATE TABLE `recommendation_reasons` (
  `id` int(11) NOT NULL,
  `recommendation_id` int(11) NOT NULL,
  `reason_type` enum('positive','negative','neutral') NOT NULL,
  `reason_text` text NOT NULL,
  `weight` decimal(3,2) DEFAULT 1.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recommendation_reasons`
--

INSERT INTO `recommendation_reasons` (`id`, `recommendation_id`, `reason_type`, `reason_text`, `weight`, `created_at`) VALUES
(1, 1, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Random Forest Classification অ্যালগরিদম।', 1.50, '2026-05-01 12:23:44'),
(2, 1, 'negative', 'Random Forest এর জন্য কমপক্ষে 100 rows দরকার, কিন্তু ডেটায় মাত্র 10 rows আছে।', 1.20, '2026-05-01 12:23:44'),
(3, 1, 'positive', 'ডেটায় কোনো missing value নেই, সব অ্যালগরিদমের জন্য ভালো।', 0.50, '2026-05-01 12:23:44'),
(4, 1, 'positive', '4টি categorical column আছে এবং Random Forest সেটি সরাসরি handle করতে পারে।', 1.00, '2026-05-01 12:23:44'),
(5, 2, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Decision Tree Classification অ্যালগরিদম।', 1.50, '2026-05-01 12:23:44'),
(6, 2, 'negative', 'Decision Tree এর জন্য কমপক্ষে 50 rows দরকার, কিন্তু ডেটায় মাত্র 10 rows আছে।', 1.20, '2026-05-01 12:23:44'),
(7, 2, 'positive', 'ডেটায় কোনো missing value নেই, সব অ্যালগরিদমের জন্য ভালো।', 0.50, '2026-05-01 12:23:44'),
(8, 2, 'positive', '4টি categorical column আছে এবং Decision Tree সেটি সরাসরি handle করতে পারে।', 1.00, '2026-05-01 12:23:44'),
(9, 3, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Logistic Regression Classification অ্যালগরিদম।', 1.50, '2026-05-01 12:23:44'),
(10, 3, 'negative', 'Logistic Regression এর জন্য কমপক্ষে 50 rows দরকার, কিন্তু ডেটায় মাত্র 10 rows আছে।', 1.20, '2026-05-01 12:23:44'),
(11, 3, 'positive', 'ডেটায় কোনো missing value নেই, সব অ্যালগরিদমের জন্য ভালো।', 0.50, '2026-05-01 12:23:44'),
(12, 3, 'negative', '4টি categorical column আছে, Logistic Regression ব্যবহারের আগে encoding প্রয়োজন।', 0.80, '2026-05-01 12:23:44'),
(13, 4, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং XGBoost Classification অ্যালগরিদম।', 1.50, '2026-05-01 12:23:44'),
(14, 4, 'negative', 'XGBoost এর জন্য কমপক্ষে 100 rows দরকার, কিন্তু ডেটায় মাত্র 10 rows আছে।', 1.20, '2026-05-01 12:23:44'),
(15, 4, 'positive', 'ডেটায় কোনো missing value নেই, সব অ্যালগরিদমের জন্য ভালো।', 0.50, '2026-05-01 12:23:44'),
(16, 4, 'negative', '4টি categorical column আছে, XGBoost ব্যবহারের আগে encoding প্রয়োজন।', 0.80, '2026-05-01 12:23:44'),
(17, 5, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Random Forest Classification অ্যালগরিদম।', 1.50, '2026-05-01 16:06:26'),
(18, 5, 'negative', 'Random Forest এর জন্য কমপক্ষে 100 rows দরকার, কিন্তু ডেটায় মাত্র 21 rows আছে।', 1.20, '2026-05-01 16:06:27'),
(19, 5, 'positive', '2টি categorical column আছে এবং Random Forest সেটি সরাসরি handle করতে পারে।', 1.00, '2026-05-01 16:06:27'),
(20, 5, 'positive', 'ডেটাসেট imbalanced এবং Random Forest imbalanced data handle করতে সক্ষম।', 1.00, '2026-05-01 16:06:27'),
(21, 6, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং XGBoost Classification অ্যালগরিদম।', 1.50, '2026-05-01 16:06:27'),
(22, 6, 'negative', 'XGBoost এর জন্য কমপক্ষে 100 rows দরকার, কিন্তু ডেটায় মাত্র 21 rows আছে।', 1.20, '2026-05-01 16:06:27'),
(23, 6, 'negative', '2টি categorical column আছে, XGBoost ব্যবহারের আগে encoding প্রয়োজন।', 0.80, '2026-05-01 16:06:27'),
(24, 6, 'positive', 'ডেটাসেট imbalanced এবং XGBoost imbalanced data handle করতে সক্ষম।', 1.00, '2026-05-01 16:06:27'),
(25, 7, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Decision Tree Classification অ্যালগরিদম।', 1.50, '2026-05-01 16:06:27'),
(26, 7, 'negative', 'Decision Tree এর জন্য কমপক্ষে 50 rows দরকার, কিন্তু ডেটায় মাত্র 21 rows আছে।', 1.20, '2026-05-01 16:06:27'),
(27, 7, 'positive', '2টি categorical column আছে এবং Decision Tree সেটি সরাসরি handle করতে পারে।', 1.00, '2026-05-01 16:06:27'),
(28, 7, 'negative', 'ডেটাসেট imbalanced। Decision Tree ব্যবহারে SMOTE বা class_weight প্রয়োজন হতে পারে।', 0.80, '2026-05-01 16:06:27'),
(29, 8, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Logistic Regression Classification অ্যালগরিদম।', 1.50, '2026-05-01 16:06:27'),
(30, 8, 'negative', 'Logistic Regression এর জন্য কমপক্ষে 50 rows দরকার, কিন্তু ডেটায় মাত্র 21 rows আছে।', 1.20, '2026-05-01 16:06:27'),
(31, 8, 'negative', '2টি categorical column আছে, Logistic Regression ব্যবহারের আগে encoding প্রয়োজন।', 0.80, '2026-05-01 16:06:27'),
(32, 8, 'negative', 'ডেটাসেট imbalanced। Logistic Regression ব্যবহারে SMOTE বা class_weight প্রয়োজন হতে পারে।', 0.80, '2026-05-01 16:06:27'),
(33, 9, 'positive', 'ডেটাসেটটি Regression সমস্যা এবং Linear Regression Regression এর জন্য উপযুক্ত।', 1.50, '2026-05-01 16:23:26'),
(34, 9, 'positive', 'ডেটাসেটে 4,803 rows আছে, Linear Regression এর জন্য যথেষ্ট।', 1.00, '2026-05-01 16:23:26'),
(35, 9, 'negative', '5টি categorical column আছে, Linear Regression ব্যবহারের আগে encoding প্রয়োজন।', 0.80, '2026-05-01 16:23:26'),
(36, 10, 'positive', 'ডেটাসেটটি Regression সমস্যা এবং Ridge Regression Regression এর জন্য উপযুক্ত।', 1.50, '2026-05-01 16:23:26'),
(37, 10, 'positive', 'ডেটাসেটে 4,803 rows আছে, Ridge Regression এর জন্য যথেষ্ট।', 1.00, '2026-05-01 16:23:26'),
(38, 10, 'negative', '5টি categorical column আছে, Ridge Regression ব্যবহারের আগে encoding প্রয়োজন।', 0.80, '2026-05-01 16:23:26'),
(39, 11, 'positive', 'ডেটাসেটটি Regression সমস্যা এবং Linear Regression Regression এর জন্য উপযুক্ত।', 1.50, '2026-05-01 16:25:33'),
(40, 11, 'positive', 'ডেটাসেটে 205 rows আছে, Linear Regression এর জন্য যথেষ্ট।', 1.00, '2026-05-01 16:25:33'),
(41, 11, 'positive', 'ডেটায় কোনো missing value নেই, সব অ্যালগরিদমের জন্য ভালো।', 0.50, '2026-05-01 16:25:33'),
(42, 11, 'negative', '10টি categorical column আছে, Linear Regression ব্যবহারের আগে encoding প্রয়োজন।', 0.80, '2026-05-01 16:25:33'),
(43, 12, 'positive', 'ডেটাসেটটি Regression সমস্যা এবং Ridge Regression Regression এর জন্য উপযুক্ত।', 1.50, '2026-05-01 16:25:33'),
(44, 12, 'positive', 'ডেটাসেটে 205 rows আছে, Ridge Regression এর জন্য যথেষ্ট।', 1.00, '2026-05-01 16:25:33'),
(45, 12, 'positive', 'ডেটায় কোনো missing value নেই, সব অ্যালগরিদমের জন্য ভালো।', 0.50, '2026-05-01 16:25:33'),
(46, 12, 'negative', '10টি categorical column আছে, Ridge Regression ব্যবহারের আগে encoding প্রয়োজন।', 0.80, '2026-05-01 16:25:33'),
(47, 13, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Random Forest Classification অ্যালগরিদম।', 1.50, '2026-05-01 16:35:17'),
(48, 13, 'negative', 'Random Forest এর জন্য কমপক্ষে 100 rows দরকার, কিন্তু ডেটায় মাত্র 10 rows আছে।', 1.20, '2026-05-01 16:35:17'),
(49, 13, 'positive', 'ডেটায় কোনো missing value নেই, সব অ্যালগরিদমের জন্য ভালো।', 0.50, '2026-05-01 16:35:17'),
(50, 13, 'positive', '4টি categorical column আছে এবং Random Forest সেটি সরাসরি handle করতে পারে।', 1.00, '2026-05-01 16:35:17'),
(51, 14, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Decision Tree Classification অ্যালগরিদম।', 1.50, '2026-05-01 16:35:17'),
(52, 14, 'negative', 'Decision Tree এর জন্য কমপক্ষে 50 rows দরকার, কিন্তু ডেটায় মাত্র 10 rows আছে।', 1.20, '2026-05-01 16:35:17'),
(53, 14, 'positive', 'ডেটায় কোনো missing value নেই, সব অ্যালগরিদমের জন্য ভালো।', 0.50, '2026-05-01 16:35:17'),
(54, 14, 'positive', '4টি categorical column আছে এবং Decision Tree সেটি সরাসরি handle করতে পারে।', 1.00, '2026-05-01 16:35:17'),
(55, 15, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Logistic Regression Classification অ্যালগরিদম।', 1.50, '2026-05-01 16:35:17'),
(56, 15, 'negative', 'Logistic Regression এর জন্য কমপক্ষে 50 rows দরকার, কিন্তু ডেটায় মাত্র 10 rows আছে।', 1.20, '2026-05-01 16:35:17'),
(57, 15, 'positive', 'ডেটায় কোনো missing value নেই, সব অ্যালগরিদমের জন্য ভালো।', 0.50, '2026-05-01 16:35:17'),
(58, 15, 'negative', '4টি categorical column আছে, Logistic Regression ব্যবহারের আগে encoding প্রয়োজন।', 0.80, '2026-05-01 16:35:17'),
(59, 16, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং XGBoost Classification অ্যালগরিদম।', 1.50, '2026-05-01 16:35:17'),
(60, 16, 'negative', 'XGBoost এর জন্য কমপক্ষে 100 rows দরকার, কিন্তু ডেটায় মাত্র 10 rows আছে।', 1.20, '2026-05-01 16:35:17'),
(61, 16, 'positive', 'ডেটায় কোনো missing value নেই, সব অ্যালগরিদমের জন্য ভালো।', 0.50, '2026-05-01 16:35:17'),
(62, 16, 'negative', '4টি categorical column আছে, XGBoost ব্যবহারের আগে encoding প্রয়োজন।', 0.80, '2026-05-01 16:35:17'),
(63, 17, 'positive', 'ডেটাসেটটি Regression সমস্যা এবং Linear Regression Regression এর জন্য উপযুক্ত।', 1.50, '2026-05-03 15:36:05'),
(64, 17, 'positive', 'ডেটাসেটে 1,093 rows আছে, Linear Regression এর জন্য যথেষ্ট।', 1.00, '2026-05-03 15:36:05'),
(65, 17, 'positive', 'কম features (9) এবং বেশিরভাগ numeric হওয়ায় Linear model ভালো কাজ করতে পারে।', 0.80, '2026-05-03 15:36:05'),
(66, 18, 'positive', 'ডেটাসেটটি Regression সমস্যা এবং Ridge Regression Regression এর জন্য উপযুক্ত।', 1.50, '2026-05-03 15:36:05'),
(67, 18, 'positive', 'ডেটাসেটে 1,093 rows আছে, Ridge Regression এর জন্য যথেষ্ট।', 1.00, '2026-05-03 15:36:05'),
(68, 18, 'positive', 'কম features (9) এবং বেশিরভাগ numeric হওয়ায় Linear model ভালো কাজ করতে পারে।', 0.80, '2026-05-03 15:36:05'),
(69, 19, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Random Forest Classification অ্যালগরিদম।', 1.50, '2026-05-03 18:41:47'),
(70, 19, 'positive', 'ডেটাসেটে 1,025 rows আছে, Random Forest এর জন্য যথেষ্ট।', 1.00, '2026-05-03 18:41:47'),
(71, 19, 'positive', 'ডেটায় কোনো missing value নেই, সব অ্যালগরিদমের জন্য ভালো।', 0.50, '2026-05-03 18:41:47'),
(72, 20, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Logistic Regression Classification অ্যালগরিদম।', 1.50, '2026-05-03 18:41:47'),
(73, 20, 'positive', 'ডেটাসেটে 1,025 rows আছে, Logistic Regression এর জন্য যথেষ্ট।', 1.00, '2026-05-03 18:41:47'),
(74, 20, 'positive', 'ডেটায় কোনো missing value নেই, সব অ্যালগরিদমের জন্য ভালো।', 0.50, '2026-05-03 18:41:47'),
(75, 21, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Decision Tree Classification অ্যালগরিদম।', 1.50, '2026-05-03 18:41:47'),
(76, 21, 'positive', 'ডেটাসেটে 1,025 rows আছে, Decision Tree এর জন্য যথেষ্ট।', 1.00, '2026-05-03 18:41:47'),
(77, 21, 'positive', 'ডেটায় কোনো missing value নেই, সব অ্যালগরিদমের জন্য ভালো।', 0.50, '2026-05-03 18:41:47'),
(78, 22, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং XGBoost Classification অ্যালগরিদম।', 1.50, '2026-05-03 18:41:47'),
(79, 22, 'positive', 'ডেটাসেটে 1,025 rows আছে, XGBoost এর জন্য যথেষ্ট।', 1.00, '2026-05-03 18:41:47'),
(80, 22, 'positive', 'ডেটায় কোনো missing value নেই, সব অ্যালগরিদমের জন্য ভালো।', 0.50, '2026-05-03 18:41:47'),
(81, 23, 'positive', 'লেবেলবিহীন ডেটায় K-Means Clustering করতে পারে।', 1.50, '2026-05-04 05:50:53'),
(82, 23, 'positive', 'ডেটাসেটে 50,000 rows আছে, K-Means এর জন্য যথেষ্ট।', 1.00, '2026-05-04 05:50:53'),
(83, 23, 'positive', 'ডেটায় কোনো missing value নেই, সব অ্যালগরিদমের জন্য ভালো।', 0.50, '2026-05-04 05:50:53'),
(84, 24, 'positive', 'ডেটাসেটটি Regression সমস্যা এবং Linear Regression Regression এর জন্য উপযুক্ত।', 1.50, '2026-05-05 19:37:47'),
(85, 24, 'positive', 'ডেটাসেটে 1,093 rows আছে, Linear Regression এর জন্য যথেষ্ট।', 1.00, '2026-05-05 19:37:47'),
(86, 24, 'positive', 'কম features (9) এবং বেশিরভাগ numeric হওয়ায় Linear model ভালো কাজ করতে পারে।', 0.80, '2026-05-05 19:37:47'),
(87, 25, 'positive', 'ডেটাসেটটি Regression সমস্যা এবং Ridge Regression Regression এর জন্য উপযুক্ত।', 1.50, '2026-05-05 19:37:47'),
(88, 25, 'positive', 'ডেটাসেটে 1,093 rows আছে, Ridge Regression এর জন্য যথেষ্ট।', 1.00, '2026-05-05 19:37:47'),
(89, 25, 'positive', 'কম features (9) এবং বেশিরভাগ numeric হওয়ায় Linear model ভালো কাজ করতে পারে।', 0.80, '2026-05-05 19:37:47'),
(90, 26, 'positive', 'ডেটাসেটটি Regression সমস্যা এবং Linear Regression Regression এর জন্য উপযুক্ত।', 1.50, '2026-05-05 20:01:03'),
(91, 26, 'positive', 'ডেটাসেটে 1,093 rows আছে, Linear Regression এর জন্য যথেষ্ট।', 1.00, '2026-05-05 20:01:03'),
(92, 26, 'positive', 'কম features (9) এবং বেশিরভাগ numeric হওয়ায় Linear model ভালো কাজ করতে পারে।', 0.80, '2026-05-05 20:01:03'),
(93, 27, 'positive', 'ডেটাসেটটি Regression সমস্যা এবং Ridge Regression Regression এর জন্য উপযুক্ত।', 1.50, '2026-05-05 20:01:03'),
(94, 27, 'positive', 'ডেটাসেটে 1,093 rows আছে, Ridge Regression এর জন্য যথেষ্ট।', 1.00, '2026-05-05 20:01:03'),
(95, 27, 'positive', 'কম features (9) এবং বেশিরভাগ numeric হওয়ায় Linear model ভালো কাজ করতে পারে।', 0.80, '2026-05-05 20:01:03'),
(96, 28, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Random Forest Classification অ্যালগরিদম।', 1.50, '2026-05-05 20:07:45'),
(97, 28, 'positive', 'ডেটাসেটে 1,025 rows আছে, Random Forest এর জন্য যথেষ্ট।', 1.00, '2026-05-05 20:07:45'),
(98, 28, 'positive', 'ডেটায় কোনো missing value নেই, সব অ্যালগরিদমের জন্য ভালো।', 0.50, '2026-05-05 20:07:45'),
(99, 29, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Logistic Regression Classification অ্যালগরিদম।', 1.50, '2026-05-05 20:07:45'),
(100, 29, 'positive', 'ডেটাসেটে 1,025 rows আছে, Logistic Regression এর জন্য যথেষ্ট।', 1.00, '2026-05-05 20:07:45'),
(101, 29, 'positive', 'ডেটায় কোনো missing value নেই, সব অ্যালগরিদমের জন্য ভালো।', 0.50, '2026-05-05 20:07:45'),
(102, 30, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Decision Tree Classification অ্যালগরিদম।', 1.50, '2026-05-05 20:07:45'),
(103, 30, 'positive', 'ডেটাসেটে 1,025 rows আছে, Decision Tree এর জন্য যথেষ্ট।', 1.00, '2026-05-05 20:07:45'),
(104, 30, 'positive', 'ডেটায় কোনো missing value নেই, সব অ্যালগরিদমের জন্য ভালো।', 0.50, '2026-05-05 20:07:45'),
(105, 31, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং XGBoost Classification অ্যালগরিদম।', 1.50, '2026-05-05 20:07:45'),
(106, 31, 'positive', 'ডেটাসেটে 1,025 rows আছে, XGBoost এর জন্য যথেষ্ট।', 1.00, '2026-05-05 20:07:45'),
(107, 31, 'positive', 'ডেটায় কোনো missing value নেই, সব অ্যালগরিদমের জন্য ভালো।', 0.50, '2026-05-05 20:07:45'),
(108, 32, 'positive', 'লেবেলবিহীন ডেটায় K-Means Clustering করতে পারে।', 1.50, '2026-05-05 20:14:04'),
(109, 32, 'positive', 'ডেটাসেটে 50,000 rows আছে, K-Means এর জন্য যথেষ্ট।', 1.00, '2026-05-05 20:14:04'),
(110, 32, 'positive', 'ডেটায় কোনো missing value নেই, সব অ্যালগরিদমের জন্য ভালো।', 0.50, '2026-05-05 20:14:04'),
(111, 33, 'positive', 'লেবেলবিহীন ডেটায় K-Means Clustering করতে পারে।', 1.50, '2026-05-05 20:14:23'),
(112, 33, 'negative', 'K-Means এর জন্য কমপক্ষে 50 rows দরকার, কিন্তু ডেটায় মাত্র 9 rows আছে।', 1.20, '2026-05-05 20:14:23'),
(113, 33, 'positive', 'ডেটায় কোনো missing value নেই, সব অ্যালগরিদমের জন্য ভালো।', 0.50, '2026-05-05 20:14:23'),
(114, 34, 'positive', 'ডেটাসেটটি Regression সমস্যা এবং Linear Regression Regression এর জন্য উপযুক্ত।', 1.50, '2026-05-05 20:22:42'),
(115, 34, 'positive', 'ডেটাসেটে 1,093 rows আছে, Linear Regression এর জন্য যথেষ্ট।', 1.00, '2026-05-05 20:22:42'),
(116, 34, 'positive', 'কম features (9) এবং বেশিরভাগ numeric হওয়ায় Linear model ভালো কাজ করতে পারে।', 0.80, '2026-05-05 20:22:42'),
(117, 35, 'positive', 'ডেটাসেটটি Regression সমস্যা এবং Ridge Regression Regression এর জন্য উপযুক্ত।', 1.50, '2026-05-05 20:22:42'),
(118, 35, 'positive', 'ডেটাসেটে 1,093 rows আছে, Ridge Regression এর জন্য যথেষ্ট।', 1.00, '2026-05-05 20:22:42'),
(119, 35, 'positive', 'কম features (9) এবং বেশিরভাগ numeric হওয়ায় Linear model ভালো কাজ করতে পারে।', 0.80, '2026-05-05 20:22:42'),
(120, 36, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Logistic Regression Classification অ্যালগরিদম।', 1.50, '2026-05-05 20:27:28'),
(121, 36, 'positive', 'ডেটাসেটে 1,500 rows আছে, Logistic Regression এর জন্য যথেষ্ট।', 1.00, '2026-05-05 20:27:28'),
(122, 36, 'positive', 'ডেটায় কোনো missing value নেই, সব অ্যালগরিদমের জন্য ভালো।', 0.50, '2026-05-05 20:27:28'),
(123, 36, 'positive', 'কম features (5) এবং বেশিরভাগ numeric হওয়ায় Linear model ভালো কাজ করতে পারে।', 0.80, '2026-05-05 20:27:28'),
(124, 37, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Random Forest Classification অ্যালগরিদম।', 1.50, '2026-05-05 20:27:28'),
(125, 37, 'positive', 'ডেটাসেটে 1,500 rows আছে, Random Forest এর জন্য যথেষ্ট।', 1.00, '2026-05-05 20:27:28'),
(126, 37, 'positive', 'ডেটায় কোনো missing value নেই, সব অ্যালগরিদমের জন্য ভালো।', 0.50, '2026-05-05 20:27:28'),
(127, 38, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Decision Tree Classification অ্যালগরিদম।', 1.50, '2026-05-05 20:27:28'),
(128, 38, 'positive', 'ডেটাসেটে 1,500 rows আছে, Decision Tree এর জন্য যথেষ্ট।', 1.00, '2026-05-05 20:27:28'),
(129, 38, 'positive', 'ডেটায় কোনো missing value নেই, সব অ্যালগরিদমের জন্য ভালো।', 0.50, '2026-05-05 20:27:28'),
(130, 39, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং XGBoost Classification অ্যালগরিদম।', 1.50, '2026-05-05 20:27:28'),
(131, 39, 'positive', 'ডেটাসেটে 1,500 rows আছে, XGBoost এর জন্য যথেষ্ট।', 1.00, '2026-05-05 20:27:28'),
(132, 39, 'positive', 'ডেটায় কোনো missing value নেই, সব অ্যালগরিদমের জন্য ভালো।', 0.50, '2026-05-05 20:27:28'),
(133, 40, 'positive', 'লেবেলবিহীন ডেটায় K-Means Clustering করতে পারে।', 1.50, '2026-05-06 04:46:08'),
(134, 40, 'negative', 'K-Means এর জন্য কমপক্ষে 50 rows দরকার, কিন্তু ডেটায় মাত্র 9 rows আছে।', 1.20, '2026-05-06 04:46:08'),
(135, 40, 'positive', 'ডেটায় কোনো missing value নেই, সব অ্যালগরিদমের জন্য ভালো।', 0.50, '2026-05-06 04:46:08'),
(136, 41, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Random Forest Classification অ্যালগরিদম।', 1.50, '2026-05-06 05:04:05'),
(137, 41, 'positive', 'ডেটাসেটে 614 rows আছে, Random Forest এর জন্য যথেষ্ট।', 1.00, '2026-05-06 05:04:05'),
(138, 41, 'positive', '7টি categorical column আছে এবং Random Forest সেটি সরাসরি handle করতে পারে।', 1.00, '2026-05-06 05:04:05'),
(139, 42, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Decision Tree Classification অ্যালগরিদম।', 1.50, '2026-05-06 05:04:05'),
(140, 42, 'positive', 'ডেটাসেটে 614 rows আছে, Decision Tree এর জন্য যথেষ্ট।', 1.00, '2026-05-06 05:04:05'),
(141, 42, 'positive', '7টি categorical column আছে এবং Decision Tree সেটি সরাসরি handle করতে পারে।', 1.00, '2026-05-06 05:04:05'),
(142, 43, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Logistic Regression Classification অ্যালগরিদম।', 1.50, '2026-05-06 05:04:05'),
(143, 43, 'positive', 'ডেটাসেটে 614 rows আছে, Logistic Regression এর জন্য যথেষ্ট।', 1.00, '2026-05-06 05:04:05'),
(144, 43, 'negative', '7টি categorical column আছে, Logistic Regression ব্যবহারের আগে encoding প্রয়োজন।', 0.80, '2026-05-06 05:04:05'),
(145, 44, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং XGBoost Classification অ্যালগরিদম।', 1.50, '2026-05-06 05:04:05'),
(146, 44, 'positive', 'ডেটাসেটে 614 rows আছে, XGBoost এর জন্য যথেষ্ট।', 1.00, '2026-05-06 05:04:05'),
(147, 44, 'negative', '7টি categorical column আছে, XGBoost ব্যবহারের আগে encoding প্রয়োজন।', 0.80, '2026-05-06 05:04:05'),
(148, 45, 'positive', 'ডেটাসেটটি Regression সমস্যা এবং Linear Regression Regression এর জন্য উপযুক্ত।', 1.50, '2026-05-06 05:05:30'),
(149, 45, 'positive', 'ডেটাসেটে 1,093 rows আছে, Linear Regression এর জন্য যথেষ্ট।', 1.00, '2026-05-06 05:05:30'),
(150, 45, 'positive', 'কম features (9) এবং বেশিরভাগ numeric হওয়ায় Linear model ভালো কাজ করতে পারে।', 0.80, '2026-05-06 05:05:30'),
(151, 46, 'positive', 'ডেটাসেটটি Regression সমস্যা এবং Ridge Regression Regression এর জন্য উপযুক্ত।', 1.50, '2026-05-06 05:05:30'),
(152, 46, 'positive', 'ডেটাসেটে 1,093 rows আছে, Ridge Regression এর জন্য যথেষ্ট।', 1.00, '2026-05-06 05:05:30'),
(153, 46, 'positive', 'কম features (9) এবং বেশিরভাগ numeric হওয়ায় Linear model ভালো কাজ করতে পারে।', 0.80, '2026-05-06 05:05:30'),
(154, 47, 'positive', 'লেবেলবিহীন ডেটায় K-Means Clustering করতে পারে।', 1.50, '2026-05-06 07:01:20'),
(155, 47, 'positive', 'ডেটাসেটে 50,000 rows আছে, K-Means এর জন্য যথেষ্ট।', 1.00, '2026-05-06 07:01:20'),
(156, 47, 'positive', 'ডেটায় কোনো missing value নেই, সব অ্যালগরিদমের জন্য ভালো।', 0.50, '2026-05-06 07:01:20'),
(157, 48, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Random Forest Classification অ্যালগরিদম।', 1.50, '2026-05-06 17:28:46'),
(158, 48, 'negative', 'Random Forest এর জন্য কমপক্ষে 100 rows দরকার, কিন্তু ডেটায় মাত্র 10 rows আছে।', 1.20, '2026-05-06 17:28:46'),
(159, 48, 'positive', 'ডেটায় কোনো missing value নেই, সব অ্যালগরিদমের জন্য ভালো।', 0.50, '2026-05-06 17:28:46'),
(160, 48, 'positive', '4টি categorical column আছে এবং Random Forest সেটি সরাসরি handle করতে পারে।', 1.00, '2026-05-06 17:28:46'),
(161, 49, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Decision Tree Classification অ্যালগরিদম।', 1.50, '2026-05-06 17:28:46'),
(162, 49, 'negative', 'Decision Tree এর জন্য কমপক্ষে 50 rows দরকার, কিন্তু ডেটায় মাত্র 10 rows আছে।', 1.20, '2026-05-06 17:28:46'),
(163, 49, 'positive', 'ডেটায় কোনো missing value নেই, সব অ্যালগরিদমের জন্য ভালো।', 0.50, '2026-05-06 17:28:46'),
(164, 49, 'positive', '4টি categorical column আছে এবং Decision Tree সেটি সরাসরি handle করতে পারে।', 1.00, '2026-05-06 17:28:46'),
(165, 50, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Logistic Regression Classification অ্যালগরিদম।', 1.50, '2026-05-06 17:28:46'),
(166, 50, 'negative', 'Logistic Regression এর জন্য কমপক্ষে 50 rows দরকার, কিন্তু ডেটায় মাত্র 10 rows আছে।', 1.20, '2026-05-06 17:28:46'),
(167, 50, 'positive', 'ডেটায় কোনো missing value নেই, সব অ্যালগরিদমের জন্য ভালো।', 0.50, '2026-05-06 17:28:46'),
(168, 50, 'negative', '4টি categorical column আছে, Logistic Regression ব্যবহারের আগে encoding প্রয়োজন।', 0.80, '2026-05-06 17:28:46'),
(169, 51, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং XGBoost Classification অ্যালগরিদম।', 1.50, '2026-05-06 17:28:47'),
(170, 51, 'negative', 'XGBoost এর জন্য কমপক্ষে 100 rows দরকার, কিন্তু ডেটায় মাত্র 10 rows আছে।', 1.20, '2026-05-06 17:28:47'),
(171, 51, 'positive', 'ডেটায় কোনো missing value নেই, সব অ্যালগরিদমের জন্য ভালো।', 0.50, '2026-05-06 17:28:47'),
(172, 51, 'negative', '4টি categorical column আছে, XGBoost ব্যবহারের আগে encoding প্রয়োজন।', 0.80, '2026-05-06 17:28:47'),
(173, 52, 'positive', 'লেবেলবিহীন ডেটায় K-Means Clustering করতে পারে।', 1.50, '2026-07-24 13:58:54'),
(174, 52, 'negative', 'K-Means এর জন্য কমপক্ষে 50 rows দরকার, কিন্তু ডেটায় মাত্র 25 rows আছে।', 1.20, '2026-07-24 13:58:54'),
(175, 52, 'positive', 'ডেটায় কোনো missing value নেই, সব অ্যালগরিদমের জন্য ভালো।', 0.50, '2026-07-24 13:58:54'),
(176, 53, 'positive', 'লেবেলবিহীন ডেটায় K-Means Clustering করতে পারে।', 1.50, '2026-07-25 07:32:31'),
(177, 53, 'negative', 'K-Means এর জন্য কমপক্ষে 50 rows দরকার, কিন্তু ডেটায় মাত্র 25 rows আছে।', 1.20, '2026-07-25 07:32:31'),
(178, 53, 'positive', 'ডেটায় কোনো missing value নেই, সব অ্যালগরিদমের জন্য ভালো।', 0.50, '2026-07-25 07:32:31'),
(179, 54, 'positive', 'লেবেলবিহীন ডেটায় K-Means Clustering করতে পারে।', 1.50, '2026-07-25 16:37:33'),
(180, 54, 'negative', 'K-Means এর জন্য কমপক্ষে 50 rows দরকার, কিন্তু ডেটায় মাত্র 25 rows আছে।', 1.20, '2026-07-25 16:37:33'),
(181, 54, 'positive', 'ডেটায় কোনো missing value নেই, সব অ্যালগরিদমের জন্য ভালো।', 0.50, '2026-07-25 16:37:33'),
(182, 55, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Random Forest Classification অ্যালগরিদম।', 1.50, '2026-07-25 16:40:54'),
(183, 55, 'positive', 'ডেটাসেটে 23,220 rows আছে, Random Forest এর জন্য যথেষ্ট।', 1.00, '2026-07-25 16:40:54'),
(184, 55, 'positive', 'ডেটায় 56.2% missing values আছে এবং Random Forest সেটি handle করতে পারে।', 1.00, '2026-07-25 16:40:54'),
(185, 55, 'positive', '12টি categorical column আছে এবং Random Forest সেটি সরাসরি handle করতে পারে।', 1.00, '2026-07-25 16:40:54'),
(186, 56, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং XGBoost Classification অ্যালগরিদম।', 1.50, '2026-07-25 16:40:54'),
(187, 56, 'positive', 'ডেটাসেটে 23,220 rows আছে, XGBoost এর জন্য যথেষ্ট।', 1.00, '2026-07-25 16:40:54'),
(188, 56, 'positive', 'ডেটায় 56.2% missing values আছে এবং XGBoost সেটি handle করতে পারে।', 1.00, '2026-07-25 16:40:54'),
(189, 56, 'negative', '12টি categorical column আছে, XGBoost ব্যবহারের আগে encoding প্রয়োজন।', 0.80, '2026-07-25 16:40:54'),
(190, 57, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Decision Tree Classification অ্যালগরিদম।', 1.50, '2026-07-25 16:40:54'),
(191, 57, 'positive', 'ডেটাসেটে 23,220 rows আছে, Decision Tree এর জন্য যথেষ্ট।', 1.00, '2026-07-25 16:40:54'),
(192, 57, 'negative', 'ডেটায় 56.2% missing values আছে কিন্তু Decision Tree সরাসরি handle করতে পারে না। Imputation দরকার হবে।', 1.00, '2026-07-25 16:40:54'),
(193, 57, 'positive', '12টি categorical column আছে এবং Decision Tree সেটি সরাসরি handle করতে পারে।', 1.00, '2026-07-25 16:40:54'),
(194, 58, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Logistic Regression Classification অ্যালগরিদম।', 1.50, '2026-07-25 16:40:54'),
(195, 58, 'positive', 'ডেটাসেটে 23,220 rows আছে, Logistic Regression এর জন্য যথেষ্ট।', 1.00, '2026-07-25 16:40:54'),
(196, 58, 'negative', 'ডেটায় 56.2% missing values আছে কিন্তু Logistic Regression সরাসরি handle করতে পারে না। Imputation দরকার হবে।', 1.00, '2026-07-25 16:40:54'),
(197, 58, 'negative', '12টি categorical column আছে, Logistic Regression ব্যবহারের আগে encoding প্রয়োজন।', 0.80, '2026-07-25 16:40:54'),
(198, 59, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Random Forest Classification অ্যালগরিদম।', 1.50, '2026-07-25 16:52:16'),
(199, 59, 'positive', 'ডেটাসেটে 9,555 rows আছে, Random Forest এর জন্য যথেষ্ট।', 1.00, '2026-07-25 16:52:16'),
(200, 59, 'positive', 'ডেটায় 14.3% missing values আছে এবং Random Forest সেটি handle করতে পারে।', 1.00, '2026-07-25 16:52:16'),
(201, 59, 'positive', '10টি categorical column আছে এবং Random Forest সেটি সরাসরি handle করতে পারে।', 1.00, '2026-07-25 16:52:16'),
(202, 60, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং XGBoost Classification অ্যালগরিদম।', 1.50, '2026-07-25 16:52:16'),
(203, 60, 'positive', 'ডেটাসেটে 9,555 rows আছে, XGBoost এর জন্য যথেষ্ট।', 1.00, '2026-07-25 16:52:16'),
(204, 60, 'positive', 'ডেটায় 14.3% missing values আছে এবং XGBoost সেটি handle করতে পারে।', 1.00, '2026-07-25 16:52:16'),
(205, 60, 'negative', '10টি categorical column আছে, XGBoost ব্যবহারের আগে encoding প্রয়োজন।', 0.80, '2026-07-25 16:52:16'),
(206, 61, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Decision Tree Classification অ্যালগরিদম।', 1.50, '2026-07-25 16:52:16'),
(207, 61, 'positive', 'ডেটাসেটে 9,555 rows আছে, Decision Tree এর জন্য যথেষ্ট।', 1.00, '2026-07-25 16:52:16'),
(208, 61, 'negative', 'ডেটায় 14.3% missing values আছে কিন্তু Decision Tree সরাসরি handle করতে পারে না। Imputation দরকার হবে।', 1.00, '2026-07-25 16:52:16'),
(209, 61, 'positive', '10টি categorical column আছে এবং Decision Tree সেটি সরাসরি handle করতে পারে।', 1.00, '2026-07-25 16:52:16'),
(210, 62, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Logistic Regression Classification অ্যালগরিদম।', 1.50, '2026-07-25 16:52:16'),
(211, 62, 'positive', 'ডেটাসেটে 9,555 rows আছে, Logistic Regression এর জন্য যথেষ্ট।', 1.00, '2026-07-25 16:52:16'),
(212, 62, 'negative', 'ডেটায় 14.3% missing values আছে কিন্তু Logistic Regression সরাসরি handle করতে পারে না। Imputation দরকার হবে।', 1.00, '2026-07-25 16:52:16'),
(213, 62, 'negative', '10টি categorical column আছে, Logistic Regression ব্যবহারের আগে encoding প্রয়োজন।', 0.80, '2026-07-25 16:52:16'),
(214, 63, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Random Forest Classification অ্যালগরিদম।', 1.50, '2026-07-25 16:52:41'),
(215, 63, 'positive', 'ডেটাসেটে 26,059 rows আছে, Random Forest এর জন্য যথেষ্ট।', 1.00, '2026-07-25 16:52:41'),
(216, 63, 'positive', 'ডেটায় 21.4% missing values আছে এবং Random Forest সেটি handle করতে পারে।', 1.00, '2026-07-25 16:52:41'),
(217, 63, 'positive', '9টি categorical column আছে এবং Random Forest সেটি সরাসরি handle করতে পারে।', 1.00, '2026-07-25 16:52:41'),
(218, 64, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং XGBoost Classification অ্যালগরিদম।', 1.50, '2026-07-25 16:52:41'),
(219, 64, 'positive', 'ডেটাসেটে 26,059 rows আছে, XGBoost এর জন্য যথেষ্ট।', 1.00, '2026-07-25 16:52:41'),
(220, 64, 'positive', 'ডেটায় 21.4% missing values আছে এবং XGBoost সেটি handle করতে পারে।', 1.00, '2026-07-25 16:52:41'),
(221, 64, 'negative', '9টি categorical column আছে, XGBoost ব্যবহারের আগে encoding প্রয়োজন।', 0.80, '2026-07-25 16:52:41'),
(222, 65, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Decision Tree Classification অ্যালগরিদম।', 1.50, '2026-07-25 16:52:41'),
(223, 65, 'positive', 'ডেটাসেটে 26,059 rows আছে, Decision Tree এর জন্য যথেষ্ট।', 1.00, '2026-07-25 16:52:41'),
(224, 65, 'negative', 'ডেটায় 21.4% missing values আছে কিন্তু Decision Tree সরাসরি handle করতে পারে না। Imputation দরকার হবে।', 1.00, '2026-07-25 16:52:41'),
(225, 65, 'positive', '9টি categorical column আছে এবং Decision Tree সেটি সরাসরি handle করতে পারে।', 1.00, '2026-07-25 16:52:41'),
(226, 66, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Logistic Regression Classification অ্যালগরিদম।', 1.50, '2026-07-25 16:52:41'),
(227, 66, 'positive', 'ডেটাসেটে 26,059 rows আছে, Logistic Regression এর জন্য যথেষ্ট।', 1.00, '2026-07-25 16:52:41'),
(228, 66, 'negative', 'ডেটায় 21.4% missing values আছে কিন্তু Logistic Regression সরাসরি handle করতে পারে না। Imputation দরকার হবে।', 1.00, '2026-07-25 16:52:41'),
(229, 66, 'negative', '9টি categorical column আছে, Logistic Regression ব্যবহারের আগে encoding প্রয়োজন।', 0.80, '2026-07-25 16:52:41'),
(230, 67, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Random Forest Classification অ্যালগরিদম।', 1.50, '2026-07-26 06:13:29'),
(231, 67, 'positive', 'ডেটাসেটে 23,220 rows আছে, Random Forest এর জন্য যথেষ্ট।', 1.00, '2026-07-26 06:13:29'),
(232, 67, 'positive', 'ডেটায় 56.2% missing values আছে এবং Random Forest সেটি handle করতে পারে।', 1.00, '2026-07-26 06:13:29'),
(233, 67, 'positive', '12টি categorical column আছে এবং Random Forest সেটি সরাসরি handle করতে পারে।', 1.00, '2026-07-26 06:13:29'),
(234, 68, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং XGBoost Classification অ্যালগরিদম।', 1.50, '2026-07-26 06:13:29'),
(235, 68, 'positive', 'ডেটাসেটে 23,220 rows আছে, XGBoost এর জন্য যথেষ্ট।', 1.00, '2026-07-26 06:13:29'),
(236, 68, 'positive', 'ডেটায় 56.2% missing values আছে এবং XGBoost সেটি handle করতে পারে।', 1.00, '2026-07-26 06:13:29'),
(237, 68, 'negative', '12টি categorical column আছে, XGBoost ব্যবহারের আগে encoding প্রয়োজন।', 0.80, '2026-07-26 06:13:29'),
(238, 69, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Decision Tree Classification অ্যালগরিদম।', 1.50, '2026-07-26 06:13:29'),
(239, 69, 'positive', 'ডেটাসেটে 23,220 rows আছে, Decision Tree এর জন্য যথেষ্ট।', 1.00, '2026-07-26 06:13:29'),
(240, 69, 'negative', 'ডেটায় 56.2% missing values আছে কিন্তু Decision Tree সরাসরি handle করতে পারে না। Imputation দরকার হবে।', 1.00, '2026-07-26 06:13:29'),
(241, 69, 'positive', '12টি categorical column আছে এবং Decision Tree সেটি সরাসরি handle করতে পারে।', 1.00, '2026-07-26 06:13:29'),
(242, 70, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Logistic Regression Classification অ্যালগরিদম।', 1.50, '2026-07-26 06:13:29'),
(243, 70, 'positive', 'ডেটাসেটে 23,220 rows আছে, Logistic Regression এর জন্য যথেষ্ট।', 1.00, '2026-07-26 06:13:29'),
(244, 70, 'negative', 'ডেটায় 56.2% missing values আছে কিন্তু Logistic Regression সরাসরি handle করতে পারে না। Imputation দরকার হবে।', 1.00, '2026-07-26 06:13:29'),
(245, 70, 'negative', '12টি categorical column আছে, Logistic Regression ব্যবহারের আগে encoding প্রয়োজন।', 0.80, '2026-07-26 06:13:29'),
(246, 71, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Random Forest Classification অ্যালগরিদম।', 1.50, '2026-07-26 15:35:03'),
(247, 71, 'positive', 'ডেটাসেটে 26,059 rows আছে, Random Forest এর জন্য যথেষ্ট।', 1.00, '2026-07-26 15:35:03'),
(248, 71, 'positive', 'ডেটায় 21.4% missing values আছে এবং Random Forest সেটি handle করতে পারে।', 1.00, '2026-07-26 15:35:03'),
(249, 71, 'positive', '9টি categorical column আছে এবং Random Forest সেটি সরাসরি handle করতে পারে।', 1.00, '2026-07-26 15:35:03'),
(250, 72, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং XGBoost Classification অ্যালগরিদম।', 1.50, '2026-07-26 15:35:03'),
(251, 72, 'positive', 'ডেটাসেটে 26,059 rows আছে, XGBoost এর জন্য যথেষ্ট।', 1.00, '2026-07-26 15:35:03'),
(252, 72, 'positive', 'ডেটায় 21.4% missing values আছে এবং XGBoost সেটি handle করতে পারে।', 1.00, '2026-07-26 15:35:03'),
(253, 72, 'negative', '9টি categorical column আছে, XGBoost ব্যবহারের আগে encoding প্রয়োজন।', 0.80, '2026-07-26 15:35:03'),
(254, 73, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Decision Tree Classification অ্যালগরিদম।', 1.50, '2026-07-26 15:35:03'),
(255, 73, 'positive', 'ডেটাসেটে 26,059 rows আছে, Decision Tree এর জন্য যথেষ্ট।', 1.00, '2026-07-26 15:35:03'),
(256, 73, 'negative', 'ডেটায় 21.4% missing values আছে কিন্তু Decision Tree সরাসরি handle করতে পারে না। Imputation দরকার হবে।', 1.00, '2026-07-26 15:35:03'),
(257, 73, 'positive', '9টি categorical column আছে এবং Decision Tree সেটি সরাসরি handle করতে পারে।', 1.00, '2026-07-26 15:35:03'),
(258, 74, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Logistic Regression Classification অ্যালগরিদম।', 1.50, '2026-07-26 15:35:03'),
(259, 74, 'positive', 'ডেটাসেটে 26,059 rows আছে, Logistic Regression এর জন্য যথেষ্ট।', 1.00, '2026-07-26 15:35:03'),
(260, 74, 'negative', 'ডেটায় 21.4% missing values আছে কিন্তু Logistic Regression সরাসরি handle করতে পারে না। Imputation দরকার হবে।', 1.00, '2026-07-26 15:35:03'),
(261, 74, 'negative', '9টি categorical column আছে, Logistic Regression ব্যবহারের আগে encoding প্রয়োজন।', 0.80, '2026-07-26 15:35:03'),
(262, 75, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Random Forest Classification অ্যালগরিদম।', 1.50, '2026-08-02 17:02:40'),
(263, 75, 'positive', 'ডেটাসেটে 26,059 rows আছে, Random Forest এর জন্য যথেষ্ট।', 1.00, '2026-08-02 17:02:40'),
(264, 75, 'positive', 'ডেটায় 21.4% missing values আছে এবং Random Forest সেটি handle করতে পারে।', 1.00, '2026-08-02 17:02:40'),
(265, 75, 'positive', '9টি categorical column আছে এবং Random Forest সেটি সরাসরি handle করতে পারে।', 1.00, '2026-08-02 17:02:40'),
(266, 76, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং XGBoost Classification অ্যালগরিদম।', 1.50, '2026-08-02 17:02:40'),
(267, 76, 'positive', 'ডেটাসেটে 26,059 rows আছে, XGBoost এর জন্য যথেষ্ট।', 1.00, '2026-08-02 17:02:40'),
(268, 76, 'positive', 'ডেটায় 21.4% missing values আছে এবং XGBoost সেটি handle করতে পারে।', 1.00, '2026-08-02 17:02:40'),
(269, 76, 'negative', '9টি categorical column আছে, XGBoost ব্যবহারের আগে encoding প্রয়োজন।', 0.80, '2026-08-02 17:02:40'),
(270, 77, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Decision Tree Classification অ্যালগরিদম।', 1.50, '2026-08-02 17:02:40'),
(271, 77, 'positive', 'ডেটাসেটে 26,059 rows আছে, Decision Tree এর জন্য যথেষ্ট।', 1.00, '2026-08-02 17:02:40'),
(272, 77, 'negative', 'ডেটায় 21.4% missing values আছে কিন্তু Decision Tree সরাসরি handle করতে পারে না। Imputation দরকার হবে।', 1.00, '2026-08-02 17:02:40'),
(273, 77, 'positive', '9টি categorical column আছে এবং Decision Tree সেটি সরাসরি handle করতে পারে।', 1.00, '2026-08-02 17:02:40'),
(274, 78, 'positive', 'ডেটাসেটটি Classification সমস্যা এবং Logistic Regression Classification অ্যালগরিদম।', 1.50, '2026-08-02 17:02:40'),
(275, 78, 'positive', 'ডেটাসেটে 26,059 rows আছে, Logistic Regression এর জন্য যথেষ্ট।', 1.00, '2026-08-02 17:02:40'),
(276, 78, 'negative', 'ডেটায় 21.4% missing values আছে কিন্তু Logistic Regression সরাসরি handle করতে পারে না। Imputation দরকার হবে।', 1.00, '2026-08-02 17:02:40'),
(277, 78, 'negative', '9টি categorical column আছে, Logistic Regression ব্যবহারের আগে encoding প্রয়োজন।', 0.80, '2026-08-02 17:02:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `role` enum('admin','user') DEFAULT 'user',
  `is_active` tinyint(1) DEFAULT 1,
  `profile_picture` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password_hash`, `full_name`, `role`, `is_active`, `profile_picture`, `created_at`, `updated_at`) VALUES
(1, 'rafi', 'abubakarrafi4@gmail.com', '$2b$12$qy14rgHdoDhwQFvubCKdXevJc9JwALnhHyMnA6Ta2GLKAzlEv1JZq', 'Abu Bakar Rafi', 'user', 1, NULL, '2026-05-01 10:10:57', '2026-05-01 10:10:57'),
(2, 'raha', 'raha@gmail.com', '$2b$12$qgJORFWpFU2OYCu0oQgh0OJzujRL7OJQ2hXCO.gN7Zn1A..UuP3HO', 'alisha ahsan raha', 'user', 1, NULL, '2026-05-01 10:12:00', '2026-05-01 10:12:00'),
(3, 'ripa', 'ripa@gmail.com', '$2b$12$12VQFbrvUklKVuqvTuulzu4LZh06X09TPGXcBre0RHpYWsRTV3tu6', 'zakia sultana', 'user', 1, NULL, '2026-05-01 11:25:48', '2026-05-01 11:25:48'),
(4, 'amin', 'amin@gmail.com', '$2b$12$kQTGFN3V6EAU4nGwnWCFJ.pj/llnWa5KX5QxIsSU6pH19h8oalZUe', 'amin', 'user', 1, NULL, '2026-07-25 07:26:16', '2026-07-25 07:26:16'),
(5, 'emon', 'emon@gmail.com', '$2b$12$gw39.FNTPXawMsKVF72VUuMJoVrLEiCK3X0ibSr3e6w2W9qhhBpra', 'Emon', 'user', 1, NULL, '2026-07-25 07:31:00', '2026-07-25 07:31:00'),
(6, 'rifat', 'rifat@gmail.com', '$2b$12$1q0S1v3OTJ8vgd.jE.QFzO8nIhhdn1pi/9MNYnkUtp6C5rwfcW3Ky', 'rifat himel', 'user', 1, NULL, '2026-07-25 16:26:29', '2026-07-25 16:26:29'),
(7, 'ahsan', 'alisha@gmail.com', '$2b$12$tESVaE0gic5Z8yGMvuo8quXZl4g1iV/0PSk.euPx1Iuwo2Q.9pUee', 'alisha raha', 'user', 1, NULL, '2026-07-26 15:32:43', '2026-07-26 15:32:43');

-- --------------------------------------------------------

--
-- Table structure for table `user_feedback`
--

CREATE TABLE `user_feedback` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `recommendation_id` int(11) NOT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` between 1 and 5),
  `feedback_text` text DEFAULT NULL,
  `was_helpful` tinyint(1) DEFAULT NULL,
  `actual_algorithm_used` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_sessions`
--

CREATE TABLE `user_sessions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(500) NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `expires_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_profile_basic`
-- (See below for the actual view)
--
CREATE TABLE `v_profile_basic` (
`upload_id` int(11)
,`problem_type` enum('classification','regression','clustering','unknown')
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_upload_basic`
-- (See below for the actual view)
--
CREATE TABLE `v_upload_basic` (
`upload_id` int(11)
,`original_filename` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure for view `v_profile_basic`
--
DROP TABLE IF EXISTS `v_profile_basic`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_profile_basic`  AS SELECT `dataset_profiles`.`upload_id` AS `upload_id`, `dataset_profiles`.`problem_type` AS `problem_type` FROM `dataset_profiles` ;

-- --------------------------------------------------------

--
-- Structure for view `v_upload_basic`
--
DROP TABLE IF EXISTS `v_upload_basic`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_upload_basic`  AS SELECT `file_uploads`.`id` AS `upload_id`, `file_uploads`.`original_filename` AS `original_filename` FROM `file_uploads` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `algorithm_categories`
--
ALTER TABLE `algorithm_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `analysis_reports`
--
ALTER TABLE `analysis_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_id` (`upload_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `column_statistics`
--
ALTER TABLE `column_statistics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dataset_profile_id` (`dataset_profile_id`);

--
-- Indexes for table `dataset_profiles`
--
ALTER TABLE `dataset_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_id` (`upload_id`);

--
-- Indexes for table `file_uploads`
--
ALTER TABLE `file_uploads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stored_filename` (`stored_filename`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `ml_algorithms`
--
ALTER TABLE `ml_algorithms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `recommendations`
--
ALTER TABLE `recommendations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_id` (`upload_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `algorithm_id` (`algorithm_id`);

--
-- Indexes for table `recommendation_reasons`
--
ALTER TABLE `recommendation_reasons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recommendation_id` (`recommendation_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_feedback`
--
ALTER TABLE `user_feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `recommendation_id` (`recommendation_id`);

--
-- Indexes for table `user_sessions`
--
ALTER TABLE `user_sessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `algorithm_categories`
--
ALTER TABLE `algorithm_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `analysis_reports`
--
ALTER TABLE `analysis_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `column_statistics`
--
ALTER TABLE `column_statistics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412;

--
-- AUTO_INCREMENT for table `dataset_profiles`
--
ALTER TABLE `dataset_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `file_uploads`
--
ALTER TABLE `file_uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `ml_algorithms`
--
ALTER TABLE `ml_algorithms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `recommendations`
--
ALTER TABLE `recommendations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `recommendation_reasons`
--
ALTER TABLE `recommendation_reasons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=278;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_feedback`
--
ALTER TABLE `user_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_sessions`
--
ALTER TABLE `user_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `activity_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `analysis_reports`
--
ALTER TABLE `analysis_reports`
  ADD CONSTRAINT `analysis_reports_ibfk_1` FOREIGN KEY (`upload_id`) REFERENCES `file_uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `analysis_reports_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `column_statistics`
--
ALTER TABLE `column_statistics`
  ADD CONSTRAINT `column_statistics_ibfk_1` FOREIGN KEY (`dataset_profile_id`) REFERENCES `dataset_profiles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `dataset_profiles`
--
ALTER TABLE `dataset_profiles`
  ADD CONSTRAINT `dataset_profiles_ibfk_1` FOREIGN KEY (`upload_id`) REFERENCES `file_uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `file_uploads`
--
ALTER TABLE `file_uploads`
  ADD CONSTRAINT `file_uploads_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ml_algorithms`
--
ALTER TABLE `ml_algorithms`
  ADD CONSTRAINT `ml_algorithms_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `algorithm_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recommendations`
--
ALTER TABLE `recommendations`
  ADD CONSTRAINT `recommendations_ibfk_1` FOREIGN KEY (`upload_id`) REFERENCES `file_uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `recommendations_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `recommendations_ibfk_3` FOREIGN KEY (`algorithm_id`) REFERENCES `ml_algorithms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recommendation_reasons`
--
ALTER TABLE `recommendation_reasons`
  ADD CONSTRAINT `recommendation_reasons_ibfk_1` FOREIGN KEY (`recommendation_id`) REFERENCES `recommendations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_feedback`
--
ALTER TABLE `user_feedback`
  ADD CONSTRAINT `user_feedback_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_feedback_ibfk_2` FOREIGN KEY (`recommendation_id`) REFERENCES `recommendations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_sessions`
--
ALTER TABLE `user_sessions`
  ADD CONSTRAINT `user_sessions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
