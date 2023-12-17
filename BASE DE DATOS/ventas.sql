-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-12-2023 a las 22:22:19
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'BEBIDAS', '2023-12-17 20:46:19', '2023-12-17 20:46:19'),
(2, 'DULCES', '2023-12-17 20:46:31', '2023-12-17 20:46:31'),
(3, 'SALADOS', '2023-12-17 20:46:39', '2023-12-17 20:46:39'),
(4, 'ABARROTES', '2023-12-17 20:47:02', '2023-12-17 20:47:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `telefono`, `direccion`, `created_at`, `updated_at`) VALUES
(1, 'Sandra Chambilla', '964154497', 'Paucarpata', '2023-12-17 20:43:54', '2023-12-17 20:43:54'),
(2, 'Zenaida Pari', '95639723', 'Socabaya', '2023-12-17 20:44:19', '2023-12-17 20:44:19'),
(3, 'Josue Lipa', '93637732', 'Miraflores', '2023-12-17 20:44:40', '2023-12-17 20:44:40'),
(4, 'Panchito Perez', '92647334', 'Yanahuara', '2023-12-17 20:45:07', '2023-12-17 20:45:07'),
(5, 'Zulema Castro', '94536453', 'Cayma', '2023-12-17 20:45:53', '2023-12-17 20:45:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compania`
--

CREATE TABLE `compania` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `compania`
--

INSERT INTO `compania` (`id`, `nombre`, `correo`, `telefono`, `direccion`, `created_at`, `updated_at`) VALUES
(1, 'VENTAS-PROY_FINAL', 'loschoclitos3@gmail.com', '964154497', 'Perú', '2023-12-17 19:42:22', '2023-12-17 21:16:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleventa`
--

CREATE TABLE `detalleventa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `id_producto` bigint(20) UNSIGNED NOT NULL,
  `id_venta` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `detalleventa`
--

INSERT INTO `detalleventa` (`id`, `precio`, `cantidad`, `id_producto`, `id_venta`, `created_at`, `updated_at`) VALUES
(1, 2.50, 4, 1, 1, '2023-12-17 21:15:24', '2023-12-17 21:15:24'),
(2, 9.80, 1, 6, 1, '2023-12-17 21:15:24', '2023-12-17 21:15:24'),
(3, 20.50, 2, 3, 1, '2023-12-17 21:15:24', '2023-12-17 21:15:24'),
(4, 2.10, 6, 8, 1, '2023-12-17 21:15:24', '2023-12-17 21:15:24'),
(5, 3.50, 3, 9, 1, '2023-12-17 21:15:24', '2023-12-17 21:15:24'),
(6, 23.70, 2, 12, 1, '2023-12-17 21:15:24', '2023-12-17 21:15:24'),
(7, 2.00, 6, 2, 1, '2023-12-17 21:15:24', '2023-12-17 21:15:24'),
(8, 4.30, 3, 14, 1, '2023-12-17 21:15:24', '2023-12-17 21:15:24'),
(9, 17.30, 6, 13, 1, '2023-12-17 21:15:24', '2023-12-17 21:15:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_17_161956_create_categoria_table', 1),
(6, '2023_11_17_161956_create_cliente_table', 1),
(7, '2023_11_17_161956_create_compania_table', 1),
(8, '2023_11_17_161959_create_productos_table', 1),
(9, '2023_11_17_161959_create_venta_table', 1),
(10, '2023_11_22_161959_create_detalleventa_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `producto` varchar(255) NOT NULL,
  `precio_compra` decimal(10,2) NOT NULL,
  `precio_venta` decimal(10,2) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `id_categoria` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `codigo`, `producto`, `precio_compra`, `precio_venta`, `foto`, `id_categoria`, `created_at`, `updated_at`) VALUES
(1, '001', 'Coca-Cola 500ml', 1.70, 2.50, 'uploads/2ANO4OE4mjo2uGfrFNRf4ImP1dRnwMTIpLaOKTbU.jpg', 1, '2023-12-17 20:49:22', '2023-12-17 20:50:01'),
(2, '002', 'Sprite 500ml', 1.50, 2.00, 'uploads/JJRN4QQjdXhocRmpqIP7ybTZ4IVuOpMt7Mkqfybj.png', 1, '2023-12-17 21:01:05', '2023-12-17 21:01:05'),
(3, '003', 'Pack Coca- Cola & Frugos 3L', 12.40, 20.50, 'uploads/vtE5gbEcEdliETcO9e1XmQ9HrEGC4gl1PVDbtbxt.png', 1, '2023-12-17 21:01:59', '2023-12-17 21:01:59'),
(4, '004', 'Inka Cola 3L', 7.40, 10.30, 'uploads/8OVCQOpZgN0syE17ljIHjajURLpmZSAo2muUt0pJ.jpg', 1, '2023-12-17 21:02:44', '2023-12-17 21:02:44'),
(5, '005', 'Arroz Costeño 5kg', 8.50, 11.70, 'uploads/8y8BjirFISnCbguyTc88TGNsghGbPHSGL1DajW4b.webp', 4, '2023-12-17 21:03:44', '2023-12-17 21:03:44'),
(6, '006', 'Aceite Primor 900ml', 7.20, 9.80, 'uploads/mSqGK2zrbhRMyzlySHNUXe76zdsZ91gPVZPginKm.webp', 4, '2023-12-17 21:04:29', '2023-12-17 21:04:29'),
(7, '007', 'Gelatina Universal', 0.90, 2.10, 'uploads/NlK4l8aYvFYPo32GY58I6A6a6orsyeRrrAjMjKa0.jpg', 4, '2023-12-17 21:05:03', '2023-12-17 21:05:03'),
(8, '008', 'Papas Lays Clasicas', 1.00, 2.10, 'uploads/PG0VEQYTZYGJd8mhxANGaaofKiHklXO5vcmawDnz.webp', 3, '2023-12-17 21:05:39', '2023-12-17 21:05:39'),
(9, '009', 'Lays Flaming Hot', 1.70, 3.50, 'uploads/MenOkph5bF3s0GjiWTQBlD2y0wbHYRtG8VGxWMLG.webp', 3, '2023-12-17 21:06:44', '2023-12-17 21:06:44'),
(10, '010', 'Lays Picante', 1.00, 2.30, 'uploads/Sle6FMuaUD7mBzfrMSWfnGpYQwbpS8RChbB4Wgjf.webp', 3, '2023-12-17 21:07:24', '2023-12-17 21:07:24'),
(11, '011', 'Chisito pequeño', 0.70, 1.30, 'uploads/xhyDzOZLwc4RY1hcJBJCOwVoX9dJDkieClbpXjVj.webp', 3, '2023-12-17 21:08:00', '2023-12-17 21:08:00'),
(12, '012', 'Bombones SUBLIME', 12.40, 23.70, 'uploads/cLL9fFy079Re63MSEacowal6lRNCAK1p2iKzUvq1.webp', 2, '2023-12-17 21:08:45', '2023-12-17 21:08:45'),
(13, '013', 'Caja galletas OREO', 9.80, 17.30, 'uploads/Hiaze8TekyNxnPl9mcyLu4n3Qsx3hDZQw7bOcktA.webp', 2, '2023-12-17 21:09:50', '2023-12-17 21:09:50'),
(14, '014', 'Galletas CASINO BLACK', 1.30, 4.30, 'uploads/sitQdTfRARYmGfofyihLtnF2J1Mt2P9vNejxGAZ2.jpg', 2, '2023-12-17 21:10:33', '2023-12-17 21:12:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Sandra Ch', 'sandrachambilla69@gmail.com', NULL, '$2y$12$TGkKEZpmmJH1d.gbnT/f0ee6rtv2ynCAQKSommRKReb.AUfHffafC', 'ULot9eVJEgqP2DsGza74RpPCIgTVEIITg3E7oJLmsP3lNvH8vGEidOhoSXO7', '2023-12-17 19:53:21', '2023-12-17 19:53:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `id_cliente` bigint(20) UNSIGNED NOT NULL,
  `id_usuario` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `total`, `id_cliente`, `id_usuario`, `created_at`, `updated_at`) VALUES
(1, 260.00, 1, 2, '2023-12-17 21:15:24', '2023-12-17 21:15:24');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compania`
--
ALTER TABLE `compania`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detalleventa_id_venta_foreign` (`id_venta`),
  ADD KEY `detalleventa_id_producto_foreign` (`id_producto`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_id_categoria_foreign` (`id_categoria`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ventas_id_cliente_foreign` (`id_cliente`),
  ADD KEY `ventas_id_usuario_foreign` (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `compania`
--
ALTER TABLE `compania`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD CONSTRAINT `detalleventa_id_producto_foreign` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalleventa_id_venta_foreign` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_id_categoria_foreign` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_id_cliente_foreign` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ventas_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
