-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2022 at 05:18 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cricket_tournament`
--

-- --------------------------------------------------------

--
-- Table structure for table `batsman`
--

CREATE TABLE `batsman` (
  `player_id` varchar(20) NOT NULL,
  `player_name` varchar(50) NOT NULL,
  `tm_id` varchar(20) NOT NULL,
  `batting_style` enum('Left Handed Batsman','Right Handed Batsman','360 Degree Batsman') NOT NULL,
  `total_runs` int(5) NOT NULL,
  `average` float NOT NULL,
  `top_score` int(5) NOT NULL,
  `total_match_played` int(3) NOT NULL,
  `strike_rate` float NOT NULL,
  `100s` smallint(4) NOT NULL,
  `50s` smallint(3) NOT NULL,
  `jersey_number` smallint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batsman`
--

INSERT INTO `batsman` (`player_id`, `player_name`, `tm_id`, `batting_style`, `total_runs`, `average`, `top_score`, `total_match_played`, `strike_rate`, `100s`, `50s`, `jersey_number`) VALUES
('300', 'Tamim Iqbal Khan', '100', 'Left Handed Batsman', 7826, 36.24, 158, 225, 78.5, 14, 52, 28),
('302', 'Shakib Al Hasan', '100', 'Left Handed Batsman', 6755, 37.73, 134, 221, 82.25, 9, 50, 75),
('304', 'Mushfiqur Rahim', '100', 'Right Handed Batsman', 6697, 36.6, 144, 223, 78.96, 8, 41, 15),
('333', 'Virat Kohli', '150', 'Right Handed Batsman', 12311, 58.07, 183, 260, 92.92, 43, 64, 18),
('334', 'Rohit Sharma', '150', 'Right Handed Batsman', 9283, 48.6, 264, 228, 89.02, 29, 44, 45),
('335', 'KL Rahul', '150', 'Right Handed Batsman', 1634, 46.69, 122, 42, 88.61, 5, 10, 1),
('351', 'David Miller', '101', 'Left Handed Batsman', 3478, 41.02, 139, 142, 101.04, 5, 17, 10),
('360', 'AB de Villers', '101', '360 Degree Batsman', 9577, 53.5, 176, 228, 88.4, 25, 53, 17),
('384', 'Martin Guptil', '105', 'Right Handed Batsman', 7041, 42.16, 237, 189, 78.66, 17, 37, 31);

-- --------------------------------------------------------

--
-- Table structure for table `bowler`
--

