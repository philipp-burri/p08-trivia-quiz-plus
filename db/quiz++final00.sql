-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Jul 25, 2024 at 02:32 PM
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
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int NOT NULL,
  `answer` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_correct` tinyint(1) NOT NULL,
  `question_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `answer`, `is_correct`, `question_id`) VALUES
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
(40, 'Mallorca', 0, 10),
(41, 'Maximilien Robespierre', 1, 11),
(42, 'Napoleon Bonaparte', 0, 11),
(43, 'Georges Danton', 1, 11),
(44, 'Jean-Paul Marat', 1, 11),
(45, 'Griechen', 1, 12),
(46, 'Römer', 1, 12),
(47, 'Maya', 0, 12),
(48, 'Ägypter', 1, 12),
(49, 'Attentat von Sarajevo', 1, 13),
(50, 'Russische Revolution', 0, 13),
(51, 'Julikrise', 1, 13),
(52, 'Balkankrise', 1, 13),
(53, 'Brille', 1, 14),
(54, 'Mechanische Uhr', 1, 14),
(55, 'Dampfmaschine', 0, 14),
(56, 'Schießpulver (in Europa)', 1, 14),
(57, 'Deutschland', 1, 15),
(58, 'Sowjetunion', 0, 15),
(59, 'Italien', 1, 15),
(60, 'Japan', 1, 15),
(61, 'Voltaire', 1, 16),
(62, 'John Locke', 1, 16),
(63, 'Immanuel Kant', 1, 16),
(64, 'Martin Luther', 0, 16),
(65, 'Invasionen germanischer Stämme', 1, 17),
(66, 'Wirtschaftliche Probleme', 1, 17),
(67, 'Politische Instabilität', 1, 17),
(68, 'Entdeckung Amerikas', 0, 17),
(69, 'Florenz', 1, 18),
(70, 'Venedig', 1, 18),
(71, 'Rom', 1, 18),
(72, 'London', 0, 18),
(73, 'George Washington', 1, 19),
(74, 'Thomas Jefferson', 1, 19),
(75, 'Benjamin Franklin', 1, 19),
(76, 'Abraham Lincoln', 0, 19),
(77, 'Kubakrise', 1, 20),
(78, 'Berliner Blockade', 1, 20),
(79, 'Koreakrieg', 1, 20),
(80, 'Schlacht von Waterloo', 0, 20),
(81, 'Adler', 1, 21),
(82, 'Pinguin', 0, 21),
(83, 'Schmetterling', 1, 21),
(84, 'Fledermaus', 1, 21),
(85, 'Delphin', 1, 22),
(86, 'Krokodil', 0, 22),
(87, 'Elefant', 1, 22),
(88, 'Hai', 0, 22),
(89, 'Wal', 1, 23),
(90, 'Seepferdchen', 1, 23),
(91, 'Papagei', 0, 23),
(92, 'Qualle', 1, 23),
(93, 'Löwe', 1, 24),
(94, 'Hirsch', 0, 24),
(95, 'Wolf', 1, 24),
(96, 'Schaf', 0, 24),
(97, 'Kuh', 1, 25),
(98, 'Tiger', 0, 25),
(99, 'Pferd', 1, 25),
(100, 'Elefant', 1, 25),
(101, 'Chamäleon', 1, 26),
(102, 'Tintenfisch', 1, 26),
(103, 'Känguru', 0, 26),
(104, 'Krake', 1, 26),
(105, 'Frosch', 1, 27),
(106, 'Ente', 0, 27),
(107, 'Krokodil', 1, 27),
(108, 'Affe', 0, 27),
(109, 'Eule', 1, 28),
(110, 'Waschbär', 1, 28),
(111, 'Spatz', 0, 28),
(112, 'Fledermaus', 1, 28),
(113, 'Schlange', 1, 29),
(114, 'Schildkröte', 1, 29),
(115, 'Frosch', 0, 29),
(116, 'Eidechse', 1, 29),
(117, 'Huhn', 1, 30),
(118, 'Wal', 0, 30),
(119, 'Ente', 1, 30),
(120, 'Schlange', 1, 30),
(121, 'Sofia', 0, 31),
(122, 'Prag', 0, 31),
(123, 'Bratislava', 1, 31),
(124, 'Ljubljan', 0, 31),
(125, 'Nairobi', 0, 32),
(126, 'Mogadischu', 0, 32),
(127, 'Harare', 0, 32),
(128, 'Addis Abeba', 1, 32),
(129, 'Kanarischen Inseln', 1, 33),
(130, 'Balearen', 0, 33),
(131, 'Karibischen Inseln', 0, 33),
(132, 'Azoren', 0, 33),
(133, 'Atlantischer Ozean', 0, 34),
(134, 'Indischer Ozean', 0, 34),
(135, 'Karibisches Meer', 0, 34),
(136, 'Pazifischer Ozean', 1, 34),
(137, 'Australien', 0, 35),
(138, 'Neuguinea', 0, 35),
(139, 'Grönland', 1, 35),
(140, 'Borneo', 0, 35),
(141, 'Canberra', 1, 36),
(142, 'Melbourne', 0, 36),
(143, 'Perth', 0, 36),
(144, 'Sydney', 0, 36),
(145, 'Bayern', 1, 37),
(146, 'Nordrhein-Westfalen', 0, 37),
(147, 'Niedersachsen', 0, 37),
(148, 'Baden-Würtemberg', 0, 37),
(149, '7.000 Meter', 0, 38),
(150, '9.000 Meter', 0, 38),
(151, '11.000 Meter', 1, 38),
(152, '13.000 Meter', 0, 38),
(153, '12.000 Kilometer', 0, 39),
(154, '15.000 Kilometer', 0, 39),
(155, '18.000 Kilometer', 0, 39),
(156, '21.000 Kilometer', 1, 39),
(157, 'Norwegen', 0, 40),
(158, 'USA', 0, 40),
(159, 'Island', 0, 40),
(160, 'Dänemark', 1, 40),
(161, 'Hawaii', 1, 41),
(162, 'Indonesien', 0, 41),
(163, 'Chile', 0, 41),
(164, 'Island', 0, 41),
(165, 'Monaco', 0, 42),
(166, 'Die Vatikanstadt', 1, 42),
(167, 'San Marino', 0, 42),
(168, 'Nauru', 0, 42),
(169, 'Nil', 1, 43),
(170, 'Amazonas', 0, 43),
(171, 'Jangtsekiang', 0, 43),
(172, 'Missouri', 0, 43),
(173, 'Kalifornien', 0, 44),
(174, 'Texas', 0, 44),
(175, 'Alaska', 1, 44),
(176, 'Montana', 0, 44),
(177, 'Portugal', 0, 45),
(178, 'Frankreich', 0, 45),
(179, 'Spanien', 1, 45),
(180, 'Italien', 0, 45),
(181, 'Mount Everest', 0, 46),
(182, 'K2', 1, 46),
(183, 'Lhotse', 0, 46),
(184, 'Kangchenjunga', 0, 46),
(185, 'China', 0, 47),
(186, 'Nepal', 1, 47),
(187, 'Indien', 0, 47),
(188, 'Bhutan', 0, 47),
(189, 'Peru', 1, 48),
(190, 'Brasilien', 0, 48),
(191, 'Mexiko', 0, 48),
(192, 'Chile', 0, 48),
(193, 'Norwegen', 1, 49),
(194, 'Schweden', 0, 49),
(195, 'Island', 0, 49),
(196, 'Finnland', 0, 49),
(197, 'Venedig', 0, 50),
(198, 'Florenz', 0, 50),
(199, 'Mailand', 0, 50),
(200, 'Rom', 1, 50),
(201, 'Thomas Jefferson', 0, 51),
(202, 'George Washington', 1, 51),
(203, 'Abraham Lincoln', 0, 51),
(204, 'John Adams', 0, 51),
(205, '1943', 0, 52),
(206, '1944', 0, 52),
(207, '1945', 1, 52),
(208, '1946', 0, 52),
(209, 'Vincent van Gogh', 0, 53),
(210, 'Pablo Picasso', 0, 53),
(211, 'Leonardo da Vinci', 1, 53),
(212, 'Michelangelo', 0, 53),
(213, 'Koloss von Rhodos', 0, 54),
(214, 'Hängende Gärten von Babylon', 0, 54),
(215, 'Leuchtturm von Alexandria', 0, 54),
(216, 'Pyramiden von Gizeh', 1, 54),
(217, 'Sally Ride', 0, 55),
(218, 'Valentina Tereschkowa', 1, 55),
(219, 'Mae Jemison', 0, 55),
(220, 'Eileen Collins', 0, 55),
(221, '1987', 0, 56),
(222, '1989', 1, 56),
(223, '1991', 0, 56),
(224, '1993', 0, 56),
(225, 'Buzz Aldrin', 0, 57),
(226, 'Yuri Gagarin', 0, 57),
(227, 'Neil Armstrong', 1, 57),
(228, 'John Glenn', 0, 57),
(229, 'England', 0, 58),
(230, 'Deutschland', 0, 58),
(231, 'Italien', 0, 58),
(232, 'Frankreich', 1, 58),
(233, 'Charles Dickens', 0, 59),
(234, 'William Shakespeare', 1, 59),
(235, 'Jane Austen', 0, 59),
(236, 'Mark Twain', 0, 59),
(237, '1492', 1, 60),
(238, '1500', 0, 60),
(239, '1510', 0, 60),
(240, '1520', 0, 60),
(241, 'Julius Caesar', 0, 61),
(242, 'Augustus', 1, 61),
(243, 'Nero', 0, 61),
(244, 'Claudius', 0, 61),
(245, '1776', 0, 62),
(246, '1789', 1, 62),
(247, '1804', 0, 62),
(248, '1812', 0, 62),
(249, 'Gutenberg', 1, 63),
(250, 'Da Vinci', 0, 63),
(251, 'Galileo', 0, 63),
(252, 'Newton', 0, 63),
(253, 'Griechen', 0, 64),
(254, 'Römer', 0, 64),
(255, 'Perser', 0, 64),
(256, 'Ägypter', 1, 64),
(257, 'Elisabeth I.', 0, 65),
(258, 'Katharina die Große', 0, 65),
(259, 'Marie Antoinette', 1, 65),
(260, 'Victoria', 0, 65),
(261, '1905', 0, 66),
(262, '1914', 1, 66),
(263, '1918', 0, 66),
(264, '1925', 0, 66),
(265, 'Jawaharlal Nehru', 0, 67),
(266, 'Mahatma Gandhi', 1, 67),
(267, 'Subhas Chandra Bose', 0, 67),
(268, 'Sardar Patel', 0, 67),
(269, 'Der Fall Konstantinopels', 0, 68),
(270, 'Die Entdeckung Amerikas', 0, 68),
(271, 'Die Erfindung des Buchdrucks', 1, 68),
(272, 'Das Ende des Hundertjährigen Krieges', 0, 68),
(273, 'Christoph Kolumbus', 0, 69),
(274, 'Ferdinand Magellan', 1, 69),
(275, 'James Cook', 0, 69),
(276, 'Marco Polo', 0, 69),
(277, '1770', 0, 70),
(278, '1773', 0, 70),
(279, '1776', 1, 70),
(280, '1781', 0, 70),
(281, 'Elefant', 1, 71),
(282, 'N;iraffe', 0, 72),
(287, 'Wüstenspringmaus', 0, 72),
(288, 'Känguru', 0, 72),
(289, 'Strauß', 1, 73),
(290, 'Adler', 0, 73),
(291, 'Papagei', 0, 73),
(292, 'Albatros', 0, 73),
(293, 'Krokodil', 0, 74),
(294, 'Löwe', 0, 74),
(295, 'Ameise', 1, 74),
(296, 'Hai', 0, 74),
(297, 'Löwe', 0, 75),
(298, 'Gepard', 1, 75),
(299, 'Antilope', 0, 75),
(300, 'Pferd', 0, 75),
(301, 'Löwe', 0, 76),
(302, 'Katze', 0, 76),
(303, 'Koala', 1, 76),
(304, 'Fledermaus', 0, 76),
(305, 'Hai', 0, 77),
(306, 'Delfin', 0, 77),
(307, 'Blauwal', 1, 77),
(308, 'Seehund', 0, 77),
(309, 'Tintenfisch', 0, 78),
(310, 'Chamäleon', 1, 78),
(311, 'Frosch', 0, 78),
(312, 'Eidechse', 0, 78),
(313, 'Oktopus', 1, 79),
(314, 'Elefant', 0, 79),
(315, 'Hai', 0, 79),
(316, 'Delfin', 0, 79),
(317, 'Känguru', 0, 80),
(318, 'Schnabeltier', 1, 80),
(319, 'Wal', 0, 80),
(320, 'Seekuh', 0, 80),
(321, 'Mensch', 0, 81),
(322, 'Elefant', 0, 81),
(323, 'Delfin', 0, 81),
(324, 'Ameise', 1, 81),
(325, 'Hund', 0, 82),
(326, 'Katze', 0, 82),
(327, 'Schimpanse', 1, 82),
(328, 'Pferd', 0, 82),
(329, 'Grashüpfer', 0, 83),
(330, 'Käfer', 0, 83),
(331, 'Goliathkäfer', 1, 83),
(332, 'Ameise', 0, 83),
(333, 'S;Lemur', 0, 85),
(341, 'Schildkröte', 0, 86),
(342, 'Schnecke', 0, 86),
(343, 'Gürteltier', 1, 86),
(344, 'Igel', 0, 86),
(345, 'Elefant', 0, 87),
(346, 'Giraffe', 1, 87),
(347, 'Strauß', 0, 87),
(348, 'Kamel', 0, 87),
(349, 'Zitterrochen', 1, 88),
(350, 'Delfin', 0, 88),
(351, 'Seepferdchen', 0, 88),
(352, 'Aal', 0, 88),
(353, 'Koala', 1, 89),
(354, 'Panda', 0, 89),
(355, 'Löwe', 0, 89),
(356, 'Tiger', 0, 89),
(357, 'Biene', 1, 90),
(358, 'Spinne', 0, 90),
(359, 'Vogel', 0, 90),
(360, 'Schildkröte', 0, 90);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int NOT NULL,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int NOT NULL,
  `is_multi` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `type`, `level`, `is_multi`) VALUES
