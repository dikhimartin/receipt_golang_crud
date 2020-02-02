-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 02 Feb 2020 pada 22.48
-- Versi Server: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_jamu_golang_auth`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `attribute`
--

CREATE TABLE `attribute` (
  `id` int(11) NOT NULL,
  `name` text,
  `value` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_master_permission`
--

CREATE TABLE `tb_master_permission` (
  `id` int(11) NOT NULL,
  `name` char(10) DEFAULT NULL,
  `additional` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_master_permission`
--

INSERT INTO `tb_master_permission` (`id`, `name`, `additional`) VALUES
(1, 'Create', NULL),
(2, 'Read/View', NULL),
(3, 'Edit', NULL),
(4, 'Delete', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_sample_crud`
--

CREATE TABLE `tb_sample_crud` (
  `id` int(11) NOT NULL,
  `text_input` varchar(50) DEFAULT NULL,
  `text_area` varchar(50) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('Y','N') DEFAULT NULL,
  `additional` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_sample_crud`
--

INSERT INTO `tb_sample_crud` (`id`, `text_input`, `text_area`, `created_by`, `updated_by`, `created_at`, `updated_at`, `status`, `additional`) VALUES
(27, 'Text Input 1', 'Text Area 1', 1, 1, '2020-02-01 09:51:38', '2020-02-02 08:23:08', 'Y', NULL),
(28, 'Text Input 2', 'Text Area 2', 1, 1, '2020-02-01 09:51:43', '2020-02-01 09:54:15', 'Y', NULL),
(29, 'Text Input 3', 'Text Area 3', 1, 1, '2020-02-01 09:51:47', '2020-02-01 09:54:19', 'Y', NULL),
(30, 'Text Input 4', 'Text Area 4', 1, 1, '2020-02-01 09:51:51', '2020-02-01 09:54:25', 'Y', NULL),
(31, 'Text input 5', 'Text Area 5', 1, 1, '2020-02-01 09:52:58', '2020-02-01 09:54:29', 'Y', NULL),
(32, 'Text Input 6', 'Text Area 6', 1, 1, '2020-02-01 09:53:09', '2020-02-01 09:54:33', 'Y', NULL),
(33, 'Text Input 7', 'Text Area 7', 1, 1, '2020-02-01 09:54:49', '2020-02-02 12:42:55', 'Y', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_setting_grup`
--

CREATE TABLE `tb_setting_grup` (
  `id` int(11) NOT NULL,
  `name_grup` varchar(50) DEFAULT NULL,
  `status` enum('Y','N') DEFAULT NULL,
  `additional` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_setting_grup`
--

INSERT INTO `tb_setting_grup` (`id`, `name_grup`, `status`, `additional`) VALUES
(1, 'Superadmin', 'Y', NULL),
(2, 'Admin', 'Y', NULL),
(6, 'User', 'Y', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_setting_grup_privilege`
--

CREATE TABLE `tb_setting_grup_privilege` (
  `id` int(11) NOT NULL,
  `id_setting_grup` int(11) DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  `status` enum('Y','N') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `additional` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_setting_grup_privilege`
--

INSERT INTO `tb_setting_grup_privilege` (`id`, `id_setting_grup`, `remarks`, `status`, `created_at`, `updated_at`, `additional`) VALUES
(1, 1, 'Superadmin', 'Y', '2019-11-11 11:58:30', '2020-01-26 20:29:38', NULL),
(2, 2, 'Administrator', 'Y', '2019-11-11 12:00:05', '2020-02-02 16:53:21', NULL),
(7, 6, '', 'Y', '2020-01-26 20:48:16', '2020-02-02 15:28:53', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_setting_grup_privilege_detail`
--

CREATE TABLE `tb_setting_grup_privilege_detail` (
  `id` int(11) NOT NULL,
  `id_setting_grup_privilege` int(11) DEFAULT NULL,
  `kode_permissions` char(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `additional` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_setting_grup_privilege_detail`
--

INSERT INTO `tb_setting_grup_privilege_detail` (`id`, `id_setting_grup_privilege`, `kode_permissions`, `created_at`, `additional`) VALUES
(21, 1, 'samplecrud_1', '2020-01-26 13:29:38', NULL),
(22, 1, 'samplecrud_2', '2020-01-26 13:29:38', NULL),
(23, 1, 'samplecrud_3', '2020-01-26 13:29:38', NULL),
(24, 1, 'samplecrud_4', '2020-01-26 13:29:38', NULL),
(25, 1, 'setting.user.grupprivilege_1', '2020-01-26 13:29:38', NULL),
(26, 1, 'setting.user.grupprivilege_2', '2020-01-26 13:29:38', NULL),
(27, 1, 'setting.user.grupprivilege_3', '2020-01-26 13:29:38', NULL),
(28, 1, 'setting.user.grupprivilege_4', '2020-01-26 13:29:38', NULL),
(29, 1, 'setting.user.grup_1', '2020-01-26 13:29:38', NULL),
(30, 1, 'setting.user.grup_2', '2020-01-26 13:29:38', NULL),
(31, 1, 'setting.user.grup_3', '2020-01-26 13:29:38', NULL),
(32, 1, 'setting.user.grup_4', '2020-01-26 13:29:38', NULL),
(33, 1, 'setting.user.privilege_1', '2020-01-26 13:29:38', NULL),
(34, 1, 'setting.user.privilege_2', '2020-01-26 13:29:38', NULL),
(35, 1, 'setting.user.privilege_3', '2020-01-26 13:29:38', NULL),
(36, 1, 'setting.user.privilege_4', '2020-01-26 13:29:38', NULL),
(37, 1, 'setting.user.user_1', '2020-01-26 13:29:38', NULL),
(38, 1, 'setting.user.user_2', '2020-01-26 13:29:38', NULL),
(39, 1, 'setting.user.user_3', '2020-01-26 13:29:38', NULL),
(40, 1, 'setting.user.user_4', '2020-01-26 13:29:38', NULL),
(64, 7, 'samplecrud_1', '2020-02-02 08:28:53', NULL),
(65, 7, 'samplecrud_2', '2020-02-02 08:28:53', NULL),
(66, 7, 'samplecrud_3', '2020-02-02 08:28:53', NULL),
(67, 7, 'samplecrud_4', '2020-02-02 08:28:53', NULL),
(76, 2, 'samplecrud_1', '2020-02-02 09:53:21', NULL),
(77, 2, 'samplecrud_2', '2020-02-02 09:53:21', NULL),
(78, 2, 'samplecrud_3', '2020-02-02 09:53:21', NULL),
(79, 2, 'samplecrud_4', '2020-02-02 09:53:21', NULL),
(80, 2, 'setting.user.grupprivilege_2', '2020-02-02 09:53:21', NULL),
(81, 2, 'setting.user.grup_2', '2020-02-02 09:53:21', NULL),
(82, 2, 'setting.user.user_2', '2020-02-02 09:53:21', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_setting_privilege`
--

CREATE TABLE `tb_setting_privilege` (
  `id` int(11) NOT NULL,
  `kode_privilege` varchar(255) DEFAULT NULL,
  `name_menu` varchar(50) DEFAULT NULL,
  `status` enum('Y','N') DEFAULT NULL,
  `keterangan` text,
  `additional` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_setting_privilege`
--

INSERT INTO `tb_setting_privilege` (`id`, `kode_privilege`, `name_menu`, `status`, `keterangan`, `additional`) VALUES
(26, 'setting.user.grup', 'Setting Grup', 'Y', '', NULL),
(27, 'setting.user.privilege', 'Setting Privilege', 'Y', '', NULL),
(28, 'setting.user.user', 'Setting User', 'Y', '', NULL),
(29, 'setting.user.grupprivilege', 'Setting Grup Privilege', 'Y', '', NULL),
(40, 'samplecrud', 'Sample Crud', 'Y', '', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_setting_privilege_detail`
--

CREATE TABLE `tb_setting_privilege_detail` (
  `id` int(11) NOT NULL,
  `id_setting_privilege` int(11) DEFAULT NULL,
  `permissions` enum('1','2','3','4') DEFAULT NULL COMMENT '"1": "Create", "2": "Read/View", "3": "Edit", "4": "Delete"'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_setting_privilege_detail`
--

INSERT INTO `tb_setting_privilege_detail` (`id`, `id_setting_privilege`, `permissions`) VALUES
(90, 26, '1'),
(91, 26, '2'),
(92, 26, '3'),
(93, 26, '4'),
(94, 27, '1'),
(95, 27, '2'),
(96, 27, '3'),
(97, 27, '4'),
(98, 28, '1'),
(99, 28, '2'),
(100, 28, '3'),
(101, 28, '4'),
(257, 29, '1'),
(258, 29, '2'),
(259, 29, '3'),
(260, 29, '4'),
(253, 40, '1'),
(254, 40, '2'),
(255, 40, '3'),
(256, 40, '4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_setting_user`
--

CREATE TABLE `tb_setting_user` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `gender` enum('L','P') DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `salt` varchar(50) DEFAULT NULL,
  `add_date` date DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `status` enum('Y','N') DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `additional` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_setting_user`
--

INSERT INTO `tb_setting_user` (`id`, `full_name`, `username`, `email`, `gender`, `password`, `salt`, `add_date`, `update_date`, `status`, `image`, `additional`) VALUES
(1, 'Dikhi Martin', 'superadmin', 'dikhi.martin@gmail.com', 'L', '1d5c16ef6797717252b5d161a9958ce2', '4ec051ac2d933468de837eab4c6cacfa', '2019-11-11', '2020-01-26', 'Y', '8936ccd137d75e5721614562f54f3ced', '.jpg'),
(13, 'Adminman', 'adminman', 'adminman@gmail.com', 'L', '4550ddbdef40f075abc4a6a44d8ecfd0', '077c79d74ac64f0456c872758a9cfd9f', '2020-01-26', '2020-02-02', 'Y', 'cf7481a8939e9d187d5cacbb6c1dd95b', '.png'),
(14, 'Admin Office', 'adminoffice', 'adminoffice@gmail.com', 'L', '09ead1c0111153d77bba4fc22c8d8118', '9fd81d49dd9917f1e2932451b69cea83', '2020-01-26', '2020-02-02', 'Y', NULL, NULL),
(15, 'userstore', 'userstore', 'userstore@gmail.com', 'P', '09ead1c0111153d77bba4fc22c8d8118', '9fd81d49dd9917f1e2932451b69cea83', '2020-01-26', '2020-02-02', 'Y', '2d62e250c272f0e1e2724b9acda981b8', '.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_setting_user_grup`
--

CREATE TABLE `tb_setting_user_grup` (
  `id` int(11) NOT NULL,
  `id_setting_user` int(11) DEFAULT NULL,
  `id_setting_grup` int(11) DEFAULT NULL,
  `status` enum('Y','N') DEFAULT NULL,
  `add_date` date DEFAULT NULL,
  `update_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_setting_user_grup`
--

INSERT INTO `tb_setting_user_grup` (`id`, `id_setting_user`, `id_setting_grup`, `status`, `add_date`, `update_date`) VALUES
(2, 1, 1, 'Y', '2019-11-11', '2020-01-26'),
(12, 13, 2, 'N', '2020-01-26', '2020-02-02'),
(13, 14, 2, 'Y', '2020-01-26', '2020-02-02'),
(14, 15, 6, 'Y', '2020-01-26', '2020-02-02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_log`
--

CREATE TABLE `t_log` (
  `id` int(3) NOT NULL,
  `username` varchar(50) NOT NULL,
  `id_previleges` char(1) NOT NULL,
  `note` varchar(50) NOT NULL,
  `sql_note` text,
  `ipaddress` varchar(12) NOT NULL,
  `createdate` datetime DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_get_grup_privilege`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_get_grup_privilege` (
`id` int(11)
,`id_setting_grup` int(11)
,`name_grup` varchar(50)
,`remarks` varchar(50)
,`status` enum('Y','N')
,`created_at` datetime
,`updated_at` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_get_grup_privilege_detail`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_get_grup_privilege_detail` (
`id` int(11)
,`id_setting_grup` int(11)
,`id_setting_grup_privilege` int(11)
,`name_grup` varchar(50)
,`kode_permissions` char(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_get_privilege`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_get_privilege` (
`id` int(11)
,`id_setting_privilege` int(11)
,`name_menu` varchar(50)
,`kode_privilege` varchar(255)
,`kode_permissions` varchar(257)
,`status` enum('Y','N')
,`permissions` enum('1','2','3','4')
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_get_setting_grup`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_get_setting_grup` (
`id` int(11)
,`id_setting_grup_privilege` int(11)
,`name_grup` varchar(50)
,`status` enum('Y','N')
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_get_user`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_get_user` (
`id` int(11)
,`id_setting_grup` int(11)
,`full_name` varchar(50)
,`gender` enum('L','P')
,`email` varchar(50)
,`username` varchar(50)
,`name_grup` varchar(50)
,`status` enum('Y','N')
,`password` varchar(50)
,`salt` varchar(50)
,`image` varchar(50)
,`extension` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_get_user_grup`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_get_user_grup` (
`id` int(11)
,`id_setting_user` int(11)
,`id_setting_grup` int(11)
,`username` varchar(50)
,`full_name` varchar(50)
,`email` varchar(50)
,`image` varchar(50)
,`name_grup` varchar(50)
,`status` enum('Y','N')
,`extension` varchar(50)
,`salt` varchar(50)
,`password` varchar(50)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `v_get_grup_privilege`
--
DROP TABLE IF EXISTS `v_get_grup_privilege`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_get_grup_privilege`  AS  select `tb_setting_grup_privilege`.`id` AS `id`,`tb_setting_grup_privilege`.`id_setting_grup` AS `id_setting_grup`,`tb_setting_grup`.`name_grup` AS `name_grup`,`tb_setting_grup_privilege`.`remarks` AS `remarks`,`tb_setting_grup_privilege`.`status` AS `status`,`tb_setting_grup_privilege`.`created_at` AS `created_at`,`tb_setting_grup_privilege`.`updated_at` AS `updated_at` from (`tb_setting_grup_privilege` join `tb_setting_grup` on((`tb_setting_grup_privilege`.`id_setting_grup` = `tb_setting_grup`.`id`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_get_grup_privilege_detail`
--
DROP TABLE IF EXISTS `v_get_grup_privilege_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_get_grup_privilege_detail`  AS  select `tb_setting_grup_privilege_detail`.`id` AS `id`,`tb_setting_grup_privilege`.`id_setting_grup` AS `id_setting_grup`,`tb_setting_grup_privilege_detail`.`id_setting_grup_privilege` AS `id_setting_grup_privilege`,`tb_setting_grup`.`name_grup` AS `name_grup`,`tb_setting_grup_privilege_detail`.`kode_permissions` AS `kode_permissions` from ((`tb_setting_grup_privilege_detail` join `tb_setting_grup_privilege` on((`tb_setting_grup_privilege_detail`.`id_setting_grup_privilege` = `tb_setting_grup_privilege`.`id`))) join `tb_setting_grup` on((`tb_setting_grup_privilege`.`id_setting_grup` = `tb_setting_grup`.`id`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_get_privilege`
--
DROP TABLE IF EXISTS `v_get_privilege`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_get_privilege`  AS  select `tb_setting_privilege_detail`.`id` AS `id`,`tb_setting_privilege`.`id` AS `id_setting_privilege`,`tb_setting_privilege`.`name_menu` AS `name_menu`,`tb_setting_privilege`.`kode_privilege` AS `kode_privilege`,concat(concat(`tb_setting_privilege`.`kode_privilege`,'_',`tb_setting_privilege_detail`.`permissions`)) AS `kode_permissions`,`tb_setting_privilege`.`status` AS `status`,`tb_setting_privilege_detail`.`permissions` AS `permissions` from (`tb_setting_privilege_detail` left join `tb_setting_privilege` on((`tb_setting_privilege_detail`.`id_setting_privilege` = `tb_setting_privilege`.`id`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_get_setting_grup`
--
DROP TABLE IF EXISTS `v_get_setting_grup`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_get_setting_grup`  AS  select `tb_setting_grup`.`id` AS `id`,`tb_setting_grup_privilege`.`id` AS `id_setting_grup_privilege`,`tb_setting_grup`.`name_grup` AS `name_grup`,`tb_setting_grup`.`status` AS `status` from (`tb_setting_grup` left join `tb_setting_grup_privilege` on((`tb_setting_grup`.`id` = `tb_setting_grup_privilege`.`id_setting_grup`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_get_user`
--
DROP TABLE IF EXISTS `v_get_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_get_user`  AS  select `tb_setting_user`.`id` AS `id`,`tb_setting_user_grup`.`id_setting_grup` AS `id_setting_grup`,`tb_setting_user`.`full_name` AS `full_name`,`tb_setting_user`.`gender` AS `gender`,`tb_setting_user`.`email` AS `email`,`tb_setting_user`.`username` AS `username`,`tb_setting_grup`.`name_grup` AS `name_grup`,`tb_setting_user`.`status` AS `status`,`tb_setting_user`.`password` AS `password`,`tb_setting_user`.`salt` AS `salt`,`tb_setting_user`.`image` AS `image`,`tb_setting_user`.`additional` AS `extension` from ((`tb_setting_user` join `tb_setting_user_grup` on((`tb_setting_user`.`id` = `tb_setting_user_grup`.`id_setting_user`))) join `tb_setting_grup` on((`tb_setting_user_grup`.`id_setting_grup` = `tb_setting_grup`.`id`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_get_user_grup`
--
DROP TABLE IF EXISTS `v_get_user_grup`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_get_user_grup`  AS  select `tb_setting_user_grup`.`id` AS `id`,`v_get_user`.`id` AS `id_setting_user`,`tb_setting_grup`.`id` AS `id_setting_grup`,`v_get_user`.`username` AS `username`,`v_get_user`.`full_name` AS `full_name`,`v_get_user`.`email` AS `email`,`v_get_user`.`image` AS `image`,`tb_setting_grup`.`name_grup` AS `name_grup`,`tb_setting_grup`.`status` AS `status`,`v_get_user`.`extension` AS `extension`,`v_get_user`.`salt` AS `salt`,`v_get_user`.`password` AS `password` from (((`tb_setting_user_grup` join `tb_setting_grup` on((`tb_setting_grup`.`id` = `tb_setting_user_grup`.`id_setting_grup`))) join `v_get_user` on((`v_get_user`.`id` = `tb_setting_user_grup`.`id_setting_user`))) left join `v_get_grup_privilege` on((`tb_setting_user_grup`.`id_setting_grup` = `v_get_grup_privilege`.`id_setting_grup`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attribute`
--
ALTER TABLE `attribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_master_permission`
--
ALTER TABLE `tb_master_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_sample_crud`
--
ALTER TABLE `tb_sample_crud`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_setting_grup`
--
ALTER TABLE `tb_setting_grup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_setting_grup_privilege`
--
ALTER TABLE `tb_setting_grup_privilege`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tb_setting_grup_privilege_tb_setting_grup` (`id_setting_grup`);

--
-- Indexes for table `tb_setting_grup_privilege_detail`
--
ALTER TABLE `tb_setting_grup_privilege_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tb_setting_grup_privilege_detail_tb_setting_grup_privilege` (`id_setting_grup_privilege`);

--
-- Indexes for table `tb_setting_privilege`
--
ALTER TABLE `tb_setting_privilege`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_privilege` (`kode_privilege`);

--
-- Indexes for table `tb_setting_privilege_detail`
--
ALTER TABLE `tb_setting_privilege_detail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_setting_privilege_permissions` (`id_setting_privilege`,`permissions`);

--
-- Indexes for table `tb_setting_user`
--
ALTER TABLE `tb_setting_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `tb_setting_user_grup`
--
ALTER TABLE `tb_setting_user_grup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tb_setting_user_grup_tb_setting_user` (`id_setting_user`),
  ADD KEY `FK_tb_setting_user_grup_tb_setting_grup` (`id_setting_grup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_master_permission`
--
ALTER TABLE `tb_master_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_sample_crud`
--
ALTER TABLE `tb_sample_crud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=308;

--
-- AUTO_INCREMENT for table `tb_setting_grup`
--
ALTER TABLE `tb_setting_grup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_setting_grup_privilege`
--
ALTER TABLE `tb_setting_grup_privilege`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_setting_grup_privilege_detail`
--
ALTER TABLE `tb_setting_grup_privilege_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `tb_setting_privilege`
--
ALTER TABLE `tb_setting_privilege`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tb_setting_privilege_detail`
--
ALTER TABLE `tb_setting_privilege_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT for table `tb_setting_user`
--
ALTER TABLE `tb_setting_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_setting_user_grup`
--
ALTER TABLE `tb_setting_user_grup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_setting_grup_privilege`
--
ALTER TABLE `tb_setting_grup_privilege`
  ADD CONSTRAINT `FK_tb_setting_grup_privilege_tb_setting_grup` FOREIGN KEY (`id_setting_grup`) REFERENCES `tb_setting_grup` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_setting_grup_privilege_detail`
--
ALTER TABLE `tb_setting_grup_privilege_detail`
  ADD CONSTRAINT `FK_tb_setting_grup_privilege_detail_tb_setting_grup_privilege` FOREIGN KEY (`id_setting_grup_privilege`) REFERENCES `tb_setting_grup_privilege` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_setting_privilege_detail`
--
ALTER TABLE `tb_setting_privilege_detail`
  ADD CONSTRAINT `FK_tb_setting_privilege_detail_tb_setting_privilege` FOREIGN KEY (`id_setting_privilege`) REFERENCES `tb_setting_privilege` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_setting_user_grup`
--
ALTER TABLE `tb_setting_user_grup`
  ADD CONSTRAINT `FK_tb_setting_user_grup_tb_setting_grup` FOREIGN KEY (`id_setting_grup`) REFERENCES `tb_setting_grup` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tb_setting_user_grup_tb_setting_user` FOREIGN KEY (`id_setting_user`) REFERENCES `tb_setting_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
