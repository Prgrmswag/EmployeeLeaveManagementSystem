-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2022 at 04:24 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2020-11-03 05:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) NOT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `DepartmentCode`, `CreationDate`) VALUES
(1, 'Human Resource', 'HR', 'HR001', '2017-11-01 07:16:25'),
(2, 'Information Technology', 'IT', 'IT001', '2017-11-01 07:19:37');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `id` int(11) NOT NULL,
  `EmpId` varchar(100) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `EmailId` varchar(200) NOT NULL,
  `Password` varchar(180) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Dob` varchar(100) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(200) NOT NULL,
  `Country` varchar(150) NOT NULL,
  `Phonenumber` char(11) NOT NULL,
  `Status` int(1) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`id`, `EmpId`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `City`, `Country`, `Phonenumber`, `Status`, `RegDate`) VALUES
(211, '0064', 'Nik', '00', 'nik@g.com', '70da5989e4a0fc38f3c84116d89a6aa3', 'Male', '14 June, 2022', 'Human Resource', 'asdfasdf', 'Pune', 'India', '1231211110', 1, '2022-06-27 16:39:16'),
(213, '1231', 'asdas', 'asdas', 'admin@f', '81dc9bdb52d04dc20036dbd8313ed055', 'Male', '10 June, 2022', 'Information Technology', 'asda', 'asdas', 'asdas', '1234567890', 1, '2022-06-29 16:56:34'),
(214, '1231', 'asdas', 'asdas', 'admin@f', '81dc9bdb52d04dc20036dbd8313ed055', 'Male', '10 June, 2022', 'Information Technology', 'asda', 'asdas', 'asdas', '1234567890', 1, '2022-06-29 16:59:21'),
(215, '@323', 'adfsa', 'asfsd', 'admin@w', '81dc9bdb52d04dc20036dbd8313ed055', 'Female', '20 July, 2022', 'Human Resource', 'asdsa', 'asda', 'asdsa', '1231312312', 1, '2022-07-01 16:18:04');

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves`
--

CREATE TABLE `tblleaves` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleaves`
--

INSERT INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `AdminRemarkDate`, `Status`, `IsRead`, `empid`) VALUES
(60, 'Casual Leave', '25/03/2022', '12/03/2022', 'Personal work', '2022-06-29 14:31:53', 'Done.', '2022-06-29 20:02:58 ', 1, 1, 211),
(61, 'Medical Leave', '25/06/2022', '01/06/2022', 'Emergency', '2022-06-29 14:34:40', 'You don\'t have enough leaves availalble.', '2022-06-29 20:05:44 ', 2, 1, 211),
(62, 'Unplanned Leave', '05/03/2022', '05/03/2022', 'adf', '2022-06-29 14:39:17', 'sdfsa', '2022-07-01 23:37:12 ', 1, 1, 211),
(63, 'Medical Leave', '15/02/2022', '05/02/2022', 'asdfsdf', '2022-06-29 14:40:30', 'done', '2022-07-01 21:49:41 ', 1, 1, 211),
(64, 'Casual Leave', '13/02/2022', '03/02/2022', 'asd', '2022-06-29 14:40:59', 'asdads', '2022-06-29 20:11:33 ', 2, 1, 211),
(65, 'Casual Leave', '29/12/2022', '05/12/2022', 'Personal reason', '2022-07-01 16:20:30', 'Available leaves are not enough', '2022-07-01 21:51:20 ', 2, 1, 211),
(66, 'Casual Leave', '10/12/2022', '05/12/2022', 'asdfdsa', '2022-07-01 16:25:31', 'dfgdf', '2022-07-01 21:55:45 ', 1, 1, 211),
(67, 'Casual Leave', '20/03/2022', '12/03/2022', 'asdas', '2022-07-01 17:51:30', 'sfgdfg', '2022-07-01 23:21:53 ', 1, 1, 211),
(68, 'Casual Leave', '10/12/2022', '01/12/2022', 'sfasdf', '2022-07-01 18:08:42', 'sfdsf', '2022-07-01 23:38:59 ', 1, 1, 211),
(69, 'Unplanned Leave', '02/02/2022', '01/02/2022', 'asdsa', '2022-07-01 18:09:28', 'bfgvb', '2022-07-01 23:39:47 ', 1, 1, 211),
(70, 'Unplanned Leave', '02/02/2022', '01/02/2022', 'asdsa', '2022-07-01 18:17:04', NULL, NULL, 0, 1, 211),
(71, 'Unplanned Leave', '02/02/2022', '01/02/2022', 'asdsa', '2022-07-01 18:18:04', NULL, NULL, 0, 0, 211),
(72, 'Unplanned Leave', '02/02/2022', '01/02/2022', 'asdsa', '2022-07-01 18:18:14', 'a', '2022-08-20 14:11:17 ', 2, 1, 211),
(73, 'Unplanned Leave', '02/02/2022', '01/02/2022', 'asdsa', '2022-07-01 18:23:45', 'a', '2022-08-20 14:10:31 ', 1, 1, 211),
(74, 'Unplanned Leave', '02/02/2022', '01/02/2022', 'asdsa', '2022-07-01 18:24:22', 'no\r\n', '2022-07-15 9:26:33 ', 2, 1, 211),
(75, 'Medical Leave', '06/04/2056', '31/03/2000', '546', '2022-07-23 09:28:26', 'as', '2022-07-23 15:02:06 ', 2, 1, 211),
(76, 'Medical Leave', '07/08/2025', '19/05/2022', 's', '2022-07-23 09:53:29', NULL, NULL, 0, 1, 211),
(77, 'Casual Leave', '20/09/2022', '19/08/2022', 'NA', '2022-08-09 16:43:32', NULL, NULL, 0, 1, 211);

-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--

CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TotalLeaves` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `CreationDate`, `TotalLeaves`) VALUES
(79, 'Casual Leave', 'this is casual leave.', '2022-06-27 13:14:52', 25),
(89, 'Medical Leave', 'This is a medical leave', '2022-06-28 15:32:40', 15),
(90, 'Unplanned Leave', 'This is for unplanned leaves.', '2022-06-29 03:58:48', 15),
(91, 'Pregnancy Leave', 'This leaves are for pregnant women', '2022-06-29 14:51:36', 30),
(92, 'Example Leave', 'This is for example.', '2022-07-01 16:16:27', 20);

-- --------------------------------------------------------

--
-- Table structure for table `totalleaves`
--

CREATE TABLE `totalleaves` (
  `empId` int(11) NOT NULL,
  `CasualLeave` int(11) DEFAULT NULL,
  `MedicalLeave` int(11) DEFAULT NULL,
  `UnplannedLeave` int(11) DEFAULT NULL,
  `PregnancyLeave` int(11) DEFAULT NULL,
  `ExampleLeave` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `totalleaves`
--

INSERT INTO `totalleaves` (`empId`, `CasualLeave`, `MedicalLeave`, `UnplannedLeave`, `PregnancyLeave`, `ExampleLeave`) VALUES
(211, 6, 15, 13, 30, 20),
(213, 25, 15, 15, 30, 20),
(214, 25, 15, 15, 24, 20),
(215, 25, 15, 15, 30, 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblleaves`
--
ALTER TABLE `tblleaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `totalleaves`
--
ALTER TABLE `totalleaves`
  ADD PRIMARY KEY (`empId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `tblleaves`
--
ALTER TABLE `tblleaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
