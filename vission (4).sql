-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2024 at 05:49 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vission`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand_profile`
--

CREATE TABLE `brand_profile` (
  `brand_id` int(11) NOT NULL,
  `bg_img` varchar(200) NOT NULL,
  `logo_img` varchar(200) NOT NULL,
  `brand_name` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `register_date` date NOT NULL,
  `location` varchar(200) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_phone` bigint(20) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `brand_descr` text NOT NULL,
  `fb_url` varchar(200) NOT NULL,
  `insta_url` varchar(200) NOT NULL,
  `youtube_url` varchar(200) NOT NULL,
  `website_url` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brand_profile`
--

INSERT INTO `brand_profile` (`brand_id`, `bg_img`, `logo_img`, `brand_name`, `category`, `register_date`, `location`, `user_name`, `user_email`, `user_phone`, `gender`, `brand_descr`, `fb_url`, `insta_url`, `youtube_url`, `website_url`, `user_id`) VALUES
(1, 'user2.png', 'user.gif', 'muska', 'Technology', '2024-07-13', 'karachi', 'muskan', 'muskan@gmail.com', 313787432, 'Female', 'Enter Your Brand Information', 'http://localhost:82/vission/html/app/create-profile.php', 'http://localhost:82/vission/html/app/create-profile.php', 'http://localhost:82/vission/html/app/create-profile.php', 'http://localhost:82/vission/html/app/create-profile.php', 10);

-- --------------------------------------------------------

--
-- Table structure for table `create-creator-profile`
--

CREATE TABLE `create-creator-profile` (
  `profile_id` int(11) NOT NULL,
  `profile_img` varchar(200) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `marital_status` varchar(200) NOT NULL,
  `age` int(11) NOT NULL,
  `country` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `bg_img` varchar(200) NOT NULL,
  `fb_url` varchar(500) NOT NULL,
  `insta_url` varchar(500) NOT NULL,
  `youtube_url` varchar(500) NOT NULL,
  `twitter_url` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `create-creator-profile`
--

INSERT INTO `create-creator-profile` (`profile_id`, `profile_img`, `first_name`, `last_name`, `city`, `gender`, `marital_status`, `age`, `country`, `category`, `description`, `bg_img`, `fb_url`, `insta_url`, `youtube_url`, `twitter_url`, `user_id`) VALUES
(30, 'Capture.PNG', 'Muskan', 'mansoor', 'karachi', 'Female', 'Single', 36, 'USA', 'Dancer', 'Enter Your Detail Information', ']]].PNG', 'http://localhost/vission/html/app/profile-edit.php', 'http://localhost/vission/html/app/profile-edit.php', 'http://localhost/vission/html/app/profile-edit.php', 'http://localhost/vission/html/app/profile-edit.php', 11),
(31, '025dccf2ee47efc645d31af4950be825.jpg', 'muskan', 'mansoor', 'karachi', 'Female', 'Married', 36, 'Canada', 'YouTuber', 'Enter Your Detail Information', 'cristiano-ronaldo-in-real-madrid-kit-desktop-wallpaper-preview.jpg', 'http://localhost:82/vission/html/app/create-profile.php', 'http://localhost:82/vission/html/app/create-profile.php', 'http://localhost:82/vission/html/app/create-profile.php', 'http://localhost:82/vission/html/app/create-profile.php', 12),
(32, 'user2.png', 'muskan', 'mansor', 'karachi', 'Female', 'Single', 18, 'Canada', 'YouTuber', 'Enter Your Detail Information', 'img-3.jpg', 'http://localhost:82/vission/html/app/create-profile.php', 'http://localhost:82/vission/html/app/create-profile.php', 'http://localhost:82/vission/html/app/create-profile.php', 'http://localhost:82/vission/html/app/create-profile.php', 12);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `img_id` int(11) NOT NULL,
  `images` varchar(200) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `user_id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `category` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `user_type` enum('brand','influencer') NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`user_id`, `username`, `email`, `phone`, `category`, `address`, `password`, `user_type`, `status`) VALUES
(1, 'muskaa', 'muskak@gmail.com', 37787657675, 'Electronics', 'Martin Rd, Martin Quarters East, Karachi, Karachi City, Sindh', '$2y$10$rhVcnjABhFSqJGPdkfSK4.aQAGXgLJqBTLsMIbpGJuh4hjPnUMIwa', 'brand', ''),
(2, 'muskannn mansoor', 'admin@example.com', 37787657675, 'Electronics', 'Martin Rd, Martin Quarters East, Karachi, Karachi City, Sindh', '$2y$10$0fyZ.M1XnQGtkSxhJBzPKutIT8g1BNuTfo3iAQM5mQp0Vv68nQ8RC', 'influencer', ''),
(3, 'muskannn mansoor', 'admin@example.com', 37787657675, 'Clothing', 'Rafiqui, Sarwar Shaheed Rd, Karachi Cantonment, Karachi, Karachi City, Sindh 75510', '$2y$10$Ei0hpIDzu3fJqbXLiLfgGuK.6PLu/mHYWl/ttlU7Fam3dkcnNN2Ba', 'brand', ''),
(4, 'muskannn mansoor', 'admin@example.comnij', 32134445747, 'Clothing', 'Martin Rd, Martin Quarters East, Karachi, Karachi City, Sindh', '$2y$10$JJpi0uNYYsep4sdL2NDBieP.iJ4mroaVowg7P7CbSDFx7RV2ThuFe', 'brand', ''),
(6, '', '', 0, 'Clothing', '', '$2y$10$XVuNGpTCSKf6X9.oJyzbqeOm1ozZ/f1pDSmKhqfNX8uKFrlGQCG9u', 'brand', ''),
(7, 'muskannn mansoor', 'muskak@gmail.com', 32134445747, 'Clothing', 'Martin Rd, Martin Quarters East, Karachi, Karachi City, Sindh', '$2y$10$vq4gRlPDaya04mhIDBVyQeX0tqKvCdEvSxO8iLZIbEqOvQcrrPkZC', 'brand', ''),
(8, 'muskaa', 'muskanmansoor@gmail.com', 32134445747, 'Clothing', 'karachi', '$2y$10$zBatKSp/nHehomq7/xAC0e.RiWaWaAhXe5oxvtkGD5/wWIvz/Yf2W', 'brand', ''),
(9, 'muskannn mansoor', 'muskanmansoor82@gmail.com', 32134445747, 'Clothing', 'Martin Rd, Martin Quarters East, Karachi, Karachi City, Sindh', '$2y$10$WazsNBiFI.OIeFmHkfJTUO50qMNc/ON/XVzaxPfHCoN6dtt3WHqJO', 'brand', ''),
(10, 'muskannn mansoor', 'muskanmansoor52@gmail.com', 32134445747, 'Clothing', 'Martin Rd, Martin Quarters East, Karachi, Karachi City, Sindh', '$2y$10$ZoxZlTGhpzqKdg/T/idX9uKZjZt4l/2lN3Cq1Fc5GrhZe3v1RpN0C', 'brand', 'Pending'),
(11, 'muskannn mansoor', 'muskanmansoor523@gmail.com', 32134445747, 'Clothing', 'Martin Rd, Martin Quarters East, Karachi, Karachi City, Sindh', '$2y$10$3DzIxVZyjd34l2NjqolC8OeqqKpG6WIikaGRHUCqElTSlr9uBlQMq', 'influencer', 'Pending'),
(12, 'muskan', 'muskanmansoor552@gmail.com', 31876732423, 'Clothing', 'karachi', '$2y$10$nNlCoE1PDSqSO6rbMsnLYujI73UFzNxEAxXfGglqisThx.1HQLHEa', 'influencer', 'Pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand_profile`
--
ALTER TABLE `brand_profile`
  ADD PRIMARY KEY (`brand_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `create-creator-profile`
--
ALTER TABLE `create-creator-profile`
  ADD PRIMARY KEY (`profile_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`img_id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `profile_id` (`profile_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand_profile`
--
ALTER TABLE `brand_profile`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `create-creator-profile`
--
ALTER TABLE `create-creator-profile`
  MODIFY `profile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `brand_profile`
--
ALTER TABLE `brand_profile`
  ADD CONSTRAINT `brand_profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `register` (`user_id`);

--
-- Constraints for table `create-creator-profile`
--
ALTER TABLE `create-creator-profile`
  ADD CONSTRAINT `create-creator-profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `register` (`user_id`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brand_profile` (`brand_id`),
  ADD CONSTRAINT `images_ibfk_2` FOREIGN KEY (`profile_id`) REFERENCES `create-creator-profile` (`profile_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
