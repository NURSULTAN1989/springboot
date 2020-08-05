-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 26 2020 г., 15:20
-- Версия сервера: 10.1.21-MariaDB
-- Версия PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `group23_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` text,
  `short_content` mediumtext,
  `content` longtext,
  `post_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `title`, `short_content`, `content`, `post_date`) VALUES
(1, 1, 'Boris Johnson: Brexit plan \'genuine attempt to bridge chasm\'', '<p>The slow pace at which some ultra-Orthodox areas adopted official measures to reduce the spread of Covid-19 has been heavily criticised by other sections of society.</p><p>Restrictions are still in place across Israel, where 172 people have died with coronavirus, and more than 13,500 others have been infected.</p>', '<h3><strong>Coronavirus visualised: Where it\'s hitting the US</strong></h3><figure class=\"image\"><img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7\" alt=\"A map showing coronavirus cases in the US\" srcset=\"https://ichef.bbci.co.uk/live-experience/cps/240/cpsprodpb/vivo/live/images/2020/4/20/3108b1d9-1363-43fd-9570-b4afccdef4dc.png 240w, https://ichef.bbci.co.uk/live-experience/cps/320/cpsprodpb/vivo/live/images/2020/4/20/3108b1d9-1363-43fd-9570-b4afccdef4dc.png 320w, https://ichef.bbci.co.uk/live-experience/cps/400/cpsprodpb/vivo/live/images/2020/4/20/3108b1d9-1363-43fd-9570-b4afccdef4dc.png 400w, https://ichef.bbci.co.uk/live-experience/cps/480/cpsprodpb/vivo/live/images/2020/4/20/3108b1d9-1363-43fd-9570-b4afccdef4dc.png 480w, https://ichef.bbci.co.uk/live-experience/cps/512/cpsprodpb/vivo/live/images/2020/4/20/3108b1d9-1363-43fd-9570-b4afccdef4dc.png 512w, https://ichef.bbci.co.uk/live-experience/cps/624/cpsprodpb/vivo/live/images/2020/4/20/3108b1d9-1363-43fd-9570-b4afccdef4dc.png 624w\" sizes=\"100vw\"></figure><p>BBCCopyright: BBC</p><p>The US is the currently the nation worst affected by the coronavirus outbreak.</p><p>You can see in this BBC map where the virus is hitting the country.</p><p>Cases are most concentrated on the east coast, with nearly 250,000 in the state of New York alone.</p><p>The reported death toll in the US far exceeds anywhere else - more than 41,000 people there have died.</p>', '2020-04-20 14:23:46');

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `author` varchar(200) DEFAULT NULL,
  `price` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id`, `name`, `author`, `price`) VALUES
(1, 'Rich dad and poor dad', 'R.Kiyosaki', 50),
(2, 'Java EE', ' Herbert Shield', 100),
(3, 'Abayâ??s road', ' Mukhtar Auezov', 80),
(4, 'Java', 'Yerzhigit Assan', 13000),
(5, 'Java EE', ' Mukhtar Auezov', 50);

-- --------------------------------------------------------

--
-- Структура таблицы `hotels`
--

CREATE TABLE `hotels` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `stars` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hotels`
--

INSERT INTO `hotels` (`id`, `name`, `country`, `stars`) VALUES
(1, 'Royal Palace', 'Astana', 5),
(2, 'Ritz Carlton', 'Moscow', 4),
(3, 'Rixos', 'Almaty', 4),
(4, 'Konak Ui', 'Taraz', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `phones`
--

CREATE TABLE `phones` (
  `id` bigint(20) NOT NULL,
  `model` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `phones`
--

INSERT INTO `phones` (`id`, `model`, `name`, `price`) VALUES
(3, 'J7', 'Samsung', 85000),
(2, '8', 'IPHONE', 330000);

-- --------------------------------------------------------

--
-- Структура таблицы `t_cars`
--

CREATE TABLE `t_cars` (
  `id` bigint(20) NOT NULL,
  `car_model` varchar(220) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `year` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t_cars`
--

INSERT INTO `t_cars` (`id`, `car_model`, `name`, `price`, `year`) VALUES
(1, 'VESTA', 'LADA', 3000, 2018),
(2, 'Camry', 'Toyota', 12000, 2010),
(5, 'Granta', 'Lada', 2000, 2019);

-- --------------------------------------------------------

--
-- Структура таблицы `t_roles`
--

CREATE TABLE `t_roles` (
  `id` bigint(20) NOT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t_roles`
--

INSERT INTO `t_roles` (`id`, `role`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER'),
(3, 'ROLE_MODERATOR');

-- --------------------------------------------------------

--
-- Структура таблицы `t_users`
--

CREATE TABLE `t_users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t_users`
--

INSERT INTO `t_users` (`id`, `email`, `full_name`, `password`) VALUES
(1, 'admin@gmail.com', 'NURSULTAN OMAROV', '$2y$12$6SrTYeLf2QiF0Ab5ELOaOO4yqMjRhWXzmf99v2ZuOZ.zsSkhwLvOS'),
(2, 'user@gmail.com', 'Ersin Ospanov', '$2y$12$6SrTYeLf2QiF0Ab5ELOaOO4yqMjRhWXzmf99v2ZuOZ.zsSkhwLvOS'),
(3, 'moderator@gmail.com', 'Olzhas Ormanov', '$2y$12$6SrTYeLf2QiF0Ab5ELOaOO4yqMjRhWXzmf99v2ZuOZ.zsSkhwLvOS');

-- --------------------------------------------------------

--
-- Структура таблицы `t_users_roles`
--

CREATE TABLE `t_users_roles` (
  `users_id` bigint(20) NOT NULL,
  `roles_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t_users_roles`
--

INSERT INTO `t_users_roles` (`users_id`, `roles_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 2),
(3, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `full_name`) VALUES
(1, 'ilyas@gmail.com', 'qweqwe', 'Ilyas Zhuanyshev'),
(2, 'nursultan.omarov@gmail.com', 'qweqwe', 'Nursultan Omarov');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `t_cars`
--
ALTER TABLE `t_cars`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `t_roles`
--
ALTER TABLE `t_roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `t_users`
--
ALTER TABLE `t_users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `t_users_roles`
--
ALTER TABLE `t_users_roles`
  ADD KEY `FK9qf4n9htwf2hlfnqoucqmyeg9` (`roles_id`),
  ADD KEY `FK8rghlpl6w68ymy8c5sdv4bkeu` (`users_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `phones`
--
ALTER TABLE `phones`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `t_cars`
--
ALTER TABLE `t_cars`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `t_roles`
--
ALTER TABLE `t_roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `t_users`
--
ALTER TABLE `t_users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
