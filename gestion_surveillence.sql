-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 01, 2025 at 10:39 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gestion_surveillence`
--

-- --------------------------------------------------------

--
-- Table structure for table `departement`
--

CREATE TABLE `departement` (
  `id` bigint(20) NOT NULL,
  `departement_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departement`
--

INSERT INTO `departement` (`id`, `departement_name`) VALUES
(1, 'Department 1'),
(2, 'Department 2'),
(3, 'Department 3'),
(4, 'Department 4'),
(5, 'Department 5'),
(7, 'Department A'),
(9, 'Department B'),
(10, 'Department C'),
(11, 'Department D'),
(12, 'Department E'),
(13, 'Department F'),
(14, 'Mathematics'),
(15, 'MathApp'),
(16, 'Sciences'),
(17, 'Physics'),
(18, 'Art'),
(19, 'Chemistry'),
(20, 'Medecine'),
(21, 'Biology'),
(22, 'IT Science'),
(23, 'Computer Science'),
(24, 'History'),
(25, 'Literature'),
(26, 'Engineering'),
(27, 'BioChim'),
(28, 'Astronomy'),
(29, 'Philosophy'),
(30, 'TRI'),
(31, 'Informatique'),
(32, 'Applied sciences'),
(33, 'Physique'),
(34, 'STIN'),
(40, 'Mathematiques');

-- --------------------------------------------------------

--
-- Table structure for table `enseignant`
--

CREATE TABLE `enseignant` (
  `id` bigint(20) NOT NULL,
  `dispense` bit(1) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `departement_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enseignant`
--

INSERT INTO `enseignant` (`id`, `dispense`, `email`, `name`, `departement_id`) VALUES
(1, b'0', 'jason04@example.net', 'Wesley Sharp', 5),
(2, b'1', 'david26@example.org', 'Mark Herrera', 1),
(3, b'1', 'mmcgee@example.org', 'Clinton Gardner', 3),
(4, b'0', 'jamesromero@example.org', 'Michael Garcia', 1),
(5, b'1', 'hugheszachary@example.net', 'Kenneth Davis', 1),
(6, b'1', 'munozkatherine@example.com', 'Christopher Graves', 2),
(7, b'0', 'jesus28@example.org', 'Pamela Williams', 3),
(8, b'1', 'stevenrobles@example.net', 'Michael Maxwell', 3),
(9, b'1', 'reginald43@example.org', 'Paula Richards', 2),
(10, b'0', 'alexander32@example.net', 'Justin Compton', 4),
(11, b'0', 'henryheather@example.com', 'Kendra Klein', 1),
(12, b'0', 'patrick98@example.com', 'Jenny Ford', 1),
(13, b'1', 'jessicawaters@example.org', 'Timothy Baldwin', 1),
(14, b'1', 'xthomas@example.org', 'Jeffrey Lambert', 3),
(15, b'0', 'danielmiguel@example.org', 'Joseph Conner', 2),
(16, b'0', 'jwood@example.com', 'Carla Burton', 1),
(17, b'1', 'terrellmichael@example.com', 'Mr. John Keith', 2),
(18, b'1', 'riggssteven@example.net', 'Mrs. Nicole Chase', 2),
(19, b'1', 'heatherball@example.com', 'Brandon Gonzalez', 5),
(20, b'1', 'anthony63@example.net', 'Michelle Aguirre', 2),
(21, b'1', 'jennifer05@example.org', 'Michelle Hensley', 1),
(22, b'0', 'justin74@example.net', 'Dawn Salazar', 5),
(23, b'1', 'andresfleming@example.org', 'Nancy Marsh', 3),
(24, b'0', 'wwood@example.com', 'Haley Kelly', 4),
(25, b'1', 'imcneil@example.net', 'Jessica Greene', 2),
(26, b'0', 'kimmatthew@example.com', 'Clarence Wade', 3),
(27, b'0', 'bradfordlinda@example.org', 'John Evans', 3),
(28, b'0', 'angelacolon@example.com', 'Michael Carlson', 5),
(29, b'0', 'amandadavis@example.org', 'Yolanda Spencer', 5),
(30, b'1', 'yking@example.com', 'David Gibson', 5),
(31, b'1', 'richardgarcia@example.com', 'Daniel Page', 1),
(32, b'0', 'christinamartinez@example.com', 'Jared Peters', 2),
(33, b'0', 'xjones@example.net', 'Mark Rhodes', 5),
(34, b'1', 'middletonlori@example.net', 'Kyle Cooper', 4),
(35, b'0', 'mendozasandra@example.net', 'Carol Townsend', 4),
(36, b'1', 'donnapeterson@example.org', 'Brenda Molina', 5),
(37, b'0', 'valdezjenny@example.net', 'Walter White', 1),
(38, b'1', 'otorres@example.com', 'Carrie Willis', 3),
(39, b'1', 'fshepherd@example.org', 'Matthew Mann', 4),
(40, b'0', 'curtiskristina@example.org', 'Deanna Conner', 1),
(41, b'0', 'terryhenderson@example.org', 'Christopher Stout', 1),
(42, b'1', 'carlos35@example.org', 'James Wheeler', 1),
(43, b'1', 'tstewart@example.com', 'Andre Stewart', 4),
(44, b'1', 'vho@example.org', 'James Shea', 3),
(45, b'1', 'cookbeverly@example.net', 'Laurie Harmon', 5),
(46, b'0', 'aaron67@example.net', 'Janet Allen', 3),
(47, b'0', 'kmata@example.com', 'Sarah Miller', 5),
(48, b'0', 'seanmiller@example.org', 'John Ortega', 1),
(49, b'0', 'ronald13@example.com', 'Sarah Williams', 2),
(50, b'1', 'ohardin@example.net', 'Louis Doyle', 3),
(51, b'1', 'arielbishop@example.net', 'Ryan Hicks', 1),
(52, b'0', 'martinezbailey@example.com', 'Tamara Williams', 5),
(53, b'0', 'sarah28@example.org', 'Leah Greene', 2),
(54, b'1', 'elizabeth32@example.net', 'Kathleen Lam', 3),
(55, b'1', 'qstafford@example.org', 'Andrew Cruz', 1),
(56, b'0', 'alyssa92@example.com', 'Anthony Shields', 4),
(57, b'1', 'debra45@example.com', 'Andrea Acosta', 3),
(58, b'0', 'hoffmanbrenda@example.net', 'Sean Nguyen', 1),
(59, b'1', 'ryan40@example.org', 'Julia Mckee', 1),
(60, b'0', 'williamcarney@example.net', 'Mr. Ryan Hickman DVM', 2),
(61, b'1', 'thomasjasmine@example.org', 'Brian Brown', 1),
(62, b'1', 'jonathanhardin@example.org', 'Jordan Nguyen', 4),
(63, b'1', 'vwhite@example.net', 'Dr. Erica Williams DDS', 3),
(64, b'0', 'hwalker@example.org', 'Jackson Clay', 5),
(65, b'1', 'monica36@example.net', 'Jeremiah Weaver', 2),
(66, b'1', 'gjohnson@example.org', 'James Taylor', 1),
(67, b'1', 'kara02@example.com', 'Matthew Gallegos', 1),
(68, b'0', 'bennettjoseph@example.com', 'William Moody', 3),
(69, b'1', 'davismelissa@example.net', 'Jill Downs', 3),
(70, b'1', 'kylemendez@example.com', 'Mr. Michael Sanchez', 1),
(71, b'1', 'sheilataylor@example.com', 'David Lowery', 3),
(72, b'1', 'browncharles@example.org', 'Logan Miles', 2),
(73, b'0', 'amandabooth@example.org', 'Christopher May', 1),
(74, b'1', 'samanthacampbell@example.com', 'Rachel Stevens', 2),
(75, b'0', 'bassrachel@example.com', 'Paula Saunders', 2),
(76, b'1', 'scott20@example.org', 'David Rose', 3),
(77, b'0', 'craneeric@example.com', 'David Robinson', 3),
(78, b'1', 'hhernandez@example.com', 'Amy Norman', 3),
(79, b'0', 'qmills@example.org', 'Lauren Thomas', 4),
(80, b'1', 'dennis03@example.com', 'Alicia Flores', 1),
(81, b'1', 'thompsonmichael@example.net', 'Stefanie Dennis', 3),
(82, b'0', 'juanhunt@example.org', 'Catherine Silva', 3),
(83, b'1', 'stevenowens@example.org', 'Joy Dominguez', 2),
(84, b'1', 'mitchellkathryn@example.net', 'Tracy Davis', 5),
(85, b'0', 'troyrodriguez@example.com', 'Alexander Romero', 3),
(86, b'1', 'carlyhernandez@example.net', 'Nicole Marshall', 5),
(87, b'0', 'caitlinmora@example.org', 'Adam Reynolds', 1),
(88, b'1', 'williamsonlori@example.com', 'Beth Whitney', 1),
(89, b'0', 'martinezjessica@example.net', 'Mark Gomez', 4),
(90, b'1', 'fhudson@example.net', 'Matthew Mcclain', 2),
(91, b'1', 'henry20@example.net', 'Roger Green', 5),
(92, b'0', 'zconley@example.com', 'Ruth Hansen', 3),
(93, b'0', 'kcarter@example.net', 'Amy Lopez', 1),
(94, b'0', 'alan71@example.com', 'Dawn Henry MD', 2),
(95, b'1', 'mcknightjared@example.org', 'Samuel Lam', 2),
(96, b'0', 'drobinson@example.org', 'Elizabeth Zavala', 4),
(97, b'0', 'sandra79@example.com', 'Mrs. Jennifer Schmidt', 1),
(98, b'1', 'cruzrodney@example.net', 'Mikayla Cole', 3),
(99, b'0', 'rebeccadavis@example.net', 'Monica Roberts', 4),
(100, b'0', 'katelyn21@example.com', 'Brian Daugherty', 5),
(101, b'1', 'codyconner@example.net', 'Christopher Rodriguez', 1),
(102, b'0', 'angelica46@example.com', 'Laura Larsen', 3),
(103, b'1', 'floresjustin@example.net', 'Joseph Lowery', 3),
(104, b'1', 'cynthiaturner@example.com', 'Pamela Orozco', 1),
(105, b'0', 'kristina54@example.org', 'Gina Kelly', 4),
(106, b'1', 'meltonrita@example.org', 'Jordan Stewart', 4),
(107, b'0', 'amy06@example.com', 'Michael Flowers', 5),
(108, b'1', 'uspencer@example.org', 'Michael Anthony', 3),
(109, b'1', 'ktaylor@example.org', 'Christopher Rich', 3),
(110, b'0', 'cathybaker@example.net', 'Allison Dyer', 4),
(111, b'0', 'smithmiguel@example.net', 'Melanie Hines', 5),
(112, b'0', 'michael28@example.com', 'Kara Gonzalez', 4),
(113, b'0', 'amyreid@example.com', 'Mark Thompson', 2),
(114, b'1', 'nicolemcdonald@example.org', 'Ralph Wilson', 5),
(115, b'0', 'david04@example.com', 'Lonnie Black', 1),
(116, b'1', 'connie18@example.net', 'Thomas Moreno', 2),
(117, b'1', 'cthomas@example.org', 'Kevin Campbell', 5),
(118, b'0', 'robertsonalejandro@example.com', 'Amy Matthews', 2),
(119, b'1', 'milesmonica@example.com', 'Adam Smith', 5),
(120, b'0', 'otran@example.com', 'Elaine Freeman', 2),
(121, b'1', 'brittany02@example.com', 'Alyssa Wolfe', 4),
(122, b'1', 'youngvictoria@example.net', 'Caroline Patterson MD', 5),
(123, b'1', 'jessehansen@example.com', 'Lori Torres', 3),
(124, b'0', 'ycolon@example.com', 'Hannah Maxwell', 2),
(125, b'1', 'jessica20@example.com', 'Allen Glenn', 1),
(126, b'1', 'stevebautista@example.com', 'Rachel Gonzalez', 3),
(127, b'1', 'twilliams@example.net', 'Michael Roberson', 5),
(128, b'0', 'jordanchen@example.net', 'Anthony Lopez', 3),
(129, b'0', 'carol48@example.net', 'Michelle Norton', 1),
(130, b'0', 'nsolis@example.net', 'Peggy Bailey', 4),
(131, b'1', 'michele05@example.org', 'Dean Medina', 3),
(132, b'0', 'mary06@example.org', 'Jason Valdez', 4),
(133, b'1', 'alishajones@example.org', 'Autumn Garcia', 3),
(134, b'1', 'smithleslie@example.com', 'Crystal Rodriguez', 4),
(135, b'1', 'eric93@example.net', 'Bradley Berg', 3),
(136, b'1', 'laurencummings@example.net', 'Megan Dixon', 5),
(137, b'1', 'contrerasjohnny@example.net', 'Aaron Davis', 5),
(138, b'0', 'joseph36@example.net', 'Laura Hobbs', 5),
(139, b'0', 'jameswilliams@example.net', 'Bethany Hernandez', 2),
(140, b'1', 'ycochran@example.org', 'Barry Miller', 5),
(141, b'0', 'fharris@example.com', 'Ashley James', 4),
(142, b'1', 'joshuamartinez@example.net', 'Jacob Hall', 1),
(143, b'1', 'rporter@example.org', 'April Rios', 3),
(144, b'0', 'maxwellelizabeth@example.org', 'Kaitlin Jones', 5),
(145, b'1', 'collierrhonda@example.net', 'Jessica Andrews', 2),
(146, b'0', 'stevejohnson@example.net', 'John Rush', 2),
(147, b'1', 'teresaguerrero@example.org', 'Dennis Moss', 4),
(148, b'0', 'kathryn21@example.org', 'Sheila Mendez', 4),
(149, b'0', 'mmann@example.org', 'Carol Ward', 2),
(150, b'0', 'uwhite@example.org', 'Rodney Riley', 4),
(151, b'0', 'waltermitchell@example.org', 'Terry Kaufman', 4),
(152, b'0', 'melanie14@example.net', 'Raven Hill', 5),
(153, b'1', 'brianbrown@example.com', 'Brian Scott', 5),
(154, b'1', 'aflores@example.com', 'Heather Rogers', 4),
(155, b'0', 'shelleyware@example.net', 'Tracy Moss', 2),
(156, b'1', 'ofinley@example.org', 'Deborah Hanson', 1),
(157, b'0', 'bridgetfowler@example.com', 'Angela Molina', 3),
(158, b'1', 'qhenderson@example.org', 'Tammy Lee', 3),
(159, b'0', 'jenniferyoung@example.net', 'David Manning', 2),
(160, b'1', 'bryantsteven@example.org', 'Steven Lawrence', 4),
(161, b'0', 'edwardsvalerie@example.com', 'William Brown', 3),
(162, b'0', 'adambradshaw@example.org', 'Dawn Parker', 2),
(163, b'0', 'gracescott@example.org', 'Leslie Ramirez', 5),
(164, b'0', 'kathleenrobinson@example.com', 'Geoffrey Davis', 1),
(165, b'0', 'phillipalexander@example.com', 'James Brown', 1),
(166, b'0', 'christina49@example.net', 'Robert Conner', 3),
(167, b'1', 'griffinbenjamin@example.net', 'Debbie Ibarra', 1),
(168, b'0', 'annette42@example.com', 'Keith Potter', 2),
(169, b'0', 'emclaughlin@example.org', 'Denise Maxwell', 4),
(170, b'1', 'jonathan64@example.net', 'Lisa Williams', 2),
(171, b'0', 'lori84@example.com', 'Mary Johnson', 1),
(172, b'0', 'iandrews@example.com', 'Larry Cowan', 1),
(173, b'0', 'vpearson@example.org', 'Joseph Hale', 4),
(174, b'0', 'dcuevas@example.com', 'Patrick Leonard', 1),
(175, b'1', 'andersonjoseph@example.com', 'Christina Rodriguez', 1),
(176, b'0', 'michelle95@example.net', 'Brian Gibson', 5),
(177, b'1', 'thenderson@example.net', 'Cesar Day', 1),
(178, b'1', 'kcruz@example.com', 'Susan Wilson', 5),
(179, b'1', 'rachelhooper@example.com', 'Sarah Hernandez', 1),
(180, b'0', 'butlernicole@example.org', 'Joseph Leach', 3),
(181, b'1', 'bethmorrow@example.com', 'Dr. Michael Yoder', 3),
(182, b'0', 'ehickman@example.org', 'Jennifer Reynolds', 2),
(183, b'1', 'uwhite@example.org', 'Kevin Tran', 3),
(184, b'0', 'maxmarsh@example.com', 'Laura Thomas', 5),
(185, b'0', 'kendramartin@example.net', 'Kelly Arnold', 1),
(186, b'1', 'juliajohnson@example.net', 'Seth Webb', 5),
(187, b'0', 'fflores@example.org', 'Cody Davidson', 3),
(188, b'0', 'sbradshaw@example.net', 'Susan Wright', 4),
(189, b'0', 'fcompton@example.org', 'Leon Huffman', 1),
(190, b'1', 'ehuerta@example.com', 'Jennifer Mueller', 5),
(191, b'1', 'adamhess@example.org', 'Ashley Brown', 3),
(192, b'0', 'aguilarkaitlin@example.net', 'Melissa White', 3),
(193, b'1', 'donna21@example.net', 'Travis Johnson', 3),
(194, b'1', 'kmurray@example.org', 'Daniel Kelly', 2),
(195, b'0', 'iroy@example.org', 'Debbie Murphy', 1),
(196, b'1', 'woodmark@example.net', 'David Rodriguez', 2),
(197, b'0', 'vincentdebbie@example.com', 'Dr. Angelica Warren', 4),
(198, b'0', 'ytaylor@example.org', 'Stephanie Ellis', 2),
(199, b'1', 'robertpierce@example.com', 'Elizabeth Gallagher', 3),
(200, b'1', 'fisherkevin@example.com', 'Miss Janice Ruiz', 2),
(201, b'0', 'george.washington@university.edu', 'George Washington', 24),
(202, b'1', 'abraham.lincoln@university.edu', 'Abraham Lincoln', 24),
(203, b'0', 'william.shakespeare@university.edu', 'William Shakespeare', 25),
(204, b'0', 'jane.austen@university.edu', 'Jane Austen', 25),
(205, b'1', 'elon.musk@university.edu', 'Elon Musk', 26),
(206, b'0', 'nikola.tesla@university.edu', 'Nikola Tesla', 26),
(207, b'0', 'florence.nightingale@university.edu', 'Florence Nightingale', 27),
(208, b'0', 'hippocrates@university.edu', 'Hippocrates', 27),
(209, b'0', 'galileo.galilei@university.edu', 'Galileo Galilei', 28),
(210, b'0', 'carl.sagan@university.edu', 'Carl Sagan', 28),
(211, b'1', 'socrates@university.edu', 'Socrates', 29),
(212, b'0', 'immanuel.kant@university.edu', 'Immanuel Kant', 29),
(213, b'0', 'george.washington@university.edu', 'George Washington', 24),
(214, b'1', 'abraham.lincoln@university.edu', 'Abraham Lincoln', 24),
(215, b'0', 'william.shakespeare@university.edu', 'William Shakespeare', 25),
(216, b'0', 'jane.austen@university.edu', 'Jane Austen', 25),
(217, b'1', 'elon.musk@university.edu', 'Elon Musk', 26),
(218, b'0', 'nikola.tesla@university.edu', 'Nikola Tesla', 26),
(219, b'0', 'florence.nightingale@university.edu', 'Florence Nightingale', 27),
(220, b'0', 'hippocrates@university.edu', 'Hippocrates', 27),
(221, b'0', 'galileo.galilei@university.edu', 'Galileo Galilei', 28),
(222, b'0', 'carl.sagan@university.edu', 'Carl Sagan', 28),
(223, b'1', 'socrates@university.edu', 'Socrates', 29),
(224, b'0', 'immanuel.kant@university.edu', 'Immanuel Kant', 29);

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `id` bigint(20) NOT NULL,
  `date` date DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `departement_id` bigint(20) NOT NULL,
  `enseignant_id` bigint(20) NOT NULL,
  `module_id` bigint(20) NOT NULL,
  `option_id` bigint(20) NOT NULL,
  `session_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`id`, `date`, `end_time`, `start_time`, `departement_id`, `enseignant_id`, `module_id`, `option_id`, `session_id`) VALUES
