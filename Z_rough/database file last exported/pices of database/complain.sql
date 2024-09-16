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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complain`
--
ALTER TABLE `complain`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complain`
--
ALTER TABLE `complain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
