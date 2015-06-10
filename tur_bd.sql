-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Июн 09 2015 г., 19:45
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `buses`
--

INSERT INTO `buses` (`id`, `description`, `seat_map`) VALUES
(1, '№544 автобус описание ', '<div class="autobus">\r\n			<div class="col-1">\r\n				<div class="bukva">\r\n					A\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					<a class="bombear" id="1">\r\n					1\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					<a class="bombear" id="5">\r\n					5\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					<a class="bombear" id="7">\r\n					7\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					<a class="bombear" id="13">\r\n					13\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					<a class="bombear" id="15">\r\n					15\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					<a class="bombear" id="21">\r\n					21\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					<a class="bombear" id="23">\r\n					23\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					<a class="bombear" id="27">\r\n					27\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					<a class="bombear" id="29">\r\n					29\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="33">\r\n					33\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="35">\r\n					35\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="41">\r\n					41\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="43">\r\n					43\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="49">\r\n					49\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="51">\r\n					51\r\n					</a>\r\n					\r\n				</div>\r\n				\r\n\r\n\r\n\r\n\r\n\r\n			</div>\r\n			<div class="col-2">\r\n				<div class="bukva">\r\n					B\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="2">\r\n					2\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="6">\r\n					6\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="8">\r\n					8\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="14">\r\n					14\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="16">\r\n					16\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="22">\r\n					22\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="24">\r\n					24\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="28">\r\n					28\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="30">\r\n					30\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="34">\r\n					34\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="36">\r\n					36\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="42">\r\n					42\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="44">\r\n					44\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="50">\r\n					50\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto" style="opacity:0;">\r\n					 <a class="bombear" id="5">\r\n					5\r\n					</a>\r\n					\r\n				</div>\r\n			</div>\r\n\r\n			\r\n			<div class="col-3">\r\n				<div class="bukva">\r\n					C\r\n				</div>\r\n\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="3">\r\n					3\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto prohod">\r\n					\r\n					проход\r\n					\r\n					\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="9">\r\n					9\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="11">\r\n					11\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="17">\r\n					17\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="19">\r\n					19\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="25">\r\n					25\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto prohod">\r\n					\r\n					проход\r\n					\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="31">\r\n					31\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="37">\r\n					37\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="39">\r\n					39\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="45">\r\n					45\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="47">\r\n					47\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="52">\r\n					52\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto nomest ">\r\n					 <a class="bombear">\r\n					gecnj\r\n					</a>\r\n					\r\n				</div>\r\n			</div>\r\n\r\n			<div class="col-4">\r\n\r\n				<div class="bukva">\r\n					D\r\n				</div>\r\n\r\n\r\n\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="4">\r\n					4\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto prohod">\r\n					\r\n					вниз\r\n					\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="10">\r\n					10\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="12">\r\n					12\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="18">\r\n					18\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="20">\r\n					20\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="26">\r\n					26\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto prohod">\r\n					\r\n					туалет\r\n					\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="32">\r\n					32\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="38">\r\n					38\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="40">\r\n					40\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="46">\r\n					46\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="48">\r\n					48\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="53">\r\n					53\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto nomest ">\r\n					 <a class="bombear">\r\n					ytn\r\n					</a>\r\n					\r\n				</div>\r\n			</div>\r\n		</div>'),
(2, '№878 автобус описание', '<div class="autobus">\r\n			<div class="col-1">\r\n				<div class="bukva">\r\n					A\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					<a class="bombear" id="1">\r\n					1\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					<a class="bombear" id="5">\r\n					5\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					<a class="bombear" id="7">\r\n					7\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					<a class="bombear" id="13">\r\n					13\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					<a class="bombear" id="15">\r\n					15\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					<a class="bombear" id="21">\r\n					21\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					<a class="bombear" id="23">\r\n					23\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					<a class="bombear" id="27">\r\n					27\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					<a class="bombear" id="29">\r\n					29\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="33">\r\n					33\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="35">\r\n					35\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="41">\r\n					41\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="43">\r\n					43\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="49">\r\n					49\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="51">\r\n					51\r\n					</a>\r\n					\r\n				</div>\r\n				\r\n\r\n\r\n\r\n\r\n\r\n			</div>\r\n			<div class="col-2">\r\n				<div class="bukva">\r\n					B\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="2">\r\n					2\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="6">\r\n					6\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="8">\r\n					8\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="14">\r\n					14\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="16">\r\n					16\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="22">\r\n					22\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="24">\r\n					24\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="28">\r\n					28\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="30">\r\n					30\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="34">\r\n					34\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="36">\r\n					36\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="42">\r\n					42\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="44">\r\n					44\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="50">\r\n					50\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto" style="opacity:0;">\r\n					 <a class="bombear" id="5">\r\n					5\r\n					</a>\r\n					\r\n				</div>\r\n			</div>\r\n\r\n			\r\n			<div class="col-3">\r\n				<div class="bukva">\r\n					C\r\n				</div>\r\n\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="3">\r\n					3\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto prohod">\r\n					\r\n					проход\r\n					\r\n					\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="9">\r\n					9\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="11">\r\n					11\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="17">\r\n					17\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="19">\r\n					19\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="25">\r\n					25\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto prohod">\r\n					\r\n					проход\r\n					\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="31">\r\n					31\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="37">\r\n					37\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="39">\r\n					39\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="45">\r\n					45\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="47">\r\n					47\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="52">\r\n					52\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto nomest ">\r\n					 <a class="bombear">\r\n					gecnj\r\n					</a>\r\n					\r\n				</div>\r\n			</div>\r\n\r\n			<div class="col-4">\r\n\r\n				<div class="bukva">\r\n					D\r\n				</div>\r\n\r\n\r\n\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="4">\r\n					4\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto prohod">\r\n					\r\n					вниз\r\n					\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="10">\r\n					10\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="12">\r\n					12\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="18">\r\n					18\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="20">\r\n					20\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="26">\r\n					26\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto prohod">\r\n					\r\n					туалет\r\n					\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="32">\r\n					32\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="38">\r\n					38\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="40">\r\n					40\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="46">\r\n					46\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="48">\r\n					48\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto">\r\n					 <a class="bombear" id="53">\r\n					53\r\n					</a>\r\n					\r\n				</div>\r\n\r\n				<div class="mesto nomest ">\r\n					 <a class="bombear">\r\n					ytn\r\n					</a>\r\n					\r\n				</div>\r\n			</div>\r\n		</div>');

