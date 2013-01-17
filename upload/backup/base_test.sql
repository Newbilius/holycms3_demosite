-- phpMyAdmin SQL Dump
-- version 3.2.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 17, 2013 at 09:02 PM
-- Server version: 5.1.40
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `demo_site`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET cp1251 NOT NULL,
  `caption` text CHARACTER SET cp1251 NOT NULL,
  `sort` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `folder` int(11) NOT NULL,
  `url` text CHARACTER SET cp1251 NOT NULL,
  `foto` text CHARACTER SET cp1251 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `name`, `caption`, `sort`, `parent`, `folder`, `url`, `foto`) VALUES
(6, 'gamesrevival', 'GamesRevival', 200, 0, 0, 'http://www.gamesrevival.ru', '/upload/pics/be/b3/beb34b537ccc4190890426858a432808.png'),
(5, 'siteszone', 'SitesZone', 100, 0, 0, 'http://www.siteszone.ru', '/upload/pics/d4/6e/d46e4e7463c8c631c09ec7dbe891f38f.png');

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE IF NOT EXISTS `catalog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET cp1251 NOT NULL,
  `caption` text CHARACTER SET cp1251 NOT NULL,
  `sort` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `folder` int(11) NOT NULL,
  `detail_text` longtext CHARACTER SET cp1251 NOT NULL,
  `cost` double NOT NULL,
  `foto` text CHARACTER SET cp1251 NOT NULL,
  `foto_multi` text NOT NULL,
  `spec1` smallint(6) NOT NULL,
  `caption2` text CHARACTER SET cp1251 NOT NULL,
  `description` longtext CHARACTER SET cp1251 NOT NULL,
  `keywords` longtext CHARACTER SET cp1251 NOT NULL,
  `other` text NOT NULL,
  `tags` text CHARACTER SET cp1251 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `caption`, `sort`, `parent`, `folder`, `detail_text`, `cost`, `foto`, `foto_multi`, `spec1`, `caption2`, `description`, `keywords`, `other`, `tags`) VALUES
(13, 'quake_2', 'Quake 2', 700, 8, 0, '<p>\r\n	Не менее знаменитый шутер, чем Quake 1. Графика, музыка - все в нем великолепно.</p>\r\n', 1300, '/upload/pics/02/39/02392d53e49c741bc7a907794bde350d.jpg', '/upload/pics/12/0a/120a6824589e8ec949608bcc001866e9.jpg;/upload/pics/39/e3/39e375d350942c08322e7fea0b39c259.jpg;/upload/pics/b7/35/b735062467d1d9f5fd18fd62883ac0a6.jpg;/upload/pics/ca/54/ca5412111e2f11ccc1128b96d248246f.jpg', 0, '', '', '', '12', 'quake, ID software, quake 2, DOS, BOX'),
(7, 'shutery', 'Шутеры', 100, 0, 1, '', 0, '', '', 0, '', '', '', '', ''),
(8, 'ot_pervogo_lica', 'От первого лица', 200, 7, 1, '', 0, '', '', 0, '', '', '', '', ''),
(9, 'ot_tret_ego_lica', 'От третьего лица', 300, 7, 1, '', 0, '', '', 0, '', '', '', '', ''),
(10, 'strategii', 'Стратегии', 400, 0, 1, '', 0, '', '', 0, '', '', '', '', ''),
(11, 'rpg', 'RPG', 500, 0, 1, '', 0, '', '', 0, '', '', '', '', ''),
(12, 'quake_', 'Quake ', 600, 8, 0, '<p>\r\n	Классика FPSстроения. Супер игра с мощным саундтреком от Трента Резнора от NIN, великолепным дизайном Ромеро и кодом Кармака, одна из жемчужин ID Software.</p>\r\n', 1200, '/upload/pics/8d/de/8dde29217f4e546f6c3c190ab9d00074.jpg', '/upload/pics/f0/bf/f0bf6da328d329e23666ee215da3d680.jpg;/upload/pics/07/1a/071aeffd5a0cbefd7098d12c16aa602e.jpg', 1, '', '', '', '13', 'quake, ID software, DOS, BOX'),
(14, 'blood', 'Blood', 800, 8, 0, '<p>\r\n	Кровавеший шутер, классика стеба и кровавой бани.</p>\r\n', 800, '/upload/pics/f4/a6/f4a6c76923fd9121a8cd02a436bae778.jpg', '/upload/pics/22/d4/22d4fb16cd98b265986a6ba81224e3d2.jpg;/upload/pics/26/6a/266ad4ca53dc9170e53ec482125d778e.jpg', 0, 'Кровавый заголовок', 'Описание страницы Blood''а', 'blood,кровь, мясо', '17', 'DOS, Jewel, Monolith, безумие'),
(15, 'diablo_2_+_addon_lord_of_destruction', 'Diablo 2 + addon Lord of Destruction', 900, 11, 0, '<p>\r\n	Diablo возвращается! Герои отправляются в путь, что бы вернуть его туда, откуда он вылез - в лоно АДА!</p>\r\n', 2000, '/upload/pics/f3/57/f3575f07a8ccf98333f4a8f53725259e.jpg', '/upload/pics/f0/58/f05809d89364452894df3ea1300d8c59.jpg;/upload/pics/eb/e1/ebe1defe20e2e1894c965fee6e358496.jpg', 1, '', '', '', '15;19', 'Blizzard, Diablo, Windows, DVDBox'),
(16, 'diablo', 'Diablo', 1000, 11, 0, '<p>\r\n	Первая часть action-rpg-рогалика &quot;радость манчкина&quot;. Серьзно, люблю эту игру.</p>\r\n', 500, '/upload/pics/23/37/2337624a9d9358b253c0e0160ee4573f.jpg', '', 0, '', '', '', '15;19', ' Jewel,Blizzard, Diablo'),
(17, 'american_mcgee_s_alice', 'American Mcgee''s Alice', 1100, 9, 0, '<p>\r\n	Алиса... лучшая &quot;экранизация&quot; после рассказа Анджея Сапковского &quot;золотой полдень&quot;</p>\r\n<p>\r\n	P.S. Движок от Quake 3, однако.</p>\r\n', 1000, '/upload/pics/83/a1/83a1f75a8823976b3742da162e9fab71.jpg', '/upload/pics/78/f5/78f5a186d87583f73113b19476fe164e.jpg', 1, '', '', '', '14;18', 'TPS, безумие, DVDBox,quake'),
(18, 'tomb_raider', 'Tomb Raider', 1200, 9, 0, '<p>\r\n	Приключения Лары Крофт - расхитительницы гробниц.</p>\r\n<blockquote>\r\n	<p>\r\n		25. Пока Id &mdash; Бог Гейм делал нового своего сына, а Quaker&rsquo;ы мочили друг друга в deathmatch с новым оружием, не дремали другие &laquo;божки&raquo;, кои хотели называть себя Бог Гейм&rsquo;ами. Стали они отвлекать паству Id&rsquo;ову разными приемами нечестными &mdash; сказавши: &laquo;А попробуйте женщиной побыть&hellip;&raquo; и назвали ее Tomb Raider. Была та girl стройна и ловка и умела она бедрами двигать плавно, да так что позабыли Quaker&rsquo;ы Id&rsquo;а &mdash; Бога своего! Стали они смотреть на girl глазами горящими и слюнки сглатывать. Но было там почти тихо и спокойно, только вздохи сексуальные да волков иногда надо было пострелять &mdash; в общем скучно стало горячим Quaker&rsquo;ам. Очухались Quaker&rsquo;ы от чар женщины и сказали: &laquo;Нет не быть нам такими&hellip;&raquo;, и бросились с покаянием к Id&rsquo;у. И сказал им Id: &laquo;Где бы вы ни были с кем бы вы не были все равно вы вернетесь ко Мне &mdash; ибо Я есть одна Истина и Правда&raquo;.</p>\r\n</blockquote>\r\n<p>\r\n	(из &quot;3d-религии&quot;,&nbsp;<a href="http://www.old-games.ru/wiki/Религия_3D-игроманов">http://www.old-games.ru/wiki/Религия_3D-игроманов</a> )</p>\r\n', 450, '/upload/pics/89/d5/89d59a7a56828919e224a34b2310fb4e.jpg', '/upload/pics/2c/22/2c22c2c848149309a75b4b7de0225237.jpg', 0, '', '', '', '17', 'TPS, Jewel, '),
(19, 'knyaz__-_legenda_lesnoy_strancy', 'Князь - легенда лесной странцы', 1300, 11, 0, '<p>\r\n	Наш ответ Diablo, Baldurs Gates &nbsp;и многим другим. Ассимитричный такой ответ, но не самый плохой.</p>\r\n', 600, '/upload/pics/1f/78/1f7807a24acc5382581ca8ff0354738d.jpg', '/upload/pics/2d/69/2d69c1929dbee620dd5eb396a8ed684c.jpg', 0, '', '', '', '16;15', 'Россия, CD slim'),
(20, 'warcraft_2__battle.net_edition', 'Warcraft 2: Battle.Net Edition', 1400, 10, 0, '<p>\r\n	Война за Азерорт, аддон на месте, музыка на месте, лицензионный ключ на месте! В бой!</p>\r\n', 950, '/upload/pics/ea/48/ea48a0fa089d5cd9b6780e53f73e4c96.jpg', '/upload/pics/24/a5/24a519fd591446a80fabbc552f940865.jpg', 0, '', '', '', '21;16;15', 'RTS,Blizzard, Windows, DVDBox'),
(21, 'startcraft_+_addon_brood_war', 'StartCraft + addon Brood War', 1500, 10, 0, '<p>\r\n	Орки в космосе? Ну уж нет. Круче! Баланс, 3 совершенно разные рассы. Гоу! Во славу Адуна!</p>\r\n', 1800, '/upload/pics/14/37/143765039220d4ef3960b0e53b12f07b.jpg', '/upload/pics/34/e6/34e69a919f24b25a9fa2f760472e6eca.jpg', 0, '', '', '', '20;16;15', 'Blizzard,RTS, DVDBox, Windows');

-- --------------------------------------------------------

--
-- Table structure for table `cms_options`
--

CREATE TABLE IF NOT EXISTS `cms_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET cp1251 NOT NULL,
  `caption` text CHARACTER SET cp1251 NOT NULL,
  `sort` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `folder` int(11) NOT NULL,
  `opt_block` text CHARACTER SET latin1 NOT NULL,
  `opt_sort` text CHARACTER SET latin1 NOT NULL,
  `opt_by` text CHARACTER SET latin1 NOT NULL,
  `opt_count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `cms_options`
--

INSERT INTO `cms_options` (`id`, `name`, `caption`, `sort`, `parent`, `folder`, `opt_block`, `opt_sort`, `opt_by`, `opt_count`) VALUES
(1, 'journal', 'journal', 100, 0, 0, 'journal', 'date_time', 'DESC', 10),
(2, 'modules', 'modules', 200, 0, 0, 'modules', 'sort', 'ASC', 20);

-- --------------------------------------------------------

--
-- Table structure for table `foto`
--

CREATE TABLE IF NOT EXISTS `foto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET cp1251 NOT NULL,
  `caption` text CHARACTER SET cp1251 NOT NULL,
  `sort` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `folder` int(11) NOT NULL,
  `foto` text CHARACTER SET cp1251 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `foto`
--

