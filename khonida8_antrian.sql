-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 30, 2021 at 02:48 PM
-- Server version: 10.1.48-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `khonida8_antrian`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar`
--

CREATE TABLE `daftar` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL,
  `nomer` varchar(16) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `desa` varchar(30) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `urus` int(1) NOT NULL,
  `keperluan` varchar(100) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar`
--

INSERT INTO `daftar` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`, `nomer`, `nama`, `desa`, `alamat`, `urus`, `keperluan`, `keterangan`, `tanggal`, `waktu`) VALUES
(11, '', '', '', '', 0, 0, 0, '3325014608890005', 'daika', '', 'siwatu rt 2 rw 3', 0, 'Adminstrasi KK / KTP ', '', '2021-07-24', '19:42:33'),
(12, '', '', '', '', 0, 0, 0, '456987', 'C, Ronaldo', '', 'Tirto gang Kelinci\nPekalongan', 0, 'Dokumen Lain', '', '2021-07-24', '01:44:20'),
(14, '', '', '', '', 0, 0, 0, '4321432143214321', 'daika', '', 'bojong', 0, 'Adminstrasi KK / KTP ', '', '2021-07-25', '11:33:31'),
(15, '', '', '', '', 0, 0, 0, '5678567856785678', 'ida', '', 'wates', 0, 'Adminstrasi KK / KTP ', '', '2021-07-25', '11:33:58'),
(17, '', '', '', '', 0, 0, 0, '08111111', 'sasa', '', 'mana aja', 0, 'Perekaman KTP', '', '2021-07-25', '11:38:20'),
(18, '', '', '', '', 0, 0, 0, '330986461816', 'arif kyr', '', 'boyolali', 0, 'Adminstrasi KK / KTP ', '', '2021-07-26', '18:36:21'),
(19, '', '', '', '', 0, 0, 0, '1234567891234512', 'irul', '', 'tenggulang', 0, 'Adminstrasi KK / KTP ', '', '2021-08-04', '17:34:20'),
(21, '', '', '', '', 0, 0, 0, '3375010411730002', 'heri', '', 'kramatsari 3', 0, 'Dokumen Lain', '', '2021-08-14', '22:28:16'),
(22, 'Riza Shofa', '', '', '', 0, 0, 0, '3352014608890005', 'SHOFA', '', 'Brayo', 0, 'Perekaman KTP', '', '2021-08-20', '07:13:32'),
(26, 'Didik Herlisetiadi', 'didikmsc@gmail.com', 'papa1.jpg', '$2y$10$qT3rCDbzbtWnazEVrpKtjuC9VMNPTfRyoIplPknTNpo.BQQjT0A0G', 1, 1, 1629567702, '3306124403910302', '', 'Wates', 'Jala Raya siwatu', 0, 'Perekaman KTP', '', '0000-00-00', '00:00:00'),
(27, 'Daika Hanan Permana', 'daika@gmail.com', 'daika1.jpg', '$2y$10$WvCDd3x89scWpqk.LzR3ju3BWQeG1/6OH33yQ2hn9DktyOiR5RN4O', 2, 1, 1629607384, '3306124403910303', '', 'Silurah', 'Jalan Raya Wonotunggal no.36 Rt02 Rw.01', 0, 'Administratsi KK/KTP', '', '0000-00-00', '00:00:00'),
(28, 'Khonidah', 'lexadhaa@gmail.com', 'defalt.jpg', '$2y$10$1JAjhb/Wica5Dr3uuwx8h.e1U1I1jB3BDRRxbSP9g63Ieg8Pe0lFu', 2, 1, 1630291914, '3325014608890005', '', 'Wonotunggal', 'rt 4 rw 1', 0, '', '', '0000-00-00', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ikp`
--

