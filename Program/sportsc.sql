-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jun 2022 pada 17.29
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sportsc`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun_atlet`
--

CREATE TABLE `akun_atlet` (
  `id_atlet` int(11) NOT NULL,
  `nama_atlet` varchar(30) NOT NULL,
  `alamat_atlet` varchar(50) NOT NULL,
  `notelp_atlet` varchar(12) NOT NULL,
  `username_atlet` varchar(30) NOT NULL,
  `password_atlet` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `akun_atlet`
--

INSERT INTO `akun_atlet` (`id_atlet`, `nama_atlet`, `alamat_atlet`, `notelp_atlet`, `username_atlet`, `password_atlet`) VALUES
(1, 'Atlet Taekwondo', 'Sidoarjo', '08111111111', 'atlet', '123'),
(2, 'Dyiono', 'Pekalongan', '081111222', 'dyion', '123'),
(3, 'Tegar Alam', 'Sidoarjo', '089999', 'tegar', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun_pelatih`
--

CREATE TABLE `akun_pelatih` (
  `id_pelatih` int(10) NOT NULL,
  `nama_pelatih` varchar(30) NOT NULL,
  `alamat_pelatih` varchar(50) NOT NULL,
  `notelp_pelatih` varchar(12) NOT NULL,
  `username_pelatih` varchar(30) NOT NULL,
  `password_pelatih` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `akun_pelatih`
--

INSERT INTO `akun_pelatih` (`id_pelatih`, `nama_pelatih`, `alamat_pelatih`, `notelp_pelatih`, `username_pelatih`, `password_pelatih`) VALUES
(1, 'Pelatih Taekwondo', 'Majapahit', '08555555555', 'pelatih', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datalatihan_atlet`
--

CREATE TABLE `datalatihan_atlet` (
  `id_data` int(10) NOT NULL,
  `id_atlet` int(10) NOT NULL,
  `tanggal` date NOT NULL,
  `jml_tendangan` int(12) NOT NULL,
  `evaluasi` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `datalatihan_atlet`
--

INSERT INTO `datalatihan_atlet` (`id_data`, `id_atlet`, `tanggal`, `jml_tendangan`, `evaluasi`) VALUES
(1, 1, '2022-06-12', 21, 'Baru belajar sudah dapat 21 tendangan, lumayan'),
(2, 1, '2022-06-13', 25, 'Sip,, ada perkembangan sedikit'),
(3, 3, '2022-06-13', 54, 'Mantap tegar, tingkatkan terus!'),
(4, 3, '2022-06-14', 61, ''),
(5, 2, '2022-06-16', 46, 'Ayo dyion, seminggu lagi kamu ada lomba masa cuma dapat segitu?'),
(6, 2, '2022-06-17', 39, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_alat`
--

CREATE TABLE `tb_alat` (
  `id_alat` int(11) NOT NULL,
  `tendangan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun_atlet`
--
ALTER TABLE `akun_atlet`
  ADD PRIMARY KEY (`id_atlet`);

--
-- Indeks untuk tabel `akun_pelatih`
--
ALTER TABLE `akun_pelatih`
  ADD PRIMARY KEY (`id_pelatih`);

--
-- Indeks untuk tabel `datalatihan_atlet`
--
ALTER TABLE `datalatihan_atlet`
  ADD PRIMARY KEY (`id_data`),
  ADD KEY `id_atlet_2` (`id_atlet`);

--
-- Indeks untuk tabel `tb_alat`
--
ALTER TABLE `tb_alat`
  ADD PRIMARY KEY (`id_alat`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akun_atlet`
--
ALTER TABLE `akun_atlet`
  MODIFY `id_atlet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `akun_pelatih`
--
ALTER TABLE `akun_pelatih`
  MODIFY `id_pelatih` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `datalatihan_atlet`
--
ALTER TABLE `datalatihan_atlet`
  MODIFY `id_data` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_alat`
--
ALTER TABLE `tb_alat`
  MODIFY `id_alat` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `datalatihan_atlet`
--
ALTER TABLE `datalatihan_atlet`
  ADD CONSTRAINT `datalatihan_atlet_ibfk_1` FOREIGN KEY (`id_atlet`) REFERENCES `akun_atlet` (`id_atlet`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
