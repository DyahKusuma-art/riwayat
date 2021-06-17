-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jun 2021 pada 19.13
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `riwayat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(5) NOT NULL,
  `nama` text NOT NULL,
  `toko` text NOT NULL,
  `gambar` text NOT NULL,
  `jumlah` int(10) NOT NULL,
  `harga` int(20) NOT NULL,
  `total` int(10) NOT NULL,
  `t_pesan` varchar(500) NOT NULL,
  `variasi` varchar(500) NOT NULL,
  `ongkir` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `metode` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `nama`, `toko`, `gambar`, `jumlah`, `harga`, `total`, `t_pesan`, `variasi`, `ongkir`, `diskon`, `metode`) VALUES
(1, 'laptop Asus Rog', 'Sie laptop', 'https://media.pricebook.co.id/images/product/L/47170_L_1.jpg', 1, 10000000, 10100000, '1', 'Ram 16gb', 100000, 0, 'Bank BRI'),
(2, 'laptop kw', 'sie penipu', 'https://media.pricebook.co.id/images/product/L/47170_L_1.jpg', 1, 50000, 100000, '1', 'Mainan Ajah', 50000, 0, 'Bank BNI'),
(3, 'Laptop Murah', 'Bali Jaya', 'https://media.pricebook.co.id/images/product/L/47170_L_1.jpg', 1, 1000000, 1100000, '1', 'Ram 16gb', 100000, 0, 'Bank BRI'),
(4, 'laptop kw', 'sie penipu', 'https://media.pricebook.co.id/images/product/L/47170_L_1.jpg', 1, 50000, 100000, '1', 'Mainan Ajah', 50000, 0, 'Bank BRI');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
