-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 26, 2024 at 07:12 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `si_pariwisata`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID_ADMIN` int NOT NULL,
  `ID_PEGAWAI` int DEFAULT NULL,
  `ID_USER` int DEFAULT NULL,
  `NAMA` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atraksi`
--

CREATE TABLE `atraksi` (
  `ID_ATRAKSI` int NOT NULL,
  `ID_WISATA` int DEFAULT NULL,
  `KETERANGAN_ATRAKSI` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas_kamar`
--

CREATE TABLE `fasilitas_kamar` (
  `ID_FASILITASKAMAR` int NOT NULL,
  `KETERANGAN_FASILITASKAMAR` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas_pariwisata`
--

CREATE TABLE `fasilitas_pariwisata` (
  `ID_FASILITASPARIWISATA` int NOT NULL,
  `ID_WISATA` int DEFAULT NULL,
  `KETERANGAN_FASILITASPARIWISATA` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `ID_HOTEL` int NOT NULL,
  `ID_PENILAIAN` int DEFAULT NULL,
  `ID_JENISHOTEL` int DEFAULT NULL,
  `NAMA_HOTEL` varchar(255) DEFAULT NULL,
  `ALAMAT_HOTEL` varchar(255) DEFAULT NULL,
  `NO_HP` varchar(15) DEFAULT NULL,
  `BANYAK_KAMAR` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_hotel`
--

CREATE TABLE `jenis_hotel` (
  `ID_JENISHOTEL` int NOT NULL,
  `JUMLAH_BINTANG` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_wisata`
--

CREATE TABLE `jenis_wisata` (
  `ID_JENIS` int NOT NULL,
  `ID_WISATA` int DEFAULT NULL,
  `KETERANGAN_JENIS` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `ID_KAMAR` int NOT NULL,
  `ID_TYPEKAMAR` int DEFAULT NULL,
  `KETERANGAN` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `ID_PEGAWAI` int NOT NULL,
  `ID_HOTEL` int DEFAULT NULL,
  `NAMA` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `NO_HP` varchar(15) DEFAULT NULL,
  `JENIS_KELAMIN` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `ID_PEMESANAN` int NOT NULL,
  `ID_HOTEL` int DEFAULT NULL,
  `ID_KAMAR` int DEFAULT NULL,
  `ID_TYPEKAMAR` int DEFAULT NULL,
  `ID_USER` int DEFAULT NULL,
  `WAKTU_PEMESANAN` datetime DEFAULT NULL,
  `TANGGAL_PEMESANAN` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `ID_USER` int NOT NULL,
  `ID_PENILAIAN` int DEFAULT NULL,
  `NAMA_PENGGGUNA` varchar(255) DEFAULT NULL,
  `EMAIL_PENGGUNA` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `NO_PASSPORT` varchar(20) DEFAULT NULL,
  `ALAMAT` varchar(255) DEFAULT NULL,
  `NO_HP` varchar(15) DEFAULT NULL,
  `JENIS_KELAMIN` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penilaian`
--

CREATE TABLE `penilaian` (
  `ID_PENILAIAN` int NOT NULL,
  `PENILAIAN` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `type_kamar`
--

CREATE TABLE `type_kamar` (
  `ID_TYPE_KAMAR` int NOT NULL,
  `ID_FASILITASKAMAR` int DEFAULT NULL,
  `HARGA` decimal(10,2) DEFAULT NULL,
  `DESKRIPSI` text,
  `NAMA_TYPE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `ID_WISATA` int NOT NULL,
  `OBJEK_WISATA` varchar(255) DEFAULT NULL,
  `KETERANGAN` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID_ADMIN`),
  ADD KEY `ID_PEGAWAI` (`ID_PEGAWAI`),
  ADD KEY `ID_USER` (`ID_USER`);

--
-- Indexes for table `atraksi`
--
ALTER TABLE `atraksi`
  ADD PRIMARY KEY (`ID_ATRAKSI`),
  ADD KEY `ID_WISATA` (`ID_WISATA`);

--
-- Indexes for table `fasilitas_kamar`
--
ALTER TABLE `fasilitas_kamar`
  ADD PRIMARY KEY (`ID_FASILITASKAMAR`);

--
-- Indexes for table `fasilitas_pariwisata`
--
ALTER TABLE `fasilitas_pariwisata`
  ADD PRIMARY KEY (`ID_FASILITASPARIWISATA`),
  ADD KEY `ID_WISATA` (`ID_WISATA`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`ID_HOTEL`),
  ADD KEY `ID_PENILAIAN` (`ID_PENILAIAN`),
  ADD KEY `ID_JENISHOTEL` (`ID_JENISHOTEL`);

--
-- Indexes for table `jenis_hotel`
--
ALTER TABLE `jenis_hotel`
  ADD PRIMARY KEY (`ID_JENISHOTEL`);

--
-- Indexes for table `jenis_wisata`
--
ALTER TABLE `jenis_wisata`
  ADD PRIMARY KEY (`ID_JENIS`),
  ADD KEY `ID_WISATA` (`ID_WISATA`);

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`ID_KAMAR`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`ID_PEGAWAI`),
  ADD KEY `ID_HOTEL` (`ID_HOTEL`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`ID_PEMESANAN`),
  ADD KEY `ID_HOTEL` (`ID_HOTEL`),
  ADD KEY `ID_KAMAR` (`ID_KAMAR`),
  ADD KEY `ID_USER` (`ID_USER`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`ID_USER`),
  ADD KEY `ID_PENILAIAN` (`ID_PENILAIAN`);

--
-- Indexes for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`ID_PENILAIAN`);

--
-- Indexes for table `type_kamar`
--
ALTER TABLE `type_kamar`
  ADD PRIMARY KEY (`ID_TYPE_KAMAR`),
  ADD KEY `ID_FASILITASKAMAR` (`ID_FASILITASKAMAR`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`ID_WISATA`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`ID_PEGAWAI`) REFERENCES `pegawai` (`ID_PEGAWAI`),
  ADD CONSTRAINT `admin_ibfk_2` FOREIGN KEY (`ID_USER`) REFERENCES `pengguna` (`ID_USER`);

--
-- Constraints for table `atraksi`
--
ALTER TABLE `atraksi`
  ADD CONSTRAINT `atraksi_ibfk_1` FOREIGN KEY (`ID_WISATA`) REFERENCES `wisata` (`ID_WISATA`);

--
-- Constraints for table `fasilitas_pariwisata`
--
ALTER TABLE `fasilitas_pariwisata`
  ADD CONSTRAINT `fasilitas_pariwisata_ibfk_1` FOREIGN KEY (`ID_WISATA`) REFERENCES `wisata` (`ID_WISATA`);

--
-- Constraints for table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`ID_PENILAIAN`) REFERENCES `penilaian` (`ID_PENILAIAN`),
  ADD CONSTRAINT `hotel_ibfk_2` FOREIGN KEY (`ID_JENISHOTEL`) REFERENCES `jenis_hotel` (`ID_JENISHOTEL`);

--
-- Constraints for table `jenis_wisata`
--
ALTER TABLE `jenis_wisata`
  ADD CONSTRAINT `jenis_wisata_ibfk_1` FOREIGN KEY (`ID_WISATA`) REFERENCES `wisata` (`ID_WISATA`);

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_ibfk_1` FOREIGN KEY (`ID_HOTEL`) REFERENCES `hotel` (`ID_HOTEL`);

--
-- Constraints for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_ibfk_1` FOREIGN KEY (`ID_HOTEL`) REFERENCES `hotel` (`ID_HOTEL`),
  ADD CONSTRAINT `pemesanan_ibfk_2` FOREIGN KEY (`ID_KAMAR`) REFERENCES `kamar` (`ID_KAMAR`),
  ADD CONSTRAINT `pemesanan_ibfk_3` FOREIGN KEY (`ID_USER`) REFERENCES `pengguna` (`ID_USER`);

--
-- Constraints for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD CONSTRAINT `pengguna_ibfk_1` FOREIGN KEY (`ID_PENILAIAN`) REFERENCES `penilaian` (`ID_PENILAIAN`);

--
-- Constraints for table `type_kamar`
--
ALTER TABLE `type_kamar`
  ADD CONSTRAINT `type_kamar_ibfk_1` FOREIGN KEY (`ID_FASILITASKAMAR`) REFERENCES `fasilitas_kamar` (`ID_FASILITASKAMAR`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
