-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 11 août 2021 à 15:18
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `moshrik`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admins`
--

INSERT INTO `admins` (`id`, `nom`, `prenom`, `email`, `password`, `telephone`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test', 'test@gmail.com', 'test', 556678, NULL, NULL),
(2, 'test', 'test', 'test@gmail.com', 'test', 556678, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passeword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` int(11) NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descriptionprojet` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id`, `nom`, `prenom`, `email`, `passeword`, `telephone`, `adresse`, `descriptionprojet`, `ville_id`, `created_at`, `updated_at`) VALUES
(1, 'GHOUIZI', 'HOUDA', 'houda.ghouizi1998@gmail.com', 'HOUDA1998', 651199693, 'N 473 QUERTIER BOUKRAA', 'CDFTUVGYIBHUJKML?', 1, '2021-08-10 18:39:18', '2021-08-10 18:39:18'),
(2, 'GHOUIZI', 'HOUDA', 'houda.ghouizi1998@gmail.com', 'HOUDA1998', 651199693, 'N 473 QUERTIER BOUKRAA', 'CDFTUVGYIBHUJKML?', 1, '2021-08-10 18:51:49', '2021-08-10 18:51:49'),
(3, 'GHOUIZI', 'HOUDA', 'houda.ghouizi1998@gmail.com', 'HOUDA1998', 651199693, 'N 473 QUERTIER BOUKRAA', 'CDFTUVGYIBHUJKML?', 1, '2021-08-10 18:57:06', '2021-08-10 18:57:06'),
(4, 'GHOUIZI', 'HOUDA', 'houda.ghouizi1998@gmail.com', 'HOUDA1998', 651199693, 'N 473 QUERTIER BOUKRAA', 'CDFTUVGYIBHUJKML?', 1, '2021-08-10 19:03:30', '2021-08-10 19:03:30'),
(5, 'GHOUIZI', 'HOUDA', 'houda.ghouizi1998@gmail.com', 'HOUDA1998', 651199693, 'N 473 QUERTIER BOUKRAA', 'CDFTUVGYIBHUJKML?', 1, '2021-08-10 19:03:55', '2021-08-10 19:03:55'),
(6, 'GHOUIZI', 'HOUDA', 'houda.ghouizi1998@gmail.com', 'HOUDA1998', 651199693, 'N 473 QUERTIER BOUKRAA', 'CDFTUVGYIBHUJKML?', 1, '2021-08-10 19:05:27', '2021-08-10 19:05:27'),
(7, 'GHOUIZI', 'HOUDA', 'houda.ghouizi1998@gmail.com', 'HOUDA1998', 651199693, 'N 473 QUERTIER BOUKRAA', 'CDFTUVGYIBHUJKML?', 1, '2021-08-10 19:05:49', '2021-08-10 19:05:49'),
(8, 'GHOUIZI', 'HOUDA', 'houda.ghouizi1998@gmail.com', 'HOUDA1998', 651199693, 'N 473 QUERTIER BOUKRAA', 'CDFTUVGYIBHUJKML?', 1, '2021-08-10 19:09:07', '2021-08-10 19:09:07'),
(9, 'GHOUIZI', 'HOUDA', 'houda.ghouizi1998@gmail.com', 'HOUDA1998', 651199693, 'N 473 QUERTIER BOUKRAA', 'CDFTUVGYIBHUJKML?', 1, '2021-08-10 19:09:17', '2021-08-10 19:09:17'),
(10, 'GHOUIZI', 'HOUDA', 'houda.ghouizi1998@gmail.com', 'HOUDA1998', 651199693, 'N 473 QUERTIER BOUKRAA', 'CDFTUVGYIBHUJKML?', 1, '2021-08-10 19:09:35', '2021-08-10 19:09:35'),
(11, 'GH', 'ILY', 'ily.gh@gmail.com', 'ILY1999', 671072521, 'N 473 QUERTIER BOUKRAA YOUSSOUFIA', 'y cugvhibj nlk,', 1, '2021-08-10 19:10:31', '2021-08-10 19:10:31'),
(12, 'GHOUIZI', 'ISMAHANE', 'isma@gmail.com', 'ISMAHANE', 653704260, 'N 473 QUERTIER BOUKRAA', 'SXRDCTFVYGIBHJN', 1, '2021-08-10 19:15:07', '2021-08-10 19:15:07'),
(13, 'GHOUIZI', 'ISMAHANE', 'isma@gmail.com', 'ISMAHANE', 653704260, 'N 473 QUERTIER BOUKRAA', 'SXRDCTFVYGIBHJN', 1, '2021-08-10 19:15:34', '2021-08-10 19:15:34'),
(14, 'GHOUIZI', 'ISMAHANE', 'isma@gmail.com', 'ismahane', 653704260, 'N 473 QUERTIER BOUKRAA', 'SXRDCTFVYGIBHJN', 1, '2021-08-10 19:15:42', '2021-08-10 19:15:42'),
(15, 'MOURID', 'HALIMA', 'HALIMA@gmail.com', 'halima', 655443366, 'N 546 QUARTIER MASSIRA', 'xdrctfvgyibhnoj', 2, '2021-08-10 19:41:00', '2021-08-10 19:41:00'),
(16, 'MOURID', 'HALIMA', 'HALIMA@gmail.com', 'halima', 655443366, 'N 546 QUARTIER MASSIRA', 'xdrctfvgyibhnoj', 2, '2021-08-10 20:01:32', '2021-08-10 20:01:32'),
(17, 'MOURID', 'HALIMA', 'HALIMA@gmail.com', 'halima', 655443366, 'N 546 QUARTIER MASSIRA', 'xdrctfvgyibhnoj', 2, '2021-08-10 20:04:09', '2021-08-10 20:04:09'),
(18, 'MOURID', 'HALIMA', 'HALIMA@gmail.com', 'halima', 655443366, 'N 546 QUARTIER MASSIRA', 'xdrctfvgyibhnoj', 2, '2021-08-10 20:04:36', '2021-08-10 20:04:36'),
(19, 'hhh', 'hhh', 'TFG@gmail.com', 'hhh', 678, 'HGHJ', 'fcugvyubhijnk', 2, '2021-08-10 20:05:10', '2021-08-10 20:05:10'),
(20, 'hhh', 'hhh', 'TFG@gmail.com', 'hhh', 678, 'HGHJ', 'fcugvyubhijnk', 2, '2021-08-10 20:10:25', '2021-08-10 20:10:25'),
(21, 'hhh', 'hhh', 'TFG@gmail.com', 'hhh', 678, 'HGHJ', 'fcugvyubhijnk', 2, '2021-08-10 20:10:43', '2021-08-10 20:10:43'),
(22, 'hhh', 'hhh', 'TFG@gmail.com', 'hhh', 678, 'HGHJ', 'fcugvyubhijnk', 2, '2021-08-10 20:11:25', '2021-08-10 20:11:25'),
(23, 'hhh', 'hhh', 'TFG@gmail.com', 'hhh', 678, 'HGHJ', 'fcugvyubhijnk', 2, '2021-08-10 20:18:01', '2021-08-10 20:18:01'),
(24, 'hhh', 'hhh', 'TFG@gmail.com', 'hhh', 678, 'HGHJ', 'fcugvyubhijnk', 2, '2021-08-10 20:18:48', '2021-08-10 20:18:48'),
(25, 'hhh', 'hhh', 'TFG@gmail.com', 'hhh', 678, 'HGHJ', 'fcugvyubhijnk', 2, '2021-08-10 20:19:21', '2021-08-10 20:19:21'),
(26, 'hhh', 'hhh', 'TFG@gmail.com', 'hhh', 678, 'HGHJ', 'fcugvyubhijnk', 2, '2021-08-10 20:19:48', '2021-08-10 20:19:48'),
(27, 'sanaa', 'rochdi', 'houda.ghouizi1998@gmail.com', 'hhhh', 8755887, 'N 473 QUERTIER BOUKRAA', 'sexrdygfcuibhjnkl,', 2, '2021-08-10 22:06:11', '2021-08-10 22:06:11'),
(28, 'el hadili', 'hanane', 'hanane@gmail.com', 'hanane', 654466766, 'N 555 QUARTIER NOUR', 'abcdefghijklmnopqrstuvwxyz', 1, '2021-08-11 09:43:53', '2021-08-11 09:43:53');

