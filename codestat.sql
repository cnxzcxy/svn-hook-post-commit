-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2015-06-18 15:59:02
-- 服务器版本： 5.6.10
-- PHP Version: 5.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `codestat`
--

-- --------------------------------------------------------

--
-- 表的结构 `codestat_author`
--

CREATE TABLE IF NOT EXISTS `codestat_author` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='svn提交用户表' AUTO_INCREMENT=42 ;

-- --------------------------------------------------------

--
-- 表的结构 `codestat_repo`
--

CREATE TABLE IF NOT EXISTS `codestat_repo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

-- --------------------------------------------------------

--
-- 表的结构 `codestat_svnlog`
--

CREATE TABLE IF NOT EXISTS `codestat_svnlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` int(10) NOT NULL COMMENT '提交者id',
  `repo` int(10) NOT NULL COMMENT 'svn库id',
  `committime` int(10) NOT NULL COMMENT '提交时间',
  `revision` int(10) NOT NULL COMMENT '提交版本号',
  `revlog` varchar(255) NOT NULL COMMENT '版本日志',
  `changelines` int(10) NOT NULL COMMENT '代码变化行数',
  `createtime` int(10) NOT NULL,
  `updatetime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='svn提交记录表' AUTO_INCREMENT=1767 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
