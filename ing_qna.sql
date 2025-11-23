-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 23, 2025 at 03:09 PM
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
-- Database: `ing_qna`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`answer_id`, `question_id`, `user_id`, `body`, `created_at`) VALUES
(1, 7, 4, 'Here is a clear explanation: Make sure to follow the correct sentence structure. Hope this helps!', '2025-10-03 22:09:08'),
(2, 8, 13, 'Here is a clear explanation: Focus on the meaning rather than memorizing the form. Hope this helps!', '2025-10-03 22:09:08'),
(3, 20, 13, 'Here is a clear explanation: Practice with simple examples first. Hope this helps!', '2025-10-04 22:09:08'),
(4, 10, 13, 'Here is a clear explanation: The rule changes depending on the context. Hope this helps!', '2025-09-30 22:09:08'),
(5, 14, 3, 'Here is a clear explanation: Focus on the meaning rather than memorizing the form. Hope this helps!', '2025-10-27 22:09:08'),
(6, 11, 13, 'Here is a clear explanation: Make sure to follow the correct sentence structure. Hope this helps!', '2025-11-05 22:09:08'),
(7, 13, 3, 'Here is a clear explanation: This is used when talking about experiences. Hope this helps!', '2025-10-08 22:09:08'),
(8, 19, 3, 'Here is a clear explanation: This is used when talking about experiences. Hope this helps!', '2025-11-06 22:09:08'),
(9, 17, 3, 'Here is a clear explanation: Focus on the meaning rather than memorizing the form. Hope this helps!', '2025-11-03 22:09:08'),
(10, 9, 13, 'Here is a clear explanation: Practice with simple examples first. Hope this helps!', '2025-11-15 22:09:08'),
(11, 5, 13, 'Here is a clear explanation: The rule changes depending on the context. Hope this helps!', '2025-10-20 22:09:08'),
(12, 3, 4, 'Here is a clear explanation: Focus on the meaning rather than memorizing the form. Hope this helps!', '2025-11-07 22:09:08'),
(13, 2, 13, 'Here is a clear explanation: Make sure to follow the correct sentence structure. Hope this helps!', '2025-11-06 22:09:08'),
(14, 15, 4, 'Here is a clear explanation: Practice with simple examples first. Hope this helps!', '2025-11-13 22:09:08'),
(15, 2, 3, 'Here is a clear explanation: The rule changes depending on the context. Hope this helps!', '2025-11-01 22:09:08'),
(16, 4, 4, 'Here is a clear explanation: Practice with simple examples first. Hope this helps!', '2025-11-08 22:09:08'),
(17, 7, 3, 'Here is a clear explanation: Practice with simple examples first. Hope this helps!', '2025-10-31 22:09:08'),
(18, 13, 13, 'Here is a clear explanation: This is used when talking about experiences. Hope this helps!', '2025-09-23 22:09:08'),
(19, 22, 13, 'Here is a clear explanation: Focus on the meaning rather than memorizing the form. Hope this helps!', '2025-10-09 22:09:08'),
(20, 3, 3, 'Here is a clear explanation: Focus on the meaning rather than memorizing the form. Hope this helps!', '2025-10-11 22:09:08'),
(21, 17, 4, 'Here is a clear explanation: Make sure to follow the correct sentence structure. Hope this helps!', '2025-11-08 22:09:08'),
(22, 12, 3, 'Here is a clear explanation: Focus on the meaning rather than memorizing the form. Hope this helps!', '2025-10-30 22:09:08'),
(23, 12, 13, 'Here is a clear explanation: The rule changes depending on the context. Hope this helps!', '2025-09-30 22:09:08'),
(24, 6, 13, 'Here is a clear explanation: Make sure to follow the correct sentence structure. Hope this helps!', '2025-11-13 22:09:08'),
(25, 11, 3, 'Here is a clear explanation: Make sure to follow the correct sentence structure. Hope this helps!', '2025-09-22 22:09:08'),
(26, 9, 4, 'Here is a clear explanation: Focus on the meaning rather than memorizing the form. Hope this helps!', '2025-10-04 22:09:08'),
(27, 1, 3, 'Here is a clear explanation: Make sure to follow the correct sentence structure. Hope this helps!', '2025-10-09 22:09:08'),
(28, 15, 3, 'Here is a clear explanation: Practice with simple examples first. Hope this helps!', '2025-11-07 22:09:08'),
(29, 21, 13, 'Here is a clear explanation: The rule changes depending on the context. Hope this helps!', '2025-09-19 22:09:08'),
(30, 14, 13, 'Here is a clear explanation: Focus on the meaning rather than memorizing the form. Hope this helps!', '2025-10-31 22:09:08'),
(31, 7, 13, 'Here is a clear explanation: Practice with simple examples first. Hope this helps!', '2025-09-26 22:09:08'),
(32, 19, 4, 'Here is a clear explanation: Make sure to follow the correct sentence structure. Hope this helps!', '2025-10-19 22:09:08'),
(33, 21, 4, 'Here is a clear explanation: Practice with simple examples first. Hope this helps!', '2025-10-13 22:09:08'),
(34, 22, 3, 'Here is a clear explanation: Practice with simple examples first. Hope this helps!', '2025-10-23 22:09:08'),
(35, 8, 4, 'Here is a clear explanation: The rule changes depending on the context. Hope this helps!', '2025-11-12 22:09:08'),
(36, 6, 3, 'Here is a clear explanation: This is used when talking about experiences. Hope this helps!', '2025-11-11 22:09:08'),
(37, 21, 3, 'Here is a clear explanation: Focus on the meaning rather than memorizing the form. Hope this helps!', '2025-11-10 22:09:08'),
(38, 18, 13, 'Here is a clear explanation: The rule changes depending on the context. Hope this helps!', '2025-10-30 22:09:08'),
(39, 15, 13, 'Here is a clear explanation: This is used when talking about experiences. Hope this helps!', '2025-10-12 22:09:08'),
(40, 19, 13, 'Here is a clear explanation: Focus on the meaning rather than memorizing the form. Hope this helps!', '2025-10-14 22:09:08'),
(41, 13, 4, 'Here is a clear explanation: Practice with simple examples first. Hope this helps!', '2025-11-09 22:09:08'),
(42, 12, 4, 'Here is a clear explanation: Practice with simple examples first. Hope this helps!', '2025-09-27 22:09:08'),
(43, 10, 4, 'Here is a clear explanation: This is used when talking about experiences. Hope this helps!', '2025-10-18 22:09:08'),
(44, 22, 4, 'Here is a clear explanation: Practice with simple examples first. Hope this helps!', '2025-09-22 22:09:08'),
(45, 20, 4, 'Here is a clear explanation: Practice with simple examples first. Hope this helps!', '2025-10-14 22:09:08'),
(46, 5, 4, 'Here is a clear explanation: This is used when talking about experiences. Hope this helps!', '2025-10-30 22:09:08'),
(47, 20, 3, 'Here is a clear explanation: Practice with simple examples first. Hope this helps!', '2025-10-04 22:09:08'),
(48, 1, 13, 'Here is a clear explanation: The rule changes depending on the context. Hope this helps!', '2025-09-30 22:09:08'),
(49, 10, 3, 'Here is a clear explanation: Make sure to follow the correct sentence structure. Hope this helps!', '2025-11-09 22:09:08'),
(50, 4, 3, 'Here is a clear explanation: This is used when talking about experiences. Hope this helps!', '2025-09-24 22:09:08'),
(51, 8, 3, 'Here is a clear explanation: The rule changes depending on the context. Hope this helps!', '2025-10-05 22:09:08'),
(52, 2, 4, 'Here is a clear explanation: Make sure to follow the correct sentence structure. Hope this helps!', '2025-10-19 22:09:08'),
(53, 18, 4, 'Here is a clear explanation: Focus on the meaning rather than memorizing the form. Hope this helps!', '2025-09-26 22:09:08'),
(54, 11, 4, 'Here is a clear explanation: Practice with simple examples first. Hope this helps!', '2025-10-06 22:09:08'),
(55, 6, 4, 'Here is a clear explanation: This is used when talking about experiences. Hope this helps!', '2025-09-20 22:09:08'),
(56, 17, 13, 'Here is a clear explanation: This is used when talking about experiences. Hope this helps!', '2025-10-19 22:09:08'),
(57, 16, 3, 'Here is a clear explanation: Make sure to follow the correct sentence structure. Hope this helps!', '2025-10-01 22:09:08'),
(58, 4, 13, 'Here is a clear explanation: This is used when talking about experiences. Hope this helps!', '2025-09-19 22:09:08'),
(59, 14, 4, 'Here is a clear explanation: The rule changes depending on the context. Hope this helps!', '2025-10-17 22:09:08'),
(60, 9, 3, 'Here is a clear explanation: Make sure to follow the correct sentence structure. Hope this helps!', '2025-11-08 22:09:08'),
(61, 16, 4, 'Here is a clear explanation: Practice with simple examples first. Hope this helps!', '2025-10-18 22:09:08'),
(62, 18, 3, 'Here is a clear explanation: Make sure to follow the correct sentence structure. Hope this helps!', '2025-11-10 22:09:08'),
(63, 16, 13, 'Here is a clear explanation: Practice with simple examples first. Hope this helps!', '2025-10-25 22:09:08'),
(64, 5, 3, 'Here is a clear explanation: Make sure to follow the correct sentence structure. Hope this helps!', '2025-10-15 22:09:08'),
(65, 1, 4, 'Here is a clear explanation: This is used when talking about experiences. Hope this helps!', '2025-10-23 22:09:08'),
(66, 3, 13, 'Here is a clear explanation: Practice with simple examples first. Hope this helps!', '2025-10-02 22:09:08'),
(89, 2, 376, 'tes', '2025-11-22 19:23:02'),
(90, 103, 376, 'jadi gitu', '2025-11-22 19:54:55'),
(91, 104, 308, 'jadi gini', '2025-11-22 21:07:32');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `user_id`, `question_id`, `answer_id`, `body`, `created_at`) VALUES
(1, 5, 9, 46, 'I had the same problem.', '2025-10-07 22:09:54'),
(2, 2, 11, NULL, 'Thanks for the explanation!', '2025-11-11 22:09:54'),
(3, 4, NULL, NULL, 'This really helped me.', '2025-10-27 22:09:54'),
(4, 2, NULL, 5, 'This really helped me.', '2025-10-18 22:09:54'),
(5, 13, NULL, NULL, 'Can you give more examples?', '2025-11-11 22:09:54'),
(6, 5, 9, NULL, 'This really helped me.', '2025-10-17 22:09:54'),
(7, 12, NULL, NULL, 'Can you give more examples?', '2025-10-10 22:09:54'),
(8, 6, NULL, NULL, 'Can you give more examples?', '2025-10-01 22:09:54'),
(9, 10, 13, 31, 'I had the same problem.', '2025-10-20 22:09:54'),
(10, 10, 13, 22, 'This really helped me.', '2025-11-03 22:09:54'),
(11, 10, 11, 49, 'Nice explanation!', '2025-10-22 22:09:54'),
(12, 6, NULL, 10, 'Thanks for the explanation!', '2025-11-15 22:09:54'),
(13, 5, 9, 26, 'Thanks for the explanation!', '2025-10-30 22:09:54'),
(14, 10, NULL, 65, 'Can you give more examples?', '2025-10-31 22:09:54'),
(15, 10, 13, NULL, 'Nice explanation!', '2025-11-03 22:09:54'),
(16, 12, NULL, 62, 'This is confusing but interesting.', '2025-10-11 22:09:54'),
(18, 18, 2, 13, 'tes', '2025-11-22 19:11:59'),
(19, 376, 2, NULL, 'tes2', '2025-11-22 19:23:15'),
(20, 376, 2, 89, 'hai', '2025-11-22 19:23:26'),
(21, 376, 103, NULL, 'jadi gini', '2025-11-22 19:35:20'),
(22, 308, 104, NULL, 'yagitu', '2025-11-22 21:07:55');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `question_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`question_id`, `user_id`, `title`, `body`, `created_at`) VALUES
(1, 6, 'Pertanyaan ke-93773', 'Ini adalah isi pertanyaan nomor 35321', '2025-08-12 22:01:06'),
(2, 12, 'Pertanyaan ke-13888', 'Ini adalah isi pertanyaan nomor 22250', '2025-09-07 22:01:06'),
(3, 5, 'Pertanyaan ke-51825', 'Ini adalah isi pertanyaan nomor 8571', '2025-08-20 22:01:06'),
(4, 11, 'Pertanyaan ke-29218', 'Ini adalah isi pertanyaan nomor 75182', '2025-08-19 22:01:06'),
(5, 10, 'Pertanyaan ke-14915', 'Ini adalah isi pertanyaan nomor 74880', '2025-10-17 22:01:06'),
(6, 9, 'Pertanyaan ke-66503', 'Ini adalah isi pertanyaan nomor 21096', '2025-11-10 22:01:06'),
(7, 2, 'Pertanyaan ke-98549', 'Ini adalah isi pertanyaan nomor 67959', '2025-10-02 22:01:06'),
(8, 12, 'How do I use the present perfect?', 'I am confused about using comparatives. Can someone explain this with clear examples?', '2025-08-23 22:06:40'),
(9, 10, 'How do I use comparatives and superlatives?', 'I am confused about using reported speech. Can someone explain this with clear examples?', '2025-08-16 22:06:40'),
(10, 2, 'How do I use comparatives and superlatives?', 'I am confused about using the present perfect. Can someone explain this with clear examples?', '2025-09-29 22:06:40'),
(11, 11, 'How do I use modal verbs?', 'I am confused about using phrasal verbs. Can someone explain this with clear examples?', '2025-09-27 22:06:40'),
(12, 9, 'How do I use comparatives and superlatives?', 'I am confused about using the present perfect. Can someone explain this with clear examples?', '2025-08-21 22:06:40'),
(13, 5, 'How do I use reported speech?', 'I am confused about using comparatives. Can someone explain this with clear examples?', '2025-10-25 22:06:40'),
(14, 6, 'How do I use conditional sentences?', 'I am confused about using comparatives. Can someone explain this with clear examples?', '2025-09-11 22:06:40'),
(15, 6, 'How do I use modal verbs?', 'I am confused about using reported speech. Can someone explain with examples?', '2025-09-07 22:08:41'),
(16, 16, 'How do I use the present perfect?', 'I am confused about using conditional sentences. Can someone explain with examples?', '2025-09-17 22:08:41'),
(17, 11, 'How do I use the present perfect?', 'I am confused about using modal verbs. Can someone explain with examples?', '2025-10-12 22:08:41'),
(18, 5, 'How do I use phrasal verbs correctly?', 'I am confused about using conditional sentences. Can someone explain with examples?', '2025-09-23 22:08:41'),
(19, 9, 'How do I use reported speech?', 'I am confused about using phrasal verbs. Can someone explain with examples?', '2025-09-14 22:08:41'),
(20, 12, 'How do I use phrasal verbs correctly?', 'I am confused about using phrasal verbs. Can someone explain with examples?', '2025-10-03 22:08:41'),
(21, 10, 'How do I use phrasal verbs correctly?', 'I am confused about using comparatives. Can someone explain with examples?', '2025-10-19 22:08:41'),
(22, 2, 'How do I use modal verbs?', 'I am confused about using modal verbs. Can someone explain with examples?', '2025-07-29 22:08:41'),
(23, 17, 'What is the difference between \"affect\" and \"effect\"?', 'I always get confused between these two words. Can someone explain the difference with examples?', '2025-01-15 10:30:00'),
(24, 18, 'How to improve English pronunciation?', 'What are some effective methods to improve English pronunciation for beginners?', '2025-01-16 14:20:00'),
(25, 19, 'When to use \"a\" vs \"an\"?', 'I understand the basic rule but sometimes get confused with words starting with vowels. Help please!', '2025-01-17 09:15:00'),
(26, 20, 'Best way to learn English vocabulary?', 'Looking for effective techniques to memorize and retain new English words.', '2025-01-18 16:45:00'),
(27, 21, 'How to use present perfect tense correctly?', 'I struggle with when to use present perfect vs simple past. Can someone clarify?', '2025-01-19 11:20:00'),
(28, 22, 'What are phrasal verbs and how to use them?', 'Can someone explain what phrasal verbs are and give common examples?', '2025-01-20 13:30:00'),
(29, 23, 'How to write a good English essay?', 'What is the structure for writing a good essay in English? Any tips?', '2025-01-21 15:45:00'),
(30, 24, 'Difference between \"make\" and \"do\"?', 'When should I use \"make\" and when should I use \"do\"? They seem similar.', '2025-01-22 10:10:00'),
(31, 25, 'How to improve listening skills?', 'What are the best ways to practice and improve English listening comprehension?', '2025-01-23 14:25:00'),
(32, 26, 'When to use \"the\" definite article?', 'I get confused about when to use \"the\" in sentences. Please help!', '2025-01-24 16:50:00'),
(33, 27, 'How to use conditional sentences?', 'Can someone explain the different types of conditional sentences?', '2025-01-25 09:30:00'),
(34, 28, 'What is passive voice and when to use it?', 'I dont understand passive voice construction. Examples would help!', '2025-01-26 11:40:00'),
(35, 29, 'How to prepare for TOEFL exam?', 'What are the best strategies and resources for TOEFL preparation?', '2025-01-27 13:15:00'),
(36, 30, 'Difference between \"say\" and \"tell\"?', 'When should I use \"say\" and when should I use \"tell\"?', '2025-01-28 15:20:00'),
(37, 31, 'How to use relative clauses?', 'Can someone explain relative clauses with who, which, that?', '2025-01-29 10:05:00'),
(38, 32, 'Best English learning apps?', 'What are the most effective mobile apps for learning English?', '2025-01-30 14:35:00'),
(39, 33, 'How to use gerunds and infinitives?', 'I get confused about when to use gerunds vs infinitives after verbs.', '2025-01-31 16:40:00'),
(40, 34, 'What are idioms and common examples?', 'Can someone explain what idioms are and share some common ones?', '2025-02-01 09:50:00'),
(41, 35, 'How to improve speaking fluency?', 'What exercises can help me speak English more fluently?', '2025-02-02 12:25:00'),
(42, 36, 'Difference between British and American English?', 'What are the main differences between British and American English?', '2025-02-03 14:30:00'),
(43, 37, 'How to use reported speech?', 'Can someone explain how to change direct speech to reported speech?', '2025-02-04 16:45:00'),
(44, 38, 'What are collocations?', 'I keep hearing about collocations. What are they and why are they important?', '2025-02-05 10:15:00'),
(45, 39, 'How to use modal verbs?', 'Can someone explain the different uses of modal verbs like can, could, may, might?', '2025-02-06 13:20:00'),
(46, 40, 'Best way to practice English writing?', 'What are effective ways to practice and improve English writing skills?', '2025-02-07 15:35:00'),
(47, 41, 'How to use prepositions correctly?', 'I always struggle with prepositions like in, on, at. Any tips?', '2025-02-08 11:10:00'),
(48, 42, 'What is the subjunctive mood?', 'Can someone explain what the subjunctive mood is and when to use it?', '2025-02-09 14:40:00'),
(49, 43, 'How to use comparatives and superlatives?', 'I need help with comparative and superlative forms of adjectives.', '2025-02-10 16:55:00'),
(50, 44, 'Best English podcasts for learners?', 'What are some good English podcasts for intermediate learners?', '2025-02-11 09:25:00'),
(51, 45, 'How to use articles with uncountable nouns?', 'When should I use articles with uncountable nouns like advice, information?', '2025-02-12 12:30:00'),
(52, 46, 'What are participle phrases?', 'Can someone explain participle phrases and how to use them?', '2025-02-13 14:45:00'),
(53, 47, 'How to improve reading comprehension?', 'What strategies can help me understand English texts better?', '2025-02-14 16:20:00'),
(54, 48, 'Difference between \"few\" and \"a few\"?', 'What is the difference between \"few\" and \"a few\"? They seem similar.', '2025-02-15 10:35:00'),
(55, 49, 'How to use the future perfect tense?', 'Can someone explain when and how to use the future perfect tense?', '2025-02-16 13:50:00'),
(56, 50, 'What are linking words and their uses?', 'Can someone explain different linking words and how to use them?', '2025-02-17 15:15:00'),
(57, 51, 'How to use indirect questions?', 'What is the structure for making indirect questions in English?', '2025-02-18 11:40:00'),
(58, 52, 'Best way to learn English grammar?', 'What is the most effective approach to learning English grammar?', '2025-02-19 14:05:00'),
(59, 53, 'How to use conditional type 3?', 'Can someone explain the third conditional with examples?', '2025-02-20 16:30:00'),
(60, 54, 'What are non-defining relative clauses?', 'How are non-defining relative clauses different from defining ones?', '2025-02-21 09:45:00'),
(61, 55, 'How to use \"used to\" and \"would\" for past habits?', 'What is the difference between \"used to\" and \"would\" for past habits?', '2025-02-22 12:10:00'),
(62, 56, 'Best English YouTube channels?', 'What are some good YouTube channels for learning English?', '2025-02-23 14:25:00'),
(63, 57, 'How to use the passive with modals?', 'Can someone explain how to form passive sentences with modal verbs?', '2025-02-24 16:40:00'),
(64, 58, 'What are compound nouns?', 'Can someone explain compound nouns with examples?', '2025-02-25 10:55:00'),
(65, 59, 'How to use \"so\" and \"such\"?', 'What is the difference between \"so\" and \"such\"?', '2025-02-26 13:20:00'),
(66, 60, 'Best way to build vocabulary?', 'What are effective methods to build English vocabulary?', '2025-02-27 15:35:00'),
(67, 61, 'How to use the past perfect continuous?', 'When should I use the past perfect continuous tense?', '2025-02-28 11:50:00'),
(68, 62, 'What are false friends in English?', 'Can someone explain what false friends are in language learning?', '2025-03-01 14:15:00'),
(69, 63, 'How to use inversion in English?', 'When do we use inversion in English sentences?', '2025-03-02 16:30:00'),
(70, 64, 'Best English newspapers for learners?', 'What newspapers are good for English learners to read?', '2025-03-03 09:45:00'),
(71, 65, 'How to use \"wish\" and \"if only\"?', 'Can someone explain how to use \"wish\" and \"if only\" correctly?', '2025-03-04 12:00:00'),
(72, 66, 'What are phrasal verbs with \"get\"?', 'Can you list common phrasal verbs with \"get\" and their meanings?', '2025-03-05 14:15:00'),
(73, 67, 'How to use the present perfect continuous?', 'When do we use the present perfect continuous tense?', '2025-03-06 16:30:00'),
(74, 68, 'Best way to practice English speaking alone?', 'How can I practice speaking English when Im alone?', '2025-03-07 10:45:00'),
(75, 69, 'How to use \"both\", \"either\", \"neither\"?', 'Can someone explain how to use \"both\", \"either\", and \"neither\"?', '2025-03-08 13:00:00'),
(76, 70, 'What are the different types of adverbs?', 'Can someone explain the different types of adverbs in English?', '2025-03-09 15:15:00'),
(77, 71, 'How to use conditional type 0?', 'What is the zero conditional and when do we use it?', '2025-03-10 11:30:00'),
(78, 72, 'Best English learning websites?', 'What are the best websites for learning English online?', '2025-03-11 13:45:00'),
(79, 73, 'How to use \"have something done\"?', 'Can someone explain the \"have something done\" structure?', '2025-03-12 16:00:00'),
(80, 74, 'What are the different future forms?', 'How many ways are there to express future in English?', '2025-03-13 10:15:00'),
(81, 75, 'How to use \"despite\" and \"in spite of\"?', 'What is the difference between \"despite\" and \"in spite of\"?', '2025-03-14 12:30:00'),
(82, 76, 'Best way to learn English pronunciation?', 'What are the most effective methods for learning pronunciation?', '2025-03-15 14:45:00'),
(83, 77, 'How to use the past perfect?', 'When should I use the past perfect tense?', '2025-03-16 17:00:00'),
(84, 78, 'What are quantifiers?', 'Can someone explain quantifiers like some, any, much, many?', '2025-03-17 11:15:00'),
(85, 79, 'How to use \"used to\" vs \"be used to\"?', 'What is the difference between \"used to\" and \"be used to\"?', '2025-03-18 13:30:00'),
(86, 80, 'Best English grammar books?', 'What are the best books for learning English grammar?', '2025-03-19 15:45:00'),
(87, 81, 'How to use reported questions?', 'How do we change direct questions to reported questions?', '2025-03-20 10:00:00'),
(88, 82, 'What are the different types of pronouns?', 'Can someone explain the different types of pronouns?', '2025-03-21 12:15:00'),
(89, 83, 'How to use \"as\" and \"like\"?', 'What is the difference between \"as\" and \"like\"?', '2025-03-22 14:30:00'),
(90, 84, 'Best way to learn English idioms?', 'How can I effectively learn and remember English idioms?', '2025-03-23 16:45:00'),
(91, 85, 'How to use the subjunctive in English?', 'When do we use the subjunctive mood in modern English?', '2025-03-24 11:00:00'),
(92, 86, 'What are participle adjectives?', 'Can someone explain participle adjectives with examples?', '2025-03-25 13:15:00'),
(93, 87, 'How to use \"whether\" and \"if\"?', 'What is the difference between \"whether\" and \"if\"?', '2025-03-26 15:30:00'),
(94, 88, 'Best English conversation practice?', 'What are good ways to practice English conversation?', '2025-03-27 17:45:00'),
(95, 89, 'How to use the future continuous?', 'When do we use the future continuous tense?', '2025-03-28 10:10:00'),
(96, 90, 'What are the rules for capitalization?', 'What are the main rules for capitalization in English?', '2025-03-29 12:25:00'),
(97, 91, 'How to use \"enough\" and \"too\"?', 'Can someone explain how to use \"enough\" and \"too\"?', '2025-03-30 14:40:00'),
(98, 92, 'Best way to prepare for IELTS?', 'What are effective strategies for IELTS preparation?', '2025-03-31 16:55:00'),
(99, 93, 'How to use conditional type 2?', 'Can someone explain the second conditional with examples?', '2025-04-01 11:20:00'),
(100, 25, 'How to use conditional type 3?', 'Can someone explain the third conditional with examples from real situations?', '2025-03-10 11:30:00'),
(101, 376, 'Pertanyaan lagi', 'how to writing in computer', '2025-11-22 09:48:06'),
(102, 376, 'anu', 'Gawendeng', '2025-11-22 09:50:26'),
(103, 376, 'Test', 'Grammar membaca', '2025-11-22 09:51:49'),
(104, 308, 'bagai mana', 'gatau', '2025-11-22 21:06:58');

-- --------------------------------------------------------

--
-- Table structure for table `question_tag`
--

CREATE TABLE `question_tag` (
  `qt_id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question_tag`
--

INSERT INTO `question_tag` (`qt_id`, `question_id`, `tag_id`) VALUES
(1, 3, 10),
(2, 3, 5),
(3, 3, 20),
(4, 16, 12),
(5, 20, 14),
(6, 14, 19),
(7, 21, 8),
(8, 16, 8),
(9, 2, 16),
(10, 7, 8),
(11, 5, 5),
(12, 4, 14),
(13, 6, 9),
(14, 17, 20),
(15, 17, 8),
(16, 1, 4),
(17, 15, 9),
(18, 13, 5),
(19, 6, 13),
(20, 9, 11),
(21, 14, 13),
(22, 18, 20),
(23, 20, 8),
(24, 21, 20),
(25, 12, 14),
(26, 1, 16),
(27, 17, 2),
(28, 17, 4),
(29, 22, 18),
(30, 2, 15),
(31, 18, 18),
(32, 16, 9),
(33, 8, 16),
(34, 21, 7),
(35, 9, 20),
(36, 11, 5),
(37, 5, 12),
(38, 4, 12),
(39, 4, 18),
(40, 4, 10),
(41, 3, 2),
(42, 7, 5),
(43, 2, 14),
(44, 8, 18),
(45, 13, 17),
(46, 18, 5),
(47, 13, 12),
(48, 17, 7),
(49, 10, 2),
(50, 17, 16),
(51, 1, 5),
(52, 13, 6),
(53, 13, 1),
(54, 12, 19),
(55, 8, 7),
(56, 3, 12),
(57, 12, 7),
(58, 20, 3),
(59, 14, 3),
(60, 2, 7),
(61, 6, 19),
(62, 14, 18),
(63, 5, 7),
(64, 2, 5),
(65, 17, 10),
(66, 2, 2),
(67, 18, 16),
(68, 10, 4),
(69, 3, 6),
(70, 20, 12),
(71, 14, 10),
(72, 16, 18),
(73, 13, 3),
(74, 22, 5),
(75, 22, 7),
(76, 6, 1),
(77, 14, 15),
(78, 16, 14),
(79, 11, 17),
(80, 15, 3),
(81, 7, 4),
(82, 20, 19),
(83, 10, 15),
(84, 15, 19),
(85, 12, 3),
(86, 4, 20),
(87, 22, 2),
(88, 17, 11),
(89, 11, 15),
(90, 15, 12),
(91, 11, 7),
(92, 5, 19),
(93, 15, 13),
(94, 18, 10),
(95, 5, 10),
(96, 20, 10),
(97, 3, 3),
(98, 11, 18),
(99, 6, 16),
(100, 5, 2),
(101, 20, 4),
(102, 12, 18),
(103, 21, 19),
(104, 14, 2),
(105, 9, 3),
(106, 12, 6),
(107, 6, 18),
(108, 15, 7),
(109, 9, 9),
(110, 17, 13),
(111, 13, 15),
(112, 2, 20),
(113, 7, 19),
(114, 22, 11),
(115, 6, 11),
(116, 12, 11),
(117, 20, 9),
(118, 22, 14),
(119, 2, 11),
(120, 3, 19),
(121, 8, 6),
(122, 13, 20),
(123, 21, 2),
(124, 7, 12),
(125, 7, 2),
(126, 13, 8),
(127, 19, 14),
(128, 18, 17),
(129, 12, 13),
(130, 8, 4),
(131, 10, 12),
(132, 1, 7),
(133, 5, 20),
(134, 18, 11),
(135, 21, 13),
(136, 10, 1),
(137, 16, 10),
(138, 5, 16),
(139, 8, 11),
(140, 18, 14),
(141, 11, 9),
(142, 22, 6),
(143, 10, 20),
(144, 16, 17),
(145, 12, 1),
(146, 12, 9),
(147, 16, 7),
(148, 10, 13),
(149, 22, 19),
(150, 21, 3),
(151, 9, 7),
(152, 1, 19),
(153, 19, 1),
(154, 14, 8),
(155, 7, 9),
(156, 1, 12),
(157, 7, 13),
(158, 20, 11),
(159, 16, 2),
(160, 16, 4),
(161, 14, 1),
(162, 6, 4),
(163, 12, 15),
(164, 16, 11),
(165, 13, 11),
(166, 10, 11),
(167, 3, 16),
(168, 6, 17),
(169, 8, 2),
(170, 16, 15),
(171, 16, 5),
(172, 15, 18),
(173, 17, 15),
(174, 17, 5),
(175, 10, 16),
(176, 11, 13),
(177, 14, 6),
(178, 2, 3),
(179, 1, 11),
(180, 21, 5),
(181, 20, 6),
(182, 11, 11),
(183, 6, 8),
(184, 22, 1),
(185, 8, 5),
(186, 8, 1),
(187, 17, 17),
(188, 2, 1),
(189, 18, 19),
(190, 15, 16),
(191, 13, 13),
(192, 12, 4),
(193, 4, 13),
(194, 15, 5),
(195, 14, 14),
(196, 19, 17),
(197, 2, 12),
(198, 14, 5),
(199, 21, 6),
(200, 10, 18),
(201, 4, 2),
(202, 15, 14),
(203, 19, 12),
(204, 14, 16),
(205, 9, 18),
(206, 11, 14),
(207, 11, 6),
(208, 21, 11),
(209, 19, 11),
(210, 1, 2),
(211, 16, 3),
(212, 19, 16),
(213, 2, 13),
(214, 9, 5),
(215, 16, 16),
(216, 8, 20),
(217, 9, 17),
(218, 7, 18),
(219, 4, 1),
(220, 15, 6),
(221, 19, 4),
(222, 13, 7),
(223, 1, 6),
(224, 10, 8),
(225, 9, 14),
(226, 18, 1),
(227, 11, 12),
(228, 10, 17),
(229, 2, 18),
(230, 22, 10),
(231, 8, 10),
(232, 2, 9),
(233, 11, 16),
(234, 1, 13),
(235, 21, 12),
(236, 22, 20),
(237, 17, 12),
(238, 14, 20),
(239, 13, 16),
(240, 5, 18),
(241, 11, 8),
(242, 7, 7),
(243, 2, 8),
(244, 18, 4),
(245, 3, 17),
(246, 15, 4),
(247, 5, 13),
(248, 15, 11),
(249, 18, 13),
(250, 18, 9),
(251, 102, 12),
(252, 103, 1),
(253, 104, 10);

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `school_id` int(11) NOT NULL,
  `school_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`school_id`, `school_name`) VALUES
