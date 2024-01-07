-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2024 at 12:00 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `krs`
--

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `id_krs` int(10) NOT NULL,
  `id_nama` varchar(50) NOT NULL,
  `id_namamapel` varchar(50) NOT NULL,
  `tanggal` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `Jenis_kelamin` varchar(20) NOT NULL,
  `tanggal_lahir` varchar(50) NOT NULL,
  `jurusan` varchar(20) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `id` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `kelas` text NOT NULL,
  `dosen` varchar(30) NOT NULL,
  `waktu` text NOT NULL,
  `sks` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id_krs`),
  ADD KEY `nim` (`id_nama`),
  ADD KEY `id_matakuliah` (`id_namamapel`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