(1, '2024-12-21', '15:30:00', '13:30:00', 5, 63, 7, 1, 1),
(5, '2024-12-23', '17:30:00', '15:45:00', 1, 153, 74, 9, 1),
(6, '2024-12-21', '10:20:00', '08:00:00', 1, 2, 1, 1, 1),
(7, '2024-12-21', '10:20:00', '08:00:00', 1, 4, 12, 2, 1),
(8, '2024-12-20', '10:20:00', '08:00:00', 1, 5, 2, 1, 1),
(9, '2024-12-20', '12:30:00', '10:30:00', 1, 2, 1, 1, 1),
(17, '2024-12-20', '12:30:00', '10:30:00', 1, 185, 26, 3, 1),
(22, '2024-12-20', '15:30:00', '13:30:00', 2, 17, 45, 5, 1),
(23, '2024-12-20', '15:30:00', '13:30:00', 2, 25, 54, 6, 1),
(24, '2024-12-20', '15:30:00', '13:30:00', 5, 52, 145, 15, 1),
(27, '2025-01-09', '16:00:00', '14:00:00', 1, 4, 2, 1, 22);

-- --------------------------------------------------------

--
-- Table structure for table `forgot_password`
--

CREATE TABLE `forgot_password` (
  `fpid` int(11) NOT NULL,
  `expiration_time` datetime(6) NOT NULL,
  `otp` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `holiday`
--

CREATE TABLE `holiday` (
  `id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `holiday`
--

INSERT INTO `holiday` (`id`, `date`, `name`) VALUES
(1, '2025-01-01', 'Jour de l\'An'),
(2, '2025-01-11', 'Fête de l\'Indépendance du Manifeste'),
(3, '2025-05-01', 'Fête du Travail'),
(4, '2025-07-30', 'Fête du Trône'),
(5, '2025-08-14', 'Journée d\'Oued Ed-Dahab'),
(6, '2025-08-20', 'Fête de la Révolution du Roi et du Peuple'),
(7, '2025-08-21', 'Fête de la Jeunesse'),
(8, '2025-11-06', 'Journée de la Marche Verte'),
(9, '2025-11-18', 'Fête de l\'Indépendance');

-- --------------------------------------------------------

--
-- Table structure for table `locaux`
--

CREATE TABLE `locaux` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `taille` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `exam_id` bigint(20) DEFAULT NULL,
  `disponible` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `locaux`
--

INSERT INTO `locaux` (`id`, `nom`, `taille`, `type`, `exam_id`, `disponible`) VALUES
(4, 'Room 4', 101, 'Salle', 17, b'0'),
(9, 'Room 9', 74, 'Salle', 22, b'0'),
(12, 'Room 12', 104, 'Salle', 24, b'0'),
(13, 'Room 13', 129, 'Salle', NULL, b'1'),
(16, 'Room 16', 120, 'Amphi', 1, b'1'),
(17, 'Room 17', 134, 'Amphi', NULL, b'1'),
(20, 'Room 20', 95, 'Salle', 24, b'0'),
(23, 'Room 23', 113, 'Amphi', 27, b'0'),
(24, 'Room 24', 123, 'Amphi', NULL, b'1'),
(25, 'Room 25', 145, 'Amphi', NULL, b'1'),
(29, 'Room 29', 74, 'Amphi', 23, b'0'),
(30, 'Room 30', 117, 'Salle', NULL, b'1'),
(32, 'Amphi1', 300, 'Salle', NULL, b'1'),
(34, 'Amphi gamma', 120, 'Amphi', NULL, b'1'),
(36, 'B1', 20, 'Salle', NULL, b'1'),
(39, 'B12', 20, 'Salle', NULL, b'1'),
(40, 'Grand Amphi', 120, 'Amphi', NULL, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `id` bigint(20) NOT NULL,
  `nom_module` varchar(255) DEFAULT NULL,
  `option_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `nom_module`, `option_id`) VALUES
(1, 'Module 1', 1),
(2, 'Module 2', 1),
(3, 'Module 3', 1),
(4, 'Module 4', 1),
(5, 'Module 5', 1),
(6, 'Module 6', 1),
(7, 'Module 7', 1),
(8, 'Module 8', 1),
(9, 'Module 9', 1),
(10, 'Module 10', 1),
(11, 'Module 11', 2),
(12, 'Module 12', 2),
(13, 'Module 13', 2),
(14, 'Module 14', 2),
(15, 'Module 15', 2),
(16, 'Module 16', 2),
(17, 'Module 17', 2),
(18, 'Module 18', 2),
(19, 'Module 19', 2),
(20, 'Module 20', 2),
(21, 'Module 21', 3),
(22, 'Module 22', 3),
(23, 'Module 23', 3),
(24, 'Module 24', 3),
(25, 'Module 25', 3),
(26, 'Module 26', 3),
(27, 'Module 27', 3),
(28, 'Module 28', 3),
(29, 'Module 29', 3),
(30, 'Module 30', 3),
(31, 'Module 31', 4),
(32, 'Module 32', 4),
(33, 'Module 33', 4),
(34, 'Module 34', 4),
(35, 'Module 35', 4),
(36, 'Module 36', 4),
(37, 'Module 37', 4),
(38, 'Module 38', 4),
(39, 'Module 39', 4),
(40, 'Module 40', 4),
(41, 'Module 41', 5),
(42, 'Module 42', 5),
(43, 'Module 43', 5),
(44, 'Module 44', 5),
(45, 'Module 45', 5),
(46, 'Module 46', 5),
(47, 'Module 47', 5),
(48, 'Module 48', 5),
(49, 'Module 49', 5),
(50, 'Module 50', 5),
(51, 'Module 51', 6),
(52, 'Module 52', 6),
(53, 'Module 53', 6),
(54, 'Module 54', 6),
(55, 'Module 55', 6),
(56, 'Module 56', 6),
(57, 'Module 57', 6),
(58, 'Module 58', 6),
(59, 'Module 59', 6),
(60, 'Module 60', 6),
(61, 'Module 61', 7),
(62, 'Module 62', 7),
(63, 'Module 63', 7),
(64, 'Module 64', 7),
(65, 'Module 65', 7),
(66, 'Module 66', 7),
(67, 'Module 67', 7),
(68, 'Module 68', 7),
(69, 'Module 69', 7),
(70, 'Module 70', 7),
(71, 'Module 71', 8),
(72, 'Module 72', 8),
(73, 'Module 73', 8),
(74, 'Module 74', 8),
(75, 'Module 75', 8),
(76, 'Module 76', 8),
(77, 'Module 77', 8),
(78, 'Module 78', 8),
(79, 'Module 79', 8),
(80, 'Module 80', 8),
(81, 'Module 81', 9),
(82, 'Module 82', 9),
(83, 'Module 83', 9),
(84, 'Module 84', 9),
(85, 'Module 85', 9),
(86, 'Module 86', 9),
(87, 'Module 87', 9),
(88, 'Module 88', 9),
(89, 'Module 89', 9),
(90, 'Module 90', 9),
(91, 'Module 91', 10),
(92, 'Module 92', 10),
(93, 'Module 93', 10),
(94, 'Module 94', 10),
(95, 'Module 95', 10),
(96, 'Module 96', 10),
(97, 'Module 97', 10),
(98, 'Module 98', 10),
(99, 'Module 99', 10),
(100, 'Module 100', 10),
(101, 'Module 101', 11),
(102, 'Module 102', 11),
(103, 'Module 103', 11),
(104, 'Module 104', 11),
(105, 'Module 105', 11),
(106, 'Module 106', 11),
(107, 'Module 107', 11),
(108, 'Module 108', 11),
(109, 'Module 109', 11),
(110, 'Module 110', 11),
(111, 'Module 111', 12),
(112, 'Module 112', 12),
(113, 'Module 113', 12),
(114, 'Module 114', 12),
(115, 'Module 115', 12),
(116, 'Module 116', 12),
(117, 'Module 117', 12),
(118, 'Module 118', 12),
(119, 'Module 119', 12),
(120, 'Module 120', 12),
(121, 'Module 121', 13),
(122, 'Module 122', 13),
(123, 'Module 123', 13),
(124, 'Module 124', 13),
(125, 'Module 125', 13),
(126, 'Module 126', 13),
(127, 'Module 127', 13),
(128, 'Module 128', 13),
(129, 'Module 129', 13),
(130, 'Module 130', 13),
(131, 'Module 131', 14),
(132, 'Module 132', 14),
(133, 'Module 133', 14),
(134, 'Module 134', 14),
(135, 'Module 135', 14),
(136, 'Module 136', 14),
(137, 'Module 137', 14),
(138, 'Module 138', 14),
(139, 'Module 139', 14),
(140, 'Module 140', 14),
(141, 'Module 141', 15),
(142, 'Module 142', 15),
(143, 'Module 143', 15),
(144, 'Module 144', 15),
(145, 'Module 145', 15),
(146, 'Module 146', 15),
(147, 'Module 147', 15),
(148, 'Module 148', 15),
(149, 'Module 149', 15),
(150, 'Module 150', 15),
(156, 'Calculus', 18),
(157, 'Linear Algebra', 18),
(161, 'Hydrolique', 20),
(171, 'Web Dev', 25),
(173, 'Java', 26),
(174, 'Python', 26),
(175, 'Web Dev', 26),
(176, 'SQL', 27),
(177, 'NoSQL', 27),
(178, 'Calculus', 28),
(179, 'Linear Algebra', 28),
(180, 'Dynamics', 29),
(181, 'Kinematics', 29);

-- --------------------------------------------------------

--
-- Table structure for table `occupations`
--

CREATE TABLE `occupations` (
  `id` bigint(20) NOT NULL,
  `cause` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `end_time` time NOT NULL,
  `start_time` time NOT NULL,
  `enseignant_id` bigint(20) NOT NULL,
  `session_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `occupations`
--

INSERT INTO `occupations` (`id`, `cause`, `date`, `end_time`, `start_time`, `enseignant_id`, `session_id`) VALUES
(1, 'Meeting', '2024-12-21', '15:30:00', '13:30:00', 1, 1),
(7, 'maladie', '2024-12-20', '12:30:00', '10:30:00', 1, 1),
(8, 'Malade', '2024-12-20', '12:30:00', '10:30:00', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `option`
--

CREATE TABLE `option` (
  `id` bigint(20) NOT NULL,
  `annee` varchar(255) DEFAULT NULL,
  `nbr_inscrit` int(11) NOT NULL,
  `nom_de_filiere` varchar(255) DEFAULT NULL,
  `departement_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `option`
--

INSERT INTO `option` (`id`, `annee`, `nbr_inscrit`, `nom_de_filiere`, `departement_id`) VALUES
(1, '2024', 53, 'Option 1', 1),
(2, '2024', 181, 'Option 2', 1),
(3, '2024', 101, 'Option 3', 1),
(4, '2024', 86, 'Option 4', 2),
(5, '2024', 71, 'Option 5', 2),
(6, '2024', 60, 'Option 6', 2),
(7, '2024', 101, 'Option 7', 3),
(8, '2024', 182, 'Option 8', 3),
(9, '2024', 149, 'Option 9', 3),
(10, '2024', 119, 'Option 10', 4),
(11, '2024', 96, 'Option 11', 4),
(12, '2024', 69, 'Option 12', 4),
(13, '2024', 157, 'Option 13', 5),
(14, '2024', 131, 'Option 14', 5),
(15, '2024', 173, 'Option 15', 5),
(18, '2024', 60, 'Analyse', 32),
(20, '2', 40, 'GEE', 34),
(25, '2', 37, '2ITE', 30),
(26, '2024', 120, 'GL', 31),
(27, '2024', 80, 'BD', 31),
(28, '2024', 60, 'Analyse', 40),
(29, '2024', 40, 'Mecanique', 33);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` bigint(20) NOT NULL,
  `afternoon_end1` varchar(255) NOT NULL,
  `afternoon_end2` varchar(255) NOT NULL,
  `afternoon_start1` varchar(255) NOT NULL,
  `afternoon_start2` varchar(255) NOT NULL,
  `end_date` date NOT NULL,
  `is_valid` bit(1) NOT NULL,
  `morning_end1` varchar(255) NOT NULL,
  `morning_end2` varchar(255) NOT NULL,
  `morning_start1` varchar(255) NOT NULL,
  `morning_start2` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `afternoon_end1`, `afternoon_end2`, `afternoon_start1`, `afternoon_start2`, `end_date`, `is_valid`, `morning_end1`, `morning_end2`, `morning_start1`, `morning_start2`, `start_date`, `type`) VALUES
(1, '15:30', '17:30', '13:30', '15:45', '2024-12-25', b'0', '10:20', '12:30', '08:00', '10:30', '2024-12-20', 'Normal d\'hiver'),
(4, '16:00', '18:00', '14:00', '16:00', '2024-12-19', b'0', '10:00', '12:00', '08:00', '10:00', '2024-12-13', 'Normal de printemps'),
(22, '16:00', '18:00', '14:00', '16:00', '2025-01-09', b'0', '10:00', '12:00', '08:00', '10:00', '2025-01-02', 'Rattrapage de printemps');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `app_user_role` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `app_user_role`, `email`, `password`) VALUES
(2, 'ADMIN', 'ayaelloubab@gmail.com', 'aya123'),
(3, 'ADMIN', 'fattouhiradwa@gmail.com', 'radwa@123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKojyp6w14d0f9w4r1vrddgnisu` (`departement_id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKoq4kdg1xaok3v071uxkwc5t7m` (`departement_id`),
  ADD KEY `FK79g99r6oadf28qtylturdwhfd` (`enseignant_id`),
  ADD KEY `FKnej851ghbmeapi9658l7rflp5` (`module_id`),
  ADD KEY `FKbqr8c6x4bkwjw0ul7au4uf4u4` (`option_id`),
  ADD KEY `fk_exam_session` (`session_id`);

--
-- Indexes for table `forgot_password`
--
ALTER TABLE `forgot_password`
  ADD PRIMARY KEY (`fpid`),
  ADD KEY `FK95rqabtnw8wouua80mbixrq4` (`user_id`);

--
-- Indexes for table `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locaux`
--
ALTER TABLE `locaux`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9gta539le3efda28jwooet0dr` (`exam_id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9elfm8dntfq24e0qxwy7jmlen` (`option_id`);

--
-- Indexes for table `occupations`
--
ALTER TABLE `occupations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKkxut19ctw4ddl9nod8xtrdv2g` (`enseignant_id`),
  ADD KEY `FKca3tdfg2eg1jtw3e67n6wbgea` (`session_id`);

--
-- Indexes for table `option`
--
ALTER TABLE `option`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKlsf8cg03gwjlqfuxcf7pjfukt` (`departement_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departement`
--
ALTER TABLE `departement`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `enseignant`
--
ALTER TABLE `enseignant`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `forgot_password`
--
ALTER TABLE `forgot_password`
  MODIFY `fpid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `holiday`
--
ALTER TABLE `holiday`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `locaux`
--
ALTER TABLE `locaux`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `occupations`
--
ALTER TABLE `occupations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `option`
--
ALTER TABLE `option`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `enseignant`
--
ALTER TABLE `enseignant`
  ADD CONSTRAINT `FKojyp6w14d0f9w4r1vrddgnisu` FOREIGN KEY (`departement_id`) REFERENCES `departement` (`id`);

--
-- Constraints for table `exam`
--
ALTER TABLE `exam`
  ADD CONSTRAINT `FK79g99r6oadf28qtylturdwhfd` FOREIGN KEY (`enseignant_id`) REFERENCES `enseignant` (`id`),
  ADD CONSTRAINT `FKbqr8c6x4bkwjw0ul7au4uf4u4` FOREIGN KEY (`option_id`) REFERENCES `option` (`id`),
  ADD CONSTRAINT `FKnej851ghbmeapi9658l7rflp5` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`),
  ADD CONSTRAINT `FKoq4kdg1xaok3v071uxkwc5t7m` FOREIGN KEY (`departement_id`) REFERENCES `departement` (`id`),
  ADD CONSTRAINT `fk_exam_session` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`);

--
-- Constraints for table `forgot_password`
--
ALTER TABLE `forgot_password`
  ADD CONSTRAINT `FK95rqabtnw8wouua80mbixrq4` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `locaux`
--
ALTER TABLE `locaux`
  ADD CONSTRAINT `FK9gta539le3efda28jwooet0dr` FOREIGN KEY (`exam_id`) REFERENCES `exam` (`id`);

--
-- Constraints for table `module`
--
ALTER TABLE `module`
  ADD CONSTRAINT `FK9elfm8dntfq24e0qxwy7jmlen` FOREIGN KEY (`option_id`) REFERENCES `option` (`id`);

--
-- Constraints for table `occupations`
--
ALTER TABLE `occupations`
  ADD CONSTRAINT `FKca3tdfg2eg1jtw3e67n6wbgea` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`),
  ADD CONSTRAINT `FKkxut19ctw4ddl9nod8xtrdv2g` FOREIGN KEY (`enseignant_id`) REFERENCES `enseignant` (`id`);

--
-- Constraints for table `option`
--
ALTER TABLE `option`
  ADD CONSTRAINT `FKlsf8cg03gwjlqfuxcf7pjfukt` FOREIGN KEY (`departement_id`) REFERENCES `departement` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