CREATE TABLE `bowler` (
  `player_id` varchar(20) NOT NULL,
  `tm_id` varchar(20) NOT NULL,
  `bowling_style` enum('Left Handed','Right Handed') NOT NULL,
  `average_speed` varchar(10) NOT NULL,
  `higest_speed` varchar(10) NOT NULL,
  `economy_rate` float NOT NULL,
  `bowling_average` float NOT NULL,
  `best_bowling_figure` varchar(20) NOT NULL,
  `batting_average` float NOT NULL,
  `jersey-number` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bowler`
--

INSERT INTO `bowler` (`player_id`, `tm_id`, `bowling_style`, `average_speed`, `higest_speed`, `economy_rate`, `bowling_average`, `best_bowling_figure`, `batting_average`, `jersey-number`) VALUES
('303', '100', 'Left Handed', '130+  km/h', '145+  km/h', 5.5, 0, '6/43', 7.18, 0),
('303', '100', 'Left Handed', '130+  km/h', '145+  km/h', 5.5, 22.83, '6/43', 7.18, 90),
('305', '100', 'Right Handed', '130+  km/h', '148+  km/h', 5.7, 33.05, '5/28', 4.35, 3),
('306', '100', 'Left Handed', '132+  km/h', '147+  km/h', 5.8, 22.85, '4/46', 4, 136),
('352', '101', 'Right Handed', '132+  km/h', '149+  km/h', 6.2, 25.12, '6/58', 9.2, 126),
('353', '101', 'Right Handed', '133+ km/h', '152+ km/h', 5.2, 27.4, '6/16', 16.36, 114),
('402', '115', 'Left Handed', '138+ km/h', '156+ km/h', 4.87, 22.45, '6/28', 12.2, 56),
('403', '115', 'Left Handed', '137+ km/h', '155+ km/h', 5, 28.78, '5/70', 9.82, 30);

-- --------------------------------------------------------

--
-- Table structure for table `coach`
--

CREATE TABLE `coach` (
  `coach_id` varchar(20) NOT NULL,
  `coach_name` varchar(50) NOT NULL,
  `country` varchar(100) NOT NULL,
  `present_coach_of` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coach`
--

INSERT INTO `coach` (`coach_id`, `coach_name`, `country`, `present_coach_of`) VALUES
('200', 'Russel Domingo', 'South Africa', 'Bangladesh Cricket Team'),
('201', 'Mark Boucher', 'South Africa', 'South Africa Crcket Team'),
('202', 'Mickey Arthur', 'South Africa', 'Srilanka Cricket Team'),
('205', 'Gary Stead', 'New Zealand', 'New Zealand Cricket Team'),
('215', 'Andrew McDonald', 'Australia', 'Australia Cricket Team'),
('250', 'Rahul Dravid', 'India', 'India Cricket Team');

-- --------------------------------------------------------

--
-- Table structure for table `match_info`
--

CREATE TABLE `match_info` (
  `match_id` varchar(20) NOT NULL,
  `umpire1_name` varchar(50) NOT NULL,
  `umpire1_id` varchar(20) NOT NULL,
  `umpire2_name` varchar(50) NOT NULL,
  `umpire2_id` varchar(20) NOT NULL,
  `umpire3_name` varchar(50) NOT NULL,
  `umpire3_id` varchar(20) NOT NULL,
  `team1_name` varchar(50) NOT NULL,
  `tm1_id` varchar(20) NOT NULL,
  `team2_name` varchar(50) NOT NULL,
  `tm2_id` varchar(20) NOT NULL,
  `over` smallint(2) NOT NULL,
  `toss` varchar(100) NOT NULL,
  `result` varchar(100) NOT NULL,
  `match_status` enum('Finished','Postponed','Canceled','Upcoming') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `match_info`
--

INSERT INTO `match_info` (`match_id`, `umpire1_name`, `umpire1_id`, `umpire2_name`, `umpire2_id`, `umpire3_name`, `umpire3_id`, `team1_name`, `tm1_id`, `team2_name`, `tm2_id`, `over`, `toss`, `result`, `match_status`) VALUES
('471', 'Kumar Dharna Sena', '1000', 'Micael Gough', '1001', 'Aleem Daar', '1002', 'Bangladesh', '100', 'Srilanka', '110', 50, 'Stilanka won the toss', 'Bangladesh won the match', 'Upcoming');

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `player_id` varchar(20) NOT NULL,
  `player_name` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `player_category` enum('Bowler','Batsman','Alrounder') NOT NULL,
  `batting_or_bowling_style` enum('Right Handed','Left Handed','360 Degree') NOT NULL,
  `country_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`player_id`, `player_name`, `date_of_birth`, `player_category`, `batting_or_bowling_style`, `country_name`) VALUES
('20101043', 'Apurba Dey', '2000-02-13', 'Batsman', '', 'Bangladesh'),
('300', 'Tamim Iqbal', '1989-03-20', 'Batsman', 'Left Handed', 'Bangladesh'),
('302', 'Shakib Al Hasan', '1987-03-24', 'Alrounder', 'Left Handed', 'Bangladesh'),
('303', 'Mustafizur Rahman', '1995-09-06', 'Bowler', 'Left Handed', 'Bangladesh'),
('304', 'Mushfiqur Rahim', '1987-05-09', 'Batsman', 'Right Handed', 'Bangladesh'),
('305', 'Taskin Ahmed', '1995-04-03', 'Bowler', 'Right Handed', 'Bangladesh'),
('306', 'Shoriful Islam', '2001-06-03', 'Bowler', 'Left Handed', 'Bangladesh'),
('320', 'Dimuth Karunaratne', '1988-04-21', 'Batsman', 'Left Handed', 'Srilanka'),
('333', 'Virat  Kohli', '1988-11-05', 'Batsman', 'Right Handed', 'India'),
('334', 'Rohit Sharma', '1987-04-30', 'Batsman', 'Right Handed', 'India'),
('335', 'KL Rahul', '1992-04-18', 'Batsman', 'Right Handed', 'India'),
('336', 'Jasprit Bumrah', '1993-12-06', 'Bowler', 'Right Handed', 'India'),
('337', 'Mohammed Shami', '1990-09-03', 'Bowler', 'Right Handed', 'India'),
('350', 'Dean Elgar', '1987-06-11', 'Batsman', 'Left Handed', 'South Africa'),
('351', 'David Miller', '1989-06-10', 'Alrounder', 'Left Handed', 'South Africa'),
('352', 'Lungi Nagidi', '1996-03-29', 'Bowler', 'Right Handed', 'South Africa'),
('353', 'Kagiso Rabada', '1995-05-25', 'Bowler', 'Right Handed', 'South Africa'),
('354', 'Qiunton de Cock', '1992-12-17', 'Batsman', 'Right Handed', 'South Africa'),
('355', 'Kesav Maharaj', '1990-02-07', 'Alrounder', 'Left Handed', 'South Africa'),
('360', 'AB de Villiers', '1984-02-17', 'Batsman', 'Right Handed', 'South Africa'),
('380', 'Kane Williamson  (Captain)', '1990-08-08', 'Batsman', 'Right Handed', 'New Zealand'),
('381', 'Trent Boult', '1989-07-22', 'Bowler', 'Left Handed', 'New Zealand'),
('383', 'Tim Southee', '1988-12-11', 'Bowler', 'Right Handed', 'New Zealand'),
('384', 'Martin Guptil', '1986-09-30', 'Batsman', 'Right Handed', 'New Zealand'),
('400', 'Aron FInch (Captain)', '1986-04-04', 'Batsman', 'Right Handed', 'Australia'),
('401', 'David Warner', '1986-06-03', 'Batsman', 'Left Handed', 'Australia'),
('402', 'Mitchel Starc', '1990-06-03', 'Bowler', 'Left Handed', 'Australia'),
('403', 'Pat Cummins', '1993-04-07', 'Bowler', 'Left Handed', 'Australia'),
('404', 'Glenn Maxwell', '1988-07-03', 'Alrounder', 'Right Handed', 'Australia');

-- --------------------------------------------------------

--
-- Table structure for table `point_table`
--

CREATE TABLE `point_table` (
  `tm_id` varchar(20) NOT NULL,
  `point` smallint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `point_table`
--

INSERT INTO `point_table` (`tm_id`, `point`) VALUES
('100', 0),
('110', 0);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `schedule_id` varchar(20) NOT NULL,
  `match_id` varchar(20) NOT NULL,
  `venue` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `Stadium` varchar(100) NOT NULL,
  `Time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`schedule_id`, `match_id`, `venue`, `country`, `Stadium`, `Time`) VALUES
('900', '471', 'Dhaka', 'Bangladesh', 'Sher-E-Bangla National Stadium', '2022-04-28');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `tm_id` varchar(20) NOT NULL,
  `tm_name` varchar(50) DEFAULT NULL,
  `head_coach_id` varchar(20) NOT NULL,
  `head_coach_name` varchar(100) NOT NULL,
  `captain_id` varchar(20) NOT NULL,
  `country_name` varchar(50) NOT NULL,
  `tm_rank` smallint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`tm_id`, `tm_name`, `head_coach_id`, `head_coach_name`, `captain_id`, `country_name`, `tm_rank`) VALUES
