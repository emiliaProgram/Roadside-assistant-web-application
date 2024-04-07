-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2021 at 05:03 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehassitancemsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `Admin`
--

CREATE TABLE `Admin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(100) DEFAULT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `Department` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Admin`
--

INSERT INTO `Admin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `CreatedDate`, `Department`) VALUES
(1, 'Robert California', 'robert', 9877625419, 'robert@gmail.com', 'a14dfbae985c4730a6b717260f1f7280', '2022-03-31 01:20:26', 'HR'),
(2, 'Deangelo Vickers', 'deangelo', 6355427189, 'deangelo@gmail.com', '7502706975e979b7150239f3fb086318', '2022-03-31 01:22:56', 'CRM');

-- --------------------------------------------------------

--
-- Table structure for table `Bookings`
--

CREATE TABLE `Bookings` (
  `ID` int(10) NOT NULL,
  `BookingNumber` int(10) DEFAULT NULL,
  `CustomerID` varchar(200) DEFAULT NULL,
  `PickupLoc` varchar(200) DEFAULT NULL,
  `Destination` varchar(200) DEFAULT NULL,
  `PickupDate` varchar(200) DEFAULT NULL,
  `PickupTime` varchar(200) DEFAULT NULL,
  `DateofRequest` timestamp NOT NULL DEFAULT current_timestamp(),
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `AssignTo` varchar(200) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `COST` int(10) DEFAULT NULL,
  `Rating` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Bookings`
--

INSERT INTO `Bookings` (`ID`, `BookingNumber`, `CustomerID`, `PickupLoc`, `Destination`, `PickupDate`, `PickupTime`, `DateofRequest`, `Remark`, `Status`, `AssignTo`, `UpdationDate`, `Rating`, `COST`) VALUES
(1, 123456789, 'Holly', 'Wollongong', 'Keiraville', '2021-08-27', '14:34', '2022-04-05 04:03:19', NULL, 'Rejected', '', '2022-04-05 08:49:45', 5, 100),
(2, 012345678, 'Jan', 'Shellharbour', 'Kiama', '2022-04-05', '14:00', '2022-04-05 04:25:40', NULL,  'On The Way', 'Anna', '2022-04-05 03:54:08', 4, 200),
(3, 9012345678, 'Holly', 'Wollongong', 'West Wollongong', '2022-04-05', '14:00', '2022-04-05 04:26:55', NULL,  'Completed', 'Anna', '2022-04-05 10:54:16', NULL, 300),
(4, 8901234567, 'Helene', 'Shellharbour', 'Towradgi', '2022-04-05', '12:08', '2022-04-05 05:37:19', NULL, NULL, 'Anna', '2022-04-05 05:37:19', NULL, 100),
(5, 7890123456, 'Jan', 'Wollongong', 'Towradgi', '2022-04-05', '13:47', '2022-04-05 05:14:30', NULL, NULL, NULL, '2022-04-05 05:14:30', NULL, 200),
(6, 6789012345, 'Holly', 'Wollongong', 'Towradgi', '2022-04-05', '22:59', '2022-04-05 11:23:28', NULL,  'Completed', 'Jan', '2022-04-05 12:52:56', NULL, 400),
(7, 5678901234, 'Holly', 'Shellharbour', 'Kiama', '2022-04-05', '09:00', '2022-04-05 16:58:08', NULL, NULL, NULL, '2022-04-05 16:58:08', NULL, 300),
(8, 4567890123, 'Holly', 'Dapto', 'Towradgi', '2022-04-05', '15:35', '2022-04-05 17:03:27', NULL, 'Completed', 'David', '2022-04-05 17:07:10', NULL, 100);

-- --------------------------------------------------------

--
-- Table structure for table `Motorists`
--

