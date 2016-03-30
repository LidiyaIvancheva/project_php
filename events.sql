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
-- Database: `events`
--

-- --------------------------------------------------------

--
-- Структура на таблица `events`
--

CREATE TABLE `events` (
  `id_events` int(11) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `published_date` date DEFAULT NULL,
  `date_deleted` date DEFAULT NULL,
  `price` varchar(11) NOT NULL,
  `event_date` date NOT NULL,
  `seats` int(11) NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='table with the events';

--
-- Схема на данните от таблица `events`
--

INSERT INTO `events` (`id_events`, `event_name`, `description`, `published_date`, `date_deleted`, `price`, `event_date`, `seats`, `end_date`) VALUES
(1, 'Get Traction: The Virtual Growth Event [SOFIA] in Sofia', 'Overview:\r\nThere’s no denying that growth is hot and here to stay. But despite the buzz, many businesses still don’t have the framework they need to build a successful growth engine. Join a community of data-driven marketers, sales hackers and innovative entrepreneurs who will learn the fundamentals of rapid growth for 2016. Topics include: \r\nLean branding hacks and strategy\r\nEarly-stage growthProduct marketing & UX/UI\r\nLean management and hiring\r\nReferral marketing\r\nCommunity development\r\nDigital Marketing Best Practices\r\nSearch engine optimization\r\nWeb analytics\r\nSocial media & content marketing\r\nAffiliate marketing\r\nDigital advertising & Paid Search\r\nEmail marketing automation\r\nGrowth Hacking\r\nConversion optimization & testing\r\nMarketplace & viral growth\r\nGamification\r\nWeb Scraping\r\nSales Automation\r\nHacking partnerships', '2016-03-01', NULL, '15euro', '2016-05-18', 800, '2016-05-29'),
(2, 'International Conference On Recent Advances In Engineering And Technology', 'The International Conference On Recent Advances In Engineering And Technology, organized by the International Academic of Science, Technology, Engineering and Management will take place on 29th March 2016 at the Mercure berlin city hotel in Berlin, Germany. The conference will cover areas like Power Generation, Transmission and Distribution, Accessing and Constructing Digital Information.\r\n', '2016-03-08', NULL, '20euro', '2016-05-18', 300, '2016-05-23'),
(3, 'Rihanna in Warsaw', '', '2016-03-09', NULL, '80euro', '2016-05-26', 300, '2016-05-26'),
(4, 'Salon of the Arts Sofia: An Enchanting Patchwork of Genres', 'The International Festival Salon of the Arts Sofia takes place every year in the National Palace of Culture. The event serves as a creative forum for different forms of arts, such as music, theatre, cinema, dance etc. The program contains more than 70 performances with the participation of Bulgarian and foreign artists.\r\n\r\nTraditionally it is divided into a number of themed sections, such as children’s festival, exhibitions, jazz, classics, movie screenings, theater and dance performances, Bulgarian folklore and other. For its almost two decades history the Salon of the Arts Sofia has established its reputation as a an international festival with a very wide range of repertoire.', '2016-03-01', NULL, '2euro', '2016-04-22', 100, '2016-04-25'),
(5, 'LIFTBalkans - South-East European Exhibition on Elevators and Escalators in Sofiya', '‘LiftBalkans’ is a timely support of the industry in South-East Europe with aim to speed up the well-needed modernization of the stock of old lifts in the Region by presenting the latest products and services. To mention that only in Bulgaria 80 000 elevators have to be replaced with new installations or to be upgraded in the next years. Dynamic changes are seen in the vertical transportation all over the world - elevators and escalators are becoming more reliable, faster, more economical and with elegant design. As the only one business event in this sector in Bulgaria, it provided an opportunity for direct meetings between industry players.', '2016-03-15', NULL, '10euro', '2016-04-05', 1000, '2016-04-06'),
(6, '‘Smart Cities’ – Exhibition and Conference for South - East Europe in Sofia', 'Branches Energy & Sustainability â- Energy Management, Smart Grid â- Energy Storage â- Decentralized Renewable Energy Production Mobility & Transport â- New Energy Vehicle â- Charging Station â- Intelligent Transport â- Parking Management Â  Information and Communication Technologies (ICT) for Smart Cities â- City in the Cloud â- Geographic Information Systems (GIS) â- ICTs for Utilities â- ICTs for Healthcare and Social Services Sustainable Built Environment â- Green Building â- Waste Management â- Intelligent Street Lighting Intelligent Emergency Management â- Emergency City Services Smart Buildings â- Building Automation Systems (BAS): Building Lighting Systems, Electric Systems and Appliances; Communication Systems; HVAC Management Systems; Access Control Systems, Video Surveillance; Fire Systems â- Building Management Systems (BMS) â- Building Information Modeling (BIM) â- Passive Houses â- Services: Software, Data, Telephony & CATV, etc.', '2016-03-28', NULL, '5euro', '2016-04-05', 100, '2016-04-07');

-- --------------------------------------------------------

--
-- Структура на таблица `place`
--

CREATE TABLE `place` (
  `id_place` int(11) NOT NULL,
  `place_name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `date_deleted` date DEFAULT NULL,
  `id_events` int(11) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `place`
--

INSERT INTO `place` (`id_place`, `place_name`, `city`, `duration`, `date_deleted`, `id_events`, `address`) VALUES
(1, 'Bulgaria', 'Sofia', 10, NULL, 1, '1 Chistophor Columbus Blvd'),
(2, 'Germany', 'Berlin', 4, NULL, 2, 'Mühlenstraße\r\n10243 Berlin'),
(3, 'Poland', 'Warsaw', 3, NULL, 3, 'Stadion Narodowy w Warszawie\r\nal. Księcia J. Poniatowskiego 1\r\nWarsaw, Mazowieckie'),
(6, 'Bulgaria', 'Sofia', 3, NULL, 5, '147, Tzarigradsko shosse'),
(7, 'Bulgaria', 'Sofia', 3, NULL, 6, 'Tsarigradsko Shousse\r\nSofia, Bulgaria');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id_events`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`id_place`),
  ADD KEY `id_events` (`id_events`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id_events` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `id_place` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
