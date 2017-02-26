-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Фев 23 2017 г., 11:42
-- Версия сервера: 5.7.14
-- Версия PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bd`
--

-- --------------------------------------------------------

--
-- Структура таблицы `logger`
--

CREATE TABLE `logger` (
  `id` int(10) UNSIGNED NOT NULL,
  `LogMessage` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `logger`
--

INSERT INTO `logger` (`id`, `LogMessage`) VALUES
(1, '[2017-02-Thu 11:41:43]O:9:"Exception":7:{s:10:"\0*\0message";s:12:"ÐžÑˆÐ¸Ð±ÐºÐ°";s:17:"\0Exception\0string";s:0:"";s:7:"\0*\0code";i:0;s:7:"\0*\0file";s:29:"C:wamp1wwwLoggerindex.php";s:7:"\0*\0line";i:18;s:16:"\0Exception\0trace";a:0:{}s:19:"\0Exception\0previous";N;}'),
(2, '[2017-02-Thu 11:40:29]O:1:"f":1:{s:8:"\0*\0error";N;}'),
(3, '[2017-02-Thu 11:40:29]s:5:"Error";'),
(4, '[2017-02-Thu 11:40:29]a:1:{s:7:"message";s:31:"ÐŸÑ€Ð¾Ð¸Ð·Ð¾ÑˆÐ»Ð° Ð¾ÑˆÐ¸Ð±ÐºÐ°";}');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `logger`
--
ALTER TABLE `logger`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `logger`
--
ALTER TABLE `logger`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
