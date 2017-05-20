-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 20, 2017 at 06:21 AM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloodbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `adv_id` int(100) NOT NULL,
  `camp_title` varchar(100) NOT NULL,
  `org_by` varchar(100) NOT NULL,
  `pic` varchar(700) NOT NULL,
  `detail` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`adv_id`, `camp_title`, `org_by`, `pic`, `detail`) VALUES
(4, 'Ramgarhia Engg Collage', 'Ramgarhia education consial', '2.jpg', 'Blood donation camp Organised by REC.  One who donate get certificate by REC\r\nThat can help you also to gets blood in jeopard time');

-- --------------------------------------------------------

--
-- Table structure for table `blooddonated`
--

CREATE TABLE `blooddonated` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `camp` varchar(200) NOT NULL,
  `adhaar` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blooddonated`
--

INSERT INTO `blooddonated` (`id`, `name`, `unit`, `camp`, `adhaar`) VALUES
(1, 'Sandip', '1', '10', '121324553'),
(2, 'aadwew', '32', '1', '121334');

-- --------------------------------------------------------

--
-- Table structure for table `bloodgroup`
--

CREATE TABLE `bloodgroup` (
  `bg_id` int(100) NOT NULL,
  `bg_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bloodgroup`
--

INSERT INTO `bloodgroup` (`bg_id`, `bg_name`) VALUES
(13, 'o+'),
(14, 'o-'),
(15, 'AB+'),
(16, 'AB-'),
(17, 'A+'),
(18, 'A-'),
(19, 'B+'),
(20, 'B-');

-- --------------------------------------------------------

--
-- Table structure for table `camp`
--

CREATE TABLE `camp` (
  `camp_id` int(100) NOT NULL,
  `camp_title` varchar(500) NOT NULL,
  `organised_by` varchar(500) NOT NULL,
  `state` int(100) NOT NULL,
  `city` int(100) NOT NULL,
  `pic` varchar(900) NOT NULL,
  `detail` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `camp`
--

INSERT INTO `camp` (`camp_id`, `camp_title`, `organised_by`, `state`, `city`, `pic`, `detail`) VALUES
(1, 'Ramgarhia Engg Collage', 'Ramgarhia Counsil', 1, 1, 'blood_donation_camp.jpg', 'A Blood Donation Camp at Ramgarhia Engg Collage organized by Ramgarhia consial , Phagwara.'),
(7, ' Lovely Professional University', 'Lovely Professional University', 1, 7, 'B.D camp 034.jpg', 'A Blood Donation Camp at Lovely Professional University organized by Lovely Professional University , Jalandhar.'),
(8, 'Guru Nanak College', 'Lions Club', 1, 1, 'p36.jpg', 'A Blood Donation Camp at G.N.C College, Phagwara organized by Lions Club, Phagwara.'),
(9, 'Apee Jay College', 'Human Welfare Society', 1, 1, 'p38_2.jpg', 'A Blood Donation Camp at Apee-Jay College, Jalandhar organized by Human Welfare Society, Jalandhar.\n '),
(10, 'sanjoycamp', 'sanjoyorg', 6, 8, '15940497_624586501081396_923954112084049212_n.jpg', 'sannjoy rokto debe');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(100) NOT NULL,
  `city_name` varchar(100) NOT NULL,
  `pin_code` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `state` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `pin_code`, `district`, `state`) VALUES
(1, 'phagwara', '144401', 'kapurthala', 1),
(4, 'faridabad', '121001', 'Gurgaon', 2),
(7, 'jalandhar', '144001', 'jalandhar', 1),
(8, 'kolkata', '700001', 'kolkata', 6);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `row_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `subj` varchar(700) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`row_id`, `name`, `email`, `mobile`, `subj`) VALUES
(1, 'sandip', 'sandipgh19@gmail.com', '8017057028', 'save life'),
(2, 'sanjoy', 'sanjoyhalder94@gmail.com', '8981679056', 'save life'),
(3, 'saikat', 'saikat@saikatharryc.me', '8373886873', 'give blooooooood'),
(4, 'subrata', 'subratamanna485@gmail.com', '8478094744', 'save life');

-- --------------------------------------------------------

--
-- Table structure for table `donarregistration`
--

