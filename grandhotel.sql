-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 06 2023 г., 20:54
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `grandhotel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `apartments`
--

CREATE TABLE `apartments` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `cost` int NOT NULL,
  `guests` tinyint NOT NULL,
  `equipment` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `bed` tinyint NOT NULL,
  `square` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `apartments`
--

INSERT INTO `apartments` (`id`, `title`, `description`, `cost`, `guests`, `equipment`, `bed`, `square`) VALUES
(76, 'Стандартный', 'Какое-то описание', 399, 1, 'вфывфывфыв', 1, 89),
(77, 'Люкс', 'Какое-то описание', 123, 3, 'Оснащение', 3, 45),
(78, 'Двухместный', 'Какое-то описание', 312, 2, 'Какое-то оснащение', 1, 45),
(79, 'Президентский', 'Президентский номер', 999, 2, 'вфывфыв', 1, 321);

-- --------------------------------------------------------

--
-- Структура таблицы `apartslider`
--

CREATE TABLE `apartslider` (
  `id` int NOT NULL,
  `apart1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_category` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `apartslider`
--

INSERT INTO `apartslider` (`id`, `apart1`, `id_category`) VALUES
(108, '64033ff20aac2masaaki-komori-iMbXscxYIFE-unsplash.jpg', 77),
(109, '64033ff20ad2amky-moody-AUF6Gl4wwzA-unsplash.jpg', 77),
(114, '6404c4f16f4c7hallway1.jpg', 79),
(115, '6404c4f16f769masaaki-komori-iMbXscxYIFE-unsplash.jpg', 79),
(116, '6404c4f16f9afmky-moody-AUF6Gl4wwzA-unsplash.jpg', 79);

-- --------------------------------------------------------

--
-- Структура таблицы `client`
--

CREATE TABLE `client` (
  `id` int NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `patronymic` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `client`
--

INSERT INTO `client` (`id`, `surname`, `name`, `patronymic`, `email`, `telephone`) VALUES
(35, 'Фландеров', 'Фландер', 'Фландерович', 'flandermario@gmail.com', '+462858284897'),
(36, 'Фландеров', 'Фландер', 'Фландерович', 'flandermario@gmail.com', '123213123123'),
(37, 'Фландеров', 'Фландер', 'Фландерович', 'flandermario@gmail.com', '+2347645456456'),
(38, 'Фландеров', 'Фландер', 'Фландерович', 'flandermario@gmail.com', '+784651563');

-- --------------------------------------------------------

--
-- Структура таблицы `rooms`
--

CREATE TABLE `rooms` (
  `id` int NOT NULL,
  `id_category` int DEFAULT NULL,
  `number_room` int DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `rooms`
--

INSERT INTO `rooms` (`id`, `id_category`, `number_room`, `state`) VALUES
(10, 79, 109, 'Свободен'),
(11, 76, 312, 'Свободен'),
(15, 76, 110, 'Свободен'),
(16, 76, 189, 'Свободен'),
(17, 76, 108, 'Свободен');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `admin` tinyint NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `patronymic` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `admin`, `name`, `surname`, `patronymic`, `username`, `email`, `password`, `created`) VALUES
(24, 0, 'аыва', 'ываываыв', 'выаываыва', 'asada', 'deesfffffs@mail.ru', '$2y$10$IWJo9z0JqhlozjWfp9Mspu59Q.2mItRsSDNWEYeuPjhydCaUprn6a', '2023-02-09 17:41:51'),
(25, 0, 'ываыва', 'аваыва', 'ыаваа', 'asada', 'dasdaasda@mail.ru', '$2y$10$t5qM.CRnzya2Jbp7iK.nSOA.Y5aJJausTAy9gtyIpE2kYf2rWKhPS', '2023-02-09 17:48:07'),
(26, 0, 'ыфвфывфывф', 'вфывфвыф', 'вфывфыв', 'fdfs', 'ffsdfsdf@mail.ru', '$2y$10$r5LizPDiwpK/0nh2vgGa2e3otqL/H9u9qzLp.SWAnqKWytW0wKQsm', '2023-02-09 17:55:07'),
(27, 0, 'ывыа', 'аывавыа', 'аыпыаыа', 'ddaa', 'dadaad@mail.ru', '$2y$10$7iNj8192dIg8kQjvwLDOTuZhTtqhuCYld7ZdybJU3VljdVEE0AnXa', '2023-02-09 18:19:58'),
(28, 0, 'вфвфыфвы', 'фвыфв', 'фафавафва', 'aawdd', 'daddddaa@mail.ru', '$2y$10$vYvpXu.dSyYXeD8d9XCBFeCyCb4azPza9BNDmxOgZ8SZB01IGj7sa', '2023-02-09 18:20:55'),
(29, 0, 'Ароу', 'Рарара', 'Рарович', 'lojk', 'ertu@mail.ru', '$2y$10$glsSg31PWAiuMClb8OqTSO3TK25jgUaMA6IvLbIwfxt.cuxqo1pye', '2023-02-10 08:38:31'),
(30, 0, 'Иван', 'Иванов', 'Иванович', 'ivan123', 'ivan@gmail.com', '$2y$10$CEloMvWSYTFOUuwQPnCLue3zPecFysiDzQLlT1VR5EIugyiFhN.b6', '2023-02-11 08:00:00'),
(31, 1, 'Фландер', 'Фландеров', 'Фландерович', 'flander567', 'flandermario@gmail.com', '$2y$10$Vl7jGD.Szh3kG2bRImTs.e2YJ7UJHKiIAqyvitFsYZNSmYz43RF/i', '2023-02-11 15:34:25');

-- --------------------------------------------------------

--
-- Структура таблицы `voucher`
--

CREATE TABLE `voucher` (
  `id` int NOT NULL,
  `id_category` int DEFAULT NULL,
  `id_client` int DEFAULT NULL,
  `arrival_date` date DEFAULT NULL,
  `date_departure` date DEFAULT NULL,
  `guests` tinyint DEFAULT NULL,
  `booking_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total_cost` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `voucher`
--

INSERT INTO `voucher` (`id`, `id_category`, `id_client`, `arrival_date`, `date_departure`, `guests`, `booking_date`, `total_cost`) VALUES
(39, 77, 35, '2023-03-28', '2023-03-30', 3, '2023-03-04 14:34:07', 246),
(40, 76, 36, '2023-03-04', '2023-03-24', 1, '2023-03-04 20:49:48', 7980),
(41, 78, 37, '2023-03-07', '2023-03-17', 2, '2023-03-05 21:06:47', 3120),
(42, 77, 38, '2023-03-29', '2023-03-31', 3, '2023-03-06 09:37:14', 246);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `apartments`
--
ALTER TABLE `apartments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `apartslider`
--
ALTER TABLE `apartslider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Индексы таблицы `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `number_room` (`number_room`),
  ADD KEY `id_category` (`id_category`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Индексы таблицы `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `id_client` (`id_client`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `apartments`
--
ALTER TABLE `apartments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT для таблицы `apartslider`
--
ALTER TABLE `apartslider`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT для таблицы `client`
--
ALTER TABLE `client`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `voucher`
--
ALTER TABLE `voucher`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `apartslider`
--
ALTER TABLE `apartslider`
  ADD CONSTRAINT `apartslider_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `apartments` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `apartments` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `voucher`
--
ALTER TABLE `voucher`
  ADD CONSTRAINT `voucher_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `apartments` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voucher_ibfk_2` FOREIGN KEY (`id_client`) REFERENCES `client` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
