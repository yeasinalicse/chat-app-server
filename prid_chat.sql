-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2019 at 10:00 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.0.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pridesys`
--

-- --------------------------------------------------------

--
-- Table structure for table `prid_chat`
--

CREATE TABLE `prid_chat` (
  `id` int(11) NOT NULL,
  `company_no` int(11) NOT NULL,
  `user_no` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `title` varchar(200) NOT NULL,
  `message` varchar(255) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prid_chat`
--

INSERT INTO `prid_chat` (`id`, `company_no`, `user_no`, `user_name`, `title`, `message`, `date_time`) VALUES
(28, 78, 47, 'yeasin', '', 'hi', '2019-06-29 11:30:59'),
(29, 78, 47, 'sabbir', '', 'hi', '2019-06-29 11:31:22'),
(30, 78, 47, 'yeasin', '', 'hi', '2019-06-29 11:33:56'),
(31, 78, 47, 'yeasin', '', 'ho', '2019-06-29 12:29:18'),
(32, 78, 47, 'sabbir', '', 'hi', '2019-06-29 12:29:22'),
(33, 78, 47, 'yeasin', '', 'hi', '2019-06-29 12:35:01'),
(34, 78, 47, 'yeasin', '', 'how are you ?', '2019-06-29 12:37:48'),
(35, 78, 47, 'yeasin', '', 'hi', '2019-06-29 12:39:53'),
(36, 78, 47, 'yeasin', '', 'hi', '2019-06-29 12:41:30'),
(37, 78, 47, 'yeasin', '', 'hi', '2019-06-29 12:44:06'),
(38, 78, 47, 'yeasin', '', 'hi', '2019-06-29 12:45:37'),
(39, 78, 47, 'yeasin', '', 'hi', '2019-06-29 12:46:31'),
(40, 78, 47, 'sabbir', '', 'hi', '2019-06-29 12:47:06'),
(41, 78, 47, 'yeasin', '', 'u', '2019-06-29 12:47:14'),
(42, 78, 47, 'sabbir', '', 'hi', '2019-06-29 12:49:46'),
(43, 78, 47, 'sabbir', '', 'hi', '2019-06-29 12:49:51'),
(44, 78, 47, 'sabbir', '', 'hi', '2019-06-29 12:52:22'),
(45, 78, 47, 'sabbir', '', 'hi', '2019-06-29 12:52:42'),
(46, 78, 47, 'sabbir', '', 'hi', '2019-06-29 12:53:59'),
(47, 78, 47, 'sabbir', '', 'hi', '2019-06-29 12:54:15'),
(48, 78, 47, 'sabbir', '', 'hi', '2019-06-29 12:54:34'),
(49, 78, 47, 'sabbir', '', 'hi', '2019-06-29 12:55:09'),
(50, 78, 47, 'sabbir', '', 'hi', '2019-06-29 12:55:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `prid_chat`
--
ALTER TABLE `prid_chat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `prid_chat`
--
ALTER TABLE `prid_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
