-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2025 at 10:37 AM
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
-- Database: `dbpraktikum8`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `harga` int(11) NOT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `nama`, `deskripsi`, `harga`, `foto`) VALUES
(1, 'Indomie Goreng', 'Mie goreng enak', 2500, 'images/miegoreng.jpg'),
(2, 'Permen Kopiko', 'Permen kopi', 2000, 'images/kopiko.jpg'),
(5, 'Es Teh Manis', 'Teh manis dingin', 3000, 'images/esteh.jpg'),
(6, 'Kopi Hitam', 'Kopi tanpa gula', 5000, 'images/kopi.jpg'),
(7, 'Sate Ayam', 'Sate bumbu kacang', 15000, 'images/sate.jpg'),
(8, 'Bakso', 'Bakso kuah gurih', 13000, 'images/bakso.jpg'),
(9, 'Mie Ayam', 'Mie ayam lengkap', 10000, 'images/mieayam.jpg'),
(10, 'Teh Botol', 'Minuman kemasan', 4000, 'images/tehbotol.jpg'),
(11, 'Permen Kopiko', 'Permen kopi', 2000, 'images/kopiko.jpg'),
(12, 'Permen Coffe', 'Permen kopi rasa mantap', 2000, 'images/permen.jpg'),
(13, 'Permen Coffe', 'Permen kopi rasa mantap', 2000, 'images/permen.jpg'),
(14, 'Permen Coffe', 'Permen kopi rasa mantap', 2000, 'images/permen.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Riska Safitri', 'riska@mail.com', 'HASH_BARU', '2025-11-13 10:57:04', '2025-11-27 09:13:18'),
(2, 'Joe Taslim', 'jojo@example.com', 'abcdef', '2025-11-13 10:57:04', '2025-11-13 12:27:50'),
(4, 'Budi Santoso', 'budi@example.com', NULL, '2025-11-13 12:22:26', '2025-11-13 12:22:26'),
(5, 'Ardhit', 'ardhityasiswondo@gmail.com', '$2b$10$vz.e/hpADSQ0ZXZfkdq87e3JX2qfdV5Q4ARhcqPAiDp14YuAewGc', '2025-11-27 09:15:17', '2025-11-27 09:15:17'),
(6, 'Tepung Bumbu', 'tepungbumbu@gmail.com', '$2b$10$pNDVb/4YC2GCDkURkkhM5OdxLS7emVYbKB7GwklE/JZOMDbhFqZTu', '2025-11-27 09:30:40', '2025-11-27 09:33:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
