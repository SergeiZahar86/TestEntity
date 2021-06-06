-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3300
-- Время создания: Июн 06 2021 г., 18:04
-- Версия сервера: 8.0.19
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `entity`
--

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `id` int NOT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `date_creation` date DEFAULT NULL,
  `pages` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id`, `name`, `author`, `date_creation`, `pages`) VALUES
(1, 'Rows', 'Jeck Nelson', '2020-12-02', 59),
(2, 'Doors', 'Piter Parker', '2021-01-07', 255),
(3, 'Cats', 'Oliver Stown', '2021-05-11', 434),
(4, 'Pictures', 'Nick Timous', '2021-03-30', 105),
(5, 'Flowers', 'Stiv Robinson', '2020-01-14', 386),
(6, 'Animals', 'Rick Jonson', '2020-09-17', 244),
(7, 'Dogs', 'Erick Cartman', '2021-01-21', 162),
(8, 'Faces', 'Jon Travolta', '2021-05-11', 422);

-- --------------------------------------------------------

--
-- Структура таблицы `note`
--

CREATE TABLE `note` (
  `id` int NOT NULL,
  `text` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `isActual` tinyint(1) NOT NULL,
  `ownerName` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `purchases`
--

CREATE TABLE `purchases` (
  `user_id` int NOT NULL,
  `book_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `purchases`
--

INSERT INTO `purchases` (`user_id`, `book_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 6),
(2, 7),
(3, 3),
(3, 1),
(3, 7),
(3, 5),
(4, 6),
(4, 7),
(5, 1),
(5, 2),
(6, 2),
(6, 8),
(6, 4),
(7, 2),
(7, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `age` int NOT NULL,
  `birth` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `age`, `birth`) VALUES
(1, 'Tom', 33, '2001-06-08 00:00:00'),
(2, 'Alice', 26, '1986-05-09 00:00:00'),
(3, 'Sergei', 33, '1998-01-09 00:00:00'),
(4, 'Stepan', 23, '2003-08-23 00:00:00'),
(5, 'Nikita', 45, '2003-08-23 00:00:00'),
(6, 'Oleg', 36, '1975-01-23 00:00:00'),
(7, 'Nikolay', 21, '1994-10-11 00:00:00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Индексы таблицы `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `purchases`
--
ALTER TABLE `purchases`
  ADD KEY `purchases_ibfk_1` (`user_id`),
  ADD KEY `purchases_ibfk_2` (`book_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `note`
--
ALTER TABLE `note`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `purchases_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
