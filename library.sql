-- MySQL Database Dump generated from T-SQL script
CREATE DATABASE IF NOT EXISTS `Library` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `Library`;

-- Schema for AccTransaction
DROP TABLE IF EXISTS `AccTransaction`;
CREATE TABLE `AccTransaction` (
  `AccTransNumber` BIGINT AUTO_INCREMENT NOT NULL,
  `TransHeadNumber` INT NOT NULL,
  `TransTypeNumber` SMALLINT NOT NULL,
  `CompanyNumber` TINYINT NULL,
  `TransactionDate` DATE NULL,
  `ReconcileDate` DATE NULL,
  `LedgerNumberBook` INT NULL,
  `LedgerNumberHead` INT NULL,
  `CostCentreNumber` INT NULL,
  `MemberNumber` INT NULL,
  `TransactionAmount` DOUBLE NULL,
  `TransactionRemarks` VARCHAR(50) NULL,
  `CostCentreNumberBook` INT NULL,
  `CostCentreNumberHead` INT NULL,
  `LocationNumber` TINYINT NULL,
  PRIMARY KEY (`AccTransNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `AccTransaction` (`AccTransNumber`, `TransHeadNumber`, `TransTypeNumber`, `CompanyNumber`, `TransactionDate`, `ReconcileDate`, `LedgerNumberBook`, `LedgerNumberHead`, `CostCentreNumber`, `MemberNumber`, `TransactionAmount`, `TransactionRemarks`, `CostCentreNumberBook`, `CostCentreNumberHead`, `LocationNumber`) VALUES
  (92, 1, 14, NULL, '2024-04-05', '2024-04-05', 1, 10012, NULL, NULL, 5, 'RT.NO.7763', 0, 0, 0),
  (93, 1, 14, NULL, '2024-04-05', '2024-04-05', 1, 10015, NULL, NULL, 3, '', 0, 0, 0),
  (94, 1, 14, NULL, '2024-04-05', '2024-04-05', 1, 10016, NULL, NULL, 2, '', 0, 0, 0),
  (95, 1, 14, NULL, '2024-04-05', '2024-04-05', 1, 10014, NULL, NULL, 25, '', 0, 0, 0),
  (96, 1, 14, NULL, '2024-04-05', '2024-04-05', 1, 602, NULL, NULL, 15, '', 0, 0, 0),
  (97, 2, 14, NULL, '2024-04-16', '2024-04-16', 1, 10013, NULL, NULL, 100, 'RT.NO.7764', 0, 0, 0),
  (98, 3, 14, NULL, '2024-04-18', '2024-04-18', 1, 10023, NULL, NULL, 12360, '', 0, 0, 0),
  (99, 3, 14, NULL, '2024-04-18', '2024-04-18', 10022, 1, NULL, NULL, 12360, '', 0, 0, 0),
  (100, 4, 14, NULL, '2024-04-28', '2024-04-28', 1, 10012, NULL, NULL, 5, 'RT.NO.7765', 0, 0, 0),
  (101, 4, 14, NULL, '2024-04-28', '2024-04-28', 1, 10015, NULL, NULL, 3, '', 0, 0, 0),
  (102, 4, 14, NULL, '2024-04-28', '2024-04-28', 1, 10016, NULL, NULL, 2, '', 0, 0, 0),
  (103, 4, 14, NULL, '2024-04-28', '2024-04-28', 1, 10014, NULL, NULL, 25, '', 0, 0, 0),
  (104, 4, 14, NULL, '2024-04-28', '2024-04-28', 1, 10013, NULL, NULL, 3, '', 0, 0, 0),
  (105, 5, 14, NULL, '2024-04-28', '2024-04-28', 1, 10012, NULL, NULL, 5, 'RT.NO.7766', 0, 0, 0),
  (106, 5, 14, NULL, '2024-04-28', '2024-04-28', 1, 10015, NULL, NULL, 3, '', 0, 0, 0),
  (107, 5, 14, NULL, '2024-04-28', '2024-04-28', 1, 10016, NULL, NULL, 2, '', 0, 0, 0),
  (108, 5, 14, NULL, '2024-04-28', '2024-04-28', 1, 602, NULL, NULL, 3, '', 0, 0, 0),
  (109, 5, 14, NULL, '2024-04-28', '2024-04-28', 1, 10014, NULL, NULL, 25, '', 0, 0, 0),
  (110, 6, 14, NULL, '2024-04-29', '2024-04-29', 1, 10017, NULL, NULL, 100, 'RT.NO.7767', 0, 0, 0),
  (116, 7, 14, NULL, '2024-05-05', '2024-05-05', 1, 10012, NULL, NULL, 5, 'RT.NO.7768', 0, 0, 0),
  (117, 7, 14, NULL, '2024-05-05', '2024-05-05', 1, 10015, NULL, NULL, 3, '', 0, 0, 0),
  (118, 7, 14, NULL, '2024-05-05', '2024-05-05', 1, 10016, NULL, NULL, 2, '', 0, 0, 0),
  (119, 7, 14, NULL, '2024-05-05', '2024-05-05', 1, 10013, NULL, NULL, 5, '', 0, 0, 0),
  (120, 7, 14, NULL, '2024-05-05', '2024-05-05', 1, 10014, NULL, NULL, 50, '', 0, 0, 0),
  (121, 1, 11, NULL, '2024-05-05', '2024-05-05', 1, 10018, NULL, NULL, 2500, '', 0, 0, 0),
  (122, 2, 11, NULL, '2024-05-07', '2024-05-07', 1, 10022, NULL, NULL, 12360, 'WITHDRAWAL AS PER CHEQUE', 0, 0, 0),
  (124, 3, 12, NULL, '2024-05-07', '2024-05-07', 10044, 1, NULL, NULL, 12360, 'LIBRARIAN ALLOWANCE PAID', 0, 0, 0),
  (125, 4, 12, NULL, '2024-05-18', '2024-05-18', 10056, 1, NULL, NULL, 1950, 'kasera vaataka-300,tea-300 board-1050', 0, 0, 0),
  (126, 8, 14, NULL, '2024-05-18', '2024-05-18', 1, 10015, NULL, NULL, 3, '', 0, 0, 0),
  (127, 8, 14, NULL, '2024-05-18', '2024-05-18', 1, 10016, NULL, NULL, 2, '', 0, 0, 0),
  (128, 8, 14, NULL, '2024-05-18', '2024-05-18', 1, 10012, NULL, NULL, 5, '', 0, 0, 0),
  (129, 8, 14, NULL, '2024-05-18', '2024-05-18', 1, 10029, NULL, NULL, 500, '', 0, 0, 0);

-- Schema for AccTransDetails
DROP TABLE IF EXISTS `AccTransDetails`;
CREATE TABLE `AccTransDetails` (
  `AccTransNumber` BIGINT NULL,
  `TransHeadNumber` INT NULL,
  `TransTypeNumber` SMALLINT NULL,
  `TransactionDate` DATE NULL,
  `ReconcileDate` DATE NULL,
  `CostCentreNumber` INT NULL,
  `MemberNumber` INT NULL,
  `CustomerNumber` INT NULL,
  `LedgerDebitAmount` DOUBLE NULL,
  `LedgerCreditAmount` DOUBLE NULL,
  `TransactionRemarks` VARCHAR(150) NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for ConfigCompany
DROP TABLE IF EXISTS `ConfigCompany`;
CREATE TABLE `ConfigCompany` (
  `CompanyNumber` TINYINT NOT NULL,
  `CompanyName` VARCHAR(50) NULL,
  `CompanyStatus` TINYINT NULL,
  `CompanyCode` VARCHAR(25) NULL,
  `CompanyRemarks` VARCHAR(100) NULL,
  `CompanyAddress` VARCHAR(50) NULL,
  `CompanyPlace` VARCHAR(50) NULL,
  `CompanyPost` VARCHAR(50) NULL,
  `ComPINCode` VARCHAR(50) NULL,
  `CompanyDistrict` VARCHAR(50) NULL,
  `CompanyPhone` VARCHAR(50) NULL,
  `CompanyEMail` VARCHAR(50) NULL,
  `CompanyWebSite` VARCHAR(50) NULL,
  `ComAccName` VARCHAR(50) NULL,
  `ComAccNumber` VARCHAR(50) NULL,
  `ComBankName` VARCHAR(50) NULL,
  `ComBankBranch` VARCHAR(50) NULL,
  `ComGSTNumber` VARCHAR(50) NULL,
  `ComPANCard` VARCHAR(50) NULL,
  `ComRegNumber` VARCHAR(50) NULL,
  `ComIFSCNumber` VARCHAR(50) NULL,
  `StateNumber` SMALLINT NULL,
  `CompanyLicNo01` VARCHAR(50) NULL,
  `CompanyLicNo02` VARCHAR(50) NULL,
  `LicenseExpiryDate` VARCHAR(50) NULL,
  `CustomerNumber` INT NULL,
  `ServerNumber` INT NULL,
  `CustomizeNumber` INT NULL,
  `CompanyTitle` VARCHAR(50) NULL,
  `ApplicationNumber` INT NULL,
  `ImageStreamValue` LONGBLOB NULL,
  `RequestNumber` INT NULL,
  `LicenseNumber` INT NULL,
  PRIMARY KEY (`CompanyNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `ConfigCompany` (`CompanyNumber`, `CompanyName`, `CompanyStatus`, `CompanyCode`, `CompanyRemarks`, `CompanyAddress`, `CompanyPlace`, `CompanyPost`, `ComPINCode`, `CompanyDistrict`, `CompanyPhone`, `CompanyEMail`, `CompanyWebSite`, `ComAccName`, `ComAccNumber`, `ComBankName`, `ComBankBranch`, `ComGSTNumber`, `ComPANCard`, `ComRegNumber`, `ComIFSCNumber`, `StateNumber`, `CompanyLicNo01`, `CompanyLicNo02`, `LicenseExpiryDate`, `CustomerNumber`, `ServerNumber`, `CustomizeNumber`, `CompanyTitle`, `ApplicationNumber`, `ImageStreamValue`, `RequestNumber`, `LicenseNumber`) VALUES
  (1, 'KASTUBA SMARAKA VAYANASALA', 0, '111901250201', '', 'EAST NADA', 'ELAMKUNNAPUZHA', 'ELAMKUNNAPUZHA', '682503', 'ERNAKULAM', '9048123253', 'kgpradeep753@gmail.com', 'nil', '', '', '', '', '', '', '3087', '', 18, '', '', '-  -', 111593, NULL, 0, '', 111901, NULL, 10521, 0);

-- Schema for ConfigOptionAccounts
DROP TABLE IF EXISTS `ConfigOptionAccounts`;
CREATE TABLE `ConfigOptionAccounts` (
  `OptionNumber` INT NOT NULL,
  `OptionName` VARCHAR(50) NULL,
  `OptionValue` VARCHAR(50) NULL,
  `OptionType` TINYINT NULL,
  `OptionRemarks` VARCHAR(150) NULL,
  PRIMARY KEY (`OptionNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `ConfigOptionAccounts` (`OptionNumber`, `OptionName`, `OptionValue`, `OptionType`, `OptionRemarks`) VALUES
  (1, 'Enable bank reconciliation', '0', NULL, NULL),
  (11, 'Print receipt voucher on save', '0', NULL, NULL),
  (12, 'Print payment voucher on save', '0', NULL, NULL),
  (15, 'Letter Case Ledger', '4', NULL, NULL),
  (16, 'Letter Case Other Masters', '0', NULL, NULL),
  (21, 'Allow random deletion in receipt', '1', NULL, NULL),
  (22, 'Allow random deletion in payment', '1', NULL, NULL),
  (31, 'Calculate opening stock value automatically', '0', NULL, NULL),
  (32, 'Calculate closing stock value automatically', '0', NULL, NULL);

-- Schema for ConfigOptionGeneral
DROP TABLE IF EXISTS `ConfigOptionGeneral`;
CREATE TABLE `ConfigOptionGeneral` (
  `OptionNumber` INT NOT NULL,
  `OptionName` VARCHAR(50) NULL,
  `OptionValue` VARCHAR(50) NULL,
  `OptionType` TINYINT NULL,
  `OptionRemarks` VARCHAR(150) NULL,
  PRIMARY KEY (`OptionNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for ConfigPrivilegeItems
DROP TABLE IF EXISTS `ConfigPrivilegeItems`;
CREATE TABLE `ConfigPrivilegeItems` (
  `PrivilegeNumber` INT NOT NULL,
  `PrivilegeName` VARCHAR(50) NULL,
  `PrivilegeStatus` TINYINT NULL,
  `PrivilegeNumberParent` INT NULL,
  `PrivilegeRemarks` VARCHAR(150) NULL,
  PRIMARY KEY (`PrivilegeNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for ConfigPrivilegeValues
DROP TABLE IF EXISTS `ConfigPrivilegeValues`;
CREATE TABLE `ConfigPrivilegeValues` (
  `PrivilegeNumber` INT NOT NULL,
  `UserNumber` SMALLINT NOT NULL,
  `PrivilegeValue` VARCHAR(10) NULL,
  PRIMARY KEY (`UserNumber`, `PrivilegeNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for ConfigReportItems
DROP TABLE IF EXISTS `ConfigReportItems`;
CREATE TABLE `ConfigReportItems` (
  `SettingsNumber` INT NOT NULL,
  `SettingsName` VARCHAR(50) NULL,
  `SettingsValue` VARCHAR(25) NULL,
  PRIMARY KEY (`SettingsNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for ConfigReportValues
DROP TABLE IF EXISTS `ConfigReportValues`;
CREATE TABLE `ConfigReportValues` (
  `SettingsNumber` BIGINT NOT NULL,
  `ReportNumber` BIGINT NOT NULL,
  `SettingsValue` VARCHAR(50) NULL,
  PRIMARY KEY (`SettingsNumber`, `ReportNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for ConfigSoftwareLicense
DROP TABLE IF EXISTS `ConfigSoftwareLicense`;
CREATE TABLE `ConfigSoftwareLicense` (
  `OptionNumber` INT NOT NULL,
  `OptionName` VARCHAR(50) NULL,
  `OptionValue` VARCHAR(250) NULL,
  `OptionType` TINYINT NULL,
  `OptionRemarks` VARCHAR(150) NULL,
  PRIMARY KEY (`OptionNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `ConfigSoftwareLicense` (`OptionNumber`, `OptionName`, `OptionValue`, `OptionType`, `OptionRemarks`) VALUES
  (101, NULL, 'UqnwW2+rpGUs5pk08yGRAO7hrqawGrZ7UYFytzHHNgI=', 1, NULL),
  (102, NULL, 'p7OWHiF0Mo2jQSeK2NFpUQ==', 1, NULL),
  (103, NULL, 'SNAJznMLTWs6MBYz3LM+Mm6vNPPhRltjj0VM8jhBrFsXxxDgl0TXxLg4EyZO0S6c', 1, NULL),
  (104, NULL, 'JQwBsSLNqKMvKRcD3dgziw==', 1, NULL),
  (105, NULL, 'vtSGgxWr84gJ57LXi89rxA==', 1, NULL),
  (106, NULL, 'vtSGgxWr84gJ57LXi89rxA==', 1, NULL),
  (107, NULL, '4vd9oAuSkwLdi5ZkzyjD5w==', 1, NULL),
  (108, NULL, '', 1, NULL),
  (109, NULL, 'Fb63Khw/JDHmlpE4m1miPQ==', 1, NULL),
  (111, NULL, 'P4xdOv41KJabb/nk56ubbg==', 2, NULL),
  (112, NULL, 'uptqw0hrdZIHDq1JqjXd0PsaS52z01JZC5zmWrQ0NroFCSU/d73HRL6jUf6ndMoDHNA8Phgfyiv5MVKooP0eGQ==', 2, NULL),
  (113, NULL, 'YcjN3ND8FwweQ6cW1TAkBORlZd7OtQ+4fZ93jMvNHbk=', 2, NULL),
  (114, NULL, 'Imt1f+0dY0YlUmYH+/fw1gDTRw2T/TLB44S5o61HX1o=', 2, NULL),
  (115, NULL, '', 2, NULL),
  (116, NULL, 'IGxGAEQUG9F6BqshGFqaUNPB8EDDw1NC6k5q+KM3tiu9qAbB9lABhrJFENxn00zm', 2, NULL),
  (131, NULL, 'cJ6mYLDTvQoeU+qrDXiggUUAFzlE2LPqMcdE6fXCmD4=', 4, NULL),
  (132, NULL, 'jQdSTwSEsdpv5roRkN6CLQ==', 4, NULL),
  (133, NULL, 'aVRaD1cfpGTbgSDqxsfa7S4YWORTg9rQM5qHHokeTgs=', 4, NULL),
  (134, NULL, 'yyW0L3ilJ+X/CSBh2JyiMg==', 4, NULL),
  (135, NULL, '', 4, NULL),
  (141, NULL, '8SdY3KQoQhsi/ydPl/GpHQ==', 5, NULL),
  (142, NULL, 'gd0aREGurq83N3r8mSlYQQ==', 5, NULL),
  (143, NULL, '4zW1Ow2/BDzWMO4q/Rsdfw==', 5, NULL),
  (144, NULL, 'vtSGgxWr84gJ57LXi89rxA==', 5, NULL),
  (145, NULL, 'jCJFt398b7Rncax38n/Evg==', 5, NULL);

-- Schema for ConfigSoftwareNodes
DROP TABLE IF EXISTS `ConfigSoftwareNodes`;
CREATE TABLE `ConfigSoftwareNodes` (
  `OptionNumber` INT NOT NULL,
  `OptionName` VARCHAR(50) NULL,
  `OptionValue` VARCHAR(250) NULL,
  `OptionType` TINYINT NULL,
  `OptionRemarks` VARCHAR(150) NULL,
  PRIMARY KEY (`OptionNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for ConfigSoftwareWarning
DROP TABLE IF EXISTS `ConfigSoftwareWarning`;
CREATE TABLE `ConfigSoftwareWarning` (
  `SettingsNumber` SMALLINT NOT NULL,
  `SettingsName` VARCHAR(50) NULL,
  `SettingsStatus` TINYINT NULL,
  `SettingsValue` VARCHAR(2500) NULL,
  `SettingsValue02` VARCHAR(2500) NULL,
  `SettingsStartDate` INT NULL,
  `SettingsFrequency` INT NULL,
  `SettingsLastShown` INT NULL,
  `SettingsGroup` TINYINT NULL,
  `SettingsPassword` VARCHAR(50) NULL,
  `SettingsCode` VARCHAR(25) NULL,
  `SettingsRemarks` VARCHAR(150) NULL,
  PRIMARY KEY (`SettingsNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for ConfigTransNumber
DROP TABLE IF EXISTS `ConfigTransNumber`;
CREATE TABLE `ConfigTransNumber` (
  `TransSeriesNumber` SMALLINT NOT NULL,
  `TransTypeNumber` SMALLINT NULL,
  `SeriesNumber` TINYINT NULL,
  `YearNumber` TINYINT NULL,
  `TransactionNumber` INT NULL,
  `TransactionDate` DATE NULL,
  PRIMARY KEY (`TransSeriesNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `ConfigTransNumber` (`TransSeriesNumber`, `TransTypeNumber`, `SeriesNumber`, `YearNumber`, `TransactionNumber`, `TransactionDate`) VALUES
  (1, 14, 1, 20, 1, '2020-04-06'),
  (2, 11, 1, 23, 1, '2023-03-10'),
  (3, 11, 1, 24, 1, '2024-02-03'),
  (4, 14, 1, 24, 9, '2024-04-28'),
  (5, 12, 1, 24, 1, '2024-02-05'),
  (6, 13, 1, 24, 1, '2024-02-03'),
  (7, 20, 1, 24, 1, '2024-02-06'),
  (8, 14, 1, 22, 1, '2021-04-01'),
  (9, 11, 1, 25, 3, '2024-05-07'),
  (10, 14, 1, 25, 9, '2024-05-18'),
  (11, 12, 1, 25, 3, '2024-05-18'),
  (12, 20, 1, 25, 1, '2024-04-01'),
  (13, 13, 1, 25, 1, '2024-04-01');

-- Schema for ConfigTransType
DROP TABLE IF EXISTS `ConfigTransType`;
CREATE TABLE `ConfigTransType` (
  `TransTypeNumber` SMALLINT NOT NULL,
  `TransTypeName` VARCHAR(50) NULL,
  `TransHeadNumber` BIGINT NULL,
  `TransTypeGroup` TINYINT NULL,
  `TransTypeStatus` TINYINT NULL,
  `TransTypeCode` VARCHAR(25) NULL,
  `TransTypeRemarks` VARCHAR(150) NULL,
  PRIMARY KEY (`TransTypeNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for DDCClasses
DROP TABLE IF EXISTS `DDCClasses`;
CREATE TABLE `DDCClasses` (
  `ClassNumber` INT NULL,
  `ClassCode` VARCHAR(50) NULL,
  `ClassTitle` VARCHAR(70) NULL,
  `BaseNumber` INT NULL,
  `ClassRemarks` VARCHAR(50) NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `DDCClasses` (`ClassNumber`, `ClassCode`, `ClassTitle`, `BaseNumber`, `ClassRemarks`) VALUES
  (1, '1', 'Classification', 0, NULL),
  (2, '000', 'Generalitie', 1, NULL),
  (3, '100', 'Philosophy And Related Discipline', 1, NULL),
  (4, '200', 'Religion', 1, NULL),
  (5, '300', 'Social Science', 1, NULL),
  (6, '400', 'Language', 1, NULL),
  (7, '500', 'Pure Science', 1, NULL),
  (8, '600', 'Technology (Applied Science)', 1, NULL),
  (9, '700', 'The Arts', 1, NULL),
  (10, '800', 'Literature', 1, NULL),
  (13, '900', 'General Geography And History', 1, NULL),
  (12, '010', 'Bibliography', 2, NULL),
  (13, '020', 'Library And Infromation', 2, NULL),
  (14, '030', 'General Encyclopedic Work', 2, NULL),
  (15, '040', 'New Sample', 2, NULL),
  (16, '050', 'General Serials Publications', 2, NULL),
  (17, '060', 'General Organizations And Museology', 2, NULL),
  (18, '070', 'Journalism, Publishing, Newspapers', 2, NULL),
  (19, '080', 'General Collections', 2, NULL),
  (20, '090', 'Manuscripts And Book Rarities', 2, NULL),
  (21, '110', 'Metaphysics', 3, NULL),
  (22, '120', 'Epistemology, Causation, Humankind', 3, NULL),
  (23, '130', 'Paranormal Phenomina And Arts', 3, NULL),
  (24, '140', 'Specific Philosophical Viewpoints', 3, NULL),
  (25, '150', 'Psychology', 3, NULL),
  (26, '160', 'Logic', 3, NULL),
  (27, '170', 'Ethics (Moral Philosophy)', 3, NULL),
  (28, '180', 'Ancient, Medieval, Oriental', 3, NULL),
  (29, '190', 'Modern Western Philosophy', 3, NULL),
  (30, '210', 'Natural Religion', 4, NULL),
  (31, '220', 'Bible', 4, NULL),
  (32, '230', 'Chstrian Theology', 4, NULL),
  (33, '240', 'Chstrian Moral And Devotional', 4, NULL),
  (34, '250', 'Local Church And Religious Orders', 4, NULL),
  (35, '260', 'Social And Ecclesiastical Theology', 4, NULL),
  (36, '270', 'History And Geography Of Church', 4, NULL),
  (37, '280', 'Chstrian Denominations And Sects', 4, NULL),
  (38, '290', 'Other And Comparative Religions', 4, NULL),
  (39, '310', 'Statistics', 5, NULL),
  (40, '320', 'Political Science', 5, NULL),
  (41, '330', 'Economics', 5, NULL),
  (42, '340', 'Law', 5, NULL),
  (43, '350', 'Public Administration', 5, NULL),
  (44, '360', 'Social Problem And Service', 5, NULL),
  (45, '370', 'Education', 5, NULL),
  (46, '380', 'Commerce (Trade)', 5, NULL),
  (47, '390', 'Customs, Etiquette, Folklore', 5, NULL),
  (48, '410', 'Linguistics', 6, NULL),
  (49, '420', 'English And Anglo-Saxon Languages-420', 6, NULL),
  (50, '430', 'Germanic Languages, German', 6, NULL),
  (51, '440', 'Romance Languages, French', 6, NULL),
  (52, '450', 'Italian, Romanian, Rhaeto-Romanic', 6, NULL),
  (53, '460', 'Spanish And Portuguese Languages', 6, NULL),
  (54, '470', 'Italic Language Latin', 6, NULL),
  (55, '480', 'Hellenic Classical Greek', 6, NULL),
  (56, '490', 'Other Languages', 6, NULL),
  (57, '510', 'Mathematics', 7, NULL),
  (58, '520', 'Astronomy And Allied Sciences', 7, NULL),
  (59, '530', 'Physics', 7, NULL),
  (60, '540', 'Chemistry And Allied Acience', 7, NULL),
  (61, '550', 'Science Of Earth And Other World', 7, NULL),
  (62, '560', 'Paleontology', 7, NULL),
  (63, '570', 'Life Science', 7, NULL),
  (64, '580', 'Botanical Science', 7, NULL),
  (65, '590', 'Zoological Science', 7, NULL),
  (66, '610', 'Medical Science', 8, NULL),
  (67, '620', 'Engineering And Allied Operations', 8, NULL),
  (68, '630', 'Agriculture And Related Technologies', 8, NULL),
  (69, '640', 'Home Economics And Family Living', 8, NULL),
  (70, '650', 'Management And Auxiliary Services', 8, NULL),
  (71, '660', 'Chemical And Related Technologies', 8, NULL),
  (72, '670', 'Manufactures', 8, NULL),
  (73, '680', 'Manufactures For Specific Use', 8, NULL),
  (74, '690', 'Buildings', 8, NULL),
  (75, '710', 'Civil And Landscape Arts', 9, NULL),
  (76, '720', 'Architecture', 9, NULL),
  (77, '730', 'Plastic Arts Sculpture', 9, NULL),
  (78, '740', 'Drawing, Decorative And Minor Arts', 9, NULL),
  (79, '750', 'Painting And Paintings', 9, NULL),
  (80, '760', 'Graphics Arts And Prints', 9, NULL),
  (81, '770', 'Photography And Photopraphs', 9, NULL),
  (82, '780', 'Music', 9, NULL),
  (83, '790', 'Recreational And Performing Arts', 9, NULL),
  (84, '810', 'American Literature In English', 10, NULL),
  (49, '820', 'English And Anglo-Saxon', 10, NULL),
  (86, '830', 'Literature Of Germanic Language', 10, NULL),
  (87, '840', 'Literature Of Romance Language', 10, NULL),
  (88, '850', 'Italian, Romanian, Rhaeto-Romanic', 10, NULL),
  (89, '860', 'Spanish And Portuguese Languages', 10, NULL),
  (90, '870', 'Italic Iterature Latin', 10, NULL),
  (91, '880', 'Hellenic Literature Greek', 10, NULL),
  (92, '890', 'Literature Of Other Languages', 10, NULL),
  (93, '910', 'General Geography Trave', 11, NULL),
  (94, '920', 'General Biography And Genealogy', 11, NULL),
  (95, '930', 'General History Of Ancient World', 11, NULL),
  (96, '940', 'General History Of Europe', 11, NULL),
  (97, '950', 'General History Of Asia', 11, NULL),
  (98, '960', 'General History Of Africa', 11, NULL),
  (99, '970', 'General History Of North America', 11, NULL),
  (100, '980', 'General History Of South America', 11, NULL);

INSERT INTO `DDCClasses` (`ClassNumber`, `ClassCode`, `ClassTitle`, `BaseNumber`, `ClassRemarks`) VALUES
  (101, '990', 'General History Of Other Areas', 11, NULL);

-- Schema for ExcelBookMaster
DROP TABLE IF EXISTS `ExcelBookMaster`;
CREATE TABLE `ExcelBookMaster` (
  `BookNumber` BIGINT NULL,
  `BookName` TEXT NULL,
  `BookRemarks` TEXT NULL,
  `AutherName` TEXT NULL,
  `BookClass` TEXT NULL,
  `BookCode` TEXT NULL,
  `CallNumber` TEXT NULL,
  `BookPrice` DOUBLE NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for ExcelMemberMaster
DROP TABLE IF EXISTS `ExcelMemberMaster`;
CREATE TABLE `ExcelMemberMaster` (
  `MemberNumber` INT NOT NULL,
  `MemberName` VARCHAR(150) NULL,
  `MemberType` VARCHAR(50) NULL,
  `MemberAddress` VARCHAR(150) NULL,
  `MemberPlace` VARCHAR(150) NULL,
  `MemberPost` VARCHAR(150) NULL,
  `MemberPhone` VARCHAR(50) NULL,
  `MemberAge` TINYINT NULL,
  `MemberSex` TINYINT NULL,
  `MemBirthDate` DATE NULL,
  `MemberRemarks` VARCHAR(250) NULL,
  `MemberTypeNumber` TINYINT NULL,
  `MemberStatus` TINYINT NULL,
  PRIMARY KEY (`MemberNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for ImageMaster
DROP TABLE IF EXISTS `ImageMaster`;
CREATE TABLE `ImageMaster` (
  `MasterTypeNumber` INT NOT NULL,
  `MasterKeyNumber` BIGINT NOT NULL,
  `ImageStreamValue` LONGBLOB NULL,
  PRIMARY KEY (`MasterTypeNumber`, `MasterKeyNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for MstrAreaCodes
DROP TABLE IF EXISTS `MstrAreaCodes`;
CREATE TABLE `MstrAreaCodes` (
  `AreaCodeNumber` INT NOT NULL,
  `AreaCodeName` VARCHAR(50) NULL,
  `AreaCodeStatus` TINYINT NULL,
  PRIMARY KEY (`AreaCodeNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for MstrAuthor
DROP TABLE IF EXISTS `MstrAuthor`;
CREATE TABLE `MstrAuthor` (
  `AuthorNumber` INT NOT NULL,
  `AuthorName` VARCHAR(100) NULL,
  `AuthorStatus` TINYINT NULL,
  `AuthorCode` VARCHAR(50) NULL,
  `AuthorRemarks` VARCHAR(50) NULL,
  `AuthorPlace` VARCHAR(50) NULL,
  `AuthorBirthDate` DATETIME NULL,
  `LanguageNumber` TINYINT NULL,
  PRIMARY KEY (`AuthorNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for MstrAuthorAlias
DROP TABLE IF EXISTS `MstrAuthorAlias`;
CREATE TABLE `MstrAuthorAlias` (
  `AuthorNumber` INT NOT NULL,
  `AuthorPenName` VARCHAR(50) NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for MstrAuthorType
DROP TABLE IF EXISTS `MstrAuthorType`;
CREATE TABLE `MstrAuthorType` (
  `AuthorTypeNumber` TINYINT NOT NULL,
  `AuthorTypeName` VARCHAR(50) NULL,
  `AuthorTypeStatus` TINYINT NULL,
  PRIMARY KEY (`AuthorTypeNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for MstrBookKeywords
DROP TABLE IF EXISTS `MstrBookKeywords`;
CREATE TABLE `MstrBookKeywords` (
  `BookNumber` INT NOT NULL,
  `BookKeywords` VARCHAR(50) NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for MstrBookStock
DROP TABLE IF EXISTS `MstrBookStock`;
CREATE TABLE `MstrBookStock` (
  `BookNumber` INT NOT NULL,
  `BookName` VARCHAR(150) NULL,
  `BookStatus` TINYINT NULL,
  `BookCode` VARCHAR(50) NULL,
  `BookRemarks` VARCHAR(50) NULL,
  `CallNumber` VARCHAR(50) NULL,
  `ISBNumber` VARCHAR(50) NULL,
  `AccessionNumber` VARCHAR(50) NULL,
  `AuthorNumber` INT NULL,
  `ClassNumber` INT NULL,
  `PublisherNumber` INT NULL,
  `InvoiceNumber` VARCHAR(50) NULL,
  `InvoiceDate` DATETIME NULL,
  `BookPrice` DOUBLE NULL,
  `LanguageNumber` TINYINT NULL,
  `CategoryNumber` TINYINT NULL,
  PRIMARY KEY (`BookNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for MstrBookType
DROP TABLE IF EXISTS `MstrBookType`;
CREATE TABLE `MstrBookType` (
  `BookTypeNumber` TINYINT NOT NULL,
  `BookTypeName` VARCHAR(50) NULL,
  `BookTypeStatus` TINYINT NULL,
  PRIMARY KEY (`BookTypeNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for MstrCategory
DROP TABLE IF EXISTS `MstrCategory`;
CREATE TABLE `MstrCategory` (
  `CategoryNumber` TINYINT NOT NULL,
  `CategoryName` VARCHAR(50) NULL,
  `CategoryStatus` TINYINT NULL,
  PRIMARY KEY (`CategoryNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for MstrClassification
DROP TABLE IF EXISTS `MstrClassification`;
CREATE TABLE `MstrClassification` (
  `ClassNumber` INT NOT NULL,
  `ClassName` VARCHAR(150) NULL,
  `ClassStatus` TINYINT NULL,
  `ClassCode` VARCHAR(50) NULL,
  `ClassRemarks` VARCHAR(250) NULL,
  `ClassNumberParent` INT NULL,
  PRIMARY KEY (`ClassNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for MstrCostCentres
DROP TABLE IF EXISTS `MstrCostCentres`;
CREATE TABLE `MstrCostCentres` (
  `CostCentreNumber` INT NOT NULL,
  `CostCentreName` VARCHAR(50) NULL,
  `CostCentreStatus` TINYINT NULL,
  `CostCentreRemarks` VARCHAR(50) NULL,
  `LedgerNumberParent` INT NULL,
  `PriorityNumber` INT NULL,
  `CostCentreCode` VARCHAR(25) NULL,
  `CostGroupNumber` SMALLINT NULL,
  PRIMARY KEY (`CostCentreNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for MstrCostGroup
DROP TABLE IF EXISTS `MstrCostGroup`;
CREATE TABLE `MstrCostGroup` (
  `CostGroupNumber` SMALLINT NOT NULL,
  `CostGroupName` VARCHAR(50) NULL,
  `CostGroupStatus` TINYINT NULL,
  PRIMARY KEY (`CostGroupNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for MstrDistributor
DROP TABLE IF EXISTS `MstrDistributor`;
CREATE TABLE `MstrDistributor` (
  `DistributorNumber` SMALLINT NOT NULL,
  `DistributorName` VARCHAR(50) NOT NULL,
  `DistributorStatus` TINYINT NULL,
  `DistributorAddress` VARCHAR(50) NULL,
  `DistributorPlace` VARCHAR(50) NULL,
  `DistributorPhone` VARCHAR(50) NULL,
  PRIMARY KEY (`DistributorNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for MstrDocuments
DROP TABLE IF EXISTS `MstrDocuments`;
CREATE TABLE `MstrDocuments` (
  `DocumentNumber` INT NOT NULL,
  `DocumentName` VARCHAR(50) NULL,
  `DocumentStatus` TINYINT NULL,
  PRIMARY KEY (`DocumentNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for MstrFiscalYear
DROP TABLE IF EXISTS `MstrFiscalYear`;
CREATE TABLE `MstrFiscalYear` (
  `YearNumber` TINYINT NOT NULL,
  `YearDescription` VARCHAR(50) NULL,
  `YearStartDate` DATE NULL,
  `YearStopDate` DATE NULL,
  `CurrentYear` TINYINT NULL,
  `YearLocked` TINYINT NULL,
  `YearRemarks` VARCHAR(150) NULL,
  `OpeningStock` DATE NULL,
  `YearShortName` VARCHAR(25) NULL,
  PRIMARY KEY (`YearNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for MstrIssueTypes
DROP TABLE IF EXISTS `MstrIssueTypes`;
CREATE TABLE `MstrIssueTypes` (
  `IssueTypeNumber` INT NOT NULL,
  `IssueTypeName` VARCHAR(50) NULL,
  `IssueTypeStatus` TINYINT NULL,
  `IssueTypeCode` VARCHAR(50) NULL,
  `IssueTypeRemarks` VARBINARY(50) NULL,
  `AllowedDays` INT NULL,
  PRIMARY KEY (`IssueTypeNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for MstrLanguage
DROP TABLE IF EXISTS `MstrLanguage`;
CREATE TABLE `MstrLanguage` (
  `LanguageNumber` TINYINT NOT NULL,
  `LanguageName` VARCHAR(50) NULL,
  `LanguageStatus` TINYINT NULL,
  PRIMARY KEY (`LanguageNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for MstrLedger
DROP TABLE IF EXISTS `MstrLedger`;
CREATE TABLE `MstrLedger` (
  `LedgerNumber` INT NOT NULL,
  `LedgerCode` VARCHAR(50) NULL,
  `LedgerName` VARCHAR(50) NULL,
  `LedgerStatus` TINYINT NULL,
  `LedgerGroupNumber` SMALLINT NULL,
  `LedgerRemarks` VARCHAR(150) NULL,
  `LedgerSortOrder` INT NULL,
  PRIMARY KEY (`LedgerNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for MstrLedgerDetails
DROP TABLE IF EXISTS `MstrLedgerDetails`;
CREATE TABLE `MstrLedgerDetails` (
  `LedgerNumber` INT NOT NULL,
  `HouseName` VARCHAR(50) NULL,
  `LedgerPlace` VARCHAR(50) NULL,
  `LedgerPost` VARCHAR(50) NULL,
  `PostalCode` VARCHAR(50) NULL,
  `PhoneNumber` VARCHAR(50) NULL,
  `GSTNumber` VARCHAR(50) NULL,
  `StateNumber` TINYINT NULL,
  `PriceTypeNumber` TINYINT NULL,
  `AreaCodeNumber` SMALLINT NULL,
  `LedgerCreditDays` SMALLINT NULL,
  `LedgerCreditLimit` DOUBLE NULL,
  `DailyWagesAmount` DOUBLE NULL,
  `LedgerNumberAgent` INT NULL,
  `PANCardNumber` VARCHAR(50) NULL,
  `BankNameLedger` VARCHAR(50) NULL,
  `BankAccNumber` VARCHAR(50) NULL,
  `BankBranchName` VARCHAR(50) NULL,
  `BankIFSCNumber` VARCHAR(50) NULL,
  `VoucherMatching` TINYINT NULL,
  `LedgerSortOrder` INT NULL,
  `LedgerEmail` VARCHAR(150) NULL,
  `ContactPerson` VARCHAR(150) NULL,
  `ChequeNextNumber` BIGINT NULL,
  `ChequeDesignName` VARCHAR(150) NULL,
  `LedgerDistance` VARCHAR(50) NULL,
  `LedgerPrintName` VARCHAR(150) NULL,
  `SeriesNumber` SMALLINT NULL,
  `CostGroupNumber` SMALLINT NULL,
  `LedgerNumberSalesman` INT NULL,
  PRIMARY KEY (`LedgerNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for MstrLedgerGroup
DROP TABLE IF EXISTS `MstrLedgerGroup`;
CREATE TABLE `MstrLedgerGroup` (
  `LedgerGroupNumber` SMALLINT NOT NULL,
  `LedgerGroupCode` VARCHAR(25) NULL,
  `LedgerGroupName` VARCHAR(50) NOT NULL,
  `LedgerGroupStatus` TINYINT NULL,
  `LedgerGroupRemarks` VARCHAR(150) NULL,
  `LedgerGroupNumberParent` SMALLINT NULL,
  `CreatedDate` DATETIME NULL,
  `UserNumberCreated` SMALLINT NULL,
  `LedgerSortOrder` SMALLINT NULL,
  `LedgerNameDuplication` TINYINT NULL,
  `LedgerNumberJournal` INT NULL,
  PRIMARY KEY (`LedgerGroupNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for MstrMember
DROP TABLE IF EXISTS `MstrMember`;
CREATE TABLE `MstrMember` (
  `MemberNumber` BIGINT NULL,
  `MemberName` TEXT NULL,
  `PhoneHome` BIGINT NULL,
  `HouseName` TEXT NULL,
  `StudentSex` TEXT NULL,
  `MemBirthDate` DATETIME NULL,
  `MemberRemarks` TEXT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for MstrMemberClass
DROP TABLE IF EXISTS `MstrMemberClass`;
CREATE TABLE `MstrMemberClass` (
  `MemberClassNumber` TINYINT NOT NULL,
  `MemberClassName` VARCHAR(50) NULL,
  `MemberClassStatus` TINYINT NULL,
  `MembershipAmount` DOUBLE NULL,
  `SubscriptionAmount` DOUBLE NULL,
  `MemberClassRemarks` VARCHAR(50) NULL,
  PRIMARY KEY (`MemberClassNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for MstrMemberDetails
DROP TABLE IF EXISTS `MstrMemberDetails`;
CREATE TABLE `MstrMemberDetails` (
  `MemberNumber` INT NOT NULL,
  `GuardianName` VARCHAR(50) NULL,
  `Relationship` TINYINT NULL,
  `BloodGroup` TINYINT NULL,
  `RegistrationFees` DOUBLE NULL,
  `ConsultationFees` DOUBLE NULL,
  `MaritalStatus` TINYINT NULL,
  `EmployeeNumber` INT NULL,
  `MemberNumberAdvice` INT NULL,
  `MemberJoinDate` DATE NULL,
  `ApprovedDate` DATE NULL,
  `NomineeName` VARCHAR(50) NULL,
  `RelationNumberNominee` TINYINT NULL,
  `NomineeDocument` VARCHAR(50) NULL,
  `DocTypeNumberNominee` TINYINT NULL,
  PRIMARY KEY (`MemberNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for MstrMemberFamily
DROP TABLE IF EXISTS `MstrMemberFamily`;
CREATE TABLE `MstrMemberFamily` (
  `MemberNumber` INT NOT NULL,
  `SerialNumber` TINYINT NOT NULL,
  `MemberName` VARCHAR(50) NULL,
  `MemberGender` TINYINT NULL,
  `MemberAge` TINYINT NULL,
  `RelationNumber` INT NULL,
  `MaritalStatus` TINYINT NULL,
  `MemberRemarks` VARCHAR(150) NULL,
  PRIMARY KEY (`MemberNumber`, `SerialNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for MstrMemberType
DROP TABLE IF EXISTS `MstrMemberType`;
CREATE TABLE `MstrMemberType` (
  `MemberTypeNumber` TINYINT NOT NULL,
  `MemberTypeName` VARCHAR(50) NULL,
  `MemberTypeStatus` TINYINT NULL,
  `MemberTypeRemarks` VARCHAR(50) NULL,
  `MemberTypeCode` VARCHAR(25) NULL,
  `ApplicationFee` DOUBLE NULL,
  `MembershipAmount` DOUBLE NULL,
  `SubscriptionAmount` DOUBLE NULL,
  `WorkingFund` DOUBLE NULL,
  `DepositAmount` DOUBLE NULL,
  `OtherCharges` DOUBLE NULL,
  `MemberCodeNext` INT NULL,
  `MemberCodePrefix` VARCHAR(50) NULL,
  `IssueBookCount` TINYINT NULL,
  `IssueAllowedDays` TINYINT NULL,
  `IssueFineAmount` DOUBLE NULL,
  `IssueFineDays` INT NULL,
  `IssueRemarks` VARCHAR(50) NULL,
  PRIMARY KEY (`MemberTypeNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for MstrPublisher
DROP TABLE IF EXISTS `MstrPublisher`;
CREATE TABLE `MstrPublisher` (
  `PublisherNumber` SMALLINT NOT NULL,
  `PublisherName` VARCHAR(100) NOT NULL,
  `PublisherStatus` TINYINT NULL,
  `PublisherCode` VARCHAR(25) NULL,
  `PublisherRemarks` VARCHAR(250) NULL,
  `PublisherAddress` VARCHAR(100) NULL,
  `PublisherPlace` VARCHAR(100) NULL,
  `PublisherPhone` VARCHAR(50) NULL,
  PRIMARY KEY (`PublisherNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for MstrRelation
DROP TABLE IF EXISTS `MstrRelation`;
CREATE TABLE `MstrRelation` (
  `RelationNumber` INT NOT NULL,
  `RelationName` VARCHAR(50) NULL,
  `RelationStatus` TINYINT NULL,
  PRIMARY KEY (`RelationNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for MstrSeries
DROP TABLE IF EXISTS `MstrSeries`;
CREATE TABLE `MstrSeries` (
  `SeriesNumber` SMALLINT NOT NULL,
  `SeriesName` VARCHAR(50) NULL,
  `SeriesStatus` TINYINT NULL,
  `SeriesCode` VARCHAR(25) NULL,
  `SeriesRemarks` VARCHAR(150) NULL,
  `SeriesTypeNumber` TINYINT NULL,
  PRIMARY KEY (`SeriesNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for MstrStateCode
DROP TABLE IF EXISTS `MstrStateCode`;
CREATE TABLE `MstrStateCode` (
  `StateNumber` TINYINT NOT NULL,
  `StateName` VARCHAR(50) NULL,
  `StateStatus` TINYINT NULL,
  `StateCode` VARCHAR(10) NULL,
  `StateRemarks` VARCHAR(150) NULL,
  `StateOrder` TINYINT NULL,
  `StateType` VARCHAR(10) NULL,
  PRIMARY KEY (`StateNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for MstrUserLevels
DROP TABLE IF EXISTS `MstrUserLevels`;
CREATE TABLE `MstrUserLevels` (
  `UserLevelNumber` TINYINT NOT NULL,
  `UserLevelName` VARCHAR(50) NULL,
  `UserLevelStatus` TINYINT NULL,
  PRIMARY KEY (`UserLevelNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for MstrUsers
DROP TABLE IF EXISTS `MstrUsers`;
CREATE TABLE `MstrUsers` (
  `UserNumber` SMALLINT NOT NULL,
  `UserLevelNumber` TINYINT NULL,
  `UserName` VARCHAR(50) NULL,
  `UserPassword` VARCHAR(25) NULL,
  `UserStatus` TINYINT NULL,
  `UserRemarks` VARCHAR(150) NULL,
  `UserCode` VARCHAR(50) NULL,
  PRIMARY KEY (`UserNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for TransAccMatching
DROP TABLE IF EXISTS `TransAccMatching`;
CREATE TABLE `TransAccMatching` (
  `TransTypeNumberMain` SMALLINT NULL,
  `TransHeadNumberMain` INT NULL,
  `TransTypeNumberMatch` SMALLINT NULL,
  `TransHeadNumberMatch` INT NULL,
  `YearNumberOpening` TINYINT NULL,
  `TransactionAmount` DOUBLE NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for TransBookIssue
DROP TABLE IF EXISTS `TransBookIssue`;
CREATE TABLE `TransBookIssue` (
  `SlNo` DOUBLE NULL,
  `IssueDate` DATETIME NULL,
  `BookNumber` TEXT NULL,
  `MemberNumber` DOUBLE NULL,
  `MemberName` TEXT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for TransLedgerDetails
DROP TABLE IF EXISTS `TransLedgerDetails`;
CREATE TABLE `TransLedgerDetails` (
  `TransHeadNumber` INT NOT NULL,
  `TransSerialNumber` SMALLINT NOT NULL,
  `ReconcileDate` DATE NULL,
  `LedgerNumberBook` INT NULL,
  `LedgerNumberHead` INT NULL,
  `TransNarration` VARCHAR(150) NULL,
  `ReceiptAmount` DOUBLE NULL,
  `PaymentAmount` DOUBLE NULL,
  `CustomerNumber` INT NULL,
  `MemberNumber` INT NULL,
  PRIMARY KEY (`TransHeadNumber`, `TransSerialNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for TransLedgerHead
DROP TABLE IF EXISTS `TransLedgerHead`;
CREATE TABLE `TransLedgerHead` (
  `TransHeadNumber` INT NOT NULL,
  `TransactionDate` DATE NULL,
  `TransTypeNumber` SMALLINT NULL,
  `SeriesNumber` TINYINT NULL,
  `YearNumber` TINYINT NULL,
  `TransactionNumber` INT NULL,
  `TransactionRemarks` VARCHAR(50) NULL,
  `CostCentreNumber` INT NULL,
  `LocationNumber` TINYINT NULL,
  `ServerNumber` INT NULL,
  `UserNumber` SMALLINT NULL,
  `CounterName` VARCHAR(25) NULL,
  `ReferranceNumber` INT NULL,
  `CompanyNumber` TINYINT NULL,
  `AreaCodeNumber` SMALLINT NULL,
  `LedgerNumberGroup` INT NULL,
  PRIMARY KEY (`TransHeadNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for TransLedgerMain
DROP TABLE IF EXISTS `TransLedgerMain`;
CREATE TABLE `TransLedgerMain` (
  `TransHeadNumber` INT NOT NULL,
  `TransactionDate` DATE NULL,
  `TransTypeNumber` SMALLINT NULL,
  `SeriesNumber` TINYINT NULL,
  `YearNumber` TINYINT NULL,
  `TransactionNumber` INT NULL,
  `ReconcileDate` DATE NULL,
  `CustomerName` VARCHAR(50) NULL,
  `LedgerNumberBook` INT NULL,
  `LedgerNumberHead` INT NULL,
  `CostCentreNumber` INT NULL,
  `MemberNumber` INT NULL,
  `TransactionAmount` DOUBLE NULL,
  `TransactionRemarks` VARCHAR(50) NULL,
  `CustomerNumber` INT NULL,
  `ReferranceNumber` INT NULL,
  `CompanyNumber` TINYINT NULL,
  `ChequeNumber` VARCHAR(50) NULL,
  `ChequeDate` DATE NULL,
  `ChequeIssued` DATE NULL,
  `LocationNumber` TINYINT NULL,
  `ServerNumber` INT NULL,
  `UserNumber` SMALLINT NULL,
  `CounterName` VARCHAR(50) NULL,
  PRIMARY KEY (`TransHeadNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for TransLedgerOpening
DROP TABLE IF EXISTS `TransLedgerOpening`;
CREATE TABLE `TransLedgerOpening` (
  `CompanyNumber` TINYINT NULL,
  `YearNumber` TINYINT NULL,
  `LedgerNumber` INT NULL,
  `DebitAmount` DOUBLE NULL,
  `CreditAmount` DOUBLE NULL,
  `LocationNumber` TINYINT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for TransMemberCharges
DROP TABLE IF EXISTS `TransMemberCharges`;
CREATE TABLE `TransMemberCharges` (
  `TransHeadNumber` INT NOT NULL,
  `TransTypeNumber` SMALLINT NULL,
  `TransactionDate` DATE NULL,
  `SeriesNumber` TINYINT NULL,
  `YearNumber` TINYINT NULL,
  `TransactionNumber` INT NULL,
  `CustomerName` VARCHAR(50) NULL,
  `TransactionAmount` DOUBLE NULL,
  `TransactionRemarks` VARCHAR(50) NULL,
  `LedgerNumberBook` INT NULL,
  `MemberNumber` INT NULL,
  `SubscriptionStart` DATE NULL,
  `SubscriptionStop` DATE NULL,
  PRIMARY KEY (`TransHeadNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for TransMemberOpening
DROP TABLE IF EXISTS `TransMemberOpening`;
CREATE TABLE `TransMemberOpening` (
  `MemberNumber` INT NULL,
  `LedgerNumber` INT NULL,
  `YearNumber` TINYINT NULL,
  `DebitAmount` DOUBLE NULL,
  `CreditAmount` DOUBLE NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Schema for TransMemberPending
DROP TABLE IF EXISTS `TransMemberPending`;
CREATE TABLE `TransMemberPending` (
  `TransHeadNumber` INT NOT NULL,
  `TransTypeNumber` SMALLINT NOT NULL,
  `TransactionDate` DATE NULL,
  `MemberNumber` INT NULL,
  `TransactionAmount` DOUBLE NULL,
  PRIMARY KEY (`TransHeadNumber`, `TransTypeNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
