-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2016 at 09:39 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbacademy`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chapters`
--

CREATE TABLE `tbl_chapters` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_chapters`
--

INSERT INTO `tbl_chapters` (`id`, `subject_id`, `name`, `description`) VALUES
(1, 1, 'chapter1', 'testses'),
(2, 2, 'chapter2', 'fcsdfdsgf sdfdsg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_class`
--

CREATE TABLE `tbl_class` (
  `id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_class`
--

INSERT INTO `tbl_class` (`id`, `code`, `name`, `description`) VALUES
(1, '1231', 'class1', 'dsfsdf'),
(2, '2313', 'class2', 'dfdfdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_exercices`
--

CREATE TABLE `tbl_exercices` (
  `id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `content` text NOT NULL,
  `version` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_exercices`
--

INSERT INTO `tbl_exercices` (`id`, `status`, `unit_id`, `date_created`, `created_by`, `content`, `version`) VALUES
(1, 'complited', 1, '2016-09-27', 1, 'asdad', '1'),
(2, 'not complited', 2, '2016-09-22', 1, 'sdfsfa', '1.1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_exercices_students`
--

CREATE TABLE `tbl_exercices_students` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `exercice_id` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `date_start` date NOT NULL,
  `date_submit` date NOT NULL,
  `date_grade` date NOT NULL,
  `grade` decimal(10,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_exercices_students`
--

INSERT INTO `tbl_exercices_students` (`id`, `student_id`, `exercice_id`, `status`, `date_start`, `date_submit`, `date_grade`, `grade`) VALUES
(1, 1, 1, 'test', '2016-09-27', '2016-09-28', '2016-09-27', '2'),
(2, 2, 2, 'test2', '2016-09-14', '2016-09-29', '2016-09-30', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sections`
--

CREATE TABLE `tbl_sections` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sections`
--

INSERT INTO `tbl_sections` (`id`, `name`, `description`) VALUES
(1, 'level1', 'dfsdf'),
(2, 'level2', 'sdfsf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_specialities`
--

CREATE TABLE `tbl_specialities` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `level_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_specialities`
--

INSERT INTO `tbl_specialities` (`id`, `name`, `description`, `level_id`) VALUES
(1, 'spe1', 'sdfsf', 1),
(2, 'spe2', 'sdfsdfs', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_students`
--

CREATE TABLE `tbl_students` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `birthdate` date NOT NULL,
  `attendance` decimal(10,0) NOT NULL,
  `classroom_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `spe_id` int(11) NOT NULL,
  `facebook` text,
  `skype` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_students`
--

INSERT INTO `tbl_students` (`id`, `name`, `surname`, `email`, `phone`, `address`, `birthdate`, `attendance`, `classroom_id`, `level_id`, `spe_id`, `facebook`, `skype`) VALUES
(2, 'maly12232', 'sea12323424', 'sealong.maly@yahoo.com', 'sdfh', 'sjhf', '2016-09-08', '1', 1, 2, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subject`
--

CREATE TABLE `tbl_subject` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subject`
--

INSERT INTO `tbl_subject` (`id`, `name`, `description`) VALUES
(1, 'subject1', 'sdfsf'),
(2, 'subject2', 'sdfsdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_units`
--

CREATE TABLE `tbl_units` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `chapter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_units`
--

INSERT INTO `tbl_units` (`id`, `name`, `description`, `chapter_id`) VALUES
(1, 'unit1', 'dfsdfdsf', 1),
(2, 'unit2', 'sdfsfas sdfsaf', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_chapters`
--
ALTER TABLE `tbl_chapters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_class`
--
ALTER TABLE `tbl_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_exercices`
--
ALTER TABLE `tbl_exercices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_exercices_students`
--
ALTER TABLE `tbl_exercices_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sections`
--
ALTER TABLE `tbl_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_specialities`
--
ALTER TABLE `tbl_specialities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_students`
--
ALTER TABLE `tbl_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subject`
--
ALTER TABLE `tbl_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_units`
--
ALTER TABLE `tbl_units`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_chapters`
--
ALTER TABLE `tbl_chapters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_class`
--
ALTER TABLE `tbl_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_exercices`
--
ALTER TABLE `tbl_exercices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_exercices_students`
--
ALTER TABLE `tbl_exercices_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_sections`
--
ALTER TABLE `tbl_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_specialities`
--
ALTER TABLE `tbl_specialities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_students`
--
ALTER TABLE `tbl_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_subject`
--
ALTER TABLE `tbl_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_units`
--
ALTER TABLE `tbl_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
