-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2020 年 01 月 30 日 16:52
-- 伺服器版本： 8.0.17
-- PHP 版本： 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `moon`
--
CREATE DATABASE IF NOT EXISTS `moon` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `moon`;

-- --------------------------------------------------------

--
-- 資料表結構 `Invoice`
--

CREATE TABLE `Invoice` (
  `Invoice_id` int(11) NOT NULL,
  `Shop_name` varchar(20) NOT NULL,
  `ConsumDate_ID` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `Item`
--

CREATE TABLE `Item` (
  `item_id` int(11) NOT NULL,
  `Invoice_ID` int(11) NOT NULL,
  `Item_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Item_price` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `Payment`
--

CREATE TABLE `Payment` (
  `ConsupDate_id` int(11) NOT NULL,
  `Payment_method` varchar(20) NOT NULL,
  `Points` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `Invoice`
--
ALTER TABLE `Invoice`
  ADD PRIMARY KEY (`Invoice_id`),
  ADD UNIQUE KEY `Consum_date` (`ConsumDate_ID`),
  ADD KEY `Shop_name` (`Shop_name`);

--
-- 資料表索引 `Item`
--
ALTER TABLE `Item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `Invoice_ID` (`Invoice_ID`),
  ADD KEY `Item_name` (`Item_name`) USING BTREE,
  ADD KEY `Item_price` (`Item_price`) USING BTREE;

--
-- 資料表索引 `Payment`
--
ALTER TABLE `Payment`
  ADD PRIMARY KEY (`ConsupDate_id`),
  ADD KEY `Payment_method` (`Payment_method`),
  ADD KEY `Points` (`Points`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `Invoice`
--
ALTER TABLE `Invoice`
  MODIFY `Invoice_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `Item`
--
ALTER TABLE `Item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `Payment`
--
ALTER TABLE `Payment`
  MODIFY `ConsupDate_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
