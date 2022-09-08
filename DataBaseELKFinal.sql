-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jun 2022 pada 22.03
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_elektronik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `username` varchar(30) NOT NULL,
  `nama_user` varchar(20) NOT NULL,
  `kata_sandi` varchar(30) NOT NULL,
  `id_kedudukan` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`username`, `nama_user`, `kata_sandi`, `id_kedudukan`) VALUES
('admin', 'dimas', 'admin', 'A1'),
('dadi', 'dimas', 'admin', 'K1'),
('karyawan', 'ayub', 'karyawan', 'K1'),
('rakha', 'rakha', 'admin', 'A1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_barang`
--

CREATE TABLE `data_barang` (
  `idBarang` char(5) NOT NULL,
  `idetalase` int(3) NOT NULL,
  `NamaBarang` varchar(30) DEFAULT NULL,
  `HargaBeli` int(10) DEFAULT NULL,
  `HargaJual` int(10) DEFAULT NULL,
  `stock` int(20) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `IndexNo` int(30) NOT NULL,
  `kd_barcode` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_barang`
--

INSERT INTO `data_barang` (`idBarang`, `idetalase`, `NamaBarang`, `HargaBeli`, `HargaJual`, `stock`, `tanggal`, `IndexNo`, `kd_barcode`) VALUES
('TB1', 0, 'tv politron S4390', 5000, 600000, 9624, '2022-04-23 19:21:08', 1, '0'),
('TB28', 0, 'Tv Led 32 in', 1000, 1000, 826, '2022-05-24 09:29:14', 28, '000846980361'),
('TB34', 1, 'radio kotak', 9000, 10000, 3, '2022-05-29 12:21:14', 34, '000212565936'),
('TB35', 5, 'ac 3233', 2000, 12000, 10, '2022-05-29 13:05:34', 35, '000417650052'),
('TB37', 0, 'tv led', 600000, 1000000, 10, '2022-05-30 11:11:43', 37, '000380140341'),
('TB39', 5, 'ac politron', 500000, 1000000, 40, '2022-06-03 23:46:36', 39, '000823517741'),
('TB41', 0, 'tv DLT69', 1000000, 1200000, 10, '2022-06-08 01:06:04', 41, '000437805783'),
('TB43', 3, 'lampu Led', 10000, 12000, 100, '2022-06-11 22:04:22', 43, '000419534302'),
('TB44', 0, 'tv tabung 32 in', 500000, 1000000, 15, '2022-06-11 22:16:34', 44, '000600344974');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `Jumlah` int(8) NOT NULL,
  `Sub_total` int(8) NOT NULL,
  `idtrans` varchar(5) NOT NULL,
  `idbarang` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`Jumlah`, `Sub_total`, `idtrans`, `idbarang`) VALUES
(1, 1, 'TR004', 'TB1'),
(1, 1, 'TR005', 'TB1'),
(1, 1, 'TR005', 'TB2'),
(2, 12000, 'TR006', 'TB1'),
(1, 6000, 'TR007', 'TB1'),
(1, 1222, 'TR007', 'TB17'),
(2, 12000, 'TR008', 'TB1'),
(1, 1222, 'TR008', 'TB17'),
(1, 6000, 'TR009', 'TB1'),
(1, 222, 'TR010', 'TB14'),
(1, 6000, 'TR011', 'TB1'),
(1, 6000, 'TR012', 'TB1'),
(1, 6000, 'TR016', 'TB1'),
(2, 2000, 'TR017', 'TB28'),
(2, 12000, 'TR017', 'TB1'),
(2, 12000, 'TR018', 'TB1'),
(2, 2000, 'TR018', 'TB28'),
(1, 6000, 'TR019', 'TB1'),
(1, 1000, 'TR019', 'TB28'),
(1, 6000, 'TR020', 'TB1'),
(1, 6000, 'TR021', 'TB1'),
(1, 6000, 'TR022', 'TB1'),
(1, 6000, 'TR023', 'TB1'),
(2, 12000, 'TR024', 'TB1'),
(2, 12000, 'TR025', 'TB1'),
(1, 6000, 'TR026', 'TB1'),
(1, 6000, 'TR027', 'TB1'),
(1, 6000, 'TR028', 'TB1'),
(1, 6000, 'TR029', 'TB1'),
(1, 6000, 'TR030', 'TB1'),
(1, 6000, 'TR031', 'TB1'),
(1, 6000, 'TR032', 'TB1'),
(1, 6000, 'TR033', 'TB1'),
(1, 6000, 'TR034', 'TB1'),
(1, 6000, 'TR035', 'TB1'),
(1, 6000, 'TR036', 'TB1'),
(1, 6000, 'TR037', 'TB1'),
(1, 6000, 'TR038', 'TB1'),
(1, 6000, 'TR039', 'TB1'),
(1, 6000, 'TR040', 'TB1'),
(1, 6000, 'TR041', 'TB1'),
(1, 6000, 'TR042', 'TB1'),
(1, 6000, 'TR043', 'TB1'),
(1, 6000, 'TR044', 'TB1'),
(1, 6000, 'TR045', 'TB1'),
(1, 6000, 'TR046', 'TB1'),
(1, 6000, 'TR047', 'TB1'),
(12, 72000, 'TR048', 'TB1'),
(1, 6000, 'TR049', 'TB1'),
(2, 12000, 'TR050', 'TB1'),
(1, 6000, 'TR051', 'TB1'),
(1, 1000, 'TR052', 'TB28'),
(1, 1000, 'TR053', 'TB28'),
(3, 3000, 'TR054', 'TB28'),
(12, 12000, 'TR055', 'TB28'),
(1, 1000, 'TR056', 'TB28'),
(12, 12000, 'TR057', 'TB28'),
(12, 12000, 'TR058', 'TB28'),
(12, 72000, 'TR059', 'TB1'),
(12, 72000, 'TR060', 'TB1'),
(1, 6000, 'TR061', 'TB1'),
(2, 12000, 'TR062', 'TB1'),
(1, 6000, 'TR063', 'TB1'),
(1, 6000, 'TR064', 'TB1'),
(1, 6000, 'TR065', 'TB1'),
(1, 6000, 'TR066', 'TB1'),
(1, 6000, 'TR067', 'TB1'),
(1, 6000, 'TR068', 'TB1'),
(2, 12000, 'TR069', 'TB1'),
(1, 6000, 'TR070', 'TB1'),
(1, 6000, 'TR071', 'TB1'),
(1, 6000, 'TR072', 'TB1'),
(2, 12000, 'TR073', 'TB1'),
(2, 2000, 'TR073', 'TB28'),
(1, 6000, 'TR074', 'TB1'),
(1, 1000, 'TR074', 'TB28'),
(1, 6000, 'TR075', 'TB1'),
(1, 1000, 'TR075', 'TB28'),
(1, 6000, 'TR076', 'TB1'),
(1, 1000, 'TR076', 'TB28'),
(2, 12000, 'TR077', 'TB1'),
(2, 2000, 'TR077', 'TB28'),
(1, 6000, 'TR078', 'TB1'),
(1, 1000, 'TR078', 'TB28'),
(1, 6000, 'TR079', 'TB1'),
(1, 6000, 'TR080', 'TB1'),
(1, 1000, 'TR080', 'TB28'),
(1, 6000, 'TR081', 'TB1'),
(1, 6000, 'TR082', 'TB1'),
(1, 6000, 'TR083', 'TB1'),
(1, 6000, 'TR084', 'TB1'),
(2, 12000, 'TR085', 'TB1'),
(2, 12000, 'TR086', 'TB1'),
(2, 2000, 'TR086', 'TB28'),
(1, 6000, 'TR087', 'TB1'),
(1, 6000, 'TR088', 'TB1'),
(1, 6000, 'TR089', 'TB1'),
(1, 6000, 'TR091', 'TB1'),
(1, 6000, 'TR093', 'TB1'),
(1, 6000, 'TR094', 'TB1'),
(1, 6000, 'TR095', 'TB1'),
(1, 6000, 'TR096', 'TB1'),
(1, 6000, 'TR097', 'TB1'),
(1, 6000, 'TR098', 'TB1'),
(1, 6000, 'TR099', 'TB1'),
(12, 12000, 'TR099', 'TB28'),
(1, 6000, 'TR100', 'TB1'),
(1, 6000, 'TR102', 'TB1'),
(12, 12000, 'TR103', 'TB28'),
(2, 12000, 'TR104', 'TB1'),
(2, 2000, 'TR104', 'TB28'),
(12, 72000, 'TR105', 'TB1'),
(12, 12000, 'TR105', 'TB28'),
(1, 6000, 'TR106', 'TB1'),
(1, 6000, 'TR107', 'TB1'),
(3, 36636, 'TR108', 'TB19'),
(2, 4646, 'TR109', 'TB21'),
(10, 50000, 'TR111', 'TB13'),
(1, 12, 'TR112', 'TB10'),
(1, 6000, 'TR113', 'TB1'),
(1, 6000, 'TR114', 'TB1'),
(1, 6000, 'TR115', 'TB1'),
(1, 6000, 'TR115', 'TB1'),
(2, 12000, 'TR116', 'TB1'),
(1, 6000, 'TR117', 'TB1'),
(1, 6000, 'TR118', 'TB1'),
(12, 72000, 'TR119', 'TB1'),
(12, 12000, 'TR119', 'TB28'),
(12, 72000, 'TR120', 'TB1'),
(1, 6000, 'TR121', 'TB1'),
(1, 6000, 'TR122', 'TB1'),
(2, 12000, 'TR123', 'TB1'),
(1, 6000, 'TR124', 'TB1'),
(12, 72000, 'TR125', 'TB1'),
(12, 12000, 'TR125', 'TB28'),
(1, 6000, 'TR130', 'TB1'),
(12, 72000, 'TR135', 'TB1'),
(10, 60000, 'TR136', 'TB1'),
(9, 90000, 'TR137', 'TB34'),
(1, 12000, 'TR138', 'TB35'),
(1, 12000, 'TR139', 'TB35'),
(12, 72000, 'TR139', 'TB1'),
(12, 72000, 'TR140', 'TB1'),
(2, 12000, 'TR141', 'TB1'),
(1, 6000, 'TR144', 'TB1'),
(1, 6000, 'TR145', 'TB1'),
(2, 20000, 'TR145', 'TB34'),
(1, 6000, 'TR146', 'TB1'),
(1, 6000, 'TR147', 'TB1'),
(1, 10000, 'TR147', 'TB34'),
(1, 6000, 'TR148', 'TB1'),
(1, 6000, 'TR149', 'TB1'),
(1, 6000, 'TR150', 'TB1'),
(2, 12000, 'TR151', 'TB1'),
(2, 20000, 'TR151', 'TB34'),
(1, 6000, 'TR152', 'TB1'),
(2, 12000, 'TR153', 'TB1'),
(1, 6000, 'TR154', 'TB1'),
(1, 6000, 'TR155', 'TB1'),
(1, 6000, 'TR156', 'TB1'),
(1, 120000, 'TR157', 'TB2'),
(1, 120000, 'TR158', 'TB2'),
(2, 240000, 'TR158', 'TB2'),
(100, 600000, 'TR159', 'TB1'),
(12, 72000, 'TR160', 'TB1'),
(1, 1000000, 'TR161', 'TB37'),
(1, 1000000, 'TR162', 'TB37'),
(1, 6000, 'TR162', 'TB1'),
(1, 6000, 'TR163', 'TB1'),
(1, 6000, 'TR164', 'TB1'),
(1, 6000, 'TR165', 'TB1'),
(13, 13000, 'TR165', 'TB28'),
(13, 13000000, 'TR165', 'TB37'),
(2, 12000, 'TR166', 'TB1'),
(1, 6000, 'TR167', 'TB1'),
(12, 12000, 'TR167', 'TB28'),
(1, 6000, 'TR168', 'TB1'),
(1, 6000, 'TR169', 'TB1'),
(3, 18000, 'TR171', 'TB1'),
(2, 12000, 'TR172', 'TB1'),
(1, 1000000, 'TR173', 'TB39'),
(12, 72000, 'TR174', 'TB1'),
(12, 72000, 'TR175', 'TB1'),
(12, 72000, 'TR176', 'TB1'),
(12, 12000, 'TR176', 'TB28'),
(3, 18000, 'TR177', 'TB1'),
(1, 6000, 'TR178', 'TB1'),
(1, 10000, 'TR178', 'TB34'),
(12, 72000, 'TR179', 'TB1'),
(1, 10000, 'TR179', 'TB34'),
(1, 6000, 'TR180', 'TB1'),
(12, 72000, 'TR181', 'TB1'),
(12, 12000, 'TR182', 'TB28'),
(2, 12000, 'TR183', 'TB1'),
(5, 5000, 'TR183', 'TB28'),
(1, 600000, 'TR184', 'TB1'),
(1, 600000, 'TR185', 'TB1');

--
-- Trigger `detail_transaksi`
--
DELIMITER $$
CREATE TRIGGER `kurangstock` AFTER INSERT ON `detail_transaksi` FOR EACH ROW BEGIN 
UPDATE `data_barang` SET `stock` = stock - New.Jumlah WHERE idbarang=new.idbarang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_etalase`
--

CREATE TABLE `jenis_etalase` (
  `id_etalase` int(3) NOT NULL,
  `jenis_etalase` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jenis_etalase`
--

INSERT INTO `jenis_etalase` (`id_etalase`, `jenis_etalase`) VALUES
(0, 'TV'),
(1, 'Radio'),
(2, 'Perlistrikan'),
(3, 'Lampu'),
(4, 'kulkas'),
(5, 'Ac'),
(6, 'speaker'),
(7, 'kipas'),
(8, 'penanak nasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kedudukan`
--

CREATE TABLE `kedudukan` (
  `id_kedudukan` varchar(2) NOT NULL,
  `jenis_user` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kedudukan`
--

INSERT INTO `kedudukan` (`id_kedudukan`, `jenis_user`) VALUES
('A1', 'Admin'),
('K1', 'Karyawan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_beli`
--

CREATE TABLE `transaksi_beli` (
  `id_transaksibeli` varchar(5) NOT NULL,
  `idBarang` char(5) NOT NULL,
  `indexNo` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi_beli`
--

INSERT INTO `transaksi_beli` (`id_transaksibeli`, `idBarang`, `indexNo`) VALUES
('TF1', 'TB1', 1),
('TF18', 'TB18', 18),
('TF21', 'TB21', 21),
('TF22', 'TB22', 22),
('TF23', 'TB23', 23),
('TF24', 'TB24', 24),
('TF25', 'TB25', 25),
('TF26', 'TB26', 26),
('TF30', 'TB30', 30),
('TF34', 'TB34', 34),
('TF40', 'TB41', 41),
('TF42', 'TB43', 43),
('TF43', 'TB44', 44);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transjual`
--

CREATE TABLE `transjual` (
  `idtrans` varchar(5) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `total` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transjual`
--

INSERT INTO `transjual` (`idtrans`, `tanggal_transaksi`, `total`) VALUES
('TR024', '2022-05-26', '12000'),
('TR025', '2022-05-26', '12000'),
('TR026', '2022-05-26', '6000'),
('TR027', '2022-05-26', '6000'),
('TR028', '2022-05-26', '6000'),
('TR029', '2022-05-26', '6000'),
('TR030', '2022-05-26', '6000'),
('TR031', '2022-05-26', '6000'),
('TR032', '2022-05-26', '6000'),
('TR033', '2022-05-26', '6000'),
('TR034', '2022-05-26', '6000'),
('TR035', '2022-05-26', '6000'),
('TR036', '2022-05-26', '6000'),
('TR037', '2022-05-26', '6000'),
('TR038', '2022-05-26', '6000'),
('TR039', '2022-05-26', '6000'),
('TR040', '2022-05-26', '6000'),
('TR041', '2022-05-26', '6000'),
('TR042', '2022-05-26', '6000'),
('TR043', '2022-05-26', '6000'),
('TR044', '2022-05-26', '6000'),
('TR045', '2022-05-26', '6000'),
('TR046', '2022-05-26', '6000'),
('TR047', '2022-05-26', '6000'),
('TR048', '2022-05-26', '72000'),
('TR049', '2022-05-26', '6000'),
('TR050', '2022-05-26', '12000'),
('TR051', '2022-05-26', '6000'),
('TR052', '2022-05-26', '1000'),
('TR053', '2022-05-26', '1000'),
('TR054', '2022-05-26', '3000'),
('TR055', '2022-05-26', '12000'),
('TR056', '2022-05-26', '1000'),
('TR057', '2022-05-26', '12000'),
('TR058', '2022-05-26', '12000'),
('TR059', '2022-05-27', '72000'),
('TR060', '2022-05-27', '72000'),
('TR061', '2022-05-27', '6000'),
('TR062', '2022-05-27', '12000'),
('TR063', '2022-05-27', '6000'),
('TR064', '2022-05-27', '6000'),
('TR065', '2022-05-27', '6000'),
('TR066', '2022-05-27', '6000'),
('TR067', '2022-05-27', '6000'),
('TR068', '2022-05-27', '6000'),
('TR069', '2022-05-27', '12000'),
('TR070', '2022-05-27', '6000'),
('TR071', '2022-05-27', '0'),
('TR072', '2022-05-27', '0'),
('TR073', '2022-05-27', '0'),
('TR074', '2022-05-27', '0'),
('TR075', '2022-05-27', '0'),
('TR076', '2022-05-27', '0'),
('TR077', '2022-05-27', '0'),
('TR078', '2022-05-27', '0'),
('TR079', '2022-05-27', '0'),
('TR080', '2022-05-27', '0'),
('TR081', '2022-05-27', '0'),
('TR082', '2022-05-27', '0'),
('TR083', '2022-05-27', '0'),
('TR084', '2022-05-27', '0'),
('TR085', '2022-05-27', '0'),
('TR086', '2022-05-27', '0'),
('TR087', '2022-05-27', '0'),
('TR088', '2022-05-28', '0'),
('TR089', '2022-05-28', '0'),
('TR090', '2022-05-28', '0'),
('TR091', '2022-05-28', '0'),
('TR092', '2022-05-28', '0'),
('TR093', '2022-05-28', '0'),
('TR094', '2022-05-28', '0'),
('TR095', '2022-05-28', '0'),
('TR096', '2022-05-28', '0'),
('TR097', '2022-05-28', '0'),
('TR098', '2022-05-28', '0'),
('TR099', '2022-05-28', '18000'),
('TR100', '2022-05-28', '6000'),
('TR101', '2022-05-28', '0'),
('TR102', '2022-05-28', '6000'),
('TR103', '2022-05-28', '12000'),
('TR104', '2022-05-28', '14000'),
('TR105', '2022-05-28', '84000'),
('TR106', '2022-05-28', '6000'),
('TR107', '2022-05-28', '6000'),
('TR108', '2022-05-28', '36636'),
('TR109', '2022-05-28', '4646'),
('TR110', '2022-05-28', '444'),
('TR111', '2022-05-28', '50000'),
('TR112', '2022-05-28', '12'),
('TR113', '2022-05-28', '6000'),
('TR114', '2022-05-28', '6000'),
('TR115', '2022-05-28', '12000'),
('TR116', '2022-05-28', '12000'),
('TR117', '2022-05-28', '6000'),
('TR118', '2022-05-28', '6000'),
('TR119', '2022-05-28', '84000'),
('TR120', '2022-05-28', '72000'),
('TR121', '2022-05-28', '6000'),
('TR122', '2022-05-28', '6000'),
('TR123', '2022-05-28', '12000'),
('TR124', '2022-05-28', '6000'),
('TR125', '2022-05-28', '84000'),
('TR126', '2022-05-28', '1000000'),
('TR127', '2022-05-28', '1000000'),
('TR128', '2022-05-28', '1000000'),
('TR129', '2022-05-28', '1000000'),
('TR130', '2022-05-28', '6000'),
('TR131', '2022-05-28', '1000000'),
('TR132', '2022-05-28', '1000000'),
('TR133', '2022-05-28', '1000000'),
('TR134', '2022-05-28', '1000000'),
('TR135', '2022-05-29', '72000'),
('TR136', '2022-05-29', '60000'),
('TR137', '2022-05-29', '90000'),
('TR138', '2022-05-29', '12000'),
('TR139', '2022-05-29', '84000'),
('TR140', '2022-05-29', '72000'),
('TR141', '2022-05-29', '36000'),
('TR142', '2022-05-29', '12000'),
('TR143', '2022-05-29', '24000'),
('TR144', '2022-05-29', '6000'),
('TR145', '2022-05-29', '26000'),
('TR146', '2022-05-29', '6000'),
('TR147', '2022-05-29', '16000'),
('TR148', '2022-05-30', '6000'),
('TR149', '2022-05-30', '6000'),
('TR150', '2022-05-30', '6000'),
('TR151', '2022-05-30', '32000'),
('TR152', '2022-05-30', '6000'),
('TR153', '2022-05-30', '12000'),
('TR154', '2022-05-30', '6000'),
('TR155', '2022-05-30', '6000'),
('TR156', '2022-05-30', '6000'),
('TR157', '2022-05-30', '120000'),
('TR158', '2022-05-30', '360000'),
('TR159', '2022-05-30', '600000'),
('TR160', '2022-05-30', '72000'),
('TR161', '2022-05-30', '1000000'),
('TR162', '2022-05-30', '2206000'),
('TR163', '2022-05-30', '6000'),
('TR164', '2022-05-30', '6000'),
('TR165', '2022-05-30', '13019000'),
('TR166', '2022-05-30', '12000'),
('TR167', '2022-05-30', '1018000'),
('TR168', '2022-05-31', '6000'),
('TR169', '2022-05-31', '1006000'),
('TR170', '2022-05-31', '240000'),
('TR171', '2022-06-01', '18000'),
('TR172', '2022-06-01', '12000'),
('TR173', '2022-06-03', '1000000'),
('TR174', '2022-06-08', '72000'),
('TR175', '2022-06-08', '72000'),
('TR176', '2022-06-08', '84000'),
('TR177', '2022-06-08', '1018000'),
('TR178', '2022-06-08', '16000'),
('TR179', '2022-06-08', '82000'),
('TR180', '2022-06-08', '6000'),
('TR181', '2022-06-11', '72000'),
('TR182', '2022-06-11', '12000'),
('TR183', '2022-06-11', '17000'),
('TR184', '2022-06-11', '600000'),
('TR185', '2022-06-12', '600000');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`username`),
  ADD KEY `id_kedudukan` (`id_kedudukan`);

--
-- Indeks untuk tabel `data_barang`
--
ALTER TABLE `data_barang`
  ADD PRIMARY KEY (`idBarang`),
  ADD KEY `idetalase` (`idetalase`);

--
-- Indeks untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD KEY `idtrans` (`idtrans`),
  ADD KEY `idbarang` (`idbarang`);

--
-- Indeks untuk tabel `jenis_etalase`
--
ALTER TABLE `jenis_etalase`
  ADD PRIMARY KEY (`id_etalase`);

--
-- Indeks untuk tabel `kedudukan`
--
ALTER TABLE `kedudukan`
  ADD PRIMARY KEY (`id_kedudukan`);

--
-- Indeks untuk tabel `transaksi_beli`
--
ALTER TABLE `transaksi_beli`
  ADD PRIMARY KEY (`id_transaksibeli`),
  ADD KEY `idBarang` (`idBarang`);

--
-- Indeks untuk tabel `transjual`
--
ALTER TABLE `transjual`
  ADD PRIMARY KEY (`idtrans`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jenis_etalase`
--
ALTER TABLE `jenis_etalase`
  MODIFY `id_etalase` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD CONSTRAINT `akun_ibfk_1` FOREIGN KEY (`id_kedudukan`) REFERENCES `kedudukan` (`id_kedudukan`);

--
-- Ketidakleluasaan untuk tabel `data_barang`
--
ALTER TABLE `data_barang`
  ADD CONSTRAINT `data_barang_ibfk_1` FOREIGN KEY (`idetalase`) REFERENCES `jenis_etalase` (`id_etalase`),
  ADD CONSTRAINT `data_barang_ibfk_2` FOREIGN KEY (`idetalase`) REFERENCES `jenis_etalase` (`id_etalase`);

--
-- Ketidakleluasaan untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `detail_transaksi_ibfk_1` FOREIGN KEY (`idtrans`) REFERENCES `transjual` (`idtrans`),
  ADD CONSTRAINT `detail_transaksi_ibfk_2` FOREIGN KEY (`idbarang`) REFERENCES `data_barang` (`idBarang`);

--
-- Ketidakleluasaan untuk tabel `transaksi_beli`
--
ALTER TABLE `transaksi_beli`
  ADD CONSTRAINT `transaksi_beli_ibfk_1` FOREIGN KEY (`idBarang`) REFERENCES `data_barang` (`idBarang`),
  ADD CONSTRAINT `transaksi_beli_ibfk_2` FOREIGN KEY (`idBarang`) REFERENCES `data_barang` (`idBarang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
