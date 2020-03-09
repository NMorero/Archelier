-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 09-03-2020 a las 08:34:50
-- Versión del servidor: 5.6.44-cll-lve
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Adelie`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CITIES`
--

CREATE TABLE `CITIES` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `CITIES`
--

INSERT INTO `CITIES` (`id`, `city_name`, `created_at`, `updated_at`) VALUES
(1, 'Cordoba', NULL, NULL),
(2, 'San Francisco', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CLIENTS`
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
-- Volcado de datos para la tabla `CLIENTS`
--

INSERT INTO `CLIENTS` (`id`, `client_name`, `type`, `created_at`, `updated_at`, `person_id`, `company_id`) VALUES
(1, 'Falconer III', 'Freelancer', '2020-03-03 06:32:28', '2020-03-03 06:32:28', 7, NULL),
(2, 'Doug', 'Freelancer', '2020-03-03 06:42:55', '2020-03-03 06:42:55', 9, NULL),
(3, 'Kevin DSB', 'Freelancer', '2020-03-04 21:41:05', '2020-03-04 21:41:05', 11, NULL),
(12, 'Pierre', 'Company', '2020-03-05 00:40:43', '2020-03-05 00:40:43', NULL, 2),
(5, 'Mary', 'Freelancer', '2020-03-04 22:04:40', '2020-03-04 22:04:40', 12, NULL),
(6, 'Ian Edwards', 'Freelancer', '2020-03-05 00:04:49', '2020-03-05 00:04:49', 13, NULL),
(7, 'Josh Freidfertig', 'Freelancer', '2020-03-05 00:06:39', '2020-03-05 00:06:39', 14, NULL),
(8, 'Barthelemy Berthier', 'Freelancer', '2020-03-05 00:10:22', '2020-03-05 00:10:22', 8, NULL),
(9, 'Juliet', 'Freelancer', '2020-03-05 00:32:24', '2020-03-05 00:32:24', 19, NULL),
(10, 'Juliet', 'Company', '2020-03-05 00:32:41', '2020-03-05 00:32:41', NULL, 2),
(11, 'Pierre', 'Freelancer', '2020-03-05 00:38:48', '2020-03-05 00:38:48', 20, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `COMPANIES`
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
-- Volcado de datos para la tabla `COMPANIES`
--

INSERT INTO `COMPANIES` (`id`, `name`, `cuit`, `alias`, `website`, `administrator_name`, `administrator_email`, `production_manager_name`, `production_email`, `phone_number`, `address`, `postal_code`, `identification_code`, `created_at`, `updated_at`, `country_id`, `state_id`, `city_id`) VALUES
(2, 'SARRAZIN', '111', 'Sarrazin', 'https://www.sarrazinarchitecture.com', 'Pierre Jacques', 'pierree@sarrazinarchitecture.com', 'Juliet', 'juliet@sarrazinarchitecture.com', '9145844331', '21 north main st, suite 209  port chester ny', 10573, 300, '2020-03-05 00:30:42', '2020-03-05 00:30:42', 1, 1, 1),
(3, 'JAF Builders Corp.', '111', 'JAF', 'www.jafbuilders.com', 'Josh Freidferting', 'josh@jafbuilders.com', 'Josh', 'josh@jafbuilders.com', '9147235420', '69 Harney Road, Ste #5 Scarsdale, NY', 10583, 100302, '2020-03-05 01:40:37', '2020-03-05 01:40:37', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `COUNTRIES`
--

CREATE TABLE `COUNTRIES` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `COUNTRIES`
--

INSERT INTO `COUNTRIES` (`id`, `country_name`, `created_at`, `updated_at`) VALUES
(1, 'Argentina', NULL, NULL),
(2, 'Brasil', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DELIVERIES`
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
-- Estructura de tabla para la tabla `DEVELOPERS`
--

CREATE TABLE `DEVELOPERS` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `DEVELOPERS`
--

INSERT INTO `DEVELOPERS` (`id`, `created_at`, `updated_at`, `user_id`) VALUES
(4, '2020-03-04 22:52:02', '2020-03-04 22:52:02', 1),
(2, '2020-03-04 21:49:18', '2020-03-04 21:49:18', 3),
(5, '2020-03-04 22:52:13', '2020-03-04 22:52:13', 2),
(6, '2020-03-04 22:58:58', '2020-03-04 22:58:58', 8),
(7, '2020-03-05 02:48:29', '2020-03-05 02:48:29', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DEVELOPERS_OF_PROJECTS`
--

CREATE TABLE `DEVELOPERS_OF_PROJECTS` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DIRECT_RELATIONSHIP`
--

CREATE TABLE `DIRECT_RELATIONSHIP` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_labor_relationship` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_work` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `labor_union` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `labor_agreement` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iva_condition` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_bank` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cbu_number` int(11) NOT NULL,
  `familyContact_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `familyContact_phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `familyContact_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EVENTS`
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
-- Volcado de datos para la tabla `EVENTS`
--

INSERT INTO `EVENTS` (`id`, `message`, `end_date`, `created_at`, `updated_at`, `client_id`, `project_id`, `view_id`) VALUES
(1, 'llega Bart', '2020-03-09', '2020-03-04 02:56:03', '2020-03-04 02:56:03', 2, 1, NULL),
(2, 'llevarlo al hotel', '2020-03-09', '2020-03-04 02:57:41', '2020-03-04 02:57:41', 2, 1, NULL),
(3, 'comenzo Santiago', '2020-03-03', '2020-03-04 02:58:51', '2020-03-04 02:58:51', 2, 1, NULL),
(4, 'llega Bart', '2020-03-09', '2020-03-04 20:54:36', '2020-03-04 20:54:36', 2, 1, NULL),
(5, 'se va bart', '2020-03-19', '2020-03-04 20:55:00', '2020-03-04 20:55:00', 2, 1, NULL),
(6, 'lucas pinta el muro', '2020-03-12', '2020-03-04 20:55:41', '2020-03-04 20:55:41', 2, 1, NULL),
(7, 'comienza el otoño', '2020-03-21', '2020-03-04 20:58:21', '2020-03-04 20:58:21', 2, 1, NULL),
(17, 'Hola mundo', '2018-05-25', '2020-03-07 10:20:38', '2020-03-07 10:20:38', NULL, NULL, NULL),
(16, 'Hola mundo', '2018-05-25', '2020-03-07 10:20:38', '2020-03-07 10:20:38', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FEEDBACKS`
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
  `developer_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `FEEDBACKS`
--

INSERT INTO `FEEDBACKS` (`id`, `message`, `image`, `created_at`, `updated_at`, `client_id`, `project_id`, `view_id`, `developer_id`) VALUES
(1, '[{\"comment\":\"cambiar medianera\",\"status\":\"undone\",\"id\":1},{\"comment\":\"sacar pajaros\",\"status\":\"done\",\"id\":2}]', 'upload/feedbacks/5e5eb43880a95.jpg', '2020-03-04 02:47:04', '2020-03-04 20:21:58', 2, 1, 1, NULL),
(2, '[{\"comment\":\"correr la cancha a la izquierda\",\"status\":\"undone\",\"id\":1},{\"comment\":\"la rotonda es oval no redonda\",\"status\":\"undone\",\"id\":2}]', 'upload/feedbacks/5e5fb9953dbf1.jpg', '2020-03-04 21:22:13', '2020-03-04 21:22:13', 2, 1, 1, NULL),
(3, '[{\"comment\":\"asasf s ASD ASD a\",\"status\":\"undone\",\"id\":1},{\"comment\":\"sasdAS DSD asd s dASDasdAS\",\"status\":\"undone\",\"id\":2},{\"comment\":\"SasdASD asSD\",\"status\":\"undone\",\"id\":3}]', 'upload/feedbacks/5e5fb9e439f6a.jpg', '2020-03-04 21:23:32', '2020-03-04 21:23:32', 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FREELANCE_RELATIONSHIP`
--

CREATE TABLE `FREELANCE_RELATIONSHIP` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `iva_condition` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_bank` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cbu_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `familyContact_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `familyContact_phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `familyContact_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `IMAGES`
--

CREATE TABLE `IMAGES` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_route` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `IMAGES`
--

INSERT INTO `IMAGES` (`id`, `image_route`, `created_at`, `updated_at`) VALUES
(1, '/upload/views/2020-03-03-1583263837.jpg', '2020-03-04 02:30:40', '2020-03-04 02:30:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `LEADERS_OF_DEVELOPERS`
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
-- Estructura de tabla para la tabla `MANAGERS_OF_LEADERS`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
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
(71, '2020_02_09_213832_add_devellopers', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PASSWORD_RESET`
--

CREATE TABLE `PASSWORD_RESET` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PERSONS`
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
-- Volcado de datos para la tabla `PERSONS`
--

INSERT INTO `PERSONS` (`id`, `name`, `last_name`, `dni`, `alias`, `email`, `phone_number`, `address`, `identification_code`, `created_at`, `updated_at`, `country_id`, `state_id`, `city_id`, `relationship_id`) VALUES
(2, 'Leonardo Victor', 'Londero', 31844244, 'Leo', 'lvlondero@gmail.com', '3512145769', 'LOTE 7 MZ 96, ALTO WARCALDE', 100102, '2020-03-03 03:50:01', '2020-03-05 00:53:14', 1, 1, 1, NULL),
(3, 'Lucas', 'Jagodnik', 26482229, 'LUCAS', 'ljagod@gmail.com', '0351155178175', 'Mz 221 Lote 22 Estanzuela 2, La Calera Cordoba', 100101, '2020-03-03 03:51:50', '2020-03-05 00:44:54', 1, 1, 1, NULL),
(4, 'Maximiliano Raul', 'Leiva', 31921875, 'Maxi', 'maxileiva01@gmail.com', '3517048031', 'Obispo Mercadillo 4222', 100107, '2020-03-03 03:55:27', '2020-03-05 00:46:41', 1, 1, 1, NULL),
(5, 'Elian', 'Jagodnik', 40065761, 'Elian', 'jagodnikelian@gmail.com', '3515581132', 'andres ceballos 3515', 100105, '2020-03-03 03:58:04', '2020-03-05 00:53:23', 1, 1, 1, NULL),
(6, 'Paula Cecilia', 'Vial', 34440223, 'Pau', 'paula.c.vial@hotmail.com', '3513138128', 'Av Spilimbergo 4510', 100104, '2020-03-03 03:59:57', '2020-03-05 01:41:50', 1, 1, 1, NULL),
(7, 'Jones', 'Falconer', 222, 'Falconer', 'falconer@rmail.com', '2396495056', '1250 Tamiami Trail N Ste 201, Naples, FL 34102, United States', 106, '2020-03-03 06:32:02', '2020-03-05 01:24:15', 1, 1, 1, NULL),
(8, 'Barthelemy', 'Berthier', 3333, 'Bart', 'bart@email.com', '675949921', 'Via della Torre del Gallo 21 b 50125 Firenze', 100301, '2020-03-03 06:38:17', '2020-03-05 01:48:33', 1, 1, 1, NULL),
(9, 'Douglas', 'Washington', 4444, 'Doug', 'doug@yes.com', '8502312787', 'Rosemary Beach, FL 32461', 100304, '2020-03-03 06:42:00', '2020-03-05 01:32:40', 1, 1, 1, NULL),
(10, 'Santiago', 'Gamarra', 39131089, 'Santi', 'santiago.archelier@gmail.com', '2994021558', 'velez sarfield 1093 7A', 100103, '2020-03-04 20:30:01', '2020-03-05 00:45:08', 1, 1, 1, NULL),
(11, 'Kevin', 'Pellon', 222, 'Kevin', 'kevin@dsb-architects.com', '16468246503', '244 5th avenue, Suite c37, New York', 100307, '2020-03-04 21:39:21', '2020-03-05 00:51:33', 1, 1, 1, NULL),
(12, 'Mary', 'Faithorn Scott', 333, 'Mary', 'mfscottarch@gmail.com', '9142416262', '33 Fairways Drive Mount Kisco, NY  10549', 100308, '2020-03-04 22:04:09', '2020-03-05 00:51:28', 1, 1, 1, NULL),
(13, 'Ian', 'Edwards', 333, 'Sugar George', 'ianedwardsarchitecture@gmail.com', '12642357667', '1366  The Valley  ANGUILLA B.W.I', 100306, '2020-03-04 22:24:21', '2020-03-05 00:51:20', 1, 1, 1, NULL),
(14, 'Josh', 'Freidfertig', 3333, 'Jaf', 'josh@jafbuilders.com', '9147235420', '69 Harney Road, Ste #5 Scarsdale, NY  10583', 100305, '2020-03-04 22:29:10', '2020-03-05 01:41:28', 1, 1, 1, NULL),
(15, 'Nicolas', 'Morero', 123, 'Nmorero', 'nmorero00@gmail.com', '3513685723', 'Manzana 74, lote 3 Los Arboles, Valle Escondido', 100106, '2020-03-04 22:44:12', '2020-03-05 00:46:27', 1, 1, 1, NULL),
(16, 'Sofía', 'Jagodnik', 43881486, 'Sofi', 'sofia.jagod@gmail.com', '3515443283', 'Av Donato Alvarez 9238', 100108, '2020-03-04 22:48:02', '2020-03-05 00:46:52', 1, 1, 1, NULL),
(17, 'Diego Alejandro', 'Arispe Vargas', 35888613, 'Diego', 'darender.archviz@gmail.com', '2974702918', 'Rosario de Santa Fe 1106 Dpto 1D', 100201, '2020-03-04 23:55:23', '2020-03-05 01:45:52', 1, 1, 1, NULL),
(18, 'Federico', 'Fantitni', 26903397, 'Fede', 'arquitecto.federico.fantini@gmail.com', '3512256993', 'Charcas 1550 B° Pueyrredon - Cordoba', 100202, '2020-03-04 23:58:56', '2020-03-05 00:52:16', 1, 1, 1, NULL),
(19, 'Juliet', 'Olguin', 11, 'Juliet', 'juliet@sarrazinarchitecture.com', '9145844331', '21 north main st, suite 209  port chester ny', 100309, '2020-03-05 00:31:48', '2020-03-05 00:50:59', 1, 1, 1, NULL),
(20, 'Pierre', 'Jacques', 123, 'Pierre', 'pierre@sarrazinarchitecture.com', '9145848437', '21 north main st, suite 209  port chester ny', 100310, '2020-03-05 00:38:04', '2020-03-05 00:51:05', 1, 1, 1, NULL),
(21, 'Federico Leandro', 'Caccioppoli', 30327513, 'Fede Ca', 'fede.five3d@gmail.com', '3513864504', 'Alejandro Dumas 2065, Cordoba', 100203, '2020-03-05 01:00:47', '2020-03-05 01:02:26', 1, 1, 1, NULL),
(22, 'Luu Quoc', 'Hung', 111, 'Hung', 'luuhung.47th@gmail.com', '0977864911', 'Apartment A24-02, Hoang Anh Gia Lai LakeView, 72 Ham Nghi street, Hai Chau District, Da Nang City, Viet Nam', 100204, '2020-03-05 02:05:11', '2020-03-05 02:05:11', 1, 1, 1, NULL),
(23, 'Carlos Guido', 'Mascheroni', 30985511, 'Charlie', 'cgmascheroni@gmail.com', '3512397400', 'Raimon Poincare 8662 Dpto: 3- Arguello, Cordoba', 100205, '2020-03-05 02:18:14', '2020-03-05 02:18:37', 1, 1, 1, NULL),
(24, 'Maria Lucrecia', 'Sicilia', 111, 'Lucre', 'marialucreciasicilia@hotmail.com', '3517685158', 'aaa', 100110, '2020-03-05 02:45:19', '2020-03-05 02:45:19', 1, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `POSTS`
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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `POSTS`
--

INSERT INTO `POSTS` (`id`, `title`, `message`, `image`, `type`, `user_id`, `client_id`, `project_id`, `view_id`, `feedback_id`, `updated_at`, `created_at`) VALUES
(7, 'ejemplo de Luz linda', 'me gusto esta luz par que probemos en este project', '/upload/posts/2020-03-04-1583331152.jpg', 'post', 7, 2, 1, NULL, NULL, '2020-03-04 21:12:36', '2020-03-04 21:12:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PROJECTS`
--

CREATE TABLE `PROJECTS` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `manager_id` bigint(20) UNSIGNED NOT NULL,
  `leader_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `PROJECTS`
--

INSERT INTO `PROJECTS` (`id`, `project_name`, `delivery_date`, `created_at`, `updated_at`, `client_id`, `manager_id`, `leader_id`) VALUES
(4, 'Kolesnyk Cabana', '2020-03-05', '2020-03-05 00:01:39', '2020-03-05 00:01:39', 3, 3, 1),
(5, 'Tranquility Beach Dominica Expansion', '2020-03-06', '2020-03-05 00:14:44', '2020-03-05 00:14:44', 6, 3, 1),
(3, 'Leshem 50 Secor Rd', '2020-03-05', '2020-03-04 22:09:39', '2020-03-04 22:09:39', 5, 3, 1),
(6, 'Cornell Rd', '2020-03-06', '2020-03-05 00:16:35', '2020-03-05 00:16:35', 7, 3, 1),
(7, 'St Aroment', '2020-03-06', '2020-03-05 00:17:28', '2020-03-05 00:17:28', 6, 3, 1),
(8, 'Gordon G6', '2020-03-06', '2020-03-05 00:18:13', '2020-03-05 00:18:13', 2, 3, 1),
(9, '232 4th Ave North Newmark', '2020-03-06', '2020-03-05 00:20:06', '2020-03-05 00:20:06', 1, 3, 1),
(10, 'CAI Annecy', '2020-03-06', '2020-03-05 00:20:54', '2020-03-05 00:20:54', 8, 3, 1),
(11, '125 North Main Street', '2020-03-06', '2020-03-05 00:21:49', '2020-03-05 00:21:49', 3, 3, 1),
(12, '30 N Main Street', '2020-03-06', '2020-03-05 02:21:13', '2020-03-05 02:21:13', 10, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PROJECT_LEADERS`
--

CREATE TABLE `PROJECT_LEADERS` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `PROJECT_LEADERS`
--

INSERT INTO `PROJECT_LEADERS` (`id`, `created_at`, `updated_at`, `user_id`) VALUES
(1, '2020-03-04 02:27:02', '2020-03-04 02:27:02', 2),
(3, '2020-03-04 23:06:12', '2020-03-04 23:06:12', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PROJECT_MANAGERS`
--

CREATE TABLE `PROJECT_MANAGERS` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `PROJECT_MANAGERS`
--

INSERT INTO `PROJECT_MANAGERS` (`id`, `created_at`, `updated_at`, `user_id`) VALUES
(3, '2020-03-04 21:48:46', '2020-03-04 21:48:46', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PROJECT_VIEWS`
--

CREATE TABLE `PROJECT_VIEWS` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED DEFAULT NULL,
  `view_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `PROJECT_VIEWS`
--

INSERT INTO `PROJECT_VIEWS` (`id`, `project_id`, `view_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-03-04 02:30:40', '2020-03-04 02:30:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `RELATIONSHIP`
--

CREATE TABLE `RELATIONSHIP` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `freelance_id` bigint(20) UNSIGNED DEFAULT NULL,
  `direct_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `REMINDERS`
--

CREATE TABLE `REMINDERS` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `end_date` date DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `REMINDERS`
--

INSERT INTO `REMINDERS` (`id`, `end_date`, `message`, `created_at`, `updated_at`, `user_id`) VALUES
(7, '2020-03-14', 'VER LOS PUSHERS', '2020-03-07 10:20:41', '2020-03-07 10:20:41', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ROL_PERMISSIONS`
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
-- Estructura de tabla para la tabla `STATES`
--

CREATE TABLE `STATES` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `STATES`
--

INSERT INTO `STATES` (`id`, `state_name`, `created_at`, `updated_at`) VALUES
(1, 'Cordoba', NULL, NULL),
(2, 'Buenos Airtes', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TASKS`
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
  `client_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `TASKS`
--

INSERT INTO `TASKS` (`id`, `message`, `status`, `end_date`, `created_at`, `updated_at`, `user_id`, `project_id`, `view_id`, `client_id`) VALUES
(13, '[{\"id\":1,\"data\":\"Modificar task\",\"status\":1},{\"id\":2,\"data\":\" opcion de dar tarea a cliente o a compa\\u00f1ero\",\"status\":1},{\"id\":3,\"data\":\"modificar evento\",\"status\":1},{\"id\":4,\"data\":\" posibilidad de elegir a varios para que asistan\",\"status\":1},{\"id\":5,\"data\":\"chat interno\",\"status\":1},{\"id\":6,\"data\":\"que pueda delegar a los lideres y a los develop\",\"status\":1}]', '1', '2020-03-05', '2020-03-05 04:02:06', '2020-03-09 21:11:17', 1, 8, NULL, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TEMPLATES`
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
-- Estructura de tabla para la tabla `USERS`
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
-- Volcado de datos para la tabla `USERS`
--

INSERT INTO `USERS` (`id`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `person_id`, `rol_id`) VALUES
(1, 'nmorero', 'nmorero00@gmail.com', NULL, '$2y$12$fqVGW79VCMoYgbgXHKtPx.L5OYQcvuGXT6NhNqfTyZXoUG0.0u4bu', NULL, NULL, '2020-03-04 02:11:31', 15, 1),
(2, 'pauvial', 'paula.c.vial@hotmail.com', NULL, '$2y$10$rcB3uu6ultUgakUjC0b9QuvA3HeUS121geK1TPeCgi9ylID1OHslO', NULL, '2020-03-03 04:00:53', '2020-03-03 04:00:53', 6, 4),
(3, 'maxileiva', 'maxileiva_01@hotmail.com', NULL, '$2y$10$7J0LksrGzvKiyN4drCPnfO3d5g4LIGd.mch6IM5Vzz4YcnUSPc7C.', NULL, '2020-03-03 04:06:50', '2020-03-03 04:06:50', 4, 2),
(4, 'ljagod', 'ljagod@gmail.com', NULL, '$2y$10$bu515Up9kgAXVppRawu7qe7mFufXKn4GrYmITV8jc3vXfKDl3q9Om', NULL, '2020-03-03 06:28:03', '2020-03-03 06:28:03', 3, 1),
(5, 'leo', 'lvlondero@gmail.com', NULL, '$2y$10$82lVFd1CSLjuU8LAJKwpnesM.d6YZtYsFh4rgC2HCZ/cW91zI.m2S', NULL, '2020-03-03 06:28:29', '2020-03-03 06:28:29', 2, 1),
(9, 'ejagodnik', 'elianjagodnik1997@gmail.com', NULL, '$2y$10$NI.AyOOPc6MwKP8AezngvOECQWoMRgIZBN2HBDJQAl/oWmQ0TY2bC', NULL, '2020-03-04 23:05:57', '2020-03-04 23:05:57', 5, 4),
(7, 'sgamarra', 'santiago.archelier@gmail.com', NULL, '$2y$10$TW7UnRQK/5qD/t4Pb3/V1OvJB/KQunEtZ5Ks0CMPKPE76pYSa.oE.', 'Rp91Y727zECqc8iKQz63oTWjNyVe6KlIJ2wz1wyA7sSDjLHi2yH3Lgquc2iu', '2020-03-04 20:32:36', '2020-03-04 20:32:36', 10, 1),
(8, 'Sofijag', 'sofia.jagod@gmail.com', NULL, '$2y$10$zn2/X00xBdjbJReBHhg5peMnozGY8P6wIXtxNY7BwYLRNhaeoIK.q', NULL, '2020-03-04 22:58:48', '2020-03-04 23:07:21', 16, 2),
(10, 'mlsicilia', 'marialucreciasicilia@hotmail.com', NULL, '$2y$10$KaX/dGz76xYPYhScgMSGAuSS.9gT6v6VXPj.5g8dtnah8HuakpHs.', NULL, '2020-03-05 02:48:17', '2020-03-05 02:48:17', 24, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `USER_ROLES`
--

CREATE TABLE `USER_ROLES` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `USER_ROLES`
--

INSERT INTO `USER_ROLES` (`id`, `rol`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'developer', NULL, NULL),
(3, 'PRmanager', NULL, NULL),
(4, 'PRleader', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `VIEWS`
--

CREATE TABLE `VIEWS` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `VIEWS`
--

INSERT INTO `VIEWS` (`id`, `created_at`, `updated_at`, `image_id`) VALUES
(1, '2020-03-04 02:30:40', '2020-03-04 02:30:40', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CITIES`
--
ALTER TABLE `CITIES`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `CLIENTS`
--
ALTER TABLE `CLIENTS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clients_person_id_foreign` (`person_id`),
  ADD KEY `clients_company_id_foreign` (`company_id`);

--
-- Indices de la tabla `COMPANIES`
--
ALTER TABLE `COMPANIES`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companies_country_id_foreign` (`country_id`),
  ADD KEY `companies_state_id_foreign` (`state_id`),
  ADD KEY `companies_city_id_foreign` (`city_id`);

--
-- Indices de la tabla `COUNTRIES`
--
ALTER TABLE `COUNTRIES`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `DELIVERIES`
--
ALTER TABLE `DELIVERIES`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deliveries_client_id_foreign` (`client_id`),
  ADD KEY `deliveries_project_id_foreign` (`project_id`),
  ADD KEY `deliveries_view_id_foreign` (`view_id`),
  ADD KEY `deliveries_template_id_foreign` (`template_id`);

--
-- Indices de la tabla `DEVELOPERS`
--
ALTER TABLE `DEVELOPERS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `developers_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `DEVELOPERS_OF_PROJECTS`
--
ALTER TABLE `DEVELOPERS_OF_PROJECTS`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `DIRECT_RELATIONSHIP`
--
ALTER TABLE `DIRECT_RELATIONSHIP`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `EVENTS`
--
ALTER TABLE `EVENTS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_client_id_foreign` (`client_id`),
  ADD KEY `events_project_id_foreign` (`project_id`),
  ADD KEY `events_view_id_foreign` (`view_id`);

--
-- Indices de la tabla `FEEDBACKS`
--
ALTER TABLE `FEEDBACKS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedbacks_client_id_foreign` (`client_id`),
  ADD KEY `feedbacks_project_id_foreign` (`project_id`),
  ADD KEY `feedbacks_view_id_foreign` (`view_id`),
  ADD KEY `feedbacks_developer_id_foreign` (`developer_id`);

--
-- Indices de la tabla `FREELANCE_RELATIONSHIP`
--
ALTER TABLE `FREELANCE_RELATIONSHIP`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `IMAGES`
--
ALTER TABLE `IMAGES`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `LEADERS_OF_DEVELOPERS`
--
ALTER TABLE `LEADERS_OF_DEVELOPERS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leaders_of_developers_leader_id_foreign` (`leader_id`),
  ADD KEY `leaders_of_developers_developer_id_foreign` (`developer_id`);

--
-- Indices de la tabla `MANAGERS_OF_LEADERS`
--
ALTER TABLE `MANAGERS_OF_LEADERS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `managers_of_leaders_manager_id_foreign` (`manager_id`),
  ADD KEY `managers_of_leaders_leader_id_foreign` (`leader_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `PASSWORD_RESET`
--
ALTER TABLE `PASSWORD_RESET`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_reset_email_index` (`email`);

--
-- Indices de la tabla `PERSONS`
--
ALTER TABLE `PERSONS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `persons_country_id_foreign` (`country_id`),
  ADD KEY `persons_state_id_foreign` (`state_id`),
  ADD KEY `persons_city_id_foreign` (`city_id`),
  ADD KEY `persons_relationship_id_foreign` (`relationship_id`);

--
-- Indices de la tabla `POSTS`
--
ALTER TABLE `POSTS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_client_id_foreign` (`client_id`),
  ADD KEY `posts_project_id_foreign` (`project_id`),
  ADD KEY `posts_view_id_foreign` (`view_id`),
  ADD KEY `posts_feedback_id_foreign` (`feedback_id`);

--
-- Indices de la tabla `PROJECTS`
--
ALTER TABLE `PROJECTS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_client_id_foreign` (`client_id`),
  ADD KEY `projects_manager_id_foreign` (`manager_id`),
  ADD KEY `projects_leader_id_foreign` (`leader_id`);

--
-- Indices de la tabla `PROJECT_LEADERS`
--
ALTER TABLE `PROJECT_LEADERS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_leaders_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `PROJECT_MANAGERS`
--
ALTER TABLE `PROJECT_MANAGERS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_managers_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `PROJECT_VIEWS`
--
ALTER TABLE `PROJECT_VIEWS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_views_project_id_foreign` (`project_id`),
  ADD KEY `project_views_view_id_foreign` (`view_id`);

--
-- Indices de la tabla `RELATIONSHIP`
--
ALTER TABLE `RELATIONSHIP`
  ADD PRIMARY KEY (`id`),
  ADD KEY `relationship_freelance_id_foreign` (`freelance_id`),
  ADD KEY `relationship_direct_id_foreign` (`direct_id`),
  ADD KEY `relationship_company_id_foreign` (`company_id`);

--
-- Indices de la tabla `REMINDERS`
--
ALTER TABLE `REMINDERS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminders_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `ROL_PERMISSIONS`
--
ALTER TABLE `ROL_PERMISSIONS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rol_permissions_rol_id_foreign` (`rol_id`);

--
-- Indices de la tabla `STATES`
--
ALTER TABLE `STATES`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `TASKS`
--
ALTER TABLE `TASKS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_user_id_foreign` (`user_id`),
  ADD KEY `tasks_project_id_foreign` (`project_id`),
  ADD KEY `tasks_view_id_foreign` (`view_id`),
  ADD KEY `tasks_client_id_foreign` (`client_id`);

--
-- Indices de la tabla `TEMPLATES`
--
ALTER TABLE `TEMPLATES`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `USERS`
--
ALTER TABLE `USERS`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_person_id_foreign` (`person_id`),
  ADD KEY `users_rol_id_foreign` (`rol_id`);

--
-- Indices de la tabla `USER_ROLES`
--
ALTER TABLE `USER_ROLES`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `VIEWS`
--
ALTER TABLE `VIEWS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `views_image_id_foreign` (`image_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `CITIES`
--
ALTER TABLE `CITIES`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `CLIENTS`
--
ALTER TABLE `CLIENTS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `COMPANIES`
--
ALTER TABLE `COMPANIES`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `COUNTRIES`
--
ALTER TABLE `COUNTRIES`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `DELIVERIES`
--
ALTER TABLE `DELIVERIES`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `DEVELOPERS`
--
ALTER TABLE `DEVELOPERS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `DEVELOPERS_OF_PROJECTS`
--
ALTER TABLE `DEVELOPERS_OF_PROJECTS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `DIRECT_RELATIONSHIP`
--
ALTER TABLE `DIRECT_RELATIONSHIP`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `EVENTS`
--
ALTER TABLE `EVENTS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `FEEDBACKS`
--
ALTER TABLE `FEEDBACKS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `FREELANCE_RELATIONSHIP`
--
ALTER TABLE `FREELANCE_RELATIONSHIP`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `IMAGES`
--
ALTER TABLE `IMAGES`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `LEADERS_OF_DEVELOPERS`
--
ALTER TABLE `LEADERS_OF_DEVELOPERS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `MANAGERS_OF_LEADERS`
--
ALTER TABLE `MANAGERS_OF_LEADERS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT de la tabla `PASSWORD_RESET`
--
ALTER TABLE `PASSWORD_RESET`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `PERSONS`
--
ALTER TABLE `PERSONS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `POSTS`
--
ALTER TABLE `POSTS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `PROJECTS`
--
ALTER TABLE `PROJECTS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `PROJECT_LEADERS`
--
ALTER TABLE `PROJECT_LEADERS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `PROJECT_MANAGERS`
--
ALTER TABLE `PROJECT_MANAGERS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `PROJECT_VIEWS`
--
ALTER TABLE `PROJECT_VIEWS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `RELATIONSHIP`
--
ALTER TABLE `RELATIONSHIP`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `REMINDERS`
--
ALTER TABLE `REMINDERS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `ROL_PERMISSIONS`
--
ALTER TABLE `ROL_PERMISSIONS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `STATES`
--
ALTER TABLE `STATES`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `TASKS`
--
ALTER TABLE `TASKS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `TEMPLATES`
--
ALTER TABLE `TEMPLATES`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `USERS`
--
ALTER TABLE `USERS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `USER_ROLES`
--
ALTER TABLE `USER_ROLES`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `VIEWS`
--
ALTER TABLE `VIEWS`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
