-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2025 at 07:05 AM
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
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `status` enum('Present','Absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `student_id`, `date`, `status`) VALUES
(1, 2, '2025-02-23', 'Present'),
(2, 1, '2025-02-23', 'Present'),
(3, 6, '2025-02-24', 'Present'),
(4, 4, '2025-02-24', 'Present'),
(5, 3, '2025-02-24', 'Present'),
(6, 2, '2025-02-24', 'Absent'),
(7, 7, '2025-02-24', 'Present'),
(8, 8, '2025-02-24', 'Present'),
(9, 1, '2025-02-24', 'Present'),
(10, 9, '2025-02-24', 'Present'),
(11, 5, '2025-02-24', 'Absent'),
(12, 10, '2025-02-24', 'Present'),
(13, 6, '2025-02-25', 'Absent'),
(14, 4, '2025-02-25', 'Present'),
(15, 3, '2025-02-25', 'Present'),
(16, 2, '2025-02-25', 'Present'),
(17, 7, '2025-02-25', 'Absent'),
(18, 8, '2025-02-25', 'Present'),
(19, 1, '2025-02-25', 'Present'),
(20, 9, '2025-02-25', 'Present'),
(21, 5, '2025-02-25', 'Absent'),
(22, 10, '2025-02-25', 'Present'),
(23, 6, '2025-02-27', 'Present'),
(24, 4, '2025-02-27', 'Present'),
(25, 2, '2025-02-27', 'Present'),
(26, 7, '2025-02-27', 'Present'),
(27, 8, '2025-02-27', 'Present'),
(28, 1, '2025-02-27', 'Present'),
(29, 9, '2025-02-27', 'Present'),
(30, 5, '2025-02-27', 'Absent'),
(31, 10, '2025-02-27', 'Present'),
(32, 6, '2025-02-28', 'Present'),
(33, 4, '2025-02-28', 'Absent'),
(34, 3, '2025-02-28', 'Present'),
(35, 2, '2025-02-28', 'Present'),
(36, 7, '2025-02-28', 'Absent'),
(37, 8, '2025-02-28', 'Present'),
(38, 1, '2025-02-28', 'Present'),
(39, 9, '2025-02-28', 'Present'),
(40, 10, '2025-02-28', 'Present'),
(41, 6, '2025-03-06', 'Present'),
(42, 4, '2025-03-06', 'Present'),
(43, 3, '2025-03-06', 'Present'),
(44, 2, '2025-03-06', 'Present'),
(45, 7, '2025-03-06', 'Present'),
(46, 8, '2025-03-06', 'Present'),
(47, 1, '2025-03-06', 'Present'),
(48, 9, '2025-03-06', 'Present'),
(49, 5, '2025-03-06', 'Present'),
(50, 10, '2025-03-06', 'Present'),
(51, 6, '2025-03-18', 'Absent'),
(52, 4, '2025-03-18', 'Present'),
(53, 3, '2025-03-18', 'Present'),
(54, 2, '2025-03-18', 'Present'),
(55, 7, '2025-03-18', 'Absent'),
(56, 8, '2025-03-18', 'Present'),
(57, 1, '2025-03-18', 'Present'),
(58, 5, '2025-03-18', 'Present'),
(59, 10, '2025-03-18', 'Present'),
(60, 6, '2025-03-25', 'Absent'),
(61, 4, '2025-03-25', 'Present'),
(62, 3, '2025-03-25', 'Present'),
(63, 2, '2025-03-25', 'Present'),
(64, 7, '2025-03-25', 'Absent'),
(65, 8, '2025-03-25', 'Present'),
(66, 1, '2025-03-25', 'Present'),
(67, 9, '2025-03-25', 'Present'),
(68, 5, '2025-03-25', 'Present'),
(69, 10, '2025-03-25', 'Present'),
(70, 6, '2025-04-01', 'Present'),
(71, 4, '2025-04-01', 'Absent'),
(72, 3, '2025-04-01', 'Present'),
(73, 2, '2025-04-01', 'Present'),
(74, 7, '2025-04-01', 'Absent'),
(75, 8, '2025-04-01', 'Present'),
(76, 9, '2025-04-01', 'Present'),
(77, 5, '2025-04-01', 'Present'),
(78, 10, '2025-04-01', 'Present'),
(79, 6, '2025-04-06', 'Absent'),
(80, 4, '2025-04-06', 'Present'),
(81, 3, '2025-04-06', 'Present'),
(82, 2, '2025-04-06', 'Present'),
(83, 7, '2025-04-06', 'Absent'),
(84, 8, '2025-04-06', 'Present'),
(85, 1, '2025-04-06', 'Present'),
(86, 9, '2025-04-06', 'Present'),
(87, 5, '2025-04-06', 'Absent'),
(88, 10, '2025-04-06', 'Present'),
(89, 6, '2025-04-08', 'Present'),
(90, 4, '2025-04-08', 'Present'),
(91, 3, '2025-04-08', 'Present'),
(92, 2, '2025-04-08', 'Present'),
(93, 7, '2025-04-08', 'Absent'),
(94, 8, '2025-04-08', 'Absent'),
(95, 1, '2025-04-08', 'Present'),
(96, 9, '2025-04-08', 'Present'),
(97, 5, '2025-04-08', 'Absent'),
(98, 10, '2025-04-08', 'Present'),
(99, 6, '2025-04-17', 'Present'),
(100, 4, '2025-04-17', 'Absent'),
(101, 3, '2025-04-17', 'Present'),
(102, 2, '2025-04-17', 'Present'),
(103, 7, '2025-04-17', 'Present'),
(104, 8, '2025-04-17', 'Present'),
(105, 1, '2025-04-17', 'Present'),
(106, 9, '2025-04-17', 'Present'),
(107, 5, '2025-04-17', 'Absent'),
(108, 10, '2025-04-17', 'Present'),
(109, 6, '2025-04-19', 'Present'),
(110, 4, '2025-04-19', 'Present'),
(111, 3, '2025-04-19', 'Present'),
(112, 2, '2025-04-19', 'Absent'),
(113, 7, '2025-04-19', 'Present'),
(114, 8, '2025-04-19', 'Absent'),
(115, 1, '2025-04-19', 'Present'),
(116, 9, '2025-04-19', 'Present'),
(117, 5, '2025-04-19', 'Present'),
(118, 10, '2025-04-19', 'Present'),
(119, 6, '2025-04-20', 'Absent'),
(120, 4, '2025-04-20', 'Present'),
(121, 3, '2025-04-20', 'Present'),
(122, 2, '2025-04-20', 'Absent'),
(123, 7, '2025-04-20', 'Absent'),
(124, 8, '2025-04-20', 'Present'),
(125, 1, '2025-04-20', 'Present'),
(126, 9, '2025-04-20', 'Present'),
(127, 5, '2025-04-20', 'Absent'),
(128, 10, '2025-04-20', 'Present'),
(129, 6, '2025-04-22', 'Absent'),
(130, 4, '2025-04-22', 'Present'),
(131, 3, '2025-04-22', 'Present'),
(132, 2, '2025-04-22', 'Present'),
(133, 7, '2025-04-22', 'Absent'),
(134, 8, '2025-04-22', 'Absent'),
(135, 1, '2025-04-22', 'Present'),
(136, 9, '2025-04-22', 'Present'),
(137, 5, '2025-04-22', 'Absent'),
(138, 10, '2025-04-22', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `career_guidance`
--

CREATE TABLE `career_guidance` (
  `career_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `guidance_text` text NOT NULL,
  `posted_on` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `competitions`
--

CREATE TABLE `competitions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date` date NOT NULL,
  `start_date` date NOT NULL DEFAULT '2025-01-01',
  `end_date` date NOT NULL DEFAULT '2025-05-05'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `competitions`
--

INSERT INTO `competitions` (`id`, `name`, `description`, `date`, `start_date`, `end_date`) VALUES
(1, 'Code Challenge', '', '0000-00-00', '2025-03-28', '2025-04-05'),
(2, 'AI Hackathon', '', '0000-00-00', '2025-04-01', '2025-04-10'),
(3, 'Web Development Contest', '', '0000-00-00', '2025-04-05', '2025-04-15');

-- --------------------------------------------------------

--
-- Table structure for table `competition_participants`
--

CREATE TABLE `competition_participants` (
  `participant_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `competition_id` int(11) NOT NULL,
  `institution_id` int(11) NOT NULL,
  `score` int(11) DEFAULT 0,
  `submission` text DEFAULT NULL,
  `submission_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `competition_participants`
--

INSERT INTO `competition_participants` (`participant_id`, `student_id`, `competition_id`, `institution_id`, `score`, `submission`, `submission_time`) VALUES
(0, 1, 1, 1, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `competition_questions`
--

CREATE TABLE `competition_questions` (
  `id` int(11) NOT NULL,
  `competition_id` int(11) DEFAULT NULL,
  `question_text` text NOT NULL,
  `option_A` varchar(255) DEFAULT NULL,
  `option_B` varchar(255) DEFAULT NULL,
  `option_C` varchar(255) DEFAULT NULL,
  `option_D` varchar(255) DEFAULT NULL,
  `correct_option` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `competition_questions`
--

INSERT INTO `competition_questions` (`id`, `competition_id`, `question_text`, `option_A`, `option_B`, `option_C`, `option_D`, `correct_option`) VALUES
(13, 1, 'What is the next number in the series: 2, 4, 8, 16, ?', '18', '24', '32', '20', 'C'),
(14, 1, 'Which keyword is used to define a function in Python?', 'func', 'define', 'def', 'function', 'C'),
(15, 1, 'If a train travels 60 km in 1.5 hours, what is its speed?', '30 km/h', '40 km/h', '50 km/h', '60 km/h', 'B'),
(16, 1, 'Which symbol is used for comments in Python?', '#', '//', '--', '/* */', 'A'),
(17, 1, 'What is 25% of 200?', '25', '50', '75', '100', 'B'),
(18, 1, 'What is the output of 2 ** 3 in Python?', '6', '8', '9', '5', 'B'),
(19, 1, 'If 3x + 2 = 11, what is x?', '2', '3', '4', '5', 'B'),
(20, 1, 'A man walks 5 km north and then 3 km east. How far is he from the starting point?', '5 km', '6 km', '7 km', '8 km', 'C'),
(21, 1, 'Which of the following is a loop in Python?', 'repeat', 'for', 'iterate', 'loop', 'B'),
(22, 1, 'What is the average of 10, 20, and 30?', '15', '20', '25', '30', 'B'),
(23, 1, 'What does HTML stand for?', 'Hyperlink Text Mark Language', 'Hyper Text Markup Language', 'High Text Machine Language', 'None of the above', 'B'),
(24, 1, 'The ratio of 2:3 is equivalent to which of the following?', '4:5', '10:15', '6:9', 'Both B and C', 'D'),
(25, 1, 'If 15 workers complete a job in 4 days, how many days will 5 workers take?', '12', '10', '15', '8', 'A'),
(26, 1, 'What is the simple interest on ?1000 at 5% for 2 years?', '?100', '?110', '?90', '?120', 'A'),
(27, 1, 'Find the missing number: 3, 6, 11, 18, ?', '25', '26', '27', '28', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `competition_results`
--

CREATE TABLE `competition_results` (
  `id` int(11) NOT NULL,
  `competition_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `rank` int(11) DEFAULT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_submissions`
--

CREATE TABLE `exam_submissions` (
  `id` int(11) NOT NULL,
  `college_id` varchar(50) NOT NULL,
  `answers` text NOT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `student_id` int(11) NOT NULL,
  `competition_id` int(11) NOT NULL,
  `score` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam_submissions`
--

INSERT INTO `exam_submissions` (`id`, `college_id`, `answers`, `submitted_at`, `student_id`, `competition_id`, `score`) VALUES
(15, '1', '{\"1\": \"C\", \"2\": \"A\"}', '2025-04-01 06:18:29', 1, 1, 50),
(16, '1', '{\"1\": \"C\", \"2\": \"A\"}', '2025-04-01 06:18:29', 1, 1, 50),
(17, '1', '{\"1\": \"C\", \"2\": \"A\"}', '2025-04-01 06:21:02', 1, 1, 50),
(18, '1', '{\"1\": \"C\", \"2\": \"A\"}', '2025-04-01 06:21:02', 1, 1, 50),
(19, '1', '{\"1\": \"C\", \"2\": \"D\"}', '2025-04-01 06:29:13', 1, 1, 50),
(20, '1', '{\"1\": \"C\", \"2\": \"D\"}', '2025-04-01 06:29:13', 1, 1, 50),
(21, '1', '{\"1\": \"C\", \"2\": \"B\"}', '2025-04-01 06:40:24', 1, 1, 100),
(22, '1', '{\"1\": \"C\", \"2\": \"C\"}', '2025-04-01 06:41:00', 1, 1, 50),
(23, '1', '{\"1\": \"C\", \"2\": \"B\"}', '2025-04-01 06:48:36', 1, 1, 100),
(24, '1', '{\"1\": \"C\", \"2\": \"B\"}', '2025-04-01 09:01:33', 1, 1, 100),
(25, '1', '{\"1\": \"C\", \"2\": \"B\"}', '2025-04-01 09:34:42', 1, 1, 100),
(26, '1', '{\"1\": \"B\", \"2\": \"B\"}', '2025-04-13 05:25:27', 1, 1, 50),
(27, '1', '{\"1\": \"B\", \"2\": \"B\"}', '2025-04-17 07:15:18', 1, 1, 50),
(28, '1', '{\"1\": \"C\", \"2\": \"D\"}', '2025-04-19 05:10:10', 1, 1, 50),
(29, '1', '{\"1\": \"D\", \"2\": \"D\"}', '2025-04-19 05:12:17', 1, 1, 0),
(30, '1', '{\"1\": \"A\", \"2\": \"D\"}', '2025-04-19 06:18:10', 1, 1, 0),
(31, '1', '{\"1\": \"B\", \"2\": \"B\"}', '2025-04-19 06:18:49', 1, 1, 50),
(32, '1', '{\"1\": \"B\", \"2\": \"B\"}', '2025-04-20 04:29:57', 1, 1, 50),
(33, '1', '{\"1\": \"B\", \"2\": \"C\", \"3\": \"A\", \"4\": \"B\", \"5\": \"B\", \"6\": \"B\", \"7\": \"C\", \"8\": \"D\", \"9\": \"A\", \"10\": \"C\", \"11\": \"A\", \"12\": \"A\"}', '2025-04-20 05:12:30', 1, 1, 75),
(34, '1', '{\"1\": \"B\", \"2\": \"C\", \"3\": \"C\", \"4\": \"A\", \"5\": \"A\", \"6\": \"B\", \"7\": \"B\", \"8\": \"B\", \"9\": \"B\", \"10\": \"B\", \"11\": \"C\", \"12\": \"C\"}', '2025-04-22 05:52:09', 1, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `faculty_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `institution_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `institution`
--

CREATE TABLE `institution` (
  `institution_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `institution`
--

INSERT INTO `institution` (`institution_id`, `name`, `location`) VALUES
(1, 'Audisankara', ''),
(2, 'Narayana', ''),
(3, 'VITS', ''),
(4, 'NBKR', '');

-- --------------------------------------------------------

--
-- Table structure for table `institutions`
--

CREATE TABLE `institutions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `institutions`
--

INSERT INTO `institutions` (`id`, `name`, `location`) VALUES
(1, 'Audisankara', ''),
(2, 'Narayana', ''),
(3, 'VITS', ''),
(4, 'NBKR', '');

-- --------------------------------------------------------

--
-- Table structure for table `leaderboard`
--

CREATE TABLE `leaderboard` (
  `leaderboard_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `competition_id` int(11) DEFAULT NULL,
  `rank` int(11) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `leaderboard`
--

INSERT INTO `leaderboard` (`leaderboard_id`, `student_id`, `competition_id`, `rank`, `score`) VALUES
(1, 1, 1, 0, 100),
(2, 1, 1, 0, 50),
(3, 1, 1, 0, 100),
(4, 1, 1, 0, 100),
(5, 1, 1, 0, 100),
(6, 1, 1, 0, 50),
(7, 1, 1, 0, 50),
(8, 1, 1, 0, 50),
(9, 1, 1, 0, 0),
(10, 1, 1, 0, 0),
(11, 1, 1, 0, 50),
(12, 1, 1, 0, 50),
(13, 1, 1, 0, 75),
(14, 1, 1, 0, 8);

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `mark_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `semester` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `marks_obtained` int(11) NOT NULL,
  `max_marks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`mark_id`, `student_id`, `semester`, `subject`, `marks_obtained`, `max_marks`) VALUES
(1, 1, 1, 'Mathematics', 85, 100),
(2, 1, 1, 'Physics', 90, 100),
(3, 1, 1, 'Chemistry', 82, 100),
(4, 2, 1, 'Mathematics', 88, 100),
(5, 2, 1, 'Physics', 74, 100),
(6, 2, 1, 'Chemistry', 80, 100),
(7, 3, 1, 'Mathematics', 76, 100),
(8, 3, 1, 'Physics', 81, 100),
(9, 3, 1, 'Chemistry', 79, 100),
(10, 4, 1, 'Mathematics', 90, 100),
(11, 4, 1, 'Physics', 85, 100),
(12, 4, 1, 'Chemistry', 88, 100),
(13, 5, 1, 'Mathematics', 70, 100),
(14, 5, 1, 'Physics', 72, 100),
(15, 5, 1, 'Chemistry', 75, 100),
(16, 6, 1, 'Mathematics', 92, 100),
(17, 6, 1, 'Physics', 89, 100),
(18, 6, 1, 'Chemistry', 98, 100),
(19, 7, 1, 'Mathematics', 65, 100),
(20, 7, 1, 'Physics', 60, 100),
(21, 7, 1, 'Chemistry', 67, 100),
(22, 8, 1, 'Mathematics', 80, 100),
(23, 8, 1, 'Physics', 77, 100),
(24, 8, 1, 'Chemistry', 82, 100),
(25, 9, 1, 'Mathematics', 74, 100),
(26, 9, 1, 'Physics', 79, 100),
(27, 9, 1, 'Chemistry', 83, 100),
(28, 10, 1, 'Mathematics', 88, 100),
(29, 10, 1, 'Physics', 91, 100),
(30, 10, 1, 'Chemistry', 85, 100);

-- --------------------------------------------------------

--
-- Table structure for table `performance_prediction`
--

CREATE TABLE `performance_prediction` (
  `prediction_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `predicted_performance` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `roll_number` varchar(50) NOT NULL,
  `institution_id` int(11) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `roll_number`, `institution_id`, `password`) VALUES
(1, '', 'marellapraveen9@gmail.com', '212H1A3096', 1, 'praveen@273645'),
(2, '', 'harshini@gmail.com', '212H1A3078', 1, 'harshi@1234'),
(3, '', 'vamsi@gmail.com', '212H1A3075', 1, 'vamsi@1234'),
(4, '', 'pavithra@gmail.com', '212H1A3071', 1, 'pavi@1234'),
(5, '', 'pavithrap@gmail.com', '212H1A30b6', 1, 'pavitra@1234'),
(6, '', 'chandu@gmail.com', '212H1A081', 1, 'chandu@1234'),
(7, '', 'yash@1234', '212H1A3082', 1, 'yash@1234'),
(8, '', 'sudheer@gmail.com', '212H1A3083', 1, 'praveen@273645'),
(9, '', 'nachi@gmail.com', '212H1A30b2', 1, 'nachi@1234'),
(10, '', 'bhargav@gmail.com', '212H1A30c5', 1, 'praveen@273645'),
(11, '', 'sai@gmail.com', '212H1A30d4', NULL, 'sai@45');

-- --------------------------------------------------------

--
-- Table structure for table `weekly_challenge_submissions`
--

CREATE TABLE `weekly_challenge_submissions` (
  `id` int(11) NOT NULL,
  `roll_number` varchar(20) DEFAULT NULL,
  `student_email` varchar(255) DEFAULT NULL,
  `code` text DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `weekly_challenge_submissions`
--

INSERT INTO `weekly_challenge_submissions` (`id`, `roll_number`, `student_email`, `code`, `marks`, `submitted_at`) VALUES
(1, '212H1A3096', NULL, 'num = int(input(\'Enter a number: \'))\nif num > 1:\n    for i in range(2, num):\n        if (num % i) == 0:\n            print(num, \'is not a prime number\')\n            break\n    else:\n        print(num, \'is a prime number\')\nelse:\n    print(num, \'is not a prime number\')', 8, '2025-04-22 06:32:50'),
(2, '212H1A3096', NULL, 'def is_prime(number):\r\n    # Check if number is less than 2, as primes are greater than 1\r\n    if number <= 1:\r\n        return False\r\n    \r\n    # Check divisibility from 2 to the square root of the number\r\n    for i in range(2, int(number**0.5) + 1):\r\n        if number % i == 0:\r\n            return False\r\n    \r\n    # If no divisor found, it\'s a prime number\r\n    return True\r\n\r\n# Example Usage:\r\nnumber = 29\r\nif is_prime(number):\r\n    print(f\"{number} is a prime number.\")\r\nelse:\r\n    print(f\"{number} is not a prime number.\")\r\n', 0, '2025-04-22 12:45:46'),
(3, '212H1A3096', NULL, 'def is_prime(number):\r\n    # Check if number is less than 2, as primes are greater than 1\r\n    if number <= 1:\r\n        return False\r\n    \r\n    # Check divisibility from 2 to the square root of the number\r\n    for i in range(2, int(number**0.5) + 1):\r\n        if number % i == 0:\r\n            return False\r\n    \r\n    # If no divisor found, it\'s a prime number\r\n    return True\r\n\r\n# Example Usage:\r\nnumber = 29\r\nif is_prime(number):\r\n    print(f\"{number} is a prime number.\")\r\nelse:\r\n    print(f\"{number} is not a prime number.\")\r\n', 0, '2025-04-22 12:56:18'),
(4, '212H1A3096', NULL, 'def is_prime(number):\r\n    # Check if number is less than 2, as primes are greater than 1\r\n    if number <= 1:\r\n        return False\r\n    \r\n    # Check divisibility from 2 to the square root of the number\r\n    for i in range(2, int(number**0.5) + 1):\r\n        if number % i == 0:\r\n            return False\r\n    \r\n    # If no divisor found, it\'s a prime number\r\n    return True\r\n\r\n# Example Usage:\r\nnumber = 29\r\nif is_prime(number):\r\n    print(f\"{number} is a prime number.\")\r\nelse:\r\n    print(f\"{number} is not a prime number.\")\r\n', 0, '2025-04-22 12:59:53'),
(5, '212H1A3096', NULL, 'def is_prime(n):\r\n    # Check if n is less than 2 (not a prime number)\r\n    if n <= 1:\r\n        return False\r\n    # Check if any number from 2 to sqrt(n) divides n\r\n    for i in range(2, int(n ** 0.5) + 1):\r\n        if n % i == 0:\r\n            return False\r\n    return True\r\n', 0, '2025-04-22 13:02:56'),
(6, '212H1A3096', NULL, 'def is_prime(n):\r\n    if n <= 1:\r\n        return False\r\n    if n == 2:\r\n        return True\r\n    if n % 2 == 0:\r\n        return False\r\n    for i in range(3, int(n ** 0.5) + 1, 2):\r\n        if n % i == 0:\r\n            return False\r\n    return True\r\n', 0, '2025-04-22 13:22:39'),
(7, '212H1A3096', NULL, 'def is_prime(n):\r\n    if n <= 1:\r\n        return False\r\n    if n == 2:\r\n        return True\r\n    if n % 2 == 0:\r\n        return False\r\n    for i in range(3, int(n ** 0.5) + 1, 2):\r\n        if n % i == 0:\r\n            return False\r\n    return True\r\n', 0, '2025-04-22 13:22:52'),
(8, '212H1A3096', NULL, 'def is_prime(n):\r\n    if n <= 1:\r\n        return False\r\n    if n == 2:\r\n        return True\r\n    if n % 2 == 0:\r\n        return False\r\n    for i in range(3, int(n ** 0.5) + 1, 2):\r\n        if n % i == 0:\r\n            return False\r\n    return True\r\n', 0, '2025-04-22 13:27:12'),
(9, '212H1A3096', NULL, 'def is_prime(n):\r\n    if n <= 1:\r\n        return False\r\n    if n == 2:\r\n        return True\r\n    if n % 2 == 0:\r\n        return False\r\n    for i in range(3, int(n ** 0.5) + 1, 2):\r\n        if n % i == 0:\r\n            return False\r\n    return True\r\n', 0, '2025-04-22 15:59:48'),
(10, '212H1A3096', NULL, 'def is_prime(n):\r\n    if n <= 1:\r\n        return False\r\n    if n == 2:\r\n        return True\r\n    if n % 2 == 0:\r\n        return False\r\n    for i in range(3, int(n ** 0.5) + 1, 2):\r\n        if n % i == 0:\r\n            return False\r\n    return True\r\n', 0, '2025-04-22 16:12:47'),
(11, '212H1A3096', NULL, 'def is_prime(n):\r\n    if n <= 1:\r\n        return False\r\n    if n == 2:\r\n        return True\r\n    if n % 2 == 0:\r\n        return False\r\n    for i in range(3, int(n ** 0.5) + 1, 2):\r\n        if n % i == 0:\r\n            return False\r\n    return True\r\n', 0, '2025-04-22 16:16:34'),
(12, '212H1A3096', NULL, 'def is_prime(n):\r\n    if n <= 1:\r\n        return False\r\n    if n == 2:\r\n        return True\r\n    if n % 2 == 0:\r\n        return False\r\n    for i in range(3, int(n ** 0.5) + 1, 2):\r\n        if n % i == 0:\r\n            return False\r\n    return True\r\n', 0, '2025-04-22 16:18:40'),
(13, '212H1A3096', NULL, 'def is_prime(n):\r\n    if n <= 1:  # Numbers less than or equal to 1 are not prime\r\n        return False\r\n    for i in range(2, int(n ** 0.5) + 1):  # Check divisibility up to the square root of n\r\n        if n % i == 0:  # If n is divisible by any number other than 1 and itself\r\n            return False\r\n    return True  # If no divisors found, it\'s a prime number\r\n\r\n# Example usage:\r\nnumber = int(input(\"Enter a number to check if it\'s prime: \"))\r\nif is_prime(number):\r\n    print(f\"{number} is a prime number.\")\r\nelse:\r\n    print(f\"{number} is not a prime number.\")\r\n', 0, '2025-04-22 16:27:18'),
(14, '212H1A3096', NULL, 'def is_prime(n):\r\n    if n <= 1:  # Numbers less than or equal to 1 are not prime\r\n        return False\r\n    for i in range(2, int(n ** 0.5) + 1):  # Check divisibility up to the square root of n\r\n        if n % i == 0:  # If n is divisible by any number other than 1 and itself\r\n            return False\r\n    return True  # If no divisors found, it\'s a prime number\r\n\r\n# Example usage:\r\nnumber = int(input(\"Enter a number to check if it\'s prime: \"))\r\nif is_prime(number):\r\n    print(f\"{number} is a prime number.\")\r\nelse:\r\n    print(f\"{number} is not a prime number.\")\r\n', 0, '2025-04-22 16:32:05'),
(15, '212H1A3096', NULL, 'print (\'helo\');', 0, '2025-04-22 16:48:20'),
(16, '212H1A3096', NULL, 'print()', 0, '2025-04-22 16:50:57'),
(17, '212H1A3096', NULL, 'print(\'hi\')', 0, '2025-04-22 16:57:28'),
(18, '212H1A3096', NULL, 'print(\'hi\');', 0, '2025-04-22 17:21:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `career_guidance`
--
ALTER TABLE `career_guidance`
  ADD PRIMARY KEY (`career_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `competitions`
--
ALTER TABLE `competitions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `competition_participants`
--
ALTER TABLE `competition_participants`
  ADD KEY `student_id` (`student_id`),
  ADD KEY `competition_participants_ibfk_2` (`competition_id`),
  ADD KEY `competition_participants_ibfk_3` (`institution_id`);

--
-- Indexes for table `competition_questions`
--
ALTER TABLE `competition_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `competition_id` (`competition_id`);

--
-- Indexes for table `competition_results`
--
ALTER TABLE `competition_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `competition_id` (`competition_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `exam_submissions`
--
ALTER TABLE `exam_submissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `competition_id` (`competition_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`faculty_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `institution_id` (`institution_id`);

--
-- Indexes for table `institution`
--
ALTER TABLE `institution`
  ADD PRIMARY KEY (`institution_id`);

--
-- Indexes for table `institutions`
--
ALTER TABLE `institutions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaderboard`
--
ALTER TABLE `leaderboard`
  ADD PRIMARY KEY (`leaderboard_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `competition_id` (`competition_id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`mark_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `performance_prediction`
--
ALTER TABLE `performance_prediction`
  ADD PRIMARY KEY (`prediction_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `roll_number` (`roll_number`),
  ADD KEY `institution_id` (`institution_id`);

--
-- Indexes for table `weekly_challenge_submissions`
--
ALTER TABLE `weekly_challenge_submissions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `career_guidance`
--
ALTER TABLE `career_guidance`
  MODIFY `career_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `competitions`
--
ALTER TABLE `competitions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `competition_questions`
--
ALTER TABLE `competition_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `competition_results`
--
ALTER TABLE `competition_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_submissions`
--
ALTER TABLE `exam_submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `faculty_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `institution`
--
ALTER TABLE `institution`
  MODIFY `institution_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `institutions`
--
ALTER TABLE `institutions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `leaderboard`
--
ALTER TABLE `leaderboard`
  MODIFY `leaderboard_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `mark_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `performance_prediction`
--
ALTER TABLE `performance_prediction`
  MODIFY `prediction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `weekly_challenge_submissions`
--
ALTER TABLE `weekly_challenge_submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `career_guidance`
--
ALTER TABLE `career_guidance`
  ADD CONSTRAINT `career_guidance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `competition_participants`
--
ALTER TABLE `competition_participants`
  ADD CONSTRAINT `competition_participants_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `competition_participants_ibfk_2` FOREIGN KEY (`competition_id`) REFERENCES `competitions` (`id`),
  ADD CONSTRAINT `competition_participants_ibfk_3` FOREIGN KEY (`institution_id`) REFERENCES `institutions` (`id`);

--
-- Constraints for table `competition_questions`
--
ALTER TABLE `competition_questions`
  ADD CONSTRAINT `competition_questions_ibfk_1` FOREIGN KEY (`competition_id`) REFERENCES `competitions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `competition_results`
--
ALTER TABLE `competition_results`
  ADD CONSTRAINT `competition_results_ibfk_1` FOREIGN KEY (`competition_id`) REFERENCES `competitions` (`id`),
  ADD CONSTRAINT `competition_results_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `exam_submissions`
--
ALTER TABLE `exam_submissions`
  ADD CONSTRAINT `exam_submissions_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `exam_submissions_ibfk_2` FOREIGN KEY (`competition_id`) REFERENCES `competitions` (`id`);

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`institution_id`) REFERENCES `institution` (`institution_id`) ON DELETE SET NULL;

--
-- Constraints for table `leaderboard`
--
ALTER TABLE `leaderboard`
  ADD CONSTRAINT `leaderboard_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `leaderboard_ibfk_2` FOREIGN KEY (`competition_id`) REFERENCES `competitions` (`id`);

--
-- Constraints for table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `marks_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `performance_prediction`
--
ALTER TABLE `performance_prediction`
  ADD CONSTRAINT `performance_prediction_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`institution_id`) REFERENCES `institution` (`institution_id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
