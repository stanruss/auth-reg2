-- phpMyAdmin SQL Dump
-- version 4.0.10.20
-- https://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Дек 15 2017 г., 11:16
-- Версия сервера: 5.6.35-80.0
-- Версия PHP: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `u0343395_u034339`
--

-- --------------------------------------------------------

--
-- Структура таблицы `confirm_users`
--

CREATE TABLE IF NOT EXISTS `confirm_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_registration` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `confirm_users`
--

INSERT INTO `confirm_users` (`id`, `email`, `token`, `date_registration`) VALUES
(6, 'anthonyfut@mail.ru', '291c38e13659f91bf9d07ad3b993ecdb', '2017-12-14 13:42:25');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `email_status` tinyint(1) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date_registration` datetime NOT NULL,
  `reset_password_token` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `email_status`, `password`, `date_registration`, `reset_password_token`) VALUES
(12, 'диспетчер грузоперевозок в москве', 'диспетчер грузоперевозки', 'anthonyfut@mail.ru', 0, 'fc4a000a836210c3a97dbe66f4d09e4f', '2017-12-14 13:42:25', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