INSERT INTO `foto` (`id`, `name`, `caption`, `sort`, `parent`, `folder`, `foto`) VALUES
(27, 'kitayskiy_planshet__nyne_-_navigator_ne_u_menya', 'Китайский планшет, ныне - навигатор не у меня', 200, 0, 1, '/upload/pics/3e/93/3e93aff0020a5fae13d4bef8de5d04a7.jpg'),
(26, 'staryy_yaponskiy_pentium_1', 'Старый японский Pentium 1', 100, 0, 1, '/upload/pics/c4/25/c42504414eba34200a6e7f6f3b8dc79e.jpg'),
(40, '81b30e035a86421592f9e46647d8b378', '&nbsp;', 1500, 27, 0, '/upload/pics/c7/a6/c7a623521dc17c5f03217e90963a43aa.jpg'),
(39, '96a0b548b2aab63c62918e7effbe2bf3', '&nbsp;', 1400, 27, 0, '/upload/pics/bb/66/bb6656c52c32c26cef66090f254cbba3.jpg'),
(38, '1231cdffa386af6cd7fe4c5c02bbfe11', '&nbsp;', 1300, 26, 0, '/upload/pics/73/7b/737bc30ac14e8031878f5c616a722807.jpg'),
(37, '0129b5d309258cb08bd4561127fb9dc3', '&nbsp;', 1200, 26, 0, '/upload/pics/58/07/5807cf66ceed002d1ff5530b6040f9ee.jpg'),
(36, '43efb0d016669ac2f86419c33f35d2ac', '&nbsp;', 1100, 26, 0, '/upload/pics/0a/5c/0a5c49424a7a3e1d85440d44ad5abb26.jpg'),
(35, 'b75f0148a969146b47a99be11c7fa380', '&nbsp;', 1000, 26, 0, '/upload/pics/a1/c1/a1c1088c38ef4ce727c0f252da273f87.jpg'),
(34, 'ce7c677353d280509fabab1ef5f0d6a9', '&nbsp;', 900, 26, 0, '/upload/pics/9a/b8/9ab850ce2f55ea315c391b4dfb841f39.jpg'),
(28, '0c11a91655714801163fe616bc80f5db', '&nbsp;', 300, 26, 0, '/upload/pics/47/6e/476ec6e7e89c2bc9d6c8b16136044312.jpg'),
(29, 'e973f034125f4eb12f84d0a883c98b2a', '&nbsp;', 400, 26, 0, '/upload/pics/7c/fa/7cfa2d61e7d90113bb0b3f423a0d0e18.jpg'),
(30, '8b24804c30b70640390d64cfdfb48e37', '&nbsp;', 500, 26, 0, '/upload/pics/0d/6f/0d6fd317ec0d9ef4ca4960edeaea0cac.jpg'),
(31, '99854014b177ba605e96767d0d0b3d58', '&nbsp;', 600, 26, 0, '/upload/pics/cf/fa/cffaaaad2153b47e71d9e7b8520cb02b.jpg'),
(32, 'f8d82b5cfcaab7d94474a6c8da4866b9', '&nbsp;', 700, 26, 0, '/upload/pics/45/46/4546dfce5bbbb9edbc99453da58cfcd6.jpg'),
(33, 'fed56e35b038433f64d82c8dec2bb691', '&nbsp;', 800, 26, 0, '/upload/pics/ea/a3/eaa3656cf45ffb1af533a0bd65d7a88e.jpg'),
(47, 'b8bb4fa398bc4e4f9c028aa8dd7e5985', '&nbsp;', 2200, 27, 0, '/upload/pics/14/24/1424013db22415234d5ba0c2e9506bb4.jpg'),
(46, '8d0e87824464e240ece186766cc54965', '&nbsp;', 2100, 27, 0, '/upload/pics/7b/8f/7b8f440335b6c291059391a794f95285.jpg'),
(45, 'df7e02956f13779d92ef9a59049b6f7b', '&nbsp;', 2000, 27, 0, '/upload/pics/59/15/5915b1860694ce8a52b6c875f53641c2.jpg'),
(44, '7aa2f706a9a77f6a7d8bb209d4774a78', '&nbsp;', 1900, 27, 0, '/upload/pics/4f/2b/4f2b8330faa81dc20f5f64440ac65bef.jpg'),
(43, '1c343eb072b7d97a432e1c3c184409a0', '&nbsp;', 1800, 27, 0, '/upload/pics/e3/04/e304c0f00545ef024ebe98ad34d8b600.jpg'),
(42, '0783015b5f4c1f9e482dd8b2b70ddd96', '&nbsp;', 1700, 27, 0, '/upload/pics/df/a7/dfa7a210de7f25c5a99030c221d8d16f.jpg'),
(41, '5a5cfcc171bc7ea81f3edd284e5cd3d7', '&nbsp;', 1600, 27, 0, '/upload/pics/34/f3/34f3d0c5a1a87abab8f0fe6504b5443d.jpg'),
(48, '5406d7cf197d1e50271ef55100fc428e', '&nbsp;', 2300, 27, 0, '/upload/pics/24/0f/240f4232ae5a4022fbe9ec3a8a93a12e.jpg'),
(49, 'a65c6f4b0ca46df14a802483999f5151', '&nbsp;', 2400, 27, 0, '/upload/pics/81/ab/81ab3ec8b60e715ddfdbb73d18d88c1e.jpg'),
(50, '2ba124687e649b6147320f242334c840', '&nbsp;', 2500, 27, 0, '/upload/pics/fd/9a/fd9af50c56fcec429921564991c22cb5.jpg'),
(51, '730ca58a630f3b74bc81e204e6da2e17', '&nbsp;', 2600, 27, 0, '/upload/pics/7e/8e/7e8e617281e728caca8200f8e8475ae1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `journal`
--

CREATE TABLE IF NOT EXISTS `journal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET cp1251 NOT NULL,
  `caption` text CHARACTER SET cp1251 NOT NULL,
  `sort` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `folder` int(11) NOT NULL,
  `user_id` text CHARACTER SET cp1251 NOT NULL,
  `block_name` text CHARACTER SET cp1251 NOT NULL,
  `item_id` int(11) NOT NULL,
  `action` text CHARACTER SET cp1251 NOT NULL,
  `data_after` longtext CHARACTER SET cp1251 NOT NULL,
  `data_before` longtext CHARACTER SET cp1251 NOT NULL,
  `date_time` datetime NOT NULL,
  `data_caption` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `journal`
--

INSERT INTO `journal` (`id`, `name`, `caption`, `sort`, `parent`, `folder`, `user_id`, `block_name`, `item_id`, `action`, `data_after`, `data_before`, `date_time`, `data_caption`) VALUES
(1, '13e689f8629dea2e62228c2408a4c7e1', '1355325838', 100, 0, 0, '1', 'news_files', 1, 'update', 'YTo4OntzOjI6ImlkIjtzOjE6IjEiO3M6NDoibmFtZSI7czoyOToiY2hhbmdlbG9nX29kbm95X2l6X3ZlcnNpeV9jbXMiO3M6NzoiY2FwdGlvbiI7czo0MjoiQ2hhbmdlbG9nINC+0LTQvdC+0Lkg0LjQtyDQstC10YDRgdC40LkgQ01TIjtzOjQ6InNvcnQiO3M6MzoiMTAwIjtzOjY6InBhcmVudCI7czoxOiIwIjtzOjY6ImZvbGRlciI7czoxOiIwIjtzOjQ6ImZpbGUiO3M6NTY6Ii91cGxvYWQvZmlsZXMvMTEvNGMvMTE0YzZjZTQ0OTBlZWFhNzhiODU5ZjU1NjljMzYxMTUudHh0IjtzOjc6Im5ld3NfaWQiO3M6MjoiNTMiO30=', 'YTo4OntzOjI6ImlkIjtzOjE6IjEiO3M6NDoibmFtZSI7czoyOToiY2hhbmdlbG9nX29kbm95X2l6X3ZlcnNpeV9jbXMiO3M6NzoiY2FwdGlvbiI7czo0MjoiQ2hhbmdlbG9nINC+0LTQvdC+0Lkg0LjQtyDQstC10YDRgdC40LkgQ01TIjtzOjQ6InNvcnQiO3M6MzoiMTAwIjtzOjY6InBhcmVudCI7czoxOiIwIjtzOjY6ImZvbGRlciI7czoxOiIwIjtzOjQ6ImZpbGUiO3M6NTY6Ii91cGxvYWQvZmlsZXMvMTEvNGMvMTE0YzZjZTQ0OTBlZWFhNzhiODU5ZjU1NjljMzYxMTUudHh0IjtzOjc6Im5ld3NfaWQiO3M6MjoiNTMiO30=', '2012-12-12 19:23:58', 'Changelog одной из версий CMS'),
(2, 'ab60a987dce484bfba5e69e3b4d1e0bd', '1355325840', 200, 0, 0, '1', 'news_files', 1, 'update', 'YTo4OntzOjI6ImlkIjtzOjE6IjEiO3M6NDoibmFtZSI7czoyOToiY2hhbmdlbG9nX29kbm95X2l6X3ZlcnNpeV9jbXMiO3M6NzoiY2FwdGlvbiI7czo0MjoiQ2hhbmdlbG9nINC+0LTQvdC+0Lkg0LjQtyDQstC10YDRgdC40LkgQ01TIjtzOjQ6InNvcnQiO3M6MzoiMTAwIjtzOjY6InBhcmVudCI7czoxOiIwIjtzOjY6ImZvbGRlciI7czoxOiIwIjtzOjQ6ImZpbGUiO3M6NTY6Ii91cGxvYWQvZmlsZXMvMTEvNGMvMTE0YzZjZTQ0OTBlZWFhNzhiODU5ZjU1NjljMzYxMTUudHh0IjtzOjc6Im5ld3NfaWQiO3M6MjoiNTMiO30=', 'YTo4OntzOjI6ImlkIjtzOjE6IjEiO3M6NDoibmFtZSI7czoyOToiY2hhbmdlbG9nX29kbm95X2l6X3ZlcnNpeV9jbXMiO3M6NzoiY2FwdGlvbiI7czo0MjoiQ2hhbmdlbG9nINC+0LTQvdC+0Lkg0LjQtyDQstC10YDRgdC40LkgQ01TIjtzOjQ6InNvcnQiO3M6MzoiMTAwIjtzOjY6InBhcmVudCI7czoxOiIwIjtzOjY6ImZvbGRlciI7czoxOiIwIjtzOjQ6ImZpbGUiO3M6NTY6Ii91cGxvYWQvZmlsZXMvMTEvNGMvMTE0YzZjZTQ0OTBlZWFhNzhiODU5ZjU1NjljMzYxMTUudHh0IjtzOjc6Im5ld3NfaWQiO3M6MjoiNTMiO30=', '2012-12-12 19:24:00', 'Changelog одной из версий CMS'),
(3, 'a2f3df262c635fd5d1a7e49d56898280', '1355325843', 300, 0, 0, '1', 'news_files', 1, 'update', 'YTo4OntzOjI6ImlkIjtzOjE6IjEiO3M6NDoibmFtZSI7czoyOToiY2hhbmdlbG9nX29kbm95X2l6X3ZlcnNpeV9jbXMiO3M6NzoiY2FwdGlvbiI7czo0MjoiQ2hhbmdlbG9nINC+0LTQvdC+0Lkg0LjQtyDQstC10YDRgdC40LkgQ01TIjtzOjQ6InNvcnQiO3M6MzoiMTAwIjtzOjY6InBhcmVudCI7czoxOiIwIjtzOjY6ImZvbGRlciI7czoxOiIwIjtzOjQ6ImZpbGUiO3M6MDoiIjtzOjc6Im5ld3NfaWQiO3M6MjoiNTMiO30=', 'YTo4OntzOjI6ImlkIjtzOjE6IjEiO3M6NDoibmFtZSI7czoyOToiY2hhbmdlbG9nX29kbm95X2l6X3ZlcnNpeV9jbXMiO3M6NzoiY2FwdGlvbiI7czo0MjoiQ2hhbmdlbG9nINC+0LTQvdC+0Lkg0LjQtyDQstC10YDRgdC40LkgQ01TIjtzOjQ6InNvcnQiO3M6MzoiMTAwIjtzOjY6InBhcmVudCI7czoxOiIwIjtzOjY6ImZvbGRlciI7czoxOiIwIjtzOjQ6ImZpbGUiO3M6NTY6Ii91cGxvYWQvZmlsZXMvMTEvNGMvMTE0YzZjZTQ0OTBlZWFhNzhiODU5ZjU1NjljMzYxMTUudHh0IjtzOjc6Im5ld3NfaWQiO3M6MjoiNTMiO30=', '2012-12-12 19:24:03', 'Changelog одной из версий CMS'),
(4, 'e1d7d3b5ebaef422134f89d77a71c020', '1355587628', 400, 0, 0, '1', 'news_files', 3, 'add', 'YTo4OntzOjI6ImlkIjtzOjE6IjMiO3M6NDoibmFtZSI7czo0OiIxMTExIjtzOjc6ImNhcHRpb24iO3M6NDoiMTExMSI7czo0OiJzb3J0IjtzOjM6IjMwMCI7czo2OiJwYXJlbnQiO3M6MToiMCI7czo2OiJmb2xkZXIiO3M6MToiMCI7czo0OiJmaWxlIjtzOjA6IiI7czo3OiJuZXdzX2lkIjtzOjI6IjU0Ijt9', '', '2012-12-15 20:07:08', '1111'),
(5, '791be350654b3818648cfd7bd44c803b', '1355839436', 500, 0, 0, '1', 'catalog', 24, 'add', 'YToxNjp7czoyOiJpZCI7czoyOiIyNCI7czo0OiJuYW1lIjtzOjQ6InRlc3QiO3M6NzoiY2FwdGlvbiI7czo0OiJ0ZXN0IjtzOjQ6InNvcnQiO3M6NDoiMTYwMCI7czo2OiJwYXJlbnQiO3M6MToiMCI7czo2OiJmb2xkZXIiO3M6MToiMCI7czoxMToiZGV0YWlsX3RleHQiO3M6MDoiIjtzOjQ6ImNvc3QiO3M6MToiMCI7czo0OiJmb3RvIjtzOjA6IiI7czoxMDoiZm90b19tdWx0aSI7czoxNjc6Ii91cGxvYWQvcGljcy80OC9kOS80OGQ5MDE2ZTkwNzVkNGJmOGQwMzU0OTk3YmNkMzQyMi5qcGc7L3VwbG9hZC9waWNzL2M5LzRiL2M5NGJhYjU4MzZkYjA4N2IyYTI1YTFlNTIwMGUyZTcyLmpwZzsvdXBsb2FkL3BpY3MvMWMvOWEvMWM5YTkzMzU2NWMxMDFhZWI3YTc3ZTVhYTU3MmI5M2MuanBnIjtzOjU6InNwZWMxIjtzOjE6IjAiO3M6ODoiY2FwdGlvbjIiO3M6MDoiIjtzOjExOiJkZXNjcmlwdGlvbiI7czowOiIiO3M6ODoia2V5d29yZHMiO3M6MDoiIjtzOjU6Im90aGVyIjtzOjA6IiI7czo0OiJ0YWdzIjtzOjA6IiI7fQ==', '', '2012-12-18 18:03:56', 'test'),
(6, 'bc7e90d9eaa22f90751161a719de5bc3', '1357144289', 600, 0, 0, '1', 'catalog', 24, 'update', 'YToxNjp7czoyOiJpZCI7czoyOiIyNCI7czo0OiJuYW1lIjtzOjk6InRlc3R5dmZ5diI7czo3OiJjYXB0aW9uIjtzOjE0OiJ0ZXN00YvQstGE0YvQsiI7czo0OiJzb3J0IjtzOjQ6IjE2MDAiO3M6NjoicGFyZW50IjtzOjE6IjAiO3M6NjoiZm9sZGVyIjtzOjE6IjAiO3M6MTE6ImRldGFpbF90ZXh0IjtzOjA6IiI7czo0OiJjb3N0IjtzOjE6IjAiO3M6NDoiZm90byI7czowOiIiO3M6MTA6ImZvdG9fbXVsdGkiO3M6MTY3OiIvdXBsb2FkL3BpY3MvNDgvZDkvNDhkOTAxNmU5MDc1ZDRiZjhkMDM1NDk5N2JjZDM0MjIuanBnOy91cGxvYWQvcGljcy9jOS80Yi9jOTRiYWI1ODM2ZGIwODdiMmEyNWExZTUyMDBlMmU3Mi5qcGc7L3VwbG9hZC9waWNzLzFjLzlhLzFjOWE5MzM1NjVjMTAxYWViN2E3N2U1YWE1NzJiOTNjLmpwZyI7czo1OiJzcGVjMSI7czoxOiIwIjtzOjg6ImNhcHRpb24yIjtzOjA6IiI7czoxMToiZGVzY3JpcHRpb24iO3M6MDoiIjtzOjg6ImtleXdvcmRzIjtzOjA6IiI7czo1OiJvdGhlciI7czowOiIiO3M6NDoidGFncyI7czowOiIiO30=', 'YToxNjp7czoyOiJpZCI7czoyOiIyNCI7czo0OiJuYW1lIjtzOjQ6InRlc3QiO3M6NzoiY2FwdGlvbiI7czo0OiJ0ZXN0IjtzOjQ6InNvcnQiO3M6NDoiMTYwMCI7czo2OiJwYXJlbnQiO3M6MToiMCI7czo2OiJmb2xkZXIiO3M6MToiMCI7czoxMToiZGV0YWlsX3RleHQiO3M6MDoiIjtzOjQ6ImNvc3QiO3M6MToiMCI7czo0OiJmb3RvIjtzOjA6IiI7czoxMDoiZm90b19tdWx0aSI7czoxNjc6Ii91cGxvYWQvcGljcy80OC9kOS80OGQ5MDE2ZTkwNzVkNGJmOGQwMzU0OTk3YmNkMzQyMi5qcGc7L3VwbG9hZC9waWNzL2M5LzRiL2M5NGJhYjU4MzZkYjA4N2IyYTI1YTFlNTIwMGUyZTcyLmpwZzsvdXBsb2FkL3BpY3MvMWMvOWEvMWM5YTkzMzU2NWMxMDFhZWI3YTc3ZTVhYTU3MmI5M2MuanBnIjtzOjU6InNwZWMxIjtzOjE6IjAiO3M6ODoiY2FwdGlvbjIiO3M6MDoiIjtzOjExOiJkZXNjcmlwdGlvbiI7czowOiIiO3M6ODoia2V5d29yZHMiO3M6MDoiIjtzOjU6Im90aGVyIjtzOjA6IiI7czo0OiJ0YWdzIjtzOjA6IiI7fQ==', '2013-01-02 20:31:29', 'testывфыв'),
(7, '6c4297711b50447acc4c75025c025ef7', '1357144296', 700, 0, 0, '1', '0', 24, 'delete', 'YjowOw==', '', '2013-01-02 20:31:36', ''),
(8, 'a2f4dc2a283593164062a16b2eef346c', '1357144348', 800, 0, 0, '1', 'catalog', 24, 'update', 'YToxNjp7czoyOiJpZCI7czoyOiIyNCI7czo0OiJuYW1lIjtzOjk6InRlc3R5dmZ5diI7czo3OiJjYXB0aW9uIjtzOjE0OiJ0ZXN00YvQstGE0YvQsiI7czo0OiJzb3J0IjtzOjQ6IjE2MDAiO3M6NjoicGFyZW50IjtzOjI6IjExIjtzOjY6ImZvbGRlciI7czoxOiIwIjtzOjExOiJkZXRhaWxfdGV4dCI7czowOiIiO3M6NDoiY29zdCI7czoxOiIwIjtzOjQ6ImZvdG8iO3M6MDoiIjtzOjEwOiJmb3RvX211bHRpIjtzOjE2NzoiL3VwbG9hZC9waWNzLzQ4L2Q5LzQ4ZDkwMTZlOTA3NWQ0YmY4ZDAzNTQ5OTdiY2QzNDIyLmpwZzsvdXBsb2FkL3BpY3MvYzkvNGIvYzk0YmFiNTgzNmRiMDg3YjJhMjVhMWU1MjAwZTJlNzIuanBnOy91cGxvYWQvcGljcy8xYy85YS8xYzlhOTMzNTY1YzEwMWFlYjdhNzdlNWFhNTcyYjkzYy5qcGciO3M6NToic3BlYzEiO3M6MToiMCI7czo4OiJjYXB0aW9uMiI7czowOiIiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjA6IiI7czo4OiJrZXl3b3JkcyI7czowOiIiO3M6NToib3RoZXIiO3M6MDoiIjtzOjQ6InRhZ3MiO3M6MDoiIjt9', 'YToxNjp7czoyOiJpZCI7czoyOiIyNCI7czo0OiJuYW1lIjtzOjk6InRlc3R5dmZ5diI7czo3OiJjYXB0aW9uIjtzOjE0OiJ0ZXN00YvQstGE0YvQsiI7czo0OiJzb3J0IjtzOjQ6IjE2MDAiO3M6NjoicGFyZW50IjtzOjE6IjAiO3M6NjoiZm9sZGVyIjtzOjE6IjAiO3M6MTE6ImRldGFpbF90ZXh0IjtzOjA6IiI7czo0OiJjb3N0IjtzOjE6IjAiO3M6NDoiZm90byI7czowOiIiO3M6MTA6ImZvdG9fbXVsdGkiO3M6MTY3OiIvdXBsb2FkL3BpY3MvNDgvZDkvNDhkOTAxNmU5MDc1ZDRiZjhkMDM1NDk5N2JjZDM0MjIuanBnOy91cGxvYWQvcGljcy9jOS80Yi9jOTRiYWI1ODM2ZGIwODdiMmEyNWExZTUyMDBlMmU3Mi5qcGc7L3VwbG9hZC9waWNzLzFjLzlhLzFjOWE5MzM1NjVjMTAxYWViN2E3N2U1YWE1NzJiOTNjLmpwZyI7czo1OiJzcGVjMSI7czoxOiIwIjtzOjg6ImNhcHRpb24yIjtzOjA6IiI7czoxMToiZGVzY3JpcHRpb24iO3M6MDoiIjtzOjg6ImtleXdvcmRzIjtzOjA6IiI7czo1OiJvdGhlciI7czowOiIiO3M6NDoidGFncyI7czowOiIiO30=', '2013-01-02 20:32:28', 'testывфыв'),
(9, '32fb6062bfa4d02327256bc9dbdc09c1', '1357144378', 900, 0, 0, '1', 'catalog', 24, 'delete', 'YToxNjp7czoyOiJpZCI7czoyOiIyNCI7czo0OiJuYW1lIjtzOjk6InRlc3R5dmZ5diI7czo3OiJjYXB0aW9uIjtzOjE0OiJ0ZXN00YvQstGE0YvQsiI7czo0OiJzb3J0IjtzOjQ6IjE2MDAiO3M6NjoicGFyZW50IjtzOjI6IjExIjtzOjY6ImZvbGRlciI7czoxOiIwIjtzOjExOiJkZXRhaWxfdGV4dCI7czowOiIiO3M6NDoiY29zdCI7czoxOiIwIjtzOjQ6ImZvdG8iO3M6MDoiIjtzOjEwOiJmb3RvX211bHRpIjtzOjE2NzoiL3VwbG9hZC9waWNzLzQ4L2Q5LzQ4ZDkwMTZlOTA3NWQ0YmY4ZDAzNTQ5OTdiY2QzNDIyLmpwZzsvdXBsb2FkL3BpY3MvYzkvNGIvYzk0YmFiNTgzNmRiMDg3YjJhMjVhMWU1MjAwZTJlNzIuanBnOy91cGxvYWQvcGljcy8xYy85YS8xYzlhOTMzNTY1YzEwMWFlYjdhNzdlNWFhNTcyYjkzYy5qcGciO3M6NToic3BlYzEiO3M6MToiMCI7czo4OiJjYXB0aW9uMiI7czowOiIiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjA6IiI7czo4OiJrZXl3b3JkcyI7czowOiIiO3M6NToib3RoZXIiO3M6MDoiIjtzOjQ6InRhZ3MiO3M6MDoiIjt9', '', '2013-01-02 20:32:58', 'testывфыв'),
(10, '58ab6ef0ad99998110fc2389e75bd156', '1357144461', 1000, 0, 0, '1', 'catalog', 25, 'add', 'YToxNjp7czoyOiJpZCI7czoyOiIyNSI7czo0OiJuYW1lIjtzOjc6ImZ5dmZmeXYiO3M6NzoiY2FwdGlvbiI7czoxNDoi0YTRi9Cy0YTRhNGL0LIiO3M6NDoic29ydCI7czo0OiIxNjAwIjtzOjY6InBhcmVudCI7czoyOiIxMSI7czo2OiJmb2xkZXIiO3M6MToiMCI7czoxMToiZGV0YWlsX3RleHQiO3M6MDoiIjtzOjQ6ImNvc3QiO3M6MToiMCI7czo0OiJmb3RvIjtzOjA6IiI7czoxMDoiZm90b19tdWx0aSI7czowOiIiO3M6NToic3BlYzEiO3M6MToiMCI7czo4OiJjYXB0aW9uMiI7czowOiIiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjA6IiI7czo4OiJrZXl3b3JkcyI7czowOiIiO3M6NToib3RoZXIiO3M6MToiOSI7czo0OiJ0YWdzIjtzOjY6IkRWREJveCI7fQ==', '', '2013-01-02 20:34:21', 'фывффыв'),
(11, '618c060b8888d6313cafdd8796141f2f', '1357144466', 1100, 0, 0, '1', 'catalog', 25, 'update', 'YToxNjp7czoyOiJpZCI7czoyOiIyNSI7czo0OiJuYW1lIjtzOjc6ImZ5dmZmeXYiO3M6NzoiY2FwdGlvbiI7czoxNDoi0YTRi9Cy0YTRhNGL0LIiO3M6NDoic29ydCI7czo0OiIxNjAwIjtzOjY6InBhcmVudCI7czoyOiIxMSI7czo2OiJmb2xkZXIiO3M6MToiMCI7czoxMToiZGV0YWlsX3RleHQiO3M6MDoiIjtzOjQ6ImNvc3QiO3M6MToiMCI7czo0OiJmb3RvIjtzOjA6IiI7czoxMDoiZm90b19tdWx0aSI7czowOiIiO3M6NToic3BlYzEiO3M6MToiMCI7czo4OiJjYXB0aW9uMiI7czowOiIiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjA6IiI7czo4OiJrZXl3b3JkcyI7czowOiIiO3M6NToib3RoZXIiO3M6MToiOSI7czo0OiJ0YWdzIjtzOjY6IkRWREJveCI7fQ==', 'YToxNjp7czoyOiJpZCI7czoyOiIyNSI7czo0OiJuYW1lIjtzOjc6ImZ5dmZmeXYiO3M6NzoiY2FwdGlvbiI7czoxNDoi0YTRi9Cy0YTRhNGL0LIiO3M6NDoic29ydCI7czo0OiIxNjAwIjtzOjY6InBhcmVudCI7czoyOiIxMSI7czo2OiJmb2xkZXIiO3M6MToiMCI7czoxMToiZGV0YWlsX3RleHQiO3M6MDoiIjtzOjQ6ImNvc3QiO3M6MToiMCI7czo0OiJmb3RvIjtzOjA6IiI7czoxMDoiZm90b19tdWx0aSI7czowOiIiO3M6NToic3BlYzEiO3M6MToiMCI7czo4OiJjYXB0aW9uMiI7czowOiIiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjA6IiI7czo4OiJrZXl3b3JkcyI7czowOiIiO3M6NToib3RoZXIiO3M6MToiOSI7czo0OiJ0YWdzIjtzOjY6IkRWREJveCI7fQ==', '2013-01-02 20:34:26', 'фывффыв'),
(12, 'a6d5595da0f444321cbf9681175f23e7', '1357144468', 1200, 0, 0, '1', 'catalog', 25, 'delete', 'YToxNjp7czoyOiJpZCI7czoyOiIyNSI7czo0OiJuYW1lIjtzOjc6ImZ5dmZmeXYiO3M6NzoiY2FwdGlvbiI7czoxNDoi0YTRi9Cy0YTRhNGL0LIiO3M6NDoic29ydCI7czo0OiIxNjAwIjtzOjY6InBhcmVudCI7czoyOiIxMSI7czo2OiJmb2xkZXIiO3M6MToiMCI7czoxMToiZGV0YWlsX3RleHQiO3M6MDoiIjtzOjQ6ImNvc3QiO3M6MToiMCI7czo0OiJmb3RvIjtzOjA6IiI7czoxMDoiZm90b19tdWx0aSI7czowOiIiO3M6NToic3BlYzEiO3M6MToiMCI7czo4OiJjYXB0aW9uMiI7czowOiIiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjA6IiI7czo4OiJrZXl3b3JkcyI7czowOiIiO3M6NToib3RoZXIiO3M6MToiOSI7czo0OiJ0YWdzIjtzOjY6IkRWREJveCI7fQ==', '', '2013-01-02 20:34:28', 'фывффыв'),
(13, '1241b9c8bd545097a2fab2819375ef98', '1357211720', 1300, 0, 1, '1', 'foto', 0, 'add', 'YTowOnt9', '', '2013-01-03 15:15:20', ''),
(14, 'c30ad569c1a900687803e218e30658ed', '1357212173', 1400, 0, 0, '1', 'foto', 53, 'update', 'YTo3OntzOjI6ImlkIjtzOjI6IjUzIjtzOjQ6Im5hbWUiO3M6MzI6IjMyMDQ1Y2JiMzA1YzdhZjIwZWIxMDQwMDY4ZGNiMWQ4IjtzOjc6ImNhcHRpb24iO3M6MTc6IkNocnlzYW50aGVtdW0uanBnIjtzOjQ6InNvcnQiO3M6NDoiMjgwMCI7czo2OiJwYXJlbnQiO3M6MjoiNTIiO3M6NjoiZm9sZGVyIjtzOjE6IjAiO3M6NDoiZm90byI7czo1NToiL3VwbG9hZC9waWNzL2JmLzk3L2JmOTc2Y2VhM2ViNDBmOGU3MWEzZDg5YWRhZmNhMGFmLmpwZyI7fQ==', 'YTo3OntzOjI6ImlkIjtzOjI6IjUzIjtzOjQ6Im5hbWUiO3M6MzI6IjMyMDQ1Y2JiMzA1YzdhZjIwZWIxMDQwMDY4ZGNiMWQ4IjtzOjc6ImNhcHRpb24iO3M6MTc6IkNocnlzYW50aGVtdW0uanBnIjtzOjQ6InNvcnQiO3M6NDoiMjgwMCI7czo2OiJwYXJlbnQiO3M6MToiMCI7czo2OiJmb2xkZXIiO3M6MToiMCI7czo0OiJmb3RvIjtzOjU1OiIvdXBsb2FkL3BpY3MvYmYvOTcvYmY5NzZjZWEzZWI0MGY4ZTcxYTNkODlhZGFmY2EwYWYuanBnIjt9', '2013-01-03 15:22:53', 'Chrysanthemum.jpg'),
(15, 'c30ad569c1a900687803e218e30658ed', '1357212173', 1500, 0, 0, '1', 'foto', 54, 'update', 'YTo3OntzOjI6ImlkIjtzOjI6IjU0IjtzOjQ6Im5hbWUiO3M6MzI6ImNkODkwZTAwYzk5Y2QxMjNhOTE0NGQ1MDc1ZTM2MDEyIjtzOjc6ImNhcHRpb24iO3M6MTA6IkRlc2VydC5qcGciO3M6NDoic29ydCI7czo0OiIyOTAwIjtzOjY6InBhcmVudCI7czoyOiI1MiI7czo2OiJmb2xkZXIiO3M6MToiMCI7czo0OiJmb3RvIjtzOjU1OiIvdXBsb2FkL3BpY3MvZjYvZWMvZjZlY2U0NmI2NzMxNjE5MjdhZTUwNWRmMDVkZTc5NmEuanBnIjt9', 'YTo3OntzOjI6ImlkIjtzOjI6IjU0IjtzOjQ6Im5hbWUiO3M6MzI6ImNkODkwZTAwYzk5Y2QxMjNhOTE0NGQ1MDc1ZTM2MDEyIjtzOjc6ImNhcHRpb24iO3M6MTA6IkRlc2VydC5qcGciO3M6NDoic29ydCI7czo0OiIyOTAwIjtzOjY6InBhcmVudCI7czoxOiIwIjtzOjY6ImZvbGRlciI7czoxOiIwIjtzOjQ6ImZvdG8iO3M6NTU6Ii91cGxvYWQvcGljcy9mNi9lYy9mNmVjZTQ2YjY3MzE2MTkyN2FlNTA1ZGYwNWRlNzk2YS5qcGciO30=', '2013-01-03 15:22:53', 'Desert.jpg'),
(16, 'c30ad569c1a900687803e218e30658ed', '1357212173', 1600, 0, 0, '1', 'foto', 55, 'update', 'YTo3OntzOjI6ImlkIjtzOjI6IjU1IjtzOjQ6Im5hbWUiO3M6MzI6ImYwOWM2N2IwMDJmYjUxYzk3Y2Q3MDdjOTlkY2JhOGUyIjtzOjc6ImNhcHRpb24iO3M6MTQ6Ikh5ZHJhbmdlYXMuanBnIjtzOjQ6InNvcnQiO3M6NDoiMzAwMCI7czo2OiJwYXJlbnQiO3M6MjoiNTIiO3M6NjoiZm9sZGVyIjtzOjE6IjAiO3M6NDoiZm90byI7czo1NToiL3VwbG9hZC9waWNzLzJmLzZjLzJmNmNlYjNmYmVmOTA5YTk5YzUwYjg2MjZiZTZmYjY2LmpwZyI7fQ==', 'YTo3OntzOjI6ImlkIjtzOjI6IjU1IjtzOjQ6Im5hbWUiO3M6MzI6ImYwOWM2N2IwMDJmYjUxYzk3Y2Q3MDdjOTlkY2JhOGUyIjtzOjc6ImNhcHRpb24iO3M6MTQ6Ikh5ZHJhbmdlYXMuanBnIjtzOjQ6InNvcnQiO3M6NDoiMzAwMCI7czo2OiJwYXJlbnQiO3M6MToiMCI7czo2OiJmb2xkZXIiO3M6MToiMCI7czo0OiJmb3RvIjtzOjU1OiIvdXBsb2FkL3BpY3MvMmYvNmMvMmY2Y2ViM2ZiZWY5MDlhOTljNTBiODYyNmJlNmZiNjYuanBnIjt9', '2013-01-03 15:22:53', 'Hydrangeas.jpg'),
(17, '05c00fd89d2e1311eaa273bb13b2f36d', '1357212229', 1700, 0, 0, '1', 'foto', 53, 'delete', 'YTowOnt9', '', '2013-01-03 15:23:49', ''),
(18, '05c00fd89d2e1311eaa273bb13b2f36d', '1357212229', 1800, 0, 0, '1', 'foto', 54, 'delete', 'YTowOnt9', '', '2013-01-03 15:23:49', ''),
(19, '05c00fd89d2e1311eaa273bb13b2f36d', '1357212229', 1900, 0, 0, '1', 'foto', 55, 'delete', 'YTowOnt9', '', '2013-01-03 15:23:49', ''),
(20, '05c00fd89d2e1311eaa273bb13b2f36d', '1357212229', 2000, 0, 0, '1', 'foto', 56, 'delete', 'YTowOnt9', '', '2013-01-03 15:23:49', ''),
(21, '05c00fd89d2e1311eaa273bb13b2f36d', '1357212229', 2100, 0, 0, '1', 'foto', 57, 'delete', 'YTowOnt9', '', '2013-01-03 15:23:49', ''),
(22, '05c00fd89d2e1311eaa273bb13b2f36d', '1357212229', 2200, 0, 0, '1', 'foto', 58, 'delete', 'YTowOnt9', '', '2013-01-03 15:23:49', ''),
(23, 'f9ddc9b4aabe7458fd14b09c0b996165', '1357212289', 2300, 0, 0, '1', 'foto', 59, 'delete', 'YTo3OntzOjI6ImlkIjtzOjI6IjU5IjtzOjQ6Im5hbWUiO3M6MzI6IjUwNGNlMDA0NWQzYWU3OTlmN2ViNzIyMDg2MzU0NzVlIjtzOjc6ImNhcHRpb24iO3M6MTc6IkNocnlzYW50aGVtdW0uanBnIjtzOjQ6InNvcnQiO3M6NDoiMjgwMCI7czo2OiJwYXJlbnQiO3M6MjoiNTIiO3M6NjoiZm9sZGVyIjtzOjE6IjAiO3M6NDoiZm90byI7czo1NToiL3VwbG9hZC9waWNzL2FhL2E4L2FhYTg4ODg5OTVjMjAyOTUzMjM2NTAzYjdiNWU2MDJkLmpwZyI7fQ==', '', '2013-01-03 15:24:49', 'Chrysanthemum.jpg'),
(24, 'c6dc04f945becbf387d8b4c071d62a56', '1357212292', 2400, 0, 0, '1', 'foto', 60, 'delete', 'YTowOnt9', '', '2013-01-03 15:24:52', ''),
(25, 'c6dc04f945becbf387d8b4c071d62a56', '1357212292', 2500, 0, 0, '1', 'foto', 59, 'delete', 'YTowOnt9', '', '2013-01-03 15:24:52', ''),
(26, 'bcb0e104fb5a3e1b677c34d829a4805d', '1357212670', 2600, 0, 0, '1', 'foto', 61, 'delete', 'YTo3OntzOjI6ImlkIjtzOjI6IjYxIjtzOjQ6Im5hbWUiO3M6MzI6IjYxMjAxMDU1YjVmNzVhMjlmODU1MGIwZTAxN2I1ZTI1IjtzOjc6ImNhcHRpb24iO3M6MTk6IkxpZ2h0aG91c2Vfc21hbC5qcGciO3M6NDoic29ydCI7czo0OiIyODAwIjtzOjY6InBhcmVudCI7czoyOiI1MiI7czo2OiJmb2xkZXIiO3M6MToiMCI7czo0OiJmb3RvIjtzOjU1OiIvdXBsb2FkL3BpY3MvZTQvY2UvZTRjZWU1ZDU4ZTFjODI5MzAwNjUxMWVhYmY3OWIyMTIuanBnIjt9', '', '2013-01-03 15:31:10', 'Lighthouse_smal.jpg'),
(27, 'bcb0e104fb5a3e1b677c34d829a4805d', '1357212670', 2700, 0, 0, '1', 'foto', 62, 'delete', 'YTo3OntzOjI6ImlkIjtzOjI6IjYyIjtzOjQ6Im5hbWUiO3M6MzI6IjNlYjEyODMyN2IzNzBlYmQwYjFjYzNiNzFkNTc5MWVmIjtzOjc6ImNhcHRpb24iO3M6MTI6IlBlbmd1aW5zLmpwZyI7czo0OiJzb3J0IjtzOjQ6IjI5MDAiO3M6NjoicGFyZW50IjtzOjI6IjUyIjtzOjY6ImZvbGRlciI7czoxOiIwIjtzOjQ6ImZvdG8iO3M6NTU6Ii91cGxvYWQvcGljcy9iMC80ZC9iMDRkMTE0YTViMTM5NTU3MGI1ZjkwOTFjMjUyZGQxYS5qcGciO30=', '', '2013-01-03 15:31:10', 'Penguins.jpg'),
(28, 'bcb0e104fb5a3e1b677c34d829a4805d', '1357212670', 2800, 0, 0, '1', 'foto', 63, 'delete', 'YTo3OntzOjI6ImlkIjtzOjI6IjYzIjtzOjQ6Im5hbWUiO3M6MzI6IjY2OTJhZDU4ZDY3NjE3OGM3NmQ1MWMyZWNmMWIwNzQxIjtzOjc6ImNhcHRpb24iO3M6MTA6IlR1bGlwcy5qcGciO3M6NDoic29ydCI7czo0OiIzMDAwIjtzOjY6InBhcmVudCI7czoyOiI1MiI7czo2OiJmb2xkZXIiO3M6MToiMCI7czo0OiJmb3RvIjtzOjU1OiIvdXBsb2FkL3BpY3MvNWMvNDQvNWM0NDhiMGQ1MzdiYTViY2YwNTFlOTliMWMxN2U0ODQuanBnIjt9', '', '2013-01-03 15:31:10', 'Tulips.jpg'),
(29, 'b58af95f40f0c81101e7e28bf02b0f85', '1357212689', 2900, 0, 0, '1', 'foto', 52, 'delete', 'YTo3OntzOjI6ImlkIjtzOjI6IjUyIjtzOjQ6Im5hbWUiO3M6NzoidGVzdGluZyI7czo3OiJjYXB0aW9uIjtzOjE0OiLQotC10YHRgtC40L3QsyI7czo0OiJzb3J0IjtzOjQ6IjI3MDAiO3M6NjoicGFyZW50IjtzOjE6IjAiO3M6NjoiZm9sZGVyIjtzOjE6IjEiO3M6NDoiZm90byI7czo1NToiL3VwbG9hZC9waWNzLzk4L2Y3Lzk4ZjdmMWM4ZmZjYzc0ZWZjZmFmMTM1Mzk3NTMxMTQxLmpwZyI7fQ==', '', '2013-01-03 15:31:29', 'Тестинг'),
(30, '3e147f3522672cb0182f2b4cd66bc949', '1357979737', 3000, 0, 0, '1', 'foto', 27, 'update', 'YTo3OntzOjI6ImlkIjtzOjI6IjI3IjtzOjQ6Im5hbWUiO3M6NDc6ImtpdGF5c2tpeV9wbGFuc2hldF9fbnluZV8tX25hdmlnYXRvcl9uZV91X21lbnlhIjtzOjc6ImNhcHRpb24iO3M6ODE6ItCa0LjRgtCw0LnRgdC60LjQuSDQv9C70LDQvdGI0LXRgiwg0L3Ri9C90LUgLSDQvdCw0LLQuNCz0LDRgtC+0YAg0L3QtSDRgyDQvNC10L3RjyI7czo0OiJzb3J0IjtzOjM6IjIwMCI7czo2OiJwYXJlbnQiO3M6MToiMCI7czo2OiJmb2xkZXIiO3M6MToiMSI7czo0OiJmb3RvIjtzOjA6IiI7fQ==', 'YTo3OntzOjI6ImlkIjtzOjI6IjI3IjtzOjQ6Im5hbWUiO3M6NDc6ImtpdGF5c2tpeV9wbGFuc2hldF9fbnluZV8tX25hdmlnYXRvcl9uZV91X21lbnlhIjtzOjc6ImNhcHRpb24iO3M6ODE6ItCa0LjRgtCw0LnRgdC60LjQuSDQv9C70LDQvdGI0LXRgiwg0L3Ri9C90LUgLSDQvdCw0LLQuNCz0LDRgtC+0YAg0L3QtSDRgyDQvNC10L3RjyI7czo0OiJzb3J0IjtzOjM6IjIwMCI7czo2OiJwYXJlbnQiO3M6MToiMCI7czo2OiJmb2xkZXIiO3M6MToiMSI7czo0OiJmb3RvIjtzOjU1OiIvdXBsb2FkL3BpY3MvNDYvYzUvNDZjNWNkY2NkZjZhZjE1ZjcwNWJmYWNiNTBmYTE1NTIuanBnIjt9', '2013-01-12 12:35:37', 'Китайский планшет, ныне - навигатор не у меня'),
(31, '47f83209a7437d6dd6db858b14e99e3a', '1357979748', 3100, 0, 0, '1', 'foto', 27, 'update', 'YTo3OntzOjI6ImlkIjtzOjI6IjI3IjtzOjQ6Im5hbWUiO3M6NDc6ImtpdGF5c2tpeV9wbGFuc2hldF9fbnluZV8tX25hdmlnYXRvcl9uZV91X21lbnlhIjtzOjc6ImNhcHRpb24iO3M6ODE6ItCa0LjRgtCw0LnRgdC60LjQuSDQv9C70LDQvdGI0LXRgiwg0L3Ri9C90LUgLSDQvdCw0LLQuNCz0LDRgtC+0YAg0L3QtSDRgyDQvNC10L3RjyI7czo0OiJzb3J0IjtzOjM6IjIwMCI7czo2OiJwYXJlbnQiO3M6MToiMCI7czo2OiJmb2xkZXIiO3M6MToiMSI7czo0OiJmb3RvIjtzOjU1OiIvdXBsb2FkL3BpY3MvM2UvOTMvM2U5M2FmZjAwMjBhNWZhZTEzZDRiZWY4ZGU1ZDA0YTcuanBnIjt9', 'YTo3OntzOjI6ImlkIjtzOjI6IjI3IjtzOjQ6Im5hbWUiO3M6NDc6ImtpdGF5c2tpeV9wbGFuc2hldF9fbnluZV8tX25hdmlnYXRvcl9uZV91X21lbnlhIjtzOjc6ImNhcHRpb24iO3M6ODE6ItCa0LjRgtCw0LnRgdC60LjQuSDQv9C70LDQvdGI0LXRgiwg0L3Ri9C90LUgLSDQvdCw0LLQuNCz0LDRgtC+0YAg0L3QtSDRgyDQvNC10L3RjyI7czo0OiJzb3J0IjtzOjM6IjIwMCI7czo2OiJwYXJlbnQiO3M6MToiMCI7czo2OiJmb2xkZXIiO3M6MToiMSI7czo0OiJmb3RvIjtzOjA6IiI7fQ==', '2013-01-12 12:35:48', 'Китайский планшет, ныне - навигатор не у меня'),
(32, '9172cad9e5773f5fc6cf0523fa3b3c76', '1358437889', 3200, 0, 1, '1', 'pages', 0, 'add', 'YTowOnt9', '', '2013-01-17 19:51:29', ''),
(33, 'fdbd8a47663b82f8d1f01effae1c635a', '1358437907', 3300, 0, 0, '1', 'pages', 37, 'update', 'YToxNzp7czoyOiJpZCI7czoyOiIzNyI7czo0OiJuYW1lIjtzOjQ6ImFqYXgiO3M6NzoiY2FwdGlvbiI7czo0OiJhamF4IjtzOjQ6InNvcnQiO3M6NDoiMjYwMCI7czo2OiJwYXJlbnQiO3M6MToiMCI7czo2OiJmb2xkZXIiO3M6MToiMSI7czo4OiJrZXl3b3JkcyI7czowOiIiO3M6ODoidGVtcGxhdGUiO3M6MToiNiI7czoxMToiZGV0YWlsX3RleHQiO3M6MTQ6IjxwPg0KCTExPC9wPg0KIjtzOjc6ImluX21lbnUiO3M6MToiMCI7czo5OiJodW1hbl91cmwiO3M6MToiMCI7czoxMToibm90X3Zpc2libGUiO3M6MToiMCI7czo3OiJtb2R1bGVzIjtzOjU6ImVtcHR5IjtzOjEyOiJub3RfaW5fYnJlYWQiO3M6MToiMCI7czo4OiJjYXB0aW9uMiI7czowOiIiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjA6IiI7czo4OiJyZWRpcmVjdCI7czowOiIiO30=', 'YToxNzp7czoyOiJpZCI7czoyOiIzNyI7czo0OiJuYW1lIjtzOjQ6ImFqYXgiO3M6NzoiY2FwdGlvbiI7czo0OiJhamF4IjtzOjQ6InNvcnQiO3M6NDoiMjYwMCI7czo2OiJwYXJlbnQiO3M6MToiMCI7czo2OiJmb2xkZXIiO3M6MToiMSI7czo4OiJrZXl3b3JkcyI7czowOiIiO3M6ODoidGVtcGxhdGUiO3M6MToiNiI7czoxMToiZGV0YWlsX3RleHQiO3M6MDoiIjtzOjc6ImluX21lbnUiO3M6MToiMCI7czo5OiJodW1hbl91cmwiO3M6MToiMCI7czoxMToibm90X3Zpc2libGUiO3M6MToiMCI7czo3OiJtb2R1bGVzIjtzOjU6ImVtcHR5IjtzOjEyOiJub3RfaW5fYnJlYWQiO3M6MToiMCI7czo4OiJjYXB0aW9uMiI7czowOiIiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjA6IiI7czo4OiJyZWRpcmVjdCI7czowOiIiO30=', '2013-01-17 19:51:47', 'ajax'),
(34, 'be1b0b1a888169d563e9ced1c2339ed7', '1358437924', 3400, 0, 0, '1', 'pages', 37, 'update', 'YToxNzp7czoyOiJpZCI7czoyOiIzNyI7czo0OiJuYW1lIjtzOjQ6ImFqYXgiO3M6NzoiY2FwdGlvbiI7czo0OiJhamF4IjtzOjQ6InNvcnQiO3M6NDoiMjYwMCI7czo2OiJwYXJlbnQiO3M6MToiMCI7czo2OiJmb2xkZXIiO3M6MToiMSI7czo4OiJrZXl3b3JkcyI7czowOiIiO3M6ODoidGVtcGxhdGUiO3M6MToiNiI7czoxMToiZGV0YWlsX3RleHQiO3M6MDoiIjtzOjc6ImluX21lbnUiO3M6MToiMCI7czo5OiJodW1hbl91cmwiO3M6MToiMCI7czoxMToibm90X3Zpc2libGUiO3M6MToiMCI7czo3OiJtb2R1bGVzIjtzOjU6ImVtcHR5IjtzOjEyOiJub3RfaW5fYnJlYWQiO3M6MToiMCI7czo4OiJjYXB0aW9uMiI7czowOiIiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjA6IiI7czo4OiJyZWRpcmVjdCI7czowOiIiO30=', 'YToxNzp7czoyOiJpZCI7czoyOiIzNyI7czo0OiJuYW1lIjtzOjQ6ImFqYXgiO3M6NzoiY2FwdGlvbiI7czo0OiJhamF4IjtzOjQ6InNvcnQiO3M6NDoiMjYwMCI7czo2OiJwYXJlbnQiO3M6MToiMCI7czo2OiJmb2xkZXIiO3M6MToiMSI7czo4OiJrZXl3b3JkcyI7czowOiIiO3M6ODoidGVtcGxhdGUiO3M6MToiNiI7czoxMToiZGV0YWlsX3RleHQiO3M6MTQ6IjxwPg0KCTExPC9wPg0KIjtzOjc6ImluX21lbnUiO3M6MToiMCI7czo5OiJodW1hbl91cmwiO3M6MToiMCI7czoxMToibm90X3Zpc2libGUiO3M6MToiMCI7czo3OiJtb2R1bGVzIjtzOjU6ImVtcHR5IjtzOjEyOiJub3RfaW5fYnJlYWQiO3M6MToiMCI7czo4OiJjYXB0aW9uMiI7czowOiIiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjA6IiI7czo4OiJyZWRpcmVjdCI7czowOiIiO30=', '2013-01-17 19:52:04', 'ajax'),
(35, 'b9b8944255814bb8bd4e7b065a1dd05a', '1358437962', 3500, 0, 0, '1', 'modules', 16, 'add', 'YTo2OntzOjI6ImlkIjtzOjI6IjE2IjtzOjQ6Im5hbWUiO3M6MTE6ImNhcnRfc3RhdHVzIjtzOjc6ImNhcHRpb24iO3M6MTE6ImNhcnRfc3RhdHVzIjtzOjQ6InNvcnQiO3M6NDoiMTYwMCI7czo2OiJwYXJlbnQiO3M6MToiMCI7czo2OiJmb2xkZXIiO3M6MToiMCI7fQ==', '', '2013-01-17 19:52:42', 'cart_status'),
(36, '67476a09d45e1b7909ec7f150108b721', '1358437977', 3600, 0, 0, '1', 'modules', 16, 'update', 'YTo2OntzOjI6ImlkIjtzOjI6IjE2IjtzOjQ6Im5hbWUiO3M6MTY6ImFqYXhfY2FydF9zdGF0dXMiO3M6NzoiY2FwdGlvbiI7czoxNjoiYWpheF9jYXJ0X3N0YXR1cyI7czo0OiJzb3J0IjtzOjQ6IjE2MDAiO3M6NjoicGFyZW50IjtzOjE6IjAiO3M6NjoiZm9sZGVyIjtzOjE6IjAiO30=', 'YTo2OntzOjI6ImlkIjtzOjI6IjE2IjtzOjQ6Im5hbWUiO3M6MTE6ImNhcnRfc3RhdHVzIjtzOjc6ImNhcHRpb24iO3M6MTE6ImNhcnRfc3RhdHVzIjtzOjQ6InNvcnQiO3M6NDoiMTYwMCI7czo2OiJwYXJlbnQiO3M6MToiMCI7czo2OiJmb2xkZXIiO3M6MToiMCI7fQ==', '2013-01-17 19:52:57', 'ajax_cart_status'),
(37, 'c04db9734c48598cec23d3794aa15a4f', '1358437983', 3700, 0, 0, '1', 'modules', 17, 'add', 'YTo2OntzOjI6ImlkIjtzOjI6IjE3IjtzOjQ6Im5hbWUiO3M6MTM6ImFqYXhfY2FydF9hZGQiO3M6NzoiY2FwdGlvbiI7czoxMzoiYWpheF9jYXJ0X2FkZCI7czo0OiJzb3J0IjtzOjQ6IjE3MDAiO3M6NjoicGFyZW50IjtzOjE6IjAiO3M6NjoiZm9sZGVyIjtzOjE6IjAiO30=', '', '2013-01-17 19:53:03', 'ajax_cart_add'),
(38, '66b84251b670479c7989c07c2add468c', '1358437988', 3800, 0, 0, '1', 'modules', 17, 'update', 'YTo2OntzOjI6ImlkIjtzOjI6IjE3IjtzOjQ6Im5hbWUiO3M6MTM6ImFqYXhfY2FydF9hZGQiO3M6NzoiY2FwdGlvbiI7czoxMzoiYWpheF9jYXJ0X2FkZCI7czo0OiJzb3J0IjtzOjQ6IjE3MDAiO3M6NjoicGFyZW50IjtzOjE6IjAiO3M6NjoiZm9sZGVyIjtzOjE6IjAiO30=', 'YTo2OntzOjI6ImlkIjtzOjI6IjE3IjtzOjQ6Im5hbWUiO3M6MTM6ImFqYXhfY2FydF9hZGQiO3M6NzoiY2FwdGlvbiI7czoxMzoiYWpheF9jYXJ0X2FkZCI7czo0OiJzb3J0IjtzOjQ6IjE3MDAiO3M6NjoicGFyZW50IjtzOjE6IjAiO3M6NjoiZm9sZGVyIjtzOjE6IjAiO30=', '2013-01-17 19:53:08', 'ajax_cart_add'),
(39, '937387016336c7cc4edac631c268333a', '1358438004', 3900, 0, 0, '1', 'pages', 38, 'add', 'YToxNzp7czoyOiJpZCI7czoyOiIzOCI7czo0OiJuYW1lIjtzOjE2OiJhamF4X2NhcnRfc3RhdHVzIjtzOjc6ImNhcHRpb24iO3M6MTY6ImFqYXhfY2FydF9zdGF0dXMiO3M6NDoic29ydCI7czo0OiIyNzAwIjtzOjY6InBhcmVudCI7czoyOiIzNyI7czo2OiJmb2xkZXIiO3M6MToiMCI7czo4OiJrZXl3b3JkcyI7czowOiIiO3M6ODoidGVtcGxhdGUiO3M6MToiNSI7czoxMToiZGV0YWlsX3RleHQiO3M6MDoiIjtzOjc6ImluX21lbnUiO3M6MToiMCI7czo5OiJodW1hbl91cmwiO3M6MToiMCI7czoxMToibm90X3Zpc2libGUiO3M6MToiMCI7czo3OiJtb2R1bGVzIjtzOjE2OiJhamF4X2NhcnRfc3RhdHVzIjtzOjEyOiJub3RfaW5fYnJlYWQiO3M6MToiMCI7czo4OiJjYXB0aW9uMiI7czowOiIiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjA6IiI7czo4OiJyZWRpcmVjdCI7czowOiIiO30=', '', '2013-01-17 19:53:24', 'ajax_cart_status'),
(40, 'd3c57d287b5371236269d3f20eeb34c8', '1358438014', 4000, 0, 0, '1', 'pages', 39, 'add', 'YToxNzp7czoyOiJpZCI7czoyOiIzOSI7czo0OiJuYW1lIjtzOjEzOiJhamF4X2NhcnRfYWRkIjtzOjc6ImNhcHRpb24iO3M6MTM6ImFqYXhfY2FydF9hZGQiO3M6NDoic29ydCI7czo0OiIyODAwIjtzOjY6InBhcmVudCI7czoyOiIzNyI7czo2OiJmb2xkZXIiO3M6MToiMCI7czo4OiJrZXl3b3JkcyI7czowOiIiO3M6ODoidGVtcGxhdGUiO3M6MToiNSI7czoxMToiZGV0YWlsX3RleHQiO3M6MDoiIjtzOjc6ImluX21lbnUiO3M6MToiMCI7czo5OiJodW1hbl91cmwiO3M6MToiMCI7czoxMToibm90X3Zpc2libGUiO3M6MToiMCI7czo3OiJtb2R1bGVzIjtzOjEzOiJhamF4X2NhcnRfYWRkIjtzOjEyOiJub3RfaW5fYnJlYWQiO3M6MToiMCI7czo4OiJjYXB0aW9uMiI7czowOiIiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjA6IiI7czo4OiJyZWRpcmVjdCI7czowOiIiO30=', '', '2013-01-17 19:53:34', 'ajax_cart_add'),
(41, '0de0ba28ee94b2cede1c5b133b6364b4', '1358440470', 4100, 0, 0, '1', 'news_files', 1, 'update', 'YTo4OntzOjI6ImlkIjtzOjE6IjEiO3M6NDoibmFtZSI7czoyOToiY2hhbmdlbG9nX29kbm95X2l6X3ZlcnNpeV9jbXMiO3M6NzoiY2FwdGlvbiI7czo0MjoiQ2hhbmdlbG9nINC+0LTQvdC+0Lkg0LjQtyDQstC10YDRgdC40LkgQ01TIjtzOjQ6InNvcnQiO3M6MzoiMTAwIjtzOjY6InBhcmVudCI7czoxOiIwIjtzOjY6ImZvbGRlciI7czoxOiIwIjtzOjQ6ImZpbGUiO3M6NTY6Ii91cGxvYWQvZmlsZXMvNzIvNWQvNzI1ZDIyZmNiZDc4Y2UzNmI3NWFkYzFkMTA5ZDZmMTIudHh0IjtzOjc6Im5ld3NfaWQiO3M6MjoiNTMiO30=', 'YTo4OntzOjI6ImlkIjtzOjE6IjEiO3M6NDoibmFtZSI7czoyOToiY2hhbmdlbG9nX29kbm95X2l6X3ZlcnNpeV9jbXMiO3M6NzoiY2FwdGlvbiI7czo0MjoiQ2hhbmdlbG9nINC+0LTQvdC+0Lkg0LjQtyDQstC10YDRgdC40LkgQ01TIjtzOjQ6InNvcnQiO3M6MzoiMTAwIjtzOjY6InBhcmVudCI7czoxOiIwIjtzOjY6ImZvbGRlciI7czoxOiIwIjtzOjQ6ImZpbGUiO3M6MDoiIjtzOjc6Im5ld3NfaWQiO3M6MjoiNTMiO30=', '2013-01-17 20:34:30', 'Changelog одной из версий CMS');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE IF NOT EXISTS `modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET cp1251 NOT NULL,
  `caption` text CHARACTER SET cp1251 NOT NULL,
  `sort` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `folder` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `caption`, `sort`, `parent`, `folder`) VALUES
