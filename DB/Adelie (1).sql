-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 26, 2020 at 01:34 PM
-- Server version: 5.6.47-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Adelie`
--

-- --------------------------------------------------------

--
-- Table structure for table `CITIES`
--

CREATE TABLE `CITIES` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `CITIES`
--

INSERT INTO `CITIES` (`id`, `city_name`, `created_at`, `updated_at`) VALUES
(1, 'Cordoba', NULL, NULL),
(2, 'San Francisco', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `CLIENTS`
--

CREATE TABLE `CLIENTS` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `person_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `CLIENTS`
--

INSERT INTO `CLIENTS` (`id`, `client_name`, `type`, `created_at`, `updated_at`, `person_id`, `company_id`) VALUES
(1, 'Falconer III', 'Freelancer', '2020-03-03 06:32:28', '2020-03-03 06:32:28', 7, NULL),
(2, 'Doug', 'Freelancer', '2020-03-03 06:42:55', '2020-03-03 06:42:55', 9, NULL),
(3, 'Kevin DSB', 'Freelancer', '2020-03-04 21:41:05', '2020-03-04 21:41:05', 11, NULL),
(12, 'Pierre', 'Company', '2020-03-05 00:40:43', '2020-03-05 00:40:43', NULL, 2),
(5, 'Mary', 'Freelancer', '2020-03-04 22:04:40', '2020-03-04 22:04:40', 12, NULL),
(6, 'Ian Edwards', 'Freelancer', '2020-03-05 00:04:49', '2020-03-05 00:04:49', 13, NULL),
(7, 'Josh Freidfertig', 'Freelancer', '2020-03-05 00:06:39', '2020-03-05 00:06:39', 14, NULL),
(8, 'Barth', 'Freelancer', '2020-03-05 00:10:22', '2020-03-23 22:33:03', 8, NULL),
(9, 'Sarrazin Architecture', 'Freelancer', '2020-03-05 00:32:24', '2020-04-20 21:41:42', 19, NULL),
(10, 'Juliet', 'Company', '2020-03-05 00:32:41', '2020-03-05 00:32:41', NULL, 2),
(11, 'Pierre', 'Freelancer', '2020-03-05 00:38:48', '2020-03-05 00:38:48', 20, NULL),
(13, 'WeekYou', 'Company', '2020-03-17 02:46:04', '2020-03-17 02:46:04', NULL, 4),
(14, 'Maelly Garschagen Gava', 'Freelancer', '2020-03-31 05:19:50', '2020-03-31 05:19:50', 26, NULL),
(15, 'Tobi Schmidt', 'Freelancer', '2020-04-09 02:14:03', '2020-04-09 02:14:03', 27, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `COMPANIES`
--

CREATE TABLE `COMPANIES` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `administrator_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `administrator_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `production_manager_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `production_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` int(11) NOT NULL,
  `identification_code` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `COMPANIES`
--

INSERT INTO `COMPANIES` (`id`, `name`, `cuit`, `alias`, `website`, `administrator_name`, `administrator_email`, `production_manager_name`, `production_email`, `phone_number`, `address`, `postal_code`, `identification_code`, `created_at`, `updated_at`, `country_id`, `state_id`, `city_id`) VALUES
(2, 'SARRAZIN', '111', 'Sarrazin', 'https://www.sarrazinarchitecture.com', 'Pierre Jacques', 'pierree@sarrazinarchitecture.com', 'Juliet', 'juliet@sarrazinarchitecture.com', '9145844331', '21 north main st, suite 209  port chester ny', 10573, 300, '2020-03-05 00:30:42', '2020-03-05 00:30:42', 1, 1, 1),
(3, 'JAF Builders Corp.', '111', 'JAF', 'www.jafbuilders.com', 'Josh Freidferting', 'josh@jafbuilders.com', 'Josh', 'josh@jafbuilders.com', '9147235420', '69 Harney Road, Ste #5 Scarsdale, NY', 10583, 100302, '2020-03-05 01:40:37', '2020-03-05 01:40:37', 1, 1, 1),
(4, 'WeekYou', '22', 'WeekYou', 'www.weekyou.com', 'Lucas', 'ljagod@gmail.com', 'lucas', 'ljagod@gmail.com', '35158131222', 'laplace 5442', 5000, 999, '2020-03-17 02:45:43', '2020-03-17 02:45:43', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `COUNTRIES`
--

CREATE TABLE `COUNTRIES` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `COUNTRIES`
--

INSERT INTO `COUNTRIES` (`id`, `country_name`, `created_at`, `updated_at`) VALUES
(1, 'Argentina', NULL, NULL),
(2, 'Brasil', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `DELIVERIES`
--

CREATE TABLE `DELIVERIES` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `view_id` bigint(20) UNSIGNED DEFAULT NULL,
  `template_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `DEVELOPERS`
--

CREATE TABLE `DEVELOPERS` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `DEVELOPERS`
--

INSERT INTO `DEVELOPERS` (`id`, `created_at`, `updated_at`, `user_id`) VALUES
(4, '2020-03-04 22:52:02', '2020-03-04 22:52:02', 1),
(2, '2020-03-04 21:49:18', '2020-03-04 21:49:18', 3),
(5, '2020-03-04 22:52:13', '2020-03-04 22:52:13', 2),
(6, '2020-03-04 22:58:58', '2020-03-04 22:58:58', 8),
(7, '2020-03-05 02:48:29', '2020-03-05 02:48:29', 10),
(8, '2020-03-17 02:47:56', '2020-03-17 02:47:56', 1),
(9, '2020-05-07 00:59:52', '2020-05-07 00:59:52', 11),
(10, '2020-05-07 01:01:30', '2020-05-07 01:01:30', 12),
(11, '2020-06-02 20:30:00', '2020-06-02 20:30:00', 13);

-- --------------------------------------------------------

--
-- Table structure for table `DEVELOPERS_OF_PROJECTS`
--

CREATE TABLE `DEVELOPERS_OF_PROJECTS` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `developer_id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `module` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `DEVELOPERS_OF_PROJECTS`
--

INSERT INTO `DEVELOPERS_OF_PROJECTS` (`id`, `created_at`, `updated_at`, `developer_id`, `project_id`, `module`) VALUES
(1, '2020-03-31 04:07:05', '2020-03-31 04:07:05', 8, 23, 'ss'),
(2, '2020-03-31 04:07:43', '2020-03-31 04:07:43', 4, 23, 'ddd'),
(3, '2020-03-31 04:08:30', '2020-03-31 04:08:30', 2, 24, 'Cambios de Falconer para Regatta Road'),
(4, '2020-03-31 04:21:02', '2020-03-31 04:21:02', 2, 18, 'Renders interiores'),
(5, '2020-03-31 04:21:32', '2020-03-31 04:21:32', 2, 21, 'renders exteriores'),
(6, '2020-03-31 21:41:10', '2020-03-31 21:41:10', 7, 26, 'Santana Terrace'),
(7, '2020-05-06 00:34:56', '2020-05-06 00:34:56', 2, 30, NULL),
(8, '2020-05-06 00:35:15', '2020-05-06 00:35:15', 2, 32, NULL),
(9, '2020-05-14 20:09:37', '2020-05-14 20:09:37', 2, 38, NULL),
(10, '2020-05-14 23:35:14', '2020-05-14 23:35:14', 5, 39, NULL),
(11, '2020-05-18 19:32:08', '2020-05-18 19:32:08', 2, 40, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `DIRECT_RELATIONSHIP`
--

CREATE TABLE `DIRECT_RELATIONSHIP` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_labor_relationship` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_work` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `labor_union` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iva_condition` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_bank` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cbu_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `familyContact_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `familyContact_phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `familyContact_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `DIRECT_RELATIONSHIP`
--

INSERT INTO `DIRECT_RELATIONSHIP` (`id`, `company_labor_relationship`, `social_work`, `labor_union`, `iva_condition`, `account_bank`, `account_number`, `cbu_number`, `familyContact_name`, `familyContact_phoneNumber`, `familyContact_address`, `created_at`, `updated_at`) VALUES
(1, 'Project Manager', 'Apross', 'no va', 'Monotributista', 'Banco Frances', '247/035163/9', '0170247940000003516399', 'Sabrina Vial', '3515740660', 'Av Spilimbergo 4510', '2020-03-10 03:57:31', '2020-03-10 03:57:31'),
(2, 'Renderista', 'Prevencion Salud', 'no va', 'Monotributista', 'Banco Nacion', '24-31921875-7', 'Maxi.R.Leiva', 'empty', 'empty', 'empty', '2020-03-12 02:21:08', '2020-03-12 02:21:08');

-- --------------------------------------------------------

--
-- Table structure for table `EVENTS`
--

CREATE TABLE `EVENTS` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `project_id` bigint(20) UNSIGNED DEFAULT NULL,
  `view_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `EVENTS`
--

INSERT INTO `EVENTS` (`id`, `message`, `end_date`, `created_at`, `updated_at`, `client_id`, `project_id`, `view_id`) VALUES
(1, 'llega Bart', '2020-03-09', '2020-03-04 02:56:03', '2020-03-04 02:56:03', 2, 1, NULL),
(2, 'llevarlo al hotel', '2020-03-09', '2020-03-04 02:57:41', '2020-03-04 02:57:41', 2, 1, NULL),
(3, 'comenzo Santiago', '2020-03-03', '2020-03-04 02:58:51', '2020-03-04 02:58:51', 2, 1, NULL),
(4, 'llega Bart', '2020-03-09', '2020-03-04 20:54:36', '2020-03-04 20:54:36', 2, 1, NULL),
(5, 'se va bart', '2020-03-19', '2020-03-04 20:55:00', '2020-03-04 20:55:00', 2, 1, NULL),
(6, 'lucas pinta el muro', '2020-03-12', '2020-03-04 20:55:41', '2020-03-04 20:55:41', 2, 1, NULL),
(7, 'comienza el otoño', '2020-03-21', '2020-03-04 20:58:21', '2020-03-04 20:58:21', 2, 1, NULL),
(20, 'CUMPLE 11 ANOS ARCHE', '2020-03-16', '2020-03-13 18:51:26', '2020-03-13 18:51:26', NULL, NULL, NULL),
(19, 'recumple gabu', '2020-03-12', '2020-03-11 02:19:45', '2020-03-11 02:19:45', 7, 6, NULL),
(18, 'cumple Gaby', '2020-03-12', '2020-03-11 02:19:04', '2020-03-11 02:19:04', NULL, NULL, NULL),
(17, 'Hola mundo', '2018-05-25', '2020-03-07 10:20:38', '2020-03-07 10:20:38', NULL, NULL, NULL),
(16, 'Hola mundo', '2018-05-25', '2020-03-07 10:20:38', '2020-03-07 10:20:38', NULL, NULL, NULL),
(21, 'comprar alcohol en gel', '2020-03-19', '2020-03-19 06:25:01', '2020-03-19 06:25:01', NULL, NULL, NULL),
(22, 'presentacion WEEKYOU 16 hs', '2020-03-20', '2020-03-20 04:44:33', '2020-03-20 04:44:33', 13, 13, NULL),
(23, 'SE ACABA LA CUARENTENA', '2020-03-31', '2020-03-21 03:21:32', '2020-03-21 03:21:32', NULL, NULL, NULL),
(24, 'SEGUNDO PLAZO DE CUARENTENA', '2020-04-12', '2020-03-30 09:58:15', '2020-03-30 09:58:15', NULL, NULL, NULL),
(25, 'NO SE ACABA NADA LA CUARENTENA, SE APLAZO', '2020-03-31', '2020-03-30 09:58:51', '2020-03-30 09:58:51', NULL, NULL, NULL),
(26, 'otro plazo cuarentena', '2020-04-26', '2020-04-12 07:14:20', '2020-04-12 07:14:20', NULL, NULL, NULL),
(27, 'cumple el LOCO ELIAN', '2020-04-23', '2020-04-23 22:28:29', '2020-04-23 22:28:29', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `FEEDBACKS`
--

CREATE TABLE `FEEDBACKS` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `view_id` bigint(20) UNSIGNED DEFAULT NULL,
  `developer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image_original` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `FEEDBACKS`
--

INSERT INTO `FEEDBACKS` (`id`, `message`, `image`, `created_at`, `updated_at`, `client_id`, `project_id`, `view_id`, `developer_id`, `image_original`) VALUES
(1, '[{\"comment\":\"cambiar medianera\",\"status\":\"undone\",\"id\":1},{\"comment\":\"sacar pajaros\",\"status\":\"done\",\"id\":2}]', 'upload/feedbacks/5e5eb43880a95.jpg', '2020-03-04 02:47:04', '2020-03-04 20:21:58', 2, 1, 1, NULL, NULL),
(2, '[{\"comment\":\"correr la cancha a la izquierda\",\"status\":\"undone\",\"id\":1},{\"comment\":\"la rotonda es oval no redonda\",\"status\":\"undone\",\"id\":2}]', 'upload/feedbacks/5e5fb9953dbf1.jpg', '2020-03-04 21:22:13', '2020-03-04 21:22:13', 2, 1, 1, NULL, NULL),
(3, '[{\"comment\":\"asasf s ASD ASD a\",\"status\":\"undone\",\"id\":1},{\"comment\":\"sasdAS DSD asd s dASDasdAS\",\"status\":\"undone\",\"id\":2},{\"comment\":\"SasdASD asSD\",\"status\":\"undone\",\"id\":3}]', 'upload/feedbacks/5e5fb9e439f6a.jpg', '2020-03-04 21:23:32', '2020-03-04 21:23:32', 2, 1, NULL, NULL, NULL),
(4, '[{\"comment\":\"cambiar color\",\"status\":\"undone\",\"id\":1},{\"comment\":\"buscar mas contraste\",\"status\":\"undone\",\"id\":2},{\"comment\":\"agregar sillas\",\"status\":\"undone\",\"id\":3},{\"comment\":\"mover planta\",\"status\":\"undone\",\"id\":4}]', 'upload/feedbacks/5e72ee7614bad.jpg', '2020-03-19 11:00:54', '2020-03-19 11:00:54', 13, 13, NULL, NULL, NULL),
(5, '[{\"comment\":\"mas vegetacion\",\"status\":\"undone\",\"id\":1},{\"comment\":\"mas beige\",\"status\":\"undone\",\"id\":2},{\"comment\":\"entorno mas bajo\",\"status\":\"undone\",\"id\":3},{\"comment\":\"chequear muro\",\"status\":\"undone\",\"id\":4},{\"comment\":\"pared de madera\",\"status\":\"undone\",\"id\":5}]', 'upload/feedbacks/5e72f085a1816.jpg', '2020-03-19 11:09:41', '2020-03-19 11:09:41', 13, 13, NULL, NULL, NULL),
(7, '[{\"comment\":\"poner el norte\",\"status\":\"done\",\"id\":1},{\"comment\":\"poner arboles\",\"status\":\"done\",\"id\":2},{\"comment\":\"sacar edificio\",\"status\":\"done\",\"id\":3},{\"comment\":\"nombre de calle\",\"status\":\"done\",\"id\":4},{\"comment\":\"nombre de calle\",\"status\":\"done\",\"id\":5}]', 'upload/feedbacks/5e7527a76ee3b.jpg', '2020-03-21 03:29:27', '2020-03-21 03:30:05', 1, 9, NULL, NULL, NULL),
(8, '[{\"comment\":\"Ducha\",\"status\":\"undone\",\"id\":1},{\"comment\":\"Vegetaci\\u00f3n\",\"status\":\"undone\",\"id\":2},{\"comment\":\"Arena\",\"status\":\"undone\",\"id\":3},{\"comment\":\"Agregar camino\",\"status\":\"undone\",\"id\":4},{\"comment\":\"Quitar personajes 1\",\"status\":\"undone\",\"id\":5},{\"comment\":\"Quitar personajes 2\",\"status\":\"undone\",\"id\":6},{\"comment\":\"Acomodar Pasto\",\"status\":\"undone\",\"id\":7},{\"comment\":\"Acomodar Palmeras\",\"status\":\"undone\",\"id\":8}]', 'upload/feedbacks/5e7ce9ba1b7b9.jpg', '2020-03-27 00:43:22', '2020-03-27 00:43:22', 6, 18, NULL, NULL, NULL),
(9, '[{\"comment\":\"Ducha\",\"status\":\"undone\",\"id\":1},{\"comment\":\"Vegetaci\\u00f3n\",\"status\":\"undone\",\"id\":2},{\"comment\":\"Arena\",\"status\":\"undone\",\"id\":3},{\"comment\":\"Agregar camino\",\"status\":\"undone\",\"id\":4},{\"comment\":\"Quitar personajes 1\",\"status\":\"undone\",\"id\":5},{\"comment\":\"Quitar personajes 2\",\"status\":\"undone\",\"id\":6},{\"comment\":\"Acomodar Pasto\",\"status\":\"undone\",\"id\":7},{\"comment\":\"Acomodar Palmeras\",\"status\":\"undone\",\"id\":8}]', 'upload/feedbacks/5e7ce9c3e69dd.jpg', '2020-03-27 00:43:31', '2020-03-27 00:43:31', 6, 18, NULL, NULL, NULL),
(10, '[{\"comment\":\"se deberian poner 16 reminder aunque scrollee\",\"status\":\"undone\",\"id\":1},{\"comment\":\"la pagina 1 no deberia tener flecha izq - deberia decir pagina 1\\/2 donde el segundo nombre es cantidad de hojas que hay\",\"status\":\"undone\",\"id\":2},{\"comment\":\"se deberia poder crear una pagina aunque no se completen los 16\",\"status\":\"undone\",\"id\":3},{\"comment\":\"seria hermoso poder ponerle nombre a cada pagina - tambien deberia tener boton para archivar hoja\",\"status\":\"undone\",\"id\":4}]', 'upload/feedbacks/5e815c55c2163.jpg', '2020-03-30 09:41:25', '2020-03-30 09:41:25', 13, 23, NULL, NULL, NULL),
(11, '[{\"comment\":\"La cancha de bochas tiene que ser verde como referencias. Actualizar todas.\",\"status\":\"undone\",\"id\":1}]', 'upload/feedbacks/5e836b72dc3cb.jpg', '2020-03-31 23:10:26', '2020-03-31 23:10:26', 6, 18, NULL, NULL, NULL),
(15, '[{\"comment\":\"Agregar autos en el recorrido\",\"status\":\"done\",\"id\":1},{\"comment\":\"Agregar canteros en el borde de la calle\",\"status\":\"done\",\"id\":2},{\"comment\":\"Agregar canteros en el borde de la calle\",\"status\":\"done\",\"id\":3},{\"comment\":\"Agregar palmera\",\"status\":\"done\",\"id\":4}]', 'upload/feedbacks/thumbnails/2020-04-08-1586365626.jpg', '2020-04-09 00:07:08', '2020-04-13 19:24:21', 6, 18, NULL, NULL, 'upload/feedbacks/2020-04-08-1586365626.jpg'),
(16, '[{\"comment\":\"Agregar barrera de ambos lados\",\"status\":\"done\",\"id\":1},{\"comment\":\"Agregar veget. de ambos lados de la garita\",\"status\":\"done\",\"id\":2},{\"comment\":\"+ Veget. en ambos laterales\",\"status\":\"done\",\"id\":3}]', 'upload/feedbacks/thumbnails/2020-04-08-1586366152.jpg', '2020-04-09 00:15:53', '2020-04-09 03:57:51', 6, 18, NULL, NULL, 'upload/feedbacks/2020-04-08-1586366152.jpg'),
(17, '[{\"comment\":\"Arreglar muelle\",\"status\":\"done\",\"id\":1},{\"comment\":\"Mejorar textura piedra\",\"status\":\"done\",\"id\":2}]', 'upload/feedbacks/thumbnails/2020-04-08-1586366379.jpg', '2020-04-09 00:19:40', '2020-04-14 20:43:18', 6, 18, NULL, NULL, 'upload/feedbacks/2020-04-08-1586366379.jpg'),
(18, '[{\"comment\":\"Agregar \\\"tapajunta\\\"\",\"status\":\"done\",\"id\":1},{\"comment\":\"Enterrar un poco reposeras o juntar arena en apoyos. parece que está sobre un piso estable\",\"status\":\"done\",\"id\":2},{\"comment\":\"Plantas parecen flotar\",\"status\":\"done\",\"id\":3}]', 'upload/feedbacks/thumbnails/2020-04-08-1586366972.jpg', '2020-04-09 00:29:32', '2020-04-13 19:24:04', 6, 18, NULL, NULL, 'upload/feedbacks/2020-04-08-1586366972.jpg'),
(19, '[{\"comment\":\"Agregar \\\"tapajunta\\\" en todos los bordes,sino poner un inset de hormigon mismo color que piedra piso, en toda la zona de pool\",\"status\":\"done\",\"id\":1},{\"comment\":\"Mejorar textura piedr\",\"status\":\"done\",\"id\":2},{\"comment\":\"Madera?\",\"status\":\"done\",\"id\":3}]', 'upload/feedbacks/thumbnails/2020-04-08-1586367123.jpg', '2020-04-09 00:32:03', '2020-04-13 19:21:56', 6, 18, NULL, NULL, 'upload/feedbacks/2020-04-08-1586367123.jpg'),
(20, '[{\"comment\":\"Veget en todos los canteros\",\"status\":\"done\",\"id\":1}]', 'upload/feedbacks/thumbnails/2020-04-08-1586368523.jpg', '2020-04-09 00:55:23', '2020-04-13 19:21:40', 6, 18, NULL, NULL, 'upload/feedbacks/2020-04-08-1586368523.jpg'),
(21, '[{\"comment\":\"Veget tal como modelo anterior o parecida\",\"status\":\"done\",\"id\":1},{\"comment\":\"Veget tal como modelo anterior o parecida\",\"status\":\"done\",\"id\":2}]', 'upload/feedbacks/thumbnails/2020-04-08-1586368573.jpg', '2020-04-09 00:56:13', '2020-04-13 19:21:30', 6, 18, NULL, NULL, 'upload/feedbacks/2020-04-08-1586368573.jpg'),
(22, '[{\"comment\":\"1_Mancha Blanca\",\"status\":\"undone\",\"id\":1},{\"comment\":\"2_Veget dentro de muro\",\"status\":\"undone\",\"id\":2}]', 'upload/feedbacks/thumbnails/2020-04-21-1587476719.jpg', '2020-04-21 20:45:20', '2020-04-21 20:45:20', 8, 21, NULL, NULL, 'upload/feedbacks/2020-04-21-1587476719.jpg'),
(23, '[{\"comment\":\"1_Mancha Blanca\",\"status\":\"undone\",\"id\":1}]', 'upload/feedbacks/thumbnails/2020-04-21-1587476772.jpg', '2020-04-21 20:46:12', '2020-04-21 20:46:12', 8, 21, NULL, NULL, 'upload/feedbacks/2020-04-21-1587476772.jpg'),
(24, '[{\"comment\":\"1_Mancha Blanca\",\"status\":\"undone\",\"id\":1},{\"comment\":\"2_Mancha Blanca\",\"status\":\"undone\",\"id\":2}]', 'upload/feedbacks/thumbnails/2020-04-21-1587476807.jpg', '2020-04-21 20:46:47', '2020-04-21 20:46:47', 8, 21, NULL, NULL, 'upload/feedbacks/2020-04-21-1587476807.jpg'),
(25, '[{\"comment\":\"1_Mancha Blanca\",\"status\":\"undone\",\"id\":1},{\"comment\":\"2_Mancha Blanca\",\"status\":\"undone\",\"id\":2},{\"comment\":\"3_Mancha Blanca\",\"status\":\"undone\",\"id\":3},{\"comment\":\"4_Mancha Blanca\",\"status\":\"undone\",\"id\":4}]', 'upload/feedbacks/thumbnails/2020-04-21-1587476843.jpg', '2020-04-21 20:47:24', '2020-04-21 20:47:24', 8, 21, NULL, NULL, 'upload/feedbacks/2020-04-21-1587476843.jpg'),
(26, '[{\"comment\":\"1_Mancha Blanca\",\"status\":\"undone\",\"id\":1},{\"comment\":\"2_Mancha Blanca\",\"status\":\"undone\",\"id\":2},{\"comment\":\"3_Mancha Blanca\",\"status\":\"undone\",\"id\":3},{\"comment\":\"4_Veget dentro del muro\",\"status\":\"undone\",\"id\":4}]', 'upload/feedbacks/thumbnails/2020-04-21-1587476892.jpg', '2020-04-21 20:48:13', '2020-04-21 20:48:13', 8, 21, NULL, NULL, 'upload/feedbacks/2020-04-21-1587476892.jpg'),
(27, '[{\"comment\":\"1_Veget dentro del muro\",\"status\":\"undone\",\"id\":1}]', 'upload/feedbacks/thumbnails/2020-04-21-1587476993.jpg', '2020-04-21 20:49:54', '2020-04-21 20:49:54', 8, 21, NULL, NULL, 'upload/feedbacks/2020-04-21-1587476993.jpg'),
(28, '[{\"comment\":\"1_Mancha Blanca\",\"status\":\"undone\",\"id\":1},{\"comment\":\"2_Mancha Blanca\",\"status\":\"undone\",\"id\":2},{\"comment\":\"3_Veget dentro del muro\",\"status\":\"undone\",\"id\":3}]', 'upload/feedbacks/thumbnails/2020-04-21-1587477025.jpg', '2020-04-21 20:50:25', '2020-04-21 20:50:25', 8, 21, NULL, NULL, 'upload/feedbacks/2020-04-21-1587477025.jpg'),
(29, '[{\"comment\":\"1_Veget dentro del muro\",\"status\":\"undone\",\"id\":1},{\"comment\":\"2_Veget dentro del muro\",\"status\":\"undone\",\"id\":2}]', 'upload/feedbacks/thumbnails/2020-04-21-1587477083.jpg', '2020-04-21 20:51:24', '2020-04-21 20:51:24', 8, 21, NULL, NULL, 'upload/feedbacks/2020-04-21-1587477083.jpg'),
(30, '[{\"comment\":\"1_Mancha blanca\",\"status\":\"undone\",\"id\":1},{\"comment\":\"1_Mancha blanca\",\"status\":\"undone\",\"id\":2},{\"comment\":\"3_Veget dentro del muro\",\"status\":\"undone\",\"id\":3}]', 'upload/feedbacks/thumbnails/2020-04-21-1587477124.jpg', '2020-04-21 20:52:04', '2020-04-21 20:52:04', 8, 21, NULL, NULL, 'upload/feedbacks/2020-04-21-1587477124.jpg'),
(31, '[{\"comment\":\"1_Veget dentro del muro\",\"status\":\"undone\",\"id\":1},{\"comment\":\"2_Mancha blanca\",\"status\":\"undone\",\"id\":2},{\"comment\":\"3_Mancha blanca\",\"status\":\"undone\",\"id\":3}]', 'upload/feedbacks/thumbnails/2020-04-21-1587477179.jpg', '2020-04-21 20:53:00', '2020-04-21 20:53:00', 8, 21, NULL, NULL, 'upload/feedbacks/2020-04-21-1587477179.jpg'),
(32, '[{\"comment\":\"1_Mancha blanca\",\"status\":\"undone\",\"id\":1},{\"comment\":\"2_Mancha blanca\",\"status\":\"undone\",\"id\":2},{\"comment\":\"3_Veget dentro del muro\",\"status\":\"undone\",\"id\":3}]', 'upload/feedbacks/thumbnails/2020-04-21-1587477211.jpg', '2020-04-21 20:53:31', '2020-04-21 20:53:31', 8, 21, NULL, NULL, 'upload/feedbacks/2020-04-21-1587477211.jpg'),
(33, '[{\"comment\":\"sin vereda- poner hedge\",\"status\":\"done\",\"id\":1},{\"comment\":\"quitar bordes palmeras\",\"status\":\"done\",\"id\":2},{\"comment\":\"escalar cypreses\",\"status\":\"done\",\"id\":3},{\"comment\":\"techo de grava\",\"status\":\"done\",\"id\":4}]', 'upload/feedbacks/thumbnails/2020-05-04-1588611924.jpg', '2020-05-05 00:05:25', '2020-05-05 02:26:38', 8, 32, NULL, NULL, 'upload/feedbacks/2020-05-04-1588611924.jpg'),
(37, '[{\"comment\":{\"id\":0,\"value\":\"gfggg\",\"number\":1,\"image\":null,\"width\":\"0px\"},\"status\":\"undone\",\"id\":1}]', 'upload/feedbacks/thumbnails/2020-05-08-1588961775.jpg', '2020-05-09 01:16:15', '2020-05-09 01:16:15', 13, 23, NULL, NULL, 'upload/feedbacks/2020-05-08-1588961775.jpg'),
(38, '[{\"comment\":{\"id\":0,\"value\":\"vvvv\",\"number\":1,\"image\":null,\"width\":\"0px\"},\"status\":\"undone\",\"id\":1}]', 'upload/feedbacks/thumbnails/2020-05-08-1588961814.jpg', '2020-05-09 01:16:54', '2020-05-09 01:16:54', 13, 23, NULL, NULL, 'upload/feedbacks/2020-05-08-1588961814.jpg'),
(36, '[{\"comment\":{\"id\":0,\"value\":\"ffff\",\"number\":1,\"image\":null,\"width\":\"0px\"},\"status\":\"undone\",\"id\":1}]', 'upload/feedbacks/thumbnails/2020-05-08-1588961469.jpg', '2020-05-09 01:11:13', '2020-05-09 01:11:13', 13, 23, NULL, NULL, 'upload/feedbacks/2020-05-08-1588961469.jpg'),
(39, '[{\"comment\":\"cxccccc\",\"status\":\"undone\",\"id\":1}]', 'upload/feedbacks/thumbnails/2020-05-08-1588962195.jpg', '2020-05-09 01:23:16', '2020-05-09 01:23:16', 13, 23, NULL, NULL, 'upload/feedbacks/2020-05-08-1588962195.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `FREELANCE_RELATIONSHIP`
--

CREATE TABLE `FREELANCE_RELATIONSHIP` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `iva_condition` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_bank` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cbu_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `familyContact_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `familyContact_phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `familyContact_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `FREELANCE_RELATIONSHIP`
--

INSERT INTO `FREELANCE_RELATIONSHIP` (`id`, `iva_condition`, `account_bank`, `account_number`, `cbu_number`, `familyContact_name`, `familyContact_phoneNumber`, `familyContact_address`, `created_at`, `updated_at`) VALUES
(1, 'Monotributista', 'Banco Santander', '466-353391/2', '0720466588000035339122', 'empty', 'empty', 'empty', '2020-03-10 03:50:31', '2020-03-10 03:50:31'),
(2, 'Monotributista', 'Banco Frances', '84-422081/5', '0170084840000042208150', 'empty', 'empty', 'empty', '2020-03-12 02:07:45', '2020-03-12 02:07:45'),
(3, 'Monotributista', 'Banco Nacion', '24-31921875-7', 'Maxi.R.Leiva', 'empty', 'empty', 'empty', '2020-03-12 02:19:02', '2020-03-12 02:19:02'),
(4, 'Monotributista', 'Banco Galicia', '4032064-1 199-1', '0070199630004032064110', 'empty', 'empty', 'empty', '2020-03-12 02:26:08', '2020-03-12 02:26:08'),
(5, 'monotribto', '44', '44', '20264822298', 'Magdalena Navarro', '3517666132', 'lote 22 mz 221 estanzuela 2', '2020-03-17 02:53:00', '2020-03-17 02:53:00'),
(6, '1', '1', '1', '1', '1', '1', '1', '2020-03-31 05:19:50', '2020-03-31 05:19:50'),
(7, '1', '1', '1', '1', '1', '1', '1', '2020-04-09 02:14:03', '2020-04-09 02:14:03'),
(8, '.', '.', '.', '.', '.', '.', '.', '2020-05-07 00:18:32', '2020-05-07 00:18:32'),
(9, '.', '.', '.', '.', '.', '.', '.', '2020-05-07 00:19:09', '2020-05-07 00:19:09'),
(10, '1', '1', '1', '1', '1', '1', '1', '2020-05-07 00:59:52', '2020-05-07 00:59:52'),
(11, '1', '1', '1', '1', '1', '1', '1', '2020-05-07 01:01:30', '2020-05-07 01:01:30'),
(12, '.', '.', '.', '.', '.', '.', '.', '2020-05-29 03:16:05', '2020-05-29 03:16:05'),
(13, 'none', '000000', '000000', '000000', 'none', 'none', 'none', '2020-06-02 20:29:59', '2020-06-02 20:29:59');

-- --------------------------------------------------------

--
-- Table structure for table `IMAGES`
--

CREATE TABLE `IMAGES` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_route` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_original` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `IMAGES`
--

INSERT INTO `IMAGES` (`id`, `image_route`, `created_at`, `updated_at`, `image_original`) VALUES
(1, '/upload/views/2020-03-03-1583263837.jpg', '2020-03-04 02:30:40', '2020-03-04 02:30:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `LEADERS_OF_DEVELOPERS`
--

CREATE TABLE `LEADERS_OF_DEVELOPERS` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `leader_id` bigint(20) UNSIGNED NOT NULL,
  `developer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `MANAGERS_OF_LEADERS`
--

CREATE TABLE `MANAGERS_OF_LEADERS` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `manager_id` bigint(20) UNSIGNED NOT NULL,
  `leader_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_01_09_222543_create_company_table', 1),
(4, '2020_01_09_224626_create_persons_table', 1),
(5, '2020_01_09_225700_create_relacion_freelance_table', 1),
(6, '2020_01_09_230604_create_direct_relationship_table', 1),
(7, '2020_01_09_231509_create__relationship_table', 1),
(8, '2020_01_09_231707_create__clients_table', 1),
(9, '2020_01_10_005100_create_reminders_table', 1),
(10, '2020_01_10_005637_create_events_table', 1),
(11, '2020_01_10_005910_create_projects_table', 1),
(12, '2020_01_10_010159_create_feedbacks_table', 1),
(13, '2020_01_10_010344_create_images_table', 1),
(14, '2020_01_10_010504_create_user_type_table', 1),
(15, '2020_01_10_010647_create_templates_table', 1),
(16, '2020_01_10_010708_create_views_table', 1),
(17, '2020_01_10_011108_create_user_permissions_table', 1),
(18, '2020_01_10_011329_create_project_manager_table', 1),
(19, '2020_01_10_011338_create_project_leader_table', 1),
(20, '2020_01_10_011347_create_developer_table', 1),
(21, '2020_01_10_011646_create_delivery_table', 1),
(22, '2020_01_10_012113_create_tasks_table', 1),
(23, '2020_01_10_012431_create_managers_of_leaders_table', 1),
(24, '2020_01_10_012444_create_leaders_of_developers_table', 1),
(25, '2020_01_10_012511_create_developers_of_projects_table', 1),
(26, '2020_01_10_012948_create_countries_table', 1),
(27, '2020_01_10_012959_create_states_table', 1),
(28, '2020_01_10_013007_create_cities_table', 1),
(29, '2020_01_10_194222_modify_companies_table', 1),
(30, '2020_01_10_194830_modify_users_table', 1),
(31, '2020_01_10_195250_modify_persons_table', 1),
(32, '2020_01_10_195655_modify_relatioship_table', 1),
(33, '2020_01_10_200118_modify_clients_table', 1),
(34, '2020_01_10_200326_modify_reminders_table', 1),
(35, '2020_01_10_200452_modify_events_table', 1),
(36, '2020_01_10_200622_modify_projects_table', 1),
(37, '2020_01_10_200824_modify_feedback_table', 1),
(38, '2020_01_10_201107_modify_views_table', 1),
(39, '2020_01_10_201228_modify_rol_permissions_table', 1),
(40, '2020_01_10_201411_modify_project_managers_table', 1),
(41, '2020_01_10_201459_modify_project_leaders_table', 1),
(42, '2020_01_10_201518_modify_developers_table', 1),
(43, '2020_01_10_201609_modify_deliveries_table', 1),
(44, '2020_01_10_201742_modify_tasks_table', 1),
(45, '2020_01_10_201949_modify_leader_of_developers_table', 1),
(46, '2020_01_10_202108_modify_managers_of_leaders_table', 1),
(47, '2020_01_11_144521_add_cities_to_cities_table', 1),
(48, '2020_01_11_144843_add_states_to_states_table', 1),
(49, '2020_01_11_144948_add_countries_to_countries_table', 1),
(50, '2020_01_11_145231_add_freelance_relationship_to_freelance_relationship_table', 1),
(51, '2020_01_11_145955_add_direc_relationship_to_direc_relationship_table', 1),
(52, '2020_01_11_145955_add_relationship_to_relationship_table', 1),
(53, '2020_01_11_150219_add_persons_to_persons_table', 1),
(54, '2020_01_11_150659_add_clients_to_clients_table', 1),
(55, '2020_01_11_203133_create_posts_table', 1),
(56, '2020_01_12_150520_create_project_views_table', 1),
(57, '2020_01_13_012127_add_roles_to_user_roles_table', 1),
(58, '2020_01_13_012313_add_users_to_users_table', 1),
(59, '2020_01_13_013417_add_prleaders_to_prleaders_table', 1),
(60, '2020_01_13_013430_add_prmanagers_to_prmanagers_table', 1),
(61, '2020_01_13_014428_add_projects_to_projects_table', 1),
(62, '2020_01_13_232932_add_images_to_images_table', 1),
(63, '2020_01_13_233057_add_views_to_views_table', 1),
(64, '2020_01_13_233143_add_projectviews_to_projectviews_table', 1),
(65, '2020_01_13_385916_add_posts_to_post_table', 1),
(66, '2020_01_14_235846_add_remider_to_reminders_table', 1),
(67, '2020_01_15_194843_add_tasks_to_tasks_table', 1),
(68, '2020_01_20_134004_add_templates_to_templates_table', 1),
(69, '2020_01_21_221642_add_events_to_events_table', 1),
(70, '2020_02_09_213233_add_leadersofdevelopers_to_table_leadersofdevelopers', 1),
(71, '2020_02_09_213832_add_devellopers', 1),
(72, '2020_03_22_192715_modify_developers_of_projects_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `PASSWORD_RESET`
--

CREATE TABLE `PASSWORD_RESET` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PERSONS`
--

CREATE TABLE `PERSONS` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dni` int(11) NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identification_code` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `relationship_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PERSONS`
--

INSERT INTO `PERSONS` (`id`, `name`, `last_name`, `dni`, `alias`, `email`, `phone_number`, `address`, `identification_code`, `created_at`, `updated_at`, `country_id`, `state_id`, `city_id`, `relationship_id`) VALUES
(2, 'Leonardo Victor', 'Londero', 31844244, 'Leo', 'lvlondero@gmail.com', '3512145769', 'LOTE 7 MZ 96, ALTO WARCALDE', 100102, '2020-03-03 03:50:01', '2020-03-05 00:53:14', 1, 1, 1, NULL),
(3, 'Lucas', 'Jagodnik', 26482229, 'LUCAS', 'ljagod@gmail.com', '0351155178175', 'Mz 221 Lote 22 Estanzuela 2, La Calera Cordoba', 100101, '2020-03-03 03:51:50', '2020-03-17 02:53:00', 1, 1, 1, 7),
(4, 'Maximiliano Raul', 'Leiva', 31921875, 'Maxi', 'maxileiva01@gmail.com', '3517048031', 'Obispo Mercadillo 4222', 100107, '2020-03-03 03:55:27', '2020-03-12 02:21:08', 1, 1, 1, 5),
(5, 'Elian', 'Jagodnik', 40065761, 'Elian', 'jagodnikelian@gmail.com', '3515581132', 'andres ceballos 3515', 100105, '2020-03-03 03:58:04', '2020-03-05 00:53:23', 1, 1, 1, NULL),
(6, 'Paula Cecilia', 'Vial', 34440223, 'Pau', 'paula.c.vial@hotmail.com', '3513138128', 'Av Spilimbergo 4510', 100104, '2020-03-03 03:59:57', '2020-03-10 03:57:31', 1, 1, 1, 2),
(7, 'Jones', 'Falconer', 222, 'Falconer', 'falconer@rmail.com', '2396495056', '1250 Tamiami Trail N Ste 201, Naples, FL 34102, United States', 100302, '2020-03-03 06:32:02', '2020-03-09 23:12:11', 1, 1, 1, NULL),
(8, 'Barthelemy', 'Berthier', 3333, 'Bart', 'bart@email.com', '675949921', 'Via della Torre del Gallo 21 b 50125 Firenze', 100301, '2020-03-03 06:38:17', '2020-03-05 01:48:33', 1, 1, 1, NULL),
(9, 'Douglas', 'Washington', 4444, 'Doug', 'doug@yes.com', '8502312787', 'Rosemary Beach, FL 32461', 100304, '2020-03-03 06:42:00', '2020-03-05 01:32:40', 1, 1, 1, NULL),
(10, 'Santiago', 'Gamarra', 39131089, 'Santi', 'santiago.archelier@gmail.com', '2994021558', 'velez sarfield 1093 7A', 100103, '2020-03-04 20:30:01', '2020-03-05 00:45:08', 1, 1, 1, NULL),
(11, 'Kevin', 'Pellon', 222, 'Kevin', 'kevin@dsb-architects.com', '16468246503', '244 5th avenue, Suite c37, New York', 100307, '2020-03-04 21:39:21', '2020-03-05 00:51:33', 1, 1, 1, NULL),
(12, 'Mary', 'Faithorn Scott', 333, 'Mary', 'mfscottarch@gmail.com', '9142416262', '33 Fairways Drive Mount Kisco, NY  10549', 100308, '2020-03-04 22:04:09', '2020-03-05 00:51:28', 1, 1, 1, NULL),
(13, 'Ian', 'Edwards', 333, 'Sugar George', 'ianedwardsarchitecture@gmail.com', '12642357667', '1366  The Valley  ANGUILLA B.W.I', 100306, '2020-03-04 22:24:21', '2020-03-05 00:51:20', 1, 1, 1, NULL),
(14, 'Josh', 'Freidfertig', 3333, 'Jaf', 'josh@jafbuilders.com', '9147235420', '69 Harney Road, Ste #5 Scarsdale, NY  10583', 100305, '2020-03-04 22:29:10', '2020-03-05 01:41:28', 1, 1, 1, NULL),
(15, 'Nicolas', 'Morero', 123, 'Nmorero', 'nmorero00@gmail.com', '3513685723', 'Manzana 74, lote 3 Los Arboles, Valle Escondido', 100106, '2020-03-04 22:44:12', '2020-03-05 00:46:27', 1, 1, 1, NULL),
(16, 'Sofía', 'Jagodnik', 43881486, 'Sofi', 'sofia.jagod@gmail.com', '3515443283', 'Av Donato Alvarez 9238', 100108, '2020-03-04 22:48:02', '2020-03-05 00:46:52', 1, 1, 1, NULL),
(17, 'Diego Alejandro', 'Arispe Vargas', 35888613, 'Diego', 'darender.archviz@gmail.com', '2974702918', 'Rosario de Santa Fe 1106 Dpto 1D', 100201, '2020-03-04 23:55:23', '2020-05-29 03:16:05', 1, 1, 1, 14),
(18, 'Federico', 'Fantini', 26903397, 'Fede', 'arquitecto.federico.fantini@gmail.com', '3512256993', 'Charcas 1550 B° Pueyrredon - Cordoba', 100202, '2020-03-04 23:58:56', '2020-05-07 00:19:09', 1, 1, 1, 11),
(19, 'Juliet', 'Olguin', 11, 'Juliet', 'juliet@sarrazinarchitecture.com', '9145844331', '21 north main st, suite 209  port chester ny', 100309, '2020-03-05 00:31:48', '2020-03-05 00:50:59', 1, 1, 1, NULL),
(20, 'Pierre', 'Jacques', 123, 'Pierre', 'pierre@sarrazinarchitecture.com', '9145848437', '21 north main st, suite 209  port chester ny', 100303, '2020-03-05 00:38:04', '2020-03-09 23:36:21', 1, 1, 1, NULL),
(21, 'Federico Leandro', 'Caccioppoli', 30327513, 'Fede Ca', 'fede.five3d@gmail.com', '3513864504', 'Alejandro Dumas 2065, Cordoba', 100203, '2020-03-05 01:00:47', '2020-03-10 03:50:31', 1, 1, 1, 1),
(22, 'Luu Quoc', 'Hung', 111, 'Hung', 'luuhung.47th@gmail.com', '0977864911', 'Apartment A24-02, Hoang Anh Gia Lai LakeView, 72 Ham Nghi street, Hai Chau District, Da Nang City, Viet Nam', 100204, '2020-03-05 02:05:11', '2020-03-05 02:05:11', 1, 1, 1, NULL),
(23, 'Carlos Guido', 'Mascheroni', 30985511, 'Charlie', 'cgmascheroni@gmail.com', '3512397400', 'Raimon Poincare 8662 Dpto: 3- Arguello, Cordoba', 100205, '2020-03-05 02:18:14', '2020-05-07 00:18:32', 1, 1, 1, 10),
(24, 'Maria Lucrecia', 'Sicilia', 111, 'Lucre', 'marialucreciasicilia@hotmail.com', '3517685158', 'aaa', 100109, '2020-03-05 02:45:19', '2020-03-09 23:36:53', 1, 1, 1, NULL),
(25, 'Martin Matias', 'Fernandez', 33892950, 'Martin F', 'martinfernandezercoli@gmail.com', '3513742950', 'Menendez pidal 4057', 100207, '2020-03-12 02:25:09', '2020-03-12 02:26:08', 1, 1, 1, 6),
(26, 'Maelly', 'Garschagen Gava', 1234, 'Maelly', 'maelly@lngstudios.com', '7787241372', 'Vancouver: 254 - 60 Smithe Street, Vancouver, BC, V6B 0B5      Toronto: 229 - 181 Carlaw Avenue, Toronto, ON, M4M 2S1', 1234, '2020-03-31 05:19:50', '2020-03-31 05:19:50', 1, 1, 1, 8),
(27, 'Tobi', 'Schmidt', 23123, 'Tobi', 'tobi@tobischmidtdesigns.com', '123123', '123123', 38, '2020-04-09 02:14:03', '2020-04-09 02:14:03', 2, 2, 1, 9),
(28, 'Federico', 'Fantini', 1, 'ffantini', 'arquitecto.federico.fantini@gmail.com', '1', '1', 1, '2020-05-07 00:59:52', '2020-05-07 00:59:52', 1, 1, 1, 12),
(29, 'Charly', 'Mascheroni', 1, '1', 'cgmascheroni@gmail.com', '1', '1', 1, '2020-05-07 01:01:30', '2020-05-07 01:01:30', 1, 1, 1, 13),
(30, 'Diego', 'Arispe', 0, 'Diego', 'darender.archviz@gmail.com', '0000000', 'none', 0, '2020-06-02 20:29:59', '2020-06-02 20:29:59', 1, 1, 1, 15);

-- --------------------------------------------------------

--
-- Table structure for table `POSTS`
--

CREATE TABLE `POSTS` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `view_id` bigint(20) UNSIGNED DEFAULT NULL,
  `feedback_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image_original` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `POSTS`
--

INSERT INTO `POSTS` (`id`, `title`, `message`, `image`, `type`, `user_id`, `client_id`, `project_id`, `view_id`, `feedback_id`, `updated_at`, `created_at`, `image_original`) VALUES
(58, 'Ventana', 'Todas las ventanas serán así', '/upload/posts/2020-03-26-1585251976.jpg', 'post', 7, 3, 20, NULL, NULL, '2020-03-27 02:46:16', '2020-03-27 02:46:16', NULL),
(56, 'New Feedback', ' ', 'upload/feedbacks/5e7ce9c3e69dd.jpg', 'feedbackCreate', 7, 6, 18, NULL, 9, '2020-03-27 00:43:31', '2020-03-27 00:43:31', NULL),
(57, 'Inicio Proyecto - 125 North Main Street', '2 representaciones (frontal y posterior) para estos:\r\n* Frente del edificio\r\n* Edificio trasero', '/upload/posts/2020-03-26-1585251868.jpg', 'post', 7, 3, 20, NULL, NULL, '2020-03-27 02:44:33', '2020-03-27 02:44:33', NULL),
(63, 'boton sistema', 'fijate nico, ahi a la izquierda arriba', '/upload/posts/2020-03-27-1585274644.PNG', 'post', 4, 13, 23, NULL, NULL, '2020-03-27 09:04:04', '2020-03-27 09:04:04', NULL),
(81, 'Comments Barth RVA-StLambert', 'Hola, ok.\r\n\r\npues también pisos en edificios y llenar agujeros en fachadas exteriores. Pero tambien pensar en hacer unos shutters luego.\r\n\r\n\r\nEspero que para mañana lo tendremos por fin listo para texturizar.\r\n\r\nConfirmame que teneis bastante fotos para documentarse\r\n\r\nSaludos\r\n\r\nBarth', NULL, 'post', 10, 8, 21, NULL, NULL, '2020-04-01 18:46:38', '2020-04-01 18:46:38', NULL),
(79, 'New Feedback', ' ', 'upload/feedbacks/5e836b72dc3cb.jpg', 'feedbackCreate', 10, 6, 18, NULL, 11, '2020-03-31 23:10:26', '2020-03-31 23:10:26', NULL),
(77, 'Renderings front and rear', '#1. Change the roof color to a darker charcoal gray more like the garage doors\r\n#2. On the rear remove the window treatments that are blowing out of the sliding door.', '/upload/posts/2020-03-30-1585596699.jpg', 'post', 10, 1, 24, NULL, NULL, '2020-03-31 02:31:40', '2020-03-31 02:31:40', NULL),
(36, 'Artwork', 'Pau, hay que agregar este cuadro atrás de la cama', '/upload/posts/2020-03-25-1585144572.jpeg', 'post', 7, 6, 18, NULL, NULL, '2020-03-25 20:56:12', '2020-03-25 20:56:12', NULL),
(37, 'Inicio Proyecto RVA', 'Hola, \r\n\r\nvengo de recibir validación para RVA.\r\nPuse en FTP elementos que tengo ahora pero no hay nada por empezar. \r\nEl proyecto es una renovación de existante pero la mayor parte del trabajo consiste en el paisaje del patio. \r\nViernes tendre elementos para hacer fachadas y sabre si el paisaje queda tal como en pdf o si hay cambios.\r\nNuestro papel es hacer 3 imágenes dentro el patio y luego un mini film que incluirá esas 3 imagenes pero también 2 o quizas 3 secuencias full 3D para completar la presentación.\r\nEsas secuencias en mi idea son:\r\n- vista top (tal como Bouygues)\r\n- vista de ángulo bajo hacia cielo y parte alta de fachada (con 1 rama y flare)\r\n- y un travelling para hacer transición entre 2 imagenes.\r\n\r\nTambien pienso que se hara la introducción del film con un google studio pero como es existante, no hay nada que inserir. \r\n\r\nGracias por dar un ojo por fa y quedar listo a empezar viernes.\r\nSaludos\r\nBarth', '/upload/posts/2020-03-25-1585145684.png', 'post', 7, 8, 21, NULL, NULL, '2020-03-25 21:14:50', '2020-03-25 21:14:50', NULL),
(44, 'tamano de images on POST', 'este estudio hice de los tamanos de POST', '/upload/posts/2020-03-25-1585164601.jpg', 'post', 4, 13, 23, NULL, NULL, '2020-03-26 02:30:01', '2020-03-26 02:30:01', NULL),
(45, 'Site Plant - Tranquility Beach', 'Ian mando para empezar con la otra parte del proyecto, comenzar a modelar todo lo que pide', '/upload/posts/2020-03-26-1585218274.png', 'post', 7, 6, 18, NULL, NULL, '2020-03-26 17:24:40', '2020-03-26 17:24:40', NULL),
(46, 'Cabañas TBD', 'Planta del formato general de los 3 tipos de cabañas', '/upload/posts/2020-03-26-1585219496.png', 'post', 7, 6, 18, NULL, NULL, '2020-03-26 17:44:56', '2020-03-26 17:44:56', NULL),
(47, '3 tipos de techos', 'Aca muestro forma de los 3 tipos de techos de cabañas que se van a presentar en el proyecto', '/upload/posts/2020-03-26-1585219642.jpg', 'post', 7, 6, 18, NULL, NULL, '2020-03-26 17:47:22', '2020-03-26 17:47:22', NULL),
(48, 'Cámaras Exteriores', 'Confirmó cam: 4/5/6/10/11/12/15/16/17', '/upload/posts/2020-03-26-1585220127.jpg', 'post', 7, 6, 18, NULL, NULL, '2020-03-26 17:55:27', '2020-03-26 17:55:27', NULL),
(49, 'Funicular', 'Medio de elevación para ascender y descender del acantilado', '/upload/posts/2020-03-26-1585221020.jpg', 'post', 7, 6, 18, NULL, NULL, '2020-03-26 18:10:20', '2020-03-26 18:10:20', NULL),
(50, 'Camara Ingreso', 'Algunas referencias para pode hacer las bolas de fuego en la entrada', '/upload/posts/2020-03-26-1585223107.jpg', 'post', 7, 6, 18, NULL, NULL, '2020-03-26 18:45:07', '2020-03-26 18:45:07', NULL),
(51, 'Diseño Ducha', 'Ejemplo que mando Ian de las duchas', '/upload/posts/2020-03-26-1585223738.jpg', 'post', 7, 6, 18, NULL, NULL, '2020-03-26 18:55:38', '2020-03-26 18:55:38', NULL),
(52, 'Cancha de Bochas', 'Ejemplo de cancha de bochas y dimensiones', '/upload/posts/2020-03-26-1585224017.jpg', 'post', 7, 6, 18, NULL, NULL, '2020-03-26 19:00:17', '2020-03-26 19:00:17', NULL),
(53, 'Inicio Proyecto - Gordon G6', 'Hola Caballeros!\r\n\r\nThis is a new project for us...is there any way we could possibly get a simple black and white rendering by 5:00 pm on Wednesday of next week?\r\n\r\nAlso, let us know if we need to pay you for previous work that you have done.\r\n\r\nGracias por TODO!\r\n\r\nDoug', '/upload/posts/2020-03-26-1585228895.JPG', 'post', 7, 2, 19, NULL, NULL, '2020-03-26 20:21:35', '2020-03-26 20:21:35', NULL),
(54, 'Achicar las Palmeras', 'Gracias, amigos!  Could you possibly make the palm trees about half as tall and send again?', '/upload/posts/2020-03-26-1585229020.jpg', 'post', 7, 2, 19, NULL, NULL, '2020-03-26 20:23:40', '2020-03-26 20:23:40', NULL),
(55, 'New Feedback', ' ', 'upload/feedbacks/5e7ce9ba1b7b9.jpg', 'feedbackCreate', 7, 6, 18, NULL, 8, '2020-03-27 00:43:22', '2020-03-27 00:43:22', NULL),
(38, 'Referencia de Vegetación', 'https://vimeo.com/307306153 \r\nEn este link hay un video que muestra como quiere barth que sea la vegetación', NULL, 'post', 7, 8, 21, NULL, NULL, '2020-03-25 21:20:16', '2020-03-25 21:20:16', NULL),
(39, 'Referencias', 'Collage vegetación', '/upload/posts/2020-03-25-1585148488.jpg', 'post', 7, 8, 21, NULL, NULL, '2020-03-25 22:01:28', '2020-03-25 22:01:28', NULL),
(40, 'Posibles Camaras', 'Hola,\r\n\r\n\r\nestoy probando cameras y paths.\r\n\r\nPuedes avisar a feo de hacer también fachadas en ingreso?\r\n\r\n\r\nGracias\r\n\r\nBarth', '/upload/posts/2020-03-25-1585149840.jpg', 'post', 7, 8, 21, NULL, NULL, '2020-03-25 22:24:00', '2020-03-25 22:24:00', NULL),
(41, 'Portones Negros', 'sin olvidar portones con rejas por fa\r\nBarth', '/upload/posts/2020-03-25-1585150055.png', 'post', 7, 8, 21, NULL, NULL, '2020-03-25 22:27:38', '2020-03-25 22:27:38', NULL),
(42, 'HOLA a TODOS, yo me quedo en casa', 'me pone contento ver fluir este sistema. les mando un Beso #yomequedoencasa', NULL, 'post', 4, 8, 21, NULL, NULL, '2020-03-25 23:13:17', '2020-03-25 23:13:17', NULL),
(43, 'ALTO GUISO', 'Me estoy por comer ALTO GUISO los quiero YOMEQUEDOENCASA', NULL, 'post', 5, 8, 21, NULL, NULL, '2020-03-25 23:25:18', '2020-03-25 23:25:18', NULL),
(59, 'Color de pintura', 'Las partes que no son de ladrillo visto se utilizara este tono de gris.', '/upload/posts/2020-03-26-1585252036.jpg', 'post', 7, 3, 20, NULL, NULL, '2020-03-27 02:47:16', '2020-03-27 02:47:16', NULL),
(60, 'Cámaras seleccionadas por Kevin', 'Cam 01 y Cam 02', '/upload/posts/2020-03-26-1585252131.jpg', 'post', 7, 3, 20, NULL, NULL, '2020-03-27 02:48:51', '2020-03-27 02:48:51', NULL),
(61, 'Feedback de Kevin', 'Mantener la moldura de piedra lima que envuelve el edificio en la parte superior, sobre los escaparates, alrededor de la puerta y las ventanas, en color beige.', '/upload/posts/2020-03-26-1585252460.jpg', 'post', 7, 3, 20, NULL, NULL, '2020-03-27 02:54:21', '2020-03-27 02:54:21', NULL),
(64, 'Matching camara', '1-', '/upload/posts/2020-03-27-1585329673.jpg', 'post', 7, 6, 18, NULL, NULL, '2020-03-28 00:21:13', '2020-03-28 00:21:13', NULL),
(65, 'Matching camara:', '2-', '/upload/posts/2020-03-27-1585329716.jpg', 'post', 7, 6, 18, NULL, NULL, '2020-03-28 00:21:56', '2020-03-28 00:21:56', NULL),
(72, 'Matching camara', '4-', '/upload/posts/2020-03-29-1585518092.jpg', 'post', 7, 6, 18, NULL, NULL, '2020-03-30 04:41:32', '2020-03-30 04:41:32', NULL),
(73, 'Matching camara', '5-', '/upload/posts/2020-03-29-1585518264.jpg', 'post', 7, 6, 18, NULL, NULL, '2020-03-30 04:44:41', '2020-03-30 04:44:41', NULL),
(75, 'New Feedback', ' ', 'upload/feedbacks/5e815c55c2163.jpg', 'feedbackCreate', 4, 13, 23, NULL, 10, '2020-03-30 09:41:25', '2020-03-30 09:41:25', NULL),
(95, 'Mural', 'En la espalda de nuestro edifico en esta pared gris entera. Si es possible', '/upload/posts/2020-04-06-1586210603.jpg', 'post', 10, 3, 20, NULL, NULL, '2020-04-07 05:03:23', '2020-04-07 05:03:23', NULL),
(71, 'Matching camara', '3-', '/upload/posts/2020-03-29-1585518058.jpg', 'post', 7, 6, 18, NULL, NULL, '2020-03-30 04:40:58', '2020-03-30 04:40:58', NULL),
(94, 'Comments', 'Noto efectivamente unas cosas que mejorar (adjunto)', '/upload/posts/2020-04-05-1586127139.jpg', 'post', 10, 8, 21, NULL, NULL, '2020-04-06 05:52:21', '2020-04-06 05:52:21', NULL),
(96, 'Comments', '1_la parte posterior del edificio es en realidad un plano plano hasta la parte superior\r\n2_cambiar la imagen del mural\r\n3_Sería genial si la imagen pudiera envolverse al frente del edificio en el área resaltada en amarillo', '/upload/posts/2020-04-07-1586287820.png', 'post', 10, 3, 20, NULL, NULL, '2020-04-08 02:30:20', '2020-04-08 02:30:20', NULL),
(92, 'Cam Nuevas Barth', 'te paso 2 cameras mas que me gustaría proponer también\r\nEspero que se avanza bien el texturing de fachadas', '/upload/posts/2020-04-03-1585936136.jpg', 'post', 10, 8, 21, NULL, NULL, '2020-04-04 00:48:56', '2020-04-04 00:48:56', NULL),
(91, 'PSD', 'The cream colo for the limestone looks better! \r\n2 more things:\r\nCan we make the gray a little darker?\r\nCan we add a giant mural to the back wall, something from \"wyndwood walls\" in Miami:', '/upload/posts/2020-04-03-1585931640.jpg', 'post', 10, 3, 20, NULL, NULL, '2020-04-03 23:34:01', '2020-04-03 23:34:01', NULL),
(97, 'Comments', 'Perdona por la confusion. \r\nLa altura de la maqueta esta bien. Creo que el quiere verlo mas cerca asi que debemos usar la camara de la izquierda.\r\nNo hay techo diagonal en la parte de atras:', '/upload/posts/2020-04-07-1586288168.jpg', 'post', 10, 3, 20, NULL, NULL, '2020-04-08 02:36:08', '2020-04-08 02:36:08', NULL),
(105, 'Comments', 'Revisar Mail + Feedback', '/upload/posts/thumbnails/2020-04-08-1586349838.png', 'post', 10, 8, 21, NULL, NULL, '2020-04-08 19:43:59', '2020-04-08 19:43:59', '/upload/posts/2020-04-08-1586349838.png'),
(107, 'New Feedback', ' ', 'upload/feedbacks/thumbnails/2020-04-08-1586365626.jpg', 'feedbackCreate', 10, 6, 18, NULL, 15, '2020-04-09 00:07:08', '2020-04-09 00:07:08', 'upload/feedbacks/2020-04-08-1586365626.jpg'),
(108, 'New Feedback', ' ', 'upload/feedbacks/thumbnails/2020-04-08-1586366152.jpg', 'feedbackCreate', 10, 6, 18, NULL, 16, '2020-04-09 00:15:53', '2020-04-09 00:15:53', 'upload/feedbacks/2020-04-08-1586366152.jpg'),
(109, 'New Feedback', ' ', 'upload/feedbacks/thumbnails/2020-04-08-1586366379.jpg', 'feedbackCreate', 10, 6, 18, NULL, 17, '2020-04-09 00:19:40', '2020-04-09 00:19:40', 'upload/feedbacks/2020-04-08-1586366379.jpg'),
(110, 'New Feedback', ' ', 'upload/feedbacks/thumbnails/2020-04-08-1586366972.jpg', 'feedbackCreate', 10, 6, 18, NULL, 18, '2020-04-09 00:29:32', '2020-04-09 00:29:32', 'upload/feedbacks/2020-04-08-1586366972.jpg'),
(111, 'New Feedback', ' ', 'upload/feedbacks/thumbnails/2020-04-08-1586367123.jpg', 'feedbackCreate', 10, 6, 18, NULL, 19, '2020-04-09 00:32:03', '2020-04-09 00:32:03', 'upload/feedbacks/2020-04-08-1586367123.jpg'),
(112, 'New Feedback', ' ', 'upload/feedbacks/thumbnails/2020-04-08-1586368523.jpg', 'feedbackCreate', 10, 6, 18, NULL, 20, '2020-04-09 00:55:23', '2020-04-09 00:55:23', 'upload/feedbacks/2020-04-08-1586368523.jpg'),
(113, 'New Feedback', ' ', 'upload/feedbacks/thumbnails/2020-04-08-1586368573.jpg', 'feedbackCreate', 10, 6, 18, NULL, 21, '2020-04-09 00:56:13', '2020-04-09 00:56:13', 'upload/feedbacks/2020-04-08-1586368573.jpg'),
(114, 'Feedback edited', ' ', 'upload/feedbacks/thumbnails/2020-04-08-1586366152.jpg', 'feedback', 3, 6, 18, NULL, 16, '2020-04-09 03:57:51', '2020-04-09 03:57:51', NULL),
(115, 'Kitchen information', 'Tobi mandó información de muebles para la cocina, vamos a comenzar el proceso con HUNTER. Esperando de Tobi información de las otras cámaras, y ángulos aproximados.', NULL, 'post', 9, 15, 29, NULL, NULL, '2020-04-10 03:38:55', '2020-04-10 03:38:55', NULL),
(116, 'Feedback edited', ' ', 'upload/feedbacks/thumbnails/2020-04-08-1586368573.jpg', 'feedback', 3, 6, 18, NULL, 21, '2020-04-13 19:21:30', '2020-04-13 19:21:30', NULL),
(117, 'Feedback edited', ' ', 'upload/feedbacks/thumbnails/2020-04-08-1586368523.jpg', 'feedback', 3, 6, 18, NULL, 20, '2020-04-13 19:21:40', '2020-04-13 19:21:40', NULL),
(118, 'Feedback edited', ' ', 'upload/feedbacks/thumbnails/2020-04-08-1586367123.jpg', 'feedback', 3, 6, 18, NULL, 19, '2020-04-13 19:21:56', '2020-04-13 19:21:56', NULL),
(119, 'Feedback edited', ' ', 'upload/feedbacks/thumbnails/2020-04-08-1586366972.jpg', 'feedback', 3, 6, 18, NULL, 18, '2020-04-13 19:24:04', '2020-04-13 19:24:04', NULL),
(120, 'Feedback edited', ' ', 'upload/feedbacks/thumbnails/2020-04-08-1586365626.jpg', 'feedback', 3, 6, 18, NULL, 15, '2020-04-13 19:24:21', '2020-04-13 19:24:21', NULL),
(121, 'Bedroom information', 'Tobi envió información detallada d muebles. Tiene que mandar altura de ceiling y aproximado de camara.', NULL, 'post', 9, 15, 29, NULL, NULL, '2020-04-13 20:38:22', '2020-04-13 20:38:22', NULL),
(122, 'Feedback edited', ' ', 'upload/feedbacks/thumbnails/2020-04-08-1586366379.jpg', 'feedback', 3, 6, 18, NULL, 17, '2020-04-14 01:44:00', '2020-04-14 01:44:00', NULL),
(123, 'Comments', '- poner malla en cajas de escaleras\r\n\r\n- forma de shutters\r\n\r\n- tamano de la map de ladrillo y joints horizontales en pared blanca\r\n-Propongo hoy también buscar a los 2 o 3 paths para la animación', '/upload/posts/thumbnails/2020-04-14-1586867332.jpg', 'post', 10, 8, 21, NULL, NULL, '2020-04-14 19:28:53', '2020-04-14 19:28:53', '/upload/posts/2020-04-14-1586867332.jpg'),
(124, 'Feedback edited', ' ', 'upload/feedbacks/thumbnails/2020-04-08-1586366379.jpg', 'feedback', 3, 6, 18, NULL, 17, '2020-04-14 20:43:18', '2020-04-14 20:43:18', NULL),
(125, 'Cam', 'Porfa renderiza en wireframe todas\r\nHacer full y enviar', '/upload/posts/thumbnails/2020-04-14-1586878218.jpg', 'post', 10, 6, 18, NULL, NULL, '2020-04-14 22:30:19', '2020-04-14 22:30:19', '/upload/posts/2020-04-14-1586878218.jpg'),
(126, 'Revisar', 'REVISAR:\r\nLower Deck: patas de las reposeras no estan enterradas\r\n            falta \"tapajunta\" en el borde pegado a la arena (adjunto foto)\r\nDayBed: falta \"tapajunta\" en algunos lugares (adjunto foto)\r\nO:\\IAN EDWARDS\\Tranquility Beach Dominica Expansion\\From Archelier\\Feedback', '/upload/posts/thumbnails/2020-04-14-1586887273.JPG', 'post', 10, 6, 18, NULL, NULL, '2020-04-15 01:01:14', '2020-04-15 01:01:14', '/upload/posts/2020-04-14-1586887273.JPG'),
(127, 'anima', '- Camdown mucho mas lenta, mas baja, target poquito mas horizontal y lo hiciera en otra dirección pas no confrontarse con el pendiente pero al contrario apena elevarse hacia nivel de ojo + duración de 8sec para cada una y luego veremos si se corta en montaje\r\n\r\n- Cam high no sirve porque tendremos imágenes a nivel de ojo para bien entender percepción humana del proyecto, mas alto no sera el caso.  Pero tal como indique, me gustaría tener una camera con focus-defocus (enfoque entre primer plano y fondo)\r\n\r\n- Cam Top, me va bien. Solo me gustaría probar que no siga exactamente el eje del patio pero que sea apena descentrado\r\n\r\n- Cam plane ok\r\n\r\n- Cam tree ok, pero si puedes probar desde posicion mas baja, quizás funcionaria bien.', '/upload/posts/thumbnails/2020-04-16-1587042994.jpg', 'post', 10, 8, 21, NULL, NULL, '2020-04-16 20:16:40', '2020-04-16 20:16:40', '/upload/posts/2020-04-16-1587042994.jpg'),
(128, 'Comments Skype', 'aunque no sea confirmado el proyecto paisajista\r\nseria mejor para pruebas de hacer arboles al tamano indicado en cortes\r\nlos arboles son mas altos\r\ncasi al tercero piso', '/upload/posts/thumbnails/2020-04-20-1587389857.jpg', 'post', 10, 8, 21, NULL, NULL, '2020-04-20 20:37:42', '2020-04-20 20:37:42', '/upload/posts/2020-04-20-1587389857.jpg'),
(129, 'Comments', 'Gracias por el envio pero espero tener complementos (gente, unas auto y vegetación + plaza con unos  juegos de ninos) para probar sol y cameras.\r\nCuanto a esas grises, necesito que Maxi pueda ayudarme a instalar el script Rcam.', '/upload/posts/thumbnails/2020-04-21-1587475145.jpg', 'post', 10, 8, 30, NULL, NULL, '2020-04-21 20:19:05', '2020-04-21 20:19:05', '/upload/posts/2020-04-21-1587475145.jpg'),
(130, 'New Feedback', ' ', 'upload/feedbacks/thumbnails/2020-04-21-1587476719.jpg', 'feedbackCreate', 10, 8, 21, NULL, 22, '2020-04-21 20:45:20', '2020-04-21 20:45:20', 'upload/feedbacks/2020-04-21-1587476719.jpg'),
(131, 'New Feedback', ' ', 'upload/feedbacks/thumbnails/2020-04-21-1587476772.jpg', 'feedbackCreate', 10, 8, 21, NULL, 23, '2020-04-21 20:46:12', '2020-04-21 20:46:12', 'upload/feedbacks/2020-04-21-1587476772.jpg'),
(132, 'New Feedback', ' ', 'upload/feedbacks/thumbnails/2020-04-21-1587476807.jpg', 'feedbackCreate', 10, 8, 21, NULL, 24, '2020-04-21 20:46:47', '2020-04-21 20:46:47', 'upload/feedbacks/2020-04-21-1587476807.jpg'),
(133, 'New Feedback', ' ', 'upload/feedbacks/thumbnails/2020-04-21-1587476843.jpg', 'feedbackCreate', 10, 8, 21, NULL, 25, '2020-04-21 20:47:24', '2020-04-21 20:47:24', 'upload/feedbacks/2020-04-21-1587476843.jpg'),
(134, 'New Feedback', ' ', 'upload/feedbacks/thumbnails/2020-04-21-1587476892.jpg', 'feedbackCreate', 10, 8, 21, NULL, 26, '2020-04-21 20:48:13', '2020-04-21 20:48:13', 'upload/feedbacks/2020-04-21-1587476892.jpg'),
(135, 'New Feedback', ' ', 'upload/feedbacks/thumbnails/2020-04-21-1587476993.jpg', 'feedbackCreate', 10, 8, 21, NULL, 27, '2020-04-21 20:49:54', '2020-04-21 20:49:54', 'upload/feedbacks/2020-04-21-1587476993.jpg'),
(136, 'New Feedback', ' ', 'upload/feedbacks/thumbnails/2020-04-21-1587477025.jpg', 'feedbackCreate', 10, 8, 21, NULL, 28, '2020-04-21 20:50:25', '2020-04-21 20:50:25', 'upload/feedbacks/2020-04-21-1587477025.jpg'),
(137, 'New Feedback', ' ', 'upload/feedbacks/thumbnails/2020-04-21-1587477083.jpg', 'feedbackCreate', 10, 8, 21, NULL, 29, '2020-04-21 20:51:24', '2020-04-21 20:51:24', 'upload/feedbacks/2020-04-21-1587477083.jpg'),
(138, 'New Feedback', ' ', 'upload/feedbacks/thumbnails/2020-04-21-1587477124.jpg', 'feedbackCreate', 10, 8, 21, NULL, 30, '2020-04-21 20:52:05', '2020-04-21 20:52:05', 'upload/feedbacks/2020-04-21-1587477124.jpg'),
(139, 'New Feedback', ' ', 'upload/feedbacks/thumbnails/2020-04-21-1587477179.jpg', 'feedbackCreate', 10, 8, 21, NULL, 31, '2020-04-21 20:53:00', '2020-04-21 20:53:00', 'upload/feedbacks/2020-04-21-1587477179.jpg'),
(140, 'New Feedback', ' ', 'upload/feedbacks/thumbnails/2020-04-21-1587477211.jpg', 'feedbackCreate', 10, 8, 21, NULL, 32, '2020-04-21 20:53:31', '2020-04-21 20:53:31', 'upload/feedbacks/2020-04-21-1587477211.jpg'),
(141, 'Comments', 'no tenia la imagen google en el max pero intente fijar unas cameras.\r\n\r\nLes Puse en FTP.\r\n\r\nSi podias probar grises con siguientes soles (vidrio, complemento de entorno, unos muebles), puedes considerar esos soles:\r\n\r\nCam sol > 1 Marzo 2pm\r\n\r\nCam aerea > 1 Mayo 1:30pm\r\n\r\nCam Terr1  > 1 Mayo 1:30pm\r\n\r\nCam Terr2  > 1 Abril 12:30am\r\n\r\nCam Terr3  > 1 Abril  1:00pm pero para esa, hay que mentir y eliminar una parte de la fachada para optimizar tamaño de la terraza sin abril la focal y deformar. Es un método que debemos utilizar mas para obtener buena percepción de los espacios.', '/upload/posts/thumbnails/2020-04-24-1587733053.jpg', 'post', 10, 8, 32, NULL, NULL, '2020-04-24 19:57:33', '2020-04-24 19:57:33', '/upload/posts/2020-04-24-1587733053.jpg'),
(142, 'Comments Skype', 'Las imagenes viejas de Estudio Montevideo que se debe hacer update (y entonces matching) son esas 2 plaza y retail\r\n\r\nEl Supermercado Leclerc ya se hizo update porque iniciaron la renovacion antes la construccion del retail park\r\n\r\nDe esas 2 imagenes nuevas, hay ya la cam1 confirmada (con focal mas abierta como indique en email)\r\n\r\ny para la otra, no saben si quieren la cam4 y quieren verificar como se ve desde la parte existante\r\n\r\ny que ya lunes podremos tener pruebas texturizadas', '/upload/posts/thumbnails/2020-04-26-1587926412.jpg', 'post', 10, 8, 30, NULL, NULL, '2020-04-27 01:40:13', '2020-04-27 01:40:13', '/upload/posts/2020-04-26-1587926412.jpg'),
(143, 'Comments Aberturas', 'y aberturas, donde tenemos camara cerca como terraza y las aereas de cerca , que maxi, anotate, \r\n\r\nle cambie las aberturas, a las que usan en interiores con detalle.', '/upload/posts/thumbnails/2020-04-27-1588014806.jpg', 'post', 10, 8, 32, NULL, NULL, '2020-04-28 02:13:27', '2020-04-28 02:13:27', '/upload/posts/2020-04-27-1588014806.jpg'),
(144, 'Comments', 'Paula, ¿puedes hacer un último ajuste al respecto?\r\nEl agente inmobiliario tenía dos comentarios a continuación.\r\n\r\nZoysia Grass es como el césped de un campo de golf muy bien cuidado y quiere que todos los marcos de ventanas y puertas de vidrio sean más negros que grises.\r\n\r\n¿Puedes por favor solo pedirle que acorte el césped para que sea zoysia y que los marcos de las ventanas y las puertas sean negras? Gracias.\r\nAtentamente,', '/upload/posts/thumbnails/2020-04-28-1588080977.jpg', 'post', 10, 1, 24, NULL, NULL, '2020-04-28 20:36:19', '2020-04-28 20:36:19', '/upload/posts/2020-04-28-1588080977.jpg'),
(145, 'Feedback Cam01', 'Feedback Cam01', '/upload/posts/thumbnails/2020-04-29-1588193676.jpg', 'post', 10, 8, 30, NULL, NULL, '2020-04-30 03:54:38', '2020-04-30 03:54:38', '/upload/posts/2020-04-29-1588193676.jpg'),
(146, 'Comments', 'se puede hacer logo GV mas grande?\r\nque toma toda la altura de la fachada por fa\r\n\r\nvidrio con un logo de una hoja y JARDINS en 3D sobre Cartel y en verde para que se vea sobre fondo blanco', '/upload/posts/thumbnails/2020-04-29-1588193892.JPG', 'post', 10, 8, 30, NULL, NULL, '2020-04-30 03:58:13', '2020-04-30 03:58:13', '/upload/posts/2020-04-29-1588193892.JPG'),
(147, 'Cartelería', 'Cartelería', '/upload/posts/thumbnails/2020-04-29-1588193974.png', 'post', 10, 8, 30, NULL, NULL, '2020-04-30 03:59:35', '2020-04-30 03:59:35', '/upload/posts/2020-04-29-1588193974.png'),
(148, 'Comments', 'no se ve casi nada al fondo, que es un campo.', '/upload/posts/thumbnails/2020-04-29-1588194077.jpeg', 'post', 10, 8, 30, NULL, NULL, '2020-04-30 04:01:17', '2020-04-30 04:01:17', '/upload/posts/2020-04-29-1588194077.jpeg'),
(149, 'Comments', 'Pienso que hay que considerar mejor el siteplan para poner vegetación adecuada.\r\n\r\n- muebles parecen cool pero quiero ver como puedo usarles\r\n- cam detras no tiene un sol bueno porque en sombra, te indicare sol de manana\r\n\r\ncam terr con sol a las 7am en junio', '/upload/posts/thumbnails/2020-04-29-1588194291.png', 'post', 10, 8, 32, NULL, NULL, '2020-04-30 04:04:52', '2020-04-30 04:04:52', '/upload/posts/2020-04-29-1588194291.png'),
(150, 'Comments', 'cuanto a los muebles, querian tambien ver una mesa y pienso que el pouf esta muy grande , no hay uno mas chiquito?', '/upload/posts/thumbnails/2020-04-29-1588194421.jpg', 'post', 10, 8, 32, NULL, NULL, '2020-04-30 04:07:03', '2020-04-30 04:07:03', '/upload/posts/2020-04-29-1588194421.jpg'),
(151, 'Comments', 'en piso son tiles beton 60x60', '/upload/posts/thumbnails/2020-04-29-1588194472.jpg', 'post', 10, 8, 32, NULL, NULL, '2020-04-30 04:07:52', '2020-04-30 04:07:52', '/upload/posts/2020-04-29-1588194472.jpg'),
(152, 'Comments', 'Hola,\r\n\r\nRecibi mañana cuando Leo estaba terminando unos comentarios que requieren cambios bastante importantes…\r\n\r\n1. no les gustan el render de las fachadas y pidieron una onda mas estrecha (50%) pero pedi una ref clara antes tocar. Pero quizás se debería resfuerzar contraste (las en sombra deben ser mas oscuras comparando a las con sol).\r\n\r\n2. el mail no tiene bordura (no es una vereda), esta al mismo nivel que el parking. Pedí información para saber como hacer el material del piso (nunca indique beton desactivado)\r\n\r\n3. la bolas de proteccion debe estar cada 1m80 para bloquear autos\r\n\r\n4. sobre carteles, quieren algo mas diferente y lindo. Piden algo en el espirito del logo GV pero pedi precisiones sobre nombres, tamaños, tipos etc. Sin embargo veo que pusiste el GV en 3D, no es lo que pedi. Pedi que sea al tamaño de la fachada, no así con un hueco encima.. jajaj. Prefiero con 80% de espesor menos que lo que hiciste.\r\n\r\n5. piden lamparas y yo pedi que indican cuales y donde. No pienso que contestaran y deberemos improvisar para posicionar unos en parkings y en vías.\r\n6. todas las fachadas son blancas> no poner sombrillas blancas pero rojas o taupe. Igual con autos, poner menos blancas en cam 5 por fa.\r\n\r\nEntonces, espero volver pronto para tener precisiones y terminar lunes esas imágenes.\r\n\r\nBarth', '/upload/posts/thumbnails/2020-04-30-1588249794.jpg', 'post', 10, 8, 30, NULL, NULL, '2020-04-30 19:29:56', '2020-04-30 19:29:56', '/upload/posts/2020-04-30-1588249794.jpg'),
(153, 'Comments', 'aqui un primero feedback en la espera de presiones sobre materiales.', '/upload/posts/thumbnails/2020-05-04-1588596431.jpg', 'post', 10, 8, 32, NULL, NULL, '2020-05-04 19:47:12', '2020-05-04 19:47:12', '/upload/posts/2020-05-04-1588596431.jpg'),
(154, 'Comments', 'Hola,\r\n\r\nen complemento de lo indicado jueves, adjunto las precisiones del cliente:\r\nhttps://fromsmash.com/wOdvYpMARw-dt\r\n\r\nFACHADAS\r\n- instalación vertical acanalada = perfil tipo ARVAL HACIERBA 8.125.25 B\r\n- instalación horizontal acanalada = perfil del tipo B ARVAL NERVESCO 6.25.1085\r\n- hormigón = panel de fibrocemento de 800 x 800 mm del tipo ROCKPANEL Stones o ALUCOBON Fresh Concrete\r\n- superficie oxidada = casetes metálicos de 800 x 800 mm de los colores ROCKPANEL o tipo ALUCOBON Coracero\r\n- madera = revestimiento calado compuesto por listones verticales de 40 x 40 mm separados 20 mm (fondo negro)\r\n\r\nCARTELES\r\nHay que conservar el principio de estudio Montevideo (sin cartel detrás tal como arquitectos dejaron en elevaciónes) \r\n- STORE 04, STORE 01, STORE 06 (en letras recortadas en blanco sobre blanco)\r\n- encima de cada entrada\r\n- todos los letreros alineados misma altura que el letrero de panadería (que vuelve STORE 01)\r\n- anadir en fachada tal como Estudio Montevideo el Numero al lado del ingreso.\r\n\r\nMOBILIARIO\r\n- implementación de 6 mangas de viento para todo el proyecto >  finalmente son solo 3 en cada rotonda (ver mapa adjunto)\r\n- instalación de los postes de iluminación de acuerdo con el plan adjunto - postes de 8 m de alto, diámetro 168 mm + longitud de los soportes de 0,80 m + reflectores LED de Philipps Clearway tipo BGP303 LED99-4S / 740 DW10 - color del conjunto de iluminación Ral 7035\r\n\r\nSaludos\r\nBarth', '/upload/posts/thumbnails/2020-05-04-1588598480.jpg', 'post', 10, 8, 30, NULL, NULL, '2020-05-04 20:21:27', '2020-05-04 20:21:27', '/upload/posts/2020-05-04-1588598480.jpg'),
(155, 'New Feedback', ' ', 'upload/feedbacks/thumbnails/2020-05-04-1588611924.jpg', 'feedbackCreate', 2, 8, 32, NULL, 33, '2020-05-05 00:05:25', '2020-05-05 00:05:25', 'upload/feedbacks/2020-05-04-1588611924.jpg'),
(156, 'Comments', 'Hey, \r\n\r\narquis completaron pero como no pueden andar en oficina, no tienen fotos de los simples.\r\n\r\nte adjunto lo que me enviaron.\r\n\r\n\r\ndicieron también que carpinterías y las barandas serán del mismo RAL 7016 que el yeso oscuro.\r\n\r\nY los canalones serán blancas para desaparecer en la fachada.\r\n\r\n\r\nSaludos\r\n\r\nBarth', '/upload/posts/thumbnails/2020-05-04-1588616551.JPG', 'post', 10, 8, 32, NULL, NULL, '2020-05-05 01:22:32', '2020-05-05 01:22:32', '/upload/posts/2020-05-04-1588616551.JPG'),
(157, 'Feedback edited', ' ', 'upload/feedbacks/thumbnails/2020-05-04-1588611924.jpg', 'feedback', 2, 8, 32, NULL, 33, '2020-05-05 02:26:38', '2020-05-05 02:26:38', NULL),
(159, 'Comments', 'aqui te paso mis observaciones sobre la cam retail. Lo siento que sea tan trabajo de nuevo pero así no va.\r\nEspero que se puede terminarla hoy tal como las 2 otras.\r\nSaludos\r\n\r\nBarth', '/upload/posts/thumbnails/2020-05-06-1588767752.png', 'post', 10, 8, 30, NULL, NULL, '2020-05-06 19:22:34', '2020-05-06 19:22:34', '/upload/posts/2020-05-06-1588767752.png'),
(160, 'Comments', 'para el taburete no pedi reducir escala pero que sea menos largo, solo reducir longitud. gracias', '/upload/posts/thumbnails/2020-05-06-1588768046.jpg', 'post', 10, 8, 32, NULL, NULL, '2020-05-06 19:27:27', '2020-05-06 19:27:27', '/upload/posts/2020-05-06-1588768046.jpg'),
(161, 'Comments', 'No es simple encontrar una camera para valorizar el proyecto.\r\n\r\nPuedes en prioridad completar un poco mas de site según google y enviarme la 3D para probar mejor que con skp?\r\n\r\ny unos arboles tal como indicaron por fa', '/upload/posts/thumbnails/2020-05-06-1588768451.png', 'post', 10, 8, 36, NULL, NULL, '2020-05-06 19:34:14', '2020-05-06 19:34:14', '/upload/posts/2020-05-06-1588768451.png'),
(162, 'Arboles', 'Arboles', '/upload/posts/thumbnails/2020-05-06-1588773265.jpg', 'post', 10, 8, 36, NULL, NULL, '2020-05-06 20:54:25', '2020-05-06 20:54:25', '/upload/posts/2020-05-06-1588773265.jpg'),
(171, 'Comments', '1. INITIA, tendre las fotos esa noche o temprano manana asi se podria hacer el matching de la \r\naerea y te confirmaré cual de las 2 terrazas renderizar tambien manana.', '/upload/posts/thumbnails/2020-05-07-1588870818.png', 'post', 10, 8, 32, NULL, NULL, '2020-05-08 00:00:30', '2020-05-08 00:00:30', '/upload/posts/2020-05-07-1588870818.png'),
(164, 'Fachada', 'Fachada', '/upload/posts/thumbnails/2020-05-06-1588779182.jpg', 'post', 10, 8, 32, NULL, NULL, '2020-05-06 22:33:04', '2020-05-06 22:33:04', '/upload/posts/2020-05-06-1588779182.jpg'),
(170, 'Aerea', 'vamos hacer 3 visuales:\r\n- 1 imagen cerca de la pileta\r\n- 1 imagen a partir de la imagen vieja Serre de Ogic\r\n- 1 siteplan para que el arqui haga finalizacion (con unos mascaras separadas tal como arboles y sombras)', '/upload/posts/thumbnails/2020-05-07-1588870730.jpg', 'post', 10, 8, 36, NULL, NULL, '2020-05-07 23:58:53', '2020-05-07 23:58:53', '/upload/posts/2020-05-07-1588870730.jpg'),
(172, 'Camara', 'Camera validada es la 2.', '/upload/posts/thumbnails/2020-05-08-1588947213.jpg', 'post', 10, 8, 36, NULL, NULL, '2020-05-08 21:13:33', '2020-05-08 21:13:33', '/upload/posts/2020-05-08-1588947213.jpg'),
(173, 'Materiales', 'no es negro para ventanas y barandas pero gris anthracite...', '/upload/posts/thumbnails/2020-05-08-1588947751.jpg', 'post', 10, 8, 36, NULL, NULL, '2020-05-08 21:22:32', '2020-05-08 21:22:32', '/upload/posts/2020-05-08-1588947751.jpg'),
(174, 'New Feedback', ' ', 'upload/feedbacks/thumbnails/2020-05-08-1588962195.jpg', 'feedbackCreate', 1, 13, 23, NULL, 39, '2020-05-09 01:23:16', '2020-05-09 01:23:16', 'upload/feedbacks/2020-05-08-1588962195.jpg'),
(176, 'Comments', 'Gracias por los envios.\r\nSolo puedes abrir portón para camcours1 y  encontrar sol que penetra mas dentro loggia por fa?\r\nSaludos\r\nBarth', '/upload/posts/thumbnails/2020-05-11-1589198320.jpg', 'post', 10, 8, 35, NULL, NULL, '2020-05-11 18:58:42', '2020-05-11 18:58:42', '/upload/posts/2020-05-11-1589198320.jpg'),
(177, 'comments', 'comments', '/upload/posts/thumbnails/2020-05-11-1589198764.jpg', 'post', 10, 8, 36, NULL, NULL, '2020-05-11 19:06:05', '2020-05-11 19:06:05', '/upload/posts/2020-05-11-1589198764.jpg'),
(178, 'Commentw', 'insiste para que tomen las 55m (826 y 827) pero solo me confirmaran mas tarde\r\n\r\ncuanto a la terraza, vengo de enviar esa indicando unas cosas\r\n\r\nflores coloradas, otras plantas mas coloradas (arbusto almendra?) y no corbertura dentro bolsilla > otra idea a poner dentro?\r\n\r\ny no personaje', '/upload/posts/thumbnails/2020-05-11-1589204207.jpg', 'post', 10, 8, 32, NULL, NULL, '2020-05-11 20:36:48', '2020-05-11 20:36:48', '/upload/posts/2020-05-11-1589204207.jpg'),
(179, 'Comments Serre', 'solo en serre que faltan canteras suspendidas y flores en pots\r\n\r\nla gente no va cultivar solo verduras pero tambien un poco de flores\r\n\r\nes una region con muchos perfumos\r\n\r\nlavanda, jazmin', '/upload/posts/thumbnails/2020-05-11-1589231989.jpg', 'post', 10, 8, 36, NULL, NULL, '2020-05-12 04:19:50', '2020-05-12 04:19:50', '/upload/posts/2020-05-11-1589231989.jpg'),
(180, 'Comments', 'Hola\r\n\r\nPuse en ftp el modelo con mas cameras y otro sol para terrazas.\r\n\r\nConfirmaron cam Sol2 y para otras quiero unos tests mas.\r\nPienso que van a tomar la 2 y la 4 también (elimina los portones para ver mejor)\r\n\r\nEnviarme entonces mas pruebas de terrazas y no olvidas el siteplan .\r\n\r\nEstamos en discusión con ellos para la animación pero pienso que vamos obtener una confirmación.\r\nSaludos\r\nBarth', '/upload/posts/thumbnails/2020-05-12-1589285284.jpg', 'post', 10, 8, 35, NULL, NULL, '2020-05-12 19:08:05', '2020-05-12 19:08:05', '/upload/posts/2020-05-12-1589285284.jpg'),
(181, 'Comments', 'vegetacion en techo no debe ser tal como cesped en terreno\r\n\r\nvidrio de la serre\r\n\r\ny hacer blanco no cesped donde hay vecinos', '/upload/posts/thumbnails/2020-05-12-1589310483.png', 'post', 10, 8, 36, NULL, NULL, '2020-05-13 02:08:06', '2020-05-13 02:08:06', '/upload/posts/2020-05-12-1589310483.png'),
(182, 'Comments', 'Comments', '/upload/posts/thumbnails/2020-05-13-1589374206.jpg', 'post', 10, 8, 36, NULL, NULL, '2020-05-13 19:50:09', '2020-05-13 19:50:09', '/upload/posts/2020-05-13-1589374206.jpg'),
(183, 'ORBITAL', 'ORBITAL', '/upload/posts/thumbnails/2020-05-14-1589461816.jpg', 'post', 10, 8, 38, NULL, NULL, '2020-05-14 20:10:17', '2020-05-14 20:10:17', '/upload/posts/2020-05-14-1589461816.jpg'),
(184, 'Comments', 'Comments', '/upload/posts/thumbnails/2020-05-15-1589550859.jpg', 'post', 10, 8, 32, NULL, NULL, '2020-05-15 20:54:21', '2020-05-15 20:54:21', '/upload/posts/2020-05-15-1589550859.jpg'),
(185, 'Comments', 'Comments', '/upload/posts/thumbnails/2020-05-15-1589550918.jpg', 'post', 10, 8, 32, NULL, NULL, '2020-05-15 20:55:21', '2020-05-15 20:55:21', '/upload/posts/2020-05-15-1589550918.jpg'),
(186, 'Site', 'patch o psd para hacer eso\r\n\r\neliminar autos indicadas y hacer blanco la parte abaja donde hay los 2 coches', '/upload/posts/thumbnails/2020-05-15-1589551009.png', 'post', 10, 8, 36, NULL, NULL, '2020-05-15 20:56:50', '2020-05-15 20:56:50', '/upload/posts/2020-05-15-1589551009.png'),
(187, 'Comments', 'comments', '/upload/posts/thumbnails/2020-05-18-1589769372.png', 'post', 10, 8, 32, NULL, NULL, '2020-05-18 09:36:17', '2020-05-18 09:36:17', '/upload/posts/2020-05-18-1589769372.png'),
(188, 'Comments', 'Texturing (no tengo aun confirmacion de camera excepto cam sol2 pero pienso que van confirmar cam cours2c y camcours4.\r\nhay el site tambien por avanzar y no se aun para cam terraza', '/upload/posts/thumbnails/2020-05-18-1589804413.jpg', 'post', 10, 8, 35, NULL, NULL, '2020-05-18 19:20:16', '2020-05-18 19:20:16', '/upload/posts/2020-05-18-1589804413.jpg'),
(189, 'Commentss', 'Bad news: no haremos film con Bacotec, no tienen presupuesto, prefieren hacer maquetta en duro\r\n\r\n\r\n\r\nCAM TERRAZA:\r\npuedes bajar poquito la altura de la camera?\r\nque la baranda sea justo arriba del sofa (dejar muy poco espacio\r\nlo importante es conservar sofa asi para ocultar el immenso techo abajo\r\nsolo bajar un poco para ocultar y tener menos cielorazo\r\na derecha solo un sillon mejor posicionado\r\n\r\nSITEPLAN:\r\nconfirmaron a 1pm\r\n\r\nCAM02:\r\naqui quieren un porton con metal verticales\r\nal fondo, no poner sombrilla porque es un kindergarden\r\npero un hedge de 1m20minimo\r\nen planta baja, son locales comerciales, no se cuales\r\nimagina que sea una agencia de comunicacion o arquitectura', '/upload/posts/thumbnails/2020-05-19-1589901987.jpg', 'post', 10, 8, 35, NULL, NULL, '2020-05-19 22:26:28', '2020-05-19 22:26:28', '/upload/posts/2020-05-19-1589901987.jpg'),
(190, 'Comments', 'aqui te paso lo planos a resplazar dentro orbital de Habside\r\n\r\ny econtraras tambien un siteplan\r\n\r\nme dicen que hubiera tambien un cambito sobre una zona donde habia un banco\r\n\r\nme parece claro que cambiaron un poquito el camino y como se termina\r\n\r\nno es mucho > eliminar bancos y terminalo igual', '/upload/posts/thumbnails/2020-05-19-1589903217.png', 'post', 10, 8, 38, NULL, NULL, '2020-05-19 22:47:02', '2020-05-19 22:47:02', '/upload/posts/2020-05-19-1589903217.png'),
(197, 'Comments', 'Hola,\r\n\r\n\r\nvamos a hacer 2 imágenes de oficinas dentro proyecto Linkcity Social Club en R+3 y R+4. Tendre una charla con el cliente y space planner (que organiza espacios) próximo miércoles pero quiero ya estudiar en 3D como son esos pisos.\r\n\r\nPuedes enviarme el modelo ultimo por fa? sin los elementos de la pileta para que sea mas light.\r\n\r\n\r\nSaludos\r\n\r\nBarth', '/upload/posts/thumbnails/2020-05-20-1589997368.jpg', 'post', 10, 8, 42, NULL, NULL, '2020-05-21 00:56:11', '2020-05-21 00:56:11', '/upload/posts/2020-05-20-1589997368.jpg'),
(198, 'Comments', 'Terraza+Exteriores', '/upload/posts/thumbnails/2020-05-22-1590157777.png', 'post', 10, 8, 35, NULL, NULL, '2020-05-22 21:29:40', '2020-05-22 21:29:40', '/upload/posts/2020-05-22-1590157777.png'),
(199, 'Grise', 'se puede hacer grises por fa con sol de mayo 15 10:30', NULL, 'post', 10, 8, 44, NULL, NULL, '2020-05-26 00:49:46', '2020-05-26 00:49:46', NULL),
(200, 'Comments', 'ola,\r\n\r\n\r\nme pasaron unas demandas (una es error mia):\r\n\r\n- Pasar la impermeabilización del techo del edificio en verde y vestir los dos ediculos (fotos adjuntas)?\r\n\r\n\r\n- Lamas metal un poco mas como la imagen del arqui adjunta (menos marron (y no naranja)\r\n\r\ny quieren revestimiento no blanco puro pero un poco mas tal como la imagen arqui tmb. \r\n\r\n\r\n- En la fachada, dependiendo de los ganchos de la terraza, hay una capa de diferente color sobre los ventanales de la sala de estar. Pense que era raro desde la vista aerea pero es asi... \r\n\r\n\r\nGracias por tomar eso en cuento para terminarla.\r\n\r\nEs ok para la terraza.\r\n\r\n\r\nSaludos\r\n\r\nBarth', '/upload/posts/thumbnails/2020-05-26-1590501129.jpg', 'post', 10, 8, 32, NULL, NULL, '2020-05-26 20:52:10', '2020-05-26 20:52:10', '/upload/posts/2020-05-26-1590501129.jpg'),
(201, 'Camaras', 'Hola,\r\n\r\n\r\nsubiendo en FTP el modelo con mis cameras y soles.\r\n\r\nTe agradezco hoy hacer grises con unos arboles. Así tengo una base para discutir con clientes.\r\n\r\n\r\nSaludos\r\n\r\nBarth', '/upload/posts/thumbnails/2020-05-26-1590501175.png', 'post', 10, 8, 40, NULL, NULL, '2020-05-26 20:53:01', '2020-05-26 20:53:01', '/upload/posts/2020-05-26-1590501175.png'),
(202, 'Comments', 'Hola,\r\n\r\n\r\npuse en ftp una otra carpeta con mas precisiones.\r\n\r\nQuedan cositas por corregir nosotros en 3D:\r\n\r\n- hacer parapeto en base de ventana\r\n\r\n- hacer esquina de ventanas (sin estructura, solo joint)\r\n\r\n- baranda (van enviar diseño)\r\n\r\n- exteriores (parking, vegetación)\r\n\r\n\r\npero pusieron el kmz para entender que estamos en el puerto de Papeete.\r\n\r\n\r\nTienen prisa: pidieron para martes pero he dicho solo viernes próximo para la entrega. Esa semana, hay que hacer la 3D y definir las 3 cameras (te adjunto las posiciones que me parecen ok) y luego próxima semana, haremos texturing, lighting y rendering.\r\n\r\nVale?\r\n\r\n\r\nBarth\r\n\r\n\r\nPS: es decir que esa semana se debe terminar texturing de Ideom y cambios  Habside península.', '/upload/posts/thumbnails/2020-05-26-1590501214.png', 'post', 10, 8, 43, NULL, NULL, '2020-05-26 20:53:34', '2020-05-26 20:53:34', '/upload/posts/2020-05-26-1590501214.png'),
(203, 'comments', 'te adjunto el tipo de baranda que desean.\r\n\r\nAdemas precisan que las ventanas sera en aluminio mat RAL 7021.\r\n\r\n\r\nVan hoy tomar fotos del entorno para ver como podemos incluirlo pero considerando precio de la mission, no haremos miraculés.\r\n\r\n\r\nEspero que hoy se podre obtener los 360 grises o con avances de texturas desde el modelo correcto.\r\n\r\n\r\nSaludos\r\n\r\nBarth', '/upload/posts/thumbnails/2020-05-28-1590667096.jpeg', 'post', 10, 8, 43, NULL, NULL, '2020-05-28 18:58:17', '2020-05-28 18:58:17', '/upload/posts/2020-05-28-1590667096.jpeg'),
(204, 'Modificaciones', 'Modificaciones', '/upload/posts/thumbnails/2020-05-28-1590681744.jpg', 'post', 10, 8, 46, NULL, NULL, '2020-05-28 23:02:26', '2020-05-28 23:02:26', '/upload/posts/2020-05-28-1590681744.jpg'),
(205, 'Commtents', 'Ftos entorno', '/upload/posts/thumbnails/2020-06-02-1591104020.JPG', 'post', 10, 8, 43, NULL, NULL, '2020-06-02 20:20:25', '2020-06-02 20:20:25', '/upload/posts/2020-06-02-1591104020.JPG'),
(206, 'cometn', 'piso... ya indique que no es parquet lo que es indicado\r\n\r\nno es parquet\r\n\r\nhay espacios entre lamas\r\n\r\npues no pienso que hay espesor asi de parquet\r\n\r\nel sol hecho no puede ser tanto sunset\r\n\r\npido sol en terraza que entra un poco, no que sea horizontal\r\n\r\nel sunset no es mala idea para en mismo tiempo poner las luces interiores \r\n\r\nmar y cielo en 3d\r\n\r\nagregar vinos en la heladera\r\n\r\ny sobre personajes, hay que poner gente local\r\n\r\nmas oceanica\r\n\r\nno solo blancos\r\n\r\nque hayan blancos y oceanicos, asiaticos tambien', '/upload/posts/thumbnails/2020-06-02-1591104054.jpg', 'post', 10, 8, 43, NULL, NULL, '2020-06-02 20:20:55', '2020-06-02 20:20:55', '/upload/posts/2020-06-02-1591104054.jpg'),
(207, 'coments', 'all frames', '/upload/posts/thumbnails/2020-06-02-1591104182.png', 'post', 10, 8, 38, NULL, NULL, '2020-06-02 20:23:03', '2020-06-02 20:23:03', '/upload/posts/2020-06-02-1591104182.png'),
(208, 'coments', 'cometns', '/upload/posts/thumbnails/2020-06-02-1591104217.jpg', 'post', 10, 8, 35, NULL, NULL, '2020-06-02 20:23:39', '2020-06-02 20:23:39', '/upload/posts/2020-06-02-1591104217.jpg'),
(209, 'comments', 'COMMENTS', '/upload/posts/thumbnails/2020-06-03-1591197944.jpg', 'post', 10, 8, 43, NULL, NULL, '2020-06-03 22:25:47', '2020-06-03 22:25:47', '/upload/posts/2020-06-03-1591197944.jpg'),
(210, 'coments', 'coments+ftp', '/upload/posts/thumbnails/2020-06-03-1591200711.jpg', 'post', 10, 8, 45, NULL, NULL, '2020-06-03 23:11:52', '2020-06-03 23:11:52', '/upload/posts/2020-06-03-1591200711.jpg'),
(211, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-05-1591367146.png', 'post', 10, 8, 35, NULL, NULL, '2020-06-05 21:25:53', '2020-06-05 21:25:53', '/upload/posts/2020-06-05-1591367146.png'),
(425, 'ref mob terraza', 'ref mob terraza', '/upload/posts/thumbnails/2020-06-26-1593184718.jpg', 'post', 10, 8, 40, NULL, NULL, '2020-06-26 22:18:39', '2020-06-26 22:18:39', '/upload/posts/2020-06-26-1593184718.jpg'),
(214, 'site', 'site', '/upload/posts/thumbnails/2020-06-12-1591967194.JPG', 'post', 10, 8, 45, NULL, NULL, '2020-06-12 20:06:34', '2020-06-12 20:06:34', '/upload/posts/2020-06-12-1591967194.JPG'),
(218, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-16-1592321661.png', 'post', 10, 8, 45, NULL, NULL, '2020-06-16 22:34:30', '2020-06-16 22:34:30', '/upload/posts/2020-06-16-1592321661.png'),
(219, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-16-1592321743.JPG', 'post', 10, 8, 44, NULL, NULL, '2020-06-16 22:35:43', '2020-06-16 22:35:43', '/upload/posts/2020-06-16-1592321743.JPG'),
(220, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-19-1592592429.jpg', 'post', 10, 8, 51, NULL, NULL, '2020-06-20 01:47:10', '2020-06-20 01:47:10', '/upload/posts/2020-06-19-1592592429.jpg'),
(221, 'comments', 'escaler', '/upload/posts/thumbnails/2020-06-19-1592592492.jpg', 'post', 10, 8, 51, NULL, NULL, '2020-06-20 01:48:12', '2020-06-20 01:48:12', '/upload/posts/2020-06-19-1592592492.jpg'),
(227, 'Comments', 'INFO FLOORPLANS + DECO', '/upload/posts/thumbnails/2020-06-25-1593124394.jpg', 'post', 10, 14, 33, NULL, NULL, '2020-06-26 05:33:17', '2020-06-26 05:33:17', '/upload/posts/2020-06-25-1593124394.jpg'),
(224, 'comments', 'comments + fp', '/upload/posts/thumbnails/2020-06-22-1592847245.jpg', 'post', 10, 9, 47, NULL, NULL, '2020-06-23 00:34:05', '2020-06-23 00:34:05', '/upload/posts/2020-06-22-1592847245.jpg'),
(225, 'comments', 'cc', '/upload/posts/thumbnails/2020-06-25-1593119499.JPG', 'post', 10, 9, 47, NULL, NULL, '2020-06-26 04:11:39', '2020-06-26 04:11:39', '/upload/posts/2020-06-25-1593119499.JPG'),
(226, 'comens', 'comments', '/upload/posts/thumbnails/2020-06-25-1593119521.JPG', 'post', 10, 9, 47, NULL, NULL, '2020-06-26 04:12:01', '2020-06-26 04:12:01', '/upload/posts/2020-06-25-1593119521.JPG'),
(228, 'commets', 'commens', '/upload/posts/thumbnails/2020-06-25-1593124420.JPG', 'post', 10, 14, 33, NULL, NULL, '2020-06-26 05:33:40', '2020-06-26 05:33:40', '/upload/posts/2020-06-25-1593124420.JPG'),
(229, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-25-1593124448.jpg', 'post', 10, 14, 33, NULL, NULL, '2020-06-26 05:34:09', '2020-06-26 05:34:09', '/upload/posts/2020-06-25-1593124448.jpg'),
(230, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-25-1593124467.jpg', 'post', 10, 14, 33, NULL, NULL, '2020-06-26 05:34:27', '2020-06-26 05:34:27', '/upload/posts/2020-06-25-1593124467.jpg'),
(231, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-25-1593124495.jpg', 'post', 10, 14, 33, NULL, NULL, '2020-06-26 05:34:58', '2020-06-26 05:34:58', '/upload/posts/2020-06-25-1593124495.jpg'),
(232, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-25-1593124510.png', 'post', 10, 14, 33, NULL, NULL, '2020-06-26 05:35:10', '2020-06-26 05:35:10', '/upload/posts/2020-06-25-1593124510.png'),
(233, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-25-1593124524.png', 'post', 10, 14, 33, NULL, NULL, '2020-06-26 05:35:25', '2020-06-26 05:35:25', '/upload/posts/2020-06-25-1593124524.png'),
(234, 'comments', 'info', '/upload/posts/thumbnails/2020-06-25-1593124543.png', 'post', 10, 14, 26, NULL, NULL, '2020-06-26 05:35:44', '2020-06-26 05:35:44', '/upload/posts/2020-06-25-1593124543.png'),
(235, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-25-1593124569.jpg', 'post', 10, 14, 26, NULL, NULL, '2020-06-26 05:36:09', '2020-06-26 05:36:09', '/upload/posts/2020-06-25-1593124569.jpg'),
(236, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-25-1593124582.jpg', 'post', 10, 14, 26, NULL, NULL, '2020-06-26 05:36:22', '2020-06-26 05:36:22', '/upload/posts/2020-06-25-1593124582.jpg'),
(237, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-25-1593124594.png', 'post', 10, 14, 26, NULL, NULL, '2020-06-26 05:36:35', '2020-06-26 05:36:35', '/upload/posts/2020-06-25-1593124594.png'),
(238, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-25-1593124612.jpg', 'post', 10, 14, 26, NULL, NULL, '2020-06-26 05:36:53', '2020-06-26 05:36:53', '/upload/posts/2020-06-25-1593124612.jpg'),
(239, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-25-1593124631.jpg', 'post', 10, 14, 26, NULL, NULL, '2020-06-26 05:37:12', '2020-06-26 05:37:12', '/upload/posts/2020-06-25-1593124631.jpg'),
(240, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-25-1593124662.jpg', 'post', 10, 14, 26, NULL, NULL, '2020-06-26 05:37:42', '2020-06-26 05:37:42', '/upload/posts/2020-06-25-1593124662.jpg'),
(241, 'comments', 'info', '/upload/posts/thumbnails/2020-06-25-1593124696.jpg', 'post', 10, 14, 34, NULL, NULL, '2020-06-26 05:38:17', '2020-06-26 05:38:17', '/upload/posts/2020-06-25-1593124696.jpg'),
(242, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-25-1593124709.jpg', 'post', 10, 14, 34, NULL, NULL, '2020-06-26 05:38:30', '2020-06-26 05:38:30', '/upload/posts/2020-06-25-1593124709.jpg'),
(243, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-25-1593124726.jpg', 'post', 10, 14, 34, NULL, NULL, '2020-06-26 05:38:46', '2020-06-26 05:38:46', '/upload/posts/2020-06-25-1593124726.jpg'),
(244, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-25-1593124737.jpg', 'post', 10, 14, 34, NULL, NULL, '2020-06-26 05:38:58', '2020-06-26 05:38:58', '/upload/posts/2020-06-25-1593124737.jpg'),
(245, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-25-1593124751.png', 'post', 10, 14, 34, NULL, NULL, '2020-06-26 05:39:13', '2020-06-26 05:39:13', '/upload/posts/2020-06-25-1593124751.png'),
(246, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-25-1593124790.jpg', 'post', 10, 14, 34, NULL, NULL, '2020-06-26 05:39:50', '2020-06-26 05:39:50', '/upload/posts/2020-06-25-1593124790.jpg'),
(247, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-25-1593124801.jpg', 'post', 10, 14, 34, NULL, NULL, '2020-06-26 05:40:02', '2020-06-26 05:40:02', '/upload/posts/2020-06-25-1593124801.jpg'),
(248, 'comments', 'info', '/upload/posts/thumbnails/2020-06-25-1593124833.jpg', 'post', 10, 14, 37, NULL, NULL, '2020-06-26 05:40:34', '2020-06-26 05:40:34', '/upload/posts/2020-06-25-1593124833.jpg'),
(249, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-25-1593124851.png', 'post', 10, 14, 37, NULL, NULL, '2020-06-26 05:40:54', '2020-06-26 05:40:54', '/upload/posts/2020-06-25-1593124851.png'),
(250, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-25-1593124865.png', 'post', 10, 14, 37, NULL, NULL, '2020-06-26 05:41:06', '2020-06-26 05:41:06', '/upload/posts/2020-06-25-1593124865.png'),
(251, 'comments', 'info', '/upload/posts/thumbnails/2020-06-25-1593124889.jpg', 'post', 10, 14, 52, NULL, NULL, '2020-06-26 05:41:29', '2020-06-26 05:41:29', '/upload/posts/2020-06-25-1593124889.jpg');
INSERT INTO `POSTS` (`id`, `title`, `message`, `image`, `type`, `user_id`, `client_id`, `project_id`, `view_id`, `feedback_id`, `updated_at`, `created_at`, `image_original`) VALUES
(252, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-25-1593124907.jpg', 'post', 10, 14, 52, NULL, NULL, '2020-06-26 05:41:48', '2020-06-26 05:41:48', '/upload/posts/2020-06-25-1593124907.jpg'),
(253, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-25-1593124927.jpg', 'post', 10, 14, 52, NULL, NULL, '2020-06-26 05:42:08', '2020-06-26 05:42:08', '/upload/posts/2020-06-25-1593124927.jpg'),
(254, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-25-1593125034.jpg', 'post', 10, 8, 51, NULL, NULL, '2020-06-26 05:43:55', '2020-06-26 05:43:55', '/upload/posts/2020-06-25-1593125034.jpg'),
(255, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-25-1593125047.jpg', 'post', 10, 8, 51, NULL, NULL, '2020-06-26 05:44:08', '2020-06-26 05:44:08', '/upload/posts/2020-06-25-1593125047.jpg'),
(256, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-25-1593125057.png', 'post', 10, 8, 51, NULL, NULL, '2020-06-26 05:44:17', '2020-06-26 05:44:17', '/upload/posts/2020-06-25-1593125057.png'),
(257, 'comments', 'Se puede hacer muros al interior en beton si te parece que es necesario para estructura\r\n\r\n10 steps pues plataforma y 6 steps mas por llegar al nivel 1\r\nOlvida ref metálica\r\nEnvio eso porque es simple, base beton y hueco para llegar al nivel R1\r\nNo se cambia nivel del patio sino 2 hueco al tamano de las 2 plataformas y escalera alta\r\nY abajo un base de beton tal como dibuje con barandas', NULL, 'post', 10, 8, 51, NULL, NULL, '2020-06-26 05:45:29', '2020-06-26 05:45:29', NULL),
(258, 'comments', 'en losa Se conserva espesor de slab\r\n\r\nVienen de enviar demanda de cubrir base con paneles beton como es en fachada (puede así esconder base y dejar a pensar que sostiene\r\n\r\nEncender lampara (no olvidar por fa) calcula la lampara por separado por fa, just in case', '/upload/posts/thumbnails/2020-06-25-1593125168.png', 'post', 10, 8, 51, NULL, NULL, '2020-06-26 05:46:09', '2020-06-26 05:46:09', '/upload/posts/2020-06-25-1593125168.png'),
(259, 'coments', 'Para anima de ideom, haremos paths y rendering en Francia, pero necesitaremos entorno, \r\n\r\n- IDEOM Cap  + preparacion escena animacion porque si hago paths y rendering con Golem Plus, \r\nnecesito ayuda vuestra para preparar escena con entorno) > para próximo miércoles seria muy necesario si debemos entregar el 8 de julio', NULL, 'post', 10, 8, 51, NULL, NULL, '2020-06-26 05:46:45', '2020-06-26 05:46:45', NULL),
(260, 'Comments', 'concurso\r\n\r\ncon un gran parque a hacer\r\n\r\n3 imagenes', '/upload/posts/thumbnails/2020-06-25-1593125304.png', 'post', 10, 8, 50, NULL, NULL, '2020-06-26 05:48:29', '2020-06-26 05:48:29', '/upload/posts/2020-06-25-1593125304.png'),
(262, 'INFO', 'Hola,\r\n\r\n\r\nTenemos un concurso para entrega el 6 de julio (mi mañana es super final para impresión de documentos)\r\n\r\nLo accepté porque son 3 imágenes y vi que el arqui esta bastante avanzado con el proyecto.\r\n\r\n\r\nYa vengo de poner en FTP elementos para hacer el entorno; \r\nhay un parque grande atado al proyecto. Esta un construcción pero tenemos que hacerlo en 3D también. \r\nLa urgencia es hacer este modelo y añadir el modelo temporario de las villas para definir la foto aerea.\r\n\r\nLuego podremos hacer las 2 otras cameras (desde calle y dentro un patio)\r\n\r\n\r\nAvisame si falta algo porque no podre pedir algo semana próxima diciendo que no lo habíamos aun estudiado.\r\n\r\n\r\nSaludos\r\n\r\nBarth', '/upload/posts/thumbnails/2020-06-25-1593125378.JPG', 'post', 10, 8, 50, NULL, NULL, '2020-06-26 05:49:41', '2020-06-26 05:49:41', '/upload/posts/2020-06-25-1593125378.JPG'),
(263, 'INFO', 'Hola \r\n\r\n\r\npuse en ftp modelo con cameras.\r\n\r\nNo tome mucho tiempo en eso pero me ayuda a entender.\r\n\r\nEspero grises para hablar con clientes y programar drone.\r\n\r\n(gracias por buscar lindo sol sino lo hace mas tarde hoy)\r\n\r\n\r\nSaludos\r\n\r\nBarth', NULL, 'post', 10, 8, 50, NULL, NULL, '2020-06-26 05:51:37', '2020-06-26 05:51:37', NULL),
(265, 'INFO', 'Hola,\r\n\r\n\r\nte paso aqui un dwg del paisajista.\r\n\r\nLes pide ya unos cortes y pasaran precisiones de vegetación viernes o finde.\r\n\r\n\r\nAqui tambien te paso las fotos recibidas.\r\n\r\nDejame ver cual elegir:\r\n\r\nhttps://drone06.wetransfer.com/downloads/0df0d0a8e19a28850bc5c3d79729548c20200624130348/0f3f22200ef55f26af8bf3ef70080e8920200624130348/f5682d \r\n\r\n\r\nSaludos\r\n\r\nBarth\r\n\r\npara icade matching, yo probe un montaje que me parece funcionar', '/upload/posts/thumbnails/2020-06-25-1593125583.JPG', 'post', 10, 8, 50, NULL, NULL, '2020-06-26 05:53:04', '2020-06-26 05:53:04', '/upload/posts/2020-06-25-1593125583.JPG'),
(266, 'INFO', 'INFO', '/upload/posts/thumbnails/2020-06-25-1593125651.JPG', 'post', 10, 8, 48, NULL, NULL, '2020-06-26 05:54:12', '2020-06-26 05:54:12', '/upload/posts/2020-06-25-1593125651.JPG'),
(267, 'info', 'ademas se puede quizas avanzar en amueblemiento (paula?) y vegetacion\r\n\r\ntemo que con foto teniamos problemas y que deberemos apoyarnos en muy buena 3D (mejor que habside Brunet por fa)\r\n\r\navisa tambien a Lucas de preparar interfase para orbital segun nuevo estandar\r\n\r\ndeadline es 30 junio... con tambien 1 visita o 2 de interiores\r\n\r\npero ya se puede concentrar en T4 C1_1 con la grande terraza en R+2', NULL, 'post', 10, 8, 48, NULL, NULL, '2020-06-26 05:55:08', '2020-06-26 05:55:08', NULL),
(268, 'info', 'para habside sera la Aer1\r\n\r\ny para la terrazza, puedes ajustar la 1 pero con mismo angulo que la 3 (ver mas las ventanas)\r\ny tener el salon al primer plano (no la mesa)\r\n\r\npero para muebles quieren es marca:\r\nTRIBU , puedes aceder\r\nhttps://www.tribu.com/fr/download-area  \r\nID: laetitia.romeuf@habside.fr y password: Habside\r\n\r\npara Habside, podras pedir un siteplan que considera tambien la parte izquierda del terreno?\r\n\r\npara el tema de jardin pedi precision porque no entiendo como hacer\r\nsi hay que subir el muro encima del jardin u otra cosa, luego te digo.', '/upload/posts/thumbnails/2020-06-25-1593125759.png', 'post', 10, 8, 48, NULL, NULL, '2020-06-26 05:56:05', '2020-06-26 05:56:05', '/upload/posts/2020-06-25-1593125759.png'),
(269, 'referencias terr', 'referencias terr', '/upload/posts/thumbnails/2020-06-25-1593125790.JPG', 'post', 10, 8, 48, NULL, NULL, '2020-06-26 05:56:30', '2020-06-26 05:56:30', '/upload/posts/2020-06-25-1593125790.JPG'),
(270, 'referencias terr', 'referencias terr', '/upload/posts/thumbnails/2020-06-25-1593125805.JPG', 'post', 10, 8, 48, NULL, NULL, '2020-06-26 05:56:46', '2020-06-26 05:56:46', '/upload/posts/2020-06-25-1593125805.JPG'),
(271, 'referencias terr', 'referencias terr', '/upload/posts/thumbnails/2020-06-25-1593125830.png', 'post', 10, 8, 48, NULL, NULL, '2020-06-26 05:57:13', '2020-06-26 05:57:13', '/upload/posts/2020-06-25-1593125830.png'),
(272, 'referencias terr', 'referencias terr', '/upload/posts/thumbnails/2020-06-25-1593125853.png', 'post', 10, 8, 48, NULL, NULL, '2020-06-26 05:57:36', '2020-06-26 05:57:36', '/upload/posts/2020-06-25-1593125853.png'),
(273, 'referencias terr', 'referencias terr', '/upload/posts/thumbnails/2020-06-25-1593125877.png', 'post', 10, 8, 48, NULL, NULL, '2020-06-26 05:57:58', '2020-06-26 05:57:58', '/upload/posts/2020-06-25-1593125877.png'),
(274, 'referencias terr', 'referencias terr', '/upload/posts/thumbnails/2020-06-25-1593125899.png', 'post', 10, 8, 48, NULL, NULL, '2020-06-26 05:58:22', '2020-06-26 05:58:22', '/upload/posts/2020-06-25-1593125899.png'),
(275, 'INFO', 'PLANOS DE VENTA !!\r\n\r\nO:\\GOLEM\\HABSIDE Voltaix\\From Barth\\200618\\Planos de Venta', NULL, 'post', 10, 8, 48, NULL, NULL, '2020-06-26 05:59:06', '2020-06-26 05:59:06', NULL),
(276, 'info', 'RAL8012\r\n\r\nalmohadones del sillon color OCRE', '/upload/posts/thumbnails/2020-06-25-1593126192.png', 'post', 10, 8, 48, NULL, NULL, '2020-06-26 06:03:15', '2020-06-26 06:03:15', '/upload/posts/2020-06-25-1593126192.png'),
(277, 'info', 'con parquet interior y azulejas grandes afuera\r\n\r\nmira el plano como deberia ser para una mejor visibilidad, quizas puedes pedir a Elian?\r\n\r\nhttp://www.visio-lab.com/applications.html', '/upload/posts/thumbnails/2020-06-25-1593126217.jpg', 'post', 10, 8, 48, NULL, NULL, '2020-06-26 06:03:38', '2020-06-26 06:03:38', '/upload/posts/2020-06-25-1593126217.jpg'),
(278, '360', 'info', '/upload/posts/thumbnails/2020-06-25-1593126239.jpg', 'post', 10, 8, 48, NULL, NULL, '2020-06-26 06:03:59', '2020-06-26 06:03:59', '/upload/posts/2020-06-25-1593126239.jpg'),
(279, 'terr', 'terr', '/upload/posts/thumbnails/2020-06-25-1593126310.jpg', 'post', 10, 8, 48, NULL, NULL, '2020-06-26 06:05:11', '2020-06-26 06:05:11', '/upload/posts/2020-06-25-1593126310.jpg'),
(280, 'ref techo', 'ref techo', '/upload/posts/thumbnails/2020-06-25-1593126334.png', 'post', 10, 8, 48, NULL, NULL, '2020-06-26 06:05:36', '2020-06-26 06:05:36', '/upload/posts/2020-06-25-1593126334.png'),
(281, '360', 'Para Habside 360:\r\n- bajar cameras a 1m20 dentro habitaciones, salon cocina, y terraza (en bano seria mejor 1m50 y tambien en corridor)\r\n- abrir todas las puertas\r\n- corridorios son una opcion (solo pense en 7 hotspots)\r\n- hacer bano tambien y la segunda habitacion\r\n- en espacio principal, solo una camera seria sufficiente (entre la silla del comedor y sofa, es decir mover un poco la ya hecha hacia la cocina para estar mas central y no pegada a la ventana)\r\n- en terraza, falta resto del edificio (y te pasare fotos mas tarde hoy o manana)', NULL, 'post', 10, 8, 48, NULL, NULL, '2020-06-26 06:06:50', '2020-06-26 06:06:50', NULL),
(402, 'matching', 'matching', '/upload/posts/thumbnails/2020-06-26-1593183765.JPG', 'post', 10, 8, 48, NULL, NULL, '2020-06-26 22:02:46', '2020-06-26 22:02:46', '/upload/posts/2020-06-26-1593183765.JPG'),
(403, 'camterr', 'camterr', '/upload/posts/thumbnails/2020-06-26-1593183804.jpg', 'post', 10, 8, 48, NULL, NULL, '2020-06-26 22:03:28', '2020-06-26 22:03:28', '/upload/posts/2020-06-26-1593183804.jpg'),
(404, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-26-1593183853.jpg', 'post', 10, 8, 48, NULL, NULL, '2020-06-26 22:04:13', '2020-06-26 22:04:13', '/upload/posts/2020-06-26-1593183853.jpg'),
(405, 'info', 'Me dicen que la barandas de vidrio encimas del muro están detrás el hedge...tal como era diseñado aquí.\r\n\r\n\r\nEl muro de la calle sera de la misma color como la fachada.\r\n\r\n\r\nY no quieren ver el edificio en construcción!\r\n\r\n\r\nTe paso la fotos mas tarde hoy.\r\n\r\nPara fondo site, tendre manana fotos\r\n\r\nPara orbital entorno, tendre viernes un extract google earth en .max', NULL, 'post', 10, 8, 48, NULL, NULL, '2020-06-26 22:05:36', '2020-06-26 22:05:36', NULL),
(406, 'info', 'Hola\r\n\r\n\r\nPrimero quiero felicitarles para la cualidad de los interiores!\r\n\r\nBravo al team. Quedan cositas pero da mucho ganas.\r\n\r\nAdemas son muchos hotspots, mas que vende a Habside pero pienso que así tendremos un super ejemplo para ganar mas proyectos.\r\n\r\n\r\nEntonces sobre 360:\r\n\r\nT4 / \r\n\r\n- hacer una puerta diferente (color gris) para le ingreso con maneja diferente. \r\n\r\n- necesitas información para banos?\r\n\r\n- ver imagen entregada para coincidir con piso, coating, y poner macetas con vegetación \r\n\r\n- no falta una heladera?\r\n\r\n- Te paso fotos manana para fondos y vista terraza\r\n\r\nT3/\r\n\r\n- cambiar la habitación con suspension rara en habitación de niño o niña (no hacer 2 matrimoniales, pero de 10 o15 anos, no de nene)\r\n\r\n- igual para puerta ingreso como T4\r\n\r\n- no dejar puerta abierta con negro detrás (si son WC, cerrar la puerta; la idea es abrir grande para espacios principales, un poquito para banos y cerrar para WC.\r\n\r\n- no olvidar jardin exterior en la visita (no hay baranda aquí para ir dentro jardin me parece)\r\n\r\n- bano?\r\n\r\n- en planta baja, no tendre fotos pero es un muro de vegetación adelante y seria mejor en 3D.\r\n\r\n\r\nPara Imagen terraza, te adjunto mis comentarios y para la otra aérea general, hice prueba para cliente valida. Quizas matching no es perfecto pero tienen que darse cuenta de como se vera el vecino y primer plano. Te paso las fotos cuando validan.\r\n\r\n\r\nSobre Siteplan, tendre hoy un update para parking y local basura.\r\n\r\n\r\nY para el orbital, pedi a Marie de hace un extract de google para ver si podemos incluirlo. Para la residencia vecina, haremos una placa tal como para brunet.\r\n\r\n\r\nSaludos\r\n\r\nBarth', NULL, 'post', 10, 8, 48, NULL, NULL, '2020-06-26 22:06:03', '2020-06-26 22:06:03', NULL),
(407, 'info', 'Pienso que pano7 es lo mejor. Mira por hacer matching del modelo sibre esa base y para que confirmen\r\n\r\nEspero todavía fotos para site y fondos 360\r\n\r\n\r\nTERRAZA:\r\nNo me gusta 3 lanternas\r\n\r\npedi 2\r\n\r\n\r\ncenicero, port con flor\r\n\r\nver las formas de las dos lanternas\r\n\r\nTECHO:\r\nsolo dos ranuras\r\nPero considerado el ejemplo enviado son 2 ranuras correspondiendo a un espesor \r\n\r\n\r\nno cortinas en todos los inteiores y no todos iguales!', NULL, 'post', 10, 8, 48, NULL, NULL, '2020-06-26 22:06:25', '2020-06-26 22:06:25', NULL),
(408, 'techo ok', 'techo ok', '/upload/posts/thumbnails/2020-06-26-1593184007.png', 'post', 10, 8, 48, NULL, NULL, '2020-06-26 22:06:48', '2020-06-26 22:06:48', '/upload/posts/2020-06-26-1593184007.png'),
(409, 'imagen para site', 'imagen para site', NULL, 'post', 10, 8, 48, NULL, NULL, '2020-06-26 22:07:18', '2020-06-26 22:07:18', NULL),
(410, 'imagen para site', 'imagen para site', '/upload/posts/thumbnails/2020-06-26-1593184128.JPG', 'post', 10, 8, 48, NULL, NULL, '2020-06-26 22:08:48', '2020-06-26 22:08:48', '/upload/posts/2020-06-26-1593184128.JPG'),
(411, 'info camaras', 'Son 2 imágenes a 2 pisos diferentes (R+2 y R+4) pero solo tenemos plano diseñado por un space planer para el R+2.\r\n\r\n\r\nPara el R+4, haremos una interpretación.\r\n\r\n\r\nEn ftp se encuentra plano dwg del R+2 para bien delimitar las zonas y amueblar. Obvio que pedí algo muy importante que falta es el plano de cieloraso y especialmente con forma curva del edificio. Sin embargo si ya se puede enviarme una version de los pisos con unos muebles me ayudarías a buscar cameras pero antes, podríamos hacer un punto sobre los estilos que tiene en biblioteca?\r\n\r\n\r\nLa meta para es entrega sera por el 15.', '/upload/posts/thumbnails/2020-06-26-1593184229.png', 'post', 10, 8, 42, NULL, NULL, '2020-06-26 22:10:29', '2020-06-26 22:10:29', '/upload/posts/2020-06-26-1593184229.png'),
(412, 'info camaras', 'info camaras', '/upload/posts/thumbnails/2020-06-26-1593184241.png', 'post', 10, 8, 42, NULL, NULL, '2020-06-26 22:10:41', '2020-06-26 22:10:41', '/upload/posts/2020-06-26-1593184241.png'),
(413, 'comments', 'tambien detras el sofa, es o sera un muro vidrio con un logo por ejemplo', '/upload/posts/thumbnails/2020-06-26-1593184279.jpg', 'post', 10, 8, 48, NULL, NULL, '2020-06-26 22:11:20', '2020-06-26 22:11:20', '/upload/posts/2020-06-26-1593184279.jpg'),
(414, 'ejemplos maceta divisoria', 'ejemplos maceta divisoria', '/upload/posts/thumbnails/2020-06-26-1593184300.jpg', 'post', 10, 8, 48, NULL, NULL, '2020-06-26 22:11:40', '2020-06-26 22:11:40', '/upload/posts/2020-06-26-1593184300.jpg'),
(415, 'info', 'hice cambio sobre la sala de espera\r\nno quiero poner sillones barcelona\r\nsegun el plano, el welcome desk no puede ser asi considerando el ingreso\r\ndudo en lo que te envie sobre sala de espera\r\nhice error cambiando de uso\r\nhay que poner un sofa\r\ny sillones + mesa y lamparas encima\r\npero no colleccion Mies Van der Rohe', NULL, 'post', 10, 8, 42, NULL, NULL, '2020-06-26 22:12:00', '2020-06-26 22:12:00', NULL),
(416, 'referencia interior', 'referencia interior', '/upload/posts/thumbnails/2020-06-26-1593184345.jpg', 'post', 10, 8, 42, NULL, NULL, '2020-06-26 22:12:25', '2020-06-26 22:12:25', '/upload/posts/2020-06-26-1593184345.jpg'),
(417, 'info', 'r+4\r\n\r\ny poner muro vidrio, puerta tal como en plano\r\n quizas usar mismas cameras que R+2\r\ntodas sillas bertoia\r\nagergar benches, despachos\r\ncamaras no gustan, no focal 18 para terraza\r\nmuebles terraza ok\r\n\r\nR+2\r\n\r\nmuebles: muchos parecidos, hay muebles delante de ventanas muy raros, quitar/acomodar\r\nagregar mesas en terraza para comer\r\nvegetacion + arbustos + flores\r\ndetalle en fachada + color', NULL, 'post', 10, 8, 48, NULL, NULL, '2020-06-26 22:12:49', '2020-06-26 22:12:49', NULL),
(418, 'info', 'r+4\r\n\r\ny poner muro vidrio, puerta tal como en plano\r\n quizas usar mismas cameras que R+2\r\ntodas sillas bertoia\r\nagergar benches, despachos\r\ncamaras no gustan, no focal 18 para terraza\r\nmuebles terraza ok\r\n\r\nR+2\r\n\r\nmuebles: muchos parecidos, hay muebles delante de ventanas muy raros, quitar/acomodar\r\nagregar mesas en terraza para comer\r\nvegetacion + arbustos + flores\r\ndetalle en fachada + color', NULL, 'post', 10, 8, 42, NULL, NULL, '2020-06-26 22:13:49', '2020-06-26 22:13:49', NULL),
(419, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-26-1593184463.jpg', 'post', 10, 8, 42, NULL, NULL, '2020-06-26 22:14:25', '2020-06-26 22:14:25', '/upload/posts/2020-06-26-1593184463.jpg'),
(420, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-26-1593184478.jpg', 'post', 10, 8, 42, NULL, NULL, '2020-06-26 22:14:38', '2020-06-26 22:14:38', '/upload/posts/2020-06-26-1593184478.jpg'),
(422, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-26-1593184541.jpg', 'post', 10, 8, 42, NULL, NULL, '2020-06-26 22:15:42', '2020-06-26 22:15:42', '/upload/posts/2020-06-26-1593184541.jpg'),
(423, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-26-1593184553.jpg', 'post', 10, 8, 42, NULL, NULL, '2020-06-26 22:15:54', '2020-06-26 22:15:54', '/upload/posts/2020-06-26-1593184553.jpg'),
(424, 'ref escritorio', 'ref escritorio', '/upload/posts/thumbnails/2020-06-26-1593184571.jpg', 'post', 10, 8, 42, NULL, NULL, '2020-06-26 22:16:11', '2020-06-26 22:16:11', '/upload/posts/2020-06-26-1593184571.jpg'),
(426, 'cam comfirmada', 'cam comfirmada', '/upload/posts/thumbnails/2020-06-26-1593184744.jpg', 'post', 10, 8, 40, NULL, NULL, '2020-06-26 22:19:05', '2020-06-26 22:19:05', '/upload/posts/2020-06-26-1593184744.jpg'),
(427, 'cam comfirmada', 'cam comfirmada', '/upload/posts/thumbnails/2020-06-26-1593184756.jpg', 'post', 10, 8, 40, NULL, NULL, '2020-06-26 22:19:17', '2020-06-26 22:19:17', '/upload/posts/2020-06-26-1593184756.jpg'),
(428, 'ref macetas', 'ref macetas', '/upload/posts/thumbnails/2020-06-26-1593184781.jpg', 'post', 10, 8, 40, NULL, NULL, '2020-06-26 22:19:42', '2020-06-26 22:19:42', '/upload/posts/2020-06-26-1593184781.jpg'),
(429, 'info macetas', 'se que pusieron mucha vegetacion asi pero deberiamos poner no de manera sistematica y sin replicar automacticamente la misma 3D\r\n\r\nhiedra en basement tendria mejor apreciacion\r\n\r\nel piso en la terraza grande es raro, no? (pot)\r\n\r\nen la huerta no hay arboles, hay que poner dentro otra veget que hierba que haya colores\r\n\r\neso se puede si hay canteras integradas a la baranda al interior de los balcones\r\n\r\ncompetidores hacen algo asi pero puede ser mucho mas lindo (como las referencias)', '/upload/posts/thumbnails/2020-06-26-1593184805.jpg', 'post', 10, 8, 40, NULL, NULL, '2020-06-26 22:20:06', '2020-06-26 22:20:06', '/upload/posts/2020-06-26-1593184805.jpg'),
(430, 'comments', 'en macetas son huertas!\r\n\r\nhiedra en muros son sin sentido artistico, hacer mas natural\r\n\r\n\r\nsite', '/upload/posts/thumbnails/2020-06-26-1593184841.jpg', 'post', 10, 8, 42, NULL, NULL, '2020-06-26 22:20:42', '2020-06-26 22:20:42', '/upload/posts/2020-06-26-1593184841.jpg'),
(431, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-26-1593184937.png', 'post', 10, 8, 40, NULL, NULL, '2020-06-26 22:22:18', '2020-06-26 22:22:18', '/upload/posts/2020-06-26-1593184937.png'),
(432, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-26-1593184970.png', 'post', 10, 8, 40, NULL, NULL, '2020-06-26 22:22:53', '2020-06-26 22:22:53', '/upload/posts/2020-06-26-1593184970.png'),
(433, 'commetns site', 'commetns site', '/upload/posts/thumbnails/2020-06-26-1593185094.png', 'post', 10, 8, 40, NULL, NULL, '2020-06-26 22:25:02', '2020-06-26 22:25:02', '/upload/posts/2020-06-26-1593185094.png'),
(434, 'info', 'Pues te paso por aqui los wetransfer de fotos para Ideom perpignan\r\n\r\nDJI_0611\r\neso es para la cam terraza commun (huertas)\r\n\r\nDJI_0326 \r\nesas son para terraza\r\n\r\nla 0626 parece la buena', NULL, 'post', 10, 8, 40, NULL, NULL, '2020-06-26 22:31:34', '2020-06-26 22:31:34', NULL),
(435, 'info', 'Forward de RVA.\r\nQuieren pruebas nuevas (donde disenaron hombre rojo)\r\nNo tengo mi Pc con max conmigo (hasta viernes)> puedes probar?', '/upload/posts/thumbnails/2020-06-26-1593185602.png', 'post', 10, 8, 21, NULL, NULL, '2020-06-26 22:33:23', '2020-06-26 22:33:23', '/upload/posts/2020-06-26-1593185602.png'),
(436, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-26-1593185616.png', 'post', 10, 8, 21, NULL, NULL, '2020-06-26 22:33:37', '2020-06-26 22:33:37', '/upload/posts/2020-06-26-1593185616.png'),
(437, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-26-1593185626.png', 'post', 10, 8, 21, NULL, NULL, '2020-06-26 22:33:47', '2020-06-26 22:33:47', '/upload/posts/2020-06-26-1593185626.png'),
(438, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-26-1593185677.JPG', 'post', 10, 8, 21, NULL, NULL, '2020-06-26 22:34:38', '2020-06-26 22:34:38', '/upload/posts/2020-06-26-1593185677.JPG'),
(439, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-26-1593185708.png', 'post', 10, 8, 21, NULL, NULL, '2020-06-26 22:35:09', '2020-06-26 22:35:09', '/upload/posts/2020-06-26-1593185708.png'),
(440, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-26-1593185719.png', 'post', 10, 8, 21, NULL, NULL, '2020-06-26 22:35:21', '2020-06-26 22:35:21', '/upload/posts/2020-06-26-1593185719.png'),
(441, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-26-1593185733.png', 'post', 10, 8, 21, NULL, NULL, '2020-06-26 22:35:36', '2020-06-26 22:35:36', '/upload/posts/2020-06-26-1593185733.png'),
(442, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-26-1593185759.png', 'post', 10, 8, 21, NULL, NULL, '2020-06-26 22:36:02', '2020-06-26 22:36:02', '/upload/posts/2020-06-26-1593185759.png'),
(443, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-26-1593185779.png', 'post', 10, 8, 21, NULL, NULL, '2020-06-26 22:36:21', '2020-06-26 22:36:21', '/upload/posts/2020-06-26-1593185779.png'),
(444, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-26-1593185794.png', 'post', 10, 8, 21, NULL, NULL, '2020-06-26 22:36:36', '2020-06-26 22:36:36', '/upload/posts/2020-06-26-1593185794.png'),
(445, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-26-1593185814.png', 'post', 10, 8, 21, NULL, NULL, '2020-06-26 22:36:56', '2020-06-26 22:36:56', '/upload/posts/2020-06-26-1593185814.png'),
(446, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-26-1593185839.png', 'post', 10, 8, 21, NULL, NULL, '2020-06-26 22:37:20', '2020-06-26 22:37:20', '/upload/posts/2020-06-26-1593185839.png'),
(447, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-26-1593185852.png', 'post', 10, 8, 21, NULL, NULL, '2020-06-26 22:37:35', '2020-06-26 22:37:35', '/upload/posts/2020-06-26-1593185852.png'),
(448, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-26-1593185870.png', 'post', 10, 8, 21, NULL, NULL, '2020-06-26 22:37:51', '2020-06-26 22:37:51', '/upload/posts/2020-06-26-1593185870.png'),
(449, 'paths', '1_ aereo vertical que es ok\r\n\r\n2_ uno que se eleva adelante kiosco que es ok \r\n\r\n3_ uno que entra por ingreso izquierda a probar\r\n\r\n4_ uno parecido al que hicimos traveseando vegetación pero con target horizontal (no focus en piso o bordure)\r\n\r\nAsi podremos hacer el enlace entre las imágenes fijas.', NULL, 'post', 10, 8, 21, NULL, NULL, '2020-06-26 22:38:14', '2020-06-26 22:38:14', NULL),
(450, 'comments', 'comments', '/upload/posts/thumbnails/2020-06-26-1593186156.JPG', 'post', 10, 8, 21, NULL, NULL, '2020-06-26 22:42:41', '2020-06-26 22:42:41', '/upload/posts/2020-06-26-1593186156.JPG'),
(451, 'info', 'al ingreso faltan flores blancas\r\nspiree y osmanthe contra muros\r\nno veo nada de blanco\r\ntampoco distincion entre esos dos tipos\r\nparece todo igual del mismo tamaño\r\nspiree son un poco mas bajas \r\nen la animacion entraremos por aqui y se vera mucho', '/upload/posts/thumbnails/2020-06-26-1593186205.png', 'post', 10, 8, 21, NULL, NULL, '2020-06-26 22:43:29', '2020-06-26 22:43:29', '/upload/posts/2020-06-26-1593186205.png'),
(452, 'ref plata bici', 'ref plata bici', '/upload/posts/thumbnails/2020-06-26-1593186233.JPG', 'post', 10, 8, 42, NULL, NULL, '2020-06-26 22:43:54', '2020-06-26 22:43:54', '/upload/posts/2020-06-26-1593186233.JPG'),
(453, 'camaras validas', 'Para cameras, validan Cam Etage y Cam 4B.\r\n\r\nSobre la ultima, enviame por fa mi ultimo test pero con vegetación como indicado adelante kiosco y flores blancas como insiste ayer para los ingresos.', NULL, 'post', 10, 8, 21, NULL, NULL, '2020-06-26 22:45:20', '2020-06-26 22:45:20', NULL),
(454, 'nuevos paths', 'nuevos paths para probar', '/upload/posts/thumbnails/2020-06-26-1593186389.JPG', 'post', 10, 8, 21, NULL, NULL, '2020-06-26 22:46:29', '2020-06-26 22:46:29', '/upload/posts/2020-06-26-1593186389.JPG'),
(455, 'comments', 'cam high no quiero\r\n\r\ncam 2 mas veloces por fa (mas distancia)\r\n\r\ncam entrance sobre otro ingreso', NULL, 'post', 10, 8, 21, NULL, NULL, '2020-06-26 22:46:48', '2020-06-26 22:46:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `PROJECTS`
--

CREATE TABLE `PROJECTS` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `manager_id` bigint(20) UNSIGNED NOT NULL,
  `leader_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PROJECTS`
--

INSERT INTO `PROJECTS` (`id`, `project_name`, `delivery_date`, `created_at`, `updated_at`, `client_id`, `manager_id`, `leader_id`, `status`, `thumbnail`) VALUES
(24, '2987 - Regatta Road', '2020-04-02', '2020-03-31 02:02:38', '2020-03-31 02:02:38', 1, 5, 4, 'ongoing', '/upload/posts/thumbnails/2020-03-30-1585594937.jpg'),
(23, 'sistema weekyou', '2020-03-27', '2020-03-26 02:28:39', '2020-03-26 02:28:39', 13, 4, 4, 'ongoing', '/upload/posts/thumbnails/2020-03-25-1585164519.PNG'),
(18, 'Tranquility Beach Dominicana Expansion', '2020-03-27', '2020-03-25 20:09:09', '2020-03-31 01:42:08', 6, 3, 1, 'ongoing', '/upload/posts/thumbnails/2020-03-25-1585141749.jpg'),
(19, 'Gordon G6', '2020-03-31', '2020-03-25 20:27:31', '2020-06-04 04:03:04', 2, 3, 1, 'ongoing', '/upload/posts/thumbnails/2020-03-25-1585142842.jpg'),
(20, '125 - North Main Street', '2020-04-03', '2020-03-25 20:36:50', '2020-04-16 20:50:49', 3, 3, 1, 'pause', '/upload/posts/thumbnails/2020-03-25-1585143409.jpg'),
(21, 'RVA - St Lambert', '2020-04-17', '2020-03-25 20:43:52', '2020-03-25 20:43:52', 8, 3, 1, 'ongoing', '/upload/posts/thumbnails/2020-03-25-1585143830.png'),
(22, 'St Aronment', '2020-04-01', '2020-03-25 20:51:18', '2020-03-30 22:26:42', 6, 3, 1, 'pause', '/upload/posts/thumbnails/2020-03-25-1585144274.jpg'),
(26, 'Santana Terrace', '2020-04-01', '2020-03-31 21:40:42', '2020-03-31 21:40:42', 14, 5, 4, 'ongoing', '/upload/posts/thumbnails/2020-03-31-1585665642.png'),
(27, 'Kolesnyk Cabaña', '2020-04-08', '2020-04-04 03:09:22', '2020-05-14 20:09:19', 3, 5, 4, 'pause', '/upload/posts/thumbnails/2020-04-03-1585944558.jpeg'),
(29, 'Paidas Residence', '2020-04-18', '2020-04-09 02:32:59', '2020-04-09 02:34:33', 15, 4, 3, 'ongoing', '/upload/posts/thumbnails/2020-04-08-1586374379.PNG'),
(30, 'GV-Jonzac', '2020-04-16', '2020-04-16 20:18:18', '2020-05-14 20:09:13', 8, 5, 4, 'pause', '/upload/posts/thumbnails/2020-04-16-1587043097.jpg'),
(31, '330 N Main Street', '2020-04-20', '2020-04-20 21:42:25', '2020-04-20 21:42:25', 9, 5, 4, 'ongoing', '/upload/posts/thumbnails/2020-04-20-1587393745.jpg'),
(32, 'INITIA Carqueiranne', '2020-04-24', '2020-04-24 19:26:26', '2020-06-02 21:41:29', 8, 5, 1, 'pause', '/upload/posts/thumbnails/2020-04-24-1587731185.jpg'),
(33, 'CreekView', '2020-04-24', '2020-04-25 08:39:50', '2020-04-25 08:39:50', 14, 5, 4, 'ongoing', '/upload/posts/thumbnails/2020-04-25-1587778789.jpg'),
(34, 'Upper Ivy', '2020-04-29', '2020-04-30 04:24:48', '2020-04-30 04:24:48', 14, 5, 4, 'ongoing', '/upload/posts/thumbnails/2020-04-29-1588195487.jpg'),
(35, 'Bacotec Juvignac', '2020-05-04', '2020-05-05 21:48:14', '2020-05-05 21:48:14', 8, 5, 4, 'ongoing', '/upload/posts/thumbnails/2020-05-05-1588690094.png'),
(36, 'Immobleu St. Laurent', '2020-05-05', '2020-05-06 02:43:38', '2020-06-02 21:41:38', 8, 5, 4, 'pause', '/upload/posts/thumbnails/2020-05-05-1588707818.jpg'),
(37, 'View on 26th', '2020-05-06', '2020-05-07 04:47:24', '2020-05-07 04:47:24', 14, 5, 4, 'ongoing', '/upload/posts/thumbnails/2020-05-06-1588801644.jpg'),
(38, 'HABSIDE Aix Brunet', '2020-05-14', '2020-05-14 20:08:49', '2020-05-14 20:08:49', 8, 5, 4, 'ongoing', '/upload/posts/thumbnails/2020-05-14-1589461729.jpg'),
(39, '601-Polisuk Residence', '2020-05-14', '2020-05-14 23:34:51', '2020-05-14 23:34:51', 1, 5, 4, 'ongoing', '/upload/posts/thumbnails/2020-05-14-1589474091.JPG'),
(40, 'IDEOM Perpignan', '2020-05-18', '2020-05-18 19:31:35', '2020-05-18 19:31:35', 8, 5, 4, 'ongoing', '/upload/posts/thumbnails/2020-05-18-1589805094.png'),
(41, 'Jones Residence', '2020-05-18', '2020-05-18 19:35:42', '2020-05-18 19:35:42', 2, 5, 4, 'ongoing', '/upload/posts/thumbnails/2020-05-18-1589805342.JPG'),
(42, 'Linkcity Social Club', '2020-05-20', '2020-05-21 00:54:53', '2020-05-21 00:54:53', 8, 5, 4, 'ongoing', '/upload/posts/thumbnails/2020-05-20-1589997292.jpg'),
(43, 'BS Restaurant Papeete', '2020-05-25', '2020-05-25 20:26:16', '2020-05-25 20:26:16', 8, 5, 4, 'ongoing', NULL),
(44, 'CAI Annecy', '2020-05-25', '2020-05-26 00:49:17', '2020-05-26 00:49:17', 8, 5, 4, 'ongoing', '/upload/posts/thumbnails/2020-05-25-1590428956.jpg'),
(45, 'MEYER Soler', '2020-05-27', '2020-05-27 20:49:43', '2020-05-27 20:49:43', 8, 5, 4, 'ongoing', '/upload/posts/thumbnails/2020-05-27-1590587383.png'),
(46, 'AMETIS Calvissoni', '2020-05-28', '2020-05-28 23:01:16', '2020-06-02 21:41:55', 8, 5, 4, 'pause', '/upload/posts/thumbnails/2020-05-28-1590681675.jpg'),
(47, 'REV05 - 25-45 N Main St', '2020-05-29', '2020-05-29 19:54:13', '2020-05-29 19:54:13', 9, 5, 1, 'ongoing', '/upload/posts/thumbnails/2020-05-29-1590756853.jpg'),
(48, 'HABSIDE Voltaix', '2020-06-11', '2020-06-11 21:00:12', '2020-06-11 21:00:12', 8, 5, 4, 'ongoing', '/upload/posts/thumbnails/2020-06-11-1591884010.JPG'),
(49, '140 Winchester', '2020-06-12', '2020-06-12 20:13:50', '2020-06-12 20:13:50', 9, 5, 4, 'ongoing', '/upload/posts/thumbnails/2020-06-12-1591967630.JPG'),
(50, 'ICADE St Laurent', '2020-06-17', '2020-06-17 21:03:11', '2020-06-17 21:03:11', 8, 5, 4, 'ongoing', '/upload/posts/thumbnails/2020-06-17-1592402591.JPG'),
(51, 'IDEOM CAP D ADGE', '2020-06-18', '2020-06-19 05:08:45', '2020-06-19 05:08:45', 8, 5, 4, 'ongoing', '/upload/posts/thumbnails/2020-06-18-1592518123.jpg'),
(52, 'VUE 21', '2020-06-18', '2020-06-19 05:10:20', '2020-06-19 05:10:20', 14, 5, 4, 'ongoing', '/upload/posts/thumbnails/2020-06-18-1592518220.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `PROJECT_LEADERS`
--

CREATE TABLE `PROJECT_LEADERS` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PROJECT_LEADERS`
--

INSERT INTO `PROJECT_LEADERS` (`id`, `created_at`, `updated_at`, `user_id`) VALUES
(1, '2020-03-04 02:27:02', '2020-03-04 02:27:02', 2),
(3, '2020-03-04 23:06:12', '2020-03-04 23:06:12', 9),
(4, '2020-03-17 02:47:40', '2020-03-17 02:47:40', 4);

-- --------------------------------------------------------

--
-- Table structure for table `PROJECT_MANAGERS`
--

CREATE TABLE `PROJECT_MANAGERS` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PROJECT_MANAGERS`
--

INSERT INTO `PROJECT_MANAGERS` (`id`, `created_at`, `updated_at`, `user_id`) VALUES
(4, '2020-03-17 02:47:19', '2020-03-17 02:47:19', 4),
(3, '2020-03-04 21:48:46', '2020-03-04 21:48:46', 7),
(5, NULL, NULL, 10);

-- --------------------------------------------------------

--
-- Table structure for table `PROJECT_VIEWS`
--

CREATE TABLE `PROJECT_VIEWS` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED DEFAULT NULL,
  `view_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PROJECT_VIEWS`
--

INSERT INTO `PROJECT_VIEWS` (`id`, `project_id`, `view_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-03-04 02:30:40', '2020-03-04 02:30:40');

-- --------------------------------------------------------

--
-- Table structure for table `RELATIONSHIP`
--

CREATE TABLE `RELATIONSHIP` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `freelance_id` bigint(20) UNSIGNED DEFAULT NULL,
  `direct_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `RELATIONSHIP`
--

INSERT INTO `RELATIONSHIP` (`id`, `created_at`, `updated_at`, `freelance_id`, `direct_id`, `company_id`) VALUES
(1, '2020-03-10 03:50:31', '2020-03-10 03:50:31', 1, NULL, NULL),
(2, '2020-03-10 03:57:31', '2020-03-10 03:57:31', NULL, 1, NULL),
(3, '2020-03-12 02:07:45', '2020-03-12 02:07:45', 2, NULL, NULL),
(4, '2020-03-12 02:19:02', '2020-03-12 02:19:02', 3, NULL, NULL),
(5, '2020-03-12 02:21:08', '2020-03-12 02:21:08', NULL, 2, NULL),
(6, '2020-03-12 02:26:08', '2020-03-12 02:26:08', 4, NULL, NULL),
(7, '2020-03-17 02:53:00', '2020-03-17 02:53:00', 5, NULL, NULL),
(8, '2020-03-31 05:19:50', '2020-03-31 05:19:50', 6, NULL, NULL),
(9, '2020-04-09 02:14:03', '2020-04-09 02:14:03', 7, NULL, NULL),
(10, '2020-05-07 00:18:32', '2020-05-07 00:18:32', 8, NULL, NULL),
(11, '2020-05-07 00:19:09', '2020-05-07 00:19:09', 9, NULL, NULL),
(12, '2020-05-07 00:59:52', '2020-05-07 00:59:52', 10, NULL, NULL),
(13, '2020-05-07 01:01:30', '2020-05-07 01:01:30', 11, NULL, NULL),
(14, '2020-05-29 03:16:05', '2020-05-29 03:16:05', 12, NULL, NULL),
(15, '2020-06-02 20:29:59', '2020-06-02 20:29:59', 13, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `REMINDERS`
--

CREATE TABLE `REMINDERS` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `REMINDERS`
--

INSERT INTO `REMINDERS` (`id`, `status`, `message`, `created_at`, `updated_at`, `user_id`) VALUES
(202, 1, 'fff', '2020-05-08 23:06:31', '2020-05-08 23:06:31', 1),
(54, 0, 'doug cobrar', '2020-03-24 02:37:12', '2020-04-07 11:51:46', 5),
(183, 1, 'mrafferty@wpsir.com', '2020-04-21 21:51:30', '2020-04-21 21:51:30', 5),
(184, 1, 'mrafferty@wpsir.com', '2020-04-21 21:51:34', '2020-04-21 21:51:34', 5),
(185, 1, 'ArchiStudio', '2020-04-21 22:03:04', '2020-04-21 22:03:04', 5),
(52, 0, 'juliet and pierre cobrarincluido update', '2020-03-24 02:36:54', '2020-04-07 12:17:52', 5),
(53, 0, 'josh checke', '2020-03-24 02:37:03', '2020-04-07 11:51:48', 5),
(51, 0, 'sholmo ver mail', '2020-03-24 02:36:35', '2020-04-07 11:51:54', 5),
(50, 0, 'bill seguirlo', '2020-03-24 02:36:21', '2020-04-07 11:52:45', 5),
(49, 0, 'tracy seguirla', '2020-03-24 02:36:06', '2020-04-07 11:53:55', 5),
(150, 1, 'microlibro, escribir capitulos', '2020-04-12 06:00:20', '2020-04-12 06:00:20', 4),
(84, 1, 'hacer esquema para robotics', '2020-03-31 08:10:17', '2020-03-31 08:10:17', 4),
(151, 1, 'WEEKYOU, armar video 2d explicativo flow', '2020-04-12 06:01:25', '2020-04-12 06:01:25', 4),
(140, 0, 'maryscott cobrar', '2020-04-07 10:26:32', '2020-04-07 11:54:04', 5),
(159, 1, 'twinmotin', '2020-04-14 14:19:22', '2020-04-14 14:19:22', 5),
(191, 0, 'PITCH SANIROBOT', '2020-05-05 20:26:54', '2020-06-08 20:02:02', 4),
(61, 1, 'terminar de cargar todo lo de TBD', '2020-03-26 19:07:54', '2020-03-26 19:07:54', 7),
(62, 0, 'Cargar todo lo de RVA', '2020-03-26 19:08:27', '2020-03-26 19:10:14', 7),
(63, 1, 'mandar primeros 20 mails', '2020-03-26 19:08:46', '2020-03-26 19:08:46', 7),
(65, 0, 'Cargar 125 North main street', '2020-03-26 19:10:10', '2020-03-27 03:04:16', 7),
(189, 1, 'Janice Rothman', '2020-04-21 22:10:13', '2020-04-21 22:10:13', 5),
(188, 1, 'Emily Pettersen', '2020-04-21 22:09:45', '2020-04-21 22:09:45', 5),
(187, 1, 'ritz k', '2020-04-21 22:08:09', '2020-04-21 22:08:09', 5),
(88, 0, '15151', '2020-04-01 00:50:02', '2020-04-01 00:50:07', 9),
(157, 1, 'curso cine', '2020-04-14 14:18:58', '2020-04-14 14:18:58', 5),
(86, 1, 'pagar rentas con cbu gordo', '2020-03-31 20:37:26', '2020-03-31 20:37:26', 3),
(179, 1, 'Hola 2', '2020-04-21 03:15:06', '2020-04-21 03:15:06', 1),
(180, 0, 'Hola ', '2020-04-21 03:15:13', '2020-04-21 03:30:28', 1),
(181, 1, 'Chau', '2020-04-21 03:15:20', '2020-04-21 03:15:20', 1),
(182, 1, 'Hola', '2020-04-21 03:15:49', '2020-04-21 03:15:49', 1),
(186, 1, 'eiki studio02.net', '2020-04-21 22:05:04', '2020-04-21 22:05:04', 5),
(158, 1, 'corona render con ander', '2020-04-14 14:19:09', '2020-04-14 14:19:09', 5),
(118, 1, 'CABAÑA kevin full render y anima y 4d', '2020-04-03 23:13:40', '2020-04-14 14:14:54', 5),
(119, 1, 'GOLEM interior CORONA', '2020-04-03 23:13:51', '2020-04-14 14:14:49', 5),
(120, 0, 'IAN anima + app full orbital', '2020-04-03 23:14:14', '2020-04-14 14:15:17', 5),
(121, 1, 'ian interior todas2 camaras', '2020-04-03 23:15:45', '2020-04-03 23:15:45', 5),
(168, 0, 'baa', '2020-04-20 19:47:20', '2020-05-12 01:05:16', 9),
(169, 0, 'eaea', '2020-04-20 19:47:56', '2020-05-12 01:05:16', 9);

-- --------------------------------------------------------

--
-- Table structure for table `ROL_PERMISSIONS`
--

CREATE TABLE `ROL_PERMISSIONS` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rol_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `STATES`
--

CREATE TABLE `STATES` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `STATES`
--

INSERT INTO `STATES` (`id`, `state_name`, `created_at`, `updated_at`) VALUES
(1, 'Cordoba', NULL, NULL),
(2, 'Buenos Airtes', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `TASKS`
--

CREATE TABLE `TASKS` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `project_id` bigint(20) UNSIGNED DEFAULT NULL,
  `view_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `TASKS`
--

INSERT INTO `TASKS` (`id`, `message`, `status`, `end_date`, `created_at`, `updated_at`, `user_id`, `project_id`, `view_id`, `client_id`, `created_by`) VALUES
(134, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-04-20', '2020-04-20 19:19:59', '2020-04-22 08:18:29', 3, 21, NULL, 8, 10),
(135, '[{\"id\":1,\"data\":\"Anima\",\"status\":1}]', '', '2020-04-20', '2020-04-20 19:20:20', '2020-04-20 19:20:20', 3, 18, NULL, 6, 10),
(136, '[{\"id\":1,\"data\":\"4d\",\"status\":1}]', '', '2020-04-22', '2020-04-20 19:20:39', '2020-04-20 19:20:39', 5, 27, NULL, 3, 10),
(137, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-04-20', '2020-04-20 21:43:16', '2020-04-21 02:14:03', 2, 31, NULL, 9, 10),
(133, '[{\"id\":1,\"data\":\"4d\",\"status\":2}]', '', '2020-04-17', '2020-04-17 09:09:32', '2020-04-20 19:42:12', 2, 27, NULL, 3, 10),
(130, '[{\"id\":1,\"data\":\"Imagenes\",\"status\":2}]', '', '2020-04-17', '2020-04-17 08:59:50', '2020-04-21 04:25:22', 3, 21, NULL, 8, 10),
(131, '[{\"id\":1,\"data\":\"360 full\",\"status\":2}]', '', '2020-04-17', '2020-04-17 09:00:25', '2020-04-21 04:25:25', 3, 18, NULL, 6, 10),
(132, '[{\"id\":1,\"data\":\"imagenes\",\"status\":1}]', '', '2020-04-17', '2020-04-17 09:08:47', '2020-04-17 09:08:47', 5, 27, NULL, 3, 10),
(128, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-04-16', '2020-04-16 09:08:29', '2020-04-17 20:07:10', 3, 21, NULL, 8, 10),
(129, '[{\"id\":1,\"data\":\"psd\",\"status\":1}]', '', '2020-04-16', '2020-04-16 20:41:04', '2020-04-16 20:41:04', 5, 27, NULL, 3, 10),
(127, '[{\"id\":1,\"data\":\"Camaras Anima RVA\",\"status\":2}]', '', '2020-04-16', '2020-04-16 08:06:48', '2020-04-17 20:06:32', 3, 21, NULL, 8, 10),
(126, '[{\"id\":1,\"data\":\"4D (5Camaras)-App\",\"status\":2}]', '', '2020-04-16', '2020-04-16 08:05:49', '2020-04-17 05:03:50', 2, 27, NULL, 3, 10),
(122, '[{\"id\":1,\"data\":\"Paths 4d caba\\u00f1a kevin - hacer 5 nuevos\",\"status\":2}]', '', '2020-04-15', '2020-04-15 12:35:19', '2020-04-16 10:27:38', 2, 27, NULL, 3, 5),
(124, '[{\"id\":1,\"data\":\"Entrega 4fp\",\"status\":2}]', '', '2020-04-16', '2020-04-15 20:33:46', '2020-04-16 04:02:14', 10, 26, NULL, 14, 10),
(125, '[{\"id\":1,\"data\":\"Link\",\"status\":2}]', '', '2020-04-16', '2020-04-16 08:04:47', '2020-04-16 20:40:48', 10, 26, NULL, 14, 10),
(121, '[{\"id\":1,\"data\":\"Anima\",\"status\":1}]', '', '2020-04-15', '2020-04-15 06:37:39', '2020-04-15 06:37:39', 5, 18, NULL, 6, 10),
(118, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-04-14', '2020-04-15 04:56:17', '2020-04-15 04:56:22', 2, 27, NULL, 3, 10),
(119, '[{\"id\":1,\"data\":\"Comments + renderizar\",\"status\":2}]', '', '2020-04-15', '2020-04-15 04:56:51', '2020-04-17 20:06:41', 3, 21, NULL, 8, 10),
(120, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-04-15', '2020-04-15 06:36:55', '2020-04-16 04:02:17', 10, 26, NULL, 14, 10),
(116, '[{\"id\":1,\"data\":\"Revisar\",\"status\":2}]', '', '2020-04-14', '2020-04-15 01:01:42', '2020-04-15 04:49:54', 3, 18, NULL, 6, 10),
(115, '[{\"id\":1,\"data\":\"wireframe\",\"status\":2}]', '', '2020-04-14', '2020-04-14 22:33:45', '2020-04-15 04:20:00', 3, 18, NULL, 6, 10),
(113, '[{\"id\":1,\"data\":\"Definir\",\"status\":1}]', '', '2020-04-14', '2020-04-14 19:30:15', '2020-04-14 19:30:15', 5, 27, NULL, 3, 10),
(114, '[{\"id\":1,\"data\":\"psd\",\"status\":2}]', '', '2020-04-14', '2020-04-14 19:30:58', '2020-04-15 12:34:00', 5, 20, NULL, 3, 10),
(111, '[{\"id\":1,\"data\":\"Cam 01- Cam 15\",\"status\":2}]', '', '2020-04-13', '2020-04-13 22:41:42', '2020-04-14 04:33:54', 2, 27, NULL, 3, 10),
(112, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-04-14', '2020-04-14 19:29:27', '2020-04-16 06:20:06', 3, 21, NULL, 8, 10),
(110, '[{\"id\":1,\"data\":\"psd\",\"status\":1}]', '', '2020-04-13', '2020-04-13 19:43:29', '2020-04-13 19:43:29', 5, 20, NULL, 3, 10),
(108, '[{\"id\":1,\"data\":\"Renderizar\",\"status\":2}]', '', '2020-04-13', '2020-04-13 19:42:52', '2020-04-14 01:05:23', 3, 21, NULL, 8, 10),
(109, '[{\"id\":1,\"data\":\"360\",\"status\":2}]', '', '2020-04-13', '2020-04-13 19:43:12', '2020-04-14 13:07:24', 5, 18, NULL, 6, 10),
(107, '[{\"id\":1,\"data\":\"Mandar esquema\",\"status\":1}]', '', '2020-04-10', '2020-04-10 19:49:04', '2020-04-10 19:49:04', 5, 18, NULL, 6, 10),
(106, '[{\"id\":1,\"data\":\"renderizar\",\"status\":2}]', '', '2020-04-10', '2020-04-10 19:48:16', '2020-04-13 21:53:57', 3, 21, NULL, 8, 10),
(104, '[{\"id\":1,\"data\":\"360\",\"status\":1}]', '', '2020-04-09', '2020-04-10 01:27:37', '2020-04-10 01:27:37', 5, 18, NULL, 6, 10),
(105, '[{\"id\":1,\"data\":\"preparar\",\"status\":2}]', '', '2020-04-10', '2020-04-10 19:46:11', '2020-04-10 21:12:40', 2, 20, NULL, 3, 10),
(102, '[{\"id\":1,\"data\":\"texturizar\",\"status\":2}]', '', '2020-04-09', '2020-04-10 01:25:25', '2020-04-10 03:59:37', 2, 27, NULL, 3, 10),
(103, '[{\"id\":1,\"data\":\"mallas + puertas + avances\",\"status\":2}]', '', '2020-04-09', '2020-04-10 01:25:57', '2020-04-13 21:53:56', 3, 21, NULL, 8, 10),
(100, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-04-08', '2020-04-08 19:44:17', '2020-04-10 01:35:06', 3, 21, NULL, 8, 10),
(98, '[{\"id\":1,\"data\":\"Renderizar\",\"status\":2}]', '', '2020-04-07', '2020-04-07 21:11:37', '2020-04-08 19:10:00', 3, 21, NULL, 8, 10),
(99, '[{\"id\":1,\"data\":\"Model + Cam\",\"status\":1}]', '', '2020-04-08', '2020-04-08 02:37:03', '2020-04-08 02:37:03', 3, 20, NULL, 3, 10),
(92, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-04-06', '2020-04-06 05:52:38', '2020-04-08 04:42:52', 3, 21, NULL, 8, 10),
(93, '[{\"id\":1,\"data\":\"app 360\",\"status\":1}]', '', '2020-04-06', '2020-04-06 20:09:30', '2020-04-06 20:09:30', 5, 18, NULL, 6, 10),
(94, '[{\"id\":1,\"data\":\"Avances\",\"status\":2}]', '', '2020-04-07', '2020-04-07 06:29:10', '2020-04-08 04:42:54', 3, 21, NULL, 8, 10),
(95, '[{\"id\":1,\"data\":\"completar 360\",\"status\":2}]', '', '2020-04-07', '2020-04-07 06:29:57', '2020-04-08 04:57:14', 2, 18, NULL, 6, 10),
(96, '[{\"id\":1,\"data\":\"Camara Test\",\"status\":1}]', '', '2020-04-07', '2020-04-07 06:30:25', '2020-04-07 06:30:25', 5, 18, NULL, 6, 10),
(97, '[{\"id\":1,\"data\":\"Textura y avance\",\"status\":2}]', '', '2020-04-08', '2020-04-07 06:30:51', '2020-04-10 03:51:43', 2, 27, NULL, 3, 10),
(91, '[{\"id\":1,\"data\":\"Joints merge\",\"status\":2}]', '', '2020-04-06', '2020-04-06 05:49:06', '2020-04-07 02:27:00', 3, 21, NULL, 8, 10),
(89, '[{\"id\":1,\"data\":\"Interiores caba\\u00f1as\",\"status\":2}]', '', '2020-04-03', '2020-04-04 01:01:46', '2020-04-07 05:34:33', 3, 18, NULL, 6, 10),
(90, '[{\"id\":1,\"data\":\"Mural\",\"status\":2}]', '', '2020-04-06', '2020-04-06 05:47:05', '2020-04-07 09:59:13', 5, 20, NULL, 3, 10),
(88, '[{\"id\":1,\"data\":\"Camaras propuestas por Barth - PRIORIDAD\",\"status\":2}]', '', '2020-04-03', '2020-04-04 00:49:40', '2020-04-04 01:55:09', 3, 21, NULL, 8, 10),
(87, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-04-03', '2020-04-03 22:44:43', '2020-04-04 09:48:29', 10, 26, NULL, 14, 10),
(86, '[{\"id\":1,\"data\":\"Photoshop\",\"status\":1}]', '', '2020-04-03', '2020-04-03 21:40:36', '2020-04-03 21:40:36', 5, 20, NULL, 3, 10),
(83, '[{\"id\":1,\"data\":\"360\",\"status\":2}]', '', '2020-04-03', '2020-04-03 20:24:42', '2020-04-04 02:12:26', 2, 18, NULL, 6, 10),
(84, '[{\"id\":1,\"data\":\"Maps + Veget\",\"status\":2}]', '', '2020-04-03', '2020-04-03 20:27:10', '2020-04-04 18:58:47', 3, 21, NULL, 8, 10),
(85, '[{\"id\":1,\"data\":\"Cad + Max\",\"status\":2}]', '', '2020-04-03', '2020-04-03 20:29:07', '2020-04-03 22:44:17', 10, 26, NULL, 14, 10),
(79, '[{\"id\":1,\"data\":\"poner los 3 puntos para borrar feedbacks\",\"status\":1}]', '', '2020-04-02', '2020-04-02 06:52:31', '2020-04-02 06:52:31', 1, 23, NULL, 13, 4),
(81, '[{\"id\":1,\"data\":\"Enviar grises Barth SUPER PRIORIDAD\",\"status\":2}]', '', '2020-04-02', '2020-04-02 20:03:21', '2020-04-03 03:49:05', 3, 21, NULL, 8, 10),
(82, '[{\"id\":1,\"data\":\"360 interiores villas\",\"status\":2}]', '', '2020-04-02', '2020-04-02 20:09:51', '2020-04-03 04:18:43', 3, 18, NULL, 6, 10),
(51, '[{\"id\":1,\"data\":\"revisar feedback de reminder\",\"status\":2}]', '', '2020-03-30', '2020-03-30 09:42:07', '2020-03-30 21:41:10', 1, 23, NULL, 13, NULL),
(52, '[{\"id\":1,\"data\":\"en los post antes del usuario que lo  escribe deberia salir si esta definido de que proyecto y cliente\",\"status\":2}]', '', '2020-03-30', '2020-03-30 09:47:20', '2020-03-30 21:41:08', 1, 23, NULL, 13, NULL),
(53, '[{\"id\":1,\"data\":\"en las task tambien deberia figurar en letra chiquitita de quien es la tarea para saber a quien exigir\",\"status\":2}]', '', '2020-03-30', '2020-03-30 09:49:01', '2020-03-30 21:41:06', 1, 23, NULL, 13, NULL),
(54, '[{\"id\":1,\"data\":\"poner hora en el post\",\"status\":1}]', '', '2020-03-30', '2020-03-30 09:55:57', '2020-03-30 21:41:04', 1, 23, NULL, 13, NULL),
(55, '[{\"id\":1,\"data\":\"PRIORIDAD 1: Arreglar REMINDER\",\"status\":2},{\"id\":2,\"data\":\"PRIORIDAD 2: Arreglar POST (agregar nombre y hora)\",\"status\":2},{\"id\":3,\"data\":\"PRIORIDAD 3: Arreglar TASKS (poner nombre a quien se asigna)\",\"status\":2},{\"id\":4,\"data\":\"PRIORIDAD 4: Arreglar TASKS (bug que te envie por video)\",\"status\":2},{\"id\":5,\"data\":\"PRIORIDAD 5: Modulo Feedback\",\"status\":1}]', '', '2020-03-31', '2020-03-30 10:09:43', '2020-04-02 06:48:43', 1, 23, NULL, 13, NULL),
(56, '[{\"id\":1,\"data\":\"POST hacer que se amplie tipo modal cuando tocamos la imagen de un post\",\"status\":1}]', '', '2020-03-30', '2020-03-30 19:44:48', '2020-03-30 19:44:48', 1, 23, NULL, 13, NULL),
(57, '[{\"id\":1,\"data\":\"INTERIOR IAN\",\"status\":2}]', '', '2020-03-30', '2020-03-30 22:08:17', '2020-03-31 05:10:35', 2, 18, NULL, 6, NULL),
(58, '[{\"id\":1,\"data\":\"INTERIOR IAN\",\"status\":2}]', '', '2020-03-30', '2020-03-30 22:08:17', '2020-03-31 06:01:34', 3, 18, NULL, 6, NULL),
(59, '[{\"id\":1,\"data\":\"KEVIN FINALES \",\"status\":1}]', '', '2020-03-30', '2020-03-30 22:27:34', '2020-03-30 22:27:34', 5, 20, NULL, 3, NULL),
(60, '[{\"id\":1,\"data\":\"IAN EXTERIOR AVANCES\",\"status\":1}]', '', '2020-03-30', '2020-03-30 22:29:14', '2020-03-30 22:29:14', 5, 18, NULL, 6, NULL),
(66, '[{\"id\":1,\"data\":\"hay que meter el cargador para cuando usemos subir post o cuando creamos proyectos para evitar dobles uploads\",\"status\":1}]', '', '2020-04-01', '2020-03-31 02:00:20', '2020-04-01 22:39:29', 1, 23, NULL, 13, 4),
(67, '[{\"id\":1,\"data\":\"Renderizar 2987 Regatta Road - Falconer\",\"status\":2}]', '', '2020-04-01', '2020-03-31 04:14:20', '2020-04-02 04:34:51', 3, 24, NULL, 1, 10),
(74, '[{\"id\":1,\"data\":\"La cancha de bochas tiene que ser verde como referencias (ver feedback)\",\"status\":2}]', '', '2020-03-31', '2020-03-31 23:15:42', '2020-04-01 22:39:25', 3, 18, NULL, 6, 10),
(69, '[{\"id\":1,\"data\":\"camara01 nueva interior TBD\",\"status\":2}]', '', '2020-03-31', '2020-03-31 20:45:35', '2020-04-01 02:23:55', 3, 18, NULL, 6, 3),
(70, '[{\"id\":1,\"data\":\"luces para aerea nocturna\",\"status\":2}]', '', '2020-03-31', '2020-03-31 20:46:13', '2020-04-01 04:48:36', 3, 18, NULL, 6, 3),
(71, '[{\"id\":1,\"data\":\"camara nueva aerea TBD\",\"status\":2}]', '', '2020-03-31', '2020-03-31 20:46:44', '2020-04-01 04:48:35', 3, 18, NULL, 6, 3),
(72, '[{\"id\":1,\"data\":\"Entrega Borrador Plan04 Santana\",\"status\":2}]', '', '2020-04-01', '2020-03-31 21:41:50', '2020-04-02 04:34:27', 10, 26, NULL, 14, 10),
(73, '[{\"id\":1,\"data\":\"Grises con camaras de Barth\",\"status\":2}]', '', '2020-03-31', '2020-03-31 22:10:06', '2020-04-01 03:44:42', 3, 21, NULL, 8, 10),
(80, '[{\"id\":1,\"data\":\"Entrega Falconer Regatta Road\",\"status\":2}]', '', '2020-04-02', '2020-04-02 20:01:41', '2020-04-03 03:08:03', 2, 24, NULL, 1, 10),
(76, '[{\"id\":1,\"data\":\"Entrega con correcciones\",\"status\":2}]', '', '2020-04-01', '2020-04-01 05:08:33', '2020-04-02 01:20:58', 3, 18, NULL, 6, 10),
(77, '[{\"id\":1,\"data\":\"Comments Barth RVA-StLambert\",\"status\":2}]', '', '2020-04-01', '2020-04-01 18:47:23', '2020-04-02 04:34:42', 3, 21, NULL, 8, 10),
(78, '[{\"id\":1,\"data\":\"Falconer Renderizar\",\"status\":2}]', '', '2020-04-01', '2020-04-01 19:32:22', '2020-04-02 21:11:09', 2, 24, NULL, 1, 10),
(139, '[{\"id\":1,\"data\":\"360 update\",\"status\":2}]', '', '2020-04-20', '2020-04-21 02:32:34', '2020-04-21 06:17:21', 2, 18, NULL, 6, 2),
(140, '[{\"id\":1,\"data\":\"Feedback lucre\",\"status\":2}]', '', '2020-04-21', '2020-04-21 20:19:25', '2020-04-22 08:11:48', 3, 21, NULL, 8, 10),
(141, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-04-21', '2020-04-21 20:19:42', '2020-04-22 08:11:49', 3, 30, NULL, 8, 10),
(142, '[{\"id\":1,\"data\":\"Actualizar \",\"status\":2}]', '', '2020-04-21', '2020-04-21 20:37:25', '2020-04-21 21:37:21', 2, 18, NULL, 6, 10),
(143, '[{\"id\":1,\"data\":\"Enviar\",\"status\":2}]', '', '2020-04-21', '2020-04-21 20:54:43', '2020-04-22 22:12:10', 10, 21, NULL, 8, 10),
(144, '[{\"id\":1,\"data\":\"Enviar\",\"status\":2}]', '', '2020-04-21', '2020-04-21 20:54:59', '2020-04-22 08:11:44', 10, 30, NULL, 8, 10),
(145, '[{\"id\":1,\"data\":\"Enviar\",\"status\":2}]', '', '2020-04-21', '2020-04-21 20:55:13', '2020-04-21 21:23:35', 10, 31, NULL, 9, 10),
(146, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-04-22', '2020-04-22 08:33:40', '2020-04-23 01:20:28', 10, 26, NULL, 14, 10),
(147, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-04-22', '2020-04-22 19:53:15', '2020-04-23 02:48:11', 2, 30, NULL, 8, 10),
(148, '[{\"id\":1,\"data\":\"Anima\",\"status\":2}]', '', '2020-04-22', '2020-04-22 19:53:34', '2020-04-23 22:44:17', 3, 18, NULL, 6, 10),
(149, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-04-23', '2020-04-22 19:56:43', '2020-04-24 03:27:26', 10, 26, NULL, 14, 10),
(150, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-04-23', '2020-04-23 20:19:56', '2020-04-25 05:58:19', 2, 30, NULL, 8, 10),
(151, '[{\"id\":1,\"data\":\"Anima\",\"status\":1}]', '', '2020-04-23', '2020-04-23 20:20:31', '2020-04-23 20:20:31', 3, 18, NULL, 6, 10),
(152, '[{\"id\":1,\"data\":\"Maps\",\"status\":2}]', '', '2020-04-24', '2020-04-24 19:26:57', '2020-04-27 19:00:56', 3, 30, NULL, 8, 10),
(153, '[{\"id\":1,\"data\":\"Revisar modelo\",\"status\":2}]', '', '2020-04-24', '2020-04-24 19:27:26', '2020-04-25 05:57:39', 2, 32, NULL, 8, 10),
(154, '[{\"id\":1,\"data\":\"Camaras\",\"status\":1}]', '', '2020-04-24', '2020-04-24 19:27:59', '2020-04-24 19:27:59', 5, 30, NULL, 8, 10),
(155, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-04-24', '2020-04-24 19:28:26', '2020-04-25 08:26:50', 10, 26, NULL, 14, 10),
(157, '[{\"id\":1,\"data\":\"First Draft\",\"status\":2}]', '', '2020-04-27', '2020-04-25 08:40:58', '2020-04-28 02:57:19', 10, 33, NULL, 14, 10),
(158, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-04-27', '2020-04-27 01:36:40', '2020-04-30 21:43:31', 3, 30, NULL, 8, 10),
(159, '[{\"id\":1,\"data\":\"Feedback\",\"status\":2}]', '', '2020-04-27', '2020-04-27 01:36:59', '2020-04-28 04:53:25', 2, 32, NULL, 8, 10),
(160, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-04-27', '2020-04-28 01:16:30', '2020-04-28 12:06:27', 5, 20, NULL, 3, 10),
(161, '[{\"id\":1,\"data\":\"Aberturas + Forest\",\"status\":2}]', '', '2020-04-28', '2020-04-28 02:13:48', '2020-05-02 04:10:35', 3, 32, NULL, 8, 10),
(162, '[{\"id\":1,\"data\":\"First Draft\",\"status\":2}]', '', '2020-04-28', '2020-04-28 02:57:16', '2020-04-29 05:30:47', 10, 33, NULL, 14, 10),
(169, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-04-28', '2020-04-28 21:41:21', '2020-04-30 21:43:37', 3, 30, NULL, 8, 10),
(166, '[{\"id\":1,\"data\":\"Camterr3\",\"status\":2}]', '', '2020-04-28', '2020-04-28 20:51:26', '2020-04-28 21:17:54', 2, 32, NULL, 8, 10),
(165, '[{\"id\":1,\"data\":\"Cam gris nueva\",\"status\":2}]', '', '2020-04-28', '2020-04-28 20:37:03', '2020-04-28 21:08:13', 2, 32, NULL, 8, 10),
(168, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-04-29', '2020-04-28 20:53:24', '2020-04-29 20:37:39', 2, 24, NULL, 1, 10),
(170, '[{\"id\":1,\"data\":\"Actualizar\",\"status\":2}]', '', '2020-04-29', '2020-04-28 22:43:50', '2020-04-30 21:39:15', 2, 18, NULL, 6, 10),
(171, '[{\"id\":1,\"data\":\"Entrega\",\"status\":1}]', '', '2020-04-30', '2020-04-29 04:37:29', '2020-04-29 04:37:29', 5, 30, NULL, 8, 10),
(172, '[{\"id\":1,\"data\":\"Avance site y veget\",\"status\":2}]', '', '2020-04-29', '2020-04-29 04:51:42', '2020-04-30 05:08:33', 2, 32, NULL, 8, 10),
(173, '[{\"id\":1,\"data\":\"First Draft\",\"status\":2}]', '', '2020-05-04', '2020-04-30 04:25:18', '2020-05-01 03:01:41', 10, 34, NULL, 14, 10),
(174, '[{\"id\":1,\"data\":\"PSD\",\"status\":1}]', '', '2020-04-30', '2020-04-30 04:25:44', '2020-04-30 04:25:44', 5, 24, NULL, 1, 10),
(208, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-05-11', '2020-05-11 20:37:12', '2020-05-12 01:54:32', 2, 32, NULL, 8, 10),
(176, '[{\"id\":1,\"data\":\"Comments\",\"status\":1}]', '', '2020-04-30', '2020-04-30 19:30:25', '2020-04-30 19:30:25', 3, 30, NULL, 8, 10),
(177, '[{\"id\":1,\"data\":\"Avance\",\"status\":2}]', '', '2020-04-30', '2020-04-30 19:31:04', '2020-05-01 03:01:44', 10, 34, NULL, 14, 10),
(178, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-05-04', '2020-05-04 02:16:05', '2020-05-05 20:10:25', 3, 30, NULL, 8, 10),
(179, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-05-04', '2020-05-04 02:16:26', '2020-05-04 22:54:55', 10, 26, NULL, 14, 10),
(180, '[{\"id\":1,\"data\":\"Comments\",\"status\":1}]', '', '2020-05-04', '2020-05-04 19:47:33', '2020-05-04 19:47:33', 3, 32, NULL, 8, 10),
(181, '[{\"id\":1,\"data\":\"Edicion\",\"status\":1}]', '', '2020-05-04', '2020-05-04 20:47:43', '2020-05-04 20:47:43', 5, 18, NULL, 6, 10),
(182, '[{\"id\":1,\"data\":\"Entrega\",\"status\":2}]', '', '2020-05-06', '2020-05-04 22:55:20', '2020-05-07 23:57:41', 5, 30, NULL, 8, 10),
(183, '[{\"id\":1,\"data\":\"completar interiores \",\"status\":2}]', '', '2020-05-04', '2020-05-05 03:29:49', '2020-05-05 03:29:53', 2, 32, NULL, 8, 2),
(184, '[{\"id\":1,\"data\":\"comments exteriores\",\"status\":2}]', '', '2020-05-04', '2020-05-05 03:30:26', '2020-05-05 03:30:29', 2, 32, NULL, 8, 2),
(185, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-05-05', '2020-05-05 21:44:31', '2020-05-06 10:25:35', 3, 30, NULL, 8, 10),
(186, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-05-05', '2020-05-05 21:44:52', '2020-05-06 10:25:34', 3, 32, NULL, 8, 10),
(187, '[{\"id\":1,\"data\":\"Avance\",\"status\":2}]', '', '2020-05-05', '2020-05-05 21:49:19', '2020-05-07 04:26:18', 2, 35, NULL, 8, 10),
(188, '[{\"id\":1,\"data\":\"Edicion\",\"status\":1}]', '', '2020-05-05', '2020-05-05 22:51:29', '2020-05-05 22:51:29', 5, 18, NULL, 6, 10),
(189, '[{\"id\":1,\"data\":\"Edicion\",\"status\":2}]', '', '2020-05-06', '2020-05-05 22:51:48', '2020-05-07 23:57:40', 5, 18, NULL, 6, 10),
(190, '[{\"id\":1,\"data\":\"test cam exterior\",\"status\":2}]', '', '2020-05-05', '2020-05-06 00:58:38', '2020-05-06 00:58:42', 2, 32, NULL, 8, 2),
(191, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-05-06', '2020-05-06 19:34:40', '2020-05-07 03:31:25', 3, 30, NULL, 8, 10),
(199, '[{\"id\":1,\"data\":\"First Draft\",\"status\":2}]', '', '2020-05-08', '2020-05-07 04:48:04', '2020-05-09 03:59:53', 10, 37, NULL, 14, 10),
(193, '[{\"id\":1,\"data\":\"Arboles\",\"status\":2}]', '', '2020-05-06', '2020-05-06 20:48:51', '2020-05-08 03:46:55', 2, 36, NULL, 8, 10),
(194, '[{\"id\":1,\"data\":\"feedback terrace\",\"status\":2}]', '', '2020-05-06', '2020-05-07 00:03:14', '2020-05-07 00:03:17', 2, 32, NULL, 8, 2),
(201, '[{\"id\":1,\"data\":\"Entrega\",\"status\":1}]', '', '2020-05-13', '2020-05-08 00:21:17', '2020-05-12 01:05:34', 5, 36, NULL, 8, 10),
(196, '[{\"id\":1,\"data\":\"Comments + Texturas\",\"status\":2}]', '', '2020-05-07', '2020-05-07 03:18:43', '2020-05-08 05:31:16', 3, 32, NULL, 8, 10),
(197, '[{\"id\":1,\"data\":\"Veget\",\"status\":2}]', '', '2020-05-07', '2020-05-07 03:19:04', '2020-05-08 05:41:12', 2, 36, NULL, 8, 10),
(198, '[{\"id\":1,\"data\":\"Grises\",\"status\":2}]', '', '2020-05-07', '2020-05-07 03:19:20', '2020-05-08 04:41:15', 2, 35, NULL, 8, 10),
(200, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-05-08', '2020-05-07 04:48:24', '2020-05-08 00:17:55', 10, 33, NULL, 14, 10),
(202, '[{\"id\":1,\"data\":\"Grises\",\"status\":2}]', '', '2020-05-08', '2020-05-08 21:13:49', '2020-05-13 22:57:32', 3, 35, NULL, 8, 10),
(203, '[{\"id\":1,\"data\":\"Terrazas\",\"status\":2}]', '', '2020-05-08', '2020-05-08 21:14:06', '2020-05-08 23:21:53', 2, 35, NULL, 8, 10),
(204, '[{\"id\":1,\"data\":\"Avance\",\"status\":2}]', '', '2020-05-08', '2020-05-09 02:01:56', '2020-05-13 22:57:33', 3, 36, NULL, 8, 10),
(205, '[{\"id\":1,\"data\":\"Balcones\",\"status\":2}]', '', '2020-05-08', '2020-05-09 02:02:12', '2020-05-09 05:12:18', 2, 36, NULL, 8, 10),
(206, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-05-11', '2020-05-11 18:59:24', '2020-05-11 20:19:35', 2, 35, NULL, 8, 10),
(207, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-05-11', '2020-05-11 19:15:01', '2020-05-13 22:57:35', 3, 36, NULL, 8, 10),
(209, '[{\"id\":1,\"data\":\"Aerea \",\"status\":1}]', '', '2020-05-12', '2020-05-12 04:08:53', '2020-05-13 22:57:40', 3, 32, NULL, 8, 10),
(210, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-05-12', '2020-05-12 04:09:25', '2020-05-12 20:36:55', 3, 36, NULL, 8, 10),
(211, '[{\"id\":1,\"data\":\"Terraza\",\"status\":2}]', '', '2020-05-12', '2020-05-12 04:20:39', '2020-05-12 20:26:22', 2, 32, NULL, 8, 10),
(212, '[{\"id\":1,\"data\":\"All Drafts\",\"status\":2}]', '', '2020-05-13', '2020-05-12 04:21:02', '2020-05-14 06:14:45', 10, 33, NULL, 14, 10),
(213, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-05-12', '2020-05-12 19:10:14', '2020-05-13 20:12:58', 2, 35, NULL, 8, 10),
(214, '[{\"id\":1,\"data\":\"Avance\",\"status\":2}]', '', '2020-05-13', '2020-05-13 19:46:44', '2020-05-20 00:42:36', 3, 32, NULL, 8, 10),
(215, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-05-13', '2020-05-13 19:47:15', '2020-05-13 20:13:03', 2, 35, NULL, 8, 10),
(216, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-05-13', '2020-05-13 19:47:42', '2020-05-20 00:42:37', 3, 36, NULL, 8, 10),
(217, '[{\"id\":1,\"data\":\"Avance\",\"status\":2}]', '', '2020-05-14', '2020-05-14 06:14:13', '2020-05-20 00:42:37', 3, 32, NULL, 8, 10),
(218, '[{\"id\":1,\"data\":\"Fachadas  + Interiores\",\"status\":2}]', '', '2020-05-14', '2020-05-14 06:14:41', '2020-05-15 05:16:44', 2, 35, NULL, 8, 10),
(219, '[{\"id\":1,\"data\":\"Comments\",\"status\":1}]', '', '2020-05-14', '2020-05-14 20:03:59', '2020-05-14 20:03:59', 10, 37, NULL, 14, 10),
(220, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-05-15', '2020-05-14 20:04:23', '2020-05-15 22:58:25', 10, 34, NULL, 14, 10),
(221, '[{\"id\":1,\"data\":\"Comments INITIA\",\"status\":2}]', '', '2020-05-15', '2020-05-15 20:53:02', '2020-05-20 00:42:43', 3, 32, NULL, 8, 10),
(222, '[{\"id\":1,\"data\":\"Avance texturas\",\"status\":2}]', '', '2020-05-15', '2020-05-15 20:53:19', '2020-05-16 04:55:53', 2, 35, NULL, 8, 10),
(227, '[{\"id\":1,\"data\":\"comments\",\"status\":2}]', '', '2020-05-18', '2020-05-18 09:36:40', '2020-05-19 08:54:20', 10, 26, NULL, 14, 10),
(224, '[{\"id\":1,\"data\":\"Comments site\",\"status\":2}]', '', '2020-05-15', '2020-05-15 20:53:53', '2020-05-20 00:42:44', 3, 36, NULL, 8, 10),
(225, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-05-15', '2020-05-15 20:59:00', '2020-05-16 00:37:44', 10, 37, NULL, 14, 10),
(226, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-05-15', '2020-05-15 21:01:18', '2020-05-16 01:07:41', 10, 33, NULL, 14, 10),
(228, '[{\"id\":1,\"data\":\"grises\",\"status\":2}]', '', '2020-05-18', '2020-05-18 09:37:06', '2020-05-19 02:39:21', 2, 39, NULL, 1, 10),
(229, '[{\"id\":1,\"data\":\"texturas\",\"status\":2}]', '', '2020-05-18', '2020-05-18 09:37:24', '2020-05-19 08:54:18', 3, 35, NULL, 8, 10),
(230, '[{\"id\":1,\"data\":\"Habside\",\"status\":1}]', '', '2020-05-18', '2020-05-18 19:22:10', '2020-05-18 19:22:10', 5, 38, NULL, 8, 10),
(231, '[{\"id\":1,\"data\":\"Psd\",\"status\":2}]', '', '2020-05-17', '2020-05-18 19:33:23', '2020-05-18 19:33:27', 12, 32, NULL, 8, 10),
(232, '[{\"id\":1,\"data\":\"Modelo\",\"status\":2}]', '', '2020-05-18', '2020-05-18 19:36:06', '2020-05-19 08:54:29', 11, 41, NULL, 2, 10),
(233, '[{\"id\":1,\"data\":\"Modelo\",\"status\":2}]', '', '2020-05-18', '2020-05-18 19:36:28', '2020-05-19 08:54:26', 11, 40, NULL, 8, 10),
(234, '[{\"id\":1,\"data\":\"Modelo\",\"status\":1}]', '', '2020-05-19', '2020-05-18 19:36:47', '2020-05-18 19:36:47', 11, 40, NULL, 8, 10),
(278, '[{\"id\":1,\"data\":\"Piedra INITIA\",\"status\":2}]', '', '2020-05-28', '2020-05-28 23:26:28', '2020-05-29 02:55:17', 3, 32, NULL, 8, 10),
(236, '[{\"id\":1,\"data\":\"Anima\",\"status\":1}]', '', '2020-05-18', '2020-05-18 19:41:07', '2020-05-18 19:41:07', 5, 18, NULL, 6, 10),
(237, '[{\"id\":1,\"data\":\"Grises\",\"status\":2}]', '', '2020-05-19', '2020-05-19 09:14:41', '2020-05-20 19:45:56', 2, 41, NULL, 2, 10),
(238, '[{\"id\":1,\"data\":\"Avance\",\"status\":2}]', '', '2020-05-19', '2020-05-19 09:15:01', '2020-05-20 04:58:52', 3, 35, NULL, 8, 10),
(239, '[{\"id\":1,\"data\":\"Terraza\",\"status\":2}]', '', '2020-05-19', '2020-05-19 23:23:27', '2020-05-20 19:45:56', 2, 35, NULL, 8, 10),
(240, '[{\"id\":1,\"data\":\"Site\",\"status\":2}]', '', '2020-05-20', '2020-05-21 00:49:47', '2020-05-21 00:51:10', 11, 41, NULL, 2, 10),
(241, '[{\"id\":1,\"data\":\"Avance+Site\",\"status\":2}]', '', '2020-05-20', '2020-05-21 00:50:08', '2020-05-21 21:10:53', 3, 35, NULL, 8, 10),
(242, '[{\"id\":1,\"data\":\"Terraza\",\"status\":2}]', '', '2020-05-20', '2020-05-21 00:50:25', '2020-05-21 05:05:21', 2, 35, NULL, 8, 10),
(243, '[{\"id\":1,\"data\":\"New Drafts+Glass\",\"status\":1}]', '', '2020-05-20', '2020-05-21 00:50:46', '2020-05-21 00:50:46', 5, 26, NULL, 14, 10),
(244, '[{\"id\":1,\"data\":\"Enviar Modelo\",\"status\":2}]', '', '2020-05-21', '2020-05-21 21:08:47', '2020-05-21 21:10:45', 10, 42, NULL, 8, 10),
(245, '[{\"id\":1,\"data\":\"Avance\",\"status\":2}]', '', '2020-05-21', '2020-05-21 21:09:10', '2020-05-22 20:57:30', 3, 38, NULL, 8, 10),
(246, '[{\"id\":1,\"data\":\"Terraza\",\"status\":2}]', '', '2020-05-21', '2020-05-21 21:09:27', '2020-05-22 19:23:55', 3, 35, NULL, 8, 10),
(247, '[{\"id\":1,\"data\":\"avance\",\"status\":2}]', '', '2020-05-21', '2020-05-21 21:09:53', '2020-05-21 22:28:16', 2, 41, NULL, 2, 10),
(248, '[{\"id\":1,\"data\":\"drafts\",\"status\":2}]', '', '2020-05-21', '2020-05-21 21:10:17', '2020-05-21 21:10:47', 10, 26, NULL, 14, 10),
(249, '[{\"id\":1,\"data\":\"Modelo\",\"status\":1}]', '', '2020-05-21', '2020-05-21 21:10:36', '2020-05-21 21:10:36', 11, 40, NULL, 8, 10),
(250, '[{\"id\":1,\"data\":\"Avance\",\"status\":2}]', '', '2020-05-22', '2020-05-22 20:01:46', '2020-05-28 20:42:04', 3, 38, NULL, 8, 10),
(251, '[{\"id\":1,\"data\":\"Comments\",\"status\":1}]', '', '2020-05-22', '2020-05-22 20:30:39', '2020-05-22 20:30:39', 10, 33, NULL, 14, 10),
(252, '[{\"id\":1,\"data\":\"Enviar\",\"status\":1}]', '', '2020-05-22', '2020-05-22 21:32:20', '2020-05-22 21:32:20', 10, 41, NULL, 2, 10),
(253, '[{\"id\":1,\"data\":\"Revisar\",\"status\":1}]', '', '2020-05-22', '2020-05-22 21:32:35', '2020-05-22 21:32:35', 10, 39, NULL, 1, 10),
(254, '[{\"id\":1,\"data\":\"All Drafts\",\"status\":2}]', '', '2020-05-27', '2020-05-22 21:32:52', '2020-05-28 04:16:33', 10, 34, NULL, 14, 10),
(255, '[{\"id\":1,\"data\":\"Avance\",\"status\":2}]', '', '2020-05-25', '2020-05-25 20:23:29', '2020-05-26 21:24:59', 3, 35, NULL, 8, 10),
(256, '[{\"id\":1,\"data\":\"Sharpen\",\"status\":2}]', '', '2020-05-25', '2020-05-25 20:23:48', '2020-05-26 03:56:34', 2, 39, NULL, 1, 10),
(257, '[{\"id\":1,\"data\":\"Enviar\",\"status\":2}]', '', '2020-05-25', '2020-05-25 20:24:05', '2020-05-26 03:56:35', 10, 33, NULL, 14, 10),
(258, '[{\"id\":1,\"data\":\"Modelo\",\"status\":1}]', '', '2020-05-25', '2020-05-25 20:26:34', '2020-05-25 20:26:34', 11, 43, NULL, 8, 10),
(259, '[{\"id\":1,\"data\":\"Grises\",\"status\":2}]', '', '2020-05-25', '2020-05-26 00:49:33', '2020-05-26 21:25:01', 3, 44, NULL, 8, 10),
(260, '[{\"id\":1,\"data\":\"Texturas\",\"status\":2}]', '', '2020-05-26', '2020-05-26 20:53:52', '2020-05-27 02:38:49', 2, 41, NULL, 2, 10),
(261, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-05-26', '2020-05-26 20:54:08', '2020-05-27 03:34:31', 3, 32, NULL, 8, 10),
(262, '[{\"id\":1,\"data\":\"PSD\",\"status\":1}]', '', '2020-05-26', '2020-05-26 20:54:24', '2020-05-26 20:54:24', 12, 32, NULL, 8, 10),
(263, '[{\"id\":1,\"data\":\"Grises con veget\",\"status\":2}]', '', '2020-05-26', '2020-05-26 20:54:43', '2020-05-27 03:56:18', 3, 40, NULL, 8, 10),
(264, '[{\"id\":1,\"data\":\"Comments\",\"status\":1}]', '', '2020-05-26', '2020-05-26 20:54:59', '2020-05-26 20:54:59', 11, 43, NULL, 8, 10),
(265, '[{\"id\":1,\"data\":\"Avance\",\"status\":2}]', '', '2020-05-26', '2020-05-26 20:55:15', '2020-05-27 03:34:37', 10, 34, NULL, 14, 10),
(266, '[{\"id\":1,\"data\":\"Comments Orbital\",\"status\":1}]', '', '2020-05-27', '2020-05-26 20:55:40', '2020-05-26 20:55:40', 3, 38, NULL, 8, 10),
(267, '[{\"id\":1,\"data\":\"Texturas\",\"status\":1}]', '', '2020-05-27', '2020-05-26 20:55:56', '2020-05-26 20:55:56', 3, 40, NULL, 8, 10),
(268, '[{\"id\":1,\"data\":\"Avance\",\"status\":2}]', '', '2020-05-27', '2020-05-26 20:56:15', '2020-05-27 22:59:03', 2, 43, NULL, 8, 10),
(269, '[{\"id\":1,\"data\":\"Optimizr\",\"status\":2}]', '', '2020-05-27', '2020-05-27 20:50:09', '2020-05-28 18:58:28', 11, 45, NULL, 8, 10),
(270, '[{\"id\":1,\"data\":\"Grises nueva Cai\",\"status\":2}]', '', '2020-05-27', '2020-05-27 22:32:11', '2020-05-28 03:57:33', 3, 44, NULL, 8, 10),
(271, '[{\"id\":1,\"data\":\"Comments\",\"status\":1}]', '', '2020-05-28', '2020-05-28 04:38:58', '2020-05-28 04:38:58', 10, 26, NULL, 14, 10),
(272, '[{\"id\":1,\"data\":\"Camara Meyer gris\",\"status\":2}]', '', '2020-05-28', '2020-05-28 18:59:04', '2020-05-29 00:38:38', 3, 45, NULL, 8, 10),
(273, '[{\"id\":1,\"data\":\"360 gris\",\"status\":2}]', '', '2020-05-28', '2020-05-28 18:59:36', '2020-05-29 02:55:15', 3, 43, NULL, 8, 10),
(274, '[{\"id\":1,\"data\":\"Balcones\",\"status\":2}]', '', '2020-05-28', '2020-05-28 19:00:03', '2020-05-28 22:48:40', 2, 40, NULL, 8, 10),
(275, '[{\"id\":1,\"data\":\"barandas\",\"status\":2}]', '', '2020-05-28', '2020-05-28 19:00:39', '2020-05-29 00:38:36', 11, 43, NULL, 8, 10),
(277, '[{\"id\":1,\"data\":\"Modificaciones\",\"status\":2}]', '', '2020-05-29', '2020-05-28 23:06:47', '2020-05-29 20:51:14', 3, 46, NULL, 8, 10),
(279, '[{\"id\":1,\"data\":\"Coating + grava + grua\",\"status\":2}]', '', '2020-05-28', '2020-05-29 00:39:02', '2020-05-29 04:59:16', 12, 32, NULL, 8, 10),
(280, '[{\"id\":1,\"data\":\"Glossy\",\"status\":1}]', '', '2020-05-28', '2020-05-29 00:39:28', '2020-05-29 00:39:28', 5, 32, NULL, 8, 10),
(281, '[{\"id\":1,\"data\":\"Fp\",\"status\":1}]', '', '2020-05-29', '2020-05-29 03:14:00', '2020-05-29 03:14:00', 10, 40, NULL, 8, 10),
(282, '[{\"id\":1,\"data\":\"Comments TV\",\"status\":2}]', '', '2020-05-29', '2020-05-29 03:14:33', '2020-05-29 20:51:17', 10, 26, NULL, 14, 10),
(283, '[{\"id\":1,\"data\":\"Balcones+Interiores\",\"status\":2}]', '', '2020-05-29', '2020-05-29 03:15:08', '2020-05-30 02:13:44', 2, 45, NULL, 8, 10),
(284, '[{\"id\":1,\"data\":\"Modif.\",\"status\":2}]', '', '2020-05-29', '2020-05-29 04:59:39', '2020-05-29 20:51:22', 11, 46, NULL, 8, 10),
(285, '[{\"id\":1,\"data\":\"Cambio Venatana\",\"status\":2}]', '', '2020-05-29', '2020-05-29 20:49:31', '2020-05-29 20:51:24', 3, 43, NULL, 8, 10),
(286, '[{\"id\":1,\"data\":\"Comments\",\"status\":1}]', '', '2020-05-29', '2020-05-29 20:51:41', '2020-05-29 20:51:41', 10, 34, NULL, 14, 10),
(287, '[{\"id\":1,\"data\":\"Frames con cambios\",\"status\":2}]', '', '2020-05-29', '2020-05-29 20:52:43', '2020-06-08 20:12:20', 3, 38, NULL, 8, 10),
(295, '[{\"id\":1,\"data\":\"cambios\",\"status\":2}]', '', '2020-06-01', '2020-06-02 20:14:56', '2020-06-02 20:15:36', 11, 44, NULL, 8, 10),
(289, '[{\"id\":1,\"data\":\"Grises\",\"status\":1}]', '', '2020-05-29', '2020-05-29 20:53:33', '2020-05-29 20:53:33', 3, 46, NULL, 8, 10),
(290, '[{\"id\":1,\"data\":\"Modelo\",\"status\":2}]', '', '2020-05-29', '2020-05-29 21:00:15', '2020-05-30 10:27:22', 2, 47, NULL, 9, 10),
(291, '[{\"id\":1,\"data\":\"Cambios de modelo\",\"status\":2}]', '', '2020-06-01', '2020-06-01 21:10:06', '2020-06-02 00:22:18', 2, 47, NULL, 9, 2),
(292, '[{\"id\":1,\"data\":\"avanzar con escena\",\"status\":2}]', '', '2020-06-01', '2020-06-01 21:10:39', '2020-06-03 01:24:19', 2, 47, NULL, 9, 2),
(293, '[{\"id\":1,\"data\":\"Comments+PSD\",\"status\":2}]', '', '2020-06-01', '2020-06-02 20:05:40', '2020-06-02 20:15:39', 3, 35, NULL, 8, 10),
(296, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-06-01', '2020-06-02 20:15:17', '2020-06-02 20:15:40', 10, 26, NULL, 14, 10),
(297, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-06-02', '2020-06-02 20:16:00', '2020-06-03 04:57:09', 11, 44, NULL, 8, 10),
(298, '[{\"id\":1,\"data\":\"PSD\",\"status\":2}]', '', '2020-06-02', '2020-06-02 20:16:20', '2020-06-12 09:51:10', 12, 35, NULL, 8, 10),
(299, '[{\"id\":1,\"data\":\"PSD\",\"status\":1}]', '', '2020-06-02', '2020-06-02 20:16:36', '2020-06-12 09:51:10', 5, 35, NULL, 8, 10),
(300, '[{\"id\":1,\"data\":\"validacion\",\"status\":2}]', '', '2020-06-02', '2020-06-02 20:16:58', '2020-06-03 04:57:00', 3, 46, NULL, 8, 10),
(301, '[{\"id\":1,\"data\":\"all frames \",\"status\":2}]', '', '2020-06-02', '2020-06-02 20:17:33', '2020-06-03 04:57:13', 3, 38, NULL, 8, 10),
(302, '[{\"id\":1,\"data\":\"linkcity\",\"status\":1}]', '', '2020-06-02', '2020-06-02 20:18:21', '2020-06-02 20:18:21', 11, 42, NULL, 8, 10),
(303, '[{\"id\":1,\"data\":\"2D front\",\"status\":2}]', '', '2020-06-02', '2020-06-03 03:35:07', '2020-06-03 03:43:55', 2, 19, NULL, 2, 2),
(304, '[{\"id\":1,\"data\":\"escena\",\"status\":2}]', '', '2020-06-02', '2020-06-03 03:44:37', '2020-06-03 03:44:41', 2, 47, NULL, 9, 2),
(305, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-06-03', '2020-06-03 04:57:35', '2020-06-04 23:34:58', 10, 33, NULL, 14, 10),
(306, '[{\"id\":1,\"data\":\"psd\",\"status\":2}]', '', '2020-06-03', '2020-06-03 04:59:33', '2020-06-04 23:34:56', 12, 35, NULL, 8, 10),
(307, '[{\"id\":1,\"data\":\"frames web\",\"status\":2}]', '', '2020-06-03', '2020-06-03 04:59:51', '2020-06-04 23:34:55', 3, 38, NULL, 8, 10),
(308, '[{\"id\":1,\"data\":\"full\",\"status\":2}]', '', '2020-06-03', '2020-06-03 05:00:34', '2020-06-04 23:35:03', 13, 43, NULL, 8, 10),
(309, '[{\"id\":1,\"data\":\"Texturas\",\"status\":2}]', '', '2020-06-03', '2020-06-03 05:10:40', '2020-06-09 00:15:11', 3, 40, NULL, 8, 10),
(310, '[{\"id\":1,\"data\":\"escena + materiales\",\"status\":2}]', '', '2020-06-03', '2020-06-03 20:31:09', '2020-06-04 03:37:47', 2, 47, NULL, 9, 2),
(312, '[{\"id\":1,\"data\":\"2D sin cesped\",\"status\":2}]', '', '2020-06-03', '2020-06-04 03:38:22', '2020-06-04 03:38:26', 2, 19, NULL, 2, 2),
(313, '[{\"id\":1,\"data\":\"full \",\"status\":2}]', '', '2020-06-04', '2020-06-04 23:35:19', '2020-06-05 21:27:31', 13, 43, NULL, 8, 10),
(314, '[{\"id\":1,\"data\":\"test\",\"status\":2}]', '', '2020-06-04', '2020-06-04 23:35:37', '2020-06-05 21:27:30', 3, 40, NULL, 8, 10),
(315, '[{\"id\":1,\"data\":\"coments\",\"status\":2}]', '', '2020-06-04', '2020-06-04 23:36:02', '2020-06-09 00:15:13', 3, 45, NULL, 8, 10),
(316, '[{\"id\":1,\"data\":\"muebles\",\"status\":2}]', '', '2020-06-04', '2020-06-04 23:36:27', '2020-06-06 04:42:37', 2, 42, NULL, 8, 10),
(317, '[{\"id\":1,\"data\":\"pergolas\",\"status\":2}]', '', '2020-06-04', '2020-06-04 23:37:13', '2020-06-05 00:26:50', 3, 35, NULL, 8, 10),
(318, '[{\"id\":1,\"data\":\"regiones psd\",\"status\":2}]', '', '2020-06-04', '2020-06-04 23:37:28', '2020-06-05 21:27:25', 5, 35, NULL, 8, 10),
(319, '[{\"id\":1,\"data\":\"floorplans\",\"status\":2}]', '', '2020-06-04', '2020-06-05 04:09:48', '2020-06-05 04:09:51', 2, 47, NULL, 9, 2),
(320, '[{\"id\":1,\"data\":\"psd final\",\"status\":2}]', '', '2020-06-05', '2020-06-05 21:26:12', '2020-06-12 09:51:03', 5, 35, NULL, 8, 10),
(321, '[{\"id\":1,\"data\":\"coments\",\"status\":2}]', '', '2020-06-05', '2020-06-05 21:26:28', '2020-06-06 05:38:23', 3, 40, NULL, 8, 10),
(322, '[{\"id\":1,\"data\":\"coments\",\"status\":2}]', '', '2020-06-05', '2020-06-05 21:26:44', '2020-06-09 00:15:15', 3, 45, NULL, 8, 10),
(323, '[{\"id\":1,\"data\":\"mobiliario\",\"status\":2}]', '', '2020-06-05', '2020-06-05 21:26:59', '2020-06-06 04:42:38', 2, 42, NULL, 8, 10),
(324, '[{\"id\":1,\"data\":\"panotour\",\"status\":2}]', '', '2020-06-05', '2020-06-05 21:27:18', '2020-06-12 09:51:18', 5, 43, NULL, 8, 10),
(325, '[{\"id\":1,\"data\":\"Comments\",\"status\":2}]', '', '2020-06-08', '2020-06-08 19:50:42', '2020-06-09 00:15:20', 3, 40, NULL, 8, 10),
(326, '[{\"id\":1,\"data\":\"Camara\",\"status\":2}]', '', '2020-06-08', '2020-06-08 19:50:55', '2020-06-16 20:48:55', 3, 44, NULL, 8, 10),
(327, '[{\"id\":1,\"data\":\"camaras grises\",\"status\":2}]', '', '2020-06-08', '2020-06-08 19:51:12', '2020-06-09 05:08:31', 2, 42, NULL, 8, 10),
(328, '[{\"id\":1,\"data\":\"coments\",\"status\":2}]', '', '2020-06-08', '2020-06-08 19:51:27', '2020-06-08 20:00:03', 10, 26, NULL, 14, 10),
(331, '[{\"id\":1,\"data\":\"coments\",\"status\":1}]', '', '2020-06-08', '2020-06-08 20:00:15', '2020-06-08 20:00:15', 10, 33, NULL, 14, 10),
(330, '[{\"id\":1,\"data\":\"psd\",\"status\":2}]', '', '2020-06-08', '2020-06-08 19:52:00', '2020-06-12 09:51:53', 5, 45, NULL, 8, 10),
(332, '[{\"id\":1,\"data\":\"comments\",\"status\":2}]', '', '2020-06-09', '2020-06-08 20:01:33', '2020-06-11 00:46:43', 10, 34, NULL, 14, 10),
(333, '[{\"id\":1,\"data\":\"veget\",\"status\":2}]', '', '2020-06-08', '2020-06-09 00:16:44', '2020-06-16 20:48:56', 3, 21, NULL, 8, 10),
(334, '[{\"id\":1,\"data\":\"r+4\",\"status\":2}]', '', '2020-06-09', '2020-06-09 23:20:35', '2020-06-10 06:00:10', 2, 42, NULL, 8, 10),
(335, '[{\"id\":1,\"data\":\"matching\",\"status\":2}]', '', '2020-06-09', '2020-06-09 23:21:03', '2020-06-12 09:51:30', 3, 44, NULL, 8, 10),
(336, '[{\"id\":1,\"data\":\"psd\",\"status\":2}]', '', '2020-06-09', '2020-06-09 23:21:32', '2020-06-11 00:46:42', 5, 45, NULL, 8, 10),
(337, '[{\"id\":1,\"data\":\"r+4\",\"status\":2}]', '', '2020-06-10', '2020-06-10 20:51:00', '2020-06-11 03:52:14', 2, 42, NULL, 8, 10),
(338, '[{\"id\":1,\"data\":\"coments fondo\",\"status\":2}]', '', '2020-06-10', '2020-06-10 20:51:20', '2020-06-16 20:48:33', 3, 44, NULL, 8, 10),
(339, '[{\"id\":1,\"data\":\"coment gabinete\",\"status\":1}]', '', '2020-06-10', '2020-06-11 00:47:03', '2020-06-11 00:47:03', 10, 34, NULL, 14, 10),
(340, '[{\"id\":1,\"data\":\"Modeling\",\"status\":1}]', '', '2020-06-11', '2020-06-12 00:32:22', '2020-06-12 00:32:22', 11, 48, NULL, 8, 10),
(341, '[{\"id\":1,\"data\":\"coments\",\"status\":2}]', '', '2020-06-11', '2020-06-12 00:32:50', '2020-06-12 10:28:16', 2, 41, NULL, 2, 10),
(342, '[{\"id\":1,\"data\":\"cam + veget\",\"status\":2}]', '', '2020-06-11', '2020-06-12 00:33:29', '2020-06-16 20:48:38', 3, 21, NULL, 8, 10),
(343, '[{\"id\":1,\"data\":\"site\",\"status\":2}]', '', '2020-06-12', '2020-06-12 20:06:57', '2020-06-16 20:48:42', 3, 45, NULL, 8, 10),
(344, '[{\"id\":1,\"data\":\"cam+veget\",\"status\":2}]', '', '2020-06-12', '2020-06-12 20:07:24', '2020-06-16 20:48:43', 3, 21, NULL, 8, 10),
(345, '[{\"id\":1,\"data\":\"psd\",\"status\":1}]', '', '2020-06-12', '2020-06-12 20:08:10', '2020-06-12 20:08:10', 5, 44, NULL, 8, 10),
(346, '[{\"id\":1,\"data\":\"avance\",\"status\":2}]', '', '2020-06-12', '2020-06-12 20:14:13', '2020-06-13 03:54:07', 2, 49, NULL, 9, 10),
(347, '[{\"id\":1,\"data\":\"psd\",\"status\":2}]', '', '2020-06-15', '2020-06-16 00:28:10', '2020-06-17 00:03:29', 5, 44, NULL, 8, 10),
(348, '[{\"id\":1,\"data\":\"psd\",\"status\":2}]', '', '2020-06-15', '2020-06-16 00:28:26', '2020-06-17 00:03:27', 12, 44, NULL, 8, 10),
(349, '[{\"id\":1,\"data\":\"comments\",\"status\":2}]', '', '2020-06-16', '2020-06-16 22:28:31', '2020-06-17 00:03:23', 2, 42, NULL, 8, 10),
(350, '[{\"id\":1,\"data\":\"comments\",\"status\":2}]', '', '2020-06-16', '2020-06-16 22:28:43', '2020-06-17 04:55:01', 3, 45, NULL, 8, 10),
(351, '[{\"id\":1,\"data\":\"comments\",\"status\":2}]', '', '2020-06-16', '2020-06-16 22:29:10', '2020-06-17 04:55:02', 3, 44, NULL, 8, 10),
(352, '[{\"id\":1,\"data\":\"site\",\"status\":2}]', '', '2020-06-16', '2020-06-16 22:30:21', '2020-06-17 04:55:03', 12, 45, NULL, 8, 10),
(353, '[{\"id\":1,\"data\":\"camaras\",\"status\":2}]', '', '2020-06-16', '2020-06-16 22:31:36', '2020-06-17 04:07:51', 2, 49, NULL, 9, 10),
(354, '[{\"id\":1,\"data\":\"psd\",\"status\":1}]', '', '2020-06-16', '2020-06-16 22:32:25', '2020-06-16 22:32:25', 5, 45, NULL, 8, 10),
(355, '[{\"id\":1,\"data\":\"psd\",\"status\":1}]', '', '2020-06-16', '2020-06-16 22:32:40', '2020-06-16 22:32:40', 5, 44, NULL, 8, 10),
(356, '[{\"id\":1,\"data\":\"sillon + cama + cortina\",\"status\":2}]', '', '2020-06-16', '2020-06-17 01:56:51', '2020-06-17 04:55:08', 10, 33, NULL, 14, 10),
(357, '[{\"id\":1,\"data\":\"Modelo\",\"status\":2}]', '', '2020-06-17', '2020-06-17 20:58:25', '2020-06-18 05:28:49', 3, 44, NULL, 8, 10),
(358, '[{\"id\":1,\"data\":\"psd\",\"status\":1}]', '', '2020-06-17', '2020-06-17 20:58:39', '2020-06-17 20:58:39', 5, 44, NULL, 8, 10),
(359, '[{\"id\":1,\"data\":\"paths para anima\",\"status\":2}]', '', '2020-06-17', '2020-06-17 20:58:59', '2020-06-18 05:28:50', 3, 21, NULL, 8, 10),
(360, '[{\"id\":1,\"data\":\"texturas\",\"status\":2}]', '', '2020-06-17', '2020-06-17 20:59:23', '2020-06-18 04:44:58', 2, 49, NULL, 9, 10),
(361, '[{\"id\":1,\"data\":\"text\",\"status\":1}]', '', '2020-06-17', '2020-06-17 20:59:46', '2020-06-17 20:59:46', 3, 48, NULL, 8, 10),
(362, '[{\"id\":1,\"data\":\"Modelo\",\"status\":1}]', '', '2020-06-17', '2020-06-17 21:03:35', '2020-06-17 21:03:35', 11, 50, NULL, 8, 10),
(363, '[{\"id\":1,\"data\":\"isla\",\"status\":1}]', '', '2020-06-17', '2020-06-17 21:04:08', '2020-06-17 21:04:08', 10, 34, NULL, 14, 10),
(364, '[{\"id\":1,\"data\":\"Camara\",\"status\":2}]', '', '2020-06-17', '2020-06-17 21:13:35', '2020-06-17 21:50:53', 2, 41, NULL, 2, 10),
(365, '[{\"id\":1,\"data\":\"psd\",\"status\":1}]', '', '2020-06-17', '2020-06-18 00:36:21', '2020-06-18 00:36:21', 5, 41, NULL, 2, 10),
(366, '[{\"id\":1,\"data\":\"cam\",\"status\":2}]', '', '2020-06-18', '2020-06-18 21:45:34', '2020-06-19 00:59:39', 3, 21, NULL, 8, 10),
(367, '[{\"id\":1,\"data\":\"texturing\",\"status\":2}]', '', '2020-06-18', '2020-06-18 21:45:58', '2020-06-19 05:06:32', 3, 48, NULL, 8, 10),
(368, '[{\"id\":1,\"data\":\"avance text\",\"status\":2}]', '', '2020-06-18', '2020-06-18 21:46:26', '2020-06-19 05:06:31', 2, 42, NULL, 8, 10),
(371, '[{\"id\":1,\"data\":\"full texturas\",\"status\":2}]', '', '2020-06-19', '2020-06-19 05:06:56', '2020-06-24 20:14:10', 3, 48, NULL, 8, 10),
(370, '[{\"id\":1,\"data\":\"modelo\",\"status\":2}]', '', '2020-06-18', '2020-06-19 05:06:20', '2020-06-19 05:06:34', 11, 50, NULL, 8, 10),
(372, '[{\"id\":1,\"data\":\"psd\",\"status\":1}]', '', '2020-06-19', '2020-06-19 05:07:13', '2020-06-19 05:07:13', 5, 48, NULL, 8, 10),
(373, '[{\"id\":1,\"data\":\"modelo\",\"status\":2}]', '', '2020-06-19', '2020-06-19 05:07:30', '2020-06-20 01:33:33', 11, 50, NULL, 8, 10),
(374, '[{\"id\":1,\"data\":\"modelo\",\"status\":2}]', '', '2020-06-19', '2020-06-19 05:07:45', '2020-06-20 01:33:36', 11, 48, NULL, 8, 10),
(375, '[{\"id\":1,\"data\":\"avance psd\",\"status\":1}]', '', '2020-06-19', '2020-06-19 05:09:25', '2020-06-19 05:09:25', 5, 51, NULL, 8, 10),
(376, '[{\"id\":1,\"data\":\"avance\",\"status\":2}]', '', '2020-06-19', '2020-06-19 05:09:43', '2020-06-19 05:13:40', 2, 42, NULL, 8, 10),
(377, '[{\"id\":1,\"data\":\"avance \",\"status\":2}]', '', '2020-06-19', '2020-06-19 05:10:39', '2020-06-20 01:33:18', 10, 52, NULL, 14, 10),
(378, '[{\"id\":1,\"data\":\"entrega first draft\",\"status\":1}]', '', '2020-06-22', '2020-06-19 05:11:03', '2020-06-19 05:11:03', 10, 52, NULL, 14, 10),
(379, '[{\"id\":1,\"data\":\"entrega terraza\",\"status\":2}]', '', '2020-06-22', '2020-06-19 05:11:20', '2020-06-23 00:59:30', 5, 48, NULL, 8, 10),
(380, '[{\"id\":1,\"data\":\"mobiliario 360\",\"status\":1}]', '', '2020-06-19', '2020-06-20 01:34:04', '2020-06-20 01:34:04', 13, 48, NULL, 8, 10),
(381, '[{\"id\":1,\"data\":\"360 modelo\",\"status\":1}]', '', '2020-06-19', '2020-06-20 01:34:33', '2020-06-20 01:34:33', 11, 48, NULL, 8, 10),
(382, '[{\"id\":1,\"data\":\"fp fondo blanco\",\"status\":1}]', '', '2020-06-19', '2020-06-20 01:35:37', '2020-06-20 01:35:37', 5, 51, NULL, 8, 10),
(383, '[{\"id\":1,\"data\":\"psd avance\",\"status\":1}]', '', '2020-06-19', '2020-06-20 01:35:53', '2020-06-20 01:35:53', 5, 51, NULL, 8, 10),
(384, '[{\"id\":1,\"data\":\"orbital\",\"status\":1}]', '', '2020-06-30', '2020-06-20 01:36:33', '2020-06-20 01:36:33', 5, 51, NULL, 8, 10),
(396, '[{\"id\":1,\"data\":\"psd \",\"status\":2}]', '', '2020-06-25', '2020-06-26 01:57:44', '2020-06-26 05:59:23', 5, 47, NULL, 9, 10),
(386, '[{\"id\":1,\"data\":\"orbital\",\"status\":1}]', '', '2020-06-30', '2020-06-20 01:37:40', '2020-06-20 01:37:40', 5, 48, NULL, 8, 10),
(387, '[{\"id\":1,\"data\":\"imagenes\",\"status\":1}]', '', '2020-06-23', '2020-06-20 01:37:58', '2020-06-20 01:37:58', 5, 51, NULL, 8, 10),
(404, '[{\"id\":1,\"data\":\"Matching pano7\",\"status\":2}]', '', '2020-06-26', '2020-06-26 06:34:29', '2020-06-26 23:22:43', 3, 48, NULL, 8, 10),
(389, '[{\"id\":1,\"data\":\"test orbital\",\"status\":1}]', '', '2020-06-22', '2020-06-23 00:35:28', '2020-06-23 00:35:28', 3, 48, NULL, 8, 10),
(390, '[{\"id\":1,\"data\":\"360\",\"status\":1}]', '', '2020-06-22', '2020-06-23 00:35:42', '2020-06-23 00:35:42', 13, 48, NULL, 8, 10),
(391, '[{\"id\":1,\"data\":\"comments + paths\",\"status\":2}]', '', '2020-06-22', '2020-06-23 00:36:26', '2020-06-24 20:14:22', 3, 51, NULL, 8, 10),
(392, '[{\"id\":1,\"data\":\"comments rva + paths\",\"status\":2}]', '', '2020-06-22', '2020-06-23 00:36:48', '2020-06-24 20:14:22', 3, 21, NULL, 8, 10),
(393, '[{\"id\":1,\"data\":\"fp fondo blanco\",\"status\":1}]', '', '2020-06-22', '2020-06-23 00:37:33', '2020-06-23 00:37:33', 5, 51, NULL, 8, 10),
(394, '[{\"id\":1,\"data\":\"first draft\",\"status\":1}]', '', '2020-06-22', '2020-06-23 00:38:09', '2020-06-23 00:38:09', 10, 52, NULL, 14, 10),
(395, '[{\"id\":1,\"data\":\"ESCALERA!!!\",\"status\":1}]', '', '2020-06-22', '2020-06-23 00:38:29', '2020-06-23 00:38:29', 11, 51, NULL, 8, 10),
(397, '[{\"id\":1,\"data\":\"Paths\",\"status\":2}]', '', '2020-06-25', '2020-06-26 02:02:17', '2020-06-26 19:43:33', 3, 21, NULL, 8, 10),
(398, '[{\"id\":1,\"data\":\"comments\",\"status\":2}]', '', '2020-06-25', '2020-06-26 02:03:56', '2020-06-26 05:37:27', 3, 48, NULL, 8, 10),
(399, '[{\"id\":1,\"data\":\"360\",\"status\":2}]', '', '2020-06-25', '2020-06-26 02:04:17', '2020-06-26 05:37:16', 13, 48, NULL, 8, 10),
(400, '[{\"id\":1,\"data\":\"draft\",\"status\":2}]', '', '2020-06-25', '2020-06-26 02:04:46', '2020-06-26 05:37:15', 10, 52, NULL, 14, 10),
(401, '[{\"id\":1,\"data\":\"comments\",\"status\":2}]', '', '2020-06-25', '2020-06-26 02:05:04', '2020-06-26 05:37:14', 10, 34, NULL, 14, 10),
(402, '[{\"id\":1,\"data\":\"avance texturas\",\"status\":2}]', '', '2020-06-25', '2020-06-26 02:05:39', '2020-06-26 02:42:35', 2, 42, NULL, 8, 10),
(403, '[{\"id\":1,\"data\":\"actualizacion paisaje\",\"status\":2}]', '', '2020-06-25', '2020-06-26 02:06:03', '2020-06-26 05:37:25', 11, 50, NULL, 8, 10),
(405, '[{\"id\":1,\"data\":\"Modeling\",\"status\":2}]', '', '2020-06-26', '2020-06-26 06:34:52', '2020-06-27 03:29:56', 11, 50, NULL, 8, 10),
(406, '[{\"id\":1,\"data\":\"Prep escena\",\"status\":1}]', '', '2020-06-26', '2020-06-26 06:35:14', '2020-06-26 06:35:14', 3, 51, NULL, 8, 10),
(407, '[{\"id\":1,\"data\":\"paths\",\"status\":2}]', '', '2020-06-26', '2020-06-26 06:35:49', '2020-06-27 01:20:33', 3, 21, NULL, 8, 10),
(408, '[{\"id\":1,\"data\":\"rend full confirmadas\",\"status\":2}]', '', '2020-06-26', '2020-06-26 06:36:05', '2020-06-27 01:20:38', 3, 21, NULL, 8, 10),
(409, '[{\"id\":1,\"data\":\"cielorraso por fin!!!!!\",\"status\":1}]', '', '2020-06-26', '2020-06-26 06:36:31', '2020-06-26 06:36:31', 2, 42, NULL, 8, 10),
(410, '[{\"id\":1,\"data\":\"avance t3\",\"status\":2}]', '', '2020-06-26', '2020-06-26 06:38:40', '2020-06-27 03:29:55', 13, 48, NULL, 8, 10),
(411, '[{\"id\":1,\"data\":\"interiores\",\"status\":2}]', '', '2020-06-26', '2020-06-26 22:50:21', '2020-06-27 00:14:25', 2, 48, NULL, 8, 10);

-- --------------------------------------------------------

--
-- Table structure for table `TEMPLATES`
--

CREATE TABLE `TEMPLATES` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `template_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template_route` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `TICKETS`
--

CREATE TABLE `TICKETS` (
  `id` bigint(20) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `USERS`
--

CREATE TABLE `USERS` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `person_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rol_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `USERS`
--

INSERT INTO `USERS` (`id`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `person_id`, `rol_id`) VALUES
(1, 'nmorero', 'nmorero00@gmail.com', NULL, '$2y$12$fqVGW79VCMoYgbgXHKtPx.L5OYQcvuGXT6NhNqfTyZXoUG0.0u4bu', 'rju7HPHgkiHRjcbkDFJVJEiJicHhfq1Bf68UANdvyZC9kcoGHq3oGq7eySlz', NULL, '2020-03-04 02:11:31', 15, 1),
(2, 'pauvial', 'paula.c.vial@hotmail.com', NULL, '$2y$10$rcB3uu6ultUgakUjC0b9QuvA3HeUS121geK1TPeCgi9ylID1OHslO', 'Nt1bMbJWfW3X9qICde6e86l132KQr7hs0lPwTEZMZbsE9JaA73lUEc0fvnrm', '2020-03-03 04:00:53', '2020-03-03 04:00:53', 6, 4),
(3, 'maxileiva', 'maxileiva_01@hotmail.com', NULL, '$2y$10$7J0LksrGzvKiyN4drCPnfO3d5g4LIGd.mch6IM5Vzz4YcnUSPc7C.', 'ZNLrcfr4Um5210545m6L6kReb6KXS7Me3vzV6BOt4MjtipUagRXbN8BXq37f', '2020-03-03 04:06:50', '2020-03-03 04:06:50', 4, 2),
(4, 'ljagod', 'ljagod@gmail.com', NULL, '$2y$10$bu515Up9kgAXVppRawu7qe7mFufXKn4GrYmITV8jc3vXfKDl3q9Om', 'jV7tYwPiNe39gunjNRs0N0gPSoCxIrRd4ah2wPulyCCUuaWhvaEWDdeoRpwx', '2020-03-03 06:28:03', '2020-03-03 06:28:03', 3, 1),
(5, 'leo', 'lvlondero@gmail.com', NULL, '$2y$10$82lVFd1CSLjuU8LAJKwpnesM.d6YZtYsFh4rgC2HCZ/cW91zI.m2S', 'ibKcUdgkw1oZ9vOz8M0Rw4oRbZLs3GUGcDVGzdv3hBdcLz9bXq0c8gnbchku', '2020-03-03 06:28:29', '2020-03-03 06:28:29', 2, 1),
(9, 'ejagodnik', 'elianjagodnik1997@gmail.com', NULL, '$2y$10$NI.AyOOPc6MwKP8AezngvOECQWoMRgIZBN2HBDJQAl/oWmQ0TY2bC', 'Bpsx3qjGwiThYAOSDP24FrlIF8zMlz23HiGBPywmdKS8RriveubnGHKPtyxy', '2020-03-04 23:05:57', '2020-03-04 23:05:57', 5, 1),
(7, 'sgamarra', 'santiago.archelier@gmail.com', NULL, '$2y$10$TW7UnRQK/5qD/t4Pb3/V1OvJB/KQunEtZ5Ks0CMPKPE76pYSa.oE.', 'y30Ikx2PucWy4iXocgym8HS8mhTQ7jDcLvcJDtMFY7vVioj3A4SzPzXhD3kH', '2020-03-04 20:32:36', '2020-03-04 20:32:36', 10, 1),
(8, 'Sofijag', 'sofia.jagod@gmail.com', NULL, '$2y$10$zn2/X00xBdjbJReBHhg5peMnozGY8P6wIXtxNY7BwYLRNhaeoIK.q', 'l00ym04SDEd9D5efoFueNR5o8BqNj25wTMQgjQ2R1kVwksVdGvXllS9gkq8T', '2020-03-04 22:58:48', '2020-03-04 23:07:21', 16, 2),
(10, 'mlsicilia', 'marialucreciasicilia@hotmail.com', NULL, '$2y$10$KaX/dGz76xYPYhScgMSGAuSS.9gT6v6VXPj.5g8dtnah8HuakpHs.', 'HnYkCVZFjF0xXqZjcmNCNB8Jb5I63vtLB2A4fYNJxaA83rQ94nnY29Cn6jgx', '2020-03-05 02:48:17', '2020-03-05 02:48:17', 24, 1),
(11, 'ffantini', 'arquitecto.federico.fantini@gmail.com', NULL, '$2y$10$6QBeSarC2v7estqB4M1TKOV.b.kCAn3zpV28bblQVSZwmfOWSROde', NULL, '2020-05-07 00:59:52', '2020-05-07 00:59:52', 28, 2),
(12, 'charly', 'cgmascheroni@gmail.com', NULL, '$2y$10$4uB1Lc1Jl6.fLNePQ6stvOe28tD1CreRXglEgkl9D175YrLohT7Vm', NULL, '2020-05-07 01:01:30', '2020-05-07 01:01:30', 29, 2),
(13, 'darispe', 'darender.archviz@gmail.com', NULL, '$2y$10$G6LkwWuLYxaecF51ZeJD4eA.CpiBbHCnEoraNlnzKVpQdPUVimUEO', NULL, '2020-06-02 20:30:00', '2020-06-02 20:30:00', 30, 2);

-- --------------------------------------------------------

--
-- Table structure for table `USER_ROLES`
--

CREATE TABLE `USER_ROLES` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `USER_ROLES`
--

INSERT INTO `USER_ROLES` (`id`, `rol`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'developer', NULL, NULL),
(3, 'PRmanager', NULL, NULL),
(4, 'PRleader', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `VIEWS`
--

CREATE TABLE `VIEWS` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `VIEWS`
--

INSERT INTO `VIEWS` (`id`, `created_at`, `updated_at`, `image_id`) VALUES
(1, '2020-03-04 02:30:40', '2020-03-04 02:30:40', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CITIES`
--
ALTER TABLE `CITIES`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `CLIENTS`
--
ALTER TABLE `CLIENTS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clients_person_id_foreign` (`person_id`),
  ADD KEY `clients_company_id_foreign` (`company_id`);

--
-- Indexes for table `COMPANIES`
--
ALTER TABLE `COMPANIES`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companies_country_id_foreign` (`country_id`),
  ADD KEY `companies_state_id_foreign` (`state_id`),
  ADD KEY `companies_city_id_foreign` (`city_id`);

--
-- Indexes for table `COUNTRIES`
--
ALTER TABLE `COUNTRIES`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `DELIVERIES`
--
ALTER TABLE `DELIVERIES`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deliveries_client_id_foreign` (`client_id`),
  ADD KEY `deliveries_project_id_foreign` (`project_id`),
  ADD KEY `deliveries_view_id_foreign` (`view_id`),
  ADD KEY `deliveries_template_id_foreign` (`template_id`);

--
-- Indexes for table `DEVELOPERS`
--
ALTER TABLE `DEVELOPERS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `developers_user_id_foreign` (`user_id`);

--
-- Indexes for table `DEVELOPERS_OF_PROJECTS`
--
ALTER TABLE `DEVELOPERS_OF_PROJECTS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `developers_of_projects_developer_id_foreign` (`developer_id`),
  ADD KEY `developers_of_projects_project_id_foreign` (`project_id`);

--
-- Indexes for table `DIRECT_RELATIONSHIP`
--
ALTER TABLE `DIRECT_RELATIONSHIP`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `EVENTS`
--
ALTER TABLE `EVENTS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_client_id_foreign` (`client_id`),
  ADD KEY `events_project_id_foreign` (`project_id`),
  ADD KEY `events_view_id_foreign` (`view_id`);

--
-- Indexes for table `FEEDBACKS`
--
ALTER TABLE `FEEDBACKS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedbacks_client_id_foreign` (`client_id`),
  ADD KEY `feedbacks_project_id_foreign` (`project_id`),
  ADD KEY `feedbacks_view_id_foreign` (`view_id`),
  ADD KEY `feedbacks_developer_id_foreign` (`developer_id`);

--
-- Indexes for table `FREELANCE_RELATIONSHIP`
--
ALTER TABLE `FREELANCE_RELATIONSHIP`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `IMAGES`
--
ALTER TABLE `IMAGES`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `LEADERS_OF_DEVELOPERS`
--
ALTER TABLE `LEADERS_OF_DEVELOPERS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leaders_of_developers_leader_id_foreign` (`leader_id`),
  ADD KEY `leaders_of_developers_developer_id_foreign` (`developer_id`);

--
-- Indexes for table `MANAGERS_OF_LEADERS`
--
ALTER TABLE `MANAGERS_OF_LEADERS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `managers_of_leaders_manager_id_foreign` (`manager_id`),
  ADD KEY `managers_of_leaders_leader_id_foreign` (`leader_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `PASSWORD_RESET`
--
ALTER TABLE `PASSWORD_RESET`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_reset_email_index` (`email`);

--
-- Indexes for table `PERSONS`
--
ALTER TABLE `PERSONS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `persons_country_id_foreign` (`country_id`),
  ADD KEY `persons_state_id_foreign` (`state_id`),
  ADD KEY `persons_city_id_foreign` (`city_id`),
  ADD KEY `persons_relationship_id_foreign` (`relationship_id`);

--
-- Indexes for table `POSTS`
--
ALTER TABLE `POSTS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_client_id_foreign` (`client_id`),
  ADD KEY `posts_project_id_foreign` (`project_id`),
  ADD KEY `posts_view_id_foreign` (`view_id`),
  ADD KEY `posts_feedback_id_foreign` (`feedback_id`);

--
-- Indexes for table `PROJECTS`
--
ALTER TABLE `PROJECTS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_client_id_foreign` (`client_id`),
  ADD KEY `projects_manager_id_foreign` (`manager_id`),
  ADD KEY `projects_leader_id_foreign` (`leader_id`);

--
-- Indexes for table `PROJECT_LEADERS`
--
ALTER TABLE `PROJECT_LEADERS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_leaders_user_id_foreign` (`user_id`);

--
-- Indexes for table `PROJECT_MANAGERS`
--
ALTER TABLE `PROJECT_MANAGERS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_managers_user_id_foreign` (`user_id`);

--
-- Indexes for table `PROJECT_VIEWS`
--
ALTER TABLE `PROJECT_VIEWS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_views_project_id_foreign` (`project_id`),
  ADD KEY `project_views_view_id_foreign` (`view_id`);

--
-- Indexes for table `RELATIONSHIP`
--
ALTER TABLE `RELATIONSHIP`
  ADD PRIMARY KEY (`id`),
  ADD KEY `relationship_freelance_id_foreign` (`freelance_id`),
  ADD KEY `relationship_direct_id_foreign` (`direct_id`),
  ADD KEY `relationship_company_id_foreign` (`company_id`);

--
-- Indexes for table `REMINDERS`
--
ALTER TABLE `REMINDERS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminders_user_id_foreign` (`user_id`);

--
-- Indexes for table `ROL_PERMISSIONS`
--
ALTER TABLE `ROL_PERMISSIONS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rol_permissions_rol_id_foreign` (`rol_id`);

--
-- Indexes for table `STATES`
--
ALTER TABLE `STATES`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `TASKS`
--
ALTER TABLE `TASKS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_user_id_foreign` (`user_id`),
  ADD KEY `tasks_project_id_foreign` (`project_id`),
  ADD KEY `tasks_view_id_foreign` (`view_id`),
  ADD KEY `tasks_client_id_foreign` (`client_id`);

--
-- Indexes for table `TEMPLATES`
--
ALTER TABLE `TEMPLATES`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `TICKETS`
--
ALTER TABLE `TICKETS`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `USERS`
--
ALTER TABLE `USERS`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_person_id_foreign` (`person_id`),
  ADD KEY `users_rol_id_foreign` (`rol_id`);

--
-- Indexes for table `USER_ROLES`
--
ALTER TABLE `USER_ROLES`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `VIEWS`
--
ALTER TABLE `VIEWS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `views_image_id_foreign` (`image_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `CITIES`
--
ALTER TABLE `CITIES`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `CLIENTS`
--
ALTER TABLE `CLIENTS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `COMPANIES`
--
ALTER TABLE `COMPANIES`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `COUNTRIES`
--
ALTER TABLE `COUNTRIES`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `DELIVERIES`
--
ALTER TABLE `DELIVERIES`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `DEVELOPERS`
--
ALTER TABLE `DEVELOPERS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `DEVELOPERS_OF_PROJECTS`
--
ALTER TABLE `DEVELOPERS_OF_PROJECTS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `DIRECT_RELATIONSHIP`
--
ALTER TABLE `DIRECT_RELATIONSHIP`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `EVENTS`
--
ALTER TABLE `EVENTS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `FEEDBACKS`
--
ALTER TABLE `FEEDBACKS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `FREELANCE_RELATIONSHIP`
--
ALTER TABLE `FREELANCE_RELATIONSHIP`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `IMAGES`
--
ALTER TABLE `IMAGES`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `LEADERS_OF_DEVELOPERS`
--
ALTER TABLE `LEADERS_OF_DEVELOPERS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `MANAGERS_OF_LEADERS`
--
ALTER TABLE `MANAGERS_OF_LEADERS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `PASSWORD_RESET`
--
ALTER TABLE `PASSWORD_RESET`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PERSONS`
--
ALTER TABLE `PERSONS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `POSTS`
--
ALTER TABLE `POSTS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=459;

--
-- AUTO_INCREMENT for table `PROJECTS`
--
ALTER TABLE `PROJECTS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `PROJECT_LEADERS`
--
ALTER TABLE `PROJECT_LEADERS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `PROJECT_MANAGERS`
--
ALTER TABLE `PROJECT_MANAGERS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `PROJECT_VIEWS`
--
ALTER TABLE `PROJECT_VIEWS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `RELATIONSHIP`
--
ALTER TABLE `RELATIONSHIP`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `REMINDERS`
--
ALTER TABLE `REMINDERS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `ROL_PERMISSIONS`
--
ALTER TABLE `ROL_PERMISSIONS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `STATES`
--
ALTER TABLE `STATES`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `TASKS`
--
ALTER TABLE `TASKS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412;

--
-- AUTO_INCREMENT for table `TEMPLATES`
--
ALTER TABLE `TEMPLATES`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `TICKETS`
--
ALTER TABLE `TICKETS`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `USERS`
--
ALTER TABLE `USERS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `USER_ROLES`
--
ALTER TABLE `USER_ROLES`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `VIEWS`
--
ALTER TABLE `VIEWS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
