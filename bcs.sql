-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 16, 2018 at 05:19 AM
-- Server version: 5.7.21
-- PHP Version: 7.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bcs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(25) NOT NULL,
  `unm` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `unm`, `pwd`) VALUES
(1, 'admin', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `bike`
--

CREATE TABLE `bike` (
  `id` int(25) NOT NULL,
  `name` varchar(255) NOT NULL,
  `catid` int(25) NOT NULL,
  `cost` int(25) NOT NULL,
  `mage` varchar(255) NOT NULL,
  `imgurl` varchar(255) NOT NULL,
  `dsc` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bike`
--

INSERT INTO `bike` (`id`, `name`, `catid`, `cost`, `mage`, `imgurl`, `dsc`) VALUES
(1, 'Suzuki GSX', 1, 120000, '23', 'images/suzuki-gsx-s1000f.jpeg', 'This is the 2018 Model. It has all the features that one would expect from the High end Bike out there'),
(3, 'TVS Apache RTR 160 4V', 1, 83000, '63', 'images/tvs-apache-rtr-160-4v-right-side-view_600x300.jpg', 'This is the best bike for Sports'),
(4, 'TVS Jupiter', 2, 55000, '60', 'images/tvs-jupiter-right_600x300.jpg', 'TVS has launched a new variant of the Jupiter called as the Classic edition. The new TVS Jupiter Classic edition has been priced at Rs 55,266 (ex-showroom, Delhi) and gets retro styling with an addition of windshield, chrome backrest, dual tone seats.'),
(5, 'TVS Wego', 2, 56000, '62', 'images/tvs_wego_600x300.jpg', 'The TVS Wego has been positioned as a female oriented scooter with its low kerb weight and saddle height.  The TVS Wego was the first modern line-up of scooter launched by TVS few years back in the Indian market. It has recently received two new colour shades of metallic orange and t-grey.');

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `id` int(25) NOT NULL,
  `name` varchar(255) NOT NULL,
  `catid` int(25) NOT NULL,
  `cost` int(255) NOT NULL,
  `mage` int(25) NOT NULL,
  `imgurl` varchar(255) NOT NULL,
  `dsc` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`id`, `name`, `catid`, `cost`, `mage`, `imgurl`, `dsc`) VALUES
(1, 'Maruti Suzuki Swift', 2, 499999, 22, 'images/Maruti-Suzuki-New-Swift-Exterior-117654.gif', 'Maruti Suzuki Swift price starts at â‚¹ 4.99 Lakhs and goes upto â‚¹ 8.29 Lakhs. Petrol Swift price starts at â‚¹ 4.99 Lakhs. Diesel Swift price starts at â‚¹ 5.99 Lakhs.'),
(3, 'Maruti Suzuki Dzire', 2, 556000, 25, 'images/Maruti-Suzuki-Dzire-Exterior-118637.jpg', 'The third generation Maruti Suzuki Dzire was officially revealed after much anticipation. This is the countryâ€™s favourite compact sedan and since its introduction in 2007, it has been selling in large numbers consistently.');

-- --------------------------------------------------------

--
-- Table structure for table `cat`
--

CREATE TABLE `cat` (
  `id` int(25) NOT NULL,
  `cat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cat`
--

INSERT INTO `cat` (`id`, `cat`) VALUES
(1, 'Sport'),
(2, 'Scooter'),
(3, 'Off-Road');

-- --------------------------------------------------------

--
-- Table structure for table `ccat`
--

CREATE TABLE `ccat` (
  `id` int(25) NOT NULL,
  `cat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ccat`
--

INSERT INTO `ccat` (`id`, `cat`) VALUES
(1, 'Sports'),
(2, 'Sedan');

-- --------------------------------------------------------

--
-- Table structure for table `ccomment`
--

CREATE TABLE `ccomment` (
  `id` int(25) NOT NULL,
  `puid` int(25) NOT NULL,
  `cid` int(11) NOT NULL,
  `cmt` varchar(1024) NOT NULL,
  `date` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ccomment`
--

INSERT INTO `ccomment` (`id`, `puid`, `cid`, `cmt`, `date`) VALUES
(2, 3, 1, 'nice car', '2018-05-16 17:30:30.205075');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(25) NOT NULL,
  `puid` int(25) NOT NULL,
  `bid` int(25) NOT NULL,
  `cmt` varchar(1024) NOT NULL,
  `date` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `puid`, `bid`, `cmt`, `date`) VALUES
(45, 3, 3, 'teat', '2018-05-03 11:48:55.745476'),
(46, 3, 1, 'good bike', '2018-05-16 17:30:08.065360');

-- --------------------------------------------------------

--
-- Table structure for table `puser`
--

CREATE TABLE `puser` (
  `id` int(25) NOT NULL,
  `name` varchar(255) NOT NULL,
  `unm` varchar(255) NOT NULL,
  `psw` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `puser`
--

INSERT INTO `puser` (`id`, `name`, `unm`, `psw`) VALUES
(3, 'Teja', 'teja', 'teja');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(25) NOT NULL,
  `vtype` varchar(255) NOT NULL,
  `puid` int(25) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `comment` varchar(2014) NOT NULL,
  `done` int(25) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `vtype`, `puid`, `name`, `model`, `comment`, `done`) VALUES
(1, 'car', 1, 'Maruti Suzuki', '2009', 'Please Add this Car Details to the Database', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bike`
--
ALTER TABLE `bike`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cat`
--
ALTER TABLE `cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ccat`
--
ALTER TABLE `ccat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ccomment`
--
ALTER TABLE `ccomment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `puser`
--
ALTER TABLE `puser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bike`
--
ALTER TABLE `bike`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cat`
--
ALTER TABLE `cat`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ccat`
--
ALTER TABLE `ccat`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ccomment`
--
ALTER TABLE `ccomment`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `puser`
--
ALTER TABLE `puser`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
