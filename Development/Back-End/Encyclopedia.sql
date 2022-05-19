-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2022 at 11:26 AM
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
  `PublishedDate` varchar(60) NOT NULL,
  `ContentID` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`ArticleID`, `Name`, `ArticleContent`, `Language`, `PublishedDate`, `ContentID`) VALUES
(16, 'Birds Facts', 'Birds are vertebrate animals adapted for flight.\r\n\r\nMany can also run, jump, swim, and dive. Some, like penguins, have lost the ability to fly but retained their wings. Birds are found worldwide and in all habitats. The largest is the nine-foot-tall ostrich. The smallest is the two-inch-long bee hummingbird.\r\n\r\nEverything about the anatomy of a bird reflects its ability to fly. The wings, for example, are shaped to create lift. The leading edge is thicker than the back edge, and they are covered in feathers that narrow to a point. Airplane wings are modeled after bird wings.\r\n\r\nThe bones and muscles of the wing are also highly specialized. The main bone, the humerus, which is similar to the upper arm of a mammal, is hollow instead of solid. It also connects to the bird’s air sac system, which, in turn, connects to its lungs. The powerful flight muscles of the shoulder attach to the keel, a special ridge of bone that runs down the center of the wide sternum, or breastbone. The tail feathers are used for steering.\r\n\r\nBirds have a unique digestive system that allows them to eat when they can—usually on the fly—and digest later. They use their beaks to grab and swallow food. Even the way a bird reproduces is related to flight. Instead of carrying the extra weight of developing young inside their bodies, they lay eggs and incubate them in a nest.\r\n\r\nThe fossil record shows that birds evolved alongside the dinosaurs during the Jurassic period 160 million years ago. The best known fossil is archaeopteryx, which was about the size of a crow.', 'English', '14/5/2022', 2),
(17, 'Parrots Facts', 'The parrots are a broad order of more than 350 birds. Macaws, Amazons, lorikeets, lovebirds, cockatoos and many others are all considered parrots.\n\nShared Traits\nThough there is great diversity among these birds, there are similarities as well. All parrots have curved beaks and all are zygodactyls, meaning they have four toes on each foot, two pointing forward and two projecting backward. Most parrots eat fruit, flowers, buds, nuts, seeds, and some small creatures such as insects.\n\nParrots are found in warm climates all over most of the world. The greatest diversities exist in Australasia, Central America, and South America.\n\nPopularity as Pets\nMany parrots are kept as pets, especially macaws, Amazon parrots, cockatiels, parakeets, and cockatoos. These birds have been popular companions throughout history because they are intelligent, charismatic, colorful, and musical. Some birds can imitate many nonavian sounds, including human speech. The male African gray parrot (Psittacus erithacus) is the most accomplished user of human speech in the animal world; this rain forest-dweller is an uncanny mimic.', 'English', '5/14/2022 1:42:58 PM', 4),
(18, 'Cockatiels Birds', 'There’s a reason why the cockatiel is one of the most popular companion birds — this slender Australian parrot can be both cuddly and bold. Cockatiels can also be curious and, at times, feisty. With a cockatiel in the house, you are likely to hear a repertoire of chirps and whistles.Cuddly, outgoing and comical are just three reasons why the cockatiel is the No. 1 pet bird in America. Cockatiels are also talented whistlers, and male cockatiels in particular are known for their whistle serenades, which can be directed at their favored person, their favorite object or their mirror reflection. When not whistling or keeping themselves busy foraging for food and fun around the cage, cockatiels often enjoy spending their downtime snuggling on their favored person’s shoulder. A healthy, well-socialized cockatiel can make a great family pet and is also ideal for apartment living.Cockatiels are native to the semi-arid regions of Australia. This open environment might be a reason why cockatiels don’t have the ear-piercing screech of parrots originating from dense rain-forest habitats. Wild cockatiels fly to the ground to forage for food. Cockatiels readily breed in the wild, and they are also easy to breed in captivity, which makes them widely available as pets at a lower cost than most other parrot species. Wild cockatiels are always on alert for predators and are light sleepers. A pet cockatiel might have an occasional night-fright episode, where it thrashes around the cage at night as if startled. You can help your cockatiel find its way back to its perch by leaving a night light on in its room.', 'English', '5/14/2022 1:44:25 PM', 5);

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
(1, 'xxx', 16, 1, NULL),
(2, 'Birds Facts', 16, 2, NULL),
(3, 'A1', 16, 2, NULL),
(4, 'Parrots Facts', 16, 2, NULL),
(5, 'Cockatiels Birds', 16, 2, NULL),
(6, 'S&U', 16, 3, NULL),
(7, 'S&U', 16, 3, NULL),
(8, 'S&U', 16, 3, NULL),
(9, 'A&P', 16, 4, NULL);

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
(16, 'saadsaad', 'saad@saad.saad', 'saadsaad', NULL, '5/17/2022 7:02:52 PM'),
(111, 'FatmaMekhemer', 'fatmamekhemer999@hotmail.com', '123456', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `user_category`
--

CREATE TABLE `user_category` (
  `UserID` int(20) NOT NULL,
  `CategoryID` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_category`
--

INSERT INTO `user_category` (`UserID`, `CategoryID`) VALUES
(16, 1),
(16, 3),
(16, 4);

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
(1, 'xxx', 0x4661746d6161612e6d7034, ' ', 1),
(2, 'xxxx', 0x4661746d6161612e6d7034, ' ', 2),
(3, 'A&P', 0x4661746d6161612e6d7034, ' ', 9);

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
(1, 'A1', 0x35392e6d7033, ' ', 3),
(2, 'S&U', 0x35392e6d7033, ' ', 8);

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
  MODIFY `ArticleID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
