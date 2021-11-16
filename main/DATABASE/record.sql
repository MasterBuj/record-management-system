-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2021 at 07:13 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `record`
--

-- --------------------------------------------------------

--
-- Table structure for table `doc_type`
--

CREATE TABLE `doc_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doc_type`
--

INSERT INTO `doc_type` (`id`, `name`) VALUES
(44, 'AAA'),
(14, 'Certificate'),
(17, 'Contract'),
(19, 'Guarantee'),
(15, 'Invoice'),
(20, 'License'),
(27, 'Memo'),
(52, 'Notice'),
(21, 'Passport'),
(16, 'Proposal'),
(18, 'Report'),
(23, 'Spread Sheet'),
(22, 'Warrant'),
(24, 'White Paper');

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`id`, `name`) VALUES
(7, 'Casper'),
(4, 'CP Digital'),
(1, 'Dream Host'),
(10, 'NAKS Inc.'),
(5, 'Pokse Inc.'),
(2, 'Xcon Services');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `doc_type` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `office` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `dateout` varchar(100) NOT NULL,
  `receive_by` varchar(100) NOT NULL,
  `ft` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `date`, `doc_type`, `description`, `office`, `status`, `dateout`, `receive_by`, `ft`) VALUES
(1, '10/05/2018', 'Contract', 'Deal Finalized. ', 'Dream Host', 'Completed', '10/18/2018', 'Smith Jr.', 'Paul Rudd'),
(2, '09/11/2018', 'License', 'Registered', 'Dream Host', 'Completed', '09/13/2018', 'Christine Gray', 'Stephen Strange'),
(3, '10/10/2018', 'Passport', 'Security Purposes', 'Xcon Services', 'Authentication Failed', '10/11/2018', 'Gwen', 'John Doe'),
(4, '05/22/2018', 'Certificate', 'Certificate of . .', 'CP Digital', 'Completed', '08/09/2018', 'Bruno Den', 'James William'),
(5, '02/01/2018', 'White Paper', 'Giving information on an issue', 'Casper', 'Needs to View', '03/22/2018', 'Logan Paul', 'Elijah'),
(6, '04/09/2018', 'Spread Sheet', 'Analysis and Storage of data', 'CP Digital', 'Delivered', '04/13/2018', 'Benjamin', 'James William'),
(7, '07/07/2018', 'Proposal', 'Written offer to buyer', 'Xcon Services', 'Declined', '07/09/2018', 'Ethan', 'John Doe');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `admin`) VALUES
(1, 'admin', 'admin', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doc_type`
--
ALTER TABLE `doc_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doc_type`
--
ALTER TABLE `doc_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `offices`
--
ALTER TABLE `offices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
