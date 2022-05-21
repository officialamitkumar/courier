-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2019 at 07:32 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(50) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 9878987987, 'sarita@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-03-26 06:14:39');

-- --------------------------------------------------------

--
-- Table structure for table `tblbranch`
--

CREATE TABLE `tblbranch` (
  `ID` int(11) NOT NULL,
  `BranchName` varchar(120) DEFAULT NULL,
  `BranchContactnumber` bigint(11) DEFAULT NULL,
  `BranchEmail` varchar(120) DEFAULT NULL,
  `BranchAddress` varchar(120) DEFAULT NULL,
  `BranchCity` varchar(120) DEFAULT NULL,
  `BranchState` varchar(120) DEFAULT NULL,
  `BranchPincode` varchar(120) DEFAULT NULL,
  `BranchCountry` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbranch`
--

INSERT INTO `tblbranch` (`ID`, `BranchName`, `BranchContactnumber`, `BranchEmail`, `BranchAddress`, `BranchCity`, `BranchState`, `BranchPincode`, `BranchCountry`) VALUES
(6, 'CMS Delhi', 8977977778, 'delhi@gmail.com', 'c-140, mayur vihar ph-3, near sbi bank', 'New Delhi', 'Delhi', '2858978', 'India'),
(7, 'CMS Agra', 8797987777, 'agra@gmail.com', 'D-124, gohana road, near reliance fresh', 'Agra', 'UP', '221001', 'India'),
(8, 'CMS Kanpur', 8988898889, 'kanpur@gmail.com', 'F-171, Maharana Pratap Road Near SBI Bank Block C', 'Kanpur', 'UP', '2210014', 'India'),
(9, 'Test branch', 1234567890, 'test@gmail.com', 'Test Address', 'New Delhi', 'Delhi', '110091', 'India'),
(10, 'Noida Branch', 987654321, 'noidacm@test.com', 'A-1 Sector 63', 'Noida', 'UP', '201301', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `tblcourier`
--

CREATE TABLE `tblcourier` (
  `ID` int(11) NOT NULL,
  `RefNumber` varchar(120) DEFAULT NULL,
  `SenderBranch` varchar(120) DEFAULT NULL,
  `SenderName` varchar(120) DEFAULT NULL,
  `SenderContactnumber` bigint(11) DEFAULT NULL,
  `SenderAddress` varchar(120) DEFAULT NULL,
  `SenderCity` varchar(120) DEFAULT NULL,
  `SenderState` varchar(120) DEFAULT NULL,
  `SenderPincode` varchar(120) DEFAULT NULL,
  `SenderCountry` varchar(120) DEFAULT NULL,
  `RecipientName` varchar(120) DEFAULT NULL,
  `RecipientContactnumber` bigint(11) DEFAULT NULL,
  `RecipientAddress` varchar(120) DEFAULT NULL,
  `RecipientCity` varchar(120) DEFAULT NULL,
  `RecipientState` varchar(120) DEFAULT NULL,
  `RecipientPincode` varchar(120) DEFAULT NULL,
  `RecipientCountry` varchar(120) DEFAULT NULL,
  `CourierDes` varchar(250) DEFAULT NULL,
  `ParcelWeight` varchar(120) DEFAULT NULL,
  `ParcelDimensionlen` varchar(120) DEFAULT NULL,
  `ParcelDimensionwidth` varchar(120) DEFAULT NULL,
  `ParcelDimensionheight` varchar(120) DEFAULT NULL,
  `ParcelPrice` varchar(120) DEFAULT NULL,
  `Status` varchar(124) DEFAULT NULL,
  `CourierDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcourier`
--

INSERT INTO `tblcourier` (`ID`, `RefNumber`, `SenderBranch`, `SenderName`, `SenderContactnumber`, `SenderAddress`, `SenderCity`, `SenderState`, `SenderPincode`, `SenderCountry`, `RecipientName`, `RecipientContactnumber`, `RecipientAddress`, `RecipientCity`, `RecipientState`, `RecipientPincode`, `RecipientCountry`, `CourierDes`, `ParcelWeight`, `ParcelDimensionlen`, `ParcelDimensionwidth`, `ParcelDimensionheight`, `ParcelPrice`, `Status`, `CourierDate`) VALUES
(1, '995097847', 'CMS Agra', 'Jairam', 7797979798, 'F-124, shivala kailash puram,\r\n', 'Varanasi', 'UP', '222221', 'India', 'Kumar', 8987897897, 'G-134, Mayur niwas', 'New Delhi', 'Delhi', '110096', '', 'hjguyuythui', '.5 kg', '25', '35', '20', '200', 'Intransit', '2018-03-27 17:08:38'),
(2, '148776252', 'CMS Agra', 'Akash Jha', 8978897989, 'B-20/122, hauzkhas, Near MTNL office', 'New Delhi', 'Delhi', '222222', 'India', 'Parakash Sharma', 3698745687, 'Flat No.145 frist floor Neeva Aparment Southwest', 'Kanpur', 'UP', '4545145', 'India', 'Parcel Contain Toys', '2kg', '25 inch', '35 inch', '20 inch', '500', 'Delivered', '2019-03-28 10:45:07'),
(3, '887985411', 'CMS Agra', 'Gyan Ganga', 8989898898, 'H-120 gali no 82 near relaince fresh', 'Agra', 'UP', '55555555', 'India', 'Harish', 9898989898, 'koohinoor apartment bulding no 4', 'Allahabad', 'UP', '45445445', 'India', 'NA', '.5kg', '15', '16', '10', '250', 'Delivered', '2019-03-28 11:28:19'),
(4, '997614830', 'CMS Kanpur', 'Rahul Mahajan', 8569745697, 'H.N0-B-3/4, Gulmar Colony ', 'Kanpur', 'UP', '221441', 'India', 'Deepika Singh', 987456123, 'Flat No:104, harishnagar', 'Manaili', 'HP', '551224', 'India', 'Parcel Contain fibre', '3.5 kg', '45 inch', '30 inch', '25 inch', '800 ', 'Delivered', '2019-04-03 07:31:36'),
(5, '824523415', 'CMS Kanpur', 'Mohan Das', 8979797979, 'abc niwas', 'Kanpur', 'UP', '254879', 'India', 'Kaushal', 9879797979, 'xyz b-3/4 ', 'Muradabad', 'UP', '897979', 'India', 'NA', '1.4 kg', '25 inch', '20 inch', '15 inch', '300', 'Out for Delivery', '2019-04-03 16:16:47'),
(6, '347227212', 'CMS Kanpur', 'Falguni Singh', 8987897744, 'abc hauz khas', 'Kanpur', 'UP', '897979', 'India', 'Drashan Singh', 7998789887, 'fhgjhuihkkjhklj', 'Lucknow', 'UP', '789898', 'India', 'Parcel contain fibre', '.5 kg', '8 inch', '10 inch', '12 inch', '80', 'Courier Pickup', '2019-04-03 16:19:27'),
(7, '486484879', 'CMS Delhi', 'Ankush Sharma', 789456133, 'Firoz colony H.No:34/44', 'Delhi', 'New Delhi', '456879', 'India', 'Divyansh', 8979797977, 'Viraz Niwas H.No:45-34 A, Near SBI Bank', 'Kanpur', 'UP', '456123', 'India', 'Parcel contains crockery', '2.5 kg', '45 inch', '30 inch', '25 inch', '450', 'Shipped', '2019-04-04 06:43:01'),
(8, '338122505', 'CMS Agra', 'Raghav', 8977997979, 'H.NO:B3/4 shival bajrang park', 'Agra', 'UP', '897977', 'India', 'Manish', 7897798979, 'Banglo No:183, goregao', 'Mumbai', 'Maharastra', '987989', 'India', 'NA', '.50 Kg', '85 inch', '75 inch', '25 inc', '200', '0', '2019-04-10 10:54:25'),
(9, '700159918', 'Noida Branch', 'Anuj kumar', 2112441241, 'New Dlehi India', 'New Delhi', 'Delhi', '110091', 'India', 'Rahul', 4571545127, 'Pune', 'Pune', 'MH', '123123', 'India', 'This is sample text for Testing', '200 gm', '12', '10', '12', '200', '0', '2019-04-14 13:06:01'),
(10, '791805913', 'Noida Branch', 'Amit kumar', 1234567890, 'A-10  Noida 63', 'Nodia', 'UP', '201301', 'India', 'Sanjeev', 987654432, 'Gurugram', 'Gurugram', 'Haryana', '124124', 'India', 'This is sample text for testing', '200gm', '12', '10', '20', '125', 'Intransit', '2019-04-14 13:07:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblcouriertracking`
--

CREATE TABLE `tblcouriertracking` (
  `ID` int(11) NOT NULL,
  `CourierId` int(11) DEFAULT NULL,
  `remark` mediumtext,
  `status` varchar(255) DEFAULT NULL,
  `StatusDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcouriertracking`
--

INSERT INTO `tblcouriertracking` (`ID`, `CourierId`, `remark`, `status`, `StatusDate`) VALUES
(1, 2, ' Courier Shipped', 'Shipped', '2019-03-31 18:07:03'),
(2, 2, ' Product Intransit ', 'Intransit', '2019-03-31 18:15:44'),
(3, 2, ' Product has been deliver to abc.', 'Delivered', '2019-03-31 18:23:17'),
(4, 1, ' Intransit', 'Intransit', '2019-03-31 18:26:57'),
(5, 3, ' Shipped', 'Shipped', '2019-04-01 05:10:08'),
(6, 3, ' Intransit', 'Intransit', '2019-04-01 05:11:39'),
(7, 3, ' Arrived at nearest hub in city', 'Arrived at Destination', '2019-04-01 05:12:33'),
(8, 3, ' Out for delivery Today', 'Out for Delivery', '2019-04-01 05:13:11'),
(9, 3, ' Delivered Receive by Harish', 'Courier Pickup', '2019-04-01 05:13:57'),
(10, 3, ' Delivered', 'Delivered', '2019-04-01 05:14:25'),
(11, 4, ' Parcel Has been picked', 'Shipped', '2019-04-03 07:33:01'),
(12, 4, ' Parcel reached hub city', 'Intransit', '2019-04-03 07:33:51'),
(13, 4, ' Arrived at destination', 'Arrived at Destination', '2019-04-03 07:34:31'),
(14, 4, ' Parcel out for delivery', 'Out for Delivery', '2019-04-03 07:35:10'),
(15, 4, ' Parcel has been delivered', 'Delivered', '2019-04-03 07:35:38'),
(16, 7, ' Courier Pick Up', 'Courier Pickup', '2019-04-04 06:44:38'),
(17, 5, ' Courier has been picked', 'Courier Pickup', '2019-04-04 06:59:54'),
(18, 5, ' Shipped', 'Shipped', '2019-04-04 07:00:23'),
(19, 5, ' Parcel is on the way', 'Intransit', '2019-04-04 07:01:13'),
(20, 5, ' Arrived at destination', 'Arrived at Destination', '2019-04-04 07:02:02'),
(21, 5, ' Out for delivery', 'Out for Delivery', '2019-04-04 07:02:42'),
(22, 6, ' Courier is pickup', 'Courier Pickup', '2019-04-10 10:55:00'),
(23, 7, ' Shipped', 'Shipped', '2019-04-10 10:55:44'),
(24, 10, ' Courier picked up', 'Courier Pickup', '2019-04-14 13:08:20'),
(25, 10, ' Courier is in Intrnaist', 'Intransit', '2019-04-14 13:08:44');

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff`
--

CREATE TABLE `tblstaff` (
  `ID` int(10) NOT NULL,
  `BranchName` varchar(120) DEFAULT NULL,
  `StaffName` varchar(120) DEFAULT NULL,
  `StaffMobilenumber` bigint(11) DEFAULT NULL,
  `StaffEmail` varchar(120) DEFAULT NULL,
  `StaffPassword` varchar(120) DEFAULT NULL,
  `StaffRegdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstaff`
--

INSERT INTO `tblstaff` (`ID`, `BranchName`, `StaffName`, `StaffMobilenumber`, `StaffEmail`, `StaffPassword`, `StaffRegdate`, `status`) VALUES
(2, 'CMS Delhi', 'Harish Pandey', 8978987996, 'harish@gmail.com', '202cb962ac59075b964b07152d234b70', '2019-03-26 17:33:56', 0),
(3, 'CMS Delhi', 'Jao', 7987464678, 'jao@gmail.com', '202cb962ac59075b964b07152d234b70', '2019-03-26 17:35:56', 1),
(5, 'CMS Agra', 'Kumar', 4789747897, 'kumar@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-03-26 17:49:10', 1),
(6, 'CMS Kanpur', 'Girish Chandra', 8989985624, 'chandra@gmail.com', '202cb962ac59075b964b07152d234b70', '2019-04-03 07:03:29', 1),
(7, 'Noida Branch', 'Anuj', 1234567890, 'noidatest@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-04-14 12:53:31', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbranch`
--
ALTER TABLE `tblbranch`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcourier`
--
ALTER TABLE `tblcourier`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcouriertracking`
--
ALTER TABLE `tblcouriertracking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblstaff`
--
ALTER TABLE `tblstaff`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbranch`
--
ALTER TABLE `tblbranch`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblcourier`
--
ALTER TABLE `tblcourier`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblcouriertracking`
--
ALTER TABLE `tblcouriertracking`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tblstaff`
--
ALTER TABLE `tblstaff`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
