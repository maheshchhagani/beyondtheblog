-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2021 at 08:33 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techmahesh`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_total_posts` int(11) NOT NULL,
  `total_post_views` int(11) NOT NULL,
  `category_status` varchar(155) NOT NULL DEFAULT 'Published',
  `created_on` varchar(255) NOT NULL,
  `created_by` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_total_posts`, `total_post_views`, `category_status`, `created_on`, `created_by`) VALUES
(1, 'Programmings', 1, 0, 'Published', '2021-04-19', 'John Doe'),
(2, 'Lifestyle', 1, 0, 'Published', '2021-04-03', 'Mahesh Chhagani'),
(3, 'PHP', 1, 0, 'Published', '2021-04-12', 'Bill Gates'),
(4, 'CTCI', 4, 0, 'Published', '2021-04-13', 'Mahesh Chhagani'),
(8, 'Status', 0, 0, 'Published', 'May 5, 2021 at 11:23 AM', 'Mahesh Chhagani');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `com_id` int(11) NOT NULL,
  `com_post_id` int(11) NOT NULL,
  `com_detail` text NOT NULL,
  `com_user_id` int(11) NOT NULL,
  `com_user_name` varchar(255) NOT NULL,
  `com_date` varchar(255) NOT NULL,
  `com_status` varchar(255) NOT NULL DEFAULT 'unapproved'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`com_id`, `com_post_id`, `com_detail`, `com_user_id`, `com_user_name`, `com_date`, `com_status`) VALUES
(12, 3, 'Great', 65, 'Mahesh Chhagani', 'May 5, 2021 at 11:20 AM', 'approved'),
(13, 1, 'Hello', 65, 'Mahesh Chhagani', 'May 5, 2021 at 11:20 AM', 'unapproved'),
(14, 10, 'good', 65, 'Mahesh Chhagani', 'May 5, 2021 at 02:46 PM', 'unapproved');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_detail` text NOT NULL,
  `post_category_id` int(20) NOT NULL,
  `post_image` text NOT NULL,
  `post_date` varchar(255) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'Published',
  `post_author` varchar(255) NOT NULL,
  `post_views` int(11) NOT NULL DEFAULT 0,
  `post_comment_count` int(11) NOT NULL DEFAULT 0,
  `post_tags` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_title`, `post_detail`, `post_category_id`, `post_image`, `post_date`, `post_status`, `post_author`, `post_views`, `post_comment_count`, `post_tags`) VALUES
(1, 'Build a Complete Website with Backend using PHP, MySQL & PDO', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, 'photo2.jpg', 'Apr 4, 2021 at 9:58 AM', 'Published', 'John Doe', 41, 0, 'php, mysql, pdo, php course'),
(2, 'I\'m a programmer, I love programming!\r\n', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 2, 'photo1.jpg', 'Apr 5, 2021 at 11:15 AM', 'Published', 'Mahesh Chhagani', 72, 0, 'php, mysql, pdo, php course'),
(3, 'Build a Complete Website with Backend using PHP, MySQL & PDO', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, 'photo3.jpg', 'Apr 6, 2021 at 8:34 PM', 'Published', 'Rohit Bhaiya', 109, 0, 'php, mysql, pdo, php course'),
(4, 'Coding Interview Question 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.', 4, 'ctci1.png', 'Jan 20, 2021 at 10:18 AM', 'Published', 'Bill Gates', 1, 0, 'ctci, coding interview'),
(5, 'Coding Interview Question 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,', 4, 'ctci2.jpg', 'Feb 14, 2021 at 5:38 AM', 'Published', 'Mark Zuckerberg', 21, 0, 'ctci, coding interview'),
(6, 'Coding Interview Question 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,', 4, 'ctci3.jpg', 'Feb 24, 2021 at 3:58 PM', 'Published', 'Elon Musk', 3, 0, 'ctci, coding interview'),
(7, 'Coding Interview Question 4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,', 4, 'ctci4.jpg', 'Mar 5, 2021 at 1:28 AM', 'Published', 'Bill Gates', 26, 0, 'ctci, coding interview'),
(10, 'Travelling with me', '            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus fuga iure, architecto repellat voluptatibus numquam deleniti eos non sint consectetur vitae maxime recusandae libero rem?', 8, 'photo7.jpg', 'May 5, 2021 at 02:46 PM', 'Published', 'Mahesh Chhagani', 4, 0, 'travel, coding, ctci');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `name`) VALUES
(1, 'Mahesh Chhagani'),
(2, 'Rohit Chhagani');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_nickname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_photo` text NOT NULL,
  `registered_on` varchar(255) NOT NULL,
  `user_role` varchar(255) NOT NULL DEFAULT 'Subscriber'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_nickname`, `user_email`, `user_password`, `user_photo`, `registered_on`, `user_role`) VALUES
(1, 'Mahesh Chhagani', 'mahesh', 'maheshc@gmail.com', 'mahesh', 'mahesh.jpg', 'Nov 20, 2020 at 10:11 PM', 'subscriber'),
(64, 'Rohit Chhagani', 'rohit070', 'rohit@gmail.com', '$2y$10$RbMJNLYKh0ItcCioCxGnJezONeu.vo6wVwVBPqHYabSd5vfT6DSLG', 'mahesh.jpg', 'May 5, 2021 at 05:22 PM', 'subscriber'),
(65, 'Mahesh Chhagani', 'Mahesh123', 'mahesh@gmail.com', '$2y$10$95GjykMxMLKhAiwT8bkzX.xhdimFf0UKIT7EtFL3WSMvmn5midSBy', 'mahesh.jpg', 'May 5, 2021 at 05:29 PM', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
