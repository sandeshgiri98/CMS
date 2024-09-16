-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2024 at 05:02 AM
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
(22, 130, 19, '2024-01-02 22:26:57', NULL),
(23, 137, 19, '2024-01-03 09:27:09', NULL),
(24, 138, 19, '2024-01-05 07:06:24', NULL),
(25, 132, 19, '2024-01-05 07:13:10', NULL),
(26, 146, 19, '2024-05-17 09:01:54', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
