-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2021 at 03:13 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`) VALUES
(1, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `deletedprojects`
--

CREATE TABLE `deletedprojects` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `project` varchar(255) NOT NULL,
  `deltime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deletedprojects`
--

INSERT INTO `deletedprojects` (`id`, `email`, `project`, `deltime`) VALUES
(1, '', '', '2021-06-25 13:03:11'),
(2, '', '', '2021-06-25 13:03:56'),
(3, '', '', '2021-06-25 13:04:00'),
(11, '', '', '2021-06-30 11:16:10'),
(12, '', '', '2021-06-30 11:18:26'),
(13, '', '', '2021-06-30 11:41:10'),
(14, '', 'Bittyweb', '2021-06-30 11:41:34'),
(15, '', 'Bittyweb', '2021-06-30 11:43:51'),
(16, '', 'Bittyweb', '2021-06-30 11:44:06'),
(17, '', 'admin noti', '2021-06-30 11:55:51');

-- --------------------------------------------------------

--
-- Table structure for table `deleteduser`
--

CREATE TABLE `deleteduser` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `deltime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `notiuser` varchar(50) NOT NULL,
  `notireciver` varchar(50) NOT NULL,
  `notitype` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `notiuser`, `notireciver`, `notitype`, `time`) VALUES
(18, 'ajjain1280@gmail.com', 'Admin', 'Create Account', '2021-06-25 06:31:12'),
(19, 'ajjain1280@gmail.com', 'Admin', 'Send Feedback', '2021-06-25 06:33:48'),
(20, 'ajjain1280@gmail.com', 'Admin', 'Send Feedback', '2021-06-25 06:37:54'),
(21, 'ajjain1280@gmail.com', 'Admin', 'Send Feedback', '2021-06-25 06:40:55'),
(22, 'ajjain1280@gmail.com', 'Admin', 'Send Feedback', '2021-06-25 06:41:33'),
(23, 'ajjain1280@gmail.com', 'Admin', 'Send Feedback', '2021-06-25 06:44:01'),
(24, 'ajjain1280@gmail.com', 'Admin', 'Send Feedback', '2021-06-25 06:44:28'),
(25, 'ajjain1280@gmail.com', 'Admin', 'Send Feedback', '2021-06-25 06:44:38'),
(26, 'ajjain1280@gmail.com', 'Admin', 'Send Feedback', '2021-06-25 06:45:23'),
(27, 'ajjain1280@gmail.com', 'Admin', 'Send Feedback', '2021-06-25 06:46:36'),
(28, 'ajjain1280@gmail.com', 'Admin', 'Send Feedback', '2021-06-25 06:47:27'),
(29, 'ajjain1280@gmail.com', 'Admin', 'Send Feedback', '2021-06-25 06:48:11'),
(30, 'Admin', 'ajjain1280@gmail.com', 'Send Message', '2021-06-25 06:50:19'),
(31, 'Admin', 'ajjain1280@gmail.com', 'Send Message', '2021-06-25 06:50:52'),
(32, 'Admin', 'ajjain1280@gmail.com', ' has send a message', '2021-06-25 07:04:49'),
(33, 'Admin', 'ajjain1280@gmail.com', ' has send a message', '2021-06-25 07:08:09'),
(34, 'Admin', 'ajjain1280@gmail.com', ' has send a message', '2021-06-25 07:09:24'),
(35, 'Admin', 'ajjain1280@gmail.com', ' has send a message', '2021-06-25 07:09:40'),
(36, 'Admin', 'ajjain1280@gmail.com', ' has send a message', '2021-06-25 07:10:58'),
(37, 'Admin', 'ajjain1280@gmail.com', ' has send a message', '2021-06-25 07:11:02'),
(38, 'amu123@gmail.com', 'Admin', 'Create Account', '2021-06-25 07:19:21'),
(39, 'amu123@gmail.com', 'Admin', 'Send Feedback', '2021-06-25 07:22:12'),
(40, 'Admin', 'amu123@gmail.com', ' has send a message', '2021-06-25 07:23:27'),
(41, 'Admin', 'amu123@gmail.com', ' has send a message', '2021-06-25 12:25:37'),
(42, 'Admin', 'amu123@gmail.com', ' has send a message', '2021-06-25 12:26:03'),
(43, 'Admin', 'amu123@gmail.com', ' has send a message', '2021-06-25 12:27:31'),
(44, 'ajjain1280@gmail.com', 'Admin', 'Send Feedback', '2021-06-25 13:04:41'),
(45, 'ajjain1280@gmail.com', 'Admin', 'Updated a Project', '2021-06-25 14:14:34'),
(46, 'ajjain1280@gmail.com', 'Admin', 'Updated a Project', '2021-06-25 14:15:55'),
(47, 'ajjain1280@gmail.com', 'Admin', 'Updated a Project', '2021-06-25 14:43:35'),
(48, 'ajjain1280@gmail.com', 'Admin', 'Updated a Project', '2021-06-25 14:44:55'),
(49, 'ajjain1280@gmail.com', 'Admin', 'Updated a Project', '2021-06-25 14:47:01'),
(50, 'ajjain1280@gmail.com', 'Admin', 'Updated a Project', '2021-06-25 14:51:05'),
(51, 'ajjain1280@gmail.com', 'Admin', 'Updated a Project', '2021-06-25 14:53:29'),
(52, 'ajjain1280@gmail.com', 'Admin', 'Updated a Project', '2021-06-25 14:54:50'),
(53, 'ajjain1280@gmail.com', 'Admin', 'Send Project', '2021-06-25 14:55:42'),
(54, 'ajjain1280@gmail.com', 'Admin', 'Updated a Project', '2021-06-25 14:56:17'),
(55, 'ajjain1280@gmail.com', 'Admin', 'Updated a Project', '2021-06-25 14:59:59'),
(56, 'amu123@gmail.com', 'Admin', 'Send Project', '2021-06-30 08:46:36'),
(57, 'amu123@gmail.com', 'Admin', 'Updated a Project', '2021-06-30 08:47:23'),
(58, 'amu123@gmail.com', 'Admin', 'Updated a Project', '2021-06-30 08:48:22'),
(59, 'amu123@gmail.com', 'Admin', 'Updated a Project', '2021-06-30 08:49:37'),
(60, 'amu123@gmail.com', 'Admin', 'Updated a Project', '2021-06-30 08:49:41'),
(61, 'amu123@gmail.com', 'Admin', 'Updated a Project', '2021-06-30 08:50:18'),
(62, 'amu123@gmail.com', 'Admin', 'Updated a Project', '2021-06-30 08:52:47'),
(63, 'Admin', 'amu123@gmail.com', ' has send a message', '2021-06-30 08:53:11'),
(64, 'Admin', 'ajjain1280@gmail.com', ' has send a message', '2021-06-30 09:08:33'),
(65, 'Admin', 'amu123@gmail.com', ' has send a message', '2021-06-30 09:09:33'),
(66, 'amu123@gmail.com', 'Admin', 'Updated a Project', '2021-06-30 09:49:26'),
(67, 'Admin', 'amu123@gmail.com', ' has send a message', '2021-06-30 10:51:02'),
(68, 'amu123@gmail.com', 'Admin', 'Send Project', '2021-06-30 10:56:40'),
(69, 'amu123@gmail.com', 'Admin', 'Send Project', '2021-06-30 11:14:05'),
(70, 'amu123@gmail.com', 'Admin', 'Send Project', '2021-06-30 11:15:17'),
(71, 'amu123@gmail.com', 'Admin', 'Send Project', '2021-06-30 11:15:28'),
(72, 'amu123@gmail.com', 'Admin', 'Send Project', '2021-06-30 11:17:42'),
(73, 'amu123@gmail.com', 'Admin', 'Send Project', '2021-06-30 11:24:00'),
(74, 'amu123@gmail.com', 'Admin', 'Send Project', '2021-06-30 11:41:26'),
(75, 'amu123@gmail.com', 'Admin', 'Send Project', '2021-06-30 11:55:38'),
(76, 'amu123@gmail.com', 'Admin', 'Deleted a project', '2021-06-30 11:55:51'),
(77, 'anchal@anchal.com', 'Admin', 'Create Account', '2021-06-30 12:29:36'),
(78, 'anchal@anchal.com', 'Admin', 'Create Account', '2021-06-30 12:30:49'),
(79, 'anchal@anchal.com', 'Admin', 'Create Account', '2021-06-30 12:33:26'),
(80, 'anchal@anchal.com', 'Admin', 'Create Account', '2021-06-30 12:34:31'),
(81, 'neelu@neelu.com', 'Admin', 'Create Account', '2021-06-30 12:37:25');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `reciver` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `feedbackdata` varchar(500) NOT NULL,
  `attachment` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `sender`, `reciver`, `title`, `feedbackdata`, `attachment`, `time`) VALUES
