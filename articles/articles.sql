-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 
-- Версия на сървъра: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `articles`
--

-- --------------------------------------------------------

--
-- Структура на таблица `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `article_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date_published` date DEFAULT NULL,
  `date_deleted` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='table for the Blog';

--
-- Схема на данните от таблица `article`
--

INSERT INTO `article` (`id`, `article_name`, `description`, `date_published`, `date_deleted`) VALUES
(1, 'Fantasy Filmfest Nights', 'At the Fantasy Filmfestival Nights 9-10.04.2016, new, experimental and cult horror movies are presented to a fearless audience. For two days, ten movies nourish the fear of zombies, ghosts and other scary creatures.\r\nRules of the Competition of the Fantasy Filmfest Nights\r\nBesides entertainment the festival is a competition as well: the audience votes for the winner. Voting cards will be handed out before the start of every film. On the cards filmfans can review the movies on a scale from 1 to 6, 1 meaning "fantastic" and 6 "dreadful". The winner will be announced at the end of the festival and later be published on the festival''s Website.\r\n\r\nAddress:	\r\nPotsdamer Straße 4\r\n10785 Berlin\r\nzum Stadtplan\r\nOpening Hours:	9 - 10 April 2016', '2016-03-22', NULL),
(2, 'Intonations - Jerusalem International Chamber Music Festival', '16 - 21 April 2016\r\nFor six days in April the glass courtyard of the Jewish Museum Berlin turns into a concert stage with members of top international orchestras, young talents and renowned soloists.\r\n\r\nAddress:	\r\nLindenstraße 9\r\n10969 Berlin\r\nzum Stadtplan\r\nOpening Hours:	16 - 21 April 2016; the concerts start at different times\r\nTickets:are available online and at the box office of the Jewish Museum', '2016-03-17', NULL),
(3, 'International Games Week Berlin', '18 - 24 April 2016\r\nThe International Games Week is a seven-day event for games business, development and culture in Berlin. It welcomes representatives from the industry as well as games enthusiasts.\r\n\r\nAddress:	\r\nKarl-Marx-Allee 93a\r\n10243 Berlin\r\nzum Stadtplan\r\nOpening Hours:	18 - 24 April 2016\r\nUseful hints:	The International Games Week is open to the public and takes place at several locations in Berlin, among them Comuterspielemuseum, Alte Feuerwache, Games Academy, Spindler & Klatt, and the RAW compound.', '2016-03-16', NULL),
(4, 'Gallery Weekend Berlin', '29 April - 1 May 2016\r\nThe Gallery Weekend Berlin is one of the leading events for contemporary art in Germany and attracts art fans and collectors from all over the world.\r\nOn the Gallery Weekend regularly about 1000 visitors from all over the world come to Berlin to experience the capital''s creative scene. The Gallery Weekend especially attracts art collectors from Russia, China and the U.S.', '2016-03-25', NULL),
(5, 'Record Store Day', '16 April 2016\r\nEvery third Saturday in April is Record Store Day: Independent record stores all over the world, including Berlin''s vinyl and indie music specialists, open their doors to celebrate.\r\nMitte: The Record Store, Dussmann, Leila M., Musik Department\r\nKreuzberg: 33rpm Store, Core Tex Records, Fashion Killers\r\nSchöneberg: Dodo Beach, Hurricane Records, Mr Dead & Mrs Free\r\nPrenzlauer Berg: OYE Record Store, Vopo Records\r\nCharlottenburg: music store, Oldschool\r\nFriedrichshain: hhv.de Store\r\nNeukölln: Soultrade\r\nOpening Hours:	16 April 2016\r\nUseful hints:	Opening times may differ from store to store.', '2016-03-24', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