CREATE TABLE `Motorists` (
  `ID` int(10) NOT NULL,
  `CustomerID` varchar(20) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `JoiningDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Membership` varchar(200) DEFAULT 'Pay-On-Demand'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Motorists`
--

INSERT INTO `Motorists` (`ID`, `CustomerID`, `Name`, `MobileNumber`, `Email`, `Address`, `Password`, `JoiningDate`, `Membership`) VALUES
(1, 'Holly', 'Holly', 454878545, 'holly@gmail.com', '52 Belmont Rd, Glenfield, NSW 2167', '418f4c73eb77cd1763b046554aac91ae', '2022-04-01 13:29:39', 'Pay-On-Demand'),
(2, 'Jan', 'Jan', 414523665, 'jan@gmail.com', '14 Auburn Avenue, Yagoona, NSW 2199', 'ebc258d7cf55874ba2f265410fbf2f80', '2022-04-01 05:57:02', 'Pay-On-Demand'),
(4, 'Helene', 'Helene', 484754544, 'helene@gmail.com', '35 Fairy Medow, Wollongong 2522', '79994bfd478b51788b9f2e3600665903', '2022-04-01 05:19:18', 'Subscription'),
(6, 'Carol', 'Carol', 469856321, 'carol@gmail.com', '44 McBurney, Dapto, NSW 2520', '7a546c5b549226f56694647ae8c3fd8a', '2022-04-01 17:04:44', 'Pay-On-Demand');

-- --------------------------------------------------------

CREATE TABLE `Professionals` (
  `ID` int(10) NOT NULL,
  `CustomerID` varchar(20) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `JoiningDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table for Roadside assistance professionals; password is needed to change
--

INSERT INTO `Professionals` (`ID`, `CustomerID`, `Name`, `MobileNumber`, `Email`, `Address`, `Password`, `JoiningDate`) VALUES
(1, 'Anna', 'Anna', 450427400, 'anna@gmail.com', '37 Belmore Road, Burwood, NSW 2187', '188cb5da69284075186a979f911668bb', '2022-03-30 10:20:42'),
(2, 'David', 'David', 401389446, 'david@gmail.com', '03 Montclair, Fairfield, NSW 2165', 'ef50d9c4fcd67672a362116e328aa727', '2022-03-30 11:31:51'),
(4, 'Jonathan', 'Jonathan', 455004537, 'jonathan@gmail.com', '21 John St, Thirroul, NSW 2567', 'c0c14666b5e1a9fd8b8bad271d193185', '2022-03-29 09:46:23'),
(6, 'Rita', 'Rita', 404753787, 'rita@gmail.com', '05 Glebe St, Macarthur, NSW 2173', 'f980773d0c119d60b23fa3e068e96a71', '2022-03-31 12:13:05');

-- --------------------------------------------------------

--
-- Table structure for table `PageText`
--

CREATE TABLE `PageText` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PageText`
--

INSERT INTO `PageText` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', 'Our excellent and caring services will offer you the Roadside Assistance Package – a 24x7 emergency support provided in the event of any mechanical/electrical breakdown or traffic accident of the motorbikes. ... If your car has met with a major accident and is immovable, we will help you to tow your motorbike to the nearest workshop or legal authorities', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', '15 NorthFields Avenue, Wollongong, NSW 2522', 'info@motoristhelp.com', '0212345678', NULL, 'Operates 24/7');

-- --------------------------------------------------------

--
-- Table structure for table `BookingStatus`
--

CREATE TABLE `BookingStatus` (
  `ID` int(10) NOT NULL,
  `BookingNumber` int(10) DEFAULT NULL,
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `BookingStatus`
--

INSERT INTO `BookingStatus` (`ID`, `BookingNumber`, `Remark`, `Status`, `UpdationDate`) VALUES
(1, 123456789, 'We assist you', 'Approved', '2022-04-05 08:43:14'),
(2, 012345678, 'Address not sufficient', 'Rejected', '2022-04-05 08:49:45'),
(3, 9012345678, 'On the way', 'On The Way', '2022-04-05 05:01:51'),
(4, 8901234567, 'Task completed', 'Completed', '2022-04-05 10:54:16'),
(5, 7890123456, 'Approved', 'Approved', '2021-08-31 03:53:08'),
(6, 6789012345, 'I am on the way', 'On The Way', '2022-04-05 03:54:08'),
(7, 5678901234, 'Your request has been approved', 'Approved', '2022-04-05 11:26:29'),
(8, 4567890123, 'On the way', 'On The Way', '2022-04-05 12:49:35');


ALTER TABLE `Admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Bookings`
--
ALTER TABLE `Bookings`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BookingNumber` (`BookingNumber`);

--
-- Indexes for table `Motorists`
--
ALTER TABLE `Motorists`
  ADD PRIMARY KEY (`ID`);
  
--
-- Indexes for table `Professionals`
--
  ALTER TABLE `Professionals`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `PageText`
--
ALTER TABLE `PageText`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `BookingStatus`
--
ALTER TABLE `BookingStatus`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Admin`
--
ALTER TABLE `Admin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Bookings`
--
ALTER TABLE `Bookings`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Motorists`
--
ALTER TABLE `Motorists`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Motorists`
--
ALTER TABLE `Professionals`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `PageText`
--
ALTER TABLE `PageText`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `BookingStatus`
--
ALTER TABLE `BookingStatus`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
