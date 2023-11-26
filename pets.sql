-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 26 Kas 2023, 19:51:12
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `pets`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pet_list`
--

CREATE TABLE `pet_list` (
  `id` int(11) NOT NULL,
  `type` text NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `pet_list`
--

INSERT INTO `pet_list` (`id`, `type`, `name`, `description`, `age`) VALUES
(9, 'köpek', 'Paşa', 'Sakin, uysal ve çok tatlı', 1),
(10, 'kedi', 'Sadettin', 'Sakin, uysal ve çok tatlı', 1),
(11, 'kedi', 'Pamuk', 'Sakin, uysal ve çok tatlı', 1),
(12, 'kedi', 'Sadettin', 'Sakin, uysal ve çok tatlı', 1),
(13, 'kedi', 'Pamuk', 'Sakin, uysal ve çok tatlı', 1);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `pet_list`
--
ALTER TABLE `pet_list`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `pet_list`
--
ALTER TABLE `pet_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