(1, 'SMA Negeri 1'),
(2, 'SMA Negeri 2'),
(3, 'SMK Informatika 1'),
(4, 'MAN 1 Kota'),
(5, 'SMK Muhammadiyah 3'),
(6, 'Oxford High School'),
(7, 'Cambridge Language Center'),
(8, 'Harvard English School'),
(9, 'Brighton Grammar'),
(10, 'London Public School'),
(11, 'Manchester English Academy'),
(12, 'Birmingham State School'),
(13, 'Liverpool International School'),
(14, 'Leeds Learning Center'),
(15, 'Bristol College');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `tag_id` int(11) NOT NULL,
  `tag_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`tag_id`, `tag_name`) VALUES
(1, 'Grammar'),
(2, 'Vocabulary'),
(3, 'Listening'),
(4, 'Speaking'),
(5, 'Reading'),
(6, 'Writing'),
(7, 'Pronunciation'),
(8, 'Conversation'),
(9, 'Essay Writing'),
(10, 'Idioms'),
(11, 'Phrasal Verbs'),
(12, 'TOEFL'),
(13, 'IELTS'),
(14, 'Academic English'),
(15, 'Daily English'),
(16, 'Slang'),
(17, 'Business English'),
(18, 'Tenses'),
(19, 'Passive Voice'),
(20, 'Translation');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `school_id`, `name`, `email`, `password`, `role`) VALUES
(2, 3, 'User95834', 'user32144@mail.com', 'hashedpw', 'student'),
(3, 5, 'User55755', 'user12476@mail.com', 'hashedpw', 'teacher'),
(4, 4, 'User28624', 'user34157@mail.com', 'hashedpw', 'teacher'),
(5, 2, 'User47439', 'user73966@mail.com', 'hashedpw', 'student'),
(6, 1, 'User47851', 'user54795@mail.com', 'hashedpw', 'student'),
(9, 4, 'User11054', 'user14093@mail.com', 'hashedpw', 'student'),
(10, 3, 'User61511', 'user60745@mail.com', 'hashedpw', 'student'),
(11, 5, 'User9275', 'user13666@mail.com', 'hashedpw', 'student'),
(12, 2, 'User8485', 'user92858@mail.com', 'hashedpw', 'student'),
(13, 1, 'User12951', 'user83823@mail.com', 'hashedpw', 'teacher'),
(16, 3, 'User_22636', 'user80176@mail.com', 'hashed_password', 'student'),
(17, 2, 'Student 1', 'student1@mail.com', 'hashed_password', 'student'),
(18, 4, 'Student 2', 'student2@mail.com', 'hashed_password', 'student'),
(19, 2, 'Student 3', 'student3@mail.com', 'hashed_password', 'student'),
(20, 7, 'Student 4', 'student4@mail.com', 'hashed_password', 'student'),
(21, 8, 'Student 5', 'student5@mail.com', 'hashed_password', 'student'),
(22, 10, 'Student 6', 'student6@mail.com', 'hashed_password', 'student'),
(23, 6, 'Student 7', 'student7@mail.com', 'hashed_password', 'student'),
(24, 1, 'Student 8', 'student8@mail.com', 'hashed_password', 'student'),
(25, 4, 'Student 9', 'student9@mail.com', 'hashed_password', 'student'),
(26, 7, 'Student 10', 'student10@mail.com', 'hashed_password', 'student'),
(27, 1, 'Student 11', 'student11@mail.com', 'hashed_password', 'student'),
(28, 3, 'Student 12', 'student12@mail.com', 'hashed_password', 'student'),
(29, 4, 'Student 13', 'student13@mail.com', 'hashed_password', 'student'),
(30, 1, 'Student 14', 'student14@mail.com', 'hashed_password', 'student'),
(31, 10, 'Student 15', 'student15@mail.com', 'hashed_password', 'student'),
(32, 8, 'Student 16', 'student16@mail.com', 'hashed_password', 'student'),
(33, 1, 'Student 17', 'student17@mail.com', 'hashed_password', 'student'),
(34, 10, 'Student 18', 'student18@mail.com', 'hashed_password', 'student'),
(35, 7, 'Student 19', 'student19@mail.com', 'hashed_password', 'student'),
(36, 5, 'Student 20', 'student20@mail.com', 'hashed_password', 'student'),
(37, 3, 'Student 21', 'student21@mail.com', 'hashed_password', 'student'),
(38, 7, 'Student 22', 'student22@mail.com', 'hashed_password', 'student'),
(39, 8, 'Student 23', 'student23@mail.com', 'hashed_password', 'student'),
(40, 9, 'Student 24', 'student24@mail.com', 'hashed_password', 'student'),
(41, 1, 'Student 25', 'student25@mail.com', 'hashed_password', 'student'),
(42, 5, 'Student 26', 'student26@mail.com', 'hashed_password', 'student'),
(43, 2, 'Student 27', 'student27@mail.com', 'hashed_password', 'student'),
(44, 7, 'Student 28', 'student28@mail.com', 'hashed_password', 'student'),
(45, 6, 'Student 29', 'student29@mail.com', 'hashed_password', 'student'),
(46, 8, 'Student 30', 'student30@mail.com', 'hashed_password', 'student'),
(47, 4, 'Student 31', 'student31@mail.com', 'hashed_password', 'student'),
(48, 4, 'Student 32', 'student32@mail.com', 'hashed_password', 'student'),
(49, 10, 'Student 33', 'student33@mail.com', 'hashed_password', 'student'),
(50, 5, 'Student 34', 'student34@mail.com', 'hashed_password', 'student'),
(51, 3, 'Student 35', 'student35@mail.com', 'hashed_password', 'student'),
(52, 2, 'Student 36', 'student36@mail.com', 'hashed_password', 'student'),
(53, 9, 'Student 37', 'student37@mail.com', 'hashed_password', 'student'),
(54, 9, 'Student 38', 'student38@mail.com', 'hashed_password', 'student'),
(55, 9, 'Student 39', 'student39@mail.com', 'hashed_password', 'student'),
(56, 6, 'Student 40', 'student40@mail.com', 'hashed_password', 'student'),
(57, 2, 'Student 41', 'student41@mail.com', 'hashed_password', 'student'),
(58, 3, 'Student 42', 'student42@mail.com', 'hashed_password', 'student'),
(59, 7, 'Student 43', 'student43@mail.com', 'hashed_password', 'student'),
(60, 8, 'Student 44', 'student44@mail.com', 'hashed_password', 'student'),
(61, 7, 'Student 45', 'student45@mail.com', 'hashed_password', 'student'),
(62, 9, 'Student 46', 'student46@mail.com', 'hashed_password', 'student'),
(63, 3, 'Student 47', 'student47@mail.com', 'hashed_password', 'student'),
(64, 9, 'Student 48', 'student48@mail.com', 'hashed_password', 'student'),
(65, 6, 'Student 49', 'student49@mail.com', 'hashed_password', 'student'),
(66, 10, 'Student 50', 'student50@mail.com', 'hashed_password', 'student'),
(67, 4, 'Student 51', 'student51@mail.com', 'hashed_password', 'student'),
(68, 1, 'Student 52', 'student52@mail.com', 'hashed_password', 'student'),
(69, 9, 'Student 53', 'student53@mail.com', 'hashed_password', 'student'),
(70, 4, 'Student 54', 'student54@mail.com', 'hashed_password', 'student'),
(71, 2, 'Student 55', 'student55@mail.com', 'hashed_password', 'student'),
(72, 9, 'Student 56', 'student56@mail.com', 'hashed_password', 'student'),
(73, 9, 'Student 57', 'student57@mail.com', 'hashed_password', 'student'),
(74, 5, 'Student 58', 'student58@mail.com', 'hashed_password', 'student'),
(75, 8, 'Student 59', 'student59@mail.com', 'hashed_password', 'student'),
(76, 6, 'Student 60', 'student60@mail.com', 'hashed_password', 'student'),
(77, 5, 'Student 61', 'student61@mail.com', 'hashed_password', 'student'),
(78, 6, 'Student 62', 'student62@mail.com', 'hashed_password', 'student'),
(79, 6, 'Student 63', 'student63@mail.com', 'hashed_password', 'student'),
(80, 2, 'Student 64', 'student64@mail.com', 'hashed_password', 'student'),
(81, 1, 'Student 65', 'student65@mail.com', 'hashed_password', 'student'),
(82, 9, 'Student 66', 'student66@mail.com', 'hashed_password', 'student'),
(83, 1, 'Student 67', 'student67@mail.com', 'hashed_password', 'student'),
(84, 9, 'Student 68', 'student68@mail.com', 'hashed_password', 'student'),
(85, 9, 'Student 69', 'student69@mail.com', 'hashed_password', 'student'),
(86, 7, 'Student 70', 'student70@mail.com', 'hashed_password', 'student'),
(87, 8, 'Student 71', 'student71@mail.com', 'hashed_password', 'student'),
(88, 10, 'Student 72', 'student72@mail.com', 'hashed_password', 'student'),
(89, 4, 'Student 73', 'student73@mail.com', 'hashed_password', 'student'),
(90, 1, 'Student 74', 'student74@mail.com', 'hashed_password', 'student'),
(91, 2, 'Student 75', 'student75@mail.com', 'hashed_password', 'student'),
(92, 7, 'Student 76', 'student76@mail.com', 'hashed_password', 'student'),
(93, 7, 'Student 77', 'student77@mail.com', 'hashed_password', 'student'),
(94, 4, 'Student 78', 'student78@mail.com', 'hashed_password', 'student'),
(95, 7, 'Student 79', 'student79@mail.com', 'hashed_password', 'student'),
(96, 5, 'Student 80', 'student80@mail.com', 'hashed_password', 'student'),
(144, 3, 'Teacher 1', 'teacher1@mail.com', 'hashed_password', 'teacher'),
(145, 1, 'Teacher 2', 'teacher2@mail.com', 'hashed_password', 'teacher'),
(146, 4, 'Teacher 3', 'teacher3@mail.com', 'hashed_password', 'teacher'),
(147, 5, 'Teacher 4', 'teacher4@mail.com', 'hashed_password', 'teacher'),
(148, 3, 'Teacher 5', 'teacher5@mail.com', 'hashed_password', 'teacher'),
(149, 2, 'Teacher 6', 'teacher6@mail.com', 'hashed_password', 'teacher'),
(150, 9, 'Teacher 7', 'teacher7@mail.com', 'hashed_password', 'teacher'),
(151, 9, 'Teacher 8', 'teacher8@mail.com', 'hashed_password', 'teacher'),
(152, 9, 'Teacher 9', 'teacher9@mail.com', 'hashed_password', 'teacher'),
(153, 8, 'Teacher 10', 'teacher10@mail.com', 'hashed_password', 'teacher'),
(154, 9, 'Teacher 11', 'teacher11@mail.com', 'hashed_password', 'teacher'),
(155, 3, 'Teacher 12', 'teacher12@mail.com', 'hashed_password', 'teacher'),
(156, 8, 'Teacher 13', 'teacher13@mail.com', 'hashed_password', 'teacher'),
(157, 8, 'Teacher 14', 'teacher14@mail.com', 'hashed_password', 'teacher'),
(158, 5, 'Teacher 15', 'teacher15@mail.com', 'hashed_password', 'teacher'),
(159, 2, 'Teacher 16', 'teacher16@mail.com', 'hashed_password', 'teacher'),
(160, 4, 'Teacher 17', 'teacher17@mail.com', 'hashed_password', 'teacher'),
(161, 3, 'Teacher 18', 'teacher18@mail.com', 'hashed_password', 'teacher'),
(162, 2, 'Teacher 19', 'teacher19@mail.com', 'hashed_password', 'teacher'),
(163, 3, 'Teacher 20', 'teacher20@mail.com', 'hashed_password', 'teacher'),
(275, 1, 'Alice Johnson', 'u001@mail.com', 'pass123', 'student'),
(276, 2, 'Michael Smith', 'u002@mail.com', 'pass123', 'student'),
(277, 3, 'Emma Brown', 'u003@mail.com', 'pass123', 'student'),
(278, 4, 'Daniel Wilson', 'u004@mail.com', 'pass123', 'student'),
(279, 5, 'Sophia Miller', 'u005@mail.com', 'pass123', 'student'),
(280, 1, 'James Anderson', 'u006@mail.com', 'pass123', 'student'),
(281, 2, 'Olivia Davis', 'u007@mail.com', 'pass123', 'student'),
(282, 3, 'Benjamin Harris', 'u008@mail.com', 'pass123', 'student'),
(283, 4, 'Ava Thompson', 'u009@mail.com', 'pass123', 'student'),
(284, 5, 'Jacob Moore', 'u010@mail.com', 'pass123', 'student'),
(285, 1, 'Mia Taylor', 'u011@mail.com', 'pass123', 'student'),
(286, 2, 'Ethan White', 'u012@mail.com', 'pass123', 'student'),
(287, 3, 'Charlotte Martin', 'u013@mail.com', 'pass123', 'student'),
(288, 4, 'Logan Lee', 'u014@mail.com', 'pass123', 'student'),
(289, 5, 'Harper King', 'u015@mail.com', 'pass123', 'student'),
(290, 1, 'Lucas Clark', 'u016@mail.com', 'pass123', 'student'),
(291, 2, 'Amelia Lewis', 'u017@mail.com', 'pass123', 'student'),
(292, 3, 'Henry Walker', 'u018@mail.com', 'pass123', 'student'),
(293, 4, 'Evelyn Hall', 'u019@mail.com', 'pass123', 'student'),
(294, 5, 'Alexander Young', 'u020@mail.com', 'pass123', 'student'),
(295, 1, 'Isabella Scott', 'u021@mail.com', 'pass123', 'student'),
(296, 2, 'William Adams', 'u022@mail.com', 'pass123', 'student'),
(297, 3, 'Chloe Baker', 'u023@mail.com', 'pass123', 'student'),
(298, 4, 'Samuel Green', 'u024@mail.com', 'pass123', 'student'),
(299, 5, 'Emily Nelson', 'u025@mail.com', 'pass123', 'student'),
(300, 1, 'Matthew Carter', 'u026@mail.com', 'pass123', 'student'),
(301, 2, 'Ella Perez', 'u027@mail.com', 'pass123', 'student'),
(302, 3, 'David Roberts', 'u028@mail.com', 'pass123', 'student'),
(303, 4, 'Abigail Turner', 'u029@mail.com', 'pass123', 'student'),
(304, 5, 'Joseph Phillips', 'u030@mail.com', 'pass123', 'student'),
(305, 1, 'Grace Campbell', 'u031@mail.com', 'pass123', 'student'),
(306, 2, 'Gabriel Parker', 'u032@mail.com', 'pass123', 'student'),
(307, 3, 'Victoria Evans', 'u033@mail.com', 'pass123', 'student'),
(308, 4, 'Andrew Edwards', 'u034@mail.com', 'pass123', 'student'),
(309, 5, 'Lily Collins', 'u035@mail.com', 'pass123', 'student'),
(310, 1, 'Christopher Stewart', 'u036@mail.com', 'pass123', 'student'),
(311, 2, 'Hannah Sanchez', 'u037@mail.com', 'pass123', 'student'),
(312, 3, 'Nathan Morris', 'u038@mail.com', 'pass123', 'student'),
(313, 4, 'Zoe Rogers', 'u039@mail.com', 'pass123', 'student'),
(314, 5, 'Jonathan Reed', 'u040@mail.com', 'pass123', 'student'),
(315, 1, 'Natalie Cook', 'u041@mail.com', 'pass123', 'student'),
(316, 2, 'Dylan Morgan', 'u042@mail.com', 'pass123', 'student'),
(317, 3, 'Avery Bell', 'u043@mail.com', 'pass123', 'student'),
(318, 4, 'Christian Murphy', 'u044@mail.com', 'pass123', 'student'),
(319, 5, 'Scarlett Bailey', 'u045@mail.com', 'pass123', 'student'),
(320, 1, 'Isaac Rivera', 'u046@mail.com', 'pass123', 'student'),
(321, 2, 'Penelope Cooper', 'u047@mail.com', 'pass123', 'student'),
(322, 3, 'Leo Richardson', 'u048@mail.com', 'pass123', 'student'),
(323, 4, 'Layla Cox', 'u049@mail.com', 'pass123', 'student'),
(324, 5, 'Anthony Howard', 'u050@mail.com', 'pass123', 'student'),
(325, 1, 'Mr. Robert Clark', 't001@mail.com', 'pass123', 'teacher'),
(326, 2, 'Mrs. Linda Parker', 't002@mail.com', 'pass123', 'teacher'),
(327, 3, 'Mr. Steven Fisher', 't003@mail.com', 'pass123', 'teacher'),
(328, 4, 'Ms. Karen Foster', 't004@mail.com', 'pass123', 'teacher'),
(329, 5, 'Mr. Charles Barnes', 't005@mail.com', 'pass123', 'teacher'),
(330, 1, 'Mrs. Amanda Griffin', 't006@mail.com', 'pass123', 'teacher'),
(331, 2, 'Mr. Edward Holland', 't007@mail.com', 'pass123', 'teacher'),
(332, 3, 'Ms. Rebecca Pierce', 't008@mail.com', 'pass123', 'teacher'),
(333, 4, 'Mr. Patrick Walsh', 't009@mail.com', 'pass123', 'teacher'),
(334, 5, 'Ms. Julia Barrett', 't010@mail.com', 'pass123', 'teacher'),
(335, 1, 'Adam Holmes', 'u051@mail.com', 'pass123', 'student'),
(336, 2, 'Eleanor Lowe', 'u052@mail.com', 'pass123', 'student'),
(337, 3, 'Jason Curtis', 'u053@mail.com', 'pass123', 'student'),
(338, 4, 'Madison Rice', 'u054@mail.com', 'pass123', 'student'),
(339, 5, 'Tyler Boyd', 'u055@mail.com', 'pass123', 'student'),
(340, 1, 'Samantha Bush', 'u056@mail.com', 'pass123', 'student'),
(341, 2, 'Owen Watts', 'u057@mail.com', 'pass123', 'student'),
(342, 3, 'Lucy Pope', 'u058@mail.com', 'pass123', 'student'),
(343, 4, 'Connor Steele', 'u059@mail.com', 'pass123', 'student'),
(344, 5, 'Arianna Briggs', 'u060@mail.com', 'pass123', 'student'),
(345, 1, 'Bryan Holt', 'u061@mail.com', 'pass123', 'student'),
(346, 2, 'Eliza Pratt', 'u062@mail.com', 'pass123', 'student'),
(347, 3, 'Tristan Becker', 'u063@mail.com', 'pass123', 'student'),
(348, 4, 'Jasmine Kane', 'u064@mail.com', 'pass123', 'student'),
(349, 5, 'Marcus Neal', 'u065@mail.com', 'pass123', 'student'),
(350, 1, 'Paige Hunt', 'u066@mail.com', 'pass123', 'student'),
(351, 2, 'Xavier Dean', 'u067@mail.com', 'pass123', 'student'),
(352, 3, 'Valerie Cross', 'u068@mail.com', 'pass123', 'student'),
(353, 4, 'George Briggs', 'u069@mail.com', 'pass123', 'student'),
(354, 5, 'Amber Watts', 'u070@mail.com', 'pass123', 'student'),
(355, 1, 'Shawn Ford', 'u071@mail.com', 'pass123', 'student'),
(356, 2, 'Melanie Norris', 'u072@mail.com', 'pass123', 'student'),
(357, 3, 'Eli Sharp', 'u073@mail.com', 'pass123', 'student'),
(358, 4, 'Daisy Love', 'u074@mail.com', 'pass123', 'student'),
(359, 5, 'Arthur Blake', 'u075@mail.com', 'pass123', 'student'),
(360, 1, 'Riley Lane', 'u076@mail.com', 'pass123', 'student'),
(361, 2, 'Ivy Marsh', 'u077@mail.com', 'pass123', 'student'),
(362, 3, 'Colin Payne', 'u078@mail.com', 'pass123', 'student'),
(363, 4, 'Angela Rice', 'u079@mail.com', 'pass123', 'student'),
(364, 5, 'Gavin Clarke', 'u080@mail.com', 'pass123', 'student'),
(365, 1, 'Tiffany Dale', 'u081@mail.com', 'pass123', 'student'),
(366, 2, 'Shane Webb', 'u082@mail.com', 'pass123', 'student'),
(367, 3, 'Lydia Holt', 'u083@mail.com', 'pass123', 'student'),
(368, 4, 'Noah Bowen', 'u084@mail.com', 'pass123', 'student'),
(369, 5, 'Hailey Norris', 'u085@mail.com', 'pass123', 'student'),
(370, 1, 'Cole Hunt', 'u086@mail.com', 'pass123', 'student'),
(371, 2, 'Bella Holt', 'u087@mail.com', 'pass123', 'student'),
(372, 3, 'Grant Lyons', 'u088@mail.com', 'pass123', 'student'),
(373, 4, 'Natalia Wise', 'u089@mail.com', 'pass123', 'student'),
(374, 5, 'Ryder French', 'u090@mail.com', 'pass123', 'student'),
(376, 12, 'admin', 'admin@a.a', 'admin123', 'student'),
(378, 15, 'mas', 'mas@a.a', 'mas', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vote`
--

