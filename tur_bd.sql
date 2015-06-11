-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Июн 11 2015 г., 04:21
-- Версия сервера: 5.6.21
-- Версия PHP: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `tur_bd`
--

-- --------------------------------------------------------

--
-- Структура таблицы `buses`
--

CREATE TABLE IF NOT EXISTS `buses` (
`id` int(11) NOT NULL,
  `description` text NOT NULL,
  `seat_map` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `buses`
--

INSERT INTO `buses` (`id`, `description`, `seat_map`) VALUES
(1, 'Автобус № 979', '<div class="autobus">\r\n			<div class="col-1">\r\n				<div class="bukva">\r\n					A\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					<a class="bombear" id="1">\r\n					1\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					<a class="bombear" id="5">\r\n					5\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					<a class="bombear" id="7">\r\n					7\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					<a class="bombear" id="13">\r\n					13\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					<a class="bombear" id="15">\r\n					15\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					<a class="bombear" id="21">\r\n					21\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					<a class="bombear" id="23">\r\n					23\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					<a class="bombear" id="27">\r\n					27\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					<a class="bombear" id="29">\r\n					29\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="33">\r\n					33\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="35">\r\n					35\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="41">\r\n					41\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="43">\r\n					43\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="49">\r\n					49\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="51">\r\n					51\r\n					</a>\r\n					\r\n				</div>\r\n				\r\n\r\n\r\n\r\n\r\n\r\n			</div>\r\n			<div class="col-2">\r\n				<div class="bukva">\r\n					B\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="2">\r\n					2\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="6">\r\n					6\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="8">\r\n					8\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="14">\r\n					14\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="16">\r\n					16\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="22">\r\n					22\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="24">\r\n					24\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="28">\r\n					28\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="30">\r\n					30\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="34">\r\n					34\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="36">\r\n					36\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="42">\r\n					42\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="44">\r\n					44\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="50">\r\n					50\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto" style="opacity:0;">\r\n					 <a class="bombear" id="5">\r\n					5\r\n					</a>\r\n					\r\n				</div>\r\n			</div>\r\n\r\n			\r\n			<div class="col-3">\r\n				<div class="bukva">\r\n					C\r\n				</div>\r\n\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="3">\r\n					3\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto prohod">\r\n					\r\n					проход\r\n					\r\n					\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="9">\r\n					9\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="11">\r\n					11\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="17">\r\n					17\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="19">\r\n					19\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="25">\r\n					25\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto prohod">\r\n					\r\n					проход\r\n					\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="31">\r\n					31\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="37">\r\n					37\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="39">\r\n					39\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="45">\r\n					45\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="47">\r\n					47\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="52">\r\n					52\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto nomest ">\r\n					 <a class="bombear">\r\n					gecnj\r\n					</a>\r\n					\r\n				</div>\r\n			</div>\r\n\r\n			<div class="col-4">\r\n\r\n				<div class="bukva">\r\n					D\r\n				</div>\r\n\r\n\r\n\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="4">\r\n					4\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto prohod">\r\n					\r\n					вниз\r\n					\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="10">\r\n					10\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="12">\r\n					12\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="18">\r\n					18\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="20">\r\n					20\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="26">\r\n					26\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto prohod">\r\n					\r\n					туалет\r\n					\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="32">\r\n					32\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="38">\r\n					38\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="40">\r\n					40\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="46">\r\n					46\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="48">\r\n					48\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="53">\r\n					53\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto nomest ">\r\n					 <a class="bombear">\r\n					ytn\r\n					</a>\r\n					\r\n				</div>\r\n			</div>\r\n		</div>');

-- --------------------------------------------------------

--
-- Структура таблицы `buses_to_dates`
--

CREATE TABLE IF NOT EXISTS `buses_to_dates` (
`id` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `dir_date_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `buses_to_dates`
--

INSERT INTO `buses_to_dates` (`id`, `bus_id`, `dir_date_id`) VALUES
(86, 1, 5),
(87, 1, 6),
(88, 1, 7),
(89, 1, 8),
(90, 1, 9),
(91, 1, 10),
(92, 1, 11),
(93, 1, 12),
(94, 1, 13),
(95, 1, 14),
(96, 1, 15),
(97, 1, 16),
(98, 1, 17),
(99, 1, 18),
(100, 1, 19),
(101, 1, 20),
(102, 1, 21),
(103, 1, 22),
(104, 1, 23),
(105, 1, 24),
(106, 1, 25),
(107, 1, 26);

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
`id` int(11) NOT NULL,
  `fio` varchar(255) NOT NULL,
  `passport` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `directions`
--

CREATE TABLE IF NOT EXISTS `directions` (
`id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `directions`
--

INSERT INTO `directions` (`id`, `description`) VALUES
(1, 'Ст.Оскол — порт Кавказ — Приморский-Береговое-Феодосия — Судак');

-- --------------------------------------------------------

--
-- Структура таблицы `dir_dates`
--

CREATE TABLE IF NOT EXISTS `dir_dates` (
`id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `from_city` tinyint(1) NOT NULL,
  `direction_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dir_dates`
--

INSERT INTO `dir_dates` (`id`, `date`, `from_city`, `direction_id`) VALUES
(5, '2015-06-19 00:00:00', 1, 1),
(6, '2015-06-20 00:00:00', 0, 1),
(7, '2015-06-26 00:00:00', 1, 1),
(8, '2015-06-27 00:00:00', 0, 1),
(9, '2015-07-03 00:00:00', 1, 1),
(10, '2015-07-04 00:00:00', 0, 1),
(11, '2015-07-10 00:00:00', 1, 1),
(12, '2015-07-11 00:00:00', 0, 1),
(13, '2015-07-17 00:00:00', 1, 1),
(14, '2015-07-18 00:00:00', 0, 1),
(15, '2015-07-24 00:00:00', 1, 1),
(16, '2015-07-25 00:00:00', 0, 1),
(17, '2015-07-31 00:00:00', 1, 1),
(18, '2015-08-01 00:00:00', 0, 1),
(19, '2015-08-07 00:00:00', 1, 1),
(20, '2015-08-08 00:00:00', 0, 1),
(21, '2015-08-14 00:00:00', 1, 1),
(22, '2015-08-15 00:00:00', 0, 1),
(23, '2015-08-21 00:00:00', 1, 1),
(24, '2015-08-22 00:00:00', 0, 1),
(25, '2015-08-28 00:00:00', 1, 1),
(26, '2015-08-29 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `hotels`
--

CREATE TABLE IF NOT EXISTS `hotels` (
`id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hotels`
--

INSERT INTO `hotels` (`id`, `title`, `description`) VALUES
(3, 'Риф', ''),
(4, 'Роксана', ''),
(5, 'У Катюши', ''),
(6, 'У моря', ''),
(7, 'Зеленый дворик', '');

-- --------------------------------------------------------

--
-- Структура таблицы `hotel_dates`
--

CREATE TABLE IF NOT EXISTS `hotel_dates` (
`id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `hotel_room_id` int(11) NOT NULL,
  `free_room` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hotel_dates`
--

INSERT INTO `hotel_dates` (`id`, `date`, `hotel_id`, `hotel_room_id`, `free_room`) VALUES
(16, '2015-06-19 00:00:00', 3, 7, 1),
(17, '2015-06-19 00:00:00', 3, 8, 1),
(18, '2015-06-19 00:00:00', 3, 9, 1),
(19, '2015-06-19 00:00:00', 3, 10, 1),
(20, '2015-06-19 00:00:00', 3, 11, 1),
(21, '2015-06-19 00:00:00', 3, 12, 1),
(22, '2015-06-19 00:00:00', 3, 13, 1),
(23, '2015-06-19 00:00:00', 3, 14, 1),
(24, '2015-06-19 00:00:00', 3, 15, 1),
(25, '2015-06-19 00:00:00', 3, 16, 1),
(26, '2015-06-19 00:00:00', 3, 17, 1),
(27, '2015-06-26 00:00:00', 3, 7, 1),
(28, '2015-06-26 00:00:00', 3, 8, 1),
(29, '2015-06-26 00:00:00', 3, 9, 1),
(30, '2015-06-26 00:00:00', 3, 10, 1),
(31, '2015-06-26 00:00:00', 3, 11, 1),
(32, '2015-06-26 00:00:00', 3, 12, 1),
(33, '2015-06-26 00:00:00', 3, 13, 1),
(34, '2015-06-26 00:00:00', 3, 14, 1),
(35, '2015-06-26 00:00:00', 3, 15, 1),
(36, '2015-06-26 00:00:00', 3, 16, 1),
(37, '2015-06-26 00:00:00', 3, 17, 1),
(38, '2015-07-03 00:00:00', 3, 7, 1),
(39, '2015-07-03 00:00:00', 3, 8, 1),
(40, '2015-07-03 00:00:00', 3, 9, 1),
(41, '2015-07-03 00:00:00', 3, 10, 1),
(42, '2015-07-03 00:00:00', 3, 11, 1),
(43, '2015-07-03 00:00:00', 3, 12, 1),
(44, '2015-07-03 00:00:00', 3, 13, 1),
(45, '2015-07-03 00:00:00', 3, 14, 1),
(46, '2015-07-03 00:00:00', 3, 15, 1),
(47, '2015-07-03 00:00:00', 3, 16, 1),
(48, '2015-07-03 00:00:00', 3, 17, 1),
(49, '2015-07-10 00:00:00', 3, 7, 1),
(50, '2015-07-10 00:00:00', 3, 8, 1),
(51, '2015-07-10 00:00:00', 3, 9, 1),
(52, '2015-07-10 00:00:00', 3, 10, 1),
(53, '2015-07-10 00:00:00', 3, 11, 1),
(54, '2015-07-10 00:00:00', 3, 12, 1),
(55, '2015-07-10 00:00:00', 3, 13, 1),
(56, '2015-07-10 00:00:00', 3, 14, 1),
(57, '2015-07-10 00:00:00', 3, 15, 1),
(58, '2015-07-10 00:00:00', 3, 16, 1),
(59, '2015-07-10 00:00:00', 3, 17, 1),
(60, '2015-07-17 00:00:00', 3, 7, 1),
(61, '2015-07-17 00:00:00', 3, 8, 1),
(62, '2015-07-17 00:00:00', 3, 9, 1),
(63, '2015-07-17 00:00:00', 3, 10, 1),
(64, '2015-07-17 00:00:00', 3, 11, 1),
(65, '2015-07-17 00:00:00', 3, 12, 1),
(66, '2015-07-17 00:00:00', 3, 13, 1),
(67, '2015-07-17 00:00:00', 3, 14, 1),
(68, '2015-07-17 00:00:00', 3, 15, 1),
(69, '2015-07-17 00:00:00', 3, 16, 1),
(70, '2015-07-17 00:00:00', 3, 17, 1),
(71, '2015-07-24 00:00:00', 3, 7, 1),
(72, '2015-07-24 00:00:00', 3, 8, 1),
(73, '2015-07-24 00:00:00', 3, 9, 1),
(74, '2015-07-24 00:00:00', 3, 10, 1),
(75, '2015-07-24 00:00:00', 3, 11, 1),
(76, '2015-07-24 00:00:00', 3, 12, 1),
(77, '2015-07-24 00:00:00', 3, 13, 1),
(78, '2015-07-24 00:00:00', 3, 14, 1),
(79, '2015-07-24 00:00:00', 3, 15, 1),
(80, '2015-07-24 00:00:00', 3, 16, 1),
(81, '2015-07-24 00:00:00', 3, 17, 1),
(82, '2015-07-31 00:00:00', 3, 7, 1),
(83, '2015-07-31 00:00:00', 3, 8, 1),
(84, '2015-07-31 00:00:00', 3, 9, 1),
(85, '2015-07-31 00:00:00', 3, 10, 1),
(86, '2015-07-31 00:00:00', 3, 11, 1),
(87, '2015-07-31 00:00:00', 3, 12, 1),
(88, '2015-07-31 00:00:00', 3, 13, 1),
(89, '2015-07-31 00:00:00', 3, 14, 1),
(90, '2015-07-31 00:00:00', 3, 15, 1),
(91, '2015-07-31 00:00:00', 3, 16, 1),
(92, '2015-07-31 00:00:00', 3, 17, 1),
(93, '2015-08-07 00:00:00', 3, 7, 1),
(94, '2015-08-07 00:00:00', 3, 8, 1),
(95, '2015-08-07 00:00:00', 3, 9, 1),
(96, '2015-08-07 00:00:00', 3, 10, 1),
(97, '2015-08-07 00:00:00', 3, 11, 1),
(98, '2015-08-07 00:00:00', 3, 12, 1),
(99, '2015-08-07 00:00:00', 3, 13, 1),
(100, '2015-08-07 00:00:00', 3, 14, 1),
(101, '2015-08-07 00:00:00', 3, 15, 1),
(102, '2015-08-07 00:00:00', 3, 16, 1),
(103, '2015-08-07 00:00:00', 3, 17, 1),
(104, '2015-08-14 00:00:00', 3, 7, 1),
(105, '2015-08-14 00:00:00', 3, 8, 1),
(106, '2015-08-14 00:00:00', 3, 9, 1),
(107, '2015-08-14 00:00:00', 3, 10, 1),
(108, '2015-08-14 00:00:00', 3, 11, 1),
(109, '2015-08-14 00:00:00', 3, 12, 1),
(110, '2015-08-14 00:00:00', 3, 13, 1),
(111, '2015-08-14 00:00:00', 3, 14, 1),
(112, '2015-08-14 00:00:00', 3, 15, 1),
(113, '2015-08-14 00:00:00', 3, 16, 1),
(114, '2015-08-14 00:00:00', 3, 17, 1),
(115, '2015-08-21 00:00:00', 3, 7, 1),
(116, '2015-08-21 00:00:00', 3, 8, 1),
(117, '2015-08-21 00:00:00', 3, 9, 1),
(118, '2015-08-21 00:00:00', 3, 10, 1),
(119, '2015-08-21 00:00:00', 3, 11, 1),
(120, '2015-08-21 00:00:00', 3, 12, 1),
(121, '2015-08-21 00:00:00', 3, 13, 1),
(122, '2015-08-21 00:00:00', 3, 14, 1),
(123, '2015-08-21 00:00:00', 3, 15, 1),
(124, '2015-08-21 00:00:00', 3, 16, 1),
(125, '2015-08-21 00:00:00', 3, 17, 1),
(126, '2015-08-28 00:00:00', 3, 7, 1),
(127, '2015-08-28 00:00:00', 3, 8, 1),
(128, '2015-08-28 00:00:00', 3, 9, 1),
(129, '2015-08-28 00:00:00', 3, 10, 1),
(130, '2015-08-28 00:00:00', 3, 11, 1),
(131, '2015-08-28 00:00:00', 3, 12, 1),
(132, '2015-08-28 00:00:00', 3, 13, 1),
(133, '2015-08-28 00:00:00', 3, 14, 1),
(134, '2015-08-28 00:00:00', 3, 15, 1),
(135, '2015-08-28 00:00:00', 3, 16, 1),
(136, '2015-08-28 00:00:00', 3, 17, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `hotel_rooms`
--

CREATE TABLE IF NOT EXISTS `hotel_rooms` (
`id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `hotel_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hotel_rooms`
--

INSERT INTO `hotel_rooms` (`id`, `description`, `hotel_id`) VALUES
(7, '№3 2-х мест. 1 эт.', 3),
(8, '№6 (тень) 2-х мест. 1 эт.', 3),
(9, '№10 (тень) 3-х мест. 2 эт.', 3),
(10, '№16 3-х мест. 2 эт. (веранда)', 3),
(11, '№17 2-х мест. 2 эт. (веранда)', 3),
(12, '№18 2-х мест. 2 эт. (веранда)', 3),
(13, '№9 4-х мест. 2 эт.', 3),
(14, '№15 (отдел. вход) под верандой 2-х мест. 1 эт.', 3),
(15, '№7 3- мест. (балкон) 2 эт.', 3),
(16, '№8 2-х мест. (балкон) 2 эт.', 3),
(17, '№12 (солнечный) 3-х мест. 2 эт.', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `managers`
--

CREATE TABLE IF NOT EXISTS `managers` (
`id` int(11) NOT NULL,
  `fio` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `readonly` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `managers`
--

INSERT INTO `managers` (`id`, `fio`, `login`, `password`, `readonly`) VALUES
(1, 'ФИО', 'chayka', '$2y$10$rWmUgiZs4UC1WntDTSbMmukCS9psDnLdblV29LW7wo25KPkf0RbMm', 0),
(2, 'Новый Менеджер', 'manager', '$2y$10$wbdW.J8rvTdcCJVso5MzXOPkWAS7.dgRsx88NiHw2bHOc9unKbO7K', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
`id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date` datetime NOT NULL,
  `manager_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `orders_to_clients`
--

CREATE TABLE IF NOT EXISTS `orders_to_clients` (
  `order_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `orders_to_dates`
--

CREATE TABLE IF NOT EXISTS `orders_to_dates` (
  `order_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `room_date` varchar(255) NOT NULL,
  `room_id` int(11) NOT NULL,
`id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='room dates';

-- --------------------------------------------------------

--
-- Структура таблицы `orders_to_dirs`
--

CREATE TABLE IF NOT EXISTS `orders_to_dirs` (
  `date_dir_id` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `seat_num` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
`id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `buses`
--
ALTER TABLE `buses`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `buses_to_dates`
--
ALTER TABLE `buses_to_dates`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `directions`
--
ALTER TABLE `directions`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dir_dates`
--
ALTER TABLE `dir_dates`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `hotels`
--
ALTER TABLE `hotels`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `hotel_dates`
--
ALTER TABLE `hotel_dates`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `hotel_rooms`
--
ALTER TABLE `hotel_rooms`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `managers`
--
ALTER TABLE `managers`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders_to_clients`
--
ALTER TABLE `orders_to_clients`
 ADD PRIMARY KEY (`order_id`,`client_id`);

--
-- Индексы таблицы `orders_to_dates`
--
ALTER TABLE `orders_to_dates`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders_to_dirs`
--
ALTER TABLE `orders_to_dirs`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `buses`
--
ALTER TABLE `buses`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `buses_to_dates`
--
ALTER TABLE `buses_to_dates`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `directions`
--
ALTER TABLE `directions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `dir_dates`
--
ALTER TABLE `dir_dates`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT для таблицы `hotels`
--
ALTER TABLE `hotels`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `hotel_dates`
--
ALTER TABLE `hotel_dates`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=137;
--
-- AUTO_INCREMENT для таблицы `hotel_rooms`
--
ALTER TABLE `hotel_rooms`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT для таблицы `managers`
--
ALTER TABLE `managers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `orders_to_dates`
--
ALTER TABLE `orders_to_dates`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `orders_to_dirs`
--
ALTER TABLE `orders_to_dirs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
