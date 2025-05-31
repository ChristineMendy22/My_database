-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2025 at 04:08 PM
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
-- Database: `student_grades_tracker_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_name` varchar(250) NOT NULL,
  `instructor_id` bigint(20) UNSIGNED NOT NULL,
  `credits` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `instructor_id`, `credits`, `created_at`, `updated_at`) VALUES
(1, 'Introduction to Computer Science', 1, 3, '2025-05-20 17:58:04', '2025-05-20 17:58:04'),
(2, 'Database Fundamentals', 2, 3, '2025-05-20 17:58:04', '2025-05-20 17:58:04'),
(3, 'Web Development Basics', 3, 4, '2025-05-20 17:59:43', '2025-05-20 17:59:43'),
(4, 'Mathematics 101', 4, 3, '2025-05-20 17:59:43', '2025-05-20 17:59:43'),
(5, 'Accounting', 5, 4, '2025-05-20 18:01:22', '2025-05-20 18:01:22');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `score` int(11) NOT NULL,
  `semester` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `student_id`, `course_id`, `score`, `semester`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 85, 'Spring 2025', '2025-05-20 18:19:22', '2025-05-20 18:19:22'),
(2, 1, 3, 92, 'Spring 2025', '2025-05-20 18:19:22', '2025-05-20 18:19:22'),
(3, 2, 1, 78, 'Spring 2025', '2025-05-20 18:21:15', '2025-05-20 18:21:15'),
(4, 2, 2, 90, 'Spring 2025', '2025-05-20 18:21:15', '2025-05-28 09:26:42'),
(5, 3, 1, 95, 'Spring 2025', '2025-05-20 18:22:30', '2025-05-20 18:22:30'),
(6, 3, 4, 82, 'Spring 2025', '2025-05-20 18:22:30', '2025-05-20 18:22:30'),
(7, 4, 5, 90, 'Spring 2025', '2025-05-20 18:23:32', '2025-05-20 18:23:32'),
(8, 5, 2, 85, 'Spring 2025', '2025-05-20 18:23:32', '2025-05-20 18:23:32'),
(9, 6, 2, 96, 'Spring 2025', '2025-05-21 13:02:16', '2025-05-21 13:02:16');

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `department` varchar(150) NOT NULL,
  `hire_date` date NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`id`, `first_name`, `last_name`, `email`, `department`, `hire_date`, `create_at`, `update_at`) VALUES
(1, 'Ma Nyima', 'Gibba', 'nyimagibba306@gmail.com', 'Computer Science', '2025-02-04', '2025-05-20 12:29:16', '2025-05-20 12:29:16'),
(2, 'Rachalle', 'Colley', 'colleyrachalle@gmail.com', 'Accounting', '2024-12-10', '2025-05-20 12:29:16', '2025-05-20 12:29:16'),
(3, 'Tessie', 'Mendy', 'tessiemendy@gmail.com', 'Computer Science', '2025-05-01', '2025-05-20 12:41:13', '2025-05-20 12:41:13'),
(4, 'Ansu', 'Badjie', 'abadjie@jcc.edu.gm', 'Web Development', '2025-03-10', '2025-05-20 12:41:13', '2025-05-20 12:41:13'),
(5, 'Omar', 'Jasseh', 'ojasseh@jcc.edu.gm', 'Mathematics', '2025-03-13', '2025-05-20 12:43:37', '2025-05-20 12:43:37');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `enrollment_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `enrollment_date`, `created_at`, `updated_at`) VALUES
(1, 'Kumba', 'Khan', 'kumba.khan@gmail.com', '2025-04-03', '2025-05-20 17:46:14', '2025-05-20 17:46:14'),
(2, 'Isatou', 'Jammeh', 'isatou.jammeh@gmail.com', '2025-04-07', '2025-05-20 17:46:14', '2025-05-20 17:46:14'),
(3, 'Pa Alieu', 'Cham', 'alieu.cham@gmail.com', '2025-04-08', '2025-05-20 17:47:32', '2025-05-20 17:47:32'),
(4, 'Laura', 'Embalo', 'laura.embalo@gmail.com', '2025-04-03', '2025-05-20 17:50:00', '2025-05-20 17:50:00'),
(5, 'Samual', 'Gomez', 'samual.gomez@gmail.com', '2025-04-16', '2025-05-20 17:50:00', '2025-05-20 17:50:00'),
(6, 'Christine ', 'Mendy', 'mendychristine@gmail.com', '2025-04-08', '2025-05-21 12:58:49', '2025-05-21 12:58:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instructor_id` (`instructor_id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`instructor_id`) REFERENCES `instructors` (`id`);

--
-- Constraints for table `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `grades_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
