-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Jul 23, 2024 at 02:34 PM
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
-- Table structure for table `combined_questions`
--

CREATE TABLE `combined_questions` (
  `id` double DEFAULT NULL,
  `question` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `level` int NOT NULL DEFAULT '0',
  `is_multi` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `combined_questions`
--

INSERT INTO `combined_questions` (`id`, `question`, `type`, `level`, `is_multi`) VALUES
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
(59, 'Wer schrieb "Romeo und Julia"?', 'history', 1, 0),
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

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
