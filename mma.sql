-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 09 2017 г., 00:25
-- Версия сервера: 5.7.16
-- Версия PHP: 5.6.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mma`
--

-- --------------------------------------------------------

--
-- Структура таблицы `bouts`
--

CREATE TABLE `bouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `Event_id` int(11) NOT NULL,
  `Bout_order` int(11) NOT NULL,
  `Method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Event_date` date NOT NULL,
  `Red_fighter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Red_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Red_record` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Red_height` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Red_weight` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Red_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Blue_fighter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Blue_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Blue_record` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Blue_height` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Blue_weight` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Blue_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `bouts`
--

INSERT INTO `bouts` (`id`, `Event_id`, `Bout_order`, `Method`, `Event_date`, `Red_fighter`, `Red_image`, `Red_record`, `Red_height`, `Red_weight`, `Red_status`, `Blue_fighter`, `Blue_image`, `Blue_record`, `Blue_height`, `Blue_weight`, `Blue_status`, `created_at`, `updated_at`) VALUES
(1, 611351, 1, '', '0000-00-00', ' Holm', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FHolly_Holm%252FHOLM_HOLLY.png?mw300-mh300', '10-2-0', '68 in', '145 lbs', '', ' de Randamie', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FGermaine_de_Randadamie%252FDE-RANDAMIE_GERMAINE.png?mw300-mh300', '6-3-0', '69 in', '145 lbs', '', '2017-02-07 12:26:05', '2017-02-07 12:26:05'),
(2, 611351, 2, '', '0000-00-00', ' Silva', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252Ffighter_images%252FAnderson_Silva%252FAndersonSilva_Headshot.png?mw300-mh300', '33-8-0', '74 in', '185 lbs', '', ' Brunson', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FDerek_Brunson%252FBRUNSON_DEREK.png?mw300-mh300', '16-4-0', '73 in', '185 lbs', '', '2017-02-07 12:26:05', '2017-02-07 12:26:05'),
(3, 611351, 3, '', '0000-00-00', ' Souza', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252F%252FRonaldo_Souza%252FSOUZA_JACARE.png?mw300-mh300', '23-4-0', '73 in', '185 lbs', '', ' Boetsch', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FTim_Boetsch%252F205-BOETSCH_TIM.png?mw300-mh300', '20-10-0', '72 in', '185 lbs', '', '2017-02-07 12:26:05', '2017-02-07 12:26:05'),
(4, 611351, 4, '', '0000-00-00', ' Teixeira', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FGlover_Texeira%252FTEIXEIRA_GLOVER.png?mw300-mh300', '25-5-0', '74 in', '205 lbs', '', ' Cannonier', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FJared_Cannonier%252FCANNONIER_JARED.png?mw300-mh300', '9-1-0', '71 in', '205 lbs', '', '2017-02-07 12:26:05', '2017-02-07 12:26:05'),
(5, 611351, 5, '', '0000-00-00', ' Poirier', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FDustin_Poirier%252FPOIRIER_DUSTIN.png?mw300-mh300', '20-5-0', '69 in', '155 lbs', '', ' Miller', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FJim_Miller%252F205-MILLER_JIM.png?mw300-mh300', '28-8-0', '68 in', '155 lbs', '', '2017-02-07 12:26:05', '2017-02-07 12:26:05'),
(6, 611351, 6, '', '0000-00-00', ' Brown', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FRandy_Brown%252FBROWN_RANDY.png?mw300-mh300', '9-1-0', '75 in', '170 lbs', '', ' Muhammad', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FBelal_Muhammad%252F205-MUHAMMAD_BELAL.png?mw300-mh300', '10-2-0', '71 in', '170 lbs', '', '2017-02-07 12:26:05', '2017-02-07 12:26:05'),
(7, 611351, 7, '', '0000-00-00', ' Reis', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FWilson_Reis%252FREIS_WILSON.png?mw300-mh300', '21-6-0', '64 in', '125 lbs', '', ' Sasaki', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FUlka_Sasaki%252FSASAKI_ULKA.png?mw300-mh300', '19-3-2', '70 in', '125 lbs', '', '2017-02-07 12:26:05', '2017-02-07 12:26:05'),
(8, 611351, 8, '', '0000-00-00', ' Lentz', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FNik_Lentz%252FLENTZ_NIK.png?mw300-mh300', '29-7-2', '68 in', '155 lbs', '', ' Makhachev', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FIslam_Makhachev%252FMAKHACHEV_ISLAM.png?mw300-mh300', '13-1-0', '70 in', '155 lbs', '', '2017-02-07 12:26:05', '2017-02-07 12:26:05'),
(9, 611351, 9, '', '0000-00-00', ' McCall', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FIan_McCall%252FMCCALL_IAN.png?mw300-mh300', '13-5-1', '65 in', '125 lbs', '', ' Brooks', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252F%252FComingSoon%252Fcomingsoon_headshot_odopod.png?mw300-mh300', '12-0-0', '63 in', '125 lbs', '', '2017-02-07 12:26:05', '2017-02-07 12:26:05'),
(10, 611351, 10, '', '0000-00-00', ' Henrique', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FLuiz_Henrique%252FHENRIQUE_LUIZ.png?mw300-mh300', '10-2-0', '74 in', '243 lbs', '', ' Tybura', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FMarcin_Tybura%252FTYBURA_MARCIN.png?mw300-mh300', '14-2-0', '75 in', '249 lbs', '', '2017-02-07 12:26:05', '2017-02-07 12:26:05'),
(11, 611351, 11, '', '0000-00-00', ' LaFlare', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FRyan_LaFlare%252FLAFLARE_RYAN.png?mw300-mh300', '12-1-0', '73 in', '170 lbs', '', ' Carneiro', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FRoan_Carneiro%252FCARNEIRO_ROAN.png?mw300-mh300', '21-10-0', '71 in', '170 lbs', '', '2017-02-07 12:26:05', '2017-02-07 12:26:05'),
(12, 611351, 12, '', '0000-00-00', ' Glenn', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FRick_Glenn%252FGLENN_RICK.png?mw300-mh300', '18-4-1', '72 in', '145 lbs', '', ' Nover', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FPhillipe_Nover%252FNOVER_PHILLIPE.png?mw300-mh300', '12-7-1', '69 in', '145 lbs', '', '2017-02-07 12:26:05', '2017-02-07 12:26:05'),
(13, 611355, 1, '', '0000-00-00', ' Lewis', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FDerrick_Lewis%252FLEWIS_DERRICK.png?mw300-mh300', '17-4-0', '75 in', '260 lbs', '', ' Browne', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FTravis_Browne%252FBROWNE_TRAVIS.png?mw300-mh300', '18-5-1', '79 in', '255 lbs', '', '2017-02-07 12:26:07', '2017-02-07 12:26:07'),
(14, 611355, 2, '', '0000-00-00', ' Hendricks', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252F%252FJohny_Hendricks%252FHENDRICKS_JOHNY.png?mw300-mh300', '17-5-0', '69 in', '185 lbs', '', ' Lombard', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252F%252FHector_Lombard%252FLOMBARD_HECTOR.png?mw300-mh300', '34-6-1', '69 in', '185 lbs', '', '2017-02-07 12:26:07', '2017-02-07 12:26:07'),
(15, 611355, 3, '', '0000-00-00', ' Sicilia', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FSam_Sicilia%252FSICILIA_SAM.png?mw300-mh300', '15-7-0', '68 in', '145 lbs', '', ' Tucker', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252F%252FComingSoon%252Fcomingsoon_headshot_odopod.png?mw300-mh300', '9-0-0', '67 in', '145 lbs', '', '2017-02-07 12:26:07', '2017-02-07 12:26:07'),
(16, 611355, 4, '', '0000-00-00', ' Theodorou', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FElias_Theodorou%252FTHEODOROU_ELIAS.png?mw300-mh300', '12-1-0', '73 in', '185 lbs', '', ' Ferreira', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FCezar_Ferreira%252FFERREIRA_CEZAR.png?mw300-mh300', '12-5-0', '73 in', '185 lbs', '', '2017-02-07 12:26:07', '2017-02-07 12:26:07'),
(17, 611355, 5, '', '0000-00-00', ' Taleb', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FNordine_Taleb%252FTALEB_NORDINE.png?mw300-mh300', '11-3-0', '73 in', '170 lbs', '', ' Ponzinibbio', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FSantiago_Ponzinibbio%252FPONZINIBBIO_SANTIAGO.png?mw300-mh300', '24-3-0', '72 in', '170 lbs', '', '2017-02-07 12:26:07', '2017-02-07 12:26:07'),
(18, 611355, 6, '', '0000-00-00', ' Esparza', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FCarla_Esparza%252FESPARZA_CARLA.png?mw300-mh300', '12-3-0', '61 in', '115 lbs', '', ' Markos', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FRanda_Markos%252FMARKOS_RANDA.png?mw300-mh300', '6-5-0', '64 in', '115 lbs', '', '2017-02-07 12:26:07', '2017-02-07 12:26:07'),
(19, 611355, 7, '', '0000-00-00', ' Zahabi', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252F%252FComingSoon%252Fcomingsoon_headshot_odopod.png?mw300-mh300', '6-0-0', '68 in', '135 lbs', '', ' Vieira', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FReginaldo_Vieira%252FVIEIRA_REGINALDO.png?mw300-mh300', '14-4-0', '67 in', '135 lbs', '', '2017-02-07 12:26:07', '2017-02-07 12:26:07'),
(20, 611355, 8, '', '0000-00-00', ' Marshman', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FJack_Marshman%252FMARSHMAN_JACK.png?mw300-mh300', '21-5-0', '72 in', '185 lbs', '', ' Santos', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FThiago_Santos%252FSANTOS_THIAGO.png?mw300-mh300', '13-5-0', '72 in', '185 lbs', '', '2017-02-07 12:26:07', '2017-02-07 12:26:07'),
(21, 611355, 9, '', '0000-00-00', ' Felder', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FPaul_Felder%252FFELDER_PAUL.png?mw300-mh300', '12-3-0', '71 in', '155 lbs', '', ' Ricci', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FAlessandro_Ricci%252FRICCI_ALESSANDRO.png?mw300-mh300', '10-4-0', '71 in', '155 lbs', '', '2017-02-07 12:26:07', '2017-02-07 12:26:07'),
(22, 611355, 10, '', '0000-00-00', ' Meerschaert', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FGerald_Meerschaert%252FMEERSCHAERT_GERALD.png?mw300-mh300', '25-8-0', '73 in', '185 lbs', '', ' Janes', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FRyan_Janes%252FJANES_RYAN.png?mw300-mh300', '9-1-0', '75 in', '185 lbs', '', '2017-02-07 12:26:07', '2017-02-07 12:26:07'),
(23, 611355, 11, '', '0000-00-00', ' McMann', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FSara_McMann%252FMCMANN_SARA.png?mw300-mh300', '10-3-0', '66 in', '135 lbs', '', ' Mazany', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252Ffighter_images%252FGina_Mazany%252FGinaMazany_Headshot.png?mw300-mh300', '3-0-0', '66 in', '135 lbs', '', '2017-02-07 12:26:07', '2017-02-07 12:26:07'),
(24, 611355, 12, '', '0000-00-00', ' Volkanovski', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252FAlex_Volkanovski%252FVOLKANOVSKI_ALEX.png?mw300-mh300', '14-1-0', '65 in', '145 lbs', '', ' Quinones', 'http://imagec.ufc.com/http%253A%252F%252Fmedia.ufc.tv%252F%252Ffighter_images%252F%252FComingSoon%252Fcomingsoon_headshot_odopod.png?mw300-mh300', '8-1-0', '70 in', '145 lbs', '', '2017-02-07 12:26:07', '2017-02-07 12:26:07');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_02_05_151417_create_bouts_table', 1),
(4, '2017_02_07_085554_create_users_bets', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kirk', 'kirk@mail.ru', '$2y$10$dH3s3yKSwsfZK/YK2Wq8Q.yyckG4WH.xKlp8x9bmRMS9E4Kqq57Sy', NULL, '2017-02-07 12:27:31', '2017-02-07 12:27:31'),
(2, 'biba', 'qwe@mail.r', '$2y$10$W3reYRa79qJSfqO5za1xb.7NN0yQIjKqVldWu7MqJsP/mipCmLgOW', NULL, '2017-02-07 13:27:23', '2017-02-07 13:27:23'),
(3, 'qweqwe', 'qwe3r4@mail.r', '$2y$10$f6Uo/agVtyasuGH40MukUuwRQjGNV.BUSyN0KwUoUKUFZefuX3KFi', 'oV4PXvNAQLGjhMJfxEtG5uZQSDOyjufUAZcPZd8rhn1st6TnNDWLxdMSTuM5', '2017-02-07 19:15:06', '2017-02-07 19:55:14');

-- --------------------------------------------------------

--
-- Структура таблицы `users_bets`
--

CREATE TABLE `users_bets` (
  `id` int(10) UNSIGNED NOT NULL,
  `User_id` int(11) NOT NULL,
  `Event_id` int(11) NOT NULL,
  `results` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `users_bets`
--

INSERT INTO `users_bets` (`id`, `User_id`, `Event_id`, `results`, `created_at`, `updated_at`) VALUES
(14, 2, 611355, '[[\"13\",\" Lewis\",\"KO/TKO\"],[\"14\",\" Hendricks\",\"KO/TKO\"],[\"15\",\" Sicilia\",\"KO/TKO\"],[\"16\",\" Theodorou\",\"KO/TKO\"],[\"17\",\"drow\",\"DROW\"],[\"18\",\" Markos\",\"KO/TKO\"],[\"19\",\"drow\",\"DROW\"],[\"20\",\" Santos\",\"SUB\"],[\"21\",\"drow\",\"DROW\"],[\"22\",\" Janes\",\"SUB\"],[\"23\",\" McMann\",\"SUB\"],[\"24\",\"drow\",\"DROW\"]]', '2017-02-07 16:33:04', '2017-02-07 16:34:57'),
(15, 1, 611351, '[[\"1\",\" Holm\",\"DEC\"],[\"2\",\" Brunson\",\"SUB\"],[\"3\",\"drow\",\"DROW\"],[\"4\",null,null],[\"5\",null,null],[\"6\",null,null],[\"7\",null,null],[\"8\",null,null],[\"9\",null,null],[\"10\",null,null],[\"11\",null,null],[\"12\",\"drow\",\"DROW\"]]', '2017-02-07 16:53:00', '2017-02-07 16:53:00'),
(16, 2, 611351, '[[\"1\",\" Holm\",\"DEC\"],[\"2\",\" Silva\",\"DEC\"],[\"3\",\"drow\",\"DROW\"],[\"4\",\"drow\",\"DROW\"],[\"5\",\"drow\",\"DROW\"],[\"6\",\" Muhammad\",\"SUB\"],[\"7\",\"drow\",\"DROW\"],[\"8\",\" Makhachev\",\"SUB\"],[\"9\",\" Brooks\",\"KO/TKO\"],[\"10\",\" Tybura\",\"SUB\"],[\"11\",\" Carneiro\",\"DEC\"],[\"12\",\" Nover\",\"SUB\"]]', '2017-02-07 17:06:07', '2017-02-07 17:13:13');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `bouts`
--
ALTER TABLE `bouts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `users_bets`
--
ALTER TABLE `users_bets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `bouts`
--
ALTER TABLE `bouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `users_bets`
--
ALTER TABLE `users_bets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
