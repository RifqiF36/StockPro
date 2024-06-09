-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jun 2024 pada 13.58
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
-- Database: `ventari`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `iduser` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `passwordakun` varchar(50) NOT NULL,
  `level` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`iduser`, `username`, `email`, `passwordakun`, `level`) VALUES
(1, 'admin', 'admin@gmail.com', '12345', 'admin'),
(8, 'staf', 'staf@gmail.com', '12345', 'staf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `idbarang` int(11) NOT NULL,
  `idjenis` int(11) NOT NULL,
  `idmerek` int(11) NOT NULL,
  `jenisbarang` varchar(25) NOT NULL,
  `merekbarang` varchar(25) NOT NULL,
  `namabarang` varchar(25) NOT NULL,
  `keteranganbarang` varchar(50) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`idbarang`, `idjenis`, `idmerek`, `jenisbarang`, `merekbarang`, `namabarang`, `keteranganbarang`, `stok`) VALUES
(12, 7, 12, 'Bahan Bangunan', 'Semen Holcim ', 'Semen Holcim Premium', 'Mohon disimpan di ruang A10', 10),
(15, 7, 11, 'Bahan Bangunan', 'Semen Gresik ', 'Semen Gresik Premium', 'Mohon disimpan di ruang A10', 20),
(16, 7, 17, 'Bahan Bangunan', 'Semen Padang ', 'Semen Padang Premium', 'Mohon disimpan di ruang A10', 15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis`
--

CREATE TABLE `jenis` (
  `idjenis` int(11) NOT NULL,
  `namajenis` varchar(25) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jenis`
--

INSERT INTO `jenis` (`idjenis`, `namajenis`, `keterangan`) VALUES
(4, 'Elektronik', 'Handphone'),
(7, 'Bahan Bangunan', 'Bahan Pembangunan Proyek'),
(9, 'Perabotan Ruang Makan', 'Perabotan Rumah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keluar`
--

CREATE TABLE `keluar` (
  `idkeluar` int(11) NOT NULL,
  `idjenis` int(11) NOT NULL,
  `idmerek` int(11) NOT NULL,
  `idbarang` int(11) NOT NULL,
  `jeniskeluar` varchar(25) NOT NULL,
  `merekkeluar` varchar(25) NOT NULL,
  `barangkeluar` varchar(25) NOT NULL,
  `keterangankeluar` varchar(59) NOT NULL,
  `tanggalkeluar` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `jumlahkeluar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `keluar`
--

INSERT INTO `keluar` (`idkeluar`, `idjenis`, `idmerek`, `idbarang`, `jeniskeluar`, `merekkeluar`, `barangkeluar`, `keterangankeluar`, `tanggalkeluar`, `jumlahkeluar`) VALUES
(3, 7, 12, 12, 'Bahan Bangunan', 'Semen Holcim', 'Semen Holcim Premium', 'Agung Jaya', '2024-06-08 02:10:43', 5),
(4, 7, 12, 12, 'Bahan Bangunan', 'Semen Holcim', 'Semen Holcim Premium', 'Agung Jaya', '2024-06-08 02:11:15', 5),
(5, 7, 12, 12, 'Bahan Bangunan', 'Semen Holcim', 'Semen Holcim Premium', 'Agung Jaya', '2024-06-08 02:16:04', 10),
(6, 7, 12, 12, 'Bahan Bangunan', 'Semen Holcim', 'Semen Holcim Premium', 'Agung Jaya', '2024-06-08 02:20:30', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `masuk`
--

CREATE TABLE `masuk` (
  `idmasuk` int(11) NOT NULL,
  `idjenis` int(11) NOT NULL,
  `idmerek` int(11) NOT NULL,
  `idbarang` int(11) NOT NULL,
  `jenismasuk` varchar(25) NOT NULL,
  `merekmasuk` varchar(25) NOT NULL,
  `barangmasuk` varchar(25) NOT NULL,
  `keteranganmasuk` varchar(50) NOT NULL,
  `tanggalmasuk` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `jumlahmasuk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `masuk`
--

INSERT INTO `masuk` (`idmasuk`, `idjenis`, `idmerek`, `idbarang`, `jenismasuk`, `merekmasuk`, `barangmasuk`, `keteranganmasuk`, `tanggalmasuk`, `jumlahmasuk`) VALUES
(1, 7, 12, 12, 'Bahan Bangunan', 'Semen Holcim', 'Semen Holcim Premium', 'Agung Jaya', '2024-06-06 01:46:58', 5),
(5, 7, 12, 9, 'Bahan Bangunan', 'Semen Holcim', '', 'Agung Jaya', '2024-06-08 02:14:52', 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `merek`
--

CREATE TABLE `merek` (
  `idmerek` int(11) NOT NULL,
  `idjenis` int(11) NOT NULL,
  `namamerek` varchar(25) NOT NULL,
  `keteranganmerek` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `merek`
--

INSERT INTO `merek` (`idmerek`, `idjenis`, `namamerek`, `keteranganmerek`) VALUES
(11, 7, 'Semen Gresik', 'Material Semen'),
(12, 7, 'Semen Holcim', 'Material Semen'),
(14, 7, 'Semen Tiga Roda', 'Material Semen'),
(17, 7, 'Semen Padang', 'Material Semen');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock`
--

CREATE TABLE `stock` (
  `idbarang` int(11) NOT NULL,
  `idjenis` int(11) NOT NULL,
  `idmerek` int(11) NOT NULL,
  `namabarang` varchar(25) NOT NULL,
  `keteranganbarang` varchar(50) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`iduser`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`idbarang`);

--
-- Indeks untuk tabel `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`idjenis`);

--
-- Indeks untuk tabel `keluar`
--
ALTER TABLE `keluar`
  ADD PRIMARY KEY (`idkeluar`);

--
-- Indeks untuk tabel `masuk`
--
ALTER TABLE `masuk`
  ADD PRIMARY KEY (`idmasuk`);

--
-- Indeks untuk tabel `merek`
--
ALTER TABLE `merek`
  ADD PRIMARY KEY (`idmerek`);

--
-- Indeks untuk tabel `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`idbarang`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akun`
--
ALTER TABLE `akun`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `idbarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `jenis`
--
ALTER TABLE `jenis`
  MODIFY `idjenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `keluar`
--
ALTER TABLE `keluar`
  MODIFY `idkeluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `masuk`
--
ALTER TABLE `masuk`
  MODIFY `idmasuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `merek`
--
ALTER TABLE `merek`
  MODIFY `idmerek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `stock`
--
ALTER TABLE `stock`
  MODIFY `idbarang` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
