-- phpMyAdmin SQL Dump
-- version 4.4.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 03, 2017 at 05:53 PM
-- Server version: 10.0.19-MariaDB-1~trusty-log
-- PHP Version: 5.5.9-1ubuntu4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/ `InterConn` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `InterConn`;
--
-- Database: `InterConn`
--

-- --------------------------------------------------------

--
-- Table structure for table `channel`
--

CREATE TABLE IF NOT EXISTS `channel` (
  `channel_id` bigint(20) NOT NULL,
  `channel_name` text NOT NULL,
  `type` varchar(50) NOT NULL,
  `purpose` text NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_archive` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `channel`
--

INSERT INTO `channel` (`channel_id`, `channel_name`, `type`, `purpose`, `created_by`, `created_at`, `is_archive`) VALUES
(1, 'general', 'public', 'General discussions', 11, '2017-10-12 22:52:23', 0),
(2, 'random', 'public', '', 11, '2017-11-06 03:54:13', 0),
(3, 'general', 'public', 'General discussions', 1, '2017-11-18 06:04:03', 0),
(4, 'random', 'public', 'Random discussions', 1, '2017-10-16 00:49:17', 0),
(5, 'Rust-eze', 'private', 'Private group talks', 7, '2017-10-16 00:53:54', 0),
(6, 'Piston Cup competitors', 'private', 'For participants only!!!!', 7, '2017-10-16 00:55:13', 0),
(7, 'Radiator Springs', 'private', 'In town guys gossips', 1, '2017-11-21 18:19:19', 1),
(12, 'ussssshSecret', 'private', 'top secret ', 10, '2017-10-27 01:12:21', 0),
(31, 'fvhhhhcg <!--fxc', 'private', '', 10, '2017-10-30 02:48:07', 0),
(32, 'test1', 'private', 'test', 9, '2017-10-30 03:08:18', 0),
(33, '44444', 'private', '', 7, '2017-10-31 01:47:32', 0),
(34, 'testing', 'private', '', 10, '2017-11-06 03:54:19', 1),
(35, 'zdygxdfgh', 'private', '', 10, '2017-11-05 06:44:13', 0),
(36, 'cfgjgg', 'private', '', 10, '2017-11-05 06:45:30', 0),
(37, 'zdryhxcf', 'private', '', 10, '2017-11-06 03:53:36', 0),
(38, 'dummy', 'private', '', 9, '2017-11-06 20:39:38', 0),
(39, 'dummy1', 'private', '', 9, '2017-11-11 23:51:42', 0),
(40, 'testing1', 'public', '', 11, '2017-11-11 23:58:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `channel_invitation`
--

CREATE TABLE IF NOT EXISTS `channel_invitation` (
  `channel_id` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emoji`
--

CREATE TABLE IF NOT EXISTS `emoji` (
  `emoji_id` bigint(20) NOT NULL,
  `emoji_code` varchar(50) NOT NULL,
  `emoji_pic` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emoji`
--

INSERT INTO `emoji` (`emoji_id`, `emoji_code`, `emoji_pic`) VALUES
(1, ':+1:', 'fa fa-thumbs-o-up'),
(2, ':-1:', 'fa fa-thumbs-o-down');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `message_id` bigint(20) NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `message_place` bigint(20) NOT NULL,
  `content` text NOT NULL,
  `is_threaded` int(11) NOT NULL DEFAULT '0',
  `is_active` int(11) NOT NULL DEFAULT '0',
  `edited_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `has_shared_content` int(11) NOT NULL DEFAULT '0',
  `is_specialmessage` int(11) NOT NULL DEFAULT '0',
  `code_type` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `created_by`, `created_at`, `message_place`, `content`, `is_threaded`, `is_active`, `edited_at`, `has_shared_content`, `is_specialmessage`, `code_type`) VALUES
(5, 9, '2017-10-27 17:13:47', 0, 'hello', 1, 0, '0000-00-00 00:00:00', 0, 0, 0),
(6, 10, '2017-10-27 17:13:50', 0, 'hi how are u', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(7, 11, '2017-10-04 17:35:27', 0, 'good', 1, 0, '0000-00-00 00:00:00', 0, 0, 0),
(8, 9, '2017-10-04 17:34:48', 0, 'hi direct message', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(9, 10, '2017-10-04 17:35:48', 0, 'true,direct message', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(10, 10, '2017-10-04 17:47:17', 0, 'hi another private message', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(11, 11, '2017-10-04 17:48:17', 0, 'yup', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(16, 9, '2017-10-05 21:21:38', 0, 'hiii', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(17, 10, '2017-10-05 21:22:44', 0, 'welcome', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(18, 10, '2017-10-05 21:24:20', 0, '<!--jzsdhfj-->', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(19, 10, '2017-10-05 21:24:30', 0, '><:"#%$(#$)%^_$E_', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(20, 10, '2017-10-05 21:24:57', 0, 'hiii', 1, 0, '0000-00-00 00:00:00', 0, 0, 0),
(21, 10, '2017-10-05 21:25:10', 0, 'good job', 1, 0, '0000-00-00 00:00:00', 0, 0, 0),
(22, 11, '2017-10-05 21:28:07', 0, 'fgdfg', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(23, 11, '2017-10-05 21:28:56', 0, '', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(24, 10, '2017-10-05 21:32:23', 0, 'hiii', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(25, 10, '2017-10-05 21:32:29', 0, 'hiii', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(26, 10, '2017-10-06 00:18:11', 0, 'hey sup people ', 1, 0, '0000-00-00 00:00:00', 0, 0, 0),
(27, 9, '2017-10-06 18:19:40', 0, 'erg', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(28, 9, '2017-10-06 18:19:43', 0, 'tyhrt', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(29, 9, '2017-10-06 18:19:46', 0, 'rtyrt', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(30, 9, '2017-10-06 18:19:54', 0, 'erterterwt', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(31, 9, '2017-10-06 18:20:46', 0, 'rtj', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(32, 9, '2017-10-06 18:20:49', 0, 'ertre', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(33, 9, '2017-10-06 18:20:51', 0, '45y54y', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(34, 9, '2017-10-06 18:21:27', 0, '', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(35, 9, '2017-10-06 18:36:52', 0, 'Hey Handsome ', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(36, 9, '2017-10-06 18:37:04', 0, 'whats going on ??', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(37, 9, '2017-10-06 18:56:51', 0, '', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(38, 9, '2017-10-06 19:10:33', 0, 'hello', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(39, 9, '2017-10-06 19:10:34', 0, 'hello', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(40, 9, '2017-10-06 19:10:37', 0, 'hello', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(41, 9, '2017-10-06 19:10:48', 0, '', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(42, 9, '2017-10-06 19:10:52', 0, '', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(43, 9, '2017-10-06 20:15:52', 0, '35y45yjhopi54yoi54oyu54iyuoi[45uy[45uyw45oyu45[oiyuio[54uy[oi45uyoi[45wuyoi[w45uyoi[w45uio[yuw54oi[yuw45o[iyu4w5[yu45o[iyu45oi[yu45io[yu[4oi5uy[i4o5uy[o4i5wuy[o4iuy[oi45uyoi[45uy45', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(44, 10, '2017-10-07 04:12:31', 0, 'Hello people ', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(45, 9, '2017-10-10 03:51:03', 0, '32', 1, 0, '0000-00-00 00:00:00', 0, 0, 0),
(46, 1, '2017-10-10 19:47:23', 0, '', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(47, 1, '2017-10-10 19:49:23', 0, '', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(48, 9, '2017-10-10 19:56:32', 0, 'dkfjigi', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(49, 9, '2017-10-10 19:56:35', 0, 'dfzh', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(50, 9, '2017-10-11 20:16:11', 0, '', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(51, 9, '2017-10-12 04:10:58', 0, 'Suo baby ', 1, 0, '0000-00-00 00:00:00', 0, 0, 0),
(52, 9, '2017-10-12 20:09:52', 0, 'hg', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(53, 9, '2017-10-12 21:28:03', 0, 'wrgmwk', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(54, 9, '2017-10-12 21:28:08', 0, 'ewtwe', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(55, 9, '2017-10-12 21:28:13', 0, 'fwe', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(56, 9, '2017-10-12 21:28:28', 0, 'rgel;ghke', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(57, 9, '2017-10-12 21:30:26', 0, 'sddwd', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(58, 9, '2017-10-12 21:31:19', 0, 'dhdg\r\ndrhesheshhr\r\nrhesth\r\n', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(59, 9, '2017-10-14 01:28:44', 0, 'dhdg drhesheshhr rhesth', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(60, 9, '2017-10-14 01:30:19', 0, '$channelstr='''';      $directMessagestr='''';', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(61, 9, '2017-10-15 00:55:17', 0, 'hsgrfjg\r\ngedfut\r\negjtfj\r\n', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(62, 9, '2017-10-15 00:55:38', 0, 'hgfhb\r\nsdrhefgh\r\ndjhskwh\r\n\r\n\r\n\r\n', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(63, 9, '2017-10-16 01:06:18', 0, 'endi idii?? idi chat ahh? asal em language idi?\r\nasal evarkanna ardham aythadaaa  LOL ;)\r\n', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(64, 7, '2017-10-16 01:07:20', 0, 'whoz dis?\r\n', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(65, 7, '2017-10-16 01:08:48', 0, '123456\r\n', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(66, 7, '2017-10-16 01:10:10', 0, 'Hi', 1, 0, '0000-00-00 00:00:00', 0, 0, 0),
(67, 9, '2017-10-16 01:16:27', 0, 'Hello', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(68, 9, '2017-10-16 01:17:00', 0, 'haha :)', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(69, 9, '2017-10-16 01:17:27', 0, 'Rohila Adhi Rithu i gues ', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(70, 9, '2017-10-16 01:18:10', 0, 'And ee text area on enter submit avvali, I shouldnt be pressing another send button for that ', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(71, 7, '2017-10-16 01:39:34', 0, 'ooh..\r\nvll try dat', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(72, 9, '2017-10-16 02:50:32', 0, 'timee\r\n', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(73, 9, '2017-10-17 20:50:52', 0, '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaer', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(74, 9, '2017-10-17 20:51:08', 0, 'hi', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(75, 9, '2017-10-17 20:56:55', 0, '"how do you html?"\r\n', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(76, 9, '2017-10-17 20:57:09', 0, 'i\r\n', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(77, 9, '2017-10-17 20:57:20', 0, 'vvjhhn', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(78, 9, '2017-10-17 20:57:57', 0, 'jabdsjksd', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(79, 9, '2017-10-17 20:58:11', 0, '"can you sql inject with ''; -- ''?"', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(80, 9, '2017-10-17 20:58:21', 0, '"what happens when I ~!@#$%^&*()_+_)(*&^%$#@!~}{:"><??:{}+}\\|}{P{}|-/*?"', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(81, 9, '2017-10-17 20:58:31', 0, '"what does <!-- mean"', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(82, 9, '2017-10-17 21:17:14', 0, '"what does <!-- mean"', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(83, 9, '2017-10-17 21:17:37', 0, 'what does <!-- mean', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(84, 9, '2017-10-17 21:43:23', 0, '"can you sql inject with ''; -- ''?"\r\n', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(85, 9, '2017-10-17 23:59:37', 0, ' "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. "\r\n', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(86, 9, '2017-10-17 23:59:48', 0, 'jklnjkn', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(87, 9, '2017-10-18 00:00:33', 0, '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. ""Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. ""Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. ""Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. ""Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. "', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(88, 9, '2017-10-17 13:16:51', 0, 'hellooo\r\n', 1, 0, '0000-00-00 00:00:00', 0, 0, 0),
(89, 9, '2017-10-18 01:18:30', 0, '123456', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(90, 9, '2017-10-23 18:28:18', 0, 'hello', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(91, 9, '2017-10-23 18:28:26', 0, 'hhow are you ', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(92, 9, '2017-10-23 18:28:44', 0, 'i am all good ', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(93, 34, '2017-10-24 20:09:23', 0, 'Hello I am new here \r\n', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(94, 40, '2017-10-24 20:58:42', 0, 'hey\r\n', 1, 0, '0000-00-00 00:00:00', 0, 0, 0),
(95, 41, '2017-10-26 02:29:45', 0, 'hi all...\r\n', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(96, 9, '2017-10-26 02:29:58', 0, 'hello ', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(97, 9, '2017-10-26 02:31:26', 0, 'what  else ?', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(98, 9, '2017-10-26 22:44:32', 0, '#D9534F', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(99, 10, '2017-10-27 01:13:52', 0, 'hello\r\n', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(100, 9, '2017-10-27 04:14:48', 0, 'http://qav2.cs.odu.edu/Dev_StudentAppointmentSystem/home.php', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(101, 10, '2017-10-27 17:10:07', 0, 'hi', 1, 0, '0000-00-00 00:00:00', 0, 0, 0),
(102, 10, '2017-10-27 16:39:08', 0, 'welcome', 1, 0, '0000-00-00 00:00:00', 0, 0, 0),
(103, 10, '2017-10-27 16:20:59', 0, 'vbgjgrf\r\nsuhrtg', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(104, 9, '2017-10-27 19:47:17', 0, 'hello', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(105, 9, '2017-10-28 04:08:06', 0, 'hello', 1, 0, '0000-00-00 00:00:00', 0, 0, 0),
(106, 9, '2017-10-28 04:08:20', 0, 'whats going on', 1, 0, '0000-00-00 00:00:00', 0, 0, 0),
(107, 9, '2017-10-28 04:10:24', 0, 'hzfdih', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(108, 9, '2017-10-28 04:15:40', 0, '  if(e.which == 13 && !e.shiftKey) {\r\n        if($(this).closest("form")[0].checkValidity()){\r\n         $(".messageEntrySpace_regularMsg_HP button").trigger("click");\r\n        }\r\n            }', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(109, 9, '2017-10-28 04:18:42', 0, 'hfjnyrf', 1, 0, '0000-00-00 00:00:00', 0, 0, 0),
(110, 9, '2017-10-28 04:20:14', 0, 'khkh', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(111, 9, '2017-10-29 00:40:28', 0, '\r\nhello', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(112, 9, '2017-10-29 00:40:32', 0, '\r\njkhszeF', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(113, 9, '2017-10-29 00:40:40', 0, 'hgkhjuk\r\n\r\n\r\n', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(114, 10, '2017-10-30 04:28:39', 0, 'hello', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(115, 9, '2017-10-30 04:53:32', 0, 'hiii', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(116, 10, '2017-10-30 04:53:46', 0, 'welcome', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(117, 9, '2017-10-31 15:57:21', 0, ' else if(strlen($phoneNumber)!='''' && (strlen($phoneNumber)<10 || strlen($phoneNumber)>12 || !(is_numeric($phoneNumber)== 1)))\r\n    {\r\n            echo ''fail-Phone number should be of  10 to 12 digits long.'';\r\n    }\r\n    else if(!preg_match("/^[_\\.0-9a-zA-Z-]+@([0-9a-zA-Z][0-9a-zA-Z-]+\\.)+[a-zA-Z]{2,6}$/i", $email))\r\n      {\r\n        echo ''fail-Enter a vaild Email id.'';\r\n      }\r\n    else if(strlen($whatIDo)>200)\r\n      {\r\n        echo ''fail-What I Do can\\''t be more than 200 characters.'';\r\n      }\r\n      else if(strlen($status)>200)\r\n      {\r\n        echo ''fail-Status can\\''t be more than 200 characters.'';\r\n      }\r\n      else if(strlen($skype)>50)\r\n      {\r\n        echo ''fail-Skype can\\''t be more than 50 characters.'';\r\n      }\r\n', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(118, 9, '2017-10-31 16:07:10', 0, 'what does <!-- mean', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(119, 9, '2017-10-31 16:09:07', 0, 'else if(strlen($phoneNumber)!='''' && (strlen($phoneNumber)<10 || strlen($phoneNumber)>12 || !(is_numeric($phoneNumber)== 1)))\n    {\n            echo ''fail-Phone number should be of  10 to 12 digits long.'';\n    }', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(120, 10, '2017-11-03 00:05:37', 0, 'Hello', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(121, 9, '2017-11-05 03:05:55', 0, '0', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(122, 10, '2017-11-05 03:07:00', 0, 'hiii', 1, 0, '0000-00-00 00:00:00', 0, 0, 0),
(123, 10, '2017-11-05 03:07:11', 0, 'hjzsg', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(124, 10, '2017-11-05 03:10:44', 0, 'fxhojl', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(125, 10, '2017-11-05 04:18:47', 0, 'hii', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(126, 10, '2017-11-05 04:19:15', 0, 'hiii', 1, 0, '0000-00-00 00:00:00', 0, 0, 0),
(127, 10, '2017-11-05 04:19:32', 0, 'bye', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(128, 1, '2017-11-07 04:35:28', 0, 'hiiiiii', 1, 0, '0000-00-00 00:00:00', 0, 0, 0),
(129, 9, '2017-11-10 20:21:18', 0, '  printf("continuously read the device\\n\\n");\r\n  while (1)\r\n  {\r\n     // read every 500ms\r\n     delayMs(1000);\r\n\r\n     // Read 32 bits from MAX31855, write 0 to it\r\n     received = read(32, 0);\r\n     \r\n     // External thermistor results is returned in bits 31:18\r\n     light_freq = (received & 0xFFFC0000) >> 18;\r\n\r\n     // Negative values are returned in 2''s complement and need to be converted\r\n     if (light_freq & 0x2000)         // MSB is sign\r\n       light_freq |= 0xFFFFC000;      // Pad the negative value with 1''s to extend the sign bit\r\n\r\n     light_freq_f   = (float)light_freq / 6.0;     // frequencey to two decimal places\r\n\r\nif (light_freq_f == 0) {\r\n   light_freq_f = 0;\r\n }\r\n  else{\r\n    light_freq_f = 1;\r\n  }\r\n  //get current date and time\r\n  time_t rawtime;\r\n  struct tm * timeinfo;\r\n  time ( &rawtime );\r\n  timeinfo = localtime ( &rawtime );\r\n  \r\n\r\n  printf("Light Frequency %f Hz at %s \\n",light_freq_f,asctime (timeinfo));\r\n\r\n}\r\nreturn 0;\r\n}', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(130, 7, '2017-11-10 20:46:41', 0, 'hiiiiiii', 1, 0, '0000-00-00 00:00:00', 0, 0, 0),
(131, 7, '2017-11-10 20:46:50', 0, 'testing', 1, 1, '0000-00-00 00:00:00', 0, 0, 0),
(132, 9, '2017-11-11 21:32:51', 0, 'jkgiukghuh', 1, 0, '0000-00-00 00:00:00', 0, 0, 0),
(133, 9, '2017-11-12 03:21:07', 0, 'hgyew', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(134, 9, '2017-11-12 03:21:27', 0, 'kSjflDZ', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(135, 9, '2017-11-12 03:21:32', 0, ',bzdjbjdjdz', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(136, 9, '2017-11-12 03:21:39', 0, 'x,cn,c', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(137, 9, '2017-11-12 03:21:42', 0, 'cscccc', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(138, 9, '2017-11-12 03:21:45', 0, 'cccc', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(139, 9, '2017-11-12 03:21:49', 0, 'cccccccc', 1, 0, '0000-00-00 00:00:00', 0, 0, 0),
(140, 7, '2017-11-14 02:25:22', 0, '1', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(141, 7, '2017-11-14 02:25:24', 0, '2', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(142, 7, '2017-11-14 02:25:26', 0, '3', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(143, 7, '2017-11-14 02:25:30', 0, '4', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(144, 7, '2017-11-14 02:25:31', 0, '5', 1, 0, '0000-00-00 00:00:00', 0, 0, 0),
(145, 7, '2017-11-14 02:25:32', 0, '6', 1, 0, '0000-00-00 00:00:00', 0, 0, 0),
(146, 7, '2017-11-14 02:25:34', 0, '7', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(147, 7, '2017-11-14 02:25:35', 0, '8', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(148, 7, '2017-11-14 02:25:36', 0, '9', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(149, 7, '2017-11-14 02:25:38', 0, '10', 1, 0, '0000-00-00 00:00:00', 0, 0, 0),
(150, 7, '2017-11-14 02:47:45', 0, 'random numbers start', 1, 0, '0000-00-00 00:00:00', 0, 0, 0),
(151, 7, '2017-11-14 02:47:47', 0, '1', 1, 1, '0000-00-00 00:00:00', 0, 0, 0),
(152, 7, '2017-11-14 02:47:48', 0, '2', 0, 1, '0000-00-00 00:00:00', 0, 0, 0),
(153, 7, '2017-11-14 02:48:04', 0, '3', 0, 1, '0000-00-00 00:00:00', 0, 0, 0),
(154, 7, '2017-11-14 02:48:07', 0, '4', 0, 1, '0000-00-00 00:00:00', 0, 0, 0),
(155, 7, '2017-11-14 02:48:08', 0, '5', 0, 1, '0000-00-00 00:00:00', 0, 0, 0),
(156, 7, '2017-11-14 02:48:08', 0, '6', 0, 1, '0000-00-00 00:00:00', 0, 0, 0),
(157, 7, '2017-11-14 02:48:10', 0, '7', 0, 1, '0000-00-00 00:00:00', 0, 0, 0),
(158, 7, '2017-11-14 02:48:11', 0, '8', 0, 1, '0000-00-00 00:00:00', 0, 0, 0),
(159, 7, '2017-11-14 02:48:12', 0, '9', 0, 1, '0000-00-00 00:00:00', 0, 0, 0),
(160, 7, '2017-11-14 02:48:14', 0, '10', 0, 1, '0000-00-00 00:00:00', 0, 0, 0),
(161, 7, '2017-11-14 02:48:16', 0, '11', 0, 1, '0000-00-00 00:00:00', 0, 0, 0),
(162, 7, '2017-11-14 02:49:30', 0, '12', 0, 1, '0000-00-00 00:00:00', 0, 0, 0),
(163, 7, '2017-11-14 02:49:33', 0, '13', 0, 1, '0000-00-00 00:00:00', 0, 0, 0),
(164, 7, '2017-11-14 02:50:12', 0, '13', 0, 1, '0000-00-00 00:00:00', 0, 0, 0),
(165, 7, '2017-11-14 02:50:14', 0, '14', 0, 1, '0000-00-00 00:00:00', 0, 0, 0),
(166, 7, '2017-11-14 02:50:16', 0, '1', 0, 1, '0000-00-00 00:00:00', 0, 0, 0),
(167, 7, '2017-11-14 02:50:19', 0, '15', 0, 1, '0000-00-00 00:00:00', 0, 0, 0),
(168, 7, '2017-11-14 02:50:20', 0, '16', 0, 1, '0000-00-00 00:00:00', 0, 0, 0),
(169, 7, '2017-11-14 02:50:22', 0, '17', 0, 1, '0000-00-00 00:00:00', 0, 0, 0),
(170, 7, '2017-11-14 02:50:25', 0, '18', 0, 1, '0000-00-00 00:00:00', 0, 0, 0),
(171, 7, '2017-11-14 02:50:52', 0, '18', 0, 1, '0000-00-00 00:00:00', 0, 0, 0),
(172, 7, '2017-11-14 02:50:54', 0, '19', 0, 1, '0000-00-00 00:00:00', 0, 0, 0),
(173, 7, '2017-11-14 02:50:59', 0, '200000', 1, 1, '0000-00-00 00:00:00', 0, 0, 0),
(174, 1, '2017-11-16 22:19:06', 0, 'hiii', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(175, 1, '2017-11-16 22:20:01', 0, 'welcomeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(176, 1, '2017-11-16 22:25:17', 0, 'hiii', 1, 0, '0000-00-00 00:00:00', 0, 0, 0),
(177, 1, '2017-11-16 22:25:29', 0, 'this page is being archieved', 0, 1, '0000-00-00 00:00:00', 0, 0, 0),
(178, 1, '2017-11-16 22:26:12', 0, 'blahhhhh', 1, 0, '0000-00-00 00:00:00', 0, 0, 0),
(179, 9, '2017-11-17 03:32:35', 0, 'hiihihaf', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(180, 9, '2017-11-17 03:32:48', 0, 'lllllllllll', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(181, 9, '2017-11-17 03:32:51', 0, 'llallasd', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(182, 9, '2017-11-17 16:08:26', 0, 'ijhzsrg<br /><img src=''ijhzsrg'' />', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(183, 9, '2017-11-17 16:08:30', 0, 'bhgaeru<br /><img src=''bhgaeru'' />', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(184, 9, '2017-11-17 16:08:39', 0, 'bghntuinhjgk<br /><img src=''bghntuinhjgk'' />', 1, 0, '0000-00-00 00:00:00', 0, 0, 0),
(185, 9, '2017-11-17 16:08:56', 0, 'yhrgvd<br /><img src=''yhrgvd'' />', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(186, 9, '2017-11-18 06:29:35', 0, 'hhkh<br /><img src=''hhkh'' />', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(187, 9, '2017-11-18 06:29:44', 0, 'hjl<br /><img src=''hjl'' />', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(188, 9, '2017-11-18 06:29:56', 0, 'hhhhh<br /><img src=''hhhhh'' />', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(189, 9, '2017-11-18 06:30:33', 0, 'aaaa<br /><img src=''aaaa'' />', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(190, 9, '2017-11-20 19:42:54', 0, 'http://www.cs.odu.edu/~mgunnam/underconstruction.jpg<br /><img src=''http://www.cs.odu.edu/~mgunnam/underconstruction.jpg'' />', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(191, 7, '2017-11-21 17:50:03', 0, 'hiiii', 1, 0, '0000-00-00 00:00:00', 0, 0, 0),
(192, 7, '2017-11-21 17:52:45', 0, 'hiii', 1, 0, '0000-00-00 00:00:00', 0, 0, 0),
(193, 1, '2017-11-21 17:56:22', 0, 'testtt', 1, 0, '0000-00-00 00:00:00', 0, 0, 0),
(194, 1, '2017-11-21 18:19:05', 0, 'hiii', 1, 0, '0000-00-00 00:00:00', 0, 0, 0),
(195, 7, '2017-11-21 18:44:49', 0, '1', 0, 0, '0000-00-00 00:00:00', 0, 0, 0),
(196, 7, '2017-11-21 18:44:50', 0, '2', 1, 0, '0000-00-00 00:00:00', 0, 0, 0),
(197, 7, '2017-11-21 18:44:52', 0, '3', 0, 0, '0000-00-00 00:00:00', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `message_channel`
--

CREATE TABLE IF NOT EXISTS `message_channel` (
  `message_id` bigint(20) NOT NULL,
  `channel_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message_channel`
--

INSERT INTO `message_channel` (`message_id`, `channel_id`) VALUES
(5, 1),
(6, 1),
(7, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 2),
(21, 2),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 2),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 2),
(36, 2),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 2),
(50, 2),
(51, 2),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 3),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 2),
(89, 2),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 12),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 12),
(115, 2),
(116, 2),
(117, 1),
(118, 2),
(119, 2),
(120, 1),
(121, 1),
(122, 2),
(123, 2),
(124, 2),
(125, 2),
(126, 34),
(127, 34),
(128, 3),
(129, 1),
(130, 3),
(131, 3),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(150, 4),
(151, 4),
(152, 4),
(153, 4),
(154, 4),
(155, 4),
(156, 4),
(157, 4),
(158, 4),
(159, 4),
(160, 4),
(161, 4),
(162, 4),
(163, 4),
(164, 4),
(165, 4),
(166, 4),
(167, 4),
(168, 4),
(169, 4),
(170, 4),
(171, 4),
(172, 4),
(173, 4),
(174, 3),
(175, 3),
(176, 7),
(177, 7),
(178, 4),
(179, 1),
(180, 1),
(181, 1),
(182, 38),
(183, 38),
(184, 38),
(185, 1),
(186, 1),
(187, 1),
(188, 2),
(189, 2),
(190, 39),
(191, 3),
(192, 3),
(193, 3),
(194, 7),
(195, 3),
(196, 3),
(197, 3);

-- --------------------------------------------------------

--
-- Table structure for table `message_direct`
--

CREATE TABLE IF NOT EXISTS `message_direct` (
  `message_id` bigint(20) NOT NULL,
  `receiver_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message_direct`
--

INSERT INTO `message_direct` (`message_id`, `receiver_id`) VALUES
(8, 10),
(9, 9),
(10, 11),
(11, 10);

-- --------------------------------------------------------

--
-- Table structure for table `message_reaction`
--

CREATE TABLE IF NOT EXISTS `message_reaction` (
  `message_id` bigint(20) NOT NULL,
  `emoji_id` bigint(20) NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `message_reaction_id` bigint(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=284 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message_reaction`
--

INSERT INTO `message_reaction` (`message_id`, `emoji_id`, `created_by`, `created_at`, `message_reaction_id`) VALUES
(5, 1, 11, '2017-10-23 19:26:41', 1),
(67, 1, 9, '2017-10-24 16:52:16', 4),
(63, 1, 9, '2017-10-24 16:52:42', 5),
(43, 1, 9, '2017-10-24 17:00:56', 9),
(40, 1, 9, '2017-10-24 17:09:22', 15),
(74, 1, 9, '2017-10-24 17:45:26', 69),
(74, 2, 9, '2017-10-24 17:45:27', 70),
(71, 1, 9, '2017-10-24 17:45:34', 73),
(71, 2, 9, '2017-10-24 17:45:35', 74),
(70, 1, 9, '2017-10-24 17:48:01', 75),
(70, 2, 9, '2017-10-24 17:48:03', 76),
(91, 1, 9, '2017-10-24 18:01:58', 100),
(58, 1, 9, '2017-10-24 19:01:11', 107),
(75, 1, 9, '2017-10-24 19:37:18', 134),
(75, 2, 9, '2017-10-24 19:37:18', 135),
(19, 2, 9, '2017-10-24 19:58:20', 143),
(79, 1, 9, '2017-10-24 20:00:59', 151),
(86, 1, 9, '2017-10-24 20:03:56', 158),
(86, 2, 9, '2017-10-24 20:03:56', 159),
(85, 2, 9, '2017-10-24 20:05:31', 162),
(87, 1, 10, '2017-10-24 20:05:57', 164),
(84, 1, 9, '2017-10-24 20:54:30', 171),
(96, 2, 41, '2017-10-26 02:30:50', 176),
(96, 1, 9, '2017-10-26 02:50:13', 177),
(93, 2, 9, '2017-10-26 15:55:25', 185),
(85, 1, 9, '2017-10-26 15:55:33', 186),
(92, 1, 9, '2017-10-26 19:12:25', 188),
(81, 1, 9, '2017-10-26 21:47:31', 193),
(90, 2, 9, '2017-10-26 21:50:14', 196),
(90, 1, 9, '2017-10-26 22:02:44', 198),
(96, 1, 10, '2017-10-26 23:21:34', 203),
(90, 2, 10, '2017-10-26 23:21:39', 204),
(90, 1, 10, '2017-10-26 23:21:40', 205),
(94, 1, 9, '2017-10-27 17:04:17', 218),
(94, 2, 9, '2017-10-27 17:04:18', 219),
(7, 1, 9, '2017-10-27 17:28:15', 220),
(7, 2, 9, '2017-10-27 17:28:16', 221),
(103, 1, 9, '2017-10-27 17:30:05', 222),
(102, 1, 9, '2017-10-27 17:30:07', 223),
(101, 1, 9, '2017-10-27 17:30:09', 224),
(5, 2, 10, '2017-10-30 16:07:02', 225),
(109, 2, 10, '2017-10-31 21:05:02', 232),
(109, 1, 10, '2017-10-31 21:05:28', 233),
(36, 1, 9, '2017-11-02 23:09:44', 234),
(124, 2, 10, '2017-11-07 05:00:08', 235),
(117, 1, 9, '2017-11-09 04:53:00', 236),
(117, 2, 9, '2017-11-11 21:32:38', 242),
(109, 1, 9, '2017-11-12 03:19:53', 247),
(144, 1, 1, '2017-11-21 17:33:16', 253),
(144, 2, 1, '2017-11-21 17:33:16', 254),
(66, 1, 1, '2017-11-21 17:33:23', 255),
(66, 2, 1, '2017-11-21 17:33:24', 256),
(149, 2, 1, '2017-11-21 17:48:27', 258),
(174, 1, 1, '2017-11-21 17:48:33', 259),
(174, 2, 1, '2017-11-21 17:48:34', 260),
(175, 1, 1, '2017-11-21 17:48:43', 263),
(175, 2, 1, '2017-11-21 17:48:48', 264),
(147, 2, 1, '2017-11-21 17:48:56', 265),
(147, 1, 1, '2017-11-21 17:48:57', 266),
(146, 2, 1, '2017-11-21 17:49:10', 267),
(146, 1, 1, '2017-11-21 17:49:11', 268),
(149, 1, 7, '2017-11-21 17:49:47', 269),
(174, 1, 7, '2017-11-21 17:49:50', 270),
(174, 2, 7, '2017-11-21 17:49:58', 273),
(175, 2, 7, '2017-11-21 17:50:11', 276),
(175, 1, 7, '2017-11-21 17:50:12', 277),
(191, 1, 7, '2017-11-21 17:50:26', 280),
(193, 1, 1, '2017-11-21 17:56:33', 281),
(193, 2, 1, '2017-11-21 17:56:34', 282),
(176, 1, 1, '2017-11-21 18:19:13', 283);

-- --------------------------------------------------------

--
-- Table structure for table `shared_message`
--

CREATE TABLE IF NOT EXISTS `shared_message` (
  `id` bigint(20) NOT NULL,
  `message_id` bigint(20) NOT NULL,
  `shared_message_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `threaded_message`
--

CREATE TABLE IF NOT EXISTS `threaded_message` (
  `id` bigint(20) NOT NULL,
  `parent_message_id` bigint(20) NOT NULL,
  `content` text NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_active` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `threaded_message`
--

INSERT INTO `threaded_message` (`id`, `parent_message_id`, `content`, `created_by`, `created_at`, `is_active`) VALUES
(1, 102, 'threadddddd', 9, '2017-10-27 16:40:04', 0),
(2, 102, 'reply in threadddd', 11, '2017-10-27 16:40:05', 0),
(3, 101, 'another threadd', 10, '2017-10-27 16:41:21', 0),
(4, 101, 'yupppp', 11, '2017-10-27 16:41:22', 0),
(5, 7, 'zsdgbfzdh', 10, '2017-10-27 17:15:25', 0),
(6, 7, 'dfhtnxf', 11, '2017-10-27 17:15:29', 0),
(7, 101, 'xgfthnfcgxj', 11, '2017-10-27 16:48:22', 0),
(8, 21, 'aer', 10, '2017-10-29 01:00:20', 0),
(9, 5, 'hello', 9, '2017-10-29 01:09:14', 0),
(10, 5, 'jzdrgjhsdf', 10, '2017-10-30 02:21:20', 0),
(11, 45, 'hi', 10, '2017-10-30 02:25:00', 0),
(12, 5, 'hi', 10, '2017-10-30 02:25:09', 0),
(13, 105, 'jzhdkfhk<!--', 10, '2017-10-30 16:21:07', 0),
(14, 105, 'admin'' OR 1==1; --', 10, '2017-10-30 16:29:53', 0),
(15, 105, ' "can you sql inject with ''; -- ''?"', 10, '2017-10-30 16:30:01', 0),
(16, 105, '"what does <!-- mean"', 10, '2017-10-30 16:30:16', 0),
(17, 105, '"what does <!-- mean', 10, '2017-10-30 16:30:21', 0),
(18, 105, ' "what happens when I ~!@#$%^&*()_+_)(*&^%$#@!~}{:"><??:{}+}\\|}{P{}|-/*?"', 10, '2017-10-30 16:30:29', 0),
(19, 105, ' "what happens when I ~!@#$%^&*()_+_)(*&^%$#@!~}{:"><??:{}+}\\|}{P{}|-/*?', 10, '2017-10-30 16:30:33', 0),
(20, 5, 'ghrfh', 7, '2017-10-31 01:17:27', 0),
(21, 106, '                                convertedJSON[value[&quot;name&quot;]]= escapeHtml(value[&quot;value&quot;]);\r\n', 9, '2017-10-31 15:57:09', 0),
(22, 109, ' else if(strlen($phoneNumber)!=&#039;&#039; &amp;&amp; (strlen($phoneNumber)&lt;10 || strlen($phoneNumber)&gt;12 || !(is_numeric($phoneNumber)== 1)))\r\n    {\r\n            echo &#039;fail-Phone number should be of  10 to 12 digits long.&#039;;\r\n    }\r\n    else if(!preg_match(&quot;/^[_\\.0-9a-zA-Z-]+@([0-9a-zA-Z][0-9a-zA-Z-]+\\.)+[a-zA-Z]{2,6}$/i&quot;, $email))\r\n      {\r\n        echo &#039;fail-Enter a vaild Email id.&#039;;\r\n      }\r\n    else if(strlen($whatIDo)&gt;200)\r\n      {\r\n        echo &#039;fail-What I Do can\\&#039;t be more than 200 characters.&#039;;\r\n      }\r\n      else if(strlen($status)&gt;200)\r\n      {\r\n        echo &#039;fail-Status can\\&#039;t be more than 200 characters.&#039;;\r\n      }\r\n      else if(strlen($skype)&gt;50)\r\n      {\r\n        echo &#039;fail-Skype can\\&#039;t be more than 50 characters.&#039;;\r\n      }\r\n', 9, '2017-10-31 15:57:30', 0),
(23, 109, 'admin&#039; OR 1==1; --', 9, '2017-10-31 15:59:00', 0),
(24, 101, 'admin&#039; OR 1==1; --', 9, '2017-10-31 15:59:31', 0),
(25, 94, 'admin&#039; OR 1==1; --', 9, '2017-10-31 16:01:08', 0),
(26, 94, 'admin&quot; OR 1==1; --', 9, '2017-10-31 16:01:16', 0),
(27, 94, ' else if(strlen($phoneNumber)!=&#039;&#039; &amp;&amp; (strlen($phoneNumber)&lt;10 || strlen($phoneNumber)&gt;12 || !(is_numeric($phoneNumber)== 1)))\r\n    {\r\n            echo &#039;fail-Phone number should be of  10 to 12 digits long.&#039;;\r\n    }\r\n    else if(!preg_match(&quot;/^[_\\.0-9a-zA-Z-]+@([0-9a-zA-Z][0-9a-zA-Z-]+\\.)+[a-zA-Z]{2,6}$/i&quot;, $email))\r\n      {\r\n        echo &#039;fail-Enter a vaild Email id.&#039;;\r\n      }\r\n    else if(strlen($whatIDo)&gt;200)\r\n      {\r\n        echo &#039;fail-What I Do can\\&#039;t be more than 200 characters.&#039;;\r\n      }\r\n      else if(strlen($status)&gt;200)\r\n      {\r\n        echo &#039;fail-Status can\\&#039;t be more than 200 characters.&#039;;\r\n      }\r\n      else if(strlen($skype)&gt;50)\r\n      {\r\n        echo &#039;fail-Skype can\\&#039;t be more than 50 characters.&#039;;\r\n      }', 9, '2017-10-31 16:01:26', 0),
(28, 20, ' admin&quot; OR 1==1; --', 9, '2017-10-31 16:03:54', 0),
(29, 20, 'admin&#039; OR 1==1; --', 9, '2017-10-31 16:03:59', 0),
(30, 20, 'what does &lt;!-- mean', 9, '2017-10-31 16:04:05', 0),
(31, 26, 'what does <!-- mean', 9, '2017-10-31 16:07:54', 0),
(32, 26, 'can you sql inject with ''; -- ''?', 9, '2017-10-31 16:08:07', 0),
(33, 26, 'admin'' OR 1==1; --', 9, '2017-10-31 16:08:13', 0),
(34, 26, 'admin" OR 1==1; --', 9, '2017-10-31 16:08:18', 0),
(35, 26, 'what happens when I ~!@#$%^&*()_+_)(*&^%$#@!~}{:"><??:{}+}\\|}{P{}|-/*?''/''/''/''/', 9, '2017-10-31 16:08:33', 0),
(36, 26, 'else if(strlen($phoneNumber)!='''' && (strlen($phoneNumber)<10 || strlen($phoneNumber)>12 || !(is_numeric($phoneNumber)== 1)))\n    {\n            echo ''fail-Phone number should be of  10 to 12 digits long.'';\n    }', 9, '2017-10-31 16:10:03', 0),
(37, 51, 'Hdhdhd', 9, '2017-11-02 23:09:36', 0),
(38, 88, 'What''sup', 10, '2017-11-03 00:19:17', 0),
(39, 88, 'How''s it going', 10, '2017-11-03 00:19:27', 0),
(40, 122, 'fxdngvbmn', 10, '2017-11-05 03:10:41', 0),
(41, 126, 'welcomee', 10, '2017-11-05 04:19:26', 0),
(42, 66, '548548548', 1, '2017-11-07 04:35:34', 0),
(43, 132, ' vhbk', 9, '2017-11-11 21:33:00', 0),
(44, 176, 'last thread msg', 1, '2017-11-16 22:25:42', 0),
(45, 139, 'hiii', 9, '2017-11-17 03:33:02', 0),
(46, 184, 'bfhtb', 9, '2017-11-17 16:08:48', 0),
(47, 184, 'hdvgy', 9, '2017-11-17 16:08:51', 0),
(48, 122, 'hhh', 9, '2017-11-18 06:30:04', 0),
(49, 144, 'fxgt', 1, '2017-11-21 17:33:03', 0),
(50, 144, 'fxgt', 1, '2017-11-21 17:33:04', 0),
(51, 144, 'fxgt', 1, '2017-11-21 17:33:04', 0),
(52, 144, 'fxgt', 1, '2017-11-21 17:33:04', 0),
(53, 144, 'fxgt', 1, '2017-11-21 17:33:04', 0),
(54, 66, 'fxgt', 1, '2017-11-21 17:33:22', 0),
(55, 66, 'jhgzdxf', 1, '2017-11-21 17:33:38', 0),
(56, 149, 'xdfhtsxft', 1, '2017-11-21 17:33:50', 0),
(57, 149, 'hello', 1, '2017-11-21 17:40:57', 0),
(58, 149, 'how are you', 1, '2017-11-21 17:41:01', 0),
(59, 149, 'hvgki', 1, '2017-11-21 17:41:51', 0),
(60, 149, 'dkzurhu', 1, '2017-11-21 17:43:39', 0),
(61, 191, 'hello\\', 7, '2017-11-21 17:50:34', 0),
(62, 149, 'zdhgj', 7, '2017-11-21 17:52:36', 0),
(63, 192, 'zdfxhg', 7, '2017-11-21 17:52:48', 0),
(64, 192, 'zdyh', 7, '2017-11-21 17:52:59', 0),
(65, 192, 'hvuio', 7, '2017-11-21 17:53:03', 0),
(66, 145, 'dxfhfgt', 7, '2017-11-21 17:53:22', 0),
(67, 128, 'vhukfhvu', 7, '2017-11-21 17:53:35', 0),
(68, 131, 'hiii', 1, '2017-11-21 17:54:59', 0),
(69, 130, 'gSEZDGfsAGf', 1, '2017-11-21 17:55:10', 0),
(70, 131, 'zghudrakzf', 1, '2017-11-21 17:55:19', 0),
(71, 131, 'jhgdxrgkj', 1, '2017-11-21 17:56:09', 0),
(72, 193, 'zdfhadr', 1, '2017-11-21 17:56:26', 0),
(73, 193, 'xgfzfdr', 1, '2017-11-21 17:56:30', 0),
(74, 150, 'cfgyj', 1, '2017-11-21 17:56:54', 0),
(75, 151, ' vchjyfg', 1, '2017-11-21 17:57:08', 0),
(76, 173, 'bjhukhguo', 1, '2017-11-21 17:58:11', 0),
(77, 178, 'cghjy', 1, '2017-11-21 17:58:18', 0),
(78, 130, 'grfhgjaj', 1, '2017-11-21 18:17:44', 0),
(79, 130, 'grfhgjaj', 1, '2017-11-21 18:17:46', 0),
(80, 130, 'grfhgjaj', 1, '2017-11-21 18:17:47', 0),
(81, 130, 'grfhgjaj', 1, '2017-11-21 18:17:47', 0),
(82, 194, 'uhdxug', 1, '2017-11-21 18:19:11', 0),
(83, 196, 'hi', 7, '2017-11-21 18:45:03', 0),
(86, 139, 'vhg', 9, '2017-12-02 23:13:10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `threadmessage_reaction`
--

CREATE TABLE IF NOT EXISTS `threadmessage_reaction` (
  `threadmessage_reaction_id` bigint(20) NOT NULL,
  `threadmessage_id` bigint(20) NOT NULL,
  `emoji_id` bigint(20) NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `threadmessage_reaction`
--

INSERT INTO `threadmessage_reaction` (`threadmessage_reaction_id`, `threadmessage_id`, `emoji_id`, `created_by`, `created_at`) VALUES
(1, 1, 1, 10, '2017-10-28 01:45:54'),
(2, 2, 1, 9, '2017-10-28 01:45:54'),
(3, 1, 2, 10, '2017-10-28 01:47:54'),
(4, 1, 1, 9, '2017-10-28 01:45:54'),
(6, 42, 1, 1, '2017-11-21 17:33:25'),
(7, 42, 2, 1, '2017-11-21 17:33:26'),
(8, 72, 1, 1, '2017-11-21 17:56:35'),
(9, 75, 1, 1, '2017-11-21 17:57:10'),
(10, 75, 2, 1, '2017-11-21 17:57:10');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `profile_pic` varchar(150) NOT NULL DEFAULT './images/0.jpeg',
  `password` varchar(150) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `what_i_do` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `status_emoji` bigint(20) DEFAULT NULL,
  `skype` varchar(150) NOT NULL,
  `profile_pic_pref` int(11) NOT NULL DEFAULT '1',
  `github_avatar` varchar(200) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `first_name`, `last_name`, `email_id`, `profile_pic`, `password`, `phone_number`, `what_i_do`, `status`, `status_emoji`, `skype`, `profile_pic_pref`, `github_avatar`) VALUES
(1, '@mater', 'Tow', 'Mater', 'mater@rsprings.gov', './images/0.jpeg', 'mater', '1234567890', 'student at ODU', '', 1, '', -1, '0'),
(2, '@sally', 'Sally', 'Carrera', 'porsche@rsprings.gov', './images/0.jpeg', 'sally', '', '', '', 1, '', -1, '0'),
(3, '@doc', 'Doc', 'Hudson', 'hornet@rsprings.gov', './images/0.jpeg', 'doc', '', '', '', NULL, '', -1, '0'),
(6, '@mcmissile', 'Finn', 'McMissile', 'topsecret@agent.org', './images/0.jpeg', 'mcmissile', '', '', '', NULL, '', -1, '0'),
(7, '@mcqueen', 'Lightning', 'McQueen', 'kachow@rusteze.com', './images/0.jpeg', 'mcqueen', '', '', '', NULL, '', -1, '0'),
(8, '@chick', 'Chick', 'Hicks', 'chinga@cars.com', './images/0.jpeg', 'chick', '', '', '', NULL, '', 1, '0'),
(9, '@rohila', 'Rohila', 'Gudipati', 'rgudi001@odu.edu', './images/9.png', 'rohila', '', '', '', NULL, ' ', 1, '0'),
(10, '@maheedhar', 'Maheedhar', 'Gunnam', 'mgunn001@odu.edu', './images/10.png', 'maheedhar', '', '', '', NULL, '', 1, '0'),
(11, '@mahesh', 'Mahesh', 'Kukunooru', 'mkuku002@odu.edu', './images/0.jpeg', 'mahesh', '', '', '', NULL, '', 1, '0'),
(34, '@rohit', 'Rohit', 'Kandhi', 'rkand@odu.edu', ' 0', '1234', '', 'student', '', 1, '', 1, '0'),
(40, '@dg', 'dg', 'fh', 'rgudi@odu.edu', ' 0', 'rohila', '', '', '', 1, '', 1, '0'),
(41, '@aaaksh', 'Aaaksh', 'Nunna', 'aakashnunna@gmail.com', ' 0', 'aakash123', '1112345678', 'Nothing', 'Single - Looking for ....', 1, '', 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `user_channel`
--

CREATE TABLE IF NOT EXISTS `user_channel` (
  `user_id` bigint(20) NOT NULL,
  `channel_id` bigint(20) NOT NULL,
  `joined_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `left_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `starred` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_channel`
--

INSERT INTO `user_channel` (`user_id`, `channel_id`, `joined_at`, `left_at`, `starred`) VALUES
(1, 3, '2017-10-16 00:59:02', '0000-00-00 00:00:00', 0),
(1, 4, '2017-10-16 00:59:02', '0000-00-00 00:00:00', 0),
(1, 7, '2017-10-16 01:01:18', '0000-00-00 00:00:00', 0),
(2, 3, '2017-10-16 00:59:02', '0000-00-00 00:00:00', 0),
(2, 4, '2017-10-16 00:59:02', '0000-00-00 00:00:00', 0),
(2, 7, '2017-10-16 01:01:39', '0000-00-00 00:00:00', 0),
(3, 3, '2017-10-16 00:59:02', '0000-00-00 00:00:00', 0),
(3, 4, '2017-10-16 00:59:02', '0000-00-00 00:00:00', 0),
(3, 5, '2017-10-16 01:04:12', '0000-00-00 00:00:00', 0),
(3, 7, '2017-10-16 01:01:39', '0000-00-00 00:00:00', 0),
(6, 3, '2017-10-16 00:59:02', '0000-00-00 00:00:00', 0),
(6, 4, '2017-10-16 00:59:02', '0000-00-00 00:00:00', 0),
(7, 3, '2017-10-16 00:59:02', '0000-00-00 00:00:00', 0),
(7, 4, '2017-10-16 00:59:02', '0000-00-00 00:00:00', 0),
(7, 5, '2017-10-16 01:04:12', '0000-00-00 00:00:00', 0),
(7, 6, '2017-10-16 01:03:45', '0000-00-00 00:00:00', 0),
(7, 7, '2017-10-16 01:01:49', '0000-00-00 00:00:00', 0),
(7, 33, '2017-10-31 01:47:32', '0000-00-00 00:00:00', 0),
(8, 3, '2017-10-16 00:59:12', '0000-00-00 00:00:00', 0),
(8, 4, '2017-10-16 00:59:12', '0000-00-00 00:00:00', 0),
(8, 6, '2017-10-16 01:03:45', '0000-00-00 00:00:00', 0),
(9, 1, '2017-10-03 01:41:31', '0000-00-00 00:00:00', 0),
(9, 2, '2017-10-03 01:41:31', '0000-00-00 00:00:00', 0),
(9, 34, '2017-11-05 04:19:06', '0000-00-00 00:00:00', 0),
(9, 38, '2017-11-06 20:39:38', '2017-11-21 19:03:50', 0),
(9, 39, '2017-11-11 23:51:42', '0000-00-00 00:00:00', 0),
(10, 1, '2017-10-03 01:41:31', '0000-00-00 00:00:00', 0),
(10, 2, '2017-10-03 01:41:31', '0000-00-00 00:00:00', 0),
(10, 34, '2017-11-05 04:19:06', '0000-00-00 00:00:00', 0),
(10, 35, '2017-11-05 06:44:13', '0000-00-00 00:00:00', 0),
(10, 36, '2017-11-05 06:45:30', '0000-00-00 00:00:00', 0),
(10, 37, '2017-11-05 06:47:44', '0000-00-00 00:00:00', 0),
(10, 38, '2017-11-06 20:39:47', '0000-00-00 00:00:00', 0),
(10, 39, '2017-11-11 23:51:58', '0000-00-00 00:00:00', 0),
(10, 40, '2017-11-11 23:53:50', '0000-00-00 00:00:00', 0),
(11, 1, '2017-10-03 01:41:31', '0000-00-00 00:00:00', 0),
(11, 2, '2017-11-21 19:00:46', '0000-00-00 00:00:00', 0),
(11, 38, '2017-11-06 20:39:38', '0000-00-00 00:00:00', 0),
(11, 39, '2017-11-21 19:04:06', '0000-00-00 00:00:00', 0),
(11, 40, '2017-11-11 23:53:12', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_workspace`
--

CREATE TABLE IF NOT EXISTS `user_workspace` (
  `user_id` bigint(20) NOT NULL,
  `workspace_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_workspace`
--

INSERT INTO `user_workspace` (`user_id`, `workspace_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 1),
(10, 1),
(11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `workspace`
--

CREATE TABLE IF NOT EXISTS `workspace` (
  `workspace_id` bigint(20) NOT NULL,
  `workspace_name` varchar(50) NOT NULL,
  `workspace_domain` varchar(50) NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workspace`
--

INSERT INTO `workspace` (`workspace_id`, `workspace_name`, `workspace_domain`, `created_by`, `created_at`) VALUES
(1, 'InterConn_Dev', 'interconn', 11, '2017-10-03 01:35:12'),
(2, 'Carz', 'carz', 1, '2017-10-16 00:46:31');

-- --------------------------------------------------------

--
-- Table structure for table `workspace_channel`
--

CREATE TABLE IF NOT EXISTS `workspace_channel` (
  `workspace_id` bigint(20) NOT NULL,
  `channel_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workspace_channel`
--

INSERT INTO `workspace_channel` (`workspace_id`, `channel_id`) VALUES
(1, 1),
(1, 2),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `channel`
--
ALTER TABLE `channel`
  ADD PRIMARY KEY (`channel_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `channel_invitation`
--
ALTER TABLE `channel_invitation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `channel_id` (`channel_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `emoji`
--
ALTER TABLE `emoji`
  ADD PRIMARY KEY (`emoji_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `message_channel`
--
ALTER TABLE `message_channel`
  ADD PRIMARY KEY (`message_id`,`channel_id`),
  ADD KEY `channel_id` (`channel_id`);

--
-- Indexes for table `message_direct`
--
ALTER TABLE `message_direct`
  ADD PRIMARY KEY (`message_id`,`receiver_id`),
  ADD KEY `receiver_id` (`receiver_id`);

--
-- Indexes for table `message_reaction`
--
ALTER TABLE `message_reaction`
  ADD PRIMARY KEY (`message_reaction_id`),
  ADD KEY `emoji_id` (`emoji_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `message_id` (`message_id`);

--
-- Indexes for table `shared_message`
--
ALTER TABLE `shared_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_id` (`message_id`),
  ADD KEY `shared_message_id` (`shared_message_id`);

--
-- Indexes for table `threaded_message`
--
ALTER TABLE `threaded_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_message_id` (`parent_message_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `threadmessage_reaction`
--
ALTER TABLE `threadmessage_reaction`
  ADD PRIMARY KEY (`threadmessage_reaction_id`),
  ADD KEY `threadmessage_id` (`threadmessage_id`),
  ADD KEY `emoji_id` (`emoji_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email_id` (`email_id`),
  ADD KEY `status_emoji` (`status_emoji`);

--
-- Indexes for table `user_channel`
--
ALTER TABLE `user_channel`
  ADD PRIMARY KEY (`user_id`,`channel_id`),
  ADD KEY `channel_id` (`channel_id`);

--
-- Indexes for table `user_workspace`
--
ALTER TABLE `user_workspace`
  ADD PRIMARY KEY (`user_id`,`workspace_id`),
  ADD KEY `workspace_id` (`workspace_id`);

--
-- Indexes for table `workspace`
--
ALTER TABLE `workspace`
  ADD PRIMARY KEY (`workspace_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `workspace_channel`
--
ALTER TABLE `workspace_channel`
  ADD PRIMARY KEY (`workspace_id`,`channel_id`),
  ADD KEY `channel_id` (`channel_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `channel`
--
ALTER TABLE `channel`
  MODIFY `channel_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `channel_invitation`
--
ALTER TABLE `channel_invitation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emoji`
--
ALTER TABLE `emoji`
  MODIFY `emoji_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=198;
--
-- AUTO_INCREMENT for table `message_reaction`
--
ALTER TABLE `message_reaction`
  MODIFY `message_reaction_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=284;
--
-- AUTO_INCREMENT for table `shared_message`
--
ALTER TABLE `shared_message`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `threaded_message`
--
ALTER TABLE `threaded_message`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `threadmessage_reaction`
--
ALTER TABLE `threadmessage_reaction`
  MODIFY `threadmessage_reaction_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `workspace`
--
ALTER TABLE `workspace`
  MODIFY `workspace_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `channel`
--
ALTER TABLE `channel`
  ADD CONSTRAINT `channel_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `channel_invitation`
--
ALTER TABLE `channel_invitation`
  ADD CONSTRAINT `channel_invitation_ibfk_1` FOREIGN KEY (`channel_id`) REFERENCES `channel` (`channel_id`),
  ADD CONSTRAINT `channel_invitation_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `message_channel`
--
ALTER TABLE `message_channel`
  ADD CONSTRAINT `message_channel_ibfk_1` FOREIGN KEY (`channel_id`) REFERENCES `channel` (`channel_id`),
  ADD CONSTRAINT `message_channel_ibfk_2` FOREIGN KEY (`message_id`) REFERENCES `message` (`message_id`);

--
-- Constraints for table `message_direct`
--
ALTER TABLE `message_direct`
  ADD CONSTRAINT `message_direct_ibfk_1` FOREIGN KEY (`message_id`) REFERENCES `message` (`message_id`),
  ADD CONSTRAINT `message_direct_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `message_reaction`
--
ALTER TABLE `message_reaction`
  ADD CONSTRAINT `message_reaction_ibfk_1` FOREIGN KEY (`message_id`) REFERENCES `message` (`message_id`),
  ADD CONSTRAINT `message_reaction_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `message_reaction_ibfk_3` FOREIGN KEY (`emoji_id`) REFERENCES `emoji` (`emoji_id`);

--
-- Constraints for table `shared_message`
--
ALTER TABLE `shared_message`
  ADD CONSTRAINT `shared_message_ibfk_1` FOREIGN KEY (`message_id`) REFERENCES `message` (`message_id`),
  ADD CONSTRAINT `shared_message_ibfk_2` FOREIGN KEY (`shared_message_id`) REFERENCES `message` (`message_id`);

--
-- Constraints for table `threaded_message`
--
ALTER TABLE `threaded_message`
  ADD CONSTRAINT `threaded_message_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `threaded_message_ibfk_2` FOREIGN KEY (`parent_message_id`) REFERENCES `message` (`message_id`);

--
-- Constraints for table `threadmessage_reaction`
--
ALTER TABLE `threadmessage_reaction`
  ADD CONSTRAINT `threadmessage_reaction_ibfk_1` FOREIGN KEY (`threadmessage_id`) REFERENCES `threaded_message` (`id`),
  ADD CONSTRAINT `threadmessage_reaction_ibfk_2` FOREIGN KEY (`emoji_id`) REFERENCES `emoji` (`emoji_id`),
  ADD CONSTRAINT `threadmessage_reaction_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`status_emoji`) REFERENCES `emoji` (`emoji_id`);

--
-- Constraints for table `user_channel`
--
ALTER TABLE `user_channel`
  ADD CONSTRAINT `user_channel_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `user_channel_ibfk_2` FOREIGN KEY (`channel_id`) REFERENCES `channel` (`channel_id`);

--
-- Constraints for table `user_workspace`
--
ALTER TABLE `user_workspace`
  ADD CONSTRAINT `user_workspace_ibfk_1` FOREIGN KEY (`workspace_id`) REFERENCES `workspace` (`workspace_id`),
  ADD CONSTRAINT `user_workspace_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `workspace`
--
ALTER TABLE `workspace`
  ADD CONSTRAINT `workspace_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `workspace_channel`
--
ALTER TABLE `workspace_channel`
  ADD CONSTRAINT `workspace_channel_ibfk_1` FOREIGN KEY (`workspace_id`) REFERENCES `workspace` (`workspace_id`),
  ADD CONSTRAINT `workspace_channel_ibfk_2` FOREIGN KEY (`channel_id`) REFERENCES `channel` (`channel_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
