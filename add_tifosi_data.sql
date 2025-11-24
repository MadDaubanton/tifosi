-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 24, 2025 at 01:28 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tifosi`
--

--
-- Dumping data for table `achete`
--

INSERT INTO `achete` (`id_client`, `id_focaccia`, `jour`) VALUES
(101, 1, '2025-11-20'),
(102, 1, '2025-11-20'),
(101, 2, '2025-11-22'),
(103, 2, '2025-11-24');

--
-- Dumping data for table `boisson`
--

INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `id_marque`) VALUES
(2, 'Coca-Cola Zero', 1),
(3, 'Coca-Cola Original', 1),
(4, 'Fanta citron', 1),
(5, 'Fanta orange', 1),
(6, 'Capri-sun', 1),
(7, 'Pepsi', 4),
(8, 'Pepsi Max Zéro', 4),
(9, 'Lipton zéro citron', 4),
(10, 'Lipton Peach', 4),
(11, 'Monster energy ultra gold', 3),
(12, 'Monster energy ultra blue', 3),
(13, 'Eau de source ', 2);

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id_client`, `nom_client`, `age`, `cp_client`) VALUES
(101, 'Martin', 35, 75008),
(102, 'Dubois', 22, 69006),
(103, 'Bernard', 48, 31000);

--
-- Dumping data for table `comprend`
--

INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES
(1, 1),
(2, 1),
(3, 1),
(8, 1),
(6, 2),
(1, 3),
(8, 3),
(6, 4),
(7, 4),
(1, 5),
(2, 5),
(3, 5),
(5, 5),
(6, 5),
(7, 5),
(4, 6),
(8, 6),
(1, 7),
(2, 7),
(3, 7),
(4, 7),
(5, 7),
(8, 7),
(8, 8),
(1, 9),
(2, 9),
(3, 9),
(4, 9),
(5, 9),
(6, 9),
(7, 9),
(8, 9),
(4, 10),
(5, 12),
(1, 13),
(8, 13),
(8, 14),
(4, 15),
(1, 16),
(2, 16),
(5, 16),
(6, 16),
(7, 16),
(8, 16),
(5, 17),
(1, 18),
(2, 18),
(3, 18),
(4, 18),
(5, 18),
(6, 18),
(7, 18),
(8, 18),
(6, 19),
(1, 20),
(2, 20),
(3, 20),
(4, 20),
(5, 20),
(6, 20),
(7, 20),
(8, 20),
(7, 21),
(8, 21),
(3, 22),
(1, 25),
(5, 25),
(6, 25),
(7, 25);

--
-- Dumping data for table `contient`
--

INSERT INTO `contient` (`id_menu`, `id_boisson`) VALUES
(501, 2),
(502, 2),
(502, 3),
(501, 4),
(502, 4),
(502, 5),
(503, 6),
(502, 7),
(501, 8),
(502, 8),
(502, 9),
(501, 10),
(502, 10),
(501, 11),
(502, 11),
(501, 12),
(502, 12),
(502, 13),
(503, 13);

--
-- Dumping data for table `focaccia`
--

INSERT INTO `focaccia` (`id_focaccia`, `nom_focaccia`, `prix_focaccia`) VALUES
(1, 'Mozaccia', 9.8),
(2, 'Gorgonzollaccia', 10.8),
(3, 'Raclaccia', 8.9),
(4, 'Emmentalaccia', 9.8),
(5, 'Tradizione', 8.9),
(6, 'Hawaienne', 11.2),
(7, 'Américaine', 10.8),
(8, 'Paysanne', 12.8);

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`id_ingredient`, `nom_ingredient`) VALUES
(1, 'Ail'),
(2, 'Ananas'),
(3, 'Artichaut'),
(4, 'Bacon'),
(5, 'Base Tomate'),
(6, 'Base crème'),
(7, 'Champignon'),
(8, 'Chevre'),
(9, 'Cresson'),
(10, 'Emmental'),
(11, 'Gorgonzola'),
(12, 'Jambon cuit'),
(13, 'Jambon fumé'),
(14, 'Oeuf'),
(15, 'Oignon'),
(16, 'Olive noire'),
(17, 'Olive verte'),
(18, 'Parmesan'),
(19, 'Piment'),
(20, 'Poivre'),
(21, 'Pomme de terre'),
(22, 'Raclette'),
(23, 'Salami'),
(24, 'Tomate cerise'),
(25, 'Mozzarella');

--
-- Dumping data for table `marque`
--

INSERT INTO `marque` (`id_marque`, `nom_marque`) VALUES
(1, 'Coca-Cola'),
(2, 'Cristaline'),
(3, 'Monster'),
(4, 'Pepsico');

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `nom_menu`, `prix_menu`, `id_focaccia`) VALUES
(501, 'Formule Express', 12.5, 1),
(502, 'Formule Deluxe', 15, 2),
(503, 'Menu Enfant', 9, 1);

--
-- Dumping data for table `paye`
--

INSERT INTO `paye` (`id_client`, `id_menu`, `jour`) VALUES
(101, 501, '2025-11-20'),
(103, 501, '2025-11-24'),
(102, 502, '2025-11-21'),
(103, 503, '2025-11-24');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
