-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2022 at 08:38 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasrt`
--

-- --------------------------------------------------------

--
-- Table structure for table `iuran`
--

CREATE TABLE `iuran` (
  `id` int(20) NOT NULL,
  `keterangan` tinytext NOT NULL,
  `tanggal` date NOT NULL,
  `tahun` year(4) NOT NULL,
  `jumlah` decimal(10,2) NOT NULL,
  `warga_nik` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `warga`
--

CREATE TABLE `warga` (
  `id` int(20) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `kelamin` enum('L','p') NOT NULL,
  `alamat` tinytext NOT NULL,
  `no_rumah` varchar(10) NOT NULL,
  `status` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `iuran`
--
ALTER TABLE `iuran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warga`
--
ALTER TABLE `warga`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `iuran`
--
ALTER TABLE `iuran`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warga`
--
ALTER TABLE `warga`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
