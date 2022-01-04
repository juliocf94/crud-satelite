-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-01-2022 a las 03:38:02
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `registro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alm_estudiantes`
--

CREATE TABLE `alm_estudiantes` (
  `alm_id` bigint(20) UNSIGNED NOT NULL,
  `alm_codigo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alm_nombre` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alm_edad` int(11) NOT NULL DEFAULT 11,
  `alm_sexo` enum('M','F','O') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'F = FEMENINO - M = MASCULINO',
  `alm_id_grd` int(11) NOT NULL DEFAULT 11,
  `alm_observacion` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `alm_estudiantes`
--

INSERT INTO `alm_estudiantes` (`alm_id`, `alm_codigo`, `alm_nombre`, `alm_edad`, `alm_sexo`, `alm_id_grd`, `alm_observacion`, `created_at`, `updated_at`) VALUES
(8, '100', 'Elizabeth Guadalupe Reyes', 20, 'F', 11, 'Estudiante de la facultad de psicología.', '2022-01-03 10:54:17', '2022-01-04 07:25:17'),
(9, '200', 'Julio César Flores Fuentes', 27, 'M', 11, 'Estudiante de la facultad de ingeniería', '2022-01-03 10:56:49', '2022-01-03 10:56:49'),
(10, '300', 'Elías Salvador Flores Reyes', 5, 'M', 11, 'Jardín de niños', '2022-01-03 10:57:54', '2022-01-03 10:57:54'),
(11, '400', 'Ashley Guadalupe Flores Reyes', 6, 'F', 11, 'Estudiante de primer año', '2022-01-03 10:58:36', '2022-01-03 10:58:36'),
(12, '500', 'Cataleya Sarayu Flores Fuentes', 7, 'F', 11, 'Estudiante de segundo año', '2022-01-03 10:59:16', '2022-01-03 10:59:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `grd_grados`
--

CREATE TABLE `grd_grados` (
  `grd_id` bigint(20) UNSIGNED NOT NULL,
  `grd_nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `grd_grados`
--

INSERT INTO `grd_grados` (`grd_id`, `grd_nombre`, `created_at`, `updated_at`) VALUES
(1, 'Primero', NULL, NULL),
(2, 'Segundo', '2022-01-04 01:30:02', '2022-01-04 01:30:02'),
(3, 'Tercero', '2022-01-04 01:30:02', '2022-01-04 01:30:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mat_materias`
--

CREATE TABLE `mat_materias` (
  `mat_id` bigint(20) UNSIGNED NOT NULL,
  `mat_nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'NOMBRE DE LA MATERIA',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `mat_materias`
--

INSERT INTO `mat_materias` (`mat_id`, `mat_nombre`, `created_at`, `updated_at`) VALUES
(1, 'Matematica', '2022-01-04 01:30:45', '2022-01-04 01:30:45'),
(2, 'Lenguaje', '2022-01-04 01:30:45', '2022-01-04 01:30:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_31_213132_create_registros_table', 1),
(6, '2021_12_31_214427_create_alm_alumnos_table', 2),
(8, '2021_12_31_221640_create_grd_grados_table', 3),
(9, '2021_12_31_222345_create_alm_estudiantes_table', 4),
(10, '2021_12_31_224024_create_mat_materias_table', 5),
(11, '2021_12_31_224318_create_mxg_materiasxgrados_table', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mxg_materiasxgrados`
--

CREATE TABLE `mxg_materiasxgrados` (
  `mxg_id` bigint(20) UNSIGNED NOT NULL,
  `mxg_id_grd` int(11) NOT NULL DEFAULT 11 COMMENT 'ID DE LA TABLA DE GRADOS',
  `mxg_id_mat` int(11) NOT NULL DEFAULT 11 COMMENT 'ID DE LA TABLA DE MATERIAS',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alm_estudiantes`
--
ALTER TABLE `alm_estudiantes`
  ADD PRIMARY KEY (`alm_id`),
  ADD UNIQUE KEY `alm_estudiantes_alm_codigo_unique` (`alm_codigo`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `grd_grados`
--
ALTER TABLE `grd_grados`
  ADD PRIMARY KEY (`grd_id`);

--
-- Indices de la tabla `mat_materias`
--
ALTER TABLE `mat_materias`
  ADD PRIMARY KEY (`mat_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mxg_materiasxgrados`
--
ALTER TABLE `mxg_materiasxgrados`
  ADD PRIMARY KEY (`mxg_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alm_estudiantes`
--
ALTER TABLE `alm_estudiantes`
  MODIFY `alm_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `grd_grados`
--
ALTER TABLE `grd_grados`
  MODIFY `grd_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `mat_materias`
--
ALTER TABLE `mat_materias`
  MODIFY `mat_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `mxg_materiasxgrados`
--
ALTER TABLE `mxg_materiasxgrados`
  MODIFY `mxg_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
