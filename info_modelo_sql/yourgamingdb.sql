-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2023 at 01:26 PM
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
-- Table structure for table `juego`
--

CREATE TABLE `juego` (
  `id_juego` int(11) NOT NULL,
  `titulo` varchar(30) NOT NULL,
  `genero` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `id_usuario2_mensaje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `rol` enum('usuario','administrador') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombreUsuario`, `password`, `correo`, `rol`) VALUES
(18, 'samu3ak', '$2a$10$FQfN4C4Vg/eXxMRfXlnjwuxlx1HTu3uPE3Tp1hmiKeh5GHGLe/jMq', 'samuelbolivar2003@gmail.com', 'usuario'),
(19, 'admin', '$2a$10$Y/FsTwcM2wNGJV6qlBGOO.m4T0sWxkFeZcI21d6KUfrPTHvI0tiL.', 'admin@gmail.com', 'administrador'),
(22, 'paco', '$2a$10$Ubrq0A3L8bnldm9fRrnlhO3ESqjD22NaON3KCTb/4XeoUTOB9/w9.', 'paco@gmail.com', 'usuario');

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
-- AUTO_INCREMENT for table `juego`
--
ALTER TABLE `juego`
  MODIFY `id_juego` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `juegoplataforma`
--
ALTER TABLE `juegoplataforma`
  MODIFY `id_juegoPlataforma` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mensaje`
--
ALTER TABLE `mensaje`
  MODIFY `id_mensaje` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `usuarioamigo`
--
ALTER TABLE `usuarioamigo`
  MODIFY `id_usuarioAmigo` int(11) NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `id_usuario_mensaje` FOREIGN KEY (`id_usuario_mensaje`) REFERENCES `usuario` (`id_usuario`);

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
  ADD CONSTRAINT `id_usuario_usuarioAmigo` FOREIGN KEY (`id_usuario_usuarioAmigo`) REFERENCES `usuario` (`id_usuario`);

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
