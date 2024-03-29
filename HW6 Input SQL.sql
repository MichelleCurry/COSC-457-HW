-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `mcurry6db` DEFAULT CHARACTER SET latin1 ;
USE `mcurry6db` ;

CREATE TABLE IF NOT EXISTS j (
    `j_num` VARCHAR(2) CHARACTER SET utf8,
    `jname` VARCHAR(8) CHARACTER SET utf8,
    `city` VARCHAR(6) CHARACTER SET utf8
);
INSERT INTO j VALUES ('j1','Sorter','Paris'),
	('j2','Punch','Rome'),
	('j3','Reader','Athens'),
	('j4','Console','Athens'),
	('j5','Collator','London'),
	('j6','Terminal','Oslo'),
	('j7','Tape','London');

CREATE TABLE IF NOT EXISTS s (
    `s_num` VARCHAR(2) CHARACTER SET utf8,
    `s_name` VARCHAR(5) CHARACTER SET utf8,
    `status` INT,
    `city` VARCHAR(6) CHARACTER SET utf8
);
INSERT INTO s VALUES ('s1','Smith',20,'London'),
	('s2','Jones',10,'Paris'),
	('s3','Blake',30,'Paris'),
	('s4','Clark',20,'London'),
	('s5','Adams',30,'Athens');

CREATE TABLE IF NOT EXISTS p (
    `p_num` VARCHAR(2) CHARACTER SET utf8,
    `pname` VARCHAR(5) CHARACTER SET utf8,
    `color` VARCHAR(5) CHARACTER SET utf8
);
INSERT INTO p VALUES ('p1','Nut','Red'),
	('p2','Bolt','Green'),
	('p3','nail','Blue'),
	('p4','Screw','Red'),
	('p5','Cam','Blue');

CREATE TABLE IF NOT EXISTS SPJ (
    `s_num` VARCHAR(2) CHARACTER SET utf8,
    `p_num` VARCHAR(2) CHARACTER SET utf8,
    `j_num` VARCHAR(2) CHARACTER SET utf8,
    `qty` INT
);
INSERT INTO SPJ VALUES ('s1','p1','j1',200),
	('s1','p1','j4',700),
	('s2','p3','j1',400),
	('s2','p3','j2',200),
	('s2','p3','j3',200),
	('s2','p3','j4',500),
	('s2','p3','j5',600),
	('s2','p3','j6',400),
	('s2','p3','j7',800),
	('s2','p5','j2',100),
	('s3','p3','j1',200),
	('s3','p4','j2',500),
	('s4','p6','j3',300),
	('s4','p6','j7',300),
	('s5','p1','j4',100),
	('s5','p2','j2',200),
	('s5','p2','j4',100),
	('s5','p3','j4',200),
	('s5','p4','j4',800),
	('s5','p5','j4',400),
	('s5','p5','j5',500),
	('s5','p5','j7',100),
	('s5','p6','j2',200),
	('s5','p6','j4',500);