-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2019 at 10:22 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lucid_sql`
--

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `parent_comment_id` int(11) DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `post_id`, `parent_comment_id`, `comment`, `sender_id`, `user_id`, `status`, `action`, `type`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, 4, 7, 1, 'Followed', 'Following', '2019-08-26 08:43:56', '2019-08-26 17:20:28'),
(2, NULL, NULL, NULL, 1, 4, 1, 'Followed', 'Following', '2019-08-26 08:48:21', '2019-08-26 12:05:42'),
(3, NULL, NULL, NULL, 3, 45, 0, 'Followed', 'Following', '2019-08-26 08:51:39', '2019-08-26 08:51:39'),
(5, NULL, NULL, NULL, 1, 4, 1, 'Followed', 'Following', '2019-08-26 10:32:46', '2019-08-26 12:05:42'),
(7, 278, NULL, 'Hey bro!', 1, 4, 1, 'Commented', 'Post', '2019-08-26 14:13:17', '2019-08-26 14:13:25'),
(8, 360, NULL, 'This is an interesting write-up. I have a question though, in the quest to create solutions that saves time for people, you end up spending quite a fair of time. Also, sometimes it might not really be worth it. What metric can be used to determine how to balance this appropriately?', 3, 7, 1, 'Commented', 'Post', '2019-08-26 17:10:20', '2019-08-26 17:20:28'),
(9, 360, NULL, 'A nice write up', 4, 7, 1, 'Commented', 'Post', '2019-08-26 17:13:14', '2019-08-26 17:20:28'),
(10, NULL, NULL, NULL, 3, 363, 0, 'Followed', 'Following', '2019-08-26 17:31:56', '2019-08-26 17:31:56'),
(11, 143, NULL, 'I have learnt how to publish an article and How to use Doc and to create a blog', 2191, 2191, 0, 'Commented', 'Post', '2019-08-26 17:44:23', '2019-08-26 17:44:23'),
(12, 371, NULL, 'That\'s awesome', 9, 3, 1, 'Commented', 'Post', '2019-08-26 18:15:45', '2019-08-27 10:15:03'),
(13, NULL, NULL, NULL, 834, 856, 0, 'Followed', 'Following', '2019-08-26 18:32:35', '2019-08-26 18:32:35'),
(14, NULL, NULL, NULL, 2240, 59, 0, 'Followed', 'Following', '2019-08-26 19:11:53', '2019-08-26 19:11:53'),
(15, 371, NULL, 'wait, this works?', 6, 3, 1, 'Commented', 'Post', '2019-08-26 20:09:39', '2019-08-27 10:15:03'),
(16, 371, NULL, 'uhm... not really...', 6, 3, 1, 'Commented', 'Post', '2019-08-26 20:09:58', '2019-08-27 10:15:03'),
(17, NULL, NULL, NULL, 492, 6, 1, 'Followed', 'Following', '2019-08-26 20:15:25', '2019-08-26 22:39:57'),
(18, NULL, NULL, NULL, 2245, 6, 1, 'Followed', 'Following', '2019-08-26 20:15:44', '2019-08-26 22:39:57'),
(19, NULL, NULL, NULL, 1051, 6, 1, 'Followed', 'Following', '2019-08-26 20:16:39', '2019-08-26 22:39:57'),
(20, NULL, NULL, NULL, 710, 6, 1, 'Followed', 'Following', '2019-08-26 20:19:29', '2019-08-26 22:39:57'),
(21, NULL, NULL, NULL, 1043, 11, 0, 'Followed', 'Following', '2019-08-26 20:22:22', '2019-08-26 20:22:22'),
(22, NULL, NULL, NULL, 868, 6, 1, 'Followed', 'Following', '2019-08-26 20:24:41', '2019-08-26 22:39:57'),
(23, NULL, NULL, NULL, 612, 6, 1, 'Followed', 'Following', '2019-08-26 20:28:59', '2019-08-26 22:39:57'),
(24, NULL, NULL, NULL, 847, 6, 1, 'Followed', 'Following', '2019-08-26 20:29:07', '2019-08-26 22:39:57'),
(25, NULL, NULL, NULL, 1731, 6, 1, 'Followed', 'Following', '2019-08-26 20:33:34', '2019-08-26 22:39:57'),
(26, 371, NULL, 'But my posts are nowhere to be found. Excellent work boss... Kudos!!', 489, 3, 1, 'Commented', 'Post', '2019-08-26 20:41:27', '2019-08-27 10:15:03'),
(27, NULL, NULL, NULL, 242, 6, 1, 'Followed', 'Following', '2019-08-26 20:47:23', '2019-08-26 22:39:57'),
(28, NULL, NULL, NULL, 1864, 1147, 0, 'Followed', 'Following', '2019-08-26 20:56:48', '2019-08-26 20:56:48'),
(29, NULL, NULL, NULL, 1864, 118, 0, 'Followed', 'Following', '2019-08-26 20:57:56', '2019-08-26 20:57:56'),
(30, NULL, NULL, NULL, 439, 2218, 0, 'Followed', 'Following', '2019-08-26 21:50:51', '2019-08-26 21:50:51'),
(31, NULL, NULL, NULL, 439, 2218, 0, 'Followed', 'Following', '2019-08-26 21:50:55', '2019-08-26 21:50:55'),
(32, NULL, NULL, NULL, 192, 6, 1, 'Followed', 'Following', '2019-08-26 22:36:03', '2019-08-26 22:39:57'),
(33, NULL, NULL, NULL, 550, 6, 1, 'Followed', 'Following', '2019-08-26 22:54:31', '2019-08-27 08:23:47'),
(34, 371, NULL, 'Yay, a comment section too. Nice job', 550, 3, 1, 'Commented', 'Post', '2019-08-26 22:55:17', '2019-08-27 10:15:03'),
(35, NULL, NULL, NULL, 1801, 922, 0, 'Followed', 'Following', '2019-08-26 23:23:49', '2019-08-26 23:23:49'),
(36, NULL, NULL, NULL, 1340, 738, 0, 'Followed', 'Following', '2019-08-27 00:21:36', '2019-08-27 00:21:36'),
(37, NULL, NULL, NULL, 1340, 101, 0, 'Followed', 'Following', '2019-08-27 00:21:54', '2019-08-27 00:21:54'),
(38, 439, NULL, 'Can\'t wait...wish notification is up and running by then. Keeping tab.', 1340, 6, 1, 'Commented', 'Post', '2019-08-27 00:23:31', '2019-08-27 08:23:47'),
(39, NULL, NULL, NULL, 1340, 6, 1, 'Followed', 'Following', '2019-08-27 00:24:28', '2019-08-27 08:23:47'),
(40, NULL, NULL, NULL, 698, 6, 1, 'Followed', 'Following', '2019-08-27 07:26:12', '2019-08-27 08:23:47'),
(41, NULL, NULL, NULL, 1318, 6, 0, 'Followed', 'Following', '2019-08-27 08:34:32', '2019-08-27 08:34:32'),
(42, NULL, NULL, NULL, 1825, 6, 0, 'Followed', 'Following', '2019-08-27 08:35:21', '2019-08-27 08:35:21'),
(43, NULL, NULL, NULL, 1239, 6, 0, 'Followed', 'Following', '2019-08-27 08:36:08', '2019-08-27 08:36:08'),
(44, NULL, NULL, NULL, 1098, 6, 0, 'Followed', 'Following', '2019-08-27 08:36:41', '2019-08-27 08:36:41'),
(45, NULL, NULL, NULL, 1010, 6, 0, 'Followed', 'Following', '2019-08-27 08:36:51', '2019-08-27 08:36:51'),
(46, NULL, NULL, NULL, 669, 458, 0, 'Followed', 'Following', '2019-08-27 08:36:59', '2019-08-27 08:36:59'),
(47, NULL, NULL, NULL, 669, 458, 0, 'Followed', 'Following', '2019-08-27 08:37:02', '2019-08-27 08:37:02'),
(48, NULL, NULL, NULL, 47, 6, 0, 'Followed', 'Following', '2019-08-27 08:37:07', '2019-08-27 08:37:07'),
(49, NULL, NULL, NULL, 669, 458, 0, 'Followed', 'Following', '2019-08-27 08:37:09', '2019-08-27 08:37:09'),
(50, NULL, NULL, NULL, 377, 6, 0, 'Followed', 'Following', '2019-08-27 08:37:45', '2019-08-27 08:37:45'),
(51, NULL, NULL, NULL, 2234, 6, 0, 'Followed', 'Following', '2019-08-27 08:38:18', '2019-08-27 08:38:18'),
(52, NULL, NULL, NULL, 2234, 6, 0, 'Followed', 'Following', '2019-08-27 08:38:26', '2019-08-27 08:38:26'),
(53, NULL, NULL, NULL, 620, 6, 0, 'Followed', 'Following', '2019-08-27 08:38:27', '2019-08-27 08:38:27'),
(54, NULL, NULL, NULL, 129, 6, 0, 'Followed', 'Following', '2019-08-27 08:38:30', '2019-08-27 08:38:30'),
(55, NULL, NULL, NULL, 2234, 6, 0, 'Followed', 'Following', '2019-08-27 08:38:31', '2019-08-27 08:38:31'),
(56, NULL, NULL, NULL, 2234, 6, 0, 'Followed', 'Following', '2019-08-27 08:38:32', '2019-08-27 08:38:32'),
(57, NULL, NULL, NULL, 2234, 6, 0, 'Followed', 'Following', '2019-08-27 08:38:34', '2019-08-27 08:38:34'),
(58, NULL, NULL, NULL, 2234, 6, 0, 'Followed', 'Following', '2019-08-27 08:38:34', '2019-08-27 08:38:34'),
(59, NULL, NULL, NULL, 2234, 6, 0, 'Followed', 'Following', '2019-08-27 08:38:36', '2019-08-27 08:38:36'),
(60, NULL, NULL, NULL, 2234, 6, 0, 'Followed', 'Following', '2019-08-27 08:38:37', '2019-08-27 08:38:37'),
(61, NULL, NULL, NULL, 2234, 6, 0, 'Followed', 'Following', '2019-08-27 08:38:41', '2019-08-27 08:38:41'),
(62, NULL, NULL, NULL, 2234, 6, 0, 'Followed', 'Following', '2019-08-27 08:38:42', '2019-08-27 08:38:42'),
(63, NULL, NULL, NULL, 2234, 6, 0, 'Followed', 'Following', '2019-08-27 08:38:43', '2019-08-27 08:38:43'),
(64, NULL, NULL, NULL, 2234, 6, 0, 'Followed', 'Following', '2019-08-27 08:38:44', '2019-08-27 08:38:44'),
(65, NULL, NULL, NULL, 2234, 6, 0, 'Followed', 'Following', '2019-08-27 08:38:46', '2019-08-27 08:38:46'),
(66, NULL, NULL, NULL, 2234, 6, 0, 'Followed', 'Following', '2019-08-27 08:38:46', '2019-08-27 08:38:46'),
(67, NULL, NULL, NULL, 2271, 6, 0, 'Followed', 'Following', '2019-08-27 08:38:48', '2019-08-27 08:38:48'),
(68, NULL, NULL, NULL, 2234, 6, 0, 'Followed', 'Following', '2019-08-27 08:38:49', '2019-08-27 08:38:49'),
(69, NULL, NULL, NULL, 2234, 6, 0, 'Followed', 'Following', '2019-08-27 08:38:50', '2019-08-27 08:38:50'),
(70, NULL, NULL, NULL, 2234, 6, 0, 'Followed', 'Following', '2019-08-27 08:38:51', '2019-08-27 08:38:51'),
(71, NULL, NULL, NULL, 2234, 6, 0, 'Followed', 'Following', '2019-08-27 08:38:53', '2019-08-27 08:38:53'),
(72, NULL, NULL, NULL, 2234, 6, 0, 'Followed', 'Following', '2019-08-27 08:38:55', '2019-08-27 08:38:55'),
(73, NULL, NULL, NULL, 2234, 6, 0, 'Followed', 'Following', '2019-08-27 08:39:02', '2019-08-27 08:39:02'),
(74, NULL, NULL, NULL, 2271, 6, 0, 'Followed', 'Following', '2019-08-27 08:39:10', '2019-08-27 08:39:10'),
(75, NULL, NULL, NULL, 2234, 6, 0, 'Followed', 'Following', '2019-08-27 08:39:13', '2019-08-27 08:39:13'),
(76, NULL, NULL, NULL, 2234, 6, 0, 'Followed', 'Following', '2019-08-27 08:39:14', '2019-08-27 08:39:14'),
(77, NULL, NULL, NULL, 2234, 6, 0, 'Followed', 'Following', '2019-08-27 08:39:47', '2019-08-27 08:39:47'),
(78, NULL, NULL, NULL, 1276, 6, 0, 'Followed', 'Following', '2019-08-27 08:40:59', '2019-08-27 08:40:59'),
(79, NULL, NULL, NULL, 1886, 6, 0, 'Followed', 'Following', '2019-08-27 08:41:59', '2019-08-27 08:41:59'),
(80, 371, NULL, 'Good to see the comment section', 352, 3, 1, 'Commented', 'Post', '2019-08-27 08:43:48', '2019-08-27 10:15:03'),
(81, NULL, NULL, NULL, 326, 6, 0, 'Followed', 'Following', '2019-08-27 08:44:26', '2019-08-27 08:44:26'),
(82, NULL, NULL, NULL, 432, 6, 0, 'Followed', 'Following', '2019-08-27 08:44:51', '2019-08-27 08:44:51'),
(83, NULL, NULL, NULL, 1030, 6, 0, 'Followed', 'Following', '2019-08-27 08:45:05', '2019-08-27 08:45:05'),
(84, NULL, NULL, NULL, 410, 6, 0, 'Followed', 'Following', '2019-08-27 08:46:10', '2019-08-27 08:46:10'),
(85, NULL, NULL, NULL, 447, 6, 0, 'Followed', 'Following', '2019-08-27 08:48:13', '2019-08-27 08:48:13'),
(86, NULL, NULL, NULL, 1255, 6, 0, 'Followed', 'Following', '2019-08-27 08:49:51', '2019-08-27 08:49:51'),
(87, NULL, NULL, NULL, 619, 6, 0, 'Followed', 'Following', '2019-08-27 08:53:04', '2019-08-27 08:53:04'),
(88, NULL, NULL, NULL, 630, 6, 0, 'Followed', 'Following', '2019-08-27 08:54:03', '2019-08-27 08:54:03'),
(89, NULL, NULL, NULL, 1947, 6, 0, 'Followed', 'Following', '2019-08-27 08:55:02', '2019-08-27 08:55:02'),
(90, NULL, NULL, NULL, 1947, 6, 0, 'Followed', 'Following', '2019-08-27 08:55:07', '2019-08-27 08:55:07'),
(91, NULL, NULL, NULL, 1947, 6, 0, 'Followed', 'Following', '2019-08-27 08:55:09', '2019-08-27 08:55:09'),
(92, NULL, NULL, NULL, 1947, 6, 0, 'Followed', 'Following', '2019-08-27 08:55:16', '2019-08-27 08:55:16'),
(93, NULL, NULL, NULL, 1947, 6, 0, 'Followed', 'Following', '2019-08-27 08:55:20', '2019-08-27 08:55:20'),
(94, NULL, NULL, NULL, 1947, 6, 0, 'Followed', 'Following', '2019-08-27 08:55:21', '2019-08-27 08:55:21'),
(95, NULL, NULL, NULL, 1947, 6, 0, 'Followed', 'Following', '2019-08-27 08:55:22', '2019-08-27 08:55:22'),
(96, NULL, NULL, NULL, 175, 6, 0, 'Followed', 'Following', '2019-08-27 08:56:31', '2019-08-27 08:56:31'),
(97, NULL, NULL, NULL, 673, 6, 0, 'Followed', 'Following', '2019-08-27 08:56:45', '2019-08-27 08:56:45'),
(98, NULL, NULL, NULL, 904, 6, 0, 'Followed', 'Following', '2019-08-27 08:57:06', '2019-08-27 08:57:06'),
(99, NULL, NULL, NULL, 904, 6, 0, 'Followed', 'Following', '2019-08-27 08:57:29', '2019-08-27 08:57:29'),
(100, NULL, NULL, NULL, 1862, 6, 0, 'Followed', 'Following', '2019-08-27 09:01:15', '2019-08-27 09:01:15'),
(101, NULL, NULL, NULL, 1805, 6, 0, 'Followed', 'Following', '2019-08-27 09:01:48', '2019-08-27 09:01:48'),
(102, NULL, NULL, NULL, 380, 6, 0, 'Followed', 'Following', '2019-08-27 09:08:14', '2019-08-27 09:08:14'),
(103, NULL, NULL, NULL, 718, 6, 0, 'Followed', 'Following', '2019-08-27 09:08:44', '2019-08-27 09:08:44'),
(104, NULL, NULL, NULL, 265, 6, 0, 'Followed', 'Following', '2019-08-27 09:10:34', '2019-08-27 09:10:34'),
(105, NULL, NULL, NULL, 1985, 6, 0, 'Followed', 'Following', '2019-08-27 09:11:19', '2019-08-27 09:11:19'),
(106, NULL, NULL, NULL, 902, 6, 0, 'Followed', 'Following', '2019-08-27 09:13:00', '2019-08-27 09:13:00'),
(107, NULL, NULL, NULL, 1591, 6, 0, 'Followed', 'Following', '2019-08-27 09:13:12', '2019-08-27 09:13:12'),
(108, NULL, NULL, NULL, 711, 6, 0, 'Followed', 'Following', '2019-08-27 09:19:00', '2019-08-27 09:19:00'),
(109, NULL, NULL, NULL, 1550, 6, 0, 'Followed', 'Following', '2019-08-27 09:20:28', '2019-08-27 09:20:28'),
(110, NULL, NULL, NULL, 895, 6, 0, 'Followed', 'Following', '2019-08-27 09:20:42', '2019-08-27 09:20:42'),
(111, NULL, NULL, NULL, 1017, 6, 0, 'Followed', 'Following', '2019-08-27 09:23:39', '2019-08-27 09:23:39'),
(112, NULL, NULL, NULL, 867, 6, 0, 'Followed', 'Following', '2019-08-27 09:42:24', '2019-08-27 09:42:24'),
(113, NULL, NULL, NULL, 2277, 6, 0, 'Followed', 'Following', '2019-08-27 09:43:16', '2019-08-27 09:43:16'),
(114, NULL, NULL, NULL, 1212, 6, 0, 'Followed', 'Following', '2019-08-27 09:43:43', '2019-08-27 09:43:43'),
(115, NULL, NULL, NULL, 475, 6, 0, 'Followed', 'Following', '2019-08-27 09:49:01', '2019-08-27 09:49:01'),
(116, NULL, NULL, NULL, 475, 6, 0, 'Followed', 'Following', '2019-08-27 09:49:17', '2019-08-27 09:49:17'),
(117, NULL, NULL, NULL, 327, 6, 0, 'Followed', 'Following', '2019-08-27 09:52:02', '2019-08-27 09:52:02'),
(118, NULL, NULL, NULL, 955, 6, 0, 'Followed', 'Following', '2019-08-27 09:53:37', '2019-08-27 09:53:37'),
(119, 375, NULL, 'Great', 352, 3, 1, 'Commented', 'Post', '2019-08-27 09:54:36', '2019-08-27 10:15:03'),
(120, NULL, NULL, NULL, 352, 6, 0, 'Followed', 'Following', '2019-08-27 10:00:20', '2019-08-27 10:00:20'),
(121, NULL, NULL, NULL, 352, 7, 0, 'Followed', 'Following', '2019-08-27 10:03:04', '2019-08-27 10:03:04'),
(122, NULL, NULL, NULL, 1836, 6, 0, 'Followed', 'Following', '2019-08-27 10:15:20', '2019-08-27 10:15:20'),
(123, NULL, NULL, NULL, 653, 6, 0, 'Followed', 'Following', '2019-08-27 10:16:03', '2019-08-27 10:16:03'),
(124, NULL, NULL, NULL, 329, 6, 0, 'Followed', 'Following', '2019-08-27 10:16:09', '2019-08-27 10:16:09'),
(125, NULL, NULL, NULL, 891, 6, 0, 'Followed', 'Following', '2019-08-27 10:40:50', '2019-08-27 10:40:50'),
(126, NULL, NULL, NULL, 945, 6, 0, 'Followed', 'Following', '2019-08-27 10:52:32', '2019-08-27 10:52:32'),
(127, NULL, NULL, NULL, 168, 6, 0, 'Followed', 'Following', '2019-08-27 10:57:14', '2019-08-27 10:57:14'),
(128, NULL, NULL, NULL, 143, 6, 0, 'Followed', 'Following', '2019-08-27 11:48:38', '2019-08-27 11:48:38'),
(129, NULL, NULL, NULL, 361, 6, 0, 'Followed', 'Following', '2019-08-27 12:03:21', '2019-08-27 12:03:21'),
(130, NULL, NULL, NULL, 361, 6, 0, 'Followed', 'Following', '2019-08-27 12:03:37', '2019-08-27 12:03:37'),
(131, NULL, NULL, NULL, 2287, 6, 0, 'Followed', 'Following', '2019-08-27 12:22:03', '2019-08-27 12:22:03'),
(132, 439, NULL, 'Congrats', 4, 6, 0, 'Commented', 'Post', '2019-08-27 12:23:55', '2019-08-27 12:23:55'),
(133, NULL, NULL, NULL, 47, 535, 0, 'Followed', 'Following', '2019-08-27 12:30:54', '2019-08-27 12:30:54'),
(134, 439, NULL, 'Congratulations are in order. It\'s great to be working with you on these', 3, 6, 0, 'Commented', 'Post', '2019-08-27 12:31:32', '2019-08-27 12:31:32'),
(135, NULL, NULL, NULL, 1101, 326, 0, 'Followed', 'Following', '2019-08-27 13:00:37', '2019-08-27 13:00:37'),
(136, NULL, NULL, NULL, 1199, 6, 0, 'Followed', 'Following', '2019-08-27 13:09:29', '2019-08-27 13:09:29'),
(137, NULL, NULL, NULL, 1439, 1047, 0, 'Followed', 'Following', '2019-08-27 13:10:26', '2019-08-27 13:10:26'),
(138, NULL, NULL, NULL, 1439, 1926, 0, 'Followed', 'Following', '2019-08-27 13:11:49', '2019-08-27 13:11:49'),
(139, NULL, NULL, NULL, 2282, 6, 0, 'Followed', 'Following', '2019-08-27 14:15:32', '2019-08-27 14:15:32'),
(140, NULL, NULL, NULL, 2282, 6, 0, 'Followed', 'Following', '2019-08-27 14:15:43', '2019-08-27 14:15:43'),
(141, NULL, NULL, NULL, 2228, 326, 0, 'Followed', 'Following', '2019-08-27 14:55:09', '2019-08-27 14:55:09'),
(142, NULL, NULL, NULL, 24, 7, 0, 'Followed', 'Following', '2019-08-27 14:56:04', '2019-08-27 14:56:04'),
(143, NULL, NULL, NULL, 916, 6, 0, 'Followed', 'Following', '2019-08-27 15:19:34', '2019-08-27 15:19:34'),
(144, 360, 8, 'yh', 4, 3, 1, 'Replied', 'Post', '2019-08-27 15:32:51', '2019-08-29 12:40:03'),
(145, NULL, NULL, NULL, 4, 29, 1, 'Followed', 'Following', '2019-08-28 17:21:17', '2019-08-28 17:25:11'),
(146, NULL, NULL, NULL, 29, 4, 1, 'Followed', 'Following', '2019-08-28 17:23:09', '2019-09-05 16:20:09'),
(148, 986, NULL, NULL, 4, 2, 1, 'Like', 'Reaction', '2019-08-30 10:26:54', '2019-08-31 18:01:30'),
(149, 986, NULL, NULL, 4, 2, 1, 'Love', 'Reaction', '2019-08-30 10:27:06', '2019-08-31 18:01:30'),
(150, 985, NULL, NULL, 4, 2, 1, 'Love', 'Reaction', '2019-08-30 10:27:08', '2019-08-31 18:01:30'),
(151, 985, NULL, NULL, 1, 2, 1, 'Love', 'Reaction', '2019-08-30 10:29:21', '2019-08-31 18:01:30'),
(152, 992, NULL, NULL, 2, 2, 1, 'Like', 'Reaction', '2019-08-31 12:04:31', '2019-08-31 18:01:30'),
(154, 355, NULL, NULL, 1, 7, 0, 'Like', 'Reaction', '2019-08-31 17:21:21', '2019-08-31 17:21:21'),
(155, 353, NULL, NULL, 1, 7, 0, 'Love', 'Reaction', '2019-08-31 17:21:24', '2019-08-31 17:21:24'),
(156, 355, 154, 'Nice', 1, 1, 1, 'Replied', 'Post', '2019-08-31 17:21:51', '2019-09-07 14:44:46'),
(157, 996, NULL, NULL, 1, 1, 1, 'Like', 'Reaction', '2019-08-31 17:44:12', '2019-09-07 14:44:46'),
(158, 992, NULL, NULL, 9, 2, 1, 'Love', 'Reaction', '2019-08-31 17:56:21', '2019-08-31 18:01:30'),
(159, 992, NULL, NULL, 9, 2, 1, 'Love', 'Reaction', '2019-08-31 17:56:22', '2019-08-31 18:01:30'),
(160, 992, NULL, NULL, 9, 2, 1, 'Like', 'Reaction', '2019-08-31 17:56:22', '2019-08-31 18:01:30'),
(161, 992, NULL, 'Comments just spilled out here, nobody typed', 9, 2, 1, 'Commented', 'Post', '2019-08-31 17:56:53', '2019-08-31 18:01:30'),
(162, 992, NULL, NULL, 2, 2, 1, 'Love', 'Reaction', '2019-08-31 18:02:26', '2019-09-02 04:42:11'),
(163, 992, NULL, 'that true', 2, 2, 1, 'Commented', 'Post', '2019-08-31 18:03:03', '2019-09-02 04:42:11'),
(164, NULL, NULL, NULL, 34, 2, 1, 'Followed', 'Following', '2019-08-31 20:06:55', '2019-09-02 04:42:11'),
(171, 993, NULL, NULL, 34, 2, 1, 'Love', 'Reaction', '2019-09-01 13:33:20', '2019-09-02 04:42:11'),
(172, 993, NULL, NULL, 34, 2, 1, 'Like', 'Reaction', '2019-09-01 13:33:23', '2019-09-02 04:42:11'),
(173, 996, NULL, NULL, 3, 1, 1, 'Like', 'Reaction', '2019-09-01 17:29:55', '2019-09-07 14:44:46'),
(174, 996, NULL, NULL, 3, 1, 1, 'Love', 'Reaction', '2019-09-01 17:29:57', '2019-09-07 14:44:46'),
(175, 998, NULL, NULL, 9, 2, 1, 'Like', 'Reaction', '2019-09-02 15:56:51', '2019-09-02 16:38:17'),
(177, 998, NULL, NULL, 3, 2, 1, 'Love', 'Reaction', '2019-09-03 02:25:12', '2019-09-04 13:29:22'),
(178, 995, NULL, NULL, 3, 1, 1, 'Love', 'Reaction', '2019-09-03 02:25:57', '2019-09-07 14:44:46'),
(179, 998, NULL, 'i wish there was smthn better', 2, 2, 1, 'Commented', 'Post', '2019-09-04 13:37:44', '2019-09-07 14:44:55'),
(180, 999, NULL, 'Good', 4, 4, 1, 'Commented', 'Post', '2019-09-05 10:24:34', '2019-09-05 16:20:09'),
(181, 998, NULL, 'Test', 3, 2, 1, 'Commented', 'Post', '2019-09-05 11:37:26', '2019-09-07 14:44:55'),
(182, 998, NULL, 'Another test', 3, 2, 1, 'Commented', 'Post', '2019-09-05 11:37:34', '2019-09-07 14:44:55'),
(183, 993, NULL, 'Hi', 2, 2, 1, 'Commented', 'Post', '2019-09-05 12:50:42', '2019-09-07 14:44:55'),
(184, 998, NULL, 'all set', 2, 2, 1, 'Commented', 'Post', '2019-09-05 16:16:13', '2019-09-07 14:44:55'),
(185, 1007, NULL, 'test', 3, 3, 0, 'Commented', 'Post', '2019-09-06 18:40:19', '2019-09-06 18:40:19'),
(186, 1007, NULL, 'testt', 3, 3, 0, 'Commented', 'Post', '2019-09-06 18:40:24', '2019-09-06 18:40:24'),
(187, 1007, 186, 'test', 3, 3, 0, 'Replied', 'Post', '2019-09-06 18:40:29', '2019-09-06 18:40:29'),
(188, 1007, 186, 'testr', 3, 3, 0, 'Replied', 'Post', '2019-09-06 18:40:38', '2019-09-06 18:40:38'),
(189, 998, 182, 'Oya tester', 4, 3, 0, 'Replied', 'Post', '2019-09-07 09:33:29', '2019-09-07 09:33:29'),
(190, 1002, NULL, 'just some funny comment', 22, 22, 0, 'Commented', 'Post', '2019-09-07 09:43:20', '2019-09-07 09:43:20'),
(191, 1002, 190, 'I just replied you', 22, 22, 0, 'Replied', 'Post', '2019-09-07 09:43:38', '2019-09-07 09:43:38'),
(193, 993, NULL, NULL, 4, 2, 1, 'Like', 'Reaction', '2019-09-07 14:30:13', '2019-09-07 14:44:55'),
(194, 983, NULL, NULL, 4, 2, 1, 'Like', 'Reaction', '2019-09-07 14:30:15', '2019-09-07 14:44:55'),
(195, 983, NULL, NULL, 4, 2, 1, 'Love', 'Reaction', '2019-09-07 14:30:16', '2019-09-07 14:44:55'),
(197, 985, NULL, NULL, 2, 2, 1, 'Like', 'Reaction', '2019-09-07 14:30:25', '2019-09-07 14:44:55'),
(198, 985, NULL, NULL, 2, 2, 1, 'Love', 'Reaction', '2019-09-07 14:30:26', '2019-09-07 14:44:55'),
(199, 999, NULL, NULL, 1, 4, 1, 'Like', 'Reaction', '2019-09-07 14:44:58', '2019-09-07 16:48:04'),
(202, 1007, NULL, NULL, 3, 3, 0, 'Like', 'Reaction', '2019-09-07 14:45:08', '2019-09-07 14:45:08'),
(216, 998, NULL, NULL, 2, 2, 0, 'Like', 'Reaction', '2019-09-07 16:33:27', '2019-09-07 16:33:27'),
(219, 999, NULL, NULL, 4, 4, 1, 'Like', 'Reaction', '2019-09-07 17:11:26', '2019-09-19 12:18:38'),
(222, 998, NULL, NULL, 4, 2, 0, 'Love', 'Reaction', '2019-09-07 17:11:41', '2019-09-07 17:11:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