-- --------------------------------------------------------

--
-- Структура таблицы `buses_to_dates`
--

CREATE TABLE IF NOT EXISTS `buses_to_dates` (
`id` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `dir_date_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `buses_to_dates`
--

INSERT INTO `buses_to_dates` (`id`, `bus_id`, `dir_date_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 2, 3),
(6, 1, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
`id` int(11) NOT NULL,
  `fio` varchar(255) NOT NULL,
  `passport` varchar(255) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`id`, `fio`, `passport`, `age`) VALUES
(3, 'Петр Петров', '4554 864646', 40),
(4, 'Маша Петрова', '4554 868181', 35),
(5, 'петя', '345345', 40),
(6, 'Иванов Петров', '', 45),
(7, 'Иван Иванов', '', 10),
(8, 'Петр Иванов', '1515 159753', 50),
(9, 'dsfsdf', 'sdfds', 34),
(10, 'sdf', '345', 56),
(11, 'sdfdsf', 'dsfsdf', 45);

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
(1, 'Белгород-Анапа'),
(2, 'Старый Оскол - Крым');

-- --------------------------------------------------------

--
-- Структура таблицы `dir_dates`
--

CREATE TABLE IF NOT EXISTS `dir_dates` (
`id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `from_city` tinyint(1) NOT NULL,
  `direction_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dir_dates`
--

INSERT INTO `dir_dates` (`id`, `date`, `from_city`, `direction_id`) VALUES
(1, '2015-06-06 05:08:00', 1, 1),
(2, '2015-06-17 06:15:00', 0, 1),
(3, '2015-06-09 03:11:00', 1, 2),
(4, '2015-06-23 04:08:00', 0, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `hotels`
--

CREATE TABLE IF NOT EXISTS `hotels` (
`id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hotels`
--

INSERT INTO `hotels` (`id`, `title`, `description`) VALUES
(1, 'Отель Отель', 'описание описание описание описание описание описание описание описание '),
(2, 'Другой отель', 'описание описание описание описание описание описание описание описание ');

-- --------------------------------------------------------

--
-- Структура таблицы `hotel_dates`
--

CREATE TABLE IF NOT EXISTS `hotel_dates` (
`id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `hotel_room_id` int(11) NOT NULL,
  `free_rooms` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hotel_dates`
--

INSERT INTO `hotel_dates` (`id`, `date`, `hotel_id`, `hotel_room_id`, `free_rooms`) VALUES
(1, '2015-06-06 05:09:00', 1, 1, 1),
(2, '2015-06-06 00:00:00', 2, 2, 1),
(3, '2015-06-06 00:00:00', 1, 3, 1),
(4, '2015-06-06 00:00:00', 2, 4, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `hotel_rooms`
--

CREATE TABLE IF NOT EXISTS `hotel_rooms` (
`id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hotel_rooms`
--

INSERT INTO `hotel_rooms` (`id`, `description`) VALUES
(1, '2 места'),
(2, '1 местный'),
(3, '3х местный'),
(4, '2х местный с душем'),
(5, '1 местный'),
(6, '2х местный');

-- --------------------------------------------------------

--
-- Структура таблицы `managers`
--

CREATE TABLE IF NOT EXISTS `managers` (
`id` int(11) NOT NULL,
  `fio` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `managers`
--

INSERT INTO `managers` (`id`, `fio`, `login`, `password`) VALUES
(1, 'ФИО', 'chayka', '$2y$10$rWmUgiZs4UC1WntDTSbMmukCS9psDnLdblV29LW7wo25KPkf0RbMm');

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

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `price`, `comment`, `date`, `manager_id`) VALUES
(1, 555, '5', '2015-06-02 21:15:54', 1),
(2, 25000, 'комментарий', '2015-06-05 13:49:59', 1),
(3, 10000, 'кыавыа', '2015-06-05 13:55:32', 1),
(4, 45000, 'кываавывыа', '2015-06-05 13:56:48', 1),
(5, 33234234, 'ddsf', '2015-06-05 14:06:49', 1),
(6, 4550, 'sdfsdf', '2015-06-05 14:11:09', 1),
(7, 123123, 'ddsf', '2015-06-09 20:40:45', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `orders_to_clients`
--

CREATE TABLE IF NOT EXISTS `orders_to_clients` (
  `order_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders_to_clients`
--

INSERT INTO `orders_to_clients` (`order_id`, `client_id`) VALUES
(1, 5),
(2, 5),
(2, 6),
(3, 5),
(3, 6),
(3, 7),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(6, 10),
(7, 11);

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

--
-- Дамп данных таблицы `orders_to_dates`
--

INSERT INTO `orders_to_dates` (`order_id`, `hotel_id`, `room_date`, `room_id`, `id`) VALUES
(2, 2, '2015-06-06 00:00:00', 2, 1),
(2, 2, '2015-06-06 00:00:00', 2, 2),
(3, 2, '2015-06-06 00:00:00', 2, 3),
(4, 2, '2015-06-06 00:00:00', 2, 4),
(5, 1, '2015-06-06 05:09:00', 1, 5),
(7, 1, '2015-06-06 05:09:00', 1, 6);

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
-- Дамп данных таблицы `orders_to_dirs`
--

INSERT INTO `orders_to_dirs` (`date_dir_id`, `bus_id`, `seat_num`, `order_id`, `id`) VALUES
(1, 1, 34, 2, 1),
(2, 1, 34, 2, 2),
(1, 1, 13, 3, 3),
(2, 1, 13, 3, 4),
(1, 1, 1, 4, 5),
(2, 2, 1, 4, 6),
(1, 1, 4, 6, 7),
(1, 1, 10, 7, 8);

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `buses_to_dates`
--
ALTER TABLE `buses_to_dates`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `directions`
--
ALTER TABLE `directions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `dir_dates`
--
ALTER TABLE `dir_dates`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `hotels`
--
ALTER TABLE `hotels`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `hotel_dates`
--
ALTER TABLE `hotel_dates`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `hotel_rooms`
--
ALTER TABLE `hotel_rooms`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `managers`
--
ALTER TABLE `managers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
