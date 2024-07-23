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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

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