CREATE TABLE `ikp` (
  `id` int(1) NOT NULL,
  `pilihan` varchar(15) NOT NULL,
  `jumlah` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ikp`
--

INSERT INTO `ikp` (`id`, `pilihan`, `jumlah`) VALUES
(1, 'SANGAT PUAS', 7),
(2, 'PUAS', 4),
(3, 'KURANG PUAS', 1),
(4, 'TIDAK PUAS', 2);

-- --------------------------------------------------------

--
-- Table structure for table `kritiksaran`
--

CREATE TABLE `kritiksaran` (
  `id` int(11) NOT NULL,
  `saran` varchar(250) NOT NULL,
  `pilihan` varchar(15) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kritiksaran`
--

INSERT INTO `kritiksaran` (`id`, `saran`, `pilihan`, `tanggal`) VALUES
(1, 'tambah jam pelayanan', 'KURANG PUAS', '2021-07-25'),
(2, '', 'TIDAK PUAS', '2021-07-25'),
(3, 'pelayanan lama', 'TIDAK PUAS', '2021-07-25'),
(4, 'petugasnya judes', 'TIDAK PUAS', '2021-07-25'),
(5, 'petugasnya cantik', 'SANGAT PUAS', '2021-07-25'),
(6, 'pelayanan ramah', 'PUAS', '2021-07-25'),
(7, 'ok', 'SANGAT PUAS', '2021-07-26'),
(8, 'yo', 'SANGAT PUAS', '2021-07-26'),
(9, 'opo', 'SANGAT PUAS', '2021-08-14'),
(10, '', 'PUAS', '2021-08-14'),
(11, '', 'SANGAT PUAS', '2021-08-20');

-- --------------------------------------------------------

--
-- Table structure for table `proses`
--

CREATE TABLE `proses` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `perlu` varchar(128) NOT NULL,
  `layani` varchar(20) NOT NULL,
  `waktu` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `proses`
--

INSERT INTO `proses` (`id`, `email`, `nik`, `perlu`, `layani`, `waktu`) VALUES
(1, 'didikmsc@gmail.com', '3306124403910302', 'Administratsi KK/KTP', 'waiting', 1630157129),
(2, 'didikmsc@gmail.com', '3306124403910302', 'Dokument lainnya', 'waiting', 1630157137),
(3, 'didikmsc@gmail.com', '3306124403910302', 'Administratsi KK/KTP', 'waiting', 1630157193),
(4, 'daika@gmail.com', '3306124403910303', 'Perekaman KTP', 'waiting', 1630239478),
(5, 'lexadhaa@gmail.com', '3325014608890005', 'Administratsi KK/KTP', 'waiting', 1630292000),
(6, 'daika@gmail.com', '3306124403910303', 'Dokument lainnya', 'waiting', 1630333916);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu'),
(4, 'Antri'),
(5, 'Daftar Antrian'),
(6, 'Home');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-street-view', 1),
(2, 2, 'Home', 'home', 'fas fa-fw fa-home', 1),
(3, 2, 'My Profile', 'user/profile', 'fas fa-fw fa-user', 1),
(4, 2, 'Edit Data Diri', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(5, 3, 'Menu Management', 'menu', 'fas fa-fw fa-chevron-circle-down', 1),
(6, 1, 'Antrian', 'antri', 'fas fa-fw fa-child', 1),
(7, 3, 'Submenu Management', 'menu/submenu', 'far fa-fw fa-folder-open', 1),
(8, 2, 'Pesan Antrian', 'antri/entry', 'fas fa-fw fa-address-card', 1),
(9, 2, 'Ganti Password', 'user/changepassword', 'fas fa-fw fa-key', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar`
--
ALTER TABLE `daftar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ikp`
--
ALTER TABLE `ikp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kritiksaran`
--
ALTER TABLE `kritiksaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proses`
--
ALTER TABLE `proses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar`
--
ALTER TABLE `daftar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `ikp`
--
ALTER TABLE `ikp`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kritiksaran`
--
ALTER TABLE `kritiksaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `proses`
--
ALTER TABLE `proses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
