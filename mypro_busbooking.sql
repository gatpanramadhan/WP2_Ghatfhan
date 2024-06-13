-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jun 2024 pada 17.04
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mypro_busbooking`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bms_location`
--

CREATE TABLE `bms_location` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bms_location`
--

INSERT INTO `bms_location` (`id`, `name`, `status`, `created_at`) VALUES
(8, 'Setu', 1, '2024-06-06 01:47:55'),
(10, 'Klaten', 1, '2024-06-06 01:48:27'),
(11, 'Bandung', 1, '2024-06-11 11:45:35'),
(12, 'Tambun', 1, '2024-06-11 11:45:59'),
(13, 'Lampung', 1, '2024-06-11 11:46:54'),
(14, 'Bogor', 1, '2024-06-12 13:35:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bus_admin`
--

CREATE TABLE `bus_admin` (
  `id` int(11) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bus_admin`
--

INSERT INTO `bus_admin` (`id`, `email`, `password`, `status`) VALUES
(1, 'admin@gmail.com', '123456', 1),
(2, 'gatpan@gmail.com', 'gatpanganteng', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bus_booking`
--

CREATE TABLE `bus_booking` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `numberofmember` varchar(200) DEFAULT NULL,
  `seat` int(11) DEFAULT NULL,
  `bus` varchar(200) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bus_booking`
--

INSERT INTO `bus_booking` (`id`, `name`, `mobile`, `numberofmember`, `seat`, `bus`, `status`, `create_at`) VALUES
(11, 'bagus', '34567', '1234567', 2, '6', 1, '2024-06-12 13:47:32'),
(12, 'rrrr', '5678', '8', 2, '5', 1, '2024-06-12 14:01:11'),
(13, 'agus', '98765', '1300', 5, '6', 1, '2024-06-12 14:30:34'),
(14, 'bagus', '34567', '1234567', 2, '6', 1, '2024-06-12 14:33:04'),
(15, 'agus', '98765', '1300', 4, '6', 1, '2024-06-12 14:33:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bus_schedule`
--

CREATE TABLE `bus_schedule` (
  `id` int(11) NOT NULL,
  `bus_number` varchar(200) DEFAULT NULL,
  `start` varchar(200) DEFAULT NULL,
  `end` varchar(200) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL,
  `amount` varchar(200) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bus_schedule`
--

INSERT INTO `bus_schedule` (`id`, `bus_number`, `start`, `end`, `date`, `amount`, `create_at`) VALUES
(5, 'Sabri Kencana 345', '8', '11', '2024-07-10', '500', '2024-06-12 13:33:24'),
(6, 'Kapin  Handoyo 404', '8', '10', '2024-07-09', '250', '2024-06-12 14:15:32'),
(11, 'Sinar Jaya 202', '8', '12', '2024-07-11', '50', '2024-06-12 13:33:04'),
(12, 'Harapan Jaya 303', '8', '13', '2024-07-12', '550', '2024-06-12 13:34:37'),
(13, 'Rosalia Indah 103', '8', '14', '2024-07-13', '350', '2024-06-12 13:36:12');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bms_location`
--
ALTER TABLE `bms_location`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bus_admin`
--
ALTER TABLE `bus_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bus_booking`
--
ALTER TABLE `bus_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bus_schedule`
--
ALTER TABLE `bus_schedule`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bms_location`
--
ALTER TABLE `bms_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `bus_admin`
--
ALTER TABLE `bus_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `bus_booking`
--
ALTER TABLE `bus_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `bus_schedule`
--
ALTER TABLE `bus_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
