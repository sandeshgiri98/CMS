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
-- Table structure for table `complain_details`
--

CREATE TABLE `complain_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL,
  `registration_datetime` datetime DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `complaint_id` int(11) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `nature` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `complain_description` varchar(500) DEFAULT NULL,
  `complaint_datetime` datetime DEFAULT NULL,
  `status` enum('pending','in_progress','resolved','discard') DEFAULT NULL,
  `complain_user` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complain_details`
--

INSERT INTO `complain_details` (`id`, `user_id`, `name`, `email`, `phone`, `dob`, `role`, `registration_datetime`, `last_login_time`, `profile_image`, `complaint_id`, `category`, `type`, `department`, `nature`, `image`, `complain_description`, `complaint_datetime`, `status`, `complain_user`) VALUES
(37, 2, 'Vaughan Web', 'student@gmail.com', '9826262655', '2005-01-22', 'student', '2023-07-26 20:04:12', '2024-09-16 08:32:15', '76-763610_depression-png-transparent-image-depression-png-clipart.png', 115, 'Technical', 'Facilities', 'Operations', 'Multiplug Required  ', 'Cord.webp', 'In our class there is not any multi-plug and we are facing the problem. We can\'t charge our laptops due to which we can\'t do our practicals in time so please solve this problem as soon as possible.', '2023-09-30 14:12:11', 'resolved', 'Web72362'),
(39, NULL, 'Shyam Shrestha', 'teacher@gmail.com', '9828282826', '2002-01-02', 'teacher', '2023-09-27 21:35:48', '2024-01-02 20:55:39', 'Screenshot_20230105_060837.png', 117, 'Non-technical', 'Hardware', 'Administration', 'Cherokee Cleveland', '', 'Ullamco autem explicabo Non odio blanditiis qui sed fugit consequat Ea reprehenderit explicabo In voluptas magna quia exercitationem at', '2023-09-30 15:44:43', 'resolved', 'Abc78529'),
(40, 2, 'Vaughan Web', 'student@gmail.com', '9826262655', '2005-01-22', 'student', '2023-07-26 20:04:12', '2024-09-16 08:32:15', '76-763610_depression-png-transparent-image-depression-png-clipart.png', 118, 'Non-teaching', 'Facilities', 'Other', 'Duster Required ', '', 'In our class there is not any duster so please provide us the duster, each and every day tearing 1 pages is making us irritating. Books are so costly so please provide the duster as soon as possible.', '2023-10-01 00:37:46', 'resolved', 'Web72362'),
(41, 16, 'Sandesh Giri', 'sandeshgiri@gmail.com', '9825252529', '2002-01-02', 'student', '2023-10-01 00:51:25', '2023-10-01 01:05:50', 'Screenshot_20230105_060837.png', 119, 'Non-technical', 'Curriculum', 'Finance', 'Project Defense Test', '', 'I have done all testing, hope it will be good. Wish to be good. I have done my best, hope it will be best.', '2023-10-01 00:55:27', 'resolved', 'Gir04686'),
(42, 16, 'Sandesh Giri', 'sandeshgiri@gmail.com', '9825252529', '2002-01-02', 'student', '2023-10-01 00:51:25', '2023-10-01 01:05:50', 'Screenshot_20230105_060837.png', 120, 'Non-technical', 'Other', 'Academics', 'Tour Planning ', 'd.jpg', 'Our college haven\'t take us tour since so long. Hope it will take us tour soon so that we can enjoy nature. They charge very high price so hope to go tour in less coust.😊😊', '2023-10-01 00:57:11', 'resolved', 'Gir04686'),
(43, NULL, 'Shyam Shrestha', 'teacher@gmail.com', '9828282826', '2002-01-02', 'teacher', '2023-09-27 21:35:48', '2024-01-02 20:55:39', 'Screenshot_20230105_060837.png', 121, 'Other', 'Hardware', 'Academics', 'Whoopi Serrano', '', 'Sint eu distinctio Id sunt laboris qui nostrum', '2023-10-01 01:02:06', 'resolved', 'Abc78529'),
(44, 2, 'Vaughan Web', 'student@gmail.com', '9826262655', '2005-01-22', 'student', '2023-07-26 20:04:12', '2024-09-16 08:32:15', '76-763610_depression-png-transparent-image-depression-png-clipart.png', 122, 'Technical', 'Administration', 'Finance', 'Zorita Richard', 'Cord.webp', 'Id magni neque in repudiandae', '2023-10-01 11:32:36', 'resolved', 'Web72362'),
(45, 2, 'Vaughan Web', 'student@gmail.com', '9826262655', '2005-01-22', 'student', '2023-07-26 20:04:12', '2024-09-16 08:32:15', '76-763610_depression-png-transparent-image-depression-png-clipart.png', 123, 'Other', 'Network', 'Finance', 'Cora Vaughan', 'a.jpg', 'Repellendus Voluptatem quod magna numquam delectus nisi aliquip sit maiores dolor commodo quasi voluptatum quidem totam quaerat', '2023-10-01 11:47:48', 'resolved', 'Web72362'),
(46, 2, 'Vaughan Web', 'student@gmail.com', '9826262655', '2005-01-22', 'student', '2023-07-26 20:04:12', '2024-09-16 08:32:15', '76-763610_depression-png-transparent-image-depression-png-clipart.png', 124, 'Technical', 'Other', 'HR', 'Burton Fields', 'd.jpg', 'Sapiente quo sint ad harum qui recusandae Repudiandae', '2023-11-05 19:17:39', '', 'Web72362'),
(48, 7, 'Anita Giri', 'student2@gmail.com', '9856565659', '1976-12-24', 'student', '2023-07-31 22:37:50', '2023-11-28 22:19:42', 'book.jpg', 126, 'Non-technical', 'Administration', 'IT', 'Philip Parker', 'Iterative-Waterfall-Model.webp', 'Omnis omnis nemo nihil vitae voluptatem', '2023-11-28 22:21:04', 'resolved', 'Gir99034'),
(49, 7, 'Anita Giri', 'student2@gmail.com', '9856565659', '1976-12-24', 'student', '2023-07-31 22:37:50', '2023-11-28 22:19:42', 'book.jpg', 127, 'Non-technical', 'Facilities', 'HR', 'Meredith Cole', 'graphics.png', 'Qui nostrud reiciendis illo ab incidunt qui dignissimos incididunt fuga Enim molestiae dignissimos totam mollit', '2023-11-28 22:21:52', 'resolved', 'Gir99034'),
(50, NULL, 'Shyam Shrestha', 'teacher@gmail.com', '9828282826', '2002-01-02', 'teacher', '2023-09-27 21:35:48', '2024-01-02 20:55:39', 'Screenshot_20230105_060837.png', 128, 'Other', 'Hardware', 'Administration', 'Dalton Clark', '', 'Dolor minus asperiores asperiores ab illo', '2023-11-29 18:59:18', '', 'Abc78529'),
(51, 2, 'Vaughan Web', 'student@gmail.com', '9826262655', '2005-01-22', 'student', '2023-07-26 20:04:12', '2024-09-16 08:32:15', '76-763610_depression-png-transparent-image-depression-png-clipart.png', 129, 'Technical', 'Facilities', 'HR', 'Lance Emerson', 'd.jpg', 'Voluptate reprehenderit amet sit rerum excepturi sed quisquam tempor sed sint aut sed temporibus illum ullam lorem et consectetur', '2024-01-02 20:53:36', '', 'Web72362'),
(52, 19, 'Teacher One', 'teacher@gmail.com', '9825623232', '2000-02-20', 'teacher', '2024-01-02 21:16:36', '2024-01-06 11:09:46', 'Screen-Shot-2022-06-15-at-09.23.14-1-700x450.png', 130, 'Technical', 'Facilities', 'Administration', 'AC not working', 'air-conditioner-not-cooling.jpeg', 'In our class, the air conditioning unit is currently out of order, and unfortunately, it neither generates warmth nor provides a cooling effect.', '2024-01-02 21:20:34', 'resolved', 'One60499'),
(53, 19, 'Teacher One', 'teacher@gmail.com', '9825623232', '2000-02-20', 'teacher', '2024-01-02 21:16:36', '2024-01-06 11:09:46', 'Screen-Shot-2022-06-15-at-09.23.14-1-700x450.png', 131, 'Non-teaching', 'Curriculum', 'IT', 'Hiroko Mercer', 'complaint.jpg', 'Doloremque cupiditate repudiandae id magni', '2024-01-02 21:45:20', 'resolved', 'One60499'),
(54, 2, 'Vaughan Web', 'student@gmail.com', '9826262655', '2005-01-22', 'student', '2023-07-26 20:04:12', '2024-09-16 08:32:15', '76-763610_depression-png-transparent-image-depression-png-clipart.png', 132, 'Non-technical', 'Facilities', 'Administration', 'Ayanna Ayala', '', 'Aut autem adipisci ducimus distinctio Qui est dolores doloribus iste optio et', '2024-01-02 21:56:39', 'resolved', 'Web72362'),
(55, 2, 'Vaughan Web', 'student@gmail.com', '9826262655', '2005-01-22', 'student', '2023-07-26 20:04:12', '2024-09-16 08:32:15', '76-763610_depression-png-transparent-image-depression-png-clipart.png', 133, 'Technical', 'Network', 'IT', 'Wifi not Working', 'WiFi-Not-Working.jpg', 'Internet is not working. Solve this problem.', '2024-01-03 06:51:47', 'resolved', 'Web72362'),
(56, 2, 'Vaughan Web', 'student@gmail.com', '9826262655', '2005-01-22', 'student', '2023-07-26 20:04:12', '2024-09-16 08:32:15', '76-763610_depression-png-transparent-image-depression-png-clipart.png', 134, 'Teaching', 'Curriculum', 'HR', 'Won a Competition', 'Screenshot_20230110_041417.png', 'Won the competition but not got certificate. Please provide the certificate.', '2024-01-03 08:18:25', 'resolved', 'Web72362'),
(57, 20, 'Chiran Raj Thapa', 'chiran@gmail.com', '9823266266', '2002-02-20', 'student', '2024-01-03 08:24:00', '2024-01-03 08:35:39', 'rog_font.webp', 135, 'Non-teaching', 'Other', 'Academics', 'Zorita Moody', 'wrong.gif', 'Inventore autem non quod labore dolorum et quo dolorem aliqua Ea nulla', '2024-01-03 08:32:58', '', 'Raj54304'),
(59, 2, 'Vaughan Web', 'student@gmail.com', '9826262655', '2005-01-22', 'student', '2023-07-26 20:04:12', '2024-09-16 08:32:15', '76-763610_depression-png-transparent-image-depression-png-clipart.png', 137, 'Technical', 'Other', 'HR', 'Erich Good', 'complaint.jpg', 'Labore voluptatum accusamus ullamco ad autem consequatur minima est laboris consequatur', '2024-01-03 09:26:04', 'resolved', 'Web72362'),
(60, NULL, 'asmita darlami', 'asmita@gmail.com', '9840917988', '2002-01-27', 'student', '2024-01-05 06:59:48', '2024-01-06 08:04:47', 'adf.jpg', 138, 'Technical', 'Curriculum', 'IT', 'Project Defense Test', 'comment box (final).jpg', 'it is our defense.', '2024-01-05 07:02:51', 'resolved', 'asm83922'),
(61, 2, 'Vaughan Web', 'student@gmail.com', '9826262655', '2005-01-22', 'student', '2023-07-26 20:04:12', '2024-09-16 08:32:15', '76-763610_depression-png-transparent-image-depression-png-clipart.png', 139, 'Teaching', 'Facilities', 'Finance', 'Rigel Calhoun', '', 'Et ut possimus cupiditate consequuntur error rem', '2024-01-05 07:11:49', '', 'Web72362'),
(62, NULL, 'Defense Byte', 'testing0@gmail.com', '9826262665', '2002-01-02', 'student', '2024-01-05 17:56:16', '2024-01-05 17:56:30', NULL, 140, 'Teaching', 'Facilities', 'Administration', 'Pratice', 'f.jpg', 'The class is going well but Ac is not working and class is cold as well as wifi is not working.', '2024-01-05 17:58:29', 'resolved', 'Byt25257'),
(63, 2, 'Vaughan Web', 'student@gmail.com', '9826262655', '2005-01-22', 'student', '2023-07-26 20:04:12', '2024-09-16 08:32:15', '76-763610_depression-png-transparent-image-depression-png-clipart.png', 141, 'Technical', 'Hardware', 'HR', 'Teagan Barry', 'nature-3082832_640.jpg', 'This is just a photo.', '2024-01-05 18:04:05', 'resolved', 'Web72362'),
(64, 2, 'Vaughan Web', 'student@gmail.com', '9826262655', '2005-01-22', 'student', '2023-07-26 20:04:12', '2024-09-16 08:32:15', '76-763610_depression-png-transparent-image-depression-png-clipart.png', 142, 'Technical', 'Hardware', 'IT', 'No wifi port', '2nd_front.webp', 'There is not any WiFi port int he computer so please solve this problem as soon as possible. The LAN port is there but it is not possible to bring the LAN cable for all the computer so this problem should be solved as soon as possible. ', '2024-01-05 18:11:06', 'resolved', 'Web72362'),
(65, 19, 'Teacher One', 'teacher@gmail.com', '9825623232', '2000-02-20', 'teacher', '2024-01-02 21:16:36', '2024-01-06 11:09:46', 'Screen-Shot-2022-06-15-at-09.23.14-1-700x450.png', 143, 'Technical', 'Software', 'IT', 'Eaton Berg', '', 'Sapiente mollitia eius sunt voluptate quia eu', '2024-01-05 18:28:31', '', 'One60499'),
(67, 2, 'Vaughan Web', 'student@gmail.com', '9826262655', '2005-01-22', 'student', '2023-07-26 20:04:12', '2024-09-16 08:32:15', '76-763610_depression-png-transparent-image-depression-png-clipart.png', 145, 'Non-teaching', 'Administration', 'Other', 'Not ', 'swsc.webp', 'College is not same as the photo shown in the picture.', '2024-01-05 18:48:30', 'pending', 'Web72362'),
(68, 2, 'Vaughan Web', 'student@gmail.com', '9826262655', '2005-01-22', 'student', '2023-07-26 20:04:12', '2024-09-16 08:32:15', '76-763610_depression-png-transparent-image-depression-png-clipart.png', 146, 'Other', 'Network', 'Administration', 'Charles Galloway', 'Untitled.jpg', 'Defense', '2024-01-06 07:40:13', 'pending', 'Web72362'),
(69, NULL, 'asmita darlami', 'asmita@gmail.com', '9840917988', '2002-01-27', 'student', '2024-01-05 06:59:48', '2024-01-06 08:04:47', 'adf.jpg', 147, 'Non-technical', 'Network', 'HR', 'Marshall Rodgers', 'Screen-Shot-2022-06-15-at-09.23.14-1-700x450.png', 'Our College Infrastructure is good but there is little problem inside the class where there is no ac .', '2024-01-06 08:04:29', 'in_progress', 'asm83922'),
(70, 19, 'Teacher One', 'teacher@gmail.com', '9825623232', '2000-02-20', 'teacher', '2024-01-02 21:16:36', '2024-01-06 11:09:46', 'Screen-Shot-2022-06-15-at-09.23.14-1-700x450.png', 148, 'Teaching', 'Curriculum', 'IT', 'bad teaching practic', 'associations.png', 'j dsafjhaslk faskj fakjnfald kfdlkajnfd', '2024-01-06 11:14:07', 'in_progress', 'One60499'),
(72, 2, 'Vaughan Web', 'student@gmail.com', '9826262655', '2005-01-22', 'student', '2023-07-26 20:04:12', '2024-09-16 08:32:15', '76-763610_depression-png-transparent-image-depression-png-clipart.png', 150, 'Non-teaching', 'Other', 'Administration', 'Maggie Fuentes', '', 'Provident inventore voluptate a vel vel blanditiis quaerat sint vel officia aliquam non temporibus voluptatem dolor illo quod facilis accusantium', '2024-05-22 20:30:37', 'in_progress', 'Web72362');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complain_details`
--
ALTER TABLE `complain_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `complaint_id` (`complaint_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complain_details`
--
ALTER TABLE `complain_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `complain_details`
--
ALTER TABLE `complain_details`
  ADD CONSTRAINT `complain_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `register` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `complain_details_ibfk_2` FOREIGN KEY (`complaint_id`) REFERENCES `complain` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
