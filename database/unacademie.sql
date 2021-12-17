-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2021 at 09:57 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unacademie`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'enigma', 'enigma'),
(2, 'enigmagroups', 'enigmapibois');

-- --------------------------------------------------------

--
-- Table structure for table `enroll5`
--

CREATE TABLE `enroll5` (
  `enrollkey` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enroll5`
--

INSERT INTO `enroll5` (`enrollkey`) VALUES
('MATH5@2021');

-- --------------------------------------------------------

--
-- Table structure for table `enroll11`
--

CREATE TABLE `enroll11` (
  `enrollkey` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enroll11`
--

INSERT INTO `enroll11` (`enrollkey`) VALUES
('MATH11@2021');

-- --------------------------------------------------------

--
-- Table structure for table `enroll12`
--

CREATE TABLE `enroll12` (
  `enrollkey` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enroll12`
--

INSERT INTO `enroll12` (`enrollkey`) VALUES
('MATH12@2021');

-- --------------------------------------------------------

--
-- Table structure for table `enroll13`
--

CREATE TABLE `enroll13` (
  `enrollkey` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enroll13`
--

INSERT INTO `enroll13` (`enrollkey`) VALUES
('MATH13@2021');

-- --------------------------------------------------------

--
-- Table structure for table `grade5`
--

CREATE TABLE `grade5` (
  `title` varchar(255) NOT NULL,
  `date` varchar(40) NOT NULL,
  `time` varchar(40) NOT NULL,
  `description` varchar(255) NOT NULL,
  `attachments` varchar(255) NOT NULL,
  `links` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade5`
--

INSERT INTO `grade5` (`title`, `date`, `time`, `description`, `attachments`, `links`) VALUES
('12/11 Class - Division', '2021-11-12', '16:00', 'Lesson - Division', '8807-Doc1.pdf', 'www.aaa.com'),
('5/11 Class - Multiplication', '2021-11-05', '16:00', 'Lesson - Multiplication', '8107-Doc1.pdf', 'www.sp.com');

-- --------------------------------------------------------

--
-- Table structure for table `grade11`
--

CREATE TABLE `grade11` (
  `title` varchar(40) NOT NULL,
  `date` varchar(40) NOT NULL,
  `time` varchar(40) NOT NULL,
  `description` varchar(255) NOT NULL,
  `attachments` varchar(255) NOT NULL,
  `links` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade11`
--

INSERT INTO `grade11` (`title`, `date`, `time`, `description`, `attachments`, `links`) VALUES
('12/11 Class - Metrices', '2021-11-12', '16:00', 'Lesson - Metrics\r\n- Evaluation of metrices\r\n- Matrix calculations', '1321-Doc1.pdf', 'www.abc.com'),
('5/11 Class - Algebraic Expressions', '2021-11-05', '16:59', 'Lesson - Algebraic Expressions\r\n- Solving equations\r\n- Algebraic devision', '2332-Doc1.pdf', 'www.avn.com');

-- --------------------------------------------------------

--
-- Table structure for table `grade12`
--

CREATE TABLE `grade12` (
  `title` varchar(255) NOT NULL,
  `date` varchar(40) NOT NULL,
  `time` varchar(40) NOT NULL,
  `description` varchar(255) NOT NULL,
  `attachments` varchar(255) NOT NULL,
  `links` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade12`
--

INSERT INTO `grade12` (`title`, `date`, `time`, `description`, `attachments`, `links`) VALUES
('14/11 Revision Class', '2021-11-14', '09:00', 'Test Description 02', '6929-Doc1.pdf', 'XXXC'),
('15/11 Theory Class', '2021-11-15', '09:00', 'Test Description', '3028-Doc1.pdf', 'XXX');

-- --------------------------------------------------------

--
-- Table structure for table `grade13`
--

CREATE TABLE `grade13` (
  `title` varchar(255) NOT NULL,
  `date` varchar(40) NOT NULL,
  `time` varchar(40) NOT NULL,
  `description` varchar(255) NOT NULL,
  `attachments` varchar(255) NOT NULL,
  `links` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade13`
--

INSERT INTO `grade13` (`title`, `date`, `time`, `description`, `attachments`, `links`) VALUES
('13/11 Revision Class', '2021-11-13', '10:00', 'ABC', '9608-Doc1.pdf', 'VVVVV'),
('15/11 Theory Class', '2021-11-15', '11:00', 'Test', '2616-Doc1.pdf', 'CCC');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `noticeID` varchar(15) NOT NULL,
  `date` varchar(12) NOT NULL,
  `title` varchar(80) NOT NULL,
  `author` varchar(25) NOT NULL,
  `priority` varchar(10) NOT NULL,
  `message` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`noticeID`, `date`, `title`, `author`, `priority`, `message`) VALUES
('01', '2021-11-15', 'Revision Class Cancellation', 'Mohan ', 'High', 'Due to an unavoidable reason, next week\'s revision class for Grade 13 students will not hold. Stay tuned for further details!'),
('02', '2021-11-14', 'Re-arrangement of Grade 12 class', 'Admin', 'Medium', 'Next week Grade 12 theory class will be re-schedule to the 21st of November at 11.00 AM. ');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `email` varchar(255) NOT NULL,
  `studentID` varchar(10) NOT NULL,
  `class` varchar(50) NOT NULL,
  `Year` varchar(5) NOT NULL,
  `Month` varchar(30) NOT NULL,
  `Note` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`email`, `studentID`, `class`, `Year`, `Month`, `Note`) VALUES
('admin@gmail.com', '1000000001', 'Grade 13', '2021', 'November', 'Paid on Nov 18'),
('akila@gmail.com', '1000056891', 'Grade 5', '2021', 'November', 'Paid on 3rd of Nov'),
('den@gmail.com', '1000897267', 'Grade 11', '2021', 'November', 'Paid on 13th Nov'),
('s@gmail.com', '1006700001', 'Grade 12', '2021', 'November', 'Paid on 16th Nov');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `studentID` varchar(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `birthday` varchar(11) NOT NULL,
  `sex` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` varchar(70) NOT NULL,
  `class` varchar(12) NOT NULL,
  `year` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`studentID`, `fname`, `lname`, `password`, `birthday`, `sex`, `email`, `phone`, `address`, `class`, `year`) VALUES
('1000000001', 'Admin ', 'Privileges', 'enigma', '2021-11-15', 'Male', 'admin@gmail.com', '0770000001', 'Enigma Base', 'Grade 13', '2021'),
('1000056891', 'Akila', 'Denuwan', 'akila123', '2011-07-21', 'Male', 'akila@gmail.com', '0775671324', 'Kelaniya', 'Grade 5', '2021'),
('1000356267', 'Neranjan', 'Dissanayake', 'nera123', '1999-06-17', 'Male', 'neranjan@gmail.com', '0775673516', 'Wellawa', 'Grade 13', '2021'),
('1000357517', 'Kasun', 'Madushanka', 'kasun123', '1998-07-22', 'Male', 'kasun@gmail.com', '0775671826', 'Wariyapola', 'Grade 13', '2021'),
('1000367967', 'Vimantha', 'Dilshan', 'vima123', '1999-03-23', 'Male', 'vima@gmail.com', '0778723616', 'Kuliyapitiya', 'Grade 13', '2021'),
('1000728267', 'Uditha', 'Premasiri', 'ucha123', '1999-06-10', 'Male', 'uditha@gmail.com', '0714562718', 'Ibbagamuwa', 'Grade 13', '2021'),
('1000897267', 'Denethu', 'Kavinda', 'denethu123', '2011-05-09', 'Male', 'den@gmail.com', '0776781314', 'Gampaha', 'Grade 11', '2021'),
('1006700001', 'Sanduni', 'Fernando', 'san123', '2003-06-18', 'Female', 's@gmail.com', '0784561415', 'Kandy', 'Grade 12', '2021'),
('1024356267', 'Will', 'Smith', 'smith123', '2004-06-18', 'Male', 'will@yahoo.com', '0785671425', 'Galle', 'Grade 12', '2021');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `enroll5`
--
ALTER TABLE `enroll5`
  ADD PRIMARY KEY (`enrollkey`);

--
-- Indexes for table `enroll11`
--
ALTER TABLE `enroll11`
  ADD PRIMARY KEY (`enrollkey`);

--
-- Indexes for table `enroll12`
--
ALTER TABLE `enroll12`
  ADD PRIMARY KEY (`enrollkey`);

--
-- Indexes for table `enroll13`
--
ALTER TABLE `enroll13`
  ADD PRIMARY KEY (`enrollkey`);

--
-- Indexes for table `grade5`
--
ALTER TABLE `grade5`
  ADD PRIMARY KEY (`title`);

--
-- Indexes for table `grade11`
--
ALTER TABLE `grade11`
  ADD PRIMARY KEY (`title`);

--
-- Indexes for table `grade12`
--
ALTER TABLE `grade12`
  ADD PRIMARY KEY (`title`);

--
-- Indexes for table `grade13`
--
ALTER TABLE `grade13`
  ADD PRIMARY KEY (`title`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`noticeID`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`studentID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
