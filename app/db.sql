-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 27-07-2018 a las 02:47:03
-- Versión del servidor: 5.6.38
-- Versión de PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de datos: `db_repuestos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, '', 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '', 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, '', 9),
(57, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(58, 7, 'key', 'text', 'Key', 1, 1, 1, 1, 1, 1, NULL, 2),
(59, 7, 'table_name', 'text', 'Table Name', 0, 1, 1, 1, 1, 1, NULL, 3),
(60, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 4),
(61, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-07-27 05:07:08', '2018-07-27 05:07:08'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-07-27 05:07:08', '2018-07-27 05:07:08'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-07-27 05:07:08', '2018-07-27 05:07:08'),
(7, 'permissions', 'permissions', 'Permission', 'Permissions', NULL, 'App\\Permission', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-27 01:40:44', '2018-07-27 01:40:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-07-27 05:07:08', '2018-07-27 05:07:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Inicio', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2018-07-27 05:07:08', '2018-07-27 01:36:04', 'voyager.profile', 'null'),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, 5, 1, '2018-07-27 05:07:08', '2018-07-27 01:36:50', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', NULL, '#000000', 15, 1, '2018-07-27 05:07:08', '2018-07-27 01:41:52', 'voyager.users.index', 'null'),
(4, 1, 'Roles', '', '_self', NULL, '#000000', 15, 2, '2018-07-27 05:07:08', '2018-07-27 01:41:43', 'voyager.roles.index', 'null'),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 3, '2018-07-27 05:07:08', '2018-07-27 01:38:55', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 2, '2018-07-27 05:07:08', '2018-07-27 01:36:50', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 3, '2018-07-27 05:07:08', '2018-07-27 01:36:50', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 4, '2018-07-27 05:07:08', '2018-07-27 01:36:50', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 5, '2018-07-27 05:07:08', '2018-07-27 01:36:50', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, 5, 7, '2018-07-27 05:07:08', '2018-07-27 01:36:50', 'voyager.settings.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 6, '2018-07-27 05:07:10', '2018-07-27 01:36:50', 'voyager.hooks', NULL),
(15, 1, 'Seguridad', '', '_self', 'voyager-lock', '#000000', NULL, 2, '2018-07-27 01:38:43', '2018-07-27 01:38:53', NULL, ''),
(16, 1, 'Permisos', '', '_self', NULL, '#000000', 15, 3, '2018-07-27 01:40:44', '2018-07-27 01:47:27', 'voyager.permissions.index', 'null');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2016_01_01_000000_create_pages_table', 2),
(24, '2016_01_01_000000_create_posts_table', 2),
(25, '2016_02_15_204651_create_categories_table', 2),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-07-27 05:07:08', '2018-07-27 05:07:08'),
(2, 'browse_bread', NULL, '2018-07-27 05:07:08', '2018-07-27 05:07:08'),
(3, 'browse_database', NULL, '2018-07-27 05:07:08', '2018-07-27 05:07:08'),
(4, 'browse_media', NULL, '2018-07-27 05:07:08', '2018-07-27 05:07:08'),
(5, 'browse_compass', NULL, '2018-07-27 05:07:08', '2018-07-27 05:07:08'),
(6, 'browse_menus', 'menus', '2018-07-27 05:07:08', '2018-07-27 05:07:08'),
(7, 'read_menus', 'menus', '2018-07-27 05:07:08', '2018-07-27 05:07:08'),
(8, 'edit_menus', 'menus', '2018-07-27 05:07:08', '2018-07-27 05:07:08'),
(9, 'add_menus', 'menus', '2018-07-27 05:07:08', '2018-07-27 05:07:08'),
(10, 'delete_menus', 'menus', '2018-07-27 05:07:08', '2018-07-27 05:07:08'),
(11, 'browse_roles', 'roles', '2018-07-27 05:07:08', '2018-07-27 05:07:08'),
(12, 'read_roles', 'roles', '2018-07-27 05:07:08', '2018-07-27 05:07:08'),
(13, 'edit_roles', 'roles', '2018-07-27 05:07:08', '2018-07-27 05:07:08'),
(14, 'add_roles', 'roles', '2018-07-27 05:07:08', '2018-07-27 05:07:08'),
(15, 'delete_roles', 'roles', '2018-07-27 05:07:08', '2018-07-27 05:07:08'),
(16, 'browse_users', 'users', '2018-07-27 05:07:08', '2018-07-27 05:07:08'),
(17, 'read_users', 'users', '2018-07-27 05:07:08', '2018-07-27 05:07:08'),
(18, 'edit_users', 'users', '2018-07-27 05:07:08', '2018-07-27 05:07:08'),
(19, 'add_users', 'users', '2018-07-27 05:07:08', '2018-07-27 05:07:08'),
(20, 'delete_users', 'users', '2018-07-27 05:07:08', '2018-07-27 05:07:08'),
(21, 'browse_settings', 'settings', '2018-07-27 05:07:08', '2018-07-27 05:07:08'),
(22, 'read_settings', 'settings', '2018-07-27 05:07:08', '2018-07-27 05:07:08'),
(23, 'edit_settings', 'settings', '2018-07-27 05:07:08', '2018-07-27 05:07:08'),
(24, 'add_settings', 'settings', '2018-07-27 05:07:08', '2018-07-27 05:07:08'),
(25, 'delete_settings', 'settings', '2018-07-27 05:07:08', '2018-07-27 05:07:08'),
(41, 'browse_hooks', NULL, '2018-07-27 05:07:10', '2018-07-27 05:07:10'),
(42, 'browse_permissions', 'permissions', '2018-07-27 01:40:44', '2018-07-27 01:40:44'),
(43, 'read_permissions', 'permissions', '2018-07-27 01:40:44', '2018-07-27 01:40:44'),
(44, 'edit_permissions', 'permissions', '2018-07-27 01:40:44', '2018-07-27 01:40:44'),
(45, 'add_permissions', 'permissions', '2018-07-27 01:40:44', '2018-07-27 01:40:44'),
(46, 'delete_permissions', 'permissions', '2018-07-27 01:40:44', '2018-07-27 01:40:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-07-27 05:07:08', '2018-07-27 05:07:08'),
(2, 'user', 'User Normal', '2018-07-27 05:07:08', '2018-07-27 02:29:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `details` text COLLATE utf8_unicode_ci,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'WebRepuestos', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Sistema web para la administración de tiendas, almacenes, negocios de repuestos de 2 y 4 ruedas.', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Repuestos', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Bienvenido al sistema web repuestos', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2018-07-27 05:07:10', '2018-07-27 05:07:10'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2018-07-27 05:07:10', '2018-07-27 05:07:10'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2018-07-27 05:07:10', '2018-07-27 05:07:10'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2018-07-27 05:07:10', '2018-07-27 05:07:10'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2018-07-27 05:07:10', '2018-07-27 05:07:10'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2018-07-27 05:07:10', '2018-07-27 05:07:10'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2018-07-27 05:07:10', '2018-07-27 05:07:10'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2018-07-27 05:07:10', '2018-07-27 05:07:10'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2018-07-27 05:07:10', '2018-07-27 05:07:10'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2018-07-27 05:07:10', '2018-07-27 05:07:10'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2018-07-27 05:07:10', '2018-07-27 05:07:10'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2018-07-27 05:07:10', '2018-07-27 05:07:10'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2018-07-27 05:07:10', '2018-07-27 05:07:10'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2018-07-27 05:07:10', '2018-07-27 05:07:10'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2018-07-27 05:07:10', '2018-07-27 05:07:10'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2018-07-27 05:07:10', '2018-07-27 05:07:10'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2018-07-27 05:07:10', '2018-07-27 05:07:10'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2018-07-27 05:07:10', '2018-07-27 05:07:10'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-07-27 05:07:10', '2018-07-27 05:07:10'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2018-07-27 05:07:10', '2018-07-27 05:07:10'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2018-07-27 05:07:10', '2018-07-27 05:07:10'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2018-07-27 05:07:10', '2018-07-27 05:07:10'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2018-07-27 05:07:10', '2018-07-27 05:07:10'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2018-07-27 05:07:10', '2018-07-27 05:07:10'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2018-07-27 05:07:10', '2018-07-27 05:07:10'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2018-07-27 05:07:10', '2018-07-27 05:07:10'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2018-07-27 05:07:10', '2018-07-27 05:07:10'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2018-07-27 05:07:10', '2018-07-27 05:07:10'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2018-07-27 05:07:10', '2018-07-27 05:07:10'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2018-07-27 05:07:10', '2018-07-27 05:07:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$HzwRQZKDy8Zk85C7zmQ9LOMXnbNkM0YZntqRnKTU1NEAreqdduYbK', 'vHcu1b63mgR8zMHwhlqIOnyw4odnovun9ibmJOtVbFK9tExOwzkh23T0cpJN', NULL, '2018-07-27 05:07:09', '2018-07-27 05:07:09'),
(2, 2, 'luis flore', 'luis.flore@gmail.com', 'users/default.png', '$2y$10$wE0aobL4.jCVqSfmWafl9e/nXo28zgTiBoZnTCoo/qfYmsCYrp3W6', 'L9EcuG7WGqZMyppPbpEmRanvwIHcFApRzDOcr0z33ThJLpjv93Xs81gG9MvB', NULL, '2018-07-27 02:18:04', '2018-07-27 02:18:04'),
(3, 1, 'mario perez', 'mario.perez@admin.com', 'users/default.png', '$2y$10$nlbZLwltuUlEMmkb4zncteZNrlKWyHuABJOL9BzE5qOEgSxf5o1g.', 'ztvcLBzd3hkMefy7tpFdcZ1gbfB2LJDue03lDKzBq48130U1w49F4dOJ70nJ', '{\"locale\":\"es\"}', '2018-07-27 02:25:30', '2018-07-27 02:29:05'),
(4, 1, 'maria dias', 'maria.dias@admin.com', 'users/July2018/nRvnwioK7riy9eWAhenw.jpg', '$2y$10$k5rckwjAtwllVEsBIIUZWeWwcZHut.qjv0grNjnUs/zXZ9.DEX54C', 'FyI7MnHdVqV75KY27PbvcmvarT4r04UzDJWsm7Pu0AJDn0iAJyMs2RXUHdYa', '{\"locale\":\"es\"}', '2018-07-27 02:32:56', '2018-07-27 02:42:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indices de la tabla `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indices de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indices de la tabla `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
