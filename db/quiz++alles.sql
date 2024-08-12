-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Aug 12, 2024 at 12:49 PM
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
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int NOT NULL,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
(7, 'Welche dieser Personen waren bedeutende Figuren der Aufklärung?', 'geography', 1, 1),
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
(90, 'Welches Tier lebt in Kolonien und hat eine Königin?', 'animals', 1, 0),
(91, 'Wer war der Trainer der Schweizer Nationalmannschaft während der FIFA-Weltmeisterschaft 1994?', 'football', 1, 0),
(92, 'Welcher Schweizer Spieler erzielte das erste Tor der Mannschaft bei der UEFA Euro 1996?', 'football', 1, 0),
(93, 'In welchem Jahr qualifizierte sich die Schweiz zum ersten Mal nach einer langen Pause wieder für die FIFA-Weltmeisterschaft?', 'football', 1, 0),
(94, 'Wie weit kam die Schweizer Nationalmannschaft bei der UEFA Euro 2008, die in der Schweiz und Österreich stattfand?', 'football', 1, 0),
(95, 'Welcher Spieler erzielte den entscheidenden Treffer gegen Spanien in der Gruppenphase der FIFA-Weltmeisterschaft 2010?', 'football', 1, 0),
(96, 'In welchem Jahr erreichte die Schweizer Nationalmannschaft erstmals das Achtelfinale einer FIFA-Weltmeisterschaft?', 'football', 1, 0),
(97, 'Welcher Schweizer Spieler wurde bei der FIFA-Weltmeisterschaft 2018 ins All-Star-Team gewählt?', 'football', 1, 0),
(98, 'Wie viele Tore erzielte die Schweiz in ihrem höchsten Sieg bei einer FIFA-Weltmeisterschaft?', 'football', 1, 0),
(99, 'Wer war der Trainer der Schweizer Nationalmannschaft während der UEFA Euro 2016?', 'football', 1, 0),
(100, 'Welcher Schweizer Spieler erzielte das entscheidende Tor im Elfmeterschießen gegen Frankreich bei der UEFA Euro 2020?', 'football', 1, 0),
(101, 'In welchem Jahr gewann die Schweiz die FIFA U-17-Weltmeisterschaft?', 'football', 1, 0),
(102, 'Wer erzielte das entscheidende Tor für die Schweiz im Playoff-Spiel gegen Nordirland, das ihnen die Qualifikation für die FIFA-Weltmeisterschaft 2018 sicherte?', 'football', 1, 0),
(103, 'Wie viele Tore erzielte Haris Seferovic bei der UEFA Nations League 2018/19?', 'football', 1, 0),
(104, 'Welcher Schweizer Torhüter hielt den entscheidenden Elfmeter im Spiel gegen Frankreich bei der UEFA Euro 2020?', 'football', 1, 0),
(105, 'Wie viele Male hat die Schweiz in den letzten 30 Jahren die Gruppenphase einer FIFA-Weltmeisterschaft überstanden?', 'football', 1, 0),
(106, 'Welcher Schweizer Trainer führte die Mannschaft zur FIFA-Weltmeisterschaft 2018?', 'football', 1, 0),
(107, 'Wer erzielte das erste Tor der Schweiz bei der UEFA Euro 2020?', 'football', 1, 0),
(108, 'Gegen welche Mannschaft verlor die Schweiz im Viertelfinale der UEFA Euro 2020, nachdem das Spiel nach 120 Minuten 1:1 endete und im Elfmeterschießen entschieden wurde?', 'football', 1, 0),
(109, 'Gegen welche Mannschaft verlor die Schweiz im Achtelfinale der FIFA Weltmeisterschaft 2006 in Deutschland?', 'football', 1, 0),
(110, 'Wer ist der aktuelle Trainer der Schweizer Nationalmannschaft?', 'football', 1, 0),
(111, 'Welche der folgenden Spieler haben für die Schweizer Nationalmannschaft gespielt?', 'football', 1, 1),
(112, 'Welche der folgenden Mannschaften hat die Schweizer Nationalmannschaft bei der FIFA Weltmeisterschaft 2006 in Deutschland besiegt?', 'football', 1, 1),
(113, 'Welche der folgenden Schweizer Fußballspieler haben für die Nationalmannschaft mehr als 100 Länderspiele absolviert?', 'football', 1, 1),
(114, 'Welche dieser Schweizer Trainer haben die Nationalmannschaft in den letzten 30 Jahren betreut?', 'footbal', 1, 1),
(115, 'Welche der folgenden Schweizer Nationalspieler haben einmal für den FC Zürich gespielt?', 'football', 1, 1),
(116, 'Welche der folgenden Spieler haben in ihrer Karriere für die Schweizer Nationalmannschaft gespielt?', 'footbal', 1, 1),
(117, 'Welche der folgenden Spieler gehörten zum Kader der Schweizer Nationalmannschaft bei der UEFA-Europameisterschaft 2024?', 'football', 1, 1),
(118, 'Welche Spieler der Schweizer Nationalmannschaft erzielten während der Gruppenphase der UEFA-Europameisterschaft 2024 mindestens ein Tor?', 'football', 1, 1),
(119, 'Welche Spieler der Schweizer Nationalmannschaft erzielten im Achtelfinalspiel der UEFA-Europameisterschaft 2020 gegen Frankreich ein Tor?', 'football', 1, 1),
(120, 'Welche Schweizer Spieler erzielten Tore in der Gruppenphase der FIFA-Weltmeisterschaft 2018?', 'football', 1, 1),
(121, 'Welcher Fluss ist der längste in Afrika?', 'geography', 2, 0),
(122, 'In welchem Land befindet sich der größte Teil des Amazonas-Regenwaldes?', 'geography', 2, 0),
(123, 'Welches Gebirge trennt Europa von Asien?', 'geography', 2, 0),
(124, 'Welches Land hat die größte Fläche?', 'geography', 2, 0),
(125, 'Welcher Ozean liegt am östlichen Rand Afrikas?', 'geography', 2, 0),
(126, 'Welches ist das größte Binnenland der Welt?', 'geography', 2, 0),
(127, 'Welche Wüste ist die größte der Welt?', 'geography', 2, 0),
(128, 'Welches Land hat die meisten Inseln?', 'geography', 2, 0),
(129, 'Welcher Kontinent hat die meisten Länder?', 'geography', 2, 0),
(130, 'Durch welches Land fließt der längste Fluss Europas, die Wolga?', 'geography', 2, 0),
(131, 'Welche ist die längste Gebirgskette der Welt?', 'geography', 2, 0),
(132, 'Welcher See ist der größte Süßwassersee der Welt nach Fläche?', 'geography', 2, 0),
(133, 'Welches Land hat die meisten Nachbarländer?', 'geography', 2, 0),
(134, 'Welche Stadt ist die bevölkerungsreichste Stadt der Welt?', 'geography', 2, 0),
(135, 'Welcher Fluss ist der längste in Europa?', 'geography', 2, 0),
(136, 'Welches Land hat die längste Küstenlinie?', 'geography', 2, 0),
(137, 'Auf welchem Kontinent liegt die Kalahari-Wüste?', 'geography', 2, 0),
(138, 'Welche Insel ist die größte in der Karibik?', 'geography', 2, 0),
(139, 'Welche Hauptstadt liegt am weitesten nördlich?', 'geography', 2, 0),
(140, 'Welches Land hat die meisten Vulkanaktivitäten?', 'geography', 2, 0),
(141, 'Welche dieser Gebirgsketten erstrecken sich über mehrere Länder?', 'geography', 2, 1),
(142, 'Welche dieser Gebirgsketten befinden sich in Nordamerika?', 'geography', 2, 1),
(143, 'Welche dieser Länder sind Teil der Skandinavischen Halbinsel?', 'geography', 2, 1),
(144, 'Welche dieser Inselgruppen gehören zum Pazifischen Ozean?', 'geography', 2, 1),
(145, 'Welche dieser Städte liegen in Südamerika?', 'geography', 2, 1),
(146, 'Welche dieser Länder haben eine Grenze zu Deutschland?', 'geography', 2, 1),
(147, 'Welche dieser Seen sind in Afrika gelegen?', 'geography', 2, 1),
(148, 'Welche dieser Städte sind Hauptstädte von Ländern in Afrika?', 'geography', 2, 1),
(149, 'Welche dieser Inseln gehören zu Neuseeland?', 'geography', 2, 1),
(150, 'Welche dieser Städte liegen entlang des Äquators?', 'geography', 2, 1),
(211, 'Welches Land hat die meisten FIFA-Weltmeisterschaften gewonnen?', 'football', 2, 0),
(212, 'Welcher Spieler hält den Rekord für die meisten Tore in einer einzigen Fußball-Weltmeisterschaft?', 'football', 2, 0),
(213, 'Welcher Verein hat die meisten englischen Premier League Titel gewonnen?', 'football', 2, 0),
(214, 'In welchem Jahr fand die erste FIFA-Weltmeisterschaft statt?', 'football', 2, 0),
(215, 'Wer hat den Goldenen Ball (Ballon d\'Or) 2021 gewonnen?', 'football', 2, 0),
(216, 'Welches Land hat die Fußball-Europameisterschaft 2016 gewonnen?', 'football', 2, 0),
(217, 'Wer hält den Rekord für die meisten Tore in der UEFA Champions League?', 'football', 2, 0),
(218, 'Welches Land war Gastgeber der FIFA-Weltmeisterschaft 2014?', 'football', 2, 0),
(219, 'Welcher Spieler hat die meisten Länderspieltore erzielt?', 'football', 2, 0),
(220, 'Welcher Verein hat die meisten Bundesliga-Titel gewonnen?', 'football', 2, 0),
(221, 'Welches Land hat die erste Fußball-Weltmeisterschaft 1930 gewonnen?', 'football', 2, 0),
(222, 'Welcher Spieler wurde als „Weltfußballer des Jahres“ 2010 ausgezeichnet?', 'football', 2, 0),
(223, 'In welchem Land wurde die FIFA-Weltmeisterschaft 1998 ausgetragen?', 'football', 2, 0),
(224, 'Welche Mannschaft gewann die UEFA Euro 2008?', 'football', 2, 0),
(225, 'Wer gewann den Goldenen Schuh (Top-Torschütze der europäischen Ligen) in der Saison 2020/21?', 'football', 2, 0),
(226, 'Welcher Spieler hat die meisten Tore in einer einzigen Saison der englischen Premier League erzielt?', 'football', 2, 0),
(227, 'Welches Team gewann die FIFA-Weltmeisterschaft 2018?', 'football', 2, 0),
(228, 'Welche Liga ist die älteste professionelle Fußballliga der Welt?', 'football', 2, 0),
(229, 'Welches Land hat die meisten Copa América Titel gewonnen?', 'football', 2, 0),
(230, 'Welcher Fußballclub ist bekannt für den Spitznamen „Die Königsblauen“?', 'football', 2, 0),
(231, 'Welche der folgenden Spieler haben den Ballon d\'Or (Weltfußballer des Jahres) mindestens zweimal gewonnen?', 'football', 2, 1),
(232, 'Welche dieser Nationalmannschaften haben mindestens einmal die FIFA-Weltmeisterschaft gewonnen?', 'football', 2, 1),
(233, 'Welche dieser Vereine haben die UEFA Champions League mehr als einmal gewonnen?', 'football', 2, 1),
(234, 'Welche dieser Spieler sind bekannt für ihre Rolle als Torwart in ihrer Karriere?', 'football', 2, 1),
(235, 'Welche dieser Spieler haben den Ballon d\'Or in den 2000er Jahren gewonnen?', 'football', 2, 1),
(236, 'Welche dieser Clubs haben die UEFA Europa League mehr als einmal gewonnen?', 'football', 2, 1),
(237, 'Welche dieser Spieler sind bekannt für ihre Leistungen bei der FIFA-Weltmeisterschaft?', 'football', 2, 1),
(238, 'Welche dieser Nationalmannschaften haben den FIFA-Konföderationen-Pokal gewonnen?', 'football', 2, 1),
(239, 'Welche dieser Spieler haben in der Premier League den Titel des Torschützenkönigs gewonnen?', 'football', 2, 1),
(240, 'Welche dieser Städte haben ein Fußballstadion mit mehr als 80.000 Sitzplätzen?', 'football', 2, 1),
(241, 'Welches Tier kann seinen Magen nach außen stülpen, um seine Beute zu verdauen?', 'animals', 2, 0),
(242, 'Welches Säugetier legt Eier?', 'animals', 2, 0),
(243, 'Wie viele Herzen hat ein Oktopus?', 'animals', 2, 0),
(244, 'Welches Tier ist das schnellste an Land?', 'animals', 2, 0),
(245, 'Welches Tier hat die größte Gehirnmasse im Verhältnis zu seinem Körpergewicht?', 'animals', 2, 0),
(246, 'Welche Vogelart kann rückwärts fliegen?', 'animals', 2, 0),
(247, 'Welches Tier kann die längste Zeit ohne Wasser überleben?', 'animals', 2, 0),
(248, 'Welches Säugetier kann fliegen?', 'animals', 2, 0),
(249, 'Welches Tier hat das stärkste Gebiss im Tierreich?', 'animals', 2, 0),
(250, 'Welche Schmetterlingsart fliegt jedes Jahr über 4.000 Kilometer?', 'animals', 2, 0),
(251, 'Welches Tier ist für seine Fähigkeit bekannt, über eine Stunde lang den Atem anzuhalten?', 'animals', 2, 0),
(252, 'Welche Tierart hat die meisten verschiedenen Stimmtypen in ihrer Kommunikation?', 'animals', 2, 0),
(253, 'Welches Tier hat die längste Zunge im Verhältnis zur Körpergröße?', 'animals', 2, 0),
(254, 'Welches Tier besitzt den schärfsten Sehvermögen im Tierreich?', 'animals', 2, 0),
(255, 'Welche Art von Wurm kann sich in mehrere Teile teilen und jeder Teil wächst zu einem neuen Wurm heran?', 'animals', 2, 0),
(256, 'Welches Tier kann seine Farbe ändern, um sich zu tarnen?', 'animals', 2, 0),
(257, 'Welches Tier kann ohne Kopf weiterleben, bis es verhungert?', 'animals', 2, 0),
(258, 'Welches Tier kann seine Wirbelsäule verflüssigen, um sich durch enge Spalten zu quetschen?', 'animals', 2, 0),
(259, 'Welches Tier hat das größte Gehirn im Vergleich zu seinem Körpergewicht?', 'animals', 2, 0),
(260, 'Welches Tier wird oft als \"lebendes Fossil\" bezeichnet, weil es sich seit Millionen von Jahren kaum verändert hat?', 'animals', 2, 0),
(261, 'Welche Tiere sind bekannt dafür, dass sie in sozialen Gruppen leben und eine komplexe Hierarchie haben?', 'animals', 2, 1),
(262, 'Welche Tiere sind sowohl Pflanzenfresser als auch Fleischfresser?', 'animals', 2, 1),
(263, 'Welche Tiere sind in der Lage, elektrische Felder zu erzeugen oder zu nutzen?', 'animals', 2, 1),
(264, 'Welche Tiere haben die Fähigkeit zur Echolokation?', 'animals', 2, 1),
(265, 'Welche Tiere sind für ihre Fähigkeit bekannt, in extremen Kältebedingungen zu überleben?', 'animals', 2, 1),
(266, 'Welche Tiere können auf Wasser laufen?', 'animals', 2, 1),
(267, 'Welche Tiere haben die Fähigkeit, extreme Temperaturen zu tolerieren?', 'animals', 2, 1),
(268, 'Welche Tiere sind dafür bekannt, dass sie sowohl Tag- als auch Nachaktiv sind?', 'animals', 2, 1),
(269, 'Welche Tiere sind bekannt dafür, dass sie eine außergewöhnliche Intelligenz besitzen?', 'animals', 2, 1),
(270, 'Welche Tiere sind für ihre Fähigkeit bekannt, ein komplexes Nest zu bauen?', 'animals', 2, 1),
(271, 'Which of these events contributed to the fall of the Roman Empire?', 'history', 2, 1),
(272, 'Which of these civilizations developed the concept of zero in mathematics?', 'history', 2, 1),
(273, 'Which of these leaders were part of the Allied Powers during World War II?', 'history', 2, 1),
(274, 'Which of these inventions were developed during the Industrial Revolution?', 'history', 2, 1),
(275, 'Which of these ancient cities were known for their advanced sewage systems?', 'history', 2, 1),
(276, 'Which of these events occurred during the Renaissance period?', 'history', 2, 1),
(277, 'Which of these philosophers influenced the ideas of the Enlightenment?', 'history', 2, 1),
(278, 'Which of these ancient wonders still exist today?', 'history', 2, 1),
(279, 'Which of these countries were part of the Axis powers during World War II?', 'history', 2, 1),
(280, 'Which of these events led to the start of World War I?', 'history', 2, 1),
(281, 'Welcher römische Kaiser erließ das Edikt von Mailand, das das Christentum legalisierte?', 'history', 2, 0),
(282, 'In welchem Jahr wurde die Magna Carta unterzeichnet?', 'history', 2, 0),
(283, 'Wer war der Anführer der Sklavenrebellion im antiken Rom, bekannt als der Spartakusaufstand?', 'history', 2, 0),
(284, 'Welche Schlacht markierte das Ende des Hundertjährigen Krieges?', 'history', 2, 0),
(285, 'Wer war der erste Shogun des Tokugawa-Shogunats in Japan?', 'history', 2, 0),
(286, 'Welches Ereignis löste den Dreißigjährigen Krieg aus?', 'history', 2, 0),
(287, 'Wer war der Hauptarchitekt der russischen Revolution von 1917?', 'history', 2, 0),
(288, 'Welche Entdeckung führte zur Entzifferung der ägyptischen Hieroglyphen?', 'history', 2, 0),
(289, 'Wer war der erste Kaiser des Heiligen Römischen Reiches?', 'history', 2, 0),
(290, 'Welches Ereignis wird oft als Auslöser für den Ersten Weltkrieg bezeichnet?', 'history', 2, 0),
(291, 'Wer führte die Langobarden bei ihrer Invasion Italiens im 6. Jahrhundert an?', 'history', 2, 0),
(292, 'Welche Schlacht beendete die Napoleonischen Kriege endgültig?', 'history', 2, 0),
(293, 'Wer war der Gründer des Mongolenreiches?', 'history', 2, 0),
(294, 'Welches Ereignis markierte den Beginn der Französischen Revolution?', 'history', 2, 0),
(295, 'Wer war der letzte Herrscher des Inkareiches?', 'history', 2, 0),
(296, 'Welche Zivilisation erbaute die Stadt Teotihuacan in Mexiko?', 'history', 2, 0),
(297, 'Wer war der Anführer der Hugenotten während der Französischen Religionskriege?', 'history', 2, 0),
(298, 'Welches Ereignis führte zur Gründung der Vereinten Nationen?', 'history', 2, 0),
(299, 'Wer war der Begründer des Sufismus, der mystischen Tradition des Islam?', 'history', 2, 0),
(300, 'Welche Schlacht gilt als Wendepunkt des Amerikanischen Unabhängigkeitskrieges?', 'history', 2, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;