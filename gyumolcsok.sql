-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Nov 24. 18:58
-- Kiszolgáló verziója: 10.4.25-MariaDB
-- PHP verzió: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `piac`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `gyumolcsok`
--

CREATE TABLE `gyumolcsok` (
  `Id` int(5) NOT NULL,
  `nev` varchar(50) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `ar` int(7) NOT NULL,
  `minoseg` tinyint(3) NOT NULL,
  `kepUtvonala` varchar(100) COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `gyumolcsok`
--

INSERT INTO `gyumolcsok` (`Id`, `nev`, `ar`, `minoseg`, `kepUtvonala`) VALUES
(1, 'Piros alma', 650, 2, '/image/alma.jpg'),
(2, 'Zöld alma', 700, 2, '/image/ZoldAlma.jpg'),
(3, 'Vilmos körte', 1200, 3, '/image/VilmosKorte.jpg'),
(5, 'Szilva', 1000, 1, '/image/Szilva.jpg');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `gyumolcsok`
--
ALTER TABLE `gyumolcsok`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `nev` (`nev`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `gyumolcsok`
--
ALTER TABLE `gyumolcsok`
  MODIFY `Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
