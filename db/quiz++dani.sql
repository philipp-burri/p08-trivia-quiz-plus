-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Jul 23, 2024 at 01:11 PM
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
