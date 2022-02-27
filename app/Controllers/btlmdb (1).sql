-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2022 at 07:23 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `btlmdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `ID` int(11) NOT NULL,
  `NOM_COMPLET` varchar(255) NOT NULL,
  `DEPARTEMENT` varchar(255) NOT NULL,
  `FONCTION` varchar(255) NOT NULL,
  `CHEF_DEPARTEMENT` varchar(255) NOT NULL,
  `TELEPHONE` varchar(255) NOT NULL,
  `MOT_DE_PASSE` text NOT NULL,
  `DATE_CREATION` datetime NOT NULL,
  `DATE_MODIFICATION` datetime NOT NULL,
  `DATE_SUPPRESSION` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`ID`, `NOM_COMPLET`, `DEPARTEMENT`, `FONCTION`, `CHEF_DEPARTEMENT`, `TELEPHONE`, `MOT_DE_PASSE`, `DATE_CREATION`, `DATE_MODIFICATION`, `DATE_SUPPRESSION`) VALUES
(1, 'maureen', 'informqtique', '3', 'herman', '0977756377', 'codecode', '2022-02-24 10:03:14', '2022-02-24 10:03:14', '2022-02-24 10:03:14');

-- --------------------------------------------------------

--
-- Table structure for table `bon_de_commande`
--

CREATE TABLE `bon_de_commande` (
  `ID` int(11) NOT NULL,
  `ID_FICHE_BESOIN` int(11) NOT NULL,
  `ID_SERVICE_GEN` int(11) NOT NULL,
  `ID_DAF` int(11) NOT NULL,
  `NOM_FOURNISSEUR` varchar(255) NOT NULL,
  `ADRESSE_FOURNISSEUR` varchar(255) NOT NULL,
  `TELEPHONE_FOURNISSEUR` varchar(255) NOT NULL,
  `DATE_BON_DEMANDE` date NOT NULL,
  `DESIGNATION_PRODUIT` varchar(255) NOT NULL,
  `QUANTITE` int(11) NOT NULL,
  `OBSERVATION` varchar(255) NOT NULL,
  `PROFORMAT_FOURNISSEUR` blob NOT NULL,
  `FACTURE` blob NOT NULL,
  `TYPE_BON_COMMANDE` varchar(255) NOT NULL,
  `ETAT_BON_COMMANDE` varchar(255) NOT NULL,
  `EVALUTION FOURNISSEUR` decimal(10,0) NOT NULL,
  `SIGNATURE_SERVICE_GEN` blob NOT NULL,
  `SIGNATURE_DAF` blob NOT NULL,
  `SIGNATURE_DG` blob NOT NULL,
  `DATE_CREATION` datetime NOT NULL,
  `DATE_MODIFICATION` datetime NOT NULL,
  `DATE_SUPPRESSION` datetime NOT NULL,
  `ID_DG` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chef_departement`
--

CREATE TABLE `chef_departement` (
  `ID` int(11) NOT NULL,
  `NOM_COMPLET` varchar(255) NOT NULL,
  `SIGNATURE_CHEF_DEP` blob NOT NULL,
  `DATE_CREATION` datetime NOT NULL,
  `DATE_MODIFICATION` datetime NOT NULL,
  `DATE_SUPPRESSION` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `directeur_financier`
--

CREATE TABLE `directeur_financier` (
  `ID` int(11) NOT NULL,
  `NOM_COMPLET` varchar(255) NOT NULL,
  `SIGNATURE_DAF` blob NOT NULL,
  `DATE_CREATION` datetime NOT NULL,
  `DATE_MODIFICATION` datetime NOT NULL,
  `DATE_SUPPRESSION` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `direction_gen`
--

CREATE TABLE `direction_gen` (
  `ID` int(11) NOT NULL,
  `NOM_COMPLET` varchar(255) NOT NULL,
  `SIGNATURE_DG` blob NOT NULL,
  `DATE_SIGNATURE` datetime NOT NULL,
  `DATE_MODIFICATION` datetime NOT NULL,
  `DATE_SUPPRESSION` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fiche_de_besoin`
--

CREATE TABLE `fiche_de_besoin` (
  `ID` int(11) NOT NULL,
  `ID_AGENT_KEY` int(11) NOT NULL,
  `NOM_PRODUIT` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `RAISON` varchar(255) NOT NULL,
  `DATE_LIVRAISON_SOUHAITE` datetime NOT NULL,
  `ADRESSE_LIVRAISON` varchar(255) NOT NULL,
  `HEURE_LIVRAISON` datetime NOT NULL,
  `ETAT_FICHE` varchar(255) NOT NULL DEFAULT 'demand',
  `SIGNATURE_CHEF_DEP` varchar(255) DEFAULT NULL,
  `SIGNATURE_SERVICE_GEN` varchar(255) DEFAULT NULL,
  `SIGNATURE_DAF` varchar(255) DEFAULT NULL,
  `SIGNATURE_DG` varchar(255) DEFAULT NULL,
  `PROFORMAT_1` varchar(255) DEFAULT NULL,
  `PROFORMAT_2` varchar(255) DEFAULT NULL,
  `PROFORMAT_3` varchar(255) DEFAULT NULL,
  `DATE_CREATION` datetime DEFAULT NULL,
  `DATE_MODIFICATION` datetime DEFAULT NULL,
  `DATE_SUPPRESSION` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fiche_de_besoin`
--

INSERT INTO `fiche_de_besoin` (`ID`, `ID_AGENT_KEY`, `NOM_PRODUIT`, `DESCRIPTION`, `RAISON`, `DATE_LIVRAISON_SOUHAITE`, `ADRESSE_LIVRAISON`, `HEURE_LIVRAISON`, `ETAT_FICHE`, `SIGNATURE_CHEF_DEP`, `SIGNATURE_SERVICE_GEN`, `SIGNATURE_DAF`, `SIGNATURE_DG`, `PROFORMAT_1`, `PROFORMAT_2`, `PROFORMAT_3`, `DATE_CREATION`, `DATE_MODIFICATION`, `DATE_SUPPRESSION`) VALUES
(1, 1, 'ertyuiouytryu', 'dtfgyjhkl;', '2022-02-10', '0000-00-00 00:00:00', '04:05', '0000-00-00 00:00:00', 'en cours', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-24 03:05:18', '2022-02-24 12:13:32', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bon_de_commande`
--
ALTER TABLE `bon_de_commande`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID_SERVICE_GEN` (`ID_SERVICE_GEN`),
  ADD UNIQUE KEY `ID_DAF` (`ID_DAF`),
  ADD UNIQUE KEY `ID_DG` (`ID_DG`),
  ADD KEY `ID_FICHE_BESOIN` (`ID_FICHE_BESOIN`);

--
-- Indexes for table `chef_departement`
--
ALTER TABLE `chef_departement`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `directeur_financier`
--
ALTER TABLE `directeur_financier`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `direction_gen`
--
ALTER TABLE `direction_gen`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `fiche_de_besoin`
--
ALTER TABLE `fiche_de_besoin`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
