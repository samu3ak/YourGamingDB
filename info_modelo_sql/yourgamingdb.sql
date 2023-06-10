-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-06-2023 a las 15:03:40
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `yourgamingdb`
--
CREATE DATABASE yourgamingdb;
USE yourgamingdb;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id_generos` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `generos`
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
-- Estructura de tabla para la tabla `juego`
--

CREATE TABLE `juego` (
  `id_juego` int(11) NOT NULL,
  `titulo` varchar(30) NOT NULL,
  `descripcion` longtext NOT NULL,
  `genero` varchar(30) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `enlace` varchar(255) NOT NULL,
  `imagen` varchar(255) DEFAULT 'images/default_game.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `juego`
--

INSERT INTO `juego` (`id_juego`, `titulo`, `descripcion`, `genero`, `publisher`, `enlace`, `imagen`) VALUES
(3, '7 Days to Die', '', 'Action,Adventure,Indie', 'The Fun Pimps Entertainment LLC', 'https://store.steampowered.com/app/251570', 'images/default_game.png'),
(4, 'A Plague Tale: Innocence', '', 'Action', 'Focus Home Interactive', 'https://store.steampowered.com/app/752590', 'images/default_game.png'),
(5, 'Absolver', '', 'Action,Adventure,Indie', 'Devolver Digital', 'https://store.steampowered.com/app/473690', 'images/default_game.png'),
(6, 'ACE COMBAT™ 7: SKIES UNKNOWN', '', 'Action,Simulation', 'BANDAI NAMCO Studio Inc.', 'https://store.steampowered.com/app/502500', 'images/default_game.png'),
(7, 'Age of Wonders III', '', 'Role Playing,Strategy', 'Paradox Interactive', 'https://store.steampowered.com/app/226840', 'images/default_game.png'),
(8, 'Age of Wonders: Planetfall', '', 'Strategy', 'Paradox Interactive', 'https://store.steampowered.com/app/718850', 'images/default_game.png'),
(9, 'AI: The Somnium Files', '', 'Adventure', 'Spike Chunsoft Co., Ltd.', 'https://store.steampowered.com/app/948740', 'images/default_game.png'),
(10, 'Aion™', '', 'Free To Play,Massively Multipl', 'NCSOFT', '', 'images/default_game.png'),
(11, 'Albino Lullaby: Episode 1', '', 'Action,Adventure,Indie', 'Ape Law', 'https://store.steampowered.com/app/355860', 'images/default_game.png'),
(12, 'Albion Online', '', 'Massively Multiplayer Online,R', 'Sandbox Interactive GmbH', 'https://store.steampowered.com/app/761890', 'images/default_game.png'),
(13, 'Amazing Cultivation Simulator ', '', 'Indie,Role Playing,Simulation,', 'Gamera Game', 'https://store.steampowered.com/app/955900', 'images/default_game.png'),
(14, 'American Truck Simulator', '', 'Indie,Simulation', 'SCS Software', 'https://store.steampowered.com/app/270880', 'images/default_game.png'),
(15, 'Ancestors Legacy', '', 'Strategy', '1C Company', 'https://store.steampowered.com/app/620590', 'images/default_game.png'),
(16, 'Anno 1800™', '', 'Strategy,Simulation', 'Ubisoft', '', 'images/default_game.png'),
(17, 'Anno 1800™', '', 'Simulation,Strategy', '', '', 'images/default_game.png'),
(18, 'Anno 1800™', '', 'Strategy,Simulation', 'Ubisoft', 'https://store.steampowered.com/app/916440', 'images/default_game.png'),
(19, 'AO International Tennis', '', 'Sports', 'Big Ant Studios', 'https://store.steampowered.com/app/758410', 'images/default_game.png'),
(20, 'Apex Legends™', '', 'Action,Free To Play,Massively ', 'Electronic Arts Inc.', '', 'images/default_game.png'),
(21, 'Argo', '', 'Action,Free To Play', 'Bohemia Interactive', 'https://store.steampowered.com/app/530700', 'images/default_game.png'),
(22, 'ARK: Survival Evolved', '', 'Action,Adventure,Indie,Massive', 'Studio Wildcard', 'https://store.steampowered.com/app/346110', 'images/default_game.png'),
(23, 'ARK: Survival Of The Fittest', '', 'Action,Adventure,Indie,Massive', 'Studio Wildcard', 'https://store.steampowered.com/app/407530', 'images/default_game.png'),
(24, 'Arma 3', '', 'Action,First-Person Shooter,Si', 'Bohemia Interactive', 'https://store.steampowered.com/app/107410', 'images/default_game.png'),
(25, 'Armello', '', 'Adventure,Indie,Role Playing,S', 'League of Geeks', 'https://store.steampowered.com/app/290340', 'images/default_game.png'),
(26, 'Armored Warfare', '', 'Simulation,Action,Free To Play', 'My.com', '', 'images/default_game.png'),
(27, 'Artifact', '', 'Casual,Strategy', 'Valve', 'https://store.steampowered.com/app/583950', 'images/default_game.png'),
(28, 'Assassin’s Creed® III Remaster', '', 'Action,Adventure', 'Ubisoft', '', 'images/default_game.png'),
(29, 'Assassin’s Creed® IV Black Fla', '', 'Action,Adventure', 'Ubisoft', 'https://store.steampowered.com/app/242050', 'images/default_game.png'),
(30, 'Assassin’s Creed® IV Black Fla', '', 'Action,Adventure', 'Ubisoft', '', 'images/default_game.png'),
(31, 'Assassin’s Creed® Odyssey', '', 'Action,Adventure,Indie', 'Ubisoft', 'https://store.steampowered.com/app/812140', 'images/default_game.png'),
(32, 'Assassin’s Creed® Odyssey', '', 'Action,Adventure', 'Ubisoft', '', 'images/default_game.png'),
(33, 'Assassin’s Creed® Origins', '', 'Action,Adventure', 'Ubisoft', '', 'images/default_game.png'),
(34, 'Assassin’s Creed® Origins', '', 'Action,Adventure', 'Ubisoft', 'https://store.steampowered.com/app/582160', 'images/default_game.png'),
(35, 'Assassin’s Creed® Unity', '', 'Action,Adventure', 'Ubisoft', 'https://store.steampowered.com/app/289650', 'images/default_game.png'),
(36, 'Assassin’s Creed® Unity', '', 'Adventure,Action', 'Ubisoft', '', 'images/default_game.png'),
(37, 'Assassin’s Creed®: Syndicate', '', 'Action,Adventure', 'Ubisoft', 'https://store.steampowered.com/app/368500', 'images/default_game.png'),
(38, 'Assassin’s Creed®: Syndicate', '', 'Action,Adventure', 'Ubisoft', '', 'images/default_game.png'),
(39, 'Assetto Corsa', '', 'Racing,Simulation,Sports', 'Kunos Simulazioni', 'https://store.steampowered.com/app/244210', 'images/default_game.png'),
(40, 'Assetto Corsa Competizione', '', 'Racing,Simulation,Sports', '505 Games', 'https://store.steampowered.com/app/805550', 'images/default_game.png'),
(41, 'Asterix & Obelix XXL 3 - The C', '', 'Adventure', 'Microids', 'https://store.steampowered.com/app/1109690', 'images/default_game.png'),
(42, 'ASTRONEER', '', 'Adventure,Indie', 'System Era Softworks', 'https://store.steampowered.com/app/361420', 'images/default_game.png'),
(43, 'ATLAS', '', 'Action,Adventure,Massively Mul', 'Grapeshot Games', 'https://store.steampowered.com/app/834910', 'images/default_game.png'),
(44, 'ATOM RPG', '', 'Role Playing', 'AtomTeam', 'https://store.steampowered.com/app/552620', 'images/default_game.png'),
(45, 'ATOMEGA™', '', 'Action,Indie', 'Ubisoft', 'https://store.steampowered.com/app/619880', 'images/default_game.png'),
(46, 'AVICII Invector', '', 'Casual,Indie', 'Wired Productions', 'https://store.steampowered.com/app/986800', 'images/default_game.png'),
(47, 'Batman™: Arkham Asylum Game of', '', 'Action,Adventure', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/35140', 'images/default_game.png'),
(48, 'Batman™: Arkham City - Game of', '', 'Action,Adventure', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/200260', 'images/default_game.png'),
(49, 'Batman™: Arkham Knight', '', 'Action,Adventure', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/208650', 'images/default_game.png'),
(50, 'Batman™: Arkham Origins', '', 'Action,Adventure', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/209000', 'images/default_game.png'),
(51, 'Battlefleet Gothic: Armada 2', '', 'Strategy', 'Focus Home Interactive', 'https://store.steampowered.com/app/573100', 'images/default_game.png'),
(52, 'Battlerite', '', 'Action', 'Stunlock Studios', 'https://store.steampowered.com/app/504370', 'images/default_game.png'),
(53, 'Battlerite Royale', '', 'Action,Massively Multiplayer O', 'Stunlock Studios', 'https://store.steampowered.com/app/879160', 'images/default_game.png'),
(54, 'Battletech', '', 'Action,Adventure,Strategy', 'Paradox Interactive AB', 'https://store.steampowered.com/app/637090', 'images/default_game.png'),
(55, 'BeamNG.drive', '', 'Simulation,Racing', 'BeamNG', 'https://store.steampowered.com/app/284160', 'images/default_game.png'),
(56, 'Bear With Me: The Lost Robots', '', 'Adventure,Casual,Indie', 'Modus Games', 'https://store.steampowered.com/app/1050000', 'images/default_game.png'),
(57, 'Besiege', '', 'Indie,Simulation', 'Spiderling Studios', 'https://store.steampowered.com/app/346010', 'images/default_game.png'),
(58, 'BioShock Infinite', '', 'Action,First-Person Shooter,Ro', '2K Games', 'https://store.steampowered.com/app/8870', 'images/default_game.png'),
(59, 'BioShock™ 2 Remastered', '', 'Action,Role Playing,First-Pers', '2K Games', 'https://store.steampowered.com/app/409720', 'images/default_game.png'),
(60, 'BioShock™ Remastered', '', 'Action,First-Person Shooter,Ro', '2K Games', 'https://store.steampowered.com/app/409710', 'images/default_game.png'),
(61, 'Black Desert Online', '', 'Action,Adventure,Massively Mul', 'Kakao Games Europe B.V.', 'https://store.steampowered.com/app/582660', 'images/default_game.png'),
(62, 'Black Future \'88', '', 'Action,Adventure,Indie', 'Good Shepherd Entertainment', 'https://store.steampowered.com/app/751820', 'images/default_game.png'),
(63, 'Black Squad', '', 'First-Person Shooter,Action,Fr', 'Neowiz Games', 'https://store.steampowered.com/app/550650', 'images/default_game.png'),
(64, 'BLACKSAD: Under the Skin', '', 'Adventure,Casual,Puzzle', 'Microids', 'https://store.steampowered.com/app/1003890', 'images/default_game.png'),
(65, 'Blackwake', '', 'Action,Indie,Strategy', 'Mastfire Studios Pty Ltd', 'https://store.steampowered.com/app/420290', 'images/default_game.png'),
(66, 'Blair Witch', '', 'Adventure,Indie', 'Bloober Team NA', 'https://store.steampowered.com/app/1092660', 'images/default_game.png'),
(67, 'BlazBlue: Cross Tag Battle', '', 'Action', 'Arc System Works', 'https://store.steampowered.com/app/702890', 'images/default_game.png'),
(68, 'Borderlands 2', '', 'Action,First-Person Shooter', '2K Games', 'https://store.steampowered.com/app/49520', 'images/default_game.png'),
(69, 'Borderlands 3', '', 'Action,First-Person Shooter,Ro', '2K', '', 'images/default_game.png'),
(70, 'Borderlands Game of the Year E', '', 'Action,Role Playing', '2K', 'https://store.steampowered.com/app/729040', 'images/default_game.png'),
(71, 'Borderlands: The Pre-Sequel', '', 'Action,Role Playing', '2K Games', 'https://store.steampowered.com/app/261640', 'images/default_game.png'),
(72, 'Brawlhalla', '', 'Action,Free To Play,Indie,Plat', 'Ubisoft', 'https://store.steampowered.com/app/291550', 'images/default_game.png'),
(73, 'Brothers: A Tale of Two Sons', '', 'Adventure,Casual,Puzzle', '505 Games', 'https://store.steampowered.com/app/225080', 'images/default_game.png'),
(74, 'Call of Cthulhu®', '', 'Adventure,Role Playing', 'Focus Home Interactive', 'https://store.steampowered.com/app/399810', 'images/default_game.png'),
(75, 'Call of Duty: World at War', '', 'Action,First-Person Shooter', 'Activision', 'https://store.steampowered.com/app/10090', 'images/default_game.png'),
(76, 'Call of Duty® 4: Modern Warfar', '', 'Action,First-Person Shooter', 'Activision', 'https://store.steampowered.com/app/7940', 'images/default_game.png'),
(77, 'Call of Duty®: Black Ops 4', '', 'Action,First-Person Shooter,Ma', 'Activision', '', 'images/default_game.png'),
(78, 'Call of Duty®: Black Ops III', '', 'Action,Adventure,First-Person ', 'Activision', 'https://store.steampowered.com/app/311210', 'images/default_game.png'),
(79, 'Call of Duty®: Infinite Warfar', '', 'Action,Adventure,First-Person ', 'Activision', 'https://store.steampowered.com/app/292730', 'images/default_game.png'),
(80, 'Call of Duty®: Modern Warfare®', '', 'Action,First-Person Shooter', 'Activision', '', 'images/default_game.png'),
(81, 'Call of Duty®: Modern Warfare®', '', 'Action,First-Person Shooter', 'Activision', 'https://store.steampowered.com/app/10190', 'images/default_game.png'),
(82, 'Call of Duty®: Modern Warfare®', '', 'Action,First-Person Shooter', 'Activision', 'https://store.steampowered.com/app/10180', 'images/default_game.png'),
(83, 'Call of Duty®: Modern Warfare®', '', 'Action,First-Person Shooter', 'Activision', 'https://store.steampowered.com/app/42690', 'images/default_game.png'),
(84, 'Call of Duty®: Modern Warfare®', '', 'Action,First-Person Shooter', 'Activision', 'https://store.steampowered.com/app/42680', 'images/default_game.png'),
(85, 'Call of Duty®: WWII', '', 'Action,First-Person Shooter', 'Activision', 'https://store.steampowered.com/app/476600', 'images/default_game.png'),
(86, 'CardLife: Cardboard Survival', '', 'Action,Adventure,Massively Mul', 'Freejam', 'https://store.steampowered.com/app/920690', 'images/default_game.png'),
(87, 'Catherine Classic', '', 'Adventure', 'Sega Europe, Ltd.', 'https://store.steampowered.com/app/893180', 'images/default_game.png'),
(88, 'Celeste', '', 'Action,Adventure,Indie,Platfor', 'Matt Makes Games Inc.', 'https://store.steampowered.com/app/504230', 'images/default_game.png'),
(89, 'Chernobylite', '', 'Action,Adventure,Indie,Role Pl', 'The Farm 51', 'https://store.steampowered.com/app/1016800', 'images/default_game.png'),
(90, 'Chivalry: Medieval Warfare', '', 'Action,Indie', 'Torn Banner Studios', 'https://store.steampowered.com/app/219640', 'images/default_game.png'),
(91, 'Cities: Skylines', '', 'Casual,Simulation,Strategy', 'Paradox Interactive', 'https://store.steampowered.com/app/255710', 'images/default_game.png'),
(92, 'Claybook', '', 'Action,Indie,Platformer,Puzzle', 'Second Order', 'https://store.steampowered.com/app/661920', 'images/default_game.png'),
(93, 'Clicker Heroes', '', 'Adventure,Casual,Free To Play,', 'Playsaurus', 'https://store.steampowered.com/app/363970', 'images/default_game.png'),
(94, 'Clicker Heroes 2', '', 'Action,Adventure,Arcade,Casual', 'Playsaurus', 'https://store.steampowered.com/app/629910', 'images/default_game.png'),
(95, 'Closers', '', 'Free To Play,Massively Multipl', 'Nexon Corporation', 'https://store.steampowered.com/app/215830', 'images/default_game.png'),
(96, 'Commandos 2 - HD Remaster', '', 'Strategy', 'Kalypso Media Group GmbH', 'https://store.steampowered.com/app/1100410', 'images/default_game.png'),
(97, 'Company of Heroes', '', 'Action,Strategy', 'SEGA', 'https://store.steampowered.com/app/228200', 'images/default_game.png'),
(98, 'Conan Exiles', '', 'Action,Adventure,Massively Mul', 'Funcom', 'https://store.steampowered.com/app/440900', 'images/default_game.png'),
(99, 'Conception PLUS: Maidens of th', '', 'Role Playing', 'Spike Chunsoft Co., Ltd.', 'https://store.steampowered.com/app/906510', 'images/default_game.png'),
(100, 'Construction Simulator 2 US - ', '', 'Simulation', 'astragon Entertainment GmbH', 'https://store.steampowered.com/app/787740', 'images/default_game.png'),
(101, 'Constructor Plus', '', 'Indie,Simulation,Strategy', 'System 3', 'https://store.steampowered.com/app/898800', 'images/default_game.png'),
(102, 'Cooking Simulator', '', 'Casual,Indie,Simulation', 'Wastelands Interactive', 'https://store.steampowered.com/app/641320', 'images/default_game.png'),
(103, 'Counter-Strike', '', 'First-Person Shooter,Action', 'Valve', 'https://store.steampowered.com/app/10', 'images/default_game.png'),
(104, 'Counter-Strike: Global Offensi', '', 'Action,First-Person Shooter,Fr', 'Valve Corporation', 'https://store.steampowered.com/app/730', 'images/default_game.png'),
(105, 'Counter-Strike: Source', '', 'Action,First-Person Shooter', 'Valve', 'https://store.steampowered.com/app/240', 'images/default_game.png'),
(106, 'Crash Bandicoot™ N. Sane Trilo', '', 'Action,Family,Platformer', 'Activision', 'https://store.steampowered.com/app/731490', 'images/default_game.png'),
(107, 'Crossfire', '', 'First-Person Shooter', 'Tencent', '', 'images/default_game.png'),
(108, 'Crossout', '', 'Action,Massively Multiplayer O', 'Gaijin Entertainment', 'https://store.steampowered.com/app/386180', 'images/default_game.png'),
(109, 'Crusader Kings II', '', 'Free To Play,Role Playing,Simu', 'Paradox Interactive', 'https://store.steampowered.com/app/203770', 'images/default_game.png'),
(110, 'Crying Suns', '', 'Indie,Strategy', 'Humble Bundle', 'https://store.steampowered.com/app/873940', 'images/default_game.png'),
(111, 'Cuisine Royale', '', 'Action,Free To Play,Massively ', 'Gaijin Distribution KFT', 'https://store.steampowered.com/app/884660', 'images/default_game.png'),
(112, 'Cultist Simulator', '', 'Indie,Role Playing,Simulation,', 'Humble Bundle', 'https://store.steampowered.com/app/718670', 'images/default_game.png'),
(113, 'Cuphead', '', 'Action,Arcade,Indie,Platformer', 'StudioMDHR Entertainment Inc.', 'https://store.steampowered.com/app/268910', 'images/default_game.png'),
(114, 'Dakar 18', '', 'Racing,Simulation', 'Bigmoon Entertainment, Deep Silver', 'https://store.steampowered.com/app/767390', 'images/default_game.png'),
(115, 'DARK SOULS™ II', '', 'Action,Role Playing', 'BANDAI NAMCO Entertainment', 'https://store.steampowered.com/app/236430', 'images/default_game.png'),
(116, 'DARK SOULS™ II: Scholar of the', '', 'Action,Role Playing', 'BANDAI NAMCO Entertainment', 'https://store.steampowered.com/app/335300', 'images/default_game.png'),
(117, 'DARK SOULS™ III', '', 'Action,Role Playing', 'BANDAI NAMCO Entertainment', 'https://store.steampowered.com/app/374320', 'images/default_game.png'),
(118, 'DARK SOULS™: REMASTERED', '', 'Action,Role Playing', 'BANDAI NAMCO Entertainment America Inc.', 'https://store.steampowered.com/app/570940', 'images/default_game.png'),
(119, 'Darkest Dungeon®', '', 'Indie,Role Playing,Strategy', 'Red Hook Studios', 'https://store.steampowered.com/app/262060', 'images/default_game.png'),
(120, 'Darksiders II Deathinitive Edi', '', 'Action,Adventure,Role Playing', 'THQ Nordic', 'https://store.steampowered.com/app/388410', 'images/default_game.png'),
(121, 'Darksiders III', '', 'Action,Adventure,Indie,Role Pl', 'THQ Nordic', 'https://store.steampowered.com/app/606280', 'images/default_game.png'),
(122, 'DARKSIDERS: GENESIS', '', 'Action,Adventure,Role Playing', 'THQ Nordic', 'https://store.steampowered.com/app/710920', 'images/default_game.png'),
(123, 'Darwin Project', '', 'Action,Casual,Free To Play,Ind', 'Scavengers Studio', 'https://store.steampowered.com/app/544920', 'images/default_game.png'),
(124, 'Dauntless', '', 'Action,Free To Play,Massively ', 'Phoenix Labs', '', 'images/default_game.png'),
(125, 'Dawn of Man', '', 'Indie,Simulation,Strategy', 'Madruga Works', 'https://store.steampowered.com/app/858810', 'images/default_game.png'),
(126, 'DayZ', '', 'Action,Adventure,First-Person ', 'Bohemia Interactive', 'https://store.steampowered.com/app/221100', 'images/default_game.png'),
(127, 'Dead by Daylight', '', 'Action', 'Starbreeze Studios', 'https://store.steampowered.com/app/381210', 'images/default_game.png'),
(128, 'Dead Cells', '', 'Action,Indie,Platformer', 'Motion Twin', 'https://store.steampowered.com/app/588650', 'images/default_game.png'),
(129, 'Dead Frontier 2', '', 'Action,Free To Play,Indie,Mass', 'Creaky Corpse Ltd', 'https://store.steampowered.com/app/744900', 'images/default_game.png'),
(130, 'Dead In Vinland', '', 'Adventure,Indie,Role Playing,S', 'Playdius, Plug In Digital', 'https://store.steampowered.com/app/573120', 'images/default_game.png'),
(131, 'Deceit', '', 'Action,Free To Play,Indie', 'Automaton', 'https://store.steampowered.com/app/466240', 'images/default_game.png'),
(132, 'Deep Rock Galactic', '', 'Action,Indie', 'Coffee Stain Publishing', 'https://store.steampowered.com/app/548430', 'images/default_game.png'),
(133, 'Deep Sky Derelicts', '', 'Indie,Role Playing,Strategy', '1C Entertainment', 'https://store.steampowered.com/app/698640', 'images/default_game.png'),
(134, 'Deliver Us The Moon: Fortuna', '', 'Action,Adventure,Indie,PuzzleS', 'Wired Productions', 'https://store.steampowered.com/app/428660', 'images/default_game.png'),
(135, 'Depth', '', 'Action,Indie', 'Digital Confectioners', 'https://store.steampowered.com/app/274940', 'images/default_game.png'),
(136, 'Descenders', '', 'Action,Racing,Sports', 'No More Robots', 'https://store.steampowered.com/app/681280', 'images/default_game.png'),
(137, 'DESOLATE', '', 'Action,Adventure,Role Playing', 'HypeTrain Digital', 'https://store.steampowered.com/app/671510', 'images/default_game.png'),
(138, 'Destiny 2', '', 'Action,Adventure,First-Person ', 'Bungie', 'https://store.steampowered.com/app/1085660', 'images/default_game.png'),
(139, 'Diablo III', '', 'Action,Role Playing', 'Blizzard Entertainment', '', 'images/default_game.png'),
(140, 'Diesel Brothers: Truck Buildin', '', 'Casual,Racing,Simulation', 'Code Horizon, PlayWay S.A.', 'https://store.steampowered.com/app/750050', 'images/default_game.png'),
(141, 'DiRT 3 Complete Edition', '', 'Racing,Simulation,Sports', 'Codemasters', 'https://store.steampowered.com/app/321040', 'images/default_game.png'),
(142, 'DiRT 4', '', 'Racing,Simulation,Sports', 'Codemasters', 'https://store.steampowered.com/app/421020', 'images/default_game.png'),
(143, 'DiRT Rally 2.0', '', 'Racing,Simulation,Sports', 'Codemasters', 'https://store.steampowered.com/app/690790', 'images/default_game.png'),
(144, 'Dirty Bomb®', '', 'Action,Free To Play,First-Pers', 'Nexon America Inc.', 'https://store.steampowered.com/app/333930', 'images/default_game.png'),
(145, 'Disco Elysium', '', 'Adventure,Indie,Role Playing', 'ZA/UM', 'https://store.steampowered.com/app/632470', 'images/default_game.png'),
(146, 'Dishonored', '', 'Action,Adventure,First-Person ', 'Bethesda Softworks', 'https://store.steampowered.com/app/205100', 'images/default_game.png'),
(147, 'Dishonored 2', '', 'Action,First-Person Shooter,Ro', 'Bethesda Softworks', 'https://store.steampowered.com/app/403640', 'images/default_game.png'),
(148, 'Dishonored®: Death of the Outs', '', 'Action', 'Bethesda Softworks', 'https://store.steampowered.com/app/614570', 'images/default_game.png'),
(149, 'Distance', '', 'Action,Racing,Indie', 'Refract', 'https://store.steampowered.com/app/233610', 'images/default_game.png'),
(150, 'Divinity: Original Sin 2', '', 'Adventure,Role Playing,Strateg', 'Larian Studios', 'https://store.steampowered.com/app/435150', 'images/default_game.png'),
(151, 'Don\'t Starve', '', 'Adventure,Indie,Simulation', 'Klei Entertainment', 'https://store.steampowered.com/app/219740', 'images/default_game.png'),
(152, 'Don\'t Starve Together', '', 'Adventure,Indie,Simulation', 'Klei Entertainment', 'https://store.steampowered.com/app/322330', 'images/default_game.png'),
(153, 'Donut County', '', 'Adventure,Casual,Indie,Puzzle', 'Annapurna Interactive', 'https://store.steampowered.com/app/702670', 'images/default_game.png'),
(154, 'DOOM®', '', 'Action,First-Person Shooter', 'Bethesda Softworks', 'https://store.steampowered.com/app/379720', 'images/default_game.png'),
(155, 'Dota 2', '', 'Action,Free To Play,Multiplaye', 'Valve', 'https://store.steampowered.com/app/570', 'images/default_game.png'),
(156, 'Dota Underlords', '', 'Free To Play,Strategy', 'Valve', 'https://store.steampowered.com/app/1046930', 'images/default_game.png'),
(157, 'Double Turn', '', 'Action,Indie', 'Inwave Labs', 'https://store.steampowered.com/app/762680', 'images/default_game.png'),
(158, 'Dragon Nest', '', 'Action,Free To Play,Massively ', 'Eyedentity Games Inc.', '', 'images/default_game.png'),
(159, 'Dungreed', '', 'Action,Indie', 'TEAM HORAY', 'https://store.steampowered.com/app/753420', 'images/default_game.png'),
(160, 'DUSK', '', 'Action,Indie', 'New Blood Interactive', 'https://store.steampowered.com/app/519860', 'images/default_game.png'),
(161, 'Dying Light', '', 'Action,First-Person Shooter', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/239140', 'images/default_game.png'),
(162, 'Dying Light: Bad Blood', '', 'Action,Massively Multiplayer O', 'Techland Sp. z o.o.', 'https://store.steampowered.com/app/766370', 'images/default_game.png'),
(163, 'EARTH DEFENSE FORCE 5', '', 'Action', 'D3 PUBLISHER', 'https://store.steampowered.com/app/1007040', 'images/default_game.png'),
(164, 'Edge Of Eternity', '', 'Indie,Role Playing,Strategy', 'Playdius Entertainment', 'https://store.steampowered.com/app/269190', 'images/default_game.png'),
(165, 'ELEX', '', 'Action,Adventure,Role Playing', 'THQ Nordic', 'https://store.steampowered.com/app/411300', 'images/default_game.png'),
(166, 'Elite Dangerous', '', 'Action,Adventure,Massively Mul', 'Frontier Developments', 'https://store.steampowered.com/app/359320', 'images/default_game.png'),
(167, 'Empyrion - Galactic Survival', '', 'Adventure,Indie,Simulation,Str', 'Eleon Game Studios', 'https://store.steampowered.com/app/383120', 'images/default_game.png'),
(168, 'Endless Space® 2', '', 'Strategy', 'SEGA', 'https://store.steampowered.com/app/392110', 'images/default_game.png'),
(169, 'Enter the Gungeon', '', 'Action,Adventure,Indie', 'Devolver Digital', 'https://store.steampowered.com/app/311690', 'images/default_game.png'),
(170, 'Euro Truck Simulator 2', '', 'Casual,Racing,Simulation', 'SCS Software', 'https://store.steampowered.com/app/227300', 'images/default_game.png'),
(171, 'Europa Universalis IV', '', 'Simulation,Strategy', 'Paradox Interactive', 'https://store.steampowered.com/app/236850', 'images/default_game.png'),
(172, 'EVE Online', '', 'Action,Free To Play,Massively ', 'CCP', '', 'images/default_game.png'),
(173, 'Everreach: Project Eden', '', 'Action,First-Person Shooter,In', 'Headup', 'https://store.steampowered.com/app/915670', 'images/default_game.png'),
(174, 'EVERSPACE™', '', 'Action,Indie', 'ROCKFISH Games', 'https://store.steampowered.com/app/396750', 'images/default_game.png'),
(175, 'EXAPUNKS', '', 'Indie,Puzzle,Simulation', 'Zachtronics', 'https://store.steampowered.com/app/716490', 'images/default_game.png'),
(176, 'F1® 2018', '', 'Simulation,Racing', 'Codemasters', 'https://store.steampowered.com/app/737800', 'images/default_game.png'),
(177, 'F1® 2019 Anniversary Edition', '', 'Racing,Simulation,Sports', 'Codemasters', 'https://store.steampowered.com/app/928600', 'images/default_game.png'),
(178, 'F1™ 2017', '', 'Simulation,Racing', 'Codemasters', 'https://store.steampowered.com/app/515220', 'images/default_game.png'),
(179, 'Factorio', '', 'Action', 'Wube Software', 'https://store.steampowered.com/app/427520', 'images/default_game.png'),
(180, 'Fade to Silence', '', 'Role Playing', 'THQ Nordic GmbH', 'https://store.steampowered.com/app/706020', 'images/default_game.png'),
(181, 'Fallout 3: Game of the Year Ed', '', 'First-Person Shooter,Role Play', 'Bethesda Softworks', 'https://store.steampowered.com/app/22370', 'images/default_game.png'),
(182, 'Fallout 76', '', 'Role Playing', 'Bethesda Softworks LLC', '', 'images/default_game.png'),
(183, 'Fallout: New Vegas', '', 'Action,Role Playing', 'Bethesda Softworks', 'https://store.steampowered.com/app/22380', 'images/default_game.png'),
(184, 'Far Cry® 4', '', 'Action,Adventure,First-Person ', 'Ubisoft', 'https://store.steampowered.com/app/298110', 'images/default_game.png'),
(185, 'Far Cry® 4', '', 'Action,Adventure,First-Person ', 'Ubisoft', '', 'images/default_game.png'),
(186, 'Far Cry® 5', '', 'Action,Adventure,First-Person ', 'Ubisoft', 'https://store.steampowered.com/app/552520', 'images/default_game.png'),
(187, 'Far Cry® 5', '', 'Action,Adventure,First-Person ', 'Ubisoft', '', 'images/default_game.png'),
(188, 'Far Cry® New Dawn', '', 'Action,Adventure,First-Person ', 'Ubisoft', '', 'images/default_game.png'),
(189, 'Far Cry® New Dawn', '', 'Action,Adventure,First-Person ', 'Ubisoft', 'https://store.steampowered.com/app/939960', 'images/default_game.png'),
(190, 'Far Cry® Primal', '', 'Action,Adventure,First-Person ', 'Ubisoft', 'https://store.steampowered.com/app/371660', 'images/default_game.png'),
(191, 'Far Cry® Primal', '', 'Action,Adventure,First-Person ', 'Ubisoft', '', 'images/default_game.png'),
(192, 'FAR: Lone Sails', '', 'Indie,Adventure,Action', 'Mixtvision Digital', 'https://store.steampowered.com/app/609320', 'images/default_game.png'),
(193, 'Farm Together', '', 'Casual,Indie,Simulation', 'Milkstone Studios', 'https://store.steampowered.com/app/673950', 'images/default_game.png'),
(194, 'Farming Simulator 17', '', 'Simulation', 'Focus Home Interactive', 'https://store.steampowered.com/app/447020', 'images/default_game.png'),
(195, 'Farming Simulator 19', '', 'Casual,Simulation', 'Focus Home Interactive', 'https://store.steampowered.com/app/787860', 'images/default_game.png'),
(196, 'Fear The Wolves', '', 'Action,First-Person Shooter,Ad', 'Focus Home Interactive', 'https://store.steampowered.com/app/819500', 'images/default_game.png'),
(197, 'FIA European Truck Racing Cham', '', 'Racing,Simulation,Sports', 'Bigben Interactive', 'https://store.steampowered.com/app/940580', 'images/default_game.png'),
(198, 'Fimbul', '', 'Action,Adventure,Indie', 'Wild River Games', 'https://store.steampowered.com/app/771690', 'images/default_game.png'),
(199, 'Firewatch', '', 'Adventure,Indie', 'Panic', 'https://store.steampowered.com/app/383870', 'images/default_game.png'),
(200, 'Five Nights at Freddy\'s', '', 'Indie,Simulation,Action,Strate', 'Scott Cawthon', 'https://store.steampowered.com/app/319510', 'images/default_game.png'),
(201, 'Five Nights at Freddy\'s 2', '', 'Indie,Simulation,Action,Strate', 'Scott Cawthon', 'https://store.steampowered.com/app/332800', 'images/default_game.png'),
(202, 'Football Manager 2018', '', 'Simulation,Sports', 'SEGA', 'https://store.steampowered.com/app/624090', 'images/default_game.png'),
(203, 'Football Manager 2019', '', 'Sports,Simulation', 'SEGA', 'https://store.steampowered.com/app/872790', 'images/default_game.png'),
(204, 'Football Manager Touch 2018', '', 'Simulation,Sports', 'SEGA', 'https://store.steampowered.com/app/624120', 'images/default_game.png'),
(205, 'For Honor™', '', 'Action,Adventure', 'Ubisoft', '', 'images/default_game.png'),
(206, 'For Honor™', '', 'Action,Adventure', 'Ubisoft', 'https://store.steampowered.com/app/304390', 'images/default_game.png'),
(207, 'Forager', '', 'Action,Adventure,Casual,IndieS', 'Humble Bundle', 'https://store.steampowered.com/app/751780', 'images/default_game.png'),
(208, 'Forged Battalion', '', 'Indie,Simulation,Strategy', 'Team17 Digital Ltd', 'https://store.steampowered.com/app/686260', 'images/default_game.png'),
(209, 'Fortnite', '', 'Action,Free To Play,Massively ', 'Epic Games, Inc.', '', 'images/default_game.png'),
(210, 'Foundation', '', 'Indie,Simulation,Strategy', 'Polymorph Games', 'https://store.steampowered.com/app/690830', 'images/default_game.png'),
(211, 'Fractured Lands', '', 'Racing,First-Person Shooter,Ac', 'Unbroken Studios', 'https://store.steampowered.com/app/751240', 'images/default_game.png'),
(212, 'Friday the 13th: The Game', '', 'Action', 'Gun Media', 'https://store.steampowered.com/app/438740', 'images/default_game.png'),
(213, 'FrostPunk', '', 'Simulation,Strategy', '11 bit studios', 'https://store.steampowered.com/app/323190', 'images/default_game.png'),
(214, 'FrostRunner', '', 'Action,Free To Play,Indie,Plat', 'SMU Guildhall', 'https://store.steampowered.com/app/934840', 'images/default_game.png'),
(215, 'FTL: Faster Than Light', '', 'Casual,Indie,Simulation,Strate', 'Subset Games', 'https://store.steampowered.com/app/212680', 'images/default_game.png'),
(216, 'Garry\'s Mod', '', 'Indie,Simulation', 'Valve', 'https://store.steampowered.com/app/4000', 'images/default_game.png'),
(217, 'Generation Zero', '', 'Action,Adventure', 'Avalanche Studios Stockholm', 'https://store.steampowered.com/app/704270', 'images/default_game.png'),
(218, 'Gloomhaven', '', 'Adventure,Role Playing,Strateg', 'Asmodee Digital', 'https://store.steampowered.com/app/780290', 'images/default_game.png'),
(219, 'Golf With Your Friends', '', 'Casual,Indie,Sports', 'Blacklight Interactive', 'https://store.steampowered.com/app/431240', 'images/default_game.png'),
(220, 'Gravel', '', 'Racing,Sports', 'Milestone S.r.l.', 'https://store.steampowered.com/app/558260', 'images/default_game.png'),
(221, 'GreedFall', '', 'Action,Role Playing', 'Focus Home Interactive', 'https://store.steampowered.com/app/606880', 'images/default_game.png'),
(222, 'Green Hell', '', 'Indie,Simulation', 'Creepy Jar', 'https://store.steampowered.com/app/815370', 'images/default_game.png'),
(223, 'Grim Dawn', '', 'Role Playing,Action,Adventure,', 'Crate Entertainment', 'https://store.steampowered.com/app/219990', 'images/default_game.png'),
(224, 'GRIP: Combat Racing', '', 'Action,Indie,Racing', 'Wired Productions', 'https://store.steampowered.com/app/396900', 'images/default_game.png'),
(225, 'GTFO', '', 'Action,First-Person Shooter,Ma', '10 Chambers Collective', 'https://store.steampowered.com/app/493520', 'images/default_game.png'),
(226, 'Guacamelee! 2', '', 'Action,Adventure,Indie,Platfor', 'Drinkbox Studios', 'https://store.steampowered.com/app/534550', 'images/default_game.png'),
(227, 'Guild Wars 2', '', 'Massively Multiplayer Online,R', 'NCSOFT', '', 'images/default_game.png'),
(228, 'GUILTY GEAR Xrd -REVELATOR-', '', 'Action', 'Arc System Works', 'https://store.steampowered.com/app/520440', 'images/default_game.png'),
(229, 'Hacknet', '', 'Indie,Simulation,Puzzle', 'Surprise Attack', 'https://store.steampowered.com/app/365450', 'images/default_game.png'),
(230, 'Half-Life®', '', 'Action,First-Person Shooter', 'Valve', 'https://store.steampowered.com/app/70', 'images/default_game.png'),
(231, 'Half-Life® 2', '', 'Action,First-Person Shooter', 'Valve', 'https://store.steampowered.com/app/220', 'images/default_game.png'),
(232, 'Hearthstone: Heroes of Warcraf', '', 'Strategy', 'Blizzard Entertainment', '', 'images/default_game.png'),
(233, 'Hearts of Iron IV', '', 'Simulation,Strategy', 'Paradox Interactive', 'https://store.steampowered.com/app/394360', 'images/default_game.png'),
(234, 'Hell Let Loose', '', 'Action,Casual,Indie,Simulation', 'Team17 Digital Ltd', 'https://store.steampowered.com/app/686810', 'images/default_game.png'),
(235, 'Hellblade: Senua\'s Sacrifice', '', 'Action,Adventure,Indie', 'Ninja Theory', 'https://store.steampowered.com/app/414340', 'images/default_game.png'),
(236, 'Heroes of Newerth', '', 'Free To Play,Multiplayer Onlin', 'Frostburn Studios', '', 'images/default_game.png'),
(237, 'Heroes of the Storm', '', 'Action,Multiplayer Online Batt', 'Blizzard Entertainment', '', 'images/default_game.png'),
(238, 'HITMAN™', '', 'Action', 'IO Interactive A/S', 'https://store.steampowered.com/app/236870', 'images/default_game.png'),
(239, 'HITMAN™2', '', 'Action', 'Warner Bros Interactive Entertainment', 'https://store.steampowered.com/app/863550', 'images/default_game.png'),
(240, 'Hobo: Tough Life', '', 'Adventure,Indie,Role Playing,S', 'Perun Creative', 'https://store.steampowered.com/app/632300', 'images/default_game.png'),
(241, 'Holdfast: Nations At War', '', 'Action,Massively Multiplayer O', 'Anvil Game Studios', 'https://store.steampowered.com/app/589290', 'images/default_game.png'),
(242, 'Hollow Knight', '', 'Action,Adventure,Indie,Platfor', 'Team Cherry', 'https://store.steampowered.com/app/367520', 'images/default_game.png'),
(243, 'Homefront®: The Revolution', '', 'Action,Adventure,First-Person ', 'Deep Silver', 'https://store.steampowered.com/app/223100', 'images/default_game.png'),
(244, 'Hot Lava', '', 'Action,Adventure,Indie,Platfor', 'Klei Entertainment', 'https://store.steampowered.com/app/382560', 'images/default_game.png'),
(245, 'House Flipper', '', 'Casual,Family,Indie,Simulation', 'PlayWay S.A., Frozen District', 'https://store.steampowered.com/app/613100', 'images/default_game.png'),
(246, 'Human: Fall Flat', '', 'Adventure,Indie,Puzzle', 'Curve Digital', 'https://store.steampowered.com/app/477160', 'images/default_game.png'),
(247, 'Hunt: Showdown', '', 'Action,First-Person Shooter', 'Crytek', 'https://store.steampowered.com/app/594650', 'images/default_game.png'),
(248, 'I’m not a Monster', '', 'Indie,Massively Multiplayer On', 'Alawar Premium', 'https://store.steampowered.com/app/826600', 'images/default_game.png'),
(249, 'Ice Age: Scrat\'s Nutty Adventu', '', 'Adventure,Family', 'Outright Games Ltd', 'https://store.steampowered.com/app/751060', 'images/default_game.png'),
(250, 'Idle Champions of the Forgotte', '', 'Action,Adventure,Casual,Free T', 'Codename Entertainment Inc.', 'https://store.steampowered.com/app/627690', 'images/default_game.png'),
(251, 'Immortal: Unchained', '', 'Action,Adventure,Role Playing', 'Game Odyssey Limited', 'https://store.steampowered.com/app/369440', 'images/default_game.png'),
(252, 'Imperator: Rome', '', 'Casual,Simulation,Strategy', 'Paradox Interactive', 'https://store.steampowered.com/app/859580', 'images/default_game.png'),
(253, 'Infliction', '', 'Adventure,Indie', 'Caustic Reality', 'https://store.steampowered.com/app/692100', 'images/default_game.png'),
(254, 'Injustice™ 2', '', 'Action', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/627270', 'images/default_game.png'),
(255, 'INSOMNIA: The Ark', '', 'Action,Role Playing,Indie', 'HeroCraft', 'https://store.steampowered.com/app/783170', 'images/default_game.png'),
(256, 'Insurgency', '', 'Action,Indie,Strategy', 'New World Interactive', 'https://store.steampowered.com/app/222880', 'images/default_game.png'),
(257, 'Insurgency: Sandstorm', '', 'Action,First-Person Shooter', 'Focus Home Interactive', 'https://store.steampowered.com/app/581320', 'images/default_game.png'),
(258, 'Into the Breach', '', 'Indie,Role Playing,Simulation,', 'Subset Games', 'https://store.steampowered.com/app/590380', 'images/default_game.png'),
(259, 'Islands of Nyne: Battle Royale', '', 'First-Person Shooter,Action,In', 'Define Human Studios', 'https://store.steampowered.com/app/728540', 'images/default_game.png'),
(260, 'Jurassic World Evolution™', '', 'Simulation,Strategy', 'Frontier Developments Ltd.', 'https://store.steampowered.com/app/648350', 'images/default_game.png'),
(261, 'Kenshi', '', 'Role Playing,Simulation,Strate', 'Lo-Fi Games', 'https://store.steampowered.com/app/233860', 'images/default_game.png'),
(262, 'Kerbal Space Program', '', 'Indie,Simulation', 'Squad', 'https://store.steampowered.com/app/220200', 'images/default_game.png'),
(263, 'Killing Floor 2', '', 'Action', 'Tripwire Interactive', 'https://store.steampowered.com/app/232090', 'images/default_game.png'),
(264, 'Kingdom Come: Deliverance', '', 'Adventure,Action,Role Playing', 'Deep Silver', 'https://store.steampowered.com/app/379430', 'images/default_game.png'),
(265, 'Kingdom Rush Origins', '', 'Indie,Strategy', 'Ironhide Game Studio', 'https://store.steampowered.com/app/816340', 'images/default_game.png'),
(266, 'Kingdom Two Crowns', '', 'Adventure,Indie,Simulation,Str', 'Raw Fury', 'https://store.steampowered.com/app/701160', 'images/default_game.png'),
(267, 'KurtzPel', '', 'Action,Free To Play,Massively ', 'KOG', 'https://store.steampowered.com/app/844870', 'images/default_game.png'),
(268, 'Last Tide', '', 'Action,Indie,Massively Multipl', 'Digital Confectioners', 'https://store.steampowered.com/app/858590', 'images/default_game.png'),
(269, 'League of Legends', '', 'Action,Free To Play,Multiplaye', 'Riot Games', '', 'images/default_game.png'),
(270, 'Left 4 Dead 2', '', 'Action,First-Person Shooter', 'Valve', 'https://store.steampowered.com/app/550', 'images/default_game.png'),
(271, 'LEGO® Batman 2 DC Super Heroes', '', 'Action,Family,Adventure', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/213330', 'images/default_game.png'),
(272, 'LEGO® Batman: The Videogame', '', 'Action,Adventure,Family', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/21000', 'images/default_game.png'),
(273, 'LEGO® Batman™ 3: Beyond Gotham', '', 'Action,Adventure,Family', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/313690', 'images/default_game.png'),
(274, 'LEGO® DC Super-Villains', '', 'Action,Adventure,Family', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/829110', 'images/default_game.png'),
(275, 'LEGO® Harry Potter: Years 1-4', '', 'Action,Family', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/21130', 'images/default_game.png'),
(276, 'LEGO® Jurassic World', '', 'Action,Family,Adventure', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/352400', 'images/default_game.png'),
(277, 'LEGO® Marvel Super Heroes 2', '', 'Action,Adventure,Family', 'Warner Bros. Interactive', 'https://store.steampowered.com/app/647830', 'images/default_game.png'),
(278, 'LEGO® MARVEL\'s Avengers', '', 'Action,Adventure,Family', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/405310', 'images/default_game.png'),
(279, 'LEGO® Marvel™ Super Heroes', '', 'Action,Adventure,Family', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/249130', 'images/default_game.png'),
(280, 'LEGO® The Incredibles', '', 'Family,Action,Adventure', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/818320', 'images/default_game.png'),
(281, 'LEGO® Worlds', '', 'Adventure,Casual,Family', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/332310', 'images/default_game.png'),
(282, 'Leisure Suit Larry - Wet Dream', '', 'Adventure', 'Assemble Entertainment', 'https://store.steampowered.com/app/765870', 'images/default_game.png'),
(283, 'Lethal League Blaze', '', 'Action,Indie,Sports', 'Team Reptile', 'https://store.steampowered.com/app/553310', 'images/default_game.png'),
(284, 'Lineage® II', '', 'Free To Play,Massively Multipl', 'NCSOFT', '', 'images/default_game.png'),
(285, 'Little Big Workshop', '', 'Simulation,Strategy', 'HandyGames, THQ Nordic', 'https://store.steampowered.com/app/574720', 'images/default_game.png'),
(286, 'Lonely Mountains: Downhill', '', 'Action,Indie,Racing,Simulation', 'Megagon industries', 'https://store.steampowered.com/app/711540', 'images/default_game.png'),
(287, 'Mad Max', '', 'Action,Adventure', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/234140', 'images/default_game.png'),
(288, 'Mafia III', '', 'Action,Adventure', '2K Games', 'https://store.steampowered.com/app/360430', 'images/default_game.png'),
(289, 'Magic the Gathering: Arena', '', 'Puzzle,Strategy', 'Hasbro, Inc.', '', 'images/default_game.png'),
(290, 'Mechwarrior 5: Mercenaries', '', 'Action,Massively Multiplayer O', 'Piranha Games Inc.', '', 'images/default_game.png'),
(291, 'MEG 9: Lost Echoes', '', 'Action,Indie,Strategy', 'Skunkwerks Kinetic', 'https://store.steampowered.com/app/405190', 'images/default_game.png'),
(292, 'Men of War: Assault Squad 2', '', 'Action,Simulation,Strategy', '1C Company', 'https://store.steampowered.com/app/244450', 'images/default_game.png'),
(293, 'Metro 2033 Redux', '', 'Action,First-Person Shooter', 'Deep Silver', 'https://store.steampowered.com/app/286690', 'images/default_game.png'),
(294, 'Metro Exodus', '', 'Action,First-Person Shooter', 'Deep Silver', '', 'images/default_game.png'),
(295, 'Metro Exodus', '', 'First-Person Shooter,Action', 'Deep Silver', 'https://store.steampowered.com/app/412020', 'images/default_game.png'),
(296, 'Metro: Last Light Redux', '', 'Action,First-Person Shooter', 'Deep Silver', 'https://store.steampowered.com/app/287390', 'images/default_game.png'),
(297, 'Middle-earth™: Shadow of Mordo', '', 'Action,Role Playing', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/241930', 'images/default_game.png'),
(298, 'Middle-earth™: Shadow of War™', '', 'Action,Adventure,Role Playing', 'WB Games', 'https://store.steampowered.com/app/356190', 'images/default_game.png'),
(299, 'Minecraft: Java Version', '', 'Action,Adventure,Family', 'Microsoft Studios', '', 'images/default_game.png'),
(300, 'Minion Masters', '', 'Action,Free To Play,Indie,Mass', 'BetaDwarf', 'https://store.steampowered.com/app/489520', 'images/default_game.png'),
(301, 'Miracle snack shop', '', 'Casual,Indie,Simulation', 'TALESSHOP Co., Ltd.', 'https://store.steampowered.com/app/995460', 'images/default_game.png'),
(302, 'Monster Energy Supercross - Th', '', 'Racing,Simulation,Sports', 'Milestone S.r.l.', 'https://store.steampowered.com/app/882020', 'images/default_game.png'),
(303, 'Monster Energy Supercross - Th', '', 'Racing,Simulation,Sports', 'Milestone S.r.l.', 'https://store.steampowered.com/app/1089830', 'images/default_game.png'),
(304, 'Moonlighter', '', 'Action,Adventure,Indie', '11 bit studios', 'https://store.steampowered.com/app/606150', 'images/default_game.png'),
(305, 'Moons of Madness™', '', 'Adventure,Casual,Indie', 'Funcom', 'https://store.steampowered.com/app/1012840', 'images/default_game.png'),
(306, 'MORDHAU', '', 'Action,Indie', 'Triternion', 'https://store.steampowered.com/app/629760', 'images/default_game.png'),
(307, 'Mortal Kombat 11', '', 'Action', 'Warner Bros Interactive Entertainment', 'https://store.steampowered.com/app/976310', 'images/default_game.png'),
(308, 'Mortal Kombat X', '', 'Action,Arcade', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/307780', 'images/default_game.png'),
(309, 'Mosaic', '', 'Adventure,Indie', 'Raw Fury Games', 'https://store.steampowered.com/app/349270', 'images/default_game.png'),
(310, 'MOTHERGUNSHIP', '', 'Action,Indie,First-Person Shoo', 'Grip Digital', 'https://store.steampowered.com/app/574090', 'images/default_game.png'),
(311, 'MotoGP™19', '', 'Racing,Sports', 'Milestone S.r.l.', 'https://store.steampowered.com/app/984780', 'images/default_game.png'),
(312, 'Mount & Blade', '', 'Indie,Role Playing', 'TaleWorlds Entertainment', 'https://store.steampowered.com/app/22100', 'images/default_game.png'),
(313, 'Mount & Blade: Warband', '', 'Action,Role Playing', 'TaleWorlds Entertainment', 'https://store.steampowered.com/app/48700', 'images/default_game.png'),
(314, 'MUSYNX', '', 'Indie,Simulation', 'Zodiac Interactive', 'https://store.steampowered.com/app/952040', 'images/default_game.png'),
(315, 'Mutant Year Zero: Road to Eden', '', 'Adventure,Role Playing,Strateg', 'Funcom', 'https://store.steampowered.com/app/760060', 'images/default_game.png'),
(316, 'MXGP 2019 - The Official Motoc', '', 'Racing,Simulation,Sports', 'Milestone S.r.l.', 'https://store.steampowered.com/app/1018160', 'images/default_game.png'),
(317, 'My Memory of Us', '', 'Action,Adventure,Casual,Indie', 'IMGN.PRO', 'https://store.steampowered.com/app/651500', 'images/default_game.png'),
(318, 'My Time at Portia', '', 'Adventure,Casual,Family,IndieR', 'Team17 Digital Ltd', 'https://store.steampowered.com/app/666140', 'images/default_game.png'),
(319, 'Myst III: Exile', '', 'Adventure,Casual,Puzzle', 'Cyan Worlds Inc.', 'https://store.steampowered.com/app/925930', 'images/default_game.png'),
(320, 'Myst IV: Revelation', '', 'Adventure,Casual,Puzzle', 'Cyan Worlds Inc.', 'https://store.steampowered.com/app/925940', 'images/default_game.png'),
(321, 'Myst V: End of Ages', '', 'Adventure,Casual,Puzzle', 'Cyan Worlds Inc.', 'https://store.steampowered.com/app/208110', 'images/default_game.png'),
(322, 'Myst® Masterpiece Edition', '', 'Adventure,Casual,Puzzle', 'Cyan Worlds Inc.', 'https://store.steampowered.com/app/63660', 'images/default_game.png'),
(323, 'Narcosis', '', 'Adventure,Indie', 'Honor Code, Inc.', 'https://store.steampowered.com/app/366870', 'images/default_game.png'),
(324, 'NASCAR Heat 3', '', 'Sports,Racing', '704 Games Company', 'https://store.steampowered.com/app/905450', 'images/default_game.png'),
(325, 'NBA 2K Playgrounds 2', '', 'Sports,Arcade', '2K', 'https://store.steampowered.com/app/726590', 'images/default_game.png'),
(326, 'NBA 2K17', '', 'Sports,Simulation', '2K', 'https://store.steampowered.com/app/385760', 'images/default_game.png'),
(327, 'NBA 2K18', '', 'Simulation,Sports', '2K', 'https://store.steampowered.com/app/577800', 'images/default_game.png'),
(328, 'NBA 2K19', '', 'Sports,Simulation', '2K', 'https://store.steampowered.com/app/841370', 'images/default_game.png'),
(329, 'Nex Machina', '', 'Action,Indie', 'Housemarque', 'https://store.steampowered.com/app/404540', 'images/default_game.png'),
(330, 'Next Day: Survival', '', 'Action,Indie,Role Playing,Mass', 'Last Level', 'https://store.steampowered.com/app/519190', 'images/default_game.png'),
(331, 'No Man\'s Sky', '', 'Adventure,Action', 'Hello Games', 'https://store.steampowered.com/app/275850', 'images/default_game.png'),
(332, 'Orwell: Keeping an Eye On You', '', 'Adventure,Indie,Simulation', 'Fellow Traveller', 'https://store.steampowered.com/app/491950', 'images/default_game.png'),
(333, 'Out of the Park Baseball 19', '', 'Sports,Indie,Simulation,Strate', 'Out of the Park Developments', 'https://store.steampowered.com/app/619290', 'images/default_game.png'),
(334, 'Outlast', '', 'Action,Indie,Adventure', 'Red Barrels', 'https://store.steampowered.com/app/238320', 'images/default_game.png'),
(335, 'Outward', '', 'Action,Role Playing', 'Deep Silver', 'https://store.steampowered.com/app/794260', 'images/default_game.png'),
(336, 'Overcooked 2', '', 'Action,Casual,Indie', 'Team17 Digital Ltd', 'https://store.steampowered.com/app/728880', 'images/default_game.png'),
(337, 'OVERKILL\'s The Walking Dead', '', 'Action,First-Person Shooter', 'OVERKILL - A Starbreeze Studio', 'https://store.steampowered.com/app/717690', 'images/default_game.png'),
(338, 'Overland', '', 'Strategy', 'Finji', 'https://store.steampowered.com/app/355680', 'images/default_game.png'),
(339, 'Overwatch', '', 'First-Person Shooter,Massively', 'Blizzard Entertainment', '', 'images/default_game.png'),
(340, 'Owlboy', '', 'Action,Adventure,Indie', 'D-Pad Studio', 'https://store.steampowered.com/app/115800', 'images/default_game.png'),
(341, 'Oxygen Not Included', '', 'Indie,Simulation', 'Klei Entertainment', 'https://store.steampowered.com/app/457140', 'images/default_game.png'),
(342, 'Paladins®', '', 'Action,Free To Play', 'Hi-Rez Studios, Inc.', 'https://store.steampowered.com/app/444090', 'images/default_game.png'),
(343, 'Papers, Please', '', 'Adventure,Casual,Indie,PuzzleS', '3909', 'https://store.steampowered.com/app/239030', 'images/default_game.png'),
(344, 'Parkitect', '', 'Indie,Simulation', 'Texel Raptor', 'https://store.steampowered.com/app/453090', 'images/default_game.png'),
(345, 'Past Cure', '', 'Action,Indie', 'Phantom 8', 'https://store.steampowered.com/app/646050', 'images/default_game.png'),
(346, 'Path of Exile', '', 'Adventure,Free To Play,Massive', 'Grinding Gear Games', '', 'images/default_game.png'),
(347, 'Pathfinder: Kingmaker® - Enhan', '', 'Role Playing,Adventure', 'Deep Silver', 'https://store.steampowered.com/app/640820', 'images/default_game.png'),
(348, 'Pax Nova', '', 'Indie,Strategy', 'Iceberg Interactive', 'https://store.steampowered.com/app/804850', 'images/default_game.png'),
(349, 'PAYDAY 2: Ultimate Edition', '', 'Action,First-Person Shooter,Ro', 'Starbreeze Publishing AB, 505 Games', 'https://store.steampowered.com/app/218620', 'images/default_game.png'),
(350, 'PC Building Simulator', '', 'Simulation,Indie', 'The Irregular Corporation', 'https://store.steampowered.com/app/621060', 'images/default_game.png');
INSERT INTO `juego` (`id_juego`, `titulo`, `descripcion`, `genero`, `publisher`, `enlace`, `imagen`) VALUES
(351, 'Phantom Doctrine', '', 'Action,Role Playing,Strategy,I', 'Good Shepherd Entertainment', 'https://store.steampowered.com/app/559100', 'images/default_game.png'),
(352, 'Pillars of Eternity', '', 'Role Playing', 'Paradox Interactive', 'https://store.steampowered.com/app/291650', 'images/default_game.png'),
(353, 'Pillars of Eternity II: Deadfi', '', 'Role Playing', 'Obsidian Entertainment', 'https://store.steampowered.com/app/560130', 'images/default_game.png'),
(354, 'PixARK', '', 'Action,Adventure,Casual,IndieM', 'Snail Game', 'https://store.steampowered.com/app/593600', 'images/default_game.png'),
(355, 'Plane Mechanic Simulator', '', 'Casual,Indie,Simulation', 'Movie Games S.A., PlayWay S.A.', 'https://store.steampowered.com/app/803980', 'images/default_game.png'),
(356, 'PLANET ALPHA', '', 'Action,Adventure,Indie,Platfor', 'Team17 Digital Ltd', 'https://store.steampowered.com/app/485030', 'images/default_game.png'),
(357, 'Planet Coaster®', '', 'Simulation,Strategy', 'Frontier Developments', 'https://store.steampowered.com/app/493340', 'images/default_game.png'),
(358, 'Planet Zoo', '', 'Simulation,Strategy', 'Frontier Developments', 'https://store.steampowered.com/app/703080', 'images/default_game.png'),
(359, 'PlanetSide 2', '', 'Action,First-Person Shooter,Fr', 'Daybreak Game Company', 'https://store.steampowered.com/app/218230', 'images/default_game.png'),
(360, 'Planetside Arena', '', 'Action,Massively Multiplayer O', 'Daybreak Game Company', 'https://store.steampowered.com/app/987350', 'images/default_game.png'),
(361, 'PLAYERUNKNOWN\'S BATTLEGROUNDS', '', 'Action,Adventure,First-Person ', 'PUBG Corporation', 'https://store.steampowered.com/app/578080', 'images/default_game.png'),
(362, 'PLAYERUNKNOWN\'S BATTLEGROUNDS ', '', 'Action,Adventure,Massively Mul', 'PUBG Corporation', 'https://store.steampowered.com/app/622590', 'images/default_game.png'),
(363, 'Portal 2', '', 'Action,Adventure,First-Person ', 'Valve', 'https://store.steampowered.com/app/620', 'images/default_game.png'),
(364, 'Portal™', '', 'Action', 'Valve', 'https://store.steampowered.com/app/400', 'images/default_game.png'),
(365, 'Post Scriptum', '', 'Action,Indie,Massively Multipl', 'Offworld Industries', 'https://store.steampowered.com/app/736220', 'images/default_game.png'),
(366, 'Praetorians - HD Remaster', '', 'Strategy', 'Kalypso Media Group', 'https://store.steampowered.com/app/1100420', 'images/default_game.png'),
(367, 'Praey for the Gods', '', 'Action,Adventure,Indie,Role Pl', 'No Matter Studios', 'https://store.steampowered.com/app/494430', 'images/default_game.png'),
(368, 'Prey®', '', 'Action,Adventure,First-Person ', 'Bethesda Softworks', 'https://store.steampowered.com/app/480490', 'images/default_game.png'),
(369, 'Project CARS', '', 'Casual,Racing,Simulation,Sport', 'Slightly Mad Studios', 'https://store.steampowered.com/app/234630', 'images/default_game.png'),
(370, 'Project CARS 2', '', 'Simulation,Racing', 'BANDAI NAMCO Entertainment', 'https://store.steampowered.com/app/378860', 'images/default_game.png'),
(371, 'Project Winter', '', 'Action,Adventure,Casual,IndieS', 'Other Ocean', 'https://store.steampowered.com/app/774861', 'images/default_game.png'),
(372, 'PUBG: Closed Experimental Serv', '', 'Action,Adventure,Massively Mul', 'PUBG Corporation', 'https://store.steampowered.com/app/813000', 'images/default_game.png'),
(373, 'Pummel Party', '', 'Action,Casual,Indie', 'Rebuilt Games', 'https://store.steampowered.com/app/880940', 'images/default_game.png'),
(374, 'Pure Farming 2018', '', 'Simulation', 'Techland Publishing', 'https://store.steampowered.com/app/534370', 'images/default_game.png'),
(375, 'Pyre', '', 'Action,Indie,Role Playing', 'Supergiant Games', 'https://store.steampowered.com/app/462770', 'images/default_game.png'),
(376, 'Q.U.B.E. 2', '', 'Indie,Adventure,Action', 'Trapped Nerve Ltd', 'https://store.steampowered.com/app/359100', 'images/default_game.png'),
(377, 'Quake II RTX', '', 'Action,First-Person Shooter,Fr', 'NVIDIA Corporation', 'https://store.steampowered.com/app/1089130', 'images/default_game.png'),
(378, 'Quake® Champions', '', 'First-Person Shooter,Free To P', 'Bethesda Softworks', 'https://store.steampowered.com/app/611500', 'images/default_game.png'),
(379, 'Race With Ryan', '', 'Family,Racing,Sports', 'Outright Games Ltd', 'https://store.steampowered.com/app/1054990', 'images/default_game.png'),
(380, 'RAD', '', 'Action', 'BANDAI NAMCO Entertainment America Inc.', 'https://store.steampowered.com/app/722560', 'images/default_game.png'),
(381, 'Raft', '', 'Adventure', 'Axolot Games', 'https://store.steampowered.com/app/648800', 'images/default_game.png'),
(382, 'RAGE 2', '', 'Action,First-Person Shooter', 'Bethesda Softworks LLC', '', 'images/default_game.png'),
(383, 'RAGE 2', '', 'Action,First-Person Shooter', 'Bethesda Softworks LLC', 'https://store.steampowered.com/app/548570', 'images/default_game.png'),
(384, 'RAID: World War II', '', 'Action,Adventure,Role Playing', 'Starbreeze Publishing AB', 'https://store.steampowered.com/app/414740', 'images/default_game.png'),
(385, 'Ravenfield', '', 'Action,Indie', 'SteelRaven7', 'https://store.steampowered.com/app/636480', 'images/default_game.png'),
(386, 'Realm Grinder', '', 'Casual,Free To Play,Role Playi', 'Kongregate', 'https://store.steampowered.com/app/610080', 'images/default_game.png'),
(387, 'Realm Royale', '', 'Action,Free To Play,First-Pers', 'Hi-Rez Studios', 'https://store.steampowered.com/app/813820', 'images/default_game.png'),
(388, 'realMyst: Masterpiece Edition', '', 'Adventure,Casual,Indie,Puzzle', 'Cyan Worlds Inc.', 'https://store.steampowered.com/app/244430', 'images/default_game.png'),
(389, 'Reigns: Game of Thrones', '', 'Adventure,Indie,Role Playing', 'Devolver Digital', 'https://store.steampowered.com/app/897820', 'images/default_game.png'),
(390, 'Remnant: From the Ashes', '', 'Action,Adventure,Role Playing', 'Perfect World Entertainment', 'https://store.steampowered.com/app/617290', 'images/default_game.png'),
(391, 'Rend', '', 'Action,Adventure,Indie,Massive', 'Frostkeep Studios', 'https://store.steampowered.com/app/547860', 'images/default_game.png'),
(392, 'RIDE 3', '', 'Racing,Simulation,Sports', 'Milestone S.r.l.', 'https://store.steampowered.com/app/759740', 'images/default_game.png'),
(393, 'RiME', '', 'Adventure,Puzzle', 'Grey Box', 'https://store.steampowered.com/app/493200', 'images/default_game.png'),
(394, 'RimWorld', '', 'Indie,Simulation,Strategy', 'Ludeon Studios', 'https://store.steampowered.com/app/294100', 'images/default_game.png'),
(395, 'Risen 3 - Titan Lords', '', 'Role Playing,Adventure', 'Deep Silver', 'https://store.steampowered.com/app/249230', 'images/default_game.png'),
(396, 'Rising Storm 2: Vietnam', '', 'Action,Massively Multiplayer O', 'Tripwire Interactive', 'https://store.steampowered.com/app/418460', 'images/default_game.png'),
(397, 'Riven: The Sequel to MYST', '', 'Adventure,Casual,Puzzle', 'Cyan Worlds Inc.', 'https://store.steampowered.com/app/63610', 'images/default_game.png'),
(398, 'Rocket League®', '', 'Action,Arcade,Casual,RacingSpo', 'Psyonix, inc.', 'https://store.steampowered.com/app/252950', 'images/default_game.png'),
(399, 'Rugby 20', '', 'Simulation,Sports', 'Bigben Interactive', 'https://store.steampowered.com/app/846730', 'images/default_game.png'),
(400, 'Russian Fishing 4', '', 'Adventure,Casual,Free To Play,', 'Russian Fishing', 'https://store.steampowered.com/app/766570', 'images/default_game.png'),
(401, 'Rust', '', 'Action,Adventure,Indie,Massive', 'Facepunch Studios', 'https://store.steampowered.com/app/252490', 'images/default_game.png'),
(402, 'Sacred 3', '', 'Role Playing,Action', 'Deep Silver', 'https://store.steampowered.com/app/247950', 'images/default_game.png'),
(403, 'Salt and Sanctuary', '', 'Action,Indie,Role Playing', 'Ska Studios', 'https://store.steampowered.com/app/283640', 'images/default_game.png'),
(404, 'SCP: Secret Laboratory', '', 'Action,First-Person Shooter,Fr', 'Northwood Studios', 'https://store.steampowered.com/app/700330', 'images/default_game.png'),
(405, 'SCUM', '', 'Action,Adventure,Massively Mul', 'Devolver Digital', 'https://store.steampowered.com/app/513710', 'images/default_game.png'),
(406, 'Sekiro™: Shadows Die Twice', '', 'Action,Adventure', 'Activision, Inc', 'https://store.steampowered.com/app/814380', 'images/default_game.png'),
(407, 'Semblance', '', 'Indie,Puzzle,Adventure,Action', 'Good Shepherd Entertainment', 'https://store.steampowered.com/app/700160', 'images/default_game.png'),
(408, 'Session: Skateboarding Sim Gam', '', 'Indie,Simulation,Sports,Strate', 'Crea-ture Studios', 'https://store.steampowered.com/app/861650', 'images/default_game.png'),
(409, 'Shadow Warrior 2', '', 'Action,Adventure,First-Person ', 'Devolver Digital', 'https://store.steampowered.com/app/324800', 'images/default_game.png'),
(410, 'Shadowrun Returns', '', 'Adventure,Indie,Role Playing,S', 'Harebrained Schemes', 'https://store.steampowered.com/app/234650', 'images/default_game.png'),
(411, 'Shenmue I & II', '', 'Action,Adventure,Role Playing', 'SEGA', 'https://store.steampowered.com/app/758330', 'images/default_game.png'),
(412, 'Shenmue III', '', 'Action,Adventure', 'Deep Silver', '', 'images/default_game.png'),
(413, 'Sid Meier’s Civilization® VI', '', 'Strategy', '2K Games', 'https://store.steampowered.com/app/289070', 'images/default_game.png'),
(414, 'Sid Meier\'s Civilization® V', '', 'Strategy', '2K Games', 'https://store.steampowered.com/app/8930', 'images/default_game.png'),
(415, 'Silver Chains', '', 'Adventure,Indie', 'Headup', 'https://store.steampowered.com/app/975470', 'images/default_game.png'),
(416, 'Skybolt Zack', '', 'Action,Adventure,Arcade,IndieP', 'Green Man Gaming', 'https://store.steampowered.com/app/909670', 'images/default_game.png'),
(417, 'Slay the Spire', '', 'Indie,Strategy', 'Mega Crit Games', 'https://store.steampowered.com/app/646570', 'images/default_game.png'),
(418, 'SMITE®', '', 'Action,Free To Play,Multiplaye', 'Hi-Rez Studios', 'https://store.steampowered.com/app/386360', 'images/default_game.png'),
(419, 'Sniper Elite 3', '', 'Action,Adventure', 'Rebellion', 'https://store.steampowered.com/app/238090', 'images/default_game.png'),
(420, 'Sniper Elite 4', '', 'Action,Adventure', 'Rebellion', 'https://store.steampowered.com/app/312660', 'images/default_game.png'),
(421, 'Sniper Elite V2 Remastered', '', 'Action,First-Person Shooter', 'Rebellion', 'https://store.steampowered.com/app/728740', 'images/default_game.png'),
(422, 'SOMA', '', 'Action,Adventure,Indie', 'Frictional Games', 'https://store.steampowered.com/app/282140', 'images/default_game.png'),
(423, 'Sonic Forces', '', 'Action,Adventure', 'SEGA', 'https://store.steampowered.com/app/637100', 'images/default_game.png'),
(424, 'Sonic Mania', '', 'Action,Adventure,Family,Arcade', 'SEGA', 'https://store.steampowered.com/app/584400', 'images/default_game.png'),
(425, 'SOULCALIBUR™ VI', '', 'Action,Arcade', 'Bandai Namco Entertainment', 'https://store.steampowered.com/app/544750', 'images/default_game.png'),
(426, 'SoulWorker', '', 'Free To Play,Role Playing,Mass', 'Gameforge 4D GmbH', 'https://store.steampowered.com/app/630100', 'images/default_game.png'),
(427, 'Space Engineers', '', 'Action,Indie,Simulation,Strate', 'Keen Software House', 'https://store.steampowered.com/app/244850', 'images/default_game.png'),
(428, 'Space Hulk: Tactics', '', 'Strategy', 'Focus Home Interactive', 'https://store.steampowered.com/app/492230', 'images/default_game.png'),
(429, 'Spacelords', '', 'Adventure,Action,Free To Play,', 'MercurySteam', 'https://store.steampowered.com/app/436180', 'images/default_game.png'),
(430, 'SpellForce 3', '', 'Role Playing,Strategy', 'THQ Nordic', 'https://store.steampowered.com/app/311290', 'images/default_game.png'),
(431, 'SpellForce 3: Soul Harvest', '', 'Role Playing,Strategy', 'THQ Nordic', 'https://store.steampowered.com/app/817540', 'images/default_game.png'),
(432, 'Spintires: MudRunner', '', 'Simulation,Racing', 'Focus Home Interactive', 'https://store.steampowered.com/app/675010', 'images/default_game.png'),
(433, 'Splitgate: Arena Warfare', '', 'First-Person Shooter,Free To P', '1047 Games', 'https://store.steampowered.com/app/677620', 'images/default_game.png'),
(434, 'SpyParty', '', 'Action,Indie,Simulation,Strate', 'Chris Hecker', 'https://store.steampowered.com/app/329070', 'images/default_game.png'),
(435, 'Spyro™ Reignited Trilogy', '', 'Action,Adventure,First-Person ', 'Activision', 'https://store.steampowered.com/app/996580', 'images/default_game.png'),
(436, 'Squad', '', 'Action,Indie,Strategy', 'Offworld Industries', 'https://store.steampowered.com/app/393380', 'images/default_game.png'),
(437, 'Star Control®: Origins', '', 'Action,Adventure,Casual,IndieR', 'Stardock Entertainment', 'https://store.steampowered.com/app/271260', 'images/default_game.png'),
(438, 'Star Wars: Battlefront 2 (Clas', '', 'Action', 'Disney Interactive', 'https://store.steampowered.com/app/6060', 'images/default_game.png'),
(439, 'STAR WARS™ - Knights of the Ol', '', 'Adventure,Role Playing', 'Disney Interactive, Lucasfilm', 'https://store.steampowered.com/app/32370', 'images/default_game.png'),
(440, 'Starbound', '', 'Action,Adventure,Indie,Role Pl', 'Chucklefish', 'https://store.steampowered.com/app/211820', 'images/default_game.png'),
(441, 'StarCraft II®', '', 'Strategy', 'Blizzard Entertainment', '', 'images/default_game.png'),
(442, 'StarCraft® Remastered', '', 'Strategy,Multiplayer Online Ba', 'Activision Blizzard', '', 'images/default_game.png'),
(443, 'Stardew Valley', '', 'Indie,Role Playing,Simulation', 'Chucklefish', 'https://store.steampowered.com/app/413150', 'images/default_game.png'),
(444, 'Startup Company', '', 'Casual,Indie,Simulation,Strate', 'Hovgaard Games', 'https://store.steampowered.com/app/606800', 'images/default_game.png'),
(445, 'Stellaris', '', 'Strategy', 'Paradox Interactive', 'https://store.steampowered.com/app/281990', 'images/default_game.png'),
(446, 'Still There', '', 'Adventure,Indie,Puzzle', 'Iceberg Interactive', 'https://store.steampowered.com/app/1063490', 'images/default_game.png'),
(447, 'Strange Brigade', '', 'Action,Adventure', 'Rebellion', 'https://store.steampowered.com/app/312670', 'images/default_game.png'),
(448, 'Subnautica', '', 'Adventure', 'Unknown Worlds', 'https://store.steampowered.com/app/264710', 'images/default_game.png'),
(449, 'Subnautica: Below Zero', '', 'Adventure,Indie', 'Unknown Worlds Entertainment', 'https://store.steampowered.com/app/848450', 'images/default_game.png'),
(450, 'Sundered', '', 'Action,Adventure,Indie,Platfor', 'Thunder Lotus Games', 'https://store.steampowered.com/app/535480', 'images/default_game.png'),
(451, 'Sunset Overdrive', '', 'Action,First-Person Shooter,Ad', 'Microsoft Studios', 'https://store.steampowered.com/app/847370', 'images/default_game.png'),
(452, 'Super Mega Baseball 2', '', 'Indie,Family,Sports,Simulation', 'Metalhead Software Inc.', 'https://store.steampowered.com/app/414870', 'images/default_game.png'),
(453, 'Surviving Mars', '', 'Simulation,Strategy', 'Paradox Interactive', 'https://store.steampowered.com/app/464920', 'images/default_game.png'),
(454, 'Switchblade', '', 'Indie,Action,Multiplayer Onlin', 'Lucid Publishing Ltd', 'https://store.steampowered.com/app/585630', 'images/default_game.png'),
(455, 'Tabletop Simulator', '', 'Casual,Family,Indie,Role Playi', 'Berserk Games', 'https://store.steampowered.com/app/286160', 'images/default_game.png'),
(456, 'Tacoma', '', 'Adventure,Indie', 'Fullbright', 'https://store.steampowered.com/app/343860', 'images/default_game.png'),
(457, 'Team Fortress 2', '', 'Action,Free To Play', 'Valve', 'https://store.steampowered.com/app/440', 'images/default_game.png'),
(458, 'Team Sonic Racing™', '', 'Family,Racing', 'SEGA', 'https://store.steampowered.com/app/785260', 'images/default_game.png'),
(459, 'TEKKEN 7', '', 'Action,Arcade', 'BANDAI NAMCO Entertainment', 'https://store.steampowered.com/app/389730', 'images/default_game.png'),
(460, 'TERA', '', 'Action,Adventure,Free To Play,', 'En Masse Entertainment', 'https://store.steampowered.com/app/323370', 'images/default_game.png'),
(461, 'Terminator: Resistance', '', 'Action,Adventure,Role Playing', 'Reef Entertainment', 'https://store.steampowered.com/app/954740', 'images/default_game.png'),
(462, 'Terraria', '', 'Action,Adventure,Indie,Role Pl', 'Re-Logic', 'https://store.steampowered.com/app/105600', 'images/default_game.png'),
(463, 'The Bard\'s Tale IV', '', 'Role Playing', 'inXile Entertainment', 'https://store.steampowered.com/app/566090', 'images/default_game.png'),
(464, 'The Bradwell Conspiracy', '', 'Adventure,Casual,Indie', 'Bossa Studios', 'https://store.steampowered.com/app/421790', 'images/default_game.png'),
(465, 'The Crew® 2', '', 'Action,Racing,Massively Multip', 'Ubisoft', '', 'images/default_game.png'),
(466, 'The Crew® 2', '', 'Action,Racing,Massively Multip', 'Ubisoft', 'https://store.steampowered.com/app/646910', 'images/default_game.png'),
(467, 'The Crew™', '', 'Action,Massively Multiplayer O', 'Ubisoft', '', 'images/default_game.png'),
(468, 'The Crew™', '', 'Action,Massively Multiplayer O', 'Ubisoft', 'https://store.steampowered.com/app/241560', 'images/default_game.png'),
(469, 'The D.R.G. Initiative', '', 'Action,Indie', 'Slingshot Cartel', 'https://store.steampowered.com/app/613580', 'images/default_game.png'),
(470, 'The Darkness II', '', 'Action,Adventure,Role Playing', '2K Games', 'https://store.steampowered.com/app/67370', 'images/default_game.png'),
(471, 'The Elder Scrolls V: Skyrim', '', 'Role Playing', 'Bethesda Softworks', 'https://store.steampowered.com/app/72850', 'images/default_game.png'),
(472, 'The Elder Scrolls V: Skyrim Sp', '', 'Role Playing', 'Bethesda Softworks', 'https://store.steampowered.com/app/489830', 'images/default_game.png'),
(473, 'The Elder Scrolls® Online: Els', '', 'Role Playing,Massively Multipl', 'Bethesda Softworks', 'https://store.steampowered.com/app/306130', 'images/default_game.png'),
(474, 'The Evil Within 2', '', 'Action,Adventure', 'Bethesda Softworks', 'https://store.steampowered.com/app/601430', 'images/default_game.png'),
(475, 'The Fisherman - Fishing Planet', '', 'Massively Multiplayer Online,S', 'Bigben Interactive', 'https://store.steampowered.com/app/1072480', 'images/default_game.png'),
(476, 'The Forest', '', 'First-Person Shooter', 'Endnight Games Ltd', 'https://store.steampowered.com/app/242760', 'images/default_game.png'),
(477, 'The Golf Club™ 2019 featuring ', '', 'Sports,Indie,Simulation,Strate', '2K', 'https://store.steampowered.com/app/695290', 'images/default_game.png'),
(478, 'The Isle', '', 'Action,Adventure,Indie,Massive', 'Afterthought LLC', 'https://store.steampowered.com/app/376210', 'images/default_game.png'),
(479, 'The Jackbox Party Pack 3', '', 'Casual,Family,Indie,Strategy', 'Jackbox Games, Inc.', 'https://store.steampowered.com/app/434170', 'images/default_game.png'),
(480, 'THE KING OF FIGHTERS \'98 ULTIM', '', 'Action,Arcade', 'SNK CORPORATION', 'https://store.steampowered.com/app/222420', 'images/default_game.png'),
(481, 'The Legend of Bum-Bo', '', 'Adventure,Indie,Strategy', 'Edmund McMillen', 'https://store.steampowered.com/app/1148650', 'images/default_game.png'),
(482, 'The Legend of Heroes: Trails o', '', 'Adventure,Role Playing', 'XSEED Games, Marvelous USA, Inc.', 'https://store.steampowered.com/app/538680', 'images/default_game.png'),
(483, 'The LEGO® Movie - Videogame', '', 'Action,Family,Adventure', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/267530', 'images/default_game.png'),
(484, 'The LEGO® Movie 2 Videogame', '', 'Action,Adventure,Casual,Family', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/881320', 'images/default_game.png'),
(485, 'The LEGO® NINJAGO® Movie Video', '', 'Action,Family,Adventure', 'Warner Bros. Interactive Entertainment', 'https://store.steampowered.com/app/640590', 'images/default_game.png'),
(486, 'The Long Dark', '', 'Adventure,Indie,Strategy,Simul', 'Hinterland Studio Inc.', 'https://store.steampowered.com/app/305620', 'images/default_game.png'),
(487, 'The Surge', '', 'Action,Role Playing', 'Focus Home Interactive', 'https://store.steampowered.com/app/378540', 'images/default_game.png'),
(488, 'The Surge 2', '', 'Action', 'Focus Home Interactive', 'https://store.steampowered.com/app/644830', 'images/default_game.png'),
(489, 'The Walking Dead: The Final Se', '', 'Adventure,Action', 'Telltale Games', 'https://store.steampowered.com/app/866800', 'images/default_game.png'),
(490, 'The Witcher 2: Assassins of Ki', '', 'Role Playing', 'CD Projekt RED', 'https://store.steampowered.com/app/20920', 'images/default_game.png'),
(491, 'The Witcher® 3: Wild Hunt', '', 'Role Playing', 'CD PROJEKT RED', 'https://store.steampowered.com/app/292030', 'images/default_game.png'),
(492, 'The Witness', '', 'Adventure,Casual,Indie,Puzzle', 'Thekla, Inc.', 'https://store.steampowered.com/app/210970', 'images/default_game.png'),
(493, 'theHunter: Call of the Wild™', '', 'Adventure,Simulation,Sports', 'Avalanche Studios', 'https://store.steampowered.com/app/518790', 'images/default_game.png'),
(494, 'They Are Billions', '', 'Strategy', 'Numantian Games', 'https://store.steampowered.com/app/644930', 'images/default_game.png'),
(495, 'Thief Simulator', '', 'Action,Adventure,Indie,Simulat', 'PlayWay S.A.', 'https://store.steampowered.com/app/704850', 'images/default_game.png'),
(496, 'This War of Mine', '', 'Adventure,Indie,Platformer,Sim', '11 bit studios', 'https://store.steampowered.com/app/282070', 'images/default_game.png'),
(497, 'Thronebreaker: The Witcher Tal', '', 'Adventure,Role Playing', 'CD PROJEKT RED', 'https://store.steampowered.com/app/973760', 'images/default_game.png'),
(498, 'Tom Clancy’s Ghost Recon Break', '', 'Action,Adventure', 'Ubisoft', '', 'images/default_game.png'),
(499, 'Tom Clancy’s The Division® 2', '', 'Action,Adventure,Role Playing,', 'Ubisoft', '', 'images/default_game.png'),
(500, 'Tom Clancy’s The Division® 2', '', 'Action,Adventure,Role Playing,', 'Ubisoft', '', 'images/default_game.png'),
(501, 'Tom Clancy\'s Ghost Recon® Wild', '', 'Action,Adventure', 'Ubisoft', 'https://store.steampowered.com/app/460930', 'images/default_game.png'),
(502, 'Tom Clancy\'s Ghost Recon® Wild', '', 'Action,Adventure', 'Ubisoft', '', 'images/default_game.png'),
(503, 'Tom Clancy\'s Rainbow Six® Sieg', '', 'Action,First-Person Shooter,Ma', 'Ubisoft', '', 'images/default_game.png'),
(504, 'Tom Clancy\'s Rainbow Six® Sieg', '', 'Action,First-Person Shooter', 'Ubisoft', 'https://store.steampowered.com/app/359550', 'images/default_game.png'),
(505, 'Tom Clancy\'s Rainbow Six® Sieg', '', 'Action,First-Person Shooter', 'Ubisoft', '', 'images/default_game.png'),
(506, 'Tom Clancy\'s The Division™', '', 'Action,Adventure,Role Playing,', 'Ubisoft', '', 'images/default_game.png'),
(507, 'Tom Clancy\'s The Division™', '', 'Action,Adventure,Role Playing,', 'Ubisoft', 'https://store.steampowered.com/app/365590', 'images/default_game.png'),
(508, 'Torchlight II', '', 'Action,Adventure,Indie,Role Pl', 'Runic Games', 'https://store.steampowered.com/app/200710', 'images/default_game.png'),
(509, 'Total War: THREE KINGDOMS', '', 'Action,Strategy', 'SEGA', 'https://store.steampowered.com/app/779340', 'images/default_game.png'),
(510, 'Totally Accurate Battle Simula', '', 'Casual,Indie,Simulation,Strate', 'Landfall', 'https://store.steampowered.com/app/508440', 'images/default_game.png'),
(511, 'Totally Accurate Battlegrounds', '', 'Action,Casual,Indie,Massively ', 'Landfall', 'https://store.steampowered.com/app/823130', 'images/default_game.png'),
(512, 'Tower of Time', '', 'Role Playing,Strategy', 'Event Horizon', 'https://store.steampowered.com/app/617480', 'images/default_game.png'),
(513, 'Transport Fever', '', 'Simulation', 'Good Shepherd Entertainment', 'https://store.steampowered.com/app/446800', 'images/default_game.png'),
(514, 'Transport Fever 2', '', 'Simulation,Strategy', 'Good Shepherd Entertainment', 'https://store.steampowered.com/app/1066780', 'images/default_game.png'),
(515, 'Tree of Savior', '', 'Free To Play,Massively Multipl', 'IMCGAMES Co.,Ltd.', 'https://store.steampowered.com/app/372000', 'images/default_game.png'),
(516, 'Trials® Rising', '', 'Racing', 'Ubisoft', 'https://store.steampowered.com/app/641080', 'images/default_game.png'),
(517, 'Trials® Rising', '', 'Racing', 'Ubisoft', '', 'images/default_game.png'),
(518, 'Tricky Towers', '', 'Casual,Indie,Puzzle,Strategy', 'WeirdBeard', 'https://store.steampowered.com/app/437920', 'images/default_game.png'),
(519, 'Trine 4: The Nightmare Prince', '', 'Action,Adventure,Indie,Platfor', 'Frozenbyte', 'https://store.steampowered.com/app/690640', 'images/default_game.png'),
(520, 'Triton Survival', '', 'Action,Indie,Role Playing', 'DreamsSoftGames', 'https://store.steampowered.com/app/1013450', 'images/default_game.png'),
(521, 'Tropico 6', '', 'Casual,Simulation,Strategy', 'Kalypso Media', 'https://store.steampowered.com/app/492720', 'images/default_game.png'),
(522, 'Trove', '', 'Action,Adventure,Casual,Free T', 'Trion Worlds', 'https://store.steampowered.com/app/304050', 'images/default_game.png'),
(523, 'Trover Saves The Universe', '', 'Action,Adventure,Indie', 'Squanch Games, Inc.', 'https://store.steampowered.com/app/1051200', 'images/default_game.png'),
(524, 'TT Isle of Man', '', 'Racing,Sports,Simulation', 'Bigben Interactive', 'https://store.steampowered.com/app/626610', 'images/default_game.png'),
(525, 'Two Point Hospital', '', 'Simulation,Strategy', 'SEGA', 'https://store.steampowered.com/app/535930', 'images/default_game.png'),
(526, 'Ultimate Fishing Simulator', '', 'Casual,Simulation,Sports', 'Ultimate Games S.A., PlayWay S.A.', 'https://store.steampowered.com/app/468920', 'images/default_game.png'),
(527, 'Underworld Ascendant®', '', 'Action,Adventure,Indie,Role Pl', '505 Games', 'https://store.steampowered.com/app/692840', 'images/default_game.png'),
(528, 'Unknown Fate', '', 'Indie,Adventure', '1C Publishing', 'https://store.steampowered.com/app/510390', 'images/default_game.png'),
(529, 'Unturned', '', 'Action,Adventure,Free To Play,', 'Smartly Dressed Games', 'https://store.steampowered.com/app/304930', 'images/default_game.png'),
(530, 'URU: Complete Chronicles', '', 'Adventure,Casual,Puzzle', 'Cyan Worlds Inc.', 'https://store.steampowered.com/app/63650', 'images/default_game.png'),
(531, 'Valkyria Chronicles 4', '', 'Action,Role Playing,Strategy', 'SEGA', 'https://store.steampowered.com/app/790820', 'images/default_game.png'),
(532, 'Vampyr', '', 'Action,Role Playing', 'Dontnod Entertainment', 'https://store.steampowered.com/app/427290', 'images/default_game.png'),
(533, 'Vanquish', '', 'First-Person Shooter,Action', 'SEGA', 'https://store.steampowered.com/app/460810', 'images/default_game.png'),
(534, 'V-Rally 4', '', 'Racing', 'Bigben', 'https://store.steampowered.com/app/658700', 'images/default_game.png'),
(535, 'War of Rights', '', 'Action,Indie,Simulation', 'Campfire Games', 'https://store.steampowered.com/app/424030', 'images/default_game.png'),
(536, 'War Thunder', '', 'Action,Massively Multiplayer O', 'Gaijin Entertainment', '', 'images/default_game.png'),
(537, 'War Thunder', '', 'Massively Multiplayer Online,F', 'Gaijin Entertainment', 'https://store.steampowered.com/app/236390', 'images/default_game.png'),
(538, 'Warframe', '', 'Action,Free To Play,Multiplaye', 'Digital Extremes', 'https://store.steampowered.com/app/230410', 'images/default_game.png'),
(539, 'Warhammer 40,000: Inquisitor -', '', 'Action,Indie,Adventure,Role Pl', 'NeocoreGames', 'https://store.steampowered.com/app/527430', 'images/default_game.png'),
(540, 'Warhammer 40,000: Inquisitor -', '', 'Action,Adventure,Indie,Role Pl', 'NeocoreGames', 'https://store.steampowered.com/app/1042800', 'images/default_game.png'),
(541, 'Warhammer 40,000: Mechanicus', '', 'Strategy', 'Kasedo Games', 'https://store.steampowered.com/app/673880', 'images/default_game.png'),
(542, 'Warhammer: Chaosbane', '', 'Action,Adventure,Role Playing', 'Bigben Interactive', 'https://store.steampowered.com/app/774241', 'images/default_game.png'),
(543, 'Warhammer: End Times - Vermint', '', 'Action,Indie', 'Fatshark', 'https://store.steampowered.com/app/235540', 'images/default_game.png'),
(544, 'Warhammer: Vermintide 2', '', 'Action,Indie', 'Fatshark', 'https://store.steampowered.com/app/552500', 'images/default_game.png'),
(545, 'WARRIORS OROCHI 4', '', 'Action', 'KOEI TECMO GAMES CO., LTD.', 'https://store.steampowered.com/app/831560', 'images/default_game.png'),
(546, 'Watch_Dogs® 2', '', 'Action,Adventure', 'Ubisoft', '', 'images/default_game.png'),
(547, 'Watch_Dogs® 2', '', 'Action,Adventure', 'Ubisoft', 'https://store.steampowered.com/app/447040', 'images/default_game.png'),
(548, 'Watch_Dogs™', '', 'Action,Adventure', 'Ubisoft', '', 'images/default_game.png'),
(549, 'Watch_Dogs™', '', 'Action,Adventure', 'Ubisoft', 'https://store.steampowered.com/app/243470', 'images/default_game.png'),
(550, 'We Happy Few', '', 'Adventure,Role Playing,Action,', 'Compulsion Games', 'https://store.steampowered.com/app/320240', 'images/default_game.png'),
(551, 'Welcome to the Game II', '', 'Indie,Simulation,Strategy', 'Reflect Studios', 'https://store.steampowered.com/app/720250', 'images/default_game.png'),
(552, 'Will To Live Online', '', 'Action,Indie,Massively Multipl', 'AlphaSoft LLC', 'https://store.steampowered.com/app/707010', 'images/default_game.png'),
(553, 'Wolfenstein® II: The New Colos', '', 'First-Person Shooter,Action', 'Bethesda Softworks', 'https://store.steampowered.com/app/612880', 'images/default_game.png'),
(554, 'Wolfenstein®: The New Order', '', 'Action,First-Person Shooter', 'Bethesda Softworks', 'https://store.steampowered.com/app/201810', 'images/default_game.png'),
(555, 'Wolfenstein®: The Old Blood™', '', 'Action,First-Person Shooter', 'Bethesda Softworks', 'https://store.steampowered.com/app/350080', 'images/default_game.png'),
(556, 'Wolfenstein®: Youngblood', '', 'Action,First-Person Shooter', 'Bethesda Softworks', '', 'images/default_game.png'),
(557, 'Wolfenstein®: Youngblood', '', 'Action,First-Person Shooter', 'Bethesda Softworks', 'https://store.steampowered.com/app/1056960', 'images/default_game.png'),
(558, 'World of Tanks', '', 'Action,Free To Play,Massively ', 'Wargaming', '', 'images/default_game.png'),
(559, 'World of Tanks: Blitz', '', 'Action,Free To Play,Massively ', 'Wargaming Group Limited', 'https://store.steampowered.com/app/444200', 'images/default_game.png'),
(560, 'World of Warcraft Classic', '', 'Massively Multiplayer Online,R', 'Blizzard Entertainment', '', 'images/default_game.png'),
(561, 'World of Warcraft: Battle for ', '', 'Massively Multiplayer Online,R', 'Blizzard Entertainment', '', 'images/default_game.png'),
(562, 'World of Warships', '', 'Action,Free To Play,Massively ', 'Wargaming Group Limited', 'https://store.steampowered.com/app/552990', 'images/default_game.png'),
(563, 'World of Warships', '', 'Action,Free To Play,Massively ', 'Wargaming Group Limited', '', 'images/default_game.png'),
(564, 'World War 3', '', 'Action,First-Person Shooter,In', 'The Farm 51', 'https://store.steampowered.com/app/674020', 'images/default_game.png'),
(565, 'World War Z', '', 'Action,Massively Multiplayer O', 'Saber Interactive', '', 'images/default_game.png'),
(566, 'Worms W.M.D', '', 'Action,Casual,Family,Strategy', 'Team17 Digital Ltd', 'https://store.steampowered.com/app/327030', 'images/default_game.png'),
(567, 'Wreckfest', '', 'Action,Indie,Sports,Simulation', 'THQ Nordic', 'https://store.steampowered.com/app/228380', 'images/default_game.png'),
(568, 'WWE 2K19', '', 'Simulation,Sports', '2K', 'https://store.steampowered.com/app/817130', 'images/default_game.png'),
(569, 'WWE 2K20', '', 'Simulation,Sports', '2K', 'https://store.steampowered.com/app/1015500', 'images/default_game.png'),
(570, 'Wytchsun: Elleros Origins', '', 'Action,Adventure,Indie,Role Pl', 'Rampage Interactive', 'https://store.steampowered.com/app/1068530', 'images/default_game.png'),
(571, 'X4: Foundations', '', 'Action,Simulation', 'Egosoft', 'https://store.steampowered.com/app/392160', 'images/default_game.png'),
(572, 'XCOM® 2', '', 'Strategy', '2K Games', 'https://store.steampowered.com/app/268500', 'images/default_game.png'),
(573, 'XERA: Survival', '', 'Action,Adventure,Massively Mul', 'Spotted Kiwi Productions', 'https://store.steampowered.com/app/625340', 'images/default_game.png'),
(574, 'Yakuza 0', '', 'Action,Adventure,Role Playing', 'SEGA', 'https://store.steampowered.com/app/638970', 'images/default_game.png'),
(575, 'Yakuza Kiwami', '', 'Action,Adventure,Role Playing', 'SEGA', 'https://store.steampowered.com/app/834530', 'images/default_game.png'),
(576, 'Yoku\'s Island Express', '', 'Adventure,Family,Indie,Platfor', 'Team17 Digital Ltd', 'https://store.steampowered.com/app/334940', 'images/default_game.png'),
(577, 'Yooka-Laylee', '', 'Action,Adventure,Family,IndieP', 'Team17 Digital Ltd', 'https://store.steampowered.com/app/360830', 'images/default_game.png'),
(578, 'Yooka-Laylee and the Impossibl', '', 'Adventure,Family,Indie,Platfor', 'Team17 Digital', 'https://store.steampowered.com/app/846870', 'images/default_game.png'),
(579, 'Ys VIII: Lacrimosa of DANA', '', 'Action,Role Playing,Adventure', 'NIS America, Inc.', 'https://store.steampowered.com/app/579180', 'images/default_game.png'),
(580, 'Z1 Battle Royale', '', 'Action,Adventure,Free To Play,', 'Daybreak Game Company', 'https://store.steampowered.com/app/433850', 'images/default_game.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegoplataforma`
--