(1, 'Welche der folgenden Länder haben Küsten an der Ostsee?', 'geography', 1, 1),
(2, 'Welche der folgenden Flüsse fließen durch Deutschland?', 'geography', 1, 1),
(3, 'Welche der folgenden Länder gehören zur Europäischen Union?', 'geography', 1, 1),
(4, 'Welche der folgenden Hauptstädte befinden sich in Asien?', 'geography', 1, 1),
(5, 'Welche der folgenden Länder haben Küsten am Mittelmeer?', 'geography', 1, 1),
(6, 'Welche der folgenden Flüsse befinden sich in Afrika?', 'geography', 1, 1),
(7, 'Welche der folgenden Städte liegen in Europa?', 'geography', 1, 1),
(8, 'Welche der folgenden Berge liegen in den Alpen?', 'geography', 1, 1),
(9, 'Welche der folgenden Länder grenzen an den Atlantischen Ozean?', 'geography', 1, 1),
(10, 'Welche der folgenden Inseln gehören zu Italien?', 'geography', 1, 1),
(11, 'Welche der folgenden Personen waren bedeutende Anführer während der Französischen Revolution?', 'history', 1, 1),
(12, 'Welche antiken Zivilisationen hatten signifikanten Einfluss auf die Entwicklung der westlichen Kultur?', 'history', 1, 1),
(13, 'Welche Ereignisse trugen zum Ausbruch des Ersten Weltkriegs bei?', 'history', 1, 1),
(14, 'Welche der folgenden Erfindungen stammen aus dem Mittelalter?', 'history', 1, 1),
(15, 'Welche Länder waren Teil der Achsenmächte im Zweiten Weltkrieg?', 'history', 1, 1),
(16, 'Welche dieser Personen waren bedeutende Figuren der Aufklärung?', 'history', 1, 1),
(17, 'Welche Faktoren trugen zum Fall des Römischen Reiches bei?', 'history', 1, 1),
(18, 'Welche dieser Städte waren wichtige Zentren der Renaissance?', 'history', 1, 1),
(19, 'Welche dieser Personen spielten eine wichtige Rolle in der amerikanischen Unabhängigkeitsbewegung?', 'history', 1, 1),
(20, 'Welche dieser Ereignisse waren Teil des Kalten Krieges?', 'history', 1, 1),
(21, 'Welche dieser Tiere können fliegen?', 'animals', 1, 1),
(22, 'Welche Tiere sind Säugetiere?', 'animals', 1, 1),
(23, 'Welche dieser Tiere leben im Meer?', 'animals', 1, 1),
(24, 'Welche Tiere sind Raubtiere?', 'animals', 1, 1),
(25, 'Welche dieser Tiere sind Pflanzenfresser?', 'animals', 1, 1),
(26, 'Welche dieser Tiere können ihre Farbe ändern?', 'animals', 1, 1),
(27, 'Welche dieser Tiere leben auf dem Land und im Wasser (amphibisch)?', 'animals', 1, 1),
(28, 'Welche dieser Tiere sind nachtaktiv?', 'animals', 1, 1),
(29, 'Welche dieser Tiere sind Reptilien?', 'animals', 1, 1),
(30, 'Welche dieser Tiere legen Eier?', 'animals', 1, 1),
(31, 'Wie heißt die Hauptstadt der Slowakei?', 'geography', 1, 0),
(32, 'Wie heißt die Hauptstadt von Äthiopien?', 'geography', 1, 0),
(33, 'Teneriffa, Gran Canaria und Fuerteventura gehören zu den…?', 'geography', 1, 0),
(34, 'In welchem Meer liegt die Insel Hawaii?', 'geography', 1, 0),
(35, 'Was ist die größte Insel der Welt?', 'geography', 1, 0),
(36, 'Wie heißt die Hauptstadt von Australien?', 'geography', 1, 0),
(37, 'Welches deutsche Bundesland ist flächenmäßig das größte?', 'geography', 1, 0),
(38, 'Wie tief ist der Marianengraben?', 'geography', 1, 0),
(39, 'Wie lang ist die Chinesische Mauer (gerundet)?', 'geography', 1, 0),
(40, 'Zu welchem Land gehört Grönland politisch?', 'geography', 1, 0),
(41, 'Wo befindet sich der größte Vulkan der Erde?', 'geography', 1, 0),
(42, 'Wie heißt das kleinste Land der Welt?', 'geography', 1, 0),
(43, 'Wie heißt der längste Fluss der welt?', 'geography', 1, 0),
(44, 'Was ist der flächenmäßig größte US-Bundesstaat?', 'geography', 1, 0),
(45, 'Zu welchem ​​Land gehören die Kanarischen Inseln?', 'geography', 1, 0),
(46, 'Wie heißt der zweithöchste Berg der Welt?', 'geography', 1, 0),
(47, 'In welchem ​​Land befindet sich der Mount Everest?', 'geography', 1, 0),
(48, 'In welchem ​​Land verlaufen die Nazca-Linien?', 'geography', 1, 0),
(49, 'Der Preikestolen ist ein erstaunlicher Anblick, über den Fjorden welchen Landes?', 'geography', 1, 0),
(50, 'Wenn ich auf den Trevi-Brunnen schaue, in welcher Stadt befinde ich mich?', 'geography', 1, 0),
(51, 'Wer war der erste Präsident der Vereinigten Staaten?', 'history', 1, 0),
(52, 'In welchem Jahr endete der Zweite Weltkrieg?', 'history', 1, 0),
(53, 'Wer malte die Mona Lisa?', 'history', 1, 0),
(54, 'Welches antike Weltwunder steht noch heute?', 'history', 1, 0),
(55, 'Wer war die erste Frau im Weltall?', 'history', 1, 0),
(56, 'In welchem Jahr fiel die Berliner Mauer?', 'history', 1, 0),
(57, 'Wer war der erste Mensch auf dem Mond?', 'history', 1, 0),
(58, 'Welches Land verschenkte die Freiheitsstatue an die USA?', 'history', 1, 0),
(59, 'Wer schrieb \"Romeo und Julia\"?', 'history', 1, 0),
(60, 'In welchem Jahr wurde Amerika von Christoph Kolumbus entdeckt?', 'history', 1, 0),
(61, 'Wer war der erste römische Kaiser?', 'history', 1, 0),
(62, 'Welches Jahr gilt als Beginn der Französischen Revolution?', 'history', 1, 0),
(63, 'Wer erfand den Buchdruck mit beweglichen Lettern in Europa?', 'history', 1, 0),
(64, 'Welche alte Zivilisation baute die Pyramiden in Ägypten?', 'history', 1, 0),
(65, 'Wer war die letzte Königin von Frankreich vor der Revolution?', 'history', 1, 0),
(66, 'In welchem Jahr begann der Erste Weltkrieg?', 'history', 1, 0),
(67, 'Wer war der Anführer der Unabhängigkeitsbewegung in Indien?', 'history', 1, 0),
(68, 'Welches Ereignis markiert den Beginn der Renaissance?', 'history', 1, 0),
(69, 'Wer war der erste Mensch, der die Erde umsegelte?', 'history', 1, 0),
(70, 'In welchem Jahr wurde die Unabhängigkeitserklärung der USA unterzeichnet?', 'history', 1, 0),
(71, 'Welches Tier ist das größte lebende Landtier?', 'animals', 1, 0),
(72, 'Welches Tier kann am längsten ohne Wasser überleben?', 'animals', 1, 0),
(73, 'Welche Vogelart kann nicht fliegen?', 'animals', 1, 0),
(74, 'Welches Tier hat den stärksten Biss in Relation zur Körpergröße?', 'animals', 1, 0),
(75, 'Welches Tier ist das schnellste an Land?', 'animals', 1, 0),
(76, 'Welches Tier schläft am längsten pro Tag?', 'animals', 1, 0),
(77, 'Welches Tier ist das größte Säugetier im Wasser?', 'animals', 1, 0),
(78, 'Welches Tier kann seine Farbe ändern, um sich zu tarnen?', 'animals', 1, 0),
(79, 'Welches Tier hat drei Herzen?', 'animals', 1, 0),
(80, 'Welches Tier legt Eier und ist trotzdem ein Säugetier?', 'animals', 1, 0),
(81, 'Welches Tier hat das größte Gehirn im Verhältnis zu seiner Körpergröße?', 'animals', 1, 0),
(82, 'Welches Tier ist für seine Fähigkeit bekannt, Werkzeuge zu verwenden?', 'animals', 1, 0),
(83, 'Welches Tier ist das schwerste Insekt?', 'animals', 1, 0),
(84, 'Welches Tier ist das kleinste Säugetier der Welt?', 'animals', 1, 0),
(85, 'Welches Tier ist bekannt für seine langsamen Bewegungen und hängt meist kopfüber an Bäumen?', 'animals', 1, 0),
(86, 'Welches Tier ist bekannt für seine Fähigkeit, sich einzurollen und einen Panzer zu bilden?', 'animals', 1, 0),
(87, 'Welches Tier hat den längsten Hals?', 'animals', 1, 0),
(88, 'Welches Tier ist für seine Fähigkeit bekannt, Elektrizität zu erzeugen?', 'animals', 1, 0),
(89, 'Welches Tier lebt in Australien und trägt seine Jungen in einem Beutel?', 'animals', 1, 0),
(90, 'Welches Tier lebt in Kolonien und hat eine Königin?', 'animals', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ranking_advanced`
--

CREATE TABLE `ranking_advanced` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `points` int NOT NULL,
  `time` int NOT NULL,
  `animals` tinyint(1) NOT NULL,
  `geography` tinyint(1) NOT NULL,
  `history` tinyint(1) NOT NULL,
  `beginner` tinyint(1) NOT NULL,
  `advanced` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ranking_advanced`
--

INSERT INTO `ranking_advanced` (`id`, `name`, `points`, `time`, `animals`, `geography`, `history`, `beginner`, `advanced`) VALUES
(49, 'AnimalBeginner1', 100, 120, 1, 0, 0, 1, 0),
(50, 'AnimalBeginner2', 110, 125, 1, 0, 0, 1, 0),
(51, 'AnimalBeginner3', 120, 130, 1, 0, 0, 1, 0),
(52, 'AnimalBeginner4', 130, 135, 1, 0, 0, 1, 0),
(53, 'AnimalBeginner5', 140, 140, 1, 0, 0, 1, 0),
(54, 'AnimalBeginner6', 150, 145, 1, 0, 0, 1, 0),
(55, 'AnimalBeginner7', 160, 150, 1, 0, 0, 1, 0),
(56, 'AnimalBeginner8', 170, 155, 1, 0, 0, 1, 0),
(57, 'AnimalBeginner9', 180, 160, 1, 0, 0, 1, 0),
(58, 'AnimalBeginner10', 190, 165, 1, 0, 0, 1, 0),
(59, 'AnimalAdvanced1', 200, 120, 1, 0, 0, 0, 1),
(60, 'AnimalAdvanced2', 210, 125, 1, 0, 0, 0, 1),
(61, 'AnimalAdvanced3', 220, 130, 1, 0, 0, 0, 1),
(62, 'AnimalAdvanced4', 230, 135, 1, 0, 0, 0, 1),
(63, 'AnimalAdvanced5', 240, 140, 1, 0, 0, 0, 1),
(64, 'AnimalAdvanced6', 250, 145, 1, 0, 0, 0, 1),
(68, 'AnimalAdvanced10', 290, 165, 1, 0, 0, 0, 1),
(69, 'GeographyBeginner1', 100, 120, 0, 1, 0, 1, 0),
(70, 'GeographyBeginner2', 110, 125, 0, 1, 0, 1, 0),
(71, 'GeographyBeginner3', 120, 130, 0, 1, 0, 1, 0),
(72, 'GeographyBeginner4', 130, 135, 0, 1, 0, 1, 0),
(73, 'GeographyBeginner5', 140, 140, 0, 1, 0, 1, 0),
(74, 'GeographyBeginner6', 150, 145, 0, 1, 0, 1, 0),
(75, 'GeographyBeginner7', 160, 150, 0, 1, 0, 1, 0),
(76, 'GeographyBeginner8', 170, 155, 0, 1, 0, 1, 0),
(77, 'GeographyBeginner9', 180, 160, 0, 1, 0, 1, 0),
(78, 'GeographyBeginner10', 190, 165, 0, 1, 0, 1, 0),
(79, 'GeographyAdvanced1', 200, 120, 0, 1, 0, 0, 1),
(80, 'GeographyAdvanced2', 210, 125, 0, 1, 0, 0, 1),
(81, 'GeographyAdvanced3', 220, 130, 0, 1, 0, 0, 1),
(82, 'GeographyAdvanced4', 230, 135, 0, 1, 0, 0, 1),
(83, 'GeographyAdvanced5', 240, 140, 0, 1, 0, 0, 1),
(84, 'GeographyAdvanced6', 250, 145, 0, 1, 0, 0, 1),
(85, 'GeographyAdvanced7', 260, 150, 0, 1, 0, 0, 1),
(86, 'GeographyAdvanced8', 270, 155, 0, 1, 0, 0, 1),
(87, 'GeographyAdvanced9', 280, 160, 0, 1, 0, 0, 1),
(88, 'GeographyAdvanced10', 290, 165, 0, 1, 0, 0, 1),
(89, 'HistoryBeginner1', 100, 120, 0, 0, 1, 1, 0),
(90, 'HistoryBeginner2', 110, 125, 0, 0, 1, 1, 0),
(91, 'HistoryBeginner3', 120, 130, 0, 0, 1, 1, 0),
(92, 'HistoryBeginner4', 130, 135, 0, 0, 1, 1, 0),
(93, 'HistoryBeginner5', 140, 140, 0, 0, 1, 1, 0),
(94, 'HistoryBeginner6', 150, 145, 0, 0, 1, 1, 0),
(95, 'HistoryBeginner7', 160, 150, 0, 0, 1, 1, 0),
(96, 'HistoryBeginner8', 170, 155, 0, 0, 1, 1, 0),
(97, 'HistoryBeginner9', 180, 160, 0, 0, 1, 1, 0),
(98, 'HistoryBeginner10', 190, 165, 0, 0, 1, 1, 0),
(99, 'HistoryAdvanced1', 200, 120, 0, 0, 1, 0, 1),
(100, 'HistoryAdvanced2', 210, 125, 0, 0, 1, 0, 1),
(101, 'HistoryAdvanced3', 220, 130, 0, 0, 1, 0, 1),
(102, 'HistoryAdvanced4', 230, 135, 0, 0, 1, 0, 1),
(103, 'HistoryAdvanced5', 240, 140, 0, 0, 1, 0, 1),
(104, 'HistoryAdvanced6', 250, 145, 0, 0, 1, 0, 1),
(105, 'HistoryAdvanced7', 260, 150, 0, 0, 1, 0, 1),
(106, 'HistoryAdvanced8', 270, 155, 0, 0, 1, 0, 1),
(109, 'Test', 150, 140, 1, 0, 0, 0, 1),
(110, 'Test', 290, 140, 1, 0, 0, 0, 1),
(111, 'Test', 5, 140, 1, 0, 0, 0, 1),
(115, 'Test', 270, 160, 0, 0, 1, 0, 1),
(116, 'Test', 250, 130, 0, 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ranking_simple`
--

CREATE TABLE `ranking_simple` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `points` int NOT NULL,
  `time` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ranking_simple`
--

INSERT INTO `ranking_simple` (`id`, `name`, `points`, `time`) VALUES
(38, 'Test', 101, 166),
(39, 'Test', 101, 166),
(40, 'Test', 101, 166),
(41, 'Test', 101, 166),
(42, 'Test', 101, 166),
(43, 'Test', 101, 166),
(44, 'Test', 101, 166),
(45, 'Test', 101, 166),
(46, 'Test', 101, 166),
(47, 'Test', 102, 170),
(48, 'Test', 101, 165);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ranking_advanced`
--
ALTER TABLE `ranking_advanced`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ranking_simple`
--
ALTER TABLE `ranking_simple`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=361;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `ranking_advanced`
--
ALTER TABLE `ranking_advanced`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `ranking_simple`
--
ALTER TABLE `ranking_simple`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
