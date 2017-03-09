-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 09, 2017 at 06:48 AM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `servercis_callingsystem_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `calling_system`
--

CREATE TABLE IF NOT EXISTS `calling_system` (
  `cs_id` varchar(200) NOT NULL,
  `cs_hfc_cd` varchar(200) NOT NULL,
  `cs_discipline` varchar(200) NOT NULL,
  `cs_sub_discipline` varchar(200) NOT NULL,
  `cs_pmi_no` varchar(200) NOT NULL,
  `cs_patient_name` varchar(200) NOT NULL,
  `cs_queue_no` varchar(200) NOT NULL,
  `cs_queue_name` varchar(200) NOT NULL,
  `cs_datetime` datetime NOT NULL,
  `cs_callingtime` int(11) NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calling_system`
--

INSERT INTO `calling_system` (`cs_id`, `cs_hfc_cd`, `cs_discipline`, `cs_sub_discipline`, `cs_pmi_no`, `cs_patient_name`, `cs_queue_no`, `cs_queue_name`, `cs_datetime`, `cs_callingtime`) VALUES
('2017-03-09 10:51:45.123321', '2017-03-09 11:22:01.000001', '2017-03-09 11:51:21.000001', '', '8910310652139', 'Umar Mukhtar bin Hambaran', '0093', 'Pharmacy', '2017-03-09 10:51:45', 0),
('2017-03-09 11:06:11.123321', '2017-03-09 11:22:01.000002', '2017-03-09 11:51:21.000001', '2017-03-09 11:52:12.000002', '930518085944', 'Nur Umira binti Mustafa', '0095', 'Pharmacy', '2017-03-09 11:06:11', 0),
('2017-03-09 11:13:11.123321', '2017-03-09 11:22:01.000001', '', '', '930518085944', 'Nur Umira binti Mustafa', '0096', 'Room 2', '2017-03-09 11:06:11', 0),
('2017-03-09 11:14:11.123321', '2017-03-09 11:22:01.000003', '', '', '930518085944', 'Nur Umira binti Mustafa', '0097', 'Room 3', '2017-03-09 11:06:11', 0),
('2017-03-09 11:15:11.123321', '2017-03-09 11:22:01.000001', '', '', '930518085944', 'Nur Umira binti Mustafa', '0001', 'Room 2', '2017-03-09 11:06:11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `discipline_code`
--

CREATE TABLE IF NOT EXISTS `discipline_code` (
  `dc_id` varchar(200) NOT NULL,
  `dc_code` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discipline_code`
--

INSERT INTO `discipline_code` (`dc_id`, `dc_code`) VALUES
('2017-03-09 11:51:21.000001', 'Discipline 1'),
('2017-03-09 11:51:21.000002', 'Discipline 2');

-- --------------------------------------------------------

--
-- Table structure for table `health_facility_code`
--

CREATE TABLE IF NOT EXISTS `health_facility_code` (
  `hfc_id` varchar(200) NOT NULL,
  `hfc_code` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `health_facility_code`
--

INSERT INTO `health_facility_code` (`hfc_id`, `hfc_code`) VALUES
('2017-03-09 11:22:01.000001', 'Kampus Induk UTeM'),
('2017-03-09 11:22:01.000002', 'Kampus Industri UTeM'),
('2017-03-09 11:22:01.000003', 'Kampus Bandar UTeM');

-- --------------------------------------------------------

--
-- Table structure for table `sub_discipline_code`
--

CREATE TABLE IF NOT EXISTS `sub_discipline_code` (
  `sdc_id` varchar(200) NOT NULL,
  `sdc_code` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_discipline_code`
--

INSERT INTO `sub_discipline_code` (`sdc_id`, `sdc_code`) VALUES
('2017-03-09 11:52:12.000001', 'Sub-Discipline 1'),
('2017-03-09 11:52:12.000002', 'Sub-Discipline 2'),
('2017-03-09 11:52:12.000003', 'Sub-Discipline 3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calling_system`
--
ALTER TABLE `calling_system`
  ADD PRIMARY KEY (`cs_id`);

--
-- Indexes for table `discipline_code`
--
ALTER TABLE `discipline_code`
  ADD PRIMARY KEY (`dc_id`);

--
-- Indexes for table `health_facility_code`
--
ALTER TABLE `health_facility_code`
  ADD PRIMARY KEY (`hfc_id`);

--
-- Indexes for table `sub_discipline_code`
--
ALTER TABLE `sub_discipline_code`
  ADD PRIMARY KEY (`sdc_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
