-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2025 at 07:25 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edutrack`
--

-- --------------------------------------------------------

--
-- Table structure for table `aktiviteti`
--

CREATE TABLE `aktiviteti` (
  `AktivitetiID` int(11) NOT NULL,
  `Titulli` varchar(100) DEFAULT NULL,
  `Data` date DEFAULT NULL,
  `Pesha` int(11) DEFAULT NULL,
  `LendaID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `EnrollmentID` int(11) NOT NULL,
  `StudentID` int(11) DEFAULT NULL,
  `LendaID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lenda`
--

CREATE TABLE `lenda` (
  `LendaID` int(11) NOT NULL,
  `Emri` varchar(100) DEFAULT NULL,
  `Kodi` int(11) DEFAULT NULL,
  `Semestri` int(11) DEFAULT NULL,
  `ProfesorID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `NotaID` int(11) NOT NULL,
  `Vlera` int(11) DEFAULT NULL,
  `Tipi` int(11) DEFAULT NULL,
  `Data` date DEFAULT NULL,
  `StudentID` int(11) DEFAULT NULL,
  `LendaID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `piketaktiviteti`
--

CREATE TABLE `piketaktiviteti` (
  `PiketAktivitetiID` int(11) NOT NULL,
  `Piket` int(11) DEFAULT NULL,
  `Komentet` text DEFAULT NULL,
  `AktivitetiID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `piketprojekti`
--

CREATE TABLE `piketprojekti` (
  `PiketProjektiID` int(11) NOT NULL,
  `Piket` int(11) DEFAULT NULL,
  `Komentet` text DEFAULT NULL,
  `ProjektiID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `piketprovimi`
--

CREATE TABLE `piketprovimi` (
  `PiketProvimiID` int(11) NOT NULL,
  `Piket` int(11) DEFAULT NULL,
  `Komentet` text DEFAULT NULL,
  `ProvimiID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `piketstudycase`
--

CREATE TABLE `piketstudycase` (
  `PiketStudyCaseID` int(11) NOT NULL,
  `Piket` int(11) DEFAULT NULL,
  `Komentet` text DEFAULT NULL,
  `StudyCaseID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profesori`
--

CREATE TABLE `profesori` (
  `ProfesorID` int(11) NOT NULL,
  `Emri` varchar(50) DEFAULT NULL,
  `Mbiemri` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Departamenti` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projekti`
--

CREATE TABLE `projekti` (
  `ProjektiID` int(11) NOT NULL,
  `Titulli` varchar(100) DEFAULT NULL,
  `Data` date DEFAULT NULL,
  `Pesha` int(11) DEFAULT NULL,
  `LendaID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provimi`
--

CREATE TABLE `provimi` (
  `ProvimiID` int(11) NOT NULL,
  `Lloji` varchar(50) DEFAULT NULL,
  `Pesha` int(11) DEFAULT NULL,
  `Data` date DEFAULT NULL,
  `LendaID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `raportiaktivitetit`
--

CREATE TABLE `raportiaktivitetit` (
  `RaportiAktivitetitID` int(11) NOT NULL,
  `DataRaportit` date DEFAULT NULL,
  `Semestri` int(11) DEFAULT NULL,
  `VitiStudimeve` int(11) DEFAULT NULL,
  `StudentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `studenti`
--

CREATE TABLE `studenti` (
  `StudentID` int(11) NOT NULL,
  `Emri` varchar(50) DEFAULT NULL,
  `Mbiemri` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `VitiStudimeve` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `studycase`
--

CREATE TABLE `studycase` (
  `StudyCaseID` int(11) NOT NULL,
  `Titulli` varchar(100) DEFAULT NULL,
  `Data` date DEFAULT NULL,
  `Pesha` int(11) DEFAULT NULL,
  `Pershkrimi` text DEFAULT NULL,
  `LendaID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aktiviteti`
--
ALTER TABLE `aktiviteti`
  ADD PRIMARY KEY (`AktivitetiID`),
  ADD KEY `LendaID` (`LendaID`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`EnrollmentID`),
  ADD KEY `StudentID` (`StudentID`),
  ADD KEY `LendaID` (`LendaID`);

--
-- Indexes for table `lenda`
--
ALTER TABLE `lenda`
  ADD PRIMARY KEY (`LendaID`),
  ADD KEY `ProfesorID` (`ProfesorID`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`NotaID`),
  ADD KEY `StudentID` (`StudentID`),
  ADD KEY `LendaID` (`LendaID`);

--
-- Indexes for table `piketaktiviteti`
--
ALTER TABLE `piketaktiviteti`
  ADD PRIMARY KEY (`PiketAktivitetiID`),
  ADD KEY `AktivitetiID` (`AktivitetiID`);

--
-- Indexes for table `piketprojekti`
--
ALTER TABLE `piketprojekti`
  ADD PRIMARY KEY (`PiketProjektiID`),
  ADD KEY `ProjektiID` (`ProjektiID`);

--
-- Indexes for table `piketprovimi`
--
ALTER TABLE `piketprovimi`
  ADD PRIMARY KEY (`PiketProvimiID`),
  ADD KEY `ProvimiID` (`ProvimiID`);

--
-- Indexes for table `piketstudycase`
--
ALTER TABLE `piketstudycase`
  ADD PRIMARY KEY (`PiketStudyCaseID`),
  ADD KEY `StudyCaseID` (`StudyCaseID`);

--
-- Indexes for table `profesori`
--
ALTER TABLE `profesori`
  ADD PRIMARY KEY (`ProfesorID`);

--
-- Indexes for table `projekti`
--
ALTER TABLE `projekti`
  ADD PRIMARY KEY (`ProjektiID`),
  ADD KEY `LendaID` (`LendaID`);

--
-- Indexes for table `provimi`
--
ALTER TABLE `provimi`
  ADD PRIMARY KEY (`ProvimiID`),
  ADD KEY `LendaID` (`LendaID`);

--
-- Indexes for table `raportiaktivitetit`
--
ALTER TABLE `raportiaktivitetit`
  ADD PRIMARY KEY (`RaportiAktivitetitID`),
  ADD KEY `StudentID` (`StudentID`);

--
-- Indexes for table `studenti`
--
ALTER TABLE `studenti`
  ADD PRIMARY KEY (`StudentID`);

--
-- Indexes for table `studycase`
--
ALTER TABLE `studycase`
  ADD PRIMARY KEY (`StudyCaseID`),
  ADD KEY `LendaID` (`LendaID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aktiviteti`
--
ALTER TABLE `aktiviteti`
  MODIFY `AktivitetiID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enrollment`
--
ALTER TABLE `enrollment`
  MODIFY `EnrollmentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lenda`
--
ALTER TABLE `lenda`
  MODIFY `LendaID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nota`
--
ALTER TABLE `nota`
  MODIFY `NotaID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `piketaktiviteti`
--
ALTER TABLE `piketaktiviteti`
  MODIFY `PiketAktivitetiID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `piketprojekti`
--
ALTER TABLE `piketprojekti`
  MODIFY `PiketProjektiID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `piketprovimi`
--
ALTER TABLE `piketprovimi`
  MODIFY `PiketProvimiID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `piketstudycase`
--
ALTER TABLE `piketstudycase`
  MODIFY `PiketStudyCaseID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profesori`
--
ALTER TABLE `profesori`
  MODIFY `ProfesorID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projekti`
--
ALTER TABLE `projekti`
  MODIFY `ProjektiID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provimi`
--
ALTER TABLE `provimi`
  MODIFY `ProvimiID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `raportiaktivitetit`
--
ALTER TABLE `raportiaktivitetit`
  MODIFY `RaportiAktivitetitID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `studenti`
--
ALTER TABLE `studenti`
  MODIFY `StudentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `studycase`
--
ALTER TABLE `studycase`
  MODIFY `StudyCaseID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aktiviteti`
--
ALTER TABLE `aktiviteti`
  ADD CONSTRAINT `aktiviteti_ibfk_1` FOREIGN KEY (`LendaID`) REFERENCES `lenda` (`LendaID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD CONSTRAINT `enrollment_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `studenti` (`StudentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `enrollment_ibfk_2` FOREIGN KEY (`LendaID`) REFERENCES `lenda` (`LendaID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lenda`
--
ALTER TABLE `lenda`
  ADD CONSTRAINT `lenda_ibfk_1` FOREIGN KEY (`ProfesorID`) REFERENCES `profesori` (`ProfesorID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `nota`
--
ALTER TABLE `nota`
  ADD CONSTRAINT `nota_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `studenti` (`StudentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nota_ibfk_2` FOREIGN KEY (`LendaID`) REFERENCES `lenda` (`LendaID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `piketaktiviteti`
--
ALTER TABLE `piketaktiviteti`
  ADD CONSTRAINT `piketaktiviteti_ibfk_1` FOREIGN KEY (`AktivitetiID`) REFERENCES `aktiviteti` (`AktivitetiID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `piketprojekti`
--
ALTER TABLE `piketprojekti`
  ADD CONSTRAINT `piketprojekti_ibfk_1` FOREIGN KEY (`ProjektiID`) REFERENCES `projekti` (`ProjektiID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `piketprovimi`
--
ALTER TABLE `piketprovimi`
  ADD CONSTRAINT `piketprovimi_ibfk_1` FOREIGN KEY (`ProvimiID`) REFERENCES `provimi` (`ProvimiID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `piketstudycase`
--
ALTER TABLE `piketstudycase`
  ADD CONSTRAINT `piketstudycase_ibfk_1` FOREIGN KEY (`StudyCaseID`) REFERENCES `studycase` (`StudyCaseID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `projekti`
--
ALTER TABLE `projekti`
  ADD CONSTRAINT `projekti_ibfk_1` FOREIGN KEY (`LendaID`) REFERENCES `lenda` (`LendaID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `provimi`
--
ALTER TABLE `provimi`
  ADD CONSTRAINT `provimi_ibfk_1` FOREIGN KEY (`LendaID`) REFERENCES `lenda` (`LendaID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `raportiaktivitetit`
--
ALTER TABLE `raportiaktivitetit`
  ADD CONSTRAINT `raportiaktivitetit_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `studenti` (`StudentID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `studycase`
--
ALTER TABLE `studycase`
  ADD CONSTRAINT `studycase_ibfk_1` FOREIGN KEY (`LendaID`) REFERENCES `lenda` (`LendaID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
