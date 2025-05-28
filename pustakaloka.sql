-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2025 at 04:32 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pustakaloka`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `jenis` char(1) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `id_kota` int(11) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tanggal_daftar` date NOT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `id_organisasi` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id`, `nama`, `jenis`, `alamat`, `id_kota`, `telepon`, `email`, `tanggal_daftar`, `jenis_kelamin`, `id_organisasi`) VALUES
(1, 'Arip', 'S', 'Majalaya', 1, '08123456789', 'ipaja@gmail.com', '2025-03-25', 'L', 2),
(2, 'Deden', 'D', 'Cicalengka', 2, '08123456789', 'densaja@gmail.com', '2025-03-24', 'L', 2),
(3, 'Muhammad Rizky Saputra', 'M', 'Dusun Ciburaleng', 6, '08123456789', 'saputra@gmail.com', '2023-08-16', 'L', 1),
(4, 'Hervan', 'D', 'Cangkuang', 2, '08123456789', 'hervanaja@gmail.com', '2025-03-25', 'L', 2),
(5, 'Taofik MD', 'D', 'Lupa', 6, '08123456789', 'md@gmail.com', '2025-03-25', 'L', 2);

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `kode_buku` char(6) NOT NULL,
  `kode_kategori` char(3) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `tahun_terbit` smallint(6) NOT NULL,
  `edisi` tinyint(4) NOT NULL,
  `tanggal_pengadaan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`kode_buku`, `kode_kategori`, `judul`, `pengarang`, `penerbit`, `tahun_terbit`, `edisi`, `tanggal_pengadaan`) VALUES
('KT100', '100', 'Memahami Pikiran Orang Lain', 'Cecep', 'Konoha', 2025, 1, '2025-03-05'),
('KT101', '600', 'Artificial Intelligence', 'Stephen', 'MU', 2025, 1, '2025-05-19'),
('KT102', '700', 'Belajar Berenang Seperti Ikan', 'Abdul', 'MU', 2025, 1, '2025-05-19'),
('KT103', '700', 'Cara Bermain Alat Musik', 'Dimas', 'FK Library', 2025, 2, '2025-05-19'),
('KT104', '400', 'Kamus Inggris', 'Frank', 'FK Library', 2025, 1, '2025-05-19');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_buku`
--

CREATE TABLE `kategori_buku` (
  `kode_kategori` char(3) NOT NULL,
  `nama_kategori` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori_buku`
--

INSERT INTO `kategori_buku` (`kode_kategori`, `nama_kategori`) VALUES
('000', 'Karya Umum'),
('100', 'Filsafat dan Psikolo'),
('200', 'Agama'),
('300', 'Ilmu-ilmu Sosial'),
('400', 'Bahasa'),
('500', 'Ilmu Pengetahuan Alam dan Matematika'),
('600', 'Teknologi dan Ilmu-ilmu Terapan'),
('700', 'Seni, Hiburan, dan Olahraga'),
('800', 'Sastra'),
('900', 'Geografi dan Sejarah');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id`, `nama`) VALUES
(1, 'KOTA BANDUNG'),
(2, 'KAB. BANDUNG'),
(3, 'KAB. BANDUNG BARAT'),
(4, 'KAB. BANDUNG TIMUR'),
(5, 'KOTA JAKARTA'),
(6, 'KAB. SUMEDANG');

-- --------------------------------------------------------

--
-- Table structure for table `organisasi`
--

CREATE TABLE `organisasi` (
  `id` tinyint(4) NOT NULL,
  `nama` varchar(75) NOT NULL,
  `jenis` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `organisasi`
--

INSERT INTO `organisasi` (`id`, `nama`, `jenis`) VALUES
(1, 'HMT', 'Unit'),
(2, 'Teknik', 'Fakultas');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `session_id` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `role` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `fullname`, `role`) VALUES
('admin', '202cb962ac59075b964b07152d234b70', 'Admin Pustakaloka', 'admin'),
('user1', '202cb962ac59075b964b07152d234b70', 'Staff 1', 'staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_anggota_kota` (`id_kota`),
  ADD KEY `fk_anggota_organisasi` (`id_organisasi`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kode_buku`),
  ADD KEY `fk_kategori` (`kode_kategori`);

--
-- Indexes for table `kategori_buku`
--
ALTER TABLE `kategori_buku`
  ADD PRIMARY KEY (`kode_kategori`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organisasi`
--
ALTER TABLE `organisasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `organisasi`
--
ALTER TABLE `organisasi`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anggota`
--
ALTER TABLE `anggota`
  ADD CONSTRAINT `fk_anggota_kota` FOREIGN KEY (`id_kota`) REFERENCES `kota` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_anggota_organisasi` FOREIGN KEY (`id_organisasi`) REFERENCES `organisasi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `fk_kategori` FOREIGN KEY (`kode_kategori`) REFERENCES `kategori_buku` (`kode_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
