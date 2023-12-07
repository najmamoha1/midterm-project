-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 23, 2023 at 06:04 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `security_check`
--

-- --------------------------------------------------------

--
-- Table structure for table `building`
--

CREATE TABLE `building` (
  `ID` int(11) NOT NULL,
  `building` varchar(255) NOT NULL,
  `office` varchar(20) NOT NULL,
  `building_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `building`
--

INSERT INTO `building` (`ID`, `building`, `office`, `building_status`) VALUES
(20, '663', 'CEO', 'Active'),
(21, '661', 'A', 'Active'),
(26, 'Student Center', 'COMMUNICATION', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `ID` int(11) NOT NULL,
  `equipname` varchar(255) NOT NULL,
  `serialnumber` varchar(20) NOT NULL,
  `dispatcher` varchar(20) NOT NULL,
  `destination` varchar(20) NOT NULL,
  `reason` varchar(20) NOT NULL,
  `equipstatus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`ID`, `equipname`, `serialnumber`, `dispatcher`, `destination`, `reason`, `equipstatus`) VALUES
(20, 'Monitor', 'MON123', 'Joseph K', 'CEO', 'New upgrades', 'New');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(5) NOT NULL,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` char(45) DEFAULT NULL,
  `Security_Code` int(50) NOT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `Security_Code`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Najma Mohamed', 'admin', 1010, 9123456789, 'admin@gmail.com', '7488e331b8b64e5794da3fa4eb10ad5d', '2023-11-16 03:35:37');

-- --------------------------------------------------------

--
-- Table structure for table `tblvisitor`
--

CREATE TABLE `tblvisitor` (
  `ID` int(5) NOT NULL,
  `VisitorName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Address` varchar(250) DEFAULT NULL,
  `Gender` varchar(11) NOT NULL,
  `Building` varchar(120) NOT NULL,
  `BuildingNo` varchar(55) NOT NULL,
  `WhomtoMeet` varchar(120) DEFAULT NULL,
  `Reason` varchar(120) DEFAULT NULL,
  `EnterDate` timestamp NULL DEFAULT current_timestamp(),
  `remark` varchar(255) DEFAULT NULL,
  `outtime` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblvisitor`
--

INSERT INTO `tblvisitor` (`ID`, `VisitorName`, `MobileNumber`, `Address`, `Gender`, `Building`, `BuildingNo`, `WhomtoMeet`, `Reason`, `EnterDate`, `remark`, `outtime`) VALUES
(17, 'Samantha Jane', 912354789, 'Sample Address', 'Female', '623', '        A    ', 'The Owner', 'Sample Business', '2023-11-16 07:31:35', 'Served by Julian', '2023-11-16 16:07:19'),
(18, 'Tha Great Fikshun', 711754321, 'Nairobi', 'Male', '663', 'CEO', 'ICT OFFICER', 'for inquiries', '2023-11-17 09:31:48', 'I have been Served well. Thank you', '2023-11-17 09:32:31'),
(19, 'Phillip Omondi', 700334455, 'Nairobi', 'Male', 'Student Center', 'COMMUNICATION', 'CEO', 'Approvals Checking', '2023-11-17 09:39:34', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblvisitor`
--
ALTER TABLE `tblvisitor`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `building`
--
ALTER TABLE `building`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tblvisitor`
--
ALTER TABLE `tblvisitor`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
