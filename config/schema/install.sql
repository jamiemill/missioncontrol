-- phpMyAdmin SQL Dump
-- version 2.10.2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Mar 28, 2010 at 12:34 PM
-- Server version: 5.0.41
-- PHP Version: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `missioncontrol-example`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `acos`
-- 

DROP TABLE IF EXISTS `acos`;
CREATE TABLE `acos` (
  `id` int(10) NOT NULL auto_increment,
  `parent_id` int(10) default NULL,
  `model` varchar(255) default NULL,
  `foreign_key` int(10) default NULL,
  `alias` varchar(255) default NULL,
  `lft` int(10) default NULL,
  `rght` int(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=118 ;

-- 
-- Dumping data for table `acos`
-- 

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES 
(1, NULL, NULL, NULL, 'controllers', 1, 234),
(2, 1, NULL, NULL, 'Pages', 2, 5),
(3, 2, NULL, NULL, 'display', 3, 4),
(4, 1, NULL, NULL, 'Core', 6, 95),
(5, 4, NULL, NULL, 'CoreBlocks', 7, 28),
(6, 5, NULL, NULL, 'admin_delete', 8, 9),
(7, 5, NULL, NULL, 'admin_add', 10, 11),
(8, 5, NULL, NULL, 'admin_edit', 12, 13),
(9, 5, NULL, NULL, 'admin_history', 14, 15),
(10, 5, NULL, NULL, 'admin_view_revision', 16, 17),
(11, 5, NULL, NULL, 'admin_restore', 18, 19),
(12, 5, NULL, NULL, 'view', 20, 21),
(13, 5, NULL, NULL, 'admin_index', 22, 23),
(14, 5, NULL, NULL, 'admin_view', 24, 25),
(15, 5, NULL, NULL, 'index', 26, 27),
(16, 4, NULL, NULL, 'CoreCustomFields', 29, 44),
(17, 16, NULL, NULL, 'admin_delete', 30, 31),
(18, 16, NULL, NULL, 'admin_add', 32, 33),
(19, 16, NULL, NULL, 'admin_edit', 34, 35),
(20, 16, NULL, NULL, 'view', 36, 37),
(21, 16, NULL, NULL, 'admin_index', 38, 39),
(22, 16, NULL, NULL, 'admin_view', 40, 41),
(23, 16, NULL, NULL, 'index', 42, 43),
(24, 4, NULL, NULL, 'CoreDashboard', 45, 60),
(25, 24, NULL, NULL, 'admin_index', 46, 47),
(26, 24, NULL, NULL, 'view', 48, 49),
(27, 24, NULL, NULL, 'admin_add', 50, 51),
(28, 24, NULL, NULL, 'admin_edit', 52, 53),
(29, 24, NULL, NULL, 'admin_view', 54, 55),
(30, 24, NULL, NULL, 'admin_delete', 56, 57),
(31, 24, NULL, NULL, 'index', 58, 59),
(32, 4, NULL, NULL, 'CorePages', 61, 94),
(33, 32, NULL, NULL, 'admin_index', 62, 63),
(34, 32, NULL, NULL, 'view', 64, 65),
(35, 32, NULL, NULL, 'request_page_data', 66, 67),
(36, 32, NULL, NULL, 'admin_view', 68, 69),
(37, 32, NULL, NULL, 'admin_layout', 70, 71),
(38, 32, NULL, NULL, 'admin_rewind', 72, 73),
(39, 32, NULL, NULL, 'admin_add', 74, 75),
(40, 32, NULL, NULL, 'admin_edit', 76, 77),
(41, 32, NULL, NULL, 'sitemap', 78, 79),
(42, 32, NULL, NULL, 'admin_sitemap', 80, 81),
(43, 32, NULL, NULL, 'admin_recover', 82, 83),
(44, 32, NULL, NULL, 'admin_move_up', 84, 85),
(45, 32, NULL, NULL, 'admin_move_down', 86, 87),
(46, 32, NULL, NULL, 'children', 88, 89),
(47, 32, NULL, NULL, 'admin_delete', 90, 91),
(48, 32, NULL, NULL, 'index', 92, 93),
(49, 1, NULL, NULL, 'FileLibrary', 96, 139),
(50, 49, NULL, NULL, 'FileLibraryFiles', 97, 122),
(51, 50, NULL, NULL, 'admin_index', 98, 99),
(52, 50, NULL, NULL, 'admin_info', 100, 101),
(53, 50, NULL, NULL, 'admin_add', 102, 103),
(54, 50, NULL, NULL, 'admin_edit', 104, 105),
(55, 50, NULL, NULL, 'admin_delete', 106, 107),
(56, 50, NULL, NULL, 'download', 108, 109),
(57, 50, NULL, NULL, 'admin_download', 110, 111),
(58, 50, NULL, NULL, 'download_old', 112, 113),
(59, 50, NULL, NULL, 'thumb', 114, 115),
(60, 50, NULL, NULL, 'view', 116, 117),
(61, 50, NULL, NULL, 'admin_view', 118, 119),
(62, 50, NULL, NULL, 'index', 120, 121),
(63, 49, NULL, NULL, 'FileLibraryFolders', 123, 138),
(64, 63, NULL, NULL, 'admin_index', 124, 125),
(65, 63, NULL, NULL, 'admin_add', 126, 127),
(66, 63, NULL, NULL, 'admin_edit', 128, 129),
(67, 63, NULL, NULL, 'admin_delete', 130, 131),
(68, 63, NULL, NULL, 'view', 132, 133),
(69, 63, NULL, NULL, 'admin_view', 134, 135),
(70, 63, NULL, NULL, 'index', 136, 137),
(71, 1, NULL, NULL, 'News', 140, 159),
(72, 71, NULL, NULL, 'NewsArticles', 141, 158),
(73, 72, NULL, NULL, 'view', 142, 143),
(74, 72, NULL, NULL, 'index', 144, 145),
(75, 72, NULL, NULL, 'archive', 146, 147),
(76, 72, NULL, NULL, 'admin_index', 148, 149),
(77, 72, NULL, NULL, 'admin_add', 150, 151),
(78, 72, NULL, NULL, 'admin_edit', 152, 153),
(79, 72, NULL, NULL, 'admin_view', 154, 155),
(80, 72, NULL, NULL, 'admin_delete', 156, 157),
(81, 1, NULL, NULL, 'Users', 160, 223),
(82, 81, NULL, NULL, 'Profiles', 161, 178),
(83, 82, NULL, NULL, 'my', 162, 163),
(84, 82, NULL, NULL, 'view', 164, 165),
(85, 82, NULL, NULL, 'admin_index', 166, 167),
(86, 82, NULL, NULL, 'admin_add', 168, 169),
(87, 82, NULL, NULL, 'admin_edit', 170, 171),
(88, 82, NULL, NULL, 'admin_view', 172, 173),
(89, 82, NULL, NULL, 'admin_delete', 174, 175),
(90, 82, NULL, NULL, 'index', 176, 177),
(91, 81, NULL, NULL, 'Users', 179, 222),
(92, 91, NULL, NULL, 'login', 180, 181),
(93, 91, NULL, NULL, 'admin_login', 182, 183),
(94, 91, NULL, NULL, 'logout', 184, 185),
(95, 91, NULL, NULL, 'admin_index', 186, 187),
(96, 91, NULL, NULL, 'admin_change_password', 188, 189),
(97, 91, NULL, NULL, 'admin_delete', 190, 191),
(98, 91, NULL, NULL, 'forgotten_password', 192, 193),
(99, 91, NULL, NULL, 'admin_forgotten_password', 194, 195),
(100, 91, NULL, NULL, 'reset_password', 196, 197),
(101, 91, NULL, NULL, 'admin_reset_password', 198, 199),
(102, 91, NULL, NULL, 'register', 200, 201),
(103, 91, NULL, NULL, 'change_password', 202, 203),
(104, 91, NULL, NULL, 'admin_activate', 204, 205),
(105, 91, NULL, NULL, 'admin_deactivate', 206, 207),
(106, 91, NULL, NULL, 'admin_send_activation', 208, 209),
(107, 91, NULL, NULL, 'activate_with_ticket', 210, 211),
(108, 91, NULL, NULL, 'view', 212, 213),
(109, 91, NULL, NULL, 'admin_add', 214, 215),
(110, 91, NULL, NULL, 'admin_edit', 216, 217),
(111, 91, NULL, NULL, 'admin_view', 218, 219),
(112, 91, NULL, NULL, 'index', 220, 221),
(113, 1, NULL, NULL, 'AclExtras', 224, 225),
(114, 1, NULL, NULL, 'DebugKit', 226, 233),
(115, 114, NULL, NULL, 'ToolbarAccess', 227, 232),
(116, 115, NULL, NULL, 'history_state', 228, 229),
(117, 115, NULL, NULL, 'sql_explain', 230, 231);

-- --------------------------------------------------------

-- 
-- Table structure for table `aros`
-- 

DROP TABLE IF EXISTS `aros`;
CREATE TABLE `aros` (
  `id` int(10) NOT NULL auto_increment,
  `parent_id` int(10) default NULL,
  `model` varchar(255) default NULL,
  `foreign_key` int(10) default NULL,
  `alias` varchar(255) default NULL,
  `lft` int(10) default NULL,
  `rght` int(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `aros`
-- 

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES 
(1, NULL, 'Group', 1, NULL, 1, 12),
(2, 1, 'Group', 2, NULL, 2, 11),
(3, 2, 'Group', 3, NULL, 3, 10),
(4, 3, 'Group', 4, NULL, 4, 9),
(5, 4, 'Group', 5, NULL, 5, 8),
(6, 5, 'Group', 6, NULL, 6, 7);

-- --------------------------------------------------------

-- 
-- Table structure for table `aros_acos`
-- 

DROP TABLE IF EXISTS `aros_acos`;
CREATE TABLE `aros_acos` (
  `id` int(10) NOT NULL auto_increment,
  `aro_id` int(10) NOT NULL default '0',
  `aco_id` int(10) NOT NULL default '0',
  `_create` char(2) NOT NULL default '0',
  `_read` char(2) NOT NULL default '0',
  `_update` char(2) NOT NULL default '0',
  `_delete` char(2) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `ARO_ACO_KEY` (`aro_id`,`aco_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `aros_acos`
-- 

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES 
(1, 3, 32, '1', '1', '1', '1'),
(2, 3, 5, '1', '1', '1', '1'),
(3, 3, 16, '1', '1', '1', '1'),
(4, 3, 24, '1', '1', '1', '1'),
(5, 3, 50, '1', '1', '1', '1'),
(6, 3, 63, '1', '1', '1', '1'),
(7, 5, 91, '1', '1', '1', '1'),
(8, 2, 103, '1', '1', '1', '1'),
(9, 2, 83, '1', '1', '1', '1'),
(10, 3, 72, '1', '1', '1', '1');

-- --------------------------------------------------------

-- 
-- Table structure for table `core_blocks`
-- 

DROP TABLE IF EXISTS `core_blocks`;
CREATE TABLE `core_blocks` (
  `id` int(8) unsigned NOT NULL auto_increment,
  `content_area` varchar(64) default NULL,
  `content` text,
  `core_page_id` int(8) default NULL,
  `core_block_type_id` int(8) default NULL,
  `revision_count` int(8) default '0',
  `created` datetime default NULL,
  `modified` datetime default NULL,
  `deleted` int(1) default '0',
  `deleted_date` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `core_blocks`
-- 

INSERT INTO `core_blocks` (`id`, `content_area`, `content`, `core_page_id`, `core_block_type_id`, `revision_count`, `created`, `modified`, `deleted`, `deleted_date`) VALUES 
(1, 'main_content', '<p>here''s some dynamic content!</p>', 1, NULL, 0, '2010-03-28 10:34:12', '2010-03-28 10:34:12', 0, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `core_blocks_revs`
-- 

DROP TABLE IF EXISTS `core_blocks_revs`;
CREATE TABLE `core_blocks_revs` (
  `id` int(8) unsigned NOT NULL,
  `version_id` int(8) unsigned NOT NULL auto_increment,
  `version_created` datetime default NULL,
  `title` varchar(255) default NULL,
  `slug` varchar(255) default NULL,
  `content_area` varchar(64) default NULL,
  `content` text,
  `core_page_id` int(8) default NULL,
  `core_block_type_id` int(8) default NULL,
  `created` datetime default NULL,
  `modified` datetime default NULL,
  `deleted` int(1) default '0',
  `deleted_date` datetime default NULL,
  PRIMARY KEY  (`version_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `core_blocks_revs`
-- 

INSERT INTO `core_blocks_revs` (`id`, `version_id`, `version_created`, `title`, `slug`, `content_area`, `content`, `core_page_id`, `core_block_type_id`, `created`, `modified`, `deleted`, `deleted_date`) VALUES 
(1, 1, '2010-03-28 10:34:12', NULL, NULL, 'main_content', '<p>here''s some dynamic content!</p>', 1, NULL, '2010-03-28 10:34:12', '2010-03-28 10:34:12', 0, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `core_block_types`
-- 

DROP TABLE IF EXISTS `core_block_types`;
CREATE TABLE `core_block_types` (
  `id` int(8) unsigned NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `slug` varchar(255) default NULL,
  `description` text,
  `created` datetime default NULL,
  `modified` datetime default NULL,
  `deleted` int(1) default '0',
  `deleted_date` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `core_block_types`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `core_custom_fields`
-- 

DROP TABLE IF EXISTS `core_custom_fields`;
CREATE TABLE `core_custom_fields` (
  `id` int(8) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  `core_page_id` int(8) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `core_custom_fields`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `core_pages`
-- 

DROP TABLE IF EXISTS `core_pages`;
CREATE TABLE `core_pages` (
  `id` int(8) unsigned NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `title_long` varchar(512) default NULL,
  `slug` varchar(255) default NULL,
  `view_file` varchar(255) default NULL,
  `layout_file` varchar(255) default NULL,
  `publish_time` datetime default NULL,
  `unpublish_time` datetime default NULL,
  `meta_description` varchar(255) default NULL,
  `meta_keywords` varchar(255) default NULL,
  `parent_id` int(10) default NULL,
  `lft` int(10) default NULL,
  `rght` int(10) default NULL,
  `is_protected` int(1) default '0',
  `show_in_menu` int(1) default '0',
  `created` datetime default NULL,
  `modified` datetime default NULL,
  `is_published` int(1) default '0',
  `deleted` int(1) default '0',
  `deleted_date` datetime default NULL,
  `redirect_to_first_child` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `core_pages`
-- 

INSERT INTO `core_pages` (`id`, `title`, `title_long`, `slug`, `view_file`, `layout_file`, `publish_time`, `unpublish_time`, `meta_description`, `meta_keywords`, `parent_id`, `lft`, `rght`, `is_protected`, `show_in_menu`, `created`, `modified`, `is_published`, `deleted`, `deleted_date`, `redirect_to_first_child`) VALUES 
(1, 'Home', NULL, 'home', 'home', 'default', '2010-03-27 23:32:58', NULL, NULL, NULL, NULL, 1, 2, 0, 1, NULL, NULL, 1, 0, NULL, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `core_search_index`
-- 

DROP TABLE IF EXISTS `core_search_index`;
CREATE TABLE `core_search_index` (
  `id` int(8) NOT NULL auto_increment,
  `model` varchar(255) default NULL,
  `foreign_key` int(8) default NULL,
  `data` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `created` datetime default NULL,
  `modified` datetime default NULL,
  `deleted` int(1) default '0',
  `deleted_date` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `association_key` (`foreign_key`,`model`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `core_search_index`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `file_library_files`
-- 

DROP TABLE IF EXISTS `file_library_files`;
CREATE TABLE `file_library_files` (
  `id` varchar(36) NOT NULL,
  `slug` varchar(255) default NULL,
  `filename` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `type` varchar(16) default NULL,
  `file_library_folder_id` int(8) default NULL,
  `created` datetime default NULL,
  `modified` datetime default NULL,
  `is_smart` int(1) default '0',
  `deleted` int(1) default '0',
  `deleted_date` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `file_library_files`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `file_library_folders`
-- 

DROP TABLE IF EXISTS `file_library_folders`;
CREATE TABLE `file_library_folders` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) default NULL,
  `created` datetime default NULL,
  `modified` datetime default NULL,
  `is_smart` int(1) default '0',
  `deleted` int(1) default '0',
  `deleted_date` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `file_library_folders`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `groups`
-- 

DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` int(8) unsigned NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `slug` varchar(255) default NULL,
  `parent_id` int(10) default '0',
  `lft` int(10) unsigned NOT NULL default '0',
  `rght` int(10) unsigned NOT NULL default '0',
  `created` datetime default NULL,
  `modified` datetime default NULL,
  `deleted` int(1) default '0',
  `deleted_date` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `groups`
-- 

INSERT INTO `groups` (`id`, `title`, `slug`, `parent_id`, `lft`, `rght`, `created`, `modified`, `deleted`, `deleted_date`) VALUES 
(1, 'Guests', 'guests', NULL, 1, 12, '2008-11-25 16:23:50', '2008-11-25 16:23:50', 0, NULL),
(2, 'Users', 'users', 1, 2, 11, '2008-11-25 16:23:57', '2008-11-25 16:23:57', 0, NULL),
(3, 'Contributors', 'contributors', 2, 3, 10, '2008-11-25 16:24:15', '2008-11-25 16:24:15', 0, NULL),
(4, 'Editors', 'editors', 3, 4, 9, '2008-11-25 16:24:21', '2008-11-25 16:24:21', 0, NULL),
(5, 'Administrators', 'administrators', 4, 5, 8, '2008-11-25 16:24:34', '2008-11-25 16:24:34', 0, NULL),
(6, 'Super Administrators', 'super_administrators', 5, 6, 7, '2008-11-25 16:24:43', '2008-11-25 16:24:43', 0, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `news_articles`
-- 

DROP TABLE IF EXISTS `news_articles`;
CREATE TABLE `news_articles` (
  `id` int(11) NOT NULL auto_increment,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `headline` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `news_articles`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `profiles`
-- 

DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles` (
  `id` int(8) unsigned NOT NULL auto_increment,
  `user_id` int(8) default NULL,
  `created` datetime default NULL,
  `modified` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `profiles`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tickets`
-- 

DROP TABLE IF EXISTS `tickets`;
CREATE TABLE `tickets` (
  `id` varchar(36) NOT NULL,
  `hash` varchar(255) default NULL,
  `data` varchar(255) default NULL,
  `created` datetime default NULL,
  `modified` datetime default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `hashs` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tickets`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `users`
-- 

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(8) unsigned NOT NULL auto_increment,
  `email` varchar(255) default NULL,
  `password` varchar(50) default NULL,
  `first_name` varchar(255) default NULL,
  `last_name` varchar(255) NOT NULL,
  `group_id` int(8) default NULL,
  `last_login` datetime default NULL,
  `created` datetime default NULL,
  `modified` datetime default NULL,
  `activated` tinyint(1) default '0',
  `deleted` int(1) default '0',
  `deleted_date` datetime default NULL,
  `enabled` tinyint(1) NOT NULL default '1',
  `activation_sent` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `users`
-- 

INSERT INTO `users` (`id`, `email`, `password`, `first_name`, `last_name`, `group_id`, `last_login`, `created`, `modified`, `activated`, `deleted`, `deleted_date`, `enabled`, `activation_sent`) VALUES 
(1, 'admin@example.com', '80730e51a4fb2406ec7c5645d26e029e5b7d6fde', 'Mr', 'Administrator', 6, NULL, '2010-03-28 12:27:07', '2010-03-28 12:27:07', 1, 0, NULL, 1, 0);
