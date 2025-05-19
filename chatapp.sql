-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2025 at 07:37 PM
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
-- Database: `chatapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(1, 811754972, 688120223, 'hello'),
(2, 811754972, 688120223, 'how are you'),
(3, 811754972, 1062488983, 'hello '),
(4, 811754972, 1062488983, 'hello'),
(5, 811754972, 1062488983, 'tricks '),
(6, 811754972, 1062488983, 'hello man'),
(7, 811754972, 1062488983, 'uyghojglkj'),
(8, 811754972, 811754972, 'hello'),
(9, 819328349, 811754972, 'hello'),
(10, 819328349, 811754972, 'how are you'),
(11, 819328349, 811754972, 'ARE YOU FINE'),
(12, 1062488983, 819328349, 'INESSE '),
(13, 1062488983, 819328349, '9iiiiiiiiiiiiiw'),
(14, 1062488983, 819328349, 'hhhhh'),
(15, 819328349, 819328349, 'salam'),
(16, 819328349, 1062488983, 'balaaa3'),
(17, 819328349, 1062488983, 't3yiii'),
(18, 1062488983, 819328349, 'salut'),
(19, 819328349, 1062488983, 'cv'),
(20, 819328349, 1062488983, 'WSh el hachemi'),
(21, 811754972, 819328349, 'asdadasasa'),
(22, 811754972, 819328349, 'dsd'),
(23, 811754972, 819328349, 'sdsadasdasd'),
(24, 811754972, 819328349, 'sdsdasdsad'),
(25, 1062488983, 819328349, 'hello hello'),
(26, 1062488983, 819328349, 'how are you '),
(27, 819328349, 1062488983, 'sadasdas'),
(28, 1062488983, 819328349, 'asdlasdl'),
(29, 1062488983, 819328349, 'asdasd'),
(30, 1062488983, 819328349, 'lmlsadas'),
(31, 1062488983, 819328349, 'ksad;lmasd;l'),
(32, 1062488983, 819328349, 'sa,dmasnd'),
(33, 1062488983, 819328349, 's,mdnasdklsad'),
(34, 1062488983, 811754972, 'hello'),
(35, 1062488983, 811754972, 'hoooj'),
(36, 1062488983, 811754972, 'iohio'),
(37, 1062488983, 811754972, 'hbjblkjhkl'),
(38, 1062488983, 811754972, 'ljklj'),
(39, 1535798666, 811754972, 'hello'),
(40, 1535798666, 811754972, ' how are you brother'),
(41, 811754972, 1535798666, 'helllo'),
(42, 1535798666, 811754972, 'dfdsf'),
(43, 1535798666, 811754972, 'hello'),
(44, 1535798666, 811754972, 'fuck you'),
(45, 1535798666, 811754972, '9iiiiiiw'),
(46, 1535798666, 811754972, 'sallllaaaah'),
(47, 811754972, 1535798666, 'chat'),
(48, 1535798666, 811754972, 'sadsada'),
(49, 1628463214, 811754972, 'hello'),
(50, 1628463214, 811754972, 'how are you'),
(51, 811754972, 1628463214, 'fuck you'),
(52, 1628463214, 811754972, 'thank you'),
(53, 811754972, 1628463214, 'welcome'),
(54, 1628463214, 811754972, 'as,mdn,asmdn.as,mdas,fnads.,fnasd,nas.das,md'),
(55, 1628463214, 811754972, 'asjkdhsakd'),
(56, 1628463214, 811754972, 'lkasjdlkask'),
(57, 1628463214, 811754972, 'kajshdlask'),
(58, 1628463214, 811754972, 'laskdjsal'),
(59, 1628463214, 811754972, 'laksjdlas'),
(60, 811754972, 1628463214, 'asjkdlkasdjasld'),
(61, 811754972, 1628463214, 'lkasjd'),
(62, 811754972, 1628463214, 'lasdkjaskld');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(200) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(400) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`) VALUES
(11, 811754972, 'amine', 'sebaoune', 'amineseba70@gmail.com', '123456789', '17450064321731419785235.jpeg', 'Offline now'),
(12, 1062488983, 'inesse', 'sebaoune', 'inesse@gmail.com', '123456', '1745013350user-profile-avatar-icon-design-user-hat-female-woman-silhouette-headgear-people.png', 'Offline now'),
(13, 819328349, 'mohamed', 'meddour', 'mohamed@gmail.com', '9887654', '17450136569e41dd56f7a091cf4df76aed668db4fc.jpg', 'Active now'),
(14, 688120223, 'abdelhamid', 'sebaoune', 'abdouseba@gmail.com', '123456', '17459217409e41dd56f7a091cf4df76aed668db4fc.jpg', 'Active now'),
(15, 1535798666, 'musta', 'meddour', 'mustaf@gmail.com', '123456', '1746045138R.png', 'Offline now'),
(17, 1628463214, 'abdou', 'sebaoune', 'abdouseba10@gmail.com', '123456789', '1746321706R.png', 'Offline now');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
