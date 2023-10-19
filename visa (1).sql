-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2023 at 04:28 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `visa`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `create` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `status` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--



-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `admin_id` int(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `create` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `status` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agent`
--



-- --------------------------------------------------------

--
-- Table structure for table `business_docs`
--

CREATE TABLE `business_docs` (
  `do_id` int(200) NOT NULL,
  `doc_type` varchar(200) NOT NULL,
  `do_name` varchar(200) NOT NULL,
  `docs` varchar(200) NOT NULL,
  `track_id` varchar(2000) NOT NULL,
  `user_id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `business_docs`
--



-- --------------------------------------------------------

--
-- Table structure for table `business_visa`
--

CREATE TABLE `business_visa` (
  `v_id` int(200) NOT NULL,
  `track_id` varchar(2000) NOT NULL,
  `Appoinment_Date` varchar(200) NOT NULL,
  `Appoinment_Time` varchar(200) NOT NULL,
  `Visa_Type` varchar(100) NOT NULL,
  `user_id` int(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `Date_of_Birth` varchar(200) NOT NULL,
  `Mobile_Number` varchar(200) NOT NULL,
  `Nationality` varchar(200) NOT NULL,
  `Passport_type` varchar(200) NOT NULL,
  `Passport_Number` varchar(200) NOT NULL,
  `Passport_Issue_Date` varchar(200) NOT NULL,
  `Passport_Expiry_Date` varchar(200) NOT NULL,
  `Passport_Issue_Place` varchar(200) NOT NULL,
  `status` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `business_visa`
--



-- --------------------------------------------------------

--
-- Table structure for table `family_visa`
--

CREATE TABLE `family_visa` (
  `F_id` int(200) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `user_id` int(100) NOT NULL,
  `track_id` varchar(2000) NOT NULL,
  `status` int(200) NOT NULL,
  `Appoinment_date` varchar(200) NOT NULL,
  `Appoinment_time` varchar(200) NOT NULL,
  `number` varchar(200) NOT NULL,
  `members` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `family_visa`
--



-- --------------------------------------------------------

--
-- Table structure for table `individual_docs`
--

CREATE TABLE `individual_docs` (
  `do_id` int(200) NOT NULL,
  `doc_type` varchar(200) NOT NULL,
  `do_name` varchar(200) NOT NULL,
  `docs` varchar(200) NOT NULL,
  `track_id` varchar(2000) NOT NULL,
  `user_id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `individual_docs`
--



-- --------------------------------------------------------

--
-- Table structure for table `individual_visa`
--

CREATE TABLE `individual_visa` (
  `v_id` int(200) NOT NULL,
  `track_id` varchar(2000) NOT NULL,
  `Appoinment_Date` varchar(200) NOT NULL,
  `Appoinment_Time` varchar(200) NOT NULL,
  `Visa_Type` varchar(100) NOT NULL,
  `user_id` int(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `Date_of_Birth` varchar(200) NOT NULL,
  `Mobile_Number` varchar(200) NOT NULL,
  `Nationality` varchar(200) NOT NULL,
  `Passport_type` varchar(200) NOT NULL,
  `Passport_Number` varchar(200) NOT NULL,
  `Passport_Issue_Date` varchar(200) NOT NULL,
  `Passport_Expiry_Date` varchar(200) NOT NULL,
  `Passport_Issue_Place` varchar(200) NOT NULL,
  `status` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `individual_visa`
--



-- --------------------------------------------------------

--
-- Table structure for table `member1_doc`
--

CREATE TABLE `member1_doc` (
  `do_id` int(200) NOT NULL,
  `doc_type` varchar(200) NOT NULL,
  `do_name` varchar(200) NOT NULL,
  `docs` varchar(200) NOT NULL,
  `track_id` varchar(2000) NOT NULL,
  `user_id` int(200) NOT NULL,
  `member_no` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_1`
--

CREATE TABLE `member_1` (
  `v_id` int(200) NOT NULL,
  `track_id` varchar(2000) NOT NULL,
  `Visa_Type` varchar(100) NOT NULL,
  `user_id` int(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `member_no` int(200) NOT NULL,
  `Date_of_Birth` varchar(200) NOT NULL,
  `Mobile_Number` varchar(200) NOT NULL,
  `Nationality` varchar(200) NOT NULL,
  `Passport_type` varchar(200) NOT NULL,
  `Passport_Number` varchar(200) NOT NULL,
  `Passport_Issue_Date` varchar(200) NOT NULL,
  `Passport_Expiry_Date` varchar(200) NOT NULL,
  `Passport_Issue_Place` varchar(200) NOT NULL,
  `status` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member_1`
--



-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(200) NOT NULL,
  `f_name` varchar(200) NOT NULL,
  `L_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `status` int(100) NOT NULL,
  `a_status` int(100) NOT NULL,
  `role` int(100) NOT NULL,
  `track_id` varchar(2000) NOT NULL,
  `visa` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--


--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `business_docs`
--
ALTER TABLE `business_docs`
  ADD PRIMARY KEY (`do_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `business_visa`
--
ALTER TABLE `business_visa`
  ADD PRIMARY KEY (`v_id`),
  ADD UNIQUE KEY `track_id` (`track_id`) USING HASH,
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `family_visa`
--
ALTER TABLE `family_visa`
  ADD PRIMARY KEY (`F_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `individual_docs`
--
ALTER TABLE `individual_docs`
  ADD PRIMARY KEY (`do_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `individual_visa`
--
ALTER TABLE `individual_visa`
  ADD PRIMARY KEY (`v_id`),
  ADD UNIQUE KEY `track_id` (`track_id`) USING HASH,
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `member1_doc`
--
ALTER TABLE `member1_doc`
  ADD PRIMARY KEY (`do_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `member_1`
--
ALTER TABLE `member_1`
  ADD PRIMARY KEY (`v_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;

--
-- AUTO_INCREMENT for table `agent`
--
ALTER TABLE `agent`
  MODIFY `admin_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;

--
-- AUTO_INCREMENT for table `business_docs`
--
ALTER TABLE `business_docs`
  MODIFY `do_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;

--
-- AUTO_INCREMENT for table `business_visa`
--
ALTER TABLE `business_visa`
  MODIFY `v_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;

--
-- AUTO_INCREMENT for table `family_visa`
--
ALTER TABLE `family_visa`
  MODIFY `F_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;

--
-- AUTO_INCREMENT for table `individual_docs`
--
ALTER TABLE `individual_docs`
  MODIFY `do_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;

--
-- AUTO_INCREMENT for table `individual_visa`
--
ALTER TABLE `individual_visa`
  MODIFY `v_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `member1_doc`
--
ALTER TABLE `member1_doc`
  MODIFY `do_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;

--
-- AUTO_INCREMENT for table `member_1`
--
ALTER TABLE `member_1`
  MODIFY `v_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `business_docs`
--
ALTER TABLE `business_docs`
  ADD CONSTRAINT `business_docs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`u_id`);

--
-- Constraints for table `business_visa`
--
ALTER TABLE `business_visa`
  ADD CONSTRAINT `business_visa_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`u_id`);

--
-- Constraints for table `family_visa`
--
ALTER TABLE `family_visa`
  ADD CONSTRAINT `family_visa_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`u_id`);

--
-- Constraints for table `individual_docs`
--
ALTER TABLE `individual_docs`
  ADD CONSTRAINT `individual_docs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`u_id`);

--
-- Constraints for table `individual_visa`
--
ALTER TABLE `individual_visa`
  ADD CONSTRAINT `individual_visa_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`u_id`);

--
-- Constraints for table `member1_doc`
--
ALTER TABLE `member1_doc`
  ADD CONSTRAINT `member1_doc_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`u_id`);

--
-- Constraints for table `member_1`
--
ALTER TABLE `member_1`
  ADD CONSTRAINT `member_1_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`u_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
