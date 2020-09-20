-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2020 at 06:57 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feemanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountant_record`
--

CREATE TABLE `accountant_record` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contactno` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accountant_record`
--

INSERT INTO `accountant_record` (`id`, `name`, `password`, `email`, `contactno`) VALUES
(7, 'kunja', 'kunja', 'kunja@gmail.com', '984173065');

-- --------------------------------------------------------

--
-- Table structure for table `student_record`
--

CREATE TABLE `student_record` (
  `rollno` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `course` varchar(100) NOT NULL,
  `fee` int(10) NOT NULL,
  `paid` int(10) NOT NULL,
  `due` int(10) NOT NULL,
  `address` varchar(300) NOT NULL,
  `city` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `country` varchar(100) NOT NULL,
  `contactno` varchar(20) NOT NULL,
  `registereddate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_record`
--

INSERT INTO `student_record` (`rollno`, `name`, `email`, `course`, `fee`, `paid`, `due`, `address`, `city`, `state`, `country`, `contactno`, `registereddate`) VALUES
(4, 'niketan', 'niketan', 'Java', 10000, 8000, 2000, 'basnewor', 'kathmandu	', '3', 'Nepal', '9841526378', '2020-02-01 09:54:19'),
(5, 'prashant', 'prasant@gmail.com', 'Networking', 8000, 0, 8000, 'praphing', 'kathmandu', '3', 'Nepal', '9841526378', '2020-02-01 10:18:24'),
(6, 'sangit', 'sangit@gmail.com', 'data Structure', 15000, 8000, 7000, 'bhatapur', '', '', '', '9875416321', '2020-02-01 10:25:43'),
(7, 'anil', 'anil@gmail.com', 'Computer Architecture', 10000, 5000, 5000, 'kalimati', 'kathmandu', '3', 'Nepal', '9841526378', '2020-02-01 12:25:15'),
(8, 'anil', 'anil@gmail.com', 'None', 1000, 500, 500, 'thankot', 'kathmandu', '3', 'Nepal', '9841526389', '2020-02-01 15:40:47'),
(9, 'sushil', 'sushil@gmail.com', 'Database Concepts', 5000, 10000, 50000, 'kalanki', 'kathmandu', '3', 'Nepal', '987563451', '2020-02-01 12:27:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountant_record`
--
ALTER TABLE `accountant_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_record`
--
ALTER TABLE `student_record`
  ADD PRIMARY KEY (`rollno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountant_record`
--
ALTER TABLE `accountant_record`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student_record`
--
ALTER TABLE `student_record`
  MODIFY `rollno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
