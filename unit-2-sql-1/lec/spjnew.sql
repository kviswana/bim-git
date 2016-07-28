-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.24-log - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL version:             7.0.0.4053
-- Date/time:                    2013-08-28 14:35:38
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping database structure for spjnew
DROP DATABASE IF EXISTS `spjnew`;
CREATE DATABASE IF NOT EXISTS `spjnew` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `spjnew`;


-- Dumping structure for table spjnew.parts
DROP TABLE IF EXISTS `parts`;
CREATE TABLE IF NOT EXISTS `parts` (
  `pno` char(50) NOT NULL DEFAULT '',
  `pname` char(50) DEFAULT NULL,
  `color` char(50) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `city` char(50) DEFAULT NULL,
  PRIMARY KEY (`pno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table spjnew.parts: ~6 rows (approximately)
/*!40000 ALTER TABLE `parts` DISABLE KEYS */;
INSERT INTO `parts` (`pno`, `pname`, `color`, `weight`, `city`) VALUES
	('P1', 'Nut', 'Red', 12, 'London'),
	('P2', 'Bolt', 'Green', 17, 'Paris'),
	('P3', 'Screw', 'Blue', 17, 'Rome'),
	('P4', 'Screw', 'Red', 14, 'London'),
	('P5', 'Cam', 'Blue', 12, 'Paris'),
	('P6', 'Cog', 'Red', 19, 'London');
/*!40000 ALTER TABLE `parts` ENABLE KEYS */;


-- Dumping structure for table spjnew.projects
DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `jno` char(50) NOT NULL DEFAULT '',
  `jname` char(50) DEFAULT NULL,
  `city` char(50) DEFAULT NULL,
  PRIMARY KEY (`jno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table spjnew.projects: ~7 rows (approximately)
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` (`jno`, `jname`, `city`) VALUES
	('J1', 'Sorter', 'Paris'),
	('J2', 'Punch', 'Rome'),
	('J3', 'Reader', 'Athens'),
	('J4', 'Console', 'Athens'),
	('J5', 'Collator', 'London'),
	('J6', 'Terminal', 'Oslo'),
	('J7', 'Tape', 'London');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;


-- Dumping structure for table spjnew.shipments
DROP TABLE IF EXISTS `shipments`;
CREATE TABLE IF NOT EXISTS `shipments` (
  `sno` char(50) NOT NULL DEFAULT '',
  `pno` char(50) NOT NULL DEFAULT '',
  `jno` char(50) NOT NULL DEFAULT '',
  `ship_date` date DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  PRIMARY KEY (`sno`,`pno`,`jno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table spjnew.shipments: ~11 rows (approximately)
/*!40000 ALTER TABLE `shipments` DISABLE KEYS */;
INSERT INTO `shipments` (`sno`, `pno`, `jno`, `ship_date`, `qty`) VALUES
	('S1', 'P1', 'J1', '1999-03-03', 200),
	('S1', 'P1', 'J4', '1988-04-04', 700),
	('S2', 'P3', 'J1', '1988-06-06', 100),
	('S2', 'P3', 'J2', '1999-08-08', 200),
	('S2', 'P3', 'J3', '1977-07-07', 200),
	('S2', 'P3', 'J4', '1999-08-09', 500),
	('S2', 'P3', 'J6', '1998-08-07', 400),
	('S2', 'P3', 'J7', '1988-08-08', 800),
	('S2', 'P5', 'J2', '1999-09-09', 100),
	('S4', 'P6', 'J3', '1999-09-09', 400),
	('S4', 'P6', 'J7', '1988-09-08', 300);
/*!40000 ALTER TABLE `shipments` ENABLE KEYS */;


-- Dumping structure for table spjnew.suppliers
DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE IF NOT EXISTS `suppliers` (
  `sno` char(2) NOT NULL DEFAULT '',
  `sname` text,
  `status` int(11) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table spjnew.suppliers: ~5 rows (approximately)
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` (`sno`, `sname`, `status`, `city`) VALUES
	('S1', 'Smith', 20, 'London'),
	('S2', 'Jones', 10, 'Paris'),
	('S3', 'Blake', 30, 'Paris'),
	('S4', 'Clark', 20, 'London'),
	('S5', 'Adams', 30, 'Athens');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
