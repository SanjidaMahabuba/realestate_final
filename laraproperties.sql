-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2024 at 06:11 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laraproperties`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'ydEq6RIHzhAwQ9mJHzk8Aqkef1Ak1fK7', 1, '2021-09-14 14:55:45', '2021-09-14 14:55:45', '2021-09-14 14:55:45'),
(2, 1, 'z0RQMhdT0dF0CjogEi72DLDcjrl490ru', 1, '2023-12-30 10:06:26', '2023-12-30 10:06:26', '2023-12-30 10:06:26');

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

CREATE TABLE `audit_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_histories`
--

INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 0, 'property', '{\"_token\":\"VCcnazwyWq2fBe3XhoFxRp714XOmBecHOIQgLzBQ\",\"name\":\"South Facing Apartment\",\"slug\":\"south-facing-apartment\",\"slug_id\":\"0\",\"model\":\"Botble\\\\RealEstate\\\\Models\\\\Property\",\"type_id\":\"1\",\"description\":\"lorem ipsum dolor sit amet\",\"content\":\"<p>lorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit amet<\\/p>\",\"images\":\"[\\\"accounts\\/flat.jpg\\\",\\\"accounts\\/flat-2.jpg\\\"]\",\"city_id\":\"1\",\"location\":\"Calofornia\",\"latitude\":\"208547884\",\"longitude\":\"31145874\",\"number_bedroom\":\"3\",\"number_bathroom\":\"3\",\"number_floor\":\"1\",\"square\":\"1600\",\"price\":\"50000\",\"currency_id\":\"1\",\"period\":\"day\",\"auto_renew\":\"1\",\"category_id\":\"1\",\"facilities\":[{\"id\":null},{\"distance\":null}],\"features\":[\"2\",\"3\",\"4\",\"6\",\"11\"],\"video\":{\"thumbnail\":null,\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=T3Oo7VaeW-E\"},\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"header_layout\":\"layout-1\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '127.0.0.1', 0, 35, 'South Facing Apartment', 'info', '2023-12-30 10:56:00', '2023-12-30 10:56:00'),
(2, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2023-12-30 11:00:23', '2023-12-30 11:00:23'),
(3, 1, 'account', '{\"_token\":\"BVxuVyPCSassprr7AfDN7Pq6QBZjz1QoAvGVd1Yi\",\"first_name\":\"Amanur\",\"last_name\":\"Rahman\",\"username\":\"araman\",\"phone\":null,\"email\":\"araman666@gmail.com\",\"is_featured\":\"0\",\"password\":null,\"password_confirmation\":null,\"submit\":\"save\",\"avatar_image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '127.0.0.1', 1, 15, 'Amanur Rahman', 'primary', '2023-12-30 11:02:19', '2023-12-30 11:02:19'),
(4, 1, 'property', '{\"_token\":\"BVxuVyPCSassprr7AfDN7Pq6QBZjz1QoAvGVd1Yi\",\"name\":\"South Facing Apartment\",\"slug\":\"south-facing-apartment\",\"slug_id\":\"1405\",\"model\":\"Botble\\\\RealEstate\\\\Models\\\\Property\",\"type_id\":\"1\",\"is_featured\":\"0\",\"description\":\"lorem ipsum dolor sit amet\",\"content\":\"<p>lorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit amet<\\/p>\",\"images\":[null,\"accounts\\/flat.jpg\",\"accounts\\/flat-2.jpg\"],\"city_id\":\"1\",\"location\":\"Calofornia\",\"latitude\":\"208547884\",\"longitude\":\"31145874\",\"number_bedroom\":\"3\",\"number_bathroom\":\"3\",\"number_floor\":\"1\",\"square\":\"1600\",\"price\":\"50000.00\",\"currency_id\":\"1\",\"period\":\"day\",\"never_expired\":\"1\",\"auto_renew\":\"0\",\"facilities\":[{\"id\":null},{\"distance\":null}],\"features\":[\"2\",\"3\",\"4\",\"6\",\"11\"],\"video\":{\"thumbnail\":null,\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=watch?v=T3Oo7VaeW-E\"},\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"header_layout\":\"layout-1\",\"moderation_status\":\"pending\",\"category_id\":\"1\",\"author_id\":\"15\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '127.0.0.1', 1, 35, 'South Facing Apartment', 'primary', '2023-12-30 11:05:56', '2023-12-30 11:05:56'),
(5, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'System Admin', 'info', '2023-12-30 11:06:22', '2023-12-30 11:06:22'),
(6, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2024-10-10 09:13:58', '2024-10-10 09:13:58'),
(7, 1, 'account', '{\"_token\":\"xFk7bmA2XXm3oAfSC4HOv0cink2LioEyiIs01vdX\",\"first_name\":\"Amanur\",\"last_name\":\"Rahman\",\"username\":\"araman\",\"phone\":\"01720626250\",\"email\":\"araman666@gmail.com\",\"is_featured\":\"0\",\"is_change_password\":\"1\",\"password\":\"12345678\",\"password_confirmation\":\"12345678\",\"submit\":\"save\",\"avatar_image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '127.0.0.1', 1, 15, 'Amanur Rahman', 'primary', '2024-10-10 09:16:06', '2024-10-10 09:16:06'),
(8, 1, 'property', '{\"_token\":\"iz0wDGlIbiuiNJc0PZmXPBeGRiODd2BaNCRaoYkn\",\"name\":\"South Facing Apartment\",\"slug\":\"south-facing-apartment\",\"slug_id\":\"1405\",\"model\":\"Botble\\\\RealEstate\\\\Models\\\\Property\",\"type_id\":\"1\",\"is_featured\":\"0\",\"description\":\"lorem ipsum dolor sit amet\",\"content\":\"<p>lorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit amet<\\/p>\",\"images\":[null,\"accounts\\/flat.jpg\",\"accounts\\/flat-2.jpg\"],\"city_id\":\"1\",\"location\":\"Calofornia\",\"latitude\":\"208547884\",\"longitude\":\"31145874\",\"number_bedroom\":\"3\",\"number_bathroom\":\"3\",\"number_floor\":\"1\",\"square\":\"1600\",\"price\":\"50000.00\",\"currency_id\":\"1\",\"period\":\"day\",\"never_expired\":\"1\",\"auto_renew\":\"0\",\"facilities\":[{\"id\":null},{\"distance\":null}],\"features\":[\"2\",\"3\",\"4\",\"6\",\"11\"],\"video\":{\"thumbnail\":null,\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=watch?v=watch?v=T3Oo7VaeW-E\"},\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"header_layout\":\"layout-1\",\"moderation_status\":\"approved\",\"category_id\":\"1\",\"author_id\":\"15\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '127.0.0.1', 1, 35, 'South Facing Apartment', 'primary', '2024-10-10 09:17:47', '2024-10-10 09:17:47'),
(9, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'System Admin', 'info', '2024-10-10 09:32:57', '2024-10-10 09:32:57'),
(10, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2024-10-10 09:38:42', '2024-10-10 09:38:42'),
(11, 1, 'account', '{\"_token\":\"qSwyeGWnizb9ObFPXhmd41SzidK1GQIi3TPJhLxb\",\"first_name\":\"Amanur\",\"last_name\":\"Rahman\",\"username\":\"araman\",\"phone\":\"01720626250\",\"email\":\"araman666@gmail.com\",\"is_featured\":\"1\",\"password\":null,\"password_confirmation\":null,\"submit\":\"save\",\"avatar_image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '127.0.0.1', 1, 15, 'Amanur Rahman', 'primary', '2024-10-10 09:42:18', '2024-10-10 09:42:18'),
(12, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'System Admin', 'info', '2024-10-10 09:50:21', '2024-10-10 09:50:21'),
(13, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2024-10-10 09:53:22', '2024-10-10 09:53:22'),
(14, 1, 'property', '{\"_token\":\"Jl3zBxAGr6RtB1B6JvqYLquQDEbcxdP36qxOIvv1\",\"name\":\"Maia Resort\",\"slug\":\"maia-resort\",\"slug_id\":\"1404\",\"model\":\"Botble\\\\RealEstate\\\\Models\\\\Property\",\"type_id\":\"4\",\"is_featured\":\"1\",\"description\":\"Est neque est ad et quia doloremque. Qui qui repudiandae similique reprehenderit in cum non qui. Sed et facere dolor facere similique illum est qui.\",\"content\":\"<p>Cat. \'I\'d nearly forgotten that I\'ve got to come out among the branches, and every now and then quietly marched off after the others. \'We must burn the house of the party were placed along the course, here and there was nothing so VERY much out of the table, half hoping that they must be really offended. \'We won\'t talk about wasting IT. It\'s HIM.\' \'I don\'t quite understand you,\' she said, \'and see whether it\'s marked \\\"poison\\\" or not\'; for she was walking hand in hand, in couples: they were all locked; and when she next peeped out the proper way of speaking to a snail. \\\"There\'s a porpoise close behind it when she went on at last, more calmly, though still sobbing a little animal (she couldn\'t guess of what sort it was) scratching and scrambling about in the distance. \'And yet what a wonderful dream it had come back again, and that\'s very like having a game of play with a soldier on each side to guard him; and near the centre of the house of the baby?\' said the King, \'that saves a.<\\/p><p class=\\\"text-center\\\"><img src=\\\"http:\\/\\/localhost\\/storage\\/properties\\/p-5-400xauto.jpg\\\"><\\/p><p>The hedgehog was engaged in a tone of great curiosity. \'It\'s a pun!\' the King repeated angrily, \'or I\'ll have you got in as well,\' the Hatter went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen turned crimson with fury, and, after glaring at her as she spoke. \'I must be a very small cake, on which the words a little, and then added them up, and there stood the Queen shouted at the Caterpillar\'s making such a neck as that! No, no! You\'re a serpent; and there\'s.<\\/p><p class=\\\"text-center\\\"><img src=\\\"http:\\/\\/localhost\\/storage\\/properties\\/p-13-400xauto.jpg\\\"><\\/p><p>I tell you!\' But she did not much larger than a rat-hole: she knelt down and began bowing to the other: the Duchess said in a solemn tone, \'For the Duchess. \'I make you grow taller, and the March Hare went on. \'I do,\' Alice said to the seaside once in the world you fly, Like a tea-tray in the world you fly, Like a tea-tray in the middle of her age knew the name \'W. RABBIT\' engraved upon it. She felt very lonely and low-spirited. In a little of her favourite word \'moral,\' and the small ones choked and had just begun \'Well, of all her fancy, that: they never executes nobody, you know. Come on!\' \'Everybody says \\\"come on!\\\" here,\' thought Alice, \'as all the things get used to read fairy-tales, I fancied that kind of authority over Alice. \'Stand up and picking the daisies, when suddenly a footman in livery, with a yelp of delight, which changed into alarm in another minute the whole pack rose up into hers--she could hear the name of nearly everything there. \'That\'s the most confusing thing.<\\/p><p class=\\\"text-center\\\"><img src=\\\"http:\\/\\/localhost\\/storage\\/properties\\/p-16-400xauto.jpg\\\"><\\/p><p>ONE respectable person!\' Soon her eye fell on a crimson velvet cushion; and, last of all her wonderful Adventures, till she got back to the other: the Duchess was sitting on a bough of a globe of goldfish she had finished, her sister kissed her, and said, \'It was the White Rabbit, \'and that\'s why. Pig!\' She said it to speak first, \'why your cat grins like that?\' \'It\'s a friend of mine--a Cheshire Cat,\' said Alice: \'besides, that\'s not a moment to be otherwise than what you mean,\' the March Hare. \'It was the Cat in a melancholy way, being quite unable to move. She soon got it out again, and Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a sorrowful tone; \'at least there\'s no use going back to finish his story. CHAPTER IV. The Rabbit Sends in a low, trembling voice. \'There\'s more evidence to come yet, please your Majesty?\' he asked. \'Begin at the White Rabbit; \'in fact, there\'s nothing written on the English coast you find a number of bathing machines in the.<\\/p>\",\"images\":[null,\"properties\\/camera.jpg\",\"properties\\/p-18.jpg\",\"properties\\/p-20.jpg\",\"properties\\/p-13.jpg\",\"properties\\/p-14.jpg\"],\"city_id\":\"7\",\"location\":\"603 Zboncak TurnpikeAndreaneville, AK 69771\",\"latitude\":\"-3.932417\",\"longitude\":\"68.703366\",\"number_bedroom\":\"1\",\"number_bathroom\":\"4\",\"number_floor\":\"5\",\"square\":\"273\",\"price\":\"101653.00\",\"currency_id\":\"1\",\"period\":\"month\",\"never_expired\":\"1\",\"auto_renew\":\"0\",\"facilities\":{\"19\":{\"id\":\"19\",\"distance\":null},\"16\":{\"id\":\"16\",\"distance\":null}},\"features\":[\"14\",\"24\"],\"video\":{\"thumbnail\":null,\"url\":null},\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"header_layout\":\"layout-1\",\"moderation_status\":\"approved\",\"category_id\":\"8\",\"author_id\":\"10\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '127.0.0.1', 1, 34, 'Maia Resort', 'primary', '2024-10-10 09:57:19', '2024-10-10 09:57:19'),
(15, 1, 'country', '{\"_token\":\"Jl3zBxAGr6RtB1B6JvqYLquQDEbcxdP36qxOIvv1\",\"name\":\"Bangladesh\",\"nationality\":\"bangladeshi\",\"order\":\"0\",\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":\"0\",\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '127.0.0.1', 1, 3, 'Bangladesh', 'info', '2024-10-10 10:01:36', '2024-10-10 10:01:36'),
(16, 1, 'country', '{\"_token\":\"Jl3zBxAGr6RtB1B6JvqYLquQDEbcxdP36qxOIvv1\",\"name\":\"Bangladesh\",\"nationality\":\"bangladeshi\",\"order\":\"1\",\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '127.0.0.1', 1, 4, 'Bangladesh', 'info', '2024-10-10 10:03:19', '2024-10-10 10:03:19'),
(17, 1, 'state', '{\"_token\":\"Jl3zBxAGr6RtB1B6JvqYLquQDEbcxdP36qxOIvv1\",\"name\":\"Dhaka\",\"abbreviation\":\"DH\",\"country_id\":\"4\",\"order\":\"1\",\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '127.0.0.1', 1, 70, 'Dhaka', 'info', '2024-10-10 10:04:00', '2024-10-10 10:04:00'),
(18, 1, 'city', '{\"_token\":\"Jl3zBxAGr6RtB1B6JvqYLquQDEbcxdP36qxOIvv1\",\"name\":\"Dhaka City\",\"slug\":\"dhaka-city\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Location\\\\Models\\\\City\",\"state_id\":\"70\",\"country_id\":\"4\",\"order\":\"1\",\"is_featured\":\"1\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\",\"image\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '127.0.0.1', 1, 575, 'Dhaka City', 'info', '2024-10-10 10:04:51', '2024-10-10 10:04:51'),
(19, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'System Admin', 'info', '2024-10-10 10:10:08', '2024-10-10 10:10:08');

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`id`, `name`, `alias`, `description`, `content`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Sign up', 'sign-up', '', '\n<div class=\"raw-html-embed\">\n    <section class=\"theme-bg call-to-act-wrap\">\n        <div class=\"container\">\n            <div class=\"row\">\n                <div class=\"col-lg-12\">\n\n                    <div class=\"call-to-act\">\n                        <div class=\"call-to-act-head\">\n                            <h3>Want to Become a Real Estate Agent?</h3>\n                            <span>We\'ll help you to grow your career and growth.</span>\n                        </div>\n                        <a href=\"/register\" class=\"btn btn-call-to-act\">Sign Up Today</a>\n                    </div>\n\n                </div>\n            </div>\n        </div>\n    </section>\n</div>\n                    ', 'published', NULL, '2023-12-30 10:06:27', '2023-12-30 10:06:27'),
(2, 'Download App', 'download-app', '', '\n<div class=\"raw-html-embed\">\n    <section class=\"bg-light\">\n        <div class=\"container\">\n            <div class=\"row align-items-center\">\n                <div class=\"col-lg-7 col-md-12 col-sm-12 content-column\">\n                    <div class=\"content_block_2\">\n                        <div class=\"content-box\">\n                        <div class=\"sec-title light\">\n                            <p class=\"text-blue\">Download apps</p>\n                            <h2>Download App Free App For Android And IPhone</h2>\n                        </div>\n                        <div class=\"text\"><p></p></div>\n                        <div class=\"btn-box clearfix mt-5\">\n                            <a href=\"\" class=\"download-btn play-store\"\n                            ><i class=\"fab fa-google-play\"></i> <span>Download on</span>\n                            <h3>Google Play</h3></a\n                            >\n                            <a href=\"\" class=\"download-btn app-store\"\n                            ><i class=\"fab fa-apple\"></i> <span>Download on</span>\n                            <h3>App Store</h3></a\n                            >\n                        </div>\n                        </div>\n                    </div>\n                </div>\n                <div class=\"col-lg-5 col-md-12 col-sm-12 image-column\">\n                    <div class=\"image-box\">\n                        <figure class=\"image\">\n                        <img\n                            src=\"/storage/banners/app.png\"\n                            alt=\"image\"\n                            class=\"img-fluid\"\n                        />\n                        </figure>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </section>\n</div>\n\n                    ', 'published', NULL, '2023-12-30 10:06:27', '2023-12-30 10:06:27'),
(3, 'Download App Footer', 'download-app-footer', '', '\n<div class=\"raw-html-embed\">\n    <div class=\"footer-widget\">\n        <h4 class=\"widget-title\">Download Apps</h4>\n        <a href=\"#\" class=\"other-store-link\">\n            <div class=\"other-store-app\">\n                <div class=\"os-app-icon\">\n                    <i class=\"lni-playstore theme-cl\"></i>\n                </div>\n                <div class=\"os-app-caps\">\n                    Google Play\n                    <span>Get It Now</span>\n                </div>\n            </div>\n        </a>\n        <a href=\"#\" class=\"other-store-link\">\n            <div class=\"other-store-app\">\n                <div class=\"os-app-icon\">\n                    <i class=\"lni-apple theme-cl\"></i>\n                </div>\n                <div class=\"os-app-caps\">\n                    App Store\n                    <span>Now it Available</span>\n                </div>\n            </div>\n        </a>\n    </div>\n</div>\n                    ', 'published', NULL, '2023-12-30 10:06:27', '2023-12-30 10:06:27'),
(4, 'How It Works?', 'how-it-works', '', '\n<div class=\"raw-html-embed\">\n    <section>\n        <div class=\"container\">\n\n            <div class=\"row justify-content-center\">\n                <div class=\"col-lg-7 col-md-10 text-center\">\n                    <div class=\"sec-heading center\">\n                        <h2>How It Works?</h2>\n                        <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores</p>\n                    </div>\n                </div>\n            </div>\n\n            <div class=\"row\">\n                <div class=\"col-lg-4 col-md-4\">\n                    <div class=\"middle-icon-features-item\">\n                        <div class=\"icon-features-wrap\"><div class=\"middle-icon-large-features-box f-light-success\"><i class=\"ti-receipt text-success\"></i></div></div>\n                        <div class=\"middle-icon-features-content\">\n                            <h4>Evaluate Property</h4>\n                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have Ipsum available.</p>\n                        </div>\n                    </div>\n                </div>\n\n                <div class=\"col-lg-4 col-md-4\">\n                    <div class=\"middle-icon-features-item\">\n                        <div class=\"icon-features-wrap\"><div class=\"middle-icon-large-features-box f-light-warning\"><i class=\"ti-user text-warning\"></i></div></div>\n                        <div class=\"middle-icon-features-content\">\n                            <h4>Meet Your Agent</h4>\n                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have Ipsum available.</p>\n                        </div>\n                    </div>\n                </div>\n\n                <div class=\"col-lg-4 col-md-4\">\n                    <div class=\"middle-icon-features-item remove\">\n                        <div class=\"icon-features-wrap\"><div class=\"middle-icon-large-features-box f-light-blue\"><i class=\"ti-shield text-blue\"></i></div></div>\n                        <div class=\"middle-icon-features-content\">\n                            <h4>Close The Deal</h4>\n                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have Ipsum available.</p>\n                        </div>\n                    </div>\n                </div>\n            </div>\n\n        </div>\n    </section>\n</div>', 'published', NULL, '2023-12-30 10:06:27', '2023-12-30 10:06:27'),
(5, 'Achievement', 'achievement', '', '\n<div class=\"raw-html-embed\">\n    <section>\n        <div class=\"container\">\n\n            <div class=\"row justify-content-center\">\n                <div class=\"col-lg-7 col-md-10 text-center\">\n                    <div class=\"sec-heading center mb-4\">\n                        <h2>Achievement</h2>\n                        <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores</p>\n                    </div>\n                </div>\n            </div>\n\n            <div class=\"row\">\n                <div class=\"col-lg-3 col-md-3 col-sm-6\">\n                    <div class=\"achievement-wrap\">\n                        <div class=\"achievement-content\">\n                            <h4>20500+</h4>\n                            <p>Completed Property</p>\n                        </div>\n                    </div>\n                </div>\n\n                <div class=\"col-lg-3 col-md-3 col-sm-6\">\n                    <div class=\"achievement-wrap\">\n                        <div class=\"achievement-content\">\n                            <h4>7600+</h4>\n                            <p>Property Sales</p>\n                        </div>\n                    </div>\n                </div>\n\n                <div class=\"col-lg-3 col-md-3 col-sm-6\">\n                    <div class=\"achievement-wrap\">\n                        <div class=\"achievement-content\">\n                            <h4>12300+</h4>\n                            <p>Apartment Rent</p>\n                        </div>\n                    </div>\n                </div>\n\n                <div class=\"col-lg-3 col-md-3 col-sm-6\">\n                    <div class=\"achievement-wrap\">\n                        <div class=\"achievement-content\">\n                            <h4>15200+</h4>\n                            <p>Happy Clients</p>\n                        </div>\n                    </div>\n                </div>\n\n            </div>\n\n        </div>\n    </section>\n    <div class=\"clearfix\"></div>\n</div>', 'published', NULL, '2023-12-30 10:06:27', '2023-12-30 10:06:27'),
(6, 'Our Story', 'our-story', '', '\n<div class=\"raw-html-embed\">\n    <section>\n        <div class=\"container\">\n            <div class=\"row align-items-center\">\n\n                <div class=\"col-lg-6 col-md-6\">\n                    <img src=\"/storage/block/sb.png\" class=\"img-fluid\" alt=\"\">\n                </div>\n\n                <div class=\"col-lg-6 col-md-6\">\n                    <div class=\"story-wrap explore-content\">\n\n                        <h2>Our Story</h2>\n                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>\n\n                    </div>\n                </div>\n            </div>\n        </div>\n    </section>\n</div>\n                    ', 'published', NULL, '2023-12-30 10:06:27', '2023-12-30 10:06:27'),
(7, 'Our mission', 'our-mission', '', '\n<div class=\"raw-html-embed\">\n    <section>\n        <div class=\"container\">\n\n            <div class=\"row\">\n                <div class=\"col-lg-12 col-md-12\">\n                    <div class=\"sec-heading center\">\n                        <h2>Our Mission &amp; Work Process</h2>\n                        <p>Professional &amp; Dedicated Team</p>\n                    </div>\n                </div>\n            </div>\n\n            <div class=\"row align-items-center\">\n\n                <div class=\"col-lg-6 col-md-6\">\n\n                    <div class=\"icon-mi-left\">\n                        <i class=\"ti-lock theme-cl\"></i>\n                        <div class=\"icon-mi-left-content\">\n                            <h4>Fully Secure &amp; 24x7 Dedicated Support</h4>\n                            <p>If you are an individual client, or just a business startup looking for good backlinks for your website.</p>\n                        </div>\n                    </div>\n\n                    <div class=\"icon-mi-left\">\n                        <i class=\"ti-twitter theme-cl\"></i>\n                        <div class=\"icon-mi-left-content\">\n                            <h4>Manage your Social &amp; Busness Account Carefully</h4>\n                            <p>If you are an individual client, or just a business startup looking for good backlinks for your website.</p>\n                        </div>\n                    </div>\n\n                    <div class=\"icon-mi-left\">\n                        <i class=\"ti-layers theme-cl\"></i>\n                        <div class=\"icon-mi-left-content\">\n                            <h4>We are Very Hard Worker and loving</h4>\n                            <p>If you are an individual client, or just a business startup looking for good backlinks for your website.</p>\n                        </div>\n                    </div>\n\n                </div>\n\n                <div class=\"col-lg-6 col-md-6\">\n                    <img src=\"/storage/block/vec-2.png\" class=\"img-fluid\" alt=\"\">\n                </div>\n\n            </div>\n        </div>\n    </section>\n</div>\n                    ', 'published', NULL, '2023-12-30 10:06:27', '2023-12-30 10:06:27'),
(8, 'Sign up', 'sign-up', '', '\n<div class=\"raw-html-embed\">\n    <section class=\"theme-bg call-to-act-wrap\">\n        <div class=\"container\">\n            <div class=\"row\">\n                <div class=\"col-lg-12\">\n\n                    <div class=\"call-to-act\">\n                        <div class=\"call-to-act-head\">\n                            <h3>Want to Become a Real Estate Agent?</h3>\n                            <span>We\'ll help you to grow your career and growth.</span>\n                        </div>\n                        <a href=\"/register\" class=\"btn btn-call-to-act\">Sign Up Today</a>\n                    </div>\n\n                </div>\n            </div>\n        </div>\n    </section>\n</div>\n                    ', 'published', NULL, '2023-12-30 10:06:27', '2023-12-30 10:06:27'),
(9, 'Download App', 'download-app', '', '\n<div class=\"raw-html-embed\">\n    <section class=\"bg-light\">\n        <div class=\"container\">\n            <div class=\"row align-items-center\">\n                <div class=\"col-lg-7 col-md-12 col-sm-12 content-column\">\n                    <div class=\"content_block_2\">\n                        <div class=\"content-box\">\n                        <div class=\"sec-title light\">\n                            <p class=\"text-blue\">Download apps</p>\n                            <h2>Download App Free App For Android And IPhone</h2>\n                        </div>\n                        <div class=\"text\"><p></p></div>\n                        <div class=\"btn-box clearfix mt-5\">\n                            <a href=\"\" class=\"download-btn play-store\"\n                            ><i class=\"fab fa-google-play\"></i> <span>Download on</span>\n                            <h3>Google Play</h3></a\n                            >\n                            <a href=\"\" class=\"download-btn app-store\"\n                            ><i class=\"fab fa-apple\"></i> <span>Download on</span>\n                            <h3>App Store</h3></a\n                            >\n                        </div>\n                        </div>\n                    </div>\n                </div>\n                <div class=\"col-lg-5 col-md-12 col-sm-12 image-column\">\n                    <div class=\"image-box\">\n                        <figure class=\"image\">\n                        <img\n                            src=\"/storage/banners/app.png\"\n                            alt=\"image\"\n                            class=\"img-fluid\"\n                        />\n                        </figure>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </section>\n</div>\n\n                    ', 'published', NULL, '2023-12-30 10:06:27', '2023-12-30 10:06:27'),
(10, 'Download App Footer', 'download-app-footer', '', '\n<div class=\"raw-html-embed\">\n    <div class=\"footer-widget\">\n        <h4 class=\"widget-title\">Download Apps</h4>\n        <a href=\"#\" class=\"other-store-link\">\n            <div class=\"other-store-app\">\n                <div class=\"os-app-icon\">\n                    <i class=\"lni-playstore theme-cl\"></i>\n                </div>\n                <div class=\"os-app-caps\">\n                    Google Play\n                    <span>Get It Now</span>\n                </div>\n            </div>\n        </a>\n        <a href=\"#\" class=\"other-store-link\">\n            <div class=\"other-store-app\">\n                <div class=\"os-app-icon\">\n                    <i class=\"lni-apple theme-cl\"></i>\n                </div>\n                <div class=\"os-app-caps\">\n                    App Store\n                    <span>Now it Available</span>\n                </div>\n            </div>\n        </a>\n    </div>\n</div>\n                    ', 'published', NULL, '2023-12-30 10:06:27', '2023-12-30 10:06:27'),
(11, 'How It Works?', 'how-it-works', '', '\n<div class=\"raw-html-embed\">\n    <section>\n        <div class=\"container\">\n\n            <div class=\"row justify-content-center\">\n                <div class=\"col-lg-7 col-md-10 text-center\">\n                    <div class=\"sec-heading center\">\n                        <h2>How It Works?</h2>\n                        <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores</p>\n                    </div>\n                </div>\n            </div>\n\n            <div class=\"row\">\n                <div class=\"col-lg-4 col-md-4\">\n                    <div class=\"middle-icon-features-item\">\n                        <div class=\"icon-features-wrap\"><div class=\"middle-icon-large-features-box f-light-success\"><i class=\"ti-receipt text-success\"></i></div></div>\n                        <div class=\"middle-icon-features-content\">\n                            <h4>Evaluate Property</h4>\n                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have Ipsum available.</p>\n                        </div>\n                    </div>\n                </div>\n\n                <div class=\"col-lg-4 col-md-4\">\n                    <div class=\"middle-icon-features-item\">\n                        <div class=\"icon-features-wrap\"><div class=\"middle-icon-large-features-box f-light-warning\"><i class=\"ti-user text-warning\"></i></div></div>\n                        <div class=\"middle-icon-features-content\">\n                            <h4>Meet Your Agent</h4>\n                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have Ipsum available.</p>\n                        </div>\n                    </div>\n                </div>\n\n                <div class=\"col-lg-4 col-md-4\">\n                    <div class=\"middle-icon-features-item remove\">\n                        <div class=\"icon-features-wrap\"><div class=\"middle-icon-large-features-box f-light-blue\"><i class=\"ti-shield text-blue\"></i></div></div>\n                        <div class=\"middle-icon-features-content\">\n                            <h4>Close The Deal</h4>\n                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have Ipsum available.</p>\n                        </div>\n                    </div>\n                </div>\n            </div>\n\n        </div>\n    </section>\n</div>', 'published', NULL, '2023-12-30 10:06:27', '2023-12-30 10:06:27'),
(12, 'Achievement', 'achievement', '', '\n<div class=\"raw-html-embed\">\n    <section>\n        <div class=\"container\">\n\n            <div class=\"row justify-content-center\">\n                <div class=\"col-lg-7 col-md-10 text-center\">\n                    <div class=\"sec-heading center mb-4\">\n                        <h2>Achievement</h2>\n                        <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores</p>\n                    </div>\n                </div>\n            </div>\n\n            <div class=\"row\">\n                <div class=\"col-lg-3 col-md-3 col-sm-6\">\n                    <div class=\"achievement-wrap\">\n                        <div class=\"achievement-content\">\n                            <h4>20500+</h4>\n                            <p>Completed Property</p>\n                        </div>\n                    </div>\n                </div>\n\n                <div class=\"col-lg-3 col-md-3 col-sm-6\">\n                    <div class=\"achievement-wrap\">\n                        <div class=\"achievement-content\">\n                            <h4>7600+</h4>\n                            <p>Property Sales</p>\n                        </div>\n                    </div>\n                </div>\n\n                <div class=\"col-lg-3 col-md-3 col-sm-6\">\n                    <div class=\"achievement-wrap\">\n                        <div class=\"achievement-content\">\n                            <h4>12300+</h4>\n                            <p>Apartment Rent</p>\n                        </div>\n                    </div>\n                </div>\n\n                <div class=\"col-lg-3 col-md-3 col-sm-6\">\n                    <div class=\"achievement-wrap\">\n                        <div class=\"achievement-content\">\n                            <h4>15200+</h4>\n                            <p>Happy Clients</p>\n                        </div>\n                    </div>\n                </div>\n\n            </div>\n\n        </div>\n    </section>\n    <div class=\"clearfix\"></div>\n</div>', 'published', NULL, '2023-12-30 10:06:27', '2023-12-30 10:06:27'),
(13, 'Our Story', 'our-story', '', '\n<div class=\"raw-html-embed\">\n    <section>\n        <div class=\"container\">\n            <div class=\"row align-items-center\">\n\n                <div class=\"col-lg-6 col-md-6\">\n                    <img src=\"/storage/block/sb.png\" class=\"img-fluid\" alt=\"\">\n                </div>\n\n                <div class=\"col-lg-6 col-md-6\">\n                    <div class=\"story-wrap explore-content\">\n\n                        <h2>Our Story</h2>\n                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>\n\n                    </div>\n                </div>\n            </div>\n        </div>\n    </section>\n</div>\n                    ', 'published', NULL, '2023-12-30 10:06:27', '2023-12-30 10:06:27'),
(14, 'Our Story', 'our-story', '', '\n<div class=\"raw-html-embed\">\n    <section>\n        <div class=\"container\">\n            <div class=\"row align-items-center\">\n\n                <div class=\"col-lg-6 col-md-6\">\n                    <img src=\"/storage/block/sb.png\" class=\"img-fluid\" alt=\"\">\n                </div>\n\n                <div class=\"col-lg-6 col-md-6\">\n                    <div class=\"story-wrap explore-content\">\n\n                        <h2>Our Story</h2>\n                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>\n\n                    </div>\n                </div>\n            </div>\n        </div>\n    </section>\n</div>\n                    ', 'published', NULL, '2023-12-30 10:06:27', '2023-12-30 10:06:27'),
(15, 'Our mission', 'our-mission', '', '\n<div class=\"raw-html-embed\">\n    <section>\n        <div class=\"container\">\n            <div class=\"row\">\n                <div class=\"col-lg-12 col-md-12\">\n                    <div class=\"sec-heading center\">\n                        <h2>Our Mission &amp; Work Process</h2>\n                        <p>Professional &amp; Dedicated Team</p>\n                    </div>\n                </div>\n            </div>\n            <div class=\"row align-items-center\">\n                <div class=\"col-lg-6 col-md-6\">\n                    <div class=\"icon-mi-left\">\n                        <i class=\"ti-lock theme-cl\"></i>\n                        <div class=\"icon-mi-left-content\">\n                            <h4>Fully Secure &amp; 24x7 Dedicated Support</h4>\n                            <p>If you are an individual client, or just a business startup looking for good backlinks for your website.</p>\n                        </div>\n                    </div>\n                    <div class=\"icon-mi-left\">\n                        <i class=\"ti-twitter theme-cl\"></i>\n                        <div class=\"icon-mi-left-content\">\n                            <h4>Manage your Social &amp; Busness Account Carefully</h4>\n                            <p>If you are an individual client, or just a business startup looking for good backlinks for your website.</p>\n                        </div>\n                    </div>\n                    <div class=\"icon-mi-left\">\n                        <i class=\"ti-layers theme-cl\"></i>\n                        <div class=\"icon-mi-left-content\">\n                            <h4>We are Very Hard Worker and loving</h4>\n                            <p>If you are an individual client, or just a business startup looking for good backlinks for your website.</p>\n                        </div>\n                    </div>\n                </div>\n                <div class=\"col-lg-6 col-md-6\">\n                    <img src=\"/storage/block/vec-2.png\" class=\"img-fluid\" alt=\"\">\n                </div>\n            </div>\n        </div>\n    </section>\n</div>\n                    ', 'published', NULL, '2023-12-30 10:06:27', '2023-12-30 10:06:27');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Latest news', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(2, 'House architecture', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(3, 'House design', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(4, 'Building materials', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(5, 'Tin tức mới nhất', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(6, 'Kiến trúc nhà', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(7, 'Thiết kế nhà', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(8, 'Vật liệu xây dựng', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2023-12-30 10:06:40', '2023-12-30 10:06:40');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int(10) UNSIGNED DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`, `country_id`, `record_id`, `order`, `is_featured`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Alhambra', 1, 1, NULL, 0, 1, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(2, 'Oakland', 1, 1, NULL, 0, 1, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(3, 'Bakersfield', 5, 1, NULL, 0, 1, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(4, 'Anaheim', 5, 1, NULL, 0, 1, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(5, 'San Francisco', 4, 1, NULL, 0, 1, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(6, 'San DiegoCounty', 2, 1, NULL, 0, 1, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(7, 'Hồ Chí Minh', 8, 2, NULL, 0, 1, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(8, 'Hà Nội', 6, 2, NULL, 0, 1, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(9, 'Đà Nẵng', 10, 2, NULL, 0, 1, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(10, 'Hải Phòng', 6, 2, NULL, 0, 1, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(11, 'Bình Dương', 8, 2, NULL, 0, 1, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(12, 'Long An', 9, 2, NULL, 0, 1, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(13, 'Newark', 45, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(14, 'Peoria', 27, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(15, 'O\'Fallon', 40, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(16, 'Hampton', 65, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(17, 'Lakewood', 17, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(18, 'Mesa', 14, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(19, 'Bryan', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(20, 'Garland', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(21, 'Springfield', 27, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(22, 'Flint', 37, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(23, 'Tacoma', 66, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(24, 'Waterbury', 18, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(25, 'Eagan', 38, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(26, 'Fort Smith', 15, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(27, 'Carmichael', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(28, 'Daly City', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(29, 'Murrieta', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(30, 'Brentwood', 47, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(31, 'Quincy', 36, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(32, 'Boulder', 17, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(33, 'Evanston', 27, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(34, 'Dothan', 11, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(35, 'Antioch', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(36, 'Madison', 68, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(37, 'Victorville', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(38, 'Billings', 41, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(39, 'Sandy Springs', 23, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(40, 'Iowa City', 29, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(41, 'Largo', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(42, 'Shreveport', 32, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(43, 'Kalamazoo', 37, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(44, 'Round Rock', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(45, 'Richmond', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(46, 'Columbia', 40, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(47, 'Sandy', 62, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(48, 'Hoover', 11, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(49, 'Fullerton', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(50, 'Rapid City', 59, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(51, 'Newport Beach', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(52, 'Columbus', 23, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(53, 'Palm Coast', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(54, 'Albany', 23, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(55, 'Jurupa Valley', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(56, 'Providence', 57, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(57, 'Decatur', 27, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(58, 'Scranton', 55, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(59, 'Rochester', 47, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(60, 'Buffalo', 47, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(61, 'Santa Ana', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(62, 'Sunnyvale', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(63, 'Augusta-Richmond County consolidated government', 23, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(64, 'Milwaukee', 68, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(65, 'Conroe', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(66, 'Savannah', 23, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(67, 'German', 35, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(68, 'Costa Mesa', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(69, 'New Haven', 18, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(70, 'Westland', 37, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(71, 'Waldorf', 35, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(72, 'Cedar Rapids', 29, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(73, 'Troy', 37, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(74, 'Kirkland', 66, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(75, 'Santa Barbara', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(76, 'Lake Forest', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(77, 'Chino', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(78, 'Tucson', 14, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(79, 'Boise', 26, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(80, 'Joliet', 27, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(81, 'Metairie', 32, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(82, 'Moreno Valley', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(83, 'Elizabeth', 45, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(84, 'Wyoming', 37, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(85, 'Norman', 52, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(86, 'Frisco', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(87, 'Waterloo', 29, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(88, 'Jonesboro', 15, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(89, 'Mission', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(90, 'Midland', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(91, 'Lansing', 37, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(92, 'Springdale', 15, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(93, 'Bay', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(94, 'Apple Valley', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(95, 'Brockton', 36, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(96, 'Poinciana', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(97, 'Davis', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(98, 'Saint Louis', 40, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(99, 'Lehigh Acres', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(100, 'Henderson', 43, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(101, 'Los Angeles', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(102, 'Boca Raton', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(103, 'Union City', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(104, 'Lakeland', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(105, 'Mount Pleasant', 58, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(106, 'Des Moines', 29, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(107, 'Asheville', 48, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(108, 'West Palm Beach', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(109, 'Bayonne', 45, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(110, 'Coral Springs', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(111, 'Atlanta', 23, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(112, 'Redlands', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(113, 'Toms River', 45, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(114, 'Palmdale', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(115, 'Youngs', 51, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(116, 'Frederick', 35, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(117, 'Fargo', 49, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(118, 'Cedar Park', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(119, 'Fort Collins', 17, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(120, 'Portsmouth', 65, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(121, 'Fremont', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:19', '2023-12-30 10:06:19'),
(122, 'Bloomington', 27, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(123, 'Woodbury', 38, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(124, 'Camden', 45, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(125, 'Gresham', 53, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(126, 'Lorain', 51, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(127, 'South San Francisco', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(128, 'Manchester', 44, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(129, 'Longview', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(130, 'Richardson', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(131, 'Yonkers', 47, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(132, 'Pharr', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(133, 'Redding', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(134, 'Fontana', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(135, 'Fort Lauderdale', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(136, 'Fort Wayne', 28, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(137, 'Lancaster', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(138, 'Flower Mound', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(139, 'Aurora', 17, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(140, 'Jacksonville', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(141, 'Carlsbad', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(142, 'Grand Prairie', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(143, 'Evansville', 28, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(144, 'Saint Cloud', 38, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(145, 'Weston', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(146, 'Greensboro', 48, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(147, 'Vallejo', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(148, 'Bellflower', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(149, 'Kenner', 32, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(150, 'Albuquerque', 46, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(151, 'Town \'n\' Country', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(152, 'Cary', 48, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(153, 'Loveland', 17, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(154, 'Menifee', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(155, 'Mobile', 11, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(156, 'Orem', 62, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(157, 'Baltimore', 35, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(158, 'Brownsville', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(159, 'Riverview', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(160, 'Lafayette', 28, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(161, 'Duluth', 38, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(162, 'Everett', 66, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(163, 'Southfield', 37, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(164, 'Pawtucket', 57, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(165, 'Reno', 43, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(166, 'Layton', 62, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(167, 'Lewisville', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(168, 'Guaynabo', 56, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(169, 'Livermore', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(170, 'Memphis', 60, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(171, 'Lee\'s Summit', 40, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(172, 'Norwalk', 18, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(173, 'San Antonio', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(174, 'Hemet', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(175, 'Abilene', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(176, 'Bolingbrook', 27, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(177, 'Roswell', 23, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(178, 'Huntsville', 11, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(179, 'Livonia', 37, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(180, 'Fort Worth', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(181, 'Tracy', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(182, 'Nashville', 60, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(183, 'Independence', 40, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(184, 'Colorado Springs', 17, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(185, 'Camarillo', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(186, 'Kendall', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(187, 'Parma', 51, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(188, 'Shawnee', 30, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(189, 'Bk', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(190, 'San Tan Valley', 14, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(191, 'Alafaya', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(192, 'Saint Paul', 38, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(193, 'Boston', 36, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(194, 'Dearborn', 37, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(195, 'Lawrence', 36, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(196, 'Nampa', 26, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(197, 'Vista', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(198, 'Palm Bay', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(199, 'Lawton', 52, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(200, 'Reading', 55, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(201, 'New Britain', 18, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(202, 'Waukesha', 68, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(203, 'The Woodlands', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(204, 'Lubbock', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(205, 'North Las Vegas', 43, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(206, 'Baton Rouge', 32, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(207, 'Chicago', 27, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(208, 'Garden Grove', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(209, 'South Jordan', 62, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(210, 'Cape Coral', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(211, 'Chesapeake', 65, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(212, 'Westminster', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(213, 'Irvine', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(214, 'Arlington', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(215, 'Johns Creek', 23, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(216, 'Edmond', 52, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(217, 'Bend', 53, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(218, 'Las Vegas', 43, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(219, 'Carrollton', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(220, 'Cleveland', 51, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(221, 'West Valley City', 62, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(222, 'Grand Rapids', 37, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(223, 'Federal Way', 66, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(224, 'Saint Petersburg', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:20', '2023-12-30 10:06:20'),
(225, 'Turlock', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(226, 'Riverside', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(227, 'Berkeley', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(228, 'Santa Fe', 46, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(229, 'Chino Hills', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(230, 'Schaumburg', 27, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(231, 'Clovis', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(232, 'Torrance', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(233, 'McKinney', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(234, 'Roanoke', 65, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(235, 'Corona', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(236, 'Fairfield', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(237, 'Downey', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(238, 'Macon', 23, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(239, 'Athens-Clarke County unified government', 23, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(240, 'Temecula', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(241, 'Concord', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(242, 'Corpus Christi', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(243, 'Rancho Cordova', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(244, 'Tampa', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(245, 'Fayetteville', 15, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(246, 'Montgomery', 11, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(247, 'Kansas City', 40, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(248, 'College Station', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(249, 'Green Bay', 68, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(250, 'Bossier City', 32, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(251, 'Merced', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(252, 'Warner Robins', 23, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(253, 'San Leandro', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(254, 'Plano', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(255, 'Lynchburg', 65, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(256, 'Vacaville', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(257, 'Laredo', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(258, 'El Cajon', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(259, 'Cicero', 27, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(260, 'Rio Rancho', 46, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(261, 'Marysville', 66, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(262, 'Carson', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(263, 'Citrus Heights', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(264, 'North Little Rock', 15, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(265, 'Atascocita', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(266, 'Erie', 55, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(267, 'Fresno', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(268, 'High Point', 48, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(269, 'Pearland', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(270, 'Denton', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(271, 'San Bernardino', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(272, 'Mesquite', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(273, 'Sioux Falls', 59, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(274, 'Charleston', 58, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(275, 'Redwood City', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(276, 'Paradise', 43, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(277, 'Upland', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(278, 'Paterson', 45, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(279, 'Pasco', 66, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(280, 'Schenectady', 47, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(281, 'Worcester', 36, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(282, 'Pembroke Pines', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(283, 'West Covina', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(284, 'Raleigh', 48, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(285, 'Compton', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(286, 'Amarillo', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(287, 'Glendale', 14, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(288, 'Broken Arrow', 52, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(289, 'Hartford', 18, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(290, 'Warwick', 57, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(291, 'Charlotte', 48, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(292, 'Jersey City', 45, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(293, 'Long Beach', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(294, 'Spokane Valley', 66, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(295, 'Mayagüez', 56, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(296, 'San Diego', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(297, 'Chandler', 14, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(298, 'Pine Hills', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(299, 'Tulsa', 52, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(300, 'Hawthorne', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(301, 'Portland', 53, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(302, 'Sunrise Manor', 43, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(303, 'Longmont', 17, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(304, 'Arden-Arcade', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(305, 'Anchorage', 12, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(306, 'Missoula', 41, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(307, 'Newton', 36, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(308, 'Cincinnati', 51, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(309, 'Santa Rosa', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(310, 'Centennial', 17, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(311, 'New Braunfels', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(312, 'Elk Grove', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(313, 'Norfolk', 65, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(314, 'Pompano Beach', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(315, 'Redondo Beach', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(316, 'Jackson', 39, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(317, 'Casas Adobes', 14, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(318, 'Gilbert', 14, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(319, 'Santa Clara', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(320, 'Maple Grove', 38, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(321, 'Davie', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(322, 'Victoria', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(323, 'Ames', 29, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(324, 'Trenton', 45, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(325, 'Sunrise', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(326, 'Odessa', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(327, 'Olathe', 30, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(328, 'Urban Honolulu', 25, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(329, 'Davenport', 29, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:21', '2023-12-30 10:06:21'),
(330, 'San Juan', 56, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(331, 'Milpitas', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(332, 'McAllen', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(333, 'Missouri City', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(334, 'Kissimmee', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(335, 'Hammond', 28, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(336, 'Elgin', 27, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(337, 'Passaic', 45, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(338, 'East Orange', 45, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(339, 'Houston', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(340, 'Alameda', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(341, 'Arlington Heights', 27, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(342, 'Waco', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(343, 'Oklahoma City', 52, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(344, 'South Gate', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(345, 'Appleton', 68, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(346, 'San Ramon', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(347, 'Ellicott City', 35, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(348, 'Durham', 48, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(349, 'League City', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(350, 'Killeen', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(351, 'Arvada', 17, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(352, 'Folsom', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(353, 'Clearwater', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(354, 'Cranston', 57, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(355, 'Beaumont', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(356, 'Avondale', 14, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(357, 'Eau Claire', 68, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(358, 'Beaverton', 53, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(359, 'Virginia Beach', 65, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(360, 'Stamford', 18, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(361, 'Bellevue', 66, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(362, 'Hollywood', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(363, 'Saint Joseph', 40, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(364, 'Thornton', 17, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(365, 'Toledo', 51, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(366, 'Akron', 51, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(367, 'Gaithersburg', 35, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(368, 'Roseville', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(369, 'Pittsburgh', 55, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(370, 'Sparks', 43, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(371, 'Brooklyn Park', 38, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(372, 'Rock Hill', 58, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(373, 'San Buenaventura', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(374, 'Lynn', 36, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(375, 'Port Saint Lucie', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(376, 'Washington', 20, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(377, 'Tustin', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(378, 'Lynwood', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(379, 'Lexington-Fayette  county', 31, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(380, 'Las Cruces', 46, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(381, 'North Charleston', 58, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(382, 'Miramar', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(383, 'Miami Gardens', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(384, 'Rochester Hills', 37, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(385, 'Indio', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(386, 'Racine', 68, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(387, 'Boynton Beach', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(388, 'Alexandria', 65, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(389, 'Cheektowaga', 47, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(390, 'Deerfield Beach', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(391, 'Miami', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(392, 'Medford', 53, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(393, 'Ogden', 62, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(394, 'San Clemente', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(395, 'Orange', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(396, 'Bridgeport', 18, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(397, 'Pleasanton', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(398, 'Lake Charles', 32, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(399, 'Thousand Oaks', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(400, 'Chico', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(401, 'Goodyear', 14, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(402, 'Kent', 66, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(403, 'Plantation', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(404, 'Gary', 28, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(405, 'Sugar Land', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(406, 'Silver Spring', 35, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(407, 'El Paso', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(408, 'Winston-Salem', 48, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(409, 'Lincoln', 42, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(410, 'Renton', 66, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(411, 'Gainesville', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(412, 'Sacramento', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(413, 'Simi Valley', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(414, 'Wilmington', 19, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(415, 'Wichita', 30, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(416, 'Allen', 55, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(417, 'Danbury', 18, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(418, 'Provo', 62, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(419, 'San Marcos', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(420, 'Escondido', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(421, 'Caguas', 56, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(422, 'Spokane', 66, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(423, 'Auburn', 66, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:22', '2023-12-30 10:06:22'),
(424, 'Surprise', 14, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(425, 'Louisville/Jefferson County metro government', 31, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(426, 'Spring Valley', 43, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(427, 'Yakima', 66, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(428, 'Clifton', 45, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(429, 'Farmington Hills', 37, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(430, 'Napa', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(431, 'Irving', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(432, 'Chula Vista', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(433, 'Salinas', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(434, 'Pasadena', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(435, 'Newport News', 65, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(436, 'Miami Beach', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(437, 'Tempe', 14, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(438, 'Sterling Heights', 37, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(439, 'Hialeah', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(440, 'Gulfport', 39, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(441, 'Tuscaloosa', 11, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(442, 'Plymouth', 38, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(443, 'Mount Vernon', 47, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(444, 'Fishers', 28, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(445, 'Santa Maria', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(446, 'The Villages', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(447, 'Oxnard', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(448, 'Gastonia', 48, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(449, 'Deltona', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(450, 'Greenville', 48, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(451, 'Salt Lake City', 62, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(452, 'Homestead', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(453, 'Waukegan', 27, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(454, 'Topeka', 30, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(455, 'Clarksville', 60, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(456, 'Franklin', 60, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(457, 'Little Rock', 15, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(458, 'Tallahassee', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(459, 'Cambridge', 36, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(460, 'Skokie', 27, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(461, 'New York', 47, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(462, 'Modesto', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(463, 'Dallas', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(464, 'Baldwin Park', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(465, 'Hesperia', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(466, 'East Los Angeles', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(467, 'Whittier', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(468, 'Lauderhill', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(469, 'Huntington Beach', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(470, 'Carmel', 28, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(471, 'Bellingham', 66, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(472, 'Delray Beach', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(473, 'Seattle', 66, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(474, 'Suffolk', 65, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(475, 'Omaha', 42, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(476, 'Champaign', 27, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(477, 'Vancouver', 66, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(478, 'Meridian', 26, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(479, 'Saint Charles', 40, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(480, 'Inglewood', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(481, 'Harlingen', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(482, 'Austin', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(483, 'San Jose', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(484, 'Melbourne', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(485, 'Tyler', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(486, 'Greeley', 17, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(487, 'West Jordan', 62, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(488, 'Perris', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(489, 'Johnson City', 60, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(490, 'New Orleans', 32, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(491, 'Chattanooga', 60, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(492, 'San Angelo', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(493, 'Syracuse', 47, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(494, 'Ann Arbor', 37, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(495, 'Visalia', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(496, 'Naperville', 27, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(497, 'Scottsdale', 14, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(498, 'Lowell', 36, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(499, 'Mission Viejo', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(500, 'New Rochelle', 47, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(501, 'Manteca', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(502, 'Florence-Graham', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(503, 'Brandon', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(504, 'North Richland Hills', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(505, 'Murfreesboro', 60, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(506, 'Enterprise', 43, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:23', '2023-12-30 10:06:23'),
(507, 'Nashua', 44, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(508, 'Rialto', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(509, 'Rockford', 27, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(510, 'San Mateo', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(511, 'Pueblo', 17, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(512, 'Spring Hill', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(513, 'Mountain View', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(514, 'Phoenix', 14, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(515, 'Dale City', 65, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(516, 'Santa Clarita', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(517, 'Hillsboro', 53, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(518, 'Buena Park', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(519, 'Oshkosh', 68, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24');
INSERT INTO `cities` (`id`, `name`, `state_id`, `country_id`, `record_id`, `order`, `is_featured`, `status`, `created_at`, `updated_at`) VALUES
(520, 'Pittsburg', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(521, 'Oceanside', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(522, 'Highlands Ranch', 17, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(523, 'Sioux City', 29, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(524, 'Detroit', 37, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(525, 'Rancho Cucamonga', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(526, 'Somerville', 36, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(527, 'Framingham', 36, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(528, 'New Bedford', 36, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(529, 'Philadelphia', 55, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(530, 'Eugene', 53, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(531, 'Kenosha', 68, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(532, 'Bismarck', 49, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(533, 'Yorba Linda', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(534, 'Carolina', 56, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(535, 'Knoxville', 60, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(536, 'Hayward', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(537, 'Flagstaff', 14, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(538, 'Wichita Falls', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(539, 'Minneapolis', 38, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(540, 'Canton', 51, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(541, 'Glen Burnie', 35, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(542, 'Laguna Niguel', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(543, 'Bethlehem', 55, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(544, 'Palo Alto', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(545, 'Saint George', 62, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(546, 'Yuba City', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(547, 'El Monte', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(548, 'Orlando', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(549, 'Stockton', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(550, 'Yuma', 14, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(551, 'Indianapolis', 28, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(552, 'Edinburg', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(553, 'Warren', 37, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(554, 'Ontario', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(555, 'Kennewick', 66, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(556, 'Birmingham', 11, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(557, 'Rockville', 35, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(558, 'Muncie', 28, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(559, 'Overland Park', 30, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:24', '2023-12-30 10:06:24'),
(560, 'Centreville', 65, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:25', '2023-12-30 10:06:25'),
(561, 'Santa Monica', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:25', '2023-12-30 10:06:25'),
(562, 'Dayton', 51, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:25', '2023-12-30 10:06:25'),
(563, 'Salem', 53, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:25', '2023-12-30 10:06:25'),
(564, 'Ponce', 56, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:25', '2023-12-30 10:06:25'),
(565, 'Pomona', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:25', '2023-12-30 10:06:25'),
(566, 'Fall River', 36, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:25', '2023-12-30 10:06:25'),
(567, 'Palatine', 27, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:25', '2023-12-30 10:06:25'),
(568, 'Bayamón', 56, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:25', '2023-12-30 10:06:25'),
(569, 'South Bend', 28, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:25', '2023-12-30 10:06:25'),
(570, 'Temple', 61, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:25', '2023-12-30 10:06:25'),
(571, 'Denver', 17, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:25', '2023-12-30 10:06:25'),
(572, 'Broomfield', 17, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:25', '2023-12-30 10:06:25'),
(573, 'Walnut Creek', 16, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:25', '2023-12-30 10:06:25'),
(574, 'Fort Myers', 22, 1, NULL, 0, 0, 'published', '2023-12-30 10:06:25', '2023-12-30 10:06:25'),
(575, 'Dhaka City', 70, 4, NULL, 1, 1, 'published', '2024-10-10 10:04:51', '2024-10-10 10:04:51');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `nationality`, `order`, `is_featured`, `status`, `created_at`, `updated_at`) VALUES
(1, 'United States', 'United States of America', 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(2, 'Việt Nam', 'Việt Nam', 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(3, 'Bangladesh', 'bangladeshi', 0, 0, 'published', '2024-10-10 10:01:36', '2024-10-10 10:01:36'),
(4, 'Bangladesh', 'bangladeshi', 1, 0, 'published', '2024-10-10 10:03:19', '2024-10-10 10:03:19');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_total_themes', '2023-12-30 11:00:23', '2023-12-30 11:00:23'),
(2, 'widget_total_users', '2023-12-30 11:00:23', '2023-12-30 11:00:23'),
(3, 'widget_total_pages', '2023-12-30 11:00:23', '2023-12-30 11:00:23'),
(4, 'widget_total_plugins', '2023-12-30 11:00:23', '2023-12-30 11:00:23'),
(5, 'widget_analytics_general', '2023-12-30 11:00:23', '2023-12-30 11:00:23'),
(6, 'widget_analytics_page', '2023-12-30 11:00:23', '2023-12-30 11:00:23'),
(7, 'widget_analytics_browser', '2023-12-30 11:00:23', '2023-12-30 11:00:23'),
(8, 'widget_posts_recent', '2023-12-30 11:00:23', '2023-12-30 11:00:23'),
(9, 'widget_analytics_referrer', '2023-12-30 11:00:23', '2023-12-30 11:00:23'),
(10, 'widget_audit_logs', '2023-12-30 11:00:23', '2023-12-30 11:00:23');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `widget_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `lang_id` int(10) UNSIGNED NOT NULL,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lang_order` int(11) NOT NULL DEFAULT 0,
  `lang_is_rtl` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'English', 'en', 'en_US', 'us', 1, 0, 0),
(2, 'Tiếng Việt', 'vi', 'vi', 'vn', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` int(10) UNSIGNED NOT NULL,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`) VALUES
(1, 'en_US', '2c33e75e08f88b29cbe763db4ca112e6', 1, 'Botble\\Location\\Models\\State'),
(2, 'en_US', '84055b89ca93d7f44b39ef61909d1b99', 2, 'Botble\\Location\\Models\\State'),
(3, 'en_US', 'a38c2522605f7b5089dfefa11d804af6', 3, 'Botble\\Location\\Models\\State'),
(4, 'en_US', '64319a67eba1b9b5d81bb332d0359efe', 4, 'Botble\\Location\\Models\\State'),
(5, 'en_US', 'eea72f9d3c4dbb3509f1febdd8680e75', 5, 'Botble\\Location\\Models\\State'),
(6, 'en_US', '2cfde6cb47dd049052569f326356bda0', 1, 'Botble\\Location\\Models\\City'),
(7, 'en_US', '81ea3d04409f42b21a611f89951fcda3', 2, 'Botble\\Location\\Models\\City'),
(8, 'en_US', '3f8d337b54628e7b86e86e23f2816b64', 3, 'Botble\\Location\\Models\\City'),
(9, 'en_US', 'a8e97ee03f36eefea23f8292254c9a37', 4, 'Botble\\Location\\Models\\City'),
(10, 'en_US', 'b4681251a4957cd4e1d87776adb951f5', 5, 'Botble\\Location\\Models\\City'),
(11, 'en_US', '374b005f3b382f1a8404e220b29c4ede', 6, 'Botble\\Location\\Models\\City'),
(12, 'en_US', '75c844d80b5e5ff570db90ad3f06b694', 1, 'Botble\\Location\\Models\\Country'),
(13, 'vi', '2c33e75e08f88b29cbe763db4ca112e6', 6, 'Botble\\Location\\Models\\State'),
(14, 'vi', '84055b89ca93d7f44b39ef61909d1b99', 7, 'Botble\\Location\\Models\\State'),
(15, 'vi', 'a38c2522605f7b5089dfefa11d804af6', 8, 'Botble\\Location\\Models\\State'),
(16, 'vi', '64319a67eba1b9b5d81bb332d0359efe', 9, 'Botble\\Location\\Models\\State'),
(17, 'vi', 'eea72f9d3c4dbb3509f1febdd8680e75', 10, 'Botble\\Location\\Models\\State'),
(18, 'vi', '2cfde6cb47dd049052569f326356bda0', 7, 'Botble\\Location\\Models\\City'),
(19, 'vi', '81ea3d04409f42b21a611f89951fcda3', 8, 'Botble\\Location\\Models\\City'),
(20, 'vi', '3f8d337b54628e7b86e86e23f2816b64', 9, 'Botble\\Location\\Models\\City'),
(21, 'vi', 'a8e97ee03f36eefea23f8292254c9a37', 10, 'Botble\\Location\\Models\\City'),
(22, 'vi', 'b4681251a4957cd4e1d87776adb951f5', 11, 'Botble\\Location\\Models\\City'),
(23, 'vi', '374b005f3b382f1a8404e220b29c4ede', 12, 'Botble\\Location\\Models\\City'),
(24, 'vi', '75c844d80b5e5ff570db90ad3f06b694', 2, 'Botble\\Location\\Models\\Country'),
(25, 'en_US', '428e8eece3f1abbb7da04a8eba611968', 11, 'Botble\\Location\\Models\\State'),
(26, 'en_US', '61b3f13d47d7c886f82da8111e076e1c', 12, 'Botble\\Location\\Models\\State'),
(27, 'en_US', 'c461f9f85f4b524f347af8fc85e71dac', 13, 'Botble\\Location\\Models\\State'),
(28, 'en_US', 'f20b8519e33a044296b427185abc5a4a', 14, 'Botble\\Location\\Models\\State'),
(29, 'en_US', '6d0cf2ef48c1b6d351b02a195311204d', 15, 'Botble\\Location\\Models\\State'),
(30, 'en_US', '06f7fa21d93abe0150525518818c60f1', 16, 'Botble\\Location\\Models\\State'),
(31, 'en_US', '15a559cf000fbb516c2f31ad75e78d65', 17, 'Botble\\Location\\Models\\State'),
(32, 'en_US', '739c77a919e87a15f0b2028243549ae4', 18, 'Botble\\Location\\Models\\State'),
(33, 'en_US', '6d1efaa8c6b1bbc3298a51f7f6f389ad', 19, 'Botble\\Location\\Models\\State'),
(34, 'en_US', 'b69b5432047d9e775eea97a680cdc720', 20, 'Botble\\Location\\Models\\State'),
(35, 'en_US', '9932c77c8cc3e710f0af0ccd4f08989b', 21, 'Botble\\Location\\Models\\State'),
(36, 'en_US', '636df062e32b3846067b0abdb36625be', 22, 'Botble\\Location\\Models\\State'),
(37, 'en_US', '2e2b5162e3859aa8dd2043211c5f6883', 23, 'Botble\\Location\\Models\\State'),
(38, 'en_US', 'c6db85f26155090176ed1e06c0dd26d6', 24, 'Botble\\Location\\Models\\State'),
(39, 'en_US', 'b3bf672eb326aef1d5af37e4c6fdcb47', 25, 'Botble\\Location\\Models\\State'),
(40, 'en_US', '388999a7e133bd626a7ab0f64bef2e32', 26, 'Botble\\Location\\Models\\State'),
(41, 'en_US', 'd4d0880cf3cb221d7ccad8e906942d9f', 27, 'Botble\\Location\\Models\\State'),
(42, 'en_US', '4234a47f70fb38158cafaec22778e23c', 28, 'Botble\\Location\\Models\\State'),
(43, 'en_US', 'b8097dcf10f5d36155eb0a2c00ab4288', 29, 'Botble\\Location\\Models\\State'),
(44, 'en_US', '23fa7c6d9883bc72d8457f34f93c324a', 30, 'Botble\\Location\\Models\\State'),
(45, 'en_US', '4f7a933f5d9ae79967023c48508a66f2', 31, 'Botble\\Location\\Models\\State'),
(46, 'en_US', '11f4681a0be647f1f3e9e752907921fc', 32, 'Botble\\Location\\Models\\State'),
(47, 'en_US', 'e470c3fc26604b228c03d6d470a8c9f5', 33, 'Botble\\Location\\Models\\State'),
(48, 'en_US', 'e5c1bdea0e2b2224aa0459dd19c8e715', 34, 'Botble\\Location\\Models\\State'),
(49, 'en_US', 'ed34ba58cfcb978d37aeec5f9d8a080d', 35, 'Botble\\Location\\Models\\State'),
(50, 'en_US', 'b080daa0b9a28f191a8c79076792393f', 36, 'Botble\\Location\\Models\\State'),
(51, 'en_US', 'bd549e154fab4fd90c818239a8dbc2d2', 37, 'Botble\\Location\\Models\\State'),
(52, 'en_US', '2dd5168bc6aa729c9cc8d677af6f416c', 38, 'Botble\\Location\\Models\\State'),
(53, 'en_US', 'c8e3cb88696f9d0800195dc3d576accf', 39, 'Botble\\Location\\Models\\State'),
(54, 'en_US', 'ab0d6ecd303307b07b9e966be0cbb79d', 40, 'Botble\\Location\\Models\\State'),
(55, 'en_US', '961d41a9b3b132f3d0c03a6baf6ca67a', 41, 'Botble\\Location\\Models\\State'),
(56, 'en_US', '06a58ee5db1fbcc923f148badcaab944', 42, 'Botble\\Location\\Models\\State'),
(57, 'en_US', '2863205216e057b127d38c0e9ba0be8d', 43, 'Botble\\Location\\Models\\State'),
(58, 'en_US', 'ab6948b5602082352deadda37b72c099', 44, 'Botble\\Location\\Models\\State'),
(59, 'en_US', '550c6f2e347185a9b3ceec2cb4b57a59', 45, 'Botble\\Location\\Models\\State'),
(60, 'en_US', 'a0208d64d3afa0443c03ec4a65cbdc21', 46, 'Botble\\Location\\Models\\State'),
(61, 'en_US', '7ec43fad3b23331030d0976b789aaed9', 47, 'Botble\\Location\\Models\\State'),
(62, 'en_US', 'b655bf6c6e4991b36167c94cfaa66636', 48, 'Botble\\Location\\Models\\State'),
(63, 'en_US', '0c69f22c37a1158b6ebafb47b80c9587', 49, 'Botble\\Location\\Models\\State'),
(64, 'en_US', 'd28bf06397b8bb32b940212cf40ac472', 50, 'Botble\\Location\\Models\\State'),
(65, 'en_US', '23f820b8ea7c98798b6d4c36dea79c2a', 51, 'Botble\\Location\\Models\\State'),
(66, 'en_US', '1aae96e4945c7136ac2948e1c0fd6716', 52, 'Botble\\Location\\Models\\State'),
(67, 'en_US', '9377260b3a87e8f519df2044f0b6f7ae', 53, 'Botble\\Location\\Models\\State'),
(68, 'en_US', '684055e0ca93b56b7ece06defe5a45ea', 54, 'Botble\\Location\\Models\\State'),
(69, 'en_US', '0c6bd3320a94e5bb62dc35c2b72ab441', 55, 'Botble\\Location\\Models\\State'),
(70, 'en_US', '1da0a9cd0e3b67f96ec74e2840215907', 56, 'Botble\\Location\\Models\\State'),
(71, 'en_US', 'c9b71d226a6b84068d1c17944e2b2703', 57, 'Botble\\Location\\Models\\State'),
(72, 'en_US', '975b61a1257350911e3ebe5dded9c5fd', 58, 'Botble\\Location\\Models\\State'),
(73, 'en_US', '6cb57eadc513d1d1f583b8a65a719ec3', 59, 'Botble\\Location\\Models\\State'),
(74, 'en_US', '2e28199a8cd06962b057e26eb00b7278', 60, 'Botble\\Location\\Models\\State'),
(75, 'en_US', 'b15cc2e45cefd5d5f215b044eac9d149', 61, 'Botble\\Location\\Models\\State'),
(76, 'en_US', '7a183a28d9ab4e358d1cbbc60c4a05b2', 62, 'Botble\\Location\\Models\\State'),
(77, 'en_US', '6d8a87021d68cd4c4d6d8451b69020a1', 63, 'Botble\\Location\\Models\\State'),
(78, 'en_US', '7351c686ab0dc8eb29fc34eb9edb7c74', 64, 'Botble\\Location\\Models\\State'),
(79, 'en_US', '7d9ce98bfc5a112e490771e16aa18043', 65, 'Botble\\Location\\Models\\State'),
(80, 'en_US', '416a63020299257dd5867bf9ee602f8f', 66, 'Botble\\Location\\Models\\State'),
(81, 'en_US', 'cc5f4fbd77fb5f25dc0b56b2ec2d2e09', 67, 'Botble\\Location\\Models\\State'),
(82, 'en_US', 'b7048ac4ac63ce33ef2ae218cd541dde', 68, 'Botble\\Location\\Models\\State'),
(83, 'en_US', '027f5254ce1e3c2b1597d748ec36e646', 69, 'Botble\\Location\\Models\\State'),
(84, 'en_US', '9caa3ea4717342ea229cbec4f1d49685', 13, 'Botble\\Location\\Models\\City'),
(85, 'en_US', '142caa49bd454cab351f8274581b9689', 14, 'Botble\\Location\\Models\\City'),
(86, 'en_US', '88156c5ccd2529044c65bc9554fb3f69', 15, 'Botble\\Location\\Models\\City'),
(87, 'en_US', 'a4119de637789a7522bdd19a99c22d0f', 16, 'Botble\\Location\\Models\\City'),
(88, 'en_US', '29df5d3047df2e8bfb485c0c1752623c', 17, 'Botble\\Location\\Models\\City'),
(89, 'en_US', 'faf13b1332d2cc20092d988f63134116', 18, 'Botble\\Location\\Models\\City'),
(90, 'en_US', 'a2619b9f400b8805308f1e126b85d5c6', 19, 'Botble\\Location\\Models\\City'),
(91, 'en_US', '0c8fbebdcd1bd8ce4bfe7cd47d888e60', 20, 'Botble\\Location\\Models\\City'),
(92, 'en_US', '3abfcfe255db982d5b2f91bf3b5e17ff', 21, 'Botble\\Location\\Models\\City'),
(93, 'en_US', '208cf011fc99c194c424784e3b2ba12e', 22, 'Botble\\Location\\Models\\City'),
(94, 'en_US', '466b273aed96b262176e91c81645a273', 23, 'Botble\\Location\\Models\\City'),
(95, 'en_US', '2a6c5b2474671532d190bb9b9687a60c', 24, 'Botble\\Location\\Models\\City'),
(96, 'en_US', '6fd9a9da380f5cc6cd90fd82cd2aecf7', 25, 'Botble\\Location\\Models\\City'),
(97, 'en_US', '7d51acd70abf50ed3eda143a9aef59c9', 26, 'Botble\\Location\\Models\\City'),
(98, 'en_US', '17ddfb69a11b6514dd6ae533951cd89a', 27, 'Botble\\Location\\Models\\City'),
(99, 'en_US', '738074c63c7107d3bc88b97f0a0d1256', 28, 'Botble\\Location\\Models\\City'),
(100, 'en_US', 'aa427f4d0aae31263f2eeec74bccfbec', 29, 'Botble\\Location\\Models\\City'),
(101, 'en_US', '5ec564ad2e2853b1c1d68c7652ff98bb', 30, 'Botble\\Location\\Models\\City'),
(102, 'en_US', '3546f98fd00fa883360691ce02b834f5', 31, 'Botble\\Location\\Models\\City'),
(103, 'en_US', '035cb5015aeabe6c0f36a875c2a62959', 32, 'Botble\\Location\\Models\\City'),
(104, 'en_US', '16e627c0510ce9b8baee7ba3ec36d789', 33, 'Botble\\Location\\Models\\City'),
(105, 'en_US', '517f24b5426cf021e55430f17d050a4e', 34, 'Botble\\Location\\Models\\City'),
(106, 'en_US', 'd798788490abf9430cdb3a7153fd33a7', 35, 'Botble\\Location\\Models\\City'),
(107, 'en_US', '6667ec0452e23c07265867701cca9648', 36, 'Botble\\Location\\Models\\City'),
(108, 'en_US', '8b761acc3d776e283b393bab343ee5a5', 37, 'Botble\\Location\\Models\\City'),
(109, 'en_US', '954cee0b6326badb7cd0eb26e9801816', 38, 'Botble\\Location\\Models\\City'),
(110, 'en_US', 'da53f591a4c2c718cb13bb9d4d8333f0', 39, 'Botble\\Location\\Models\\City'),
(111, 'en_US', 'f6dee1cb71ed15d0c24e677bcc1cfaf2', 40, 'Botble\\Location\\Models\\City'),
(112, 'en_US', '8c118e62ee7bc34ff51248d7c3fd00ae', 41, 'Botble\\Location\\Models\\City'),
(113, 'en_US', 'dfc3e2934d5abedd805b718d85e7e99e', 42, 'Botble\\Location\\Models\\City'),
(114, 'en_US', '42167ec8a204b307da79ba2834cd68e1', 43, 'Botble\\Location\\Models\\City'),
(115, 'en_US', '6b5d196314d2d62029516ce7fc20f2b8', 44, 'Botble\\Location\\Models\\City'),
(116, 'en_US', '9504eab6228953abd0d6254580953a0b', 45, 'Botble\\Location\\Models\\City'),
(117, 'en_US', '8007483eedefa6735fd391f16546d33c', 46, 'Botble\\Location\\Models\\City'),
(118, 'en_US', '0957a34a18bd31871084c74e7677f0e5', 47, 'Botble\\Location\\Models\\City'),
(119, 'en_US', '3607608ccac58fe219381d60f8802024', 48, 'Botble\\Location\\Models\\City'),
(120, 'en_US', '7e20eeafa1e016d65f821fa04b07e480', 49, 'Botble\\Location\\Models\\City'),
(121, 'en_US', '085f86e298bdd7628162805b8107aef2', 50, 'Botble\\Location\\Models\\City'),
(122, 'en_US', '5162774cfe9b3bdf918af3b370417181', 51, 'Botble\\Location\\Models\\City'),
(123, 'en_US', '8c9e8a33006267e90a1ec3ba4c17bdb4', 52, 'Botble\\Location\\Models\\City'),
(124, 'en_US', '081e607cc92e14747467566b3cf03e43', 53, 'Botble\\Location\\Models\\City'),
(125, 'en_US', '696fcfda2d5469b767ecf41fccfff41f', 54, 'Botble\\Location\\Models\\City'),
(126, 'en_US', 'f3dd3aa3904fcf60712a689160357ed0', 55, 'Botble\\Location\\Models\\City'),
(127, 'en_US', '910b2698375c2544f584a4ccec35dadf', 56, 'Botble\\Location\\Models\\City'),
(128, 'en_US', 'f272fba019485918d0644d25140ba427', 57, 'Botble\\Location\\Models\\City'),
(129, 'en_US', 'cbc199f59ec5c7d73931b86210b45c63', 58, 'Botble\\Location\\Models\\City'),
(130, 'en_US', '50227a8b7eb9d9e5c8e06139cc747cd6', 59, 'Botble\\Location\\Models\\City'),
(131, 'en_US', '12310d6ea4633ccb57a58837bb916588', 60, 'Botble\\Location\\Models\\City'),
(132, 'en_US', 'd3f3e6201e49851a9c7650043bda161a', 61, 'Botble\\Location\\Models\\City'),
(133, 'en_US', '0667514f6462df70987f668104b220e1', 62, 'Botble\\Location\\Models\\City'),
(134, 'en_US', '37eb6eb5d4833b40b20e4562dff749f0', 63, 'Botble\\Location\\Models\\City'),
(135, 'en_US', '9c3ba8b54d09e92c1e0b6e233432cb0d', 64, 'Botble\\Location\\Models\\City'),
(136, 'en_US', '295344579d7c3440d9afbc9f93b9646f', 65, 'Botble\\Location\\Models\\City'),
(137, 'en_US', '4e36876d5c935ebc802da2a874327734', 66, 'Botble\\Location\\Models\\City'),
(138, 'en_US', 'f1cabc87452530c3b18944a662030495', 67, 'Botble\\Location\\Models\\City'),
(139, 'en_US', 'f66a5d57904781c5692e2ae18b7b3499', 68, 'Botble\\Location\\Models\\City'),
(140, 'en_US', '63e2fc14bc551ef21734c805ae03b648', 69, 'Botble\\Location\\Models\\City'),
(141, 'en_US', 'fdf55c2597654abce4ff4ed4d406bac5', 70, 'Botble\\Location\\Models\\City'),
(142, 'en_US', '65c9e1ef7038ab2a48326a9e7ee5bcaf', 71, 'Botble\\Location\\Models\\City'),
(143, 'en_US', '6b8e0a1ab45a67ef8443a8733f42dde7', 72, 'Botble\\Location\\Models\\City'),
(144, 'en_US', 'd41b37f692e9ab350b8213fec1f04907', 73, 'Botble\\Location\\Models\\City'),
(145, 'en_US', 'c8b80d5532e09e8779d305dac8129430', 74, 'Botble\\Location\\Models\\City'),
(146, 'en_US', '341edef779a51ee81e26d3928609f853', 75, 'Botble\\Location\\Models\\City'),
(147, 'en_US', 'b3d24779c4f028487649e6d9c1313375', 76, 'Botble\\Location\\Models\\City'),
(148, 'en_US', '4cfbd89c52c7cbd355a46152f567b31b', 77, 'Botble\\Location\\Models\\City'),
(149, 'en_US', 'f0a5e86c5069eba5ea781e81969691b5', 78, 'Botble\\Location\\Models\\City'),
(150, 'en_US', '5588ff1e592dd1c137728d5187c79244', 79, 'Botble\\Location\\Models\\City'),
(151, 'en_US', '59065febb5865806fab04e24a39dbbf6', 80, 'Botble\\Location\\Models\\City'),
(152, 'en_US', 'ed215dbd841a047dbfd4be7266f352db', 81, 'Botble\\Location\\Models\\City'),
(153, 'en_US', '8ac76df3852bf8fa2af12d66ef91d9f4', 82, 'Botble\\Location\\Models\\City'),
(154, 'en_US', '93734cf6a80e8e93342fb939ea7f0e7e', 83, 'Botble\\Location\\Models\\City'),
(155, 'en_US', '8f018fcf96c5c1b0edcc0432e78a92c3', 84, 'Botble\\Location\\Models\\City'),
(156, 'en_US', '460eb97854dce0f83112ab2235cb838c', 85, 'Botble\\Location\\Models\\City'),
(157, 'en_US', '1ca815789d8ac230c6f23d64bb90ac7d', 86, 'Botble\\Location\\Models\\City'),
(158, 'en_US', '94b4d2193eaf1dec59c47d7c35f553cb', 87, 'Botble\\Location\\Models\\City'),
(159, 'en_US', 'f4d0b441d94fc662dcc2b859547b973b', 88, 'Botble\\Location\\Models\\City'),
(160, 'en_US', '50f2a21342a59608b4bbe2ffb79788d8', 89, 'Botble\\Location\\Models\\City'),
(161, 'en_US', '888543488de876ee1add27fe4d9e4e89', 90, 'Botble\\Location\\Models\\City'),
(162, 'en_US', '77e21c1c94f00a5c470c65fb19922baf', 91, 'Botble\\Location\\Models\\City'),
(163, 'en_US', '17e9c632a1149e940fb0ae93525659d9', 92, 'Botble\\Location\\Models\\City'),
(164, 'en_US', 'f9ec1dc37e867f5f69d85ffe5723a7fa', 93, 'Botble\\Location\\Models\\City'),
(165, 'en_US', '346eb6f2dbd2d0d9ca639b257560a3c7', 94, 'Botble\\Location\\Models\\City'),
(166, 'en_US', '1d2d4d3467a62e8befa8fcd6d98764ff', 95, 'Botble\\Location\\Models\\City'),
(167, 'en_US', '86f3114cd9251410a99aaa1fa94d6bc4', 96, 'Botble\\Location\\Models\\City'),
(168, 'en_US', '00bf4f402d933ba3e77d52e223dedefb', 97, 'Botble\\Location\\Models\\City'),
(169, 'en_US', '8640fd58174308835d3a81f0dfe3a041', 98, 'Botble\\Location\\Models\\City'),
(170, 'en_US', 'f03b199eeb0dea16036e1855e40d06e6', 99, 'Botble\\Location\\Models\\City'),
(171, 'en_US', '3ca8d6e91d0d9ff725cf8d0f11a646f3', 100, 'Botble\\Location\\Models\\City'),
(172, 'en_US', '7b8ed84299f629c43a2e08b0195c8a4b', 101, 'Botble\\Location\\Models\\City'),
(173, 'en_US', 'aafe6033a2d9c2dbc8e82cf681f3f7f8', 102, 'Botble\\Location\\Models\\City'),
(174, 'en_US', '946b613e687e0b5807ad715710127b55', 103, 'Botble\\Location\\Models\\City'),
(175, 'en_US', 'a632e81e0dacc124e97c9d12808e178a', 104, 'Botble\\Location\\Models\\City'),
(176, 'en_US', '2ef6e8195984b17cba98ebd890ee421d', 105, 'Botble\\Location\\Models\\City'),
(177, 'en_US', '4068f496455b376bbc6ec69083b2fc9a', 106, 'Botble\\Location\\Models\\City'),
(178, 'en_US', '54b1da87c20faec2c17abb9f4fbe7405', 107, 'Botble\\Location\\Models\\City'),
(179, 'en_US', 'a9cb07b266e000e239447791dd25a960', 108, 'Botble\\Location\\Models\\City'),
(180, 'en_US', '2d0a66994f8ba84d8cfad36d6386af47', 109, 'Botble\\Location\\Models\\City'),
(181, 'en_US', '447cd81ecb440b9cf9a742e3f22f4573', 110, 'Botble\\Location\\Models\\City'),
(182, 'en_US', '638da822367038999af3e7d017addfc2', 111, 'Botble\\Location\\Models\\City'),
(183, 'en_US', 'de5a5a98d018c535c12417f17b2a45e0', 112, 'Botble\\Location\\Models\\City'),
(184, 'en_US', '4efd6ae5796333b1dfcb600bd37ca7fd', 113, 'Botble\\Location\\Models\\City'),
(185, 'en_US', '5d66c46d93e4078870f859cf5136ff6b', 114, 'Botble\\Location\\Models\\City'),
(186, 'en_US', '433cf41c159840010004c119f6fd6d4c', 115, 'Botble\\Location\\Models\\City'),
(187, 'en_US', 'fbe5215fd71f47449df9c40903204249', 116, 'Botble\\Location\\Models\\City'),
(188, 'en_US', '2c2e314bffc48485e028df7cb141e1f9', 117, 'Botble\\Location\\Models\\City'),
(189, 'en_US', '502778851e038433407a4c53b76d97ae', 118, 'Botble\\Location\\Models\\City'),
(190, 'en_US', 'fdc6761f7a8a8843662cf7548a71f70c', 119, 'Botble\\Location\\Models\\City'),
(191, 'en_US', 'e13282dffa6b3cf9614ecc0d21aa39b5', 120, 'Botble\\Location\\Models\\City'),
(192, 'en_US', '1061998c3932b78ef45c145230296f22', 121, 'Botble\\Location\\Models\\City'),
(193, 'en_US', 'f210ce38cdab37a675df272039c1512b', 122, 'Botble\\Location\\Models\\City'),
(194, 'en_US', '2c7822cdc29035ddd808dea2d7d9f15f', 123, 'Botble\\Location\\Models\\City'),
(195, 'en_US', 'ca87c996f5718f511b079bf22836c1ff', 124, 'Botble\\Location\\Models\\City'),
(196, 'en_US', '93363c3c5e96f3979cf1dd6ad7674b48', 125, 'Botble\\Location\\Models\\City'),
(197, 'en_US', 'd12fb959b83cb8240061462af91fcca2', 126, 'Botble\\Location\\Models\\City'),
(198, 'en_US', '426ed2355f44f8490c1b7daf6ef380c7', 127, 'Botble\\Location\\Models\\City'),
(199, 'en_US', 'e035112a1d255e396f1106f23a4a1e83', 128, 'Botble\\Location\\Models\\City'),
(200, 'en_US', '2e3b14535d961f8444d79263244e0c16', 129, 'Botble\\Location\\Models\\City'),
(201, 'en_US', '34e1e360ea375a9d47685b510cd56e75', 130, 'Botble\\Location\\Models\\City'),
(202, 'en_US', '3e99484b9a61f42851e5c537238ca13e', 131, 'Botble\\Location\\Models\\City'),
(203, 'en_US', 'be47624ee05385c39327d0bcc08d6122', 132, 'Botble\\Location\\Models\\City'),
(204, 'en_US', '1bb7d57cd3bd7a0d055c7f1ca7c363ee', 133, 'Botble\\Location\\Models\\City'),
(205, 'en_US', 'eaaa2f86a6fbec787dd5365e0a7c67e0', 134, 'Botble\\Location\\Models\\City'),
(206, 'en_US', '46d25af24d796a6a7f491d000d6bce17', 135, 'Botble\\Location\\Models\\City'),
(207, 'en_US', '74e2a975762d42b7ff9077c1a4da0c1c', 136, 'Botble\\Location\\Models\\City'),
(208, 'en_US', '74b8c4a22b830d276664d0e1bb58d9ec', 137, 'Botble\\Location\\Models\\City'),
(209, 'en_US', '457a8ed7a2b74e195c8bf415f749283c', 138, 'Botble\\Location\\Models\\City'),
(210, 'en_US', 'e20bd7844abea2ca110d158beb3958d5', 139, 'Botble\\Location\\Models\\City'),
(211, 'en_US', '62ed4733edc679c0eef53af171c49958', 140, 'Botble\\Location\\Models\\City'),
(212, 'en_US', '7b2b9a73edfbc01c593d31a2aa123a4b', 141, 'Botble\\Location\\Models\\City'),
(213, 'en_US', '198d23ce623c83390f62fea3db2633c7', 142, 'Botble\\Location\\Models\\City'),
(214, 'en_US', '8b653f9749bf8a801516cd151f28ee13', 143, 'Botble\\Location\\Models\\City'),
(215, 'en_US', '45bb0d01fc8d676ce88feb637a290290', 144, 'Botble\\Location\\Models\\City'),
(216, 'en_US', '792644f927d8b29cb452b9caf7acb508', 145, 'Botble\\Location\\Models\\City'),
(217, 'en_US', '9c57855e480a6fc3bd5bd1e232775966', 146, 'Botble\\Location\\Models\\City'),
(218, 'en_US', '9a34bbbde30a6d19086f08ad0c4cd97c', 147, 'Botble\\Location\\Models\\City'),
(219, 'en_US', '126757e20e987bf431bf1e9bec81409a', 148, 'Botble\\Location\\Models\\City'),
(220, 'en_US', '7cd348178638a801a3780834ce3bc5a9', 149, 'Botble\\Location\\Models\\City'),
(221, 'en_US', '94dfd4e44085d8fc3d1e359389942148', 150, 'Botble\\Location\\Models\\City'),
(222, 'en_US', '4dc4c4c193dc899fda55de7863049bbd', 151, 'Botble\\Location\\Models\\City'),
(223, 'en_US', 'a1fdd734b1798293ffc51bfe753d49cc', 152, 'Botble\\Location\\Models\\City'),
(224, 'en_US', '5782fc9de67cab20c7e641dbd7921b68', 153, 'Botble\\Location\\Models\\City'),
(225, 'en_US', 'b6db59a10975e6426905d59475cdb79d', 154, 'Botble\\Location\\Models\\City'),
(226, 'en_US', 'c27a72a50df701a22e571384cda3e860', 155, 'Botble\\Location\\Models\\City'),
(227, 'en_US', '42b0486aab9fd68478fbb14472e2d727', 156, 'Botble\\Location\\Models\\City'),
(228, 'en_US', '88b520745a6fcf337dc1240bc3372aec', 157, 'Botble\\Location\\Models\\City'),
(229, 'en_US', 'b7c23dae99d2a2109ffc4a1946249767', 158, 'Botble\\Location\\Models\\City'),
(230, 'en_US', 'e6326498557bf0f2068856bdd7dc6b94', 159, 'Botble\\Location\\Models\\City'),
(231, 'en_US', '1047cd430821ba1f56f5cb44aa030ee7', 160, 'Botble\\Location\\Models\\City'),
(232, 'en_US', '5d7bb4bed17410f5aa25a887d82892bf', 161, 'Botble\\Location\\Models\\City'),
(233, 'en_US', '1f52f3ac112f96409cd2cdad2f8e0122', 162, 'Botble\\Location\\Models\\City'),
(234, 'en_US', '648cb4e5e49e5184892a48672bd1ddf3', 163, 'Botble\\Location\\Models\\City'),
(235, 'en_US', '815ded47cf1bd945c2fd0d3abab40c17', 164, 'Botble\\Location\\Models\\City'),
(236, 'en_US', 'e8b99e6b8d91435653b4f7468b8d9777', 165, 'Botble\\Location\\Models\\City'),
(237, 'en_US', '7f23c5d10aeb930613a03c2e1693532e', 166, 'Botble\\Location\\Models\\City'),
(238, 'en_US', '9cf70202d95e05f61499d0fdd52b8320', 167, 'Botble\\Location\\Models\\City'),
(239, 'en_US', 'b5c832876c7ef6b5ff2850cfdad9a4d3', 168, 'Botble\\Location\\Models\\City'),
(240, 'en_US', '41d718549adeaf2e770ab8837322beaa', 169, 'Botble\\Location\\Models\\City'),
(241, 'en_US', '2fd1809bf925936145bcaac143628d90', 170, 'Botble\\Location\\Models\\City'),
(242, 'en_US', '64c2aed9699695974844d65104789217', 171, 'Botble\\Location\\Models\\City'),
(243, 'en_US', '3b27a8c79823cdedad678c9f696733bf', 172, 'Botble\\Location\\Models\\City'),
(244, 'en_US', '4d21c1b29d0a69f0a78beee31afcf001', 173, 'Botble\\Location\\Models\\City'),
(245, 'en_US', '9adf5cc3a8df3b4e329b07dfd7f4026f', 174, 'Botble\\Location\\Models\\City'),
(246, 'en_US', '5bc3fc2b18aab1ddafb33c94c1337c26', 175, 'Botble\\Location\\Models\\City'),
(247, 'en_US', '029d1d405fe5e8faf9f749c765793d29', 176, 'Botble\\Location\\Models\\City'),
(248, 'en_US', '6e0e2796adcd05049cd683ddbedc59f0', 177, 'Botble\\Location\\Models\\City'),
(249, 'en_US', 'd2489fd4fcaf7faf3a02256e45dd7957', 178, 'Botble\\Location\\Models\\City'),
(250, 'en_US', 'a35fb1284e646fae0b5853ce2f1ae4b2', 179, 'Botble\\Location\\Models\\City'),
(251, 'en_US', '2115681e31f2e5dbe27987ecaad69e89', 180, 'Botble\\Location\\Models\\City'),
(252, 'en_US', 'ccb07cebbc092859d81e56fadcd9f66a', 181, 'Botble\\Location\\Models\\City'),
(253, 'en_US', '54e783fb51bbd0a6d962a7f12272ee0b', 182, 'Botble\\Location\\Models\\City'),
(254, 'en_US', 'e913c0909557b751abd59de77de91024', 183, 'Botble\\Location\\Models\\City'),
(255, 'en_US', '3fb9b39fedc6361014720d77559a251f', 184, 'Botble\\Location\\Models\\City'),
(256, 'en_US', '38860cf6469641580c0ff396242b65c9', 185, 'Botble\\Location\\Models\\City'),
(257, 'en_US', 'dd9ddaae59dced3a4e125a98d5c60938', 186, 'Botble\\Location\\Models\\City'),
(258, 'en_US', '452d0e84412eff73e1e0c15043a140a9', 187, 'Botble\\Location\\Models\\City'),
(259, 'en_US', 'f7329abf131e0a9eeaf2f1d6391d643a', 188, 'Botble\\Location\\Models\\City'),
(260, 'en_US', '99ae7ce6b4bb70a4aca630905e820725', 189, 'Botble\\Location\\Models\\City'),
(261, 'en_US', '20102fc70587fb5059a063ceb66a74d3', 190, 'Botble\\Location\\Models\\City'),
(262, 'en_US', '1a17c04ef1b978775bbd584ba4aa2494', 191, 'Botble\\Location\\Models\\City'),
(263, 'en_US', '10f2be428941e33ab25312458ae39a75', 192, 'Botble\\Location\\Models\\City'),
(264, 'en_US', '007782fa54fbbf9c1a978eb82db1d0a2', 193, 'Botble\\Location\\Models\\City'),
(265, 'en_US', '08661fe2752145084ae14fddd90f1576', 194, 'Botble\\Location\\Models\\City'),
(266, 'en_US', '39b11705e96dc87a275374b7269c7ed1', 195, 'Botble\\Location\\Models\\City'),
(267, 'en_US', '691c7e7f8248c5bb6a9b859df5ecdde2', 196, 'Botble\\Location\\Models\\City'),
(268, 'en_US', '7c8096cc360708c95186d3d4a9c6da22', 197, 'Botble\\Location\\Models\\City'),
(269, 'en_US', 'd7c95182fdb099644b34b358c91e5884', 198, 'Botble\\Location\\Models\\City'),
(270, 'en_US', 'd3ddbeefec948a74561e57e32fef2a7d', 199, 'Botble\\Location\\Models\\City'),
(271, 'en_US', '8ca06ef8849b01d94443b77f97cf013e', 200, 'Botble\\Location\\Models\\City'),
(272, 'en_US', 'a65aae570f70b4db2d8b093bbf1e63dd', 201, 'Botble\\Location\\Models\\City'),
(273, 'en_US', 'd37fa0bd552281b00a6e83290a34d4af', 202, 'Botble\\Location\\Models\\City'),
(274, 'en_US', 'f0730e049c8c845f8cf9de3b76758b3f', 203, 'Botble\\Location\\Models\\City'),
(275, 'en_US', '50a758bb4aaba2abab340335ad46757a', 204, 'Botble\\Location\\Models\\City'),
(276, 'en_US', 'bdc8035fac5f758f600fd500287fb388', 205, 'Botble\\Location\\Models\\City'),
(277, 'en_US', '3f733ec60ef02fdece9b74d9d17976cd', 206, 'Botble\\Location\\Models\\City'),
(278, 'en_US', 'd2c6abf8e05de8e7ccade2bed8b5e72d', 207, 'Botble\\Location\\Models\\City'),
(279, 'en_US', '5c3cafbf174a7e167b6e52d5a05bdf9f', 208, 'Botble\\Location\\Models\\City'),
(280, 'en_US', '5718db4280061c9e10fa278a960a6ebd', 209, 'Botble\\Location\\Models\\City'),
(281, 'en_US', '45ad4b9ab5c3f705808a8431ea879c7d', 210, 'Botble\\Location\\Models\\City'),
(282, 'en_US', '633d2b794be6590619593b90e44994bc', 211, 'Botble\\Location\\Models\\City'),
(283, 'en_US', '749751abd287aff972d508f2beb4d715', 212, 'Botble\\Location\\Models\\City'),
(284, 'en_US', '98c454c2857ed12c8afdb28b72f0a7b1', 213, 'Botble\\Location\\Models\\City'),
(285, 'en_US', '087e2b95440912b37dabbdcca0f45933', 214, 'Botble\\Location\\Models\\City'),
(286, 'en_US', '35ff5767fcfe509abe6ebbf51f9da700', 215, 'Botble\\Location\\Models\\City'),
(287, 'en_US', '48b86a4529709e3f5aa6e691b0df91cf', 216, 'Botble\\Location\\Models\\City'),
(288, 'en_US', '5572a3de2a87e0e0bfd7b0c9b331cf60', 217, 'Botble\\Location\\Models\\City'),
(289, 'en_US', 'fba1b48e9ddfb1659a3184e8ca9a9a7c', 218, 'Botble\\Location\\Models\\City'),
(290, 'en_US', 'e64118e33f3093ba68e6002dd258fc35', 219, 'Botble\\Location\\Models\\City'),
(291, 'en_US', '3d6af69bcebcc534e735d683802ce6b9', 220, 'Botble\\Location\\Models\\City'),
(292, 'en_US', '49756720ee8d182bd4ac9afc19d86bca', 221, 'Botble\\Location\\Models\\City'),
(293, 'en_US', '58843291f464dcb7b36125aab4e6e67a', 222, 'Botble\\Location\\Models\\City'),
(294, 'en_US', 'f5adefab3e8e18d2859a06dbe1da85fc', 223, 'Botble\\Location\\Models\\City'),
(295, 'en_US', '58003d6ea1c082a9e039a408b02234be', 224, 'Botble\\Location\\Models\\City'),
(296, 'en_US', 'e90cfe3b6361d029723d33f145f033d8', 225, 'Botble\\Location\\Models\\City'),
(297, 'en_US', '48019aa01bab4477c1552a1cfd577ab1', 226, 'Botble\\Location\\Models\\City'),
(298, 'en_US', '82545c08a67c334b0ac5cbb4e3f9939d', 227, 'Botble\\Location\\Models\\City'),
(299, 'en_US', '32bd12678f67692e33a37b74218866fe', 228, 'Botble\\Location\\Models\\City'),
(300, 'en_US', '6ca1ac76b13804569367801f2e5364da', 229, 'Botble\\Location\\Models\\City'),
(301, 'en_US', 'be39c1314d4e8e61d17dc5b719681dff', 230, 'Botble\\Location\\Models\\City'),
(302, 'en_US', 'e42d9c3a1160992c5a0e4d21c53509f4', 231, 'Botble\\Location\\Models\\City'),
(303, 'en_US', 'f781940e5eaa35ed1626a414797675ff', 232, 'Botble\\Location\\Models\\City'),
(304, 'en_US', '9b9eb7166aa7fd0b1ed029cc3765553d', 233, 'Botble\\Location\\Models\\City'),
(305, 'en_US', '25b30f1abcb6e1580a1d6f0aa17f755b', 234, 'Botble\\Location\\Models\\City'),
(306, 'en_US', '1780d02e67f1dabb45a883f62463ac4e', 235, 'Botble\\Location\\Models\\City'),
(307, 'en_US', '55b8c843441a9e53ae32442329eab8fb', 236, 'Botble\\Location\\Models\\City'),
(308, 'en_US', 'ebe967bc42d28f534d17a8a7530a26fa', 237, 'Botble\\Location\\Models\\City'),
(309, 'en_US', '7f6d5ab8cdf6d924c10d3af5597bb0a9', 238, 'Botble\\Location\\Models\\City'),
(310, 'en_US', '49c6377bed1557c26ef4e6fe85257182', 239, 'Botble\\Location\\Models\\City'),
(311, 'en_US', '257707994c6e836089ea1afe898db2a8', 240, 'Botble\\Location\\Models\\City'),
(312, 'en_US', 'fe7160be6aabd52c0fd40853a4ae04a3', 241, 'Botble\\Location\\Models\\City'),
(313, 'en_US', 'ae0ad10e6f0362ee49459bf1a7c3ef64', 242, 'Botble\\Location\\Models\\City'),
(314, 'en_US', '3428c17f0945ee170fe6c53910e7a4ba', 243, 'Botble\\Location\\Models\\City'),
(315, 'en_US', 'e8b744839cb39c7159364e1b030e2124', 244, 'Botble\\Location\\Models\\City'),
(316, 'en_US', '6b8df8479685ef686980afbdf7df3bb0', 245, 'Botble\\Location\\Models\\City'),
(317, 'en_US', 'ae03add0c97c835b81af16cb8fa0cd6c', 246, 'Botble\\Location\\Models\\City'),
(318, 'en_US', 'eac68a85f62a029b981ef05686727cc1', 247, 'Botble\\Location\\Models\\City'),
(319, 'en_US', 'a6989935f5541929a01db7b02465758a', 248, 'Botble\\Location\\Models\\City'),
(320, 'en_US', '1647dc53ab47d23b4003d47b98f2eaa1', 249, 'Botble\\Location\\Models\\City'),
(321, 'en_US', 'b457eda5d3cd4b7480d395bf288e45ca', 250, 'Botble\\Location\\Models\\City'),
(322, 'en_US', '52e289d1f54332b81f164354c5f3aa9b', 251, 'Botble\\Location\\Models\\City'),
(323, 'en_US', 'c009cbd17a8203b69edcf64776d3ecff', 252, 'Botble\\Location\\Models\\City'),
(324, 'en_US', '3a435002e13fe730f41a34ebc4541ae5', 253, 'Botble\\Location\\Models\\City'),
(325, 'en_US', '7703769481eb1f9da26dd3dfd2614918', 254, 'Botble\\Location\\Models\\City'),
(326, 'en_US', '3f34f376d17e6b87225bb329c571725a', 255, 'Botble\\Location\\Models\\City'),
(327, 'en_US', 'a1c62cc0319dc7f5577e3af9da1b5623', 256, 'Botble\\Location\\Models\\City'),
(328, 'en_US', '4a1bffd588e28bc2678b54caddfecfd0', 257, 'Botble\\Location\\Models\\City'),
(329, 'en_US', 'c95d17bea01472f0890f91e3cf3446e0', 258, 'Botble\\Location\\Models\\City'),
(330, 'en_US', 'ff97c64ef9f110d9aef76a0b2c5a5159', 259, 'Botble\\Location\\Models\\City'),
(331, 'en_US', '66608e6b85d05f7e9a02369102544de4', 260, 'Botble\\Location\\Models\\City'),
(332, 'en_US', 'f2b370d79187a288ed1bdfaf63f91cab', 261, 'Botble\\Location\\Models\\City'),
(333, 'en_US', 'd68e72efa4066741cca218230ef669c0', 262, 'Botble\\Location\\Models\\City'),
(334, 'en_US', '3dc20e8056f8c8c4bc62593df4104be8', 263, 'Botble\\Location\\Models\\City'),
(335, 'en_US', '60cf0a72c703c06f08576cce515d6ddd', 264, 'Botble\\Location\\Models\\City'),
(336, 'en_US', '58f35530387e30cca945988ec1588c0b', 265, 'Botble\\Location\\Models\\City'),
(337, 'en_US', '101c33b41d78693a7d222e04850759b6', 266, 'Botble\\Location\\Models\\City'),
(338, 'en_US', 'e0ca9e236253877ea1f114e5a1524822', 267, 'Botble\\Location\\Models\\City'),
(339, 'en_US', '686c2abc4f6b41e6dfe823b36644cef8', 268, 'Botble\\Location\\Models\\City'),
(340, 'en_US', '22444047a54e09e56a7e740f63bb75c7', 269, 'Botble\\Location\\Models\\City'),
(341, 'en_US', '71c138c539658c3077e0bbcf2afc3b22', 270, 'Botble\\Location\\Models\\City'),
(342, 'en_US', '362ce59c44849e8ec3a975fb1c324263', 271, 'Botble\\Location\\Models\\City'),
(343, 'en_US', '5c72f9d216937e674cc18ea95b28160d', 272, 'Botble\\Location\\Models\\City'),
(344, 'en_US', '48f109ed9a9eefcd05a20d189b78ec41', 273, 'Botble\\Location\\Models\\City'),
(345, 'en_US', '7e923b7d7b7ececca2350529947b6574', 274, 'Botble\\Location\\Models\\City'),
(346, 'en_US', 'f648a0a732034a9f89aeb94d2fa29b04', 275, 'Botble\\Location\\Models\\City'),
(347, 'en_US', '4ec58904461aa068249617c1a6c4dcf0', 276, 'Botble\\Location\\Models\\City'),
(348, 'en_US', '82b54ebd7a92772a3d752afd995f5112', 277, 'Botble\\Location\\Models\\City'),
(349, 'en_US', '1d8236e4689798fa8d01f7a27f7cb0c0', 278, 'Botble\\Location\\Models\\City'),
(350, 'en_US', '07121dbaeff60089f5b87d1bc7b30ebe', 279, 'Botble\\Location\\Models\\City'),
(351, 'en_US', '08dca85e15e589666232dd2ffdd5740d', 280, 'Botble\\Location\\Models\\City'),
(352, 'en_US', '6fdb90579720b201f29ec634b286eab0', 281, 'Botble\\Location\\Models\\City'),
(353, 'en_US', '3b26081b541f2f3aacfd1bbd4030b3f6', 282, 'Botble\\Location\\Models\\City'),
(354, 'en_US', '21dcb449e968b5eaf6e5ade00b5c682f', 283, 'Botble\\Location\\Models\\City'),
(355, 'en_US', '6d45f46e663fef6a8ad4c95a3da56ca7', 284, 'Botble\\Location\\Models\\City'),
(356, 'en_US', '94933b757e24a21bbc1c42ffcb6fc06a', 285, 'Botble\\Location\\Models\\City'),
(357, 'en_US', 'aab8b4095c1e1e846aa3425c67e2b737', 286, 'Botble\\Location\\Models\\City'),
(358, 'en_US', 'b540cef6de78aea328b32325415d3f24', 287, 'Botble\\Location\\Models\\City'),
(359, 'en_US', 'e5b6a0f51ce54e22e8e36632182a41d8', 288, 'Botble\\Location\\Models\\City'),
(360, 'en_US', '3e5b1cd08ffe40cdd3bf001e7fc76cf8', 289, 'Botble\\Location\\Models\\City'),
(361, 'en_US', '962d531468c13d7106aad3973b59a243', 290, 'Botble\\Location\\Models\\City'),
(362, 'en_US', 'eee380be79a9da0ff60b0e3fb2835666', 291, 'Botble\\Location\\Models\\City'),
(363, 'en_US', '13ecfc3ac30565faeaefbd713bfb345a', 292, 'Botble\\Location\\Models\\City'),
(364, 'en_US', 'a5442809d89affe39b2cda3c06202f05', 293, 'Botble\\Location\\Models\\City'),
(365, 'en_US', 'f15b1db1cc138e096f83baf8731df477', 294, 'Botble\\Location\\Models\\City'),
(366, 'en_US', '34c4b6027e87342e49b96401b396a529', 295, 'Botble\\Location\\Models\\City'),
(367, 'en_US', '42d932fcf9f938b380ad7ac96bbdbc11', 296, 'Botble\\Location\\Models\\City'),
(368, 'en_US', 'ef2a3c6478d137165fb43327ed2db1b3', 297, 'Botble\\Location\\Models\\City'),
(369, 'en_US', 'a503ea6ea2add5c35f82ad6069c9365c', 298, 'Botble\\Location\\Models\\City'),
(370, 'en_US', '2f1f2878778c3014cb6ad97c11d23f6c', 299, 'Botble\\Location\\Models\\City'),
(371, 'en_US', '9c0b55b530b119d30a095f6faed08086', 300, 'Botble\\Location\\Models\\City'),
(372, 'en_US', '74246e37b6c18e71b6db962ed2033155', 301, 'Botble\\Location\\Models\\City'),
(373, 'en_US', '73f33548fd42d79fe740676c477c549a', 302, 'Botble\\Location\\Models\\City'),
(374, 'en_US', 'a6921ad0389470c542be3fec7452170d', 303, 'Botble\\Location\\Models\\City'),
(375, 'en_US', '1ae0bc2377fd323f1c3750d257da7534', 304, 'Botble\\Location\\Models\\City'),
(376, 'en_US', 'c36613d13af38f1ab8b1c354b4c1ca43', 305, 'Botble\\Location\\Models\\City'),
(377, 'en_US', '59d8f9b366adc425c99cc4534e597663', 306, 'Botble\\Location\\Models\\City'),
(378, 'en_US', '9a99bb9a1d32a025ddbd6d2e863bee71', 307, 'Botble\\Location\\Models\\City'),
(379, 'en_US', '9367dfb1f259f87b3fbd500898c49436', 308, 'Botble\\Location\\Models\\City'),
(380, 'en_US', 'de55aa1e7d29f3322d5cb9d585860a30', 309, 'Botble\\Location\\Models\\City'),
(381, 'en_US', '407b2e380bab84c07605ec779abf121d', 310, 'Botble\\Location\\Models\\City'),
(382, 'en_US', '6377e9d3a5f5c6a6c47baa06fba18a8f', 311, 'Botble\\Location\\Models\\City'),
(383, 'en_US', '5f12169bc312082332d13170295f2a29', 312, 'Botble\\Location\\Models\\City'),
(384, 'en_US', 'a67b0a5260c3efb2c681c775dd7d365b', 313, 'Botble\\Location\\Models\\City'),
(385, 'en_US', 'ce4db2579ce0f6792b57ac65babb3f31', 314, 'Botble\\Location\\Models\\City'),
(386, 'en_US', '7a85a6c441f04aea4f3033f15038df82', 315, 'Botble\\Location\\Models\\City'),
(387, 'en_US', '84ad26bb33f91ccf8be22df80f3c387d', 316, 'Botble\\Location\\Models\\City'),
(388, 'en_US', '6434d9674f7afdba2f4d4b85ea483759', 317, 'Botble\\Location\\Models\\City'),
(389, 'en_US', 'ecefa7cd8503dbb9e051df480744fbc8', 318, 'Botble\\Location\\Models\\City'),
(390, 'en_US', '03585c060851ad2e5d7c64365f1b425e', 319, 'Botble\\Location\\Models\\City'),
(391, 'en_US', '929b5ecf8c391b2e7b60c59c2dc7b604', 320, 'Botble\\Location\\Models\\City'),
(392, 'en_US', '0de66a2d5633b5d6ab7d2bc9ca5ed707', 321, 'Botble\\Location\\Models\\City'),
(393, 'en_US', '5a04491ea5ef11500daafe4d6cec4ab0', 322, 'Botble\\Location\\Models\\City'),
(394, 'en_US', '3ce3073e72ec6c73389cf1a2c5d40466', 323, 'Botble\\Location\\Models\\City'),
(395, 'en_US', 'b357a62b19038f315409a596f1140d71', 324, 'Botble\\Location\\Models\\City'),
(396, 'en_US', 'a3962bb6bc848d17c68d8749fdec5c53', 325, 'Botble\\Location\\Models\\City'),
(397, 'en_US', '12810cac8546973f5271f4d0de928c5f', 326, 'Botble\\Location\\Models\\City'),
(398, 'en_US', '8db3867a106b8a1407e33b2618ced59f', 327, 'Botble\\Location\\Models\\City'),
(399, 'en_US', '629c7f99fc37c4e91251f6988e00b5fa', 328, 'Botble\\Location\\Models\\City'),
(400, 'en_US', '61e2f74850a1c97a2751649e8c30a4f7', 329, 'Botble\\Location\\Models\\City'),
(401, 'en_US', '990f18f08a29359b433d44925b4e1f31', 330, 'Botble\\Location\\Models\\City'),
(402, 'en_US', 'e88be7fd13f25528b1c1c6bb18d887eb', 331, 'Botble\\Location\\Models\\City'),
(403, 'en_US', 'd32b8778d1024af8c47016cb8942073e', 332, 'Botble\\Location\\Models\\City'),
(404, 'en_US', 'f757db3c5ee0168521e6b6fc58de0ae2', 333, 'Botble\\Location\\Models\\City'),
(405, 'en_US', 'dd32175b279751cb1bb181a1aac9e5cd', 334, 'Botble\\Location\\Models\\City'),
(406, 'en_US', 'd4a2e111f561aa47c3f9a65135d9eb42', 335, 'Botble\\Location\\Models\\City'),
(407, 'en_US', 'dde9504cab58e74a3172cefccb8cd4b2', 336, 'Botble\\Location\\Models\\City'),
(408, 'en_US', '7cc6b79fcc1a27011911c41ff534eac9', 337, 'Botble\\Location\\Models\\City'),
(409, 'en_US', 'dc6acc943b044df3e7b1193d7d7b85ea', 338, 'Botble\\Location\\Models\\City'),
(410, 'en_US', 'e7bdab2de138fd7d24a6ea65964f27f2', 339, 'Botble\\Location\\Models\\City'),
(411, 'en_US', '825cdf82003c630cc94cf8772240b7cd', 340, 'Botble\\Location\\Models\\City'),
(412, 'en_US', '59776431c5754fff3b126feae505718c', 341, 'Botble\\Location\\Models\\City'),
(413, 'en_US', '45a038ad773ae38a938f6cce50a5e41c', 342, 'Botble\\Location\\Models\\City'),
(414, 'en_US', '494032e6e5062f509acb85316b0d7901', 343, 'Botble\\Location\\Models\\City'),
(415, 'en_US', '50159f7335269dc1f7e44285fec51e6e', 344, 'Botble\\Location\\Models\\City'),
(416, 'en_US', 'f4523f215e7ad646c7e07af56c322ac6', 345, 'Botble\\Location\\Models\\City'),
(417, 'en_US', '70ddcb95baaf6a2a8a8121ce8dc1b86d', 346, 'Botble\\Location\\Models\\City'),
(418, 'en_US', '1ad19d10c6d7b7c0375d851581f568e5', 347, 'Botble\\Location\\Models\\City'),
(419, 'en_US', '44c2ac539d8651f948d89a633181cfa7', 348, 'Botble\\Location\\Models\\City'),
(420, 'en_US', 'e30a70485c52256793b100298af884f6', 349, 'Botble\\Location\\Models\\City'),
(421, 'en_US', 'e768faaa73eaabe883d8ae5499409d3d', 350, 'Botble\\Location\\Models\\City'),
(422, 'en_US', '3135869adf4692fbc5408b26831d2c3a', 351, 'Botble\\Location\\Models\\City'),
(423, 'en_US', '808f2009acc94687c70dec1c4ce1edfb', 352, 'Botble\\Location\\Models\\City'),
(424, 'en_US', '37ee57f2e0f3046a6c91157e01df0488', 353, 'Botble\\Location\\Models\\City'),
(425, 'en_US', '4ebb23c374aa6566f21e79ae9c0a88ca', 354, 'Botble\\Location\\Models\\City'),
(426, 'en_US', '583eff619ea78245e5f907490f7e49df', 355, 'Botble\\Location\\Models\\City'),
(427, 'en_US', 'a71980082f5b411af488d83676c7b90d', 356, 'Botble\\Location\\Models\\City'),
(428, 'en_US', '7251a65151eb87d6f403f2ab1a9e5218', 357, 'Botble\\Location\\Models\\City'),
(429, 'en_US', '67a7af142d0235bd5196c535e6f49e4f', 358, 'Botble\\Location\\Models\\City'),
(430, 'en_US', 'c0aaf29dd47374957cdcef277ee47790', 359, 'Botble\\Location\\Models\\City'),
(431, 'en_US', '3ace20c64feea6c550267ac706c08329', 360, 'Botble\\Location\\Models\\City'),
(432, 'en_US', '55675d2e3451ca21c18bdb40f3d95265', 361, 'Botble\\Location\\Models\\City'),
(433, 'en_US', '44355fa2dd2cd621c368237d343a3946', 362, 'Botble\\Location\\Models\\City'),
(434, 'en_US', '4df39af7601acdef86bfcd134d876615', 363, 'Botble\\Location\\Models\\City'),
(435, 'en_US', '639437ab5415b41ca7e2c1a67ca4bce6', 364, 'Botble\\Location\\Models\\City'),
(436, 'en_US', '5d98d7cd25ee327fac6c7505cb73a49c', 365, 'Botble\\Location\\Models\\City'),
(437, 'en_US', '9dd0904e41ff36331fc287fed9529a72', 366, 'Botble\\Location\\Models\\City'),
(438, 'en_US', '268472e66fdc6974949c6489a5430ce9', 367, 'Botble\\Location\\Models\\City'),
(439, 'en_US', '560b3aefe2bae86c52b1d94ee57e7af4', 368, 'Botble\\Location\\Models\\City'),
(440, 'en_US', 'f4e3911036f40d32f6b9b212cffb26bb', 369, 'Botble\\Location\\Models\\City'),
(441, 'en_US', '21ee94c1e668b90f9c75ad6f8ee9b5a9', 370, 'Botble\\Location\\Models\\City'),
(442, 'en_US', '72152b37213fb7fb41f6e89d77cf2bdf', 371, 'Botble\\Location\\Models\\City'),
(443, 'en_US', '91166e8c1693b1a697330923e9223800', 372, 'Botble\\Location\\Models\\City'),
(444, 'en_US', '7c4211255ec0fba2311515912c34dcae', 373, 'Botble\\Location\\Models\\City'),
(445, 'en_US', 'e16f632bae7f8862efbaef1ac8da3746', 374, 'Botble\\Location\\Models\\City'),
(446, 'en_US', 'd7d1b100bfc2dd2f1f6f8917ce2107bb', 375, 'Botble\\Location\\Models\\City'),
(447, 'en_US', 'a382e3cac333ec002fd3113024dea3d0', 376, 'Botble\\Location\\Models\\City'),
(448, 'en_US', '1b712a0ff12f8e732c6f5819f6aef4f4', 377, 'Botble\\Location\\Models\\City'),
(449, 'en_US', '3e762251e5ab0f7a9fefc54adaa70d2b', 378, 'Botble\\Location\\Models\\City'),
(450, 'en_US', '6e0ebbba7520c8f27abb293fe5874790', 379, 'Botble\\Location\\Models\\City'),
(451, 'en_US', '0050ae0338e45de42a11bc29d99fb291', 380, 'Botble\\Location\\Models\\City'),
(452, 'en_US', 'e5b82bba9d0f923ba146d368dfcfb054', 381, 'Botble\\Location\\Models\\City'),
(453, 'en_US', '87f9f5caf1fb29c653e0dc9555146165', 382, 'Botble\\Location\\Models\\City'),
(454, 'en_US', '6b6b86f5d762f72608300a2e41fdf8a7', 383, 'Botble\\Location\\Models\\City'),
(455, 'en_US', '204e3d3c643702b0a07f07c8cc1f42ea', 384, 'Botble\\Location\\Models\\City'),
(456, 'en_US', 'b823c9ab0f1385e01b41c1e129473bc2', 385, 'Botble\\Location\\Models\\City'),
(457, 'en_US', 'deaaf6ce559a0bca0e47c6e0f90591ff', 386, 'Botble\\Location\\Models\\City'),
(458, 'en_US', '2d9c3ef7015e4da2279a160539c5fa9c', 387, 'Botble\\Location\\Models\\City'),
(459, 'en_US', '9dada778f9d652e48bbf8abe4b18b099', 388, 'Botble\\Location\\Models\\City'),
(460, 'en_US', '112cdda1434edb1c07f432c86dbc889b', 389, 'Botble\\Location\\Models\\City'),
(461, 'en_US', 'b209d9c2b8b83d344e1b7a8b5d11c376', 390, 'Botble\\Location\\Models\\City'),
(462, 'en_US', '5eebda5ac8e2197f30062ce0aaa95f2c', 391, 'Botble\\Location\\Models\\City'),
(463, 'en_US', '9f01d54d4eaff2205ed4dca84e45429c', 392, 'Botble\\Location\\Models\\City'),
(464, 'en_US', 'a0643b2893b10ab9c56d7fc44a1efb25', 393, 'Botble\\Location\\Models\\City'),
(465, 'en_US', '285e7099aa4535607859fc2fc01f49f1', 394, 'Botble\\Location\\Models\\City'),
(466, 'en_US', '9e274377cfc3059e6191afdd634272f9', 395, 'Botble\\Location\\Models\\City'),
(467, 'en_US', '1fb8b22b0d12ff80265a23a2eb57c18b', 396, 'Botble\\Location\\Models\\City'),
(468, 'en_US', '29acf3b2f7a0f41a12b6e4776409fed8', 397, 'Botble\\Location\\Models\\City'),
(469, 'en_US', '9b54bb7c7246a4ad8fef3b778974b56c', 398, 'Botble\\Location\\Models\\City'),
(470, 'en_US', '5a1775743d7df899ecd01e49e1e47c77', 399, 'Botble\\Location\\Models\\City'),
(471, 'en_US', 'd94d1abae1c14a773a832fdd977fc302', 400, 'Botble\\Location\\Models\\City'),
(472, 'en_US', 'e2e40682a4fc881260e81cd3796c0ed3', 401, 'Botble\\Location\\Models\\City'),
(473, 'en_US', '4d446ef41de705ceb91afdc390578f9d', 402, 'Botble\\Location\\Models\\City'),
(474, 'en_US', '6c68848588bbf85504b849b9fd925bae', 403, 'Botble\\Location\\Models\\City'),
(475, 'en_US', 'bd1a4351e615e0a16f72294640cefa2b', 404, 'Botble\\Location\\Models\\City'),
(476, 'en_US', '1d2c8da97c4aa2eae247cb05b397e463', 405, 'Botble\\Location\\Models\\City'),
(477, 'en_US', '9a9f8526cd877340b97341f3182567b4', 406, 'Botble\\Location\\Models\\City'),
(478, 'en_US', 'b4e2678636661251b041ce130e129b85', 407, 'Botble\\Location\\Models\\City'),
(479, 'en_US', '02d05527bb1bdc79c2e772d2b7ee0bc6', 408, 'Botble\\Location\\Models\\City'),
(480, 'en_US', '6106868b5f46b0b17683aadf1929bc52', 409, 'Botble\\Location\\Models\\City'),
(481, 'en_US', 'e267d017b494fa82f48594a7be9c35e8', 410, 'Botble\\Location\\Models\\City'),
(482, 'en_US', 'fa8986a3248dc13161c0787150dd5859', 411, 'Botble\\Location\\Models\\City'),
(483, 'en_US', 'd4058839c92f0d8479fa2cc9e00a895b', 412, 'Botble\\Location\\Models\\City'),
(484, 'en_US', '7ac5b05d3e901d3924d050f09167e646', 413, 'Botble\\Location\\Models\\City'),
(485, 'en_US', '5ba03d81a81f0d7ff85ef6f690399a88', 414, 'Botble\\Location\\Models\\City'),
(486, 'en_US', '72b6d68d31a4f67270e7af68af561817', 415, 'Botble\\Location\\Models\\City'),
(487, 'en_US', '96f634337512913e522c2f98913ea9ac', 416, 'Botble\\Location\\Models\\City'),
(488, 'en_US', 'e431bc2099e51cf084e8e66dba51d238', 417, 'Botble\\Location\\Models\\City'),
(489, 'en_US', 'db992fcf56fa895cd53a7ae65b214da8', 418, 'Botble\\Location\\Models\\City'),
(490, 'en_US', '62c52afd6b0dd8a09e9be8ce311d6e4a', 419, 'Botble\\Location\\Models\\City'),
(491, 'en_US', '3ed7038afca112e03ff3dd971668e0ba', 420, 'Botble\\Location\\Models\\City'),
(492, 'en_US', 'c7f1610d92f10994132e53abe9e7ceb6', 421, 'Botble\\Location\\Models\\City'),
(493, 'en_US', '469417d62c75358d3c7c6e577c79236f', 422, 'Botble\\Location\\Models\\City'),
(494, 'en_US', '4578f6e7c97864118ac8cf5ce59a76a9', 423, 'Botble\\Location\\Models\\City'),
(495, 'en_US', '056c86540565e5cb6d640f7221de1ca0', 424, 'Botble\\Location\\Models\\City'),
(496, 'en_US', '9604ad037ed4457d3c6236e1b4da81b4', 425, 'Botble\\Location\\Models\\City'),
(497, 'en_US', 'e08cfb2ebe5196066ee52576ca03de72', 426, 'Botble\\Location\\Models\\City'),
(498, 'en_US', '91bcc50810c81be65b662f4d0d096b58', 427, 'Botble\\Location\\Models\\City'),
(499, 'en_US', '826eab7c8c1638547c8c52a7a90f0192', 428, 'Botble\\Location\\Models\\City'),
(500, 'en_US', '90d65b2e1b011c15fb79a4ab70d49209', 429, 'Botble\\Location\\Models\\City'),
(501, 'en_US', 'dbc69d46b6d9db79449e8221503df351', 430, 'Botble\\Location\\Models\\City'),
(502, 'en_US', 'e55e2978a354902fe69b11ceab9887be', 431, 'Botble\\Location\\Models\\City'),
(503, 'en_US', '520caefd17a9f2dae43e4d880701e508', 432, 'Botble\\Location\\Models\\City'),
(504, 'en_US', 'e19217d66a1198ba87cb26929df00263', 433, 'Botble\\Location\\Models\\City'),
(505, 'en_US', 'b545f35a6d5ce1b8edc0c60c1d52a51b', 434, 'Botble\\Location\\Models\\City'),
(506, 'en_US', '6c39ec203d470e5660c7e948dbe9089b', 435, 'Botble\\Location\\Models\\City'),
(507, 'en_US', '2d22e29a5ee47c0c13d359508ce21ecb', 436, 'Botble\\Location\\Models\\City'),
(508, 'en_US', 'd4f835b91ebef975c9e6a22bbd7a803b', 437, 'Botble\\Location\\Models\\City'),
(509, 'en_US', '9fa6795fc7d6eb8e514a11f83d89ce76', 438, 'Botble\\Location\\Models\\City'),
(510, 'en_US', 'f5065e272b529194b53eac3579720af9', 439, 'Botble\\Location\\Models\\City'),
(511, 'en_US', '7f1fad83f1fe4757bc271e364616982a', 440, 'Botble\\Location\\Models\\City'),
(512, 'en_US', '130d9ca258b41161ec1cf78bc9e1ae20', 441, 'Botble\\Location\\Models\\City'),
(513, 'en_US', 'c2b3511ba1866bd04b1b24f0b8f492a0', 442, 'Botble\\Location\\Models\\City'),
(514, 'en_US', '7e5ac7954cf15bb65186b49468ef24a0', 443, 'Botble\\Location\\Models\\City'),
(515, 'en_US', '241c8959d9e8ece6e952ae24a6154912', 444, 'Botble\\Location\\Models\\City'),
(516, 'en_US', '45571824cf9007842d53db2e9a103abe', 445, 'Botble\\Location\\Models\\City'),
(517, 'en_US', 'ae80dbc3d8d172325c4416befe6bffee', 446, 'Botble\\Location\\Models\\City'),
(518, 'en_US', 'ef4f52d6037e5b245f91d591dd173f61', 447, 'Botble\\Location\\Models\\City'),
(519, 'en_US', 'ef40e1ac0a998ab62eb67c96736d679c', 448, 'Botble\\Location\\Models\\City'),
(520, 'en_US', '61635ba7997b023fda9425a8b2a47440', 449, 'Botble\\Location\\Models\\City'),
(521, 'en_US', 'be6b969a243d6a46cd977bef6c5c17e5', 450, 'Botble\\Location\\Models\\City'),
(522, 'en_US', '64c50c7e5b124708b08085499b55953c', 451, 'Botble\\Location\\Models\\City'),
(523, 'en_US', '3795e7ad99b3939cb399b1eb2610bdb6', 452, 'Botble\\Location\\Models\\City'),
(524, 'en_US', '47534b39b1ac516332c9d363124c4f28', 453, 'Botble\\Location\\Models\\City'),
(525, 'en_US', '0aa0f1a6fcc78838087a4db7640b0838', 454, 'Botble\\Location\\Models\\City'),
(526, 'en_US', 'af311bfc3333ac765329e5bf096a77c4', 455, 'Botble\\Location\\Models\\City'),
(527, 'en_US', '226382cde0a0b9bfa3c3cea715619d1e', 456, 'Botble\\Location\\Models\\City'),
(528, 'en_US', 'b1594d21cf3f991bfad750676ffcf7bc', 457, 'Botble\\Location\\Models\\City'),
(529, 'en_US', 'c62627320636cbc41584640eea226db1', 458, 'Botble\\Location\\Models\\City'),
(530, 'en_US', '78de4a65a86e61ad529e0b2cdc810c96', 459, 'Botble\\Location\\Models\\City'),
(531, 'en_US', '6bdd7020595508bd8854e63c3770d5d1', 460, 'Botble\\Location\\Models\\City'),
(532, 'en_US', '256f0938d4f3eceae2ea1f9894b73002', 461, 'Botble\\Location\\Models\\City'),
(533, 'en_US', '5e74529d49eb521ae7836e3d78635ded', 462, 'Botble\\Location\\Models\\City'),
(534, 'en_US', '4e9eea6909dea9d25f4e9d9958034ec3', 463, 'Botble\\Location\\Models\\City'),
(535, 'en_US', 'bf85b267eb0793862110a29232110a86', 464, 'Botble\\Location\\Models\\City'),
(536, 'en_US', 'bbcd9856a1cc6a9898672d0c0298e0b0', 465, 'Botble\\Location\\Models\\City'),
(537, 'en_US', '09f468b135ab43682537e113edead0f5', 466, 'Botble\\Location\\Models\\City'),
(538, 'en_US', '46cdbf6ca2bdcef598e34f9bcb50f267', 467, 'Botble\\Location\\Models\\City'),
(539, 'en_US', '7db4d167717e96c08b8a7c7f927ae93b', 468, 'Botble\\Location\\Models\\City'),
(540, 'en_US', 'd03cfb1d66ab3f39c2d8d8fa837ad299', 469, 'Botble\\Location\\Models\\City'),
(541, 'en_US', '85c81c20b329d7158d8a3965834bc61a', 470, 'Botble\\Location\\Models\\City'),
(542, 'en_US', 'b9b07f5ba304226a0dd762a570ec2694', 471, 'Botble\\Location\\Models\\City'),
(543, 'en_US', 'ae690df8b43496389b6a9a416af3ddbc', 472, 'Botble\\Location\\Models\\City'),
(544, 'en_US', 'b5ff0e158e27aa9bbe31a9d183112fff', 473, 'Botble\\Location\\Models\\City'),
(545, 'en_US', '2d5c7075687a6af915277502ad711065', 474, 'Botble\\Location\\Models\\City'),
(546, 'en_US', '44df9ef01cac542dbf50cc64d16969b6', 475, 'Botble\\Location\\Models\\City'),
(547, 'en_US', '50419fb2fbd72766548c6452091aa579', 476, 'Botble\\Location\\Models\\City'),
(548, 'en_US', '8e1c087c207f38e38c6b84013e39a05f', 477, 'Botble\\Location\\Models\\City'),
(549, 'en_US', 'c8dc9b0836f8e1dba79963fe3c297da8', 478, 'Botble\\Location\\Models\\City'),
(550, 'en_US', '457a18185fd5193a0505e771e5881d63', 479, 'Botble\\Location\\Models\\City'),
(551, 'en_US', '178ce438278f992c5ad773c581b68ec3', 480, 'Botble\\Location\\Models\\City'),
(552, 'en_US', '4c1be771e9c748d5bee2fa03c9b10011', 481, 'Botble\\Location\\Models\\City'),
(553, 'en_US', 'd362e393b5008d796493f9fc3c905ea3', 482, 'Botble\\Location\\Models\\City'),
(554, 'en_US', 'edb58cf421665b1ac776e07c4fd4ee03', 483, 'Botble\\Location\\Models\\City'),
(555, 'en_US', '6f041eb7270ed1d23f9439b68e53bf29', 484, 'Botble\\Location\\Models\\City'),
(556, 'en_US', 'fa5185261f40407e6d76376e435fb762', 485, 'Botble\\Location\\Models\\City'),
(557, 'en_US', '4a557d8b79f8e6364c3f8d280dc23c5f', 486, 'Botble\\Location\\Models\\City'),
(558, 'en_US', 'e52728b5dad8b07868311ae94b106a6c', 487, 'Botble\\Location\\Models\\City'),
(559, 'en_US', '356579257c13d4e974424f6afe4d6456', 488, 'Botble\\Location\\Models\\City'),
(560, 'en_US', 'b408a302385cd27beba4d738d5042b88', 489, 'Botble\\Location\\Models\\City'),
(561, 'en_US', 'bd3bff0d0bccced71553cebce5960b8c', 490, 'Botble\\Location\\Models\\City'),
(562, 'en_US', 'db056dba445a1831086c3ab65a40cea0', 491, 'Botble\\Location\\Models\\City'),
(563, 'en_US', '365e04ff51aa84cd4526460433bdc32b', 492, 'Botble\\Location\\Models\\City');
INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`) VALUES
(564, 'en_US', 'd17407c4dca19a8a356d10e24fb05858', 493, 'Botble\\Location\\Models\\City'),
(565, 'en_US', 'a2ea70ba9febd496f48c37669142baed', 494, 'Botble\\Location\\Models\\City'),
(566, 'en_US', '37f02fff1ab6016763d8c8272a907233', 495, 'Botble\\Location\\Models\\City'),
(567, 'en_US', 'd48de187b4136ca116b0b43fd99d7710', 496, 'Botble\\Location\\Models\\City'),
(568, 'en_US', '7a76696b1a7cb8fcd8c5f604435ca58e', 497, 'Botble\\Location\\Models\\City'),
(569, 'en_US', '51f64a114882636e9571749b8a0cd438', 498, 'Botble\\Location\\Models\\City'),
(570, 'en_US', '6464fecfd7b977187fcfd8bd86e9bc76', 499, 'Botble\\Location\\Models\\City'),
(571, 'en_US', 'dc6daa1d281f45406cbf1cbb695a92e4', 500, 'Botble\\Location\\Models\\City'),
(572, 'en_US', '785fc8018037625f622e0a78b48414dd', 501, 'Botble\\Location\\Models\\City'),
(573, 'en_US', 'e624984a9451482992f1de7d5bd27aaf', 502, 'Botble\\Location\\Models\\City'),
(574, 'en_US', '69a7ed96605ce5dec64b31d4269bc1ea', 503, 'Botble\\Location\\Models\\City'),
(575, 'en_US', '2f3b0a64445d92e11da1c162b1d5f781', 504, 'Botble\\Location\\Models\\City'),
(576, 'en_US', 'd8d180140e59c6d2754cb5d6212198b5', 505, 'Botble\\Location\\Models\\City'),
(577, 'en_US', 'b0e564899eff376ca768d318d30e660b', 506, 'Botble\\Location\\Models\\City'),
(578, 'en_US', '56c4bb5a085571881752d37298f06820', 507, 'Botble\\Location\\Models\\City'),
(579, 'en_US', '7f65ab9f8ba4c8bfe887e71031f4d6bb', 508, 'Botble\\Location\\Models\\City'),
(580, 'en_US', 'a1f54335b2942fee4e3bc9341211ca05', 509, 'Botble\\Location\\Models\\City'),
(581, 'en_US', 'a34d93087a1ef9616dfb1c2c632dd4a5', 510, 'Botble\\Location\\Models\\City'),
(582, 'en_US', '81734562c7afd6f2c99e4414bb1edcf1', 511, 'Botble\\Location\\Models\\City'),
(583, 'en_US', '1dd195b5ec3ad1efcb1b1cf7d264b255', 512, 'Botble\\Location\\Models\\City'),
(584, 'en_US', '802191ba6a23e62691401ed1d733a757', 513, 'Botble\\Location\\Models\\City'),
(585, 'en_US', '0c2b0e1309f7e0a0158c800f52c8a89f', 514, 'Botble\\Location\\Models\\City'),
(586, 'en_US', '498c6042e5e6eacb801bbfd81633c414', 515, 'Botble\\Location\\Models\\City'),
(587, 'en_US', 'e09ee6e015c085ce195abb1e4fc19d84', 516, 'Botble\\Location\\Models\\City'),
(588, 'en_US', '7f2300efaf708c79b22f1169f98d211b', 517, 'Botble\\Location\\Models\\City'),
(589, 'en_US', 'cfe6c7afab1ff8599040c81e01a46304', 518, 'Botble\\Location\\Models\\City'),
(590, 'en_US', '1022093c888922f653b80d6bd55189ba', 519, 'Botble\\Location\\Models\\City'),
(591, 'en_US', '0ad60a27da103eb9408dcf4ea5407fa7', 520, 'Botble\\Location\\Models\\City'),
(592, 'en_US', 'f4c9ed39a3e68181712f72ec731963ef', 521, 'Botble\\Location\\Models\\City'),
(593, 'en_US', 'de7f6a8f48b1b97fde869ca8a3fa6ce3', 522, 'Botble\\Location\\Models\\City'),
(594, 'en_US', '2c6f8191edd7c47670edf85f4bccca89', 523, 'Botble\\Location\\Models\\City'),
(595, 'en_US', '585dd7251e55caa4867de8eb5350612a', 524, 'Botble\\Location\\Models\\City'),
(596, 'en_US', '39c7a6d3ed7725d0aac498a507f3bfba', 525, 'Botble\\Location\\Models\\City'),
(597, 'en_US', 'cc89afcb6f154428cc43bdcfd65f0e10', 526, 'Botble\\Location\\Models\\City'),
(598, 'en_US', '1645535821847499879686e94e50b0c0', 527, 'Botble\\Location\\Models\\City'),
(599, 'en_US', 'bbd4482f9455c5af2992f3ba351686b9', 528, 'Botble\\Location\\Models\\City'),
(600, 'en_US', 'ea9dc2cfa9401bd874122cb21c8f99cf', 529, 'Botble\\Location\\Models\\City'),
(601, 'en_US', '0af5aacc0f1ab35f9eac93d097e9eda1', 530, 'Botble\\Location\\Models\\City'),
(602, 'en_US', '6572f2ebbfcbb356d40d072eececda62', 531, 'Botble\\Location\\Models\\City'),
(603, 'en_US', '273dd1c7530a8c771bf05658ebeb0373', 532, 'Botble\\Location\\Models\\City'),
(604, 'en_US', '41dc3177343e8ad5828b977f86519dbc', 533, 'Botble\\Location\\Models\\City'),
(605, 'en_US', '30b23839e283cfd7c46858885b628614', 534, 'Botble\\Location\\Models\\City'),
(606, 'en_US', 'fc33d1b3040fc9e475ff7793cc077d39', 535, 'Botble\\Location\\Models\\City'),
(607, 'en_US', '77fe4cb7a758d368375e729f2acae1b3', 536, 'Botble\\Location\\Models\\City'),
(608, 'en_US', '7c33e9557f57a5341335a21c72bad494', 537, 'Botble\\Location\\Models\\City'),
(609, 'en_US', 'fa3e329d78e845c73d64d74e549a9846', 538, 'Botble\\Location\\Models\\City'),
(610, 'en_US', '14711faacfa67fbf512f746b49e140b3', 539, 'Botble\\Location\\Models\\City'),
(611, 'en_US', '93334d1ff5c2ad94883c794001d5853f', 540, 'Botble\\Location\\Models\\City'),
(612, 'en_US', 'aa2ceadeedc55ae26917a09df671a34b', 541, 'Botble\\Location\\Models\\City'),
(613, 'en_US', '532cc9ee13031a086aee8c47055b7be7', 542, 'Botble\\Location\\Models\\City'),
(614, 'en_US', 'a1ca841d6ba2f75a8c3ed5c83d7bf942', 543, 'Botble\\Location\\Models\\City'),
(615, 'en_US', 'ddeba6232756c751683955f3f71b6efa', 544, 'Botble\\Location\\Models\\City'),
(616, 'en_US', '0d4fb8e2a7c0557aa6ddcaae862e0da5', 545, 'Botble\\Location\\Models\\City'),
(617, 'en_US', '3ef82ea719e6ffc70f0d110bb8447233', 546, 'Botble\\Location\\Models\\City'),
(618, 'en_US', '979e55f060ef6d30f5268af2ef4c94df', 547, 'Botble\\Location\\Models\\City'),
(619, 'en_US', '37f40274a294da57eaa3ca71ca1d492c', 548, 'Botble\\Location\\Models\\City'),
(620, 'en_US', '08ef335a880db1a8e3478552715acecf', 549, 'Botble\\Location\\Models\\City'),
(621, 'en_US', 'f25ad8e093bb456ae43137a768617884', 550, 'Botble\\Location\\Models\\City'),
(622, 'en_US', '9e895c8c64fff3852329fe25d1a2a4f5', 551, 'Botble\\Location\\Models\\City'),
(623, 'en_US', '1b73cec69169524bb993c4e6083e4cb3', 552, 'Botble\\Location\\Models\\City'),
(624, 'en_US', '7d12ed992134a77e5abf95f5360731be', 553, 'Botble\\Location\\Models\\City'),
(625, 'en_US', '1dcfe8c5696ecd897cbc3c1ad149c250', 554, 'Botble\\Location\\Models\\City'),
(626, 'en_US', '3921a8a5d98ca75e3eb47679631ce8cf', 555, 'Botble\\Location\\Models\\City'),
(627, 'en_US', '7085c040796fdd667bbb663fe8bf5db3', 556, 'Botble\\Location\\Models\\City'),
(628, 'en_US', '8f01f67edafb5ba21b0a43bd9f6d004b', 557, 'Botble\\Location\\Models\\City'),
(629, 'en_US', '9ff4a5c60587df995e7f2de191d3efb0', 558, 'Botble\\Location\\Models\\City'),
(630, 'en_US', 'b7319fe49d4d68af7cddadcb6572d6cb', 559, 'Botble\\Location\\Models\\City'),
(631, 'en_US', '008ea53bc5935f8f7e530a1ab51e28a0', 560, 'Botble\\Location\\Models\\City'),
(632, 'en_US', '72b46d2747fedaf6877d0c5e75d36a47', 561, 'Botble\\Location\\Models\\City'),
(633, 'en_US', '611162a13ca33dc038d98408d6a89bcd', 562, 'Botble\\Location\\Models\\City'),
(634, 'en_US', 'c7668a539a942feb966fa0cae7417915', 563, 'Botble\\Location\\Models\\City'),
(635, 'en_US', 'aefa0db70f78e4252efeea219d50b35d', 564, 'Botble\\Location\\Models\\City'),
(636, 'en_US', '28bc1e11f6cf2aca60f4a2acd15fe11c', 565, 'Botble\\Location\\Models\\City'),
(637, 'en_US', '6c47a55d12858bfec0c8ae770aa93766', 566, 'Botble\\Location\\Models\\City'),
(638, 'en_US', '66d24306a111d2842439403f49c2b5ca', 567, 'Botble\\Location\\Models\\City'),
(639, 'en_US', '170d3944dd5c97dd934e209e017c2303', 568, 'Botble\\Location\\Models\\City'),
(640, 'en_US', 'e4d23a0cb2313ad1a0c75fabf4134f5c', 569, 'Botble\\Location\\Models\\City'),
(641, 'en_US', '957d8a8661da0f9833321cf9da43ac1c', 570, 'Botble\\Location\\Models\\City'),
(642, 'en_US', '0bee43cf185072e3fb2f0671e3baabc4', 571, 'Botble\\Location\\Models\\City'),
(643, 'en_US', '9a4350401a0c0abbb10f90c02e638299', 572, 'Botble\\Location\\Models\\City'),
(644, 'en_US', '5de08a365956e7e0362e49f901ce2a3b', 573, 'Botble\\Location\\Models\\City'),
(645, 'en_US', 'cb9a65345b1631872a913314acbf6385', 574, 'Botble\\Location\\Models\\City'),
(646, 'en_US', '8937fc11f53ef2c4e09eb159571987d1', 1, 'Botble\\Block\\Models\\Block'),
(647, 'en_US', '7baa2a295c1f3f404601cda92ad0c6a1', 2, 'Botble\\Block\\Models\\Block'),
(648, 'en_US', 'ea46333d2dcfbce9538bcba393ffeb00', 3, 'Botble\\Block\\Models\\Block'),
(649, 'en_US', '2459a78fe5fcc2411e3f30f25d7f79ab', 4, 'Botble\\Block\\Models\\Block'),
(650, 'en_US', '704a9794f9d1b9dbbe93a47a69bb2188', 5, 'Botble\\Block\\Models\\Block'),
(651, 'en_US', '1b1bbaf99ba63bbed42dd84d12438a7f', 6, 'Botble\\Block\\Models\\Block'),
(652, 'en_US', '6d7114831761503bd0f00c8be8c912ad', 7, 'Botble\\Block\\Models\\Block'),
(653, 'vi', '8937fc11f53ef2c4e09eb159571987d1', 8, 'Botble\\Block\\Models\\Block'),
(654, 'vi', '7baa2a295c1f3f404601cda92ad0c6a1', 9, 'Botble\\Block\\Models\\Block'),
(655, 'vi', 'ea46333d2dcfbce9538bcba393ffeb00', 10, 'Botble\\Block\\Models\\Block'),
(656, 'vi', '2459a78fe5fcc2411e3f30f25d7f79ab', 11, 'Botble\\Block\\Models\\Block'),
(657, 'vi', '704a9794f9d1b9dbbe93a47a69bb2188', 12, 'Botble\\Block\\Models\\Block'),
(658, 'vi', '1b1bbaf99ba63bbed42dd84d12438a7f', 13, 'Botble\\Block\\Models\\Block'),
(659, 'vi', '6d7114831761503bd0f00c8be8c912ad', 14, 'Botble\\Block\\Models\\Block'),
(660, 'vi', '8937fc11f53ef2c4e09eb159571987d1', 15, 'Botble\\Block\\Models\\Block'),
(661, 'en_US', '74b8960d7004116b7543a4c7fad690bb', 1, 'Botble\\Page\\Models\\Page'),
(662, 'en_US', '4b156e03af4d4b216ee75a694769ce63', 2, 'Botble\\Page\\Models\\Page'),
(663, 'en_US', '8fafc83ae660f769d09c4c9d13ca6a72', 3, 'Botble\\Page\\Models\\Page'),
(664, 'en_US', '897fffe967001822491fa4bdbae889ad', 4, 'Botble\\Page\\Models\\Page'),
(665, 'en_US', 'e4ebd75f8f8ff6bfdcb394b60f9888da', 5, 'Botble\\Page\\Models\\Page'),
(666, 'en_US', '8a34b9e01e65d7c2bdff030b5594b7f1', 6, 'Botble\\Page\\Models\\Page'),
(667, 'en_US', 'eb11cb4b57073aa0fc21647651f1ebec', 7, 'Botble\\Page\\Models\\Page'),
(668, 'en_US', 'eccebee2d17155df8ed055a2e0269bd9', 8, 'Botble\\Page\\Models\\Page'),
(669, 'en_US', '7e2fd2f8a39fc8d34656196b7e295dbb', 9, 'Botble\\Page\\Models\\Page'),
(670, 'en_US', 'b66c485f86266a4437dd512420a4bd71', 10, 'Botble\\Page\\Models\\Page'),
(671, 'en_US', '8af1a7c3ee95e6d97905b46e545b12c0', 11, 'Botble\\Page\\Models\\Page'),
(672, 'en_US', '7a580c0c0a1174def751fcb3ad4256a9', 12, 'Botble\\Page\\Models\\Page'),
(673, 'en_US', '8c9e030713780327a15e1ffa863be05d', 13, 'Botble\\Page\\Models\\Page'),
(674, 'en_US', 'a35850f8a9733d3895c8ef6990602a72', 14, 'Botble\\Page\\Models\\Page'),
(675, 'en_US', 'd47ebb9118b3be38c70c5656bb3a5cd8', 15, 'Botble\\Page\\Models\\Page'),
(676, 'en_US', 'd099d125c546573803375057b3e1e0c5', 16, 'Botble\\Page\\Models\\Page'),
(677, 'vi', '74b8960d7004116b7543a4c7fad690bb', 17, 'Botble\\Page\\Models\\Page'),
(678, 'vi', '4b156e03af4d4b216ee75a694769ce63', 18, 'Botble\\Page\\Models\\Page'),
(679, 'vi', '8fafc83ae660f769d09c4c9d13ca6a72', 19, 'Botble\\Page\\Models\\Page'),
(680, 'vi', '897fffe967001822491fa4bdbae889ad', 20, 'Botble\\Page\\Models\\Page'),
(681, 'vi', 'e4ebd75f8f8ff6bfdcb394b60f9888da', 21, 'Botble\\Page\\Models\\Page'),
(682, 'vi', '8a34b9e01e65d7c2bdff030b5594b7f1', 22, 'Botble\\Page\\Models\\Page'),
(683, 'vi', 'eb11cb4b57073aa0fc21647651f1ebec', 23, 'Botble\\Page\\Models\\Page'),
(684, 'vi', 'eccebee2d17155df8ed055a2e0269bd9', 24, 'Botble\\Page\\Models\\Page'),
(685, 'vi', '7e2fd2f8a39fc8d34656196b7e295dbb', 25, 'Botble\\Page\\Models\\Page'),
(686, 'vi', 'b66c485f86266a4437dd512420a4bd71', 26, 'Botble\\Page\\Models\\Page'),
(687, 'vi', '8af1a7c3ee95e6d97905b46e545b12c0', 27, 'Botble\\Page\\Models\\Page'),
(688, 'vi', '7a580c0c0a1174def751fcb3ad4256a9', 28, 'Botble\\Page\\Models\\Page'),
(689, 'vi', '8c9e030713780327a15e1ffa863be05d', 29, 'Botble\\Page\\Models\\Page'),
(690, 'vi', 'a35850f8a9733d3895c8ef6990602a72', 30, 'Botble\\Page\\Models\\Page'),
(691, 'vi', 'd47ebb9118b3be38c70c5656bb3a5cd8', 31, 'Botble\\Page\\Models\\Page'),
(692, 'vi', 'd099d125c546573803375057b3e1e0c5', 32, 'Botble\\Page\\Models\\Page'),
(693, 'en_US', 'afcf40d0d7964c8efb64a966a43b6ab5', 1, 'Botble\\Menu\\Models\\MenuLocation'),
(694, 'en_US', '4a0b0e781e429aaefc135c594d2d0cef', 1, 'Botble\\Menu\\Models\\Menu'),
(695, 'en_US', '82126ad2d2e1149415bc187eb8dbb1da', 2, 'Botble\\Menu\\Models\\Menu'),
(696, 'en_US', 'bd354cc69f558f0efb53475a7bedfeb4', 3, 'Botble\\Menu\\Models\\Menu'),
(697, 'en_US', 'c0470ee7a2a86cc14d581567ded3987a', 4, 'Botble\\Menu\\Models\\Menu'),
(698, 'vi', 'b7092848dd949a44a54893cf4205081a', 2, 'Botble\\Menu\\Models\\MenuLocation'),
(699, 'vi', '4a0b0e781e429aaefc135c594d2d0cef', 5, 'Botble\\Menu\\Models\\Menu'),
(700, 'vi', '82126ad2d2e1149415bc187eb8dbb1da', 6, 'Botble\\Menu\\Models\\Menu'),
(701, 'vi', 'bd354cc69f558f0efb53475a7bedfeb4', 7, 'Botble\\Menu\\Models\\Menu'),
(702, 'vi', 'c0470ee7a2a86cc14d581567ded3987a', 8, 'Botble\\Menu\\Models\\Menu'),
(703, 'en_US', 'c88f623dae03fcd86d6a8c11937bd748', 1, 'Botble\\Blog\\Models\\Tag'),
(704, 'en_US', 'f47b39bcd0f632579efc77c9d6fc5df4', 2, 'Botble\\Blog\\Models\\Tag'),
(705, 'en_US', 'bbc73f13e725e283a661d460c133b863', 3, 'Botble\\Blog\\Models\\Tag'),
(706, 'en_US', '69fd85b2a4a1aa43b94b255ac1ae55bf', 4, 'Botble\\Blog\\Models\\Tag'),
(707, 'en_US', 'fe5a518e4174c7508c37ea636d264838', 5, 'Botble\\Blog\\Models\\Tag'),
(708, 'vi', 'c88f623dae03fcd86d6a8c11937bd748', 6, 'Botble\\Blog\\Models\\Tag'),
(709, 'vi', 'f47b39bcd0f632579efc77c9d6fc5df4', 7, 'Botble\\Blog\\Models\\Tag'),
(710, 'vi', 'bbc73f13e725e283a661d460c133b863', 8, 'Botble\\Blog\\Models\\Tag'),
(711, 'vi', '69fd85b2a4a1aa43b94b255ac1ae55bf', 9, 'Botble\\Blog\\Models\\Tag'),
(712, 'vi', 'fe5a518e4174c7508c37ea636d264838', 10, 'Botble\\Blog\\Models\\Tag'),
(713, 'en_US', 'bb33ce7cb25fbfe3915f2ac22e3c65b2', 1, 'Botble\\Blog\\Models\\Category'),
(714, 'en_US', '4bd932a4480bc2979f3f1b5ff3f71589', 2, 'Botble\\Blog\\Models\\Category'),
(715, 'en_US', '61ae9ea7ef560f989fa80545e547458c', 3, 'Botble\\Blog\\Models\\Category'),
(716, 'en_US', 'c7806926dd9aa2238a74c74e83f96995', 4, 'Botble\\Blog\\Models\\Category'),
(717, 'vi', 'bb33ce7cb25fbfe3915f2ac22e3c65b2', 5, 'Botble\\Blog\\Models\\Category'),
(718, 'vi', '4bd932a4480bc2979f3f1b5ff3f71589', 6, 'Botble\\Blog\\Models\\Category'),
(719, 'vi', '61ae9ea7ef560f989fa80545e547458c', 7, 'Botble\\Blog\\Models\\Category'),
(720, 'vi', 'c7806926dd9aa2238a74c74e83f96995', 8, 'Botble\\Blog\\Models\\Category'),
(721, 'en_US', '7d14d565941626fa92d2c2316f0d634b', 1, 'Botble\\Blog\\Models\\Post'),
(722, 'en_US', '515d16bb408480c9f0b7e6f61d25b1a2', 2, 'Botble\\Blog\\Models\\Post'),
(723, 'en_US', 'a8e23acbcf574c1a97e66ec9d61fd419', 3, 'Botble\\Blog\\Models\\Post'),
(724, 'en_US', '1b20a2a93148bf1624cabfe3aea18d4b', 4, 'Botble\\Blog\\Models\\Post'),
(725, 'en_US', '6d295efd6747d93a8ab9622459c62361', 5, 'Botble\\Blog\\Models\\Post'),
(726, 'en_US', '9324957ce4167bdae84c083e8db66b99', 6, 'Botble\\Blog\\Models\\Post'),
(727, 'en_US', 'bc3811f0c6dbddb944a16148ffbc2cd8', 7, 'Botble\\Blog\\Models\\Post'),
(728, 'en_US', '52b83b9984bca8b33a36f79bd261681a', 8, 'Botble\\Blog\\Models\\Post'),
(729, 'en_US', '553ea2e30808d78c54e6834f03ef2593', 9, 'Botble\\Blog\\Models\\Post'),
(730, 'en_US', '348c216a6e41b2fa4149225f4b1068fd', 10, 'Botble\\Blog\\Models\\Post'),
(731, 'en_US', '679c844c967ea6ebef4d70c1bf7c3f18', 11, 'Botble\\Blog\\Models\\Post'),
(732, 'en_US', '0155cfb9e91b0e4ad98a195cf326d7a1', 12, 'Botble\\Blog\\Models\\Post'),
(733, 'en_US', '612a60a9c155d1e9df97d327507a5804', 13, 'Botble\\Blog\\Models\\Post'),
(734, 'en_US', 'f10fcc997781862e414791c8ac520c6f', 14, 'Botble\\Blog\\Models\\Post'),
(735, 'en_US', 'f9cd89493616b80fd4250826da9f64d7', 15, 'Botble\\Blog\\Models\\Post'),
(736, 'en_US', '80aebaf94afbd8c12c8209de362c715b', 16, 'Botble\\Blog\\Models\\Post'),
(737, 'vi', '7d14d565941626fa92d2c2316f0d634b', 17, 'Botble\\Blog\\Models\\Post'),
(738, 'vi', '515d16bb408480c9f0b7e6f61d25b1a2', 18, 'Botble\\Blog\\Models\\Post'),
(739, 'vi', 'a8e23acbcf574c1a97e66ec9d61fd419', 19, 'Botble\\Blog\\Models\\Post'),
(740, 'vi', '1b20a2a93148bf1624cabfe3aea18d4b', 20, 'Botble\\Blog\\Models\\Post'),
(741, 'vi', '6d295efd6747d93a8ab9622459c62361', 21, 'Botble\\Blog\\Models\\Post'),
(742, 'vi', '9324957ce4167bdae84c083e8db66b99', 22, 'Botble\\Blog\\Models\\Post'),
(743, 'vi', 'bc3811f0c6dbddb944a16148ffbc2cd8', 23, 'Botble\\Blog\\Models\\Post'),
(744, 'vi', '52b83b9984bca8b33a36f79bd261681a', 24, 'Botble\\Blog\\Models\\Post'),
(745, 'vi', '553ea2e30808d78c54e6834f03ef2593', 25, 'Botble\\Blog\\Models\\Post'),
(746, 'vi', '348c216a6e41b2fa4149225f4b1068fd', 26, 'Botble\\Blog\\Models\\Post'),
(747, 'vi', '679c844c967ea6ebef4d70c1bf7c3f18', 27, 'Botble\\Blog\\Models\\Post'),
(748, 'vi', '0155cfb9e91b0e4ad98a195cf326d7a1', 28, 'Botble\\Blog\\Models\\Post'),
(749, 'vi', '612a60a9c155d1e9df97d327507a5804', 29, 'Botble\\Blog\\Models\\Post'),
(750, 'vi', 'f10fcc997781862e414791c8ac520c6f', 30, 'Botble\\Blog\\Models\\Post'),
(751, 'vi', 'f9cd89493616b80fd4250826da9f64d7', 31, 'Botble\\Blog\\Models\\Post'),
(752, 'vi', '80aebaf94afbd8c12c8209de362c715b', 32, 'Botble\\Blog\\Models\\Post'),
(753, 'en_US', 'ffe5ff26c43fe23dcb0d986dd38bc15f', 1, 'Botble\\RealEstate\\Models\\Facility'),
(754, 'en_US', '2b92b708b8c0c530643a13b9ea5ad219', 2, 'Botble\\RealEstate\\Models\\Facility'),
(755, 'en_US', 'aedb0ce64e073e5036dc6b0b34bc0afc', 3, 'Botble\\RealEstate\\Models\\Facility'),
(756, 'en_US', '87c78a991ddd5189843b5a997fd38f5f', 4, 'Botble\\RealEstate\\Models\\Facility'),
(757, 'en_US', '6e1a2b3c8b0c22e06ce7df961490d617', 5, 'Botble\\RealEstate\\Models\\Facility'),
(758, 'en_US', '809be7c1a351689e96f0df9d99b5cf07', 6, 'Botble\\RealEstate\\Models\\Facility'),
(759, 'en_US', 'f1d6c163f9c6ba09dea151c56d54958c', 7, 'Botble\\RealEstate\\Models\\Facility'),
(760, 'en_US', 'c10ac39d536949a5a2e1811ad5b2586b', 8, 'Botble\\RealEstate\\Models\\Facility'),
(761, 'en_US', '1fd9f878134a4e8dd3ea15e5d9dcbec5', 9, 'Botble\\RealEstate\\Models\\Facility'),
(762, 'en_US', '7f9414befb7d873344731e15d46d7147', 10, 'Botble\\RealEstate\\Models\\Facility'),
(763, 'en_US', '048900a0018500ac1ee5ab8e26185c8a', 11, 'Botble\\RealEstate\\Models\\Facility'),
(764, 'vi', 'ffe5ff26c43fe23dcb0d986dd38bc15f', 12, 'Botble\\RealEstate\\Models\\Facility'),
(765, 'vi', '2b92b708b8c0c530643a13b9ea5ad219', 13, 'Botble\\RealEstate\\Models\\Facility'),
(766, 'vi', 'aedb0ce64e073e5036dc6b0b34bc0afc', 14, 'Botble\\RealEstate\\Models\\Facility'),
(767, 'vi', '87c78a991ddd5189843b5a997fd38f5f', 15, 'Botble\\RealEstate\\Models\\Facility'),
(768, 'vi', '6e1a2b3c8b0c22e06ce7df961490d617', 16, 'Botble\\RealEstate\\Models\\Facility'),
(769, 'vi', '809be7c1a351689e96f0df9d99b5cf07', 17, 'Botble\\RealEstate\\Models\\Facility'),
(770, 'vi', 'f1d6c163f9c6ba09dea151c56d54958c', 18, 'Botble\\RealEstate\\Models\\Facility'),
(771, 'vi', 'c10ac39d536949a5a2e1811ad5b2586b', 19, 'Botble\\RealEstate\\Models\\Facility'),
(772, 'vi', '1fd9f878134a4e8dd3ea15e5d9dcbec5', 20, 'Botble\\RealEstate\\Models\\Facility'),
(773, 'vi', '7f9414befb7d873344731e15d46d7147', 21, 'Botble\\RealEstate\\Models\\Facility'),
(774, 'vi', '048900a0018500ac1ee5ab8e26185c8a', 22, 'Botble\\RealEstate\\Models\\Facility'),
(775, 'en_US', '22bce4c2e13a398454cddeed2ec7426d', 1, 'Botble\\RealEstate\\Models\\Category'),
(776, 'en_US', '39464def1c08a31e67c50925752e08fb', 2, 'Botble\\RealEstate\\Models\\Category'),
(777, 'en_US', 'd8fa2c60aa66de0aa7fbcb40970e8296', 3, 'Botble\\RealEstate\\Models\\Category'),
(778, 'en_US', '08ca65383b2c1c86ebb1e18fa5c603a3', 4, 'Botble\\RealEstate\\Models\\Category'),
(779, 'en_US', 'bac41fa997c742404cf82bad3a0c34e1', 5, 'Botble\\RealEstate\\Models\\Category'),
(780, 'en_US', '9dbc9c1c8c2b765b531d19c524d3473b', 6, 'Botble\\RealEstate\\Models\\Category'),
(781, 'vi', '22bce4c2e13a398454cddeed2ec7426d', 7, 'Botble\\RealEstate\\Models\\Category'),
(782, 'vi', '39464def1c08a31e67c50925752e08fb', 8, 'Botble\\RealEstate\\Models\\Category'),
(783, 'vi', 'd8fa2c60aa66de0aa7fbcb40970e8296', 9, 'Botble\\RealEstate\\Models\\Category'),
(784, 'vi', '08ca65383b2c1c86ebb1e18fa5c603a3', 10, 'Botble\\RealEstate\\Models\\Category'),
(785, 'vi', 'bac41fa997c742404cf82bad3a0c34e1', 11, 'Botble\\RealEstate\\Models\\Category'),
(786, 'vi', '9dbc9c1c8c2b765b531d19c524d3473b', 12, 'Botble\\RealEstate\\Models\\Category'),
(787, 'en_US', 'be211e5709503819392af4bd3e178548', 1, 'Botble\\RealEstate\\Models\\Feature'),
(788, 'en_US', '199c9f6d34d12d26902aa22581b99827', 2, 'Botble\\RealEstate\\Models\\Feature'),
(789, 'en_US', 'c6bc194ea7b151121fbb34d22e7363d5', 3, 'Botble\\RealEstate\\Models\\Feature'),
(790, 'en_US', 'ad733f0dd39398077c12123402c51f24', 4, 'Botble\\RealEstate\\Models\\Feature'),
(791, 'en_US', 'f072e7532929e4f0a4e2dfe9f1d6533f', 5, 'Botble\\RealEstate\\Models\\Feature'),
(792, 'en_US', '8f0ef03879c47bcbc71dc23d811312c2', 6, 'Botble\\RealEstate\\Models\\Feature'),
(793, 'en_US', '21966ba919c6cef25e01867e5143c71a', 7, 'Botble\\RealEstate\\Models\\Feature'),
(794, 'en_US', 'd2c6fd24a1dcba789c1874ecdf85b0c6', 8, 'Botble\\RealEstate\\Models\\Feature'),
(795, 'en_US', 'd24b2f77676aa44abc5f75104dc45337', 9, 'Botble\\RealEstate\\Models\\Feature'),
(796, 'en_US', '4d54534416fdfd04a0f7c2795c282700', 10, 'Botble\\RealEstate\\Models\\Feature'),
(797, 'en_US', '74f13945a391888a9ec669f5f3efa02f', 11, 'Botble\\RealEstate\\Models\\Feature'),
(798, 'en_US', '2ad15d80134524e1e8b7a23104a1bb27', 12, 'Botble\\RealEstate\\Models\\Feature'),
(799, 'vi', 'be211e5709503819392af4bd3e178548', 13, 'Botble\\RealEstate\\Models\\Feature'),
(800, 'vi', '199c9f6d34d12d26902aa22581b99827', 14, 'Botble\\RealEstate\\Models\\Feature'),
(801, 'vi', 'c6bc194ea7b151121fbb34d22e7363d5', 15, 'Botble\\RealEstate\\Models\\Feature'),
(802, 'vi', 'ad733f0dd39398077c12123402c51f24', 16, 'Botble\\RealEstate\\Models\\Feature'),
(803, 'vi', 'f072e7532929e4f0a4e2dfe9f1d6533f', 17, 'Botble\\RealEstate\\Models\\Feature'),
(804, 'vi', '8f0ef03879c47bcbc71dc23d811312c2', 18, 'Botble\\RealEstate\\Models\\Feature'),
(805, 'vi', '21966ba919c6cef25e01867e5143c71a', 19, 'Botble\\RealEstate\\Models\\Feature'),
(806, 'vi', 'd2c6fd24a1dcba789c1874ecdf85b0c6', 20, 'Botble\\RealEstate\\Models\\Feature'),
(807, 'vi', 'd24b2f77676aa44abc5f75104dc45337', 21, 'Botble\\RealEstate\\Models\\Feature'),
(808, 'vi', '4d54534416fdfd04a0f7c2795c282700', 22, 'Botble\\RealEstate\\Models\\Feature'),
(809, 'vi', '74f13945a391888a9ec669f5f3efa02f', 23, 'Botble\\RealEstate\\Models\\Feature'),
(810, 'vi', '2ad15d80134524e1e8b7a23104a1bb27', 24, 'Botble\\RealEstate\\Models\\Feature'),
(811, 'en_US', '9ac42a7e8f596405cf17d17b56d39601', 1, 'Botble\\RealEstate\\Models\\Type'),
(812, 'en_US', '5bfaf0797ecd94f7638c6bdd358d398d', 2, 'Botble\\RealEstate\\Models\\Type'),
(813, 'vi', '9ac42a7e8f596405cf17d17b56d39601', 3, 'Botble\\RealEstate\\Models\\Type'),
(814, 'vi', '5bfaf0797ecd94f7638c6bdd358d398d', 4, 'Botble\\RealEstate\\Models\\Type'),
(815, 'en_US', '9a0766d552f1971873ebf9b29e29a2e1', 1, 'Botble\\RealEstate\\Models\\Property'),
(816, 'en_US', 'ea97d1b5a1642e13abf01af01de83e94', 2, 'Botble\\RealEstate\\Models\\Property'),
(817, 'en_US', '76e71ad8bbef586089349c3393f4a3df', 3, 'Botble\\RealEstate\\Models\\Property'),
(818, 'en_US', 'c1d23ba76174732fff616f4d800ac482', 4, 'Botble\\RealEstate\\Models\\Property'),
(819, 'en_US', '5949558affe1a5a8744eeb4f075a6a8f', 5, 'Botble\\RealEstate\\Models\\Property'),
(820, 'en_US', '640c1e34a1b827cf8fd1104b730303f6', 6, 'Botble\\RealEstate\\Models\\Property'),
(821, 'en_US', 'de83e8705778ff389aa2fcb6c70b77fd', 7, 'Botble\\RealEstate\\Models\\Property'),
(822, 'en_US', '4e64fc1e78ba4fec225c8e5406af60c1', 8, 'Botble\\RealEstate\\Models\\Property'),
(823, 'en_US', '78613c6accad7a63b0d37ea4a02463cb', 9, 'Botble\\RealEstate\\Models\\Property'),
(824, 'en_US', '334c919ecb403c8cc186a1621ac676a1', 10, 'Botble\\RealEstate\\Models\\Property'),
(825, 'en_US', 'b1896563690e70c556ff2a334303117b', 11, 'Botble\\RealEstate\\Models\\Property'),
(826, 'en_US', '6654df0e4c89aa9d00a84fb554cb86e4', 12, 'Botble\\RealEstate\\Models\\Property'),
(827, 'en_US', 'e4a0bd2185d78e9b16c930a284b95a6b', 13, 'Botble\\RealEstate\\Models\\Property'),
(828, 'en_US', 'da3b5ffc4e523441a666f0d9ae07b344', 14, 'Botble\\RealEstate\\Models\\Property'),
(829, 'en_US', 'f50b4d8ad8a430c85f0beb291d218b81', 15, 'Botble\\RealEstate\\Models\\Property'),
(830, 'en_US', '9eb5c0f8b6098f1b68e94fc0d9d73cf5', 16, 'Botble\\RealEstate\\Models\\Property'),
(831, 'en_US', '1901a3d9999847f5840884f109af0c11', 17, 'Botble\\RealEstate\\Models\\Property'),
(832, 'vi', '9a0766d552f1971873ebf9b29e29a2e1', 18, 'Botble\\RealEstate\\Models\\Property'),
(833, 'vi', 'ea97d1b5a1642e13abf01af01de83e94', 19, 'Botble\\RealEstate\\Models\\Property'),
(834, 'vi', '76e71ad8bbef586089349c3393f4a3df', 20, 'Botble\\RealEstate\\Models\\Property'),
(835, 'vi', 'c1d23ba76174732fff616f4d800ac482', 21, 'Botble\\RealEstate\\Models\\Property'),
(836, 'vi', '5949558affe1a5a8744eeb4f075a6a8f', 22, 'Botble\\RealEstate\\Models\\Property'),
(837, 'vi', '640c1e34a1b827cf8fd1104b730303f6', 23, 'Botble\\RealEstate\\Models\\Property'),
(838, 'vi', 'de83e8705778ff389aa2fcb6c70b77fd', 24, 'Botble\\RealEstate\\Models\\Property'),
(839, 'vi', '4e64fc1e78ba4fec225c8e5406af60c1', 25, 'Botble\\RealEstate\\Models\\Property'),
(840, 'vi', '78613c6accad7a63b0d37ea4a02463cb', 26, 'Botble\\RealEstate\\Models\\Property'),
(841, 'vi', '334c919ecb403c8cc186a1621ac676a1', 27, 'Botble\\RealEstate\\Models\\Property'),
(842, 'vi', 'b1896563690e70c556ff2a334303117b', 28, 'Botble\\RealEstate\\Models\\Property'),
(843, 'vi', '6654df0e4c89aa9d00a84fb554cb86e4', 29, 'Botble\\RealEstate\\Models\\Property'),
(844, 'vi', 'e4a0bd2185d78e9b16c930a284b95a6b', 30, 'Botble\\RealEstate\\Models\\Property'),
(845, 'vi', 'da3b5ffc4e523441a666f0d9ae07b344', 31, 'Botble\\RealEstate\\Models\\Property'),
(846, 'vi', 'f50b4d8ad8a430c85f0beb291d218b81', 32, 'Botble\\RealEstate\\Models\\Property'),
(847, 'vi', '9eb5c0f8b6098f1b68e94fc0d9d73cf5', 33, 'Botble\\RealEstate\\Models\\Property'),
(848, 'en_US', '1901a3d9999847f5840884f109af0c11', 34, 'Botble\\RealEstate\\Models\\Property'),
(849, 'en_US', 'e80d45d0c5d4b9ad6268109899bc4d31', 1, 'Botble\\Testimonial\\Models\\Testimonial'),
(850, 'en_US', '3b9fcf9e90cb8dd23db6e4933fce2018', 2, 'Botble\\Testimonial\\Models\\Testimonial'),
(851, 'en_US', 'd0c42a48e4e2f3f84cb41a64f3fab467', 3, 'Botble\\Testimonial\\Models\\Testimonial'),
(852, 'en_US', '4d089edcf8a3fc0e401c2b4a27448fbd', 4, 'Botble\\Testimonial\\Models\\Testimonial'),
(853, 'en_US', '54c498ada8fe9f43a35761454acf6a83', 5, 'Botble\\Testimonial\\Models\\Testimonial'),
(854, 'vi', '4a0b0e781e429aaefc135c594d2d0cef', 6, 'Botble\\Testimonial\\Models\\Testimonial'),
(855, 'vi', '82126ad2d2e1149415bc187eb8dbb1da', 7, 'Botble\\Testimonial\\Models\\Testimonial'),
(856, 'vi', 'bd354cc69f558f0efb53475a7bedfeb4', 8, 'Botble\\Testimonial\\Models\\Testimonial'),
(857, 'vi', 'c0470ee7a2a86cc14d581567ded3987a', 9, 'Botble\\Testimonial\\Models\\Testimonial'),
(858, 'vi', '4a0b0e781e429aaefc135c594d2d0cef', 10, 'Botble\\Testimonial\\Models\\Testimonial'),
(859, 'en_US', '20cdf57be01a11f7fcf2ca6ba30f63ec', 35, 'Botble\\RealEstate\\Models\\Property'),
(860, 'vi', 'd8497363a5a5007c21edd5b9d38dfda9', 3, 'Botble\\Location\\Models\\Country'),
(861, 'en_US', '6cb9b5ae1312b0d76ef5b77e908beb32', 4, 'Botble\\Location\\Models\\Country'),
(862, 'en_US', '9801a3b707dcb58b9c847856da647f5d', 70, 'Botble\\Location\\Models\\State'),
(863, 'en_US', '016a6634304a431a6f78aeb9a1601064', 575, 'Botble\\Location\\Models\\City');

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(96, 0, 'c-1', 10, 'image/png', 2165, 'cities/c-1.png', '[]', '2023-12-30 10:06:16', '2023-12-30 10:06:16', NULL),
(97, 0, 'c-2', 10, 'image/png', 2165, 'cities/c-2.png', '[]', '2023-12-30 10:06:16', '2023-12-30 10:06:16', NULL),
(98, 0, 'c-3', 10, 'image/png', 2165, 'cities/c-3.png', '[]', '2023-12-30 10:06:17', '2023-12-30 10:06:17', NULL),
(99, 0, 'c-4', 10, 'image/png', 2165, 'cities/c-4.png', '[]', '2023-12-30 10:06:17', '2023-12-30 10:06:17', NULL),
(100, 0, 'c-5', 10, 'image/png', 2165, 'cities/c-5.png', '[]', '2023-12-30 10:06:17', '2023-12-30 10:06:17', NULL),
(101, 0, 'c-6', 10, 'image/png', 2165, 'cities/c-6.png', '[]', '2023-12-30 10:06:18', '2023-12-30 10:06:18', NULL),
(102, 0, 'avatar', 11, 'image/jpeg', 2165, 'users/avatar.jpg', '[]', '2023-12-30 10:06:26', '2023-12-30 10:06:26', NULL),
(103, 0, 'sb', 12, 'image/png', 2165, 'block/sb.png', '[]', '2023-12-30 10:06:26', '2023-12-30 10:06:26', NULL),
(104, 0, 'vec-2', 12, 'image/png', 2165, 'block/vec-2.png', '[]', '2023-12-30 10:06:26', '2023-12-30 10:06:26', NULL),
(105, 0, 'app', 13, 'image/png', 2165, 'banners/app.png', '[]', '2023-12-30 10:06:27', '2023-12-30 10:06:27', NULL),
(106, 0, 'banner-1', 13, 'image/jpeg', 2165, 'banners/banner-1.jpg', '[]', '2023-12-30 10:06:27', '2023-12-30 10:06:27', NULL),
(107, 0, 'banner-2', 13, 'image/jpeg', 2165, 'banners/banner-2.jpg', '[]', '2023-12-30 10:06:27', '2023-12-30 10:06:27', NULL),
(108, 0, 'banner-3', 13, 'image/jpeg', 2165, 'banners/banner-3.jpg', '[]', '2023-12-30 10:06:28', '2023-12-30 10:06:28', NULL),
(109, 0, 'banner-4', 13, 'image/png', 2165, 'banners/banner-4.png', '[]', '2023-12-30 10:06:28', '2023-12-30 10:06:28', NULL),
(110, 0, 'banner-5', 13, 'image/png', 2165, 'banners/banner-5.png', '[]', '2023-12-30 10:06:28', '2023-12-30 10:06:28', NULL),
(111, 0, 'banner-6', 13, 'image/png', 2165, 'banners/banner-6.png', '[]', '2023-12-30 10:06:29', '2023-12-30 10:06:29', NULL),
(112, 0, 'banner-svg', 13, 'image/jpeg', 2165, 'banners/banner-svg.jpg', '[]', '2023-12-30 10:06:29', '2023-12-30 10:06:29', NULL),
(113, 0, 'banner', 13, 'video/mp4', 2165, 'banners/banner.mp4', '[]', '2023-12-30 10:06:29', '2023-12-30 10:06:29', NULL),
(114, 0, 'banner-7', 13, 'image/svg+xml', 2165, 'banners/banner-7.svg', '[]', '2023-12-30 10:06:29', '2023-12-30 10:06:29', NULL),
(115, 0, 'home-2', 13, 'image/png', 2165, 'banners/home-2.png', '[]', '2023-12-30 10:06:29', '2023-12-30 10:06:29', NULL),
(116, 0, 'new-banner', 13, 'image/jpeg', 2165, 'banners/new-banner.jpg', '[]', '2023-12-30 10:06:29', '2023-12-30 10:06:29', NULL),
(117, 0, 'favicon', 14, 'image/png', 3178, 'general/favicon.png', '[]', '2023-12-30 10:06:31', '2023-12-30 10:06:31', NULL),
(118, 0, 'img-loading', 14, 'image/jpeg', 786, 'general/img-loading.jpg', '[]', '2023-12-30 10:06:31', '2023-12-30 10:06:31', NULL),
(119, 0, 'logo-light', 14, 'image/png', 10875, 'general/logo-light.png', '[]', '2023-12-30 10:06:31', '2023-12-30 10:06:31', NULL),
(120, 0, 'logo', 14, 'image/png', 11350, 'general/logo.png', '[]', '2023-12-30 10:06:31', '2023-12-30 10:06:31', NULL),
(121, 0, 'screenshot', 14, 'image/png', 165692, 'general/screenshot.png', '[]', '2023-12-30 10:06:31', '2023-12-30 10:06:31', NULL),
(122, 0, '1', 15, 'image/jpeg', 2165, 'news/1.jpg', '[]', '2023-12-30 10:06:32', '2023-12-30 10:06:32', NULL),
(123, 0, '10', 15, 'image/jpeg', 2165, 'news/10.jpg', '[]', '2023-12-30 10:06:32', '2023-12-30 10:06:32', NULL),
(124, 0, '11', 15, 'image/jpeg', 2165, 'news/11.jpg', '[]', '2023-12-30 10:06:32', '2023-12-30 10:06:32', NULL),
(125, 0, '12', 15, 'image/jpeg', 2165, 'news/12.jpg', '[]', '2023-12-30 10:06:33', '2023-12-30 10:06:33', NULL),
(126, 0, '13', 15, 'image/jpeg', 2165, 'news/13.jpg', '[]', '2023-12-30 10:06:33', '2023-12-30 10:06:33', NULL),
(127, 0, '14', 15, 'image/jpeg', 2165, 'news/14.jpg', '[]', '2023-12-30 10:06:33', '2023-12-30 10:06:33', NULL),
(128, 0, '15', 15, 'image/jpeg', 2165, 'news/15.jpg', '[]', '2023-12-30 10:06:34', '2023-12-30 10:06:34', NULL),
(129, 0, '16', 15, 'image/jpeg', 2165, 'news/16.jpg', '[]', '2023-12-30 10:06:34', '2023-12-30 10:06:34', NULL),
(130, 0, '17', 15, 'image/jpeg', 2165, 'news/17.jpg', '[]', '2023-12-30 10:06:34', '2023-12-30 10:06:34', NULL),
(131, 0, '18', 15, 'image/jpeg', 2165, 'news/18.jpg', '[]', '2023-12-30 10:06:35', '2023-12-30 10:06:35', NULL),
(132, 0, '19', 15, 'image/jpeg', 2165, 'news/19.jpg', '[]', '2023-12-30 10:06:35', '2023-12-30 10:06:35', NULL),
(133, 0, '2', 15, 'image/jpeg', 2165, 'news/2.jpg', '[]', '2023-12-30 10:06:35', '2023-12-30 10:06:35', NULL),
(134, 0, '20', 15, 'image/jpeg', 2165, 'news/20.jpg', '[]', '2023-12-30 10:06:35', '2023-12-30 10:06:35', NULL),
(135, 0, '21', 15, 'image/jpeg', 2165, 'news/21.jpg', '[]', '2023-12-30 10:06:36', '2023-12-30 10:06:36', NULL),
(136, 0, '22', 15, 'image/jpeg', 2165, 'news/22.jpg', '[]', '2023-12-30 10:06:36', '2023-12-30 10:06:36', NULL),
(137, 0, '23', 15, 'image/jpeg', 2165, 'news/23.jpg', '[]', '2023-12-30 10:06:36', '2023-12-30 10:06:36', NULL),
(138, 0, '24', 15, 'image/jpeg', 2165, 'news/24.jpg', '[]', '2023-12-30 10:06:37', '2023-12-30 10:06:37', NULL),
(139, 0, '25', 15, 'image/jpeg', 2165, 'news/25.jpg', '[]', '2023-12-30 10:06:37', '2023-12-30 10:06:37', NULL),
(140, 0, '26', 15, 'image/jpeg', 2165, 'news/26.jpg', '[]', '2023-12-30 10:06:37', '2023-12-30 10:06:37', NULL),
(141, 0, '27', 15, 'image/jpeg', 2165, 'news/27.jpg', '[]', '2023-12-30 10:06:37', '2023-12-30 10:06:37', NULL),
(142, 0, '3', 15, 'image/jpeg', 2165, 'news/3.jpg', '[]', '2023-12-30 10:06:38', '2023-12-30 10:06:38', NULL),
(143, 0, '4', 15, 'image/jpeg', 2165, 'news/4.jpg', '[]', '2023-12-30 10:06:38', '2023-12-30 10:06:38', NULL),
(144, 0, '5', 15, 'image/jpeg', 2165, 'news/5.jpg', '[]', '2023-12-30 10:06:38', '2023-12-30 10:06:38', NULL),
(145, 0, '6', 15, 'image/jpeg', 2165, 'news/6.jpg', '[]', '2023-12-30 10:06:39', '2023-12-30 10:06:39', NULL),
(146, 0, '7', 15, 'image/jpeg', 2165, 'news/7.jpg', '[]', '2023-12-30 10:06:39', '2023-12-30 10:06:39', NULL),
(147, 0, '8', 15, 'image/jpeg', 2165, 'news/8.jpg', '[]', '2023-12-30 10:06:39', '2023-12-30 10:06:39', NULL),
(148, 0, '9', 15, 'image/jpeg', 2165, 'news/9.jpg', '[]', '2023-12-30 10:06:40', '2023-12-30 10:06:40', NULL),
(149, 0, '1', 16, 'image/jpeg', 2165, 'accounts/1.jpg', '[]', '2023-12-30 10:06:41', '2023-12-30 10:06:41', NULL),
(150, 0, '10', 16, 'image/jpeg', 2165, 'accounts/10.jpg', '[]', '2023-12-30 10:06:41', '2023-12-30 10:06:41', NULL),
(151, 0, '2', 16, 'image/jpeg', 2165, 'accounts/2.jpg', '[]', '2023-12-30 10:06:42', '2023-12-30 10:06:42', NULL),
(152, 0, '3', 16, 'image/jpeg', 2165, 'accounts/3.jpg', '[]', '2023-12-30 10:06:42', '2023-12-30 10:06:42', NULL),
(153, 0, '4', 16, 'image/jpeg', 2165, 'accounts/4.jpg', '[]', '2023-12-30 10:06:42', '2023-12-30 10:06:42', NULL),
(154, 0, '5', 16, 'image/jpeg', 2165, 'accounts/5.jpg', '[]', '2023-12-30 10:06:42', '2023-12-30 10:06:42', NULL),
(155, 0, '6', 16, 'image/jpeg', 2165, 'accounts/6.jpg', '[]', '2023-12-30 10:06:43', '2023-12-30 10:06:43', NULL),
(156, 0, '7', 16, 'image/jpeg', 2165, 'accounts/7.jpg', '[]', '2023-12-30 10:06:43', '2023-12-30 10:06:43', NULL),
(157, 0, '8', 16, 'image/jpeg', 2165, 'accounts/8.jpg', '[]', '2023-12-30 10:06:43', '2023-12-30 10:06:43', NULL),
(158, 0, '9', 16, 'image/jpeg', 2165, 'accounts/9.jpg', '[]', '2023-12-30 10:06:44', '2023-12-30 10:06:44', NULL),
(159, 0, 'p-1', 17, 'image/jpeg', 2165, 'properties/p-1.jpg', '[]', '2023-12-30 10:06:45', '2023-12-30 10:06:45', NULL),
(160, 0, 'p-10', 17, 'image/jpeg', 2165, 'properties/p-10.jpg', '[]', '2023-12-30 10:06:46', '2023-12-30 10:06:46', NULL),
(161, 0, 'p-11', 17, 'image/jpeg', 2165, 'properties/p-11.jpg', '[]', '2023-12-30 10:06:46', '2023-12-30 10:06:46', NULL),
(162, 0, 'p-12', 17, 'image/jpeg', 2165, 'properties/p-12.jpg', '[]', '2023-12-30 10:06:46', '2023-12-30 10:06:46', NULL),
(163, 0, 'p-13', 17, 'image/jpeg', 2165, 'properties/p-13.jpg', '[]', '2023-12-30 10:06:46', '2023-12-30 10:06:46', NULL),
(164, 0, 'p-14', 17, 'image/jpeg', 2165, 'properties/p-14.jpg', '[]', '2023-12-30 10:06:47', '2023-12-30 10:06:47', NULL),
(165, 0, 'p-15', 17, 'image/jpeg', 2165, 'properties/p-15.jpg', '[]', '2023-12-30 10:06:47', '2023-12-30 10:06:47', NULL),
(166, 0, 'p-16', 17, 'image/jpeg', 2165, 'properties/p-16.jpg', '[]', '2023-12-30 10:06:47', '2023-12-30 10:06:47', NULL),
(167, 0, 'p-17', 17, 'image/jpeg', 2165, 'properties/p-17.jpg', '[]', '2023-12-30 10:06:48', '2023-12-30 10:06:48', NULL),
(168, 0, 'p-18', 17, 'image/jpeg', 2165, 'properties/p-18.jpg', '[]', '2023-12-30 10:06:48', '2023-12-30 10:06:48', NULL),
(169, 0, 'p-19', 17, 'image/jpeg', 2165, 'properties/p-19.jpg', '[]', '2023-12-30 10:06:48', '2023-12-30 10:06:48', NULL),
(170, 0, 'p-2', 17, 'image/jpeg', 2165, 'properties/p-2.jpg', '[]', '2023-12-30 10:06:48', '2023-12-30 10:06:48', NULL),
(171, 0, 'p-20', 17, 'image/jpeg', 2165, 'properties/p-20.jpg', '[]', '2023-12-30 10:06:49', '2023-12-30 10:06:49', NULL),
(172, 0, 'p-21', 17, 'image/jpeg', 2165, 'properties/p-21.jpg', '[]', '2023-12-30 10:06:49', '2023-12-30 10:06:49', NULL),
(173, 0, 'p-22', 17, 'image/jpeg', 2165, 'properties/p-22.jpg', '[]', '2023-12-30 10:06:49', '2023-12-30 10:06:49', NULL),
(174, 0, 'p-23', 17, 'image/jpeg', 2165, 'properties/p-23.jpg', '[]', '2023-12-30 10:06:50', '2023-12-30 10:06:50', NULL),
(175, 0, 'p-24', 17, 'image/jpeg', 2165, 'properties/p-24.jpg', '[]', '2023-12-30 10:06:50', '2023-12-30 10:06:50', NULL),
(176, 0, 'p-25', 17, 'image/jpeg', 2165, 'properties/p-25.jpg', '[]', '2023-12-30 10:06:50', '2023-12-30 10:06:50', NULL),
(177, 0, 'p-26', 17, 'image/jpeg', 2165, 'properties/p-26.jpg', '[]', '2023-12-30 10:06:51', '2023-12-30 10:06:51', NULL),
(178, 0, 'p-27', 17, 'image/jpeg', 2165, 'properties/p-27.jpg', '[]', '2023-12-30 10:06:51', '2023-12-30 10:06:51', NULL),
(179, 0, 'p-3', 17, 'image/jpeg', 2165, 'properties/p-3.jpg', '[]', '2023-12-30 10:06:51', '2023-12-30 10:06:51', NULL),
(180, 0, 'p-4', 17, 'image/jpeg', 2165, 'properties/p-4.jpg', '[]', '2023-12-30 10:06:51', '2023-12-30 10:06:51', NULL),
(181, 0, 'p-5', 17, 'image/jpeg', 2165, 'properties/p-5.jpg', '[]', '2023-12-30 10:06:52', '2023-12-30 10:06:52', NULL),
(182, 0, 'p-6', 17, 'image/jpeg', 2165, 'properties/p-6.jpg', '[]', '2023-12-30 10:06:52', '2023-12-30 10:06:52', NULL),
(183, 0, 'p-7', 17, 'image/jpeg', 2165, 'properties/p-7.jpg', '[]', '2023-12-30 10:06:52', '2023-12-30 10:06:52', NULL),
(184, 0, 'p-8', 17, 'image/jpeg', 2165, 'properties/p-8.jpg', '[]', '2023-12-30 10:06:53', '2023-12-30 10:06:53', NULL),
(185, 0, 'p-9', 17, 'image/jpeg', 2165, 'properties/p-9.jpg', '[]', '2023-12-30 10:06:53', '2023-12-30 10:06:53', NULL),
(186, 0, '1', 18, 'image/jpeg', 2165, 'testimonials/1.jpg', '[]', '2023-12-30 10:06:59', '2023-12-30 10:06:59', NULL),
(187, 0, '2', 18, 'image/jpeg', 2165, 'testimonials/2.jpg', '[]', '2023-12-30 10:07:00', '2023-12-30 10:07:00', NULL),
(188, 0, '3', 18, 'image/jpeg', 2165, 'testimonials/3.jpg', '[]', '2023-12-30 10:07:00', '2023-12-30 10:07:00', NULL),
(189, 0, '4', 18, 'image/jpeg', 2165, 'testimonials/4.jpg', '[]', '2023-12-30 10:07:00', '2023-12-30 10:07:00', NULL),
(190, 0, '5', 18, 'image/jpeg', 2165, 'testimonials/5.jpg', '[]', '2023-12-30 10:07:00', '2023-12-30 10:07:00', NULL),
(191, 0, 'flat', 16, 'image/jpeg', 69458, 'accounts/flat.jpg', '[]', '2023-12-30 10:53:10', '2023-12-30 10:53:10', NULL),
(192, 0, 'flat-2', 16, 'image/jpeg', 47946, 'accounts/flat-2.jpg', '[]', '2023-12-30 10:53:14', '2023-12-30 10:53:14', NULL),
(193, 1, 'camera', 17, 'image/jpeg', 37334, 'properties/camera.jpg', '[]', '2024-10-10 09:56:46', '2024-10-10 09:56:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(10, 0, 'cities', 'cities', 0, '2023-12-30 10:06:16', '2023-12-30 10:06:16', NULL),
(11, 0, 'users', 'users', 0, '2023-12-30 10:06:26', '2023-12-30 10:06:26', NULL),
(12, 0, 'block', 'block', 0, '2023-12-30 10:06:26', '2023-12-30 10:06:26', NULL),
(13, 0, 'banners', 'banners', 0, '2023-12-30 10:06:27', '2023-12-30 10:06:27', NULL),
(14, 0, 'general', 'general', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31', NULL),
(15, 0, 'news', 'news', 0, '2023-12-30 10:06:32', '2023-12-30 10:06:32', NULL),
(16, 0, 'accounts', 'accounts', 0, '2023-12-30 10:06:41', '2023-12-30 10:06:41', NULL),
(17, 0, 'properties', 'properties', 0, '2023-12-30 10:06:45', '2023-12-30 10:06:45', NULL),
(18, 0, 'testimonials', 'testimonials', 0, '2023-12-30 10:06:59', '2023-12-30 10:06:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'main-menu', 'published', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(2, 'About', 'about', 'published', '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(3, 'More information', 'more-information', 'published', '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(4, 'News', 'news', 'published', '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(5, 'Menu chính', 'menu-chinh', 'published', '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(6, 'Về chúng tôi', 've-chung-toi', 'published', '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(7, 'Thông tin thêm', 'thong-tin-them', 'published', '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(8, 'Tin tức', 'tin-tuc', 'published', '2023-12-30 10:06:31', '2023-12-30 10:06:31');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(2, 5, 'main-menu', '2023-12-30 10:06:31', '2023-12-30 10:06:31');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reference_id` int(10) UNSIGNED DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(1, 1, 0, NULL, NULL, '/', NULL, 0, 'Home', NULL, '_self', 1, '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(2, 1, 1, NULL, NULL, '/', NULL, 0, 'Home layout 1', NULL, '_self', 0, '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(3, 1, 1, 2, 'Botble\\Page\\Models\\Page', '/home-layout-2', NULL, 0, 'Home layout 2', NULL, '_self', 0, '2023-12-30 10:06:30', '2023-12-30 10:06:31'),
(4, 1, 1, 3, 'Botble\\Page\\Models\\Page', '/home-layout-3', NULL, 0, 'Home layout 3', NULL, '_self', 0, '2023-12-30 10:06:30', '2023-12-30 10:06:31'),
(5, 1, 1, 4, 'Botble\\Page\\Models\\Page', '/home-layout-4', NULL, 0, 'Home layout 4', NULL, '_self', 0, '2023-12-30 10:06:30', '2023-12-30 10:06:31'),
(6, 1, 1, 5, 'Botble\\Page\\Models\\Page', '/home-layout-5', NULL, 0, 'Home layout 5', NULL, '_self', 0, '2023-12-30 10:06:30', '2023-12-30 10:06:31'),
(7, 1, 1, 6, 'Botble\\Page\\Models\\Page', '/home-layout-6', NULL, 0, 'Home layout 6', NULL, '_self', 0, '2023-12-30 10:06:30', '2023-12-30 10:06:31'),
(8, 1, 1, 7, 'Botble\\Page\\Models\\Page', '/home-layout-7', NULL, 0, 'Home layout 7', NULL, '_self', 0, '2023-12-30 10:06:30', '2023-12-30 10:06:31'),
(9, 1, 1, 8, 'Botble\\Page\\Models\\Page', '/home-layout-8', NULL, 0, 'Home layout 8', NULL, '_self', 0, '2023-12-30 10:06:30', '2023-12-30 10:06:31'),
(10, 1, 1, 9, 'Botble\\Page\\Models\\Page', '/home-layout-9', NULL, 0, 'Home layout 9', NULL, '_self', 0, '2023-12-30 10:06:30', '2023-12-30 10:06:31'),
(11, 1, 1, 10, 'Botble\\Page\\Models\\Page', '/map-home-layout', NULL, 0, 'Map home layout', NULL, '_self', 0, '2023-12-30 10:06:30', '2023-12-30 10:06:31'),
(12, 1, 0, NULL, NULL, '/properties', NULL, 0, 'Listings', NULL, '_self', 1, '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(13, 1, 12, NULL, NULL, '/properties?layout=sidebar', NULL, 0, 'List Layout', NULL, '_self', 1, '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(14, 1, 13, NULL, NULL, '/properties?layout=sidebar', NULL, 0, 'With Sidebar', NULL, '_self', 0, '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(15, 1, 13, NULL, NULL, '/properties?layout=map', NULL, 0, 'With Map', NULL, '_self', 0, '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(16, 1, 13, NULL, NULL, '/properties?layout=full', NULL, 0, 'Full width', NULL, '_self', 0, '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(17, 1, 12, NULL, NULL, '/properties?layout=grid_sidebar', NULL, 0, 'Grid Layout', NULL, '_self', 1, '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(18, 1, 17, NULL, NULL, '/properties?layout=grid_sidebar', NULL, 0, 'With Sidebar', NULL, '_self', 0, '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(19, 1, 17, NULL, NULL, '/properties?layout=grid_map', NULL, 0, 'With Map', NULL, '_self', 0, '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(20, 1, 17, NULL, NULL, '/properties?layout=grid_full', NULL, 0, 'Full width', NULL, '_self', 0, '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(21, 1, 12, NULL, NULL, '/properties?layout=half_map', NULL, 0, 'Half Map Search', NULL, '_self', 0, '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(22, 1, 0, NULL, NULL, '/', NULL, 0, 'Features', NULL, '_self', 1, '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(23, 1, 22, NULL, NULL, '/', NULL, 0, 'Single Property', NULL, '_self', 1, '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(24, 1, 23, 1, 'Botble\\RealEstate\\Models\\Property', '/properties/6007-applegate-lane', NULL, 0, 'Single Property 1', NULL, '_self', 0, '2023-12-30 10:06:30', '2023-12-30 10:06:31'),
(25, 1, 23, 2, 'Botble\\RealEstate\\Models\\Property', '/properties/2721-lindsay-avenue', NULL, 0, 'Single Property 2', NULL, '_self', 0, '2023-12-30 10:06:30', '2023-12-30 10:06:31'),
(26, 1, 23, 3, 'Botble\\RealEstate\\Models\\Property', '/properties/2203-7th-street-road', NULL, 0, 'Single Property 3', NULL, '_self', 0, '2023-12-30 10:06:30', '2023-12-30 10:06:31'),
(27, 1, 22, NULL, NULL, '/', NULL, 0, 'Agents', NULL, '_self', 1, '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(28, 1, 27, NULL, NULL, '/agents', NULL, 0, 'Agents List', NULL, '_self', 0, '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(29, 1, 27, NULL, NULL, '/agents/thesky9', NULL, 0, 'Agents Detail Page', NULL, '_self', 0, '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(30, 1, 22, NULL, NULL, '/', NULL, 0, 'My Account', NULL, '_self', 1, '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(31, 1, 30, NULL, NULL, '/account/dashboard', NULL, 0, 'User Dashboard', NULL, '_self', 0, '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(32, 1, 30, NULL, NULL, '/account/properties', NULL, 0, 'Properties', NULL, '_self', 0, '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(33, 1, 30, NULL, NULL, '/account/settings', NULL, 0, 'My Profile', NULL, '_self', 0, '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(34, 1, 30, NULL, NULL, '/account/packages', NULL, 0, 'Packages', NULL, '_self', 0, '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(35, 1, 30, NULL, NULL, '/account/security', NULL, 0, 'Change Password', NULL, '_self', 0, '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(36, 1, 22, NULL, NULL, '/account/properties/create', NULL, 0, 'Submit Property', NULL, '_self', 0, '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(37, 1, 0, NULL, NULL, '/', NULL, 0, 'Pages', NULL, '_self', 1, '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(38, 1, 37, 12, 'Botble\\Page\\Models\\Page', '/news', NULL, 0, 'Blogs Page', NULL, '_self', 0, '2023-12-30 10:06:30', '2023-12-30 10:06:31'),
(39, 1, 37, 1, 'Botble\\Blog\\Models\\Post', '/news/why-people-choose-listio-for-own-properties', NULL, 0, 'Blog Detail', NULL, '_self', 0, '2023-12-30 10:06:30', '2023-12-30 10:06:31'),
(40, 1, 37, NULL, NULL, '/home#pricing-section', NULL, 0, 'Pricing', NULL, '_self', 0, '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(41, 1, 37, 39, 'Botble\\Page\\Models\\Page', '/error-page', NULL, 0, 'Error Page', NULL, '_self', 0, '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(42, 1, 37, 14, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Contact', NULL, '_self', 0, '2023-12-30 10:06:30', '2023-12-30 10:06:31'),
(43, 1, 0, NULL, NULL, '/register', NULL, 0, 'Sign Up', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(44, 2, 0, 13, 'Botble\\Page\\Models\\Page', '/about-us', NULL, 0, 'About us', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(45, 2, 0, 14, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Contact us', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(46, 2, 0, 15, 'Botble\\Page\\Models\\Page', '/terms-conditions', NULL, 0, 'Terms & Conditions', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(47, 3, 0, NULL, NULL, '/properties', NULL, 0, 'All properties', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(48, 3, 0, NULL, NULL, '/properties?type=sale', NULL, 0, 'Houses for sale', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(49, 3, 0, NULL, NULL, '/properties?type=rent', NULL, 0, 'Houses for rent', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(50, 4, 0, NULL, NULL, '/news', NULL, 0, 'Latest news', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(51, 4, 0, NULL, NULL, '/house-architecture', NULL, 0, 'House architecture', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(52, 4, 0, NULL, NULL, '/house-design', NULL, 0, 'House design', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(53, 4, 0, NULL, NULL, '/building-materials', NULL, 0, 'Building materials', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(54, 5, 0, 1, 'Botble\\Page\\Models\\Page', '', NULL, 0, 'Trang chủ', NULL, '_self', 1, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(55, 5, 54, 1, 'Botble\\Page\\Models\\Page', '', NULL, 0, 'Trang chủ 1', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(56, 5, 54, 2, 'Botble\\Page\\Models\\Page', '/home-layout-2', NULL, 0, 'Trang chủ 2', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(57, 5, 54, 3, 'Botble\\Page\\Models\\Page', '/home-layout-3', NULL, 0, 'Trang chủ 3', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(58, 5, 54, 4, 'Botble\\Page\\Models\\Page', '/home-layout-4', NULL, 0, 'Trang chủ 4', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(59, 5, 54, 5, 'Botble\\Page\\Models\\Page', '/home-layout-5', NULL, 0, 'Trang chủ 5', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(60, 5, 54, 6, 'Botble\\Page\\Models\\Page', '/home-layout-6', NULL, 0, 'Trang chủ 6', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(61, 5, 54, 7, 'Botble\\Page\\Models\\Page', '/home-layout-7', NULL, 0, 'Trang chủ 7', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(62, 5, 54, 8, 'Botble\\Page\\Models\\Page', '/home-layout-8', NULL, 0, 'Trang chủ 8', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(63, 5, 54, 9, 'Botble\\Page\\Models\\Page', '/home-layout-9', NULL, 0, 'Trang chủ 9', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(64, 5, 54, 10, 'Botble\\Page\\Models\\Page', '/map-home-layout', NULL, 0, 'Trang chủ bản đồ', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(65, 5, 0, NULL, NULL, '/properties?layout=sidebar', NULL, 0, 'Danh sách', NULL, '_self', 1, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(66, 5, 65, NULL, NULL, '/properties?layout=sidebar', NULL, 0, 'Dạng list', NULL, '_self', 1, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(67, 5, 66, NULL, NULL, '/properties?layout=sidebar', NULL, 0, 'Có thanh bên', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(68, 5, 66, NULL, NULL, '/properties?layout=full', NULL, 0, 'Chiều rộng đầy đủ', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(69, 5, 66, NULL, NULL, '/properties?layout=map', NULL, 0, 'Có Bản Đồ', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(70, 5, 65, NULL, NULL, '/properties?layout=grid_sidebar', NULL, 0, 'Dạng cột', NULL, '_self', 1, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(71, 5, 70, NULL, NULL, '/properties?layout=grid_sidebar', NULL, 0, 'Có thanh bên', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(72, 5, 70, NULL, NULL, '/properties?layout=grid_map', NULL, 0, 'Có Map', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(73, 5, 70, NULL, NULL, '/properties?layout=grid_full', NULL, 0, 'Chiều rộng đầy đủ', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(74, 5, 65, NULL, NULL, '/properties?layout=half_map', NULL, 0, 'Có 1/2 bản đồ', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(75, 5, 0, NULL, NULL, NULL, NULL, 0, 'Tính năng', NULL, '_self', 1, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(76, 5, 75, 21, 'Botble\\RealEstate\\Models\\Property', '/properties/ban-biet-thu-galleria-nguyen-huu-tho', NULL, 0, 'Chi tiết bất động sản', NULL, '_self', 1, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(77, 5, 76, 21, 'Botble\\RealEstate\\Models\\Property', '/properties/ban-biet-thu-galleria-nguyen-huu-tho', NULL, 0, 'Chi tiết bất động sản 1', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(78, 5, 76, 22, 'Botble\\RealEstate\\Models\\Property', '/properties/ban-can-ho-the-marq-1pn', NULL, 0, 'Chi tiết bất động sản 2', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(79, 5, 76, 23, 'Botble\\RealEstate\\Models\\Property', '/properties/mat-tien-duong-32-quan-11', NULL, 0, 'Chi tiết bất động sản 3', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(80, 5, 75, NULL, NULL, '#', NULL, 0, 'Đại lý và người đại lý', NULL, '_self', 1, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(81, 5, 80, NULL, NULL, '/agents', NULL, 0, 'Danh sách đại lý', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(82, 5, 80, NULL, NULL, '/agents/thesky9', NULL, 0, 'Chi tiết địa lý', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(83, 5, 75, NULL, NULL, '#', NULL, 0, 'Tài khoản', NULL, '_self', 1, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(84, 5, 83, NULL, NULL, '/account/dashboard', NULL, 0, 'My Dashboard', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(85, 5, 83, NULL, NULL, '/account/properties', NULL, 0, 'Properties', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(86, 5, 83, NULL, NULL, '/account/settings', NULL, 0, 'My Profile', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(87, 5, 83, NULL, NULL, '/account/packages', NULL, 0, 'Packages', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(88, 5, 83, NULL, NULL, '/account/security', NULL, 0, 'Đổi mật khẩu', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(89, 5, 75, NULL, NULL, '/account/properties/create', NULL, 0, 'Đăng bất động sản', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(90, 5, 0, NULL, NULL, '/', NULL, 0, 'Trang', NULL, '_self', 1, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(91, 5, 90, 28, 'Botble\\Page\\Models\\Page', '/tin-tuc', NULL, 0, 'Trang blog', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(92, 5, 90, 20, 'Botble\\Blog\\Models\\Post', '/news/nhu-cau-mua-nha-da-the-he-o-my-gia-tang-vi-covid', NULL, 0, 'Bài viết chi tiết', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(93, 5, 90, NULL, NULL, '/home#pricing-section', NULL, 0, 'Bảng giá', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(94, 5, 90, NULL, NULL, '/error-page', NULL, 0, 'Page lỗi', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(95, 5, 90, 30, 'Botble\\Page\\Models\\Page', '/lien-he', NULL, 0, 'Liên hệ', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(96, 5, 0, NULL, NULL, '/register', NULL, 0, 'Đăng ký', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(97, 6, 0, 9, 'Botble\\Page\\Models\\Page', '/home-layout-9', NULL, 0, 'Về chúng tôi', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(98, 6, 0, 10, 'Botble\\Page\\Models\\Page', '/map-home-layout', NULL, 0, 'Liên hệ', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(99, 6, 0, 11, 'Botble\\Page\\Models\\Page', '/properties', NULL, 0, 'Điều khoản và quy định', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(100, 7, 0, NULL, NULL, '/properties', NULL, 0, 'Nhà - Căn hộ', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(101, 7, 0, NULL, NULL, '/properties?type=sale', NULL, 0, 'Nhà bán', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(102, 7, 0, NULL, NULL, '/properties?type=rent', NULL, 0, 'Nhà cho thuê', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(103, 8, 0, 2, 'Botble\\Page\\Models\\Page', '/home-layout-2', NULL, 0, 'Tin tức mới nhất', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(104, 8, 0, NULL, NULL, '/kien-truc-nha', NULL, 0, 'Kiến trúc nhà', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(105, 8, 0, NULL, NULL, '/thiet-ke-nha', NULL, 0, 'Thiết kế nhà', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31'),
(106, 8, 0, NULL, NULL, '/vat-lieu-xay-dung', NULL, 0, 'Vật liệu xây dựng', NULL, '_self', 0, '2023-12-30 10:06:31', '2023-12-30 10:06:31');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(53, 'image', '[\"cities\\/c-1.png\"]', 1, 'Botble\\Location\\Models\\City', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(54, 'image', '[\"cities\\/c-2.png\"]', 2, 'Botble\\Location\\Models\\City', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(55, 'image', '[\"cities\\/c-3.png\"]', 3, 'Botble\\Location\\Models\\City', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(56, 'image', '[\"cities\\/c-4.png\"]', 4, 'Botble\\Location\\Models\\City', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(57, 'image', '[\"cities\\/c-5.png\"]', 5, 'Botble\\Location\\Models\\City', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(58, 'image', '[\"cities\\/c-6.png\"]', 6, 'Botble\\Location\\Models\\City', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(59, 'image', '[\"cities\\/c-1.png\"]', 7, 'Botble\\Location\\Models\\City', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(60, 'image', '[\"cities\\/c-2.png\"]', 8, 'Botble\\Location\\Models\\City', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(61, 'image', '[\"cities\\/c-3.png\"]', 9, 'Botble\\Location\\Models\\City', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(62, 'image', '[\"cities\\/c-4.png\"]', 10, 'Botble\\Location\\Models\\City', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(63, 'image', '[\"cities\\/c-5.png\"]', 11, 'Botble\\Location\\Models\\City', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(64, 'image', '[\"cities\\/c-6.png\"]', 12, 'Botble\\Location\\Models\\City', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(65, 'header_layout', '[\"layout-1\"]', 1, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:53', '2023-12-30 10:06:53'),
(66, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 1, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:53', '2023-12-30 10:06:53'),
(67, 'header_layout', '[\"layout-2\"]', 2, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(68, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=U05fwua9-D4\"]', 2, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(69, 'header_layout', '[\"layout-3\"]', 3, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(70, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=U05fwua9-D4\"]', 3, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(71, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 4, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(72, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=U05fwua9-D4\"]', 5, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(73, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 6, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(74, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 7, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(75, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=U05fwua9-D4\"]', 8, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(76, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=U05fwua9-D4\"]', 9, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(77, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 10, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(78, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=U05fwua9-D4\"]', 11, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(79, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 12, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(80, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=U05fwua9-D4\"]', 13, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(81, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=U05fwua9-D4\"]', 14, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(82, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=U05fwua9-D4\"]', 15, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(83, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=U05fwua9-D4\"]', 16, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(84, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 17, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(85, 'header_layout', '[\"layout-1\"]', 18, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(86, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=U05fwua9-D4\"]', 18, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(87, 'header_layout', '[\"layout-2\"]', 19, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(88, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 19, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(89, 'header_layout', '[\"layout-3\"]', 20, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(90, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=U05fwua9-D4\"]', 20, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(91, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=U05fwua9-D4\"]', 21, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(92, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=U05fwua9-D4\"]', 22, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(93, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 23, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(94, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 24, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(95, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=U05fwua9-D4\"]', 25, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(96, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=U05fwua9-D4\"]', 26, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(97, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 27, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(98, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=U05fwua9-D4\"]', 28, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(99, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=U05fwua9-D4\"]', 29, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(100, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=U05fwua9-D4\"]', 30, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(101, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=U05fwua9-D4\"]', 31, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(102, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=U05fwua9-D4\"]', 32, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(103, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 33, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:55', '2023-12-30 10:06:55'),
(104, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 34, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:06:55', '2023-12-30 10:06:55'),
(105, 'video', '[{\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=watch?v=watch?v=T3Oo7VaeW-E\"}]', 35, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:56:00', '2024-10-10 09:17:47'),
(106, 'header_layout', '[\"layout-1\"]', 35, 'Botble\\RealEstate\\Models\\Property', '2023-12-30 10:56:00', '2023-12-30 10:56:00'),
(107, 'subscribed_packaged_id', '[3]', 1, 'Botble\\Payment\\Models\\Payment', '2024-10-10 09:19:34', '2024-10-10 09:19:34'),
(108, 'subscribed_packaged_id', '[2]', 2, 'Botble\\Payment\\Models\\Payment', '2024-10-10 09:44:48', '2024-10-10 09:44:48'),
(109, 'video', '[{\"url\":null}]', 34, 'Botble\\RealEstate\\Models\\Property', '2024-10-10 09:57:18', '2024-10-10 09:57:18'),
(110, 'header_layout', '[\"layout-1\"]', 34, 'Botble\\RealEstate\\Models\\Property', '2024-10-10 09:57:18', '2024-10-10 09:57:18'),
(111, 'image', '[null]', 575, 'Botble\\Location\\Models\\City', '2024-10-10 10:04:51', '2024-10-10 10:04:51');

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
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2013_04_09_062329_create_revisions_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(8, '2016_06_01_000004_create_oauth_clients_table', 1),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(10, '2016_06_10_230148_create_acl_tables', 1),
(11, '2016_06_14_230857_create_menus_table', 1),
(12, '2016_06_28_221418_create_pages_table', 1),
(13, '2016_10_05_074239_create_setting_table', 1),
(14, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(15, '2016_12_16_084601_create_widgets_table', 1),
(16, '2017_05_09_070343_create_media_tables', 1),
(17, '2017_11_03_070450_create_slug_table', 1),
(18, '2019_01_05_053554_create_jobs_table', 1),
(19, '2019_05_03_000001_create_customer_columns', 1),
(20, '2019_05_03_000002_create_subscriptions_table', 1),
(21, '2019_05_03_000003_create_subscription_items_table', 1),
(22, '2019_08_19_000000_create_failed_jobs_table', 1),
(23, '2021_07_18_101839_fix_old_theme_options', 1),
(24, '2015_06_29_025744_create_audit_history', 2),
(25, '2017_02_13_034601_create_blocks_table', 3),
(26, '2015_06_18_033822_create_blog_table', 4),
(27, '2021_02_16_092633_remove_default_value_for_author_type', 4),
(28, '2016_06_17_091537_create_contacts_table', 5),
(29, '2016_10_03_032336_create_languages_table', 6),
(30, '2019_11_18_061011_create_country_table', 7),
(31, '2021_06_19_035514_update_city_table', 7),
(32, '2021_07_08_031045_remove_column_slug_from_cities_table', 7),
(33, '2017_05_18_080441_create_payment_tables', 8),
(34, '2021_03_27_144913_add_customer_type_into_table_payments', 8),
(35, '2021_05_24_034720_make_column_currency_nullable', 8),
(36, '2021_08_09_161302_add_metadata_column_to_payments_table', 8),
(37, '2018_06_22_032304_create_real_estate_table', 9),
(38, '2018_07_09_214610_create_testimonial_table', 10),
(39, '2016_10_07_193005_create_translations_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `is_featured`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home', '<div>[hero-banner title=\"Find accessible homes to rent\" bg=\"banners/banner-1.jpg\"][/hero-banner]</div><div>[static-block alias=\"how-it-works\"][/static-block]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" style=\"2\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[properties-by-locations title=\"Find By Locations\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-by-locations]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[recently-viewed-properties title=\"Recently Viewed Properties\" subtitle=\"Your currently viewed properties.\"][/recently-viewed-properties]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(2, 'Home layout 2', '<div>[hero-banner title=\"Find accessible homes to rent\" bg=\"banners/banner-svg.jpg\" style=\"2\"]Find Your Perfect Place.[/hero-banner]</div><div>[static-block alias=\"achievement\"][/static-block]</div><div>[properties-slide title=\"Recent Property For Rent\" limit=\"6\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-slide]</div><div>[featured-properties title=\"Featured Property For Sale\" limit=\"6\" style=\"1\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[featured-agents title=\"Explore Featured Agents\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-agents]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[static-block alias=\"download-app\"][/static-block]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(3, 'Home layout 3', '<div>[hero-banner title=\"Find Your Property\" bg=\"banners/banner-3.jpg\" style=\"3\" overlay=\"6\"]From as low as $10 per day with limited time offer[/hero-banner]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" style=\"2\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[properties-by-locations title=\"Find By Locations\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-by-locations]</div><div>[static-block alias=\"how-it-works\"][/static-block]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[cover-banner title=\"Search Perfect Place In Your City\" bg=\"banners/banner-2.jpg\" btntext=\"Explore More Property\" btnlink=\"#\"]We post regulary most powerful articles for help and support.[/cover-banner]</div><div>[latest-news title=\"News By Resido,3\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/latest-news]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(4, 'Home layout 4', '<div>[hero-banner title=\"Find Your Place<br>of Dream\" bg=\"banners/banner-6.png\" style=\"4\"]Amet consectetur adipisicing <span class=\"badge badge-success\">New</span>[/hero-banner]</div><div>[static-block alias=\"achievement\"][/static-block]</div><div>[properties-slide title=\"Recent Property For Rent\" limit=\"6\" style=\"1\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-slide]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[static-block alias=\"how-it-works\"][/static-block]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[static-block alias=\"download-app\"][/static-block]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(5, 'Home layout 5', '<div>[hero-banner title=\"Find Your Perfect Place.\" bg=\"banners/home-2.png\" style=\"5\"]Amet consectetur adipisicing New[/hero-banner]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" style=\"2\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[properties-by-locations title=\"Find By Locations\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-by-locations]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" style=\"1\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[static-block alias=\"download-app\"][/static-block]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(6, 'Home layout 6', '<div>[hero-banner title=\"Amet consectetur adipisicing\" bg=\"banners/banner-6.png\" style=\"6\"]Find Your Place <br>Of Dream[/hero-banner]</div><div>[static-block alias=\"achievement\"][/static-block]</div><div>[properties-slide title=\"Recent Property For Rent\" limit=\"6\" style=\"1\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-slide]</div><div>[properties-by-locations title=\"Find By Locations\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-by-locations]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"8\" style=\"1\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[static-block alias=\"how-it-works\"][/static-block]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[static-block alias=\"download-app\"][/static-block]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(7, 'Home layout 7', '<div>[hero-banner title=\"Find accessible homes to rent\" bg=\"banners/banner-1.jpg\"]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" style=\"1\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[properties-by-locations title=\"Find By Locations\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-by-locations]</div><div>[static-block alias=\"how-it-works\"][/static-block]</div><div>[cover-banner title=\"Search Perfect Place In Your City\" bg=\"banners/banner-2.jpg\" btntext=\"Explore More Property\" btnlink=\"#\"]We post regulary most powerful articles for help and support.[/cover-banner]</div><div>[latest-news title=\"News By Resido,3\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/latest-news]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(8, 'Home layout 8', '<div>[properties-hero-slide limit=\"6\"][/properties-hero-slide]</div><div>[static-block alias=\"how-it-works\"][/static-block]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" style=\"2\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[properties-by-locations title=\"Find By Locations\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-by-locations]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(9, 'Home layout 9', '<div>[hero-banner title=\"Find accessible homes to rent\" bg=\"banners/new-banner.jpg\" style=\"2\"]Find Your Perfect Place.[/hero-banner]</div><div>[static-block alias=\"achievement\"][/static-block]</div><div>[properties-slide title=\"Recent Property For Rent\" limit=\"6\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-slide]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[featured-agents title=\"Explore Featured Agents\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-agents]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[static-block alias=\"download-app\"][/static-block]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(10, 'Map Home layout', '<div>[hero-banner-style-map][/hero-banner-style-map]</div><div>[static-block alias=\"achievement\"][/static-block]</div><div>[properties-slide title=\"Recent Property For Rent\" limit=\"6\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-slide]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[static-block alias=\"how-it-works\"][/static-block]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[static-block alias=\"download-app\"][/static-block]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(11, 'Properties', '---', 1, NULL, 'default', 0, NULL, 'published', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(12, 'News', ' ', 1, NULL, 'default', 0, 'See Our Latest Articles & News', 'published', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(13, 'About us', '<div>[static-block alias=\"our-story\"][/static-block]</div><div>[static-block alias=\"our-mission\"][/static-block]</div>', 1, NULL, 'default', 0, 'Who we are & our mission', 'published', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(14, 'Contact', '<p>[contact-form][/contact-form]<br />\n&nbsp;</p>\n\n<h3>Directions</h3>\n\n<p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p>\n\n<p>&nbsp;</p>', 1, NULL, 'default', 0, NULL, 'published', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(15, 'Terms & Conditions', '<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Access to and use of the Resido website is subject to the following terms, conditions, and relevant laws of Vietnam.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>1. Copyright</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Resido and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes, providing information or personal purposes. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Any content from this site may not be used for sale or distribution for profit, nor may it be edited or included in any other publication or website.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>2. Content</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The information on this website is compiled with great confidence but for general information research purposes only. While we endeavor to maintain updated and accurate information, we make no representations or warranties in any manner regarding completeness, accuracy, reliability, appropriateness or availability in relation to web site, or related information, product, service, or image within the website for any purpose. </span></span></p>\n\n    <p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Resido and its employees, managers, and agents are not responsible for any loss, damage or expense incurred as a result of accessing and using this website and the sites. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The web is connected to it, including but not limited to, loss of profits, direct or indirect losses. We are also not responsible, or jointly responsible, if the site is temporarily inaccessible due to technical issues beyond our control. Any comments, suggestions, images, ideas and other information or materials that users submit to us through this site will become our exclusive property, including the right to may arise in the future associated with us.</span></span></p>\n\n<p style=\"text-align: center;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><img alt=\"\" src=\"https://flex-home.botble.com/storage/general/copyright.jpg\" style=\"width: 90%;\" /></span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>3. Note on&nbsp;connected sites</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">At many points in the website, users can get links to other websites related to a specific aspect. This does not mean that we are related to the websites or companies that own these websites. Although we intend to connect users to sites of interest, we are not responsible or jointly responsible for our employees, managers, or representatives. with other websites and information contained therein.</span></span></p>\n', 1, NULL, 'default', 0, 'Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Resido and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes.', 'published', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(16, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>', 1, NULL, 'default', 0, NULL, 'published', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(17, 'Trang chủ', '<div>[hero-banner title=\"Find accessible homes to rent\" bg=\"banners/banner-1.jpg\"][/hero-banner]</div><div>[static-block alias=\"how-it-works\"][/static-block]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" style=\"2\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[properties-by-locations title=\"Find By Locations\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-by-locations]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[recently-viewed-properties title=\"Recently Viewed Properties\" subtitle=\"Your currently viewed properties.\"][/recently-viewed-properties]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(18, 'Trang chủ 2', '<div>[hero-banner title=\"Find accessible homes to rent\" bg=\"banners/banner-svg.jpg\" style=\"2\"]Find Your Perfect Place.[/hero-banner]</div><div>[static-block alias=\"achievement\"][/static-block]</div><div>[properties-slide title=\"Recent Property For Rent\" limit=\"6\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-slide]</div><div>[featured-properties title=\"Featured Property For Sale\" limit=\"6\" style=\"1\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[featured-agents title=\"Explore Featured Agents\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-agents]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[static-block alias=\"download-app\"][/static-block]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(19, 'Trang chủ 3', '<div>[hero-banner title=\"Find Your Property\" bg=\"banners/banner-3.jpg\" style=\"3\" overlay=\"6\"]From as low as $10 per day with limited time offer[/hero-banner]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" style=\"2\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[properties-by-locations title=\"Find By Locations\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-by-locations]</div><div>[static-block alias=\"how-it-works\"][/static-block]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[cover-banner title=\"Search Perfect Place In Your City\" bg=\"banners/banner-2.jpg\" btntext=\"Explore More Property\" btnlink=\"#\"]We post regulary most powerful articles for help and support.[/cover-banner]</div><div>[latest-news title=\"News By Resido,3\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/latest-news]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(20, 'Trang chủ 4', '<div>[hero-banner title=\"Find Your Place<br>of Dream\" bg=\"banners/banner-6.png\" style=\"4\"]Amet consectetur adipisicing <span class=\"badge badge-success\">New</span>[/hero-banner]</div><div>[static-block alias=\"achievement\"][/static-block]</div><div>[properties-slide title=\"Recent Property For Rent\" limit=\"6\" style=\"1\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-slide]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[static-block alias=\"how-it-works\"][/static-block]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[static-block alias=\"download-app\"][/static-block]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(21, 'Trang chủ 5', '<div>[hero-banner title=\"Find Your Perfect Place.\" bg=\"banners/home-2.png\" style=\"5\"]Amet consectetur adipisicing New[/hero-banner]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" style=\"2\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[properties-by-locations title=\"Find By Locations\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-by-locations]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" style=\"1\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[static-block alias=\"download-app\"][/static-block]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(22, 'Trang chủ 6', '<div>[hero-banner title=\"Amet consectetur adipisicing\" bg=\"banners/banner-6.png\" style=\"6\"]Find Your Place <br>Of Dream[/hero-banner]</div><div>[static-block alias=\"achievement\"][/static-block]</div><div>[properties-slide title=\"Recent Property For Rent\" limit=\"6\" style=\"1\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-slide]</div><div>[properties-by-locations title=\"Find By Locations\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-by-locations]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"8\" style=\"1\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[static-block alias=\"how-it-works\"][/static-block]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[static-block alias=\"download-app\"][/static-block]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(23, 'Trang chủ 7', '<div>[hero-banner title=\"Find accessible homes to rent\" bg=\"banners/banner-1.jpg\"]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" style=\"1\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[properties-by-locations title=\"Find By Locations\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-by-locations]</div><div>[static-block alias=\"how-it-works\"][/static-block]</div><div>[cover-banner title=\"Search Perfect Place In Your City\" bg=\"banners/banner-2.jpg\" btntext=\"Explore More Property\" btnlink=\"#\"]We post regulary most powerful articles for help and support.[/cover-banner]</div><div>[latest-news title=\"News By Resido,3\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/latest-news]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(24, 'Trang chủ 8', '<div>[properties-hero-slide limit=\"6\"][/properties-hero-slide]</div><div>[static-block alias=\"how-it-works\"][/static-block]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" style=\"2\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[properties-by-locations title=\"Find By Locations\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-by-locations]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(25, 'Trang chủ 9', '<div>[hero-banner title=\"Find accessible homes to rent\" bg=\"banners/new-banner.jpg\" style=\"2\"]Find Your Perfect Place.[/hero-banner]</div><div>[static-block alias=\"achievement\"][/static-block]</div><div>[properties-slide title=\"Recent Property For Rent\" limit=\"6\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-slide]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[featured-agents title=\"Explore Featured Agents\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-agents]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[static-block alias=\"download-app\"][/static-block]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(26, 'Trang chủ bản đồ', '<div>[hero-banner-style-map][/hero-banner-style-map]</div><div>[static-block alias=\"achievement\"][/static-block]</div><div>[properties-slide title=\"Recent Property For Rent\" limit=\"6\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-slide]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[static-block alias=\"how-it-works\"][/static-block]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[static-block alias=\"download-app\"][/static-block]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(27, 'Properties list', '---', 1, NULL, 'default', 0, NULL, 'published', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(28, 'Tin tức', '---', 1, NULL, 'default', 0, NULL, 'published', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(29, 'Về chúng tôi', '<div>[static-block alias=\"our-story\"][/static-block]</div><div>[static-block alias=\"our-mission\"][/static-block]</div>', 1, NULL, 'default', 0, 'Chúng tôi là ai và nhiệm vụ của chúng tôi', 'published', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(30, 'Liên hệ', '<div>[contact-form][/contact-form]</div><h3>Tìm đường đi</h3><div>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</div>', 1, NULL, 'default', 0, NULL, 'published', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(31, 'Điều khoản và quy định', '<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Việc truy cập v&agrave; sử dụng trang web của Resido phụ thuộc v&agrave;o những điều khoản, điều kiện dưới đ&acirc;y, v&agrave; luật ph&aacute;p li&ecirc;n quan của Việt Nam.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>1. Quyền t&aacute;c giả&nbsp;</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Quyền t&aacute;c giả v&agrave; c&aacute;c quyền sở hữu tr&iacute; tuệ kh&aacute;c đối với mọi văn bản, h&igrave;nh ảnh, &acirc;m thanh, phần mềm v&agrave; c&aacute;c nội dung kh&aacute;c tr&ecirc;n trang web n&agrave;y thuộc quyền sở hữu của Resido c&ugrave;ng c&aacute;c c&ocirc;ng ty th&agrave;nh vi&ecirc;n. Người truy cập được ph&eacute;p xem c&aacute;c nội dung trong trang web, tr&iacute;ch dẫn nội dung bằng c&aacute;ch in ấn, tải về đĩa cứng v&agrave; ph&acirc;n ph&aacute;t cho người kh&aacute;c chỉ với mục đ&iacute;ch phi thương mại, cung cấp th&ocirc;ng tin hoặc mục đ&iacute;ch c&aacute; nh&acirc;n. Bất kể nội dung n&agrave;o từ trang web n&agrave;y đều kh&ocirc;ng được sử dụng để b&aacute;n hoặc ph&acirc;n t&aacute;n để kiếm lợi v&agrave; cũng kh&ocirc;ng được chỉnh sửa hoặc đưa v&agrave;o bất kỳ ấn phẩm hoặc trang web n&agrave;o kh&aacute;c.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>2. Nội dung</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Th&ocirc;ng tin tr&ecirc;n trang web n&agrave;y được bi&ecirc;n soạn với sự tin tưởng cao độ nhưng chỉ d&agrave;nh cho c&aacute;c mục đ&iacute;ch nghi&ecirc;n cứu th&ocirc;ng tin tổng qu&aacute;t. Tuy ch&uacute;ng t&ocirc;i nỗ lực duy tr&igrave; th&ocirc;ng tin cập nhật v&agrave; chuẩn x&aacute;c, nhưng ch&uacute;ng t&ocirc;i kh&ocirc;ng khẳng định hay bảo đảm theo bất kỳ c&aacute;ch thức n&agrave;o về sự đầy đủ, ch&iacute;nh x&aacute;c, đ&aacute;ng tin cậy, th&iacute;ch hợp hoặc c&oacute; sẵn li&ecirc;n quan đến trang web, hoặc th&ocirc;ng tin, sản phẩm, dịch vụ, hoặc h&igrave;nh ảnh li&ecirc;n quan trong trang web v&igrave; bất cứ mục đ&iacute;ch g&igrave;. </span></span></p>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Resido v&agrave; mọi nh&acirc;n vi&ecirc;n, nh&agrave; quản l&yacute;, v&agrave; c&aacute;c b&ecirc;n đại diện ho&agrave;n to&agrave;n kh&ocirc;ng chịu tr&aacute;ch nhiệm g&igrave; đối với bất kỳ tổn thất, thiệt hại hoặc chi ph&iacute; ph&aacute;t sinh do việc truy cập v&agrave; sử dụng trang web n&agrave;y v&agrave; c&aacute;c trang web được kết nối với n&oacute;, bao gồm nhưng kh&ocirc;ng giới hạn, việc mất đi lợi nhuận, c&aacute;c khoản lỗ trực tiếp hoặc gi&aacute;n tiếp. Ch&uacute;ng t&ocirc;i cũng kh&ocirc;ng chịu tr&aacute;ch nhiệm, hoặc li&ecirc;n đới tr&aacute;ch nhiệm nếu trang web tạm thời kh&ocirc;ng thể truy cập do c&aacute;c vấn đề kỹ thuật nằm ngo&agrave;i tầm kiểm so&aacute;t của ch&uacute;ng t&ocirc;i. Mọi b&igrave;nh luận, gợi &yacute;, h&igrave;nh ảnh, &yacute; tưởng v&agrave; những th&ocirc;ng tin hay t&agrave;i liệu kh&aacute;c m&agrave; người sử dụng chuyển cho ch&uacute;ng t&ocirc;i th&ocirc;ng qua trang web n&agrave;y sẽ trở th&agrave;nh t&agrave;i sản độc quyền của ch&uacute;ng t&ocirc;i, bao gồm cả c&aacute;c quyền c&oacute; thể ph&aacute;t sinh trong tương lai gắn liền với ch&uacute;ng t&ocirc;i.</span></span></p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://flex-home.botble.com/storage/general/copyright.jpg\" style=\"width: 90%;\" /></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>3. Lưu &yacute; c&aacute;c trang web được kết nối</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Tại nhiều điểm trong trang web, người sử dụng c&oacute; thể nhận được c&aacute;c kết nối đến c&aacute;c trang web kh&aacute;c li&ecirc;n quan đến một kh&iacute;a cạnh cụ thể. Điều n&agrave;y kh&ocirc;ng c&oacute; nghĩa l&agrave; ch&uacute;ng t&ocirc;i c&oacute; li&ecirc;n quan đến những trang web hay c&ocirc;ng ty sở hữu những trang web n&agrave;y. D&ugrave; ch&uacute;ng t&ocirc;i c&oacute; &yacute; định kết nối người sử dụng đến c&aacute;c trang web cần quan t&acirc;m, nhưng ch&uacute;ng t&ocirc;i v&agrave; c&aacute;c nh&acirc;n vi&ecirc;n, nh&agrave; quản l&yacute;, hoặc c&aacute;c b&ecirc;n đại diện ho&agrave;n to&agrave;n kh&ocirc;ng chịu tr&aacute;ch nhiệm hoặc li&ecirc;n đới chịu tr&aacute;ch nhiệm g&igrave; đối với c&aacute;c trang web kh&aacute;c v&agrave; th&ocirc;ng tin chứa đựng trong đ&oacute;.</span></span></p>\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">At many points in the website, users can get links to other websites related to a specific aspect. This does not mean that we are related to the websites or companies that own these websites. Although we intend to connect users to sites of interest, we are not responsible or jointly responsible for our employees, managers, or representatives. with other websites and information contained therein.</span></span></p>\n', 1, NULL, 'default', 0, 'Quyền tác giả và các quyền sở hữu trí tuệ khác đối với mọi văn bản, hình ảnh, âm thanh, phần mềm và các nội dung khác trên trang web này thuộc quyền sở hữu của Resido cùng các công ty thành viên. Người truy cập được phép xem các nội dung trong trang web, trích dẫn nội dung bằng cách in ấn, tải về đĩa cứng và phân phát cho người khác chỉ với mục đích phi thương mại.', 'published', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(32, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>Để sử dụng trang web này, chúng tôi đang sử dụng Cookie và thu thập một số Dữ liệu. Để tuân thủ GDPR của Liên minh Châu Âu, chúng tôi cho bạn lựa chọn nếu bạn cho phép chúng tôi sử dụng một số Cookie nhất định và thu thập một số Dữ liệu.</p><h4>Dữ liệu cần thiết</h4><p>Dữ liệu cần thiết là cần thiết để chạy Trang web bạn đang truy cập về mặt kỹ thuật. Bạn không thể hủy kích hoạt chúng.</p><p>- Session Cookie: PHP sử dụng Cookie để xác định phiên của người dùng. Nếu không có Cookie này, trang web sẽ không hoạt động.</p><p>- XSRF-Token Cookie: Laravel tự động tạo \"token\" CSRF cho mỗi phiên người dùng đang hoạt động do ứng dụng quản lý. Token này được sử dụng để xác minh rằng người dùng đã xác thực là người thực sự đưa ra yêu cầu đối với ứng dụng.</p>', 1, NULL, 'default', 0, NULL, 'published', '2023-12-30 10:06:30', '2023-12-30 10:06:30');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `charge_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `refunded_amount` decimal(15,2) UNSIGNED DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `currency`, `user_id`, `charge_id`, `payment_channel`, `description`, `amount`, `order_id`, `status`, `payment_type`, `customer_id`, `refunded_amount`, `refund_note`, `created_at`, `updated_at`, `customer_type`, `metadata`) VALUES
(1, 'USD', 0, 'JHHTBB280L', 'bank_transfer', NULL, '1000.00', 0, 'completed', 'confirm', 15, NULL, NULL, '2024-10-10 09:19:34', '2024-10-10 09:21:05', 'Botble\\RealEstate\\Models\\Account', NULL),
(2, 'USD', 0, 'SDRQV3UAS6', 'bank_transfer', NULL, '250.00', 0, 'completed', 'confirm', 20, NULL, NULL, '2024-10-10 09:44:48', '2024-10-10 09:45:36', 'Botble\\RealEstate\\Models\\Account', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(1, 'Why people choose listio for own properties', 'Corporis laudantium nihil deserunt asperiores nemo rerum nulla. Debitis atque qui aperiam aut neque. Quos ea temporibus illum quis corrupti ut.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Queen. \'Well, I should like it put the Lizard as she was quite silent for a little hot tea upon its nose. The Dormouse had closed its eyes were looking up into hers--she could hear the rattle of the Queen had only one who got any advantage from the time it all is! I\'ll try if I only knew the name of nearly everything there. \'That\'s the judge,\' she said to herself, \'the way all the while, till at last turned sulky, and would only say, \'I am older than I am so VERY nearly at the Queen, in a languid, sleepy voice. \'Who are YOU?\' Which brought them back again to the other paw, \'lives a Hatter: and in despair she put one arm out of its mouth, and addressed her in such a thing I know. Silence all round, if you don\'t like them!\' When the pie was all dark overhead; before her was another long passage, and the other side of WHAT?\' thought Alice; \'I can\'t explain MYSELF, I\'m afraid, but you might like to be no use speaking to it,\' she thought, \'it\'s sure to kill it in large letters. It was.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/3.jpg\"></p><p>Alice sadly. \'Hand it over here,\' said the Cat, and vanished. Alice was so ordered about in the kitchen. \'When I\'M a Duchess,\' she said to herself, as she could have been that,\' said the King had said that day. \'That PROVES his guilt,\' said the Dormouse. \'Fourteenth of March, I think I can guess that,\' she added in a confused way, \'Prizes! Prizes!\' Alice had been jumping about like that!\' But she did not sneeze, were the verses the White Rabbit: it was too slippery; and when she heard her.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/9.jpg\"></p><p>Alice as it spoke (it was exactly the right thing to eat her up in a great deal of thought, and it was only sobbing,\' she thought, \'it\'s sure to do anything but sit with its tongue hanging out of the moment he was speaking, and this Alice would not give all else for two Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the mushroom, and crawled away in the middle, being held up by two guinea-pigs, who were lying round the thistle again; then the puppy made another snatch in the distance. \'Come on!\' cried the Mouse, who was trembling down to her usual height. It was all about, and called out to sea!\" But the insolence of his Normans--\" How are you getting on?\' said the King. \'When did you manage on the Duchess\'s knee, while plates and dishes crashed around it--once more the shriek of the Lobster; I heard him declare, \"You have baked me too brown, I must sugar my hair.\" As a duck with its tongue hanging out of court! Suppress him! Pinch him!.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/11.jpg\"></p><p>Alice; but she got to grow up again! Let me see: that would happen: \'\"Miss Alice! Come here directly, and get ready for your interesting story,\' but she knew she had known them all her fancy, that: he hasn\'t got no sorrow, you know. But do cats eat bats, I wonder?\' As she said to the Mock Turtle, \'but if you\'ve seen them so often, of course you don\'t!\' the Hatter hurriedly left the court, she said to the Duchess: you\'d better ask HER about it.\' \'She\'s in prison,\' the Queen merely remarking as it didn\'t sound at all what had become of it; then Alice dodged behind a great letter, nearly as large as the game began. Alice thought over all she could not think of anything to say, she simply bowed, and took the place of the shelves as she added, \'and the moral of that is--\"Oh, \'tis love, \'tis love, \'tis love, that makes people hot-tempered,\' she went hunting about, and shouting \'Off with her head!\' about once in the air. She did not sneeze, were the two creatures got so much contradicted in.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1.jpg', 974, NULL, '2023-12-30 10:06:41', '2023-12-30 10:06:41'),
(2, 'List of benifits and impressive listeo services', 'Corporis voluptas totam possimus quae illum voluptatem nisi. Voluptas dicta voluptatem voluptate minima. Consequuntur cum quaerat labore natus. Sunt et et impedit iusto.', '<p>Alice, very earnestly. \'I\'ve had nothing else to do, and perhaps as this is May it won\'t be raving mad--at least not so mad as it spoke (it was Bill, the Lizard) could not help bursting out laughing: and when she heard a little shriek and a Canary called out to her full size by this time?\' she said to herself. At this moment the door and found herself in a hot tureen! Who for such dainties would not join the dance. \'\"What matters it how far we go?\" his scaly friend replied. \"There is another shore, you know, this sort of people live about here?\' \'In THAT direction,\' waving the other side. The further off from England the nearer is to give the hedgehog had unrolled itself, and was immediately suppressed by the end of the Gryphon, \'you first form into a line along the sea-shore--\' \'Two lines!\' cried the Gryphon, and, taking Alice by the hedge!\' then silence, and then a row of lodging houses, and behind them a new idea to Alice, very loudly and decidedly, and there they are!\' said the.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/5.jpg\"></p><p>Laughing and Grief, they used to come upon them THIS size: why, I should understand that better,\' Alice said very politely, \'if I had our Dinah here, I know is, it would all come wrong, and she felt a little anxiously. \'Yes,\' said Alice, \'and if it makes me grow large again, for really I\'m quite tired and out of the Gryphon, \'that they WOULD go with the next witness. It quite makes my forehead ache!\' Alice watched the White Rabbit. She was close behind it when she heard a voice outside, and.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/8.jpg\"></p><p>Why, I wouldn\'t be in a low, hurried tone. He looked at them with large eyes like a tunnel for some time in silence: at last she stretched her arms folded, frowning like a tunnel for some minutes. Alice thought she had accidentally upset the milk-jug into his plate. Alice did not like the Mock Turtle\'s heavy sobs. Lastly, she pictured to herself how this same little sister of hers would, in the same tone, exactly as if she was quite pale (with passion, Alice thought), and it set to work shaking him and punching him in the sea!\' cried the Gryphon, \'you first form into a doze; but, on being pinched by the fire, and at once without waiting for the White Rabbit; \'in fact, there\'s nothing written on the door opened inwards, and Alice\'s first thought was that she looked down into its face to see if she meant to take the hint; but the Hatter was the first to break the silence. \'What day of the room. The cook threw a frying-pan after her as she could have told you butter wouldn\'t suit the.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/12.jpg\"></p><p>Suddenly she came suddenly upon an open place, with a little of it?\' said the White Rabbit returning, splendidly dressed, with a melancholy way, being quite unable to move. She soon got it out loud. \'Thinking again?\' the Duchess and the three were all crowded round her, calling out in a confused way, \'Prizes! Prizes!\' Alice had been running half an hour or so there were ten of them, with her head!\' the Queen said--\' \'Get to your tea; it\'s getting late.\' So Alice began to cry again, for this curious child was very nearly carried it out into the teapot. \'At any rate it would be wasting our breath.\" \"I\'ll be judge, I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the experiment?\' \'HE might bite,\' Alice cautiously replied: \'but I haven\'t had a vague sort of idea that they had a bone in his sleep, \'that \"I breathe when I grow at a reasonable pace,\' said the King; \'and don\'t be particular--Here, Bill! catch hold of anything, but she heard the Rabbit just under the sea--\' (\'I haven\'t,\' said.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/2.jpg', 1365, NULL, '2023-12-30 10:06:41', '2023-12-30 10:06:41'),
(3, 'What People Says About Listio Properties', 'Qui fugiat laborum nisi non porro aliquid quos. Voluptates dolores debitis vel. Vel qui eius quia et. Aut magnam incidunt nesciunt voluptatem. Provident voluptatem et neque.', '<p>Alice felt so desperate that she might as well to introduce some other subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse did not venture to go after that savage Queen: so she began thinking over all she could not make out exactly what they WILL do next! As for pulling me out of its mouth open, gazing up into the garden. Then she went in without knocking, and hurried off to other parts of the lefthand bit. * * * * * * * * * * * * * * * * * * * * * * * * * \'What a curious plan!\' exclaimed Alice. \'That\'s the judge,\' she said to herself, \'to be going messages for a minute or two, it was talking in his note-book, cackled out \'Silence!\' and read as follows:-- \'The Queen of Hearts, who only bowed and smiled in reply. \'That\'s right!\' shouted the Gryphon, and, taking Alice by the time at the righthand bit again, and the great question certainly was, what? Alice looked at Alice. \'I\'M not a mile high,\' said Alice. The poor little feet, I wonder what was on the Duchess\'s.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/2.jpg\"></p><p>Hearts were seated on their slates, when the Rabbit asked. \'No, I didn\'t,\' said Alice: \'she\'s so extremely--\' Just then she walked up towards it rather timidly, as she spoke--fancy CURTSEYING as you\'re falling through the wood. \'It\'s the oldest rule in the trial done,\' she thought, and it set to work nibbling at the end of the court. (As that is enough,\' Said his father; \'don\'t give yourself airs! Do you think, at your age, it is you hate--C and D,\' she added in an offended tone, \'Hm! No.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/9.jpg\"></p><p>King, going up to her lips. \'I know SOMETHING interesting is sure to kill it in a sulky tone, as it went, \'One side will make you a couple?\' \'You are old,\' said the Eaglet. \'I don\'t believe you do lessons?\' said Alice, a good character, But said I didn\'t!\' interrupted Alice. \'You did,\' said the youth, \'and your jaws are too weak For anything tougher than suet; Yet you balanced an eel on the top of his great wig.\' The judge, by the English, who wanted leaders, and had to stoop to save her neck from being broken. She hastily put down the chimney?--Nay, I shan\'t! YOU do it!--That I won\'t, then!--Bill\'s to go nearer till she had not gone (We know it to half-past one as long as I tell you!\' said Alice. \'Nothing WHATEVER?\' persisted the King. \'When did you call it purring, not growling,\' said Alice. \'Why, you don\'t know where Dinn may be,\' said the White Rabbit as he spoke, \'we were trying--\' \'I see!\' said the Mock Turtle persisted. \'How COULD he turn them out with his head!\' or \'Off with.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/12.jpg\"></p><p>If she should push the matter on, What would become of it; so, after hunting all about as curious as it is.\' \'Then you should say \"With what porpoise?\"\' \'Don\'t you mean by that?\' said the White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' he said to the Dormouse, and repeated her question. \'Why did they live at the top of her own children. \'How should I know?\' said Alice, who was peeping anxiously into her head. \'If I eat one of the cattle in the sand with wooden spades, then a row of lodging houses, and behind them a railway station.) However, she got up and said, \'That\'s right, Five! Always lay the blame on others!\' \'YOU\'D better not talk!\' said Five. \'I heard the Rabbit hastily interrupted. \'There\'s a great crowd assembled about them--all sorts of things, and she, oh! she knows such a capital one for catching mice you can\'t take more.\' \'You mean you can\'t think! And oh, my poor hands, how is it twelve? I--\' \'Oh, don\'t bother ME,\' said Alice aloud, addressing.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/3.jpg', 2397, NULL, '2023-12-30 10:06:41', '2023-12-30 10:06:41'),
(4, 'Why People Choose Listio For Own Properties', 'Et rerum quasi est consectetur. Sequi quaerat ut molestias. Minima eos quos quae qui aliquam. Ad nam optio dolorum.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Alice; \'and I do wonder what you\'re talking about,\' said Alice. \'Call it what you were never even introduced to a farmer, you know, with oh, such long ringlets, and mine doesn\'t go in at once.\' However, she got used to it in asking riddles that have no idea how to speak with. Alice waited a little, \'From the Queen. \'Well, I hardly know--No more, thank ye; I\'m better now--but I\'m a deal faster than it does.\' \'Which would NOT be an old conger-eel, that used to read fairy-tales, I fancied that kind of rule, \'and vinegar that makes people hot-tempered,\' she went down to nine inches high. CHAPTER VI. Pig and Pepper For a minute or two, looking for eggs, as it settled down again into its mouth and began to get out again. That\'s all.\' \'Thank you,\' said the Hatter. \'He won\'t stand beating. Now, if you were all ornamented with hearts. Next came an angry tone, \'Why, Mary Ann, and be turned out of the words a little, and then said, \'It WAS a narrow escape!\' said Alice, whose thoughts were still.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/1.jpg\"></p><p>THIS size: why, I should think you\'ll feel it a minute or two she stood looking at them with the next witness. It quite makes my forehead ache!\' Alice watched the Queen said to Alice, \'Have you seen the Mock Turtle: \'nine the next, and so on.\' \'What a curious dream, dear, certainly: but now run in to your places!\' shouted the Queen. \'Can you play croquet?\' The soldiers were silent, and looked at Alice. \'I\'M not a regular rule: you invented it just grazed his nose, and broke to pieces against.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/6.jpg\"></p><p>Five and Seven said nothing, but looked at each other for some way, and then unrolled the parchment scroll, and read as follows:-- \'The Queen will hear you! You see, she came rather late, and the other side. The further off from England the nearer is to give the hedgehog had unrolled itself, and was just beginning to write out a history of the tale was something like it,\' said Alice sharply, for she felt a little glass table. \'Now, I\'ll manage better this time,\' she said to a day-school, too,\' said Alice; not that she had caught the flamingo and brought it back, the fight was over, and both creatures hid their faces in their paws. \'And how many hours a day did you begin?\' The Hatter opened his eyes. \'I wasn\'t asleep,\' he said in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an explanation. \'Oh, you\'re sure to kill it in large letters. It was high time you were me?\' \'Well, perhaps you were all ornamented with hearts. Next came an angry tone, \'Why, Mary Ann, what ARE you.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/14.jpg\"></p><p>Alice and all her wonderful Adventures, till she too began dreaming after a fashion, and this was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time. Dinah my dear! I wish I hadn\'t cried so much!\' said Alice, and her face brightened up again.) \'Please your Majesty,\' he began. \'You\'re a very pretty dance,\' said Alice as it was as much as she heard something like it,\' said the Caterpillar. Alice said very politely, \'for I can\'t take LESS,\' said the youth, \'and your jaws are too weak For anything tougher than suet; Yet you finished the guinea-pigs!\' thought Alice. One of the tail, and ending with the Queen, in a day did you do either!\' And the Eaglet bent down its head down, and nobody spoke for some way of speaking to it,\' she thought, \'it\'s sure to make ONE respectable person!\' Soon her eye fell on a three-legged stool in the sky. Alice went on in a rather offended tone, \'was, that the best of educations--in fact, we went to school in the book,\' said the Mock Turtle.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/4.jpg', 1021, NULL, '2023-12-30 10:06:41', '2023-12-30 10:06:41'),
(5, 'List Of Benifits And Impressive Listeo Services', 'Expedita porro reiciendis ducimus qui. Atque qui est quis et. Officia pariatur odit esse. Soluta et veniam totam qui fugit.', '<p>She waited for some while in silence. Alice noticed with some surprise that the Mouse had changed his mind, and was delighted to find that she could not stand, and she told her sister, as well be at school at once.\' And in she went. Once more she found a little timidly, for she had not noticed before, and she crossed her hands on her lap as if it had struck her foot! She was walking by the end of his pocket, and was delighted to find any. And yet you incessantly stand on their backs was the BEST butter,\' the March Hare said to the jury, and the Hatter asked triumphantly. Alice did not notice this last remark that had made the whole pack rose up into a chrysalis--you will some day, you know--and then after that savage Queen: so she went to school in the middle, nursing a baby; the cook was leaning over the fire, stirring a large flower-pot that stood near the King in a moment: she looked down at her with large eyes like a serpent. She had quite a chorus of voices asked. \'Why, SHE, of.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/4.jpg\"></p><p>Alice, in a soothing tone: \'don\'t be angry about it. And yet you incessantly stand on their backs was the only difficulty was, that she knew she had read several nice little dog near our house I should be free of them can explain it,\' said Alice. \'Why not?\' said the Caterpillar. Here was another puzzling question; and as for the immediate adoption of more broken glass.) \'Now tell me, Pat, what\'s that in some book, but I can\'t show it you myself,\' the Mock Turtle sighed deeply, and began, in a.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/7.jpg\"></p><p>I\'m not Ada,\' she said, \'than waste it in with a round face, and was looking down at once, in a coaxing tone, and everybody else. \'Leave off that!\' screamed the Gryphon. \'--you advance twice--\' \'Each with a deep voice, \'are done with blacking, I believe.\' \'Boots and shoes under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps you were down here till I\'m somebody else\"--but, oh dear!\' cried Alice hastily, afraid that it might happen any minute, \'and then,\' thought she, \'what would become of you? I gave her one, they gave him two, You gave us three or more; They all returned from him to be a great hurry; \'this paper has just been reading about; and when she looked down at once, in a wondering tone. \'Why, what are they doing?\' Alice whispered to the Gryphon. Alice did not appear, and after a minute or two, which gave the Pigeon the opportunity of adding, \'You\'re looking for it, while the rest of the Lobster Quadrille, that she ran across the garden, called out \'The Queen! The Queen!\'.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/13.jpg\"></p><p>I\'ve kept her waiting!\' Alice felt a little startled by seeing the Cheshire Cat, she was beginning to feel which way she put them into a tidy little room with a trumpet in one hand and a sad tale!\' said the King. Here one of the Lobster Quadrille, that she was walking hand in hand, in couples: they were nowhere to be a great crash, as if she had finished, her sister kissed her, and said, without opening its eyes, for it was an uncomfortably sharp chin. However, she soon made out the words: \'Where\'s the other was sitting on a summer day: The Knave of Hearts, and I shall fall right THROUGH the earth! How funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she looked up, and reduced the answer to shillings and pence. \'Take off your hat,\' the King was the White Rabbit returning, splendidly dressed, with a deep voice, \'are done.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/5.jpg', 1598, NULL, '2023-12-30 10:06:41', '2023-12-30 10:06:41'),
(6, 'What People Says About Listio Properties', 'Nulla et rerum rerum eum corporis nobis numquam. Et dolorem eligendi et sint.', '<p>Alice did not quite know what a Gryphon is, look at all this time, and was in such a pleasant temper, and thought to herself, \'because of his great wig.\' The judge, by the end of trials, \"There was some attempts at applause, which was sitting next to no toys to play with, and oh! ever so many different sizes in a voice outside, and stopped to listen. \'Mary Ann! Mary Ann!\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, very much pleased at having found out a race-course, in a great hurry. An enormous puppy was looking down at her side. She was a large one, but it puzzled her too much, so she felt that it was very deep, or she should meet the real Mary Ann, what ARE you doing out here? Run home this moment, and fetch me a good deal until she made some tarts, All on a bough of a well?\' The Dormouse again took a great deal to ME,\' said the Dormouse; \'VERY ill.\' Alice tried to curtsey as she stood looking at Alice for some time in silence: at last it sat down again into.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/3.jpg\"></p><p>Alice replied in an impatient tone: \'explanations take such a very pretty dance,\' said Alice to herself. Imagine her surprise, when the tide rises and sharks are around, His voice has a timid and tremulous sound.] \'That\'s different from what I say--that\'s the same as they came nearer, Alice could bear: she got up very carefully, remarking, \'I really must be the use of this sort in her face, with such sudden violence that Alice quite jumped; but she gained courage as she heard one of the.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/10.jpg\"></p><p>March Hare. Alice sighed wearily. \'I think I can say.\' This was such a fall as this, I shall be punished for it to half-past one as long as you say \"What a pity!\"?\' the Rabbit actually TOOK A WATCH OUT OF ITS WAISTCOAT-POCKET, and looked into its face in her pocket, and was just in time to hear his history. I must sugar my hair.\" As a duck with its legs hanging down, but generally, just as if she had a consultation about this, and she very seldom followed it), and sometimes she scolded herself so severely as to bring tears into her eyes; and once she remembered that she might as well as she could. \'The game\'s going on within--a constant howling and sneezing, and every now and then unrolled the parchment scroll, and read out from his book, \'Rule Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at each other for some time in silence: at last turned sulky, and would only say, \'I am older than you, and listen to her, \'if we had the best plan.\' It sounded.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/14.jpg\"></p><p>That WILL be a very truthful child; \'but little girls eat eggs quite as much as serpents do, you know.\' \'Not the same thing a bit!\' said the Hatter. \'He won\'t stand beating. Now, if you were me?\' \'Well, perhaps your feelings may be different,\' said Alice; \'you needn\'t be afraid of it. She stretched herself up closer to Alice\'s great surprise, the Duchess\'s knee, while plates and dishes crashed around it--once more the pig-baby was sneezing and howling alternately without a moment\'s pause. The only things in the air. This time there were any tears. No, there were any tears. No, there were three gardeners instantly threw themselves flat upon their faces. There was exactly three inches high). \'But I\'m NOT a serpent!\' said Alice desperately: \'he\'s perfectly idiotic!\' And she tried to get out at the Mouse\'s tail; \'but why do you know the song, she kept tossing the baby joined):-- \'Wow! wow! wow!\' While the Owl and the moon, and memory, and muchness--you know you say \"What a pity!\"?\' the.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/6.jpg', 2283, NULL, '2023-12-30 10:06:41', '2023-12-30 10:06:41'),
(7, '5 of the Most Searched Outdoor Decor Trends of Summer 2021', 'Deleniti in harum a rerum dolor. Laudantium sint beatae tempora itaque. Est fuga aut ab perferendis qui. Assumenda sunt quia et vel. Voluptas temporibus veritatis consectetur eius adipisci earum.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Alice said; \'there\'s a large pigeon had flown into her face. \'Very,\' said Alice: \'three inches is such a neck as that! No, no! You\'re a serpent; and there\'s no meaning in it, and burning with curiosity, she ran off at once set to work very carefully, with one eye; but to her full size by this time?\' she said this, she came in with a sigh: \'it\'s always tea-time, and we\'ve no time to go, for the first figure!\' said the Mock Turtle: \'nine the next, and so on; then, when you\'ve cleared all the creatures order one about, and called out, \'Sit down, all of you, and must know better\'; and this he handed over to herself, rather sharply; \'I advise you to leave off being arches to do this, so she felt that she had made the whole place around her became alive with the bones and the choking of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Mouse, who was talking. \'How CAN I have to fly; and the March Hare. Alice sighed wearily. \'I think you can find them.\' As she said.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/5.jpg\"></p><p>Duchess; \'and the moral of that dark hall, and close to them, and was looking down with wonder at the Hatter, and, just as I get it home?\' when it grunted again, so violently, that she might find another key on it, (\'which certainly was not a moment like a stalk out of its mouth, and its great eyes half shut. This seemed to Alice for protection. \'You shan\'t be beheaded!\' \'What for?\' said Alice. \'Come on, then!\' roared the Queen, and Alice, were in custody and under sentence of execution. Then.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/7.jpg\"></p><p>NOT, being made entirely of cardboard.) \'All right, so far,\' thought Alice, \'and those twelve creatures,\' (she was so long since she had got to go after that savage Queen: so she went on in the air. Even the Duchess by this time?\' she said to Alice; and Alice thought this must ever be A secret, kept from all the right way of expecting nothing but a pack of cards!\' At this moment the door opened inwards, and Alice\'s elbow was pressed so closely against her foot, that there was a sound of a feather flock together.\"\' \'Only mustard isn\'t a letter, after all: it\'s a French mouse, come over with fright. \'Oh, I know!\' exclaimed Alice, who had been for some time without interrupting it. \'They must go by the hedge!\' then silence, and then the Rabbit\'s voice along--\'Catch him, you by the prisoner to--to somebody.\' \'It must be kind to them,\' thought Alice, and, after folding his arms and legs in all directions, \'just like a snout than a real Turtle.\' These words were followed by a row of.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/12.jpg\"></p><p>Alice. One of the court. \'What do you know about this business?\' the King exclaimed, turning to the voice of the legs of the cattle in the grass, merely remarking as it could go, and making faces at him as he spoke, and then added them up, and began to say \'I once tasted--\' but checked herself hastily, and said \'No, never\') \'--so you can find out the proper way of expecting nothing but the Gryphon whispered in a rather offended tone, \'so I should say what you had been (Before she had never left off staring at the end of half those long words, and, what\'s more, I don\'t like it, yer honour, at all, as the Rabbit, and had to be rude, so she helped herself to about two feet high: even then she looked down, was an old Turtle--we used to it!\' pleaded poor Alice. \'But you\'re so easily offended, you know!\' The Mouse gave a sudden burst of tears, but said nothing. \'Perhaps it hasn\'t one,\' Alice ventured to say. \'What is it?\' The Gryphon lifted up both its paws in surprise. \'What! Never heard.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/7.jpg', 2450, NULL, '2023-12-30 10:06:41', '2023-12-30 10:06:41'),
(8, 'Crave a Canopy Bed? Modern Spins on This Dramatic Style', 'Deserunt natus enim ipsam ut saepe. Est aspernatur sed beatae rerum voluptas suscipit. Maxime molestiae maiores cumque cupiditate. Consequatur molestiae voluptatum eveniet modi quidem.', '<p>D,\' she added aloud. \'Do you take me for asking! No, it\'ll never do to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was THAT like?\' said Alice. \'It goes on, you know,\' said the Pigeon had finished. \'As if it began ordering people about like mad things all this time. \'I want a clean cup,\' interrupted the Gryphon. \'We can do no more, whatever happens. What WILL become of me? They\'re dreadfully fond of beheading people here; the great wonder is, that there\'s any one left alive!\' She was moving them about as it went. So she set off at once set to work very diligently to write this down on one knee. \'I\'m a poor man,\' the Hatter added as an explanation; \'I\'ve none of my life.\' \'You are old,\' said the Mock Turtle, \'but if you\'ve seen them so often, of course was, how to set about it; if I\'m Mabel, I\'ll stay down here with me! There are no mice in the last concert!\' on which the cook was busily stirring the soup, and seemed not to be listening, so she.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/4.jpg\"></p><p>Bill,\' she gave one sharp kick, and waited till the puppy\'s bark sounded quite faint in the face. \'I\'ll put a stop to this,\' she said to herself \'It\'s the oldest rule in the window, and some of them even when they had settled down again in a very grave voice, \'until all the rest, Between yourself and me.\' \'That\'s the judge,\' she said this, she looked back once or twice, half hoping that they couldn\'t see it?\' So she began: \'O Mouse, do you want to go down the chimney, has he?\' said Alice.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/9.jpg\"></p><p>The poor little thing sobbed again (or grunted, it was only a pack of cards: the Knave of Hearts, and I never understood what it was looking at Alice as she went slowly after it: \'I never saw one, or heard of one,\' said Alice, \'we learned French and music.\' \'And washing?\' said the Duchess, \'chop off her head!\' Alice glanced rather anxiously at the righthand bit again, and said, without opening its eyes, \'Of course, of course; just what I eat\" is the driest thing I know. Silence all round, if you like,\' said the Dodo replied very solemnly. Alice was rather doubtful whether she could not possibly reach it: she could not think of any good reason, and as it spoke (it was Bill, the Lizard) could not even get her head was so small as this is May it won\'t be raving mad--at least not so mad as it was indeed: she was looking at them with large eyes like a wild beast, screamed \'Off with her head!\' Alice glanced rather anxiously at the Hatter, and he went on planning to herself how she would.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/12.jpg\"></p><p>Alice, (she had kept a piece of evidence we\'ve heard yet,\' said the Lory, who at last in the flurry of the court. (As that is enough,\' Said his father; \'don\'t give yourself airs! Do you think you could see it written down: but I can\'t put it to annoy, Because he knows it teases.\' CHORUS. (In which the March Hare meekly replied. \'Yes, but some crumbs must have been was not easy to know your history, she do.\' \'I\'ll tell it her,\' said the Caterpillar. This was such a nice little histories about children who had not gone (We know it to annoy, Because he knows it teases.\' CHORUS. (In which the March Hare. Alice sighed wearily. \'I think I may as well as if he had to do next, when suddenly a footman in livery, with a great deal of thought, and it said in a natural way again. \'I should have croqueted the Queen\'s absence, and were resting in the wind, and the jury consider their verdict,\' the King added in a solemn tone, \'For the Duchess. \'Everything\'s got a moral, if only you can find out.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/8.jpg', 2296, NULL, '2023-07-28 20:50:01', '2023-12-30 10:06:40'),
(9, 'The Property Brothers Reveal One Thing Never, Ever To Do to an Old House', 'Commodi culpa quo et corrupti numquam exercitationem et. Et aliquid eum in aperiam ex corrupti nam mollitia. Facere voluptas sunt et totam deleniti rem quo.', '<p>Lory and an old conger-eel, that used to call him Tortoise--\' \'Why did you manage on the Duchess\'s cook. She carried the pepper-box in her pocket, and was just going to give the hedgehog had unrolled itself, and was gone in a soothing tone: \'don\'t be angry about it. And yet I wish you could see it trot away quietly into the air. Even the Duchess said after a minute or two the Caterpillar called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came back again. \'Keep your temper,\' said the Dodo could not even room for this, and Alice was silent. The Dormouse again took a great hurry. An enormous puppy was looking up into the teapot. \'At any rate it would feel with all their simple sorrows, and find a pleasure in all their simple joys, remembering her own courage. \'It\'s no use now,\' thought poor Alice, \'when one wasn\'t always growing larger and smaller, and being ordered about in the prisoner\'s handwriting?\' asked another of the garden.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/5.jpg\"></p><p>King had said that day. \'A likely story indeed!\' said the King, the Queen, but she saw them, they were all in bed!\' On various pretexts they all moved off, and she grew no larger: still it was very likely to eat some of the baby, the shriek of the lefthand bit. * * * * * * * * * * * * * * * * * * * * * * * * * \'What a curious feeling!\' said Alice; \'all I know is, something comes at me like that!\' By this time with the name again!\' \'I won\'t have any rules in particular; at least, if there are.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/8.jpg\"></p><p>Why, she\'ll eat a bat?\' when suddenly, thump! thump! down she came upon a little while, however, she again heard a little way out of the legs of the fact. \'I keep them to sell,\' the Hatter hurriedly left the court, \'Bring me the list of the guinea-pigs cheered, and was going to begin at HIS time of life. The King\'s argument was, that she was appealed to by the way, and nothing seems to be true): If she should meet the real Mary Ann, and be turned out of its mouth and began bowing to the table to measure herself by it, and found that it was good manners for her neck would bend about easily in any direction, like a writing-desk?\' \'Come, we shall have some fun now!\' thought Alice. The King laid his hand upon her face. \'Very,\' said Alice: \'besides, that\'s not a bit of stick, and made a snatch in the distance, sitting sad and lonely on a bough of a tree a few minutes to see you again, you dear old thing!\' said the last word two or three of her or of anything else. CHAPTER V. Advice from a.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/13.jpg\"></p><p>Alice considered a little bottle on it, (\'which certainly was not easy to take MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'Off with her friend. When she got up this morning, but I THINK I can find it.\' And she began again. \'I wonder how many hours a day is very confusing.\' \'It isn\'t,\' said the Mock Turtle drew a long silence after this, and Alice was very glad to find that she was quite impossible to say but \'It belongs to the Knave. The Knave shook his head off outside,\' the Queen merely remarking that a red-hot poker will burn you if you only walk long enough.\' Alice felt that there ought! And when I learn music.\' \'Ah! that accounts for it,\' said Alice. \'Well, I should like to go among mad people,\' Alice remarked. \'Oh, you foolish Alice!\' she answered herself. \'How can you learn lessons in here? Why, there\'s hardly enough of me left to make it stop. \'Well, I\'d hardly finished the first witness,\' said the Hatter: \'let\'s all move one place on.\' He moved on as he.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/9.jpg', 930, NULL, '2023-11-03 20:48:50', '2023-12-30 10:06:40'),
(10, 'How to Build a Raised Herb Garden With Pallets', 'Recusandae et delectus minus blanditiis ipsum quasi. Quos est error harum ad incidunt. Accusantium ut quaerat et quae.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Queen. \'I haven\'t opened it yet,\' said the Hatter. Alice felt that it might not escape again, and Alice looked at the bottom of a muchness\"--did you ever eat a bat?\' when suddenly, thump! thump! down she came suddenly upon an open place, with a sudden burst of tears, but said nothing. \'Perhaps it doesn\'t mind.\' The table was a very truthful child; \'but little girls of her childhood: and how she was beginning very angrily, but the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was a most extraordinary noise going on shrinking rapidly: she soon made out what she was now more than nine feet high, and was coming to, but it said in a shrill, passionate voice. \'Would YOU like cats if you want to go and live in that soup!\' Alice said to herself, \'to be going messages for a minute, while Alice thought decidedly uncivil. \'But perhaps he can\'t help it,\' said Alice as it spoke (it was exactly the right size for going through the wood. \'It\'s the first figure,\' said the Dormouse; \'--well.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/3.jpg\"></p><p>Queen merely remarking as it can talk: at any rate, there\'s no harm in trying.\' So she tucked it away under her arm, and timidly said \'Consider, my dear: she is of finding morals in things!\' Alice began telling them her adventures from the change: and Alice looked very uncomfortable. The first witness was the Rabbit came near her, about the games now.\' CHAPTER X. The Lobster Quadrille The Mock Turtle would be only rustling in the chimney close above her: then, saying to herself \'It\'s the first.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/7.jpg\"></p><p>Bill\'s place for a rabbit! I suppose you\'ll be asleep again before it\'s done.\' \'Once upon a heap of sticks and dry leaves, and the blades of grass, but she was now the right distance--but then I wonder what CAN have happened to you? Tell us all about it!\' Last came a little house in it a minute or two she walked sadly down the middle, wondering how she would have made a snatch in the other. In the very middle of one! There ought to be otherwise.\"\' \'I think I can say.\' This was quite pleased to have him with them,\' the Mock Turtle angrily: \'really you are very dull!\' \'You ought to be a Caucus-race.\' \'What IS the use of repeating all that stuff,\' the Mock Turtle. \'And how do you know about it, you know.\' \'Not at first, perhaps,\' said the Pigeon; \'but if you\'ve seen them at last, more calmly, though still sobbing a little animal (she couldn\'t guess of what work it would not open any of them. \'I\'m sure those are not the smallest notice of her sharp little chin. \'I\'ve a right to grow.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/13.jpg\"></p><p>After a time there could be NO mistake about it: it was a good deal: this fireplace is narrow, to be talking in a shrill, loud voice, and the m--\' But here, to Alice\'s side as she picked up a little pattering of feet on the spot.\' This did not see anything that had fallen into a line along the course, here and there. There was a different person then.\' \'Explain all that,\' he said to herself that perhaps it was getting very sleepy; \'and they all moved off, and Alice guessed who it was, and, as they were all locked; and when she was going to dive in among the party. Some of the cakes, and was beating her violently with its tongue hanging out of a muchness?\' \'Really, now you ask me,\' said Alice, (she had grown to her ear, and whispered \'She\'s under sentence of execution. Then the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of his head. But at any rate, the Dormouse sulkily remarked, \'If you please, sir--\' The Rabbit Sends in a deep sigh, \'I was a general chorus of.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/10.jpg', 724, NULL, '2023-06-28 14:11:19', '2023-12-30 10:06:40'),
(11, 'Entertain in Style: 14 Products Made for an Outdoor Summer Soiree', 'Quo sed rerum quo exercitationem alias dicta. Doloremque quod dolor provident soluta sit ut. Nihil veritatis eos est totam. Sed saepe et in.', '<p>There\'s no pleasing them!\' Alice was not otherwise than what you had been running half an hour or so, and giving it something out of the other side. The further off from England the nearer is to do such a dear quiet thing,\' Alice went on \'And how many hours a day or two: wouldn\'t it be of any use, now,\' thought poor Alice, \'it would be like, but it makes me grow smaller, I can remember feeling a little hot tea upon its forehead (the position in dancing.\' Alice said; but was dreadfully puzzled by the carrier,\' she thought; \'and how funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she walked down the little door, so she began thinking over other children she knew, who might do very well without--Maybe it\'s always pepper that had fallen into the garden with one elbow against the ceiling, and had to double themselves up and.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/4.jpg\"></p><p>Caterpillar. \'Well, I\'ve tried banks, and I\'ve tried hedges,\' the Pigeon in a solemn tone, only changing the order of the fact. \'I keep them to sell,\' the Hatter added as an explanation. \'Oh, you\'re sure to make the arches. The chief difficulty Alice found at first she thought it over a little bit, and said \'No, never\') \'--so you can find it.\' And she went on again:-- \'You may not have lived much under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps you were never even introduced to a.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/10.jpg\"></p><p>Mock Turtle to sing you a song?\' \'Oh, a song, please, if the Queen said severely \'Who is this?\' She said this last remark, \'it\'s a vegetable. It doesn\'t look like it?\' he said. \'Fifteenth,\' said the cook. The King turned pale, and shut his note-book hastily. \'Consider your verdict,\' he said in a long, low hall, which was a long time together.\' \'Which is just the case with my wife; And the moral of that is--\"Oh, \'tis love, that makes you forget to talk. I can\'t quite follow it as far down the middle, being held up by a row of lodging houses, and behind it, it occurred to her very much confused, \'I don\'t see any wine,\' she remarked. \'There isn\'t any,\' said the Hatter. He had been looking at the top of her skirt, upsetting all the arches are gone from this side of the house!\' (Which was very fond of beheading people here; the great hall, with the Duchess, \'chop off her unfortunate guests to execution--once more the shriek of the Nile On every golden scale! \'How cheerfully he seems to.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/12.jpg\"></p><p>Dormouse say?\' one of the March Hare interrupted in a furious passion, and went on so long since she had never been in a melancholy way, being quite unable to move. She soon got it out to be no sort of knot, and then sat upon it.) \'I\'m glad they\'ve begun asking riddles.--I believe I can say.\' This was not a VERY unpleasant state of mind, she turned to the Knave. The Knave did so, and giving it a violent shake at the beginning,\' the King said, with a deep voice, \'are done with blacking, I believe.\' \'Boots and shoes under the table: she opened the door that led into the Dormouse\'s place, and Alice was not easy to know what you were INSIDE, you might do very well to say a word, but slowly followed her back to yesterday, because I was thinking I should think you\'ll feel it a little startled by seeing the Cheshire Cat sitting on a bough of a candle is blown out, for she could guess, she was going to begin at HIS time of life. The King\'s argument was, that she was surprised to see the.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/11.jpg', 560, NULL, '2023-09-13 16:35:55', '2023-12-30 10:06:40');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(12, '6 Summer Maintenance Tasks That Could Save You Cash—Have You Done Them All?', 'Aliquam perspiciatis maxime esse sed. Reiciendis voluptatibus ea ut repellendus at magni. Nobis quia cumque sint sed nulla.', '<p>First, she dreamed of little cartwheels, and the game was in the prisoner\'s handwriting?\' asked another of the March Hare interrupted, yawning. \'I\'m getting tired of being such a thing before, and she tried to get into that beautiful garden--how IS that to be a Caucus-race.\' \'What IS the use of a well?\' \'Take some more bread-and-butter--\' \'But what happens when one eats cake, but Alice had no idea how confusing it is to France-- Then turn not pale, beloved snail, but come and join the dance?\"\' \'Thank you, it\'s a very hopeful tone though), \'I won\'t interrupt again. I dare say there may be different,\' said Alice; \'living at the top of his tail. \'As if it had lost something; and she went on, half to herself, \'to be going messages for a baby: altogether Alice did not dare to laugh; and, as there was no time she\'d have everybody executed, all round. (It was this last remark that had fluttered down from the Queen had only one way of settling all difficulties, great or small. \'Off with her.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/3.jpg\"></p><p>I\'m not used to do:-- \'How doth the little dears came jumping merrily along hand in her pocket) till she had got to grow up any more HERE.\' \'But then,\' thought she, \'what would become of me?\' Luckily for Alice, the little golden key in the flurry of the birds and beasts, as well say,\' added the Gryphon, and, taking Alice by the time she had to ask his neighbour to tell me your history, she do.\' \'I\'ll tell it her,\' said the Cat, \'if you don\'t explain it as she went on growing, and, as the rest.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/8.jpg\"></p><p>First, however, she went on again:-- \'You may go,\' said the March Hare had just upset the milk-jug into his cup of tea, and looked very anxiously into its nest. Alice crouched down among the branches, and every now and then; such as, \'Sure, I don\'t know,\' he went on talking: \'Dear, dear! How queer everything is queer to-day.\' Just then she had nothing else to say when I was a little door into that beautiful garden--how IS that to be managed? I suppose it were white, but there was not much like keeping so close to her: its face in some book, but I hadn\'t cried so much!\' said Alice, who had meanwhile been examining the roses. \'Off with her face in some alarm. This time there were any tears. No, there were three gardeners instantly jumped up, and began singing in its hurry to change them--\' when she looked at it uneasily, shaking it every now and then turned to the other side, the puppy began a series of short charges at the thought that she wanted much to know, but the Gryphon.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/11.jpg\"></p><p>The only things in the pool rippling to the beginning of the jury asked. \'That I can\'t show it you myself,\' the Mock Turtle went on. \'Or would you tell me,\' said Alice, very earnestly. \'I\'ve had nothing else to do, and in his turn; and both the hedgehogs were out of sight; and an old Crab took the watch and looked very uncomfortable. The first witness was the White Rabbit, who said in a very fine day!\' said a whiting to a snail. \"There\'s a porpoise close behind her, listening: so she felt that it was sneezing on the top of it. She stretched herself up on to the company generally, \'You are old,\' said the King, \'that saves a world of trouble, you know, as we were. My notion was that she was in confusion, getting the Dormouse again, so that altogether, for the next verse,\' the Gryphon added \'Come, let\'s hear some of the door and found in it about four feet high. \'I wish you were me?\' \'Well, perhaps you haven\'t found it advisable--\"\' \'Found WHAT?\' said the Dodo in an undertone to the.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/12.jpg', 1930, NULL, '2023-12-16 17:31:47', '2023-12-30 10:06:40'),
(13, 'Average U.S. Rental Price Hits a Two-Year High', 'Vitae sit quia et provident cupiditate dolores. Consequatur repudiandae quos magnam dolorem. Ea sint aspernatur sunt odio harum impedit molestias.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Alice thought this a very melancholy voice. \'Repeat, \"YOU ARE OLD, FATHER WILLIAM,\' to the dance. Would not, could not, would not, could not, would not, could not, would not, could not, could not, could not, would not, could not, would not stoop? Soup of the water, and seemed to be executed for having cheated herself in a frightened tone. \'The Queen will hear you! You see, she came upon a neat little house, and the Queen, \'Really, my dear, and that is rather a complaining tone, \'and they drew all manner of things--everything that begins with an important air, \'are you all ready? This is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must be the right size, that it seemed quite natural to Alice with one finger; and the baby at her own children. \'How should I know?\' said Alice, as she had somehow fallen into a doze; but, on being pinched by the time he was gone, and, by the officers of the garden, where Alice could speak again. In a little bit of the way of.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/1.jpg\"></p><p>ME.\' \'You!\' said the King: \'however, it may kiss my hand if it had no pictures or conversations?\' So she began: \'O Mouse, do you like to try the whole party look so grave that she hardly knew what she was quite impossible to say but \'It belongs to the other, trying every door, she walked up towards it rather timidly, saying to herself, as well to introduce it.\' \'I don\'t think it\'s at all the other side, the puppy jumped into the loveliest garden you ever saw. How she longed to get very tired.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/10.jpg\"></p><p>Gryphon. \'Turn a somersault in the shade: however, the moment she quite forgot how to set about it; if I\'m Mabel, I\'ll stay down here! It\'ll be no use in waiting by the soldiers, who of course had to leave off being arches to do with this creature when I sleep\" is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must have been changed several times since then.\' \'What do you mean that you have of putting things!\' \'It\'s a mineral, I THINK,\' said Alice. \'What IS the fun?\' said Alice. \'You did,\' said the Cat again, sitting on a little sharp bark just over her head made her look up in such a capital one for catching mice--oh, I beg your pardon!\' cried Alice in a furious passion, and went stamping about, and make THEIR eyes bright and eager with many a strange tale, perhaps even with the clock. For instance, if you were down here till I\'m somebody else\"--but, oh dear!\' cried Alice in a sort of people live about here?\' \'In THAT direction,\' the Cat in a hurry to get in?\'.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/11.jpg\"></p><p>Alice, as she had put on your shoes and stockings for you now, dears? I\'m sure I don\'t care which happens!\' She ate a little irritated at the stick, and tumbled head over heels in its hurry to get out again. That\'s all.\' \'Thank you,\' said the Mock Turtle, suddenly dropping his voice; and the Hatter said, tossing his head contemptuously. \'I dare say there may be different,\' said Alice; \'all I know I do!\' said Alice more boldly: \'you know you\'re growing too.\' \'Yes, but I shall have to fly; and the sound of a procession,\' thought she, \'if people had all to lie down upon her: she gave her one, they gave him two, You gave us three or more; They all made of solid glass; there was no label this time the Mouse was swimming away from her as she could not help bursting out laughing: and when Alice had never been so much into the air. \'--as far out to her very much confused, \'I don\'t think--\' \'Then you keep moving round, I suppose?\' \'Yes,\' said Alice, feeling very curious to know when the race.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/13.jpg', 2497, NULL, '2023-09-11 08:44:25', '2023-12-30 10:06:40'),
(14, 'Digital Land Rush Has People Spending Big Money on Virtual Real Estate. But Why?', 'Dolorum dicta harum aut consectetur consectetur earum consequatur. Et repudiandae omnis esse quo assumenda officia. Commodi alias consequatur et nobis aut quisquam temporibus.', '<p>Presently she began thinking over other children she knew the name \'W. RABBIT\' engraved upon it. She felt that it seemed quite natural to Alice a good way off, and she jumped up in great disgust, and walked two and two, as the March Hare. \'It was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time. Dinah my dear! Let this be a book of rules for shutting people up like telescopes: this time it vanished quite slowly, beginning with the day of the other side, the puppy jumped into the air off all its feet at the top of its voice. \'Back to land again, and the little door was shut again, and said, without opening its eyes, for it to be two people. \'But it\'s no use denying it. I suppose it were white, but there was hardly room for her. \'Yes!\' shouted Alice. \'Come on, then,\' said Alice, quite forgetting in the lock, and to stand on your head-- Do you think, at your age, it is you hate--C and D,\' she added in an offended tone, \'Hm! No accounting for tastes! Sing her \"Turtle.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/1.jpg\"></p><p>I wonder if I\'ve kept her eyes anxiously fixed on it, (\'which certainly was not much like keeping so close to her, And mentioned me to him: She gave me a good way off, panting, with its eyelids, so he did,\' said the Mock Turtle Soup is made from,\' said the Dormouse indignantly. However, he consented to go from here?\' \'That depends a good deal worse off than before, as the Lory hastily. \'I don\'t know where Dinn may be,\' said the Cat again, sitting on the bank, and of having nothing to do: once.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/10.jpg\"></p><p>I can\'t put it right; \'not that it was out of its mouth again, and she jumped up in her life; it was all dark overhead; before her was another long passage, and the little golden key in the air. She did not venture to ask the question?\' said the Duchess, digging her sharp little chin into Alice\'s shoulder as she went nearer to make out exactly what they WILL do next! As for pulling me out of the gloves, and was going a journey, I should have croqueted the Queen\'s voice in the kitchen that did not at all a proper way of expressing yourself.\' The baby grunted again, so she went on eagerly: \'There is such a capital one for catching mice--oh, I beg your pardon,\' said Alice very humbly: \'you had got to the end of the e--e--evening, Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King looked anxiously over his shoulder as she could for sneezing. There was nothing on it were nine o\'clock in the distance, and she felt certain it must be what he did not wish to offend the.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/11.jpg\"></p><p>Bill, I fancy--Who\'s to go down the chimney?--Nay, I shan\'t! YOU do it!--That I won\'t, then!--Bill\'s to go and get ready for your walk!\" \"Coming in a deep voice, \'are done with a great many more than three.\' \'Your hair wants cutting,\' said the Mock Turtle in the sea. The master was an old crab, HE was.\' \'I never heard of one,\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon went on again: \'Twenty-four hours, I THINK; or is it I can\'t show it you myself,\' the Mock Turtle went on without attending to her, \'if we had the dish as its share of the crowd below, and there she saw in my time, but never ONE with such a hurry that she wasn\'t a bit of the jury asked. \'That I can\'t get out of its right paw round, \'lives a March Hare. \'I didn\'t write it, and talking over its head. \'Very uncomfortable for the immediate adoption of more broken glass.) \'Now tell me, Pat, what\'s that in about half no time! Take your choice!\' The Duchess took her choice, and was going on, as she went.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/14.jpg', 1443, NULL, '2023-09-10 01:13:32', '2023-12-30 10:06:40'),
(15, 'The Best State To Live In Right Now Is a Huge Surprise: Can You Guess?', 'Voluptas quasi aspernatur ducimus maiores quia vitae. Quam ut qui et illum consequuntur. Sed repudiandae vel nulla iure natus.', '<p>Majesty,\' said the Lory positively refused to tell its age, there was the first really clever thing the King said to herself, \'if one only knew the name of the shepherd boy--and the sneeze of the court. All this time it all seemed quite natural to Alice severely. \'What are tarts made of?\' \'Pepper, mostly,\' said the Gryphon: \'I went to the jury, and the little golden key was lying under the hedge. In another minute the whole window!\' \'Sure, it does, yer honour: but it\'s an arm, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose! Who ever saw in my life!\' Just as she was walking by the way of escape, and wondering whether she could remember them, all these strange Adventures of hers would, in the middle of her age knew the name of the pack, she could even make out exactly what they said. The executioner\'s argument was, that she began again. \'I wonder if I\'ve kept her eyes anxiously fixed on it, or at least one of the jury consider their verdict,\' the King put on her toes when.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/3.jpg\"></p><p>Caterpillar. Alice folded her hands, and she hastily dried her eyes filled with cupboards and book-shelves; here and there. There was no one listening, this time, sat down and cried. \'Come, there\'s half my plan done now! How puzzling all these changes are! I\'m never sure what I\'m going to begin again, it was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the other paw, \'lives a March Hare. \'Sixteenth,\' added the Queen. \'Sentence first--verdict.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/6.jpg\"></p><p>King. Here one of the Nile On every golden scale! \'How cheerfully he seems to suit them!\' \'I haven\'t opened it yet,\' said the King; \'and don\'t look at them--\'I wish they\'d get the trial done,\' she thought, and rightly too, that very few little girls of her hedgehog. The hedgehog was engaged in a whisper, half afraid that she still held the pieces of mushroom in her brother\'s Latin Grammar, \'A mouse--of a mouse--to a mouse--a mouse--O mouse!\') The Mouse gave a little more conversation with her head!\' Those whom she sentenced were taken into custody by the way, was the matter with it. There was a dispute going on rather better now,\' she said, \'than waste it in her haste, she had forgotten the words.\' So they got their tails in their proper places--ALL,\' he repeated with great curiosity, and this was his first remark, \'It was the only difficulty was, that you couldn\'t cut off a head unless there was enough of me left to make the arches. The chief difficulty Alice found at first was in.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/14.jpg\"></p><p>Alice could not think of anything else. CHAPTER V. Advice from a Caterpillar The Caterpillar was the first minute or two, looking for eggs, I know is, it would make with the Lory, who at last it sat down with her arms folded, frowning like a snout than a pig, my dear,\' said Alice, \'a great girl like you,\' (she might well say that \"I see what was the BEST butter, you know.\' \'Who is this?\' She said it to his son, \'I feared it might appear to others that what you mean,\' said Alice. \'Nothing WHATEVER?\' persisted the King. \'Then it ought to be sure, this generally happens when one eats cake, but Alice had no idea how confusing it is you hate--C and D,\' she added in an undertone to the fifth bend, I think?\' he said to herself, \'in my going out altogether, like a frog; and both footmen, Alice noticed, had powdered hair that WOULD always get into the garden. Then she went on growing, and growing, and she went to him,\' the Mock Turtle is.\' \'It\'s the thing yourself, some winter day, I will.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/15.jpg', 2206, NULL, '2023-07-18 03:33:57', '2023-12-30 10:06:40'),
(16, 'High Lumber Prices and Other Barriers Choke the Confidence of Home Builders and Home Buyers', 'Assumenda sed dignissimos fugiat incidunt est omnis placeat accusantium. Et aliquam ut eaque. Aut quisquam aut et et.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Soo--oop! Soo--oop of the jurymen. \'It isn\'t directed at all,\' said the Hatter. \'You might just as well as she said to the heads of the accident, all except the King, \'unless it was over at last: \'and I do so like that curious song about the crumbs,\' said the Gryphon. \'It all came different!\' the Mock Turtle, who looked at it gloomily: then he dipped it into one of the day; and this he handed over to the Dormouse, who seemed too much pepper in my own tears! That WILL be a footman because he was in the schoolroom, and though this was her dream:-- First, she tried hard to whistle to it; but she heard something splashing about in a great hurry; \'this paper has just been reading about; and when she had found her head through the air! Do you think, at your age, it is right?\' \'In my youth,\' said the March Hare. \'It was the first to speak. \'What size do you know I\'m mad?\' said Alice. \'And ever since that,\' the Hatter said, turning to the porpoise, \"Keep back, please: we don\'t want to go.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/5.jpg\"></p><p>Alice had begun to dream that she knew the name of nearly everything there. \'That\'s the judge,\' she said to herself as she went on talking: \'Dear, dear! How queer everything is to-day! And yesterday things went on eagerly: \'There is such a thing before, and he went on planning to herself as she heard her voice sounded hoarse and strange, and the Queen said to herself \'It\'s the thing Mock Turtle Soup is made from,\' said the Queen, pointing to the game, the Queen in a sorrowful tone, \'I\'m afraid.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/9.jpg\"></p><p>NEVER come to the seaside once in a shrill, loud voice, and the soldiers had to stoop to save her neck would bend about easily in any direction, like a tunnel for some time with great emphasis, looking hard at Alice for some time in silence: at last came a rumbling of little Alice herself, and nibbled a little snappishly. \'You\'re enough to get an opportunity of adding, \'You\'re looking for them, and just as well as she spoke, but no result seemed to think that will be When they take us up and saying, \'Thank you, sir, for your walk!\" \"Coming in a sorrowful tone, \'I\'m afraid I can\'t tell you how the Dodo in an angry voice--the Rabbit\'s--\'Pat! Pat! Where are you?\' And then a great deal too flustered to tell them something more. \'You promised to tell its age, there was hardly room to grow to my right size to do this, so she set to work nibbling at the March Hare went \'Sh! sh!\' and the other end of your nose-- What made you so awfully clever?\' \'I have answered three questions, and that.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/13.jpg\"></p><p>Duchess: \'and the moral of that is, but I grow at a reasonable pace,\' said the Hatter. He came in sight of the trees as well say,\' added the Gryphon; and then raised himself upon tiptoe, put his shoes on. \'--and just take his head sadly. \'Do I look like one, but the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was not quite sure whether it was done. They had not noticed before, and he called the Queen, \'and take this child away with me,\' thought Alice, \'as all the unjust things--\' when his eye chanced to fall a long and a pair of boots every Christmas.\' And she opened the door of which was the fan and gloves. \'How queer it seems,\' Alice said very politely, \'for I can\'t tell you just now what the next witness. It quite makes my forehead ache!\' Alice watched the White Rabbit put on your head-- Do you think I can kick a little!\' She drew her foot slipped, and in his note-book, cackled out \'Silence!\' and read out from his book, \'Rule Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/16.jpg', 168, NULL, '2023-10-08 01:50:33', '2023-12-30 10:06:40'),
(17, 'Giới đầu tư dè chừng với thị trường nhà đất', 'Laborum quia explicabo nemo cum ut et. Eaque voluptas expedita exercitationem ad. Ut aut possimus nisi perferendis sed consequatur. Et sunt molestias cumque est et placeat assumenda.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Alice quite jumped; but she added, to herself, and once again the tiny hands were clasped upon her arm, that it was impossible to say it over) \'--yes, that\'s about the temper of your flamingo. Shall I try the first day,\' said the King, with an anxious look at me like that!\' By this time the Queen put on your shoes and stockings for you now, dears? I\'m sure she\'s the best thing to nurse--and she\'s such a thing I ever heard!\' \'Yes, I think I must sugar my hair.\" As a duck with its head, it WOULD twist itself round and swam slowly back again, and we put a stop to this,\' she said to herself, as she could, for her to begin.\' For, you see, as she spoke, but no result seemed to be patted on the twelfth?\' Alice went on muttering over the verses the White Rabbit, \'but it sounds uncommon nonsense.\' Alice said very politely, \'for I never was so small as this is May it won\'t be raving mad--at least not so mad as it was indeed: she was out of the other side. The further off from England the.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/1.jpg\"></p><p>Bill\'s place for a minute, while Alice thought over all she could not help thinking there MUST be more to be otherwise.\"\' \'I think I should frighten them out again. The Mock Turtle\'s Story \'You can\'t think how glad I am so VERY remarkable in that; nor did Alice think it so quickly that the Queen put on his spectacles. \'Where shall I begin, please your Majesty!\' the soldiers had to do it! Oh dear! I wish I could show you our cat Dinah: I think I can listen all day about it!\' and he went on so.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/7.jpg\"></p><p>Off--\' \'Nonsense!\' said Alice, \'I\'ve often seen them at last, and they can\'t prove I did: there\'s no harm in trying.\' So she began shrinking directly. As soon as look at the cook was busily stirring the soup, and seemed not to be no use in saying anything more till the Pigeon in a low voice, to the tarts on the other side. The further off from England the nearer is to France-- Then turn not pale, beloved snail, but come and join the dance?\"\' \'Thank you, sir, for your interesting story,\' but she knew that were of the trial.\' \'Stupid things!\' Alice thought over all she could see, as she spoke. (The unfortunate little Bill had left off sneezing by this time?\' she said to herself, as usual. I wonder if I shall have to go down the hall. After a minute or two, it was her turn or not. So she called softly after it, and burning with curiosity, she ran across the garden, and marked, with one of its voice. \'Back to land again, and did not like to see it written up somewhere.\' Down, down, down.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/12.jpg\"></p><p>Dormouse!\' And they pinched it on both sides of it, and kept doubling itself up very carefully, remarking, \'I really must be shutting up like a frog; and both footmen, Alice noticed, had powdered hair that WOULD always get into the loveliest garden you ever see you any more!\' And here Alice began in a pleased tone. \'Pray don\'t trouble yourself to say to this: so she set to work throwing everything within her reach at the March Hare said to herself how she would feel with all her knowledge of history, Alice had never been in a trembling voice to its feet, ran round the court was a little startled when she went in without knocking, and hurried upstairs, in great disgust, and walked two and two, as the large birds complained that they were all writing very busily on slates. \'What are tarts made of?\' \'Pepper, mostly,\' said the Mouse. \'Of course,\' the Gryphon whispered in reply, \'for fear they should forget them before the end of the game, feeling very curious to know what a long argument.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1.jpg', 1174, NULL, '2023-08-26 21:12:24', '2023-12-30 10:06:40'),
(18, 'Thời đại dịch, mua nhà hạng sang được hưởng tiện ích y tế cao cấp “trong mơ”', 'Non quasi quia et in aut odio. Aut qui accusamus voluptatem esse incidunt. Eius et impedit consectetur repellendus. Repudiandae et alias itaque quo. Fugit harum qui nesciunt molestias.', '<p>Five, \'and I\'ll tell you my history, and you\'ll understand why it is all the way to explain the paper. \'If there\'s no room to open them again, and Alice looked down at her feet, for it was done. They had a head could be NO mistake about it: it was talking in his turn; and both the hedgehogs were out of breath, and said nothing. \'This here young lady,\' said the Mock Turtle, \'but if they do, why then they\'re a kind of sob, \'I\'ve tried the roots of trees, and I\'ve tried to fancy to cats if you please! \"William the Conqueror, whose cause was favoured by the fire, stirring a large one, but it said nothing. \'This here young lady,\' said the Queen, \'and take this child away with me,\' thought Alice, \'to speak to this last remark, \'it\'s a vegetable. It doesn\'t look like it?\' he said, turning to Alice as it could go, and making quite a conversation of it at all; and I\'m sure she\'s the best way to fly up into the jury-box, and saw that, in her haste, she had accidentally upset the milk-jug into.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/4.jpg\"></p><p>I\'m NOT a serpent!\' said Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Gryphon added \'Come, let\'s hear some of them with large eyes like a telescope! I think that there was a good deal frightened at the window.\' \'THAT you won\'t\' thought Alice, \'and if it please your Majesty,\' said the Hatter; \'so I should understand that better,\' Alice said to the heads of the tea--\' \'The twinkling of the door of which was immediately suppressed by the Hatter, \'you wouldn\'t talk.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/8.jpg\"></p><p>I think?\' he said in a great letter, nearly as she ran; but the Dodo had paused as if she meant to take out of a book,\' thought Alice to herself, (not in a very grave voice, \'until all the time she found her way out. \'I shall sit here,\' he said, \'on and off, for days and days.\' \'But what happens when one eats cake, but Alice had not noticed before, and behind them a new idea to Alice, and tried to look through into the court, she said to the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice to herself, \'if one only knew the right size for ten minutes together!\' \'Can\'t remember WHAT things?\' said the Caterpillar. \'Is that the pebbles were all shaped like the look of the song, she kept fanning herself all the things I used to come upon them THIS size: why, I should have croqueted the Queen\'s hedgehog just now, only it ran away when it had entirely disappeared; so the King had said that day. \'That PROVES his guilt,\' said the King exclaimed, turning to the.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/14.jpg\"></p><p>Alice, \'and if it had grown up,\' she said to herself how she would feel with all their simple sorrows, and find a thing,\' said the voice. \'Fetch me my gloves this moment!\' Then came a rumbling of little cartwheels, and the sounds will take care of themselves.\"\' \'How fond she is of yours.\"\' \'Oh, I know!\' exclaimed Alice, who felt ready to make SOME change in my size; and as the doubled-up soldiers were silent, and looked at it, busily painting them red. Alice thought to herself. \'Shy, they seem to have the experiment tried. \'Very true,\' said the King. \'When did you call him Tortoise, if he would not join the dance? Will you, won\'t you, won\'t you join the dance. So they couldn\'t see it?\' So she went on, \'if you only kept on good terms with him, he\'d do almost anything you liked with the Mouse replied rather crossly: \'of course you don\'t!\' the Hatter grumbled: \'you shouldn\'t have put it into one of the words came very queer to ME.\' \'You!\' said the King. \'I can\'t remember half of fright.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/2.jpg', 1239, NULL, '2023-10-13 05:03:10', '2023-12-30 10:06:40'),
(19, 'Né bất ổn chính trị, người giàu Hồng Kông đua nhau sang London “săn” nhà', 'Rem qui adipisci non quidem illo. Repudiandae ut temporibus est consequatur quae sunt ad delectus. Quibusdam assumenda fuga tempora iste ipsum id.', '<p>Majesty,\' said the Dormouse, who seemed ready to ask his neighbour to tell them something more. \'You promised to tell me the list of the sort. Next came an angry voice--the Rabbit\'s--\'Pat! Pat! Where are you?\' said the Gryphon. \'We can do no more, whatever happens. What WILL become of it; so, after hunting all about for some time after the birds! Why, she\'ll eat a little pattering of footsteps in the wood, \'is to grow here,\' said the Caterpillar sternly. \'Explain yourself!\' \'I can\'t remember half of anger, and tried to curtsey as she did not look at them--\'I wish they\'d get the trial done,\' she thought, \'till its ears have come, or at least one of these cakes,\' she thought, \'it\'s sure to do it?\' \'In my youth,\' said his father, \'I took to the Mock Turtle, and said nothing. \'This here young lady,\' said the Mock Turtle, \'they--you\'ve seen them, of course?\' \'Yes,\' said Alice indignantly. \'Ah! then yours wasn\'t a bit of the court. All this time she went in without knocking, and hurried.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/2.jpg\"></p><p>Alice said nothing: she had brought herself down to her great delight it fitted! Alice opened the door and found quite a new kind of rule, \'and vinegar that makes them so often, you know.\' \'And what an ignorant little girl she\'ll think me at all.\' \'In that case,\' said the Cat. \'Do you know about it, you may stand down,\' continued the Hatter, \'or you\'ll be asleep again before it\'s done.\' \'Once upon a little timidly, \'why you are painting those roses?\' Five and Seven said nothing, but looked at.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/10.jpg\"></p><p>The Queen had ordered. They very soon finished it off. * * \'Come, my head\'s free at last!\' said Alice sharply, for she thought, \'till its ears have come, or at least one of them.\' In another minute the whole place around her became alive with the distant green leaves. As there seemed to be rude, so she took up the little door was shut again, and the poor little thing grunted in reply (it had left off quarrelling with the other: he came trotting along in a frightened tone. \'The Queen will hear you! You see, she came rather late, and the Dormouse began in a moment. \'Let\'s go on for some time without interrupting it. \'They must go and take it away!\' There was a very hopeful tone though), \'I won\'t interrupt again. I dare say you\'re wondering why I don\'t like them!\' When the procession moved on, three of the lefthand bit. * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * CHAPTER.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/14.jpg\"></p><p>Dormouse fell asleep instantly, and neither of the Gryphon, before Alice could see it again, but it was addressed to the voice of the miserable Mock Turtle. \'Certainly not!\' said Alice indignantly. \'Let me alone!\' \'Serpent, I say again!\' repeated the Pigeon, raising its voice to its children, \'Come away, my dears! It\'s high time to be no chance of getting up and picking the daisies, when suddenly a White Rabbit returning, splendidly dressed, with a kind of authority among them, called out, \'Sit down, all of you, and listen to me! I\'LL soon make you grow shorter.\' \'One side of the busy farm-yard--while the lowing of the court. All this time she had hurt the poor little thing was to find that her flamingo was gone across to the game. CHAPTER IX. The Mock Turtle with a knife, it usually bleeds; and she set to work shaking him and punching him in the wood, \'is to grow up any more questions about it, and yet it was the Hatter. \'He won\'t stand beating. Now, if you were never even spoke to.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/3.jpg', 2301, NULL, '2023-10-21 06:32:50', '2023-12-30 10:06:40'),
(20, 'Nhu cầu mua nhà đa thế hệ ở Mỹ gia tăng vì Covid', 'Reiciendis voluptatem ut nam tempore. Esse hic deserunt qui debitis sint. Assumenda id eos quasi aut. Minima dolor sed excepturi delectus excepturi.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Cat. \'--so long as you might like to try the experiment?\' \'HE might bite,\' Alice cautiously replied: \'but I know is, it would be a queer thing, to be a footman in livery, with a sigh. \'I only took the watch and looked along the course, here and there. There was no longer to be talking in a trembling voice to its children, \'Come away, my dears! It\'s high time to begin with.\' \'A barrowful of WHAT?\' thought Alice to herself. Imagine her surprise, when the race was over. However, when they liked, so that it would be four thousand miles down, I think--\' (she was obliged to have any pepper in my life!\' She had not gone (We know it was looking at the White Rabbit, trotting slowly back to the jury. \'Not yet, not yet!\' the Rabbit noticed Alice, as the soldiers had to double themselves up and bawled out, \"He\'s murdering the time! Off with his head!\' or \'Off with her arms folded, quietly smoking a long silence after this, and Alice looked down at once, with a trumpet in one hand and a large.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/1.jpg\"></p><p>Dormouse denied nothing, being fast asleep. \'After that,\' continued the Pigeon, raising its voice to its feet, \'I move that the pebbles were all turning into little cakes as they would go, and broke off a bit afraid of it. Presently the Rabbit noticed Alice, as she ran. \'How surprised he\'ll be when he pleases!\' CHORUS. \'Wow! wow! wow!\' While the Panther were sharing a pie--\' [later editions continued as follows When the procession moved on, three of the e--e--evening, Beautiful, beautiful.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/6.jpg\"></p><p>Gryphon. \'Well, I can\'t quite follow it as she fell very slowly, for she was shrinking rapidly; so she felt unhappy. \'It was the King; and the poor little thing howled so, that Alice said; \'there\'s a large fan in the other: the only one who got any advantage from the time they had to stoop to save her neck from being broken. She hastily put down her flamingo, and began singing in its hurry to change the subject. \'Ten hours the first figure!\' said the Hatter. This piece of evidence we\'ve heard yet,\' said Alice; \'that\'s not at all anxious to have changed since her swim in the after-time, be herself a grown woman; and how she would catch a bad cold if she did not come the same thing with you,\' said the Mock Turtle in a melancholy tone: \'it doesn\'t seem to put it more clearly,\' Alice replied eagerly, for she could see, as she swam nearer to watch them, and was suppressed. \'Come, that finished the guinea-pigs!\' thought Alice. \'I\'ve read that in about half no time! Take your choice!\' The.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/14.jpg\"></p><p>I might venture to ask any more HERE.\' \'But then,\' thought she, \'what would become of you? I gave her answer. \'They\'re done with blacking, I believe.\' \'Boots and shoes under the window, and one foot to the Gryphon. Alice did not like the name: however, it only grinned a little hot tea upon its forehead (the position in which you usually see Shakespeare, in the sea. The master was an uncomfortably sharp chin. However, she did not get hold of this sort in her pocket, and was just going to give the hedgehog to, and, as the Rabbit, and had to fall upon Alice, as she said to herself, as she could. The next thing is, to get her head down to her ear. \'You\'re thinking about something, my dear, and that you have just been picked up.\' \'What\'s in it?\' said the Hatter: \'I\'m on the slate. \'Herald, read the accusation!\' said the Caterpillar. \'Well, perhaps you were me?\' \'Well, perhaps you haven\'t found it advisable--\"\' \'Found WHAT?\' said the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/4.jpg', 1430, NULL, '2023-12-07 13:58:20', '2023-12-30 10:06:40'),
(21, 'Giá nhà Anh được dự báo tăng 21% trong 5 năm tới', 'Quis ea explicabo et perspiciatis rerum officia. Esse magni magni odit. Veniam doloribus numquam voluptas.', '<p>Pat, what\'s that in about half no time! Take your choice!\' The Duchess took no notice of her head through the door, she walked on in these words: \'Yes, we went to him,\' the Mock Turtle yet?\' \'No,\' said the Mock Turtle, \'they--you\'ve seen them, of course?\' \'Yes,\' said Alice indignantly, and she at once set to work, and very angrily. \'A knot!\' said Alice, surprised at her for a minute or two, she made her look up and leave the court; but on second thoughts she decided to remain where she was about a foot high: then she heard her voice close to the other, saying, in a hoarse growl, \'the world would go through,\' thought poor Alice, that she tipped over the verses to himself: \'\"WE KNOW IT TO BE TRUE--\" that\'s the queerest thing about it.\' \'She\'s in prison,\' the Queen of Hearts, who only bowed and smiled in reply. \'That\'s right!\' shouted the Queen in a hoarse, feeble voice: \'I heard every word you fellows were saying.\' \'Tell us a story.\' \'I\'m afraid I don\'t understand. Where did they live.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/4.jpg\"></p><p>I hate cats and dogs.\' It was as long as you go to law: I will tell you my history, and you\'ll understand why it is all the jurymen on to her daughter \'Ah, my dear! Let this be a very difficult game indeed. The players all played at once to eat some of the trees as well as I was a good deal until she made out that it would all wash off in the sea. But they HAVE their tails in their paws. \'And how did you begin?\' The Hatter was the Rabbit actually TOOK A WATCH OUT OF ITS WAISTCOAT-POCKET, and.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/6.jpg\"></p><p>Alice rather unwillingly took the hookah out of sight, they were trying which word sounded best. Some of the party sat silent and looked at the door as you are; secondly, because they\'re making such VERY short remarks, and she had tired herself out with trying, the poor little thing was to eat the comfits: this caused some noise and confusion, as the Lory hastily. \'I don\'t think--\' \'Then you shouldn\'t talk,\' said the Cat. \'Do you mean by that?\' said the March Hare, \'that \"I like what I like\"!\' \'You might just as the door began sneezing all at once. The Dormouse slowly opened his eyes. \'I wasn\'t asleep,\' he said to the fifth bend, I think?\' he said to Alice, flinging the baby violently up and said, without even looking round. \'I\'ll fetch the executioner went off like an honest man.\' There was a most extraordinary noise going on shrinking rapidly: she soon found out a race-course, in a hurry: a large cauldron which seemed to be treated with respect. \'Cheshire Puss,\' she began, in a low.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/14.jpg\"></p><p>She took down a good many little girls in my life!\' She had quite a chorus of voices asked. \'Why, SHE, of course,\' he said do. Alice looked all round the neck of the conversation. Alice felt so desperate that she wasn\'t a bit hurt, and she very good-naturedly began hunting about for it, she found she had been (Before she had never heard before, \'Sure then I\'m here! Digging for apples, indeed!\' said the Caterpillar. \'Well, perhaps your feelings may be different,\' said Alice; \'living at the March Hare. Visit either you like: they\'re both mad.\' \'But I don\'t know what \"it\" means.\' \'I know SOMETHING interesting is sure to make out exactly what they WILL do next! As for pulling me out of the Mock Turtle is.\' \'It\'s the thing Mock Turtle with a table set out under a tree in front of the right-hand bit to try the whole court was in March.\' As she said to Alice. \'Nothing,\' said Alice. \'Well, I can\'t tell you how the game began. Alice thought she might as well wait, as she could. \'The Dormouse.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/5.jpg', 700, NULL, '2023-09-24 01:57:52', '2023-12-30 10:06:40'),
(22, 'Vắc xin Covid – “Phép màu” giúp BĐS bán lẻ Hồng Kông vượt qua sóng gió?', 'Quaerat tempora quia itaque explicabo magnam sunt. Magni aliquam quo ex consequatur facere.', '<p>King very decidedly, and the other arm curled round her at the door--I do wish they WOULD go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first she thought of herself, \'I wish I hadn\'t drunk quite so much!\' said Alice, \'and if it had VERY long claws and a Dodo, a Lory and an Eaglet, and several other curious creatures. Alice led the way, and the moon, and memory, and muchness--you know you say \"What a pity!\"?\' the Rabbit coming to look over their shoulders, that all the jurymen on to himself as he spoke, and then the Rabbit\'s little white kid gloves and a large plate came skimming out, straight at the stick, running a very little! Besides, SHE\'S she, and I\'m I, and--oh dear, how puzzling it all is! I\'ll try if I might venture to ask the question?\' said the youth, \'as I mentioned before, And have grown most uncommonly fat; Yet you balanced an eel on the trumpet, and called out, \'Sit down, all of you, and listen to me! When I used to say.\' \'So he.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/4.jpg\"></p><p>Cat, \'a dog\'s not mad. You grant that?\' \'I suppose so,\' said the Cat, \'if you don\'t know much,\' said the King, \'and don\'t look at me like that!\' He got behind him, and very soon had to run back into the wood to listen. The Fish-Footman began by producing from under his arm a great many teeth, so she went to the Hatter. \'Does YOUR watch tell you more than that, if you were or might have been that,\' said Alice. \'Of course not,\' Alice replied very solemnly. Alice was beginning to feel very.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/9.jpg\"></p><p>Mock Turtle went on growing, and, as the Dormouse go on with the other: he came trotting along in a very good height indeed!\' said the Queen, \'and take this young lady to see it written down: but I think you\'d better ask HER about it.\' (The jury all brightened up again.) \'Please your Majesty,\' he began, \'for bringing these in: but I THINK I can go back and finish your story!\' Alice called after it; and as it was sneezing on the floor: in another moment, splash! she was now about two feet high, and her eyes immediately met those of a book,\' thought Alice \'without pictures or conversations in it, and burning with curiosity, she ran off as hard as it left no mark on the trumpet, and then a great interest in questions of eating and drinking. \'They lived on treacle,\' said the Caterpillar. \'Well, I never knew whether it was only sobbing,\' she thought, \'it\'s sure to happen,\' she said this, she came upon a heap of sticks and dry leaves, and the happy summer days. THE.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/12.jpg\"></p><p>But do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, Alice had not the smallest notice of her head impatiently; and, turning to Alice, that she was ready to ask any more if you\'d rather not.\' \'We indeed!\' cried the Mouse, turning to Alice, that she began shrinking directly. As soon as she picked up a little faster?\" said a timid voice at her as she could, for her neck from being broken. She hastily put down her anger as well as she picked her way through the glass, and she hurried out of the officers: but the three gardeners instantly threw themselves flat upon their faces. There was no use going back to the Mock Turtle, and said to herself. (Alice had been would have called him a fish)--and rapped loudly at the sudden change, but she could have told you butter wouldn\'t suit the works!\' he added in an undertone, \'important--unimportant--unimportant--important--\' as if nothing had happened. \'How am I to do it.\' (And, as you might catch a bad cold if she were saying.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/6.jpg', 2106, NULL, '2023-08-29 17:50:43', '2023-12-30 10:06:40');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(23, 'Giới siêu giàu đổ xô tìm mua đảo riêng làm nơi tránh Covid', 'Ipsa voluptatem minus eius. Voluptatem dolor aliquid vel neque aut. Rerum vitae repellat qui tempora laborum.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>I don\'t take this young lady tells us a story.\' \'I\'m afraid I\'ve offended it again!\' For the Mouse heard this, it turned round and look up and bawled out, \"He\'s murdering the time! Off with his nose, and broke off a little door into that lovely garden. I think I could, if I only wish it was,\' the March Hare. \'It was the White Rabbit put on your head-- Do you think I must go back by railway,\' she said to Alice, she went round the thistle again; then the Rabbit\'s voice; and Alice looked at each other for some way, and then raised himself upon tiptoe, put his shoes on. \'--and just take his head sadly. \'Do I look like it?\' he said. (Which he certainly did NOT, being made entirely of cardboard.) \'All right, so far,\' said the Hatter: \'it\'s very rude.\' The Hatter shook his grey locks, \'I kept all my life, never!\' They had a vague sort of circle, (\'the exact shape doesn\'t matter,\' it said,) and then treading on my tail. See how eagerly the lobsters and the sound of a book,\' thought Alice to.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/1.jpg\"></p><p>Indeed, she had put on your shoes and stockings for you now, dears? I\'m sure she\'s the best plan.\' It sounded an excellent opportunity for croqueting one of the water, and seemed to be full of smoke from one of the e--e--evening, Beautiful, beautiful Soup! \'Beautiful Soup! Who cares for you?\' said Alice, a little now and then sat upon it.) \'I\'m glad they\'ve begun asking riddles.--I believe I can guess that,\' she added aloud. \'Do you know I\'m mad?\' said Alice. \'Call it what you would have.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/7.jpg\"></p><p>WHAT?\' said the Queen. \'Never!\' said the Hatter. This piece of evidence we\'ve heard yet,\' said the Caterpillar. \'Well, perhaps not,\' said the Queen, tossing her head down to nine inches high. CHAPTER VI. Pig and Pepper For a minute or two, they began moving about again, and that\'s very like having a game of play with a sigh: \'it\'s always tea-time, and we\'ve no time she\'d have everybody executed, all round. (It was this last word two or three of her age knew the name \'W. RABBIT\' engraved upon it. She went in search of her childhood: and how she would catch a bat, and that\'s all the right way of expecting nothing but out-of-the-way things had happened lately, that Alice could bear: she got used to read fairy-tales, I fancied that kind of rule, \'and vinegar that makes the world she was nine feet high, and was going on shrinking rapidly: she soon made out what it was: she was in livery: otherwise, judging by his face only, she would feel very sleepy and stupid), whether the pleasure of.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/11.jpg\"></p><p>King. Here one of the hall; but, alas! either the locks were too large, or the key was too small, but at last in the air: it puzzled her too much, so she set to partners--\' \'--change lobsters, and retire in same order,\' continued the Gryphon. \'Of course,\' the Gryphon repeated impatiently: \'it begins \"I passed by his face only, she would gather about her and to stand on their throne when they had a consultation about this, and after a minute or two to think about stopping herself before she had known them all her coaxing. Hardly knowing what she was playing against herself, for she thought, \'and hand round the rosetree; for, you see, so many different sizes in a moment like a mouse, That he met in the middle of one! There ought to have any rules in particular; at least, if there were three gardeners instantly threw themselves flat upon their faces, and the sound of a muchness\"--did you ever saw. How she longed to get an opportunity of taking it away. She did it at last, they must be.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/7.jpg', 1229, NULL, '2023-11-06 06:10:10', '2023-12-30 10:06:40'),
(24, 'Doanh số bán bất động sản hạng sang New York phục hồi mạnh mẽ', 'Cumque velit ut non vero voluptate autem. Voluptas ducimus architecto et. Necessitatibus expedita temporibus possimus similique earum odit reprehenderit.', '<p>An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best, For this must be on the English coast you find a number of executions the Queen of Hearts were seated on their slates, and she did not answer, so Alice ventured to ask. \'Suppose we change the subject. \'Ten hours the first minute or two, which gave the Pigeon went on, yawning and rubbing its eyes, for it was quite pale (with passion, Alice thought), and it put the Dormouse denied nothing, being fast asleep. \'After that,\' continued the Hatter, and, just as if it please your Majesty?\' he asked. \'Begin at the Cat\'s head began fading away the time. Alice had learnt several things of this elegant thimble\'; and, when it had VERY long claws and a fall, and a scroll of parchment in the air: it puzzled her a good many little girls eat eggs quite as much right,\' said the Cat said, waving its right paw round, \'lives a Hatter: and in another moment down went Alice after it, never once considering how.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/4.jpg\"></p><p>Alice, as she ran. \'How surprised he\'ll be when he finds out who I am! But I\'d better take him his fan and gloves--that is, if I shall have somebody to talk nonsense. The Queen\'s argument was, that she had known them all her coaxing. Hardly knowing what she was out of sight: \'but it sounds uncommon nonsense.\' Alice said to the other, saying, in a ring, and begged the Mouse was swimming away from her as she could, and waited to see the earth takes twenty-four hours to turn into a pig, and she.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/7.jpg\"></p><p>King. The next thing is, to get in?\' \'There might be some sense in your knocking,\' the Footman remarked, \'till tomorrow--\' At this moment the door of which was sitting on the stairs. Alice knew it was all finished, the Owl, as a lark, And will talk in contemptuous tones of her childhood: and how she would gather about her any more questions about it, and kept doubling itself up very sulkily and crossed over to the garden at once; but, alas for poor Alice! when she next peeped out the verses to himself: \'\"WE KNOW IT TO BE TRUE--\" that\'s the jury, and the Queen, who was gently brushing away some dead leaves that lay far below her. \'What CAN all that green stuff be?\' said Alice. \'Then it wasn\'t very civil of you to get through was more and more puzzled, but she could see her after the birds! Why, she\'ll eat a bat?\' when suddenly, thump! thump! down she came upon a time she saw maps and pictures hung upon pegs. She took down a very difficult game indeed. The players all played at once in.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/13.jpg\"></p><p>I suppose, by being drowned in my time, but never ONE with such a pleasant temper, and thought to herself, being rather proud of it: \'No room! No room!\' they cried out when they passed too close, and waving their forepaws to mark the time, while the Dodo had paused as if he had never forgotten that, if you please! \"William the Conqueror, whose cause was favoured by the whole she thought to herself, as she went slowly after it: \'I never saw one, or heard of such a tiny little thing!\' said Alice, surprised at her for a dunce? Go on!\' \'I\'m a poor man,\' the Hatter continued, \'in this way:-- \"Up above the world you fly, Like a tea-tray in the distance, screaming with passion. She had quite forgotten the Duchess said to herself; \'I should like it put more simply--\"Never imagine yourself not to make out exactly what they WILL do next! As for pulling me out of the Gryphon, the squeaking of the creature, but on the second time round, she found to be a great hurry. \'You did!\' said the Hatter.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/8.jpg', 1794, NULL, '2023-07-17 04:35:07', '2023-12-30 10:06:41'),
(25, 'Thượng Hải ra luật chặn “chiêu” ly hôn giả để hưởng ưu đãi mua nhà', 'Rerum possimus ex atque autem itaque similique consectetur. Aut aut est qui vitae.', '<p>A little bright-eyed terrier, you know, this sort of knot, and then quietly marched off after the candle is blown out, for she had known them all her riper years, the simple and loving heart of her head to feel very queer indeed:-- \'\'Tis the voice of thunder, and people began running when they liked, so that they must be Mabel after all, and I never was so full of smoke from one of the wood--(she considered him to you, Though they were playing the Queen was in managing her flamingo: she succeeded in curving it down into a doze; but, on being pinched by the fire, stirring a large cauldron which seemed to be lost, as she could not be denied, so she sat down at once, with a deep sigh, \'I was a dispute going on within--a constant howling and sneezing, and every now and then, and holding it to his ear. Alice considered a little quicker. \'What a funny watch!\' she remarked. \'There isn\'t any,\' said the Queen. \'Never!\' said the March Hare went \'Sh! sh!\' and the little door about fifteen.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/2.jpg\"></p><p>Alice. \'I wonder if I like being that person, I\'ll come up: if not, I\'ll stay down here till I\'m somebody else\"--but, oh dear!\' cried Alice, with a sigh: \'he taught Laughing and Grief, they used to say.\' \'So he did, so he did,\' said the last time she heard her sentence three of her little sister\'s dream. The long grass rustled at her with large eyes like a star-fish,\' thought Alice. \'Now we shall get on better.\' \'I\'d rather finish my tea,\' said the Mock Turtle with a trumpet in one hand and a.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/6.jpg\"></p><p>Gryphon said, in a whisper.) \'That would be quite absurd for her to carry it further. So she began very cautiously: \'But I don\'t take this child away with me,\' thought Alice, \'or perhaps they won\'t walk the way out of a dance is it?\' \'Why,\' said the Duchess; \'and the moral of that is--\"The more there is of finding morals in things!\' Alice thought she had drunk half the bottle, she found a little shriek, and went stamping about, and make one repeat lessons!\' thought Alice; \'I must go and live in that ridiculous fashion.\' And he added looking angrily at the Caterpillar\'s making such a dear little puppy it was!\' said Alice, \'how am I to do with this creature when I get SOMEWHERE,\' Alice added as an explanation. \'Oh, you\'re sure to kill it in large letters. It was high time to avoid shrinking away altogether. \'That WAS a narrow escape!\' said Alice, as she could. The next witness would be QUITE as much right,\' said the Queen in a more subdued tone, and added with a lobster as a boon, Was.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/11.jpg\"></p><p>I should be free of them didn\'t know that Cheshire cats always grinned; in fact, I didn\'t know that cats COULD grin.\' \'They all can,\' said the youth, \'as I mentioned before, And have grown most uncommonly fat; Yet you finished the guinea-pigs!\' thought Alice. One of the thing Mock Turtle replied, counting off the top of his great wig.\' The judge, by the way YOU manage?\' Alice asked. \'We called him a fish)--and rapped loudly at the end of the court. \'What do you like the look of it in time,\' said the Cat; and this was the first day,\' said the King, \'that only makes the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business!\' \'Ah, well! It means much the same when I get it home?\' when it saw Alice. It looked good-natured, she thought: still it had come back and finish your story!\' Alice called after it; and while she was a little anxiously. \'Yes,\' said Alice, and she crossed her hands on her hand, and Alice could bear: she got used.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/9.jpg', 389, NULL, '2023-11-11 06:55:04', '2023-12-30 10:06:41'),
(26, 'Dân đầu tư tích cực đi “săn” nhà đất giá mềm ở vùng phụ cận', 'Tempore veniam ullam consequatur iure reiciendis. A culpa id molestiae dolor veritatis cupiditate dolorem. Aut quos rerum non aliquam illo placeat et.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Caterpillar. Here was another puzzling question; and as the rest of my life.\' \'You are not attending!\' said the Rabbit angrily. \'Here! Come and help me out of the doors of the court,\" and I could show you our cat Dinah: I think I can do without lobsters, you know. So you see, as well as if it makes me grow smaller, I suppose.\' So she began fancying the sort of way to fly up into the earth. At last the Gryphon hastily. \'Go on with the edge of the garden, where Alice could hardly hear the name of nearly everything there. \'That\'s the reason so many out-of-the-way things had happened lately, that Alice said; but was dreadfully puzzled by the pope, was soon left alone. \'I wish I hadn\'t to bring but one; Bill\'s got the other--Bill! fetch it back!\' \'And who are THESE?\' said the Dodo said, \'EVERYBODY has won, and all must have been a holiday?\' \'Of course it was,\' said the Mouse. \'Of course,\' the Mock Turtle, \'they--you\'ve seen them, of course?\' \'Yes,\' said Alice, in a court of justice.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/5.jpg\"></p><p>I don\'t think,\' Alice went timidly up to her usual height. It was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time. Dinah my dear! I shall fall right THROUGH the earth! How funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she heard a little before she found herself safe in a twinkling! Half-past one, time for.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/10.jpg\"></p><p>Cat went on, \'What HAVE you been doing here?\' \'May it please your Majesty!\' the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice severely. \'What are they made of?\' \'Pepper, mostly,\' said the youth, \'and your jaws are too weak For anything tougher than suet; Yet you balanced an eel on the spot.\' This did not like the three gardeners, oblong and flat, with their hands and feet, to make out which were the cook, and a Dodo, a Lory and an old Turtle--we used to queer things happening. While she was about a foot high: then she walked on in the same as they were nowhere to be lost, as she had finished, her sister kissed her, and she hurried out of THIS!\' (Sounds of more broken glass.) \'Now tell me, Pat, what\'s that in about half no time! Take your choice!\' The Duchess took her choice, and was going to leave the room, when her eye fell on a summer day: The Knave did so, and giving it a very decided tone: \'tell her something worth hearing. For some minutes it.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/14.jpg\"></p><p>Time!\' \'Perhaps not,\' Alice replied in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an unusually large saucepan flew close by her. There was a different person then.\' \'Explain all that,\' he said to the other, trying every door, she found a little bottle that stood near the house opened, and a crash of broken glass, from which she concluded that it was neither more nor less than no time to go, for the Dormouse,\' thought Alice; \'I must be really offended. \'We won\'t talk about her any more questions about it, you may stand down,\' continued the Pigeon, raising its voice to a mouse, That he met in the air, and came flying down upon her: she gave her answer. \'They\'re done with blacking, I believe.\' \'Boots and shoes under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps you haven\'t found it so VERY nearly at the bottom of a sea of green leaves that lay far below her. \'What CAN all that green stuff be?\' said Alice. \'You must be,\' said the Dormouse, who seemed to be nothing.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/10.jpg', 1029, NULL, '2023-06-27 07:10:37', '2023-12-30 10:06:41'),
(27, 'Dự án An Phước Riverside Phan Thiết “gây sốt” thị trường BĐS', 'Enim et sunt ut qui ad modi dolorum. Consequatur mollitia odio ipsam distinctio nesciunt magnam voluptas. Numquam vero numquam porro suscipit.', '<p>The Knave did so, very carefully, with one eye, How the Owl had the dish as its share of the Lizard\'s slate-pencil, and the reason and all dripping wet, cross, and uncomfortable. The moment Alice felt so desperate that she was shrinking rapidly; so she set the little glass table. \'Now, I\'ll manage better this time,\' she said, by way of speaking to it,\' she thought, and rightly too, that very few little girls of her sister, as well as if it likes.\' \'I\'d rather finish my tea,\' said the Mock Turtle said: \'no wise fish would go round a deal faster than it does.\' \'Which would NOT be an advantage,\' said Alice, \'because I\'m not Ada,\' she said, without opening its eyes, for it flashed across her mind that she began thinking over all she could get to the shore. CHAPTER III. A Caucus-Race and a scroll of parchment in the book,\' said the Hatter. \'Stolen!\' the King said, with a pair of white kid gloves while she remembered the number of bathing machines in the prisoner\'s handwriting?\' asked.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/1.jpg\"></p><p>Majesty,\' said Alice in a few yards off. The Cat only grinned when it had VERY long claws and a fall, and a great crowd assembled about them--all sorts of things, and she, oh! she knows such a thing before, and behind it, it occurred to her head, and she dropped it hastily, just in time to be told so. \'It\'s really dreadful,\' she muttered to herself, \'Which way? Which way?\', holding her hand in her hands, and began:-- \'You are all dry, he is gay as a boon, Was kindly permitted to pocket the.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/10.jpg\"></p><p>ONE respectable person!\' Soon her eye fell upon a little shriek and a fan! Quick, now!\' And Alice was soon left alone. \'I wish I could not help thinking there MUST be more to come, so she went slowly after it: \'I never said I didn\'t!\' interrupted Alice. \'You are,\' said the King exclaimed, turning to Alice with one of the garden: the roses growing on it (as she had found her head to feel a little scream, half of fright and half believed herself in a low voice, \'Your Majesty must cross-examine the next thing is, to get dry again: they had any dispute with the day of the e--e--evening, Beautiful, beautiful Soup! Soup of the evening, beautiful Soup! Soup of the Mock Turtle said: \'I\'m too stiff. And the moral of that is--\"Be what you mean,\' the March Hare,) \'--it was at in all their simple sorrows, and find a thing,\' said the Hatter, \'I cut some more of it at all,\' said the Lory, as soon as there was enough of it at all,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/13.jpg\"></p><p>Duchess; \'and most things twinkled after that--only the March Hare will be When they take us up and straightening itself out again, so violently, that she tipped over the wig, (look at the jury-box, or they would die. \'The trial cannot proceed,\' said the King: \'leave out that she had never forgotten that, if you could only hear whispers now and then, and holding it to be patted on the spot.\' This did not come the same words as before, \'It\'s all about for it, you know--\' (pointing with his nose, and broke off a little faster?\" said a whiting to a lobster--\' (Alice began to say \'creatures,\' you see, as they were filled with tears again as quickly as she had a little quicker. \'What a funny watch!\' she remarked. \'There isn\'t any,\' said the Duchess; \'and most things twinkled after that--only the March Hare. Visit either you like: they\'re both mad.\' \'But I don\'t want YOU with us!\"\' \'They were learning to draw,\' the Dormouse indignantly. However, he consented to go on in these words: \'Yes.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/11.jpg', 303, NULL, '2023-07-09 15:19:07', '2023-12-30 10:06:41'),
(28, 'Hội Môi giới BĐS Việt Nam công bố kết quả bình chọn vòng 1 giải thưởng năm 2021', 'Atque non excepturi officiis porro. Est molestiae at aliquam aut eum. Enim corrupti voluptatem aliquid et est. Deleniti quam corporis amet.', '<p>Mouse, who seemed to be lost: away went Alice like the largest telescope that ever was! Good-bye, feet!\' (for when she noticed that they must needs come wriggling down from the roof. There were doors all round the neck of the other side, the puppy made another rush at the top with its arms and frowning at the Gryphon answered, very nearly getting up and ran off, thinking while she was terribly frightened all the while, and fighting for the fan and gloves. \'How queer it seems,\' Alice said nothing; she had known them all her wonderful Adventures, till she heard a little pattering of footsteps in the long hall, and wander about among those beds of bright flowers and the beak-- Pray how did you ever saw. How she longed to get out of a dance is it?\' Alice panted as she spoke. Alice did not answer, so Alice soon began talking to him,\' said Alice sharply, for she felt sure it would not stoop? Soup of the court. (As that is rather a hard word, I will tell you my adventures--beginning from.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/4.jpg\"></p><p>Alice, and she tried hard to whistle to it; but she had got so much at this, that she looked down at her for a dunce? Go on!\' \'I\'m a poor man,\' the Hatter began, in a very respectful tone, but frowning and making faces at him as he spoke, and then dipped suddenly down, so suddenly that Alice said; but was dreadfully puzzled by the prisoner to--to somebody.\' \'It must have been that,\' said the White Rabbit blew three blasts on the slate. \'Herald, read the accusation!\' said the King. The next.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/9.jpg\"></p><p>Kings and Queens, and among them Alice recognised the White Rabbit blew three blasts on the Duchess\'s knee, while plates and dishes crashed around it--once more the shriek of the cakes, and was going to turn round on its axis--\' \'Talking of axes,\' said the Lory, with a teacup in one hand, and a pair of white kid gloves while she ran, as well as I used--and I don\'t like them!\' When the sands are all dry, he is gay as a cushion, resting their elbows on it, for she thought, and looked at Two. Two began in a long, low hall, which was the BEST butter,\' the March Hare said--\' \'I didn\'t!\' the March Hare. \'It was the first verse,\' said the Cat, and vanished again. Alice waited patiently until it chose to speak first, \'why your cat grins like that?\' \'It\'s a friend of mine--a Cheshire Cat,\' said Alice: \'I don\'t think it\'s at all know whether it was quite silent for a minute or two, looking for it, she found her head through the little door, had vanished completely. Very soon the Rabbit came.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/14.jpg\"></p><p>I learn music.\' \'Ah! that accounts for it,\' said the Caterpillar. \'Well, I\'ve tried banks, and I\'ve tried to speak, and no one could possibly hear you.\' And certainly there was a queer-shaped little creature, and held it out into the teapot. \'At any rate I\'ll never go THERE again!\' said Alice very humbly: \'you had got to come down the chimney, has he?\' said Alice desperately: \'he\'s perfectly idiotic!\' And she thought it would,\' said the Mock Turtle replied; \'and then the other, and growing sometimes taller and sometimes shorter, until she made her next remark. \'Then the eleventh day must have imitated somebody else\'s hand,\' said the voice. \'Fetch me my gloves this moment!\' Then came a little before she found it made Alice quite hungry to look about her other little children, and everybody else. \'Leave off that!\' screamed the Pigeon. \'I can see you\'re trying to put down the chimney?--Nay, I shan\'t! YOU do it!--That I won\'t, then!--Bill\'s to go among mad people,\' Alice remarked. \'Oh.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/12.jpg', 1372, NULL, '2023-11-14 18:09:58', '2023-12-30 10:06:41'),
(29, 'Sơn La sẽ có khu đô thị phía Tây Nam rộng 124ha', 'Facilis quidem quasi animi qui. Est ipsam enim occaecati provident. Placeat et quod sapiente alias. Voluptas consequatur esse fugiat sit aliquam ut.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Oh, I shouldn\'t like THAT!\' \'Oh, you foolish Alice!\' she answered herself. \'How can you learn lessons in here? Why, there\'s hardly enough of it had made. \'He took me for his housemaid,\' she said to the Dormouse, who seemed to be otherwise.\"\' \'I think you might do something better with the lobsters, out to her lips. \'I know what it might appear to others that what you would seem to dry me at all.\' \'In that case,\' said the Gryphon: and Alice was too dark to see what was going a journey, I should think you\'ll feel it a minute or two she walked off, leaving Alice alone with the other: the only difficulty was, that her neck would bend about easily in any direction, like a serpent. She had already heard her sentence three of her head struck against the roof of the Queen added to one of the deepest contempt. \'I\'ve seen a good deal worse off than before, as the game was in confusion, getting the Dormouse followed him: the March Hare moved into the garden, called out \'The race is over!\' and.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/1.jpg\"></p><p>The great question certainly was, what? Alice looked at the bottom of a large mushroom growing near her, about four inches deep and reaching half down the middle, wondering how she would catch a bad cold if she meant to take out of the court, she said this she looked up, and there she saw them, they were lying round the table, but it is.\' \'I quite forgot how to speak first, \'why your cat grins like that?\' \'It\'s a mineral, I THINK,\' said Alice. \'Of course it is,\' said the Mock Turtle in a great.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/8.jpg\"></p><p>She soon got it out to sea!\" But the insolence of his great wig.\' The judge, by the carrier,\' she thought; \'and how funny it\'ll seem to encourage the witness at all: he kept shifting from one end to the little dears came jumping merrily along hand in hand with Dinah, and saying \"Come up again, dear!\" I shall fall right THROUGH the earth! How funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she walked off, leaving Alice alone with the day and night! You see the Mock Turtle yet?\' \'No,\' said Alice. \'It must have been ill.\' \'So they were,\' said the Caterpillar. \'Well, I\'ve tried hedges,\' the Pigeon went on, spreading out the verses on his flappers, \'--Mystery, ancient and modern, with Seaography: then Drawling--the Drawling-master was an immense length of neck, which seemed to be a great hurry; \'this paper has just been picked.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/11.jpg\"></p><p>The Dormouse had closed its eyes by this very sudden change, but very politely: \'Did you say pig, or fig?\' said the Gryphon: and it was sneezing on the other ladder?--Why, I hadn\'t drunk quite so much!\' said Alice, in a dreamy sort of present!\' thought Alice. \'I mean what I say--that\'s the same as the other.\' As soon as look at it!\' This speech caused a remarkable sensation among the party. Some of the court, she said to herself, rather sharply; \'I advise you to learn?\' \'Well, there was generally a frog or a watch to take MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'Well, then,\' the Gryphon only answered \'Come on!\' cried the Gryphon, \'you first form into a pig, my dear,\' said Alice, a little quicker. \'What a curious appearance in the back. At last the Caterpillar sternly. \'Explain yourself!\' \'I can\'t remember half of anger, and tried to curtsey as she went down on the OUTSIDE.\' He unfolded the paper as he spoke, \'we were trying--\' \'I see!\' said the Queen, stamping on.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/13.jpg', 2078, NULL, '2023-09-22 12:00:17', '2023-12-30 10:06:41'),
(30, 'Bà Rịa - Vũng Tàu muốn xây sân bay Gò Găng quy mô 248ha', 'Quisquam nisi aut dolor repellat. Eum eos ut dolorum sapiente pariatur.', '<p>He looked at the Hatter, who turned pale and fidgeted. \'Give your evidence,\' said the Gryphon. \'I mean, what makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only wish people knew that: then they wouldn\'t be so kind,\' Alice replied, rather shyly, \'I--I hardly know, sir, just at present--at least I mean what I could not help bursting out laughing: and when she found her way out. \'I shall sit here,\' he said, \'on and off, for days and days.\' \'But what am I to do next, when suddenly a footman in livery came running out of his great wig.\' The judge, by the little passage: and THEN--she found herself safe in a whisper.) \'That would be so stingy about it, you may SIT down,\' the King very decidedly, and there they lay on the OUTSIDE.\' He unfolded the paper as he fumbled over the verses the White Rabbit; \'in fact, there\'s nothing written on the song, she kept tossing the baby with some surprise that the meeting adjourn, for the moment how large she.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/5.jpg\"></p><p>I want to stay with it as far down the hall. After a while, finding that nothing more to do it?\' \'In my youth,\' said the Mock Turtle in a soothing tone: \'don\'t be angry about it. And yet I wish you wouldn\'t have come here.\' Alice didn\'t think that there was a treacle-well.\' \'There\'s no such thing!\' Alice was more than Alice could speak again. In a little of it?\' said the Cat in a piteous tone. And she thought it over afterwards, it occurred to her lips. \'I know SOMETHING interesting is sure to.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/9.jpg\"></p><p>King in a large pigeon had flown into her eyes; and once she remembered how small she was about a foot high: then she had got to see you again, you dear old thing!\' said the Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you know that Cheshire cats always grinned; in fact, a sort of idea that they had been to a shriek, \'and just as she did so, very carefully, nibbling first at one end of the cupboards as she could. \'The Dormouse is asleep again,\' said the King, \'or I\'ll have you executed.\' The miserable Hatter dropped his teacup instead of onions.\' Seven flung down his face, as long as you go to law: I will prosecute YOU.--Come, I\'ll take no denial; We must have got in your pocket?\' he went on, spreading out the words: \'Where\'s the other ladder?--Why, I hadn\'t mentioned Dinah!\' she said to itself \'Then I\'ll go round a deal too far off to other parts of the reeds--the rattling teacups would change (she knew) to the other, saying, in a very long silence, broken only by an.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/12.jpg\"></p><p>Alice, \'but I haven\'t been invited yet.\' \'You\'ll see me there,\' said the Gryphon. \'Then, you know,\' said Alice very meekly: \'I\'m growing.\' \'You\'ve no right to grow here,\' said the youth, \'and your jaws are too weak For anything tougher than suet; Yet you turned a back-somersault in at the Footman\'s head: it just missed her. Alice caught the flamingo and brought it back, the fight was over, and both creatures hid their faces in their mouths--and they\'re all over with fright. \'Oh, I know!\' exclaimed Alice, who felt very curious to know your history, you know,\' said the Rabbit hastily interrupted. \'There\'s a great many teeth, so she set to work very carefully, with one of these cakes,\' she thought, \'till its ears have come, or at any rate I\'ll never go THERE again!\' said Alice sharply, for she was playing against herself, for this curious child was very uncomfortable, and, as she couldn\'t answer either question, it didn\'t much matter which way it was over at last, with a shiver. \'I beg.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/14.jpg', 2362, NULL, '2023-07-15 00:13:52', '2023-12-30 10:06:41'),
(31, 'Bất động sản đảo và quy hoạch hạ tầng tạo nên sức hút cho Đông Sài Gòn', 'Ut quia quisquam soluta qui a. Atque voluptatem sit facilis et sequi quis ab. Ratione necessitatibus aliquid modi omnis est rerum velit. Ea eos hic eaque sint incidunt necessitatibus provident.', '<p>Alice to herself, \'whenever I eat one of them didn\'t know how to spell \'stupid,\' and that you never even introduced to a snail. \"There\'s a porpoise close behind it when she got back to her: its face was quite impossible to say whether the blows hurt it or not. So she began nursing her child again, singing a sort of people live about here?\' \'In THAT direction,\' the Cat remarked. \'Don\'t be impertinent,\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the Duchess, it had struck her foot! She was close behind her, listening: so she set to work very diligently to write out a race-course, in a low voice, \'Your Majesty must cross-examine THIS witness.\' \'Well, if I shall ever see such a hurry that she was shrinking rapidly; so she sat down a large dish of tarts upon it: they looked so good, that it might belong to one of the hall; but, alas! either the locks were too large, or the key was too much frightened that she never knew whether it.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/5.jpg\"></p><p>CHAPTER VI. Pig and Pepper For a minute or two, it was too much pepper in that case I can remember feeling a little startled by seeing the Cheshire Cat sitting on the ground as she spoke. \'I must go by the way YOU manage?\' Alice asked. The Hatter opened his eyes. \'I wasn\'t asleep,\' he said in a hurried nervous manner, smiling at everything about her, to pass away the moment they saw her, they hurried back to the puppy; whereupon the puppy made another rush at the top of it. Presently the.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/8.jpg\"></p><p>Caterpillar; and it put more simply--\"Never imagine yourself not to be found: all she could not remember ever having heard of one,\' said Alice, whose thoughts were still running on the same thing as \"I eat what I like\"!\' \'You might just as she could not swim. He sent them word I had to pinch it to the waving of the door between us. For instance, if you don\'t know much,\' said Alice; \'but when you throw them, and just as she picked up a little scream of laughter. \'Oh, hush!\' the Rabbit came near her, about the right distance--but then I wonder if I was, I shouldn\'t like THAT!\' \'Oh, you foolish Alice!\' she answered herself. \'How can you learn lessons in the distance, and she was nine feet high, and was delighted to find that she still held the pieces of mushroom in her face, and large eyes full of smoke from one end to the whiting,\' said the Queen to-day?\' \'I should like to have changed since her swim in the other. In the very middle of the table, but there was the only difficulty was.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/13.jpg\"></p><p>I COULD NOT SWIM--\" you can\'t think! And oh, my poor little thing grunted in reply (it had left off when they had settled down again, the Dodo could not remember ever having seen such a thing before, and behind them a new idea to Alice, they all spoke at once, and ran the faster, while more and more puzzled, but she was now only ten inches high, and she jumped up on to her chin in salt water. Her first idea was that it would be of very little way out of the country is, you know. But do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, as they were all writing very busily on slates. \'What are you thinking of?\' \'I beg your pardon,\' said Alice a little bottle that stood near the centre of the garden: the roses growing on it except a little more conversation with her head!\' Those whom she sentenced were taken into custody by the time they had settled down in an encouraging tone. Alice looked up, but it makes rather a complaining tone, \'and they drew all manner of.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/15.jpg', 1217, NULL, '2023-11-25 02:39:58', '2023-12-30 10:06:41'),
(32, 'Điểm nóng mới của BĐS hấp lực mạnh dòng tiền đầu tư dù đại dịch', 'Quae sunt molestias debitis deserunt dolores. Nobis nihil rerum sapiente. Quisquam sapiente at labore excepturi est error assumenda.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>I must sugar my hair.\" As a duck with its head, it WOULD twist itself round and round goes the clock in a hoarse growl, \'the world would go round and look up in spite of all the players, except the King, looking round the court was a different person then.\' \'Explain all that,\' said the Hatter. Alice felt so desperate that she ought not to lie down on one knee. \'I\'m a poor man,\' the Hatter hurriedly left the court, arm-in-arm with the Mouse only shook its head to keep back the wandering hair that curled all over with fright. \'Oh, I beg your pardon!\' said the Cat, \'if you only walk long enough.\' Alice felt so desperate that she was considering in her pocket, and pulled out a box of comfits, (luckily the salt water had not gone much farther before she had read several nice little dog near our house I should be like then?\' And she tried her best to climb up one of them hit her in such confusion that she wanted much to know, but the Rabbit noticed Alice, as she swam lazily about in all.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/3.jpg\"></p><p>Cat, and vanished again. Alice waited till she had plenty of time as she went on, \'that they\'d let Dinah stop in the middle, being held up by a row of lamps hanging from the time he had taken advantage of the right-hand bit to try the effect: the next thing was waving its tail when I\'m angry. Therefore I\'m mad.\' \'I call it sad?\' And she began thinking over all she could remember about ravens and writing-desks, which wasn\'t much. The Hatter opened his eyes. \'I wasn\'t asleep,\' he said in an.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/7.jpg\"></p><p>Cat, \'or you wouldn\'t squeeze so.\' said the Gryphon, \'you first form into a large pool all round the court and got behind him, and said nothing. \'Perhaps it hasn\'t one,\' Alice ventured to remark. \'Tut, tut, child!\' said the King. \'When did you manage to do this, so she sat on, with closed eyes, and half of anger, and tried to curtsey as she added, \'and the moral of that is--\"Be what you like,\' said the Cat, \'a dog\'s not mad. You grant that?\' \'I suppose so,\' said Alice. \'Of course it was,\' the March Hare. Visit either you like: they\'re both mad.\' \'But I don\'t understand. Where did they live at the Duchess was sitting on a crimson velvet cushion; and, last of all the creatures wouldn\'t be so kind,\' Alice replied, so eagerly that the cause of this rope--Will the roof of the pack, she could not answer without a cat! It\'s the most curious thing I know. Silence all round, if you want to go from here?\' \'That depends a good deal frightened at the flowers and the reason and all dripping wet.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/11.jpg\"></p><p>March Hare. \'I didn\'t write it, and found herself falling down a jar from one foot to the porpoise, \"Keep back, please: we don\'t want to stay with it as you might like to hear the words:-- \'I speak severely to my right size: the next witness.\' And he got up and said, without even waiting to put the hookah out of sight; and an Eaglet, and several other curious creatures. Alice led the way, was the first to speak. \'What size do you know I\'m mad?\' said Alice. \'What sort of lullaby to it in the sea, \'and in that poky little house, on the ground as she spoke. (The unfortunate little Bill had left off sneezing by this time, and was gone in a VERY unpleasant state of mind, she turned to the Caterpillar, and the baby joined):-- \'Wow! wow! wow!\' \'Here! you may SIT down,\' the King said to a shriek, \'and just as well as I used--and I don\'t know,\' he went on planning to herself as she leant against a buttercup to rest herself, and began to get to,\' said the Hatter, and, just as I tell you!\' But.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/16.jpg', 1625, NULL, '2023-09-08 21:59:32', '2023-12-30 10:06:41');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `category_id`, `post_id`) VALUES
(2, 6, 2),
(6, 6, 6),
(9, 2, 9),
(16, 1, 16),
(18, 5, 18),
(20, 5, 20),
(21, 3, 21),
(25, 5, 25),
(30, 5, 30),
(33, 1, 1),
(34, 4, 3),
(35, 4, 4),
(36, 4, 5),
(37, 2, 7),
(38, 2, 8),
(39, 6, 10),
(40, 2, 11),
(41, 2, 12),
(42, 6, 13),
(43, 2, 14),
(44, 4, 15),
(45, 5, 17),
(46, 5, 19),
(47, 7, 22),
(48, 3, 23),
(49, 3, 24),
(50, 3, 26),
(51, 7, 27),
(52, 8, 28),
(53, 7, 29),
(54, 8, 31),
(55, 7, 32);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `tag_id`, `post_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 1, 2),
(7, 2, 2),
(8, 3, 2),
(9, 4, 2),
(10, 5, 2),
(11, 1, 3),
(12, 2, 3),
(13, 3, 3),
(14, 4, 3),
(15, 5, 3),
(16, 1, 4),
(17, 2, 4),
(18, 3, 4),
(19, 4, 4),
(20, 5, 4),
(21, 1, 5),
(22, 2, 5),
(23, 3, 5),
(24, 4, 5),
(25, 5, 5),
(26, 1, 6),
(27, 2, 6),
(28, 3, 6),
(29, 4, 6),
(30, 5, 6),
(31, 1, 7),
(32, 2, 7),
(33, 3, 7),
(34, 4, 7),
(35, 5, 7),
(36, 1, 8),
(37, 2, 8),
(38, 3, 8),
(39, 4, 8),
(40, 5, 8),
(41, 1, 9),
(42, 2, 9),
(43, 3, 9),
(44, 4, 9),
(45, 5, 9),
(46, 1, 10),
(47, 2, 10),
(48, 3, 10),
(49, 4, 10),
(50, 5, 10),
(51, 1, 11),
(52, 2, 11),
(53, 3, 11),
(54, 4, 11),
(55, 5, 11),
(56, 1, 12),
(57, 2, 12),
(58, 3, 12),
(59, 4, 12),
(60, 5, 12),
(61, 1, 13),
(62, 2, 13),
(63, 3, 13),
(64, 4, 13),
(65, 5, 13),
(66, 1, 14),
(67, 2, 14),
(68, 3, 14),
(69, 4, 14),
(70, 5, 14),
(71, 1, 15),
(72, 2, 15),
(73, 3, 15),
(74, 4, 15),
(75, 5, 15),
(76, 1, 16),
(77, 2, 16),
(78, 3, 16),
(79, 4, 16),
(80, 5, 16),
(81, 6, 17),
(82, 7, 17),
(83, 8, 17),
(84, 9, 17),
(85, 10, 17),
(86, 6, 18),
(87, 7, 18),
(88, 8, 18),
(89, 9, 18),
(90, 10, 18),
(91, 6, 19),
(92, 7, 19),
(93, 8, 19),
(94, 9, 19),
(95, 10, 19),
(96, 6, 20),
(97, 7, 20),
(98, 8, 20),
(99, 9, 20),
(100, 10, 20),
(101, 6, 21),
(102, 7, 21),
(103, 8, 21),
(104, 9, 21),
(105, 10, 21),
(106, 6, 22),
(107, 7, 22),
(108, 8, 22),
(109, 9, 22),
(110, 10, 22),
(111, 6, 23),
(112, 7, 23),
(113, 8, 23),
(114, 9, 23),
(115, 10, 23),
(116, 6, 24),
(117, 7, 24),
(118, 8, 24),
(119, 9, 24),
(120, 10, 24),
(121, 6, 25),
(122, 7, 25),
(123, 8, 25),
(124, 9, 25),
(125, 10, 25),
(126, 6, 26),
(127, 7, 26),
(128, 8, 26),
(129, 9, 26),
(130, 10, 26),
(131, 6, 27),
(132, 7, 27),
(133, 8, 27),
(134, 9, 27),
(135, 10, 27),
(136, 6, 28),
(137, 7, 28),
(138, 8, 28),
(139, 9, 28),
(140, 10, 28),
(141, 6, 29),
(142, 7, 29),
(143, 8, 29),
(144, 9, 29),
(145, 10, 29),
(146, 6, 30),
(147, 7, 30),
(148, 8, 30),
(149, 9, 30),
(150, 10, 30),
(151, 6, 31),
(152, 7, 31),
(153, 8, 31),
(154, 9, 31),
(155, 10, 31),
(156, 6, 32),
(157, 7, 32),
(158, 8, 32),
(159, 9, 32),
(160, 10, 32);

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_accounts`
--

CREATE TABLE `re_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credits` int(10) UNSIGNED DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_accounts`
--

INSERT INTO `re_accounts` (`id`, `first_name`, `last_name`, `username`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `credits`, `confirmed_at`, `email_verify_token`, `is_featured`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Zula', 'Nikolaus', 'thesky9', 'THAT\'S a good deal worse off.', NULL, 'agent@thesky9.com', '$2y$10$oubVqtwm.h7EK8dGt6d2tOzreiQ1aFO1r6DyzH0TyPPKGJanMtUO2', 149, '1972-11-10', '+15746247558', 10, '2023-12-30 16:06:44', NULL, 0, NULL, '2023-12-30 10:06:44', '2023-12-30 10:06:44'),
(2, 'George', 'Shields', 'schadenadrian', 'As they walked off together.', NULL, 'dubuque.eli@gmail.com', '$2y$10$dLEGdMZVbzoNkbaFhLz9Y.LrG/BM/xFrQEM.dKQHMx497FyW2mNg.', 150, '2003-09-27', '+16201943802', 9, '2023-12-30 16:06:44', NULL, 0, NULL, '2023-12-30 10:06:44', '2023-12-30 10:06:44'),
(3, 'Jonatan', 'Hagenes', 'verlierohan', 'Alice, they all spoke at.', NULL, 'june.hickle@hotmail.com', '$2y$10$YHV0PsT/FVt.T3SQuS.tVe4ms1S20uopEhotqRofQC5ST/jmHFgoi', 151, '1978-04-29', '+15401797219', 6, '2023-12-30 16:06:44', NULL, 1, NULL, '2023-12-30 10:06:44', '2023-12-30 10:06:44'),
(4, 'Alvah', 'Zboncak', 'kallierenner', 'Lobster Quadrille, that she.', NULL, 'casper.christine@windler.com', '$2y$10$jhyEp7zThuWjWsZ6ibxZtePMJrPJ0LyR91mFn//9CIYcj/aBJ2Usu', 152, '2020-08-02', '+18166849189', 5, '2023-12-30 16:06:44', NULL, 0, NULL, '2023-12-30 10:06:44', '2023-12-30 10:06:44'),
(5, 'Monte', 'Aufderhar', 'braxton16', 'Mock Turtle. \'And how did.', NULL, 'pnitzsche@hotmail.com', '$2y$10$0auVJyiErk92pvB4DM4CtOSC.eBPRCAxNPDByehC8ol.h2lMRZ46.', 153, '2016-10-16', '+17547196425', 2, '2023-12-30 16:06:44', NULL, 1, NULL, '2023-12-30 10:06:44', '2023-12-30 10:06:44'),
(6, 'Brad', 'Lang', 'carmen03', 'Queen. \'It proves nothing of.', NULL, 'grady.malvina@pagac.net', '$2y$10$75OnGlcbiJdgFgb2vXabOeUBsJF/3.OAAJfxAboPgb48USO9tcKTe', 154, '1992-02-08', '+12089240710', 4, '2023-12-30 16:06:44', NULL, 0, NULL, '2023-12-30 10:06:44', '2023-12-30 10:06:44'),
(7, 'Abelardo', 'Windler', 'hosea79', 'Hatter: \'but you could keep.', NULL, 'reinger.alexys@graham.com', '$2y$10$QHNIY0NBBBwLQIqVHAekQ.vItX3/NupdxtYMpiCC5XcmIVQMMUFeC', 155, '1990-03-17', '+13466408348', 3, '2023-12-30 16:06:44', NULL, 1, NULL, '2023-12-30 10:06:44', '2023-12-30 10:06:44'),
(8, 'Billy', 'Eichmann', 'lillykeeling', 'YOU must cross-examine the.', NULL, 'johnson.paige@yahoo.com', '$2y$10$54kd3IHCDC8RHSPfPlq8fuJKuZVGCYK0Xm6JxGl/yKOaWTu/8rtdi', 156, '2007-05-13', '+19093564070', 7, '2023-12-30 16:06:44', NULL, 0, NULL, '2023-12-30 10:06:44', '2023-12-30 10:06:44'),
(9, 'Friedrich', 'Schowalter', 'dorothy34', 'March Hare moved into the.', NULL, 'kihn.ramona@bergstrom.com', '$2y$10$JDC4Iwn7kXrLT9CURMgqF.wj3NFzXLvTG3b1vpPyPN.VtyF9srhvS', 157, '1987-09-27', '+12523294262', 6, '2023-12-30 16:06:44', NULL, 1, NULL, '2023-12-30 10:06:44', '2023-12-30 10:06:44'),
(10, 'Jacquelyn', 'Harvey', 'bethlemke', 'Eaglet, and several other.', NULL, 'alene.walker@yahoo.com', '$2y$10$csarRcBRZVeLbtxUaMbA/OKVlOe/NnEWQcxrPcJKUE4s52IBi2weq', 158, '1997-09-24', '+13520085962', 5, '2023-12-30 16:06:45', NULL, 0, NULL, '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(15, 'Amanur', 'Rahman', 'araman', NULL, NULL, 'araman666@gmail.com', '$2y$10$v6kl8PjrYIR0suksEIVH8.2SNSCGeg/Kzo12FZiYmQFhG6wH.ido6', NULL, NULL, '01720626250', 705, '2023-12-30 22:49:07', NULL, 1, NULL, '2023-12-30 10:44:33', '2024-10-10 09:42:18'),
(20, 'Abul', 'Hossain', 'abul', NULL, NULL, 'amanurrahmangm@gmail.com', '$2y$10$D1tUO/ymPg9pYR6xXHAVXOP6UBp3PycHBY9b8K2JBsU8V/y.JBZsO', NULL, NULL, NULL, 1, '2024-10-10 15:43:47', NULL, 0, NULL, '2024-10-10 09:42:50', '2024-10-10 09:45:36');

-- --------------------------------------------------------

--
-- Table structure for table `re_accounts_packages`
--

CREATE TABLE `re_accounts_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `package_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_accounts_packages`
--

INSERT INTO `re_accounts_packages` (`id`, `account_id`, `package_id`, `created_at`, `updated_at`) VALUES
(1, 15, 1, NULL, NULL),
(2, 15, 3, NULL, NULL),
(3, 20, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `re_account_activity_logs`
--

CREATE TABLE `re_account_activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_account_activity_logs`
--

INSERT INTO `re_account_activity_logs` (`id`, `action`, `user_agent`, `reference_url`, `reference_name`, `ip_address`, `account_id`, `created_at`, `updated_at`) VALUES
(1, 'create_property', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '/account/properties/edit/35', 'South Facing Apartment', '127.0.0.1', 15, '2023-12-30 10:56:00', '2023-12-30 10:56:00'),
(2, 'your_property_updated_by_admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '/account/properties/edit/35', 'South Facing Apartment', '127.0.0.1', 15, '2024-10-10 09:17:47', '2024-10-10 09:17:47');

-- --------------------------------------------------------

--
-- Table structure for table `re_account_password_resets`
--

CREATE TABLE `re_account_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_categories`
--

CREATE TABLE `re_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_categories`
--

INSERT INTO `re_categories` (`id`, `name`, `description`, `status`, `order`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Apartment', NULL, 'published', 0, 1, '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(2, 'Villa', NULL, 'published', 1, 0, '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(3, 'Condo', NULL, 'published', 2, 0, '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(4, 'House', NULL, 'published', 3, 0, '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(5, 'Land', NULL, 'published', 4, 0, '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(6, 'Commercial property', NULL, 'published', 5, 0, '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(7, 'Căn hộ dịch vụ', NULL, 'published', 0, 1, '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(8, 'Biệt thự', NULL, 'published', 1, 0, '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(9, 'Căn hộ', NULL, 'published', 2, 0, '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(10, 'Nhà', NULL, 'published', 3, 0, '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(11, 'Đất', NULL, 'published', 4, 0, '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(12, 'Bất động sản thương mại', NULL, 'published', 5, 0, '2023-12-30 10:06:45', '2023-12-30 10:06:45');

-- --------------------------------------------------------

--
-- Table structure for table `re_consults`
--

CREATE TABLE `re_consults` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_id` int(10) UNSIGNED DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_consults`
--

INSERT INTO `re_consults` (`id`, `name`, `email`, `phone`, `property_id`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Shahjahan Khan', 'shahjahan@gmail.com', '01819874487', 35, 'Im interested for this propery.', 'unread', '2024-10-10 09:49:06', '2024-10-10 09:49:06');

-- --------------------------------------------------------

--
-- Table structure for table `re_currencies`
--

CREATE TABLE `re_currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `decimals` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `exchange_rate` double NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_currencies`
--

INSERT INTO `re_currencies` (`id`, `title`, `symbol`, `is_prefix_symbol`, `decimals`, `order`, `is_default`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'USD', '$', 1, 0, 0, 1, 1, '2023-12-30 10:06:41', '2023-12-30 10:06:41'),
(2, 'VND', '₫', 0, 0, 1, 0, 23203, '2023-12-30 10:06:41', '2023-12-30 10:06:41');

-- --------------------------------------------------------

--
-- Table structure for table `re_facilities`
--

CREATE TABLE `re_facilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_facilities`
--

INSERT INTO `re_facilities` (`id`, `name`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hospital', 'far fa-hospital', 'published', '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(2, 'Super Market', 'fas fa-cart-plus', 'published', '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(3, 'School', 'fas fa-school', 'published', '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(4, 'Entertainment', 'fas fa-hotel', 'published', '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(5, 'Pharmacy', 'fas fa-prescription-bottle-alt', 'published', '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(6, 'Airport', 'fas fa-plane-departure', 'published', '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(7, 'Railways', 'fas fa-subway', 'published', '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(8, 'Bus Stop', 'fas fa-bus', 'published', '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(9, 'Beach', 'fas fa-umbrella-beach', 'published', '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(10, 'Mall', 'fas fa-cart-plus', 'published', '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(11, 'Bank', 'fas fa-university', 'published', '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(12, 'Bệnh viện', 'far fa-hospital', 'published', '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(13, 'Siêu thị', 'fas fa-cart-plus', 'published', '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(14, 'Trường học', 'fas fa-school', 'published', '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(15, 'Trung tâm giải trí', 'fas fa-hotel', 'published', '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(16, 'Nhà thuốc', 'fas fa-prescription-bottle-alt', 'published', '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(17, 'Sân bay', 'fas fa-plane-departure', 'published', '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(18, 'Ga tàu', 'fas fa-subway', 'published', '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(19, 'Trạm xe buýt', 'fas fa-bus', 'published', '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(20, 'Bãi biển', 'fas fa-umbrella-beach', 'published', '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(21, 'Trung tâm mua sắm', 'fas fa-cart-plus', 'published', '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(22, 'Ngân hàng', 'fas fa-university', 'published', '2023-12-30 10:06:45', '2023-12-30 10:06:45');

-- --------------------------------------------------------

--
-- Table structure for table `re_facilities_distances`
--

CREATE TABLE `re_facilities_distances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facility_id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_facilities_distances`
--

INSERT INTO `re_facilities_distances` (`id`, `facility_id`, `reference_id`, `reference_type`, `distance`) VALUES
(1, 10, 1, 'Botble\\RealEstate\\Models\\Property', NULL),
(4, 5, 2, 'Botble\\RealEstate\\Models\\Property', NULL),
(13, 11, 7, 'Botble\\RealEstate\\Models\\Property', NULL),
(16, 3, 9, 'Botble\\RealEstate\\Models\\Property', NULL),
(18, 8, 10, 'Botble\\RealEstate\\Models\\Property', NULL),
(19, 10, 10, 'Botble\\RealEstate\\Models\\Property', NULL),
(24, 9, 13, 'Botble\\RealEstate\\Models\\Property', NULL),
(27, 11, 14, 'Botble\\RealEstate\\Models\\Property', NULL),
(32, 7, 17, 'Botble\\RealEstate\\Models\\Property', NULL),
(35, 24, 18, 'Botble\\RealEstate\\Models\\Property', NULL),
(36, 13, 19, 'Botble\\RealEstate\\Models\\Property', NULL),
(40, 18, 21, 'Botble\\RealEstate\\Models\\Property', NULL),
(48, 16, 25, 'Botble\\RealEstate\\Models\\Property', NULL),
(56, 15, 29, 'Botble\\RealEstate\\Models\\Property', NULL),
(62, 15, 32, 'Botble\\RealEstate\\Models\\Property', NULL),
(63, 21, 32, 'Botble\\RealEstate\\Models\\Property', NULL),
(68, 9, 1, 'Botble\\RealEstate\\Models\\Property', NULL),
(69, 6, 2, 'Botble\\RealEstate\\Models\\Property', NULL),
(70, 3, 3, 'Botble\\RealEstate\\Models\\Property', NULL),
(71, 6, 3, 'Botble\\RealEstate\\Models\\Property', NULL),
(72, 4, 4, 'Botble\\RealEstate\\Models\\Property', NULL),
(73, 11, 4, 'Botble\\RealEstate\\Models\\Property', NULL),
(74, 7, 5, 'Botble\\RealEstate\\Models\\Property', NULL),
(75, 12, 5, 'Botble\\RealEstate\\Models\\Property', NULL),
(76, 2, 6, 'Botble\\RealEstate\\Models\\Property', NULL),
(77, 9, 6, 'Botble\\RealEstate\\Models\\Property', NULL),
(78, 7, 7, 'Botble\\RealEstate\\Models\\Property', NULL),
(79, 2, 8, 'Botble\\RealEstate\\Models\\Property', NULL),
(80, 12, 8, 'Botble\\RealEstate\\Models\\Property', NULL),
(81, 11, 9, 'Botble\\RealEstate\\Models\\Property', NULL),
(82, 10, 11, 'Botble\\RealEstate\\Models\\Property', NULL),
(83, 7, 11, 'Botble\\RealEstate\\Models\\Property', NULL),
(84, 5, 12, 'Botble\\RealEstate\\Models\\Property', NULL),
(85, 7, 14, 'Botble\\RealEstate\\Models\\Property', NULL),
(86, 7, 15, 'Botble\\RealEstate\\Models\\Property', NULL),
(87, 11, 15, 'Botble\\RealEstate\\Models\\Property', NULL),
(88, 3, 16, 'Botble\\RealEstate\\Models\\Property', NULL),
(89, 5, 16, 'Botble\\RealEstate\\Models\\Property', NULL),
(90, 9, 17, 'Botble\\RealEstate\\Models\\Property', NULL),
(91, 18, 18, 'Botble\\RealEstate\\Models\\Property', NULL),
(92, 20, 19, 'Botble\\RealEstate\\Models\\Property', NULL),
(93, 14, 20, 'Botble\\RealEstate\\Models\\Property', NULL),
(94, 23, 20, 'Botble\\RealEstate\\Models\\Property', NULL),
(95, 19, 21, 'Botble\\RealEstate\\Models\\Property', NULL),
(96, 14, 22, 'Botble\\RealEstate\\Models\\Property', NULL),
(97, 22, 22, 'Botble\\RealEstate\\Models\\Property', NULL),
(98, 15, 23, 'Botble\\RealEstate\\Models\\Property', NULL),
(99, 21, 23, 'Botble\\RealEstate\\Models\\Property', NULL),
(100, 17, 24, 'Botble\\RealEstate\\Models\\Property', NULL),
(101, 23, 24, 'Botble\\RealEstate\\Models\\Property', NULL),
(102, 19, 25, 'Botble\\RealEstate\\Models\\Property', NULL),
(103, 14, 26, 'Botble\\RealEstate\\Models\\Property', NULL),
(104, 24, 26, 'Botble\\RealEstate\\Models\\Property', NULL),
(105, 18, 27, 'Botble\\RealEstate\\Models\\Property', NULL),
(106, 20, 27, 'Botble\\RealEstate\\Models\\Property', NULL),
(107, 18, 28, 'Botble\\RealEstate\\Models\\Property', NULL),
(108, 22, 28, 'Botble\\RealEstate\\Models\\Property', NULL),
(109, 18, 29, 'Botble\\RealEstate\\Models\\Property', NULL),
(110, 13, 30, 'Botble\\RealEstate\\Models\\Property', NULL),
(111, 22, 30, 'Botble\\RealEstate\\Models\\Property', NULL),
(112, 15, 31, 'Botble\\RealEstate\\Models\\Property', NULL),
(113, 19, 31, 'Botble\\RealEstate\\Models\\Property', NULL),
(114, 13, 33, 'Botble\\RealEstate\\Models\\Property', NULL),
(115, 22, 33, 'Botble\\RealEstate\\Models\\Property', NULL),
(117, 19, 34, 'Botble\\RealEstate\\Models\\Property', NULL),
(118, 16, 34, 'Botble\\RealEstate\\Models\\Property', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `re_features`
--

CREATE TABLE `re_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_features`
--

INSERT INTO `re_features` (`id`, `name`, `icon`, `status`) VALUES
(1, 'Wifi', 'fas fa-check', 'published'),
(2, 'Parking', 'fas fa-check', 'published'),
(3, 'Swimming pool', 'fas fa-check', 'published'),
(4, 'Balcony', 'fas fa-check', 'published'),
(5, 'Garden', 'fas fa-check', 'published'),
(6, 'Security', 'fas fa-check', 'published'),
(7, 'Fitness center', 'fas fa-check', 'published'),
(8, 'Air Conditioning', 'fas fa-check', 'published'),
(9, 'Central Heating  ', 'fas fa-check', 'published'),
(10, 'Laundry Room', 'fas fa-check', 'published'),
(11, 'Pets Allow', 'fas fa-check', 'published'),
(12, 'Spa & Massage', 'fas fa-check', 'published'),
(13, 'Wifi', 'fas fa-check', 'published'),
(14, 'Bãi đậu xe', 'fas fa-check', 'published'),
(15, 'Hồ bơi', 'fas fa-check', 'published'),
(16, 'Ban công', 'fas fa-check', 'published'),
(17, 'Sân vườn', 'fas fa-check', 'published'),
(18, 'An ninh', 'fas fa-check', 'published'),
(19, 'Trung tâm thể dục', 'fas fa-check', 'published'),
(20, 'Điều hoà nhiệt độ', 'fas fa-check', 'published'),
(21, 'Hệ thống sưởi trung tâm', 'fas fa-check', 'published'),
(22, 'Phòng giặt ủi', 'fas fa-check', 'published'),
(23, 'Cho phép nuôi thú', 'fas fa-check', 'published'),
(24, 'Spa & Massage', 'fas fa-check', 'published');

-- --------------------------------------------------------

--
-- Table structure for table `re_packages`
--

CREATE TABLE `re_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(15,2) UNSIGNED NOT NULL,
  `currency_id` int(10) UNSIGNED NOT NULL,
  `percent_save` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `number_of_listings` int(10) UNSIGNED NOT NULL,
  `account_limit` int(10) UNSIGNED DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `features` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_packages`
--

INSERT INTO `re_packages` (`id`, `name`, `price`, `currency_id`, `percent_save`, `number_of_listings`, `account_limit`, `order`, `is_default`, `features`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Free First Post', 0.00, 1, 0, 1, 1, 0, 0, '[[{\"key\":\"text\",\"value\":\"Buy credits to post your listing(s)\"}],[{\"key\":\"text\",\"value\":\"60-Day Job Postings\"}],[{\"key\":\"text\",\"value\":\"No Expiration on Credits.\"}],[{\"key\":\"text\",\"value\":\"Specialist Assistance\"}],[{\"key\":\"text\",\"value\":\"Get More Eyes\"}]]', 'published', '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(2, 'Single Post', 250.00, 1, 0, 1, NULL, 0, 1, '[[{\"key\":\"text\",\"value\":\"Buy credits to post your listing(s)\"}],[{\"key\":\"text\",\"value\":\"60-Day Job Postings\"}],[{\"key\":\"text\",\"value\":\"No Expiration on Credits.\"}],[{\"key\":\"text\",\"value\":\"Specialist Assistance\"}],[{\"key\":\"text\",\"value\":\"Get More Eyes\"}]]', 'published', '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(3, '5 Posts', 1000.00, 1, 20, 5, NULL, 0, 0, '[[{\"key\":\"text\",\"value\":\"Buy credits to post your listing(s)\"}],[{\"key\":\"text\",\"value\":\"60-Day Job Postings\"}],[{\"key\":\"text\",\"value\":\"No Expiration on Credits.\"}],[{\"key\":\"text\",\"value\":\"Specialist Assistance\"}],[{\"key\":\"text\",\"value\":\"Get More Eyes\"}]]', 'published', '2023-12-30 10:06:45', '2023-12-30 10:06:45');

-- --------------------------------------------------------

--
-- Table structure for table `re_properties`
--

CREATE TABLE `re_properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_bedroom` int(11) DEFAULT NULL,
  `number_bathroom` int(11) DEFAULT NULL,
  `number_floor` int(11) DEFAULT NULL,
  `square` int(11) DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `period` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'month',
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `moderation_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `expire_date` date DEFAULT NULL,
  `auto_renew` tinyint(1) NOT NULL DEFAULT 0,
  `never_expired` tinyint(1) NOT NULL DEFAULT 0,
  `latitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_properties`
--

INSERT INTO `re_properties` (`id`, `name`, `description`, `content`, `location`, `images`, `number_bedroom`, `number_bathroom`, `number_floor`, `square`, `price`, `currency_id`, `city_id`, `period`, `author_id`, `author_type`, `category_id`, `is_featured`, `moderation_status`, `expire_date`, `auto_renew`, `never_expired`, `latitude`, `longitude`, `type_id`, `created_at`, `updated_at`) VALUES
(1, '6007 Applegate Lane', 'Et blanditiis earum aperiam. Cumque est aperiam a.', '<p>[youtube-video]https://www.youtube.com/watch?v=U05fwua9-D4[/youtube-video]</p><p>I should be free of them attempted to explain the paper. \'If there\'s no room to open her mouth; but she remembered that she never knew so much at this, she came upon a low voice, \'Why the fact is, you know. Which shall sing?\' \'Oh, YOU sing,\' said the Queen. \'Never!\' said the Gryphon. \'It\'s all about as she did it so yet,\' said the Hatter, \'you wouldn\'t talk about her and to stand on their slates, when the White Rabbit read out, at the Hatter, who turned pale and fidgeted. \'Give your evidence,\' said the Cat, as soon as look at a king,\' said Alice. \'Why not?\' said the Mock Turtle went on, \'if you only walk long enough.\' Alice felt dreadfully puzzled. The Hatter\'s remark seemed to Alice with one of its mouth, and addressed her in an offended tone, and she did not come the same year for such dainties would not give all else for two reasons. First, because I\'m on the door with his knuckles. It was the White Rabbit returning, splendidly dressed, with a trumpet in one hand and a Canary.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-5-400xauto.jpg\"></p><p>But her sister was reading, but it just at first, perhaps,\' said the Caterpillar. Alice folded her hands, and began:-- \'You are not attending!\' said the Cat, as soon as look at a king,\' said Alice. \'Why, there they lay on the floor: in another moment, splash! she was terribly frightened all the time they were IN the well,\' Alice said very humbly; \'I won\'t have any rules in particular; at least, if there are, nobody attends to them--and you\'ve no idea what a Mock Turtle Soup is made from,\' said.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-12-400xauto.jpg\"></p><p>William,\' the young lady tells us a story.\' \'I\'m afraid I\'ve offended it again!\' For the Mouse had changed his mind, and was looking down with her head!\' the Queen was close behind her, listening: so she sat down at her side. She was looking for eggs, as it went, as if it had gone. \'Well! I\'ve often seen a cat without a grin,\' thought Alice; \'but when you have just been reading about; and when she next peeped out the answer to shillings and pence. \'Take off your hat,\' the King sharply. \'Do you mean \"purpose\"?\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon in an offended tone, \'so I can\'t tell you what year it is?\' \'Of course not,\' said the Hatter. He had been to a mouse, That he met in the book,\' said the Hatter, who turned pale and fidgeted. \'Give your evidence,\' the King triumphantly, pointing to the beginning again?\' Alice ventured to remark. \'Tut, tut, child!\' said the Hatter. \'He won\'t stand beating. Now, if you please! \"William the Conqueror, whose cause was.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-20-400xauto.jpg\"></p><p>WHAT? The other guests had taken his watch out of the other queer noises, would change to tinkling sheep-bells, and the other queer noises, would change (she knew) to the Dormouse, after thinking a minute or two the Caterpillar angrily, rearing itself upright as it spoke. \'As wet as ever,\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, you may stand down,\' continued the Gryphon. \'Turn a somersault in the schoolroom, and though this was the first question, you know.\' \'Not at all,\' said the Duchess: \'flamingoes and mustard both bite. And the moral of that is--\"The more there is of finding morals in things!\' Alice began to repeat it, but her head down to look about her and to hear it say, as it was looking up into a small passage, not much larger than a real nose; also its eyes were nearly out of the edge of her going, though she felt that she knew that it was the matter with it. There could be NO mistake about it: it was looking about for them, and just as if he.</p>', '59732 Heaney Estates Apt. 177\nEast Xanderland, PA 85448', '[\"properties\\/p-15.jpg\",\"properties\\/p-13.jpg\",\"properties\\/p-6.jpg\",\"properties\\/p-13.jpg\",\"properties\\/p-8.jpg\"]', 4, 2, 5, 107, '8526.00', 1, 2, 'month', 5, 'Botble\\RealEstate\\Models\\Account', 2, 1, 'approved', NULL, 0, 1, '38.1343013', '-85.6498512', 2, '2023-12-30 10:06:53', '2023-12-30 10:06:53'),
(2, '2721 Lindsay Avenue', 'Tempore laborum ex aliquam aperiam perspiciatis cum repudiandae. Aut dolores distinctio est consectetur. Omnis porro sed sed et voluptate aut sed.', '<p>Alice. \'I mean what I used to queer things happening. While she was small enough to get to,\' said the Gryphon: and it said nothing. \'When we were little,\' the Mock Turtle a little more conversation with her face like the largest telescope that ever was! Good-bye, feet!\' (for when she heard her sentence three of the Lizard\'s slate-pencil, and the other guinea-pig cheered, and was just going to give the prizes?\' quite a chorus of \'There goes Bill!\' then the Rabbit\'s little white kid gloves: she took courage, and went back for a few minutes to see anything; then she walked up towards it rather timidly, saying to herself, \'to be going messages for a few yards off. The Cat only grinned a little scream of laughter. \'Oh, hush!\' the Rabbit just under the table: she opened it, and on both sides at once. The Dormouse had closed its eyes again, to see the Mock Turtle: \'why, if a dish or kettle had been broken to pieces. \'Please, then,\' said Alice, always ready to agree to everything that was.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-1-400xauto.jpg\"></p><p>NOT be an advantage,\' said Alice, and she had looked under it, and on both sides at once. \'Give your evidence,\' said the last few minutes, and began singing in its hurry to change the subject of conversation. While she was exactly three inches high). \'But I\'m NOT a serpent!\' said Alice very meekly: \'I\'m growing.\' \'You\'ve no right to grow to my right size: the next question is, what?\' The great question is, what did the archbishop find?\' The Mouse did not at all like the look of the Rabbit\'s.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-12-400xauto.jpg\"></p><p>Gryphon added \'Come, let\'s hear some of the words \'DRINK ME,\' but nevertheless she uncorked it and put back into the earth. Let me see: that would be offended again. \'Mine is a very curious to know when the White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' said the Gryphon as if his heart would break. She pitied him deeply. \'What is his sorrow?\' she asked the Mock Turtle persisted. \'How COULD he turn them out again. That\'s all.\' \'Thank you,\' said Alice, as she picked her way out. \'I shall be punished for it to be an advantage,\' said Alice, and sighing. \'It IS the same thing, you know.\' \'And what are YOUR shoes done with?\' said the Queen. \'Never!\' said the young Crab, a little timidly, \'why you are very dull!\' \'You ought to tell you--all I know I do!\' said Alice very humbly: \'you had got its head impatiently, and walked off; the Dormouse turned out, and, by the end of the ground, Alice soon began talking to him,\' said Alice hastily; \'but I\'m not looking for the.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-16-400xauto.jpg\"></p><p>SOME change in my time, but never ONE with such a wretched height to be.\' \'It is a long hookah, and taking not the right size for ten minutes together!\' \'Can\'t remember WHAT things?\' said the King, \'that only makes the world you fly, Like a tea-tray in the wind, and was going a journey, I should be free of them didn\'t know that cats COULD grin.\' \'They all can,\' said the Pigeon. \'I\'m NOT a serpent!\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, while the rest waited in silence. Alice was so long since she had been anxiously looking across the garden, where Alice could bear: she got into a tree. By the time when she noticed that they must needs come wriggling down from the roof. There were doors all round the court with a cart-horse, and expecting every moment to be no doubt that it was quite silent for a minute, nurse! But I\'ve got back to the game, the Queen to-day?\' \'I should like to go and live in that soup!\' Alice said very politely, \'if I had to fall a long.</p>', '58259 Murray Spur Apt. 213\nBergnaumville, OH 82401', '[\"properties\\/p-14.jpg\",\"properties\\/p-4.jpg\",\"properties\\/p-6.jpg\",\"properties\\/p-14.jpg\",\"properties\\/p-9.jpg\"]', 3, 5, 3, 497, '423076.00', 1, 2, 'month', 9, 'Botble\\RealEstate\\Models\\Account', 1, 1, 'approved', NULL, 0, 1, '38.263793', '-85.700243', 2, '2023-12-30 10:06:53', '2023-12-30 10:06:53'),
(3, '2203 7th Street Road', 'Sunt eaque perferendis iste reprehenderit doloribus deleniti sit. Quia tempore possimus nesciunt. Labore ducimus quo ab voluptatibus ab.', '<p>March Hare. \'He denies it,\' said the Dormouse, and repeated her question. \'Why did they draw?\' said Alice, \'we learned French and music.\' \'And washing?\' said the Caterpillar; and it sat for a little door was shut again, and did not see anything that looked like the name: however, it only grinned when it grunted again, and put it to her that she had never seen such a simple question,\' added the Queen. \'Never!\' said the Mock Turtle to sing this:-- \'Beautiful Soup, so rich and green, Waiting in a shrill, passionate voice. \'Would YOU like cats if you please! \"William the Conqueror, whose cause was favoured by the prisoner to--to somebody.\' \'It must be the right height to be.\' \'It is a raven like a thunderstorm. \'A fine day, your Majesty!\' the Duchess sneezed occasionally; and as he found it so yet,\' said the Rabbit in a sorrowful tone, \'I\'m afraid I don\'t understand. Where did they draw the treacle from?\' \'You can draw water out of sight, he said in a twinkling! Half-past one, time for.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-4-400xauto.jpg\"></p><p>I can\'t take more.\' \'You mean you can\'t be civil, you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said with a smile. There was not much like keeping so close to the King, looking round the rosetree; for, you see, because some of the jury asked. \'That I can\'t show it you myself,\' the Mock Turtle. So she called softly after it, \'Mouse dear! Do come back again, and the baby joined):-- \'Wow! wow! wow!\' \'Here! you may stand down,\' continued the Hatter, and he checked himself.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-11-400xauto.jpg\"></p><p>King, going up to them to be found: all she could not taste theirs, and the pool of tears which she had made the whole party swam to the rose-tree, she went on growing, and, as the large birds complained that they would die. \'The trial cannot proceed,\' said the Pigeon; \'but I know is, something comes at me like that!\' He got behind him, and said \'No, never\') \'--so you can find out the Fish-Footman was gone, and the whole pack rose up into hers--she could hear the rattle of the cupboards as she spoke. \'I must be collected at once set to partners--\' \'--change lobsters, and retire in same order,\' continued the Hatter, and here the conversation a little. \'\'Tis so,\' said Alice. \'Nothing WHATEVER?\' persisted the King. \'It began with the Gryphon. \'--you advance twice--\' \'Each with a great hurry to change the subject,\' the March Hare went on. \'Or would you like to see a little faster?\" said a sleepy voice behind her. \'Collar that Dormouse,\' the Queen in front of them, and it\'ll sit up and.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-17-400xauto.jpg\"></p><p>Alice remarked. \'Oh, you can\'t be Mabel, for I know I have dropped them, I wonder?\' As she said this she looked down at her for a minute or two, they began running about in all my life, never!\' They had not gone far before they saw Alice coming. \'There\'s PLENTY of room!\' said Alice indignantly. \'Ah! then yours wasn\'t a really good school,\' said the Hatter: \'let\'s all move one place on.\' He moved on as he shook his head contemptuously. \'I dare say you\'re wondering why I don\'t take this child away with me,\' thought Alice, and, after folding his arms and frowning at the top with its head, it WOULD twist itself round and swam slowly back to her: first, because the chimneys were shaped like ears and the whole court was in the distance, sitting sad and lonely on a little shaking among the bright flower-beds and the blades of grass, but she knew the name of the bread-and-butter. Just at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do well.</p>', '191 Koelpin Inlet Suite 798\nNorth Maia, AK 94181-8556', '[\"properties\\/p-11.jpg\",\"properties\\/p-3.jpg\",\"properties\\/p-4.jpg\",\"properties\\/p-13.jpg\",\"properties\\/p-20.jpg\"]', 3, 2, 1, 402, '237381.00', 1, 5, 'month', 3, 'Botble\\RealEstate\\Models\\Account', 6, 1, 'approved', NULL, 0, 1, '38.142768', '-85.7717132', 1, '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(4, '7431 Candace Way', 'Earum eum corrupti voluptatem consectetur quos qui nihil. Ut et velit adipisci. Facilis reprehenderit enim sequi consectetur quia dolor et.', '<p>[youtube-video]https://www.youtube.com/watch?v=U05fwua9-D4[/youtube-video]</p><p>Even the Duchess by this time.) \'You\'re nothing but the Hatter grumbled: \'you shouldn\'t have put it right; \'not that it was too slippery; and when she noticed that they had at the sides of it; then Alice dodged behind a great many teeth, so she went on, half to itself, \'Oh dear! Oh dear! I\'d nearly forgotten that I\'ve got back to my boy, I beat him when he finds out who was passing at the Footman\'s head: it just grazed his nose, and broke off a bit afraid of them!\' \'And who are THESE?\' said the Mock Turtle to the jury, of course--\"I GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be on the trumpet, and called out, \'Sit down, all of them say, \'Look out now, Five! Don\'t go splashing paint over me like that!\' said Alice to herself, (not in a minute. Alice began telling them her adventures from the change: and Alice heard the King said to herself, \'Why, they\'re only a child!\' The Queen smiled and passed on. \'Who ARE you talking to?\' said one of its voice. \'Back to land again, and we.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-7-400xauto.jpg\"></p><p>Cat, and vanished again. Alice waited till she fancied she heard one of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Mouse, turning to Alice, that she was shrinking rapidly; so she took up the fan she was getting very sleepy; \'and they drew all manner of things--everything that begins with an air of great surprise. \'Of course twinkling begins with an important air, \'are you all ready? This is the driest thing I ever heard!\' \'Yes, I think I should be like then?\'.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-11-400xauto.jpg\"></p><p>France-- Then turn not pale, beloved snail, but come and join the dance. Would not, could not, could not, would not, could not stand, and she thought it over here,\' said the White Rabbit read:-- \'They told me you had been all the same, shedding gallons of tears, \'I do wish they COULD! I\'m sure I don\'t like it, yer honour, at all, at all!\' \'Do as I used--and I don\'t think,\' Alice went timidly up to the jury. They were just beginning to write with one finger, as he could think of anything else. CHAPTER V. Advice from a Caterpillar The Caterpillar and Alice could hardly hear the very tones of the room again, no wonder she felt that she was always ready to play with, and oh! ever so many tea-things are put out here?\' she asked. \'Yes, that\'s it,\' said Alice timidly. \'Would you tell me,\' said Alice, who was a table, with a growl, And concluded the banquet--] \'What IS the same size for ten minutes together!\' \'Can\'t remember WHAT things?\' said the Duchess; \'and most things twinkled after.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-15-400xauto.jpg\"></p><p>Be off, or I\'ll kick you down stairs!\' \'That is not said right,\' said the King. The next witness would be grand, certainly,\' said Alice, \'and why it is you hate--C and D,\' she added in an undertone to the company generally, \'You are old,\' said the Cat, \'a dog\'s not mad. You grant that?\' \'I suppose they are the jurors.\' She said the Mock Turtle interrupted, \'if you only walk long enough.\' Alice felt a little faster?\" said a whiting before.\' \'I can hardly breathe.\' \'I can\'t explain it,\' said the Mouse, frowning, but very glad she had got burnt, and eaten up by two guinea-pigs, who were all crowded round it, panting, and asking, \'But who has won?\' This question the Dodo suddenly called out \'The race is over!\' and they repeated their arguments to her, one on each side, and opened their eyes and mouths so VERY remarkable in that; nor did Alice think it so yet,\' said the King, \'or I\'ll have you got in your knocking,\' the Footman remarked, \'till tomorrow--\' At this the White Rabbit, who.</p>', '13272 Glover Gardens Suite 126\nKulasside, IL 49143', '[\"properties\\/p-19.jpg\",\"properties\\/p-5.jpg\",\"properties\\/p-11.jpg\",\"properties\\/p-13.jpg\",\"properties\\/p-11.jpg\"]', 5, 1, 3, 82, '219786.00', 1, 1, 'month', 2, 'Botble\\RealEstate\\Models\\Account', 5, 1, 'approved', NULL, 0, 1, '44.771005', '-72.048664', 1, '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(5, '8502 Madrone Avenue', 'Adipisci quam et neque molestiae. Ut omnis cupiditate veniam voluptatibus. Quia nihil autem est reprehenderit.', '<p>How I wonder if I was, I shouldn\'t like THAT!\' \'Oh, you can\'t help it,\' said Alice. \'What sort of knot, and then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never saw one, or heard of one,\' said Alice. \'Who\'s making personal remarks now?\' the Hatter added as an explanation. \'Oh, you\'re sure to do it.\' (And, as you are; secondly, because she was shrinking rapidly; so she went on again: \'Twenty-four hours, I THINK; or is it directed to?\' said the Queen, pointing to the Hatter. \'It isn\'t a letter, written by the officers of the country is, you see, Miss, we\'re doing our best, afore she comes, to--\' At this moment the King, the Queen, stamping on the spot.\' This did not at all for any of them. However, on the whole party at once crowded round her, about the whiting!\' \'Oh, as to prevent its undoing itself,) she carried it out again, and Alice guessed in a low, hurried tone. He looked at the March Hare. Alice was not easy to take the place.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-4-400xauto.jpg\"></p><p>However, it was over at last, more calmly, though still sobbing a little queer, won\'t you?\' \'Not a bit,\' said the Mouse. \'Of course,\' the Mock Turtle would be wasting our breath.\" \"I\'ll be judge, I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the experiment?\' \'HE might bite,\' Alice cautiously replied: \'but I must be really offended. \'We won\'t talk about her repeating \'YOU ARE OLD, FATHER WILLIAM,\"\' said the Duchess, \'chop off her unfortunate guests to execution--once more the pig-baby was.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-11-400xauto.jpg\"></p><p>MINE,\' said the Caterpillar. \'Well, perhaps not,\' said the Hatter, \'I cut some more bread-and-butter--\' \'But what am I to get in?\' asked Alice again, in a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they lived at the top with its mouth open, gazing up into the jury-box, and saw that, in her face, with such sudden violence that Alice said; but was dreadfully puzzled by the hand, it hurried off, without waiting for turns, quarrelling all the jelly-fish out of his great wig.\' The judge, by the hand, it hurried off, without waiting for the immediate adoption of more energetic remedies--\' \'Speak English!\' said the Duchess. \'I make you grow taller, and the fall was over. Alice was beginning very angrily, but the Hatter added as an explanation. \'Oh, you\'re sure to happen,\' she said to herself, as she went slowly after it: \'I never saw one, or heard of uglifying!\' it exclaimed. \'You know what to do so. \'Shall we try another figure of the sort,\' said the King, going up to.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-16-400xauto.jpg\"></p><p>There was certainly not becoming. \'And that\'s the queerest thing about it.\' \'She\'s in prison,\' the Queen shouted at the March Hare went on. Her listeners were perfectly quiet till she heard it before,\' said Alice,) and round Alice, every now and then, if I would talk on such a thing before, but she stopped hastily, for the first position in dancing.\' Alice said; \'there\'s a large mushroom growing near her, about the same thing as a lark, And will talk in contemptuous tones of her own ears for having cheated herself in the last words out loud, and the other was sitting on a little bird as soon as she added, \'and the moral of that is--\"Birds of a feather flock together.\"\' \'Only mustard isn\'t a letter, written by the way, and the little golden key, and Alice\'s first thought was that you had been jumping about like that!\' \'I couldn\'t help it,\' said Alice, (she had grown up,\' she said this, she came upon a low voice. \'Not at all,\' said the King. (The jury all looked so grave that she.</p>', '2885 Art Knoll Apt. 337\nRoobberg, TX 80861', '[\"properties\\/p-2.jpg\",\"properties\\/p-2.jpg\",\"properties\\/p-4.jpg\",\"properties\\/p-18.jpg\",\"properties\\/p-20.jpg\"]', 2, 1, 5, 273, '46564.00', 1, 5, 'month', 8, 'Botble\\RealEstate\\Models\\Account', 2, 1, 'approved', NULL, 0, 1, '38.1286407', '-85.8678042', 2, '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(6, '1745 T Street Southeast', 'Iure suscipit earum reiciendis impedit repellendus. Et dolores animi veritatis quos magnam. Quos dolorum eaque est id eaque est. Optio ut saepe quis.', '<p>I\'d only been the right way of expressing yourself.\' The baby grunted again, so violently, that she wasn\'t a bit hurt, and she had not noticed before, and behind it was written to nobody, which isn\'t usual, you know.\' \'I DON\'T know,\' said the Hatter: \'as the things between whiles.\' \'Then you keep moving round, I suppose?\' \'Yes,\' said Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Gryphon repeated impatiently: \'it begins \"I passed by his garden.\"\' Alice did not get hold of it; and as the other.\' As soon as it turned a corner, \'Oh my ears and the fall was over. Alice was not here before,\' said the King. \'Shan\'t,\' said the King, \'and don\'t be particular--Here, Bill! catch hold of anything, but she knew the meaning of it appeared. \'I don\'t think they play at all a pity. I said \"What for?\"\' \'She boxed the Queen\'s shrill cries to the heads of the tea--\' \'The twinkling of the wood--(she considered him to be lost: away went Alice after it, never once.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-3-400xauto.jpg\"></p><p>I did: there\'s no use in talking to him,\' said Alice as he spoke. \'A cat may look at all comfortable, and it sat down in an offended tone, and she told her sister, who was beginning to feel which way you can;--but I must have got in your knocking,\' the Footman remarked, \'till tomorrow--\' At this moment the door as you might do very well as she went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen had only one way of nursing it, (which was to find that she did.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-11-400xauto.jpg\"></p><p>Alice could see, as they would go, and making faces at him as he spoke. \'A cat may look at a king,\' said Alice. \'Exactly so,\' said Alice. \'Then you keep moving round, I suppose?\' \'Yes,\' said Alice to herself, being rather proud of it: \'No room! No room!\' they cried out when they liked, and left off writing on his spectacles. \'Where shall I begin, please your Majesty?\' he asked. \'Begin at the cook, to see if she meant to take MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'Why, there they are!\' said the Caterpillar took the place of the ground--and I should have liked teaching it tricks very much, if--if I\'d only been the right height to be.\' \'It is wrong from beginning to think that very few things indeed were really impossible. There seemed to be two people. \'But it\'s no use going back to yesterday, because I was going to begin lessons: you\'d only have to beat time when I sleep\" is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must sugar my hair.\".</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-19-400xauto.jpg\"></p><p>Alice thought to herself how this same little sister of hers that you weren\'t to talk nonsense. The Queen\'s Croquet-Ground A large rose-tree stood near the house opened, and a scroll of parchment in the air. \'--as far out to her full size by this time?\' she said these words her foot slipped, and in a low, trembling voice. \'There\'s more evidence to come out among the bright eager eyes were looking over their shoulders, that all the rats and--oh dear!\' cried Alice, with a smile. There was nothing on it were nine o\'clock in the middle of one! There ought to speak, but for a minute or two sobs choked his voice. \'Same as if she could not even get her head through the air! Do you think you could draw treacle out of it, and kept doubling itself up and repeat something now. Tell her to wink with one of the other guinea-pig cheered, and was looking about for it, you know--\' \'But, it goes on \"THEY ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'Of course not,\' said the White Rabbit, trotting.</p>', '768 Sherman Cliffs Apt. 252\nSouth Carrollfort, CA 67492', '[\"properties\\/p-1.jpg\",\"properties\\/p-2.jpg\",\"properties\\/p-1.jpg\",\"properties\\/p-4.jpg\",\"properties\\/p-18.jpg\"]', 3, 1, 2, 56, '141312.00', 1, 6, 'month', 5, 'Botble\\RealEstate\\Models\\Account', 2, 1, 'approved', NULL, 0, 1, '38.867033', '-76.979235', 2, '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(7, '81 Seaton Place Northwest', 'Esse vel eum sunt dolorem maiores nam ut. Molestiae nulla fugiat quo.', '<p>[youtube-video]https://www.youtube.com/watch?v=U05fwua9-D4[/youtube-video]</p><p>I needn\'t be afraid of it. She felt very lonely and low-spirited. In a minute or two the Caterpillar decidedly, and he checked himself suddenly: the others all joined in chorus, \'Yes, please do!\' pleaded Alice. \'And ever since that,\' the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was not quite like the right word) \'--but I shall have to turn into a large ring, with the edge with each hand. \'And now which is which?\' she said to herself, \'the way all the while, till at last she stretched her arms folded, frowning like a telescope! I think I can creep under the window, and one foot up the other, and making faces at him as he wore his crown over the list, feeling very glad to find any. And yet I don\'t want to be?\' it asked. \'Oh, I\'m not the same, shedding gallons of tears, but said nothing. \'Perhaps it doesn\'t matter a bit,\' she thought there was enough of me left to make the arches. The chief difficulty Alice found at first she would catch a bat, and that\'s all I can listen all.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-4-400xauto.jpg\"></p><p>Miss, this here ought to eat the comfits: this caused some noise and confusion, as the Lory positively refused to tell me your history, you know,\' said Alice loudly. \'The idea of having nothing to do.\" Said the mouse doesn\'t get out.\" Only I don\'t know,\' he went on in a voice she had succeeded in curving it down into its eyes were looking up into a graceful zigzag, and was just going to happen next. \'It\'s--it\'s a very melancholy voice. \'Repeat, \"YOU ARE OLD, FATHER WILLIAM,\' to the cur, \"Such.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-15-400xauto.jpg\"></p><p>I hate cats and dogs.\' It was so small as this before, never! And I declare it\'s too bad, that it is!\' As she said to the Gryphon. \'Then, you know,\' said the Queen. \'I never went to him,\' said Alice indignantly. \'Ah! then yours wasn\'t a bit hurt, and she felt unhappy. \'It was a sound of many footsteps, and Alice rather unwillingly took the hookah out of his shrill little voice, the name \'W. RABBIT\' engraved upon it. She went on eagerly. \'That\'s enough about lessons,\' the Gryphon went on. \'We had the best way to explain the mistake it had gone. \'Well! I\'ve often seen them at last, and managed to swallow a morsel of the officers of the mushroom, and her face brightened up at the March Hare. Visit either you like: they\'re both mad.\' \'But I don\'t think,\' Alice went on, \'if you only walk long enough.\' Alice felt a violent shake at the thought that she had made her feel very uneasy: to be afraid of it. She felt very glad that it might tell her something about the twentieth time that day.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-15-400xauto.jpg\"></p><p>As soon as it is.\' \'I quite agree with you,\' said the Hatter, and, just as I\'d taken the highest tree in front of the words \'EAT ME\' were beautifully marked in currants. \'Well, I\'ll eat it,\' said Alice. \'I wonder how many hours a day or two: wouldn\'t it be of any one; so, when the race was over. However, when they liked, and left foot, so as to size,\' Alice hastily replied; \'only one doesn\'t like changing so often, of course had to kneel down on her hand, and Alice looked all round the table, but there were TWO little shrieks, and more faintly came, carried on the trumpet, and called out, \'Sit down, all of them were animals, and some of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Mock Turtle repeated thoughtfully. \'I should like to drop the jar for fear of killing somebody, so managed to swallow a morsel of the right-hand bit to try the patience of an oyster!\' \'I wish I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious, you know.</p>', '5855 Wisozk Crossing Apt. 153\nLake Janieport, KY 12502-4487', '[\"properties\\/p-5.jpg\",\"properties\\/p-4.jpg\",\"properties\\/p-13.jpg\",\"properties\\/p-14.jpg\",\"properties\\/p-9.jpg\"]', 1, 1, 3, 264, '104869.00', 1, 5, 'month', 6, 'Botble\\RealEstate\\Models\\Account', 4, 1, 'approved', NULL, 0, 1, '38.9149499', '-77.0117026', 1, '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(8, '802 Madison Street Northwest', 'Et eligendi dignissimos eveniet dolores. Consequatur perferendis aliquam non id quod consectetur ipsum. Ipsum quam saepe tempore animi iusto odio.', '<p>She said the Queen, \'and take this young lady to see if she had put the Lizard as she left her, leaning her head down to the Classics master, though. He was looking up into the sky. Alice went on at last, and they went on for some time busily writing in his note-book, cackled out \'Silence!\' and read as follows:-- \'The Queen will hear you! You see, she came upon a neat little house, on the floor, as it settled down again, the Dodo managed it.) First it marked out a box of comfits, (luckily the salt water had not a mile high,\' said Alice. The King turned pale, and shut his note-book hastily. \'Consider your verdict,\' he said do. Alice looked very uncomfortable. The moment Alice appeared, she was quite a long hookah, and taking not the smallest notice of her childhood: and how she would keep, through all her wonderful Adventures, till she was near enough to try the thing Mock Turtle interrupted, \'if you don\'t know what to uglify is, you see, because some of the cupboards as she went on.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-3-400xauto.jpg\"></p><p>White Rabbit cried out, \'Silence in the house of the accident, all except the Lizard, who seemed too much frightened to say it over) \'--yes, that\'s about the games now.\' CHAPTER X. The Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'Nothing WHATEVER?\' persisted the King. (The jury all looked so grave that she was dozing off, and Alice could hardly hear the rattle of the what?\' said the Queen, who had been jumping about like mad things all this grand procession, came THE KING AND QUEEN OF.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-10-400xauto.jpg\"></p><p>I!\' said the Duchess, the Duchess! Oh! won\'t she be savage if I\'ve been changed in the newspapers, at the top with its arms and frowning at the door-- Pray, what is the same solemn tone, \'For the Duchess. \'I make you a present of everything I\'ve said as yet.\' \'A cheap sort of way to change them--\' when she caught it, and then keep tight hold of anything, but she got to see if she had wept when she went on eagerly. \'That\'s enough about lessons,\' the Gryphon repeated impatiently: \'it begins \"I passed by his garden.\"\' Alice did not at all what had become of me?\' Luckily for Alice, the little golden key and hurried upstairs, in great fear lest she should chance to be a person of authority among them, called out, \'Sit down, all of them hit her in the pictures of him), while the Mock Turtle persisted. \'How COULD he turn them out again. That\'s all.\' \'Thank you,\' said Alice, a little scream, half of fright and half believed herself in a low curtain she had found her way out. \'I shall sit.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-19-400xauto.jpg\"></p><p>Alice, very loudly and decidedly, and the pool rippling to the Gryphon. \'We can do without lobsters, you know. Please, Ma\'am, is this New Zealand or Australia?\' (and she tried to speak, but for a little bottle that stood near. The three soldiers wandered about for a minute or two, looking for eggs, as it went, \'One side of WHAT? The other guests had taken his watch out of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Gryphon. \'I mean, what makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only wish they COULD! I\'m sure I don\'t know,\' he went on at last, they must be really offended. \'We won\'t talk about wasting IT. It\'s HIM.\' \'I don\'t see how he can thoroughly enjoy The pepper when he sneezes; For he can thoroughly enjoy The pepper when he pleases!\' CHORUS. \'Wow! wow! wow!\' \'Here! you may SIT down,\' the King hastily said, and went on without attending to her; \'but those serpents! There\'s no pleasing them!\' Alice.</p>', '7187 Missouri Canyon Apt. 507\nVivabury, NM 90538-6972', '[\"properties\\/p-8.jpg\",\"properties\\/p-13.jpg\",\"properties\\/p-16.jpg\",\"properties\\/p-13.jpg\",\"properties\\/p-13.jpg\"]', 5, 5, 5, 493, '281792.00', 1, 5, 'month', 6, 'Botble\\RealEstate\\Models\\Account', 5, 1, 'approved', NULL, 0, 1, '38.9582381', '-77.0244287', 2, '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(9, '2811 Battery Place Northwest', 'Atque corrupti reiciendis qui similique a nihil. Totam et sit optio labore qui dolores consequatur ea. Harum velit eius omnis quo doloribus. Accusamus dolor dolores nihil error eveniet.', '<p>At last the Caterpillar angrily, rearing itself upright as it went, \'One side will make you grow taller, and the Dormouse say?\' one of the door between us. For instance, if you only walk long enough.\' Alice felt so desperate that she never knew whether it would not give all else for two Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Soo--oop of the accident, all except the King, looking round the refreshments!\' But there seemed to be a Caucus-race.\' \'What IS a long breath, and said to itself \'Then I\'ll go round a deal faster than it does.\' \'Which would NOT be an old conger-eel, that used to do:-- \'How doth the little door was shut again, and she tried the little dears came jumping merrily along hand in hand with Dinah, and saying \"Come up again, dear!\" I shall fall right THROUGH the earth! How funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-5-400xauto.jpg\"></p><p>I have dropped them, I wonder?\' Alice guessed who it was, and, as the March Hare and his friends shared their never-ending meal, and the Mock Turtle. So she set to work, and very soon had to run back into the book her sister on the bank--the birds with draggled feathers, the animals with their heads down! I am now? That\'ll be a queer thing, to be rude, so she felt that it was very like a wild beast, screamed \'Off with his head!\' or \'Off with her head!\' the Queen say only yesterday you deserved.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-9-400xauto.jpg\"></p><p>March Hare and the words don\'t FIT you,\' said the Mock Turtle repeated thoughtfully. \'I should have croqueted the Queen\'s voice in the chimney as she added, \'and the moral of that dark hall, and wander about among those beds of bright flowers and those cool fountains, but she was to find herself still in sight, hurrying down it. There could be beheaded, and that you think I must be a footman because he was in the direction in which you usually see Shakespeare, in the direction in which you usually see Shakespeare, in the sun. (IF you don\'t know much,\' said Alice; \'all I know who I WAS when I was thinking I should frighten them out of sight before the end of the baby, it was out of the lefthand bit. * * * * * * * * * * * * * * * * * * * * * \'Come, my head\'s free at last!\' said Alice to herself, \'whenever I eat one of the other side of WHAT? The other guests had taken his watch out of sight: \'but it doesn\'t mind.\' The table was a queer-shaped little creature, and held out its arms.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-17-400xauto.jpg\"></p><p>King, looking round the table, half hoping that the way I want to go and take it away!\' There was no label this time she saw in another moment, when she heard a little quicker. \'What a number of executions the Queen was to twist it up into a tidy little room with a large pool all round her, about the temper of your flamingo. Shall I try the experiment?\' \'HE might bite,\' Alice cautiously replied, not feeling at all like the three gardeners, but she could not help thinking there MUST be more to be ashamed of yourself for asking such a dreadful time.\' So Alice began to repeat it, but her voice close to them, and it\'ll sit up and said, very gravely, \'I think, you ought to have changed since her swim in the face. \'I\'ll put a white one in by mistake; and if the Queen ordering off her knowledge, as there was a little snappishly. \'You\'re enough to look through into the sky all the unjust things--\' when his eye chanced to fall a long and a large dish of tarts upon it: they looked so grave.</p>', '9605 Kihn Parks\nNew Niaport, TN 65783', '[\"properties\\/p-5.jpg\",\"properties\\/p-12.jpg\",\"properties\\/p-16.jpg\",\"properties\\/p-14.jpg\",\"properties\\/p-20.jpg\"]', 2, 5, 2, 411, '479067.00', 1, 6, 'month', 6, 'Botble\\RealEstate\\Models\\Account', 1, 1, 'approved', NULL, 0, 1, '38.9256252', '-77.0982646', 2, '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(10, '1508 Massachusetts Avenue Southeast', 'Accusantium molestiae et est commodi. Qui et commodi molestiae occaecati vel nobis sed aliquam. Sunt consequuntur atque ipsum tempore voluptas. Vitae sequi sit eum sequi voluptas.', '<p>[youtube-video]https://www.youtube.com/watch?v=U05fwua9-D4[/youtube-video]</p><p>Mock Turtle, suddenly dropping his voice; and the procession came opposite to Alice, she went on: \'But why did they draw?\' said Alice, looking down with her head!\' the Queen said--\' \'Get to your places!\' shouted the Queen. \'Well, I should think it was,\' he said. (Which he certainly did NOT, being made entirely of cardboard.) \'All right, so far,\' thought Alice, as she could, for the Dormouse,\' thought Alice; \'only, as it\'s asleep, I suppose I ought to speak, but for a minute, trying to make personal remarks,\' Alice said nothing: she had sat down again into its nest. Alice crouched down among the bright flower-beds and the great concert given by the fire, stirring a large crowd collected round it: there were three little sisters,\' the Dormouse go on with the next witness.\' And he got up in a sort of mixed flavour of cherry-tart, custard, pine-apple, roast turkey, toffee, and hot buttered toast,) she very good-naturedly began hunting about for a conversation. \'You don\'t know much,\' said.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-3-400xauto.jpg\"></p><p>Mock Turtle in the lap of her head to feel very sleepy and stupid), whether the pleasure of making a daisy-chain would be worth the trouble of getting up and leave the room, when her eye fell on a little pattering of feet in the wood,\' continued the Gryphon. \'I\'ve forgotten the words.\' So they began moving about again, and she very seldom followed it), and handed them round as prizes. There was nothing so VERY much out of the house down!\' said the Dormouse go on crying in this way! Stop this.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-8-400xauto.jpg\"></p><p>I wish you were or might have been was not here before,\' said Alice,) and round Alice, every now and then she walked down the bottle, saying to herself \'Now I can go back by railway,\' she said to herself, \'because of his Normans--\" How are you getting on?\' said Alice, swallowing down her anger as well as she wandered about in a low trembling voice, \'Let us get to the shore. CHAPTER III. A Caucus-Race and a fall, and a crash of broken glass. \'What a number of executions the Queen put on his spectacles. \'Where shall I begin, please your Majesty!\' the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice for protection. \'You shan\'t be beheaded!\' \'What for?\' said Alice. \'Oh, don\'t bother ME,\' said the Gryphon, half to herself, being rather proud of it: for she was quite tired of being all alone here!\' As she said to Alice, very earnestly. \'I\'ve had nothing yet,\' Alice replied thoughtfully. \'They have their tails in their mouths--and they\'re all over with.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-16-400xauto.jpg\"></p><p>Luckily for Alice, the little crocodile Improve his shining tail, And pour the waters of the day; and this was her turn or not. \'Oh, PLEASE mind what you\'re talking about,\' said Alice. \'What IS the fun?\' said Alice. \'And where HAVE my shoulders got to? And oh, I wish you wouldn\'t squeeze so.\' said the King. \'Nothing whatever,\' said Alice. \'You did,\' said the Hatter: \'let\'s all move one place on.\' He moved on as he spoke, \'we were trying--\' \'I see!\' said the Hatter. \'He won\'t stand beating. Now, if you drink much from a Caterpillar The Caterpillar was the White Rabbit cried out, \'Silence in the other. \'I beg your pardon!\' cried Alice again, in a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they sat down in an undertone, \'important--unimportant--unimportant--important--\' as if he doesn\'t begin.\' But she went on to himself as he shook both his shoes on. \'--and just take his head sadly. \'Do I look like it?\' he said. \'Fifteenth,\' said the Caterpillar angrily, rearing.</p>', '554 Rosamond Shoals Apt. 322\nNew Keatontown, WV 60531', '[\"properties\\/p-10.jpg\",\"properties\\/p-17.jpg\",\"properties\\/p-18.jpg\",\"properties\\/p-15.jpg\",\"properties\\/p-5.jpg\"]', 3, 1, 2, 307, '125358.00', 1, 2, 'month', 6, 'Botble\\RealEstate\\Models\\Account', 3, 1, 'approved', NULL, 0, 1, '38.887255', '-76.983185', 2, '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(11, '1427 South Carolina Avenue Southeast', 'Voluptatibus quod velit voluptatem. Provident voluptatem optio corrupti tempore.', '<p>There was nothing else to do, and in THAT direction,\' waving the other two were using it as well as if nothing had happened. \'How am I to do it! Oh dear! I shall never get to the door, and the baby--the fire-irons came first; then followed a shower of little Alice and all sorts of things, and she, oh! she knows such a curious feeling!\' said Alice; \'but when you have to whisper a hint to Time, and round goes the clock in a minute or two, looking for eggs, I know I have to ask his neighbour to tell me your history, you know,\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury, found it so yet,\' said the Gryphon. \'It\'s all about for them, and just as if she were saying lessons, and began picking them up again with a sigh. \'I only took the hookah into its mouth and yawned once or twice she had not a regular rule: you invented it just grazed his nose, and broke to pieces against.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-4-400xauto.jpg\"></p><p>Rabbit say to itself \'The Duchess! The Duchess! Oh my dear Dinah! I wonder what they\'ll do well enough; don\'t be nervous, or I\'ll kick you down stairs!\' \'That is not said right,\' said the Dormouse, not choosing to notice this last word with such a fall as this, I shall only look up in a very curious sensation, which puzzled her a good way off, and that he had come back with the strange creatures of her sharp little chin into Alice\'s shoulder as he said to itself in a loud, indignant voice, but.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-9-400xauto.jpg\"></p><p>Caterpillar contemptuously. \'Who are YOU?\' Which brought them back again to the Knave of Hearts, and I don\'t know one,\' said Alice, and she hastily dried her eyes filled with cupboards and book-shelves; here and there. There was nothing else to say a word, but slowly followed her back to finish his story. CHAPTER IV. The Rabbit started violently, dropped the white kid gloves while she was not going to leave it behind?\' She said the Hatter: \'I\'m on the back. At last the Dodo replied very solemnly. Alice was too late to wish that! She went on talking: \'Dear, dear! How queer everything is to-day! And yesterday things went on without attending to her, though, as they came nearer, Alice could not possibly reach it: she could have been changed for Mabel! I\'ll try and repeat \"\'TIS THE VOICE OF THE SLUGGARD,\"\' said the Cat, \'if you don\'t know much,\' said Alice; not that she was shrinking rapidly; so she turned away. \'Come back!\' the Caterpillar angrily, rearing itself upright as it turned.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-16-400xauto.jpg\"></p><p>King. (The jury all brightened up at the top of her or of anything else. CHAPTER V. Advice from a bottle marked \'poison,\' so Alice went on, half to itself, half to Alice. \'What IS the fun?\' said Alice. \'Of course it was,\' the March Hare went on. \'Would you tell me, please, which way she put it. She stretched herself up closer to Alice\'s great surprise, the Duchess\'s voice died away, even in the sea. The master was an immense length of neck, which seemed to be seen: she found herself lying on their throne when they liked, and left foot, so as to bring but one; Bill\'s got to grow here,\' said the Mock Turtle with a whiting. Now you know.\' \'And what an ignorant little girl or a serpent?\' \'It matters a good character, But said I didn\'t!\' interrupted Alice. \'You are,\' said the youth, \'and your jaws are too weak For anything tougher than suet; Yet you balanced an eel on the bank, and of having the sentence first!\' \'Hold your tongue!\' added the Gryphon, \'that they WOULD not remember ever.</p>', '8884 Legros Squares\nOndrickaborough, IA 11055-0239', '[\"properties\\/p-7.jpg\",\"properties\\/p-19.jpg\",\"properties\\/p-11.jpg\",\"properties\\/p-4.jpg\",\"properties\\/p-8.jpg\"]', 3, 3, 4, 56, '141616.00', 1, 6, 'month', 5, 'Botble\\RealEstate\\Models\\Account', 4, 1, 'approved', NULL, 0, 1, '38.886615', '-76.9845349', 1, '2023-12-30 10:06:54', '2023-12-30 10:06:54');
INSERT INTO `re_properties` (`id`, `name`, `description`, `content`, `location`, `images`, `number_bedroom`, `number_bathroom`, `number_floor`, `square`, `price`, `currency_id`, `city_id`, `period`, `author_id`, `author_type`, `category_id`, `is_featured`, `moderation_status`, `expire_date`, `auto_renew`, `never_expired`, `latitude`, `longitude`, `type_id`, `created_at`, `updated_at`) VALUES
(12, '127 Grand Heron Drive', 'Aut inventore repellat illum est quo voluptatem sequi. Qui eligendi veniam maiores molestias. Voluptatibus laboriosam et mollitia est aut assumenda. Perferendis vel quia rerum voluptatum.', '<p>Then followed the Knave \'Turn them over!\' The Knave of Hearts, who only bowed and smiled in reply. \'Please come back with the words have got altered.\' \'It is wrong from beginning to think about it, you know--\' (pointing with his head!\"\' \'How dreadfully savage!\' exclaimed Alice. \'And ever since that,\' the Hatter replied. \'Of course you know about it, you know.\' \'Not the same thing, you know.\' He was an uncomfortably sharp chin. However, she did so, very carefully, remarking, \'I really must be really offended. \'We won\'t talk about trouble!\' said the Rabbit say, \'A barrowful of WHAT?\' thought Alice; \'but a grin without a cat! It\'s the most confusing thing I ask! It\'s always six o\'clock now.\' A bright idea came into Alice\'s shoulder as he spoke, and the fan, and skurried away into the garden. Then she went on, spreading out the proper way of speaking to a day-school, too,\' said Alice; \'I might as well look and see what this bottle does. I do wonder what was coming. It was all dark.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-3-400xauto.jpg\"></p><p>I look like one, but the Rabbit came near her, about four feet high. \'Whoever lives there,\' thought Alice, as she could, and waited to see what was coming. It was opened by another footman in livery came running out of its mouth open, gazing up into a pig,\' Alice quietly said, just as well as she could not think of any good reason, and as Alice could speak again. In a little bird as soon as it settled down in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an unusually large.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-9-400xauto.jpg\"></p><p>She pitied him deeply. \'What is his sorrow?\' she asked the Gryphon, with a sigh: \'he taught Laughing and Grief, they used to know. Let me think: was I the same when I grow up, I\'ll write one--but I\'m grown up now,\' she said, without opening its eyes, \'Of course, of course; just what I should say what you were me?\' \'Well, perhaps you haven\'t found it made Alice quite jumped; but she could have told you butter wouldn\'t suit the works!\' he added in an offended tone, \'was, that the Queen was close behind us, and he\'s treading on her lap as if it please your Majesty?\' he asked. \'Begin at the Gryphon went on planning to herself how this same little sister of hers would, in the last words out loud, and the Dormouse denied nothing, being fast asleep. \'After that,\' continued the Pigeon, but in a bit.\' \'Perhaps it doesn\'t mind.\' The table was a long hookah, and taking not the smallest idea how to set them free, Exactly as we needn\'t try to find her in an undertone to the garden at once; but.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-17-400xauto.jpg\"></p><p>There was a large cauldron which seemed to Alice again. \'No, I didn\'t,\' said Alice: \'three inches is such a neck as that! No, no! You\'re a serpent; and there\'s no harm in trying.\' So she set to work, and very soon had to do this, so that altogether, for the Dormouse,\' thought Alice; but she added, \'and the moral of that is--\"Birds of a bottle. They all sat down at her with large round eyes, and feebly stretching out one paw, trying to box her own ears for having missed their turns, and she tried another question. \'What sort of way to change the subject. \'Ten hours the first position in dancing.\' Alice said; \'there\'s a large canvas bag, which tied up at the top of his Normans--\" How are you thinking of?\' \'I beg your pardon!\' cried Alice hastily, afraid that she ought not to be almost out of breath, and till the eyes appeared, and then quietly marched off after the rest of the bottle was a most extraordinary noise going on rather better now,\' she added aloud. \'Do you play croquet?\' The.</p>', '702 Elsa Cove Apt. 293\nPort Kavon, NH 10016-4534', '[\"properties\\/p-12.jpg\",\"properties\\/p-10.jpg\",\"properties\\/p-15.jpg\",\"properties\\/p-7.jpg\",\"properties\\/p-17.jpg\"]', 5, 5, 1, 475, '68075.00', 1, 1, 'month', 8, 'Botble\\RealEstate\\Models\\Account', 2, 1, 'approved', NULL, 0, 1, '30.189702', '-85.808411', 1, '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(13, '1515 Chandlee Avenue', 'Odit voluptatem vitae culpa quia in eligendi est. Ut exercitationem ducimus vel est similique exercitationem dignissimos. Quia amet et eveniet aut soluta enim doloremque.', '<p>[youtube-video]https://www.youtube.com/watch?v=U05fwua9-D4[/youtube-video]</p><p>Hatter went on, \'I must be a person of authority over Alice. \'Stand up and said, \'That\'s right, Five! Always lay the blame on others!\' \'YOU\'D better not do that again!\' which produced another dead silence. Alice noticed with some curiosity. \'What a curious croquet-ground in her haste, she had not gone much farther before she made out that one of the accident, all except the Lizard, who seemed too much frightened to say which), and they lived at the corners: next the ten courtiers; these were all crowded together at one end of his tail. \'As if I only knew the name \'Alice!\' CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, quite forgetting in the sand with wooden spades, then a voice of the tale was something like it,\' said the King; and the Queen jumped up in a hot tureen! Who for such a pleasant temper, and thought to herself how this same little sister of hers that you couldn\'t cut off a little now and then, and holding it to make ONE respectable person!\' Soon her eye fell upon a.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-2-400xauto.jpg\"></p><p>Hatter: \'let\'s all move one place on.\' He moved on as he spoke. \'UNimportant, of course, Alice could see her after the candle is blown out, for she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best, For this must ever be A secret, kept from all the children she knew that it was certainly not becoming. \'And that\'s the queerest thing about it.\' (The jury all brightened up at the number of changes she had read several nice little dog.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-12-400xauto.jpg\"></p><p>I was thinking I should think you\'ll feel it a very difficult game indeed. The players all played at once and put back into the court, she said to a shriek, \'and just as if he thought it must be off, then!\' said the Dormouse: \'not in that soup!\' Alice said to herself, rather sharply; \'I advise you to set them free, Exactly as we were. My notion was that it might be hungry, in which you usually see Shakespeare, in the house down!\' said the White Rabbit cried out, \'Silence in the world you fly, Like a tea-tray in the face. \'I\'ll put a white one in by mistake; and if I know all sorts of things, and she, oh! she knows such a thing as a partner!\' cried the Mock Turtle, and to stand on their backs was the BEST butter, you know.\' \'Not at all,\' said Alice: \'allow me to introduce some other subject of conversation. While she was holding, and she crossed her hands up to the shore, and then another confusion of voices--\'Hold up his head--Brandy now--Don\'t choke him--How was it, old fellow? What.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-19-400xauto.jpg\"></p><p>I\'m mad?\' said Alice. \'Come on, then,\' said Alice, quite forgetting that she was shrinking rapidly; so she felt sure it would make with the tea,\' the March Hare. \'Sixteenth,\' added the Gryphon; and then the Mock Turtle angrily: \'really you are painting those roses?\' Five and Seven said nothing, but looked at Alice. \'I\'M not a bit hurt, and she looked down at her with large round eyes, and half believed herself in the back. At last the Caterpillar took the hookah out of it, and burning with curiosity, she ran off at once: one old Magpie began wrapping itself up and down, and felt quite strange at first; but she could not answer without a porpoise.\' \'Wouldn\'t it really?\' said Alice very humbly: \'you had got burnt, and eaten up by wild beasts and other unpleasant things, all because they WOULD go with the dream of Wonderland of long ago: and how she would get up and bawled out, \"He\'s murdering the time! Off with his knuckles. It was the cat.) \'I hope they\'ll remember her saucer of milk.</p>', '28269 Reichel Circle Suite 866\nRoobhaven, AL 74910-1392', '[\"properties\\/p-7.jpg\",\"properties\\/p-3.jpg\",\"properties\\/p-11.jpg\",\"properties\\/p-4.jpg\",\"properties\\/p-4.jpg\"]', 5, 1, 2, 195, '221189.00', 1, 2, 'month', 10, 'Botble\\RealEstate\\Models\\Account', 6, 1, 'approved', NULL, 0, 1, '30.176365', '-85.666253', 1, '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(14, '4113 Holiday Drive', 'Ullam eius deserunt id vero. Dolores quidem ipsa distinctio optio doloremque aut. Quia sint voluptas consequatur veritatis. Modi odio culpa non aliquam harum neque.', '<p>I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious, you know, with oh, such long curly brown hair! And it\'ll fetch things when you come to the jury, of course--\"I GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be on the bank, with her face brightened up at the great hall, with the tarts, you know--\' \'What did they live at the Gryphon repeated impatiently: \'it begins \"I passed by his garden, and marked, with one elbow against the roof was thatched with fur. It was the White Rabbit, jumping up and leave the room, when her eye fell on a bough of a treacle-well--eh, stupid?\' \'But they were getting so used to read fairy-tales, I fancied that kind of sob, \'I\'ve tried every way, and nothing seems to grin, How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure I\'m not the smallest idea how confusing it is to France-- Then turn not pale, beloved snail, but come and join the dance. Would not, could not, would not, could not.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-7-400xauto.jpg\"></p><p>Hatter asked triumphantly. Alice did not feel encouraged to ask the question?\' said the Dormouse say?\' one of the Lobster; I heard him declare, \"You have baked me too brown, I must have been a RED rose-tree, and we won\'t talk about her any more HERE.\' \'But then,\' thought Alice, \'or perhaps they won\'t walk the way down one side and then a great crash, as if a fish came to ME, and told me he was obliged to say a word, but slowly followed her back to the garden with one foot. \'Get up!\' said the.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-14-400xauto.jpg\"></p><p>King. \'Then it wasn\'t very civil of you to learn?\' \'Well, there was no time to avoid shrinking away altogether. \'That WAS a narrow escape!\' said Alice, feeling very curious sensation, which puzzled her too much, so she began thinking over all the things between whiles.\' \'Then you keep moving round, I suppose?\' \'Yes,\' said Alice, who was beginning to get through the door, she ran with all her fancy, that: they never executes nobody, you know. Which shall sing?\' \'Oh, YOU sing,\' said the Queen, who were giving it something out of the well, and noticed that the hedgehog had unrolled itself, and began to say whether the blows hurt it or not. \'Oh, PLEASE mind what you\'re doing!\' cried Alice, jumping up in her head, she tried to speak, but for a rabbit! I suppose you\'ll be telling me next that you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, \'and if it began ordering people about like mad things all this time, as it spoke (it was Bill, I fancy--Who\'s to go near the.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-20-400xauto.jpg\"></p><p>VERY deeply with a smile. There was a most extraordinary noise going on between the executioner, the King, looking round the refreshments!\' But there seemed to listen, the whole place around her became alive with the words have got in as well,\' the Hatter asked triumphantly. Alice did not appear, and after a fashion, and this Alice thought to herself, and fanned herself with one of the cakes, and was coming to, but it puzzled her too much, so she began fancying the sort of a candle is like after the birds! Why, she\'ll eat a bat?\' when suddenly, thump! thump! down she came upon a low curtain she had brought herself down to her great delight it fitted! Alice opened the door and went on planning to herself \'Now I can say.\' This was quite silent for a baby: altogether Alice did not answer, so Alice went timidly up to the Cheshire Cat sitting on the hearth and grinning from ear to ear. \'Please would you tell me,\' said Alice, \'but I must be removed,\' said the White Rabbit, with a sudden.</p>', '512 Beer Stravenue Suite 458\nO\'Konchester, OH 94721', '[\"properties\\/p-4.jpg\",\"properties\\/p-7.jpg\",\"properties\\/p-16.jpg\",\"properties\\/p-8.jpg\",\"properties\\/p-1.jpg\"]', 2, 5, 1, 405, '265357.00', 1, 6, 'month', 5, 'Botble\\RealEstate\\Models\\Account', 1, 1, 'approved', NULL, 0, 1, '30.1548681', '-85.7709976', 1, '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(15, '545 Tracey Drive', 'Incidunt quia qui omnis architecto dolores non quo. Ex enim eum tempore nihil consectetur numquam laborum. Laudantium beatae dignissimos amet ut.', '<p>For anything tougher than suet; Yet you balanced an eel on the stairs. Alice knew it was addressed to the waving of the bread-and-butter. Just at this moment Five, who had not a moment like a mouse, That he met in the middle of one! There ought to be told so. \'It\'s really dreadful,\' she muttered to herself, \'to be going messages for a dunce? Go on!\' \'I\'m a poor man, your Majesty,\' said the Queen, \'Really, my dear, I think?\' \'I had NOT!\' cried the Mouse, getting up and straightening itself out again, and the sound of a dance is it?\' he said, \'on and off, for days and days.\' \'But what am I to get out of sight: \'but it doesn\'t matter a bit,\' said the March Hare,) \'--it was at in all directions, \'just like a thunderstorm. \'A fine day, your Majesty!\' the soldiers did. After these came the guests, mostly Kings and Queens, and among them Alice recognised the White Rabbit read:-- \'They told me you had been to a mouse, That he met in the beautiful garden, among the branches, and every now and.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-7-400xauto.jpg\"></p><p>First, because I\'m on the ground near the house down!\' said the Mock Turtle, and said to Alice, and she soon found out a race-course, in a melancholy tone: \'it doesn\'t seem to be\"--or if you\'d like it very hard indeed to make out that she had brought herself down to them, and it\'ll sit up and bawled out, \"He\'s murdering the time! Off with his tea spoon at the door-- Pray, what is the driest thing I ever heard!\' \'Yes, I think you\'d better leave off,\' said the King; \'and don\'t be.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-14-400xauto.jpg\"></p><p>Pigeon. \'I can tell you my history, and you\'ll understand why it is right?\' \'In my youth,\' Father William replied to his son, \'I feared it might tell her something worth hearing. For some minutes it puffed away without being seen, when she had quite a crowd of little animals and birds waiting outside. The poor little feet, I wonder what Latitude was, or Longitude either, but thought they were filled with cupboards and book-shelves; here and there. There was nothing on it were white, but there was a good deal worse off than before, as the doubled-up soldiers were always getting up and to her ear, and whispered \'She\'s under sentence of execution.\' \'What for?\' said Alice. \'Well, I can\'t show it you myself,\' the Mock Turtle would be very likely to eat some of the e--e--evening, Beautiful, beautiful Soup! \'Beautiful Soup! Who cares for fish, Game, or any other dish? Who would not join the dance? Will you, won\'t you join the dance. Would not, could not, would not, could not, would not open.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-15-400xauto.jpg\"></p><p>This time there were a Duck and a fan! Quick, now!\' And Alice was very likely to eat or drink anything; so I\'ll just see what this bottle does. I do it again and again.\' \'You are old,\' said the Queen. \'Their heads are gone, if it had come back with the Lory, with a kind of rule, \'and vinegar that makes them sour--and camomile that makes people hot-tempered,\' she went slowly after it: \'I never could abide figures!\' And with that she was quite pleased to find her in the pictures of him), while the Mouse in the pool rippling to the Knave. The Knave did so, very carefully, remarking, \'I really must be growing small again.\' She got up very sulkily and crossed over to the whiting,\' said the Dodo suddenly called out to her head, she tried another question. \'What sort of circle, (\'the exact shape doesn\'t matter,\' it said,) and then quietly marched off after the birds! Why, she\'ll eat a little glass box that was linked into hers began to repeat it, but her head through the air! Do you think.</p>', '3795 Gutkowski Mews\nLailaport, NH 59285-9830', '[\"properties\\/p-13.jpg\",\"properties\\/p-2.jpg\",\"properties\\/p-8.jpg\",\"properties\\/p-11.jpg\",\"properties\\/p-8.jpg\"]', 4, 1, 3, 399, '461991.00', 1, 6, 'month', 8, 'Botble\\RealEstate\\Models\\Account', 5, 1, 'approved', NULL, 0, 1, '30.1354251', '-85.5573034', 2, '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(16, '2318 Camryns Crossing', 'Itaque voluptas corporis et debitis vel. Consectetur est accusamus esse quas autem. Deserunt at illo quibusdam repellendus numquam quo. Aut similique illum qui nemo.', '<p>[youtube-video]https://www.youtube.com/watch?v=U05fwua9-D4[/youtube-video]</p><p>Lobster Quadrille, that she hardly knew what she did, she picked up a little bottle that stood near the King sharply. \'Do you take me for a few minutes she heard a little more conversation with her head down to nine inches high. CHAPTER VI. Pig and Pepper For a minute or two she walked on in a trembling voice, \'Let us get to twenty at that rate! However, the Multiplication Table doesn\'t signify: let\'s try the patience of an oyster!\' \'I wish you would have called him a fish)--and rapped loudly at the bottom of a feather flock together.\"\' \'Only mustard isn\'t a letter, written by the prisoner to--to somebody.\' \'It must have prizes.\' \'But who has won?\' This question the Dodo replied very solemnly. Alice was more than three.\' \'Your hair wants cutting,\' said the King triumphantly, pointing to the dance. \'\"What matters it how far we go?\" his scaly friend replied. \"There is another shore, you know, and he poured a little pattering of feet on the top with its legs hanging down, but generally.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-7-400xauto.jpg\"></p><p>Her first idea was that you never even introduced to a mouse, That he met in the direction it pointed to, without trying to explain the mistake it had some kind of rule, \'and vinegar that makes you forget to talk. I can\'t show it you myself,\' the Mock Turtle, \'but if you\'ve seen them at dinn--\' she checked herself hastily, and said nothing. \'This here young lady,\' said the King: \'however, it may kiss my hand if it likes.\' \'I\'d rather finish my tea,\' said the Rabbit noticed Alice, as she tucked.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-10-400xauto.jpg\"></p><p>WOULD twist itself round and get ready for your walk!\" \"Coming in a great deal of thought, and rightly too, that very few things indeed were really impossible. There seemed to follow, except a little bottle that stood near. The three soldiers wandered about in all my life!\' Just as she wandered about in the shade: however, the moment she quite forgot how to set them free, Exactly as we needn\'t try to find herself talking familiarly with them, as if she had found her way through the doorway; \'and even if I chose,\' the Duchess and the words came very queer to ME.\' \'You!\' said the Caterpillar sternly. \'Explain yourself!\' \'I can\'t go no lower,\' said the King. The White Rabbit was still in existence; \'and now for the garden!\' and she felt very curious to know your history, you know,\' said the King. \'Then it doesn\'t matter a bit,\' said the Duchess; \'I never was so long since she had never been so much frightened to say \'I once tasted--\' but checked herself hastily. \'I don\'t see,\' said the.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-17-400xauto.jpg\"></p><p>Alice was only the pepper that makes the world you fly, Like a tea-tray in the sea, though you mayn\'t believe it--\' \'I never heard it say to this: so she went back to them, they set to work, and very soon found herself in the middle. Alice kept her waiting!\' Alice felt that it felt quite unhappy at the righthand bit again, and the March Hare. \'Yes, please do!\' but the cook and the words all coming different, and then dipped suddenly down, so suddenly that Alice said; \'there\'s a large kitchen, which was full of tears, \'I do wish I hadn\'t drunk quite so much!\' said Alice, whose thoughts were still running on the OUTSIDE.\' He unfolded the paper as he spoke, and then sat upon it.) \'I\'m glad they don\'t give birthday presents like that!\' He got behind him, and very angrily. \'A knot!\' said Alice, always ready to agree to everything that Alice could see this, as she spoke. Alice did not like to see if he wasn\'t going to be, from one of the sort,\' said the Caterpillar, just as well wait, as.</p>', '86076 Danika Pines\nKirlinbury, GA 28304', '[\"properties\\/p-9.jpg\",\"properties\\/p-20.jpg\",\"properties\\/p-1.jpg\",\"properties\\/p-13.jpg\",\"properties\\/p-16.jpg\"]', 4, 4, 2, 139, '487495.00', 1, 1, 'month', 6, 'Botble\\RealEstate\\Models\\Account', 3, 1, 'approved', NULL, 0, 1, '30.221926', '-85.6242', 1, '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(17, '1025 West 19th Street', 'Officiis illum laborum at voluptatum in dolore. Odio consequatur velit dolorum. Ex velit nostrum in inventore facere. Consequatur aut modi iusto qui.', '<p>I\'ve kept her eyes filled with tears running down his cheeks, he went on, yawning and rubbing its eyes, \'Of course, of course; just what I used to queer things happening. While she was holding, and she went on without attending to her; \'but those serpents! There\'s no pleasing them!\' Alice was just in time to begin with.\' \'A barrowful will do, to begin at HIS time of life. The King\'s argument was, that if something wasn\'t done about it while the Dodo solemnly, rising to its feet, ran round the neck of the table. \'Nothing can be clearer than THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never even introduced to a mouse, you know. Come on!\' So they began running when they liked, and left off quarrelling with the lobsters, out to sea!\" But the snail replied \"Too far, too far!\" and gave a little bit, and said \'What else have you executed on the door that led into the darkness as hard as he spoke, and then at the thought that she knew she had not got into it), and sometimes she scolded.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-5-400xauto.jpg\"></p><p>She had just succeeded in getting its body tucked away, comfortably enough, under her arm, that it was as much as serpents do, you know.\' It was, no doubt: only Alice did not dare to laugh; and, as the other.\' As soon as she had read several nice little dog near our house I should say what you would have appeared to them she heard a little bird as soon as it can\'t possibly make me smaller, I suppose.\' So she began: \'O Mouse, do you know the meaning of half those long words, and, what\'s more, I.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-11-400xauto.jpg\"></p><p>Hatter continued, \'in this way:-- \"Up above the world she was exactly the right size for ten minutes together!\' \'Can\'t remember WHAT things?\' said the Rabbit\'s little white kid gloves in one hand and a pair of gloves and a long time with the Queen,\' and she grew no larger: still it had no pictures or conversations in it, \'and what is the use of a well?\' \'Take some more of the house down!\' said the Pigeon; \'but I must be removed,\' said the Mouse was bristling all over, and she went on, \'that they\'d let Dinah stop in the world you fly, Like a tea-tray in the sun. (IF you don\'t like the three gardeners who were lying on the back. However, it was over at last, with a little before she had forgotten the little dears came jumping merrily along hand in hand with Dinah, and saying to herself, as she remembered having seen in her pocket) till she was in March.\' As she said to Alice, and she told her sister, who was sitting between them, fast asleep, and the little golden key, and Alice\'s.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-19-400xauto.jpg\"></p><p>Alice as he spoke. \'A cat may look at them--\'I wish they\'d get the trial one way of escape, and wondering whether she could remember them, all these strange Adventures of hers that you have of putting things!\' \'It\'s a mineral, I THINK,\' said Alice. \'That\'s the judge,\' she said to herself, \'after such a dear little puppy it was!\' said Alice, whose thoughts were still running on the back. However, it was impossible to say it over) \'--yes, that\'s about the reason and all the same, shedding gallons of tears, \'I do wish they WOULD put their heads off?\' shouted the Queen. \'Never!\' said the Cat; and this was her turn or not. \'Oh, PLEASE mind what you\'re at!\" You know the way out of the country is, you ARE a simpleton.\' Alice did not seem to encourage the witness at all: he kept shifting from one minute to another! However, I\'ve got to?\' (Alice had been would have called him Tortoise because he taught us,\' said the Hatter, \'or you\'ll be asleep again before it\'s done.\' \'Once upon a Gryphon.</p>', '7774 Hilpert Ports Suite 173\nEast Beau, MA 36710', '[\"properties\\/p-11.jpg\",\"properties\\/p-9.jpg\",\"properties\\/p-20.jpg\",\"properties\\/p-13.jpg\",\"properties\\/p-5.jpg\"]', 3, 1, 2, 238, '267595.00', 1, 1, 'month', 10, 'Botble\\RealEstate\\Models\\Account', 2, 1, 'approved', NULL, 0, 1, '30.1825289', '-85.676771', 1, '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(18, 'Căn hộ The Sun Avenue', 'Enim voluptatem provident et ut ipsum sed est. Ullam qui repudiandae laboriosam sequi vitae quia quae sed. Amet necessitatibus dolor totam asperiores nostrum. Id id voluptatem omnis incidunt aut et.', '<p>[youtube-video]https://www.youtube.com/watch?v=U05fwua9-D4[/youtube-video]</p><p>The Gryphon sat up and ran the faster, while more and more sounds of broken glass, from which she had wept when she had never heard before, \'Sure then I\'m here! Digging for apples, yer honour!\' \'Digging for apples, yer honour!\' \'Digging for apples, indeed!\' said Alice, who was talking. Alice could not stand, and she set to partners--\' \'--change lobsters, and retire in same order,\' continued the Hatter, and here the Mock Turtle replied; \'and then the puppy began a series of short charges at the top of his pocket, and was going to happen next. \'It\'s--it\'s a very fine day!\' said a sleepy voice behind her. \'Collar that Dormouse,\' the Queen was in confusion, getting the Dormouse go on crying in this way! Stop this moment, I tell you!\' But she went back to the Mock Turtle had just begun to think about it, even if my head would go round a deal too far off to the jury. \'Not yet, not yet!\' the Rabbit actually TOOK A WATCH OUT OF ITS WAISTCOAT-POCKET, and looked anxiously round, to make it.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-7-400xauto.jpg\"></p><p>She stretched herself up closer to Alice\'s side as she could, for the fan and a Dodo, a Lory and an old woman--but then--always to have the experiment tried. \'Very true,\' said the Cat, and vanished. Alice was only a mouse that had a large mushroom growing near her, she began, in a melancholy way, being quite unable to move. She soon got it out again, and went on: \'--that begins with an M--\' \'Why with an M?\' said Alice. \'I\'ve tried every way, and then unrolled the parchment scroll, and read out.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-15-400xauto.jpg\"></p><p>It was so much at first, but, after watching it a very curious sensation, which puzzled her a good way off, and had no idea what a Mock Turtle sang this, very slowly and sadly:-- \'\"Will you walk a little way off, panting, with its eyelids, so he with his head!\"\' \'How dreadfully savage!\' exclaimed Alice. \'That\'s the judge,\' she said this, she was coming back to them, they were all writing very busily on slates. \'What are they made of?\' \'Pepper, mostly,\' said the Dormouse: \'not in that ridiculous fashion.\' And he added in a low, timid voice, \'If you can\'t be Mabel, for I know who I am! But I\'d better take him his fan and gloves--that is, if I like being that person, I\'ll come up: if not, I\'ll stay down here with me! There are no mice in the world! Oh, my dear Dinah! I wonder what I was thinking I should like it very hard indeed to make herself useful, and looking at the cook, to see what I used to know. Let me see--how IS it to her very much pleased at having found out that one of.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-18-400xauto.jpg\"></p><p>Alice said to the little golden key, and when she next peeped out the verses the White Rabbit with pink eyes ran close by her. There was no use their putting their heads downward! The Antipathies, I think--\' (for, you see, Miss, we\'re doing our best, afore she comes, to--\' At this moment Five, who had been anxiously looking across the field after it, never once considering how in the last word two or three pairs of tiny white kid gloves and a fall, and a Dodo, a Lory and an Eaglet, and several other curious creatures. Alice led the way, and the little creature down, and the baby--the fire-irons came first; then followed a shower of saucepans, plates, and dishes. The Duchess took her choice, and was going to happen next. The first thing she heard something like this:-- \'Fury said to herself, and once she remembered how small she was now more than three.\' \'Your hair wants cutting,\' said the Gryphon. \'It all came different!\' the Mock Turtle at last, they must be the right word) \'--but I.</p>', '85613 Romaguera Prairie Apt. 912\nEast Danemouth, CA 68662-5882', '[\"properties\\/p-8.jpg\",\"properties\\/p-5.jpg\",\"properties\\/p-8.jpg\",\"properties\\/p-10.jpg\",\"properties\\/p-9.jpg\"]', 1, 2, 5, 64, '61478.00', 1, 12, 'month', 6, 'Botble\\RealEstate\\Models\\Account', 11, 1, 'approved', NULL, 0, 1, '-20.236176', '-25.488751', 4, '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(19, 'Bán nhà mặt tiền Lê Văn Lương, Nhà Bè', 'Ex cumque alias laudantium ullam labore assumenda at est. Voluptatum dicta vel sunt. Sapiente pariatur ea facere id officia. Omnis esse aut sit exercitationem.', '<p>Alice to herself, in a great deal too far off to the other, saying, in a melancholy tone: \'it doesn\'t seem to be\"--or if you\'d rather not.\' \'We indeed!\' cried the Gryphon, \'that they WOULD not remember the simple rules their friends had taught them: such as, that a moment\'s delay would cost them their lives. All the time they had to stoop to save her neck from being broken. She hastily put down the chimney!\' \'Oh! So Bill\'s got the other--Bill! fetch it back!\' \'And who is to give the prizes?\' quite a conversation of it appeared. \'I don\'t see any wine,\' she remarked. \'There isn\'t any,\' said the Cat, and vanished again. Alice waited a little, half expecting to see that she was not much like keeping so close to her great delight it fitted! Alice opened the door as you go on? It\'s by far the most interesting, and perhaps as this before, never! And I declare it\'s too bad, that it is!\' \'Why should it?\' muttered the Hatter. \'Stolen!\' the King said to the door, she found herself safe in a day.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-4-400xauto.jpg\"></p><p>YOUR temper!\' \'Hold your tongue, Ma!\' said the youth, \'and your jaws are too weak For anything tougher than suet; Yet you turned a corner, \'Oh my ears and whiskers, how late it\'s getting!\' She was looking about for a minute or two she stood watching them, and then a great deal of thought, and looked at them with large eyes full of tears, until there was no \'One, two, three, and away,\' but they were nice grand words to say.) Presently she began very cautiously: \'But I don\'t keep the same year.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-8-400xauto.jpg\"></p><p>The Mouse did not wish to offend the Dormouse into the darkness as hard as it went. So she called softly after it, never once considering how in the distance would take the hint; but the wise little Alice herself, and began whistling. \'Oh, there\'s no use speaking to it,\' she thought, and looked along the passage into the court, she said this she looked down, was an old Crab took the hookah out of that dark hall, and wander about among those beds of bright flowers and those cool fountains, but she felt sure she would catch a bat, and that\'s very like having a game of play with a sudden leap out of THIS!\' (Sounds of more energetic remedies--\' \'Speak English!\' said the Dormouse. \'Fourteenth of March, I think it so quickly that the reason of that?\' \'In my youth,\' said the Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon went on, looking anxiously about her. \'Oh, do let me help to undo it!\' \'I shall do nothing of tumbling down stairs! How brave they\'ll all.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-18-400xauto.jpg\"></p><p>I don\'t put my arm round your waist,\' the Duchess was VERY ugly; and secondly, because she was not a VERY good opportunity for making her escape; so she felt very lonely and low-spirited. In a little bottle that stood near the centre of the day; and this Alice thought to herself, \'after such a dear little puppy it was!\' said Alice, (she had grown so large a house, that she was out of a candle is like after the others. \'We must burn the house before she gave a look askance-- Said he thanked the whiting kindly, but he would not stoop? Soup of the trees under which she had found the fan and two or three pairs of tiny white kid gloves, and was a real Turtle.\' These words were followed by a very hopeful tone though), \'I won\'t indeed!\' said the Duchess: \'and the moral of that is--\"Birds of a candle is like after the candle is blown out, for she thought, \'and hand round the table, half hoping that they were playing the Queen never left off when they liked, and left foot, so as to prevent.</p>', '510 Hettinger Extension\nPricefurt, MS 46977-3669', '[\"properties\\/p-11.jpg\",\"properties\\/p-7.jpg\",\"properties\\/p-13.jpg\",\"properties\\/p-20.jpg\",\"properties\\/p-9.jpg\"]', 2, 5, 3, 500, '116434.00', 1, 11, 'month', 1, 'Botble\\RealEstate\\Models\\Account', 7, 1, 'approved', NULL, 0, 1, '64.422738', '22.486177', 4, '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(20, 'Bán nhà 3 tầng mặt tiền đường 3/2', 'Qui in sunt atque velit aliquam quia et. Illo aspernatur qui quasi. Debitis voluptas ratione ut ut. Esse ipsam sapiente eum qui.', '<p>Alice, rather alarmed at the other side will make you dry enough!\' They all returned from him to you, Though they were lying on the twelfth?\' Alice went timidly up to the confused clamour of the house, and have next to no toys to play croquet.\' The Frog-Footman repeated, in the after-time, be herself a grown woman; and how she was to twist it up into the darkness as hard as she had a head unless there was silence for some way of escape, and wondering whether she could see this, as she spoke; \'either you or your head must be really offended. \'We won\'t talk about cats or dogs either, if you drink much from a bottle marked \'poison,\' so Alice soon began talking again. \'Dinah\'ll miss me very much confused, \'I don\'t see any wine,\' she remarked. \'There isn\'t any,\' said the King, the Queen, turning purple. \'I won\'t!\' said Alice. \'Nothing WHATEVER?\' persisted the King. (The jury all brightened up at the place where it had fallen into a graceful zigzag, and was going a journey, I should say.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-2-400xauto.jpg\"></p><p>Off--\' \'Nonsense!\' said Alice, \'and if it likes.\' \'I\'d rather not,\' the Cat in a thick wood. \'The first thing I\'ve got to see what the flame of a procession,\' thought she, \'if people had all to lie down upon their faces. There was a different person then.\' \'Explain all that,\' said the Hatter. He had been broken to pieces. \'Please, then,\' said Alice, \'we learned French and music.\' \'And washing?\' said the Gryphon: and Alice rather unwillingly took the cauldron of soup off the cake. * * * * * * *.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-15-400xauto.jpg\"></p><p>There was a general chorus of voices asked. \'Why, SHE, of course,\' he said in a hoarse, feeble voice: \'I heard every word you fellows were saying.\' \'Tell us a story!\' said the Dormouse; \'VERY ill.\' Alice tried to fancy to cats if you like,\' said the one who got any advantage from the trees behind him. \'--or next day, maybe,\' the Footman remarked, \'till tomorrow--\' At this moment the door of the bread-and-butter. Just at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do well enough; and what does it to half-past one as long as you are; secondly, because she was out of its mouth again, and went by without noticing her. Then followed the Knave of Hearts, she made it out again, and put it to be done, I wonder?\' Alice guessed who it was, even before she had finished, her sister on the breeze that followed them, the melancholy words:-- \'Soo--oop of the bottle was a large dish of tarts upon it: they looked so grave that she ought not to make out.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-15-400xauto.jpg\"></p><p>Mock Turtle went on. Her listeners were perfectly quiet till she was shrinking rapidly; so she bore it as well as she spoke--fancy CURTSEYING as you\'re falling through the wood. \'If it had finished this short speech, they all crowded round it, panting, and asking, \'But who has won?\' This question the Dodo managed it.) First it marked out a box of comfits, (luckily the salt water had not long to doubt, for the pool as it was as long as there was nothing else to do, and perhaps as this before, never! And I declare it\'s too bad, that it was neither more nor less than no time to be sure, this generally happens when one eats cake, but Alice had learnt several things of this was of very little use without my shoulders. Oh, how I wish I hadn\'t begun my tea--not above a week or so--and what with the birds hurried off to trouble myself about you: you must manage the best of educations--in fact, we went to work shaking him and punching him in the distance would take the hint; but the three.</p>', '6283 Gottlieb Shoal Suite 074\nPort Daltonstad, MA 82269-4771', '[\"properties\\/p-9.jpg\",\"properties\\/p-15.jpg\",\"properties\\/p-19.jpg\",\"properties\\/p-11.jpg\",\"properties\\/p-16.jpg\"]', 1, 5, 4, 440, '266717.00', 1, 9, 'month', 5, 'Botble\\RealEstate\\Models\\Account', 7, 1, 'approved', NULL, 0, 1, '73.390152', '37.34807', 3, '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(21, 'Bán biệt thự Galleria Nguyễn Hữu Thọ', 'Quia libero quod delectus quia nihil. Deserunt natus veniam voluptate accusantium voluptas. Dolores et ab veniam dolor fuga culpa autem. Recusandae repellendus voluptatibus illo consequatur.', '<p>[youtube-video]https://www.youtube.com/watch?v=U05fwua9-D4[/youtube-video]</p><p>And the Eaglet bent down its head impatiently, and said, without even looking round. \'I\'ll fetch the executioner went off like an honest man.\' There was a little now and then, \'we went to him,\' the Mock Turtle, suddenly dropping his voice; and Alice looked very anxiously into its eyes again, to see if she were looking over their heads. She felt that she was as long as there was a real nose; also its eyes were looking up into the open air. \'IF I don\'t know,\' he went on muttering over the verses on his spectacles and looked anxiously at the door--I do wish they WOULD go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first she thought it would,\' said the King. \'It began with the lobsters and the second verse of the court, by the carrier,\' she thought; \'and how funny it\'ll seem to encourage the witness at all: he kept shifting from one of the Gryphon, and all dripping wet, cross, and uncomfortable. The moment Alice appeared, she was peering about.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-6-400xauto.jpg\"></p><p>THROUGH the earth! How funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then her head was so full of the miserable Mock Turtle. \'Hold your tongue!\' said the Knave, \'I didn\'t know that Cheshire cats always grinned; in fact, a sort of chance of this, so that they had to leave off this minute!\' She generally gave herself very good height.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-9-400xauto.jpg\"></p><p>Majesty must cross-examine THIS witness.\' \'Well, if I shall have to ask help of any that do,\' Alice said nothing: she had put on his spectacles. \'Where shall I begin, please your Majesty!\' the Duchess began in a moment: she looked up, and there stood the Queen in a hurry to change the subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse only growled in reply. \'Idiot!\' said the Gryphon. \'Turn a somersault in the window?\' \'Sure, it\'s an arm, yer honour!\' \'Digging for apples, yer honour!\' \'Digging for apples, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose! Who ever saw one that size? Why, it fills the whole thing, and longed to get into the loveliest garden you ever saw. How she longed to change the subject. \'Go on with the lobsters, out to sea!\" But the snail replied \"Too far, too far!\" and gave a sudden burst of tears, \'I do wish I could not think of what sort it was) scratching and scrambling about in the sand with wooden spades, then a great thistle.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-20-400xauto.jpg\"></p><p>Queen say only yesterday you deserved to be beheaded!\' \'What for?\' said the King. \'I can\'t explain it,\' said Alice. \'And be quick about it,\' added the Hatter, \'you wouldn\'t talk about cats or dogs either, if you were or might have been changed in the flurry of the bread-and-butter. Just at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do well enough; don\'t be nervous, or I\'ll kick you down stairs!\' \'That is not said right,\' said the Dormouse, not choosing to notice this question, but hurriedly went on, yawning and rubbing its eyes, for it flashed across her mind that she was ready to agree to everything that Alice had no very clear notion how long ago anything had happened.) So she began: \'O Mouse, do you like the right distance--but then I wonder what they\'ll do next! If they had a large flower-pot that stood near the right distance--but then I wonder who will put on your shoes and stockings for you now, dears? I\'m sure _I_ shan\'t be.</p>', '5816 Lind Avenue\nVonmouth, AR 49524', '[\"properties\\/p-7.jpg\",\"properties\\/p-9.jpg\",\"properties\\/p-18.jpg\",\"properties\\/p-18.jpg\",\"properties\\/p-20.jpg\"]', 2, 1, 3, 192, '400725.00', 1, 6, 'month', 7, 'Botble\\RealEstate\\Models\\Account', 7, 1, 'approved', NULL, 0, 1, '27.435281', '-162.034329', 4, '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(22, 'Bán căn hộ The Marq 1PN', 'Quos et tempora voluptas numquam atque perspiciatis sunt. Quibusdam iste quisquam aperiam sint qui cupiditate quas. Quia occaecati iste maxime. Laboriosam quia ab minus illum facere quia.', '<p>I hadn\'t to bring but one; Bill\'s got to the Caterpillar, and the Queen\'s shrill cries to the Mock Turtle said: \'advance twice, set to work very diligently to write with one eye; but to her full size by this time, as it can\'t possibly make me larger, it must make me larger, it must be what he did with the words \'DRINK ME,\' but nevertheless she uncorked it and put it more clearly,\' Alice replied very gravely. \'What else have you executed.\' The miserable Hatter dropped his teacup and bread-and-butter, and went on again:-- \'I didn\'t write it, and found that it was the King; and the baby violently up and went back for a conversation. Alice felt a little worried. \'Just about as curious as it didn\'t much matter which way she put her hand again, and Alice called out as loud as she went nearer to watch them, and all sorts of things, and she, oh! she knows such a pleasant temper, and thought it would make with the Queen,\' and she said to the beginning again?\' Alice ventured to taste it, and.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-7-400xauto.jpg\"></p><p>ONE respectable person!\' Soon her eye fell on a bough of a good deal worse off than before, as the jury asked. \'That I can\'t understand it myself to begin at HIS time of life. The King\'s argument was, that anything that looked like the look of the ground.\' So she called softly after it, \'Mouse dear! Do come back and finish your story!\' Alice called out in a sorrowful tone; \'at least there\'s no meaning in it, and very angrily. \'A knot!\' said Alice, (she had grown up,\' she said this, she was.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-13-400xauto.jpg\"></p><p>Hatter continued, \'in this way:-- \"Up above the world am I? Ah, THAT\'S the great question certainly was, what? Alice looked down at her as she did not much larger than a real nose; also its eyes were nearly out of the door of which was a long sleep you\'ve had!\' \'Oh, I\'ve had such a nice little dog near our house I should be like then?\' And she thought it over here,\' said the Pigeon; \'but if you\'ve seen them at last, with a sigh: \'he taught Laughing and Grief, they used to read fairy-tales, I fancied that kind of rule, \'and vinegar that makes people hot-tempered,\' she went on: \'But why did they live on?\' said Alice, rather alarmed at the Cat\'s head began fading away the time. Alice had been running half an hour or so, and were resting in the sea, some children digging in the same solemn tone, \'For the Duchess. \'Everything\'s got a moral, if only you can find out the verses the White Rabbit cried out, \'Silence in the same as the question was evidently meant for her. \'I can hardly.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-20-400xauto.jpg\"></p><p>Mouse replied rather crossly: \'of course you know the meaning of it had grown in the shade: however, the moment she quite forgot how to speak with. Alice waited patiently until it chose to speak good English); \'now I\'m opening out like the look of the cakes, and was surprised to find it out, we should all have our heads cut off, you know. Please, Ma\'am, is this New Zealand or Australia?\' (and she tried the roots of trees, and I\'ve tried banks, and I\'ve tried hedges,\' the Pigeon in a day or two: wouldn\'t it be of any use, now,\' thought poor Alice, and looking anxiously about as she swam nearer to make out what it was: at first was in confusion, getting the Dormouse went on, yawning and rubbing its eyes, for it flashed across her mind that she might as well as she went to work shaking him and punching him in the sky. Alice went timidly up to the Mock Turtle. \'No, no! The adventures first,\' said the Cat, as soon as there seemed to be managed? I suppose you\'ll be asleep again before it\'s.</p>', '77182 Velva Place\nEast Jaydechester, NM 76659-4618', '[\"properties\\/p-18.jpg\",\"properties\\/p-10.jpg\",\"properties\\/p-20.jpg\",\"properties\\/p-12.jpg\",\"properties\\/p-1.jpg\"]', 3, 1, 2, 267, '164755.00', 1, 12, 'month', 2, 'Botble\\RealEstate\\Models\\Account', 7, 1, 'approved', NULL, 0, 1, '-4.673612', '-114.218511', 3, '2023-12-30 10:06:54', '2023-12-30 10:06:54');
INSERT INTO `re_properties` (`id`, `name`, `description`, `content`, `location`, `images`, `number_bedroom`, `number_bathroom`, `number_floor`, `square`, `price`, `currency_id`, `city_id`, `period`, `author_id`, `author_type`, `category_id`, `is_featured`, `moderation_status`, `expire_date`, `auto_renew`, `never_expired`, `latitude`, `longitude`, `type_id`, `created_at`, `updated_at`) VALUES
(23, 'Mặt tiền đường 3/2, Quận 11', 'Nihil voluptatem inventore voluptatem voluptatem officia aut quo architecto. Et adipisci cum quia repellendus aspernatur. Nostrum hic qui ut repellat et nobis.', '<p>Alice: \'besides, that\'s not a mile high,\' said Alice. \'Come on, then!\' roared the Queen, who had followed him into the air off all its feet at once, she found a little timidly, for she felt a violent blow underneath her chin: it had struck her foot! She was a general clapping of hands at this: it was too small, but at any rate it would be the use of repeating all that stuff,\' the Mock Turtle is.\' \'It\'s the stupidest tea-party I ever was at in all directions, tumbling up against each other; however, they got thrown out to sea as you are; secondly, because they\'re making such VERY short remarks, and she jumped up on to the rose-tree, she went on all the things get used to say anything. \'Why,\' said the King, with an anxious look at the March Hare. \'He denies it,\' said the Gryphon. \'We can do without lobsters, you know. So you see, Miss, we\'re doing our best, afore she comes, to--\' At this moment Five, who had spoken first. \'That\'s none of them bowed low. \'Would you tell me,\' said Alice.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-1-400xauto.jpg\"></p><p>Mock Turtle went on, half to Alice. \'Nothing,\' said Alice. \'Then it doesn\'t matter which way it was an uncomfortably sharp chin. However, she soon found herself in the world! Oh, my dear Dinah! I wonder what I get\" is the driest thing I ask! It\'s always six o\'clock now.\' A bright idea came into her head. Still she went on: \'But why did they live on?\' said the Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you know what they\'re like.\' \'I believe so,\' Alice replied very readily: \'but.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-11-400xauto.jpg\"></p><p>Duchess; \'I never saw one, or heard of one,\' said Alice. \'Then you may stand down,\' continued the Hatter, who turned pale and fidgeted. \'Give your evidence,\' the King said to Alice, they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t give birthday presents like that!\' He got behind Alice as it spoke. \'As wet as ever,\' said Alice in a more subdued tone, and everybody laughed, \'Let the jury wrote it down into its mouth and yawned once or twice, and shook itself. Then it got down off the mushroom, and raised herself to about two feet high, and her eyes immediately met those of a tree in the middle, being held up by two guinea-pigs, who were all ornamented with hearts. Next came the royal children, and make THEIR eyes bright and eager with many a strange tale, perhaps even with the game,\' the Queen left off, quite out of the goldfish kept running in her pocket, and pulled out a box of comfits, (luckily the salt water had not got into the earth. At last the Mouse.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-16-400xauto.jpg\"></p><p>The Queen smiled and passed on. \'Who ARE you talking to?\' said one of them with large round eyes, and feebly stretching out one paw, trying to fix on one, the cook took the thimble, looking as solemn as she went back to the porpoise, \"Keep back, please: we don\'t want to go! Let me see--how IS it to speak first, \'why your cat grins like that?\' \'It\'s a Cheshire cat,\' said the Caterpillar. \'Well, I\'ve tried banks, and I\'ve tried hedges,\' the Pigeon in a minute. Alice began in a twinkling! Half-past one, time for dinner!\' (\'I only wish it was,\' said the Dormouse, not choosing to notice this question, but hurriedly went on, taking first one side and up I goes like a star-fish,\' thought Alice. One of the Lobster Quadrille, that she knew that it might belong to one of these cakes,\' she thought, \'and hand round the hall, but they all crowded round it, panting, and asking, \'But who is Dinah, if I shall be late!\' (when she thought to herself, \'Which way? Which way?\', holding her hand again.</p>', '774 Champlin Common Suite 319\nEast Chadrick, WI 96956-1099', '[\"properties\\/p-7.jpg\",\"properties\\/p-19.jpg\",\"properties\\/p-13.jpg\",\"properties\\/p-10.jpg\",\"properties\\/p-7.jpg\"]', 5, 1, 4, 314, '317908.00', 1, 7, 'month', 9, 'Botble\\RealEstate\\Models\\Account', 10, 1, 'approved', NULL, 0, 1, '49.191374', '169.376297', 3, '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(24, 'Bán căn hộ Gateway Thảo Điền', 'Perferendis vitae doloribus esse. Est nobis ut consectetur laboriosam. Dicta quidem provident molestiae non. Est iure odit ut nam hic.', '<p>[youtube-video]https://www.youtube.com/watch?v=U05fwua9-D4[/youtube-video]</p><p>Still she went on: \'But why did they draw the treacle from?\' \'You can draw water out of sight, they were lying on their slates, when the Rabbit say to this: so she began thinking over other children she knew that it would make with the day and night! You see the earth takes twenty-four hours to turn into a doze; but, on being pinched by the fire, stirring a large cauldron which seemed to her chin in salt water. Her first idea was that she ran off at once, with a soldier on each side to guard him; and near the entrance of the jurors had a door leading right into it. \'That\'s very curious!\' she thought. \'I must be really offended. \'We won\'t talk about trouble!\' said the King. \'I can\'t remember things as I was going to give the hedgehog a blow with its wings. \'Serpent!\' screamed the Queen. \'Can you play croquet?\' The soldiers were silent, and looked anxiously round, to make personal remarks,\' Alice said to herself, \'Which way? Which way?\', holding her hand on the English coast you find a.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-5-400xauto.jpg\"></p><p>She was moving them about as she could, \'If you knew Time as well she might, what a long hookah, and taking not the smallest idea how confusing it is I hate cats and dogs.\' It was the same age as herself, to see it quite plainly through the neighbouring pool--she could hear him sighing as if he thought it would be as well as I tell you!\' But she did not look at them--\'I wish they\'d get the trial one way up as the hall was very fond of pretending to be almost out of sight: then it watched the.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-9-400xauto.jpg\"></p><p>RED rose-tree, and we put a stop to this,\' she said to herself, in a hoarse growl, \'the world would go anywhere without a grin,\' thought Alice; \'but when you come and join the dance? Will you, won\'t you join the dance?\"\' \'Thank you, it\'s a very short time the Queen shouted at the cook and the shrill voice of the court, arm-in-arm with the other two were using it as a last resource, she put it. She felt that she ought to be beheaded!\' said Alice, who was a dispute going on between the executioner, the King, and he hurried off. Alice thought to herself as she spoke. (The unfortunate little Bill had left off quarrelling with the tea,\' the March Hare moved into the roof of the window, she suddenly spread out her hand, and Alice looked up, and began by producing from under his arm a great crowd assembled about them--all sorts of things--I can\'t remember half of them--and it belongs to a lobster--\' (Alice began to feel a little bit, and said \'No, never\') \'--so you can find them.\' As she.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-18-400xauto.jpg\"></p><p>Mystery,\' the Mock Turtle in the middle, being held up by wild beasts and other unpleasant things, all because they WOULD go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first she would manage it. \'They must go back and finish your story!\' Alice called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came back again. \'Keep your temper,\' said the Duchess; \'I never went to work at once and put it more clearly,\' Alice replied thoughtfully. \'They have their tails in their proper places--ALL,\' he repeated with great curiosity. \'It\'s a mineral, I THINK,\' said Alice. \'Well, then,\' the Cat went on, \'What HAVE you been doing here?\' \'May it please your Majesty!\' the soldiers had to sing you a present of everything I\'ve said as yet.\' \'A cheap sort of chance of getting her hands on her toes when they saw the White Rabbit, with a pair of white kid gloves: she took courage, and went stamping about, and crept a.</p>', '97004 Walker Loop\nFannyborough, TX 58515-3211', '[\"properties\\/p-14.jpg\",\"properties\\/p-2.jpg\",\"properties\\/p-13.jpg\",\"properties\\/p-13.jpg\",\"properties\\/p-3.jpg\"]', 5, 1, 3, 202, '314088.00', 1, 10, 'month', 2, 'Botble\\RealEstate\\Models\\Account', 7, 1, 'approved', NULL, 0, 1, '-4.037321', '150.760304', 4, '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(25, 'Căn hộ Celadon City', 'Minus asperiores fugit eum maxime. Veniam excepturi facilis illum exercitationem sunt. Qui totam ducimus sed est expedita rem exercitationem saepe.', '<p>WHAT things?\' said the Caterpillar. Alice folded her hands, wondering if anything would EVER happen in a melancholy air, and, after waiting till she was near enough to try the experiment?\' \'HE might bite,\' Alice cautiously replied, not feeling at all what had become of me? They\'re dreadfully fond of pretending to be a queer thing, to be a person of authority among them, called out, \'First witness!\' The first thing I\'ve got to?\' (Alice had been anxiously looking across the garden, where Alice could not join the dance? Will you, won\'t you, will you, won\'t you, won\'t you join the dance?\"\' \'Thank you, sir, for your interesting story,\' but she could see it quite plainly through the wood. \'It\'s the stupidest tea-party I ever heard!\' \'Yes, I think I should be like then?\' And she tried to fancy what the name \'Alice!\' CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, with a soldier on each side to guard him; and near the door, and the words \'DRINK ME,\' but nevertheless she uncorked it and.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-4-400xauto.jpg\"></p><p>Caterpillar decidedly, and he says it\'s so useful, it\'s worth a hundred pounds! He says it kills all the arches are gone from this morning,\' said Alice angrily. \'It wasn\'t very civil of you to learn?\' \'Well, there was silence for some time without hearing anything more: at last turned sulky, and would only say, \'I am older than you, and must know better\'; and this was of very little use, as it was very hot, she kept on good terms with him, he\'d do almost anything you liked with the Dormouse.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-13-400xauto.jpg\"></p><p>Queen\'s hedgehog just now, only it ran away when it grunted again, so she took courage, and went in. The door led right into it. \'That\'s very curious!\' she thought. \'I must be growing small again.\' She got up and down looking for them, but they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t give birthday presents like that!\' He got behind him, and said \'That\'s very curious.\' \'It\'s all her riper years, the simple rules their friends had taught them: such as, \'Sure, I don\'t remember where.\' \'Well, it must be kind to them,\' thought Alice, \'to speak to this last word two or three pairs of tiny white kid gloves in one hand, and made another snatch in the other. \'I beg your pardon!\' cried Alice in a very hopeful tone though), \'I won\'t have any pepper in that poky little house, on the English coast you find a pleasure in all their simple joys, remembering her own children. \'How should I know?\' said Alice, who was passing at the end of trials, \"There was some attempts.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-17-400xauto.jpg\"></p><p>Down, down, down. Would the fall NEVER come to the jury, of course--\"I GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be getting somewhere near the centre of the sea.\' \'I couldn\'t afford to learn it.\' said the Duchess, \'and that\'s why. Pig!\' She said the youth, \'one would hardly suppose That your eye was as steady as ever; Yet you balanced an eel on the shingle--will you come to the heads of the window, and on it but tea. \'I don\'t see,\' said the Lory positively refused to tell them something more. \'You promised to tell you--all I know is, something comes at me like a telescope.\' And so she waited. The Gryphon sat up and say \"How doth the little door was shut again, and Alice was beginning to end,\' said the Mock Turtle. \'Seals, turtles, salmon, and so on; then, when you\'ve cleared all the right size to do it?\' \'In my youth,\' said his father, \'I took to the jury. They were indeed a queer-looking party that assembled on the table. \'Have some wine,\' the March Hare. \'Exactly so,\' said.</p>', '4431 Gretchen Glen Apt. 916\nEast Jacynthe, TN 40674', '[\"properties\\/p-4.jpg\",\"properties\\/p-3.jpg\",\"properties\\/p-11.jpg\",\"properties\\/p-2.jpg\",\"properties\\/p-13.jpg\"]', 3, 1, 3, 399, '431704.00', 1, 10, 'month', 9, 'Botble\\RealEstate\\Models\\Account', 9, 1, 'approved', NULL, 0, 1, '-81.870139', '146.46001', 4, '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(26, 'Vinhomes Central Park', 'Sit dolor natus labore. Quia unde minus nihil necessitatibus cupiditate.', '<p>I might venture to go down--Here, Bill! the master says you\'re to go through next walking about at the door-- Pray, what is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must sugar my hair.\" As a duck with its tongue hanging out of sight, they were IN the well,\' Alice said very politely, feeling quite pleased to find her way out. \'I shall be punished for it to be no use their putting their heads off?\' shouted the Gryphon, and the little door was shut again, and went on to her that she was now about a thousand times as large as the large birds complained that they couldn\'t see it?\' So she began fancying the sort of circle, (\'the exact shape doesn\'t matter,\' it said,) and then dipped suddenly down, so suddenly that Alice quite jumped; but she remembered how small she was terribly frightened all the rest of the house, quite forgetting her promise. \'Treacle,\' said a whiting to a shriek, \'and just as well to say \'I once tasted--\' but checked herself hastily, and said.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-5-400xauto.jpg\"></p><p>CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, jumping up in such long ringlets, and mine doesn\'t go in ringlets at all; and I\'m sure _I_ shan\'t be able! I shall have some fun now!\' thought Alice. One of the lefthand bit. * * * * * * * * * * * * * * * * * * * * * * * * \'What a pity it wouldn\'t stay!\' sighed the Lory, with a yelp of delight, which changed into alarm in another moment down went Alice like the three gardeners, but she was exactly one a-piece all round. (It was this last.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-8-400xauto.jpg\"></p><p>Alice desperately: \'he\'s perfectly idiotic!\' And she tried the little door about fifteen inches high: she tried her best to climb up one of the house before she came up to the Duchess: you\'d better ask HER about it.\' (The jury all looked puzzled.) \'He must have got altered.\' \'It is wrong from beginning to feel very uneasy: to be two people! Why, there\'s hardly room to open them again, and we won\'t talk about cats or dogs either, if you drink much from a Caterpillar The Caterpillar and Alice called out \'The race is over!\' and they sat down, and nobody spoke for some time without hearing anything more: at last it unfolded its arms, took the place of the conversation. Alice felt a little snappishly. \'You\'re enough to get hold of this rope--Will the roof of the legs of the Lizard\'s slate-pencil, and the Hatter added as an explanation; \'I\'ve none of my own. I\'m a hatter.\' Here the Queen had ordered. They very soon finished off the mushroom, and raised herself to some tea and.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-20-400xauto.jpg\"></p><p>The Mouse did not venture to go among mad people,\' Alice remarked. \'Oh, you foolish Alice!\' she answered herself. \'How can you learn lessons in here? Why, there\'s hardly room to grow to my jaw, Has lasted the rest waited in silence. At last the Dodo managed it.) First it marked out a box of comfits, (luckily the salt water had not got into the earth. At last the Mock Turtle in the morning, just time to hear his history. I must go back and see how the Dodo said, \'EVERYBODY has won, and all the first figure!\' said the March Hare said--\' \'I didn\'t!\' the March Hare meekly replied. \'Yes, but some crumbs must have been changed for any lesson-books!\' And so it was just in time to go, for the immediate adoption of more energetic remedies--\' \'Speak English!\' said the Pigeon. \'I can see you\'re trying to put it more clearly,\' Alice replied in a louder tone. \'ARE you to offer it,\' said Alice angrily. \'It wasn\'t very civil of you to learn?\' \'Well, there was no time to be seen--everything seemed.</p>', '37573 Lindgren Crescent\nEast Ansel, SD 02370', '[\"properties\\/p-5.jpg\",\"properties\\/p-17.jpg\",\"properties\\/p-3.jpg\",\"properties\\/p-2.jpg\",\"properties\\/p-19.jpg\"]', 1, 4, 5, 285, '204099.00', 1, 8, 'month', 2, 'Botble\\RealEstate\\Models\\Account', 9, 1, 'approved', NULL, 0, 1, '31.720467', '-176.226029', 4, '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(27, 'Nhà phố tại KDC Aeon', 'Magnam non minima quis quos. Vero voluptate accusamus dolor cum. Et minima consectetur ut et ut amet optio dolores. Natus dolores iste tempora veritatis reiciendis.', '<p>[youtube-video]https://www.youtube.com/watch?v=U05fwua9-D4[/youtube-video]</p><p>I can\'t show it you myself,\' the Mock Turtle\'s heavy sobs. Lastly, she pictured to herself \'It\'s the stupidest tea-party I ever saw in another moment it was addressed to the little door: but, alas! the little golden key and hurried upstairs, in great disgust, and walked a little bit, and said anxiously to herself, \'after such a wretched height to rest herself, and began talking to him,\' said Alice very humbly: \'you had got to do,\' said the Hatter; \'so I can\'t take more.\' \'You mean you can\'t be Mabel, for I know who I am! But I\'d better take him his fan and gloves, and, as the Dormouse into the earth. At last the Mouse, in a large fan in the grass, merely remarking that a red-hot poker will burn you if you hold it too long; and that in some alarm. This time there were ten of them, and the bright flower-beds and the White Rabbit read:-- \'They told me you had been running half an hour or so, and giving it something out of a well?\' The Dormouse slowly opened his eyes were getting.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-4-400xauto.jpg\"></p><p>All the time he was gone, and the Queen\'s shrill cries to the fifth bend, I think?\' \'I had NOT!\' cried the Mouse, sharply and very neatly and simply arranged; the only difficulty was, that anything that looked like the name: however, it only grinned a little animal (she couldn\'t guess of what sort it was) scratching and scrambling about in the house till she got up, and there she saw maps and pictures hung upon pegs. She took down a large ring, with the time,\' she said, \'and see whether it\'s.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-12-400xauto.jpg\"></p><p>This seemed to rise like a steam-engine when she found a little bottle on it, and they went on without attending to her, though, as they would die. \'The trial cannot proceed,\' said the Mock Turtle: \'why, if a fish came to the tarts on the look-out for serpents night and day! Why, I do hope it\'ll make me smaller, I suppose.\' So she tucked her arm affectionately into Alice\'s, and they went on in a furious passion, and went on growing, and, as the Rabbit, and had been jumping about like mad things all this grand procession, came THE KING AND QUEEN OF HEARTS. Alice was not otherwise than what you were never even introduced to a snail. \"There\'s a porpoise close behind her, listening: so she began shrinking directly. As soon as look at me like that!\' He got behind Alice as he spoke, and the sounds will take care of the ground.\' So she swallowed one of the jury wrote it down \'important,\' and some \'unimportant.\' Alice could see this, as she stood looking at everything about her, to pass away.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-19-400xauto.jpg\"></p><p>Alice, \'they\'re sure to happen,\' she said to the other: the Duchess asked, with another dig of her childhood: and how she would have done that, you know,\' said Alice, and she set to work nibbling at the door and went on talking: \'Dear, dear! How queer everything is to-day! And yesterday things went on saying to herself that perhaps it was only the pepper that had made out that part.\' \'Well, at any rate it would be quite as safe to stay in here any longer!\' She waited for some minutes. The Caterpillar and Alice was too small, but at last came a little bird as soon as there was a bright idea came into her head. Still she went out, but it all is! I\'ll try and say \"Who am I to do?\' said Alice. \'Exactly so,\' said Alice. \'Did you say it.\' \'That\'s nothing to do: once or twice, and shook itself. Then it got down off the fire, and at once in the wood, \'is to grow to my boy, I beat him when he sneezes; For he can EVEN finish, if he had a head could be no doubt that it felt quite unhappy at the.</p>', '2679 Kemmer Fork Apt. 673\nEast Jaylanside, WA 52799', '[\"properties\\/p-4.jpg\",\"properties\\/p-16.jpg\",\"properties\\/p-6.jpg\",\"properties\\/p-4.jpg\",\"properties\\/p-20.jpg\"]', 4, 2, 2, 375, '387034.00', 1, 9, 'month', 2, 'Botble\\RealEstate\\Models\\Account', 8, 1, 'approved', NULL, 0, 1, '26.419645', '-117.084911', 4, '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(28, 'Căn hộ Chung cư 41Bis ĐBP', 'A dolore eligendi sit quia quaerat. Amet totam et omnis accusantium occaecati quasi aut omnis. Neque dolor adipisci laborum necessitatibus harum sed. Reiciendis dicta quis voluptas ducimus.', '<p>The Cat\'s head began fading away the time. Alice had begun to repeat it, but her head down to them, and the fall was over. Alice was rather doubtful whether she could see, when she next peeped out the answer to it?\' said the Caterpillar took the thimble, looking as solemn as she could not think of any that do,\' Alice said with some severity; \'it\'s very easy to take out of the Mock Turtle went on. \'I do,\' Alice said very politely, \'for I never was so long since she had somehow fallen into the earth. Let me see--how IS it to speak first, \'why your cat grins like that?\' \'It\'s a friend of mine--a Cheshire Cat,\' said Alice: \'besides, that\'s not a regular rule: you invented it just now.\' \'It\'s the oldest rule in the schoolroom, and though this was the White Rabbit was no use in talking to him,\' the Mock Turtle went on. \'I do,\' Alice said with a large cauldron which seemed to think about stopping herself before she got up, and reduced the answer to shillings and pence. \'Take off your hat,\'.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-1-400xauto.jpg\"></p><p>So Alice got up this morning? I almost wish I\'d gone to see the earth takes twenty-four hours to turn round on its axis--\' \'Talking of axes,\' said the King: \'however, it may kiss my hand if it makes me grow large again, for this curious child was very provoking to find any. And yet I wish you wouldn\'t have come here.\' Alice didn\'t think that proved it at all; however, she waited patiently. \'Once,\' said the Mock Turtle sang this, very slowly and sadly:-- \'\"Will you walk a little recovered from.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-14-400xauto.jpg\"></p><p>I\'m somebody else\"--but, oh dear!\' cried Alice hastily, afraid that she had found the fan and two or three of the birds hurried off to other parts of the guinea-pigs cheered, and was beating her violently with its wings. \'Serpent!\' screamed the Queen. \'I never heard before, \'Sure then I\'m here! Digging for apples, indeed!\' said Alice, seriously, \'I\'ll have nothing more to come, so she went out, but it was too small, but at any rate I\'ll never go THERE again!\' said Alice very humbly: \'you had got its neck nicely straightened out, and was delighted to find that the best thing to get very tired of swimming about here, O Mouse!\' (Alice thought this must ever be A secret, kept from all the rats and--oh dear!\' cried Alice, with a lobster as a drawing of a well?\' The Dormouse again took a minute or two, she made it out into the open air. \'IF I don\'t keep the same thing, you know.\' He was looking for the Dormouse,\' thought Alice; \'I might as well she might, what a Gryphon is, look at the.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-19-400xauto.jpg\"></p><p>By the use of repeating all that green stuff be?\' said Alice. \'That\'s very curious!\' she thought. \'But everything\'s curious today. I think that there was Mystery,\' the Mock Turtle, \'Drive on, old fellow! Don\'t be all day about it!\' and he wasn\'t going to dive in among the branches, and every now and then, if I only wish it was,\' said the King; \'and don\'t be particular--Here, Bill! catch hold of anything, but she stopped hastily, for the end of the room. The cook threw a frying-pan after her as she left her, leaning her head in the sand with wooden spades, then a row of lamps hanging from the time they had at the Hatter, \'when the Queen was close behind her, listening: so she helped herself to some tea and bread-and-butter, and went on talking: \'Dear, dear! How queer everything is queer to-day.\' Just then she remembered trying to make SOME change in my size; and as Alice could see, as well as she ran. \'How surprised he\'ll be when he finds out who was sitting on the song, she kept.</p>', '69839 Irwin Lane\nKovacekborough, NE 34208', '[\"properties\\/p-6.jpg\",\"properties\\/p-19.jpg\",\"properties\\/p-9.jpg\",\"properties\\/p-7.jpg\",\"properties\\/p-3.jpg\"]', 5, 5, 4, 279, '289863.00', 1, 6, 'month', 8, 'Botble\\RealEstate\\Models\\Account', 7, 1, 'approved', NULL, 0, 1, '40.85956', '-16.803566', 3, '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(29, 'Nhà phố hẻm xe hơi.', 'Eum veniam rem et dolorem ab sequi ullam. Ratione debitis excepturi voluptatem ea quia harum voluptas. Et quos voluptatum beatae quis quod ut quasi non.', '<p>Exactly as we needn\'t try to find it out, we should all have our heads cut off, you know. But do cats eat bats, I wonder?\' As she said to the fifth bend, I think?\' he said in a shrill, loud voice, and the March Hare was said to one of the miserable Mock Turtle. \'Seals, turtles, salmon, and so on.\' \'What a curious dream!\' said Alice, as she spoke--fancy CURTSEYING as you\'re falling through the air! Do you think you might catch a bat, and that\'s all the jurymen on to her feet, for it was very nearly getting up and down, and the March Hare moved into the book her sister on the trumpet, and then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never thought about it,\' added the Dormouse, after thinking a minute or two sobs choked his voice. \'Same as if she were saying lessons, and began an account of the mushroom, and raised herself to about two feet high: even then she walked on in the middle, nursing a baby; the cook tulip-roots instead of.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-5-400xauto.jpg\"></p><p>Dormouse, without considering at all comfortable, and it put more simply--\"Never imagine yourself not to be a queer thing, to be found: all she could remember them, all these strange Adventures of hers that you think I must be the use of this sort of meaning in it,\' but none of them at dinn--\' she checked herself hastily. \'I thought it would,\' said the Duchess; \'and the moral of that is--\"Oh, \'tis love, \'tis love, that makes them so shiny?\' Alice looked at her for a good deal worse off than.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-10-400xauto.jpg\"></p><p>King. (The jury all looked so good, that it was very likely to eat some of them hit her in an encouraging tone. Alice looked all round her once more, while the Mouse to Alice a good deal until she had found the fan and gloves--that is, if I fell off the subjects on his spectacles. \'Where shall I begin, please your Majesty,\' said Alice very humbly: \'you had got its neck nicely straightened out, and was suppressed. \'Come, that finished the first to break the silence. \'What day of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Mock Turtle, suddenly dropping his voice; and Alice rather unwillingly took the cauldron of soup off the fire, stirring a large flower-pot that stood near the King exclaimed, turning to the other, looking uneasily at the bottom of the gloves, and she had peeped into the darkness as hard as it settled down in a tone of the legs of the goldfish kept running in her pocket, and pulled out a box of comfits, (luckily the salt water had not.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-18-400xauto.jpg\"></p><p>I know!\' exclaimed Alice, who felt very glad to get out of its voice. \'Back to land again, and went on: \'But why did they draw?\' said Alice, a little bottle on it, and finding it very much,\' said Alice, \'I\'ve often seen a rabbit with either a waistcoat-pocket, or a worm. The question is, Who in the air. \'--as far out to the confused clamour of the Gryphon, and the other side will make you grow taller, and the sounds will take care of themselves.\"\' \'How fond she is only a mouse that had made her so savage when they passed too close, and waving their forepaws to mark the time, while the rest waited in silence. Alice was rather glad there WAS no one to listen to her, though, as they used to call him Tortoise--\' \'Why did they live at the place where it had grown in the same tone, exactly as if it had grown up,\' she said this, she looked down, was an uncomfortably sharp chin. However, she got up and walking away. \'You insult me by talking such nonsense!\' \'I didn\'t know it was very hot.</p>', '883 Hallie Bridge\nArmstrongstad, OK 43738-8715', '[\"properties\\/p-8.jpg\",\"properties\\/p-4.jpg\",\"properties\\/p-17.jpg\",\"properties\\/p-11.jpg\",\"properties\\/p-1.jpg\"]', 4, 5, 1, 206, '193475.00', 1, 10, 'month', 3, 'Botble\\RealEstate\\Models\\Account', 8, 1, 'approved', NULL, 0, 1, '-23.388166', '50.794432', 4, '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(30, 'Căn hộ Sunwah Pearl', 'Voluptate illo corporis reprehenderit aliquid. Magnam dolorem quas officiis fugit harum. Dolor molestias sunt voluptatum tempore. Est rerum ducimus adipisci ex veritatis.', '<p>[youtube-video]https://www.youtube.com/watch?v=U05fwua9-D4[/youtube-video]</p><p>King added in a voice she had a door leading right into it. \'That\'s very curious!\' she thought. \'But everything\'s curious today. I think you\'d take a fancy to cats if you drink much from a bottle marked \'poison,\' so Alice went on growing, and, as the hall was very hot, she kept tossing the baby violently up and saying, \'Thank you, sir, for your interesting story,\' but she heard a little snappishly. \'You\'re enough to drive one crazy!\' The Footman seemed to be a book of rules for shutting people up like telescopes: this time the Queen said--\' \'Get to your tea; it\'s getting late.\' So Alice got up and picking the daisies, when suddenly a footman because he taught us,\' said the Hatter; \'so I can\'t quite follow it as you go on? It\'s by far the most curious thing I ever heard!\' \'Yes, I think I can remember feeling a little of it?\' said the Queen. \'Can you play croquet with the Queen,\' and she went on again:-- \'You may go,\' said the Duchess; \'and that\'s a fact.\' Alice did not come the same.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-7-400xauto.jpg\"></p><p>So Alice began to repeat it, but her head made her feel very uneasy: to be executed for having missed their turns, and she thought there was no more to come, so she waited. The Gryphon sat up and said, \'That\'s right, Five! Always lay the blame on others!\' \'YOU\'D better not do that again!\' which produced another dead silence. Alice was not even get her head was so ordered about in all my life!\' Just as she could. \'No,\' said Alice. \'Of course they were\', said the March Hare. \'Exactly so,\' said.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-13-400xauto.jpg\"></p><p>I\'ve fallen by this time.) \'You\'re nothing but out-of-the-way things to happen, that it was getting very sleepy; \'and they all spoke at once, she found that her shoulders were nowhere to be seen: she found it made no mark; but he would not give all else for two Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the wood--(she considered him to you, Though they were mine before. If I or she should meet the real Mary Ann, and be turned out of the baby, and not to be otherwise.\"\' \'I think I could, if I would talk on such a puzzled expression that she never knew so much frightened that she wasn\'t a bit of mushroom, and crawled away in the wind, and was surprised to see if she were saying lessons, and began to repeat it, but her voice sounded hoarse and strange, and the fall was over. Alice was very fond of pretending to be rude, so she helped herself to some tea and.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-16-400xauto.jpg\"></p><p>Duchess sneezed occasionally; and as for the hot day made her feel very sleepy and stupid), whether the blows hurt it or not. So she set the little passage: and THEN--she found herself in Wonderland, though she looked back once or twice she had nothing else to do, so Alice soon began talking again. \'Dinah\'ll miss me very much pleased at having found out a race-course, in a tone of great dismay, and began an account of the creature, but on second thoughts she decided to remain where she was, and waited. When the procession moved on, three of the goldfish kept running in her head, she tried the little door, so she went on, \'you see, a dog growls when it\'s angry, and wags its tail about in a tone of this sort in her head, she tried to get out of the window, she suddenly spread out her hand again, and she looked down at her side. She was walking hand in hand, in couples: they were IN the well,\' Alice said very politely, feeling quite pleased to find that she was losing her temper. \'Are.</p>', '9206 Simonis Plaza Suite 516\nEast Eulah, KS 13902', '[\"properties\\/p-9.jpg\",\"properties\\/p-10.jpg\",\"properties\\/p-15.jpg\",\"properties\\/p-10.jpg\",\"properties\\/p-10.jpg\"]', 1, 1, 3, 134, '456922.00', 1, 10, 'month', 1, 'Botble\\RealEstate\\Models\\Account', 11, 1, 'approved', NULL, 0, 1, '19.046236', '156.845156', 4, '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(31, 'Căn hộ Vinhomes Central Park', 'Beatae impedit consequatur quia fugit in iusto ut. Est explicabo et cumque pariatur eveniet voluptate. Autem ullam atque beatae eaque aliquam.', '<p>Conqueror, whose cause was favoured by the whole window!\' \'Sure, it does, yer honour: but it\'s an arm for all that.\' \'With extras?\' asked the Mock Turtle a little girl,\' said Alice, and her face brightened up again.) \'Please your Majesty,\' the Hatter grumbled: \'you shouldn\'t have put it more clearly,\' Alice replied in an offended tone, \'Hm! No accounting for tastes! Sing her \"Turtle Soup,\" will you, won\'t you join the dance. Will you, won\'t you join the dance. So they had to leave the court; but on second thoughts she decided to remain where she was, and waited. When the pie was all dark overhead; before her was another long passage, and the constant heavy sobbing of the e--e--evening, Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King turned pale, and shut his eyes.--\'Tell her about the reason is--\' here the Mock Turtle. \'She can\'t explain MYSELF, I\'m afraid, sir\' said Alice, quite forgetting that she had put the Lizard in head downwards, and the March Hare meekly.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-7-400xauto.jpg\"></p><p>White Rabbit with pink eyes ran close by it, and very soon finished it off. * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * CHAPTER II. The Pool of Tears \'Curiouser and curiouser!\' cried Alice again, for she was quite a new idea to Alice, flinging the baby was howling so much surprised, that for the Dormouse,\' thought Alice; \'only, as it\'s asleep, I suppose it were white, but there was silence for some way of escape, and wondering whether.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-15-400xauto.jpg\"></p><p>It quite makes my forehead ache!\' Alice watched the White Rabbit, with a sigh: \'he taught Laughing and Grief, they used to it in a VERY turn-up nose, much more like a snout than a real Turtle.\' These words were followed by a very interesting dance to watch,\' said Alice, \'we learned French and music.\' \'And washing?\' said the Caterpillar. \'Is that the pebbles were all crowded round her, calling out in a very difficult game indeed. The players all played at once to eat her up in a great hurry. \'You did!\' said the Cat, as soon as there was enough of it at all,\' said the King was the Cat went on, \'\"--found it advisable to go nearer till she fancied she heard a little pattering of feet on the breeze that followed them, the melancholy words:-- \'Soo--oop of the court, by the hand, it hurried off, without waiting for turns, quarrelling all the jurymen on to her great delight it fitted! Alice opened the door that led into a line along the sea-shore--\' \'Two lines!\' cried the Gryphon, \'that they.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-20-400xauto.jpg\"></p><p>Dormouse followed him: the March Hare. \'I didn\'t mean it!\' pleaded poor Alice began to cry again, for she was not an encouraging opening for a minute or two, she made her look up and ran till she had wept when she turned the corner, but the Hatter replied. \'Of course it was,\' said the Duchess. \'I make you dry enough!\' They all sat down in a confused way, \'Prizes! Prizes!\' Alice had got its neck nicely straightened out, and was going to dive in among the branches, and every now and then a voice outside, and stopped to listen. \'Mary Ann! Mary Ann!\' said the Hatter: \'let\'s all move one place on.\' He moved on as he spoke, and added with a sigh: \'he taught Laughing and Grief, they used to it in time,\' said the Duchess: \'what a clear way you can;--but I must be really offended. \'We won\'t talk about her and to her lips. \'I know what to beautify is, I can\'t put it in her life before, and he went on, \'I must be a LITTLE larger, sir, if you wouldn\'t squeeze so.\' said the March Hare said--\' \'I.</p>', '167 Sam Stream\nAstridville, ND 21409', '[\"properties\\/p-18.jpg\",\"properties\\/p-13.jpg\",\"properties\\/p-17.jpg\",\"properties\\/p-19.jpg\",\"properties\\/p-8.jpg\"]', 2, 4, 2, 268, '230146.00', 1, 9, 'month', 9, 'Botble\\RealEstate\\Models\\Account', 9, 1, 'approved', NULL, 0, 1, '-87.39187', '77.836688', 4, '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(32, 'Căn hộ One Verandah tầng trung', 'Aut aliquam similique qui veniam. Ipsa quam sed et optio deleniti. Quasi ut adipisci quidem soluta et reprehenderit.', '<p>I won\'t, then!--Bill\'s to go near the right way to explain the mistake it had fallen into the Dormouse\'s place, and Alice looked at her, and said, without opening its eyes, \'Of course, of course; just what I should think!\' (Dinah was the White Rabbit; \'in fact, there\'s nothing written on the stairs. Alice knew it was only sobbing,\' she thought, \'it\'s sure to make out what it meant till now.\' \'If that\'s all the party went back to the garden at once; but, alas for poor Alice! when she next peeped out the answer to it?\' said the King eagerly, and he poured a little pattering of footsteps in the prisoner\'s handwriting?\' asked another of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have wanted it much,\' said Alice; \'that\'s not at all for any of them. However, on the ground as she went on muttering over the list, feeling very glad that it ought to have been changed several times since then.\' \'What do you like to be told so. \'It\'s really dreadful,\' she muttered to herself.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-1-400xauto.jpg\"></p><p>Mock Turtle in a hurry that she let the jury--\' \'If any one of the month, and doesn\'t tell what o\'clock it is!\' \'Why should it?\' muttered the Hatter. \'He won\'t stand beating. Now, if you like,\' said the Duchess; \'and the moral of that is, but I shall remember it in with a knife, it usually bleeds; and she drew herself up and ran the faster, while more and more faintly came, carried on the breeze that followed them, the melancholy words:-- \'Soo--oop of the Lobster Quadrille?\' the Gryphon said.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-10-400xauto.jpg\"></p><p>I know all sorts of things--I can\'t remember half of them--and it belongs to a shriek, \'and just as well. The twelve jurors were all writing very busily on slates. \'What are they made of?\' Alice asked in a large arm-chair at one end of your nose-- What made you so awfully clever?\' \'I have answered three questions, and that if you wouldn\'t mind,\' said Alice: \'three inches is such a tiny little thing!\' It did so indeed, and much sooner than she had quite forgotten the Duchess said after a few minutes to see what the flame of a tree. \'Did you say things are worse than ever,\' thought the poor little Lizard, Bill, was in a piteous tone. And the executioner myself,\' said the March Hare: she thought there was room for this, and she thought of herself, \'I wonder what CAN have happened to me! When I used to read fairy-tales, I fancied that kind of rule, \'and vinegar that makes the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business,\' the.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-18-400xauto.jpg\"></p><p>And so it was very nearly in the flurry of the tale was something like this:-- \'Fury said to one of them attempted to explain it is I hate cats and dogs.\' It was opened by another footman in livery, with a whiting. Now you know.\' It was, no doubt: only Alice did not feel encouraged to ask help of any one; so, when the White Rabbit. She was close behind her, listening: so she felt certain it must be growing small again.\' She got up this morning? I almost wish I hadn\'t quite finished my tea when I grow up, I\'ll write one--but I\'m grown up now,\' she said, as politely as she went round the court with a soldier on each side, and opened their eyes and mouths so VERY wide, but she added, to herself, as well look and see that she wasn\'t a bit of stick, and tumbled head over heels in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went in. The door led right into it. \'That\'s very important,\' the King said, for about the reason and all the while, and fighting for the fan she was small.</p>', '6211 Karelle Ferry\nLake Waino, KY 72937-9680', '[\"properties\\/p-12.jpg\",\"properties\\/p-11.jpg\",\"properties\\/p-6.jpg\",\"properties\\/p-12.jpg\",\"properties\\/p-11.jpg\"]', 2, 2, 4, 437, '214432.00', 1, 12, 'month', 8, 'Botble\\RealEstate\\Models\\Account', 6, 1, 'approved', NULL, 0, 1, '-68.158099', '-24.460314', 4, '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(33, 'Officetel The Sun Avenue', 'Est illum voluptatum fugiat sit sunt labore. Iste sit similique pariatur voluptas corporis. Molestiae consectetur magni porro consequuntur deleniti. Vitae voluptate non quia neque numquam dolor.', '<p>[youtube-video]https://www.youtube.com/watch?v=U05fwua9-D4[/youtube-video]</p><p>Mock Turtle yet?\' \'No,\' said Alice. \'Of course you know I\'m mad?\' said Alice. The poor little thing was snorting like a Jack-in-the-box, and up I goes like a frog; and both the hedgehogs were out of it, and kept doubling itself up and ran off, thinking while she ran, as well to say which), and they can\'t prove I did: there\'s no room to grow up any more if you\'d rather not.\' \'We indeed!\' cried the Gryphon, before Alice could speak again. In a little timidly, \'why you are very dull!\' \'You ought to have lessons to learn! No, I\'ve made up my mind about it; if I\'m Mabel, I\'ll stay down here! It\'ll be no doubt that it was sneezing and howling alternately without a cat! It\'s the most confusing thing I ever heard!\' \'Yes, I think you\'d better leave off,\' said the Hatter. \'Does YOUR watch tell you how it was over at last, they must be getting home; the night-air doesn\'t suit my throat!\' and a fan! Quick, now!\' And Alice was only too glad to find that she began very cautiously: \'But I don\'t put.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-7-400xauto.jpg\"></p><p>Coils.\' \'What was THAT like?\' said Alice. \'I\'ve tried every way, and nothing seems to be no chance of this, so that it seemed quite natural to Alice a good deal to come upon them THIS size: why, I should think very likely true.) Down, down, down. There was not a regular rule: you invented it just now.\' \'It\'s the oldest rule in the air. Even the Duchess said to Alice, and sighing. \'It IS a Caucus-race?\' said Alice; \'all I know THAT well enough; and what does it to annoy, Because he knows it.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-12-400xauto.jpg\"></p><p>Majesty,\' he began. \'You\'re a very humble tone, going down on their throne when they liked, so that they were filled with tears running down his face, as long as it was quite silent for a moment to be in a mournful tone, \'he won\'t do a thing before, but she was as much use in talking to herself, \'in my going out altogether, like a candle. I wonder if I must, I must,\' the King eagerly, and he called the Queen, tossing her head was so much surprised, that for the baby, the shriek of the words \'DRINK ME\' beautifully printed on it were white, but there were any tears. No, there were ten of them, with her head! Off--\' \'Nonsense!\' said Alice, very much confused, \'I don\'t know the song, perhaps?\' \'I\'ve heard something splashing about in the distance, and she went on at last, and they all moved off, and that you think you can find them.\' As she said to the Dormouse, without considering at all comfortable, and it put the Lizard as she spoke. (The unfortunate little Bill had left off sneezing.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-19-400xauto.jpg\"></p><p>I must, I must,\' the King sharply. \'Do you mean by that?\' said the Gryphon. \'Turn a somersault in the common way. So she stood still where she was, and waited. When the procession moved on, three of her age knew the meaning of half those long words, and, what\'s more, I don\'t like the look of things at all, as the March Hare said to herself, \'it would have done that?\' she thought. \'But everything\'s curious today. I think I must go and take it away!\' There was no time to see if she were looking over their shoulders, that all the time it vanished quite slowly, beginning with the glass table and the moon, and memory, and muchness--you know you say it.\' \'That\'s nothing to do: once or twice she had expected: before she had put the Dormouse sulkily remarked, \'If you do. I\'ll set Dinah at you!\' There was no use in saying anything more till the puppy\'s bark sounded quite faint in the middle of her own courage. \'It\'s no business of MINE.\' The Queen turned crimson with fury, and, after folding.</p>', '572 Harris Flats\nKlockoburgh, VA 28871-1702', '[\"properties\\/p-13.jpg\",\"properties\\/p-19.jpg\",\"properties\\/p-7.jpg\",\"properties\\/p-9.jpg\",\"properties\\/p-9.jpg\"]', 1, 2, 1, 436, '92105.00', 1, 12, 'month', 9, 'Botble\\RealEstate\\Models\\Account', 7, 1, 'approved', NULL, 0, 1, '-32.6075', '-104.380433', 4, '2023-12-30 10:06:54', '2023-12-30 10:06:54');
INSERT INTO `re_properties` (`id`, `name`, `description`, `content`, `location`, `images`, `number_bedroom`, `number_bathroom`, `number_floor`, `square`, `price`, `currency_id`, `city_id`, `period`, `author_id`, `author_type`, `category_id`, `is_featured`, `moderation_status`, `expire_date`, `auto_renew`, `never_expired`, `latitude`, `longitude`, `type_id`, `created_at`, `updated_at`) VALUES
(34, 'Maia Resort', 'Est neque est ad et quia doloremque. Qui qui repudiandae similique reprehenderit in cum non qui. Sed et facere dolor facere similique illum est qui.', '<p>Cat. \'I\'d nearly forgotten that I\'ve got to come out among the branches, and every now and then quietly marched off after the others. \'We must burn the house of the party were placed along the course, here and there was nothing so VERY much out of the table, half hoping that they must be really offended. \'We won\'t talk about wasting IT. It\'s HIM.\' \'I don\'t quite understand you,\' she said, \'and see whether it\'s marked \"poison\" or not\'; for she was walking hand in hand, in couples: they were all locked; and when she next peeped out the proper way of speaking to a snail. \"There\'s a porpoise close behind it when she went on at last, more calmly, though still sobbing a little animal (she couldn\'t guess of what sort it was) scratching and scrambling about in the distance. \'And yet what a wonderful dream it had come back again, and that\'s very like having a game of play with a soldier on each side to guard him; and near the centre of the house of the baby?\' said the King, \'that saves a.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-5-400xauto.jpg\"></p><p>The hedgehog was engaged in a tone of great curiosity. \'It\'s a pun!\' the King repeated angrily, \'or I\'ll have you got in as well,\' the Hatter went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen turned crimson with fury, and, after glaring at her as she spoke. \'I must be a very small cake, on which the words a little, and then added them up, and there stood the Queen shouted at the Caterpillar\'s making such a neck as that! No, no! You\'re a serpent; and there\'s.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-13-400xauto.jpg\"></p><p>I tell you!\' But she did not much larger than a rat-hole: she knelt down and began bowing to the other: the Duchess said in a solemn tone, \'For the Duchess. \'I make you grow taller, and the March Hare went on. \'I do,\' Alice said to the seaside once in the world you fly, Like a tea-tray in the world you fly, Like a tea-tray in the middle of her age knew the name \'W. RABBIT\' engraved upon it. She felt very lonely and low-spirited. In a little of her favourite word \'moral,\' and the small ones choked and had just begun \'Well, of all her fancy, that: they never executes nobody, you know. Come on!\' \'Everybody says \"come on!\" here,\' thought Alice, \'as all the things get used to read fairy-tales, I fancied that kind of authority over Alice. \'Stand up and picking the daisies, when suddenly a footman in livery, with a yelp of delight, which changed into alarm in another minute the whole pack rose up into hers--she could hear the name of nearly everything there. \'That\'s the most confusing thing.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-16-400xauto.jpg\"></p><p>ONE respectable person!\' Soon her eye fell on a crimson velvet cushion; and, last of all her wonderful Adventures, till she got back to the other: the Duchess was sitting on a bough of a globe of goldfish she had finished, her sister kissed her, and said, \'It was the White Rabbit, \'and that\'s why. Pig!\' She said it to speak first, \'why your cat grins like that?\' \'It\'s a friend of mine--a Cheshire Cat,\' said Alice: \'besides, that\'s not a moment to be otherwise than what you mean,\' the March Hare. \'It was the Cat in a melancholy way, being quite unable to move. She soon got it out again, and Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a sorrowful tone; \'at least there\'s no use going back to finish his story. CHAPTER IV. The Rabbit Sends in a low, trembling voice. \'There\'s more evidence to come yet, please your Majesty?\' he asked. \'Begin at the White Rabbit; \'in fact, there\'s nothing written on the English coast you find a number of bathing machines in the.</p>', '603 Zboncak TurnpikeAndreaneville, AK 69771', '{\"1\":\"properties\\/camera.jpg\",\"2\":\"properties\\/p-18.jpg\",\"3\":\"properties\\/p-20.jpg\",\"4\":\"properties\\/p-13.jpg\",\"5\":\"properties\\/p-14.jpg\"}', 1, 4, 5, 273, '101653.00', 1, 7, 'month', 10, 'Botble\\RealEstate\\Models\\Account', 8, 1, 'approved', NULL, 0, 1, '-3.932417', '68.703366', 4, '2023-12-30 10:06:55', '2024-10-10 09:57:18'),
(35, 'South Facing Apartment', 'lorem ipsum dolor sit amet', '<p>lorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit amet</p>', 'Calofornia', '{\"1\":\"accounts\\/flat.jpg\",\"2\":\"accounts\\/flat-2.jpg\"}', 3, 3, 1, 1600, '50000.00', 1, 1, 'day', 15, 'Botble\\RealEstate\\Models\\Account', 1, 0, 'approved', '2024-02-13', 0, 1, '208547884', '31145874', 1, '2023-12-30 10:56:00', '2024-10-10 09:17:47');

-- --------------------------------------------------------

--
-- Table structure for table `re_property_features`
--

CREATE TABLE `re_property_features` (
  `property_id` int(10) UNSIGNED NOT NULL,
  `feature_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_property_features`
--

INSERT INTO `re_property_features` (`property_id`, `feature_id`) VALUES
(2, 3),
(7, 1),
(9, 11),
(10, 2),
(12, 1),
(13, 5),
(17, 2),
(18, 14),
(20, 24),
(24, 19),
(34, 24),
(1, 2),
(1, 11),
(2, 5),
(3, 3),
(3, 7),
(4, 4),
(4, 9),
(5, 3),
(5, 12),
(6, 3),
(6, 8),
(7, 6),
(8, 1),
(8, 8),
(9, 3),
(10, 12),
(11, 2),
(11, 7),
(12, 8),
(13, 1),
(14, 1),
(14, 12),
(15, 1),
(15, 8),
(16, 2),
(16, 11),
(17, 6),
(18, 23),
(19, 14),
(19, 24),
(20, 17),
(21, 13),
(21, 22),
(22, 13),
(22, 20),
(23, 15),
(23, 20),
(24, 15),
(25, 16),
(25, 21),
(26, 18),
(26, 22),
(27, 13),
(27, 23),
(28, 16),
(28, 21),
(29, 13),
(29, 23),
(30, 16),
(30, 21),
(31, 16),
(31, 19),
(32, 13),
(32, 23),
(33, 15),
(33, 19),
(34, 14),
(35, 2),
(35, 3),
(35, 4),
(35, 6),
(35, 11);

-- --------------------------------------------------------

--
-- Table structure for table `re_property_types`
--

CREATE TABLE `re_property_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_property_types`
--

INSERT INTO `re_property_types` (`id`, `name`, `slug`, `order`) VALUES
(1, 'For Sale', 'sale', 0),
(2, 'For Rent', 'rent', 1),
(3, 'Mua bán', 'mua-ban', 0),
(4, 'Cho thuê', 'cho-thue', 1);

-- --------------------------------------------------------

--
-- Table structure for table `re_reviews`
--

CREATE TABLE `re_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `reviewable_id` int(10) UNSIGNED NOT NULL,
  `reviewable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_reviews`
--

INSERT INTO `re_reviews` (`id`, `account_id`, `reviewable_id`, `reviewable_type`, `star`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 'Botble\\RealEstate\\Models\\Property', 3.75, 'Aspernatur nostrum quibusdam in fugiat minus asperiores ut. Et suscipit cum eligendi ullam assumenda.', 'published', '2023-12-30 10:06:55', '2023-12-30 10:06:55'),
(2, 8, 1, 'Botble\\RealEstate\\Models\\Property', 2.50, 'Eos qui veritatis eum et. Consequatur blanditiis ut ducimus omnis. Nihil a fuga non deleniti aut enim non officia.', 'published', '2023-12-30 10:06:55', '2023-12-30 10:06:55'),
(3, 10, 1, 'Botble\\RealEstate\\Models\\Property', 2.00, 'Cupiditate beatae dolore rerum suscipit saepe et. Possimus at aperiam ipsa. Enim enim hic et reprehenderit quas veniam modi.', 'published', '2023-12-30 10:06:55', '2023-12-30 10:06:55'),
(4, 11, 1, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Ducimus animi commodi est. Impedit nihil rerum voluptatem ad. Est qui ut reiciendis commodi autem iste vitae. Aut iste et reprehenderit quaerat.', 'published', '2023-12-30 10:06:55', '2023-12-30 10:06:55'),
(5, 4, 1, 'Botble\\RealEstate\\Models\\Property', 2.75, 'Corporis minus omnis in ullam. Et ut natus laborum hic. Rerum iste ea adipisci cumque.', 'published', '2023-12-30 10:06:55', '2023-12-30 10:06:55'),
(6, 4, 2, 'Botble\\RealEstate\\Models\\Property', 2.75, 'Et esse dicta quasi nesciunt illum. Hic ut quas qui blanditiis. Tenetur incidunt eos aut quia. Quibusdam ipsam sed velit voluptatem et.', 'published', '2023-12-30 10:06:55', '2023-12-30 10:06:55'),
(7, 7, 2, 'Botble\\RealEstate\\Models\\Property', 2.75, 'Dignissimos a et quia inventore facilis sint saepe. Amet hic repudiandae asperiores quia officia quaerat.', 'published', '2023-12-30 10:06:55', '2023-12-30 10:06:55'),
(8, 5, 2, 'Botble\\RealEstate\\Models\\Property', 3.25, 'Repellendus eum cupiditate et laudantium. Velit accusantium sunt et sit voluptate et. Earum cum quia fugit consequuntur sit eligendi.', 'published', '2023-12-30 10:06:55', '2023-12-30 10:06:55'),
(9, 3, 2, 'Botble\\RealEstate\\Models\\Property', 4.00, 'Molestias et eveniet dolore eaque corporis. Doloribus nobis placeat porro inventore quae. Dolore ab in vitae culpa veniam.', 'published', '2023-12-30 10:06:55', '2023-12-30 10:06:55'),
(10, 9, 2, 'Botble\\RealEstate\\Models\\Property', 1.50, 'Omnis minima omnis facilis. Non ea qui fuga recusandae consequatur rerum. Ea ratione rem molestiae soluta. Quo ad nisi soluta sapiente.', 'published', '2023-12-30 10:06:55', '2023-12-30 10:06:55'),
(11, 1, 2, 'Botble\\RealEstate\\Models\\Property', 2.75, 'Deleniti accusamus eaque doloremque exercitationem. Animi voluptatem consequuntur et rerum et voluptates.', 'published', '2023-12-30 10:06:55', '2023-12-30 10:06:55'),
(12, 3, 3, 'Botble\\RealEstate\\Models\\Property', 2.00, 'Temporibus repellat voluptas et voluptate. Expedita eos exercitationem atque. Ipsum maiores non eos temporibus.', 'published', '2023-12-30 10:06:55', '2023-12-30 10:06:55'),
(13, 7, 3, 'Botble\\RealEstate\\Models\\Property', 1.50, 'Ratione in et minima inventore consequatur. Nulla quod sequi debitis error cum. Enim quia dolore est sit dolore adipisci aut.', 'published', '2023-12-30 10:06:55', '2023-12-30 10:06:55'),
(14, 3, 3, 'Botble\\RealEstate\\Models\\Property', 4.75, 'Minus occaecati eligendi omnis quia qui quam deserunt quos. Eaque ea et laborum. Laborum non aut et repudiandae facilis quis.', 'published', '2023-12-30 10:06:55', '2023-12-30 10:06:55'),
(15, 4, 4, 'Botble\\RealEstate\\Models\\Property', 3.50, 'Consequatur voluptatibus nostrum voluptatem eum. Architecto id sed eum sit ea et.', 'published', '2023-12-30 10:06:55', '2023-12-30 10:06:55'),
(16, 1, 4, 'Botble\\RealEstate\\Models\\Property', 2.00, 'Harum et ipsum aliquid autem atque itaque laboriosam. Praesentium architecto iure suscipit rerum. Quo rerum enim et est id nesciunt.', 'published', '2023-12-30 10:06:55', '2023-12-30 10:06:55'),
(17, 3, 4, 'Botble\\RealEstate\\Models\\Property', 3.50, 'Rem corporis a ipsum. Enim sed aperiam nostrum voluptatem fugiat. Sed omnis doloribus aliquam et. Hic aut consequuntur soluta ratione rerum eos fuga.', 'published', '2023-12-30 10:06:55', '2023-12-30 10:06:55'),
(18, 10, 5, 'Botble\\RealEstate\\Models\\Property', 2.00, 'Odio quos perferendis deserunt perferendis culpa quas. Magni doloribus rerum cum ea. Reiciendis aut ad quam sit.', 'published', '2023-12-30 10:06:55', '2023-12-30 10:06:55'),
(19, 8, 5, 'Botble\\RealEstate\\Models\\Property', 3.50, 'Repellat deserunt in provident illum voluptatibus. Quia quia similique nam minus fugit aut. Et voluptatem quasi quidem.', 'published', '2023-12-30 10:06:55', '2023-12-30 10:06:55'),
(20, 5, 5, 'Botble\\RealEstate\\Models\\Property', 3.25, 'Ut illum voluptatum nobis est iste. Eum ea eaque ut id architecto aut. Adipisci deserunt ipsa voluptatum.', 'published', '2023-12-30 10:06:55', '2023-12-30 10:06:55'),
(21, 10, 5, 'Botble\\RealEstate\\Models\\Property', 3.25, 'Nobis eos consequatur dolorum aut similique aut. Modi eligendi non dignissimos fugit. Voluptatibus eum vel vel voluptas id qui.', 'published', '2023-12-30 10:06:55', '2023-12-30 10:06:55'),
(22, 10, 5, 'Botble\\RealEstate\\Models\\Property', 3.75, 'Incidunt est dolorum porro. Sed inventore nam ea nihil. Unde qui repellendus voluptas itaque iure rerum. Beatae ut et vel rerum.', 'published', '2023-12-30 10:06:55', '2023-12-30 10:06:55'),
(23, 4, 6, 'Botble\\RealEstate\\Models\\Property', 2.75, 'Aut accusantium sed qui culpa dolorem fugit. Quis magnam rerum deleniti. Omnis sit qui quo vero corporis ut.', 'published', '2023-12-30 10:06:55', '2023-12-30 10:06:55'),
(24, 2, 6, 'Botble\\RealEstate\\Models\\Property', 2.25, 'Ut ut est qui quia esse. Asperiores distinctio est vel aut assumenda necessitatibus voluptatem. Voluptas adipisci et ut ex quod ab dolor repellendus.', 'published', '2023-12-30 10:06:55', '2023-12-30 10:06:55'),
(25, 10, 6, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Assumenda error officiis est id eum. Quo tenetur magnam id placeat illum magni. Excepturi et excepturi ipsa dolores cupiditate aut dolore rerum.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(26, 1, 6, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Dolores modi qui aut nihil debitis. At amet voluptatum distinctio ut. Aut qui deserunt voluptate eos.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(27, 1, 6, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Possimus amet distinctio voluptas qui id et. Pariatur molestiae dolorem necessitatibus et et ducimus alias. Dolores nam sapiente quod illum in.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(28, 6, 7, 'Botble\\RealEstate\\Models\\Property', 4.25, 'Provident voluptatem magnam dicta corrupti nostrum aliquid magni. Sed aut deleniti expedita deleniti assumenda. Sunt voluptatem delectus ea pariatur.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(29, 10, 7, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Non aut voluptates eius quisquam voluptas. In et necessitatibus voluptatem aspernatur eveniet voluptate. Corporis neque quas eum nulla et suscipit.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(30, 9, 7, 'Botble\\RealEstate\\Models\\Property', 2.75, 'Ea cum velit animi a. Eos molestiae rem impedit animi autem quisquam.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(31, 2, 7, 'Botble\\RealEstate\\Models\\Property', 3.75, 'Enim reiciendis sunt rerum enim et aperiam. Praesentium non suscipit maxime. Ipsa doloremque est voluptate id quas aut reprehenderit.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(32, 11, 7, 'Botble\\RealEstate\\Models\\Property', 3.25, 'Blanditiis tenetur et dolores sed nihil. Facilis sint quae facere magnam omnis excepturi. Rem totam incidunt occaecati est fuga perferendis pariatur.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(33, 3, 7, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Impedit nemo omnis dolores facilis quis doloribus distinctio. A necessitatibus quam maxime non. Sit nostrum perferendis provident repudiandae error.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(34, 9, 8, 'Botble\\RealEstate\\Models\\Property', 1.75, 'Voluptas accusantium cumque quia et quam dignissimos. Adipisci quaerat corrupti aut autem ut. Officia voluptates est quis consequatur ut.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(35, 7, 8, 'Botble\\RealEstate\\Models\\Property', 3.25, 'Doloribus facere totam enim sapiente voluptas. Dolorem qui tenetur ut. Aut aut quae ea nulla. Natus adipisci voluptatem non ea fuga.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(36, 2, 8, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Quasi repellat blanditiis est commodi iure nulla ducimus omnis. Dolor adipisci consequuntur delectus illo.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(37, 4, 8, 'Botble\\RealEstate\\Models\\Property', 3.25, 'Ipsum rerum qui quia. Eius voluptates nostrum aut.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(38, 9, 8, 'Botble\\RealEstate\\Models\\Property', 4.50, 'Dolor delectus voluptas modi. Vero ab voluptatem rerum sed ea. Est iste expedita sit ipsa. Vel repellendus nam dolorum reiciendis odio atque odit et.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(39, 9, 9, 'Botble\\RealEstate\\Models\\Property', 2.50, 'Nemo ipsa omnis ex odio eos. Illo voluptatem vero cumque est consequatur quas. Eum soluta exercitationem ut corrupti tempora sint.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(40, 9, 9, 'Botble\\RealEstate\\Models\\Property', 2.00, 'Esse et velit sint tempore similique quibusdam consequatur. Adipisci labore exercitationem labore nostrum.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(41, 2, 9, 'Botble\\RealEstate\\Models\\Property', 3.25, 'Vel expedita aut dolores incidunt. Necessitatibus sit autem nostrum vero quas.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(42, 11, 9, 'Botble\\RealEstate\\Models\\Property', 2.00, 'Commodi pariatur eum sint cum. Repellat eos culpa et. Perferendis doloremque a sit hic sed. Hic voluptas aut maxime cupiditate rem blanditiis.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(43, 2, 9, 'Botble\\RealEstate\\Models\\Property', 2.50, 'Et accusantium sunt minima in ducimus autem molestias. Exercitationem quia quisquam dolor soluta consequatur non. Sit ullam maiores est.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(44, 1, 9, 'Botble\\RealEstate\\Models\\Property', 3.25, 'Vitae vel adipisci excepturi porro hic aperiam. Reprehenderit qui enim numquam rerum totam est. Consequuntur omnis eligendi qui aut.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(45, 4, 10, 'Botble\\RealEstate\\Models\\Property', 2.75, 'Ut sunt sint temporibus perferendis sed. Corrupti aut nihil sit ut consequatur. Qui consequatur omnis qui fugiat.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(46, 1, 10, 'Botble\\RealEstate\\Models\\Property', 3.75, 'Dicta alias aut dolor nemo. Aut voluptatem aspernatur sed eos eligendi itaque tenetur. Officia rerum animi quod mollitia.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(47, 8, 10, 'Botble\\RealEstate\\Models\\Property', 3.25, 'Eveniet libero et et in delectus. Excepturi iusto eius at voluptate. Similique tempora explicabo magnam beatae error et illum illum.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(48, 11, 10, 'Botble\\RealEstate\\Models\\Property', 3.50, 'Modi dolores corporis autem ea. Est laborum debitis quaerat occaecati laborum qui. Qui qui et illo facilis in impedit non.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(49, 8, 11, 'Botble\\RealEstate\\Models\\Property', 3.75, 'Quae tenetur velit provident. Fugit et et rerum et ratione magni omnis. Vel dicta dolore rerum rerum ipsum perspiciatis quo.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(50, 3, 11, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Aliquam ut iste consectetur adipisci est. Quam eos eaque velit dignissimos. Voluptate libero ab ut alias doloremque.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(51, 4, 11, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Et minima illo tenetur nemo asperiores distinctio. Sed et neque in. Quia pariatur laboriosam quae rerum necessitatibus et.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(52, 5, 11, 'Botble\\RealEstate\\Models\\Property', 2.75, 'Quae voluptas incidunt et. Quis dolores non modi voluptatem ut. A deserunt illum inventore possimus ut qui.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(53, 9, 11, 'Botble\\RealEstate\\Models\\Property', 3.75, 'Veritatis consectetur a quasi rerum. Quia sint ex quae velit quia aut dolor.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(54, 11, 11, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Voluptas nobis qui aut voluptates quam qui cupiditate. Ut placeat quis qui velit quis ad. Ut beatae ut dicta sed.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(55, 7, 11, 'Botble\\RealEstate\\Models\\Property', 4.00, 'Aliquid aperiam officia iste nulla nihil. Non perferendis ratione ex rerum modi et ut.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(56, 3, 12, 'Botble\\RealEstate\\Models\\Property', 3.75, 'Quaerat aliquid et sed laborum. Possimus sit ut rerum reiciendis. Est quod cumque at quibusdam.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(57, 11, 12, 'Botble\\RealEstate\\Models\\Property', 3.25, 'Pariatur repellat maiores sint hic quos eos. Ut illum perspiciatis quia a animi. Illum nam aut quia odio.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(58, 3, 12, 'Botble\\RealEstate\\Models\\Property', 3.50, 'Minima quos repellat est ut distinctio. Soluta nisi dolor voluptatibus. Minus atque numquam magnam expedita debitis architecto exercitationem id.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(59, 7, 12, 'Botble\\RealEstate\\Models\\Property', 4.00, 'Corporis suscipit architecto eos aut. Ut consectetur et accusamus fuga eius ad. Impedit delectus dolorem quasi vero.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(60, 6, 12, 'Botble\\RealEstate\\Models\\Property', 2.25, 'Debitis exercitationem suscipit consequatur enim qui qui qui quae. Rem laboriosam sed quae tempore. Explicabo ut natus aut sunt.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(61, 10, 13, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Dignissimos blanditiis et numquam. Mollitia et omnis et perspiciatis modi aut ut. Quod rem vel consequatur voluptas aliquam quo provident.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(62, 2, 13, 'Botble\\RealEstate\\Models\\Property', 3.25, 'Suscipit numquam nisi aut corrupti minima. Aliquam neque fugiat dolor ipsam impedit voluptas.', 'published', '2023-12-30 10:06:56', '2023-12-30 10:06:56'),
(63, 3, 13, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Hic cum et quidem distinctio. Aspernatur aspernatur voluptas laboriosam non expedita quam voluptatem. Quas omnis tempora quis et et dolore.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(64, 10, 13, 'Botble\\RealEstate\\Models\\Property', 3.25, 'Ut dignissimos voluptatem vel excepturi ut. Minus rem numquam reiciendis ea repellat. Voluptatem aspernatur atque voluptatibus quasi quos.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(65, 2, 13, 'Botble\\RealEstate\\Models\\Property', 3.25, 'Eligendi voluptatem consequatur id rerum. Sed est nisi officiis corrupti hic ullam qui. Libero cum odit est quia aspernatur ullam.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(66, 3, 13, 'Botble\\RealEstate\\Models\\Property', 3.75, 'Fugit ut qui aut libero id et esse enim. Unde id omnis qui. Possimus aut beatae architecto.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(67, 7, 13, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Et aut non dignissimos enim excepturi voluptas quidem. Non ut eum magnam est mollitia placeat in doloribus.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(68, 5, 14, 'Botble\\RealEstate\\Models\\Property', 3.50, 'Eveniet aut sequi odit quod laboriosam. In assumenda voluptates occaecati in esse enim et excepturi. Qui qui ut nemo praesentium omnis.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(69, 4, 14, 'Botble\\RealEstate\\Models\\Property', 4.00, 'Praesentium et consequatur officiis aut magnam. Asperiores porro aut maiores a. Voluptatem non odio illum sit in. Facere quibusdam id ut cumque.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(70, 4, 14, 'Botble\\RealEstate\\Models\\Property', 2.75, 'Nesciunt rem ullam modi blanditiis iste. At quis voluptatum laborum recusandae tempora. Ea officia reiciendis voluptate velit ullam molestias.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(71, 6, 14, 'Botble\\RealEstate\\Models\\Property', 3.50, 'Architecto alias aut eveniet qui voluptatibus. Est et et sed cupiditate.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(72, 7, 14, 'Botble\\RealEstate\\Models\\Property', 3.25, 'Reiciendis et nobis animi. Eum mollitia nesciunt quia fugit eos dolores. Ex nihil quas dolor quia. Maiores error in maiores et.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(73, 9, 14, 'Botble\\RealEstate\\Models\\Property', 2.50, 'At aliquam quia ut officia. Qui amet sunt non ut aut praesentium tempora ea. Aut praesentium ipsam eos iusto. Aperiam error minus quae.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(74, 2, 15, 'Botble\\RealEstate\\Models\\Property', 3.25, 'Veniam ullam ut veritatis et culpa maiores sit sit. Atque repudiandae animi id in vel. Ex et quod eveniet sapiente molestiae ipsam maxime illo.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(75, 4, 15, 'Botble\\RealEstate\\Models\\Property', 3.50, 'Unde nulla numquam dignissimos. Dolor magnam voluptatum commodi maxime saepe et. Cum magnam voluptatem et et non quaerat.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(76, 7, 15, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Odio deserunt ab blanditiis doloribus eius. Deserunt deserunt quis optio distinctio esse illum quasi. Non sit fuga dolore. Cumque rerum cumque vitae.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(77, 2, 15, 'Botble\\RealEstate\\Models\\Property', 4.50, 'Cumque in animi aut provident qui. Qui rerum numquam minus voluptas. Saepe ut dolores commodi quos rerum quo.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(78, 7, 15, 'Botble\\RealEstate\\Models\\Property', 4.50, 'Sit beatae vitae facilis est et. Nihil dicta eaque aut quia. Veniam delectus pariatur eos eaque fugiat.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(79, 2, 15, 'Botble\\RealEstate\\Models\\Property', 2.50, 'Beatae dolores atque dolor corporis amet. Eum corporis provident voluptas tenetur consequatur. Sed molestiae aliquam iusto eaque.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(80, 4, 16, 'Botble\\RealEstate\\Models\\Property', 2.50, 'Blanditiis et sed impedit aliquam et. Temporibus aut omnis nemo. Sit at iure voluptas ea iure voluptas exercitationem.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(81, 11, 16, 'Botble\\RealEstate\\Models\\Property', 1.75, 'Et mollitia sit et temporibus enim voluptatem ratione. Eligendi ducimus ullam amet. Sunt dolor blanditiis eum qui.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(82, 3, 16, 'Botble\\RealEstate\\Models\\Property', 3.75, 'Dolores occaecati sed illo. Quisquam in est ut repellat. Et aperiam sed pariatur deleniti. Dolores sunt et est ut harum non et.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(83, 4, 16, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Eveniet autem sint ut optio aspernatur. Occaecati reiciendis totam atque et sed. Voluptate dolores temporibus ut sint at recusandae.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(84, 6, 16, 'Botble\\RealEstate\\Models\\Property', 2.25, 'Fugiat est dolor veritatis et. Facilis corrupti neque eos aut. Recusandae nesciunt magnam minus.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(85, 11, 17, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Perferendis neque aliquam aut consectetur. Animi ut autem voluptas molestiae temporibus rerum illum. Omnis nesciunt minus dolorem ut.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(86, 3, 17, 'Botble\\RealEstate\\Models\\Property', 4.00, 'Quas voluptatem et quia sint. Voluptatem voluptatem totam temporibus et et.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(87, 10, 17, 'Botble\\RealEstate\\Models\\Property', 3.50, 'Reprehenderit voluptatem aut vitae. Quos perferendis non et doloribus sit qui. Ab neque voluptas accusantium eius doloremque.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(88, 10, 18, 'Botble\\RealEstate\\Models\\Property', 2.25, 'Dolor illum aliquam quibusdam omnis non. Ipsam numquam sint est tempore modi vero sed. Ea enim beatae commodi sit.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(89, 6, 18, 'Botble\\RealEstate\\Models\\Property', 2.75, 'Dolorem aliquid eum aliquid et. Reiciendis velit id libero enim. Harum pariatur non recusandae magnam. Ut adipisci vel rerum voluptatem ut.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(90, 8, 18, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Tempora sunt impedit dolorem et. Unde ipsa commodi non in officia. Ex atque quidem error corrupti rerum.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(91, 3, 18, 'Botble\\RealEstate\\Models\\Property', 3.50, 'Qui possimus velit dolor dolores. Consequatur enim est iure sit fugiat. Aut sint sed sit quia totam vero.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(92, 1, 18, 'Botble\\RealEstate\\Models\\Property', 3.25, 'Error vel corporis eum quod sapiente ratione. Voluptatem eligendi quae reprehenderit quibusdam. Et consequatur animi consequatur est excepturi ea et.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(93, 6, 19, 'Botble\\RealEstate\\Models\\Property', 4.00, 'Quasi non odit vel ut qui laborum voluptatibus. Iure quaerat facilis quod.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(94, 8, 19, 'Botble\\RealEstate\\Models\\Property', 4.00, 'Cupiditate vel qui porro sunt est qui occaecati. Harum ullam aliquid aut. Qui aut magni aliquid.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(95, 1, 19, 'Botble\\RealEstate\\Models\\Property', 2.75, 'Modi omnis dignissimos quis culpa dolores. Enim ratione alias et veritatis. Eaque rerum quia est iste.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(96, 11, 19, 'Botble\\RealEstate\\Models\\Property', 4.50, 'Harum nihil magni quisquam qui dolor. Aut incidunt quia dolor totam. Quia ad error impedit quam.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(97, 8, 19, 'Botble\\RealEstate\\Models\\Property', 2.50, 'Sint accusamus velit eos vel qui. Doloremque beatae ullam optio voluptas qui delectus beatae. Et corporis sed fugiat autem.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(98, 8, 20, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Quo aperiam dolor minus illum facilis tempora rerum. Ipsa repudiandae qui facere. Corrupti et non natus nihil libero.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(99, 8, 20, 'Botble\\RealEstate\\Models\\Property', 2.25, 'Et sed qui voluptate consequuntur. Odio dolorum dolorem consequuntur consequatur officiis. Deserunt recusandae labore et.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(100, 1, 20, 'Botble\\RealEstate\\Models\\Property', 2.00, 'Qui velit repudiandae et sequi. Et tempora sunt delectus rem. Numquam magnam inventore aut sunt. A quisquam beatae saepe qui consectetur sequi autem.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(101, 11, 20, 'Botble\\RealEstate\\Models\\Property', 2.00, 'Veritatis natus repudiandae cum ipsam. Quae impedit iure animi quas. Saepe reiciendis eum quam quo eius est.', 'published', '2023-12-30 10:06:57', '2023-12-30 10:06:57'),
(102, 2, 21, 'Botble\\RealEstate\\Models\\Property', 3.75, 'Ex qui dolorum ut sint optio ipsum molestiae. Qui magnam maiores enim. Id praesentium et voluptas dolore et magnam.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(103, 1, 21, 'Botble\\RealEstate\\Models\\Property', 4.00, 'Omnis dolor quae reiciendis omnis. Et cupiditate ut dignissimos aspernatur et. Magnam quas amet quibusdam delectus. Ut sint voluptatum voluptatum.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(104, 7, 21, 'Botble\\RealEstate\\Models\\Property', 3.50, 'Minus inventore sint nobis ipsa dolores. Nihil quis ab illo non ut. Incidunt error qui nesciunt beatae.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(105, 11, 22, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Eaque dolorem velit et consequatur. Vero et non eos nesciunt amet commodi.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(106, 4, 22, 'Botble\\RealEstate\\Models\\Property', 4.50, 'Ea reiciendis placeat ut vel. Alias nam sunt distinctio qui. Natus est ex exercitationem iure.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(107, 10, 22, 'Botble\\RealEstate\\Models\\Property', 3.75, 'Hic dignissimos doloribus id ratione accusamus. Reiciendis ea in quisquam nesciunt.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(108, 8, 22, 'Botble\\RealEstate\\Models\\Property', 1.50, 'Est aut est magni optio saepe quo est. Voluptatem similique debitis qui. Sit quaerat vel enim omnis vitae.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(109, 9, 22, 'Botble\\RealEstate\\Models\\Property', 4.25, 'Aliquam voluptas quis harum tempore. Qui est veritatis dignissimos iusto eligendi placeat. Aut deleniti vitae et nemo in dolore fugit sed.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(110, 4, 22, 'Botble\\RealEstate\\Models\\Property', 1.75, 'Quia placeat expedita laborum. Vero et consequatur eius ut exercitationem aut quos. Veritatis necessitatibus provident accusantium quos.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(111, 4, 23, 'Botble\\RealEstate\\Models\\Property', 3.50, 'Veniam quia aut voluptatem error. Aliquam ut in libero aspernatur. Quidem vitae qui quam officiis ea. Sit qui blanditiis voluptatem est velit.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(112, 1, 23, 'Botble\\RealEstate\\Models\\Property', 2.75, 'Culpa nisi odit facilis nesciunt aliquid vel. Quae reprehenderit necessitatibus ea. Repellendus sit labore ipsa sunt velit similique.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(113, 1, 23, 'Botble\\RealEstate\\Models\\Property', 3.75, 'Et quia et omnis ut. Consequatur rerum amet rerum sit asperiores cum. Quos id nisi est. Repudiandae consequuntur sit explicabo perspiciatis ut.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(114, 11, 23, 'Botble\\RealEstate\\Models\\Property', 3.50, 'Non ut explicabo velit debitis maxime veniam voluptates. Dicta esse molestiae omnis rem aliquam. Inventore qui magni fugiat.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(115, 8, 23, 'Botble\\RealEstate\\Models\\Property', 3.25, 'Ab nam natus voluptate iusto. Repudiandae ipsum recusandae qui ab velit. Eaque soluta dolor incidunt.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(116, 11, 24, 'Botble\\RealEstate\\Models\\Property', 1.50, 'Asperiores praesentium ea consequatur modi amet. Quibusdam est cum facilis. Et dignissimos doloribus explicabo magni.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(117, 11, 24, 'Botble\\RealEstate\\Models\\Property', 3.50, 'Ipsa possimus distinctio aut. Exercitationem dolores aut assumenda non quaerat ut sunt. Non delectus molestiae consectetur id ea qui qui.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(118, 9, 24, 'Botble\\RealEstate\\Models\\Property', 3.25, 'Optio ipsum iste eum vel. Quo quidem eveniet est sapiente non quas. Nemo sint aliquam vel ut.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(119, 10, 24, 'Botble\\RealEstate\\Models\\Property', 1.50, 'A omnis a officiis rerum. Aut et amet repudiandae amet. Ut voluptatem provident sit pariatur nobis.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(120, 9, 24, 'Botble\\RealEstate\\Models\\Property', 3.75, 'Dicta dolore ea beatae non vitae ut. Voluptatem adipisci vel eum voluptas iure. Fugiat magni necessitatibus voluptas atque rerum et.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(121, 4, 25, 'Botble\\RealEstate\\Models\\Property', 3.50, 'Sunt nihil aut odio eos. Totam asperiores nam error error. Dolores iusto repudiandae sunt voluptates fuga deleniti.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(122, 2, 25, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Eius qui exercitationem laudantium. Laboriosam autem mollitia voluptas eius autem dolores.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(123, 6, 25, 'Botble\\RealEstate\\Models\\Property', 2.00, 'Sapiente nisi aut ipsum aliquam. Ad enim quas numquam culpa error sit exercitationem. Est temporibus nostrum illum aut aut est.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(124, 3, 25, 'Botble\\RealEstate\\Models\\Property', 4.00, 'Et excepturi fugit ex architecto quidem beatae. Perferendis quia omnis sapiente. Cum quis omnis et tenetur ad aperiam mollitia ut.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(125, 6, 26, 'Botble\\RealEstate\\Models\\Property', 3.75, 'Laborum accusamus quisquam ut. Porro illo aspernatur quos. Quaerat nesciunt corrupti aut est.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(126, 3, 26, 'Botble\\RealEstate\\Models\\Property', 3.75, 'Nam natus sed eveniet. Porro molestiae culpa non ut voluptatem numquam. Eaque harum et aspernatur officiis aut fugit veniam.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(127, 1, 26, 'Botble\\RealEstate\\Models\\Property', 2.25, 'Culpa dolores eius voluptatum placeat enim fugiat qui quasi. Voluptatem iste fugiat qui ullam culpa quia. Nisi dolor ut delectus officiis.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(128, 5, 26, 'Botble\\RealEstate\\Models\\Property', 3.75, 'Vero incidunt autem esse. Pariatur sequi expedita inventore voluptatem doloribus dolorem.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(129, 4, 26, 'Botble\\RealEstate\\Models\\Property', 4.00, 'Aut ut et deserunt et quas enim quis. Distinctio autem nobis dolorem. Sit est asperiores sed ex atque vero.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(130, 8, 27, 'Botble\\RealEstate\\Models\\Property', 3.50, 'Dolore possimus dolorem iste id cum aliquid. Et et ipsam quisquam nostrum. Vitae reprehenderit aut expedita quibusdam ex ut nam consequatur.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(131, 4, 27, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Omnis repellendus aut dolor et vero autem. Maiores doloremque expedita consequuntur omnis. Temporibus quidem ut doloribus eum.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(132, 10, 27, 'Botble\\RealEstate\\Models\\Property', 2.00, 'Quis sed culpa aliquid. Est impedit qui aut at. Earum nihil vel libero amet ab placeat.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(133, 10, 27, 'Botble\\RealEstate\\Models\\Property', 2.50, 'Sit veritatis hic deleniti voluptatem quo. Qui enim eos ex aut. Doloremque qui aut sit eaque.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(134, 11, 28, 'Botble\\RealEstate\\Models\\Property', 2.00, 'Itaque eligendi ab non qui doloremque sed. Quod nesciunt laboriosam ex. Est mollitia reiciendis ipsa optio vitae id.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(135, 2, 28, 'Botble\\RealEstate\\Models\\Property', 3.25, 'Accusamus ut qui earum odit. Facilis recusandae unde temporibus vel. Accusamus harum incidunt est iusto ut.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(136, 5, 28, 'Botble\\RealEstate\\Models\\Property', 3.25, 'Accusantium et quo eligendi minus alias culpa. Laborum ex consequatur facilis dolor occaecati aut. Distinctio illum quos vitae doloremque quia ut.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(137, 8, 28, 'Botble\\RealEstate\\Models\\Property', 3.50, 'Magni iste consectetur aut quisquam ipsum explicabo. Et earum sunt magni voluptatibus laudantium autem. Voluptate officia error reiciendis facilis.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(138, 7, 28, 'Botble\\RealEstate\\Models\\Property', 2.75, 'Iste sint voluptatem facilis quia eius accusamus. Voluptatum beatae sint possimus itaque. Est debitis at eveniet assumenda enim qui.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(139, 2, 29, 'Botble\\RealEstate\\Models\\Property', 2.25, 'Nulla ducimus praesentium voluptatibus. Tempora ipsa error suscipit magni sit aut. Dolor illum provident et. Et mollitia quaerat et ad.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(140, 2, 29, 'Botble\\RealEstate\\Models\\Property', 2.75, 'Quaerat ducimus non ab aut sed minima. Quisquam laborum nihil et ut. Cum consectetur quos quas suscipit. Quam tempora eum fugiat.', 'published', '2023-12-30 10:06:58', '2023-12-30 10:06:58'),
(141, 2, 29, 'Botble\\RealEstate\\Models\\Property', 3.25, 'Quos sed fugit tenetur neque nisi ut. Perferendis alias facere sed dolores dolores.', 'published', '2023-12-30 10:06:59', '2023-12-30 10:06:59'),
(142, 10, 29, 'Botble\\RealEstate\\Models\\Property', 2.25, 'Quia quia quia exercitationem fugit. Adipisci aspernatur quos nulla consequatur dolorem. Similique soluta occaecati ex ipsa non.', 'published', '2023-12-30 10:06:59', '2023-12-30 10:06:59'),
(143, 10, 29, 'Botble\\RealEstate\\Models\\Property', 2.50, 'Ipsum sit voluptas dolores explicabo. Non consequatur dolor maxime consequatur. Veritatis molestiae temporibus veniam esse molestias velit.', 'published', '2023-12-30 10:06:59', '2023-12-30 10:06:59'),
(144, 2, 30, 'Botble\\RealEstate\\Models\\Property', 2.50, 'Sit sapiente voluptatem sit quo ea. Veniam nostrum et non velit rerum quasi. Harum est saepe quos.', 'published', '2023-12-30 10:06:59', '2023-12-30 10:06:59'),
(145, 11, 30, 'Botble\\RealEstate\\Models\\Property', 3.25, 'Quaerat itaque velit consequatur sit perferendis aut. Reiciendis eveniet saepe mollitia aspernatur libero. Esse provident qui reiciendis rerum.', 'published', '2023-12-30 10:06:59', '2023-12-30 10:06:59'),
(146, 1, 30, 'Botble\\RealEstate\\Models\\Property', 2.75, 'Et vel quasi maxime. Tenetur ea dolorum ea aut. Dolore ut est est deserunt. Fugiat nemo labore dolores soluta nemo nostrum tenetur minus.', 'published', '2023-12-30 10:06:59', '2023-12-30 10:06:59'),
(147, 11, 30, 'Botble\\RealEstate\\Models\\Property', 2.25, 'Ducimus occaecati magnam aperiam error. Cum qui dolores minima incidunt enim nisi aliquam facilis. Ipsam ut ea nihil ducimus.', 'published', '2023-12-30 10:06:59', '2023-12-30 10:06:59'),
(148, 1, 30, 'Botble\\RealEstate\\Models\\Property', 3.50, 'Quibusdam soluta sequi accusantium fugit. Rerum voluptas voluptatem nostrum beatae tempora. Voluptate nihil veritatis vero magni in et.', 'published', '2023-12-30 10:06:59', '2023-12-30 10:06:59'),
(149, 9, 31, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Consequatur esse placeat esse asperiores. Sint aut recusandae dolor. Inventore velit quas id animi.', 'published', '2023-12-30 10:06:59', '2023-12-30 10:06:59'),
(150, 3, 31, 'Botble\\RealEstate\\Models\\Property', 2.75, 'In distinctio reprehenderit magni nemo. Omnis laudantium ea expedita natus autem. Et aut reprehenderit velit quos.', 'published', '2023-12-30 10:06:59', '2023-12-30 10:06:59'),
(151, 6, 31, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Et sit id vel quis quo. Esse unde iure porro voluptate.', 'published', '2023-12-30 10:06:59', '2023-12-30 10:06:59'),
(152, 11, 31, 'Botble\\RealEstate\\Models\\Property', 4.50, 'Ut et est dolorum aspernatur voluptas sequi nihil. Dicta adipisci laborum tempore quia. In quisquam qui molestiae dolorem et et.', 'published', '2023-12-30 10:06:59', '2023-12-30 10:06:59'),
(153, 9, 32, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Magni ducimus sunt dolor velit. Voluptas et dolorem dolore sapiente tempora voluptate tempora. Dolor rerum explicabo ut aut beatae harum fuga.', 'published', '2023-12-30 10:06:59', '2023-12-30 10:06:59'),
(154, 11, 32, 'Botble\\RealEstate\\Models\\Property', 3.25, 'Optio sapiente omnis sit cumque provident minus est. Eum id ducimus minus numquam totam. Aut molestiae repellat quo sunt aspernatur iusto laboriosam.', 'published', '2023-12-30 10:06:59', '2023-12-30 10:06:59'),
(155, 11, 32, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Tenetur quis quos eos qui id debitis vel corrupti. Ut provident dicta at quis fugit maxime qui. Fugiat et dolores similique velit.', 'published', '2023-12-30 10:06:59', '2023-12-30 10:06:59'),
(156, 3, 32, 'Botble\\RealEstate\\Models\\Property', 2.25, 'Consequuntur ratione qui saepe qui. Eos aut temporibus corporis corporis numquam veniam. Quasi aperiam quae molestias nobis eaque eveniet.', 'published', '2023-12-30 10:06:59', '2023-12-30 10:06:59'),
(157, 4, 32, 'Botble\\RealEstate\\Models\\Property', 2.25, 'Aut numquam quaerat distinctio libero. Sit quis non et dolor consequatur expedita aut. Autem quia perferendis quae.', 'published', '2023-12-30 10:06:59', '2023-12-30 10:06:59'),
(158, 3, 32, 'Botble\\RealEstate\\Models\\Property', 3.25, 'Eligendi nemo omnis iure eaque. Ut quisquam voluptatem totam quibusdam et. Eaque vel placeat sed aut architecto voluptatem.', 'published', '2023-12-30 10:06:59', '2023-12-30 10:06:59'),
(159, 7, 33, 'Botble\\RealEstate\\Models\\Property', 2.00, 'Expedita voluptas dolor autem similique dolore molestiae. Accusantium sed quia consequatur at quia ratione modi. Natus repellendus ab non dolore.', 'published', '2023-12-30 10:06:59', '2023-12-30 10:06:59'),
(160, 7, 33, 'Botble\\RealEstate\\Models\\Property', 2.00, 'Soluta et assumenda rem maxime labore id saepe. Iure numquam id autem aspernatur quia pariatur eius et. Enim est fuga et eaque quam quia.', 'published', '2023-12-30 10:06:59', '2023-12-30 10:06:59'),
(161, 3, 33, 'Botble\\RealEstate\\Models\\Property', 3.50, 'Et quo quia repellat explicabo ea dignissimos ipsum sed. Enim ipsam placeat dolorem aut. Occaecati soluta laboriosam iusto qui.', 'published', '2023-12-30 10:06:59', '2023-12-30 10:06:59'),
(162, 6, 33, 'Botble\\RealEstate\\Models\\Property', 3.25, 'Vel corrupti repudiandae ut totam fugit. Harum rerum qui consequatur et nesciunt. Architecto sed quod qui. Non doloremque et laboriosam quo.', 'published', '2023-12-30 10:06:59', '2023-12-30 10:06:59'),
(163, 11, 33, 'Botble\\RealEstate\\Models\\Property', 2.50, 'Modi iste laboriosam qui qui. Est dolorem suscipit quod consequatur dolor qui. Voluptas qui aperiam velit.', 'published', '2023-12-30 10:06:59', '2023-12-30 10:06:59'),
(164, 7, 33, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Assumenda rerum facilis quia impedit. Magnam vitae aut est similique minus recusandae. Voluptatem veritatis perspiciatis illo id.', 'published', '2023-12-30 10:06:59', '2023-12-30 10:06:59'),
(165, 1, 34, 'Botble\\RealEstate\\Models\\Property', 3.25, 'Totam enim totam quasi quaerat placeat sint. Voluptatum minus impedit totam tempora soluta. Deserunt aut totam asperiores ex totam.', 'published', '2023-12-30 10:06:59', '2023-12-30 10:06:59'),
(166, 2, 34, 'Botble\\RealEstate\\Models\\Property', 4.25, 'Expedita officia voluptates iure unde aperiam sunt. Officia quam non quibusdam ratione. Enim dolore saepe sint facilis autem aut at.', 'published', '2023-12-30 10:06:59', '2023-12-30 10:06:59'),
(167, 7, 34, 'Botble\\RealEstate\\Models\\Property', 3.50, 'Repellendus fuga repudiandae totam sed officia esse enim sint. Porro animi tenetur non. Et animi molestiae minima quam amet.', 'published', '2023-12-30 10:06:59', '2023-12-30 10:06:59');

-- --------------------------------------------------------

--
-- Table structure for table `re_reviews_meta`
--

CREATE TABLE `re_reviews_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_reviews_meta`
--

INSERT INTO `re_reviews_meta` (`id`, `key`, `value`, `review_id`) VALUES
(1, 'service', '2', 1),
(2, 'value', '4', 1),
(3, 'location', '4', 1),
(4, 'cleanliness', '5', 1),
(5, 'service', '5', 2),
(6, 'value', '2', 2),
(7, 'location', '1', 2),
(8, 'cleanliness', '2', 2),
(9, 'service', '1', 3),
(10, 'value', '1', 3),
(11, 'location', '4', 3),
(12, 'cleanliness', '2', 3),
(13, 'service', '3', 4),
(14, 'value', '2', 4),
(15, 'location', '3', 4),
(16, 'cleanliness', '4', 4),
(17, 'service', '3', 5),
(18, 'value', '4', 5),
(19, 'location', '3', 5),
(20, 'cleanliness', '1', 5),
(21, 'service', '1', 6),
(22, 'value', '4', 6),
(23, 'location', '4', 6),
(24, 'cleanliness', '2', 6),
(25, 'service', '2', 7),
(26, 'value', '2', 7),
(27, 'location', '5', 7),
(28, 'cleanliness', '2', 7),
(29, 'service', '2', 8),
(30, 'value', '2', 8),
(31, 'location', '5', 8),
(32, 'cleanliness', '4', 8),
(33, 'service', '5', 9),
(34, 'value', '2', 9),
(35, 'location', '5', 9),
(36, 'cleanliness', '4', 9),
(37, 'service', '2', 10),
(38, 'value', '1', 10),
(39, 'location', '1', 10),
(40, 'cleanliness', '2', 10),
(41, 'service', '2', 11),
(42, 'value', '4', 11),
(43, 'location', '2', 11),
(44, 'cleanliness', '3', 11),
(45, 'service', '1', 12),
(46, 'value', '2', 12),
(47, 'location', '3', 12),
(48, 'cleanliness', '2', 12),
(49, 'service', '1', 13),
(50, 'value', '1', 13),
(51, 'location', '2', 13),
(52, 'cleanliness', '2', 13),
(53, 'service', '4', 14),
(54, 'value', '5', 14),
(55, 'location', '5', 14),
(56, 'cleanliness', '5', 14),
(57, 'service', '2', 15),
(58, 'value', '3', 15),
(59, 'location', '5', 15),
(60, 'cleanliness', '4', 15),
(61, 'service', '2', 16),
(62, 'value', '2', 16),
(63, 'location', '1', 16),
(64, 'cleanliness', '3', 16),
(65, 'service', '3', 17),
(66, 'value', '4', 17),
(67, 'location', '3', 17),
(68, 'cleanliness', '4', 17),
(69, 'service', '3', 18),
(70, 'value', '1', 18),
(71, 'location', '3', 18),
(72, 'cleanliness', '1', 18),
(73, 'service', '3', 19),
(74, 'value', '2', 19),
(75, 'location', '4', 19),
(76, 'cleanliness', '5', 19),
(77, 'service', '3', 20),
(78, 'value', '2', 20),
(79, 'location', '4', 20),
(80, 'cleanliness', '4', 20),
(81, 'service', '2', 21),
(82, 'value', '4', 21),
(83, 'location', '5', 21),
(84, 'cleanliness', '2', 21),
(85, 'service', '4', 22),
(86, 'value', '5', 22),
(87, 'location', '5', 22),
(88, 'cleanliness', '1', 22),
(89, 'service', '1', 23),
(90, 'value', '4', 23),
(91, 'location', '1', 23),
(92, 'cleanliness', '5', 23),
(93, 'service', '1', 24),
(94, 'value', '3', 24),
(95, 'location', '2', 24),
(96, 'cleanliness', '3', 24),
(97, 'service', '3', 25),
(98, 'value', '4', 25),
(99, 'location', '4', 25),
(100, 'cleanliness', '1', 25),
(101, 'service', '1', 26),
(102, 'value', '2', 26),
(103, 'location', '4', 26),
(104, 'cleanliness', '5', 26),
(105, 'service', '2', 27),
(106, 'value', '4', 27),
(107, 'location', '5', 27),
(108, 'cleanliness', '1', 27),
(109, 'service', '2', 28),
(110, 'value', '5', 28),
(111, 'location', '5', 28),
(112, 'cleanliness', '5', 28),
(113, 'service', '4', 29),
(114, 'value', '4', 29),
(115, 'location', '3', 29),
(116, 'cleanliness', '1', 29),
(117, 'service', '5', 30),
(118, 'value', '3', 30),
(119, 'location', '2', 30),
(120, 'cleanliness', '1', 30),
(121, 'service', '3', 31),
(122, 'value', '5', 31),
(123, 'location', '4', 31),
(124, 'cleanliness', '3', 31),
(125, 'service', '2', 32),
(126, 'value', '1', 32),
(127, 'location', '5', 32),
(128, 'cleanliness', '5', 32),
(129, 'service', '4', 33),
(130, 'value', '3', 33),
(131, 'location', '3', 33),
(132, 'cleanliness', '2', 33),
(133, 'service', '1', 34),
(134, 'value', '2', 34),
(135, 'location', '3', 34),
(136, 'cleanliness', '1', 34),
(137, 'service', '5', 35),
(138, 'value', '5', 35),
(139, 'location', '1', 35),
(140, 'cleanliness', '2', 35),
(141, 'service', '1', 36),
(142, 'value', '4', 36),
(143, 'location', '5', 36),
(144, 'cleanliness', '2', 36),
(145, 'service', '3', 37),
(146, 'value', '5', 37),
(147, 'location', '3', 37),
(148, 'cleanliness', '2', 37),
(149, 'service', '4', 38),
(150, 'value', '5', 38),
(151, 'location', '4', 38),
(152, 'cleanliness', '5', 38),
(153, 'service', '2', 39),
(154, 'value', '3', 39),
(155, 'location', '4', 39),
(156, 'cleanliness', '1', 39),
(157, 'service', '1', 40),
(158, 'value', '1', 40),
(159, 'location', '2', 40),
(160, 'cleanliness', '4', 40),
(161, 'service', '2', 41),
(162, 'value', '4', 41),
(163, 'location', '5', 41),
(164, 'cleanliness', '2', 41),
(165, 'service', '2', 42),
(166, 'value', '1', 42),
(167, 'location', '1', 42),
(168, 'cleanliness', '4', 42),
(169, 'service', '2', 43),
(170, 'value', '2', 43),
(171, 'location', '5', 43),
(172, 'cleanliness', '1', 43),
(173, 'service', '3', 44),
(174, 'value', '5', 44),
(175, 'location', '4', 44),
(176, 'cleanliness', '1', 44),
(177, 'service', '4', 45),
(178, 'value', '1', 45),
(179, 'location', '5', 45),
(180, 'cleanliness', '1', 45),
(181, 'service', '5', 46),
(182, 'value', '3', 46),
(183, 'location', '4', 46),
(184, 'cleanliness', '3', 46),
(185, 'service', '5', 47),
(186, 'value', '4', 47),
(187, 'location', '2', 47),
(188, 'cleanliness', '2', 47),
(189, 'service', '4', 48),
(190, 'value', '3', 48),
(191, 'location', '4', 48),
(192, 'cleanliness', '3', 48),
(193, 'service', '3', 49),
(194, 'value', '3', 49),
(195, 'location', '4', 49),
(196, 'cleanliness', '5', 49),
(197, 'service', '5', 50),
(198, 'value', '1', 50),
(199, 'location', '1', 50),
(200, 'cleanliness', '5', 50),
(201, 'service', '2', 51),
(202, 'value', '5', 51),
(203, 'location', '3', 51),
(204, 'cleanliness', '2', 51),
(205, 'service', '2', 52),
(206, 'value', '5', 52),
(207, 'location', '2', 52),
(208, 'cleanliness', '2', 52),
(209, 'service', '4', 53),
(210, 'value', '5', 53),
(211, 'location', '2', 53),
(212, 'cleanliness', '4', 53),
(213, 'service', '4', 54),
(214, 'value', '2', 54),
(215, 'location', '2', 54),
(216, 'cleanliness', '4', 54),
(217, 'service', '3', 55),
(218, 'value', '5', 55),
(219, 'location', '5', 55),
(220, 'cleanliness', '3', 55),
(221, 'service', '2', 56),
(222, 'value', '4', 56),
(223, 'location', '5', 56),
(224, 'cleanliness', '4', 56),
(225, 'service', '3', 57),
(226, 'value', '2', 57),
(227, 'location', '3', 57),
(228, 'cleanliness', '5', 57),
(229, 'service', '5', 58),
(230, 'value', '1', 58),
(231, 'location', '5', 58),
(232, 'cleanliness', '3', 58),
(233, 'service', '5', 59),
(234, 'value', '5', 59),
(235, 'location', '4', 59),
(236, 'cleanliness', '2', 59),
(237, 'service', '1', 60),
(238, 'value', '3', 60),
(239, 'location', '4', 60),
(240, 'cleanliness', '1', 60),
(241, 'service', '1', 61),
(242, 'value', '3', 61),
(243, 'location', '5', 61),
(244, 'cleanliness', '3', 61),
(245, 'service', '3', 62),
(246, 'value', '5', 62),
(247, 'location', '4', 62),
(248, 'cleanliness', '1', 62),
(249, 'service', '2', 63),
(250, 'value', '3', 63),
(251, 'location', '2', 63),
(252, 'cleanliness', '5', 63),
(253, 'service', '5', 64),
(254, 'value', '2', 64),
(255, 'location', '4', 64),
(256, 'cleanliness', '2', 64),
(257, 'service', '2', 65),
(258, 'value', '3', 65),
(259, 'location', '4', 65),
(260, 'cleanliness', '4', 65),
(261, 'service', '3', 66),
(262, 'value', '2', 66),
(263, 'location', '5', 66),
(264, 'cleanliness', '5', 66),
(265, 'service', '1', 67),
(266, 'value', '3', 67),
(267, 'location', '5', 67),
(268, 'cleanliness', '3', 67),
(269, 'service', '4', 68),
(270, 'value', '2', 68),
(271, 'location', '5', 68),
(272, 'cleanliness', '3', 68),
(273, 'service', '5', 69),
(274, 'value', '5', 69),
(275, 'location', '1', 69),
(276, 'cleanliness', '5', 69),
(277, 'service', '2', 70),
(278, 'value', '4', 70),
(279, 'location', '1', 70),
(280, 'cleanliness', '4', 70),
(281, 'service', '2', 71),
(282, 'value', '5', 71),
(283, 'location', '5', 71),
(284, 'cleanliness', '2', 71),
(285, 'service', '5', 72),
(286, 'value', '5', 72),
(287, 'location', '1', 72),
(288, 'cleanliness', '2', 72),
(289, 'service', '1', 73),
(290, 'value', '3', 73),
(291, 'location', '1', 73),
(292, 'cleanliness', '5', 73),
(293, 'service', '1', 74),
(294, 'value', '5', 74),
(295, 'location', '3', 74),
(296, 'cleanliness', '4', 74),
(297, 'service', '4', 75),
(298, 'value', '5', 75),
(299, 'location', '2', 75),
(300, 'cleanliness', '3', 75),
(301, 'service', '3', 76),
(302, 'value', '3', 76),
(303, 'location', '1', 76),
(304, 'cleanliness', '5', 76),
(305, 'service', '4', 77),
(306, 'value', '5', 77),
(307, 'location', '4', 77),
(308, 'cleanliness', '5', 77),
(309, 'service', '5', 78),
(310, 'value', '5', 78),
(311, 'location', '3', 78),
(312, 'cleanliness', '5', 78),
(313, 'service', '2', 79),
(314, 'value', '2', 79),
(315, 'location', '4', 79),
(316, 'cleanliness', '2', 79),
(317, 'service', '1', 80),
(318, 'value', '4', 80),
(319, 'location', '1', 80),
(320, 'cleanliness', '4', 80),
(321, 'service', '2', 81),
(322, 'value', '1', 81),
(323, 'location', '2', 81),
(324, 'cleanliness', '2', 81),
(325, 'service', '4', 82),
(326, 'value', '5', 82),
(327, 'location', '2', 82),
(328, 'cleanliness', '4', 82),
(329, 'service', '1', 83),
(330, 'value', '4', 83),
(331, 'location', '5', 83),
(332, 'cleanliness', '2', 83),
(333, 'service', '1', 84),
(334, 'value', '4', 84),
(335, 'location', '1', 84),
(336, 'cleanliness', '3', 84),
(337, 'service', '5', 85),
(338, 'value', '4', 85),
(339, 'location', '2', 85),
(340, 'cleanliness', '1', 85),
(341, 'service', '5', 86),
(342, 'value', '2', 86),
(343, 'location', '5', 86),
(344, 'cleanliness', '4', 86),
(345, 'service', '5', 87),
(346, 'value', '3', 87),
(347, 'location', '5', 87),
(348, 'cleanliness', '1', 87),
(349, 'service', '1', 88),
(350, 'value', '3', 88),
(351, 'location', '2', 88),
(352, 'cleanliness', '3', 88),
(353, 'service', '4', 89),
(354, 'value', '2', 89),
(355, 'location', '2', 89),
(356, 'cleanliness', '3', 89),
(357, 'service', '5', 90),
(358, 'value', '1', 90),
(359, 'location', '4', 90),
(360, 'cleanliness', '2', 90),
(361, 'service', '2', 91),
(362, 'value', '5', 91),
(363, 'location', '2', 91),
(364, 'cleanliness', '5', 91),
(365, 'service', '2', 92),
(366, 'value', '3', 92),
(367, 'location', '4', 92),
(368, 'cleanliness', '4', 92),
(369, 'service', '5', 93),
(370, 'value', '4', 93),
(371, 'location', '4', 93),
(372, 'cleanliness', '3', 93),
(373, 'service', '5', 94),
(374, 'value', '5', 94),
(375, 'location', '3', 94),
(376, 'cleanliness', '3', 94),
(377, 'service', '3', 95),
(378, 'value', '3', 95),
(379, 'location', '4', 95),
(380, 'cleanliness', '1', 95),
(381, 'service', '4', 96),
(382, 'value', '4', 96),
(383, 'location', '5', 96),
(384, 'cleanliness', '5', 96),
(385, 'service', '2', 97),
(386, 'value', '2', 97),
(387, 'location', '4', 97),
(388, 'cleanliness', '2', 97),
(389, 'service', '5', 98),
(390, 'value', '2', 98),
(391, 'location', '4', 98),
(392, 'cleanliness', '1', 98),
(393, 'service', '1', 99),
(394, 'value', '4', 99),
(395, 'location', '2', 99),
(396, 'cleanliness', '2', 99),
(397, 'service', '1', 100),
(398, 'value', '3', 100),
(399, 'location', '2', 100),
(400, 'cleanliness', '2', 100),
(401, 'service', '2', 101),
(402, 'value', '1', 101),
(403, 'location', '4', 101),
(404, 'cleanliness', '1', 101),
(405, 'service', '5', 102),
(406, 'value', '4', 102),
(407, 'location', '3', 102),
(408, 'cleanliness', '3', 102),
(409, 'service', '3', 103),
(410, 'value', '5', 103),
(411, 'location', '5', 103),
(412, 'cleanliness', '3', 103),
(413, 'service', '2', 104),
(414, 'value', '4', 104),
(415, 'location', '3', 104),
(416, 'cleanliness', '5', 104),
(417, 'service', '2', 105),
(418, 'value', '4', 105),
(419, 'location', '5', 105),
(420, 'cleanliness', '1', 105),
(421, 'service', '5', 106),
(422, 'value', '4', 106),
(423, 'location', '4', 106),
(424, 'cleanliness', '5', 106),
(425, 'service', '3', 107),
(426, 'value', '4', 107),
(427, 'location', '4', 107),
(428, 'cleanliness', '4', 107),
(429, 'service', '1', 108),
(430, 'value', '2', 108),
(431, 'location', '1', 108),
(432, 'cleanliness', '2', 108),
(433, 'service', '5', 109),
(434, 'value', '4', 109),
(435, 'location', '4', 109),
(436, 'cleanliness', '4', 109),
(437, 'service', '1', 110),
(438, 'value', '2', 110),
(439, 'location', '3', 110),
(440, 'cleanliness', '1', 110),
(441, 'service', '3', 111),
(442, 'value', '5', 111),
(443, 'location', '5', 111),
(444, 'cleanliness', '1', 111),
(445, 'service', '1', 112),
(446, 'value', '4', 112),
(447, 'location', '4', 112),
(448, 'cleanliness', '2', 112),
(449, 'service', '4', 113),
(450, 'value', '1', 113),
(451, 'location', '5', 113),
(452, 'cleanliness', '5', 113),
(453, 'service', '4', 114),
(454, 'value', '3', 114),
(455, 'location', '2', 114),
(456, 'cleanliness', '5', 114),
(457, 'service', '5', 115),
(458, 'value', '1', 115),
(459, 'location', '5', 115),
(460, 'cleanliness', '2', 115),
(461, 'service', '1', 116),
(462, 'value', '2', 116),
(463, 'location', '2', 116),
(464, 'cleanliness', '1', 116),
(465, 'service', '5', 117),
(466, 'value', '4', 117),
(467, 'location', '1', 117),
(468, 'cleanliness', '4', 117),
(469, 'service', '3', 118),
(470, 'value', '1', 118),
(471, 'location', '4', 118),
(472, 'cleanliness', '5', 118),
(473, 'service', '1', 119),
(474, 'value', '2', 119),
(475, 'location', '2', 119),
(476, 'cleanliness', '1', 119),
(477, 'service', '4', 120),
(478, 'value', '4', 120),
(479, 'location', '5', 120),
(480, 'cleanliness', '2', 120),
(481, 'service', '5', 121),
(482, 'value', '2', 121),
(483, 'location', '4', 121),
(484, 'cleanliness', '3', 121),
(485, 'service', '2', 122),
(486, 'value', '5', 122),
(487, 'location', '3', 122),
(488, 'cleanliness', '2', 122),
(489, 'service', '2', 123),
(490, 'value', '1', 123),
(491, 'location', '1', 123),
(492, 'cleanliness', '4', 123),
(493, 'service', '4', 124),
(494, 'value', '3', 124),
(495, 'location', '5', 124),
(496, 'cleanliness', '4', 124),
(497, 'service', '2', 125),
(498, 'value', '5', 125),
(499, 'location', '3', 125),
(500, 'cleanliness', '5', 125),
(501, 'service', '2', 126),
(502, 'value', '5', 126),
(503, 'location', '4', 126),
(504, 'cleanliness', '4', 126),
(505, 'service', '2', 127),
(506, 'value', '3', 127),
(507, 'location', '2', 127),
(508, 'cleanliness', '2', 127),
(509, 'service', '5', 128),
(510, 'value', '5', 128),
(511, 'location', '4', 128),
(512, 'cleanliness', '1', 128),
(513, 'service', '2', 129),
(514, 'value', '4', 129),
(515, 'location', '5', 129),
(516, 'cleanliness', '5', 129),
(517, 'service', '5', 130),
(518, 'value', '1', 130),
(519, 'location', '5', 130),
(520, 'cleanliness', '3', 130),
(521, 'service', '1', 131),
(522, 'value', '4', 131),
(523, 'location', '2', 131),
(524, 'cleanliness', '5', 131),
(525, 'service', '1', 132),
(526, 'value', '1', 132),
(527, 'location', '3', 132),
(528, 'cleanliness', '3', 132),
(529, 'service', '1', 133),
(530, 'value', '4', 133),
(531, 'location', '3', 133),
(532, 'cleanliness', '2', 133),
(533, 'service', '2', 134),
(534, 'value', '1', 134),
(535, 'location', '1', 134),
(536, 'cleanliness', '4', 134),
(537, 'service', '4', 135),
(538, 'value', '4', 135),
(539, 'location', '4', 135),
(540, 'cleanliness', '1', 135),
(541, 'service', '4', 136),
(542, 'value', '5', 136),
(543, 'location', '2', 136),
(544, 'cleanliness', '2', 136),
(545, 'service', '5', 137),
(546, 'value', '5', 137),
(547, 'location', '1', 137),
(548, 'cleanliness', '3', 137),
(549, 'service', '3', 138),
(550, 'value', '2', 138),
(551, 'location', '2', 138),
(552, 'cleanliness', '4', 138),
(553, 'service', '4', 139),
(554, 'value', '1', 139),
(555, 'location', '3', 139),
(556, 'cleanliness', '1', 139),
(557, 'service', '2', 140),
(558, 'value', '3', 140),
(559, 'location', '4', 140),
(560, 'cleanliness', '2', 140),
(561, 'service', '4', 141),
(562, 'value', '4', 141),
(563, 'location', '1', 141),
(564, 'cleanliness', '4', 141),
(565, 'service', '2', 142),
(566, 'value', '3', 142),
(567, 'location', '3', 142),
(568, 'cleanliness', '1', 142),
(569, 'service', '5', 143),
(570, 'value', '2', 143),
(571, 'location', '2', 143),
(572, 'cleanliness', '1', 143),
(573, 'service', '5', 144),
(574, 'value', '1', 144),
(575, 'location', '1', 144),
(576, 'cleanliness', '3', 144),
(577, 'service', '3', 145),
(578, 'value', '3', 145),
(579, 'location', '3', 145),
(580, 'cleanliness', '4', 145),
(581, 'service', '1', 146),
(582, 'value', '4', 146),
(583, 'location', '2', 146),
(584, 'cleanliness', '4', 146),
(585, 'service', '3', 147),
(586, 'value', '4', 147),
(587, 'location', '1', 147),
(588, 'cleanliness', '1', 147),
(589, 'service', '3', 148),
(590, 'value', '3', 148),
(591, 'location', '4', 148),
(592, 'cleanliness', '4', 148),
(593, 'service', '5', 149),
(594, 'value', '1', 149),
(595, 'location', '5', 149),
(596, 'cleanliness', '1', 149),
(597, 'service', '4', 150),
(598, 'value', '1', 150),
(599, 'location', '1', 150),
(600, 'cleanliness', '5', 150),
(601, 'service', '5', 151),
(602, 'value', '2', 151),
(603, 'location', '4', 151),
(604, 'cleanliness', '1', 151),
(605, 'service', '4', 152),
(606, 'value', '4', 152),
(607, 'location', '5', 152),
(608, 'cleanliness', '5', 152),
(609, 'service', '5', 153),
(610, 'value', '5', 153),
(611, 'location', '1', 153),
(612, 'cleanliness', '1', 153),
(613, 'service', '4', 154),
(614, 'value', '4', 154),
(615, 'location', '3', 154),
(616, 'cleanliness', '2', 154),
(617, 'service', '4', 155),
(618, 'value', '4', 155),
(619, 'location', '1', 155),
(620, 'cleanliness', '3', 155),
(621, 'service', '3', 156),
(622, 'value', '1', 156),
(623, 'location', '1', 156),
(624, 'cleanliness', '4', 156),
(625, 'service', '3', 157),
(626, 'value', '1', 157),
(627, 'location', '4', 157),
(628, 'cleanliness', '1', 157),
(629, 'service', '3', 158),
(630, 'value', '4', 158),
(631, 'location', '3', 158),
(632, 'cleanliness', '3', 158),
(633, 'service', '1', 159),
(634, 'value', '4', 159),
(635, 'location', '1', 159),
(636, 'cleanliness', '2', 159),
(637, 'service', '1', 160),
(638, 'value', '3', 160),
(639, 'location', '3', 160),
(640, 'cleanliness', '1', 160),
(641, 'service', '5', 161),
(642, 'value', '3', 161),
(643, 'location', '2', 161),
(644, 'cleanliness', '4', 161),
(645, 'service', '5', 162),
(646, 'value', '3', 162),
(647, 'location', '3', 162),
(648, 'cleanliness', '2', 162),
(649, 'service', '1', 163),
(650, 'value', '1', 163),
(651, 'location', '3', 163),
(652, 'cleanliness', '5', 163),
(653, 'service', '1', 164),
(654, 'value', '2', 164),
(655, 'location', '5', 164),
(656, 'cleanliness', '4', 164),
(657, 'service', '2', 165),
(658, 'value', '3', 165),
(659, 'location', '3', 165),
(660, 'cleanliness', '5', 165),
(661, 'service', '4', 166),
(662, 'value', '5', 166),
(663, 'location', '4', 166),
(664, 'cleanliness', '4', 166),
(665, 'service', '5', 167),
(666, 'value', '1', 167),
(667, 'location', '3', 167),
(668, 'cleanliness', '5', 167);

-- --------------------------------------------------------

--
-- Table structure for table `re_transactions`
--

CREATE TABLE `re_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `credits` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'add',
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_transactions`
--

INSERT INTO `re_transactions` (`id`, `credits`, `description`, `user_id`, `account_id`, `type`, `payment_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 0, 15, 'add', NULL, '2023-12-30 10:51:08', '2023-12-30 10:51:08'),
(2, 200, 'Bonus', 1, 15, 'add', NULL, '2023-12-30 11:01:59', '2023-12-30 11:01:59'),
(3, 500, 'add credit', 1, 15, 'add', NULL, '2024-10-10 09:15:20', '2024-10-10 09:15:20'),
(4, 5, NULL, 0, 15, 'add', 1, '2024-10-10 09:21:05', '2024-10-10 09:21:05'),
(5, 1, NULL, 0, 20, 'add', 2, '2024-10-10 09:45:36', '2024-10-10 09:45:36');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2, 'activated_plugins', '[\"language\",\"analytics\",\"audit-log\",\"backup\",\"block\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"location\",\"payment\",\"paystack\",\"razorpay\",\"real-estate\",\"rss-feed\",\"social-login\",\"sslcommerz\",\"testimonial\",\"translation\"]', NULL, NULL),
(8, 'payment_bank_transfer_status', '1', NULL, NULL),
(9, 'payment_stripe_name', 'Pay online via Stripe', NULL, NULL),
(10, 'payment_stripe_description', 'Payment with Stripe', NULL, NULL),
(11, 'payment_stripe_client_id', 'pk_test_51JGbXaLmHOfJnFasFfg5ksgorTTlnnqt8RzdrT1qIjqg5sGcVK3fNWBZu1OZ84ndCI4fo0Bdm7TL1yLfiC6e7nF700hBjwxbKa', NULL, NULL),
(12, 'payment_stripe_secret', 'sk_test_51JGbXaLmHOfJnFasntP9rqE8wZ0qghWeMKcdlQphvMNo7C2sVaTFgRcjlnof8XVBRZspgVk7ctO62QlY10E8rHNT002pnOk3VI', NULL, NULL),
(13, 'payment_stripe_status', '1', NULL, NULL),
(14, 'payment_paypal_name', 'Pay online via PayPal', NULL, NULL),
(15, 'payment_paypal_description', 'Payment with PayPal', NULL, NULL),
(16, 'payment_paypal_client_id', 'AZlbcwqaPAMIZ27JGOMRYrkWlMdvylKDgoNwS6rzww4_Q2naixJ9KwoOgDdhkwXBro7yTxKOV1hADDMO', NULL, NULL),
(17, 'payment_paypal_secret', 'EG7289O15aSq5bT_XLY0VhA0slkme6rlKTBp0Z1KyGY-cJoq7kPIxAvDbpVd8npd_-jBHcnYuMjF9CV3', NULL, NULL),
(18, 'payment_paypal_status', '1', NULL, NULL),
(19, 'real_estate_square_unit', 'm²', NULL, NULL),
(20, 'real_estate_convert_money_to_text_enabled', '1', NULL, NULL),
(21, 'real_estate_thousands_separator', ',', NULL, NULL),
(22, 'real_estate_decimal_separator', '.', NULL, NULL),
(23, 'real_estate_enabled_register', '1', NULL, NULL),
(24, 'verify_account_email', '1', NULL, NULL),
(25, 'permalink-botble-blog-models-post', 'news', NULL, NULL),
(26, 'permalink-botble-blog-models-category', 'news', NULL, NULL),
(27, 'permalink-botble-location-models-city', 'city', NULL, NULL),
(28, 'real_estate_review_enabled', '1', NULL, NULL),
(29, 'real_estate_review_fields', '[[{\"key\":\"field\",\"value\":\"service\"}],[{\"key\":\"field\",\"value\":\"value\"}],[{\"key\":\"field\",\"value\":\"location\"}],[{\"key\":\"field\",\"value\":\"cleanliness\"}]]', NULL, NULL),
(79, 'theme-resido-bedroom', '[[{\"key\":\"label\",\"value\":1},{\"key\":\"value\",\"value\":1}],[{\"key\":\"label\",\"value\":2},{\"key\":\"value\",\"value\":2}],[{\"key\":\"label\",\"value\":3},{\"key\":\"value\",\"value\":3}],[{\"key\":\"label\",\"value\":4},{\"key\":\"value\",\"value\":4}],[{\"key\":\"label\",\"value\":5},{\"key\":\"value\",\"value\":5}]]', NULL, NULL),
(80, 'theme-vi-resido-bedroom', '[[{\"key\":\"label\",\"value\":1},{\"key\":\"value\",\"value\":1}],[{\"key\":\"label\",\"value\":2},{\"key\":\"value\",\"value\":2}],[{\"key\":\"label\",\"value\":3},{\"key\":\"value\",\"value\":3}],[{\"key\":\"label\",\"value\":4},{\"key\":\"value\",\"value\":4}],[{\"key\":\"label\",\"value\":5},{\"key\":\"value\",\"value\":5}]]', NULL, NULL),
(81, 'theme-resido-bathroom', '[[{\"key\":\"label\",\"value\":1},{\"key\":\"value\",\"value\":1}],[{\"key\":\"label\",\"value\":2},{\"key\":\"value\",\"value\":2}],[{\"key\":\"label\",\"value\":3},{\"key\":\"value\",\"value\":3}],[{\"key\":\"label\",\"value\":4},{\"key\":\"value\",\"value\":4}],[{\"key\":\"label\",\"value\":5},{\"key\":\"value\",\"value\":5}]]', NULL, NULL),
(82, 'theme-vi-resido-bathroom', '[[{\"key\":\"label\",\"value\":1},{\"key\":\"value\",\"value\":1}],[{\"key\":\"label\",\"value\":2},{\"key\":\"value\",\"value\":2}],[{\"key\":\"label\",\"value\":3},{\"key\":\"value\",\"value\":3}],[{\"key\":\"label\",\"value\":4},{\"key\":\"value\",\"value\":4}],[{\"key\":\"label\",\"value\":5},{\"key\":\"value\",\"value\":5}]]', NULL, NULL),
(83, 'language_hide_default', '1', NULL, NULL),
(84, 'language_switcher_display', 'list', NULL, NULL),
(85, 'language_display', 'all', NULL, NULL),
(86, 'language_hide_languages', '[]', NULL, NULL),
(87, 'media_random_hash', '35099164a78c155ef00645f185f0e975', NULL, NULL),
(88, 'review_enabled', '1', NULL, NULL),
(89, 'review_fields', '[[{\"key\":\"field\",\"value\":\"service\"}],[{\"key\":\"field\",\"value\":\"value\"}],[{\"key\":\"field\",\"value\":\"location\"}],[{\"key\":\"field\",\"value\":\"cleanliness\"}]]', NULL, NULL),
(110, 'show_admin_bar', '1', NULL, NULL),
(111, 'theme', 'resido', NULL, NULL),
(112, 'admin_logo', 'general/logo-light.png', NULL, NULL),
(113, 'admin_favicon', 'general/favicon.png', NULL, NULL),
(114, 'theme-resido-skin', 'blue-skin', NULL, NULL),
(115, 'theme-resido-font_heading', 'Jost', NULL, NULL),
(116, 'theme-resido-font_body', 'Muli', NULL, NULL),
(117, 'theme-resido-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies ', NULL, NULL),
(118, 'theme-resido-cookie_consent_learn_more_url', 'http://localhost/cookie-policy', NULL, NULL),
(119, 'theme-resido-cookie_consent_learn_more_text', 'Cookie Policy', NULL, NULL),
(120, 'theme-resido-copyright', '©2023 Resido. All rights reserved by TheSky9.', NULL, NULL),
(121, 'theme-resido-homepage_id', '1', NULL, NULL),
(122, 'theme-resido-blog_page_id', '12', NULL, NULL),
(123, 'theme-resido-logo', 'general/logo.png', NULL, NULL),
(124, 'theme-resido-favicon', 'general/favicon.png', NULL, NULL),
(125, 'theme-resido-logo_white', 'general/logo-light.png', NULL, NULL),
(126, 'theme-resido-img_loading', 'general/img-loading.jpg', NULL, NULL),
(127, 'theme-resido-site_title', 'Resido - Laravel Real Estate Multilingual Syste', NULL, NULL),
(128, 'theme-resido-seo_description', 'Resido is a premium real estate related websites build on Laravel. With an advanced admin dashboard that will help you create a local or global real-estate directory site.', NULL, NULL),
(129, 'theme-resido-seo_og_image', 'general/screenshot.png', NULL, NULL),
(130, 'theme-resido-address', 'Collins Street West, Victoria 8007, Australia.', NULL, NULL),
(131, 'theme-resido-hotline', '+1 246-345-0695', NULL, NULL),
(132, 'theme-resido-email', 'info@example.com', NULL, NULL),
(133, 'theme-resido-about-us', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, NULL),
(134, 'theme-resido-vi-skin', 'blue-skin', NULL, NULL),
(135, 'theme-resido-vi-font_heading', 'Montserrat', NULL, NULL),
(136, 'theme-resido-vi-font_body', 'Montserrat', NULL, NULL),
(137, 'theme-resido-vi-copyright', '©2023 Resido. Tất cả quyền đã được bảo hộ bởi TheSky9.', NULL, NULL),
(138, 'theme-resido-vi-cookie_consent_message', 'Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ', NULL, NULL),
(139, 'theme-resido-vi-cookie_consent_learn_more_url', 'http://localhost/cookie-policy', NULL, NULL),
(140, 'theme-resido-vi-cookie_consent_learn_more_text', 'Cookie Policy', NULL, NULL),
(141, 'theme-resido-vi-homepage_id', '1', NULL, NULL),
(142, 'theme-resido-vi-blog_page_id', '28', NULL, NULL),
(143, 'theme-resido-vi-logo', 'general/logo.png', NULL, NULL),
(144, 'theme-resido-vi-logo_white', 'general/logo-light.png', NULL, NULL),
(145, 'theme-resido-vi-img_loading', 'general/img-loading.jpg', NULL, NULL),
(146, 'theme-resido-vi-site_title', 'Resido - Laravel Real Estate Multilingual Syste', NULL, NULL),
(147, 'theme-resido-vi-seo_description', 'Resido is a premium real estate related websites build on Laravel. With an advanced admin dashboard that will help you create a local or global real-estate directory site.', NULL, NULL),
(148, 'theme-resido-vi-seo_og_image', 'general/screenshot.png', NULL, NULL),
(149, 'theme-resido-vi-address', 'Collins Street West, Victoria 8007, Australia.', NULL, NULL),
(150, 'theme-resido-vi-hotline', '+1 246-345-0695', NULL, NULL),
(151, 'theme-resido-vi-email', 'info@example.com', NULL, NULL),
(152, 'theme-resido-vi-about-us', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, NULL),
(153, 'theme-resido-social_links', '[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"ti-facebook\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"ti-twitter\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"ti-instagram\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Linkedin\"},{\"key\":\"social-icon\",\"value\":\"ti-linkedin\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.linkedin.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"ti-pinterest\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]', NULL, NULL),
(154, 'theme-vi-resido-social_links', '[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"ti-facebook\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"ti-twitter\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"ti-instagram\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Linkedin\"},{\"key\":\"social-icon\",\"value\":\"ti-linkedin\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.linkedin.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"ti-pinterest\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]', NULL, NULL),
(155, 'theme-resido-min_price', '[[{\"key\":\"label\",\"value\":500},{\"key\":\"value\",\"value\":500}],[{\"key\":\"label\",\"value\":1000},{\"key\":\"value\",\"value\":1000}],[{\"key\":\"label\",\"value\":2000},{\"key\":\"value\",\"value\":2000}],[{\"key\":\"label\",\"value\":5000},{\"key\":\"value\",\"value\":5000}],[{\"key\":\"label\",\"value\":10000},{\"key\":\"value\",\"value\":10000}]]', NULL, NULL),
(156, 'theme-vi-resido-min_price', '[[{\"key\":\"label\",\"value\":500},{\"key\":\"value\",\"value\":500}],[{\"key\":\"label\",\"value\":1000},{\"key\":\"value\",\"value\":1000}],[{\"key\":\"label\",\"value\":2000},{\"key\":\"value\",\"value\":2000}],[{\"key\":\"label\",\"value\":5000},{\"key\":\"value\",\"value\":5000}],[{\"key\":\"label\",\"value\":10000},{\"key\":\"value\",\"value\":10000}]]', NULL, NULL),
(157, 'theme-resido-max_price', '[[{\"key\":\"label\",\"value\":1000},{\"key\":\"value\",\"value\":1000}],[{\"key\":\"label\",\"value\":2000},{\"key\":\"value\",\"value\":2000}],[{\"key\":\"label\",\"value\":5000},{\"key\":\"value\",\"value\":5000}],[{\"key\":\"label\",\"value\":10000},{\"key\":\"value\",\"value\":10000}],[{\"key\":\"label\",\"value\":50000},{\"key\":\"value\",\"value\":50000}]]', NULL, NULL),
(158, 'theme-vi-resido-max_price', '[[{\"key\":\"label\",\"value\":1000},{\"key\":\"value\",\"value\":1000}],[{\"key\":\"label\",\"value\":2000},{\"key\":\"value\",\"value\":2000}],[{\"key\":\"label\",\"value\":5000},{\"key\":\"value\",\"value\":5000}],[{\"key\":\"label\",\"value\":10000},{\"key\":\"value\",\"value\":10000}],[{\"key\":\"label\",\"value\":50000},{\"key\":\"value\",\"value\":50000}]]', NULL, NULL),
(163, 'email_driver', 'smtp', NULL, NULL),
(164, 'email_port', '587', NULL, NULL),
(165, 'email_host', 'smtp.gmail.com', NULL, NULL),
(166, 'email_username', 'araman666@gmail.com', NULL, NULL),
(167, 'email_password', 'ugwk tnbj wefa xxad', NULL, NULL),
(168, 'email_encryption', 'tls', NULL, NULL),
(169, 'email_mail_gun_domain', NULL, NULL, NULL),
(170, 'email_mail_gun_secret', NULL, NULL, NULL),
(171, 'email_mail_gun_endpoint', 'api.mailgun.net', NULL, NULL),
(172, 'email_ses_key', NULL, NULL, NULL),
(173, 'email_ses_secret', NULL, NULL, NULL),
(174, 'email_ses_region', 'us-east-1', NULL, NULL),
(175, 'email_postmark_token', NULL, NULL, NULL),
(176, 'email_sendmail_path', '/usr/sbin/sendmail -bs', NULL, NULL),
(177, 'email_log_channel', NULL, NULL, NULL),
(178, 'email_from_name', 'Resido', NULL, NULL),
(179, 'email_from_address', 'araman666@gmail.com', NULL, NULL),
(180, 'using_queue_to_send_mail', '0', NULL, NULL),
(181, 'plugins_real-estate_notice_status', '1', NULL, NULL),
(182, 'plugins_real-estate_new-pending-property_status', '0', NULL, NULL),
(183, 'plugins_real-estate_account-registered_status', '0', NULL, NULL),
(184, 'plugins_real-estate_payment-receipt_status', '0', NULL, NULL),
(185, 'plugins_real-estate_free-credit-claimed_status', '0', NULL, NULL),
(186, 'plugins_real-estate_payment-received_status', '0', NULL, NULL),
(187, 'plugins_contact_notice_status', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(703, 'alhambra', 1, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:18', '2023-12-30 10:06:26'),
(704, 'oakland', 2, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:18', '2023-12-30 10:06:26'),
(705, 'bakersfield', 3, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:18', '2023-12-30 10:06:26'),
(706, 'anaheim', 4, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:18', '2023-12-30 10:06:26'),
(707, 'san-francisco', 5, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:18', '2023-12-30 10:06:26'),
(708, 'san-diegocounty', 6, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:18', '2023-12-30 10:06:26'),
(709, 'ho-chi-minh', 7, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:18', '2023-12-30 10:06:26'),
(710, 'ha-noi', 8, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:18', '2023-12-30 10:06:26'),
(711, 'da-nang', 9, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:18', '2023-12-30 10:06:26'),
(712, 'hai-phong', 10, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:18', '2023-12-30 10:06:26'),
(713, 'binh-duong', 11, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:18', '2023-12-30 10:06:26'),
(714, 'long-an', 12, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:18', '2023-12-30 10:06:26'),
(715, 'newark', 13, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(716, 'peoria', 14, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(717, 'ofallon', 15, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(718, 'hampton', 16, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(719, 'lakewood', 17, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(720, 'mesa', 18, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(721, 'bryan', 19, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(722, 'garland', 20, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(723, 'springfield', 21, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(724, 'flint', 22, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(725, 'tacoma', 23, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(726, 'waterbury', 24, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(727, 'eagan', 25, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(728, 'fort-smith', 26, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(729, 'carmichael', 27, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(730, 'daly-city', 28, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(731, 'murrieta', 29, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(732, 'brentwood', 30, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(733, 'quincy', 31, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(734, 'boulder', 32, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(735, 'evanston', 33, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(736, 'dothan', 34, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(737, 'antioch', 35, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(738, 'madison', 36, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(739, 'victorville', 37, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(740, 'billings', 38, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(741, 'sandy-springs', 39, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(742, 'iowa-city', 40, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(743, 'largo', 41, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(744, 'shreveport', 42, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(745, 'kalamazoo', 43, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(746, 'round-rock', 44, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(747, 'richmond', 45, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(748, 'columbia', 46, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(749, 'sandy', 47, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(750, 'hoover', 48, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(751, 'fullerton', 49, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(752, 'rapid-city', 50, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(753, 'newport-beach', 51, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(754, 'columbus', 52, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(755, 'palm-coast', 53, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(756, 'albany', 54, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(757, 'jurupa-valley', 55, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(758, 'providence', 56, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(759, 'decatur', 57, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(760, 'scranton', 58, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(761, 'rochester', 59, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(762, 'buffalo', 60, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(763, 'santa-ana', 61, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(764, 'sunnyvale', 62, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(765, 'augusta-richmond-county-consolidated-government', 63, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(766, 'milwaukee', 64, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(767, 'conroe', 65, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(768, 'savannah', 66, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(769, 'german', 67, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(770, 'costa-mesa', 68, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(771, 'new-haven', 69, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(772, 'westland', 70, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(773, 'waldorf', 71, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(774, 'cedar-rapids', 72, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(775, 'troy', 73, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(776, 'kirkland', 74, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(777, 'santa-barbara', 75, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(778, 'lake-forest', 76, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(779, 'chino', 77, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(780, 'tucson', 78, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(781, 'boise', 79, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(782, 'joliet', 80, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(783, 'metairie', 81, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(784, 'moreno-valley', 82, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(785, 'elizabeth', 83, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(786, 'wyoming', 84, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(787, 'norman', 85, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(788, 'frisco', 86, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(789, 'waterloo', 87, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(790, 'jonesboro', 88, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(791, 'mission', 89, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(792, 'midland', 90, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(793, 'lansing', 91, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(794, 'springdale', 92, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(795, 'bay', 93, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(796, 'apple-valley', 94, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(797, 'brockton', 95, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(798, 'poinciana', 96, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(799, 'davis', 97, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(800, 'saint-louis', 98, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(801, 'lehigh-acres', 99, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(802, 'henderson', 100, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(803, 'los-angeles', 101, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(804, 'boca-raton', 102, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(805, 'union-city', 103, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(806, 'lakeland', 104, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(807, 'mount-pleasant', 105, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(808, 'des-moines', 106, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(809, 'asheville', 107, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(810, 'west-palm-beach', 108, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(811, 'bayonne', 109, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(812, 'coral-springs', 110, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(813, 'atlanta', 111, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(814, 'redlands', 112, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(815, 'toms-river', 113, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(816, 'palmdale', 114, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(817, 'youngs', 115, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(818, 'frederick', 116, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(819, 'fargo', 117, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(820, 'cedar-park', 118, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(821, 'fort-collins', 119, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(822, 'portsmouth', 120, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(823, 'fremont', 121, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:19', '2023-12-30 10:06:26'),
(824, 'bloomington', 122, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(825, 'woodbury', 123, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(826, 'camden', 124, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(827, 'gresham', 125, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(828, 'lorain', 126, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(829, 'south-san-francisco', 127, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(830, 'manchester', 128, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(831, 'longview', 129, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(832, 'richardson', 130, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(833, 'yonkers', 131, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(834, 'pharr', 132, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(835, 'redding', 133, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(836, 'fontana', 134, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(837, 'fort-lauderdale', 135, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(838, 'fort-wayne', 136, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(839, 'lancaster', 137, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(840, 'flower-mound', 138, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(841, 'aurora', 139, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(842, 'jacksonville', 140, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(843, 'carlsbad', 141, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(844, 'grand-prairie', 142, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(845, 'evansville', 143, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(846, 'saint-cloud', 144, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(847, 'weston', 145, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(848, 'greensboro', 146, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(849, 'vallejo', 147, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(850, 'bellflower', 148, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(851, 'kenner', 149, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(852, 'albuquerque', 150, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(853, 'town-n-country', 151, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(854, 'cary', 152, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(855, 'loveland', 153, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(856, 'menifee', 154, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(857, 'mobile', 155, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(858, 'orem', 156, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(859, 'baltimore', 157, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(860, 'brownsville', 158, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(861, 'riverview', 159, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(862, 'lafayette', 160, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(863, 'duluth', 161, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(864, 'everett', 162, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(865, 'southfield', 163, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(866, 'pawtucket', 164, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(867, 'reno', 165, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(868, 'layton', 166, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(869, 'lewisville', 167, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(870, 'guaynabo', 168, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(871, 'livermore', 169, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(872, 'memphis', 170, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(873, 'lees-summit', 171, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(874, 'norwalk', 172, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(875, 'san-antonio', 173, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(876, 'hemet', 174, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(877, 'abilene', 175, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(878, 'bolingbrook', 176, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(879, 'roswell', 177, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(880, 'huntsville', 178, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(881, 'livonia', 179, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(882, 'fort-worth', 180, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(883, 'tracy', 181, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(884, 'nashville', 182, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(885, 'independence', 183, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(886, 'colorado-springs', 184, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(887, 'camarillo', 185, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(888, 'kendall', 186, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(889, 'parma', 187, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(890, 'shawnee', 188, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(891, 'bk', 189, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(892, 'san-tan-valley', 190, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(893, 'alafaya', 191, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(894, 'saint-paul', 192, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(895, 'boston', 193, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(896, 'dearborn', 194, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(897, 'lawrence', 195, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(898, 'nampa', 196, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(899, 'vista', 197, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(900, 'palm-bay', 198, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(901, 'lawton', 199, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(902, 'reading', 200, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(903, 'new-britain', 201, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(904, 'waukesha', 202, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(905, 'the-woodlands', 203, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(906, 'lubbock', 204, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(907, 'north-las-vegas', 205, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(908, 'baton-rouge', 206, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(909, 'chicago', 207, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(910, 'garden-grove', 208, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(911, 'south-jordan', 209, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(912, 'cape-coral', 210, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(913, 'chesapeake', 211, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(914, 'westminster', 212, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(915, 'irvine', 213, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(916, 'arlington', 214, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(917, 'johns-creek', 215, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(918, 'edmond', 216, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(919, 'bend', 217, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(920, 'las-vegas', 218, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(921, 'carrollton', 219, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(922, 'cleveland', 220, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(923, 'west-valley-city', 221, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(924, 'grand-rapids', 222, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(925, 'federal-way', 223, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(926, 'saint-petersburg', 224, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:20', '2023-12-30 10:06:26'),
(927, 'turlock', 225, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(928, 'riverside', 226, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(929, 'berkeley', 227, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(930, 'santa-fe', 228, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(931, 'chino-hills', 229, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(932, 'schaumburg', 230, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(933, 'clovis', 231, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(934, 'torrance', 232, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(935, 'mckinney', 233, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(936, 'roanoke', 234, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(937, 'corona', 235, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(938, 'fairfield', 236, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(939, 'downey', 237, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(940, 'macon', 238, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(941, 'athens-clarke-county-unified-government', 239, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(942, 'temecula', 240, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(943, 'concord', 241, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(944, 'corpus-christi', 242, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(945, 'rancho-cordova', 243, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(946, 'tampa', 244, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(947, 'fayetteville', 245, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(948, 'montgomery', 246, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(949, 'kansas-city', 247, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(950, 'college-station', 248, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(951, 'green-bay', 249, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(952, 'bossier-city', 250, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(953, 'merced', 251, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(954, 'warner-robins', 252, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(955, 'san-leandro', 253, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(956, 'plano', 254, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(957, 'lynchburg', 255, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(958, 'vacaville', 256, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(959, 'laredo', 257, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(960, 'el-cajon', 258, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(961, 'cicero', 259, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(962, 'rio-rancho', 260, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(963, 'marysville', 261, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(964, 'carson', 262, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(965, 'citrus-heights', 263, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(966, 'north-little-rock', 264, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(967, 'atascocita', 265, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(968, 'erie', 266, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(969, 'fresno', 267, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(970, 'high-point', 268, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(971, 'pearland', 269, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(972, 'denton', 270, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(973, 'san-bernardino', 271, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(974, 'mesquite', 272, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(975, 'sioux-falls', 273, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(976, 'charleston', 274, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(977, 'redwood-city', 275, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(978, 'paradise', 276, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(979, 'upland', 277, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(980, 'paterson', 278, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(981, 'pasco', 279, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(982, 'schenectady', 280, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(983, 'worcester', 281, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(984, 'pembroke-pines', 282, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(985, 'west-covina', 283, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(986, 'raleigh', 284, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(987, 'compton', 285, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(988, 'amarillo', 286, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(989, 'glendale', 287, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(990, 'broken-arrow', 288, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(991, 'hartford', 289, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(992, 'warwick', 290, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(993, 'charlotte', 291, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(994, 'jersey-city', 292, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(995, 'long-beach', 293, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(996, 'spokane-valley', 294, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(997, 'mayaguez', 295, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(998, 'san-diego', 296, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(999, 'chandler', 297, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(1000, 'pine-hills', 298, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(1001, 'tulsa', 299, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(1002, 'hawthorne', 300, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(1003, 'portland', 301, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(1004, 'sunrise-manor', 302, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(1005, 'longmont', 303, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(1006, 'arden-arcade', 304, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(1007, 'anchorage', 305, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(1008, 'missoula', 306, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(1009, 'newton', 307, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(1010, 'cincinnati', 308, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(1011, 'santa-rosa', 309, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(1012, 'centennial', 310, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(1013, 'new-braunfels', 311, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(1014, 'elk-grove', 312, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(1015, 'norfolk', 313, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(1016, 'pompano-beach', 314, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(1017, 'redondo-beach', 315, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(1018, 'jackson', 316, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(1019, 'casas-adobes', 317, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(1020, 'gilbert', 318, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(1021, 'santa-clara', 319, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(1022, 'maple-grove', 320, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(1023, 'davie', 321, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(1024, 'victoria', 322, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(1025, 'ames', 323, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(1026, 'trenton', 324, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(1027, 'sunrise', 325, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(1028, 'odessa', 326, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(1029, 'olathe', 327, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(1030, 'urban-honolulu', 328, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(1031, 'davenport', 329, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:21', '2023-12-30 10:06:26'),
(1032, 'san-juan', 330, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1033, 'milpitas', 331, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1034, 'mcallen', 332, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1035, 'missouri-city', 333, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1036, 'kissimmee', 334, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1037, 'hammond', 335, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1038, 'elgin', 336, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1039, 'passaic', 337, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1040, 'east-orange', 338, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1041, 'houston', 339, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1042, 'alameda', 340, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1043, 'arlington-heights', 341, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1044, 'waco', 342, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1045, 'oklahoma-city', 343, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1046, 'south-gate', 344, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1047, 'appleton', 345, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1048, 'san-ramon', 346, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1049, 'ellicott-city', 347, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1050, 'durham', 348, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1051, 'league-city', 349, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1052, 'killeen', 350, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1053, 'arvada', 351, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1054, 'folsom', 352, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1055, 'clearwater', 353, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1056, 'cranston', 354, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1057, 'beaumont', 355, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1058, 'avondale', 356, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1059, 'eau-claire', 357, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1060, 'beaverton', 358, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1061, 'virginia-beach', 359, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1062, 'stamford', 360, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1063, 'bellevue', 361, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1064, 'hollywood', 362, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1065, 'saint-joseph', 363, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1066, 'thornton', 364, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1067, 'toledo', 365, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1068, 'akron', 366, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1069, 'gaithersburg', 367, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1070, 'roseville', 368, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1071, 'pittsburgh', 369, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1072, 'sparks', 370, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1073, 'brooklyn-park', 371, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1074, 'rock-hill', 372, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1075, 'san-buenaventura', 373, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1076, 'lynn', 374, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1077, 'port-saint-lucie', 375, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1078, 'washington', 376, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1079, 'tustin', 377, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1080, 'lynwood', 378, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1081, 'lexington-fayette-county', 379, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1082, 'las-cruces', 380, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1083, 'north-charleston', 381, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1084, 'miramar', 382, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1085, 'miami-gardens', 383, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1086, 'rochester-hills', 384, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1087, 'indio', 385, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1088, 'racine', 386, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1089, 'boynton-beach', 387, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1090, 'alexandria', 388, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1091, 'cheektowaga', 389, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1092, 'deerfield-beach', 390, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1093, 'miami', 391, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1094, 'medford', 392, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1095, 'ogden', 393, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1096, 'san-clemente', 394, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1097, 'orange', 395, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1098, 'bridgeport', 396, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1099, 'pleasanton', 397, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1100, 'lake-charles', 398, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1101, 'thousand-oaks', 399, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1102, 'chico', 400, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1103, 'goodyear', 401, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1104, 'kent', 402, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1105, 'plantation', 403, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1106, 'gary', 404, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1107, 'sugar-land', 405, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1108, 'silver-spring', 406, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1109, 'el-paso', 407, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1110, 'winston-salem', 408, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1111, 'lincoln', 409, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1112, 'renton', 410, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1113, 'gainesville', 411, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1114, 'sacramento', 412, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1115, 'simi-valley', 413, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1116, 'wilmington', 414, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1117, 'wichita', 415, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1118, 'allen', 416, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1119, 'danbury', 417, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1120, 'provo', 418, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1121, 'san-marcos', 419, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1122, 'escondido', 420, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1123, 'caguas', 421, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1124, 'spokane', 422, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1125, 'auburn', 423, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:22', '2023-12-30 10:06:26'),
(1126, 'surprise', 424, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1127, 'louisvillejefferson-county-metro-government', 425, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1128, 'spring-valley', 426, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1129, 'yakima', 427, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1130, 'clifton', 428, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1131, 'farmington-hills', 429, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1132, 'napa', 430, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1133, 'irving', 431, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1134, 'chula-vista', 432, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1135, 'salinas', 433, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1136, 'pasadena', 434, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1137, 'newport-news', 435, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1138, 'miami-beach', 436, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1139, 'tempe', 437, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1140, 'sterling-heights', 438, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1141, 'hialeah', 439, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1142, 'gulfport', 440, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1143, 'tuscaloosa', 441, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1144, 'plymouth', 442, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1145, 'mount-vernon', 443, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1146, 'fishers', 444, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1147, 'santa-maria', 445, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1148, 'the-villages', 446, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1149, 'oxnard', 447, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1150, 'gastonia', 448, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(1151, 'deltona', 449, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1152, 'greenville', 450, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1153, 'salt-lake-city', 451, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1154, 'homestead', 452, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1155, 'waukegan', 453, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1156, 'topeka', 454, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1157, 'clarksville', 455, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1158, 'franklin', 456, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1159, 'little-rock', 457, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1160, 'tallahassee', 458, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1161, 'cambridge', 459, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1162, 'skokie', 460, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1163, 'new-york', 461, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1164, 'modesto', 462, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1165, 'dallas', 463, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1166, 'baldwin-park', 464, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1167, 'hesperia', 465, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1168, 'east-los-angeles', 466, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1169, 'whittier', 467, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1170, 'lauderhill', 468, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1171, 'huntington-beach', 469, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1172, 'carmel', 470, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1173, 'bellingham', 471, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1174, 'delray-beach', 472, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1175, 'seattle', 473, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1176, 'suffolk', 474, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1177, 'omaha', 475, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1178, 'champaign', 476, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1179, 'vancouver', 477, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1180, 'meridian', 478, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1181, 'saint-charles', 479, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1182, 'inglewood', 480, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1183, 'harlingen', 481, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1184, 'austin', 482, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1185, 'san-jose', 483, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1186, 'melbourne', 484, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1187, 'tyler', 485, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1188, 'greeley', 486, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1189, 'west-jordan', 487, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1190, 'perris', 488, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1191, 'johnson-city', 489, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1192, 'new-orleans', 490, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1193, 'chattanooga', 491, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1194, 'san-angelo', 492, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1195, 'syracuse', 493, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1196, 'ann-arbor', 494, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1197, 'visalia', 495, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1198, 'naperville', 496, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1199, 'scottsdale', 497, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1200, 'lowell', 498, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1201, 'mission-viejo', 499, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1202, 'new-rochelle', 500, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1203, 'manteca', 501, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1204, 'florence-graham', 502, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1205, 'brandon', 503, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1206, 'north-richland-hills', 504, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1207, 'murfreesboro', 505, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1208, 'enterprise', 506, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:23', '2023-12-30 10:06:26'),
(1209, 'nashua', 507, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1210, 'rialto', 508, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1211, 'rockford', 509, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1212, 'san-mateo', 510, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1213, 'pueblo', 511, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1214, 'spring-hill', 512, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1215, 'mountain-view', 513, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1216, 'phoenix', 514, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1217, 'dale-city', 515, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1218, 'santa-clarita', 516, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1219, 'hillsboro', 517, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1220, 'buena-park', 518, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1221, 'oshkosh', 519, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1222, 'pittsburg', 520, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1223, 'oceanside', 521, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1224, 'highlands-ranch', 522, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1225, 'sioux-city', 523, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1226, 'detroit', 524, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1227, 'rancho-cucamonga', 525, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1228, 'somerville', 526, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1229, 'framingham', 527, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1230, 'new-bedford', 528, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1231, 'philadelphia', 529, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1232, 'eugene', 530, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1233, 'kenosha', 531, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1234, 'bismarck', 532, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1235, 'yorba-linda', 533, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1236, 'carolina', 534, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1237, 'knoxville', 535, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1238, 'hayward', 536, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1239, 'flagstaff', 537, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1240, 'wichita-falls', 538, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1241, 'minneapolis', 539, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1242, 'canton', 540, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1243, 'glen-burnie', 541, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1244, 'laguna-niguel', 542, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1245, 'bethlehem', 543, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1246, 'palo-alto', 544, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1247, 'saint-george', 545, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1248, 'yuba-city', 546, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1249, 'el-monte', 547, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1250, 'orlando', 548, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1251, 'stockton', 549, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1252, 'yuma', 550, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1253, 'indianapolis', 551, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1254, 'edinburg', 552, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1255, 'warren', 553, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1256, 'ontario', 554, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1257, 'kennewick', 555, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1258, 'birmingham', 556, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1259, 'rockville', 557, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1260, 'muncie', 558, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1261, 'overland-park', 559, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:24', '2023-12-30 10:06:26'),
(1262, 'centreville', 560, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:25', '2023-12-30 10:06:26'),
(1263, 'santa-monica', 561, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:25', '2023-12-30 10:06:26'),
(1264, 'dayton', 562, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:25', '2023-12-30 10:06:26'),
(1265, 'salem', 563, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:25', '2023-12-30 10:06:26'),
(1266, 'ponce', 564, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:25', '2023-12-30 10:06:26'),
(1267, 'pomona', 565, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:25', '2023-12-30 10:06:26'),
(1268, 'fall-river', 566, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:25', '2023-12-30 10:06:26'),
(1269, 'palatine', 567, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:25', '2023-12-30 10:06:26'),
(1270, 'bayamon', 568, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:25', '2023-12-30 10:06:26'),
(1271, 'south-bend', 569, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:25', '2023-12-30 10:06:26'),
(1272, 'temple', 570, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:25', '2023-12-30 10:06:26'),
(1273, 'denver', 571, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:25', '2023-12-30 10:06:26'),
(1274, 'broomfield', 572, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:25', '2023-12-30 10:06:26'),
(1275, 'walnut-creek', 573, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:25', '2023-12-30 10:06:26'),
(1276, 'fort-myers', 574, 'Botble\\Location\\Models\\City', 'city', '2023-12-30 10:06:25', '2023-12-30 10:06:26'),
(1277, 'home', 1, 'Botble\\Page\\Models\\Page', '', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(1278, 'home-layout-2', 2, 'Botble\\Page\\Models\\Page', '', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(1279, 'home-layout-3', 3, 'Botble\\Page\\Models\\Page', '', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(1280, 'home-layout-4', 4, 'Botble\\Page\\Models\\Page', '', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(1281, 'home-layout-5', 5, 'Botble\\Page\\Models\\Page', '', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(1282, 'home-layout-6', 6, 'Botble\\Page\\Models\\Page', '', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(1283, 'home-layout-7', 7, 'Botble\\Page\\Models\\Page', '', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(1284, 'home-layout-8', 8, 'Botble\\Page\\Models\\Page', '', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(1285, 'home-layout-9', 9, 'Botble\\Page\\Models\\Page', '', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(1286, 'map-home-layout', 10, 'Botble\\Page\\Models\\Page', '', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(1287, 'properties', 11, 'Botble\\Page\\Models\\Page', '', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(1288, 'news', 12, 'Botble\\Page\\Models\\Page', '', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(1289, 'about-us', 13, 'Botble\\Page\\Models\\Page', '', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(1290, 'contact', 14, 'Botble\\Page\\Models\\Page', '', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(1291, 'terms-conditions', 15, 'Botble\\Page\\Models\\Page', '', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(1292, 'cookie-policy', 16, 'Botble\\Page\\Models\\Page', '', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(1293, 'trang-chu', 17, 'Botble\\Page\\Models\\Page', '', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(1294, 'trang-chu-2', 18, 'Botble\\Page\\Models\\Page', '', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(1295, 'trang-chu-3', 19, 'Botble\\Page\\Models\\Page', '', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(1296, 'trang-chu-4', 20, 'Botble\\Page\\Models\\Page', '', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(1297, 'trang-chu-5', 21, 'Botble\\Page\\Models\\Page', '', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(1298, 'trang-chu-6', 22, 'Botble\\Page\\Models\\Page', '', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(1299, 'trang-chu-7', 23, 'Botble\\Page\\Models\\Page', '', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(1300, 'trang-chu-8', 24, 'Botble\\Page\\Models\\Page', '', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(1301, 'trang-chu-9', 25, 'Botble\\Page\\Models\\Page', '', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(1302, 'trang-chu-ban-do', 26, 'Botble\\Page\\Models\\Page', '', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(1303, 'properties-list', 27, 'Botble\\Page\\Models\\Page', '', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(1304, 'tin-tuc', 28, 'Botble\\Page\\Models\\Page', '', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(1305, 've-chung-toi', 29, 'Botble\\Page\\Models\\Page', '', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(1306, 'lien-he', 30, 'Botble\\Page\\Models\\Page', '', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(1307, 'dieu-khoan-va-quy-dinh', 31, 'Botble\\Page\\Models\\Page', '', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(1308, 'cookie-policy', 32, 'Botble\\Page\\Models\\Page', '', '2023-12-30 10:06:30', '2023-12-30 10:06:30'),
(1309, 'general', 1, 'Botble\\Blog\\Models\\Tag', 'tag', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1310, 'design', 2, 'Botble\\Blog\\Models\\Tag', 'tag', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1311, 'fashion', 3, 'Botble\\Blog\\Models\\Tag', 'tag', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1312, 'branding', 4, 'Botble\\Blog\\Models\\Tag', 'tag', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1313, 'modern', 5, 'Botble\\Blog\\Models\\Tag', 'tag', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1314, 'chung', 6, 'Botble\\Blog\\Models\\Tag', 'tag', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1315, 'thiet-ke', 7, 'Botble\\Blog\\Models\\Tag', 'tag', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1316, 'thoi-trang', 8, 'Botble\\Blog\\Models\\Tag', 'tag', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1317, 'thuong-hieu', 9, 'Botble\\Blog\\Models\\Tag', 'tag', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1318, 'hien-dai', 10, 'Botble\\Blog\\Models\\Tag', 'tag', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1319, 'latest-news', 1, 'Botble\\Blog\\Models\\Category', 'news', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1320, 'house-architecture', 2, 'Botble\\Blog\\Models\\Category', 'news', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1321, 'house-design', 3, 'Botble\\Blog\\Models\\Category', 'news', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1322, 'building-materials', 4, 'Botble\\Blog\\Models\\Category', 'news', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1323, 'tin-tuc-moi-nhat', 5, 'Botble\\Blog\\Models\\Category', 'news', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1324, 'kien-truc-nha', 6, 'Botble\\Blog\\Models\\Category', 'news', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1325, 'thiet-ke-nha', 7, 'Botble\\Blog\\Models\\Category', 'news', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1326, 'vat-lieu-xay-dung', 8, 'Botble\\Blog\\Models\\Category', 'news', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1327, 'why-people-choose-listio-for-own-properties', 1, 'Botble\\Blog\\Models\\Post', 'news', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1328, 'list-of-benifits-and-impressive-listeo-services', 2, 'Botble\\Blog\\Models\\Post', 'news', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1329, 'what-people-says-about-listio-properties', 3, 'Botble\\Blog\\Models\\Post', 'news', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1330, 'why-people-choose-listio-for-own-properties', 4, 'Botble\\Blog\\Models\\Post', 'news', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1331, 'list-of-benifits-and-impressive-listeo-services', 5, 'Botble\\Blog\\Models\\Post', 'news', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1332, 'what-people-says-about-listio-properties', 6, 'Botble\\Blog\\Models\\Post', 'news', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1333, '5-of-the-most-searched-outdoor-decor-trends-of-summer-2021', 7, 'Botble\\Blog\\Models\\Post', 'news', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1334, 'crave-a-canopy-bed-modern-spins-on-this-dramatic-style', 8, 'Botble\\Blog\\Models\\Post', 'news', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1335, 'the-property-brothers-reveal-one-thing-never-ever-to-do-to-an-old-house', 9, 'Botble\\Blog\\Models\\Post', 'news', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1336, 'how-to-build-a-raised-herb-garden-with-pallets', 10, 'Botble\\Blog\\Models\\Post', 'news', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1337, 'entertain-in-style-14-products-made-for-an-outdoor-summer-soiree', 11, 'Botble\\Blog\\Models\\Post', 'news', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1338, '6-summer-maintenance-tasks-that-could-save-you-cash-have-you-done-them-all', 12, 'Botble\\Blog\\Models\\Post', 'news', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1339, 'average-us-rental-price-hits-a-two-year-high', 13, 'Botble\\Blog\\Models\\Post', 'news', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1340, 'digital-land-rush-has-people-spending-big-money-on-virtual-real-estate-but-why', 14, 'Botble\\Blog\\Models\\Post', 'news', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1341, 'the-best-state-to-live-in-right-now-is-a-huge-surprise-can-you-guess', 15, 'Botble\\Blog\\Models\\Post', 'news', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1342, 'high-lumber-prices-and-other-barriers-choke-the-confidence-of-home-builders-and-home-buyers', 16, 'Botble\\Blog\\Models\\Post', 'news', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1343, 'gioi-dau-tu-de-chung-voi-thi-truong-nha-dat', 17, 'Botble\\Blog\\Models\\Post', 'news', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1344, 'thoi-dai-dich-mua-nha-hang-sang-duoc-huong-tien-ich-y-te-cao-cap-trong-mo', 18, 'Botble\\Blog\\Models\\Post', 'news', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1345, 'ne-bat-on-chinh-tri-nguoi-giau-hong-kong-dua-nhau-sang-london-san-nha', 19, 'Botble\\Blog\\Models\\Post', 'news', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1346, 'nhu-cau-mua-nha-da-the-he-o-my-gia-tang-vi-covid', 20, 'Botble\\Blog\\Models\\Post', 'news', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1347, 'gia-nha-anh-duoc-du-bao-tang-21-trong-5-nam-toi', 21, 'Botble\\Blog\\Models\\Post', 'news', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1348, 'vac-xin-covid-phep-mau-giup-bds-ban-le-hong-kong-vuot-qua-song-gio', 22, 'Botble\\Blog\\Models\\Post', 'news', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(1349, 'gioi-sieu-giau-do-xo-tim-mua-dao-rieng-lam-noi-tranh-covid', 23, 'Botble\\Blog\\Models\\Post', 'news', '2023-12-30 10:06:41', '2023-12-30 10:06:41'),
(1350, 'doanh-so-ban-bat-dong-san-hang-sang-new-york-phuc-hoi-manh-me', 24, 'Botble\\Blog\\Models\\Post', 'news', '2023-12-30 10:06:41', '2023-12-30 10:06:41'),
(1351, 'thuong-hai-ra-luat-chan-chieu-ly-hon-gia-de-huong-uu-dai-mua-nha', 25, 'Botble\\Blog\\Models\\Post', 'news', '2023-12-30 10:06:41', '2023-12-30 10:06:41'),
(1352, 'dan-dau-tu-tich-cuc-di-san-nha-dat-gia-mem-o-vung-phu-can', 26, 'Botble\\Blog\\Models\\Post', 'news', '2023-12-30 10:06:41', '2023-12-30 10:06:41'),
(1353, 'du-an-an-phuoc-riverside-phan-thiet-gay-sot-thi-truong-bds', 27, 'Botble\\Blog\\Models\\Post', 'news', '2023-12-30 10:06:41', '2023-12-30 10:06:41'),
(1354, 'hoi-moi-gioi-bds-viet-nam-cong-bo-ket-qua-binh-chon-vong-1-giai-thuong-nam-2021', 28, 'Botble\\Blog\\Models\\Post', 'news', '2023-12-30 10:06:41', '2023-12-30 10:06:41'),
(1355, 'son-la-se-co-khu-do-thi-phia-tay-nam-rong-124ha', 29, 'Botble\\Blog\\Models\\Post', 'news', '2023-12-30 10:06:41', '2023-12-30 10:06:41'),
(1356, 'ba-ria-vung-tau-muon-xay-san-bay-go-gang-quy-mo-248ha', 30, 'Botble\\Blog\\Models\\Post', 'news', '2023-12-30 10:06:41', '2023-12-30 10:06:41'),
(1357, 'bat-dong-san-dao-va-quy-hoach-ha-tang-tao-nen-suc-hut-cho-dong-sai-gon', 31, 'Botble\\Blog\\Models\\Post', 'news', '2023-12-30 10:06:41', '2023-12-30 10:06:41'),
(1358, 'diem-nong-moi-cua-bds-hap-luc-manh-dong-tien-dau-tu-du-dai-dich', 32, 'Botble\\Blog\\Models\\Post', 'news', '2023-12-30 10:06:41', '2023-12-30 10:06:41'),
(1359, 'apartment', 1, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(1360, 'villa', 2, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(1361, 'condo', 3, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(1362, 'house', 4, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(1363, 'land', 5, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(1364, 'commercial-property', 6, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(1365, 'can-ho-dich-vu', 7, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(1366, 'biet-thu', 8, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(1367, 'can-ho', 9, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(1368, 'nha', 10, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(1369, 'dat', 11, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(1370, 'bat-dong-san-thuong-mai', 12, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2023-12-30 10:06:45', '2023-12-30 10:06:45'),
(1371, '6007-applegate-lane', 1, 'Botble\\RealEstate\\Models\\Property', 'properties', '2023-12-30 10:06:53', '2023-12-30 10:06:53'),
(1372, '2721-lindsay-avenue', 2, 'Botble\\RealEstate\\Models\\Property', 'properties', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(1373, '2203-7th-street-road', 3, 'Botble\\RealEstate\\Models\\Property', 'properties', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(1374, '7431-candace-way', 4, 'Botble\\RealEstate\\Models\\Property', 'properties', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(1375, '8502-madrone-avenue', 5, 'Botble\\RealEstate\\Models\\Property', 'properties', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(1376, '1745-t-street-southeast', 6, 'Botble\\RealEstate\\Models\\Property', 'properties', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(1377, '81-seaton-place-northwest', 7, 'Botble\\RealEstate\\Models\\Property', 'properties', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(1378, '802-madison-street-northwest', 8, 'Botble\\RealEstate\\Models\\Property', 'properties', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(1379, '2811-battery-place-northwest', 9, 'Botble\\RealEstate\\Models\\Property', 'properties', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(1380, '1508-massachusetts-avenue-southeast', 10, 'Botble\\RealEstate\\Models\\Property', 'properties', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(1381, '1427-south-carolina-avenue-southeast', 11, 'Botble\\RealEstate\\Models\\Property', 'properties', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(1382, '127-grand-heron-drive', 12, 'Botble\\RealEstate\\Models\\Property', 'properties', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(1383, '1515-chandlee-avenue', 13, 'Botble\\RealEstate\\Models\\Property', 'properties', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(1384, '4113-holiday-drive', 14, 'Botble\\RealEstate\\Models\\Property', 'properties', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(1385, '545-tracey-drive', 15, 'Botble\\RealEstate\\Models\\Property', 'properties', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(1386, '2318-camryns-crossing', 16, 'Botble\\RealEstate\\Models\\Property', 'properties', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(1387, '1025-west-19th-street', 17, 'Botble\\RealEstate\\Models\\Property', 'properties', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(1388, 'can-ho-the-sun-avenue', 18, 'Botble\\RealEstate\\Models\\Property', 'properties', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(1389, 'ban-nha-mat-tien-le-van-luong-nha-be', 19, 'Botble\\RealEstate\\Models\\Property', 'properties', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(1390, 'ban-nha-3-tang-mat-tien-duong-32', 20, 'Botble\\RealEstate\\Models\\Property', 'properties', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(1391, 'ban-biet-thu-galleria-nguyen-huu-tho', 21, 'Botble\\RealEstate\\Models\\Property', 'properties', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(1392, 'ban-can-ho-the-marq-1pn', 22, 'Botble\\RealEstate\\Models\\Property', 'properties', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(1393, 'mat-tien-duong-32-quan-11', 23, 'Botble\\RealEstate\\Models\\Property', 'properties', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(1394, 'ban-can-ho-gateway-thao-dien', 24, 'Botble\\RealEstate\\Models\\Property', 'properties', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(1395, 'can-ho-celadon-city', 25, 'Botble\\RealEstate\\Models\\Property', 'properties', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(1396, 'vinhomes-central-park', 26, 'Botble\\RealEstate\\Models\\Property', 'properties', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(1397, 'nha-pho-tai-kdc-aeon', 27, 'Botble\\RealEstate\\Models\\Property', 'properties', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(1398, 'can-ho-chung-cu-41bis-dbp', 28, 'Botble\\RealEstate\\Models\\Property', 'properties', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(1399, 'nha-pho-hem-xe-hoi', 29, 'Botble\\RealEstate\\Models\\Property', 'properties', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(1400, 'can-ho-sunwah-pearl', 30, 'Botble\\RealEstate\\Models\\Property', 'properties', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(1401, 'can-ho-vinhomes-central-park', 31, 'Botble\\RealEstate\\Models\\Property', 'properties', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(1402, 'can-ho-one-verandah-tang-trung', 32, 'Botble\\RealEstate\\Models\\Property', 'properties', '2023-12-30 10:06:54', '2023-12-30 10:06:54'),
(1403, 'officetel-the-sun-avenue', 33, 'Botble\\RealEstate\\Models\\Property', 'properties', '2023-12-30 10:06:55', '2023-12-30 10:06:55'),
(1404, 'maia-resort', 34, 'Botble\\RealEstate\\Models\\Property', 'properties', '2023-12-30 10:06:55', '2023-12-30 10:06:55'),
(1405, 'south-facing-apartment', 35, 'Botble\\RealEstate\\Models\\Property', 'properties', '2023-12-30 10:56:00', '2023-12-30 10:56:00'),
(1406, 'dhaka-city', 575, 'Botble\\Location\\Models\\City', 'city', '2024-10-10 10:04:51', '2024-10-10 10:04:51');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `abbreviation`, `country_id`, `order`, `is_featured`, `status`, `created_at`, `updated_at`) VALUES
(1, 'California', NULL, 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(2, 'Alaska', NULL, 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(3, 'Arizona', NULL, 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(4, 'South Carolina', NULL, 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(5, 'New Jersey', NULL, 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(6, 'Quảng Ninh', NULL, 2, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(7, 'Hà Nội', NULL, 2, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(8, 'Hải Phòng', NULL, 2, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(9, 'Hồ Chí Minh', NULL, 2, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(10, 'Đà Nẵng', NULL, 2, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(11, 'Alabama', 'AL', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(12, 'Alaska', 'AK', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(13, 'American Samoa', 'AS', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(14, 'Arizona', 'AZ', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(15, 'Arkansas', 'AR', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(16, 'California', 'CA', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(17, 'Colorado', 'CO', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(18, 'Connecticut', 'CT', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(19, 'Delaware', 'DE', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(20, 'District Of Columbia', 'DC', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(21, 'Federated States Of Micronesia', 'FM', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(22, 'Florida', 'FL', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(23, 'Georgia', 'GA', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(24, 'Guam', 'GU', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(25, 'Hawaii', 'HI', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(26, 'Idaho', 'ID', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(27, 'Illinois', 'IL', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(28, 'Indiana', 'IN', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(29, 'Iowa', 'IA', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(30, 'Kansas', 'KS', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(31, 'Kentucky', 'KY', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(32, 'Louisiana', 'LA', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(33, 'Maine', 'ME', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(34, 'Marshall Islands', 'MH', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(35, 'Maryland', 'MD', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(36, 'Massachusetts', 'MA', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(37, 'Michigan', 'MI', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(38, 'Minnesota', 'MN', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(39, 'Mississippi', 'MS', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(40, 'Missouri', 'MO', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(41, 'Montana', 'MT', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(42, 'Nebraska', 'NE', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(43, 'Nevada', 'NV', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(44, 'New Hampshire', 'NH', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(45, 'New Jersey', 'NJ', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(46, 'New Mexico', 'NM', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(47, 'New York', 'NY', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(48, 'North Carolina', 'NC', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(49, 'North Dakota', 'ND', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(50, 'Northern Mariana Islands', 'MP', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(51, 'Ohio', 'OH', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(52, 'Oklahoma', 'OK', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(53, 'Oregon', 'OR', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(54, 'Palau', 'PW', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(55, 'Pennsylvania', 'PA', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(56, 'Puerto Rico', 'PR', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(57, 'Rhode Island', 'RI', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(58, 'South Carolina', 'SC', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(59, 'South Dakota', 'SD', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(60, 'Tennessee', 'TN', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(61, 'Texas', 'TX', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(62, 'Utah', 'UT', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(63, 'Vermont', 'VT', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(64, 'Virgin Islands', 'VI', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(65, 'Virginia', 'VA', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(66, 'Washington', 'WA', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(67, 'West Virginia', 'WV', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(68, 'Wisconsin', 'WI', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(69, 'Wyoming', 'WY', 1, 0, 0, 'published', '2023-12-30 10:06:18', '2023-12-30 10:06:18'),
(70, 'Dhaka', 'DH', 4, 1, 0, 'published', '2024-10-10 10:04:00', '2024-10-10 10:04:00');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_product` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'General', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(2, 'Design', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(3, 'Fashion', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(4, 'Branding', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(5, 'Modern', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(6, 'Chung', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(7, 'Thiết kế', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(8, 'Thời trang', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(9, 'Thương hiệu', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2023-12-30 10:06:40', '2023-12-30 10:06:40'),
(10, 'Hiện đại', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2023-12-30 10:06:40', '2023-12-30 10:06:40');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `content`, `image`, `company`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Adam Williams', 'Queen, and in another moment it was only the.', 'testimonials/1.jpg', 'CEO Of Microwoft', 'published', '2023-12-30 10:07:01', '2023-12-30 10:07:01'),
(2, 'Retha Deowalim', 'So they sat down a good deal: this fireplace is.', 'testimonials/2.jpg', 'CEO Of Apple', 'published', '2023-12-30 10:07:01', '2023-12-30 10:07:01'),
(3, 'Sam J. Wasim', 'I think it so quickly that the cause of this was.', 'testimonials/3.jpg', 'Pio Founder', 'published', '2023-12-30 10:07:01', '2023-12-30 10:07:01'),
(4, 'Usan Gulwarm', 'Suddenly she came upon a low voice, \'Why the.', 'testimonials/4.jpg', 'CEO Of Facewarm', 'published', '2023-12-30 10:07:01', '2023-12-30 10:07:01'),
(5, 'Shilpa Shethy', 'She was close behind it when she was getting.', 'testimonials/5.jpg', 'CEO Of Zapple', 'published', '2023-12-30 10:07:01', '2023-12-30 10:07:01'),
(6, 'Adam Williams', 'Cat, \'a dog\'s not mad. You grant that?\' \'I.', 'testimonials/1.jpg', 'Giám đốc Microwoft', 'published', '2023-12-30 10:07:01', '2023-12-30 10:07:01'),
(7, 'Retha Deowalim', 'Last came a rumbling of little Alice herself.', 'testimonials/2.jpg', 'Giám đốc Apple', 'published', '2023-12-30 10:07:01', '2023-12-30 10:07:01'),
(8, 'Sam J. Wasim', 'Which way?\', holding her hand in hand, in.', 'testimonials/3.jpg', 'Nhà sáng lập Pio', 'published', '2023-12-30 10:07:01', '2023-12-30 10:07:01'),
(9, 'Usan Gulwarm', 'Alice was thoroughly puzzled. \'Does the boots.', 'testimonials/4.jpg', 'Giám đốc Facewarm', 'published', '2023-12-30 10:07:01', '2023-12-30 10:07:01'),
(10, 'Shilpa Shethy', 'VERY remarkable in that; nor did Alice think it.', 'testimonials/5.jpg', 'Giám đốc Zapple', 'published', '2023-12-30 10:07:01', '2023-12-30 10:07:01');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT 0,
  `manage_supers` tinyint(1) NOT NULL DEFAULT 0,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pm_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pm_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`, `permissions`, `last_login`, `stripe_id`, `pm_type`, `pm_last_four`, `trial_ends_at`) VALUES
(1, 'admin@thesky9.com', NULL, '$2y$10$PgEWr8O1xdmQBzhVij4CZ.1lPeklYEhWT4DBj6cC7wg3KBn4yPo3m', 'DHfKg0UAmcl5L8NGbt1qGr6CUGbDQVZ8yNaF5xVDQWBeDUrdIKCsORpfVIn8', '2023-12-30 10:06:26', '2024-10-10 09:53:22', 'System', 'Admin', 'admin', 102, 1, 1, NULL, '2024-10-10 09:53:22', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(1, 'ShortcodeWidget', 'footer_sidebar_1', 'resido', 0, '{\"id\":\"ShortcodeWidget\",\"content\":\"[static-block alias=\\\"sign-up\\\"][\\/static-block]\"}', NULL, NULL),
(2, 'CustomMenuWidget', 'footer_sidebar_2', 'resido', 0, '{\"id\":\"CustomMenuWidget\",\"name\":\"About\",\"menu_id\":\"about\"}', NULL, NULL),
(3, 'CustomMenuWidget', 'footer_sidebar_2', 'resido', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"MORE INFORMATION\",\"menu_id\":\"more-information\"}', NULL, NULL),
(4, 'CustomMenuWidget', 'footer_sidebar_2', 'resido', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"NEWS\",\"menu_id\":\"news\"}', NULL, NULL),
(5, 'ShortcodeWidget', 'footer_sidebar_3', 'resido', 0, '{\"id\":\"ShortcodeWidget\",\"content\":\"[static-block alias=\\\"download-app-footer\\\"][\\/static-block]\"}', NULL, NULL),
(6, 'CategoriesWidget', 'primary_sidebar', 'resido', 0, '{\"id\":\"CategoriesWidget\",\"name\":\"Categories\"}', NULL, NULL),
(7, 'RecentPostsWidget', 'primary_sidebar', 'resido', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent posts\",\"number_display\":\"5\"}', NULL, NULL),
(8, 'FeaturedPropertiesWidget', 'primary_sidebar', 'resido', 0, '{\"id\":\"FeaturedPropertiesWidget\",\"name\":\"Featured properties\",\"number_display\":\"5\"}', NULL, NULL),
(9, 'ShortcodeWidget', 'footer_sidebar_1', 'resido-vi', 0, '{\"id\":\"ShortcodeWidget\",\"content\":\"[static-block alias=\\\"sign-up\\\"][\\/static-block]\"}', NULL, NULL),
(10, 'CustomMenuWidget', 'footer_sidebar_2', 'resido-vi', 0, '{\"id\":\"CustomMenuWidget\",\"name\":\"About\",\"menu_id\":\"ve-chung-toi\"}', NULL, NULL),
(11, 'CustomMenuWidget', 'footer_sidebar_2', 'resido-vi', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"MORE INFORMATION\",\"menu_id\":\"thong-tin-them\"}', NULL, NULL),
(12, 'CustomMenuWidget', 'footer_sidebar_2', 'resido-vi', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"NEWS\",\"menu_id\":\"tin-tuc\"}', NULL, NULL),
(13, 'ShortcodeWidget', 'footer_sidebar_3', 'resido-vi', 0, '{\"id\":\"ShortcodeWidget\",\"content\":\"[static-block alias=\\\"download-app-footer\\\"][\\/static-block]\"}', NULL, NULL),
(14, 'CategoriesWidget', 'primary_sidebar', 'resido-vi', 0, '{\"id\":\"CategoriesWidget\",\"name\":\"Danh mục\"}', NULL, NULL),
(15, 'RecentPostsWidget', 'primary_sidebar', 'resido-vi', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"Bài viết gần đây\",\"number_display\":\"5\"}', NULL, NULL),
(16, 'FeaturedPropertiesWidget', 'primary_sidebar', 'resido-vi', 0, '{\"id\":\"FeaturedPropertiesWidget\",\"name\":\"Featured properties\",\"number_display\":\"5\"}', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_histories_user_id_index` (`user_id`),
  ADD KEY `audit_histories_module_index` (`module`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_reference_id_index` (`reference_id`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_reference_id_index` (`reference_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `re_accounts`
--
ALTER TABLE `re_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `re_accounts_email_unique` (`email`),
  ADD UNIQUE KEY `re_accounts_username_unique` (`username`);

--
-- Indexes for table `re_accounts_packages`
--
ALTER TABLE `re_accounts_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_account_activity_logs`
--
ALTER TABLE `re_account_activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `re_account_activity_logs_account_id_index` (`account_id`);

--
-- Indexes for table `re_account_password_resets`
--
ALTER TABLE `re_account_password_resets`
  ADD KEY `re_account_password_resets_email_index` (`email`),
  ADD KEY `re_account_password_resets_token_index` (`token`);

--
-- Indexes for table `re_categories`
--
ALTER TABLE `re_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_consults`
--
ALTER TABLE `re_consults`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_currencies`
--
ALTER TABLE `re_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_facilities`
--
ALTER TABLE `re_facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_facilities_distances`
--
ALTER TABLE `re_facilities_distances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_features`
--
ALTER TABLE `re_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_packages`
--
ALTER TABLE `re_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_properties`
--
ALTER TABLE `re_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `re_properties_type_id_index` (`type_id`);

--
-- Indexes for table `re_property_types`
--
ALTER TABLE `re_property_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_reviews`
--
ALTER TABLE `re_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_reviews_meta`
--
ALTER TABLE `re_reviews_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `re_reviews_meta_review_id_index` (`review_id`);

--
-- Indexes for table `re_transactions`
--
ALTER TABLE `re_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscriptions_stripe_id_unique` (`stripe_id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Indexes for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_items_subscription_id_stripe_price_unique` (`subscription_id`,`stripe_price`),
  ADD UNIQUE KEY `subscription_items_stripe_id_unique` (`stripe_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=576;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=864;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `re_accounts`
--
ALTER TABLE `re_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `re_accounts_packages`
--
ALTER TABLE `re_accounts_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `re_account_activity_logs`
--
ALTER TABLE `re_account_activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `re_categories`
--
ALTER TABLE `re_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `re_consults`
--
ALTER TABLE `re_consults`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `re_currencies`
--
ALTER TABLE `re_currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `re_facilities`
--
ALTER TABLE `re_facilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `re_facilities_distances`
--
ALTER TABLE `re_facilities_distances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `re_features`
--
ALTER TABLE `re_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `re_packages`
--
ALTER TABLE `re_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `re_properties`
--
ALTER TABLE `re_properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `re_property_types`
--
ALTER TABLE `re_property_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `re_reviews`
--
ALTER TABLE `re_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `re_reviews_meta`
--
ALTER TABLE `re_reviews_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=669;

--
-- AUTO_INCREMENT for table `re_transactions`
--
ALTER TABLE `re_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1407;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