CREATE TABLE `donarregistration` (
  `donar_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `b_id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pwd` int(100) NOT NULL,
  `pic` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donarregistration`
--

INSERT INTO `donarregistration` (`donar_id`, `name`, `gender`, `age`, `mobile`, `b_id`, `email`, `pwd`, `pic`) VALUES
(3, 'neeru', 'female', '20', '9463958058', 13, 'neeru.bawa@yahoo.com', 123, 'neeru.jpg'),
(4, 'Paras Bhatia', 'male', '21', '9888961990', 13, 'parasbhatia08@gmail.com', 123, '11168037_1610636085842033_904443745256932191_n.jpg'),
(5, 'Rakesh', 'male', '22', '9876505652', 17, 'rakesh12@gmil.com', 123, '1002679_629448530471361_5912528223898153120_n.jpg'),
(6, 'Manu', 'female', '20', '9779730479', 13, 'manpreetkaler@yahoo.com', 123, '12144826_691191231017304_7118038794667291151_n.jpg'),
(7, 'Sukhwinder', 'male', '22', '01823280290', 17, 'sunnysuyan@gmail.com', 123, 'p3Penguins.jpg'),
(8, 'Abhishek', 'male', '24', '0123456780', 19, 'abhi@ymail.com', 123, 'resizedBlood donation (1).jpg'),
(9, 'Ramanjeet Kaur', 'female', '26', '9295769630', 15, 'rbawa08@yahoo.com', 123, '11261437_1624099511137421_8482759699813102898_n.jpg'),
(10, 'kuldip Banga', 'male', '26', '9878967543', 15, 'kbanga@yahoo.com', 123, '10593057_728311113906338_1063644592728298376_n.jpg'),
(11, 'Jaspinder', 'male', '24', '9445678765', 16, 'singhjaspinder12@gmail.com', 123, '12038392_969929529729736_1007747926670734265_n (1).jpg'),
(12, 'Sahil', 'male', '20', '8591824296', 13, 'sahildubey@gmail.com', 123, '12038380_834746969972073_6382623771453128938_n.jpg'),
(13, 'sonu', 'male', '25', '9594918765', 16, 'sonukhana34@gmail.com', 123, '11863382_1032998280067097_2552428582935820453_n.jpg'),
(14, 'Vinny', 'male', '24', '01824230721', 18, 'vinny786@gmail.com', 123, '11175046_366978330169273_8044521424217911178_n.jpg'),
(15, 'Rishav Bhatia', 'male', '19', '8781846758', 19, 'rbhatia@ymail.com', 123, '1491626_647476172014342_6155162312561723489_n.jpg'),
(16, 'Rahul Bangar', 'male', '25', '9216291294', 20, 'raulban@gmail.com', 123, '11899909_948967995160204_759838727467883977_n.jpg'),
(17, 'Prabhjot', 'male', '24', '9818134576', 20, 'prabh786@gmail.com', 123, '11899866_690854484348510_8725848025714675727_n.jpg'),
(18, 'Ridhima', 'female', '25', '9889786545', 14, 'ridhi@ymail.com', 123, '1.jpg'),
(19, 'Preet karanq', 'female', '28', '8427429079', 14, 'preet22@yahoo.com', 123, '123.jpg'),
(20, 'mntrtgrt', 'female', '35', '9888976570', 18, 'manat@yahoo.com', 123, 'ccccc.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `donation_id` int(100) NOT NULL,
  `camp_id` int(100) NOT NULL,
  `ddate` datetime NOT NULL,
  `units` int(100) NOT NULL,
  `detail` varchar(800) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`donation_id`, `camp_id`, `ddate`, `units`, `detail`, `email`) VALUES
(28, 1, '2014-09-14 00:00:00', 20, 'A Blood Donation Camp at Ramgarhia Engg Collage organized by Ramgarhia consial , Phagwara.', 'parasbhatia08@gmail.com'),
(29, 7, '2015-05-11 00:00:00', 30, 'A Blood Donation Camp at Lovely Professional University organized by Lovely Professional University , Jalandhar.', 'parasbhatia08@gmail.com'),
(30, 8, '2014-11-04 00:00:00', 25, 'A Blood Donation Camp at G.N.C College, Phagwara organized by Lions Club, Phagwara.', 'parasbhatia08@gmail.com'),
(31, 9, '2014-12-18 00:00:00', 22, 'A Blood Donation Camp at Apee-Jay College, Jalandhar organized by Human Welfare Society, Jalandhar.\r\n ', 'parasbhatia08@gmail.com'),
(32, 7, '2010-06-19 00:00:00', 27, 'A Blood Donation Camp at Lovely Professional Unive...', 'preet22@yahoo.com'),
(33, 8, '2010-08-20 00:00:00', 17, 'save life', 'manpreetkaler@yahoo.com'),
(34, 9, '2009-06-05 00:00:00', 10, 'give blood', 'manpreetkaler@yahoo.com'),
(35, 1, '2012-09-13 00:00:00', 22, 'save life', 'sahildubey@gmail.com'),
(36, 9, '0000-00-00 00:00:00', 444, 'kjj', 'neeru.bawa@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `gallary`
--

CREATE TABLE `gallary` (
  `camp_id` int(100) NOT NULL,
  `pic_id` int(100) NOT NULL,
  `title` varchar(400) NOT NULL,
  `pic` varchar(800) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallary`
--

INSERT INTO `gallary` (`camp_id`, `pic_id`, `title`, `pic`) VALUES
(9, 15, 'pic 1', 'p48_2.jpg'),
(9, 16, 'pic 2', 'p11 (1).jpg'),
(9, 17, 'pic 3', 'p141.jpg'),
(9, 18, 'pic 5', 'p177_2.jpg'),
(9, 19, 'pic 6', 'p279.jpg'),
(8, 20, 'pic 8', 'p246.jpg'),
(9, 21, 'pic 9', 'p82.jpg'),
(7, 22, 'pic 2', 'p82.jpg'),
(7, 23, 'pic 3', 'p93.jpg'),
(7, 24, 'pic 6', 'p148.jpg'),
(7, 25, 'pic 7', 'pamrik@ymail.com1 (2).jpg'),
(7, 26, 'pic 8', 'slider4.jpg'),
(7, 27, 'pic 9', 'slider7.jpg'),
(1, 28, 'pic 2', 'slider8.jpg'),
(1, 29, 'pic 3', 'slider3.jpg'),
(1, 30, 'pic 4', 'donation.jpg'),
(1, 31, 'pic 3', 'Blood-Donation2.jpg'),
(1, 32, 'pic 4', 'blood-donation-.jpg'),
(1, 33, 'pic 6', 'blood-donation.jpg'),
(8, 34, 'pic 1', 'resizedBlood donation (1).jpg'),
(8, 35, 'pic 2', 'Blood-donation-camp.jpg'),
(8, 36, 'pic 4', '3.jpg'),
(8, 37, 'pic 5', '4.jpg'),
(8, 38, 'pic 7', '5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `detail` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `title`, `detail`) VALUES
(1, 'blood donate', 'give blood give bloodgive blood'),
(2, 'blood bank', 'blooooddddd\n\n');

-- --------------------------------------------------------

--
-- Table structure for table `requestes`
--

CREATE TABLE `requestes` (
  `req_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bgroup` int(100) NOT NULL,
  `reqdate` datetime NOT NULL,
  `detail` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(100) NOT NULL,
  `state_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`) VALUES
(1, 'punjab'),
(2, 'delhi'),
(3, 'Andhra Pradesh'),
(4, 'Bihar'),
(5, 'Assam'),
(6, 'WestBengal');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `pwd` varchar(200) NOT NULL,
  `typeofuser` enum('Admin','General') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `pwd`, `typeofuser`) VALUES
(1, 'saikat', 'saikat', 'Admin'),
(2, 'sanjoyorg', 'sanjoyorg', 'General'),
(3, 'sandip', 'sandip', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`adv_id`);

--
-- Indexes for table `blooddonated`
--
ALTER TABLE `blooddonated`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bloodgroup`
--
ALTER TABLE `bloodgroup`
  ADD PRIMARY KEY (`bg_id`);

--
-- Indexes for table `camp`
--
ALTER TABLE `camp`
  ADD PRIMARY KEY (`camp_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`row_id`);

--
-- Indexes for table `donarregistration`
--
ALTER TABLE `donarregistration`
  ADD PRIMARY KEY (`donar_id`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`donation_id`);

--
-- Indexes for table `gallary`
--
ALTER TABLE `gallary`
  ADD PRIMARY KEY (`pic_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `requestes`
--
ALTER TABLE `requestes`
  ADD PRIMARY KEY (`req_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `adv_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `blooddonated`
--
ALTER TABLE `blooddonated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `bloodgroup`
--
ALTER TABLE `bloodgroup`
  MODIFY `bg_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `camp`
--
ALTER TABLE `camp`
  MODIFY `camp_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `row_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `donarregistration`
--
ALTER TABLE `donarregistration`
  MODIFY `donar_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `donation_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `gallary`
--
ALTER TABLE `gallary`
  MODIFY `pic_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `requestes`
--
ALTER TABLE `requestes`
  MODIFY `req_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
