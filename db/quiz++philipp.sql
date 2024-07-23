-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Jul 23, 2024 at 01:26 PM
-- Server version: 8.4.0
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
(115, 'Dampfmaschine', 0, 104),
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

-- --------------------------------------------------------

--
-- Table structure for table `questionsAlt`
--

CREATE TABLE `questionsAlt` (
  `id` int NOT NULL,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_a` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_b` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_c` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_d` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct_answer` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questionsAlt`
--

INSERT INTO `questionsAlt` (`id`, `question`, `type`, `answer_a`, `answer_b`, `answer_c`, `answer_d`, `correct_answer`) VALUES
(1, 'Wie heißt die Hauptstadt der Slowakei?', 'geography', 'Sofia', 'Prag', 'Bratislava', 'Ljubljan', 'c'),
(2, 'Wie heißt die Hauptstadt von Äthiopien?', 'geography', 'Nairobi', 'Mogadischu', 'Harare', 'Addis Abeba', 'd'),
(3, 'Teneriffa, Gran Canaria und Fuerteventura gehören zu den…?', 'geography', 'Kanarischen Inseln', 'Balearen', 'Karibischen Inseln', 'Azoren', 'a'),
(4, 'In welchem Meer liegt die Insel Hawaii?', 'geography', 'Atlantischer Ozean', 'Indischer Ozean', 'Karibisches Meer', 'Pazifischer Ozean', 'd'),
(5, 'Was ist die größte Insel der Welt?', 'geography', 'Australien', 'Neuguinea', 'Grönland', 'Borneo', 'c'),
(6, 'Wie heißt die Hauptstadt von Australien?', 'geography', 'Canberra', 'Melbourne', 'Perth', 'Sydney', 'a'),
(7, 'Welches deutsche Bundesland ist flächenmäßig das größte?', 'geography', 'Bayern', 'Nordrhein-Westfalen', 'Niedersachsen', 'Baden-Würtemberg', 'a'),
(8, 'Wie tief ist der Marianengraben?', 'geography', '7.000 Meter', '9.000 Meter', '11.000 Meter', '13.000 Meter', 'c'),
(9, 'Wie lang ist die Chinesische Mauer (gerundet)?', 'geography', '12.000 Kilometer', '15.000 Kilometer', '18.000 Kilometer', '21.000 Kilometer', 'd'),
(10, 'Zu welchem Land gehört Grönland politisch?', 'geography', 'Norwegen', 'USA', 'Island', 'Dänemark', 'd'),
(11, 'Wo befindet sich der größte Vulkan der Erde?', 'geography', 'Hawaii', 'Indonesien', 'Chile', 'Island', 'a'),
(12, 'Wie heißt das kleinste Land der Welt?', 'geography', 'Monaco', 'Die Vatikanstadt', 'San Marino', 'Nauru', 'b'),
(13, 'Wie heißt der längste Fluss der welt?', 'geography', 'Nil', 'Amazonas', 'Jangtsekiang', 'Missouri', 'a'),
(14, 'Was ist der flächenmäßig größte US-Bundesstaat?', 'geography', 'Kalifornien', 'Texas', 'Alaska', 'Montana', 'c'),
(15, 'Zu welchem ​​Land gehören die Kanarischen Inseln?', 'geography', 'Portugal', 'Frankreich', 'Spanien', 'Italien', 'c'),
(16, 'Wie heißt der zweithöchste Berg der Welt?', 'geography', 'Mount Everest', 'K2', 'Lhotse', 'Kangchenjunga', 'b'),
(17, 'In welchem ​​Land befindet sich der Mount Everest?', 'geography', 'China', 'Nepal', 'Indien', 'Bhutan', 'b'),
(18, 'In welchem ​​Land verlaufen die Nazca-Linien?', 'geography', 'Peru', 'Brasilien', 'Mexiko', 'Chile', 'a'),
(19, 'Der Preikestolen ist ein erstaunlicher Anblick, über den Fjorden welchen Landes?', 'geography', 'Norwegen', 'Schweden', 'Island', 'Finnland', 'a'),
(20, 'Wenn ich auf den Trevi-Brunnen schaue, in welcher Stadt befinde ich mich?', 'geography', 'Venedig', 'Florenz', 'Mailand', 'Rom', 'd'),
(100, 'Wer war der erste Präsident der Vereinigten Staaten?', 'history', 'Thomas Jefferson', 'George Washington', 'Abraham Lincoln', 'John Adams', 'b'),
(101, 'In welchem Jahr endete der Zweite Weltkrieg?', 'history', '1943', '1944', '1945', '1946', 'c'),
(102, 'Wer malte die Mona Lisa?', 'history', 'Vincent van Gogh', 'Pablo Picasso', 'Leonardo da Vinci', 'Michelangelo', 'c'),
(103, 'Welches antike Weltwunder steht noch heute?', 'history', 'Koloss von Rhodos', 'Hängende Gärten von Babylon', 'Leuchtturm von Alexandria', 'Pyramiden von Gizeh', 'd'),
(104, 'Wer war die erste Frau im Weltall?', 'history', 'Sally Ride', 'Valentina Tereschkowa', 'Mae Jemison', 'Eileen Collins', 'b'),
(105, 'In welchem Jahr fiel die Berliner Mauer?', 'history', '1987', '1989', '1991', '1993', 'b'),
(106, 'Wer war der erste Mensch auf dem Mond?', 'history', 'Buzz Aldrin', 'Yuri Gagarin', 'Neil Armstrong', 'John Glenn', 'c'),
(107, 'Welches Land verschenkte die Freiheitsstatue an die USA?', 'history', 'England', 'Deutschland', 'Italien', 'Frankreich', 'd'),
(108, 'Wer schrieb \"Romeo und Julia\"?', 'history', 'Charles Dickens', 'William Shakespeare', 'Jane Austen', 'Mark Twain', 'b'),
(109, 'In welchem Jahr wurde Amerika von Christoph Kolumbus entdeckt?', 'history', '1492', '1500', '1510', '1520', 'a'),
(110, 'Wer war der erste römische Kaiser?', 'history', 'Julius Caesar', 'Augustus', 'Nero', 'Claudius', 'b'),
(111, 'Welches Jahr gilt als Beginn der Französischen Revolution?', 'history', '1776', '1789', '1804', '1812', 'b'),
(112, 'Wer erfand den Buchdruck mit beweglichen Lettern in Europa?', 'history', 'Gutenberg', 'Da Vinci', 'Galileo', 'Newton', 'a'),
(113, 'Welche alte Zivilisation baute die Pyramiden in Ägypten?', 'history', 'Griechen', 'Römer', 'Perser', 'Ägypter', 'd'),
(114, 'Wer war die letzte Königin von Frankreich vor der Revolution?', 'history', 'Elisabeth I.', 'Katharina die Große', 'Marie Antoinette', 'Victoria', 'c'),
(115, 'In welchem Jahr begann der Erste Weltkrieg?', 'history', '1905', '1914', '1918', '1925', 'b'),
(116, 'Wer war der Anführer der Unabhängigkeitsbewegung in Indien?', 'history', 'Jawaharlal Nehru', 'Mahatma Gandhi', 'Subhas Chandra Bose', 'Sardar Patel', 'b'),
(117, 'Welches Ereignis markiert den Beginn der Renaissance?', 'history', 'Der Fall Konstantinopels', 'Die Entdeckung Amerikas', 'Die Erfindung des Buchdrucks', 'Das Ende des Hundertjährigen Krieges', 'c'),
(118, 'Wer war der erste Mensch, der die Erde umsegelte?', 'history', 'Christoph Kolumbus', 'Ferdinand Magellan', 'James Cook', 'Marco Polo', 'b'),
(119, 'In welchem Jahr wurde die Unabhängigkeitserklärung der USA unterzeichnet?', 'history', '1770', '1773', '1776', '1781', 'c'),
(200, 'Welches Tier ist das größte lebende Landtier?', 'animals', 'Elefant', 'Nashorn', 'Giraffe', 'Nilpferd', 'a'),
(201, 'Welches Tier kann am längsten ohne Wasser überleben?\r\n\r\n', 'animals', 'Kamel', 'Giraffe', 'Wüstenspringmaus', 'Känguru', 'a'),
(203, 'Welche Vogelart kann nicht fliegen?\r\n\r\n', 'animals', 'Strauß', 'Adler', 'Papagei', 'Albatros', 'a'),
(204, 'Welches Tier hat den stärksten Biss in Relation zur Körpergröße?\r\n\r\n', 'animals', 'Krokodil', 'Löwe', 'Ameise', 'Hai', 'c'),
(205, 'Welches Tier ist das schnellste an Land?\r\n\r\n', 'animals', 'Löwe', 'Gepard', 'Antilope', 'Pferd', 'b'),
(206, 'Welches Tier schläft am längsten pro Tag?\r\n\r\n', 'animals', 'Löwe', 'Katze', 'Koala', 'Fledermaus', 'c'),
(207, 'Welches Tier ist das größte Säugetier im Wasser?\r\n\r\n', 'animals', 'Hai', 'Delfin', 'Blauwal', 'Seehund', 'c'),
(208, 'Welches Tier kann seine Farbe ändern, um sich zu tarnen?', 'animals', 'Tintenfisch', 'Chamäleon', 'Frosch', 'Eidechse', 'b'),
(209, 'Welches Tier hat drei Herzen?', 'animals', 'Oktopus', 'Elefant', 'Hai', 'Delfin', 'a'),
(210, 'Welches Tier legt Eier und ist trotzdem ein Säugetier?', 'animals', 'Känguru', 'Schnabeltier', 'Wal', 'Seekuh', 'b'),
(211, 'Welches Tier hat das größte Gehirn im Verhältnis zu seiner Körpergröße?', 'animals', 'Mensch', 'Elefant', 'Delfin', 'Ameise', 'd'),
(212, 'Welches Tier ist für seine Fähigkeit bekannt, Werkzeuge zu verwenden?', 'animals', 'Hund', 'Katze', 'Schimpanse', 'Pferd', 'c'),
(213, 'Welches Tier ist das schwerste Insekt?', 'animals', 'Grashüpfer', 'Käfer', 'Goliathkäfer', 'Ameise', 'c'),
(214, 'Welches Tier ist das kleinste Säugetier der Welt?', 'animals', 'Spitzmaus', 'Maus', 'Hamster', 'Fledermaus', 'a'),
(215, 'Welches Tier ist bekannt für seine langsamen Bewegungen und hängt meist kopfüber an Bäumen?', 'animals', 'Faultier', 'Koala', 'Panda', 'Lemur', 'a'),
(216, 'Welches Tier ist bekannt für seine Fähigkeit, sich einzurollen und einen Panzer zu bilden?\r\n\r\n', 'animals', 'Schildkröte', 'Schnecke', 'Gürteltier', 'Igel', 'c'),
(217, 'Welches Tier hat den längsten Hals?', 'animals', 'Elefant', 'Giraffe', 'Strauß', 'Kamel', 'b'),
(218, 'Welches Tier ist für seine Fähigkeit bekannt, Elektrizität zu erzeugen?', 'animals', 'Zitterrochen', 'Delfin', 'Seepferdchen', 'Aal', 'a'),
(219, 'Welches Tier lebt in Australien und trägt seine Jungen in einem Beutel?', 'animals', 'Koala', 'Panda', 'Löwe', 'Tiger', 'a'),
(220, 'Welches Tier lebt in Kolonien und hat eine Königin?', 'animals', 'Biene', 'Spinne', 'Vogel', 'Schildkröte', 'a'),
(300, 'Wer war der Trainer der Schweizer Nationalmannschaft während der FIFA-Weltmeisterschaft 1994?', 'Fussball', 'Georg Bregy', 'Köbi Kuhn', 'Roy Hodgson', 'Ottmar Hitzfeld', 'c'),
(301, 'Welcher Schweizer Spieler erzielte das erste Tor der Mannschaft bei der UEFA Euro 1996?', 'Fussball', 'Alex Frei', 'Kubilay Türkyilmaz', 'Stephan Chapuisat', 'Georg Bregy', 'b'),
(302, 'In welchem Jahr qualifizierte sich die Schweiz zum ersten Mal nach einer langen Pause wieder für die FIFA-Weltmeisterschaft?', 'Fussball', '1986', '1990', '1994', '1998', 'c'),
(303, 'Wie weit kam die Schweizer Nationalmannschaft bei der UEFA Euro 2008, die in der Schweiz und Österreich stattfand?', 'Fussball', 'Gar nicht an die EM', 'Gruppenphase', 'Viertelfinale', 'Finale', 'b'),
(304, 'Welcher Spieler erzielte den entscheidenden Treffer gegen Spanien in der Gruppenphase der FIFA-Weltmeisterschaft 2010?', 'Fussball', 'Gelson Fernandes', 'Admir Mehmedi', 'Alex Frei', 'Mauro Lustrinelli', 'a'),
(305, 'In welchem Jahr erreichte die Schweizer Nationalmannschaft erstmals das Achtelfinale einer FIFA-Weltmeisterschaft?', 'Fussball', '1986', '1990', '1994', '1998', 'c'),
(306, 'Welcher Schweizer Spieler wurde bei der FIFA-Weltmeisterschaft 2018 ins All-Star-Team gewählt?', 'Fussball', 'Keiner ', '1', '2', '3', 'a'),
(307, 'Wie viele Tore erzielte die Schweiz in ihrem höchsten Sieg bei einer FIFA-Weltmeisterschaft?', 'Fussball', '3', '4', '5', '6', 'b'),
(308, 'Wer war der Trainer der Schweizer Nationalmannschaft während der UEFA Euro 2016?', 'Fussball', 'Kübi Kuhn', 'Jürgen Klopp', 'Ottmar Hitzfeld', 'Vladimir Petković', 'd'),
(309, 'Welcher Schweizer Spieler erzielte das entscheidende Tor im Elfmeterschießen gegen Frankreich bei der UEFA Euro 2020?', 'Fussball', 'Granit Xhaka', 'Ruben Vargas', 'Haris Seferović', 'Admir Mehmedi', 'b'),
(310, 'In welchem Jahr gewann die Schweiz die FIFA U-17-Weltmeisterschaft?', 'Fussball', '2005', '2009', '2013', '2017', 'b'),
(311, 'Wer erzielte das entscheidende Tor für die Schweiz im Playoff-Spiel gegen Nordirland, das ihnen die Qualifikation für die FIFA-Weltmeisterschaft 2018 sicherte?', 'Fussball', 'Ricardo Rodriguez (Elfmeter)', 'Xherdan Shaqiri (Elfmeter)', 'Haris Seferović (Elfmeter)', 'Manuel Akanji (Elfmeter)', 'a'),
(312, 'Wie viele Tore erzielte Haris Seferovic bei der UEFA Nations League 2018/19?', 'Fussball', '3', '4', '5', '6', 'c'),
(313, 'Welcher Schweizer Torhüter hielt den entscheidenden Elfmeter im Spiel gegen Frankreich bei der UEFA Euro 2020?', 'Fussball', 'Diego Benaglio', 'Uwe Still', 'Gregor Kobel', 'Yann Sommer', 'd'),
(314, 'Wie viele Male hat die Schweiz in den letzten 30 Jahren die Gruppenphase einer FIFA-Weltmeisterschaft überstanden?', 'Fussball', '1 Mal', '2 Mal', '3 Mal', '4 Mal', 'd'),
(315, 'Welcher Schweizer Trainer führte die Mannschaft zur FIFA-Weltmeisterschaft 2018?', 'Fussball', 'Vladimir Petković', 'Ottmar Hitzfeld', 'Kübi Kuhn', 'Murat Yakin', 'a'),
(316, 'Wer erzielte das erste Tor der Schweiz bei der UEFA Euro 2020?', 'Fussball', 'Granit Xhaka', 'Breel Embolo', 'Mario Gavranovic', 'Remo Freuler', 'b'),
(317, 'Gegen welche Mannschaft verlor die Schweiz im Viertelfinale der UEFA Euro 2020, nachdem das Spiel nach 120 Minuten 1:1 endete und im Elfmeterschießen entschieden wurde?', 'Fussball', 'Spanien', 'Italien', 'England', 'Deutschland', 'a'),
(318, 'Gegen welche Mannschaft verlor die Schweiz im Achtelfinale der FIFA Weltmeisterschaft 2006 in Deutschland?', 'Fussball', 'Deutschland', 'Ukraine', 'Holland', 'Frankreich', 'b'),
(319, 'Wer ist der aktuelle Trainer der Schweizer Nationalmannschaft?', 'Fussball', 'Hakan Yakin', 'Murat Yakin', 'Gökan Yakin', 'Türklimatz Yakin', 'b');

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
-- Indexes for table `questionsAlt`
--
ALTER TABLE `questionsAlt`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `answer_multi`
--
ALTER TABLE `answer_multi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `questionsAlt`
--
ALTER TABLE `questionsAlt`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=320;

--
-- AUTO_INCREMENT for table `questions_multi`
--
ALTER TABLE `questions_multi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `questions_single`
--
ALTER TABLE `questions_single`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

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
