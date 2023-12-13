-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 07 nov. 2023 à 17:32
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mydb`
--

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `statut` varchar(15) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `date_naissance` date NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `active` tinyint(1) DEFAULT 0,
  `activation_code` varchar(255) NOT NULL,
  `activation_expiry` datetime NOT NULL,
  `activated_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_login_at` datetime DEFAULT NULL,
  `last_logout_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `statut`, `city`, `password`, `date_naissance`, `is_admin`, `active`, `activation_code`, `activation_expiry`, `activated_at`, `created_at`, `updated_at`, `last_login_at`, `last_logout_at`) VALUES
(1, 'yao alle emmanuel', 'biskoty', 'eayehdb@gmail.com', '', 'Abidjan', '$2y$10$W8CkaIEM5eUWTyDG1CY1UuVkTmOcPs3zJyAb3E3g4DrmrXUtjoqtG', '2005-04-15', 0, 1, '', '0000-00-00 00:00:00', NULL, '2023-09-17 23:53:13', '2023-10-28 23:04:35', '2023-10-28 23:04:35', '2023-10-01 08:40:30'),
(2, 'ALLE', 'biskoty2', 'tetchijean47@gmail.com', '', '', '$2y$10$B4Mq/v44xGoLE5cYQ1pekOggjfjh4eVAIhiFuQPwSck7ZV4/032r.', '0000-00-00', 0, 1, '', '0000-00-00 00:00:00', NULL, '2023-09-19 08:56:01', '2023-09-20 23:06:31', NULL, NULL),
(3, 'salut', 'salut', 'Netflixgive290@gmail.com', '', '', '$2y$10$axQYegp6V/5ZJVcjlTHYIeaPHSFzW8r5SPSBZE.y6kTU7IRfseyk.', '0000-00-00', 0, 0, '', '0000-00-00 00:00:00', NULL, '2023-09-19 14:14:50', '2023-09-19 14:15:53', '2023-09-19 14:15:32', '2023-09-19 14:15:53'),
(5, 'biskoto', 'biskot', 'Freenetflix231@gmail.com', '', '', '$2y$10$.vMO4/J3a/92Ic1UDaZqO.XlhHR6z8ltosQj0OAdE/UktW8GnfGAW', '0000-00-00', 1, 0, '$2y$10$x1jnO5bxHoB5V2BxTtE86uge7eukid/PlC.Os/VtWKA/VvagEz4Da', '2023-09-22 01:03:38', NULL, '2023-09-20 23:03:38', '2023-09-30 12:34:50', NULL, NULL),
(19, 'yao alle emmanuel', 'alle', 'biskotycracks@gmail.com', NULL, NULL, '$2y$10$RkVtPhRW0yDqSqEhd2PAMOWA4Agb.RoOlVNNgibmkMc.d0611XYVq', '2023-10-05', 1, 1, '$2y$10$8uXR7qqVZvuHR32j3cdBxuyqDKULIz4/NDTnOE55vCYHr0RqcXb/C', '2023-10-02 11:14:59', '2023-10-01 09:15:49', '2023-10-01 09:14:59', '2023-10-01 09:16:05', '2023-10-01 09:16:05', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
