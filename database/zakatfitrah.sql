-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Apr 2022 pada 11.23
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zakatfitrah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_amil`
--

CREATE TABLE `t_amil` (
  `id_amil` int(11) NOT NULL,
  `nama_amil` varchar(30) NOT NULL,
  `no_hp_amil` varchar(14) NOT NULL,
  `alamat_amil` varchar(50) NOT NULL,
  `id_mesjid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_amil`
--

INSERT INTO `t_amil` (`id_amil`, `nama_amil`, `no_hp_amil`, `alamat_amil`, `id_mesjid`) VALUES
(1, 'Sutoyo', '0821123123', 'Jl. Durianni', 2),
(2, 'Mahmud', '0813121321', 'Jl. Pepaya', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_donasi`
--

CREATE TABLE `t_donasi` (
  `id_donasi` int(11) NOT NULL,
  `nama_donatur` varchar(50) NOT NULL,
  `no_hp_donatur` varchar(14) NOT NULL,
  `alamat_donatur` varchar(100) NOT NULL,
  `tgl_donasi` date NOT NULL,
  `total_donasi` int(11) NOT NULL,
  `bukti_donasi` varchar(250) NOT NULL,
  `tgl_validasi` date NOT NULL,
  `id_amil` int(11) NOT NULL,
  `status_validasi` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_donasi`
--

INSERT INTO `t_donasi` (`id_donasi`, `nama_donatur`, `no_hp_donatur`, `alamat_donatur`, `tgl_donasi`, `total_donasi`, `bukti_donasi`, `tgl_validasi`, `id_amil`, `status_validasi`) VALUES
(1, 'Wayoik', '0823198938123', 'Jl. Melati', '2020-03-11', 45000, './assets/img/bukti_donasi/bukti1.jpeg', '2020-03-12', 2, '1'),
(2, 'Tukimin', '0812983912', 'Jl. Merpati', '2020-03-11', 80000, './assets/img/bukti_donasi/bukti2.jpeg', '2020-03-12', 2, '1'),
(3, 'Sunarto', '0182399123', 'Jl. Naga Sakti', '2020-03-12', 100000, './assets/img/bukti_donasi/bukti3.jpeg', '2020-03-12', 2, '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_infak`
--

CREATE TABLE `t_infak` (
  `id_infak` int(11) NOT NULL,
  `nama_pembayar` varchar(20) NOT NULL,
  `tgl_infak` date NOT NULL,
  `total_infak` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_infak`
--

INSERT INTO `t_infak` (`id_infak`, `nama_pembayar`, `tgl_infak`, `total_infak`) VALUES
(1, 'Nandhitta', '2022-04-30', 4000),
(2, 'Lali', '2022-04-30', 5000),
(3, 'Aemy', '2022-04-30', 150000),
(4, 'Ojo', '2022-04-30', 20000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_kritik_saran`
--

CREATE TABLE `t_kritik_saran` (
  `id_saran` int(11) NOT NULL,
  `tgl_saran` date NOT NULL,
  `nama_saran` varchar(50) NOT NULL,
  `subjek_saran` varchar(200) NOT NULL,
  `saran` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_kritik_saran`
--

INSERT INTO `t_kritik_saran` (`id_saran`, `tgl_saran`, `nama_saran`, `subjek_saran`, `saran`) VALUES
(1, '2020-03-06', 'test saran', 'test doang', ' haha hihi'),
(2, '2020-03-06', 'test2', 'hihi', 'huhu hehe'),
(3, '2020-03-11', 'haha', 'asjdasd', 'mxzncmnxc'),
(4, '2020-03-24', 'asdad', 'asdad', 'asdasd'),
(5, '2020-03-24', '', '', ''),
(6, '2020-03-24', 'haha', 'hihi', 'huhuhuhuhu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_mesjid`
--

CREATE TABLE `t_mesjid` (
  `id_mesjid` int(11) NOT NULL,
  `nama_mesjid` varchar(20) NOT NULL,
  `alamat_mesjid` varchar(50) NOT NULL,
  `RT` varchar(4) NOT NULL,
  `RW` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_mesjid`
--

INSERT INTO `t_mesjid` (`id_mesjid`, `nama_mesjid`, `alamat_mesjid`, `RT`, `RW`) VALUES
(1, 'Al-Huda', 'Jl. Garuda Sakti', '012', '002'),
(2, 'Baiturrahman', 'Jl. Bawal', '002', '001'),
(3, 'Al-Khairat', 'Jl. Paus', '008', '002'),
(4, 'Al-Jabbar', 'Jl. Simpang Baru', '003', '001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pembayar`
--

CREATE TABLE `t_pembayar` (
  `id_pembayar` int(11) NOT NULL,
  `nama_pembayar` varchar(30) NOT NULL,
  `no_hp_pembayar` varchar(14) NOT NULL,
  `alamat_pembayar` varchar(50) NOT NULL,
  `id_mesjid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_pembayar`
--

INSERT INTO `t_pembayar` (`id_pembayar`, `nama_pembayar`, `no_hp_pembayar`, `alamat_pembayar`, `id_mesjid`) VALUES
(1, 'Nandhitta', '08671363613', 'Jl. Indah Jaya', 2),
(2, 'Rara', '086713542', 'Jl. Pelangi', 3),
(3, 'Lali', '080819289123', 'Jl. Indah Karya', 2),
(4, 'Ojo', '08129389123', 'Jl. Ambalang', 3),
(5, 'Nina', '081823123', 'Jl. Tulip', 2),
(6, 'Aemy', '08671363613', 'Jl Indah', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pembayaran`
--

CREATE TABLE `t_pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_zakat` int(11) NOT NULL,
  `id_amil` int(11) NOT NULL,
  `id_pembayar` int(11) NOT NULL,
  `tgl_penyerahan` date NOT NULL,
  `pembayaran_beras` double NOT NULL,
  `pembayaran_uang` int(11) NOT NULL,
  `jumlah_tanggungan` int(2) NOT NULL,
  `total_pembayaran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_pembayaran`
--

INSERT INTO `t_pembayaran` (`id_pembayaran`, `id_zakat`, `id_amil`, `id_pembayar`, `tgl_penyerahan`, `pembayaran_beras`, `pembayaran_uang`, `jumlah_tanggungan`, `total_pembayaran`) VALUES
(1, 5, 2, 1, '2022-04-30', 2, 50000, 3, '50000'),
(2, 5, 2, 2, '2022-04-30', 2, 30000, 4, '30000'),
(3, 5, 2, 3, '2022-04-30', 2, 60000, 4, '60000'),
(4, 6, 2, 4, '2022-04-30', 2, 40000, 6, '40000'),
(5, 5, 2, 5, '2022-04-30', 2, 15000, 2, '30000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_penerima`
--

CREATE TABLE `t_penerima` (
  `id_penerima` int(11) NOT NULL,
  `nama_penerima` varchar(30) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `alamat_penerima` varchar(30) NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_penerima`
--

INSERT INTO `t_penerima` (`id_penerima`, `nama_penerima`, `kategori`, `alamat_penerima`, `status`) VALUES
(1, 'Didi', 'Fakir', 'Jl. Jalan', '1'),
(2, 'Yanto', 'Fakir', 'Jl. Mawar', '1'),
(3, 'Juju', 'Miskin', 'Jl. Kamboja', '1'),
(4, 'Iroh', 'Gharim', 'Jl. Kembang', '1'),
(5, 'Lala', 'Mualaf', 'Jl. Kartama', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_penerimaan`
--

CREATE TABLE `t_penerimaan` (
  `id_penerimaan` int(11) NOT NULL,
  `id_amil` int(11) NOT NULL,
  `id_penerima` int(11) NOT NULL,
  `tgl_penerimaan` date NOT NULL,
  `jumlah_penerimaan_uang` int(11) NOT NULL,
  `jumlah_penerimaan_beras` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_penerimaan`
--

INSERT INTO `t_penerimaan` (`id_penerimaan`, `id_amil`, `id_penerima`, `tgl_penerimaan`, `jumlah_penerimaan_uang`, `jumlah_penerimaan_beras`) VALUES
(28, 2, 1, '2022-04-30', 50000, 2),
(29, 2, 2, '2022-04-30', 100000, 2),
(35, 2, 3, '2022-04-30', 500000, 5),
(36, 2, 4, '2022-04-30', 300000, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_user`
--

CREATE TABLE `t_user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_user`
--

INSERT INTO `t_user` (`username`, `password`, `status`, `level`) VALUES
('admin', 'admin', 'aktif', 1),
('Mahmud', '12345', 'aktif', 2),
('yaya', 'abcd123', 'aktif', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_zakat`
--

CREATE TABLE `t_zakat` (
  `id_zakat` int(11) NOT NULL,
  `jenis_zakat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_zakat`
--

INSERT INTO `t_zakat` (`id_zakat`, `jenis_zakat`) VALUES
(5, 'Zakat Fitrah'),
(6, 'Zakat Mal'),
(11, 'Zakat Fidiah');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `t_amil`
--
ALTER TABLE `t_amil`
  ADD PRIMARY KEY (`id_amil`);

--
-- Indeks untuk tabel `t_donasi`
--
ALTER TABLE `t_donasi`
  ADD PRIMARY KEY (`id_donasi`);

--
-- Indeks untuk tabel `t_infak`
--
ALTER TABLE `t_infak`
  ADD PRIMARY KEY (`id_infak`);

--
-- Indeks untuk tabel `t_kritik_saran`
--
ALTER TABLE `t_kritik_saran`
  ADD PRIMARY KEY (`id_saran`);

--
-- Indeks untuk tabel `t_mesjid`
--
ALTER TABLE `t_mesjid`
  ADD PRIMARY KEY (`id_mesjid`);

--
-- Indeks untuk tabel `t_pembayar`
--
ALTER TABLE `t_pembayar`
  ADD PRIMARY KEY (`id_pembayar`);

--
-- Indeks untuk tabel `t_pembayaran`
--
ALTER TABLE `t_pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indeks untuk tabel `t_penerima`
--
ALTER TABLE `t_penerima`
  ADD PRIMARY KEY (`id_penerima`);

--
-- Indeks untuk tabel `t_penerimaan`
--
ALTER TABLE `t_penerimaan`
  ADD PRIMARY KEY (`id_penerimaan`);

--
-- Indeks untuk tabel `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `t_zakat`
--
ALTER TABLE `t_zakat`
  ADD PRIMARY KEY (`id_zakat`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `t_amil`
--
ALTER TABLE `t_amil`
  MODIFY `id_amil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `t_donasi`
--
ALTER TABLE `t_donasi`
  MODIFY `id_donasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `t_infak`
--
ALTER TABLE `t_infak`
  MODIFY `id_infak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `t_kritik_saran`
--
ALTER TABLE `t_kritik_saran`
  MODIFY `id_saran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `t_mesjid`
--
ALTER TABLE `t_mesjid`
  MODIFY `id_mesjid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `t_pembayar`
--
ALTER TABLE `t_pembayar`
  MODIFY `id_pembayar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `t_pembayaran`
--
ALTER TABLE `t_pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `t_penerima`
--
ALTER TABLE `t_penerima`
  MODIFY `id_penerima` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `t_penerimaan`
--
ALTER TABLE `t_penerimaan`
  MODIFY `id_penerimaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `t_zakat`
--
ALTER TABLE `t_zakat`
  MODIFY `id_zakat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
