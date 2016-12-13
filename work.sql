-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 11 2016 г., 09:15
-- Версия сервера: 5.5.48
-- Версия PHP: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `work`
--

-- --------------------------------------------------------

--
-- Структура таблицы `forest`
--

CREATE TABLE IF NOT EXISTS `forest` (
  `id` int(11) NOT NULL,
  `forest_name` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `forest`
--

INSERT INTO `forest` (`id`, `forest_name`) VALUES
(1, 'Лес 1'),
(2, 'Лес 2'),
(3, 'Лес 3'),
(4, 'Лес 4 ');

-- --------------------------------------------------------

--
-- Структура таблицы `forest_tree`
--

CREATE TABLE IF NOT EXISTS `forest_tree` (
  `id` int(11) NOT NULL,
  `forest_id` int(11) NOT NULL,
  `tree_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `tree`
--

CREATE TABLE IF NOT EXISTS `tree` (
  `id` int(11) NOT NULL,
  `tree_name` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tree`
--

INSERT INTO `tree` (`id`, `tree_name`) VALUES
(1, 'Дуб'),
(2, 'Береза'),
(3, 'Тополь'),
(4, 'Сосна');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `forest`
--
ALTER TABLE `forest`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `forest_tree`
--
ALTER TABLE `forest_tree`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tree`
--
ALTER TABLE `tree`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `forest`
--
ALTER TABLE `forest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `forest_tree`
--
ALTER TABLE `forest_tree`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `tree`
--
ALTER TABLE `tree`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;