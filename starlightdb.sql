-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2018 at 06:47 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `starlightdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_yr_tbl`
--

CREATE TABLE `academic_yr_tbl` (
  `sno` int(10) NOT NULL,
  `academic_yr` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `academic_yr_tbl`
--

INSERT INTO `academic_yr_tbl` (`sno`, `academic_yr`) VALUES
(1, 'FIRST YEAR'),
(2, 'SECOND YEAR'),
(3, 'THIRD YEAR');

-- --------------------------------------------------------

--
-- Table structure for table `admintbl`
--

CREATE TABLE `admintbl` (
  `sno` int(100) NOT NULL,
  `adminid` varchar(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phoneno` int(100) NOT NULL,
  `department` varchar(255) NOT NULL,
  `active` varchar(20) NOT NULL,
  `passworda` varchar(255) NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintbl`
--

INSERT INTO `admintbl` (`sno`, `adminid`, `username`, `lastname`, `email`, `phoneno`, `department`, `active`, `passworda`, `images`) VALUES
(2, '100', 'ANGALARODGY', 'MANYEVE', 'a@gmail.com', 719458258, 'FEES', 'PRESENT', 'c20ad4d76fe97759aa27a0c99bff6710', ''),
(3, '222', 'JACK', 'SPARROW', 'jack@gmail.com', 7542585, 'SOFTWARE ENGINEERING', 'PRESENT', '12', '20170102152706.jpg'),
(4, '333', 'MARVIN', 'SIMIYU', 'marv@gmail.com', 2147483647, 'MEDICINE', 'PRESENT', '12', '20170102161909.jpg'),
(5, '444', 'BRENDA', 'CHEROTICH', 'ab@gmail.com', 719458048, 'SOFTWARE ENGINEERING', 'PRESENT', '12', '20170102152354.jpg'),
(6, '555', 'michelle', 'prisca', 'p@gmail.com', 2012463241, 'HUMAN RESOURCE', 'PRESENT', 'c20ad4d76fe97759aa27a0c99bff6710', '20170102152706.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `coursetbl`
--

CREATE TABLE `coursetbl` (
  `sno` int(100) NOT NULL,
  `course_code` varchar(20) NOT NULL,
  `course_title` varchar(255) NOT NULL,
  `dept_id` varchar(255) NOT NULL,
  `academic_year` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coursetbl`
--

INSERT INTO `coursetbl` (`sno`, `course_code`, `course_title`, `dept_id`, `academic_year`) VALUES
(1, 'COM111', 'INTRODUCTION', '2', 'THIRD YEAR'),
(2, 'COM222', 'BASIC PHYSICS', '2', ''),
(3, 'COM333', 'ADVANCED PHYSICS', '2', ''),
(4, 'COM300', 'DATABASE SYSTEM', '2', 'THIRD YEAR'),
(5, 'COM301', 'ELECTRONICS', '2', 'THIRD YEAR');

-- --------------------------------------------------------

--
-- Table structure for table `course_reg_tbl`
--

CREATE TABLE `course_reg_tbl` (
  `snoc` int(100) NOT NULL,
  `admno` varchar(20) NOT NULL,
  `course_code` varchar(20) NOT NULL,
  `semester` varchar(20) NOT NULL,
  `academic_year` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_reg_tbl`
--

INSERT INTO `course_reg_tbl` (`snoc`, `admno`, `course_code`, `semester`, `academic_year`) VALUES
(1, 'COM/1003/16', 'COM111', 'FIRST SEMESTER', 'FIRST YEAR'),
(2, 'COM/1003/16', 'COM4532', 'FIRST SEMESTER', 'THIRD YEAR'),
(3, 'COM/1003/16', 'COM4532', 'FIRST SEMESTER', 'THIRD YEAR'),
(4, 'COM/1003/16', 'COM4532', 'FIRST SEMESTER', 'THIRD YEAR'),
(5, 'COM/1003/16', 'COM4532', 'FIRST SEMESTER', 'THIRD YEAR'),
(6, 'COM/1003/16', 'COM4532', 'FIRST SEMESTER', 'THIRD YEAR'),
(7, 'COM/1003/16', 'COM4532', 'FIRST SEMESTER', 'THIRD YEAR'),
(8, 'COM/1003/16', 'COM4532', 'FIRST SEMESTER', 'THIRD YEAR'),
(9, 'COM/1003/16', 'COM300', 'FIRST SEMESTER', 'THIRD YEAR'),
(10, 'COM/37/16', 'COM301', 'FIRST SEMESTER', 'THIRD YEAR'),
(12, 'COM/1003/16', 'COM300', 'SECOND SEMESTER', 'THIRD YEAR'),
(13, 'COM/1003/16', 'COM301', 'SECOND SEMESTER', 'THIRD YEAR'),
(14, 'COM/05/16', 'COM300', 'FIRST SEMESTER', 'THIRD YEAR'),
(15, 'COM/05/16', 'COM301', 'FIRST SEMESTER', 'THIRD YEAR'),
(17, 'COM/1003/16', 'COM300', 'FIRST SEMESTER', 'THIRD YEAR');

-- --------------------------------------------------------

--
-- Table structure for table `departmentstbl`
--

CREATE TABLE `departmentstbl` (
  `sno` int(100) NOT NULL,
  `dept_id` varchar(20) NOT NULL,
  `dept_name` varchar(255) NOT NULL,
  `dept_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departmentstbl`
--

INSERT INTO `departmentstbl` (`sno`, `dept_id`, `dept_name`, `dept_type`) VALUES
(2, '2', 'SOFTWARE ENGINEERING', 'ACADEMICS'),
(3, '1', 'SOFTWARE ENGINEERING', 'ACADEMICS'),
(4, '3', 'ARTS', 'ACADEMICS'),
(5, '4', 'MEDICINE', 'ACADEMICS'),
(6, '5', 'HUMAN RESOURCE', 'ACADEMICS'),
(7, '6', 'BUSINESS', 'ACADEMICS'),
(8, '3334', 'CONTRUCTION', 'MANAGEMENT');

-- --------------------------------------------------------

--
-- Table structure for table `divert_tbl`
--

CREATE TABLE `divert_tbl` (
  `sno` int(1) NOT NULL,
  `course_code` varchar(20) NOT NULL,
  `course_title` varchar(20) NOT NULL,
  `semester` varchar(20) NOT NULL,
  `academic_year` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exams_tbl`
--

CREATE TABLE `exams_tbl` (
  `sno` int(100) NOT NULL,
  `admno` varchar(20) NOT NULL,
  `lecturersid` int(100) NOT NULL,
  `course_code` varchar(20) NOT NULL,
  `marks` int(3) NOT NULL,
  `semester` varchar(20) NOT NULL,
  `academic_year` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exams_tbl`
--

INSERT INTO `exams_tbl` (`sno`, `admno`, `lecturersid`, `course_code`, `marks`, `semester`, `academic_year`) VALUES
(1, 'COM/05/16', 111, 'COM222', 80, 'SECOND SEMESTER', 'SECOND YAER'),
(2, 'COM/37/16', 111, 'COM222', 90, 'SECOND SEMESTER', 'THIRD YEAR'),
(3, 'COM/05/16', 111, 'COM222', 80, 'SECOND SEMESTER', 'SECOND YAER'),
(4, 'COM/37/16', 111, 'COM222', 90, 'SECOND SEMESTER', 'THIRD YEAR');

-- --------------------------------------------------------

--
-- Table structure for table `fees_tbl`
--

CREATE TABLE `fees_tbl` (
  `sno` int(100) NOT NULL,
  `admno` varchar(20) NOT NULL,
  `amount` int(100) NOT NULL,
  `receipt_no` int(100) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `academic_year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fees_tbl`
--

INSERT INTO `fees_tbl` (`sno`, `admno`, `amount`, `receipt_no`, `bank_name`, `branch`, `semester`, `academic_year`) VALUES
(1, 'COM/1003/16', 18000, 111, 'COOPERATIVE BANK', 'ATHI RIVER', 'SECOND SEMESTER', 'THIRD YEAR'),
(2, 'COM/05/16', 21000, 222222, 'NATIONAL BANK', 'MOI', 'FIRST SEMESTER', 'THIRD YEAR'),
(3, 'COM/01/16', 20000, 3333, 'CHASE BANK', 'NYANZA', 'FIRST SEMESTER', 'THIRD YEAR'),
(4, 'COM/1003/16', 20000, 578980, 'NATIONAL BANK', 'NAIROBI', 'FIRST SEMESTER', 'THIRD YEAR'),
(5, 'COM/333/16', 20000, 12345, 'COOP', 'ELDORET', 'FIRST SEMESTER', 'FIRST YEAR');

-- --------------------------------------------------------

--
-- Table structure for table `lecturerstbl`
--

CREATE TABLE `lecturerstbl` (
  `sno` int(100) NOT NULL,
  `lecturersid` varchar(100) NOT NULL,
  `sirname` varchar(255) NOT NULL,
  `lfirstname` varchar(255) NOT NULL,
  `llastname` varchar(255) NOT NULL,
  `lemail` varchar(255) NOT NULL,
  `lphoneno` int(100) NOT NULL,
  `coursecode` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `passwordl` varchar(255) NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecturerstbl`
--

INSERT INTO `lecturerstbl` (`sno`, `lecturersid`, `sirname`, `lfirstname`, `llastname`, `lemail`, `lphoneno`, `coursecode`, `title`, `passwordl`, `images`) VALUES
(1, '1', 'ANGALA', 'RODGERS', 'MANYEVE', 'angalarodgers@gmail.com', 719458048, 'COM321', 'DOCTOR CHAGALA', 'ROD', 'ROD'),
(3, '234', 'sdert', 'sdfg', 'sdfgh', 'asha@gmail.com', 34567, 'sdfg', 'sdfg', 'c20ad4d76fe97759aa27a0c99bff6710', ''),
(4, '100', 'USHER', 'RAYMOND', 'FOUR', 'usherraymond@gmail.com', 74582, 'COM123', 'USHER', '202cb962ac59075b964b07152d234b70', ''),
(5, '12', 'EKATI', 'KEPHA', 'VINCENT', 'vin@gmail.com', 78547, 'COM456', 'DOCTOR', '8613985ec49eb8f757ae6439e879bb2a', ''),
(6, '32', 'STACEY', 'CHEN', 'ANNY', 'ann@gmail.com', 5625, 'COM456', 'DOCTOR', 'c20ad4d76fe97759aa27a0c99bff6710', ''),
(7, '098', 'ALLEN', 'MARTIN', 'ABUTO', 'allen@gmail.com', 58745852, 'COM123', 'DOCTOR', 'c20ad4d76fe97759aa27a0c99bff6710', ''),
(8, '3454', 'JAMES', 'WEWA', 'NZOMO', 'jamnzomo@gmail.com', 719458048, 'com220', 'dsfgh', 'c20ad4d76fe97759aa27a0c99bff6710', '20170102161521.jpg'),
(9, '222', 'KABIR', 'ETHUR', 'MESHARK', 'kabir@gmail.com', 565, 'COM222', 'ACCOUNTING', 'c20ad4d76fe97759aa27a0c99bff6710', '20170102150143.jpg'),
(10, '432', 'MANYEVE', 'RANGO', 'ANNMAN', 'rango@gmail.com', 25896, '', 'RANGO', 'c20ad4d76fe97759aa27a0c99bff6710', '20170102155451.jpg'),
(11, '111', 'KIPROP', 'MESHACK', 'SHADRACK', 'kiprop@gmail.com', 2853, 'COM111', 'DOCTOR', 'c20ad4d76fe97759aa27a0c99bff6710', '20170102145909.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `nroll_tbl`
--

CREATE TABLE `nroll_tbl` (
  `sno` int(100) NOT NULL,
  `admno` varchar(25) NOT NULL,
  `semester` varchar(25) NOT NULL,
  `academic_year` varchar(25) NOT NULL,
  `session` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nroll_tbl`
--

INSERT INTO `nroll_tbl` (`sno`, `admno`, `semester`, `academic_year`, `session`) VALUES
(1, 'COM444', 'FIRST SEMESTER', 'FIRST YEAR', ''),
(2, 'COM/1003/16', 'FIRST SEMESTER', 'THIRD YEAR', ''),
(6, 'COM/05/16', 'FIRST SEMESTER', 'SECOND YEAR', '18'),
(7, 'COM/05/16', 'SECOND SEMESTER', 'SECOND YEAR', '18'),
(8, 'COM/05/16', 'FIRST SEMESTER', 'THIRD YEAR', '18'),
(9, 'COM/1003/16', 'FIRST SEMESTER', 'THIRD YEAR', '18');

-- --------------------------------------------------------

--
-- Table structure for table `program_tbl`
--

CREATE TABLE `program_tbl` (
  `sno` int(100) NOT NULL,
  `program` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `program_tbl`
--

INSERT INTO `program_tbl` (`sno`, `program`) VALUES
(1, 'ACCOUNTING'),
(2, 'ACTUARIAL SCIENCE '),
(3, 'AEROSPACE ENGINEERING'),
(4, 'AFRICA AND GLOBALIZATION'),
(5, 'AFRICA STUDIES'),
(6, 'ALGORITHMS'),
(7, 'ANTHROPOLOGY'),
(8, 'APPLIED LINGUISTIC AND DISCOURSE STUDIES'),
(9, 'APPLIED PHYSICS'),
(10, 'ARCHITECTURAL STUDIES'),
(11, 'BARCHELOR OF ARTS'),
(12, 'BIOCHEMISTRY'),
(13, 'BIOINFORMATICS'),
(14, 'BIOLOGY'),
(15, 'CHEMISTRY');

-- --------------------------------------------------------

--
-- Table structure for table `sem_tbl`
--

CREATE TABLE `sem_tbl` (
  `sno` int(10) NOT NULL,
  `semester` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sem_tbl`
--

INSERT INTO `sem_tbl` (`sno`, `semester`) VALUES
(1, 'FIRST SEMESTER'),
(2, 'SECOND SEMESTER');

-- --------------------------------------------------------

--
-- Table structure for table `studentstbl`
--

CREATE TABLE `studentstbl` (
  `sno` int(100) NOT NULL,
  `national_id` int(100) NOT NULL,
  `admno` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `dateofbirth` date NOT NULL,
  `phoneno` int(100) NOT NULL,
  `program` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `images` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentstbl`
--

INSERT INTO `studentstbl` (`sno`, `national_id`, `admno`, `firstname`, `middlename`, `lastname`, `email`, `gender`, `dateofbirth`, `phoneno`, `program`, `region`, `images`, `password`) VALUES
(30, 0, '13rwfe', 'asdftgyu', 'sdfghj', 'sdfghjk', 'a@gmail.com', 'FEMALE', '2018-10-12', 4356789, 'ACTUARIAL SCIENCE ', 'NAKURU KENYA', '20170102163831.jpg', '12'),
(1, 3291210, 'COM/0001/18', 'RODGERS', 'ANGALA', 'MANYEVE', '', 'MALE', '2018-10-02', 719458048, 'COMP SCIENCE', 'KAKAMEGA', '', '827ccb0eea8a706c4c34a16891f84e7b'),
(13, 0, 'COM/01/15', 'STACEY', 'CHEBET', 'ANN', 'ann@gmail.com', 'FEMALE', '2018-10-18', 58742365, 'STATISTICS', 'NAKURU', '20170102152354.jpg', '12'),
(12, 0, 'COM/01/16', 'ALLEN', 'MARTIN', 'ABUTO', 'allen@gmail.com', 'MALE', '2018-10-31', 715552, 'INFORMATION SCIENCE', 'SIAYA', '20170102163831.jpg', 'ALLEN'),
(16, 0, 'COM/02/16', 'ALLICE', 'KALEKYE', 'MWANZIA', 'allice@gmail.com', '', '2018-10-09', 719458048, 'AFRICA AND GLOBALIZATION', 'MACHAKOS', '', '12'),
(18, 0, 'COM/03/16', 'REUBEN', 'MUDAKI', 'REUB', 'reub@gmail.com', 'MALE', '2018-10-17', 719458048, 'BARCHELOR OF ARTS', 'ELDORET', '', '12'),
(29, 0, 'COM/05/16', 'STACY', 'CHEBET', 'CHEBET', 'stacyanne01@gmail.com', 'FEMALE', '2018-10-25', 706960280, 'APPLIED LINGUISTIC AND DISCOURSE STUDIES', 'NAKURU KENYA', '20170102152354.jpg', '12'),
(28, 0, 'COM/1003/16', 'RODGERS', 'ANGALA', 'MANYEVE', 'angalarodgers@gmail.com', 'MALE', '2018-10-01', 719458048, 'ACTUARIAL SCIENCE ', 'ATHI RIVER', 'IMG-20160523-WA0025.jpg', '12'),
(15, 0, 'COM/11', 'EKATIV', 'VINCENT ', 'ANYORE', 'ekati@gmail.com', 'MALE', '2018-10-16', 1663485353, 'GEOGRAPHY', 'KITALE', '20170102162044.jpg', '12'),
(4, 0, 'COM/20/16', 'OWAGO', 'OWAGO', 'OWAGO', 'o@gmail.com', 'MALE', '2018-10-02', 47846, 'EDUCATION', 'KISUMU', '', 'c20ad4d76fe97759aa27a0c99bff6710'),
(5, 0, 'COM/30', 'JACKSPARROW', 'RANGO', 'RANGO', 'r@gmail.com', 'MALE', '2018-10-02', 47521, 'ARTS', 'WESTERN', 'c20ad4d76fe97759aa27a0c99bff6710', '2b1ce46a1b64f804ea9fa580ed6922de.jpg'),
(31, 0, 'COM/31/16', 'STEVEN', 'OWAGO', 'OWUMA', 'steveowago@gmail.com', 'MALE', '2018-10-18', 7182624, 'ALGORITHMS', 'NYANZA', '20170102161909.jpg', '12'),
(32, 2345677, 'COM/333/16', 'STACEY', 'ANN', 'ANNY', 'st@gmail.com', 'FEMALE', '2018-11-06', 4789, 'AFRICA STUDIES', 'NAKURU KENYA', '20170116003912.jpg', '12'),
(8, 0, 'COM/37/16', 'MITCHELLE', 'MITCH', 'CHSHEL', 'ms@gmail.com', 'FEMALE', '2018-10-01', 2535, 'ARTS', 'COAST', '4d5184c5aeab5203f665aa28c9e2d6ea.jpg', 'c20ad4d76fe97759aa27a0c99bff6710'),
(6, 0, 'COM/40', 'SHARON', 'SHAZ', 'SHAVLYN', 'shaz@gmail.com', 'FEMALE', '2018-10-01', 712847373, 'ANTHROPOLOGY', 'NAKURU', '202cb962ac59075b964b07152d234b70', '0bd66f5422adea3b002ab9422b79283b.jpg'),
(7, 0, 'COM/50', 'MARION', 'MARION', 'LOVELY', 'm@gmail.com', 'FEMALE', '2018-10-02', 47516, 'LAW', 'KITALE', '0c2a3a0a90c70b4f777edfa9c50c1454.jpg', '202cb962ac59075b964b07152d234b70'),
(14, 0, 'COM/TEST', 'TEST', 'TEST', 'TEST', 'test@gmail.com', 'MALE', '2018-10-25', 852, 'COMP SCIENCE', 'KENYA', '20170102152354.jpg', '12'),
(21, 0, 'COM111/11', 'WENDY', 'GIBSON', 'WAMALWA', 'wendy@gmail.com', 'MALE', '2018-10-17', 719458248, 'AFRICA AND GLOBALIZATION', 'KERICHO', '', '12'),
(23, 0, 'COM222', 'CLINTON', 'KESESE', 'KABIGU', 'clinton@gmail.com', 'MALE', '2018-10-10', 719458048, 'ALGORITHMS', 'KITALE', '', '12'),
(25, 0, 'COM333', 'CHRISPINUS', 'MAKOKHA', 'CHRIS', 'chris@gmail.com', 'MALE', '2018-10-03', 745245985, 'ACTUARIAL SCIENCE ', 'NANDI', '', '12'),
(27, 0, 'COM444', 'BRIAN', 'SERETE', 'OMONDI', 'brio@gmail.com', 'MALE', '2018-10-24', 7200220, 'ACTUARIAL SCIENCE ', 'KITALE', '20170102224349.jpg', '12'),
(11, 0, 'COM999', 'RODGY', 'ANGALLA', 'MAN', 'rodgy@gmail.com', 'MALE', '2018-10-02', 715552, 'COMP SCIENCE', 'MACHAKOS', '2a56580a3c29acb428d213486aa63edd.jpg', '98');

-- --------------------------------------------------------

--
-- Table structure for table `target_fees_tbl`
--

CREATE TABLE `target_fees_tbl` (
  `sno` int(20) NOT NULL,
  `semester` varchar(20) NOT NULL,
  `academic_year` varchar(20) NOT NULL,
  `amount` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `target_fees_tbl`
--

INSERT INTO `target_fees_tbl` (`sno`, `semester`, `academic_year`, `amount`) VALUES
(1, 'FIRST SEMESTER', 'FIRST YEAR', 50000),
(2, 'SECOND SEMESTER', 'FIRST YEAR', 40000),
(3, 'FIRST SEMESTER', 'SECOND YEAR', 35000),
(4, 'SECOND SEMESTER', 'SECOND YEAR', 30000),
(5, 'FIRST SEMESTER', 'THIRD YEAR', 25000),
(6, 'SECOND SEMESTER', 'THIRD YEAR', 20000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_yr_tbl`
--
ALTER TABLE `academic_yr_tbl`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `admintbl`
--
ALTER TABLE `admintbl`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `coursetbl`
--
ALTER TABLE `coursetbl`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `course_reg_tbl`
--
ALTER TABLE `course_reg_tbl`
  ADD PRIMARY KEY (`snoc`);

--
-- Indexes for table `departmentstbl`
--
ALTER TABLE `departmentstbl`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `divert_tbl`
--
ALTER TABLE `divert_tbl`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `exams_tbl`
--
ALTER TABLE `exams_tbl`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `fees_tbl`
--
ALTER TABLE `fees_tbl`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `receipt_no` (`receipt_no`);

--
-- Indexes for table `lecturerstbl`
--
ALTER TABLE `lecturerstbl`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `nroll_tbl`
--
ALTER TABLE `nroll_tbl`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `program_tbl`
--
ALTER TABLE `program_tbl`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `sem_tbl`
--
ALTER TABLE `sem_tbl`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `studentstbl`
--
ALTER TABLE `studentstbl`
  ADD PRIMARY KEY (`admno`),
  ADD UNIQUE KEY `sno` (`sno`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `target_fees_tbl`
--
ALTER TABLE `target_fees_tbl`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_yr_tbl`
--
ALTER TABLE `academic_yr_tbl`
  MODIFY `sno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admintbl`
--
ALTER TABLE `admintbl`
  MODIFY `sno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `coursetbl`
--
ALTER TABLE `coursetbl`
  MODIFY `sno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `course_reg_tbl`
--
ALTER TABLE `course_reg_tbl`
  MODIFY `snoc` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `departmentstbl`
--
ALTER TABLE `departmentstbl`
  MODIFY `sno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `divert_tbl`
--
ALTER TABLE `divert_tbl`
  MODIFY `sno` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exams_tbl`
--
ALTER TABLE `exams_tbl`
  MODIFY `sno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fees_tbl`
--
ALTER TABLE `fees_tbl`
  MODIFY `sno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lecturerstbl`
--
ALTER TABLE `lecturerstbl`
  MODIFY `sno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `nroll_tbl`
--
ALTER TABLE `nroll_tbl`
  MODIFY `sno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `program_tbl`
--
ALTER TABLE `program_tbl`
  MODIFY `sno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sem_tbl`
--
ALTER TABLE `sem_tbl`
  MODIFY `sno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `studentstbl`
--
ALTER TABLE `studentstbl`
  MODIFY `sno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `target_fees_tbl`
--
ALTER TABLE `target_fees_tbl`
  MODIFY `sno` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
