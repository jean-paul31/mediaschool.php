-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 06 juil. 2020 à 16:23
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mediaschool`
--

-- --------------------------------------------------------

--
-- Structure de la table `children`
--

DROP TABLE IF EXISTS `children`;
CREATE TABLE IF NOT EXISTS `children` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `childName` varchar(150) NOT NULL,
  `childSurname` varchar(150) NOT NULL,
  `class_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `CHILDREN_CLASS_FK` (`class_id`),
  KEY `CHILDREN_USERS0_FK` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `class`
--

DROP TABLE IF EXISTS `class`;
CREATE TABLE IF NOT EXISTS `class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `className` varchar(150) NOT NULL,
  `classMates` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` date NOT NULL,
  `text` varchar(150) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `COMMENTS_USERS_FK` (`user_id`),
  KEY `COMMENTS_MESSAGES0_FK` (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` varchar(255) NOT NULL,
  `title` varchar(150) NOT NULL,
  `texte` text NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `MESSAGES_USERS_FK` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`id`, `createdAt`, `title`, `texte`, `user_id`) VALUES
(4, 'Mon, 06 Jul 2020 10:21:06', 'un message', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas a sodales mauris. Nunc vel ex at nisi iaculis porta dignissim ut massa. Phasellus sodales tellus et diam tincidunt, ac imperdiet tortor posuere. Aenean in ornare neque, quis sagittis felis. Proin efficitur orci sodales neque convallis, eget imperdiet est elementum. Cras ut tincidunt ante, eget sagittis ante. Donec eu ligula quis ipsum accumsan laoreet sit amet nec ex. Aenean rutrum, nulla quis porta accumsan, justo erat fringilla sapien, in hendrerit risus libero commodo lorem. Etiam a pulvinar nunc, et sodales elit. Pellentesque nec hendrerit urna, sed molestie nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse potenti.', 1),
(5, 'Mon, 06 Jul 2020 10:21:23', 'un deuxieme message', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas a sodales mauris. Nunc vel ex at nisi iaculis porta dignissim ut massa. Phasellus sodales tellus et diam tincidunt, ac imperdiet tortor posuere. Aenean in ornare neque, quis sagittis felis. Proin efficitur orci sodales neque convallis, eget imperdiet est elementum. Cras ut tincidunt ante, eget sagittis ante. Donec eu ligula quis ipsum accumsan laoreet sit amet nec ex. Aenean rutrum, nulla quis porta accumsan, justo erat fringilla sapien, in hendrerit risus libero commodo lorem. Etiam a pulvinar nunc, et sodales elit. Pellentesque nec hendrerit urna, sed molestie nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse potenti.', 1),
(6, 'Mon, 06 Jul 2020 10:22:02', 'encore un autre message', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas a sodales mauris. Nunc vel ex at nisi iaculis porta dignissim ut massa. Phasellus sodales tellus et diam tincidunt, ac imperdiet tortor posuere. Aenean in ornare neque, quis sagittis felis. Proin efficitur orci sodales neque convallis, eget imperdiet est elementum. Cras ut tincidunt ante, eget sagittis ante. Donec eu ligula quis ipsum accumsan laoreet sit amet nec ex. Aenean rutrum, nulla quis porta accumsan, justo erat fringilla sapien, in hendrerit risus libero commodo lorem. Etiam a pulvinar nunc, et sodales elit. Pellentesque nec hendrerit urna, sed molestie nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse potenti.', 1),
(7, 'Mon, 06 Jul 2020 10:23:06', 'encore et encore', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas a sodales mauris. Nunc vel ex at nisi iaculis porta dignissim ut massa. Phasellus sodales tellus et diam tincidunt, ac imperdiet tortor posuere. Aenean in ornare neque, quis sagittis felis. Proin efficitur orci sodales neque convallis, eget imperdiet est elementum. Cras ut tincidunt ante, eget sagittis ante. Donec eu ligula quis ipsum accumsan laoreet sit amet nec ex. Aenean rutrum, nulla quis porta accumsan, justo erat fringilla sapien, in hendrerit risus libero commodo lorem. Etiam a pulvinar nunc, et sodales elit. Pellentesque nec hendrerit urna, sed molestie nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse potenti.', 1),
(8, 'Mon, 06 Jul 2020 10:38:53', 'un article de montberon', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas a sodales mauris. Nunc vel ex at nisi iaculis porta dignissim ut massa. Phasellus sodales tellus et diam tincidunt, ac imperdiet tortor posuere. Aenean in ornare neque, quis sagittis felis. Proin efficitur orci sodales neque convallis, eget imperdiet est elementum. Cras ut tincidunt ante, eget sagittis ante. Donec eu ligula quis ipsum accumsan laoreet sit amet nec ex. Aenean rutrum, nulla quis porta accumsan, justo erat fringilla sapien, in hendrerit risus libero commodo lorem. Etiam a pulvinar nunc, et sodales elit. Pellentesque nec hendrerit urna, sed molestie nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse potenti.', 1),
(9, 'Mon, 06 Jul 2020 13:29:52', 'un message de RÃ©mi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas a sodales mauris. Nunc vel ex at nisi iaculis porta dignissim ut massa. Phasellus sodales tellus et diam tincidunt, ac imperdiet tortor posuere. Aenean in ornare neque, quis sagittis felis. Proin efficitur orci sodales neque convallis, eget imperdiet est elementum. Cras ut tincidunt ante, eget sagittis ante. Donec eu ligula quis ipsum accumsan laoreet sit amet nec ex. Aenean rutrum, nulla quis porta accumsan, justo erat fringilla sapien, in hendrerit risus libero commodo lorem. Etiam a pulvinar nunc, et sodales elit. Pellentesque nec hendrerit urna, sed molestie nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse potenti.', 3),
(10, 'Mon, 06 Jul 2020 13:30:12', 'un deuxieme message de RÃ©mi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas a sodales mauris. Nunc vel ex at nisi iaculis porta dignissim ut massa. Phasellus sodales tellus et diam tincidunt, ac imperdiet tortor posuere. Aenean in ornare neque, quis sagittis felis. Proin efficitur orci sodales neque convallis, eget imperdiet est elementum. Cras ut tincidunt ante, eget sagittis ante. Donec eu ligula quis ipsum accumsan laoreet sit amet nec ex. Aenean rutrum, nulla quis porta accumsan, justo erat fringilla sapien, in hendrerit risus libero commodo lorem. Etiam a pulvinar nunc, et sodales elit. Pellentesque nec hendrerit urna, sed molestie nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse potenti.', 3),
(11, 'Mon, 06 Jul 2020 13:30:39', 'un message de Bastien', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas a sodales mauris. Nunc vel ex at nisi iaculis porta dignissim ut massa. Phasellus sodales tellus et diam tincidunt, ac imperdiet tortor posuere. Aenean in ornare neque, quis sagittis felis. Proin efficitur orci sodales neque convallis, eget imperdiet est elementum. Cras ut tincidunt ante, eget sagittis ante. Donec eu ligula quis ipsum accumsan laoreet sit amet nec ex. Aenean rutrum, nulla quis porta accumsan, justo erat fringilla sapien, in hendrerit risus libero commodo lorem. Etiam a pulvinar nunc, et sodales elit. Pellentesque nec hendrerit urna, sed molestie nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse potenti.', 2),
(12, 'Mon, 06 Jul 2020 13:30:54', 'un deuxiÃ©me message de Bastien', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas a sodales mauris. Nunc vel ex at nisi iaculis porta dignissim ut massa. Phasellus sodales tellus et diam tincidunt, ac imperdiet tortor posuere. Aenean in ornare neque, quis sagittis felis. Proin efficitur orci sodales neque convallis, eget imperdiet est elementum. Cras ut tincidunt ante, eget sagittis ante. Donec eu ligula quis ipsum accumsan laoreet sit amet nec ex. Aenean rutrum, nulla quis porta accumsan, justo erat fringilla sapien, in hendrerit risus libero commodo lorem. Etiam a pulvinar nunc, et sodales elit. Pellentesque nec hendrerit urna, sed molestie nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse potenti.', 2);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `mdp` text NOT NULL,
  `avatar` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `mail`, `mdp`, `avatar`) VALUES
(1, 'Andrei', 'Jean Paul', 'andrei.jpaul@gmail.com', 'MTIzNGF6ZXI=', '1.jpg'),
(2, 'Andrei', 'Bastien', 'bastien@andrei.fr', 'MTIzNGF6ZXI=', '2.jpg'),
(3, 'Diaz ', 'Remi', 'remi@diaz.fr', 'MTIzNGF6ZXI=', '3.jpg');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `children`
--
ALTER TABLE `children`
  ADD CONSTRAINT `CHILDREN_CLASS_FK` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`),
  ADD CONSTRAINT `CHILDREN_USERS0_FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `COMMENTS_MESSAGES0_FK` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`),
  ADD CONSTRAINT `COMMENTS_USERS_FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `MESSAGES_USERS_FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
