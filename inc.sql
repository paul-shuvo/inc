-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2017 at 11:21 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inc`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `DEPARTMENT_NAME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`DEPARTMENT_NAME`) VALUES
('COPT'),
('CTS'),
('INT'),
('OPT');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EMPLOYEE_ID` bigint(20) NOT NULL,
  `EMPLOYEE_PASSWORD` varchar(30) NOT NULL,
  `EMPLOYEE_PRIVILEGE` int(11) NOT NULL,
  `EMPLOYEE_NAME` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EMPLOYEE_ID`, `EMPLOYEE_PASSWORD`, `EMPLOYEE_PRIVILEGE`, `EMPLOYEE_NAME`) VALUES
(1, 'asdasd', 1, 'Zia'),
(10, 'ahad', 3, 'ahad'),
(11, 'sharif', 2, 'sharif'),
(12, 'shahjahan', 2, 'shahjahan'),
(13, 'selim', 2, 'selim'),
(14, 'kamrul', 2, 'kamrul'),
(15, 'shamseer', 2, 'shamseer'),
(16, 'mahin', 2, 'mahin'),
(17, 'maruf', 2, 'maruf'),
(18, 'shohag', 3, 'shohag'),
(19, 'emon', 3, 'emon'),
(20, 'kaiser', 3, 'kaiser'),
(21, 'shabnam', 2, 'shabnam'),
(22, 'shuvo1234', 3, 'shuvo'),
(23, 'auntu', 3, 'auntu'),
(24, 'nazmul', 3, 'nazmul'),
(25, 'faiza', 3, 'faiza'),
(26, 'rajiur', 3, 'rajiur'),
(27, 'priyadip', 3, 'priyadip'),
(28, 'ashraf', 2, 'ashraf'),
(29, 'alo', 3, 'alo'),
(30, 'asad', 3, 'asad'),
(31, 'shishir', 3, 'shishir'),
(32, 'nasir', 3, 'nasir');

-- --------------------------------------------------------

--
-- Table structure for table `employee_task_assignment`
--

CREATE TABLE `employee_task_assignment` (
  `EMPLOYEE_ID` bigint(20) NOT NULL,
  `ASSIGNED_TO` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `TASK_CATEGORY` varchar(50) NOT NULL,
  `DATE_ASSIGNED` date DEFAULT NULL,
  `DATE_COMPLETED` date DEFAULT NULL,
  `TASK_ID` bigint(20) NOT NULL,
  `TASK_TITLE` varchar(70) NOT NULL,
  `TASK_AMOUNT` int(11) UNSIGNED NOT NULL,
  `TASK_PERCENTAGE` int(11) UNSIGNED DEFAULT '0',
  `DATE_ADDED` date NOT NULL,
  `TASK_AMOUNT_DONE` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `TASK_AMOUNT_ASSIGNED` int(11) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`TASK_CATEGORY`, `DATE_ASSIGNED`, `DATE_COMPLETED`, `TASK_ID`, `TASK_TITLE`, `TASK_AMOUNT`, `TASK_PERCENTAGE`, `DATE_ADDED`, `TASK_AMOUNT_DONE`, `TASK_AMOUNT_ASSIGNED`) VALUES
