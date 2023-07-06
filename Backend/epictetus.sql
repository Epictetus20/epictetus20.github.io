-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Εξυπηρετητής: 127.0.0.1
-- Χρόνος δημιουργίας: 06 Ιουλ 2023 στις 18:41:14
-- Έκδοση διακομιστή: 10.4.28-MariaDB
-- Έκδοση PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `epictetus`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `ergastirio`
--

CREATE TABLE `ergastirio` (
  `id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `resp_prof` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `erg_items`
--

CREATE TABLE `erg_items` (
  `erg_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `foititis`
--

CREATE TABLE `foititis` (
  `id` int(10) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `am` varchar(8) NOT NULL,
  `email` varchar(40) NOT NULL,
  `news` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `teacher`
--

CREATE TABLE `teacher` (
  `id` int(10) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(15) NOT NULL,
  `am` varchar(10) NOT NULL,
  `email` varchar(40) NOT NULL,
  `news` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `ergastirio`
--
ALTER TABLE `ergastirio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resp_prof` (`resp_prof`);

--
-- Ευρετήρια για πίνακα `erg_items`
--
ALTER TABLE `erg_items`
  ADD KEY `erg_id` (`erg_id`);

--
-- Ευρετήρια για πίνακα `foititis`
--
ALTER TABLE `foititis`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `ergastirio`
--
ALTER TABLE `ergastirio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT για πίνακα `foititis`
--
ALTER TABLE `foititis`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT για πίνακα `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- Περιορισμοί για άχρηστους πίνακες
--

--
-- Περιορισμοί για πίνακα `ergastirio`
--
ALTER TABLE `ergastirio`
  ADD CONSTRAINT `ergastirio_ibfk_1` FOREIGN KEY (`resp_prof`) REFERENCES `teacher` (`id`) ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `erg_items`
--
ALTER TABLE `erg_items`
  ADD CONSTRAINT `erg_items_ibfk_1` FOREIGN KEY (`erg_id`) REFERENCES `ergastirio` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
