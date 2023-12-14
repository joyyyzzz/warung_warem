-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.11.2-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



-- Dumping structure for table rtbsdb.tbladmin
CREATE TABLE IF NOT EXISTS `tbladmin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(120) DEFAULT NULL,
  `AdminuserName` varchar(20) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp(),
  `UserType` int(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table rtbsdb.tbladmin: ~2 rows (approximately)
INSERT INTO `tbladmin` (`ID`, `AdminName`, `AdminuserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`, `UserType`) VALUES
	(2, 'Admin', 'admin', 1234596321, 'admin@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2023-05-21 18:30:00', 1),
	(3, 'Anuj kumar', 'akr305', 1234567891, 'ak@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-05-21 18:30:00', 0);

-- Dumping structure for table rtbsdb.tblbookings
CREATE TABLE IF NOT EXISTS `tblbookings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookingNo` bigint(12) DEFAULT NULL,
  `fullName` varchar(200) DEFAULT NULL,
  `emailId` varchar(200) DEFAULT NULL,
  `phoneNumber` bigint(12) DEFAULT NULL,
  `bookingDate` date DEFAULT NULL,
  `bookingTime` varchar(100) DEFAULT NULL,
  `noAdults` bigint(20) DEFAULT NULL,
  `noChildrens` bigint(20) DEFAULT NULL,
  `tableId` int(11) DEFAULT NULL,
  `adminremark` varchar(255) DEFAULT NULL,
  `boookingStatus` varchar(15) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table rtbsdb.tblbookings: ~6 rows (approximately)
INSERT INTO `tblbookings` (`id`, `bookingNo`, `fullName`, `emailId`, `phoneNumber`, `bookingDate`, `bookingTime`, `noAdults`, `noChildrens`, `tableId`, `adminremark`, `boookingStatus`, `postingDate`, `updationDate`) VALUES
	(1, 7081250186, 'Anuj Kumar', 'ak@gmail.com', 1425362514, '2023-06-10', '14:00:00', 2, 1, 1, 'Booking accepted', 'Accepted', '2023-05-27 04:34:18', '2023-06-04 03:20:29'),
	(2, 323168839, 'Shivani', 'shivani@gmail.com', 4563214520, '2023-06-10', '14:10:00', 4, 1, 3, 'Table booked.', 'Accepted', '2023-05-27 04:35:04', '2023-06-04 17:08:10'),
	(3, 4813244763, 'John Doe', 'johndeo@test.com', 7896541230, '2023-06-15', '20:00:00', 3, 1, 0, 'Table not available ', 'Rejected', '2023-05-27 04:35:33', '2023-06-04 17:16:35'),
	(4, 2163886205, 'Garima Singh', 'gariam@test.com', 45632145632, '2023-06-24', '15:00:00', 2, 1, 5, 'Table Reserved', 'Accepted', '2023-06-05 00:44:57', '2023-06-05 13:54:10'),
	(5, 1014501745, 'joy', 'joy@gmail.com', 88298332, '2023-12-03', '10 : 59 AM', 2, 1, 5, 'makan', 'Accepted', '2023-12-14 02:54:05', '2023-12-14 06:24:08'),
	(6, 128352980, 'arthur', 'arht@gmail.com', 8281838, '2023-12-18', '5 : 03 PM', 2, 3, 3, 'awokw', 'Accepted', '2023-12-14 03:08:57', '2023-12-14 03:12:21');

-- Dumping structure for table rtbsdb.tblrestables
CREATE TABLE IF NOT EXISTS `tblrestables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tableNumber` varchar(100) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `AddedBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table rtbsdb.tblrestables: ~6 rows (approximately)
INSERT INTO `tblrestables` (`id`, `tableNumber`, `creationDate`, `AddedBy`) VALUES
	(1, '1', '2023-05-27 03:50:35', 2),
	(2, '2', '2023-05-27 03:50:55', 2),
	(3, '1A', '2023-05-27 03:51:01', 2),
	(4, '3', '2023-05-27 03:51:07', 2),
	(5, '3A', '2023-05-27 03:51:11', 2),
	(6, '3B', '2023-05-27 03:51:15', 2);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
