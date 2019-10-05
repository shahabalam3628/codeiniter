-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2018 at 04:53 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codeigniter`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getallcustomers` ()  BEGIN
select * from customers;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_multiple_customers` (IN `cus_id` INT)  BEGIN 
select * from customers where id<=cus_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_specific_customers` (IN `cus_id` INT)  BEGIN 
select * from customers where id=cus_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_data` (IN `name` VARCHAR(30), IN `email` VARCHAR(50), IN `mobile` VARCHAR(10), IN `address` TEXT)  BEGIN
insert into customers (name,email,mobile,address) values (name,email,mobile,address);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `all_users`
--

CREATE TABLE `all_users` (
  `id` int(11) NOT NULL,
  `name` varchar(88) NOT NULL,
  `email` varchar(88) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `gender` varchar(99) NOT NULL,
  `hobbies` varchar(100) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `all_users`
--

INSERT INTO `all_users` (`id`, `name`, `email`, `mobile`, `gender`, `hobbies`, `created_date`) VALUES
(1, 'Shahab', 'shahabalam78@gmail.com', '7859848645', 'female', 'reading,playing,singing', '2018-07-17 16:57:19'),
(2, 'Anna', 'anna@gmail.com', '9122872579', 'male', 'reading,playing', '2018-07-17 16:46:26'),
(3, 'md shahab alam', 'shahabalam78@gmail.com', '7859848645', 'male', 'reading,playing', '2018-07-19 15:03:44'),
(4, 'md shahab alam', 'shahabalam78@gmail.com', '7859848645', 'male', 'reading,playing', '2018-07-19 15:04:08'),
(5, 'md shahab alam', 'shahabalam78@gmail.com', '7859848645', 'male', 'reading,playing', '2018-07-19 15:04:30'),
(6, 'md shahab alam', 'shahabalam78@gmail.com', '7859848645', 'male', 'reading,playing', '2018-07-19 15:05:43');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(88) NOT NULL,
  `email` varchar(88) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `mobile`, `address`, `updated_at`, `created_at`) VALUES
(1, 'Md Shahab', 'shahabalam78@gmail.com', '7859848645', 'ddd', '2018-08-01 13:44:32', '2018-08-01 13:44:32'),
(2, 'Anna', 'anna@gmail.com', '8888888888', 'cccc', '2018-08-01 13:48:24', '2018-08-01 13:48:24'),
(3, 'Md Shahab', 'anna@gmail.com', '7859848645', 'aa', '2018-08-01 13:55:59', '2018-08-01 13:55:59'),
(4, 'Anna', 'anna@gmail.com', '7859848645', 'asa', '2018-08-01 17:28:34', '2018-08-01 17:28:34'),
(5, 'Khan', 'aman@gmail.com', '7859848645', 'sas', '2018-08-01 17:34:03', '2018-08-01 17:34:03'),
(6, 'Md Shahab', 'anna@gmail.com', '7859848645', 'aaa', '2018-08-01 17:36:25', '2018-08-01 17:36:25'),
(7, 'Anna', 'shahabalam78@gmail.com', '7859848645', 'aaa', '2018-08-01 17:37:03', '2018-08-01 17:37:03'),
(8, 'arshad', 'arshad@gmail.com', '7859848645', 'ssss', '2018-08-01 17:46:49', '2018-08-01 17:46:49'),
(9, 'Name', 'anna@gmail.com', '8999999999', 'dddd', '2018-08-15 16:20:37', '0000-00-00 00:00:00'),
(10, 'DD', 'DD@gmail.com', '1234567', 'sssss', '2018-08-15 16:28:24', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `customersold`
--

CREATE TABLE `customersold` (
  `id` int(11) NOT NULL,
  `name` varchar(88) NOT NULL,
  `email` varchar(88) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `state` varchar(200) NOT NULL,
  `gender` varchar(99) NOT NULL,
  `hobbies` varchar(100) NOT NULL,
  `user_image` varchar(200) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customersold`
--

INSERT INTO `customersold` (`id`, `name`, `email`, `mobile`, `state`, `gender`, `hobbies`, `user_image`, `created_date`) VALUES
(1, 'shahab', 'shahab@gmail.com', '7870364530', 'bihar', 'male', 'play', NULL, '2018-07-23 04:56:45'),
(2, 'aman', 'aman@gmail.com', '1234567890', 'delhi', 'male', 'singing', NULL, '2018-07-23 04:57:29'),
(3, 'shahab', 'shahab@gmail.com', '7870364530', 'bihar', 'male', 'play', NULL, '2018-07-23 04:56:45'),
(4, 'aman', 'aman@gmail.com', '1234567890', 'delhi', 'male', 'singing', NULL, '2018-07-23 04:57:29'),
(5, 'khan', 'khan@gmail.com', '8888888888', 'gaya', 'male', 'reading', NULL, '2018-07-23 04:59:00');

-- --------------------------------------------------------

--
-- Table structure for table `dep`
--

