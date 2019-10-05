/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.5-10.1.34-MariaDB : Database - codeigniter
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`codeigniter` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `codeigniter`;

/*Table structure for table `all_users` */

DROP TABLE IF EXISTS `all_users`;

CREATE TABLE `all_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(88) NOT NULL,
  `email` varchar(88) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `gender` varchar(99) NOT NULL,
  `hobbies` varchar(100) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `all_users` */

insert  into `all_users`(`id`,`name`,`email`,`mobile`,`gender`,`hobbies`,`created_date`) values (1,'Shahab','shahabalam78@gmail.com','7859848645','female','reading,playing,singing','2019-05-27 11:53:10'),(2,'Anna','anna@gmail.com','9122872579','male','reading,playing','2018-07-17 09:46:26'),(3,'md shahab alam','shahabalam78@gmail.com','7859848645','male','reading,playing','2018-07-19 08:03:44'),(4,'md shahab alam','shahabalam78@gmail.com','7859848645','male','reading,playing','2018-07-19 08:04:08'),(5,'md shahab alam','shahabalam78@gmail.com','7859848645','male','reading,playing,singing','2019-09-03 21:35:22'),(6,'md shahab alam','shahabalam78@gmail.com','7859848645','female','reading,playing,singing','2019-09-03 17:28:11'),(7,'Md Aadil','aadil@gmail.com','7859848645','male','reading,playing','2019-09-20 08:11:17');

/*Table structure for table `customers` */

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(88) NOT NULL,
  `email` varchar(88) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `find_email` (`email`) USING BTREE,
  KEY `id_index` (`id`),
  KEY `email_index` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `customers` */

insert  into `customers`(`id`,`name`,`email`,`mobile`,`address`,`updated_at`,`created_at`) values (1,'Md Shahab','shahabalam78@gmail.com','7859848645','ddd','2018-08-01 06:44:32','2018-08-01 06:44:32'),(2,'Anna','anna@gmail.com','8888888888','cccc','2018-08-01 06:48:24','2018-08-01 06:48:24'),(3,'Md Shahab','anna@gmail.com','7859848645','aa','2018-08-01 06:55:59','2018-08-01 06:55:59'),(4,'Anna','anna@gmail.com','7859848645','asa','2018-08-01 10:28:34','2018-08-01 10:28:34'),(5,'Khan','aman@gmail.com','7859848645','sas','2018-08-01 10:34:03','2018-08-01 10:34:03'),(6,'Md Shahab','anna@gmail.com','7859848645','aaa','2018-08-01 10:36:25','2018-08-01 10:36:25'),(7,'Anna','shahabalam78@gmail.com','7859848645','aaa','2018-08-01 10:37:03','2018-08-01 10:37:03'),(8,'arshad','arshad@gmail.com','7859848645','ssss','2018-08-01 10:46:49','2018-08-01 10:46:49'),(9,'Name','anna@gmail.com','8999999999','dddd','2018-08-15 09:20:37','0000-00-00 00:00:00'),(10,'DD','DD@gmail.com','1234567','sssss','2018-08-15 09:28:24','0000-00-00 00:00:00');

/*Table structure for table `customersold` */

DROP TABLE IF EXISTS `customersold`;

CREATE TABLE `customersold` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(88) NOT NULL,
  `email` varchar(88) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `state` varchar(200) NOT NULL,
  `gender` varchar(99) NOT NULL,
  `hobbies` varchar(100) NOT NULL,
  `user_image` varchar(200) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `customersold` */

insert  into `customersold`(`id`,`name`,`email`,`mobile`,`state`,`gender`,`hobbies`,`user_image`,`created_date`) values (1,'shahab','shahab@gmail.com','7870364530','bihar','male','play',NULL,'2018-07-22 21:56:45'),(2,'aman','aman@gmail.com','1234567890','delhi','male','singing',NULL,'2018-07-22 21:57:29'),(3,'shahab','shahab@gmail.com','7870364530','bihar','male','play',NULL,'2018-07-22 21:56:45'),(4,'aman','aman@gmail.com','1234567890','delhi','male','singing',NULL,'2018-07-22 21:57:29'),(5,'khan','khan@gmail.com','8888888888','gaya','male','reading',NULL,'2018-07-22 21:59:00');

/*Table structure for table `dep` */

DROP TABLE IF EXISTS `dep`;

CREATE TABLE `dep` (
  `Did` int(11) NOT NULL,
  `Depname` varchar(88) NOT NULL,
  PRIMARY KEY (`Did`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dep` */

