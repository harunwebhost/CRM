-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2016 at 08:59 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `crm`
--
CREATE DATABASE IF NOT EXISTS `crm` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `crm`;

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

CREATE TABLE IF NOT EXISTS `employer` (
  `emp_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(200) NOT NULL,
  `emp_email` varchar(200) NOT NULL,
  `emp_mobile` varchar(200) NOT NULL,
  `emp_status` int(2) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `employer`
--

INSERT INTO `employer` (`emp_id`, `emp_name`, `emp_email`, `emp_mobile`, `emp_status`) VALUES
(1, 'EMp1', 'EMp1@gmail.com', '7411033926', 1),
(2, 'emp2', 'emp2@gmail.com', '7411033926', 1),
(3, 'Ajazahmed BEPARI', 'aha@gmail.com', '08892776023', 0),
(4, 'irfan', 'ifan@gmail.com', '74110033926', 0),
(5, 'dev', 'dev@gmail.com', '74110033926', 0),
(6, 'Ajazahmed BEPARI', 'ismat@gmail.com', '08892776023', 0);

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE IF NOT EXISTS `leads` (
  `lead_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lead_name` varchar(200) NOT NULL,
  `lead_email` varchar(200) NOT NULL,
  `lead_mobile` bigint(11) NOT NULL,
  `lead_city` varchar(200) NOT NULL,
  `lead_from` varchar(100) NOT NULL,
  `emp_id` bigint(20) NOT NULL,
  `lead_status` varchar(10) NOT NULL,
  PRIMARY KEY (`lead_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`lead_id`, `lead_name`, `lead_email`, `lead_mobile`, `lead_city`, `lead_from`, `emp_id`, `lead_status`) VALUES
(1, 'a', 'a', 1, 'a', 'a', 1, 'un-Assiged'),
(2, 'b', 'b', 2, 'b', 'b', 2, 'Assiged'),
(3, 'c', 'c', 3, 'c', 'c', 3, 'Assiged'),
(4, 'd', 'd', 4, 'd', 'd', 1, 'Assiged'),
(5, 'ajaz', 'ajaz', 5, 'd', 'd', 1, 'Assiged'),
(6, 'ajaz', 'ajaz', 6, 'd', 'd', 1, 'Assiged'),
(7, 'ajaz', 'ajaz', 7, 'd', 'd', 3, 'Assiged');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_type` varchar(100) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`, `user_type`, `status`) VALUES
(1, 'Ajazahmed BEPARI', 'ismat@gmail.com', '08892776023', 'emplyee', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