(1, 'empty', 'Текстовая страница', 100, 0, 0),
(2, 'feedback', 'Обратная связь', 200, 0, 0),
(3, 'news', 'Новости', 300, 0, 0),
(4, 'main', 'Главная страница', 400, 0, 0),
(5, 'photo', 'Фотоальбом', 500, 0, 0),
(6, 'catalog', 'Каталог', 600, 0, 0),
(7, 'cart', 'Корзина', 700, 0, 0),
(8, 'cabinet', 'Кабинет', 800, 0, 0),
(9, 'reg_form', 'Регистрация', 900, 0, 0),
(10, 'rec_pass', 'Восстановление пароля', 1000, 0, 0),
(11, 'rec_pass_complete', 'Восстановление пароля завершение', 1100, 0, 0),
(12, 'tags_filter', 'Фильтр по тэгам', 1200, 0, 0),
(13, 'search', 'Поиск', 1300, 0, 0),
(14, 'item_find', 'Фильтр по каталогу', 1400, 0, 0),
(15, 'rss', 'RSS', 1500, 0, 0),
(16, 'ajax_cart_status', 'ajax_cart_status', 1600, 0, 0),
(17, 'ajax_cart_add', 'ajax_cart_add', 1700, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET cp1251 NOT NULL,
  `caption` text CHARACTER SET cp1251 NOT NULL,
  `sort` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `folder` int(11) NOT NULL,
  `preview_text` longtext CHARACTER SET cp1251 NOT NULL,
  `detail_text` longtext CHARACTER SET cp1251 NOT NULL,
  `caption2` text CHARACTER SET cp1251 NOT NULL,
  `description` longtext CHARACTER SET cp1251 NOT NULL,
  `keywords` longtext CHARACTER SET cp1251 NOT NULL,
  `sdate` date NOT NULL,
  `foto` text CHARACTER SET cp1251 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `name`, `caption`, `sort`, `parent`, `folder`, `preview_text`, `detail_text`, `caption2`, `description`, `keywords`, `sdate`, `foto`) VALUES