('100', 'Bangladesh Cricket Team', '200', 'Russel Domingo', '300', 'Bangladesh', 5),
('101', 'South Africa Cricket Team', '201', 'Mark Boucher', '350', 'South Africa', 7),
('105', 'New Zealand Cricket Team', '205', 'Gary Stead', '380', 'New Zealand', 2),
('110', 'Srilanka Cricket Team', '202', 'Mickey Arthur', '320', 'Srilanka', 9),
('115', 'Australia Cricket Team', '215', 'Andrew MCdonald', '400', 'Australia', 4),
('150', 'India Cricket Team', '250', 'Rahul Dravid', '334', 'India', 3);

-- --------------------------------------------------------

--
-- Table structure for table `umpire`
--

CREATE TABLE `umpire` (
  `umpire_name` varchar(50) DEFAULT NULL,
  `umpire_id` varchar(20) NOT NULL,
  `total_umpired_matches` int(3) NOT NULL,
  `country` varchar(50) NOT NULL,
  `controversy` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `umpire`
--

INSERT INTO `umpire` (`umpire_name`, `umpire_id`, `total_umpired_matches`, `country`, `controversy`) VALUES
('Kumar Dharmasena', '1000', 150, 'Srilanka', ''),
('Michael Gough', '1001', 120, 'United Kingdom', ''),
('Aleem Daar', '1002', 110, 'Pakistan', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batsman`
--
ALTER TABLE `batsman`
  ADD PRIMARY KEY (`player_id`),
  ADD UNIQUE KEY `player_id_3` (`player_id`),
  ADD UNIQUE KEY `player_id_4` (`player_id`),
  ADD KEY `player_id` (`player_id`),
  ADD KEY `player_id_2` (`player_id`),
  ADD KEY `tm_id` (`tm_id`),
  ADD KEY `tm_id_2` (`tm_id`),
  ADD KEY `player_id_5` (`player_id`);

--
-- Indexes for table `bowler`
--
ALTER TABLE `bowler`
  ADD KEY `player_id` (`player_id`),
  ADD KEY `tm_id` (`tm_id`),
  ADD KEY `tm_id_2` (`tm_id`);

--
-- Indexes for table `coach`
--
ALTER TABLE `coach`
  ADD PRIMARY KEY (`coach_id`),
  ADD KEY `Coach ID` (`coach_id`);

--
-- Indexes for table `match_info`
--
ALTER TABLE `match_info`
  ADD PRIMARY KEY (`match_id`),
  ADD KEY `match_id` (`match_id`),
  ADD KEY `umpire1_id` (`umpire1_id`,`umpire2_id`,`umpire3_id`,`tm1_id`,`tm2_id`),
  ADD KEY `match_id_2` (`match_id`),
  ADD KEY `tm1_id` (`tm1_id`),
  ADD KEY `tm2_id` (`tm2_id`),
  ADD KEY `match info_ibfk_7` (`umpire2_id`),
  ADD KEY `umpire3_id` (`umpire3_id`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`player_id`),
  ADD UNIQUE KEY `player_id_2` (`player_id`),
  ADD UNIQUE KEY `player_id_4` (`player_id`),
  ADD KEY `player_id` (`player_id`),
  ADD KEY `player_id_3` (`player_id`),
  ADD KEY `player_id_5` (`player_id`);

--
-- Indexes for table `point_table`
--
ALTER TABLE `point_table`
  ADD KEY `tm_id` (`tm_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`schedule_id`),
  ADD UNIQUE KEY `match_id` (`match_id`),
  ADD KEY `match_id_2` (`match_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`tm_id`),
  ADD UNIQUE KEY `coach_name` (`head_coach_name`),
  ADD UNIQUE KEY `country_name` (`country_name`),
  ADD UNIQUE KEY `tm_rank` (`tm_rank`),
  ADD UNIQUE KEY `tm_name` (`tm_name`),
  ADD KEY `coach_id` (`head_coach_id`),
  ADD KEY `captain_id` (`captain_id`),
  ADD KEY `tm_name_2` (`tm_name`),
  ADD KEY `coach_name_2` (`head_coach_name`),
  ADD KEY `coach_id_2` (`head_coach_id`),
  ADD KEY `tm_id` (`tm_id`);

--
-- Indexes for table `umpire`
--
ALTER TABLE `umpire`
  ADD PRIMARY KEY (`umpire_id`),
  ADD KEY `umpire_id` (`umpire_id`),
  ADD KEY `umpire1_id` (`umpire_id`),
  ADD KEY `umpire1_id_2` (`umpire_id`),
  ADD KEY `umpire1_id_3` (`umpire_id`),
  ADD KEY `umpire_id_2` (`umpire_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `batsman`
--
ALTER TABLE `batsman`
  ADD CONSTRAINT `batsman_ibfk_1` FOREIGN KEY (`tm_id`) REFERENCES `team` (`tm_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `match info_ibfk_5` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bowler`
--
ALTER TABLE `bowler`
  ADD CONSTRAINT `bowler_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `match_info`
--
ALTER TABLE `match_info`
  ADD CONSTRAINT `match_info_ibfk_4` FOREIGN KEY (`tm1_id`) REFERENCES `team` (`tm_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `match_info_ibfk_5` FOREIGN KEY (`tm2_id`) REFERENCES `team` (`tm_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `match_info_ibfk_6` FOREIGN KEY (`umpire1_id`) REFERENCES `umpire` (`umpire_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `match_info_ibfk_7` FOREIGN KEY (`umpire2_id`) REFERENCES `umpire` (`umpire_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `match_info_ibfk_8` FOREIGN KEY (`umpire3_id`) REFERENCES `umpire` (`umpire_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `point_table`
--
ALTER TABLE `point_table`
  ADD CONSTRAINT `point_table_ibfk_1` FOREIGN KEY (`tm_id`) REFERENCES `team` (`tm_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`match_id`) REFERENCES `match_info` (`match_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `team_ibfk_1` FOREIGN KEY (`captain_id`) REFERENCES `player` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
