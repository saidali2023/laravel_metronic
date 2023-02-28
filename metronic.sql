-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 28, 2023 at 02:21 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `metronic`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_type` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `batch_uuid` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'default', 'created', 'App\\Models\\User', 'created', 1, NULL, NULL, '{\"attributes\":{\"id\":1,\"first_name\":\"Domingo\",\"last_name\":\"Renner\",\"email\":\"demo@demo.com\",\"email_verified_at\":\"2023-02-15T15:50:33.000000Z\",\"password\":\"$2y$10$36MuRKhOQsZiQG.r2bvAWOZUX9mUFjlcg1gzXAAWMD3Yx6DBV\\/jbC\",\"api_token\":\"$2y$10$xfyf5WuFfH8sEWFEvHzQqe8O7F4AZdo3uSyiRDCt64.CjkIBMYPJa\",\"remember_token\":null,\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(2, 'default', 'created', 'App\\Models\\UserInfo', 'created', 1, NULL, NULL, '{\"attributes\":{\"id\":1,\"user_id\":1,\"avatar\":null,\"company\":\"Blick-Langosh\",\"phone\":\"781.675.1476\",\"website\":\"http:\\/\\/www.stokes.info\\/sequi-voluptatem-maxime-cupiditate-qui-explicabo-sed-excepturi\",\"country\":\"SL\",\"language\":\"tt\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(3, 'default', 'created', 'App\\Models\\User', 'created', 2, NULL, NULL, '{\"attributes\":{\"id\":2,\"first_name\":\"Nestor\",\"last_name\":\"Deckow\",\"email\":\"admin@demo.com\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$AK8EVvnlgPMq8tglfzBJVenKSOAb6HUSztMmmFFWDHU7TxB6f\\/Qyy\",\"api_token\":\"$2y$10$96c9bEewLzog\\/RYZwmZRSegN2OPNSrrYu4pIpT1SYHP211R4lj2nm\",\"remember_token\":null,\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(4, 'default', 'created', 'App\\Models\\UserInfo', 'created', 2, NULL, NULL, '{\"attributes\":{\"id\":2,\"user_id\":2,\"avatar\":null,\"company\":\"Hintz and Sons\",\"phone\":\"+13232485978\",\"website\":\"https:\\/\\/www.schneider.biz\\/rerum-omnis-non-et-laborum-est-non-in-quam\",\"country\":\"GS\",\"language\":\"cy\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(5, 'default', 'created', 'App\\Models\\User', 'created', 3, NULL, NULL, '{\"attributes\":{\"id\":3,\"first_name\":\"Dina\",\"last_name\":\"Zboncak\",\"email\":\"kaci73@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"KFPb3czn83\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(6, 'default', 'created', 'App\\Models\\User', 'created', 4, NULL, NULL, '{\"attributes\":{\"id\":4,\"first_name\":\"Rodolfo\",\"last_name\":\"Stokes\",\"email\":\"vrunte@example.net\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"qUqEollST3\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(7, 'default', 'created', 'App\\Models\\User', 'created', 5, NULL, NULL, '{\"attributes\":{\"id\":5,\"first_name\":\"Walter\",\"last_name\":\"Gulgowski\",\"email\":\"kelley.zboncak@example.net\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"XozlCDYrrl\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(8, 'default', 'created', 'App\\Models\\User', 'created', 6, NULL, NULL, '{\"attributes\":{\"id\":6,\"first_name\":\"Cordie\",\"last_name\":\"Emmerich\",\"email\":\"ladarius13@example.net\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"YmvFYKD3Bi\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(9, 'default', 'created', 'App\\Models\\User', 'created', 7, NULL, NULL, '{\"attributes\":{\"id\":7,\"first_name\":\"Benjamin\",\"last_name\":\"Monahan\",\"email\":\"werner96@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"haBS28IZe6\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(10, 'default', 'created', 'App\\Models\\User', 'created', 8, NULL, NULL, '{\"attributes\":{\"id\":8,\"first_name\":\"Candice\",\"last_name\":\"Lebsack\",\"email\":\"jhettinger@example.net\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"T8zpwJ8qon\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(11, 'default', 'created', 'App\\Models\\User', 'created', 9, NULL, NULL, '{\"attributes\":{\"id\":9,\"first_name\":\"Torey\",\"last_name\":\"Romaguera\",\"email\":\"tia91@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"GxtXrUNjLS\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(12, 'default', 'created', 'App\\Models\\User', 'created', 10, NULL, NULL, '{\"attributes\":{\"id\":10,\"first_name\":\"Jasmin\",\"last_name\":\"Botsford\",\"email\":\"litzy34@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"3YgjQruRIT\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(13, 'default', 'created', 'App\\Models\\User', 'created', 11, NULL, NULL, '{\"attributes\":{\"id\":11,\"first_name\":\"Moshe\",\"last_name\":\"Smith\",\"email\":\"hrice@example.net\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"dzYrMV5AFI\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(14, 'default', 'created', 'App\\Models\\User', 'created', 12, NULL, NULL, '{\"attributes\":{\"id\":12,\"first_name\":\"Lexus\",\"last_name\":\"Price\",\"email\":\"kovacek.coleman@example.net\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"3YhoJoOdPL\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(15, 'default', 'created', 'App\\Models\\User', 'created', 13, NULL, NULL, '{\"attributes\":{\"id\":13,\"first_name\":\"Bertrand\",\"last_name\":\"Bernier\",\"email\":\"charlie.mills@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"4F9Zak9scc\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(16, 'default', 'created', 'App\\Models\\User', 'created', 14, NULL, NULL, '{\"attributes\":{\"id\":14,\"first_name\":\"Rashad\",\"last_name\":\"Morissette\",\"email\":\"nbechtelar@example.net\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"J9fndUqpCD\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(17, 'default', 'created', 'App\\Models\\User', 'created', 15, NULL, NULL, '{\"attributes\":{\"id\":15,\"first_name\":\"Rico\",\"last_name\":\"Satterfield\",\"email\":\"haylie.dare@example.net\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"NU2aEcDDYs\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(18, 'default', 'created', 'App\\Models\\User', 'created', 16, NULL, NULL, '{\"attributes\":{\"id\":16,\"first_name\":\"Kurtis\",\"last_name\":\"Herzog\",\"email\":\"blanda.marianna@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"aOKUAmIarF\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(19, 'default', 'created', 'App\\Models\\User', 'created', 17, NULL, NULL, '{\"attributes\":{\"id\":17,\"first_name\":\"Fatima\",\"last_name\":\"Hamill\",\"email\":\"monty25@example.com\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"LEfaOL5Ugk\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(20, 'default', 'created', 'App\\Models\\User', 'created', 18, NULL, NULL, '{\"attributes\":{\"id\":18,\"first_name\":\"Anabel\",\"last_name\":\"Williamson\",\"email\":\"cali56@example.com\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"7bf0ZtC1Td\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(21, 'default', 'created', 'App\\Models\\User', 'created', 19, NULL, NULL, '{\"attributes\":{\"id\":19,\"first_name\":\"Clifford\",\"last_name\":\"Simonis\",\"email\":\"romaguera.stewart@example.net\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"LZe6dYM9n2\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(22, 'default', 'created', 'App\\Models\\User', 'created', 20, NULL, NULL, '{\"attributes\":{\"id\":20,\"first_name\":\"Amanda\",\"last_name\":\"Orn\",\"email\":\"tcremin@example.com\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"fC1xJo3j7T\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(23, 'default', 'created', 'App\\Models\\User', 'created', 21, NULL, NULL, '{\"attributes\":{\"id\":21,\"first_name\":\"Vilma\",\"last_name\":\"Lebsack\",\"email\":\"lkessler@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"Yf4k5gOrAd\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(24, 'default', 'created', 'App\\Models\\User', 'created', 22, NULL, NULL, '{\"attributes\":{\"id\":22,\"first_name\":\"Hertha\",\"last_name\":\"Feeney\",\"email\":\"parker.odessa@example.net\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"JcSTgnHPgq\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(25, 'default', 'created', 'App\\Models\\User', 'created', 23, NULL, NULL, '{\"attributes\":{\"id\":23,\"first_name\":\"Amy\",\"last_name\":\"Bechtelar\",\"email\":\"laverna.roob@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"zyh0EGciTs\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(26, 'default', 'created', 'App\\Models\\User', 'created', 24, NULL, NULL, '{\"attributes\":{\"id\":24,\"first_name\":\"Effie\",\"last_name\":\"Swaniawski\",\"email\":\"klein.patience@example.net\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"BvQw9JFmEa\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(27, 'default', 'created', 'App\\Models\\User', 'created', 25, NULL, NULL, '{\"attributes\":{\"id\":25,\"first_name\":\"Ewell\",\"last_name\":\"Schamberger\",\"email\":\"jenkins.otilia@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"9pkGeHhth8\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(28, 'default', 'created', 'App\\Models\\User', 'created', 26, NULL, NULL, '{\"attributes\":{\"id\":26,\"first_name\":\"Kallie\",\"last_name\":\"Luettgen\",\"email\":\"xkautzer@example.net\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"iwLxkKqD8x\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(29, 'default', 'created', 'App\\Models\\User', 'created', 27, NULL, NULL, '{\"attributes\":{\"id\":27,\"first_name\":\"Felix\",\"last_name\":\"Ryan\",\"email\":\"mason.dickinson@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"yjmqwTTh32\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(30, 'default', 'created', 'App\\Models\\User', 'created', 28, NULL, NULL, '{\"attributes\":{\"id\":28,\"first_name\":\"Emmie\",\"last_name\":\"Kautzer\",\"email\":\"roberts.saul@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"WKLzzySO0n\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(31, 'default', 'created', 'App\\Models\\User', 'created', 29, NULL, NULL, '{\"attributes\":{\"id\":29,\"first_name\":\"Judd\",\"last_name\":\"Berge\",\"email\":\"runolfsdottir.ariel@example.net\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"7HECdTyrrp\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(32, 'default', 'created', 'App\\Models\\User', 'created', 30, NULL, NULL, '{\"attributes\":{\"id\":30,\"first_name\":\"Elton\",\"last_name\":\"Stamm\",\"email\":\"earmstrong@example.com\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"mZzatpzSJ2\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(33, 'default', 'created', 'App\\Models\\User', 'created', 31, NULL, NULL, '{\"attributes\":{\"id\":31,\"first_name\":\"Loyce\",\"last_name\":\"Crist\",\"email\":\"twila.crona@example.net\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"4E128WpwOj\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(34, 'default', 'created', 'App\\Models\\User', 'created', 32, NULL, NULL, '{\"attributes\":{\"id\":32,\"first_name\":\"Ella\",\"last_name\":\"Crona\",\"email\":\"mccullough.makenna@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"l5EgHVOMlD\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(35, 'default', 'created', 'App\\Models\\User', 'created', 33, NULL, NULL, '{\"attributes\":{\"id\":33,\"first_name\":\"Hoyt\",\"last_name\":\"Rippin\",\"email\":\"othiel@example.com\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"3ZtcNJFgcq\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(36, 'default', 'created', 'App\\Models\\User', 'created', 34, NULL, NULL, '{\"attributes\":{\"id\":34,\"first_name\":\"Elbert\",\"last_name\":\"Balistreri\",\"email\":\"piper.grant@example.com\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"OdmPPJpKtB\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(37, 'default', 'created', 'App\\Models\\User', 'created', 35, NULL, NULL, '{\"attributes\":{\"id\":35,\"first_name\":\"Trevor\",\"last_name\":\"Hickle\",\"email\":\"avery.paucek@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"E2yWeQwWx7\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(38, 'default', 'created', 'App\\Models\\User', 'created', 36, NULL, NULL, '{\"attributes\":{\"id\":36,\"first_name\":\"Sigmund\",\"last_name\":\"Kuphal\",\"email\":\"nshields@example.com\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"kpw9cWe2d7\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(39, 'default', 'created', 'App\\Models\\User', 'created', 37, NULL, NULL, '{\"attributes\":{\"id\":37,\"first_name\":\"Tabitha\",\"last_name\":\"Sauer\",\"email\":\"alessandro98@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"271YZluCYD\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(40, 'default', 'created', 'App\\Models\\User', 'created', 38, NULL, NULL, '{\"attributes\":{\"id\":38,\"first_name\":\"Friedrich\",\"last_name\":\"Collins\",\"email\":\"lavonne.stokes@example.net\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"Om6w1qebKG\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(41, 'default', 'created', 'App\\Models\\User', 'created', 39, NULL, NULL, '{\"attributes\":{\"id\":39,\"first_name\":\"Jennifer\",\"last_name\":\"Mosciski\",\"email\":\"melissa05@example.net\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"jIRwp2kGAD\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(42, 'default', 'created', 'App\\Models\\User', 'created', 40, NULL, NULL, '{\"attributes\":{\"id\":40,\"first_name\":\"Mireya\",\"last_name\":\"Bergnaum\",\"email\":\"sbauch@example.com\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"J8lYkgP7sp\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(43, 'default', 'created', 'App\\Models\\User', 'created', 41, NULL, NULL, '{\"attributes\":{\"id\":41,\"first_name\":\"Carter\",\"last_name\":\"Fadel\",\"email\":\"chand@example.net\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"1Cqiw9qlwG\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(44, 'default', 'created', 'App\\Models\\User', 'created', 42, NULL, NULL, '{\"attributes\":{\"id\":42,\"first_name\":\"Annamae\",\"last_name\":\"Ritchie\",\"email\":\"theresia.mcclure@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"WHw3IWuggv\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(45, 'default', 'created', 'App\\Models\\User', 'created', 43, NULL, NULL, '{\"attributes\":{\"id\":43,\"first_name\":\"Hailie\",\"last_name\":\"Toy\",\"email\":\"jody.abernathy@example.net\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"4lpY1JuHmp\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(46, 'default', 'created', 'App\\Models\\User', 'created', 44, NULL, NULL, '{\"attributes\":{\"id\":44,\"first_name\":\"Shaina\",\"last_name\":\"Kutch\",\"email\":\"sstehr@example.com\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"5g2wJuqPsb\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(47, 'default', 'created', 'App\\Models\\User', 'created', 45, NULL, NULL, '{\"attributes\":{\"id\":45,\"first_name\":\"Zelma\",\"last_name\":\"Schaden\",\"email\":\"cassin.zaria@example.com\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"WEhLDdM9gO\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(48, 'default', 'created', 'App\\Models\\User', 'created', 46, NULL, NULL, '{\"attributes\":{\"id\":46,\"first_name\":\"Bonita\",\"last_name\":\"Smith\",\"email\":\"leonardo.frami@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"ImFyzy6Vay\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(49, 'default', 'created', 'App\\Models\\User', 'created', 47, NULL, NULL, '{\"attributes\":{\"id\":47,\"first_name\":\"Kelsi\",\"last_name\":\"Heathcote\",\"email\":\"viviane71@example.net\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"kZmDblCz8o\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(50, 'default', 'created', 'App\\Models\\User', 'created', 48, NULL, NULL, '{\"attributes\":{\"id\":48,\"first_name\":\"Donavon\",\"last_name\":\"Barrows\",\"email\":\"schmidt.naomi@example.net\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"m4oMbgPHVr\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(51, 'default', 'created', 'App\\Models\\User', 'created', 49, NULL, NULL, '{\"attributes\":{\"id\":49,\"first_name\":\"Tracey\",\"last_name\":\"Swift\",\"email\":\"blick.lew@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"4IZxc6c3cz\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(52, 'default', 'created', 'App\\Models\\User', 'created', 50, NULL, NULL, '{\"attributes\":{\"id\":50,\"first_name\":\"Fausto\",\"last_name\":\"Bogan\",\"email\":\"larkin.matteo@example.com\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"7p4bSnbsMa\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(53, 'default', 'created', 'App\\Models\\User', 'created', 51, NULL, NULL, '{\"attributes\":{\"id\":51,\"first_name\":\"Felix\",\"last_name\":\"Halvorson\",\"email\":\"carmel85@example.com\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"mjxBOqAl2w\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(54, 'default', 'created', 'App\\Models\\User', 'created', 52, NULL, NULL, '{\"attributes\":{\"id\":52,\"first_name\":\"Winston\",\"last_name\":\"Simonis\",\"email\":\"troy.haley@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"LFhYAygw8F\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(55, 'default', 'created', 'App\\Models\\User', 'created', 53, NULL, NULL, '{\"attributes\":{\"id\":53,\"first_name\":\"Vita\",\"last_name\":\"Cormier\",\"email\":\"goodwin.hertha@example.com\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"DcA1IIlkQe\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(56, 'default', 'created', 'App\\Models\\User', 'created', 54, NULL, NULL, '{\"attributes\":{\"id\":54,\"first_name\":\"Alvina\",\"last_name\":\"Howe\",\"email\":\"caterina.swift@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"zo3x0s6UQY\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(57, 'default', 'created', 'App\\Models\\User', 'created', 55, NULL, NULL, '{\"attributes\":{\"id\":55,\"first_name\":\"Otha\",\"last_name\":\"Hills\",\"email\":\"jeromy77@example.net\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"e7g6UCJ0cT\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(58, 'default', 'created', 'App\\Models\\User', 'created', 56, NULL, NULL, '{\"attributes\":{\"id\":56,\"first_name\":\"Ova\",\"last_name\":\"McGlynn\",\"email\":\"yoshiko71@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"ArpgzXMMWS\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(59, 'default', 'created', 'App\\Models\\User', 'created', 57, NULL, NULL, '{\"attributes\":{\"id\":57,\"first_name\":\"Verna\",\"last_name\":\"VonRueden\",\"email\":\"cdickinson@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"jluxT9vx82\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(60, 'default', 'created', 'App\\Models\\User', 'created', 58, NULL, NULL, '{\"attributes\":{\"id\":58,\"first_name\":\"Jeffery\",\"last_name\":\"Sporer\",\"email\":\"schiller.dorothea@example.com\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"x33Kx1U3Vp\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(61, 'default', 'created', 'App\\Models\\User', 'created', 59, NULL, NULL, '{\"attributes\":{\"id\":59,\"first_name\":\"Angus\",\"last_name\":\"Haag\",\"email\":\"alta.streich@example.com\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"gN5a876eNY\",\"created_at\":\"2023-02-15T15:50:34.000000Z\",\"updated_at\":\"2023-02-15T15:50:34.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(62, 'default', 'created', 'App\\Models\\User', 'created', 60, NULL, NULL, '{\"attributes\":{\"id\":60,\"first_name\":\"Katlynn\",\"last_name\":\"Rath\",\"email\":\"brent88@example.com\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"6SEwFox2m3\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(63, 'default', 'created', 'App\\Models\\User', 'created', 61, NULL, NULL, '{\"attributes\":{\"id\":61,\"first_name\":\"Geoffrey\",\"last_name\":\"Lind\",\"email\":\"ubednar@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"mzQnKnZdDv\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(64, 'default', 'created', 'App\\Models\\User', 'created', 62, NULL, NULL, '{\"attributes\":{\"id\":62,\"first_name\":\"Sienna\",\"last_name\":\"Wolff\",\"email\":\"jvonrueden@example.com\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"YkP3ntSA4x\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(65, 'default', 'created', 'App\\Models\\User', 'created', 63, NULL, NULL, '{\"attributes\":{\"id\":63,\"first_name\":\"Guy\",\"last_name\":\"Greenfelder\",\"email\":\"rogers.blanda@example.net\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"DuNYtgO5ea\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(66, 'default', 'created', 'App\\Models\\User', 'created', 64, NULL, NULL, '{\"attributes\":{\"id\":64,\"first_name\":\"Mina\",\"last_name\":\"Koss\",\"email\":\"sdibbert@example.com\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"dt0mIOEbP3\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(67, 'default', 'created', 'App\\Models\\User', 'created', 65, NULL, NULL, '{\"attributes\":{\"id\":65,\"first_name\":\"Neil\",\"last_name\":\"Schuppe\",\"email\":\"nichole34@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"su4bVuRc37\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(68, 'default', 'created', 'App\\Models\\User', 'created', 66, NULL, NULL, '{\"attributes\":{\"id\":66,\"first_name\":\"Aracely\",\"last_name\":\"Harvey\",\"email\":\"lkeebler@example.com\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"I3IFdvdBVH\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(69, 'default', 'created', 'App\\Models\\User', 'created', 67, NULL, NULL, '{\"attributes\":{\"id\":67,\"first_name\":\"Colton\",\"last_name\":\"Beahan\",\"email\":\"marcos.kemmer@example.com\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"iTgw1g0BTK\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(70, 'default', 'created', 'App\\Models\\User', 'created', 68, NULL, NULL, '{\"attributes\":{\"id\":68,\"first_name\":\"Freddy\",\"last_name\":\"Ortiz\",\"email\":\"von.ludwig@example.net\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"289YGiILcR\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(71, 'default', 'created', 'App\\Models\\User', 'created', 69, NULL, NULL, '{\"attributes\":{\"id\":69,\"first_name\":\"Rigoberto\",\"last_name\":\"Dickens\",\"email\":\"dolly.hayes@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"HkO8IBMhmX\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(72, 'default', 'created', 'App\\Models\\User', 'created', 70, NULL, NULL, '{\"attributes\":{\"id\":70,\"first_name\":\"Jesus\",\"last_name\":\"Barton\",\"email\":\"schoen.angus@example.com\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"edrSb6fV8A\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(73, 'default', 'created', 'App\\Models\\User', 'created', 71, NULL, NULL, '{\"attributes\":{\"id\":71,\"first_name\":\"Evalyn\",\"last_name\":\"Muller\",\"email\":\"lconroy@example.com\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"9t4Nzgbdok\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(74, 'default', 'created', 'App\\Models\\User', 'created', 72, NULL, NULL, '{\"attributes\":{\"id\":72,\"first_name\":\"Hailee\",\"last_name\":\"Gulgowski\",\"email\":\"hickle.johathan@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"3ItY1NuOR9\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(75, 'default', 'created', 'App\\Models\\User', 'created', 73, NULL, NULL, '{\"attributes\":{\"id\":73,\"first_name\":\"Harvey\",\"last_name\":\"Kuphal\",\"email\":\"wondricka@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"fCx5LM35F5\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(76, 'default', 'created', 'App\\Models\\User', 'created', 74, NULL, NULL, '{\"attributes\":{\"id\":74,\"first_name\":\"Rubie\",\"last_name\":\"Gaylord\",\"email\":\"strosin.albertha@example.net\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"0EGTsm7I38\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(77, 'default', 'created', 'App\\Models\\User', 'created', 75, NULL, NULL, '{\"attributes\":{\"id\":75,\"first_name\":\"Cedrick\",\"last_name\":\"Watsica\",\"email\":\"corrine.bashirian@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"dgyKZ1xdl4\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(78, 'default', 'created', 'App\\Models\\User', 'created', 76, NULL, NULL, '{\"attributes\":{\"id\":76,\"first_name\":\"Giles\",\"last_name\":\"Gorczany\",\"email\":\"kathlyn42@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"h0CKA4wjOo\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(79, 'default', 'created', 'App\\Models\\User', 'created', 77, NULL, NULL, '{\"attributes\":{\"id\":77,\"first_name\":\"Isaiah\",\"last_name\":\"Hayes\",\"email\":\"melvin.hintz@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"JeHxVZ1S1D\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(80, 'default', 'created', 'App\\Models\\User', 'created', 78, NULL, NULL, '{\"attributes\":{\"id\":78,\"first_name\":\"Javonte\",\"last_name\":\"Osinski\",\"email\":\"sadie.kertzmann@example.com\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"CQKItmNwKk\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(81, 'default', 'created', 'App\\Models\\User', 'created', 79, NULL, NULL, '{\"attributes\":{\"id\":79,\"first_name\":\"Alfonzo\",\"last_name\":\"Ebert\",\"email\":\"antwon15@example.net\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"yX3rQ2trT8\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(82, 'default', 'created', 'App\\Models\\User', 'created', 80, NULL, NULL, '{\"attributes\":{\"id\":80,\"first_name\":\"Malachi\",\"last_name\":\"Hansen\",\"email\":\"april33@example.net\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"8g1tCfZFKQ\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(83, 'default', 'created', 'App\\Models\\User', 'created', 81, NULL, NULL, '{\"attributes\":{\"id\":81,\"first_name\":\"Krystina\",\"last_name\":\"Mills\",\"email\":\"glabadie@example.net\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"o9XRuFRM1r\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(84, 'default', 'created', 'App\\Models\\User', 'created', 82, NULL, NULL, '{\"attributes\":{\"id\":82,\"first_name\":\"Elinore\",\"last_name\":\"Zboncak\",\"email\":\"greenfelder.sydnie@example.com\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"oAGcfJAHyQ\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(85, 'default', 'created', 'App\\Models\\User', 'created', 83, NULL, NULL, '{\"attributes\":{\"id\":83,\"first_name\":\"Carter\",\"last_name\":\"Schimmel\",\"email\":\"hoconner@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"HNPuRDIAdo\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(86, 'default', 'created', 'App\\Models\\User', 'created', 84, NULL, NULL, '{\"attributes\":{\"id\":84,\"first_name\":\"Derick\",\"last_name\":\"Effertz\",\"email\":\"edythe43@example.com\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"iEEYeUjcDM\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(87, 'default', 'created', 'App\\Models\\User', 'created', 85, NULL, NULL, '{\"attributes\":{\"id\":85,\"first_name\":\"Melyna\",\"last_name\":\"Raynor\",\"email\":\"yundt.ernest@example.com\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"0vFq4dVuQB\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(88, 'default', 'created', 'App\\Models\\User', 'created', 86, NULL, NULL, '{\"attributes\":{\"id\":86,\"first_name\":\"Cheyenne\",\"last_name\":\"Powlowski\",\"email\":\"rcarter@example.net\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"BOIJAMife7\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(89, 'default', 'created', 'App\\Models\\User', 'created', 87, NULL, NULL, '{\"attributes\":{\"id\":87,\"first_name\":\"Eda\",\"last_name\":\"Hagenes\",\"email\":\"nikolaus.brain@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"ndXnjwAsEV\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(90, 'default', 'created', 'App\\Models\\User', 'created', 88, NULL, NULL, '{\"attributes\":{\"id\":88,\"first_name\":\"Marcel\",\"last_name\":\"Ebert\",\"email\":\"alize.kautzer@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"WcqqiHUEMs\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(91, 'default', 'created', 'App\\Models\\User', 'created', 89, NULL, NULL, '{\"attributes\":{\"id\":89,\"first_name\":\"Cathryn\",\"last_name\":\"Reynolds\",\"email\":\"pacocha.steve@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"4424zTo1qu\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(92, 'default', 'created', 'App\\Models\\User', 'created', 90, NULL, NULL, '{\"attributes\":{\"id\":90,\"first_name\":\"Melba\",\"last_name\":\"Wolff\",\"email\":\"renner.tiara@example.com\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"VN4AQnSMZ9\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(93, 'default', 'created', 'App\\Models\\User', 'created', 91, NULL, NULL, '{\"attributes\":{\"id\":91,\"first_name\":\"Anya\",\"last_name\":\"Bartoletti\",\"email\":\"jkemmer@example.net\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"RWAcwfFUIH\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(94, 'default', 'created', 'App\\Models\\User', 'created', 92, NULL, NULL, '{\"attributes\":{\"id\":92,\"first_name\":\"Andrew\",\"last_name\":\"Blanda\",\"email\":\"maci.carroll@example.com\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"9LmV7mb4CE\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(95, 'default', 'created', 'App\\Models\\User', 'created', 93, NULL, NULL, '{\"attributes\":{\"id\":93,\"first_name\":\"Nola\",\"last_name\":\"Friesen\",\"email\":\"alize.maggio@example.net\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"KB1ReYmFTk\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(96, 'default', 'created', 'App\\Models\\User', 'created', 94, NULL, NULL, '{\"attributes\":{\"id\":94,\"first_name\":\"Kyra\",\"last_name\":\"Macejkovic\",\"email\":\"maximillian.parisian@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"OtnDW4zIGh\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(97, 'default', 'created', 'App\\Models\\User', 'created', 95, NULL, NULL, '{\"attributes\":{\"id\":95,\"first_name\":\"Layla\",\"last_name\":\"Hand\",\"email\":\"sigrid96@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"mFYgrlA5U2\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(98, 'default', 'created', 'App\\Models\\User', 'created', 96, NULL, NULL, '{\"attributes\":{\"id\":96,\"first_name\":\"Pink\",\"last_name\":\"Mueller\",\"email\":\"shakira91@example.net\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"xGYGbPslVd\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(99, 'default', 'created', 'App\\Models\\User', 'created', 97, NULL, NULL, '{\"attributes\":{\"id\":97,\"first_name\":\"Angelica\",\"last_name\":\"Abbott\",\"email\":\"mary.kreiger@example.com\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"yd5Hy0DUvN\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(100, 'default', 'created', 'App\\Models\\User', 'created', 98, NULL, NULL, '{\"attributes\":{\"id\":98,\"first_name\":\"Darrel\",\"last_name\":\"Douglas\",\"email\":\"hyatt.magdalen@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"PPaVKsMYtB\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(101, 'default', 'created', 'App\\Models\\User', 'created', 99, NULL, NULL, '{\"attributes\":{\"id\":99,\"first_name\":\"Demetris\",\"last_name\":\"Nolan\",\"email\":\"nbergstrom@example.org\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"Jx2U6rNNvy\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(102, 'default', 'created', 'App\\Models\\User', 'created', 100, NULL, NULL, '{\"attributes\":{\"id\":100,\"first_name\":\"Bertram\",\"last_name\":\"Ruecker\",\"email\":\"parisian.jevon@example.net\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"n9CgOMvSr2\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(103, 'default', 'created', 'App\\Models\\User', 'created', 101, NULL, NULL, '{\"attributes\":{\"id\":101,\"first_name\":\"Shemar\",\"last_name\":\"Baumbach\",\"email\":\"lemke.simone@example.net\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"7KFwrnxj5F\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(104, 'default', 'created', 'App\\Models\\User', 'created', 102, NULL, NULL, '{\"attributes\":{\"id\":102,\"first_name\":\"Antoinette\",\"last_name\":\"Howe\",\"email\":\"wehner.horacio@example.net\",\"email_verified_at\":\"2023-02-15T15:50:34.000000Z\",\"password\":\"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC\\/.og\\/at2.uheWG\\/igi\",\"api_token\":null,\"remember_token\":\"ND87TTY40v\",\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(105, 'default', 'created', 'App\\Models\\UserInfo', 'created', 3, NULL, NULL, '{\"attributes\":{\"id\":3,\"user_id\":3,\"avatar\":null,\"company\":\"Leuschke, Gibson and Schuster\",\"phone\":\"+1-717-528-3852\",\"website\":\"http:\\/\\/lubowitz.com\\/\",\"country\":\"UY\",\"language\":\"id\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(106, 'default', 'created', 'App\\Models\\UserInfo', 'created', 4, NULL, NULL, '{\"attributes\":{\"id\":4,\"user_id\":4,\"avatar\":null,\"company\":\"Bins Inc\",\"phone\":\"1-385-567-6118\",\"website\":\"http:\\/\\/mueller.org\\/quia-sint-quaerat-id-aliquid-eaque-nihil-rerum\",\"country\":\"PW\",\"language\":\"ff\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(107, 'default', 'created', 'App\\Models\\UserInfo', 'created', 5, NULL, NULL, '{\"attributes\":{\"id\":5,\"user_id\":5,\"avatar\":null,\"company\":\"Marks PLC\",\"phone\":\"(906) 499-3034\",\"website\":\"http:\\/\\/crona.com\\/\",\"country\":\"RW\",\"language\":\"nd\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(108, 'default', 'created', 'App\\Models\\UserInfo', 'created', 6, NULL, NULL, '{\"attributes\":{\"id\":6,\"user_id\":6,\"avatar\":null,\"company\":\"Carroll, Upton and Goodwin\",\"phone\":\"(681) 459-0826\",\"website\":\"https:\\/\\/www.frami.info\\/autem-aspernatur-in-est-asperiores-mollitia-ducimus\",\"country\":\"ZW\",\"language\":\"sa\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(109, 'default', 'created', 'App\\Models\\UserInfo', 'created', 7, NULL, NULL, '{\"attributes\":{\"id\":7,\"user_id\":7,\"avatar\":null,\"company\":\"Grimes-Greenfelder\",\"phone\":\"+1-562-305-3139\",\"website\":\"https:\\/\\/www.steuber.biz\\/repudiandae-voluptate-eos-aspernatur\",\"country\":\"NO\",\"language\":\"jv\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(110, 'default', 'created', 'App\\Models\\UserInfo', 'created', 8, NULL, NULL, '{\"attributes\":{\"id\":8,\"user_id\":8,\"avatar\":null,\"company\":\"Gutkowski, Will and Stoltenberg\",\"phone\":\"(978) 520-9204\",\"website\":\"http:\\/\\/schoen.com\\/distinctio-beatae-sit-mollitia-architecto-ipsam\",\"country\":\"TJ\",\"language\":\"ru\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(111, 'default', 'created', 'App\\Models\\UserInfo', 'created', 9, NULL, NULL, '{\"attributes\":{\"id\":9,\"user_id\":9,\"avatar\":null,\"company\":\"Witting, Yundt and Langosh\",\"phone\":\"1-240-458-3709\",\"website\":\"http:\\/\\/erdman.net\\/voluptas-asperiores-corrupti-soluta-aut-eos\",\"country\":\"NA\",\"language\":\"hi\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(112, 'default', 'created', 'App\\Models\\UserInfo', 'created', 10, NULL, NULL, '{\"attributes\":{\"id\":10,\"user_id\":10,\"avatar\":null,\"company\":\"Carter Inc\",\"phone\":\"+1-386-649-1320\",\"website\":\"http:\\/\\/lowe.com\\/ut-libero-cum-sunt-itaque-sapiente-in.html\",\"country\":\"IT\",\"language\":\"om\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(113, 'default', 'created', 'App\\Models\\UserInfo', 'created', 11, NULL, NULL, '{\"attributes\":{\"id\":11,\"user_id\":11,\"avatar\":null,\"company\":\"Schuster, Hirthe and Reilly\",\"phone\":\"+1.509.778.1555\",\"website\":\"http:\\/\\/www.beatty.com\\/reiciendis-fugit-dolores-possimus.html\",\"country\":\"IO\",\"language\":\"za\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(114, 'default', 'created', 'App\\Models\\UserInfo', 'created', 12, NULL, NULL, '{\"attributes\":{\"id\":12,\"user_id\":12,\"avatar\":null,\"company\":\"Boyer, Runolfsdottir and Wilderman\",\"phone\":\"1-520-460-9839\",\"website\":\"http:\\/\\/www.herzog.com\\/rerum-ab-sed-unde-necessitatibus.html\",\"country\":\"LA\",\"language\":\"ps\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(115, 'default', 'created', 'App\\Models\\UserInfo', 'created', 13, NULL, NULL, '{\"attributes\":{\"id\":13,\"user_id\":13,\"avatar\":null,\"company\":\"Hudson Ltd\",\"phone\":\"856.791.0985\",\"website\":\"http:\\/\\/www.wuckert.com\\/provident-id-cupiditate-corrupti-molestiae-odit\",\"country\":\"IL\",\"language\":\"gd\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(116, 'default', 'created', 'App\\Models\\UserInfo', 'created', 14, NULL, NULL, '{\"attributes\":{\"id\":14,\"user_id\":14,\"avatar\":null,\"company\":\"Torp-Davis\",\"phone\":\"+1 (754) 443-1432\",\"website\":\"http:\\/\\/www.fay.com\\/\",\"country\":\"UG\",\"language\":\"ku\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(117, 'default', 'created', 'App\\Models\\UserInfo', 'created', 15, NULL, NULL, '{\"attributes\":{\"id\":15,\"user_id\":15,\"avatar\":null,\"company\":\"Steuber and Sons\",\"phone\":\"+1-315-557-5040\",\"website\":\"http:\\/\\/www.considine.org\\/\",\"country\":\"KH\",\"language\":\"sw\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(118, 'default', 'created', 'App\\Models\\UserInfo', 'created', 16, NULL, NULL, '{\"attributes\":{\"id\":16,\"user_id\":16,\"avatar\":null,\"company\":\"Abbott Inc\",\"phone\":\"(770) 993-0159\",\"website\":\"http:\\/\\/www.morissette.net\\/ea-distinctio-dolorem-quidem-aut-provident-hic.html\",\"country\":\"TF\",\"language\":\"ts\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(119, 'default', 'created', 'App\\Models\\UserInfo', 'created', 17, NULL, NULL, '{\"attributes\":{\"id\":17,\"user_id\":17,\"avatar\":null,\"company\":\"Gibson Ltd\",\"phone\":\"(941) 319-4273\",\"website\":\"http:\\/\\/mayer.com\\/ut-labore-mollitia-ratione-omnis-ut-laborum-temporibus.html\",\"country\":\"IE\",\"language\":\"ii\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(120, 'default', 'created', 'App\\Models\\UserInfo', 'created', 18, NULL, NULL, '{\"attributes\":{\"id\":18,\"user_id\":18,\"avatar\":null,\"company\":\"Hane, Howe and Murphy\",\"phone\":\"+1.726.408.0313\",\"website\":\"http:\\/\\/www.trantow.info\\/\",\"country\":\"AQ\",\"language\":\"gl\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(121, 'default', 'created', 'App\\Models\\UserInfo', 'created', 19, NULL, NULL, '{\"attributes\":{\"id\":19,\"user_id\":19,\"avatar\":null,\"company\":\"Beahan Ltd\",\"phone\":\"220-970-6867\",\"website\":\"http:\\/\\/hahn.com\\/necessitatibus-voluptatibus-ducimus-quibusdam-et-est-nisi.html\",\"country\":\"CX\",\"language\":\"lb\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(122, 'default', 'created', 'App\\Models\\UserInfo', 'created', 20, NULL, NULL, '{\"attributes\":{\"id\":20,\"user_id\":20,\"avatar\":null,\"company\":\"Nader, Mann and Schaden\",\"phone\":\"+16103691671\",\"website\":\"http:\\/\\/www.schaefer.org\\/soluta-repellat-quia-quaerat-similique.html\",\"country\":\"BG\",\"language\":\"ia\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(123, 'default', 'created', 'App\\Models\\UserInfo', 'created', 21, NULL, NULL, '{\"attributes\":{\"id\":21,\"user_id\":21,\"avatar\":null,\"company\":\"Beier-Russel\",\"phone\":\"+1-628-200-6771\",\"website\":\"http:\\/\\/www.gutkowski.biz\\/earum-totam-in-laboriosam-debitis-necessitatibus-sequi\",\"country\":\"CO\",\"language\":\"is\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(124, 'default', 'created', 'App\\Models\\UserInfo', 'created', 22, NULL, NULL, '{\"attributes\":{\"id\":22,\"user_id\":22,\"avatar\":null,\"company\":\"Kirlin LLC\",\"phone\":\"+1 (231) 643-9486\",\"website\":\"http:\\/\\/www.koelpin.com\\/perferendis-perspiciatis-ipsa-expedita-saepe-rerum-ab.html\",\"country\":\"IT\",\"language\":\"lu\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(125, 'default', 'created', 'App\\Models\\UserInfo', 'created', 23, NULL, NULL, '{\"attributes\":{\"id\":23,\"user_id\":23,\"avatar\":null,\"company\":\"Klocko, Haag and Ritchie\",\"phone\":\"(959) 915-9652\",\"website\":\"https:\\/\\/www.schmeler.com\\/sint-delectus-ipsa-autem-et-earum-velit-nihil-necessitatibus\",\"country\":\"TF\",\"language\":\"rn\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(126, 'default', 'created', 'App\\Models\\UserInfo', 'created', 24, NULL, NULL, '{\"attributes\":{\"id\":24,\"user_id\":24,\"avatar\":null,\"company\":\"Littel Group\",\"phone\":\"541-790-8945\",\"website\":\"http:\\/\\/www.klocko.com\\/accusantium-omnis-libero-molestiae-distinctio\",\"country\":\"LV\",\"language\":\"kn\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(127, 'default', 'created', 'App\\Models\\UserInfo', 'created', 25, NULL, NULL, '{\"attributes\":{\"id\":25,\"user_id\":25,\"avatar\":null,\"company\":\"Nader-Johns\",\"phone\":\"267-613-1951\",\"website\":\"http:\\/\\/www.price.info\\/\",\"country\":\"CV\",\"language\":\"li\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(128, 'default', 'created', 'App\\Models\\UserInfo', 'created', 26, NULL, NULL, '{\"attributes\":{\"id\":26,\"user_id\":26,\"avatar\":null,\"company\":\"Stehr Inc\",\"phone\":\"+1.530.571.1416\",\"website\":\"http:\\/\\/www.kihn.com\\/\",\"country\":\"PE\",\"language\":\"tn\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(129, 'default', 'created', 'App\\Models\\UserInfo', 'created', 27, NULL, NULL, '{\"attributes\":{\"id\":27,\"user_id\":27,\"avatar\":null,\"company\":\"Satterfield PLC\",\"phone\":\"+1-513-896-0002\",\"website\":\"https:\\/\\/price.com\\/est-nihil-tempora-dignissimos-et-mollitia-non.html\",\"country\":\"PF\",\"language\":\"ne\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(130, 'default', 'created', 'App\\Models\\UserInfo', 'created', 28, NULL, NULL, '{\"attributes\":{\"id\":28,\"user_id\":28,\"avatar\":null,\"company\":\"Ritchie-Padberg\",\"phone\":\"812-844-8913\",\"website\":\"http:\\/\\/www.conn.com\\/error-impedit-ab-nobis-ducimus-repudiandae\",\"country\":\"PH\",\"language\":\"da\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(131, 'default', 'created', 'App\\Models\\UserInfo', 'created', 29, NULL, NULL, '{\"attributes\":{\"id\":29,\"user_id\":29,\"avatar\":null,\"company\":\"Gerlach-Upton\",\"phone\":\"859-841-1813\",\"website\":\"http:\\/\\/harris.com\\/qui-laborum-rerum-et-tempora-nostrum-rem-id\",\"country\":\"GW\",\"language\":\"sg\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(132, 'default', 'created', 'App\\Models\\UserInfo', 'created', 30, NULL, NULL, '{\"attributes\":{\"id\":30,\"user_id\":30,\"avatar\":null,\"company\":\"Aufderhar, D\'Amore and Mueller\",\"phone\":\"(830) 903-1551\",\"website\":\"http:\\/\\/www.brakus.biz\\/culpa-ullam-repudiandae-ut-in.html\",\"country\":\"RO\",\"language\":\"si\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(133, 'default', 'created', 'App\\Models\\UserInfo', 'created', 31, NULL, NULL, '{\"attributes\":{\"id\":31,\"user_id\":31,\"avatar\":null,\"company\":\"Schowalter-Christiansen\",\"phone\":\"+1 (352) 219-6715\",\"website\":\"http:\\/\\/daniel.com\\/aliquid-et-illo-et-aut-autem.html\",\"country\":\"CC\",\"language\":\"lb\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(134, 'default', 'created', 'App\\Models\\UserInfo', 'created', 32, NULL, NULL, '{\"attributes\":{\"id\":32,\"user_id\":32,\"avatar\":null,\"company\":\"Nikolaus, Leannon and Keeling\",\"phone\":\"(534) 872-6151\",\"website\":\"http:\\/\\/www.mills.biz\\/\",\"country\":\"PY\",\"language\":\"io\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(135, 'default', 'created', 'App\\Models\\UserInfo', 'created', 33, NULL, NULL, '{\"attributes\":{\"id\":33,\"user_id\":33,\"avatar\":null,\"company\":\"Quigley, Feest and Beahan\",\"phone\":\"662.689.2234\",\"website\":\"http:\\/\\/www.breitenberg.info\\/\",\"country\":\"JE\",\"language\":\"cv\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(136, 'default', 'created', 'App\\Models\\UserInfo', 'created', 34, NULL, NULL, '{\"attributes\":{\"id\":34,\"user_id\":34,\"avatar\":null,\"company\":\"Mills-Jones\",\"phone\":\"+1-463-282-5370\",\"website\":\"http:\\/\\/www.murray.org\\/\",\"country\":\"ZW\",\"language\":\"mg\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(137, 'default', 'created', 'App\\Models\\UserInfo', 'created', 35, NULL, NULL, '{\"attributes\":{\"id\":35,\"user_id\":35,\"avatar\":null,\"company\":\"Kshlerin, Pfeffer and Bailey\",\"phone\":\"(854) 939-8073\",\"website\":\"https:\\/\\/reichel.com\\/veritatis-consectetur-eius-sed-ipsum-animi-cupiditate-voluptas.html\",\"country\":\"PY\",\"language\":\"cr\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(138, 'default', 'created', 'App\\Models\\UserInfo', 'created', 36, NULL, NULL, '{\"attributes\":{\"id\":36,\"user_id\":36,\"avatar\":null,\"company\":\"Wiza Group\",\"phone\":\"325-220-3655\",\"website\":\"http:\\/\\/www.boehm.info\\/ea-fuga-cum-perferendis\",\"country\":\"BR\",\"language\":\"gd\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(139, 'default', 'created', 'App\\Models\\UserInfo', 'created', 37, NULL, NULL, '{\"attributes\":{\"id\":37,\"user_id\":37,\"avatar\":null,\"company\":\"Von Group\",\"phone\":\"(561) 332-2431\",\"website\":\"http:\\/\\/www.borer.net\\/vel-dolor-voluptatem-totam-eligendi-dolores-ipsa\",\"country\":\"KI\",\"language\":\"is\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(140, 'default', 'created', 'App\\Models\\UserInfo', 'created', 38, NULL, NULL, '{\"attributes\":{\"id\":38,\"user_id\":38,\"avatar\":null,\"company\":\"Abbott, Batz and Green\",\"phone\":\"+13073671622\",\"website\":\"http:\\/\\/gutmann.biz\\/suscipit-est-quod-quia.html\",\"country\":\"BH\",\"language\":\"id\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(141, 'default', 'created', 'App\\Models\\UserInfo', 'created', 39, NULL, NULL, '{\"attributes\":{\"id\":39,\"user_id\":39,\"avatar\":null,\"company\":\"Rosenbaum-Aufderhar\",\"phone\":\"1-240-944-0913\",\"website\":\"http:\\/\\/rohan.com\\/\",\"country\":\"SB\",\"language\":\"ts\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(142, 'default', 'created', 'App\\Models\\UserInfo', 'created', 40, NULL, NULL, '{\"attributes\":{\"id\":40,\"user_id\":40,\"avatar\":null,\"company\":\"Kessler, Durgan and Keebler\",\"phone\":\"(831) 998-0004\",\"website\":\"https:\\/\\/hessel.biz\\/autem-quidem-sunt-et-dolor.html\",\"country\":\"BA\",\"language\":\"sk\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(143, 'default', 'created', 'App\\Models\\UserInfo', 'created', 41, NULL, NULL, '{\"attributes\":{\"id\":41,\"user_id\":41,\"avatar\":null,\"company\":\"Dietrich-Collins\",\"phone\":\"1-434-655-9062\",\"website\":\"http:\\/\\/johnson.net\\/explicabo-occaecati-dolores-laudantium-corporis-harum.html\",\"country\":\"MV\",\"language\":\"zh\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(144, 'default', 'created', 'App\\Models\\UserInfo', 'created', 42, NULL, NULL, '{\"attributes\":{\"id\":42,\"user_id\":42,\"avatar\":null,\"company\":\"Cummerata-Hegmann\",\"phone\":\"+1-318-352-1702\",\"website\":\"https:\\/\\/schumm.com\\/voluptatem-laborum-qui-doloremque-aperiam-fugit-sit-et.html\",\"country\":\"HK\",\"language\":\"lu\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(145, 'default', 'created', 'App\\Models\\UserInfo', 'created', 43, NULL, NULL, '{\"attributes\":{\"id\":43,\"user_id\":43,\"avatar\":null,\"company\":\"Aufderhar-Braun\",\"phone\":\"1-878-358-1251\",\"website\":\"https:\\/\\/www.sipes.org\\/quia-vero-suscipit-delectus-fugiat\",\"country\":\"BE\",\"language\":\"hi\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(146, 'default', 'created', 'App\\Models\\UserInfo', 'created', 44, NULL, NULL, '{\"attributes\":{\"id\":44,\"user_id\":44,\"avatar\":null,\"company\":\"Goodwin Group\",\"phone\":\"+14584649359\",\"website\":\"http:\\/\\/www.ledner.com\\/non-deleniti-animi-nemo-reprehenderit.html\",\"country\":\"SH\",\"language\":\"ku\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(147, 'default', 'created', 'App\\Models\\UserInfo', 'created', 45, NULL, NULL, '{\"attributes\":{\"id\":45,\"user_id\":45,\"avatar\":null,\"company\":\"Feil Ltd\",\"phone\":\"563-307-3410\",\"website\":\"http:\\/\\/brakus.com\\/dolores-laborum-dolor-sunt-consequatur-tenetur-ut-autem\",\"country\":\"BF\",\"language\":\"es\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(148, 'default', 'created', 'App\\Models\\UserInfo', 'created', 46, NULL, NULL, '{\"attributes\":{\"id\":46,\"user_id\":46,\"avatar\":null,\"company\":\"Bode PLC\",\"phone\":\"(541) 450-2974\",\"website\":\"http:\\/\\/www.padberg.com\\/\",\"country\":\"TG\",\"language\":\"fy\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(149, 'default', 'created', 'App\\Models\\UserInfo', 'created', 47, NULL, NULL, '{\"attributes\":{\"id\":47,\"user_id\":47,\"avatar\":null,\"company\":\"Reichel Inc\",\"phone\":\"757-266-9073\",\"website\":\"http:\\/\\/www.johnston.org\\/\",\"country\":\"NR\",\"language\":\"ro\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(150, 'default', 'created', 'App\\Models\\UserInfo', 'created', 48, NULL, NULL, '{\"attributes\":{\"id\":48,\"user_id\":48,\"avatar\":null,\"company\":\"Toy, Gaylord and Hahn\",\"phone\":\"207-402-1311\",\"website\":\"http:\\/\\/king.com\\/at-perferendis-consequatur-provident-et-aut\",\"country\":\"YT\",\"language\":\"ug\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(151, 'default', 'created', 'App\\Models\\UserInfo', 'created', 49, NULL, NULL, '{\"attributes\":{\"id\":49,\"user_id\":49,\"avatar\":null,\"company\":\"Heathcote LLC\",\"phone\":\"1-737-719-5681\",\"website\":\"http:\\/\\/lehner.com\\/dolores-omnis-est-consequatur-dolor-debitis-voluptatibus\",\"country\":\"EH\",\"language\":\"ru\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(152, 'default', 'created', 'App\\Models\\UserInfo', 'created', 50, NULL, NULL, '{\"attributes\":{\"id\":50,\"user_id\":50,\"avatar\":null,\"company\":\"Marquardt PLC\",\"phone\":\"(520) 325-4680\",\"website\":\"http:\\/\\/www.lubowitz.net\\/omnis-aut-debitis-est-ut-nihil\",\"country\":\"FM\",\"language\":\"sr\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(153, 'default', 'created', 'App\\Models\\UserInfo', 'created', 51, NULL, NULL, '{\"attributes\":{\"id\":51,\"user_id\":51,\"avatar\":null,\"company\":\"Effertz-Wisoky\",\"phone\":\"857-637-7337\",\"website\":\"http:\\/\\/www.schuppe.biz\\/rerum-doloribus-aliquam-deleniti-et\",\"country\":\"BZ\",\"language\":\"be\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(154, 'default', 'created', 'App\\Models\\UserInfo', 'created', 52, NULL, NULL, '{\"attributes\":{\"id\":52,\"user_id\":52,\"avatar\":null,\"company\":\"Hoeger Ltd\",\"phone\":\"+1-701-825-0350\",\"website\":\"http:\\/\\/thiel.com\\/blanditiis-qui-ducimus-autem-et-dicta-eum.html\",\"country\":\"ES\",\"language\":\"na\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(155, 'default', 'created', 'App\\Models\\UserInfo', 'created', 53, NULL, NULL, '{\"attributes\":{\"id\":53,\"user_id\":53,\"avatar\":null,\"company\":\"Dooley Group\",\"phone\":\"559-284-7510\",\"website\":\"https:\\/\\/www.kautzer.com\\/impedit-voluptate-expedita-doloremque\",\"country\":\"VN\",\"language\":\"za\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(156, 'default', 'created', 'App\\Models\\UserInfo', 'created', 54, NULL, NULL, '{\"attributes\":{\"id\":54,\"user_id\":54,\"avatar\":null,\"company\":\"Pollich-Marks\",\"phone\":\"+1.934.658.3801\",\"website\":\"http:\\/\\/bosco.com\\/\",\"country\":\"PF\",\"language\":\"nn\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(157, 'default', 'created', 'App\\Models\\UserInfo', 'created', 55, NULL, NULL, '{\"attributes\":{\"id\":55,\"user_id\":55,\"avatar\":null,\"company\":\"Emmerich PLC\",\"phone\":\"262-468-6981\",\"website\":\"https:\\/\\/www.stark.com\\/quia-assumenda-provident-pariatur-porro-ducimus-ea-vel-id\",\"country\":\"AT\",\"language\":\"cu\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(158, 'default', 'created', 'App\\Models\\UserInfo', 'created', 56, NULL, NULL, '{\"attributes\":{\"id\":56,\"user_id\":56,\"avatar\":null,\"company\":\"Farrell-Dicki\",\"phone\":\"1-564-731-2690\",\"website\":\"https:\\/\\/www.beahan.info\\/et-quaerat-perferendis-facere-illo-eaque-ut\",\"country\":\"CW\",\"language\":\"cs\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(159, 'default', 'created', 'App\\Models\\UserInfo', 'created', 57, NULL, NULL, '{\"attributes\":{\"id\":57,\"user_id\":57,\"avatar\":null,\"company\":\"Cummerata Group\",\"phone\":\"+1.979.516.3658\",\"website\":\"http:\\/\\/klocko.com\\/eaque-esse-eligendi-atque-laborum-ut-ut-animi.html\",\"country\":\"IR\",\"language\":\"ar\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(160, 'default', 'created', 'App\\Models\\UserInfo', 'created', 58, NULL, NULL, '{\"attributes\":{\"id\":58,\"user_id\":58,\"avatar\":null,\"company\":\"Daniel-Grant\",\"phone\":\"1-424-989-4112\",\"website\":\"http:\\/\\/mccullough.org\\/\",\"country\":\"HT\",\"language\":\"bo\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(161, 'default', 'created', 'App\\Models\\UserInfo', 'created', 59, NULL, NULL, '{\"attributes\":{\"id\":59,\"user_id\":59,\"avatar\":null,\"company\":\"Senger-Weissnat\",\"phone\":\"435.648.5202\",\"website\":\"http:\\/\\/lehner.org\\/sed-tenetur-iste-mollitia-laudantium-dolorem-laboriosam-sunt-qui\",\"country\":\"OM\",\"language\":\"xh\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(162, 'default', 'created', 'App\\Models\\UserInfo', 'created', 60, NULL, NULL, '{\"attributes\":{\"id\":60,\"user_id\":60,\"avatar\":null,\"company\":\"Olson, Schumm and Goldner\",\"phone\":\"1-737-206-7705\",\"website\":\"http:\\/\\/brown.com\\/velit-temporibus-voluptatem-et-distinctio-est-deserunt-qui\",\"country\":\"BG\",\"language\":\"kj\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(163, 'default', 'created', 'App\\Models\\UserInfo', 'created', 61, NULL, NULL, '{\"attributes\":{\"id\":61,\"user_id\":61,\"avatar\":null,\"company\":\"Murphy, Bradtke and Hessel\",\"phone\":\"1-706-950-1191\",\"website\":\"http:\\/\\/www.lynch.net\\/aspernatur-non-cumque-quia-laborum\",\"country\":\"SD\",\"language\":\"se\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(164, 'default', 'created', 'App\\Models\\UserInfo', 'created', 62, NULL, NULL, '{\"attributes\":{\"id\":62,\"user_id\":62,\"avatar\":null,\"company\":\"Waters-Kub\",\"phone\":\"+1 (754) 756-5410\",\"website\":\"https:\\/\\/www.connelly.com\\/facere-rerum-est-rerum-sed-laboriosam-animi\",\"country\":\"GU\",\"language\":\"kg\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(165, 'default', 'created', 'App\\Models\\UserInfo', 'created', 63, NULL, NULL, '{\"attributes\":{\"id\":63,\"user_id\":63,\"avatar\":null,\"company\":\"Konopelski, Klocko and Rolfson\",\"phone\":\"(774) 671-0308\",\"website\":\"http:\\/\\/www.leannon.com\\/corrupti-impedit-aut-sed-dolores.html\",\"country\":\"EH\",\"language\":\"ht\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(166, 'default', 'created', 'App\\Models\\UserInfo', 'created', 64, NULL, NULL, '{\"attributes\":{\"id\":64,\"user_id\":64,\"avatar\":null,\"company\":\"Sporer and Sons\",\"phone\":\"+1-928-209-2198\",\"website\":\"http:\\/\\/www.powlowski.com\\/esse-accusamus-molestiae-rerum-dolorem-quidem-quia\",\"country\":\"UA\",\"language\":\"hi\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(167, 'default', 'created', 'App\\Models\\UserInfo', 'created', 65, NULL, NULL, '{\"attributes\":{\"id\":65,\"user_id\":65,\"avatar\":null,\"company\":\"Kutch Inc\",\"phone\":\"786-630-6678\",\"website\":\"http:\\/\\/www.windler.com\\/\",\"country\":\"BO\",\"language\":\"oc\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(168, 'default', 'created', 'App\\Models\\UserInfo', 'created', 66, NULL, NULL, '{\"attributes\":{\"id\":66,\"user_id\":66,\"avatar\":null,\"company\":\"Daugherty Group\",\"phone\":\"+1-469-265-5225\",\"website\":\"http:\\/\\/www.effertz.com\\/doloribus-in-voluptatem-placeat-qui-impedit-et\",\"country\":\"NU\",\"language\":\"dv\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(169, 'default', 'created', 'App\\Models\\UserInfo', 'created', 67, NULL, NULL, '{\"attributes\":{\"id\":67,\"user_id\":67,\"avatar\":null,\"company\":\"Sanford-Cole\",\"phone\":\"+1-984-560-7957\",\"website\":\"http:\\/\\/www.mccullough.com\\/\",\"country\":\"AZ\",\"language\":\"rw\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(170, 'default', 'created', 'App\\Models\\UserInfo', 'created', 68, NULL, NULL, '{\"attributes\":{\"id\":68,\"user_id\":68,\"avatar\":null,\"company\":\"Spencer-Stokes\",\"phone\":\"757-759-3711\",\"website\":\"http:\\/\\/www.altenwerth.com\\/\",\"country\":\"PG\",\"language\":\"hz\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(171, 'default', 'created', 'App\\Models\\UserInfo', 'created', 69, NULL, NULL, '{\"attributes\":{\"id\":69,\"user_id\":69,\"avatar\":null,\"company\":\"Willms, Lowe and Sanford\",\"phone\":\"+1-641-652-9227\",\"website\":\"http:\\/\\/towne.com\\/\",\"country\":\"US\",\"language\":\"el\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(172, 'default', 'created', 'App\\Models\\UserInfo', 'created', 70, NULL, NULL, '{\"attributes\":{\"id\":70,\"user_id\":70,\"avatar\":null,\"company\":\"Windler and Sons\",\"phone\":\"208-410-9336\",\"website\":\"http:\\/\\/www.aufderhar.com\\/quis-sequi-quia-officia-accusantium-non-qui-occaecati-harum.html\",\"country\":\"NO\",\"language\":\"ga\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(173, 'default', 'created', 'App\\Models\\UserInfo', 'created', 71, NULL, NULL, '{\"attributes\":{\"id\":71,\"user_id\":71,\"avatar\":null,\"company\":\"Erdman Ltd\",\"phone\":\"+1-531-814-5453\",\"website\":\"https:\\/\\/keeling.com\\/iste-accusantium-vel-quasi-veritatis-facilis.html\",\"country\":\"RW\",\"language\":\"eo\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(174, 'default', 'created', 'App\\Models\\UserInfo', 'created', 72, NULL, NULL, '{\"attributes\":{\"id\":72,\"user_id\":72,\"avatar\":null,\"company\":\"Rice and Sons\",\"phone\":\"(720) 385-1072\",\"website\":\"https:\\/\\/wyman.net\\/qui-culpa-id-quasi.html\",\"country\":\"LA\",\"language\":\"vo\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(175, 'default', 'created', 'App\\Models\\UserInfo', 'created', 73, NULL, NULL, '{\"attributes\":{\"id\":73,\"user_id\":73,\"avatar\":null,\"company\":\"Herman-Hartmann\",\"phone\":\"931-591-9694\",\"website\":\"http:\\/\\/www.kunde.com\\/\",\"country\":\"MA\",\"language\":\"ky\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(176, 'default', 'created', 'App\\Models\\UserInfo', 'created', 74, NULL, NULL, '{\"attributes\":{\"id\":74,\"user_id\":74,\"avatar\":null,\"company\":\"Cassin, Kovacek and Buckridge\",\"phone\":\"947-729-1782\",\"website\":\"http:\\/\\/kessler.org\\/\",\"country\":\"BE\",\"language\":\"hy\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(177, 'default', 'created', 'App\\Models\\UserInfo', 'created', 75, NULL, NULL, '{\"attributes\":{\"id\":75,\"user_id\":75,\"avatar\":null,\"company\":\"Hilpert Group\",\"phone\":\"1-283-732-3668\",\"website\":\"http:\\/\\/www.hegmann.info\\/\",\"country\":\"KP\",\"language\":\"en\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(178, 'default', 'created', 'App\\Models\\UserInfo', 'created', 76, NULL, NULL, '{\"attributes\":{\"id\":76,\"user_id\":76,\"avatar\":null,\"company\":\"Keebler-Ernser\",\"phone\":\"201-574-1590\",\"website\":\"http:\\/\\/www.bergstrom.net\\/\",\"country\":\"MS\",\"language\":\"ht\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(179, 'default', 'created', 'App\\Models\\UserInfo', 'created', 77, NULL, NULL, '{\"attributes\":{\"id\":77,\"user_id\":77,\"avatar\":null,\"company\":\"Hettinger-Nicolas\",\"phone\":\"+1 (414) 470-1310\",\"website\":\"http:\\/\\/www.renner.com\\/et-magni-delectus-provident\",\"country\":\"GG\",\"language\":\"nv\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(180, 'default', 'created', 'App\\Models\\UserInfo', 'created', 78, NULL, NULL, '{\"attributes\":{\"id\":78,\"user_id\":78,\"avatar\":null,\"company\":\"Kessler, Blick and Lockman\",\"phone\":\"(949) 960-8276\",\"website\":\"http:\\/\\/emmerich.net\\/\",\"country\":\"IS\",\"language\":\"ce\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(181, 'default', 'created', 'App\\Models\\UserInfo', 'created', 79, NULL, NULL, '{\"attributes\":{\"id\":79,\"user_id\":79,\"avatar\":null,\"company\":\"Dickinson-Hyatt\",\"phone\":\"+1-440-351-4925\",\"website\":\"http:\\/\\/hegmann.com\\/soluta-recusandae-qui-vel-consequatur-iusto-et\",\"country\":\"IL\",\"language\":\"ng\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(182, 'default', 'created', 'App\\Models\\UserInfo', 'created', 80, NULL, NULL, '{\"attributes\":{\"id\":80,\"user_id\":80,\"avatar\":null,\"company\":\"O\'Kon, Bosco and Miller\",\"phone\":\"1-228-960-2141\",\"website\":\"http:\\/\\/kohler.net\\/nemo-possimus-reprehenderit-rerum-et.html\",\"country\":\"NF\",\"language\":\"yo\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:35.000000Z\",\"updated_at\":\"2023-02-15T15:50:35.000000Z\"}}', NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(183, 'default', 'created', 'App\\Models\\UserInfo', 'created', 81, NULL, NULL, '{\"attributes\":{\"id\":81,\"user_id\":81,\"avatar\":null,\"company\":\"Kuhic-Fritsch\",\"phone\":\"(240) 431-4612\",\"website\":\"http:\\/\\/www.considine.com\\/eum-provident-placeat-rerum-doloribus-consequatur\",\"country\":\"LB\",\"language\":\"et\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:36.000000Z\",\"updated_at\":\"2023-02-15T15:50:36.000000Z\"}}', NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(184, 'default', 'created', 'App\\Models\\UserInfo', 'created', 82, NULL, NULL, '{\"attributes\":{\"id\":82,\"user_id\":82,\"avatar\":null,\"company\":\"Gislason-Willms\",\"phone\":\"+1-928-235-5905\",\"website\":\"http:\\/\\/www.kassulke.com\\/eum-quibusdam-ullam-optio-earum-reiciendis-corporis.html\",\"country\":\"JE\",\"language\":\"bo\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:36.000000Z\",\"updated_at\":\"2023-02-15T15:50:36.000000Z\"}}', NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(185, 'default', 'created', 'App\\Models\\UserInfo', 'created', 83, NULL, NULL, '{\"attributes\":{\"id\":83,\"user_id\":83,\"avatar\":null,\"company\":\"Bernier-Bayer\",\"phone\":\"+1-341-936-5797\",\"website\":\"http:\\/\\/www.oreilly.com\\/\",\"country\":\"BY\",\"language\":\"ga\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:36.000000Z\",\"updated_at\":\"2023-02-15T15:50:36.000000Z\"}}', NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(186, 'default', 'created', 'App\\Models\\UserInfo', 'created', 84, NULL, NULL, '{\"attributes\":{\"id\":84,\"user_id\":84,\"avatar\":null,\"company\":\"McClure PLC\",\"phone\":\"+1-760-324-8439\",\"website\":\"http:\\/\\/frami.com\\/odio-voluptas-adipisci-accusamus-et-et-eos-adipisci\",\"country\":\"SX\",\"language\":\"kr\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:36.000000Z\",\"updated_at\":\"2023-02-15T15:50:36.000000Z\"}}', NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(187, 'default', 'created', 'App\\Models\\UserInfo', 'created', 85, NULL, NULL, '{\"attributes\":{\"id\":85,\"user_id\":85,\"avatar\":null,\"company\":\"Kerluke and Sons\",\"phone\":\"+1 (540) 419-0441\",\"website\":\"http:\\/\\/www.walsh.com\\/aut-non-inventore-dolorum-sapiente-repellendus-dicta-occaecati.html\",\"country\":\"KP\",\"language\":\"ki\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:36.000000Z\",\"updated_at\":\"2023-02-15T15:50:36.000000Z\"}}', NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(188, 'default', 'created', 'App\\Models\\UserInfo', 'created', 86, NULL, NULL, '{\"attributes\":{\"id\":86,\"user_id\":86,\"avatar\":null,\"company\":\"Considine-Schaefer\",\"phone\":\"+1-512-747-3118\",\"website\":\"http:\\/\\/www.upton.net\\/consequatur-sed-quasi-deserunt-earum-aut-sint-velit.html\",\"country\":\"ST\",\"language\":\"kk\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:36.000000Z\",\"updated_at\":\"2023-02-15T15:50:36.000000Z\"}}', NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(189, 'default', 'created', 'App\\Models\\UserInfo', 'created', 87, NULL, NULL, '{\"attributes\":{\"id\":87,\"user_id\":87,\"avatar\":null,\"company\":\"Kub-Carroll\",\"phone\":\"(346) 315-2009\",\"website\":\"http:\\/\\/www.dubuque.info\\/reprehenderit-et-quasi-deserunt-iste-aperiam-in-quis-alias\",\"country\":\"LY\",\"language\":\"dv\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:36.000000Z\",\"updated_at\":\"2023-02-15T15:50:36.000000Z\"}}', NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(190, 'default', 'created', 'App\\Models\\UserInfo', 'created', 88, NULL, NULL, '{\"attributes\":{\"id\":88,\"user_id\":88,\"avatar\":null,\"company\":\"Tillman-Lang\",\"phone\":\"+14589070271\",\"website\":\"http:\\/\\/www.predovic.com\\/veritatis-omnis-non-occaecati-eos-non.html\",\"country\":\"EG\",\"language\":\"sa\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:36.000000Z\",\"updated_at\":\"2023-02-15T15:50:36.000000Z\"}}', NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(191, 'default', 'created', 'App\\Models\\UserInfo', 'created', 89, NULL, NULL, '{\"attributes\":{\"id\":89,\"user_id\":89,\"avatar\":null,\"company\":\"Strosin, Kuhic and Lesch\",\"phone\":\"(972) 579-8480\",\"website\":\"http:\\/\\/quitzon.com\\/\",\"country\":\"AR\",\"language\":\"ia\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:36.000000Z\",\"updated_at\":\"2023-02-15T15:50:36.000000Z\"}}', NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(192, 'default', 'created', 'App\\Models\\UserInfo', 'created', 90, NULL, NULL, '{\"attributes\":{\"id\":90,\"user_id\":90,\"avatar\":null,\"company\":\"Runolfsson, Johnston and Considine\",\"phone\":\"1-747-533-6904\",\"website\":\"http:\\/\\/farrell.com\\/autem-ut-et-doloribus-odit-velit\",\"country\":\"CX\",\"language\":\"ii\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:36.000000Z\",\"updated_at\":\"2023-02-15T15:50:36.000000Z\"}}', NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(193, 'default', 'created', 'App\\Models\\UserInfo', 'created', 91, NULL, NULL, '{\"attributes\":{\"id\":91,\"user_id\":91,\"avatar\":null,\"company\":\"Morissette, Bauch and Thompson\",\"phone\":\"1-713-302-8672\",\"website\":\"http:\\/\\/www.kassulke.com\\/sed-doloribus-sunt-ipsam-tempora-nihil-ex-doloremque-rerum\",\"country\":\"IL\",\"language\":\"it\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:36.000000Z\",\"updated_at\":\"2023-02-15T15:50:36.000000Z\"}}', NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(194, 'default', 'created', 'App\\Models\\UserInfo', 'created', 92, NULL, NULL, '{\"attributes\":{\"id\":92,\"user_id\":92,\"avatar\":null,\"company\":\"Tremblay-Jones\",\"phone\":\"386.841.9782\",\"website\":\"https:\\/\\/www.bayer.com\\/sit-repellat-eos-ut-fuga-aut\",\"country\":\"VG\",\"language\":\"rw\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:36.000000Z\",\"updated_at\":\"2023-02-15T15:50:36.000000Z\"}}', NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(195, 'default', 'created', 'App\\Models\\UserInfo', 'created', 93, NULL, NULL, '{\"attributes\":{\"id\":93,\"user_id\":93,\"avatar\":null,\"company\":\"Kautzer Inc\",\"phone\":\"305.822.4232\",\"website\":\"http:\\/\\/mraz.com\\/\",\"country\":\"BE\",\"language\":\"ku\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:36.000000Z\",\"updated_at\":\"2023-02-15T15:50:36.000000Z\"}}', NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(196, 'default', 'created', 'App\\Models\\UserInfo', 'created', 94, NULL, NULL, '{\"attributes\":{\"id\":94,\"user_id\":94,\"avatar\":null,\"company\":\"Abshire Group\",\"phone\":\"959-537-9093\",\"website\":\"http:\\/\\/www.mosciski.com\\/placeat-omnis-ducimus-odio-provident\",\"country\":\"FR\",\"language\":\"is\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:36.000000Z\",\"updated_at\":\"2023-02-15T15:50:36.000000Z\"}}', NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(197, 'default', 'created', 'App\\Models\\UserInfo', 'created', 95, NULL, NULL, '{\"attributes\":{\"id\":95,\"user_id\":95,\"avatar\":null,\"company\":\"Ankunding-Nitzsche\",\"phone\":\"+1 (475) 474-1123\",\"website\":\"http:\\/\\/keebler.com\\/dicta-tempora-nesciunt-rerum-est-doloribus-quia-asperiores-consequatur.html\",\"country\":\"PG\",\"language\":\"fi\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:36.000000Z\",\"updated_at\":\"2023-02-15T15:50:36.000000Z\"}}', NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(198, 'default', 'created', 'App\\Models\\UserInfo', 'created', 96, NULL, NULL, '{\"attributes\":{\"id\":96,\"user_id\":96,\"avatar\":null,\"company\":\"Stracke, Witting and Bartoletti\",\"phone\":\"564-922-5452\",\"website\":\"https:\\/\\/www.klein.com\\/voluptatem-rerum-alias-nemo-sequi-iusto\",\"country\":\"CK\",\"language\":\"eo\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:36.000000Z\",\"updated_at\":\"2023-02-15T15:50:36.000000Z\"}}', NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(199, 'default', 'created', 'App\\Models\\UserInfo', 'created', 97, NULL, NULL, '{\"attributes\":{\"id\":97,\"user_id\":97,\"avatar\":null,\"company\":\"Lesch-Cole\",\"phone\":\"458-901-1603\",\"website\":\"http:\\/\\/www.marks.info\\/voluptatem-sapiente-voluptatem-soluta\",\"country\":\"AQ\",\"language\":\"rn\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:36.000000Z\",\"updated_at\":\"2023-02-15T15:50:36.000000Z\"}}', NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(200, 'default', 'created', 'App\\Models\\UserInfo', 'created', 98, NULL, NULL, '{\"attributes\":{\"id\":98,\"user_id\":98,\"avatar\":null,\"company\":\"Fadel-Blick\",\"phone\":\"1-325-610-1578\",\"website\":\"http:\\/\\/www.reichel.com\\/aut-dicta-ut-doloremque-qui-quas\",\"country\":\"BW\",\"language\":\"nn\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:36.000000Z\",\"updated_at\":\"2023-02-15T15:50:36.000000Z\"}}', NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(201, 'default', 'created', 'App\\Models\\UserInfo', 'created', 99, NULL, NULL, '{\"attributes\":{\"id\":99,\"user_id\":99,\"avatar\":null,\"company\":\"Brown and Sons\",\"phone\":\"1-479-307-0597\",\"website\":\"http:\\/\\/cassin.biz\\/et-iste-velit-sed\",\"country\":\"BL\",\"language\":\"el\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:36.000000Z\",\"updated_at\":\"2023-02-15T15:50:36.000000Z\"}}', NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(202, 'default', 'created', 'App\\Models\\UserInfo', 'created', 100, NULL, NULL, '{\"attributes\":{\"id\":100,\"user_id\":100,\"avatar\":null,\"company\":\"Lueilwitz, Ebert and Harber\",\"phone\":\"(260) 708-0314\",\"website\":\"http:\\/\\/www.waters.info\\/tenetur-quia-animi-est-ut-recusandae-sed\",\"country\":\"MO\",\"language\":\"hu\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:36.000000Z\",\"updated_at\":\"2023-02-15T15:50:36.000000Z\"}}', NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(203, 'default', 'created', 'App\\Models\\UserInfo', 'created', 101, NULL, NULL, '{\"attributes\":{\"id\":101,\"user_id\":101,\"avatar\":null,\"company\":\"Rath, Murray and Von\",\"phone\":\"+1 (480) 570-2365\",\"website\":\"http:\\/\\/lynch.com\\/beatae-qui-architecto-quas-saepe\",\"country\":\"GU\",\"language\":\"mr\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:36.000000Z\",\"updated_at\":\"2023-02-15T15:50:36.000000Z\"}}', NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(204, 'default', 'created', 'App\\Models\\UserInfo', 'created', 102, NULL, NULL, '{\"attributes\":{\"id\":102,\"user_id\":102,\"avatar\":null,\"company\":\"Becker-Fahey\",\"phone\":\"323-619-4114\",\"website\":\"http:\\/\\/gorczany.com\\/aliquam-delectus-sunt-repellat-est\",\"country\":\"PF\",\"language\":\"ko\",\"timezone\":null,\"currency\":null,\"communication\":null,\"marketing\":null,\"created_at\":\"2023-02-15T15:50:36.000000Z\",\"updated_at\":\"2023-02-15T15:50:36.000000Z\"}}', NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(205, 'default', 'created', 'App\\Models\\User', 'created', 103, NULL, NULL, '{\"attributes\":{\"id\":103,\"first_name\":\"admin\",\"last_name\":\"admin\",\"email\":\"admin@admin.com\",\"email_verified_at\":\"2023-02-15T15:50:36.000000Z\",\"password\":\"$2y$10$yJtxK1z6R00ujgmukvN\\/Ye.NaF80.6yRUMw32l9zmPALgnYsI.56S\",\"api_token\":\"$2y$10$Us0avVmky1uTHUAt.tWweOSmRse0v6H7bpZHcXupVLPmeh88uv05W\",\"remember_token\":null,\"created_at\":\"2023-02-15T15:50:36.000000Z\",\"updated_at\":\"2023-02-15T15:50:36.000000Z\"}}', NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_22_144618_create_permission_tables', 1),
(5, '2021_04_14_044507_create_settings_table', 1),
(6, '2021_06_15_022916_create_user_infos_table', 1),
(7, '2021_06_23_041411_create_activity_log_table', 1),
(8, '2021_06_23_041412_add_event_column_to_activity_log_table', 1),
(9, '2021_06_23_041413_add_batch_uuid_column_to_activity_log_table', 1),
(10, '2021_11_04_200820_add_api_token_column', 1),
(11, '2023_02_14_124416_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 103);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'create content', 'web', '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(2, 'read content', 'web', '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(3, 'update content', 'web', '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(4, 'delete content', 'web', '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(5, 'create user', 'web', '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(6, 'read user', 'web', '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(7, 'update user', 'web', '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(8, 'delete user', 'web', '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(9, 'create role', 'web', '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(10, 'read role', 'web', '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(11, 'update role', 'web', '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(12, 'delete role', 'web', '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(13, 'create permission', 'web', '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(14, 'read permission', 'web', '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(15, 'update permission', 'web', '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(16, 'delete permission', 'web', '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(17, 'create product', 'web', '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(18, 'read product', 'web', '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(19, 'update product', 'web', '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(20, 'delete product', 'web', '2023-02-15 13:50:36', '2023-02-15 13:50:36');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'editor', 'web', '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(2, 'Admin', 'web', '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(4, 'admin1', 'web', '2023-02-15 14:01:58', '2023-02-15 14:01:58');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(1, 4),
(2, 2),
(2, 4),
(3, 2),
(3, 4),
(4, 2),
(4, 4),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `api_token` varchar(80) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `api_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Domingo', 'Renner', 'demo@demo.com', '2023-02-15 13:50:33', '$2y$10$36MuRKhOQsZiQG.r2bvAWOZUX9mUFjlcg1gzXAAWMD3Yx6DBV/jbC', '$2y$10$xfyf5WuFfH8sEWFEvHzQqe8O7F4AZdo3uSyiRDCt64.CjkIBMYPJa', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(2, 'Nestor', 'Deckow', 'admin@demo.com', '2023-02-15 13:50:34', '$2y$10$AK8EVvnlgPMq8tglfzBJVenKSOAb6HUSztMmmFFWDHU7TxB6f/Qyy', '$2y$10$96c9bEewLzog/RYZwmZRSegN2OPNSrrYu4pIpT1SYHP211R4lj2nm', NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(3, 'Dina', 'Zboncak', 'kaci73@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'KFPb3czn83', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(4, 'Rodolfo', 'Stokes', 'vrunte@example.net', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'qUqEollST3', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(5, 'Walter', 'Gulgowski', 'kelley.zboncak@example.net', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'XozlCDYrrl', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(6, 'Cordie', 'Emmerich', 'ladarius13@example.net', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'YmvFYKD3Bi', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(7, 'Benjamin', 'Monahan', 'werner96@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'haBS28IZe6', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(8, 'Candice', 'Lebsack', 'jhettinger@example.net', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'T8zpwJ8qon', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(9, 'Torey', 'Romaguera', 'tia91@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'GxtXrUNjLS', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(10, 'Jasmin', 'Botsford', 'litzy34@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '3YgjQruRIT', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(11, 'Moshe', 'Smith', 'hrice@example.net', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'dzYrMV5AFI', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(12, 'Lexus', 'Price', 'kovacek.coleman@example.net', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '3YhoJoOdPL', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(13, 'Bertrand', 'Bernier', 'charlie.mills@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '4F9Zak9scc', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(14, 'Rashad', 'Morissette', 'nbechtelar@example.net', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'J9fndUqpCD', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(15, 'Rico', 'Satterfield', 'haylie.dare@example.net', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'NU2aEcDDYs', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(16, 'Kurtis', 'Herzog', 'blanda.marianna@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'aOKUAmIarF', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(17, 'Fatima', 'Hamill', 'monty25@example.com', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'LEfaOL5Ugk', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(18, 'Anabel', 'Williamson', 'cali56@example.com', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '7bf0ZtC1Td', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(19, 'Clifford', 'Simonis', 'romaguera.stewart@example.net', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'LZe6dYM9n2', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(20, 'Amanda', 'Orn', 'tcremin@example.com', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'fC1xJo3j7T', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(21, 'Vilma', 'Lebsack', 'lkessler@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'Yf4k5gOrAd', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(22, 'Hertha', 'Feeney', 'parker.odessa@example.net', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'JcSTgnHPgq', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(23, 'Amy', 'Bechtelar', 'laverna.roob@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'zyh0EGciTs', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(24, 'Effie', 'Swaniawski', 'klein.patience@example.net', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'BvQw9JFmEa', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(25, 'Ewell', 'Schamberger', 'jenkins.otilia@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '9pkGeHhth8', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(26, 'Kallie', 'Luettgen', 'xkautzer@example.net', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'iwLxkKqD8x', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(27, 'Felix', 'Ryan', 'mason.dickinson@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'yjmqwTTh32', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(28, 'Emmie', 'Kautzer', 'roberts.saul@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'WKLzzySO0n', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(29, 'Judd', 'Berge', 'runolfsdottir.ariel@example.net', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '7HECdTyrrp', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(30, 'Elton', 'Stamm', 'earmstrong@example.com', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'mZzatpzSJ2', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(31, 'Loyce', 'Crist', 'twila.crona@example.net', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '4E128WpwOj', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(32, 'Ella', 'Crona', 'mccullough.makenna@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'l5EgHVOMlD', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(33, 'Hoyt', 'Rippin', 'othiel@example.com', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '3ZtcNJFgcq', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(34, 'Elbert', 'Balistreri', 'piper.grant@example.com', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'OdmPPJpKtB', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(35, 'Trevor', 'Hickle', 'avery.paucek@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'E2yWeQwWx7', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(36, 'Sigmund', 'Kuphal', 'nshields@example.com', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'kpw9cWe2d7', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(37, 'Tabitha', 'Sauer', 'alessandro98@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '271YZluCYD', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(38, 'Friedrich', 'Collins', 'lavonne.stokes@example.net', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'Om6w1qebKG', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(39, 'Jennifer', 'Mosciski', 'melissa05@example.net', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'jIRwp2kGAD', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(40, 'Mireya', 'Bergnaum', 'sbauch@example.com', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'J8lYkgP7sp', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(41, 'Carter', 'Fadel', 'chand@example.net', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '1Cqiw9qlwG', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(42, 'Annamae', 'Ritchie', 'theresia.mcclure@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'WHw3IWuggv', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(43, 'Hailie', 'Toy', 'jody.abernathy@example.net', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '4lpY1JuHmp', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(44, 'Shaina', 'Kutch', 'sstehr@example.com', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '5g2wJuqPsb', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(45, 'Zelma', 'Schaden', 'cassin.zaria@example.com', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'WEhLDdM9gO', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(46, 'Bonita', 'Smith', 'leonardo.frami@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'ImFyzy6Vay', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(47, 'Kelsi', 'Heathcote', 'viviane71@example.net', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'kZmDblCz8o', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(48, 'Donavon', 'Barrows', 'schmidt.naomi@example.net', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'm4oMbgPHVr', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(49, 'Tracey', 'Swift', 'blick.lew@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '4IZxc6c3cz', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(50, 'Fausto', 'Bogan', 'larkin.matteo@example.com', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '7p4bSnbsMa', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(51, 'Felix', 'Halvorson', 'carmel85@example.com', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'mjxBOqAl2w', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(52, 'Winston', 'Simonis', 'troy.haley@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'LFhYAygw8F', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(53, 'Vita', 'Cormier', 'goodwin.hertha@example.com', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'DcA1IIlkQe', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(54, 'Alvina', 'Howe', 'caterina.swift@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'zo3x0s6UQY', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(55, 'Otha', 'Hills', 'jeromy77@example.net', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'e7g6UCJ0cT', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(56, 'Ova', 'McGlynn', 'yoshiko71@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'ArpgzXMMWS', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(57, 'Verna', 'VonRueden', 'cdickinson@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'jluxT9vx82', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(58, 'Jeffery', 'Sporer', 'schiller.dorothea@example.com', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'x33Kx1U3Vp', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(59, 'Angus', 'Haag', 'alta.streich@example.com', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'gN5a876eNY', '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(60, 'Katlynn', 'Rath', 'brent88@example.com', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '6SEwFox2m3', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(61, 'Geoffrey', 'Lind', 'ubednar@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'mzQnKnZdDv', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(62, 'Sienna', 'Wolff', 'jvonrueden@example.com', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'YkP3ntSA4x', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(63, 'Guy', 'Greenfelder', 'rogers.blanda@example.net', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'DuNYtgO5ea', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(64, 'Mina', 'Koss', 'sdibbert@example.com', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'dt0mIOEbP3', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(65, 'Neil', 'Schuppe', 'nichole34@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'su4bVuRc37', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(66, 'Aracely', 'Harvey', 'lkeebler@example.com', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'I3IFdvdBVH', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(67, 'Colton', 'Beahan', 'marcos.kemmer@example.com', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'iTgw1g0BTK', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(68, 'Freddy', 'Ortiz', 'von.ludwig@example.net', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '289YGiILcR', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(69, 'Rigoberto', 'Dickens', 'dolly.hayes@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'HkO8IBMhmX', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(70, 'Jesus', 'Barton', 'schoen.angus@example.com', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'edrSb6fV8A', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(71, 'Evalyn', 'Muller', 'lconroy@example.com', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '9t4Nzgbdok', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(72, 'Hailee', 'Gulgowski', 'hickle.johathan@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '3ItY1NuOR9', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(73, 'Harvey', 'Kuphal', 'wondricka@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'fCx5LM35F5', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(74, 'Rubie', 'Gaylord', 'strosin.albertha@example.net', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '0EGTsm7I38', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(75, 'Cedrick', 'Watsica', 'corrine.bashirian@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'dgyKZ1xdl4', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(76, 'Giles', 'Gorczany', 'kathlyn42@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'h0CKA4wjOo', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(77, 'Isaiah', 'Hayes', 'melvin.hintz@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'JeHxVZ1S1D', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(78, 'Javonte', 'Osinski', 'sadie.kertzmann@example.com', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'CQKItmNwKk', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(79, 'Alfonzo', 'Ebert', 'antwon15@example.net', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'yX3rQ2trT8', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(80, 'Malachi', 'Hansen', 'april33@example.net', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '8g1tCfZFKQ', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(81, 'Krystina', 'Mills', 'glabadie@example.net', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'o9XRuFRM1r', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(82, 'Elinore', 'Zboncak', 'greenfelder.sydnie@example.com', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'oAGcfJAHyQ', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(83, 'Carter', 'Schimmel', 'hoconner@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'HNPuRDIAdo', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(84, 'Derick', 'Effertz', 'edythe43@example.com', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'iEEYeUjcDM', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(85, 'Melyna', 'Raynor', 'yundt.ernest@example.com', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '0vFq4dVuQB', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(86, 'Cheyenne', 'Powlowski', 'rcarter@example.net', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'BOIJAMife7', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(87, 'Eda', 'Hagenes', 'nikolaus.brain@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'ndXnjwAsEV', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(88, 'Marcel', 'Ebert', 'alize.kautzer@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'WcqqiHUEMs', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(89, 'Cathryn', 'Reynolds', 'pacocha.steve@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '4424zTo1qu', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(90, 'Melba', 'Wolff', 'renner.tiara@example.com', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'VN4AQnSMZ9', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(91, 'Anya', 'Bartoletti', 'jkemmer@example.net', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'RWAcwfFUIH', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(92, 'Andrew', 'Blanda', 'maci.carroll@example.com', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '9LmV7mb4CE', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(93, 'Nola', 'Friesen', 'alize.maggio@example.net', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'KB1ReYmFTk', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(94, 'Kyra', 'Macejkovic', 'maximillian.parisian@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'OtnDW4zIGh', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(95, 'Layla', 'Hand', 'sigrid96@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'mFYgrlA5U2', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(96, 'Pink', 'Mueller', 'shakira91@example.net', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'xGYGbPslVd', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(97, 'Angelica', 'Abbott', 'mary.kreiger@example.com', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'yd5Hy0DUvN', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(98, 'Darrel', 'Douglas', 'hyatt.magdalen@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'PPaVKsMYtB', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(99, 'Demetris', 'Nolan', 'nbergstrom@example.org', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'Jx2U6rNNvy', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(100, 'Bertram', 'Ruecker', 'parisian.jevon@example.net', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'n9CgOMvSr2', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(101, 'Shemar', 'Baumbach', 'lemke.simone@example.net', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '7KFwrnxj5F', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(102, 'Antoinette', 'Howe', 'wehner.horacio@example.net', '2023-02-15 13:50:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'ND87TTY40v', '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(103, 'admin', 'admin', 'admin@admin.com', '2023-02-15 13:50:36', '$2y$10$yJtxK1z6R00ujgmukvN/Ye.NaF80.6yRUMw32l9zmPALgnYsI.56S', '$2y$10$Us0avVmky1uTHUAt.tWweOSmRse0v6H7bpZHcXupVLPmeh88uv05W', NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36');

-- --------------------------------------------------------

--
-- Table structure for table `user_infos`
--

CREATE TABLE `user_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `avatar` text DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `communication` varchar(255) DEFAULT NULL,
  `marketing` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `user_infos`
--

INSERT INTO `user_infos` (`id`, `user_id`, `avatar`, `company`, `phone`, `website`, `country`, `language`, `timezone`, `currency`, `communication`, `marketing`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Blick-Langosh', '781.675.1476', 'http://www.stokes.info/sequi-voluptatem-maxime-cupiditate-qui-explicabo-sed-excepturi', 'SL', 'tt', NULL, NULL, NULL, NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(2, 2, NULL, 'Hintz and Sons', '+13232485978', 'https://www.schneider.biz/rerum-omnis-non-et-laborum-est-non-in-quam', 'GS', 'cy', NULL, NULL, NULL, NULL, '2023-02-15 13:50:34', '2023-02-15 13:50:34'),
(3, 3, NULL, 'Leuschke, Gibson and Schuster', '+1-717-528-3852', 'http://lubowitz.com/', 'UY', 'id', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(4, 4, NULL, 'Bins Inc', '1-385-567-6118', 'http://mueller.org/quia-sint-quaerat-id-aliquid-eaque-nihil-rerum', 'PW', 'ff', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(5, 5, NULL, 'Marks PLC', '(906) 499-3034', 'http://crona.com/', 'RW', 'nd', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(6, 6, NULL, 'Carroll, Upton and Goodwin', '(681) 459-0826', 'https://www.frami.info/autem-aspernatur-in-est-asperiores-mollitia-ducimus', 'ZW', 'sa', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(7, 7, NULL, 'Grimes-Greenfelder', '+1-562-305-3139', 'https://www.steuber.biz/repudiandae-voluptate-eos-aspernatur', 'NO', 'jv', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(8, 8, NULL, 'Gutkowski, Will and Stoltenberg', '(978) 520-9204', 'http://schoen.com/distinctio-beatae-sit-mollitia-architecto-ipsam', 'TJ', 'ru', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(9, 9, NULL, 'Witting, Yundt and Langosh', '1-240-458-3709', 'http://erdman.net/voluptas-asperiores-corrupti-soluta-aut-eos', 'NA', 'hi', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(10, 10, NULL, 'Carter Inc', '+1-386-649-1320', 'http://lowe.com/ut-libero-cum-sunt-itaque-sapiente-in.html', 'IT', 'om', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(11, 11, NULL, 'Schuster, Hirthe and Reilly', '+1.509.778.1555', 'http://www.beatty.com/reiciendis-fugit-dolores-possimus.html', 'IO', 'za', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(12, 12, NULL, 'Boyer, Runolfsdottir and Wilderman', '1-520-460-9839', 'http://www.herzog.com/rerum-ab-sed-unde-necessitatibus.html', 'LA', 'ps', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(13, 13, NULL, 'Hudson Ltd', '856.791.0985', 'http://www.wuckert.com/provident-id-cupiditate-corrupti-molestiae-odit', 'IL', 'gd', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(14, 14, NULL, 'Torp-Davis', '+1 (754) 443-1432', 'http://www.fay.com/', 'UG', 'ku', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(15, 15, NULL, 'Steuber and Sons', '+1-315-557-5040', 'http://www.considine.org/', 'KH', 'sw', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(16, 16, NULL, 'Abbott Inc', '(770) 993-0159', 'http://www.morissette.net/ea-distinctio-dolorem-quidem-aut-provident-hic.html', 'TF', 'ts', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(17, 17, NULL, 'Gibson Ltd', '(941) 319-4273', 'http://mayer.com/ut-labore-mollitia-ratione-omnis-ut-laborum-temporibus.html', 'IE', 'ii', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(18, 18, NULL, 'Hane, Howe and Murphy', '+1.726.408.0313', 'http://www.trantow.info/', 'AQ', 'gl', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(19, 19, NULL, 'Beahan Ltd', '220-970-6867', 'http://hahn.com/necessitatibus-voluptatibus-ducimus-quibusdam-et-est-nisi.html', 'CX', 'lb', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(20, 20, NULL, 'Nader, Mann and Schaden', '+16103691671', 'http://www.schaefer.org/soluta-repellat-quia-quaerat-similique.html', 'BG', 'ia', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(21, 21, NULL, 'Beier-Russel', '+1-628-200-6771', 'http://www.gutkowski.biz/earum-totam-in-laboriosam-debitis-necessitatibus-sequi', 'CO', 'is', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(22, 22, NULL, 'Kirlin LLC', '+1 (231) 643-9486', 'http://www.koelpin.com/perferendis-perspiciatis-ipsa-expedita-saepe-rerum-ab.html', 'IT', 'lu', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(23, 23, NULL, 'Klocko, Haag and Ritchie', '(959) 915-9652', 'https://www.schmeler.com/sint-delectus-ipsa-autem-et-earum-velit-nihil-necessitatibus', 'TF', 'rn', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(24, 24, NULL, 'Littel Group', '541-790-8945', 'http://www.klocko.com/accusantium-omnis-libero-molestiae-distinctio', 'LV', 'kn', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(25, 25, NULL, 'Nader-Johns', '267-613-1951', 'http://www.price.info/', 'CV', 'li', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(26, 26, NULL, 'Stehr Inc', '+1.530.571.1416', 'http://www.kihn.com/', 'PE', 'tn', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(27, 27, NULL, 'Satterfield PLC', '+1-513-896-0002', 'https://price.com/est-nihil-tempora-dignissimos-et-mollitia-non.html', 'PF', 'ne', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(28, 28, NULL, 'Ritchie-Padberg', '812-844-8913', 'http://www.conn.com/error-impedit-ab-nobis-ducimus-repudiandae', 'PH', 'da', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(29, 29, NULL, 'Gerlach-Upton', '859-841-1813', 'http://harris.com/qui-laborum-rerum-et-tempora-nostrum-rem-id', 'GW', 'sg', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(30, 30, NULL, 'Aufderhar, D\'Amore and Mueller', '(830) 903-1551', 'http://www.brakus.biz/culpa-ullam-repudiandae-ut-in.html', 'RO', 'si', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(31, 31, NULL, 'Schowalter-Christiansen', '+1 (352) 219-6715', 'http://daniel.com/aliquid-et-illo-et-aut-autem.html', 'CC', 'lb', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(32, 32, NULL, 'Nikolaus, Leannon and Keeling', '(534) 872-6151', 'http://www.mills.biz/', 'PY', 'io', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(33, 33, NULL, 'Quigley, Feest and Beahan', '662.689.2234', 'http://www.breitenberg.info/', 'JE', 'cv', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(34, 34, NULL, 'Mills-Jones', '+1-463-282-5370', 'http://www.murray.org/', 'ZW', 'mg', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(35, 35, NULL, 'Kshlerin, Pfeffer and Bailey', '(854) 939-8073', 'https://reichel.com/veritatis-consectetur-eius-sed-ipsum-animi-cupiditate-voluptas.html', 'PY', 'cr', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(36, 36, NULL, 'Wiza Group', '325-220-3655', 'http://www.boehm.info/ea-fuga-cum-perferendis', 'BR', 'gd', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(37, 37, NULL, 'Von Group', '(561) 332-2431', 'http://www.borer.net/vel-dolor-voluptatem-totam-eligendi-dolores-ipsa', 'KI', 'is', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(38, 38, NULL, 'Abbott, Batz and Green', '+13073671622', 'http://gutmann.biz/suscipit-est-quod-quia.html', 'BH', 'id', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(39, 39, NULL, 'Rosenbaum-Aufderhar', '1-240-944-0913', 'http://rohan.com/', 'SB', 'ts', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(40, 40, NULL, 'Kessler, Durgan and Keebler', '(831) 998-0004', 'https://hessel.biz/autem-quidem-sunt-et-dolor.html', 'BA', 'sk', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(41, 41, NULL, 'Dietrich-Collins', '1-434-655-9062', 'http://johnson.net/explicabo-occaecati-dolores-laudantium-corporis-harum.html', 'MV', 'zh', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(42, 42, NULL, 'Cummerata-Hegmann', '+1-318-352-1702', 'https://schumm.com/voluptatem-laborum-qui-doloremque-aperiam-fugit-sit-et.html', 'HK', 'lu', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(43, 43, NULL, 'Aufderhar-Braun', '1-878-358-1251', 'https://www.sipes.org/quia-vero-suscipit-delectus-fugiat', 'BE', 'hi', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(44, 44, NULL, 'Goodwin Group', '+14584649359', 'http://www.ledner.com/non-deleniti-animi-nemo-reprehenderit.html', 'SH', 'ku', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(45, 45, NULL, 'Feil Ltd', '563-307-3410', 'http://brakus.com/dolores-laborum-dolor-sunt-consequatur-tenetur-ut-autem', 'BF', 'es', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(46, 46, NULL, 'Bode PLC', '(541) 450-2974', 'http://www.padberg.com/', 'TG', 'fy', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(47, 47, NULL, 'Reichel Inc', '757-266-9073', 'http://www.johnston.org/', 'NR', 'ro', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(48, 48, NULL, 'Toy, Gaylord and Hahn', '207-402-1311', 'http://king.com/at-perferendis-consequatur-provident-et-aut', 'YT', 'ug', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(49, 49, NULL, 'Heathcote LLC', '1-737-719-5681', 'http://lehner.com/dolores-omnis-est-consequatur-dolor-debitis-voluptatibus', 'EH', 'ru', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(50, 50, NULL, 'Marquardt PLC', '(520) 325-4680', 'http://www.lubowitz.net/omnis-aut-debitis-est-ut-nihil', 'FM', 'sr', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(51, 51, NULL, 'Effertz-Wisoky', '857-637-7337', 'http://www.schuppe.biz/rerum-doloribus-aliquam-deleniti-et', 'BZ', 'be', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(52, 52, NULL, 'Hoeger Ltd', '+1-701-825-0350', 'http://thiel.com/blanditiis-qui-ducimus-autem-et-dicta-eum.html', 'ES', 'na', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(53, 53, NULL, 'Dooley Group', '559-284-7510', 'https://www.kautzer.com/impedit-voluptate-expedita-doloremque', 'VN', 'za', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(54, 54, NULL, 'Pollich-Marks', '+1.934.658.3801', 'http://bosco.com/', 'PF', 'nn', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(55, 55, NULL, 'Emmerich PLC', '262-468-6981', 'https://www.stark.com/quia-assumenda-provident-pariatur-porro-ducimus-ea-vel-id', 'AT', 'cu', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(56, 56, NULL, 'Farrell-Dicki', '1-564-731-2690', 'https://www.beahan.info/et-quaerat-perferendis-facere-illo-eaque-ut', 'CW', 'cs', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(57, 57, NULL, 'Cummerata Group', '+1.979.516.3658', 'http://klocko.com/eaque-esse-eligendi-atque-laborum-ut-ut-animi.html', 'IR', 'ar', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(58, 58, NULL, 'Daniel-Grant', '1-424-989-4112', 'http://mccullough.org/', 'HT', 'bo', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(59, 59, NULL, 'Senger-Weissnat', '435.648.5202', 'http://lehner.org/sed-tenetur-iste-mollitia-laudantium-dolorem-laboriosam-sunt-qui', 'OM', 'xh', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(60, 60, NULL, 'Olson, Schumm and Goldner', '1-737-206-7705', 'http://brown.com/velit-temporibus-voluptatem-et-distinctio-est-deserunt-qui', 'BG', 'kj', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(61, 61, NULL, 'Murphy, Bradtke and Hessel', '1-706-950-1191', 'http://www.lynch.net/aspernatur-non-cumque-quia-laborum', 'SD', 'se', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(62, 62, NULL, 'Waters-Kub', '+1 (754) 756-5410', 'https://www.connelly.com/facere-rerum-est-rerum-sed-laboriosam-animi', 'GU', 'kg', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(63, 63, NULL, 'Konopelski, Klocko and Rolfson', '(774) 671-0308', 'http://www.leannon.com/corrupti-impedit-aut-sed-dolores.html', 'EH', 'ht', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(64, 64, NULL, 'Sporer and Sons', '+1-928-209-2198', 'http://www.powlowski.com/esse-accusamus-molestiae-rerum-dolorem-quidem-quia', 'UA', 'hi', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(65, 65, NULL, 'Kutch Inc', '786-630-6678', 'http://www.windler.com/', 'BO', 'oc', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(66, 66, NULL, 'Daugherty Group', '+1-469-265-5225', 'http://www.effertz.com/doloribus-in-voluptatem-placeat-qui-impedit-et', 'NU', 'dv', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(67, 67, NULL, 'Sanford-Cole', '+1-984-560-7957', 'http://www.mccullough.com/', 'AZ', 'rw', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(68, 68, NULL, 'Spencer-Stokes', '757-759-3711', 'http://www.altenwerth.com/', 'PG', 'hz', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(69, 69, NULL, 'Willms, Lowe and Sanford', '+1-641-652-9227', 'http://towne.com/', 'US', 'el', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(70, 70, NULL, 'Windler and Sons', '208-410-9336', 'http://www.aufderhar.com/quis-sequi-quia-officia-accusantium-non-qui-occaecati-harum.html', 'NO', 'ga', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(71, 71, NULL, 'Erdman Ltd', '+1-531-814-5453', 'https://keeling.com/iste-accusantium-vel-quasi-veritatis-facilis.html', 'RW', 'eo', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(72, 72, NULL, 'Rice and Sons', '(720) 385-1072', 'https://wyman.net/qui-culpa-id-quasi.html', 'LA', 'vo', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(73, 73, NULL, 'Herman-Hartmann', '931-591-9694', 'http://www.kunde.com/', 'MA', 'ky', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(74, 74, NULL, 'Cassin, Kovacek and Buckridge', '947-729-1782', 'http://kessler.org/', 'BE', 'hy', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(75, 75, NULL, 'Hilpert Group', '1-283-732-3668', 'http://www.hegmann.info/', 'KP', 'en', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(76, 76, NULL, 'Keebler-Ernser', '201-574-1590', 'http://www.bergstrom.net/', 'MS', 'ht', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(77, 77, NULL, 'Hettinger-Nicolas', '+1 (414) 470-1310', 'http://www.renner.com/et-magni-delectus-provident', 'GG', 'nv', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(78, 78, NULL, 'Kessler, Blick and Lockman', '(949) 960-8276', 'http://emmerich.net/', 'IS', 'ce', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(79, 79, NULL, 'Dickinson-Hyatt', '+1-440-351-4925', 'http://hegmann.com/soluta-recusandae-qui-vel-consequatur-iusto-et', 'IL', 'ng', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(80, 80, NULL, 'O\'Kon, Bosco and Miller', '1-228-960-2141', 'http://kohler.net/nemo-possimus-reprehenderit-rerum-et.html', 'NF', 'yo', NULL, NULL, NULL, NULL, '2023-02-15 13:50:35', '2023-02-15 13:50:35'),
(81, 81, NULL, 'Kuhic-Fritsch', '(240) 431-4612', 'http://www.considine.com/eum-provident-placeat-rerum-doloribus-consequatur', 'LB', 'et', NULL, NULL, NULL, NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(82, 82, NULL, 'Gislason-Willms', '+1-928-235-5905', 'http://www.kassulke.com/eum-quibusdam-ullam-optio-earum-reiciendis-corporis.html', 'JE', 'bo', NULL, NULL, NULL, NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(83, 83, NULL, 'Bernier-Bayer', '+1-341-936-5797', 'http://www.oreilly.com/', 'BY', 'ga', NULL, NULL, NULL, NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(84, 84, NULL, 'McClure PLC', '+1-760-324-8439', 'http://frami.com/odio-voluptas-adipisci-accusamus-et-et-eos-adipisci', 'SX', 'kr', NULL, NULL, NULL, NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(85, 85, NULL, 'Kerluke and Sons', '+1 (540) 419-0441', 'http://www.walsh.com/aut-non-inventore-dolorum-sapiente-repellendus-dicta-occaecati.html', 'KP', 'ki', NULL, NULL, NULL, NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(86, 86, NULL, 'Considine-Schaefer', '+1-512-747-3118', 'http://www.upton.net/consequatur-sed-quasi-deserunt-earum-aut-sint-velit.html', 'ST', 'kk', NULL, NULL, NULL, NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(87, 87, NULL, 'Kub-Carroll', '(346) 315-2009', 'http://www.dubuque.info/reprehenderit-et-quasi-deserunt-iste-aperiam-in-quis-alias', 'LY', 'dv', NULL, NULL, NULL, NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(88, 88, NULL, 'Tillman-Lang', '+14589070271', 'http://www.predovic.com/veritatis-omnis-non-occaecati-eos-non.html', 'EG', 'sa', NULL, NULL, NULL, NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(89, 89, NULL, 'Strosin, Kuhic and Lesch', '(972) 579-8480', 'http://quitzon.com/', 'AR', 'ia', NULL, NULL, NULL, NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(90, 90, NULL, 'Runolfsson, Johnston and Considine', '1-747-533-6904', 'http://farrell.com/autem-ut-et-doloribus-odit-velit', 'CX', 'ii', NULL, NULL, NULL, NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(91, 91, NULL, 'Morissette, Bauch and Thompson', '1-713-302-8672', 'http://www.kassulke.com/sed-doloribus-sunt-ipsam-tempora-nihil-ex-doloremque-rerum', 'IL', 'it', NULL, NULL, NULL, NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(92, 92, NULL, 'Tremblay-Jones', '386.841.9782', 'https://www.bayer.com/sit-repellat-eos-ut-fuga-aut', 'VG', 'rw', NULL, NULL, NULL, NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(93, 93, NULL, 'Kautzer Inc', '305.822.4232', 'http://mraz.com/', 'BE', 'ku', NULL, NULL, NULL, NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(94, 94, NULL, 'Abshire Group', '959-537-9093', 'http://www.mosciski.com/placeat-omnis-ducimus-odio-provident', 'FR', 'is', NULL, NULL, NULL, NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(95, 95, NULL, 'Ankunding-Nitzsche', '+1 (475) 474-1123', 'http://keebler.com/dicta-tempora-nesciunt-rerum-est-doloribus-quia-asperiores-consequatur.html', 'PG', 'fi', NULL, NULL, NULL, NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(96, 96, NULL, 'Stracke, Witting and Bartoletti', '564-922-5452', 'https://www.klein.com/voluptatem-rerum-alias-nemo-sequi-iusto', 'CK', 'eo', NULL, NULL, NULL, NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(97, 97, NULL, 'Lesch-Cole', '458-901-1603', 'http://www.marks.info/voluptatem-sapiente-voluptatem-soluta', 'AQ', 'rn', NULL, NULL, NULL, NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(98, 98, NULL, 'Fadel-Blick', '1-325-610-1578', 'http://www.reichel.com/aut-dicta-ut-doloremque-qui-quas', 'BW', 'nn', NULL, NULL, NULL, NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(99, 99, NULL, 'Brown and Sons', '1-479-307-0597', 'http://cassin.biz/et-iste-velit-sed', 'BL', 'el', NULL, NULL, NULL, NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(100, 100, NULL, 'Lueilwitz, Ebert and Harber', '(260) 708-0314', 'http://www.waters.info/tenetur-quia-animi-est-ut-recusandae-sed', 'MO', 'hu', NULL, NULL, NULL, NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(101, 101, NULL, 'Rath, Murray and Von', '+1 (480) 570-2365', 'http://lynch.com/beatae-qui-architecto-quas-saepe', 'GU', 'mr', NULL, NULL, NULL, NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36'),
(102, 102, NULL, 'Becker-Fahey', '323-619-4114', 'http://gorczany.com/aliquam-delectus-sunt-repellat-est', 'PF', 'ko', NULL, NULL, NULL, NULL, '2023-02-15 13:50:36', '2023-02-15 13:50:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_key_index` (`key`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- Indexes for table `user_infos`
--
ALTER TABLE `user_infos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `user_infos`
--
ALTER TABLE `user_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

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