CREATE TABLE `dep` (
  `Did` int(11) NOT NULL,
  `Depname` varchar(88) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dep`
--

INSERT INTO `dep` (`Did`, `Depname`) VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `Empid` int(11) NOT NULL,
  `Name` varchar(88) NOT NULL,
  `City` varchar(88) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`Empid`, `Name`, `City`) VALUES
(1, 'Rahul', 'Delhi'),
(2, 'Krish', 'Kol'),
(3, 'Jay', 'Mum');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(88) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(88) NOT NULL,
  `address` text NOT NULL,
  `department` varchar(100) NOT NULL,
  `designation` varchar(111) NOT NULL,
  `salary` varchar(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `mobile`, `email`, `address`, `department`, `designation`, `salary`, `created_date`) VALUES
(1, 'Md Shahab Alam', '7870364530', 'shahabalam78@gmail.com', 'Shaheen Bagh Jamia Nanagar Okhla Delhi', 'IT', 'Developer', '20000', '2018-06-17 15:27:13'),
(2, 'Md Shajid', '1234567890', 'shajid@gmail.com', 'Shaheen Bagh Jamia Nanagar Okhla Delhi', 'IT', 'Devloper', '40000', '2018-07-17 15:27:13'),
(3, 'Md Shahjaza', '444473377', 'shahjada@gmail.com', 'shadipur Delhi', 'IT', 'Desighner', '10000', '2018-06-17 15:28:25'),
(4, 'Shive Kumar', '663636336', 'shive@gmail.com', 'Delhi', 'IT', 'Database', '20000', '2018-07-17 15:29:42'),
(5, 'Md Shahab Alam', '7859848645', 'shahabalam781@gmail.com', 'Shaheen Bagh Jamia Nanagar Okhla Delhi', 'IT', 'Developer', '20000', '2018-07-17 15:27:13'),
(6, 'Md Shahab', '7870364530', 'shahabalam782@gmail.com', 'Shaheen Bagh Jamia Nanagar Okhla Delhi', 'IT', 'Developer', '22000', '2018-07-17 15:35:22');

-- --------------------------------------------------------

--
-- Table structure for table `facebook_users`
--

CREATE TABLE `facebook_users` (
  `id` int(11) NOT NULL,
  `email` varchar(88) NOT NULL,
  `password` varchar(88) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facebook_users`
--

INSERT INTO `facebook_users` (`id`, `email`, `password`, `created_date`) VALUES
(1, 'admin@mahattaart.com', 'admin@123', '2018-07-30 19:28:41'),
(2, 'admin@mahattaart.com', 'admin@123', '2018-07-30 19:29:14'),
(3, 'admin@mahattaart.com', 'admin@123', '2018-07-30 19:30:01'),
(4, 'admin@mahattaart.com', 'admin@123', '2018-07-30 19:30:22'),
(5, 'admin@mahattaart.com', 'admin@123', '2018-07-30 19:30:23'),
(6, 'admin@mahattaart.com', 'admin@123', '2018-07-30 19:30:24'),
(7, 'admin@mahattaart.com', 'admin@123', '2018-07-30 19:30:59'),
(8, 'K1@GMAIL.COM', '555', '2018-07-30 19:31:17'),
(9, 'admin@mahattaart.com', 'admin@123', '2018-07-30 20:46:39'),
(10, 'anna@gmail.com', '77777', '2018-08-09 13:38:30'),
(11, 'anna@gmail.com', 'dd', '2018-08-09 13:41:13'),
(12, 'anna@gmail.com', 'dd', '2018-08-09 13:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(88) NOT NULL,
  `password` varchar(88) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`, `created_date`) VALUES
(1, 'shahabalam78@gmail.com', '1234567890', '2018-07-30 14:24:02'),
(2, 'anna@gmail.com', 'anna', '2018-07-30 14:24:02');

-- --------------------------------------------------------

--
-- Table structure for table `manager_report`
--

CREATE TABLE `manager_report` (
  `id` int(11) NOT NULL,
  `manager_name` varchar(88) NOT NULL,
  `report_to` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager_report`
--

INSERT INTO `manager_report` (`id`, `manager_name`, `report_to`) VALUES
(1, 'shahab', NULL),
(2, 'aman', '1'),
(3, 'gufran', '2'),
(4, 'anna', '3'),
(5, 'ashif', '1'),
(6, 'menu', '2');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(88) NOT NULL,
  `body` varchar(88) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `updated_at`, `created_at`) VALUES
(1, 'amamsss', 'a', '2018-08-01 12:52:38', '2018-08-01 12:52:38'),
(2, 'Test', 'Body', '2018-08-01 12:53:11', '2018-08-01 12:53:11'),
(3, 'Anna', 'Bosy', '2018-08-01 12:54:56', '2018-08-01 12:54:56'),
(4, 'Anna', 'dd', '2018-08-01 20:34:49', '2018-08-01 20:34:49'),
(5, 'Anna', 'dd', '2018-08-01 20:42:31', '2018-08-01 20:42:31');

-- --------------------------------------------------------

--
-- Table structure for table `self_join_demo2`
--

CREATE TABLE `self_join_demo2` (
  `id` int(11) NOT NULL,
  `name` varchar(88) NOT NULL,
  `city` varchar(88) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `self_join_demo2`
--

INSERT INTO `self_join_demo2` (`id`, `name`, `city`) VALUES
(1, 'shahab', 'Bihar'),
(2, 'Aman', 'Delhi'),
(3, 'Ashif', 'Gaya'),
(4, 'Khalid', 'Bihar'),
(5, 'Anna', 'Delhi'),
(6, 'Gufran', 'Bihar');

-- --------------------------------------------------------

--
-- Table structure for table `upload_file_demo`
--

CREATE TABLE `upload_file_demo` (
  `id` int(11) NOT NULL,
  `name` varchar(88) NOT NULL,
  `email` varchar(88) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `gender` varchar(99) NOT NULL,
  `hobbies` varchar(100) NOT NULL,
  `user_image` varchar(200) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload_file_demo`
--

INSERT INTO `upload_file_demo` (`id`, `name`, `email`, `mobile`, `gender`, `hobbies`, `user_image`, `created_date`) VALUES
(1, 'Md Shahab', 'anna@gmail.com', '8888888888', 'male', 'playing', 'virtual_host.txt', '2018-07-19 17:58:42'),
(2, 'Md Shahab', 'anna@gmail.com', '7859848645', 'male', 'reading', 'User_Password.xlsx', '2018-07-19 17:59:39'),
(3, 'Aman', 'aman@gmail.com', '7859848645', 'female', 'reading,playing', 'pagination.txt', '2018-07-19 18:02:34'),
(4, 'md shahab alam', 'shahabalam78@gmail.com', '7859848645', 'male', 'reading,playing', 'pagination1.txt', '2018-07-19 18:08:29'),
(5, 'Md Shahab', 'anna@gmail.com', '7859848645', 'male', 'playing', 'Notes.txt', '2018-07-19 18:09:30'),
(6, 'Md Shahab', 'anna@gmail.com', '7859848645', 'male', 'reading', 'free_templates_url.txt', '2018-07-19 18:10:15'),
(7, 'md shahab alam', 'anna@gmail.com', '7859848645', 'male', 'playing', 'Notes2.txt', '2018-07-19 18:12:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(88) NOT NULL,
  `email` varchar(88) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`) VALUES
(1, 'shahab', 'shahabalam78@gmail.com'),
(2, 'Aman', 'aman@gmail.com'),
(3, 'Ashif', 'ashif@gmail.com'),
(4, 'Anna', 'anna@gmail.com'),
(5, 'Gufran', 'gufran@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users2`
--

CREATE TABLE `users2` (
  `id` int(11) NOT NULL,
  `mobile` varchar(88) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users2`
--

INSERT INTO `users2` (`id`, `mobile`, `date`) VALUES
(1, '7859848645', '2018-07-24 20:57:24'),
(2, '9403303030', '2018-07-24 20:57:32'),
(3, '99933939339', '2018-07-24 20:57:41'),
(4, '77474747447', '2018-07-24 20:57:52'),
(5, '884844848', '2018-07-24 20:58:01');

-- --------------------------------------------------------

--
-- Table structure for table `users_logedin`
--

CREATE TABLE `users_logedin` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `login_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_logedin`
--

INSERT INTO `users_logedin` (`id`, `user_id`, `login_date`) VALUES
(1, 1, '2018-07-16 08:42:18'),
(2, 2, '2018-07-16 08:42:18'),
(3, 2, '2018-07-16 08:42:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_users`
--
ALTER TABLE `all_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `find_email` (`email`) USING BTREE,
  ADD KEY `id_index` (`id`),
  ADD KEY `email_index` (`email`) USING BTREE;

--
-- Indexes for table `customersold`
--
ALTER TABLE `customersold`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dep`
--
ALTER TABLE `dep`
  ADD PRIMARY KEY (`Did`);

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`Empid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facebook_users`
--
ALTER TABLE `facebook_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manager_report`
--
ALTER TABLE `manager_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `self_join_demo2`
--
ALTER TABLE `self_join_demo2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_file_demo`
--
ALTER TABLE `upload_file_demo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users2`
--
ALTER TABLE `users2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_logedin`
--
ALTER TABLE `users_logedin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_users`
--
ALTER TABLE `all_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customersold`
--
ALTER TABLE `customersold`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `emp`
--
ALTER TABLE `emp`
  MODIFY `Empid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `facebook_users`
--
ALTER TABLE `facebook_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `manager_report`
--
ALTER TABLE `manager_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `self_join_demo2`
--
ALTER TABLE `self_join_demo2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `upload_file_demo`
--
ALTER TABLE `upload_file_demo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users2`
--
ALTER TABLE `users2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users_logedin`
--
ALTER TABLE `users_logedin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
