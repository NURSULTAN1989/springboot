-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 26 2020 г., 15:24
-- Версия сервера: 10.1.21-MariaDB
-- Версия PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog`
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
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `title`, `short_content`, `content`, `post_date`) VALUES
(1, 1, 'kjhdjfhdskjfhkds', '<p>.kjzfkjkjdslgjkslgz,vÂlkjeiÂÂÂÂÂ&nbsp;</p>', '<p>nbjakshkajhfasnfÂajfahskfhsakjfÂÂÂÂÂÂÂÂÂÂÂÂÂÂ&nbsp;</p>', '2020-04-26 06:12:31'),
(2, 1, ',mc,nm,cmzxnmnzxmcbakuryiqu', '<p>kjLKDJWOIDJ&lt;zÂMNCKWJLIÂÂÂÂÂÂÂÂ&nbsp;</p>', '<p>.mCAKLAOURIASJCKZcÂAKHWWHDKHASÂÂÂÂÂÂÂÂÂÂÂ&nbsp;</p>', '2020-04-26 06:13:03'),
(3, 1, 'HELLO', '<p>lkajflkajsflaskjfÂHelloÂÂÂÂÂ&nbsp;</p>', '<p>howÂare youÂÂÂÂÂÂÂ&nbsp;</p>', '2020-04-29 06:25:27'),
(4, 1, 'Kazakhstan confirms 3,063 coronavirus cases', '<p><span style=\"font-family: Scada, sans-serif; font-size: 15px;\">NUR-SULTAN. KAZINFORM &ndash; As of 09:15 a.m. 36 new cases of the coronavirus infection have been registered across Kazakhstan, Kazinform reports citing coronavirus2020.kz.</span></p>', '<p><span style=\"font-family: Scada, sans-serif; font-size: 15px;\">The number of confirmed coronavirus cases in the country has reached 3063 including 612 cases in Nur-Sultan city, 924 cases in Almaty city, 182 cases in Shymkent city, 98 cases in Akmola region, 65 cases in Aktobe region, 113 cases in Almaty region, 131 cases in Atyrau region, 17 cases in East Kazakhstan region, 113 cases in Zhambyl region, 127 cases in West Kazakhstan region, 139 cases in Karaganda region, 45 cases in Kostanay region, 187 cases in Kyzylorda region, 34 cases in Mangistau region, 122 cases in Pavlodar region, 30 cases in North Kazakhstan region, and 124 cases in Turkestan region.</span></p>', '2020-04-29 08:24:24'),
(5, 2, 'World stars take part in Astana Opera?s creative project ', '<p><span style=\"font-family: Scada, sans-serif; font-size: 15px;\">NUR-SULTAN. KAZINFORM - Astana Opera&rsquo;s celebrated Principal Soloists and world-renowned opera stars from Italy, Mexico, Japan, China, Romania, Georgia, as well as musicians of the Astana Opera Symphony Orchestra performed online sunny Neapolitan song &rsquo;O Sole Mio, beloved by millions of listeners, Kazinform has learnt from the Astana Opera&rsquo;s press service.</span></p>', '<p><span style=\"font-family: Scada, sans-serif; font-size: 15px;\">Davide Livermore, a sought-after director who staged many productions at major opera houses, including Teatro alla Scala in Milan, Teatro dell&rsquo;Opera di Roma, Teatro Regio di Torino, Teatro di San Carlo in Naples and many others, took part in the project with enthusiasm. It is worth noting that the maestro staged a number of productions at Astana Opera that aroused great interest in the international arena. Famous Mexican tenor, who works in the largest opera houses in Europe, the USA and South America, Hector Sandoval and George Oniani, Georgian tenor renowned in Europe, joined the project. Their colleagues, brilliant tenor from Japan Naoyuki Okada, Romanian soprano Adela Zaharia and famous Chinese singer Zhou Fang, also expressed great joy in performing together. Kazakh opera stars, Astana Opera&rsquo;s Principal Soloists, Honoured Workers of Kazakhstan Medet Chotabayev, Cavalier of the Order of the Star of Italy, who regularly performs at the best international venues, and Saltanat Akhmetova, winner of the Big Opera 2014 international project of the Russia K TV channel, as well as Astana Opera&rsquo;s Soloists, Honoured Workers of Kazakhstan, marvelous sopranos Zhamilya Jarkimbayeva and Bibigul Zhanuzak have shown great sound. It is worth noting that international celebrities who took part in the creative project have been to Kazakhstan and performed at the Astana Opera. &laquo;I have such wonderful memories from the Operalia competition in the Astana Opera House in 2017. Everyone was so kind, so helpful. You have such a wonderful opera house and every time I think about that experience, it puts a big smile on my face. I hope that right now you are healthy, that you are safe. And I hope that we will all meet soon again, sing together and be happy that the sun is shining again on our street. Take good care of yourselves,&raquo; Adela Zaharia, Romanian singer with the purest soprano voice, said. Let us remind that in 2017, she became a real sensation at the prestigious Pl&aacute;cido Domingo&rsquo;s Operalia, The World Opera Competition, having won the First Prize and The Pepita Embil de Domingo Prize for the Best Female Singer of Zarzuela. The performers chose Neapolitan song &rsquo;O Sole Mio for good reason. It brings positive energy, joy and gives great hope for a wonderful future. The composition was written in 1898 by Eduardo Di Capua (music) and Giovanni Capurro (lyrics). Back then this work gained immense popularity and was subsequently translated into many world languages. All participants in the project believe in the amazing power of art, which is able to raise people&rsquo;s spirit, inspire confidence that we will soon be able to overcome difficulties and defeat the dangerous virus. The project was created with the support of the Ministry of Culture and Sports of the Republic of Kazakhstan.</span></p>', '2020-04-29 08:27:10');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `comment` text,
  `post_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `blog_id`, `comment`, `post_date`) VALUES
(1, 2, 2, 'Hello Good coment', '2020-04-26 07:44:35'),
(2, 2, 2, 'kjlkjckjkjjxc', '2020-04-26 07:49:00'),
(3, 1, 1, 'thank you', '2020-04-26 07:50:34');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fullname` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `fullname`) VALUES
(1, 'nursultan.omarov@gmail.com', 'qweqwe', 'Nursultan Omarov'),
(2, 'nur.omar@bitlab.kz', '123', 'Nurik');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
