-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 10:06 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yourgamingdb`
--
CREATE DATABASE yourgamingdb;
USE yourgamingdb;
-- --------------------------------------------------------

--
-- Table structure for table `generos`
--

CREATE TABLE `generos` (
  `id_generos` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `generos`
--

INSERT INTO `generos` (`id_generos`, `nombre`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(17, 'Arcade'),
(12, 'Casual'),
(18, 'CasualIndie'),
(19, 'Family'),
(11, 'First-Person Shooter'),
(5, 'Free To Play'),
(23, 'Free To PlayIndie'),
(20, 'Free To PlayMassively Multiplayer Online'),
(4, 'Indie'),
(24, 'IndieMassively Multiplayer Online'),
(16, 'IndieRole Playing'),
(6, 'Massively Multiplayer Online'),
(10, 'Massively Multiplayer OnlineRole Playing'),
(21, 'Multiplayer Online Battle Arena'),
(15, 'Platformer'),
(22, 'Puzzle'),
(13, 'Racing'),
(3, 'Role Playing'),
(14, 'Role PlayingSimulation'),
(8, 'Simulation'),
(9, 'Sports'),
(7, 'Strategy');

-- --------------------------------------------------------

--
-- Table structure for table `juego`
--

CREATE TABLE `juego` (
  `id_juego` int(11) NOT NULL,
  `titulo` varchar(30) NOT NULL,
  `descripcion` longtext NOT NULL,
  `genero` varchar(30) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `enlace` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `juego`
--

INSERT INTO `juego` (`id_juego`, `titulo`, `descripcion`, `genero`, `publisher`, `enlace`) VALUES
(3, '7 Days to Die', '', 'Action,Adventure,Indie', 'The Fun Pimps Entertainment LLC', 'https://store.steampowered.com/app/251570'),
(4, 'A Plague Tale: Innocence', '', 'Action', 'Focus Home Interactive', 'https://store.steampowered.com/app/752590'),
(5, 'Absolver', '', 'Action,Adventure,Indie', 'Devolver Digital', 'https://store.steampowered.com/app/473690'),
(6, 'ACE COMBAT™ 7: SKIES UNKNOWN', '', 'Action,Simulation', 'BANDAI NAMCO Studio Inc.', 'https://store.steampowered.com/app/502500'),
(7, 'Age of Wonders III', '', 'Role Playing,Strategy', 'Paradox Interactive', 'https://store.steampowered.com/app/226840'),
(8, 'Age of Wonders: Planetfall', '', 'Strategy', 'Paradox Interactive', 'https://store.steampowered.com/app/718850'),
(9, 'AI: The Somnium Files', '', 'Adventure', 'Spike Chunsoft Co., Ltd.', 'https://store.steampowered.com/app/948740'),
(10, 'Aion™', '', 'Free To Play,Massively Multipl', 'NCSOFT', ''),
(11, 'Albino Lullaby: Episode 1', '', 'Action,Adventure,Indie', 'Ape Law', 'https://store.steampowered.com/app/355860'),
(12, 'Albion Online', '', 'Massively Multiplayer Online,R', 'Sandbox Interactive GmbH', 'https://store.steampowered.com/app/761890'),
(13, 'Amazing Cultivation Simulator ', '', 'Indie,Role Playing,Simulation,', 'Gamera Game', 'https://store.steampowered.com/app/955900'),
(14, 'American Truck Simulator', '', 'Indie,Simulation', 'SCS Software', 'https://store.steampowered.com/app/270880'),
(15, 'Ancestors Legacy', '', 'Strategy', '1C Company', 'https://store.steampowered.com/app/620590'),
(16, 'Anno 1800™', '', 'Strategy,Simulation', 'Ubisoft', ''),
(17, 'Anno 1800™', '', 'Simulation,Strategy', '', ''),
(18, 'Anno 1800™', '', 'Strategy,Simulation', 'Ubisoft', 'https://store.steampowered.com/app/916440'),
(19, 'AO International Tennis', '', 'Sports', 'Big Ant Studios', 'https://store.steampowered.com/app/758410'),
(20, 'Apex Legends™', '', 'Action,Free To Play,Massively ', 'Electronic Arts Inc.', ''),
(21, 'Argo', '', 'Action,Free To Play', 'Bohemia Interactive', 'https://store.steampowered.com/app/530700'),
(22, 'ARK: Survival Evolved', '', 'Action,Adventure,Indie,Massive', 'Studio Wildcard', 'https://store.steampowered.com/app/346110'),
(23, 'ARK: Survival Of The Fittest', '', 'Action,Adventure,Indie,Massive', 'Studio Wildcard', 'https://store.steampowered.com/app/407530'),
(24, 'Arma 3', '', 'Action,First-Person Shooter,Si', 'Bohemia Interactive', 'https://store.steampowered.com/app/107410'),
(25, 'Armello', '', 'Adventure,Indie,Role Playing,S', 'League of Geeks', 'https://store.steampowered.com/app/290340'),
(26, 'Armored Warfare', '', 'Simulation,Action,Free To Play', 'My.com', ''),
(27, 'Artifact', '', 'Casual,Strategy', 'Valve', 'https://store.steampowered.com/app/583950'),
(28, 'Assassin’s Creed® III Remaster', '', 'Action,Adventure', 'Ubisoft', ''),
(29, 'Assassin’s Creed® IV Black Fla', '', 'Action,Adventure', 'Ubisoft', 'https://store.steampowered.com/app/242050'),
(30, 'Assassin’s Creed® IV Black Fla', '', 'Action,Adventure', 'Ubisoft', ''),
(31, 'Assassin’s Creed® Odyssey', '', 'Action,Adventure,Indie', 'Ubisoft', 'https://store.steampowered.com/app/812140'),
(32, 'Assassin’s Creed® Odyssey', '', 'Action,Adventure', 'Ubisoft', ''),
(33, 'Assassin’s Creed® Origins', '', 'Action,Adventure', 'Ubisoft', ''),
(34, 'Assassin’s Creed® Origins', '', 'Action,Adventure', 'Ubisoft', 'https://store.steampowered.com/app/582160'),
(35, 'Assassin’s Creed® Unity', '', 'Action,Adventure', 'Ubisoft', 'https://store.steampowered.com/app/289650'),
(36, 'Assassin’s Creed® Unity', '', 'Adventure,Action', 'Ubisoft', ''),
(37, 'Assassin’s Creed®: Syndicate', '', 'Action,Adventure', 'Ubisoft', 'https://store.steampowered.com/app/368500'),
(38, 'Assassin’s Creed®: Syndicate', '', 'Action,Adventure', 'Ubisoft', ''),
(39, 'Assetto Corsa', '', 'Racing,Simulation,Sports', 'Kunos Simulazioni', 'https://store.steampowered.com/app/244210'),
(40, 'Assetto Corsa Competizione', '', 'Racing,Simulation,Sports', '505 Games', 'https://store.steampowered.com/app/805550'),
(41, 'Asterix & Obelix XXL 3 - The C', '', 'Adventure', 'Microids', 'https://store.steampowered.com/app/1109690'),
(42, 'ASTRONEER', '', 'Adventure,Indie', 'System Era Softworks', 'https://store.steampowered.com/app/361420'),
(43, 'ATLAS', '', 'Action,Adventure,Massively Mul', 'Grapeshot Games', 'https://store.steampowered.com/app/834910'),
(44, 'ATOM RPG', '', 'Role Playing', 'AtomTeam', 'https://store.steampowered.com/app/552620'),
(45, 'ATOMEGA™', '', 'Action,Indie', 'Ubisoft', 'https://store.steampowered.com/app/619880'),
(46, 'AVICII Invector', '', 'Casual,Indie', 'Wired Productions', 'https://store.steampowered.com/app/986800'),
(47, 'Batman™: Arkham Asylum Game of', '', 'Action,Adventure', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/35140'),
(48, 'Batman™: Arkham City - Game of', '', 'Action,Adventure', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/200260'),
(49, 'Batman™: Arkham Knight', '', 'Action,Adventure', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/208650'),
(50, 'Batman™: Arkham Origins', '', 'Action,Adventure', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/209000'),
(51, 'Battlefleet Gothic: Armada 2', '', 'Strategy', 'Focus Home Interactive', 'https://store.steampowered.com/app/573100'),
(52, 'Battlerite', '', 'Action', 'Stunlock Studios', 'https://store.steampowered.com/app/504370'),
(53, 'Battlerite Royale', '', 'Action,Massively Multiplayer O', 'Stunlock Studios', 'https://store.steampowered.com/app/879160'),
(54, 'Battletech', '', 'Action,Adventure,Strategy', 'Paradox Interactive AB', 'https://store.steampowered.com/app/637090'),
(55, 'BeamNG.drive', '', 'Simulation,Racing', 'BeamNG', 'https://store.steampowered.com/app/284160'),
(56, 'Bear With Me: The Lost Robots', '', 'Adventure,Casual,Indie', 'Modus Games', 'https://store.steampowered.com/app/1050000'),
(57, 'Besiege', '', 'Indie,Simulation', 'Spiderling Studios', 'https://store.steampowered.com/app/346010'),
(58, 'BioShock Infinite', '', 'Action,First-Person Shooter,Ro', '2K Games', 'https://store.steampowered.com/app/8870'),
(59, 'BioShock™ 2 Remastered', '', 'Action,Role Playing,First-Pers', '2K Games', 'https://store.steampowered.com/app/409720'),
(60, 'BioShock™ Remastered', '', 'Action,First-Person Shooter,Ro', '2K Games', 'https://store.steampowered.com/app/409710'),
(61, 'Black Desert Online', '', 'Action,Adventure,Massively Mul', 'Kakao Games Europe B.V.', 'https://store.steampowered.com/app/582660'),
(62, 'Black Future \'88', '', 'Action,Adventure,Indie', 'Good Shepherd Entertainment', 'https://store.steampowered.com/app/751820'),
(63, 'Black Squad', '', 'First-Person Shooter,Action,Fr', 'Neowiz Games', 'https://store.steampowered.com/app/550650'),
(64, 'BLACKSAD: Under the Skin', '', 'Adventure,Casual,Puzzle', 'Microids', 'https://store.steampowered.com/app/1003890'),
(65, 'Blackwake', '', 'Action,Indie,Strategy', 'Mastfire Studios Pty Ltd', 'https://store.steampowered.com/app/420290'),
(66, 'Blair Witch', '', 'Adventure,Indie', 'Bloober Team NA', 'https://store.steampowered.com/app/1092660'),
(67, 'BlazBlue: Cross Tag Battle', '', 'Action', 'Arc System Works', 'https://store.steampowered.com/app/702890'),
(68, 'Borderlands 2', '', 'Action,First-Person Shooter', '2K Games', 'https://store.steampowered.com/app/49520'),
(69, 'Borderlands 3', '', 'Action,First-Person Shooter,Ro', '2K', ''),
(70, 'Borderlands Game of the Year E', '', 'Action,Role Playing', '2K', 'https://store.steampowered.com/app/729040'),
(71, 'Borderlands: The Pre-Sequel', '', 'Action,Role Playing', '2K Games', 'https://store.steampowered.com/app/261640'),
(72, 'Brawlhalla', '', 'Action,Free To Play,Indie,Plat', 'Ubisoft', 'https://store.steampowered.com/app/291550'),
(73, 'Brothers: A Tale of Two Sons', '', 'Adventure,Casual,Puzzle', '505 Games', 'https://store.steampowered.com/app/225080'),
(74, 'Call of Cthulhu®', '', 'Adventure,Role Playing', 'Focus Home Interactive', 'https://store.steampowered.com/app/399810'),
(75, 'Call of Duty: World at War', '', 'Action,First-Person Shooter', 'Activision', 'https://store.steampowered.com/app/10090'),
(76, 'Call of Duty® 4: Modern Warfar', '', 'Action,First-Person Shooter', 'Activision', 'https://store.steampowered.com/app/7940'),
(77, 'Call of Duty®: Black Ops 4', '', 'Action,First-Person Shooter,Ma', 'Activision', ''),
(78, 'Call of Duty®: Black Ops III', '', 'Action,Adventure,First-Person ', 'Activision', 'https://store.steampowered.com/app/311210'),
(79, 'Call of Duty®: Infinite Warfar', '', 'Action,Adventure,First-Person ', 'Activision', 'https://store.steampowered.com/app/292730'),
(80, 'Call of Duty®: Modern Warfare®', '', 'Action,First-Person Shooter', 'Activision', ''),
(81, 'Call of Duty®: Modern Warfare®', '', 'Action,First-Person Shooter', 'Activision', 'https://store.steampowered.com/app/10190'),
(82, 'Call of Duty®: Modern Warfare®', '', 'Action,First-Person Shooter', 'Activision', 'https://store.steampowered.com/app/10180'),
(83, 'Call of Duty®: Modern Warfare®', '', 'Action,First-Person Shooter', 'Activision', 'https://store.steampowered.com/app/42690'),
(84, 'Call of Duty®: Modern Warfare®', '', 'Action,First-Person Shooter', 'Activision', 'https://store.steampowered.com/app/42680'),
(85, 'Call of Duty®: WWII', '', 'Action,First-Person Shooter', 'Activision', 'https://store.steampowered.com/app/476600'),
(86, 'CardLife: Cardboard Survival', '', 'Action,Adventure,Massively Mul', 'Freejam', 'https://store.steampowered.com/app/920690'),
(87, 'Catherine Classic', '', 'Adventure', 'Sega Europe, Ltd.', 'https://store.steampowered.com/app/893180'),
(88, 'Celeste', '', 'Action,Adventure,Indie,Platfor', 'Matt Makes Games Inc.', 'https://store.steampowered.com/app/504230'),
(89, 'Chernobylite', '', 'Action,Adventure,Indie,Role Pl', 'The Farm 51', 'https://store.steampowered.com/app/1016800'),
(90, 'Chivalry: Medieval Warfare', '', 'Action,Indie', 'Torn Banner Studios', 'https://store.steampowered.com/app/219640'),
(91, 'Cities: Skylines', '', 'Casual,Simulation,Strategy', 'Paradox Interactive', 'https://store.steampowered.com/app/255710'),
(92, 'Claybook', '', 'Action,Indie,Platformer,Puzzle', 'Second Order', 'https://store.steampowered.com/app/661920'),
(93, 'Clicker Heroes', '', 'Adventure,Casual,Free To Play,', 'Playsaurus', 'https://store.steampowered.com/app/363970'),
(94, 'Clicker Heroes 2', '', 'Action,Adventure,Arcade,Casual', 'Playsaurus', 'https://store.steampowered.com/app/629910'),
(95, 'Closers', '', 'Free To Play,Massively Multipl', 'Nexon Corporation', 'https://store.steampowered.com/app/215830'),
(96, 'Commandos 2 - HD Remaster', '', 'Strategy', 'Kalypso Media Group GmbH', 'https://store.steampowered.com/app/1100410'),
(97, 'Company of Heroes', '', 'Action,Strategy', 'SEGA', 'https://store.steampowered.com/app/228200'),
(98, 'Conan Exiles', '', 'Action,Adventure,Massively Mul', 'Funcom', 'https://store.steampowered.com/app/440900'),
(99, 'Conception PLUS: Maidens of th', '', 'Role Playing', 'Spike Chunsoft Co., Ltd.', 'https://store.steampowered.com/app/906510'),
(100, 'Construction Simulator 2 US - ', '', 'Simulation', 'astragon Entertainment GmbH', 'https://store.steampowered.com/app/787740'),
(101, 'Constructor Plus', '', 'Indie,Simulation,Strategy', 'System 3', 'https://store.steampowered.com/app/898800'),
(102, 'Cooking Simulator', '', 'Casual,Indie,Simulation', 'Wastelands Interactive', 'https://store.steampowered.com/app/641320'),
(103, 'Counter-Strike', '', 'First-Person Shooter,Action', 'Valve', 'https://store.steampowered.com/app/10'),
(104, 'Counter-Strike: Global Offensi', '', 'Action,First-Person Shooter,Fr', 'Valve Corporation', 'https://store.steampowered.com/app/730'),
(105, 'Counter-Strike: Source', '', 'Action,First-Person Shooter', 'Valve', 'https://store.steampowered.com/app/240'),
(106, 'Crash Bandicoot™ N. Sane Trilo', '', 'Action,Family,Platformer', 'Activision', 'https://store.steampowered.com/app/731490'),
(107, 'Crossfire', '', 'First-Person Shooter', 'Tencent', ''),
(108, 'Crossout', '', 'Action,Massively Multiplayer O', 'Gaijin Entertainment', 'https://store.steampowered.com/app/386180'),
(109, 'Crusader Kings II', '', 'Free To Play,Role Playing,Simu', 'Paradox Interactive', 'https://store.steampowered.com/app/203770'),
(110, 'Crying Suns', '', 'Indie,Strategy', 'Humble Bundle', 'https://store.steampowered.com/app/873940'),
(111, 'Cuisine Royale', '', 'Action,Free To Play,Massively ', 'Gaijin Distribution KFT', 'https://store.steampowered.com/app/884660'),
(112, 'Cultist Simulator', '', 'Indie,Role Playing,Simulation,', 'Humble Bundle', 'https://store.steampowered.com/app/718670'),
(113, 'Cuphead', '', 'Action,Arcade,Indie,Platformer', 'StudioMDHR Entertainment Inc.', 'https://store.steampowered.com/app/268910'),
(114, 'Dakar 18', '', 'Racing,Simulation', 'Bigmoon Entertainment, Deep Silver', 'https://store.steampowered.com/app/767390'),
(115, 'DARK SOULS™ II', '', 'Action,Role Playing', 'BANDAI NAMCO Entertainment', 'https://store.steampowered.com/app/236430'),
(116, 'DARK SOULS™ II: Scholar of the', '', 'Action,Role Playing', 'BANDAI NAMCO Entertainment', 'https://store.steampowered.com/app/335300'),
(117, 'DARK SOULS™ III', '', 'Action,Role Playing', 'BANDAI NAMCO Entertainment', 'https://store.steampowered.com/app/374320'),
(118, 'DARK SOULS™: REMASTERED', '', 'Action,Role Playing', 'BANDAI NAMCO Entertainment America Inc.', 'https://store.steampowered.com/app/570940'),
(119, 'Darkest Dungeon®', '', 'Indie,Role Playing,Strategy', 'Red Hook Studios', 'https://store.steampowered.com/app/262060'),
(120, 'Darksiders II Deathinitive Edi', '', 'Action,Adventure,Role Playing', 'THQ Nordic', 'https://store.steampowered.com/app/388410'),
(121, 'Darksiders III', '', 'Action,Adventure,Indie,Role Pl', 'THQ Nordic', 'https://store.steampowered.com/app/606280'),
(122, 'DARKSIDERS: GENESIS', '', 'Action,Adventure,Role Playing', 'THQ Nordic', 'https://store.steampowered.com/app/710920'),
(123, 'Darwin Project', '', 'Action,Casual,Free To Play,Ind', 'Scavengers Studio', 'https://store.steampowered.com/app/544920'),
(124, 'Dauntless', '', 'Action,Free To Play,Massively ', 'Phoenix Labs', ''),
(125, 'Dawn of Man', '', 'Indie,Simulation,Strategy', 'Madruga Works', 'https://store.steampowered.com/app/858810'),
(126, 'DayZ', '', 'Action,Adventure,First-Person ', 'Bohemia Interactive', 'https://store.steampowered.com/app/221100'),
(127, 'Dead by Daylight', '', 'Action', 'Starbreeze Studios', 'https://store.steampowered.com/app/381210'),
(128, 'Dead Cells', '', 'Action,Indie,Platformer', 'Motion Twin', 'https://store.steampowered.com/app/588650'),
(129, 'Dead Frontier 2', '', 'Action,Free To Play,Indie,Mass', 'Creaky Corpse Ltd', 'https://store.steampowered.com/app/744900'),
(130, 'Dead In Vinland', '', 'Adventure,Indie,Role Playing,S', 'Playdius, Plug In Digital', 'https://store.steampowered.com/app/573120'),
(131, 'Deceit', '', 'Action,Free To Play,Indie', 'Automaton', 'https://store.steampowered.com/app/466240'),
(132, 'Deep Rock Galactic', '', 'Action,Indie', 'Coffee Stain Publishing', 'https://store.steampowered.com/app/548430'),
(133, 'Deep Sky Derelicts', '', 'Indie,Role Playing,Strategy', '1C Entertainment', 'https://store.steampowered.com/app/698640'),
(134, 'Deliver Us The Moon: Fortuna', '', 'Action,Adventure,Indie,PuzzleS', 'Wired Productions', 'https://store.steampowered.com/app/428660'),
(135, 'Depth', '', 'Action,Indie', 'Digital Confectioners', 'https://store.steampowered.com/app/274940'),
(136, 'Descenders', '', 'Action,Racing,Sports', 'No More Robots', 'https://store.steampowered.com/app/681280'),
(137, 'DESOLATE', '', 'Action,Adventure,Role Playing', 'HypeTrain Digital', 'https://store.steampowered.com/app/671510'),
(138, 'Destiny 2', '', 'Action,Adventure,First-Person ', 'Bungie', 'https://store.steampowered.com/app/1085660'),
(139, 'Diablo III', '', 'Action,Role Playing', 'Blizzard Entertainment', ''),
(140, 'Diesel Brothers: Truck Buildin', '', 'Casual,Racing,Simulation', 'Code Horizon, PlayWay S.A.', 'https://store.steampowered.com/app/750050'),
(141, 'DiRT 3 Complete Edition', '', 'Racing,Simulation,Sports', 'Codemasters', 'https://store.steampowered.com/app/321040'),
(142, 'DiRT 4', '', 'Racing,Simulation,Sports', 'Codemasters', 'https://store.steampowered.com/app/421020'),
(143, 'DiRT Rally 2.0', '', 'Racing,Simulation,Sports', 'Codemasters', 'https://store.steampowered.com/app/690790'),
(144, 'Dirty Bomb®', '', 'Action,Free To Play,First-Pers', 'Nexon America Inc.', 'https://store.steampowered.com/app/333930'),
(145, 'Disco Elysium', '', 'Adventure,Indie,Role Playing', 'ZA/UM', 'https://store.steampowered.com/app/632470'),
(146, 'Dishonored', '', 'Action,Adventure,First-Person ', 'Bethesda Softworks', 'https://store.steampowered.com/app/205100'),
(147, 'Dishonored 2', '', 'Action,First-Person Shooter,Ro', 'Bethesda Softworks', 'https://store.steampowered.com/app/403640'),
(148, 'Dishonored®: Death of the Outs', '', 'Action', 'Bethesda Softworks', 'https://store.steampowered.com/app/614570'),
(149, 'Distance', '', 'Action,Racing,Indie', 'Refract', 'https://store.steampowered.com/app/233610'),
(150, 'Divinity: Original Sin 2', '', 'Adventure,Role Playing,Strateg', 'Larian Studios', 'https://store.steampowered.com/app/435150'),
(151, 'Don\'t Starve', '', 'Adventure,Indie,Simulation', 'Klei Entertainment', 'https://store.steampowered.com/app/219740'),
(152, 'Don\'t Starve Together', '', 'Adventure,Indie,Simulation', 'Klei Entertainment', 'https://store.steampowered.com/app/322330'),
(153, 'Donut County', '', 'Adventure,Casual,Indie,Puzzle', 'Annapurna Interactive', 'https://store.steampowered.com/app/702670'),
(154, 'DOOM®', '', 'Action,First-Person Shooter', 'Bethesda Softworks', 'https://store.steampowered.com/app/379720'),
(155, 'Dota 2', '', 'Action,Free To Play,Multiplaye', 'Valve', 'https://store.steampowered.com/app/570'),
(156, 'Dota Underlords', '', 'Free To Play,Strategy', 'Valve', 'https://store.steampowered.com/app/1046930'),
(157, 'Double Turn', '', 'Action,Indie', 'Inwave Labs', 'https://store.steampowered.com/app/762680'),
(158, 'Dragon Nest', '', 'Action,Free To Play,Massively ', 'Eyedentity Games Inc.', ''),
(159, 'Dungreed', '', 'Action,Indie', 'TEAM HORAY', 'https://store.steampowered.com/app/753420'),
(160, 'DUSK', '', 'Action,Indie', 'New Blood Interactive', 'https://store.steampowered.com/app/519860'),
(161, 'Dying Light', '', 'Action,First-Person Shooter', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/239140'),
(162, 'Dying Light: Bad Blood', '', 'Action,Massively Multiplayer O', 'Techland Sp. z o.o.', 'https://store.steampowered.com/app/766370'),
(163, 'EARTH DEFENSE FORCE 5', '', 'Action', 'D3 PUBLISHER', 'https://store.steampowered.com/app/1007040'),
(164, 'Edge Of Eternity', '', 'Indie,Role Playing,Strategy', 'Playdius Entertainment', 'https://store.steampowered.com/app/269190'),
(165, 'ELEX', '', 'Action,Adventure,Role Playing', 'THQ Nordic', 'https://store.steampowered.com/app/411300'),
(166, 'Elite Dangerous', '', 'Action,Adventure,Massively Mul', 'Frontier Developments', 'https://store.steampowered.com/app/359320'),
(167, 'Empyrion - Galactic Survival', '', 'Adventure,Indie,Simulation,Str', 'Eleon Game Studios', 'https://store.steampowered.com/app/383120'),
(168, 'Endless Space® 2', '', 'Strategy', 'SEGA', 'https://store.steampowered.com/app/392110'),
(169, 'Enter the Gungeon', '', 'Action,Adventure,Indie', 'Devolver Digital', 'https://store.steampowered.com/app/311690'),
(170, 'Euro Truck Simulator 2', '', 'Casual,Racing,Simulation', 'SCS Software', 'https://store.steampowered.com/app/227300'),
(171, 'Europa Universalis IV', '', 'Simulation,Strategy', 'Paradox Interactive', 'https://store.steampowered.com/app/236850'),
(172, 'EVE Online', '', 'Action,Free To Play,Massively ', 'CCP', ''),
(173, 'Everreach: Project Eden', '', 'Action,First-Person Shooter,In', 'Headup', 'https://store.steampowered.com/app/915670'),
(174, 'EVERSPACE™', '', 'Action,Indie', 'ROCKFISH Games', 'https://store.steampowered.com/app/396750'),
(175, 'EXAPUNKS', '', 'Indie,Puzzle,Simulation', 'Zachtronics', 'https://store.steampowered.com/app/716490'),
(176, 'F1® 2018', '', 'Simulation,Racing', 'Codemasters', 'https://store.steampowered.com/app/737800'),
(177, 'F1® 2019 Anniversary Edition', '', 'Racing,Simulation,Sports', 'Codemasters', 'https://store.steampowered.com/app/928600'),
(178, 'F1™ 2017', '', 'Simulation,Racing', 'Codemasters', 'https://store.steampowered.com/app/515220'),
(179, 'Factorio', '', 'Action', 'Wube Software', 'https://store.steampowered.com/app/427520'),
(180, 'Fade to Silence', '', 'Role Playing', 'THQ Nordic GmbH', 'https://store.steampowered.com/app/706020'),
(181, 'Fallout 3: Game of the Year Ed', '', 'First-Person Shooter,Role Play', 'Bethesda Softworks', 'https://store.steampowered.com/app/22370'),
(182, 'Fallout 76', '', 'Role Playing', 'Bethesda Softworks LLC', ''),
(183, 'Fallout: New Vegas', '', 'Action,Role Playing', 'Bethesda Softworks', 'https://store.steampowered.com/app/22380'),
(184, 'Far Cry® 4', '', 'Action,Adventure,First-Person ', 'Ubisoft', 'https://store.steampowered.com/app/298110'),
(185, 'Far Cry® 4', '', 'Action,Adventure,First-Person ', 'Ubisoft', ''),
(186, 'Far Cry® 5', '', 'Action,Adventure,First-Person ', 'Ubisoft', 'https://store.steampowered.com/app/552520'),
(187, 'Far Cry® 5', '', 'Action,Adventure,First-Person ', 'Ubisoft', ''),
(188, 'Far Cry® New Dawn', '', 'Action,Adventure,First-Person ', 'Ubisoft', ''),
(189, 'Far Cry® New Dawn', '', 'Action,Adventure,First-Person ', 'Ubisoft', 'https://store.steampowered.com/app/939960'),
(190, 'Far Cry® Primal', '', 'Action,Adventure,First-Person ', 'Ubisoft', 'https://store.steampowered.com/app/371660'),
(191, 'Far Cry® Primal', '', 'Action,Adventure,First-Person ', 'Ubisoft', ''),
(192, 'FAR: Lone Sails', '', 'Indie,Adventure,Action', 'Mixtvision Digital', 'https://store.steampowered.com/app/609320'),
(193, 'Farm Together', '', 'Casual,Indie,Simulation', 'Milkstone Studios', 'https://store.steampowered.com/app/673950'),
(194, 'Farming Simulator 17', '', 'Simulation', 'Focus Home Interactive', 'https://store.steampowered.com/app/447020'),
(195, 'Farming Simulator 19', '', 'Casual,Simulation', 'Focus Home Interactive', 'https://store.steampowered.com/app/787860'),
(196, 'Fear The Wolves', '', 'Action,First-Person Shooter,Ad', 'Focus Home Interactive', 'https://store.steampowered.com/app/819500'),
(197, 'FIA European Truck Racing Cham', '', 'Racing,Simulation,Sports', 'Bigben Interactive', 'https://store.steampowered.com/app/940580'),
(198, 'Fimbul', '', 'Action,Adventure,Indie', 'Wild River Games', 'https://store.steampowered.com/app/771690'),
(199, 'Firewatch', '', 'Adventure,Indie', 'Panic', 'https://store.steampowered.com/app/383870'),
(200, 'Five Nights at Freddy\'s', '', 'Indie,Simulation,Action,Strate', 'Scott Cawthon', 'https://store.steampowered.com/app/319510'),
(201, 'Five Nights at Freddy\'s 2', '', 'Indie,Simulation,Action,Strate', 'Scott Cawthon', 'https://store.steampowered.com/app/332800'),
(202, 'Football Manager 2018', '', 'Simulation,Sports', 'SEGA', 'https://store.steampowered.com/app/624090'),
(203, 'Football Manager 2019', '', 'Sports,Simulation', 'SEGA', 'https://store.steampowered.com/app/872790'),
(204, 'Football Manager Touch 2018', '', 'Simulation,Sports', 'SEGA', 'https://store.steampowered.com/app/624120'),
(205, 'For Honor™', '', 'Action,Adventure', 'Ubisoft', ''),
(206, 'For Honor™', '', 'Action,Adventure', 'Ubisoft', 'https://store.steampowered.com/app/304390'),
(207, 'Forager', '', 'Action,Adventure,Casual,IndieS', 'Humble Bundle', 'https://store.steampowered.com/app/751780'),
(208, 'Forged Battalion', '', 'Indie,Simulation,Strategy', 'Team17 Digital Ltd', 'https://store.steampowered.com/app/686260'),
(209, 'Fortnite', '', 'Action,Free To Play,Massively ', 'Epic Games, Inc.', ''),
(210, 'Foundation', '', 'Indie,Simulation,Strategy', 'Polymorph Games', 'https://store.steampowered.com/app/690830'),
(211, 'Fractured Lands', '', 'Racing,First-Person Shooter,Ac', 'Unbroken Studios', 'https://store.steampowered.com/app/751240'),
(212, 'Friday the 13th: The Game', '', 'Action', 'Gun Media', 'https://store.steampowered.com/app/438740'),
(213, 'FrostPunk', '', 'Simulation,Strategy', '11 bit studios', 'https://store.steampowered.com/app/323190'),
(214, 'FrostRunner', '', 'Action,Free To Play,Indie,Plat', 'SMU Guildhall', 'https://store.steampowered.com/app/934840'),
(215, 'FTL: Faster Than Light', '', 'Casual,Indie,Simulation,Strate', 'Subset Games', 'https://store.steampowered.com/app/212680'),
(216, 'Garry\'s Mod', '', 'Indie,Simulation', 'Valve', 'https://store.steampowered.com/app/4000'),
(217, 'Generation Zero', '', 'Action,Adventure', 'Avalanche Studios Stockholm', 'https://store.steampowered.com/app/704270'),
(218, 'Gloomhaven', '', 'Adventure,Role Playing,Strateg', 'Asmodee Digital', 'https://store.steampowered.com/app/780290'),
(219, 'Golf With Your Friends', '', 'Casual,Indie,Sports', 'Blacklight Interactive', 'https://store.steampowered.com/app/431240'),
(220, 'Gravel', '', 'Racing,Sports', 'Milestone S.r.l.', 'https://store.steampowered.com/app/558260'),
(221, 'GreedFall', '', 'Action,Role Playing', 'Focus Home Interactive', 'https://store.steampowered.com/app/606880'),
(222, 'Green Hell', '', 'Indie,Simulation', 'Creepy Jar', 'https://store.steampowered.com/app/815370'),
(223, 'Grim Dawn', '', 'Role Playing,Action,Adventure,', 'Crate Entertainment', 'https://store.steampowered.com/app/219990'),
(224, 'GRIP: Combat Racing', '', 'Action,Indie,Racing', 'Wired Productions', 'https://store.steampowered.com/app/396900'),
(225, 'GTFO', '', 'Action,First-Person Shooter,Ma', '10 Chambers Collective', 'https://store.steampowered.com/app/493520'),
(226, 'Guacamelee! 2', '', 'Action,Adventure,Indie,Platfor', 'Drinkbox Studios', 'https://store.steampowered.com/app/534550'),
(227, 'Guild Wars 2', '', 'Massively Multiplayer Online,R', 'NCSOFT', ''),
(228, 'GUILTY GEAR Xrd -REVELATOR-', '', 'Action', 'Arc System Works', 'https://store.steampowered.com/app/520440'),
(229, 'Hacknet', '', 'Indie,Simulation,Puzzle', 'Surprise Attack', 'https://store.steampowered.com/app/365450'),
(230, 'Half-Life®', '', 'Action,First-Person Shooter', 'Valve', 'https://store.steampowered.com/app/70'),
(231, 'Half-Life® 2', '', 'Action,First-Person Shooter', 'Valve', 'https://store.steampowered.com/app/220'),
(232, 'Hearthstone: Heroes of Warcraf', '', 'Strategy', 'Blizzard Entertainment', ''),
(233, 'Hearts of Iron IV', '', 'Simulation,Strategy', 'Paradox Interactive', 'https://store.steampowered.com/app/394360'),
(234, 'Hell Let Loose', '', 'Action,Casual,Indie,Simulation', 'Team17 Digital Ltd', 'https://store.steampowered.com/app/686810'),
(235, 'Hellblade: Senua\'s Sacrifice', '', 'Action,Adventure,Indie', 'Ninja Theory', 'https://store.steampowered.com/app/414340'),
(236, 'Heroes of Newerth', '', 'Free To Play,Multiplayer Onlin', 'Frostburn Studios', ''),
(237, 'Heroes of the Storm', '', 'Action,Multiplayer Online Batt', 'Blizzard Entertainment', ''),
(238, 'HITMAN™', '', 'Action', 'IO Interactive A/S', 'https://store.steampowered.com/app/236870'),
(239, 'HITMAN™2', '', 'Action', 'Warner Bros Interactive Entertainment', 'https://store.steampowered.com/app/863550'),
(240, 'Hobo: Tough Life', '', 'Adventure,Indie,Role Playing,S', 'Perun Creative', 'https://store.steampowered.com/app/632300'),
(241, 'Holdfast: Nations At War', '', 'Action,Massively Multiplayer O', 'Anvil Game Studios', 'https://store.steampowered.com/app/589290'),
(242, 'Hollow Knight', '', 'Action,Adventure,Indie,Platfor', 'Team Cherry', 'https://store.steampowered.com/app/367520'),
(243, 'Homefront®: The Revolution', '', 'Action,Adventure,First-Person ', 'Deep Silver', 'https://store.steampowered.com/app/223100'),
(244, 'Hot Lava', '', 'Action,Adventure,Indie,Platfor', 'Klei Entertainment', 'https://store.steampowered.com/app/382560'),
(245, 'House Flipper', '', 'Casual,Family,Indie,Simulation', 'PlayWay S.A., Frozen District', 'https://store.steampowered.com/app/613100'),
(246, 'Human: Fall Flat', '', 'Adventure,Indie,Puzzle', 'Curve Digital', 'https://store.steampowered.com/app/477160'),
(247, 'Hunt: Showdown', '', 'Action,First-Person Shooter', 'Crytek', 'https://store.steampowered.com/app/594650'),
(248, 'I’m not a Monster', '', 'Indie,Massively Multiplayer On', 'Alawar Premium', 'https://store.steampowered.com/app/826600'),
(249, 'Ice Age: Scrat\'s Nutty Adventu', '', 'Adventure,Family', 'Outright Games Ltd', 'https://store.steampowered.com/app/751060'),
(250, 'Idle Champions of the Forgotte', '', 'Action,Adventure,Casual,Free T', 'Codename Entertainment Inc.', 'https://store.steampowered.com/app/627690'),
(251, 'Immortal: Unchained', '', 'Action,Adventure,Role Playing', 'Game Odyssey Limited', 'https://store.steampowered.com/app/369440'),
(252, 'Imperator: Rome', '', 'Casual,Simulation,Strategy', 'Paradox Interactive', 'https://store.steampowered.com/app/859580'),
(253, 'Infliction', '', 'Adventure,Indie', 'Caustic Reality', 'https://store.steampowered.com/app/692100'),
(254, 'Injustice™ 2', '', 'Action', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/627270'),
(255, 'INSOMNIA: The Ark', '', 'Action,Role Playing,Indie', 'HeroCraft', 'https://store.steampowered.com/app/783170'),
(256, 'Insurgency', '', 'Action,Indie,Strategy', 'New World Interactive', 'https://store.steampowered.com/app/222880'),
(257, 'Insurgency: Sandstorm', '', 'Action,First-Person Shooter', 'Focus Home Interactive', 'https://store.steampowered.com/app/581320'),
(258, 'Into the Breach', '', 'Indie,Role Playing,Simulation,', 'Subset Games', 'https://store.steampowered.com/app/590380'),
(259, 'Islands of Nyne: Battle Royale', '', 'First-Person Shooter,Action,In', 'Define Human Studios', 'https://store.steampowered.com/app/728540'),
(260, 'Jurassic World Evolution™', '', 'Simulation,Strategy', 'Frontier Developments Ltd.', 'https://store.steampowered.com/app/648350'),
(261, 'Kenshi', '', 'Role Playing,Simulation,Strate', 'Lo-Fi Games', 'https://store.steampowered.com/app/233860'),
(262, 'Kerbal Space Program', '', 'Indie,Simulation', 'Squad', 'https://store.steampowered.com/app/220200'),
(263, 'Killing Floor 2', '', 'Action', 'Tripwire Interactive', 'https://store.steampowered.com/app/232090'),
(264, 'Kingdom Come: Deliverance', '', 'Adventure,Action,Role Playing', 'Deep Silver', 'https://store.steampowered.com/app/379430'),
(265, 'Kingdom Rush Origins', '', 'Indie,Strategy', 'Ironhide Game Studio', 'https://store.steampowered.com/app/816340'),
(266, 'Kingdom Two Crowns', '', 'Adventure,Indie,Simulation,Str', 'Raw Fury', 'https://store.steampowered.com/app/701160'),
(267, 'KurtzPel', '', 'Action,Free To Play,Massively ', 'KOG', 'https://store.steampowered.com/app/844870'),
(268, 'Last Tide', '', 'Action,Indie,Massively Multipl', 'Digital Confectioners', 'https://store.steampowered.com/app/858590'),
(269, 'League of Legends', '', 'Action,Free To Play,Multiplaye', 'Riot Games', ''),
(270, 'Left 4 Dead 2', '', 'Action,First-Person Shooter', 'Valve', 'https://store.steampowered.com/app/550'),
(271, 'LEGO® Batman 2 DC Super Heroes', '', 'Action,Family,Adventure', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/213330'),
(272, 'LEGO® Batman: The Videogame', '', 'Action,Adventure,Family', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/21000'),
(273, 'LEGO® Batman™ 3: Beyond Gotham', '', 'Action,Adventure,Family', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/313690'),
(274, 'LEGO® DC Super-Villains', '', 'Action,Adventure,Family', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/829110'),
(275, 'LEGO® Harry Potter: Years 1-4', '', 'Action,Family', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/21130'),
(276, 'LEGO® Jurassic World', '', 'Action,Family,Adventure', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/352400'),
(277, 'LEGO® Marvel Super Heroes 2', '', 'Action,Adventure,Family', 'Warner Bros. Interactive', 'https://store.steampowered.com/app/647830'),
(278, 'LEGO® MARVEL\'s Avengers', '', 'Action,Adventure,Family', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/405310'),
(279, 'LEGO® Marvel™ Super Heroes', '', 'Action,Adventure,Family', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/249130'),
(280, 'LEGO® The Incredibles', '', 'Family,Action,Adventure', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/818320'),
(281, 'LEGO® Worlds', '', 'Adventure,Casual,Family', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/332310'),
(282, 'Leisure Suit Larry - Wet Dream', '', 'Adventure', 'Assemble Entertainment', 'https://store.steampowered.com/app/765870'),
(283, 'Lethal League Blaze', '', 'Action,Indie,Sports', 'Team Reptile', 'https://store.steampowered.com/app/553310'),
(284, 'Lineage® II', '', 'Free To Play,Massively Multipl', 'NCSOFT', ''),
(285, 'Little Big Workshop', '', 'Simulation,Strategy', 'HandyGames, THQ Nordic', 'https://store.steampowered.com/app/574720'),
(286, 'Lonely Mountains: Downhill', '', 'Action,Indie,Racing,Simulation', 'Megagon industries', 'https://store.steampowered.com/app/711540'),
(287, 'Mad Max', '', 'Action,Adventure', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/234140'),
(288, 'Mafia III', '', 'Action,Adventure', '2K Games', 'https://store.steampowered.com/app/360430'),
(289, 'Magic the Gathering: Arena', '', 'Puzzle,Strategy', 'Hasbro, Inc.', ''),
(290, 'Mechwarrior 5: Mercenaries', '', 'Action,Massively Multiplayer O', 'Piranha Games Inc.', ''),
(291, 'MEG 9: Lost Echoes', '', 'Action,Indie,Strategy', 'Skunkwerks Kinetic', 'https://store.steampowered.com/app/405190'),
(292, 'Men of War: Assault Squad 2', '', 'Action,Simulation,Strategy', '1C Company', 'https://store.steampowered.com/app/244450'),
(293, 'Metro 2033 Redux', '', 'Action,First-Person Shooter', 'Deep Silver', 'https://store.steampowered.com/app/286690'),
(294, 'Metro Exodus', '', 'Action,First-Person Shooter', 'Deep Silver', ''),
(295, 'Metro Exodus', '', 'First-Person Shooter,Action', 'Deep Silver', 'https://store.steampowered.com/app/412020'),
(296, 'Metro: Last Light Redux', '', 'Action,First-Person Shooter', 'Deep Silver', 'https://store.steampowered.com/app/287390'),
(297, 'Middle-earth™: Shadow of Mordo', '', 'Action,Role Playing', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/241930'),
(298, 'Middle-earth™: Shadow of War™', '', 'Action,Adventure,Role Playing', 'WB Games', 'https://store.steampowered.com/app/356190'),
(299, 'Minecraft: Java Version', '', 'Action,Adventure,Family', 'Microsoft Studios', ''),
(300, 'Minion Masters', '', 'Action,Free To Play,Indie,Mass', 'BetaDwarf', 'https://store.steampowered.com/app/489520'),
(301, 'Miracle snack shop', '', 'Casual,Indie,Simulation', 'TALESSHOP Co., Ltd.', 'https://store.steampowered.com/app/995460'),
(302, 'Monster Energy Supercross - Th', '', 'Racing,Simulation,Sports', 'Milestone S.r.l.', 'https://store.steampowered.com/app/882020'),
(303, 'Monster Energy Supercross - Th', '', 'Racing,Simulation,Sports', 'Milestone S.r.l.', 'https://store.steampowered.com/app/1089830'),
(304, 'Moonlighter', '', 'Action,Adventure,Indie', '11 bit studios', 'https://store.steampowered.com/app/606150'),
(305, 'Moons of Madness™', '', 'Adventure,Casual,Indie', 'Funcom', 'https://store.steampowered.com/app/1012840'),
(306, 'MORDHAU', '', 'Action,Indie', 'Triternion', 'https://store.steampowered.com/app/629760'),
(307, 'Mortal Kombat 11', '', 'Action', 'Warner Bros Interactive Entertainment', 'https://store.steampowered.com/app/976310'),
(308, 'Mortal Kombat X', '', 'Action,Arcade', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/307780'),
(309, 'Mosaic', '', 'Adventure,Indie', 'Raw Fury Games', 'https://store.steampowered.com/app/349270'),
(310, 'MOTHERGUNSHIP', '', 'Action,Indie,First-Person Shoo', 'Grip Digital', 'https://store.steampowered.com/app/574090'),
(311, 'MotoGP™19', '', 'Racing,Sports', 'Milestone S.r.l.', 'https://store.steampowered.com/app/984780'),
(312, 'Mount & Blade', '', 'Indie,Role Playing', 'TaleWorlds Entertainment', 'https://store.steampowered.com/app/22100'),
(313, 'Mount & Blade: Warband', '', 'Action,Role Playing', 'TaleWorlds Entertainment', 'https://store.steampowered.com/app/48700'),
(314, 'MUSYNX', '', 'Indie,Simulation', 'Zodiac Interactive', 'https://store.steampowered.com/app/952040'),
(315, 'Mutant Year Zero: Road to Eden', '', 'Adventure,Role Playing,Strateg', 'Funcom', 'https://store.steampowered.com/app/760060'),
(316, 'MXGP 2019 - The Official Motoc', '', 'Racing,Simulation,Sports', 'Milestone S.r.l.', 'https://store.steampowered.com/app/1018160'),
(317, 'My Memory of Us', '', 'Action,Adventure,Casual,Indie', 'IMGN.PRO', 'https://store.steampowered.com/app/651500'),
(318, 'My Time at Portia', '', 'Adventure,Casual,Family,IndieR', 'Team17 Digital Ltd', 'https://store.steampowered.com/app/666140'),
(319, 'Myst III: Exile', '', 'Adventure,Casual,Puzzle', 'Cyan Worlds Inc.', 'https://store.steampowered.com/app/925930'),
(320, 'Myst IV: Revelation', '', 'Adventure,Casual,Puzzle', 'Cyan Worlds Inc.', 'https://store.steampowered.com/app/925940'),
(321, 'Myst V: End of Ages', '', 'Adventure,Casual,Puzzle', 'Cyan Worlds Inc.', 'https://store.steampowered.com/app/208110'),
(322, 'Myst® Masterpiece Edition', '', 'Adventure,Casual,Puzzle', 'Cyan Worlds Inc.', 'https://store.steampowered.com/app/63660'),
(323, 'Narcosis', '', 'Adventure,Indie', 'Honor Code, Inc.', 'https://store.steampowered.com/app/366870'),
(324, 'NASCAR Heat 3', '', 'Sports,Racing', '704 Games Company', 'https://store.steampowered.com/app/905450'),
(325, 'NBA 2K Playgrounds 2', '', 'Sports,Arcade', '2K', 'https://store.steampowered.com/app/726590'),
(326, 'NBA 2K17', '', 'Sports,Simulation', '2K', 'https://store.steampowered.com/app/385760'),
(327, 'NBA 2K18', '', 'Simulation,Sports', '2K', 'https://store.steampowered.com/app/577800'),
(328, 'NBA 2K19', '', 'Sports,Simulation', '2K', 'https://store.steampowered.com/app/841370'),
(329, 'Nex Machina', '', 'Action,Indie', 'Housemarque', 'https://store.steampowered.com/app/404540'),
(330, 'Next Day: Survival', '', 'Action,Indie,Role Playing,Mass', 'Last Level', 'https://store.steampowered.com/app/519190'),
(331, 'No Man\'s Sky', '', 'Adventure,Action', 'Hello Games', 'https://store.steampowered.com/app/275850'),
(332, 'Orwell: Keeping an Eye On You', '', 'Adventure,Indie,Simulation', 'Fellow Traveller', 'https://store.steampowered.com/app/491950'),
(333, 'Out of the Park Baseball 19', '', 'Sports,Indie,Simulation,Strate', 'Out of the Park Developments', 'https://store.steampowered.com/app/619290'),
(334, 'Outlast', '', 'Action,Indie,Adventure', 'Red Barrels', 'https://store.steampowered.com/app/238320'),
(335, 'Outward', '', 'Action,Role Playing', 'Deep Silver', 'https://store.steampowered.com/app/794260'),
(336, 'Overcooked 2', '', 'Action,Casual,Indie', 'Team17 Digital Ltd', 'https://store.steampowered.com/app/728880'),
(337, 'OVERKILL\'s The Walking Dead', '', 'Action,First-Person Shooter', 'OVERKILL - A Starbreeze Studio', 'https://store.steampowered.com/app/717690'),
(338, 'Overland', '', 'Strategy', 'Finji', 'https://store.steampowered.com/app/355680'),
(339, 'Overwatch', '', 'First-Person Shooter,Massively', 'Blizzard Entertainment', ''),
(340, 'Owlboy', '', 'Action,Adventure,Indie', 'D-Pad Studio', 'https://store.steampowered.com/app/115800'),
(341, 'Oxygen Not Included', '', 'Indie,Simulation', 'Klei Entertainment', 'https://store.steampowered.com/app/457140'),
(342, 'Paladins®', '', 'Action,Free To Play', 'Hi-Rez Studios, Inc.', 'https://store.steampowered.com/app/444090'),
(343, 'Papers, Please', '', 'Adventure,Casual,Indie,PuzzleS', '3909', 'https://store.steampowered.com/app/239030'),
(344, 'Parkitect', '', 'Indie,Simulation', 'Texel Raptor', 'https://store.steampowered.com/app/453090'),
(345, 'Past Cure', '', 'Action,Indie', 'Phantom 8', 'https://store.steampowered.com/app/646050'),
(346, 'Path of Exile', '', 'Adventure,Free To Play,Massive', 'Grinding Gear Games', ''),
(347, 'Pathfinder: Kingmaker® - Enhan', '', 'Role Playing,Adventure', 'Deep Silver', 'https://store.steampowered.com/app/640820'),
(348, 'Pax Nova', '', 'Indie,Strategy', 'Iceberg Interactive', 'https://store.steampowered.com/app/804850'),
(349, 'PAYDAY 2: Ultimate Edition', '', 'Action,First-Person Shooter,Ro', 'Starbreeze Publishing AB, 505 Games', 'https://store.steampowered.com/app/218620'),
(350, 'PC Building Simulator', '', 'Simulation,Indie', 'The Irregular Corporation', 'https://store.steampowered.com/app/621060'),
(351, 'Phantom Doctrine', '', 'Action,Role Playing,Strategy,I', 'Good Shepherd Entertainment', 'https://store.steampowered.com/app/559100'),
(352, 'Pillars of Eternity', '', 'Role Playing', 'Paradox Interactive', 'https://store.steampowered.com/app/291650'),
(353, 'Pillars of Eternity II: Deadfi', '', 'Role Playing', 'Obsidian Entertainment', 'https://store.steampowered.com/app/560130'),
(354, 'PixARK', '', 'Action,Adventure,Casual,IndieM', 'Snail Game', 'https://store.steampowered.com/app/593600'),
(355, 'Plane Mechanic Simulator', '', 'Casual,Indie,Simulation', 'Movie Games S.A., PlayWay S.A.', 'https://store.steampowered.com/app/803980'),
(356, 'PLANET ALPHA', '', 'Action,Adventure,Indie,Platfor', 'Team17 Digital Ltd', 'https://store.steampowered.com/app/485030'),
(357, 'Planet Coaster®', '', 'Simulation,Strategy', 'Frontier Developments', 'https://store.steampowered.com/app/493340'),
(358, 'Planet Zoo', '', 'Simulation,Strategy', 'Frontier Developments', 'https://store.steampowered.com/app/703080'),
(359, 'PlanetSide 2', '', 'Action,First-Person Shooter,Fr', 'Daybreak Game Company', 'https://store.steampowered.com/app/218230'),
(360, 'Planetside Arena', '', 'Action,Massively Multiplayer O', 'Daybreak Game Company', 'https://store.steampowered.com/app/987350'),
(361, 'PLAYERUNKNOWN\'S BATTLEGROUNDS', '', 'Action,Adventure,First-Person ', 'PUBG Corporation', 'https://store.steampowered.com/app/578080'),
(362, 'PLAYERUNKNOWN\'S BATTLEGROUNDS ', '', 'Action,Adventure,Massively Mul', 'PUBG Corporation', 'https://store.steampowered.com/app/622590'),
(363, 'Portal 2', '', 'Action,Adventure,First-Person ', 'Valve', 'https://store.steampowered.com/app/620'),
(364, 'Portal™', '', 'Action', 'Valve', 'https://store.steampowered.com/app/400'),
(365, 'Post Scriptum', '', 'Action,Indie,Massively Multipl', 'Offworld Industries', 'https://store.steampowered.com/app/736220'),
(366, 'Praetorians - HD Remaster', '', 'Strategy', 'Kalypso Media Group', 'https://store.steampowered.com/app/1100420'),
(367, 'Praey for the Gods', '', 'Action,Adventure,Indie,Role Pl', 'No Matter Studios', 'https://store.steampowered.com/app/494430'),
(368, 'Prey®', '', 'Action,Adventure,First-Person ', 'Bethesda Softworks', 'https://store.steampowered.com/app/480490'),
(369, 'Project CARS', '', 'Casual,Racing,Simulation,Sport', 'Slightly Mad Studios', 'https://store.steampowered.com/app/234630'),
(370, 'Project CARS 2', '', 'Simulation,Racing', 'BANDAI NAMCO Entertainment', 'https://store.steampowered.com/app/378860'),
(371, 'Project Winter', '', 'Action,Adventure,Casual,IndieS', 'Other Ocean', 'https://store.steampowered.com/app/774861'),
(372, 'PUBG: Closed Experimental Serv', '', 'Action,Adventure,Massively Mul', 'PUBG Corporation', 'https://store.steampowered.com/app/813000'),
(373, 'Pummel Party', '', 'Action,Casual,Indie', 'Rebuilt Games', 'https://store.steampowered.com/app/880940'),
(374, 'Pure Farming 2018', '', 'Simulation', 'Techland Publishing', 'https://store.steampowered.com/app/534370'),
(375, 'Pyre', '', 'Action,Indie,Role Playing', 'Supergiant Games', 'https://store.steampowered.com/app/462770'),
(376, 'Q.U.B.E. 2', '', 'Indie,Adventure,Action', 'Trapped Nerve Ltd', 'https://store.steampowered.com/app/359100'),
(377, 'Quake II RTX', '', 'Action,First-Person Shooter,Fr', 'NVIDIA Corporation', 'https://store.steampowered.com/app/1089130'),
(378, 'Quake® Champions', '', 'First-Person Shooter,Free To P', 'Bethesda Softworks', 'https://store.steampowered.com/app/611500'),
(379, 'Race With Ryan', '', 'Family,Racing,Sports', 'Outright Games Ltd', 'https://store.steampowered.com/app/1054990'),
(380, 'RAD', '', 'Action', 'BANDAI NAMCO Entertainment America Inc.', 'https://store.steampowered.com/app/722560'),
(381, 'Raft', '', 'Adventure', 'Axolot Games', 'https://store.steampowered.com/app/648800'),
(382, 'RAGE 2', '', 'Action,First-Person Shooter', 'Bethesda Softworks LLC', ''),
(383, 'RAGE 2', '', 'Action,First-Person Shooter', 'Bethesda Softworks LLC', 'https://store.steampowered.com/app/548570'),
(384, 'RAID: World War II', '', 'Action,Adventure,Role Playing', 'Starbreeze Publishing AB', 'https://store.steampowered.com/app/414740'),
(385, 'Ravenfield', '', 'Action,Indie', 'SteelRaven7', 'https://store.steampowered.com/app/636480'),
(386, 'Realm Grinder', '', 'Casual,Free To Play,Role Playi', 'Kongregate', 'https://store.steampowered.com/app/610080'),
(387, 'Realm Royale', '', 'Action,Free To Play,First-Pers', 'Hi-Rez Studios', 'https://store.steampowered.com/app/813820'),
(388, 'realMyst: Masterpiece Edition', '', 'Adventure,Casual,Indie,Puzzle', 'Cyan Worlds Inc.', 'https://store.steampowered.com/app/244430'),
(389, 'Reigns: Game of Thrones', '', 'Adventure,Indie,Role Playing', 'Devolver Digital', 'https://store.steampowered.com/app/897820'),
(390, 'Remnant: From the Ashes', '', 'Action,Adventure,Role Playing', 'Perfect World Entertainment', 'https://store.steampowered.com/app/617290'),
(391, 'Rend', '', 'Action,Adventure,Indie,Massive', 'Frostkeep Studios', 'https://store.steampowered.com/app/547860'),
(392, 'RIDE 3', '', 'Racing,Simulation,Sports', 'Milestone S.r.l.', 'https://store.steampowered.com/app/759740'),
(393, 'RiME', '', 'Adventure,Puzzle', 'Grey Box', 'https://store.steampowered.com/app/493200'),
(394, 'RimWorld', '', 'Indie,Simulation,Strategy', 'Ludeon Studios', 'https://store.steampowered.com/app/294100'),
(395, 'Risen 3 - Titan Lords', '', 'Role Playing,Adventure', 'Deep Silver', 'https://store.steampowered.com/app/249230'),
(396, 'Rising Storm 2: Vietnam', '', 'Action,Massively Multiplayer O', 'Tripwire Interactive', 'https://store.steampowered.com/app/418460'),
(397, 'Riven: The Sequel to MYST', '', 'Adventure,Casual,Puzzle', 'Cyan Worlds Inc.', 'https://store.steampowered.com/app/63610'),
(398, 'Rocket League®', '', 'Action,Arcade,Casual,RacingSpo', 'Psyonix, inc.', 'https://store.steampowered.com/app/252950'),
(399, 'Rugby 20', '', 'Simulation,Sports', 'Bigben Interactive', 'https://store.steampowered.com/app/846730'),
(400, 'Russian Fishing 4', '', 'Adventure,Casual,Free To Play,', 'Russian Fishing', 'https://store.steampowered.com/app/766570'),
(401, 'Rust', '', 'Action,Adventure,Indie,Massive', 'Facepunch Studios', 'https://store.steampowered.com/app/252490'),
(402, 'Sacred 3', '', 'Role Playing,Action', 'Deep Silver', 'https://store.steampowered.com/app/247950'),
(403, 'Salt and Sanctuary', '', 'Action,Indie,Role Playing', 'Ska Studios', 'https://store.steampowered.com/app/283640'),
(404, 'SCP: Secret Laboratory', '', 'Action,First-Person Shooter,Fr', 'Northwood Studios', 'https://store.steampowered.com/app/700330'),
(405, 'SCUM', '', 'Action,Adventure,Massively Mul', 'Devolver Digital', 'https://store.steampowered.com/app/513710'),
(406, 'Sekiro™: Shadows Die Twice', '', 'Action,Adventure', 'Activision, Inc', 'https://store.steampowered.com/app/814380'),
(407, 'Semblance', '', 'Indie,Puzzle,Adventure,Action', 'Good Shepherd Entertainment', 'https://store.steampowered.com/app/700160'),
(408, 'Session: Skateboarding Sim Gam', '', 'Indie,Simulation,Sports,Strate', 'Crea-ture Studios', 'https://store.steampowered.com/app/861650'),
(409, 'Shadow Warrior 2', '', 'Action,Adventure,First-Person ', 'Devolver Digital', 'https://store.steampowered.com/app/324800'),
(410, 'Shadowrun Returns', '', 'Adventure,Indie,Role Playing,S', 'Harebrained Schemes', 'https://store.steampowered.com/app/234650'),
(411, 'Shenmue I & II', '', 'Action,Adventure,Role Playing', 'SEGA', 'https://store.steampowered.com/app/758330'),
(412, 'Shenmue III', '', 'Action,Adventure', 'Deep Silver', ''),
(413, 'Sid Meier’s Civilization® VI', '', 'Strategy', '2K Games', 'https://store.steampowered.com/app/289070'),
(414, 'Sid Meier\'s Civilization® V', '', 'Strategy', '2K Games', 'https://store.steampowered.com/app/8930'),
(415, 'Silver Chains', '', 'Adventure,Indie', 'Headup', 'https://store.steampowered.com/app/975470'),
(416, 'Skybolt Zack', '', 'Action,Adventure,Arcade,IndieP', 'Green Man Gaming', 'https://store.steampowered.com/app/909670'),
(417, 'Slay the Spire', '', 'Indie,Strategy', 'Mega Crit Games', 'https://store.steampowered.com/app/646570'),
(418, 'SMITE®', '', 'Action,Free To Play,Multiplaye', 'Hi-Rez Studios', 'https://store.steampowered.com/app/386360'),
(419, 'Sniper Elite 3', '', 'Action,Adventure', 'Rebellion', 'https://store.steampowered.com/app/238090'),
(420, 'Sniper Elite 4', '', 'Action,Adventure', 'Rebellion', 'https://store.steampowered.com/app/312660'),
(421, 'Sniper Elite V2 Remastered', '', 'Action,First-Person Shooter', 'Rebellion', 'https://store.steampowered.com/app/728740'),
(422, 'SOMA', '', 'Action,Adventure,Indie', 'Frictional Games', 'https://store.steampowered.com/app/282140'),
(423, 'Sonic Forces', '', 'Action,Adventure', 'SEGA', 'https://store.steampowered.com/app/637100'),
(424, 'Sonic Mania', '', 'Action,Adventure,Family,Arcade', 'SEGA', 'https://store.steampowered.com/app/584400'),
(425, 'SOULCALIBUR™ VI', '', 'Action,Arcade', 'Bandai Namco Entertainment', 'https://store.steampowered.com/app/544750'),
(426, 'SoulWorker', '', 'Free To Play,Role Playing,Mass', 'Gameforge 4D GmbH', 'https://store.steampowered.com/app/630100'),
(427, 'Space Engineers', '', 'Action,Indie,Simulation,Strate', 'Keen Software House', 'https://store.steampowered.com/app/244850'),
(428, 'Space Hulk: Tactics', '', 'Strategy', 'Focus Home Interactive', 'https://store.steampowered.com/app/492230'),
(429, 'Spacelords', '', 'Adventure,Action,Free To Play,', 'MercurySteam', 'https://store.steampowered.com/app/436180');
INSERT INTO `juego` (`id_juego`, `titulo`, `descripcion`, `genero`, `publisher`, `enlace`) VALUES
(430, 'SpellForce 3', '', 'Role Playing,Strategy', 'THQ Nordic', 'https://store.steampowered.com/app/311290'),
(431, 'SpellForce 3: Soul Harvest', '', 'Role Playing,Strategy', 'THQ Nordic', 'https://store.steampowered.com/app/817540'),
(432, 'Spintires: MudRunner', '', 'Simulation,Racing', 'Focus Home Interactive', 'https://store.steampowered.com/app/675010'),
(433, 'Splitgate: Arena Warfare', '', 'First-Person Shooter,Free To P', '1047 Games', 'https://store.steampowered.com/app/677620'),
(434, 'SpyParty', '', 'Action,Indie,Simulation,Strate', 'Chris Hecker', 'https://store.steampowered.com/app/329070'),
(435, 'Spyro™ Reignited Trilogy', '', 'Action,Adventure,First-Person ', 'Activision', 'https://store.steampowered.com/app/996580'),
(436, 'Squad', '', 'Action,Indie,Strategy', 'Offworld Industries', 'https://store.steampowered.com/app/393380'),
(437, 'Star Control®: Origins', '', 'Action,Adventure,Casual,IndieR', 'Stardock Entertainment', 'https://store.steampowered.com/app/271260'),
(438, 'Star Wars: Battlefront 2 (Clas', '', 'Action', 'Disney Interactive', 'https://store.steampowered.com/app/6060'),
(439, 'STAR WARS™ - Knights of the Ol', '', 'Adventure,Role Playing', 'Disney Interactive, Lucasfilm', 'https://store.steampowered.com/app/32370'),
(440, 'Starbound', '', 'Action,Adventure,Indie,Role Pl', 'Chucklefish', 'https://store.steampowered.com/app/211820'),
(441, 'StarCraft II®', '', 'Strategy', 'Blizzard Entertainment', ''),
(442, 'StarCraft® Remastered', '', 'Strategy,Multiplayer Online Ba', 'Activision Blizzard', ''),
(443, 'Stardew Valley', '', 'Indie,Role Playing,Simulation', 'Chucklefish', 'https://store.steampowered.com/app/413150'),
(444, 'Startup Company', '', 'Casual,Indie,Simulation,Strate', 'Hovgaard Games', 'https://store.steampowered.com/app/606800'),
(445, 'Stellaris', '', 'Strategy', 'Paradox Interactive', 'https://store.steampowered.com/app/281990'),
(446, 'Still There', '', 'Adventure,Indie,Puzzle', 'Iceberg Interactive', 'https://store.steampowered.com/app/1063490'),
(447, 'Strange Brigade', '', 'Action,Adventure', 'Rebellion', 'https://store.steampowered.com/app/312670'),
(448, 'Subnautica', '', 'Adventure', 'Unknown Worlds', 'https://store.steampowered.com/app/264710'),
(449, 'Subnautica: Below Zero', '', 'Adventure,Indie', 'Unknown Worlds Entertainment', 'https://store.steampowered.com/app/848450'),
(450, 'Sundered', '', 'Action,Adventure,Indie,Platfor', 'Thunder Lotus Games', 'https://store.steampowered.com/app/535480'),
(451, 'Sunset Overdrive', '', 'Action,First-Person Shooter,Ad', 'Microsoft Studios', 'https://store.steampowered.com/app/847370'),
(452, 'Super Mega Baseball 2', '', 'Indie,Family,Sports,Simulation', 'Metalhead Software Inc.', 'https://store.steampowered.com/app/414870'),
(453, 'Surviving Mars', '', 'Simulation,Strategy', 'Paradox Interactive', 'https://store.steampowered.com/app/464920'),
(454, 'Switchblade', '', 'Indie,Action,Multiplayer Onlin', 'Lucid Publishing Ltd', 'https://store.steampowered.com/app/585630'),
(455, 'Tabletop Simulator', '', 'Casual,Family,Indie,Role Playi', 'Berserk Games', 'https://store.steampowered.com/app/286160'),
(456, 'Tacoma', '', 'Adventure,Indie', 'Fullbright', 'https://store.steampowered.com/app/343860'),
(457, 'Team Fortress 2', '', 'Action,Free To Play', 'Valve', 'https://store.steampowered.com/app/440'),
(458, 'Team Sonic Racing™', '', 'Family,Racing', 'SEGA', 'https://store.steampowered.com/app/785260'),
(459, 'TEKKEN 7', '', 'Action,Arcade', 'BANDAI NAMCO Entertainment', 'https://store.steampowered.com/app/389730'),
(460, 'TERA', '', 'Action,Adventure,Free To Play,', 'En Masse Entertainment', 'https://store.steampowered.com/app/323370'),
(461, 'Terminator: Resistance', '', 'Action,Adventure,Role Playing', 'Reef Entertainment', 'https://store.steampowered.com/app/954740'),
(462, 'Terraria', '', 'Action,Adventure,Indie,Role Pl', 'Re-Logic', 'https://store.steampowered.com/app/105600'),
(463, 'The Bard\'s Tale IV', '', 'Role Playing', 'inXile Entertainment', 'https://store.steampowered.com/app/566090'),
(464, 'The Bradwell Conspiracy', '', 'Adventure,Casual,Indie', 'Bossa Studios', 'https://store.steampowered.com/app/421790'),
(465, 'The Crew® 2', '', 'Action,Racing,Massively Multip', 'Ubisoft', ''),
(466, 'The Crew® 2', '', 'Action,Racing,Massively Multip', 'Ubisoft', 'https://store.steampowered.com/app/646910'),
(467, 'The Crew™', '', 'Action,Massively Multiplayer O', 'Ubisoft', ''),
(468, 'The Crew™', '', 'Action,Massively Multiplayer O', 'Ubisoft', 'https://store.steampowered.com/app/241560'),
(469, 'The D.R.G. Initiative', '', 'Action,Indie', 'Slingshot Cartel', 'https://store.steampowered.com/app/613580'),
(470, 'The Darkness II', '', 'Action,Adventure,Role Playing', '2K Games', 'https://store.steampowered.com/app/67370'),
(471, 'The Elder Scrolls V: Skyrim', '', 'Role Playing', 'Bethesda Softworks', 'https://store.steampowered.com/app/72850'),
(472, 'The Elder Scrolls V: Skyrim Sp', '', 'Role Playing', 'Bethesda Softworks', 'https://store.steampowered.com/app/489830'),
(473, 'The Elder Scrolls® Online: Els', '', 'Role Playing,Massively Multipl', 'Bethesda Softworks', 'https://store.steampowered.com/app/306130'),
(474, 'The Evil Within 2', '', 'Action,Adventure', 'Bethesda Softworks', 'https://store.steampowered.com/app/601430'),
(475, 'The Fisherman - Fishing Planet', '', 'Massively Multiplayer Online,S', 'Bigben Interactive', 'https://store.steampowered.com/app/1072480'),
(476, 'The Forest', '', 'First-Person Shooter', 'Endnight Games Ltd', 'https://store.steampowered.com/app/242760'),
(477, 'The Golf Club™ 2019 featuring ', '', 'Sports,Indie,Simulation,Strate', '2K', 'https://store.steampowered.com/app/695290'),
(478, 'The Isle', '', 'Action,Adventure,Indie,Massive', 'Afterthought LLC', 'https://store.steampowered.com/app/376210'),
(479, 'The Jackbox Party Pack 3', '', 'Casual,Family,Indie,Strategy', 'Jackbox Games, Inc.', 'https://store.steampowered.com/app/434170'),
(480, 'THE KING OF FIGHTERS \'98 ULTIM', '', 'Action,Arcade', 'SNK CORPORATION', 'https://store.steampowered.com/app/222420'),
(481, 'The Legend of Bum-Bo', '', 'Adventure,Indie,Strategy', 'Edmund McMillen', 'https://store.steampowered.com/app/1148650'),
(482, 'The Legend of Heroes: Trails o', '', 'Adventure,Role Playing', 'XSEED Games, Marvelous USA, Inc.', 'https://store.steampowered.com/app/538680'),
(483, 'The LEGO® Movie - Videogame', '', 'Action,Family,Adventure', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/267530'),
(484, 'The LEGO® Movie 2 Videogame', '', 'Action,Adventure,Casual,Family', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/881320'),
(485, 'The LEGO® NINJAGO® Movie Video', '', 'Action,Family,Adventure', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/640590'),
(486, 'The Long Dark', '', 'Adventure,Indie,Strategy,Simul', 'Hinterland Studio Inc.', 'https://store.steampowered.com/app/305620'),
(487, 'The Surge', '', 'Action,Role Playing', 'Focus Home Interactive', 'https://store.steampowered.com/app/378540'),
(488, 'The Surge 2', '', 'Action', 'Focus Home Interactive', 'https://store.steampowered.com/app/644830'),
(489, 'The Walking Dead: The Final Se', '', 'Adventure,Action', 'Telltale Games', 'https://store.steampowered.com/app/866800'),
(490, 'The Witcher 2: Assassins of Ki', '', 'Role Playing', 'CD Projekt RED', 'https://store.steampowered.com/app/20920'),
(491, 'The Witcher® 3: Wild Hunt', '', 'Role Playing', 'CD PROJEKT RED', 'https://store.steampowered.com/app/292030'),
(492, 'The Witness', '', 'Adventure,Casual,Indie,Puzzle', 'Thekla, Inc.', 'https://store.steampowered.com/app/210970'),
(493, 'theHunter: Call of the Wild™', '', 'Adventure,Simulation,Sports', 'Avalanche Studios', 'https://store.steampowered.com/app/518790'),
(494, 'They Are Billions', '', 'Strategy', 'Numantian Games', 'https://store.steampowered.com/app/644930'),
(495, 'Thief Simulator', '', 'Action,Adventure,Indie,Simulat', 'PlayWay S.A.', 'https://store.steampowered.com/app/704850'),
(496, 'This War of Mine', '', 'Adventure,Indie,Platformer,Sim', '11 bit studios', 'https://store.steampowered.com/app/282070'),
(497, 'Thronebreaker: The Witcher Tal', '', 'Adventure,Role Playing', 'CD PROJEKT RED', 'https://store.steampowered.com/app/973760'),
(498, 'Tom Clancy’s Ghost Recon Break', '', 'Action,Adventure', 'Ubisoft', ''),
(499, 'Tom Clancy’s The Division® 2', '', 'Action,Adventure,Role Playing,', 'Ubisoft', ''),
(500, 'Tom Clancy’s The Division® 2', '', 'Action,Adventure,Role Playing,', 'Ubisoft', ''),
(501, 'Tom Clancy\'s Ghost Recon® Wild', '', 'Action,Adventure', 'Ubisoft', 'https://store.steampowered.com/app/460930'),
(502, 'Tom Clancy\'s Ghost Recon® Wild', '', 'Action,Adventure', 'Ubisoft', ''),
(503, 'Tom Clancy\'s Rainbow Six® Sieg', '', 'Action,First-Person Shooter,Ma', 'Ubisoft', ''),
(504, 'Tom Clancy\'s Rainbow Six® Sieg', '', 'Action,First-Person Shooter', 'Ubisoft', 'https://store.steampowered.com/app/359550'),
(505, 'Tom Clancy\'s Rainbow Six® Sieg', '', 'Action,First-Person Shooter', 'Ubisoft', ''),
(506, 'Tom Clancy\'s The Division™', '', 'Action,Adventure,Role Playing,', 'Ubisoft', ''),
(507, 'Tom Clancy\'s The Division™', '', 'Action,Adventure,Role Playing,', 'Ubisoft', 'https://store.steampowered.com/app/365590'),
(508, 'Torchlight II', '', 'Action,Adventure,Indie,Role Pl', 'Runic Games', 'https://store.steampowered.com/app/200710'),
(509, 'Total War: THREE KINGDOMS', '', 'Action,Strategy', 'SEGA', 'https://store.steampowered.com/app/779340'),
(510, 'Totally Accurate Battle Simula', '', 'Casual,Indie,Simulation,Strate', 'Landfall', 'https://store.steampowered.com/app/508440'),
(511, 'Totally Accurate Battlegrounds', '', 'Action,Casual,Indie,Massively ', 'Landfall', 'https://store.steampowered.com/app/823130'),
(512, 'Tower of Time', '', 'Role Playing,Strategy', 'Event Horizon', 'https://store.steampowered.com/app/617480'),
(513, 'Transport Fever', '', 'Simulation', 'Good Shepherd Entertainment', 'https://store.steampowered.com/app/446800'),
(514, 'Transport Fever 2', '', 'Simulation,Strategy', 'Good Shepherd Entertainment', 'https://store.steampowered.com/app/1066780'),
(515, 'Tree of Savior', '', 'Free To Play,Massively Multipl', 'IMCGAMES Co.,Ltd.', 'https://store.steampowered.com/app/372000'),
(516, 'Trials® Rising', '', 'Racing', 'Ubisoft', 'https://store.steampowered.com/app/641080'),
(517, 'Trials® Rising', '', 'Racing', 'Ubisoft', ''),
(518, 'Tricky Towers', '', 'Casual,Indie,Puzzle,Strategy', 'WeirdBeard', 'https://store.steampowered.com/app/437920'),
(519, 'Trine 4: The Nightmare Prince', '', 'Action,Adventure,Indie,Platfor', 'Frozenbyte', 'https://store.steampowered.com/app/690640'),
(520, 'Triton Survival', '', 'Action,Indie,Role Playing', 'DreamsSoftGames', 'https://store.steampowered.com/app/1013450'),
(521, 'Tropico 6', '', 'Casual,Simulation,Strategy', 'Kalypso Media', 'https://store.steampowered.com/app/492720'),
(522, 'Trove', '', 'Action,Adventure,Casual,Free T', 'Trion Worlds', 'https://store.steampowered.com/app/304050'),
(523, 'Trover Saves The Universe', '', 'Action,Adventure,Indie', 'Squanch Games, Inc.', 'https://store.steampowered.com/app/1051200'),
(524, 'TT Isle of Man', '', 'Racing,Sports,Simulation', 'Bigben Interactive', 'https://store.steampowered.com/app/626610'),
(525, 'Two Point Hospital', '', 'Simulation,Strategy', 'SEGA', 'https://store.steampowered.com/app/535930'),
(526, 'Ultimate Fishing Simulator', '', 'Casual,Simulation,Sports', 'Ultimate Games S.A., PlayWay S.A.', 'https://store.steampowered.com/app/468920'),
(527, 'Underworld Ascendant®', '', 'Action,Adventure,Indie,Role Pl', '505 Games', 'https://store.steampowered.com/app/692840'),
(528, 'Unknown Fate', '', 'Indie,Adventure', '1C Publishing', 'https://store.steampowered.com/app/510390'),
(529, 'Unturned', '', 'Action,Adventure,Free To Play,', 'Smartly Dressed Games', 'https://store.steampowered.com/app/304930'),
(530, 'URU: Complete Chronicles', '', 'Adventure,Casual,Puzzle', 'Cyan Worlds Inc.', 'https://store.steampowered.com/app/63650'),
(531, 'Valkyria Chronicles 4', '', 'Action,Role Playing,Strategy', 'SEGA', 'https://store.steampowered.com/app/790820'),
(532, 'Vampyr', '', 'Action,Role Playing', 'Dontnod Entertainment', 'https://store.steampowered.com/app/427290'),
(533, 'Vanquish', '', 'First-Person Shooter,Action', 'SEGA', 'https://store.steampowered.com/app/460810'),
(534, 'V-Rally 4', '', 'Racing', 'Bigben', 'https://store.steampowered.com/app/658700'),
(535, 'War of Rights', '', 'Action,Indie,Simulation', 'Campfire Games', 'https://store.steampowered.com/app/424030'),
(536, 'War Thunder', '', 'Action,Massively Multiplayer O', 'Gaijin Entertainment', ''),
(537, 'War Thunder', '', 'Massively Multiplayer Online,F', 'Gaijin Entertainment', 'https://store.steampowered.com/app/236390'),
(538, 'Warframe', '', 'Action,Free To Play,Multiplaye', 'Digital Extremes', 'https://store.steampowered.com/app/230410'),
(539, 'Warhammer 40,000: Inquisitor -', '', 'Action,Indie,Adventure,Role Pl', 'NeocoreGames', 'https://store.steampowered.com/app/527430'),
(540, 'Warhammer 40,000: Inquisitor -', '', 'Action,Adventure,Indie,Role Pl', 'NeocoreGames', 'https://store.steampowered.com/app/1042800'),
(541, 'Warhammer 40,000: Mechanicus', '', 'Strategy', 'Kasedo Games', 'https://store.steampowered.com/app/673880'),
(542, 'Warhammer: Chaosbane', '', 'Action,Adventure,Role Playing', 'Bigben Interactive', 'https://store.steampowered.com/app/774241'),
(543, 'Warhammer: End Times - Vermint', '', 'Action,Indie', 'Fatshark', 'https://store.steampowered.com/app/235540'),
(544, 'Warhammer: Vermintide 2', '', 'Action,Indie', 'Fatshark', 'https://store.steampowered.com/app/552500'),
(545, 'WARRIORS OROCHI 4', '', 'Action', 'KOEI TECMO GAMES CO., LTD.', 'https://store.steampowered.com/app/831560'),
(546, 'Watch_Dogs® 2', '', 'Action,Adventure', 'Ubisoft', ''),
(547, 'Watch_Dogs® 2', '', 'Action,Adventure', 'Ubisoft', 'https://store.steampowered.com/app/447040'),
(548, 'Watch_Dogs™', '', 'Action,Adventure', 'Ubisoft', ''),
(549, 'Watch_Dogs™', '', 'Action,Adventure', 'Ubisoft', 'https://store.steampowered.com/app/243470'),
(550, 'We Happy Few', '', 'Adventure,Role Playing,Action,', 'Compulsion Games', 'https://store.steampowered.com/app/320240'),
(551, 'Welcome to the Game II', '', 'Indie,Simulation,Strategy', 'Reflect Studios', 'https://store.steampowered.com/app/720250'),
(552, 'Will To Live Online', '', 'Action,Indie,Massively Multipl', 'AlphaSoft LLC', 'https://store.steampowered.com/app/707010'),
(553, 'Wolfenstein® II: The New Colos', '', 'First-Person Shooter,Action', 'Bethesda Softworks', 'https://store.steampowered.com/app/612880'),
(554, 'Wolfenstein®: The New Order', '', 'Action,First-Person Shooter', 'Bethesda Softworks', 'https://store.steampowered.com/app/201810'),
(555, 'Wolfenstein®: The Old Blood™', '', 'Action,First-Person Shooter', 'Bethesda Softworks', 'https://store.steampowered.com/app/350080'),
(556, 'Wolfenstein®: Youngblood', '', 'Action,First-Person Shooter', 'Bethesda Softworks', ''),
(557, 'Wolfenstein®: Youngblood', '', 'Action,First-Person Shooter', 'Bethesda Softworks', 'https://store.steampowered.com/app/1056960'),
(558, 'World of Tanks', '', 'Action,Free To Play,Massively ', 'Wargaming', ''),
(559, 'World of Tanks: Blitz', '', 'Action,Free To Play,Massively ', 'Wargaming Group Limited', 'https://store.steampowered.com/app/444200'),
(560, 'World of Warcraft Classic', '', 'Massively Multiplayer Online,R', 'Blizzard Entertainment', ''),
(561, 'World of Warcraft: Battle for ', '', 'Massively Multiplayer Online,R', 'Blizzard Entertainment', ''),
(562, 'World of Warships', '', 'Action,Free To Play,Massively ', 'Wargaming Group Limited', 'https://store.steampowered.com/app/552990'),
(563, 'World of Warships', '', 'Action,Free To Play,Massively ', 'Wargaming Group Limited', ''),
(564, 'World War 3', '', 'Action,First-Person Shooter,In', 'The Farm 51', 'https://store.steampowered.com/app/674020'),
(565, 'World War Z', '', 'Action,Massively Multiplayer O', 'Saber Interactive', ''),
(566, 'Worms W.M.D', '', 'Action,Casual,Family,Strategy', 'Team17 Digital Ltd', 'https://store.steampowered.com/app/327030'),
(567, 'Wreckfest', '', 'Action,Indie,Sports,Simulation', 'THQ Nordic', 'https://store.steampowered.com/app/228380'),
(568, 'WWE 2K19', '', 'Simulation,Sports', '2K', 'https://store.steampowered.com/app/817130'),
(569, 'WWE 2K20', '', 'Simulation,Sports', '2K', 'https://store.steampowered.com/app/1015500'),
(570, 'Wytchsun: Elleros Origins', '', 'Action,Adventure,Indie,Role Pl', 'Rampage Interactive', 'https://store.steampowered.com/app/1068530'),
(571, 'X4: Foundations', '', 'Action,Simulation', 'Egosoft', 'https://store.steampowered.com/app/392160'),
(572, 'XCOM® 2', '', 'Strategy', '2K Games', 'https://store.steampowered.com/app/268500'),
(573, 'XERA: Survival', '', 'Action,Adventure,Massively Mul', 'Spotted Kiwi Productions', 'https://store.steampowered.com/app/625340'),
(574, 'Yakuza 0', '', 'Action,Adventure,Role Playing', 'SEGA', 'https://store.steampowered.com/app/638970'),
(575, 'Yakuza Kiwami', '', 'Action,Adventure,Role Playing', 'SEGA', 'https://store.steampowered.com/app/834530'),
(576, 'Yoku\'s Island Express', '', 'Adventure,Family,Indie,Platfor', 'Team17 Digital Ltd', 'https://store.steampowered.com/app/334940'),
(577, 'Yooka-Laylee', '', 'Action,Adventure,Family,IndieP', 'Team17 Digital Ltd', 'https://store.steampowered.com/app/360830'),
(578, 'Yooka-Laylee and the Impossibl', '', 'Adventure,Family,Indie,Platfor', 'Team17 Digital', 'https://store.steampowered.com/app/846870'),
(579, 'Ys VIII: Lacrimosa of DANA', '', 'Action,Role Playing,Adventure', 'NIS America, Inc.', 'https://store.steampowered.com/app/579180'),
(580, 'Z1 Battle Royale', '', 'Action,Adventure,Free To Play,', 'Daybreak Game Company', 'https://store.steampowered.com/app/433850');

-- --------------------------------------------------------

--
-- Table structure for table `juegoplataforma`
--

CREATE TABLE `juegoplataforma` (
  `id_juegoPlataforma` int(11) NOT NULL,
  `id_juego_juegoPlataforma` int(11) NOT NULL,
  `id_plataforma_juegoPlataforma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mensaje`
--

CREATE TABLE `mensaje` (
  `id_mensaje` int(11) NOT NULL,
  `id_usuario_mensaje` int(11) NOT NULL,
  `id_usuario2_mensaje` int(11) NOT NULL,
  `texto` longtext NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mensaje`
