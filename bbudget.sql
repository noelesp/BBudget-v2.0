-- phpMyAdmin SQL Dump
-- version 2.11.11.3
-- http://www.phpmyadmin.net
--
-- Host: 10.6.186.84
-- Generation Time: Sep 24, 2013 at 02:39 PM
-- Server version: 5.0.96
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bbudget`
--
CREATE DATABASE `bbudget` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bbudget`;

-- --------------------------------------------------------

--
-- Table structure for table `audit`
--

CREATE TABLE `audit` (
  `id` int(25) NOT NULL auto_increment,
  `username` text NOT NULL,
  `ip` text NOT NULL,
  `time` text NOT NULL,
  `action` text,
  `summary` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1161 ;


-- --------------------------------------------------------

--
-- Table structure for table `bbudget_ex`
--

CREATE TABLE `bbudget_ex` (
  `id` int(10) NOT NULL auto_increment,
  `transaction` text NOT NULL,
  `person` text NOT NULL,
  `desc` text NOT NULL,
  `check` text NOT NULL,
  `amount` float NOT NULL,
  `date` text NOT NULL,
  `submitter` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1031 ;


-- --------------------------------------------------------

--
-- Table structure for table `bbudget_inc`
--

CREATE TABLE `bbudget_inc` (
  `id` int(10) NOT NULL auto_increment,
  `transaction` text NOT NULL,
  `person` text NOT NULL,
  `desc` text NOT NULL,
  `check` text NOT NULL,
  `amount` float NOT NULL,
  `date` text NOT NULL,
  `submitter` text NOT NULL,
  `verified by` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4807 ;


-- --------------------------------------------------------

--
-- Table structure for table `bbudget_type`
--

CREATE TABLE `bbudget_type` (
  `id` int(7) NOT NULL auto_increment,
  `desctype` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;


-- --------------------------------------------------------

--
-- Table structure for table `church_attendance`
--

CREATE TABLE `church_attendance` (
  `id` int(32) NOT NULL auto_increment,
  `service` text NOT NULL,
  `school` text NOT NULL,
  `date` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=91 ;



--
-- Table structure for table `ed_attendance`
--

CREATE TABLE `ed_attendance` (
  `id` int(11) NOT NULL auto_increment,
  `studentname` text NOT NULL,
  `classname` text NOT NULL,
  `teachername` text NOT NULL,
  `date` text NOT NULL,
  `present` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6288 ;


--
-- Table structure for table `ed_classes`
--

CREATE TABLE `ed_classes` (
  `id` int(11) NOT NULL auto_increment,
  `classname` text NOT NULL,
  `desc` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `ed_classes`
--

INSERT INTO `ed_classes` VALUES(17, 'Adult Class', 'Adult sunday class');


-- --------------------------------------------------------

--
-- Table structure for table `ed_registry`
--

CREATE TABLE `ed_registry` (
  `id` int(11) NOT NULL auto_increment,
  `studentname` text NOT NULL,
  `classname` text NOT NULL,
  `registration` text NOT NULL,
  `notes` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=153 ;




--
-- Table structure for table `ed_teachers`
--

CREATE TABLE `ed_teachers` (
  `id` int(11) NOT NULL auto_increment,
  `name` text NOT NULL,
  `cassigned` text NOT NULL,
  `skills` text NOT NULL,
  `registered` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;



--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `id` int(11) NOT NULL auto_increment,
  `person` text NOT NULL,
  `dob` text NOT NULL,
  `member` text NOT NULL,
  `account` text NOT NULL,
  `address` text NOT NULL,
  `town` text NOT NULL,
  `state` text NOT NULL,
  `zipcode` text NOT NULL,
  `telephone` text NOT NULL,
  `mobile` text NOT NULL,
  `email` text NOT NULL,
  `note` text NOT NULL,
  `img` text NOT NULL,
  `archive` text NOT NULL,
  `website` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=282 ;

--
-- Dumping data for table `person`
--

INSERT INTO `person` VALUES(55, 'John Doea', '', '', 'N/A', '', '', 'GA', '', '', '', '', '', '', 'N', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL auto_increment,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `access` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` VALUES(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'A');