('TRX addition/ Deletion', '2017-01-18', NULL, 26, 'TRX ADD 78', 78, NULL, '2017-01-03', 6, 28),
(' Backup', '2017-01-18', '2017-01-08', 27, 'BACKUP DEC', 20, NULL, '2017-01-03', 20, 20),
(' Backup', '2017-01-16', NULL, 28, 'FEB Backup', 45, NULL, '2017-01-08', 0, 20),
('Traffic shifting', '2017-01-17', NULL, 29, 'FEB Traffic Shift', 40, NULL, '2017-01-08', 1, 14),
('BSC Add/del', '2017-01-12', NULL, 30, 'JAN BSC ADD', 50, NULL, '2017-01-08', 0, 2),
('3G Sectorization', '2017-01-19', NULL, 31, 'APRIL SECT', 30, NULL, '2017-01-08', 0, 2),
('EDB Tuning', NULL, NULL, 32, 'FEB EDB', 23, NULL, '2017-01-08', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `task_assignment`
--

CREATE TABLE `task_assignment` (
  `TASK_ASSIGNMENT_ID` bigint(20) NOT NULL,
  `ASSIGNED_TO` varchar(50) NOT NULL,
  `ASSIGNED_BY` varchar(50) NOT NULL,
  `DATE_ASSIGNED` date NOT NULL,
  `TASK_ID` bigint(20) NOT NULL,
  `DATE_ACCEPTED` date DEFAULT NULL,
  `DATE_COMPLETED` date DEFAULT NULL,
  `ASSIGNED_AMOUNT` int(11) UNSIGNED NOT NULL,
  `DONE_AMOUNT` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task_assignment`
--

INSERT INTO `task_assignment` (`TASK_ASSIGNMENT_ID`, `ASSIGNED_TO`, `ASSIGNED_BY`, `DATE_ASSIGNED`, `TASK_ID`, `DATE_ACCEPTED`, `DATE_COMPLETED`, `ASSIGNED_AMOUNT`, `DONE_AMOUNT`) VALUES
(1, 'shohag', 'zia', '2016-12-14', 1, '2016-12-15', '2016-12-14', 16, 0),
(5, 'priyadip', 'zia', '2016-12-17', 1, '2016-12-13', '2016-12-14', 13, 13),
(6, 'shohag', 'zia', '2016-12-17', 2, NULL, '2016-12-14', 20, 0),
(7, 'priyadip', 'zia', '2016-12-18', 2, '2016-12-13', NULL, 15, 0),
(8, 'shohag', 'zia', '2016-12-18', 3, NULL, '2016-12-22', 26, 0),
(9, 'shohag', 'zia', '2016-12-17', 4, '2016-12-13', NULL, 26, 0),
(10, 'shohag', 'zia', '2016-12-17', 5, '2016-12-13', NULL, 10, 0),
(11, 'priyadip', 'zia', '2016-12-16', 6, '2016-12-13', NULL, 8, 8),
(12, 'shohag', 'zia', '2016-12-18', 6, '2016-12-13', NULL, 10, 0),
(13, 'priyadip', 'zia', '2016-12-17', 7, '2016-12-13', '2016-12-14', 20, 10),
(14, 'priyadip', 'zia', '2016-12-18', 8, '2016-12-13', '2016-12-14', 10, 10),
(15, 'shohag', 'zia', '2016-12-18', 9, '2016-12-13', NULL, 15, 0),
(16, 'shohag', 'zia', '2016-12-19', 10, '2016-12-14', NULL, 65, 0),
(17, 'priyadip', 'zia', '2016-12-19', 10, '2016-12-14', NULL, 10, 10),
(18, 'shohag', 'zia', '2016-12-29', 11, '2016-12-13', '2016-12-14', 0, 0),
(19, 'shohag', 'zia', '2016-12-19', 14, '2016-12-15', NULL, 20, 0),
(20, 'priyadip', 'zia', '2016-12-19', 14, '2016-12-22', NULL, 20, 0),
(21, 'shohag', 'shahjahan', '2016-12-26', 16, '2016-12-13', NULL, 12, 12),
(22, 'shohag', 'zia', '2016-12-22', 5, NULL, NULL, 20, 0),
(23, 'priyadip', 'zia', '2016-12-18', 11, '2016-12-14', NULL, 10, 0),
(24, 'priyadip', 'zia', '2016-12-18', 9, '2016-12-18', NULL, 10, 2),
(25, 'shohag', 'zia', '2016-12-18', 17, NULL, NULL, 10, 0),
(26, 'priyadip', 'zia', '2016-12-19', 21, '2016-12-22', NULL, 20, 12),
(27, 'priyadip', 'zia', '2016-12-22', 20, NULL, NULL, 10, 5),
(28, 'priyadip', 'zia', '2016-12-31', 15, NULL, NULL, 15, 0),
(29, 'priyadip', 'zia', '2016-12-31', 22, NULL, NULL, 20, 0),
(30, 'shohag', 'zia', '2017-01-12', 26, '2017-01-08', NULL, 23, 0),
(31, 'ahad', 'zia', '2017-01-25', 27, '2017-01-08', '2017-01-08', 17, 17),
(32, 'rajiur', 'zia', '2017-01-18', 27, '2017-01-08', '2017-01-08', 3, 3),
(33, 'priyadip', 'zia', '2017-01-16', 28, '2017-01-08', NULL, 20, 0),
(34, 'selim', 'zia', '2017-01-13', 29, NULL, NULL, 12, 0),
(35, 'priyadip', 'zia', '2017-01-17', 29, '2017-01-08', NULL, 2, 1),
(36, 'kaiser', 'shahjahan', '2017-01-18', 26, '2017-01-08', '2017-01-08', 5, 5),
(37, 'ahad', 'shahjahan', '2017-01-12', 30, '2017-01-08', NULL, 2, 0),
(38, 'emon', 'zia', '2017-01-19', 31, NULL, NULL, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `task_category`
--

CREATE TABLE `task_category` (
  `TASK_CATEGORY_TITLE` varchar(100) NOT NULL,
  `TASK_CATEGORY_DEPARTMENT` varchar(100) NOT NULL,
  `TASK_CATEGORY_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task_category`
--

INSERT INTO `task_category` (`TASK_CATEGORY_TITLE`, `TASK_CATEGORY_DEPARTMENT`, `TASK_CATEGORY_ID`) VALUES
('EDB Tuning', 'COPT', 11),
('STP', 'COPT', 12),
(' Backup', 'COPT', 13),
(' Re-Homing/Iub port shifting/Lac Optimization', 'COPT', 14),
(' Channel Tuning & RP Parameter Tunning (Neighbors and Parameters)', 'COPT', 15),
(' GPTTS Support & MLPM', 'COPT', 16),
(' Resources pool optimization', 'COPT', 17),
('FBB', 'CTS', 18),
('EMS ', 'CTS', 19),
('WB(TDM)', 'CTS', 20),
('Traffic shifting', 'CTS', 21),
('LOS Break', 'CTS', 22),
('MGW Int./Deletion', 'CTS', 23),
('TMGW Modernization(135 STM)', 'CTS', 24),
('BSC Add/del', 'CTS', 25),
('IPBH for BTS', 'CTS', 26),
('IPBH for Traffic shifting', 'CTS', 27),
('FBB MW configuration', 'CTS', 28),
('TMGW deletion', 'CTS', 29),
('ICX Int./Opt.', 'CTS', 30),
('hiT Optimization', 'CTS', 31),
('ET Int./Off loading', 'CTS', 32),
('Switch Configuration', 'CTS', 33),
('TDM Add/Del', 'CTS', 34),
('New BTS (2g)', 'INT', 35),
('IBS', 'INT', 36),
('Relocation / Reposition (2G + 3G)', 'INT', 37),
('New 3G ', 'INT', 38),
('Small Cell(FEMTO, Pico,ATOM) Integration', 'INT', 39),
('Hotline support', 'INT', 40),
('Cell addition (2G)', 'OPT', 41),
('TRX addition/ Deletion', 'OPT', 42),
('WBBP card integration', 'OPT', 43),
('2T4R Deployment', 'OPT', 44),
('3G Sectorization', 'OPT', 45),
('Abis BW for 2G & iuB BW ', 'OPT', 46),
('MRFU/MRRU Addition', 'OPT', 47);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`DEPARTMENT_NAME`),
  ADD UNIQUE KEY `DEPARTMENT_NAME` (`DEPARTMENT_NAME`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EMPLOYEE_ID`),
  ADD UNIQUE KEY `EMPLOYEE_NAME` (`EMPLOYEE_NAME`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`TASK_ID`),
  ADD UNIQUE KEY `TASK_ID` (`TASK_ID`);

--
-- Indexes for table `task_assignment`
--
ALTER TABLE `task_assignment`
  ADD PRIMARY KEY (`TASK_ASSIGNMENT_ID`);

--
-- Indexes for table `task_category`
--
ALTER TABLE `task_category`
  ADD PRIMARY KEY (`TASK_CATEGORY_ID`),
  ADD UNIQUE KEY `TASK_CATEGORY_TITLE` (`TASK_CATEGORY_TITLE`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EMPLOYEE_ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `TASK_ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `task_assignment`
--
ALTER TABLE `task_assignment`
  MODIFY `TASK_ASSIGNMENT_ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `task_category`
--
ALTER TABLE `task_category`
  MODIFY `TASK_CATEGORY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
