-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 04 avr. 2019 à 15:40
-- Version du serveur :  10.1.28-MariaDB
-- Version de PHP :  7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `parc_roulant`
--

-- --------------------------------------------------------

--
-- Structure de la table `destination`
--

CREATE TABLE `destination` (
  `id` int(11) NOT NULL,
  `unite` varchar(25) NOT NULL,
  `regime` varchar(25) NOT NULL,
  `section` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `destination`
--

INSERT INTO `destination` (`id`, `unite`, `regime`, `section`) VALUES
(1, 'BAB EL OUED', 'JOUR', 'OUED KORRICHE JOUR'),
(2, 'BAB EL OUED', 'JOUR', 'BAB EL OUED JOUR'),
(3, 'BAB EL OUED', 'JOUR', 'BOLOGHINE JOUR'),
(4, 'BAB EL OUED', 'JOUR', 'RAIS HAMIDOU JOUR'),
(5, 'BAB EL OUED', 'NUIT', 'OUED KORRICHE NUIT'),
(6, 'BAB EL OUED', 'NUIT', 'BAB EL OUED NUIT'),
(7, 'BAB EL OUED', 'NUIT', 'BOLOGHINE NUIT'),
(8, 'BAB EL OUED', 'NUIT', 'RAIS HAMIDOU NUIT');

-- --------------------------------------------------------

--
-- Structure de la table `etat`
--

CREATE TABLE `etat` (
  `id` int(11) NOT NULL,
  `regime` varchar(25) NOT NULL,
  `date` varchar(25) NOT NULL,
  `type` varchar(25) NOT NULL,
  `materiel` varchar(25) NOT NULL,
  `unite` varchar(25) NOT NULL,
  `section` varchar(25) NOT NULL,
  `secteur` varchar(25) NOT NULL,
  `personnel` varchar(25) NOT NULL,
  `heure_sortie` varchar(25) NOT NULL,
  `etat` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etat`
--

INSERT INTO `etat` (`id`, `regime`, `date`, `type`, `materiel`, `unite`, `section`, `secteur`, `personnel`, `heure_sortie`, `etat`) VALUES
(1, 'JOUR', '20-mars-2019', 'COLLECTE', '1777', 'BAB EL OUED', 'OUED KORRICHE JOUR', '1', 'Younes younes', '11:43', 'Bon etat'),
(2, 'JOUR', '21-mars-2019', 'COLLECTE', '1777', 'BAB EL OUED', 'OUED KORRICHE JOUR', '1', 'Younes younes', '13:48', 'Bon etat'),
(3, 'NUIT', '21-mars-2019', 'APPROVISIONNEMENT', '1764', 'BAB EL OUED', 'OUED KORRICHE NUIT', '1', 'Moh Mohamed', '13:48', 'Bon etat'),
(4, 'JOUR', '23-mars-2019', 'COLLECTE', '1777', 'BAB EL OUED', 'OUED KORRICHE JOUR', '1', 'Younes younes', '08:40', 'Bon etat'),
(5, 'JOUR', '23-mars-2019', 'COLLECTE', '1777', 'BAB EL OUED', 'OUED KORRICHE JOUR', '1', 'Foudala Mehdi', '10:54', 'Bon etat'),
(6, 'JOUR', '25-mars-2019', 'COLLECTE', '1777', 'BAB EL OUED', 'BAB EL OUED JOUR', '2', 'Younes younes', '07:47', 'Bon etat');

-- --------------------------------------------------------

--
-- Structure de la table `lavage`
--

CREATE TABLE `lavage` (
  `id` int(11) NOT NULL,
  `marque` varchar(25) NOT NULL,
  `type` varchar(25) NOT NULL,
  `nbr` varchar(11) NOT NULL,
  `etat` varchar(25) NOT NULL,
  `idd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `lavage`
--

INSERT INTO `lavage` (`id`, `marque`, `type`, `nbr`, `etat`, `idd`) VALUES
(1, '1777', 'Lavage', '0', 'en marche', 1),
(2, '1764', 'Lavage', '0', 'en marche', 2),
(3, '8312', 'Lavage', '0', 'en marche', 3);

-- --------------------------------------------------------

--
-- Structure de la table `materiel`
--

CREATE TABLE `materiel` (
  `id` int(11) NOT NULL,
  `indicatif` varchar(5) NOT NULL,
  `N_inventaire` varchar(6) NOT NULL,
  `marque` varchar(25) NOT NULL,
  `type` varchar(25) NOT NULL,
  `serie` varchar(25) NOT NULL,
  `matricule` varchar(25) NOT NULL,
  `annee_de_mise_en_circulation` varchar(25) NOT NULL,
  `parc_daffectation` varchar(25) NOT NULL,
  `type_de_carburant` varchar(25) NOT NULL,
  `puissance_cv` varchar(2) NOT NULL,
  `puissance_ch` varchar(3) NOT NULL,
  `genre` varchar(25) NOT NULL,
  `patc` varchar(5) NOT NULL,
  `charge_utile` varchar(5) NOT NULL,
  `poids_a_vide` varchar(5) NOT NULL,
  `volume_m3` varchar(2) NOT NULL,
  `moteur` varchar(25) NOT NULL,
  `boite_vitesse` varchar(25) NOT NULL,
  `pont` varchar(25) NOT NULL,
  `hydraulique` varchar(25) NOT NULL,
  `radiateur` varchar(25) NOT NULL,
  `etat` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `materiel`
--

INSERT INTO `materiel` (`id`, `indicatif`, `N_inventaire`, `marque`, `type`, `serie`, `matricule`, `annee_de_mise_en_circulation`, `parc_daffectation`, `type_de_carburant`, `puissance_cv`, `puissance_ch`, `genre`, `patc`, `charge_utile`, `poids_a_vide`, `volume_m3`, `moteur`, `boite_vitesse`, `pont`, `hydraulique`, `radiateur`, `etat`) VALUES
(1, '1777', '2433', 'IVECO', 'E120', '4646', '255000-632-28', '2015', 'BEO', 'Diesel', '12', '122', 'benne tasseuse', '19000', '5500', '4222', '04', 'A', 'ZF', 'A', 'A', 'A', 'en panne'),
(2, '1764', '2433', 'IVECO', 'E120', '4646', '255000-632-28', '2015', 'BEO', 'Diesel', '12', '122', 'benne tasseuse', '19000', '5500', '4222', '04', 'A', 'ZF', 'A', 'A', 'A', 'Bon etat'),
(3, '8312', '2433', 'IVECO', 'E120', '4646', '255000-632-28', '2015', 'BEO', 'Diesel', '12', '122', 'benne tasseuse', '19000', '5500', '4222', '04', 'A', 'ZF', 'A', 'A', 'A', 'Bon etat');

-- --------------------------------------------------------

--
-- Structure de la table `panne`
--

CREATE TABLE `panne` (
  `id` int(11) NOT NULL,
  `indicatif` varchar(25) NOT NULL,
  `Marque` varchar(25) NOT NULL,
  `Organe` varchar(25) NOT NULL,
  `Type_panne` varchar(25) NOT NULL,
  `date_panne` varchar(25) NOT NULL,
  `etat` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `panne`
--

INSERT INTO `panne` (`id`, `indicatif`, `Marque`, `Organe`, `Type_panne`, `date_panne`, `etat`) VALUES
(6, '1777', 'IVECO', 'moteur', '145', '25-mars-2019', 'en panne');

-- --------------------------------------------------------

--
-- Structure de la table `personnel`
--

CREATE TABLE `personnel` (
  `id` int(11) NOT NULL,
  `nom_prenom` varchar(25) NOT NULL,
  `matricule` varchar(25) NOT NULL,
  `fonction` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `personnel`
--

INSERT INTO `personnel` (`id`, `nom_prenom`, `matricule`, `fonction`) VALUES
(1, 'Younes younes', '0542111', '1111'),
(2, 'Moh Mohamed', '0542111', '1111'),
(3, 'Foudala Mehdi', '1778', 'hh');

-- --------------------------------------------------------

--
-- Structure de la table `piece_rechange`
--

CREATE TABLE `piece_rechange` (
  `id` int(11) NOT NULL,
  `nom_organe` varchar(25) NOT NULL,
  `piece` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `piece_rechange`
--

INSERT INTO `piece_rechange` (`id`, `nom_organe`, `piece`) VALUES
(1, 'moteur', '146'),
(2, 'moteur', '1487');

-- --------------------------------------------------------

--
-- Structure de la table `reparation`
--

CREATE TABLE `reparation` (
  `id` int(11) NOT NULL,
  `indicatif` varchar(25) NOT NULL,
  `materiel` varchar(25) NOT NULL,
  `nom_reparation` varchar(25) NOT NULL,
  `nomenclature` varchar(25) NOT NULL,
  `date_reparation` varchar(25) NOT NULL,
  `piece_de_rechange` varchar(25) NOT NULL,
  `etat` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `reparation`
--

INSERT INTO `reparation` (`id`, `indicatif`, `materiel`, `nom_reparation`, `nomenclature`, `date_reparation`, `piece_de_rechange`, `etat`) VALUES
(1, '1777', 'IVECO', 'moteur', 'reparation 1', '20-mars-2019', 'PIECE 1', 'Bon etat'),
(2, '8312', 'IVECO', 'moteur', 'reparation 1', '20-mars-2019', 'PIECE 1', 'Bon etat'),
(3, '8312', 'IVECO', 'moteur', 'reparation 1', '20-mars-2019', 'PIECE 1', 'Bon etat'),
(4, '1764', 'IVECO', 'moteur', 'reparation 2', '23-mars-2019', 'PIECE 2', 'Bon etat'),
(5, '8312', 'IVECO', 'moteur', '123', '25-mars-2019', '146', 'Bon etat'),
(6, '1764', 'IVECO', 'moteur', '123', '25-mars-2019', '146', 'Bon etat');

-- --------------------------------------------------------

--
-- Structure de la table `retour_mission`
--

CREATE TABLE `retour_mission` (
  `id` int(11) NOT NULL,
  `regime` varchar(25) NOT NULL,
  `date` varchar(25) NOT NULL,
  `type_mission` varchar(25) NOT NULL,
  `materiel` varchar(25) NOT NULL,
  `heure_entree` varchar(11) NOT NULL,
  `acomplie` varchar(10) NOT NULL,
  `heur_arrive` varchar(25) NOT NULL,
  `incident` varchar(25) NOT NULL,
  `km` varchar(25) NOT NULL,
  `duréé` varchar(25) NOT NULL,
  `tonnage` varchar(25) NOT NULL,
  `taux_remplisage` varchar(25) NOT NULL,
  `durée_total` varchar(25) NOT NULL,
  `idd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `retour_mission`
--

INSERT INTO `retour_mission` (`id`, `regime`, `date`, `type_mission`, `materiel`, `heure_entree`, `acomplie`, `heur_arrive`, `incident`, `km`, `duréé`, `tonnage`, `taux_remplisage`, `durée_total`, `idd`) VALUES
(4, 'NUIT', '16-mars-2019', 'COLLECTE', 'M45p7', '18:23', 'OUI', '00:29', 'rien', '24', '06:06', '10000', '0.13', '6', 4),
(5, 'NUIT', '16-mars-2019', 'COLLECTE', 'H28k7', '19:23', 'OUI', '21:37', 'rien', '25', '02:14', '12000', '0.15', '5', 5);

-- --------------------------------------------------------

--
-- Structure de la table `retour_mission2`
--

CREATE TABLE `retour_mission2` (
  `id` int(11) NOT NULL,
  `date` varchar(25) NOT NULL,
  `regime` varchar(25) NOT NULL,
  `indicatif` varchar(25) NOT NULL,
  `unite` varchar(25) NOT NULL,
  `section` varchar(25) NOT NULL,
  `secteur` varchar(11) NOT NULL,
  `heure_sortie` varchar(10) NOT NULL,
  `heure_arrivée` varchar(25) NOT NULL,
  `duréé` varchar(25) NOT NULL,
  `poids_1` varchar(25) NOT NULL,
  `poids_2` varchar(25) NOT NULL,
  `taux_remplisage_1` varchar(25) NOT NULL,
  `taux_remplisage_2` varchar(25) NOT NULL,
  `durée_total` varchar(25) NOT NULL,
  `idd` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `retour_mission2`
--

INSERT INTO `retour_mission2` (`id`, `date`, `regime`, `indicatif`, `unite`, `section`, `secteur`, `heure_sortie`, `heure_arrivée`, `duréé`, `poids_1`, `poids_2`, `taux_remplisage_1`, `taux_remplisage_2`, `durée_total`, `idd`) VALUES
(1, '20-mars-2019', 'JOUR', '1777', 'BAB EL OUED', 'OUED KORRICHE JOUR', '1', '11:43', '11:54', '00:11', '2000', '3000', '0.36', '0.55', '0', '1'),
(2, '21-mars-2019', 'JOUR', '1777', 'BAB EL OUED', 'OUED KORRICHE JOUR', '1', '13:48', '/', '/', '/', '/', '/', '/', '00:00', '2'),
(3, '21-mars-2019', 'NUIT', '1764', 'BAB EL OUED', 'OUED KORRICHE NUIT', '1', '13:48', '/', '/', '/', '/', '/', '/', '00:00', '3'),
(4, '23-mars-2019', 'JOUR', '1777', 'BAB EL OUED', 'OUED KORRICHE JOUR', '1', '08:40', '11:49', '03:09', '3000', '2000', '0.55', '0.36', '0', '4'),
(5, '23-mars-2019', 'JOUR', '1777', 'BAB EL OUED', 'OUED KORRICHE JOUR', '1', '10:54', '12:57', '02:03', '4500', '5000', '0.82', '0.91', '3', '5'),
(6, '25-mars-2019', 'JOUR', '1777', 'BAB EL OUED', 'BAB EL OUED JOUR', '2', '07:47', '14:49', '07:02', '4000', '4000', '0.73', '0.73', '5', '6');

-- --------------------------------------------------------

--
-- Structure de la table `total`
--

CREATE TABLE `total` (
  `total` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `total`
--

INSERT INTO `total` (`total`) VALUES
('14500');

-- --------------------------------------------------------

--
-- Structure de la table `type_panne`
--

CREATE TABLE `type_panne` (
  `id` int(11) NOT NULL,
  `nom_panne` varchar(25) NOT NULL,
  `nomenclature` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `type_panne`
--

INSERT INTO `type_panne` (`id`, `nom_panne`, `nomenclature`) VALUES
(1, 'moteur', '145'),
(2, 'boite à vitesses', '1469');

-- --------------------------------------------------------

--
-- Structure de la table `type_reparation`
--

CREATE TABLE `type_reparation` (
  `id` int(11) NOT NULL,
  `nom_reparation` varchar(25) NOT NULL,
  `nomenclature` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `type_reparation`
--

INSERT INTO `type_reparation` (`id`, `nom_reparation`, `nomenclature`) VALUES
(1, 'moteur', '123'),
(2, 'moteur', '124'),
(3, 'boite à vitesses', '125');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `Identifiant` int(11) NOT NULL,
  `Utilisateur` varchar(50) NOT NULL,
  `mdp_utilisateur` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`Identifiant`, `Utilisateur`, `mdp_utilisateur`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `vidange`
--

CREATE TABLE `vidange` (
  `id` int(11) NOT NULL,
  `marque` varchar(25) NOT NULL,
  `type_entretien` varchar(25) NOT NULL,
  `duréé_trajet` varchar(25) NOT NULL,
  `date_entretien` varchar(25) NOT NULL,
  `nbr_entretien` varchar(25) NOT NULL,
  `etat` varchar(25) NOT NULL,
  `idd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vidange`
--

INSERT INTO `vidange` (`id`, `marque`, `type_entretien`, `duréé_trajet`, `date_entretien`, `nbr_entretien`, `etat`, `idd`) VALUES
(1, '1777', 'Vidange', '5', '200', '0', 'en marche', 1),
(2, '1764', 'Vidange', '0', '200', '0', 'en marche', 2),
(3, '8312', 'Vidange', '0', '200', '0', 'en marche', 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etat`
--
ALTER TABLE `etat`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `lavage`
--
ALTER TABLE `lavage`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `materiel`
--
ALTER TABLE `materiel`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `panne`
--
ALTER TABLE `panne`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `piece_rechange`
--
ALTER TABLE `piece_rechange`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reparation`
--
ALTER TABLE `reparation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `retour_mission`
--
ALTER TABLE `retour_mission`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `retour_mission2`
--
ALTER TABLE `retour_mission2`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `total`
--
ALTER TABLE `total`
  ADD PRIMARY KEY (`total`);

--
-- Index pour la table `type_panne`
--
ALTER TABLE `type_panne`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `type_reparation`
--
ALTER TABLE `type_reparation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`Identifiant`);

--
-- Index pour la table `vidange`
--
ALTER TABLE `vidange`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `destination`
--
ALTER TABLE `destination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `etat`
--
ALTER TABLE `etat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `lavage`
--
ALTER TABLE `lavage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `materiel`
--
ALTER TABLE `materiel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `panne`
--
ALTER TABLE `panne`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `personnel`
--
ALTER TABLE `personnel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `piece_rechange`
--
ALTER TABLE `piece_rechange`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `reparation`
--
ALTER TABLE `reparation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `retour_mission`
--
ALTER TABLE `retour_mission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `retour_mission2`
--
ALTER TABLE `retour_mission2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `type_panne`
--
ALTER TABLE `type_panne`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `type_reparation`
--
ALTER TABLE `type_reparation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `Identifiant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `vidange`
--
ALTER TABLE `vidange`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
