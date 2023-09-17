-- phpMyAdmin SQL Dump
-- version 6.0.0-dev
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 17, 2023 at 04:55 PM
-- Server version: 10.11.5-MariaDB-1:10.11.5+maria~ubu2204
-- PHP Version: 8.1.2-1ubuntu2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rdioscanner`
--

-- --------------------------------------------------------

--
-- Table structure for table `mpscs`
--

CREATE TABLE `mpscs` (
  `Decimal` int(11) NOT NULL,
  `Hex` varchar(4) DEFAULT NULL,
  `Alpha Tag` varchar(16) DEFAULT NULL,
  `Mode` varchar(4) DEFAULT NULL,
  `Description` varchar(112) DEFAULT NULL,
  `Tag` varchar(14) DEFAULT NULL,
  `Category` varchar(63) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rdioScannerAccesses`
--

CREATE TABLE `rdioScannerAccesses` (
  `_id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `expiration` datetime DEFAULT NULL,
  `ident` varchar(255) DEFAULT NULL,
  `limit` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `systems` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rdioScannerApiKeys`
--

CREATE TABLE `rdioScannerApiKeys` (
  `_id` int(11) NOT NULL,
  `disabled` tinyint(1) DEFAULT 0,
  `ident` varchar(255) DEFAULT NULL,
  `key` varchar(255) NOT NULL,
  `order` int(11) DEFAULT NULL,
  `systems` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rdioScannerAudios`
--

CREATE TABLE `rdioScannerAudios` (
  `call_id` int(11) NOT NULL,
  `audio` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rdioScannerCalls`
--

CREATE TABLE `rdioScannerCalls` (
  `id` int(11) NOT NULL,
  `audioName` varchar(255) NOT NULL,
  `audioType` varchar(255) DEFAULT NULL,
  `dateTime` datetime NOT NULL,
  `frequencies` text NOT NULL,
  `frequency` int(11) DEFAULT NULL,
  `source` int(11) DEFAULT NULL,
  `sources` text NOT NULL,
  `system` smallint(4) NOT NULL,
  `talkgroup` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rdioScannerCallsEmpty`
--

CREATE TABLE `rdioScannerCallsEmpty` (
  `id` int(11) NOT NULL,
  `audio` longblob NOT NULL,
  `audioName` varchar(255) DEFAULT NULL,
  `audioType` varchar(255) DEFAULT NULL,
  `dateTime` text NOT NULL,
  `frequencies` text NOT NULL,
  `frequency` int(11) DEFAULT NULL,
  `source` int(11) DEFAULT NULL,
  `sources` text NOT NULL,
  `system` int(11) NOT NULL,
  `talkgroup` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rdioScannerConfigs`
--

CREATE TABLE `rdioScannerConfigs` (
  `_id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `val` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rdioScannerDirWatches`
--

CREATE TABLE `rdioScannerDirWatches` (
  `_id` int(11) NOT NULL,
  `delay` int(11) DEFAULT 0,
  `deleteAfter` tinyint(1) DEFAULT 0,
  `directory` varchar(255) NOT NULL,
  `disabled` tinyint(1) DEFAULT 0,
  `extension` varchar(255) DEFAULT NULL,
  `frequency` int(11) DEFAULT NULL,
  `mask` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `systemId` int(11) DEFAULT NULL,
  `talkgroupId` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `usePolling` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rdioScannerDownstreams`
--

CREATE TABLE `rdioScannerDownstreams` (
  `_id` int(11) NOT NULL,
  `apiKey` varchar(255) NOT NULL,
  `disabled` tinyint(1) DEFAULT 0,
  `order` int(11) DEFAULT NULL,
  `systems` text NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rdioScannerGroups`
--

CREATE TABLE `rdioScannerGroups` (
  `_id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rdioScannerLogs`
--

CREATE TABLE `rdioScannerLogs` (
  `_id` int(11) NOT NULL,
  `dateTime` datetime NOT NULL,
  `level` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rdioScannerOptions`
--

CREATE TABLE `rdioScannerOptions` (
  `option` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rdioScannerSystems`
--

CREATE TABLE `rdioScannerSystems` (
  `_id` int(11) NOT NULL,
  `autoPopulate` tinyint(1) DEFAULT 0,
  `blacklists` text NOT NULL,
  `id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `led` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `talkgroups` longtext NOT NULL,
  `units` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rdioScannerTags`
--

CREATE TABLE `rdioScannerTags` (
  `_id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rdioScannerTalkgroups`
--

CREATE TABLE `rdioScannerTalkgroups` (
  `system_id` int(11) NOT NULL,
  `talkgroup_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `label` text NOT NULL,
  `led` text NOT NULL,
  `name` text NOT NULL,
  `patches` text NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='primary index doesn''t include tag id because not everything needs a tag id but does require system and group id';

-- --------------------------------------------------------

--
-- Table structure for table `SequelizeMeta`
--

CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mpscs`
--
ALTER TABLE `mpscs`
  ADD PRIMARY KEY (`Decimal`);

--
-- Indexes for table `rdioScannerAccesses`
--
ALTER TABLE `rdioScannerAccesses`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `rdioScannerApiKeys`
--
ALTER TABLE `rdioScannerApiKeys`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `key` (`key`);

--
-- Indexes for table `rdioScannerAudios`
--
ALTER TABLE `rdioScannerAudios`
  ADD PRIMARY KEY (`call_id`);

--
-- Indexes for table `rdioScannerCalls`
--
ALTER TABLE `rdioScannerCalls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system` (`system`),
  ADD KEY `talkgroup` (`talkgroup`),
  ADD KEY `dateTime` (`dateTime`),
  ADD KEY `dateTime_2` (`system`,`talkgroup`,`dateTime`) USING BTREE,
  ADD KEY `datetime_with_id` (`id`,`system`,`talkgroup`,`dateTime`) USING BTREE,
  ADD KEY `audioName` (`audioName`(250));

--
-- Indexes for table `rdioScannerCallsEmpty`
--
ALTER TABLE `rdioScannerCallsEmpty`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idk_default_index_maybe` (`dateTime`,`talkgroup`,`system`) USING HASH,
  ADD KEY `system` (`system`),
  ADD KEY `talkgroup` (`talkgroup`);

--
-- Indexes for table `rdioScannerConfigs`
--
ALTER TABLE `rdioScannerConfigs`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `rdioScannerDirWatches`
--
ALTER TABLE `rdioScannerDirWatches`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `directory` (`directory`);

--
-- Indexes for table `rdioScannerDownstreams`
--
ALTER TABLE `rdioScannerDownstreams`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `apiKey` (`apiKey`);

--
-- Indexes for table `rdioScannerGroups`
--
ALTER TABLE `rdioScannerGroups`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `rdioScannerLogs`
--
ALTER TABLE `rdioScannerLogs`
  ADD PRIMARY KEY (`_id`),
  ADD KEY `rdio_scanner_logs_date_time_level` (`dateTime`,`level`);

--
-- Indexes for table `rdioScannerOptions`
--
ALTER TABLE `rdioScannerOptions`
  ADD PRIMARY KEY (`option`);

--
-- Indexes for table `rdioScannerSystems`
--
ALTER TABLE `rdioScannerSystems`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `rdioScannerTags`
--
ALTER TABLE `rdioScannerTags`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `rdioScannerTalkgroups`
--
ALTER TABLE `rdioScannerTalkgroups`
  ADD PRIMARY KEY (`system_id`,`talkgroup_id`,`group_id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `tag_id` (`tag_id`),
  ADD KEY `talkgroup_id` (`talkgroup_id`);

--
-- Indexes for table `SequelizeMeta`
--
ALTER TABLE `SequelizeMeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rdioScannerAccesses`
--
ALTER TABLE `rdioScannerAccesses`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rdioScannerApiKeys`
--
ALTER TABLE `rdioScannerApiKeys`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rdioScannerCalls`
--
ALTER TABLE `rdioScannerCalls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rdioScannerCallsEmpty`
--
ALTER TABLE `rdioScannerCallsEmpty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rdioScannerConfigs`
--
ALTER TABLE `rdioScannerConfigs`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rdioScannerDirWatches`
--
ALTER TABLE `rdioScannerDirWatches`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rdioScannerDownstreams`
--
ALTER TABLE `rdioScannerDownstreams`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rdioScannerGroups`
--
ALTER TABLE `rdioScannerGroups`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rdioScannerLogs`
--
ALTER TABLE `rdioScannerLogs`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rdioScannerSystems`
--
ALTER TABLE `rdioScannerSystems`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rdioScannerTags`
--
ALTER TABLE `rdioScannerTags`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