insert  into `dep`(`Did`,`Depname`) values (101,'IT'),(102,'HR'),(103,'Admin');

/*Table structure for table `emp` */

DROP TABLE IF EXISTS `emp`;

CREATE TABLE `emp` (
  `Empid` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(88) NOT NULL,
  `City` varchar(88) NOT NULL,
  PRIMARY KEY (`Empid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `emp` */

insert  into `emp`(`Empid`,`Name`,`City`) values (1,'Rahul','Delhi'),(2,'Krish','Kol'),(3,'Jay','Mum');

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(88) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(88) NOT NULL,
  `address` text NOT NULL,
  `department` varchar(100) NOT NULL,
  `designation` varchar(111) NOT NULL,
  `salary` varchar(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `employee` */

insert  into `employee`(`id`,`name`,`mobile`,`email`,`address`,`department`,`designation`,`salary`,`created_date`) values (1,'Md Shahab Alam','7870364530','shahabalam78@gmail.com','Shaheen Bagh Jamia Nanagar Okhla Delhi','IT','Developer','20000','2018-06-17 08:27:13'),(2,'Md Shajid','1234567890','shajid@gmail.com','Shaheen Bagh Jamia Nanagar Okhla Delhi','IT','Devloper','40000','2018-07-17 08:27:13'),(3,'Md Shahjaza','444473377','shahjada@gmail.com','shadipur Delhi','IT','Desighner','10000','2018-06-17 08:28:25'),(4,'Shive Kumar','663636336','shive@gmail.com','Delhi','IT','Database','20000','2018-07-17 08:29:42'),(5,'Md Shahab Alam','7859848645','shahabalam781@gmail.com','Shaheen Bagh Jamia Nanagar Okhla Delhi','IT','Developer','20000','2018-07-17 08:27:13'),(6,'Md Shahab','7870364530','shahabalam782@gmail.com','Shaheen Bagh Jamia Nanagar Okhla Delhi','IT','Developer','22000','2018-07-17 08:35:22');

/*Table structure for table `facebook_users` */

DROP TABLE IF EXISTS `facebook_users`;

CREATE TABLE `facebook_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(88) NOT NULL,
  `password` varchar(88) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `facebook_users` */

insert  into `facebook_users`(`id`,`email`,`password`,`created_date`) values (1,'admin@mahattaart.com','admin@123','2018-07-30 12:28:41'),(2,'admin@mahattaart.com','admin@123','2018-07-30 12:29:14'),(3,'admin@mahattaart.com','admin@123','2018-07-30 12:30:01'),(4,'admin@mahattaart.com','admin@123','2018-07-30 12:30:22'),(5,'admin@mahattaart.com','admin@123','2018-07-30 12:30:23'),(6,'admin@mahattaart.com','admin@123','2018-07-30 12:30:24'),(7,'admin@mahattaart.com','admin@123','2018-07-30 12:30:59'),(8,'K1@GMAIL.COM','555','2018-07-30 12:31:17'),(9,'admin@mahattaart.com','admin@123','2018-07-30 13:46:39'),(10,'anna@gmail.com','77777','2018-08-09 06:38:30'),(11,'anna@gmail.com','dd','2018-08-09 06:41:13'),(12,'anna@gmail.com','dd','2018-08-09 06:41:28');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(88) NOT NULL,
  `password` varchar(88) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`id`,`email`,`password`,`created_date`) values (1,'shahabalam78@gmail.com','1234567890','2018-07-30 07:24:02'),(2,'anna@gmail.com','anna','2018-07-30 07:24:02');

/*Table structure for table `manager_report` */

DROP TABLE IF EXISTS `manager_report`;

CREATE TABLE `manager_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manager_name` varchar(88) NOT NULL,
  `report_to` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `manager_report` */

insert  into `manager_report`(`id`,`manager_name`,`report_to`) values (1,'shahab',NULL),(2,'aman','1'),(3,'gufran','2'),(4,'anna','3'),(5,'ashif','1'),(6,'menu','2');

/*Table structure for table `posts` */

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(88) NOT NULL,
  `body` varchar(88) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `posts` */

insert  into `posts`(`id`,`title`,`body`,`updated_at`,`created_at`) values (1,'amamsss','a','2018-08-01 05:52:38','2018-08-01 05:52:38'),(2,'Test','Body','2018-08-01 05:53:11','2018-08-01 05:53:11'),(3,'Anna','Bosy','2018-08-01 05:54:56','2018-08-01 05:54:56'),(4,'Anna','dd','2018-08-01 13:34:49','2018-08-01 13:34:49'),(5,'Anna','dd','2018-08-01 13:42:31','2018-08-01 13:42:31');

/*Table structure for table `self_join_demo2` */

DROP TABLE IF EXISTS `self_join_demo2`;

CREATE TABLE `self_join_demo2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(88) NOT NULL,
  `city` varchar(88) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `self_join_demo2` */

insert  into `self_join_demo2`(`id`,`name`,`city`) values (1,'shahab','Bihar'),(2,'Aman','Delhi'),(3,'Ashif','Gaya'),(4,'Khalid','Bihar'),(5,'Anna','Delhi'),(6,'Gufran','Bihar');

/*Table structure for table `students` */

DROP TABLE IF EXISTS `students`;

CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `address` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `students` */

insert  into `students`(`id`,`sname`,`email`,`mobile`,`address`) values (1,'md shahab alam','shahabalam78@gamil.com','1234567890','ccccc'),(2,'Aman','aman@gmail.com','1234567890','sddddddddddddddddddddddddd'),(3,'gufran','gufran@gmail.com','1234567890','vvvvvvvvvvvvvvvvvvvvvvv'),(4,'anna','aman@gmail.com','1234567890','bbbbbbbbbbbbbbbbbbbbbbbbbbbbb'),(5,'KHAN','KHAN@GMAIL.COM','1234567890','KKKKKKKKKKKKKKKKKKKKK'),(6,'KHALID','KHAN@GMAIL.COM','1234567890','NNNNNNNNNNNNNNNNNNNN'),(7,'md shahab alam','shahabalam78@gamil.com','1234567890','dddddddddddddddd'),(8,'ms','ms@gmail.com','9988765554','mmm'),(9,'ms','ms@gmail.com','9988765554','ms'),(10,'ms','ms@gmail.com','9988765554','ms'),(11,'md shahab alam','shahabalam78@gamil.com','1234567890','mmm'),(12,'md shahab alam','shahabalam78@gamil.com','1234567890','mmm'),(13,'Aman','shahab@gamil.com','1234567890','mm'),(14,'md shahab alam','shahabalam78@gamil.com','1234567890','bbbbbbbbbbbbbbbbbbbbbbbbbb'),(15,'md shahab alam','shahabalam78@gamil.com','1234567890','bbbbbbbbbbbbbbbbbbbbbbbbbb'),(16,'md shahab alam','shahabalam78@gamil.com','1234567890','bbbbbbbbbbbbbbbbbbbbbbbbbb'),(17,'md shahab alam','shahabalam78@gamil.com','1234567890','bbbbbbbbbbbbbbbbbbbbbbbbbb'),(18,'ddddd','shahabalam78@gamil.com','1234567890','md');

/*Table structure for table `upload_file_demo` */

DROP TABLE IF EXISTS `upload_file_demo`;

CREATE TABLE `upload_file_demo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(88) NOT NULL,
  `email` varchar(88) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `gender` varchar(99) NOT NULL,
  `hobbies` varchar(100) NOT NULL,
  `user_image` varchar(200) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `upload_file_demo` */

insert  into `upload_file_demo`(`id`,`name`,`email`,`mobile`,`gender`,`hobbies`,`user_image`,`created_date`) values (1,'Md Shahab','anna@gmail.com','8888888888','male','playing','virtual_host.txt','2018-07-19 10:58:42'),(2,'Md Shahab','anna@gmail.com','7859848645','male','reading','User_Password.xlsx','2018-07-19 10:59:39'),(3,'Aman','aman@gmail.com','7859848645','female','reading,playing','pagination.txt','2018-07-19 11:02:34'),(4,'md shahab alam','shahabalam78@gmail.com','7859848645','male','reading,playing','pagination1.txt','2018-07-19 11:08:29'),(5,'Md Shahab','anna@gmail.com','7859848645','male','playing','Notes.txt','2018-07-19 11:09:30'),(6,'Md Shahab','anna@gmail.com','7859848645','male','reading','free_templates_url.txt','2018-07-19 11:10:15'),(7,'md shahab alam','anna@gmail.com','7859848645','male','playing','Notes2.txt','2018-07-19 11:12:34');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oauth_provider` enum('','facebook','google','twitter') COLLATE utf8_unicode_ci NOT NULL,
  `oauth_uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `users` */

/*Table structure for table `users2` */

DROP TABLE IF EXISTS `users2`;

CREATE TABLE `users2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(88) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `users2` */

insert  into `users2`(`id`,`mobile`,`date`) values (1,'7859848645','2018-07-24 13:57:24'),(2,'9403303030','2018-07-24 13:57:32'),(3,'99933939339','2018-07-24 13:57:41'),(4,'77474747447','2018-07-24 13:57:52'),(5,'884844848','2018-07-24 13:58:01');

/*Table structure for table `users_logedin` */

DROP TABLE IF EXISTS `users_logedin`;

CREATE TABLE `users_logedin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `login_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `users_logedin` */

insert  into `users_logedin`(`id`,`user_id`,`login_date`) values (1,1,'2018-07-16 01:42:18'),(2,2,'2018-07-16 01:42:18'),(3,2,'2018-07-16 01:42:42');

/* Procedure structure for procedure `getallcustomers` */

/*!50003 DROP PROCEDURE IF EXISTS  `getallcustomers` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `getallcustomers`()
BEGIN
select * from customers;
END */$$
DELIMITER ;

/* Procedure structure for procedure `get_email` */

/*!50003 DROP PROCEDURE IF EXISTS  `get_email` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `get_email`(IN customer_id INT)
BEGIN 
 SELECT * FROM customers WHERE id=customer_id;
 END */$$
DELIMITER ;

/* Procedure structure for procedure `get_multiple_customers` */

/*!50003 DROP PROCEDURE IF EXISTS  `get_multiple_customers` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `get_multiple_customers`(IN cus_id int)
BEGIN 
select * from customers where id<=cus_id;
END */$$
DELIMITER ;

/* Procedure structure for procedure `get_specific_customers` */

/*!50003 DROP PROCEDURE IF EXISTS  `get_specific_customers` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `get_specific_customers`(IN `cus_id` INT)
BEGIN 
select * from customers where id=cus_id;
END */$$
DELIMITER ;

/* Procedure structure for procedure `insert_data` */

/*!50003 DROP PROCEDURE IF EXISTS  `insert_data` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_data`(IN `name` VARCHAR(30), IN `email` VARCHAR(50), IN `mobile` VARCHAR(10), IN `address` TEXT)
BEGIN
insert into customers (name,email,mobile,address) values (name,email,mobile,address);
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
