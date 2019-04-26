-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 26 2019 г., 08:30
-- Версия сервера: 5.6.38
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `docz`
--

-- --------------------------------------------------------

--
-- Структура таблицы `jrnl_items`
--

CREATE TABLE `jrnl_items` (
  `id` smallint(6) NOT NULL,
  `date` date NOT NULL,
  `item` smallint(4) NOT NULL,
  `do` tinyint(2) NOT NULL,
  `fromMvo` tinyint(3) NOT NULL,
  `toMvo` tinyint(3) NOT NULL,
  `remarks` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `jrnl_items`
--

INSERT INTO `jrnl_items` (`id`, `date`, `item`, `do`, `fromMvo`, `toMvo`, `remarks`) VALUES
(91, '2019-04-23', 2, 1, 1, 2, 'fddf'),
(92, '2019-04-23', 2, 1, 1, 2, 'fddf'),
(93, '2019-04-23', 2, 1, 1, 2, 'fddf'),
(94, '2019-04-23', 2, 1, 1, 2, 'fddf'),
(95, '2019-04-23', 2, 1, 1, 2, 'fddf'),
(96, '2019-04-23', 2, 1, 1, 2, 'fddf'),
(97, '2019-04-23', 2, 1, 1, 2, 'fddf'),
(99, '2019-04-23', 1, 1, 1, 1, '1111'),
(100, '2019-04-23', 2, 1, 2, 2, '2222'),
(101, '2019-04-23', 1, 1, 1, 1, '1111'),
(102, '2019-04-23', 2, 1, 2, 2, '2222'),
(103, '2019-04-23', 1, 1, 1, 1, '1111'),
(104, '2019-04-23', 2, 1, 2, 2, '2222'),
(105, '2019-04-23', 1, 1, 1, 1, '1111'),
(106, '2019-04-23', 2, 1, 2, 2, '2222'),
(107, '2019-04-23', 1, 1, 1, 1, '1111'),
(108, '2019-04-23', 2, 1, 2, 2, '2222'),
(109, '2019-04-23', 1, 1, 1, 1, '1111'),
(110, '2019-04-23', 2, 1, 2, 2, '2222'),
(111, '2019-04-23', 1, 1, 1, 1, '1111'),
(112, '2019-04-23', 2, 1, 2, 2, '2222'),
(113, '2019-04-24', 1, 1, 1, 1, '1111'),
(114, '2019-04-24', 2, 1, 2, 2, '2222'),
(115, '2019-04-24', 1, 1, 1, 1, '1111'),
(116, '2019-04-24', 2, 1, 2, 2, '2222'),
(117, '2019-04-24', 1, 1, 1, 1, '1111'),
(118, '2019-04-24', 2, 1, 2, 2, '2222'),
(119, '2019-04-24', 1, 1, 1, 1, '1111'),
(120, '2019-04-24', 2, 1, 2, 2, '2222'),
(121, '2019-04-24', 1, 1, 1, 1, '1111'),
(122, '2019-04-24', 2, 1, 2, 2, '2222'),
(123, '2019-04-24', 1, 1, 1, 1, '1111'),
(124, '2019-04-24', 2, 1, 2, 2, '2222'),
(125, '2019-04-24', 1, 1, 1, 1, '1111'),
(126, '2019-04-24', 2, 1, 2, 2, '2222'),
(127, '2019-04-24', 1, 1, 1, 1, '1111'),
(128, '2019-04-24', 2, 1, 2, 2, '2222'),
(129, '2019-04-24', 1, 1, 1, 1, '1111'),
(130, '2019-04-24', 2, 1, 2, 2, '2222'),
(131, '2019-04-24', 1, 1, 1, 1, '1111'),
(132, '2019-04-24', 2, 1, 2, 2, '2222'),
(133, '2019-04-24', 1, 1, 1, 1, '1111'),
(134, '2019-04-24', 2, 1, 2, 2, '2222'),
(135, '2019-04-24', 1, 1, 1, 1, '1111'),
(136, '2019-04-24', 2, 1, 2, 2, '2222'),
(137, '2019-04-24', 1, 1, 1, 1, '1111'),
(138, '2019-04-24', 2, 1, 2, 2, '2222'),
(139, '2019-04-24', 1, 1, 1, 1, '1111'),
(140, '2019-04-24', 2, 1, 2, 2, '2222'),
(141, '2019-04-24', 1, 1, 1, 1, '1111'),
(142, '2019-04-24', 2, 1, 2, 2, '2222'),
(143, '2019-04-25', 1, 1, 1, 1, '1111'),
(144, '2019-04-25', 2, 1, 2, 2, '2222');

-- --------------------------------------------------------

--
-- Структура таблицы `lib_cat`
--

CREATE TABLE `lib_cat` (
  `id` tinyint(2) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `level` tinyint(1) NOT NULL,
  `cat_parent` tinyint(2) NOT NULL,
  `color` tinyint(2) NOT NULL,
  `icon` tinyint(2) NOT NULL,
  `path` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lib_cat`
--

INSERT INTO `lib_cat` (`id`, `name`, `level`, `cat_parent`, `color`, `icon`, `path`) VALUES
(1, 'Активы', 1, 0, 1, 1, 'item'),
(2, 'Картриджи', 1, 0, 2, 1, 'cartridges'),
(3, 'Документы', 1, 0, 2, 2, 'docs'),
(4, 'Справочники', 1, 0, 3, 3, 'lib'),
(5, 'Планирование', 1, 0, 4, 4, 'plan'),
(11, 'Компьютеры', 2, 1, 1, 1, 'item/computers'),
(12, 'Принтеры', 2, 1, 2, 1, 'item/printers'),
(13, 'МФУ', 2, 1, 2, 1, 'item/mfu'),
(21, 'Счета', 2, 2, 3, 2, 'docs/invoice'),
(22, 'Приходные накладные', 2, 2, 3, 2, 'docs/delivery_invoice'),
(31, 'МВО', 2, 4, 1, 3, 'lib/mvo'),
(32, 'Модели', 2, 4, 1, 3, 'lib/models'),
(33, 'Оборудование', 2, 4, 1, 3, 'lib/items');

-- --------------------------------------------------------

--
-- Структура таблицы `lib_colors`
--

CREATE TABLE `lib_colors` (
  `id` tinyint(2) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `var_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lib_colors`
--

INSERT INTO `lib_colors` (`id`, `code`, `var_name`) VALUES
(1, 'coral', 'coral'),
(2, 'green', 'green'),
(3, 'purple', 'purple'),
(4, 'brown', 'brown');

-- --------------------------------------------------------

--
-- Структура таблицы `lib_do`
--

CREATE TABLE `lib_do` (
  `id` tinyint(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cat_id` tinyint(6) NOT NULL,
  `path` varchar(50) NOT NULL,
  `sort` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lib_do`
--

INSERT INTO `lib_do` (`id`, `name`, `cat_id`, `path`, `sort`) VALUES
(1, 'Приход', 1, '', 2),
(2, 'Ввод в эксплуатацию', 1, '', 3),
(3, 'Перемещение', 1, '', 4),
(4, 'Списание', 1, '', 6),
(5, 'Ремонт', 1, '', 5),
(6, 'Движение картриджей', 2, '/cartridges/actions/', 1),
(7, 'Журнал', 2, '/cartridges/', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `lib_icons`
--

CREATE TABLE `lib_icons` (
  `id` tinyint(2) NOT NULL,
  `name` varchar(45) CHARACTER SET latin1 NOT NULL,
  `path` varchar(45) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lib_icons`
--

INSERT INTO `lib_icons` (`id`, `name`, `path`) VALUES
(1, 'Equipment', 'img/actives/equip_clr.png'),
(2, 'Documents', 'img/actives/docs_clr.png'),
(3, 'Libraries', 'img/actives/libs_clr.png'),
(4, 'Planning', 'img/actives/planning_clr.png');

-- --------------------------------------------------------

--
-- Структура таблицы `lib_items`
--

CREATE TABLE `lib_items` (
  `id` smallint(4) NOT NULL,
  `name` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `invcode` varchar(12) NOT NULL,
  `catId` tinyint(2) NOT NULL,
  `modelId` smallint(4) NOT NULL,
  `serial` varchar(30) NOT NULL,
  `remarks` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lib_items`
--

INSERT INTO `lib_items` (`id`, `name`, `fullname`, `invcode`, `catId`, `modelId`, `serial`, `remarks`) VALUES
(1, '719b', 'Canon 719b', '1826', 2, 3, 'null', 'none'),
(2, '719s', 'Canon 719s', '1115', 2, 3, 'null', 'none'),
(3, '719b', 'Canon 719b', '1422', 2, 3, 'null', 'none'),
(4, '719s', 'Canon 719s', '1540', 2, 3, 'null', 'none'),
(5, '719s', 'Canon 719s', '1541', 2, 3, 'null', 'none'),
(6, '719s', 'Canon 719s', '1405', 2, 3, 'null', 'none'),
(7, '719b', 'Canon 719b', '1577', 2, 3, 'null', 'none'),
(8, '719b', 'Canon 719b', '1404', 2, 3, 'null', 'none'),
(9, '719s', 'Canon 719s', '1548', 2, 3, 'null', 'none'),
(10, '719b', 'Canon 719b', '1765', 2, 3, 'null', 'none'),
(11, '725', '725', '1539', 2, 3, 'null', 'none'),
(12, '719s', 'Canon 719s', '1449', 2, 3, 'null', 'none'),
(13, '719s', 'Canon 719s', '1357', 2, 3, 'null', 'none'),
(14, '719s', 'Canon 719s', '1569', 2, 3, 'null', 'none'),
(15, '719s', 'Canon 719s', '1432', 2, 3, 'null', 'none'),
(16, '719s', 'Canon 719s', '1835', 2, 3, 'null', 'none'),
(17, '719b', 'Canon 719b', '1724', 2, 3, 'null', 'none'),
(18, '725', '725', '1597', 2, 3, 'null', 'none'),
(19, '12a', ' 12a', '227', 2, 3, 'null', 'none'),
(20, '12a', ' 12a', '291', 2, 3, 'null', 'none'),
(21, '728', '728', '1198', 2, 3, 'null', 'none'),
(22, '728', '728', '1854', 2, 3, 'null', 'none'),
(23, '708s', ' 708s', '338', 2, 3, 'null', 'none'),
(24, '719s', 'Canon 719s', '1137', 2, 3, 'null', 'none'),
(25, '719s', 'Canon 719s', '1888', 2, 3, 'null', 'none'),
(26, '708s', ' 708s', '318', 2, 3, 'null', 'none'),
(27, '712', '712', '786', 2, 3, 'null', 'none'),
(28, '719s', 'Canon 719s', '1502', 2, 3, 'null', 'none'),
(29, '719b', 'Canon 719b', '1578', 2, 3, 'null', 'none'),
(30, 'Samsung', 'Samsung Samsung', '717', 2, 3, 'null', 'none'),
(31, '719s', 'Canon 719s', '1927', 2, 3, 'null', 'none'),
(32, '12a', ' 12a', '275', 2, 3, 'null', 'none'),
(33, '712', '712', '396', 2, 3, 'null', 'none'),
(34, 'Q7553A', ' Q7553A', '1935', 2, 3, 'null', 'none'),
(35, '719s', 'Canon 719s', '1941', 2, 3, 'null', 'none'),
(36, '719s', 'Canon 719s', '1547', 2, 3, 'null', 'none'),
(37, '728', '728', '1489', 2, 3, 'null', 'none'),
(38, '728', '728', '1392', 2, 3, 'null', 'none'),
(39, '708b', ' 708b', '1513', 2, 3, 'null', 'none'),
(40, '728', '728', '1393', 2, 3, 'null', 'none'),
(41, '725', '725', '1469', 2, 3, 'null', 'none'),
(42, '719b', 'Canon 719b', '1982', 2, 3, 'null', 'none'),
(43, '719s', 'Canon 719s', '1555', 2, 3, 'null', 'none'),
(44, '719s', 'Canon 719s', '1959', 2, 3, 'null', 'none'),
(45, '719s', 'Canon 719s', '1970', 2, 3, 'null', 'none'),
(46, '712', '712', '1087', 2, 3, 'null', 'none'),
(47, '719b', 'Canon 719b', '1985', 2, 3, 'null', 'none'),
(48, '12a', ' 12a', '360', 2, 3, 'null', 'none'),
(49, '12a', ' 12a', '749', 2, 3, 'null', 'none'),
(50, '712', '712', '1993', 2, 3, 'null', 'none'),
(51, '725', '725', '1355', 2, 3, 'null', 'none'),
(52, '12a', ' 12a', '1580', 2, 3, 'null', 'none'),
(53, '719b', 'Canon 719b', '1977', 2, 3, 'null', 'none'),
(54, '719b', 'Canon 719b', '2007', 2, 3, 'null', 'none'),
(55, '719b', 'Canon 719b', '2041', 2, 3, 'null', 'none'),
(56, 'Q7553A', 'Canon Q7553A', '1943', 2, 3, 'null', 'none'),
(57, 'Q7553A', ' Q7553A', '1658', 2, 3, 'null', 'none'),
(58, '719s', 'Canon 719s', '2136', 2, 3, 'null', 'none'),
(59, '712', '712', '2149', 2, 3, 'null', 'none'),
(60, 'Samsung', 'Samsung Samsung', '221', 2, 3, 'null', 'none'),
(61, '12a', ' 12a', '293', 2, 3, 'null', 'none'),
(62, '12a', ' 12a', '336', 2, 3, 'null', 'none'),
(63, '719b', 'Canon 719b', '2142', 2, 3, 'null', 'none'),
(64, '35?', ' 35?', '621', 2, 3, 'null', 'none'),
(65, '719s', 'Canon 719s', '2071', 2, 3, 'null', 'none'),
(66, '719s', 'Canon 719s', '2181', 2, 3, 'null', 'none'),
(67, '719s', 'Canon 719s', '2180', 2, 3, 'null', 'none'),
(68, '719s', 'Canon 719s', '2179', 2, 3, 'null', 'none'),
(69, '719s', 'Canon 719s', '2176', 2, 3, 'null', 'none'),
(70, '719s', 'Canon 719s', '2170', 2, 3, 'null', 'none'),
(71, 'Q5949A', ' Q5949A', '2144', 2, 3, 'null', 'none'),
(72, '12a', ' 12a', '2169', 2, 3, 'null', 'none'),
(73, 'HP 49A', 'HP HP 49A', '392', 2, 3, 'null', 'none'),
(74, '719s', 'Canon 719s', '2196', 2, 3, 'null', 'none'),
(75, '719s', 'Canon 719s', '2185', 2, 3, 'null', 'none');

-- --------------------------------------------------------

--
-- Структура таблицы `lib_models`
--

CREATE TABLE `lib_models` (
  `id` smallint(4) NOT NULL,
  `name` varchar(100) NOT NULL,
  `catId` tinyint(2) NOT NULL,
  `remarks` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lib_models`
--

INSERT INTO `lib_models` (`id`, `name`, `catId`, `remarks`) VALUES
(1, 'PC', 5, ''),
(2, 'Monitor LG 19', 5, ''),
(3, 'Картриджи', 2, '');

-- --------------------------------------------------------

--
-- Структура таблицы `lib_mvo`
--

CREATE TABLE `lib_mvo` (
  `id` tinyint(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lib_mvo`
--

INSERT INTO `lib_mvo` (`id`, `name`, `department`, `location`) VALUES
(1, 'Кочерга А.А.', 'Системный администратор', 'Офис'),
(2, 'Будюкова А.В.', 'Торговый дом', 'Офис'),
(3, 'Ходак С.И.', 'ЖЕК', 'Петропавловская, 72'),
(4, 'Доценко И.А.', 'Финансовый директор', 'Офис'),
(5, 'Завора Л.Н.', 'Касса', 'Офис'),
(6, 'Ребезнюк Н.Н.', 'Столярный цех', 'Офис'),
(7, 'Герасименко Т.А.', 'Диспетчер', 'Офис'),
(8, 'Юрченко В.Г.', 'Экономист', 'Офис'),
(9, 'Проектная группа', 'Проектная группа', 'Офис'),
(10, 'Доброчасова Н.В.', 'Отдел кадров', 'Офис'),
(11, 'Авраменко В.Н.', 'Маркетинг', 'Офис'),
(13, 'Воронова А.', 'Приемная', 'Офис');

-- --------------------------------------------------------

--
-- Структура таблицы `lib_table`
--

CREATE TABLE `lib_table` (
  `id` smallint(3) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_id` tinyint(2) NOT NULL,
  `jrnl` varchar(20) NOT NULL,
  `alias` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `jrnl_items`
--
ALTER TABLE `jrnl_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item` (`item`),
  ADD KEY `do` (`do`),
  ADD KEY `fromMvo` (`fromMvo`),
  ADD KEY `toMvo` (`toMvo`);

--
-- Индексы таблицы `lib_cat`
--
ALTER TABLE `lib_cat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `color` (`color`),
  ADD KEY `icon` (`icon`);

--
-- Индексы таблицы `lib_colors`
--
ALTER TABLE `lib_colors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `lib_do`
--
ALTER TABLE `lib_do`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `lib_icons`
--
ALTER TABLE `lib_icons`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `lib_items`
--
ALTER TABLE `lib_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catId` (`catId`);

--
-- Индексы таблицы `lib_models`
--
ALTER TABLE `lib_models`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `lib_mvo`
--
ALTER TABLE `lib_mvo`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `lib_table`
--
ALTER TABLE `lib_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `cat_id_2` (`cat_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `jrnl_items`
--
ALTER TABLE `jrnl_items`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT для таблицы `lib_do`
--
ALTER TABLE `lib_do`
  MODIFY `id` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `lib_items`
--
ALTER TABLE `lib_items`
  MODIFY `id` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT для таблицы `lib_models`
--
ALTER TABLE `lib_models`
  MODIFY `id` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `lib_mvo`
--
ALTER TABLE `lib_mvo`
  MODIFY `id` tinyint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `lib_table`
--
ALTER TABLE `lib_table`
  MODIFY `id` smallint(3) NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `jrnl_items`
--
ALTER TABLE `jrnl_items`
  ADD CONSTRAINT `jrnl_items_ibfk_1` FOREIGN KEY (`item`) REFERENCES `lib_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jrnl_items_ibfk_2` FOREIGN KEY (`fromMvo`) REFERENCES `lib_mvo` (`id`),
  ADD CONSTRAINT `jrnl_items_ibfk_4` FOREIGN KEY (`do`) REFERENCES `lib_do` (`id`),
  ADD CONSTRAINT `jrnl_items_ibfk_5` FOREIGN KEY (`toMvo`) REFERENCES `lib_mvo` (`id`);

--
-- Ограничения внешнего ключа таблицы `lib_cat`
--
ALTER TABLE `lib_cat`
  ADD CONSTRAINT `lib_cat_ibfk_1` FOREIGN KEY (`icon`) REFERENCES `lib_icons` (`id`),
  ADD CONSTRAINT `lib_cat_ibfk_2` FOREIGN KEY (`color`) REFERENCES `lib_colors` (`id`);

--
-- Ограничения внешнего ключа таблицы `lib_items`
--
ALTER TABLE `lib_items`
  ADD CONSTRAINT `lib_items_ibfk_1` FOREIGN KEY (`catId`) REFERENCES `lib_cat` (`id`);

--
-- Ограничения внешнего ключа таблицы `lib_table`
--
ALTER TABLE `lib_table`
  ADD CONSTRAINT `lib_table_ibfk_5` FOREIGN KEY (`cat_id`) REFERENCES `lib_cat` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