--

INSERT INTO `mensaje` (`id_mensaje`, `id_usuario_mensaje`, `id_usuario2_mensaje`, `texto`, `fecha`) VALUES
(24, 18, 23, 'Buenos días', '2023-05-30'),
(25, 23, 18, 'Ey', '2023-05-30'),
(26, 18, 23, 'como estas', '2023-05-30'),
(27, 23, 18, 'Bien, y tú?', '2023-05-30'),
(32, 18, 23, 'hola', '2023-06-06'),
(33, 18, 23, 'test', '2023-06-06'),
(34, 18, 23, '123', '2023-06-06');

-- --------------------------------------------------------

--
-- Table structure for table `perfilusuario`
--

CREATE TABLE `perfilusuario` (
  `id_perfilUsuario` int(11) NOT NULL,
  `id_usuario_perfilUsuario` int(11) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `perfilusuariojuego`
--

CREATE TABLE `perfilusuariojuego` (
  `id_perfilUsuarioJuego` int(11) NOT NULL,
  `id_usuario_perfilUsuarioJuego` int(11) NOT NULL,
  `id_juego_perfilUsuarioJuego` int(11) NOT NULL,
  `estado` enum('Pendiente','Jugando','Completado','Abandonado') DEFAULT NULL,
  `calificacion` int(10) DEFAULT NULL,
  `opinion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `plataforma`
--

CREATE TABLE `plataforma` (
  `id_plataforma` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombreUsuario` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `correo` varchar(120) NOT NULL,
  `rol` enum('usuario','administrador') DEFAULT NULL,
  `baneado` enum('SI','NO') NOT NULL DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombreUsuario`, `password`, `correo`, `rol`, `baneado`) VALUES
(18, 'samu3ak', '$2a$10$FQfN4C4Vg/eXxMRfXlnjwuxlx1HTu3uPE3Tp1hmiKeh5GHGLe/jMq', 'samuelbolivar2003@gmail.com', 'usuario', 'NO'),
(19, 'admin', '$2a$10$Y/FsTwcM2wNGJV6qlBGOO.m4T0sWxkFeZcI21d6KUfrPTHvI0tiL.', 'admin@gmail.com', 'administrador', 'NO'),
(23, 'samu3ak2', '$2a$10$sZHZSMn4ABFoakr3pciNP.nU0T0mYvgJp774fdudlVWcUDGMyePI6', 'samuelbolivar2004@gmail.com', 'usuario', 'SI');

-- --------------------------------------------------------

--
-- Table structure for table `usuarioamigo`
--

CREATE TABLE `usuarioamigo` (
  `id_usuarioAmigo` int(11) NOT NULL,
  `id_usuario_usuarioAmigo` int(11) NOT NULL,
  `id_usuario2_usuarioAmigo` int(11) NOT NULL,
  `estado` enum('pendiente','amigo') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuarioamigo`
--

INSERT INTO `usuarioamigo` (`id_usuarioAmigo`, `id_usuario_usuarioAmigo`, `id_usuario2_usuarioAmigo`, `estado`) VALUES
(12, 23, 18, 'amigo');

-- --------------------------------------------------------

--
-- Table structure for table `usuarioplataforma`
--

CREATE TABLE `usuarioplataforma` (
  `id_usuarioPlataforma` int(11) NOT NULL,
  `id_usuario_usuarioPlataforma` int(11) NOT NULL,
  `id_plataforma_usuarioPlataforma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id_generos`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indexes for table `juego`
--
ALTER TABLE `juego`
  ADD PRIMARY KEY (`id_juego`);

--
-- Indexes for table `juegoplataforma`
--
ALTER TABLE `juegoplataforma`
  ADD PRIMARY KEY (`id_juegoPlataforma`),
  ADD KEY `id_juego_juegoPlataforma` (`id_juego_juegoPlataforma`),
  ADD KEY `id_plataforma_juegoPlataforma` (`id_plataforma_juegoPlataforma`);

--
-- Indexes for table `mensaje`
--
ALTER TABLE `mensaje`
  ADD PRIMARY KEY (`id_mensaje`),
  ADD KEY `id_usuario_mensaje` (`id_usuario_mensaje`),
  ADD KEY `id_usuario2_mensaje` (`id_usuario2_mensaje`);

--
-- Indexes for table `perfilusuario`
--
ALTER TABLE `perfilusuario`
  ADD PRIMARY KEY (`id_perfilUsuario`),
  ADD KEY `id_usuario_perfilUsuario` (`id_usuario_perfilUsuario`);

--
-- Indexes for table `perfilusuariojuego`
--
ALTER TABLE `perfilusuariojuego`
  ADD PRIMARY KEY (`id_perfilUsuarioJuego`),
  ADD KEY `id_usuario_perfilUsuarioJuego` (`id_usuario_perfilUsuarioJuego`),
  ADD KEY `id_juego_perfilUsuarioJuego` (`id_juego_perfilUsuarioJuego`);

--
-- Indexes for table `plataforma`
--
ALTER TABLE `plataforma`
  ADD PRIMARY KEY (`id_plataforma`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indexes for table `usuarioamigo`
--
ALTER TABLE `usuarioamigo`
  ADD PRIMARY KEY (`id_usuarioAmigo`),
  ADD KEY `id_usuario_usuarioAmigo` (`id_usuario_usuarioAmigo`),
  ADD KEY `id_usuario2_usuarioAmigo` (`id_usuario2_usuarioAmigo`);

--
-- Indexes for table `usuarioplataforma`
--
ALTER TABLE `usuarioplataforma`
  ADD PRIMARY KEY (`id_usuarioPlataforma`),
  ADD KEY `id_usuario_usuarioPlataforma` (`id_usuario_usuarioPlataforma`),
  ADD KEY `id_plataforma_usuarioPlataforma` (`id_plataforma_usuarioPlataforma`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `generos`
--
ALTER TABLE `generos`
  MODIFY `id_generos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `juego`
--
ALTER TABLE `juego`
  MODIFY `id_juego` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=581;

--
-- AUTO_INCREMENT for table `juegoplataforma`
--
ALTER TABLE `juegoplataforma`
  MODIFY `id_juegoPlataforma` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mensaje`
--
ALTER TABLE `mensaje`
  MODIFY `id_mensaje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `perfilusuario`
--
ALTER TABLE `perfilusuario`
  MODIFY `id_perfilUsuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `perfilusuariojuego`
--
ALTER TABLE `perfilusuariojuego`
  MODIFY `id_perfilUsuarioJuego` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plataforma`
--
ALTER TABLE `plataforma`
  MODIFY `id_plataforma` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `usuarioamigo`
--
ALTER TABLE `usuarioamigo`
  MODIFY `id_usuarioAmigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `usuarioplataforma`
--
ALTER TABLE `usuarioplataforma`
  MODIFY `id_usuarioPlataforma` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `juegoplataforma`
--
ALTER TABLE `juegoplataforma`
  ADD CONSTRAINT `id_juego_juegoPlataforma` FOREIGN KEY (`id_juego_juegoPlataforma`) REFERENCES `juego` (`id_juego`),
  ADD CONSTRAINT `id_plataforma_juegoPlataforma` FOREIGN KEY (`id_plataforma_juegoPlataforma`) REFERENCES `plataforma` (`id_plataforma`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mensaje`
--
ALTER TABLE `mensaje`
  ADD CONSTRAINT `id_usuario2_mensaje` FOREIGN KEY (`id_usuario2_mensaje`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_usuario_mensaje` FOREIGN KEY (`id_usuario_mensaje`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `perfilusuario`
--
ALTER TABLE `perfilusuario`
  ADD CONSTRAINT `id_usuario_perfilUsuario` FOREIGN KEY (`id_usuario_perfilUsuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `perfilusuariojuego`
--
ALTER TABLE `perfilusuariojuego`
  ADD CONSTRAINT `id_juego_perfilUsuarioJuego` FOREIGN KEY (`id_juego_perfilUsuarioJuego`) REFERENCES `juego` (`id_juego`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_usuario_perfilUsuarioJuego` FOREIGN KEY (`id_usuario_perfilUsuarioJuego`) REFERENCES `usuario` (`id_usuario`);

--
-- Constraints for table `usuarioamigo`
--
ALTER TABLE `usuarioamigo`
  ADD CONSTRAINT `id_usuario2_usuarioAmigo` FOREIGN KEY (`id_usuario2_usuarioAmigo`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_usuario_usuarioAmigo` FOREIGN KEY (`id_usuario_usuarioAmigo`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `usuarioplataforma`
--
ALTER TABLE `usuarioplataforma`
  ADD CONSTRAINT `id_plataforma_usuarioPlataforma` FOREIGN KEY (`id_plataforma_usuarioPlataforma`) REFERENCES `plataforma` (`id_plataforma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_usuario_usuarioPlataforma` FOREIGN KEY (`id_usuario_usuarioPlataforma`) REFERENCES `usuario` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
