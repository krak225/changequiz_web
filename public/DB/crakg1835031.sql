-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 30 août 2022 à 18:27
-- Version du serveur : 10.3.34-MariaDB-0+deb10u1
-- Version de PHP : 7.3.31-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `crakg1835031`
--

-- --------------------------------------------------------

--
-- Structure de la table `abonnement`
--

CREATE TABLE `abonnement` (
  `abonnement_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type_jeu` varchar(50) DEFAULT NULL,
  `abonnement_date` datetime DEFAULT NULL,
  `abonnement_statut` enum('EN COURS','EXPIRE') DEFAULT 'EN COURS'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `abonnement`
--

INSERT INTO `abonnement` (`abonnement_id`, `user_id`, `type_jeu`, `abonnement_date`, `abonnement_statut`) VALUES
(1, 13, 'DUEL', '2019-11-25 18:00:00', 'EN COURS'),
(2, 5, 'DUEL', '2019-11-25 18:07:36', 'EN COURS'),
(3, 6, 'DUEL', '2019-11-25 18:43:37', 'EN COURS'),
(7, 5, 'CHAP', '2019-11-26 11:46:08', 'EN COURS'),
(5, 5, 'DUEL', '2019-11-26 09:23:06', 'EN COURS'),
(6, 6, 'DUEL', '2019-11-26 11:23:18', 'EN COURS'),
(8, 6, 'CHAP', '2019-11-26 11:52:45', 'EN COURS'),
(9, 14, 'CHAP', '2019-11-26 16:56:42', 'EN COURS'),
(10, 2, 'CHAP', '2019-11-26 18:09:30', 'EN COURS'),
(11, 5, 'DUEL', '2021-09-01 15:49:38', 'EN COURS'),
(12, 5, 'QUIZ', '2021-09-01 16:59:47', 'EN COURS'),
(13, 5, 'DUEL', '2022-03-05 01:44:11', 'EN COURS'),
(14, 15, 'QUIZ', '2022-03-05 02:31:36', 'EN COURS'),
(15, 15, 'QUIZ', '2022-03-05 02:50:59', 'EN COURS'),
(16, 6, 'QUIZ', '2022-03-09 11:06:46', 'EN COURS'),
(17, 6, 'QUIZ', '2022-03-09 11:08:19', 'EN COURS'),
(18, 6, 'QUIZ', '2022-03-09 11:08:20', 'EN COURS'),
(19, 6, 'QUIZ', '2022-03-09 11:08:20', 'EN COURS'),
(20, 6, 'QUIZ', '2022-03-09 11:09:30', 'EN COURS'),
(21, 5, 'QUIZ', '2022-03-10 00:30:24', 'EN COURS'),
(22, 5, 'QUIZ', '2022-03-17 23:58:38', 'EN COURS'),
(23, 5, 'QUIZ', '2022-03-17 23:58:50', 'EN COURS'),
(24, 5, 'QUIZ', '2022-03-18 00:01:41', 'EN COURS'),
(25, 16, 'QUIZ', '2022-03-23 09:17:53', 'EN COURS'),
(26, 16, 'QUIZ', '2022-03-23 09:18:01', 'EN COURS'),
(27, 6, 'QUIZ', '2022-03-26 13:35:31', 'EN COURS'),
(28, 6, 'QUIZ', '2022-03-26 13:36:13', 'EN COURS'),
(29, 6, 'QUIZ', '2022-03-26 13:37:34', 'EN COURS'),
(30, 6, 'QUIZ', '2022-04-02 19:53:36', 'EN COURS'),
(31, 15, 'QUIZ', '2022-04-02 21:38:57', 'EN COURS'),
(32, 15, 'QUIZ', '2022-04-02 21:39:20', 'EN COURS'),
(33, 6, 'QUIZ', '2022-04-02 22:03:35', 'EN COURS'),
(34, 6, 'QUIZ', '2022-04-02 22:05:13', 'EN COURS'),
(35, 6, 'QUIZ', '2022-04-02 22:05:31', 'EN COURS'),
(36, 15, 'QUIZ', '2022-04-02 22:09:07', 'EN COURS'),
(37, 15, 'QUIZ', '2022-04-02 22:21:29', 'EN COURS'),
(38, 15, 'QUIZ', '2022-04-02 22:21:53', 'EN COURS'),
(39, 6, 'QUIZ', '2022-04-02 22:22:03', 'EN COURS'),
(40, 6, 'QUIZ', '2022-04-02 22:38:35', 'EN COURS'),
(41, 6, 'QUIZ', '2022-04-02 22:39:13', 'EN COURS'),
(42, 6, 'QUIZ', '2022-04-02 22:46:43', 'EN COURS'),
(43, 15, 'QUIZ', '2022-04-03 14:08:10', 'EN COURS'),
(44, 6, 'QUIZ', '2022-04-03 14:27:14', 'EN COURS'),
(45, 6, 'QUIZ', '2022-04-03 14:30:30', 'EN COURS'),
(46, 6, 'QUIZ', '2022-04-03 14:32:51', 'EN COURS'),
(47, 5, 'QUIZ', '2022-04-14 06:30:20', 'EN COURS'),
(48, 5, 'QUIZ', '2022-04-14 06:36:00', 'EN COURS'),
(49, 5, 'QUIZ', '2022-04-21 08:07:09', 'EN COURS'),
(50, 5, 'QUIZ', '2022-04-21 08:08:47', 'EN COURS'),
(51, 15, 'QUIZ', '2022-04-22 12:03:44', 'EN COURS'),
(52, 15, 'QUIZ', '2022-04-22 12:10:44', 'EN COURS'),
(53, 15, 'QUIZ', '2022-04-22 12:11:04', 'EN COURS'),
(54, 5, 'QUIZ', '2022-05-21 21:17:38', 'EN COURS'),
(55, 5, 'QUIZ', '2022-05-21 21:24:17', 'EN COURS'),
(56, 5, 'QUIZ', '2022-05-22 15:39:24', 'EN COURS'),
(57, 5, 'QUIZ', '2022-05-22 16:40:45', 'EN COURS'),
(58, 16, 'QUIZ', '2022-05-22 17:05:22', 'EN COURS'),
(59, 16, 'QUIZ', '2022-05-22 18:10:31', 'EN COURS'),
(60, 5, 'QUIZ', '2022-05-22 18:18:00', 'EN COURS'),
(61, 16, 'QUIZ', '2022-05-22 18:52:42', 'EN COURS'),
(62, 15, 'QUIZ', '2022-06-03 12:52:54', 'EN COURS'),
(63, 5, 'QUIZ', '2022-06-03 23:12:14', 'EN COURS'),
(64, 15, 'QUIZ', '2022-06-04 02:11:52', 'EN COURS'),
(65, 15, 'QUIZ', '2022-06-04 02:12:20', 'EN COURS'),
(66, 15, 'QUIZ', '2022-06-04 02:12:31', 'EN COURS'),
(67, 15, 'QUIZ', '2022-06-04 02:12:44', 'EN COURS'),
(68, 15, 'QUIZ', '2022-06-04 02:21:20', 'EN COURS'),
(69, 15, 'QUIZ', '2022-06-04 02:28:25', 'EN COURS'),
(70, 15, 'QUIZ', '2022-06-04 02:31:36', 'EN COURS'),
(71, 15, 'QUIZ', '2022-06-04 02:33:14', 'EN COURS'),
(72, 15, 'QUIZ', '2022-06-04 02:35:52', 'EN COURS'),
(73, 15, 'QUIZ', '2022-06-04 02:44:12', 'EN COURS'),
(74, 15, 'QUIZ', '2022-06-04 02:48:58', 'EN COURS'),
(75, 15, 'QUIZ', '2022-06-04 03:03:58', 'EN COURS'),
(76, 15, 'QUIZ', '2022-06-04 03:08:24', 'EN COURS'),
(77, 15, 'QUIZ', '2022-06-04 03:09:30', 'EN COURS'),
(78, 13, 'QUIZ', '2022-06-04 03:13:27', 'EN COURS'),
(79, 16, 'QUIZ', '2022-06-06 10:33:12', 'EN COURS'),
(80, 5, 'QUIZ', '2022-06-06 22:34:54', 'EN COURS'),
(81, 16, 'QUIZ', '2022-06-06 23:31:15', 'EN COURS'),
(82, 16, 'QUIZ', '2022-06-08 22:43:40', 'EN COURS'),
(83, 16, 'QUIZ', '2022-06-11 00:49:39', 'EN COURS'),
(84, 16, 'QUIZ', '2022-06-12 17:59:56', 'EN COURS'),
(85, 16, 'QUIZ', '2022-06-14 00:21:26', 'EN COURS'),
(86, 5, 'QUIZ', '2022-06-14 00:24:48', 'EN COURS'),
(87, 5, 'QUIZ', '2022-06-15 00:45:51', 'EN COURS'),
(88, 16, 'QUIZ', '2022-06-15 00:52:45', 'EN COURS'),
(89, 16, 'QUIZ', '2022-06-15 00:56:05', 'EN COURS'),
(90, 6, 'QUIZ', '2022-06-19 14:50:27', 'EN COURS'),
(91, 6, 'QUIZ', '2022-06-19 14:57:11', 'EN COURS'),
(92, 6, 'QUIZ', '2022-06-19 15:04:43', 'EN COURS'),
(93, 16, 'QUIZ', '2022-06-19 15:10:53', 'EN COURS'),
(94, 16, 'QUIZ', '2022-07-07 09:27:25', 'EN COURS'),
(95, 16, 'QUIZ', '2022-07-13 21:25:45', 'EN COURS'),
(96, 16, 'QUIZ', '2022-07-13 21:30:39', 'EN COURS'),
(97, 16, 'QUIZ', '2022-07-13 21:34:29', 'EN COURS'),
(98, 16, 'QUIZ', '2022-07-13 21:36:27', 'EN COURS'),
(99, 20, 'QUIZ', '2022-07-13 21:52:14', 'EN COURS'),
(100, 20, 'QUIZ', '2022-07-14 20:04:12', 'EN COURS'),
(101, 20, 'QUIZ', '2022-07-14 20:09:10', 'EN COURS'),
(102, 16, 'QUIZ', '2022-07-14 22:32:18', 'EN COURS'),
(103, 16, 'QUIZ', '2022-07-18 19:51:11', 'EN COURS'),
(104, 16, 'QUIZ', '2022-07-18 22:12:21', 'EN COURS'),
(105, 5, 'QUIZ', '2022-07-18 22:50:38', 'EN COURS'),
(106, 5, 'QUIZ', '2022-07-18 22:55:18', 'EN COURS'),
(107, 5, 'QUIZ', '2022-07-21 17:12:45', 'EN COURS'),
(108, 16, 'DUEL', '2022-07-23 06:09:29', 'EN COURS'),
(109, 16, 'QUIZ', '2022-08-04 01:23:54', 'EN COURS'),
(110, 5, 'QUIZ', '2022-08-04 01:24:59', 'EN COURS'),
(111, 16, 'QUIZ', '2022-08-04 01:29:17', 'EN COURS'),
(112, 16, 'QUIZ', '2022-08-11 19:29:36', 'EN COURS'),
(113, 16, 'QUIZ', '2022-08-11 20:17:46', 'EN COURS'),
(114, 5, 'QUIZ', '2022-08-12 22:54:13', 'EN COURS'),
(115, 5, 'QUIZ', '2022-08-12 22:57:33', 'EN COURS'),
(116, 5, 'QUIZ', '2022-08-12 23:17:29', 'EN COURS'),
(117, 5, 'QUIZ', '2022-08-12 23:18:13', 'EN COURS'),
(118, 5, 'QUIZ', '2022-08-12 23:19:02', 'EN COURS'),
(119, 5, 'QUIZ', '2022-08-13 20:06:52', 'EN COURS'),
(120, 16, 'QUIZ', '2022-08-13 20:07:32', 'EN COURS'),
(121, 5, 'QUIZ', '2022-08-13 20:09:14', 'EN COURS'),
(122, 5, 'QUIZ', '2022-08-13 20:10:38', 'EN COURS'),
(123, 5, 'QUIZ', '2022-08-13 20:11:15', 'EN COURS'),
(124, 16, 'QUIZ', '2022-08-13 20:11:24', 'EN COURS'),
(125, 16, 'QUIZ', '2022-08-13 20:17:56', 'EN COURS'),
(126, 5, 'QUIZ', '2022-08-15 00:03:32', 'EN COURS'),
(127, 5, 'QUIZ', '2022-08-25 08:41:06', 'EN COURS'),
(128, 5, 'QUIZ', '2022-08-29 13:52:09', 'EN COURS'),
(129, 5, 'DUEL', '2022-08-30 15:41:23', 'EN COURS'),
(130, 5, 'QUIZ', '2022-08-30 15:48:14', 'EN COURS'),
(131, 5, 'QUIZ', '2022-08-30 15:50:18', 'EN COURS');

-- --------------------------------------------------------

--
-- Structure de la table `abonnement_chap`
--

CREATE TABLE `abonnement_chap` (
  `abonnement_chap_id` int(11) NOT NULL,
  `chap_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type_jeu` varchar(50) DEFAULT NULL,
  `abonnement_chap_date` datetime DEFAULT NULL,
  `abonnement_chap_statut` enum('EN COURS','EXPIRE') DEFAULT 'EN COURS'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `avatar`
--

CREATE TABLE `avatar` (
  `id` int(11) NOT NULL,
  `photo` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cagnotte`
--

CREATE TABLE `cagnotte` (
  `cagnotte_id` int(11) NOT NULL,
  `cagnotte_montant` int(11) DEFAULT NULL,
  `cagnotte_date` date DEFAULT NULL,
  `cagnotte_date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `cagnotte`
--

INSERT INTO `cagnotte` (`cagnotte_id`, `cagnotte_montant`, `cagnotte_date`, `cagnotte_date_creation`) VALUES
(1, 500, '2022-01-17', '2022-01-17 17:35:52'),
(2, 7000, '2022-01-17', '2022-01-17 17:35:56'),
(3, 200, '2022-01-17', '2022-01-17 17:36:00'),
(4, 1000, '2022-01-17', '2022-01-17 17:36:02');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `categorie_id` int(11) NOT NULL,
  `categorie_libelle` varchar(100) DEFAULT NULL,
  `categorie_description` varchar(100) DEFAULT NULL,
  `categorie_date_creation` datetime NOT NULL,
  `categorie_statut` enum('BROUILLON','VALIDE') DEFAULT 'VALIDE'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`categorie_id`, `categorie_libelle`, `categorie_description`, `categorie_date_creation`, `categorie_statut`) VALUES
(5, 'SPORT ', 'Un facteur de rassemblement ', '0000-00-00 00:00:00', 'VALIDE'),
(7, 'CULTURE GENERALE ', 'La diversitÃ© au service d\'une unitÃ© ', '0000-00-00 00:00:00', 'VALIDE'),
(8, 'MATHEMATIQUES ', 'Les chiffres pour un dÃ©veloppement durable ', '0000-00-00 00:00:00', 'VALIDE');

-- --------------------------------------------------------

--
-- Structure de la table `chap`
--

CREATE TABLE `chap` (
  `chap_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `chap_participants` int(11) DEFAULT NULL,
  `chap_vainqueur_id` int(11) DEFAULT NULL,
  `chap_etape` int(11) DEFAULT NULL,
  `chap_date_debut` datetime DEFAULT NULL,
  `chap_date_creation` datetime DEFAULT NULL,
  `readystate` enum('READY','NOT READY') NOT NULL DEFAULT 'NOT READY',
  `chap_statut` enum('BROUILLON','VALIDE','EN COURS','TERMINE') DEFAULT 'VALIDE'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `chap`
--

INSERT INTO `chap` (`chap_id`, `user_id`, `chap_participants`, `chap_vainqueur_id`, `chap_etape`, `chap_date_debut`, `chap_date_creation`, `readystate`, `chap_statut`) VALUES
(5, 1, 3, NULL, 1, NULL, '2019-11-26 19:59:39', 'NOT READY', 'EN COURS');

-- --------------------------------------------------------

--
-- Structure de la table `chap_question`
--

CREATE TABLE `chap_question` (
  `chap_id` int(11) DEFAULT 1,
  `question_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `repondeur_id` int(11) DEFAULT NULL,
  `reponse` varchar(2) DEFAULT NULL,
  `observation` varchar(50) DEFAULT NULL,
  `statut` enum('UTILISE','DISPONIBLE') DEFAULT 'DISPONIBLE'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `chap_question`
--

INSERT INTO `chap_question` (`chap_id`, `question_id`, `user_id`, `repondeur_id`, `reponse`, `observation`, `statut`) VALUES
(1, 13, 5, NULL, NULL, NULL, 'DISPONIBLE'),
(1, 28, 5, NULL, NULL, NULL, 'DISPONIBLE'),
(1, 39, 5, NULL, NULL, NULL, 'DISPONIBLE'),
(1, 30, 5, NULL, NULL, NULL, 'DISPONIBLE'),
(1, 31, 5, NULL, NULL, NULL, 'DISPONIBLE'),
(1, 1, 6, NULL, NULL, NULL, 'DISPONIBLE'),
(1, 2, 6, NULL, NULL, NULL, 'DISPONIBLE'),
(1, 5, 6, NULL, NULL, NULL, 'DISPONIBLE'),
(1, 7, 6, NULL, NULL, NULL, 'DISPONIBLE'),
(1, 19, 6, NULL, NULL, NULL, 'DISPONIBLE'),
(1, 25, 6, NULL, NULL, NULL, 'DISPONIBLE'),
(1, 27, 6, NULL, NULL, NULL, 'DISPONIBLE'),
(2, 1, 6, NULL, NULL, NULL, 'DISPONIBLE'),
(2, 2, 6, NULL, NULL, NULL, 'DISPONIBLE'),
(2, 5, 6, NULL, NULL, NULL, 'DISPONIBLE'),
(2, 7, 6, NULL, NULL, NULL, 'DISPONIBLE'),
(2, 19, 6, NULL, NULL, NULL, 'DISPONIBLE'),
(2, 25, 6, NULL, NULL, NULL, 'DISPONIBLE'),
(2, 27, 6, NULL, NULL, NULL, 'DISPONIBLE'),
(2, 33, 2, NULL, NULL, NULL, 'DISPONIBLE'),
(2, 34, 2, NULL, NULL, NULL, 'DISPONIBLE'),
(2, 35, 2, NULL, NULL, NULL, 'DISPONIBLE'),
(2, 36, 2, NULL, NULL, NULL, 'DISPONIBLE'),
(2, 37, 2, NULL, NULL, NULL, 'DISPONIBLE'),
(3, 1, 6, NULL, NULL, NULL, 'DISPONIBLE'),
(3, 2, 6, NULL, NULL, NULL, 'DISPONIBLE'),
(3, 5, 6, NULL, NULL, NULL, 'DISPONIBLE'),
(3, 7, 6, NULL, NULL, NULL, 'DISPONIBLE'),
(3, 19, 6, NULL, NULL, NULL, 'DISPONIBLE'),
(3, 25, 6, NULL, NULL, NULL, 'DISPONIBLE'),
(3, 27, 6, NULL, NULL, NULL, 'DISPONIBLE'),
(3, 33, 2, NULL, NULL, NULL, 'DISPONIBLE'),
(3, 34, 2, NULL, NULL, NULL, 'DISPONIBLE'),
(3, 35, 2, NULL, NULL, NULL, 'DISPONIBLE'),
(3, 36, 2, NULL, NULL, NULL, 'DISPONIBLE'),
(3, 37, 2, NULL, NULL, NULL, 'DISPONIBLE'),
(4, 1, 6, NULL, NULL, NULL, 'DISPONIBLE'),
(4, 2, 6, 6, NULL, NULL, 'UTILISE'),
(4, 5, 6, 6, 'A', 'bad', 'UTILISE'),
(4, 7, 6, 6, 'C', 'bad', 'UTILISE'),
(4, 19, 6, 6, 'C', 'bad', 'UTILISE'),
(4, 25, 6, NULL, NULL, NULL, 'DISPONIBLE'),
(4, 27, 6, NULL, NULL, NULL, 'DISPONIBLE'),
(4, 33, 2, NULL, NULL, NULL, 'DISPONIBLE'),
(4, 34, 2, NULL, NULL, NULL, 'DISPONIBLE'),
(4, 35, 2, NULL, NULL, NULL, 'DISPONIBLE'),
(4, 36, 2, 6, 'C', 'bad', 'UTILISE'),
(4, 37, 2, NULL, NULL, NULL, 'DISPONIBLE'),
(5, 1, 6, NULL, NULL, NULL, 'DISPONIBLE'),
(5, 2, 6, NULL, NULL, NULL, 'DISPONIBLE'),
(5, 5, 6, NULL, NULL, NULL, 'DISPONIBLE'),
(5, 7, 6, NULL, NULL, NULL, 'DISPONIBLE'),
(5, 19, 6, NULL, NULL, NULL, 'DISPONIBLE'),
(5, 25, 6, NULL, NULL, NULL, 'DISPONIBLE'),
(5, 13, 5, NULL, NULL, NULL, 'DISPONIBLE'),
(5, 28, 5, NULL, NULL, NULL, 'DISPONIBLE'),
(5, 39, 5, NULL, NULL, NULL, 'DISPONIBLE'),
(5, 30, 5, NULL, NULL, NULL, 'DISPONIBLE'),
(5, 31, 5, NULL, NULL, NULL, 'DISPONIBLE'),
(5, 33, 2, NULL, NULL, NULL, 'DISPONIBLE'),
(5, 34, 2, NULL, NULL, NULL, 'DISPONIBLE'),
(5, 35, 2, NULL, NULL, NULL, 'DISPONIBLE'),
(5, 36, 2, NULL, NULL, NULL, 'DISPONIBLE'),
(5, 37, 2, NULL, NULL, NULL, 'DISPONIBLE');

-- --------------------------------------------------------

--
-- Structure de la table `chap_score`
--

CREATE TABLE `chap_score` (
  `chap_id` int(11) DEFAULT NULL,
  `chap_etape` int(11) DEFAULT 1,
  `cpt_question` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT 0,
  `statut` enum('BROUILLON','TERMINE','ELIMINE','RETENU') DEFAULT 'BROUILLON'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `chap_score`
--

INSERT INTO `chap_score` (`chap_id`, `chap_etape`, `cpt_question`, `user_id`, `score`, `statut`) VALUES
(1, 1, 0, 5, 0, 'BROUILLON'),
(1, 1, 0, 6, 0, 'BROUILLON'),
(2, 1, 0, 6, 0, 'BROUILLON'),
(2, 1, 0, 2, 0, 'BROUILLON'),
(3, 1, 0, 6, 0, 'BROUILLON'),
(3, 1, 0, 2, 0, 'BROUILLON'),
(4, 1, 5, 6, 0, 'BROUILLON'),
(4, 1, 0, 2, 0, 'BROUILLON'),
(5, 1, 0, 6, 0, 'BROUILLON'),
(5, 1, 0, 5, 0, 'BROUILLON'),
(5, 1, 0, 2, 0, 'BROUILLON');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `commande_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `commande_numero` varchar(255) NOT NULL DEFAULT '0',
  `commande_montant_total` bigint(20) DEFAULT NULL,
  `commande_nombre_article` int(11) DEFAULT NULL,
  `commande_date_creation` datetime DEFAULT NULL,
  `commande_statut` enum('BROUILLON','VALIDE') DEFAULT 'BROUILLON',
  `commande_statut_paiement` enum('PAYE','IMPAYE') DEFAULT 'IMPAYE'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`commande_id`, `user_id`, `commande_numero`, `commande_montant_total`, `commande_nombre_article`, `commande_date_creation`, `commande_statut`, `commande_statut_paiement`) VALUES
(19, 3, '92056280-8bf6-47b1-9f74-b630338a309c', 8000, NULL, '2022-08-01 07:17:15', 'BROUILLON', 'PAYE'),
(20, 3, '1f1933d8-778a-4c74-b795-07e6add7d089', 12500, 4, '2022-08-01 07:32:35', 'BROUILLON', 'PAYE'),
(21, 4, '1c879084-d9bb-418b-b19d-6702975eff73', 5500, 2, '2022-08-01 11:06:42', 'BROUILLON', 'PAYE'),
(22, 5, '14ee83a2-d77b-4df2-ba14-16566d7efd05', 3000, 1, '2022-08-01 11:13:06', 'BROUILLON', 'PAYE'),
(23, 4, 'e2b9d877-35c2-4c06-b51e-cdc3e6f62ba7', 5500, 2, '2022-08-01 11:17:39', 'BROUILLON', 'PAYE'),
(24, 5, 'f64e65ce-d43f-4e41-8921-831baedc43f6', 3000, 1, '2022-08-01 12:05:19', 'BROUILLON', 'PAYE'),
(25, 1, 'c060313a-c6df-49b3-bc1f-88551b1d10d1', 12500, 4, '2022-08-01 12:20:18', 'BROUILLON', 'PAYE'),
(26, 6, '4581c3da-52f2-458b-87fd-f55e16e196cb', 7000, 2, '2022-08-01 14:15:40', 'BROUILLON', 'IMPAYE'),
(27, 1, '9351b598-302f-447a-a661-18152b401433', 7000, 2, '2022-08-03 08:38:47', 'BROUILLON', 'IMPAYE'),
(28, 7, '7cc0f9fe-589c-49ed-b7b8-98277fae8503', 2000, 1, '2022-08-03 08:55:33', 'BROUILLON', 'IMPAYE');

-- --------------------------------------------------------

--
-- Structure de la table `concours`
--

CREATE TABLE `concours` (
  `concours_id` int(11) NOT NULL,
  `concours_libelle` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `concours`
--

INSERT INTO `concours` (`concours_id`, `concours_libelle`) VALUES
(1, 'INHP'),
(2, 'INFS'),
(3, 'INFAS'),
(4, 'CAFOP'),
(5, 'POLICE'),
(6, 'GENDARMERIE');

-- --------------------------------------------------------

--
-- Structure de la table `conversion`
--

CREATE TABLE `conversion` (
  `conversion_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `conversion_point` int(11) DEFAULT NULL,
  `conversion_taux` double DEFAULT NULL,
  `total_points_duel` int(11) DEFAULT NULL,
  `conversion_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `defi`
--

CREATE TABLE `defi` (
  `defi_id` int(11) NOT NULL,
  `defi_montant` int(11) NOT NULL,
  `defi_date` date NOT NULL,
  `defi_date_creation` datetime NOT NULL,
  `defi_statut` enum('BROUILLON','EN COURS','VALIDE','CLOTURE') DEFAULT 'VALIDE'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `defi`
--

INSERT INTO `defi` (`defi_id`, `defi_montant`, `defi_date`, `defi_date_creation`, `defi_statut`) VALUES
(1, 5000, '2022-03-17', '2022-03-18 00:57:38', 'VALIDE'),
(2, 7000, '2022-03-18', '2022-03-18 01:00:29', 'VALIDE'),
(3, 10, '2022-03-23', '2022-03-23 10:10:21', 'VALIDE'),
(4, 10, '2022-03-26', '2022-03-26 14:37:12', 'VALIDE'),
(5, 5000, '2022-04-02', '2022-04-03 00:05:00', 'VALIDE'),
(6, 3000, '2022-04-02', '2022-04-03 00:05:12', 'VALIDE'),
(7, 7000, '2022-04-02', '2022-04-03 00:05:25', 'VALIDE'),
(8, 7000, '2022-04-02', '2022-04-03 00:07:53', 'VALIDE'),
(9, 3000, '2022-04-03', '2022-04-03 16:27:36', 'CLOTURE'),
(10, 3000, '2022-04-03', '2022-04-03 16:27:39', 'VALIDE'),
(11, 7000, '2022-04-03', '2022-04-03 16:27:41', 'VALIDE'),
(12, 3000, '2022-04-03', '2022-04-03 16:27:47', 'VALIDE'),
(13, 5000, '2022-04-03', '2022-04-03 16:27:51', 'VALIDE'),
(14, 5000, '2022-04-03', '2022-04-03 16:27:53', 'VALIDE'),
(15, 5000, '2022-04-03', '2022-04-03 16:27:55', 'VALIDE'),
(16, 2000, '2022-04-14', '2022-04-14 08:35:15', 'VALIDE'),
(17, 3000, '2022-04-14', '2022-04-14 08:35:22', 'VALIDE'),
(18, 3000, '2022-04-14', '2022-04-14 08:35:30', 'VALIDE'),
(19, 5000, '2022-04-14', '2022-04-14 08:35:39', 'VALIDE'),
(20, 5000, '2022-04-14', '2022-04-14 08:35:45', 'VALIDE'),
(21, 10000, '2022-04-21', '2022-04-21 10:07:47', 'VALIDE'),
(22, 5000, '2022-04-21', '2022-04-21 10:08:12', 'VALIDE'),
(23, 5000, '2022-04-21', '2022-04-21 10:08:22', 'VALIDE'),
(24, 3000, '2022-04-21', '2022-04-21 10:08:28', 'VALIDE'),
(25, 5000, '2022-04-22', '2022-04-22 14:07:41', 'VALIDE'),
(26, 5000, '2022-04-22', '2022-04-22 14:07:45', 'VALIDE'),
(27, 10000, '2022-04-22', '2022-04-22 14:07:47', 'VALIDE'),
(28, 10000, '2022-04-22', '2022-04-22 14:07:50', 'VALIDE'),
(29, 15000, '2022-04-22', '2022-04-22 14:08:19', 'VALIDE'),
(30, 15000, '2022-04-22', '2022-04-22 14:08:21', 'VALIDE'),
(31, 20000, '2022-04-22', '2022-04-22 14:08:24', 'VALIDE'),
(32, 20000, '2022-04-22', '2022-04-22 14:08:26', 'VALIDE'),
(33, 3000, '2022-04-22', '2022-04-22 14:08:35', 'VALIDE'),
(34, 3000, '2022-04-22', '2022-04-22 14:08:37', 'VALIDE'),
(35, 2000, '2022-04-22', '2022-04-22 14:08:40', 'VALIDE'),
(36, 2000, '2022-04-22', '2022-04-22 14:08:43', 'VALIDE'),
(37, 10000, '2022-05-21', '2022-05-21 23:13:04', 'VALIDE'),
(38, 12000, '2022-05-22', '2022-05-22 15:54:30', 'VALIDE'),
(39, 3000, '2022-05-22', '2022-05-22 17:39:11', 'CLOTURE'),
(40, 5000, '2022-05-22', '2022-05-22 18:42:50', 'CLOTURE'),
(41, 10000, '2022-06-04', '2022-06-04 04:07:21', 'VALIDE'),
(42, 5000, '2022-06-04', '2022-06-04 04:07:24', 'VALIDE'),
(43, 5000, '2022-06-04', '2022-06-04 04:07:27', 'VALIDE'),
(44, 3000, '2022-06-04', '2022-06-04 04:07:29', 'VALIDE'),
(45, 3000, '2022-06-04', '2022-06-04 04:07:32', 'CLOTURE'),
(46, 3000, '2022-06-04', '2022-06-04 04:07:36', 'CLOTURE'),
(47, 3000, '2022-06-06', '2022-06-06 12:28:19', 'CLOTURE'),
(48, 5000, '2022-06-06', '2022-06-06 12:28:49', 'VALIDE'),
(49, 4000, '2022-06-06', '2022-06-06 12:28:59', 'CLOTURE'),
(50, 5000, '2022-06-08', '2022-06-09 00:42:44', 'VALIDE'),
(51, 5000, '2022-06-11', '2022-06-11 02:49:32', 'VALIDE'),
(52, 5000, '2022-06-12', '2022-06-12 18:30:47', 'CLOTURE'),
(53, 10000, '2022-06-12', '2022-06-12 20:03:09', 'VALIDE'),
(54, 7000, '2022-06-12', '2022-06-12 20:03:36', 'VALIDE'),
(55, 7000, '2022-06-14', '2022-06-14 02:21:09', 'VALIDE'),
(56, 8000, '2022-06-15', '2022-06-15 02:29:25', 'CLOTURE'),
(57, 10000, '2022-06-15', '2022-06-15 02:29:41', 'VALIDE'),
(58, 5000, '2022-06-15', '2022-06-15 02:45:14', 'CLOTURE'),
(59, 10000, '2022-06-15', '2022-06-16 01:03:12', 'VALIDE'),
(60, 5000, '2022-06-15', '2022-06-16 01:03:39', 'VALIDE'),
(61, 7000, '2022-06-19', '2022-06-19 16:53:04', 'VALIDE'),
(62, 7000, '2022-07-07', '2022-07-07 11:27:17', 'CLOTURE'),
(63, 10, '2022-07-07', '2022-07-07 11:41:17', 'VALIDE'),
(64, 10000, '2022-07-13', '2022-07-13 23:27:37', 'VALIDE'),
(65, 8000, '2022-07-13', '2022-07-13 23:27:48', 'CLOTURE'),
(66, 12000, '2022-07-14', '2022-07-14 22:08:37', 'VALIDE'),
(67, 20000, '2022-07-14', '2022-07-14 22:08:47', 'VALIDE'),
(68, 9000, '2022-07-14', '2022-07-14 22:09:00', 'VALIDE'),
(69, 10000, '2022-07-18', '2022-07-18 21:49:26', 'VALIDE'),
(70, 15000, '2022-07-18', '2022-07-18 21:49:35', 'VALIDE'),
(71, 5000, '2022-07-18', '2022-07-18 21:49:41', 'CLOTURE'),
(72, 50000, '2022-07-18', '2022-07-18 21:49:58', 'VALIDE'),
(73, 25000, '2022-07-18', '2022-07-18 21:50:20', 'VALIDE'),
(74, 5000, '2022-07-21', '2022-07-21 19:12:00', 'CLOTURE'),
(75, 15000, '2022-07-23', '2022-07-23 08:40:05', 'VALIDE'),
(76, 15000, '2022-08-04', '2022-08-04 03:23:47', 'CLOTURE'),
(77, 9000, '2022-08-11', '2022-08-11 19:29:16', 'VALIDE'),
(78, 30000, '2022-08-11', '2022-08-11 20:17:34', 'VALIDE'),
(79, 3000, '2022-08-12', '2022-08-13 00:58:38', 'CLOTURE'),
(80, 10000, '2022-08-12', '2022-08-13 00:58:49', 'VALIDE'),
(81, 2000, '2022-08-12', '2022-08-13 00:59:26', 'VALIDE'),
(82, 3000, '2022-08-12', '2022-08-13 00:59:34', 'VALIDE'),
(83, 2000, '2022-08-12', '2022-08-13 00:59:45', 'VALIDE'),
(84, 4000, '2022-08-12', '2022-08-13 01:00:02', 'VALIDE'),
(85, 5000, '2022-08-13', '2022-08-13 20:05:55', 'VALIDE'),
(86, 5000, '2022-08-13', '2022-08-13 20:06:06', 'VALIDE'),
(87, 5000, '2022-08-13', '2022-08-13 20:06:29', 'VALIDE'),
(88, 10000, '2022-08-13', '2022-08-13 20:06:40', 'CLOTURE'),
(89, 3000, '2022-08-13', '2022-08-13 20:11:01', 'CLOTURE'),
(90, 2000, '2022-08-15', '2022-08-15 02:05:02', 'VALIDE'),
(91, 25000, '2022-08-28', '2022-08-28 01:20:35', 'VALIDE');

-- --------------------------------------------------------

--
-- Structure de la table `depot`
--

CREATE TABLE `depot` (
  `depot_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `depot_montant` int(11) DEFAULT NULL,
  `depot_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `depot`
--

INSERT INTO `depot` (`depot_id`, `user_id`, `depot_montant`, `depot_date`) VALUES
(1, 13, 1000, NULL),
(2, 5, 100, NULL),
(3, 6, 500, NULL),
(4, 5, 500, NULL),
(5, 2, 200, NULL),
(6, 5, 100, NULL),
(7, 5, 400, NULL),
(8, 14, 1000, NULL),
(9, 2, 400, NULL),
(10, 5, 10000, '2021-09-01 16:59:36'),
(11, 5, 450000, '2022-03-05 01:44:36'),
(12, 15, 1000, '2022-03-05 02:31:36'),
(13, 6, 10000, '2022-03-05 10:25:41'),
(14, 6, 110000, '2022-03-05 10:26:27'),
(15, 5, 10000, '2022-03-23 08:29:21'),
(16, 16, 10000, '2022-03-23 09:08:08'),
(17, 5, 1500, '2022-04-14 06:42:11'),
(18, 5, 10000, '2022-04-21 08:04:44'),
(19, 15, 10000, '2022-04-22 12:10:43'),
(20, 16, 10000, '2022-06-06 10:31:34'),
(21, 16, 35500, '2022-06-06 10:33:00'),
(22, 5, 10000, '2022-06-06 22:36:34'),
(23, 20, 10000, '2022-07-13 21:52:13');

-- --------------------------------------------------------

--
-- Structure de la table `detail_commande`
--

CREATE TABLE `detail_commande` (
  `detail_commande_id` int(11) NOT NULL,
  `commande_id` int(11) DEFAULT NULL,
  `livre_id` int(11) DEFAULT NULL,
  `detail_commande_livre_nom` varchar(255) DEFAULT NULL,
  `detail_commande_quantite` int(11) DEFAULT NULL,
  `detail_commande_prix` bigint(20) DEFAULT NULL,
  `detail_commande_statut_telechargement` enum('AUTORISE','NON AUTORISE') DEFAULT 'NON AUTORISE',
  `detail_commande_nombre_telechargement` int(11) DEFAULT 0,
  `detail_commande_date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `detail_commande`
--

INSERT INTO `detail_commande` (`detail_commande_id`, `commande_id`, `livre_id`, `detail_commande_livre_nom`, `detail_commande_quantite`, `detail_commande_prix`, `detail_commande_statut_telechargement`, `detail_commande_nombre_telechargement`, `detail_commande_date_creation`) VALUES
(1, 10, 2, NULL, 1, 3000, 'NON AUTORISE', 0, '2022-07-31 22:43:54'),
(2, 10, 3, NULL, 1, 5000, 'NON AUTORISE', 0, '2022-07-31 22:43:54'),
(3, 11, 2, NULL, 1, 3000, 'NON AUTORISE', 0, '2022-07-31 22:57:51'),
(4, 11, 3, NULL, 1, 5000, 'NON AUTORISE', 0, '2022-07-31 22:57:51'),
(5, 12, 4, NULL, 1, 2500, 'NON AUTORISE', 0, '2022-07-31 23:09:12'),
(6, 12, 3, NULL, 1, 5000, 'NON AUTORISE', 0, '2022-07-31 23:09:12'),
(7, 12, 2, NULL, 1, 3000, 'NON AUTORISE', 0, '2022-07-31 23:09:12'),
(8, 13, 4, NULL, 1, 2500, 'NON AUTORISE', 0, '2022-08-01 06:23:44'),
(9, 13, 3, NULL, 1, 5000, 'NON AUTORISE', 0, '2022-08-01 06:23:44'),
(10, 13, 2, NULL, 1, 3000, 'NON AUTORISE', 0, '2022-08-01 06:23:44'),
(11, 14, 4, NULL, 1, 2500, 'NON AUTORISE', 0, '2022-08-01 06:24:11'),
(12, 14, 3, NULL, 1, 5000, 'NON AUTORISE', 0, '2022-08-01 06:24:11'),
(13, 14, 2, NULL, 1, 3000, 'NON AUTORISE', 0, '2022-08-01 06:24:11'),
(14, 15, 4, NULL, 1, 2500, 'NON AUTORISE', 0, '2022-08-01 06:30:51'),
(15, 15, 3, NULL, 1, 5000, 'NON AUTORISE', 0, '2022-08-01 06:30:51'),
(16, 15, 2, NULL, 1, 3000, 'NON AUTORISE', 0, '2022-08-01 06:30:51'),
(17, 16, 4, NULL, 1, 2500, 'NON AUTORISE', 0, '2022-08-01 06:40:34'),
(18, 16, 3, NULL, 1, 5000, 'NON AUTORISE', 0, '2022-08-01 06:40:34'),
(19, 16, 2, NULL, 1, 3000, 'NON AUTORISE', 0, '2022-08-01 06:40:34'),
(20, 17, 4, NULL, 1, 2500, 'NON AUTORISE', 0, '2022-08-01 06:41:01'),
(21, 17, 3, NULL, 1, 5000, 'NON AUTORISE', 0, '2022-08-01 06:41:01'),
(22, 17, 2, NULL, 1, 3000, 'NON AUTORISE', 0, '2022-08-01 06:41:01'),
(23, 18, 4, NULL, 1, 2500, 'NON AUTORISE', 0, '2022-08-01 06:43:42'),
(24, 18, 3, NULL, 1, 5000, 'NON AUTORISE', 0, '2022-08-01 06:43:42'),
(25, 18, 2, NULL, 1, 3000, 'NON AUTORISE', 0, '2022-08-01 06:43:42'),
(26, 19, 3, NULL, 1, 5000, 'NON AUTORISE', 0, '2022-08-01 07:17:15'),
(27, 19, 2, NULL, 1, 3000, 'NON AUTORISE', 0, '2022-08-01 07:17:15'),
(28, 20, 3, NULL, 1, 5000, 'NON AUTORISE', 0, '2022-08-01 07:32:35'),
(29, 20, 2, NULL, 1, 3000, 'NON AUTORISE', 0, '2022-08-01 07:32:35'),
(30, 20, 4, NULL, 1, 2500, 'NON AUTORISE', 0, '2022-08-01 07:32:35'),
(31, 20, 1, NULL, 1, 2000, 'NON AUTORISE', 0, '2022-08-01 07:32:36'),
(32, 21, 2, NULL, 1, 3000, 'NON AUTORISE', 0, '2022-08-01 11:06:42'),
(33, 21, 4, NULL, 1, 2500, 'NON AUTORISE', 0, '2022-08-01 11:06:42'),
(34, 22, 2, NULL, 1, 3000, 'NON AUTORISE', 0, '2022-08-01 11:13:06'),
(35, 23, 2, NULL, 1, 3000, 'NON AUTORISE', 0, '2022-08-01 11:17:39'),
(36, 23, 4, NULL, 1, 2500, 'NON AUTORISE', 0, '2022-08-01 11:17:39'),
(37, 24, 2, NULL, 1, 3000, 'NON AUTORISE', 0, '2022-08-01 12:05:19'),
(38, 25, 1, NULL, 1, 2000, 'NON AUTORISE', 0, '2022-08-01 12:20:18'),
(39, 25, 3, NULL, 1, 5000, 'NON AUTORISE', 0, '2022-08-01 12:20:18'),
(40, 25, 2, NULL, 1, 3000, 'NON AUTORISE', 0, '2022-08-01 12:20:18'),
(41, 25, 4, NULL, 1, 2500, 'NON AUTORISE', 0, '2022-08-01 12:20:18'),
(42, 26, 3, NULL, 1, 5000, 'NON AUTORISE', 0, '2022-08-01 14:15:40'),
(43, 26, 1, NULL, 1, 2000, 'NON AUTORISE', 0, '2022-08-01 14:15:40'),
(44, 27, 3, NULL, 1, 5000, 'NON AUTORISE', 0, '2022-08-03 08:38:47'),
(45, 27, 1, NULL, 1, 2000, 'NON AUTORISE', 0, '2022-08-03 08:38:47'),
(46, 28, 1, NULL, 1, 2000, 'NON AUTORISE', 0, '2022-08-03 08:55:33');

-- --------------------------------------------------------

--
-- Structure de la table `devise`
--

CREATE TABLE `devise` (
  `devise_id` int(11) NOT NULL,
  `devise_code` varchar(5) DEFAULT NULL,
  `devise_libelle` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `devise`
--

INSERT INTO `devise` (`devise_id`, `devise_code`, `devise_libelle`) VALUES
(1, 'Eur', 'Euro'),
(2, '$', 'Dollard'),
(3, 'FCFA', 'XOF (cfa)');

-- --------------------------------------------------------

--
-- Structure de la table `duel`
--

CREATE TABLE `duel` (
  `duel_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `adversaire_id` int(11) NOT NULL,
  `duel_date_creation` datetime DEFAULT NULL,
  `duel_date_validation` datetime DEFAULT NULL,
  `duel_date_debut` datetime DEFAULT NULL,
  `duel_date_fin` datetime DEFAULT NULL,
  `duel_vainqueur_id` int(11) DEFAULT NULL,
  `duel_abandonneur_id` int(11) DEFAULT NULL,
  `current_player_id` int(11) DEFAULT NULL,
  `compteur_question` int(11) DEFAULT 0,
  `readystate` enum('READY','NOT READY') DEFAULT 'NOT READY',
  `connected_users` int(11) DEFAULT 0,
  `duel_statut` enum('BROUILLON','VALIDE','EN COURS','TERMINE','ANNULE') DEFAULT 'BROUILLON'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `duel`
--

INSERT INTO `duel` (`duel_id`, `user_id`, `adversaire_id`, `duel_date_creation`, `duel_date_validation`, `duel_date_debut`, `duel_date_fin`, `duel_vainqueur_id`, `duel_abandonneur_id`, `current_player_id`, `compteur_question`, `readystate`, `connected_users`, `duel_statut`) VALUES
(1, 5, 6, NULL, '2019-11-26 11:41:40', NULL, NULL, NULL, NULL, 5, 2, 'READY', 2, 'ANNULE');

-- --------------------------------------------------------

--
-- Structure de la table `duel_jocker`
--

CREATE TABLE `duel_jocker` (
  `duel_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `jocker_utilise` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `duel_jocker`
--

INSERT INTO `duel_jocker` (`duel_id`, `user_id`, `jocker_utilise`) VALUES
(1, 5, 0),
(1, 6, 0);

-- --------------------------------------------------------

--
-- Structure de la table `duel_question`
--

CREATE TABLE `duel_question` (
  `duel_id` int(11) DEFAULT NULL,
  `duel_question_id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `from_user_id` int(11) DEFAULT NULL,
  `to_user_id` int(11) DEFAULT NULL,
  `statut` enum('BONNE','MAUVAISE') DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `time_actuel` varchar(50) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='enregistre les questions posée dans un duel';

--
-- Déchargement des données de la table `duel_question`
--

INSERT INTO `duel_question` (`duel_id`, `duel_question_id`, `question_id`, `from_user_id`, `to_user_id`, `statut`, `date`, `time_actuel`) VALUES
(1, 1, 13, 5, 6, NULL, NULL, '1574768638829'),
(1, 2, 5, 6, 5, NULL, NULL, '1574768652088');

-- --------------------------------------------------------

--
-- Structure de la table `duel_score`
--

CREATE TABLE `duel_score` (
  `duel_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT 0,
  `connected` enum('CONNECTED','NOT CONNECTED') DEFAULT 'NOT CONNECTED'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `duel_score`
--

INSERT INTO `duel_score` (`duel_id`, `user_id`, `score`, `connected`) VALUES
(1, 5, 100, 'CONNECTED'),
(1, 6, 100, 'CONNECTED');

-- --------------------------------------------------------

--
-- Structure de la table `entrainement`
--

CREATE TABLE `entrainement` (
  `entrainement_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `type_jeu` varchar(50) DEFAULT NULL,
  `entrainement_code` varchar(50) DEFAULT NULL,
  `objectif_financier` int(11) DEFAULT NULL,
  `entrainement_score` int(11) DEFAULT NULL,
  `entrainement_issue` enum('EN ATTENTE','GAGNE','PERDU') NOT NULL DEFAULT 'EN ATTENTE',
  `entrainement_compteur_question` int(11) DEFAULT NULL,
  `entrainement_date` datetime DEFAULT NULL,
  `entrainement_statut` enum('BROUILLON','EN COURS','TERMINE') DEFAULT 'BROUILLON'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `entrainement`
--

INSERT INTO `entrainement` (`entrainement_id`, `user_id`, `categorie_id`, `type_jeu`, `entrainement_code`, `objectif_financier`, `entrainement_score`, `entrainement_issue`, `entrainement_compteur_question`, `entrainement_date`, `entrainement_statut`) VALUES
(1, 5, 2, 'TEST', '', NULL, 0, 'EN ATTENTE', 15, '2021-09-01 16:34:01', 'TERMINE'),
(2, 5, 2, 'TEST', '', NULL, 0, 'EN ATTENTE', 15, '2021-09-01 16:37:26', 'TERMINE'),
(3, 5, 2, 'TEST', '', NULL, 200, 'EN ATTENTE', 15, '2021-09-01 16:38:02', 'TERMINE'),
(4, 5, 2, 'TEST', '', NULL, 100, 'EN ATTENTE', 15, '2021-09-01 16:39:43', 'TERMINE'),
(5, 5, 1, 'QUIZ', '', 500, 0, 'EN ATTENTE', 15, '2021-09-01 16:59:58', 'TERMINE'),
(6, 5, 1, 'QUIZ', '', 500, 100, 'EN ATTENTE', 15, '2021-09-01 17:00:14', 'EN COURS'),
(158, 6, 7, 'quiz', '2088413911', 7000, 3000, 'PERDU', 10, '2022-06-19 15:01:18', 'TERMINE'),
(9, 6, 7, NULL, '-271981377', NULL, 400, 'EN ATTENTE', 7, '2022-04-03 14:19:07', 'TERMINE'),
(10, 15, 7, NULL, '-272180401', NULL, 100, 'EN ATTENTE', 4, '2022-04-03 14:24:48', 'TERMINE'),
(13, 6, 7, 'quiz', '-271061353', 3000, 3000, 'GAGNE', 3, '2022-04-03 14:33:21', 'TERMINE'),
(14, 16, 5, NULL, '-894303213', NULL, 1000, 'EN ATTENTE', 13, '2022-04-04 07:40:27', 'TERMINE'),
(16, 16, 5, NULL, '-209401380', NULL, 200, 'EN ATTENTE', 5, '2022-04-04 07:41:39', 'TERMINE'),
(161, 16, 5, 'test', '2089262238', 0, 1500, 'EN ATTENTE', 18, '2022-06-19 15:17:10', 'TERMINE'),
(20, 6, 5, NULL, '-208975089', NULL, 0, 'EN ATTENTE', 2, '2022-04-04 07:58:50', 'TERMINE'),
(21, 6, 5, NULL, '-208644084', NULL, 100, 'EN ATTENTE', 4, '2022-04-04 07:58:50', 'TERMINE'),
(162, 16, 8, 'test', '2089471076', 0, 300, 'EN ATTENTE', 6, '2022-06-19 15:18:25', 'TERMINE'),
(23, 6, 5, NULL, '-208598564', NULL, 0, 'EN ATTENTE', 3, '2022-04-04 08:04:36', 'TERMINE'),
(25, 6, 7, NULL, '-208207531', NULL, 0, 'EN ATTENTE', 1, '2022-04-04 17:55:52', 'TERMINE'),
(26, 16, 5, NULL, '-209127044', NULL, 0, 'EN ATTENTE', 1, '2022-04-07 11:56:40', 'TERMINE'),
(163, 16, 7, 'test', '-2049386171', 0, 1000, 'EN ATTENTE', 13, '2022-06-21 10:43:38', 'TERMINE'),
(164, 16, 7, 'test', '-2018515330', 0, 600, 'EN ATTENTE', 9, '2022-06-21 19:15:36', 'TERMINE'),
(30, 6, 7, NULL, '236802088', NULL, 0, 'EN ATTENTE', 2, '2022-04-09 11:44:14', 'TERMINE'),
(31, 6, 7, NULL, '236883280', NULL, 0, 'EN ATTENTE', 3, '2022-04-09 11:44:14', 'TERMINE'),
(165, 16, 7, 'test', '-2017835653', 0, 1500, 'EN ATTENTE', 18, '2022-06-21 19:28:05', 'TERMINE'),
(33, 6, 7, NULL, '236913213', NULL, 700, 'EN ATTENTE', 10, '2022-04-09 11:46:30', 'TERMINE'),
(35, 6, 7, NULL, '237049265', NULL, 300, 'EN ATTENTE', 6, '2022-04-09 11:49:06', 'TERMINE'),
(166, 16, 7, 'test', '-2002899115', 0, 3100, 'EN ATTENTE', 34, '2022-06-21 23:38:23', 'TERMINE'),
(37, 6, 8, NULL, '238732234', NULL, 0, 'EN ATTENTE', 3, '2022-04-09 12:53:39', 'TERMINE'),
(39, 6, 5, NULL, '241674892', NULL, 0, 'EN ATTENTE', 3, '2022-04-09 13:11:28', 'TERMINE'),
(167, 16, 7, 'test', '-1749800887', 0, 1300, 'EN ATTENTE', 16, '2022-06-24 21:55:14', 'TERMINE'),
(42, 5, 5, NULL, '647945945', NULL, 100, 'EN ATTENTE', 4, '2022-04-14 05:59:09', 'TERMINE'),
(168, 6, 8, 'test', '-1749538359', 0, 200, 'EN ATTENTE', 5, '2022-06-24 22:10:07', 'TERMINE'),
(44, 5, 7, NULL, '648208116', NULL, 300, 'EN ATTENTE', 4, '2022-04-14 06:30:01', 'TERMINE'),
(46, 16, 5, NULL, '65165793', NULL, 300, 'EN ATTENTE', 6, '2022-04-18 10:56:06', 'TERMINE'),
(169, 6, 7, 'test', '-1748762874', 0, 0, 'EN ATTENTE', 3, '2022-06-24 22:10:27', 'TERMINE'),
(48, 16, 5, NULL, '1012390400', NULL, 100, 'EN ATTENTE', 4, '2022-04-18 21:55:49', 'TERMINE'),
(50, 16, 5, NULL, '1051522770', NULL, 700, 'EN ATTENTE', 10, '2022-04-18 22:32:37', 'TERMINE'),
(52, 16, 5, NULL, '1053717719', NULL, 600, 'EN ATTENTE', 9, '2022-04-19 06:14:24', 'TERMINE'),
(54, 16, 5, NULL, '1081426256', NULL, 800, 'EN ATTENTE', 11, '2022-04-19 06:27:23', 'TERMINE'),
(56, 16, 5, NULL, '1082250318', NULL, 600, 'EN ATTENTE', 9, '2022-04-19 06:30:53', 'TERMINE'),
(57, 5, 7, NULL, '656993199', NULL, 300, 'EN ATTENTE', 6, '2022-04-20 18:57:05', 'TERMINE'),
(58, 5, 7, NULL, '651081035', NULL, 400, 'EN ATTENTE', 7, '2022-04-20 18:57:05', 'TERMINE'),
(60, 5, 7, NULL, '1213702504', NULL, 100, 'EN ATTENTE', 3, '2022-04-21 08:01:48', 'TERMINE'),
(62, 16, 5, NULL, '1350940363', NULL, 2000, 'EN ATTENTE', 22, '2022-04-22 09:15:40', 'TERMINE'),
(64, 16, 5, NULL, '1351548490', NULL, 4200, 'EN ATTENTE', 45, '2022-04-22 09:41:09', 'TERMINE'),
(66, 16, 5, NULL, '1353066099', NULL, 800, 'EN ATTENTE', 11, '2022-04-22 09:45:03', 'TERMINE'),
(68, 5, 7, NULL, '1437959085', NULL, 0, 'EN ATTENTE', 3, '2022-04-23 09:17:35', 'TERMINE'),
(69, 5, 7, NULL, '1437924119', NULL, 200, 'EN ATTENTE', 3, '2022-04-23 09:17:35', 'TERMINE'),
(71, 5, 5, NULL, '1438000068', NULL, 500, 'EN ATTENTE', 8, '2022-04-23 09:19:06', 'TERMINE'),
(73, 5, 7, NULL, '1484600673', NULL, 200, 'EN ATTENTE', 5, '2022-04-23 22:20:21', 'TERMINE'),
(76, 16, 5, NULL, '1994402394', NULL, 100, 'EN ATTENTE', 4, '2022-04-29 19:52:23', 'TERMINE'),
(78, 18, 7, NULL, '2139304807', NULL, 100, 'EN ATTENTE', 4, '2022-05-01 12:06:38', 'TERMINE'),
(79, 5, 7, NULL, '1484650562', NULL, 200, 'EN ATTENTE', 5, '2022-05-04 17:31:25', 'TERMINE'),
(82, 5, 8, 'quiz', '-328433571', 3000, 3000, 'GAGNE', 4, '2022-05-22 15:40:40', 'TERMINE'),
(83, 5, 8, 'quiz', '-324603485', 5000, 5000, 'GAGNE', 5, '2022-05-22 16:45:09', 'TERMINE'),
(85, 16, 5, NULL, '-323655519', NULL, 700, 'EN ATTENTE', 10, '2022-05-22 17:02:54', 'TERMINE'),
(88, 16, 5, NULL, '-323090342', NULL, 500, 'EN ATTENTE', 8, '2022-05-22 17:10:05', 'TERMINE'),
(89, 5, 7, NULL, '-661387308', NULL, 0, 'EN ATTENTE', 3, '2022-05-22 18:17:36', 'TERMINE'),
(91, 5, 8, NULL, '-318453560', NULL, 100, 'EN ATTENTE', 4, '2022-05-22 18:26:35', 'TERMINE'),
(93, 5, 7, NULL, '-318235267', NULL, 1100, 'EN ATTENTE', 12, '2022-05-22 18:31:57', 'TERMINE'),
(95, 16, 5, NULL, '-316980788', NULL, 100, 'EN ATTENTE', 4, '2022-05-22 18:52:40', 'TERMINE'),
(96, 16, 8, 'quiz', '-316834702', 12000, 0, 'PERDU', 11, '2022-05-22 19:01:32', 'TERMINE'),
(98, 16, 8, NULL, '-302151913', NULL, 900, 'EN ATTENTE', 12, '2022-05-22 23:01:08', 'TERMINE'),
(109, 15, 7, 'test', '736063262', 0, 500, 'EN ATTENTE', 8, '2022-06-03 23:23:27', 'TERMINE'),
(108, 15, 7, 'test', '735614695', 0, 400, 'EN ATTENTE', 7, '2022-06-03 23:14:50', 'TERMINE'),
(110, 15, 7, 'test', '736597470', 0, 0, 'EN ATTENTE', 3, '2022-06-03 23:30:20', 'TERMINE'),
(111, 15, 7, 'test', '736621409', 0, 700, 'EN ATTENTE', 10, '2022-06-03 23:31:11', 'TERMINE'),
(112, 15, 8, 'quiz', '746360863', 3000, 0, 'PERDU', 3, '2022-06-04 02:13:32', 'TERMINE'),
(113, 15, 8, 'quiz', '746879825', 3000, 0, 'PERDU', 3, '2022-06-04 02:21:55', 'TERMINE'),
(114, 15, 8, 'quiz', '747303747', 3000, 0, 'PERDU', 3, '2022-06-04 02:30:08', 'TERMINE'),
(115, 15, 8, 'quiz', '747495015', 3000, 1000, 'PERDU', 4, '2022-06-04 02:32:10', 'TERMINE'),
(118, 15, 8, 'test', '748208435', 0, 200, 'EN ATTENTE', 3, '2022-06-04 02:44:03', 'TERMINE'),
(120, 15, 8, 'quiz', '749436560', 3000, 3000, 'GAGNE', 5, '2022-06-04 03:04:31', 'TERMINE'),
(121, 15, 8, 'test', '749705908', 0, 100, 'EN ATTENTE', 1, '2022-06-04 03:08:38', 'TERMINE'),
(122, 15, 8, 'test', '749724237', 0, 200, 'EN ATTENTE', 5, '2022-06-04 03:09:17', 'TERMINE'),
(123, 15, 8, 'test', '749752585', 0, 0, 'EN ATTENTE', 1, '2022-06-04 03:09:25', 'TERMINE'),
(124, 15, 8, 'quiz', '749767820', 3000, 3000, 'GAGNE', 5, '2022-06-04 03:09:56', 'TERMINE'),
(125, 13, 8, 'test', '749937551', 0, 200, 'EN ATTENTE', 5, '2022-06-04 03:12:45', 'TERMINE'),
(126, 13, 8, 'test', '749961947', 0, 300, 'EN ATTENTE', 6, '2022-06-04 03:13:11', 'TERMINE'),
(127, 13, 8, 'quiz', '750003939', 5000, 3000, 'PERDU', 8, '2022-06-04 03:14:31', 'TERMINE'),
(128, 19, 7, 'test', '783048112', 0, 100, 'EN ATTENTE', 4, '2022-06-04 12:24:34', 'TERMINE'),
(129, 5, 8, 'test', '787210554', 0, 400, 'EN ATTENTE', 7, '2022-06-04 13:34:20', 'TERMINE'),
(130, 5, 8, 'test', '787454254', 0, 400, 'EN ATTENTE', 7, '2022-06-04 13:38:10', 'TERMINE'),
(131, 5, 8, NULL, '813887822', NULL, 500, 'EN ATTENTE', 8, '2022-06-04 20:59:13', 'TERMINE'),
(132, 5, 7, 'test', '925347444', 0, 300, 'EN ATTENTE', 5, '2022-06-06 03:57:12', 'TERMINE'),
(133, 16, 5, 'test', '948303927', 0, 1200, 'EN ATTENTE', 15, '2022-06-06 10:20:31', 'TERMINE'),
(134, 16, 8, 'test', '948481816', 0, 300, 'EN ATTENTE', 6, '2022-06-06 10:22:06', 'TERMINE'),
(135, 5, 5, 'test', '948587987', 0, 200, 'EN ATTENTE', 5, '2022-06-06 10:24:03', 'TERMINE'),
(136, 5, 7, 'test', '948673663', 0, 400, 'EN ATTENTE', 7, '2022-06-06 10:25:17', 'TERMINE'),
(137, 5, 8, 'test', '948734529', 0, 300, 'EN ATTENTE', 6, '2022-06-06 10:26:04', 'TERMINE'),
(138, 16, 8, 'quiz', '949197954', 3000, 3000, 'GAGNE', 4, '2022-06-06 10:33:54', 'TERMINE'),
(139, 16, 5, 'test', '952927232', 0, 600, 'EN ATTENTE', 9, '2022-06-06 11:36:26', 'TERMINE'),
(140, 16, 5, 'quiz', '997135923', 4000, 4000, 'GAGNE', 5, '2022-06-06 23:53:11', 'TERMINE'),
(141, 16, 5, 'test', '997265773', 0, 400, 'EN ATTENTE', 7, '2022-06-06 23:55:10', 'TERMINE'),
(142, 16, 5, 'quiz', '1165828023', 5000, 4000, 'PERDU', 9, '2022-06-08 22:45:51', 'TERMINE'),
(143, 16, 5, 'quiz', '1346178220', 5000, 4000, 'PERDU', 9, '2022-06-11 00:51:30', 'TERMINE'),
(144, 16, 5, 'test', '1494338405', 0, 0, 'EN ATTENTE', 3, '2022-06-12 17:59:45', 'TERMINE'),
(145, 16, 5, 'quiz', '1494397007', 5000, 5000, 'GAGNE', 8, '2022-06-12 18:01:50', 'TERMINE'),
(146, 16, 5, 'quiz', '1603691214', 7000, 5000, 'PERDU', 12, '2022-06-14 00:23:25', 'TERMINE'),
(147, 5, 5, 'quiz', '1603886041', 7000, 3000, 'PERDU', 10, '2022-06-14 00:27:17', 'TERMINE'),
(148, 5, 5, 'test', '1604057988', 0, 400, 'EN ATTENTE', 7, '2022-06-14 00:29:11', 'TERMINE'),
(149, 5, 7, 'quiz', '1691701364', 5000, 5000, 'GAGNE', 6, '2022-06-15 00:49:54', 'TERMINE'),
(150, 16, 5, 'quiz', '1692020339', 8000, 8000, 'GAGNE', 11, '2022-06-15 00:55:17', 'TERMINE'),
(151, 16, 7, 'test', '1839243869', 0, 1900, 'EN ATTENTE', 22, '2022-06-16 17:49:56', 'TERMINE'),
(152, 16, 7, 'test', '1858034629', 0, 600, 'EN ATTENTE', 9, '2022-06-16 23:03:00', 'TERMINE'),
(153, 16, 7, 'test', '1858310251', 0, 1200, 'EN ATTENTE', 15, '2022-06-16 23:07:27', 'TERMINE'),
(154, 16, 7, 'test', '1927461299', 0, 3500, 'EN ATTENTE', 38, '2022-06-17 18:22:42', 'TERMINE'),
(155, 16, 7, 'test', '2084930594', 0, 0, 'EN ATTENTE', 3, '2022-06-19 14:24:12', 'TERMINE'),
(156, 16, 7, 'test', '2086304982', 0, 1500, 'EN ATTENTE', 18, '2022-06-19 14:27:23', 'TERMINE'),
(157, 5, 5, 'test', '2086516030', 0, 500, 'EN ATTENTE', 8, '2022-06-19 14:30:04', 'TERMINE'),
(170, 6, 5, 'test', '-1140143929', 0, 500, 'EN ATTENTE', 8, '2022-07-01 23:15:24', 'TERMINE'),
(171, 6, 7, 'test', '-671714666', 0, 1800, 'EN ATTENTE', 21, '2022-07-07 09:25:11', 'TERMINE'),
(172, 16, 5, 'quiz', '-671319923', 7000, 7000, 'GAGNE', 12, '2022-07-07 09:31:02', 'TERMINE'),
(175, 16, 5, 'quiz', '-109291162', 8000, 8000, 'GAGNE', 13, '2022-07-13 21:36:07', 'TERMINE'),
(176, 16, 5, 'test', '-108755856', 0, 400, 'EN ATTENTE', 7, '2022-07-13 21:44:15', 'TERMINE'),
(177, 20, 5, 'quiz', '-108227988', 10000, 8000, 'PERDU', 18, '2022-07-13 21:55:22', 'TERMINE'),
(178, 20, 5, 'test', '-107993003', 0, 900, 'EN ATTENTE', 12, '2022-07-13 21:58:48', 'TERMINE'),
(179, 6, 7, 'test', '-104084016', 0, 1200, 'EN ATTENTE', 15, '2022-07-13 23:05:11', 'TERMINE'),
(180, 6, 5, 'test', '-103760899', 0, 1100, 'EN ATTENTE', 14, '2022-07-13 23:09:45', 'TERMINE'),
(181, 20, 7, 'test', '-28630384', 0, 700, 'EN ATTENTE', 9, '2022-07-14 20:01:15', 'TERMINE'),
(183, 5, 7, 'test', '-21870755', 0, 2000, 'EN ATTENTE', 23, '2022-07-14 21:56:02', 'TERMINE'),
(184, 16, 5, 'quiz', '-19426129', 9000, 4000, 'PERDU', 13, '2022-07-14 22:54:34', 'TERMINE'),
(185, 16, 5, NULL, '-16600859', NULL, 500, 'EN ATTENTE', 8, '2022-07-14 23:19:31', 'TERMINE'),
(186, 16, 7, 'quiz', '316535968', 5000, 5000, 'GAGNE', 5, '2022-07-18 19:53:26', 'TERMINE'),
(188, 16, 7, 'test', '325859766', 0, 200, 'EN ATTENTE', 5, '2022-07-18 22:28:20', 'TERMINE'),
(189, 20, 7, 'test', '326034324', 0, 1100, 'EN ATTENTE', 14, '2022-07-18 22:32:19', 'TERMINE'),
(191, 5, 5, 'quiz', '327551876', 10000, 8000, 'PERDU', 18, '2022-07-18 22:58:42', 'TERMINE'),
(192, 5, 5, 'quiz', '566196928', 5000, 5000, 'GAGNE', 7, '2022-07-21 17:14:18', 'TERMINE'),
(193, 16, 5, NULL, '699361762', NULL, 800, 'EN ATTENTE', 11, '2022-07-23 06:13:22', 'TERMINE'),
(194, 16, 5, NULL, '699889534', NULL, 500, 'EN ATTENTE', 8, '2022-07-23 06:21:12', 'TERMINE'),
(195, 5, 7, 'test', '1255855990', 0, 100, 'EN ATTENTE', 1, '2022-07-29 16:47:23', 'TERMINE'),
(196, 5, 7, 'test', '1256114289', 0, 400, 'EN ATTENTE', 7, '2022-07-29 16:52:39', 'TERMINE'),
(197, 5, 5, 'test', '1256187889', 0, 600, 'EN ATTENTE', 9, '2022-07-29 16:54:26', 'TERMINE'),
(198, 16, 5, 'test', '1257810374', 0, 1100, 'EN ATTENTE', 14, '2022-07-29 17:27:56', 'TERMINE'),
(199, 20, 5, 'test', '1718273764', 0, 2300, 'EN ATTENTE', 26, '2022-08-04 01:19:27', 'TERMINE'),
(201, 5, 5, 'quiz', '1718927657', 15000, 9000, 'PERDU', 24, '2022-08-04 01:28:38', 'TERMINE'),
(202, 16, 5, 'quiz', '1719185261', 15000, 15000, 'GAGNE', 22, '2022-08-04 01:33:21', 'TERMINE'),
(203, 5, 7, 'test', '2146343774', 0, 0, 'EN ATTENTE', 3, '2022-08-09 00:08:55', 'TERMINE'),
(204, 5, 7, 'test', '2146368610', 0, 0, 'EN ATTENTE', 3, '2022-08-09 00:10:40', 'TERMINE'),
(205, 16, 5, 'test', '-2035327444', 0, 1100, 'EN ATTENTE', 14, '2022-08-10 07:39:43', 'TERMINE'),
(206, 16, 5, 'test', '-2034891952', 0, 900, 'EN ATTENTE', 12, '2022-08-10 07:47:26', 'TERMINE'),
(207, 5, 7, 'test', '-1945690343', 0, 200, 'EN ATTENTE', 5, '2022-08-11 08:31:39', 'TERMINE'),
(208, 5, 5, 'test', '-1945638729', 0, 100, 'EN ATTENTE', 4, '2022-08-11 08:32:10', 'TERMINE'),
(209, 5, 7, 'test', '-1945610942', 0, 300, 'EN ATTENTE', 6, '2022-08-11 08:33:09', 'TERMINE'),
(210, 5, 5, 'test', '-1931901418', 0, 300, 'EN ATTENTE', 6, '2022-08-11 12:21:13', 'TERMINE'),
(211, 16, 5, 'quiz', '-1906151949', 9000, 5000, 'PERDU', 14, '2022-08-11 19:41:06', 'TERMINE'),
(213, 16, 5, 'test', '-1903032235', 0, 200, 'EN ATTENTE', 5, '2022-08-11 22:30:22', 'TERMINE'),
(214, 5, 5, 'test', '-1891489308', 0, 200, 'EN ATTENTE', 5, '2022-08-11 23:34:58', 'TERMINE'),
(215, 5, 5, 'test', '-1891431217', 0, 100, 'EN ATTENTE', 4, '2022-08-11 23:35:56', 'TERMINE'),
(216, 5, 5, 'test', '-1891371101', 0, 100, 'EN ATTENTE', 4, '2022-08-11 23:37:13', 'TERMINE'),
(217, 5, 5, 'test', '-1891298789', 0, 2000, 'EN ATTENTE', 22, '2022-08-11 23:41:24', 'TERMINE'),
(218, 2, 7, 'test', '-1891026497', 0, 300, 'EN ATTENTE', 6, '2022-08-11 23:46:56', 'TERMINE'),
(219, 2, 5, 'test', '-1888779526', 0, 1100, 'EN ATTENTE', 14, '2022-08-12 00:25:24', 'TERMINE'),
(220, 5, 7, 'quiz', '-1806086695', 3000, 2000, 'PERDU', 5, '2022-08-12 23:18:08', 'TERMINE'),
(221, 5, 8, 'quiz', '-1806039509', 3000, 3000, 'GAGNE', 4, '2022-08-12 23:18:55', 'TERMINE'),
(223, 16, 5, 'quiz', '-1731074423', 10000, 10000, 'GAGNE', 14, '2022-08-13 20:09:39', 'TERMINE'),
(225, 5, 7, 'quiz', '-1730857954', 3000, 3000, 'GAGNE', 3, '2022-08-13 20:11:45', 'TERMINE'),
(226, 16, 5, 'quiz', '-1730850350', 3000, 3000, 'GAGNE', 3, '2022-08-13 20:11:52', 'TERMINE'),
(227, 16, 7, 'test', '-1675366191', 0, 800, 'EN ATTENTE', 11, '2022-08-14 11:38:32', 'TERMINE'),
(228, 5, 7, 'test', '-1630516980', 0, 100, 'EN ATTENTE', 1, '2022-08-15 00:03:51', 'TERMINE'),
(229, 20, 7, 'test', '-614722577', 0, 100, 'EN ATTENTE', 4, '2022-08-26 18:14:24', 'TERMINE'),
(230, 16, 7, 'test', '-614557948', 0, 100, 'EN ATTENTE', 4, '2022-08-26 18:16:35', 'TERMINE'),
(231, 5, 7, 'test', '-601277491', 0, 400, 'EN ATTENTE', 7, '2022-08-26 21:59:22', 'TERMINE');

-- --------------------------------------------------------

--
-- Structure de la table `jockerquestion`
--

CREATE TABLE `jockerquestion` (
  `jockerquestion_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `beneficiaire_user_id` int(11) DEFAULT NULL,
  `jockerquestion_quantite` int(11) DEFAULT NULL,
  `jockerquestion_montant` int(11) DEFAULT NULL,
  `jockerquestion_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `jockerquestion`
--

INSERT INTO `jockerquestion` (`jockerquestion_id`, `user_id`, `beneficiaire_user_id`, `jockerquestion_quantite`, `jockerquestion_montant`, `jockerquestion_date`) VALUES
(1, 2, 2, 5, NULL, NULL),
(2, 6, 6, 5, NULL, NULL),
(3, 5, 5, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `kw_administrateur`
--

CREATE TABLE `kw_administrateur` (
  `kw_administrateur_id` int(10) UNSIGNED NOT NULL,
  `kw_administrateur_login` varchar(255) NOT NULL,
  `kw_administrateur_pass` varchar(255) NOT NULL,
  `kw_administrateur_email` varchar(50) NOT NULL,
  `kw_administrateur_rang` int(11) NOT NULL,
  `kw_administrateur_statut` enum('ACTIVE','DESACTIVE') NOT NULL DEFAULT 'ACTIVE'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='enregistre les administrateurs du site';

--
-- Déchargement des données de la table `kw_administrateur`
--

INSERT INTO `kw_administrateur` (`kw_administrateur_id`, `kw_administrateur_login`, `kw_administrateur_pass`, `kw_administrateur_email`, `kw_administrateur_rang`, `kw_administrateur_statut`) VALUES
(1, 'admin', 'fece6adde0ec8c975e2b5ec91fce57ab1852fca4', 'krak225@gmail.com', 1, 'ACTIVE');

-- --------------------------------------------------------

--
-- Structure de la table `langue`
--

CREATE TABLE `langue` (
  `langue_id` int(11) NOT NULL,
  `langue_code` varchar(3) NOT NULL DEFAULT '0',
  `langue_libelle` varchar(20) DEFAULT NULL,
  `langue_drapeau` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `langue`
--

INSERT INTO `langue` (`langue_id`, `langue_code`, `langue_libelle`, `langue_drapeau`) VALUES
(1, 'Fr', 'français', 'fr.png'),
(2, 'En', 'anglais', 'gb.png');

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

CREATE TABLE `livre` (
  `livre_id` int(11) NOT NULL,
  `concours_id` int(11) DEFAULT NULL,
  `livre_nom` varchar(50) DEFAULT NULL,
  `livre_description` varchar(255) DEFAULT NULL,
  `livre_couverture` varchar(255) DEFAULT NULL,
  `livre_fichier_complet` varchar(255) DEFAULT NULL,
  `livre_fichier_extrait` varchar(255) DEFAULT NULL,
  `livre_prix` bigint(20) DEFAULT NULL,
  `livre_statut` enum('VALIDE','SUPPRIME') DEFAULT 'VALIDE'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`livre_id`, `concours_id`, `livre_nom`, `livre_description`, `livre_couverture`, `livre_fichier_complet`, `livre_fichier_extrait`, `livre_prix`, `livre_statut`) VALUES
(1, 4, 'MATHEMATIQUES', 'Un très bon document de préparation des concours à avoir absolument. Il contient les sujets des sessions de 2000 à 2021', '1.jpg', '1.pdf', '1.pdf', 2000, 'VALIDE'),
(2, 3, 'FRANCAIS', 'Un très bon document de préparation des concours à avoir absolument. Il contient les sujets des sessions de 2000 à 2021', '2.jpg', '2.pdf', '2.pdf', 3000, 'VALIDE'),
(3, 5, 'OPAJ', 'Un très bon document de préparation des concours à avoir absolument. Il contient les sujets des sessions de 2000 à 2021', '3.jpg', '3.pdf', '3.pdf', 5000, 'VALIDE'),
(4, 6, 'DICTEE', 'Un très bon document de préparation des concours à avoir absolument. Il contient les sujets des sessions de 2000 à 2021', '4.jpg', '4.pdf', '4.pdf', 2500, 'VALIDE');

-- --------------------------------------------------------

--
-- Structure de la table `niveau`
--

CREATE TABLE `niveau` (
  `niveau_id` int(11) NOT NULL,
  `niveau_libelle` varchar(100) NOT NULL,
  `niveau_statut` enum('BROUILLON','VALIDE','SUPPRIME') NOT NULL DEFAULT 'VALIDE'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `niveau`
--

INSERT INTO `niveau` (`niveau_id`, `niveau_libelle`, `niveau_statut`) VALUES
(1, 'NIVEAU 1', 'VALIDE'),
(2, 'NIVEAU 2', 'VALIDE');

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE `pays` (
  `pays_id` smallint(5) UNSIGNED NOT NULL,
  `pays_code` int(3) NOT NULL,
  `pays_alpha2` varchar(2) CHARACTER SET utf8 NOT NULL,
  `pays_alpha3` varchar(3) CHARACTER SET utf8 NOT NULL,
  `pays_nom_en` varchar(45) CHARACTER SET utf8 NOT NULL,
  `pays_nom_fr` varchar(45) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `pays`
--

INSERT INTO `pays` (`pays_id`, `pays_code`, `pays_alpha2`, `pays_alpha3`, `pays_nom_en`, `pays_nom_fr`) VALUES
(1, 4, 'AF', 'AFG', 'Afghanistan', 'Afghanistan'),
(2, 8, 'AL', 'ALB', 'Albania', 'Albanie'),
(3, 10, 'AQ', 'ATA', 'Antarctica', 'Antarctique'),
(4, 12, 'DZ', 'DZA', 'Algeria', 'Algérie'),
(5, 16, 'AS', 'ASM', 'American Samoa', 'Samoa Américaines'),
(6, 20, 'AD', 'AND', 'Andorra', 'Andorre'),
(7, 24, 'AO', 'AGO', 'Angola', 'Angola'),
(8, 28, 'AG', 'ATG', 'Antigua and Barbuda', 'Antigua-et-Barbuda'),
(9, 31, 'AZ', 'AZE', 'Azerbaijan', 'Azerbaïdjan'),
(10, 32, 'AR', 'ARG', 'Argentina', 'Argentine'),
(11, 36, 'AU', 'AUS', 'Australia', 'Australie'),
(12, 40, 'AT', 'AUT', 'Austria', 'Autriche'),
(13, 44, 'BS', 'BHS', 'Bahamas', 'Bahamas'),
(14, 48, 'BH', 'BHR', 'Bahrain', 'Bahreïn'),
(15, 50, 'BD', 'BGD', 'Bangladesh', 'Bangladesh'),
(16, 51, 'AM', 'ARM', 'Armenia', 'Arménie'),
(17, 52, 'BB', 'BRB', 'Barbados', 'Barbade'),
(18, 56, 'BE', 'BEL', 'Belgium', 'Belgique'),
(19, 60, 'BM', 'BMU', 'Bermuda', 'Bermudes'),
(20, 64, 'BT', 'BTN', 'Bhutan', 'Bhoutan'),
(21, 68, 'BO', 'BOL', 'Bolivia', 'Bolivie'),
(22, 70, 'BA', 'BIH', 'Bosnia and Herzegovina', 'Bosnie-Herzégovine'),
(23, 72, 'BW', 'BWA', 'Botswana', 'Botswana'),
(24, 74, 'BV', 'BVT', 'Bouvet Island', 'Île Bouvet'),
(25, 76, 'BR', 'BRA', 'Brazil', 'Brésil'),
(26, 84, 'BZ', 'BLZ', 'Belize', 'Belize'),
(27, 86, 'IO', 'IOT', 'British Indian Ocean Territory', 'Territoire Britannique de l\'Océan Indien'),
(28, 90, 'SB', 'SLB', 'Solomon Islands', 'Îles Salomon'),
(29, 92, 'VG', 'VGB', 'British Virgin Islands', 'Îles Vierges Britanniques'),
(30, 96, 'BN', 'BRN', 'Brunei Darussalam', 'Brunéi Darussalam'),
(31, 100, 'BG', 'BGR', 'Bulgaria', 'Bulgarie'),
(32, 104, 'MM', 'MMR', 'Myanmar', 'Myanmar'),
(33, 108, 'BI', 'BDI', 'Burundi', 'Burundi'),
(34, 112, 'BY', 'BLR', 'Belarus', 'Bélarus'),
(35, 116, 'KH', 'KHM', 'Cambodia', 'Cambodge'),
(36, 120, 'CM', 'CMR', 'Cameroon', 'Cameroun'),
(37, 124, 'CA', 'CAN', 'Canada', 'Canada'),
(38, 132, 'CV', 'CPV', 'Cape Verde', 'Cap-vert'),
(39, 136, 'KY', 'CYM', 'Cayman Islands', 'Îles Caïmanes'),
(40, 140, 'CF', 'CAF', 'Central African', 'République Centrafricaine'),
(41, 144, 'LK', 'LKA', 'Sri Lanka', 'Sri Lanka'),
(42, 148, 'TD', 'TCD', 'Chad', 'Tchad'),
(43, 152, 'CL', 'CHL', 'Chile', 'Chili'),
(44, 156, 'CN', 'CHN', 'China', 'Chine'),
(45, 158, 'TW', 'TWN', 'Taiwan', 'Taïwan'),
(46, 162, 'CX', 'CXR', 'Christmas Island', 'Île Christmas'),
(47, 166, 'CC', 'CCK', 'Cocos (Keeling) Islands', 'Îles Cocos (Keeling)'),
(48, 170, 'CO', 'COL', 'Colombia', 'Colombie'),
(49, 174, 'KM', 'COM', 'Comoros', 'Comores'),
(50, 175, 'YT', 'MYT', 'Mayotte', 'Mayotte'),
(51, 178, 'CG', 'COG', 'Republic of the Congo', 'République du Congo'),
(52, 180, 'CD', 'COD', 'The Democratic Republic Of The Congo', 'République Démocratique du Congo'),
(53, 184, 'CK', 'COK', 'Cook Islands', 'Îles Cook'),
(54, 188, 'CR', 'CRI', 'Costa Rica', 'Costa Rica'),
(55, 191, 'HR', 'HRV', 'Croatia', 'Croatie'),
(56, 192, 'CU', 'CUB', 'Cuba', 'Cuba'),
(57, 196, 'CY', 'CYP', 'Cyprus', 'Chypre'),
(58, 203, 'CZ', 'CZE', 'Czech Republic', 'République Tchèque'),
(59, 204, 'BJ', 'BEN', 'Benin', 'Bénin'),
(60, 208, 'DK', 'DNK', 'Denmark', 'Danemark'),
(61, 212, 'DM', 'DMA', 'Dominica', 'Dominique'),
(62, 214, 'DO', 'DOM', 'Dominican Republic', 'République Dominicaine'),
(63, 218, 'EC', 'ECU', 'Ecuador', 'Équateur'),
(64, 222, 'SV', 'SLV', 'El Salvador', 'El Salvador'),
(65, 226, 'GQ', 'GNQ', 'Equatorial Guinea', 'Guinée Équatoriale'),
(66, 231, 'ET', 'ETH', 'Ethiopia', 'Éthiopie'),
(67, 232, 'ER', 'ERI', 'Eritrea', 'Érythrée'),
(68, 233, 'EE', 'EST', 'Estonia', 'Estonie'),
(69, 234, 'FO', 'FRO', 'Faroe Islands', 'Îles Féroé'),
(70, 238, 'FK', 'FLK', 'Falkland Islands', 'Îles (malvinas) Falkland'),
(71, 239, 'GS', 'SGS', 'South Georgia and the South Sandwich Islands', 'Géorgie du Sud et les Îles Sandwich du Sud'),
(72, 242, 'FJ', 'FJI', 'Fiji', 'Fidji'),
(73, 246, 'FI', 'FIN', 'Finland', 'Finlande'),
(74, 248, 'AX', 'ALA', 'Åland Islands', 'Îles Åland'),
(75, 250, 'FR', 'FRA', 'France', 'France'),
(76, 254, 'GF', 'GUF', 'French Guiana', 'Guyane Française'),
(77, 258, 'PF', 'PYF', 'French Polynesia', 'Polynésie Française'),
(78, 260, 'TF', 'ATF', 'French Southern Territories', 'Terres Australes Françaises'),
(79, 262, 'DJ', 'DJI', 'Djibouti', 'Djibouti'),
(80, 266, 'GA', 'GAB', 'Gabon', 'Gabon'),
(81, 268, 'GE', 'GEO', 'Georgia', 'Géorgie'),
(82, 270, 'GM', 'GMB', 'Gambia', 'Gambie'),
(83, 275, 'PS', 'PSE', 'Occupied Palestinian Territory', 'Territoire Palestinien Occupé'),
(84, 276, 'DE', 'DEU', 'Germany', 'Allemagne'),
(85, 288, 'GH', 'GHA', 'Ghana', 'Ghana'),
(86, 292, 'GI', 'GIB', 'Gibraltar', 'Gibraltar'),
(87, 296, 'KI', 'KIR', 'Kiribati', 'Kiribati'),
(88, 300, 'GR', 'GRC', 'Greece', 'Grèce'),
(89, 304, 'GL', 'GRL', 'Greenland', 'Groenland'),
(90, 308, 'GD', 'GRD', 'Grenada', 'Grenade'),
(91, 312, 'GP', 'GLP', 'Guadeloupe', 'Guadeloupe'),
(92, 316, 'GU', 'GUM', 'Guam', 'Guam'),
(93, 320, 'GT', 'GTM', 'Guatemala', 'Guatemala'),
(94, 324, 'GN', 'GIN', 'Guinea', 'Guinée'),
(95, 328, 'GY', 'GUY', 'Guyana', 'Guyana'),
(96, 332, 'HT', 'HTI', 'Haiti', 'Haïti'),
(97, 334, 'HM', 'HMD', 'Heard Island and McDonald Islands', 'Îles Heard et Mcdonald'),
(98, 336, 'VA', 'VAT', 'Vatican City State', 'Saint-Siège (état de la Cité du Vatican)'),
(99, 340, 'HN', 'HND', 'Honduras', 'Honduras'),
(100, 344, 'HK', 'HKG', 'Hong Kong', 'Hong-Kong'),
(101, 348, 'HU', 'HUN', 'Hungary', 'Hongrie'),
(102, 352, 'IS', 'ISL', 'Iceland', 'Islande'),
(103, 356, 'IN', 'IND', 'India', 'Inde'),
(104, 360, 'ID', 'IDN', 'Indonesia', 'Indonésie'),
(105, 364, 'IR', 'IRN', 'Islamic Republic of Iran', 'République Islamique d\'Iran'),
(106, 368, 'IQ', 'IRQ', 'Iraq', 'Iraq'),
(107, 372, 'IE', 'IRL', 'Ireland', 'Irlande'),
(108, 376, 'IL', 'ISR', 'Israel', 'Israël'),
(109, 380, 'IT', 'ITA', 'Italy', 'Italie'),
(110, 225, 'CI', 'CIV', 'Côte d\'Ivoire', 'Côte d\'Ivoire'),
(111, 388, 'JM', 'JAM', 'Jamaica', 'Jamaïque'),
(112, 392, 'JP', 'JPN', 'Japan', 'Japon'),
(113, 398, 'KZ', 'KAZ', 'Kazakhstan', 'Kazakhstan'),
(114, 400, 'JO', 'JOR', 'Jordan', 'Jordanie'),
(115, 404, 'KE', 'KEN', 'Kenya', 'Kenya'),
(116, 408, 'KP', 'PRK', 'Democratic People\'s Republic of Korea', 'République Populaire Démocratique de Corée'),
(117, 410, 'KR', 'KOR', 'Republic of Korea', 'République de Corée'),
(118, 414, 'KW', 'KWT', 'Kuwait', 'Koweït'),
(119, 417, 'KG', 'KGZ', 'Kyrgyzstan', 'Kirghizistan'),
(120, 418, 'LA', 'LAO', 'Lao People\'s Democratic Republic', 'République Démocratique Populaire Lao'),
(121, 422, 'LB', 'LBN', 'Lebanon', 'Liban'),
(122, 426, 'LS', 'LSO', 'Lesotho', 'Lesotho'),
(123, 428, 'LV', 'LVA', 'Latvia', 'Lettonie'),
(124, 430, 'LR', 'LBR', 'Liberia', 'Libéria'),
(125, 434, 'LY', 'LBY', 'Libyan Arab Jamahiriya', 'Jamahiriya Arabe Libyenne'),
(126, 438, 'LI', 'LIE', 'Liechtenstein', 'Liechtenstein'),
(127, 440, 'LT', 'LTU', 'Lithuania', 'Lituanie'),
(128, 442, 'LU', 'LUX', 'Luxembourg', 'Luxembourg'),
(129, 446, 'MO', 'MAC', 'Macao', 'Macao'),
(130, 450, 'MG', 'MDG', 'Madagascar', 'Madagascar'),
(131, 454, 'MW', 'MWI', 'Malawi', 'Malawi'),
(132, 458, 'MY', 'MYS', 'Malaysia', 'Malaisie'),
(133, 462, 'MV', 'MDV', 'Maldives', 'Maldives'),
(134, 466, 'ML', 'MLI', 'Mali', 'Mali'),
(135, 470, 'MT', 'MLT', 'Malta', 'Malte'),
(136, 474, 'MQ', 'MTQ', 'Martinique', 'Martinique'),
(137, 478, 'MR', 'MRT', 'Mauritania', 'Mauritanie'),
(138, 480, 'MU', 'MUS', 'Mauritius', 'Maurice'),
(139, 484, 'MX', 'MEX', 'Mexico', 'Mexique'),
(140, 492, 'MC', 'MCO', 'Monaco', 'Monaco'),
(141, 496, 'MN', 'MNG', 'Mongolia', 'Mongolie'),
(142, 498, 'MD', 'MDA', 'Republic of Moldova', 'République de Moldova'),
(143, 500, 'MS', 'MSR', 'Montserrat', 'Montserrat'),
(144, 504, 'MA', 'MAR', 'Morocco', 'Maroc'),
(145, 508, 'MZ', 'MOZ', 'Mozambique', 'Mozambique'),
(146, 512, 'OM', 'OMN', 'Oman', 'Oman'),
(147, 516, 'NA', 'NAM', 'Namibia', 'Namibie'),
(148, 520, 'NR', 'NRU', 'Nauru', 'Nauru'),
(149, 524, 'NP', 'NPL', 'Nepal', 'Népal'),
(150, 528, 'NL', 'NLD', 'Netherlands', 'Pays-Bas'),
(151, 530, 'AN', 'ANT', 'Netherlands Antilles', 'Antilles Néerlandaises'),
(152, 533, 'AW', 'ABW', 'Aruba', 'Aruba'),
(153, 540, 'NC', 'NCL', 'New Caledonia', 'Nouvelle-Calédonie'),
(154, 548, 'VU', 'VUT', 'Vanuatu', 'Vanuatu'),
(155, 554, 'NZ', 'NZL', 'New Zealand', 'Nouvelle-Zélande'),
(156, 558, 'NI', 'NIC', 'Nicaragua', 'Nicaragua'),
(157, 562, 'NE', 'NER', 'Niger', 'Niger'),
(158, 566, 'NG', 'NGA', 'Nigeria', 'Nigéria'),
(159, 570, 'NU', 'NIU', 'Niue', 'Niué'),
(160, 574, 'NF', 'NFK', 'Norfolk Island', 'Île Norfolk'),
(161, 578, 'NO', 'NOR', 'Norway', 'Norvège'),
(162, 580, 'MP', 'MNP', 'Northern Mariana Islands', 'Îles Mariannes du Nord'),
(163, 581, 'UM', 'UMI', 'United States Minor Outlying Islands', 'Îles Mineures Éloignées des États-Unis'),
(164, 583, 'FM', 'FSM', 'Federated States of Micronesia', 'États Fédérés de Micronésie'),
(165, 584, 'MH', 'MHL', 'Marshall Islands', 'Îles Marshall'),
(166, 585, 'PW', 'PLW', 'Palau', 'Palaos'),
(167, 586, 'PK', 'PAK', 'Pakistan', 'Pakistan'),
(168, 591, 'PA', 'PAN', 'Panama', 'Panama'),
(169, 598, 'PG', 'PNG', 'Papua New Guinea', 'Papouasie-Nouvelle-Guinée'),
(170, 600, 'PY', 'PRY', 'Paraguay', 'Paraguay'),
(171, 604, 'PE', 'PER', 'Peru', 'Pérou'),
(172, 608, 'PH', 'PHL', 'Philippines', 'Philippines'),
(173, 612, 'PN', 'PCN', 'Pitcairn', 'Pitcairn'),
(174, 616, 'PL', 'POL', 'Poland', 'Pologne'),
(175, 620, 'PT', 'PRT', 'Portugal', 'Portugal'),
(176, 624, 'GW', 'GNB', 'Guinea-Bissau', 'Guinée-Bissau'),
(177, 626, 'TL', 'TLS', 'Timor-Leste', 'Timor-Leste'),
(178, 630, 'PR', 'PRI', 'Puerto Rico', 'Porto Rico'),
(179, 634, 'QA', 'QAT', 'Qatar', 'Qatar'),
(180, 638, 'RE', 'REU', 'Réunion', 'Réunion'),
(181, 642, 'RO', 'ROU', 'Romania', 'Roumanie'),
(182, 643, 'RU', 'RUS', 'Russian Federation', 'Fédération de Russie'),
(183, 646, 'RW', 'RWA', 'Rwanda', 'Rwanda'),
(184, 654, 'SH', 'SHN', 'Saint Helena', 'Sainte-Hélène'),
(185, 659, 'KN', 'KNA', 'Saint Kitts and Nevis', 'Saint-Kitts-et-Nevis'),
(186, 660, 'AI', 'AIA', 'Anguilla', 'Anguilla'),
(187, 662, 'LC', 'LCA', 'Saint Lucia', 'Sainte-Lucie'),
(188, 666, 'PM', 'SPM', 'Saint-Pierre and Miquelon', 'Saint-Pierre-et-Miquelon'),
(189, 670, 'VC', 'VCT', 'Saint Vincent and the Grenadines', 'Saint-Vincent-et-les Grenadines'),
(190, 674, 'SM', 'SMR', 'San Marino', 'Saint-Marin'),
(191, 678, 'ST', 'STP', 'Sao Tome and Principe', 'Sao Tomé-et-Principe'),
(192, 682, 'SA', 'SAU', 'Saudi Arabia', 'Arabie Saoudite'),
(193, 686, 'SN', 'SEN', 'Senegal', 'Sénégal'),
(194, 690, 'SC', 'SYC', 'Seychelles', 'Seychelles'),
(195, 694, 'SL', 'SLE', 'Sierra Leone', 'Sierra Leone'),
(196, 702, 'SG', 'SGP', 'Singapore', 'Singapour'),
(197, 703, 'SK', 'SVK', 'Slovakia', 'Slovaquie'),
(198, 704, 'VN', 'VNM', 'Vietnam', 'Viet Nam'),
(199, 705, 'SI', 'SVN', 'Slovenia', 'Slovénie'),
(200, 706, 'SO', 'SOM', 'Somalia', 'Somalie'),
(201, 710, 'ZA', 'ZAF', 'South Africa', 'Afrique du Sud'),
(202, 716, 'ZW', 'ZWE', 'Zimbabwe', 'Zimbabwe'),
(203, 724, 'ES', 'ESP', 'Spain', 'Espagne'),
(204, 732, 'EH', 'ESH', 'Western Sahara', 'Sahara Occidental'),
(205, 736, 'SD', 'SDN', 'Sudan', 'Soudan'),
(206, 740, 'SR', 'SUR', 'Suriname', 'Suriname'),
(207, 744, 'SJ', 'SJM', 'Svalbard and Jan Mayen', 'Svalbard etÎle Jan Mayen'),
(208, 748, 'SZ', 'SWZ', 'Swaziland', 'Swaziland'),
(209, 752, 'SE', 'SWE', 'Sweden', 'Suède'),
(210, 756, 'CH', 'CHE', 'Switzerland', 'Suisse'),
(211, 760, 'SY', 'SYR', 'Syrian Arab Republic', 'République Arabe Syrienne'),
(212, 762, 'TJ', 'TJK', 'Tajikistan', 'Tadjikistan'),
(213, 764, 'TH', 'THA', 'Thailand', 'Thaïlande'),
(214, 768, 'TG', 'TGO', 'Togo', 'Togo'),
(215, 772, 'TK', 'TKL', 'Tokelau', 'Tokelau'),
(216, 776, 'TO', 'TON', 'Tonga', 'Tonga'),
(217, 780, 'TT', 'TTO', 'Trinidad and Tobago', 'Trinité-et-Tobago'),
(218, 784, 'AE', 'ARE', 'United Arab Emirates', 'Émirats Arabes Unis'),
(219, 788, 'TN', 'TUN', 'Tunisia', 'Tunisie'),
(220, 792, 'TR', 'TUR', 'Turkey', 'Turquie'),
(221, 795, 'TM', 'TKM', 'Turkmenistan', 'Turkménistan'),
(222, 796, 'TC', 'TCA', 'Turks and Caicos Islands', 'Îles Turks et Caïques'),
(223, 798, 'TV', 'TUV', 'Tuvalu', 'Tuvalu'),
(224, 800, 'UG', 'UGA', 'Uganda', 'Ouganda'),
(225, 804, 'UA', 'UKR', 'Ukraine', 'Ukraine'),
(226, 807, 'MK', 'MKD', 'The Former Yugoslav Republic of Macedonia', 'L\'ex-République Yougoslave de Macédoine'),
(227, 818, 'EG', 'EGY', 'Egypt', 'Égypte'),
(228, 826, 'GB', 'GBR', 'United Kingdom', 'Royaume-Uni'),
(229, 833, 'IM', 'IMN', 'Isle of Man', 'Île de Man'),
(230, 834, 'TZ', 'TZA', 'United Republic Of Tanzania', 'République-Unie de Tanzanie'),
(231, 840, 'US', 'USA', 'United States', 'États-Unis'),
(232, 850, 'VI', 'VIR', 'U.S. Virgin Islands', 'Îles Vierges des États-Unis'),
(233, 854, 'BF', 'BFA', 'Burkina Faso', 'Burkina Faso'),
(234, 858, 'UY', 'URY', 'Uruguay', 'Uruguay'),
(235, 860, 'UZ', 'UZB', 'Uzbekistan', 'Ouzbékistan'),
(236, 862, 'VE', 'VEN', 'Venezuela', 'Venezuela'),
(237, 876, 'WF', 'WLF', 'Wallis and Futuna', 'Wallis et Futuna'),
(238, 882, 'WS', 'WSM', 'Samoa', 'Samoa'),
(239, 887, 'YE', 'YEM', 'Yemen', 'Yémen'),
(240, 891, 'CS', 'SCG', 'Serbia and Montenegro', 'Serbie-et-Monténégro'),
(241, 894, 'ZM', 'ZMB', 'Zambia', 'Zambie');

-- --------------------------------------------------------

--
-- Structure de la table `profil`
--

CREATE TABLE `profil` (
  `profil_id` int(11) DEFAULT NULL,
  `profil_nom` varchar(50) DEFAULT NULL,
  `profil_statut` enum('VALIDE') DEFAULT 'VALIDE'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `question_fr` varchar(256) DEFAULT NULL,
  `question_en` varchar(256) DEFAULT NULL,
  `proposition_a_fr` varchar(256) DEFAULT NULL,
  `proposition_a_en` varchar(256) DEFAULT NULL,
  `proposition_b_fr` varchar(256) DEFAULT NULL,
  `proposition_b_en` varchar(256) DEFAULT NULL,
  `proposition_c_fr` varchar(256) DEFAULT NULL,
  `proposition_c_en` varchar(256) DEFAULT NULL,
  `reponse` varchar(256) DEFAULT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `type_jeu_id` int(11) DEFAULT NULL,
  `niveau_id` int(11) DEFAULT 1,
  `statut_selection` enum('SELECTED','NOT SELECTED') DEFAULT 'NOT SELECTED',
  `statut_selection_chap` enum('SELECTED','NOT SELECTED') DEFAULT 'NOT SELECTED',
  `statut` enum('BROUILLON','VALIDE','SUPPRIME') DEFAULT 'BROUILLON'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `question`
--

INSERT INTO `question` (`id`, `user_id`, `question_fr`, `question_en`, `proposition_a_fr`, `proposition_a_en`, `proposition_b_fr`, `proposition_b_en`, `proposition_c_fr`, `proposition_c_en`, `reponse`, `categorie_id`, `type_jeu_id`, `niveau_id`, `statut_selection`, `statut_selection_chap`, `statut`) VALUES
(54, 1, 'Quel est la moitie de 1336', '', '668   ', '', '616', '', '658', '', 'A', 8, 2, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(1, 1, 'Quelle est la capitale de la Côte d\'Ivoire ?', '', 'Abidjan', 'Bouakï¿½', 'Bouaké', 'Daloa', 'Yamoussoukro', 'Yamoussoukro', 'C', 7, 1, NULL, 'SELECTED', 'SELECTED', 'VALIDE'),
(2, 1, 'En quelle année la Côte D\'Ivoire a t elle joué sa première finale de CAN de football ?', '', '1984', '2012', '1992', '1992', '2006', '2006', 'B', 7, 1, NULL, 'SELECTED', 'SELECTED', 'VALIDE'),
(5, 6, 'Quelle est la capitale de la France ?', '', 'Marseille', 'Marseille', 'Alsace', 'Alsace', 'Paris', 'Paris', 'C', 7, 1, 1, 'SELECTED', 'SELECTED', 'VALIDE'),
(7, 6, 'Dans l\'industrie cinématographique américaine, que signifie l\'abréviation MGM ?', '', 'Metro Goldwyn Mayer', '', 'Millenium Good Media', '', 'Middle Glass Musics', '', 'A', 7, 1, 1, 'SELECTED', 'SELECTED', 'VALIDE'),
(8, 10, 'Que signifie ONU ?', '', 'Organisation des Nationalistes pour l\'UnitÃ© ', '', 'Organisation des Nations Unies', '', 'Office Nationale de l\'UnitÃ©', '', 'B', 7, 1, 1, 'NOT SELECTED', 'SELECTED', 'VALIDE'),
(9, 10, 'Comment appelle t-on la version 5 d\'Android?', '', 'Ice cream sandwich', '', 'Lolipop', '', 'Oreo', '', 'B', 7, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(10, 6, 'Comment appelle t-on la version 8 d\'Android ?', '', 'Ice cream', '', 'Lolipop', '', 'Oreo', '', 'C', 7, 1, 1, 'SELECTED', 'NOT SELECTED', 'VALIDE'),
(11, 6, 'Que signifie ONG ? ', '', 'Organisation Nationale des Gares', '', 'Organisation Non Gouvernementale', '', 'Office Nationale des Gouverneurs', '', 'B', 7, 1, 1, 'SELECTED', 'NOT SELECTED', 'VALIDE'),
(12, 6, 'Quelle est la formule du poids d\'un objet ?', '', 'P = m x g', '', 'P = (m + g)2', '', 'P = (m - g)', '', 'A', 7, 1, 1, 'SELECTED', 'NOT SELECTED', 'VALIDE'),
(13, 5, 'Dans quel pays se trouve le Mont Tonkpi ?', '', 'MALI ', '', 'GHANA ', '', 'COTE  D\'IVOIRE ', '', 'C', 7, 1, 1, 'SELECTED', 'SELECTED', 'VALIDE'),
(15, 10, 'Que signifie UEMOA ?', '', 'Unitï¿½ Electorale Mondiale pour l\'Ordre en Afrique', '', 'Union des Electricien du Monde en Afrique', '', 'Union Economique et Monetaire Ouest Africaine', '', 'C', 7, 1, 1, 'NOT SELECTED', 'SELECTED', 'VALIDE'),
(16, 1, 'Qeulle est le chef lieu de la région du Hambole ?', '', 'Bouaké', '', 'Katiola', '', 'Dabakala', '', 'B', 7, 1, NULL, 'NOT SELECTED', 'SELECTED', 'VALIDE'),
(17, 10, 'De qui est le roman Les frasques d\'Ebinto ?', '', 'Isaie Binton Coulibaly', '', 'Tidiane Dem', '', 'Amadou Konï¿½', '', 'C', 7, 1, 1, 'NOT SELECTED', 'SELECTED', 'VALIDE'),
(18, 1, 'Dans quelle commune se trouve le monument AKWABA en Côte d\'Ivoire ?', '', 'Koumassi', '', 'Port-Bouet', '', 'Yopougon', '', 'B', 7, 1, NULL, 'NOT SELECTED', 'SELECTED', 'VALIDE'),
(19, 6, 'Qui est l\'auteur de cette phrase : UN MILITAIRE SANS FORMATION POLITIQUE N\'EST QU\'UN CRIMINEL EN PUISSANCE. ', '', 'Thomas SANKARA', '', 'Charles De GAULLE ', '', 'Nelson MANDELA ', '', 'A', 7, 1, 1, 'NOT SELECTED', 'SELECTED', 'VALIDE'),
(20, 1, 'Selon le plan comptable SYSCOHADA laquelle de ces affirmations est fausse ?', '', 'Classe 5: comptes de tiers', '', 'Classe 7: comptes de produits Activité Ordinaire', '', 'Classe 1: comptes de ressources durables', '', 'A', 7, 2, 1, 'SELECTED', 'NOT SELECTED', 'VALIDE'),
(21, 1, 'Selon le plan comptable SYSCOHADA, laquelle de ces classes ne relève pas de la comptabilité générale ?', '', 'Classe 5', '', 'Classe 9', '', 'Classe 8', '', 'B', 7, 2, 1, 'NOT SELECTED', 'SELECTED', 'VALIDE'),
(22, 5, 'Lequel de ces principes est un principe comptable?', '', 'Le principe de la sincérité', '', 'Le principe de la continuité de l\'exploitation', '', 'Le principe de l\'honnêteté', '', 'B', 6, 2, 1, 'SELECTED', 'NOT SELECTED', 'VALIDE'),
(23, 1, 'Que signifie TVA ?', '', 'Taxe de Vérification d\'Authenticité', '', 'Taxe sur  Vente  Alternative', '', 'Taxe sur la valeur ajoutée', '', 'C', 7, 2, 1, 'SELECTED', 'NOT SELECTED', 'VALIDE'),
(24, 2, 'Que signifie FRDE en  comptabilité?', '', 'Front de recherche Dana', '', 'Frais de recherche et de développement', '', 'Finir, ralentir et développer', '', 'B', 6, 2, 1, 'SELECTED', 'NOT SELECTED', 'VALIDE'),
(25, 1, 'Combien de variantes  existe-t-il dans la méthode du coût moyen pondéré  ?', '', '2', '', '4', '', '8', '', 'A', 7, 2, 2, 'NOT SELECTED', 'SELECTED', 'VALIDE'),
(28, 5, 'Dans quelle commune se trouve le monument AKWABA en Côte d\'Ivoire?', '', 'Port-Bouet', '', 'Koumassi', '', 'Yopougon', '', 'A', 2, 2, 1, 'SELECTED', 'SELECTED', 'VALIDE'),
(39, 5, 'De quelle nationalité est la chantre Débora Lukalu ?', '', 'Sud africaine', NULL, 'Concolaise', NULL, 'Centrafricaine', NULL, 'B', NULL, 2, 1, 'SELECTED', 'SELECTED', 'BROUILLON'),
(30, 5, 'Qui est le fondateur du PDCI-RDA', '', 'Laurent Gbagbo', '', 'Henri Konan Bédié', '', 'Felix Houphouet Boigny', '', 'C', 2, 2, 1, 'SELECTED', 'SELECTED', 'VALIDE'),
(31, 1, 'En Côte d\'Ivoire, Que signifie BURIDA ?', '', 'Bureau Ivoirien du Droit des Auteurs', '', 'Bureau Ivoirien du Droit d\'Auteur', '', 'Bureau Ivoirien du Droit d\'Artiste', '', 'B', 7, 2, 1, 'SELECTED', 'SELECTED', 'VALIDE'),
(32, 10, 'Que signifie ONU?', '', 'Office Nationale pour l\'Unité', 'Union of Nation', 'Office des Nations Unies', 'Union of Natural', 'Organisation des Nations Unies', 'United Nation', 'C', 2, 2, 1, 'NOT SELECTED', 'SELECTED', 'VALIDE'),
(33, 2, 'Quel est le double de 28 ? ', '', '288  ', '', '56   ', '', '82   ', '', 'B', 7, 2, 1, 'SELECTED', 'SELECTED', 'BROUILLON'),
(34, 1, 'Quel est la moitié de 256 ?', '', '156', '', '128', '', '123', '', 'B', 7, 2, 1, 'SELECTED', 'SELECTED', 'VALIDE'),
(35, 1, 'En quelle année la RCA a-t-elle obtenu son indépendance ?', '', '1960', '', '1965', '', '1964', '', 'A', 7, 2, 1, 'SELECTED', 'SELECTED', 'VALIDE'),
(36, 2, 'Quel est la capitale de la Centrafrique ? ', '', 'Bimbo', '', 'Bangui', '', 'Birao', '', 'B', 7, 2, 1, 'SELECTED', 'SELECTED', 'BROUILLON'),
(37, 2, 'Quel est le tiers de 300', '', '3', '', '30', '', '100', '', 'C', 8, 2, 1, 'SELECTED', 'SELECTED', 'BROUILLON'),
(38, 2, 'Quel est le triple de 300', '', '100', '', '900', '', '1', '', 'B', 8, 2, 1, 'SELECTED', 'NOT SELECTED', 'BROUILLON'),
(71, 1, 'Lequel de ces joueurs a été élu Ballon d\'or africain 1998 ? ', '', 'Jay Jay OCOCHA ', '', 'Moustafa HADJI ', '', 'Patrick M\'Boma ', '', 'B', 5, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(72, 1, 'Comment s\'appelle le stade du club de football RÃ©al Madrid ?', '', 'Santiago Bernabéu', '', 'Roger Sanchez', '', 'Vicente Calderon', '', 'A', 5, 1, NULL, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(73, 1, 'Comment s\'appelle le stade du club de football Paris Saint Germain ?', '', 'Le Vélodrome ', '', 'Le stade de France ', '', 'Le Parc des princes', '', 'C', 5, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(80, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(81, 1, 'Dans quel stade s\'est déroulée la finale de la coupe du monde de football 1998 ?', '', 'Stade de France', '', 'Soccer City', '', 'Maracanã', '', 'A', 5, 1, NULL, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(75, 1, 'Comment s\'appelle le stade du club de football AS St Etienne ?', '', 'Geauffroy Guichard', '', 'La Mosson', '', 'La Beaujoire', '', 'A', 5, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(77, 1, 'Quelle est la date de la signature de l\'armistice de la première guerre mondiale ?', '', '11 novembre 191 8', '', '5 octobre 1918', '', '20 juillet 1918', '', 'A', 7, 1, NULL, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(78, 1, 'Parmi les pays suivants, lequel n\'est pas membre de l\'Union européenne ?', '', 'Suède', '', 'Norvège', '', 'Finlande', '', 'B', 7, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(79, 1, 'En 2004, dans quel stade évoluait le club de football Olympique Lyonnais ?', '', 'La Mosson', '', 'Le Vélodrome', '', 'Le stade Gerland', '', 'C', 5, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(82, 1, 'Dans quel pays s\'est déroulée la coupe du monde de 1938 ? ', '', 'France ', '', 'Uruguay ', '', 'Italie ', '', 'A', 5, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(83, 1, 'Dans quel pays s\'est déroulée la coupe du monde de football de 1954 ? ', '', 'Brésil ', '', 'Suède ', '', 'Suisse ', '', 'C', 5, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(84, 1, 'Les formules de Thalès et de Pythagore ont elle été utilisées dans la construction des pyramides d\'Egypte ?', '', 'Oui', '', 'Non', '', 'Jamais', '', 'A', 7, 2, 1, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(85, 1, 'Lequel de ces joueurs a été drafté en premier ?', '', 'Michael Jordan', '', 'Shaquille O\'neal', '', 'Magic Johnson', '', 'C', 5, 2, 1, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(86, 1, 'En quelle année a été drafté Magic Johnson ?', '', '1979', '', '1975', '', '1983', '', 'A', 5, 2, 2, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(87, 1, 'Combien de titre NBA Michael Jordan a t il remporté ?', '', '6', '', '5', '', '7', '', 'A', 7, 2, 2, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(88, 1, 'Quelle est la date de naissance de Margaret Smith Court ? ', '', '16 juillet 1942', '', '25 aoÃ»t 1952', '', '19 septembre 1948', '', 'A', 5, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(89, 1, 'Combien de titres de grand chelem a remporté Margaret Smith Court ? ', '', '17     ', '', '13    ', '', '24    ', '', 'C', 5, 2, 2, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(90, 1, 'Combien de titres de grand chelem a remporté Justine Henin ? ', '', '7     ', '', '12    ', '', '14    ', '', 'A', 5, 2, 2, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(91, 1, 'Combien de titres de grand chelem a remporté Steffi Graf ? ', '', '11    ', '', '22     ', '', '16     ', '', 'B', 5, 2, 2, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(92, 1, 'À la fin de l\'année 2022, combien de titres de champions de France a remporté le PSG ?', '', '7', '', '10', '', '14', '', 'B', 5, 2, 2, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(93, 1, 'Combien de titres de champions d\'Espagne a remporté le Réal Madrid à la fin de l\'année 2022 ?', '', '24', '', '35', '', '37', '', 'B', 5, 2, 1, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(94, 1, 'Combien de titres NBA ont remporté les celtics de Boston à la fin de l\'année 2021 ?', '', '18', '', '17', '', '19', '', 'B', 5, 2, 2, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(95, 1, 'Combien de titres NBA Michael Jordan a t il remporté ? ', '', '5    ', '', '7     ', '', '6   ', '', 'C', 5, 2, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(96, 1, 'Combien de finales NBA Michael Jordan a t il disputé ? ', '', '9    ', '', '10   ', '', '6     ', '', 'C', 5, 2, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(97, 1, 'A la fin de l\'année 2022, combien de tournois de grand chelem avons nous ? ', '', '5    ', '', '4    ', '', '6    ', '', 'B', 5, 2, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(98, 1, 'A la fin de l\'année 2022, lequel de ces clubs de football a remporté le plus grand nombre de championnat ?', '', 'Bayern Munich ', '', 'FC Barcelone ', '', 'Juventus Turin', '', 'A', 5, 2, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(99, 1, 'Lequel de ces clubs a remporté le plus grand nombre de ligue des champions ? ', '', 'Milan AC', '', 'Liverpool FC', '', 'Manchester City', '', 'A', 5, 2, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(100, 1, 'Lequel de ces pilotes a remporté le championnat de formule 1 en 2007 ?', '', 'Lewis Hamilton', '', 'Kimi Räikkönen', '', 'Michael Schumacher', '', 'B', 5, 2, 1, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(101, 1, 'Lequel de ces joueurs a remporté L\'US Open en 2008 ? ', '', 'Andy Murray ', '', 'Rafael Nadal ', '', 'Roger federer', '', 'C', 5, 2, 2, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(102, 1, 'Combien de titres NBA a remporté Dwyane Wade ? ', '', '5     ', '', '3    ', '', '2     ', '', 'B', 5, 2, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(103, 1, 'Lequel de ces clubs a remporté la ligue des champions africaine en 1998 ? ', '', 'Zamalek', '', 'Orlando Pirates', '', 'ASEC Mimosa ', '', 'C', 5, 2, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(104, 1, 'Lequel de ces clubs a remporté la ligue des champions africaine en 1992 ? ', '', 'ASEC Mimosa ', '', 'Ashanti Kotoko', '', 'WAC de Casablanca ', '', 'C', 5, 2, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(105, 1, 'Lequel de ces joueurs a marqué le premier but sénégalais à une coupe du monde de football ?', '', 'Sadio Mané', '', 'Pape Diop', '', 'El hadji Diouf', '', 'B', 5, 2, 1, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(106, 1, 'Lequel de ces joueurs a marqué le premier but Ivoirien à une coupe du monde de football ?', '', 'Didier DROGBA', '', 'Bonaventure KALOU', '', 'Bakary Koné - Baky', '', 'A', 5, 2, 1, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(107, 1, 'Lequel de ces joueurs a marqué en finale de coupe du monde de football ? ', '', 'David BECKHAM ', '', 'Thierry HENRY ', '', 'Lionel MESSI ', '', 'C', 5, 2, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(108, 1, 'En quelle année l\'Afrique du Sud a remporté la première Coupe d\'Afrique des Nations de son histoire ? ', '', '1996  ', '', '1998  ', '', '2000 ', '', 'A', 5, 2, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(109, 1, 'La Côte d\'Ivoire a joué combien de finales de CAN à la fin de l\'année 2022 ?', '', '4', '', '2', '', '5', '', 'A', 5, 2, 1, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(110, 1, 'Lequel de ces sportifs a remporté la première médaille d\'or aux Jeux olympiques ?', '', 'CISSÉ Cheick', '', 'Marie José TA LOU', '', 'Ibrahim Méité', '', 'A', 5, 2, 1, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(111, 1, 'Qui est le meilleur buteur de la CAN sur une compétition ? ', '', 'Samuel ETO\'O', '', 'Laurent POKOU', '', 'Ndaye MULAMBA ', '', 'C', 5, 2, 2, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(112, 1, 'Quelle édition de la CAN a vu le meilleur buteur de ce tournoi sur une seule compétition ?', '', '1974', '', '1986', '', '1978', '', 'A', 5, 2, 2, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(113, 1, 'Lequel de ces joueurs a été meilleur buteur de la CAN de 1968 ? ', '', 'Laurent POKOU', '', 'Rashidi YEKINI', '', 'Ndaye MULAMBA ', '', 'A', 5, 2, 2, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(114, 1, 'Lequel de ces joueurs a été meilleur buteur de la CAN de 1994 ? ', '', 'TIEHI JOEL', '', 'KALUSHA BWALYA', '', 'RASHIDI YEKINI', '', 'C', 5, 2, 2, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(115, 1, 'Lequel de ces joueurs a été meilleur buteur de la CAN de 1992 ?', '', 'ABDOULAYE TRAORÉ', '', 'RASHIDI YEKINI', '', 'ABEDI PELÉ', '', 'B', 5, 2, 2, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(116, 1, 'Lequel de ces joueurs a été meilleur buteur de la CAN de 2006 ?', '', 'HOSSAM HASSAN', '', 'DIDIER DROGBA', '', 'SAMUEL ETO\'O', '', 'C', 5, 2, 1, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(117, 1, 'Le meilleur buteur de la CAN 1988 a inscrit combien de but ? ', '', '5     ', '', '4    ', '', '2     ', '', 'C', 5, 2, 2, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(118, 1, 'Combien de buts a inscrit LAURENT POKOU à  la CAN ?', '', '10', '', '13', '', '14', '', 'C', 5, 2, 2, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(124, 1, 'Combien de points a inscrit Kobe Bryant en NBA ?', '', '33 643', '', '31 876', '', '30 219', '', 'A', 5, 2, 2, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(120, 1, 'Combien de points a inscrit Michael Jordan en NBA ?', '', '32 292', '', '41 023', '', '33 866', '', 'A', 5, 2, 2, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(121, 1, 'Conjuguez le verbe \"neiger\" au présent de l\'indicatif  à la deuxième personne du pluriel', '', 'Vous neigez', '', 'Tu neiges', '', 'N\'existe pas', '', 'C', 7, 2, 1, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(122, 1, 'Lequel de ces personnages a reçu le prix Nobel de littérature 2002 ?', '', 'Louise Glück', '', 'Kazuo ishiguro', '', 'Imre Kertész', '', 'C', 7, 2, 2, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(123, 1, 'Combien de points a inscrit Michael Jordan en NBA ?', '', '32 292', '', '41 023', '', '33 866', '', 'A', 5, 2, 2, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(125, 1, 'Traduisez le mot : POULET dans le dialecte ABBEY', '', 'Via cho\'n', '', 'AbouahA = x r', '', 'Rossoh', '', 'C', 7, 1, NULL, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(126, 1, 'Quelle est la capitale du Sri-Lanka ? ', '', 'Mirissa', '', 'Colombo', '', 'Kandy', '', 'B', 7, 2, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(127, 1, 'Qui est l\'auteur de cette citation : \" Il faut apprendre à l’enfant à être d’abord et avant tout un être social, c’est-à -dire un homme et non un individu\"', '', 'Nelson MANDELA', '', 'Martin Luther King', '', 'Thomas SANKARA', '', 'C', 7, 2, 2, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(128, 1, 'Quel pays est le premier producteur de Cacao au monde ? ', '', 'Côte d\'Ivoire ', '', 'Venezuela ', '', 'Ghana ', '', 'A', 7, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(129, 1, 'Quelle est l\'année de création du tournoi de tennis Wimbledon ?', '', '1877', '', '1904', '', '1921', '', 'A', 5, 2, 2, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(130, 1, 'Le tournoi de grand chelem Roland Garros doit son nom à :', '', 'Un ancien joueur de tennis', '', 'Un ancien aviateur', '', 'Un ancien architecte', '', 'B', 5, 2, 2, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(131, 1, 'Quelle est l\'année de création officielle du tournoi de tennis Roland Garros ?', '', '1909', '', '1932', '', '1925', '', 'C', 5, 2, 2, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(132, 1, 'Quelle est la hauteur d\'un panier de basket ? ', '', '3, 55 m', '', '3, 05 m ', '', '3, 37 m', '', 'B', 5, 2, 2, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(133, 1, 'Quelle est la longueur d\'un poteau de football ? ', '', '6, 71 m', '', '7, 05 m', '', '7, 32 m', '', 'C', 5, 2, 2, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(134, 1, 'Quelle est le pays de naissance de Ernesto Guevara ? ', '', 'CUBA', '', 'COLOMBIE', '', 'ARGENTINE ', '', 'C', 7, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(135, 1, 'Dans quel pays est mort Ernesto GUEVARA ? ', '', 'CUBA ', '', 'BOLIVIE ', '', 'MEXIQUE ', '', 'B', 7, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(136, 1, 'Quelle est la formule de l\'énergie mécanique Em  ? ', '', 'Em = Ec - Ep', '', 'Em = Ec x Ep', '', 'Em = Ec + Ep', '', 'C', 7, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(137, 1, 'Quelle est l\'unité de mesure de l\'énergie ? ', '', 'Le joule ', '', 'Le watt', '', 'L\'ampère', '', 'A', 7, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(138, 1, 'Quelle est la formule de la puissance P ? ', '', 'P = U âœ– I', '', 'P = E âœ– U', '', 'P = U / I ', '', 'A', 7, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(139, 1, 'Lequel de ces nombres n\'est pas un nombre premier ? ', '', '1802    ', '', '53     ', '', '861     ', '', 'A', 7, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(140, 1, 'Laquelle de ces couleurs est une couleur primaire ? ', '', 'BLEU ', '', 'BLANC ', '', 'ROUGE', '', 'C', 7, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(141, 1, 'Laquelle de ces couleurs est une couleur primaire ? ', '', 'VERT ', '', 'BLANC ', '', 'ROUGE', '', 'C', 7, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(142, 1, 'Quel est le diamètre de la lune ? ', '', '421 000 km', '', '350 000 km', '', '399 500 km', '', 'B', 7, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(143, 1, 'Quelle est la plus grosse planète du système solaire ? ', '', 'Jupiter ', '', 'Mars ', '', 'Mercure ', '', 'A', 7, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(144, 1, 'Laquelle de ces villes ivoiriennes abrite la somptueuse Basilique NOTRE DAME DE LA PAIX ? ', '', 'Yamoussoukro', '', 'Bouakï¿½ ', '', 'San Pedro ', '', 'A', 7, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(156, 1, 'Lequel de ces athlètes a remporté la médaille d\'or sur 100 m aux jeux olympiques de 1992 ? ', '', 'Franckie Fredericks', '', 'Dennis Mitchel', '', 'Linford Christie', '', 'C', 5, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(146, 1, 'Laquelle de ces couleurs est une couleur secondaire ? ', '', 'NOIR ', '', 'VIOLET ', '', 'BLEU ', '', 'B', 7, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(147, 1, 'Quelle est la date de l\'assassinat de Patrice LUMUMBA ? ', '', '17 janvier 1959', '', '17 janvier 1960', '', '17 janvier 1961', '', 'C', 7, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(148, 1, 'Qui était l\'acteur principal du film OPERATION DRAGON ? ', '', 'Bruce LEE', '', 'Jackie CHAN ', '', 'Steven SEAGAL', '', 'A', 7, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(149, 1, 'Quel club fut vainqueur de la ligue des champions de l\'UEFA en 2002 ? ', '', 'REAL MADRID ', '', 'BORUSIA DORTMUND', '', 'JUVENTUS TURIN', '', 'A', 5, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(150, 1, 'Qui a remporté la médaille d\'or sur 100 m  aux Jeux olympiques de 1996 ?', '', 'ATTO Bolton', '', 'Donavan BAILLEY', '', 'Usain BOLT', '', 'B', 5, 1, NULL, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(151, 1, 'Quelle est la date de naissance de l\'acteur Steven SEAGAL ? ', '', '10 avril 1952 ', '', '21 juin 1955', '', '3 septembre 1960', '', 'A', 7, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(152, 1, 'Dans quelle ville ont eu lieu les jeux olympiques de 1992 ? ', '', 'Barcelone ', '', 'Atlanta ', '', 'Mexico ', '', 'A', 5, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(153, 1, 'Dans quelle ville de CÔTE D\'IVOIRE trouve t on les cascades  ?', '', 'Man', '', 'Dimbokro', '', 'Katiola', '', 'A', 7, 1, NULL, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(154, 1, 'Laquelle de ces couleurs n\'est pas sur le drapeau ivoirien  ? ', '', 'Orange ', '', 'Rouge ', '', 'Blanc ', '', 'B', 7, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(155, 1, 'Combien de semaines avons nous dans une année civile ? ', '', '55    ', '', '51   ', '', '52    ', '', 'C', 7, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(157, 1, 'Lequel de ces pays a joué la finale de la coupe du monde de football 2006 ?', '', 'Allemagne', '', 'Argentine', '', 'Italie', '', 'C', 5, 1, NULL, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(158, 1, 'Quelle est la date de l\'assassinat de Thomas SANKARA ? ', '', '15 octobre 1990', '', '15 octobre 1989', '', '15 octobre 1987', '', 'C', 7, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(159, 1, 'Lequel de ces clubs a remporté la coupe d\'Afrique des vainqueurs de coupes en 1999 ? ', '', 'Orlando pirates', '', 'Africa sport', '', 'Raja de Casablanca ', '', 'B', 5, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(160, 1, 'Quel est le surnom de l\'équipe nationale de rugby d\'Argentine ? ', '', 'Les pumas', '', 'Les all black', '', 'Les albicelestes', '', 'A', 5, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(161, 1, 'Quelle a été la dotation de l\'équipe qui a remporté la CAN 2022 ? ', '', '5 000 000 dollars US', '', '3 960 000 dollars US', '', '4 650 000 dollars US', '', 'A', 5, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(162, 1, 'Quelle a été la dotation du vainqueur du tableau féminin du Roland Garros 2022 ? ', '', '3 500 000 USD ', '', '2 200 000 USD ', '', '5 100 000 USD ', '', 'B', 5, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(163, 1, 'En quelle année la CÔTE D\'IVOIRE devient une colonie française ?', '', '1793', '', '1983', '', '1893', '', 'C', 7, 2, 1, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(164, 1, 'L\'aire du disque est :', '', 'R*R+pi', '', 'R*R*pi', '', '2R*pi', '', 'B', 7, 2, 1, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(165, 1, 'Lequel de ces pays a organisé la CAN de football 2002 ? ', '', 'Mali', '', 'Nigera', '', 'Afrique du Sud ', '', 'A', 5, 2, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(166, 1, 'Que signifie SYSCOHADA ? ', '', 'Système pour la Coordination Humanitaire des Acteurs du Droit en Afrique ', '', 'Système Comptable pour l\'Organisation et l\'Harmonisation en Afrique du Droit des Affaires ', '', 'Système Centralisée pour l\'Organisation et l\'Harmonisation du Droit en Afrique ', '', 'B', 7, 2, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(167, 1, 'Lequel de ces pays a organisé la CAN de football 1980 ? ', '', 'Cameroun ', '', 'Algérie ', '', 'Nigeria ', '', 'C', 5, 2, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(168, 1, 'Quel pays a organisé la première édition de la CAN de football ?', '', 'ÉTHIOPIE', '', 'SOUDAN', '', 'ÉGYPTE', '', 'A', 5, 2, 1, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(169, 1, 'Laquelle de ces couleurs se trouve sur le drapeau du Burundi ? ', '', 'Bleu ', '', 'Blanc ', '', 'Jaune ', '', 'B', 7, 2, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(170, 1, 'Quel est l\'intrus ? ', '', 'Voilier ', '', 'Voiture ', '', 'Barque', '', 'B', 7, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(171, 1, 'Quel est l\'intrus ? ', '', 'Verre ', '', 'Gobelet ', '', 'Cuillère ', '', 'C', 7, 1, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(172, 16, 'laquelle de ces couleurs n\'est pas sur le drapeau ivoirien ?', NULL, 'vert', NULL, 'blanc', NULL, 'bleu', NULL, 'C', NULL, NULL, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON'),
(173, 1, 'Qui a inventé l\'ampoule ?', '', 'JAMES WATT', '', 'ADAM SMITH', '', 'THOMAS EDISON', '', 'C', 7, 2, 2, 'NOT SELECTED', 'NOT SELECTED', 'VALIDE'),
(174, 5, 'Qui a inventé l\'ampoule ?', NULL, 'ADAM SMITH', NULL, 'JAMES WATT', NULL, 'THOMAS EDISON', NULL, 'B', NULL, NULL, 1, 'NOT SELECTED', 'NOT SELECTED', 'BROUILLON');

--
-- Déclencheurs `question`
--
DELIMITER $$
CREATE TRIGGER `trigger_reencode_question` BEFORE INSERT ON `question` FOR EACH ROW BEGIN 
	SET new.question_fr 	 = REPLACE(new.question_fr, 'Ã©', 'é'),
	 new.question_fr 	 = REPLACE(new.question_fr, 'Ã¨', 'è'),
	 new.question_fr  	 = REPLACE(new.question_fr, 'Ãª', 'ê'),
	 new.question_fr      = REPLACE(new.question_fr, 'Ã¯', 'ï'),
	 new.question_fr      = REPLACE(new.question_fr, 'Ã®', 'î'),
	 new.question_fr      = REPLACE(new.question_fr, 'Ã ', 'à'),
	 new.question_fr      = REPLACE(new.question_fr, 'Ã´', 'ô'),
	 new.proposition_a_fr = REPLACE(new.proposition_a_fr, 'Ã©', 'é'),
	 new.proposition_a_fr = REPLACE(new.proposition_a_fr, 'Ã¨', 'è'),
	 new.proposition_a_fr = REPLACE(new.proposition_a_fr, 'Ãª', 'ê'),
	 new.proposition_a_fr = REPLACE(new.proposition_a_fr, 'Ã¯', 'ï'),
	 new.proposition_a_fr = REPLACE(new.proposition_a_fr, 'Ã®', 'î'),
	 new.proposition_a_fr = REPLACE(new.proposition_a_fr, 'Ã ', 'à'),
	 new.proposition_a_fr = REPLACE(new.proposition_a_fr, 'Ã´', 'ô'),
	 new.proposition_b_fr = REPLACE(new.proposition_b_fr, 'Ã©', 'é'),
	 new.proposition_b_fr = REPLACE(new.proposition_b_fr, 'Ã¨', 'è'),
	 new.proposition_b_fr = REPLACE(new.proposition_b_fr, 'Ãª', 'ê'),
	 new.proposition_b_fr = REPLACE(new.proposition_b_fr, 'Ã¯', 'ï'),
	 new.proposition_b_fr = REPLACE(new.proposition_b_fr, 'Ã®', 'î'),
	 new.proposition_b_fr = REPLACE(new.proposition_b_fr, 'Ã ', 'à'),
	 new.proposition_b_fr = REPLACE(new.proposition_b_fr, 'Ã´', 'ô'),
	 new.proposition_c_fr = REPLACE(new.proposition_c_fr, 'Ã©', 'é'),
	 new.proposition_c_fr = REPLACE(new.proposition_c_fr, 'Ã¨', 'è'),
	 new.proposition_c_fr = REPLACE(new.proposition_c_fr, 'Ãª', 'ê'),
	 new.proposition_c_fr = REPLACE(new.proposition_c_fr, 'Ã¯', 'ï'),
	 new.proposition_c_fr = REPLACE(new.proposition_c_fr, 'Ã®', 'î'),
	 new.proposition_c_fr = REPLACE(new.proposition_c_fr, 'Ã ', 'à'),
	 new.proposition_c_fr = REPLACE(new.proposition_c_fr, 'Ã´', 'ô');
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `quiz`
--

CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `type_jeu` varchar(50) DEFAULT NULL,
  `objectif_financier` int(11) DEFAULT NULL,
  `quiz_score` int(11) DEFAULT NULL,
  `quiz_compteur_question` int(11) DEFAULT NULL,
  `quiz_date` datetime DEFAULT NULL,
  `quiz_statut` enum('BROUILLON','EN COURS','TERMINE') DEFAULT 'BROUILLON'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `rcp_historique_connexion`
--

CREATE TABLE `rcp_historique_connexion` (
  `rcp_historique_connexion_id` int(11) NOT NULL,
  `rcp_historique_connexion_login` varchar(100) DEFAULT NULL,
  `rcp_historique_connexion_password` varchar(100) DEFAULT NULL,
  `rcp_historique_connexion_etat` varchar(100) DEFAULT NULL,
  `rcp_historique_connexion_date` datetime DEFAULT NULL,
  `rcp_historique_connexion_date_modification` datetime DEFAULT NULL,
  `rcp_historique_connexion_ip` varchar(255) DEFAULT NULL,
  `rcp_historique_connexion_meta` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `rcp_historique_connexion`
--

INSERT INTO `rcp_historique_connexion` (`rcp_historique_connexion_id`, `rcp_historique_connexion_login`, `rcp_historique_connexion_password`, `rcp_historique_connexion_etat`, `rcp_historique_connexion_date`, `rcp_historique_connexion_date_modification`, `rcp_historique_connexion_ip`, `rcp_historique_connexion_meta`) VALUES
(1, 'krak225@gmail.com', '$2y$10$Zpc.DHlN/YsIKk2mlubEQuXlhnMx0QbzJxlIiOnzdvbqq7VcNXS7a', 'AUTHENTICATED', '2022-07-31 00:12:15', '2022-07-31 00:12:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0'),
(2, 'djebaso@gmail.com', '$2y$10$F9QPmHjY7EI4d/VyUEXe6uROjLbVgA0T08Vmq2j63ajq43n0M1kRK', 'ATTEMPT', '2022-07-31 00:21:54', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0'),
(3, 'djebaso@gmail.com', '$2y$10$1fXiDXECS6vKES3d3ta2jOUFp8Jb2tcrx/fsbjb6QOCCruffn.Iui', 'ATTEMPT', '2022-07-31 19:54:49', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0'),
(4, 'djebaso@gmail.com', '$2y$10$n/7dyXc/Yk1HlFMMkcZFzeRdSdK1/IOe0mK3yhfaSnLyRo8jrx7eO', 'ATTEMPT', '2022-07-31 20:10:16', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0'),
(5, 'djebaso@gmail.com', '$2y$10$MbZO2SIb5taThTPK95.dJ.dql6y8JXKp2DzELvhW7gj6sd69Lfa4O', 'ATTEMPT', '2022-07-31 20:10:21', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0'),
(6, 'djebaso@gmail.com', '$2y$10$AMzqpUV7/9rijvN5CcQC4.4YkoDMYFjqrMi3EVFRtuy/hUBJy1XR.', 'ATTEMPT', '2022-07-31 20:10:33', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0'),
(7, 'krak225@gmail.com', '$2y$10$HA9AW4ln7bVOWFssyDDSruh/Lb3vXTiwx5PET3ZQGN6LyVPW6JoWy', 'AUTHENTICATED', '2022-07-31 20:11:01', '2022-07-31 20:11:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0'),
(8, 'krak225@gmail.com', '$2y$10$2Y086qBSvWTbEBPWJ.61iOsmXPpnFXv3tSSnAjCQ0ZJfvzuSG3mKu', 'AUTHENTICATED', '2022-07-31 20:58:12', '2022-07-31 20:58:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0'),
(9, 'krak225@gmail.com', '$2y$10$vFlsz5Z20MZiRphwWLoFXOp1T7M0DADAeYJVJGLSzVBDmTzWmi9dq', 'AUTHENTICATED', '2022-07-31 23:08:45', '2022-07-31 23:08:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0'),
(10, 'marc@gmail.com', '$2y$10$WlZLdmytInpV5KmF5dlu3OJWKI1CHVYXwFQhnA6wfbZGRgMLJKs3C', 'AUTHENTICATED', '2022-08-01 06:23:38', '2022-08-01 06:23:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0'),
(11, 'emma@gmail.com', '$2y$10$XwyvSKEoxIIlmTSiPQJkbOqt5SZkzqBpSLyy6ettO6b1VJgdKbARm', 'AUTHENTICATED', '2022-08-01 11:06:36', '2022-08-01 11:06:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36 Edg/103.0.1264.71'),
(12, 'krak225@gmail.com', '$2y$10$5T2OQRZcpQqxqKO7SYUQzOdg1O1m5ovIvNCwzG72z7WVKMMDzYHE6', 'AUTHENTICATED', '2022-08-01 12:20:15', '2022-08-01 12:20:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0'),
(13, 'richmond', '$2y$10$W5r..NxWKWZLFC.ueRlU2edjp8IQWeErKdMkQHCnHRbiVl.fm1bai', 'ATTEMPT', '2022-08-03 02:51:51', NULL, '196.47.133.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.62'),
(14, 'krak225@gmail.com', '$2y$10$d1GAapZ5W4exZdTz0omBSeHAO2IobmEvlxcLTRtgOvZniKoZJ4wEC', 'AUTHENTICATED', '2022-08-03 08:38:35', '2022-08-03 08:38:35', '196.47.133.30', 'Mozilla/5.0 (Linux; Android 12; SM-A127F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36'),
(15, 'krak225@gmail.com', '$2y$10$br53i8KN2FYR/Akeb49DO.UrJ2lub8Io.mPg.biX6pDaQHreqNPhi', 'AUTHENTICATED', '2022-08-03 20:47:01', '2022-08-03 20:47:01', '196.47.133.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0'),
(16, 'krak225@gmail.com', '$2y$10$qsp4rTm6cWcUm2IbfP.r4et6f2IZGvmAYA37ZD619mmTqiq5/XPGq', 'AUTHENTICATED', '2022-08-04 05:10:27', '2022-08-04 05:10:27', '196.47.133.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0');

-- --------------------------------------------------------

--
-- Structure de la table `retrait`
--

CREATE TABLE `retrait` (
  `retrait_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `retrait_montant` double NOT NULL,
  `retrait_date_demande` datetime DEFAULT NULL,
  `retrait_date_validation` datetime DEFAULT NULL,
  `retrait_statut` enum('BROUILLON','VALIDE','REJETE') NOT NULL DEFAULT 'BROUILLON'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `retrait`
--

INSERT INTO `retrait` (`retrait_id`, `user_id`, `retrait_montant`, `retrait_date_demande`, `retrait_date_validation`, `retrait_statut`) VALUES
(1, 6, 50000, '2022-03-05 10:23:19', NULL, 'BROUILLON'),
(2, 5, 50000, '2022-03-23 08:30:48', NULL, 'BROUILLON'),
(3, 16, 45000, '2022-05-22 22:48:52', NULL, 'BROUILLON');

-- --------------------------------------------------------

--
-- Structure de la table `souscription`
--

CREATE TABLE `souscription` (
  `souscription_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `beneficiaire_user_id` int(11) DEFAULT NULL,
  `souscription_quantite` int(11) DEFAULT NULL,
  `souscription_montant` double DEFAULT NULL,
  `souscription_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `souscription`
--

INSERT INTO `souscription` (`souscription_id`, `user_id`, `beneficiaire_user_id`, `souscription_quantite`, `souscription_montant`, `souscription_date`) VALUES
(1, 13, 13, 1, 200, '2019-11-25 17:59:55'),
(2, 5, 5, 1, 200, '2019-11-25 18:07:10'),
(3, 6, 6, 1, 200, '2019-11-25 18:43:34'),
(4, 5, 5, 5, 1000, '2019-11-25 21:51:46'),
(5, 2, 2, 2, 400, '2019-11-26 09:22:52'),
(6, 6, 6, 2, 400, '2019-11-26 11:23:11'),
(7, 14, 14, 5, 1000, '2019-11-26 16:56:38'),
(8, 5, 5, 2, 400, '2021-09-01 15:49:26'),
(9, 16, 16, 5, NULL, '2022-07-14 23:17:16');

-- --------------------------------------------------------

--
-- Structure de la table `tb_password_resets`
--

CREATE TABLE `tb_password_resets` (
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tb_profil`
--

CREATE TABLE `tb_profil` (
  `profil_id` int(11) NOT NULL,
  `profil_libelle` varchar(50) DEFAULT NULL,
  `profil_statut` enum('VALIDE','BROUILLON','SUPPRIME') DEFAULT 'VALIDE'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tb_profil`
--

INSERT INTO `tb_profil` (`profil_id`, `profil_libelle`, `profil_statut`) VALUES
(1, 'ADMINISTRATEUR', 'VALIDE'),
(2, 'UTILISATEUR', 'VALIDE');

-- --------------------------------------------------------

--
-- Structure de la table `tb_users`
--

CREATE TABLE `tb_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_declarant_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `profil_id` int(11) NOT NULL DEFAULT 2,
  `service_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `categorie_personnel_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type_personnel_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `equipe_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `bureauID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `nature_piece_id` int(10) UNSIGNED DEFAULT 0,
  `pays_id` int(10) UNSIGNED DEFAULT 0,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenoms` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `societe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_importateur` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_compte` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_personne_id` int(11) DEFAULT NULL,
  `civilite` enum('M.','Mme','Mlle') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lieu_naissance` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `date_embauche` date DEFAULT NULL,
  `fonction` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `libelle_interesse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone_fixe` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `matricule` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero_piece` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fichier_piece_identite` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero_registre_commerce` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fichier_registre_commerce` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero_compte_contribuable` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse_postale` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `situation_geographique` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `ip_derniere_connexion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_derniere_connexion` datetime DEFAULT NULL,
  `statut_connexion` enum('CONNECTE','DECONNECTE') COLLATE utf8mb4_unicode_ci DEFAULT 'DECONNECTE',
  `statut_signature` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statut` enum('VALIDE','SUPPRIME') COLLATE utf8mb4_unicode_ci DEFAULT 'VALIDE'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tb_users`
--

INSERT INTO `tb_users` (`id`, `type_declarant_id`, `profil_id`, `service_id`, `categorie_personnel_id`, `type_personnel_id`, `equipe_id`, `bureauID`, `nature_piece_id`, `pays_id`, `nom`, `prenoms`, `societe`, `code_importateur`, `type_compte`, `type_personne_id`, `civilite`, `lieu_naissance`, `date_naissance`, `date_embauche`, `fonction`, `titre`, `libelle_interesse`, `telephone`, `telephone_fixe`, `matricule`, `numero_piece`, `fichier_piece_identite`, `numero_registre_commerce`, `fichier_registre_commerce`, `numero_compte_contribuable`, `photo`, `signature`, `adresse_postale`, `adresse_email`, `situation_geographique`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `ip_derniere_connexion`, `date_derniere_connexion`, `statut_connexion`, `statut_signature`, `statut`) VALUES
(1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'KOUASSI', 'RICHMOND', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'krak225@gmail.com', '$2y$10$fZhXFwI.ut.FPElsY9Fk1eItums4OvPFpD.AqAqTD43x8ZPZQAmG2', NULL, '2022-07-30 09:22:41', '2022-07-30 09:22:41', NULL, NULL, 'DECONNECTE', NULL, 'VALIDE'),
(2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'ACHY', 'CHRISTIAN', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'admin@crakgame.com', '$2y$10$fZhXFwI.ut.FPElsY9Fk1eItums4OvPFpD.AqAqTD43x8ZPZQAmG2', NULL, '2022-07-30 09:56:28', '2022-07-30 09:56:28', NULL, NULL, 'DECONNECTE', NULL, 'VALIDE'),
(3, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'KOUASSI', 'MARC', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'marc@gmail.com', '$2y$10$fZhXFwI.ut.FPElsY9Fk1eItums4OvPFpD.AqAqTD43x8ZPZQAmG2', NULL, '2022-07-31 17:55:31', '2022-07-31 17:55:31', NULL, NULL, 'DECONNECTE', NULL, 'VALIDE'),
(4, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'BOUSSOU', 'EMMA', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'emma@gmail.com', '$2y$10$fZhXFwI.ut.FPElsY9Fk1eItums4OvPFpD.AqAqTD43x8ZPZQAmG2', NULL, '2022-08-01 10:46:32', '2022-08-01 10:46:32', NULL, NULL, 'DECONNECTE', NULL, 'VALIDE'),
(5, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'DOVOGUIE', 'FLORA', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'flora@gmail.com', '$2y$10$fZhXFwI.ut.FPElsY9Fk1eItums4OvPFpD.AqAqTD43x8ZPZQAmG2', NULL, '2022-08-01 11:12:48', '2022-08-01 11:12:48', NULL, NULL, 'DECONNECTE', NULL, 'VALIDE'),
(6, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Coulibaly', 'Audrey', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'audrey@gmail.com', '$2y$10$fZhXFwI.ut.FPElsY9Fk1eItums4OvPFpD.AqAqTD43x8ZPZQAmG2', NULL, '2022-08-01 14:15:35', '2022-08-01 14:15:35', NULL, NULL, 'DECONNECTE', NULL, 'VALIDE'),
(7, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'KEITA', 'MARIAM EPSE DOUMBIA', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'mariam@gmail.com', '$2y$10$fZhXFwI.ut.FPElsY9Fk1eItums4OvPFpD.AqAqTD43x8ZPZQAmG2', NULL, '2022-08-03 06:55:23', '2022-08-03 06:55:23', NULL, NULL, 'DECONNECTE', NULL, 'VALIDE');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `profil_id` int(11) NOT NULL DEFAULT 2,
  `nom` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenoms` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sexe` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `telephone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse_email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pseudo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_postal` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ville` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pays_origine_id` int(11) DEFAULT NULL,
  `pays_residence_id` int(11) DEFAULT NULL,
  `photo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'avatar.jpg',
  `lang_code` enum('fr','en') COLLATE utf8mb4_unicode_ci DEFAULT 'fr',
  `lang_libelle` enum('Français','Anglais') COLLATE utf8mb4_unicode_ci DEFAULT 'Français',
  `devise` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_points` int(11) DEFAULT 0,
  `total_points_test` int(11) DEFAULT 0,
  `total_points_duel` int(11) DEFAULT 0,
  `score_general` int(11) DEFAULT 0,
  `souscription` int(11) DEFAULT 0,
  `jocker_question` int(11) DEFAULT 0,
  `jocker_duel` int(11) DEFAULT 0,
  `jocker_jeu` int(11) DEFAULT 0,
  `money` float NOT NULL DEFAULT 0,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parrain` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `statut` enum('VALIDE','SUPPRIME') COLLATE utf8mb4_unicode_ci DEFAULT 'VALIDE',
  `statut_abonnement` enum('ACTIVE','DESACTIVE') COLLATE utf8mb4_unicode_ci DEFAULT 'DESACTIVE',
  `statut_abonnement_chap` enum('ACTIVE','DESACTIVE') COLLATE utf8mb4_unicode_ci DEFAULT 'DESACTIVE',
  `statut_matrice` enum('Hors matrice','Dans') COLLATE utf8mb4_unicode_ci DEFAULT 'Hors matrice',
  `statut_connexion` enum('DECONNECTE','CONNECTE') COLLATE utf8mb4_unicode_ci DEFAULT 'DECONNECTE',
  `communaute` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `profil_id`, `nom`, `prenoms`, `sexe`, `date_naissance`, `telephone`, `adresse_email`, `pseudo`, `adresse`, `code_postal`, `ville`, `pays_origine_id`, `pays_residence_id`, `photo`, `lang_code`, `lang_libelle`, `devise`, `total_points`, `total_points_test`, `total_points_duel`, `score_general`, `souscription`, `jocker_question`, `jocker_duel`, `jocker_jeu`, `money`, `email`, `password`, `remember_token`, `api_token`, `parrain`, `created_at`, `updated_at`, `statut`, `statut_abonnement`, `statut_abonnement_chap`, `statut_matrice`, `statut_connexion`, `communaute`) VALUES
(1, 2, 'Kouassi', 'Armand', 'Masculin', '2017-07-04', '04783689', 'richmond@gmail.com', 'krak225', 'PO Box 198 Porto', NULL, 'Porto', 36, 175, '30.jpg', 'en', 'Anglais', 'EUR', 0, 0, 0, 0, 0, 0, 0, 0, 0, 'krak225', '$2y$10$RSLmbj5y8mE4YK/BKsp/6.dSiZzTuqLL3FS564T9lBBJ2fQPA4JMS', 'A6sUiQhGzoupBKizNzgP1luoZWPAzzRAyEE9o72W9PH8HXeNCbHgWi7BIxSO', NULL, 'bacouly', '2018-07-14 13:56:34', '2018-09-09 12:13:18', 'VALIDE', 'DESACTIVE', 'DESACTIVE', 'Hors matrice', 'DECONNECTE', 'Génies'),
(2, 2, 'Gué', 'Dako Maryse', 'Feminin', '2018-07-14', '56152799', 'maryse@gmail.com', 'angela', 'BP 1038 Paris', NULL, 'Paris', 18, 10, 'images_020.png', NULL, 'Français', 'FCFA', 0, 0, 0, 0, 1, 5, 3, 0, 300, 'angela', '$2y$10$RSLmbj5y8mE4YK/BKsp/6.dSiZzTuqLL3FS564T9lBBJ2fQPA4JMS', 'tcwhajdlHVqACGxFqeBdCcJqoW1HCXPm4g2v8HvhNwuU5qDPjaK3rp5KVNxI', 'NEuUO0IRbggYmkdjYXCnVAoLzbZjxubOcC5vzDN9zBLL0NWe1LrV7O0MCSWA', NULL, '2018-07-08 19:23:14', '2022-08-11 22:19:13', 'VALIDE', 'ACTIVE', 'ACTIVE', 'Hors matrice', 'CONNECTE', 'Pro'),
(3, 2, 'Coulibaly', 'Bakary', 'Masculin', '2018-07-14', '04000000', 'bakary@gmail.com', 'bakouly', 'PO Box 218 NY', NULL, 'New York', 18, 18, 'images_175.jpg', 'en', 'Anglais', 'XOF', 0, 0, 0, 0, 0, 0, 0, 0, 0, 'bakouly', '$2y$10$RSLmbj5y8mE4YK/BKsp/6.dSiZzTuqLL3FS564T9lBBJ2fQPA4JMS', 'ME2E7j8DMjsvhnJd9xXZOGlFSbXMXdz8faMbefhAOWTahvk8THVZ043UZmrN', NULL, NULL, '2018-06-16 09:30:55', '2018-12-22 15:39:52', 'VALIDE', 'DESACTIVE', 'DESACTIVE', 'Hors matrice', 'DECONNECTE', NULL),
(5, 2, 'KOUASSI', 'RICHMOND', 'KOUASSI', '2018-02-06', '033928442', 'krak225@gmail.com', 'richmond', '01 BP 1024 Abidjan 01', NULL, 'Abidjan', 1, 6, 'images_013 (2).png', 'fr', 'Français', 'FCFA', 0, 28600, 50, 0, 3, 5, 3, 0, 461900, 'richmond', '$2y$10$RSLmbj5y8mE4YK/BKsp/6.dSiZzTuqLL3FS564T9lBBJ2fQPA4JMS', 'YKU2O3H3fNW5H5zz2xQkjs0MVnQgdkpusuEnLkRMk84LiivashT4tPmrg0zK', 'fASYOPjPJZvDqiY9XUGKsqcjoIrY0pdYIBzT9bwpYc6uzzCJiQ8ymfejDw9k', NULL, '2019-03-08 21:31:43', '2022-08-30 13:50:18', 'VALIDE', 'ACTIVE', 'ACTIVE', 'Hors matrice', 'CONNECTE', 'Pro'),
(6, 2, 'N\'goran', 'Kouadio Honoré', 'N\'goran', '1992-01-01', '0708260554', 'kpebriki@yahoo.fr', 'ngoran', 'Koumassi', NULL, 'Abidjan', 51, 51, 'images_016.jpg', 'en', 'Anglais', 'FCFA', 0, 4500, 0, 0, 1, 0, 0, 0, 70900, 'ngoran', '$2y$10$OONvHBW0r3kaKL1XtKOC0ObSCPeiRESMRZJwF9lQVYd/fuXbHc6SW', 'dHmgfRyG1cZ8C2HU0aANHJLU43i7zvACuYAt62QwIvo7ILgfd5nARMXiR6MF', '2yPTNtdgzIeRilBDzerzc4StREvxCtWSAS77ZZA9rLO5hic9PJ69y7G4vcMZ', NULL, '2019-03-14 21:04:44', '2022-07-13 21:11:34', 'VALIDE', 'ACTIVE', 'ACTIVE', 'Hors matrice', 'CONNECTE', 'Pro'),
(7, 2, 'Koffi', 'Marius', NULL, NULL, '04512451', 'jeu.christian@outlook.fr', 'marius', NULL, NULL, 'Paris', NULL, 75, NULL, 'fr', 'Français', 'EUR', 0, 0, 0, 0, 0, 0, 0, 0, 0, 'marius', '$2y$10$DcWjkhlPBrz/w3xYEEMB0OPBpxfj.AulGZ.toq/hUAe2NrsvaRN16', 'r5h8Pd72IHqHzNwFU1KY70upgJ4S9ZISlHreCeKpiq0yz6cZhCgsVcHM4m31', NULL, NULL, '2019-11-12 13:14:13', '2019-11-12 13:14:13', 'VALIDE', 'DESACTIVE', 'DESACTIVE', 'Hors matrice', 'DECONNECTE', NULL),
(8, 2, 'Achy', 'christian', NULL, NULL, '0244545', 'christian@yahoo.fr', 'mariam', NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 'Français', 'XOF', 0, 0, 0, 0, 0, 0, 0, 0, 0, 'mariam', '$2y$10$K.1J8HfjN8nGttBnDce5wOG7CLpBBDZWyXSrJ3CKPCHbujyvW9a7.', 'WS1meMXXDTuABeTfIdr63Xm281AgRp1cQctTZy8pqi3Y3Twb2ng6BVUNDmDc', NULL, NULL, '2019-11-12 13:37:44', '2019-11-12 13:38:36', 'VALIDE', 'DESACTIVE', 'DESACTIVE', 'Hors matrice', 'DECONNECTE', NULL),
(9, 2, 'ATTOUNGBRE', 'KOUAKOU JULES', NULL, NULL, '01010101', 'attoungbre@yahoo.fr', 'attoungbre', NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 'Français', 'XOF', 0, 0, 0, 0, 0, 0, 0, 0, 0, 'attoungbre', '$2y$10$jMKdRV2tVJxH0nzOc9.zzu1vueAdAh6818ZabGeZYFBIwBkFtl/46', NULL, NULL, NULL, '2019-11-12 13:40:38', '2019-11-12 14:08:06', 'VALIDE', 'DESACTIVE', 'DESACTIVE', 'Hors matrice', 'DECONNECTE', NULL),
(10, 1, 'Administrateur', '', NULL, NULL, NULL, NULL, 'administrateur', NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 'Français', 'XOF', 0, 0, 0, 0, 0, 0, 0, 0, 0, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, 'VALIDE', 'DESACTIVE', 'DESACTIVE', 'Hors matrice', 'DECONNECTE', NULL),
(11, 2, NULL, NULL, NULL, NULL, '04512451', NULL, 'mariam2', NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 'Français', 'XOF', 0, 0, 0, 0, 0, 0, 0, 0, 0, 'mariam2', '$2y$10$f/VWakGQwxrcE7Y9jsYCaeQvAFfO0pohdcRYdoLntbrB7aENvt0jK', 'ykMWTmrTWsvtsBpV9Ujhm6RgmxfIr3sXs3ND0VQMe7hiJu2fkZASUfiNRsX2', NULL, NULL, '2019-11-25 15:34:19', '2019-11-25 15:34:19', 'VALIDE', 'DESACTIVE', 'DESACTIVE', 'Hors matrice', 'DECONNECTE', NULL),
(12, 2, NULL, NULL, NULL, NULL, '01010101', NULL, 'krak', NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 'Français', 'XOF', 0, 0, 0, 0, 0, 0, 0, 0, 0, 'krak', '$2y$10$dOZ8eKTUsxL6vvPb4GVKu.TtN/uDhVzhdWrk1QSTm4e2zCRvUzSdG', 'yWhzAKJzY9oG1w1z1GjDIsLSLdXoft0i8x2j5w616TnNBskrb8eWa5KE4Bx5', NULL, NULL, '2019-11-25 15:35:09', '2019-11-25 15:35:09', 'VALIDE', 'DESACTIVE', 'DESACTIVE', 'Hors matrice', 'DECONNECTE', NULL),
(13, 2, NULL, NULL, NULL, NULL, '01244545', NULL, 'fondio', NULL, NULL, NULL, NULL, NULL, 'images_196.jpg', 'fr', 'Français', 'XOF', 0, 0, 0, 0, 0, 0, 3, 0, 800, 'fondio', '$2y$10$3C6CovblE.tyTK3Rmx28cuHVaVcm7YZzfKcj6d6pp73RFLCUaWv6u', 'EGA1sPmPtBqoTkVeDoIA8ie8wuTuQO3g2pzPoN8MIEisAZqwZbKlo6Ld1seu', 'H2uU7MY6j1D97k62QtBu02t78eM50n9QlwJw2n8tkBuC9GdRmmUoCHsMQPS1', NULL, '2019-11-25 15:36:25', '2022-06-04 10:02:48', 'VALIDE', 'DESACTIVE', 'DESACTIVE', 'Hors matrice', 'CONNECTE', NULL),
(14, 1, 'Administrateur', NULL, NULL, '0000-00-00', '08779408', NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 'Français', 'XOF', 0, 0, 0, 0, 5, 0, 0, 0, 400, 'administrateur', '$2y$10$lFR39tqpJopl28Jo5NilI.29Te3sPINzApu2hAXXIyzBe2O1NSHvO', 'DtCpEaly7sTjy4v14ZTuGeMB6XmlQCLFpWzmYTy2nn20xq4WrmEpUv9TGmTu', NULL, NULL, '2019-11-26 14:03:57', '2019-11-26 14:56:42', 'VALIDE', 'ACTIVE', 'ACTIVE', 'Hors matrice', 'DECONNECTE', NULL),
(15, 2, 'KOFFI', 'FABRICE', 'KOFFI', NULL, '0748569061', NULL, 'fabrice', NULL, NULL, 'Abidjan', NULL, NULL, '6.jpg', 'fr', 'Français', 'XOF', 0, 6700, 0, 0, 0, 0, 0, 0, 14400, 'fabrice', '$2y$10$6RIlwDqbePl82F983vCJY..c6qYz6tlG4GnS5/.7WXMIgjrbnC6zy', NULL, 'QqJc8BRd6G7XKgO8zG7Ft63MgEHhrtA6LlQCFmeR8Q7o9AJNJdaTVqSZnvVk', NULL, '2022-03-05 00:52:35', '2022-06-04 10:18:14', 'VALIDE', 'DESACTIVE', 'DESACTIVE', 'Hors matrice', 'CONNECTE', NULL),
(16, 2, 'Krishnov', NULL, 'Krishnov', NULL, '050000000', NULL, 'Dior', NULL, NULL, 'Moscou', NULL, NULL, 'images_080.jpg', 'fr', 'Français', 'XOF', 0, 81600, 0, 0, 4, 0, 3, 0, 74600, 'Dior', '$2y$10$ZQZS7vh1TdFvAYr7VZlJrew51rqu57/T3z6Z6qz34cdgInlJBb1p6', NULL, 'lNUdo6OJflcAf3IXBuHSnuZy3IHTG4hffaVxrtfhvNOcKyxJdpCgXYoyJB6i', NULL, '2022-03-23 08:05:12', '2022-08-26 16:16:14', 'VALIDE', 'ACTIVE', 'DESACTIVE', 'Hors matrice', 'CONNECTE', NULL),
(17, 2, NULL, NULL, NULL, NULL, '05555254485', NULL, 'sheney', NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 'Français', 'XOF', 0, 0, 0, 0, 0, 0, 0, 0, 0, 'sheney', '$2y$10$/7849R6kTEq3SDWulbPKYO3MKo67zOH24KVKNb/CD.j3Sc.PT9LZ.', NULL, NULL, NULL, '2022-04-02 19:51:32', '2022-04-02 19:51:32', 'VALIDE', 'DESACTIVE', 'DESACTIVE', 'Hors matrice', 'DECONNECTE', NULL),
(18, 2, NULL, NULL, NULL, NULL, '0506070809', NULL, 'Yafohi', NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 'Français', 'XOF', 0, 100, 0, 0, 0, 0, 0, 0, 0, 'Yafohi', '$2y$10$mhGToMYl5TkqB9PjWYXfS.sM8.iKZ.mHOJggXA1phO3XHcX9Nzb5y', NULL, 'YVcgZDWicot3neoWDLiTEk8XnptaoH86Nc0Bdm6cRtqopdixteHvMks7pIfp', NULL, '2022-05-01 10:05:29', '2022-05-01 10:06:38', 'VALIDE', 'DESACTIVE', 'DESACTIVE', 'Hors matrice', 'CONNECTE', NULL),
(19, 2, 'OKALEME', 'MARINA', 'OKALEME', NULL, '07070707007', NULL, 'marina', 'Yopougon', NULL, 'Abidjan', NULL, NULL, 'images_196.jpg', 'fr', 'Français', 'XOF', 0, 0, 0, 0, 0, 0, 0, 0, 0, 'marina', '$2y$10$5VlXzLpMmoY9d.1VbDD7S.swqLwbUQeBwHpbpETHcJZc2v7ceJHKS', NULL, '6QepwaQkDrhz2pOu5dt8bvYbuoEFDGxRDmN0X48tKUKVa0PKODg5X3yF1hpm', NULL, '2022-06-04 10:05:43', '2022-06-04 10:23:53', 'VALIDE', 'DESACTIVE', 'DESACTIVE', 'Hors matrice', 'CONNECTE', NULL),
(20, 2, NULL, NULL, NULL, NULL, '0101010202', NULL, 'Sosa', NULL, NULL, NULL, NULL, NULL, 'avatar.jpg', 'fr', 'Français', 'XOF', 0, 0, 0, 0, 0, 0, 0, 0, 9700, 'Sosa', '$2y$10$uWY7WdgrvW0PHPTz2rcjs.DdcBXyHpY89V41rLJ216PVWi1Uf/Szy', NULL, 'fW5jQW3roVSZitsdkJBmEDf7ZaryNGkRhzzcacbZSM5N7t8XkbUlFzTuCCXv', NULL, '2022-07-13 19:50:43', '2022-08-14 10:24:22', 'VALIDE', 'DESACTIVE', 'DESACTIVE', 'Hors matrice', 'CONNECTE', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `abonnement`
--
ALTER TABLE `abonnement`
  ADD PRIMARY KEY (`abonnement_id`);

--
-- Index pour la table `abonnement_chap`
--
ALTER TABLE `abonnement_chap`
  ADD PRIMARY KEY (`abonnement_chap_id`);

--
-- Index pour la table `avatar`
--
ALTER TABLE `avatar`
  ADD KEY `Index 1` (`id`);

--
-- Index pour la table `cagnotte`
--
ALTER TABLE `cagnotte`
  ADD PRIMARY KEY (`cagnotte_id`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`categorie_id`),
  ADD UNIQUE KEY `categorie_id` (`categorie_id`);

--
-- Index pour la table `chap`
--
ALTER TABLE `chap`
  ADD PRIMARY KEY (`chap_id`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`commande_id`);

--
-- Index pour la table `concours`
--
ALTER TABLE `concours`
  ADD PRIMARY KEY (`concours_id`);

--
-- Index pour la table `defi`
--
ALTER TABLE `defi`
  ADD PRIMARY KEY (`defi_id`);

--
-- Index pour la table `depot`
--
ALTER TABLE `depot`
  ADD KEY `Index 1` (`depot_id`);

--
-- Index pour la table `detail_commande`
--
ALTER TABLE `detail_commande`
  ADD PRIMARY KEY (`detail_commande_id`);

--
-- Index pour la table `devise`
--
ALTER TABLE `devise`
  ADD PRIMARY KEY (`devise_id`),
  ADD UNIQUE KEY `money_id` (`devise_id`);

--
-- Index pour la table `duel`
--
ALTER TABLE `duel`
  ADD PRIMARY KEY (`duel_id`);

--
-- Index pour la table `duel_question`
--
ALTER TABLE `duel_question`
  ADD PRIMARY KEY (`duel_question_id`);

--
-- Index pour la table `entrainement`
--
ALTER TABLE `entrainement`
  ADD PRIMARY KEY (`entrainement_id`);

--
-- Index pour la table `jockerquestion`
--
ALTER TABLE `jockerquestion`
  ADD KEY `Index 1` (`jockerquestion_id`);

--
-- Index pour la table `kw_administrateur`
--
ALTER TABLE `kw_administrateur`
  ADD PRIMARY KEY (`kw_administrateur_id`);

--
-- Index pour la table `langue`
--
ALTER TABLE `langue`
  ADD PRIMARY KEY (`langue_id`),
  ADD UNIQUE KEY `langue_id` (`langue_id`);

--
-- Index pour la table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`livre_id`),
  ADD KEY `FK_livre_concours` (`concours_id`);

--
-- Index pour la table `niveau`
--
ALTER TABLE `niveau`
  ADD PRIMARY KEY (`niveau_id`);

--
-- Index pour la table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`pays_id`),
  ADD UNIQUE KEY `alpha2` (`pays_alpha2`),
  ADD UNIQUE KEY `alpha3` (`pays_alpha3`),
  ADD UNIQUE KEY `code_unique` (`pays_code`);

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quiz_id`) USING BTREE;

--
-- Index pour la table `rcp_historique_connexion`
--
ALTER TABLE `rcp_historique_connexion`
  ADD PRIMARY KEY (`rcp_historique_connexion_id`) USING BTREE;

--
-- Index pour la table `retrait`
--
ALTER TABLE `retrait`
  ADD PRIMARY KEY (`retrait_id`);

--
-- Index pour la table `souscription`
--
ALTER TABLE `souscription`
  ADD PRIMARY KEY (`souscription_id`),
  ADD UNIQUE KEY `id_souscription` (`souscription_id`),
  ADD KEY `users_id` (`user_id`);

--
-- Index pour la table `tb_password_resets`
--
ALTER TABLE `tb_password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Index pour la table `tb_profil`
--
ALTER TABLE `tb_profil`
  ADD PRIMARY KEY (`profil_id`) USING BTREE;

--
-- Index pour la table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `abonnement`
--
ALTER TABLE `abonnement`
  MODIFY `abonnement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT pour la table `abonnement_chap`
--
ALTER TABLE `abonnement_chap`
  MODIFY `abonnement_chap_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `avatar`
--
ALTER TABLE `avatar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cagnotte`
--
ALTER TABLE `cagnotte`
  MODIFY `cagnotte_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `categorie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `chap`
--
ALTER TABLE `chap`
  MODIFY `chap_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `commande_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `concours`
--
ALTER TABLE `concours`
  MODIFY `concours_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `defi`
--
ALTER TABLE `defi`
  MODIFY `defi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT pour la table `depot`
--
ALTER TABLE `depot`
  MODIFY `depot_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `detail_commande`
--
ALTER TABLE `detail_commande`
  MODIFY `detail_commande_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT pour la table `devise`
--
ALTER TABLE `devise`
  MODIFY `devise_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `duel`
--
ALTER TABLE `duel`
  MODIFY `duel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `duel_question`
--
ALTER TABLE `duel_question`
  MODIFY `duel_question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `entrainement`
--
ALTER TABLE `entrainement`
  MODIFY `entrainement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT pour la table `jockerquestion`
--
ALTER TABLE `jockerquestion`
  MODIFY `jockerquestion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `kw_administrateur`
--
ALTER TABLE `kw_administrateur`
  MODIFY `kw_administrateur_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `langue`
--
ALTER TABLE `langue`
  MODIFY `langue_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `livre`
--
ALTER TABLE `livre`
  MODIFY `livre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `niveau`
--
ALTER TABLE `niveau`
  MODIFY `niveau_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `pays`
--
ALTER TABLE `pays`
  MODIFY `pays_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT pour la table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT pour la table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rcp_historique_connexion`
--
ALTER TABLE `rcp_historique_connexion`
  MODIFY `rcp_historique_connexion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `retrait`
--
ALTER TABLE `retrait`
  MODIFY `retrait_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `souscription`
--
ALTER TABLE `souscription`
  MODIFY `souscription_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `tb_profil`
--
ALTER TABLE `tb_profil`
  MODIFY `profil_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `livre`
--
ALTER TABLE `livre`
  ADD CONSTRAINT `FK_livre_concours` FOREIGN KEY (`concours_id`) REFERENCES `concours` (`concours_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
