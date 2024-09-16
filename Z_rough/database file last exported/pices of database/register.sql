-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2024 at 05:03 AM
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
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fake_user` (`fake_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
