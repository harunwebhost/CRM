-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2016 at 06:25 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `amruth_testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `child_pages`
--

CREATE TABLE IF NOT EXISTS `child_pages` (
`child_page_id` int(11) NOT NULL,
  `child_page_title` varchar(50) NOT NULL,
  `contents` text NOT NULL,
  `quotes` text NOT NULL,
  `status` int(2) NOT NULL,
  `main_page_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `child_pages`
--

INSERT INTO `child_pages` (`child_page_id`, `child_page_title`, `contents`, `quotes`, `status`, `main_page_id`) VALUES
(1, 'Home 1.1', '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `child_to_child`
--

CREATE TABLE IF NOT EXISTS `child_to_child` (
`child_to_child_id` int(11) NOT NULL,
  `child_to_child_title` varchar(50) NOT NULL,
  `child_page_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE IF NOT EXISTS `contact_details` (
`contact_details_id` int(11) NOT NULL,
  `contact_name` varchar(50) NOT NULL,
  `contact_last_name` varchar(50) NOT NULL,
  `contact_email` varchar(50) NOT NULL,
  `contact_phone` varchar(50) NOT NULL,
  `contact_ip_address` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`contact_details_id`, `contact_name`, `contact_last_name`, `contact_email`, `contact_phone`, `contact_ip_address`) VALUES
(1, '1', '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

CREATE TABLE IF NOT EXISTS `employer` (
  `emp_name` varchar(100) NOT NULL,
`emp_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `employer`
--

INSERT INTO `employer` (`emp_name`, `emp_id`) VALUES
('Ajaz', 1),
('Irfan', 2);

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE IF NOT EXISTS `leads` (
`lead_id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `city` varchar(100) NOT NULL,
  `lead_from` varchar(100) NOT NULL,
  `emp_id` bigint(20) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`lead_id`, `name`, `email`, `mobile`, `city`, `lead_from`, `emp_id`, `status`) VALUES
(15, 'a', 'a', 1, 'a', 'a', 1, 'Assiged'),
(16, 'b', 'b', 2, 'b', 'b', 2, 'Assiged'),
(17, 'c', 'c', 3, 'c', 'c', 3, 'Assiged'),
(18, 'd', 'd', 4, 'd', 'd', 1, 'Assiged'),
(19, 'ajaz', 'ajaz', 5, 'd', 'd', 1, 'Assiged'),
(20, 'ajaz', 'ajaz', 6, 'd', 'd', 1, 'Assiged'),
(21, 'ajaz', 'ajaz', 7, 'd', 'd', 3, 'Assiged');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `user_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `main_pages`
--

CREATE TABLE IF NOT EXISTS `main_pages` (
`main_page_id` int(11) NOT NULL,
  `main_page_title` varchar(30) NOT NULL,
  `quote` text NOT NULL,
  `contents` text NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `main_pages`
--

INSERT INTO `main_pages` (`main_page_id`, `main_page_title`, `quote`, `contents`, `status`) VALUES
(1, 'Home', 'welcome', '<p>Home</p>\r\n', 0),
(2, 'About us', 'welcome', '<p>abouts</p>\r\n', 0),
(3, 'Business process', 'welcome', '<p>Business process</p>\r\n', 0),
(4, 'Reviews', 'welcomeReviews', '<p>Reviews</p>\r\n', 0),
(5, 'Careers', 'Careers', '<p>Careers</p>\r\n', 0),
(7, 'Contact Us ', 'Contact Us ', '<p>Contact Us&nbsp;</p>\r\n\r\n<form role="form">\r\n  <div class="form-group">\r\n    <label for="email">Email address:</label>\r\n    <input type="email" class="form-control" id="email">\r\n  </div>\r\n  <div class="form-group">\r\n    <label for="pwd">Password:</label>\r\n    <input type="password" class="form-control" id="pwd">\r\n  </div>\r\n  <div class="checkbox">\r\n    <label><input type="checkbox"> Remember me</label>\r\n  </div>\r\n  <button type="submit" class="btn btn-default">Submit</button>\r\n</form>\r\n', 0),
(8, 'new page', 'Contact Us ', '<p>hello</p>\r\n', 0),
(9, 'new page', 'new page', '<p><strong><em>new page</em></strong></p>\r\n', 0),
(10, ' Hello', '123', '<p>123</p>\r\n', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `child_pages`
--
ALTER TABLE `child_pages`
 ADD PRIMARY KEY (`child_page_id`), ADD KEY `child_page_id` (`child_page_id`);

--
-- Indexes for table `child_to_child`
--
ALTER TABLE `child_to_child`
 ADD PRIMARY KEY (`child_to_child_id`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
 ADD PRIMARY KEY (`contact_details_id`);

--
-- Indexes for table `employer`
--
ALTER TABLE `employer`
 ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
 ADD PRIMARY KEY (`lead_id`);

--
-- Indexes for table `main_pages`
--
ALTER TABLE `main_pages`
 ADD PRIMARY KEY (`main_page_id`), ADD KEY `main_page_id` (`main_page_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `child_pages`
--
ALTER TABLE `child_pages`
MODIFY `child_page_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `child_to_child`
--
ALTER TABLE `child_to_child`
MODIFY `child_to_child_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contact_details`
--
ALTER TABLE `contact_details`
MODIFY `contact_details_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `employer`
--
ALTER TABLE `employer`
MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
MODIFY `lead_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `main_pages`
--
ALTER TABLE `main_pages`
MODIFY `main_page_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