CREATE TABLE `juegoplataforma` (
  `id_juegoPlataforma` int(11) NOT NULL,
  `id_juego_juegoPlataforma` int(11) NOT NULL,
  `id_plataforma_juegoPlataforma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje`
--

CREATE TABLE `mensaje` (
  `id_mensaje` int(11) NOT NULL,
  `id_usuario_mensaje` int(11) NOT NULL,
  `id_usuario2_mensaje` int(11) NOT NULL,
  `texto` longtext NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mensaje`
--

INSERT INTO `mensaje` (`id_mensaje`, `id_usuario_mensaje`, `id_usuario2_mensaje`, `texto`, `fecha`) VALUES
(24, 18, 23, 'Buenos días', '2023-05-30'),
(25, 23, 18, 'Ey', '2023-05-30'),
(26, 18, 23, 'como estas', '2023-05-30'),
(27, 23, 18, 'Bien, y tú?', '2023-05-30'),
(32, 18, 23, 'hola', '2023-06-06'),
(33, 18, 23, 'test', '2023-06-06'),
(34, 18, 23, '123', '2023-06-06'),
(39, 18, 23, 'ey', '2023-06-07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plataforma`
--

CREATE TABLE `plataforma` (
  `id_plataforma` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombreUsuario` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `correo` varchar(120) NOT NULL,
  `rol` enum('usuario','administrador') DEFAULT NULL,
  `baneado` enum('SI','NO') NOT NULL DEFAULT 'NO',
  `descripcion` varchar(255) NOT NULL DEFAULT 'Nada que mostrar aquí...'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombreUsuario`, `password`, `correo`, `rol`, `baneado`, `descripcion`) VALUES
(18, 'samu3ak', '$2a$10$FQfN4C4Vg/eXxMRfXlnjwuxlx1HTu3uPE3Tp1hmiKeh5GHGLe/jMq', 'samuelbolivar2003@gmail.com', 'usuario', 'NO', 'Nada que mostrar aquí...'),
(19, 'admin', '$2a$10$Y/FsTwcM2wNGJV6qlBGOO.m4T0sWxkFeZcI21d6KUfrPTHvI0tiL.', 'admin@gmail.com', 'administrador', 'NO', 'Nada que mostrar aquí...'),
(23, 'samu3ak2', '$2a$10$sZHZSMn4ABFoakr3pciNP.nU0T0mYvgJp774fdudlVWcUDGMyePI6', 'samuelbolivar2004@gmail.com', 'usuario', 'NO', 'Nada que mostrar aquí...');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarioamigo`
--

CREATE TABLE `usuarioamigo` (
  `id_usuarioAmigo` int(11) NOT NULL,
  `id_usuario_usuarioAmigo` int(11) NOT NULL,
  `id_usuario2_usuarioAmigo` int(11) NOT NULL,
  `estado` enum('pendiente','amigo') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarioamigo`
--

INSERT INTO `usuarioamigo` (`id_usuarioAmigo`, `id_usuario_usuarioAmigo`, `id_usuario2_usuarioAmigo`, `estado`) VALUES
(12, 23, 18, 'amigo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariojuego`
--

CREATE TABLE `usuariojuego` (
  `id_usuarioJuego` int(11) NOT NULL,
  `id_usuario_usuarioJuego` int(11) NOT NULL,
  `id_juego_usuarioJuego` int(11) NOT NULL,
  `estado` enum('Pendiente','Jugando','Completado','Abandonado') DEFAULT NULL,
  `calificacion` int(10) DEFAULT NULL,
  `opinion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarioplataforma`
--

CREATE TABLE `usuarioplataforma` (
  `id_usuarioPlataforma` int(11) NOT NULL,
  `id_usuario_usuarioPlataforma` int(11) NOT NULL,
  `id_plataforma_usuarioPlataforma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id_generos`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `juego`
--
ALTER TABLE `juego`
  ADD PRIMARY KEY (`id_juego`);

--
-- Indices de la tabla `juegoplataforma`
--
ALTER TABLE `juegoplataforma`
  ADD PRIMARY KEY (`id_juegoPlataforma`),
  ADD KEY `id_juego_juegoPlataforma` (`id_juego_juegoPlataforma`),
  ADD KEY `id_plataforma_juegoPlataforma` (`id_plataforma_juegoPlataforma`);

--
-- Indices de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD PRIMARY KEY (`id_mensaje`),
  ADD KEY `id_usuario_mensaje` (`id_usuario_mensaje`),
  ADD KEY `id_usuario2_mensaje` (`id_usuario2_mensaje`);

--
-- Indices de la tabla `plataforma`
--
ALTER TABLE `plataforma`
  ADD PRIMARY KEY (`id_plataforma`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `usuarioamigo`
--
ALTER TABLE `usuarioamigo`
  ADD PRIMARY KEY (`id_usuarioAmigo`),
  ADD KEY `id_usuario_usuarioAmigo` (`id_usuario_usuarioAmigo`),
  ADD KEY `id_usuario2_usuarioAmigo` (`id_usuario2_usuarioAmigo`);

--
-- Indices de la tabla `usuariojuego`
--
ALTER TABLE `usuariojuego`
  ADD PRIMARY KEY (`id_usuarioJuego`),
  ADD KEY `id_usuario_perfilUsuarioJuego` (`id_usuario_usuarioJuego`),
  ADD KEY `id_juego_perfilUsuarioJuego` (`id_juego_usuarioJuego`);

--
-- Indices de la tabla `usuarioplataforma`
--
ALTER TABLE `usuarioplataforma`
  ADD PRIMARY KEY (`id_usuarioPlataforma`),
  ADD KEY `id_usuario_usuarioPlataforma` (`id_usuario_usuarioPlataforma`),
  ADD KEY `id_plataforma_usuarioPlataforma` (`id_plataforma_usuarioPlataforma`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id_generos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `juego`
--
ALTER TABLE `juego`
  MODIFY `id_juego` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=581;

--
-- AUTO_INCREMENT de la tabla `juegoplataforma`
--
ALTER TABLE `juegoplataforma`
  MODIFY `id_juegoPlataforma` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  MODIFY `id_mensaje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `plataforma`
--
ALTER TABLE `plataforma`
  MODIFY `id_plataforma` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `usuarioamigo`
--
ALTER TABLE `usuarioamigo`
  MODIFY `id_usuarioAmigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `usuariojuego`
--
ALTER TABLE `usuariojuego`
  MODIFY `id_usuarioJuego` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarioplataforma`
--
ALTER TABLE `usuarioplataforma`
  MODIFY `id_usuarioPlataforma` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `juegoplataforma`
--
ALTER TABLE `juegoplataforma`
  ADD CONSTRAINT `id_juego_juegoPlataforma` FOREIGN KEY (`id_juego_juegoPlataforma`) REFERENCES `juego` (`id_juego`),
  ADD CONSTRAINT `id_plataforma_juegoPlataforma` FOREIGN KEY (`id_plataforma_juegoPlataforma`) REFERENCES `plataforma` (`id_plataforma`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD CONSTRAINT `id_usuario2_mensaje` FOREIGN KEY (`id_usuario2_mensaje`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_usuario_mensaje` FOREIGN KEY (`id_usuario_mensaje`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarioamigo`
--
ALTER TABLE `usuarioamigo`
  ADD CONSTRAINT `id_usuario2_usuarioAmigo` FOREIGN KEY (`id_usuario2_usuarioAmigo`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_usuario_usuarioAmigo` FOREIGN KEY (`id_usuario_usuarioAmigo`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuariojuego`
--
ALTER TABLE `usuariojuego`
  ADD CONSTRAINT `id_juego_perfilUsuarioJuego` FOREIGN KEY (`id_juego_usuarioJuego`) REFERENCES `juego` (`id_juego`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_usuario_perfilUsuarioJuego` FOREIGN KEY (`id_usuario_usuarioJuego`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `usuarioplataforma`
--
ALTER TABLE `usuarioplataforma`
  ADD CONSTRAINT `id_plataforma_usuarioPlataforma` FOREIGN KEY (`id_plataforma_usuarioPlataforma`) REFERENCES `plataforma` (`id_plataforma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_usuario_usuarioPlataforma` FOREIGN KEY (`id_usuario_usuarioPlataforma`) REFERENCES `usuario` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
