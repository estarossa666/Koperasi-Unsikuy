-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Bulan Mei 2022 pada 15.44
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
-- Database: `db_toko`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `satuan_barang` varchar(255) NOT NULL,
  `stok` text NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `tgl_update` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `id_barang`, `id_kategori`, `nama_barang`, `merk`, `harga_beli`, `harga_jual`, `satuan_barang`, `stok`, `tgl_input`, `tgl_update`) VALUES
(1, 'UK001', 1, 'Buku 40 lembar', 'Paperline', '32000', '40000', '4000', '20', '18 Mei 2022, 10:14', NULL),
(2, 'UK002', 1, 'Buku 40 Lembar', 'Sinar Dunia', '26000', '30000', '5000', '12', '18 Mei 2022, 10:17', NULL),
(3, 'UK003', 1, 'Buku Big Boss', 'Sinar Dunia', '36000', '42000', '7000', '12', '18 Mei 2022, 10:19', NULL),
(4, 'UK004', 1, 'Pulpen', 'Joyko', '24000', '30000', '2500', '12', '18 Mei 2022, 11:26', NULL),
(5, 'UK005', 1, 'Pulpen', 'Quantum', '6000', '10000', '1500', '12', '18 Mei 2022, 11:30', NULL),
(6, 'UK006', 1, 'Pensil', 'Faber Castell', '25000', '30000', '2500', '12', '18 Mei 2022, 11:33', NULL),
(7, 'UK007', 1, 'Penghapus', 'Joyko', '26000', '32000', '1000', '40', '18 Mei 2022, 11:37', NULL),
(8, 'UK008', 1, 'Tipe X', 'Joyko', '46000', '50000', '5000', '12', '18 Mei 2022, 11:40', NULL),
(9, 'UK009', 1, 'Penggaris', 'Butterfly', '2000', '3000', '3000', '10', '18 Mei 2022, 11:44', NULL),
(10, 'UK010', 1, 'Gunting', 'Emigo', '60000', '70000', '6000', '12', '18 Mei 2022, 11:51', NULL),
(11, 'UK011', 1, 'Sticky Notes', 'Post IT', '30000', '35000', '7000', '15', '18 Mei 2022, 12:05', NULL),
(12, 'UK012', 1, 'Paper Clips', 'Joyko', '10000', '15000', '1500', '12', '18 Mei 2022, 12:07', NULL),
(13, 'UK013', 1, 'Tempat Pensil', 'Deli', '40000', '45000', '45000', '8', '18 Mei 2022, 12:09', NULL),
(14, 'UK014', 1, 'Lem Kertas', 'Joyko', '24000', '30000', '2500', '12', '18 Mei 2022, 12:18', '19 May 2022, 0:22'),
(15, 'UK015', 1, 'Lakban Bening', 'Coco Tape', '48000', '58000', '5000', '12', '18 Mei 2022, 12:22', NULL),
(16, 'UK016', 3, 'Pop Mie', 'Indomie', '100000', '110000', '5000', '24', '18 Mei 2022, 12:58', NULL),
(17, 'UK017', 3, 'Wafer', 'Richeese Nabati', '120000', '144000', '6000', '24', '18 Mei 2022, 13:29', NULL),
(18, 'UK018', 3, 'Wafer', 'Tango', '120000', '144000', '6000', '24', '18 Mei 2022, 13:50', NULL),
(19, 'UK019', 3, 'Coklat', 'Silverqueen', '86000', '96000', '8000', '12', '18 Mei 2022, 13:54', NULL),
(20, 'UK020', 3, 'Snack', 'Lays', '90000', '100000', '9000', '12', '18 Mei 2022, 13:57', NULL),
(21, 'UK021', 2, 'Teh', 'Pucuk Harum', '56000', '60000', '5000', '24', '18 Mei 2022, 14:02', NULL),
(22, 'UK022', 2, 'Teh', 'Sosro', '42000', '45000', '4000', '24', '18 Mei 2022, 14:04', NULL),
(23, 'UK023', 2, 'Kopi', 'Golda', '30000', '35000', '3000', '24', '18 Mei 2022, 14:08', NULL),
(25, 'BR026', 2, 'Air Putih', 'Aqua', '45000', '60000', '2500', '24', '19 May 2022, 0:14', '19 May 2022, 0:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `tgl_input`) VALUES
(1, 'Alat Tulis', '18 Mei 2022, 10:04'),
(2, 'Minuman', '18 Mei 2022, 10:06'),
(3, 'Makanan', '18 Mei 2022, 10:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` char(32) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id_login`, `user`, `pass`, `id_member`) VALUES
(1, 'frise', '202cb962ac59075b964b07152d234b70', 1),
(2, 'ilham', '202cb962ac59075b964b07152d234b70', 2),
(3, 'ojan', '202cb962ac59075b964b07152d234b70', 3),
(4, 'rapi', '202cb962ac59075b964b07152d234b70', 4),
(5, 'abi', '202cb962ac59075b964b07152d234b70', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nm_member` varchar(255) NOT NULL,
  `alamat_member` text NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` text NOT NULL,
  `NIK` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_member`, `nm_member`, `alamat_member`, `telepon`, `email`, `gambar`, `NIK`) VALUES
(1, 'Frise Anesha Lutia', 'Padang', '082287381029', '2010631170073@student.unsika.ac.id', 'unnamed.jpg', '130610509000001'),
(2, 'Ilham Safaat', 'bekasi', '0898989898989', 'ilham123@gmail.com', 'unnamed.jpg', '3213125615265126'),
(3, 'Fauzan Arista Alamsyah', 'Jonggol', '085348616123', 'ojangeming@gmail.com', 'unnamed.jpg', '120132415616218'),
(4, 'Muhammad Rafi Santosa', 'Babelan', '021/8514561', 'buddybapaknyarafi@gmail.com', 'unnamed.jpg', '211561328532151'),
(5, 'Habillah Darma', 'Karawang', '087465421564', 'habillahcuy@gmail.com', 'unnamed.jpg', '1562164131245');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  `periode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `alamat_toko` text NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `alamat_toko`, `tlp`, `nama_pemilik`) VALUES
(1, 'Koperasi Unsikuy', 'Jl. HS.Ronggo Waluyo, Puseurjaya, Kec. Telukjambe Tim., Kabupaten Karawang, Jawa Barat 41361 ', '0267 641177', 'BEM UNSIKA');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indeks untuk tabel `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indeks untuk tabel `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `nota`
--
ALTER TABLE `nota`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