(53, 'testovaya_novost_.', 'Тестовая новость.', 100, 0, 0, 'Это первая тестовая новость - внутри просто копипаста из моего с другом блога совместного (за авторством друга) - ничего личного :)', '<p>\r\n	<strong>Сравнение VIA AC&#39;97 с ISA SB 16-32:</strong><br />\r\n	При включенном эквалайзере ISA SB звучит куда хуже, чем встроенная звуковуха. Но стоит эквалайзер вырубить и поиграться с настройками тембра звучания (а таковое в старых звуковухах есть), можно вынести неплохой звучок. Конечно, это всё узкая шина и 16 бит, и звук получается как бы &quot;грязным&quot;. Но слушать можно. Пердежа на SB при грамотной настройке значительно меньше, чем на АС97.<br />\r\n	SB 16 и SB 16 Pro звучат почти одинаково.<br />\r\n	SB 32 PnP звучит в чём-то даже лучше встроенной АС97, у него много плюх предусмотрено самой виндой по дефолту. Иногда всё равно слышно, как срезаются частично высокие и низкие. Но это на мой взгляд, конечно. На эксодусе всем звуковухам пришлось несладко, все пердели и хрипели.<br />\r\n	<br />\r\n	<strong>ESS 688</strong> - это что-то с чем-то. Пока не вкючена музыка, фоновый шум такой, что можно сойти с ума. На слух более-менее сносно, если не врубать что-то совсем тяжёлое. Высокие срезаны, низкие пердят.<br />\r\n	ESS 1868 - фоновый шум ничуть не лучше предыдущего. И это на самой низкой громкости. Звучит на слух чуть лучше предшественника и хотя бы усиленно не гадит в низком на моторхэде. Эксдодус в этот раз так сильно не действовал на звуковуху, что радует. Прогресс налицо. Но пердёж есть, и никуда от него денешься. Куда девается фоновый шум в музыке? В песнях бывает тишина иногда, и там шума нет, в системе он есть всегда.<br />\r\n	На фоне VIA AC97 обе карточки проиграли.<br />\r\n	<br />\r\n	<strong>ISA AWE 64 </strong>таки завернула VIA AC97, пусть и с незначительным перевесом, в основном благодаря настраиваемому руками тембру звучания. Шум был какой-то, правда, но он тихий, можно не заметить с первого раза. Звучит вполне себе ничего, если быть не слишком привередливым к качеству. До современных не дотягивает, конечно же, нет смысла рвать жопу и искать переходники PCI-ISA для того, чтобы воткнуть туда овцу 64....</p>\r\n<p>\r\n	<a href="http://old-hard.ru/articles/zvookavooha">Продолжение следует - тут.</a></p>\r\n', '', '', '', '2012-09-06', ''),
(54, 'esli_vy_chitaete_eti_stroki_-_cms_zapuschena_', 'Если вы читаете эти строки - CMS запущена!', 200, 0, 0, 'Сообщение о том, что... да. HolyCMS 3.0 запущена! Но внутри текст не в тему...', '<p>\r\n	<strong>GeForce Quadro4 900 XGL часть 1</strong></p>\r\n<p>\r\n	к, сегодняшний тест необычен тем, что в руки попалась видеокарта неигрового назначения. Серия Quadro вообще предназначена для работы в 3D-приложениях, потестить такую карточку на играх было бы прелестнейше :3 И оно случилось пока что только на примере третьего дума, но вскоре произойдёт и на других играх, как только мои руки доберутся до установщиков (а их ещё надо скачать).</p>\r\n<p>\r\n	<a href="http://old-hard.ru/articles/1007">Далее читать на нашем с другом сайте old-hard.ru</a></p>\r\n', '', '', '', '2012-09-29', '/upload/pics/9f/fb/9ffb31df7e7a1623decf3afa31ea4cb3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `news_files`
--

CREATE TABLE IF NOT EXISTS `news_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8 NOT NULL,
  `caption` text CHARACTER SET utf8 NOT NULL,
  `sort` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `folder` int(11) NOT NULL,
  `file` text CHARACTER SET utf8 NOT NULL,
  `news_id` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `news_files`
--

INSERT INTO `news_files` (`id`, `name`, `caption`, `sort`, `parent`, `folder`, `file`, `news_id`) VALUES
(1, 'changelog_odnoy_iz_versiy_cms', 'Changelog одной из версий CMS', 100, 0, 0, '/upload/files/72/5d/725d22fcbd78ce36b75adc1d109d6f12.txt', '53'),
(3, '1111', '1111', 300, 0, 0, '', '54'),
(2, 'malen_kaya_koalla', 'Маленькая коалла', 200, 0, 0, '/upload/files/eb/45/eb45425c3ad46cb45ea4c101fdb0b4de.jpg', '53');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE IF NOT EXISTS `options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET cp1251 NOT NULL,
  `caption` text CHARACTER SET cp1251 NOT NULL,
  `sort` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `folder` int(11) NOT NULL,
  `hvalue` text CHARACTER SET cp1251 NOT NULL,
  `options_class` text CHARACTER SET cp1251 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `name`, `caption`, `sort`, `parent`, `folder`, `hvalue`, `options_class`) VALUES