CREATE TABLE `vote` (
  `vote_id` int(11) NOT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vote_value` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vote`
--

INSERT INTO `vote` (`vote_id`, `answer_id`, `user_id`, `vote_value`, `created_at`) VALUES
(1, 57, 12, 1, '2025-10-27 22:10:06'),
(2, 18, 2, -1, '2025-11-06 22:10:06'),
(3, 46, 3, -1, '2025-10-23 22:10:06'),
(4, 21, 11, 1, '2025-10-14 22:10:06'),
(5, 42, 5, 1, '2025-10-28 22:10:06'),
(6, 8, 16, -1, '2025-10-07 22:10:06'),
(7, 29, 5, 1, '2025-11-12 22:10:06'),
(8, 52, 6, 1, '2025-10-17 22:10:06'),
(9, 50, 5, -1, '2025-10-21 22:10:06'),
(10, 45, 13, 1, '2025-10-26 22:10:06'),
(11, 7, 6, 1, '2025-10-22 22:10:06'),
(12, 32, 10, -1, '2025-10-30 22:10:06'),
(13, 48, 5, 1, '2025-11-10 22:10:06'),
(14, 47, 16, 1, '2025-10-08 22:10:06'),
(15, 5, 11, -1, '2025-10-15 22:10:06'),
(16, 3, 9, 1, '2025-10-27 22:10:06'),
(17, 46, 2, 1, '2025-11-01 22:10:06'),
(18, 10, 16, 1, '2025-10-16 22:10:06'),
(19, 45, 6, 1, '2025-10-10 22:10:06'),
(20, 14, 3, 1, '2025-10-13 22:10:06'),
(21, 20, 12, 1, '2025-11-15 22:10:06'),
(22, 2, 12, 1, '2025-10-21 22:10:06'),
(23, 51, 5, 1, '2025-11-04 22:10:06'),
(24, 58, 10, 1, '2025-10-20 22:10:06'),
(25, 47, 4, 1, '2025-11-07 22:10:06'),
(26, 21, 3, 1, '2025-10-29 22:10:06'),
(27, 50, 2, 1, '2025-11-02 22:10:06'),
(28, 20, 5, 1, '2025-10-07 22:10:06'),
(29, 8, 13, 1, '2025-10-27 22:10:06'),
(30, 9, 4, -1, '2025-10-31 22:10:06'),
(31, 7, 16, -1, '2025-10-23 22:10:06'),
(32, 55, 16, 1, '2025-10-25 22:10:06'),
(33, 58, 16, 1, '2025-11-14 22:10:06'),
(34, 27, 6, -1, '2025-11-10 22:10:06'),
(35, 46, 6, 1, '2025-10-21 22:10:06'),
(36, 10, 2, -1, '2025-11-15 22:10:06'),
(37, 12, 3, 1, '2025-10-29 22:10:06'),
(38, 2, 4, -1, '2025-11-10 22:10:06'),
(39, 30, 6, 1, '2025-10-15 22:10:06'),
(40, 45, 9, 1, '2025-11-03 22:10:06'),
(41, 24, 3, 1, '2025-11-14 22:10:06'),
(42, 8, 10, 1, '2025-10-16 22:10:06'),
(43, 24, 9, 1, '2025-10-09 22:10:06'),
(44, 39, 11, 1, '2025-11-02 22:10:06'),
(45, 16, 3, 1, '2025-10-15 22:10:06'),
(46, 51, 10, 1, '2025-10-16 22:10:06'),
(47, 62, 10, 1, '2025-11-06 22:10:06'),
(48, 12, 10, 1, '2025-10-24 22:10:06'),
(49, 51, 16, 1, '2025-10-09 22:10:06'),
(50, 15, 12, -1, '2025-11-09 22:10:06'),
(51, 61, 16, 1, '2025-10-12 22:10:06'),
(52, 10, 3, -1, '2025-10-17 22:10:06'),
(53, 22, 5, 1, '2025-11-13 22:10:06'),
(54, 59, 11, 1, '2025-10-30 22:10:06'),
(55, 50, 11, 1, '2025-10-23 22:10:06'),
(56, 52, 10, 1, '2025-11-11 22:10:06'),
(57, 18, 3, 1, '2025-11-05 22:10:06'),
(58, 62, 2, 1, '2025-10-30 22:10:06'),
(59, 3, 6, 1, '2025-10-11 22:10:06'),
(60, 13, 5, 1, '2025-10-29 22:10:06'),
(61, 7, 4, 1, '2025-11-05 22:10:06'),
(62, 49, 2, 1, '2025-11-14 22:10:06'),
(63, 42, 16, -1, '2025-11-07 22:10:06'),
(64, 18, 16, 1, '2025-10-13 22:10:06'),
(65, 60, 13, 1, '2025-11-12 22:10:06'),
(66, 62, 6, 1, '2025-10-22 22:10:06'),
(67, 33, 11, 1, '2025-10-11 22:10:06'),
(68, 2, 2, 1, '2025-10-10 22:10:06'),
(69, 39, 16, 1, '2025-10-19 22:10:06'),
(70, 23, 12, 1, '2025-11-01 22:10:06'),
(71, 58, 11, 1, '2025-10-16 22:10:06'),
(72, 40, 16, -1, '2025-11-04 22:10:06'),
(73, 27, 13, 1, '2025-10-31 22:10:06'),
(74, 36, 12, 1, '2025-10-13 22:10:06'),
(75, 31, 10, 1, '2025-10-24 22:10:06'),
(76, 57, 5, 1, '2025-10-15 22:10:06'),
(77, 19, 12, 1, '2025-11-08 22:10:06'),
(78, 15, 5, -1, '2025-11-09 22:10:06'),
(79, 2, 9, 1, '2025-10-27 22:10:06'),
(80, 16, 6, 1, '2025-10-16 22:10:06'),
(81, 6, 4, 1, '2025-11-11 22:10:06'),
(82, 6, 12, -1, '2025-10-31 22:10:06'),
(83, 6, 2, 1, '2025-10-17 22:10:06'),
(84, 40, 2, 1, '2025-10-28 22:10:06'),
(85, 7, 10, 1, '2025-10-30 22:10:06'),
(86, 40, 9, 1, '2025-10-18 22:10:06'),
(87, 29, 16, 1, '2025-11-05 22:10:06'),
(88, 66, 4, 1, '2025-10-19 22:10:06'),
(89, 66, 16, 1, '2025-10-20 22:10:06'),
(90, 6, 9, 1, '2025-10-09 22:10:06'),
(91, 18, 4, 1, '2025-11-05 22:10:06'),
(92, 55, 2, 1, '2025-11-05 22:10:06'),
(93, 16, 16, 1, '2025-10-17 22:10:06'),
(94, 46, 16, -1, '2025-10-22 22:10:06'),
(95, 48, 10, -1, '2025-11-12 22:10:06'),
(96, 44, 13, 1, '2025-10-21 22:10:06'),
(97, 52, 3, 1, '2025-10-22 22:10:06'),
(98, 24, 2, 1, '2025-11-09 22:10:06'),
(99, 49, 16, 1, '2025-10-24 22:10:06'),
(100, 42, 11, 1, '2025-11-11 22:10:06'),
(101, 38, 5, 1, '2025-11-08 22:10:06'),
(102, 64, 4, 1, '2025-11-07 22:10:06'),
(103, 51, 2, 1, '2025-10-23 22:10:06'),
(104, 7, 9, 1, '2025-10-24 22:10:06'),
(105, 3, 11, -1, '2025-10-19 22:10:06'),
(106, 52, 16, 1, '2025-10-18 22:10:06'),
(107, 22, 12, 1, '2025-10-29 22:10:06'),
(108, 50, 9, 1, '2025-11-12 22:10:06'),
(109, 64, 10, 1, '2025-10-09 22:10:06'),
(110, 15, 16, 1, '2025-10-07 22:10:06'),
(111, 42, 3, 1, '2025-11-10 22:10:06'),
(112, 57, 11, 1, '2025-10-26 22:10:06'),
(113, 2, 11, -1, '2025-10-30 22:10:06'),
(114, 1, 5, 1, '2025-10-17 22:10:06'),
(115, 61, 12, 1, '2025-10-15 22:10:06'),
(116, 14, 6, 1, '2025-10-09 22:10:06'),
(117, 34, 10, 1, '2025-10-25 22:10:06'),
(118, 20, 11, 1, '2025-11-12 22:10:06'),
(119, 35, 9, 1, '2025-10-12 22:10:06'),
(120, 33, 12, 1, '2025-10-09 22:10:06'),
(121, 1, 6, -1, '2025-11-15 22:10:06'),
(122, 16, 12, -1, '2025-10-11 22:10:06'),
(123, 17, 12, 1, '2025-10-07 22:10:06'),
(124, 55, 13, 1, '2025-10-25 22:10:06'),
(125, 27, 2, 1, '2025-11-13 22:10:06'),
(126, 53, 6, -1, '2025-10-20 22:10:06'),
(127, 39, 4, -1, '2025-10-13 22:10:06'),
(128, 25, 12, 1, '2025-11-06 22:10:06'),
(129, 26, 13, 1, '2025-10-30 22:10:06'),
(130, 32, 5, -1, '2025-11-04 22:10:06'),
(131, 12, 13, 1, '2025-10-09 22:10:06'),
(132, 35, 11, 1, '2025-10-07 22:10:06'),
(133, 63, 11, -1, '2025-10-28 22:10:06'),
(134, 22, 10, 1, '2025-10-26 22:10:06'),
(135, 64, 16, 1, '2025-11-02 22:10:06'),
(136, 28, 10, 1, '2025-11-12 22:10:06'),
(137, 17, 6, -1, '2025-10-12 22:10:06'),
(138, 43, 13, -1, '2025-10-25 22:10:06'),
(139, 12, 11, 1, '2025-10-13 22:10:06'),
(140, 30, 12, 1, '2025-11-03 22:10:06'),
(141, 49, 4, 1, '2025-10-11 22:10:06'),
(142, 27, 10, 1, '2025-11-05 22:10:06'),
(143, 21, 16, 1, '2025-11-10 22:10:06'),
(144, 60, 11, -1, '2025-10-08 22:10:06'),
(145, 31, 12, 1, '2025-10-23 22:10:06'),
(146, 52, 11, 1, '2025-11-01 22:10:06'),
(147, 30, 2, 1, '2025-10-13 22:10:06'),
(148, 6, 5, 1, '2025-10-11 22:10:06'),
(149, 29, 3, 1, '2025-11-02 22:10:06'),
(150, 11, 2, 1, '2025-10-19 22:10:06'),
(151, 15, 2, 1, '2025-11-12 22:10:06'),
(152, 23, 16, 1, '2025-11-15 22:10:06'),
(153, 9, 9, -1, '2025-10-12 22:10:06'),
(154, 43, 5, 1, '2025-10-23 22:10:06'),
(155, 20, 4, 1, '2025-10-15 22:10:06'),
(156, 24, 10, 1, '2025-11-01 22:10:06'),
(157, 26, 11, -1, '2025-10-11 22:10:06'),
(158, 46, 11, 1, '2025-10-16 22:10:06'),
(159, 50, 13, 1, '2025-11-14 22:10:06'),
(160, 21, 9, 1, '2025-10-14 22:10:06'),
(161, 34, 6, 1, '2025-11-06 22:10:06'),
(162, 48, 6, 1, '2025-10-19 22:10:06'),
(163, 59, 2, 1, '2025-10-27 22:10:06'),
(164, 56, 4, 1, '2025-10-30 22:10:06'),
(165, 37, 5, 1, '2025-10-29 22:10:06'),
(166, 19, 6, 1, '2025-10-22 22:10:06'),
(167, 6, 6, 1, '2025-10-21 22:10:06'),
(168, 64, 5, -1, '2025-11-04 22:10:06'),
(169, 65, 6, 1, '2025-11-12 22:10:06'),
(170, 65, 5, -1, '2025-11-10 22:10:06'),
(171, 5, 13, 1, '2025-10-17 22:10:06'),
(172, 65, 16, 1, '2025-10-30 22:10:06'),
(173, 4, 9, 1, '2025-11-06 22:10:06'),
(174, 48, 4, 1, '2025-10-22 22:10:06'),
(175, 21, 6, 1, '2025-10-28 22:10:06'),
(176, 49, 6, 1, '2025-11-04 22:10:06'),
(177, 14, 16, 1, '2025-10-27 22:10:06'),
(178, 63, 10, 1, '2025-11-15 22:10:06'),
(179, 1, 2, -1, '2025-10-12 22:10:06'),
(180, 59, 9, 1, '2025-10-23 22:10:06'),
(181, 6, 16, 1, '2025-11-14 22:10:06'),
(182, 1, 9, 1, '2025-11-07 22:10:06'),
(183, 57, 4, 1, '2025-10-25 22:10:06'),
(184, 4, 16, 1, '2025-10-10 22:10:06'),
(185, 52, 5, 1, '2025-11-10 22:10:06'),
(186, 38, 4, 1, '2025-10-28 22:10:06'),
(187, 3, 3, -1, '2025-11-03 22:10:06'),
(188, 36, 13, 1, '2025-11-04 22:10:06'),
(189, 37, 9, 1, '2025-10-10 22:10:06'),
(190, 55, 6, 1, '2025-10-14 22:10:06'),
(191, 53, 16, -1, '2025-10-21 22:10:06'),
(192, 5, 9, 1, '2025-10-31 22:10:06'),
(193, 13, 4, -1, '2025-10-19 22:10:06'),
(194, 20, 10, 1, '2025-10-22 22:10:06'),
(195, 27, 4, 1, '2025-10-20 22:10:06'),
(196, 40, 12, 1, '2025-10-19 22:10:06'),
(197, 34, 5, 1, '2025-11-15 22:10:06'),
(198, 22, 6, 1, '2025-10-24 22:10:06'),
(199, 41, 5, 1, '2025-11-15 22:10:06'),
(200, 45, 10, 1, '2025-10-23 22:10:06'),
(201, 54, 2, 1, '2025-10-18 22:10:06'),
(202, 47, 13, 1, '2025-10-21 22:10:06'),
(203, 61, 9, 1, '2025-10-07 22:10:06'),
(204, 53, 10, 1, '2025-11-11 22:10:06'),
(205, 56, 6, 1, '2025-10-24 22:10:06'),
(206, 5, 12, 1, '2025-10-14 22:10:06'),
(207, 14, 9, -1, '2025-10-07 22:10:06'),
(208, 52, 9, 1, '2025-10-31 22:10:06'),
(209, 31, 9, 1, '2025-10-24 22:10:06'),
(210, 31, 6, 1, '2025-10-29 22:10:06'),
(211, 11, 4, 1, '2025-11-10 22:10:06'),
(212, 11, 6, 1, '2025-10-17 22:10:06'),
(213, 27, 12, 1, '2025-10-31 22:10:06'),
(214, 1, 13, 1, '2025-10-26 22:10:06'),
(215, 46, 12, 1, '2025-10-09 22:10:06'),
(216, 62, 13, 1, '2025-10-25 22:10:06'),
(217, 39, 3, -1, '2025-11-15 22:10:06'),
(218, 47, 9, -1, '2025-10-28 22:10:06'),
(219, 24, 4, 1, '2025-10-19 22:10:06'),
(220, 57, 2, 1, '2025-10-17 22:10:06'),
(221, 3, 16, 1, '2025-10-15 22:10:06'),
(222, 3, 4, 1, '2025-11-10 22:10:06'),
(223, 7, 5, 1, '2025-10-10 22:10:06'),
(224, 60, 9, -1, '2025-11-01 22:10:06'),
(225, 57, 10, 1, '2025-10-10 22:10:06'),
(226, 23, 3, 1, '2025-11-13 22:10:06'),
(227, 13, 2, 1, '2025-10-31 22:10:06'),
(228, 39, 2, 1, '2025-11-06 22:10:06'),
(229, 37, 11, -1, '2025-10-18 22:10:06'),
(230, 22, 16, 1, '2025-10-25 22:10:06'),
(231, 55, 9, 1, '2025-11-10 22:10:06'),
(232, 24, 5, 1, '2025-11-04 22:10:06'),
(233, 16, 11, 1, '2025-10-21 22:10:06'),
(234, 32, 16, 1, '2025-10-30 22:10:06'),
(235, 61, 5, -1, '2025-10-23 22:10:06'),
(236, 22, 4, 1, '2025-10-22 22:10:06'),
(237, 8, 6, -1, '2025-10-24 22:10:06'),
(238, 17, 11, -1, '2025-10-10 22:10:06'),
(239, 36, 9, -1, '2025-10-19 22:10:06'),
(240, 65, 3, 1, '2025-11-10 22:10:06'),
(241, 37, 12, 1, '2025-11-06 22:10:06'),
(242, 55, 12, 1, '2025-11-14 22:10:06'),
(243, 28, 11, 1, '2025-10-08 22:10:06'),
(244, 31, 4, 1, '2025-10-23 22:10:06'),
(245, 9, 13, 1, '2025-11-08 22:10:06'),
(246, 46, 5, 1, '2025-11-03 22:10:06'),
(247, 44, 6, 1, '2025-11-12 22:10:06'),
(248, 23, 5, -1, '2025-11-10 22:10:06'),
(249, 51, 12, 1, '2025-11-13 22:10:06'),
(250, 25, 4, 1, '2025-10-08 22:10:06'),
(251, 43, 16, -1, '2025-11-07 22:10:06'),
(252, 40, 11, 1, '2025-11-07 22:10:06'),
(253, 57, 16, 1, '2025-10-07 22:10:06'),
(254, 33, 3, 1, '2025-10-08 22:10:06'),
(255, 20, 2, -1, '2025-10-31 22:10:06'),
(256, 34, 2, -1, '2025-10-22 22:10:06'),
(257, 43, 9, 1, '2025-10-22 22:10:06'),
(258, 50, 12, 1, '2025-11-14 22:10:06'),
(259, 23, 2, -1, '2025-11-04 22:10:06'),
(260, 42, 9, 1, '2025-10-29 22:10:06'),
(261, 10, 6, 1, '2025-11-12 22:10:06'),
(262, 53, 12, 1, '2025-10-16 22:10:06'),
(263, 7, 2, 1, '2025-10-30 22:10:06'),
(264, 55, 5, 1, '2025-10-09 22:10:06'),
(265, 36, 10, 1, '2025-11-12 22:10:06'),
(266, 6, 10, -1, '2025-10-09 22:10:06'),
(267, 45, 12, 1, '2025-10-26 22:10:06'),
(268, 52, 13, -1, '2025-10-09 22:10:06'),
(269, 53, 5, 1, '2025-10-25 22:10:06'),
(270, 60, 5, -1, '2025-10-15 22:10:06'),
(271, 19, 3, 1, '2025-11-03 22:10:06'),
(272, 42, 12, 1, '2025-11-08 22:10:06'),
(273, 35, 12, 1, '2025-11-10 22:10:06'),
(274, 44, 2, -1, '2025-10-18 22:10:06'),
(275, 56, 9, -1, '2025-11-14 22:10:06'),
(276, 28, 6, 1, '2025-11-09 22:10:06'),
(277, 63, 16, 1, '2025-11-09 22:10:06'),
(278, 49, 5, 1, '2025-11-05 22:10:06'),
(279, 60, 10, 1, '2025-10-29 22:10:06'),
(280, 16, 9, -1, '2025-11-01 22:10:06'),
(281, 26, 5, -1, '2025-10-24 22:10:06'),
(282, 17, 16, 1, '2025-11-05 22:10:06'),
(283, 60, 4, 1, '2025-11-05 22:10:06'),
(284, 54, 10, 1, '2025-10-08 22:10:06'),
(285, 54, 3, 1, '2025-10-29 22:10:06'),
(286, 66, 10, 1, '2025-11-13 22:10:06'),
(287, 51, 6, 1, '2025-10-13 22:10:06'),
(288, 4, 11, 1, '2025-10-14 22:10:06'),
(289, 58, 3, -1, '2025-10-18 22:10:06'),
(290, 15, 6, 1, '2025-10-23 22:10:06'),
(291, 22, 2, -1, '2025-11-08 22:10:06'),
(292, 18, 11, 1, '2025-10-19 22:10:06'),
(293, 4, 3, 1, '2025-11-08 22:10:06'),
(294, 33, 5, -1, '2025-10-18 22:10:06'),
(295, 54, 9, 1, '2025-11-10 22:10:06'),
(296, 18, 6, 1, '2025-10-16 22:10:06'),
(297, 48, 3, 1, '2025-10-11 22:10:06'),
(298, 9, 16, 1, '2025-11-11 22:10:06'),
(299, 19, 11, 1, '2025-11-10 22:10:06'),
(300, 38, 10, 1, '2025-10-31 22:10:06'),
(301, 65, 18, 1, '2025-11-22 19:02:13'),
(302, 27, 18, 1, '2025-11-22 19:02:17'),
(303, 89, 376, 1, '2025-11-22 19:43:04'),
(304, 15, 376, 1, '2025-11-22 19:43:08'),
(305, 13, 376, 1, '2025-11-22 19:43:17'),
(306, 90, 376, 1, '2025-11-22 19:54:59'),
(307, 90, 308, 1, '2025-11-22 20:59:18'),
(308, 91, 308, 1, '2025-11-22 21:07:36'),
(309, 35, 376, 1, '2025-11-22 21:56:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`answer_id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `answer_id` (`answer_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`question_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `question_tag`
--
ALTER TABLE `question_tag`
  ADD PRIMARY KEY (`qt_id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`school_id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `vote`
--
ALTER TABLE `vote`
  ADD PRIMARY KEY (`vote_id`),
  ADD UNIQUE KEY `answer_id` (`answer_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `question_tag`
--
ALTER TABLE `question_tag`
  MODIFY `qt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `school_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;

--
-- AUTO_INCREMENT for table `vote`
--
ALTER TABLE `vote`
  MODIFY `vote_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`question_id`),
  ADD CONSTRAINT `answer_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `question` (`question_id`),
  ADD CONSTRAINT `comment_ibfk_3` FOREIGN KEY (`answer_id`) REFERENCES `answer` (`answer_id`);

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `question_tag`
--
ALTER TABLE `question_tag`
  ADD CONSTRAINT `question_tag_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`question_id`),
  ADD CONSTRAINT `question_tag_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `school` (`school_id`);

--
-- Constraints for table `vote`
--
ALTER TABLE `vote`
  ADD CONSTRAINT `vote_ibfk_1` FOREIGN KEY (`answer_id`) REFERENCES `answer` (`answer_id`),
  ADD CONSTRAINT `vote_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
