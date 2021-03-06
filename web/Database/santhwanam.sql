-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 16, 2021 at 05:07 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `santhwanam`
--

-- --------------------------------------------------------

--
-- Table structure for table `assign_nurse`
--

CREATE TABLE `assign_nurse` (
  `ass_nid` int(5) NOT NULL,
  `nurse` int(5) NOT NULL,
  `patient` int(5) NOT NULL,
  `assigned_on` date NOT NULL,
  `ass_status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assign_nurse`
--

INSERT INTO `assign_nurse` (`ass_nid`, `nurse`, `patient`, `assigned_on`, `ass_status`) VALUES
(8, 1, 1, '2021-04-28', 'assigned'),
(10, 1, 4, '2021-04-29', 'assigned');

-- --------------------------------------------------------

--
-- Table structure for table `assign_volunteer`
--

CREATE TABLE `assign_volunteer` (
  `assv_id` int(5) NOT NULL,
  `volunteer` int(5) NOT NULL,
  `patient` int(5) NOT NULL,
  `assigned_on` date NOT NULL,
  `ass_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assign_volunteer`
--

INSERT INTO `assign_volunteer` (`assv_id`, `volunteer`, `patient`, `assigned_on`, `ass_status`) VALUES
(12, 3, 1, '2021-04-20', 'pending'),
(14, 3, 4, '2021-04-29', 'pending'),
(17, 6, 7, '2021-04-29', 'pending'),
(18, 3, 3, '2021-04-29', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `blooddonor`
--

CREATE TABLE `blooddonor` (
  `bd_id` int(5) NOT NULL,
  `bd_name` varchar(15) NOT NULL,
  `bd_group` varchar(5) NOT NULL,
  `bd_mobile` bigint(12) NOT NULL,
  `bd_place` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blooddonor`
--

INSERT INTO `blooddonor` (`bd_id`, `bd_name`, `bd_group`, `bd_mobile`, `bd_place`) VALUES
(1, 'jazir', 'A+ve', 8085784512, 'edapal'),
(3, 'shafeed', 'O+ve', 8798546532, 'edapal'),
(4, 'savad', 'AB+ve', 7418529650, 'edapal');

-- --------------------------------------------------------

--
-- Table structure for table `equipments`
--

CREATE TABLE `equipments` (
  `eid` int(5) NOT NULL,
  `e_name` varchar(15) NOT NULL,
  `e_stock` int(10) NOT NULL,
  `e_date` date NOT NULL,
  `image` varchar(250) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `equipments`
--

INSERT INTO `equipments` (`eid`, `e_name`, `e_stock`, `e_date`, `image`, `description`) VALUES
(2, 'wheelchairs', 18, '2021-05-07', '1621492338.jpg', 'very good equipments'),
(3, 'water bed', 5, '2021-05-02', '1621492462.jpg', 'abcdefg');

-- --------------------------------------------------------

--
-- Table structure for table `equipment_request`
--

CREATE TABLE `equipment_request` (
  `req_id` int(5) NOT NULL,
  `patient` int(5) NOT NULL,
  `equipment` int(5) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `equipment_request`
--

INSERT INTO `equipment_request` (`req_id`, `patient`, `equipment`, `status`) VALUES
(3, 1, 2, 'assigned'),
(4, 4, 2, 'assigned'),
(5, 4, 3, 'pending'),
(6, 3, 2, 'pending'),
(7, 3, 3, 'assigned'),
(8, 1, 3, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(5) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `uname`, `password`, `type`, `status`) VALUES
(1, 'admin@gmail.com', 'admin123', 'admin', ''),
(4, '7736918949', 'aslam123', 'volunteer', 'approved'),
(6, '9876543210', 'aslam1234', 'patient', 'approved'),
(8, '9865321470', 'anas123', 'patient', 'approved'),
(9, '9871234560', 'althaf123', 'volunteer', 'approved'),
(11, '8136877801', '123456789', 'nurse', 'approved'),
(12, '9605314236', 'anees123', 'patient', 'approved'),
(13, '8132074560', 'aflah123', 'patient', 'pending'),
(14, '8157012019', 'radha123', 'patient', 'pending'),
(15, '9947271346', '12345678', 'nurse', 'approved'),
(16, '9988776655', 'ansah123', 'patient', 'assigned'),
(17, '9879879865', 'salman123', 'volunteer', 'approved'),
(18, '9012345678', '12345678', 'nurse', 'approved'),
(19, '9996663330', 'akshay123', 'volunteer', 'rejected');

-- --------------------------------------------------------

--
-- Table structure for table `medical_report`
--

CREATE TABLE `medical_report` (
  `mr_id` int(5) NOT NULL,
  `pid` int(5) NOT NULL,
  `vid` int(5) NOT NULL,
  `disease` varchar(30) NOT NULL,
  `medicines` varchar(150) NOT NULL,
  `description` varchar(150) NOT NULL,
  `report_image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medical_report`
--

INSERT INTO `medical_report` (`mr_id`, `pid`, `vid`, `disease`, `medicines`, `description`, `report_image`) VALUES
(1, 1, 3, 'paraplegia', 'abcd', 'both legs are disabled', '1PATIENT_REORT1.jpeg'),
(2, 4, 3, 'paraplegia', 'medicine1', 'bad condition', '4PATIENT_REPORT1.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `nid` int(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `dob` date NOT NULL,
  `place` varchar(15) NOT NULL,
  `address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`nid`, `name`, `mobile`, `gender`, `dob`, `place`, `address`) VALUES
(1, 'sheela k', 8136877801, 'Female', '2000-12-01', 'edapal', 'sheela villa'),
(2, 'Latha', 9947271346, 'Female', '1998-01-01', 'Edapal', 'Latha House'),
(3, 'Rama', 9012345678, 'Female', '1999-01-01', 'Edapal', 'kallingal');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `pid` int(5) NOT NULL,
  `pname` varchar(30) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `place` varchar(25) NOT NULL,
  `panchayath` varchar(25) NOT NULL,
  `ward` int(5) NOT NULL,
  `address` varchar(50) NOT NULL,
  `pincode` int(8) NOT NULL,
  `disease` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`pid`, `pname`, `mobile`, `dob`, `gender`, `place`, `panchayath`, `ward`, `address`, `pincode`, `disease`) VALUES
(1, 'aslam k', 9876543210, '2000-04-10', 'male', 'edapal', 'edapal', 3, 'kallingal', 679576, 'paraplegia'),
(3, 'anas k', 9865321470, '2000-04-01', 'male', 'edapal', 'edapal', 5, 'kallingal', 679576, 'paraplegia'),
(4, 'anees', 9605314236, '2000-04-01', 'male', 'edapal', 'edapal', 5, 'anees villa', 679576, 'cancer'),
(5, 'Aflah', 8132074560, '2000-04-23', 'male', 'edapal', 'edapal', 11, 'kallingal', 679576, 'paraplegia'),
(6, 'Radha', 8157012019, '1990-04-01', 'female', 'Ponnani', 'Vattamkulam', 2, 'Thavakkal', 679576, 'Cancer'),
(7, 'Ansah', 9988776655, '1993-04-01', 'male', 'Edapal', 'edapal', 6, 'kallingal', 679576, 'cancer');

-- --------------------------------------------------------

--
-- Table structure for table `revenue`
--

CREATE TABLE `revenue` (
  `rv_id` int(11) NOT NULL,
  `rv_date` date NOT NULL,
  `rv_income` int(10) NOT NULL,
  `rv_expend` int(10) NOT NULL,
  `rv_descp` varchar(50) NOT NULL,
  `rv_total` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `revenue`
--

INSERT INTO `revenue` (`rv_id`, `rv_date`, `rv_income`, `rv_expend`, `rv_descp`, `rv_total`) VALUES
(2, '2021-05-01', 15000, 2500, 'bfxFdfcx', 12500),
(3, '2021-05-02', 3500, 1200, 'nothing', 2300),
(4, '2021-05-03', 5000, 3000, 'nothing', 2000),
(5, '2021-06-04', 3500, 1200, 'nothing', 2300),
(6, '2021-06-01', 12500, 4000, 'nothing', 8500),
(7, '2021-05-04', 7000, 2500, 'nothing', 4500);

-- --------------------------------------------------------

--
-- Table structure for table `sponsorship`
--

CREATE TABLE `sponsorship` (
  `sp_id` int(5) NOT NULL,
  `sp_name` varchar(15) NOT NULL,
  `sp_address` varchar(50) NOT NULL,
  `sp_mobile` bigint(12) NOT NULL,
  `sp_place` varchar(20) NOT NULL,
  `sp_date` date NOT NULL,
  `sp_item` varchar(20) NOT NULL,
  `sp_descp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sponsorship`
--

INSERT INTO `sponsorship` (`sp_id`, `sp_name`, `sp_address`, `sp_mobile`, `sp_place`, `sp_date`, `sp_item`, `sp_descp`) VALUES
(1, 'Saleem', 'kallingal', 8136024560, 'edapal', '2019-05-31', 'wheel chair', 'abcdrfg');

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `tid` int(5) NOT NULL,
  `equipment` int(5) NOT NULL,
  `patient` int(5) NOT NULL,
  `volunteer` int(5) NOT NULL,
  `request_id` int(5) NOT NULL,
  `tr_status` varchar(15) NOT NULL,
  `tr_assdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`tid`, `equipment`, `patient`, `volunteer`, `request_id`, `tr_status`, `tr_assdate`) VALUES
(1, 2, 1, 3, 3, 'confirmed', '2021-05-20'),
(2, 3, 3, 5, 7, 'assigned', '2021-05-21'),
(3, 2, 4, 3, 4, 'assigned', '2021-05-21');

-- --------------------------------------------------------

--
-- Table structure for table `tutorials`
--

CREATE TABLE `tutorials` (
  `tut_id` int(5) NOT NULL,
  `tut_name` varchar(20) NOT NULL,
  `tut_url` varchar(250) NOT NULL,
  `tut_description` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tutorials`
--

INSERT INTO `tutorials` (`tut_id`, `tut_name`, `tut_url`, `tut_description`) VALUES
(2, 'pen making', '7ZTPFy65MXU', 'How to make paper pen very easly in malayalam paper pen making'),
(3, 'Soap making', 'LkzLwawJnfE', 'Malayalam Soap making video tutorial');

-- --------------------------------------------------------

--
-- Table structure for table `volunteer`
--

CREATE TABLE `volunteer` (
  `vid` int(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `dob` date NOT NULL,
  `place` varchar(20) NOT NULL,
  `panchayath` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `volunteer`
--

INSERT INTO `volunteer` (`vid`, `name`, `mobile`, `dob`, `place`, `panchayath`, `address`) VALUES
(3, 'Aslam K', 7736918949, '1998-07-18', 'edapal', 'edapal', 'kallingal'),
(5, 'althaf', 9871234560, '2000-04-01', 'edapal', 'edapal', 'kallingal'),
(6, 'Salman', 9879879865, '1990-04-01', 'ponnani', 'ponnani', 'kallingal'),
(7, 'akshay', 9996663330, '2000-06-03', 'edapal', 'edapal', 'kallingal');

-- --------------------------------------------------------

--
-- Table structure for table `work_report`
--

CREATE TABLE `work_report` (
  `wr_id` int(5) NOT NULL,
  `nurse` int(5) NOT NULL,
  `patient` int(5) NOT NULL,
  `date` date NOT NULL,
  `medicines` varchar(50) NOT NULL,
  `report` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `work_report`
--

INSERT INTO `work_report` (`wr_id`, `nurse`, `patient`, `date`, `medicines`, `report`) VALUES
(1, 1, 1, '2021-04-28', 'abcdrfg', 'bandages changed'),
(4, 1, 4, '2021-04-29', 'Medcine1111', 'Bandages Changed'),
(5, 1, 1, '2021-06-15', 'gff', 'dscfffff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assign_nurse`
--
ALTER TABLE `assign_nurse`
  ADD PRIMARY KEY (`ass_nid`),
  ADD KEY `nurse` (`nurse`),
  ADD KEY `patient` (`patient`);

--
-- Indexes for table `assign_volunteer`
--
ALTER TABLE `assign_volunteer`
  ADD PRIMARY KEY (`assv_id`),
  ADD KEY `volunteer` (`volunteer`),
  ADD KEY `assign_volunteer_ibfk_1` (`patient`);

--
-- Indexes for table `blooddonor`
--
ALTER TABLE `blooddonor`
  ADD PRIMARY KEY (`bd_id`);

--
-- Indexes for table `equipments`
--
ALTER TABLE `equipments`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `equipment_request`
--
ALTER TABLE `equipment_request`
  ADD PRIMARY KEY (`req_id`),
  ADD KEY `equipment` (`equipment`),
  ADD KEY `patient` (`patient`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `medical_report`
--
ALTER TABLE `medical_report`
  ADD PRIMARY KEY (`mr_id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `medical_report_ibfk_1` (`vid`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `revenue`
--
ALTER TABLE `revenue`
  ADD PRIMARY KEY (`rv_id`);

--
-- Indexes for table `sponsorship`
--
ALTER TABLE `sponsorship`
  ADD PRIMARY KEY (`sp_id`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `equipment` (`equipment`),
  ADD KEY `patient` (`patient`),
  ADD KEY `volunteer` (`volunteer`),
  ADD KEY `request_id` (`request_id`);

--
-- Indexes for table `tutorials`
--
ALTER TABLE `tutorials`
  ADD PRIMARY KEY (`tut_id`);

--
-- Indexes for table `volunteer`
--
ALTER TABLE `volunteer`
  ADD PRIMARY KEY (`vid`);

--
-- Indexes for table `work_report`
--
ALTER TABLE `work_report`
  ADD PRIMARY KEY (`wr_id`),
  ADD KEY `nurse` (`nurse`),
  ADD KEY `patient` (`patient`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assign_nurse`
--
ALTER TABLE `assign_nurse`
  MODIFY `ass_nid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `assign_volunteer`
--
ALTER TABLE `assign_volunteer`
  MODIFY `assv_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `blooddonor`
--
ALTER TABLE `blooddonor`
  MODIFY `bd_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `equipments`
--
ALTER TABLE `equipments`
  MODIFY `eid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `equipment_request`
--
ALTER TABLE `equipment_request`
  MODIFY `req_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `nurse`
--
ALTER TABLE `nurse`
  MODIFY `nid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `pid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `revenue`
--
ALTER TABLE `revenue`
  MODIFY `rv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sponsorship`
--
ALTER TABLE `sponsorship`
  MODIFY `sp_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `tid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tutorials`
--
ALTER TABLE `tutorials`
  MODIFY `tut_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `volunteer`
--
ALTER TABLE `volunteer`
  MODIFY `vid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `work_report`
--
ALTER TABLE `work_report`
  MODIFY `wr_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assign_nurse`
--
ALTER TABLE `assign_nurse`
  ADD CONSTRAINT `assign_nurse_ibfk_1` FOREIGN KEY (`nurse`) REFERENCES `nurse` (`nid`),
  ADD CONSTRAINT `assign_nurse_ibfk_2` FOREIGN KEY (`patient`) REFERENCES `patient` (`pid`);

--
-- Constraints for table `assign_volunteer`
--
ALTER TABLE `assign_volunteer`
  ADD CONSTRAINT `assign_volunteer_ibfk_1` FOREIGN KEY (`patient`) REFERENCES `patient` (`pid`);

--
-- Constraints for table `equipment_request`
--
ALTER TABLE `equipment_request`
  ADD CONSTRAINT `equipment_request_ibfk_1` FOREIGN KEY (`equipment`) REFERENCES `equipments` (`eid`),
  ADD CONSTRAINT `equipment_request_ibfk_2` FOREIGN KEY (`patient`) REFERENCES `patient` (`pid`);

--
-- Constraints for table `medical_report`
--
ALTER TABLE `medical_report`
  ADD CONSTRAINT `medical_report_ibfk_1` FOREIGN KEY (`vid`) REFERENCES `volunteer` (`vid`);

--
-- Constraints for table `transport`
--
ALTER TABLE `transport`
  ADD CONSTRAINT `transport_ibfk_1` FOREIGN KEY (`equipment`) REFERENCES `equipments` (`eid`),
  ADD CONSTRAINT `transport_ibfk_2` FOREIGN KEY (`patient`) REFERENCES `patient` (`pid`),
  ADD CONSTRAINT `transport_ibfk_3` FOREIGN KEY (`volunteer`) REFERENCES `volunteer` (`vid`),
  ADD CONSTRAINT `transport_ibfk_4` FOREIGN KEY (`request_id`) REFERENCES `equipment_request` (`req_id`);

--
-- Constraints for table `work_report`
--
ALTER TABLE `work_report`
  ADD CONSTRAINT `work_report_ibfk_1` FOREIGN KEY (`nurse`) REFERENCES `nurse` (`nid`),
  ADD CONSTRAINT `work_report_ibfk_2` FOREIGN KEY (`patient`) REFERENCES `patient` (`pid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