(1, 'site_title', 'Название сайта', 100, 14, 0, 'Название сайта', '1'),
(2, 'keywords', 'Ключевые слова', 200, 14, 0, '', '2'),
(14, 'seo', 'SEO', 800, 0, 1, '', ''),
(6, 'description', 'description', 300, 14, 0, '', '2'),
(7, 'f_bread', 'Самая первая хлебная крошка', 400, 0, 0, '<p>\r\n	Главная</p>\r\n', '1'),
(11, 'counters', 'Счетчики', 10, 0, 0, '<div border=1>\r\nсчетчики\r\n</div>', '2'),
(15, 'copyright', 'Копирайты', 900, 0, 0, '© Копирайт', '1'),
(16, 'phones_top', 'Телефоны сверху', 1000, 0, 0, '<div border="1" style="float:right;">\r\n	телефоны сверху</div>\r\n', '3'),
(17, 'phones_bottom', 'Телефоны снизу', 1100, 0, 0, '<div border="1">\r\n	телефоны снизу</div>\r\n', '3'),
(18, 'slogan', 'Слоган', 1200, 0, 0, 'СЛОГАН', '1'),
(19, 'mail', 'Адрес электронной почты', 1300, 0, 0, 'demo@mail.ru', '1'),
(20, 'header_code', 'Текст в конце header', 1400, 14, 0, '', '2'),
(21, 'footer_code', 'Текст в конце footer', 1500, 14, 0, '', '2');