-- --------------------------------------------------------

--
-- Structure de la table `composants`
--

CREATE TABLE `composants` (
  `id` int(10) UNSIGNED NOT NULL,
  `composant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `employes`
--

CREATE TABLE `employes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passeword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` int(11) NOT NULL,
  `departement_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `factures`
--

CREATE TABLE `factures` (
  `id` int(10) UNSIGNED NOT NULL,
  `prixtotal` double(8,2) NOT NULL,
  `projet_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2021_07_26_000003_create_ville_table', 1),
(6, '2021_07_26_000004_create_composant_table', 1),
(7, '2021_07_26_000005_create_typeprojet_table', 1),
(8, '2021_07_26_000006_create_status_table', 1),
(9, '2021_07_26_000007_create_secteur_table', 1),
(10, '2021_07_26_000008_create_departement_table', 1),
(11, '2021_07_26_000009_create_admin_table', 1),
(12, '2021_07_27_091538_create_posts_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `projets`
--

CREATE TABLE `projets` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `typeprojet_id` int(10) UNSIGNED NOT NULL,
  `secteur_id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `projets`
--

INSERT INTO `projets` (`id`, `description`, `typeprojet_id`, `secteur_id`, `client_id`, `created_at`, `updated_at`) VALUES
(4, 'y cugvhibj nlk,', 2, 2, 11, '2021-08-10 19:10:31', '2021-08-10 19:10:31'),
(5, 'SXRDCTFVYGIBHJN', 2, 2, 12, '2021-08-10 19:15:07', '2021-08-10 19:15:07'),
(7, 'SXRDCTFVYGIBHJN', 2, 2, 14, '2021-08-10 19:15:42', '2021-08-10 19:15:42'),
(9, 'xdrctfvgyibhnoj', 2, 2, 16, '2021-08-10 20:01:32', '2021-08-10 20:01:32'),
(10, 'xdrctfvgyibhnoj', 2, 2, 17, '2021-08-10 20:04:09', '2021-08-10 20:04:09'),
(11, 'xdrctfvgyibhnoj', 2, 2, 18, '2021-08-10 20:04:36', '2021-08-10 20:04:36'),
(12, 'fcugvyubhijnk', 1, 1, 19, '2021-08-10 20:05:10', '2021-08-10 20:05:10'),
(13, 'fcugvyubhijnk', 1, 1, 20, '2021-08-10 20:10:25', '2021-08-10 20:10:25'),
(14, 'fcugvyubhijnk', 1, 1, 21, '2021-08-10 20:10:43', '2021-08-10 20:10:43'),
(15, 'fcugvyubhijnk', 1, 1, 22, '2021-08-10 20:11:25', '2021-08-10 20:11:25'),
(16, 'fcugvyubhijnk', 1, 1, 23, '2021-08-10 20:18:01', '2021-08-10 20:18:01'),
(17, 'fcugvyubhijnk', 1, 1, 24, '2021-08-10 20:18:48', '2021-08-10 20:18:48'),
(18, 'fcugvyubhijnk', 1, 1, 25, '2021-08-10 20:19:21', '2021-08-10 20:19:21'),
(19, 'fcugvyubhijnk', 1, 1, 26, '2021-08-10 20:19:48', '2021-08-10 20:19:48'),
(20, 'sexrdygfcuibhjnkl,', 2, 2, 27, '2021-08-10 22:06:11', '2021-08-10 22:06:11'),
(21, 'abcdefghijklmnopqrstuvwxyz', 2, 2, 28, '2021-08-11 09:43:53', '2021-08-11 09:43:53');

-- --------------------------------------------------------

--
-- Structure de la table `projets_has_composants`
--

CREATE TABLE `projets_has_composants` (
  `projet_id` int(10) UNSIGNED NOT NULL,
  `composant_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `secteurs`
--

CREATE TABLE `secteurs` (
  `id` int(10) UNSIGNED NOT NULL,
  `secteur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `secteurs`
--

INSERT INTO `secteurs` (`id`, `secteur`, `created_at`, `updated_at`) VALUES
(1, 'Agriculture', NULL, NULL),
(2, 'Industrie', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `statuses`
--

CREATE TABLE `statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `typeprojets`
--

CREATE TABLE `typeprojets` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `typeprojets`
--

INSERT INTO `typeprojets` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Pompage', NULL, NULL),
(2, 'Raccordé au réseau', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `villes`
--

CREATE TABLE `villes` (
  `id` int(10) UNSIGNED NOT NULL,
  `ville` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codepostal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `villes`
--

INSERT INTO `villes` (`id`, `ville`, `codepostal`, `created_at`, `updated_at`) VALUES
(1, 'YOUSSOUFIA', 46300, NULL, NULL),
(2, 'SAFI', 47400, NULL, NULL),
(5, 'CASABLANCA', 55477, '2021-08-11 12:38:28', '2021-08-11 12:38:28'),
(6, 'CASABLANCA', 55477, '2021-08-11 12:39:07', '2021-08-11 12:39:07'),
(7, 'TANGER', 30446, '2021-08-11 12:40:55', '2021-08-11 12:40:55'),
(8, 'TANGER', 30446, '2021-08-11 12:41:18', '2021-08-11 12:41:18'),
(9, 'CHEFCHAOUNE', 20436, '2021-08-11 12:42:06', '2021-08-11 12:42:06'),
(10, 'TATA', 99039, '2021-08-11 12:42:51', '2021-08-11 12:42:51'),
(11, 'TATA', 99039, '2021-08-11 12:44:36', '2021-08-11 12:44:36'),
(12, 'BENGUERIR', 47300, '2021-08-11 12:44:52', '2021-08-11 12:44:52');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_client_ville1_idx` (`ville_id`);

--
-- Index pour la table `composants`
--
ALTER TABLE `composants`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `employes`
--
ALTER TABLE `employes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_employe_departement_idx` (`departement_id`);

--
-- Index pour la table `factures`
--
ALTER TABLE `factures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_facture_projet1_idx` (`projet_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `projets`
--
ALTER TABLE `projets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PC` (`client_id`),
  ADD KEY `FK_PT` (`typeprojet_id`),
  ADD KEY `FK_PSEC` (`secteur_id`);

--
-- Index pour la table `projets_has_composants`
--
ALTER TABLE `projets_has_composants`
  ADD PRIMARY KEY (`projet_id`),
  ADD KEY `fk_projet_has_composant_composant1_idx` (`composant_id`),
  ADD KEY `fk_projet_has_composant_projet1_idx` (`projet_id`);

--
-- Index pour la table `secteurs`
--
ALTER TABLE `secteurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `typeprojets`
--
ALTER TABLE `typeprojets`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `composants`
--
ALTER TABLE `composants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `employes`
--
ALTER TABLE `employes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `factures`
--
ALTER TABLE `factures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `projets`
--
ALTER TABLE `projets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `projets_has_composants`
--
ALTER TABLE `projets_has_composants`
  MODIFY `projet_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `secteurs`
--
ALTER TABLE `secteurs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `typeprojets`
--
ALTER TABLE `typeprojets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `villes`
--
ALTER TABLE `villes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `FK_CV` FOREIGN KEY (`ville_id`) REFERENCES `villes` (`id`);

--
-- Contraintes pour la table `projets`
--
ALTER TABLE `projets`
  ADD CONSTRAINT `FK_PC` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `FK_PSE` FOREIGN KEY (`secteur_id`) REFERENCES `secteurs` (`id`),
  ADD CONSTRAINT `FK_PT` FOREIGN KEY (`typeprojet_id`) REFERENCES `typeprojets` (`id`);

--
-- Contraintes pour la table `projets_has_composants`
--
ALTER TABLE `projets_has_composants`
  ADD CONSTRAINT `FK_PCP` FOREIGN KEY (`projet_id`) REFERENCES `projets` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
