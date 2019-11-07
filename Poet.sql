-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 07, 2019 at 07:49 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Poet`
--

-- --------------------------------------------------------

--
-- Table structure for table `Customer`
--

CREATE TABLE `Customer` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `post_code` varchar(20) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Customer`
--

INSERT INTO `Customer` (`customer_id`, `first_name`, `last_name`, `address`, `post_code`, `email`) VALUES
(1, 'fName1', 'lName1', 'address1', 'po1', 'email_1'),
(2, 'fName2', 'lName2', 'address2', 'po2', 'email_2'),
(3, 'fName3', 'lName3', 'address3', 'po3', 'email_3'),
(4, 'fName4', 'lName4', 'address4', 'po4', 'email_4'),
(5, 'fName5', 'lName5', 'address5', 'po5', 'email_5');

-- --------------------------------------------------------

--
-- Table structure for table `Poem`
--

CREATE TABLE `Poem` (
  `poem_id` int(11) NOT NULL,
  `poem_title` varchar(50) DEFAULT NULL,
  `poem_contents` varchar(500) DEFAULT NULL,
  `poet_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Poem`
--

INSERT INTO `Poem` (`poem_id`, `poem_title`, `poem_contents`, `poet_id`) VALUES
(1, 'title1', 'content1', 1),
(2, 'title2', 'content2', 2),
(3, 'title3', 'content3', 3),
(4, 'title4', 'content4', 4),
(5, 'title5', 'content5', 5);

-- --------------------------------------------------------

--
-- Table structure for table `Poem_Publication`
--

CREATE TABLE `Poem_Publication` (
  `poem_id` int(11) NOT NULL,
  `publication_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Poem_Publication`
--

INSERT INTO `Poem_Publication` (`poem_id`, `publication_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `Poet`
--

CREATE TABLE `Poet` (
  `poet_id` int(11) NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `post_code` varchar(20) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Poet`
--

INSERT INTO `Poet` (`poet_id`, `first_name`, `last_name`, `address`, `post_code`, `email`) VALUES
(1, 'fName1', 'lName1', 'address1', 'po1', 'email_1'),
(2, 'fName2', 'lName2', 'address2', 'po2', 'email_2'),
(3, 'fName3', 'lName3', 'address3', 'po3', 'email_3'),
(4, 'fName4', 'lName4', 'address4', 'po4', 'email_4'),
(5, 'fName5', 'lName5', 'address5', 'po5', 'email_5');

-- --------------------------------------------------------

--
-- Table structure for table `Publication`
--

CREATE TABLE `Publication` (
  `publication_id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `price` double(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Publication`
--

INSERT INTO `Publication` (`publication_id`, `title`, `price`) VALUES
(1, 'title1', 100.00),
(2, 'title2', 200.00),
(3, 'title3', 300.00),
(4, 'title4', 400.00),
(5, 'title5', 500.00);

-- --------------------------------------------------------

--
-- Table structure for table `Sale`
--

CREATE TABLE `Sale` (
  `sale_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Sale`
--

INSERT INTO `Sale` (`sale_id`, `date`, `amount`, `customer_id`) VALUES
(1, '2019-11-01', 10.00, 1),
(2, '2019-11-02', 20.00, 2),
(3, '2019-11-03', 30.00, 3),
(4, '2019-11-04', 40.00, 4),
(5, '2019-11-05', 50.00, 5);

-- --------------------------------------------------------

--
-- Table structure for table `Sale_Publication`
--

CREATE TABLE `Sale_Publication` (
  `sale_id` int(11) NOT NULL,
  `publication_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Sale_Publication`
--

INSERT INTO `Sale_Publication` (`sale_id`, `publication_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `Poem`
--
ALTER TABLE `Poem`
  ADD PRIMARY KEY (`poem_id`),
  ADD KEY `poet_id` (`poet_id`);

--
-- Indexes for table `Poem_Publication`
--
ALTER TABLE `Poem_Publication`
  ADD PRIMARY KEY (`poem_id`,`publication_id`),
  ADD KEY `publication_id` (`publication_id`);

--
-- Indexes for table `Poet`
--
ALTER TABLE `Poet`
  ADD PRIMARY KEY (`poet_id`);

--
-- Indexes for table `Publication`
--
ALTER TABLE `Publication`
  ADD PRIMARY KEY (`publication_id`);

--
-- Indexes for table `Sale`
--
ALTER TABLE `Sale`
  ADD PRIMARY KEY (`sale_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `Sale_Publication`
--
ALTER TABLE `Sale_Publication`
  ADD PRIMARY KEY (`sale_id`,`publication_id`),
  ADD KEY `publication_id` (`publication_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Poem`
--
ALTER TABLE `Poem`
  ADD CONSTRAINT `poem_ibfk_1` FOREIGN KEY (`poet_id`) REFERENCES `Poet` (`poet_id`);

--
-- Constraints for table `Poem_Publication`
--
ALTER TABLE `Poem_Publication`
  ADD CONSTRAINT `poem_publication_ibfk_1` FOREIGN KEY (`poem_id`) REFERENCES `Poem` (`poem_id`),
  ADD CONSTRAINT `poem_publication_ibfk_2` FOREIGN KEY (`publication_id`) REFERENCES `Publication` (`publication_id`);

--
-- Constraints for table `Sale`
--
ALTER TABLE `Sale`
  ADD CONSTRAINT `sale_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `Customer` (`customer_id`);

--
-- Constraints for table `Sale_Publication`
--
ALTER TABLE `Sale_Publication`
  ADD CONSTRAINT `sale_publication_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `Sale` (`sale_id`),
  ADD CONSTRAINT `sale_publication_ibfk_2` FOREIGN KEY (`publication_id`) REFERENCES `Publication` (`publication_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