-- --------------------------------------------------------

--
-- Table structure for table `options_class`
--

CREATE TABLE IF NOT EXISTS `options_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET cp1251 NOT NULL,
  `caption` text CHARACTER SET cp1251 NOT NULL,
  `sort` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `folder` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `options_class`
--

INSERT INTO `options_class` (`id`, `name`, `caption`, `sort`, `parent`, `folder`) VALUES
(1, 'text', 'Текстовая строка', 100, 0, 0),
(2, 'text2', 'Текстовой редактор', 200, 0, 0),
(3, 'wis', 'Визуальный редактор', 300, 0, 0),
(4, 'check', 'Чекбокс', 400, 0, 0),
(5, 'pic', 'Картинка', 500, 0, 0),
(6, 'file', 'Файл', 600, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET cp1251 NOT NULL,
  `caption` text CHARACTER SET cp1251 NOT NULL,
  `sort` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `folder` int(11) NOT NULL,
  `keywords` text CHARACTER SET cp1251 NOT NULL,
  `template` int(11) NOT NULL,
  `detail_text` text CHARACTER SET cp1251 NOT NULL,
  `in_menu` smallint(6) NOT NULL,
  `human_url` smallint(6) NOT NULL,
  `not_visible` smallint(6) NOT NULL,
  `modules` text CHARACTER SET cp1251 NOT NULL,
  `not_in_bread` smallint(6) NOT NULL,
  `caption2` text CHARACTER SET cp1251 NOT NULL,
  `description` text CHARACTER SET cp1251 NOT NULL,
  `redirect` text CHARACTER SET cp1251 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `caption`, `sort`, `parent`, `folder`, `keywords`, `template`, `detail_text`, `in_menu`, `human_url`, `not_visible`, `modules`, `not_in_bread`, `caption2`, `description`, `redirect`) VALUES
(1, 'index', 'Главная', 10, 0, 1, '', 1, '<p>\r\n	Текст первой страницы.</p>\r\n', 1, 1, 0, 'main', 0, '', '', ''),
(2, 'e404', '404', 1600, 0, 1, '', 1, '<p>\r\n	Ошибка 404. Блин.&nbsp;</p>\r\n', 0, 0, 0, 'empty', 1, '', '', ''),
(3, 'feedback', 'Обратная связь', 300, 0, 1, '', 1, '<p>\r\n	Оставьти своё сообщение - и мы вам обязательно перезвоним.</p>\r\n', 1, 0, 0, 'feedback', 0, '', '', ''),
(4, 'news', 'Новости', 200, 0, 1, '', 1, '', 1, 1, 0, 'news', 0, '', '', ''),
(28, 'pustaya_stranica_-_test_nasledovaniya_shablonov', 'Пустая страница - тест наследования шаблонов', 1700, 0, 1, '', 2, '<p>\r\n	Текст пустой страницы.</p>\r\n', 1, 0, 0, 'empty', 0, '', '', ''),
(17, 'catalog', 'Каталог', 100, 0, 1, '', 1, '', 1, 1, 0, 'catalog', 0, '', '', ''),
(15, 'photo', 'Фотоальбом', 150, 0, 1, '', 1, '', 1, 1, 0, 'photo', 0, '', '', ''),
(29, 'vlozhennaya_v_pustuyu_stranica', 'Вложенная в пустую страница', 1800, 28, 1, '', 0, '<p>\r\n	Продолжение теста наследования шаблонов.</p>\r\n', 1, 0, 0, 'empty', 0, '', '', ''),
(30, 'papka_3go_urovnya_-_nasledovanie_', 'Папка 3го уровня - наследование ', 1900, 29, 1, '', 0, '<p>\r\n	Текст страницы наследования наследования наследования шаблона!</p>\r\n', 1, 0, 0, 'empty', 0, '', '', ''),
(21, 'cart', 'Корзина', 700, 0, 1, '', 0, '', 0, 0, 0, 'cart', 0, '', '', ''),
(22, 'cabinet', 'Кабинет', 1100, 0, 1, '', 0, '', 1, 0, 0, 'cabinet', 0, '', '', ''),
(23, 'reg', 'Регистрация', 1200, 0, 1, '', 0, '', 1, 0, 0, 'reg_form', 0, '', '', ''),
(24, 'recovery_pass', 'Восстановление пароля', 1400, 0, 1, '', 0, '', 0, 0, 0, 'rec_pass', 0, '', '', ''),
(25, 'recovery_pass_complete', 'Восстановление пароля - завершение', 1300, 0, 1, '', 0, '', 0, 0, 0, 'rec_pass_complete', 0, '', '', ''),
(26, 'tags_filter', 'Фильтр по тэгам', 1500, 0, 1, '', 0, '', 0, 1, 0, 'tags_filter', 0, '', '', ''),
(31, 'papka_3go_urovnya_-_ne_nasledovanie', 'Папка 3го уровня - НЕ наследование', 2000, 29, 1, '', 1, '<p>\r\n	А тут резко обычный шаблон.</p>\r\n', 1, 0, 0, 'empty', 0, '', '', ''),
(32, 'papka-ssylka_na_sayte_siteszone', 'Папка-ссылка на сайте siteszone', 2100, 29, 1, '', 0, '', 1, 0, 0, 'empty', 0, '', '', 'http://www.siteszone.ru'),
(33, 'stranica', 'страница', 2200, 30, 0, '', 0, '', 0, 0, 0, 'empty', 0, '', '', ''),
(34, 'search', 'Поиск', 2300, 0, 1, '', 0, '', 0, 0, 0, 'search', 0, '', '', ''),
(35, 'item_find', 'Поиск по каталогу', 2400, 0, 1, '', 0, '', 1, 0, 0, 'item_find', 0, '', '', ''),
(36, 'rss', 'RSS', 2500, 0, 1, '', 6, '', 0, 0, 0, 'rss', 0, '', '', ''),
(37, 'ajax', 'ajax', 2600, 0, 1, '', 6, '', 0, 0, 0, 'empty', 0, '', '', ''),
(38, 'ajax_cart_status', 'ajax_cart_status', 2700, 37, 0, '', 5, '', 0, 0, 0, 'ajax_cart_status', 0, '', '', ''),
(39, 'ajax_cart_add', 'ajax_cart_add', 2800, 37, 0, '', 5, '', 0, 0, 0, 'ajax_cart_add', 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `site_users`
--

CREATE TABLE IF NOT EXISTS `site_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET cp1251 NOT NULL,
  `caption` text CHARACTER SET cp1251 NOT NULL,
  `sort` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `folder` int(11) NOT NULL,
  `fio` text CHARACTER SET cp1251 NOT NULL,
  `email` text CHARACTER SET cp1251 NOT NULL,
  `address` longtext CHARACTER SET cp1251 NOT NULL,
  `uid` text CHARACTER SET cp1251 NOT NULL,
  `password` text CHARACTER SET cp1251 NOT NULL,
  `uic_rec` text CHARACTER SET cp1251 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `site_users`
