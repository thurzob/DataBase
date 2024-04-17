-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Ápr 17. 15:53
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `webshop`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `aspnetroleclaims`
--

CREATE TABLE `aspnetroleclaims` (
  `Id` int(11) NOT NULL,
  `RoleId` varchar(255) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `aspnetroles`
--

CREATE TABLE `aspnetroles` (
  `Id` varchar(255) NOT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `NormalizedName` varchar(256) DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `aspnetroles`
--

INSERT INTO `aspnetroles` (`Id`, `Name`, `NormalizedName`, `ConcurrencyStamp`) VALUES
('49eea52f-46b1-40fe-ba03-b532bea27e6a', 'USER', 'USER', NULL),
('9dbf96ff-83b1-45fb-aa73-dcae0b976df9', 'ADMIN', 'ADMIN', NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `aspnetuserclaims`
--

CREATE TABLE `aspnetuserclaims` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(255) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `aspnetuserlogins`
--

CREATE TABLE `aspnetuserlogins` (
  `LoginProvider` varchar(255) NOT NULL,
  `ProviderKey` varchar(255) NOT NULL,
  `ProviderDisplayName` longtext DEFAULT NULL,
  `UserId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `aspnetuserroles`
--

CREATE TABLE `aspnetuserroles` (
  `UserId` varchar(255) NOT NULL,
  `RoleId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `aspnetuserroles`
--

INSERT INTO `aspnetuserroles` (`UserId`, `RoleId`) VALUES
('068c6504-e8a6-4c09-8ef7-61e96d73027c', '49eea52f-46b1-40fe-ba03-b532bea27e6a'),
('068c6504-e8a6-4c09-8ef7-61e96d73027c', '9dbf96ff-83b1-45fb-aa73-dcae0b976df9'),
('07199967-2876-4e59-b7e4-46d49acd8856', '9dbf96ff-83b1-45fb-aa73-dcae0b976df9'),
('5054b57d-1447-4bb1-a487-a4ddbd3b5f92', '49eea52f-46b1-40fe-ba03-b532bea27e6a'),
('810428f2-f249-4fe6-8c25-8e86292dbb94', '49eea52f-46b1-40fe-ba03-b532bea27e6a'),
('810428f2-f249-4fe6-8c25-8e86292dbb94', '9dbf96ff-83b1-45fb-aa73-dcae0b976df9');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `aspnetusers`
--

CREATE TABLE `aspnetusers` (
  `Id` varchar(255) NOT NULL,
  `FullName` longtext NOT NULL,
  `Age` int(11) NOT NULL,
  `UserName` varchar(256) DEFAULT NULL,
  `NormalizedUserName` varchar(256) DEFAULT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `NormalizedEmail` varchar(256) DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext DEFAULT NULL,
  `OrderStatus` varchar(255) NOT NULL,
  `SecurityStamp` longtext DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL,
  `PhoneNumber` longtext DEFAULT NULL,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `aspnetusers`
--

INSERT INTO `aspnetusers` (`Id`, `FullName`, `Age`, `UserName`, `NormalizedUserName`, `Email`, `NormalizedEmail`, `EmailConfirmed`, `PasswordHash`, `OrderStatus`, `SecurityStamp`, `ConcurrencyStamp`, `PhoneNumber`, `PhoneNumberConfirmed`, `TwoFactorEnabled`, `LockoutEnd`, `LockoutEnabled`, `AccessFailedCount`) VALUES
('068c6504-e8a6-4c09-8ef7-61e96d73027c', 'Thurzó-Kertaa', 26, 'admin', 'ADMIN', 'thurzo98@freemail.hu', 'THURZO98@FREEMAIL.HU', 0, '7008b45664b596781ee4ceb0059ccc7702c6aacb72d50a7564aea1e2be3917c3', 'Megrendelés alatt', 'ZIM2I4D727ZADR6LUWTPT3HJKKJKYWKY', '4e194f0c-b161-4e6c-a16f-ee4f35e39452', '20541241', 0, 0, NULL, 1, 0),
('07199967-2876-4e59-b7e4-46d49acd8856', 'Szabolcs Thurzó', 34, 'slapaj', 'SLAPAJ', 'thurzo.szabolcs@gmail.com', 'THURZO.SZABOLCS@GMAIL.COM', 0, 'fa90c2727841c7c9335e65922db1910be3c2954530143b266bd5300c75747d3e', 'string', 'I4VWLBWQWO2CJEGDZGF5FNEUUXYDZTSJ', '49f43870-3e9e-404e-9fc4-49eb3029b596', '65431654', 0, 0, NULL, 0, 0),
('5054b57d-1447-4bb1-a487-a4ddbd3b5f92', 'thurzó bence', 12, 'thurzoasd', 'THURZOASD', 'thurzoben@gmail.com', 'THURZOBEN@GMAIL.COM', 0, 'e5482264c33d04fb9c57d003ee35c8beacb389fd7c63e3265c97d380ef324c45', '', 'E52VKHIPWAKKUYMJCFKS7ASKPK4I4YHQ', 'cea8ad16-5a28-4f63-954f-2a671868e471', '20541241', 0, 0, NULL, 1, 0),
('810428f2-f249-4fe6-8c25-8e86292dbb94', 'thurzó bence', 12, 'thurzob', 'THURZOB', 'thurzobence98@gmail.com', 'THURZOBENCE98@GMAIL.COM', 0, 'AQAAAAIAAYagAAAAEELondltJYsmJwX3H67AGVODy+UlLGY4Gm3UNZArmVEr1SIDqOyQhLe53NRjaNHFaQ==', '', 'N7FZEJ2M6NLMQBRF5CJOYEB7H7ANR6JU', 'a09084f2-6cd7-402f-a9cb-9c7351a98046', '06704212294', 0, 0, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `aspnetusertokens`
--

CREATE TABLE `aspnetusertokens` (
  `UserId` varchar(255) NOT NULL,
  `LoginProvider` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `aspnetusertokens`
--

INSERT INTO `aspnetusertokens` (`UserId`, `LoginProvider`, `Name`, `Value`) VALUES
('068c6504-e8a6-4c09-8ef7-61e96d73027c', 'MyApp', 'access_token', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIwNjhjNjUwNC1lOGE2LTRjMDktOGVmNy02MWU5NmQ3MzAyN2MiLCJuYW1lIjpbImFkbWluIiwiVGh1cnrDsy1LZXJ0Il0sInJvbGUiOlsiVVNFUiIsIkFETUlOIl0sIm5iZiI6MTcxMjk5ODY1NywiZXhwIjoxNzEzMDg1MDU3LCJpYXQiOjE3MTI5OTg2NTcsImlzcyI6ImF1dGgtYXBpIiwiYXVkIjoiYXV0aC1jbGllbnQifQ.YsF7OZXMVaJlD4rmT7EByJ97JA2tVsC1Xvf8i6wEkx8'),
('5054b57d-1447-4bb1-a487-a4ddbd3b5f92', 'MyApp', 'access_token', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI1MDU0YjU3ZC0xNDQ3LTRiYjEtYTQ4Ny1hNGRkYmQzYjVmOTIiLCJuYW1lIjpbInRodXJ6b2FzZCIsInRodXJ6w7MgYmVuY2UiXSwicm9sZSI6IlVTRVIiLCJuYmYiOjE3MTMzNTg0NDMsImV4cCI6MTcxMzQ0NDg0MywiaWF0IjoxNzEzMzU4NDQzLCJpc3MiOiJhdXRoLWFwaSIsImF1ZCI6ImF1dGgtY2xpZW50In0.RWqw22l2tDFYuzbTxl2eMUlktTDozimps6SHS9kJh2o'),
('810428f2-f249-4fe6-8c25-8e86292dbb94', 'MyApp', 'access_token', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI4MTA0MjhmMi1mMjQ5LTRmZTYtOGMyNS04ZTg2MjkyZGJiOTQiLCJuYW1lIjpbInRodXJ6b2IiLCJ0aHVyesOzIGJlbmNlIl0sInJvbGUiOlsiVVNFUiIsIkFETUlOIl0sIm5iZiI6MTcxMzM1OTkxOSwiZXhwIjoxNzEzNDQ2MzE5LCJpYXQiOjE3MTMzNTk5MTksImlzcyI6ImF1dGgtYXBpIiwiYXVkIjoiYXV0aC1jbGllbnQifQ.sVp4SxXgh0c4vOPpNTzT0LFWn5le9AiGC7-L0Byut98');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `merchant`
--

CREATE TABLE `merchant` (
  `Id` int(110) NOT NULL,
  `SerialName` varchar(200) NOT NULL,
  `Type` varchar(200) NOT NULL,
  `Price` int(50) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `Quantity` int(110) NOT NULL,
  `UserId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `merchant`
--

INSERT INTO `merchant` (`Id`, `SerialName`, `Type`, `Price`, `ProductId`, `Quantity`, `UserId`) VALUES
(17, 'NODE BT-400', 'Automatika', 55000, 1, 1, '068c6504-e8a6-4c09-8ef7-61e96d73027c'),
(18, 'NODE BT-400', 'Automatika', 55000, 1, 1, '068c6504-e8a6-4c09-8ef7-61e96d73027c'),
(19, 'X-CORE 4', 'Automatika', 45000, 2, 1, '068c6504-e8a6-4c09-8ef7-61e96d73027c'),
(20, 'NODE BT-400', 'Automatika', 55000, 1, 2, '068c6504-e8a6-4c09-8ef7-61e96d73027c'),
(21, 'X-CORE 4', 'Automatika', 45000, 2, 1, '068c6504-e8a6-4c09-8ef7-61e96d73027c'),
(22, 'X-CORE 4', 'Automatika', 45000, 2, 1, '068c6504-e8a6-4c09-8ef7-61e96d73027c'),
(23, 'NODE BT-400', 'Automatika', 55000, 1, 1, '068c6504-e8a6-4c09-8ef7-61e96d73027c'),
(24, 'X-CORE 4', 'Automatika', 45000, 2, 1, '068c6504-e8a6-4c09-8ef7-61e96d73027c'),
(25, 'NODE BT-400', 'Automatika', 55000, 1, 1, '068c6504-e8a6-4c09-8ef7-61e96d73027c'),
(26, 'NODE BT-400', 'Automatika', 55000, 1, 1, '068c6504-e8a6-4c09-8ef7-61e96d73027c'),
(27, 'X-CORE 4', 'Automatika', 45000, 2, 1, '068c6504-e8a6-4c09-8ef7-61e96d73027c');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `passwordresetrequest`
--

CREATE TABLE `passwordresetrequest` (
  `Email` varchar(255) NOT NULL,
  `UpdatesPassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `product`
--

CREATE TABLE `product` (
  `Id` int(11) NOT NULL,
  `SerialName` varchar(200) NOT NULL,
  `Type` varchar(200) NOT NULL,
  `Price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `product`
--

INSERT INTO `product` (`Id`, `SerialName`, `Type`, `Price`) VALUES
(1, 'NODE BT-400', 'Automatika', 55000),
(2, 'X-CORE 4', 'Automatika', 45000);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `purchase`
--

CREATE TABLE `purchase` (
  `Id` int(11) NOT NULL,
  `BillingName` varchar(255) NOT NULL,
  `BillingPostalCode` varchar(255) NOT NULL,
  `BillingAddress` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `PostalCode` varchar(255) NOT NULL,
  `DeliveryAddress` varchar(255) NOT NULL,
  `PhoneNumber` varchar(255) NOT NULL,
  `UserId` varchar(255) NOT NULL,
  `TIDID` int(111) NOT NULL,
  `Date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `purchase`
--

INSERT INTO `purchase` (`Id`, `BillingName`, `BillingPostalCode`, `BillingAddress`, `Email`, `PostalCode`, `DeliveryAddress`, `PhoneNumber`, `UserId`, `TIDID`, `Date`) VALUES
(115, 'Thurzó-Kert', '3531', 'Miskolc Füzes utca 36.', 'thurzobence98@gmail.com', '3531', 'Miskolc Füzes utca 36', '06704212294', '068c6504-e8a6-4c09-8ef7-61e96d73027c', 17, '2024-04-15 14:44:22'),
(124, '', '', '', 'thurzobence98@gmail.com', '', '', '', '068c6504-e8a6-4c09-8ef7-61e96d73027c', 26, '2024-04-16 18:18:36'),
(125, '', '', '', 'thurzobence98@gmail.com', '', '', '', '068c6504-e8a6-4c09-8ef7-61e96d73027c', 27, '2024-04-16 18:18:36');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `storage`
--

CREATE TABLE `storage` (
  `Id` int(11) NOT NULL,
  `Existing` int(20) NOT NULL,
  `Sold` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `PhoneNumber` int(20) NOT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20240220174325_Webshop', '8.0.2'),
('20240225142415_Webshop', '8.0.2'),
('20240304091316_Webshop2', '8.0.2'),
('20240306152256_Webshop4', '8.0.2'),
('20240317062026_PasswordResetModel', '8.0.2');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`);

--
-- A tábla indexei `aspnetroles`
--
ALTER TABLE `aspnetroles`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `RoleNameIndex` (`NormalizedName`);

--
-- A tábla indexei `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetUserClaims_UserId` (`UserId`);

--
-- A tábla indexei `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  ADD KEY `IX_AspNetUserLogins_UserId` (`UserId`);

--
-- A tábla indexei `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD PRIMARY KEY (`UserId`,`RoleId`),
  ADD KEY `IX_AspNetUserRoles_RoleId` (`RoleId`);

--
-- A tábla indexei `aspnetusers`
--
ALTER TABLE `aspnetusers`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  ADD KEY `EmailIndex` (`NormalizedEmail`);

--
-- A tábla indexei `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD PRIMARY KEY (`UserId`,`LoginProvider`,`Name`);

--
-- A tábla indexei `merchant`
--
ALTER TABLE `merchant`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `UserId` (`UserId`);

--
-- A tábla indexei `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Id`);

--
-- A tábla indexei `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `UserId` (`UserId`),
  ADD KEY `TIDID` (`TIDID`);

--
-- A tábla indexei `storage`
--
ALTER TABLE `storage`
  ADD PRIMARY KEY (`Id`);

--
-- A tábla indexei `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);

--
-- A tábla indexei `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `merchant`
--
ALTER TABLE `merchant`
  MODIFY `Id` int(110) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT a táblához `product`
--
ALTER TABLE `product`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `purchase`
--
ALTER TABLE `purchase`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT a táblához `storage`
--
ALTER TABLE `storage`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `merchant`
--
ALTER TABLE `merchant`
  ADD CONSTRAINT `merchant_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `purchase_ibfk_2` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `purchase_ibfk_3` FOREIGN KEY (`TIDID`) REFERENCES `merchant` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
