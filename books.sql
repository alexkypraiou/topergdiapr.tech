-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Εξυπηρετητής: localhost
-- Χρόνος δημιουργίας: 07 Νοε 2024 στις 23:52:53
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
-- Βάση δεδομένων: `library`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `available_copies` int(11) DEFAULT 0,
  `image_url` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `category`, `available_copies`, `image_url`, `description`) VALUES
(1, 'Το Δέντρο με τα Ρόδα', 'Γιάννης Παπαδόπουλος', 'Φαντασία', 10, 'images/book1.jpg', 'Ένα συναρπαστικό παραμύθι που εξερευνά τη δύναμη της φύσης και των ανθρώπινων συναισθημάτων.'),
(2, 'Μυστήριο στον Αέρα', 'Ελένη Κωνσταντίνου', 'Θρίλερ', 5, 'images/book2.jpg', 'Ένα καθηλωτικό θρίλερ που διαδραματίζεται σε έναν απομακρυσμένο αεροδιάδρομο, με πολλούς απρόσμενους χαρακτήρες και ανατροπές.'),
(3, 'Τεχνολογία στην Πράξη', 'Μιχάλης Ιωάννου', 'Τεχνολογία', 8, 'images/book3.jpg', 'Μια βαθιά ανάλυση των τελευταίων εξελίξεων στην τεχνολογία και των εφαρμογών τους στη σύγχρονη κοινωνία.');

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