--


-- --------------------------------------------------------

--
-- Table structure for table `system_cache`
--

CREATE TABLE IF NOT EXISTS `system_cache` (
  `id` varchar(255) CHARACTER SET cp1251 NOT NULL,
  `value` text NOT NULL,
  `time` int(11) NOT NULL,
  `module` text CHARACTER SET cp1251 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_cache`
--


-- --------------------------------------------------------

--
-- Table structure for table `system_data_block`
--

CREATE TABLE IF NOT EXISTS `system_data_block` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext CHARACTER SET cp1251 NOT NULL,
  `bgroup` int(11) NOT NULL,
  `caption` text CHARACTER SET cp1251 NOT NULL,
  `sort` int(11) NOT NULL,
  `fav` tinyint(1) NOT NULL,
  `hide_folders` tinyint(1) NOT NULL,
  `hide_folders2` tinyint(1) NOT NULL,
  `hide_code` tinyint(1) NOT NULL,
  `childs` text NOT NULL,
  `bind_cache` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`(255))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `system_data_block`
--

INSERT INTO `system_data_block` (`id`, `name`, `bgroup`, `caption`, `sort`, `fav`, `hide_folders`, `hide_folders2`, `hide_code`, `childs`, `bind_cache`) VALUES
(12, 'templates', 1, 'Шаблоны', 600, 0, 1, 0, 0, '', ''),
(11, 'pages', 15, 'Страницы', 300, 1, 0, 0, 0, '', ''),
(8, 'users', 1, 'Пользователи', 200, 0, 1, 0, 1, '', ''),
(7, 'options', 1, 'Настройки', 100, 0, 0, 1, 0, '', ''),
(17, 'modules', 1, 'Модули сайта', 800, 0, 1, 0, 0, '', ''),
(24, 'cms_options', 1, 'Настройки админки', 1200, 0, 1, 0, 0, '', ''),
(27, 'options_class', 1, 'Типы полей настроек сайта', 1500, 0, 1, 0, 0, '', ''),
(28, 'news', 15, 'Новости', 1700, 1, 1, 1, 1, 'news_files;id;news_id', ''),
(36, 'banners', 15, 'Баннеры', 1800, 1, 1, 1, 1, '', ''),
(37, 'catalog', 15, 'Каталог', 1900, 1, 0, 0, 1, '', ''),
(38, 'foto', 15, 'Фотоальбом', 1600, 1, 0, 0, 1, '', ''),
(39, 'site_users', 15, 'Зарегистрировавшиеся пользователи', 2000, 0, 1, 0, 1, '', ''),
(40, 'journal', 1, 'Журнал', 2100, 0, 1, 1, 1, '', ''),
(43, 'system_user_groups', 1, 'Группы пользователей', 2300, 0, 1, 1, 0, '', ''),
(44, 'news_files', 15, 'Файлы для новостей', 2400, 0, 1, 1, 1, '', 'news');

-- --------------------------------------------------------

--
-- Table structure for table `system_data_block_fields`
--

CREATE TABLE IF NOT EXISTS `system_data_block_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_block` int(11) NOT NULL,
  `name` tinytext CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `caption` tinytext CHARACTER SET cp1251 NOT NULL,
  `type` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `required` tinyint(4) NOT NULL,
  `multiple` tinyint(4) NOT NULL,
  `dgroup` int(11) NOT NULL,
  `owner_type` tinyint(4) NOT NULL,
  `add_values` text CHARACTER SET cp1251 NOT NULL,
  `not_list` tinyint(4) NOT NULL,
  `admin_only` tinyint(4) NOT NULL,
  `meta` tinyint(4) NOT NULL,
  `not_element` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=193 ;

--
-- Dumping data for table `system_data_block_fields`
--

