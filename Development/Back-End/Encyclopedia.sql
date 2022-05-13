-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2022 at 08:44 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `encyclopedia`
--
CREATE DATABASE IF NOT EXISTS `encyclopedia` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `encyclopedia`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminID` int(20) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminID`, `Username`, `Password`) VALUES
(1, 'admin', 'adminadmin');

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `ArticleID` int(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `ArticleContent` mediumtext NOT NULL,
  `Language` varchar(30) NOT NULL,
  `ContentID` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`ArticleID`, `Name`, `ArticleContent`, `Language`, `ContentID`) VALUES
(6, 'xx', 'HiHiHiHiHiHiHiHiHiHiHi', 'English', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CategoryID` int(20) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CategoryID`, `type`) VALUES
(1, 'History'),
(2, 'Birds and Parrots'),
(3, 'Space and Universe'),
(4, 'Animal and Plants');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `ContentID` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `UserID` int(20) NOT NULL,
  `CategoryID` int(20) DEFAULT NULL,
  `AdminID` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`ContentID`, `name`, `UserID`, `CategoryID`, `AdminID`) VALUES
(1, 'xx', 16, 222, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(20) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `password` varchar(30) NOT NULL,
  `AdminID` int(20) DEFAULT NULL,
  `LoginDate` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `Username`, `Email`, `password`, `AdminID`, `LoginDate`) VALUES
(2, 'maio', 'raven.radwa@gmail.com', '12345678', NULL, ''),
(16, 'saadsaad', 'saad@saad.saad', 'saadsaad', NULL, '5/12/2022 6:40:33 PM'),
(111, 'FatmaMekhemer', 'fatmamekhemer999@hotmail.com', '123456', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `user_category`
--

CREATE TABLE `user_category` (
  `UserID` int(20) NOT NULL,
  `CategoryID` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `VideoID` int(20) NOT NULL,
  `VideoName` varchar(50) NOT NULL,
  `VideoContent` blob NOT NULL,
  `Resolution` varchar(30) NOT NULL,
  `ContentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`VideoID`, `VideoName`, `VideoContent`, `Resolution`, `ContentID`) VALUES
(2002, '', 0x4661746d6161612e6d7034, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `voice_rec`
--

CREATE TABLE `voice_rec` (
  `VoiceRecID` int(20) NOT NULL,
  `VoiceRecName` varchar(50) NOT NULL,
  `VoiceContent` blob NOT NULL,
  `Player_Type` varchar(30) NOT NULL,
  `ContentID` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voice_rec`
--

INSERT INTO `voice_rec` (`VoiceRecID`, `VoiceRecName`, `VoiceContent`, `Player_Type`, `ContentID`) VALUES
(2002, '', 0x316d696e26327365632e6d7033, '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`ArticleID`),
  ADD KEY `ContentID` (`ContentID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`ContentID`),
  ADD KEY `UserID` (`UserID`,`CategoryID`),
  ADD KEY `AdminID` (`AdminID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `AdminID` (`AdminID`);

--
-- Indexes for table `user_category`
--
ALTER TABLE `user_category`
  ADD PRIMARY KEY (`UserID`,`CategoryID`),
  ADD KEY `CategoryID` (`CategoryID`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`VideoID`),
  ADD KEY `ContentID` (`ContentID`);

--
-- Indexes for table `voice_rec`
--
ALTER TABLE `voice_rec`
  ADD PRIMARY KEY (`VoiceRecID`),
  ADD KEY `ContentID` (`ContentID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `AdminID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `ArticleID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `VideoID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2003;

--
-- AUTO_INCREMENT for table `voice_rec`
--
ALTER TABLE `voice_rec`
  MODIFY `VoiceRecID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2003;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`ContentID`) REFERENCES `content` (`ContentID`);

--
-- Constraints for table `content`
--
ALTER TABLE `content`
  ADD CONSTRAINT `content_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`),
  ADD CONSTRAINT `content_ibfk_2` FOREIGN KEY (`AdminID`) REFERENCES `admin` (`AdminID`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`AdminID`) REFERENCES `admin` (`AdminID`);

--
-- Constraints for table `user_category`
--
ALTER TABLE `user_category`
  ADD CONSTRAINT `user_category_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`),
  ADD CONSTRAINT `user_category_ibfk_2` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`CategoryID`);

--
-- Constraints for table `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `video_ibfk_1` FOREIGN KEY (`ContentID`) REFERENCES `content` (`ContentID`);

--
-- Constraints for table `voice_rec`
--
ALTER TABLE `voice_rec`
  ADD CONSTRAINT `voice_rec_ibfk_1` FOREIGN KEY (`ContentID`) REFERENCES `content` (`ContentID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
