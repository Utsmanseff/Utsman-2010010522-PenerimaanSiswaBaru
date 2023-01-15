-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jan 2023 pada 19.06
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pdsiswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `NISN` bigint(20) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `NIK` bigint(20) NOT NULL,
  `TTL` varchar(255) NOT NULL,
  `Jurusan` enum('IPA','IPS','PAI') NOT NULL,
  `J_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `Agama` varchar(255) NOT NULL,
  `S_asal` varchar(255) NOT NULL,
  `No_hp` bigint(20) NOT NULL,
  `Alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`NISN`, `Nama`, `NIK`, `TTL`, `Jurusan`, `J_kelamin`, `Agama`, `S_asal`, `No_hp`, `Alamat`) VALUES
(854984027, 'Utsman', 6310042708020002, 'Sumedang, 27 Agustus 2002', 'IPS', 'Laki-laki', 'Islam', 'SMPN 1', 82148073428, 'Banjarbaru'),
(987656785, 'Indra', 65412654189654, 'Makassar, 30 Desember 2001', 'IPA', 'Laki-laki', 'islam', 'MTS Al-kautsar', 84569846541, 'KotaBaru');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`NISN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