INSERT INTO `system_data_block_fields` (`id`, `data_block`, `name`, `caption`, `type`, `sort`, `required`, `multiple`, `dgroup`, `owner_type`, `add_values`, `not_list`, `admin_only`, `meta`, `not_element`) VALUES
(24, 8, 'email', 'E-mail', 1, 900, 0, 0, 0, 0, '', 0, 0, 0, 0),
(55, 8, 'block_control', 'Имеет доступ к настройкам блоков', 7, 2600, 0, 0, 0, 0, '', 0, 0, 0, 0),
(54, 11, 'modules', 'Модуль сайта', 15, 1410, 0, 0, 0, 1, 'modules;name;caption', 0, 1, 0, 0),
(78, 8, 'pass', 'Пароль', 13, 120, 0, 0, 0, 0, '', 0, 0, 0, 0),
(18, 8, 'login', 'Логин', 1, 100, 1, 0, 0, 0, '', 0, 0, 0, 0),
(51, 11, 'human_url', 'ЧПУ', 7, 1900, 0, 0, 0, 1, '', 1, 1, 0, 0),
(52, 11, 'not_visible', 'Невидимость', 7, 1420, 0, 0, 0, 1, '', 0, 0, 0, 0),
(30, 7, 'hvalue', 'Значение', 5, 200, 0, 0, 0, 0, '', 1, 0, 0, 0),
(46, 11, 'keywords', 'Ключевые слова', 1, 1400, 0, 0, 0, 1, '', 1, 0, 1, 0),
(47, 11, 'template', 'Шаблон', 15, 1400, 0, 0, 0, 1, 'templates;id;caption', 0, 0, 0, 0),
(49, 11, 'detail_text', 'Текст страницы', 5, 2500, 0, 0, 0, 1, '', 1, 0, 0, 0),
(50, 11, 'in_menu', 'Попадает в меню', 7, 1800, 0, 0, 0, 1, '', 0, 0, 0, 0),
(72, 11, 'not_in_bread', 'НЕ попадает в навигационную строку', 7, 1850, 0, 0, 0, 1, '', 1, 0, 0, 0),
(86, 24, 'opt_block', 'Блок', 1, 4500, 0, 0, 0, 0, 'system_data_block;id;caption', 0, 0, 0, 0),
(87, 24, 'opt_sort', 'Сортировка', 1, 4600, 0, 0, 0, 0, '', 0, 0, 0, 0),
(88, 24, 'opt_by', 'Направление сортировки', 1, 4700, 0, 0, 0, 0, '', 0, 0, 0, 0),
(89, 24, 'opt_count', 'Число элементов', 1, 4800, 0, 0, 0, 0, '', 0, 0, 0, 0),
(91, 11, 'caption2', 'title', 1, 10, 0, 0, 0, 1, '', 1, 0, 1, 0),
(92, 11, 'description', 'description', 4, 20, 0, 0, 0, 1, '', 1, 0, 1, 0),
(99, 11, 'redirect', 'Переход вместо страницы', 1, 2450, 0, 0, 0, 1, '', 1, 0, 0, 0),
(104, 7, 'options_class', 'options_class', 15, 5600, 0, 0, 0, 0, 'options_class;id;caption', 0, 0, 0, 0),
(117, 28, 'caption2', 'Заголовок', 1, 6500, 0, 0, 0, 1, '', 1, 0, 1, 0),
(116, 28, 'detail_text', 'Детальный текст', 5, 6400, 0, 0, 0, 0, '', 1, 0, 0, 0),
(109, 35, 'pic2', 'pic2', 6, 6100, 0, 0, 0, 0, '', 0, 0, 0, 0),
(139, 37, 'other', 'Подобные товары', 17, 8700, 0, 0, 0, 0, 'catalog;id;caption', 1, 0, 0, 0),
(115, 28, 'preview_text', 'Краткий текст', 4, 6300, 0, 0, 0, 0, '', 1, 0, 0, 0),
(140, 28, 'sdate', 'Дата', 11, 10, 0, 0, 0, 0, '', 0, 0, 0, 0),
(118, 28, 'description', 'Description', 4, 6600, 0, 0, 0, 1, '', 1, 0, 1, 0),
(119, 28, 'keywords', 'Ключевые слова', 4, 6700, 0, 0, 0, 1, '', 1, 0, 1, 0),
(120, 36, 'url', 'Ссылка', 1, 6800, 0, 0, 0, 0, '', 0, 0, 0, 0),
(121, 36, 'foto', 'Картинка', 6, 6900, 0, 0, 0, 0, '', 0, 0, 0, 0),
(122, 37, 'detail_text', 'Детальный текст', 5, 7000, 0, 0, 0, 0, '', 1, 0, 0, 0),
(123, 37, 'cost', 'Цена', 3, 7100, 0, 0, 0, 0, '', 0, 0, 0, 0),
(124, 37, 'foto', 'Фото', 6, 7200, 0, 0, 0, 0, '', 0, 0, 0, 0),
(125, 37, 'foto_multi', 'Дополнительные фото', 18, 7300, 0, 0, 0, 0, '', 1, 0, 0, 0),
(126, 37, 'spec1', 'Спец-предложение', 7, 7400, 0, 0, 0, 0, '', 0, 0, 0, 0),
(127, 38, 'foto', 'Фото', 6, 7500, 0, 0, 0, 1, '', 0, 0, 0, 0),
(128, 39, 'fio', 'ФИО', 1, 7600, 0, 0, 0, 0, '', 0, 0, 0, 0),
(155, 39, 'uic_rec', 'uic_rec', 1, 10000, 0, 0, 0, 0, '', 0, 0, 0, 0),
(130, 39, 'email', 'Электронная почта', 1, 7800, 0, 0, 0, 0, '', 0, 0, 0, 0),
(154, 39, 'password', 'Пароль', 13, 9900, 0, 0, 0, 0, '', 0, 0, 0, 0),
(133, 39, 'address', 'Адрес доставки', 4, 8100, 0, 0, 0, 0, '', 0, 0, 0, 0),
(135, 39, 'uid', 'uid', 1, 8300, 0, 0, 0, 0, '', 0, 0, 0, 0),
(136, 37, 'caption2', 'Заголовок', 1, 8400, 0, 0, 0, 1, '', 1, 0, 1, 0),
(137, 37, 'description', 'Description', 4, 8500, 0, 0, 0, 1, '', 1, 0, 1, 0),
(138, 37, 'keywords', 'Ключевые слова', 4, 8600, 0, 0, 0, 1, '', 1, 0, 1, 0),
(141, 40, 'user_id', 'user_id', 15, 8800, 0, 0, 0, 0, 'users;id;login', 0, 0, 0, 0),
(142, 40, 'block_name', 'block_name', 1, 8900, 0, 0, 0, 0, '', 0, 0, 0, 0),
(143, 40, 'item_id', 'item_id', 2, 9000, 0, 0, 0, 0, '', 0, 0, 0, 0),
(144, 40, 'action', 'action', 1, 9100, 0, 0, 0, 0, '', 0, 0, 0, 0),
(148, 40, 'data_before', 'data_before', 4, 9300, 0, 0, 0, 0, '', 0, 0, 0, 0),
(147, 40, 'data_after', 'data_after', 4, 9200, 0, 0, 0, 0, '', 0, 0, 0, 0),
(149, 40, 'folder', 'folder', 7, 9400, 0, 0, 0, 0, '', 0, 0, 0, 0),
(150, 40, 'date_time', 'date_time', 12, 9500, 0, 0, 0, 0, '', 0, 0, 0, 0),
(151, 41, 'test0', 'test0', 16, 9600, 0, 0, 0, 0, '', 0, 0, 0, 0),
(153, 28, 'foto', 'Фото', 6, 9800, 0, 0, 0, 0, '', 0, 0, 0, 0),
(156, 37, 'tags', 'Тэги', 14, 10100, 0, 0, 0, 0, 'catalog;tags', 1, 0, 0, 0),
(157, 0, 'read', 'Права на чтение', 17, 10500, 0, 0, 0, 0, 'system_data_block;name;caption', 1, 0, 0, 0),
(158, 0, 'add', 'Права на создание', 17, 10600, 0, 0, 0, 0, 'system_data_block;name;caption', 1, 0, 0, 0),
(159, 0, 'edit', 'Права на редактирование', 17, 10700, 0, 0, 0, 0, 'system_data_block;name;caption', 1, 0, 0, 0),
(160, 0, 'delete', 'Права на удаление', 17, 10800, 0, 0, 0, 0, 'system_data_block;name;caption', 1, 0, 0, 0),
(161, 0, 'read', 'Права на чтение', 17, 10500, 0, 0, 0, 0, 'system_data_block;name;caption', 1, 0, 0, 0),
(162, 0, 'add', 'Права на создание', 17, 10600, 0, 0, 0, 0, 'system_data_block;name;caption', 1, 0, 0, 0),
(163, 0, 'edit', 'Права на редактирование', 17, 10700, 0, 0, 0, 0, 'system_data_block;name;caption', 1, 0, 0, 0),
(164, 0, 'delete', 'Права на удаление', 17, 10800, 0, 0, 0, 0, 'system_data_block;name;caption', 1, 0, 0, 0),
(165, 0, 'read', 'Права на чтение', 17, 10500, 0, 0, 0, 0, 'system_data_block;name;caption', 1, 0, 0, 0),
(166, 0, 'add', 'Права на создание', 17, 10600, 0, 0, 0, 0, 'system_data_block;name;caption', 1, 0, 0, 0),
(167, 0, 'edit', 'Права на редактирование', 17, 10700, 0, 0, 0, 0, 'system_data_block;name;caption', 1, 0, 0, 0),
(168, 0, 'delete', 'Права на удаление', 17, 10800, 0, 0, 0, 0, 'system_data_block;name;caption', 1, 0, 0, 0),
(169, 0, 'read', 'Права на чтение', 17, 10500, 0, 0, 0, 0, 'system_data_block;name;caption', 1, 0, 0, 0),
(170, 0, 'add', 'Права на создание', 17, 10600, 0, 0, 0, 0, 'system_data_block;name;caption', 1, 0, 0, 0),
(171, 0, 'edit', 'Права на редактирование', 17, 10700, 0, 0, 0, 0, 'system_data_block;name;caption', 1, 0, 0, 0),
(172, 0, 'delete', 'Права на удаление', 17, 10800, 0, 0, 0, 0, 'system_data_block;name;caption', 1, 0, 0, 0),
(173, 0, 'read', 'Права на чтение', 17, 10500, 0, 0, 0, 0, 'system_data_block;name;caption', 1, 0, 0, 0),
(174, 0, 'add', 'Права на создание', 17, 10600, 0, 0, 0, 0, 'system_data_block;name;caption', 1, 0, 0, 0),
(175, 0, 'edit', 'Права на редактирование', 17, 10700, 0, 0, 0, 0, 'system_data_block;name;caption', 1, 0, 0, 0),
(176, 0, 'delete', 'Права на удаление', 17, 10800, 0, 0, 0, 0, 'system_data_block;name;caption', 1, 0, 0, 0),
(177, 0, 'read', 'Права на чтение', 17, 10500, 0, 0, 0, 0, 'system_data_block;name;caption', 1, 0, 0, 0),
(178, 0, 'add', 'Права на создание', 17, 10600, 0, 0, 0, 0, 'system_data_block;name;caption', 1, 0, 0, 0),
(179, 0, 'edit', 'Права на редактирование', 17, 10700, 0, 0, 0, 0, 'system_data_block;name;caption', 1, 0, 0, 0),
(180, 0, 'delete', 'Права на удаление', 17, 10800, 0, 0, 0, 0, 'system_data_block;name;caption', 1, 0, 0, 0),
(181, 42, 'read', 'Права на чтение', 17, 10500, 0, 0, 0, 0, 'system_data_block;name;caption', 1, 0, 0, 0),
(182, 42, 'add', 'Права на создание', 17, 10600, 0, 0, 0, 0, 'system_data_block;name;caption', 1, 0, 0, 0),
(183, 42, 'edit', 'Права на редактирование', 17, 10700, 0, 0, 0, 0, 'system_data_block;name;caption', 1, 0, 0, 0),
(184, 42, 'delete', 'Права на удаление', 17, 10800, 0, 0, 0, 0, 'system_data_block;name;caption', 1, 0, 0, 0),
(185, 43, 'read', 'Права на чтение', 17, 10500, 0, 0, 0, 0, 'system_data_block;name;caption', 1, 0, 0, 0),
(186, 43, 'add', 'Права на создание', 17, 10600, 0, 0, 0, 0, 'system_data_block;name;caption', 1, 0, 0, 0),
(187, 43, 'edit', 'Права на редактирование', 17, 10700, 0, 0, 0, 0, 'system_data_block;name;caption', 1, 0, 0, 0),
(188, 43, 'delete', 'Права на удаление', 17, 10800, 0, 0, 0, 0, 'system_data_block;name;caption', 1, 0, 0, 0),
(189, 44, 'file', 'Файл', 16, 10900, 0, 0, 0, 0, '', 0, 0, 0, 0),
(190, 44, 'news_id', 'news_id', 20, 11000, 0, 0, 0, 0, '', 1, 0, 0, 0),
(191, 8, 'group', 'Группа пользователя', 15, 11100, 0, 0, 0, 0, 'system_user_groups;id;caption', 0, 0, 0, 0),
(192, 40, 'data_caption', 'data_caption', 1, 11200, 0, 0, 0, 0, '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_data_block_group`
--

CREATE TABLE IF NOT EXISTS `system_data_block_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caption` tinytext CHARACTER SET cp1251 NOT NULL,
  `sort` int(11) NOT NULL,
  `name` text CHARACTER SET cp1251 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `system_data_block_group`
--

INSERT INTO `system_data_block_group` (`id`, `caption`, `sort`, `name`) VALUES
(1, 'Системные', 300, 'system'),
(15, 'Блоки сайта', 50, 'main');

-- --------------------------------------------------------

--
-- Table structure for table `system_data_block_types`
--

CREATE TABLE IF NOT EXISTS `system_data_block_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext CHARACTER SET cp1251 NOT NULL,
  `caption` tinytext CHARACTER SET cp1251 NOT NULL,
  `basetype` tinytext CHARACTER SET cp1251 NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `system_data_block_types`
--

INSERT INTO `system_data_block_types` (`id`, `name`, `caption`, `basetype`, `sort`) VALUES
(1, 'short_text', 'Текстовая строка', 'TEXT', 100),
(2, 'integ', 'Целое число', 'INT', 200),
(3, 'double_integ', 'Дробное число', 'DOUBLE', 300),
(4, 'wysiwyg_text', 'Редактор текста', 'LONGTEXT', 400),
(5, 'wysiwyg_html', 'Визуальный редактор текста', 'LONGTEXT', 500),
(6, 'image', 'Картинка', 'TEXT', 700),
(7, 'checkbox', 'Галочка', 'SMALLINT', 800),
(8, 'list', 'Выпадающий список', 'TEXT', 1000),
(9, 'element', 'Привязка к папке', 'INT', 1100),
(10, 'folder', 'Привязка к элементу', 'INT', 1200),
(11, 'ddate', 'Дата', 'DATE', 1300),
(12, 'ddatetime', 'Дата и время', 'DATETIME', 1400),
(13, 'pass', 'Пароль', 'TEXT', 1500),
(14, 'tags', 'Тэги', 'TEXT', 5000),
(15, 'list_need', 'Выпадающий список обяз.', 'TEXT', 1005),
(16, 'file', 'Файл', 'TEXT', 9000),
(17, 'list_max', 'Выпадающий список множественный', 'TEXT', 1001),
(18, 'image_multiple', 'Множественная загрузка картинок', 'TEXT', 710),
(19, 'file_multiple', 'Множественная загрузка файлов', 'TEXT', 9010),
(20, 'hidden', 'Скрытое поле', 'TEXT', 9200);

-- --------------------------------------------------------

--
-- Table structure for table `system_user_groups`
--

CREATE TABLE IF NOT EXISTS `system_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `caption` text NOT NULL,
  `sort` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `folder` int(11) NOT NULL,
  `read` text NOT NULL,
  `add` text NOT NULL,
  `edit` text NOT NULL,
  `delete` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `system_user_groups`
--

INSERT INTO `system_user_groups` (`id`, `name`, `caption`, `sort`, `parent`, `folder`, `read`, `add`, `edit`, `delete`) VALUES
(2, 'redaktor', 'Редактор', 200, 0, 0, 'pages;foto;news;banners;catalog;site_users;news_files;options;users;templates;modules;cms_options;options_class;journal;system_user_groups', 'pages;foto;news;banners;catalog;site_users;news_files;options;users;templates;modules;cms_options;options_class;journal;system_user_groups', 'pages;foto;news;banners;catalog;site_users;news_files;options;users;templates;modules;cms_options;options_class;journal;system_user_groups', 'pages;foto;news;banners;catalog;site_users;news_files;options;users;templates;modules;cms_options;options_class;journal;system_user_groups'),
(1, 'admin', 'Админы', 100, 0, 0, 'pages;foto;news;banners;catalog;site_users;news_files;options;users;templates;modules;cms_options;options_class;journal;system_user_groups', 'pages;foto;news;banners;catalog;site_users;news_files;options;users;templates;modules;cms_options;options_class;journal;system_user_groups', 'pages;foto;news;banners;catalog;site_users;news_files;options;users;templates;modules;cms_options;options_class;journal;system_user_groups', 'pages;foto;news;banners;catalog;site_users;news_files;options;users;templates;modules;cms_options;options_class;journal;system_user_groups');

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE IF NOT EXISTS `templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET cp1251 NOT NULL,
  `caption` text CHARACTER SET cp1251 NOT NULL,
  `sort` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `folder` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id`, `name`, `caption`, `sort`, `parent`, `folder`) VALUES
(1, 'main', 'Основной шаблон', 20, 0, 0),
(2, 'empty', 'Пустой', 30, 0, 0),
(5, '_', '[наследуемый]', 10, 0, 0),
(6, 'null', 'Шаблон абсолютно пустой', 130, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET cp1251 NOT NULL,
  `caption` text CHARACTER SET cp1251 NOT NULL,
  `sort` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `folder` int(11) NOT NULL,
  `login` text CHARACTER SET cp1251 NOT NULL,
  `email` text CHARACTER SET cp1251 NOT NULL,
  `block_control` smallint(6) NOT NULL,
  `pass` text CHARACTER SET cp1251 NOT NULL,
  `uid` tinytext CHARACTER SET cp1251 NOT NULL,
  `group` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `caption`, `sort`, `parent`, `folder`, `login`, `email`, `block_control`, `pass`, `uid`, `group`) VALUES
(1, 'administrator_sayta', 'Администратор сайта', 200, 0, 0, 'admin', 'demo@mail.ru', 1, '21232f297a57a5a743894a0e4a801fc3', '0bfcf6d1787d53b37c9dbc28700188cc;684b12522dfaf529cbbaacec60337642;d8778bb5f2c899655465abba1ed9a6c0;4e329520ba3a9b0440e89d16a46a74dd;e23d5cd81ea15432e4a21c7d297b724a', '1'),
(3, 'editor', 'editor', 400, 0, 0, 'editor', 'demo@mail.ru', 0, '5aee9dbd2a188839105073571bee1b1f', '', '2');
