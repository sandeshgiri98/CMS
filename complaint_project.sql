-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2023 at 02:52 PM
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
-- Database: `complaint_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaint_assignment`
--

CREATE TABLE `complaint_assignment` (
  `id` int(11) NOT NULL,
  `complain_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `assignment_datetime` datetime DEFAULT current_timestamp(),
  `admin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaint_assignment`
--

INSERT INTO `complaint_assignment` (`id`, `complain_id`, `teacher_id`, `assignment_datetime`, `admin_id`) VALUES
(14, 115, 13, '2023-09-30 14:47:53', NULL),
(15, 118, 13, '2023-10-01 01:08:26', NULL),
(16, 121, 13, '2023-10-01 11:36:03', NULL),
(17, 122, 13, '2023-10-01 11:50:16', NULL),
(18, 124, 13, '2023-11-05 19:19:23', NULL),
(19, 127, 13, '2023-11-28 22:25:50', NULL),
(20, 126, 14, '2023-11-28 22:25:53', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaint_assignment`
--
ALTER TABLE `complaint_assignment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complain_id` (`complain_id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `fk_admin_id` (`admin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaint_assignment`
--
ALTER TABLE `complaint_assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `complaint_assignment`
--
ALTER TABLE `complaint_assignment`
  ADD CONSTRAINT `complaint_assignment_ibfk_1` FOREIGN KEY (`complain_id`) REFERENCES `complain` (`id`),
  ADD CONSTRAINT `complaint_assignment_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `register` (`id`),
  ADD CONSTRAINT `fk_admin_id` FOREIGN KEY (`admin_id`) REFERENCES `register` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
