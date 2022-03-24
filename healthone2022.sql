-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 24 mrt 2022 om 14:54
-- Serverversie: 10.4.21-MariaDB
-- PHP-versie: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthone2022`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220209101555', '2022-02-25 09:47:04', 65),
('DoctrineMigrations\\Version20220209114632', '2022-02-25 09:47:04', 55),
('DoctrineMigrations\\Version20220211084532', '2022-02-25 09:47:04', 28),
('DoctrineMigrations\\Version20220211084652', '2022-02-25 09:47:04', 45),
('DoctrineMigrations\\Version20220211085102', '2022-02-25 09:47:05', 54),
('DoctrineMigrations\\Version20220225085156', '2022-02-25 09:52:00', 125);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `stars` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `first_name`, `last_name`, `password`) VALUES
(21, 'user0@healthone.com', '[\"ROLE_MEMBER\"]', 'Eliza', 'Leuschke', '$argon2id$v=19$m=65536,t=4,p=1$bVVMYWYyVEhubDJoVkEudQ$3cmt7J3PAeoewiKlhjxipxPrtLqFHgzTTyBIzjbXShU'),
(22, 'user1@healthone.com', '[\"ROLE_MEMBER\"]', 'Elsa', 'Greenfelder', '$argon2id$v=19$m=65536,t=4,p=1$Q09VempSc0I4TnhYamszSQ$1PbvEtTN0WB7fRLGwxgY12b/jbPhsZhJvZ7ly2Ig7Tc'),
(23, 'user2@healthone.com', '[\"ROLE_MEMBER\"]', 'Glennie', 'Cruickshank', '$argon2id$v=19$m=65536,t=4,p=1$MGJCc1R0OGNUaXgubTRpaQ$CvICW17A5DwDPNzizNEjOobhipC8v9axlaDu4z3rcQo'),
(24, 'user3@healthone.com', '[\"ROLE_MEMBER\"]', 'Shane', 'Ledner', '$argon2id$v=19$m=65536,t=4,p=1$MFI2TTd4SHRhUllwLzJ3Mw$wL2ZewRFbHFtv+DZ6EFGZHF+AiPW9QrcGnocx6+2kN8'),
(25, 'user4@healthone.com', '[\"ROLE_MEMBER\"]', 'Rashad', 'Williamson', '$argon2id$v=19$m=65536,t=4,p=1$Wkttd3F3VWpGVU9hamxyUA$/fFNUuvLoSn7IUoUv6SkBQcmTi3FVTe97Pw8KofzpQg'),
(26, 'user5@healthone.com', '[\"ROLE_MEMBER\"]', 'Watson', 'Gislason', '$argon2id$v=19$m=65536,t=4,p=1$U3ZGQWZmSVJSck1aVUIyeQ$M4uYScnd4Pe9aQGkidabuq7kBopiO74wX1RrQo5bA04'),
(27, 'user6@healthone.com', '[\"ROLE_MEMBER\"]', 'Gardner', 'Rowe', '$argon2id$v=19$m=65536,t=4,p=1$cXBxN2l1VjBTeDluTlB3aw$2Zw+nzXj5oDgP4qXWwB7bMHSzsMpth7WwSsexCIwr2U'),
(28, 'user7@healthone.com', '[\"ROLE_MEMBER\"]', 'Lennie', 'Weimann', '$argon2id$v=19$m=65536,t=4,p=1$eVlVdHI4RHRXMkdtbWlBZg$khkAYKezVUoeQDeabNcyZuaOxzfMN3504KjoBJ+RTa8'),
(29, 'user8@healthone.com', '[\"ROLE_MEMBER\"]', 'Jennyfer', 'Baumbach', '$argon2id$v=19$m=65536,t=4,p=1$ZDlVejF6Y1ZvMFRBeXcxSA$X67pTjTlJhNPxvfBXxkNaOZ3uLuzb9Q6V7OXJaTapkA'),
(30, 'user9@healthone.com', '[\"ROLE_MEMBER\"]', 'Yazmin', 'Lehner', '$argon2id$v=19$m=65536,t=4,p=1$bjdoNHEzTUxSVnhNUEszQg$SBRoEhBR7kHmzM2WNM38ngaVC1tVn6eE03wvHIMREyw'),
(31, 'admin@gmail.com', '[\"ROLE_MEMBER\"]', 'admin', 'admin', 'admin'),
(32, 'test@test.com', '[]', 'test', 'test', '$argon2id$v=19$m=65536,t=4,p=1$QWRPRHVCLnB5eGVaNWZSNg$pYUFsQgXe+U+2hbuE1vvOVqwzRAsbqNwmWxvK8adp4s'),
(33, 'test1@test.com', '[\"ROLE_MEMBER\"]', 'test1', 'test1', '$argon2id$v=19$m=65536,t=4,p=1$aGZzMW5VeDcwOHMyMExLcg$+EOaTm3D6SJqqDdfjWlAwHiiGIWBnsbx+7/Qaj1h0CQ'),
(34, 'test2@test.com', '[\"ROLE_MEMBER\"]', 'test2', 'test2', '$argon2id$v=19$m=65536,t=4,p=1$Y0FheVkwdjVFa2pLZ3k5Yw$ZYy/mBjFDlQIri6zO3H0gIJRGg+lRQCPKfm0b6g2hao');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexen voor tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D34A04AD12469DE2` (`category_id`);

--
-- Indexen voor tabel `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_794381C64584665A` (`product_id`),
  ADD KEY `IDX_794381C6A76ED395` (`user_id`);

--
-- Indexen voor tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT voor een tabel `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04AD12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Beperkingen voor tabel `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `FK_794381C64584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FK_794381C6A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
