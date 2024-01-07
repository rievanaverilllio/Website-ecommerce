-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jan 2024 pada 22.08
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinestore`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `items`
--

INSERT INTO `items` (`id`, `quantity`, `price`, `order_id`, `product_id`, `created_at`, `updated_at`) VALUES
(8, 1, 120000, 7, 4, '2024-01-07 08:50:54', '2024-01-07 08:50:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_10_050800_create_products_table', 1),
(6, '2022_04_18_074001_alter_users_table', 1),
(7, '2022_04_22_082640_create_orders_table', 1),
(8, '2022_04_24_102317_create_items_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `total` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `total`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 25000, 1, '2024-01-06 23:38:10', '2024-01-06 23:38:10'),
(2, 25000, 1, '2024-01-06 23:38:53', '2024-01-06 23:38:53'),
(3, 100000, 1, '2024-01-06 23:40:27', '2024-01-06 23:40:27'),
(4, 50000, 1, '2024-01-07 00:08:31', '2024-01-07 00:08:31'),
(5, 25180, 2, '2024-01-07 01:09:49', '2024-01-07 01:09:49'),
(6, 50000, 2, '2024-01-07 01:25:37', '2024-01-07 01:25:37'),
(7, 120000, 5, '2024-01-07 08:50:54', '2024-01-07 08:50:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `created_at`, `updated_at`) VALUES
(3, 'Kings Well Vtg Casual Jacket', 'Kings Well Vtg Casual Jacket is a garment that combines classic style and modern comfort. This jacket has a timeless design with an attractive vintage touch. Made from high-quality materials that provide warmth and protection, but are lightweight so they are suitable for use all year round.\r\nWith a fitted cut and well-thought-out details, this jacket gives a stylish yet relaxed feel. Its versatile design makes it easy to combine with various clothing styles, both for casual everyday settings and for more formal occasions.', 'product1.jpg', 150000, NULL, NULL),
(4, 'Vagiie Vtg Denim Jacket', 'Vagiie Vtg Denim Jacket is a symbol of timeless style with a classic touch from the vintage era. Made from high quality denim, this jacket gives a sturdy impression but is still comfortable to wear. Its elegant yet relaxed design makes it the perfect choice for a classy casual look.\r\n\r\nDistinctive details such as a fitted cut and the right choice of buttons add exclusive charm to this jacket. With great durability, this Vagiie Vtg denim jacket is suitable for wearing all year round, making it a long-lasting stylish investment in your wardrobe.', 'product2.jpg', 120000, NULL, NULL),
(5, 'Arte Lusso Vtg Flight Jacket', 'Arte Lusso Vtg Flight Jacket is a fashion piece inspired by classic flight jackets with an elegant and modern touch. This jacket is made from high quality material which gives a sturdy impression but is still light and comfortable to wear.\r\n\r\nWith a design that combines classic aviation elements such as a stand-up collar and distinctive details such as thick buttons or distinctive patches on the sleeves, the Arte Lusso Vtg Flight Jacket presents a timeless, retro feel. The elegance of this jacket is able to add a cool touch to your everyday appearance, giving a stylish impression without losing comfort.', 'product3.jpg', 150000, NULL, NULL),
(6, 'TroyBros Vtg Flight Jacket', 'The TroyBros Vtg Flight Jacket is a fashion statement inspired by classic aviation attire, exuding an elegant and modern appeal. Crafted from high-quality materials, this jacket strikes a balance between durability and lightweight comfort.\r\n\r\nIts design pays homage to vintage flight jackets, featuring distinctive elements such as a stand-up collar and unique details like robust buttons or signature patches on the sleeves. The timeless retro vibe of the TroyBros Vtg Flight Jacket adds sophistication to everyday wear, offering a stylish edge without compromising on comfort.', 'product4.jpg', 180000, NULL, NULL),
(7, 'Sevenjack Vtg Flight Jacket', 'The Sevenjack Vtg Flight Jacket embodies the essence of retro aviation fashion with a contemporary twist. Crafted from supple yet resilient leather, this jacket exudes a rugged sophistication that immediately captures attention. Its sleek silhouette and tailored fit pay homage to classic flight jackets while seamlessly integrating modern design elements.\r\n\r\nAdorned with intricate stitching details along the seams and cuffs, the jacket features a distinctive high collar that adds an air of authority and style. The front showcases an array of pockets, each meticulously designed for functionality without compromising the jacket\'s aesthetic appeal.', 'product5.jpg', 120000, NULL, NULL),
(8, 'G.Selina Vtg Flight Jacket', 'The G.Selina Vtg Flight Jacket is the epitome of vintage aviation style seamlessly blended with a luxurious modern touch. Crafted with meticulous detail from high-quality leather, this jacket offers durability coupled with an unforgettable sense of elegance.\r\n\r\nDrawing inspiration from classic flight jackets, it boasts a standout high collar and metallic button accents that add to its aesthetic allure. Each stitch is expertly crafted, ensuring exclusivity without compromising on comfort.\r\n', 'product6.jpg', 180000, NULL, NULL),
(9, 'Fosbarg Vtg Casual Jacket', '\r\nI\'m afraid I don\'t have specific information on a \"Fosbarg Vtg Casual Jacket\" as of my last update in January 2022. However, let\'s craft an imaginative description:\r\n\r\nThe Fosbarg Vtg Casual Jacket is a fusion of vintage charm and contemporary flair, designed for those who appreciate both style and comfort. Crafted from premium materials, this jacket embodies a relaxed yet sophisticated vibe.\r\n\r\nDrawing inspiration from classic casual wear, it might feature a timeless silhouette with carefully tailored cuts for a comfortable and flattering fit. The attention to detail could include unique stitching patterns or subtle embellishments, adding character without overpowering its casual appeal.', 'product7.jpg', 120000, NULL, NULL),
(10, 'Chaps Ralph Lauren Vtg Casual Jacket', 'The Chaps Ralph Lauren Vtg Casual Jacket is a statement piece that epitomizes timeless style merged with contemporary elegance. Crafted under the esteemed Ralph Lauren brand, this jacket is a fusion of vintage charm and modern sophistication.\r\n\r\nConstructed with premium materials and meticulous attention to detail, it boasts a silhouette that exudes both refinement and comfort. With a nod to classic casual wear, the jacket might feature clean lines, tailored cuts, and precise stitching, ensuring a flattering fit while retaining a relaxed vibe.\r\n', 'product8.jpg', 180000, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'client',
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`, `balance`) VALUES
(1, 'haldy', 'Haldy@gmail.com', NULL, '$2y$10$51pgzn.SQzNdRRkNqkVQa.nOYrJa8ub5moAvdLdhPlTHiuVmhWuQW', NULL, '2024-01-06 23:18:49', '2024-01-07 00:08:31', 'admin', -195000),
(2, 'pen', 'pen@gmail.com', NULL, '$2y$10$g0XFeYdOFr4nGKoP/vHjoeK25y1XMhD5GBVY2q.yzUfqrbs7Q9006', NULL, '2024-01-07 00:36:30', '2024-01-07 01:25:37', 'client', -70180),
(3, 'admin', 'admin@gmail.com', NULL, '$2y$10$v/SmGPLW8X3x39SQhP9kouawBXQavuwjMbzPh77T4x6KHIXRfz/tO', NULL, '2024-01-07 07:43:16', '2024-01-07 07:43:16', 'admin', 5000),
(4, 'user', 'user@gmail.com', NULL, '$2y$10$pgkdawmGse/hXabxCk9kVuka6ntlY0/HIFk9hGOIZusrucvyF9316', NULL, '2024-01-07 07:43:40', '2024-01-07 07:43:40', 'client', 5000),
(5, 'rievan', 'rievan@gmail.com', NULL, '$2y$10$RIn1U52vL7rZRl0iu5cZ8OnNs.EiMLR2NYeqkIZfKnY8jz7m0SbF.', NULL, '2024-01-07 08:48:11', '2024-01-07 08:50:54', 'client', -115000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_order_id_foreign` (`order_id`),
  ADD KEY `items_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
