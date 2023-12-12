-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 07, 2023 at 05:59 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_vandal_living`
--
CREATE DATABASE IF NOT EXISTS `db_vandal_living` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_vandal_living`;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `contactID` int(11) NOT NULL AUTO_INCREMENT,
  `contactName` varchar(50) NOT NULL,
  `contactNumber` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` varchar(500) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contactID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contactID`, `contactName`, `contactNumber`, `email`, `subject`, `message`, `status`) VALUES
(2, 'JK', '22564879', 'naga@gmail.com', 'Login', 'I cant Login', 0),
(4, 'JK', '22569878', 'jk@gmail.com', 'Booking', 'Please help me to book', 0);

-- --------------------------------------------------------

--
-- Table structure for table `emergencycontactinfo`
--

CREATE TABLE IF NOT EXISTS `emergencycontactinfo` (
  `emergencycontactinfoID` int(11) NOT NULL AUTO_INCREMENT,
  `vandalID` int(11) NOT NULL,
  `contactName` varchar(50) DEFAULT NULL,
  `relationship` varchar(50) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL,
  `street2` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zipCode` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `emergencyNumber` varchar(50) DEFAULT NULL,
  `emergencyEmail` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`emergencycontactinfoID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `emergencycontactinfo`
--

INSERT INTO `emergencycontactinfo` (`emergencycontactinfoID`, `vandalID`, `contactName`, `relationship`, `street`, `street2`, `city`, `state`, `zipCode`, `country`, `emergencyNumber`, `emergencyEmail`, `status`) VALUES
(6, 7, '2', '2', '2', '2', '2', '2', '2', '2', '2', 'we@G.CO', 0),
(7, 7, '56', '4', '45', '45', '4', '54', '45', '45', '45', 'fd2FF@hjj.hh', 0),
(8, 7, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0);

-- --------------------------------------------------------

--
-- Table structure for table `floorplan`
--

CREATE TABLE IF NOT EXISTS `floorplan` (
  `floorPlanID` int(11) NOT NULL AUTO_INCREMENT,
  `livingSpaceID` int(11) NOT NULL,
  `floorName` varchar(50) NOT NULL,
  `totalRooms` int(11) NOT NULL,
  `genderCategory` varchar(50) NOT NULL,
  `floorType` varchar(50) NOT NULL,
  `floorImage` varchar(50) NOT NULL,
  `staus` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`floorPlanID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `floorplan`
--

INSERT INTO `floorplan` (`floorPlanID`, `livingSpaceID`, `floorName`, `totalRooms`, `genderCategory`, `floorType`, `floorImage`, `staus`) VALUES
(1, 3, 'Ground Floor', 4, 'Male', 'Academic', 'IMG_1844.png', 0),
(3, 3, '1st Floor', 10, 'Female', 'Computer Science', 'IMG_1163.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `galleryimages`
--

CREATE TABLE IF NOT EXISTS `galleryimages` (
  `galleryImageID` int(11) NOT NULL AUTO_INCREMENT,
  `livingSpaceID` int(11) NOT NULL,
  `galleryImageHead` varchar(50) NOT NULL,
  `galleryImage` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`galleryImageID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `galleryimages`
--

INSERT INTO `galleryimages` (`galleryImageID`, `livingSpaceID`, `galleryImageHead`, `galleryImage`, `status`) VALUES
(2, 3, 'Front Side', 'IMG_1229.jpg', 0),
(5, 3, 'Kitchen', 'IMG_1052.jpeg', 0),
(6, 3, 'Side View', 'IMG_1622.jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `livingspace`
--

CREATE TABLE IF NOT EXISTS `livingspace` (
  `livingSpaceID` int(11) NOT NULL AUTO_INCREMENT,
  `livingSuppliersID` int(20) NOT NULL,
  `livingSpaceName` varchar(50) NOT NULL,
  `ratePerSemester` float NOT NULL,
  `location` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `iconImage` varchar(50) NOT NULL,
  `staus` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`livingSpaceID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `livingspace`
--

INSERT INTO `livingspace` (`livingSpaceID`, `livingSuppliersID`, `livingSpaceName`, `ratePerSemester`, `location`, `type`, `iconImage`, `staus`) VALUES
(3, 8, 'Summer Villa', 1500, 'Idaho', 'Apartment Housing', 'IMG_1309.jpg', 0),
(4, 8, 'City Catcher', 2000, 'Melbon', 'Residence Hall', 'IMG_1309.webp', 0),
(5, 8, 'Dream Catcher', 1200, 'Washington', 'Apartment Housing', 'IMG_1526.jpg', 0),
(7, 8, 'Winter Villa', 2500, 'Idaho', 'Apartment Housing', 'IMG_1245.jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `livingspaceamenities`
--

CREATE TABLE IF NOT EXISTS `livingspaceamenities` (
  `livingSpaceAmenitiesID` int(11) NOT NULL AUTO_INCREMENT,
  `livingSpaceID` int(11) NOT NULL,
  `amenitiesName` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `amenitiesIcon` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`livingSpaceAmenitiesID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `livingspaceamenities`
--

INSERT INTO `livingspaceamenities` (`livingSpaceAmenitiesID`, `livingSpaceID`, `amenitiesName`, `description`, `amenitiesIcon`, `status`) VALUES
(9, 4, 'AC', 'Each Room Contains 2 Ton A/C', 'IMG_1930.jpg', 0),
(10, 3, 'AC', 'Each Room Contains 2 Ton A/C', 'IMG_2094.jpg', 0),
(13, 3, 'Swimming Pool', 'A Large pool ', 'IMG_1164.jpg', 0),
(19, 23, 'Open Ground', '23', 'IMG_1473.jpg', 0),
(20, 3, 'Water Heater', 'Full TIme', 'IMG_1995.webp', 0),
(21, 3, 'Room Heater', 'Full Time', 'IMG_1152.webp', 0),
(22, 3, 'Relaxing Chair', 'Multi Purpose', 'IMG_1313.jpg', 0),
(23, 3, 'Mosquito  Lamb', 'Effective', 'IMG_2046.webp', 0);

-- --------------------------------------------------------

--
-- Table structure for table `livingsuppliersdetails`
--

CREATE TABLE IF NOT EXISTS `livingsuppliersdetails` (
  `livingSuppliersID` int(11) NOT NULL AUTO_INCREMENT,
  `livingSuppliersName` varchar(50) NOT NULL,
  `contactPerson` varchar(50) NOT NULL,
  `contactNumber` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `companyDescription` varchar(500) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `profilePicture` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`livingSuppliersID`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `livingsuppliersdetails`
--

INSERT INTO `livingsuppliersdetails` (`livingSuppliersID`, `livingSuppliersName`, `contactPerson`, `contactNumber`, `email`, `companyDescription`, `Username`, `Password`, `profilePicture`, `status`) VALUES
(8, 'JKS', 'Shubam', '22365989', 'jk@gmail.com', 'sdgfsdgf', 'shubam', '1234', 'default_image.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mealplan`
--

CREATE TABLE IF NOT EXISTS `mealplan` (
  `mealPlanID` int(11) NOT NULL AUTO_INCREMENT,
  `livingSpaceID` int(11) NOT NULL,
  `mealName` varchar(50) NOT NULL,
  `mealType` varchar(50) NOT NULL,
  `ratePerSemester` float NOT NULL,
  `mealImage` varchar(50) NOT NULL,
  `staus` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mealPlanID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `mealplan`
--

INSERT INTO `mealplan` (`mealPlanID`, `livingSpaceID`, `mealName`, `mealType`, `ratePerSemester`, `mealImage`, `staus`) VALUES
(1, 3, 'Lunch Meal', 'Chinese', 45, 'IMG_1484.jpeg', 0),
(3, 4, 'Break Fast Meal', 'Burger', 20, 'IMG_1263.jpeg', 0),
(4, 3, 'Lunch COMBO', 'Continental', 60, 'IMG_1816.jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `morepersonalinfo`
--

CREATE TABLE IF NOT EXISTS `morepersonalinfo` (
  `morepersonalinfoID` int(11) NOT NULL AUTO_INCREMENT,
  `vandalID` int(11) NOT NULL,
  `fraternityInterest` varchar(50) NOT NULL,
  `crimeConviction` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`morepersonalinfoID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `morepersonalinfo`
--

INSERT INTO `morepersonalinfo` (`morepersonalinfoID`, `vandalID`, `fraternityInterest`, `crimeConviction`, `status`) VALUES
(1, 6, 'Yes', 'No', 0),
(2, 7, 'Yes', 'Yes', 0),
(3, 7, 'Yes', 'No', 0),
(4, 7, 'Yes', 'Yes', 0),
(5, 7, 'Yes', 'Yes', 0),
(6, 7, 'No', 'No', 0),
(7, 7, 'null', 'null', 0),
(8, 7, 'null', 'null', 0);

-- --------------------------------------------------------

--
-- Table structure for table `parking`
--

CREATE TABLE IF NOT EXISTS `parking` (
  `parkingID` int(11) NOT NULL AUTO_INCREMENT,
  `livingSpaceID` int(11) NOT NULL,
  `parkingType` varchar(50) NOT NULL,
  `parkingArea` varchar(50) NOT NULL,
  `distance` varchar(50) NOT NULL,
  `parkingImage` varchar(50) NOT NULL,
  `staus` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`parkingID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `parking`
--

INSERT INTO `parking` (`parkingID`, `livingSpaceID`, `parkingType`, `parkingArea`, `distance`, `parkingImage`, `staus`) VALUES
(2, 3, 'Basement', '4500', '500', 'IMG_1791.jpg', 0),
(4, 3, 'Ground Floor', '6000', '450', 'IMG_1829.jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `paymentID` int(11) NOT NULL AUTO_INCREMENT,
  `vandalID` int(11) NOT NULL,
  `livingSpaceID` int(11) NOT NULL,
  `rate` float NOT NULL,
  `paymentDate` date NOT NULL,
  `cardNumber` varchar(50) NOT NULL DEFAULT 'NIl',
  `expDate` varchar(50) NOT NULL,
  `ccv` varchar(50) NOT NULL,
  `nameontheCarad` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paymentID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentID`, `vandalID`, `livingSpaceID`, `rate`, `paymentDate`, `cardNumber`, `expDate`, `ccv`, `nameontheCarad`, `status`) VALUES
(1, 7, 3, 1500, '2023-12-07', 'sgsdsdg', '3425', 'ssss', '23523', 0),
(2, 7, 3, 1500, '2023-12-07', '4545', '435435', '435', '454', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE IF NOT EXISTS `rooms` (
  `roomID` int(11) NOT NULL AUTO_INCREMENT,
  `livingSpaceID` int(11) NOT NULL,
  `roomNumber` varchar(50) NOT NULL,
  `floorPlanID` int(11) NOT NULL,
  `noVandalsCanOccupy` int(11) NOT NULL,
  `roomDescription` varchar(500) NOT NULL,
  `roomImages` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`roomID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`roomID`, `livingSpaceID`, `roomNumber`, `floorPlanID`, `noVandalsCanOccupy`, `roomDescription`, `roomImages`, `status`) VALUES
(2, 3, '15', 1, 5, 'Ac Room With Tower Bed', 'IMG_1515.jpeg', 0),
(3, 3, '25', 3, 2, 'AC', 'IMG_1184.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `towerbedoptions`
--

CREATE TABLE IF NOT EXISTS `towerbedoptions` (
  `towerBedID` int(11) NOT NULL AUTO_INCREMENT,
  `livingSpaceID` int(11) NOT NULL,
  `bedCategory` varchar(50) NOT NULL,
  `bedType` varchar(50) NOT NULL,
  `NoOfPeopleCanOccupy` int(11) NOT NULL,
  `groundClearance` varchar(50) NOT NULL,
  `underBedStorage` varchar(50) NOT NULL,
  `extraHeight` varchar(50) NOT NULL,
  `bedImage` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`towerBedID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `towerbedoptions`
--

INSERT INTO `towerbedoptions` (`towerBedID`, `livingSpaceID`, `bedCategory`, `bedType`, `NoOfPeopleCanOccupy`, `groundClearance`, `underBedStorage`, `extraHeight`, `bedImage`, `status`) VALUES
(1, 4, 'Twin Single Bed', 'Single', 4, '5 Inch', 'No', 'Rise 34 Inch', 'IMG_1630.jpg', 0),
(2, 1, 'Twin Single Bed', 'XL', 1, '2', 'Yes', '2', 'IMG_2009.jpg', 0),
(3, 3, 'Twin Single Bed', 'XL', 1, '5', 'Yes', '6', 'IMG_1955.jpg', 0),
(6, 3, 'Twin Single Bed', 'XL', 1, '25', 'No', '0', 'IMG_1667.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vandaldetails`
--

CREATE TABLE IF NOT EXISTS `vandaldetails` (
  `vandalID` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `vandalNumber` varchar(50) NOT NULL,
  `cellNumber` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `gender` varchar(50) NOT NULL,
  `classification` varchar(50) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `profilePicture` varchar(50) NOT NULL,
  `vandalStatus` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vandalID`),
  UNIQUE KEY `userName` (`userName`),
  UNIQUE KEY `password` (`password`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `vandaldetails`
--

INSERT INTO `vandaldetails` (`vandalID`, `firstName`, `lastName`, `vandalNumber`, `cellNumber`, `email`, `dateOfBirth`, `gender`, `classification`, `userName`, `password`, `profilePicture`, `vandalStatus`) VALUES
(7, 'Naga', 'Kadarla', '7630', '225869', 'naga@gmai.com', '1990-01-25', 'Male', 'First Year', 'naga', '1234', 'IMG_2096.jpg', 2),
(8, 'a', 'a', 'a', '2', 'sd@gm.com', '2023-12-28', 'Male', 'Non-First Year', 'rrrr', 'dd', 'IMG_1193.jpg', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
