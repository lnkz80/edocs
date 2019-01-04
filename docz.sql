-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 04 2019 г., 17:12
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
(2, 'Картриджи', 1, 0, 2, 1, 'item/cartridges'),
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
(5, 'Ремонт', 1, '', 5);

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
(2, 'Monitor LG 19', 5, '');

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
(1, 'Воронова А.', 'Приемная', 'Офис'),
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
(12, 'Кочерга А.А.', 'Системный администратор', 'Офис');

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
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `lib_do`
--
ALTER TABLE `lib_do`
  MODIFY `id` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `lib_items`
--
ALTER TABLE `lib_items`
  MODIFY `id` smallint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `lib_models`
--
ALTER TABLE `lib_models`
  MODIFY `id` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `lib_mvo`
--
ALTER TABLE `lib_mvo`
  MODIFY `id` tinyint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  ADD CONSTRAINT `jrnl_items_ibfk_3` FOREIGN KEY (`toMvo`) REFERENCES `lib_mvo` (`id`),
  ADD CONSTRAINT `jrnl_items_ibfk_4` FOREIGN KEY (`do`) REFERENCES `lib_do` (`id`);

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
