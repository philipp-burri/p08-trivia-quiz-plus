-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Jul 23, 2024 at 01:16 PM
-- Server version: 9.0.1
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers_single`
--

CREATE TABLE `answers_single` (
  `id` int NOT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_correct` tinyint(1) NOT NULL,
  `question_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers_single`
--

INSERT INTO `answers_single` (`id`, `answer`, `is_correct`, `question_id`) VALUES
(1, 'Sofia', 0, 1),
(2, 'Prag', 0, 1),
(3, 'Bratislava', 1, 1),
(4, 'Ljubljan', 0, 1),
(5, 'Nairobi', 0, 2),
(6, 'Mogadischu', 0, 2),
(7, 'Harare', 0, 2),
(8, 'Addis Abeba', 1, 2),
(9, 'Kanarischen Inseln', 1, 3),
(10, 'Balearen', 0, 3),
(11, 'Karibischen Inseln', 0, 3),
(12, 'Azoren', 0, 3),
(13, 'Atlantischer Ozean', 0, 4),
(14, 'Indischer Ozean', 0, 4),
(15, 'Karibisches Meer', 0, 4),
(16, 'Pazifischer Ozean', 1, 4),
(17, 'Australien', 0, 5),
(18, 'Neuguinea', 0, 5),
(19, 'Grönland', 1, 5),
(20, 'Borneo', 0, 5),
(21, 'Canberra', 1, 6),
(22, 'Melbourne', 0, 6),
(23, 'Perth', 0, 6),
(24, 'Sydney', 0, 6),
(25, 'Bayern', 1, 7),
(26, 'Nordrhein-Westfalen', 0, 7),
(27, 'Niedersachsen', 0, 7),
(28, 'Baden-Würtemberg', 0, 7),
(29, '7.000 Meter', 0, 8),
(30, '9.000 Meter', 0, 8),
(31, '11.000 Meter', 1, 8),
(32, '13.000 Meter', 0, 8),
(33, '12.000 Kilometer', 0, 9),
(34, '15.000 Kilometer', 0, 9),
(35, '18.000 Kilometer', 0, 9),
(36, '21.000 Kilometer', 1, 9),
(37, 'Norwegen', 0, 10),
(38, 'USA', 0, 10),
(39, 'Island', 0, 10),
(40, 'Dänemark', 1, 10),
(41, 'Hawaii', 1, 11),
(42, 'Indonesien', 0, 11),
(43, 'Chile', 0, 11),
(44, 'Island', 0, 11),
(45, 'Monaco', 0, 12),
(46, 'Die Vatikanstadt', 1, 12),
(47, 'San Marino', 0, 12),
(48, 'Nauru', 0, 12),
(49, 'Nil', 1, 13),
(50, 'Amazonas', 0, 13),
(51, 'Jangtsekiang', 0, 13),
(52, 'Missouri', 0, 13),
(53, 'Kalifornien', 0, 14),
(54, 'Texas', 0, 14),
(55, 'Alaska', 1, 14),
(56, 'Montana', 0, 14),
(57, 'Portugal', 0, 15),
(58, 'Frankreich', 0, 15),
(59, 'Spanien', 1, 15),
(60, 'Italien', 0, 15),
(61, 'Mount Everest', 0, 16),
(62, 'K2', 1, 16),
(63, 'Lhotse', 0, 16),
(64, 'Kangchenjunga', 0, 16),
(65, 'China', 0, 17),
(66, 'Nepal', 1, 17),
(67, 'Indien', 0, 17),
(68, 'Bhutan', 0, 17),
(69, 'Peru', 1, 18),
(70, 'Brasilien', 0, 18),
(71, 'Mexiko', 0, 18),
(72, 'Chile', 0, 18),
(73, 'Norwegen', 1, 19),
(74, 'Schweden', 0, 19),
(75, 'Island', 0, 19),
(76, 'Finnland', 0, 19),
(77, 'Venedig', 0, 20),
(78, 'Florenz', 0, 20),
(79, 'Mailand', 0, 20),
(80, 'Rom', 1, 20);
(100, 'Thomas Jefferson', 0, 100),
(101, 'George Washington', 1, 100),
(102, 'Abraham Lincoln', 0, 100),
(103, 'John Adams', 0, 100),
(104, '1943', 0, 101),
(105, '1944', 0, 101),
(106, '1945', 1, 101),
(107, '1946', 0, 101),
(108, 'Vincent van Gogh', 0, 102),
(109, 'Pablo Picasso', 0, 102),
(110, 'Leonardo da Vinci', 1, 102),
(111, 'Michelangelo', 0, 102),
(112, 'Koloss von Rhodos', 0, 103),
(113, 'Hängende Gärten von Babylon', 0, 103),
(114, 'Leuchtturm von Alexandria', 0, 103),
(115, 'Pyramiden von Gizeh', 1, 103),
(116, 'Sally Ride', 0, 104),
(117, 'Valentina Tereschkowa', 1, 104),
(118, 'Mae Jemison', 0, 104),
(119, 'Eileen Collins', 0, 104),
(120, '1987', 0, 105),
(121, '1989', 1, 105),
(122, '1991', 0, 105),
(123, '1993', 0, 105),
(124, 'Buzz Aldrin', 0, 106),
(125, 'Yuri Gagarin', 0, 106),
(126, 'Neil Armstrong', 1, 106),
(127, 'John Glenn', 0, 106),
(128, 'England', 0, 107),
(129, 'Deutschland', 0, 107),
(130, 'Italien', 0, 107),
(131, 'Frankreich', 1, 107),
(132, 'Charles Dickens', 0, 108),
(133, 'William Shakespeare', 1, 108),
(134, 'Jane Austen', 0, 108),
(135, 'Mark Twain', 0, 108),
(136, '1492', 1, 109),
(137, '1500', 0, 109),
(138, '1510', 0, 109),
(139, '1520', 0, 109),
(140, 'Julius Caesar', 0, 110),
(141, 'Augustus', 1, 110),
(142, 'Nero', 0, 110),
(143, 'Claudius', 0, 110),
(144, '1776', 0, 111),
(145, '1789', 1, 111),
(146, '1804', 0, 111),
(147, '1812', 0, 111),
(148, 'Gutenberg', 1, 112),
(149, 'Da Vinci', 0, 112),
(150, 'Galileo', 0, 112),
(151, 'Newton', 0, 112),
(152, 'Griechen', 0, 113),
(153, 'Römer', 0, 113),
(154, 'Perser', 0, 113),
(155, 'Ägypter', 1, 113),
(156, 'Elisabeth I.', 0, 114),
(157, 'Katharina die Große', 0, 114),
(158, 'Marie Antoinette', 1, 114),
(159, 'Victoria', 0, 114),
(160, '1905', 0, 115),
(161, '1914', 1, 115),
(162, '1918', 0, 115),
(163, '1925', 0, 115),
(164, 'Jawaharlal Nehru', 0, 116),
(165, 'Mahatma Gandhi', 1, 116),
(166, 'Subhas Chandra Bose', 0, 116),
(167, 'Sardar Patel', 0, 116),
(168, 'Der Fall Konstantinopels', 0, 117),
(169, 'Die Entdeckung Amerikas', 0, 117),
(170, 'Die Erfindung des Buchdrucks', 1, 117),
(171, 'Das Ende des Hundertjährigen Krieges', 0, 117),
(172, 'Christoph Kolumbus', 0, 118),
(173, 'Ferdinand Magellan', 1, 118),
(174, 'James Cook', 0, 118),
(175, 'Marco Polo', 0, 118),
(176, '1770', 0, 119),
(177, '1773', 0, 119),
(178, '1776', 1, 119),
(179, '1781', 0, 119);
(200, 'Elefant', 1, 200),
(201, 'Nashorn', 0, 200),
(202, 'Giraffe', 0, 200),
(203, 'Nilpferd', 0, 200),
(204, 'Kamel', 1, 201),
(205, 'Giraffe', 0, 201),
(206, 'Wüstenspringmaus', 0, 201),
(207, 'Känguru', 0, 201),
(208, 'Strauß', 1, 202),
(209, 'Adler', 0, 202),
(210, 'Papagei', 0, 202),
(211, 'Albatros', 0, 202),
(212, 'Krokodil', 0, 203),
(213, 'Löwe', 0, 203),
(214, 'Ameise', 1, 203),
(215, 'Hai', 0, 203),
(216, 'Löwe', 0, 204),
(217, 'Gepard', 1, 204),
(218, 'Antilope', 0, 204),
(219, 'Pferd', 0, 204),
(220, 'Löwe', 0, 205),
(221, 'Katze', 0, 205),
(222, 'Koala', 1, 205),
(223, 'Fledermaus', 0, 205),
(224, 'Hai', 0, 206),
(225, 'Delfin', 0, 206),
(226, 'Blauwal', 1, 206),
(227, 'Seehund', 0, 206),
(228, 'Tintenfisch', 0, 207),
(229, 'Chamäleon', 1, 207),
(230, 'Frosch', 0, 207),
(231, 'Eidechse', 0, 207),
(232, 'Oktopus', 1, 208),
(233, 'Elefant', 0, 208),
(234, 'Hai', 0, 208),
(235, 'Delfin', 0, 208),
(236, 'Känguru', 0, 209),
(237, 'Schnabeltier', 1, 209),
(238, 'Wal', 0, 209),
(239, 'Seekuh', 0, 209),
(240, 'Mensch', 0, 210),
(241, 'Elefant', 0, 210),
(242, 'Delfin', 0, 210),
(243, 'Ameise', 1, 210),
(244, 'Hund', 0, 211),
(245, 'Katze', 0, 211),
(246, 'Schimpanse', 1, 211),
(247, 'Pferd', 0, 211),
(248, 'Grashüpfer', 0, 212),
(249, 'Käfer', 0, 212),
(250, 'Goliathkäfer', 1, 212),
(251, 'Ameise', 0, 212),
(252, 'Spitzmaus', 1, 213),
(253, 'Maus', 0, 213),
(254, 'Hamster', 0, 213),
(255, 'Fledermaus', 0, 213),
(256, 'Faultier', 1, 214),
(257, 'Koala', 0, 214),
(258, 'Panda', 0, 214),
(259, 'Lemur', 0, 214),
(260, 'Schildkröte', 0, 215),
(261, 'Schnecke', 0, 215),
(262, 'Gürteltier', 1, 215),
(263, 'Igel', 0, 215),
(264, 'Elefant', 0, 216),
(265, 'Giraffe', 1, 216),
(266, 'Strauß', 0, 216),
(267, 'Kamel', 0, 216),
(268, 'Zitterrochen', 1, 217),
(269, 'Delfin', 0, 217),
(270, 'Seepferdchen', 0, 217),
(271, 'Aal', 0, 217),
(272, 'Koala', 1, 218),
(273, 'Panda', 0, 218),
(274, 'Löwe', 0, 218),
(275, 'Tiger', 0, 218),
(276, 'Biene', 1, 219),
(277, 'Spinne', 0, 219),
(278, 'Vogel', 0, 219),
(279, 'Schildkröte', 0, 219);

