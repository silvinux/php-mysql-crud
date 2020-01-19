-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2017 at 01:09 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud`
--
CREATE DATABASE `crud` DEFAULT CHARACTER SET utf8mb4;

USE `crud`;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `country` varchar(50) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `student_name`, `email_address`, `contact`, `gender`, `country`, `datetime`) VALUES
(01, 'Son Goku', 'goku@dragonball.com', '81311000001', 'Male', 'Japan', '2017-08-27 20:11:50'),
(02, 'Bulma', 'bulma@dragonball.com', '81311000002', 'Female', 'Japan', '2017-08-27 20:11:50'),
(03, 'Master Roshi', 'turtlehermit@dragonball.com', '81311000003', 'Male', 'Japan', '2017-08-27 20:11:50'),
(04, 'Yamcha', 'yamcha@dragonball.com', '81311000004', 'Male', 'Japan', '2017-08-27 20:11:50'),
(05, 'Krillin', 'krillin@dragonball.com', '81311000005', 'Male', 'Japan', '2017-08-27 20:11:50'),
(06, 'Tien Shinhan', 'tienshinhan@dragonball.com', '81311000005', 'Male', 'Japan', '2017-08-27 20:11:50'),
(07, 'Piccolo', 'piccolo@dragonball.com', '81311000005', 'Male', 'Japan', '2017-08-27 20:11:50'),
(08, 'Son Gohan', 'gohan@dragonball.com', '81311000005', 'Male', 'Japan', '2017-08-27 20:11:50'),
(09, 'Vegeta', 'vegeta@dragonball.com', '81311000005', 'Male', 'Japan', '2017-08-27 20:11:50'),
(10, 'Chi-Chi', 'chichi@dragonball.com', '81311000005', 'Male', 'Japan', '2017-08-27 20:11:50'),

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
