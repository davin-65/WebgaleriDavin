-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2024 at 04:14 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `davinputrapujiono`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_album`
--

CREATE TABLE `tb_album` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_album`
--

INSERT INTO `tb_album` (`category_id`, `category_name`) VALUES
(14, 'Perjalanan'),
(15, 'Bawah Air'),
(16, 'Hewan Peliharaan'),
(17, 'Satwa Liar'),
(18, 'Makanan'),
(19, 'Olahraga'),
(20, 'Fashion'),
(21, 'Seni Rupa'),
(22, 'Dokumenter'),
(23, 'Arsitektur');

-- --------------------------------------------------------

--
-- Table structure for table `tb_foto`
--

CREATE TABLE `tb_foto` (
  `image_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `image_name` varchar(100) NOT NULL,
  `image_description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `image_status` tinyint(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_foto`
--

INSERT INTO `tb_foto` (`image_id`, `category_id`, `category_name`, `admin_id`, `admin_name`, `image_name`, `image_description`, `image`, `image_status`, `date_created`) VALUES
(43, 16, 'Hewan Peliharaan', 1, 'M.ZIDAN FIRDAUS', 'KUCING FERSIA', 'BAGUSSSS SAYA SUKA', 'foto1705370927.jpg', 1, '2024-01-16 02:08:47'),
(45, 17, 'Satwa Liar', 3, 'Ucup', 'Singa Afrika', 'Anak singanya lucu ya.....', 'foto1706155177.jpg', 1, '2024-01-26 10:33:47'),
(48, 17, 'Satwa Liar', 3, 'Ucup', 'Harimau Sumatra', 'Harimau sumatra ini tergolong rentan punah karena perburuan ilegal ', 'foto1707100745.jpg', 1, '2024-02-05 02:39:05'),
(49, 17, 'Satwa Liar', 3, 'Ucup', 'Badak Jawa', 'Badak bercula satu yang hanya ada di jawa hampir punah habitat sekarang ada di ujung kulon', 'foto1707100855.jpg', 1, '2024-02-05 02:40:55'),
(56, 17, 'Satwa Liar', 5, 'putra', 'elang', 'elang ganas', 'foto1713923421.jpg', 1, '2024-04-24 01:50:21'),
(57, 14, 'Perjalanan', 5, 'putra', 'Labuan Bajo', 'ini indah sekali pemandangan ya ', 'foto1713923782.jpg', 1, '2024-04-24 01:56:22');

-- --------------------------------------------------------

--
-- Table structure for table `tb_komentar`
--

CREATE TABLE `tb_komentar` (
  `komentarID` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `isi_komentar` text NOT NULL,
  `tanggal_komentar` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_komentar`
--

INSERT INTO `tb_komentar` (`komentarID`, `image_id`, `admin_id`, `admin_name`, `isi_komentar`, `tanggal_komentar`) VALUES
(3, 43, 1, 'M.ZIDAN FIRDAUS', 'Kucing ini harganya berapaan ya? mau beli.', '2024-01-27 04:11:12'),
(4, 43, 2, 'Muin', 'Ini kucing angora atau kucing persia', '2024-01-27 04:14:01'),
(7, 45, 4, 'Irawan Diana', 'Selain buas tenyata singa juga punya rasa kasih sayang', '2024-01-27 05:09:08'),
(8, 49, 3, 'Ucup', 'Badak jawa semoga tidak punah', '2024-02-05 02:42:32'),
(13, 48, 4, 'Irawan Diana', 'harimaunya keren', '2024-02-05 09:06:02'),
(14, 49, 5, 'Halo', 'asa', '2024-04-23 07:38:33'),
(15, 56, 5, 'putra', 'elang ini keren', '2024-04-24 01:50:41'),
(16, 57, 5, 'putra', 'Wahhh pemandangan ya sangat amat indah ', '2024-04-24 01:57:12');

-- --------------------------------------------------------

--
-- Table structure for table `tb_like`
--

CREATE TABLE `tb_like` (
  `like_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `tanggal_like` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_like`
--

INSERT INTO `tb_like` (`like_id`, `image_id`, `admin_id`, `admin_name`, `tanggal_like`) VALUES
(125, 43, 3, 'Ucup', '2024-02-05 02:35:49'),
(126, 49, 3, 'Ucup', '2024-02-05 02:42:05'),
(128, 49, 4, 'Irawan Diana', '2024-02-05 08:59:55'),
(129, 48, 4, 'Irawan Diana', '2024-02-05 09:05:46'),
(131, 43, 4, 'Irawan Diana', '2024-02-12 01:41:54'),
(132, 49, 5, 'Halo', '2024-04-23 07:38:26'),
(133, 56, 5, 'putra', '2024-04-24 01:50:30'),
(134, 57, 5, 'putra', '2024-04-24 01:56:50');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'M.ZIDAN FIRDAUS', '12345', '12345', '081385565539', 'zidandoso9@gmail.com', 'Cikeuik Pandeglang-Banten'),
(2, 'Muin', '12', '12', '98067765', 'fdsaass@gmail.com', 'cilongok'),
(3, 'Ucup', '123', '123', '08372743', 'ucup@gmail.com', 'Cikuya'),
(4, 'Irawan Diana', 'irawan', 'irawan', '085780353253', 'ii3647473@gmail.com', 'Pandeglang Banten'),
(5, 'putra', 'davinnn', '12', '12', 'apin@gmail.com', 'Bandung'),
(6, '1', '1', '1', '1', '1', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_album`
--
ALTER TABLE `tb_album`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `tb_foto`
--
ALTER TABLE `tb_foto`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `tb_komentar`
--
ALTER TABLE `tb_komentar`
  ADD PRIMARY KEY (`komentarID`),
  ADD KEY `image_id` (`image_id`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `admin_name` (`admin_name`);

--
-- Indexes for table `tb_like`
--
ALTER TABLE `tb_like`
  ADD PRIMARY KEY (`like_id`),
  ADD KEY `image_id` (`image_id`),
  ADD KEY `admin_name` (`admin_name`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`admin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_album`
--
ALTER TABLE `tb_album`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tb_foto`
--
ALTER TABLE `tb_foto`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tb_komentar`
--
ALTER TABLE `tb_komentar`
  MODIFY `komentarID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_like`
--
ALTER TABLE `tb_like`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_foto`
--
ALTER TABLE `tb_foto`
  ADD CONSTRAINT `tb_foto_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `tb_album` (`category_id`),
  ADD CONSTRAINT `tb_foto_ibfk_3` FOREIGN KEY (`admin_id`) REFERENCES `tb_user` (`admin_id`);

--
-- Constraints for table `tb_komentar`
--
ALTER TABLE `tb_komentar`
  ADD CONSTRAINT `tb_komentar_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `tb_foto` (`image_id`),
  ADD CONSTRAINT `tb_komentar_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `tb_user` (`admin_id`);

--
-- Constraints for table `tb_like`
--
ALTER TABLE `tb_like`
  ADD CONSTRAINT `tb_like_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `tb_foto` (`image_id`),
  ADD CONSTRAINT `tb_like_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `tb_user` (`admin_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