(21, 'ajjain1280@gmail.com', 'Admin', 't3', 't3 working', 'Array', '2021-06-30 08:56:43'),
(22, 'ajjain1280@gmail.com', 'Admin', 't4', 't4 test', 'a.txt', '2021-06-30 08:56:43'),
(23, 'ajjain1280@gmail.com', 'Admin', 'test 5', 'test 5, uploading zip', 'htdocs.zip', '2021-06-30 08:56:43'),
(24, 'Admin', 'ajjain1280@gmail.com', '', 'done.', '', '2021-06-30 08:56:43'),
(25, 'Admin', 'ajjain1280@gmail.com', '', 'uoplaoded', '', '2021-06-30 08:56:43'),
(26, 'Admin', 'ajjain1280@gmail.com', '', 'done. thanks for this', '', '2021-06-30 08:56:43'),
(27, 'Admin', 'ajjain1280@gmail.com', '', 'not working', '', '2021-06-30 08:56:43'),
(28, 'Admin', 'ajjain1280@gmail.com', '', 'not working', '', '2021-06-30 08:56:43'),
(29, 'Admin', 'ajjain1280@gmail.com', '', 'yes ok. this is working', '', '2021-06-30 08:56:43'),
(30, 'Admin', 'ajjain1280@gmail.com', '', 'yes ok. this is working', '', '2021-06-30 08:56:43'),
(31, 'Admin', 'ajjain1280@gmail.com', '', 'done', '', '2021-06-30 08:56:43'),
(33, 'Admin', 'amu123@gmail.com', '', 'thsnks for submittinhg....dvDFBDFB fv z', '', '2021-06-30 08:56:43'),
(34, 'Admin', 'amu123@gmail.com', '', 'dvsfb\r\nbndgngrn\r\ngtnhrzgymnzrfmn\r\nngrsnjymfyh\r\nmgnrfyhmfhm\r\nhmh,ujm,\r\ndgtjhnryjy\r\nmfgmtgj,ukl\r\ntgjsryjtyjmxfgn\r\nhymkuy,kyjxfn\r\ndtuky,jgm x\r\ntg,kyikrdt6km\r\ntyikr66sdtkm\r\nryjkiymxrft\r\nsrtjhgz\r\naqwhjhm\r\nvbfvdf\r\nbndofbbh\r\nbmrfynhsxgb\r\nmgnyhg', '', '2021-06-30 08:56:43'),
(35, 'Admin', 'amu123@gmail.com', '', 'fgb mrtgb\r\n<br>\r\nargtqehbabn\r\nstnyrn\r\n<br>\r\nashrtgn', '', '2021-06-30 08:56:43'),
(36, 'Admin', 'amu123@gmail.com', '', 'www.bittyweb.com\r\n', '', '2021-06-30 08:56:43'),
(38, 'ajjain1280@gmail.com', 'Admin', 'test new', 'hello test', 'dsc_0309.jpg', '2021-06-30 08:56:43'),
(39, 'amu123@gmail.com', 'Admin', '     testing edit new', 'attchment check ', 'pan.pdf', '2021-06-30 09:49:26'),
(40, 'Admin', 'amu123@gmail.com', '', 'attachment not found', '', '2021-06-30 08:56:43'),
(41, 'Admin', 'ajjain1280@gmail.com', '', 'done', '', '2021-06-30 09:08:33'),
(42, 'Admin', 'amu123@gmail.com', '', 'attachhmrnt still not there', '', '2021-06-30 09:09:33'),
(43, 'Admin', 'amu123@gmail.com', '', 'tested... please visit <a href=\"https://www.bittyweb.com\">Here </a> ', '', '2021-06-30 10:51:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `gender`, `mobile`, `designation`, `image`, `status`) VALUES
(20, 'user', 'ajjain1280@gmail.com', 'ee11cbb19052e40b07aac0ca060c23ee', 'Male', '09479567813', 'student', 'profile3.jpg', 1),
(21, 'aman 2', 'amu123@gmail.com', 'ccda1683d8c97f8f2dff2ea7d649b42c', 'Male', '08989495803', 'student 1', 'dsc_0309.jpg', 1),
(22, 'anchal', 'anchal@anchal.com', '55c630955b288d69baf846ab850be5d3', 'Female', '9876543210', 'member', 'img_20191001_171647.jpg', 1),
(23, 'neelu', 'neelu@neelu.com', 'f6dd7c5f25218f182a91d0dba93b5d50', 'Female', '7894561230', 'member', 'dsc_0558.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deletedprojects`
--
ALTER TABLE `deletedprojects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deleteduser`
--
ALTER TABLE `deleteduser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `deletedprojects`
--
ALTER TABLE `deletedprojects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `deleteduser`
--
ALTER TABLE `deleteduser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
