-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2024 at 05:01 AM
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
-- Table structure for table `complain`
--

CREATE TABLE `complain` (
  `id` int(11) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `nature` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `complain_user` varchar(8) DEFAULT NULL,
  `complain_description` varchar(500) DEFAULT NULL,
  `complaint_datetime` datetime DEFAULT current_timestamp(),
  `complaint_ticket` varchar(8) NOT NULL,
  `status` enum('pending','in_progress','resolved','discharge') DEFAULT 'pending',
  `resolved_datetime` datetime DEFAULT NULL,
  `discharge_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complain`
--

INSERT INTO `complain` (`id`, `category`, `type`, `department`, `nature`, `image`, `complain_user`, `complain_description`, `complaint_datetime`, `complaint_ticket`, `status`, `resolved_datetime`, `discharge_datetime`) VALUES
(115, 'Technical', 'Facilities', 'Operations', 'Multiplug Required  ', 'Cord.webp', 'Web72362', 'In our class there is not any multi-plug and we are facing the problem. We can\'t charge our laptops due to which we can\'t do our practicals in time so please solve this problem as soon as possible.', '2023-09-30 14:12:11', '74047625', 'resolved', '2023-10-01 11:34:24', NULL),
(117, 'Non-technical', 'Hardware', 'Administration', 'Cherokee Cleveland', '', 'Abc78529', 'Ullamco autem explicabo Non odio blanditiis qui sed fugit consequat Ea reprehenderit explicabo In voluptas magna quia exercitationem at', '2023-09-30 15:44:43', '31495457', 'resolved', '2023-11-05 19:19:29', NULL),
(118, 'Non-teaching', 'Facilities', 'Other', 'Duster Required ', '', 'Web72362', 'In our class there is not any duster so please provide us the duster, each and every day tearing 1 pages is making us irritating. Books are so costly so please provide the duster as soon as possible.', '2023-10-01 00:37:46', '55536924', 'resolved', '2023-10-01 01:11:05', NULL),
(119, 'Non-technical', 'Curriculum', 'Finance', 'Project Defense Test', '', 'Gir04686', 'I have done all testing, hope it will be good. Wish to be good. I have done my best, hope it will be best.', '2023-10-01 00:55:27', '83787116', 'resolved', '2023-10-01 01:08:42', NULL),
(120, 'Non-technical', 'Other', 'Academics', 'Tour Planning ', 'd.jpg', 'Gir04686', 'Our college haven\'t take us tour since so long. Hope it will take us tour soon so that we can enjoy nature. They charge very high price so hope to go tour in less coust.😊😊', '2023-10-01 00:57:11', '90379876', 'resolved', '2023-11-05 19:19:32', NULL),
(121, 'Other', 'Hardware', 'Academics', 'Whoopi Serrano', '', 'Abc78529', 'Sint eu distinctio Id sunt laboris qui nostrum', '2023-10-01 01:02:06', '65695766', 'resolved', '2023-10-01 11:49:16', NULL),
(122, 'Technical', 'Administration', 'Finance', 'Zorita Richard', 'Cord.webp', 'Web72362', 'Id magni neque in repudiandae', '2023-10-01 11:32:36', '10736388', 'resolved', '2023-11-05 19:18:41', NULL),
(123, 'Other', 'Network', 'Finance', 'Cora Vaughan', 'a.jpg', 'Web72362', 'Repellendus Voluptatem quod magna numquam delectus nisi aliquip sit maiores dolor commodo quasi voluptatum quidem totam quaerat', '2023-10-01 11:47:48', '72938348', 'resolved', '2023-11-05 19:19:34', NULL),
(124, 'Technical', 'Other', 'HR', 'Burton Fields', 'd.jpg', 'Web72362', 'Sapiente quo sint ad harum qui recusandae Repudiandae', '2023-11-05 19:17:39', '25826717', 'discharge', NULL, '2023-11-28 22:24:03'),
(126, 'Non-technical', 'Administration', 'IT', 'Philip Parker', 'Iterative-Waterfall-Model.webp', 'Gir99034', 'Omnis omnis nemo nihil vitae voluptatem', '2023-11-28 22:21:04', '27089514', 'resolved', '2024-01-02 21:03:14', NULL),
(127, 'Non-technical', 'Facilities', 'HR', 'Meredith Cole', 'graphics.png', 'Gir99034', 'Qui nostrud reiciendis illo ab incidunt qui dignissimos incididunt fuga Enim molestiae dignissimos totam mollit', '2023-11-28 22:21:52', '80823033', 'resolved', '2023-11-28 22:33:34', NULL),
(128, 'Other', 'Hardware', 'Administration', 'Dalton Clark', '', 'Abc78529', 'Dolor minus asperiores asperiores ab illo', '2023-11-29 18:59:18', '84037134', 'discharge', NULL, '2024-01-02 21:03:16'),
(129, 'Technical', 'Facilities', 'HR', 'Lance Emerson', 'd.jpg', 'Web72362', 'Voluptate reprehenderit amet sit rerum excepturi sed quisquam tempor sed sint aut sed temporibus illum ullam lorem et consectetur', '2024-01-02 20:53:36', '27390042', 'discharge', NULL, '2024-01-05 07:07:03'),
(130, 'Technical', 'Facilities', 'Administration', 'AC not working', 'air-conditioner-not-cooling.jpeg', 'One60499', 'In our class, the air conditioning unit is currently out of order, and unfortunately, it neither generates warmth nor provides a cooling effect.', '2024-01-02 21:20:34', '33750157', 'resolved', '2024-01-05 07:09:11', NULL),
(131, 'Non-teaching', 'Curriculum', 'IT', 'Hiroko Mercer', 'complaint.jpg', 'One60499', 'Doloremque cupiditate repudiandae id magni', '2024-01-02 21:45:20', '18406962', 'resolved', '2024-01-05 07:07:08', NULL),
(132, 'Non-technical', 'Facilities', 'Administration', 'Ayanna Ayala', '', 'Web72362', 'Aut autem adipisci ducimus distinctio Qui est dolores doloribus iste optio et', '2024-01-02 21:56:39', '06945939', 'resolved', '2024-01-05 18:05:36', NULL),
(133, 'Technical', 'Network', 'IT', 'Wifi not Working', 'WiFi-Not-Working.jpg', 'Web72362', 'Internet is not working. Solve this problem.', '2024-01-03 06:51:47', '77768695', 'resolved', '2024-01-03 09:26:52', NULL),
(134, 'Teaching', 'Curriculum', 'HR', 'Won a Competition', 'Screenshot_20230110_041417.png', 'Web72362', 'Won the competition but not got certificate. Please provide the certificate.', '2024-01-03 08:18:25', '47521166', 'resolved', '2024-01-05 07:13:29', NULL),
(135, 'Non-teaching', 'Other', 'Academics', 'Zorita Moody', 'wrong.gif', 'Raj54304', 'Inventore autem non quod labore dolorum et quo dolorem aliqua Ea nulla', '2024-01-03 08:32:58', '50642825', 'discharge', NULL, '2024-01-05 07:13:35'),
(137, 'Technical', 'Other', 'HR', 'Erich Good', 'complaint.jpg', 'Web72362', 'Labore voluptatum accusamus ullamco ad autem consequatur minima est laboris consequatur', '2024-01-03 09:26:04', '08413951', 'resolved', '2024-01-05 07:12:20', NULL),
(138, 'Technical', 'Curriculum', 'IT', 'Project Defense Test', 'comment box (final).jpg', 'asm83922', 'it is our defense.', '2024-01-05 07:02:51', '51236654', 'resolved', '2024-01-05 07:12:24', NULL),
(139, 'Teaching', 'Facilities', 'Finance', 'Rigel Calhoun', '', 'Web72362', 'Et ut possimus cupiditate consequuntur error rem', '2024-01-05 07:11:49', '78549711', 'discharge', NULL, '2024-01-05 18:05:00'),
(140, 'Teaching', 'Facilities', 'Administration', 'Pratice', 'f.jpg', 'Byt25257', 'The class is going well but Ac is not working and class is cold as well as wifi is not working.', '2024-01-05 17:58:29', '38894742', 'resolved', '2024-01-05 18:05:10', NULL),
(141, 'Technical', 'Hardware', 'HR', 'Teagan Barry', 'nature-3082832_640.jpg', 'Web72362', 'This is just a photo.', '2024-01-05 18:04:05', '78761542', 'resolved', '2024-01-05 18:05:02', NULL),
(142, 'Technical', 'Hardware', 'IT', 'No wifi port', '2nd_front.webp', 'Web72362', 'There is not any WiFi port int he computer so please solve this problem as soon as possible. The LAN port is there but it is not possible to bring the LAN cable for all the computer so this problem should be solved as soon as possible. ', '2024-01-05 18:11:06', '61998229', 'resolved', '2024-05-22 20:35:59', NULL),
(143, 'Technical', 'Software', 'IT', 'Eaton Berg', '', 'One60499', 'Sapiente mollitia eius sunt voluptate quia eu', '2024-01-05 18:28:31', '76926383', 'discharge', NULL, '2024-01-05 18:30:56'),
(145, 'Non-teaching', 'Administration', 'Other', 'Not ', 'swsc.webp', 'Web72362', 'College is not same as the photo shown in the picture.', '2024-01-05 18:48:30', '77175221', 'pending', NULL, NULL),
(146, 'Other', 'Network', 'Administration', 'Charles Galloway', 'Untitled.jpg', 'Web72362', 'Defense', '2024-01-06 07:40:13', '44493006', 'pending', NULL, NULL),
(147, 'Non-technical', 'Network', 'HR', 'Marshall Rodgers', 'Screen-Shot-2022-06-15-at-09.23.14-1-700x450.png', 'asm83922', 'Our College Infrastructure is good but there is little problem inside the class where there is no ac .', '2024-01-06 08:04:29', '73960268', 'in_progress', NULL, NULL),
(148, 'Teaching', 'Curriculum', 'IT', 'bad teaching practic', 'associations.png', 'One60499', 'j dsafjhaslk faskj fakjnfald kfdlkajnfd', '2024-01-06 11:14:07', '70333467', 'in_progress', NULL, NULL),
(150, 'Non-teaching', 'Other', 'Administration', 'Maggie Fuentes', '', 'Web72362', 'Provident inventore voluptate a vel vel blanditiis quaerat sint vel officia aliquam non temporibus voluptatem dolor illo quod facilis accusantium', '2024-05-22 20:30:37', '66374859', 'in_progress', NULL, NULL);

--
-- Triggers `complain`
--
DELIMITER $$
CREATE TRIGGER `Update_Complain_User_On_Complain_Update` AFTER UPDATE ON `complain` FOR EACH ROW BEGIN
    IF NEW.complain_user != OLD.complain_user THEN
        UPDATE complain_details
        SET user_id = (SELECT id FROM register WHERE fake_user = NEW.complain_user)
        WHERE complaint_id = NEW.id;
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `complain_after_delete` AFTER DELETE ON `complain` FOR EACH ROW BEGIN
    DELETE FROM complain_details WHERE complaint_id = OLD.id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `complain_after_insert` AFTER INSERT ON `complain` FOR EACH ROW BEGIN
    INSERT INTO complain_details (
        user_id, name, email, phone, dob, role, registration_datetime,
        last_login_time, profile_image,
        complaint_id, category, type, department, nature, image,
        complain_description, complaint_datetime, status, complain_user
    )
    SELECT
        r.id, r.name, r.email, r.phone, r.dob, r.role, r.registration_datetime,
        r.last_login_time, r.profile_image,
        NEW.id, NEW.category, NEW.type, NEW.department, NEW.nature, NEW.image,
        NEW.complain_description, NEW.complaint_datetime, NEW.status, NEW.complain_user
    FROM
        register r
    WHERE
        r.fake_user = NEW.complain_user;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `complain_after_update` AFTER UPDATE ON `complain` FOR EACH ROW BEGIN
    UPDATE complain_details
    SET 
        complain_user = NEW.complain_user,
        category = NEW.category,
        type = NEW.type,
        department = NEW.department,
        nature = NEW.nature,
        image = NEW.image,
        complain_description = NEW.complain_description,
        complaint_datetime = NEW.complaint_datetime,
        status = NEW.status
    WHERE
        complaint_id = NEW.id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `complain_after_update_v2` AFTER UPDATE ON `complain` FOR EACH ROW BEGIN
    UPDATE complain_details
    SET 
        complain_user = NEW.complain_user,
        category = NEW.category,
        type = NEW.type,
        department = NEW.department,
        nature = NEW.nature,
        image = NEW.image,
        complain_description = NEW.complain_description,
        complaint_datetime = NEW.complaint_datetime,
        status = NEW.status
    WHERE
        complaint_id = NEW.id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `generate_complaint_ticket` BEFORE INSERT ON `complain` FOR EACH ROW BEGIN
    -- Generate a random 8-digit number (complaint ticket)
    SET @complaint_ticket = LPAD(FLOOR(RAND() * 99999999), 8, '0');
    -- Set the generated complaint ticket number for the new row being inserted
    SET NEW.`complaint_ticket` = @complaint_ticket;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_discharge_datetime` BEFORE UPDATE ON `complain` FOR EACH ROW BEGIN
    IF NEW.status = 'discharge' AND OLD.status != 'discharge' THEN
        SET NEW.discharge_datetime = NOW();
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_resolved_datetime` BEFORE UPDATE ON `complain` FOR EACH ROW BEGIN
    IF NEW.status = 'resolved' AND OLD.status != 'resolved' THEN
        SET NEW.resolved_datetime = NOW();
    END IF;
END
$$
DELIMITER ;

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

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `fid` int(11) NOT NULL,
  `userid` varchar(8) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fid`, `userid`, `description`) VALUES
(29, 'Adh80092', 'There are lots of error that should be improved becaus1e the search and export option is not working properly due to which we are having lot of problem.'),
(30, 'Web72362', 'There are lots of problem while responding the device. it is very slow and won\'t work properly. I am very sad😒😒😒. SO please solve this problem as fast as possible so that it would look good and feel awesome while using the system. '),
(31, 'Web72362', 'The webpage is not working properly.'),
(32, 'Web72362', 'Please Improve the Animations and loading time faster. And also provide more features. '),
(33, 'Web72362', 'The website is just looking like a wow. Just looking like a wow.❤️😂'),
(34, 'Adh80092', 'gddgfdgdg'),
(35, 'Adh80092', 'This is testing 1,2,3');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `registration_datetime` datetime DEFAULT current_timestamp(),
  `last_login_time` datetime DEFAULT NULL,
  `fake_user` varchar(8) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `email`, `phone`, `dob`, `password`, `role`, `registration_datetime`, `last_login_time`, `fake_user`, `profile_image`) VALUES
(1, 'Safal Adhikari', 'sandesh1@gmail.com', '9812121253', '2007-02-09', 'Sandesh1@', 'Super Admin', '2023-07-26 19:57:54', '2024-08-04 18:01:21', 'Adh80092', '354734-4k-wallpaper-abstract-2880x1800-tablet.jpg'),
(2, 'Vaughan Web', 'student@gmail.com', '9826262655', '2005-01-22', 'Sandesh1@', 'student', '2023-07-26 20:04:12', '2024-09-16 08:32:15', 'Web72362', '76-763610_depression-png-transparent-image-depression-png-clipart.png'),
(4, 'Neville Santos', 'student1@gmail.com', '9800000000', '2006-01-11', 'Sam12345#', 'student', '2023-07-26 23:40:50', '2023-08-04 22:15:08', 'San98539', 'Screenshot_20221224_083145.png'),
(7, 'Anita Giri', 'student2@gmail.com', '9856565659', '1976-12-24', 'Sandesh1@', 'student', '2023-07-31 22:37:50', '2023-11-28 22:19:42', 'Gir99034', 'book.jpg'),
(11, 'Aurora Cabrera', 'admin@gmail.com', '9525252525', '2001-12-01', 'Sandesh1@', 'admin', '2023-09-27 11:02:05', '2024-05-22 20:35:35', 'Cab03983', 'Screenshot_20230105_060837.png'),
(15, 'Admin Adhikari', 'admin1@gmail.com', '9825199995', '2002-01-02', 'Sandesh1@', 'admin', '2023-09-29 22:15:59', '2024-08-04 18:00:13', 'Adh49268', '76-763610_depression-png-transparent-image-depression-png-clipart.png'),
(16, 'Sandesh Giri', 'sandeshgiri@gmail.com', '9825252529', '2002-01-02', 'Sandesh1@', 'student', '2023-10-01 00:51:25', '2023-10-01 01:05:50', 'Gir04686', 'Screenshot_20230105_060837.png'),
(19, 'Teacher One', 'teacher@gmail.com', '9825623232', '2000-02-20', 'Sandesh1@', 'teacher', '2024-01-02 21:16:36', '2024-01-06 11:09:46', 'One60499', 'Screen-Shot-2022-06-15-at-09.23.14-1-700x450.png'),
(20, 'Chiran Raj Thapa', 'chiran@gmail.com', '9823266266', '2002-02-20', 'Sandesh1@', 'student', '2024-01-03 08:24:00', '2024-01-03 08:35:39', 'Raj54304', 'rog_font.webp');

--
-- Triggers `register`
--
DELIMITER $$
CREATE TRIGGER `GenerateUserID` BEFORE INSERT ON `register` FOR EACH ROW BEGIN
    DECLARE prefix VARCHAR(3);
    SET prefix = SUBSTRING_INDEX(SUBSTRING_INDEX(NEW.name, ' ', 2), ' ', -1);
    SET NEW.fake_user = CONCAT(prefix, LPAD(FLOOR(RAND() * 100000), 5, '0'));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `Insert_Complaint_Details_On_Register_Insert` AFTER INSERT ON `register` FOR EACH ROW BEGIN
    DECLARE complain_count INT;
    SET complain_count = (SELECT COUNT(*) FROM complain WHERE complain_user = NEW.fake_user);
    
    IF complain_count > 0 THEN
        INSERT INTO complain_details (
            user_id, name, email, phone, dob, role, registration_datetime,
            last_login_time, fake_user, profile_image,
            complaint_id, category, type, department, nature, image,
            complain_description, complaint_datetime, status
        )
        SELECT 
            NEW.id, NEW.name, NEW.email, NEW.phone, NEW.dob, NEW.role, NEW.registration_datetime,
            NEW.last_login_time, NEW.fake_user, NEW.profile_image,
            c.id, c.category, c.type, c.department, c.nature, c.image,
            c.complain_description, c.complaint_datetime, c.status
        FROM
            complain c
        WHERE
            c.complain_user = NEW.fake_user;
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `Update_Complaint_Details_On_Register_Update` AFTER UPDATE ON `register` FOR EACH ROW BEGIN
    UPDATE complain_details
    SET
        name = NEW.name,
        email = NEW.email,
        phone = NEW.phone,
        dob = NEW.dob,
        role = NEW.role,
        registration_datetime = NEW.registration_datetime,
        last_login_time = NEW.last_login_time,
        profile_image = NEW.profile_image
    WHERE
        user_id = NEW.id;
    
    IF NEW.fake_user != OLD.fake_user THEN
        UPDATE complain_details
        SET
            complain_user = NEW.fake_user
        WHERE
            complain_user = OLD.fake_user;
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `register_after_insert` AFTER INSERT ON `register` FOR EACH ROW BEGIN
    DECLARE complain_count INT;
    SET complain_count = (SELECT COUNT(*) FROM complain WHERE complain_user = NEW.fake_user);
    
    IF complain_count > 0 THEN
        INSERT INTO complain_details (
            user_id, name, email, phone, dob, role, registration_datetime,
            last_login_time, fake_user, profile_image,
            complaint_id, category, type, department, nature, image,
            complain_description, complaint_datetime, status
        )
        SELECT 
            NEW.id, NEW.name, NEW.email, NEW.phone, NEW.dob, NEW.role, NEW.registration_datetime,
            NEW.last_login_time, NEW.fake_user, NEW.profile_image,
            c.id, c.category, c.type, c.department, c.nature, c.image,
            c.complain_description, c.complaint_datetime, c.status
        FROM
            complain c
        WHERE
            c.complain_user = NEW.fake_user;
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `register_after_update` AFTER UPDATE ON `register` FOR EACH ROW BEGIN
    UPDATE complain_details
    SET
        name = NEW.name,
        email = NEW.email,
        phone = NEW.phone,
        dob = NEW.dob,
        role = NEW.role,
        registration_datetime = NEW.registration_datetime,
        last_login_time = NEW.last_login_time,
        profile_image = NEW.profile_image
    WHERE
        user_id = NEW.id;
    
    IF NEW.fake_user != OLD.fake_user THEN
        UPDATE complain_details
        SET
            complain_user = NEW.fake_user
        WHERE
            complain_user = OLD.fake_user;
    END IF;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complain`
--
ALTER TABLE `complain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint_assignment`
--
ALTER TABLE `complaint_assignment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complain_id` (`complain_id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `fk_admin_id` (`admin_id`);

--
-- Indexes for table `complain_details`
--
ALTER TABLE `complain_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `complaint_id` (`complaint_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fake_user` (`fake_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complain`
--
ALTER TABLE `complain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `complaint_assignment`
--
ALTER TABLE `complaint_assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `complain_details`
--
ALTER TABLE `complain_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

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
