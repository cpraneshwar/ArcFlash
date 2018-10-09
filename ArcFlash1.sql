-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE TABLE "Entries" ----------------------------------
-- CREATE TABLE "Entries" --------------------------------------
CREATE TABLE `Entries` ( 
	`Department` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`Room` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`EquipmentID` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`Type` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`da` Float( 12, 0 ) NOT NULL,
	`ta` Float( 12, 0 ) NOT NULL,
	`f` Float( 12, 0 ) NOT NULL,
	`ema` Float( 12, 0 ) NOT NULL,
	`Date` DateTime NOT NULL,
	PRIMARY KEY ( `Department`, `Room`, `EquipmentID` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "Entries" ----------------------------------
INSERT INTO `Entries`(`Department`,`Room`,`EquipmentID`,`Type`,`da`,`ta`,`f`,`ema`,`Date`) VALUES ( 'CSE', '102', 'G654', 'MCCB', '18', '0.0666', '20', '1.68406', '2018-02-27 23:01:12' );
INSERT INTO `Entries`(`Department`,`Room`,`EquipmentID`,`Type`,`da`,`ta`,`f`,`ema`,`Date`) VALUES ( 'CSE', 'E302', 'P98', 'FS', '18', '0.0777', '23', '2.22579', '2018-03-01 16:46:58' );
INSERT INTO `Entries`(`Department`,`Room`,`EquipmentID`,`Type`,`da`,`ta`,`f`,`ema`,`Date`) VALUES ( 'ECE', 'E202', 'S21', 'ACB', '20', '0.07688', '17', '1.40425', '2018-03-01 13:44:34' );
INSERT INTO `Entries`(`Department`,`Room`,`EquipmentID`,`Type`,`da`,`ta`,`f`,`ema`,`Date`) VALUES ( 'ECE', 'K301', '201', 'SF', '30', '1.9862', '29', '51.8156', '2018-02-28 10:12:20' );
INSERT INTO `Entries`(`Department`,`Room`,`EquipmentID`,`Type`,`da`,`ta`,`f`,`ema`,`Date`) VALUES ( 'IT', '221', 'd76', 'FS', '20', '0.06666', '18', '1.2656', '2018-02-27 22:28:25' );
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


