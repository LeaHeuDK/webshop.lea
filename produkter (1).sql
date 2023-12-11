-- phpMyAdmin SQL Dump
-- version 4.9.10
-- https://www.phpmyadmin.net/
--
-- Vært: mysql60.unoeuro.com
-- Genereringstid: 07. 12 2023 kl. 12:15:14
-- Serverversion: 8.0.34-26
-- PHP-version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webshop.lea`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `produkter`
--

DROP TABLE IF EXISTS `produkter`;
CREATE TABLE IF NOT EXISTS `produkter` (
    `prodId` int UNSIGNED NOT NULL AUTO_INCREMENT,
    `prodNavn` varchar(100) COLLATE utf8mb3_danish_ci NOT NULL,
    `prodDirector` varchar(100) COLLATE utf8mb3_danish_ci NOT NULL,
    `prodStars` varchar(200) COLLATE utf8mb3_danish_ci NOT NULL,
    `prodBeskrivelse` text COLLATE utf8mb3_danish_ci,
    `prodPris` decimal(9,2) NOT NULL,
    `prodDato` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `prodTid` time DEFAULT NULL,
    `prodGenre` varchar(100) COLLATE utf8mb3_danish_ci NOT NULL,
    `prodBillede` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_danish_ci DEFAULT NULL,
    PRIMARY KEY (`prodId`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_danish_ci;

--
-- Data dump for tabellen `produkter`
--

INSERT INTO `produkter` (`prodId`, `prodNavn`, `prodBeskrivelse`, `prodPris`, `prodDato`, `prodDirector`, `prodStars`, `prodTid`, `prodGenre`, `prodBillede`) VALUES
(1, 'Family Switch', 'Når et tilfældigt møde med en astrologisk læser får Walker-familien til at vågne op til et fuldstændigt kropsskifte, kan de så samarbejde om at sikre en forfremmelse, et universitetsinterview, en pladekontrakt og en fodboldprøve?', '100.00', '2023-11-30 02:17:24', 'McG', 'Jennifer Garner, Ed Helms, Emma Myers', '01:46:00', 'Komedie', 'C:\\wamp64\\www\\kickstarterPhp\\images\\familySwatch.png'),
(2, 'Godfather', 'Don Vito Corleone, leder af en mafiaklan, beslutter at overdrage sit imperium til sin yngste søn Michael. Dog fører hans beslutning utilsigtet til, at hans kæres liv bliver sat i alvorlig fare.', '100.00', '1972-10-07 02:17:24', 'Francis Ford Coppola', 'Marlon Brando, Al Pacino, James Caan', '02:56:00', 'Drama', 'C:\\wamp64\\www\\kickstarterPhp\\images\\TheGodfather.png'),
(3, 'Forrest Gump', 'Historien om USA fra 1950\'erne til 70\'erne udfolder sig fra perspektivet af en mand fra Alabama med en IQ på 75, som længes efter at blive genforenet med sin barndomskæreste.', '100.00', '1994-06-23 04:29:44', 'Robert Zemeckis', '\r\nTom Hanks, Robin Wright, Gary Sinise', '02:22:00', 'Drama', 'C:\\wamp64\\www\\kickstarterPhp\\images\\ForrestGump.png'),
(4, 'Leo', 'En 74-årig øgle ved navn Leo og hans skildpaddeven beslutter at flygte fra terrariet i et klasseværelse i en skole i Florida, hvor de har boet i årtier.', '100.00', '2023-11-21 00:00:00', 'Robert Marianetti Robert Smigel David Wachtenheim', 'Adam Sandler', '01:02:00', 'Komedie', 'C:\\wamp64\\www\\kickstarterPhp\\images\\Leo.png'),
(5, 'The Matrix', 'Når en smuk fremmed leder computerhackeren Neo til en forbudt underverden, opdager han den chokerende sandhed - det liv, han kender, er den detaljerede bedrag af en ond cyber-intelligens.', '100.00', '1999-04-19 00:00:00', 'Lana Wachowski, Lilly Wachowski', 'Keanu Reeves, Laurence Fishburne, Carrie-Anne Moss', '02:16:00', 'Sci-fi', 'C:\\wamp64\\www\\kickstarterPhp\\images\\Matix.png'),
(6, 'Livet er smukt', 'Da en åbensindet jødisk tjener og hans søn bliver ofre for Holocaust, bruger han en perfekt blanding af vilje, humor og fantasi til at beskytte sin søn mod farerne omkring deres lejr.', '100.00', '1997-12-20 00:00:00', 'Roberto Benigni', 'Roberto Benigni, Nicoletta Braschi, Giorgio Cantarini', '01:56:00', 'Drama', 'C:\\wamp64\\www\\kickstarterPhp\\images\\LivetErSmukt.png'),
(7, 'Saving Private Ryan', 'Efter landgangen i Normandiet drager en gruppe amerikanske soldater bag fjendens linjer for at hente en faldskærmssoldat, hvis brødre er blevet dræbt i kamp.', '100.00', '1998-10-17 00:00:00', 'Steven Spielberg', 'Tom Hanks, Matt Damon, Tom Sizemore', '02:49:00', 'Drama', 'C:\\wamp64\\www\\kickstarterPhp\\images\\SavingPrivateRyan.png'),
(8, 'Tilbage til fremtiden', 'Marty McFly, en 17-årig gymnasieelev, bliver ved et uheld sendt 30 år tilbage i tiden i en tidsrejsende DeLorean opfundet af hans nære ven, den maverick-videnskabsmand Doc Brown.', '100.00', '1985-07-03 00:00:00', 'Robert Zemeckis', 'Michael J. FoxChristopher LloydLea Thompson', '01:56:00', 'Komedie', 'C:\\wamp64\\www\\kickstarterPhp\\images\\TilbageTilFremtiden.png'),
(9, 'American History X', 'Derek, der lever et liv præget af vold, ender i fængsel efter at have dræbt to sorte unge. Efter sin løsladelse lover Derek at ændre sig; han håber at forhindre sin bror, Danny, der ser op til Derek, i at følge i hans fodspor.', '100.00', '1998-10-10 00:00:00', 'Tony Kaye', 'Edward Norton, Edward Furlong, Beverly D\'Angelo', '01:59:00', 'Drama', 'C:\\wamp64\\www\\kickstarterPhp\\images\\AmericanHistoryX.png'),
(10, 'Løvernes konge', 'Løveprinsen Simba og hans far bliver mål for hans bitre onkel, der ønsker at bestige tronen selv.', '100.00', '1994-06-12 00:00:00', 'Roger Allers, Rob Minkoff', 'Matthew Broderick, Jeremy Irons, James Earl Jones', '01:28:00', 'Animation', 'C:\\wamp64\\www\\kickstarterPhp\\images\\LionKing.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
