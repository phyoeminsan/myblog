-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2026 at 04:04 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'Web Development', '2026-04-26 12:26:33'),
(2, 'AI', '2026-04-26 12:26:33'),
(3, 'Networking', '2026-04-27 09:12:12'),
(4, 'Coding', '2026-04-27 09:12:12'),
(5, 'Hardware', '2026-04-27 09:12:12'),
(6, 'Software', '2026-04-27 09:12:12'),
(7, 'Blogs', '2026-04-27 09:12:12'),
(8, 'Development', '2026-04-27 09:12:12'),
(9, 'Programming', '2026-04-27 09:12:12'),
(10, 'Technology', '2026-04-27 09:12:12');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(225) NOT NULL,
  `image` varchar(225) NOT NULL,
  `description` longtext NOT NULL,
  `categoy_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `image`, `description`, `categoy_id`, `user_id`, `created_at`) VALUES
(1, 'What is Web Development?', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgYCodIRo5CcdO8sYN1E32D_TT0n46lMvgsQ&s', 'What is Lorem Ipsum?\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 4, '2026-04-27 11:35:22'),
(2, 'What is Coding?', '\r\nhttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEIlUY9j_ay1ONt-PtSWbZ1qiwbv15_ftBkw&s', 'What is Lorem Ipsum?\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 4, 2, '2026-04-27 11:35:22'),
(3, 'What is Ai?', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrnHVCs-jJahz5GCiPcMMnI0eI02wsr7rpIw&s', 'What is Lorem Ipsum?\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2, 1, '2026-04-27 11:38:32'),
(4, 'What is Development?', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQX4C_Mxt5KwwKh8NvO3xmRr5GhwfJlea6pyUO270wKcA&s', 'What is Lorem Ipsum?\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 8, 3, '2026-04-27 11:38:32'),
(5, 'What is Networking?', 'https://www.tutorialspoint.com/basics_of_computer_science/images/computer_networking.jpg', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 3, 7, '2026-04-27 11:38:32'),
(6, 'What is Programming?', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPuN4cBCU4JUezncrJ-aIDc1HPfrLN7mi87w&s', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 9, 5, '2026-04-27 11:38:32'),
(7, 'What is Hardware?', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbr2uMh0wZ-RXH4J94vHX4BBwdFqPXGFLFlg&s', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 5, 10, '2026-04-27 11:38:32'),
(8, 'What is Blog?', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlsSCyq0xtzb_hjOVvWMkovHFZRj82OjBLuQ&s', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 7, 6, '2026-04-27 11:38:32'),
(9, 'What is Technology?', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSh3qsdHGUiACRP-_GIGjRtkrnB-xfq5v8-6A&s', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 10, 8, '2026-04-27 11:38:32'),
(10, 'What is Software?', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6zA7yUryJC5uXvFPRPrOY9rtDnAeZPn-aJg&s', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 6, 9, '2026-04-27 11:38:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `profile` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `profile`, `role`, `created_at`) VALUES
(1, 'Mg Mg', 'mgmg@gmail.com', '1234', 'https://cdn-icons-png.flaticon.com/512/17003/17003310.png', 'admin', '2026-04-27 11:23:46'),
(2, 'Aung Aung', 'aungaung@gmail.com', '1234', 'https://img.freepik.com/vecteurs-libre/illustration-du-concept-service-client_53876-5883.jpg?semt=ais_hybrid&w=740&q=80', 'author', '2026-04-27 11:23:46'),
(3, 'Hal Hla', 'hlahla@gmail.com', '1234', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWm9DSW5CNlJSjy6UjykLmbk0avJeKUNbO-Q&s', 'author', '2026-04-27 11:23:46'),
(4, 'Mr.Phyo', 'phyo@gmail.com', '1234', 'https://www.shareicon.net/data/256x256/2016/04/14/492851_admin_256x256.png', 'admin', '2026-04-27 11:27:41'),
(5, 'Mya Mya', 'myamya@gmail.com', '1234', 'https://png.pngtree.com/png-vector/20250621/ourmid/pngtree-cartoon-woman-with-headset-isolated-on-transparent-background-png-image_16563067.png', 'author', '2026-04-27 11:27:41'),
(6, 'Kyaw Gyi', 'kyawgyi@gmail.com', '1234', 'https://www.shareicon.net/data/256x256/2016/04/14/492851_admin_256x256.png', 'author', '2026-04-27 11:27:41'),
(7, 'Ko Ko', 'koko@gmail.com', '1234', 'https://img.freepik.com/vecteurs-libre/illustration-du-concept-service-client_53876-5883.jpg?semt=ais_hybrid&w=740&q=80', 'admin', '2026-04-27 11:23:46'),
(8, 'Su Su', 'susu@gmail.com', '1234', 'https://png.pngtree.com/png-vector/20250621/ourmid/pngtree-cartoon-woman-with-headset-isolated-on-transparent-background-png-image_16563067.png', 'author', '2026-04-27 11:27:41'),
(9, 'Naing Naing', 'naingnaing@gmail.com', '1234', 'https://cdn-icons-png.flaticon.com/512/17003/17003310.png', 'admin', '2026-04-27 11:23:46'),
(10, 'Aye Aye', 'ayeaye@gmail.com', '1234', 'https://img.freepik.com/vecteurs-libre/illustration-du-concept-service-client_53876-5883.jpg?semt=ais_hybrid&w=740&q=80', 'admin', '2026-04-27 11:23:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