-- --------------------------------------------------------

--
-- Table structure for table `answer_multi`
--

CREATE TABLE `answer_multi` (
  `id` int NOT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_correct` tinyint(1) NOT NULL,
  `question_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answer_multi`
--

INSERT INTO `answer_multi` (`id`, `answer`, `is_correct`, `question_id`) VALUES
(1, 'Polen', 1, 1),
(2, 'Ungarn', 0, 1),
(3, 'Schweden', 1, 1),
(4, 'Tschechien', 0, 1),
(5, 'Rhein', 1, 2),
(6, 'Donau', 1, 2),
(7, 'Themse', 0, 2),
(8, 'Elbe', 1, 2),
(9, 'Deutschland', 1, 3),
(10, 'Norwegen', 0, 3),
(11, 'Frankreich', 1, 3),
(12, 'Schweiz', 0, 3),
(13, 'Tokio', 1, 4),
(14, 'Kairo', 0, 4),
(15, 'Delhi', 1, 4),
(16, 'Bangkok', 1, 4),
(17, 'Spanien', 1, 5),
(18, 'Österreich', 0, 5),
(19, 'Italien', 1, 5),
(20, 'Portugal', 0, 5),
(21, 'Nil', 1, 6),
(22, 'Amazonas', 0, 6),
(23, 'Kongo', 1, 6),
(24, 'Mekong', 0, 6),
(25, 'London', 1, 7),
(26, 'Sydney', 0, 7),
(27, 'Paris', 1, 7),
(28, 'New York', 0, 7),
(29, 'Matterhorn', 1, 8),
(30, 'Kilimandscharo', 0, 8),
(31, 'Mont Blanc', 1, 8),
(32, 'Mount Everest', 0, 8),
(33, 'Brasilien', 1, 9),
(34, 'Mali', 0, 9),
(35, 'Kanada', 1, 9),
(36, 'Argentinien', 1, 9),
(37, 'Sizilien', 1, 10),
(38, 'Kreta', 0, 10),
(39, 'Sardinien', 1, 10),
(40, 'Mallorca', 0, 10);
(101, 'Maximilien Robespierre', 1, 101),
(102, 'Napoleon Bonaparte', 0, 101),
(103, 'Georges Danton', 1, 101),
(104, 'Jean-Paul Marat', 1, 101),
(105, 'Griechen', 1, 102),
(106, 'Römer', 1, 102),
(107, 'Maya', 0, 102),
(108, 'Ägypter', 1, 102),
(109, 'Attentat von Sarajevo', 1, 103),
(110, 'Russische Revolution', 0, 103),
(111, 'Julikrise', 1, 103),
(112, 'Balkankrise', 1, 103),
(113, 'Brille', 1, 104),
(114, 'Mechanische Uhr', 1, 104),
(115, 'Dampfmaschine', 0, 4),
(116, 'Schießpulver (in Europa)', 1, 104),
(117, 'Deutschland', 1, 105),
(118, 'Sowjetunion', 0, 105),
(119, 'Italien', 1, 105),
(120, 'Japan', 1, 105),
(121, 'Voltaire', 1, 106),
(122, 'John Locke', 1, 106),
(123, 'Immanuel Kant', 1, 106),
(124, 'Martin Luther', 0, 106),
(125, 'Invasionen germanischer Stämme', 1, 107),
(126, 'Wirtschaftliche Probleme', 1, 107),
(127, 'Politische Instabilität', 1, 107),
(128, 'Entdeckung Amerikas', 0, 107),
(129, 'Florenz', 1, 108),
(130, 'Venedig', 1, 108),
(131, 'Rom', 1, 108),
(132, 'London', 0, 108),
(133, 'George Washington', 1, 109),
(134, 'Thomas Jefferson', 1, 109),
(135, 'Benjamin Franklin', 1, 109),
(136, 'Abraham Lincoln', 0, 109),
(137, 'Kubakrise', 1, 110),
(138, 'Berliner Blockade', 1, 110),
(139, 'Koreakrieg', 1, 110),
(140, 'Schlacht von Waterloo', 0, 110);
(200, 'Adler', 1, 200),
(201, 'Pinguin', 0, 200),
(202, 'Schmetterling', 1, 200),
(203, 'Fledermaus', 1, 200),
(204, 'Delphin', 1, 201),
(205, 'Krokodil', 0, 201),
(206, 'Elefant', 1, 201),
(207, 'Hai', 0, 201),
(209, 'Wal', 1, 203),
(210, 'Seepferdchen', 1, 203),
(211, 'Papagei', 0, 203),
(212, 'Qualle', 1, 203),
(213, 'Löwe', 1, 204),
(214, 'Hirsch', 0, 204),
(215, 'Wolf', 1, 204),
(216, 'Schaf', 0, 204),
(217, 'Kuh', 1, 205),
(218, 'Tiger', 0, 205),
(219, 'Pferd', 1, 205),
(220, 'Elefant', 1, 205),
(221, 'Chamäleon', 1, 206),
(222, 'Tintenfisch', 1, 206),
(223, 'Känguru', 0, 206),
(224, 'Krake', 1, 206),
(225, 'Frosch', 1, 207),
(226, 'Ente', 0, 207),
(227, 'Krokodil', 1, 207),
(228, 'Affe', 0, 207),
(229, 'Eule', 1, 208),
(230, 'Waschbär', 1, 208),
(231, 'Spatz', 0, 208),
(232, 'Fledermaus', 1, 208),
(233, 'Schlange', 1, 209),
(234, 'Schildkröte', 1, 209),
(235, 'Frosch', 0, 209),
(236, 'Eidechse', 1, 209),
(237, 'Huhn', 1, 210),
(238, 'Wal', 0, 210),
(239, 'Ente', 1, 210),
(240, 'Schlange', 1, 210);


-- --------------------------------------------------------


--
-- Table structure for table `questions_multi`
--

CREATE TABLE `questions_multi` (
  `id` int NOT NULL,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions_multi`
--

INSERT INTO `questions_multi` (`id`, `question`, `type`, `level`) VALUES
(1, 'Welche der folgenden Länder haben Küsten an der Ostsee?', 'geography', 1),
(2, 'Welche der folgenden Flüsse fließen durch Deutschland?', 'geography', 1),
(3, 'Welche der folgenden Länder gehören zur Europäischen Union?', 'geography', 1),
(4, 'Welche der folgenden Hauptstädte befinden sich in Asien?', 'geography', 1),
(5, 'Welche der folgenden Länder haben Küsten am Mittelmeer?', 'geography', 1),
(6, 'Welche der folgenden Flüsse befinden sich in Afrika?', 'geography', 1),
(7, 'Welche der folgenden Städte liegen in Europa?', 'geography', 1),
(8, 'Welche der folgenden Berge liegen in den Alpen?', 'geography', 1),
(9, 'Welche der folgenden Länder grenzen an den Atlantischen Ozean?', 'geography', 1),
(10, 'Welche der folgenden Inseln gehören zu Italien?', 'geography', 1);
(101, 'Welche der folgenden Personen waren bedeutende Anführer während der Französischen Revolution?', 'history', 1),
(102, 'Welche antiken Zivilisationen hatten signifikanten Einfluss auf die Entwicklung der westlichen Kultur?', 'history', 1),
(103, 'Welche Ereignisse trugen zum Ausbruch des Ersten Weltkriegs bei?', 'history', 1),
(104, 'Welche der folgenden Erfindungen stammen aus dem Mittelalter?', 'history', 1),
(105, 'Welche Länder waren Teil der Achsenmächte im Zweiten Weltkrieg?', 'history', 1),
(106, 'Welche dieser Personen waren bedeutende Figuren der Aufklärung?', 'history', 1),
(107, 'Welche Faktoren trugen zum Fall des Römischen Reiches bei?', 'history', 1),
(108, 'Welche dieser Städte waren wichtige Zentren der Renaissance?', 'history', 1),
(109, 'Welche dieser Personen spielten eine wichtige Rolle in der amerikanischen Unabhängigkeitsbewegung?', 'history', 1),
(110, 'Welche dieser Ereignisse waren Teil des Kalten Krieges?', 'history', 1);
(200, 'Welche dieser Tiere können fliegen?', 'animals', 1),
(201, 'Welche Tiere sind Säugetiere?', 'animals', 1),
(203, 'Welche dieser Tiere leben im Meer?\r\n\r\n', 'animals', 1),
(204, 'Welche Tiere sind Raubtiere?\r\n\r\n', 'animals', 1),
(205, 'Welche dieser Tiere sind Pflanzenfresser?\r\n\r\n', 'animals', 1),
(206, 'Welche dieser Tiere können ihre Farbe ändern?\r\n\r\n', 'animals', 1),
(207, 'Welche dieser Tiere leben auf dem Land und im Wasser (amphibisch)?\r\n\r\n', 'animals', 1),
(208, 'Welche dieser Tiere sind nachtaktiv?\r\n\r\n', 'animals', 1),
(209, 'Welche dieser Tiere sind Reptilien?\r\n\r\n', 'animals', 1),
(210, 'Welche dieser Tiere legen Eier?\r\n\r\n', 'animals', 1);

-- --------------------------------------------------------

--
-- Table structure for table `questions_single`
--

CREATE TABLE `questions_single` (
  `id` int NOT NULL,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions_single`
--

INSERT INTO `questions_single` (`id`, `question`, `type`, `level`) VALUES
(1, 'Wie heißt die Hauptstadt der Slowakei?', 'geography', 1),
(2, 'Wie heißt die Hauptstadt von Äthiopien?', 'geography', 1),
(3, 'Teneriffa, Gran Canaria und Fuerteventura gehören zu den…?', 'geography', 1),
(4, 'In welchem Meer liegt die Insel Hawaii?', 'geography', 1),
(5, 'Was ist die größte Insel der Welt?', 'geography', 1),
(6, 'Wie heißt die Hauptstadt von Australien?', 'geography', 1),
(7, 'Welches deutsche Bundesland ist flächenmäßig das größte?', 'geography', 1),
(8, 'Wie tief ist der Marianengraben?', 'geography', 1),
(9, 'Wie lang ist die Chinesische Mauer (gerundet)?', 'geography', 1),
(10, 'Zu welchem Land gehört Grönland politisch?', 'geography', 1),
(11, 'Wo befindet sich der größte Vulkan der Erde?', 'geography', 1),
(12, 'Wie heißt das kleinste Land der Welt?', 'geography', 1),
(13, 'Wie heißt der längste Fluss der welt?', 'geography', 1),
(14, 'Was ist der flächenmäßig größte US-Bundesstaat?', 'geography', 1),
(15, 'Zu welchem ​​Land gehören die Kanarischen Inseln?', 'geography', 1),
(16, 'Wie heißt der zweithöchste Berg der Welt?', 'geography', 1),
(17, 'In welchem ​​Land befindet sich der Mount Everest?', 'geography', 1),
(18, 'In welchem ​​Land verlaufen die Nazca-Linien?', 'geography', 1),
(19, 'Der Preikestolen ist ein erstaunlicher Anblick, über den Fjorden welchen Landes?', 'geography', 1),
(20, 'Wenn ich auf den Trevi-Brunnen schaue, in welcher Stadt befinde ich mich?', 'geography', 1);
(100, 'Wer war der erste Präsident der Vereinigten Staaten?', 'history', 1),
(101, 'In welchem Jahr endete der Zweite Weltkrieg?', 'history', 1),
(102, 'Wer malte die Mona Lisa?', 'history', 1),
(103, 'Welches antike Weltwunder steht noch heute?', 'history', 1),
(104, 'Wer war die erste Frau im Weltall?', 'history', 1),
(105, 'In welchem Jahr fiel die Berliner Mauer?', 'history', 1),
(106, 'Wer war der erste Mensch auf dem Mond?', 'history', 1),
(107, 'Welches Land verschenkte die Freiheitsstatue an die USA?', 'history', 1),
(108, 'Wer schrieb \"Romeo und Julia\"?', 'history', 1),
(109, 'In welchem Jahr wurde Amerika von Christoph Kolumbus entdeckt?', 'history', 1),
(110, 'Wer war der erste römische Kaiser?', 'history', 1),
(111, 'Welches Jahr gilt als Beginn der Französischen Revolution?', 'history', 1),
(112, 'Wer erfand den Buchdruck mit beweglichen Lettern in Europa?', 'history', 1),
(113, 'Welche alte Zivilisation baute die Pyramiden in Ägypten?', 'history', 1),
(114, 'Wer war die letzte Königin von Frankreich vor der Revolution?', 'history', 1),
(115, 'In welchem Jahr begann der Erste Weltkrieg?', 'history', 1),
(116, 'Wer war der Anführer der Unabhängigkeitsbewegung in Indien?', 'history', 1),
(117, 'Welches Ereignis markiert den Beginn der Renaissance?', 'history', 1),
(118, 'Wer war der erste Mensch, der die Erde umsegelte?', 'history', 1),
(119, 'In welchem Jahr wurde die Unabhängigkeitserklärung der USA unterzeichnet?', 'history', 1);
(200, 'Welches Tier ist das größte lebende Landtier?', 'animals', 1),
(201, 'Welches Tier kann am längsten ohne Wasser überleben?\r\n\r\n', 'animals', 1),
(202, 'Welche Vogelart kann nicht fliegen?\r\n\r\n', 'animals', 1),
(203, 'Welches Tier hat den stärksten Biss in Relation zur Körpergröße?\r\n\r\n', 'animals', 1),
(204, 'Welches Tier ist das schnellste an Land?\r\n\r\n', 'animals', 1),
(205, 'Welches Tier schläft am längsten pro Tag?\r\n\r\n', 'animals', 1),
(206, 'Welches Tier ist das größte Säugetier im Wasser?\r\n\r\n', 'animals', 1),
(207, 'Welches Tier kann seine Farbe ändern, um sich zu tarnen?', 'animals', 1),
(208, 'Welches Tier hat drei Herzen?', 'animals', 1),
(209, 'Welches Tier legt Eier und ist trotzdem ein Säugetier?', 'animals', 1),
(210, 'Welches Tier hat das größte Gehirn im Verhältnis zu seiner Körpergröße?', 'animals', 1),
(211, 'Welches Tier ist für seine Fähigkeit bekannt, Werkzeuge zu verwenden?', 'animals', 1),
(212, 'Welches Tier ist das schwerste Insekt?', 'animals', 1),
(213, 'Welches Tier ist das kleinste Säugetier der Welt?', 'animals', 1),
(214, 'Welches Tier ist bekannt für seine langsamen Bewegungen und hängt meist kopfüber an Bäumen?', 'animals', 1),
(215, 'Welches Tier ist bekannt für seine Fähigkeit, sich einzurollen und einen Panzer zu bilden?\r\n\r\n', 'animals', 1),
(216, 'Welches Tier hat den längsten Hals?', 'animals', 1),
(217, 'Welches Tier ist für seine Fähigkeit bekannt, Elektrizität zu erzeugen?', 'animals', 1),
(218, 'Welches Tier lebt in Australien und trägt seine Jungen in einem Beutel?', 'animals', 1),
(219, 'Welches Tier lebt in Kolonien und hat eine Königin?', 'animals', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers_single`
--
ALTER TABLE `answers_single`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `answer_multi`
--
ALTER TABLE `answer_multi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `questions_multi`
--
ALTER TABLE `questions_multi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions_single`
--
ALTER TABLE `questions_single`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers_single`
--
ALTER TABLE `answers_single`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;

--
-- AUTO_INCREMENT for table `answer_multi`
--
ALTER TABLE `answer_multi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

-
--
-- AUTO_INCREMENT for table `questions_multi`
--
ALTER TABLE `questions_multi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `questions_single`
--
ALTER TABLE `questions_single`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- Constraints for dumped tables
--

--
ALTER TABLE `questions_multi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `questions_single`
--
ALTER TABLE `questions_single`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers_single`
--
ALTER TABLE `answers_single`
  ADD CONSTRAINT `answers_single_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions_single` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `answer_multi`
--
ALTER TABLE `answer_multi`
  ADD CONSTRAINT `answer_multi_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions_multi` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
