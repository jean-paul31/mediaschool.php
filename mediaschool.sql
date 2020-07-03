-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 03 juil. 2020 à 07:14
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
  `CHILD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `childName` varchar(150) NOT NULL,
  `childSurname` varchar(150) NOT NULL,
  `CLASS_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  PRIMARY KEY (`CHILD_ID`),
  KEY `CHILDREN_CLASS_FK` (`CLASS_ID`),
  KEY `CHILDREN_USERS0_FK` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `class`
--

DROP TABLE IF EXISTS `class`;
CREATE TABLE IF NOT EXISTS `class` (
  `CLASS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `className` varchar(150) NOT NULL,
  `classMates` varchar(150) NOT NULL,
  PRIMARY KEY (`CLASS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `COMMENT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` date NOT NULL,
  `text` varchar(150) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `MESSAGE_ID` int(11) NOT NULL,
  PRIMARY KEY (`COMMENT_ID`),
  KEY `COMMENTS_USERS_FK` (`USER_ID`),
  KEY `COMMENTS_MESSAGES0_FK` (`MESSAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `MESSAGE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` date NOT NULL,
  `author` varchar(50) NOT NULL,
  `title` varchar(150) NOT NULL,
  `text` TEXT NOT NULL,
  `USER_ID` int(11) NOT NULL,
  PRIMARY KEY (`MESSAGE_ID`),
  KEY `MESSAGES_USERS_FK` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `mdp` TEXT NOT NULL,
  `image` TEXT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `children`
--
ALTER TABLE `children`
  ADD CONSTRAINT `CHILDREN_CLASS_FK` FOREIGN KEY (`CLASS_ID`) REFERENCES `class` (`CLASS_ID`),
  ADD CONSTRAINT `CHILDREN_USERS0_FK` FOREIGN KEY (`USER_ID`) REFERENCES `users` (`USER_ID`);

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `COMMENTS_MESSAGES0_FK` FOREIGN KEY (`MESSAGE_ID`) REFERENCES `messages` (`MESSAGE_ID`),
  ADD CONSTRAINT `COMMENTS_USERS_FK` FOREIGN KEY (`USER_ID`) REFERENCES `users` (`USER_ID`);

--
-- Contraintes pour la table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `MESSAGES_USERS_FK` FOREIGN KEY (`USER_ID`) REFERENCES `users` (`USER_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
