-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 27, 2026 at 09:49 PM
-- Server version: 8.4.3
-- PHP Version: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nacho21`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrador Nacho', 'adminnacho', '$2y$12$g5JLHCXn1ZpVbd4fCXbm9uaDKPrc2vXYsPLXBUdDAyZUD6ypkjmYi', 'admin', NULL, '2026-05-27 04:24:13', '2026-05-27 08:04:16'),
(2, 'Omar Usuario', 'omarqm', '$2y$12$kj.rTEPwAPLt3pd68eLcxuFqrE0.iNyBR9Pz6srA2Ff4NZejSMqEW', 'user', NULL, '2026-05-27 04:24:13', '2026-05-27 04:24:13'),
(3, 'Juan Perez', 'juan1', '$2y$12$sTIt5ogLsNqsOk/JoVf1MeSqWglsc8NQVAGlAU3rC5dqnLiJPh09i', 'user', NULL, '2026-05-27 04:24:13', '2026-05-27 04:53:21'),
(4, 'Maria Lopez', 'maria1', '$2y$12$QRtRFA5UilxwMWEXFjhp6.MstNSxY./bDBPbGWB5ONbeS2.c2gqqi', 'user', NULL, '2026-05-27 04:24:14', '2026-05-27 04:24:14'),
(7, 'juana', 'valdez', '$2y$12$JRaOu/PF7ky8So.Dik4OHOFlD.KXlxQrsr5C10eFxIidvMss8W.l6', 'user', NULL, '2026-05-27 04:50:52', '2026-05-27 04:50:52'),
(8, 'cindy calle', 'cindy22', '$2y$12$/TSVmvUVkB.a0ThLaIT0mO4tWqsDK5BAB5lFWOhsVvBBdDvr.Ekga', 'admin', NULL, '2026-05-27 05:15:31', '2026-05-27 05:15:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
