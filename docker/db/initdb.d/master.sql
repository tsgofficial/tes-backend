-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 28, 2023 at 05:51 PM
-- Server version: 5.7.42
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `townmn_sob`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_city`
--

CREATE TABLE `address_city` (
  `id` int(3) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(3) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `address_city`
--

INSERT INTO `address_city` (`id`, `name`, `symbol`) VALUES
(1, 'Улаанбаатар', 'УБ'),
(2, 'Архангай', 'АР'),
(3, 'Баян-Өлгий', 'БӨ'),
(4, 'Баянхонгор', 'БХ'),
(5, 'Булган', 'БУ'),
(6, 'Говь-Алтай', 'ГА'),
(7, 'Говьсүмбэр', 'ГС'),
(8, 'Дархан-Уул ', 'ДА'),
(9, 'Дорноговь', 'ДГ'),
(10, 'Дорнод', 'ДО'),
(11, 'Дундговь', 'ДУ'),
(12, 'Завхан', 'ЗА'),
(13, 'Орхон', 'ОР'),
(14, 'Өвөрхангай', 'ӨВ'),
(15, 'Өмнөговь', 'ӨМ'),
(16, 'Сүхбаатар', 'СҮ'),
(17, 'Сэлэнгэ', 'СЭ'),
(18, 'Төв', 'ТӨ'),
(19, 'Увс', 'УВ'),
(20, 'Ховд', 'ХО'),
(21, 'Хөвсгөл', 'ХӨ'),
(22, 'Хэнтий', 'ХЭ'),
(23, 'Төмөрзам', 'ТЗ');

-- --------------------------------------------------------

--
-- Table structure for table `address_district`
--

CREATE TABLE `address_district` (
  `id` int(3) NOT NULL,
  `city` int(3) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address_district`
--

INSERT INTO `address_district` (`id`, `city`, `name`) VALUES
(1, 1, 'Багануур'),
(2, 1, 'Багахангай'),
(3, 1, 'Баянгол'),
(4, 1, 'Баянзүрх'),
(5, 1, 'Налайх'),
(6, 1, 'Сонгинохайрхан'),
(7, 1, 'Сүхбаатар'),
(8, 1, 'Хан-Уул'),
(9, 1, 'Чингэлтэй'),
(10, 2, 'Батцэнгэл сум'),
(11, 2, 'Булган сум'),
(12, 2, 'Жаргалант сум'),
(13, 2, 'Ихтамир сум'),
(14, 2, 'Өгийнуур сум'),
(15, 2, 'Өлзийт сум'),
(16, 2, 'Өндөр-Улаан сум'),
(17, 2, 'Тариат сум'),
(18, 2, 'Цахир сум'),
(19, 2, 'Чулуут сум'),
(20, 3, 'Алтай сум'),
(21, 3, 'Алтанцөгц сум'),
(22, 3, 'Баяннуур сум'),
(23, 3, 'Бугат сум'),
(24, 3, 'Булган сум'),
(25, 3, 'Буянт сум'),
(26, 3, 'Дэлгүүн сум'),
(27, 3, 'Ногооннуур сум'),
(28, 3, 'Сагсай сум'),
(29, 3, 'Цагааннуур сум'),
(30, 3, 'Толбо сум'),
(31, 3, 'Улаанхус сум'),
(32, 3, 'Цэнгэл сум'),
(33, 4, 'Баянхонгор сум'),
(34, 4, 'Баацагаан сум'),
(35, 4, 'Баянбулаг сум'),
(36, 4, 'Баянговь сум'),
(37, 4, 'Баянлиг сум'),
(38, 4, 'Баян-Овоо сум'),
(39, 4, 'Баян-Өндөр сум'),
(40, 4, 'Баянцагаан сум'),
(41, 4, 'Богд сум'),
(42, 4, 'Бөмбөгөр сум'),
(43, 4, 'Бууцагаан сум'),
(44, 4, 'Галуут сум'),
(45, 4, 'Гурванбулаг сум'),
(46, 4, 'Жаргалант сум'),
(47, 4, 'Жинст сум'),
(48, 4, 'Заг сум'),
(49, 4, 'Өлзийт сум'),
(50, 4, 'Хүрээмарал сум'),
(51, 4, 'Шинэжинст сум'),
(52, 4, 'Эрдэнэцогт сум'),
(53, 5, 'Булган сум'),
(54, 5, 'Баян-Агт сум'),
(55, 5, 'Баяннуур сум'),
(56, 5, 'Бугат сум'),
(57, 5, 'Бүрэгхангай сум'),
(58, 5, 'Гурванбулаг сум'),
(59, 5, 'Дашинчилэн сум'),
(60, 5, 'Могод сум'),
(61, 5, 'Орхон сум'),
(62, 5, 'Рашаант сум'),
(63, 5, 'Сайхан сум'),
(64, 5, 'Сэлэнгэ сум'),
(65, 5, 'Тэшиг сум'),
(66, 5, 'Хангал сум'),
(67, 5, 'Хишиг-Өндөр сум'),
(68, 5, 'Хутаг-Өндөр сум'),
(69, 6, 'Алтай сум'),
(70, 6, 'Баян-Уул сум'),
(71, 6, 'Бигэр сум'),
(72, 6, 'Бугат сум'),
(73, 6, 'Дарви сум'),
(74, 6, 'Дэлгэр сум'),
(75, 6, 'Есөнбулаг сум'),
(76, 6, 'Жаргалан сум'),
(77, 6, 'Тайшир сум'),
(78, 6, 'Тонхил сум'),
(79, 6, 'Төгрөг сум'),
(80, 6, 'Халиун сум'),
(81, 6, 'Хөхморьт сум'),
(82, 6, 'Цогт сум'),
(83, 6, 'Цээл сум'),
(84, 6, 'Чандмань сум'),
(85, 6, 'Шарга сум'),
(86, 6, 'Эрдэнэ сум'),
(87, 7, 'Сүмбэр сум'),
(88, 7, 'Баянтал сум'),
(89, 7, 'Шивээговь сум'),
(90, 8, 'Хонгор сум'),
(91, 8, 'Орхон сум'),
(92, 8, 'Шарынгол сум'),
(93, 9, 'Айраг сум'),
(94, 9, 'Алтанширээ сум'),
(95, 9, 'Даланжаргалан сум'),
(96, 9, 'Дэлгэрэх сум'),
(97, 9, 'Замын-Үүд сум'),
(98, 9, 'Иххэт сум'),
(99, 9, 'Мандах сум'),
(100, 9, 'Өргөн сум'),
(101, 9, 'Сайхандулаан сум'),
(102, 9, 'Улаанбадрах сум'),
(103, 9, 'Хатанбулаг сум'),
(104, 9, 'Хөвсгөл сум'),
(105, 9, 'Эрдэнэ сум'),
(106, 10, 'Баяндун сум'),
(107, 10, 'Баянтүмэн сум'),
(108, 10, 'Баян-Уул сум'),
(109, 10, 'Булган сум'),
(110, 10, 'Гурванзагал сум'),
(111, 10, 'Дашбалбар сум'),
(112, 10, 'Матад сум'),
(113, 10, 'Сэргэлэн сум'),
(114, 10, 'Халхгол сум'),
(115, 10, 'Хөлөнбуйр сум'),
(116, 10, 'Хэрлэн (Сүмбэр)'),
(117, 10, 'Цагаан-Овоо сум'),
(118, 10, 'Чулуунхороот сум (Эрээнцав)'),
(119, 10, 'Чойбалсан сум'),
(120, 11, 'Адаацаг сум'),
(121, 11, 'Баянжаргалан сум'),
(122, 11, 'Говь-Угтаал сум'),
(123, 11, 'Гурвансайхан сум'),
(124, 11, 'Дэлгэрхангай сум'),
(125, 11, 'Дэлгэрцогт сум'),
(126, 11, 'Дэрэн сум'),
(127, 11, 'Луус сум'),
(128, 11, 'Өлзийт сум'),
(129, 11, 'Өндөршил сум'),
(130, 11, 'Сайхан-Овоо сум'),
(131, 11, 'Сайнцагаан сум'),
(132, 11, 'Хулд сум'),
(133, 11, 'Цагаандэлгэр сум'),
(134, 11, 'Эрдэнэдалай сум'),
(135, 12, 'Алдархаан сум'),
(136, 12, 'Асгат сум'),
(137, 12, 'Баянтэс сум'),
(138, 12, 'Баянхайрхан сум'),
(139, 12, 'Дөрвөлжин сум'),
(140, 12, 'Завханмандал сум'),
(141, 12, 'Идэр сум'),
(142, 12, 'Их-Уул сум'),
(143, 12, 'Нөмрөг сум'),
(144, 12, 'Отгон сум'),
(145, 12, 'Сантмаргац сум'),
(146, 12, 'Сонгино сум'),
(147, 12, 'Тосонцэнгэл сум'),
(148, 12, 'Түдэвтэй сум'),
(149, 12, 'Тэлмэн сум'),
(150, 12, 'Тэс сум'),
(151, 12, 'Ургамал сум'),
(152, 12, 'Цагаанхайрхан сум'),
(153, 12, 'Цагаанчулуут сум'),
(154, 12, 'Цэцэн-Уул сум'),
(155, 12, 'Шилүүстэй сум'),
(156, 12, 'Эрдэнэхайрхан сум'),
(157, 12, 'Яруу сум'),
(158, 13, 'Баян-Өндөр сум'),
(159, 13, 'Жаргалант сум'),
(160, 14, 'Арвайхээр'),
(161, 14, 'Баруунбаян-Улаан сум'),
(162, 14, 'Бат-Өлзий сум'),
(163, 14, 'Баянгол сум'),
(164, 14, 'Баян-Өндөр сум'),
(165, 14, 'Богд сум'),
(166, 14, 'Бүрд сум'),
(167, 14, 'Гучин-Ус сум'),
(168, 14, 'Хархорин сум'),
(169, 14, 'Хайрхандулаан сум'),
(170, 14, 'Хужирт сум'),
(171, 14, 'Нарийнтээл сум'),
(172, 14, 'Өлзийт сум'),
(173, 14, 'Сант сум'),
(174, 14, 'Тарагт сум'),
(175, 14, 'Төгрөг сум'),
(176, 14, 'Уянга сум'),
(177, 14, 'Есөнзүйл сум'),
(178, 14, 'Зүүнбаян-Улаан сум'),
(179, 15, 'Баяндалай сум'),
(180, 15, 'Баян-Овоо сум'),
(181, 15, 'Булган сум'),
(182, 15, 'Гурвантэс сум'),
(183, 15, 'Мандал-Овоо сум'),
(184, 15, 'Манлай сум'),
(185, 15, 'Ноён сум'),
(186, 15, 'Номгон сум'),
(187, 15, 'Сэврэй сум'),
(188, 15, 'Ханбогд сум'),
(189, 15, 'Ханхонгор сум'),
(190, 15, 'Хүрмэн сум'),
(191, 15, 'Цогт-Овоо сум'),
(192, 15, 'Цогтцэций сум (Тавантолгой)'),
(193, 16, 'Асгат сум'),
(194, 16, 'Баяндэлгэр сум'),
(195, 16, 'Дарьганга сум'),
(196, 16, 'Мөнххаан сум'),
(197, 16, 'Наран сум'),
(198, 16, 'Онгон сум'),
(199, 16, 'Сүхбаатар сум'),
(200, 16, 'Түвшинширээ сум'),
(201, 16, 'Түмэнцогт сум'),
(202, 16, 'Уулбаян сум'),
(203, 16, 'Халзан сум'),
(204, 16, 'Эрдэнэцагаан сум'),
(205, 17, 'Алтанбулаг сум'),
(206, 17, 'Баруунбүрэн сум'),
(207, 17, 'Баянгол сум'),
(208, 17, 'Ерөө сум'),
(209, 17, 'Жавхлант сум'),
(210, 17, 'Зүүнбүрэн сум'),
(211, 17, 'Мандал сум'),
(212, 17, 'Орхон сум'),
(213, 17, 'Орхонтуул сум'),
(214, 17, 'Сайхан сум'),
(215, 17, 'Сант сум'),
(216, 17, 'Сүхбаатар сум'),
(217, 17, 'Түшиг сум'),
(218, 17, 'Хүдэр сум'),
(219, 17, 'Хушаат сум'),
(220, 17, 'Цагааннуур сум'),
(221, 17, 'Шаамар сум'),
(222, 18, 'Алтанбулаг сум'),
(223, 18, 'Аргалант сум'),
(224, 18, 'Архуст сум'),
(225, 18, 'Баян сум'),
(226, 18, 'Батсүмбэр сум'),
(227, 18, 'Баяндэлгэр сум'),
(228, 18, 'Баянжаргалан сум'),
(229, 18, 'Баян-Өнжүүл сум'),
(230, 18, 'Баянхангай сум'),
(231, 18, 'Баянцагаан сум'),
(232, 18, 'Баянцогт сум'),
(233, 18, 'Баянчандмань сум'),
(234, 18, 'Борнуур сум'),
(235, 18, 'Бүрэн сум'),
(236, 18, 'Дэлгэрхаан сум'),
(237, 18, 'Жаргалант сум'),
(238, 18, 'Заамар сум'),
(239, 18, 'Лүн сум'),
(240, 18, 'Мөнгөнморьт сум'),
(241, 18, 'Өндөрширээт сум'),
(242, 18, 'Сэргэлэн сум'),
(243, 18, 'Сүмбэр сум'),
(244, 18, 'Угтаал сум'),
(245, 18, 'Цээл сум'),
(246, 18, 'Эрдэнэ сум'),
(247, 18, 'Эрдэнэсант сум'),
(248, 19, 'Баруунтуруун сум'),
(249, 19, 'Бөхмөрөн сум'),
(250, 19, 'Давст сум'),
(251, 19, 'Завхан сум'),
(252, 19, 'Зүүнговь сум'),
(253, 19, 'Зүүнхангай сум'),
(254, 19, 'Малчин сум'),
(255, 19, 'Наранбулаг сум'),
(256, 19, 'Өлгий сум'),
(257, 19, 'Өмнөговь сум'),
(258, 19, 'Өндөрхангай сум'),
(259, 19, 'Сагил сум'),
(260, 19, 'Тариалан сум'),
(261, 19, 'Тэс сум'),
(262, 19, 'Түргэн сум'),
(263, 19, 'Улаангом сум'),
(264, 19, 'Ховд сум'),
(265, 19, 'Хяргас сум'),
(266, 19, 'Цагаанхайрхан сум'),
(267, 20, 'Ховд (Жаргалант)'),
(268, 20, 'Алтай сум'),
(269, 20, 'Булган сум'),
(270, 20, 'Буянт сум'),
(271, 20, 'Дарви сум'),
(272, 20, 'Дөргөн сум'),
(273, 20, 'Дуут сум'),
(274, 20, 'Зэрэг сум'),
(275, 20, 'Манхан сум'),
(276, 20, 'Мөнххайрхан сум'),
(277, 20, 'Мөст сум'),
(278, 20, 'Мянгад сум'),
(279, 20, 'Үенч сум'),
(280, 20, 'Ховд сум'),
(281, 20, 'Цэцэг сум'),
(282, 20, 'Чандмань сум'),
(283, 20, 'Эрдэнэбүрэн сум'),
(284, 21, 'Алаг-Эрдэнэ сум'),
(285, 21, 'Арбулаг сум'),
(286, 21, 'Баянзүрх сум'),
(287, 21, 'Бүрэнтогтох сум'),
(288, 21, 'Галт сум'),
(289, 21, 'Жаргалант сум'),
(290, 21, 'Их-Уул сум'),
(291, 21, 'Мөрөн сум'),
(292, 21, 'Рашаант сум'),
(293, 21, 'Рэнчинлхүмбэ сум'),
(294, 21, 'Тариалан сум'),
(295, 21, 'Тосонцэнгэл сум'),
(296, 21, 'Төмөрбулаг сум'),
(297, 21, 'Түнэл сум'),
(298, 21, 'Улаан-Уул сум'),
(299, 21, 'Ханх сум'),
(300, 21, 'Хатгал сум'),
(301, 21, 'Цагааннуур сум'),
(302, 21, 'Цагаан-Уул сум'),
(303, 21, 'Цагаан-Үүр сум'),
(304, 21, 'Цэцэрлэг сум'),
(305, 21, 'Чандмань-Өндөр сум'),
(306, 21, 'Шинэ-Идэр сум'),
(307, 21, 'Эрдэнэбулган сум'),
(308, 22, 'Батноров сум'),
(309, 22, 'Батширээт сум'),
(310, 22, 'Баян-Адрага сум'),
(311, 22, 'Баянмөнх сум'),
(312, 22, 'Баян-Овоо сум'),
(313, 22, 'Баянхутаг сум'),
(314, 22, 'Биндэр сум'),
(315, 22, 'Галшар сум'),
(316, 22, 'Дадал сум'),
(317, 22, 'Дархан сум'),
(318, 22, 'Дэлгэрхаан сум'),
(319, 22, 'Жаргалтхаан сум'),
(320, 22, 'Мөрөн сум'),
(321, 22, 'Норовлин сум'),
(322, 22, 'Өмнөдэлгэр сум'),
(323, 22, 'Хэрлэн сум'),
(324, 22, 'Цэнхэрмандал сум'),
(325, 8, 'Дархан сум'),
(326, 22, 'Бор-Өндөр'),
(327, 22, 'Чингис'),
(328, 21, 'Мөрөн'),
(329, 2, 'Төвшрүүлэх сум'),
(330, 2, 'Хайрхан сум'),
(331, 2, 'Хангай сум'),
(332, 2, 'Хашаат сум'),
(333, 2, 'Хотонт сум'),
(334, 2, 'Цэнхэр сум'),
(335, 2, 'Эрдэнэбулган сум'),
(336, 2, 'Эрдэнэмандал сум'),
(337, 2, 'Цэцэрлэг'),
(338, 3, 'Өлгий'),
(339, 5, 'Булган'),
(340, 7, 'Чойр'),
(341, 9, 'Сайншанд'),
(342, 11, 'Мандалговь'),
(343, 12, 'Улиастай'),
(344, 13, 'Эрдэнэт'),
(345, 15, 'Даланзадгад'),
(346, 16, 'Баруун-Урт'),
(347, 17, 'Сүхбаатар'),
(348, 18, 'Зуунмод');

-- --------------------------------------------------------

--
-- Table structure for table `advices`
--

CREATE TABLE `advices` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advices`
--

INSERT INTO `advices` (`id`, `employee_id`, `title`, `category`, `images`, `brief`, `description`, `created_date`, `updated_date`, `status`) VALUES
(15, 4, 'Суулгалт', 4, NULL, 'Суулгалт өвчин дэлхий дэрх 5 хүртэлх хүүхдийн нас баралтын 2 дахь гол шалтгаан болдог. Суулгалтаас шалтгаалсан нас баралтын ихэнх нь хүүхэд их хэмжээний шингэн алдсанаас болдог.', '<p style=\"line-height: 1.38; text-align: justify; margin-top: 12pt; margin-bottom: 0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Суулгалт.</span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;margin-top:12pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Суулгалт өвчин дэлхий дэрх 5 хүртэлх хүүхдийн нас баралтын 2 дахь гол шалтгаан болдог. Суулгалтаас шалтгаалсан нас баралтын ихэнх нь хүүхэд их хэмжээний шингэн алдсанаас болдог. Хүүхдийг шингэний болон хоол тэжээлийн дуталд орохоос сэргийлж шингэнийг их хэмжээгээр уулгаж, хоолыг сойхгүй үргэлжлүүлэн өгөх нь суулгалт өвчнийг эмчлэõ гол арга юм.</span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;margin-top:12pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Шингэнийг нөхөхдөө 2 настай хүүхдэд цайны халбагаар 2-3 минутын зайтай уулгана. 2-оос дээш насны хүүхдэд шингэнийг бага багаар аяганаас оочуулж уулгана. Хүүхэд бөөлжвөл 10 минут хүлээгээд дахин үргэлжлүүлэн өгнө. Суулгалт зогсох хүртэл шингэн илүү өгнө.</span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;margin-top:12pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Суулгалт өвчний үүсгэгч:</span></p><ul><li style=\"line-height: 1.38; text-align: justify; margin-top: 12pt; margin-bottom: 0pt;\"><span style=\"background-color: transparent; color: rgb(0, 0, 0); font-family: Arial; font-size: 11pt; white-space: pre-wrap;\">Хүний гарт биеийн бүх хирний 95% байдаг.</span></li><li style=\"line-height: 1.38; text-align: justify; margin-top: 12pt; margin-bottom: 0pt;\"><span style=\"background-color: transparent; color: rgb(0, 0, 0); font-family: Arial; font-size: 11pt; white-space: pre-wrap;\">Өвчин үүсгэгч нянгийн 90% нь бохир гарт байдаг</span></li><li style=\"line-height: 1.38; text-align: justify; margin-top: 12pt; margin-bottom: 0pt;\"><span style=\"background-color: transparent; color: rgb(0, 0, 0); font-family: Arial; font-size: 11pt; white-space: pre-wrap;\">Угаагаагүй 6 цаг болсон бохир гарт 10 сая нян байдаг.</span></li><li style=\"line-height: 1.38; text-align: justify; margin-top: 12pt; margin-bottom: 0pt;\"><span style=\"background-color: transparent; color: rgb(0, 0, 0); font-family: Arial; font-size: 11pt; white-space: pre-wrap; font-weight: var(--bs-body-font-weight);\">Угаасны дараа Нянгийн тоо 10 дахин багасдаг.</span></li><li style=\"line-height: 1.38; text-align: justify; margin-top: 12pt; margin-bottom: 0pt;\"><span style=\"background-color: transparent; color: rgb(0, 0, 0); font-family: Arial; font-size: 11pt; white-space: pre-wrap; font-weight: var(--bs-body-font-weight);\">Бохир гар олон өвчин үүсгэдэг. Үүнийг  нэг нь суулгалт өвчин юм.</span></li><li style=\"line-height: 1.38; text-align: justify; margin-top: 12pt; margin-bottom: 0pt;\"><span style=\"background-color: transparent; color: rgb(0, 0, 0); font-family: Arial; font-size: 11pt; white-space: pre-wrap; font-weight: var(--bs-body-font-weight);\">Суулгалт өвчнийг  олон төрлийн вирус, нян, эгэл биетүүд үүсгэдэг. Ба эдгээр нь ялгадсанаар дамждаг.</span></li></ul>', '2023-04-27 06:33:05', '2023-04-27 10:50:58', 'new'),
(16, 4, 'Хүүхдийн хоолой  өвдвөл', 4, NULL, 'Хүүхдийн хоолой  өвдвөл', '<ul><li style=\"text-align: justify;\"><font color=\"#000000\" face=\"Arial\"><span style=\"font-size: 14.6667px; white-space: pre-wrap;\"><b>Хоолой өвдөх, нусгайтах </b>нь амьсгалын дээд замын  цочмог халдварт өвчний нийтлэг шинж тэмдэг юм. Хоолой өвдөх нь ихэвчлэн вирусээр үүсгэгдэнэ. Гүйлсэн булчирхайн үрэвсэл /ангина/ ихэвчлэн хүндэрч хэрэх өвчин /ревматизм/  болдог тул гүйцэт эмчлэх хэрэгтэй. Ойр дотны хүмүүсийн  хоолой ангинтвал найтаах, үнсэх ярих, ханиалгах үед үсэрсэн шүлс агаар дуслын замаар бусад хүмүүсийг халдварлуулна. Үүнээс үүдэн ханиад хүрсэн, ангинаар өвчилж буй хүн ам хамраа дарж ханиан хамрын алчуур  хэрэглэж байх нь чухал. Хүүхдийг хоолой нь өвдөж халуурвал гэрт нь эмчлэх зүйтэй. Хоолой өвдсөн үед давсны 5%-ийн уусмал /хоолны жамц давс/-ыг 95 грамм усан дээр 5 грамм давс уусгаж өдөрт 2-3 удаа 3-4 хоног хоолой зайлах, мөн царвангийн 5%-ийн уусмал 1 литр усанд 50 грамм царван хийж уусмал бэлтгэн зайлж  болно.</span></font><br></li><li style=\"text-align: justify;\"><font color=\"#000000\" face=\"Arial\"><span style=\"font-size: 14.6667px; white-space: pre-wrap;\"><b>Төвөнх, гуурсан хоолойн үрэвслийн </b>үед цэр, салст хуримтлагдаж, салслаг хөөнгөшиж булчин агшисны улмаас амьсгалын хэвийн үйл ажиллагааг алдагдуулах тул амьсгалын саатлыг арилгах утлага \\эмийн бус эмчилгээг\\&nbsp; хийж болно. Утлага хийхдээ 100г&nbsp; халуун усанд цайны жижиг халбага сод хийж өдөрт 3-4 удаа утна. Ханиалгаж буй хүүхдэд аньсны навч, хандалж уулгаж болно. 1-3 насанд цайны халбага, 3-7 насанд цайны 2 халбага, 7-дээш насанд хоолны халбагаар 4-5 удаа өдөрт уулгана.</span></font></li><li style=\"text-align: justify;\"><font color=\"#000000\" face=\"Arial\"><span style=\"font-size: 14.6667px; white-space: pre-wrap;\"><b>Амьсгалын замын өвчнүүдийн</b> үед амьсгаадах, ханиалгах, цэр гарах, цустай ханиалгах, цээжээр хатгуулаж өвддөг. Энэ тохиолдолд өвчтэй хүүхдийг хагас суугаа байдалд тайван байлгаж өрөөнд цэвэр агаар хангалттай оруулна.</span></font></li><li style=\"text-align: justify;\"><font color=\"#000000\" face=\"Arial\"><span style=\"font-size: 14.6667px; white-space: pre-wrap;\"><b>Ханиадыг</b> дарах буюу хөнгөвчлөх зорилгоор халуун бүлээн шингэн, содтой сүү уулгана. Цэр нь нян микробтой ялгадас учир&nbsp; гадашлуулж хаяулах ба&nbsp; залгиулж болохгүй. Цээжээр хатгуулах зовиурыг дарахын тулд хатгаж буй талаар нь хэвтүүлнэ. Мөн гич тавьж болно.</span></font></li></ul>', '2023-04-27 10:53:57', '2023-04-27 10:56:11', 'new'),
(17, 4, 'Хордох.', 4, NULL, 'Хордох.', '<p><span id=\"docs-internal-guid-da3577f5-7fff-da2c-5133-30a27348a580\"></span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;margin-top:12pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Хоёр хүртэлх настай хүүхэд юм болгонд хүртэж танин мэдэх сонирхолдоо хөтлөгдөн элдэв, эм, гэр ахуйн хэрэглээний химийн бодист хордох нь элбэг байдаг. Ийм үед хүүхдэд их хэмжээний шингэн уулгаж бөөлжүүлэх. Бөөлжүүлэхдээ их хэмжээний ус буюу өтгөн давстай хар цай 200-500 мл-ийг уулгахад хүүхэд 15 минутын дотор бөөлжих болно. Бөөлжихгүй бол хэлний угт хуруугаараа дарахад огилт үүсэж бөөлжинө. Мөн давстай ус нэмж өгч болно. \\Нэг аяганд 2 хоолны халбага давс хийнэ.\\ Харин ам орчим түлэгдсэн, ам хоолой, хэвлийгээр өвдөлттөй байгаа үед хүүхдийг бөөлжүүлж болохгүй. Түлэх чанартай шингэн уусан үед \\спирт, цагаан цуу, машин ба аккумляторын шингэн, цайруулагч бодис, лак арилгагч гэх мэт\\ бөөлжүүлж болохгүй. Сүү уулгаж болохгүй. Хүүхэд амьсгалж байгаа эсэхийг шалгах. Үгүй бол хиймэл амьсгал хийх, яаралтай эмч дуудах.  Унтсан тохиолдолд хажуугаар нь хэвтүүлэх.</span></p>', '2023-04-27 10:57:08', '2023-04-27 10:57:16', 'new'),
(18, 4, 'Хамарт эм хийх', 4, NULL, 'Хамарт эм хийх', '<p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:12pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Гараа угаана. Хамарт эм дусаахдаа хүүхдийг  дээш харуулж хэвтүүлээд 1 хамарт 6-8 дусал эм хийсний дараа хамрын угалзыг хөнгөн хэд хэдэн удаа хавчиж шахна. Хэсэг хугацаанд дээш харуулж хэвтүүлнэ. Нэг эмийг 7 хоног дусаагаад үр дүн багатай бол солих хэрэгтэй.</span></p><p><span id=\"docs-internal-guid-565dcc26-7fff-f14c-3778-dedbd3ea7ef4\"></span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:12pt 0pt 0pt 0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Хуурай болон тосон эм, хамар онгойлогч эмийг дусаагуураар хийнэ. Хамарт эмийг хүчтэй цацах, хамарт эм хийсний дараа өвчтөнд хамраа хүчтэй татуулахыг хориглоно. Эмийг зөвхөн хамрын үүдэвчинд хийгээд орхино. Уг эм нь хамрын салстын намираа хучуурын хөдөлгөөнөөр аажмаар хамрын гүн рүү нэвтрэн орж, үйлчилнэ.</span></p>', '2023-04-27 10:58:40', '2023-04-27 10:58:48', 'new'),
(19, 4, 'Залгиурт эм цацах', 4, NULL, 'Залгиурт эм цацах', '<p><span id=\"docs-internal-guid-443027a0-7fff-0a76-2758-ab171efeb569\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">Залгиурт хуурай болон тосон эмийг 4 мл-ээс илүүгүй хэмжээгээр бага багаар цацна. Эм цацахын өмнө өвчтөний хэлийг заавал дарсан байна. Их хэмжээний бөөн эм цацаж, өвчтөнг хахаах, амьсгалын замд оруулахаас болгоомжилно.</span></span><br></p>', '2023-04-27 10:59:19', '2023-04-27 10:59:25', 'new'),
(20, 4, 'Утлага хийх', 4, NULL, 'Утлага хийх', '<p><span id=\"docs-internal-guid-bb1c86bc-7fff-a9da-3b4f-fd6ce9b108b9\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">Ханиад томууны үед амьсгалын замын эрхтнүүд зонхилж гэмтдэг учир урдчилан сэргийлэх болон эмчилгээний зорилгоор ам, хамар, хоолойд утлага хийх нь ач холбогдолтой. Утлага эмчилгээ нь хурдан үйлчилдэг. Утлагыг энгийн ба аппаратын аргаар хийнэ. Утлагыг 2%-ын содын уусмалаар хийнэ. 200 мл усанд 4 гр сод хийж хамраараа амьсгал авч амаараа гарган 10-15 минут утна. Өөр эмийн бодисоор утаж болно.</span></span><br></p>', '2023-04-27 11:00:10', '2023-04-27 11:00:35', 'new'),
(21, 4, 'Гичтэй ваннанд суулгах буюу гич наах', 4, NULL, 'Гичтэй ваннанд суулгах буюу гич наах', '<p style=\"line-height: 1.38; text-align: justify; background-color: rgb(255, 255, 255); margin-top: 12pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\"><b>Гичтэй ваннанд суулгах:</b></span><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"> 39-40 градус бүлээн&nbsp; 3 л усанд нэг хоолны халбага нунтаг гич хийж найруулна 15-20 минут суулгана.</span></p><p style=\"line-height: 1.38; text-align: justify; background-color: rgb(255, 255, 255); margin-top: 12pt; margin-bottom: 0pt;\"><span style=\"background-color: transparent; color: rgb(0, 0, 0); font-family: Arial; font-size: 11pt; white-space: pre-wrap;\"><b>Гич наах:</b> Цаасан гичийг 2 хуваана. Нялх хүүхдэд цаасан талаар нь наах илүү сайн. Хоёр хөлний ул, эрээн булчин, 2 далны хооронд, өвчүүний 2 талд нийтдээ 4 хос цэгт 8 ширхэг цаасан гич наана. Аль ч гичийг хэрэглэсний дараа&nbsp; тос түрхэнэ. Дулаан хучиж хэвтүүлнэ.</span><br></p>', '2023-04-27 11:03:18', NULL, 'new'),
(22, 4, 'Чихэнд эм дусаах, цацах', 4, NULL, 'Чихэнд эм дусаах, цацах', '<p><span id=\"docs-internal-guid-c1faab3a-7fff-9299-1b44-eb1fe61a5456\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">Чихэнд эм дусаахдаа өвчтөн /ялангуяа нярай, хөхүүл, бага насны хүүхэд/-ийн эм дусаах чихийг нь дээш харуулан хэвтүүлж, эмээ дусаагуур буюу энгийн хэрэгслэлийг ашиглан 0,5 мл-ын хэмжээтэй соруулан авч, чихний гадна суваг руу бүлээсгэн хийнэ. Өдөрт 5-6 удаа дусаах ба 5-7 хоног дусаана.</span></span><br></p>', '2023-04-27 11:04:15', '2023-04-27 11:04:22', 'new'),
(23, 4, 'Халуун усанд суулгах', 4, NULL, 'Халуун усанд суулгах', '<p><span id=\"docs-internal-guid-0cddf563-7fff-1df5-2069-90e9f9a7ecae\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">Хүүхдийн арьс ялаарч духны хөлс дааварлатал 40-45 нэмийн халуун усанд мөрийг далд ортол суулгаж 10-20 минут байлгана. Дараа нь хуурай алчуураар арьчиж, дулаан хучиж унтуулахад хүүхэд ханиах нь эрс багасна. 3-4 удаа суулгасны дараа ханиалгахаа болино. Дааруулж болохгүй.</span></span><br></p>', '2023-04-27 11:04:56', NULL, 'new'),
(24, 4, 'Хөлийг халуун усанд дүрэх', 4, NULL, 'Хөлийг халуун усанд дүрэх', '<p><span id=\"docs-internal-guid-a3673e77-7fff-a4e2-fa55-88758072cffe\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">39-40 хэмийн халуун усанд хүүхдийн хөлийг өвдөг хүртэл 10-15 минут дүрэх ба хүүхдийг дааруулж болохгүй ус хөрөх үед үе үе халуун ус нэмнэ. Дараа нь дулаан оймс өмсгөж дулаан хучна.</span></span><br></p>', '2023-04-27 11:05:30', NULL, 'new'),
(25, 4, 'Цэвэрлэх бургуй тавих', 4, NULL, 'Цэвэрлэх бургуй тавих', '<p><span id=\"docs-internal-guid-1f98021d-7fff-4ed3-e8bd-d1a6d2d3052a\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">Урьдчилан цэвэрлэж бэлтгэсэн бургуйнд буцалгасан 30 хэмийн бүлээн ус хийж хийг шахаж гарган, хошууг тосолно. Хүүхдийг зүүн талаар нь харуулж хэвтүүлээд хошногны амсрыг зүүн гарын эрхий, долоовор хуруугаар хоёр тийш нь болгон бургуйны хошууг 4-5 см гүн шулуун гэдэсрүү оруулж усыг шахна. 5-15 минут байлгаад гаргана.</span></span><br></p>', '2023-04-27 11:06:13', NULL, 'new'),
(26, 4, 'Хамраас цус гоожих үед үзүүлэх тусламж', 4, NULL, 'Хамраас цус гоожих үед үзүүлэх тусламж', '<p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;margin-top:12pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Хамраас цус  гоожих нь хэсгийн болон ерөнхий шалтгаантай бөгөөд цусны  өвчин, гэмтэл, цусны эргэлтийн алдагдал гэх мэт маш олон шалтгаантай байдаг.</span></p><p><span id=\"docs-internal-guid-54687ff3-7fff-b9c2-cc5b-22bfb3ec7ec4\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">Хамраас  цус гоожих нь оношлоход хялбар зовиур юм. Хамраас цус гоожихдоо </span><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-weight: 700; font-style: italic; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">арагшаа</span><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\"> болон </span><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-weight: 700; font-style: italic; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">урагшаа</span><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\"> 2 янзаар гоождог ба урагшаа цус гоожиж буй үед хамрын нүхээр цус гоожино. Харин арагшаа цус гоожиж буй үед  цус залгиур хоолой руу урсдаг тул мэдэгдэхгүйгээр хүндрэх аюултай байдаг.</span></span><br></p>', '2023-04-27 11:07:49', '2023-04-27 11:07:55', 'new'),
(27, 4, 'Хамраас цус гоожиж буй үед авах арга хэмжээ', 4, NULL, 'Хамраас цус гоожиж буй үед авах арга хэмжээ', '<p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;margin-top:12pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Аль болох тайван байж, эгц сууж, толгойгоо арагш гэдийлгэнэ. Толгойгоо арагш гэдийлгэх&nbsp; их хэмжээний цус гоожиж буй үед төдийлөн үр дүнгүйгээр барахгүй толгой гэдийлгэх үед цус&nbsp; залгиур луу орж бөөлжүүлэх эрсдэлтэй&nbsp; байдаг.</span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;margin-top:12pt;margin-bottom:0pt;\"><span style=\"background-color: transparent; color: rgb(0, 0, 0); font-family: Arial; font-size: 11pt; white-space: pre-wrap; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Хамраас бага хэмжээний цус гарсан тохиолдолд хамраас цус гоожихыг зогсоох&nbsp; жижиг&nbsp; аргуудыг хэрэглэж цус гоожилтыг тогтоох хэрэгтэй. Үүнд толгойгоо гэдийлгэх нь хамраа чимхэх, хамартаа марлиар бөглөөс хийх гэх мэт. Нэг удаад 50 мл-ээс их үед эмнэлгийн байгууллагад хандаарай.</span></p>', '2023-04-27 11:08:57', NULL, 'new'),
(28, 4, 'Хахсан хүнд үзүүлэх анхны тусламж', 4, NULL, 'Хахсан хүнд үзүүлэх анхны тусламж', '<p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;margin-top:12pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Хэрвээ тухайн хүн хүчтэй ханиалгах ба нүүр царай нь хөхөвтөр болоогүй бол ямар нэг зүйл хийлгүй тайван байх хэрэгтэй</span></p><ul><li style=\"line-height: 1.38; text-align: justify; margin-top: 12pt; margin-bottom: 0pt;\"><span style=\"background-color: transparent; color: rgb(0, 0, 0); font-family: Arial; font-size: 11pt; white-space: pre-wrap;\">Та хахчихсан уу? ãэсэн асуултад үгээр хариулж байвал амьсгалын замд саад байгаагийн шинж. Энэ үед тухайн хүнийг босгож амьсгалыг замын саадыг гартал нь хүчтэй ханиалгах хэрэгтэй. Уух зүйл өгч болохгүй учир нь шингэн зүйл амьсгалах замд саад болдог.</span></li><li style=\"line-height: 1.38; text-align: justify; margin-top: 12pt; margin-bottom: 0pt;\"><span style=\"background-color: transparent; color: rgb(0, 0, 0); font-family: Arial; font-size: 11pt; white-space: pre-wrap;\">Хэрвээ танд үгээр хариулж чадахгүй, толгой дохин хариулж байвал амьсгалын зам бүрэн бөглөрсний шинж тул яаралтай тусламж үзүүлэх хэрэгтэй.</span></li><li style=\"line-height: 1.38; text-align: justify; margin-top: 12pt; margin-bottom: 0pt;\"><span style=\"background-color: transparent; color: rgb(0, 0, 0); font-family: Arial; font-size: 11pt; white-space: pre-wrap;\">Хахсан хүнд тусламж үзүүлэхдээ насыг нь харгалзан үзнэ. Насанд хүрсэн хүн болон 1-ээс дээш насны хүүхдэд хэвлийг нь шахаж (хемликийн арга) тусламж үзүүлнэ. Ингэж хүчтэй шахсаны дараагаар хиймэл амьсгал хийнэ. Ингээд амьсгалын зам чөлөөлөгдөнө. Энэ нь цээжний дээд хэсэгрүү хүчтэй, огцом шахсанаар цээжний хөндийн даралт багасч, уушиг шахагдан, агаарыг хүчээр гадагшлуулж байгаа юм. Ингэж агаарыг хүчээр гадагшлуулах нь хахсан хүнд үзүүлэх хамгийн зөв, найдвартай арга юм</span></li></ul>', '2023-04-27 11:12:08', NULL, 'new'),
(29, 4, 'Хөлдөлтийн үед үзүүлэх тусламж', 4, NULL, 'Хөлдөлтийн үед үзүүлэх тусламж', '<p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;margin-top:12pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Хөлдөлтийн үед тусламжийг аль болох эрт, зөв эхлэх нь цаашдийн эдгэрэлт, өвчний явцад&nbsp; чухал байдаг.&nbsp;</span></p><ul><li style=\"line-height: 1.38; text-align: justify; margin-top: 12pt; margin-bottom: 0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Хөлдсөн хэсэгт халуун, хүйтэн ямарч зүйлийг бүү хүргэ. Зүгээр л дулаан аажим дулаацуулан гэсгээх юм. Хөлдөлттэй хүн осголт (гипотерми)-нд амархан ордог тул дулаан газар оруулах нь хамгийн түрүүний чухал бөгөөд сайн арга. Гэсгээлтийг идэвхигүй болон идэвхитэй гэсгээлт хэмээх 2 төрлөөр хийнэ. Идэвхигүй гэсгээлт нь өрөөний темпратурт байлгаж цусны эргэлтийг ашиглан өөрийн дулаанаар нь гэсгээхийг хэлнэ. Иймд гэрийн нөхцөлд идэвхигүй гэсгээлт хийх нь илүү чухал.</span></li><li style=\"line-height: 1.38; text-align: justify; margin-top: 12pt; margin-bottom: 0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Хувцас, үнэт эдлэл (цаг, бугуйвч, бөгж) зэргээс биеийг болгоомжтой чөлөөлнө. Учир нь эдгээр нь цусны эргэлтийн хямралыг нэмэгдүүлдэг тул чөлөөлөх зайлшгүй хэрэгтэй.</span></li><li style=\"line-height: 1.38; text-align: justify; margin-top: 12pt; margin-bottom: 0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Өвчтөнд&nbsp; спирт, кофеин агуулаагүй бүлээн шингэн зүйл уулга.</span></li><li style=\"line-height: 1.38; text-align: justify; margin-top: 12pt; margin-bottom: 0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Цэвэр хуурай&nbsp; боолтоор гар, хөлийг нь ороох үрэгдэхээс хамгаалж оройх</span></li><li style=\"line-height: 1.38; text-align: justify; margin-top: 12pt; margin-bottom: 0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"> <span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; background-color: transparent; font-size: 11pt; vertical-align: baseline;\">Гэмтсэн хэсэгт халуун жин&nbsp; тавих, цасаар үрэхгүй байх</span></span></li><li style=\"line-height: 1.38; text-align: justify; margin-top: 12pt; margin-bottom: 0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; background-color: transparent; font-size: 11pt; vertical-align: baseline;\">Мөн сэтгэл санааг нь тайван байлгах<br></span></span></li></ul>', '2023-04-27 11:13:43', NULL, 'new'),
(30, 4, 'Яс хугарах үед үзүүлэх тусламж', 4, NULL, 'Яс хугарах үед үзүүлэх тусламж', '<p><span id=\"docs-internal-guid-d116c841-7fff-47ba-672d-295a439cf5ce\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">Ийм үед илрэх шинж тэмдэг нь:</span></span><span style=\"color: rgb(0, 0, 0); font-family: Arial; font-size: 14.6667px; text-align: justify; white-space: pre-wrap;\"><br></span></p><ul><li><span style=\"color: rgb(0, 0, 0); font-family: Arial; font-size: 14.6667px; text-align: justify; white-space: pre-wrap;\">Ясны хугаралын үед: Өвдөнө</span></li><li><span style=\"color: rgb(0, 0, 0); font-family: Arial; font-size: 14.6667px; text-align: justify; white-space: pre-wrap;\">Хугарсан ясны хэлбэр алдагдана</span></li><li><span style=\"color: rgb(0, 0, 0); font-family: Arial; font-size: 14.6667px; text-align: justify; white-space: pre-wrap;\">Хугарсан хэсэгт хавдаж, улайж хөхөрнө</span></li><li><span style=\"color: rgb(0, 0, 0); font-family: Arial; font-size: 14.6667px; text-align: justify; white-space: pre-wrap;\">Тэр орчмын арьс халуун болсон байна.</span></li><li><span style=\"color: rgb(0, 0, 0); font-family: Arial; font-size: 14.6667px; text-align: justify; white-space: pre-wrap;\">Хөдөлгөөн хязгаарлагдана</span></li><li><span style=\"color: rgb(0, 0, 0); font-family: Arial; font-size: 14.6667px; text-align: justify; white-space: pre-wrap;\">Барьж үзэхэд ясны хавиралдах чимээ сонсогдоно.</span></li><li><span style=\"color: rgb(0, 0, 0); font-family: Arial; font-size: 14.6667px; text-align: justify; white-space: pre-wrap;\">Тэр хэсгийн үйл ажиллагаа алдагдана.</span></li></ul><p><span style=\"color: rgb(0, 0, 0); font-family: Arial; font-size: 14.6667px; text-align: justify; white-space: pre-wrap;\">Анхны тусламж үзүүлэхдээ:</span></p><ul><li><span style=\"color: rgb(0, 0, 0); font-family: Arial; font-size: 14.6667px; text-align: justify; white-space: pre-wrap;\">Халдвар хамгааллыг баримталж гараа угаана</span></li><li><span style=\"color: rgb(0, 0, 0); font-family: Arial; font-size: 14.6667px; text-align: justify; white-space: pre-wrap;\">Цус гарч байвал цусыг тогтооно.</span></li><li><span style=\"color: rgb(0, 0, 0); font-family: Arial; font-size: 14.6667px; text-align: justify; white-space: pre-wrap;\">Шархан дээр цэвэр æийргэвч тавьж боолт хийнэ</span></li><li><span style=\"color: rgb(0, 0, 0); font-family: Arial; font-size: 14.6667px; text-align: justify; white-space: pre-wrap;\">Хугарсан ясанд чиг тавьж бооно.</span></li><li><span style=\"color: rgb(0, 0, 0); font-family: Arial; font-size: 14.6667px; text-align: justify; white-space: pre-wrap;\">Чигийг хугарсан яснаас дээш доош 1-2 үеийг өнгөртөл гулзайж муруйхгүй хатуу, гарын доор зүйлээр зөөлөвч хийж чанга сулыг тохируулан тавина.<br></span></li></ul>', '2023-04-27 11:19:37', '2023-04-27 11:20:32', 'new'),
(31, 4, 'Хөлийн хуруу хугарсан үед үзүүлэх тусламж', 4, NULL, 'Хөлийн хуруу хугарсан үед үзүүлэх тусламж', '<p><font color=\"#000000\" face=\"Arial\"><span style=\"font-size: 14.6667px; white-space: pre-wrap;\">Ийм үед илрэх шинж тэмдэг нь:</span></font></p><ul><li><font color=\"#000000\" face=\"Arial\"><span style=\"font-size: 14.6667px; white-space: pre-wrap;\">Өвдөнө</span></font></li><li><font color=\"#000000\" face=\"Arial\"><span style=\"font-size: 14.6667px; white-space: pre-wrap;\">Хавдана</span><br></font></li><li><font color=\"#000000\" face=\"Arial\">Хөхөрнө</font></li><li><font color=\"#000000\" face=\"Arial\">Алхахад бэрхшээлтэй болно.</font></li></ul><p><font color=\"#000000\" face=\"Arial\">Гэмтэл улам хүндэрч хавдахаас сэргийлэхийн тулд</font></p><ul><li><font color=\"#000000\" face=\"Arial\">Хөлийн тавхайг хамгийн эвтэйхэн байрлалд тавих</font></li><li><font color=\"#000000\" face=\"Arial\">Хөдөлгөөнийг хязгаарлаж гэмтэлтэй газар даралт үзүүлэхгүй байх</font></li><li><font color=\"#000000\" face=\"Arial\">Хүйтэн жинг 20 минут тавина. Хүйтэн жин тавихдаа арьстай шууд хүрэлцэхгүйгээр тавина.</font></li><li><font color=\"#000000\" face=\"Arial\">3-4 долоо хоногийн турш өвдөлт даамжрах учир алхаж гишгэлгүй, идэвхтэй хөдөлгөөнөө хязгаарлана.</font></li><li><font color=\"#000000\" face=\"Arial\">Хөлөө эдгэртэл гэмтсэн хуруугаа хамгаалж хатуу ултай болон хатуу материалтай гутал өмсөх хэрэгтэй. Өмссөн гутал тань хөлийн хуруунд даралт үзүүлэхгүй байх шаардлагатай.<br></font></li></ul>', '2023-04-27 11:25:34', NULL, 'new'),
(32, 4, 'Түлэгдэлтэнд үзүүлэх тусламж', 4, NULL, 'Түлэгдэлтэнд үзүүлэх тусламж', '<p>Түлэгдэлт гэдэг нь гал, цахилгаан халуун шингэн, уур, химийн бодис, цацраг идэвхит бодис зэрэг хүчин зүйлийн нөлөөгөөр арьсны болон эрхтэн систем гэмтэхийг хэлнэ. Түлэгдэлт&nbsp; нь арьсыг хир зэрэг хамарснаас шалтгаалж&nbsp; 1,2,3 зэрэг болгон ангилдаг.</p><p><b>1-р зэрэг:</b> Өнгөц, арьсны өнгөн давхарга&nbsp; гэмтэж арьс улайж, хорсож, бага зэрэг хавдана.</p><p><b>2-р зэрэг:</b> Арьсны өнгөн болон жинхэнэ арьс гэмтэж улайж, цэврүү үүсч,&nbsp; өвдөнө.</p><p><b>3-р зэрэг:</b> Арьсны бүх давхарга гэмтэн хавдаж, өвдөлтгүй, арьсны өнгө өөрчлөгдөн хар хүрэн тав үүснэ. Их хэмжээний талбай эзэлсэн тохиолдол дараах шинжүүд илэрнэ. Судасны цохилт олширно. /80 дээш/</p><ul><li>Амьсгал олширно. /20-иос дээш/</li><li>Арьсны өнгө цайж ам хамрын гурвалжин хөхөрнө.</li><li>Толгой эргэнэ.</li><li>Дотор муухайрна.</li><li>Огиулна.</li><li>Бөөлжинө.</li><li>Ам хатна</li><li>Ухаан санаа өөрчлөгдөнө.</li></ul><p>Ямарч хэлбэрийн түлэгдэлтийн үед анхны тусламжийг дараах зарчмаар үзүүлнэ.&nbsp; Урсгал хүйтэн усанд 10-20 минут байлгана. Хүйтэн жин тавьж болохгүй.</p><ul><li>Хувцас эд зүйлсийг яаралтай тайлж авна.</li></ul><p>Харин үүссэн цэврүүг хаглах, хөвөн материал, цас, мөс&nbsp; тавьж, наалдсан хувцсыг хуулж болохгүй. Боолт хийнэ. Эсвэл юмаар хучна. Шокоос сэргийлэх арга хэмжээ авна. Усыг бага багаар ойр ойрхон өгнө.</p><p><b>Галд түлэгдсэн тохиолдолд :</b> Зогс, хэвт, өнхөр гэсэн&nbsp; дарааллаар тусламж үзүүлнэ.</p><p><b>Цахилгааны түлэгдлийн үед:</b> Резинэн бээлий өмсөж цахилгаанаас салгана. Боломжгүй бол цахилгаан дамжуулахгүй мод зэрэг зүйлээр хүнээ холдуулна.<br></p>', '2023-04-27 11:32:45', NULL, 'new'),
(33, 4, 'Цус алдах үед үзүүлэх тусламж', 4, NULL, 'Цус алдах үед үзүүлэх тусламж', '<p>Судасны бүрэн бүтэн байдал алдагдаж цус судаснаас гадагш урсахыг цус алдалт гэнэ.</p><p>Цус алдалтыг ил ба далд гэж ангилдаг. Мөн ямар судас тасарсан бэ гэдгээс нь шалтгаалж:</p><p><b>артер</b> - час улаан өнгөтэй цус олгойдож их хэмжээтэй гарна</p><p><b>венийн</b> - улаан хүрэн, дунд зэргийн цус&nbsp; урсаж гарна.</p><p><b>хялгасан судас</b> - улаан хүрэн цус бага хэмжээтэй шүүрч гарна.</p><p>Ямар судаснаас цус алдаж байгаагаас шалтгаалан илрэх шинж тэмдэг харилцан адилгүй байдаг. Аль ч хэлбэрийн цус алдалтын үед:</p><ul><li>Арьсны өнгө цайх</li><li>Судасны цохилт олшрох</li><li>Толгой эргэх</li><li>Бөөлжис цутгах</li><li>Нүд бүрэлзэх</li><li>Чих шуугих зэрэг шинжүүд илэрнэ.</li></ul><p>Дотуур цус алдалтын үед дээрх ерөнхий шинжүүдээс гадна ямар эрхтний хөндийд цус алдснаас шалтгаалж өөр өөр шинж тэмдэг илэрдэг. Жишээ нь:&nbsp;Тархины судас гэмтэж гадлын хөндийд цус хурвал толгой өвдөх, сэтгэхүйн үйл ажиллагаа алдагдпах, хөдөлгөөний болон саатлын байдалд орж ухаан алдах саажлын шинж тэмдэг илэдэг бол Цээжний хөндийд цус хурвал амьсгаадах, амьсгал давчдах, царай хөхрөх, цээжээр өвдөх, үений хөндийд цус хурвал үений хөдөлгөөн хязгаарлагдах, өвдөх, хөхрөх, шингэн бамбалзах зэрэг шинжүүд илэрдэг. Ер нь их хэмжээний дотуур цус алдвал царай цонхийж цайх, муужрах, хөл гар нь хөрөх, хүйтэн хөлс нь гарах ,толгой&nbsp; нь эргэх цусны даралт буурах шинж тэмдэг илэрдэг. Энэ үед толгойг биеийн байрлалаас доор байрлуулах цусан хангамжийг сайн байлгах, аль болохдааруулахгүй байх шингэн уулгана.</p><p>Анхны тусламж үзүүлэхдээ:</p><ul><li>Халдвар хамгааллын дүрмийг баримтлана</li><li>Шархан дээр цэвэр бинт эсвэл цэвэр даавуу тавина. Тавьсан боолтыг авч болохгүй</li><li>Гэмтсэн судсыг шахаж хатуу биет тавьж даралттай боолт хийнэ.</li><li>Мөчийг өргүүлэн сойлт хийнэ.</li><li>Тайвшруулна. Энэ нь цусны даралтыг багасган цус алдалтыг удаашруулдаг.</li></ul><p>Их гарч байгаа тохиолдолд том судаснууд дээр даралт хийнэ. Артерийн судаснаас цус алдаж байвал гэмтсэн газраас дээгүүр венийн судаснаас цус алдаж байвал гэмтсэн судаснаас доогуур дарна.&nbsp; Судсыг ясанд нь тулгаж дарна. Үүнд эгэмний, гуяны, гүрээний, бугалагны, шууны гэх мэт. Цус алдаж буй мөчнийг нугалан хооронд нь зөөлөвч хийж бооно.</p><ul><li>Чангалууртай боолтыг 15 минут тутам суллаж чангалууртай боолт хийнэ.</li><li>Чангалуур тавьсан хугацааг тэмдэглэж суллаж байхгүй бол өмнөх хэсэг үхжих аюултай.</li><li>Чихээс хийх шаардлагатай бол цэвэр ариун материалаарцус гарч буй хөндийд хуруу, багажны тусламтай чихээс хийнэ.</li><li>Таслагдсан мөчнөөс цус алдахад даралттай чангалуур боолтыг таслагдсан үзүүрээс 1-2 см-т хийнэ. Үүнийгээ эмнэлэг хүртэл авахгүй. Таслагдсан эрхтэнг мөстэй усанд хийж хамт эмнэлэгт аваачина.</li><li>Тухайн хүнээ&nbsp; хучиж тайван хэвтүүлэх, хоолойны товчийг тайлж энгрийг задгайлах, хөлийг өргөх.</li><li>Хамраас цус гарсан тохиолдолд толгойг нь бөхийлгөсөн байрлалтай суулгаад амаар нь амьсгалуулна. Дараа нь хамрын угалзыг шимхэн 10 минут суулгана.<br></li></ul>', '2023-04-27 11:40:47', NULL, 'new');

-- --------------------------------------------------------

--
-- Table structure for table `advice_category`
--

CREATE TABLE `advice_category` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dd` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advice_category`
--

INSERT INTO `advice_category` (`id`, `name`, `dd`) VALUES
(1, 'Эцэг эх, асран хамгаалагчдад зориулсан зөвлөгөө, тусламж', 2),
(4, 'Анхны тусламжийн зөвлөгөө', 3),
(5, 'Багшид зориулсан зөвлөгөө, тусламж', 1);

-- --------------------------------------------------------

--
-- Table structure for table `assessment_child`
--

CREATE TABLE `assessment_child` (
  `id` int(20) NOT NULL,
  `dd` int(10) NOT NULL,
  `age` int(1) NOT NULL,
  `progress` varchar(256) NOT NULL,
  `test` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assessment_child`
--

INSERT INTO `assessment_child` (`id`, `dd`, `age`, `progress`, `test`) VALUES
(1, 1, 2, 'Бие бялдар', 'Дасгалыг дагаж хийнэ'),
(2, 2, 2, 'Бие бялдар', 'Тодорхой чиглэлд мөлхөнө, жижиг гулсуурт авирч, гулсаж бууна'),
(3, 3, 2, 'Бие бялдар', 'Суугаа байдлаас бөмбөгийг хоёр гараар өнхрүүлнэ. Бөмбөгийг хоёр гараараа доороос шидэж багшид өгнө.'),
(4, 4, 2, 'Бие бялдар', 'Дасгалыг дагаж хийнэ.'),
(5, 5, 2, 'Бие бялдар', 'Жижиг тоглоом, эд зүйлийг барина.'),
(6, 6, 0, 'Бие бялдар', 'Нүүр, гараа угаана.'),
(7, 7, 0, 'Бие бялдар', 'Болгоомжлуулсан зарим үйлдлийг хийхгүй байна.'),
(8, 8, 2, 'Танин мэдэхүй', 'Орчноосоо сонссон дуу авиаг дуурайна');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` bigint(20) NOT NULL,
  `buleg` int(11) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `employee_id` int(11) NOT NULL DEFAULT '0',
  `attendance` text,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `buleg`, `date`, `employee_id`, `attendance`, `created_date`, `updated_date`) VALUES
(4, 9, '2023-03-31', 0, '{\"3\":\"4\",\"1\":\"4\"}', '2023-03-31 07:38:15', '2023-03-31 07:46:36'),
(5, 9, '2023-04-09', 0, '{\"3\":\"2\",\"1\":\"1\"}', '2023-04-09 22:17:01', NULL),
(6, 10, '2023-04-09', 13, '{\"4\":\"2\",\"5\":\"2\",\"6\":\"1\",\"10\":\"1\",\"7\":\"1\",\"8\":\"1\",\"9\":\"1\",\"11\":\"1\",\"13\":\"1\",\"12\":\"1\"}', '2023-04-09 22:18:44', NULL),
(7, 10, '2023-04-11', 13, '{\"4\":\"1\",\"5\":\"2\",\"6\":\"1\",\"10\":\"3\",\"7\":\"4\",\"8\":\"4\",\"9\":\"1\",\"11\":\"1\",\"13\":\"1\",\"12\":\"1\"}', '2023-04-11 06:56:41', '2023-04-11 06:56:57'),
(8, 11, '2023-04-12', 14, '{\"19\":\"1\",\"17\":\"2\",\"18\":\"1\",\"20\":\"3\",\"21\":\"1\",\"14\":\"1\",\"15\":\"4\",\"16\":\"1\"}', '2023-04-12 09:32:18', NULL),
(9, 10, '2023-04-13', 13, '{\"4\":\"1\",\"5\":\"2\",\"6\":\"2\",\"10\":\"1\",\"7\":\"1\",\"8\":\"3\",\"9\":\"1\",\"11\":\"1\",\"13\":\"4\",\"12\":\"1\"}', '2023-04-13 03:58:19', '2023-04-13 05:41:59'),
(10, 11, '2023-04-13', 14, '{\"19\":\"1\",\"17\":\"4\",\"18\":\"1\",\"20\":\"2\",\"21\":\"1\",\"14\":\"1\",\"15\":\"3\",\"16\":\"1\"}', '2023-04-13 03:58:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_bin NOT NULL,
  `address` text COLLATE utf8_bin NOT NULL,
  `email` varchar(200) COLLATE utf8_bin NOT NULL,
  `phone` varchar(20) COLLATE utf8_bin NOT NULL,
  `dans` varchar(20) COLLATE utf8_bin NOT NULL,
  `dans1` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `buleg`
--

CREATE TABLE `buleg` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `kinder` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL DEFAULT '0',
  `teacher2_id` int(11) NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buleg`
--

INSERT INTO `buleg` (`id`, `name`, `type`, `kinder`, `teacher_id`, `teacher2_id`, `created_date`) VALUES
(9, 'Болор', 1, 906, 0, 0, '2023-03-27 08:24:18'),
(10, 'Бэлтгэл', 1, 839, 6, 0, '2023-03-29 14:26:40'),
(11, 'Дэгдээхэй', 1, 839, 7, 16, '2023-03-31 13:53:04'),
(12, 'Тугал', 2, 839, 8, 18, '2023-03-31 13:54:06'),
(13, 'Унага', 2, 839, 9, 19, '2023-03-31 13:56:27'),
(14, 'Ишиг', 3, 839, 10, 16, '2023-03-31 13:58:18'),
(16, 'Янзага', 3, 839, 11, 17, '2023-03-31 14:02:55');

-- --------------------------------------------------------

--
-- Table structure for table `buleg_type`
--

CREATE TABLE `buleg_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dd` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buleg_type`
--

INSERT INTO `buleg_type` (`id`, `name`, `dd`) VALUES
(1, 'Бага', 10),
(2, 'Дунд', 20),
(3, 'Ахлах', 30),
(4, 'Бэлтгэл', 40),
(5, 'Холимог', 100);

-- --------------------------------------------------------

--
-- Table structure for table `child`
--

CREATE TABLE `child` (
  `id` bigint(20) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `rd` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent1_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent1_tel` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent2_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent2_tel` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kinders` int(11) NOT NULL DEFAULT '0',
  `buleg` int(11) NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `child`
--

INSERT INTO `child` (`id`, `name`, `surname`, `dob`, `gender`, `rd`, `avatar`, `address`, `parent1_name`, `parent1_tel`, `parent2_name`, `parent2_tel`, `kinders`, `buleg`, `created_date`, `updated_date`) VALUES
(1, 'Тамир', 'Солир', '2019-02-02', 1, 'УЗ54514514512', 'assets/img/avatar.jpg', 'СБД', 'Солир', '45454545', 'Болор', '4', 906, 9, '2023-03-27 09:07:52', NULL),
(3, 'Санж', 'Г', '2020-06-01', 0, 'ЗБ20060157', 'assets/img/avatar.jpg', 'БГД', 'U', '878787878', 'Ү', '4545421', 906, 9, '2023-03-27 09:24:31', NULL),
(4, 'Ананд ', 'Гантулга', '2018-05-29', 0, 'УК18252914', 'assets/img/avatar.jpg', '14-р хороо 31 /б/ байр 35 тоот', 'Гантулга', '89110665', 'Гантулга', '88856363', 839, 10, '2023-03-31 14:14:12', '2023-04-13 10:01:37'),
(5, 'Билэгт', 'Батбаяр', '2018-06-01', 1, 'УО18260111', 'assets/img/avatar.jpg', '14-р хороо 34-р байр 42 тоот', 'Батбаяр', '99058537', 'Буяндэлгэр', '99111359', 839, 10, '2023-03-31 14:16:16', NULL),
(6, 'Ивээл', 'Цацрал', '2018-01-08', 1, 'УЛ18301812', 'assets/img/avatar.jpg', '14-р хороо 34-р байр 25 тоот', 'Цацрал', '95117714', 'Даваасүрэн', '80117714', 839, 10, '2023-03-31 14:17:32', NULL),
(7, 'Мишээл', 'Амаржаргал', '2018-02-08', 0, 'УО18220807', 'assets/img/avatar.jpg', '14-р хороо 34-р байр 123 тоот', 'Амаржаргал', '86047200', 'Хонгорзул', '86047200', 839, 10, '2023-03-31 14:18:30', NULL),
(8, 'Мишээл', 'Оюунболд', '2018-12-12', 0, 'УУ18321225', 'assets/img/avatar.jpg', '14-р хороо 36/а/ байр 170 тоот', 'Оюунболд', '', 'Бадамдарь', '', 839, 10, '2023-03-31 14:19:35', NULL),
(9, 'Мишээл', 'Цогтбаатар', '2018-01-27', 0, 'УА18312743', 'assets/img/avatar.jpg', '14-р хороо 34-р байр 68 тоот', 'Цогтбаатар', '88813001', 'Борхүү', '99914819', 839, 10, '2023-03-31 14:20:39', NULL),
(10, 'Мичидмаа', 'Эрхэмбаяр', '2018-03-09', 0, 'УР18230944', 'assets/img/avatar.jpg', '14-р хороо 70-р байр 62 тоот', 'Эрхэмбаяр', '', 'Батчимэг', '', 839, 10, '2023-03-31 14:21:22', NULL),
(11, 'Мөнхсүлд', 'Занданцэцэг', '2018-09-05', 1, 'УУ18290552', 'assets/img/avatar.jpg', '14-р хороо Цагаанхуаран хотхон 86 /б/байр 75 тоот', 'Батэрдэнэ', '94116951', 'Занданцэцэг', '99765387', 839, 10, '2023-03-31 14:23:41', NULL),
(12, 'Энхрийлэн', 'Лхагвасүрэн', '2018-04-18', 0, 'ОЛ18241807', 'assets/img/avatar.jpg', '14-р хороо Нарт хотхон 95 -4 байр 54 тоот', 'Лхагвасүрэн', '94152568', 'Нандинэрдэнэ', '99760755', 839, 10, '2023-03-31 14:24:51', NULL),
(13, 'Нандинэрдэнэ', 'Хонгор', '2018-05-10', 0, 'УА18251047', 'assets/img/avatar.jpg', '14-р хороо 34-р байр 36 тоот', '', '88012180', 'Баасанжаргал', '99067445', 839, 10, '2023-03-31 14:26:05', NULL),
(14, 'Нэгүүн', 'Батэрдэнэ', '2018-01-24', 1, 'УА18312412', 'assets/img/avatar.jpg', '14-р хороо 31/б / байр 20 тоот', 'Батэрдэнэ', '99105483', 'Дорждулам', '88086831', 839, 11, '2023-03-31 14:32:39', NULL),
(15, 'Онолэрдэнэ', 'Мөнхсайхан', '2018-10-08', 1, 'УА18300830', 'assets/img/avatar.jpg', '14-р хороо 34 байр 1209 тоот', 'Мөнхсайхан', '99097781', 'Мөнхзаяа', '99023985', 839, 11, '2023-03-31 14:33:49', NULL),
(16, 'Эрхэмсайхан', 'Ариунболд', '2018-05-02', 1, 'УЛ18250279', 'assets/img/avatar.jpg', '14-р хороо 34-р байр 126 тоот', '', '', 'Ариунболд', '88099289', 839, 11, '2023-03-31 14:36:29', NULL),
(17, 'Гийгүүлэн', 'Батзолбоо', '2018-09-21', 0, 'УК18292109', 'assets/img/avatar.jpg', '14-р хороо Шинэ үе хотхон 105-2-38 тоот', 'Батзолбоо', '89061401', 'Болортуяа', '89988193', 839, 11, '2023-03-31 14:37:37', NULL),
(18, 'Мандахнаран', 'Гал-эрдэнэ', '2018-03-21', 1, 'УА18231737', 'assets/img/avatar.jpg', '14-р хороо 86 /а/ байр 69 тоот', 'Гал-эрдэнэ', '', 'Сүрэн', '', 839, 11, '2023-03-31 14:38:26', NULL),
(19, 'Ганцогт', 'Дарханцогт', '2018-11-10', 1, 'УХ19311078', 'assets/img/avatar.jpg', '14-р хороо цагаан хуаран   90 - 45', 'Дарханцогт', '80069806', 'Бүжинлхам', '88619806', 839, 11, '2023-03-31 14:39:36', NULL),
(20, 'Мишээл ', 'Алтангэрэл', '2019-05-28', 0, 'АГ19252841', 'assets/img/avatar.jpg', '14-р хороо, 88 /б/ байр  51 тоот', 'Алтангэрэл', '', 'Должинсүрэн', '91520606', 839, 11, '2023-03-31 14:40:52', NULL),
(21, 'Мөнхдүүлэн', 'Энхдэлгэр', '2019-04-27', 0, 'УА19242750', 'assets/img/avatar.jpg', '17-р хороо эмнэлэгийн 8-368', 'Энхдэлгэр', '88472846', 'Ундрал', '99412359', 839, 11, '2023-03-31 14:41:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `name` text,
  `tel` int(11) DEFAULT NULL,
  `description` text NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `member_id`, `name`, `tel`, `description`, `created_date`, `update_date`) VALUES
(3, 0, 'sanjsuren', 95247373, 'Mindsymbol', '2023-03-27 08:41:37', '2023-03-27 08:58:14'),
(5, 0, 'Тамир', 99161843, 'Гар утас', '2023-03-27 09:52:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(10) NOT NULL,
  `eop_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(125) NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `brief` text,
  `description` text NOT NULL,
  `image` varchar(125) NOT NULL,
  `youtube` varchar(125) NOT NULL,
  `file` varchar(125) NOT NULL,
  `audio` varchar(125) NOT NULL,
  `directions` text NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `eop_id`, `title`, `category`, `brief`, `description`, `image`, `youtube`, `file`, `audio`, `directions`, `visible`, `created_date`, `updated_date`) VALUES
(1, 0, '', 0, NULL, 'uris fermentum placerat orci sit amet rhoncus. Aliquam finibus purus vitae convallis commodo. Aenean ex magna, dapibus vitae dignissim non, dapibus sed justo. Sed magna lorem, pellentesque quis varius eget, iaculis ut mauris. Quisque et ornare lacus, eu egestas purus. Nullam lobortis viverra erat, vel pellentesque augue cursus vel. Praesent ut ligula ipsum. Donec viverra ipsum eget diam elementum commodo id id sem. Nam a vulputate tortor. Fusce nec diam arcu.', 'uploads/202303/114503996emchlogo.png', 'https://www.youtube.com/watch?v=Elp2-od98QI', 'uploads/202303/1145038461-р-сарын-тайлан.docx', 'uploads/202303/114503282nature-sounds-meditation-forest-sounds-of-birds-singing-relaxation-4-minutes-360.mp4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ac lorem tincidunt, accumsan velit ut, sollicitudin enim. Donec imperdiet non libero id fringilla. Suspendisse ut sollicitudin ligula. Duis bibendum eros eget varius bibendum.', 0, '2023-03-19 08:39:16', '2023-03-19 10:31:47'),
(2, 0, 'Цагаан сар', 0, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ac lorem tincidunt, accumsan velit ut, sollicitudin enim. Donec imperdiet non libero id fringilla. Suspendisse ut sollicitudin ligula. Duis bibendum eros eget varius bibendum.', 'uploads/202303/11483659emchlogo.png', 'https://www.youtube.com/watch?v=3xRMUDC74Cw', 'uploads/202303/1148365833-настны-бүртгэл-2022-он.docx', 'uploads/202303/11483650nature-sounds-meditation-forest-sounds-of-birds-singing-relaxation-4-minutes-360.mp4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ac lorem tincidunt, accumsan velit ut, sollicitudin enim. Donec imperdiet non libero id fringilla. Suspendisse ut sollicitudin ligula. Duis bibendum eros eget varius bibendum.', 0, '2023-03-19 08:39:16', NULL),
(20, 0, 'ssssssss', 0, NULL, 'sssssss', 'uploads/202303/080152620de.webp', 'https://www.youtube.com/watch?v=3xRMUDC74Cw', 'uploads/202303/080045887Dependent-Drop-Down-List-Excel_v2.xlsx', 'uploads/202303/080045525nature-sounds-meditation-forest-sounds-of-birds-singing-relaxation-4-minutes-360.mp4', 'dddddddd', 0, '2023-03-19 08:39:16', NULL),
(21, 0, 'Науризын баяр', 1, 'Науризын баяр', '<p>Науризын баяр<br></p>', '', '', '', '', 'Уламжлалт', 1, '2023-03-22 05:00:54', NULL),
(22, 0, 'Болжмор ', 5, 'Хүүхдийн дуу ', '', 'uploads/202303/014239263болжмор.PNG', 'https://www.youtube.com/watch?v=eiPCzsCjIF8&t=11s', '', '', 'Дуулж сурах', 1, '2023-03-23 01:42:39', NULL),
(23, 0, 'Амьтан болж тоглоё', 5, 'Хүүхдийн дуу ', '', 'uploads/202303/014637917Амьтан болж тоглоё.PNG', 'https://www.youtube.com/watch?v=Wi8Q1ZJK0ik&t=2s', '', '', 'Дуулж сурах', 1, '2023-03-23 01:46:37', NULL),
(24, 0, 'Бөөн баяр', 5, 'Хүүхдийн дуу ', '', 'uploads/202303/014938412Бөөн баяр.PNG', 'https://www.youtube.com/watch?v=RwMWrFA1TY0', '', '', '', 1, '2023-03-23 01:49:38', NULL),
(26, 0, 'Гоёхон дэлхий', 5, 'Дуу ', '', 'uploads/202303/015124666гоёхон дэлхий.PNG', 'https://www.youtube.com/watch?v=TQbrHLmge9k', '', '', '', 1, '2023-03-23 01:51:24', NULL),
(27, 0, 'Таван хуруу', 5, 'Дуу', '', 'uploads/202303/015310319таван хуруу.PNG', 'https://www.youtube.com/watch?v=C5I4hmF-uDU', '', '', '', 1, '2023-03-23 01:53:10', NULL),
(28, 0, 'Гоёо гоёо', 5, 'Дуу', '', 'uploads/202303/015503923гоёо гоёо.PNG', 'https://www.youtube.com/watch?v=nEqL_jqeyBE', '', '', '', 1, '2023-03-23 01:55:03', NULL),
(29, 0, 'Амин хүүдээ би', 5, 'Хүүхдийн дуу', '', 'uploads/202303/015802193амин хүү.PNG', 'https://www.youtube.com/watch?v=pNGQqpETGt0', '', '', '', 1, '2023-03-23 01:58:02', NULL),
(30, 0, 'Болдоггүй бор өвгөн', 5, 'Үлгэр', '<p><br></p><p>Эрт цагт нисдэг, нисдэггүй хоёр морьтой Болдоггүй бор өвгөн байжээ. \r\nӨвгөн нэг удаа бор хониноос нь цагаан хурга гарангуут баярлаад Хурмаст \r\nтэнгэрт тахих болов. Тэгээд хургыг эхтэй нь хамт хээр орхиод хонио \r\nбуцаачихаад иртэл Хурмастын хон хэрээ хөөрхий хурганы нүдийг ухчихсан \r\nбайжээ. </p>\r\n<p>Болдоггүй бор өвгөн маш их уурлан нисдэг мориороо хэрээг гүйцэж очоод\r\n хошууг нь суга татаад оронд нь мод чихээд орхив. Хурмаст тэнгэр хэрээг \r\nнь хорлосонд уурлан өвгөний нисдэг морийг идүүлэхээр хоёр чоно явуулжээ.\r\n </p>\r\n<p>Өвгөн хоёр мориныхоо байрыг солин уясанд хоёр чоно мэдэлгүй нисдэггүй\r\n морийг нь идэв. Болдоггүй бор өвгөн нисдэг мориороо хөөж, хоёр чоныг \r\nбарьж аваад арьсыг нь амьдаар нь хуулаад салбайлгаад явуулдаг. </p>\r\n<p>Хурмаст тэнгэр маш их хилэгнэн Болдоггүй бор өвгөнийг хорлоод ир гээд\r\n хоёр чөтгөрөө илгээв. Өвгөн тогоон дээр юм буцалгаж байхад хоёр чөтгөр \r\nирээд туурганы завсраар сэмээрхэн хартал өвгөн нүүр рүү нь өнөөх \r\nтогоотойгоо цацан хоёр чөтгөрийн нүүрийг шалз түлжээ. </p>\r\n<p>Хурмаст тэнгэр маш их хилэгнэн тэр муу өвгөнийг алаад ир гээд хоёр \r\nлуу явуулав. Өвгөн Болзоотын бор толгой дээр дээлээ тайлж шилбүүрэнд \r\nөлгөж орхиод хонио эргүүлэхээр явсан хооронд хоёр луу Болзоотын бор \r\nтолгойг нүүрс болтол ниргэсэн байж гэнэ. </p>\r\n<p>Тэгэнгүүт өвгөн хоёр лууг барьж аваад сүүлийг нь тас цавчжээ. Хурмаст\r\n маш их уурлан Болдоггүй бор өвгөнийг дуудаж байцаадаг. Өвгөн ч “Би танд\r\n тахил өргөх гээд хургаа хээр орхисон байсан чинь хэрээ ирээд нүдийг нь \r\nухахаар нь хэрээг шийтгэсэн юм. </p>\r\n<p>Тэгтэл хоёр чоныг та нисдэг морийг минь идээд ир гэж явуулсан байхад \r\nтэр хоёр чинь нисдэггүй морийг маань идчихээр нь бас шийтгэсэн юм. \r\nТэгээд хоёр чөтгөр чинь намайг хорлохын оронд гэрийг маань ураад байхаар\r\n нь нүүрийг нь түлчихсэн юм. Хоёр луу бас намайг биш Болзоотын бор \r\nтолгойг ниргэчихээр нь би сүүлийг нь тасалсан юм” хэмээн өөрийгөө \r\nөмгөөлсөнд Хурмаст бодож бодож өвгөнийг зөв юм хийжээ гээд шан харамж \r\nөгч явуулжээ.</p>', 'uploads/202303/021133151болдоггүй бор өвгөн.PNG', 'https://youtu.be/aqcX-IwgDFI', '', '', '', 1, '2023-03-23 02:11:33', NULL),
(31, 0, 'Монгол дээл', 7, 'Шүлэг', '\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left:1.0in;text-indent:.5in\"><b style=\"mso-bidi-font-weight:normal\"><span style=\"font-size:30.0pt;line-height:\r\n107%;font-family:&quot;Nunito Sans&quot;;color:black;mso-themecolor:text1\">Монгол дээл</span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left:.5in\"><span style=\"font-size:20.0pt;\r\nline-height:107%;font-family:&quot;Nunito Sans&quot;\">Ээжийн оёсон шинэхэн дээл</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left:.5in\"><span style=\"font-size:20.0pt;\r\nline-height:107%;font-family:&quot;Nunito Sans&quot;\">Эвсээрхэн хөнгөхөн хөөрхөн дээл </span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left:.5in\"><span style=\"font-size:20.0pt;\r\nline-height:107%;font-family:&quot;Nunito Sans&quot;\">Тоног эмжээр нь зохисон дээл </span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left:.5in\"><span style=\"font-size:20.0pt;\r\nline-height:107%;font-family:&quot;Nunito Sans&quot;\">Товч шилбэ нь тохирсон дээл<span style=\"mso-tab-count:1\"> </span></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left:.5in\"><span style=\"font-size:20.0pt;\r\nline-height:107%;font-family:&quot;Nunito Sans&quot;\"><span style=\"mso-spacerun:yes\">&nbsp;&nbsp;&nbsp;\r\n</span>Тоос шороон дээр хөрвөөмөөргүй дээл </span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left:.5in\"><span style=\"font-size:20.0pt;\r\nline-height:107%;font-family:&quot;Nunito Sans&quot;\"><span style=\"mso-spacerun:yes\">&nbsp;&nbsp;&nbsp;\r\n</span>Тос өөхөнд бол шүргэмгүй дээл<span style=\"mso-tab-count:1\"> </span></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left:.5in\"><span style=\"font-size:20.0pt;\r\nline-height:107%;font-family:&quot;Nunito Sans&quot;\">Хийсэн эд нь хиргүй байг </span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left:.5in\"><span style=\"font-size:20.0pt;\r\nline-height:107%;font-family:&quot;Nunito Sans&quot;\">Хийлгэсэн эзэн нь хийморьлог яваг\r\nгэж</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left:.5in\"><span style=\"font-size:20.0pt;\r\nline-height:107%;font-family:&quot;Nunito Sans&quot;\">Ачит ээжийн минь ерөөсөн дээл</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left:.5in\"><span style=\"font-size:20.0pt;\r\nline-height:107%;font-family:&quot;Nunito Sans&quot;\">Айлын эгчийн мялаасан дээл</span></p>\r\n\r\n<!--[if gte mso 9]><xml>\r\n <o:OfficeDocumentSettings>\r\n  <o:AllowPNG/>\r\n </o:OfficeDocumentSettings>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n <w:WordDocument>\r\n  <w:View>Normal</w:View>\r\n  <w:Zoom>0</w:Zoom>\r\n  <w:TrackMoves/>\r\n  <w:TrackFormatting/>\r\n  <w:PunctuationKerning/>\r\n  <w:ValidateAgainstSchemas/>\r\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\r\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\r\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\r\n  <w:DoNotPromoteQF/>\r\n  <w:LidThemeOther>EN-US</w:LidThemeOther>\r\n  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>\r\n  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\r\n  <w:Compatibility>\r\n   <w:BreakWrappedTables/>\r\n   <w:SnapToGridInCell/>\r\n   <w:WrapTextWithPunct/>\r\n   <w:UseAsianBreakRules/>\r\n   <w:DontGrowAutofit/>\r\n   <w:SplitPgBreakAndParaMark/>\r\n   <w:EnableOpenTypeKerning/>\r\n   <w:DontFlipMirrorIndents/>\r\n   <w:OverrideTableStyleHps/>\r\n  </w:Compatibility>\r\n  <m:mathPr>\r\n   <m:mathFont m:val=\"Cambria Math\"/>\r\n   <m:brkBin m:val=\"before\"/>\r\n   <m:brkBinSub m:val=\"&#45;-\"/>\r\n   <m:smallFrac m:val=\"off\"/>\r\n   <m:dispDef/>\r\n   <m:lMargin m:val=\"0\"/>\r\n   <m:rMargin m:val=\"0\"/>\r\n   <m:defJc m:val=\"centerGroup\"/>\r\n   <m:wrapIndent m:val=\"1440\"/>\r\n   <m:intLim m:val=\"subSup\"/>\r\n   <m:naryLim m:val=\"undOvr\"/>\r\n  </m:mathPr></w:WordDocument>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n <w:LatentStyles DefLockedState=\"false\" DefUnhideWhenUsed=\"false\"\r\n  DefSemiHidden=\"false\" DefQFormat=\"false\" DefPriority=\"99\"\r\n  LatentStyleCount=\"371\">\r\n  <w:LsdException Locked=\"false\" Priority=\"0\" QFormat=\"true\" Name=\"Normal\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 7\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 8\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 9\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 6\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 7\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 8\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 9\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 7\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 8\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 9\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Normal Indent\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"footnote text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"annotation text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"header\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"footer\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index heading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"35\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"caption\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"table of figures\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"envelope address\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"envelope return\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"footnote reference\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"annotation reference\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"line number\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"page number\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"endnote reference\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"endnote text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"table of authorities\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"macro\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"toa heading\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"10\" QFormat=\"true\" Name=\"Title\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Closing\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Signature\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"1\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"Default Paragraph Font\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text Indent\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Message Header\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"11\" QFormat=\"true\" Name=\"Subtitle\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Salutation\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Date\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text First Indent\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text First Indent 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Note Heading\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text Indent 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text Indent 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Block Text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Hyperlink\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"FollowedHyperlink\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"22\" QFormat=\"true\" Name=\"Strong\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"20\" QFormat=\"true\" Name=\"Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Document Map\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Plain Text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"E-mail Signature\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Top of Form\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Bottom of Form\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Normal (Web)\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Acronym\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Address\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Cite\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Code\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Definition\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Keyboard\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Preformatted\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Sample\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Typewriter\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Variable\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Normal Table\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"annotation subject\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"No List\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Outline List 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Outline List 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Outline List 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Simple 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Simple 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Simple 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Colorful 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Colorful 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Colorful 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 6\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 7\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 8\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 6\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 7\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 8\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table 3D effects 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table 3D effects 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table 3D effects 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Contemporary\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Elegant\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Professional\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Subtle 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Subtle 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Web 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Web 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Web 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Balloon Text\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"Table Grid\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Theme\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" Name=\"Placeholder Text\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"1\" QFormat=\"true\" Name=\"No Spacing\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" Name=\"Revision\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"34\" QFormat=\"true\"\r\n   Name=\"List Paragraph\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"29\" QFormat=\"true\" Name=\"Quote\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"30\" QFormat=\"true\"\r\n   Name=\"Intense Quote\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"19\" QFormat=\"true\"\r\n   Name=\"Subtle Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"21\" QFormat=\"true\"\r\n   Name=\"Intense Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"31\" QFormat=\"true\"\r\n   Name=\"Subtle Reference\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"32\" QFormat=\"true\"\r\n   Name=\"Intense Reference\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"33\" QFormat=\"true\" Name=\"Book Title\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"37\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"Bibliography\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"TOC Heading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"41\" Name=\"Plain Table 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"42\" Name=\"Plain Table 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"43\" Name=\"Plain Table 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"44\" Name=\"Plain Table 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"45\" Name=\"Plain Table 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"40\" Name=\"Grid Table Light\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\" Name=\"Grid Table 1 Light\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\" Name=\"Grid Table 6 Colorful\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\" Name=\"Grid Table 7 Colorful\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\" Name=\"List Table 1 Light\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\" Name=\"List Table 6 Colorful\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\" Name=\"List Table 7 Colorful\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 6\"/>\r\n </w:LatentStyles>\r\n</xml><![endif]--><!--[if gte mso 10]>\r\n<style>\r\n /* Style Definitions */\r\n table.MsoNormalTable\r\n	{mso-style-name:\"Table Normal\";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-parent:\"\";\r\n	mso-padding-alt:0in 5.4pt 0in 5.4pt;\r\n	mso-para-margin-top:0in;\r\n	mso-para-margin-right:0in;\r\n	mso-para-margin-bottom:8.0pt;\r\n	mso-para-margin-left:0in;\r\n	line-height:107%;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:\"Calibri\",sans-serif;\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:\"Times New Roman\";\r\n	mso-bidi-theme-font:minor-bidi;}\r\n</style>\r\n<![endif]-->', 'uploads/202303/045435517дээл.PNG', '', 'uploads/202303/045435389Монгол дээл.docx', '', '', 1, '2023-03-23 04:54:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `content_category`
--

CREATE TABLE `content_category` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dd` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `content_category`
--

INSERT INTO `content_category` (`id`, `name`, `dd`) VALUES
(1, 'Сургалтын материал', 10),
(4, 'Хүүхэд хөгжүүлэх', 20),
(5, 'Хүүхдийн дуу', 0),
(6, 'Үлгэр', 30),
(7, 'Шүлэг', 40);

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `id` int(11) NOT NULL,
  `discount` varchar(200) COLLATE utf8_bin NOT NULL,
  `note` text COLLATE utf8_bin NOT NULL,
  `createdate` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`id`, `discount`, `note`, `createdate`) VALUES
(0, 'Хөнгөлөлтгүй', 'Устгаж болохгүй', '2021-03-04'),
(3, 'Захирлын хөнгөлөлт', 'Захирлын зөвшөөрлөөр ', '2021-03-03'),
(4, 'Квотоорх хөнгөлөлт', 'Улс', '2021-03-12'),
(5, 'Ажилчдын хөнгөлөлт-100%', 'Ажилчдын хүүхэд', '2021-03-12'),
(6, 'Журмын хөнгөлөлт-Ихэр 20%', 'Ихэр хүүхэд-20%', '2021-03-12'),
(7, 'Журмын хөнгөлөлт-Нэг гэрийн 2 хүүхэд-10%', 'Нэг гэрийн 2 хүүхэд-10%', '2021-03-12'),
(8, 'Журмын хөнгөлөлт-Нэг гэрийн 3 хүүхэд-15%', 'Нэг гэрийн 3 хүүхэд-15%', '2021-03-12'),
(9, 'Журмын хөнгөлөлт- 	Улирлаар төлбөр төлөлт-10%', 'Улирлаар төлбөр төлөлт-10%', '2021-03-12'),
(10, 'Журмын хөнгөлөлт- 	Жилээр төлбөр төлөлт-20%', 'Жилээр төлбөр төлөлт-20%', '2021-03-12'),
(11, 'Журмын хөнгөлөлт- 	Хагас жилээрх төлбөр төлөлт-15%', 'Хагас жилээрх төлбөр төлөлт-15%', '2021-03-12'),
(12, 'Журмын хөнгөлөлт- 	Нэг гэрийн 2 хүүхэд-5%', 'Нэг гэрийн 2 хүүхэд-5%', '2021-03-12'),
(13, 'Журмын хөнгөлөлт- 	Нэг гэрийн 2 хүүхэд--20000', 'Нэг гэрийн 2 хүүхэд--20000', '2021-03-12');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(3) NOT NULL,
  `ssn` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `avatar` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel2` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank` int(11) NOT NULL DEFAULT '2',
  `bank_account` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_account_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `education` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `education_rank` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `experience` text COLLATE utf8_unicode_ci,
  `lang_level` text COLLATE utf8_unicode_ci,
  `computer_level` text COLLATE utf8_unicode_ci,
  `ability` text COLLATE utf8_unicode_ci,
  `address` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `kinders` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `urgent1_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urgent1_relation` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urgent1_tel` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urgent2_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urgent2_relation` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urgent2_tel` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `logged_date` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `ssn`, `name`, `surname`, `gender`, `avatar`, `tel`, `tel2`, `email`, `bank`, `bank_account`, `bank_account_name`, `rd`, `education`, `education_rank`, `experience`, `lang_level`, `computer_level`, `ability`, `address`, `birthday`, `kinders`, `position`, `urgent1_name`, `urgent1_relation`, `urgent1_tel`, `urgent2_name`, `urgent2_relation`, `urgent2_tel`, `created_date`, `updated_date`, `logged_date`) VALUES
(7, 'usdy3h', 'Үндсэн багш 2', 'Б', 0, 'assets/img/avatar.jpg', '77000003', '', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 839, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31 13:40:53', '2023-04-22 20:14:41', NULL),
(4, 'f9xzmf', 'Баярсайхан', 'Ү', 0, 'assets/img/avatar.jpg', '77000000', '', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 839, 7, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-29 14:23:05', '2023-04-22 20:14:41', NULL),
(5, 'zfyxdh', 'Төгсзаяа', 'Л', 0, 'assets/img/avatar.jpg', '77000001', '', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 839, 61, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-29 14:23:54', '2023-04-22 20:14:41', NULL),
(6, 'iis4h2', 'Отгонбаяр', 'Д', 0, 'assets/img/avatar.jpg', '77000002', '', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 839, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-29 14:24:54', '2023-04-22 20:14:41', NULL),
(8, 'jz1vwx', 'Үндсэн багш 3', 'Б', 0, 'assets/img/avatar.jpg', '77000004', '', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 839, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31 13:41:32', '2023-04-22 20:14:41', NULL),
(9, '4uekjp', 'Үндсэн багш 4', 'Б', 0, 'assets/img/avatar.jpg', '77000005', '', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 839, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31 13:42:36', '2023-04-22 20:14:41', NULL),
(10, '19wgmy', 'Үндсэн багш 5', 'Б', 0, 'assets/img/avatar.jpg', '77000006', '', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 839, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31 13:43:05', '2023-04-22 20:14:41', NULL),
(11, 'ygzjx1', 'Үндсэн багш 6', 'Б', 0, 'assets/img/avatar.jpg', '77000007', '', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 839, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31 13:43:38', '2023-04-22 20:14:41', NULL),
(12, 'u1x231', 'Үндсэн багш 7', 'Б', 0, 'assets/img/avatar.jpg', '77000008', '', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 839, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31 13:44:53', '2023-04-22 20:14:41', NULL),
(13, 'h4rtxs', 'Үндсэн багш 8', 'Б', 0, 'assets/img/avatar.jpg', '77000009', '', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 839, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31 13:45:19', '2023-04-22 20:14:41', NULL),
(14, '6dgi4f', 'Үндсэн багш 9', 'Б', 0, 'assets/img/avatar.jpg', '77000010', '', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 839, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31 13:45:57', '2023-04-22 20:14:41', NULL),
(15, '4sz4qw', 'Үндсэн багш 10', 'Б', 0, 'assets/img/avatar.jpg', '77000011', '', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 839, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31 13:46:25', '2023-04-22 20:14:41', NULL),
(16, 'xb1b8z', 'Туслах 1', 'Б', 0, 'assets/img/avatar.jpg', '77000012', '', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 839, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31 13:47:07', '2023-04-22 20:14:41', NULL),
(17, 'yfkc8e', 'Туслах 2', 'Б', 0, 'assets/img/avatar.jpg', '77000013', '', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 839, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31 13:48:14', '2023-04-22 20:14:41', NULL),
(18, '9vqppn', 'Туслах 3', 'Б', 0, 'assets/img/avatar.jpg', '77000014', '', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 839, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31 13:48:40', '2023-04-22 20:14:41', NULL),
(19, 'ja7tex', 'Туслах 4', 'Б', 0, 'assets/img/avatar.jpg', '77000015', '', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 839, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31 13:49:09', '2023-04-22 20:14:41', NULL),
(20, 'u6h76z', 'Од', 'Б', 0, 'assets/img/avatar.jpg', '76000001', '', 'od.b@tes.mn', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 906, 7, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-13 08:57:58', '2023-04-22 21:22:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `external_people`
--

CREATE TABLE `external_people` (
  `id` int(3) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `avatar` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel2` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `logged_date` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `external_people`
--

INSERT INTO `external_people` (`id`, `name`, `surname`, `gender`, `avatar`, `tel`, `tel2`, `email`, `company`, `position`, `created_date`, `updated_date`, `logged_date`) VALUES
(1, 'Алтанхундага', 'Хажид', 0, 'uploads/202303/101428_1_Алтанхундага.webp', '99079273', '', '', '', '', '2023-03-27 10:14:02', '2023-03-27 10:14:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(5) NOT NULL,
  `question` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pending` tinyint(1) NOT NULL DEFAULT '1',
  `dd` int(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `pending`, `dd`) VALUES
(1, 'What Is Non Medical Home Health Care?', 'When an individual, for example a senior citizen, is no longer able to independently sustain his or her lifestyle without additional help, non-medical home health care can help the senior with his or her daily routine.', 1, 1),
(3, 'Хэрхэн бүртгүүлэх вэ?', 'Зөвхөн админ хэрэглэгч бүртгэнэ. Админ-тай холбогдоно уу', 0, 0),
(4, 'Сурагчийн ирц хэрхэн бүртгэх вэ?', 'Сурагчийн ирцийн бүлгийн багш оруулах ба бусад хэрэглэгч харах эрхтэй.', 0, 3),
(6, 'Q5', 'A5', 1, 5),
(0, 'Сайн байна уу?', 'сайн', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `import`
--

CREATE TABLE `import` (
  `id` int(11) NOT NULL,
  `A` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `B` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `C` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `city` int(11) NOT NULL DEFAULT '0',
  `D` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `district` int(11) NOT NULL DEFAULT '0',
  `E` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `F` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `G` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `H` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `I` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `J` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `K` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `L` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `M` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `N` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `O` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `P` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `Q` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `R` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `S` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `T` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `U` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `V` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `W` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `X` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `Y` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `Z` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `AA` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `AB` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `import`
--

INSERT INTO `import` (`id`, `A`, `B`, `C`, `city`, `D`, `district`, `E`, `F`, `G`, `H`, `I`, `J`, `K`, `L`, `M`, `N`, `O`, `P`, `Q`, `R`, `S`, `T`, `U`, `V`, `W`, `X`, `Y`, `Z`, `AA`, `AB`) VALUES
(1, '1', '1-р цэцэрлэг', 'Архангай', 2, '', 0, 'Төр', 'А', '6', '6', '', '190', '101', '190', '101', '', '', '6', '1', '25', '20', '1', '1', '1', '1', '8', '8', '6', '6', '9'),
(2, '2', '2-р цэцэрлэг', 'Архангай', 2, '', 0, 'Төр', 'А', '7', '7', '', '207', '103', '207', '103', '', '', '13', '2', '28', '23', '1', '1', '1', '1', '9', '8', '7', '7', '10'),
(3, '3', '3-р цэцэрлэг', 'Архангай', 2, '', 0, 'Төр', 'А', '4', '4', '', '115', '56', '115', '56', '', '', '27', '', '21', '16', '1', '1', '1', '1', '5', '5', '4', '4', '10'),
(4, '4', '4-р цэцэрлэг', 'Архангай', 2, '', 0, 'Төр', 'А', '6', '6', '', '213', '103', '213', '103', '', '', '44', '', '19', '14', '1', '1', '1', '1', '2', '1', '6', '6', '9'),
(5, '5', '5-р цэцэрлэг', 'Архангай', 2, '', 0, 'Төр', 'А', '7', '7', '', '213', '107', '213', '107', '', '', '58', '', '28', '23', '1', '1', '1', '1', '9', '9', '7', '7', '10'),
(6, '6', '6-р цэцэрлэг', 'Архангай', 2, '', 0, 'Төр', 'А', '6', '6', '', '180', '91', '180', '91', '', '', '52', '', '26', '19', '1', '1', '1', '1', '7', '7', '6', '6', '11'),
(7, '7', '7-р цэцэрлэг', 'Архангай', 2, '', 0, 'Төр', 'Б', '2', '2', '', '34', '19', '34', '19', '', '', '22', '', '3', '3', '', '', '', '', '2', '2', '1', '1', ''),
(8, '8', '8-р цэцэрлэг', 'Архангай', 2, '', 0, 'Төр', 'А', '6', '6', '', '189', '83', '189', '83', '', '', '34', '', '27', '20', '1', '1', '1', '1', '8', '8', '6', '6', '11'),
(9, '9', '9-р цэцэрлэг', 'Архангай', 2, '', 0, 'Төр', 'А', '4', '4', '', '106', '51', '106', '51', '', '', '24', '3', '20', '16', '1', '1', '1', '1', '5', '5', '4', '4', '9'),
(10, '10', '10-р цэцэрлэг', 'Архангай', 2, '', 0, 'Төр', 'А', '4', '4', '', '125', '58', '125', '58', '', '', '14', '', '20', '16', '1', '1', '1', '1', '5', '5', '4', '4', '9'),
(11, '11', '11-р цэцэрлэг', 'Архангай', 2, '', 0, 'Төр', 'А', '6', '6', '', '154', '74', '154', '74', '', '', '33', '', '25', '20', '1', '1', '1', '1', '7', '7', '6', '6', '10'),
(12, '12', '12-р цэцэрлэг', 'Архангай', 2, '', 0, 'Төр', 'А', '6', '6', '', '153', '79', '153', '79', '', '', '46', '', '26', '21', '1', '1', '1', '1', '7', '7', '6', '6', '11'),
(13, '13', '13-р цэцэрлэг', 'Архангай', 2, '', 0, 'Төр', 'А', '4', '4', '', '123', '67', '123', '67', '', '', '14', '', '20', '15', '1', '1', '1', '1', '5', '4', '4', '4', '9'),
(14, '14', '14-р цэцэрлэг', 'Архангай', 2, '', 0, 'Төр', 'А', '4', '4', '', '123', '63', '123', '63', '', '', '12', '2', '22', '17', '1', '1', '1', '1', '6', '5', '4', '4', '10'),
(15, '15', 'Батцэнгэл сумын цэцэрлэг', 'Архангай', 2, '', 0, 'Төр', 'С', '6', '6', '', '222', '101', '176', '86', '46', '15', '164', '', '25', '19', '1', '1', '1', '1', '8', '7', '6', '6', '9'),
(16, '16', 'Булган сумын цэцэрлэг', 'Архангай', 2, '', 0, 'Төр', 'С', '5', '4', '1', '173', '91', '120', '67', '53', '24', '83', '', '20', '15', '1', '1', '1', '1', '5', '4', '4', '4', '9'),
(17, '17', 'Жаргалант сумын цэцэрлэг', 'Архангай', 2, '', 0, 'Төр', 'С', '8', '7', '1', '243', '110', '185', '81', '58', '29', '27', '', '26', '22', '1', '1', '1', '1', '8', '8', '7', '7', '9'),
(18, '18', 'Ирээдүй цэцэрлэг', 'Архангай', 2, '', 0, 'Төр', 'А', '7', '7', '', '193', '94', '193', '94', '', '', '50', '', '27', '23', '1', '1', '1', '1', '9', '8', '7', '7', '9'),
(19, '19', 'Ихтамир сумын цэцэрлэг', 'Архангай', 2, '', 0, 'Төр', 'С', '10', '7', '3', '299', '129', '166', '71', '133', '58', '106', '3', '31', '25', '1', '1', '1', '1', '10', '9', '7', '7', '12'),
(20, '20', 'Тариат сумын цэцэрлэг', 'Архангай', 2, '', 0, 'Төр', 'С', '9', '7', '2', '342', '159', '223', '114', '119', '45', '274', '3', '29', '27', '1', '1', '1', '1', '10', '10', '7', '7', '10'),
(21, '21', 'Төвшрүүлэх сумын цэцэрлэг', 'Архангай', 2, '', 0, 'Төр', 'С', '5', '4', '1', '196', '77', '129', '54', '67', '23', '113', '', '22', '18', '1', '1', '1', '1', '6', '6', '4', '4', '10'),
(22, '22', 'Хайрхан сумын цэцэрлэг', 'Архангай', 2, '', 0, 'Төр', 'С', '10', '6', '4', '211', '111', '160', '87', '51', '24', '142', '2', '25', '22', '1', '1', '1', '1', '8', '8', '6', '6', '9'),
(23, '23', 'Хангай сумын цэцэрлэг', 'Архангай', 2, '', 0, 'Төр', 'С', '6', '4', '2', '214', '109', '143', '82', '71', '27', '116', '', '22', '15', '1', '1', '1', '1', '5', '4', '4', '4', '11'),
(24, '24', 'Хашаат сумын цэцэрлэг', 'Архангай', 2, '', 0, 'Төр', 'С', '7', '4', '3', '228', '108', '125', '66', '103', '42', '67', '', '21', '17', '1', '1', '1', '1', '6', '6', '4', '4', '9'),
(25, '25', 'Хотонт сумын  Өндөрсант багийн цэцэрлэг', 'Архангай', 2, '', 0, 'Төр', 'Б', '1', '1', '', '39', '15', '39', '15', '', '', '14', '', '5', '3', '', '', '', '', '1', '1', '1', '1', '3'),
(26, '26', 'Хотонт сумын цэцэрлэг', 'Архангай', 2, '', 0, 'Төр', 'С', '10', '6', '4', '258', '129', '168', '84', '90', '45', '183', '1', '24', '20', '1', '1', '1', '1', '6', '6', '6', '6', '10'),
(27, '27', 'Цахир сумын цэцэрлэг', 'Архангай', 2, '', 0, 'Төр', 'С', '8', '6', '2', '216', '99', '164', '78', '52', '21', '151', '3', '24', '19', '1', '1', '1', '1', '6', '6', '6', '6', '10'),
(28, '28', 'Цэнхэр сумын цэцэрлэг', 'Архангай', 2, '', 0, 'Төр', 'С', '8', '5', '3', '330', '161', '204', '103', '126', '58', '280', '', '25', '20', '1', '1', '1', '1', '7', '6', '5', '5', '11'),
(29, '29', 'Цэцэрлэг сумын цэцэрлэг', 'Архангай', 2, '', 0, 'Төр', 'С', '9', '6', '3', '215', '94', '160', '70', '55', '24', '160', '3', '29', '23', '1', '1', '1', '1', '9', '8', '6', '6', '12'),
(30, '30', 'Чулуут сумын цэцэрлэг', 'Архангай', 2, '', 0, 'Төр', 'С', '8', '7', '1', '289', '142', '191', '104', '98', '38', '146', '', '29', '23', '1', '1', '1', '1', '9', '9', '7', '7', '11'),
(31, '31', 'Эрдэнэмандал сумын цэцэрлэг', 'Архангай', 2, '', 0, 'Төр', 'С', '12', '10', '2', '425', '198', '301', '146', '124', '52', '288', '3', '39', '34', '1', '1', '1', '1', '13', '12', '10', '10', '14'),
(32, '32', 'Өгийнуур сумын цэцэрлэг', 'Архангай', 2, '', 0, 'Төр', 'С', '6', '5', '1', '217', '105', '151', '77', '66', '28', '62', '1', '23', '19', '1', '1', '1', '1', '6', '6', '5', '5', '10'),
(33, '33', 'Өлзийт сумын цэцэрлэг', 'Архангай', 2, '', 0, 'Төр', 'С', '8', '5', '3', '269', '136', '172', '94', '97', '42', '144', '', '23', '18', '1', '1', '1', '1', '7', '5', '5', '5', '9'),
(34, '34', 'Өндөр-Улаан сумын цэцэрлэг', 'Архангай', 2, '', 0, 'Төр', 'С', '11', '8', '3', '400', '188', '239', '105', '161', '83', '349', '1', '37', '29', '1', '1', '1', '1', '11', '11', '8', '8', '16'),
(35, '35', 'Архангай аймгийн эрдэнбулган сумын арвантавдугаар цэцэрлэг', 'Архангай', 2, '', 0, 'Төр', 'А', '4', '4', '', '116', '56', '116', '56', '', '', '32', '', '22', '17', '1', '1', '1', '1', '5', '5', '4', '4', '11'),
(36, '1', '1-р цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'А', '8', '8', '', '259', '133', '259', '133', '', '', '2', '', '35', '28', '1', '1', '1', '1', '10', '9', '8', '8', '15'),
(37, '2', '2-р цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'А', '7', '7', '', '179', '87', '179', '87', '', '', '1', '', '30', '24', '1', '1', '1', '1', '8', '8', '7', '7', '13'),
(38, '3', '3-р цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'А', '8', '8', '', '231', '120', '231', '120', '', '', '4', '', '33', '28', '1', '1', '1', '1', '9', '9', '8', '8', '14'),
(39, '4', '4-р цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'А', '7', '7', '', '204', '100', '204', '100', '', '', '4', '1', '31', '25', '1', '1', '1', '1', '8', '8', '7', '7', '14'),
(40, '5', '5-р цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'А', '7', '7', '', '193', '101', '193', '101', '', '', '', '', '33', '27', '1', '1', '1', '1', '8', '8', '7', '7', '16'),
(41, '6', '6-р цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'А', '6', '6', '', '181', '94', '181', '94', '', '', '3', '', '34', '28', '1', '1', '1', '1', '7', '7', '6', '6', '19'),
(42, '7', '7-р цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'А', '7', '7', '', '196', '96', '196', '96', '', '', '2', '', '33', '25', '1', '1', '1', '1', '8', '8', '7', '7', '16'),
(43, '8', '8-р цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'А', '6', '6', '', '176', '82', '176', '82', '', '', '2', '', '34', '26', '1', '1', '1', '1', '7', '7', '6', '6', '19'),
(44, '9', '9-р цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'А', '7', '7', '', '254', '136', '254', '136', '', '', '4', '1', '36', '29', '1', '1', '1', '1', '8', '8', '7', '7', '19'),
(45, '10', '10-р цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'А', '6', '6', '', '151', '67', '151', '67', '', '', '4', '', '28', '21', '1', '1', '1', '1', '7', '7', '6', '6', '13'),
(46, '11', '11-р цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'А', '5', '5', '', '148', '68', '130', '61', '18', '7', '6', '1', '28', '20', '1', '1', '1', '1', '7', '7', '5', '5', '14'),
(47, '12', '12-р цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'А', '4', '4', '', '109', '56', '109', '56', '', '', '', '', '22', '16', '1', '1', '1', '1', '5', '5', '4', '4', '11'),
(48, '13', '13-р цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'А', '3', '3', '', '92', '47', '92', '47', '', '', '4', '', '21', '12', '1', '1', '1', '1', '3', '3', '3', '3', '13'),
(49, '14', '15-р цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'А', '4', '4', '', '117', '62', '117', '62', '', '', '4', '', '25', '15', '1', '1', '1', '1', '4', '4', '4', '4', '15'),
(50, '15', '16-р цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'А', '4', '4', '', '138', '68', '138', '68', '', '', '', '2', '26', '16', '1', '1', '1', '1', '5', '5', '4', '4', '15'),
(51, '16', '17-р цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'А', '5', '5', '', '162', '67', '162', '67', '', '', '4', '', '26', '19', '1', '1', '1', '1', '6', '6', '5', '5', '13'),
(52, '17', '18-р цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'А', '4', '4', '', '143', '68', '143', '68', '', '', '4', '', '24', '15', '1', '1', '1', '1', '4', '4', '4', '4', '14'),
(53, '18', 'Алтай сумын цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'С', '11', '7', '4', '329', '167', '202', '109', '127', '58', '125', '', '39', '33', '1', '1', '1', '1', '12', '12', '7', '7', '18'),
(54, '19', 'Алтанцөгц сумын цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'С', '5', '5', '', '154', '78', '129', '63', '25', '15', '94', '', '21', '17', '1', '1', '1', '1', '6', '5', '5', '5', '8'),
(55, '20', 'Баяннуур сумын цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'С', '8', '7', '1', '232', '108', '213', '101', '19', '7', '86', '', '32', '26', '1', '1', '1', '1', '8', '8', '7', '7', '15'),
(56, '21', 'Бугат сумын цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'С', '8', '6', '2', '223', '106', '175', '82', '48', '24', '43', '1', '44', '29', '1', '1', '1', '1', '10', '8', '7', '7', '25'),
(57, '22', 'Булган сумын цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'С', '7', '6', '1', '168', '86', '154', '81', '14', '5', '59', '', '27', '22', '1', '1', '1', '1', '7', '7', '6', '6', '12'),
(58, '23', 'Булган сумын Ёлт багийн цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'Б', '2', '2', '', '41', '20', '41', '20', '', '', '26', '', '12', '9', '1', '1', '', '', '2', '2', '2', '2', '7'),
(59, '24', 'Буянт сумын цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'С', '7', '5', '2', '167', '84', '117', '57', '50', '27', '86', '', '27', '21', '1', '1', '1', '1', '8', '8', '5', '5', '12'),
(60, '25', 'Дэлүүн сумын цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'С', '15', '11', '4', '365', '177', '269', '138', '96', '39', '188', '', '41', '35', '1', '1', '1', '1', '13', '12', '11', '11', '15'),
(61, '26', 'Ногооннуур сумын Цагааннуур тосгоны цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'Б', '4', '4', '', '101', '52', '101', '52', '', '', '4', '', '23', '16', '1', '1', '1', '1', '4', '4', '4', '4', '13'),
(62, '27', 'Ногооннуур сумын цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'С', '7', '7', '', '224', '102', '184', '86', '40', '16', '15', '', '35', '26', '1', '1', '1', '1', '10', '10', '7', '7', '16'),
(63, '28', 'Сагсай сумын цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'С', '10', '6', '4', '253', '127', '175', '89', '78', '38', '109', '', '33', '28', '1', '1', '1', '1', '7', '7', '6', '6', '18'),
(64, '29', 'Толбо сумын цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'С', '6', '5', '1', '236', '120', '166', '87', '70', '33', '84', '2', '24', '21', '1', '1', '1', '1', '6', '6', '5', '5', '11'),
(65, '30', 'Улаанхус сумын Ойгор багийн цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'Б', '8', '7', '1', '195', '98', '175', '92', '20', '6', '87', '', '38', '27', '1', '1', '1', '1', '8', '8', '7', '7', '21'),
(66, '31', 'Улаанхус сумын Хөххөтөл багийн цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'Б', '5', '4', '1', '102', '49', '92', '45', '10', '4', '1', '', '25', '16', '', '', '1', '1', '4', '4', '4', '4', '16'),
(67, '32', 'Улаанхус сумын цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'С', '10', '9', '1', '328', '158', '248', '119', '80', '39', '83', '3', '49', '39', '1', '1', '1', '1', '10', '10', '9', '9', '28'),
(68, '33', 'Цэнгэл сумын 1-р цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'С', '11', '7', '4', '295', '148', '178', '88', '117', '60', '90', '', '43', '37', '1', '1', '1', '1', '12', '12', '11', '11', '18'),
(69, '34', 'Цэнгэл сумын 2-р цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'С', '6', '5', '1', '200', '98', '156', '76', '44', '22', '78', '1', '26', '18', '1', '1', '1', '1', '6', '5', '5', '5', '13'),
(70, '35', 'Цэнгэл сумын 3-р цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'С', '5', '5', '', '115', '48', '115', '48', '', '', '45', '', '27', '17', '1', '1', '1', '1', '6', '5', '5', '5', '14'),
(71, '36', 'Өлгий сумын Хотгор багийн цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'Б', '2', '2', '', '60', '29', '60', '29', '', '', '2', '', '15', '10', '1', '1', '', '', '2', '2', '2', '2', '10'),
(72, '37', 'Өлгий сумын 14 дүгээр цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'А', '6', '6', '', '203', '101', '203', '101', '', '', '3', '', '26', '20', '1', '1', '1', '1', '7', '7', '6', '6', '11'),
(73, '38', 'Ногооннуур сумын хүүхдийн 2 дугаар цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'С', '9', '9', '', '227', '104', '227', '104', '', '', '35', '', '45', '33', '1', '1', '1', '1', '10', '10', '9', '9', '24'),
(74, '39', 'Баян-Өлгий.Өлгий.Хүүхдийн арван есдүгээр цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'А', '4', '4', '', '140', '64', '140', '64', '', '', '3', '1', '28', '17', '1', '1', '1', '1', '5', '4', '4', '4', '17'),
(75, '40', 'Баян-Өлгий.Дэлүүн.Хүүхдийн хоёр дугаар цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'С', '10', '8', '2', '248', '127', '198', '94', '50', '33', '149', '1', '37', '30', '1', '1', '1', '1', '9', '9', '8', '8', '18'),
(76, '41', 'Баян-Өлгий.Сагсай.Хүүхдийн хоёр дугаар цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'С', '5', '4', '1', '133', '67', '112', '60', '21', '7', '51', '1', '22', '16', '1', '1', '1', '1', '5', '4', '4', '4', '11'),
(77, '42', 'Баян-Өлгий аймгийн Өлгий сумын хорь дугаар цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'А', '3', '3', '', '93', '53', '93', '53', '', '', '3', '', '17', '15', '1', '1', '1', '1', '4', '4', '3', '3', '8'),
(78, '43', 'Баян-Өлгий аймгийн Өлгий сумын хүүхдийн хорин нэг дүгээр цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'А', '6', '6', '', '205', '105', '205', '105', '', '', '10', '', '26', '23', '1', '1', '1', '1', '7', '7', '6', '6', '11'),
(79, '44', 'Баян-Өлгий аймгийн Цэнгэл сумын хүүхдийн дөрөв дүгээр цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'С', '3', '3', '', '82', '31', '82', '31', '', '', '19', '', '20', '15', '1', '1', '', '', '3', '3', '3', '3', '13'),
(80, '45', 'Баян-Өлгий аймгийн Бугат сумын хүүхдийн хоёр дугаар цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'С', '5', '4', '1', '123', '42', '106', '38', '17', '4', '9', '', '25', '15', '1', '1', '1', '1', '5', '4', '4', '4', '14'),
(81, '46', 'Баян-Өлгий аймгийн Сагсай сумын хүүхдийн гурав дугаар цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'Б', '2', '2', '', '48', '23', '48', '23', '', '', '14', '', '16', '9', '1', '1', '', '', '2', '2', '2', '2', '11'),
(82, '47', 'Баян-Өлгий аймгийн Өлгий сумын хүүхдийн хорин хоёр дугаар цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Төр', 'С', '4', '4', '', '96', '41', '96', '41', '', '', '5', '', '15', '14', '1', '1', '1', '1', '4', '4', '4', '4', '5'),
(83, '1', 'Айбом цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Хувь', 'А', '2', '2', '', '66', '20', '66', '20', '', '', '5', '', '10', '7', '1', '1', '', '', '2', '2', '2', '2', '5'),
(84, '2', 'Бүлдиршин цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Хувь', 'А', '4', '4', '', '112', '61', '112', '61', '', '', '2', '', '14', '12', '1', '1', '1', '1', '4', '4', '4', '4', '4'),
(85, '3', 'Дарын цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Хувь', 'А', '3', '3', '', '75', '33', '75', '33', '', '', '', '', '10', '9', '1', '1', '', '', '3', '3', '3', '3', '3'),
(86, '4', 'Жамал цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Хувь', 'А', '2', '2', '', '60', '25', '60', '25', '', '', '5', '', '8', '5', '1', '1', '', '', '1', '1', '2', '2', '4'),
(87, '5', 'Нурсара цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Хувь', 'А', '4', '4', '', '76', '33', '76', '33', '', '', '1', '1', '9', '8', '1', '1', '', '', '4', '4', '2', '2', '2'),
(88, '6', 'Цоглог цэцэрлэг', 'Баян-Өлгий', 3, '', 0, 'Хувь', 'А', '4', '4', '', '140', '65', '140', '65', '', '', '4', '', '14', '12', '1', '1', '', '', '5', '5', '4', '4', '4'),
(89, '1', '1-р цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'А', '10', '10', '', '335', '178', '335', '178', '', '', '9', '', '38', '32', '1', '1', '1', '1', '12', '10', '10', '10', '14'),
(90, '2', '2-р цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'А', '5', '5', '', '170', '94', '170', '94', '', '', '13', '1', '22', '18', '1', '1', '1', '1', '6', '6', '5', '5', '9'),
(91, '3', '3-р цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'А', '6', '6', '', '170', '90', '170', '90', '', '', '17', '', '26', '21', '1', '1', '1', '1', '7', '7', '6', '6', '11'),
(92, '4', '4-р цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'А', '4', '4', '', '136', '63', '136', '63', '', '', '5', '', '22', '18', '1', '1', '1', '1', '5', '5', '4', '4', '11'),
(93, '5', '5-р цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'А', '8', '8', '', '248', '120', '248', '120', '', '', '18', '3', '32', '28', '1', '1', '1', '1', '9', '9', '8', '8', '13'),
(94, '6', '6-р цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'А', '8', '8', '', '236', '112', '236', '112', '', '', '41', '2', '33', '29', '1', '1', '1', '1', '10', '10', '8', '8', '13'),
(95, '7', '7-р цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'А', '6', '6', '', '193', '99', '193', '99', '', '', '21', '1', '25', '20', '1', '1', '1', '1', '7', '7', '6', '6', '10'),
(96, '8', '9-р цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'А', '3', '3', '', '100', '45', '100', '45', '', '', '8', '', '18', '13', '1', '1', '', '', '4', '4', '3', '3', '10'),
(97, '9', '10-р цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'А', '8', '8', '', '230', '118', '230', '118', '', '', '16', '', '30', '27', '1', '1', '1', '1', '9', '9', '8', '8', '11'),
(98, '10', '11-р цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'А', '6', '6', '', '179', '93', '179', '93', '', '', '33', '', '25', '20', '1', '1', '1', '1', '7', '6', '6', '6', '10'),
(99, '11', '12-р цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'А', '6', '6', '', '169', '95', '169', '95', '', '', '17', '1', '26', '23', '1', '1', '1', '1', '7', '7', '6', '6', '11'),
(100, '12', '13-р цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'А', '4', '4', '', '140', '75', '140', '75', '', '', '22', '1', '20', '16', '1', '1', '1', '1', '5', '5', '4', '4', '9'),
(101, '13', 'Баацагаан сумын цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'С', '7', '4', '3', '186', '94', '121', '60', '65', '34', '119', '1', '14', '12', '1', '1', '', '', '4', '4', '4', '4', '5'),
(102, '14', 'Баян-Овоо сумын цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'С', '5', '4', '1', '134', '65', '104', '54', '30', '11', '68', '', '17', '14', '1', '', '', '', '5', '5', '4', '4', '7'),
(103, '15', 'Баян-Өндөр сумын цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'С', '6', '6', '', '195', '97', '165', '82', '30', '15', '141', '2', '17', '17', '1', '1', '', '', '6', '6', '6', '6', '4'),
(104, '16', 'Баянбулаг сумын цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'С', '4', '4', '', '136', '79', '125', '74', '11', '5', '90', '2', '18', '15', '1', '1', '', '', '5', '5', '4', '4', '8'),
(105, '17', 'Баянговь сумын цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'С', '6', '5', '1', '190', '95', '140', '69', '50', '26', '78', '', '20', '19', '1', '1', '', '', '6', '6', '5', '5', '8'),
(106, '18', 'Баянлиг сумын цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'С', '7', '7', '', '281', '136', '224', '115', '57', '21', '142', '', '23', '21', '1', '1', '1', '1', '8', '8', '6', '6', '7'),
(107, '19', 'Баянцагаан сумын цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'С', '9', '7', '2', '249', '112', '199', '90', '50', '22', '186', '1', '24', '23', '1', '1', '1', '1', '9', '9', '7', '7', '6'),
(108, '20', 'Богд сумын цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'С', '6', '5', '1', '190', '88', '152', '74', '38', '14', '123', '2', '21', '18', '1', '1', '', '', '7', '7', '5', '5', '8'),
(109, '21', 'Бууцагаан сумын Баянбүрдийн цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'Б', '1', '1', '', '31', '12', '31', '12', '', '', '18', '', '5', '4', '', '', '', '', '1', '1', '1', '1', '3'),
(110, '22', 'Бууцагаан сумын цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'С', '8', '7', '1', '219', '110', '203', '107', '16', '3', '130', '1', '28', '24', '1', '1', '1', '1', '9', '9', '7', '7', '10'),
(111, '23', 'Бөмбөгөр сумын цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'С', '8', '6', '2', '240', '119', '172', '87', '68', '32', '170', '', '24', '20', '1', '1', '', '', '8', '8', '6', '6', '9'),
(112, '24', 'Галуут сумын цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'С', '7', '5', '2', '190', '93', '120', '65', '70', '28', '114', '', '21', '17', '1', '1', '', '', '7', '7', '5', '5', '8'),
(113, '25', 'Гурванбулаг сумын цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'С', '5', '4', '1', '163', '79', '108', '56', '55', '23', '135', '', '18', '15', '1', '1', '', '', '6', '6', '4', '4', '7'),
(114, '26', 'Жаргалант сумын цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'С', '6', '5', '1', '184', '104', '152', '87', '32', '17', '94', '', '19', '17', '1', '1', '', '', '7', '7', '5', '5', '6'),
(115, '27', 'Жинст сумын цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'С', '4', '3', '1', '124', '66', '77', '40', '47', '26', '82', '', '14', '11', '1', '1', '', '', '3', '3', '3', '3', '7'),
(116, '28', 'Заг сумын цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'С', '4', '3', '1', '118', '54', '82', '42', '36', '12', '67', '2', '13', '12', '1', '1', '', '', '4', '4', '3', '3', '5'),
(117, '29', 'Хүрээмарал сумын цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'С', '4', '4', '', '120', '60', '120', '60', '', '', '82', '', '14', '11', '1', '1', '', '', '4', '4', '4', '4', '5'),
(118, '30', 'Шаргалжуут багийн цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'Б', '4', '3', '1', '129', '65', '87', '40', '42', '25', '77', '', '16', '13', '1', '1', '', '', '4', '4', '3', '3', '8'),
(119, '31', 'Шинэжинст сумын цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'С', '4', '4', '', '164', '90', '130', '72', '34', '18', '121', '', '16', '16', '1', '1', '', '', '5', '5', '4', '4', '6'),
(120, '32', 'Эрдэнэцогт сумын цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'С', '6', '5', '1', '218', '110', '152', '82', '66', '28', '130', '', '21', '16', '1', '1', '', '', '7', '6', '5', '5', '8'),
(121, '33', 'Өлзийт сумын цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'С', '6', '4', '2', '212', '97', '136', '65', '76', '32', '89', '', '18', '15', '1', '1', '', '', '6', '5', '4', '4', '7'),
(122, '34', '15-р цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'А', '8', '8', '', '303', '151', '303', '151', '', '', '6', '', '33', '29', '1', '1', '1', '1', '10', '10', '8', '8', '13'),
(123, '35', '14-р цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'А', '4', '4', '', '128', '79', '128', '79', '', '', '14', '', '20', '16', '1', '1', '1', '1', '4', '4', '4', '4', '10'),
(124, '36', 'Баянхонгор аймгийн 16 дугаар цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Төр', 'А', '12', '12', '', '407', '203', '407', '203', '', '', '65', '1', '42', '36', '1', '1', '1', '1', '14', '13', '12', '12', '14'),
(125, '1', 'Гэгээхэн цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Хувь', 'А', '4', '4', '', '127', '57', '127', '57', '', '', '11', '', '16', '12', '1', '1', '', '', '4', '4', '4', '4', '7'),
(126, '2', 'Тэмүүлэл цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Хувь', 'А', '1', '1', '', '33', '10', '33', '10', '', '', '3', '', '6', '4', '1', '', '', '', '1', '1', '1', '1', '3'),
(127, '3', 'Тэргэл цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Хувь', 'А', '2', '2', '', '116', '56', '116', '56', '', '', '4', '', '12', '10', '1', '1', '', '', '2', '2', '4', '4', '5'),
(128, '4', 'Эко цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Хувь', 'А', '4', '4', '', '125', '62', '125', '62', '', '', '3', '', '16', '12', '1', '1', '', '', '4', '4', '4', '4', '7'),
(129, '5', 'Эрхэт тамч', 'Баянхонгор', 4, '', 0, 'Хувь', 'А', '2', '2', '', '34', '17', '34', '17', '', '', '7', '', '6', '4', '1', '', '', '', '2', '2', '2', '2', '1'),
(130, '6', 'Тусгай хэрэгцээт цэцэрлэг', 'Баянхонгор', 4, '', 0, 'Хувь', 'А', '1', '1', '', '25', '14', '25', '14', '', '', '5', '25', '7', '7', '1', '1', '', '', '1', '1', '1', '1', '4'),
(131, '7', 'Баян цэцүүхэй', 'Баянхонгор', 4, '', 0, 'Хувь', 'А', '2', '2', '', '71', '37', '71', '37', '', '', '', '', '8', '6', '1', '', '', '', '2', '2', '2', '2', '3'),
(132, '1', '1-р цэцэрлэг', 'Булган', 5, '', 0, 'Төр', 'А', '6', '6', '', '161', '80', '161', '80', '', '', '14', '3', '25', '21', '1', '1', '1', '1', '7', '7', '6', '6', '10'),
(133, '2', '2-р цэцэрлэг', 'Булган', 5, '', 0, 'Төр', 'А', '8', '8', '', '221', '108', '221', '108', '', '', '19', '2', '34', '30', '1', '1', '1', '1', '10', '10', '10', '10', '12'),
(134, '3', '3-р цэцэрлэг', 'Булган', 5, '', 0, 'Төр', 'А', '2', '2', '', '63', '26', '63', '26', '', '', '3', '', '13', '9', '1', '1', '', '', '2', '2', '2', '2', '8'),
(135, '4', '4-р цэцэрлэг', 'Булган', 5, '', 0, 'Төр', 'А', '4', '4', '', '85', '31', '85', '31', '', '', '5', '', '21', '18', '1', '1', '1', '1', '5', '5', '4', '4', '10'),
(136, '5', '6-р цэцэрлэг', 'Булган', 5, '', 0, 'Төр', 'А', '5', '5', '', '140', '74', '140', '74', '', '', '11', '', '23', '18', '1', '1', '1', '1', '6', '5', '5', '5', '10'),
(137, '6', '7-р цэцэрлэг', 'Булган', 5, '', 0, 'Төр', 'А', '7', '7', '', '174', '76', '174', '76', '', '', '18', '1', '27', '22', '1', '1', '1', '1', '7', '7', '7', '7', '11'),
(138, '7', 'Баян-Агт сумын цэцэрлэг', 'Булган', 5, '', 0, 'Төр', 'С', '5', '4', '1', '202', '92', '131', '61', '71', '31', '134', '', '18', '16', '1', '1', '1', '1', '5', '5', '4', '4', '7'),
(139, '8', 'Баяннуур сумын цэцэрлэг', 'Булган', 5, '', 0, 'Төр', 'С', '8', '4', '4', '139', '66', '123', '60', '16', '6', '17', '', '16', '14', '1', '1', '', '', '5', '4', '4', '4', '6'),
(140, '9', 'Бугат сумын цэцэрлэг', 'Булган', 5, '', 0, 'Төр', 'С', '3', '2', '1', '90', '46', '60', '31', '30', '15', '23', '', '9', '9', '1', '1', '', '', '2', '2', '2', '2', '4'),
(141, '10', 'Бүрэгхангай сумын цэцэрлэг', 'Булган', 5, '', 0, 'Төр', 'С', '5', '5', '', '175', '81', '127', '58', '48', '23', '27', '', '21', '20', '1', '1', '1', '1', '7', '7', '5', '5', '7'),
(142, '11', 'Гурванбулаг сумын цэцэрлэг', 'Булган', 5, '', 0, 'Төр', 'С', '8', '5', '3', '193', '90', '130', '58', '63', '32', '121', '', '19', '15', '1', '1', '1', '1', '6', '5', '5', '5', '6'),
(143, '12', 'Дашинчилэн сумын цэцэрлэг', 'Булган', 5, '', 0, 'Төр', 'С', '8', '5', '3', '203', '107', '135', '69', '68', '38', '116', '', '19', '18', '1', '1', '1', '1', '6', '6', '5', '5', '6'),
(144, '13', 'Могод сумын цэцэрлэг', 'Булган', 5, '', 0, 'Төр', 'С', '6', '3', '3', '156', '72', '89', '42', '67', '30', '47', '', '12', '11', '1', '1', '', '', '3', '3', '3', '3', '5'),
(145, '14', 'Орхон сумын цэцэрлэг', 'Булган', 5, '', 0, 'Төр', 'С', '7', '3', '4', '165', '80', '76', '37', '89', '43', '99', '', '11', '10', '1', '1', '', '', '3', '3', '3', '3', '4'),
(146, '15', 'Рашаант сумын цэцэрлэг', 'Булган', 5, '', 0, 'Төр', 'С', '7', '5', '2', '186', '84', '158', '73', '28', '11', '83', '2', '20', '17', '1', '1', '1', '1', '6', '5', '5', '5', '7'),
(147, '16', 'Сайхан сумын цэцэрлэг', 'Булган', 5, '', 0, 'Төр', 'С', '6', '4', '2', '168', '92', '119', '66', '49', '26', '114', '', '15', '14', '1', '1', '', '', '5', '5', '4', '4', '5'),
(148, '17', 'Сэлэнгэ сумын цэцэрлэг', 'Булган', 5, '', 0, 'Төр', 'С', '11', '10', '1', '243', '112', '220', '101', '23', '11', '86', '3', '43', '34', '1', '1', '1', '1', '12', '11', '10', '10', '19'),
(149, '18', 'Тэшиг сумын цэцэрлэг', 'Булган', 5, '', 0, 'Төр', 'С', '14', '12', '2', '256', '118', '235', '107', '21', '11', '78', '2', '42', '37', '1', '1', '1', '1', '13', '12', '12', '12', '15'),
(150, '19', 'Хангал сумын Хялганат багийн цэцэрлэг', 'Булган', 5, '', 0, 'Төр', 'Б', '8', '7', '1', '245', '121', '220', '110', '25', '11', '22', '', '29', '24', '1', '1', '1', '1', '8', '8', '7', '7', '12'),
(151, '20', 'Хангал сумын цэцэрлэг', 'Булган', 5, '', 0, 'Төр', 'С', '3', '2', '1', '61', '26', '45', '19', '16', '7', '8', '', '8', '7', '1', '1', '', '', '2', '2', '2', '2', '3'),
(152, '21', 'Хишиг-Өндөр сумын цэцэрлэг', 'Булган', 5, '', 0, 'Төр', 'С', '7', '5', '2', '169', '89', '133', '72', '36', '17', '86', '3', '21', '19', '1', '1', '1', '1', '6', '6', '5', '5', '8'),
(153, '22', 'Хутаг-Өндөр сумын цэцэрлэг', 'Булган', 5, '', 0, 'Төр', 'С', '13', '10', '3', '385', '174', '295', '134', '90', '40', '188', '3', '42', '32', '1', '1', '1', '1', '12', '11', '10', '10', '18'),
(154, '1', '1-р цэцэрлэг', 'Говь-Алтай', 6, '', 0, 'Төр', 'А', '12', '12', '', '275', '130', '275', '130', '', '', '49', '', '41', '36', '1', '1', '1', '1', '13', '13', '12', '12', '14'),
(155, '2', '2-р цэцэрлэг', 'Говь-Алтай', 6, '', 0, 'Төр', 'А', '4', '4', '', '118', '56', '118', '56', '', '', '21', '', '22', '19', '1', '1', '1', '1', '5', '5', '4', '4', '11'),
(156, '3', '3-р цэцэрлэг', 'Говь-Алтай', 6, '', 0, 'Төр', 'А', '6', '6', '', '185', '82', '185', '82', '', '', '12', '', '27', '23', '1', '1', '1', '', '7', '7', '6', '6', '12'),
(157, '4', '4-р цэцэрлэг', 'Говь-Алтай', 6, '', 0, 'Төр', 'А', '5', '5', '', '121', '66', '121', '66', '', '', '19', '', '24', '19', '1', '1', '1', '1', '6', '5', '5', '5', '11'),
(158, '5', '5-р цэцэрлэг', 'Говь-Алтай', 6, '', 0, 'Төр', 'А', '5', '5', '', '144', '63', '144', '63', '', '', '32', '', '24', '20', '1', '1', '1', '1', '6', '6', '5', '5', '11'),
(159, '6', '6-р цэцэрлэг', 'Говь-Алтай', 6, '', 0, 'Төр', 'А', '4', '4', '', '93', '40', '93', '40', '', '', '26', '', '20', '16', '1', '1', '1', '1', '5', '5', '4', '4', '9'),
(160, '7', '7-р цэцэрлэг', 'Говь-Алтай', 6, '', 0, 'Төр', 'А', '5', '5', '', '100', '49', '100', '49', '', '', '17', '9', '22', '18', '1', '1', '', '', '6', '6', '5', '5', '10'),
(161, '8', '8-р цэцэрлэг', 'Говь-Алтай', 6, '', 0, 'Төр', 'А', '6', '6', '', '156', '62', '156', '62', '', '', '27', '', '26', '22', '1', '1', '1', '1', '7', '7', '6', '6', '11'),
(162, '9', 'Алтай сумын цэцэрлэг', 'Говь-Алтай', 6, '', 0, 'Төр', 'С', '6', '5', '1', '171', '80', '143', '68', '28', '12', '47', '1', '19', '15', '1', '1', '', '', '5', '5', '5', '5', '8'),
(163, '10', 'Баян-Уул сумын цэцэрлэг', 'Говь-Алтай', 6, '', 0, 'Төр', 'С', '5', '4', '1', '155', '85', '129', '72', '26', '13', '81', '', '19', '13', '1', '1', '', '', '5', '5', '4', '4', '9'),
(164, '11', 'Бигэр сумын цэцэрлэг', 'Говь-Алтай', 6, '', 0, 'Төр', 'С', '5', '4', '1', '128', '64', '100', '55', '28', '9', '82', '', '19', '15', '1', '1', '1', '1', '5', '5', '4', '4', '8'),
(165, '12', 'Бугат сумын цэцэрлэг', 'Говь-Алтай', 6, '', 0, 'Төр', 'С', '5', '5', '', '133', '79', '106', '60', '27', '19', '83', '', '22', '18', '1', '1', '', '', '6', '6', '5', '5', '10'),
(166, '13', 'Дарви сумын цэцэрлэг', 'Говь-Алтай', 6, '', 0, 'Төр', 'С', '4', '3', '1', '100', '57', '68', '42', '32', '15', '36', '1', '15', '12', '1', '1', '', '', '4', '4', '3', '3', '7'),
(167, '14', 'Дэлгэр сумын Гуулин багийн цэцэрлэг', 'Говь-Алтай', 6, '', 0, 'Төр', 'Б', '3', '3', '', '52', '26', '52', '26', '', '', '6', '', '14', '11', '1', '1', '', '', '3', '3', '3', '3', '7'),
(168, '15', 'Дэлгэр сумын цэцэрлэг', 'Говь-Алтай', 6, '', 0, 'Төр', 'С', '6', '5', '1', '170', '77', '129', '61', '41', '16', '103', '1', '20', '18', '1', '1', '1', '1', '6', '6', '5', '5', '7'),
(169, '16', 'Жаргалан сумын цэцэрлэг', 'Говь-Алтай', 6, '', 0, 'Төр', 'С', '4', '3', '1', '96', '41', '56', '24', '40', '17', '50', '', '15', '13', '1', '1', '', '', '4', '4', '3', '3', '7'),
(170, '17', '9-р цэцэрлэг', 'Говь-Алтай', 6, '', 0, 'Төр', 'А', '6', '6', '', '137', '63', '137', '63', '', '', '17', '', '26', '19', '1', '1', '1', '1', '7', '6', '6', '6', '11'),
(171, '18', 'Тайшир сумын цэцэрлэг', 'Говь-Алтай', 6, '', 0, 'Төр', 'С', '3', '2', '1', '51', '22', '34', '15', '17', '7', '21', '', '10', '9', '1', '1', '', '', '2', '2', '2', '2', '5'),
(172, '19', 'Тонхил сумын цэцэрлэг', 'Говь-Алтай', 6, '', 0, 'Төр', 'С', '5', '5', '', '159', '72', '123', '61', '36', '11', '87', '', '20', '17', '1', '1', '1', '1', '6', '6', '4', '4', '8'),
(173, '20', 'Төгрөг сумын цэцэрлэг', 'Говь-Алтай', 6, '', 0, 'Төр', 'С', '5', '4', '1', '112', '51', '99', '44', '13', '7', '53', '', '18', '15', '1', '1', '', '', '4', '4', '4', '4', '9'),
(174, '21', 'Халиун сумын цэцэрлэг', 'Говь-Алтай', 6, '', 0, 'Төр', 'С', '4', '3', '1', '110', '52', '79', '38', '31', '14', '47', '1', '13', '12', '1', '1', '', '', '4', '4', '3', '3', '5'),
(175, '22', 'Говь-Алтай аймгийн есөнбулаг сумын хантайшир өргөө цэцэрлэг', 'Говь-Алтай', 6, '', 0, 'Төр', 'А', '4', '4', '', '102', '50', '102', '50', '', '', '7', '', '13', '13', '1', '1', '1', '1', '4', '4', '4', '4', '3'),
(176, '23', 'Хөхморьт сумын цэцэрлэг', 'Говь-Алтай', 6, '', 0, 'Төр', 'С', '5', '4', '1', '138', '67', '101', '50', '37', '17', '83', '1', '18', '14', '1', '1', '', '', '5', '5', '4', '4', '8'),
(177, '24', 'Цогт сумын Баянтоорой багийн цэцэрлэг', 'Говь-Алтай', 6, '', 0, 'Төр', 'Б', '4', '4', '', '90', '42', '68', '30', '22', '12', '40', '1', '17', '12', '1', '1', '', '', '5', '4', '4', '4', '7'),
(178, '25', 'Цогт сумын цэцэрлэг', 'Говь-Алтай', 6, '', 0, 'Төр', 'С', '6', '5', '1', '158', '80', '129', '66', '29', '14', '93', '', '20', '17', '1', '1', '', '', '6', '6', '5', '5', '8'),
(179, '26', 'Цээл сумын цэцэрлэг', 'Говь-Алтай', 6, '', 0, 'Төр', 'С', '5', '5', '', '148', '59', '128', '52', '20', '7', '59', '3', '22', '19', '1', '1', '1', '1', '6', '6', '5', '5', '9'),
(180, '27', 'Чандмань сумын цэцэрлэг', 'Говь-Алтай', 6, '', 0, 'Төр', 'С', '5', '4', '1', '167', '78', '130', '56', '37', '22', '116', '1', '18', '15', '1', '1', '', '', '5', '5', '4', '4', '8'),
(181, '28', 'Шарга сумын цэцэрлэг', 'Говь-Алтай', 6, '', 0, 'Төр', 'С', '4', '3', '1', '101', '49', '74', '35', '27', '14', '73', '1', '13', '11', '1', '1', '', '', '4', '4', '3', '3', '5'),
(182, '29', 'Эрдэнэ сумын цэцэрлэг', 'Говь-Алтай', 6, '', 0, 'Төр', 'С', '5', '4', '1', '135', '67', '82', '37', '53', '30', '95', '', '17', '14', '1', '1', '', '', '5', '5', '4', '4', '7'),
(183, '30', 'Говь-Алтай аймгийн Есөнбулаг сумын аравдугаар дугаар цэцэрлэг', 'Говь-Алтай', 6, '', 0, 'Төр', 'А', '8', '8', '', '223', '95', '223', '95', '', '', '19', '11', '34', '29', '1', '1', '1', '1', '10', '9', '9', '9', '13'),
(184, '31', 'Говь-Алтай аймгийн Есөнбулаг сумын 11 дүгээр цэцэрлэг', 'Говь-Алтай', 6, '', 0, 'Төр', 'А', '13', '13', '', '296', '139', '296', '139', '', '', '38', '', '47', '40', '1', '1', '1', '1', '15', '13', '13', '13', '17'),
(185, '1', '1-р цэцэрлэг', 'Дорноговь', 9, '', 0, 'Төр', 'А', '4', '4', '', '98', '41', '98', '41', '', '', '4', '', '18', '15', '1', '1', '', '', '5', '5', '3', '3', '9'),
(186, '2', '2-р цэцэрлэг', 'Дорноговь', 9, '', 0, 'Төр', 'А', '6', '6', '', '137', '72', '137', '72', '', '', '9', '', '24', '21', '1', '1', '1', '1', '7', '7', '6', '6', '9'),
(187, '3', '3-р цэцэрлэг', 'Дорноговь', 9, '', 0, 'Төр', 'А', '6', '6', '', '134', '64', '134', '64', '', '', '6', '', '24', '22', '1', '1', '1', '1', '7', '7', '6', '6', '9'),
(188, '4', '4-р цэцэрлэг', 'Дорноговь', 9, '', 0, 'Төр', 'А', '5', '5', '', '123', '52', '123', '52', '', '', '10', '1', '21', '18', '1', '1', '', '', '6', '6', '5', '5', '9'),
(189, '5', '5-р цэцэрлэг', 'Дорноговь', 9, '', 0, 'Төр', 'А', '5', '5', '', '146', '86', '146', '86', '', '', '9', '', '21', '17', '1', '1', '', '', '6', '5', '5', '5', '9'),
(190, '6', '6-р цэцэрлэг', 'Дорноговь', 9, '', 0, 'Төр', 'А', '5', '5', '', '115', '55', '115', '55', '', '', '7', '', '21', '18', '1', '1', '', '', '6', '6', '5', '5', '9'),
(191, '7', 'Сайншанд сумын Зүүнбаянгийн хүүхдийн цэцэрлэг', 'Дорноговь', 9, '', 0, 'Төр', 'Б', '6', '6', '', '147', '66', '147', '66', '', '', '5', '', '31', '25', '1', '1', '1', '1', '8', '8', '6', '6', '15'),
(192, '8', '8-р цэцэрлэг', 'Дорноговь', 9, '', 0, 'Төр', 'А', '4', '4', '', '135', '66', '135', '66', '', '', '6', '', '19', '16', '1', '1', '', '', '5', '4', '4', '4', '9'),
(193, '9', '9-р цэцэрлэг', 'Дорноговь', 9, '', 0, 'Төр', 'А', '6', '6', '', '222', '119', '222', '119', '', '', '11', '', '27', '24', '1', '1', '1', '1', '8', '8', '6', '6', '11'),
(194, '10', '10-р цэцэрлэг', 'Дорноговь', 9, '', 0, 'Төр', 'А', '6', '6', '', '186', '79', '186', '79', '', '', '20', '', '25', '22', '1', '1', '1', '1', '7', '7', '6', '6', '10'),
(195, '11', '11-р цэцэрлэг', 'Дорноговь', 9, '', 0, 'Төр', 'А', '7', '7', '', '195', '110', '195', '110', '', '', '9', '9', '28', '25', '1', '1', '1', '1', '9', '9', '7', '7', '10'),
(196, '12', '12-р цэцэрлэг', 'Дорноговь', 9, '', 0, 'Төр', 'А', '6', '6', '', '201', '106', '201', '106', '', '', '7', '', '25', '22', '1', '1', '1', '1', '7', '7', '6', '6', '10'),
(197, '13', 'Айраг сумын цэцэрлэг', 'Дорноговь', 9, '', 0, 'Төр', 'С', '6', '5', '1', '143', '65', '125', '56', '18', '9', '45', '', '21', '17', '1', '1', '', '', '6', '5', '5', '5', '9'),
(198, '14', 'Алтанширээ сумын цэцэрлэг', 'Дорноговь', 9, '', 0, 'Төр', 'С', '4', '3', '1', '69', '33', '53', '27', '16', '6', '28', '', '14', '11', '1', '1', '', '', '3', '3', '3', '3', '7'),
(199, '15', 'Даланжаргалан сумын цэцэрлэг', 'Дорноговь', 9, '', 0, 'Төр', 'С', '8', '7', '1', '171', '82', '151', '74', '20', '8', '38', '', '33', '30', '1', '1', '1', '1', '8', '8', '7', '7', '16'),
(200, '16', 'Дэлгэрэх сумын цэцэрлэг', 'Дорноговь', 9, '', 0, 'Төр', 'С', '4', '3', '1', '105', '49', '74', '35', '31', '14', '67', '', '15', '12', '1', '1', '', '', '3', '3', '3', '3', '8'),
(201, '17', 'Замын-Үүд 1-р цэцэрлэг', 'Дорноговь', 9, '', 0, 'Төр', 'С', '6', '6', '', '186', '85', '186', '85', '', '', '1', '3', '26', '22', '1', '1', '1', '1', '8', '7', '6', '6', '10'),
(202, '18', 'Замын-Үүд 2-р цэцэрлэг', 'Дорноговь', 9, '', 0, 'Төр', 'С', '6', '6', '', '186', '88', '186', '88', '', '', '6', '2', '25', '21', '1', '1', '1', '1', '7', '6', '6', '6', '10'),
(203, '19', 'Замын-Үүд 3-р цэцэрлэг', 'Дорноговь', 9, '', 0, 'Төр', 'С', '8', '8', '', '211', '110', '211', '110', '', '', '9', '1', '32', '28', '1', '1', '1', '1', '10', '10', '8', '8', '12'),
(204, '20', 'Замын-Үүд 4-р цэцэрлэг', 'Дорноговь', 9, '', 0, 'Төр', 'С', '7', '7', '', '138', '72', '138', '72', '', '', '2', '', '29', '25', '1', '1', '1', '1', '9', '9', '7', '7', '11'),
(205, '21', 'Иххэт сумын цэцэрлэг', 'Дорноговь', 9, '', 0, 'Төр', 'С', '5', '4', '1', '117', '56', '99', '49', '18', '7', '60', '', '18', '16', '1', '1', '', '', '5', '5', '4', '4', '8'),
(206, '22', 'Мандах сумын цэцэрлэг', 'Дорноговь', 9, '', 0, 'Төр', 'С', '4', '3', '1', '113', '52', '77', '35', '36', '17', '67', '', '18', '14', '1', '1', '', '', '4', '4', '3', '3', '10'),
(207, '23', 'Сайхандулаан сумын цэцэрлэг', 'Дорноговь', 9, '', 0, 'Төр', 'С', '3', '2', '1', '67', '27', '45', '16', '22', '11', '37', '', '16', '13', '1', '1', '', '', '3', '3', '2', '2', '10'),
(208, '24', 'Улаанбадрах сумын цэцэрлэг', 'Дорноговь', 9, '', 0, 'Төр', 'С', '3', '3', '', '74', '29', '51', '20', '23', '9', '45', '', '15', '13', '1', '1', '', '', '4', '4', '3', '3', '7'),
(209, '25', 'Дорноговь аймгийн Замын-Үүд сумын 7-р цэцэрлэг', 'Дорноговь', 9, '', 0, 'Төр', 'С', '6', '6', '', '177', '82', '177', '82', '', '', '2', '', '24', '21', '1', '1', '1', '1', '7', '7', '6', '6', '9'),
(210, '26', 'Хатанбулаг сумын цэцэрлэг', 'Дорноговь', 9, '', 0, 'Төр', 'С', '7', '6', '1', '151', '82', '93', '52', '58', '30', '57', '2', '23', '21', '1', '1', '', '', '6', '6', '6', '6', '10'),
(211, '27', 'Хөвсгөл сумын цэцэрлэг', 'Дорноговь', 9, '', 0, 'Төр', 'С', '4', '3', '1', '86', '35', '50', '22', '36', '13', '54', '1', '15', '12', '1', '1', '', '', '3', '3', '3', '3', '8'),
(212, '28', 'Эрдэнэ сумын цэцэрлэг', 'Дорноговь', 9, '', 0, 'Төр', 'С', '5', '3', '2', '105', '57', '77', '44', '28', '13', '40', '', '16', '13', '1', '1', '', '', '4', '3', '3', '3', '8'),
(213, '29', 'Өргөн сумын цэцэрлэг', 'Дорноговь', 9, '', 0, 'Төр', 'С', '4', '4', '', '111', '56', '96', '48', '15', '8', '20', '', '18', '15', '1', '1', '', '', '5', '5', '4', '4', '8'),
(214, '30', 'Дорноговь аймгийн Замын үүд сумын хүүхдийн тавдугаар цэцэрлэг', 'Дорноговь', 9, '', 0, 'Төр', 'С', '8', '8', '', '221', '114', '221', '114', '', '', '6', '', '34', '28', '1', '1', '1', '1', '9', '9', '8', '8', '15'),
(215, '31', 'Сайншанд сумын Хүүхдийн 13 дугаар цэцэрлэг', 'Дорноговь', 9, '', 0, 'Төр', 'А', '4', '4', '', '157', '74', '157', '74', '', '', '4', '', '20', '17', '1', '1', '', '', '5', '5', '4', '4', '10'),
(216, '32', 'Замын-Үүд сумын Хүүхдийн 6 дугаар цэцэрлэг', 'Дорноговь', 9, '', 0, 'Төр', 'С', '4', '4', '', '144', '76', '144', '76', '', '', '2', '', '19', '16', '1', '1', '', '', '4', '4', '4', '4', '10'),
(217, '33', 'Сайншанд сумын хүүхдийн арван дөрөвдүгээр цэцэрлэг', 'Дорноговь', 9, '', 0, 'Төр', 'А', '4', '4', '', '123', '60', '123', '60', '', '', '13', '', '20', '17', '1', '1', '', '', '5', '5', '4', '4', '10'),
(218, '1', 'Болор-Эрдэнэ цэцэрлэг', 'Дорноговь', 9, '', 0, 'Хувь', 'С', '1', '1', '', '6', '3', '6', '3', '', '', '', '', '7', '6', '1', '1', '', '', '1', '1', '1', '1', '4'),
(219, '2', 'Гурван билэг цэцэрлэг', 'Дорноговь', 9, '', 0, 'Хувь', 'С', '1', '1', '', '34', '20', '34', '20', '', '', '', '', '5', '4', '1', '1', '', '', '', '', '1', '1', '3'),
(220, '3', 'Жаргалан цэцэрлэг', 'Дорноговь', 9, '', 0, 'Хувь', 'С', '2', '2', '', '41', '18', '41', '18', '', '', '', '', '11', '8', '1', '1', '', '', '2', '2', '2', '2', '6'),
(221, '1', '1-р цэцэрлэг', 'Дорнод', 10, '', 0, 'Төр', 'А', '8', '8', '', '284', '136', '284', '136', '', '', '15', '', '32', '26', '1', '1', '1', '1', '9', '8', '8', '8', '13'),
(222, '2', '2-р цэцэрлэг', 'Дорнод', 10, '', 0, 'Төр', 'А', '10', '10', '', '315', '156', '315', '156', '', '', '38', '', '45', '33', '1', '1', '1', '1', '11', '11', '10', '10', '22'),
(223, '3', '3-р цэцэрлэг', 'Дорнод', 10, '', 0, 'Төр', 'А', '8', '8', '', '179', '81', '179', '81', '', '', '27', '7', '33', '26', '1', '1', '', '', '9', '8', '8', '8', '15'),
(224, '4', '4-р цэцэрлэг', 'Дорнод', 10, '', 0, 'Төр', 'А', '6', '6', '', '216', '123', '216', '123', '', '', '23', '', '25', '20', '1', '1', '1', '1', '7', '6', '6', '6', '10'),
(225, '5', '5-р цэцэрлэг', 'Дорнод', 10, '', 0, 'Төр', 'А', '5', '5', '', '112', '52', '112', '52', '', '', '11', '', '24', '20', '1', '1', '1', '1', '6', '6', '5', '5', '11'),
(226, '6', '6-р цэцэрлэг', 'Дорнод', 10, '', 0, 'Төр', 'А', '8', '8', '', '230', '108', '230', '108', '', '', '34', '4', '46', '27', '1', '1', '1', '1', '9', '9', '8', '8', '27'),
(227, '7', '7-р цэцэрлэг', 'Дорнод', 10, '', 0, 'Төр', 'А', '6', '6', '', '232', '119', '232', '119', '', '', '26', '4', '26', '21', '1', '1', '1', '1', '7', '7', '6', '6', '11'),
(228, '8', '8-р цэцэрлэг', 'Дорнод', 10, '', 0, 'Төр', 'А', '12', '12', '', '367', '180', '367', '180', '', '', '32', '16', '41', '37', '1', '1', '1', '1', '15', '15', '12', '12', '12'),
(229, '9', '10-р цэцэрлэг', 'Дорнод', 10, '', 0, 'Төр', 'А', '12', '12', '', '406', '190', '406', '190', '', '', '20', '5', '45', '38', '1', '1', '1', '1', '14', '13', '12', '12', '17'),
(230, '10', '11-р цэцэрлэг', 'Дорнод', 10, '', 0, 'Төр', 'А', '6', '6', '', '189', '105', '189', '105', '', '', '8', '1', '23', '19', '1', '1', '1', '1', '7', '6', '6', '6', '8'),
(231, '11', '12-р цэцэрлэг', 'Дорнод', 10, '', 0, 'Төр', 'А', '14', '14', '', '389', '209', '389', '209', '', '', '29', '3', '47', '42', '1', '1', '1', '1', '16', '16', '14', '14', '15'),
(232, '12', '14-р цэцэрлэг', 'Дорнод', 10, '', 0, 'Төр', 'А', '11', '11', '', '366', '169', '366', '169', '', '', '31', '1', '37', '32', '1', '1', '1', '1', '12', '11', '11', '11', '12'),
(233, '13', 'Баян-Уул сумын цэцэрлэг', 'Дорнод', 10, '', 0, 'Төр', 'С', '12', '12', '', '306', '154', '296', '152', '10', '2', '76', '', '46', '38', '1', '1', '1', '1', '14', '14', '12', '12', '18'),
(234, '14', 'Баяндун сумын цэцэрлэг', 'Дорнод', 10, '', 0, 'Төр', 'С', '8', '8', '', '214', '95', '214', '95', '', '', '79', '4', '34', '26', '1', '1', '1', '1', '9', '9', '8', '8', '15'),
(235, '15', 'Баянтүмэн сумын цэцэрлэг', 'Дорнод', 10, '', 0, 'Төр', 'С', '7', '6', '1', '135', '75', '128', '71', '7', '4', '45', '1', '26', '19', '1', '1', '1', '1', '7', '7', '6', '5', '11'),
(236, '16', 'Булган сумын цэцэрлэг', 'Дорнод', 10, '', 0, 'Төр', 'С', '5', '4', '1', '125', '61', '100', '50', '25', '11', '59', '', '21', '15', '1', '1', '1', '1', '4', '4', '4', '4', '11'),
(237, '17', 'Гурванзагал сумын цэцэрлэг', 'Дорнод', 10, '', 0, 'Төр', 'С', '3', '3', '', '75', '34', '75', '34', '', '', '27', '', '16', '11', '1', '1', '1', '1', '3', '3', '3', '3', '8'),
(238, '18', 'Дашбалбар сумын цэцэрлэг', 'Дорнод', 10, '', 0, 'Төр', 'С', '8', '8', '', '230', '122', '230', '122', '', '', '132', '2', '37', '32', '1', '1', '1', '1', '9', '9', '8', '8', '18'),
(239, '19', '16 дугаар цэцэрлэг', 'Дорнод', 10, '', 0, 'Төр', 'А', '4', '4', '', '119', '58', '119', '58', '', '', '14', '', '17', '15', '1', '1', '1', '1', '4', '4', '4', '4', '7'),
(240, '20', 'Матад сумын цэцэрлэг', 'Дорнод', 10, '', 0, 'Төр', 'С', '5', '5', '', '152', '74', '151', '74', '1', '', '29', '', '25', '21', '1', '1', '1', '1', '6', '6', '5', '5', '12'),
(241, '21', 'Сэргэлэн сумын цэцэрлэг', 'Дорнод', 10, '', 0, 'Төр', 'С', '5', '4', '1', '136', '67', '116', '57', '20', '10', '51', '2', '19', '14', '1', '1', '1', '1', '4', '4', '4', '4', '9'),
(242, '22', 'Халх гол сумын цэцэрлэг', 'Дорнод', 10, '', 0, 'Төр', 'С', '10', '8', '2', '235', '115', '209', '101', '26', '14', '40', '', '30', '25', '1', '1', '', '', '8', '8', '8', '8', '13'),
(243, '23', 'Хөлөнбуйр сумын цэцэрлэг', 'Дорнод', 10, '', 0, 'Төр', 'С', '5', '5', '', '132', '73', '132', '73', '', '', '26', '', '22', '17', '1', '1', '1', '1', '5', '5', '5', '5', '10'),
(244, '24', 'Цагаан-Овоо сумын цэцэрлэг', 'Дорнод', 10, '', 0, 'Төр', 'С', '7', '6', '1', '207', '103', '197', '98', '10', '5', '100', '', '25', '22', '1', '1', '1', '1', '6', '6', '6', '6', '11'),
(245, '25', 'Чойбалсан сумын цэцэрлэг', 'Дорнод', 10, '', 0, 'Төр', 'С', '5', '4', '1', '139', '68', '117', '61', '22', '7', '57', '', '23', '18', '1', '1', '1', '1', '5', '5', '4', '4', '12'),
(246, '26', 'Чулуунхороот сумын цэцэрлэг', 'Дорнод', 10, '', 0, 'Төр', 'С', '4', '4', '', '127', '54', '127', '54', '', '', '29', '', '12', '12', '1', '1', '', '', '4', '4', '4', '4', '3'),
(247, '27', 'Шинэ хөгжил', 'Дорнод', 10, '', 0, 'Төр', 'А', '4', '4', '', '143', '81', '143', '81', '', '', '13', '', '17', '13', '', '', '1', '1', '4', '4', '4', '4', '8'),
(248, '28', '15-р цэцэрлэг', 'Дорнод', 10, '', 0, 'Төр', 'А', '6', '6', '', '192', '103', '192', '103', '', '', '23', '', '25', '20', '1', '1', '1', '1', '7', '6', '6', '6', '10'),
(249, '29', '9-р цэцэрлэг', 'Дорнод', 10, '', 0, 'Төр', 'А', '10', '10', '', '299', '144', '299', '144', '', '', '15', '', '35', '30', '1', '1', '1', '1', '11', '10', '10', '10', '12'),
(250, '30', 'Дорнод.Хэрлэн.Арван долоо дугаар цэцэрлэг', 'Дорнод', 10, '', 0, 'Төр', 'А', '6', '6', '', '222', '109', '222', '109', '', '', '14', '', '27', '22', '1', '1', '1', '1', '8', '7', '6', '6', '11'),
(251, '31', 'Дорнод.Хэрлэн.Арван найм дугаар цэцэрлэг', 'Дорнод', 10, '', 0, 'Төр', 'С', '5', '5', '', '125', '49', '125', '49', '', '', '9', '', '23', '18', '1', '1', '1', '1', '6', '5', '5', '5', '10'),
(252, '1', 'Бөмбөөлэй цэцэрлэг', 'Дорнод', 10, '', 0, 'Хувь', 'А', '2', '2', '', '60', '27', '60', '27', '', '', '', '', '10', '9', '1', '1', '1', '1', '2', '2', '2', '2', '4'),
(253, '2', 'Дорнод бүжин цэцэрлэг', 'Дорнод', 10, '', 0, 'Хувь', 'А', '1', '1', '', '21', '11', '21', '11', '', '', '1', '', '4', '4', '1', '1', '1', '1', '1', '1', '1', '1', ''),
(254, '3', 'Сэргэлэн багачууд цэцэрлэг', 'Дорнод', 10, '', 0, 'Хувь', 'А', '5', '5', '', '150', '74', '150', '74', '', '', '1', '1', '21', '17', '1', '1', '', '', '6', '6', '5', '5', '9'),
(255, '4', '\"Нарлаг ордон\" цэцэрлэг', 'Дорнод', 10, '', 0, 'Хувь', 'А', '0', '', '', '0', '0', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', '', ''),
(256, '5', '\"Саруул ирээдүй\" цэцэрлэг', 'Дорнод', 10, '', 0, 'Хувь', 'А', '4', '4', '', '119', '58', '119', '58', '', '', '5', '', '14', '10', '1', '1', '', '', '4', '3', '4', '4', '5'),
(257, '1', 'Адаацаг сумын цэцэрлэг', 'Дундговь', 11, '', 0, 'Төр', 'С', '4', '4', '', '154', '71', '102', '45', '52', '26', '57', '', '18', '16', '1', '1', '1', '1', '5', '5', '4', '4', '7'),
(258, '2', 'Баянжаргалан сумын цэцэрлэг', 'Дундговь', 11, '', 0, 'Төр', 'С', '5', '4', '1', '93', '48', '77', '38', '16', '10', '43', '1', '18', '15', '1', '1', '1', '1', '4', '4', '4', '4', '8'),
(259, '3', 'Говь-Угтаал сумын цэцэрлэг', 'Дундговь', 11, '', 0, 'Төр', 'С', '5', '4', '1', '107', '39', '88', '35', '19', '4', '78', '1', '16', '14', '1', '1', '1', '1', '4', '4', '4', '4', '6'),
(260, '4', 'Гурвансайхан сумын цэцэрлэг', 'Дундговь', 11, '', 0, 'Төр', 'С', '5', '4', '1', '124', '61', '102', '50', '22', '11', '81', '', '17', '14', '1', '1', '', '', '5', '5', '4', '4', '7'),
(261, '5', 'Дэлгэрхангай сумын цэцэрлэг', 'Дундговь', 11, '', 0, 'Төр', 'С', '5', '4', '1', '135', '70', '115', '59', '20', '11', '80', '', '19', '16', '1', '1', '1', '1', '5', '5', '4', '4', '8'),
(262, '6', 'Дэлгэрцогт сумын цэцэрлэг', 'Дундговь', 11, '', 0, 'Төр', 'С', '5', '4', '1', '104', '51', '88', '48', '16', '3', '61', '', '16', '13', '1', '1', '', '', '5', '5', '4', '4', '6'),
(263, '7', 'Дэрэн сумын цэцэрлэг', 'Дундговь', 11, '', 0, 'Төр', 'С', '5', '4', '1', '157', '80', '98', '56', '59', '24', '113', '1', '17', '14', '1', '1', '', '', '5', '5', '4', '4', '7'),
(264, '8', 'Луус сумын цэцэрлэг', 'Дундговь', 11, '', 0, 'Төр', 'С', '4', '3', '1', '94', '41', '65', '29', '29', '12', '48', '', '15', '12', '1', '1', '', '', '4', '4', '3', '3', '7');
INSERT INTO `import` (`id`, `A`, `B`, `C`, `city`, `D`, `district`, `E`, `F`, `G`, `H`, `I`, `J`, `K`, `L`, `M`, `N`, `O`, `P`, `Q`, `R`, `S`, `T`, `U`, `V`, `W`, `X`, `Y`, `Z`, `AA`, `AB`) VALUES
(265, '9', 'Сайнцагаан-1-р цэцэрлэг', 'Дундговь', 11, '', 0, 'Төр', 'А', '6', '6', '', '198', '94', '198', '94', '', '', '18', '1', '25', '21', '1', '1', '1', '1', '7', '7', '6', '6', '10'),
(266, '10', 'Сайнцагаан-2-р цэцэрлэг', 'Дундговь', 11, '', 0, 'Төр', 'А', '4', '4', '', '127', '69', '127', '69', '', '', '16', '1', '19', '15', '1', '1', '1', '1', '4', '4', '4', '4', '9'),
(267, '11', 'Сайнцагаан-3-р цэцэрлэг', 'Дундговь', 11, '', 0, 'Төр', 'А', '7', '7', '', '260', '133', '260', '133', '', '', '48', '3', '29', '24', '1', '1', '1', '1', '8', '7', '7', '7', '12'),
(268, '12', 'Сайнцагаан-4-р цэцэрлэг', 'Дундговь', 11, '', 0, 'Төр', 'А', '5', '5', '', '235', '125', '224', '119', '11', '6', '15', '2', '24', '20', '1', '1', '1', '1', '6', '6', '5', '5', '11'),
(269, '13', 'Сайнцагаан-5-р цэцэрлэг', 'Дундговь', 11, '', 0, 'Төр', 'А', '6', '6', '', '202', '91', '202', '91', '', '', '40', '1', '26', '22', '1', '1', '1', '1', '7', '7', '6', '6', '11'),
(270, '14', 'Сайнцагаан-6-р цэцэрлэг', 'Дундговь', 11, '', 0, 'Төр', 'А', '5', '5', '', '188', '97', '182', '94', '6', '3', '17', '4', '23', '19', '1', '1', '1', '1', '6', '6', '5', '5', '10'),
(271, '15', 'Сайнцагаан-7-р цэцэрлэг', 'Дундговь', 11, '', 0, 'Төр', 'А', '4', '4', '', '158', '87', '152', '85', '6', '2', '32', '', '21', '16', '1', '1', '1', '1', '5', '5', '4', '4', '10'),
(272, '16', 'Сайхан-Овоо сумын цэцэрлэг', 'Дундговь', 11, '', 0, 'Төр', 'С', '5', '4', '1', '114', '56', '71', '37', '43', '19', '50', '1', '17', '15', '1', '1', '1', '1', '4', '4', '4', '4', '7'),
(273, '17', 'Хулд сумын цэцэрлэг', 'Дундговь', 11, '', 0, 'Төр', 'С', '5', '4', '1', '132', '59', '105', '47', '27', '12', '55', '', '18', '13', '1', '1', '1', '1', '4', '4', '4', '4', '8'),
(274, '18', 'Цагаандэлгэр сумын цэцэрлэг', 'Дундговь', 11, '', 0, 'Төр', 'С', '3', '2', '1', '52', '31', '40', '26', '12', '5', '25', '', '13', '10', '1', '1', '', '', '2', '2', '2', '2', '8'),
(275, '19', 'Эрдэнэдалай сумын цэцэрлэг', 'Дундговь', 11, '', 0, 'Төр', 'С', '10', '10', '', '376', '176', '299', '143', '77', '33', '251', '1', '34', '30', '1', '1', '1', '1', '11', '11', '10', '10', '11'),
(276, '20', 'Өлзийт сумын цэцэрлэг', 'Дундговь', 11, '', 0, 'Төр', 'С', '4', '3', '1', '98', '44', '75', '37', '23', '7', '53', '', '14', '11', '1', '1', '', '', '3', '3', '3', '3', '7'),
(277, '21', 'Өндөршил сумын цэцэрлэг', 'Дундговь', 11, '', 0, 'Төр', 'С', '4', '4', '', '109', '47', '100', '44', '9', '3', '66', '', '16', '14', '1', '1', '1', '1', '4', '4', '4', '4', '6'),
(278, '22', 'Дундговь аймгийн Сайнцагаан сумын 8 дугаар цэцэрлэг', 'Дундговь', 11, '', 0, 'Төр', 'А', '4', '4', '', '174', '82', '169', '81', '5', '1', '48', '2', '21', '17', '1', '1', '1', '1', '5', '5', '4', '4', '10'),
(279, '1', 'Алдархаан сумын цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'С', '3', '2', '1', '67', '31', '48', '24', '19', '7', '9', '', '10', '8', '1', '1', '', '', '2', '2', '2', '2', '5'),
(280, '2', 'Асгат сумын цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'С', '4', '3', '1', '77', '34', '68', '30', '9', '4', '22', '', '13', '10', '1', '1', '', '', '3', '3', '3', '3', '6'),
(281, '3', 'Баянтэс сумын цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'С', '7', '7', '', '153', '64', '153', '64', '', '', '23', '', '25', '22', '1', '1', '1', '1', '9', '8', '7', '7', '7'),
(282, '4', 'Баянхайрхан сумын цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'С', '4', '4', '', '98', '54', '98', '54', '', '', '39', '', '14', '12', '1', '1', '', '', '4', '4', '4', '4', '5'),
(283, '5', 'Дөрвөлжин сумын цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'С', '4', '4', '', '99', '45', '99', '45', '', '', '32', '', '14', '13', '1', '1', '', '', '4', '4', '4', '4', '5'),
(284, '6', 'Завханмандал сумын цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'С', '4', '4', '', '87', '41', '82', '38', '5', '3', '40', '2', '18', '15', '1', '1', '1', '1', '6', '5', '4', '4', '6'),
(285, '7', 'Идэр сумын цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'С', '4', '4', '', '132', '64', '132', '64', '', '', '37', '', '13', '12', '1', '1', '', '', '5', '5', '4', '4', '3'),
(286, '8', 'Их-Уул сумын 2-р цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'С', '4', '4', '', '102', '43', '102', '43', '', '', '19', '', '18', '15', '1', '1', '', '', '5', '5', '4', '4', '8'),
(287, '9', 'Их-Уул сумын цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'С', '8', '8', '', '239', '114', '235', '111', '4', '3', '130', '1', '34', '28', '1', '1', '1', '1', '10', '10', '8', '8', '14'),
(288, '10', 'Нөмрөг сумын цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'С', '3', '3', '', '87', '42', '80', '38', '7', '4', '21', '', '12', '11', '1', '1', '', '', '4', '4', '3', '3', '4'),
(289, '11', 'Отгон сумын цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'С', '5', '4', '1', '142', '71', '122', '60', '20', '11', '76', '', '16', '12', '1', '1', '', '', '4', '4', '4', '4', '7'),
(290, '12', 'Сантмаргац сумын цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'С', '5', '4', '1', '121', '50', '101', '43', '20', '7', '56', '', '17', '14', '1', '1', '', '', '5', '5', '4', '4', '7'),
(291, '13', 'Сонгино сумын цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'С', '5', '4', '1', '115', '60', '100', '51', '15', '9', '43', '', '15', '14', '1', '1', '', '', '4', '4', '4', '4', '6'),
(292, '14', 'Тосонцэнгэл 1-р цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'С', '5', '4', '1', '133', '71', '129', '71', '4', '', '16', '', '18', '14', '1', '1', '', '', '5', '5', '4', '4', '8'),
(293, '15', 'Тосонцэнгэл 2-р цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'С', '4', '4', '', '148', '66', '148', '66', '', '', '3', '', '18', '14', '1', '1', '', '', '5', '5', '4', '4', '8'),
(294, '16', 'Тосонцэнгэл 3-р цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'С', '3', '3', '', '68', '27', '68', '27', '', '', '9', '', '15', '11', '1', '1', '', '', '4', '4', '3', '3', '7'),
(295, '17', 'Тосонцэнгэл 4-р цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'С', '4', '3', '1', '114', '58', '96', '45', '18', '13', '32', '', '14', '10', '1', '1', '', '', '4', '4', '3', '3', '6'),
(296, '18', 'Тосонцэнгэл 5-р цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'С', '4', '4', '', '150', '84', '150', '84', '', '', '11', '', '17', '13', '1', '1', '', '', '5', '5', '4', '4', '7'),
(297, '19', 'Тэлмэн сумын цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'С', '6', '5', '1', '183', '80', '154', '65', '29', '15', '99', '', '20', '17', '1', '1', '1', '1', '6', '6', '5', '5', '7'),
(298, '20', 'Тэс сумын цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'С', '7', '6', '1', '181', '89', '166', '85', '15', '4', '35', '', '24', '19', '1', '1', '1', '1', '6', '6', '6', '6', '10'),
(299, '21', 'Түдэвтэй сумын цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'С', '3', '3', '', '79', '34', '79', '34', '', '', '6', '', '11', '10', '1', '1', '', '', '3', '3', '3', '3', '4'),
(300, '22', 'Улиастай 1-р цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'А', '12', '12', '', '399', '199', '399', '199', '', '', '16', '2', '42', '37', '1', '1', '1', '1', '13', '13', '12', '12', '15'),
(301, '23', 'Улиастай 2-р цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'А', '7', '7', '', '202', '100', '202', '100', '', '', '15', '2', '27', '22', '1', '1', '1', '1', '8', '8', '7', '7', '10'),
(302, '24', 'Улиастай 3-р цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'А', '9', '9', '', '309', '138', '309', '138', '', '', '36', '', '31', '27', '1', '1', '1', '1', '10', '10', '9', '9', '10'),
(303, '25', 'Улиастай 4-р цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'А', '6', '6', '', '180', '97', '180', '97', '', '', '37', '', '24', '20', '1', '1', '1', '1', '7', '7', '6', '6', '9'),
(304, '26', 'Улиастай 5-р цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'А', '9', '8', '1', '285', '144', '278', '142', '7', '2', '20', '', '27', '23', '1', '1', '', '', '9', '9', '8', '8', '9'),
(305, '27', 'Улиастай 6-р цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'А', '4', '4', '', '99', '47', '99', '47', '', '', '7', '', '19', '15', '1', '1', '', '', '5', '5', '4', '4', '9'),
(306, '28', 'Улиастай 7-р цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'А', '4', '4', '', '116', '64', '116', '64', '', '', '20', '', '21', '12', '1', '1', '', '', '5', '4', '4', '4', '11'),
(307, '29', 'Улиастай 8-р цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'А', '5', '5', '', '133', '60', '133', '60', '', '', '16', '', '23', '17', '1', '1', '1', '1', '6', '6', '5', '5', '10'),
(308, '30', 'Улиастай 9-р цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'А', '5', '5', '', '94', '46', '94', '46', '', '', '8', '', '22', '17', '1', '1', '1', '1', '6', '6', '5', '5', '9'),
(309, '31', 'Ургамал сумын цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'С', '4', '4', '', '94', '44', '94', '44', '', '', '48', '', '16', '13', '1', '1', '', '', '4', '4', '4', '4', '7'),
(310, '32', 'Цагаанхайрхан сумын цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'С', '3', '2', '1', '81', '39', '64', '35', '17', '4', '35', '', '12', '9', '1', '1', '', '', '2', '2', '2', '2', '7'),
(311, '33', 'Цагаанчулуут сумын цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'С', '4', '4', '', '85', '41', '85', '41', '', '', '33', '1', '17', '14', '1', '1', '', '', '5', '5', '4', '4', '7'),
(312, '34', 'Цэцэн-Уул сумын цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'С', '4', '4', '', '82', '37', '82', '37', '', '', '35', '', '16', '12', '1', '1', '', '', '5', '5', '4', '4', '6'),
(313, '35', 'Шилүүстэй сумын цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'С', '4', '4', '', '95', '47', '95', '47', '', '', '54', '', '15', '11', '1', '1', '', '', '4', '4', '4', '4', '6'),
(314, '36', 'Эрдэнэхайрхан сумын цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'С', '2', '2', '', '55', '27', '55', '27', '', '', '28', '', '10', '9', '1', '1', '', '', '2', '2', '2', '2', '5'),
(315, '37', 'Яруу сумын цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'С', '3', '3', '', '66', '37', '66', '37', '', '', '27', '2', '15', '11', '1', '1', '', '', '3', '3', '3', '3', '8'),
(316, '38', 'Завхан аймгийн Тосонцэнгэл сумын хүүхдийн зургаадугаар цэцэрлэг', 'Завхан', 12, '', 0, 'Төр', 'С', '3', '3', '', '135', '70', '135', '70', '', '', '22', '1', '14', '10', '1', '1', '', '', '4', '4', '3', '3', '6'),
(317, '1', 'Багачууд цэцэрлэг', 'Завхан', 12, '', 0, 'Хувь', 'А', '2', '2', '', '21', '13', '21', '13', '', '', '3', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1'),
(318, '2', 'Гэгээ цэцэрлэг', 'Завхан', 12, '', 0, 'Хувь', 'С', '2', '2', '', '40', '22', '40', '22', '', '', '13', '', '8', '6', '1', '1', '', '', '2', '2', '2', '1', '3'),
(319, '3', 'Хүүхдийн Эхлэл-Элит кидс цэцэрлэг', 'Завхан', 12, '', 0, 'Хувь', 'А', '1', '1', '', '31', '14', '31', '14', '', '', '1', '', '4', '4', '1', '1', '', '', '1', '1', '1', '1', '1'),
(320, '4', 'СМАРТ КИДС хүүхдийн цэцэрлэг', 'Завхан', 12, '', 0, 'Хувь', 'А', '2', '2', '', '20', '17', '20', '17', '', '', '', '', '8', '7', '1', '1', '', '', '2', '2', '2', '2', '3'),
(321, '1', 'Арвайхээр-1-р цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'А', '5', '5', '', '146', '72', '146', '72', '', '', '29', '', '25', '20', '1', '1', '1', '1', '6', '6', '5', '5', '12'),
(322, '2', 'Арвайхээр-2-р цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'А', '12', '8', '4', '445', '219', '285', '135', '160', '84', '40', '', '32', '29', '1', '1', '1', '1', '9', '9', '8', '8', '13'),
(323, '3', 'Арвайхээр-3-р цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'А', '5', '5', '', '170', '91', '170', '91', '', '', '25', '', '25', '21', '1', '1', '1', '1', '6', '6', '5', '5', '12'),
(324, '4', 'Арвайхээр-4-р цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'А', '7', '7', '', '251', '134', '251', '134', '', '', '3', '2', '32', '28', '1', '1', '1', '1', '9', '9', '7', '7', '14'),
(325, '5', 'Арвайхээр-5-р цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'А', '6', '6', '', '229', '107', '229', '107', '', '', '30', '1', '27', '24', '1', '', '1', '1', '7', '7', '6', '6', '12'),
(326, '6', 'Арвайхээр-6-р цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'А', '7', '7', '', '220', '109', '220', '109', '', '', '16', '1', '30', '27', '1', '1', '1', '1', '8', '8', '7', '7', '13'),
(327, '7', 'Арвайхээр-7-р цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'А', '7', '7', '', '222', '113', '222', '113', '', '', '16', '', '29', '24', '1', '1', '1', '1', '8', '7', '7', '7', '12'),
(328, '8', 'Арвайхээр-8-р цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'А', '9', '9', '', '316', '154', '316', '154', '', '', '17', '1', '35', '31', '1', '1', '1', '1', '10', '10', '9', '9', '14'),
(329, '9', 'Арвайхээр-9-р цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'А', '6', '6', '', '211', '108', '211', '108', '', '', '22', '1', '29', '24', '1', '', '1', '1', '7', '6', '6', '6', '14'),
(330, '10', 'Баруунбаян-Улаан сумын цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'С', '4', '4', '', '248', '120', '112', '57', '136', '63', '70', '', '16', '14', '1', '1', '', '', '5', '5', '4', '4', '6'),
(331, '11', 'Бат-Өлзий 1-р цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'С', '11', '10', '1', '398', '186', '320', '151', '78', '35', '54', '2', '33', '30', '1', '1', '1', '1', '10', '10', '10', '10', '11'),
(332, '12', 'Бат-Өлзий 2-р цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'С', '6', '5', '1', '211', '90', '137', '63', '74', '27', '116', '', '18', '17', '1', '1', '', '', '5', '5', '5', '5', '7'),
(333, '13', 'Баян Өндөр сумын цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'С', '6', '5', '1', '254', '112', '135', '70', '119', '42', '6', '', '18', '17', '1', '1', '1', '1', '6', '6', '5', '5', '5'),
(334, '14', 'Баянгол сумын цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'С', '9', '5', '4', '243', '123', '122', '68', '121', '55', '166', '', '18', '15', '1', '1', '1', '1', '6', '6', '5', '5', '5'),
(335, '15', 'Өвөрхангай аймгийн Богд сумын 1-р цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'С', '5', '4', '1', '203', '96', '156', '75', '47', '21', '47', '', '14', '12', '1', '1', '', '', '4', '4', '3', '3', '6'),
(336, '16', 'Бүрд сумын цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'С', '4', '3', '1', '188', '91', '91', '45', '97', '46', '88', '', '13', '12', '1', '1', '', '', '3', '3', '3', '3', '6'),
(337, '17', 'Гучин-Ус сумын цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'С', '7', '4', '3', '128', '57', '106', '50', '22', '7', '74', '2', '16', '14', '1', '1', '', '', '5', '5', '4', '4', '6'),
(338, '18', 'Есөнзүйл сумын цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'С', '8', '4', '4', '146', '75', '72', '40', '74', '35', '89', '', '14', '13', '1', '1', '', '', '4', '4', '4', '4', '5'),
(339, '19', 'Зүүнбаян-Улаан сумын цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'С', '6', '4', '2', '196', '95', '103', '58', '93', '37', '90', '', '15', '13', '1', '1', '', '', '4', '4', '4', '4', '6'),
(340, '20', 'Нарийнтээл сумын Баянтээг багийн цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'Б', '3', '2', '1', '54', '23', '44', '18', '10', '5', '13', '', '7', '7', '1', '1', '', '', '2', '2', '2', '2', '2'),
(341, '21', 'Нарийнтээл сумын цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'С', '7', '5', '2', '181', '86', '134', '60', '47', '26', '66', '4', '20', '18', '1', '1', '1', '1', '5', '5', '5', '5', '8'),
(342, '22', 'Орхон цогцолбор', 'Өвөрхангай', 14, '', 0, 'Төр', 'С', '9', '8', '1', '254', '122', '232', '115', '22', '7', '42', '1', '26', '25', '1', '1', '1', '1', '8', '8', '7', '7', '9'),
(343, '23', 'Сант сумын цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'С', '9', '5', '4', '223', '103', '145', '77', '78', '26', '', '', '19', '16', '1', '1', '1', '1', '6', '5', '5', '5', '6'),
(344, '24', 'Тарагт сумын цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'С', '5', '4', '1', '141', '65', '89', '38', '52', '27', '42', '', '15', '14', '1', '1', '', '', '4', '4', '4', '4', '6'),
(345, '25', 'Төгрөг сумын цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'С', '6', '5', '1', '193', '88', '117', '56', '76', '32', '108', '2', '19', '17', '1', '1', '1', '1', '6', '6', '5', '5', '6'),
(346, '26', 'Уянга сумын Жаргалант багийн цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'Б', '4', '3', '1', '173', '88', '110', '55', '63', '33', '38', '', '13', '11', '1', '1', '', '', '3', '3', '3', '3', '6'),
(347, '27', 'Уянга сумын цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'С', '9', '6', '3', '310', '142', '229', '106', '81', '36', '104', '1', '22', '19', '1', '1', '1', '1', '7', '6', '6', '6', '7'),
(348, '28', 'Хайрхандулаан сумын цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'С', '4', '3', '1', '177', '96', '104', '59', '73', '37', '89', '', '13', '10', '1', '1', '', '', '3', '3', '3', '3', '6'),
(349, '29', 'Хархорин-1-р цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'С', '5', '4', '1', '158', '82', '139', '73', '19', '9', '42', '1', '17', '16', '1', '1', '', '', '5', '5', '4', '4', '7'),
(350, '30', 'Хархорин-2-р цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'С', '6', '5', '1', '188', '92', '162', '83', '26', '9', '9', '', '21', '20', '1', '1', '1', '1', '6', '6', '5', '5', '8'),
(351, '31', 'Хархорин-4-р цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'С', '3', '3', '', '148', '72', '123', '57', '25', '15', '15', '', '16', '12', '1', '1', '', '', '3', '3', '3', '3', '9'),
(352, '32', 'Хархорин-5-р цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'С', '5', '4', '1', '120', '71', '108', '64', '12', '7', '5', '', '18', '14', '1', '1', '', '', '4', '4', '4', '4', '9'),
(353, '33', 'Хужирт-1-р цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'С', '7', '7', '', '176', '81', '176', '81', '', '', '70', '', '25', '23', '1', '1', '1', '1', '8', '7', '7', '7', '8'),
(354, '34', 'Хужирт-2-р цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'С', '6', '5', '1', '138', '64', '127', '60', '11', '4', '36', '1', '19', '18', '1', '1', '1', '1', '5', '5', '5', '5', '7'),
(355, '35', 'Өлзийт сумын цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'С', '3', '2', '1', '54', '27', '40', '22', '14', '5', '30', '', '10', '9', '1', '1', '', '', '2', '2', '2', '2', '5'),
(356, '36', 'Өвөрхангай аймгийн Арвайхээр сумын 10 дугаар цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'А', '6', '6', '', '218', '101', '218', '101', '', '', '18', '', '29', '25', '1', '1', '1', '1', '7', '7', '6', '6', '14'),
(357, '37', 'Өвөрхангай аймгийн Арвайхээр сумын 11 дугаар цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'А', '3', '3', '', '41', '15', '41', '15', '', '', '6', '41', '22', '19', '1', '1', '1', '1', '4', '4', '6', '6', '10'),
(358, '38', 'Өвөрхангай аймгийн Арвайхээр сумын 12 дугаар цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'А', '16', '8', '8', '513', '254', '325', '167', '188', '87', '62', '1', '31', '27', '1', '1', '1', '1', '9', '9', '8', '8', '12'),
(359, '39', 'Өвөрхангай аймгийн Арвайхээр сумын 13 дугаар цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'А', '6', '6', '', '249', '115', '249', '115', '', '', '8', '', '27', '23', '1', '1', '1', '1', '7', '7', '6', '6', '12'),
(360, '40', 'Өвөрхангай аймгийн Богд сумын хоёр дугаар цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'С', '5', '4', '1', '184', '89', '149', '73', '35', '16', '49', '', '15', '13', '1', '1', '', '', '4', '4', '4', '4', '6'),
(361, '41', 'Өвөрхангай аймгийн Хужирт сумын гурав дугаар цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'С', '3', '3', '', '91', '42', '91', '42', '', '', '21', '', '13', '12', '1', '1', '', '', '3', '3', '3', '3', '6'),
(362, '42', 'Өвөрхангай аймгийн Уянга сумын хоёр дугаар цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'С', '5', '4', '1', '262', '125', '157', '82', '105', '43', '51', '', '14', '13', '1', '1', '', '', '4', '4', '4', '4', '5'),
(363, '43', 'Арвайхээр сумын арван дөрөв дүгээр цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'А', '6', '6', '', '239', '126', '239', '126', '', '', '15', '2', '27', '23', '1', '1', '1', '1', '6', '6', '6', '6', '13'),
(364, '44', 'Өвөрхангай аймгийн Хужирт сумын 4 дүгээр цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Төр', 'С', '3', '2', '1', '71', '39', '59', '32', '12', '7', '24', '', '14', '12', '1', '1', '', '', '2', '2', '2', '2', '9'),
(365, '1', 'Жаргалант ирээдүйн мөрөөдөл цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Хувь', 'А', '1', '1', '', '30', '10', '30', '10', '', '', '', '', '6', '5', '1', '1', '', '', '1', '1', '1', '1', '3'),
(366, '2', 'Түмэнбялзуухай цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Хувь', 'С', '2', '2', '', '42', '22', '42', '22', '', '', '15', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1'),
(367, '3', 'Өвөрхангай аймгийн Арвайхээр сумын Арвайхээр Нархан цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Хувь', 'А', '2', '2', '', '44', '23', '44', '23', '', '', '12', '', '4', '3', '1', '1', '', '', '1', '1', '1', '1', '1'),
(368, '4', 'Өвөрхангай аймгийн Арвайхээр сумын Бидэнд хайрлагдах зүрх цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Хувь', 'А', '1', '1', '', '8', '0', '8', '', '', '', '1', '', '4', '4', '1', '1', '', '', '1', '1', '1', '1', '1'),
(369, '5', 'Өвөрхангай аймгийн Арвайхээр сумын Дэлгэрэх хөгжлийн гэрэл цэцэрлэг', 'Өвөрхангай', 14, '', 0, 'Хувь', 'А', '2', '2', '', '49', '22', '49', '22', '', '', '7', '', '5', '4', '1', '1', '', '', '1', '', '1', '1', '2'),
(370, '1', 'Баян-овоо 19-р цэцэрлэг', 'Өмнөговь', 15, '', 0, 'Төр', 'С', '3', '3', '', '115', '56', '90', '46', '25', '10', '47', '1', '13', '11', '1', '1', '', '', '4', '3', '3', '3', '5'),
(371, '2', 'Баяндалай 13-р цэцэрлэг', 'Өмнөговь', 15, '', 0, 'Төр', 'С', '3', '3', '', '91', '40', '71', '31', '20', '9', '52', '', '11', '10', '1', '1', '', '', '3', '3', '3', '3', '4'),
(372, '3', 'Булган 5-р цэцэрлэг', 'Өмнөговь', 15, '', 0, 'Төр', 'С', '3', '3', '', '121', '60', '121', '60', '', '', '72', '', '9', '9', '', '', '', '', '3', '3', '3', '3', '3'),
(373, '4', 'Гурвантэс 3-р цэцэрлэг', 'Өмнөговь', 15, '', 0, 'Төр', 'С', '9', '9', '', '268', '118', '250', '108', '18', '10', '63', '1', '32', '30', '1', '1', '1', '1', '10', '10', '9', '9', '11'),
(374, '5', 'Даланзадгад 1-р цэцэрлэг', 'Өмнөговь', 15, '', 0, 'Төр', 'А', '8', '8', '', '341', '162', '341', '162', '', '', '7', '1', '32', '26', '1', '1', '1', '', '10', '8', '8', '8', '12'),
(375, '6', 'Даланзадгад 2-р цэцэрлэг', 'Өмнөговь', 15, '', 0, 'Төр', 'А', '6', '6', '', '238', '121', '238', '121', '', '', '10', '1', '25', '22', '1', '1', '1', '1', '7', '7', '6', '6', '10'),
(376, '7', 'Даланзадгад 4-р цэцэрлэг', 'Өмнөговь', 15, '', 0, 'Төр', 'А', '7', '7', '', '258', '143', '258', '143', '', '', '11', '', '26', '23', '1', '1', '', '', '8', '8', '7', '7', '10'),
(377, '8', 'Даланзадгад 8-р цэцэрлэг', 'Өмнөговь', 15, '', 0, 'Төр', 'А', '7', '7', '', '252', '128', '252', '128', '', '', '14', '1', '32', '25', '1', '1', '1', '1', '8', '8', '7', '7', '15'),
(378, '9', 'Даланзадгад 9-р цэцэрлэг', 'Өмнөговь', 15, '', 0, 'Төр', 'А', '6', '6', '', '215', '104', '215', '104', '', '', '9', '', '24', '21', '1', '1', '1', '1', '6', '6', '6', '6', '10'),
(379, '10', 'Даланзадгад 11-р цэцэрлэг', 'Өмнөговь', 15, '', 0, 'Төр', 'А', '7', '7', '', '277', '138', '277', '138', '', '', '1', '', '28', '25', '1', '1', '1', '1', '8', '8', '7', '7', '11'),
(380, '11', 'Даланзадгад 23-р цэцэрлэг', 'Өмнөговь', 15, '', 0, 'Төр', 'А', '5', '5', '', '162', '71', '162', '71', '', '', '15', '9', '22', '19', '1', '1', '1', '1', '6', '6', '5', '5', '9'),
(381, '12', 'Даланзадгад 24-р цэцэрлэг', 'Өмнөговь', 15, '', 0, 'Төр', 'А', '7', '7', '', '266', '132', '266', '132', '', '', '12', '', '28', '25', '1', '1', '1', '1', '8', '8', '7', '7', '11'),
(382, '13', 'Даланзадгад 25-р цэцэрлэг', 'Өмнөговь', 15, '', 0, 'Төр', 'А', '8', '8', '', '305', '166', '305', '166', '', '', '13', '5', '30', '27', '1', '1', '1', '1', '9', '9', '8', '8', '11'),
(383, '14', 'Даланзадгад 26-р цэцэрлэг', 'Өмнөговь', 15, '', 0, 'Төр', 'А', '8', '8', '', '325', '155', '325', '155', '', '', '13', '', '33', '27', '1', '1', '1', '1', '9', '9', '8', '8', '14'),
(384, '15', 'Мандал-Овоо 17-р цэцэрлэг', 'Өмнөговь', 15, '', 0, 'Төр', 'С', '4', '4', '', '99', '52', '84', '43', '15', '9', '63', '', '14', '11', '', '', '', '', '4', '4', '4', '4', '6'),
(385, '16', 'Манлай 15-р цэцэрлэг', 'Өмнөговь', 15, '', 0, 'Төр', 'С', '8', '8', '', '181', '89', '168', '81', '13', '8', '80', '', '27', '26', '1', '1', '1', '1', '9', '9', '8', '8', '8'),
(386, '17', 'Номгон 14-р цэцэрлэг', 'Өмнөговь', 15, '', 0, 'Төр', 'С', '4', '4', '', '121', '64', '95', '54', '26', '10', '41', '', '14', '13', '1', '1', '', '', '4', '4', '4', '4', '5'),
(387, '18', 'Ноён 16-р цэцэрлэг', 'Өмнөговь', 15, '', 0, 'Төр', 'С', '3', '3', '', '82', '41', '82', '41', '', '', '29', '', '11', '11', '', '', '', '', '4', '4', '3', '3', '4'),
(388, '19', 'Сэврэй 20-р цэцэрлэг', 'Өмнөговь', 15, '', 0, 'Төр', 'С', '4', '4', '', '121', '63', '95', '47', '26', '16', '36', '', '15', '14', '1', '1', '', '', '6', '6', '4', '4', '4'),
(389, '20', 'Ханбогд 21-р цэцэрлэг', 'Өмнөговь', 15, '', 0, 'Төр', 'С', '5', '5', '', '159', '68', '149', '62', '10', '6', '19', '', '19', '16', '1', '1', '1', '1', '6', '6', '5', '4', '6'),
(390, '21', 'Ханбогд 22-р цэцэрлэг', 'Өмнөговь', 15, '', 0, 'Төр', 'С', '7', '7', '', '244', '115', '237', '114', '7', '1', '15', '1', '30', '27', '1', '1', '1', '1', '8', '8', '7', '7', '13'),
(391, '22', 'Ханхонгор 10-р цэцэрлэг', 'Өмнөговь', 15, '', 0, 'Төр', 'С', '4', '3', '1', '81', '41', '61', '33', '20', '8', '35', '1', '13', '11', '1', '1', '', '', '4', '4', '3', '3', '5'),
(392, '23', 'Хүрмэн 18-р цэцэрлэг', 'Өмнөговь', 15, '', 0, 'Төр', 'С', '4', '3', '1', '97', '48', '72', '33', '25', '15', '24', '', '12', '11', '1', '1', '', '', '3', '3', '3', '3', '5'),
(393, '24', 'Цогт-Овоо 12-р цэцэрлэг', 'Өмнөговь', 15, '', 0, 'Төр', 'С', '7', '6', '1', '178', '99', '140', '80', '38', '19', '47', '', '29', '22', '1', '1', '1', '1', '9', '6', '6', '6', '12'),
(394, '25', 'Цогтцэций 6-р цэцэрлэг', 'Өмнөговь', 15, '', 0, 'Төр', 'С', '6', '6', '', '150', '83', '150', '83', '', '', '15', '', '20', '18', '', '', '1', '1', '7', '7', '6', '6', '6'),
(395, '26', 'Цогтцэций 7-р цэцэрлэг', 'Өмнөговь', 15, '', 0, 'Төр', 'С', '10', '10', '', '329', '158', '329', '158', '', '', '8', '', '40', '33', '1', '1', '1', '', '13', '11', '10', '10', '15'),
(396, '27', 'Цогтцэций 27-р цэцэрлэг', 'Өмнөговь', 15, '', 0, 'Төр', 'С', '8', '8', '', '223', '114', '223', '114', '', '', '10', '3', '29', '24', '', '', '1', '1', '10', '10', '8', '8', '10'),
(397, '28', '28-р цэцэрлэг', 'Өмнөговь', 15, '', 0, 'Төр', 'С', '4', '4', '', '136', '71', '114', '65', '22', '6', '41', '1', '15', '14', '1', '1', '', '', '5', '5', '4', '4', '5'),
(398, '29', 'Өмнөговь аймгийн Ханбогд сумын 29 дүгээр  цэцэрлэг', 'Өмнөговь', 15, '', 0, 'Төр', 'С', '8', '8', '', '311', '137', '311', '137', '', '', '12', '', '33', '28', '1', '1', '1', '1', '10', '9', '8', '8', '13'),
(399, '30', 'Өмнөговь аймгийн Цогтцэций сумын гуч дугаар цэцэрлэг', 'Өмнөговь', 15, '', 0, 'Төр', 'С', '8', '8', '', '296', '139', '273', '125', '23', '14', '23', '', '30', '28', '1', '1', '1', '1', '10', '10', '8', '8', '10'),
(400, '31', 'Өмноговь аймгийн Ханбогд сумын 32 дугаар цэцэрлэг', 'Өмнөговь', 15, '', 0, 'Төр', 'Б', '2', '2', '', '37', '13', '37', '13', '', '', '1', '', '10', '7', '', '', '', '', '2', '2', '2', '2', '6'),
(401, '1', '1-р цэцэрлэг', 'Сүхбаатар', 16, '', 0, 'Төр', 'А', '9', '8', '1', '308', '149', '286', '140', '22', '9', '26', '1', '34', '30', '1', '1', '1', '1', '10', '10', '8', '8', '14'),
(402, '2', '2-р цэцэрлэг', 'Сүхбаатар', 16, '', 0, 'Төр', 'А', '8', '7', '1', '258', '128', '244', '122', '14', '6', '23', '', '29', '25', '1', '1', '1', '1', '9', '8', '7', '7', '11'),
(403, '3', '3-р цэцэрлэг', 'Сүхбаатар', 16, '', 0, 'Төр', 'А', '7', '7', '', '285', '132', '236', '109', '49', '23', '45', '', '29', '23', '1', '1', '1', '1', '8', '7', '7', '7', '12'),
(404, '4', '4-р цэцэрлэг', 'Сүхбаатар', 16, '', 0, 'Төр', 'А', '6', '5', '1', '199', '104', '177', '94', '22', '10', '32', '', '22', '17', '1', '1', '', '', '7', '6', '5', '5', '9'),
(405, '5', '5-р цэцэрлэг', 'Сүхбаатар', 16, '', 0, 'Төр', 'А', '4', '4', '', '155', '77', '147', '74', '8', '3', '22', '', '19', '16', '1', '1', '', '', '5', '5', '4', '4', '9'),
(406, '6', '6-р цэцэрлэг', 'Сүхбаатар', 16, '', 0, 'Төр', 'А', '4', '4', '', '116', '58', '116', '58', '', '', '11', '', '20', '16', '1', '1', '', '', '5', '5', '4', '4', '10'),
(407, '7', '7-р цэцэрлэг', 'Сүхбаатар', 16, '', 0, 'Төр', 'А', '5', '4', '1', '117', '64', '113', '64', '4', '', '15', '', '20', '15', '1', '1', '', '', '5', '5', '4', '4', '10'),
(408, '8', '8-р цэцэрлэг', 'Сүхбаатар', 16, '', 0, 'Төр', 'А', '7', '7', '', '262', '130', '241', '122', '21', '8', '53', '1', '33', '29', '1', '1', '1', '1', '10', '10', '7', '7', '14'),
(409, '9', '9-р цэцэрлэг', 'Сүхбаатар', 16, '', 0, 'Төр', 'А', '7', '7', '', '257', '118', '246', '114', '11', '4', '34', '', '31', '27', '1', '1', '1', '1', '9', '9', '7', '7', '13'),
(410, '10', '10-р цэцэрлэг', 'Сүхбаатар', 16, '', 0, 'Төр', 'А', '5', '5', '', '182', '88', '164', '83', '18', '5', '46', '', '22', '16', '1', '1', '', '', '6', '5', '5', '5', '10'),
(411, '11', 'Асгат сумын цэцэрлэг', 'Сүхбаатар', 16, '', 0, 'Төр', 'С', '5', '4', '1', '168', '90', '113', '58', '55', '32', '91', '', '19', '16', '1', '1', '', '', '5', '5', '4', '4', '9'),
(412, '12', 'Баяндэлгэр сумын цэцэрлэг', 'Сүхбаатар', 16, '', 0, 'Төр', 'С', '10', '9', '1', '430', '209', '257', '125', '173', '84', '328', '', '33', '27', '1', '1', '1', '1', '11', '10', '9', '9', '11'),
(413, '13', 'Дарьганга сумын цэцэрлэг', 'Сүхбаатар', 16, '', 0, 'Төр', 'С', '7', '6', '1', '216', '101', '186', '89', '30', '12', '95', '', '24', '19', '1', '1', '1', '1', '7', '6', '6', '6', '9'),
(414, '14', 'Мөнххаан сумын цэцэрлэг', 'Сүхбаатар', 16, '', 0, 'Төр', 'С', '11', '10', '1', '360', '176', '250', '121', '110', '55', '236', '2', '37', '29', '1', '1', '1', '1', '12', '12', '11', '8', '12'),
(415, '15', 'Наран сумын цэцэрлэг', 'Сүхбаатар', 16, '', 0, 'Төр', 'С', '4', '4', '', '146', '73', '112', '57', '34', '16', '98', '1', '16', '14', '1', '1', '', '', '5', '5', '4', '4', '6'),
(416, '16', 'Онгон сумын цэцэрлэг', 'Сүхбаатар', 16, '', 0, 'Төр', 'С', '9', '8', '1', '293', '149', '218', '111', '75', '38', '84', '5', '28', '24', '1', '1', '1', '1', '9', '9', '8', '8', '9'),
(417, '17', 'Сүхбаатар сумын цэцэрлэг', 'Сүхбаатар', 16, '', 0, 'Төр', 'С', '7', '6', '1', '307', '123', '243', '97', '64', '26', '212', '4', '25', '20', '1', '1', '1', '1', '7', '6', '7', '7', '9'),
(418, '18', 'Түвшинширээ сумын цэцэрлэг', 'Сүхбаатар', 16, '', 0, 'Төр', 'С', '9', '8', '1', '308', '139', '256', '117', '52', '22', '225', '3', '37', '31', '1', '1', '1', '1', '11', '11', '8', '8', '16'),
(419, '19', 'Түмэнцогт сумын цэцэрлэг', 'Сүхбаатар', 16, '', 0, 'Төр', 'С', '8', '7', '1', '208', '102', '179', '92', '29', '10', '89', '1', '26', '22', '1', '1', '', '', '8', '8', '7', '7', '10'),
(420, '20', 'Уулбаян сумын цэцэрлэг', 'Сүхбаатар', 16, '', 0, 'Төр', 'С', '6', '5', '1', '229', '111', '158', '76', '71', '35', '151', '1', '22', '18', '1', '1', '', '', '7', '7', '5', '5', '9'),
(421, '21', 'Халзан сумын цэцэрлэг', 'Сүхбаатар', 16, '', 0, 'Төр', 'С', '5', '4', '1', '140', '64', '108', '45', '32', '19', '84', '2', '17', '14', '1', '1', '', '', '5', '5', '4', '4', '7'),
(422, '22', 'Эрдэнэцагаан 1-р цэцэрлэг', 'Сүхбаатар', 16, '', 0, 'Төр', 'С', '9', '8', '1', '274', '124', '227', '105', '47', '19', '127', '1', '28', '25', '1', '1', '', '', '9', '9', '8', '8', '10'),
(423, '23', 'Эрдэнэцагаан 2-р цэцэрлэг', 'Сүхбаатар', 16, '', 0, 'Төр', 'С', '6', '5', '1', '225', '105', '150', '71', '75', '34', '101', '1', '22', '17', '1', '1', '', '', '5', '5', '5', '5', '11'),
(424, '24', '11-р цэцэрлэг', 'Сүхбаатар', 16, '', 0, 'Төр', 'А', '5', '5', '', '173', '90', '151', '83', '22', '7', '31', '8', '25', '20', '1', '1', '', '', '7', '6', '5', '5', '12'),
(425, '1', 'Алтанбулаг сумын Дамбо цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'С', '6', '6', '', '123', '61', '123', '61', '', '', '24', '', '28', '24', '1', '1', '1', '1', '7', '7', '7', '7', '12'),
(426, '2', 'Алтанбулаг сумын цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'С', '6', '6', '', '130', '61', '130', '61', '', '', '8', '', '26', '22', '1', '1', '1', '1', '7', '7', '6', '6', '11'),
(427, '3', 'Баруунбүрэн сумын цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'С', '9', '6', '3', '205', '94', '153', '76', '52', '18', '101', '5', '25', '22', '1', '1', '1', '1', '6', '6', '6', '6', '11'),
(428, '4', 'Баянгол сумын цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'С', '9', '9', '', '247', '126', '247', '126', '', '', '30', '1', '34', '29', '1', '1', '1', '1', '11', '10', '9', '9', '12'),
(429, '5', 'Ерөө сумын Бугант тосгоны цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'С', '8', '8', '', '249', '129', '249', '129', '', '', '8', '2', '38', '30', '1', '1', '1', '1', '9', '9', '8', '8', '19'),
(430, '6', 'Ерөө сумын цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'С', '6', '6', '', '223', '109', '223', '109', '', '', '19', '', '26', '22', '1', '1', '1', '1', '7', '7', '6', '6', '11'),
(431, '7', 'Жавхлант сумын цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'С', '5', '4', '1', '181', '88', '120', '55', '61', '33', '88', '', '23', '19', '1', '1', '1', '1', '6', '5', '4', '4', '11'),
(432, '8', 'Зүүнбүрэн сумын цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'С', '7', '6', '1', '183', '89', '160', '82', '23', '7', '77', '', '28', '24', '1', '1', '1', '1', '8', '8', '8', '8', '10'),
(433, '9', 'Мандал сумын Мишээл цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'С', '4', '4', '', '90', '44', '90', '44', '', '', '7', '', '19', '16', '1', '1', '1', '1', '5', '5', '4', '4', '8'),
(434, '10', 'Мандал сумын Нархан цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'С', '13', '13', '', '522', '258', '522', '258', '', '', '22', '3', '54', '46', '1', '1', '1', '1', '16', '15', '15', '15', '21'),
(435, '11', 'Мандал сумын Олимп цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'С', '8', '8', '', '218', '96', '218', '96', '', '', '2', '1', '36', '29', '1', '1', '1', '1', '9', '9', '8', '8', '17'),
(436, '12', 'Мандал сумын Тарни багийн цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'С', '3', '3', '', '54', '23', '54', '23', '', '', '28', '', '13', '12', '', '', '', '', '4', '4', '3', '3', '6'),
(437, '13', 'Мандал сумын Түнхэл багийн цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'С', '7', '7', '', '177', '95', '177', '95', '', '', '19', '1', '32', '28', '1', '1', '1', '1', '9', '9', '9', '9', '12'),
(438, '14', 'Мандал сумын Хэрх тосгоны цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'Б', '7', '7', '', '211', '95', '211', '95', '', '', '35', '2', '29', '25', '1', '1', '1', '1', '8', '8', '9', '9', '10'),
(439, '15', 'Мандал сумын цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'С', '7', '7', '', '287', '159', '287', '159', '', '', '14', '1', '33', '27', '1', '1', '1', '1', '9', '8', '9', '9', '13'),
(440, '16', 'Орхон сумын цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'С', '4', '4', '', '98', '51', '74', '36', '24', '15', '28', '1', '19', '16', '1', '1', '1', '1', '4', '4', '4', '4', '9'),
(441, '17', 'Орхонтуул сумын цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'С', '7', '6', '1', '142', '54', '130', '51', '12', '3', '52', '', '23', '20', '1', '1', '1', '1', '6', '6', '6', '6', '9'),
(442, '18', 'Сайхан сумын цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'С', '5', '5', '', '111', '43', '111', '43', '', '', '13', '', '24', '21', '', '', '1', '1', '6', '5', '5', '5', '12'),
(443, '19', 'Сант сумын цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'С', '5', '4', '1', '124', '61', '109', '54', '15', '7', '54', '2', '20', '16', '1', '1', '1', '1', '5', '5', '4', '4', '9'),
(444, '20', 'Сувиллын ясль', 'Сэлэнгэ', 17, '', 0, 'Төр', 'А', '3', '3', '', '53', '27', '53', '27', '', '', '5', '2', '12', '12', '1', '1', '', '', '3', '3', '3', '3', '5'),
(445, '21', 'Сүхбаатар 1-р цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'А', '5', '5', '', '100', '44', '100', '44', '', '', '5', '', '24', '20', '1', '1', '1', '1', '6', '6', '5', '5', '11'),
(446, '22', 'Сүхбаатар 2-р цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'А', '14', '14', '', '273', '137', '273', '137', '', '', '5', '4', '49', '44', '1', '1', '1', '1', '16', '16', '16', '16', '15'),
(447, '23', 'Сүхбаатар 3-р цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'А', '16', '16', '', '362', '166', '362', '166', '', '', '10', '1', '65', '56', '1', '1', '1', '1', '20', '19', '20', '20', '23'),
(448, '24', 'Сүхбаатар 4-р цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'А', '9', '9', '', '276', '131', '276', '131', '', '', '3', '', '34', '29', '1', '1', '1', '1', '10', '10', '9', '9', '13'),
(449, '25', 'Сүхбаатар 7-р цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'А', '6', '6', '', '161', '75', '161', '75', '', '', '15', '', '33', '25', '1', '1', '1', '1', '7', '6', '6', '6', '18'),
(450, '26', 'Түшиг сумын цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'С', '6', '5', '1', '156', '81', '134', '70', '22', '11', '23', '1', '23', '19', '1', '1', '1', '1', '6', '6', '5', '5', '10'),
(451, '27', 'Хушаат сумын цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'С', '5', '4', '1', '119', '64', '105', '58', '14', '6', '41', '', '19', '15', '1', '1', '1', '1', '4', '4', '4', '4', '9'),
(452, '28', 'Хүдэр сумын цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'Б', '8', '8', '', '243', '122', '243', '122', '', '', '11', '1', '29', '24', '1', '1', '1', '1', '8', '8', '8', '8', '11'),
(453, '29', 'Хөтөлийн 11 цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'С', '6', '6', '', '179', '84', '179', '84', '', '', '9', '1', '26', '25', '1', '1', '1', '1', '7', '7', '6', '6', '11'),
(454, '30', 'Хөтөлийн 20 цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'С', '6', '6', '', '219', '110', '219', '110', '', '', '15', '1', '27', '23', '1', '1', '1', '1', '7', '7', '6', '6', '12'),
(455, '31', 'Хөтөлийн 24 цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'С', '11', '11', '', '225', '109', '225', '109', '', '', '21', '1', '39', '34', '1', '1', '1', '1', '12', '11', '11', '11', '14'),
(456, '32', 'Цагааннуур сумын цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'С', '8', '7', '1', '171', '87', '152', '78', '19', '9', '43', '', '30', '27', '1', '1', '1', '1', '9', '9', '8', '8', '11'),
(457, '33', 'Шаамар сумын Дулаанхааны цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'С', '7', '7', '', '153', '77', '153', '77', '', '', '7', '2', '32', '26', '1', '1', '1', '1', '9', '8', '8', '8', '13'),
(458, '34', 'Шаамар сумын цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'С', '4', '4', '', '80', '38', '80', '38', '', '', '1', '', '21', '16', '1', '1', '1', '1', '4', '4', '4', '4', '11'),
(459, '35', 'Баясгалант ирээдүй 2-р цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'С', '4', '4', '', '90', '46', '90', '46', '', '', '9', '1', '28', '21', '1', '1', '1', '1', '6', '6', '6', '6', '14'),
(460, '36', 'Сүхбаатар сумын 5 дугаар цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'А', '5', '5', '', '164', '82', '164', '82', '', '', '', '', '26', '22', '1', '1', '1', '1', '6', '6', '5', '5', '13'),
(461, '37', 'Сэлэнгэ.Алтанбулаг.Гуравдугаар цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'С', '2', '2', '', '66', '31', '66', '31', '', '', '4', '', '14', '10', '1', '1', '', '', '2', '2', '2', '2', '9'),
(462, '38', 'Сэлэнгэ.Цагааннуур.Хоёрдугаар цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'С', '8', '6', '2', '245', '122', '197', '98', '48', '24', '110', '', '29', '22', '1', '1', '1', '1', '7', '7', '6', '6', '14'),
(463, '39', 'Сэлэнгэ аймгийн Сүхбаатар сумын наймдугаар цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Төр', 'А', '6', '6', '', '228', '105', '228', '105', '', '', '9', '1', '28', '22', '1', '1', '1', '1', '7', '7', '6', '6', '13'),
(464, '1', 'Баянгол сумын Бүжинхэн цэцэрлэг', 'Сэлэнгэ', 17, '', 0, 'Хувь', 'С', '3', '3', '', '148', '61', '148', '61', '', '', '39', '', '12', '11', '1', '1', '1', '1', '3', '3', '3', '3', '4'),
(465, '1', 'Алтанбулаг сумын цэцэрлэг', 'Төв', 18, '', 0, 'Төр', 'С', '5', '5', '', '212', '106', '148', '73', '64', '33', '91', '', '19', '17', '1', '1', '1', '1', '5', '5', '5', '5', '7'),
(466, '2', 'Аргалант сумын цэцэрлэг', 'Төв', 18, '', 0, 'Төр', 'С', '4', '3', '1', '103', '54', '76', '40', '27', '14', '29', '', '13', '11', '1', '1', '', '', '3', '3', '3', '3', '6'),
(467, '3', 'Архуст сумын цэцэрлэг', 'Төв', 18, '', 0, 'Төр', 'С', '4', '3', '1', '87', '36', '73', '33', '14', '3', '19', '', '14', '10', '1', '1', '', '', '3', '3', '3', '3', '7'),
(468, '4', 'Батсүмбэр сумын Баянгол багийн цэцэрлэг', 'Төв', 18, '', 0, 'Төр', 'Б', '5', '5', '', '118', '52', '118', '52', '', '', '42', '', '15', '13', '1', '1', '', '', '3', '3', '5', '5', '6'),
(469, '5', 'Батсүмбэр сумын цэцэрлэг', 'Төв', 18, '', 0, 'Төр', 'С', '8', '7', '1', '271', '129', '191', '88', '80', '41', '127', '', '18', '14', '1', '1', '1', '1', '5', '5', '5', '5', '6'),
(470, '6', 'Баян сумын цэцэрлэг', 'Төв', 18, '', 0, 'Төр', 'С', '6', '5', '1', '140', '72', '132', '65', '8', '7', '63', '', '16', '15', '1', '1', '', '', '5', '5', '5', '5', '5'),
(471, '7', 'Баян-Өнжүүл сумын цэцэрлэг', 'Төв', 18, '', 0, 'Төр', 'С', '3', '3', '', '119', '52', '71', '31', '48', '21', '59', '', '12', '9', '1', '1', '', '', '3', '3', '3', '3', '5'),
(472, '8', 'Баяндэлгэр сумын цэцэрлэг', 'Төв', 18, '', 0, 'Төр', 'С', '4', '2', '2', '114', '49', '70', '23', '44', '26', '38', '', '9', '8', '1', '1', '', '', '2', '2', '2', '2', '4'),
(473, '9', 'Баянжаргалан сумын цэцэрлэг', 'Төв', 18, '', 0, 'Төр', 'С', '5', '4', '1', '147', '53', '115', '42', '32', '11', '65', '1', '16', '14', '1', '1', '', '', '4', '4', '4', '4', '7'),
(474, '10', 'Баянхангай сумын цэцэрлэг', 'Төв', 18, '', 0, 'Төр', 'С', '5', '4', '1', '107', '55', '94', '46', '13', '9', '35', '', '18', '14', '1', '1', '', '', '4', '4', '4', '4', '9'),
(475, '11', 'Баянцагаан сумын цэцэрлэг', 'Төв', 18, '', 0, 'Төр', 'С', '4', '3', '1', '122', '60', '72', '42', '50', '18', '94', '', '11', '8', '1', '1', '', '', '3', '2', '3', '3', '4'),
(476, '12', 'Баянцогт сумын цэцэрлэг', 'Төв', 18, '', 0, 'Төр', 'С', '4', '3', '1', '132', '73', '103', '58', '29', '15', '38', '', '14', '13', '1', '1', '', '', '3', '3', '3', '3', '7'),
(477, '13', 'Баянчандмань сумын цэцэрлэг', 'Төв', 18, '', 0, 'Төр', 'С', '9', '9', '', '289', '141', '247', '120', '42', '21', '41', '', '33', '29', '1', '1', '1', '1', '10', '10', '9', '9', '12'),
(478, '14', 'Борнуур сумын цэцэрлэг', 'Төв', 18, '', 0, 'Төр', 'С', '10', '9', '1', '311', '146', '251', '125', '60', '21', '94', '1', '30', '26', '1', '1', '1', '1', '9', '9', '9', '9', '10'),
(479, '15', 'Бумбардай цэцэрлэг', 'Төв', 18, '', 0, 'Төр', 'С', '4', '4', '', '136', '73', '136', '73', '', '', '9', '', '19', '16', '1', '1', '', '', '4', '4', '4', '4', '10'),
(480, '16', 'Бүжинхэн цэцэрлэг', 'Төв', 18, '', 0, 'Төр', 'А', '11', '11', '', '357', '190', '357', '190', '', '', '17', '3', '39', '32', '1', '1', '1', '1', '12', '11', '11', '11', '14'),
(481, '17', 'Бүрэн сумын цэцэрлэг', 'Төв', 18, '', 0, 'Төр', 'С', '6', '5', '1', '230', '112', '147', '72', '83', '40', '80', '', '19', '17', '1', '1', '', '', '5', '5', '4', '4', '9'),
(482, '18', 'Дэгдээхэй цэцэрлэг', 'Төв', 18, '', 0, 'Төр', 'А', '5', '5', '', '203', '95', '203', '95', '', '', '15', '', '22', '19', '1', '1', '1', '1', '6', '6', '5', '5', '9'),
(483, '19', 'Дэжид', 'Төв', 18, '', 0, 'Төр', 'С', '6', '5', '1', '154', '82', '143', '78', '11', '4', '22', '', '20', '17', '1', '1', '1', '1', '5', '5', '5', '5', '8'),
(484, '20', 'Дэлгэрхаан сумын цэцэрлэг', 'Төв', 18, '', 0, 'Төр', 'С', '5', '4', '1', '165', '72', '112', '51', '53', '21', '110', '', '16', '14', '1', '1', '', '', '5', '4', '4', '4', '6'),
(485, '21', 'Жаргалант сумын цэцэрлэг', 'Төв', 18, '', 0, 'Төр', 'С', '5', '4', '1', '146', '71', '120', '57', '26', '14', '18', '', '17', '15', '1', '1', '1', '1', '5', '5', '4', '4', '6'),
(486, '22', 'Заамар сумын цэцэрлэг', 'Төв', 18, '', 0, 'Төр', 'С', '9', '7', '2', '238', '107', '199', '90', '39', '17', '88', '1', '24', '21', '1', '1', '1', '1', '7', '7', '7', '7', '8'),
(487, '23', 'Заамар сумын Шижир алт цэцэрлэг', 'Төв', 18, '', 0, 'Төр', 'Б', '8', '8', '', '251', '126', '237', '117', '14', '9', '14', '', '27', '24', '1', '1', '1', '1', '9', '9', '8', '8', '8'),
(488, '24', 'Ирээдүй цэцэрлэг', 'Төв', 18, '', 0, 'Төр', 'А', '11', '11', '', '307', '152', '307', '152', '', '', '33', '', '42', '37', '1', '1', '1', '1', '12', '11', '11', '11', '17'),
(489, '25', 'Лүн сумын цэцэрлэг', 'Төв', 18, '', 0, 'Төр', 'С', '4', '4', '', '161', '77', '151', '72', '10', '5', '40', '', '18', '15', '1', '1', '', '', '5', '5', '4', '4', '8'),
(490, '26', 'Мөнгөнморьт сумын цэцэрлэг', 'Төв', 18, '', 0, 'Төр', 'С', '7', '5', '2', '186', '98', '126', '69', '60', '29', '64', '', '16', '14', '1', '1', '', '', '6', '5', '5', '5', '4'),
(491, '27', 'Сэргэлэн сумын цэцэрлэг', 'Төв', 18, '', 0, 'Төр', 'С', '5', '4', '1', '133', '54', '102', '41', '31', '13', '46', '1', '22', '15', '1', '1', '1', '1', '4', '4', '4', '4', '12'),
(492, '28', 'Сүмбэр сумын цэцэрлэг', 'Төв', 18, '', 0, 'Төр', 'С', '7', '6', '1', '140', '69', '127', '65', '13', '4', '29', '', '23', '22', '1', '1', '1', '1', '7', '7', '6', '6', '8'),
(493, '29', 'Талбулаг', 'Төв', 18, '', 0, 'Төр', 'Б', '5', '4', '1', '106', '54', '101', '52', '5', '2', '13', '', '14', '11', '1', '1', '', '', '4', '4', '4', '4', '5'),
(494, '30', 'Угтаалцайдам сумын цэцэрлэг', 'Төв', 18, '', 0, 'Төр', 'С', '8', '7', '1', '214', '103', '174', '81', '40', '22', '75', '3', '31', '25', '1', '1', '1', '1', '8', '8', '7', '7', '14'),
(495, '31', 'Унагалдайн андууд цэцэрлэг', 'Төв', 18, '', 0, 'Төр', 'А', '9', '8', '1', '269', '123', '244', '114', '25', '9', '8', '2', '32', '26', '1', '1', '1', '1', '9', '9', '8', '8', '13'),
(496, '32', 'Хүмүүн', 'Төв', 18, '', 0, 'Төр', 'А', '9', '8', '1', '310', '158', '285', '153', '25', '5', '16', '', '32', '24', '1', '1', '1', '1', '8', '8', '8', '8', '14'),
(497, '33', 'Цээл сумын цэцэрлэг', 'Төв', 18, '', 0, 'Төр', 'С', '7', '6', '1', '242', '114', '182', '91', '60', '23', '75', '', '20', '17', '1', '1', '', '', '6', '6', '6', '6', '7'),
(498, '34', 'Эрдэнэ сумын цэцэрлэг', 'Төв', 18, '', 0, 'Төр', 'С', '11', '8', '3', '281', '139', '198', '100', '83', '39', '110', '', '28', '26', '1', '1', '1', '1', '9', '9', '8', '8', '9'),
(499, '35', 'Эрдэнэсант сумын цэцэрлэг', 'Төв', 18, '', 0, 'Төр', 'С', '9', '6', '3', '242', '120', '185', '94', '57', '26', '147', '', '20', '17', '1', '1', '', '', '6', '6', '6', '6', '7'),
(500, '36', 'Өгөөмөр', 'Төв', 18, '', 0, 'Төр', 'С', '5', '4', '1', '145', '78', '112', '66', '33', '12', '48', '', '15', '13', '1', '1', '1', '1', '4', '4', '4', '4', '5'),
(501, '37', 'Өндөрширээт сумын цэцэрлэг', 'Төв', 18, '', 0, 'Төр', 'С', '4', '3', '1', '159', '79', '91', '49', '68', '30', '44', '', '10', '9', '1', '1', '', '', '3', '3', '3', '3', '3'),
(502, '38', 'Төв аймгийн Эрдэнэсант сумын Болорхон цэцэрлэг', 'Төв', 18, '', 0, 'Төр', 'С', '4', '4', '', '133', '67', '133', '67', '', '', '35', '', '16', '13', '1', '1', '', '', '4', '4', '4', '4', '7'),
(503, '1', 'Эрхэм жаалууд цэцэрлэг', 'Төв', 18, '', 0, 'Хувь', 'С', '3', '3', '', '69', '37', '69', '37', '', '', '11', '', '7', '6', '1', '1', '', '', '2', '2', '2', '2', '2'),
(504, '2', 'Сондор цэцэрлэг', 'Төв', 18, '', 0, 'Хувь', 'Б', '1', '1', '', '20', '5', '20', '5', '', '', '2', '', '4', '4', '1', '1', '', '', '', '', '1', '1', '2'),
(505, '3', 'Төв аймгийн Зуунмод сум Оддын жаалууд цэцэрлэг', 'Төв', 18, '', 0, 'Хувь', 'А', '1', '1', '', '34', '19', '34', '19', '', '', '4', '', '4', '4', '1', '1', '', '', '1', '1', '1', '1', '1'),
(506, '1', '1-р цэцэрлэг', 'Увс', 19, '', 0, 'Төр', 'А', '6', '6', '', '217', '100', '217', '100', '', '', '17', '', '26', '22', '1', '1', '1', '1', '7', '7', '6', '6', '11'),
(507, '2', '2-р цэцэрлэг', 'Увс', 19, '', 0, 'Төр', 'А', '8', '8', '', '243', '118', '243', '118', '', '', '16', '1', '33', '28', '1', '1', '1', '1', '9', '9', '8', '8', '14'),
(508, '3', '3-р цэцэрлэг', 'Увс', 19, '', 0, 'Төр', 'А', '9', '9', '', '329', '146', '329', '146', '', '', '5', '1', '35', '30', '1', '1', '1', '1', '10', '9', '9', '9', '14'),
(509, '4', '4-р цэцэрлэг', 'Увс', 19, '', 0, 'Төр', 'А', '9', '9', '', '255', '126', '255', '126', '', '', '13', '', '37', '31', '1', '1', '1', '1', '10', '10', '9', '9', '16'),
(510, '5', '5-р цэцэрлэг', 'Увс', 19, '', 0, 'Төр', 'А', '9', '9', '', '285', '143', '285', '143', '', '', '5', '20', '33', '27', '1', '1', '1', '1', '10', '9', '8', '8', '13'),
(511, '6', '6-р цэцэрлэг', 'Увс', 19, '', 0, 'Төр', 'А', '11', '7', '4', '236', '108', '182', '88', '54', '20', '58', '', '29', '24', '1', '1', '1', '1', '8', '8', '7', '7', '12'),
(512, '7', '7-р цэцэрлэг', 'Увс', 19, '', 0, 'Төр', 'А', '8', '8', '', '310', '145', '310', '145', '', '', '24', '1', '34', '29', '1', '1', '1', '1', '9', '8', '8', '8', '15'),
(513, '8', '8-р цэцэрлэг', 'Увс', 19, '', 0, 'Төр', 'А', '7', '7', '', '228', '105', '228', '105', '', '', '19', '', '25', '25', '1', '1', '1', '1', '8', '8', '7', '7', '8'),
(514, '9', '9-р цэцэрлэг', 'Увс', 19, '', 0, 'Төр', 'А', '7', '7', '', '279', '124', '279', '124', '', '', '2', '1', '31', '27', '1', '1', '1', '1', '8', '8', '7', '7', '14'),
(515, '10', 'Баруунтуруун сумын цэцэрлэг', 'Увс', 19, '', 0, 'Төр', 'С', '7', '6', '1', '241', '112', '177', '82', '64', '30', '70', '', '17', '15', '1', '1', '', '', '5', '5', '6', '6', '5'),
(516, '11', 'Бөхмөрөн сумын цэцэрлэг', 'Увс', 19, '', 0, 'Төр', 'С', '4', '3', '1', '184', '93', '106', '53', '78', '40', '93', '1', '14', '12', '1', '1', '', '', '3', '3', '3', '3', '7'),
(517, '12', 'Давст сумын цэцэрлэг', 'Увс', 19, '', 0, 'Төр', 'С', '6', '4', '2', '118', '65', '80', '45', '38', '20', '47', '1', '13', '12', '1', '1', '', '', '4', '4', '3', '3', '5'),
(518, '13', 'Завхан сумын цэцэрлэг', 'Увс', 19, '', 0, 'Төр', 'С', '5', '3', '2', '149', '60', '97', '43', '52', '17', '94', '1', '13', '12', '1', '1', '1', '1', '3', '3', '3', '3', '5'),
(519, '14', 'Зүүнговь сумын цэцэрлэг', 'Увс', 19, '', 0, 'Төр', 'С', '8', '4', '4', '217', '102', '114', '57', '103', '45', '114', '', '17', '14', '1', '1', '1', '1', '4', '3', '4', '4', '7'),
(520, '15', 'Зүүнхангай сумын цэцэрлэг', 'Увс', 19, '', 0, 'Төр', 'С', '8', '4', '4', '196', '97', '112', '58', '84', '39', '92', '', '16', '14', '1', '1', '1', '1', '4', '4', '4', '4', '6'),
(521, '16', 'Малчин сумын цэцэрлэг', 'Увс', 19, '', 0, 'Төр', 'С', '6', '3', '3', '172', '81', '91', '42', '81', '39', '109', '', '12', '11', '1', '1', '', '', '3', '3', '3', '3', '5'),
(522, '17', 'Наранбулаг сумын цэцэрлэг', 'Увс', 19, '', 0, 'Төр', 'С', '9', '6', '3', '364', '183', '171', '83', '193', '100', '232', '1', '21', '19', '1', '1', '1', '1', '7', '6', '6', '6', '6'),
(523, '18', 'Сагил сумын цэцэрлэг', 'Увс', 19, '', 0, 'Төр', 'С', '7', '4', '3', '177', '85', '123', '63', '54', '22', '135', '', '15', '13', '1', '1', '', '', '4', '4', '4', '4', '6'),
(524, '19', 'Тариалан сумын цэцэрлэг', 'Увс', 19, '', 0, 'Төр', 'С', '12', '8', '4', '351', '150', '235', '108', '116', '42', '151', '', '30', '25', '1', '1', '1', '1', '9', '8', '8', '8', '11'),
(525, '20', 'Тэс сумын цэцэрлэг', 'Увс', 19, '', 0, 'Төр', 'С', '14', '5', '9', '439', '207', '169', '73', '270', '134', '305', '', '20', '18', '1', '1', '1', '1', '6', '6', '5', '5', '7');
INSERT INTO `import` (`id`, `A`, `B`, `C`, `city`, `D`, `district`, `E`, `F`, `G`, `H`, `I`, `J`, `K`, `L`, `M`, `N`, `O`, `P`, `Q`, `R`, `S`, `T`, `U`, `V`, `W`, `X`, `Y`, `Z`, `AA`, `AB`) VALUES
(526, '21', 'Түргэн сумын цэцэрлэг', 'Увс', 19, '', 0, 'Төр', 'С', '6', '4', '2', '157', '72', '117', '54', '40', '18', '20', '1', '16', '13', '1', '1', '', '', '4', '4', '4', '4', '7'),
(527, '22', 'Ховд сумын цэцэрлэг', 'Увс', 19, '', 0, 'Төр', 'С', '5', '3', '2', '193', '97', '108', '54', '85', '43', '126', '1', '17', '15', '1', '1', '1', '1', '4', '4', '4', '4', '7'),
(528, '23', 'Хяргас сумын цэцэрлэг', 'Увс', 19, '', 0, 'Төр', 'С', '8', '4', '4', '192', '80', '114', '42', '78', '38', '77', '2', '17', '15', '1', '1', '1', '1', '4', '4', '4', '4', '7'),
(529, '24', 'Цагаанхайрхан сумын цэцэрлэг', 'Увс', 19, '', 0, 'Төр', 'С', '4', '4', '', '157', '80', '157', '80', '', '', '58', '', '16', '14', '1', '1', '', '', '5', '5', '4', '4', '6'),
(530, '25', 'Өлгий сумын цэцэрлэг', 'Увс', 19, '', 0, 'Төр', 'С', '6', '5', '1', '193', '85', '148', '67', '45', '18', '92', '2', '19', '17', '1', '1', '1', '1', '5', '5', '5', '5', '7'),
(531, '26', 'Өмнөговь сумын цэцэрлэг', 'Увс', 19, '', 0, 'Төр', 'С', '10', '7', '3', '421', '219', '220', '127', '201', '92', '178', '', '26', '22', '1', '1', '1', '1', '8', '7', '7', '7', '9'),
(532, '27', 'Өндөрхангай сумын цэцэрлэг', 'Увс', 19, '', 0, 'Төр', 'С', '10', '6', '4', '289', '143', '170', '92', '119', '51', '126', '1', '23', '20', '1', '1', '1', '1', '7', '7', '6', '6', '8'),
(533, '28', '10-р цэцэрлэг', 'Увс', 19, '', 0, 'Төр', 'А', '3', '3', '', '123', '56', '123', '56', '', '', '11', '', '19', '15', '1', '1', '1', '1', '4', '4', '3', '3', '10'),
(534, '29', 'Увс аймгийн Улаангом сумын арван хоёрдугаар цэцэрлэг', 'Увс', 19, '', 0, 'Төр', 'А', '6', '6', '', '243', '117', '243', '117', '', '', '47', '', '27', '22', '1', '1', '1', '1', '7', '6', '6', '6', '12'),
(535, '30', 'Увс аймгийн Улаангом сумын арван нэгдүгээр цэцэрлэг', 'Увс', 19, '', 0, 'Төр', 'А', '7', '6', '1', '214', '106', '210', '104', '4', '2', '46', '1', '26', '21', '1', '1', '1', '1', '7', '7', '6', '6', '11'),
(536, '31', 'Увс аймгийн Улаангом сумын 13-р цэцэрлэг', 'Увс', 19, '', 0, 'Төр', 'А', '6', '6', '', '97', '42', '97', '42', '', '', '14', '', '22', '19', '1', '1', '1', '1', '6', '6', '6', '6', '8'),
(537, '1', 'Бяцхан гарьд', 'Увс', 19, '', 0, 'Хувь', 'А', '1', '1', '', '20', '6', '20', '6', '', '', '', '', '6', '5', '1', '1', '', '', '1', '1', '1', '1', '3'),
(538, '2', 'Ухаалаг жаалууд цэцэрлэг', 'Увс', 19, '', 0, 'Хувь', 'А', '4', '4', '', '109', '50', '109', '50', '', '', '', '', '13', '12', '1', '1', '', '', '4', '4', '4', '4', '4'),
(539, '1', 'Алтай сумын цэцэрлэг', 'Ховд', 20, '', 0, 'Төр', 'С', '5', '5', '', '212', '120', '166', '90', '46', '30', '109', '', '21', '18', '1', '1', '1', '1', '6', '6', '6', '6', '7'),
(540, '2', 'Булган сумын цэцэрлэг', 'Ховд', 20, '', 0, 'Төр', 'С', '13', '13', '', '486', '223', '360', '165', '126', '58', '282', '', '52', '44', '1', '1', '1', '1', '17', '17', '13', '13', '20'),
(541, '3', 'Буянт сумын цэцэрлэг', 'Ховд', 20, '', 0, 'Төр', 'С', '5', '5', '', '129', '71', '129', '71', '', '', '5', '', '19', '15', '1', '1', '1', '1', '6', '6', '4', '4', '7'),
(542, '4', 'Дарви сумын цэцэрлэг', 'Ховд', 20, '', 0, 'Төр', 'С', '8', '7', '1', '183', '97', '173', '91', '10', '6', '67', '', '23', '20', '1', '1', '', '', '8', '8', '7', '7', '7'),
(543, '5', 'Дуут сумын цэцэрлэг', 'Ховд', 20, '', 0, 'Төр', 'С', '4', '3', '1', '89', '29', '61', '23', '28', '6', '48', '1', '14', '12', '1', '1', '', '', '4', '4', '3', '3', '6'),
(544, '6', 'Дөргөн сумын цэцэрлэг', 'Ховд', 20, '', 0, 'Төр', 'С', '10', '7', '3', '222', '105', '175', '87', '47', '18', '129', '', '24', '24', '1', '1', '1', '1', '8', '8', '7', '7', '7'),
(545, '7', 'Жаргалант-1-р цэцэрлэг', 'Ховд', 20, '', 0, 'Төр', 'А', '6', '6', '', '185', '96', '185', '96', '', '', '19', '', '26', '21', '1', '1', '1', '1', '7', '7', '6', '6', '11'),
(546, '8', 'Жаргалант-2-р цэцэрлэг', 'Ховд', 20, '', 0, 'Төр', 'А', '6', '6', '', '218', '112', '218', '112', '', '', '10', '2', '23', '21', '1', '1', '1', '1', '7', '7', '6', '6', '8'),
(547, '9', 'Жаргалант-3-р цэцэрлэг', 'Ховд', 20, '', 0, 'Төр', 'А', '7', '7', '', '204', '98', '204', '98', '', '', '21', '', '27', '23', '1', '1', '1', '1', '8', '7', '7', '7', '10'),
(548, '10', 'Жаргалант-4-р цэцэрлэг', 'Ховд', 20, '', 0, 'Төр', 'А', '6', '6', '', '187', '97', '187', '97', '', '', '6', '1', '24', '21', '1', '1', '1', '1', '7', '7', '6', '6', '9'),
(549, '11', 'Жаргалант-5-р цэцэрлэг', 'Ховд', 20, '', 0, 'Төр', 'А', '6', '6', '', '214', '107', '214', '107', '', '', '4', '', '26', '22', '1', '1', '1', '1', '7', '7', '6', '6', '11'),
(550, '12', 'Жаргалант-6-р цэцэрлэг', 'Ховд', 20, '', 0, 'Төр', 'А', '5', '5', '', '143', '69', '143', '69', '', '', '4', '1', '24', '21', '1', '1', '1', '1', '6', '6', '5', '5', '11'),
(551, '13', 'Жаргалант-7-р цэцэрлэг', 'Ховд', 20, '', 0, 'Төр', 'А', '9', '9', '', '270', '126', '270', '126', '', '', '10', '', '31', '29', '1', '1', '1', '1', '10', '10', '9', '9', '10'),
(552, '14', 'Жаргалант-8-р цэцэрлэг', 'Ховд', 20, '', 0, 'Төр', 'А', '7', '7', '', '189', '91', '189', '91', '', '', '21', '', '27', '22', '1', '1', '1', '1', '8', '8', '7', '7', '10'),
(553, '15', 'Жаргалант-9-р цэцэрлэг', 'Ховд', 20, '', 0, 'Төр', 'А', '10', '10', '', '329', '153', '329', '153', '', '', '32', '4', '35', '32', '1', '1', '1', '1', '11', '11', '10', '10', '12'),
(554, '16', 'Жаргалант-10-р цэцэрлэг', 'Ховд', 20, '', 0, 'Төр', 'А', '7', '7', '', '257', '127', '257', '127', '', '', '21', '1', '28', '25', '1', '1', '1', '1', '8', '8', '7', '7', '11'),
(555, '17', 'Жаргалант-11-р цэцэрлэг', 'Ховд', 20, '', 0, 'Төр', 'А', '6', '6', '', '187', '94', '187', '94', '', '', '9', '1', '24', '21', '1', '1', '1', '1', '7', '7', '6', '6', '9'),
(556, '18', 'Жаргалант-12-р цэцэрлэг', 'Ховд', 20, '', 0, 'Төр', 'А', '7', '7', '', '232', '120', '232', '120', '', '', '4', '3', '27', '24', '1', '1', '1', '1', '8', '8', '7', '7', '10'),
(557, '19', 'Жаргалант-13-р цэцэрлэг', 'Ховд', 20, '', 0, 'Төр', 'А', '6', '6', '', '176', '82', '176', '82', '', '', '15', '', '24', '22', '1', '1', '1', '1', '7', '7', '6', '6', '9'),
(558, '20', 'Зэрэг сумын цэцэрлэг', 'Ховд', 20, '', 0, 'Төр', 'С', '11', '8', '3', '290', '126', '233', '107', '57', '19', '120', '1', '29', '26', '1', '1', '1', '1', '9', '9', '8', '8', '10'),
(559, '21', 'Манхан сумын цэцэрлэг', 'Ховд', 20, '', 0, 'Төр', 'С', '11', '6', '5', '291', '154', '181', '96', '110', '58', '154', '', '22', '21', '1', '1', '1', '1', '7', '7', '6', '6', '7'),
(560, '22', 'Мянгад сумын цэцэрлэг', 'Ховд', 20, '', 0, 'Төр', 'С', '9', '6', '3', '227', '117', '161', '86', '66', '31', '134', '', '22', '19', '1', '1', '1', '1', '7', '7', '6', '6', '7'),
(561, '23', 'Мөнххайрхан сумын цэцэрлэг', 'Ховд', 20, '', 0, 'Төр', 'С', '4', '4', '', '134', '57', '113', '48', '21', '9', '70', '', '16', '13', '1', '1', '', '', '5', '4', '4', '4', '6'),
(562, '24', 'Мөст сумын цэцэрлэг', 'Ховд', 20, '', 0, 'Төр', 'С', '5', '4', '1', '145', '64', '115', '52', '30', '12', '86', '1', '17', '14', '1', '1', '', '', '5', '5', '4', '4', '7'),
(563, '25', 'Ховд сумын цэцэрлэг', 'Ховд', 20, '', 0, 'Төр', 'С', '5', '4', '1', '149', '82', '102', '55', '47', '27', '57', '', '17', '13', '1', '1', '', '', '5', '5', '4', '4', '7'),
(564, '26', 'Цэцэг сумын цэцэрлэг', 'Ховд', 20, '', 0, 'Төр', 'С', '10', '8', '2', '234', '100', '187', '83', '47', '17', '80', '1', '31', '30', '1', '1', '1', '1', '9', '9', '8', '8', '12'),
(565, '27', 'Чандмань сумын цэцэрлэг', 'Ховд', 20, '', 0, 'Төр', 'С', '7', '5', '2', '206', '105', '140', '75', '66', '30', '148', '', '20', '17', '1', '1', '1', '1', '6', '6', '5', '5', '7'),
(566, '28', 'Эрдэнэбүрэн сумын цэцэрлэг', 'Ховд', 20, '', 0, 'Төр', 'С', '4', '3', '1', '142', '50', '71', '25', '71', '25', '67', '', '12', '10', '1', '1', '', '', '3', '3', '3', '3', '5'),
(567, '29', 'Үенч сумын цэцэрлэг', 'Ховд', 20, '', 0, 'Төр', 'С', '8', '8', '', '258', '115', '216', '95', '42', '20', '83', '', '31', '28', '1', '1', '1', '1', '10', '10', '8', '8', '11'),
(568, '30', 'Жаргалант Прогресс 14-р цэцэрлэг', 'Ховд', 20, '', 0, 'Төр', 'А', '6', '6', '', '202', '100', '202', '100', '', '', '1', '', '24', '22', '1', '1', '1', '1', '7', '7', '6', '6', '9'),
(569, '31', 'Жаргалант Цэцэгхэн 15-р цэцэрлэг', 'Ховд', 20, '', 0, 'Төр', 'А', '5', '5', '', '181', '82', '181', '82', '', '', '9', '', '23', '20', '1', '1', '1', '1', '6', '6', '5', '5', '10'),
(570, '32', 'Булган сумын 2 дугаар цэцэрлэг', 'Ховд', 20, '', 0, 'Төр', 'С', '7', '6', '1', '286', '139', '191', '87', '95', '52', '120', '', '25', '23', '1', '1', '1', '1', '8', '8', '6', '6', '9'),
(571, '33', 'Ховд.Жаргалант.Арван зургаа дугаар цэцэрлэг', 'Ховд', 20, '', 0, 'Төр', 'А', '9', '9', '', '278', '137', '278', '137', '', '', '18', '', '33', '30', '1', '1', '1', '1', '10', '10', '9', '9', '12'),
(572, '1', 'Бялзуухай цэцэрлэг', 'Ховд', 20, '', 0, 'Хувь', 'С', '1', '1', '', '22', '10', '22', '10', '', '', '1', '', '3', '3', '', '', '', '', '1', '1', '1', '1', '1'),
(573, '2', 'Гэрэлт наран өөд цэцэрлэг', 'Ховд', 20, '', 0, 'Хувь', 'А', '2', '2', '', '50', '26', '50', '26', '', '', '', '', '6', '5', '1', '1', '', '', '1', '1', '2', '2', '2'),
(574, '3', 'Гэрэлтэх оч цэцэрлэг', 'Ховд', 20, '', 0, 'Хувь', 'А', '4', '4', '', '102', '47', '102', '47', '', '', '9', '', '10', '10', '1', '1', '', '', '4', '4', '4', '4', '1'),
(575, '4', 'Жаргалант 24 цэцэрлэг', 'Ховд', 20, '', 0, 'Хувь', 'А', '1', '1', '', '22', '13', '22', '13', '', '', '2', '', '3', '3', '1', '1', '', '', '1', '1', '1', '1', ''),
(576, '5', 'Хөх хулганы орон цэцэрлэг', 'Ховд', 20, '', 0, 'Хувь', 'А', '2', '2', '', '40', '18', '40', '18', '', '', '2', '', '5', '5', '1', '1', '', '', '2', '2', '1', '1', '1'),
(577, '6', 'Энхжин-Од цэцэрлэг', 'Ховд', 20, '', 0, 'Хувь', 'С', '5', '5', '', '102', '56', '102', '56', '', '', '4', '', '14', '14', '1', '1', '', '', '5', '5', '5', '5', '3'),
(578, '7', 'Бумбагарын найзууд', 'Ховд', 20, '', 0, 'Хувь', 'А', '1', '1', '', '28', '13', '28', '13', '', '', '', '', '4', '4', '1', '1', '', '', '1', '1', '1', '1', '1'),
(579, '8', 'Ховд.Жаргалант.Миний гэрийн боловсрол цэцэрлэг', 'Ховд', 20, '', 0, 'Хувь', 'А', '1', '1', '', '26', '12', '26', '12', '', '', '1', '', '3', '3', '1', '1', '', '', '', '', '1', '1', '1'),
(580, '1', 'Алаг-Эрдэнэ сумын цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'С', '6', '5', '1', '173', '85', '115', '62', '58', '23', '65', '', '22', '18', '1', '1', '', '', '6', '6', '5', '5', '10'),
(581, '2', 'Арбулаг сумын цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'С', '5', '5', '', '153', '68', '153', '68', '', '', '46', '', '23', '18', '1', '1', '', '', '6', '6', '5', '5', '11'),
(582, '3', 'Баянзүрх сумын цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'С', '7', '4', '3', '237', '112', '142', '66', '95', '46', '66', '1', '18', '12', '', '', '', '', '4', '4', '4', '4', '10'),
(583, '4', 'Бүрэнтогтох сумын цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'С', '7', '6', '1', '177', '92', '153', '84', '24', '8', '121', '', '27', '19', '1', '1', '1', '', '8', '7', '6', '6', '11'),
(584, '5', 'Мөрөн сумын 13 дугаар цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'А', '9', '9', '', '327', '147', '327', '147', '', '', '36', '1', '41', '34', '1', '1', '1', '1', '11', '10', '9', '9', '19'),
(585, '6', 'Бүрэнхаан цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'Б', '1', '1', '', '47', '24', '47', '24', '', '', '36', '', '4', '3', '', '', '', '', '1', '1', '1', '1', '2'),
(586, '7', 'Галт сумын цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'С', '11', '7', '4', '304', '138', '195', '92', '109', '46', '146', '1', '32', '27', '1', '1', '1', '1', '10', '10', '7', '7', '13'),
(587, '8', 'Жаргалант сумын цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'С', '10', '7', '3', '271', '132', '210', '105', '61', '27', '110', '1', '29', '24', '1', '1', '1', '1', '8', '8', '7', '7', '12'),
(588, '9', 'Их-Уул сумын цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'С', '6', '6', '', '250', '121', '206', '101', '44', '20', '154', '', '28', '21', '1', '1', '1', '1', '7', '7', '6', '6', '13'),
(589, '10', 'Мөрөн 1-р цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'А', '9', '9', '', '369', '196', '369', '196', '', '', '17', '1', '37', '32', '1', '1', '1', '1', '10', '10', '9', '9', '16'),
(590, '11', 'Мөрөн 2-р цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'А', '9', '9', '', '341', '171', '341', '171', '', '', '18', '1', '36', '30', '1', '1', '1', '1', '10', '10', '9', '9', '15'),
(591, '12', 'Мөрөн 3-р цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'А', '7', '7', '', '275', '128', '275', '128', '', '', '16', '1', '36', '26', '1', '1', '1', '1', '8', '8', '7', '7', '19'),
(592, '13', 'Мөрөн 4-р цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'А', '6', '6', '', '200', '103', '200', '103', '', '', '28', '', '35', '24', '1', '1', '1', '1', '7', '7', '6', '6', '20'),
(593, '14', 'Мөрөн 5-р цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'А', '6', '6', '', '206', '93', '206', '93', '', '', '29', '', '28', '22', '1', '1', '1', '1', '7', '7', '6', '6', '13'),
(594, '15', 'Мөрөн 6-р цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'А', '6', '6', '', '204', '96', '204', '96', '', '', '14', '1', '28', '22', '1', '1', '1', '1', '7', '7', '6', '6', '13'),
(595, '16', 'Мөрөн 7-р цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'А', '8', '8', '', '290', '159', '290', '159', '', '', '10', '', '40', '30', '1', '1', '1', '1', '9', '9', '8', '8', '21'),
(596, '17', 'Мөрөн 8-р цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'А', '6', '6', '', '217', '114', '217', '114', '', '', '8', '', '27', '22', '1', '1', '1', '1', '7', '7', '6', '6', '12'),
(597, '18', 'Мөрөн 9-р цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'А', '6', '6', '', '189', '93', '189', '93', '', '', '13', '2', '28', '22', '1', '1', '1', '1', '7', '7', '6', '6', '13'),
(598, '19', 'Мөрөн 10-р цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'А', '6', '6', '', '247', '139', '247', '139', '', '', '36', '1', '28', '23', '1', '1', '1', '1', '7', '7', '6', '6', '13'),
(599, '20', 'Мөрөн 11-р цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'А', '6', '6', '', '185', '78', '185', '78', '', '', '20', '1', '28', '21', '1', '1', '1', '1', '7', '7', '6', '6', '13'),
(600, '21', 'Мөрөн 12-р цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'А', '5', '5', '', '195', '97', '195', '97', '', '', '30', '1', '24', '18', '1', '1', '', '', '6', '6', '5', '5', '12'),
(601, '22', 'Рашаант сумын цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'С', '10', '6', '4', '282', '141', '188', '97', '94', '44', '170', '2', '28', '22', '1', '1', '1', '1', '7', '7', '6', '6', '13'),
(602, '23', 'Рэнчинлхүмбэ сумын цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'С', '10', '6', '4', '280', '140', '178', '89', '102', '51', '181', '', '25', '20', '', '', '1', '1', '7', '6', '6', '6', '11'),
(603, '24', 'Тариалан сумын цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'С', '11', '10', '1', '409', '181', '311', '148', '98', '33', '99', '', '37', '31', '1', '1', '1', '1', '11', '10', '10', '10', '14'),
(604, '25', 'Тосонцэнгэл сумын цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'С', '8', '6', '2', '282', '123', '210', '99', '72', '24', '109', '1', '28', '22', '1', '1', '1', '1', '7', '7', '6', '6', '13'),
(605, '26', 'Түнэл сумын цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'С', '8', '6', '2', '229', '109', '179', '85', '50', '24', '115', '2', '28', '21', '1', '1', '1', '1', '7', '7', '6', '6', '13'),
(606, '27', 'Төмөрбулаг сумын цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'С', '7', '5', '2', '180', '94', '143', '79', '37', '15', '90', '', '21', '16', '1', '1', '', '', '5', '5', '5', '5', '10'),
(607, '28', 'Улаан-Уул сумын цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'С', '10', '5', '5', '270', '125', '173', '74', '97', '51', '99', '', '24', '20', '1', '1', '', '', '6', '6', '5', '5', '12'),
(608, '29', 'Ханх сумын цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'С', '6', '4', '2', '179', '103', '125', '74', '54', '29', '35', '', '18', '13', '1', '1', '', '', '5', '5', '4', '4', '8'),
(609, '30', 'Хатгал сумын цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'С', '7', '6', '1', '269', '136', '243', '120', '26', '16', '19', '', '27', '23', '', '', '1', '1', '7', '7', '6', '6', '13'),
(610, '31', 'Цагаан-Уул сумын цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'С', '5', '4', '1', '197', '90', '154', '76', '43', '14', '116', '', '20', '14', '1', '1', '', '', '5', '4', '4', '4', '10'),
(611, '32', 'Цагаан-Үүр сумын цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'С', '9', '6', '3', '221', '108', '158', '79', '63', '29', '18', '', '30', '24', '1', '1', '1', '1', '8', '8', '6', '6', '14'),
(612, '33', 'Цагааннуур сумын цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'С', '6', '4', '2', '175', '88', '125', '60', '50', '28', '69', '', '23', '20', '1', '1', '', '', '6', '6', '4', '4', '12'),
(613, '34', 'Цэцэрлэг сумын Могой багийн цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'Б', '3', '2', '1', '54', '32', '46', '25', '8', '7', '15', '', '9', '8', '', '', '', '', '2', '2', '2', '2', '5'),
(614, '35', 'Цэцэрлэг сумын цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'С', '6', '6', '', '211', '85', '140', '65', '71', '20', '48', '', '25', '19', '1', '1', '1', '1', '7', '7', '6', '6', '10'),
(615, '36', 'Чандмань-Өндөр сумын цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'С', '10', '6', '4', '232', '120', '168', '89', '64', '31', '103', '', '29', '21', '1', '1', '1', '', '7', '7', '6', '6', '14'),
(616, '37', 'Шинэ-Идэр сумын цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'С', '6', '5', '1', '159', '86', '124', '66', '35', '20', '89', '', '21', '16', '1', '1', '', '', '5', '5', '5', '5', '10'),
(617, '38', 'Эрдэнэбулган сумын цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'С', '8', '7', '1', '226', '109', '170', '85', '56', '24', '123', '', '29', '24', '', '', '1', '1', '8', '8', '7', '7', '13'),
(618, '39', 'Цагаан уул сумын 2-р цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'С', '5', '5', '', '172', '82', '172', '82', '', '', '71', '1', '23', '17', '1', '1', '', '', '6', '6', '5', '5', '11'),
(619, '40', 'Хөвсгөл.Мөрөн. Арван дөрөв дүгээр цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'А', '6', '6', '', '243', '134', '243', '134', '', '', '34', '', '29', '20', '1', '1', '1', '1', '8', '6', '6', '6', '13'),
(620, '41', 'Хөвсгөл.Мөрөн. Арван тав дугаар цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'А', '6', '6', '', '179', '73', '179', '73', '', '', '15', '', '27', '23', '1', '1', '1', '1', '8', '8', '6', '6', '11'),
(621, '42', 'Хөвсгөл аймгийн Галт сумын Зүрх багийн цэцэрлэг бага сургуулийн цогцолбор', 'Хөвсгөл', 21, '', 0, 'Төр', 'Б', '2', '1', '1', '48', '21', '26', '8', '22', '13', '36', '', '4', '3', '', '', '', '', '1', '1', '1', '1', '2'),
(622, '43', 'Хөвсгөл аймгийн Жаргалант сумын хүүхдийн хоёрдугаар цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Төр', 'С', '4', '4', '', '127', '59', '127', '59', '', '', '48', '', '20', '17', '1', '1', '', '', '4', '4', '4', '4', '11'),
(623, '1', 'Гранд цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Хувь', 'А', '3', '3', '', '119', '64', '119', '64', '', '', '2', '', '13', '12', '1', '1', '', '', '3', '3', '3', '3', '6'),
(624, '2', 'Тэмүүлэл цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Хувь', 'А', '4', '4', '', '113', '60', '113', '60', '', '', '2', '', '13', '12', '1', '1', '', '', '4', '4', '4', '4', '4'),
(625, '3', 'Даян саян цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Хувь', 'А', '2', '2', '', '85', '45', '85', '45', '', '', '3', '', '8', '7', '1', '1', '', '', '2', '2', '2', '2', '3'),
(626, '4', 'Хөвсгөл.Мөрөн.\"Мандал\" цэцэрлэг', 'Хөвсгөл', 21, '', 0, 'Хувь', 'А', '2', '2', '', '28', '12', '28', '12', '', '', '', '', '7', '6', '1', '1', '', '', '2', '2', '2', '2', '2'),
(627, '1', 'Батноров сумын Бэрх тосгоны цэцэрлэг', 'Хэнтий', 22, '', 0, 'Төр', 'Б', '7', '7', '', '190', '100', '190', '100', '', '', '44', '', '24', '19', '1', '1', '1', '1', '7', '6', '7', '7', '8'),
(628, '2', 'Батноров сумын цэцэрлэг', 'Хэнтий', 22, '', 0, 'Төр', 'С', '11', '7', '4', '244', '110', '177', '81', '67', '29', '129', '1', '29', '24', '1', '1', '1', '1', '9', '8', '7', '7', '11'),
(629, '3', 'Батширээт сумын цэцэрлэг', 'Хэнтий', 22, '', 0, 'Төр', 'С', '8', '4', '4', '167', '91', '114', '68', '53', '23', '65', '1', '17', '15', '1', '1', '', '', '5', '5', '4', '4', '7'),
(630, '4', 'Баян-Адарга сумын цэцэрлэг', 'Хэнтий', 22, '', 0, 'Төр', 'С', '7', '5', '2', '206', '99', '145', '65', '61', '34', '134', '4', '20', '17', '', '', '1', '1', '7', '7', '5', '5', '7'),
(631, '5', 'Баян-Овоо сумын цэцэрлэг', 'Хэнтий', 22, '', 0, 'Төр', 'С', '6', '6', '', '163', '81', '143', '72', '20', '9', '107', '1', '18', '17', '1', '1', '', '', '6', '6', '6', '6', '5'),
(632, '6', 'Баянмөнх сумын цэцэрлэг', 'Хэнтий', 22, '', 0, 'Төр', 'С', '6', '4', '2', '153', '74', '106', '57', '47', '17', '112', '', '13', '10', '1', '1', '', '', '4', '4', '2', '2', '6'),
(633, '7', 'Баянхутаг сумын цэцэрлэг', 'Хэнтий', 22, '', 0, 'Төр', 'С', '4', '3', '1', '83', '47', '65', '35', '18', '12', '11', '', '13', '10', '1', '1', '', '', '3', '3', '2', '2', '7'),
(634, '8', 'Биндэр сумын цэцэрлэг', 'Хэнтий', 22, '', 0, 'Төр', 'С', '10', '8', '2', '250', '125', '212', '110', '38', '15', '76', '', '29', '23', '1', '', '1', '1', '10', '9', '8', '8', '9'),
(635, '9', 'Бор-Өндөр 1-р цэцэрлэг', 'Хэнтий', 22, '', 0, 'Төр', 'С', '13', '13', '', '388', '197', '388', '197', '', '', '18', '3', '42', '38', '1', '1', '1', '1', '14', '14', '13', '13', '13'),
(636, '10', 'Бор-Өндөр 2-р цэцэрлэг', 'Хэнтий', 22, '', 0, 'Төр', 'С', '4', '4', '', '132', '60', '132', '60', '', '', '11', '', '18', '15', '1', '1', '', '', '5', '5', '4', '4', '8'),
(637, '11', 'Бор-Өндөр 3-р цэцэрлэг', 'Хэнтий', 22, '', 0, 'Төр', 'С', '8', '8', '', '252', '121', '229', '113', '23', '8', '31', '1', '32', '30', '1', '1', '1', '1', '10', '10', '8', '8', '12'),
(638, '12', 'Галшар сумын цэцэрлэг', 'Хэнтий', 22, '', 0, 'Төр', 'С', '4', '3', '1', '132', '52', '80', '33', '52', '19', '81', '', '13', '11', '1', '1', '', '', '3', '3', '3', '3', '6'),
(639, '13', 'Дадал сумын цэцэрлэг', 'Хэнтий', 22, '', 0, 'Төр', 'С', '10', '7', '3', '266', '138', '230', '119', '36', '19', '92', '3', '24', '20', '1', '1', '1', '1', '8', '7', '7', '7', '7'),
(640, '14', 'Дархан сумын цэцэрлэг', 'Хэнтий', 22, '', 0, 'Төр', 'С', '3', '3', '', '171', '81', '121', '60', '50', '21', '87', '', '14', '12', '1', '1', '', '', '3', '3', '3', '3', '7'),
(641, '15', 'Дэлгэрхаан сумын Хэрлэнбаян-Улаан тосгоны цэцэрлэг', 'Хэнтий', 22, '', 0, 'Төр', 'Б', '1', '1', '', '26', '18', '26', '18', '', '', '10', '', '4', '3', '', '', '', '', '1', '1', '1', '1', '2'),
(642, '16', 'Дэлгэрхаан сумын цэцэрлэг', 'Хэнтий', 22, '', 0, 'Төр', 'С', '7', '7', '', '152', '82', '152', '82', '', '', '48', '', '27', '22', '1', '1', '1', '1', '9', '8', '6', '6', '10'),
(643, '17', 'Жаргалтхаан сумын цэцэрлэг', 'Хэнтий', 22, '', 0, 'Төр', 'С', '5', '5', '', '166', '74', '134', '60', '32', '14', '82', '', '16', '14', '1', '1', '', '', '5', '5', '4', '4', '6'),
(644, '18', 'Мөрөн сумын цэцэрлэг', 'Хэнтий', 22, '', 0, 'Төр', 'С', '3', '3', '', '81', '42', '81', '42', '', '', '18', '', '13', '9', '1', '1', '', '', '4', '3', '3', '3', '5'),
(645, '19', 'Норовлин сумын цэцэрлэг', 'Хэнтий', 22, '', 0, 'Төр', 'С', '8', '7', '1', '236', '118', '175', '88', '61', '30', '43', '', '23', '20', '1', '1', '1', '1', '7', '7', '7', '7', '7'),
(646, '20', 'Хэрлэн 1-р цэцэрлэг', 'Хэнтий', 22, '', 0, 'Төр', 'А', '8', '8', '', '238', '129', '238', '129', '', '', '11', '1', '29', '24', '1', '1', '1', '1', '10', '10', '8', '8', '9'),
(647, '21', 'Хэрлэн 2-р цэцэрлэг', 'Хэнтий', 22, '', 0, 'Төр', 'А', '6', '6', '', '171', '96', '171', '96', '', '', '12', '8', '25', '21', '1', '1', '1', '1', '7', '6', '7', '7', '9'),
(648, '22', 'Хэрлэн 3-р цэцэрлэг', 'Хэнтий', 22, '', 0, 'Төр', 'А', '10', '10', '', '259', '112', '259', '112', '', '', '42', '', '36', '31', '1', '1', '1', '1', '12', '11', '10', '10', '12'),
(649, '23', 'Хэрлэн 4-р цэцэрлэг', 'Хэнтий', 22, '', 0, 'Төр', 'А', '11', '11', '', '318', '157', '318', '157', '', '', '50', '1', '40', '35', '1', '1', '1', '1', '13', '12', '11', '11', '14'),
(650, '24', 'Хэрлэн 5-р цэцэрлэг', 'Хэнтий', 22, '', 0, 'Төр', 'А', '6', '6', '', '162', '75', '162', '75', '', '', '31', '', '24', '21', '1', '1', '1', '1', '7', '7', '6', '6', '9'),
(651, '25', 'Хэрлэн 6-р цэцэрлэг', 'Хэнтий', 22, '', 0, 'Төр', 'А', '5', '5', '', '136', '71', '136', '71', '', '', '15', '', '23', '19', '1', '1', '1', '1', '6', '6', '5', '5', '10'),
(652, '26', 'Хэрлэн 7-р цэцэрлэг', 'Хэнтий', 22, '', 0, 'Төр', 'А', '4', '4', '', '127', '60', '127', '60', '', '', '6', '', '20', '16', '1', '1', '1', '1', '6', '5', '4', '4', '8'),
(653, '27', 'Хэрлэн 8-цэцэрлэг', 'Хэнтий', 22, '', 0, 'Төр', 'А', '5', '5', '', '133', '69', '133', '69', '', '', '19', '', '23', '20', '1', '1', '1', '1', '6', '6', '5', '5', '10'),
(654, '28', 'Хэрлэн сумын Өлзийт тосгоны цэцэрлэг', 'Хэнтий', 22, '', 0, 'Төр', 'Б', '3', '3', '', '72', '44', '72', '44', '', '', '23', '', '16', '12', '1', '1', '', '', '3', '3', '3', '3', '9'),
(655, '29', 'Хэрлэн Ясли', 'Хэнтий', 22, '', 0, 'Төр', 'А', '2', '2', '', '60', '29', '60', '29', '', '', '1', '', '16', '12', '1', '1', '', '', '2', '2', '4', '4', '9'),
(656, '30', 'Цэнхэрмандал сумын цэцэрлэг', 'Хэнтий', 22, '', 0, 'Төр', 'С', '7', '6', '1', '154', '69', '129', '58', '25', '11', '57', '2', '23', '19', '1', '1', '1', '1', '7', '6', '7', '7', '7'),
(657, '31', 'Өмнөдэлгэр сумын Хурх тосгоны цэцэрлэг', 'Хэнтий', 22, '', 0, 'Төр', 'Б', '3', '3', '', '72', '38', '62', '34', '10', '4', '40', '1', '11', '9', '1', '1', '', '', '3', '3', '3', '3', '4'),
(658, '32', 'Өмнөдэлгэр сумын цэцэрлэг', 'Хэнтий', 22, '', 0, 'Төр', 'С', '15', '12', '3', '407', '200', '303', '143', '104', '57', '170', '2', '38', '34', '1', '1', '1', '1', '14', '13', '12', '12', '10'),
(659, '33', 'Хэнтий аймгийн Хэрлэн сумын есдүгээр цэцэрлэг', 'Хэнтий', 22, '', 0, 'Төр', 'А', '8', '8', '', '245', '116', '245', '116', '', '', '37', '', '31', '24', '1', '1', '1', '1', '10', '9', '8', '8', '11'),
(660, '34', 'Хэнтий аймгийн Хэрлэн сумын аравдугаар цэцэрлэг', 'Хэнтий', 22, '', 0, 'Төр', 'А', '5', '5', '', '142', '70', '142', '70', '', '', '13', '1', '20', '16', '1', '1', '1', '', '5', '5', '5', '5', '8'),
(661, '1', 'Бамбар цэцэрлэг', 'Хэнтий', 22, '', 0, 'Хувь', 'А', '3', '3', '', '94', '47', '94', '47', '', '', '13', '', '11', '10', '1', '1', '1', '', '3', '3', '3', '3', '3'),
(662, '2', 'Жүржхэн цэцэрлэг', 'Хэнтий', 22, '', 0, 'Хувь', 'А', '2', '2', '', '56', '31', '56', '31', '', '', '2', '', '5', '4', '1', '1', '', '', '1', '1', '', '', '3'),
(663, '1', '1-р цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Төр', 'А', '6', '6', '', '183', '94', '183', '94', '', '', '8', '1', '25', '21', '1', '1', '1', '1', '7', '7', '6', '6', '10'),
(664, '2', '2-р цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Төр', 'С', '5', '5', '', '114', '52', '114', '52', '', '', '7', '', '20', '18', '1', '1', '', '', '5', '5', '5', '5', '9'),
(665, '3', '3-р цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Төр', 'А', '8', '8', '', '287', '147', '287', '147', '', '', '8', '', '29', '26', '1', '1', '1', '1', '8', '8', '8', '8', '11'),
(666, '4', '4-р цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Төр', 'А', '12', '12', '', '395', '200', '395', '200', '', '', '2', '1', '39', '35', '1', '1', '1', '1', '13', '13', '12', '12', '12'),
(667, '5', '5-р цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Төр', 'А', '12', '12', '', '415', '200', '415', '200', '', '', '4', '2', '39', '34', '1', '1', '1', '1', '13', '13', '12', '12', '12'),
(668, '6', '6-р цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Төр', 'А', '10', '10', '', '296', '138', '296', '138', '', '', '12', '1', '35', '31', '1', '1', '1', '1', '11', '11', '10', '10', '12'),
(669, '7', '7-р цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Төр', 'А', '13', '13', '', '359', '198', '359', '198', '', '', '11', '41', '49', '43', '1', '1', '1', '1', '14', '14', '16', '16', '17'),
(670, '8', '8-р цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Төр', 'А', '6', '6', '', '177', '84', '177', '84', '', '', '4', '3', '24', '22', '1', '1', '1', '1', '7', '7', '6', '6', '9'),
(671, '9', '9-р цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Төр', 'С', '9', '9', '', '215', '106', '215', '106', '', '', '23', '', '35', '30', '1', '1', '1', '1', '10', '10', '9', '9', '14'),
(672, '10', '10-р цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Төр', 'А', '8', '8', '', '237', '118', '237', '118', '', '', '13', '', '39', '36', '1', '1', '1', '1', '12', '12', '14', '14', '11'),
(673, '11', '11-р цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Төр', 'А', '6', '6', '', '191', '95', '191', '95', '', '', '3', '', '27', '23', '1', '1', '1', '1', '7', '7', '6', '6', '12'),
(674, '12', '12-р цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Төр', 'А', '12', '12', '', '330', '156', '330', '156', '', '', '3', '2', '39', '32', '1', '1', '1', '1', '13', '12', '12', '12', '12'),
(675, '13', '13-р цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Төр', 'А', '12', '12', '', '382', '178', '382', '178', '', '', '14', '2', '43', '39', '1', '1', '1', '1', '13', '13', '12', '12', '16'),
(676, '14', '14-р цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Төр', 'С', '6', '6', '', '137', '72', '137', '72', '', '', '5', '1', '24', '22', '1', '1', '1', '1', '6', '6', '6', '6', '10'),
(677, '15', '15-р цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Төр', 'А', '13', '13', '', '413', '200', '413', '200', '', '', '3', '4', '41', '38', '1', '1', '1', '1', '14', '14', '13', '13', '12'),
(678, '16', '16-р цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Төр', 'С', '7', '6', '1', '219', '108', '171', '89', '48', '19', '49', '1', '28', '24', '1', '1', '1', '1', '7', '7', '8', '8', '11'),
(679, '17', '17-р цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Төр', 'С', '6', '6', '', '178', '77', '178', '77', '', '', '8', '1', '23', '22', '1', '1', '', '', '7', '7', '6', '6', '9'),
(680, '18', '18-р цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Төр', 'А', '12', '12', '', '330', '162', '330', '162', '', '', '10', '4', '38', '34', '1', '1', '1', '1', '13', '13', '12', '12', '11'),
(681, '19', '19-р цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Төр', 'А', '4', '4', '', '108', '53', '108', '53', '', '', '2', '', '18', '18', '1', '1', '', '', '5', '5', '4', '4', '8'),
(682, '20', '21-р цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Төр', 'А', '12', '12', '', '336', '175', '336', '175', '', '', '7', '3', '39', '35', '1', '1', '1', '1', '13', '13', '12', '12', '12'),
(683, '21', '22-р цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Төр', 'А', '12', '12', '', '356', '166', '356', '166', '', '', '5', '2', '39', '35', '1', '1', '1', '1', '13', '13', '12', '12', '12'),
(684, '22', '23-р цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Төр', 'А', '8', '8', '', '249', '118', '249', '118', '', '', '3', '1', '31', '26', '1', '1', '1', '1', '9', '9', '8', '8', '12'),
(685, '23', '24-р цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Төр', 'А', '8', '8', '', '248', '128', '248', '128', '', '', '7', '', '31', '26', '1', '1', '1', '1', '9', '9', '8', '8', '12'),
(686, '24', '25-р цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Төр', 'А', '6', '6', '', '194', '90', '194', '90', '', '', '4', '', '24', '19', '1', '1', '1', '1', '7', '7', '6', '6', '9'),
(687, '25', 'Дархан-Уул аймгийн Дархан сумын 26 дугаар цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Төр', 'А', '5', '5', '', '166', '86', '166', '86', '', '', '3', '3', '22', '18', '1', '1', '', '', '6', '6', '5', '5', '10'),
(688, '26', 'Дархан сумын 27 дугаар цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Төр', 'А', '6', '6', '', '188', '100', '188', '100', '', '', '2', '1', '24', '20', '1', '1', '1', '1', '7', '7', '6', '6', '9'),
(689, '27', 'Дархан-Уул аймгийн Дархан сумын хорин наймдугаар цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Төр', 'А', '6', '6', '', '188', '90', '188', '90', '', '', '4', '2', '25', '22', '1', '1', '1', '1', '7', '7', '6', '6', '10'),
(690, '28', 'Дархан-Уул аймгийн Дархан сумын гуч дугаар цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Төр', 'А', '8', '8', '', '242', '102', '242', '102', '', '', '9', '1', '30', '26', '1', '1', '1', '1', '9', '9', '8', '8', '11'),
(691, '29', 'Дархан-Уул аймгийн Дархан сумын хорин есдүгээр цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Төр', 'А', '6', '6', '', '171', '80', '171', '80', '', '', '8', '', '25', '21', '1', '1', '1', '1', '7', '7', '6', '6', '10'),
(692, '30', 'Дархан-Уул аймгийн Дархан сумын гучин нэгдүгээр цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Төр', 'А', '4', '4', '', '135', '76', '135', '76', '', '', '6', '', '20', '16', '1', '1', '', '', '5', '5', '4', '4', '10'),
(693, '1', '20-р цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Хувь', 'А', '2', '2', '', '24', '10', '24', '10', '', '', '', '', '5', '4', '1', '', '', '', '2', '2', '', '', '2'),
(694, '2', 'Бамбарууш цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Хувь', 'А', '2', '2', '', '18', '9', '18', '9', '', '', '', '', '11', '11', '1', '1', '', '', '3', '3', '3', '3', '4'),
(695, '3', 'Кидстаун цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Хувь', 'А', '2', '2', '', '34', '19', '34', '19', '', '', '', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1'),
(696, '4', 'Номин цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Хувь', 'А', '2', '2', '', '35', '17', '35', '17', '', '', '2', '', '7', '6', '1', '1', '1', '1', '1', '1', '2', '2', '2'),
(697, '5', 'Солонго цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Хувь', 'А', '4', '4', '', '58', '32', '58', '32', '', '', '2', '', '13', '11', '1', '1', '1', '', '4', '4', '4', '4', '3'),
(698, '6', 'Сүмдарьцэцэг цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Хувь', 'А', '4', '4', '', '43', '17', '43', '17', '', '', '', '', '14', '13', '1', '1', '', '', '3', '3', '4', '4', '6'),
(699, '7', 'Хааны хүүхдүүд цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Хувь', 'А', '4', '4', '', '100', '55', '100', '55', '', '', '1', '', '11', '10', '1', '1', '', '', '3', '3', '3', '3', '4'),
(700, '8', 'Цоглог жаалууд цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Хувь', 'А', '2', '2', '', '27', '14', '27', '14', '', '', '', '', '5', '4', '1', '1', '', '', '1', '1', '1', '1', '2'),
(701, '9', 'Жаргалант Өсөх ирээдүй цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Хувь', 'А', '5', '5', '', '92', '43', '92', '43', '', '', '', '', '21', '20', '1', '1', '', '', '7', '7', '8', '8', '5'),
(702, '10', 'Дархан сумын Шинэ алхам цэцэрлэг', 'Дархан-Уул', 8, '', 0, 'Хувь', 'А', '4', '4', '', '86', '45', '86', '45', '', '', '', '', '17', '17', '1', '1', '', '', '6', '6', '6', '6', '4'),
(703, '1', '131-р цэцэрлэг', 'Улаанбаатар', 1, 'Багануур', 1, 'Төр', 'Н', '12', '12', '', '237', '125', '237', '125', '', '', '7', '3', '42', '37', '1', '1', '1', '1', '14', '13', '11', '11', '15'),
(704, '2', '132-р цэцэрлэг', 'Улаанбаатар', 1, 'Багануур', 1, 'Төр', 'Н', '8', '8', '', '208', '103', '208', '103', '', '', '26', '', '48', '33', '1', '1', '1', '1', '9', '9', '8', '8', '29'),
(705, '3', '138-р цэцэрлэг', 'Улаанбаатар', 1, 'Багануур', 1, 'Төр', 'Н', '12', '12', '', '277', '146', '277', '146', '', '', '25', '3', '46', '41', '1', '1', '1', '1', '14', '14', '13', '13', '17'),
(706, '4', '139-р цэцэрлэг', 'Улаанбаатар', 1, 'Багануур', 1, 'Төр', 'Н', '12', '12', '', '309', '157', '309', '157', '', '', '19', '4', '44', '39', '1', '1', '', '', '14', '13', '12', '12', '17'),
(707, '5', '142-р цэцэрлэг', 'Улаанбаатар', 1, 'Багануур', 1, 'Төр', 'Н', '8', '8', '', '212', '94', '212', '94', '', '', '4', '2', '34', '29', '1', '1', '1', '1', '9', '8', '8', '8', '15'),
(708, '6', '193-р цэцэрлэг', 'Улаанбаатар', 1, 'Багануур', 1, 'Төр', 'Н', '12', '12', '', '305', '161', '305', '161', '', '', '7', '', '46', '40', '1', '1', '1', '1', '14', '13', '12', '12', '18'),
(709, '7', '194-р цэцэрлэг', 'Улаанбаатар', 1, 'Багануур', 1, 'Төр', 'Н', '4', '4', '', '100', '41', '100', '41', '', '', '9', '', '23', '20', '1', '1', '1', '1', '5', '5', '4', '4', '12'),
(710, '8', '235-р цэцэрлэг', 'Улаанбаатар', 1, 'Багануур', 1, 'Төр', 'Н', '4', '4', '', '92', '50', '92', '50', '', '', '6', '', '23', '20', '1', '1', '1', '1', '5', '5', '4', '4', '12'),
(711, '9', '241-р цэцэрлэг', 'Улаанбаатар', 1, 'Багануур', 1, 'Төр', 'Н', '10', '10', '', '296', '147', '296', '147', '', '', '15', '3', '47', '43', '1', '1', '1', '1', '14', '14', '14', '14', '17'),
(712, '1', '11-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '8', '8', '', '274', '135', '274', '135', '', '', '1', '5', '35', '31', '1', '1', '1', '1', '10', '10', '8', '8', '15'),
(713, '2', '13-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '10', '10', '', '311', '148', '311', '148', '', '', '1', '5', '34', '30', '1', '1', '1', '1', '12', '12', '10', '10', '10'),
(714, '3', '15-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '6', '6', '', '199', '93', '199', '93', '', '', '1', '', '25', '20', '1', '1', '1', '1', '8', '7', '5', '5', '10'),
(715, '4', '30-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '12', '12', '', '359', '204', '359', '204', '', '', '3', '', '41', '35', '1', '1', '1', '1', '14', '13', '11', '11', '14'),
(716, '5', '34-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '1', '1', '', '11', '4', '11', '4', '', '', '', '', '6', '5', '1', '1', '', '', '1', '1', '', '', '4'),
(717, '6', '47-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '20', '20', '', '678', '318', '678', '318', '', '', '7', '2', '69', '62', '1', '1', '1', '1', '20', '20', '21', '21', '26'),
(718, '7', '57-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '11', '11', '', '354', '175', '354', '175', '', '', '1', '', '46', '37', '1', '1', '1', '1', '13', '12', '11', '11', '20'),
(719, '8', '66-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '16', '16', '', '518', '238', '518', '238', '', '', '', '1', '59', '52', '1', '1', '1', '1', '20', '19', '16', '16', '21'),
(720, '9', '76-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '12', '12', '', '330', '161', '330', '161', '', '', '2', '', '51', '46', '1', '1', '1', '1', '14', '14', '20', '20', '15'),
(721, '10', '77-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '18', '18', '', '576', '269', '576', '269', '', '', '9', '', '60', '54', '1', '1', '2', '2', '22', '20', '18', '18', '17'),
(722, '11', '85-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '12', '12', '', '360', '165', '360', '165', '', '', '1', '', '43', '38', '1', '1', '1', '1', '14', '14', '12', '12', '15'),
(723, '12', '86-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '13', '13', '', '335', '156', '335', '156', '', '', '2', '1', '41', '36', '1', '1', '1', '1', '14', '14', '12', '12', '13'),
(724, '13', '87-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '13', '13', '', '483', '230', '483', '230', '', '', '1', '1', '44', '39', '1', '1', '1', '1', '15', '14', '13', '13', '14'),
(725, '14', '88-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '13', '13', '', '400', '191', '400', '191', '', '', '3', '5', '44', '40', '1', '1', '1', '1', '15', '15', '13', '13', '14'),
(726, '15', '89-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '12', '12', '', '401', '183', '401', '183', '', '', '1', '3', '43', '37', '1', '1', '1', '1', '14', '13', '12', '12', '15'),
(727, '16', '93-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '12', '12', '', '375', '175', '375', '175', '', '', '', '2', '39', '34', '1', '1', '1', '1', '13', '12', '12', '12', '12'),
(728, '17', '94-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '10', '10', '', '254', '127', '254', '127', '', '', '8', '', '54', '47', '1', '1', '1', '1', '16', '15', '18', '18', '18'),
(729, '18', '95-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '18', '18', '', '476', '239', '476', '239', '', '', '2', '1', '58', '52', '1', '1', '2', '2', '21', '20', '17', '17', '17'),
(730, '19', '96-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '12', '12', '', '352', '170', '352', '170', '', '', '1', '5', '42', '37', '1', '1', '1', '1', '14', '14', '12', '12', '14'),
(731, '20', '97-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '12', '12', '', '370', '181', '370', '181', '', '', '1', '1', '42', '37', '1', '1', '1', '1', '14', '13', '12', '12', '14'),
(732, '21', '98-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '14', '14', '', '476', '227', '476', '227', '', '', '1', '4', '45', '39', '1', '1', '1', '1', '16', '14', '14', '14', '13'),
(733, '22', '100-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '13', '13', '', '566', '284', '566', '284', '', '', '1', '6', '42', '37', '1', '1', '1', '1', '13', '12', '12', '12', '15'),
(734, '23', '114-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '18', '18', '', '678', '322', '678', '322', '', '', '2', '2', '59', '54', '1', '1', '1', '1', '21', '21', '18', '18', '18'),
(735, '24', '120-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '21', '21', '', '704', '340', '704', '340', '', '', '', '', '79', '63', '1', '1', '2', '2', '24', '23', '20', '20', '32'),
(736, '25', '133-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '14', '14', '', '515', '263', '515', '263', '', '', '5', '3', '48', '41', '1', '1', '1', '1', '16', '15', '14', '14', '16'),
(737, '26', '141-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '14', '14', '', '485', '255', '485', '255', '', '', '1', '2', '45', '41', '1', '1', '1', '1', '16', '16', '14', '14', '13'),
(738, '27', '157-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '24', '24', '', '748', '370', '748', '370', '', '', '', '3', '75', '64', '1', '1', '3', '3', '27', '26', '22', '22', '22'),
(739, '28', '161-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '12', '12', '', '376', '167', '376', '167', '', '', '', '1', '43', '39', '1', '1', '1', '1', '14', '14', '12', '12', '15'),
(740, '29', '162-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '12', '12', '', '503', '246', '503', '246', '', '', '3', '', '42', '37', '1', '1', '1', '1', '14', '13', '12', '12', '14'),
(741, '30', '164-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '23', '23', '', '725', '350', '725', '350', '', '', '1', '8', '71', '66', '1', '1', '2', '2', '27', '26', '22', '22', '19'),
(742, '31', '197-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '4', '4', '', '141', '68', '141', '68', '', '', '1', '', '24', '20', '1', '1', '1', '1', '6', '6', '4', '4', '12'),
(743, '32', '198-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '4', '4', '', '160', '75', '160', '75', '', '', '', '3', '24', '18', '1', '1', '1', '1', '6', '5', '4', '4', '12'),
(744, '33', '249-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '4', '4', '', '39', '23', '39', '23', '', '', '', '', '11', '11', '1', '1', '', '', '4', '4', '3', '3', '3'),
(745, '34', '242-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '5', '5', '', '186', '96', '186', '96', '', '', '', '', '25', '21', '1', '1', '1', '1', '7', '6', '5', '5', '11'),
(746, '35', '262-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '17', '17', '', '691', '352', '691', '352', '', '', '', '1', '34', '28', '1', '1', '1', '', '13', '12', '9', '9', '10'),
(747, '36', '266-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '4', '4', '', '122', '56', '122', '56', '', '', '1', '1', '22', '18', '1', '1', '1', '1', '6', '6', '3', '3', '11'),
(748, '37', '295-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '9', '9', '', '289', '124', '289', '124', '', '', '1', '', '33', '29', '1', '1', '1', '1', '11', '10', '7', '7', '13'),
(749, '38', '278-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '10', '10', '', '348', '168', '348', '168', '', '', '6', '', '33', '29', '1', '1', '1', '1', '11', '11', '10', '10', '10'),
(750, '39', '309-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Төр', 'Н', '13', '13', '', '522', '252', '522', '252', '', '', '2', '', '34', '31', '1', '1', '1', '1', '13', '13', '11', '11', '8'),
(751, '1', 'Билэг авьяас цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '2', '2', '', '72', '31', '72', '31', '', '', '1', '', '6', '5', '1', '1', '', '', '2', '2', '2', '2', '1'),
(752, '2', 'Бяцхан сувд цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '4', '4', '', '26', '11', '26', '11', '', '', '', '12', '7', '7', '1', '1', '', '', '', '', '3', '3', '3'),
(753, '3', 'Бяцхан эрдэмтэн цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '2', '2', '', '25', '7', '25', '7', '', '', '', '25', '6', '6', '1', '1', '1', '1', '2', '2', '', '', '2'),
(754, '4', 'Бүжин цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '1', '1', '', '22', '8', '22', '8', '', '', '1', '', '2', '2', '1', '1', '', '', '1', '1', '', '', ''),
(755, '5', 'Бөмбөөхөн цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '4', '4', '', '135', '76', '135', '76', '', '', '1', '', '13', '13', '1', '1', '1', '1', '4', '4', '4', '4', '3'),
(756, '6', 'Гоё ертөнц цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '4', '4', '', '64', '35', '64', '35', '', '', '', '', '12', '9', '1', '1', '', '', '3', '3', '3', '3', '5'),
(757, '7', 'Гэгээн ертөнц 2 цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '2', '2', '', '37', '21', '37', '21', '', '', '', '', '5', '5', '1', '1', '', '', '2', '2', '1', '1', '1'),
(758, '8', 'Дөрвөн улирал жаалууд цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '3', '3', '', '74', '36', '74', '36', '', '', '', '', '8', '8', '1', '1', '', '', '3', '3', '3', '3', '1'),
(759, '9', 'Жаргалан цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '5', '5', '', '155', '78', '155', '78', '', '', '', '', '11', '11', '1', '1', '1', '1', '3', '3', '5', '5', '1'),
(760, '10', 'Золбоолог багачууд цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '2', '2', '', '48', '26', '48', '26', '', '', '', '', '5', '4', '1', '', '', '', '2', '2', '1', '1', '1'),
(761, '11', 'Их хонгор үрс цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '2', '2', '', '34', '12', '34', '12', '', '', '', '', '7', '6', '1', '1', '', '', '2', '2', '3', '3', '1'),
(762, '12', 'Лусын дагина цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '3', '3', '', '51', '27', '51', '27', '', '', '5', '', '8', '8', '1', '1', '1', '1', '2', '2', '3', '3', '1'),
(763, '13', 'Мон- эрин цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '4', '4', '', '111', '51', '111', '51', '', '', '', '', '10', '9', '1', '1', '', '', '4', '3', '4', '4', '1'),
(764, '14', 'Мөндөө цэцэрлэг цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '1', '1', '', '25', '11', '25', '11', '', '', '1', '', '4', '3', '1', '1', '', '', '1', '1', '1', '1', '1'),
(765, '15', 'Оджин цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '5', '5', '', '120', '62', '120', '62', '', '', '1', '', '11', '11', '1', '1', '', '', '5', '5', '5', '5', ''),
(766, '16', 'Оньсхон-2 цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '3', '3', '', '49', '27', '49', '27', '', '', '1', '', '6', '6', '1', '1', '', '', '3', '3', '1', '1', '1'),
(767, '17', 'Саруул өргөө цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '4', '4', '', '60', '24', '60', '24', '', '', '2', '', '8', '8', '1', '1', '', '', '4', '4', '2', '2', '1'),
(768, '18', 'Тэлмэн цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '2', '2', '', '18', '5', '18', '5', '', '', '', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1'),
(769, '19', 'Түвшинбүүвэй цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '3', '3', '', '47', '26', '47', '26', '', '', '', '', '5', '5', '1', '1', '', '', '', '', '3', '3', '1'),
(770, '20', 'Хэрэмхэн цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '2', '2', '', '39', '19', '39', '19', '', '', '', '', '5', '5', '1', '1', '', '', '2', '2', '1', '1', '1'),
(771, '21', 'Хүслэн цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '3', '3', '', '61', '27', '61', '27', '', '', '3', '', '7', '7', '1', '1', '', '', '3', '3', '2', '2', '1'),
(772, '22', 'Чин хайрын бэлэг цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '3', '3', '', '44', '18', '44', '18', '', '', '', '', '7', '7', '1', '1', '', '', '3', '3', '2', '2', '1'),
(773, '23', 'Чингүндэй өргөө цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '1', '1', '', '15', '4', '15', '4', '', '', '', '', '3', '3', '1', '1', '', '', '1', '1', '', '', '1'),
(774, '24', 'Шинэ жаргалан цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '6', '6', '', '190', '101', '190', '101', '', '', '2', '', '15', '14', '2', '1', '', '', '6', '6', '6', '6', '1'),
(775, '25', 'Шүтээн үрс цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '5', '5', '', '88', '53', '88', '53', '', '', '', '', '13', '13', '1', '1', '', '', '3', '3', '6', '6', '3'),
(776, '26', 'Энх өргөө цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '3', '3', '', '46', '20', '46', '20', '', '', '1', '', '11', '9', '1', '1', '', '', '3', '3', '3', '3', '4'),
(777, '27', 'Эрдэм цэцэрлэг цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '5', '5', '', '150', '73', '150', '73', '', '', '1', '', '13', '13', '1', '1', '', '', '6', '6', '4', '4', '2'),
(778, '28', 'Эрин зууны багачууд цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '1', '1', '', '22', '12', '22', '12', '', '', '', '', '4', '3', '1', '1', '', '', '1', '1', '1', '1', '1'),
(779, '29', 'Эрхэмсэг оршихуй цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '3', '3', '', '38', '25', '38', '25', '', '', '', '', '6', '6', '1', '1', '', '', '3', '3', '1', '1', '1'),
(780, '30', 'Монгени багачууд', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '2', '2', '', '36', '20', '36', '20', '', '', '', '', '3', '3', '1', '1', '', '', '1', '1', '', '', '1'),
(781, '31', 'Амгалангуа', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '4', '4', '', '17', '9', '17', '9', '', '', '', '', '6', '6', '', '', '1', '1', '3', '3', '', '', '2'),
(782, '32', '“Эм Эн Би-гийн хүүхдүүд”', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '4', '4', '', '99', '45', '99', '45', '', '', '', '', '13', '13', '1', '1', '', '', '4', '4', '4', '4', '4'),
(783, '33', 'Ялгууны найзууд', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '2', '2', '', '54', '23', '54', '23', '', '', '1', '', '4', '4', '', '', '', '', '1', '1', '3', '3', ''),
(784, '34', 'Бяцхан монгол одод', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '2', '2', '', '42', '23', '42', '23', '', '', '', '', '3', '3', '1', '1', '', '', '1', '1', '1', '1', ''),
(785, '35', 'Нандин гурван эрдэнэ гурав цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '2', '2', '', '30', '17', '30', '17', '', '', '', '', '6', '6', '1', '1', '', '', '2', '2', '1', '1', '2'),
(786, '36', 'Жаалхүү цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '2', '2', '', '64', '27', '64', '27', '', '', '', '', '7', '6', '1', '1', '', '', '2', '2', '3', '3', '1'),
(787, '37', 'Сод жаал цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '2', '2', '', '44', '21', '44', '21', '', '', '', '', '5', '5', '1', '1', '', '', '1', '1', '2', '2', '1');
INSERT INTO `import` (`id`, `A`, `B`, `C`, `city`, `D`, `district`, `E`, `F`, `G`, `H`, `I`, `J`, `K`, `L`, `M`, `N`, `O`, `P`, `Q`, `R`, `S`, `T`, `U`, `V`, `W`, `X`, `Y`, `Z`, `AA`, `AB`) VALUES
(788, '38', 'Хүслийн ордон цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '3', '3', '', '47', '18', '47', '18', '', '', '', '44', '16', '13', '1', '1', '1', '', '5', '5', '5', '5', '4'),
(789, '39', 'Нарны хаан хүүхдүүд цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '3', '3', '', '24', '9', '24', '9', '', '', '', '11', '6', '5', '1', '1', '', '', '2', '1', '2', '2', '1'),
(790, '40', 'Амин сар цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '4', '4', '', '124', '60', '124', '60', '', '', '1', '', '10', '10', '1', '1', '', '', '4', '4', '3', '3', '2'),
(791, '41', 'Минж цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '5', '5', '', '129', '64', '129', '64', '', '', '1', '', '11', '11', '1', '1', '', '', '3', '3', '3', '3', '4'),
(792, '42', 'Ай кидс цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '5', '5', '', '105', '55', '105', '55', '', '', '', '', '10', '10', '1', '1', '', '', '3', '3', '3', '3', '3'),
(793, '43', 'Сэцэн өлгийн өргөө цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '1', '1', '', '13', '6', '13', '6', '', '', '', '', '4', '4', '1', '1', '', '', '1', '1', '1', '1', '1'),
(794, '44', 'Энхлэнбэби цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '2', '2', '', '46', '18', '46', '18', '', '', '1', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1'),
(795, '45', 'Мандалын найзууд цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '2', '2', '', '11', '5', '11', '5', '', '', '', '', '6', '5', '', '', '1', '1', '3', '3', '1', '1', '1'),
(796, '46', 'Ордны эзэд цэцэрлэг', 'Улаанбаатар', 1, 'Баянгол', 3, 'Хувь', 'Н', '2', '2', '', '27', '14', '27', '14', '', '', '', '', '6', '6', '1', '1', '', '', '2', '2', '1', '1', '2'),
(797, '1', '3-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '15', '15', '', '519', '262', '519', '262', '', '', '7', '', '70', '57', '1', '1', '2', '2', '17', '16', '15', '15', '35'),
(798, '2', '6-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '15', '15', '', '528', '252', '528', '252', '', '', '7', '1', '53', '45', '1', '1', '2', '2', '17', '16', '14', '14', '19'),
(799, '3', '8-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '5', '5', '', '246', '112', '246', '112', '', '', '', '3', '28', '22', '1', '1', '1', '1', '7', '6', '5', '5', '14'),
(800, '4', '10-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '15', '15', '', '189', '77', '189', '77', '', '', '5', '184', '103', '86', '1', '1', '1', '1', '17', '16', '29', '29', '55'),
(801, '5', '20-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '21', '21', '', '682', '319', '682', '319', '', '', '8', '5', '76', '60', '1', '1', '2', '2', '23', '21', '17', '17', '33'),
(802, '6', '21-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '15', '15', '', '657', '312', '657', '312', '', '', '', '2', '49', '44', '1', '1', '2', '2', '18', '17', '13', '13', '15'),
(803, '7', '22-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '16', '16', '', '681', '324', '681', '324', '', '', '4', '5', '58', '51', '1', '1', '1', '1', '18', '18', '16', '16', '22'),
(804, '8', '32-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '16', '16', '', '657', '300', '657', '300', '', '', '', '3', '63', '50', '1', '1', '2', '2', '19', '17', '15', '15', '26'),
(805, '9', '45-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '8', '8', '', '231', '110', '231', '110', '', '', '1', '', '34', '27', '1', '1', '1', '1', '10', '9', '8', '8', '14'),
(806, '10', '50-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '17', '17', '', '605', '301', '605', '301', '', '', '1', '2', '59', '49', '1', '1', '2', '2', '18', '18', '14', '14', '24'),
(807, '11', '52-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '7', '7', '', '277', '143', '277', '143', '', '', '', '2', '30', '25', '1', '1', '2', '2', '7', '7', '5', '5', '15'),
(808, '12', '59-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '16', '16', '', '589', '274', '589', '274', '', '', '', '3', '62', '51', '1', '1', '2', '2', '19', '16', '16', '16', '24'),
(809, '13', '61-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '16', '16', '', '579', '285', '579', '285', '', '', '1', '5', '64', '55', '1', '1', '2', '2', '19', '19', '16', '16', '26'),
(810, '14', '62-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '13', '13', '', '360', '171', '360', '171', '', '', '4', '4', '49', '43', '1', '1', '1', '1', '15', '14', '13', '13', '19'),
(811, '15', '63-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '11', '11', '', '391', '189', '391', '189', '', '', '22', '', '58', '50', '1', '1', '2', '2', '13', '12', '18', '18', '24'),
(812, '16', '64-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '5', '5', '', '191', '86', '191', '86', '', '', '3', '', '27', '19', '1', '1', '1', '1', '7', '4', '5', '5', '13'),
(813, '17', '82-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '15', '15', '', '645', '317', '645', '317', '', '', '2', '1', '42', '38', '1', '1', '1', '1', '16', '16', '11', '11', '13'),
(814, '18', '115-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '20', '20', '', '731', '362', '731', '362', '', '', '3', '', '73', '62', '1', '1', '2', '2', '24', '22', '17', '17', '29'),
(815, '19', '122-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '14', '14', '', '601', '263', '601', '263', '', '', '', '3', '53', '45', '1', '1', '1', '1', '18', '17', '14', '14', '19'),
(816, '20', '128-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '9', '9', '', '338', '164', '338', '164', '', '', '3', '', '35', '29', '1', '1', '2', '2', '8', '8', '6', '6', '18'),
(817, '21', '129-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '18', '18', '', '723', '342', '723', '342', '', '', '1', '', '65', '57', '1', '1', '1', '1', '21', '20', '18', '18', '24'),
(818, '22', '136-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '12', '12', '', '400', '202', '400', '202', '', '', '1', '1', '41', '37', '1', '1', '2', '2', '15', '15', '10', '10', '13'),
(819, '23', '147-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '30', '30', '', '1027', '508', '1027', '508', '', '', '4', '4', '85', '76', '1', '1', '1', '1', '33', '33', '25', '25', '25'),
(820, '24', '167-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '11', '11', '', '307', '167', '307', '167', '', '', '6', '2', '44', '33', '1', '1', '2', '1', '11', '10', '10', '10', '20'),
(821, '25', '168-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '8', '8', '', '289', '142', '289', '142', '', '', '3', '', '34', '28', '1', '1', '1', '1', '9', '8', '8', '8', '15'),
(822, '26', '169-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '4', '4', '', '171', '80', '171', '80', '', '', '', '', '24', '19', '1', '1', '1', '1', '4', '4', '4', '4', '14'),
(823, '27', '172-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '11', '11', '', '292', '158', '292', '158', '', '', '1', '', '32', '28', '1', '1', '1', '1', '11', '11', '7', '7', '12'),
(824, '28', '191-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '10', '10', '', '256', '139', '256', '139', '', '', '1', '', '35', '29', '1', '1', '1', '1', '11', '11', '9', '9', '13'),
(825, '29', '199-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '11', '11', '', '386', '180', '386', '180', '', '', '4', '', '45', '33', '1', '1', '1', '1', '11', '10', '11', '11', '21'),
(826, '30', '200-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '8', '8', '', '286', '134', '286', '134', '', '', '2', '4', '39', '31', '1', '1', '1', '1', '10', '9', '8', '8', '19'),
(827, '31', '201-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '8', '8', '', '328', '173', '328', '173', '', '', '6', '', '32', '28', '1', '1', '1', '1', '10', '10', '8', '8', '12'),
(828, '32', '202-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '8', '8', '', '282', '148', '282', '148', '', '', '3', '1', '34', '28', '1', '1', '1', '1', '10', '9', '7', '7', '15'),
(829, '33', '203-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '12', '12', '', '394', '188', '394', '188', '', '', '9', '1', '34', '29', '1', '1', '1', '1', '9', '9', '8', '8', '15'),
(830, '34', '204-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '4', '4', '', '191', '97', '191', '97', '', '', '2', '', '26', '21', '1', '1', '1', '1', '6', '6', '4', '4', '14'),
(831, '35', '210-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '10', '10', '', '302', '159', '302', '159', '', '', '4', '', '35', '30', '1', '1', '1', '1', '11', '9', '10', '10', '12'),
(832, '36', '213-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '7', '7', '', '287', '132', '287', '132', '', '', '3', '1', '33', '28', '1', '1', '1', '1', '9', '8', '7', '7', '15'),
(833, '37', '211-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '10', '10', '', '406', '187', '406', '187', '', '', '5', '', '33', '27', '1', '1', '1', '1', '11', '11', '4', '4', '16'),
(834, '38', '212-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '10', '10', '', '305', '147', '305', '147', '', '', '1', '', '39', '35', '1', '1', '1', '1', '11', '11', '10', '10', '16'),
(835, '39', '251-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '4', '4', '', '173', '96', '173', '96', '', '', '', '1', '20', '16', '1', '1', '1', '1', '4', '4', '4', '4', '10'),
(836, '40', '255 дугаар цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '7', '7', '', '299', '149', '299', '149', '', '', '', '', '27', '20', '1', '1', '2', '2', '7', '5', '7', '7', '10'),
(837, '41', '256 дугаар цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '15', '15', '', '710', '388', '710', '388', '', '', '', '', '64', '52', '1', '1', '2', '2', '18', '16', '15', '15', '28'),
(838, '42', '146 дугаар цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '19', '19', '', '796', '399', '796', '399', '', '', '', '5', '75', '64', '1', '1', '2', '2', '24', '21', '19', '19', '29'),
(839, '43', '268-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '10', '10', '', '451', '213', '451', '213', '', '', '6', '', '28', '24', '1', '1', '1', '1', '10', '10', '4', '4', '12'),
(840, '44', '267-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '11', '11', '', '348', '167', '348', '167', '', '', '4', '', '33', '29', '1', '1', '2', '2', '9', '9', '7', '7', '14'),
(841, '45', '257-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '6', '6', '', '235', '114', '235', '114', '', '', '5', '1', '27', '22', '1', '1', '1', '1', '6', '5', '6', '6', '13'),
(842, '46', '289-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '14', '14', '', '597', '289', '597', '289', '', '', '5', '', '50', '43', '1', '1', '2', '2', '16', '14', '13', '13', '18'),
(843, '47', '296-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '10', '10', '', '383', '191', '383', '191', '', '', '', '4', '39', '34', '1', '1', '1', '1', '12', '11', '10', '10', '15'),
(844, '48', '302-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '4', '4', '', '155', '71', '155', '71', '', '', '4', '', '24', '20', '1', '1', '', '', '5', '5', '4', '4', '14'),
(845, '49', '297-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '9', '9', '', '241', '118', '241', '118', '', '', '3', '1', '38', '32', '1', '1', '1', '1', '10', '10', '9', '9', '17'),
(846, '50', '265-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '4', '4', '', '118', '54', '118', '54', '', '', '', '1', '23', '19', '1', '1', '1', '1', '4', '4', '4', '4', '13'),
(847, '51', '301-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '14', '14', '', '487', '235', '487', '235', '', '', '2', '', '48', '43', '1', '1', '2', '2', '15', '15', '11', '11', '19'),
(848, '52', '305-р цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Төр', 'Н', '8', '8', '', '388', '189', '388', '189', '', '', '', '1', '32', '27', '1', '1', '1', '1', '9', '9', '8', '8', '13'),
(849, '1', 'Арга билэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '3', '3', '', '67', '30', '67', '30', '', '', '', '', '8', '8', '1', '1', '1', '1', '3', '3', '2', '2', '1'),
(850, '2', 'Аз хишиг цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '4', '4', '', '134', '67', '134', '67', '', '', '4', '', '13', '9', '1', '1', '', '', '4', '4', '2', '1', '6'),
(851, '3', 'Алдрай цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '4', '4', '', '60', '38', '60', '38', '', '', '', '', '9', '9', '1', '1', '', '', '3', '3', '3', '3', '2'),
(852, '4', 'Алтан манцуй цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '4', '4', '', '135', '70', '135', '70', '', '', '2', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1'),
(853, '5', 'Амилаагийн найз нар  цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '6', '6', '', '140', '66', '140', '66', '', '', '', '', '15', '15', '1', '1', '', '', '6', '6', '6', '6', '2'),
(854, '6', 'Амилагийн жаалууд цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '4', '4', '', '73', '34', '73', '34', '', '', '1', '', '10', '10', '1', '1', '', '', '4', '4', '4', '4', '1'),
(855, '7', 'Амина цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '3', '3', '', '93', '40', '93', '40', '', '', '1', '', '7', '7', '1', '1', '', '', '3', '3', '2', '2', '1'),
(856, '8', 'Анар-Эрдэнэ цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '50', '28', '50', '28', '', '', '1', '', '6', '6', '1', '1', '', '', '1', '1', '2', '2', '2'),
(857, '9', 'Ану  цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '3', '3', '', '70', '34', '70', '34', '', '', '1', '', '7', '7', '1', '1', '', '', '3', '3', '1', '1', '2'),
(858, '10', 'Байгаль эх-эко цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '77', '41', '77', '41', '', '', '2', '', '7', '7', '1', '1', '1', '1', '2', '2', '2', '2', '1'),
(859, '11', 'Бамбага эгч цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '51', '25', '51', '25', '', '', '1', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1'),
(860, '12', 'Баян Монголын Багачууд цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '86', '46', '86', '46', '', '', '1', '', '5', '5', '', '', '', '', '2', '2', '2', '2', '1'),
(861, '13', 'Баяр баясал цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '4', '4', '', '72', '29', '72', '29', '', '', '3', '1', '14', '12', '1', '1', '1', '1', '4', '4', '3', '3', '5'),
(862, '14', 'Бидний үрс цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '8', '8', '', '116', '57', '116', '57', '', '', '', '', '21', '21', '1', '1', '', '', '9', '9', '8', '8', '3'),
(863, '15', 'Билгүүтзаяа цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '43', '24', '43', '24', '', '', '1', '', '6', '6', '', '', '1', '1', '3', '3', '2', '2', ''),
(864, '16', 'Биндэръяа цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '63', '26', '63', '26', '', '', '1', '', '7', '6', '1', '1', '', '', '2', '2', '2', '2', '2'),
(865, '17', 'Бумбагадай цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '32', '11', '32', '11', '', '', '', '', '5', '5', '1', '1', '', '', '1', '1', '1', '1', '2'),
(866, '18', 'Бяцхан баясгалан цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '7', '7', '', '176', '82', '176', '82', '', '', '', '', '20', '19', '1', '1', '', '', '8', '7', '7', '7', '4'),
(867, '19', 'Бяцхан монгол цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '6', '6', '', '165', '83', '165', '83', '', '', '', '', '13', '12', '1', '1', '', '', '6', '5', '4', '4', '2'),
(868, '20', 'Бяцхан өргөө цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '57', '24', '57', '24', '', '', '1', '', '5', '5', '', '', '', '', '2', '2', '2', '2', '1'),
(869, '21', 'Даянхүү  цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '6', '6', '', '216', '101', '216', '101', '', '', '3', '', '17', '15', '1', '1', '', '', '6', '6', '6', '6', '4'),
(870, '22', 'Дондогмаа цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '8', '8', '', '304', '151', '304', '151', '', '', '', '', '20', '20', '1', '1', '1', '1', '8', '8', '8', '8', '2'),
(871, '23', 'Дэггүй жаалууд цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '6', '6', '', '189', '96', '189', '96', '', '', '', '', '17', '16', '1', '1', '1', '1', '6', '6', '6', '6', '3'),
(872, '24', 'Дэгдээхий нас цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '63', '32', '63', '32', '', '', '', '', '7', '7', '1', '1', '', '', '2', '2', '3', '3', '1'),
(873, '25', 'Дэгдээхий үрс цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '4', '4', '', '131', '74', '131', '74', '', '', '1', '', '12', '12', '1', '1', '', '', '4', '4', '4', '4', '3'),
(874, '26', 'Дэлгэрэх нарны үрс цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '3', '3', '', '84', '42', '84', '42', '', '', '2', '', '8', '8', '1', '1', '', '', '3', '3', '3', '3', '1'),
(875, '27', 'Дүүрэн жаргал цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '55', '27', '55', '27', '', '', '1', '', '2', '2', '1', '1', '', '', '', '', '1', '1', ''),
(876, '28', 'Дөлгөөнтуул цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '3', '3', '', '95', '42', '95', '42', '', '', '', '', '10', '9', '1', '1', '1', '1', '2', '2', '4', '4', '2'),
(877, '29', 'Есөн-эрдэнэ цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '67', '33', '67', '33', '', '', '6', '', '7', '6', '1', '1', '', '', '2', '2', '2', '2', '2'),
(878, '30', 'Жаргалан гурав цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '6', '6', '', '199', '98', '199', '98', '', '', '1', '', '15', '14', '1', '1', '', '', '7', '7', '6', '6', '1'),
(879, '31', 'Жи жи цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '4', '4', '', '133', '69', '133', '69', '', '', '', '', '10', '10', '1', '1', '', '', '3', '3', '4', '4', '2'),
(880, '32', 'Илбэнх цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '45', '23', '45', '23', '', '', '', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1'),
(881, '33', 'Индиго жаалууд цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '6', '6', '', '199', '96', '199', '96', '', '', '', '', '16', '15', '2', '1', '', '', '6', '6', '6', '6', '2'),
(882, '34', 'Ирээдүйн гүнтэн цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '4', '4', '', '93', '44', '93', '44', '', '', '', '', '8', '7', '1', '1', '', '', '3', '3', '2', '2', '2'),
(883, '35', 'Их гүрний эрин үе цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '1', '1', '', '53', '29', '53', '29', '', '', '1', '', '3', '3', '1', '1', '', '', '1', '1', '1', '1', ''),
(884, '36', 'Их гүрний эрин үе-ирээдүй цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '4', '4', '', '122', '56', '122', '56', '', '', '1', '', '10', '10', '1', '1', '', '', '4', '4', '3', '3', '2'),
(885, '37', 'Их засаг Тэмүүжин цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '8', '8', '', '221', '115', '221', '115', '', '', '3', '', '19', '19', '1', '1', '', '', '7', '7', '8', '8', '3'),
(886, '38', 'Их монголын үрс  цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '45', '19', '45', '19', '', '', '', '', '9', '7', '1', '1', '', '', '2', '2', '2', '2', '4'),
(887, '39', 'Мандах нарны хүүхэд цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '3', '3', '', '75', '34', '75', '34', '', '', '2', '', '5', '5', '', '', '', '', '2', '2', '3', '3', ''),
(888, '40', 'Мандах нарны үрс цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '3', '3', '', '85', '44', '85', '44', '', '', '', '', '9', '9', '1', '1', '', '', '3', '3', '3', '3', '2'),
(889, '41', 'Маргад хотхоны үрс цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '3', '3', '', '76', '40', '76', '40', '', '', '', '', '9', '8', '', '', '', '', '3', '3', '3', '3', '3'),
(890, '42', 'Миний хүүхдүүд цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '4', '4', '', '62', '29', '62', '29', '', '', '6', '', '8', '8', '2', '2', '', '', '2', '2', '2', '2', '2'),
(891, '43', 'Мөнхжин цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '4', '4', '', '110', '49', '110', '49', '', '', '1', '1', '12', '11', '1', '1', '', '', '4', '4', '4', '4', '3'),
(892, '44', 'Мөнхийн алаг үрс цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '3', '3', '', '69', '29', '69', '29', '', '', '', '', '8', '8', '1', '1', '', '', '3', '3', '3', '3', '1'),
(893, '45', 'Мөнхтүшиг цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '80', '33', '80', '33', '', '', '', '', '2', '2', '1', '1', '', '', '', '', '1', '1', ''),
(894, '46', 'Мөрөөдлийн нархан цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '5', '5', '', '143', '66', '143', '66', '', '', '3', '', '12', '11', '1', '1', '', '', '3', '3', '4', '4', '4'),
(895, '47', 'Намуун гоё цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '4', '4', '', '145', '73', '145', '73', '', '', '2', '', '18', '16', '1', '1', '1', '1', '7', '5', '4', '4', '5'),
(896, '48', 'Нар-одод цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '3', '3', '', '99', '48', '99', '48', '', '', '2', '', '9', '8', '1', '1', '', '', '3', '3', '3', '3', '2'),
(897, '49', 'Нарлаг ирээдүй цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '4', '4', '', '115', '59', '115', '59', '', '', '', '', '9', '9', '1', '1', '', '', '4', '4', '2', '2', '2'),
(898, '50', 'Нарны багачууд цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '6', '6', '', '176', '92', '176', '92', '', '', '', '', '16', '15', '2', '1', '', '', '6', '6', '6', '6', '2'),
(899, '51', 'Нарны үрс цэцэрлэг цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '5', '5', '', '176', '93', '176', '93', '', '', '1', '', '12', '12', '1', '1', '', '', '5', '5', '5', '5', '1'),
(900, '52', 'Нархан М цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '66', '27', '66', '27', '', '', '', '', '7', '7', '1', '1', '', '', '2', '2', '2', '2', '2'),
(901, '53', 'Нархан хотхон цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '4', '4', '', '122', '62', '122', '62', '', '', '1', '', '10', '10', '1', '1', '', '', '3', '3', '3', '3', '3'),
(902, '54', 'Нахиа цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '51', '25', '51', '25', '', '', '1', '', '5', '5', '', '', '1', '1', '1', '1', '2', '2', '1'),
(903, '55', 'Ногоон хотхон цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '80', '35', '80', '35', '', '', '2', '', '7', '7', '1', '1', '', '', '2', '2', '2', '2', '2'),
(904, '56', 'Номт ирээдүй цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '34', '21', '34', '21', '', '', '1', '', '6', '6', '1', '1', '', '', '2', '2', '1', '1', '2'),
(905, '57', 'Оддын өргөө цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '3', '3', '', '117', '58', '117', '58', '', '', '1', '', '10', '10', '1', '1', '', '', '2', '2', '3', '3', '4'),
(906, '58', 'Одтой жаалууд цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '4', '4', '', '68', '32', '68', '32', '', '', '1', '', '9', '9', '1', '1', '', '', '4', '4', '2', '2', '2'),
(907, '59', 'Оньсон тоглоом цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '32', '19', '32', '19', '', '', '', '', '6', '6', '', '', '', '', '2', '2', '2', '2', '2'),
(908, '60', 'Оньсхон-Загадка цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '5', '5', '', '109', '53', '109', '53', '', '', '', '', '17', '16', '1', '1', '', '', '5', '5', '5', '5', '6'),
(909, '61', 'Сказка-Үлгэрхэн цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '3', '3', '', '38', '22', '38', '22', '', '', '', '', '8', '7', '1', '1', '1', '1', '1', '1', '3', '3', '2'),
(910, '62', 'Сувдан дэлбээ цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '49', '23', '49', '23', '', '', '', '', '7', '6', '1', '1', '', '', '2', '2', '2', '2', '2'),
(911, '63', 'Сэргэлэн жаалууд цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '5', '5', '', '89', '39', '89', '39', '', '', '', '', '10', '10', '1', '1', '', '', '5', '5', '3', '3', '1'),
(912, '64', 'Танхилхан цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '4', '4', '', '120', '64', '120', '64', '', '', '1', '', '9', '9', '1', '1', '', '', '4', '4', '3', '3', '1'),
(913, '65', 'Том жаал-Баянмонгол цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '5', '5', '', '131', '70', '131', '70', '', '', '', '', '12', '12', '1', '1', '', '', '5', '5', '3', '3', '3'),
(914, '66', 'Тэвхэн багачууд цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '3', '3', '', '41', '25', '41', '25', '', '', '', '1', '7', '7', '1', '1', '', '', '2', '2', '2', '2', '2'),
(915, '67', 'Тэнгэрлэг багачууд цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '5', '5', '', '100', '47', '100', '47', '', '', '', '', '10', '10', '1', '1', '', '', '4', '4', '4', '4', '1'),
(916, '68', 'Улаанбаатар  цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '4', '4', '', '111', '59', '111', '59', '', '', '', '', '11', '11', '1', '1', '1', '1', '3', '3', '3', '3', '3'),
(917, '69', 'Халиун хангай орхон цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '4', '4', '', '133', '63', '133', '63', '', '', '', '', '11', '11', '1', '1', '1', '1', '4', '4', '3', '3', '2'),
(918, '70', 'Хан Билгүүдэй  цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '44', '19', '44', '19', '', '', '1', '', '5', '5', '1', '1', '', '', '3', '3', '', '', '1'),
(919, '71', 'Хүүхэд ирээдүй цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '3', '3', '', '77', '42', '77', '42', '', '', '', '', '6', '5', '1', '', '', '', '3', '3', '', '', '2'),
(920, '72', 'Хүүхэд-эрдэнэ цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '3', '3', '', '113', '55', '113', '55', '', '', '', '', '10', '9', '1', '1', '', '', '2', '2', '5', '4', '2'),
(921, '73', 'Хөөрхөн ертөнц цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '41', '16', '41', '16', '', '', '1', '', '5', '5', '1', '1', '', '', '2', '2', '1', '1', '1'),
(922, '74', 'Хөөрхөн маамуу цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '3', '3', '', '60', '31', '60', '31', '', '', '', '', '10', '10', '1', '1', '', '', '2', '2', '4', '4', '3'),
(923, '75', 'Цагчиг цэцэрлэг цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '38', '21', '38', '21', '', '', '1', '2', '6', '5', '', '', '', '', '2', '2', '2', '2', '2'),
(924, '76', 'Цахирмаа цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '72', '35', '72', '35', '', '', '', '', '5', '5', '', '', '1', '1', '1', '1', '2', '2', '1'),
(925, '77', 'Цовоо жаалууд цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '55', '22', '55', '22', '', '', '', '', '5', '5', '1', '1', '', '', '1', '1', '2', '2', '1'),
(926, '78', 'Цовоо хүүхдүүд цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '4', '4', '', '95', '45', '95', '45', '', '', '', '', '10', '10', '1', '1', '', '', '4', '4', '3', '3', '2'),
(927, '79', 'Цогзоохой цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '3', '3', '', '68', '30', '68', '30', '', '', '2', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1'),
(928, '80', 'Цоморлиг цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '3', '3', '', '127', '66', '127', '66', '', '', '1', '', '6', '6', '1', '1', '', '', '3', '3', '1', '1', '1'),
(929, '81', 'Цэлмэгхэн цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '4', '4', '', '108', '54', '108', '54', '', '', '1', '', '12', '10', '1', '1', '', '', '4', '4', '4', '4', '3'),
(930, '82', 'Шинэ эриний хүүхдүүд цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '4', '4', '', '87', '45', '87', '45', '', '', '', '', '10', '10', '2', '2', '', '', '2', '2', '5', '5', '1'),
(931, '83', 'Шүрэн цох цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '3', '3', '', '49', '26', '49', '26', '', '', '', '', '8', '7', '1', '1', '', '', '2', '2', '3', '3', '2'),
(932, '84', 'Шүүдэрхэн цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '5', '5', '', '139', '75', '139', '75', '', '', '1', '', '8', '7', '', '', '', '', '5', '5', '1', '1', '2'),
(933, '85', 'Элбэрэлт ээж цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '4', '4', '', '68', '37', '68', '37', '', '', '', '', '8', '8', '1', '1', '', '', '3', '3', '3', '3', '1'),
(934, '86', 'Энхбүүвэй цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '5', '5', '', '117', '54', '117', '54', '', '', '', '', '12', '12', '1', '1', '', '', '5', '5', '5', '5', '1'),
(935, '87', 'Эрдмийн чуулган цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '4', '4', '', '77', '30', '77', '30', '', '', '1', '', '7', '7', '1', '1', '', '', '2', '2', '3', '3', '1'),
(936, '88', 'Эрдэмт андууд цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '3', '3', '', '118', '58', '118', '58', '', '', '3', '', '9', '9', '1', '1', '', '', '3', '3', '4', '4', '1'),
(937, '89', 'Эрдэнэ бүрэн цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '4', '4', '', '85', '40', '85', '40', '', '', '1', '', '11', '10', '1', '1', '1', '1', '4', '4', '3', '3', '2'),
(938, '90', 'Эрхэм эрдэм цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '4', '4', '', '95', '43', '95', '43', '', '', '3', '', '7', '7', '1', '1', '', '', '2', '2', '3', '3', '1'),
(939, '91', 'Ягаан цамхаг цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '44', '21', '44', '21', '', '', '', '1', '7', '7', '1', '1', '', '', '2', '2', '2', '2', '2'),
(940, '92', 'Ягаан цамхагийн хүүхдүүд цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '48', '17', '48', '17', '', '', '2', '1', '7', '7', '1', '1', '', '', '2', '2', '3', '3', '1'),
(941, '93', 'Яргуй цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '4', '4', '', '116', '58', '116', '58', '', '', '2', '', '14', '12', '', '', '1', '1', '4', '4', '4', '4', '5'),
(942, '94', 'Бүжинлхам', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '4', '4', '', '157', '82', '157', '82', '', '', '5', '', '9', '9', '', '', '', '', '4', '4', '4', '4', '1'),
(943, '95', 'Бид алтан ураг цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '42', '14', '42', '14', '', '', '', '', '5', '5', '1', '1', '', '', '1', '1', '2', '2', '1'),
(944, '96', 'Оюуны оч', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '4', '4', '', '65', '37', '65', '37', '', '', '', '', '8', '7', '', '', '', '', '2', '2', '4', '4', '2'),
(945, '97', 'Амин дэлбээ', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '3', '3', '', '54', '28', '54', '28', '', '', '', '', '8', '8', '1', '1', '', '', '3', '3', '2', '2', '2'),
(946, '98', 'Чухагийн багачууд', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '4', '4', '', '135', '68', '135', '68', '', '', '2', '', '13', '13', '1', '1', '', '', '5', '5', '4', '4', '3'),
(947, '99', 'Маргад Эрдэнийн өргөө цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '35', '18', '35', '18', '', '', '', '', '5', '5', '1', '1', '', '', '2', '2', '1', '1', '1'),
(948, '100', '“Бяцхан гэрэлт цох”', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '3', '3', '', '85', '43', '85', '43', '', '', '2', '', '6', '5', '1', '1', '', '', '2', '2', '1', '1', '2'),
(949, '101', 'Бяцхан анд', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '3', '3', '', '79', '40', '79', '40', '', '', '', '', '11', '11', '1', '1', '', '', '3', '3', '5', '5', '2'),
(950, '102', '“Бүтээлч жаалууд”', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '1', '1', '', '39', '20', '39', '20', '', '', '', '', '6', '6', '1', '1', '', '', '1', '1', '1', '1', '3'),
(951, '103', 'Сортоотой багачууд', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '1', '1', '', '32', '14', '32', '14', '', '', '2', '', '3', '3', '', '', '1', '1', '1', '1', '', '', '1'),
(952, '104', 'Номтын найзууд', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '4', '4', '', '91', '43', '91', '43', '', '', '2', '', '9', '9', '1', '1', '1', '1', '2', '2', '4', '4', '1'),
(953, '105', 'Сонгодог эхлэл цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '4', '4', '', '46', '15', '46', '15', '', '', '1', '', '6', '6', '1', '1', '', '', '3', '3', '1', '1', '1'),
(954, '106', 'Мөнх үйлс цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '73', '34', '73', '34', '', '', '1', '', '5', '5', '1', '1', '', '', '1', '1', '2', '2', '1'),
(955, '107', 'Могжоохон цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '3', '3', '', '47', '22', '47', '22', '', '', '', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1'),
(956, '108', 'Адтай үрс цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '1', '1', '', '23', '7', '23', '7', '', '', '1', '', '4', '4', '1', '1', '', '', '1', '1', '1', '1', '1'),
(957, '109', 'Золбоо цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '64', '32', '64', '32', '', '', '1', '', '7', '7', '1', '1', '', '', '2', '2', '2', '2', '2'),
(958, '110', 'Анаанда цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '3', '3', '', '75', '39', '75', '39', '', '', '', '', '7', '7', '1', '1', '', '', '2', '2', '3', '3', '1'),
(959, '111', 'Нандин 3 эрдэнэ 2 цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '64', '39', '64', '39', '', '', '1', '', '7', '6', '1', '1', '', '', '2', '2', '2', '2', '2'),
(960, '112', 'Билгүүн далай цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '3', '3', '', '106', '48', '106', '48', '', '', '', '', '9', '9', '1', '1', '', '', '3', '3', '2', '2', '3'),
(961, '113', 'Маамуу ир цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '63', '31', '63', '31', '', '', '', '', '5', '4', '', '', '', '', '1', '1', '3', '3', '1'),
(962, '114', 'Оргил ухаан цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '44', '23', '44', '23', '', '', '2', '', '5', '4', '1', '', '', '', '1', '1', '1', '1', '2'),
(963, '115', 'Соньхон ертөнц цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '3', '3', '', '94', '44', '94', '44', '', '', '3', '', '9', '9', '1', '1', '', '', '3', '3', '3', '3', '2'),
(964, '116', 'Нийслэлийн Баянзүрх дүүргийн Торомхон цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '4', '4', '', '108', '54', '108', '54', '', '', '', '', '12', '12', '1', '1', '1', '1', '4', '4', '4', '4', '2'),
(965, '117', 'Улаанбаатар.Баянзүрх.Мэргэн ухааны төгөл цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '48', '23', '48', '23', '', '', '', '', '5', '5', '1', '1', '', '', '2', '2', '1', '1', '1'),
(966, '118', 'Улаанбаатар.Баянзүрх.Идэрхэн найзууд цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '35', '20', '35', '20', '', '', '', '', '4', '4', '', '', '', '', '2', '2', '1', '1', '1'),
(967, '119', 'Улаанбаатар.Баянзүрх.Боролдойн гэр цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '6', '6', '', '141', '67', '141', '67', '', '', '1', '', '15', '14', '', '', '', '', '6', '6', '4', '4', '5'),
(968, '120', 'И Эс Эм цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '4', '4', '', '88', '45', '88', '45', '', '', '', '', '5', '5', '1', '1', '', '', '4', '4', '', '', ''),
(969, '121', 'Ид шидийн орон-2 цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '57', '27', '57', '27', '', '', '1', '', '7', '7', '1', '1', '', '', '2', '2', '2', '2', '2'),
(970, '122', 'Гэрэлт цэцэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '65', '31', '65', '31', '', '', '', '', '6', '6', '1', '1', '1', '1', '2', '2', '1', '1', '1'),
(971, '123', 'Эрдэмтэн найзууд цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '4', '4', '', '128', '65', '128', '65', '', '', '', '3', '14', '14', '2', '2', '1', '1', '3', '3', '5', '5', '3'),
(972, '124', 'Анхилуун сувд', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '55', '31', '55', '31', '', '', '1', '', '6', '5', '1', '1', '', '', '2', '2', '1', '1', '2'),
(973, '125', 'Эрдэнэ ахай цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '3', '3', '', '58', '23', '58', '23', '', '', '', '', '7', '7', '1', '1', '', '', '3', '3', '2', '2', '1'),
(974, '126', 'Найдварын эрэг цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '1', '1', '', '22', '12', '22', '12', '', '', '1', '', '5', '5', '1', '1', '', '', '1', '1', '1', '1', '2'),
(975, '127', 'Эдү кидс хаус цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '2', '2', '', '27', '16', '27', '16', '', '', '1', '', '7', '7', '1', '1', '', '', '2', '2', '3', '3', '1'),
(976, '128', 'Ногоон төгөл цэцэрлэг', 'Улаанбаатар', 1, 'Баянзүрх', 4, 'Хувь', 'Н', '3', '3', '', '65', '33', '65', '33', '', '', '', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1'),
(977, '1', '23-р цэцэрлэг /Шинэ үе/', 'Улаанбаатар', 1, 'Налайх', 5, 'Төр', 'Н', '4', '4', '', '179', '91', '179', '91', '', '', '2', '', '23', '19', '1', '1', '1', '1', '5', '5', '4', '4', '12'),
(978, '2', '123-р цэцэрлэг /Сод ирээдүй/', 'Улаанбаатар', 1, 'Налайх', 5, 'Төр', 'Н', '10', '10', '', '302', '154', '302', '154', '', '', '3', '3', '40', '32', '1', '1', '1', '1', '10', '10', '10', '10', '18'),
(979, '3', '140-р цэцэрлэг /Эрдмийн оргил/', 'Улаанбаатар', 1, 'Налайх', 5, 'Төр', 'Н', '10', '10', '', '307', '157', '307', '157', '', '', '10', '2', '35', '32', '1', '1', '1', '1', '10', '10', '10', '10', '13'),
(980, '4', '151-р цэцэрлэг /Сод ирээдүй/', 'Улаанбаатар', 1, 'Налайх', 5, 'Төр', 'Н', '11', '11', '', '296', '151', '296', '151', '', '', '5', '2', '46', '39', '1', '1', '1', '1', '12', '12', '11', '11', '21'),
(981, '5', '152-р цэцэрлэг /Шинэ үе/', 'Улаанбаатар', 1, 'Налайх', 5, 'Төр', 'Н', '9', '9', '', '280', '128', '280', '128', '', '', '5', '1', '34', '28', '1', '1', '', '', '10', '10', '9', '9', '14'),
(982, '6', '153-р цэцэрлэг /Чандмань/', 'Улаанбаатар', 1, 'Налайх', 5, 'Төр', 'Н', '6', '6', '', '224', '102', '224', '102', '', '', '14', '', '33', '26', '1', '1', '1', '1', '7', '7', '6', '6', '18'),
(983, '7', '208-р цэцэрлэг', 'Улаанбаатар', 1, 'Налайх', 5, 'Төр', 'Н', '5', '5', '', '174', '80', '174', '80', '', '', '3', '', '22', '17', '1', '1', '1', '1', '5', '5', '5', '5', '10'),
(984, '8', '187 дугаар цэцэрлэг', 'Улаанбаатар', 1, 'Налайх', 5, 'Төр', 'Н', '6', '6', '', '214', '111', '214', '111', '', '', '3', '', '27', '20', '1', '1', '1', '1', '4', '4', '6', '6', '15'),
(985, '9', '279-р цэцэрлэг', 'Улаанбаатар', 1, 'Налайх', 5, 'Төр', 'Н', '8', '8', '', '248', '105', '248', '105', '', '', '1', '', '34', '28', '1', '1', '1', '1', '9', '9', '6', '6', '17'),
(986, '10', '274-р цэцэрлэг', 'Улаанбаатар', 1, 'Налайх', 5, 'Төр', 'Н', '7', '7', '', '313', '171', '313', '171', '', '', '7', '', '30', '25', '1', '1', '1', '1', '9', '8', '7', '7', '12'),
(987, '1', 'Анархүү цэцэрлэг', 'Улаанбаатар', 1, 'Налайх', 5, 'Хувь', 'Н', '2', '2', '', '44', '20', '44', '20', '', '', '3', '1', '8', '8', '1', '1', '', '', '2', '2', '2', '2', '3'),
(988, '2', 'Билэг төгс цэцэрлэг', 'Улаанбаатар', 1, 'Налайх', 5, 'Хувь', 'Н', '3', '3', '', '75', '33', '75', '33', '', '', '', '', '11', '11', '1', '1', '', '', '3', '3', '3', '3', '4'),
(989, '3', 'Тэнүүн төгөл цэцэрлэг', 'Улаанбаатар', 1, 'Налайх', 5, 'Хувь', 'Н', '3', '3', '', '68', '26', '68', '26', '', '', '1', '2', '11', '9', '1', '1', '', '', '2', '2', '3', '3', '5'),
(990, '4', 'Шинэ хүслэн цэцэрлэг', 'Улаанбаатар', 1, 'Налайх', 5, 'Хувь', 'Н', '2', '2', '', '77', '29', '77', '29', '', '', '2', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1'),
(991, '5', 'Нөхөрсөг бяцхан жаалууд', 'Улаанбаатар', 1, 'Налайх', 5, 'Хувь', 'Н', '2', '2', '', '45', '25', '45', '25', '', '', '', '', '7', '6', '', '', '', '', '2', '2', '2', '2', '3'),
(992, '1', '26-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '11', '11', '', '364', '174', '364', '174', '', '', '', '', '39', '31', '1', '1', '1', '1', '13', '11', '8', '8', '16'),
(993, '2', '38-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '7', '7', '', '262', '112', '262', '112', '', '', '2', '', '32', '26', '1', '1', '1', '1', '9', '9', '7', '7', '14'),
(994, '3', '48-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '2', '2', '', '58', '32', '58', '32', '', '', '1', '', '9', '8', '1', '', '', '', '2', '2', '2', '2', '4'),
(995, '4', '55-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '19', '19', '', '657', '315', '657', '315', '', '', '3', '6', '85', '68', '1', '1', '2', '2', '24', '21', '19', '19', '39'),
(996, '5', '78-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '5', '5', '', '189', '90', '189', '90', '', '', '2', '', '30', '24', '1', '1', '1', '1', '7', '6', '8', '8', '13'),
(997, '6', '79-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '10', '10', '', '330', '160', '330', '160', '', '', '5', '2', '43', '37', '1', '1', '2', '2', '12', '12', '10', '10', '18'),
(998, '7', '80-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '16', '16', '', '567', '260', '567', '260', '', '', '7', '6', '64', '54', '1', '1', '2', '2', '19', '17', '16', '16', '26'),
(999, '8', '81-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '12', '12', '', '399', '204', '399', '204', '', '', '', '', '62', '52', '1', '1', '1', '1', '18', '18', '18', '18', '24'),
(1000, '9', '84-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '8', '8', '', '152', '69', '152', '69', '', '', '', '1', '33', '28', '1', '1', '1', '1', '10', '9', '8', '8', '13'),
(1001, '10', '90-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '6', '6', '', '166', '79', '166', '79', '', '', '', '', '29', '24', '1', '1', '1', '1', '8', '7', '6', '6', '13'),
(1002, '11', '91-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '17', '17', '', '606', '296', '606', '296', '', '', '4', '', '57', '50', '1', '1', '2', '2', '20', '19', '17', '17', '17'),
(1003, '12', '92-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '6', '6', '', '238', '114', '238', '114', '', '', '2', '', '28', '23', '1', '1', '1', '1', '8', '7', '6', '6', '12'),
(1004, '13', '99-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '12', '12', '', '367', '181', '367', '181', '', '', '2', '1', '40', '36', '1', '1', '1', '1', '14', '14', '12', '12', '12'),
(1005, '14', '101-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '12', '12', '', '329', '155', '329', '155', '', '', '2', '', '44', '38', '1', '1', '1', '1', '14', '13', '12', '12', '16'),
(1006, '15', '104-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '12', '12', '', '275', '117', '275', '117', '', '', '2', '1', '45', '38', '1', '1', '1', '1', '14', '14', '12', '12', '17'),
(1007, '16', '105-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '16', '16', '', '347', '169', '347', '169', '', '', '2', '1', '57', '49', '1', '1', '1', '1', '19', '17', '16', '16', '20'),
(1008, '17', '106-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '6', '6', '', '212', '112', '212', '112', '', '', '', '', '46', '42', '1', '1', '1', '1', '9', '9', '19', '19', '16'),
(1009, '18', '107-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '12', '12', '', '299', '154', '299', '154', '', '', '1', '1', '44', '39', '1', '1', '1', '1', '14', '14', '12', '12', '16'),
(1010, '19', '110-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '12', '12', '', '370', '189', '370', '189', '', '', '2', '2', '44', '38', '1', '1', '1', '1', '14', '14', '12', '12', '16'),
(1011, '20', '111-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '14', '14', '', '591', '281', '591', '281', '', '', '', '2', '53', '46', '1', '1', '1', '1', '16', '15', '14', '14', '21'),
(1012, '21', '112-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '13', '13', '', '371', '187', '371', '187', '', '', '', '2', '46', '40', '1', '1', '1', '1', '15', '14', '13', '13', '16'),
(1013, '22', '113-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '20', '20', '', '486', '238', '486', '238', '', '', '', '1', '75', '63', '1', '1', '2', '2', '24', '22', '20', '20', '28'),
(1014, '23', '116-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '7', '7', '', '197', '87', '197', '87', '', '', '54', '', '40', '34', '1', '1', '1', '1', '11', '10', '13', '13', '14'),
(1015, '24', '117-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '20', '20', '', '589', '289', '589', '289', '', '', '6', '4', '77', '69', '1', '1', '2', '2', '25', '23', '24', '24', '25'),
(1016, '25', '118-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '14', '14', '', '418', '209', '418', '209', '', '', '', '2', '49', '43', '1', '1', '1', '1', '16', '16', '14', '14', '17'),
(1017, '26', '119-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '12', '12', '', '451', '230', '451', '230', '', '', '7', '1', '50', '43', '1', '1', '2', '2', '15', '14', '12', '12', '20'),
(1018, '27', '125-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '8', '8', '', '199', '103', '199', '103', '', '', '', '2', '40', '32', '1', '1', '1', '1', '10', '10', '8', '8', '20'),
(1019, '28', '127-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '17', '17', '', '369', '178', '369', '178', '', '', '5', '1', '64', '54', '1', '1', '1', '1', '20', '19', '17', '17', '25'),
(1020, '29', '148-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '7', '7', '', '293', '145', '293', '145', '', '', '', '', '28', '24', '1', '1', '1', '1', '8', '8', '7', '7', '11'),
(1021, '30', '156-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '12', '12', '', '526', '240', '526', '240', '', '', '9', '', '55', '45', '1', '1', '2', '2', '14', '13', '12', '12', '26'),
(1022, '31', '158-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '12', '12', '', '381', '185', '381', '185', '', '', '9', '', '43', '36', '1', '1', '1', '1', '14', '13', '12', '12', '15'),
(1023, '32', '163-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '16', '16', '', '328', '174', '328', '174', '', '', '4', '', '57', '51', '1', '1', '1', '1', '18', '18', '16', '16', '21'),
(1024, '33', '170-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '22', '22', '', '599', '301', '599', '301', '', '', '6', '', '75', '65', '1', '1', '1', '1', '25', '23', '22', '22', '26'),
(1025, '34', '176-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '4', '4', '', '117', '57', '117', '57', '', '', '2', '', '18', '14', '1', '1', '1', '1', '2', '2', '3', '3', '11'),
(1026, '35', '188-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '24', '24', '', '954', '494', '954', '494', '', '', '24', '', '89', '73', '1', '1', '2', '2', '26', '24', '24', '24', '36'),
(1027, '36', '192-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '4', '4', '', '164', '71', '164', '71', '', '', '', '', '24', '20', '1', '1', '1', '1', '5', '5', '4', '4', '13'),
(1028, '37', '195-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '4', '4', '', '144', '71', '144', '71', '', '', '3', '', '23', '18', '1', '1', '1', '1', '6', '5', '3', '3', '12'),
(1029, '38', '196-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '5', '5', '', '189', '97', '189', '97', '', '', '24', '', '26', '20', '1', '1', '1', '1', '7', '6', '5', '5', '12'),
(1030, '39', '214-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '6', '6', '', '185', '79', '185', '79', '', '', '', '1', '25', '24', '1', '1', '1', '1', '7', '7', '6', '6', '10'),
(1031, '40', '215-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '5', '5', '', '173', '84', '173', '84', '', '', '', '1', '22', '22', '1', '1', '1', '1', '6', '6', '5', '5', '9'),
(1032, '41', '226-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '8', '8', '', '264', '120', '264', '120', '', '', '2', '', '38', '28', '1', '1', '1', '1', '10', '8', '7', '7', '19'),
(1033, '42', '227-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '5', '5', '', '205', '103', '205', '103', '', '', '', '', '29', '23', '1', '1', '1', '1', '7', '7', '5', '5', '15'),
(1034, '43', '244-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '8', '8', '', '347', '174', '347', '174', '', '', '6', '2', '38', '31', '1', '1', '2', '2', '7', '7', '8', '8', '20'),
(1035, '44', '253-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '11', '11', '', '383', '191', '383', '191', '', '', '3', '2', '41', '35', '1', '1', '1', '1', '12', '10', '11', '11', '16'),
(1036, '45', '252-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '3', '3', '', '93', '42', '93', '42', '', '', '3', '', '20', '16', '1', '1', '1', '1', '3', '3', '3', '3', '12'),
(1037, '46', '259-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '6', '6', '', '275', '137', '275', '137', '', '', '3', '', '30', '26', '1', '1', '1', '1', '8', '8', '6', '6', '14'),
(1038, '47', '228-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '8', '8', '', '275', '129', '275', '129', '', '', '5', '', '35', '29', '1', '1', '1', '1', '10', '9', '8', '8', '15'),
(1039, '48', '261-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '10', '10', '', '324', '166', '324', '166', '', '', '4', '', '41', '34', '1', '1', '1', '1', '12', '10', '10', '10', '17'),
(1040, '49', '260-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '6', '6', '', '282', '135', '282', '135', '', '', '7', '', '32', '27', '1', '1', '1', '1', '8', '8', '6', '6', '16'),
(1041, '50', '263-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '8', '8', '', '354', '179', '354', '179', '', '', '1', '2', '33', '28', '1', '1', '1', '1', '10', '9', '8', '8', '13'),
(1042, '51', '264-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '6', '6', '', '245', '128', '245', '128', '', '', '6', '', '26', '23', '1', '1', '1', '1', '8', '7', '6', '6', '10'),
(1043, '52', '285-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '10', '10', '', '371', '201', '371', '201', '', '', '', '', '38', '30', '1', '1', '1', '1', '11', '10', '10', '10', '15');
INSERT INTO `import` (`id`, `A`, `B`, `C`, `city`, `D`, `district`, `E`, `F`, `G`, `H`, `I`, `J`, `K`, `L`, `M`, `N`, `O`, `P`, `Q`, `R`, `S`, `T`, `U`, `V`, `W`, `X`, `Y`, `Z`, `AA`, `AB`) VALUES
(1044, '53', '272-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '6', '6', '', '230', '119', '230', '119', '', '', '5', '', '27', '23', '1', '1', '1', '1', '7', '7', '6', '6', '12'),
(1045, '54', '269-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '4', '4', '', '167', '77', '167', '77', '', '', '1', '1', '26', '20', '1', '1', '1', '1', '5', '4', '4', '4', '15'),
(1046, '55', '287-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '8', '8', '', '333', '157', '333', '157', '', '', '', '', '34', '30', '1', '1', '1', '1', '10', '10', '8', '8', '14'),
(1047, '56', '273-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '9', '9', '', '285', '147', '285', '147', '', '', '5', '', '38', '30', '1', '1', '1', '1', '9', '8', '9', '9', '18'),
(1048, '57', '284-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '6', '6', '', '230', '112', '230', '112', '', '', '', '', '30', '22', '1', '1', '1', '1', '7', '5', '6', '6', '15'),
(1049, '58', '294-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '6', '6', '', '136', '68', '136', '68', '', '', '1', '', '29', '22', '', '', '1', '1', '8', '6', '6', '6', '14'),
(1050, '59', '303-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '10', '10', '', '274', '151', '274', '151', '', '', '', '1', '40', '34', '1', '1', '1', '1', '12', '12', '10', '10', '16'),
(1051, '60', '271-р цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '13', '13', '', '533', '265', '533', '265', '', '', '8', '', '55', '45', '1', '1', '1', '1', '15', '13', '13', '13', '25'),
(1052, '61', '306-р цэцэрлэг ', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '10', '10', '', '141', '73', '141', '73', '', '', '', '', '38', '32', '1', '1', '1', '1', '11', '11', '10', '10', '15'),
(1053, '62', '270-р цэцэрлэг ', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Төр', 'Н', '6', '6', '', '149', '68', '149', '68', '', '', '2', '2', '30', '24', '1', '1', '1', '1', '8', '7', '6', '6', '14'),
(1054, '1', 'Азийн хүүхдүүд цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '6', '6', '', '190', '72', '190', '72', '', '', '1', '', '19', '16', '1', '1', '', '', '7', '6', '6', '6', '5'),
(1055, '2', 'Алиа багачууд цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '5', '5', '', '114', '45', '114', '45', '', '', '1', '', '16', '14', '1', '', '', '', '5', '5', '5', '5', '5'),
(1056, '3', 'Амин эрдэнэ цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '3', '3', '', '76', '43', '76', '43', '', '', '', '', '6', '6', '1', '1', '', '', '1', '1', '3', '3', '1'),
(1057, '4', 'Бадди баавгай цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '5', '5', '', '111', '62', '111', '62', '', '', '1', '', '13', '13', '1', '1', '1', '1', '4', '4', '2', '2', '5'),
(1058, '5', 'Балжингарав цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '1', '1', '', '19', '13', '19', '13', '', '', '2', '', '4', '4', '1', '1', '', '', '1', '1', '1', '1', '1'),
(1059, '6', 'Бамбар цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '2', '2', '', '29', '15', '29', '15', '', '', '', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1'),
(1060, '7', 'Билгүүн-Ундарга цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '3', '3', '', '45', '21', '45', '21', '', '', '2', '', '9', '8', '1', '', '', '', '3', '3', '3', '3', '2'),
(1061, '8', 'Булган сондор цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '5', '5', '', '179', '75', '179', '75', '', '', '2', '', '14', '13', '1', '1', '1', '1', '5', '5', '4', '4', '3'),
(1062, '9', 'Бяцхан бумбардай цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '2', '2', '', '75', '33', '75', '33', '', '', '1', '', '8', '7', '1', '1', '', '', '2', '2', '2', '2', '3'),
(1063, '10', 'Бяцхан дэлхий цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '3', '3', '', '113', '58', '113', '58', '', '', '2', '', '8', '8', '1', '1', '', '', '3', '3', '3', '3', '1'),
(1064, '11', 'Бяцхан хилчид цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '4', '4', '', '53', '27', '53', '27', '', '', '', '', '11', '10', '1', '1', '', '', '4', '4', '3', '3', '3'),
(1065, '12', 'Бяцхан хун цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '3', '3', '', '100', '46', '100', '46', '', '', '', '', '8', '8', '1', '1', '', '', '3', '3', '3', '3', '1'),
(1066, '13', 'Гоёхон доо цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '8', '8', '', '254', '132', '254', '132', '', '', '7', '', '24', '22', '1', '', '', '', '10', '10', '7', '7', '6'),
(1067, '14', 'Гэрэлт-Оюу цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '4', '4', '', '68', '34', '68', '34', '', '', '4', '', '10', '10', '1', '1', '', '', '4', '4', '4', '4', '1'),
(1068, '15', 'Дэлгэрхэн ургамал цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '3', '3', '', '80', '33', '80', '33', '', '', '2', '', '9', '9', '1', '1', '', '', '3', '3', '4', '4', '1'),
(1069, '16', 'Дүүрэн үйлс цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '2', '2', '', '17', '8', '17', '8', '', '', '', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1'),
(1070, '17', 'Зааны төгөл цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '4', '4', '', '118', '60', '118', '60', '', '', '3', '', '12', '11', '2', '1', '1', '1', '3', '3', '4', '4', '2'),
(1071, '18', 'Ивээлт дагина цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '3', '3', '', '81', '37', '81', '37', '', '', '', '', '11', '10', '1', '1', '1', '1', '3', '3', '3', '3', '3'),
(1072, '19', 'Их Ундарга цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '4', '4', '', '152', '72', '152', '72', '', '', '', '', '11', '11', '1', '1', '', '', '4', '4', '4', '4', '2'),
(1073, '20', 'Мэргэн хүү цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '3', '3', '', '64', '32', '64', '32', '', '', '1', '1', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1'),
(1074, '21', 'Мөндөөхэй цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '6', '6', '', '149', '74', '149', '74', '', '', '1', '', '13', '12', '1', '1', '', '', '5', '5', '5', '5', '2'),
(1075, '22', 'Мөнх Ундарга цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '2', '2', '', '81', '43', '81', '43', '', '', '', '', '9', '8', '1', '1', '', '', '2', '2', '2', '2', '4'),
(1076, '23', 'Мөнхдүүрэн цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '2', '2', '', '51', '25', '51', '25', '', '', '1', '', '7', '7', '1', '1', '', '', '2', '2', '2', '2', '2'),
(1077, '24', 'Нарны хүүхдүүд цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '3', '3', '', '107', '44', '107', '44', '', '', '', '', '13', '10', '1', '1', '', '', '3', '3', '3', '3', '6'),
(1078, '25', 'Самархан цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '3', '3', '', '72', '38', '72', '38', '', '', '', '', '8', '8', '1', '1', '', '', '3', '3', '2', '2', '2'),
(1079, '26', 'Содон ертөнц цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '2', '2', '', '76', '38', '76', '38', '', '', '', '', '7', '7', '1', '1', '', '', '2', '2', '3', '3', '1'),
(1080, '27', 'Солонго цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '4', '4', '', '116', '53', '116', '53', '', '', '4', '', '15', '14', '1', '1', '', '', '4', '4', '4', '4', '6'),
(1081, '28', 'Сэйнт Поул цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '3', '3', '', '107', '54', '107', '54', '', '', '', '', '12', '11', '1', '1', '', '', '3', '3', '3', '3', '5'),
(1082, '29', 'Хатанбүүвэй баатар цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '4', '4', '', '85', '47', '85', '47', '', '', '1', '', '13', '12', '1', '1', '', '', '4', '4', '4', '4', '4'),
(1083, '30', 'Хос дарь цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '2', '2', '', '62', '25', '62', '25', '', '', '', '', '6', '5', '1', '', '', '', '2', '2', '2', '2', '1'),
(1084, '31', 'Хүслийн дагина цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '2', '2', '', '25', '13', '25', '13', '', '', '', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1'),
(1085, '32', 'Хүсэл мөрөөдлийн хотхон цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '2', '2', '', '60', '28', '60', '28', '', '', '', '', '5', '5', '1', '1', '', '', '2', '2', '1', '1', '1'),
(1086, '33', 'Хүүхдийн баясгалан цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '3', '3', '', '89', '39', '89', '39', '', '', '3', '', '9', '9', '1', '1', '', '', '3', '3', '4', '4', '1'),
(1087, '34', 'Цэцүүлээ цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '4', '4', '', '199', '97', '199', '97', '', '', '', '', '17', '15', '1', '1', '1', '1', '4', '4', '6', '6', '5'),
(1088, '35', 'Чухаг цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '3', '3', '', '113', '54', '113', '54', '', '', '2', '', '8', '8', '', '', '', '', '3', '3', '3', '3', '2'),
(1089, '36', 'Шинэ хотхон цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '4', '4', '', '111', '54', '111', '54', '', '', '6', '', '13', '12', '2', '1', '', '', '4', '4', '4', '4', '3'),
(1090, '37', 'Эрх дагина цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '3', '3', '', '41', '25', '41', '25', '', '', '1', '', '9', '7', '', '', '', '', '4', '4', '2', '2', '3'),
(1091, '38', 'Болор эрдэм', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '4', '4', '', '113', '55', '113', '55', '', '', '3', '', '11', '11', '1', '1', '1', '1', '4', '4', '4', '4', '1'),
(1092, '39', 'Тэмүүжин анд', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '7', '7', '', '109', '37', '109', '37', '', '', '', '87', '23', '21', '1', '1', '1', '1', '7', '7', '7', '7', '7'),
(1093, '40', '“Мөрөөдлийн дагина”', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '2', '2', '', '57', '21', '57', '21', '', '', '2', '', '5', '5', '', '', '1', '1', '1', '1', '2', '2', '1'),
(1094, '41', 'Бат-Анугийн найзууд', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '3', '3', '', '73', '36', '73', '36', '', '', '', '', '10', '9', '1', '1', '', '', '3', '3', '2', '2', '4'),
(1095, '42', 'Хөх тэнгэр цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '2', '2', '', '81', '40', '81', '40', '', '', '', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1'),
(1096, '43', 'Тэмүка найзууд цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '3', '3', '', '65', '32', '65', '32', '', '', '', '', '8', '7', '', '', '', '', '3', '3', '3', '3', '2'),
(1097, '44', 'Гурван саран од цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '3', '3', '', '84', '40', '84', '40', '', '', '', '', '9', '9', '', '', '', '', '3', '3', '3', '3', '3'),
(1098, '45', 'Тоорхон цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '2', '2', '', '67', '28', '67', '28', '', '', '4', '', '5', '5', '1', '1', '', '', '2', '2', '1', '1', '1'),
(1099, '46', 'Найзууд цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '4', '4', '', '90', '48', '90', '48', '', '', '', '1', '12', '10', '1', '1', '', '', '3', '3', '3', '3', '5'),
(1100, '47', 'Улаанбаатар.Сонгинохайрхан.Ид шидийн орон-1 цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '1', '1', '', '21', '11', '21', '11', '', '', '', '', '3', '3', '1', '1', '', '', '1', '1', '', '', '1'),
(1101, '48', 'Өхөөрдөм жаалууд цэцэрлэг', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '3', '3', '', '80', '41', '80', '41', '', '', '', '', '7', '7', '1', '1', '', '', '2', '2', '3', '3', '1'),
(1102, '49', 'Содон маамуу', 'Улаанбаатар', 1, 'Сонгинохайрхан', 6, 'Хувь', 'Н', '4', '4', '', '73', '32', '73', '32', '', '', '1', '', '9', '9', '1', '1', '', '', '3', '3', '4', '4', '1'),
(1103, '1', '1-р цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '10', '10', '', '239', '122', '239', '122', '', '', '', '2', '42', '35', '1', '1', '1', '1', '12', '12', '9', '9', '19'),
(1104, '2', '2-р цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '3', '3', '', '128', '67', '128', '67', '', '', '', '', '21', '16', '1', '1', '1', '1', '4', '3', '3', '3', '12'),
(1105, '3', '14-р цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '0', '', '', '0', '0', '', '', '', '', '', '', '11', '7', '1', '1', '1', '1', '1', '1', '', '', '8'),
(1106, '4', '16-р цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '14', '14', '', '351', '157', '351', '157', '', '', '', '3', '47', '41', '1', '1', '2', '2', '16', '15', '14', '14', '14'),
(1107, '5', '17-р цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '5', '5', '', '239', '122', '239', '122', '', '', '1', '2', '25', '20', '1', '1', '', '', '7', '6', '5', '5', '12'),
(1108, '6', '24-р цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '10', '10', '', '402', '194', '402', '194', '', '', '2', '2', '37', '32', '1', '1', '1', '1', '12', '11', '9', '9', '14'),
(1109, '7', '25-р цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '8', '8', '', '221', '110', '221', '110', '', '', '2', '2', '32', '27', '1', '1', '1', '1', '10', '9', '8', '8', '12'),
(1110, '8', '36-р цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '4', '4', '', '98', '60', '98', '60', '', '', '1', '', '24', '19', '1', '1', '1', '1', '5', '5', '4', '4', '13'),
(1111, '9', '40-р цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '4', '4', '', '130', '64', '130', '64', '', '', '', '1', '24', '19', '1', '1', '1', '1', '6', '5', '4', '4', '12'),
(1112, '10', '42-р цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '12', '12', '', '307', '153', '307', '153', '', '', '', '', '48', '37', '1', '1', '1', '1', '14', '13', '12', '12', '20'),
(1113, '11', '51-р цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '10', '10', '', '342', '167', '342', '167', '', '', '1', '1', '40', '34', '1', '1', '1', '', '12', '11', '10', '10', '16'),
(1114, '12', '54-р цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '10', '10', '', '205', '102', '205', '102', '', '', '1', '1', '42', '38', '1', '1', '1', '1', '14', '14', '12', '12', '14'),
(1115, '13', '68-р цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '13', '13', '', '393', '188', '393', '188', '', '', '1', '', '45', '40', '1', '1', '1', '1', '15', '15', '13', '13', '15'),
(1116, '14', '69-р цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '13', '13', '', '493', '245', '493', '245', '', '', '1', '2', '46', '42', '1', '1', '1', '1', '15', '15', '13', '13', '16'),
(1117, '15', '75-р цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '12', '12', '', '361', '168', '361', '168', '', '', '', '1', '50', '38', '1', '1', '2', '2', '16', '13', '11', '11', '20'),
(1118, '16', '109-р цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '10', '10', '', '265', '126', '265', '126', '', '', '5', '2', '43', '33', '1', '1', '1', '1', '12', '11', '9', '9', '20'),
(1119, '17', '130-р цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '6', '6', '', '206', '91', '206', '91', '', '', '', '', '30', '24', '1', '1', '1', '1', '8', '6', '6', '6', '14'),
(1120, '18', '135-р цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '18', '18', '', '550', '271', '550', '271', '', '', '', '6', '68', '59', '1', '1', '2', '2', '22', '21', '18', '18', '25'),
(1121, '19', '143-р цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '16', '16', '', '526', '252', '526', '252', '', '', '', '7', '64', '55', '1', '1', '2', '2', '20', '20', '16', '16', '25'),
(1122, '20', '149-р цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '6', '6', '', '127', '64', '127', '64', '', '', '', '', '30', '25', '1', '1', '1', '1', '8', '7', '6', '6', '14'),
(1123, '21', '150-р цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '4', '4', '', '159', '81', '159', '81', '', '', '', '', '26', '18', '1', '1', '1', '1', '6', '5', '4', '4', '14'),
(1124, '22', '159-р цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '3', '3', '', '119', '59', '119', '59', '', '', '1', '', '23', '17', '1', '1', '1', '1', '5', '5', '3', '3', '13'),
(1125, '23', '160-р цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '12', '12', '', '373', '173', '373', '173', '', '', '2', '2', '42', '38', '1', '1', '1', '1', '14', '14', '11', '11', '15'),
(1126, '24', '166-р цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '6', '6', '', '228', '124', '228', '124', '', '', '3', '1', '35', '26', '1', '1', '1', '1', '7', '7', '6', '6', '20'),
(1127, '25', '171-р цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '5', '5', '', '136', '69', '136', '69', '', '', '', '1', '24', '20', '1', '1', '1', '1', '5', '5', '5', '5', '12'),
(1128, '26', '175-р цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '4', '4', '', '136', '72', '136', '72', '', '', '1', '', '22', '18', '1', '1', '1', '1', '6', '6', '4', '4', '10'),
(1129, '27', '186-р цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '7', '7', '', '76', '16', '76', '16', '', '', '1', '76', '36', '32', '1', '1', '1', '1', '12', '12', '12', '12', '10'),
(1130, '28', '205-р цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '4', '4', '', '136', '66', '136', '66', '', '', '3', '', '25', '18', '1', '1', '1', '1', '6', '4', '4', '4', '13'),
(1131, '29', '216-р цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '15', '15', '', '600', '295', '600', '295', '', '', '1', '2', '30', '28', '1', '1', '', '', '11', '11', '9', '9', '9'),
(1132, '30', '217-р цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '4', '4', '', '138', '70', '138', '70', '', '', '', '', '26', '20', '1', '1', '1', '1', '5', '5', '4', '4', '15'),
(1133, '31', '225-р цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '8', '8', '', '288', '134', '288', '134', '', '', '', '', '33', '28', '1', '1', '1', '1', '10', '9', '8', '8', '13'),
(1134, '32', '234-р цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '10', '10', '', '389', '177', '389', '177', '', '', '3', '1', '40', '33', '1', '1', '1', '1', '12', '11', '10', '10', '16'),
(1135, '33', '248-р цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '3', '3', '', '146', '67', '146', '67', '', '', '2', '1', '20', '15', '1', '1', '1', '1', '4', '3', '3', '3', '11'),
(1136, '34', '283-р цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '7', '7', '', '205', '94', '205', '94', '', '', '3', '', '37', '33', '1', '1', '1', '1', '9', '9', '12', '12', '14'),
(1137, '35', '299-р цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '6', '6', '', '217', '97', '217', '97', '', '', '3', '', '28', '22', '1', '1', '1', '1', '8', '6', '6', '6', '12'),
(1138, '36', '281-р  цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Төр', 'Н', '12', '12', '', '217', '119', '217', '119', '', '', '3', '1', '44', '39', '1', '1', '1', '1', '14', '13', '12', '12', '16'),
(1139, '1', 'Агуу хүүхдүүд цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Хувь', 'Н', '2', '2', '', '47', '20', '47', '20', '', '', '', '', '11', '10', '1', '1', '', '', '2', '2', '2', '2', '6'),
(1140, '2', 'Ананд шавь цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Хувь', 'Н', '4', '4', '', '97', '51', '97', '51', '', '', '2', '', '7', '7', '1', '1', '', '', '2', '2', '3', '3', '1'),
(1141, '3', 'Бяцхан-од цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Хувь', 'Н', '3', '3', '', '31', '15', '31', '15', '', '', '', '', '5', '5', '1', '1', '', '', '2', '2', '1', '1', '1'),
(1142, '4', 'Бөмбөөлэй цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Хувь', 'Н', '4', '4', '', '24', '10', '24', '10', '', '', '', '', '7', '6', '1', '1', '', '', '2', '2', '2', '2', '2'),
(1143, '5', 'Гоц жаалууд цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Хувь', 'Н', '4', '4', '', '113', '54', '113', '54', '', '', '1', '', '14', '12', '1', '1', '', '', '4', '4', '4', '4', '5'),
(1144, '6', 'Гүүр цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Хувь', 'Н', '4', '4', '', '63', '32', '63', '32', '', '', '', '', '9', '9', '1', '1', '', '', '4', '4', '3', '3', '1'),
(1145, '7', 'Дуду Эмээ цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Хувь', 'Н', '2', '2', '', '47', '28', '47', '28', '', '', '2', '', '8', '7', '1', '', '', '', '2', '2', '2', '2', '3'),
(1146, '8', 'Мөндөөхэй цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Хувь', 'Н', '2', '2', '', '40', '24', '40', '24', '', '', '1', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1'),
(1147, '9', 'Мөрөөдлийн гэр бүл цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Хувь', 'Н', '2', '2', '', '40', '17', '40', '17', '', '', '', '', '8', '7', '1', '1', '', '', '3', '3', '2', '2', '2'),
(1148, '10', 'Нарны жаалууд цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Хувь', 'Н', '3', '3', '', '30', '14', '30', '14', '', '', '', '', '8', '8', '1', '1', '', '', '4', '4', '2', '2', '1'),
(1149, '11', 'Ногоон алим цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Хувь', 'Н', '4', '4', '', '83', '42', '83', '42', '', '', '', '', '9', '9', '1', '1', '', '', '4', '4', '3', '3', '1'),
(1150, '12', 'Онч сэтгэмж цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Хувь', 'Н', '2', '2', '', '35', '12', '35', '12', '', '', '', '', '6', '6', '1', '1', '', '', '2', '2', '1', '1', '2'),
(1151, '13', 'Сайхан аа цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Хувь', 'Н', '4', '4', '', '119', '56', '119', '56', '', '', '', '', '14', '12', '', '', '', '', '5', '5', '4', '4', '5'),
(1152, '14', 'Том Жаал цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Хувь', 'Н', '2', '2', '', '24', '13', '24', '13', '', '', '', '', '5', '5', '', '', '', '', '2', '2', '2', '2', '1'),
(1153, '15', 'Хараацай цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Хувь', 'Н', '2', '2', '', '40', '19', '40', '19', '', '', '', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1'),
(1154, '16', 'Хөгжил цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Хувь', 'Н', '5', '5', '', '111', '60', '111', '60', '', '', '', '', '11', '11', '1', '1', '', '', '4', '4', '4', '4', '2'),
(1155, '17', 'Цасан гоо цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Хувь', 'Н', '3', '3', '', '86', '45', '86', '45', '', '', '', '', '16', '12', '1', '1', '1', '1', '4', '3', '3', '3', '7'),
(1156, '18', 'Цоглог бөмбөөхөн цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Хувь', 'Н', '6', '6', '', '137', '66', '137', '66', '', '', '', '', '18', '17', '1', '1', '1', '1', '5', '5', '7', '7', '4'),
(1157, '19', 'Элит багачууд цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Хувь', 'Н', '4', '4', '', '80', '32', '80', '32', '', '', '', '', '18', '17', '1', '1', '1', '1', '5', '4', '4', '4', '7'),
(1158, '20', 'Эрдмийн цацраг цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Хувь', 'Н', '4', '4', '', '83', '46', '83', '46', '', '', '', '', '11', '11', '1', '1', '', '', '4', '4', '4', '4', '2'),
(1159, '21', 'Үрэл хотхон цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Хувь', 'Н', '4', '4', '', '99', '54', '99', '54', '', '', '1', '', '11', '11', '1', '1', '1', '1', '4', '4', '4', '4', '1'),
(1160, '22', 'Номт сансар цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Хувь', 'Н', '3', '3', '', '70', '31', '70', '31', '', '', '', '', '10', '10', '1', '1', '', '', '3', '3', '4', '4', '2'),
(1161, '23', 'Сэлбэ сургууль цэцэрлэг цогцолбор ', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Хувь', 'Н', '5', '5', '', '107', '50', '107', '50', '', '', '', '', '14', '13', '1', '1', '', '', '7', '6', '5', '5', '1'),
(1162, '24', 'Эрхэм сувд цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Хувь', 'Н', '2', '2', '', '21', '5', '21', '5', '', '', '', '1', '5', '5', '', '', '1', '1', '1', '1', '2', '2', '1'),
(1163, '25', 'Нест кидс киндер гарден цэцэрлэг', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Хувь', 'Н', '2', '2', '', '42', '17', '42', '17', '', '', '', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1'),
(1164, '26', 'Бяцхан мөрөөдөл', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Хувь', 'Н', '3', '3', '', '77', '41', '77', '41', '', '', '', '', '9', '8', '1', '1', '', '', '3', '3', '3', '3', '2'),
(1165, '27', 'Жаргалан-2', 'Улаанбаатар', 1, 'Сүхбаатар', 7, 'Хувь', 'Н', '8', '8', '', '237', '118', '237', '118', '', '', '3', '', '15', '14', '1', '1', '', '', '8', '8', '5', '5', '1'),
(1166, '1', '12-р цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Төр', 'Н', '16', '16', '', '602', '304', '602', '304', '', '', '', '1', '63', '51', '1', '1', '2', '2', '16', '14', '21', '21', '23'),
(1167, '2', '27-р цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Төр', 'Н', '30', '30', '', '1018', '510', '1018', '510', '', '', '', '2', '83', '71', '1', '1', '3', '3', '31', '29', '23', '22', '25'),
(1168, '3', '28-р цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Төр', 'Н', '17', '17', '', '490', '264', '490', '264', '', '', '4', '1', '65', '56', '1', '1', '2', '2', '19', '18', '23', '23', '20'),
(1169, '4', '29-р цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Төр', 'Н', '6', '6', '', '199', '107', '199', '107', '', '', '', '1', '28', '23', '1', '1', '1', '1', '8', '8', '6', '6', '12'),
(1170, '5', '35-р цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Төр', 'Н', '32', '32', '', '984', '496', '984', '496', '', '', '1', '4', '77', '72', '1', '1', '4', '4', '35', '34', '20', '20', '17'),
(1171, '6', '41-р цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Төр', 'Н', '25', '25', '', '621', '327', '621', '327', '', '', '4', '7', '75', '66', '1', '1', '3', '3', '28', '27', '25', '25', '18'),
(1172, '7', '46-р цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Төр', 'Н', '20', '20', '', '580', '258', '580', '258', '', '', '', '7', '66', '57', '1', '1', '3', '3', '22', '22', '18', '18', '22'),
(1173, '8', '49-р цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Төр', 'Н', '8', '8', '', '256', '128', '256', '128', '', '', '1', '', '35', '27', '1', '1', '1', '1', '8', '6', '8', '8', '17'),
(1174, '9', '53-р цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Төр', 'Н', '12', '12', '', '389', '180', '389', '180', '', '', '', '', '42', '36', '1', '1', '1', '1', '14', '13', '12', '12', '14'),
(1175, '10', '65-р цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Төр', 'Н', '17', '17', '', '575', '290', '575', '290', '', '', '', '4', '51', '46', '1', '1', '2', '2', '20', '20', '15', '15', '13'),
(1176, '11', '67-р цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Төр', 'Н', '12', '12', '', '425', '199', '425', '199', '', '', '', '3', '38', '34', '1', '1', '1', '1', '14', '14', '12', '12', '10'),
(1177, '12', '71-р цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Төр', 'Н', '7', '7', '', '256', '122', '256', '122', '', '', '1', '1', '29', '24', '1', '1', '1', '1', '8', '8', '7', '7', '12'),
(1178, '13', '72-р цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Төр', 'Н', '11', '11', '', '370', '172', '370', '172', '', '', '1', '3', '50', '42', '1', '1', '2', '2', '15', '14', '11', '11', '21'),
(1179, '14', '73-р цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Төр', 'Н', '13', '13', '', '484', '237', '484', '237', '', '', '7', '', '46', '40', '1', '1', '1', '1', '15', '14', '13', '13', '16'),
(1180, '15', '121-р цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Төр', 'Н', '10', '10', '', '275', '147', '275', '147', '', '', '3', '', '40', '33', '1', '1', '1', '1', '11', '10', '10', '10', '17'),
(1181, '16', '134-р цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Төр', 'Н', '14', '14', '', '623', '307', '623', '307', '', '', '2', '', '52', '45', '1', '1', '2', '2', '16', '14', '14', '14', '19'),
(1182, '17', '144-р цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Төр', 'Н', '10', '10', '', '279', '163', '279', '163', '', '', '8', '1', '37', '31', '1', '1', '1', '1', '10', '10', '10', '10', '15'),
(1183, '18', '145-р цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Төр', 'Н', '6', '6', '', '199', '101', '199', '101', '', '', '', '', '28', '23', '1', '1', '1', '1', '8', '7', '6', '6', '12'),
(1184, '19', '165-р цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Төр', 'Н', '3', '3', '', '119', '62', '119', '62', '', '', '13', '1', '19', '15', '1', '1', '1', '1', '5', '4', '3', '3', '9'),
(1185, '20', '189-р цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Төр', 'Н', '12', '12', '', '447', '227', '447', '227', '', '', '1', '1', '45', '39', '1', '1', '1', '1', '14', '13', '12', '12', '17'),
(1186, '21', '190-р цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Төр', 'Н', '4', '4', '', '116', '62', '116', '62', '', '', '7', '', '21', '17', '1', '1', '', '', '5', '5', '4', '4', '11'),
(1187, '22', '209-р цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Төр', 'Н', '13', '13', '', '506', '245', '506', '245', '', '', '5', '4', '49', '43', '1', '1', '2', '2', '14', '14', '13', '13', '19'),
(1188, '23', '218-р цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Төр', 'Н', '34', '34', '', '1131', '528', '1131', '528', '', '', '', '6', '92', '82', '1', '1', '3', '3', '31', '29', '34', '34', '23'),
(1189, '24', '219-р цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Төр', 'Н', '5', '5', '', '169', '90', '169', '90', '', '', '1', '', '24', '20', '1', '1', '1', '1', '5', '5', '5', '5', '12'),
(1190, '25', '223-р цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Төр', 'Н', '12', '12', '', '494', '235', '494', '235', '', '', '', '4', '47', '40', '1', '1', '2', '2', '12', '12', '11', '11', '21'),
(1191, '26', '230-р цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Төр', 'Н', '8', '8', '', '360', '197', '360', '197', '', '', '', '3', '33', '27', '1', '1', '1', '1', '10', '9', '8', '8', '13'),
(1192, '27', '243-р цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Төр', 'Н', '16', '16', '', '731', '342', '731', '342', '', '', '10', '3', '59', '54', '1', '1', '2', '2', '18', '17', '15', '15', '23'),
(1193, '28', '250-р цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Төр', 'Н', '16', '16', '', '629', '312', '629', '312', '', '', '1', '', '60', '49', '1', '1', '1', '1', '20', '18', '16', '16', '22'),
(1194, '29', '290-р цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Төр', 'Н', '15', '15', '', '662', '341', '662', '341', '', '', '', '', '49', '44', '1', '1', '1', '1', '17', '17', '15', '15', '15'),
(1195, '30', '300-р цэцэрлэг ', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Төр', 'Н', '5', '5', '', '144', '55', '144', '55', '', '', '8', '', '28', '24', '1', '1', '1', '1', '7', '7', '5', '5', '14'),
(1196, '31', '308-р цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Төр', 'Н', '17', '17', '', '581', '279', '581', '279', '', '', '1', '2', '51', '46', '1', '1', '2', '2', '19', '19', '15', '15', '14'),
(1197, '1', 'Амилагийн найз цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '4', '4', '', '100', '50', '100', '50', '', '', '1', '', '11', '11', '1', '1', '1', '1', '4', '4', '4', '4', '1'),
(1198, '2', 'Цэлмэг цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '3', '3', '', '42', '22', '42', '22', '', '', '', '', '4', '4', '', '', '', '', '3', '3', '1', '1', ''),
(1199, '3', 'Энхрий найзууд цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '2', '2', '', '53', '25', '53', '25', '', '', '', '', '8', '7', '', '', '1', '1', '1', '1', '3', '3', '3'),
(1200, '4', 'Дэлгэрэх цэцэгс цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '8', '8', '', '174', '81', '174', '81', '', '', '1', '', '19', '19', '1', '1', '1', '1', '7', '7', '8', '8', '2'),
(1201, '5', 'Оддын баясгалантай үрс цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '4', '4', '', '44', '26', '44', '26', '', '', '20', '', '6', '6', '1', '1', '', '', '1', '1', '1', '1', '3'),
(1202, '6', 'Гурван хөгжил цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '5', '5', '', '131', '59', '131', '59', '', '', '', '', '16', '16', '1', '1', '', '', '6', '6', '5', '5', '4'),
(1203, '7', 'Амила цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '8', '8', '', '200', '96', '200', '96', '', '', '', '', '17', '17', '', '', '1', '1', '7', '7', '8', '8', '1'),
(1204, '8', 'Амилагийн багачууд цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '4', '4', '', '87', '41', '87', '41', '', '', '', '', '12', '11', '1', '1', '1', '1', '4', '4', '4', '4', '2'),
(1205, '9', 'Амилагийн найзууд цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '7', '7', '', '209', '107', '209', '107', '', '', '', '', '17', '17', '1', '1', '1', '1', '7', '7', '7', '7', '1'),
(1206, '10', 'Амин ирээдүй цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '3', '3', '', '81', '27', '81', '27', '', '', '', '', '7', '7', '1', '1', '', '', '2', '2', '3', '3', '1'),
(1207, '11', 'Анүүлэн аз жаргал цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '4', '4', '', '52', '10', '52', '10', '', '', '', '45', '11', '11', '2', '2', '', '', '2', '2', '4', '4', '3'),
(1208, '12', 'Бамбуулай цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '2', '2', '', '35', '14', '35', '14', '', '', '', '', '7', '6', '1', '1', '', '', '2', '2', '2', '2', '2'),
(1209, '13', 'Баясгалант ертөнц цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '3', '3', '', '57', '28', '57', '28', '', '', '1', '', '5', '5', '1', '1', '', '', '2', '2', '1', '1', '1'),
(1210, '14', 'Болор-Өргөө цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '1', '1', '', '8', '2', '8', '2', '', '', '', '', '3', '3', '1', '1', '', '', '', '', '1', '1', '1'),
(1211, '15', 'Буурай ээж цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '4', '4', '', '186', '102', '186', '102', '', '', '7', '', '13', '12', '1', '1', '1', '1', '4', '4', '4', '4', '3'),
(1212, '16', 'Бяцхан аялагчид цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '5', '5', '', '105', '63', '105', '63', '', '', '', '', '17', '16', '2', '1', '', '', '5', '5', '5', '5', '5'),
(1213, '17', 'Бяцхан найзууд цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '6', '6', '', '82', '39', '82', '39', '', '', '', '', '13', '12', '1', '1', '', '', '6', '6', '4', '3', '2'),
(1214, '18', 'Бяцхан Сондор цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '5', '5', '', '89', '47', '89', '47', '', '', '', '', '21', '16', '1', '1', '1', '1', '7', '5', '5', '5', '7'),
(1215, '19', 'Бяцхан шилтгээн цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '4', '4', '', '53', '32', '53', '32', '', '', '', '', '9', '8', '', '', '', '', '4', '4', '2', '2', '3'),
(1216, '20', 'Бөднө цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '4', '4', '', '45', '20', '45', '20', '', '', '', '1', '10', '10', '1', '1', '', '', '3', '3', '4', '4', '2'),
(1217, '21', 'Гурван хөгжил зайсан цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '2', '2', '', '6', '1', '6', '1', '', '', '', '', '7', '7', '1', '1', '', '', '2', '2', '2', '2', '2'),
(1218, '22', 'Гэгээн ертөнц цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '4', '4', '', '181', '92', '181', '92', '', '', '1', '', '11', '11', '1', '1', '1', '1', '3', '3', '4', '4', '2'),
(1219, '23', 'Далд Уянга цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '2', '2', '', '66', '30', '66', '30', '', '', '', '', '6', '5', '1', '1', '', '', '2', '2', '2', '2', '1'),
(1220, '24', 'Дэгдүнэ цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '3', '3', '', '41', '21', '41', '21', '', '', '', '', '2', '2', '1', '1', '', '', '', '', '1', '1', ''),
(1221, '25', 'Жаргалтай балчирууд цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '4', '4', '', '45', '13', '45', '13', '', '', '1', '', '8', '8', '1', '1', '', '', '4', '4', '2', '2', '1'),
(1222, '26', 'Жаргалтай ирээдүй цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '3', '3', '', '44', '17', '44', '17', '', '', '1', '', '7', '7', '1', '1', '', '', '2', '2', '3', '3', '1'),
(1223, '27', 'Жимсхэн цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '5', '5', '', '126', '74', '126', '74', '', '', '', '', '9', '8', '1', '', '', '', '4', '4', '3', '3', '1'),
(1224, '28', 'Мазаахай цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '3', '3', '', '121', '59', '121', '59', '', '', '2', '', '12', '12', '1', '1', '1', '1', '3', '3', '4', '4', '3'),
(1225, '29', 'Миний гэр цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '3', '3', '', '39', '15', '39', '15', '', '', '1', '', '8', '8', '1', '1', '', '', '3', '3', '3', '3', '1'),
(1226, '30', 'Миний найз цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '4', '4', '', '88', '47', '88', '47', '', '', '', '', '8', '8', '1', '1', '', '', '3', '3', '2', '2', '2'),
(1227, '31', 'Нархан үрсийн ордон цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '3', '3', '', '84', '42', '84', '42', '', '', '1', '', '8', '8', '1', '1', '', '', '3', '3', '3', '3', '1'),
(1228, '32', 'Номин цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '5', '5', '', '152', '77', '152', '77', '', '', '3', '', '16', '15', '1', '1', '1', '1', '6', '6', '5', '5', '3'),
(1229, '33', 'Олуулаа цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '2', '2', '', '32', '17', '32', '17', '', '', '', '', '7', '6', '1', '1', '1', '', '2', '2', '2', '2', '1'),
(1230, '34', 'Орхон багачууд цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '4', '4', '', '74', '34', '74', '34', '', '', '', '', '14', '13', '1', '1', '', '', '5', '5', '4', '4', '4'),
(1231, '35', 'Орчлон цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '9', '9', '', '222', '126', '222', '126', '', '', '', '', '32', '32', '1', '1', '1', '1', '9', '9', '9', '9', '12'),
(1232, '36', 'Очхон цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '3', '3', '', '43', '21', '43', '21', '', '', '', '', '6', '6', '', '', '', '', '3', '3', '1', '1', '2'),
(1233, '37', 'Оюунлаг багачууд цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '9', '9', '', '170', '94', '170', '94', '', '', '', '', '27', '23', '1', '1', '1', '', '13', '11', '9', '9', '3'),
(1234, '38', 'Оюунлаг жаалууд цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '6', '6', '', '147', '83', '147', '83', '', '', '', '', '14', '14', '1', '1', '', '', '6', '6', '6', '6', '1'),
(1235, '39', 'Сувдхан цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '3', '3', '', '74', '38', '74', '38', '', '', '1', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1'),
(1236, '40', 'Титэм ордны найзууд цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '4', '4', '', '59', '31', '59', '31', '', '', '1', '1', '12', '12', '1', '1', '', '', '4', '4', '4', '4', '3'),
(1237, '41', 'Тугалхан цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '3', '3', '', '68', '35', '68', '35', '', '', '', '', '7', '7', '1', '1', '', '', '3', '3', '2', '2', '1'),
(1238, '42', 'Төгсбаясгалангийн гэгээ цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '3', '3', '', '79', '45', '79', '45', '', '', '', '', '9', '9', '1', '1', '', '', '3', '3', '3', '3', '2'),
(1239, '43', 'Хүүхдийн ертөнц цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '2', '2', '', '54', '28', '54', '28', '', '', '', '', '5', '5', '1', '1', '', '', '2', '2', '1', '1', '1'),
(1240, '44', 'Цэцэгхэн цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '2', '2', '', '62', '27', '62', '27', '', '', '', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1'),
(1241, '45', 'Чогжоохон цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '3', '3', '', '39', '16', '39', '16', '', '', '', '', '6', '6', '1', '1', '', '', '3', '3', '1', '1', '1'),
(1242, '46', 'Шидэт хаан улс цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '4', '4', '', '63', '25', '63', '25', '', '', '', '', '12', '11', '1', '1', '', '', '4', '4', '3', '3', '4'),
(1243, '47', 'Шинэ идэр цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '2', '2', '', '94', '30', '94', '30', '', '', '', '', '4', '4', '1', '1', '', '', '2', '2', '1', '1', ''),
(1244, '48', 'Шинэ төгөл цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '4', '4', '', '51', '24', '51', '24', '', '', '', '', '12', '11', '1', '1', '', '', '4', '4', '3', '3', '4'),
(1245, '49', 'Шүүдэр цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '2', '2', '', '33', '16', '33', '16', '', '', '', '', '9', '8', '1', '1', '1', '1', '2', '2', '2', '2', '3'),
(1246, '50', 'Эко гэр цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '8', '8', '', '232', '118', '232', '118', '', '', '', '', '28', '24', '2', '2', '2', '2', '6', '5', '10', '9', '8'),
(1247, '51', 'Энхрийхэн үрс цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '3', '3', '', '67', '28', '67', '28', '', '', '', '', '7', '6', '1', '1', '', '', '3', '3', '1', '1', '2'),
(1248, '52', 'Эрхий мэргэн цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '22', '22', '', '554', '281', '554', '281', '', '', '', '', '68', '67', '1', '1', '4', '4', '22', '22', '26', '26', '15'),
(1249, '53', 'Үнсгэлжин ба долоон одой цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '6', '6', '', '219', '104', '219', '104', '', '', '', '', '19', '19', '1', '1', '1', '1', '6', '6', '5', '5', '6'),
(1250, '54', 'Бумбаахай', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '3', '3', '', '62', '25', '62', '25', '', '', '1', '', '6', '6', '', '', '', '', '1', '1', '2', '2', '3'),
(1251, '55', '“Зайсан гэрэлт ордон”', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '4', '4', '', '81', '34', '81', '34', '', '', '', '', '14', '13', '1', '1', '', '', '4', '4', '4', '4', '5'),
(1252, '56', 'Эрдэнэсийн авдар', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '4', '4', '', '58', '28', '58', '28', '', '', '1', '', '5', '5', '1', '1', '', '', '2', '2', '1', '1', '1'),
(1253, '57', 'Ивээлийн найзууд', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '7', '7', '', '133', '75', '133', '75', '', '', '', '', '24', '22', '1', '1', '1', '1', '9', '8', '7', '7', '6'),
(1254, '58', '“Монголдой”', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '5', '5', '', '145', '68', '145', '68', '', '', '1', '', '16', '16', '1', '1', '', '', '5', '5', '5', '5', '5'),
(1255, '59', 'Сэргэлэн найзууд', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '3', '3', '', '82', '35', '82', '35', '', '', '', '', '8', '8', '1', '1', '', '', '3', '3', '3', '3', '1'),
(1256, '60', '“Бяцхан ход ход”', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '5', '5', '', '106', '57', '106', '57', '', '', '', '', '14', '14', '1', '1', '', '', '5', '5', '5', '5', '3'),
(1257, '61', 'Бяцхан монгол дөрвөн улирлын цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '4', '4', '', '127', '59', '127', '59', '', '', '', '', '21', '20', '1', '1', '', '', '5', '4', '5', '5', '10'),
(1258, '62', 'Жогжоохой цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '2', '2', '', '66', '34', '66', '34', '', '', '1', '', '5', '5', '1', '1', '', '', '1', '1', '2', '2', '1'),
(1259, '63', 'Элит ХУД цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '6', '6', '', '148', '75', '148', '75', '', '', '', '', '15', '15', '1', '1', '', '', '6', '6', '6', '6', '2'),
(1260, '64', 'Нүхт лакшири цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '6', '6', '', '131', '70', '131', '70', '', '', '1', '', '7', '7', '', '', '', '', '6', '6', '1', '1', ''),
(1261, '65', 'Сувдан сондор цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '8', '8', '', '161', '78', '161', '78', '', '', '', '', '25', '23', '1', '1', '1', '1', '10', '9', '9', '9', '4'),
(1262, '66', 'Бумбардай хүү цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '3', '3', '', '100', '46', '100', '46', '', '', '1', '', '8', '8', '1', '1', '', '', '3', '3', '3', '3', '1'),
(1263, '67', 'Жаргалтай жим цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '8', '8', '', '341', '157', '341', '157', '', '', '2', '', '24', '23', '1', '1', '1', '1', '8', '8', '8', '8', '6'),
(1264, '68', 'Нандин багачууд цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '5', '5', '', '132', '75', '132', '75', '', '', '', '', '15', '15', '1', '1', '', '', '6', '6', '5', '5', '3'),
(1265, '69', 'Анандболд баяр баясал цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '7', '7', '', '150', '76', '150', '76', '', '', '', '', '19', '18', '1', '1', '', '', '6', '5', '7', '7', '5'),
(1266, '70', 'Гарден багачууд цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '2', '2', '', '26', '9', '26', '9', '', '', '', '', '6', '6', '1', '1', '', '', '2', '2', '1', '1', '2'),
(1267, '71', 'Улаанбаатар.Хан-Уул.Миний гэрийн хүүхдүүд цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '4', '4', '', '38', '20', '38', '20', '', '', '', '', '11', '11', '1', '1', '', '', '4', '4', '4', '4', '2'),
(1268, '72', 'Улаанбаатар.Хан-Уул.Маргаашийн одод цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '5', '5', '', '140', '66', '140', '66', '', '', '', '', '14', '13', '1', '1', '', '', '5', '5', '4', '4', '4'),
(1269, '73', 'Улаанбаатар.Хан-Уул.Зайсангийн сод хүүхдүүд цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '3', '3', '', '77', '34', '77', '34', '', '', '', '', '7', '6', '', '', '', '', '3', '3', '3', '3', '1'),
(1270, '74', 'Сүзүран цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '4', '4', '', '67', '38', '67', '38', '', '', '', '', '14', '12', '1', '1', '', '', '4', '3', '4', '4', '5'),
(1271, '75', 'Үнэт бяцхан үрс цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '4', '4', '', '94', '45', '94', '45', '', '', '', '', '11', '11', '1', '1', '', '', '4', '4', '4', '4', '2'),
(1272, '76', 'Этүгэн цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '2', '2', '', '24', '9', '24', '9', '', '', '1', '', '5', '5', '', '', '', '', '2', '2', '', '', '3'),
(1273, '77', 'Азтай зулзаганууд цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '2', '2', '', '34', '15', '34', '15', '', '', '', '', '5', '5', '', '', '', '', '2', '2', '2', '2', '1'),
(1274, '78', 'Бяцхан жэт цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '4', '4', '', '69', '34', '69', '34', '', '', '', '', '9', '9', '1', '1', '', '', '4', '4', '4', '4', ''),
(1275, '79', 'Хүмүүн өргөө цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '2', '2', '', '52', '34', '52', '34', '', '', '', '', '4', '4', '', '', '', '', '2', '2', '2', '2', ''),
(1276, '80', 'Бөндөөлхөн 1 цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '2', '2', '', '64', '37', '64', '37', '', '', '1', '', '6', '5', '', '', '', '', '2', '2', '2', '2', '2'),
(1277, '81', 'Багачууд хүслийн ертөнц цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '2', '2', '', '50', '27', '50', '27', '', '', '', '', '7', '6', '1', '1', '', '', '2', '2', '2', '2', '2'),
(1278, '82', 'Улаанбаатар дах Бритиш сургуулийн дэргэдэх цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '2', '2', '', '23', '14', '23', '14', '', '', '', '', '4', '4', '', '', '', '', '1', '1', '3', '3', ''),
(1279, '83', 'Кью кидс прискүүл цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '3', '3', '', '43', '30', '43', '30', '', '', '', '', '10', '10', '1', '1', '', '', '3', '3', '3', '3', '3'),
(1280, '84', 'Фэрэндлихоум цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '2', '2', '', '35', '17', '35', '17', '', '', '', '', '6', '5', '1', '1', '', '', '2', '2', '2', '2', '1'),
(1281, '85', 'Цэлмэг зуузуугийн найз цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '4', '4', '', '58', '25', '58', '25', '', '', '', '', '17', '17', '1', '1', '', '', '7', '7', '7', '7', '2'),
(1282, '86', 'Пингү кидс цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '4', '4', '', '51', '25', '51', '25', '', '', '', '', '10', '10', '1', '1', '', '', '4', '4', '3', '3', '2'),
(1283, '87', 'Томё сургууль цэцэрлэгийн цогцолбор', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '4', '4', '', '80', '41', '80', '41', '', '', '', '', '12', '12', '1', '1', '1', '1', '4', '4', '4', '4', '2'),
(1284, '88', 'Монгол Улс дахь Франц цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '3', '3', '', '26', '13', '26', '13', '', '', '', '', '0', '0', '', '', '', '', '', '', '', '', ''),
(1285, '89', 'Ханхүү цэцэрлэг', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '0', '', '', '0', '0', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', '', ''),
(1286, '90', 'Гэгээн ертөнц 3', 'Улаанбаатар', 1, 'Хан-Уул', 8, 'Хувь', 'Н', '2', '2', '', '90', '44', '90', '44', '', '', '2', '', '7', '7', '1', '1', '', '', '2', '2', '2', '2', '2'),
(1287, '1', '4-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '12', '12', '', '338', '184', '338', '184', '', '', '', '6', '49', '41', '1', '1', '1', '1', '15', '14', '11', '11', '21'),
(1288, '2', '5-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '9', '9', '', '199', '92', '199', '92', '', '', '', '', '34', '30', '1', '1', '1', '1', '12', '12', '8', '8', '12'),
(1289, '3', '9-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '10', '10', '', '246', '122', '246', '122', '', '', '1', '2', '37', '33', '1', '1', '1', '1', '12', '12', '10', '10', '13'),
(1290, '4', '18-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '10', '10', '', '331', '141', '331', '141', '', '', '1', '4', '40', '35', '1', '1', '1', '1', '12', '12', '9', '9', '17'),
(1291, '5', '19-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '12', '12', '', '408', '201', '408', '201', '', '', '', '3', '49', '41', '1', '1', '1', '1', '14', '14', '12', '12', '21'),
(1292, '6', '31-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '6', '6', '', '145', '69', '145', '69', '', '', '1', '1', '29', '23', '1', '1', '1', '1', '8', '7', '6', '6', '13'),
(1293, '7', '33-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '8', '8', '', '169', '86', '169', '86', '', '', '', '', '25', '22', '1', '1', '1', '1', '8', '7', '6', '6', '9'),
(1294, '8', '37-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '10', '10', '', '287', '148', '287', '148', '', '', '2', '', '35', '29', '1', '1', '1', '1', '11', '10', '9', '9', '13'),
(1295, '9', '39-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '10', '10', '', '145', '66', '145', '66', '', '', '', '', '36', '31', '1', '1', '1', '1', '11', '11', '9', '9', '14'),
(1296, '10', '43-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '10', '10', '', '218', '110', '218', '110', '', '', '', '', '40', '34', '1', '1', '1', '1', '12', '11', '10', '10', '16'),
(1297, '11', '56-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '11', '11', '', '261', '132', '261', '132', '', '', '', '', '40', '33', '1', '', '1', '1', '12', '12', '10', '10', '16'),
(1298, '12', '70-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '8', '8', '', '236', '113', '236', '113', '', '', '1', '', '31', '23', '1', '1', '', '', '10', '9', '8', '8', '12'),
(1299, '13', '74-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '6', '6', '', '236', '115', '236', '115', '', '', '', '', '33', '28', '1', '1', '1', '1', '8', '7', '9', '9', '14');
INSERT INTO `import` (`id`, `A`, `B`, `C`, `city`, `D`, `district`, `E`, `F`, `G`, `H`, `I`, `J`, `K`, `L`, `M`, `N`, `O`, `P`, `Q`, `R`, `S`, `T`, `U`, `V`, `W`, `X`, `Y`, `Z`, `AA`, `AB`) VALUES
(1300, '14', '83-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '20', '20', '', '588', '265', '588', '265', '', '', '3', '', '95', '86', '1', '1', '2', '2', '26', '26', '36', '36', '30'),
(1301, '15', '102-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '14', '14', '', '438', '227', '438', '227', '', '', '5', '', '54', '48', '1', '1', '2', '2', '16', '15', '14', '14', '21'),
(1302, '16', '103-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '20', '20', '', '500', '238', '500', '238', '', '', '1', '4', '69', '61', '1', '1', '2', '2', '23', '21', '20', '20', '23'),
(1303, '17', '108-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '0', '', '', '0', '0', '', '', '', '', '', '', '6', '3', '1', '1', '', '', '', '', '', '', '5'),
(1304, '18', '124-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '16', '16', '', '377', '182', '377', '182', '', '', '1', '', '57', '50', '1', '1', '2', '2', '20', '18', '16', '16', '18'),
(1305, '19', '126-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '7', '7', '', '168', '74', '168', '74', '', '', '3', '', '30', '26', '1', '1', '1', '1', '9', '9', '7', '7', '12'),
(1306, '20', '154-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '8', '8', '', '257', '122', '257', '122', '', '', '4', '', '34', '30', '1', '1', '1', '1', '9', '9', '9', '9', '14'),
(1307, '21', '155-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '8', '8', '', '196', '98', '196', '98', '', '', '', '', '34', '28', '1', '1', '1', '1', '9', '9', '8', '8', '15'),
(1308, '22', '173-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '4', '4', '', '137', '72', '137', '72', '', '', '1', '', '23', '18', '1', '1', '1', '1', '4', '4', '4', '4', '13'),
(1309, '23', '174-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '5', '5', '', '157', '81', '157', '81', '', '', '3', '', '23', '19', '1', '1', '1', '1', '6', '6', '5', '5', '10'),
(1310, '24', '220-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '5', '5', '', '139', '59', '139', '59', '', '', '2', '', '16', '16', '1', '1', '1', '1', '5', '5', '4', '4', '5'),
(1311, '25', '224-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '6', '6', '', '229', '114', '229', '114', '', '', '3', '', '41', '36', '1', '1', '1', '1', '10', '10', '12', '12', '17'),
(1312, '26', '221-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '5', '5', '', '158', '66', '158', '66', '', '', '3', '', '22', '20', '1', '1', '1', '1', '5', '5', '5', '5', '10'),
(1313, '27', '222-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '5', '5', '', '128', '65', '128', '65', '', '', '', '', '22', '20', '1', '1', '1', '1', '6', '6', '5', '5', '9'),
(1314, '28', '245-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '6', '6', '', '175', '98', '175', '98', '', '', '1', '', '28', '23', '1', '1', '1', '1', '7', '7', '6', '6', '13'),
(1315, '29', '246-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '6', '6', '', '172', '97', '172', '97', '', '', '3', '1', '28', '24', '1', '1', '1', '1', '7', '7', '6', '6', '13'),
(1316, '30', '247-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '6', '6', '', '141', '79', '141', '79', '', '', '2', '', '27', '23', '1', '1', '1', '1', '7', '7', '6', '6', '12'),
(1317, '31', '258-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '7', '7', '', '191', '96', '191', '96', '', '', '5', '', '29', '24', '1', '1', '1', '1', '8', '7', '6', '6', '13'),
(1318, '32', '275-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '7', '7', '', '208', '90', '208', '90', '', '', '3', '1', '31', '25', '1', '1', '1', '1', '9', '7', '7', '7', '13'),
(1319, '33', '280-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '10', '10', '', '297', '149', '297', '149', '', '', '7', '', '39', '35', '1', '1', '1', '1', '12', '12', '10', '10', '15'),
(1320, '34', '292-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '8', '8', '', '216', '116', '216', '116', '', '', '4', '', '32', '25', '1', '1', '1', '1', '10', '8', '8', '8', '12'),
(1321, '35', '291-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '8', '8', '', '244', '122', '244', '122', '', '', '1', '1', '32', '27', '1', '1', '1', '1', '9', '8', '8', '8', '13'),
(1322, '36', '293-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '6', '6', '', '176', '80', '176', '80', '', '', '2', '', '26', '22', '1', '1', '1', '1', '7', '7', '6', '6', '11'),
(1323, '37', '277-р цэцэрлэг ', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '5', '5', '', '131', '53', '131', '53', '', '', '1', '', '21', '20', '1', '1', '1', '1', '6', '6', '5', '5', '8'),
(1324, '38', '298-р цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Төр', 'Н', '6', '6', '', '183', '86', '183', '86', '', '', '6', '', '25', '20', '1', '1', '1', '1', '6', '6', '6', '6', '11'),
(1325, '1', 'Пороро найзууд цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Хувь', 'Н', '2', '2', '', '20', '9', '20', '9', '', '', '', '1', '5', '5', '1', '1', '', '', '1', '1', '1', '1', '2'),
(1326, '2', 'Ачлал цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Хувь', 'Н', '3', '3', '', '51', '28', '51', '28', '', '', '1', '', '5', '5', '1', '1', '', '', '1', '1', '2', '2', '1'),
(1327, '3', 'Басархан цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Хувь', 'Н', '5', '5', '', '82', '54', '82', '54', '', '', '', '1', '15', '15', '1', '1', '1', '1', '6', '6', '3', '3', '4'),
(1328, '4', 'Далай багачууд цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Хувь', 'Н', '4', '4', '', '104', '45', '104', '45', '', '', '3', '', '10', '9', '1', '1', '', '', '3', '3', '4', '4', '2'),
(1329, '5', 'Бяцхан алаг үрс цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Хувь', 'Н', '5', '5', '', '76', '36', '76', '36', '', '', '', '', '15', '12', '', '', '', '', '4', '4', '3', '3', '8'),
(1330, '6', 'Зээмаа цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Хувь', 'Н', '4', '4', '', '95', '51', '95', '51', '', '', '1', '', '10', '10', '1', '1', '', '', '4', '4', '4', '4', '1'),
(1331, '7', 'Их ханд цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Хувь', 'Н', '3', '3', '', '98', '49', '98', '49', '', '', '1', '', '8', '8', '1', '1', '', '', '3', '3', '2', '2', '2'),
(1332, '8', 'Маамуу нааш ир цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Хувь', 'Н', '5', '5', '', '142', '78', '142', '78', '', '', '', '', '13', '13', '2', '2', '', '', '5', '5', '3', '3', '3'),
(1333, '9', 'Нандин гурван эрдэнэ цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Хувь', 'Н', '2', '2', '', '79', '32', '79', '32', '', '', '2', '', '6', '5', '1', '1', '', '', '1', '1', '2', '2', '2'),
(1334, '10', 'Соронз цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Хувь', 'Н', '1', '1', '', '36', '18', '36', '18', '', '', '', '3', '5', '5', '1', '1', '', '', '2', '2', '1', '1', '1'),
(1335, '11', 'Хишиг ундрам цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Хувь', 'Н', '3', '3', '', '77', '35', '77', '35', '', '', '7', '', '6', '5', '1', '1', '', '', '3', '3', '', '', '2'),
(1336, '12', 'Хундан цагаан хурга цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Хувь', 'Н', '5', '5', '', '111', '46', '111', '46', '', '', '2', '', '11', '11', '1', '1', '1', '1', '4', '4', '3', '3', '2'),
(1337, '13', 'Шүрэн дэгд цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Хувь', 'Н', '4', '4', '', '105', '55', '105', '55', '', '', '', '', '11', '10', '2', '1', '', '', '4', '4', '4', '4', '1'),
(1338, '14', 'Алунгоо Ашид', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Хувь', 'Н', '2', '2', '', '35', '15', '35', '15', '', '', '', '', '6', '5', '', '', '', '', '2', '2', '2', '2', '2'),
(1339, '15', 'Оюунлаг үрс цэцэрлэг', 'Улаанбаатар', 1, 'Чингэлтэй', 9, 'Хувь', 'Н', '1', '1', '', '35', '17', '35', '17', '', '', '', '', '4', '4', '1', '1', '', '', '1', '1', '1', '1', '1'),
(1340, '1', '44-р цэцэрлэг', 'Улаанбаатар', 1, 'Багахангай', 2, 'Төр', 'Н', '7', '7', '', '209', '106', '209', '106', '', '', '10', '1', '33', '27', '1', '1', '1', '1', '9', '8', '7', '7', '15'),
(1341, '2', '207-р цэцэрлэг', 'Улаанбаатар', 1, 'Багахангай', 2, 'Төр', 'Н', '4', '4', '', '116', '64', '116', '64', '', '', '4', '', '22', '19', '1', '1', '1', '1', '5', '5', '4', '4', '11'),
(1342, '1', '1-р цэцэрлэг', 'Орхон', 13, '', 0, 'Төр', 'А', '12', '12', '', '394', '202', '394', '202', '', '', '6', '', '47', '41', '1', '1', '1', '1', '13', '13', '12', '12', '20'),
(1343, '2', '2-р цэцэрлэг', 'Орхон', 13, '', 0, 'Төр', 'А', '6', '6', '', '170', '96', '170', '96', '', '', '3', '1', '28', '23', '1', '1', '1', '1', '7', '7', '6', '6', '13'),
(1344, '3', '3-р цэцэрлэг', 'Орхон', 13, '', 0, 'Төр', 'С', '6', '6', '', '151', '66', '151', '66', '', '', '24', '', '27', '23', '1', '1', '1', '1', '7', '7', '6', '6', '12'),
(1345, '4', '4-р цэцэрлэг', 'Орхон', 13, '', 0, 'Төр', 'А', '18', '18', '', '633', '334', '633', '334', '', '', '16', '3', '61', '55', '1', '1', '1', '1', '21', '21', '18', '18', '20'),
(1346, '5', '5-р цэцэрлэг', 'Орхон', 13, '', 0, 'Төр', 'А', '6', '6', '', '188', '92', '188', '92', '', '', '1', '', '28', '23', '1', '1', '1', '1', '7', '7', '6', '6', '13'),
(1347, '6', '6-р цэцэрлэг', 'Орхон', 13, '', 0, 'Төр', 'А', '6', '6', '', '165', '80', '165', '80', '', '', '3', '2', '28', '23', '1', '1', '1', '1', '7', '7', '6', '6', '13'),
(1348, '7', '7-р цэцэрлэг', 'Орхон', 13, '', 0, 'Төр', 'А', '12', '12', '', '399', '198', '399', '198', '', '', '6', '5', '50', '44', '1', '1', '1', '1', '14', '13', '12', '12', '22'),
(1349, '8', '8-р цэцэрлэг', 'Орхон', 13, '', 0, 'Төр', 'А', '6', '6', '', '190', '89', '190', '89', '', '', '1', '1', '30', '25', '1', '1', '1', '1', '7', '7', '6', '6', '15'),
(1350, '9', '9-р цэцэрлэг', 'Орхон', 13, '', 0, 'Төр', 'А', '6', '6', '', '174', '94', '174', '94', '', '', '1', '', '30', '26', '1', '1', '1', '1', '7', '7', '6', '6', '15'),
(1351, '10', '10-р цэцэрлэг', 'Орхон', 13, '', 0, 'Төр', 'А', '6', '6', '', '167', '91', '167', '91', '', '', '1', '', '30', '25', '1', '1', '1', '1', '7', '7', '6', '6', '15'),
(1352, '11', '11-р цэцэрлэг', 'Орхон', 13, '', 0, 'Төр', 'А', '12', '12', '', '418', '208', '418', '208', '', '', '26', '5', '42', '37', '1', '1', '1', '1', '13', '13', '12', '12', '15'),
(1353, '12', '15-р цэцэрлэг', 'Орхон', 13, '', 0, 'Төр', 'А', '12', '12', '', '367', '184', '367', '184', '', '', '3', '2', '48', '43', '1', '1', '1', '1', '13', '13', '12', '12', '21'),
(1354, '13', '16-р цэцэрлэг', 'Орхон', 13, '', 0, 'Төр', 'А', '6', '6', '', '194', '83', '194', '83', '', '', '1', '1', '31', '26', '1', '1', '1', '1', '7', '7', '7', '7', '15'),
(1355, '14', '17-р цэцэрлэг', 'Орхон', 13, '', 0, 'Төр', 'А', '12', '12', '', '339', '181', '339', '181', '', '', '4', '1', '42', '37', '1', '1', '1', '1', '13', '13', '12', '12', '15'),
(1356, '15', '18-р цэцэрлэг', 'Орхон', 13, '', 0, 'Төр', 'А', '8', '8', '', '255', '116', '255', '116', '', '', '11', '', '33', '28', '1', '1', '1', '1', '9', '8', '9', '9', '13'),
(1357, '16', '19-р цэцэрлэг', 'Орхон', 13, '', 0, 'Төр', 'А', '6', '6', '', '173', '73', '173', '73', '', '', '3', '1', '27', '22', '1', '1', '1', '1', '7', '7', '5', '5', '13'),
(1358, '17', '20-р цэцэрлэг', 'Орхон', 13, '', 0, 'Төр', 'С', '10', '10', '', '301', '153', '301', '153', '', '', '13', '1', '40', '33', '1', '1', '1', '1', '11', '11', '10', '10', '17'),
(1359, '18', '21-р цэцэрлэг', 'Орхон', 13, '', 0, 'Төр', 'А', '12', '12', '', '343', '164', '343', '164', '', '', '5', '4', '42', '37', '1', '1', '1', '1', '13', '13', '12', '12', '15'),
(1360, '19', '22-р цэцэрлэг', 'Орхон', 13, '', 0, 'Төр', 'А', '8', '8', '', '281', '139', '281', '139', '', '', '14', '1', '38', '28', '1', '1', '1', '1', '9', '8', '9', '9', '18'),
(1361, '20', '23-р цэцэрлэг', 'Орхон', 13, '', 0, 'Төр', 'А', '11', '11', '', '375', '178', '375', '178', '', '', '13', '1', '38', '33', '1', '1', '', '', '12', '12', '11', '11', '14'),
(1362, '21', '24-р цэцэрлэг', 'Орхон', 13, '', 0, 'Төр', 'А', '8', '8', '', '220', '94', '220', '94', '', '', '13', '7', '31', '27', '1', '1', '1', '1', '9', '9', '8', '8', '12'),
(1363, '22', 'Бялзуухай цэцэрлэг', 'Орхон', 13, '', 0, 'Төр', 'А', '6', '6', '', '192', '101', '192', '101', '', '', '2', '', '30', '25', '1', '1', '1', '1', '7', '6', '6', '6', '15'),
(1364, '23', 'Дэгдээхий цэцэрлэг', 'Орхон', 13, '', 0, 'Төр', 'А', '12', '12', '', '379', '183', '379', '183', '', '', '3', '2', '48', '43', '1', '1', '1', '1', '13', '13', '12', '12', '21'),
(1365, '24', 'Одод цэцэрлэг', 'Орхон', 13, '', 0, 'Төр', 'А', '6', '6', '', '195', '102', '195', '102', '', '', '1', '', '29', '25', '1', '1', '1', '1', '7', '7', '6', '6', '14'),
(1366, '25', 'Орхон аймгийн Баян-Өндөр сумын 12-р цэцэрлэг', 'Орхон', 13, '', 0, 'Төр', 'А', '11', '11', '', '278', '140', '278', '140', '', '', '1', '', '41', '35', '1', '1', '1', '1', '13', '13', '11', '11', '15'),
(1367, '26', 'Оюу цэцэрлэг', 'Орхон', 13, '', 0, 'Төр', 'А', '12', '12', '', '319', '153', '319', '153', '', '', '4', '', '41', '35', '1', '1', '1', '1', '12', '12', '12', '12', '15'),
(1368, '27', 'Унага цэцэрлэг', 'Орхон', 13, '', 0, 'Төр', 'А', '11', '11', '', '335', '169', '335', '169', '', '', '3', '4', '39', '34', '1', '1', '1', '1', '12', '12', '11', '11', '14'),
(1369, '28', 'Эрх бүжинхэн цэцэрлэг', 'Орхон', 13, '', 0, 'Төр', 'А', '3', '3', '', '72', '37', '72', '37', '', '', '3', '', '20', '15', '1', '1', '1', '1', '3', '3', '3', '3', '12'),
(1370, '29', '26-р цэцэрлэг', 'Орхон', 13, '', 0, 'Төр', 'А', '12', '12', '', '295', '159', '295', '159', '', '', '9', '2', '41', '36', '1', '1', '1', '1', '13', '13', '11', '11', '15'),
(1371, '30', '27-р цэцэрлэг', 'Орхон', 13, '', 0, 'Төр', 'А', '6', '6', '', '147', '64', '147', '64', '', '', '5', '16', '30', '25', '1', '1', '1', '1', '7', '7', '8', '8', '13'),
(1372, '31', 'Орхон аймгийн Баян-Өндөр сумын 28-р цэцэрлэг', 'Орхон', 13, '', 0, 'Төр', 'А', '8', '8', '', '183', '87', '183', '87', '', '', '8', '', '36', '28', '1', '1', '1', '1', '9', '9', '8', '8', '17'),
(1373, '1', 'Бяцхан одод цэцэрлэг', 'Орхон', 13, '', 0, 'Хувь', 'А', '6', '6', '', '90', '43', '90', '43', '', '', '', '', '17', '16', '1', '1', '1', '1', '6', '6', '6', '6', '3'),
(1374, '2', 'Гоё цэцэрлэг', 'Орхон', 13, '', 0, 'Хувь', 'А', '2', '2', '', '20', '8', '20', '8', '', '', '', '', '12', '9', '1', '1', '', '', '1', '1', '2', '2', '8'),
(1375, '3', 'Миний гэр цэцэрлэг', 'Орхон', 13, '', 0, 'Хувь', 'А', '4', '4', '', '109', '49', '109', '49', '', '', '7', '', '18', '15', '1', '1', '', '', '4', '4', '4', '4', '9'),
(1376, '4', 'Солонго цэцэрлэг', 'Орхон', 13, '', 0, 'Хувь', 'А', '4', '4', '', '70', '31', '70', '31', '', '', '3', '', '10', '8', '1', '1', '', '', '1', '1', '4', '4', '4'),
(1377, '5', 'Тэмүүлэл цэцэрлэг', 'Орхон', 13, '', 0, 'Хувь', 'А', '7', '7', '', '76', '37', '76', '37', '', '', '', '', '23', '21', '1', '1', '1', '1', '8', '8', '7', '7', '6'),
(1378, '6', 'Хөөрхөн гүнж цэцэрлэг', 'Орхон', 13, '', 0, 'Хувь', 'А', '1', '1', '', '14', '8', '14', '8', '', '', '', '', '16', '12', '1', '1', '', '', '4', '4', '4', '4', '7'),
(1379, '7', 'Энхжин цэцэрлэг', 'Орхон', 13, '', 0, 'Хувь', 'А', '1', '1', '', '8', '3', '8', '3', '', '', '', '', '5', '5', '1', '1', '', '', '2', '2', '1', '1', '1'),
(1380, '8', 'Яргуйт-Эко цэцэрлэг', 'Орхон', 13, '', 0, 'Хувь', 'А', '5', '5', '', '110', '44', '110', '44', '', '', '4', '', '11', '10', '1', '1', '1', '1', '5', '5', '', '', '4'),
(1381, '1', '1-р цэцэрлэг', 'Говь-Сүмбэр', 7, '', 0, 'Төр', 'А', '9', '8', '1', '304', '158', '276', '145', '28', '13', '25', '1', '33', '29', '1', '1', '1', '1', '9', '9', '8', '8', '14'),
(1382, '2', '2-р цэцэрлэг', 'Говь-Сүмбэр', 7, '', 0, 'Төр', 'С', '7', '6', '1', '222', '118', '188', '104', '34', '14', '40', '1', '24', '20', '1', '1', '1', '1', '7', '6', '6', '6', '9'),
(1383, '3', '3-р цэцэрлэг', 'Говь-Сүмбэр', 7, '', 0, 'Төр', 'С', '9', '9', '', '285', '129', '273', '125', '12', '4', '15', '4', '34', '31', '1', '1', '1', '1', '12', '12', '9', '9', '11'),
(1384, '4', '4-р цэцэрлэг', 'Говь-Сүмбэр', 7, '', 0, 'Төр', 'С', '4', '3', '1', '87', '37', '72', '33', '15', '4', '12', '2', '14', '12', '1', '1', '', '', '3', '3', '3', '3', '7'),
(1385, '5', '5-р цэцэрлэг', 'Говь-Сүмбэр', 7, '', 0, 'Төр', 'А', '10', '9', '1', '374', '180', '346', '166', '28', '14', '49', '4', '32', '27', '1', '1', '1', '1', '11', '10', '9', '9', '10'),
(1386, '6', '6-р цэцэрлэг', 'Говь-Сүмбэр', 7, '', 0, 'Төр', 'С', '6', '5', '1', '241', '114', '224', '107', '17', '7', '37', '', '24', '20', '1', '1', '1', '1', '7', '6', '5', '5', '10'),
(1387, '1', 'Алтанхаргана-Дорноговь', 'Төмөр зам', 23, '', 0, 'Төр', 'С', '9', '9', '', '278', '127', '278', '127', '', '', '', '', '30', '28', '1', '1', '1', '1', '9', '9', '9', '9', '10'),
(1388, '2', 'Бамбар-Төв', 'Төмөр зам', 23, '', 0, 'Төр', 'С', '1', '1', '', '25', '15', '25', '15', '', '', '2', '', '5', '4', '1', '1', '', '', '1', '1', '1', '1', '2'),
(1389, '3', 'Бамбарууш-УБ', 'Төмөр зам', 23, '', 0, 'Төр', 'Н', '5', '5', '', '205', '113', '205', '113', '', '', '3', '', '16', '15', '1', '1', '', '', '5', '5', '5', '5', '5'),
(1390, '4', 'Болор-Дорноговь', 'Төмөр зам', 23, '', 0, 'Төр', 'С', '2', '2', '', '52', '23', '52', '23', '', '', '', '', '7', '7', '1', '1', '', '', '2', '2', '2', '2', '2'),
(1391, '5', 'Ботгохон-Дорноговь', 'Төмөр зам', 23, '', 0, 'Төр', 'С', '4', '4', '', '104', '47', '104', '47', '', '', '12', '', '13', '12', '1', '1', '', '', '4', '4', '4', '4', '4'),
(1392, '6', 'Бялзуухай-УБ БХД', 'Төмөр зам', 23, '', 0, 'Төр', 'Н', '2', '2', '', '47', '21', '47', '21', '', '', '1', '', '7', '7', '1', '1', '', '', '2', '2', '2', '2', '2'),
(1393, '7', 'Бүжинхэн -Сэлэнгэ', 'Төмөр зам', 23, '', 0, 'Төр', 'А', '7', '7', '', '212', '112', '212', '112', '', '', '2', '1', '26', '22', '1', '1', '1', '1', '8', '7', '7', '7', '9'),
(1394, '8', 'Ганзам -УБ, БГД', 'Төмөр зам', 23, '', 0, 'Төр', 'Н', '5', '5', '', '221', '106', '221', '106', '', '', '', '', '17', '16', '1', '1', '', '', '6', '6', '5', '5', '5'),
(1395, '9', 'Дэгдээхий-УБ, БГД', 'Төмөр зам', 23, '', 0, 'Төр', 'Н', '4', '4', '', '142', '53', '142', '53', '', '', '', '', '26', '25', '1', '1', '', '', '5', '4', '12', '12', '8'),
(1396, '10', 'Ирээдүй-УБ, БГД', 'Төмөр зам', 23, '', 0, 'Төр', 'Н', '12', '12', '', '542', '266', '542', '266', '', '', '1', '', '36', '34', '1', '1', '1', '1', '13', '13', '12', '12', '9'),
(1397, '11', 'Моносхон -Сэлэнгэ', 'Төмөр зам', 23, '', 0, 'Төр', 'С', '10', '10', '', '301', '159', '301', '159', '', '', '11', '', '32', '30', '1', '1', '1', '1', '11', '10', '9', '9', '10'),
(1398, '12', 'Найрамдал -УБ, БГД', 'Төмөр зам', 23, '', 0, 'Төр', 'Н', '12', '12', '', '537', '262', '537', '262', '', '', '', '4', '34', '34', '1', '1', '1', '1', '12', '12', '12', '12', '8'),
(1399, '13', 'Нарлаг-Төв', 'Төмөр зам', 23, '', 0, 'Төр', 'Б', '1', '1', '', '27', '12', '27', '12', '', '', '4', '', '5', '4', '1', '1', '', '', '1', '1', '1', '1', '2'),
(1400, '14', 'ОРХОН-Сэлэнгэ', 'Төмөр зам', 23, '', 0, 'Төр', 'С', '2', '2', '', '60', '25', '60', '25', '', '', '1', '', '7', '7', '1', '1', '', '', '2', '2', '2', '2', '2'),
(1401, '15', 'Сансар-Говьсүмбэр', 'Төмөр зам', 23, '', 0, 'Төр', 'С', '5', '5', '', '147', '82', '147', '82', '', '', '1', '', '18', '17', '1', '1', '', '', '6', '6', '5', '5', '6'),
(1402, '16', 'Солонго-УБ, БГД', 'Төмөр зам', 23, '', 0, 'Төр', 'Н', '8', '8', '', '340', '172', '340', '172', '', '', '', '', '28', '27', '1', '1', '1', '1', '9', '9', '8', '8', '9'),
(1403, '17', 'Тагтаа-Төв', 'Төмөр зам', 23, '', 0, 'Төр', 'С', '2', '2', '', '54', '24', '54', '24', '', '', '4', '', '6', '5', '1', '1', '', '', '1', '1', '2', '2', '2'),
(1404, '18', 'Улиасхан-Дархан уул', 'Төмөр зам', 23, '', 0, 'Төр', 'А', '12', '12', '', '309', '160', '309', '160', '', '', '2', '', '37', '33', '1', '1', '1', '1', '13', '12', '12', '12', '10'),
(1405, '19', 'Хараацай-Дорноговь', 'Төмөр зам', 23, '', 0, 'Төр', 'А', '9', '9', '', '240', '126', '240', '126', '', '', '6', '', '30', '28', '1', '1', '', '', '10', '10', '9', '9', '10'),
(1406, '20', 'Хэрлэн-УБ, БНД', 'Төмөр зам', 23, '', 0, 'Төр', 'Н', '1', '1', '', '28', '13', '28', '13', '', '', '', '', '5', '4', '1', '1', '', '', '1', '1', '1', '1', '2'),
(1407, '21', 'Хэрэмхэн -Дархан-уул', 'Төмөр зам', 23, '', 0, 'Төр', 'С', '2', '2', '', '47', '24', '47', '24', '', '', '', '', '13', '12', '1', '1', '', '', '2', '2', '6', '6', '4'),
(1408, '22', 'Чандага-Дархан', 'Төмөр зам', 23, '', 0, 'Төр', 'Б', '3', '3', '', '81', '40', '81', '40', '', '', '3', '', '11', '11', '1', '1', '', '', '3', '3', '3', '3', '4'),
(1409, '23', 'Шувуухай -Дорноговь', 'Төмөр зам', 23, '', 0, 'Төр', 'С', '1', '1', '', '20', '9', '20', '9', '', '', '', '', '5', '5', '1', '1', '', '', '1', '1', '1', '1', '2'),
(1410, '24', 'Эрдэнэ-Дорноговь', 'Төмөр зам', 23, '', 0, 'Төр', 'С', '2', '2', '', '24', '9', '24', '9', '', '', '3', '', '7', '6', '1', '1', '', '', '2', '2', '2', '2', '2'),
(1411, '25', 'Эрдэнэт-Орхон', 'Төмөр зам', 23, '', 0, 'Төр', 'А', '3', '3', '', '83', '43', '83', '43', '', '', '2', '', '10', '9', '1', '1', '', '', '3', '3', '3', '3', '3'),
(1412, '26', 'Янзага -УБ, СХД', 'Төмөр зам', 23, '', 0, 'Төр', 'Н', '1', '1', '', '39', '15', '39', '15', '', '', '3', '', '5', '5', '1', '1', '', '', '1', '1', '1', '1', '2'),
(1413, '27', 'Яргуй-УБ, СХД', 'Төмөр зам', 23, '', 0, 'Төр', 'Н', '1', '1', '', '23', '11', '23', '11', '', '', '4', '', '5', '4', '1', '1', '', '', '1', '1', '1', '1', '2');

-- --------------------------------------------------------

--
-- Table structure for table `kinders`
--

CREATE TABLE `kinders` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `city` int(11) NOT NULL DEFAULT '0',
  `district` int(11) NOT NULL DEFAULT '0',
  `type` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1-Төрийн,2-Хувийн',
  `loc` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `buleg` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `buleg_prim` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `buleg_sla` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `child_total` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `child_girl` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `child_prim_total` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `child_prim_girl` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `child_alter_total` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `child_alter_girl` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `child_herder` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `child_disabled` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employees_total` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employees_female` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `director` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `director_female` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manager` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manager_female` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `teacher_total` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `teacher_female` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subteacher_total` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subteacher_female` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `others_total` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `others_female` int(11) NOT NULL DEFAULT '0',
  `address` text COLLATE utf8_unicode_ci,
  `contact` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `director_name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kinders`
--

INSERT INTO `kinders` (`id`, `name`, `city`, `district`, `type`, `loc`, `buleg`, `buleg_prim`, `buleg_sla`, `child_total`, `child_girl`, `child_prim_total`, `child_prim_girl`, `child_alter_total`, `child_alter_girl`, `child_herder`, `child_disabled`, `employees_total`, `employees_female`, `director`, `director_female`, `manager`, `manager_female`, `teacher_total`, `teacher_female`, `subteacher_total`, `subteacher_female`, `others_total`, `others_female`, `address`, `contact`, `phone`, `director_name`, `email`) VALUES
(713, '13-р цэцэрлэг', 1, 3, '1', 'Н', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'БГД 6-р хороо', NULL, NULL, NULL, NULL),
(839, '268-р цэцэрлэг', 1, 4, '1', 'Н', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'БЗД 32-р хороо', NULL, NULL, NULL, NULL),
(906, 'Одтой жаалууд цэцэрлэг', 1, 4, '2', 'Н', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'БЗД 20-р хороо', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `eop_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `title`, `notes`, `created_date`, `updated_date`, `eop_id`) VALUES
(1, 'Эхний тэмдэглэл', 'Эхний тэмдэглэл', '2023-04-08 11:02:36', NULL, 0),
(3, 'Өнөөдрийн тэмдэглэл', 'Эхний тэмдэглэл 2', '2023-04-08 11:03:04', '2023-04-08 11:15:15', 0),
(4, 'asdfasdfsad', 'sadfdsaaf', '2023-04-09 22:19:05', NULL, 6);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `receiver` int(11) NOT NULL DEFAULT '0',
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `sender` int(11) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `receiver`, `title`, `content`, `sender`, `is_read`, `is_deleted`, `created_date`) VALUES
(1, 0, 'Системд нэвтэрлээ', 'Системд нэвтэрлээ', 11, 1, 1, '2023-04-19 03:49:01'),
(2, 11, 'Ирц орууллаа', 'Болор бүлгийн ирц орууллаа', 10, 1, 0, '2023-04-21 07:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `own_plan`
--

CREATE TABLE `own_plan` (
  `id` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `brief` text,
  `tasks` text,
  `date_from` date DEFAULT NULL,
  `date_until` date DEFAULT NULL,
  `author` int(11) NOT NULL DEFAULT '0',
  `approver` int(11) NOT NULL DEFAULT '0',
  `comment` text,
  `status` varchar(32) NOT NULL DEFAULT 'new',
  `is_lock` tinyint(1) NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `pending_date` timestamp NULL DEFAULT NULL,
  `approved_date` timestamp NULL DEFAULT NULL,
  `cancelled_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `own_plan`
--

INSERT INTO `own_plan` (`id`, `title`, `brief`, `tasks`, `date_from`, `date_until`, `author`, `approver`, `comment`, `status`, `is_lock`, `created_date`, `updated_date`, `pending_date`, `approved_date`, `cancelled_date`) VALUES
(2, 'Ажлын тайлан', 'Ажлын тайлан', '14,16,15', '2023-04-24', '2023-04-24', 13, 12, NULL, 'new', 0, '2023-04-24 21:30:20', '2023-04-25 07:58:00', NULL, NULL, NULL),
(3, '4-р сарын тайлан', '2 ажилтай', '12,13', '2023-04-25', '2023-04-25', 14, 11, 'Зөвшөөрөв', 'new', 0, '2023-04-25 01:25:53', '2023-04-25 02:56:39', NULL, '2023-04-24 20:56:39', NULL),
(4, '2023 оны 2-р сарын тайлан', '“Бэлтгэл” бүлгийн багш Д.Отгонбаярын 2023 оны 2-р сарын тайлан', '14,16,15', '2023-04-25', '2023-04-25', 13, 11, NULL, 'new', 0, '2023-04-25 07:56:16', NULL, NULL, NULL, NULL),
(5, 'Тайлан', '2-р сарын тайлан', '14,16,15', '2023-04-25', '2023-04-25', 13, 11, NULL, 'new', 0, '2023-04-25 07:57:16', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `own_plan_tasks`
--

CREATE TABLE `own_plan_tasks` (
  `id` int(11) NOT NULL,
  `city` int(11) NOT NULL DEFAULT '0',
  `district` int(11) NOT NULL DEFAULT '0',
  `kinders` int(11) NOT NULL DEFAULT '0',
  `employee_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date_from` date DEFAULT NULL,
  `date_until` date DEFAULT NULL,
  `is_lock` tinyint(1) NOT NULL DEFAULT '0',
  `is_visible` tinyint(1) NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `own_plan_tasks_category`
--

CREATE TABLE `own_plan_tasks_category` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dd` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `own_plan_tasks_category`
--

INSERT INTO `own_plan_tasks_category` (`id`, `name`, `dd`) VALUES
(1, 'Сургалтын тайлан 2', 10),
(4, 'Тайлан 3', 20),
(5, 'Тайлан 1', 0),
(6, 'Тайлан 4', 30),
(7, 'Сарын тайлан', 0);

-- --------------------------------------------------------

--
-- Table structure for table `own_reports`
--

CREATE TABLE `own_reports` (
  `id` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `brief` text,
  `tasks` text,
  `date_from` date DEFAULT NULL,
  `date_until` date DEFAULT NULL,
  `author` int(11) NOT NULL DEFAULT '0',
  `approver` int(11) NOT NULL DEFAULT '0',
  `comment` text,
  `status` varchar(32) NOT NULL DEFAULT 'new',
  `is_lock` tinyint(1) NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `pending_date` timestamp NULL DEFAULT NULL,
  `approved_date` timestamp NULL DEFAULT NULL,
  `cancelled_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `own_reports`
--

INSERT INTO `own_reports` (`id`, `title`, `brief`, `tasks`, `date_from`, `date_until`, `author`, `approver`, `comment`, `status`, `is_lock`, `created_date`, `updated_date`, `pending_date`, `approved_date`, `cancelled_date`) VALUES
(2, 'Ажлын тайлан', 'Ажлын тайлан', '14,16,15', '2023-04-24', '2023-04-24', 13, 12, NULL, 'new', 0, '2023-04-24 21:30:20', '2023-04-25 07:58:00', NULL, NULL, NULL),
(3, '4-р сарын тайлан', '2 ажилтай', '12,13', '2023-04-25', '2023-04-25', 14, 11, 'Зөвшөөрөв', 'new', 0, '2023-04-25 01:25:53', '2023-04-25 02:56:39', NULL, '2023-04-24 20:56:39', NULL),
(4, '2023 оны 2-р сарын тайлан', '“Бэлтгэл” бүлгийн багш Д.Отгонбаярын 2023 оны 2-р сарын тайлан', '14,16,15', '2023-04-25', '2023-04-25', 13, 11, NULL, 'new', 0, '2023-04-25 07:56:16', NULL, NULL, NULL, NULL),
(5, 'Тайлан', '2-р сарын тайлан', '14,16,15', '2023-04-25', '2023-04-25', 13, 11, NULL, 'new', 0, '2023-04-25 07:57:16', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `own_report_tasks`
--

CREATE TABLE `own_report_tasks` (
  `id` int(11) NOT NULL,
  `city` int(11) NOT NULL DEFAULT '0',
  `district` int(11) NOT NULL DEFAULT '0',
  `kinders` int(11) NOT NULL DEFAULT '0',
  `employee_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date_from` date DEFAULT NULL,
  `date_until` date DEFAULT NULL,
  `is_lock` tinyint(1) NOT NULL DEFAULT '0',
  `contents` text COLLATE utf8mb4_unicode_ci,
  `is_visible` tinyint(1) NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `own_report_tasks`
--

INSERT INTO `own_report_tasks` (`id`, `city`, `district`, `kinders`, `employee_id`, `title`, `category`, `images`, `description`, `date_from`, `date_until`, `is_lock`, `contents`, `is_visible`, `created_date`, `updated_date`, `status`) VALUES
(10, 1, 4, 839, 6, 'Багш ажлын тайлан', 1, 'uploads/202304/10_074035911b56f316ab2e65929b527d788feabb9114f080e3.jpeg,uploads/202304/10_1009196691.jpg', '<h4 class=\"fw-bold\" style=\"background-color: rgb(248, 247, 250);\">Багш ажлын тайлан</h4>', '2023-04-01', '2023-04-01', 0, NULL, 1, '2023-04-01 05:40:35', '2023-04-13 10:09:19', 'new'),
(11, 1, 4, 839, 6, 'Хийгдсэн ажил 424', 1, 'uploads/202304/11_01024430305.04.22-101.png', '<p>Хийгдсэн ажлууд<br /></p>', '2023-04-24', '2023-04-24', 0, NULL, 1, '2023-04-23 23:02:44', '2023-04-23 23:02:44', 'new'),
(12, 1, 4, 839, 7, 'Цэвэрлэгээ хийв', 7, 'uploads/202304/12_0325138177-1.webp,uploads/202304/12_0325137251123.jpg', '<p>Нийтийн цэвэрлэгээ хийв<br /></p>', '2023-04-25', '2023-04-25', 0, NULL, 1, '2023-04-25 01:25:13', '2023-04-25 01:25:13', 'new'),
(13, 1, 4, 839, 7, 'Хүүдийн судалгаа авах', 0, 'uploads/202304/13_03253574622222.jpg', '<p>Хүүдийн судалгаа авах<br /></p>', '2023-04-25', '2023-04-25', 0, NULL, 1, '2023-04-25 01:25:35', '2023-04-25 01:25:35', 'new'),
(14, 1, 4, 839, 6, 'Арга зүйн зөвлөгөөг авч ажиллав', 7, 'uploads/202304/14_075101681001.jpg,uploads/202304/14_075101234002.jpg', '<p>\r\n\r\n\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<meta name=\"ProgId\" content=\"Word.DocumentW\" />\r\n<meta name=\"Generator\" content=\"Microsoft Word 15\" />\r\n<meta name=\"Originator\" content=\"Microsoft Word 15\" />\r\n<link rel=\"File-List\r\n\" href=\"file:///C:/Users/HP/AppData/Local/Temp/msohtmlclip1/01/clip_filelist.xml\" />\r\n<xml>\r\n \r\n  \r\n \r\n</xml>\r\n<link rel=\"themeData\r\n\" href=\"file:///C:/Users/HP/AppData/Local/Temp/msohtmlclip1/01/clip_themedata.thmx\" />\r\n<link rel=\"colorSchemeMapping\r\n\" href=\"file:///C:/Users/HP/AppData/Local/Temp/msohtmlclip1/01/clip_colorschememapping.xml\" />\r\n<xml>\r\n \r\n    \r\n   \r\n   \r\n   \r\n   \r\n   \r\n   \r\n   \r\n   \r\n   \r\n  \r\n  \r\n   \r\n   \r\n   \r\n   \r\n   \r\n   \r\n   \r\n   \r\n   \r\n   \r\n   \r\n  \r\n</xml><xml>\r\n \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n \r\n</xml>\r\n<style>\r\n\r\n</style>\r\n\r\n<style>\r\n /* Style Definitions */\r\n table.MsoNormalTable\r\n	{mso-style-name:\"Table Normal\";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-parent:\"\";\r\n	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\n	mso-para-margin-top:0cm;\r\n	mso-para-margin-right:0cm;\r\n	mso-para-margin-bottom:8.0pt;\r\n	mso-para-margin-left:0cm;\r\n	line-height:107%;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:\"Arial\",sans-serif;\r\n	mso-bidi-font-family:\"Times New Roman\";\r\n	mso-bidi-theme-font:minor-bidi;}\r\n</style>\r\n\r\n\r\n\r\n\r\n<span style=\"font-size:11.0pt;line-height:\r\n107%;font-family:\"Arial\",sans-serif\">Дөрвөн\r\nдолоо хоногийн 20 удаагийн сургалт,</span><span style=\"font-size:11.0pt;\r\nline-height:107%;font-family:\"Arial\",sans-serif\"> </span><span style=\"font-size:11.0pt;\r\nline-height:107%;font-family:\"Arial\",sans-serif\">үйл ажиллагааны төлөвлөгөө 4 тус бүр батлуулж арга\r\nзүйн зөвлөгөөг авч ажиллав</span>\r\n<br /></p>', '2023-02-01', '2023-02-28', 0, NULL, 1, '2023-04-25 07:51:01', '2023-04-25 07:53:29', 'new'),
(15, 1, 4, 839, 6, 'Сургалтад хамрагдав', 7, 'uploads/202304/15_075231587003.jpg,uploads/202304/15_075231465004.jpg,uploads/202304/15_075231923005.jpg,uploads/202304/15_075231678006.jpg', '<p>\r\n\r\n\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<meta name=\"ProgId\" content=\"Word.DocumentW\" />\r\n<meta name=\"Generator\" content=\"Microsoft Word 15\" />\r\n<meta name=\"Originator\" content=\"Microsoft Word 15\" />\r\n<link rel=\"File-List\r\n\" href=\"file:///C:/Users/HP/AppData/Local/Temp/msohtmlclip1/01/clip_filelist.xml\" />\r\n<xml>\r\n \r\n  \r\n \r\n</xml>\r\n<link rel=\"themeData\r\n\" href=\"file:///C:/Users/HP/AppData/Local/Temp/msohtmlclip1/01/clip_themedata.thmx\" />\r\n<link rel=\"colorSchemeMapping\r\n\" href=\"file:///C:/Users/HP/AppData/Local/Temp/msohtmlclip1/01/clip_colorschememapping.xml\" />\r\n<xml>\r\n \r\n    \r\n   \r\n   \r\n   \r\n   \r\n   \r\n   \r\n   \r\n   \r\n   \r\n  \r\n  \r\n   \r\n   \r\n   \r\n   \r\n   \r\n   \r\n   \r\n   \r\n   \r\n   \r\n   \r\n  \r\n</xml><xml>\r\n \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n \r\n</xml>\r\n<style>\r\n\r\n</style>\r\n\r\n<style>\r\n /* Style Definitions */\r\n table.MsoNormalTable\r\n	{mso-style-name:\"Table Normal\";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-parent:\"\";\r\n	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\n	mso-para-margin-top:0cm;\r\n	mso-para-margin-right:0cm;\r\n	mso-para-margin-bottom:8.0pt;\r\n	mso-para-margin-left:0cm;\r\n	line-height:107%;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:\"Arial\",sans-serif;\r\n	mso-bidi-font-family:\"Times New Roman\";\r\n	mso-bidi-theme-font:minor-bidi;}\r\n</style>\r\n\r\n\r\n\r\n\r\n<span style=\"font-size:11.0pt;line-height:\r\n107%;font-family:\"Arial\",sans-serif\">2023.02.09\r\nАлтанхундага багшийн “Математик энгийн төсөөлөл”сургалтад хамрагдав</span>\r\n<br /></p>', '2023-02-09', '2023-02-09', 0, NULL, 1, '2023-04-25 07:52:31', '2023-04-25 07:53:18', 'new'),
(16, 1, 4, 839, 6, 'Зөвлөмжийг хүргэв', 7, NULL, '<p>\r\n\r\n\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<meta name=\"ProgId\" content=\"Word.DocumentW\" />\r\n<meta name=\"Generator\" content=\"Microsoft Word 15\" />\r\n<meta name=\"Originator\" content=\"Microsoft Word 15\" />\r\n<link rel=\"File-List\r\n\" href=\"file:///C:/Users/HP/AppData/Local/Temp/msohtmlclip1/01/clip_filelist.xml\" />\r\n<xml>\r\n \r\n  \r\n \r\n</xml>\r\n<link rel=\"themeData\r\n\" href=\"file:///C:/Users/HP/AppData/Local/Temp/msohtmlclip1/01/clip_themedata.thmx\" />\r\n<link rel=\"colorSchemeMapping\r\n\" href=\"file:///C:/Users/HP/AppData/Local/Temp/msohtmlclip1/01/clip_colorschememapping.xml\" />\r\n<xml>\r\n \r\n    \r\n   \r\n   \r\n   \r\n   \r\n   \r\n   \r\n   \r\n   \r\n   \r\n  \r\n  \r\n   \r\n   \r\n   \r\n   \r\n   \r\n   \r\n   \r\n   \r\n   \r\n   \r\n   \r\n  \r\n</xml><xml>\r\n \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n \r\n</xml>\r\n<style>\r\n\r\n</style>\r\n\r\n<style>\r\n /* Style Definitions */\r\n table.MsoNormalTable\r\n	{mso-style-name:\"Table Normal\";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-parent:\"\";\r\n	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\n	mso-para-margin-top:0cm;\r\n	mso-para-margin-right:0cm;\r\n	mso-para-margin-bottom:8.0pt;\r\n	mso-para-margin-left:0cm;\r\n	line-height:107%;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:\"Arial\",sans-serif;\r\n	mso-bidi-font-family:\"Times New Roman\";\r\n	mso-bidi-theme-font:minor-bidi;}\r\n</style>\r\n\r\n\r\n\r\n\r\n<span style=\"font-size:11.0pt;line-height:\r\n107%;font-family:\"Arial\",sans-serif\">Бүлгийн\r\nмэдээлэлийн самбараар боловсролын яамны гаргасан”Та хүүхэддээ хайрын 5 хэлийг\r\nзааж өгөөрэй “зөвлөмжийг хүргэв. 2023.01.01-01.13</span>\r\n<br /></p>', '2023-02-01', '2023-02-13', 0, NULL, 1, '2023-04-25 07:54:47', '2023-04-25 07:55:07', 'new'),
(17, 1, 4, 839, 6, '', 0, NULL, '<p><br /></p>\r\n<div style=\"text-align: left;\"><figure style=\"display: inline-block; text-align: center;\"><img style=\"max-width: 80%; height: 129px; border: 1px solid rgb(221, 221, 221); border-radius: 4px; padding: 5px; box-shadow: gray 0px 0px 8px;\" src=\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEAeAB4AAD/2wBDAAIBAQIBAQICAgICAgICAwUDAwMDAwYEBAMFBwYHBwcGBwcICQsJCAgKCAcHCg0KCgsMDAwMBwkODw0MDgsMDAz/2wBDAQICAgMDAwYDAwYMCAcIDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAz/wAARCADOARQDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD5vjtU8unyWqeXU0cVSf8ALL5a8c9GEzJuNPSGmW9qlXJ6LeL95V8jCobfh+xWWt620fyv4Kp+E4/Nrp47X93WkIHLOZz15apWJd2qeZXVapa+TWDqEdaakGPJap5n3KPsaf3KufZf3lTR2lMChHYKf4Kmj0dK0rewqzHbJ/crQzM2PR0qaPRk/uVq29hV+20tK6OQDBTRk/uVMmjf7FdDFpf7uj+y/rW8IGHOZNpp7xy/KJErRF7fWNmfKu7lP9yVq0LewTzBTtRsd6RJs6mjkYc4yy8UayLRN99cSJ/dlO/f7Vl+KNUi/si4hfT9PC3YwALZQ6t67u1bh0/ENUtc8KL4j0aW3hfZcsjoD9RUTpiPn7xL8b9B8GXL2cDTX08HyFIY/lU9wXbisuT9pKwjtPMvbC6t7YsAOVfefX8K0dU+El34T1B476x3gkfvGTfmpLnwnp2uQKr6ckjRqFG2P3rkmdA7SY9J+KsENzb3u6zLfPJGnzK3auif4J2cF4AuoSSRhQwk2csfSmfDv4Ux+FYZ1hXyluHVsemN3/xVdsbbyown90Y/KjnA4u4+GEePlu0/FKoXPw2uIh8k8L/V67meLis684rIs4ufwNdxudqxucf36y7zwtfxD5rZ/wAK7i46VTmlfNAzhZNIuovvQOtVpbeSI/Mneu++1MBUFzdKB8yp/wB8UF8xwgPymmvc7VxXYzrbzD/j3h+uzrWddaZaEk/ZkqucOVnMm6XNQy3XNbV1plnk/uW69nqjLo9sT95x7elRqaFD7UlFWDo1vn/WyUUajPWo7/8Ad/cqzHfoBWPb/vaup1rgOgsf66poov3lQ21Wq6IETOm8HWL4SuqjtX8v79c74K/ewV1EdbUzimY+sReTvrBvIvNrqtQi8371YN5a+VJT1CBmxW3m1NHa1Zt7WrMcSVtAzK1va1NHa1q2VimKsx6WlWZlOzsOauR2tX7bSkNXI7CuunAiczNiscxUfZcfwfrW9Fa/uqfHo/nSV3QgcvOZNlYZP3KdcWvmX0a7PuKTW7b6V5Rog0vdOzfxCr5BmO1r5a5qrcQ+XytdK+mZj+asy8sPK/grlnTKhM5u9tnmHzfP7VSntEC/cT/viuhuLFiPlSs65tHj/grlnA6ucwbiHAqhc/7tbdzF1+SqEsfNc5oZM8fy1RuYs1rXkXFZ9xFxUcgGVPFxVC5irVuYsCqs8Xy1kWZUkPFVpY607i24+XrVO4hwKmYzNeH5z9arXMWKvSw1Xmh+Q1JrAyrm2zWbPDhj9a2LiLis28ibfQWUiMGinSw5eigD0S0/1dWo5a5u31Tyo0q/HrNc5eptxy1NHLWDHrNWbbWf9utCD0XwdL5VutdVZy/u68/8JX/7tK7fR5fNramc8ye8if8AhrKuYsGuhuI/Nj2Vn3Gl/vK05DMyo7X/AGKmjtK0raxq5b2HmD7lbQArWNt5sdWbe1etKy09APuVaSw5rSBhMpW9q1XI4vJFW4NPqwvhq91i7gt7CGS6ubqQRRRRxtK0jnpsRe9ejQOWcyO2tkMf1qxb2H7yr8X7PXxU0t2+1+DdfhGTjdpsv/xNSyfDzxhpX+v8P6gn+/buldsInLORGthmPf6UltpboCfWnSRa1Z/LNpV0P+AmnNqd5BD89nOPwrf2SI9sRXNhms68hwzfSoNX8d/Ybhle3ud/+5RpmtJq9nvVJMscVzTgbQmU54sLVG8+792ugubT93WTfRfu686pA6aZzt1EhdvpWbcRcVt3dr8tULi14rkmdZg3cXy1l3kXzn6V0F3a/LWbdw4WszQw5osJVS4tsitieHyxmqdxHkVE9gMmSHAqpc21atxFxVae2ytY6lmNLCwP41UuYnrYuBtGPSqbx5U0ajMSaL5vu1Wni4+5WrdDD1TuP9WfrUF8xizw/vTRVyWXD0UBzk1vD+7qb5/en28X7upvsv7vdWYc5Wjif79Pgje5nWJfvu+yp/Jrc+Fnhz/hI/iNo1mibzLcoH/4D83/ALLV8gc5vW0L6LMPk+SOu28L6gl3Gm160/iN8OWjlkdU+evOrXUZvDd7/s1fwmHxnsGn2vm1Z/sbzZK5Tw144S5iTa9djp+qwzBK3gBCmj+Uamt9L/eVpQSpKasQWqfJW5hMqW+l1NHpdatvFzR5Xz1vAwqFOPS67H4I3/8AwjPxQ8P6j/0D7+3m/KQVgRw1c0IvFfgr99AcV30/gMT9wbOcXtnFKBxKgcfiM0sltHIPmjRvqoryn4FftD+FvFHwo8OvP4i0iC8/s+FJ4ZLtFkjkVcEMD9K760+Img34Ah1rSJf9y8Rv615Wp6ehZvPCel6iP32mWM3+/bo1Zl18HfCN8P8ASPDHh+b/AHtPib/2Wtu31m0ux+7urZ/92UVZEqkfeH50aj0PM/E37LnwwvNPu7nUfA/heSGGJpJSbBF+QDcf5V+PfjqCwPjzVZdLtorHTri+me2t4f8AVwpuO1fyxX62ft2/Ez/hWv7NPiOeKQJealGNOtueQ0nGfyzX5HamP9N3egruwl+VtnNXsULiLZDnGM9h2rFv4s1vXkuYa5/UJf3pq6+xzQMq84eqVzEv8VXLnpVO46VxT2O4y72LrjpWZccfnWtqHSse6fyUNZGhn3Xf61VkjzU88u/5vSq/nZ71mBBPD5YzVC5OUNXbyXiqVzL8lY1AM+ePK1UlGDVm5lqrJLxUallS8+6ay7qXBP1rSvzlKxL6TBP1o1GQTnMlFVWlfcfrRRqBgWn7Q9t/Hptz/wAAlSt7wf8AFqz8Y6olna2d0jn53Z9uyOvpzxR/wTx+E1m5+0aFq0EIGfOtNRl/9AbdXyZ8FtAs7PxLrMtgr/Y4riaO23vvfZv+T/x2uSE7zNvcPRJePnr1P9iHwv8A8JJ+0LZqyb0sbK4uvyTb/wCzV5z/AMs6+l/+CYPhP+1vHXivUWTi1sI7dP8Agbs3/std0Ie+cVefuHonxC8E+bC/yV4B8UPAX2Z2miT56+0/GnhdJYT8leE/EvwlzN8lbzgc9CsfLUOpTaDqH+z/AHK7Xwz4983jfWX8RfCL287uqV56uuXOlaiEWsPgOs+htK8XeZ/HW5Z+KPN/jrwfQ/GVzs+auk07xu4/greEzM9ltvEWB9+rI1pa8ps/Hj4+49XI/iDj7yPW0JmM4Hp41r/bqzY65sZGXsa8t/4WCn+3+VWbP4gxb/meu6nMw5D3PTfHzWkf3q2bH4oTQ/8ALc/nXhdt8QYZY/kmSr9t43WUf65K6oSMeU97svi7dfw3cqfiatRfHTVYkPl6ldpg4+Wd68FtvG6Z+/8AL3qdfFybD8//AI/Wk+Qs9H+IPxd1TxZAsd9qN5dQoflilndwp9a4K+1BHJdqwdW8UJuHz1mzeKd7/frCexodDd6j5qVnXBWWsmTxH/t1Wk8Rr/friqTL1NC7iwtUJ4uKp3PihP79U5/EiVgawHah92si7i2LmpLvXk2H5qx7zXkxXOaDdQk4rP8AN2c0l5qqMKzrzVOKzNC3c3VULm6/2qp3GqcVQudQzWYFq6uuT9arfaqoyX/Wo/tWaALN83mxmsS7GCfrWjcTZhrHnl+c/WlqWMeLJoqBpPmP1oqBn6F/tJXH/CF+BfEGof6v7DYXFx/3zE1fnh8G2/s7woG2fNLtk3/Wvvf/AIKZXn/CO/s0+KZF/dvfJFYf9/ZVX/0HdXw14V07+zvDsEf/AEz31zwp++Vz+4db4Kl/4SP+3Wl2eTYWkcif77Sqn/oO6vuj/glH4X2/C3xXqRT/AI+tTjth/wBsolP/ALNXw18LbX7L8O/Ed0337vULe1/75Vn/APZlr9Lf+CavhL+wf2R9JuHT5tUvbu8/76k2J/6DXq0Ie+efip+4dn4t0fl/kryHx/4c82KT5K+iPEWl+Yjf7leV+MtB82OT6V3TgcNCZ8qfEXwl5jv8leO6h8OfO1Vn2V9U+PfC/mu9cOfh05l37f8AWVwzpnbCoeQ6f8PvLVPkrbs/AeU+VK9R0/4ff7Fa9h8PufuVfIac55Nb/D7j7lP/AOFct/cr26y+H3H3KtR/D5P7tXCBhOZ4JJ8OZQaZH8Obn+CvoeP4cof4KvWHw1SWT7ldcIGHtz5t/wCFcXn9009fBF5FF9yvsDwn8Bl1qOVmh7iukt/2ZYY0/wBSn/fFdXIYe2Phz/hE7+If6qoZNFvof79fa+ufs2okW9Ik/wC+K8+8T/BpLN9ixd6A9sfKt7pd/wD9Nqom0v4j9+evozUvhUn/ADx71j3vwvT/AJ41jUN6czwaR7+L+N6o3N7eRH79e1aj8OMO+IfkrE1L4cpt/wBTXLI39oeRy6peZqF7+8KV6Je+AsD7lZN34H8qM/JXObwmcJeancgVnS6xciu31DwjyPpWNqHhfA+5WZZy1xqkxFUpdYcH7tb954faJazrzRnx92sAMo6s8h+4/wCFRNqHzVauNOdRVKW1qdTQY1/8x57+tIt/89RS2nNLaWv+kJ9aNQLkMM18cr8qjOT61zt7PLHIwXsSK9AsrHzf++a4nVYli1O4Rv4ZWP61AGX51yf4UornvGfxk8OeFNY+yXl+izhAzKr9Mk8H3ooND9Bv+CwGveT8MNA0pW+bXNfSZ/8AciiZ/wD0Jlr5QFq8Wlp8mx/L+5Xvn/BVbXv7Y+NvgLQU+f7JZ3F+/wDwOVU/9lavG9R0C5urfbbqm/Z/HSpz55i/5dm74dh+wfBjTvk+e8vrq5/IKn/srV+qf7LGgJ4S/Zo8D6e3yNFpEDSf77jf/wCzV+XFmj3nhnw5oio/nWka2kn/AE0d5m+f/wAer9cdJ09NE0Cwso/u2drFCn/AE216uFgeZiiLxBdII3r5+/aa+Plr8HrrR7FraSe88R+bDbNH92CRQp+ZP7nzV7rq/wDWvjn9uDZqv7QXh+Fv3n9h6Fc3yj/nm8k2wf8Ajq1nmdadKjKcCcvhCrWhCYzUP2gdNlRP7X8u3xwZoPmQf8Aq3ofxv+HGrRqLfxl4cllB2PGbtRivhrxUl94V/aQ1rSBqV1c2i2LanJCm7YGZFfZt/GvmX4k+G/K+IV3PEk9vDfj7UiMmx8txXjUMXibckz3Z4GjP34H7XeH9d8Lamf3Gu6NN/uXqV09lZ6ThMXunsH+5idDX4YaLpE8KfJcTR/8AAjX1Z/wTL8P3Gp+OvEk9xcTTxwWsMCB5C/l+ZIT/AOy1pWzGdKHOZwyuEp8nMfp/p/hm2ufuyW7/AO5IjVpjwJ/sV+aes/8ABSU+EvFuq2J8GRXMVheSWkcsWo7DIqNz/wAs69e/ZO/4KAR/tIfEb/hFoNA1TSHt7Ka+85tS86NNuBt+770U81rRhzzpGE8nhL4Kp9Z/Ee4T4beBdT12W2e4GkxeZ5W7Z5mSox/49XlOj/to6cZN0nha/wCP7l2v/wATWT+0p8YdV8C/skfFfUpAt5DpmoabZ2Ucr55lxv8Am/Cvk/4efF34geP9CfU9F+Gmra1pqyeQbuwgnnhMq8kFlX0rqr0s7xNOOJy2Hu/9un0nDuB4fVKpDOJ+9zf3j9BvBn/BQHwtokW2fw9r6f7nlP8A+zV3Fj/wUZ+HdzEBNZ+I4D0O+yR//QWr82tQ+NvijwjZT3etfDbxFptpbjdPLPbSxRxj/feOodE/a2tNWtcx+GdTnC/MzQOshxWHseKI6ul/6T/me+8i4Om/crf19x+ld/8Aty/DfVYF2alqlqc/P5uny8CuX8RftGfDrXJg8XiKJO/z20qf+y18DP8AtWaMsO+50XXLVR/E8Ix/6FVOT9rDwhN+8eLU4d3H+pX/AOKo+tcRR+PC/wDkof6m8L1fgxf/AJNH/wCRPuyf4q+BLuP5fEukf8Dk2ZqoniDw1rl0sNprWj3M0vEccdypeT2C96+FJP2mPBUqnF3cIfV7dq6/9mf4teE/G37RXg3T7LU45Lq71ONY4jCyuSqsaiOZZtzRhWwko/8AbsjnxPAmSwoSqUcb8EX/ACn1vrvhNIoHeQqiqN8m4bEiA9a5G8tNOux+6vrCYdfkuUavRv2h9Ee5+B/jZYomluG0K7VIwu55CYm4FfhlL8O/EdhaxF9G1iD90v3YJPQV9fQw9Gsv3kuQ/NsFgqteN6Z+uGoeFEnHyLHJ/wADFYepeDWMfER69lzX5NS2niPS/ur4ht8d1MyVVl8f+LdGGY9e8UW3+7e3C/8As1af2VH7Ezp/s/ERP1J1Twobb/lma5/U/D554PT0r80W+PnjqxT934y8VJ/3EJf/AIqkH7VPxJtR8vjnxJx/fu91YTyd9y/ZVT9Ervw+cdKxL7RPKJ+tfB0X7ZXxPh+74y1F/wDrosb/APsteh/st/tVeO/iJ8edA0LWdc+3afqDyRTRvaxDJCMR8yrkVxVcrqxhzXDlZ9KX2i7CT6nNZdzplejX/hxCvb8DWJf6AgavL9mScPLp+M1FFYfv/wARXVXWg4Jqp/YnlTfiKkDU03R9zJ9BXmXj6zMXiK/hy43y/M3qPSvc9I0ry40/3RXk3xcjTTvH94D3RH/SlOBpCZ8sfE3wJI/idjb2zSKUyTheu5v6Yor0+/gF1fTSRwmYM2dytkZ/CiuLld/gPWjVp2+M+rf2w9VXxn+3ldI3zw6Jp9rbf+OtK/8A6FURteV/6aVzWoa1/wAJn+1L8Q9Y/wBYn9qywxv/ALCfuv8A2Wut8r92ldOCPJmbXwL8Of8ACW/HLwhYBPkuNYtg/wDuK+//ANlr9TJpPMmkb+9xX51fsJaB/bn7Vnhs/wAFik95/wB8RN/8VX6FyzbufWvcwp5eNKGof7VfFf7S0/8Abn7Tniwf8+mmabp0f1bdK/8AOvtHUOW/GviPxCf+Ep/aI8cz7vlufEyW4f8A2LeFR/Rq8/Ov4PIa5R7tbnPk+XTJfEX7XnxJvGify7SBLJOfcD/2SqXi/wCBUPiK4N1Np9xK0SbQ4jatPwJ8Im+IeofFJVvDDL4q1X7KJmLfu+f9n/eqvpX/AAT21i2dWtPGuoW28MSkV3cLGmxWb5fm9lry8PldbFYiShM9p5hChSjznkXiL4dppV/sis7pP9+I19P/APBNjw/Jo/hnxpqDRmLdcRRJ5gx/q4TJ/WvHf2if2dviT8A/hjrGu2XxB1949EskuX26lO28G6eL7jM3ZRXqX7BPjrxBqH7BfjDxbreqXOpaxcy6hLFdXLbnAihMa/yrPOctrYejyTOnL8dRxE/cPm/xJ8PNcu7+9nfRtUDyzSSkmzfBBYnivdv+CSHhqRfj34ruZo5I5LLRBFh48f6yY/8AxNeI6N+1j8WtOtEK+NNQUIoAR4In6j/dr6w/4JX+P/EXxQ1bx5rfiS6tbu4ie0tIZorOK2ldcM53FV+brU4z3MLIwwv8aJ6V+3rJ9j/4J++KJf8AoO/EC0tlP99Yo3JFeuf8EkPD82mfsOeG2jV4/wC0L+9ufzlIrwv/AIKWaj/Z/wDwT++HsR/5jnji9vW+kcWP617h+wRomheE/wBi34aJd29zLqeq6Y9/iG6nQsHkOGYKy7R71+oZLQn/AGPSjA+czavCFOpOf8x8+/8ABw74n8ZWvgT4faBpcOof8IxdT3V9qrR79k1xDt8qGY/3dmXr5D/Yl8N/FjTJ3+JPglNQtL2GZALy5uPIs5IQehTo8bdPn7V97/8ABSHS9Q8R+ArW4sJHj8O6XqIs9Qiu7qW5S4LcYYSs20e9fP8A4Jgv/wBsH4t+Gvh9o+rP4S8q2Hnw2c4g025ihcF5Gh6GUxggBeX64HWvMziGNw1SFP8AnDI6+DxdOdTn+A/UCw+IafFX4O+GQ2mJY6VLYR39xZ3dvGZBduv74sqfwhwQvsRXxxpngfRfEX/BXvxpp93pGlXGm2HhpWFpLaRG2WQRLghNu3OT3rsPiV4Q+Lvwu8eeAfDuk/GEajY+PdWfQ4Vu/DVt/oUEcJlVtwyW2qoHLA8VUtv2N/il4L+Pet/EjRviv4Vv/F2s2clvdzah4aYwzQBOixpJtU4Xqa93CUHSp/vJmUPim1M9V8T/ALK3w11u6Mc/gbwhjYXb/iVxJyOv8NfJ3in4UeHPhr/wVz+C2meFtDsNEtbmyS9lis08tZZCJPm2/QV7t4Ou/wBpfxf4S0jVY9d+Dd5HrFut4kE+j3cUsKMzL8zK3AO3NeIWFv41uP8AgsT8LR8QI/DSav8A2ckkP9g+d9i8kRSEY835859eKqg5ub55/ZZeHc7y98+3vinZK3gDWTtP/IPlOfwFeSavocU37k2FqVSCHJMad0H+zXtnxVh8r4ba+x3YGnSk7f7qrk18/XXx88E3VtbTG61KEy20KnzLGcDIQA8hea+PqVqEa8oVpRj/AEzvwOHxdTB8+HjKXvv4fRHC6R4P01Ne8Yf8S7TXP9seQjXFujiKPyVJH4muZ8afCfQr3xl4Rjn0nTCtzqUizrBDtWYCJmC7e/zAV0/hH4reEZtd8Wteaslot5qwu7YyxOvnxGMIT+BFZnjP4meFpfG3g9rfXtPljt9UaWZ1kz5EflMPNZuwzxXk+1wksI9Y/Ev/AEo+p9nmkcwjbm5eV9/5ThPFHwU8Jaql2p8L2Fo0ccqqVssGN9jEHd26V5tYfALwfrPg7TZJfCdhNLLYxu8p/iYqCT971r6C1zxx4ZngvWg8S6DKZY3KrHcrvckEYFebeB3spPB+lsNQsZIjpsUe0XKZBUEf0rsrww/tvccTzKWJx8cNLmcviX8x5DpP7L/gbVvHPiCzvdAg+zWlrbTxIny7C+5X5/AVo+Hv2W/B/wANvHnh/W9H0tLW9i1OKFJFk3cOdp/nXeaLDay/GPX4/Pt8XGlWjf6xMcO/etDxkIrO002RGiOzVrOT5CMnMqiuL2cHRnK/2v1OrGYqvKpCM39hG9qmloU9ff1rntWsMV2+qQbVYehIrn722zmt3DU8E465sOT9aqPaeW+a6K/tf35+lZ72ZYiPblywG1RnzCegVe5rIOc6/wAE+DtR8UokemWF3fNDErOsCbgmR3btWR8Tf2VPD/iDw/r/AIo8U3LxJpcccVzp0V2BcTlvlWMgfc3AdW644r6a+GOqaF+y3+znHrfi+cWGo6oGeGwZc3c3GFzEPmP1PAr4k+NXxWuvHniC8SFZLDT7y5W6ezPRpAPlaTHt0r2qWXxSvM8SeY1qlTlgexfsv/tU/Ar4GfCeDw5Zz6Do8FpcSsIp7d5JZCxBLsz8knof92ivj/U9FhlvGbEJzycjnNFeknTSsczg27s9B/Z287VbDUdVl+/f3LzP/wADbdXqUn+rrg/gBYfYPA8Kf89Hrubz91XxuFh7h9ZX+M9+/wCCZ2jfavjLrl9s/wCQdpLD/v7Io/8AZa+1JOlfKv8AwTO0vZo/i3Uv+e09va/98qz/APs1fTlxdV7mF92B4+K+MW7lzLv/AIK+CvhzrX9q3mr6ozZa7vdUv9/+/Iy/0r7N+IPiP/hHPAuuX7P/AMeNjcXP/fETvX52zeIrrwr+zrrF7C2ye28ONIj/AO3MT/jXjZrP95S/xHblsPdqzH/so2DS+HobxI/O+16nNehXX/WICW/9BWvUrx2g8FanJlIhaafe3PydvJsrY/8AtSviPxb8afFnwb/Z2+Hr6Vc2kN1qilb0z2qyo6yBmWuab9vj43S3V7ZXGi6RrMVzA0Uxh0+R1nhljRX+7J91lRB/wEV15LmMKMp1Jw+IvMMFzqEOc+y/26tFnu/2Z/GzzJ97Sbjfv+/+61BC36SVxPwg8F3Xgj/gmL/ZVhBNc3epWM0kMMSb5JPOuAR/47XzP48/4KUePfiLolzoniXw7pd5Dq8EkUttuurZ7pZSjuBtb+Jo0/74r618X/tA6l+yh+xl4P8AEunWkY1RIbG3S2Mu3yjKrsw5Vugrm4jzWGJpU6MY+9zG+T4GdBynz/ZPAPC/7OXiPx34czZ2Fp50A2PFcX8FvLH/ALyuy19Rf8E6PhzqHwl+G3jJNVhitrptRLsomSQFY4QF+dPl6188Tf8ABVq88QSmbV/h5oGqTNGqO9wkbuef7zR19H/saeJ7XxX+y/qmt6dpT6RDrl7qE8VkJvO8ol8ZDdhXiZnUtR5OU78HCfPzzMv/AIK53z6b+yx+z9pS/wCtli1PVHX13bUr0f8AZ78V6j4J/Zo0mVIpL24ttOSCKL7snkRx8hPbGQvuK8t/4LQW80OofAjRvst1cQaf4TEkpSJ2RfMuASu8dM4rN8A6RrHxu05/7HkSDUrK2aJrg6jcWdsuxf3QgA3KSrbVL4RSSQQa/cuH5qGCowPzrip81CnDzPVvhR41t/2rNO+JHhDUJIni1a2iQW4+ZwBFtEp9CDgle5FfGfw5/ZO+Ifwg+PdpcaxHPbtoTNNb3sLfu51U4Vw3Y4Fd/a3nxk+AvjCyu4m1TSLiyQw3V/qNqlxp0oblgiWyySSDJO3cRz2FXvij/wAFKFn+E15peialFq2qM40uS8vbA280jEEyGNV4j2nI2HkAgmurFyozf74+dwtGvR92h8Mj7X8aax/wl/xg/Zdu1lMy6hJqeqMVOSXjscE/ma9sv2htvCl7cDqunXEn3/SCSvjH9lzwD4w8WeMPhu2qfEnVNEfw3oMtx4ctv+EWHnWf2hBuj8yTMU6Fc5LMG9K91+OGi/EHwd8GPGOq/wDCyk1FNN0a6uBDL4TtUEqCJgE8xZBsyCedpr5+rye7BSPsFD3YHY/BuC4tvg34KYRvJG+g2yqybeCEZv8A2avmbx3qEI/4LUfDmW5mit4LLwsjyyTSoqRfuHPLdq+ifhZpviLTPgz4RWPxVZyAaFZERy6EjBMwK+3KyLnG7Ga+efjX8EPhx8T/AI7eLLn4pX/27XbW0tbTT4Ldjp6eSsZ8ttjO2csx+bec4xiuPE5hDBRnVrdfdO/LcPPE4iVOB9hfEi5h1f4Ra5dWdxBeW1xps3lSwyiaNxgZ+YdK8f12/u4tIs2jdIoliiCJnbz5Y71+aP7EnxP8V/s2ftveIvhv4Yur7X/DWtWl9ZXtjNO4t4oAnmfbI0HyqyAff79K/RKX4x+DfEWg6fLpo1aZDbxhx/Zc8mCEAPRcflXzMMZQlXfPLl9xfmz11lmMhg7UYyl77+H0Rm+GQlrrPi947O3aaXVkLkwoc5gSuW+L3hqzn8SeEhPaWzLJrQBUwJl1MLHDe2RT9O+Mnh/TPEHidbu9m0hb3U1uLRLyyliZo1iVThdvqK4n42/tW+ANM8ZeE4LnxjokNxbaqt5PG7GF4ohEyhm3dsmsPa4apgp04cstV/6UepCOYUcxhOUZxhy/+2MseI7bTdX2h/D+hRi5jbDJbJlic8r8vUYrhPC/gDRb7wDpv/Eh0e4uPs6kzzLhy3zHp9BW9qvxs+HM1lFcw/ELwld/ZcqiDUIt5PJ4+b3rA+HHxN8Lav4M0hofFnh9Slqd6peRbyUZsbvm6c1lWw0JYn3oxOTD5li44WXJVl8S+0cqnwt8NP8AFPU7efR42to9Ihu4baN28pJWlKbh74FN8U/DLw94eaK8sNJeynsru1kjYzu2cyqDw3FbDeJLO9+MWpIl9YXHmaCsSPHOnlufNJ+U+tVviNeMvhe5/ef6kxSEFgSMSBqypYTDcs5cvV/kejjMxxrnS5qkuWUUev63DiSUDpuP865rURgfjW5qs252Pqa5vWpea1h8KsfOqdpWMnUZcA/Ws5b7yri3b7/7xDhev3itS6jNvyKqabDu1iyT/npcxj723+JayU/eiU4XUmet/tXDRfAvjq5+16i2qavaIky27yhhbxsuQrEcRgHjB618W/EP4mS2niM3OoBv9NuD88SAJFn+EEcY9K+y/wBsHwU3izX7jTLAXGo+XKZJIbdvI0+yx96WaX+Nu5OflPGR0r4g+L1lDa3a6faTpfReeMXCjKXDD72xe6+jdxX2FWGzPmsNsy6mp+cgaKztwhHAY8j60VHpH2H+z48xkkAAk96K5/3Z2nuPwmiS18EWKfx7N9bd5s8v79Y/gcfZvDlojf8ALOFKuajL/o3zV8xR+A+gn8Z9sf8ABO6wSy+Ak06f8xDVJ2/74Cr/AOy17ZeS15R+xFpf9j/sweFk2bPtMMlz/wB9ys1el3suY69SHwHkYj4zyj9tnxd/wiH7Knjy7DbGXR5I0/4EFT/2avh74oW9zpH7Jur20cU0801rZ2G9PncYVTsr6r/4KTTrP+zFqFk83lx6nqNpby/7hfc//oNfDvxa/a50bwBp0hit9T1FVDFEhCxJwMfxV87nNaccRDkhzntZVhuelLnnynnX7SzXfhvT/B2nSxWwtNONosCP1eRYSfn/ACr1HwT8HVTxul4unyzL/YCS29tbbU82aHaksbL6Bst/wGneJfgdpH7Q/h7S7zXpNSsJti3uy0mXMTMm0L8y/wC1Xq/hzwLbab4s07W4tT1G2u9NZWQIq7WKvIWV/wDf8x6wy7O8HSpclY3xuUYyrVU6J8Ifta+FbODXPDepaNa31p/pIjWC6TZNbpO6yRo/+0u5wPpXuP7W02r+Mv2c5M3F3dxWvit/KUjMdtFbwCJVX3+9+Oa9S+Pv7P1h8V/iCmrXGtQG6lkguhp0tt/x8+VKJN27d2zt+7Xa/DUR+DvDP2CyjjvYp7me+lb7Uj+c8shLkf7IJArlzXOsNVlCVH7J3ZdldaMZ+2PzV02cG1Td0+pr9SP+Cfll/ZX7LngW3/iuraS45/23Zqsz3cdmoW68O6e/HaO3eun8Aa2LjxXZ2CWQs4t6rHGNnlxZK/L8vrXM8y+tSjDl+0afUvYQnM+yPj942b4a/ss+KNVQfvdH8L3FwgGB5b+QQP51/PP4J+N+t+Cb1p7HVtXitbiUSOlhe+QZwexf+9gnFfv9+1O9xqf7OfjeztSxnl0C6iiVF3+Y/l8j8t1fhPqn7OWpNoH261gh8goBIqt8qcfxN90PX6Vh8U6R8FVo871PVvhh/wAFG18K6dJYafFfWMSlcQSB555xnnfLK23/AL5Wvcv2kPjf8Hv2rNO0S7i8L+Go9Q01Io9UvrK2WKS4hXDssioFH3zgyycnHpXwFf6Jb/D2GL+0Umj+1u0SLv5O3muw+Cvx68Q/s9f2zfeA73SNPu9f06Wwvbm+thdnyHOWCQuDGxHQM4bAJ4rfFYrE4hRqQq/AdGV0MJh5SjWpc8Zf3uX/AMmPvDwt+1za/Dvx1o2r6zrXh+70HSNP+w6cJLlluBCqgfPEisQygYUtwQBX3ZosmmfFnwfB9qtRf6H4ntYzJb3K4FxDOudjr3BU/rX89Hw0+KPiXwR8R9MutMOiH7Xeotzd6zpsVxYCRpBmVoDkLGgOThMYHAr9Ffjb/wAFhb/XPD2l+BPhIdf8V/EXUIYrE6tbabFHZrcjKsbK3VN56ZViFCDBohiqk589Y45ZdTpP9xKX/bx03/BRj/gqVH+yn8Qh4H+GkHh/UdZ0cBNUa4jae00pEXbHaRhWXDgAbh/CMDvXzP4K/wCCg+rftEm8u/F7eGby/aQ3E9jPp5Tz4cfu2i77VbANfMXx0+AvxM+EWoSap4+8G+KfDq6rcMgv9VtmUXs5JdyJf4mOSTXCW/jTU/B3iOO70eYRXNnEEkSRN8Myk8Ka83M6U8VR5Ee3kuIhg6/tJnrfx2+PHiv4P/GHT/GXhwrpF0Y5bR76KJSkyuhRoin90qa+rP8AgmR+3zJ8W/Gtl8P/ABfPZaTdajaiHQ9QtVZFurgNuaJxu/1jAfJ7jFfnn8RviT4h+K91bR6otta2NjIZ0t4Ewm4jGWP8R9BWX4b8X6l4G8U6XqOkXBtNT0e7ju7O5xgxPGdwYD07H61y5fg1QUZ1I+8d2Z5hOu5UcPP3X7x+8X7THwctPGGq33iC7vr17jwzo9usCF/3MgknJJfPzbhjjFfk1/wUu11dd/aw1AxpHEtlplnbHj7+1Cc/jmv1x/ZB+M1j+3B8I7PxJFp11dx+INPtYNR06ORYZprqInzrZHYj5t4yPmH3xXx7+31+yfpfxe+OXiTS2+DPjvwn43tdK/tOG7tLqS6kvbeMqimS1JdJEXO0yKy8g8HFdk6NCnKdWP2jzYYvEVYxpVp/CfmqqKzgYHp0pzr5Z+VNj8qCPepNSgk8O+Ibixa4t7iexmeGWSE5UurFSQfTIOKrxym+ueufNcJn6muM6j9N/hb+zf4V1D4deEvtOlx/aLnSLeZ3jdsMxjUkn8a0bb9n/wAM3PieOD+yIPlfZlQ43Etw2fbFegeBbY2vhrw8sYiYW+n20ZCnn/UqKs2emtp1/wDaLqJopJidvmDaoUNwc1r/AGZh1ryinneNfuyqSsv7xlvdPdXOpxyGMiwu/IUr1IAVv61z2tf65vpXQ6e5vtU15ogWX+025B4b92nIrI1mFxnCfLt5rCatojlg23dnK31aPw9m8rx7oknlrcBdRgAiZd+4blzu9qzryH95XcfszWC3Xxw8N+YufJnaVfl3jcoLhseoxxXFShzV4G9afLSkyv8A8FH/AIlXN34y/sNJpdK0Y26TLpFnEIEu23Z3SNu3MvoDxXxvrGgQfEDxLIk37u4s0DpCpMZCvwDxx27cV9EfteaP9n+Jmo3142p3Ml5J+8utQnHm3BHQBVYkKPTA+leG6LZuLxNYOC5maAlCeEBxX207ykpSPmqfuxtHqZv/AAg1zB8qIpX1Ny2TRXoX2JWGUWRlPKn1FFcrjC5spzsd7pf7q3RKb4gufs1lK39xGp9j9xajurZtSv7a1Xf/AKVNDD/326LXzED6M/SP4QWH9hfCHw1afc+y6Zbrs/7ZLWrqF1+7qK1RLKwhgX7kSLH+lZ+qXVdx5/Kzn/H/AIZ0vx3pQstWsbfUbaJ/OVLhd6F/79fBn/BVfwLoGgfCPSbLTNKsbO61fWoLcPFDscITX3lrF1+7evhL/gpbfr4i+LHws0PtLrBunT/c2/8AxNcOLlywnM7sLBynCBtaTbJYacIv4UCx/oK37W58mzesKTiP/tpV6WXEEa/7dfllTc/SVsef+NPEPk/GHxDfB/3ui+GAEb/nn5jSHP8A46tdX8BrNNK+Enh2NFQlLSEKU7llz/Wo73wJpur3eotLAWfXSLa7b+OWNV+4P9n/AOKrpdK0+30qysoYIo4reHAjjT/lnjitp1vc5DCFE1PEOseTx7Yq58Hdf+2/GfR4N/W5T/0IVyfjK+8t4vrU/wCznqW79oLQVbtJ53T0DV25TDmxMDizP3cNM+3f2iPF32H4X+Ivn2brKSEOnyY3YX/2avk/xN4Gt9O+Hu2wsXa5NvmN40QyEAc7WfAh/wBqQhsD7ozXd/tb/tE6J4bg/wCEVurh21fXY1FvBGm9dpfO927D5a4Txz8SYtC8CXHnSMVgtmeQhOwFfp1CvCo5KB+a16M4qJ8R/tr2Hw28Rfs5fDKx8MaxZSfEd9W1W+8XyOzvLp0aqqQ26g/8s8jIY/Oxyx7V8m6j4rnvbyb96sIYCI+T8q7AMEH6/wBa9g+HmtfD3xb438RReN/C2ueIZ9X1Tfp9xp+rNYG0DHBUja3mc457U/U/hr8C5tUuI49L+J+nPExiYJrEE2w5wfvQ1yzzOjRnyTPXw+V1q0OeBwHgVv8AhZ9/b6A2tWmlxie3WOW8DFBvlWNssuThAd7bm24HHNfpH+yz/wAEgT4M1kfEPwn8U7HxpLoGoJaSPYxmCGVWJBlhR1LSqcYyGr438GeDvgh4Q8RabqdjP8W7O806VJ4JI72zLpIhyJN3k196/Cb/AILk+GvAkAj1i08aeJI1to4YhLJbQrG0ZOyfbDEq+YwJ3ufvkA8dKitncOTkom8Mor/biWf+Cln7IXjf9pb4WeGdH0u5sRfWGrC9SG8meOExCMq/zbWw/IxXw83/AASb+MOiXN3LLY+HZ/MlBZhqy5AA77lr9I0/4OL/AAI0Plz+Eb644x/pFpBJn/0Gnyf8HBfws1W3liu/B1uIJ12yRvo8EiSD027q8qGa1o/a/wDJTdZR7nwf+TH5q+A/+Cc3ju98f6HFqmkaXd6C2p28Wpvaa3blreF3CyAMG4crnG7n0r7x8Tf8ELP2fv7Yc29r44t1WcsuNc3qADxn5auePv8AgrJ+zh8XNEt7DVvC0WjxQXcF+k2laOtlOssTBl3bJArjjoVNdvdf8FgP2d9clZj4g161ZyWO/S/Xn+9Xo088jye//wCkmH9kVuf3IkPgr9h3wh+zjoiS+C38SaLZW+owXFlBHqkkgj1J2ESTRseY5JSQrryrDBKjGa8K/aD0L4hfDD9r2/1Pxf4l8V/D3xBJF9kuNc1XU4Lu1hjCNttz5bLvR8kc/KWAzX0p4a/4Ksfs4sbdLnxjcSRC7trwrNpsi7ZIX8xT8v0ryj/goL+198D/ANti5vN3irwxeW96IkaHUYLmIFQSfmKx5znpXFiM0hNwlA68PgpwU4zgfml+0l8GPhn4Bu7y50Dx7qXijXftfn3WILeKznSRt0hjKNkyAk4U8Vd/Zu+D3wo8XfD2+8TeMtY8a6cmnai8BNhZebFGqkPHvwuMleW56g16VqH7Jvwf1eW48nxzoGmW1w2fJtrsssY/2RJCWz/wIV9n/sj/ABe/Z6/Zb+D8Pha0h0HX4bh1n1B5LuGSPVJ1xh5oZ4ypdR0ZWBFd9HMcPKfJOXKctXBYiMPcied+Cv2vPhV8RPE1homj/bLjUJVVYTJozwIwUABi7BRxivPv26/2h/Hn7KvxF0HUvD2pXx8J+I0P9oQSwQXeny3K/KRCsgYxS7MMf4WAz2NfbOrf8FLf2dNNsC9/4JtZ/KJwLXTbG6IHrhWP8q8r/aB/4KG/AH9pLwkPCL/Cq/8AEGlXIMm3UrdNPtrYpyGUx/Mjc8EV6UJ0378Kp5XsK8X79I/PLXfjjqPiuebV7DXru3lnn/0iGC4aCMOejxR5GzcOSuBjOMCtTwX4h8ReIdStbaLXNYmmuXVI4ReO7ysx2qBR+0B+zfoevWcf/Ct9Hi0Qy3B32t1rsl4RF6h5VXb69f4af+xNr+u/s0/tJ6O2u+GzrGt2FrPJ4ftHuo/KurxUwkm/7rGPJYKOSQtYupCU+XnOpQnyfAfcA/Y98afD7w1pNrc24vLyW3+a2W7828yV3MWQ/NwfStL9lYR6R8XkuLtdrWNleShJBtJdY2UqT/Cc/lWBov7UV94h0q+tvtupDx7q0Qm1yW9sJrSSwhZiotIUkUccdVOPQ1vfstWiS/GjTrdjvE0M8PzvhuY2PB70U4U44qHKcuJ9pKhNSPC/2lNTudS8b6zrOpoyby5jITYgQKcBD/EQOp715n+zlqOn+P8Awbc/2dfxam0MayTLG26WMs2TlOw969C/4KR2r+GNO8VOpkjJgdIvMk3EA9cV+dfgzxdq3w+1qDU9Ev7rTtQtyCk0TbCV7j/aB7ivdxeJ9lLlPOwWF9rDmP0S0/QJbC2EY2Oo+6c547UV4L4P/wCCidpBoEKeIPDtzPqaDbJLYzbYpPRtrdCe46UVKxVG3xGv1Wr/ACn0nb/uo63PhBoz+JPjb4Qs0+dZNVhZ/wDcT5//AGWsPyf3deh/sb6V/av7Smkt/BY29xe/+Obf/Zq+ZgezM+6prpwv41h6pd+XH9+rl5dPs/4BXPXd15sj/PXVI5YQK13L+7evgn9ra/8A+Ej/AG7fBdn99dLsJrx/+Bbq+6NXufLs3avz/wDHOqf8JJ+354hmb/mC6NHD/wB97a8jM58uGmeplkP9pgekSz+bNEv41buh+/tvc76xIb7zb9Av/LOtFLvzrwf7lfms5n6DqW45c39t/sb5PyCrWqkv76D/AHaxLSX/AImo/wCmdru/76cj+lWvtX+kL/uVGovZmX4wuf8AiZD/AGOal/Zvvtv7RNof+eFpI1Z/iCTz712/6Z1mfAzxNbaP8cNTlmubW3a204AeZMqV9BkP+8wPIzr3MKJ+27q02oftK6Hdg+XBaaYCZ2ddkWxj/e+teX/tJfts+FNR8LjwxozXjTXUfl31xKcIT2VD/Fk10f7Y/wAR7UW897brpt3cR25ijnlKuI8/+O/nXw7cxL4ustQgNjLd6ldSK0F6u4RW4TcTsT/a6fhX3WDw3snUkvtSPicTW9rGC/lOk+DkUevfH3T45JZJl01GmC7GjKOpAG9e45rtLn4Xq2pXcxu2y08jEBPVjXnXwT02zh/ao0CwstQn1GK1t8yz4aNWlERLIV9m4/CvdtTlGgPF9v8A9He53PEJOkgzyK8XOpWrWPqMjjD6uzkH+Gvlj5L/AP8AHKqXPw6b+G8/8cr1Lwl8MfEfxE0pr7w/4Z1vXLMTGAz6fZtNEZQMkFl6cVPdfs/+Plj/AHngLxemeeNHnP8A7LXl+0nsevNwPG7j4e3OP+PyH/viqV14CvInH76GvVda+FXijS2hju/CviS0a5kMMPn6bOhkfG4hPl64Fc/qeg3lhdFLmw1G2lUZeKeB0KD3roU7nNdHn83gK8/vQVVk8BX/AP0x/wC+67sXls6kGeNscY8zpQ7R7f8AWDB6c1rqZXPPn8KXkI+5Hx/t1Wn8OXe8fuU+u+vRZrdGXk578VXns4cfN0+pp8xE4nnx8NXOf9Sn502TQLsD/U13Uq26/wDLQD/gVV2SBz8rpWntUZWOKbQ7ph/qpPwNQR6fcWUuGeVM+9d5/ZaH7rVi61a+Xq0i/wCyP5UQrD5Gc14xLweFlnE86OkwUFJOvytXNafqupadq1pe29/eQ31lMJ7e5Wdt9s6nhkbsa7bxtZ/8UZIv924jP6NXDr9816+E9+J5GO+I9xX/AIKL/Fi5ltJ9Z8T6xr0lvGVZr65zvGe4C4b8a9l/Z1/4KEav8RfjV4a0NfDn2W+1Of7MbmyuAhXKkbmXaWB46oQPWvi1ugr2H9g3XdO8L/tQ6NfaipMcNtcmNl/5ZyeUcH/vndW9RcsOc56HvOMJntH7SHjtDqHiG38cz6tc6VqMUtqs8ZWeSylYYjlB7gYGfrXxTDBsZgTuAJAO3Gfw7V9gftj+NtM8a3Lx2rLOl0jHeOuR618jlPLO304rHC1J1HzzmdmYYenRlywgNEXHeipBnHaius8s/Sv/AJdq9i/YEsfO+JfiTUm+5ZafFbJ/wOXd/wCy1468m635r6D/AGDbRY/CPiK7/judRjQ+22Jf/iqwofGFT4D3/VNUSOsRLvzZas3MfmvtryH9pT9oiT4I3UOk6TZCTWbuLcl5Md0dunqF7t9arE1o0oe2kY8/Idr8RvG2leB7Py9QnDXtwm6Cxif9/Kv97H8K/wC1XwDceJLCD9qT4i6nd3dlYGZLSPa821NxG75d1dj4d+IFzN4p1LWtSkuNV1TUYAomnfvu/i9vl7Vm+I/2W/DHxCubu713T4dQu7+cTTyGRl3uBsB/75r8/WcVczxM6S92mfQ5JQU4fWftGppHi3Trq+fytR09/wDdukroY9TimnbbNC/+4wrztf8Agnn8NZju/siZP+ud061G/wDwTt+G4+5Frtv/ANc9SeqeT0pfaPe+tVf5T0u1vSdXvG5/dRwr0Hpn/wBmq6JWMrPg/wDfIrye/wD+CbXgpArxan4thLsPu6s3/wATVOf/AIJzeHWjLW/inxrCB/D/AGm1P+xIfzM1+uv+U9D1a8Ymd9rf6s/wV8jfHW7nvPi5r0yxGSKEJEW2/wB1c161rv7AVrpyKIPHHjNN3yf8f7cZql44+BkGkaYI1vp3YgIZW/1hxxnNdtDL40tVI8nNMP8A2hQ9i/dPN/EkWnWnww0e1unuBNHbJc2llH/y9B8kyzP/AAqP7tOtdNj8D6Dp+stMLzX7l1vY41/dizjIzvChSr7umN34DrXkni/403GneILa/wBItm0+WH/Q7yJ7l54NSGdpV0bhUIHKr61b1f4r3mgeFprjSwEtdT0sNGk43yWG6UhxEey8nA7DFfcYf3afunxvsLe4Q/s0a1L4m/auh1C4SNGaG8bEMflqhWJzkrXuPhT4h+H59MzrI0uKXcPshumXdNF/z0/FsivBv2Ob54PjzLcwKjT2+kX0yebyC3l4BP516tHo7aJbQLd29ncfKCcc8tyeq+9eVPCwqY11Z9j24z5MLGB9U/sa/HfTtOn1vRYgNIs7G4+1RTwO2JnbGRsXpx3r6v0D4zWM9rui12447GWVa/Or9lHxbb6L8VbyX7K2JrZokCPgJtxzt6V9KL8cpoCVSBvfpXwOe8P+3xsqtCtKJ6+X1YTpe/E7v48/F6K8+IPgOP8A4SC5MVte3l+5+1S/IyW2B+pr5I/aQ8fNqvxG8QXB1uecf2bZ24k+1M27DMa9M+LPxCluHstT8v8Af20bxr/uy8N/IV4Rrl6fE3iLVbi4w3mGNcY/2TWmByavTh/vEv6YqroqfuxPin4r6adJ8a3bQys8Ny5uI2BPc8/rms+88X3t94ZsNL82byrGSQxjfjh+v8q+mvi/8I9O8d+FZgiJa3duhngnA5yMllb2OK+TGOT/AIV+iYOXNT988HERcZnpH7OHiW48P+OZ7pbuSPy7Zur+uK+0/g/+1UlpcrZXGqWe5AB+9tInxn/eWvlr9kHwLZeJtJ1q6uV3yRTRQp7DaWNe4QfCyw0uVJ7VUhliQvgL8r/WvIzGhOpXkqcuU78HCLh759UaL8aNIuLmF7i48LzpMnkyedptr16j+GvJ/wBq39oufT31LRtJ8PeF30+fTyZdUg0m3d4/NQqCAF3JsPO4etSfDDSrPxBpFv5kC7XYbzjkEelZf7RWk2nhXxvokUCPt1XT5Ff/ALZyAj+ZrzqGGxFGfPUq8x308BSxE/Y0/dPmfwnJqMHh6z+33LPIkZSSRH8yOTBwMHsa2lRZ3LSZ3AdzUPxL05dI+J19qNk32e3NpYXk9mB+6nErNDIp+rANV6zsl1KO6MIETWn3l/hY98e1erXo3XPE5VU9lU9nIpazoX9t6FJbRuInd42TP3HOehrF8IeE/D0nir7D4um1DSo+hutPTeqE9Nynkj6V6L8N5BNrcsbIjq8L5DdBhK2dG0i1m+O3i+KeCN4P7NjkRNv3GyvNc9OtOESZYdTre8cB4o+AWj294Bo/id7y0HzLJPp7IJPTo2ay4Ph7quheJor3TltvMt3QxMjEKxxySDz+ddPN8ZdJ0DW760udJmmMLIsbpIBt4wa6HwR40tfE1yFOlxxxSKHh/fMTtDHO/wB/TFZfX8Vy6HofVcujPVyOZ8WprfjGytw9pBHdAsXMT/K+epNeeeL/AIb6l4V01L26gAtlOJGD7gCenFfR2mwaXflyLacNxkl+tedfF/xK97rmuaLGiJpyxJH5bLuJzGGJz25rChmVdV1BL3S8VhMHOEp88uax4l+vv60Uc9+tFfXLY+SP/9k=\" /></figure></div>', '2023-04-25', '2023-04-25', 0, NULL, 1, '2023-04-25 09:51:06', NULL, 'new');

-- --------------------------------------------------------

--
-- Table structure for table `own_report_tasks_category`
--

CREATE TABLE `own_report_tasks_category` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dd` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `own_report_tasks_category`
--

INSERT INTO `own_report_tasks_category` (`id`, `name`, `dd`) VALUES
(1, 'Сургалтын тайлан 2', 10),
(4, 'Тайлан 3', 20),
(5, 'Тайлан 1', 0),
(6, 'Тайлан 4', 30),
(7, 'Сарын тайлан', 0);

-- --------------------------------------------------------

--
-- Table structure for table `plan_action`
--

CREATE TABLE `plan_action` (
  `id` int(11) NOT NULL,
  `city` int(11) NOT NULL DEFAULT '0',
  `district` int(11) NOT NULL DEFAULT '0',
  `kinders` int(11) NOT NULL DEFAULT '0',
  `employee_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date_from` date DEFAULT NULL,
  `date_until` date DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plan_action`
--

INSERT INTO `plan_action` (`id`, `city`, `district`, `kinders`, `employee_id`, `title`, `category`, `images`, `brief`, `description`, `date_from`, `date_until`, `created_date`, `updated_date`, `status`) VALUES
(1, 1, 4, 839, 6, 'Үйл ажиллагааны төлөвлөгөө', 1, NULL, 'Үйл ажиллагааны төлөвлөгөө', 'Үйл ажиллагааны төлөвлөгөө', '2023-04-04', '2023-04-04', '2023-04-04 03:34:13', '2023-04-04 03:41:25', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `plan_action_category`
--

CREATE TABLE `plan_action_category` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dd` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plan_action_category`
--

INSERT INTO `plan_action_category` (`id`, `name`, `dd`) VALUES
(1, 'Сургалтын төлөвлөгөө 2', 10),
(4, 'Ерөнхий ажлын төлөвлөгөө3', 20),
(5, 'Өдөр тутмын ажлын төлөвлөгөө', 0),
(6, 'Дүүргийн ЗД-н төлөвлөгөө', 30),
(7, 'Программын төлөвлөгөө', 50);

-- --------------------------------------------------------

--
-- Table structure for table `plan_buleg`
--

CREATE TABLE `plan_buleg` (
  `id` int(11) NOT NULL,
  `city` int(11) NOT NULL DEFAULT '0',
  `district` int(11) NOT NULL DEFAULT '0',
  `kinders` int(11) NOT NULL DEFAULT '0',
  `employee_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date_from` date DEFAULT NULL,
  `date_until` date DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plan_buleg_category`
--

CREATE TABLE `plan_buleg_category` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dd` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plan_buleg_category`
--

INSERT INTO `plan_buleg_category` (`id`, `name`, `dd`) VALUES
(1, 'Сургалтын төлөвлөгөө 2', 10),
(4, 'Ерөнхий ажлын төлөвлөгөө3', 20),
(5, 'Өдөр тутмын ажлын төлөвлөгөө', 0),
(6, 'Дүүргийн ЗД-н төлөвлөгөө', 30),
(7, 'Программын төлөвлөгөө', 50);

-- --------------------------------------------------------

--
-- Table structure for table `plan_current`
--

CREATE TABLE `plan_current` (
  `id` int(11) NOT NULL,
  `city` int(11) NOT NULL DEFAULT '0',
  `district` int(11) NOT NULL DEFAULT '0',
  `kinders` int(11) NOT NULL DEFAULT '0',
  `employee_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date_from` date DEFAULT NULL,
  `date_until` date DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plan_current_category`
--

CREATE TABLE `plan_current_category` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dd` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plan_current_category`
--

INSERT INTO `plan_current_category` (`id`, `name`, `dd`) VALUES
(1, 'Сургалтын төлөвлөгөө 2', 10),
(4, 'Ерөнхий ажлын төлөвлөгөө3', 20),
(5, 'Өдөр тутмын ажлын төлөвлөгөө', 0),
(6, 'Дүүргийн ЗД-н төлөвлөгөө', 30),
(7, 'Программын төлөвлөгөө', 50);

-- --------------------------------------------------------

--
-- Table structure for table `plan_development`
--

CREATE TABLE `plan_development` (
  `id` int(11) NOT NULL,
  `city` int(11) NOT NULL DEFAULT '0',
  `district` int(11) NOT NULL DEFAULT '0',
  `kinders` int(11) NOT NULL DEFAULT '0',
  `employee_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date_from` date DEFAULT NULL,
  `date_until` date DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plan_development_category`
--

CREATE TABLE `plan_development_category` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dd` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plan_development_category`
--

INSERT INTO `plan_development_category` (`id`, `name`, `dd`) VALUES
(1, 'Сургалтын төлөвлөгөө 2', 10),
(4, 'Ерөнхий ажлын төлөвлөгөө3', 20),
(5, 'Өдөр тутмын ажлын төлөвлөгөө', 0),
(6, 'Дүүргийн ЗД-н төлөвлөгөө', 30),
(7, 'Программын төлөвлөгөө', 50);

-- --------------------------------------------------------

--
-- Table structure for table `plan_general`
--

CREATE TABLE `plan_general` (
  `id` int(11) NOT NULL,
  `city` int(11) NOT NULL DEFAULT '0',
  `district` int(11) NOT NULL DEFAULT '0',
  `kinders` int(11) NOT NULL DEFAULT '0',
  `employee_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date_from` date DEFAULT NULL,
  `date_until` date DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plan_general`
--

INSERT INTO `plan_general` (`id`, `city`, `district`, `kinders`, `employee_id`, `title`, `category`, `images`, `brief`, `description`, `date_from`, `date_until`, `created_date`, `updated_date`, `status`) VALUES
(3, 1, 4, 839, 4, 'Ажлын төлөвлөгөө', 5, NULL, 'Ажлын төлөвлөгөө', 'Ажлын төлөвлөгөө', '2023-04-04', '2023-04-04', '2023-04-04 02:58:52', NULL, 'new'),
(4, 1, 4, 839, 6, 'Ерөнхий төлөвлөгөө', 6, NULL, 'Ерөнхий төлөвлөгөө', 'Ерөнхий төлөвлөгөө', '2023-04-04', '2023-04-04', '2023-04-04 03:09:16', '2023-04-04 03:09:26', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `plan_general_category`
--

CREATE TABLE `plan_general_category` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dd` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plan_general_category`
--

INSERT INTO `plan_general_category` (`id`, `name`, `dd`) VALUES
(1, 'Сургалтын төлөвлөгөө 2', 10),
(4, 'Ерөнхий ажлын төлөвлөгөө3', 20),
(5, 'Өдөр тутмын ажлын төлөвлөгөө', 0),
(6, 'Дүүргийн ЗД-н төлөвлөгөө', 30),
(7, 'Программын төлөвлөгөө', 50);

-- --------------------------------------------------------

--
-- Table structure for table `plan_organisation`
--

CREATE TABLE `plan_organisation` (
  `id` int(11) NOT NULL,
  `city` int(11) NOT NULL DEFAULT '0',
  `district` int(11) NOT NULL DEFAULT '0',
  `kinders` int(11) NOT NULL DEFAULT '0',
  `employee_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date_from` date DEFAULT NULL,
  `date_until` date DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plan_organisation`
--

INSERT INTO `plan_organisation` (`id`, `city`, `district`, `kinders`, `employee_id`, `title`, `category`, `images`, `brief`, `description`, `date_from`, `date_until`, `created_date`, `updated_date`, `status`) VALUES
(1, 1, 4, 839, 6, '4-р сарын төлөвлөгөө', 1, 'uploads/202304/1_0501067181b56f316ab2e65929b527d788feabb9114f080e3.jpeg', '4-р сарын төлөвлөгөө', '4-р сарын төлөвлөгөө', '2023-04-03', '2023-04-03', '2023-04-03 15:01:06', '2023-04-03 15:01:06', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `plan_organisation_category`
--

CREATE TABLE `plan_organisation_category` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dd` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plan_organisation_category`
--

INSERT INTO `plan_organisation_category` (`id`, `name`, `dd`) VALUES
(1, 'Сургалтын төлөвлөгөө 2', 10),
(4, 'Ерөнхий ажлын төлөвлөгөө3', 20),
(5, 'Өдөр тутмын ажлын төлөвлөгөө', 0),
(6, 'Дүүргийн ЗД-н төлөвлөгөө', 30),
(7, 'Программын төлөвлөгөө', 50);

-- --------------------------------------------------------

--
-- Table structure for table `plan_other`
--

CREATE TABLE `plan_other` (
  `id` int(11) NOT NULL,
  `city` int(11) NOT NULL DEFAULT '0',
  `district` int(11) NOT NULL DEFAULT '0',
  `kinders` int(11) NOT NULL DEFAULT '0',
  `employee_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date_from` date DEFAULT NULL,
  `date_until` date DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plan_other`
--

INSERT INTO `plan_other` (`id`, `city`, `district`, `kinders`, `employee_id`, `title`, `category`, `images`, `brief`, `description`, `date_from`, `date_until`, `created_date`, `updated_date`, `status`) VALUES
(3, 1, 4, 839, 4, 'Ажлын төлөвлөгөө', 5, NULL, 'Ажлын төлөвлөгөө', 'Ажлын төлөвлөгөө', '2023-04-04', '2023-04-04', '2023-04-04 02:58:52', NULL, 'new'),
(4, 1, 4, 839, 6, 'Ерөнхий төлөвлөгөө', 6, NULL, 'Ерөнхий төлөвлөгөө', 'Ерөнхий төлөвлөгөө', '2023-04-04', '2023-04-04', '2023-04-04 03:09:16', '2023-04-04 03:09:26', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `plan_other_category`
--

CREATE TABLE `plan_other_category` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dd` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plan_other_category`
--

INSERT INTO `plan_other_category` (`id`, `name`, `dd`) VALUES
(1, 'Сургалтын төлөвлөгөө 2', 10),
(4, 'Ерөнхий ажлын төлөвлөгөө3', 20),
(5, 'Өдөр тутмын ажлын төлөвлөгөө', 0),
(6, 'Дүүргийн ЗД-н төлөвлөгөө', 30),
(7, 'Программын төлөвлөгөө', 50);

-- --------------------------------------------------------

--
-- Table structure for table `plan_study`
--

CREATE TABLE `plan_study` (
  `id` int(11) NOT NULL,
  `city` int(11) NOT NULL DEFAULT '0',
  `district` int(11) NOT NULL DEFAULT '0',
  `kinders` int(11) NOT NULL DEFAULT '0',
  `employee_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date_from` date DEFAULT NULL,
  `date_until` date DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plan_study`
--

INSERT INTO `plan_study` (`id`, `city`, `district`, `kinders`, `employee_id`, `title`, `category`, `images`, `brief`, `description`, `date_from`, `date_until`, `created_date`, `updated_date`, `status`) VALUES
(2, 1, 4, 839, 5, 'Сургалтын төлөвлөгөө', 1, NULL, 'Сургалтын төлөвлөгөө оруулах', 'Сургалтын төлөвлөгөө оруулах', '2023-04-04', '2023-04-04', '2023-04-04 02:48:58', NULL, 'new');

-- --------------------------------------------------------

--
-- Table structure for table `plan_study_category`
--

CREATE TABLE `plan_study_category` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dd` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plan_study_category`
--

INSERT INTO `plan_study_category` (`id`, `name`, `dd`) VALUES
(1, 'Сургалтын төлөвлөгөө 2', 10),
(4, 'Ерөнхий ажлын төлөвлөгөө3', 20),
(5, 'Өдөр тутмын ажлын төлөвлөгөө', 0),
(6, 'Дүүргийн ЗД-н төлөвлөгөө', 30),
(7, 'Программын төлөвлөгөө', 50);

-- --------------------------------------------------------

--
-- Table structure for table `plan_teacherpromo`
--

CREATE TABLE `plan_teacherpromo` (
  `id` int(11) NOT NULL,
  `city` int(11) NOT NULL DEFAULT '0',
  `district` int(11) NOT NULL DEFAULT '0',
  `kinders` int(11) NOT NULL DEFAULT '0',
  `employee_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date_from` date DEFAULT NULL,
  `date_until` date DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plan_teacherpromo`
--

INSERT INTO `plan_teacherpromo` (`id`, `city`, `district`, `kinders`, `employee_id`, `title`, `category`, `images`, `brief`, `description`, `date_from`, `date_until`, `created_date`, `updated_date`, `status`) VALUES
(3, 1, 4, 839, 4, 'Ажлын төлөвлөгөө', 5, NULL, 'Ажлын төлөвлөгөө', 'Ажлын төлөвлөгөө', '2023-04-04', '2023-04-04', '2023-04-04 02:58:52', NULL, 'new');

-- --------------------------------------------------------

--
-- Table structure for table `plan_teacherpromo_category`
--

CREATE TABLE `plan_teacherpromo_category` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dd` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plan_teacherpromo_category`
--

INSERT INTO `plan_teacherpromo_category` (`id`, `name`, `dd`) VALUES
(1, 'Сургалтын төлөвлөгөө 2', 10),
(4, 'Ерөнхий ажлын төлөвлөгөө3', 20),
(5, 'Өдөр тутмын ажлын төлөвлөгөө', 0),
(6, 'Дүүргийн ЗД-н төлөвлөгөө', 30),
(7, 'Программын төлөвлөгөө', 50);

-- --------------------------------------------------------

--
-- Table structure for table `plan_work`
--

CREATE TABLE `plan_work` (
  `id` int(11) NOT NULL,
  `city` int(11) NOT NULL DEFAULT '0',
  `district` int(11) NOT NULL DEFAULT '0',
  `kinders` int(11) NOT NULL DEFAULT '0',
  `employee_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date_from` date DEFAULT NULL,
  `date_until` date DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plan_work`
--

INSERT INTO `plan_work` (`id`, `city`, `district`, `kinders`, `employee_id`, `title`, `category`, `images`, `brief`, `description`, `date_from`, `date_until`, `created_date`, `updated_date`, `status`) VALUES
(3, 1, 4, 839, 4, 'Ажлын төлөвлөгөө', 5, NULL, 'Ажлын төлөвлөгөө', 'Ажлын төлөвлөгөө', '2023-04-04', '2023-04-04', '2023-04-04 02:58:52', NULL, 'new');

-- --------------------------------------------------------

--
-- Table structure for table `plan_work_category`
--

CREATE TABLE `plan_work_category` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dd` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plan_work_category`
--

INSERT INTO `plan_work_category` (`id`, `name`, `dd`) VALUES
(1, 'Сургалтын төлөвлөгөө 2', 10),
(4, 'Ерөнхий ажлын төлөвлөгөө3', 20),
(5, 'Өдөр тутмын ажлын төлөвлөгөө', 0),
(6, 'Дүүргийн ЗД-н төлөвлөгөө', 30),
(7, 'Программын төлөвлөгөө', 50);

-- --------------------------------------------------------

--
-- Table structure for table `plan_zan`
--

CREATE TABLE `plan_zan` (
  `id` int(11) NOT NULL,
  `city` int(11) NOT NULL DEFAULT '0',
  `district` int(11) NOT NULL DEFAULT '0',
  `kinders` int(11) NOT NULL DEFAULT '0',
  `employee_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date_from` date DEFAULT NULL,
  `date_until` date DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plan_zan_category`
--

CREATE TABLE `plan_zan_category` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dd` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plan_zan_category`
--

INSERT INTO `plan_zan_category` (`id`, `name`, `dd`) VALUES
(1, 'Сургалтын төлөвлөгөө 2', 10),
(4, 'Ерөнхий ажлын төлөвлөгөө3', 20),
(5, 'Өдөр тутмын ажлын төлөвлөгөө', 0),
(6, 'Дүүргийн ЗД-н төлөвлөгөө', 30),
(7, 'Программын төлөвлөгөө', 50);

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `dd` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `name`, `dd`) VALUES
(2, 'Эмч', 10),
(3, 'Туслах багш', 4),
(4, 'Бүлгийн багш', 3),
(5, 'Ахлах тогооч', 53),
(6, 'Тогооч', 5),
(7, 'Эрхлэгч', 1),
(9, 'Дуу хөгжмийн багш', 10),
(12, 'Төгөлдөр хуур багш', 10),
(15, 'Яслийн багш', 34),
(20, 'Ресепшн', 10),
(21, 'Нягтлан', 5),
(26, 'Санхүү аж ахуйн менежер', 20),
(37, 'Манаач', 300),
(38, 'Жолооч', 39),
(44, 'Соробаны багш', 10),
(48, 'Хүний нөөцийн менежер', 5),
(54, 'Англи хэлний багш', 5),
(61, 'Аргазүйч', 2),
(62, 'Үйлчлэгч', 10);

-- --------------------------------------------------------

--
-- Table structure for table `regime`
--

CREATE TABLE `regime` (
  `id` int(10) NOT NULL,
  `stime` varchar(5) NOT NULL,
  `etime` varchar(5) NOT NULL,
  `buleg` int(10) NOT NULL,
  `activity` varchar(256) NOT NULL,
  `work` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `regime`
--

INSERT INTO `regime` (`id`, `stime`, `etime`, `buleg`, `activity`, `work`) VALUES
(4, '08.00', '08.50', 3, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing\r\n'),
(5, '08.00', '08.50', 3, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing\r\n'),
(6, '08.00', '08.20', 4, 'Цайны цаг', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. \r\n'),
(11, '08.00', '08.50', 7, 'дуу хөгжим', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '),
(12, '10.00', '10.30', 7, 'Суралцах', '<p>*<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: var(--bs-card-bg); font-weight: var(--bs-body-font-weight);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: var(--bs-card-bg); font-weight: var(--bs-body-font-weight);\">&nbsp;</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: var(--bs-card-bg); font-weight: var(--bs-body-font-weight);\">*</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: var(--bs-card-bg); font-weight: var(--bs-body-font-weight);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: var(--bs-card-bg); font-weight: var(--bs-body-font-weight);\">*</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: var(--bs-card-bg); font-weight: var(--bs-body-font-weight);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: var(--bs-card-bg); font-weight: var(--bs-body-font-weight);\">&nbsp;</span></p>'),
(13, '08.00', '10.30', 2, 'Cannot modify', '<p><span style=\"background-color: rgb(248, 247, 250);\">Cannot modify header information</span></p><p><span style=\"background-color: rgb(248, 247, 250);\">Cannot modify header information</span></p><p><span style=\"background-color: rgb(248, 247, 250);\">Cannot modify header information</span><span style=\"background-color: rgb(248, 247, 250);\"><br></span><span style=\"background-color: rgb(248, 247, 250);\"><br></span><br></p>'),
(14, '10.00', '10.30', 1, ' information', '<p><span style=\"background-color: rgb(248, 247, 250);\">Cannot&nbsp;</span></p><p><span style=\"background-color: rgb(248, 247, 250);\">Cannot modify header information</span><span style=\"background-color: rgb(248, 247, 250);\"><br></span><br></p>'),
(15, '10.00', '10.30', 4, 'Cannot', '<p><span style=\"background-color: rgb(248, 247, 250);\">Cannot modify header</span></p><p><span style=\"background-color: rgb(248, 247, 250);\">information</span><span style=\"background-color: rgb(248, 247, 250);\"><br></span><br></p>'),
(16, '08.00', '10.30', 3, 'Hureelen', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">consectetur adipiscing elit.&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span></p>'),
(17, '10.00', '10.30', 5, 'adipiscing elit. ', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">consectetur adipiscing elit.&nbsp;</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">radipiscing elit.&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><br></p>'),
(18, '11.00', '11.30', 1, 'bujig', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">adipiscing elit.&nbsp;</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">consectetur adipiscing.</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: var(--bs-card-bg); font-weight: var(--bs-body-font-weight);\">&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: var(--bs-card-bg); font-weight: var(--bs-body-font-weight);\">elit</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><br></p>'),
(19, '11.00', '11.30', 6, 'duu ', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;elit</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;elit</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;elit</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;elit</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;elit</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;elit</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;elit</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;elit</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;elit</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><br></p>'),
(20, '08.00', '08.30', 9, 'duu hogjim', '<p>duulah</p><p>bujugleh</p><p>togloh</p>');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date_from` date DEFAULT NULL,
  `date_until` date DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `member_id`, `title`, `images`, `description`, `date_from`, `date_until`, `created_date`, `updated_date`, `status`) VALUES
(1, 3, 'Тайлан хэсгийг оруулав', '', '<p>Тайлан хэсгийг оруулав<br></p>', '2023-03-19', '2023-03-19', '2023-03-19 15:52:14', '2023-03-19 23:00:54', 'new'),
(5, 3, 'Цагаан сарын бэлтгэл', 'uploads/202303/5_120620616033045629arisanturuuvch.jpg', '<p>Цагаан сарын бэлтгэл<br></p>', '2023-02-21', '2023-02-28', '2023-03-19 23:06:20', '2023-03-19 23:06:20', 'new'),
(6, 3, 'Хурал зохион байгуулав', NULL, '<p>Хурал зохион байгуулав<br></p>', '2023-03-20', '2023-03-20', '2023-03-20 02:21:09', NULL, 'new'),
(7, 9, '2023 оны 2-р сарын илтгэх хуудас', NULL, '<p class=\"MsoNormal\">1<span lang=\"MN\">.Дөрвөн долоо\r\nхоногийн 20 удаагийн сургалт,үйл ажиллагааны төлөвлөгөө 4 тус бүр батлуулж арга\r\nзүйн зөвлөгөөг авч ажиллав.</span><o:p></o:p></p><p class=\"MsoNormal\"><!--[if gte vml 1]><v:shapetype id=\"_x0000_t75\" coordsize=\"21600,21600\"\r\n o:spt=\"75\" o:preferrelative=\"t\" path=\"m@4@5l@4@11@9@11@9@5xe\" filled=\"f\"\r\n stroked=\"f\">\r\n <v:stroke joinstyle=\"miter\"/>\r\n <v:formulas>\r\n  <v:f eqn=\"if lineDrawn pixelLineWidth 0\"/>\r\n  <v:f eqn=\"sum @0 1 0\"/>\r\n  <v:f eqn=\"sum 0 0 @1\"/>\r\n  <v:f eqn=\"prod @2 1 2\"/>\r\n  <v:f eqn=\"prod @3 21600 pixelWidth\"/>\r\n  <v:f eqn=\"prod @3 21600 pixelHeight\"/>\r\n  <v:f eqn=\"sum @0 0 1\"/>\r\n  <v:f eqn=\"prod @6 1 2\"/>\r\n  <v:f eqn=\"prod @7 21600 pixelWidth\"/>\r\n  <v:f eqn=\"sum @8 21600 0\"/>\r\n  <v:f eqn=\"prod @7 21600 pixelHeight\"/>\r\n  <v:f eqn=\"sum @10 21600 0\"/>\r\n </v:formulas>\r\n <v:path o:extrusionok=\"f\" gradientshapeok=\"t\" o:connecttype=\"rect\"/>\r\n <o:lock v:ext=\"edit\" aspectratio=\"t\"/>\r\n</v:shapetype><v:shape id=\"Picture_x0020_21\" o:spid=\"_x0000_s1027\" type=\"#_x0000_t75\"\r\n style=\'position:absolute;margin-left:227.55pt;margin-top:1.35pt;width:206.4pt;\r\n height:154.2pt;z-index:-251533312;visibility:visible;mso-wrap-style:square;\r\n mso-width-percent:0;mso-height-percent:0;mso-wrap-distance-left:9pt;\r\n mso-wrap-distance-top:0;mso-wrap-distance-right:9pt;\r\n mso-wrap-distance-bottom:0;mso-position-horizontal:absolute;\r\n mso-position-horizontal-relative:text;mso-position-vertical:absolute;\r\n mso-position-vertical-relative:text;mso-width-percent:0;mso-height-percent:0;\r\n mso-width-relative:page;mso-height-relative:page\'>\r\n <v:imagedata src=\"file:///C:/Users/HP/AppData/Local/Temp/msohtmlclip1/01/clip_image001.jpg\"\r\n  o:title=\"\"/>\r\n <w:wrap type=\"tight\"/>\r\n</v:shape><![endif]--><!--[if !vml]--><img width=\"275\" height=\"206\" src=\"file:///C:/Users/HP/AppData/Local/Temp/msohtmlclip1/01/clip_image001.jpg\" align=\"left\" hspace=\"12\" v:shapes=\"Picture_x0020_21\"><!--[endif]--><!--[if gte vml 1]><v:shape\r\n id=\"Picture_x0020_36\" o:spid=\"_x0000_s1026\" type=\"#_x0000_t75\" style=\'position:absolute;\r\n margin-left:12.75pt;margin-top:.75pt;width:206.4pt;height:154.2pt;z-index:-251532288;\r\n visibility:visible;mso-wrap-style:square;mso-width-percent:0;\r\n mso-height-percent:0;mso-wrap-distance-left:9pt;mso-wrap-distance-top:0;\r\n mso-wrap-distance-right:9pt;mso-wrap-distance-bottom:0;\r\n mso-position-horizontal:absolute;mso-position-horizontal-relative:text;\r\n mso-position-vertical:absolute;mso-position-vertical-relative:text;\r\n mso-width-percent:0;mso-height-percent:0;mso-width-relative:page;\r\n mso-height-relative:page\'>\r\n <v:imagedata src=\"file:///C:/Users/HP/AppData/Local/Temp/msohtmlclip1/01/clip_image002.jpg\"\r\n  o:title=\"\"/>\r\n <w:wrap type=\"tight\"/>\r\n</v:shape><![endif]--><!--[if !vml]--><img width=\"275\" height=\"206\" src=\"file:///C:/Users/HP/AppData/Local/Temp/msohtmlclip1/01/clip_image002.jpg\" align=\"left\" hspace=\"12\" v:shapes=\"Picture_x0020_36\"><!--[endif]--><o:p></o:p></p><p class=\"MsoNormal\"><span lang=\"MN\">&nbsp;</span></p><p class=\"MsoNormal\"><span lang=\"MN\">&nbsp;</span></p><p class=\"MsoNormal\"><span lang=\"MN\">&nbsp;</span></p><p class=\"MsoNormal\"><span lang=\"MN\">&nbsp;</span></p><p class=\"MsoNormal\"><span lang=\"MN\">&nbsp;</span></p><p class=\"MsoNormal\"><span lang=\"MN\">&nbsp;</span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\"><span lang=\"MN\">&nbsp;</span></p>', '2023-02-01', '2023-02-28', '2023-03-23 03:53:35', NULL, 'new');

-- --------------------------------------------------------

--
-- Table structure for table `report_current`
--

CREATE TABLE `report_current` (
  `id` int(11) NOT NULL,
  `city` int(11) NOT NULL DEFAULT '0',
  `district` int(11) NOT NULL DEFAULT '0',
  `kinders` int(11) NOT NULL DEFAULT '0',
  `employee_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date_from` date DEFAULT NULL,
  `date_until` date DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_current_category`
--

CREATE TABLE `report_current_category` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dd` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `report_current_category`
--

INSERT INTO `report_current_category` (`id`, `name`, `dd`) VALUES
(1, 'Сургалтын тайлан 2', 10),
(4, 'Тайлан 3', 20),
(5, 'Тайлан 1', 0),
(6, 'Тайлан 4', 30);

-- --------------------------------------------------------

--
-- Table structure for table `report_general`
--

CREATE TABLE `report_general` (
  `id` int(11) NOT NULL,
  `city` int(11) NOT NULL DEFAULT '0',
  `district` int(11) NOT NULL DEFAULT '0',
  `kinders` int(11) NOT NULL DEFAULT '0',
  `employee_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date_from` date DEFAULT NULL,
  `date_until` date DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `report_general`
--

INSERT INTO `report_general` (`id`, `city`, `district`, `kinders`, `employee_id`, `title`, `category`, `images`, `brief`, `description`, `date_from`, `date_until`, `created_date`, `updated_date`, `status`) VALUES
(9, 1, 4, 906, 3, 'Сургалтын тайлан', 1, 'uploads/202303/9_100133691b56f316ab2e65929b527d788feabb9114f080e3.jpeg', 'Сургалтын тайлан', '<p>Сургалтын тайлан<br></p>', '2023-03-29', '2023-03-29', '2023-03-29 08:01:33', '2023-03-29 08:01:33', 'new'),
(10, 1, 4, 906, 3, 'Ерөнхий тайлан', 1, 'uploads/202303/10_1019421201b56f316ab2e65929b527d788feabb9114f080e3.jpeg', 'Ерөнхий тайлан', '<h4 class=\"fw-bold\" style=\"background-color: rgb(248, 247, 250);\">Ерөнхий тайлан</h4>', '2023-03-29', '2023-03-29', '2023-03-29 08:19:42', '2023-03-29 08:19:42', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `report_general_category`
--

CREATE TABLE `report_general_category` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dd` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `report_general_category`
--

INSERT INTO `report_general_category` (`id`, `name`, `dd`) VALUES
(1, 'Сургалтын тайлан 2', 10),
(4, 'Тайлан 3', 20),
(5, 'Тайлан 1', 0),
(6, 'Тайлан 4', 30);

-- --------------------------------------------------------

--
-- Table structure for table `report_other`
--

CREATE TABLE `report_other` (
  `id` int(11) NOT NULL,
  `city` int(11) NOT NULL DEFAULT '0',
  `district` int(11) NOT NULL DEFAULT '0',
  `kinders` int(11) NOT NULL DEFAULT '0',
  `employee_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date_from` date DEFAULT NULL,
  `date_until` date DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `report_other`
--

INSERT INTO `report_other` (`id`, `city`, `district`, `kinders`, `employee_id`, `title`, `category`, `images`, `brief`, `description`, `date_from`, `date_until`, `created_date`, `updated_date`, `status`) VALUES
(9, 1, 4, 906, 3, 'Сургалтын тайлан', 1, 'uploads/202303/9_100133691b56f316ab2e65929b527d788feabb9114f080e3.jpeg', 'Сургалтын тайлан', '<p>Сургалтын тайлан<br></p>', '2023-03-29', '2023-03-29', '2023-03-29 08:01:33', '2023-03-29 08:01:33', 'new'),
(10, 1, 4, 906, 3, 'Бусад тайлан', 1, 'uploads/202303/10_1025272071b56f316ab2e65929b527d788feabb9114f080e3.jpeg', 'Бусад тайлан', '<p>Бусад тайлан<br></p>', '2023-03-29', '2023-03-29', '2023-03-29 08:25:27', '2023-03-29 08:25:27', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `report_other_category`
--

CREATE TABLE `report_other_category` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dd` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `report_other_category`
--

INSERT INTO `report_other_category` (`id`, `name`, `dd`) VALUES
(1, 'Сургалтын тайлан 2', 10),
(4, 'Тайлан 3', 20),
(5, 'Тайлан 1', 0),
(6, 'Тайлан 4', 30);

-- --------------------------------------------------------

--
-- Table structure for table `report_study`
--

CREATE TABLE `report_study` (
  `id` int(11) NOT NULL,
  `city` int(11) NOT NULL DEFAULT '0',
  `district` int(11) NOT NULL DEFAULT '0',
  `kinders` int(11) NOT NULL DEFAULT '0',
  `employee_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date_from` date DEFAULT NULL,
  `date_until` date DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `report_study`
--

INSERT INTO `report_study` (`id`, `city`, `district`, `kinders`, `employee_id`, `title`, `category`, `images`, `brief`, `description`, `date_from`, `date_until`, `created_date`, `updated_date`, `status`) VALUES
(9, 1, 4, 906, 3, 'Сургалтын тайлан', 1, 'uploads/202303/9_100133691b56f316ab2e65929b527d788feabb9114f080e3.jpeg', 'Сургалтын тайлан', '<p>Сургалтын тайлан<br></p>', '2023-03-29', '2023-03-29', '2023-03-29 08:01:33', '2023-03-29 08:01:33', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `report_study_category`
--

CREATE TABLE `report_study_category` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dd` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `report_study_category`
--

INSERT INTO `report_study_category` (`id`, `name`, `dd`) VALUES
(1, 'Сургалтын тайлан 2', 10),
(4, 'Тайлан 3', 20),
(5, 'Тайлан 1', 0),
(6, 'Тайлан 4', 30);

-- --------------------------------------------------------

--
-- Table structure for table `report_teacher`
--

CREATE TABLE `report_teacher` (
  `id` int(11) NOT NULL,
  `city` int(11) NOT NULL DEFAULT '0',
  `district` int(11) NOT NULL DEFAULT '0',
  `kinders` int(11) NOT NULL DEFAULT '0',
  `employee_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date_from` date DEFAULT NULL,
  `date_until` date DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `report_teacher`
--

INSERT INTO `report_teacher` (`id`, `city`, `district`, `kinders`, `employee_id`, `title`, `category`, `images`, `brief`, `description`, `date_from`, `date_until`, `created_date`, `updated_date`, `status`) VALUES
(1, 1, 4, 839, 6, 'Өдөр тутмын ажлын тайлан', 4, 'uploads/202303/1_0733206862.jpeg,uploads/202303/1_125054704001.jpg', 'Өдөр тутмын ажлын тайлан', '<p>Ингэлээ, тэглээ<br></p>', '2023-03-29', '2023-03-29', '2023-03-29 04:45:39', '2023-03-30 00:50:54', 'new'),
(2, 1, 4, 906, 3, 'Өдөр тутмын ажлын тайлан', 4, NULL, 'Өдөр тутмын ажлын тайлан', '<p>Ингэлээ, тэглээ<br></p>', '2023-03-29', '2023-03-29', '2023-03-29 04:46:31', '2023-03-29 05:04:09', 'new'),
(3, 1, 4, 906, 3, 'Сургалтанд суув', 5, 'uploads/202303/3_0730053631b56f316ab2e65929b527d788feabb9114f080e3.jpeg,uploads/202303/3_073107289332935903_3431399347075677_1493169283103325816_n.jpg', 'багш хөгжил төв дээр сургалтанд суув.', '<p>Багш хөгжилийн сургалт<br></p>', '2023-03-29', '2023-03-29', '2023-03-29 04:47:01', '2023-03-29 05:31:07', 'new'),
(5, 1, 4, 906, 3, 'Багшийн тайлан', 1, 'uploads/202303/5_1003385281b56f316ab2e65929b527d788feabb9114f080e3.jpeg', 'Багшийн тайлан', '<h4 class=\"fw-bold\" style=\"background-color: rgb(248, 247, 250);\">Багшийн тайлан</h4>', '2023-03-29', '2023-03-29', '2023-03-29 08:03:38', '2023-03-29 08:03:38', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `report_teacher_category`
--

CREATE TABLE `report_teacher_category` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dd` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `report_teacher_category`
--

INSERT INTO `report_teacher_category` (`id`, `name`, `dd`) VALUES
(1, 'Тайлан 2', 10),
(4, 'Тайлан 3', 20),
(5, 'Тайлан 1', 0),
(6, 'Тайлан 4', 30);

-- --------------------------------------------------------

--
-- Table structure for table `report_teacher_work`
--

CREATE TABLE `report_teacher_work` (
  `id` int(11) NOT NULL,
  `city` int(11) NOT NULL DEFAULT '0',
  `district` int(11) NOT NULL DEFAULT '0',
  `kinders` int(11) NOT NULL DEFAULT '0',
  `employee_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date_from` date DEFAULT NULL,
  `date_until` date DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `report_teacher_work`
--

INSERT INTO `report_teacher_work` (`id`, `city`, `district`, `kinders`, `employee_id`, `title`, `category`, `images`, `brief`, `description`, `date_from`, `date_until`, `created_date`, `updated_date`, `status`) VALUES
(10, 1, 4, 839, 6, 'Багш ажлын тайлан', 1, 'uploads/202304/10_074035911b56f316ab2e65929b527d788feabb9114f080e3.jpeg,uploads/202304/10_1009196691.jpg', 'Багш ажлын тайлан', '<h4 class=\"fw-bold\" style=\"background-color: rgb(248, 247, 250);\">Багш ажлын тайлан</h4>', '2023-04-01', '2023-04-01', '2023-04-01 05:40:35', '2023-04-13 10:09:19', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `report_teacher_work_category`
--

CREATE TABLE `report_teacher_work_category` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dd` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `report_teacher_work_category`
--

INSERT INTO `report_teacher_work_category` (`id`, `name`, `dd`) VALUES
(1, 'Сургалтын тайлан 2', 10),
(4, 'Тайлан 3', 20),
(5, 'Тайлан 1', 0),
(6, 'Тайлан 4', 30),
(7, 'Сарын тайлан', 0);

-- --------------------------------------------------------

--
-- Table structure for table `report_work`
--

CREATE TABLE `report_work` (
  `id` int(11) NOT NULL,
  `city` int(11) NOT NULL DEFAULT '0',
  `district` int(11) NOT NULL DEFAULT '0',
  `kinders` int(11) NOT NULL DEFAULT '0',
  `employee_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date_from` date DEFAULT NULL,
  `date_until` date DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `report_work`
--

INSERT INTO `report_work` (`id`, `city`, `district`, `kinders`, `employee_id`, `title`, `category`, `images`, `brief`, `description`, `date_from`, `date_until`, `created_date`, `updated_date`, `status`) VALUES
(11, 1, 4, 839, 6, '2023 оны 2-р сар', 6, 'uploads/202303/11_02342998001.jpg,uploads/202303/11_023442666002.jpg', '2023 оны 2-р сарын', '<p class=\"MsoNormal\">1<span lang=\"MN\">. Дөрвөн долоо\r\nхоногийн 20 удаагийн сургалт, үйл ажиллагааны төлөвлөгөө 4 тус бүр батлуулж арга\r\nзүйн зөвлөгөөг авч ажиллав.</span></p><p class=\"MsoNormal\"><o:p></o:p></p>', '2023-02-01', '2023-02-28', '2023-03-29 14:29:33', '2023-03-29 14:34:42', 'new'),
(12, 1, 4, 839, 6, 'Сургалтад хамрагдав', 6, 'uploads/202303/12_023818576003.jpg,uploads/202303/12_02381818004.jpg,uploads/202303/12_023818500005.jpg,uploads/202303/12_023818539006.jpg', '', '<p>2. 2023.02.09 Алтанхундага багшийн “Математик энгийн төсөөлөл”сургалтад хамрагдав.<br></p>', '2023-02-01', '2023-02-28', '2023-03-29 14:38:18', '2023-03-29 14:44:29', 'new'),
(13, 1, 4, 839, 6, 'Бүлгийн мэдээлэл гаргах', 6, NULL, '', '<p><span lang=\"MN\" style=\"font-size:11.0pt;line-height:\r\n107%;font-family:\"Arial\",sans-serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\r\nminor-latin;mso-bidi-font-family:\"Times New Roman\";mso-bidi-theme-font:minor-bidi;\r\nmso-ansi-language:MN;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">3.Бүлгийн\r\nмэдээлэлийн самбараар боловсролын яамны гаргасан”Та хүүхэддээ хайрын 5 хэлийг\r\nзааж өгөөрэй “зөвлөмжийг хүргэв. 2023.01.01-01.13</span><br></p>', '2023-02-01', '2023-02-28', '2023-03-29 14:39:32', '2023-03-29 14:45:09', 'new'),
(14, 1, 4, 839, 6, 'Эцэг эхчүүдэд мэдээлэлийг хүргэлээ', 6, NULL, '', '<p class=\"MsoNormal\"><span lang=\"MN\">4.Баянзүрх\r\nдүүргийн гэр бүл,Хүүхэд залуучуудын хөгжлийн хэлтэсээс тавигдсан “Хүүхдийн\r\nэрхийн хуулийн 4 дүгээр зүйл,7дугаар зүйл,8дугаар зүйл ангиудаас эцэг эхчүүдэд\r\nмэдээлэлийг хүргэлээ.2023.01.16-01.25<o:p></o:p></span></p>', '2023-02-01', '2023-02-28', '2023-03-29 14:41:19', '2023-03-29 14:44:49', 'new'),
(15, 1, 4, 839, 6, 'Эсгийгээр хийж хичээл', 6, 'uploads/202303/15_024341563007.jpg,uploads/202303/15_02434163008.jpg', '', '<p><span lang=\"MN\" style=\"font-size:11.0pt;line-height:\r\n107%;font-family:\"Arial\",sans-serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\r\nminor-latin;mso-bidi-font-family:\"Times New Roman\";mso-bidi-theme-font:minor-bidi;\r\nmso-ansi-language:MN;mso-fareast-language:EN-US;mso-bidi-language:AR-SA;\r\nmso-no-proof:yes\">5. 2023.01.02 Цэгэн массаж хийх үзүүлэнг эсгийгээр хийж\r\nхичээл үйл ажиллагаандаа </span><span style=\"font-family: Arial, sans-serif; font-size: 11pt; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">хэрэглэж байна.</span><br></p>', '2023-02-01', '2023-02-28', '2023-03-29 14:43:41', '2023-03-29 14:44:04', 'new'),
(16, 1, 4, 839, 6, 'Пүрэвмаа,Оюунжаргал багшийн нээлттэй хичээл', 6, 'uploads/202303/16_024708605009.jpg,uploads/202303/16_024708998010.jpg', '', '<p><span lang=\"MN\" style=\"font-size:11.0pt;line-height:\r\n107%;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\r\nminor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;\r\nmso-ansi-language:MN;mso-fareast-language:EN-US;mso-bidi-language:AR-SA;\r\nmso-no-proof:yes\">6.Пүрэвмаа,Оюунжаргал багшийн нээлттэй хичээл үйл ажиллагаанд\r\nоролцож туршлага солилцов. 2023.13</span><br></p>', '2023-02-01', '2023-02-28', '2023-03-29 14:47:08', '2023-03-29 14:47:08', 'new'),
(17, 1, 4, 839, 6, 'Туршлага солилцов', 6, 'uploads/202303/17_024918169011.jpg,uploads/202303/17_024918564012.jpg', '', '<p><span lang=\"MN\" style=\"font-size:11.0pt;line-height:\r\n107%;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\r\nminor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;\r\nmso-ansi-language:MN;mso-fareast-language:EN-US;mso-bidi-language:AR-SA;\r\nmso-no-proof:yes\">7.305-р цэцэрлэгийн үйл аиллагаатай танилцаж туршлага\r\nсолилцов.2023.01.12</span><br></p>', '2023-02-01', '2023-02-28', '2023-03-29 14:49:18', '2023-03-29 14:49:18', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `report_work_category`
--

CREATE TABLE `report_work_category` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dd` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `report_work_category`
--

INSERT INTO `report_work_category` (`id`, `name`, `dd`) VALUES
(1, 'Сургалтын тайлан 2', 10),
(4, 'Тайлан 3', 20),
(5, 'Тайлан 1', 0),
(6, '2-р сар', 30);

-- --------------------------------------------------------

--
-- Table structure for table `report_zan`
--

CREATE TABLE `report_zan` (
  `id` int(11) NOT NULL,
  `city` int(11) NOT NULL DEFAULT '0',
  `district` int(11) NOT NULL DEFAULT '0',
  `kinders` int(11) NOT NULL DEFAULT '0',
  `employee_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date_from` date DEFAULT NULL,
  `date_until` date DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_zan_category`
--

CREATE TABLE `report_zan_category` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dd` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `report_zan_category`
--

INSERT INTO `report_zan_category` (`id`, `name`, `dd`) VALUES
(1, 'Сургалтын тайлан 2', 10),
(4, 'Тайлан 3', 20),
(5, 'Тайлан 1', 0),
(6, 'Тайлан 4', 30);

-- --------------------------------------------------------

--
-- Table structure for table `rights`
--

CREATE TABLE `rights` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shortname` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dd` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rights`
--

INSERT INTO `rights` (`id`, `name`, `shortname`, `dd`) VALUES
(1, 'Администратор', 'admin', 1000),
(2, 'Эрхлэгч', 'erhlegch', 10),
(3, 'Аргазүйч', 'manager', 20),
(4, 'Бүлгийн багш', 'teacher', 1),
(5, 'Төрийн албаны эрх', 'government', 200),
(6, 'Боловсролын газар', 'education', 100),
(7, 'Ажилтан', 'employ', 41),
(8, 'Туслах багш', 'subteacher', 60),
(9, 'Багш', 'allteachers', 50),
(10, 'Нярав', 'treasurer', 30);

-- --------------------------------------------------------

--
-- Table structure for table `sector`
--

CREATE TABLE `sector` (
  `id` int(11) NOT NULL,
  `name` varchar(300) COLLATE utf8_bin NOT NULL,
  `main_teacher` int(11) NOT NULL,
  `sub_teacher` int(11) NOT NULL,
  `price` varchar(20) COLLATE utf8_bin NOT NULL,
  `statuscode` int(11) NOT NULL,
  `branch` int(11) NOT NULL,
  `student_count` varchar(20) COLLATE utf8_bin NOT NULL,
  `sector_type` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `sector`
--

INSERT INTO `sector` (`id`, `name`, `main_teacher`, `sub_teacher`, `price`, `statuscode`, `branch`, `student_count`, `sector_type`) VALUES
(21, 'Сугар бүлэг', 255, 0, '782000', 1, 3, '27', 1),
(17, 'Дэлхий бүлэг', 230, 246, '782000', 1, 3, '27', 1),
(18, 'Буд бүлэг', 226, 0, '892000', 1, 3, '27', 1),
(19, 'Санчир бүлэг', 228, 0, '782000', 1, 3, '27', 1),
(20, 'Ангараг бүлэг', 228, 229, '782000', 1, 3, '27', 1),
(16, 'Бархасбадь бүлэг', 225, 34, '682000', 1, 3, '27', 1),
(24, 'Бага бүлэг', 290, 289, '180000', 1, 1, '27', 1),
(25, 'Дунд бүлэг ', 206, 218, '180000', 1, 1, '27', 1),
(28, 'Ясли бүлэг', 55, 232, '350000', 1, 2, '15', 1),
(29, 'Бэлтгэл бүлэг', 267, 55, '350000', 1, 2, '27', 1),
(31, 'Ахлах бүлэг', 267, 0, '300000', 1, 2, '27', 1),
(32, 'Бэлтгэл бүлэг-A', 292, 212, '180000', 0, 5, '27', 1),
(34, 'Бэлтгэл бүлэг', 292, 212, '180000', 1, 5, '27', 1),
(41, 'Дунд бүлэг', 285, 283, '180000', 1, 5, '27', 1),
(36, 'Ясли бүлэг', 238, 293, '180000', 1, 5, '27', 1),
(37, 'Сэргэлэн багачууд бүлэг', 186, 0, '395000', 1, 4, '27', 1),
(38, 'Бага бүлэг', 82, 0, '90000', 1, 5, '27', 1),
(39, 'Янзагахан бүлэг', 268, 0, '395000', 1, 4, '27', 1),
(40, 'Ахлах бүлэг', 286, 282, '180000', 1, 5, '27', 1),
(42, 'Бэлтгэл бүлэг', 75, 108, '90000', 0, 1, '27', 1),
(44, 'Ясли бүлэг', 218, 218, '90000', 1, 1, '27', 1),
(46, 'Бага бүлэг', 171, 0, '300000', 1, 2, '27', 1),
(51, 'Соробан', 175, 0, '290000', 0, 2, '27', 2),
(26, 'Ахлах бүлэг', 291, 291, '180000', 1, 1, '27', 1),
(53, 'Өдөр өнжүүлэх бүлэг', 152, 240, '250000', 0, 2, '20', 1),
(54, 'Өдөр өнжүүлэх бүлэг', 208, 0, '180000', 0, 1, '25', 1),
(55, 'Дунд бүлэг', 241, 244, '300000', 1, 2, '25', 1),
(58, 'Ясли бүлэг-2', 267, 222, '350000', 1, 2, '15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(4) NOT NULL,
  `shortname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 't' COMMENT ' t-text,i-image,f-file,c-textarea ',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='settings';

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `shortname`, `name`, `value`, `description`, `type`, `update_date`) VALUES
(1, 'admin_username', 'Админ нэвтрэх нэр', 'magnate', 'Админ панелд нэвтрэх нууц нэр', 't', '2018-08-05 22:17:24'),
(2, 'admin_pass', 'Админы нууц үг', '123', 'Админ панелд нэвтрэх нууц үг', 't', '2018-08-05 22:18:17'),
(3, 'admin_email', 'Админ мэдэгдэл авах имэйл', 'tamir926@yahoo.com', 'Админ панелд нэвтрэх нууц үг', 't', '2018-08-05 22:19:06'),
(9, 'orders_per_page', 'Нэг удаад харуулах захиалгын тоо', '3', 'Анхны утга 30', 't', '2018-08-08 23:33:08'),
(11, 'admin_avatar', 'Админы зураг', 'assets/img/logo.png', 'Зурган файлын бүтэн хаяг байна.', 'i', '2018-08-29 08:42:06'),
(21, 'base_url', 'Сайтын байрших хаяг', 'localhost/tes/', 'Сайтын байрших хаяг бүтнээр. Жнь:http://app.nvts.mn/', 't', '2018-09-30 16:59:01'),
(22, 'admin_name', 'Админы нэр', 'admin', 'Админы нэр', 't', '2019-08-28 21:09:54'),
(24, 'global_power', 'Системийг зогсоох', '1', 'Системийг зогсоох', 'b', '2019-11-30 03:09:36'),
(26, 'timezone', 'Цагийн бүс', '+8', 'timezone', 't', '2020-01-06 22:22:40'),
(37, 'admin_theme', 'Админы загвар', '0', 'Админы загвар', 't', '2021-03-19 23:24:07'),
(38, 'page_rows', 'Хуудаслалт', '50', 'Нэг хуудсанд харагдах бичиглэл', 't', '2021-06-04 21:29:14');

-- --------------------------------------------------------

--
-- Table structure for table `statistic`
--

CREATE TABLE `statistic` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `city` int(11) NOT NULL DEFAULT '0',
  `district` int(11) NOT NULL DEFAULT '0',
  `type` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '1-Төрийн,2-Хувийн',
  `loc` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `buleg` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `buleg_prim` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `buleg_sla` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child_total` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child_girl` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child_prim_total` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child_prim_girl` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child_alter_total` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child_alter_girl` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child_herder` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child_disabled` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `employees_total` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `employees_female` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `director` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `director_female` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `manager` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `manager_female` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `teacher_total` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `teacher_female` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `subteacher_total` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `subteacher_female` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `others_total` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `others_female` int(11) NOT NULL DEFAULT '0',
  `address` text COLLATE utf8_unicode_ci,
  `contact` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `director_name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `statistic`
--

INSERT INTO `statistic` (`id`, `name`, `city`, `district`, `type`, `loc`, `buleg`, `buleg_prim`, `buleg_sla`, `child_total`, `child_girl`, `child_prim_total`, `child_prim_girl`, `child_alter_total`, `child_alter_girl`, `child_herder`, `child_disabled`, `employees_total`, `employees_female`, `director`, `director_female`, `manager`, `manager_female`, `teacher_total`, `teacher_female`, `subteacher_total`, `subteacher_female`, `others_total`, `others_female`, `address`, `contact`, `phone`, `director_name`, `email`) VALUES
(1, '1-р цэцэрлэг', 2, 0, '1', 'А', '6', '6', '', '190', '101', '190', '101', '', '', '6', '1', '25', '20', '1', '1', '1', '1', '8', '8', '6', '6', '9', 4, NULL, NULL, NULL, NULL, NULL),
(2, '2-р цэцэрлэг', 2, 0, '1', 'А', '7', '7', '', '207', '103', '207', '103', '', '', '13', '2', '28', '23', '1', '1', '1', '1', '9', '8', '7', '7', '10', 6, NULL, NULL, NULL, NULL, NULL),
(3, '3-р цэцэрлэг', 2, 0, '1', 'А', '4', '4', '', '115', '56', '115', '56', '', '', '27', '', '21', '16', '1', '1', '1', '1', '5', '5', '4', '4', '10', 5, NULL, NULL, NULL, NULL, NULL),
(4, '4-р цэцэрлэг', 2, 0, '1', 'А', '6', '6', '', '213', '103', '213', '103', '', '', '44', '', '19', '14', '1', '1', '1', '1', '2', '1', '6', '6', '9', 5, NULL, NULL, NULL, NULL, NULL),
(5, '5-р цэцэрлэг', 2, 0, '1', 'А', '7', '7', '', '213', '107', '213', '107', '', '', '58', '', '28', '23', '1', '1', '1', '1', '9', '9', '7', '7', '10', 5, NULL, NULL, NULL, NULL, NULL),
(6, '6-р цэцэрлэг', 2, 0, '1', 'А', '6', '6', '', '180', '91', '180', '91', '', '', '52', '', '26', '19', '1', '1', '1', '1', '7', '7', '6', '6', '11', 4, NULL, NULL, NULL, NULL, NULL),
(7, '7-р цэцэрлэг', 2, 0, '1', 'Б', '2', '2', '', '34', '19', '34', '19', '', '', '22', '', '3', '3', '', '', '', '', '2', '2', '1', '1', '', 0, NULL, NULL, NULL, NULL, NULL),
(8, '8-р цэцэрлэг', 2, 0, '1', 'А', '6', '6', '', '189', '83', '189', '83', '', '', '34', '', '27', '20', '1', '1', '1', '1', '8', '8', '6', '6', '11', 4, NULL, NULL, NULL, NULL, NULL),
(9, '9-р цэцэрлэг', 2, 0, '1', 'А', '4', '4', '', '106', '51', '106', '51', '', '', '24', '3', '20', '16', '1', '1', '1', '1', '5', '5', '4', '4', '9', 5, NULL, NULL, NULL, NULL, NULL),
(10, '10-р цэцэрлэг', 2, 0, '1', 'А', '4', '4', '', '125', '58', '125', '58', '', '', '14', '', '20', '16', '1', '1', '1', '1', '5', '5', '4', '4', '9', 5, NULL, NULL, NULL, NULL, NULL),
(11, '11-р цэцэрлэг', 2, 0, '1', 'А', '6', '6', '', '154', '74', '154', '74', '', '', '33', '', '25', '20', '1', '1', '1', '1', '7', '7', '6', '6', '10', 5, NULL, NULL, NULL, NULL, NULL),
(12, '12-р цэцэрлэг', 2, 0, '1', 'А', '6', '6', '', '153', '79', '153', '79', '', '', '46', '', '26', '21', '1', '1', '1', '1', '7', '7', '6', '6', '11', 6, NULL, NULL, NULL, NULL, NULL),
(13, '13-р цэцэрлэг', 2, 0, '1', 'А', '4', '4', '', '123', '67', '123', '67', '', '', '14', '', '20', '15', '1', '1', '1', '1', '5', '4', '4', '4', '9', 5, NULL, NULL, NULL, NULL, NULL),
(14, '14-р цэцэрлэг', 2, 0, '1', 'А', '4', '4', '', '123', '63', '123', '63', '', '', '12', '2', '22', '17', '1', '1', '1', '1', '6', '5', '4', '4', '10', 6, NULL, NULL, NULL, NULL, NULL),
(15, 'Батцэнгэл сумын цэцэрлэг', 2, 0, '1', 'С', '6', '6', '', '222', '101', '176', '86', '46', '15', '164', '', '25', '19', '1', '1', '1', '1', '8', '7', '6', '6', '9', 4, NULL, NULL, NULL, NULL, NULL),
(16, 'Булган сумын цэцэрлэг', 2, 0, '1', 'С', '5', '4', '1', '173', '91', '120', '67', '53', '24', '83', '', '20', '15', '1', '1', '1', '1', '5', '4', '4', '4', '9', 5, NULL, NULL, NULL, NULL, NULL),
(17, 'Жаргалант сумын цэцэрлэг', 2, 0, '1', 'С', '8', '7', '1', '243', '110', '185', '81', '58', '29', '27', '', '26', '22', '1', '1', '1', '1', '8', '8', '7', '7', '9', 5, NULL, NULL, NULL, NULL, NULL),
(18, 'Ирээдүй цэцэрлэг', 2, 0, '1', 'А', '7', '7', '', '193', '94', '193', '94', '', '', '50', '', '27', '23', '1', '1', '1', '1', '9', '8', '7', '7', '9', 6, NULL, NULL, NULL, NULL, NULL),
(19, 'Ихтамир сумын цэцэрлэг', 2, 0, '1', 'С', '10', '7', '3', '299', '129', '166', '71', '133', '58', '106', '3', '31', '25', '1', '1', '1', '1', '10', '9', '7', '7', '12', 7, NULL, NULL, NULL, NULL, NULL),
(20, 'Тариат сумын цэцэрлэг', 2, 0, '1', 'С', '9', '7', '2', '342', '159', '223', '114', '119', '45', '274', '3', '29', '27', '1', '1', '1', '1', '10', '10', '7', '7', '10', 8, NULL, NULL, NULL, NULL, NULL),
(21, 'Төвшрүүлэх сумын цэцэрлэг', 2, 0, '1', 'С', '5', '4', '1', '196', '77', '129', '54', '67', '23', '113', '', '22', '18', '1', '1', '1', '1', '6', '6', '4', '4', '10', 6, NULL, NULL, NULL, NULL, NULL),
(22, 'Хайрхан сумын цэцэрлэг', 2, 0, '1', 'С', '10', '6', '4', '211', '111', '160', '87', '51', '24', '142', '2', '25', '22', '1', '1', '1', '1', '8', '8', '6', '6', '9', 6, NULL, NULL, NULL, NULL, NULL),
(23, 'Хангай сумын цэцэрлэг', 2, 0, '1', 'С', '6', '4', '2', '214', '109', '143', '82', '71', '27', '116', '', '22', '15', '1', '1', '1', '1', '5', '4', '4', '4', '11', 5, NULL, NULL, NULL, NULL, NULL),
(24, 'Хашаат сумын цэцэрлэг', 2, 0, '1', 'С', '7', '4', '3', '228', '108', '125', '66', '103', '42', '67', '', '21', '17', '1', '1', '1', '1', '6', '6', '4', '4', '9', 5, NULL, NULL, NULL, NULL, NULL),
(25, 'Хотонт сумын  Өндөрсант багийн цэцэрлэг', 2, 0, '1', 'Б', '1', '1', '', '39', '15', '39', '15', '', '', '14', '', '5', '3', '', '', '', '', '1', '1', '1', '1', '3', 1, NULL, NULL, NULL, NULL, NULL),
(26, 'Хотонт сумын цэцэрлэг', 2, 0, '1', 'С', '10', '6', '4', '258', '129', '168', '84', '90', '45', '183', '1', '24', '20', '1', '1', '1', '1', '6', '6', '6', '6', '10', 6, NULL, NULL, NULL, NULL, NULL),
(27, 'Цахир сумын цэцэрлэг', 2, 0, '1', 'С', '8', '6', '2', '216', '99', '164', '78', '52', '21', '151', '3', '24', '19', '1', '1', '1', '1', '6', '6', '6', '6', '10', 5, NULL, NULL, NULL, NULL, NULL),
(28, 'Цэнхэр сумын цэцэрлэг', 2, 0, '1', 'С', '8', '5', '3', '330', '161', '204', '103', '126', '58', '280', '', '25', '20', '1', '1', '1', '1', '7', '6', '5', '5', '11', 7, NULL, NULL, NULL, NULL, NULL),
(29, 'Цэцэрлэг сумын цэцэрлэг', 2, 0, '1', 'С', '9', '6', '3', '215', '94', '160', '70', '55', '24', '160', '3', '29', '23', '1', '1', '1', '1', '9', '8', '6', '6', '12', 7, NULL, NULL, NULL, NULL, NULL),
(30, 'Чулуут сумын цэцэрлэг', 2, 0, '1', 'С', '8', '7', '1', '289', '142', '191', '104', '98', '38', '146', '', '29', '23', '1', '1', '1', '1', '9', '9', '7', '7', '11', 5, NULL, NULL, NULL, NULL, NULL),
(31, 'Эрдэнэмандал сумын цэцэрлэг', 2, 0, '1', 'С', '12', '10', '2', '425', '198', '301', '146', '124', '52', '288', '3', '39', '34', '1', '1', '1', '1', '13', '12', '10', '10', '14', 10, NULL, NULL, NULL, NULL, NULL),
(32, 'Өгийнуур сумын цэцэрлэг', 2, 0, '1', 'С', '6', '5', '1', '217', '105', '151', '77', '66', '28', '62', '1', '23', '19', '1', '1', '1', '1', '6', '6', '5', '5', '10', 6, NULL, NULL, NULL, NULL, NULL),
(33, 'Өлзийт сумын цэцэрлэг', 2, 0, '1', 'С', '8', '5', '3', '269', '136', '172', '94', '97', '42', '144', '', '23', '18', '1', '1', '1', '1', '7', '5', '5', '5', '9', 6, NULL, NULL, NULL, NULL, NULL),
(34, 'Өндөр-Улаан сумын цэцэрлэг', 2, 0, '1', 'С', '11', '8', '3', '400', '188', '239', '105', '161', '83', '349', '1', '37', '29', '1', '1', '1', '1', '11', '11', '8', '8', '16', 8, NULL, NULL, NULL, NULL, NULL),
(35, 'Эрдэнбулган сумын 10-р цэцэрлэг', 2, 0, '1', 'А', '4', '4', '', '116', '56', '116', '56', '', '', '32', '', '22', '17', '1', '1', '1', '1', '5', '5', '4', '4', '11', 6, NULL, NULL, NULL, NULL, NULL),
(36, '1-р цэцэрлэг', 3, 0, '1', 'А', '8', '8', '', '259', '133', '259', '133', '', '', '2', '', '35', '28', '1', '1', '1', '1', '10', '9', '8', '8', '15', 9, NULL, NULL, NULL, NULL, NULL),
(37, '2-р цэцэрлэг', 3, 0, '1', 'А', '7', '7', '', '179', '87', '179', '87', '', '', '1', '', '30', '24', '1', '1', '1', '1', '8', '8', '7', '7', '13', 7, NULL, NULL, NULL, NULL, NULL),
(38, '3-р цэцэрлэг', 3, 0, '1', 'А', '8', '8', '', '231', '120', '231', '120', '', '', '4', '', '33', '28', '1', '1', '1', '1', '9', '9', '8', '8', '14', 9, NULL, NULL, NULL, NULL, NULL),
(39, '4-р цэцэрлэг', 3, 0, '1', 'А', '7', '7', '', '204', '100', '204', '100', '', '', '4', '1', '31', '25', '1', '1', '1', '1', '8', '8', '7', '7', '14', 8, NULL, NULL, NULL, NULL, NULL),
(40, '5-р цэцэрлэг', 3, 0, '1', 'А', '7', '7', '', '193', '101', '193', '101', '', '', '', '', '33', '27', '1', '1', '1', '1', '8', '8', '7', '7', '16', 10, NULL, NULL, NULL, NULL, NULL),
(41, '6-р цэцэрлэг', 3, 0, '1', 'А', '6', '6', '', '181', '94', '181', '94', '', '', '3', '', '34', '28', '1', '1', '1', '1', '7', '7', '6', '6', '19', 13, NULL, NULL, NULL, NULL, NULL),
(42, '7-р цэцэрлэг', 3, 0, '1', 'А', '7', '7', '', '196', '96', '196', '96', '', '', '2', '', '33', '25', '1', '1', '1', '1', '8', '8', '7', '7', '16', 8, NULL, NULL, NULL, NULL, NULL),
(43, '8-р цэцэрлэг', 3, 0, '1', 'А', '6', '6', '', '176', '82', '176', '82', '', '', '2', '', '34', '26', '1', '1', '1', '1', '7', '7', '6', '6', '19', 11, NULL, NULL, NULL, NULL, NULL),
(44, '9-р цэцэрлэг', 3, 0, '1', 'А', '7', '7', '', '254', '136', '254', '136', '', '', '4', '1', '36', '29', '1', '1', '1', '1', '8', '8', '7', '7', '19', 12, NULL, NULL, NULL, NULL, NULL),
(45, '10-р цэцэрлэг', 3, 0, '1', 'А', '6', '6', '', '151', '67', '151', '67', '', '', '4', '', '28', '21', '1', '1', '1', '1', '7', '7', '6', '6', '13', 6, NULL, NULL, NULL, NULL, NULL),
(46, '11-р цэцэрлэг', 3, 0, '1', 'А', '5', '5', '', '148', '68', '130', '61', '18', '7', '6', '1', '28', '20', '1', '1', '1', '1', '7', '7', '5', '5', '14', 6, NULL, NULL, NULL, NULL, NULL),
(47, '12-р цэцэрлэг', 3, 0, '1', 'А', '4', '4', '', '109', '56', '109', '56', '', '', '', '', '22', '16', '1', '1', '1', '1', '5', '5', '4', '4', '11', 5, NULL, NULL, NULL, NULL, NULL),
(48, '13-р цэцэрлэг', 3, 0, '1', 'А', '3', '3', '', '92', '47', '92', '47', '', '', '4', '', '21', '12', '1', '1', '1', '1', '3', '3', '3', '3', '13', 4, NULL, NULL, NULL, NULL, NULL),
(49, '15-р цэцэрлэг', 3, 0, '1', 'А', '4', '4', '', '117', '62', '117', '62', '', '', '4', '', '25', '15', '1', '1', '1', '1', '4', '4', '4', '4', '15', 5, NULL, NULL, NULL, NULL, NULL),
(50, '16-р цэцэрлэг', 3, 0, '1', 'А', '4', '4', '', '138', '68', '138', '68', '', '', '', '2', '26', '16', '1', '1', '1', '1', '5', '5', '4', '4', '15', 5, NULL, NULL, NULL, NULL, NULL),
(51, '17-р цэцэрлэг', 3, 0, '1', 'А', '5', '5', '', '162', '67', '162', '67', '', '', '4', '', '26', '19', '1', '1', '1', '1', '6', '6', '5', '5', '13', 6, NULL, NULL, NULL, NULL, NULL),
(52, '18-р цэцэрлэг', 3, 0, '1', 'А', '4', '4', '', '143', '68', '143', '68', '', '', '4', '', '24', '15', '1', '1', '1', '1', '4', '4', '4', '4', '14', 5, NULL, NULL, NULL, NULL, NULL),
(53, 'Алтай сумын цэцэрлэг', 3, 0, '1', 'С', '11', '7', '4', '329', '167', '202', '109', '127', '58', '125', '', '39', '33', '1', '1', '1', '1', '12', '12', '7', '7', '18', 12, NULL, NULL, NULL, NULL, NULL),
(54, 'Алтанцөгц сумын цэцэрлэг', 3, 0, '1', 'С', '5', '5', '', '154', '78', '129', '63', '25', '15', '94', '', '21', '17', '1', '1', '1', '1', '6', '5', '5', '5', '8', 5, NULL, NULL, NULL, NULL, NULL),
(55, 'Баяннуур сумын цэцэрлэг', 3, 0, '1', 'С', '8', '7', '1', '232', '108', '213', '101', '19', '7', '86', '', '32', '26', '1', '1', '1', '1', '8', '8', '7', '7', '15', 9, NULL, NULL, NULL, NULL, NULL),
(56, 'Бугат сумын цэцэрлэг', 3, 0, '1', 'С', '8', '6', '2', '223', '106', '175', '82', '48', '24', '43', '1', '44', '29', '1', '1', '1', '1', '10', '8', '7', '7', '25', 12, NULL, NULL, NULL, NULL, NULL),
(57, 'Булган сумын цэцэрлэг', 3, 0, '1', 'С', '7', '6', '1', '168', '86', '154', '81', '14', '5', '59', '', '27', '22', '1', '1', '1', '1', '7', '7', '6', '6', '12', 7, NULL, NULL, NULL, NULL, NULL),
(58, 'Булган сумын Ёлт багийн цэцэрлэг', 3, 0, '1', 'Б', '2', '2', '', '41', '20', '41', '20', '', '', '26', '', '12', '9', '1', '1', '', '', '2', '2', '2', '2', '7', 4, NULL, NULL, NULL, NULL, NULL),
(59, 'Буянт сумын цэцэрлэг', 3, 0, '1', 'С', '7', '5', '2', '167', '84', '117', '57', '50', '27', '86', '', '27', '21', '1', '1', '1', '1', '8', '8', '5', '5', '12', 6, NULL, NULL, NULL, NULL, NULL),
(60, 'Дэлүүн сумын цэцэрлэг', 3, 0, '1', 'С', '15', '11', '4', '365', '177', '269', '138', '96', '39', '188', '', '41', '35', '1', '1', '1', '1', '13', '12', '11', '11', '15', 10, NULL, NULL, NULL, NULL, NULL),
(61, 'Ногооннуур сумын Цагааннуур тосгоны цэцэрлэг', 3, 0, '1', 'Б', '4', '4', '', '101', '52', '101', '52', '', '', '4', '', '23', '16', '1', '1', '1', '1', '4', '4', '4', '4', '13', 6, NULL, NULL, NULL, NULL, NULL),
(62, 'Ногооннуур сумын цэцэрлэг', 3, 0, '1', 'С', '7', '7', '', '224', '102', '184', '86', '40', '16', '15', '', '35', '26', '1', '1', '1', '1', '10', '10', '7', '7', '16', 7, NULL, NULL, NULL, NULL, NULL),
(63, 'Сагсай сумын цэцэрлэг', 3, 0, '1', 'С', '10', '6', '4', '253', '127', '175', '89', '78', '38', '109', '', '33', '28', '1', '1', '1', '1', '7', '7', '6', '6', '18', 13, NULL, NULL, NULL, NULL, NULL),
(64, 'Толбо сумын цэцэрлэг', 3, 0, '1', 'С', '6', '5', '1', '236', '120', '166', '87', '70', '33', '84', '2', '24', '21', '1', '1', '1', '1', '6', '6', '5', '5', '11', 8, NULL, NULL, NULL, NULL, NULL),
(65, 'Улаанхус сумын Ойгор багийн цэцэрлэг', 3, 0, '1', 'Б', '8', '7', '1', '195', '98', '175', '92', '20', '6', '87', '', '38', '27', '1', '1', '1', '1', '8', '8', '7', '7', '21', 10, NULL, NULL, NULL, NULL, NULL),
(66, 'Улаанхус сумын Хөххөтөл багийн цэцэрлэг', 3, 0, '1', 'Б', '5', '4', '1', '102', '49', '92', '45', '10', '4', '1', '', '25', '16', '', '', '1', '1', '4', '4', '4', '4', '16', 7, NULL, NULL, NULL, NULL, NULL),
(67, 'Улаанхус сумын цэцэрлэг', 3, 0, '1', 'С', '10', '9', '1', '328', '158', '248', '119', '80', '39', '83', '3', '49', '39', '1', '1', '1', '1', '10', '10', '9', '9', '28', 18, NULL, NULL, NULL, NULL, NULL),
(68, 'Цэнгэл сумын 1-р цэцэрлэг', 3, 0, '1', 'С', '11', '7', '4', '295', '148', '178', '88', '117', '60', '90', '', '43', '37', '1', '1', '1', '1', '12', '12', '11', '11', '18', 12, NULL, NULL, NULL, NULL, NULL),
(69, 'Цэнгэл сумын 2-р цэцэрлэг', 3, 0, '1', 'С', '6', '5', '1', '200', '98', '156', '76', '44', '22', '78', '1', '26', '18', '1', '1', '1', '1', '6', '5', '5', '5', '13', 6, NULL, NULL, NULL, NULL, NULL),
(70, 'Цэнгэл сумын 3-р цэцэрлэг', 3, 0, '1', 'С', '5', '5', '', '115', '48', '115', '48', '', '', '45', '', '27', '17', '1', '1', '1', '1', '6', '5', '5', '5', '14', 5, NULL, NULL, NULL, NULL, NULL),
(71, 'Өлгий сумын Хотгор багийн цэцэрлэг', 3, 0, '1', 'Б', '2', '2', '', '60', '29', '60', '29', '', '', '2', '', '15', '10', '1', '1', '', '', '2', '2', '2', '2', '10', 5, NULL, NULL, NULL, NULL, NULL),
(72, 'Өлгий сумын 14-р цэцэрлэг', 3, 0, '1', 'А', '6', '6', '', '203', '101', '203', '101', '', '', '3', '', '26', '20', '1', '1', '1', '1', '7', '7', '6', '6', '11', 5, NULL, NULL, NULL, NULL, NULL),
(73, 'Ногооннуур сумын 2-р цэцэрлэг', 3, 0, '1', 'С', '9', '9', '', '227', '104', '227', '104', '', '', '35', '', '45', '33', '1', '1', '1', '1', '10', '10', '9', '9', '24', 12, NULL, NULL, NULL, NULL, NULL),
(74, 'Өлгий сумын 19-р цэцэрлэг', 3, 0, '1', 'А', '4', '4', '', '140', '64', '140', '64', '', '', '3', '1', '28', '17', '1', '1', '1', '1', '5', '4', '4', '4', '17', 7, NULL, NULL, NULL, NULL, NULL),
(75, 'Дэлүүн сумын 2-р цэцэрлэг', 3, 0, '1', 'С', '10', '8', '2', '248', '127', '198', '94', '50', '33', '149', '1', '37', '30', '1', '1', '1', '1', '9', '9', '8', '8', '18', 11, NULL, NULL, NULL, NULL, NULL),
(76, 'Сагсай сумын 2-р цэцэрлэг', 3, 0, '1', 'С', '5', '4', '1', '133', '67', '112', '60', '21', '7', '51', '1', '22', '16', '1', '1', '1', '1', '5', '4', '4', '4', '11', 6, NULL, NULL, NULL, NULL, NULL),
(77, 'Өлгий сумын 20-р цэцэрлэг', 3, 0, '1', 'А', '3', '3', '', '93', '53', '93', '53', '', '', '3', '', '17', '15', '1', '1', '1', '1', '4', '4', '3', '3', '8', 6, NULL, NULL, NULL, NULL, NULL),
(78, 'Өлгий сумын 21-р цэцэрлэг', 3, 0, '1', 'А', '6', '6', '', '205', '105', '205', '105', '', '', '10', '', '26', '23', '1', '1', '1', '1', '7', '7', '6', '6', '11', 8, NULL, NULL, NULL, NULL, NULL),
(79, 'Цэнгэл сумын 4-р цэцэрлэг', 3, 0, '1', 'С', '3', '3', '', '82', '31', '82', '31', '', '', '19', '', '20', '15', '1', '1', '', '', '3', '3', '3', '3', '13', 8, NULL, NULL, NULL, NULL, NULL),
(80, 'Бугат сумын 2-р цэцэрлэг', 3, 0, '1', 'С', '5', '4', '1', '123', '42', '106', '38', '17', '4', '9', '', '25', '15', '1', '1', '1', '1', '5', '4', '4', '4', '14', 5, NULL, NULL, NULL, NULL, NULL),
(81, 'Сагсай сумын 3-р цэцэрлэг', 3, 0, '1', 'Б', '2', '2', '', '48', '23', '48', '23', '', '', '14', '', '16', '9', '1', '1', '', '', '2', '2', '2', '2', '11', 4, NULL, NULL, NULL, NULL, NULL),
(82, 'Өлгий сумын 22-р цэцэрлэг', 3, 0, '1', 'С', '4', '4', '', '96', '41', '96', '41', '', '', '5', '', '15', '14', '1', '1', '1', '1', '4', '4', '4', '4', '5', 4, NULL, NULL, NULL, NULL, NULL),
(83, 'Айбом цэцэрлэг', 3, 0, '2', 'А', '2', '2', '', '66', '20', '66', '20', '', '', '5', '', '10', '7', '1', '1', '', '', '2', '2', '2', '2', '5', 2, NULL, NULL, NULL, NULL, NULL),
(84, 'Бүлдиршин цэцэрлэг', 3, 0, '2', 'А', '4', '4', '', '112', '61', '112', '61', '', '', '2', '', '14', '12', '1', '1', '1', '1', '4', '4', '4', '4', '4', 2, NULL, NULL, NULL, NULL, NULL),
(85, 'Дарын цэцэрлэг', 3, 0, '2', 'А', '3', '3', '', '75', '33', '75', '33', '', '', '', '', '10', '9', '1', '1', '', '', '3', '3', '3', '3', '3', 2, NULL, NULL, NULL, NULL, NULL),
(86, 'Жамал цэцэрлэг', 3, 0, '2', 'А', '2', '2', '', '60', '25', '60', '25', '', '', '5', '', '8', '5', '1', '1', '', '', '1', '1', '2', '2', '4', 1, NULL, NULL, NULL, NULL, NULL),
(87, 'Нурсара цэцэрлэг', 3, 0, '2', 'А', '4', '4', '', '76', '33', '76', '33', '', '', '1', '1', '9', '8', '1', '1', '', '', '4', '4', '2', '2', '2', 1, NULL, NULL, NULL, NULL, NULL),
(88, 'Цоглог цэцэрлэг', 3, 0, '2', 'А', '4', '4', '', '140', '65', '140', '65', '', '', '4', '', '14', '12', '1', '1', '', '', '5', '5', '4', '4', '4', 2, NULL, NULL, NULL, NULL, NULL),
(89, '1-р цэцэрлэг', 4, 0, '1', 'А', '10', '10', '', '335', '178', '335', '178', '', '', '9', '', '38', '32', '1', '1', '1', '1', '12', '10', '10', '10', '14', 10, NULL, NULL, NULL, NULL, NULL),
(90, '2-р цэцэрлэг', 4, 0, '1', 'А', '5', '5', '', '170', '94', '170', '94', '', '', '13', '1', '22', '18', '1', '1', '1', '1', '6', '6', '5', '5', '9', 5, NULL, NULL, NULL, NULL, NULL),
(91, '3-р цэцэрлэг', 4, 0, '1', 'А', '6', '6', '', '170', '90', '170', '90', '', '', '17', '', '26', '21', '1', '1', '1', '1', '7', '7', '6', '6', '11', 6, NULL, NULL, NULL, NULL, NULL),
(92, '4-р цэцэрлэг', 4, 0, '1', 'А', '4', '4', '', '136', '63', '136', '63', '', '', '5', '', '22', '18', '1', '1', '1', '1', '5', '5', '4', '4', '11', 7, NULL, NULL, NULL, NULL, NULL),
(93, '5-р цэцэрлэг', 4, 0, '1', 'А', '8', '8', '', '248', '120', '248', '120', '', '', '18', '3', '32', '28', '1', '1', '1', '1', '9', '9', '8', '8', '13', 9, NULL, NULL, NULL, NULL, NULL),
(94, '6-р цэцэрлэг', 4, 0, '1', 'А', '8', '8', '', '236', '112', '236', '112', '', '', '41', '2', '33', '29', '1', '1', '1', '1', '10', '10', '8', '8', '13', 9, NULL, NULL, NULL, NULL, NULL),
(95, '7-р цэцэрлэг', 4, 0, '1', 'А', '6', '6', '', '193', '99', '193', '99', '', '', '21', '1', '25', '20', '1', '1', '1', '1', '7', '7', '6', '6', '10', 5, NULL, NULL, NULL, NULL, NULL),
(96, '9-р цэцэрлэг', 4, 0, '1', 'А', '3', '3', '', '100', '45', '100', '45', '', '', '8', '', '18', '13', '1', '1', '', '', '4', '4', '3', '3', '10', 5, NULL, NULL, NULL, NULL, NULL),
(97, '10-р цэцэрлэг', 4, 0, '1', 'А', '8', '8', '', '230', '118', '230', '118', '', '', '16', '', '30', '27', '1', '1', '1', '1', '9', '9', '8', '8', '11', 8, NULL, NULL, NULL, NULL, NULL),
(98, '11-р цэцэрлэг', 4, 0, '1', 'А', '6', '6', '', '179', '93', '179', '93', '', '', '33', '', '25', '20', '1', '1', '1', '1', '7', '6', '6', '6', '10', 6, NULL, NULL, NULL, NULL, NULL),
(99, '12-р цэцэрлэг', 4, 0, '1', 'А', '6', '6', '', '169', '95', '169', '95', '', '', '17', '1', '26', '23', '1', '1', '1', '1', '7', '7', '6', '6', '11', 8, NULL, NULL, NULL, NULL, NULL),
(100, '13-р цэцэрлэг', 4, 0, '1', 'А', '4', '4', '', '140', '75', '140', '75', '', '', '22', '1', '20', '16', '1', '1', '1', '1', '5', '5', '4', '4', '9', 5, NULL, NULL, NULL, NULL, NULL),
(101, 'Баацагаан сумын цэцэрлэг', 4, 0, '1', 'С', '7', '4', '3', '186', '94', '121', '60', '65', '34', '119', '1', '14', '12', '1', '1', '', '', '4', '4', '4', '4', '5', 3, NULL, NULL, NULL, NULL, NULL),
(102, 'Баян-Овоо сумын цэцэрлэг', 4, 0, '1', 'С', '5', '4', '1', '134', '65', '104', '54', '30', '11', '68', '', '17', '14', '1', '', '', '', '5', '5', '4', '4', '7', 5, NULL, NULL, NULL, NULL, NULL),
(103, 'Баян-Өндөр сумын цэцэрлэг', 4, 0, '1', 'С', '6', '6', '', '195', '97', '165', '82', '30', '15', '141', '2', '17', '17', '1', '1', '', '', '6', '6', '6', '6', '4', 4, NULL, NULL, NULL, NULL, NULL),
(104, 'Баянбулаг сумын цэцэрлэг', 4, 0, '1', 'С', '4', '4', '', '136', '79', '125', '74', '11', '5', '90', '2', '18', '15', '1', '1', '', '', '5', '5', '4', '4', '8', 5, NULL, NULL, NULL, NULL, NULL),
(105, 'Баянговь сумын цэцэрлэг', 4, 0, '1', 'С', '6', '5', '1', '190', '95', '140', '69', '50', '26', '78', '', '20', '19', '1', '1', '', '', '6', '6', '5', '5', '8', 7, NULL, NULL, NULL, NULL, NULL),
(106, 'Баянлиг сумын цэцэрлэг', 4, 0, '1', 'С', '7', '7', '', '281', '136', '224', '115', '57', '21', '142', '', '23', '21', '1', '1', '1', '1', '8', '8', '6', '6', '7', 5, NULL, NULL, NULL, NULL, NULL),
(107, 'Баянцагаан сумын цэцэрлэг', 4, 0, '1', 'С', '9', '7', '2', '249', '112', '199', '90', '50', '22', '186', '1', '24', '23', '1', '1', '1', '1', '9', '9', '7', '7', '6', 5, NULL, NULL, NULL, NULL, NULL),
(108, 'Богд сумын цэцэрлэг', 4, 0, '1', 'С', '6', '5', '1', '190', '88', '152', '74', '38', '14', '123', '2', '21', '18', '1', '1', '', '', '7', '7', '5', '5', '8', 5, NULL, NULL, NULL, NULL, NULL),
(109, 'Бууцагаан сумын Баянбүрдийн цэцэрлэг', 4, 0, '1', 'Б', '1', '1', '', '31', '12', '31', '12', '', '', '18', '', '5', '4', '', '', '', '', '1', '1', '1', '1', '3', 2, NULL, NULL, NULL, NULL, NULL),
(110, 'Бууцагаан сумын цэцэрлэг', 4, 0, '1', 'С', '8', '7', '1', '219', '110', '203', '107', '16', '3', '130', '1', '28', '24', '1', '1', '1', '1', '9', '9', '7', '7', '10', 6, NULL, NULL, NULL, NULL, NULL),
(111, 'Бөмбөгөр сумын цэцэрлэг', 4, 0, '1', 'С', '8', '6', '2', '240', '119', '172', '87', '68', '32', '170', '', '24', '20', '1', '1', '', '', '8', '8', '6', '6', '9', 5, NULL, NULL, NULL, NULL, NULL),
(112, 'Галуут сумын цэцэрлэг', 4, 0, '1', 'С', '7', '5', '2', '190', '93', '120', '65', '70', '28', '114', '', '21', '17', '1', '1', '', '', '7', '7', '5', '5', '8', 4, NULL, NULL, NULL, NULL, NULL),
(113, 'Гурванбулаг сумын цэцэрлэг', 4, 0, '1', 'С', '5', '4', '1', '163', '79', '108', '56', '55', '23', '135', '', '18', '15', '1', '1', '', '', '6', '6', '4', '4', '7', 4, NULL, NULL, NULL, NULL, NULL),
(114, 'Жаргалант сумын цэцэрлэг', 4, 0, '1', 'С', '6', '5', '1', '184', '104', '152', '87', '32', '17', '94', '', '19', '17', '1', '1', '', '', '7', '7', '5', '5', '6', 4, NULL, NULL, NULL, NULL, NULL),
(115, 'Жинст сумын цэцэрлэг', 4, 0, '1', 'С', '4', '3', '1', '124', '66', '77', '40', '47', '26', '82', '', '14', '11', '1', '1', '', '', '3', '3', '3', '3', '7', 4, NULL, NULL, NULL, NULL, NULL),
(116, 'Заг сумын цэцэрлэг', 4, 0, '1', 'С', '4', '3', '1', '118', '54', '82', '42', '36', '12', '67', '2', '13', '12', '1', '1', '', '', '4', '4', '3', '3', '5', 4, NULL, NULL, NULL, NULL, NULL),
(117, 'Хүрээмарал сумын цэцэрлэг', 4, 0, '1', 'С', '4', '4', '', '120', '60', '120', '60', '', '', '82', '', '14', '11', '1', '1', '', '', '4', '4', '4', '4', '5', 2, NULL, NULL, NULL, NULL, NULL),
(118, 'Шаргалжуут багийн цэцэрлэг', 4, 0, '1', 'Б', '4', '3', '1', '129', '65', '87', '40', '42', '25', '77', '', '16', '13', '1', '1', '', '', '4', '4', '3', '3', '8', 5, NULL, NULL, NULL, NULL, NULL),
(119, 'Шинэжинст сумын цэцэрлэг', 4, 0, '1', 'С', '4', '4', '', '164', '90', '130', '72', '34', '18', '121', '', '16', '16', '1', '1', '', '', '5', '5', '4', '4', '6', 6, NULL, NULL, NULL, NULL, NULL),
(120, 'Эрдэнэцогт сумын цэцэрлэг', 4, 0, '1', 'С', '6', '5', '1', '218', '110', '152', '82', '66', '28', '130', '', '21', '16', '1', '1', '', '', '7', '6', '5', '5', '8', 4, NULL, NULL, NULL, NULL, NULL),
(121, 'Өлзийт сумын цэцэрлэг', 4, 0, '1', 'С', '6', '4', '2', '212', '97', '136', '65', '76', '32', '89', '', '18', '15', '1', '1', '', '', '6', '5', '4', '4', '7', 5, NULL, NULL, NULL, NULL, NULL),
(122, '15-р цэцэрлэг', 4, 0, '1', 'А', '8', '8', '', '303', '151', '303', '151', '', '', '6', '', '33', '29', '1', '1', '1', '1', '10', '10', '8', '8', '13', 9, NULL, NULL, NULL, NULL, NULL),
(123, '14-р цэцэрлэг', 4, 0, '1', 'А', '4', '4', '', '128', '79', '128', '79', '', '', '14', '', '20', '16', '1', '1', '1', '1', '4', '4', '4', '4', '10', 6, NULL, NULL, NULL, NULL, NULL),
(124, '16-р цэцэрлэг', 4, 0, '1', 'А', '12', '12', '', '407', '203', '407', '203', '', '', '65', '1', '42', '36', '1', '1', '1', '1', '14', '13', '12', '12', '14', 9, NULL, NULL, NULL, NULL, NULL),
(125, 'Гэгээхэн цэцэрлэг', 4, 0, '2', 'А', '4', '4', '', '127', '57', '127', '57', '', '', '11', '', '16', '12', '1', '1', '', '', '4', '4', '4', '4', '7', 3, NULL, NULL, NULL, NULL, NULL),
(126, 'Тэмүүлэл цэцэрлэг', 4, 0, '2', 'А', '1', '1', '', '33', '10', '33', '10', '', '', '3', '', '6', '4', '1', '', '', '', '1', '1', '1', '1', '3', 2, NULL, NULL, NULL, NULL, NULL),
(127, 'Тэргэл цэцэрлэг', 4, 0, '2', 'А', '2', '2', '', '116', '56', '116', '56', '', '', '4', '', '12', '10', '1', '1', '', '', '2', '2', '4', '4', '5', 3, NULL, NULL, NULL, NULL, NULL),
(128, 'Эко цэцэрлэг', 4, 0, '2', 'А', '4', '4', '', '125', '62', '125', '62', '', '', '3', '', '16', '12', '1', '1', '', '', '4', '4', '4', '4', '7', 3, NULL, NULL, NULL, NULL, NULL),
(129, 'Эрхэт тамч', 4, 0, '2', 'А', '2', '2', '', '34', '17', '34', '17', '', '', '7', '', '6', '4', '1', '', '', '', '2', '2', '2', '2', '1', 0, NULL, NULL, NULL, NULL, NULL),
(130, 'Тусгай хэрэгцээт цэцэрлэг', 4, 0, '2', 'А', '1', '1', '', '25', '14', '25', '14', '', '', '5', '25', '7', '7', '1', '1', '', '', '1', '1', '1', '1', '4', 4, NULL, NULL, NULL, NULL, NULL),
(131, 'Баян цэцүүхэй', 4, 0, '2', 'А', '2', '2', '', '71', '37', '71', '37', '', '', '', '', '8', '6', '1', '', '', '', '2', '2', '2', '2', '3', 2, NULL, NULL, NULL, NULL, NULL),
(132, '1-р цэцэрлэг', 5, 0, '1', 'А', '6', '6', '', '161', '80', '161', '80', '', '', '14', '3', '25', '21', '1', '1', '1', '1', '7', '7', '6', '6', '10', 6, NULL, NULL, NULL, NULL, NULL),
(133, '2-р цэцэрлэг', 5, 0, '1', 'А', '8', '8', '', '221', '108', '221', '108', '', '', '19', '2', '34', '30', '1', '1', '1', '1', '10', '10', '10', '10', '12', 8, NULL, NULL, NULL, NULL, NULL),
(134, '3-р цэцэрлэг', 5, 0, '1', 'А', '2', '2', '', '63', '26', '63', '26', '', '', '3', '', '13', '9', '1', '1', '', '', '2', '2', '2', '2', '8', 4, NULL, NULL, NULL, NULL, NULL),
(135, '4-р цэцэрлэг', 5, 0, '1', 'А', '4', '4', '', '85', '31', '85', '31', '', '', '5', '', '21', '18', '1', '1', '1', '1', '5', '5', '4', '4', '10', 7, NULL, NULL, NULL, NULL, NULL),
(136, '6-р цэцэрлэг', 5, 0, '1', 'А', '5', '5', '', '140', '74', '140', '74', '', '', '11', '', '23', '18', '1', '1', '1', '1', '6', '5', '5', '5', '10', 6, NULL, NULL, NULL, NULL, NULL),
(137, '7-р цэцэрлэг', 5, 0, '1', 'А', '7', '7', '', '174', '76', '174', '76', '', '', '18', '1', '27', '22', '1', '1', '1', '1', '7', '7', '7', '7', '11', 6, NULL, NULL, NULL, NULL, NULL),
(138, 'Баян-Агт сумын цэцэрлэг', 5, 0, '1', 'С', '5', '4', '1', '202', '92', '131', '61', '71', '31', '134', '', '18', '16', '1', '1', '1', '1', '5', '5', '4', '4', '7', 5, NULL, NULL, NULL, NULL, NULL),
(139, 'Баяннуур сумын цэцэрлэг', 5, 0, '1', 'С', '8', '4', '4', '139', '66', '123', '60', '16', '6', '17', '', '16', '14', '1', '1', '', '', '5', '4', '4', '4', '6', 5, NULL, NULL, NULL, NULL, NULL),
(140, 'Бугат сумын цэцэрлэг', 5, 0, '1', 'С', '3', '2', '1', '90', '46', '60', '31', '30', '15', '23', '', '9', '9', '1', '1', '', '', '2', '2', '2', '2', '4', 4, NULL, NULL, NULL, NULL, NULL),
(141, 'Бүрэгхангай сумын цэцэрлэг', 5, 0, '1', 'С', '5', '5', '', '175', '81', '127', '58', '48', '23', '27', '', '21', '20', '1', '1', '1', '1', '7', '7', '5', '5', '7', 6, NULL, NULL, NULL, NULL, NULL),
(142, 'Гурванбулаг сумын цэцэрлэг', 5, 0, '1', 'С', '8', '5', '3', '193', '90', '130', '58', '63', '32', '121', '', '19', '15', '1', '1', '1', '1', '6', '5', '5', '5', '6', 3, NULL, NULL, NULL, NULL, NULL),
(143, 'Дашинчилэн сумын цэцэрлэг', 5, 0, '1', 'С', '8', '5', '3', '203', '107', '135', '69', '68', '38', '116', '', '19', '18', '1', '1', '1', '1', '6', '6', '5', '5', '6', 5, NULL, NULL, NULL, NULL, NULL),
(144, 'Могод сумын цэцэрлэг', 5, 0, '1', 'С', '6', '3', '3', '156', '72', '89', '42', '67', '30', '47', '', '12', '11', '1', '1', '', '', '3', '3', '3', '3', '5', 4, NULL, NULL, NULL, NULL, NULL),
(145, 'Орхон сумын цэцэрлэг', 5, 0, '1', 'С', '7', '3', '4', '165', '80', '76', '37', '89', '43', '99', '', '11', '10', '1', '1', '', '', '3', '3', '3', '3', '4', 3, NULL, NULL, NULL, NULL, NULL),
(146, 'Рашаант сумын цэцэрлэг', 5, 0, '1', 'С', '7', '5', '2', '186', '84', '158', '73', '28', '11', '83', '2', '20', '17', '1', '1', '1', '1', '6', '5', '5', '5', '7', 5, NULL, NULL, NULL, NULL, NULL),
(147, 'Сайхан сумын цэцэрлэг', 5, 0, '1', 'С', '6', '4', '2', '168', '92', '119', '66', '49', '26', '114', '', '15', '14', '1', '1', '', '', '5', '5', '4', '4', '5', 4, NULL, NULL, NULL, NULL, NULL),
(148, 'Сэлэнгэ сумын цэцэрлэг', 5, 0, '1', 'С', '11', '10', '1', '243', '112', '220', '101', '23', '11', '86', '3', '43', '34', '1', '1', '1', '1', '12', '11', '10', '10', '19', 11, NULL, NULL, NULL, NULL, NULL),
(149, 'Тэшиг сумын цэцэрлэг', 5, 0, '1', 'С', '14', '12', '2', '256', '118', '235', '107', '21', '11', '78', '2', '42', '37', '1', '1', '1', '1', '13', '12', '12', '12', '15', 11, NULL, NULL, NULL, NULL, NULL),
(150, 'Хангал сумын Хялганат багийн цэцэрлэг', 5, 0, '1', 'Б', '8', '7', '1', '245', '121', '220', '110', '25', '11', '22', '', '29', '24', '1', '1', '1', '1', '8', '8', '7', '7', '12', 7, NULL, NULL, NULL, NULL, NULL),
(151, 'Хангал сумын цэцэрлэг', 5, 0, '1', 'С', '3', '2', '1', '61', '26', '45', '19', '16', '7', '8', '', '8', '7', '1', '1', '', '', '2', '2', '2', '2', '3', 2, NULL, NULL, NULL, NULL, NULL),
(152, 'Хишиг-Өндөр сумын цэцэрлэг', 5, 0, '1', 'С', '7', '5', '2', '169', '89', '133', '72', '36', '17', '86', '3', '21', '19', '1', '1', '1', '1', '6', '6', '5', '5', '8', 6, NULL, NULL, NULL, NULL, NULL),
(153, 'Хутаг-Өндөр сумын цэцэрлэг', 5, 0, '1', 'С', '13', '10', '3', '385', '174', '295', '134', '90', '40', '188', '3', '42', '32', '1', '1', '1', '1', '12', '11', '10', '10', '18', 9, NULL, NULL, NULL, NULL, NULL),
(154, '1-р цэцэрлэг', 6, 0, '1', 'А', '12', '12', '', '275', '130', '275', '130', '', '', '49', '', '41', '36', '1', '1', '1', '1', '13', '13', '12', '12', '14', 9, NULL, NULL, NULL, NULL, NULL),
(155, '2-р цэцэрлэг', 6, 0, '1', 'А', '4', '4', '', '118', '56', '118', '56', '', '', '21', '', '22', '19', '1', '1', '1', '1', '5', '5', '4', '4', '11', 8, NULL, NULL, NULL, NULL, NULL),
(156, '3-р цэцэрлэг', 6, 0, '1', 'А', '6', '6', '', '185', '82', '185', '82', '', '', '12', '', '27', '23', '1', '1', '1', '', '7', '7', '6', '6', '12', 9, NULL, NULL, NULL, NULL, NULL),
(157, '4-р цэцэрлэг', 6, 0, '1', 'А', '5', '5', '', '121', '66', '121', '66', '', '', '19', '', '24', '19', '1', '1', '1', '1', '6', '5', '5', '5', '11', 7, NULL, NULL, NULL, NULL, NULL),
(158, '5-р цэцэрлэг', 6, 0, '1', 'А', '5', '5', '', '144', '63', '144', '63', '', '', '32', '', '24', '20', '1', '1', '1', '1', '6', '6', '5', '5', '11', 7, NULL, NULL, NULL, NULL, NULL),
(159, '6-р цэцэрлэг', 6, 0, '1', 'А', '4', '4', '', '93', '40', '93', '40', '', '', '26', '', '20', '16', '1', '1', '1', '1', '5', '5', '4', '4', '9', 5, NULL, NULL, NULL, NULL, NULL),
(160, '7-р цэцэрлэг', 6, 0, '1', 'А', '5', '5', '', '100', '49', '100', '49', '', '', '17', '9', '22', '18', '1', '1', '', '', '6', '6', '5', '5', '10', 6, NULL, NULL, NULL, NULL, NULL),
(161, '8-р цэцэрлэг', 6, 0, '1', 'А', '6', '6', '', '156', '62', '156', '62', '', '', '27', '', '26', '22', '1', '1', '1', '1', '7', '7', '6', '6', '11', 7, NULL, NULL, NULL, NULL, NULL),
(162, 'Алтай сумын цэцэрлэг', 6, 0, '1', 'С', '6', '5', '1', '171', '80', '143', '68', '28', '12', '47', '1', '19', '15', '1', '1', '', '', '5', '5', '5', '5', '8', 4, NULL, NULL, NULL, NULL, NULL),
(163, 'Баян-Уул сумын цэцэрлэг', 6, 0, '1', 'С', '5', '4', '1', '155', '85', '129', '72', '26', '13', '81', '', '19', '13', '1', '1', '', '', '5', '5', '4', '4', '9', 3, NULL, NULL, NULL, NULL, NULL),
(164, 'Бигэр сумын цэцэрлэг', 6, 0, '1', 'С', '5', '4', '1', '128', '64', '100', '55', '28', '9', '82', '', '19', '15', '1', '1', '1', '1', '5', '5', '4', '4', '8', 4, NULL, NULL, NULL, NULL, NULL),
(165, 'Бугат сумын цэцэрлэг', 6, 0, '1', 'С', '5', '5', '', '133', '79', '106', '60', '27', '19', '83', '', '22', '18', '1', '1', '', '', '6', '6', '5', '5', '10', 6, NULL, NULL, NULL, NULL, NULL),
(166, 'Дарви сумын цэцэрлэг', 6, 0, '1', 'С', '4', '3', '1', '100', '57', '68', '42', '32', '15', '36', '1', '15', '12', '1', '1', '', '', '4', '4', '3', '3', '7', 4, NULL, NULL, NULL, NULL, NULL),
(167, 'Дэлгэр сумын Гуулин багийн цэцэрлэг', 6, 0, '1', 'Б', '3', '3', '', '52', '26', '52', '26', '', '', '6', '', '14', '11', '1', '1', '', '', '3', '3', '3', '3', '7', 4, NULL, NULL, NULL, NULL, NULL),
(168, 'Дэлгэр сумын цэцэрлэг', 6, 0, '1', 'С', '6', '5', '1', '170', '77', '129', '61', '41', '16', '103', '1', '20', '18', '1', '1', '1', '1', '6', '6', '5', '5', '7', 5, NULL, NULL, NULL, NULL, NULL),
(169, 'Жаргалан сумын цэцэрлэг', 6, 0, '1', 'С', '4', '3', '1', '96', '41', '56', '24', '40', '17', '50', '', '15', '13', '1', '1', '', '', '4', '4', '3', '3', '7', 5, NULL, NULL, NULL, NULL, NULL),
(170, '9-р цэцэрлэг', 6, 0, '1', 'А', '6', '6', '', '137', '63', '137', '63', '', '', '17', '', '26', '19', '1', '1', '1', '1', '7', '6', '6', '6', '11', 5, NULL, NULL, NULL, NULL, NULL),
(171, 'Тайшир сумын цэцэрлэг', 6, 0, '1', 'С', '3', '2', '1', '51', '22', '34', '15', '17', '7', '21', '', '10', '9', '1', '1', '', '', '2', '2', '2', '2', '5', 4, NULL, NULL, NULL, NULL, NULL),
(172, 'Тонхил сумын цэцэрлэг', 6, 0, '1', 'С', '5', '5', '', '159', '72', '123', '61', '36', '11', '87', '', '20', '17', '1', '1', '1', '1', '6', '6', '4', '4', '8', 5, NULL, NULL, NULL, NULL, NULL),
(173, 'Төгрөг сумын цэцэрлэг', 6, 0, '1', 'С', '5', '4', '1', '112', '51', '99', '44', '13', '7', '53', '', '18', '15', '1', '1', '', '', '4', '4', '4', '4', '9', 6, NULL, NULL, NULL, NULL, NULL),
(174, 'Халиун сумын цэцэрлэг', 6, 0, '1', 'С', '4', '3', '1', '110', '52', '79', '38', '31', '14', '47', '1', '13', '12', '1', '1', '', '', '4', '4', '3', '3', '5', 4, NULL, NULL, NULL, NULL, NULL),
(175, 'Есөнбулаг сумын хантайшир өргөө цэцэрлэг', 6, 0, '1', 'А', '4', '4', '', '102', '50', '102', '50', '', '', '7', '', '13', '13', '1', '1', '1', '1', '4', '4', '4', '4', '3', 3, NULL, NULL, NULL, NULL, NULL),
(176, 'Хөхморьт сумын цэцэрлэг', 6, 0, '1', 'С', '5', '4', '1', '138', '67', '101', '50', '37', '17', '83', '1', '18', '14', '1', '1', '', '', '5', '5', '4', '4', '8', 4, NULL, NULL, NULL, NULL, NULL),
(177, 'Цогт сумын Баянтоорой багийн цэцэрлэг', 6, 0, '1', 'Б', '4', '4', '', '90', '42', '68', '30', '22', '12', '40', '1', '17', '12', '1', '1', '', '', '5', '4', '4', '4', '7', 3, NULL, NULL, NULL, NULL, NULL),
(178, 'Цогт сумын цэцэрлэг', 6, 0, '1', 'С', '6', '5', '1', '158', '80', '129', '66', '29', '14', '93', '', '20', '17', '1', '1', '', '', '6', '6', '5', '5', '8', 5, NULL, NULL, NULL, NULL, NULL),
(179, 'Цээл сумын цэцэрлэг', 6, 0, '1', 'С', '5', '5', '', '148', '59', '128', '52', '20', '7', '59', '3', '22', '19', '1', '1', '1', '1', '6', '6', '5', '5', '9', 6, NULL, NULL, NULL, NULL, NULL),
(180, 'Чандмань сумын цэцэрлэг', 6, 0, '1', 'С', '5', '4', '1', '167', '78', '130', '56', '37', '22', '116', '1', '18', '15', '1', '1', '', '', '5', '5', '4', '4', '8', 5, NULL, NULL, NULL, NULL, NULL),
(181, 'Шарга сумын цэцэрлэг', 6, 0, '1', 'С', '4', '3', '1', '101', '49', '74', '35', '27', '14', '73', '1', '13', '11', '1', '1', '', '', '4', '4', '3', '3', '5', 3, NULL, NULL, NULL, NULL, NULL),
(182, 'Эрдэнэ сумын цэцэрлэг', 6, 0, '1', 'С', '5', '4', '1', '135', '67', '82', '37', '53', '30', '95', '', '17', '14', '1', '1', '', '', '5', '5', '4', '4', '7', 4, NULL, NULL, NULL, NULL, NULL),
(183, 'Есөнбулаг сумын 10-р цэцэрлэг', 6, 0, '1', 'А', '8', '8', '', '223', '95', '223', '95', '', '', '19', '11', '34', '29', '1', '1', '1', '1', '10', '9', '9', '9', '13', 9, NULL, NULL, NULL, NULL, NULL),
(184, 'Есөнбулаг сумын 11-р цэцэрлэг', 6, 0, '1', 'А', '13', '13', '', '296', '139', '296', '139', '', '', '38', '', '47', '40', '1', '1', '1', '1', '15', '13', '13', '13', '17', 12, NULL, NULL, NULL, NULL, NULL),
(185, '1-р цэцэрлэг', 9, 0, '1', 'А', '4', '4', '', '98', '41', '98', '41', '', '', '4', '', '18', '15', '1', '1', '', '', '5', '5', '3', '3', '9', 6, NULL, NULL, NULL, NULL, NULL),
(186, '2-р цэцэрлэг', 9, 0, '1', 'А', '6', '6', '', '137', '72', '137', '72', '', '', '9', '', '24', '21', '1', '1', '1', '1', '7', '7', '6', '6', '9', 6, NULL, NULL, NULL, NULL, NULL),
(187, '3-р цэцэрлэг', 9, 0, '1', 'А', '6', '6', '', '134', '64', '134', '64', '', '', '6', '', '24', '22', '1', '1', '1', '1', '7', '7', '6', '6', '9', 7, NULL, NULL, NULL, NULL, NULL),
(188, '4-р цэцэрлэг', 9, 0, '1', 'А', '5', '5', '', '123', '52', '123', '52', '', '', '10', '1', '21', '18', '1', '1', '', '', '6', '6', '5', '5', '9', 6, NULL, NULL, NULL, NULL, NULL),
(189, '5-р цэцэрлэг', 9, 0, '1', 'А', '5', '5', '', '146', '86', '146', '86', '', '', '9', '', '21', '17', '1', '1', '', '', '6', '5', '5', '5', '9', 6, NULL, NULL, NULL, NULL, NULL),
(190, '6-р цэцэрлэг', 9, 0, '1', 'А', '5', '5', '', '115', '55', '115', '55', '', '', '7', '', '21', '18', '1', '1', '', '', '6', '6', '5', '5', '9', 6, NULL, NULL, NULL, NULL, NULL),
(191, 'Сайншанд сумын Зүүнбаянгийн хүүхдийн цэцэрлэг', 9, 0, '1', 'Б', '6', '6', '', '147', '66', '147', '66', '', '', '5', '', '31', '25', '1', '1', '1', '1', '8', '8', '6', '6', '15', 9, NULL, NULL, NULL, NULL, NULL),
(192, '8-р цэцэрлэг', 9, 0, '1', 'А', '4', '4', '', '135', '66', '135', '66', '', '', '6', '', '19', '16', '1', '1', '', '', '5', '4', '4', '4', '9', 7, NULL, NULL, NULL, NULL, NULL),
(193, '9-р цэцэрлэг', 9, 0, '1', 'А', '6', '6', '', '222', '119', '222', '119', '', '', '11', '', '27', '24', '1', '1', '1', '1', '8', '8', '6', '6', '11', 8, NULL, NULL, NULL, NULL, NULL),
(194, '10-р цэцэрлэг', 9, 0, '1', 'А', '6', '6', '', '186', '79', '186', '79', '', '', '20', '', '25', '22', '1', '1', '1', '1', '7', '7', '6', '6', '10', 7, NULL, NULL, NULL, NULL, NULL),
(195, '11-р цэцэрлэг', 9, 0, '1', 'А', '7', '7', '', '195', '110', '195', '110', '', '', '9', '9', '28', '25', '1', '1', '1', '1', '9', '9', '7', '7', '10', 7, NULL, NULL, NULL, NULL, NULL),
(196, '12-р цэцэрлэг', 9, 0, '1', 'А', '6', '6', '', '201', '106', '201', '106', '', '', '7', '', '25', '22', '1', '1', '1', '1', '7', '7', '6', '6', '10', 7, NULL, NULL, NULL, NULL, NULL),
(197, 'Айраг сумын цэцэрлэг', 9, 0, '1', 'С', '6', '5', '1', '143', '65', '125', '56', '18', '9', '45', '', '21', '17', '1', '1', '', '', '6', '5', '5', '5', '9', 6, NULL, NULL, NULL, NULL, NULL),
(198, 'Алтанширээ сумын цэцэрлэг', 9, 0, '1', 'С', '4', '3', '1', '69', '33', '53', '27', '16', '6', '28', '', '14', '11', '1', '1', '', '', '3', '3', '3', '3', '7', 4, NULL, NULL, NULL, NULL, NULL),
(199, 'Даланжаргалан сумын цэцэрлэг', 9, 0, '1', 'С', '8', '7', '1', '171', '82', '151', '74', '20', '8', '38', '', '33', '30', '1', '1', '1', '1', '8', '8', '7', '7', '16', 13, NULL, NULL, NULL, NULL, NULL),
(200, 'Дэлгэрэх сумын цэцэрлэг', 9, 0, '1', 'С', '4', '3', '1', '105', '49', '74', '35', '31', '14', '67', '', '15', '12', '1', '1', '', '', '3', '3', '3', '3', '8', 5, NULL, NULL, NULL, NULL, NULL),
(201, 'Замын-Үүд 1-р цэцэрлэг', 9, 0, '1', 'С', '6', '6', '', '186', '85', '186', '85', '', '', '1', '3', '26', '22', '1', '1', '1', '1', '8', '7', '6', '6', '10', 7, NULL, NULL, NULL, NULL, NULL),
(202, 'Замын-Үүд 2-р цэцэрлэг', 9, 0, '1', 'С', '6', '6', '', '186', '88', '186', '88', '', '', '6', '2', '25', '21', '1', '1', '1', '1', '7', '6', '6', '6', '10', 7, NULL, NULL, NULL, NULL, NULL),
(203, 'Замын-Үүд 3-р цэцэрлэг', 9, 0, '1', 'С', '8', '8', '', '211', '110', '211', '110', '', '', '9', '1', '32', '28', '1', '1', '1', '1', '10', '10', '8', '8', '12', 8, NULL, NULL, NULL, NULL, NULL),
(204, 'Замын-Үүд 4-р цэцэрлэг', 9, 0, '1', 'С', '7', '7', '', '138', '72', '138', '72', '', '', '2', '', '29', '25', '1', '1', '1', '1', '9', '9', '7', '7', '11', 7, NULL, NULL, NULL, NULL, NULL),
(205, 'Иххэт сумын цэцэрлэг', 9, 0, '1', 'С', '5', '4', '1', '117', '56', '99', '49', '18', '7', '60', '', '18', '16', '1', '1', '', '', '5', '5', '4', '4', '8', 6, NULL, NULL, NULL, NULL, NULL),
(206, 'Мандах сумын цэцэрлэг', 9, 0, '1', 'С', '4', '3', '1', '113', '52', '77', '35', '36', '17', '67', '', '18', '14', '1', '1', '', '', '4', '4', '3', '3', '10', 6, NULL, NULL, NULL, NULL, NULL),
(207, 'Сайхандулаан сумын цэцэрлэг', 9, 0, '1', 'С', '3', '2', '1', '67', '27', '45', '16', '22', '11', '37', '', '16', '13', '1', '1', '', '', '3', '3', '2', '2', '10', 7, NULL, NULL, NULL, NULL, NULL),
(208, 'Улаанбадрах сумын цэцэрлэг', 9, 0, '1', 'С', '3', '3', '', '74', '29', '51', '20', '23', '9', '45', '', '15', '13', '1', '1', '', '', '4', '4', '3', '3', '7', 5, NULL, NULL, NULL, NULL, NULL),
(209, 'Замын-Үүд сумын 7-р цэцэрлэг', 9, 0, '1', 'С', '6', '6', '', '177', '82', '177', '82', '', '', '2', '', '24', '21', '1', '1', '1', '1', '7', '7', '6', '6', '9', 6, NULL, NULL, NULL, NULL, NULL),
(210, 'Хатанбулаг сумын цэцэрлэг', 9, 0, '1', 'С', '7', '6', '1', '151', '82', '93', '52', '58', '30', '57', '2', '23', '21', '1', '1', '', '', '6', '6', '6', '6', '10', 8, NULL, NULL, NULL, NULL, NULL),
(211, 'Хөвсгөл сумын цэцэрлэг', 9, 0, '1', 'С', '4', '3', '1', '86', '35', '50', '22', '36', '13', '54', '1', '15', '12', '1', '1', '', '', '3', '3', '3', '3', '8', 5, NULL, NULL, NULL, NULL, NULL),
(212, 'Эрдэнэ сумын цэцэрлэг', 9, 0, '1', 'С', '5', '3', '2', '105', '57', '77', '44', '28', '13', '40', '', '16', '13', '1', '1', '', '', '4', '3', '3', '3', '8', 6, NULL, NULL, NULL, NULL, NULL),
(213, 'Өргөн сумын цэцэрлэг', 9, 0, '1', 'С', '4', '4', '', '111', '56', '96', '48', '15', '8', '20', '', '18', '15', '1', '1', '', '', '5', '5', '4', '4', '8', 5, NULL, NULL, NULL, NULL, NULL),
(214, 'Замын үүд сумын 5-р цэцэрлэг', 9, 0, '1', 'С', '8', '8', '', '221', '114', '221', '114', '', '', '6', '', '34', '28', '1', '1', '1', '1', '9', '9', '8', '8', '15', 9, NULL, NULL, NULL, NULL, NULL),
(215, 'Сайншанд сумын 13-р цэцэрлэг', 9, 0, '1', 'А', '4', '4', '', '157', '74', '157', '74', '', '', '4', '', '20', '17', '1', '1', '', '', '5', '5', '4', '4', '10', 7, NULL, NULL, NULL, NULL, NULL),
(216, 'Замын-Үүд сумын 6-р цэцэрлэг', 9, 0, '1', 'С', '4', '4', '', '144', '76', '144', '76', '', '', '2', '', '19', '16', '1', '1', '', '', '4', '4', '4', '4', '10', 7, NULL, NULL, NULL, NULL, NULL),
(217, 'Сайншанд сумын 14-р цэцэрлэг', 9, 0, '1', 'А', '4', '4', '', '123', '60', '123', '60', '', '', '13', '', '20', '17', '1', '1', '', '', '5', '5', '4', '4', '10', 7, NULL, NULL, NULL, NULL, NULL),
(218, 'Болор-Эрдэнэ цэцэрлэг', 9, 0, '2', 'С', '1', '1', '', '6', '3', '6', '3', '', '', '', '', '7', '6', '1', '1', '', '', '1', '1', '1', '1', '4', 3, NULL, NULL, NULL, NULL, NULL),
(219, 'Гурван билэг цэцэрлэг', 9, 0, '2', 'С', '1', '1', '', '34', '20', '34', '20', '', '', '', '', '5', '4', '1', '1', '', '', '', '', '1', '1', '3', 2, NULL, NULL, NULL, NULL, NULL),
(220, 'Жаргалан цэцэрлэг', 9, 0, '2', 'С', '2', '2', '', '41', '18', '41', '18', '', '', '', '', '11', '8', '1', '1', '', '', '2', '2', '2', '2', '6', 3, NULL, NULL, NULL, NULL, NULL),
(221, '1-р цэцэрлэг', 10, 0, '1', 'А', '8', '8', '', '284', '136', '284', '136', '', '', '15', '', '32', '26', '1', '1', '1', '1', '9', '8', '8', '8', '13', 8, NULL, NULL, NULL, NULL, NULL),
(222, '2-р цэцэрлэг', 10, 0, '1', 'А', '10', '10', '', '315', '156', '315', '156', '', '', '38', '', '45', '33', '1', '1', '1', '1', '11', '11', '10', '10', '22', 10, NULL, NULL, NULL, NULL, NULL),
(223, '3-р цэцэрлэг', 10, 0, '1', 'А', '8', '8', '', '179', '81', '179', '81', '', '', '27', '7', '33', '26', '1', '1', '', '', '9', '8', '8', '8', '15', 9, NULL, NULL, NULL, NULL, NULL),
(224, '4-р цэцэрлэг', 10, 0, '1', 'А', '6', '6', '', '216', '123', '216', '123', '', '', '23', '', '25', '20', '1', '1', '1', '1', '7', '6', '6', '6', '10', 6, NULL, NULL, NULL, NULL, NULL),
(225, '5-р цэцэрлэг', 10, 0, '1', 'А', '5', '5', '', '112', '52', '112', '52', '', '', '11', '', '24', '20', '1', '1', '1', '1', '6', '6', '5', '5', '11', 7, NULL, NULL, NULL, NULL, NULL),
(226, '6-р цэцэрлэг', 10, 0, '1', 'А', '8', '8', '', '230', '108', '230', '108', '', '', '34', '4', '46', '27', '1', '1', '1', '1', '9', '9', '8', '8', '27', 8, NULL, NULL, NULL, NULL, NULL),
(227, '7-р цэцэрлэг', 10, 0, '1', 'А', '6', '6', '', '232', '119', '232', '119', '', '', '26', '4', '26', '21', '1', '1', '1', '1', '7', '7', '6', '6', '11', 6, NULL, NULL, NULL, NULL, NULL),
(228, '8-р цэцэрлэг', 10, 0, '1', 'А', '12', '12', '', '367', '180', '367', '180', '', '', '32', '16', '41', '37', '1', '1', '1', '1', '15', '15', '12', '12', '12', 8, NULL, NULL, NULL, NULL, NULL),
(229, '10-р цэцэрлэг', 10, 0, '1', 'А', '12', '12', '', '406', '190', '406', '190', '', '', '20', '5', '45', '38', '1', '1', '1', '1', '14', '13', '12', '12', '17', 11, NULL, NULL, NULL, NULL, NULL),
(230, '11-р цэцэрлэг', 10, 0, '1', 'А', '6', '6', '', '189', '105', '189', '105', '', '', '8', '1', '23', '19', '1', '1', '1', '1', '7', '6', '6', '6', '8', 5, NULL, NULL, NULL, NULL, NULL),
(231, '12-р цэцэрлэг', 10, 0, '1', 'А', '14', '14', '', '389', '209', '389', '209', '', '', '29', '3', '47', '42', '1', '1', '1', '1', '16', '16', '14', '14', '15', 10, NULL, NULL, NULL, NULL, NULL),
(232, '14-р цэцэрлэг', 10, 0, '1', 'А', '11', '11', '', '366', '169', '366', '169', '', '', '31', '1', '37', '32', '1', '1', '1', '1', '12', '11', '11', '11', '12', 8, NULL, NULL, NULL, NULL, NULL),
(233, 'Баян-Уул сумын цэцэрлэг', 10, 0, '1', 'С', '12', '12', '', '306', '154', '296', '152', '10', '2', '76', '', '46', '38', '1', '1', '1', '1', '14', '14', '12', '12', '18', 10, NULL, NULL, NULL, NULL, NULL),
(234, 'Баяндун сумын цэцэрлэг', 10, 0, '1', 'С', '8', '8', '', '214', '95', '214', '95', '', '', '79', '4', '34', '26', '1', '1', '1', '1', '9', '9', '8', '8', '15', 7, NULL, NULL, NULL, NULL, NULL),
(235, 'Баянтүмэн сумын цэцэрлэг', 10, 0, '1', 'С', '7', '6', '1', '135', '75', '128', '71', '7', '4', '45', '1', '26', '19', '1', '1', '1', '1', '7', '7', '6', '5', '11', 5, NULL, NULL, NULL, NULL, NULL),
(236, 'Булган сумын цэцэрлэг', 10, 0, '1', 'С', '5', '4', '1', '125', '61', '100', '50', '25', '11', '59', '', '21', '15', '1', '1', '1', '1', '4', '4', '4', '4', '11', 5, NULL, NULL, NULL, NULL, NULL),
(237, 'Гурванзагал сумын цэцэрлэг', 10, 0, '1', 'С', '3', '3', '', '75', '34', '75', '34', '', '', '27', '', '16', '11', '1', '1', '1', '1', '3', '3', '3', '3', '8', 3, NULL, NULL, NULL, NULL, NULL),
(238, 'Дашбалбар сумын цэцэрлэг', 10, 0, '1', 'С', '8', '8', '', '230', '122', '230', '122', '', '', '132', '2', '37', '32', '1', '1', '1', '1', '9', '9', '8', '8', '18', 13, NULL, NULL, NULL, NULL, NULL),
(239, '16 дугаар цэцэрлэг', 10, 0, '1', 'А', '4', '4', '', '119', '58', '119', '58', '', '', '14', '', '17', '15', '1', '1', '1', '1', '4', '4', '4', '4', '7', 5, NULL, NULL, NULL, NULL, NULL),
(240, 'Матад сумын цэцэрлэг', 10, 0, '1', 'С', '5', '5', '', '152', '74', '151', '74', '1', '', '29', '', '25', '21', '1', '1', '1', '1', '6', '6', '5', '5', '12', 8, NULL, NULL, NULL, NULL, NULL),
(241, 'Сэргэлэн сумын цэцэрлэг', 10, 0, '1', 'С', '5', '4', '1', '136', '67', '116', '57', '20', '10', '51', '2', '19', '14', '1', '1', '1', '1', '4', '4', '4', '4', '9', 4, NULL, NULL, NULL, NULL, NULL),
(242, 'Халх гол сумын цэцэрлэг', 10, 0, '1', 'С', '10', '8', '2', '235', '115', '209', '101', '26', '14', '40', '', '30', '25', '1', '1', '', '', '8', '8', '8', '8', '13', 8, NULL, NULL, NULL, NULL, NULL),
(243, 'Хөлөнбуйр сумын цэцэрлэг', 10, 0, '1', 'С', '5', '5', '', '132', '73', '132', '73', '', '', '26', '', '22', '17', '1', '1', '1', '1', '5', '5', '5', '5', '10', 5, NULL, NULL, NULL, NULL, NULL),
(244, 'Цагаан-Овоо сумын цэцэрлэг', 10, 0, '1', 'С', '7', '6', '1', '207', '103', '197', '98', '10', '5', '100', '', '25', '22', '1', '1', '1', '1', '6', '6', '6', '6', '11', 8, NULL, NULL, NULL, NULL, NULL),
(245, 'Чойбалсан сумын цэцэрлэг', 10, 0, '1', 'С', '5', '4', '1', '139', '68', '117', '61', '22', '7', '57', '', '23', '18', '1', '1', '1', '1', '5', '5', '4', '4', '12', 7, NULL, NULL, NULL, NULL, NULL),
(246, 'Чулуунхороот сумын цэцэрлэг', 10, 0, '1', 'С', '4', '4', '', '127', '54', '127', '54', '', '', '29', '', '12', '12', '1', '1', '', '', '4', '4', '4', '4', '3', 3, NULL, NULL, NULL, NULL, NULL),
(247, 'Шинэ хөгжил', 10, 0, '1', 'А', '4', '4', '', '143', '81', '143', '81', '', '', '13', '', '17', '13', '', '', '1', '1', '4', '4', '4', '4', '8', 4, NULL, NULL, NULL, NULL, NULL),
(248, '15-р цэцэрлэг', 10, 0, '1', 'А', '6', '6', '', '192', '103', '192', '103', '', '', '23', '', '25', '20', '1', '1', '1', '1', '7', '6', '6', '6', '10', 6, NULL, NULL, NULL, NULL, NULL),
(249, '9-р цэцэрлэг', 10, 0, '1', 'А', '10', '10', '', '299', '144', '299', '144', '', '', '15', '', '35', '30', '1', '1', '1', '1', '11', '10', '10', '10', '12', 8, NULL, NULL, NULL, NULL, NULL),
(250, 'Хэрлэн сумын 17-р цэцэрлэг', 10, 0, '1', 'А', '6', '6', '', '222', '109', '222', '109', '', '', '14', '', '27', '22', '1', '1', '1', '1', '8', '7', '6', '6', '11', 7, NULL, NULL, NULL, NULL, NULL),
(251, 'Хэрлэн сумын 18-р цэцэрлэг', 10, 0, '1', 'С', '5', '5', '', '125', '49', '125', '49', '', '', '9', '', '23', '18', '1', '1', '1', '1', '6', '5', '5', '5', '10', 6, NULL, NULL, NULL, NULL, NULL),
(252, 'Бөмбөөлэй цэцэрлэг', 10, 0, '2', 'А', '2', '2', '', '60', '27', '60', '27', '', '', '', '', '10', '9', '1', '1', '1', '1', '2', '2', '2', '2', '4', 3, NULL, NULL, NULL, NULL, NULL),
(253, 'Дорнод бүжин цэцэрлэг', 10, 0, '2', 'А', '1', '1', '', '21', '11', '21', '11', '', '', '1', '', '4', '4', '1', '1', '1', '1', '1', '1', '1', '1', '', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `statistic` (`id`, `name`, `city`, `district`, `type`, `loc`, `buleg`, `buleg_prim`, `buleg_sla`, `child_total`, `child_girl`, `child_prim_total`, `child_prim_girl`, `child_alter_total`, `child_alter_girl`, `child_herder`, `child_disabled`, `employees_total`, `employees_female`, `director`, `director_female`, `manager`, `manager_female`, `teacher_total`, `teacher_female`, `subteacher_total`, `subteacher_female`, `others_total`, `others_female`, `address`, `contact`, `phone`, `director_name`, `email`) VALUES
(254, 'Сэргэлэн багачууд цэцэрлэг', 10, 0, '2', 'А', '5', '5', '', '150', '74', '150', '74', '', '', '1', '1', '21', '17', '1', '1', '', '', '6', '6', '5', '5', '9', 5, NULL, NULL, NULL, NULL, NULL),
(255, '\"Нарлаг ордон\" цэцэрлэг', 10, 0, '2', 'А', '0', '', '', '0', '0', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', '', '', 0, NULL, NULL, NULL, NULL, NULL),
(256, '\"Саруул ирээдүй\" цэцэрлэг', 10, 0, '2', 'А', '4', '4', '', '119', '58', '119', '58', '', '', '5', '', '14', '10', '1', '1', '', '', '4', '3', '4', '4', '5', 2, NULL, NULL, NULL, NULL, NULL),
(257, 'Адаацаг сумын цэцэрлэг', 11, 0, '1', 'С', '4', '4', '', '154', '71', '102', '45', '52', '26', '57', '', '18', '16', '1', '1', '1', '1', '5', '5', '4', '4', '7', 5, NULL, NULL, NULL, NULL, NULL),
(258, 'Баянжаргалан сумын цэцэрлэг', 11, 0, '1', 'С', '5', '4', '1', '93', '48', '77', '38', '16', '10', '43', '1', '18', '15', '1', '1', '1', '1', '4', '4', '4', '4', '8', 5, NULL, NULL, NULL, NULL, NULL),
(259, 'Говь-Угтаал сумын цэцэрлэг', 11, 0, '1', 'С', '5', '4', '1', '107', '39', '88', '35', '19', '4', '78', '1', '16', '14', '1', '1', '1', '1', '4', '4', '4', '4', '6', 4, NULL, NULL, NULL, NULL, NULL),
(260, 'Гурвансайхан сумын цэцэрлэг', 11, 0, '1', 'С', '5', '4', '1', '124', '61', '102', '50', '22', '11', '81', '', '17', '14', '1', '1', '', '', '5', '5', '4', '4', '7', 4, NULL, NULL, NULL, NULL, NULL),
(261, 'Дэлгэрхангай сумын цэцэрлэг', 11, 0, '1', 'С', '5', '4', '1', '135', '70', '115', '59', '20', '11', '80', '', '19', '16', '1', '1', '1', '1', '5', '5', '4', '4', '8', 5, NULL, NULL, NULL, NULL, NULL),
(262, 'Дэлгэрцогт сумын цэцэрлэг', 11, 0, '1', 'С', '5', '4', '1', '104', '51', '88', '48', '16', '3', '61', '', '16', '13', '1', '1', '', '', '5', '5', '4', '4', '6', 3, NULL, NULL, NULL, NULL, NULL),
(263, 'Дэрэн сумын цэцэрлэг', 11, 0, '1', 'С', '5', '4', '1', '157', '80', '98', '56', '59', '24', '113', '1', '17', '14', '1', '1', '', '', '5', '5', '4', '4', '7', 4, NULL, NULL, NULL, NULL, NULL),
(264, 'Луус сумын цэцэрлэг', 11, 0, '1', 'С', '4', '3', '1', '94', '41', '65', '29', '29', '12', '48', '', '15', '12', '1', '1', '', '', '4', '4', '3', '3', '7', 4, NULL, NULL, NULL, NULL, NULL),
(265, 'Сайнцагаан-1-р цэцэрлэг', 11, 0, '1', 'А', '6', '6', '', '198', '94', '198', '94', '', '', '18', '1', '25', '21', '1', '1', '1', '1', '7', '7', '6', '6', '10', 6, NULL, NULL, NULL, NULL, NULL),
(266, 'Сайнцагаан-2-р цэцэрлэг', 11, 0, '1', 'А', '4', '4', '', '127', '69', '127', '69', '', '', '16', '1', '19', '15', '1', '1', '1', '1', '4', '4', '4', '4', '9', 5, NULL, NULL, NULL, NULL, NULL),
(267, 'Сайнцагаан-3-р цэцэрлэг', 11, 0, '1', 'А', '7', '7', '', '260', '133', '260', '133', '', '', '48', '3', '29', '24', '1', '1', '1', '1', '8', '7', '7', '7', '12', 8, NULL, NULL, NULL, NULL, NULL),
(268, 'Сайнцагаан-4-р цэцэрлэг', 11, 0, '1', 'А', '5', '5', '', '235', '125', '224', '119', '11', '6', '15', '2', '24', '20', '1', '1', '1', '1', '6', '6', '5', '5', '11', 7, NULL, NULL, NULL, NULL, NULL),
(269, 'Сайнцагаан-5-р цэцэрлэг', 11, 0, '1', 'А', '6', '6', '', '202', '91', '202', '91', '', '', '40', '1', '26', '22', '1', '1', '1', '1', '7', '7', '6', '6', '11', 7, NULL, NULL, NULL, NULL, NULL),
(270, 'Сайнцагаан-6-р цэцэрлэг', 11, 0, '1', 'А', '5', '5', '', '188', '97', '182', '94', '6', '3', '17', '4', '23', '19', '1', '1', '1', '1', '6', '6', '5', '5', '10', 6, NULL, NULL, NULL, NULL, NULL),
(271, 'Сайнцагаан-7-р цэцэрлэг', 11, 0, '1', 'А', '4', '4', '', '158', '87', '152', '85', '6', '2', '32', '', '21', '16', '1', '1', '1', '1', '5', '5', '4', '4', '10', 5, NULL, NULL, NULL, NULL, NULL),
(272, 'Сайхан-Овоо сумын цэцэрлэг', 11, 0, '1', 'С', '5', '4', '1', '114', '56', '71', '37', '43', '19', '50', '1', '17', '15', '1', '1', '1', '1', '4', '4', '4', '4', '7', 5, NULL, NULL, NULL, NULL, NULL),
(273, 'Хулд сумын цэцэрлэг', 11, 0, '1', 'С', '5', '4', '1', '132', '59', '105', '47', '27', '12', '55', '', '18', '13', '1', '1', '1', '1', '4', '4', '4', '4', '8', 3, NULL, NULL, NULL, NULL, NULL),
(274, 'Цагаандэлгэр сумын цэцэрлэг', 11, 0, '1', 'С', '3', '2', '1', '52', '31', '40', '26', '12', '5', '25', '', '13', '10', '1', '1', '', '', '2', '2', '2', '2', '8', 5, NULL, NULL, NULL, NULL, NULL),
(275, 'Эрдэнэдалай сумын цэцэрлэг', 11, 0, '1', 'С', '10', '10', '', '376', '176', '299', '143', '77', '33', '251', '1', '34', '30', '1', '1', '1', '1', '11', '11', '10', '10', '11', 7, NULL, NULL, NULL, NULL, NULL),
(276, 'Өлзийт сумын цэцэрлэг', 11, 0, '1', 'С', '4', '3', '1', '98', '44', '75', '37', '23', '7', '53', '', '14', '11', '1', '1', '', '', '3', '3', '3', '3', '7', 4, NULL, NULL, NULL, NULL, NULL),
(277, 'Өндөршил сумын цэцэрлэг', 11, 0, '1', 'С', '4', '4', '', '109', '47', '100', '44', '9', '3', '66', '', '16', '14', '1', '1', '1', '1', '4', '4', '4', '4', '6', 4, NULL, NULL, NULL, NULL, NULL),
(278, 'Сайнцагаан сумын 8-р цэцэрлэг', 11, 0, '1', 'А', '4', '4', '', '174', '82', '169', '81', '5', '1', '48', '2', '21', '17', '1', '1', '1', '1', '5', '5', '4', '4', '10', 6, NULL, NULL, NULL, NULL, NULL),
(279, 'Алдархаан сумын цэцэрлэг', 12, 0, '1', 'С', '3', '2', '1', '67', '31', '48', '24', '19', '7', '9', '', '10', '8', '1', '1', '', '', '2', '2', '2', '2', '5', 3, NULL, NULL, NULL, NULL, NULL),
(280, 'Асгат сумын цэцэрлэг', 12, 0, '1', 'С', '4', '3', '1', '77', '34', '68', '30', '9', '4', '22', '', '13', '10', '1', '1', '', '', '3', '3', '3', '3', '6', 3, NULL, NULL, NULL, NULL, NULL),
(281, 'Баянтэс сумын цэцэрлэг', 12, 0, '1', 'С', '7', '7', '', '153', '64', '153', '64', '', '', '23', '', '25', '22', '1', '1', '1', '1', '9', '8', '7', '7', '7', 5, NULL, NULL, NULL, NULL, NULL),
(282, 'Баянхайрхан сумын цэцэрлэг', 12, 0, '1', 'С', '4', '4', '', '98', '54', '98', '54', '', '', '39', '', '14', '12', '1', '1', '', '', '4', '4', '4', '4', '5', 3, NULL, NULL, NULL, NULL, NULL),
(283, 'Дөрвөлжин сумын цэцэрлэг', 12, 0, '1', 'С', '4', '4', '', '99', '45', '99', '45', '', '', '32', '', '14', '13', '1', '1', '', '', '4', '4', '4', '4', '5', 4, NULL, NULL, NULL, NULL, NULL),
(284, 'Завханмандал сумын цэцэрлэг', 12, 0, '1', 'С', '4', '4', '', '87', '41', '82', '38', '5', '3', '40', '2', '18', '15', '1', '1', '1', '1', '6', '5', '4', '4', '6', 4, NULL, NULL, NULL, NULL, NULL),
(285, 'Идэр сумын цэцэрлэг', 12, 0, '1', 'С', '4', '4', '', '132', '64', '132', '64', '', '', '37', '', '13', '12', '1', '1', '', '', '5', '5', '4', '4', '3', 2, NULL, NULL, NULL, NULL, NULL),
(286, 'Их-Уул сумын 2-р цэцэрлэг', 12, 0, '1', 'С', '4', '4', '', '102', '43', '102', '43', '', '', '19', '', '18', '15', '1', '1', '', '', '5', '5', '4', '4', '8', 5, NULL, NULL, NULL, NULL, NULL),
(287, 'Их-Уул сумын цэцэрлэг', 12, 0, '1', 'С', '8', '8', '', '239', '114', '235', '111', '4', '3', '130', '1', '34', '28', '1', '1', '1', '1', '10', '10', '8', '8', '14', 8, NULL, NULL, NULL, NULL, NULL),
(288, 'Нөмрөг сумын цэцэрлэг', 12, 0, '1', 'С', '3', '3', '', '87', '42', '80', '38', '7', '4', '21', '', '12', '11', '1', '1', '', '', '4', '4', '3', '3', '4', 3, NULL, NULL, NULL, NULL, NULL),
(289, 'Отгон сумын цэцэрлэг', 12, 0, '1', 'С', '5', '4', '1', '142', '71', '122', '60', '20', '11', '76', '', '16', '12', '1', '1', '', '', '4', '4', '4', '4', '7', 3, NULL, NULL, NULL, NULL, NULL),
(290, 'Сантмаргац сумын цэцэрлэг', 12, 0, '1', 'С', '5', '4', '1', '121', '50', '101', '43', '20', '7', '56', '', '17', '14', '1', '1', '', '', '5', '5', '4', '4', '7', 4, NULL, NULL, NULL, NULL, NULL),
(291, 'Сонгино сумын цэцэрлэг', 12, 0, '1', 'С', '5', '4', '1', '115', '60', '100', '51', '15', '9', '43', '', '15', '14', '1', '1', '', '', '4', '4', '4', '4', '6', 5, NULL, NULL, NULL, NULL, NULL),
(292, 'Тосонцэнгэл 1-р цэцэрлэг', 12, 0, '1', 'С', '5', '4', '1', '133', '71', '129', '71', '4', '', '16', '', '18', '14', '1', '1', '', '', '5', '5', '4', '4', '8', 4, NULL, NULL, NULL, NULL, NULL),
(293, 'Тосонцэнгэл 2-р цэцэрлэг', 12, 0, '1', 'С', '4', '4', '', '148', '66', '148', '66', '', '', '3', '', '18', '14', '1', '1', '', '', '5', '5', '4', '4', '8', 4, NULL, NULL, NULL, NULL, NULL),
(294, 'Тосонцэнгэл 3-р цэцэрлэг', 12, 0, '1', 'С', '3', '3', '', '68', '27', '68', '27', '', '', '9', '', '15', '11', '1', '1', '', '', '4', '4', '3', '3', '7', 3, NULL, NULL, NULL, NULL, NULL),
(295, 'Тосонцэнгэл 4-р цэцэрлэг', 12, 0, '1', 'С', '4', '3', '1', '114', '58', '96', '45', '18', '13', '32', '', '14', '10', '1', '1', '', '', '4', '4', '3', '3', '6', 2, NULL, NULL, NULL, NULL, NULL),
(296, 'Тосонцэнгэл 5-р цэцэрлэг', 12, 0, '1', 'С', '4', '4', '', '150', '84', '150', '84', '', '', '11', '', '17', '13', '1', '1', '', '', '5', '5', '4', '4', '7', 3, NULL, NULL, NULL, NULL, NULL),
(297, 'Тэлмэн сумын цэцэрлэг', 12, 0, '1', 'С', '6', '5', '1', '183', '80', '154', '65', '29', '15', '99', '', '20', '17', '1', '1', '1', '1', '6', '6', '5', '5', '7', 4, NULL, NULL, NULL, NULL, NULL),
(298, 'Тэс сумын цэцэрлэг', 12, 0, '1', 'С', '7', '6', '1', '181', '89', '166', '85', '15', '4', '35', '', '24', '19', '1', '1', '1', '1', '6', '6', '6', '6', '10', 5, NULL, NULL, NULL, NULL, NULL),
(299, 'Түдэвтэй сумын цэцэрлэг', 12, 0, '1', 'С', '3', '3', '', '79', '34', '79', '34', '', '', '6', '', '11', '10', '1', '1', '', '', '3', '3', '3', '3', '4', 3, NULL, NULL, NULL, NULL, NULL),
(300, 'Улиастай 1-р цэцэрлэг', 12, 0, '1', 'А', '12', '12', '', '399', '199', '399', '199', '', '', '16', '2', '42', '37', '1', '1', '1', '1', '13', '13', '12', '12', '15', 10, NULL, NULL, NULL, NULL, NULL),
(301, 'Улиастай 2-р цэцэрлэг', 12, 0, '1', 'А', '7', '7', '', '202', '100', '202', '100', '', '', '15', '2', '27', '22', '1', '1', '1', '1', '8', '8', '7', '7', '10', 5, NULL, NULL, NULL, NULL, NULL),
(302, 'Улиастай 3-р цэцэрлэг', 12, 0, '1', 'А', '9', '9', '', '309', '138', '309', '138', '', '', '36', '', '31', '27', '1', '1', '1', '1', '10', '10', '9', '9', '10', 6, NULL, NULL, NULL, NULL, NULL),
(303, 'Улиастай 4-р цэцэрлэг', 12, 0, '1', 'А', '6', '6', '', '180', '97', '180', '97', '', '', '37', '', '24', '20', '1', '1', '1', '1', '7', '7', '6', '6', '9', 5, NULL, NULL, NULL, NULL, NULL),
(304, 'Улиастай 5-р цэцэрлэг', 12, 0, '1', 'А', '9', '8', '1', '285', '144', '278', '142', '7', '2', '20', '', '27', '23', '1', '1', '', '', '9', '9', '8', '8', '9', 5, NULL, NULL, NULL, NULL, NULL),
(305, 'Улиастай 6-р цэцэрлэг', 12, 0, '1', 'А', '4', '4', '', '99', '47', '99', '47', '', '', '7', '', '19', '15', '1', '1', '', '', '5', '5', '4', '4', '9', 5, NULL, NULL, NULL, NULL, NULL),
(306, 'Улиастай 7-р цэцэрлэг', 12, 0, '1', 'А', '4', '4', '', '116', '64', '116', '64', '', '', '20', '', '21', '12', '1', '1', '', '', '5', '4', '4', '4', '11', 3, NULL, NULL, NULL, NULL, NULL),
(307, 'Улиастай 8-р цэцэрлэг', 12, 0, '1', 'А', '5', '5', '', '133', '60', '133', '60', '', '', '16', '', '23', '17', '1', '1', '1', '1', '6', '6', '5', '5', '10', 4, NULL, NULL, NULL, NULL, NULL),
(308, 'Улиастай 9-р цэцэрлэг', 12, 0, '1', 'А', '5', '5', '', '94', '46', '94', '46', '', '', '8', '', '22', '17', '1', '1', '1', '1', '6', '6', '5', '5', '9', 4, NULL, NULL, NULL, NULL, NULL),
(309, 'Ургамал сумын цэцэрлэг', 12, 0, '1', 'С', '4', '4', '', '94', '44', '94', '44', '', '', '48', '', '16', '13', '1', '1', '', '', '4', '4', '4', '4', '7', 4, NULL, NULL, NULL, NULL, NULL),
(310, 'Цагаанхайрхан сумын цэцэрлэг', 12, 0, '1', 'С', '3', '2', '1', '81', '39', '64', '35', '17', '4', '35', '', '12', '9', '1', '1', '', '', '2', '2', '2', '2', '7', 4, NULL, NULL, NULL, NULL, NULL),
(311, 'Цагаанчулуут сумын цэцэрлэг', 12, 0, '1', 'С', '4', '4', '', '85', '41', '85', '41', '', '', '33', '1', '17', '14', '1', '1', '', '', '5', '5', '4', '4', '7', 4, NULL, NULL, NULL, NULL, NULL),
(312, 'Цэцэн-Уул сумын цэцэрлэг', 12, 0, '1', 'С', '4', '4', '', '82', '37', '82', '37', '', '', '35', '', '16', '12', '1', '1', '', '', '5', '5', '4', '4', '6', 2, NULL, NULL, NULL, NULL, NULL),
(313, 'Шилүүстэй сумын цэцэрлэг', 12, 0, '1', 'С', '4', '4', '', '95', '47', '95', '47', '', '', '54', '', '15', '11', '1', '1', '', '', '4', '4', '4', '4', '6', 2, NULL, NULL, NULL, NULL, NULL),
(314, 'Эрдэнэхайрхан сумын цэцэрлэг', 12, 0, '1', 'С', '2', '2', '', '55', '27', '55', '27', '', '', '28', '', '10', '9', '1', '1', '', '', '2', '2', '2', '2', '5', 4, NULL, NULL, NULL, NULL, NULL),
(315, 'Яруу сумын цэцэрлэг', 12, 0, '1', 'С', '3', '3', '', '66', '37', '66', '37', '', '', '27', '2', '15', '11', '1', '1', '', '', '3', '3', '3', '3', '8', 4, NULL, NULL, NULL, NULL, NULL),
(316, 'Тосонцэнгэл сумын 6-р цэцэрлэг', 12, 0, '1', 'С', '3', '3', '', '135', '70', '135', '70', '', '', '22', '1', '14', '10', '1', '1', '', '', '4', '4', '3', '3', '6', 2, NULL, NULL, NULL, NULL, NULL),
(317, 'Багачууд цэцэрлэг', 12, 0, '2', 'А', '2', '2', '', '21', '13', '21', '13', '', '', '3', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(318, 'Гэгээ цэцэрлэг', 12, 0, '2', 'С', '2', '2', '', '40', '22', '40', '22', '', '', '13', '', '8', '6', '1', '1', '', '', '2', '2', '2', '1', '3', 2, NULL, NULL, NULL, NULL, NULL),
(319, 'Хүүхдийн Эхлэл-Элит кидс цэцэрлэг', 12, 0, '2', 'А', '1', '1', '', '31', '14', '31', '14', '', '', '1', '', '4', '4', '1', '1', '', '', '1', '1', '1', '1', '1', 1, NULL, NULL, NULL, NULL, NULL),
(320, 'СМАРТ КИДС хүүхдийн цэцэрлэг', 12, 0, '2', 'А', '2', '2', '', '20', '17', '20', '17', '', '', '', '', '8', '7', '1', '1', '', '', '2', '2', '2', '2', '3', 2, NULL, NULL, NULL, NULL, NULL),
(321, 'Арвайхээр-1-р цэцэрлэг', 14, 0, '1', 'А', '5', '5', '', '146', '72', '146', '72', '', '', '29', '', '25', '20', '1', '1', '1', '1', '6', '6', '5', '5', '12', 7, NULL, NULL, NULL, NULL, NULL),
(322, 'Арвайхээр-2-р цэцэрлэг', 14, 0, '1', 'А', '12', '8', '4', '445', '219', '285', '135', '160', '84', '40', '', '32', '29', '1', '1', '1', '1', '9', '9', '8', '8', '13', 10, NULL, NULL, NULL, NULL, NULL),
(323, 'Арвайхээр-3-р цэцэрлэг', 14, 0, '1', 'А', '5', '5', '', '170', '91', '170', '91', '', '', '25', '', '25', '21', '1', '1', '1', '1', '6', '6', '5', '5', '12', 8, NULL, NULL, NULL, NULL, NULL),
(324, 'Арвайхээр-4-р цэцэрлэг', 14, 0, '1', 'А', '7', '7', '', '251', '134', '251', '134', '', '', '3', '2', '32', '28', '1', '1', '1', '1', '9', '9', '7', '7', '14', 10, NULL, NULL, NULL, NULL, NULL),
(325, 'Арвайхээр-5-р цэцэрлэг', 14, 0, '1', 'А', '6', '6', '', '229', '107', '229', '107', '', '', '30', '1', '27', '24', '1', '', '1', '1', '7', '7', '6', '6', '12', 10, NULL, NULL, NULL, NULL, NULL),
(326, 'Арвайхээр-6-р цэцэрлэг', 14, 0, '1', 'А', '7', '7', '', '220', '109', '220', '109', '', '', '16', '1', '30', '27', '1', '1', '1', '1', '8', '8', '7', '7', '13', 10, NULL, NULL, NULL, NULL, NULL),
(327, 'Арвайхээр-7-р цэцэрлэг', 14, 0, '1', 'А', '7', '7', '', '222', '113', '222', '113', '', '', '16', '', '29', '24', '1', '1', '1', '1', '8', '7', '7', '7', '12', 8, NULL, NULL, NULL, NULL, NULL),
(328, 'Арвайхээр-8-р цэцэрлэг', 14, 0, '1', 'А', '9', '9', '', '316', '154', '316', '154', '', '', '17', '1', '35', '31', '1', '1', '1', '1', '10', '10', '9', '9', '14', 10, NULL, NULL, NULL, NULL, NULL),
(329, 'Арвайхээр-9-р цэцэрлэг', 14, 0, '1', 'А', '6', '6', '', '211', '108', '211', '108', '', '', '22', '1', '29', '24', '1', '', '1', '1', '7', '6', '6', '6', '14', 11, NULL, NULL, NULL, NULL, NULL),
(330, 'Баруунбаян-Улаан сумын цэцэрлэг', 14, 0, '1', 'С', '4', '4', '', '248', '120', '112', '57', '136', '63', '70', '', '16', '14', '1', '1', '', '', '5', '5', '4', '4', '6', 4, NULL, NULL, NULL, NULL, NULL),
(331, 'Бат-Өлзий 1-р цэцэрлэг', 14, 0, '1', 'С', '11', '10', '1', '398', '186', '320', '151', '78', '35', '54', '2', '33', '30', '1', '1', '1', '1', '10', '10', '10', '10', '11', 8, NULL, NULL, NULL, NULL, NULL),
(332, 'Бат-Өлзий 2-р цэцэрлэг', 14, 0, '1', 'С', '6', '5', '1', '211', '90', '137', '63', '74', '27', '116', '', '18', '17', '1', '1', '', '', '5', '5', '5', '5', '7', 6, NULL, NULL, NULL, NULL, NULL),
(333, 'Баян Өндөр сумын цэцэрлэг', 14, 0, '1', 'С', '6', '5', '1', '254', '112', '135', '70', '119', '42', '6', '', '18', '17', '1', '1', '1', '1', '6', '6', '5', '5', '5', 4, NULL, NULL, NULL, NULL, NULL),
(334, 'Баянгол сумын цэцэрлэг', 14, 0, '1', 'С', '9', '5', '4', '243', '123', '122', '68', '121', '55', '166', '', '18', '15', '1', '1', '1', '1', '6', '6', '5', '5', '5', 2, NULL, NULL, NULL, NULL, NULL),
(335, 'Богд сумын 1-р цэцэрлэг', 14, 0, '1', 'С', '5', '4', '1', '203', '96', '156', '75', '47', '21', '47', '', '14', '12', '1', '1', '', '', '4', '4', '3', '3', '6', 4, NULL, NULL, NULL, NULL, NULL),
(336, 'Бүрд сумын цэцэрлэг', 14, 0, '1', 'С', '4', '3', '1', '188', '91', '91', '45', '97', '46', '88', '', '13', '12', '1', '1', '', '', '3', '3', '3', '3', '6', 5, NULL, NULL, NULL, NULL, NULL),
(337, 'Гучин-Ус сумын цэцэрлэг', 14, 0, '1', 'С', '7', '4', '3', '128', '57', '106', '50', '22', '7', '74', '2', '16', '14', '1', '1', '', '', '5', '5', '4', '4', '6', 4, NULL, NULL, NULL, NULL, NULL),
(338, 'Есөнзүйл сумын цэцэрлэг', 14, 0, '1', 'С', '8', '4', '4', '146', '75', '72', '40', '74', '35', '89', '', '14', '13', '1', '1', '', '', '4', '4', '4', '4', '5', 4, NULL, NULL, NULL, NULL, NULL),
(339, 'Зүүнбаян-Улаан сумын цэцэрлэг', 14, 0, '1', 'С', '6', '4', '2', '196', '95', '103', '58', '93', '37', '90', '', '15', '13', '1', '1', '', '', '4', '4', '4', '4', '6', 4, NULL, NULL, NULL, NULL, NULL),
(340, 'Нарийнтээл сумын Баянтээг багийн цэцэрлэг', 14, 0, '1', 'Б', '3', '2', '1', '54', '23', '44', '18', '10', '5', '13', '', '7', '7', '1', '1', '', '', '2', '2', '2', '2', '2', 2, NULL, NULL, NULL, NULL, NULL),
(341, 'Нарийнтээл сумын цэцэрлэг', 14, 0, '1', 'С', '7', '5', '2', '181', '86', '134', '60', '47', '26', '66', '4', '20', '18', '1', '1', '1', '1', '5', '5', '5', '5', '8', 6, NULL, NULL, NULL, NULL, NULL),
(342, 'Орхон цогцолбор', 14, 0, '1', 'С', '9', '8', '1', '254', '122', '232', '115', '22', '7', '42', '1', '26', '25', '1', '1', '1', '1', '8', '8', '7', '7', '9', 8, NULL, NULL, NULL, NULL, NULL),
(343, 'Сант сумын цэцэрлэг', 14, 0, '1', 'С', '9', '5', '4', '223', '103', '145', '77', '78', '26', '', '', '19', '16', '1', '1', '1', '1', '6', '5', '5', '5', '6', 4, NULL, NULL, NULL, NULL, NULL),
(344, 'Тарагт сумын цэцэрлэг', 14, 0, '1', 'С', '5', '4', '1', '141', '65', '89', '38', '52', '27', '42', '', '15', '14', '1', '1', '', '', '4', '4', '4', '4', '6', 5, NULL, NULL, NULL, NULL, NULL),
(345, 'Төгрөг сумын цэцэрлэг', 14, 0, '1', 'С', '6', '5', '1', '193', '88', '117', '56', '76', '32', '108', '2', '19', '17', '1', '1', '1', '1', '6', '6', '5', '5', '6', 4, NULL, NULL, NULL, NULL, NULL),
(346, 'Уянга сумын Жаргалант багийн цэцэрлэг', 14, 0, '1', 'Б', '4', '3', '1', '173', '88', '110', '55', '63', '33', '38', '', '13', '11', '1', '1', '', '', '3', '3', '3', '3', '6', 4, NULL, NULL, NULL, NULL, NULL),
(347, 'Уянга сумын цэцэрлэг', 14, 0, '1', 'С', '9', '6', '3', '310', '142', '229', '106', '81', '36', '104', '1', '22', '19', '1', '1', '1', '1', '7', '6', '6', '6', '7', 5, NULL, NULL, NULL, NULL, NULL),
(348, 'Хайрхандулаан сумын цэцэрлэг', 14, 0, '1', 'С', '4', '3', '1', '177', '96', '104', '59', '73', '37', '89', '', '13', '10', '1', '1', '', '', '3', '3', '3', '3', '6', 3, NULL, NULL, NULL, NULL, NULL),
(349, 'Хархорин-1-р цэцэрлэг', 14, 0, '1', 'С', '5', '4', '1', '158', '82', '139', '73', '19', '9', '42', '1', '17', '16', '1', '1', '', '', '5', '5', '4', '4', '7', 6, NULL, NULL, NULL, NULL, NULL),
(350, 'Хархорин-2-р цэцэрлэг', 14, 0, '1', 'С', '6', '5', '1', '188', '92', '162', '83', '26', '9', '9', '', '21', '20', '1', '1', '1', '1', '6', '6', '5', '5', '8', 7, NULL, NULL, NULL, NULL, NULL),
(351, 'Хархорин-4-р цэцэрлэг', 14, 0, '1', 'С', '3', '3', '', '148', '72', '123', '57', '25', '15', '15', '', '16', '12', '1', '1', '', '', '3', '3', '3', '3', '9', 5, NULL, NULL, NULL, NULL, NULL),
(352, 'Хархорин-5-р цэцэрлэг', 14, 0, '1', 'С', '5', '4', '1', '120', '71', '108', '64', '12', '7', '5', '', '18', '14', '1', '1', '', '', '4', '4', '4', '4', '9', 5, NULL, NULL, NULL, NULL, NULL),
(353, 'Хужирт-1-р цэцэрлэг', 14, 0, '1', 'С', '7', '7', '', '176', '81', '176', '81', '', '', '70', '', '25', '23', '1', '1', '1', '1', '8', '7', '7', '7', '8', 7, NULL, NULL, NULL, NULL, NULL),
(354, 'Хужирт-2-р цэцэрлэг', 14, 0, '1', 'С', '6', '5', '1', '138', '64', '127', '60', '11', '4', '36', '1', '19', '18', '1', '1', '1', '1', '5', '5', '5', '5', '7', 6, NULL, NULL, NULL, NULL, NULL),
(355, 'Өлзийт сумын цэцэрлэг', 14, 0, '1', 'С', '3', '2', '1', '54', '27', '40', '22', '14', '5', '30', '', '10', '9', '1', '1', '', '', '2', '2', '2', '2', '5', 4, NULL, NULL, NULL, NULL, NULL),
(356, 'Арвайхээр сумын 10-р цэцэрлэг', 14, 0, '1', 'А', '6', '6', '', '218', '101', '218', '101', '', '', '18', '', '29', '25', '1', '1', '1', '1', '7', '7', '6', '6', '14', 10, NULL, NULL, NULL, NULL, NULL),
(357, 'Арвайхээр сумын 11-р цэцэрлэг', 14, 0, '1', 'А', '3', '3', '', '41', '15', '41', '15', '', '', '6', '41', '22', '19', '1', '1', '1', '1', '4', '4', '6', '6', '10', 7, NULL, NULL, NULL, NULL, NULL),
(358, 'Арвайхээр сумын 12-р цэцэрлэг', 14, 0, '1', 'А', '16', '8', '8', '513', '254', '325', '167', '188', '87', '62', '1', '31', '27', '1', '1', '1', '1', '9', '9', '8', '8', '12', 8, NULL, NULL, NULL, NULL, NULL),
(359, 'Арвайхээр сумын 13-р цэцэрлэг', 14, 0, '1', 'А', '6', '6', '', '249', '115', '249', '115', '', '', '8', '', '27', '23', '1', '1', '1', '1', '7', '7', '6', '6', '12', 8, NULL, NULL, NULL, NULL, NULL),
(360, 'Богд сумын 2-р цэцэрлэг', 14, 0, '1', 'С', '5', '4', '1', '184', '89', '149', '73', '35', '16', '49', '', '15', '13', '1', '1', '', '', '4', '4', '4', '4', '6', 4, NULL, NULL, NULL, NULL, NULL),
(361, 'Хужирт сумын 3-р цэцэрлэг', 14, 0, '1', 'С', '3', '3', '', '91', '42', '91', '42', '', '', '21', '', '13', '12', '1', '1', '', '', '3', '3', '3', '3', '6', 5, NULL, NULL, NULL, NULL, NULL),
(362, 'Уянга сумын 2-р цэцэрлэг', 14, 0, '1', 'С', '5', '4', '1', '262', '125', '157', '82', '105', '43', '51', '', '14', '13', '1', '1', '', '', '4', '4', '4', '4', '5', 4, NULL, NULL, NULL, NULL, NULL),
(363, 'Арвайхээр сумын 14-р цэцэрлэг', 14, 0, '1', 'А', '6', '6', '', '239', '126', '239', '126', '', '', '15', '2', '27', '23', '1', '1', '1', '1', '6', '6', '6', '6', '13', 9, NULL, NULL, NULL, NULL, NULL),
(364, 'Хужирт сумын 4-р цэцэрлэг', 14, 0, '1', 'С', '3', '2', '1', '71', '39', '59', '32', '12', '7', '24', '', '14', '12', '1', '1', '', '', '2', '2', '2', '2', '9', 7, NULL, NULL, NULL, NULL, NULL),
(365, 'Жаргалант ирээдүйн мөрөөдөл цэцэрлэг', 14, 0, '2', 'А', '1', '1', '', '30', '10', '30', '10', '', '', '', '', '6', '5', '1', '1', '', '', '1', '1', '1', '1', '3', 2, NULL, NULL, NULL, NULL, NULL),
(366, 'Түмэнбялзуухай цэцэрлэг', 14, 0, '2', 'С', '2', '2', '', '42', '22', '42', '22', '', '', '15', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(367, 'Арвайхээр сумын Арвайхээр Нархан цэцэрлэг', 14, 0, '2', 'А', '2', '2', '', '44', '23', '44', '23', '', '', '12', '', '4', '3', '1', '1', '', '', '1', '1', '1', '1', '1', 0, NULL, NULL, NULL, NULL, NULL),
(368, 'Арвайхээр сумын Бидэнд хайрлагдах зүрх цэцэрлэг', 14, 0, '2', 'А', '1', '1', '', '8', '0', '8', '', '', '', '1', '', '4', '4', '1', '1', '', '', '1', '1', '1', '1', '1', 1, NULL, NULL, NULL, NULL, NULL),
(369, 'Арвайхээр сумын Дэлгэрэх хөгжлийн гэрэл цэцэрлэг', 14, 0, '2', 'А', '2', '2', '', '49', '22', '49', '22', '', '', '7', '', '5', '4', '1', '1', '', '', '1', '', '1', '1', '2', 2, NULL, NULL, NULL, NULL, NULL),
(370, 'Баян-овоо 19-р цэцэрлэг', 15, 0, '1', 'С', '3', '3', '', '115', '56', '90', '46', '25', '10', '47', '1', '13', '11', '1', '1', '', '', '4', '3', '3', '3', '5', 4, NULL, NULL, NULL, NULL, NULL),
(371, 'Баяндалай 13-р цэцэрлэг', 15, 0, '1', 'С', '3', '3', '', '91', '40', '71', '31', '20', '9', '52', '', '11', '10', '1', '1', '', '', '3', '3', '3', '3', '4', 3, NULL, NULL, NULL, NULL, NULL),
(372, 'Булган 5-р цэцэрлэг', 15, 0, '1', 'С', '3', '3', '', '121', '60', '121', '60', '', '', '72', '', '9', '9', '', '', '', '', '3', '3', '3', '3', '3', 3, NULL, NULL, NULL, NULL, NULL),
(373, 'Гурвантэс 3-р цэцэрлэг', 15, 0, '1', 'С', '9', '9', '', '268', '118', '250', '108', '18', '10', '63', '1', '32', '30', '1', '1', '1', '1', '10', '10', '9', '9', '11', 9, NULL, NULL, NULL, NULL, NULL),
(374, 'Даланзадгад 1-р цэцэрлэг', 15, 0, '1', 'А', '8', '8', '', '341', '162', '341', '162', '', '', '7', '1', '32', '26', '1', '1', '1', '', '10', '8', '8', '8', '12', 9, NULL, NULL, NULL, NULL, NULL),
(375, 'Даланзадгад 2-р цэцэрлэг', 15, 0, '1', 'А', '6', '6', '', '238', '121', '238', '121', '', '', '10', '1', '25', '22', '1', '1', '1', '1', '7', '7', '6', '6', '10', 7, NULL, NULL, NULL, NULL, NULL),
(376, 'Даланзадгад 4-р цэцэрлэг', 15, 0, '1', 'А', '7', '7', '', '258', '143', '258', '143', '', '', '11', '', '26', '23', '1', '1', '', '', '8', '8', '7', '7', '10', 7, NULL, NULL, NULL, NULL, NULL),
(377, 'Даланзадгад 8-р цэцэрлэг', 15, 0, '1', 'А', '7', '7', '', '252', '128', '252', '128', '', '', '14', '1', '32', '25', '1', '1', '1', '1', '8', '8', '7', '7', '15', 8, NULL, NULL, NULL, NULL, NULL),
(378, 'Даланзадгад 9-р цэцэрлэг', 15, 0, '1', 'А', '6', '6', '', '215', '104', '215', '104', '', '', '9', '', '24', '21', '1', '1', '1', '1', '6', '6', '6', '6', '10', 7, NULL, NULL, NULL, NULL, NULL),
(379, 'Даланзадгад 11-р цэцэрлэг', 15, 0, '1', 'А', '7', '7', '', '277', '138', '277', '138', '', '', '1', '', '28', '25', '1', '1', '1', '1', '8', '8', '7', '7', '11', 8, NULL, NULL, NULL, NULL, NULL),
(380, 'Даланзадгад 23-р цэцэрлэг', 15, 0, '1', 'А', '5', '5', '', '162', '71', '162', '71', '', '', '15', '9', '22', '19', '1', '1', '1', '1', '6', '6', '5', '5', '9', 6, NULL, NULL, NULL, NULL, NULL),
(381, 'Даланзадгад 24-р цэцэрлэг', 15, 0, '1', 'А', '7', '7', '', '266', '132', '266', '132', '', '', '12', '', '28', '25', '1', '1', '1', '1', '8', '8', '7', '7', '11', 8, NULL, NULL, NULL, NULL, NULL),
(382, 'Даланзадгад 25-р цэцэрлэг', 15, 0, '1', 'А', '8', '8', '', '305', '166', '305', '166', '', '', '13', '5', '30', '27', '1', '1', '1', '1', '9', '9', '8', '8', '11', 8, NULL, NULL, NULL, NULL, NULL),
(383, 'Даланзадгад 26-р цэцэрлэг', 15, 0, '1', 'А', '8', '8', '', '325', '155', '325', '155', '', '', '13', '', '33', '27', '1', '1', '1', '1', '9', '9', '8', '8', '14', 8, NULL, NULL, NULL, NULL, NULL),
(384, 'Мандал-Овоо 17-р цэцэрлэг', 15, 0, '1', 'С', '4', '4', '', '99', '52', '84', '43', '15', '9', '63', '', '14', '11', '', '', '', '', '4', '4', '4', '4', '6', 3, NULL, NULL, NULL, NULL, NULL),
(385, 'Манлай 15-р цэцэрлэг', 15, 0, '1', 'С', '8', '8', '', '181', '89', '168', '81', '13', '8', '80', '', '27', '26', '1', '1', '1', '1', '9', '9', '8', '8', '8', 7, NULL, NULL, NULL, NULL, NULL),
(386, 'Номгон 14-р цэцэрлэг', 15, 0, '1', 'С', '4', '4', '', '121', '64', '95', '54', '26', '10', '41', '', '14', '13', '1', '1', '', '', '4', '4', '4', '4', '5', 4, NULL, NULL, NULL, NULL, NULL),
(387, 'Ноён 16-р цэцэрлэг', 15, 0, '1', 'С', '3', '3', '', '82', '41', '82', '41', '', '', '29', '', '11', '11', '', '', '', '', '4', '4', '3', '3', '4', 4, NULL, NULL, NULL, NULL, NULL),
(388, 'Сэврэй 20-р цэцэрлэг', 15, 0, '1', 'С', '4', '4', '', '121', '63', '95', '47', '26', '16', '36', '', '15', '14', '1', '1', '', '', '6', '6', '4', '4', '4', 3, NULL, NULL, NULL, NULL, NULL),
(389, 'Ханбогд 21-р цэцэрлэг', 15, 0, '1', 'С', '5', '5', '', '159', '68', '149', '62', '10', '6', '19', '', '19', '16', '1', '1', '1', '1', '6', '6', '5', '4', '6', 4, NULL, NULL, NULL, NULL, NULL),
(390, 'Ханбогд 22-р цэцэрлэг', 15, 0, '1', 'С', '7', '7', '', '244', '115', '237', '114', '7', '1', '15', '1', '30', '27', '1', '1', '1', '1', '8', '8', '7', '7', '13', 10, NULL, NULL, NULL, NULL, NULL),
(391, 'Ханхонгор 10-р цэцэрлэг', 15, 0, '1', 'С', '4', '3', '1', '81', '41', '61', '33', '20', '8', '35', '1', '13', '11', '1', '1', '', '', '4', '4', '3', '3', '5', 3, NULL, NULL, NULL, NULL, NULL),
(392, 'Хүрмэн 18-р цэцэрлэг', 15, 0, '1', 'С', '4', '3', '1', '97', '48', '72', '33', '25', '15', '24', '', '12', '11', '1', '1', '', '', '3', '3', '3', '3', '5', 4, NULL, NULL, NULL, NULL, NULL),
(393, 'Цогт-Овоо 12-р цэцэрлэг', 15, 0, '1', 'С', '7', '6', '1', '178', '99', '140', '80', '38', '19', '47', '', '29', '22', '1', '1', '1', '1', '9', '6', '6', '6', '12', 8, NULL, NULL, NULL, NULL, NULL),
(394, 'Цогтцэций 6-р цэцэрлэг', 15, 0, '1', 'С', '6', '6', '', '150', '83', '150', '83', '', '', '15', '', '20', '18', '', '', '1', '1', '7', '7', '6', '6', '6', 4, NULL, NULL, NULL, NULL, NULL),
(395, 'Цогтцэций 7-р цэцэрлэг', 15, 0, '1', 'С', '10', '10', '', '329', '158', '329', '158', '', '', '8', '', '40', '33', '1', '1', '1', '', '13', '11', '10', '10', '15', 11, NULL, NULL, NULL, NULL, NULL),
(396, 'Цогтцэций 27-р цэцэрлэг', 15, 0, '1', 'С', '8', '8', '', '223', '114', '223', '114', '', '', '10', '3', '29', '24', '', '', '1', '1', '10', '10', '8', '8', '10', 5, NULL, NULL, NULL, NULL, NULL),
(397, '28-р цэцэрлэг', 15, 0, '1', 'С', '4', '4', '', '136', '71', '114', '65', '22', '6', '41', '1', '15', '14', '1', '1', '', '', '5', '5', '4', '4', '5', 4, NULL, NULL, NULL, NULL, NULL),
(398, 'Ханбогд сумын 29-р  цэцэрлэг', 15, 0, '1', 'С', '8', '8', '', '311', '137', '311', '137', '', '', '12', '', '33', '28', '1', '1', '1', '1', '10', '9', '8', '8', '13', 9, NULL, NULL, NULL, NULL, NULL),
(399, 'Цогтцэций сумын 30-р цэцэрлэг', 15, 0, '1', 'С', '8', '8', '', '296', '139', '273', '125', '23', '14', '23', '', '30', '28', '1', '1', '1', '1', '10', '10', '8', '8', '10', 8, NULL, NULL, NULL, NULL, NULL),
(400, 'Ханбогд сумын 32-р цэцэрлэг', 15, 0, '1', 'Б', '2', '2', '', '37', '13', '37', '13', '', '', '1', '', '10', '7', '', '', '', '', '2', '2', '2', '2', '6', 3, NULL, NULL, NULL, NULL, NULL),
(401, '1-р цэцэрлэг', 16, 0, '1', 'А', '9', '8', '1', '308', '149', '286', '140', '22', '9', '26', '1', '34', '30', '1', '1', '1', '1', '10', '10', '8', '8', '14', 10, NULL, NULL, NULL, NULL, NULL),
(402, '2-р цэцэрлэг', 16, 0, '1', 'А', '8', '7', '1', '258', '128', '244', '122', '14', '6', '23', '', '29', '25', '1', '1', '1', '1', '9', '8', '7', '7', '11', 8, NULL, NULL, NULL, NULL, NULL),
(403, '3-р цэцэрлэг', 16, 0, '1', 'А', '7', '7', '', '285', '132', '236', '109', '49', '23', '45', '', '29', '23', '1', '1', '1', '1', '8', '7', '7', '7', '12', 7, NULL, NULL, NULL, NULL, NULL),
(404, '4-р цэцэрлэг', 16, 0, '1', 'А', '6', '5', '1', '199', '104', '177', '94', '22', '10', '32', '', '22', '17', '1', '1', '', '', '7', '6', '5', '5', '9', 5, NULL, NULL, NULL, NULL, NULL),
(405, '5-р цэцэрлэг', 16, 0, '1', 'А', '4', '4', '', '155', '77', '147', '74', '8', '3', '22', '', '19', '16', '1', '1', '', '', '5', '5', '4', '4', '9', 6, NULL, NULL, NULL, NULL, NULL),
(406, '6-р цэцэрлэг', 16, 0, '1', 'А', '4', '4', '', '116', '58', '116', '58', '', '', '11', '', '20', '16', '1', '1', '', '', '5', '5', '4', '4', '10', 6, NULL, NULL, NULL, NULL, NULL),
(407, '7-р цэцэрлэг', 16, 0, '1', 'А', '5', '4', '1', '117', '64', '113', '64', '4', '', '15', '', '20', '15', '1', '1', '', '', '5', '5', '4', '4', '10', 5, NULL, NULL, NULL, NULL, NULL),
(408, '8-р цэцэрлэг', 16, 0, '1', 'А', '7', '7', '', '262', '130', '241', '122', '21', '8', '53', '1', '33', '29', '1', '1', '1', '1', '10', '10', '7', '7', '14', 10, NULL, NULL, NULL, NULL, NULL),
(409, '9-р цэцэрлэг', 16, 0, '1', 'А', '7', '7', '', '257', '118', '246', '114', '11', '4', '34', '', '31', '27', '1', '1', '1', '1', '9', '9', '7', '7', '13', 9, NULL, NULL, NULL, NULL, NULL),
(410, '10-р цэцэрлэг', 16, 0, '1', 'А', '5', '5', '', '182', '88', '164', '83', '18', '5', '46', '', '22', '16', '1', '1', '', '', '6', '5', '5', '5', '10', 5, NULL, NULL, NULL, NULL, NULL),
(411, 'Асгат сумын цэцэрлэг', 16, 0, '1', 'С', '5', '4', '1', '168', '90', '113', '58', '55', '32', '91', '', '19', '16', '1', '1', '', '', '5', '5', '4', '4', '9', 6, NULL, NULL, NULL, NULL, NULL),
(412, 'Баяндэлгэр сумын цэцэрлэг', 16, 0, '1', 'С', '10', '9', '1', '430', '209', '257', '125', '173', '84', '328', '', '33', '27', '1', '1', '1', '1', '11', '10', '9', '9', '11', 6, NULL, NULL, NULL, NULL, NULL),
(413, 'Дарьганга сумын цэцэрлэг', 16, 0, '1', 'С', '7', '6', '1', '216', '101', '186', '89', '30', '12', '95', '', '24', '19', '1', '1', '1', '1', '7', '6', '6', '6', '9', 5, NULL, NULL, NULL, NULL, NULL),
(414, 'Мөнххаан сумын цэцэрлэг', 16, 0, '1', 'С', '11', '10', '1', '360', '176', '250', '121', '110', '55', '236', '2', '37', '29', '1', '1', '1', '1', '12', '12', '11', '8', '12', 7, NULL, NULL, NULL, NULL, NULL),
(415, 'Наран сумын цэцэрлэг', 16, 0, '1', 'С', '4', '4', '', '146', '73', '112', '57', '34', '16', '98', '1', '16', '14', '1', '1', '', '', '5', '5', '4', '4', '6', 4, NULL, NULL, NULL, NULL, NULL),
(416, 'Онгон сумын цэцэрлэг', 16, 0, '1', 'С', '9', '8', '1', '293', '149', '218', '111', '75', '38', '84', '5', '28', '24', '1', '1', '1', '1', '9', '9', '8', '8', '9', 5, NULL, NULL, NULL, NULL, NULL),
(417, 'Сүхбаатар сумын цэцэрлэг', 16, 0, '1', 'С', '7', '6', '1', '307', '123', '243', '97', '64', '26', '212', '4', '25', '20', '1', '1', '1', '1', '7', '6', '7', '7', '9', 5, NULL, NULL, NULL, NULL, NULL),
(418, 'Түвшинширээ сумын цэцэрлэг', 16, 0, '1', 'С', '9', '8', '1', '308', '139', '256', '117', '52', '22', '225', '3', '37', '31', '1', '1', '1', '1', '11', '11', '8', '8', '16', 10, NULL, NULL, NULL, NULL, NULL),
(419, 'Түмэнцогт сумын цэцэрлэг', 16, 0, '1', 'С', '8', '7', '1', '208', '102', '179', '92', '29', '10', '89', '1', '26', '22', '1', '1', '', '', '8', '8', '7', '7', '10', 6, NULL, NULL, NULL, NULL, NULL),
(420, 'Уулбаян сумын цэцэрлэг', 16, 0, '1', 'С', '6', '5', '1', '229', '111', '158', '76', '71', '35', '151', '1', '22', '18', '1', '1', '', '', '7', '7', '5', '5', '9', 5, NULL, NULL, NULL, NULL, NULL),
(421, 'Халзан сумын цэцэрлэг', 16, 0, '1', 'С', '5', '4', '1', '140', '64', '108', '45', '32', '19', '84', '2', '17', '14', '1', '1', '', '', '5', '5', '4', '4', '7', 4, NULL, NULL, NULL, NULL, NULL),
(422, 'Эрдэнэцагаан 1-р цэцэрлэг', 16, 0, '1', 'С', '9', '8', '1', '274', '124', '227', '105', '47', '19', '127', '1', '28', '25', '1', '1', '', '', '9', '9', '8', '8', '10', 7, NULL, NULL, NULL, NULL, NULL),
(423, 'Эрдэнэцагаан 2-р цэцэрлэг', 16, 0, '1', 'С', '6', '5', '1', '225', '105', '150', '71', '75', '34', '101', '1', '22', '17', '1', '1', '', '', '5', '5', '5', '5', '11', 6, NULL, NULL, NULL, NULL, NULL),
(424, '11-р цэцэрлэг', 16, 0, '1', 'А', '5', '5', '', '173', '90', '151', '83', '22', '7', '31', '8', '25', '20', '1', '1', '', '', '7', '6', '5', '5', '12', 8, NULL, NULL, NULL, NULL, NULL),
(425, 'Алтанбулаг сумын Дамбо цэцэрлэг', 17, 0, '1', 'С', '6', '6', '', '123', '61', '123', '61', '', '', '24', '', '28', '24', '1', '1', '1', '1', '7', '7', '7', '7', '12', 8, NULL, NULL, NULL, NULL, NULL),
(426, 'Алтанбулаг сумын цэцэрлэг', 17, 0, '1', 'С', '6', '6', '', '130', '61', '130', '61', '', '', '8', '', '26', '22', '1', '1', '1', '1', '7', '7', '6', '6', '11', 7, NULL, NULL, NULL, NULL, NULL),
(427, 'Баруунбүрэн сумын цэцэрлэг', 17, 0, '1', 'С', '9', '6', '3', '205', '94', '153', '76', '52', '18', '101', '5', '25', '22', '1', '1', '1', '1', '6', '6', '6', '6', '11', 8, NULL, NULL, NULL, NULL, NULL),
(428, 'Баянгол сумын цэцэрлэг', 17, 0, '1', 'С', '9', '9', '', '247', '126', '247', '126', '', '', '30', '1', '34', '29', '1', '1', '1', '1', '11', '10', '9', '9', '12', 8, NULL, NULL, NULL, NULL, NULL),
(429, 'Ерөө сумын Бугант тосгоны цэцэрлэг', 17, 0, '1', 'С', '8', '8', '', '249', '129', '249', '129', '', '', '8', '2', '38', '30', '1', '1', '1', '1', '9', '9', '8', '8', '19', 11, NULL, NULL, NULL, NULL, NULL),
(430, 'Ерөө сумын цэцэрлэг', 17, 0, '1', 'С', '6', '6', '', '223', '109', '223', '109', '', '', '19', '', '26', '22', '1', '1', '1', '1', '7', '7', '6', '6', '11', 7, NULL, NULL, NULL, NULL, NULL),
(431, 'Жавхлант сумын цэцэрлэг', 17, 0, '1', 'С', '5', '4', '1', '181', '88', '120', '55', '61', '33', '88', '', '23', '19', '1', '1', '1', '1', '6', '5', '4', '4', '11', 8, NULL, NULL, NULL, NULL, NULL),
(432, 'Зүүнбүрэн сумын цэцэрлэг', 17, 0, '1', 'С', '7', '6', '1', '183', '89', '160', '82', '23', '7', '77', '', '28', '24', '1', '1', '1', '1', '8', '8', '8', '8', '10', 6, NULL, NULL, NULL, NULL, NULL),
(433, 'Мандал сумын Мишээл цэцэрлэг', 17, 0, '1', 'С', '4', '4', '', '90', '44', '90', '44', '', '', '7', '', '19', '16', '1', '1', '1', '1', '5', '5', '4', '4', '8', 5, NULL, NULL, NULL, NULL, NULL),
(434, 'Мандал сумын Нархан цэцэрлэг', 17, 0, '1', 'С', '13', '13', '', '522', '258', '522', '258', '', '', '22', '3', '54', '46', '1', '1', '1', '1', '16', '15', '15', '15', '21', 14, NULL, NULL, NULL, NULL, NULL),
(435, 'Мандал сумын Олимп цэцэрлэг', 17, 0, '1', 'С', '8', '8', '', '218', '96', '218', '96', '', '', '2', '1', '36', '29', '1', '1', '1', '1', '9', '9', '8', '8', '17', 10, NULL, NULL, NULL, NULL, NULL),
(436, 'Мандал сумын Тарни багийн цэцэрлэг', 17, 0, '1', 'С', '3', '3', '', '54', '23', '54', '23', '', '', '28', '', '13', '12', '', '', '', '', '4', '4', '3', '3', '6', 5, NULL, NULL, NULL, NULL, NULL),
(437, 'Мандал сумын Түнхэл багийн цэцэрлэг', 17, 0, '1', 'С', '7', '7', '', '177', '95', '177', '95', '', '', '19', '1', '32', '28', '1', '1', '1', '1', '9', '9', '9', '9', '12', 8, NULL, NULL, NULL, NULL, NULL),
(438, 'Мандал сумын Хэрх тосгоны цэцэрлэг', 17, 0, '1', 'Б', '7', '7', '', '211', '95', '211', '95', '', '', '35', '2', '29', '25', '1', '1', '1', '1', '8', '8', '9', '9', '10', 6, NULL, NULL, NULL, NULL, NULL),
(439, 'Мандал сумын цэцэрлэг', 17, 0, '1', 'С', '7', '7', '', '287', '159', '287', '159', '', '', '14', '1', '33', '27', '1', '1', '1', '1', '9', '8', '9', '9', '13', 8, NULL, NULL, NULL, NULL, NULL),
(440, 'Орхон сумын цэцэрлэг', 17, 0, '1', 'С', '4', '4', '', '98', '51', '74', '36', '24', '15', '28', '1', '19', '16', '1', '1', '1', '1', '4', '4', '4', '4', '9', 6, NULL, NULL, NULL, NULL, NULL),
(441, 'Орхонтуул сумын цэцэрлэг', 17, 0, '1', 'С', '7', '6', '1', '142', '54', '130', '51', '12', '3', '52', '', '23', '20', '1', '1', '1', '1', '6', '6', '6', '6', '9', 6, NULL, NULL, NULL, NULL, NULL),
(442, 'Сайхан сумын цэцэрлэг', 17, 0, '1', 'С', '5', '5', '', '111', '43', '111', '43', '', '', '13', '', '24', '21', '', '', '1', '1', '6', '5', '5', '5', '12', 10, NULL, NULL, NULL, NULL, NULL),
(443, 'Сант сумын цэцэрлэг', 17, 0, '1', 'С', '5', '4', '1', '124', '61', '109', '54', '15', '7', '54', '2', '20', '16', '1', '1', '1', '1', '5', '5', '4', '4', '9', 5, NULL, NULL, NULL, NULL, NULL),
(444, 'Сувиллын ясль', 17, 0, '1', 'А', '3', '3', '', '53', '27', '53', '27', '', '', '5', '2', '12', '12', '1', '1', '', '', '3', '3', '3', '3', '5', 5, NULL, NULL, NULL, NULL, NULL),
(445, 'Сүхбаатар 1-р цэцэрлэг', 17, 0, '1', 'А', '5', '5', '', '100', '44', '100', '44', '', '', '5', '', '24', '20', '1', '1', '1', '1', '6', '6', '5', '5', '11', 7, NULL, NULL, NULL, NULL, NULL),
(446, 'Сүхбаатар 2-р цэцэрлэг', 17, 0, '1', 'А', '14', '14', '', '273', '137', '273', '137', '', '', '5', '4', '49', '44', '1', '1', '1', '1', '16', '16', '16', '16', '15', 10, NULL, NULL, NULL, NULL, NULL),
(447, 'Сүхбаатар 3-р цэцэрлэг', 17, 0, '1', 'А', '16', '16', '', '362', '166', '362', '166', '', '', '10', '1', '65', '56', '1', '1', '1', '1', '20', '19', '20', '20', '23', 15, NULL, NULL, NULL, NULL, NULL),
(448, 'Сүхбаатар 4-р цэцэрлэг', 17, 0, '1', 'А', '9', '9', '', '276', '131', '276', '131', '', '', '3', '', '34', '29', '1', '1', '1', '1', '10', '10', '9', '9', '13', 8, NULL, NULL, NULL, NULL, NULL),
(449, 'Сүхбаатар 7-р цэцэрлэг', 17, 0, '1', 'А', '6', '6', '', '161', '75', '161', '75', '', '', '15', '', '33', '25', '1', '1', '1', '1', '7', '6', '6', '6', '18', 11, NULL, NULL, NULL, NULL, NULL),
(450, 'Түшиг сумын цэцэрлэг', 17, 0, '1', 'С', '6', '5', '1', '156', '81', '134', '70', '22', '11', '23', '1', '23', '19', '1', '1', '1', '1', '6', '6', '5', '5', '10', 6, NULL, NULL, NULL, NULL, NULL),
(451, 'Хушаат сумын цэцэрлэг', 17, 0, '1', 'С', '5', '4', '1', '119', '64', '105', '58', '14', '6', '41', '', '19', '15', '1', '1', '1', '1', '4', '4', '4', '4', '9', 5, NULL, NULL, NULL, NULL, NULL),
(452, 'Хүдэр сумын цэцэрлэг', 17, 0, '1', 'Б', '8', '8', '', '243', '122', '243', '122', '', '', '11', '1', '29', '24', '1', '1', '1', '1', '8', '8', '8', '8', '11', 6, NULL, NULL, NULL, NULL, NULL),
(453, 'Хөтөлийн 11 цэцэрлэг', 17, 0, '1', 'С', '6', '6', '', '179', '84', '179', '84', '', '', '9', '1', '26', '25', '1', '1', '1', '1', '7', '7', '6', '6', '11', 10, NULL, NULL, NULL, NULL, NULL),
(454, 'Хөтөлийн 20 цэцэрлэг', 17, 0, '1', 'С', '6', '6', '', '219', '110', '219', '110', '', '', '15', '1', '27', '23', '1', '1', '1', '1', '7', '7', '6', '6', '12', 8, NULL, NULL, NULL, NULL, NULL),
(455, 'Хөтөлийн 24 цэцэрлэг', 17, 0, '1', 'С', '11', '11', '', '225', '109', '225', '109', '', '', '21', '1', '39', '34', '1', '1', '1', '1', '12', '11', '11', '11', '14', 10, NULL, NULL, NULL, NULL, NULL),
(456, 'Цагааннуур сумын цэцэрлэг', 17, 0, '1', 'С', '8', '7', '1', '171', '87', '152', '78', '19', '9', '43', '', '30', '27', '1', '1', '1', '1', '9', '9', '8', '8', '11', 8, NULL, NULL, NULL, NULL, NULL),
(457, 'Шаамар сумын Дулаанхааны цэцэрлэг', 17, 0, '1', 'С', '7', '7', '', '153', '77', '153', '77', '', '', '7', '2', '32', '26', '1', '1', '1', '1', '9', '8', '8', '8', '13', 8, NULL, NULL, NULL, NULL, NULL),
(458, 'Шаамар сумын цэцэрлэг', 17, 0, '1', 'С', '4', '4', '', '80', '38', '80', '38', '', '', '1', '', '21', '16', '1', '1', '1', '1', '4', '4', '4', '4', '11', 6, NULL, NULL, NULL, NULL, NULL),
(459, 'Баясгалант ирээдүй 2-р цэцэрлэг', 17, 0, '1', 'С', '4', '4', '', '90', '46', '90', '46', '', '', '9', '1', '28', '21', '1', '1', '1', '1', '6', '6', '6', '6', '14', 7, NULL, NULL, NULL, NULL, NULL),
(460, 'Сүхбаатар сумын 5 дугаар цэцэрлэг', 17, 0, '1', 'А', '5', '5', '', '164', '82', '164', '82', '', '', '', '', '26', '22', '1', '1', '1', '1', '6', '6', '5', '5', '13', 9, NULL, NULL, NULL, NULL, NULL),
(461, 'Алтанбулаг сумын 3-р цэцэрлэг', 17, 0, '1', 'С', '2', '2', '', '66', '31', '66', '31', '', '', '4', '', '14', '10', '1', '1', '', '', '2', '2', '2', '2', '9', 5, NULL, NULL, NULL, NULL, NULL),
(462, 'Цагааннуур сумын 2-р цэцэрлэг', 17, 0, '1', 'С', '8', '6', '2', '245', '122', '197', '98', '48', '24', '110', '', '29', '22', '1', '1', '1', '1', '7', '7', '6', '6', '14', 7, NULL, NULL, NULL, NULL, NULL),
(463, 'Сүхбаатар сумын 8-р цэцэрлэг', 17, 0, '1', 'А', '6', '6', '', '228', '105', '228', '105', '', '', '9', '1', '28', '22', '1', '1', '1', '1', '7', '7', '6', '6', '13', 7, NULL, NULL, NULL, NULL, NULL),
(464, 'Баянгол сумын Бүжинхэн цэцэрлэг', 17, 0, '2', 'С', '3', '3', '', '148', '61', '148', '61', '', '', '39', '', '12', '11', '1', '1', '1', '1', '3', '3', '3', '3', '4', 3, NULL, NULL, NULL, NULL, NULL),
(465, 'Алтанбулаг сумын цэцэрлэг', 18, 0, '1', 'С', '5', '5', '', '212', '106', '148', '73', '64', '33', '91', '', '19', '17', '1', '1', '1', '1', '5', '5', '5', '5', '7', 5, NULL, NULL, NULL, NULL, NULL),
(466, 'Аргалант сумын цэцэрлэг', 18, 0, '1', 'С', '4', '3', '1', '103', '54', '76', '40', '27', '14', '29', '', '13', '11', '1', '1', '', '', '3', '3', '3', '3', '6', 4, NULL, NULL, NULL, NULL, NULL),
(467, 'Архуст сумын цэцэрлэг', 18, 0, '1', 'С', '4', '3', '1', '87', '36', '73', '33', '14', '3', '19', '', '14', '10', '1', '1', '', '', '3', '3', '3', '3', '7', 3, NULL, NULL, NULL, NULL, NULL),
(468, 'Батсүмбэр сумын Баянгол багийн цэцэрлэг', 18, 0, '1', 'Б', '5', '5', '', '118', '52', '118', '52', '', '', '42', '', '15', '13', '1', '1', '', '', '3', '3', '5', '5', '6', 4, NULL, NULL, NULL, NULL, NULL),
(469, 'Батсүмбэр сумын цэцэрлэг', 18, 0, '1', 'С', '8', '7', '1', '271', '129', '191', '88', '80', '41', '127', '', '18', '14', '1', '1', '1', '1', '5', '5', '5', '5', '6', 2, NULL, NULL, NULL, NULL, NULL),
(470, 'Баян сумын цэцэрлэг', 18, 0, '1', 'С', '6', '5', '1', '140', '72', '132', '65', '8', '7', '63', '', '16', '15', '1', '1', '', '', '5', '5', '5', '5', '5', 4, NULL, NULL, NULL, NULL, NULL),
(471, 'Баян-Өнжүүл сумын цэцэрлэг', 18, 0, '1', 'С', '3', '3', '', '119', '52', '71', '31', '48', '21', '59', '', '12', '9', '1', '1', '', '', '3', '3', '3', '3', '5', 2, NULL, NULL, NULL, NULL, NULL),
(472, 'Баяндэлгэр сумын цэцэрлэг', 18, 0, '1', 'С', '4', '2', '2', '114', '49', '70', '23', '44', '26', '38', '', '9', '8', '1', '1', '', '', '2', '2', '2', '2', '4', 3, NULL, NULL, NULL, NULL, NULL),
(473, 'Баянжаргалан сумын цэцэрлэг', 18, 0, '1', 'С', '5', '4', '1', '147', '53', '115', '42', '32', '11', '65', '1', '16', '14', '1', '1', '', '', '4', '4', '4', '4', '7', 5, NULL, NULL, NULL, NULL, NULL),
(474, 'Баянхангай сумын цэцэрлэг', 18, 0, '1', 'С', '5', '4', '1', '107', '55', '94', '46', '13', '9', '35', '', '18', '14', '1', '1', '', '', '4', '4', '4', '4', '9', 5, NULL, NULL, NULL, NULL, NULL),
(475, 'Баянцагаан сумын цэцэрлэг', 18, 0, '1', 'С', '4', '3', '1', '122', '60', '72', '42', '50', '18', '94', '', '11', '8', '1', '1', '', '', '3', '2', '3', '3', '4', 2, NULL, NULL, NULL, NULL, NULL),
(476, 'Баянцогт сумын цэцэрлэг', 18, 0, '1', 'С', '4', '3', '1', '132', '73', '103', '58', '29', '15', '38', '', '14', '13', '1', '1', '', '', '3', '3', '3', '3', '7', 6, NULL, NULL, NULL, NULL, NULL),
(477, 'Баянчандмань сумын цэцэрлэг', 18, 0, '1', 'С', '9', '9', '', '289', '141', '247', '120', '42', '21', '41', '', '33', '29', '1', '1', '1', '1', '10', '10', '9', '9', '12', 8, NULL, NULL, NULL, NULL, NULL),
(478, 'Борнуур сумын цэцэрлэг', 18, 0, '1', 'С', '10', '9', '1', '311', '146', '251', '125', '60', '21', '94', '1', '30', '26', '1', '1', '1', '1', '9', '9', '9', '9', '10', 6, NULL, NULL, NULL, NULL, NULL),
(479, 'Бумбардай цэцэрлэг', 18, 0, '1', 'С', '4', '4', '', '136', '73', '136', '73', '', '', '9', '', '19', '16', '1', '1', '', '', '4', '4', '4', '4', '10', 7, NULL, NULL, NULL, NULL, NULL),
(480, 'Бүжинхэн цэцэрлэг', 18, 0, '1', 'А', '11', '11', '', '357', '190', '357', '190', '', '', '17', '3', '39', '32', '1', '1', '1', '1', '12', '11', '11', '11', '14', 8, NULL, NULL, NULL, NULL, NULL),
(481, 'Бүрэн сумын цэцэрлэг', 18, 0, '1', 'С', '6', '5', '1', '230', '112', '147', '72', '83', '40', '80', '', '19', '17', '1', '1', '', '', '5', '5', '4', '4', '9', 7, NULL, NULL, NULL, NULL, NULL),
(482, 'Дэгдээхэй цэцэрлэг', 18, 0, '1', 'А', '5', '5', '', '203', '95', '203', '95', '', '', '15', '', '22', '19', '1', '1', '1', '1', '6', '6', '5', '5', '9', 6, NULL, NULL, NULL, NULL, NULL),
(483, 'Дэжид', 18, 0, '1', 'С', '6', '5', '1', '154', '82', '143', '78', '11', '4', '22', '', '20', '17', '1', '1', '1', '1', '5', '5', '5', '5', '8', 5, NULL, NULL, NULL, NULL, NULL),
(484, 'Дэлгэрхаан сумын цэцэрлэг', 18, 0, '1', 'С', '5', '4', '1', '165', '72', '112', '51', '53', '21', '110', '', '16', '14', '1', '1', '', '', '5', '4', '4', '4', '6', 5, NULL, NULL, NULL, NULL, NULL),
(485, 'Жаргалант сумын цэцэрлэг', 18, 0, '1', 'С', '5', '4', '1', '146', '71', '120', '57', '26', '14', '18', '', '17', '15', '1', '1', '1', '1', '5', '5', '4', '4', '6', 4, NULL, NULL, NULL, NULL, NULL),
(486, 'Заамар сумын цэцэрлэг', 18, 0, '1', 'С', '9', '7', '2', '238', '107', '199', '90', '39', '17', '88', '1', '24', '21', '1', '1', '1', '1', '7', '7', '7', '7', '8', 5, NULL, NULL, NULL, NULL, NULL),
(487, 'Заамар сумын Шижир алт цэцэрлэг', 18, 0, '1', 'Б', '8', '8', '', '251', '126', '237', '117', '14', '9', '14', '', '27', '24', '1', '1', '1', '1', '9', '9', '8', '8', '8', 5, NULL, NULL, NULL, NULL, NULL),
(488, 'Ирээдүй цэцэрлэг', 18, 0, '1', 'А', '11', '11', '', '307', '152', '307', '152', '', '', '33', '', '42', '37', '1', '1', '1', '1', '12', '11', '11', '11', '17', 13, NULL, NULL, NULL, NULL, NULL),
(489, 'Лүн сумын цэцэрлэг', 18, 0, '1', 'С', '4', '4', '', '161', '77', '151', '72', '10', '5', '40', '', '18', '15', '1', '1', '', '', '5', '5', '4', '4', '8', 5, NULL, NULL, NULL, NULL, NULL),
(490, 'Мөнгөнморьт сумын цэцэрлэг', 18, 0, '1', 'С', '7', '5', '2', '186', '98', '126', '69', '60', '29', '64', '', '16', '14', '1', '1', '', '', '6', '5', '5', '5', '4', 3, NULL, NULL, NULL, NULL, NULL),
(491, 'Сэргэлэн сумын цэцэрлэг', 18, 0, '1', 'С', '5', '4', '1', '133', '54', '102', '41', '31', '13', '46', '1', '22', '15', '1', '1', '1', '1', '4', '4', '4', '4', '12', 5, NULL, NULL, NULL, NULL, NULL),
(492, 'Сүмбэр сумын цэцэрлэг', 18, 0, '1', 'С', '7', '6', '1', '140', '69', '127', '65', '13', '4', '29', '', '23', '22', '1', '1', '1', '1', '7', '7', '6', '6', '8', 7, NULL, NULL, NULL, NULL, NULL),
(493, 'Талбулаг', 18, 0, '1', 'Б', '5', '4', '1', '106', '54', '101', '52', '5', '2', '13', '', '14', '11', '1', '1', '', '', '4', '4', '4', '4', '5', 2, NULL, NULL, NULL, NULL, NULL),
(494, 'Угтаалцайдам сумын цэцэрлэг', 18, 0, '1', 'С', '8', '7', '1', '214', '103', '174', '81', '40', '22', '75', '3', '31', '25', '1', '1', '1', '1', '8', '8', '7', '7', '14', 8, NULL, NULL, NULL, NULL, NULL),
(495, 'Унагалдайн андууд цэцэрлэг', 18, 0, '1', 'А', '9', '8', '1', '269', '123', '244', '114', '25', '9', '8', '2', '32', '26', '1', '1', '1', '1', '9', '9', '8', '8', '13', 7, NULL, NULL, NULL, NULL, NULL),
(496, 'Хүмүүн', 18, 0, '1', 'А', '9', '8', '1', '310', '158', '285', '153', '25', '5', '16', '', '32', '24', '1', '1', '1', '1', '8', '8', '8', '8', '14', 6, NULL, NULL, NULL, NULL, NULL),
(497, 'Цээл сумын цэцэрлэг', 18, 0, '1', 'С', '7', '6', '1', '242', '114', '182', '91', '60', '23', '75', '', '20', '17', '1', '1', '', '', '6', '6', '6', '6', '7', 4, NULL, NULL, NULL, NULL, NULL),
(498, 'Эрдэнэ сумын цэцэрлэг', 18, 0, '1', 'С', '11', '8', '3', '281', '139', '198', '100', '83', '39', '110', '', '28', '26', '1', '1', '1', '1', '9', '9', '8', '8', '9', 7, NULL, NULL, NULL, NULL, NULL),
(499, 'Эрдэнэсант сумын цэцэрлэг', 18, 0, '1', 'С', '9', '6', '3', '242', '120', '185', '94', '57', '26', '147', '', '20', '17', '1', '1', '', '', '6', '6', '6', '6', '7', 4, NULL, NULL, NULL, NULL, NULL),
(500, 'Өгөөмөр', 18, 0, '1', 'С', '5', '4', '1', '145', '78', '112', '66', '33', '12', '48', '', '15', '13', '1', '1', '1', '1', '4', '4', '4', '4', '5', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `statistic` (`id`, `name`, `city`, `district`, `type`, `loc`, `buleg`, `buleg_prim`, `buleg_sla`, `child_total`, `child_girl`, `child_prim_total`, `child_prim_girl`, `child_alter_total`, `child_alter_girl`, `child_herder`, `child_disabled`, `employees_total`, `employees_female`, `director`, `director_female`, `manager`, `manager_female`, `teacher_total`, `teacher_female`, `subteacher_total`, `subteacher_female`, `others_total`, `others_female`, `address`, `contact`, `phone`, `director_name`, `email`) VALUES
(501, 'Өндөрширээт сумын цэцэрлэг', 18, 0, '1', 'С', '4', '3', '1', '159', '79', '91', '49', '68', '30', '44', '', '10', '9', '1', '1', '', '', '3', '3', '3', '3', '3', 2, NULL, NULL, NULL, NULL, NULL),
(502, 'Эрдэнэсант сумын Болорхон цэцэрлэг', 18, 0, '1', 'С', '4', '4', '', '133', '67', '133', '67', '', '', '35', '', '16', '13', '1', '1', '', '', '4', '4', '4', '4', '7', 4, NULL, NULL, NULL, NULL, NULL),
(503, 'Эрхэм жаалууд цэцэрлэг', 18, 0, '2', 'С', '3', '3', '', '69', '37', '69', '37', '', '', '11', '', '7', '6', '1', '1', '', '', '2', '2', '2', '2', '2', 1, NULL, NULL, NULL, NULL, NULL),
(504, 'Сондор цэцэрлэг', 18, 0, '2', 'Б', '1', '1', '', '20', '5', '20', '5', '', '', '2', '', '4', '4', '1', '1', '', '', '', '', '1', '1', '2', 2, NULL, NULL, NULL, NULL, NULL),
(505, 'Зуунмод сум Оддын жаалууд цэцэрлэг', 18, 0, '2', 'А', '1', '1', '', '34', '19', '34', '19', '', '', '4', '', '4', '4', '1', '1', '', '', '1', '1', '1', '1', '1', 1, NULL, NULL, NULL, NULL, NULL),
(506, '1-р цэцэрлэг', 19, 0, '1', 'А', '6', '6', '', '217', '100', '217', '100', '', '', '17', '', '26', '22', '1', '1', '1', '1', '7', '7', '6', '6', '11', 7, NULL, NULL, NULL, NULL, NULL),
(507, '2-р цэцэрлэг', 19, 0, '1', 'А', '8', '8', '', '243', '118', '243', '118', '', '', '16', '1', '33', '28', '1', '1', '1', '1', '9', '9', '8', '8', '14', 9, NULL, NULL, NULL, NULL, NULL),
(508, '3-р цэцэрлэг', 19, 0, '1', 'А', '9', '9', '', '329', '146', '329', '146', '', '', '5', '1', '35', '30', '1', '1', '1', '1', '10', '9', '9', '9', '14', 10, NULL, NULL, NULL, NULL, NULL),
(509, '4-р цэцэрлэг', 19, 0, '1', 'А', '9', '9', '', '255', '126', '255', '126', '', '', '13', '', '37', '31', '1', '1', '1', '1', '10', '10', '9', '9', '16', 10, NULL, NULL, NULL, NULL, NULL),
(510, '5-р цэцэрлэг', 19, 0, '1', 'А', '9', '9', '', '285', '143', '285', '143', '', '', '5', '20', '33', '27', '1', '1', '1', '1', '10', '9', '8', '8', '13', 8, NULL, NULL, NULL, NULL, NULL),
(511, '6-р цэцэрлэг', 19, 0, '1', 'А', '11', '7', '4', '236', '108', '182', '88', '54', '20', '58', '', '29', '24', '1', '1', '1', '1', '8', '8', '7', '7', '12', 7, NULL, NULL, NULL, NULL, NULL),
(512, '7-р цэцэрлэг', 19, 0, '1', 'А', '8', '8', '', '310', '145', '310', '145', '', '', '24', '1', '34', '29', '1', '1', '1', '1', '9', '8', '8', '8', '15', 11, NULL, NULL, NULL, NULL, NULL),
(513, '8-р цэцэрлэг', 19, 0, '1', 'А', '7', '7', '', '228', '105', '228', '105', '', '', '19', '', '25', '25', '1', '1', '1', '1', '8', '8', '7', '7', '8', 8, NULL, NULL, NULL, NULL, NULL),
(514, '9-р цэцэрлэг', 19, 0, '1', 'А', '7', '7', '', '279', '124', '279', '124', '', '', '2', '1', '31', '27', '1', '1', '1', '1', '8', '8', '7', '7', '14', 10, NULL, NULL, NULL, NULL, NULL),
(515, 'Баруунтуруун сумын цэцэрлэг', 19, 0, '1', 'С', '7', '6', '1', '241', '112', '177', '82', '64', '30', '70', '', '17', '15', '1', '1', '', '', '5', '5', '6', '6', '5', 3, NULL, NULL, NULL, NULL, NULL),
(516, 'Бөхмөрөн сумын цэцэрлэг', 19, 0, '1', 'С', '4', '3', '1', '184', '93', '106', '53', '78', '40', '93', '1', '14', '12', '1', '1', '', '', '3', '3', '3', '3', '7', 5, NULL, NULL, NULL, NULL, NULL),
(517, 'Давст сумын цэцэрлэг', 19, 0, '1', 'С', '6', '4', '2', '118', '65', '80', '45', '38', '20', '47', '1', '13', '12', '1', '1', '', '', '4', '4', '3', '3', '5', 4, NULL, NULL, NULL, NULL, NULL),
(518, 'Завхан сумын цэцэрлэг', 19, 0, '1', 'С', '5', '3', '2', '149', '60', '97', '43', '52', '17', '94', '1', '13', '12', '1', '1', '1', '1', '3', '3', '3', '3', '5', 4, NULL, NULL, NULL, NULL, NULL),
(519, 'Зүүнговь сумын цэцэрлэг', 19, 0, '1', 'С', '8', '4', '4', '217', '102', '114', '57', '103', '45', '114', '', '17', '14', '1', '1', '1', '1', '4', '3', '4', '4', '7', 5, NULL, NULL, NULL, NULL, NULL),
(520, 'Зүүнхангай сумын цэцэрлэг', 19, 0, '1', 'С', '8', '4', '4', '196', '97', '112', '58', '84', '39', '92', '', '16', '14', '1', '1', '1', '1', '4', '4', '4', '4', '6', 4, NULL, NULL, NULL, NULL, NULL),
(521, 'Малчин сумын цэцэрлэг', 19, 0, '1', 'С', '6', '3', '3', '172', '81', '91', '42', '81', '39', '109', '', '12', '11', '1', '1', '', '', '3', '3', '3', '3', '5', 4, NULL, NULL, NULL, NULL, NULL),
(522, 'Наранбулаг сумын цэцэрлэг', 19, 0, '1', 'С', '9', '6', '3', '364', '183', '171', '83', '193', '100', '232', '1', '21', '19', '1', '1', '1', '1', '7', '6', '6', '6', '6', 5, NULL, NULL, NULL, NULL, NULL),
(523, 'Сагил сумын цэцэрлэг', 19, 0, '1', 'С', '7', '4', '3', '177', '85', '123', '63', '54', '22', '135', '', '15', '13', '1', '1', '', '', '4', '4', '4', '4', '6', 4, NULL, NULL, NULL, NULL, NULL),
(524, 'Тариалан сумын цэцэрлэг', 19, 0, '1', 'С', '12', '8', '4', '351', '150', '235', '108', '116', '42', '151', '', '30', '25', '1', '1', '1', '1', '9', '8', '8', '8', '11', 7, NULL, NULL, NULL, NULL, NULL),
(525, 'Тэс сумын цэцэрлэг', 19, 0, '1', 'С', '14', '5', '9', '439', '207', '169', '73', '270', '134', '305', '', '20', '18', '1', '1', '1', '1', '6', '6', '5', '5', '7', 5, NULL, NULL, NULL, NULL, NULL),
(526, 'Түргэн сумын цэцэрлэг', 19, 0, '1', 'С', '6', '4', '2', '157', '72', '117', '54', '40', '18', '20', '1', '16', '13', '1', '1', '', '', '4', '4', '4', '4', '7', 4, NULL, NULL, NULL, NULL, NULL),
(527, 'Ховд сумын цэцэрлэг', 19, 0, '1', 'С', '5', '3', '2', '193', '97', '108', '54', '85', '43', '126', '1', '17', '15', '1', '1', '1', '1', '4', '4', '4', '4', '7', 5, NULL, NULL, NULL, NULL, NULL),
(528, 'Хяргас сумын цэцэрлэг', 19, 0, '1', 'С', '8', '4', '4', '192', '80', '114', '42', '78', '38', '77', '2', '17', '15', '1', '1', '1', '1', '4', '4', '4', '4', '7', 5, NULL, NULL, NULL, NULL, NULL),
(529, 'Цагаанхайрхан сумын цэцэрлэг', 19, 0, '1', 'С', '4', '4', '', '157', '80', '157', '80', '', '', '58', '', '16', '14', '1', '1', '', '', '5', '5', '4', '4', '6', 4, NULL, NULL, NULL, NULL, NULL),
(530, 'Өлгий сумын цэцэрлэг', 19, 0, '1', 'С', '6', '5', '1', '193', '85', '148', '67', '45', '18', '92', '2', '19', '17', '1', '1', '1', '1', '5', '5', '5', '5', '7', 5, NULL, NULL, NULL, NULL, NULL),
(531, 'Өмнөговь сумын цэцэрлэг', 19, 0, '1', 'С', '10', '7', '3', '421', '219', '220', '127', '201', '92', '178', '', '26', '22', '1', '1', '1', '1', '8', '7', '7', '7', '9', 6, NULL, NULL, NULL, NULL, NULL),
(532, 'Өндөрхангай сумын цэцэрлэг', 19, 0, '1', 'С', '10', '6', '4', '289', '143', '170', '92', '119', '51', '126', '1', '23', '20', '1', '1', '1', '1', '7', '7', '6', '6', '8', 5, NULL, NULL, NULL, NULL, NULL),
(533, '10-р цэцэрлэг', 19, 0, '1', 'А', '3', '3', '', '123', '56', '123', '56', '', '', '11', '', '19', '15', '1', '1', '1', '1', '4', '4', '3', '3', '10', 6, NULL, NULL, NULL, NULL, NULL),
(534, 'Улаангом сумын 12-р цэцэрлэг', 19, 0, '1', 'А', '6', '6', '', '243', '117', '243', '117', '', '', '47', '', '27', '22', '1', '1', '1', '1', '7', '6', '6', '6', '12', 8, NULL, NULL, NULL, NULL, NULL),
(535, 'Улаангом сумын 11-р цэцэрлэг', 19, 0, '1', 'А', '7', '6', '1', '214', '106', '210', '104', '4', '2', '46', '1', '26', '21', '1', '1', '1', '1', '7', '7', '6', '6', '11', 6, NULL, NULL, NULL, NULL, NULL),
(536, 'Улаангом сумын 13-р цэцэрлэг', 19, 0, '1', 'А', '6', '6', '', '97', '42', '97', '42', '', '', '14', '', '22', '19', '1', '1', '1', '1', '6', '6', '6', '6', '8', 5, NULL, NULL, NULL, NULL, NULL),
(537, 'Бяцхан гарьд', 19, 0, '2', 'А', '1', '1', '', '20', '6', '20', '6', '', '', '', '', '6', '5', '1', '1', '', '', '1', '1', '1', '1', '3', 2, NULL, NULL, NULL, NULL, NULL),
(538, 'Ухаалаг жаалууд цэцэрлэг', 19, 0, '2', 'А', '4', '4', '', '109', '50', '109', '50', '', '', '', '', '13', '12', '1', '1', '', '', '4', '4', '4', '4', '4', 3, NULL, NULL, NULL, NULL, NULL),
(539, 'Алтай сумын цэцэрлэг', 20, 0, '1', 'С', '5', '5', '', '212', '120', '166', '90', '46', '30', '109', '', '21', '18', '1', '1', '1', '1', '6', '6', '6', '6', '7', 4, NULL, NULL, NULL, NULL, NULL),
(540, 'Булган сумын цэцэрлэг', 20, 0, '1', 'С', '13', '13', '', '486', '223', '360', '165', '126', '58', '282', '', '52', '44', '1', '1', '1', '1', '17', '17', '13', '13', '20', 12, NULL, NULL, NULL, NULL, NULL),
(541, 'Буянт сумын цэцэрлэг', 20, 0, '1', 'С', '5', '5', '', '129', '71', '129', '71', '', '', '5', '', '19', '15', '1', '1', '1', '1', '6', '6', '4', '4', '7', 3, NULL, NULL, NULL, NULL, NULL),
(542, 'Дарви сумын цэцэрлэг', 20, 0, '1', 'С', '8', '7', '1', '183', '97', '173', '91', '10', '6', '67', '', '23', '20', '1', '1', '', '', '8', '8', '7', '7', '7', 4, NULL, NULL, NULL, NULL, NULL),
(543, 'Дуут сумын цэцэрлэг', 20, 0, '1', 'С', '4', '3', '1', '89', '29', '61', '23', '28', '6', '48', '1', '14', '12', '1', '1', '', '', '4', '4', '3', '3', '6', 4, NULL, NULL, NULL, NULL, NULL),
(544, 'Дөргөн сумын цэцэрлэг', 20, 0, '1', 'С', '10', '7', '3', '222', '105', '175', '87', '47', '18', '129', '', '24', '24', '1', '1', '1', '1', '8', '8', '7', '7', '7', 7, NULL, NULL, NULL, NULL, NULL),
(545, 'Жаргалант-1-р цэцэрлэг', 20, 0, '1', 'А', '6', '6', '', '185', '96', '185', '96', '', '', '19', '', '26', '21', '1', '1', '1', '1', '7', '7', '6', '6', '11', 6, NULL, NULL, NULL, NULL, NULL),
(546, 'Жаргалант-2-р цэцэрлэг', 20, 0, '1', 'А', '6', '6', '', '218', '112', '218', '112', '', '', '10', '2', '23', '21', '1', '1', '1', '1', '7', '7', '6', '6', '8', 6, NULL, NULL, NULL, NULL, NULL),
(547, 'Жаргалант-3-р цэцэрлэг', 20, 0, '1', 'А', '7', '7', '', '204', '98', '204', '98', '', '', '21', '', '27', '23', '1', '1', '1', '1', '8', '7', '7', '7', '10', 7, NULL, NULL, NULL, NULL, NULL),
(548, 'Жаргалант-4-р цэцэрлэг', 20, 0, '1', 'А', '6', '6', '', '187', '97', '187', '97', '', '', '6', '1', '24', '21', '1', '1', '1', '1', '7', '7', '6', '6', '9', 6, NULL, NULL, NULL, NULL, NULL),
(549, 'Жаргалант-5-р цэцэрлэг', 20, 0, '1', 'А', '6', '6', '', '214', '107', '214', '107', '', '', '4', '', '26', '22', '1', '1', '1', '1', '7', '7', '6', '6', '11', 7, NULL, NULL, NULL, NULL, NULL),
(550, 'Жаргалант-6-р цэцэрлэг', 20, 0, '1', 'А', '5', '5', '', '143', '69', '143', '69', '', '', '4', '1', '24', '21', '1', '1', '1', '1', '6', '6', '5', '5', '11', 8, NULL, NULL, NULL, NULL, NULL),
(551, 'Жаргалант-7-р цэцэрлэг', 20, 0, '1', 'А', '9', '9', '', '270', '126', '270', '126', '', '', '10', '', '31', '29', '1', '1', '1', '1', '10', '10', '9', '9', '10', 8, NULL, NULL, NULL, NULL, NULL),
(552, 'Жаргалант-8-р цэцэрлэг', 20, 0, '1', 'А', '7', '7', '', '189', '91', '189', '91', '', '', '21', '', '27', '22', '1', '1', '1', '1', '8', '8', '7', '7', '10', 5, NULL, NULL, NULL, NULL, NULL),
(553, 'Жаргалант-9-р цэцэрлэг', 20, 0, '1', 'А', '10', '10', '', '329', '153', '329', '153', '', '', '32', '4', '35', '32', '1', '1', '1', '1', '11', '11', '10', '10', '12', 9, NULL, NULL, NULL, NULL, NULL),
(554, 'Жаргалант-10-р цэцэрлэг', 20, 0, '1', 'А', '7', '7', '', '257', '127', '257', '127', '', '', '21', '1', '28', '25', '1', '1', '1', '1', '8', '8', '7', '7', '11', 8, NULL, NULL, NULL, NULL, NULL),
(555, 'Жаргалант-11-р цэцэрлэг', 20, 0, '1', 'А', '6', '6', '', '187', '94', '187', '94', '', '', '9', '1', '24', '21', '1', '1', '1', '1', '7', '7', '6', '6', '9', 6, NULL, NULL, NULL, NULL, NULL),
(556, 'Жаргалант-12-р цэцэрлэг', 20, 0, '1', 'А', '7', '7', '', '232', '120', '232', '120', '', '', '4', '3', '27', '24', '1', '1', '1', '1', '8', '8', '7', '7', '10', 7, NULL, NULL, NULL, NULL, NULL),
(557, 'Жаргалант-13-р цэцэрлэг', 20, 0, '1', 'А', '6', '6', '', '176', '82', '176', '82', '', '', '15', '', '24', '22', '1', '1', '1', '1', '7', '7', '6', '6', '9', 7, NULL, NULL, NULL, NULL, NULL),
(558, 'Зэрэг сумын цэцэрлэг', 20, 0, '1', 'С', '11', '8', '3', '290', '126', '233', '107', '57', '19', '120', '1', '29', '26', '1', '1', '1', '1', '9', '9', '8', '8', '10', 7, NULL, NULL, NULL, NULL, NULL),
(559, 'Манхан сумын цэцэрлэг', 20, 0, '1', 'С', '11', '6', '5', '291', '154', '181', '96', '110', '58', '154', '', '22', '21', '1', '1', '1', '1', '7', '7', '6', '6', '7', 6, NULL, NULL, NULL, NULL, NULL),
(560, 'Мянгад сумын цэцэрлэг', 20, 0, '1', 'С', '9', '6', '3', '227', '117', '161', '86', '66', '31', '134', '', '22', '19', '1', '1', '1', '1', '7', '7', '6', '6', '7', 4, NULL, NULL, NULL, NULL, NULL),
(561, 'Мөнххайрхан сумын цэцэрлэг', 20, 0, '1', 'С', '4', '4', '', '134', '57', '113', '48', '21', '9', '70', '', '16', '13', '1', '1', '', '', '5', '4', '4', '4', '6', 4, NULL, NULL, NULL, NULL, NULL),
(562, 'Мөст сумын цэцэрлэг', 20, 0, '1', 'С', '5', '4', '1', '145', '64', '115', '52', '30', '12', '86', '1', '17', '14', '1', '1', '', '', '5', '5', '4', '4', '7', 4, NULL, NULL, NULL, NULL, NULL),
(563, 'Ховд сумын цэцэрлэг', 20, 0, '1', 'С', '5', '4', '1', '149', '82', '102', '55', '47', '27', '57', '', '17', '13', '1', '1', '', '', '5', '5', '4', '4', '7', 3, NULL, NULL, NULL, NULL, NULL),
(564, 'Цэцэг сумын цэцэрлэг', 20, 0, '1', 'С', '10', '8', '2', '234', '100', '187', '83', '47', '17', '80', '1', '31', '30', '1', '1', '1', '1', '9', '9', '8', '8', '12', 11, NULL, NULL, NULL, NULL, NULL),
(565, 'Чандмань сумын цэцэрлэг', 20, 0, '1', 'С', '7', '5', '2', '206', '105', '140', '75', '66', '30', '148', '', '20', '17', '1', '1', '1', '1', '6', '6', '5', '5', '7', 4, NULL, NULL, NULL, NULL, NULL),
(566, 'Эрдэнэбүрэн сумын цэцэрлэг', 20, 0, '1', 'С', '4', '3', '1', '142', '50', '71', '25', '71', '25', '67', '', '12', '10', '1', '1', '', '', '3', '3', '3', '3', '5', 3, NULL, NULL, NULL, NULL, NULL),
(567, 'Үенч сумын цэцэрлэг', 20, 0, '1', 'С', '8', '8', '', '258', '115', '216', '95', '42', '20', '83', '', '31', '28', '1', '1', '1', '1', '10', '10', '8', '8', '11', 8, NULL, NULL, NULL, NULL, NULL),
(568, 'Жаргалант Прогресс 14-р цэцэрлэг', 20, 0, '1', 'А', '6', '6', '', '202', '100', '202', '100', '', '', '1', '', '24', '22', '1', '1', '1', '1', '7', '7', '6', '6', '9', 7, NULL, NULL, NULL, NULL, NULL),
(569, 'Жаргалант Цэцэгхэн 15-р цэцэрлэг', 20, 0, '1', 'А', '5', '5', '', '181', '82', '181', '82', '', '', '9', '', '23', '20', '1', '1', '1', '1', '6', '6', '5', '5', '10', 7, NULL, NULL, NULL, NULL, NULL),
(570, 'Булган сумын 2-р цэцэрлэг', 20, 0, '1', 'С', '7', '6', '1', '286', '139', '191', '87', '95', '52', '120', '', '25', '23', '1', '1', '1', '1', '8', '8', '6', '6', '9', 7, NULL, NULL, NULL, NULL, NULL),
(571, 'Жаргалант сумын 6-р цэцэрлэг', 20, 0, '1', 'А', '9', '9', '', '278', '137', '278', '137', '', '', '18', '', '33', '30', '1', '1', '1', '1', '10', '10', '9', '9', '12', 9, NULL, NULL, NULL, NULL, NULL),
(572, 'Бялзуухай цэцэрлэг', 20, 0, '2', 'С', '1', '1', '', '22', '10', '22', '10', '', '', '1', '', '3', '3', '', '', '', '', '1', '1', '1', '1', '1', 1, NULL, NULL, NULL, NULL, NULL),
(573, 'Гэрэлт наран өөд цэцэрлэг', 20, 0, '2', 'А', '2', '2', '', '50', '26', '50', '26', '', '', '', '', '6', '5', '1', '1', '', '', '1', '1', '2', '2', '2', 1, NULL, NULL, NULL, NULL, NULL),
(574, 'Гэрэлтэх оч цэцэрлэг', 20, 0, '2', 'А', '4', '4', '', '102', '47', '102', '47', '', '', '9', '', '10', '10', '1', '1', '', '', '4', '4', '4', '4', '1', 1, NULL, NULL, NULL, NULL, NULL),
(575, 'Жаргалант 24 цэцэрлэг', 20, 0, '2', 'А', '1', '1', '', '22', '13', '22', '13', '', '', '2', '', '3', '3', '1', '1', '', '', '1', '1', '1', '1', '', 0, NULL, NULL, NULL, NULL, NULL),
(576, 'Хөх хулганы орон цэцэрлэг', 20, 0, '2', 'А', '2', '2', '', '40', '18', '40', '18', '', '', '2', '', '5', '5', '1', '1', '', '', '2', '2', '1', '1', '1', 1, NULL, NULL, NULL, NULL, NULL),
(577, 'Энхжин-Од цэцэрлэг', 20, 0, '2', 'С', '5', '5', '', '102', '56', '102', '56', '', '', '4', '', '14', '14', '1', '1', '', '', '5', '5', '5', '5', '3', 3, NULL, NULL, NULL, NULL, NULL),
(578, 'Бумбагарын найзууд', 20, 0, '2', 'А', '1', '1', '', '28', '13', '28', '13', '', '', '', '', '4', '4', '1', '1', '', '', '1', '1', '1', '1', '1', 1, NULL, NULL, NULL, NULL, NULL),
(579, 'Жаргалант сумын Миний гэрийн боловсрол цэцэрлэг', 20, 0, '2', 'А', '1', '1', '', '26', '12', '26', '12', '', '', '1', '', '3', '3', '1', '1', '', '', '', '', '1', '1', '1', 1, NULL, NULL, NULL, NULL, NULL),
(580, 'Алаг-Эрдэнэ сумын цэцэрлэг', 21, 0, '1', 'С', '6', '5', '1', '173', '85', '115', '62', '58', '23', '65', '', '22', '18', '1', '1', '', '', '6', '6', '5', '5', '10', 6, NULL, NULL, NULL, NULL, NULL),
(581, 'Арбулаг сумын цэцэрлэг', 21, 0, '1', 'С', '5', '5', '', '153', '68', '153', '68', '', '', '46', '', '23', '18', '1', '1', '', '', '6', '6', '5', '5', '11', 6, NULL, NULL, NULL, NULL, NULL),
(582, 'Баянзүрх сумын цэцэрлэг', 21, 0, '1', 'С', '7', '4', '3', '237', '112', '142', '66', '95', '46', '66', '1', '18', '12', '', '', '', '', '4', '4', '4', '4', '10', 4, NULL, NULL, NULL, NULL, NULL),
(583, 'Бүрэнтогтох сумын цэцэрлэг', 21, 0, '1', 'С', '7', '6', '1', '177', '92', '153', '84', '24', '8', '121', '', '27', '19', '1', '1', '1', '', '8', '7', '6', '6', '11', 5, NULL, NULL, NULL, NULL, NULL),
(584, 'Мөрөн сумын 13-р цэцэрлэг', 21, 0, '1', 'А', '9', '9', '', '327', '147', '327', '147', '', '', '36', '1', '41', '34', '1', '1', '1', '1', '11', '10', '9', '9', '19', 13, NULL, NULL, NULL, NULL, NULL),
(585, 'Бүрэнхаан цэцэрлэг', 21, 0, '1', 'Б', '1', '1', '', '47', '24', '47', '24', '', '', '36', '', '4', '3', '', '', '', '', '1', '1', '1', '1', '2', 1, NULL, NULL, NULL, NULL, NULL),
(586, 'Галт сумын цэцэрлэг', 21, 0, '1', 'С', '11', '7', '4', '304', '138', '195', '92', '109', '46', '146', '1', '32', '27', '1', '1', '1', '1', '10', '10', '7', '7', '13', 8, NULL, NULL, NULL, NULL, NULL),
(587, 'Жаргалант сумын цэцэрлэг', 21, 0, '1', 'С', '10', '7', '3', '271', '132', '210', '105', '61', '27', '110', '1', '29', '24', '1', '1', '1', '1', '8', '8', '7', '7', '12', 7, NULL, NULL, NULL, NULL, NULL),
(588, 'Их-Уул сумын цэцэрлэг', 21, 0, '1', 'С', '6', '6', '', '250', '121', '206', '101', '44', '20', '154', '', '28', '21', '1', '1', '1', '1', '7', '7', '6', '6', '13', 6, NULL, NULL, NULL, NULL, NULL),
(589, 'Мөрөн 1-р цэцэрлэг', 21, 0, '1', 'А', '9', '9', '', '369', '196', '369', '196', '', '', '17', '1', '37', '32', '1', '1', '1', '1', '10', '10', '9', '9', '16', 11, NULL, NULL, NULL, NULL, NULL),
(590, 'Мөрөн 2-р цэцэрлэг', 21, 0, '1', 'А', '9', '9', '', '341', '171', '341', '171', '', '', '18', '1', '36', '30', '1', '1', '1', '1', '10', '10', '9', '9', '15', 9, NULL, NULL, NULL, NULL, NULL),
(591, 'Мөрөн 3-р цэцэрлэг', 21, 0, '1', 'А', '7', '7', '', '275', '128', '275', '128', '', '', '16', '1', '36', '26', '1', '1', '1', '1', '8', '8', '7', '7', '19', 9, NULL, NULL, NULL, NULL, NULL),
(592, 'Мөрөн 4-р цэцэрлэг', 21, 0, '1', 'А', '6', '6', '', '200', '103', '200', '103', '', '', '28', '', '35', '24', '1', '1', '1', '1', '7', '7', '6', '6', '20', 9, NULL, NULL, NULL, NULL, NULL),
(593, 'Мөрөн 5-р цэцэрлэг', 21, 0, '1', 'А', '6', '6', '', '206', '93', '206', '93', '', '', '29', '', '28', '22', '1', '1', '1', '1', '7', '7', '6', '6', '13', 7, NULL, NULL, NULL, NULL, NULL),
(594, 'Мөрөн 6-р цэцэрлэг', 21, 0, '1', 'А', '6', '6', '', '204', '96', '204', '96', '', '', '14', '1', '28', '22', '1', '1', '1', '1', '7', '7', '6', '6', '13', 7, NULL, NULL, NULL, NULL, NULL),
(595, 'Мөрөн 7-р цэцэрлэг', 21, 0, '1', 'А', '8', '8', '', '290', '159', '290', '159', '', '', '10', '', '40', '30', '1', '1', '1', '1', '9', '9', '8', '8', '21', 11, NULL, NULL, NULL, NULL, NULL),
(596, 'Мөрөн 8-р цэцэрлэг', 21, 0, '1', 'А', '6', '6', '', '217', '114', '217', '114', '', '', '8', '', '27', '22', '1', '1', '1', '1', '7', '7', '6', '6', '12', 7, NULL, NULL, NULL, NULL, NULL),
(597, 'Мөрөн 9-р цэцэрлэг', 21, 0, '1', 'А', '6', '6', '', '189', '93', '189', '93', '', '', '13', '2', '28', '22', '1', '1', '1', '1', '7', '7', '6', '6', '13', 7, NULL, NULL, NULL, NULL, NULL),
(598, 'Мөрөн 10-р цэцэрлэг', 21, 0, '1', 'А', '6', '6', '', '247', '139', '247', '139', '', '', '36', '1', '28', '23', '1', '1', '1', '1', '7', '7', '6', '6', '13', 8, NULL, NULL, NULL, NULL, NULL),
(599, 'Мөрөн 11-р цэцэрлэг', 21, 0, '1', 'А', '6', '6', '', '185', '78', '185', '78', '', '', '20', '1', '28', '21', '1', '1', '1', '1', '7', '7', '6', '6', '13', 6, NULL, NULL, NULL, NULL, NULL),
(600, 'Мөрөн 12-р цэцэрлэг', 21, 0, '1', 'А', '5', '5', '', '195', '97', '195', '97', '', '', '30', '1', '24', '18', '1', '1', '', '', '6', '6', '5', '5', '12', 6, NULL, NULL, NULL, NULL, NULL),
(601, 'Рашаант сумын цэцэрлэг', 21, 0, '1', 'С', '10', '6', '4', '282', '141', '188', '97', '94', '44', '170', '2', '28', '22', '1', '1', '1', '1', '7', '7', '6', '6', '13', 7, NULL, NULL, NULL, NULL, NULL),
(602, 'Рэнчинлхүмбэ сумын цэцэрлэг', 21, 0, '1', 'С', '10', '6', '4', '280', '140', '178', '89', '102', '51', '181', '', '25', '20', '', '', '1', '1', '7', '6', '6', '6', '11', 7, NULL, NULL, NULL, NULL, NULL),
(603, 'Тариалан сумын цэцэрлэг', 21, 0, '1', 'С', '11', '10', '1', '409', '181', '311', '148', '98', '33', '99', '', '37', '31', '1', '1', '1', '1', '11', '10', '10', '10', '14', 9, NULL, NULL, NULL, NULL, NULL),
(604, 'Тосонцэнгэл сумын цэцэрлэг', 21, 0, '1', 'С', '8', '6', '2', '282', '123', '210', '99', '72', '24', '109', '1', '28', '22', '1', '1', '1', '1', '7', '7', '6', '6', '13', 7, NULL, NULL, NULL, NULL, NULL),
(605, 'Түнэл сумын цэцэрлэг', 21, 0, '1', 'С', '8', '6', '2', '229', '109', '179', '85', '50', '24', '115', '2', '28', '21', '1', '1', '1', '1', '7', '7', '6', '6', '13', 6, NULL, NULL, NULL, NULL, NULL),
(606, 'Төмөрбулаг сумын цэцэрлэг', 21, 0, '1', 'С', '7', '5', '2', '180', '94', '143', '79', '37', '15', '90', '', '21', '16', '1', '1', '', '', '5', '5', '5', '5', '10', 5, NULL, NULL, NULL, NULL, NULL),
(607, 'Улаан-Уул сумын цэцэрлэг', 21, 0, '1', 'С', '10', '5', '5', '270', '125', '173', '74', '97', '51', '99', '', '24', '20', '1', '1', '', '', '6', '6', '5', '5', '12', 8, NULL, NULL, NULL, NULL, NULL),
(608, 'Ханх сумын цэцэрлэг', 21, 0, '1', 'С', '6', '4', '2', '179', '103', '125', '74', '54', '29', '35', '', '18', '13', '1', '1', '', '', '5', '5', '4', '4', '8', 3, NULL, NULL, NULL, NULL, NULL),
(609, 'Хатгал сумын цэцэрлэг', 21, 0, '1', 'С', '7', '6', '1', '269', '136', '243', '120', '26', '16', '19', '', '27', '23', '', '', '1', '1', '7', '7', '6', '6', '13', 9, NULL, NULL, NULL, NULL, NULL),
(610, 'Цагаан-Уул сумын цэцэрлэг', 21, 0, '1', 'С', '5', '4', '1', '197', '90', '154', '76', '43', '14', '116', '', '20', '14', '1', '1', '', '', '5', '4', '4', '4', '10', 5, NULL, NULL, NULL, NULL, NULL),
(611, 'Цагаан-Үүр сумын цэцэрлэг', 21, 0, '1', 'С', '9', '6', '3', '221', '108', '158', '79', '63', '29', '18', '', '30', '24', '1', '1', '1', '1', '8', '8', '6', '6', '14', 8, NULL, NULL, NULL, NULL, NULL),
(612, 'Цагааннуур сумын цэцэрлэг', 21, 0, '1', 'С', '6', '4', '2', '175', '88', '125', '60', '50', '28', '69', '', '23', '20', '1', '1', '', '', '6', '6', '4', '4', '12', 9, NULL, NULL, NULL, NULL, NULL),
(613, 'Цэцэрлэг сумын Могой багийн цэцэрлэг', 21, 0, '1', 'Б', '3', '2', '1', '54', '32', '46', '25', '8', '7', '15', '', '9', '8', '', '', '', '', '2', '2', '2', '2', '5', 4, NULL, NULL, NULL, NULL, NULL),
(614, 'Цэцэрлэг сумын цэцэрлэг', 21, 0, '1', 'С', '6', '6', '', '211', '85', '140', '65', '71', '20', '48', '', '25', '19', '1', '1', '1', '1', '7', '7', '6', '6', '10', 4, NULL, NULL, NULL, NULL, NULL),
(615, 'Чандмань-Өндөр сумын цэцэрлэг', 21, 0, '1', 'С', '10', '6', '4', '232', '120', '168', '89', '64', '31', '103', '', '29', '21', '1', '1', '1', '', '7', '7', '6', '6', '14', 7, NULL, NULL, NULL, NULL, NULL),
(616, 'Шинэ-Идэр сумын цэцэрлэг', 21, 0, '1', 'С', '6', '5', '1', '159', '86', '124', '66', '35', '20', '89', '', '21', '16', '1', '1', '', '', '5', '5', '5', '5', '10', 5, NULL, NULL, NULL, NULL, NULL),
(617, 'Эрдэнэбулган сумын цэцэрлэг', 21, 0, '1', 'С', '8', '7', '1', '226', '109', '170', '85', '56', '24', '123', '', '29', '24', '', '', '1', '1', '8', '8', '7', '7', '13', 8, NULL, NULL, NULL, NULL, NULL),
(618, 'Цагаан уул сумын 2-р цэцэрлэг', 21, 0, '1', 'С', '5', '5', '', '172', '82', '172', '82', '', '', '71', '1', '23', '17', '1', '1', '', '', '6', '6', '5', '5', '11', 5, NULL, NULL, NULL, NULL, NULL),
(619, 'Мөрөн сумын 14-р цэцэрлэг', 21, 0, '1', 'А', '6', '6', '', '243', '134', '243', '134', '', '', '34', '', '29', '20', '1', '1', '1', '1', '8', '6', '6', '6', '13', 6, NULL, NULL, NULL, NULL, NULL),
(620, 'Мөрөн сумын 15-р цэцэрлэг', 21, 0, '1', 'А', '6', '6', '', '179', '73', '179', '73', '', '', '15', '', '27', '23', '1', '1', '1', '1', '8', '8', '6', '6', '11', 7, NULL, NULL, NULL, NULL, NULL),
(621, 'Галт сумын Зүрх багийн цэцэрлэг бага сургуулийн цогцолбор', 21, 0, '1', 'Б', '2', '1', '1', '48', '21', '26', '8', '22', '13', '36', '', '4', '3', '', '', '', '', '1', '1', '1', '1', '2', 1, NULL, NULL, NULL, NULL, NULL),
(622, 'Жаргалант сумын 2-р цэцэрлэг', 21, 0, '1', 'С', '4', '4', '', '127', '59', '127', '59', '', '', '48', '', '20', '17', '1', '1', '', '', '4', '4', '4', '4', '11', 8, NULL, NULL, NULL, NULL, NULL),
(623, 'Гранд цэцэрлэг', 21, 0, '2', 'А', '3', '3', '', '119', '64', '119', '64', '', '', '2', '', '13', '12', '1', '1', '', '', '3', '3', '3', '3', '6', 5, NULL, NULL, NULL, NULL, NULL),
(624, 'Тэмүүлэл цэцэрлэг', 21, 0, '2', 'А', '4', '4', '', '113', '60', '113', '60', '', '', '2', '', '13', '12', '1', '1', '', '', '4', '4', '4', '4', '4', 3, NULL, NULL, NULL, NULL, NULL),
(625, 'Даян саян цэцэрлэг', 21, 0, '2', 'А', '2', '2', '', '85', '45', '85', '45', '', '', '3', '', '8', '7', '1', '1', '', '', '2', '2', '2', '2', '3', 2, NULL, NULL, NULL, NULL, NULL),
(626, 'Хөвсгөл.Мөрөн.\"Мандал\" цэцэрлэг', 21, 0, '2', 'А', '2', '2', '', '28', '12', '28', '12', '', '', '', '', '7', '6', '1', '1', '', '', '2', '2', '2', '2', '2', 1, NULL, NULL, NULL, NULL, NULL),
(627, 'Батноров сумын Бэрх тосгоны цэцэрлэг', 22, 0, '1', 'Б', '7', '7', '', '190', '100', '190', '100', '', '', '44', '', '24', '19', '1', '1', '1', '1', '7', '6', '7', '7', '8', 4, NULL, NULL, NULL, NULL, NULL),
(628, 'Батноров сумын цэцэрлэг', 22, 0, '1', 'С', '11', '7', '4', '244', '110', '177', '81', '67', '29', '129', '1', '29', '24', '1', '1', '1', '1', '9', '8', '7', '7', '11', 7, NULL, NULL, NULL, NULL, NULL),
(629, 'Батширээт сумын цэцэрлэг', 22, 0, '1', 'С', '8', '4', '4', '167', '91', '114', '68', '53', '23', '65', '1', '17', '15', '1', '1', '', '', '5', '5', '4', '4', '7', 5, NULL, NULL, NULL, NULL, NULL),
(630, 'Баян-Адарга сумын цэцэрлэг', 22, 0, '1', 'С', '7', '5', '2', '206', '99', '145', '65', '61', '34', '134', '4', '20', '17', '', '', '1', '1', '7', '7', '5', '5', '7', 4, NULL, NULL, NULL, NULL, NULL),
(631, 'Баян-Овоо сумын цэцэрлэг', 22, 0, '1', 'С', '6', '6', '', '163', '81', '143', '72', '20', '9', '107', '1', '18', '17', '1', '1', '', '', '6', '6', '6', '6', '5', 4, NULL, NULL, NULL, NULL, NULL),
(632, 'Баянмөнх сумын цэцэрлэг', 22, 0, '1', 'С', '6', '4', '2', '153', '74', '106', '57', '47', '17', '112', '', '13', '10', '1', '1', '', '', '4', '4', '2', '2', '6', 3, NULL, NULL, NULL, NULL, NULL),
(633, 'Баянхутаг сумын цэцэрлэг', 22, 0, '1', 'С', '4', '3', '1', '83', '47', '65', '35', '18', '12', '11', '', '13', '10', '1', '1', '', '', '3', '3', '2', '2', '7', 4, NULL, NULL, NULL, NULL, NULL),
(634, 'Биндэр сумын цэцэрлэг', 22, 0, '1', 'С', '10', '8', '2', '250', '125', '212', '110', '38', '15', '76', '', '29', '23', '1', '', '1', '1', '10', '9', '8', '8', '9', 5, NULL, NULL, NULL, NULL, NULL),
(635, 'Бор-Өндөр 1-р цэцэрлэг', 22, 0, '1', 'С', '13', '13', '', '388', '197', '388', '197', '', '', '18', '3', '42', '38', '1', '1', '1', '1', '14', '14', '13', '13', '13', 9, NULL, NULL, NULL, NULL, NULL),
(636, 'Бор-Өндөр 2-р цэцэрлэг', 22, 0, '1', 'С', '4', '4', '', '132', '60', '132', '60', '', '', '11', '', '18', '15', '1', '1', '', '', '5', '5', '4', '4', '8', 5, NULL, NULL, NULL, NULL, NULL),
(637, 'Бор-Өндөр 3-р цэцэрлэг', 22, 0, '1', 'С', '8', '8', '', '252', '121', '229', '113', '23', '8', '31', '1', '32', '30', '1', '1', '1', '1', '10', '10', '8', '8', '12', 10, NULL, NULL, NULL, NULL, NULL),
(638, 'Галшар сумын цэцэрлэг', 22, 0, '1', 'С', '4', '3', '1', '132', '52', '80', '33', '52', '19', '81', '', '13', '11', '1', '1', '', '', '3', '3', '3', '3', '6', 4, NULL, NULL, NULL, NULL, NULL),
(639, 'Дадал сумын цэцэрлэг', 22, 0, '1', 'С', '10', '7', '3', '266', '138', '230', '119', '36', '19', '92', '3', '24', '20', '1', '1', '1', '1', '8', '7', '7', '7', '7', 4, NULL, NULL, NULL, NULL, NULL),
(640, 'Дархан сумын цэцэрлэг', 22, 0, '1', 'С', '3', '3', '', '171', '81', '121', '60', '50', '21', '87', '', '14', '12', '1', '1', '', '', '3', '3', '3', '3', '7', 5, NULL, NULL, NULL, NULL, NULL),
(641, 'Дэлгэрхаан сумын Хэрлэнбаян-Улаан тосгоны цэцэрлэг', 22, 0, '1', 'Б', '1', '1', '', '26', '18', '26', '18', '', '', '10', '', '4', '3', '', '', '', '', '1', '1', '1', '1', '2', 1, NULL, NULL, NULL, NULL, NULL),
(642, 'Дэлгэрхаан сумын цэцэрлэг', 22, 0, '1', 'С', '7', '7', '', '152', '82', '152', '82', '', '', '48', '', '27', '22', '1', '1', '1', '1', '9', '8', '6', '6', '10', 6, NULL, NULL, NULL, NULL, NULL),
(643, 'Жаргалтхаан сумын цэцэрлэг', 22, 0, '1', 'С', '5', '5', '', '166', '74', '134', '60', '32', '14', '82', '', '16', '14', '1', '1', '', '', '5', '5', '4', '4', '6', 4, NULL, NULL, NULL, NULL, NULL),
(644, 'Мөрөн сумын цэцэрлэг', 22, 0, '1', 'С', '3', '3', '', '81', '42', '81', '42', '', '', '18', '', '13', '9', '1', '1', '', '', '4', '3', '3', '3', '5', 2, NULL, NULL, NULL, NULL, NULL),
(645, 'Норовлин сумын цэцэрлэг', 22, 0, '1', 'С', '8', '7', '1', '236', '118', '175', '88', '61', '30', '43', '', '23', '20', '1', '1', '1', '1', '7', '7', '7', '7', '7', 4, NULL, NULL, NULL, NULL, NULL),
(646, 'Хэрлэн 1-р цэцэрлэг', 22, 0, '1', 'А', '8', '8', '', '238', '129', '238', '129', '', '', '11', '1', '29', '24', '1', '1', '1', '1', '10', '10', '8', '8', '9', 4, NULL, NULL, NULL, NULL, NULL),
(647, 'Хэрлэн 2-р цэцэрлэг', 22, 0, '1', 'А', '6', '6', '', '171', '96', '171', '96', '', '', '12', '8', '25', '21', '1', '1', '1', '1', '7', '6', '7', '7', '9', 6, NULL, NULL, NULL, NULL, NULL),
(648, 'Хэрлэн 3-р цэцэрлэг', 22, 0, '1', 'А', '10', '10', '', '259', '112', '259', '112', '', '', '42', '', '36', '31', '1', '1', '1', '1', '12', '11', '10', '10', '12', 8, NULL, NULL, NULL, NULL, NULL),
(649, 'Хэрлэн 4-р цэцэрлэг', 22, 0, '1', 'А', '11', '11', '', '318', '157', '318', '157', '', '', '50', '1', '40', '35', '1', '1', '1', '1', '13', '12', '11', '11', '14', 10, NULL, NULL, NULL, NULL, NULL),
(650, 'Хэрлэн 5-р цэцэрлэг', 22, 0, '1', 'А', '6', '6', '', '162', '75', '162', '75', '', '', '31', '', '24', '21', '1', '1', '1', '1', '7', '7', '6', '6', '9', 6, NULL, NULL, NULL, NULL, NULL),
(651, 'Хэрлэн 6-р цэцэрлэг', 22, 0, '1', 'А', '5', '5', '', '136', '71', '136', '71', '', '', '15', '', '23', '19', '1', '1', '1', '1', '6', '6', '5', '5', '10', 6, NULL, NULL, NULL, NULL, NULL),
(652, 'Хэрлэн 7-р цэцэрлэг', 22, 0, '1', 'А', '4', '4', '', '127', '60', '127', '60', '', '', '6', '', '20', '16', '1', '1', '1', '1', '6', '5', '4', '4', '8', 5, NULL, NULL, NULL, NULL, NULL),
(653, 'Хэрлэн 8-цэцэрлэг', 22, 0, '1', 'А', '5', '5', '', '133', '69', '133', '69', '', '', '19', '', '23', '20', '1', '1', '1', '1', '6', '6', '5', '5', '10', 7, NULL, NULL, NULL, NULL, NULL),
(654, 'Хэрлэн сумын Өлзийт тосгоны цэцэрлэг', 22, 0, '1', 'Б', '3', '3', '', '72', '44', '72', '44', '', '', '23', '', '16', '12', '1', '1', '', '', '3', '3', '3', '3', '9', 5, NULL, NULL, NULL, NULL, NULL),
(655, 'Хэрлэн Ясли', 22, 0, '1', 'А', '2', '2', '', '60', '29', '60', '29', '', '', '1', '', '16', '12', '1', '1', '', '', '2', '2', '4', '4', '9', 5, NULL, NULL, NULL, NULL, NULL),
(656, 'Цэнхэрмандал сумын цэцэрлэг', 22, 0, '1', 'С', '7', '6', '1', '154', '69', '129', '58', '25', '11', '57', '2', '23', '19', '1', '1', '1', '1', '7', '6', '7', '7', '7', 4, NULL, NULL, NULL, NULL, NULL),
(657, 'Өмнөдэлгэр сумын Хурх тосгоны цэцэрлэг', 22, 0, '1', 'Б', '3', '3', '', '72', '38', '62', '34', '10', '4', '40', '1', '11', '9', '1', '1', '', '', '3', '3', '3', '3', '4', 2, NULL, NULL, NULL, NULL, NULL),
(658, 'Өмнөдэлгэр сумын цэцэрлэг', 22, 0, '1', 'С', '15', '12', '3', '407', '200', '303', '143', '104', '57', '170', '2', '38', '34', '1', '1', '1', '1', '14', '13', '12', '12', '10', 7, NULL, NULL, NULL, NULL, NULL),
(659, 'Хэрлэн сумын 9-р цэцэрлэг', 22, 0, '1', 'А', '8', '8', '', '245', '116', '245', '116', '', '', '37', '', '31', '24', '1', '1', '1', '1', '10', '9', '8', '8', '11', 5, NULL, NULL, NULL, NULL, NULL),
(660, 'Хэрлэн сумын 10-р цэцэрлэг', 22, 0, '1', 'А', '5', '5', '', '142', '70', '142', '70', '', '', '13', '1', '20', '16', '1', '1', '1', '', '5', '5', '5', '5', '8', 5, NULL, NULL, NULL, NULL, NULL),
(661, 'Бамбар цэцэрлэг', 22, 0, '2', 'А', '3', '3', '', '94', '47', '94', '47', '', '', '13', '', '11', '10', '1', '1', '1', '', '3', '3', '3', '3', '3', 3, NULL, NULL, NULL, NULL, NULL),
(662, 'Жүржхэн цэцэрлэг', 22, 0, '2', 'А', '2', '2', '', '56', '31', '56', '31', '', '', '2', '', '5', '4', '1', '1', '', '', '1', '1', '', '', '3', 2, NULL, NULL, NULL, NULL, NULL),
(663, '1-р цэцэрлэг', 8, 0, '1', 'А', '6', '6', '', '183', '94', '183', '94', '', '', '8', '1', '25', '21', '1', '1', '1', '1', '7', '7', '6', '6', '10', 6, NULL, NULL, NULL, NULL, NULL),
(664, '2-р цэцэрлэг', 8, 0, '1', 'С', '5', '5', '', '114', '52', '114', '52', '', '', '7', '', '20', '18', '1', '1', '', '', '5', '5', '5', '5', '9', 7, NULL, NULL, NULL, NULL, NULL),
(665, '3-р цэцэрлэг', 8, 0, '1', 'А', '8', '8', '', '287', '147', '287', '147', '', '', '8', '', '29', '26', '1', '1', '1', '1', '8', '8', '8', '8', '11', 8, NULL, NULL, NULL, NULL, NULL),
(666, '4-р цэцэрлэг', 8, 0, '1', 'А', '12', '12', '', '395', '200', '395', '200', '', '', '2', '1', '39', '35', '1', '1', '1', '1', '13', '13', '12', '12', '12', 8, NULL, NULL, NULL, NULL, NULL),
(667, '5-р цэцэрлэг', 8, 0, '1', 'А', '12', '12', '', '415', '200', '415', '200', '', '', '4', '2', '39', '34', '1', '1', '1', '1', '13', '13', '12', '12', '12', 7, NULL, NULL, NULL, NULL, NULL),
(668, '6-р цэцэрлэг', 8, 0, '1', 'А', '10', '10', '', '296', '138', '296', '138', '', '', '12', '1', '35', '31', '1', '1', '1', '1', '11', '11', '10', '10', '12', 8, NULL, NULL, NULL, NULL, NULL),
(669, '7-р цэцэрлэг', 8, 0, '1', 'А', '13', '13', '', '359', '198', '359', '198', '', '', '11', '41', '49', '43', '1', '1', '1', '1', '14', '14', '16', '16', '17', 11, NULL, NULL, NULL, NULL, NULL),
(670, '8-р цэцэрлэг', 8, 0, '1', 'А', '6', '6', '', '177', '84', '177', '84', '', '', '4', '3', '24', '22', '1', '1', '1', '1', '7', '7', '6', '6', '9', 7, NULL, NULL, NULL, NULL, NULL),
(671, '9-р цэцэрлэг', 8, 0, '1', 'С', '9', '9', '', '215', '106', '215', '106', '', '', '23', '', '35', '30', '1', '1', '1', '1', '10', '10', '9', '9', '14', 9, NULL, NULL, NULL, NULL, NULL),
(672, '10-р цэцэрлэг', 8, 0, '1', 'А', '8', '8', '', '237', '118', '237', '118', '', '', '13', '', '39', '36', '1', '1', '1', '1', '12', '12', '14', '14', '11', 8, NULL, NULL, NULL, NULL, NULL),
(673, '11-р цэцэрлэг', 8, 0, '1', 'А', '6', '6', '', '191', '95', '191', '95', '', '', '3', '', '27', '23', '1', '1', '1', '1', '7', '7', '6', '6', '12', 8, NULL, NULL, NULL, NULL, NULL),
(674, '12-р цэцэрлэг', 8, 0, '1', 'А', '12', '12', '', '330', '156', '330', '156', '', '', '3', '2', '39', '32', '1', '1', '1', '1', '13', '12', '12', '12', '12', 6, NULL, NULL, NULL, NULL, NULL),
(675, '13-р цэцэрлэг', 8, 0, '1', 'А', '12', '12', '', '382', '178', '382', '178', '', '', '14', '2', '43', '39', '1', '1', '1', '1', '13', '13', '12', '12', '16', 12, NULL, NULL, NULL, NULL, NULL),
(676, '14-р цэцэрлэг', 8, 0, '1', 'С', '6', '6', '', '137', '72', '137', '72', '', '', '5', '1', '24', '22', '1', '1', '1', '1', '6', '6', '6', '6', '10', 8, NULL, NULL, NULL, NULL, NULL),
(677, '15-р цэцэрлэг', 8, 0, '1', 'А', '13', '13', '', '413', '200', '413', '200', '', '', '3', '4', '41', '38', '1', '1', '1', '1', '14', '14', '13', '13', '12', 9, NULL, NULL, NULL, NULL, NULL),
(678, '16-р цэцэрлэг', 8, 0, '1', 'С', '7', '6', '1', '219', '108', '171', '89', '48', '19', '49', '1', '28', '24', '1', '1', '1', '1', '7', '7', '8', '8', '11', 7, NULL, NULL, NULL, NULL, NULL),
(679, '17-р цэцэрлэг', 8, 0, '1', 'С', '6', '6', '', '178', '77', '178', '77', '', '', '8', '1', '23', '22', '1', '1', '', '', '7', '7', '6', '6', '9', 8, NULL, NULL, NULL, NULL, NULL),
(680, '18-р цэцэрлэг', 8, 0, '1', 'А', '12', '12', '', '330', '162', '330', '162', '', '', '10', '4', '38', '34', '1', '1', '1', '1', '13', '13', '12', '12', '11', 7, NULL, NULL, NULL, NULL, NULL),
(681, '19-р цэцэрлэг', 8, 0, '1', 'А', '4', '4', '', '108', '53', '108', '53', '', '', '2', '', '18', '18', '1', '1', '', '', '5', '5', '4', '4', '8', 8, NULL, NULL, NULL, NULL, NULL),
(682, '21-р цэцэрлэг', 8, 0, '1', 'А', '12', '12', '', '336', '175', '336', '175', '', '', '7', '3', '39', '35', '1', '1', '1', '1', '13', '13', '12', '12', '12', 8, NULL, NULL, NULL, NULL, NULL),
(683, '22-р цэцэрлэг', 8, 0, '1', 'А', '12', '12', '', '356', '166', '356', '166', '', '', '5', '2', '39', '35', '1', '1', '1', '1', '13', '13', '12', '12', '12', 8, NULL, NULL, NULL, NULL, NULL),
(684, '23-р цэцэрлэг', 8, 0, '1', 'А', '8', '8', '', '249', '118', '249', '118', '', '', '3', '1', '31', '26', '1', '1', '1', '1', '9', '9', '8', '8', '12', 7, NULL, NULL, NULL, NULL, NULL),
(685, '24-р цэцэрлэг', 8, 0, '1', 'А', '8', '8', '', '248', '128', '248', '128', '', '', '7', '', '31', '26', '1', '1', '1', '1', '9', '9', '8', '8', '12', 7, NULL, NULL, NULL, NULL, NULL),
(686, '25-р цэцэрлэг', 8, 0, '1', 'А', '6', '6', '', '194', '90', '194', '90', '', '', '4', '', '24', '19', '1', '1', '1', '1', '7', '7', '6', '6', '9', 4, NULL, NULL, NULL, NULL, NULL),
(687, 'Дархан сумын 26-р цэцэрлэг', 8, 0, '1', 'А', '5', '5', '', '166', '86', '166', '86', '', '', '3', '3', '22', '18', '1', '1', '', '', '6', '6', '5', '5', '10', 6, NULL, NULL, NULL, NULL, NULL),
(688, 'Дархан сумын 27-р цэцэрлэг', 8, 0, '1', 'А', '6', '6', '', '188', '100', '188', '100', '', '', '2', '1', '24', '20', '1', '1', '1', '1', '7', '7', '6', '6', '9', 5, NULL, NULL, NULL, NULL, NULL),
(689, 'Дархан сумын 28-р цэцэрлэг', 8, 0, '1', 'А', '6', '6', '', '188', '90', '188', '90', '', '', '4', '2', '25', '22', '1', '1', '1', '1', '7', '7', '6', '6', '10', 7, NULL, NULL, NULL, NULL, NULL),
(690, 'Дархан сумын 30-р цэцэрлэг', 8, 0, '1', 'А', '8', '8', '', '242', '102', '242', '102', '', '', '9', '1', '30', '26', '1', '1', '1', '1', '9', '9', '8', '8', '11', 7, NULL, NULL, NULL, NULL, NULL),
(691, 'Дархан сумын 29-р цэцэрлэг', 8, 0, '1', 'А', '6', '6', '', '171', '80', '171', '80', '', '', '8', '', '25', '21', '1', '1', '1', '1', '7', '7', '6', '6', '10', 6, NULL, NULL, NULL, NULL, NULL),
(692, 'Дархан сумын 31-р цэцэрлэг', 8, 0, '1', 'А', '4', '4', '', '135', '76', '135', '76', '', '', '6', '', '20', '16', '1', '1', '', '', '5', '5', '4', '4', '10', 6, NULL, NULL, NULL, NULL, NULL),
(693, '20-р цэцэрлэг', 8, 0, '2', 'А', '2', '2', '', '24', '10', '24', '10', '', '', '', '', '5', '4', '1', '', '', '', '2', '2', '', '', '2', 2, NULL, NULL, NULL, NULL, NULL),
(694, 'Бамбарууш цэцэрлэг', 8, 0, '2', 'А', '2', '2', '', '18', '9', '18', '9', '', '', '', '', '11', '11', '1', '1', '', '', '3', '3', '3', '3', '4', 4, NULL, NULL, NULL, NULL, NULL),
(695, 'Кидстаун цэцэрлэг', 8, 0, '2', 'А', '2', '2', '', '34', '19', '34', '19', '', '', '', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(696, 'Номин цэцэрлэг', 8, 0, '2', 'А', '2', '2', '', '35', '17', '35', '17', '', '', '2', '', '7', '6', '1', '1', '1', '1', '1', '1', '2', '2', '2', 1, NULL, NULL, NULL, NULL, NULL),
(697, 'Солонго цэцэрлэг', 8, 0, '2', 'А', '4', '4', '', '58', '32', '58', '32', '', '', '2', '', '13', '11', '1', '1', '1', '', '4', '4', '4', '4', '3', 2, NULL, NULL, NULL, NULL, NULL),
(698, 'Сүмдарьцэцэг цэцэрлэг', 8, 0, '2', 'А', '4', '4', '', '43', '17', '43', '17', '', '', '', '', '14', '13', '1', '1', '', '', '3', '3', '4', '4', '6', 5, NULL, NULL, NULL, NULL, NULL),
(699, 'Хааны хүүхдүүд цэцэрлэг', 8, 0, '2', 'А', '4', '4', '', '100', '55', '100', '55', '', '', '1', '', '11', '10', '1', '1', '', '', '3', '3', '3', '3', '4', 3, NULL, NULL, NULL, NULL, NULL),
(700, 'Цоглог жаалууд цэцэрлэг', 8, 0, '2', 'А', '2', '2', '', '27', '14', '27', '14', '', '', '', '', '5', '4', '1', '1', '', '', '1', '1', '1', '1', '2', 1, NULL, NULL, NULL, NULL, NULL),
(701, 'Жаргалант Өсөх ирээдүй цэцэрлэг', 8, 0, '2', 'А', '5', '5', '', '92', '43', '92', '43', '', '', '', '', '21', '20', '1', '1', '', '', '7', '7', '8', '8', '5', 4, NULL, NULL, NULL, NULL, NULL),
(702, 'Дархан сумын Шинэ алхам цэцэрлэг', 8, 0, '2', 'А', '4', '4', '', '86', '45', '86', '45', '', '', '', '', '17', '17', '1', '1', '', '', '6', '6', '6', '6', '4', 4, NULL, NULL, NULL, NULL, NULL),
(703, '131-р цэцэрлэг', 1, 1, '1', 'Н', '12', '12', '', '237', '125', '237', '125', '', '', '7', '3', '42', '37', '1', '1', '1', '1', '14', '13', '11', '11', '15', 11, NULL, NULL, NULL, NULL, NULL),
(704, '132-р цэцэрлэг', 1, 1, '1', 'Н', '8', '8', '', '208', '103', '208', '103', '', '', '26', '', '48', '33', '1', '1', '1', '1', '9', '9', '8', '8', '29', 14, NULL, NULL, NULL, NULL, NULL),
(705, '138-р цэцэрлэг', 1, 1, '1', 'Н', '12', '12', '', '277', '146', '277', '146', '', '', '25', '3', '46', '41', '1', '1', '1', '1', '14', '14', '13', '13', '17', 12, NULL, NULL, NULL, NULL, NULL),
(706, '139-р цэцэрлэг', 1, 1, '1', 'Н', '12', '12', '', '309', '157', '309', '157', '', '', '19', '4', '44', '39', '1', '1', '', '', '14', '13', '12', '12', '17', 13, NULL, NULL, NULL, NULL, NULL),
(707, '142-р цэцэрлэг', 1, 1, '1', 'Н', '8', '8', '', '212', '94', '212', '94', '', '', '4', '2', '34', '29', '1', '1', '1', '1', '9', '8', '8', '8', '15', 11, NULL, NULL, NULL, NULL, NULL),
(708, '193-р цэцэрлэг', 1, 1, '1', 'Н', '12', '12', '', '305', '161', '305', '161', '', '', '7', '', '46', '40', '1', '1', '1', '1', '14', '13', '12', '12', '18', 13, NULL, NULL, NULL, NULL, NULL),
(709, '194-р цэцэрлэг', 1, 1, '1', 'Н', '4', '4', '', '100', '41', '100', '41', '', '', '9', '', '23', '20', '1', '1', '1', '1', '5', '5', '4', '4', '12', 9, NULL, NULL, NULL, NULL, NULL),
(710, '235-р цэцэрлэг', 1, 1, '1', 'Н', '4', '4', '', '92', '50', '92', '50', '', '', '6', '', '23', '20', '1', '1', '1', '1', '5', '5', '4', '4', '12', 9, NULL, NULL, NULL, NULL, NULL),
(711, '241-р цэцэрлэг', 1, 1, '1', 'Н', '10', '10', '', '296', '147', '296', '147', '', '', '15', '3', '47', '43', '1', '1', '1', '1', '14', '14', '14', '14', '17', 13, NULL, NULL, NULL, NULL, NULL),
(712, '11-р цэцэрлэг', 1, 3, '1', 'Н', '8', '8', '', '274', '135', '274', '135', '', '', '1', '5', '35', '31', '1', '1', '1', '1', '10', '10', '8', '8', '15', 11, NULL, NULL, NULL, NULL, NULL),
(713, '13-р цэцэрлэг', 1, 3, '1', 'Н', '10', '10', '', '311', '148', '311', '148', '', '', '1', '5', '34', '30', '1', '1', '1', '1', '12', '12', '10', '10', '10', 6, NULL, NULL, NULL, NULL, NULL),
(714, '15-р цэцэрлэг', 1, 3, '1', 'Н', '6', '6', '', '199', '93', '199', '93', '', '', '1', '', '25', '20', '1', '1', '1', '1', '8', '7', '5', '5', '10', 6, NULL, NULL, NULL, NULL, NULL),
(715, '30-р цэцэрлэг', 1, 3, '1', 'Н', '12', '12', '', '359', '204', '359', '204', '', '', '3', '', '41', '35', '1', '1', '1', '1', '14', '13', '11', '11', '14', 9, NULL, NULL, NULL, NULL, NULL),
(716, '34-р цэцэрлэг', 1, 3, '1', 'Н', '1', '1', '', '11', '4', '11', '4', '', '', '', '', '6', '5', '1', '1', '', '', '1', '1', '', '', '4', 3, NULL, NULL, NULL, NULL, NULL),
(717, '47-р цэцэрлэг', 1, 3, '1', 'Н', '20', '20', '', '678', '318', '678', '318', '', '', '7', '2', '69', '62', '1', '1', '1', '1', '20', '20', '21', '21', '26', 19, NULL, NULL, NULL, NULL, NULL),
(718, '57-р цэцэрлэг', 1, 3, '1', 'Н', '11', '11', '', '354', '175', '354', '175', '', '', '1', '', '46', '37', '1', '1', '1', '1', '13', '12', '11', '11', '20', 12, NULL, NULL, NULL, NULL, NULL),
(719, '66-р цэцэрлэг', 1, 3, '1', 'Н', '16', '16', '', '518', '238', '518', '238', '', '', '', '1', '59', '52', '1', '1', '1', '1', '20', '19', '16', '16', '21', 15, NULL, NULL, NULL, NULL, NULL),
(720, '76-р цэцэрлэг', 1, 3, '1', 'Н', '12', '12', '', '330', '161', '330', '161', '', '', '2', '', '51', '46', '1', '1', '1', '1', '14', '14', '20', '20', '15', 10, NULL, NULL, NULL, NULL, NULL),
(721, '77-р цэцэрлэг', 1, 3, '1', 'Н', '18', '18', '', '576', '269', '576', '269', '', '', '9', '', '60', '54', '1', '1', '2', '2', '22', '20', '18', '18', '17', 13, NULL, NULL, NULL, NULL, NULL),
(722, '85-р цэцэрлэг', 1, 3, '1', 'Н', '12', '12', '', '360', '165', '360', '165', '', '', '1', '', '43', '38', '1', '1', '1', '1', '14', '14', '12', '12', '15', 10, NULL, NULL, NULL, NULL, NULL),
(723, '86-р цэцэрлэг', 1, 3, '1', 'Н', '13', '13', '', '335', '156', '335', '156', '', '', '2', '1', '41', '36', '1', '1', '1', '1', '14', '14', '12', '12', '13', 8, NULL, NULL, NULL, NULL, NULL),
(724, '87-р цэцэрлэг', 1, 3, '1', 'Н', '13', '13', '', '483', '230', '483', '230', '', '', '1', '1', '44', '39', '1', '1', '1', '1', '15', '14', '13', '13', '14', 10, NULL, NULL, NULL, NULL, NULL),
(725, '88-р цэцэрлэг', 1, 3, '1', 'Н', '13', '13', '', '400', '191', '400', '191', '', '', '3', '5', '44', '40', '1', '1', '1', '1', '15', '15', '13', '13', '14', 10, NULL, NULL, NULL, NULL, NULL),
(726, '89-р цэцэрлэг', 1, 3, '1', 'Н', '12', '12', '', '401', '183', '401', '183', '', '', '1', '3', '43', '37', '1', '1', '1', '1', '14', '13', '12', '12', '15', 10, NULL, NULL, NULL, NULL, NULL),
(727, '93-р цэцэрлэг', 1, 3, '1', 'Н', '12', '12', '', '375', '175', '375', '175', '', '', '', '2', '39', '34', '1', '1', '1', '1', '13', '12', '12', '12', '12', 8, NULL, NULL, NULL, NULL, NULL),
(728, '94-р цэцэрлэг', 1, 3, '1', 'Н', '10', '10', '', '254', '127', '254', '127', '', '', '8', '', '54', '47', '1', '1', '1', '1', '16', '15', '18', '18', '18', 12, NULL, NULL, NULL, NULL, NULL),
(729, '95-р цэцэрлэг', 1, 3, '1', 'Н', '18', '18', '', '476', '239', '476', '239', '', '', '2', '1', '58', '52', '1', '1', '2', '2', '21', '20', '17', '17', '17', 12, NULL, NULL, NULL, NULL, NULL),
(730, '96-р цэцэрлэг', 1, 3, '1', 'Н', '12', '12', '', '352', '170', '352', '170', '', '', '1', '5', '42', '37', '1', '1', '1', '1', '14', '14', '12', '12', '14', 9, NULL, NULL, NULL, NULL, NULL),
(731, '97-р цэцэрлэг', 1, 3, '1', 'Н', '12', '12', '', '370', '181', '370', '181', '', '', '1', '1', '42', '37', '1', '1', '1', '1', '14', '13', '12', '12', '14', 10, NULL, NULL, NULL, NULL, NULL),
(732, '98-р цэцэрлэг', 1, 3, '1', 'Н', '14', '14', '', '476', '227', '476', '227', '', '', '1', '4', '45', '39', '1', '1', '1', '1', '16', '14', '14', '14', '13', 9, NULL, NULL, NULL, NULL, NULL),
(733, '100-р цэцэрлэг', 1, 3, '1', 'Н', '13', '13', '', '566', '284', '566', '284', '', '', '1', '6', '42', '37', '1', '1', '1', '1', '13', '12', '12', '12', '15', 11, NULL, NULL, NULL, NULL, NULL),
(734, '114-р цэцэрлэг', 1, 3, '1', 'Н', '18', '18', '', '678', '322', '678', '322', '', '', '2', '2', '59', '54', '1', '1', '1', '1', '21', '21', '18', '18', '18', 13, NULL, NULL, NULL, NULL, NULL),
(735, '120-р цэцэрлэг', 1, 3, '1', 'Н', '21', '21', '', '704', '340', '704', '340', '', '', '', '', '79', '63', '1', '1', '2', '2', '24', '23', '20', '20', '32', 17, NULL, NULL, NULL, NULL, NULL),
(736, '133-р цэцэрлэг', 1, 3, '1', 'Н', '14', '14', '', '515', '263', '515', '263', '', '', '5', '3', '48', '41', '1', '1', '1', '1', '16', '15', '14', '14', '16', 10, NULL, NULL, NULL, NULL, NULL),
(737, '141-р цэцэрлэг', 1, 3, '1', 'Н', '14', '14', '', '485', '255', '485', '255', '', '', '1', '2', '45', '41', '1', '1', '1', '1', '16', '16', '14', '14', '13', 9, NULL, NULL, NULL, NULL, NULL),
(738, '157-р цэцэрлэг', 1, 3, '1', 'Н', '24', '24', '', '748', '370', '748', '370', '', '', '', '3', '75', '64', '1', '1', '3', '3', '27', '26', '22', '22', '22', 12, NULL, NULL, NULL, NULL, NULL),
(739, '161-р цэцэрлэг', 1, 3, '1', 'Н', '12', '12', '', '376', '167', '376', '167', '', '', '', '1', '43', '39', '1', '1', '1', '1', '14', '14', '12', '12', '15', 11, NULL, NULL, NULL, NULL, NULL),
(740, '162-р цэцэрлэг', 1, 3, '1', 'Н', '12', '12', '', '503', '246', '503', '246', '', '', '3', '', '42', '37', '1', '1', '1', '1', '14', '13', '12', '12', '14', 10, NULL, NULL, NULL, NULL, NULL),
(741, '164-р цэцэрлэг', 1, 3, '1', 'Н', '23', '23', '', '725', '350', '725', '350', '', '', '1', '8', '71', '66', '1', '1', '2', '2', '27', '26', '22', '22', '19', 15, NULL, NULL, NULL, NULL, NULL),
(742, '197-р цэцэрлэг', 1, 3, '1', 'Н', '4', '4', '', '141', '68', '141', '68', '', '', '1', '', '24', '20', '1', '1', '1', '1', '6', '6', '4', '4', '12', 8, NULL, NULL, NULL, NULL, NULL),
(743, '198-р цэцэрлэг', 1, 3, '1', 'Н', '4', '4', '', '160', '75', '160', '75', '', '', '', '3', '24', '18', '1', '1', '1', '1', '6', '5', '4', '4', '12', 7, NULL, NULL, NULL, NULL, NULL),
(744, '249-р цэцэрлэг', 1, 3, '1', 'Н', '4', '4', '', '39', '23', '39', '23', '', '', '', '', '11', '11', '1', '1', '', '', '4', '4', '3', '3', '3', 3, NULL, NULL, NULL, NULL, NULL),
(745, '242-р цэцэрлэг', 1, 3, '1', 'Н', '5', '5', '', '186', '96', '186', '96', '', '', '', '', '25', '21', '1', '1', '1', '1', '7', '6', '5', '5', '11', 8, NULL, NULL, NULL, NULL, NULL),
(746, '262-р цэцэрлэг', 1, 3, '1', 'Н', '17', '17', '', '691', '352', '691', '352', '', '', '', '1', '34', '28', '1', '1', '1', '', '13', '12', '9', '9', '10', 6, NULL, NULL, NULL, NULL, NULL),
(747, '266-р цэцэрлэг', 1, 3, '1', 'Н', '4', '4', '', '122', '56', '122', '56', '', '', '1', '1', '22', '18', '1', '1', '1', '1', '6', '6', '3', '3', '11', 7, NULL, NULL, NULL, NULL, NULL),
(748, '295-р цэцэрлэг', 1, 3, '1', 'Н', '9', '9', '', '289', '124', '289', '124', '', '', '1', '', '33', '29', '1', '1', '1', '1', '11', '10', '7', '7', '13', 10, NULL, NULL, NULL, NULL, NULL),
(749, '278-р цэцэрлэг', 1, 3, '1', 'Н', '10', '10', '', '348', '168', '348', '168', '', '', '6', '', '33', '29', '1', '1', '1', '1', '11', '11', '10', '10', '10', 6, NULL, NULL, NULL, NULL, NULL),
(750, '309-р цэцэрлэг', 1, 3, '1', 'Н', '13', '13', '', '522', '252', '522', '252', '', '', '2', '', '34', '31', '1', '1', '1', '1', '13', '13', '11', '11', '8', 5, NULL, NULL, NULL, NULL, NULL),
(751, 'Билэг авьяас цэцэрлэг', 1, 3, '2', 'Н', '2', '2', '', '72', '31', '72', '31', '', '', '1', '', '6', '5', '1', '1', '', '', '2', '2', '2', '2', '1', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `statistic` (`id`, `name`, `city`, `district`, `type`, `loc`, `buleg`, `buleg_prim`, `buleg_sla`, `child_total`, `child_girl`, `child_prim_total`, `child_prim_girl`, `child_alter_total`, `child_alter_girl`, `child_herder`, `child_disabled`, `employees_total`, `employees_female`, `director`, `director_female`, `manager`, `manager_female`, `teacher_total`, `teacher_female`, `subteacher_total`, `subteacher_female`, `others_total`, `others_female`, `address`, `contact`, `phone`, `director_name`, `email`) VALUES
(752, 'Бяцхан сувд цэцэрлэг', 1, 3, '2', 'Н', '4', '4', '', '26', '11', '26', '11', '', '', '', '12', '7', '7', '1', '1', '', '', '', '', '3', '3', '3', 3, NULL, NULL, NULL, NULL, NULL),
(753, 'Бяцхан эрдэмтэн цэцэрлэг', 1, 3, '2', 'Н', '2', '2', '', '25', '7', '25', '7', '', '', '', '25', '6', '6', '1', '1', '1', '1', '2', '2', '', '', '2', 2, NULL, NULL, NULL, NULL, NULL),
(754, 'Бүжин цэцэрлэг', 1, 3, '2', 'Н', '1', '1', '', '22', '8', '22', '8', '', '', '1', '', '2', '2', '1', '1', '', '', '1', '1', '', '', '', 0, NULL, NULL, NULL, NULL, NULL),
(755, 'Бөмбөөхөн цэцэрлэг', 1, 3, '2', 'Н', '4', '4', '', '135', '76', '135', '76', '', '', '1', '', '13', '13', '1', '1', '1', '1', '4', '4', '4', '4', '3', 3, NULL, NULL, NULL, NULL, NULL),
(756, 'Гоё ертөнц цэцэрлэг', 1, 3, '2', 'Н', '4', '4', '', '64', '35', '64', '35', '', '', '', '', '12', '9', '1', '1', '', '', '3', '3', '3', '3', '5', 2, NULL, NULL, NULL, NULL, NULL),
(757, 'Гэгээн ертөнц 2 цэцэрлэг', 1, 3, '2', 'Н', '2', '2', '', '37', '21', '37', '21', '', '', '', '', '5', '5', '1', '1', '', '', '2', '2', '1', '1', '1', 1, NULL, NULL, NULL, NULL, NULL),
(758, 'Дөрвөн улирал жаалууд цэцэрлэг', 1, 3, '2', 'Н', '3', '3', '', '74', '36', '74', '36', '', '', '', '', '8', '8', '1', '1', '', '', '3', '3', '3', '3', '1', 1, NULL, NULL, NULL, NULL, NULL),
(759, 'Жаргалан цэцэрлэг', 1, 3, '2', 'Н', '5', '5', '', '155', '78', '155', '78', '', '', '', '', '11', '11', '1', '1', '1', '1', '3', '3', '5', '5', '1', 1, NULL, NULL, NULL, NULL, NULL),
(760, 'Золбоолог багачууд цэцэрлэг', 1, 3, '2', 'Н', '2', '2', '', '48', '26', '48', '26', '', '', '', '', '5', '4', '1', '', '', '', '2', '2', '1', '1', '1', 1, NULL, NULL, NULL, NULL, NULL),
(761, 'Их хонгор үрс цэцэрлэг', 1, 3, '2', 'Н', '2', '2', '', '34', '12', '34', '12', '', '', '', '', '7', '6', '1', '1', '', '', '2', '2', '3', '3', '1', 0, NULL, NULL, NULL, NULL, NULL),
(762, 'Лусын дагина цэцэрлэг', 1, 3, '2', 'Н', '3', '3', '', '51', '27', '51', '27', '', '', '5', '', '8', '8', '1', '1', '1', '1', '2', '2', '3', '3', '1', 1, NULL, NULL, NULL, NULL, NULL),
(763, 'Мон- эрин цэцэрлэг', 1, 3, '2', 'Н', '4', '4', '', '111', '51', '111', '51', '', '', '', '', '10', '9', '1', '1', '', '', '4', '3', '4', '4', '1', 1, NULL, NULL, NULL, NULL, NULL),
(764, 'Мөндөө цэцэрлэг цэцэрлэг', 1, 3, '2', 'Н', '1', '1', '', '25', '11', '25', '11', '', '', '1', '', '4', '3', '1', '1', '', '', '1', '1', '1', '1', '1', 0, NULL, NULL, NULL, NULL, NULL),
(765, 'Оджин цэцэрлэг', 1, 3, '2', 'Н', '5', '5', '', '120', '62', '120', '62', '', '', '1', '', '11', '11', '1', '1', '', '', '5', '5', '5', '5', '', 0, NULL, NULL, NULL, NULL, NULL),
(766, 'Оньсхон-2 цэцэрлэг', 1, 3, '2', 'Н', '3', '3', '', '49', '27', '49', '27', '', '', '1', '', '6', '6', '1', '1', '', '', '3', '3', '1', '1', '1', 1, NULL, NULL, NULL, NULL, NULL),
(767, 'Саруул өргөө цэцэрлэг', 1, 3, '2', 'Н', '4', '4', '', '60', '24', '60', '24', '', '', '2', '', '8', '8', '1', '1', '', '', '4', '4', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(768, 'Тэлмэн цэцэрлэг', 1, 3, '2', 'Н', '2', '2', '', '18', '5', '18', '5', '', '', '', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(769, 'Түвшинбүүвэй цэцэрлэг', 1, 3, '2', 'Н', '3', '3', '', '47', '26', '47', '26', '', '', '', '', '5', '5', '1', '1', '', '', '', '', '3', '3', '1', 1, NULL, NULL, NULL, NULL, NULL),
(770, 'Хэрэмхэн цэцэрлэг', 1, 3, '2', 'Н', '2', '2', '', '39', '19', '39', '19', '', '', '', '', '5', '5', '1', '1', '', '', '2', '2', '1', '1', '1', 1, NULL, NULL, NULL, NULL, NULL),
(771, 'Хүслэн цэцэрлэг', 1, 3, '2', 'Н', '3', '3', '', '61', '27', '61', '27', '', '', '3', '', '7', '7', '1', '1', '', '', '3', '3', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(772, 'Чин хайрын бэлэг цэцэрлэг', 1, 3, '2', 'Н', '3', '3', '', '44', '18', '44', '18', '', '', '', '', '7', '7', '1', '1', '', '', '3', '3', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(773, 'Чингүндэй өргөө цэцэрлэг', 1, 3, '2', 'Н', '1', '1', '', '15', '4', '15', '4', '', '', '', '', '3', '3', '1', '1', '', '', '1', '1', '', '', '1', 1, NULL, NULL, NULL, NULL, NULL),
(774, 'Шинэ жаргалан цэцэрлэг', 1, 3, '2', 'Н', '6', '6', '', '190', '101', '190', '101', '', '', '2', '', '15', '14', '2', '1', '', '', '6', '6', '6', '6', '1', 1, NULL, NULL, NULL, NULL, NULL),
(775, 'Шүтээн үрс цэцэрлэг', 1, 3, '2', 'Н', '5', '5', '', '88', '53', '88', '53', '', '', '', '', '13', '13', '1', '1', '', '', '3', '3', '6', '6', '3', 3, NULL, NULL, NULL, NULL, NULL),
(776, 'Энх өргөө цэцэрлэг', 1, 3, '2', 'Н', '3', '3', '', '46', '20', '46', '20', '', '', '1', '', '11', '9', '1', '1', '', '', '3', '3', '3', '3', '4', 2, NULL, NULL, NULL, NULL, NULL),
(777, 'Эрдэм цэцэрлэг цэцэрлэг', 1, 3, '2', 'Н', '5', '5', '', '150', '73', '150', '73', '', '', '1', '', '13', '13', '1', '1', '', '', '6', '6', '4', '4', '2', 2, NULL, NULL, NULL, NULL, NULL),
(778, 'Эрин зууны багачууд цэцэрлэг', 1, 3, '2', 'Н', '1', '1', '', '22', '12', '22', '12', '', '', '', '', '4', '3', '1', '1', '', '', '1', '1', '1', '1', '1', 0, NULL, NULL, NULL, NULL, NULL),
(779, 'Эрхэмсэг оршихуй цэцэрлэг', 1, 3, '2', 'Н', '3', '3', '', '38', '25', '38', '25', '', '', '', '', '6', '6', '1', '1', '', '', '3', '3', '1', '1', '1', 1, NULL, NULL, NULL, NULL, NULL),
(780, 'Монгени багачууд', 1, 3, '2', 'Н', '2', '2', '', '36', '20', '36', '20', '', '', '', '', '3', '3', '1', '1', '', '', '1', '1', '', '', '1', 1, NULL, NULL, NULL, NULL, NULL),
(781, 'Амгалангуа', 1, 3, '2', 'Н', '4', '4', '', '17', '9', '17', '9', '', '', '', '', '6', '6', '', '', '1', '1', '3', '3', '', '', '2', 2, NULL, NULL, NULL, NULL, NULL),
(782, '“Эм Эн Би-гийн хүүхдүүд”', 1, 3, '2', 'Н', '4', '4', '', '99', '45', '99', '45', '', '', '', '', '13', '13', '1', '1', '', '', '4', '4', '4', '4', '4', 4, NULL, NULL, NULL, NULL, NULL),
(783, 'Ялгууны найзууд', 1, 3, '2', 'Н', '2', '2', '', '54', '23', '54', '23', '', '', '1', '', '4', '4', '', '', '', '', '1', '1', '3', '3', '', 0, NULL, NULL, NULL, NULL, NULL),
(784, 'Бяцхан монгол одод', 1, 3, '2', 'Н', '2', '2', '', '42', '23', '42', '23', '', '', '', '', '3', '3', '1', '1', '', '', '1', '1', '1', '1', '', 0, NULL, NULL, NULL, NULL, NULL),
(785, 'Нандин гурван эрдэнэ гурав цэцэрлэг', 1, 3, '2', 'Н', '2', '2', '', '30', '17', '30', '17', '', '', '', '', '6', '6', '1', '1', '', '', '2', '2', '1', '1', '2', 2, NULL, NULL, NULL, NULL, NULL),
(786, 'Жаалхүү цэцэрлэг', 1, 3, '2', 'Н', '2', '2', '', '64', '27', '64', '27', '', '', '', '', '7', '6', '1', '1', '', '', '2', '2', '3', '3', '1', 0, NULL, NULL, NULL, NULL, NULL),
(787, 'Сод жаал цэцэрлэг', 1, 3, '2', 'Н', '2', '2', '', '44', '21', '44', '21', '', '', '', '', '5', '5', '1', '1', '', '', '1', '1', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(788, 'Хүслийн ордон цэцэрлэг', 1, 3, '2', 'Н', '3', '3', '', '47', '18', '47', '18', '', '', '', '44', '16', '13', '1', '1', '1', '', '5', '5', '5', '5', '4', 2, NULL, NULL, NULL, NULL, NULL),
(789, 'Нарны хаан хүүхдүүд цэцэрлэг', 1, 3, '2', 'Н', '3', '3', '', '24', '9', '24', '9', '', '', '', '11', '6', '5', '1', '1', '', '', '2', '1', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(790, 'Амин сар цэцэрлэг', 1, 3, '2', 'Н', '4', '4', '', '124', '60', '124', '60', '', '', '1', '', '10', '10', '1', '1', '', '', '4', '4', '3', '3', '2', 2, NULL, NULL, NULL, NULL, NULL),
(791, 'Минж цэцэрлэг', 1, 3, '2', 'Н', '5', '5', '', '129', '64', '129', '64', '', '', '1', '', '11', '11', '1', '1', '', '', '3', '3', '3', '3', '4', 4, NULL, NULL, NULL, NULL, NULL),
(792, 'Ай кидс цэцэрлэг', 1, 3, '2', 'Н', '5', '5', '', '105', '55', '105', '55', '', '', '', '', '10', '10', '1', '1', '', '', '3', '3', '3', '3', '3', 3, NULL, NULL, NULL, NULL, NULL),
(793, 'Сэцэн өлгийн өргөө цэцэрлэг', 1, 3, '2', 'Н', '1', '1', '', '13', '6', '13', '6', '', '', '', '', '4', '4', '1', '1', '', '', '1', '1', '1', '1', '1', 1, NULL, NULL, NULL, NULL, NULL),
(794, 'Энхлэнбэби цэцэрлэг', 1, 3, '2', 'Н', '2', '2', '', '46', '18', '46', '18', '', '', '1', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(795, 'Мандалын найзууд цэцэрлэг', 1, 3, '2', 'Н', '2', '2', '', '11', '5', '11', '5', '', '', '', '', '6', '5', '', '', '1', '1', '3', '3', '1', '1', '1', 0, NULL, NULL, NULL, NULL, NULL),
(796, 'Ордны эзэд цэцэрлэг', 1, 3, '2', 'Н', '2', '2', '', '27', '14', '27', '14', '', '', '', '', '6', '6', '1', '1', '', '', '2', '2', '1', '1', '2', 2, NULL, NULL, NULL, NULL, NULL),
(797, '3-р цэцэрлэг', 1, 4, '1', 'Н', '15', '15', '', '519', '262', '519', '262', '', '', '7', '', '70', '57', '1', '1', '2', '2', '17', '16', '15', '15', '35', 23, NULL, NULL, NULL, NULL, NULL),
(798, '6-р цэцэрлэг', 1, 4, '1', 'Н', '15', '15', '', '528', '252', '528', '252', '', '', '7', '1', '53', '45', '1', '1', '2', '2', '17', '16', '14', '14', '19', 12, NULL, NULL, NULL, NULL, NULL),
(799, '8-р цэцэрлэг', 1, 4, '1', 'Н', '5', '5', '', '246', '112', '246', '112', '', '', '', '3', '28', '22', '1', '1', '1', '1', '7', '6', '5', '5', '14', 9, NULL, NULL, NULL, NULL, NULL),
(800, '10-р цэцэрлэг', 1, 4, '1', 'Н', '15', '15', '', '189', '77', '189', '77', '', '', '5', '184', '103', '86', '1', '1', '1', '1', '17', '16', '29', '29', '55', 39, NULL, NULL, NULL, NULL, NULL),
(801, '20-р цэцэрлэг', 1, 4, '1', 'Н', '21', '21', '', '682', '319', '682', '319', '', '', '8', '5', '76', '60', '1', '1', '2', '2', '23', '21', '17', '17', '33', 19, NULL, NULL, NULL, NULL, NULL),
(802, '21-р цэцэрлэг', 1, 4, '1', 'Н', '15', '15', '', '657', '312', '657', '312', '', '', '', '2', '49', '44', '1', '1', '2', '2', '18', '17', '13', '13', '15', 11, NULL, NULL, NULL, NULL, NULL),
(803, '22-р цэцэрлэг', 1, 4, '1', 'Н', '16', '16', '', '681', '324', '681', '324', '', '', '4', '5', '58', '51', '1', '1', '1', '1', '18', '18', '16', '16', '22', 15, NULL, NULL, NULL, NULL, NULL),
(804, '32-р цэцэрлэг', 1, 4, '1', 'Н', '16', '16', '', '657', '300', '657', '300', '', '', '', '3', '63', '50', '1', '1', '2', '2', '19', '17', '15', '15', '26', 15, NULL, NULL, NULL, NULL, NULL),
(805, '45-р цэцэрлэг', 1, 4, '1', 'Н', '8', '8', '', '231', '110', '231', '110', '', '', '1', '', '34', '27', '1', '1', '1', '1', '10', '9', '8', '8', '14', 8, NULL, NULL, NULL, NULL, NULL),
(806, '50-р цэцэрлэг', 1, 4, '1', 'Н', '17', '17', '', '605', '301', '605', '301', '', '', '1', '2', '59', '49', '1', '1', '2', '2', '18', '18', '14', '14', '24', 14, NULL, NULL, NULL, NULL, NULL),
(807, '52-р цэцэрлэг', 1, 4, '1', 'Н', '7', '7', '', '277', '143', '277', '143', '', '', '', '2', '30', '25', '1', '1', '2', '2', '7', '7', '5', '5', '15', 10, NULL, NULL, NULL, NULL, NULL),
(808, '59-р цэцэрлэг', 1, 4, '1', 'Н', '16', '16', '', '589', '274', '589', '274', '', '', '', '3', '62', '51', '1', '1', '2', '2', '19', '16', '16', '16', '24', 16, NULL, NULL, NULL, NULL, NULL),
(809, '61-р цэцэрлэг', 1, 4, '1', 'Н', '16', '16', '', '579', '285', '579', '285', '', '', '1', '5', '64', '55', '1', '1', '2', '2', '19', '19', '16', '16', '26', 17, NULL, NULL, NULL, NULL, NULL),
(810, '62-р цэцэрлэг', 1, 4, '1', 'Н', '13', '13', '', '360', '171', '360', '171', '', '', '4', '4', '49', '43', '1', '1', '1', '1', '15', '14', '13', '13', '19', 14, NULL, NULL, NULL, NULL, NULL),
(811, '63-р цэцэрлэг', 1, 4, '1', 'Н', '11', '11', '', '391', '189', '391', '189', '', '', '22', '', '58', '50', '1', '1', '2', '2', '13', '12', '18', '18', '24', 17, NULL, NULL, NULL, NULL, NULL),
(812, '64-р цэцэрлэг', 1, 4, '1', 'Н', '5', '5', '', '191', '86', '191', '86', '', '', '3', '', '27', '19', '1', '1', '1', '1', '7', '4', '5', '5', '13', 8, NULL, NULL, NULL, NULL, NULL),
(813, '82-р цэцэрлэг', 1, 4, '1', 'Н', '15', '15', '', '645', '317', '645', '317', '', '', '2', '1', '42', '38', '1', '1', '1', '1', '16', '16', '11', '11', '13', 9, NULL, NULL, NULL, NULL, NULL),
(814, '115-р цэцэрлэг', 1, 4, '1', 'Н', '20', '20', '', '731', '362', '731', '362', '', '', '3', '', '73', '62', '1', '1', '2', '2', '24', '22', '17', '17', '29', 20, NULL, NULL, NULL, NULL, NULL),
(815, '122-р цэцэрлэг', 1, 4, '1', 'Н', '14', '14', '', '601', '263', '601', '263', '', '', '', '3', '53', '45', '1', '1', '1', '1', '18', '17', '14', '14', '19', 12, NULL, NULL, NULL, NULL, NULL),
(816, '128-р цэцэрлэг', 1, 4, '1', 'Н', '9', '9', '', '338', '164', '338', '164', '', '', '3', '', '35', '29', '1', '1', '2', '2', '8', '8', '6', '6', '18', 12, NULL, NULL, NULL, NULL, NULL),
(817, '129-р цэцэрлэг', 1, 4, '1', 'Н', '18', '18', '', '723', '342', '723', '342', '', '', '1', '', '65', '57', '1', '1', '1', '1', '21', '20', '18', '18', '24', 17, NULL, NULL, NULL, NULL, NULL),
(818, '136-р цэцэрлэг', 1, 4, '1', 'Н', '12', '12', '', '400', '202', '400', '202', '', '', '1', '1', '41', '37', '1', '1', '2', '2', '15', '15', '10', '10', '13', 9, NULL, NULL, NULL, NULL, NULL),
(819, '147-р цэцэрлэг', 1, 4, '1', 'Н', '30', '30', '', '1027', '508', '1027', '508', '', '', '4', '4', '85', '76', '1', '1', '1', '1', '33', '33', '25', '25', '25', 16, NULL, NULL, NULL, NULL, NULL),
(820, '167-р цэцэрлэг', 1, 4, '1', 'Н', '11', '11', '', '307', '167', '307', '167', '', '', '6', '2', '44', '33', '1', '1', '2', '1', '11', '10', '10', '10', '20', 11, NULL, NULL, NULL, NULL, NULL),
(821, '168-р цэцэрлэг', 1, 4, '1', 'Н', '8', '8', '', '289', '142', '289', '142', '', '', '3', '', '34', '28', '1', '1', '1', '1', '9', '8', '8', '8', '15', 10, NULL, NULL, NULL, NULL, NULL),
(822, '169-р цэцэрлэг', 1, 4, '1', 'Н', '4', '4', '', '171', '80', '171', '80', '', '', '', '', '24', '19', '1', '1', '1', '1', '4', '4', '4', '4', '14', 9, NULL, NULL, NULL, NULL, NULL),
(823, '172-р цэцэрлэг', 1, 4, '1', 'Н', '11', '11', '', '292', '158', '292', '158', '', '', '1', '', '32', '28', '1', '1', '1', '1', '11', '11', '7', '7', '12', 8, NULL, NULL, NULL, NULL, NULL),
(824, '191-р цэцэрлэг', 1, 4, '1', 'Н', '10', '10', '', '256', '139', '256', '139', '', '', '1', '', '35', '29', '1', '1', '1', '1', '11', '11', '9', '9', '13', 7, NULL, NULL, NULL, NULL, NULL),
(825, '199-р цэцэрлэг', 1, 4, '1', 'Н', '11', '11', '', '386', '180', '386', '180', '', '', '4', '', '45', '33', '1', '1', '1', '1', '11', '10', '11', '11', '21', 10, NULL, NULL, NULL, NULL, NULL),
(826, '200-р цэцэрлэг', 1, 4, '1', 'Н', '8', '8', '', '286', '134', '286', '134', '', '', '2', '4', '39', '31', '1', '1', '1', '1', '10', '9', '8', '8', '19', 12, NULL, NULL, NULL, NULL, NULL),
(827, '201-р цэцэрлэг', 1, 4, '1', 'Н', '8', '8', '', '328', '173', '328', '173', '', '', '6', '', '32', '28', '1', '1', '1', '1', '10', '10', '8', '8', '12', 8, NULL, NULL, NULL, NULL, NULL),
(828, '202-р цэцэрлэг', 1, 4, '1', 'Н', '8', '8', '', '282', '148', '282', '148', '', '', '3', '1', '34', '28', '1', '1', '1', '1', '10', '9', '7', '7', '15', 10, NULL, NULL, NULL, NULL, NULL),
(829, '203-р цэцэрлэг', 1, 4, '1', 'Н', '12', '12', '', '394', '188', '394', '188', '', '', '9', '1', '34', '29', '1', '1', '1', '1', '9', '9', '8', '8', '15', 10, NULL, NULL, NULL, NULL, NULL),
(830, '204-р цэцэрлэг', 1, 4, '1', 'Н', '4', '4', '', '191', '97', '191', '97', '', '', '2', '', '26', '21', '1', '1', '1', '1', '6', '6', '4', '4', '14', 9, NULL, NULL, NULL, NULL, NULL),
(831, '210-р цэцэрлэг', 1, 4, '1', 'Н', '10', '10', '', '302', '159', '302', '159', '', '', '4', '', '35', '30', '1', '1', '1', '1', '11', '9', '10', '10', '12', 9, NULL, NULL, NULL, NULL, NULL),
(832, '213-р цэцэрлэг', 1, 4, '1', 'Н', '7', '7', '', '287', '132', '287', '132', '', '', '3', '1', '33', '28', '1', '1', '1', '1', '9', '8', '7', '7', '15', 11, NULL, NULL, NULL, NULL, NULL),
(833, '211-р цэцэрлэг', 1, 4, '1', 'Н', '10', '10', '', '406', '187', '406', '187', '', '', '5', '', '33', '27', '1', '1', '1', '1', '11', '11', '4', '4', '16', 10, NULL, NULL, NULL, NULL, NULL),
(834, '212-р цэцэрлэг', 1, 4, '1', 'Н', '10', '10', '', '305', '147', '305', '147', '', '', '1', '', '39', '35', '1', '1', '1', '1', '11', '11', '10', '10', '16', 12, NULL, NULL, NULL, NULL, NULL),
(835, '251-р цэцэрлэг', 1, 4, '1', 'Н', '4', '4', '', '173', '96', '173', '96', '', '', '', '1', '20', '16', '1', '1', '1', '1', '4', '4', '4', '4', '10', 6, NULL, NULL, NULL, NULL, NULL),
(836, '255-р цэцэрлэг', 1, 4, '1', 'Н', '7', '7', '', '299', '149', '299', '149', '', '', '', '', '27', '20', '1', '1', '2', '2', '7', '5', '7', '7', '10', 5, NULL, NULL, NULL, NULL, NULL),
(837, '256-р цэцэрлэг', 1, 4, '1', 'Н', '15', '15', '', '710', '388', '710', '388', '', '', '', '', '64', '52', '1', '1', '2', '2', '18', '16', '15', '15', '28', 18, NULL, NULL, NULL, NULL, NULL),
(838, '146-р цэцэрлэг', 1, 4, '1', 'Н', '19', '19', '', '796', '399', '796', '399', '', '', '', '5', '75', '64', '1', '1', '2', '2', '24', '21', '19', '19', '29', 21, NULL, NULL, NULL, NULL, NULL),
(839, '268-р цэцэрлэг', 1, 4, '1', 'Н', '10', '10', '', '451', '213', '451', '213', '', '', '6', '', '28', '24', '1', '1', '1', '1', '10', '10', '4', '4', '12', 8, NULL, NULL, NULL, NULL, NULL),
(840, '267-р цэцэрлэг', 1, 4, '1', 'Н', '11', '11', '', '348', '167', '348', '167', '', '', '4', '', '33', '29', '1', '1', '2', '2', '9', '9', '7', '7', '14', 10, NULL, NULL, NULL, NULL, NULL),
(841, '257-р цэцэрлэг', 1, 4, '1', 'Н', '6', '6', '', '235', '114', '235', '114', '', '', '5', '1', '27', '22', '1', '1', '1', '1', '6', '5', '6', '6', '13', 9, NULL, NULL, NULL, NULL, NULL),
(842, '289-р цэцэрлэг', 1, 4, '1', 'Н', '14', '14', '', '597', '289', '597', '289', '', '', '5', '', '50', '43', '1', '1', '2', '2', '16', '14', '13', '13', '18', 13, NULL, NULL, NULL, NULL, NULL),
(843, '296-р цэцэрлэг', 1, 4, '1', 'Н', '10', '10', '', '383', '191', '383', '191', '', '', '', '4', '39', '34', '1', '1', '1', '1', '12', '11', '10', '10', '15', 11, NULL, NULL, NULL, NULL, NULL),
(844, '302-р цэцэрлэг', 1, 4, '1', 'Н', '4', '4', '', '155', '71', '155', '71', '', '', '4', '', '24', '20', '1', '1', '', '', '5', '5', '4', '4', '14', 10, NULL, NULL, NULL, NULL, NULL),
(845, '297-р цэцэрлэг', 1, 4, '1', 'Н', '9', '9', '', '241', '118', '241', '118', '', '', '3', '1', '38', '32', '1', '1', '1', '1', '10', '10', '9', '9', '17', 11, NULL, NULL, NULL, NULL, NULL),
(846, '265-р цэцэрлэг', 1, 4, '1', 'Н', '4', '4', '', '118', '54', '118', '54', '', '', '', '1', '23', '19', '1', '1', '1', '1', '4', '4', '4', '4', '13', 9, NULL, NULL, NULL, NULL, NULL),
(847, '301-р цэцэрлэг', 1, 4, '1', 'Н', '14', '14', '', '487', '235', '487', '235', '', '', '2', '', '48', '43', '1', '1', '2', '2', '15', '15', '11', '11', '19', 14, NULL, NULL, NULL, NULL, NULL),
(848, '305-р цэцэрлэг', 1, 4, '1', 'Н', '8', '8', '', '388', '189', '388', '189', '', '', '', '1', '32', '27', '1', '1', '1', '1', '9', '9', '8', '8', '13', 8, NULL, NULL, NULL, NULL, NULL),
(849, 'Арга билэг', 1, 4, '2', 'Н', '3', '3', '', '67', '30', '67', '30', '', '', '', '', '8', '8', '1', '1', '1', '1', '3', '3', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(850, 'Аз хишиг цэцэрлэг', 1, 4, '2', 'Н', '4', '4', '', '134', '67', '134', '67', '', '', '4', '', '13', '9', '1', '1', '', '', '4', '4', '2', '1', '6', 3, NULL, NULL, NULL, NULL, NULL),
(851, 'Алдрай цэцэрлэг', 1, 4, '2', 'Н', '4', '4', '', '60', '38', '60', '38', '', '', '', '', '9', '9', '1', '1', '', '', '3', '3', '3', '3', '2', 2, NULL, NULL, NULL, NULL, NULL),
(852, 'Алтан манцуй цэцэрлэг', 1, 4, '2', 'Н', '4', '4', '', '135', '70', '135', '70', '', '', '2', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(853, 'Амилаагийн найз нар  цэцэрлэг', 1, 4, '2', 'Н', '6', '6', '', '140', '66', '140', '66', '', '', '', '', '15', '15', '1', '1', '', '', '6', '6', '6', '6', '2', 2, NULL, NULL, NULL, NULL, NULL),
(854, 'Амилагийн жаалууд цэцэрлэг', 1, 4, '2', 'Н', '4', '4', '', '73', '34', '73', '34', '', '', '1', '', '10', '10', '1', '1', '', '', '4', '4', '4', '4', '1', 1, NULL, NULL, NULL, NULL, NULL),
(855, 'Амина цэцэрлэг', 1, 4, '2', 'Н', '3', '3', '', '93', '40', '93', '40', '', '', '1', '', '7', '7', '1', '1', '', '', '3', '3', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(856, 'Анар-Эрдэнэ цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '50', '28', '50', '28', '', '', '1', '', '6', '6', '1', '1', '', '', '1', '1', '2', '2', '2', 2, NULL, NULL, NULL, NULL, NULL),
(857, 'Ану  цэцэрлэг', 1, 4, '2', 'Н', '3', '3', '', '70', '34', '70', '34', '', '', '1', '', '7', '7', '1', '1', '', '', '3', '3', '1', '1', '2', 2, NULL, NULL, NULL, NULL, NULL),
(858, 'Байгаль эх-эко цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '77', '41', '77', '41', '', '', '2', '', '7', '7', '1', '1', '1', '1', '2', '2', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(859, 'Бамбага эгч цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '51', '25', '51', '25', '', '', '1', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(860, 'Баян Монголын Багачууд цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '86', '46', '86', '46', '', '', '1', '', '5', '5', '', '', '', '', '2', '2', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(861, 'Баяр баясал цэцэрлэг', 1, 4, '2', 'Н', '4', '4', '', '72', '29', '72', '29', '', '', '3', '1', '14', '12', '1', '1', '1', '1', '4', '4', '3', '3', '5', 3, NULL, NULL, NULL, NULL, NULL),
(862, 'Бидний үрс цэцэрлэг', 1, 4, '2', 'Н', '8', '8', '', '116', '57', '116', '57', '', '', '', '', '21', '21', '1', '1', '', '', '9', '9', '8', '8', '3', 3, NULL, NULL, NULL, NULL, NULL),
(863, 'Билгүүтзаяа цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '43', '24', '43', '24', '', '', '1', '', '6', '6', '', '', '1', '1', '3', '3', '2', '2', '', 0, NULL, NULL, NULL, NULL, NULL),
(864, 'Биндэръяа цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '63', '26', '63', '26', '', '', '1', '', '7', '6', '1', '1', '', '', '2', '2', '2', '2', '2', 1, NULL, NULL, NULL, NULL, NULL),
(865, 'Бумбагадай цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '32', '11', '32', '11', '', '', '', '', '5', '5', '1', '1', '', '', '1', '1', '1', '1', '2', 2, NULL, NULL, NULL, NULL, NULL),
(866, 'Бяцхан баясгалан цэцэрлэг', 1, 4, '2', 'Н', '7', '7', '', '176', '82', '176', '82', '', '', '', '', '20', '19', '1', '1', '', '', '8', '7', '7', '7', '4', 4, NULL, NULL, NULL, NULL, NULL),
(867, 'Бяцхан монгол цэцэрлэг', 1, 4, '2', 'Н', '6', '6', '', '165', '83', '165', '83', '', '', '', '', '13', '12', '1', '1', '', '', '6', '5', '4', '4', '2', 2, NULL, NULL, NULL, NULL, NULL),
(868, 'Бяцхан өргөө цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '57', '24', '57', '24', '', '', '1', '', '5', '5', '', '', '', '', '2', '2', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(869, 'Даянхүү  цэцэрлэг', 1, 4, '2', 'Н', '6', '6', '', '216', '101', '216', '101', '', '', '3', '', '17', '15', '1', '1', '', '', '6', '6', '6', '6', '4', 2, NULL, NULL, NULL, NULL, NULL),
(870, 'Дондогмаа цэцэрлэг', 1, 4, '2', 'Н', '8', '8', '', '304', '151', '304', '151', '', '', '', '', '20', '20', '1', '1', '1', '1', '8', '8', '8', '8', '2', 2, NULL, NULL, NULL, NULL, NULL),
(871, 'Дэггүй жаалууд цэцэрлэг', 1, 4, '2', 'Н', '6', '6', '', '189', '96', '189', '96', '', '', '', '', '17', '16', '1', '1', '1', '1', '6', '6', '6', '6', '3', 2, NULL, NULL, NULL, NULL, NULL),
(872, 'Дэгдээхий нас цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '63', '32', '63', '32', '', '', '', '', '7', '7', '1', '1', '', '', '2', '2', '3', '3', '1', 1, NULL, NULL, NULL, NULL, NULL),
(873, 'Дэгдээхий үрс цэцэрлэг', 1, 4, '2', 'Н', '4', '4', '', '131', '74', '131', '74', '', '', '1', '', '12', '12', '1', '1', '', '', '4', '4', '4', '4', '3', 3, NULL, NULL, NULL, NULL, NULL),
(874, 'Дэлгэрэх нарны үрс цэцэрлэг', 1, 4, '2', 'Н', '3', '3', '', '84', '42', '84', '42', '', '', '2', '', '8', '8', '1', '1', '', '', '3', '3', '3', '3', '1', 1, NULL, NULL, NULL, NULL, NULL),
(875, 'Дүүрэн жаргал цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '55', '27', '55', '27', '', '', '1', '', '2', '2', '1', '1', '', '', '', '', '1', '1', '', 0, NULL, NULL, NULL, NULL, NULL),
(876, 'Дөлгөөнтуул цэцэрлэг', 1, 4, '2', 'Н', '3', '3', '', '95', '42', '95', '42', '', '', '', '', '10', '9', '1', '1', '1', '1', '2', '2', '4', '4', '2', 1, NULL, NULL, NULL, NULL, NULL),
(877, 'Есөн-эрдэнэ цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '67', '33', '67', '33', '', '', '6', '', '7', '6', '1', '1', '', '', '2', '2', '2', '2', '2', 1, NULL, NULL, NULL, NULL, NULL),
(878, 'Жаргалан гурав цэцэрлэг', 1, 4, '2', 'Н', '6', '6', '', '199', '98', '199', '98', '', '', '1', '', '15', '14', '1', '1', '', '', '7', '7', '6', '6', '1', 0, NULL, NULL, NULL, NULL, NULL),
(879, 'Жи жи цэцэрлэг', 1, 4, '2', 'Н', '4', '4', '', '133', '69', '133', '69', '', '', '', '', '10', '10', '1', '1', '', '', '3', '3', '4', '4', '2', 2, NULL, NULL, NULL, NULL, NULL),
(880, 'Илбэнх цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '45', '23', '45', '23', '', '', '', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(881, 'Индиго жаалууд цэцэрлэг', 1, 4, '2', 'Н', '6', '6', '', '199', '96', '199', '96', '', '', '', '', '16', '15', '2', '1', '', '', '6', '6', '6', '6', '2', 2, NULL, NULL, NULL, NULL, NULL),
(882, 'Ирээдүйн гүнтэн цэцэрлэг', 1, 4, '2', 'Н', '4', '4', '', '93', '44', '93', '44', '', '', '', '', '8', '7', '1', '1', '', '', '3', '3', '2', '2', '2', 1, NULL, NULL, NULL, NULL, NULL),
(883, 'Их гүрний эрин үе цэцэрлэг', 1, 4, '2', 'Н', '1', '1', '', '53', '29', '53', '29', '', '', '1', '', '3', '3', '1', '1', '', '', '1', '1', '1', '1', '', 0, NULL, NULL, NULL, NULL, NULL),
(884, 'Их гүрний эрин үе-ирээдүй цэцэрлэг', 1, 4, '2', 'Н', '4', '4', '', '122', '56', '122', '56', '', '', '1', '', '10', '10', '1', '1', '', '', '4', '4', '3', '3', '2', 2, NULL, NULL, NULL, NULL, NULL),
(885, 'Их засаг Тэмүүжин цэцэрлэг', 1, 4, '2', 'Н', '8', '8', '', '221', '115', '221', '115', '', '', '3', '', '19', '19', '1', '1', '', '', '7', '7', '8', '8', '3', 3, NULL, NULL, NULL, NULL, NULL),
(886, 'Их монголын үрс  цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '45', '19', '45', '19', '', '', '', '', '9', '7', '1', '1', '', '', '2', '2', '2', '2', '4', 2, NULL, NULL, NULL, NULL, NULL),
(887, 'Мандах нарны хүүхэд цэцэрлэг', 1, 4, '2', 'Н', '3', '3', '', '75', '34', '75', '34', '', '', '2', '', '5', '5', '', '', '', '', '2', '2', '3', '3', '', 0, NULL, NULL, NULL, NULL, NULL),
(888, 'Мандах нарны үрс цэцэрлэг', 1, 4, '2', 'Н', '3', '3', '', '85', '44', '85', '44', '', '', '', '', '9', '9', '1', '1', '', '', '3', '3', '3', '3', '2', 2, NULL, NULL, NULL, NULL, NULL),
(889, 'Маргад хотхоны үрс цэцэрлэг', 1, 4, '2', 'Н', '3', '3', '', '76', '40', '76', '40', '', '', '', '', '9', '8', '', '', '', '', '3', '3', '3', '3', '3', 2, NULL, NULL, NULL, NULL, NULL),
(890, 'Миний хүүхдүүд цэцэрлэг', 1, 4, '2', 'Н', '4', '4', '', '62', '29', '62', '29', '', '', '6', '', '8', '8', '2', '2', '', '', '2', '2', '2', '2', '2', 2, NULL, NULL, NULL, NULL, NULL),
(891, 'Мөнхжин цэцэрлэг', 1, 4, '2', 'Н', '4', '4', '', '110', '49', '110', '49', '', '', '1', '1', '12', '11', '1', '1', '', '', '4', '4', '4', '4', '3', 2, NULL, NULL, NULL, NULL, NULL),
(892, 'Мөнхийн алаг үрс цэцэрлэг', 1, 4, '2', 'Н', '3', '3', '', '69', '29', '69', '29', '', '', '', '', '8', '8', '1', '1', '', '', '3', '3', '3', '3', '1', 1, NULL, NULL, NULL, NULL, NULL),
(893, 'Мөнхтүшиг цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '80', '33', '80', '33', '', '', '', '', '2', '2', '1', '1', '', '', '', '', '1', '1', '', 0, NULL, NULL, NULL, NULL, NULL),
(894, 'Мөрөөдлийн нархан цэцэрлэг', 1, 4, '2', 'Н', '5', '5', '', '143', '66', '143', '66', '', '', '3', '', '12', '11', '1', '1', '', '', '3', '3', '4', '4', '4', 3, NULL, NULL, NULL, NULL, NULL),
(895, 'Намуун гоё цэцэрлэг', 1, 4, '2', 'Н', '4', '4', '', '145', '73', '145', '73', '', '', '2', '', '18', '16', '1', '1', '1', '1', '7', '5', '4', '4', '5', 5, NULL, NULL, NULL, NULL, NULL),
(896, 'Нар-одод цэцэрлэг', 1, 4, '2', 'Н', '3', '3', '', '99', '48', '99', '48', '', '', '2', '', '9', '8', '1', '1', '', '', '3', '3', '3', '3', '2', 1, NULL, NULL, NULL, NULL, NULL),
(897, 'Нарлаг ирээдүй цэцэрлэг', 1, 4, '2', 'Н', '4', '4', '', '115', '59', '115', '59', '', '', '', '', '9', '9', '1', '1', '', '', '4', '4', '2', '2', '2', 2, NULL, NULL, NULL, NULL, NULL),
(898, 'Нарны багачууд цэцэрлэг', 1, 4, '2', 'Н', '6', '6', '', '176', '92', '176', '92', '', '', '', '', '16', '15', '2', '1', '', '', '6', '6', '6', '6', '2', 2, NULL, NULL, NULL, NULL, NULL),
(899, 'Нарны үрс цэцэрлэг цэцэрлэг', 1, 4, '2', 'Н', '5', '5', '', '176', '93', '176', '93', '', '', '1', '', '12', '12', '1', '1', '', '', '5', '5', '5', '5', '1', 1, NULL, NULL, NULL, NULL, NULL),
(900, 'Нархан М цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '66', '27', '66', '27', '', '', '', '', '7', '7', '1', '1', '', '', '2', '2', '2', '2', '2', 2, NULL, NULL, NULL, NULL, NULL),
(901, 'Нархан хотхон цэцэрлэг', 1, 4, '2', 'Н', '4', '4', '', '122', '62', '122', '62', '', '', '1', '', '10', '10', '1', '1', '', '', '3', '3', '3', '3', '3', 3, NULL, NULL, NULL, NULL, NULL),
(902, 'Нахиа цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '51', '25', '51', '25', '', '', '1', '', '5', '5', '', '', '1', '1', '1', '1', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(903, 'Ногоон хотхон цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '80', '35', '80', '35', '', '', '2', '', '7', '7', '1', '1', '', '', '2', '2', '2', '2', '2', 2, NULL, NULL, NULL, NULL, NULL),
(904, 'Номт ирээдүй цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '34', '21', '34', '21', '', '', '1', '', '6', '6', '1', '1', '', '', '2', '2', '1', '1', '2', 2, NULL, NULL, NULL, NULL, NULL),
(905, 'Оддын өргөө цэцэрлэг', 1, 4, '2', 'Н', '3', '3', '', '117', '58', '117', '58', '', '', '1', '', '10', '10', '1', '1', '', '', '2', '2', '3', '3', '4', 4, NULL, NULL, NULL, NULL, NULL),
(906, 'Одтой жаалууд цэцэрлэг', 1, 4, '2', 'Н', '4', '4', '', '68', '32', '68', '32', '', '', '1', '', '9', '9', '1', '1', '', '', '4', '4', '2', '2', '2', 2, NULL, NULL, NULL, NULL, NULL),
(907, 'Оньсон тоглоом цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '32', '19', '32', '19', '', '', '', '', '6', '6', '', '', '', '', '2', '2', '2', '2', '2', 2, NULL, NULL, NULL, NULL, NULL),
(908, 'Оньсхон-Загадка цэцэрлэг', 1, 4, '2', 'Н', '5', '5', '', '109', '53', '109', '53', '', '', '', '', '17', '16', '1', '1', '', '', '5', '5', '5', '5', '6', 5, NULL, NULL, NULL, NULL, NULL),
(909, 'Сказка-Үлгэрхэн цэцэрлэг', 1, 4, '2', 'Н', '3', '3', '', '38', '22', '38', '22', '', '', '', '', '8', '7', '1', '1', '1', '1', '1', '1', '3', '3', '2', 1, NULL, NULL, NULL, NULL, NULL),
(910, 'Сувдан дэлбээ цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '49', '23', '49', '23', '', '', '', '', '7', '6', '1', '1', '', '', '2', '2', '2', '2', '2', 1, NULL, NULL, NULL, NULL, NULL),
(911, 'Сэргэлэн жаалууд цэцэрлэг', 1, 4, '2', 'Н', '5', '5', '', '89', '39', '89', '39', '', '', '', '', '10', '10', '1', '1', '', '', '5', '5', '3', '3', '1', 1, NULL, NULL, NULL, NULL, NULL),
(912, 'Танхилхан цэцэрлэг', 1, 4, '2', 'Н', '4', '4', '', '120', '64', '120', '64', '', '', '1', '', '9', '9', '1', '1', '', '', '4', '4', '3', '3', '1', 1, NULL, NULL, NULL, NULL, NULL),
(913, 'Том жаал-Баянмонгол цэцэрлэг', 1, 4, '2', 'Н', '5', '5', '', '131', '70', '131', '70', '', '', '', '', '12', '12', '1', '1', '', '', '5', '5', '3', '3', '3', 3, NULL, NULL, NULL, NULL, NULL),
(914, 'Тэвхэн багачууд цэцэрлэг', 1, 4, '2', 'Н', '3', '3', '', '41', '25', '41', '25', '', '', '', '1', '7', '7', '1', '1', '', '', '2', '2', '2', '2', '2', 2, NULL, NULL, NULL, NULL, NULL),
(915, 'Тэнгэрлэг багачууд цэцэрлэг', 1, 4, '2', 'Н', '5', '5', '', '100', '47', '100', '47', '', '', '', '', '10', '10', '1', '1', '', '', '4', '4', '4', '4', '1', 1, NULL, NULL, NULL, NULL, NULL),
(916, 'Улаанбаатар  цэцэрлэг', 1, 4, '2', 'Н', '4', '4', '', '111', '59', '111', '59', '', '', '', '', '11', '11', '1', '1', '1', '1', '3', '3', '3', '3', '3', 3, NULL, NULL, NULL, NULL, NULL),
(917, 'Халиун хангай орхон цэцэрлэг', 1, 4, '2', 'Н', '4', '4', '', '133', '63', '133', '63', '', '', '', '', '11', '11', '1', '1', '1', '1', '4', '4', '3', '3', '2', 2, NULL, NULL, NULL, NULL, NULL),
(918, 'Хан Билгүүдэй  цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '44', '19', '44', '19', '', '', '1', '', '5', '5', '1', '1', '', '', '3', '3', '', '', '1', 1, NULL, NULL, NULL, NULL, NULL),
(919, 'Хүүхэд ирээдүй цэцэрлэг', 1, 4, '2', 'Н', '3', '3', '', '77', '42', '77', '42', '', '', '', '', '6', '5', '1', '', '', '', '3', '3', '', '', '2', 2, NULL, NULL, NULL, NULL, NULL),
(920, 'Хүүхэд-эрдэнэ цэцэрлэг', 1, 4, '2', 'Н', '3', '3', '', '113', '55', '113', '55', '', '', '', '', '10', '9', '1', '1', '', '', '2', '2', '5', '4', '2', 2, NULL, NULL, NULL, NULL, NULL),
(921, 'Хөөрхөн ертөнц цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '41', '16', '41', '16', '', '', '1', '', '5', '5', '1', '1', '', '', '2', '2', '1', '1', '1', 1, NULL, NULL, NULL, NULL, NULL),
(922, 'Хөөрхөн маамуу цэцэрлэг', 1, 4, '2', 'Н', '3', '3', '', '60', '31', '60', '31', '', '', '', '', '10', '10', '1', '1', '', '', '2', '2', '4', '4', '3', 3, NULL, NULL, NULL, NULL, NULL),
(923, 'Цагчиг цэцэрлэг цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '38', '21', '38', '21', '', '', '1', '2', '6', '5', '', '', '', '', '2', '2', '2', '2', '2', 1, NULL, NULL, NULL, NULL, NULL),
(924, 'Цахирмаа цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '72', '35', '72', '35', '', '', '', '', '5', '5', '', '', '1', '1', '1', '1', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(925, 'Цовоо жаалууд цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '55', '22', '55', '22', '', '', '', '', '5', '5', '1', '1', '', '', '1', '1', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(926, 'Цовоо хүүхдүүд цэцэрлэг', 1, 4, '2', 'Н', '4', '4', '', '95', '45', '95', '45', '', '', '', '', '10', '10', '1', '1', '', '', '4', '4', '3', '3', '2', 2, NULL, NULL, NULL, NULL, NULL),
(927, 'Цогзоохой цэцэрлэг', 1, 4, '2', 'Н', '3', '3', '', '68', '30', '68', '30', '', '', '2', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(928, 'Цоморлиг цэцэрлэг', 1, 4, '2', 'Н', '3', '3', '', '127', '66', '127', '66', '', '', '1', '', '6', '6', '1', '1', '', '', '3', '3', '1', '1', '1', 1, NULL, NULL, NULL, NULL, NULL),
(929, 'Цэлмэгхэн цэцэрлэг', 1, 4, '2', 'Н', '4', '4', '', '108', '54', '108', '54', '', '', '1', '', '12', '10', '1', '1', '', '', '4', '4', '4', '4', '3', 1, NULL, NULL, NULL, NULL, NULL),
(930, 'Шинэ эриний хүүхдүүд цэцэрлэг', 1, 4, '2', 'Н', '4', '4', '', '87', '45', '87', '45', '', '', '', '', '10', '10', '2', '2', '', '', '2', '2', '5', '5', '1', 1, NULL, NULL, NULL, NULL, NULL),
(931, 'Шүрэн цох цэцэрлэг', 1, 4, '2', 'Н', '3', '3', '', '49', '26', '49', '26', '', '', '', '', '8', '7', '1', '1', '', '', '2', '2', '3', '3', '2', 1, NULL, NULL, NULL, NULL, NULL),
(932, 'Шүүдэрхэн цэцэрлэг', 1, 4, '2', 'Н', '5', '5', '', '139', '75', '139', '75', '', '', '1', '', '8', '7', '', '', '', '', '5', '5', '1', '1', '2', 1, NULL, NULL, NULL, NULL, NULL),
(933, 'Элбэрэлт ээж цэцэрлэг', 1, 4, '2', 'Н', '4', '4', '', '68', '37', '68', '37', '', '', '', '', '8', '8', '1', '1', '', '', '3', '3', '3', '3', '1', 1, NULL, NULL, NULL, NULL, NULL),
(934, 'Энхбүүвэй цэцэрлэг', 1, 4, '2', 'Н', '5', '5', '', '117', '54', '117', '54', '', '', '', '', '12', '12', '1', '1', '', '', '5', '5', '5', '5', '1', 1, NULL, NULL, NULL, NULL, NULL),
(935, 'Эрдмийн чуулган цэцэрлэг', 1, 4, '2', 'Н', '4', '4', '', '77', '30', '77', '30', '', '', '1', '', '7', '7', '1', '1', '', '', '2', '2', '3', '3', '1', 1, NULL, NULL, NULL, NULL, NULL),
(936, 'Эрдэмт андууд цэцэрлэг', 1, 4, '2', 'Н', '3', '3', '', '118', '58', '118', '58', '', '', '3', '', '9', '9', '1', '1', '', '', '3', '3', '4', '4', '1', 1, NULL, NULL, NULL, NULL, NULL),
(937, 'Эрдэнэ бүрэн цэцэрлэг', 1, 4, '2', 'Н', '4', '4', '', '85', '40', '85', '40', '', '', '1', '', '11', '10', '1', '1', '1', '1', '4', '4', '3', '3', '2', 1, NULL, NULL, NULL, NULL, NULL),
(938, 'Эрхэм эрдэм цэцэрлэг', 1, 4, '2', 'Н', '4', '4', '', '95', '43', '95', '43', '', '', '3', '', '7', '7', '1', '1', '', '', '2', '2', '3', '3', '1', 1, NULL, NULL, NULL, NULL, NULL),
(939, 'Ягаан цамхаг цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '44', '21', '44', '21', '', '', '', '1', '7', '7', '1', '1', '', '', '2', '2', '2', '2', '2', 2, NULL, NULL, NULL, NULL, NULL),
(940, 'Ягаан цамхагийн хүүхдүүд цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '48', '17', '48', '17', '', '', '2', '1', '7', '7', '1', '1', '', '', '2', '2', '3', '3', '1', 1, NULL, NULL, NULL, NULL, NULL),
(941, 'Яргуй цэцэрлэг', 1, 4, '2', 'Н', '4', '4', '', '116', '58', '116', '58', '', '', '2', '', '14', '12', '', '', '1', '1', '4', '4', '4', '4', '5', 3, NULL, NULL, NULL, NULL, NULL),
(942, 'Бүжинлхам', 1, 4, '2', 'Н', '4', '4', '', '157', '82', '157', '82', '', '', '5', '', '9', '9', '', '', '', '', '4', '4', '4', '4', '1', 1, NULL, NULL, NULL, NULL, NULL),
(943, 'Бид алтан ураг цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '42', '14', '42', '14', '', '', '', '', '5', '5', '1', '1', '', '', '1', '1', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(944, 'Оюуны оч', 1, 4, '2', 'Н', '4', '4', '', '65', '37', '65', '37', '', '', '', '', '8', '7', '', '', '', '', '2', '2', '4', '4', '2', 1, NULL, NULL, NULL, NULL, NULL),
(945, 'Амин дэлбээ', 1, 4, '2', 'Н', '3', '3', '', '54', '28', '54', '28', '', '', '', '', '8', '8', '1', '1', '', '', '3', '3', '2', '2', '2', 2, NULL, NULL, NULL, NULL, NULL),
(946, 'Чухагийн багачууд', 1, 4, '2', 'Н', '4', '4', '', '135', '68', '135', '68', '', '', '2', '', '13', '13', '1', '1', '', '', '5', '5', '4', '4', '3', 3, NULL, NULL, NULL, NULL, NULL),
(947, 'Маргад Эрдэнийн өргөө цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '35', '18', '35', '18', '', '', '', '', '5', '5', '1', '1', '', '', '2', '2', '1', '1', '1', 1, NULL, NULL, NULL, NULL, NULL),
(948, '“Бяцхан гэрэлт цох”', 1, 4, '2', 'Н', '3', '3', '', '85', '43', '85', '43', '', '', '2', '', '6', '5', '1', '1', '', '', '2', '2', '1', '1', '2', 1, NULL, NULL, NULL, NULL, NULL),
(949, 'Бяцхан анд', 1, 4, '2', 'Н', '3', '3', '', '79', '40', '79', '40', '', '', '', '', '11', '11', '1', '1', '', '', '3', '3', '5', '5', '2', 2, NULL, NULL, NULL, NULL, NULL),
(950, '“Бүтээлч жаалууд”', 1, 4, '2', 'Н', '1', '1', '', '39', '20', '39', '20', '', '', '', '', '6', '6', '1', '1', '', '', '1', '1', '1', '1', '3', 3, NULL, NULL, NULL, NULL, NULL),
(951, 'Сортоотой багачууд', 1, 4, '2', 'Н', '1', '1', '', '32', '14', '32', '14', '', '', '2', '', '3', '3', '', '', '1', '1', '1', '1', '', '', '1', 1, NULL, NULL, NULL, NULL, NULL),
(952, 'Номтын найзууд', 1, 4, '2', 'Н', '4', '4', '', '91', '43', '91', '43', '', '', '2', '', '9', '9', '1', '1', '1', '1', '2', '2', '4', '4', '1', 1, NULL, NULL, NULL, NULL, NULL),
(953, 'Сонгодог эхлэл цэцэрлэг', 1, 4, '2', 'Н', '4', '4', '', '46', '15', '46', '15', '', '', '1', '', '6', '6', '1', '1', '', '', '3', '3', '1', '1', '1', 1, NULL, NULL, NULL, NULL, NULL),
(954, 'Мөнх үйлс цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '73', '34', '73', '34', '', '', '1', '', '5', '5', '1', '1', '', '', '1', '1', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(955, 'Могжоохон цэцэрлэг', 1, 4, '2', 'Н', '3', '3', '', '47', '22', '47', '22', '', '', '', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(956, 'Адтай үрс цэцэрлэг', 1, 4, '2', 'Н', '1', '1', '', '23', '7', '23', '7', '', '', '1', '', '4', '4', '1', '1', '', '', '1', '1', '1', '1', '1', 1, NULL, NULL, NULL, NULL, NULL),
(957, 'Золбоо цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '64', '32', '64', '32', '', '', '1', '', '7', '7', '1', '1', '', '', '2', '2', '2', '2', '2', 2, NULL, NULL, NULL, NULL, NULL),
(958, 'Анаанда цэцэрлэг', 1, 4, '2', 'Н', '3', '3', '', '75', '39', '75', '39', '', '', '', '', '7', '7', '1', '1', '', '', '2', '2', '3', '3', '1', 1, NULL, NULL, NULL, NULL, NULL),
(959, 'Нандин 3 эрдэнэ 2 цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '64', '39', '64', '39', '', '', '1', '', '7', '6', '1', '1', '', '', '2', '2', '2', '2', '2', 1, NULL, NULL, NULL, NULL, NULL),
(960, 'Билгүүн далай цэцэрлэг', 1, 4, '2', 'Н', '3', '3', '', '106', '48', '106', '48', '', '', '', '', '9', '9', '1', '1', '', '', '3', '3', '2', '2', '3', 3, NULL, NULL, NULL, NULL, NULL),
(961, 'Маамуу ир цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '63', '31', '63', '31', '', '', '', '', '5', '4', '', '', '', '', '1', '1', '3', '3', '1', 0, NULL, NULL, NULL, NULL, NULL),
(962, 'Оргил ухаан цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '44', '23', '44', '23', '', '', '2', '', '5', '4', '1', '', '', '', '1', '1', '1', '1', '2', 2, NULL, NULL, NULL, NULL, NULL),
(963, 'Соньхон ертөнц цэцэрлэг', 1, 4, '2', 'Н', '3', '3', '', '94', '44', '94', '44', '', '', '3', '', '9', '9', '1', '1', '', '', '3', '3', '3', '3', '2', 2, NULL, NULL, NULL, NULL, NULL),
(964, 'Торомхон цэцэрлэг', 1, 4, '2', 'Н', '4', '4', '', '108', '54', '108', '54', '', '', '', '', '12', '12', '1', '1', '1', '1', '4', '4', '4', '4', '2', 2, NULL, NULL, NULL, NULL, NULL),
(965, 'Мэргэн ухааны төгөл цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '48', '23', '48', '23', '', '', '', '', '5', '5', '1', '1', '', '', '2', '2', '1', '1', '1', 1, NULL, NULL, NULL, NULL, NULL),
(966, 'Идэрхэн найзууд цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '35', '20', '35', '20', '', '', '', '', '4', '4', '', '', '', '', '2', '2', '1', '1', '1', 1, NULL, NULL, NULL, NULL, NULL),
(967, 'Боролдойн гэр цэцэрлэг', 1, 4, '2', 'Н', '6', '6', '', '141', '67', '141', '67', '', '', '1', '', '15', '14', '', '', '', '', '6', '6', '4', '4', '5', 4, NULL, NULL, NULL, NULL, NULL),
(968, 'И Эс Эм цэцэрлэг', 1, 4, '2', 'Н', '4', '4', '', '88', '45', '88', '45', '', '', '', '', '5', '5', '1', '1', '', '', '4', '4', '', '', '', 0, NULL, NULL, NULL, NULL, NULL),
(969, 'Ид шидийн орон-2 цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '57', '27', '57', '27', '', '', '1', '', '7', '7', '1', '1', '', '', '2', '2', '2', '2', '2', 2, NULL, NULL, NULL, NULL, NULL),
(970, 'Гэрэлт цэцэг', 1, 4, '2', 'Н', '2', '2', '', '65', '31', '65', '31', '', '', '', '', '6', '6', '1', '1', '1', '1', '2', '2', '1', '1', '1', 1, NULL, NULL, NULL, NULL, NULL),
(971, 'Эрдэмтэн найзууд цэцэрлэг', 1, 4, '2', 'Н', '4', '4', '', '128', '65', '128', '65', '', '', '', '3', '14', '14', '2', '2', '1', '1', '3', '3', '5', '5', '3', 3, NULL, NULL, NULL, NULL, NULL),
(972, 'Анхилуун сувд', 1, 4, '2', 'Н', '2', '2', '', '55', '31', '55', '31', '', '', '1', '', '6', '5', '1', '1', '', '', '2', '2', '1', '1', '2', 1, NULL, NULL, NULL, NULL, NULL),
(973, 'Эрдэнэ ахай цэцэрлэг', 1, 4, '2', 'Н', '3', '3', '', '58', '23', '58', '23', '', '', '', '', '7', '7', '1', '1', '', '', '3', '3', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(974, 'Найдварын эрэг цэцэрлэг', 1, 4, '2', 'Н', '1', '1', '', '22', '12', '22', '12', '', '', '1', '', '5', '5', '1', '1', '', '', '1', '1', '1', '1', '2', 2, NULL, NULL, NULL, NULL, NULL),
(975, 'Эдү кидс хаус цэцэрлэг', 1, 4, '2', 'Н', '2', '2', '', '27', '16', '27', '16', '', '', '1', '', '7', '7', '1', '1', '', '', '2', '2', '3', '3', '1', 1, NULL, NULL, NULL, NULL, NULL),
(976, 'Ногоон төгөл цэцэрлэг', 1, 4, '2', 'Н', '3', '3', '', '65', '33', '65', '33', '', '', '', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(977, '23-р цэцэрлэг /Шинэ үе/', 1, 5, '1', 'Н', '4', '4', '', '179', '91', '179', '91', '', '', '2', '', '23', '19', '1', '1', '1', '1', '5', '5', '4', '4', '12', 8, NULL, NULL, NULL, NULL, NULL),
(978, '123-р цэцэрлэг /Сод ирээдүй/', 1, 5, '1', 'Н', '10', '10', '', '302', '154', '302', '154', '', '', '3', '3', '40', '32', '1', '1', '1', '1', '10', '10', '10', '10', '18', 10, NULL, NULL, NULL, NULL, NULL),
(979, '140-р цэцэрлэг /Эрдмийн оргил/', 1, 5, '1', 'Н', '10', '10', '', '307', '157', '307', '157', '', '', '10', '2', '35', '32', '1', '1', '1', '1', '10', '10', '10', '10', '13', 10, NULL, NULL, NULL, NULL, NULL),
(980, '151-р цэцэрлэг /Сод ирээдүй/', 1, 5, '1', 'Н', '11', '11', '', '296', '151', '296', '151', '', '', '5', '2', '46', '39', '1', '1', '1', '1', '12', '12', '11', '11', '21', 14, NULL, NULL, NULL, NULL, NULL),
(981, '152-р цэцэрлэг /Шинэ үе/', 1, 5, '1', 'Н', '9', '9', '', '280', '128', '280', '128', '', '', '5', '1', '34', '28', '1', '1', '', '', '10', '10', '9', '9', '14', 8, NULL, NULL, NULL, NULL, NULL),
(982, '153-р цэцэрлэг /Чандмань/', 1, 5, '1', 'Н', '6', '6', '', '224', '102', '224', '102', '', '', '14', '', '33', '26', '1', '1', '1', '1', '7', '7', '6', '6', '18', 11, NULL, NULL, NULL, NULL, NULL),
(983, '208-р цэцэрлэг', 1, 5, '1', 'Н', '5', '5', '', '174', '80', '174', '80', '', '', '3', '', '22', '17', '1', '1', '1', '1', '5', '5', '5', '5', '10', 5, NULL, NULL, NULL, NULL, NULL),
(984, '187 дугаар цэцэрлэг', 1, 5, '1', 'Н', '6', '6', '', '214', '111', '214', '111', '', '', '3', '', '27', '20', '1', '1', '1', '1', '4', '4', '6', '6', '15', 8, NULL, NULL, NULL, NULL, NULL),
(985, '279-р цэцэрлэг', 1, 5, '1', 'Н', '8', '8', '', '248', '105', '248', '105', '', '', '1', '', '34', '28', '1', '1', '1', '1', '9', '9', '6', '6', '17', 11, NULL, NULL, NULL, NULL, NULL),
(986, '274-р цэцэрлэг', 1, 5, '1', 'Н', '7', '7', '', '313', '171', '313', '171', '', '', '7', '', '30', '25', '1', '1', '1', '1', '9', '8', '7', '7', '12', 8, NULL, NULL, NULL, NULL, NULL),
(987, 'Анархүү цэцэрлэг', 1, 5, '2', 'Н', '2', '2', '', '44', '20', '44', '20', '', '', '3', '1', '8', '8', '1', '1', '', '', '2', '2', '2', '2', '3', 3, NULL, NULL, NULL, NULL, NULL),
(988, 'Билэг төгс цэцэрлэг', 1, 5, '2', 'Н', '3', '3', '', '75', '33', '75', '33', '', '', '', '', '11', '11', '1', '1', '', '', '3', '3', '3', '3', '4', 4, NULL, NULL, NULL, NULL, NULL),
(989, 'Тэнүүн төгөл цэцэрлэг', 1, 5, '2', 'Н', '3', '3', '', '68', '26', '68', '26', '', '', '1', '2', '11', '9', '1', '1', '', '', '2', '2', '3', '3', '5', 3, NULL, NULL, NULL, NULL, NULL),
(990, 'Шинэ хүслэн цэцэрлэг', 1, 5, '2', 'Н', '2', '2', '', '77', '29', '77', '29', '', '', '2', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(991, 'Нөхөрсөг бяцхан жаалууд', 1, 5, '2', 'Н', '2', '2', '', '45', '25', '45', '25', '', '', '', '', '7', '6', '', '', '', '', '2', '2', '2', '2', '3', 2, NULL, NULL, NULL, NULL, NULL),
(992, '26-р цэцэрлэг', 1, 6, '1', 'Н', '11', '11', '', '364', '174', '364', '174', '', '', '', '', '39', '31', '1', '1', '1', '1', '13', '11', '8', '8', '16', 10, NULL, NULL, NULL, NULL, NULL),
(993, '38-р цэцэрлэг', 1, 6, '1', 'Н', '7', '7', '', '262', '112', '262', '112', '', '', '2', '', '32', '26', '1', '1', '1', '1', '9', '9', '7', '7', '14', 8, NULL, NULL, NULL, NULL, NULL),
(994, '48-р цэцэрлэг', 1, 6, '1', 'Н', '2', '2', '', '58', '32', '58', '32', '', '', '1', '', '9', '8', '1', '', '', '', '2', '2', '2', '2', '4', 4, NULL, NULL, NULL, NULL, NULL),
(995, '55-р цэцэрлэг', 1, 6, '1', 'Н', '19', '19', '', '657', '315', '657', '315', '', '', '3', '6', '85', '68', '1', '1', '2', '2', '24', '21', '19', '19', '39', 25, NULL, NULL, NULL, NULL, NULL),
(996, '78-р цэцэрлэг', 1, 6, '1', 'Н', '5', '5', '', '189', '90', '189', '90', '', '', '2', '', '30', '24', '1', '1', '1', '1', '7', '6', '8', '8', '13', 8, NULL, NULL, NULL, NULL, NULL),
(997, '79-р цэцэрлэг', 1, 6, '1', 'Н', '10', '10', '', '330', '160', '330', '160', '', '', '5', '2', '43', '37', '1', '1', '2', '2', '12', '12', '10', '10', '18', 12, NULL, NULL, NULL, NULL, NULL),
(998, '80-р цэцэрлэг', 1, 6, '1', 'Н', '16', '16', '', '567', '260', '567', '260', '', '', '7', '6', '64', '54', '1', '1', '2', '2', '19', '17', '16', '16', '26', 18, NULL, NULL, NULL, NULL, NULL),
(999, '81-р цэцэрлэг', 1, 6, '1', 'Н', '12', '12', '', '399', '204', '399', '204', '', '', '', '', '62', '52', '1', '1', '1', '1', '18', '18', '18', '18', '24', 14, NULL, NULL, NULL, NULL, NULL),
(1000, '84-р цэцэрлэг', 1, 6, '1', 'Н', '8', '8', '', '152', '69', '152', '69', '', '', '', '1', '33', '28', '1', '1', '1', '1', '10', '9', '8', '8', '13', 9, NULL, NULL, NULL, NULL, NULL),
(1001, '90-р цэцэрлэг', 1, 6, '1', 'Н', '6', '6', '', '166', '79', '166', '79', '', '', '', '', '29', '24', '1', '1', '1', '1', '8', '7', '6', '6', '13', 9, NULL, NULL, NULL, NULL, NULL),
(1002, '91-р цэцэрлэг', 1, 6, '1', 'Н', '17', '17', '', '606', '296', '606', '296', '', '', '4', '', '57', '50', '1', '1', '2', '2', '20', '19', '17', '17', '17', 11, NULL, NULL, NULL, NULL, NULL),
(1003, '92-р цэцэрлэг', 1, 6, '1', 'Н', '6', '6', '', '238', '114', '238', '114', '', '', '2', '', '28', '23', '1', '1', '1', '1', '8', '7', '6', '6', '12', 8, NULL, NULL, NULL, NULL, NULL),
(1004, '99-р цэцэрлэг', 1, 6, '1', 'Н', '12', '12', '', '367', '181', '367', '181', '', '', '2', '1', '40', '36', '1', '1', '1', '1', '14', '14', '12', '12', '12', 8, NULL, NULL, NULL, NULL, NULL),
(1005, '101-р цэцэрлэг', 1, 6, '1', 'Н', '12', '12', '', '329', '155', '329', '155', '', '', '2', '', '44', '38', '1', '1', '1', '1', '14', '13', '12', '12', '16', 11, NULL, NULL, NULL, NULL, NULL),
(1006, '104-р цэцэрлэг', 1, 6, '1', 'Н', '12', '12', '', '275', '117', '275', '117', '', '', '2', '1', '45', '38', '1', '1', '1', '1', '14', '14', '12', '12', '17', 10, NULL, NULL, NULL, NULL, NULL),
(1007, '105-р цэцэрлэг', 1, 6, '1', 'Н', '16', '16', '', '347', '169', '347', '169', '', '', '2', '1', '57', '49', '1', '1', '1', '1', '19', '17', '16', '16', '20', 14, NULL, NULL, NULL, NULL, NULL),
(1008, '106-р цэцэрлэг', 1, 6, '1', 'Н', '6', '6', '', '212', '112', '212', '112', '', '', '', '', '46', '42', '1', '1', '1', '1', '9', '9', '19', '19', '16', 12, NULL, NULL, NULL, NULL, NULL),
(1009, '107-р цэцэрлэг', 1, 6, '1', 'Н', '12', '12', '', '299', '154', '299', '154', '', '', '1', '1', '44', '39', '1', '1', '1', '1', '14', '14', '12', '12', '16', 11, NULL, NULL, NULL, NULL, NULL),
(1010, '110-р цэцэрлэг', 1, 6, '1', 'Н', '12', '12', '', '370', '189', '370', '189', '', '', '2', '2', '44', '38', '1', '1', '1', '1', '14', '14', '12', '12', '16', 10, NULL, NULL, NULL, NULL, NULL),
(1011, '111-р цэцэрлэг', 1, 6, '1', 'Н', '14', '14', '', '591', '281', '591', '281', '', '', '', '2', '53', '46', '1', '1', '1', '1', '16', '15', '14', '14', '21', 15, NULL, NULL, NULL, NULL, NULL),
(1012, '112-р цэцэрлэг', 1, 6, '1', 'Н', '13', '13', '', '371', '187', '371', '187', '', '', '', '2', '46', '40', '1', '1', '1', '1', '15', '14', '13', '13', '16', 11, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `statistic` (`id`, `name`, `city`, `district`, `type`, `loc`, `buleg`, `buleg_prim`, `buleg_sla`, `child_total`, `child_girl`, `child_prim_total`, `child_prim_girl`, `child_alter_total`, `child_alter_girl`, `child_herder`, `child_disabled`, `employees_total`, `employees_female`, `director`, `director_female`, `manager`, `manager_female`, `teacher_total`, `teacher_female`, `subteacher_total`, `subteacher_female`, `others_total`, `others_female`, `address`, `contact`, `phone`, `director_name`, `email`) VALUES
(1013, '113-р цэцэрлэг', 1, 6, '1', 'Н', '20', '20', '', '486', '238', '486', '238', '', '', '', '1', '75', '63', '1', '1', '2', '2', '24', '22', '20', '20', '28', 18, NULL, NULL, NULL, NULL, NULL),
(1014, '116-р цэцэрлэг', 1, 6, '1', 'Н', '7', '7', '', '197', '87', '197', '87', '', '', '54', '', '40', '34', '1', '1', '1', '1', '11', '10', '13', '13', '14', 9, NULL, NULL, NULL, NULL, NULL),
(1015, '117-р цэцэрлэг', 1, 6, '1', 'Н', '20', '20', '', '589', '289', '589', '289', '', '', '6', '4', '77', '69', '1', '1', '2', '2', '25', '23', '24', '24', '25', 19, NULL, NULL, NULL, NULL, NULL),
(1016, '118-р цэцэрлэг', 1, 6, '1', 'Н', '14', '14', '', '418', '209', '418', '209', '', '', '', '2', '49', '43', '1', '1', '1', '1', '16', '16', '14', '14', '17', 11, NULL, NULL, NULL, NULL, NULL),
(1017, '119-р цэцэрлэг', 1, 6, '1', 'Н', '12', '12', '', '451', '230', '451', '230', '', '', '7', '1', '50', '43', '1', '1', '2', '2', '15', '14', '12', '12', '20', 14, NULL, NULL, NULL, NULL, NULL),
(1018, '125-р цэцэрлэг', 1, 6, '1', 'Н', '8', '8', '', '199', '103', '199', '103', '', '', '', '2', '40', '32', '1', '1', '1', '1', '10', '10', '8', '8', '20', 12, NULL, NULL, NULL, NULL, NULL),
(1019, '127-р цэцэрлэг', 1, 6, '1', 'Н', '17', '17', '', '369', '178', '369', '178', '', '', '5', '1', '64', '54', '1', '1', '1', '1', '20', '19', '17', '17', '25', 16, NULL, NULL, NULL, NULL, NULL),
(1020, '148-р цэцэрлэг', 1, 6, '1', 'Н', '7', '7', '', '293', '145', '293', '145', '', '', '', '', '28', '24', '1', '1', '1', '1', '8', '8', '7', '7', '11', 7, NULL, NULL, NULL, NULL, NULL),
(1021, '156-р цэцэрлэг', 1, 6, '1', 'Н', '12', '12', '', '526', '240', '526', '240', '', '', '9', '', '55', '45', '1', '1', '2', '2', '14', '13', '12', '12', '26', 17, NULL, NULL, NULL, NULL, NULL),
(1022, '158-р цэцэрлэг', 1, 6, '1', 'Н', '12', '12', '', '381', '185', '381', '185', '', '', '9', '', '43', '36', '1', '1', '1', '1', '14', '13', '12', '12', '15', 9, NULL, NULL, NULL, NULL, NULL),
(1023, '163-р цэцэрлэг', 1, 6, '1', 'Н', '16', '16', '', '328', '174', '328', '174', '', '', '4', '', '57', '51', '1', '1', '1', '1', '18', '18', '16', '16', '21', 15, NULL, NULL, NULL, NULL, NULL),
(1024, '170-р цэцэрлэг', 1, 6, '1', 'Н', '22', '22', '', '599', '301', '599', '301', '', '', '6', '', '75', '65', '1', '1', '1', '1', '25', '23', '22', '22', '26', 18, NULL, NULL, NULL, NULL, NULL),
(1025, '176-р цэцэрлэг', 1, 6, '1', 'Н', '4', '4', '', '117', '57', '117', '57', '', '', '2', '', '18', '14', '1', '1', '1', '1', '2', '2', '3', '3', '11', 7, NULL, NULL, NULL, NULL, NULL),
(1026, '188-р цэцэрлэг', 1, 6, '1', 'Н', '24', '24', '', '954', '494', '954', '494', '', '', '24', '', '89', '73', '1', '1', '2', '2', '26', '24', '24', '24', '36', 22, NULL, NULL, NULL, NULL, NULL),
(1027, '192-р цэцэрлэг', 1, 6, '1', 'Н', '4', '4', '', '164', '71', '164', '71', '', '', '', '', '24', '20', '1', '1', '1', '1', '5', '5', '4', '4', '13', 9, NULL, NULL, NULL, NULL, NULL),
(1028, '195-р цэцэрлэг', 1, 6, '1', 'Н', '4', '4', '', '144', '71', '144', '71', '', '', '3', '', '23', '18', '1', '1', '1', '1', '6', '5', '3', '3', '12', 8, NULL, NULL, NULL, NULL, NULL),
(1029, '196-р цэцэрлэг', 1, 6, '1', 'Н', '5', '5', '', '189', '97', '189', '97', '', '', '24', '', '26', '20', '1', '1', '1', '1', '7', '6', '5', '5', '12', 7, NULL, NULL, NULL, NULL, NULL),
(1030, '214-р цэцэрлэг', 1, 6, '1', 'Н', '6', '6', '', '185', '79', '185', '79', '', '', '', '1', '25', '24', '1', '1', '1', '1', '7', '7', '6', '6', '10', 9, NULL, NULL, NULL, NULL, NULL),
(1031, '215-р цэцэрлэг', 1, 6, '1', 'Н', '5', '5', '', '173', '84', '173', '84', '', '', '', '1', '22', '22', '1', '1', '1', '1', '6', '6', '5', '5', '9', 9, NULL, NULL, NULL, NULL, NULL),
(1032, '226-р цэцэрлэг', 1, 6, '1', 'Н', '8', '8', '', '264', '120', '264', '120', '', '', '2', '', '38', '28', '1', '1', '1', '1', '10', '8', '7', '7', '19', 11, NULL, NULL, NULL, NULL, NULL),
(1033, '227-р цэцэрлэг', 1, 6, '1', 'Н', '5', '5', '', '205', '103', '205', '103', '', '', '', '', '29', '23', '1', '1', '1', '1', '7', '7', '5', '5', '15', 9, NULL, NULL, NULL, NULL, NULL),
(1034, '244-р цэцэрлэг', 1, 6, '1', 'Н', '8', '8', '', '347', '174', '347', '174', '', '', '6', '2', '38', '31', '1', '1', '2', '2', '7', '7', '8', '8', '20', 13, NULL, NULL, NULL, NULL, NULL),
(1035, '253-р цэцэрлэг', 1, 6, '1', 'Н', '11', '11', '', '383', '191', '383', '191', '', '', '3', '2', '41', '35', '1', '1', '1', '1', '12', '10', '11', '11', '16', 12, NULL, NULL, NULL, NULL, NULL),
(1036, '252-р цэцэрлэг', 1, 6, '1', 'Н', '3', '3', '', '93', '42', '93', '42', '', '', '3', '', '20', '16', '1', '1', '1', '1', '3', '3', '3', '3', '12', 8, NULL, NULL, NULL, NULL, NULL),
(1037, '259-р цэцэрлэг', 1, 6, '1', 'Н', '6', '6', '', '275', '137', '275', '137', '', '', '3', '', '30', '26', '1', '1', '1', '1', '8', '8', '6', '6', '14', 10, NULL, NULL, NULL, NULL, NULL),
(1038, '228-р цэцэрлэг', 1, 6, '1', 'Н', '8', '8', '', '275', '129', '275', '129', '', '', '5', '', '35', '29', '1', '1', '1', '1', '10', '9', '8', '8', '15', 10, NULL, NULL, NULL, NULL, NULL),
(1039, '261-р цэцэрлэг', 1, 6, '1', 'Н', '10', '10', '', '324', '166', '324', '166', '', '', '4', '', '41', '34', '1', '1', '1', '1', '12', '10', '10', '10', '17', 12, NULL, NULL, NULL, NULL, NULL),
(1040, '260-р цэцэрлэг', 1, 6, '1', 'Н', '6', '6', '', '282', '135', '282', '135', '', '', '7', '', '32', '27', '1', '1', '1', '1', '8', '8', '6', '6', '16', 11, NULL, NULL, NULL, NULL, NULL),
(1041, '263-р цэцэрлэг', 1, 6, '1', 'Н', '8', '8', '', '354', '179', '354', '179', '', '', '1', '2', '33', '28', '1', '1', '1', '1', '10', '9', '8', '8', '13', 9, NULL, NULL, NULL, NULL, NULL),
(1042, '264-р цэцэрлэг', 1, 6, '1', 'Н', '6', '6', '', '245', '128', '245', '128', '', '', '6', '', '26', '23', '1', '1', '1', '1', '8', '7', '6', '6', '10', 8, NULL, NULL, NULL, NULL, NULL),
(1043, '285-р цэцэрлэг', 1, 6, '1', 'Н', '10', '10', '', '371', '201', '371', '201', '', '', '', '', '38', '30', '1', '1', '1', '1', '11', '10', '10', '10', '15', 8, NULL, NULL, NULL, NULL, NULL),
(1044, '272-р цэцэрлэг', 1, 6, '1', 'Н', '6', '6', '', '230', '119', '230', '119', '', '', '5', '', '27', '23', '1', '1', '1', '1', '7', '7', '6', '6', '12', 8, NULL, NULL, NULL, NULL, NULL),
(1045, '269-р цэцэрлэг', 1, 6, '1', 'Н', '4', '4', '', '167', '77', '167', '77', '', '', '1', '1', '26', '20', '1', '1', '1', '1', '5', '4', '4', '4', '15', 10, NULL, NULL, NULL, NULL, NULL),
(1046, '287-р цэцэрлэг', 1, 6, '1', 'Н', '8', '8', '', '333', '157', '333', '157', '', '', '', '', '34', '30', '1', '1', '1', '1', '10', '10', '8', '8', '14', 10, NULL, NULL, NULL, NULL, NULL),
(1047, '273-р цэцэрлэг', 1, 6, '1', 'Н', '9', '9', '', '285', '147', '285', '147', '', '', '5', '', '38', '30', '1', '1', '1', '1', '9', '8', '9', '9', '18', 11, NULL, NULL, NULL, NULL, NULL),
(1048, '284-р цэцэрлэг', 1, 6, '1', 'Н', '6', '6', '', '230', '112', '230', '112', '', '', '', '', '30', '22', '1', '1', '1', '1', '7', '5', '6', '6', '15', 9, NULL, NULL, NULL, NULL, NULL),
(1049, '294-р цэцэрлэг', 1, 6, '1', 'Н', '6', '6', '', '136', '68', '136', '68', '', '', '1', '', '29', '22', '', '', '1', '1', '8', '6', '6', '6', '14', 9, NULL, NULL, NULL, NULL, NULL),
(1050, '303-р цэцэрлэг', 1, 6, '1', 'Н', '10', '10', '', '274', '151', '274', '151', '', '', '', '1', '40', '34', '1', '1', '1', '1', '12', '12', '10', '10', '16', 10, NULL, NULL, NULL, NULL, NULL),
(1051, '271-р цэцэрлэг', 1, 6, '1', 'Н', '13', '13', '', '533', '265', '533', '265', '', '', '8', '', '55', '45', '1', '1', '1', '1', '15', '13', '13', '13', '25', 17, NULL, NULL, NULL, NULL, NULL),
(1052, '306-р цэцэрлэг ', 1, 6, '1', 'Н', '10', '10', '', '141', '73', '141', '73', '', '', '', '', '38', '32', '1', '1', '1', '1', '11', '11', '10', '10', '15', 9, NULL, NULL, NULL, NULL, NULL),
(1053, '270-р цэцэрлэг ', 1, 6, '1', 'Н', '6', '6', '', '149', '68', '149', '68', '', '', '2', '2', '30', '24', '1', '1', '1', '1', '8', '7', '6', '6', '14', 9, NULL, NULL, NULL, NULL, NULL),
(1054, 'Азийн хүүхдүүд цэцэрлэг', 1, 6, '2', 'Н', '6', '6', '', '190', '72', '190', '72', '', '', '1', '', '19', '16', '1', '1', '', '', '7', '6', '6', '6', '5', 3, NULL, NULL, NULL, NULL, NULL),
(1055, 'Алиа багачууд цэцэрлэг', 1, 6, '2', 'Н', '5', '5', '', '114', '45', '114', '45', '', '', '1', '', '16', '14', '1', '', '', '', '5', '5', '5', '5', '5', 4, NULL, NULL, NULL, NULL, NULL),
(1056, 'Амин эрдэнэ цэцэрлэг', 1, 6, '2', 'Н', '3', '3', '', '76', '43', '76', '43', '', '', '', '', '6', '6', '1', '1', '', '', '1', '1', '3', '3', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1057, 'Бадди баавгай цэцэрлэг', 1, 6, '2', 'Н', '5', '5', '', '111', '62', '111', '62', '', '', '1', '', '13', '13', '1', '1', '1', '1', '4', '4', '2', '2', '5', 5, NULL, NULL, NULL, NULL, NULL),
(1058, 'Балжингарав цэцэрлэг', 1, 6, '2', 'Н', '1', '1', '', '19', '13', '19', '13', '', '', '2', '', '4', '4', '1', '1', '', '', '1', '1', '1', '1', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1059, 'Бамбар цэцэрлэг', 1, 6, '2', 'Н', '2', '2', '', '29', '15', '29', '15', '', '', '', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1060, 'Билгүүн-Ундарга цэцэрлэг', 1, 6, '2', 'Н', '3', '3', '', '45', '21', '45', '21', '', '', '2', '', '9', '8', '1', '', '', '', '3', '3', '3', '3', '2', 2, NULL, NULL, NULL, NULL, NULL),
(1061, 'Булган сондор цэцэрлэг', 1, 6, '2', 'Н', '5', '5', '', '179', '75', '179', '75', '', '', '2', '', '14', '13', '1', '1', '1', '1', '5', '5', '4', '4', '3', 2, NULL, NULL, NULL, NULL, NULL),
(1062, 'Бяцхан бумбардай цэцэрлэг', 1, 6, '2', 'Н', '2', '2', '', '75', '33', '75', '33', '', '', '1', '', '8', '7', '1', '1', '', '', '2', '2', '2', '2', '3', 2, NULL, NULL, NULL, NULL, NULL),
(1063, 'Бяцхан дэлхий цэцэрлэг', 1, 6, '2', 'Н', '3', '3', '', '113', '58', '113', '58', '', '', '2', '', '8', '8', '1', '1', '', '', '3', '3', '3', '3', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1064, 'Бяцхан хилчид цэцэрлэг', 1, 6, '2', 'Н', '4', '4', '', '53', '27', '53', '27', '', '', '', '', '11', '10', '1', '1', '', '', '4', '4', '3', '3', '3', 2, NULL, NULL, NULL, NULL, NULL),
(1065, 'Бяцхан хун цэцэрлэг', 1, 6, '2', 'Н', '3', '3', '', '100', '46', '100', '46', '', '', '', '', '8', '8', '1', '1', '', '', '3', '3', '3', '3', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1066, 'Гоёхон доо цэцэрлэг', 1, 6, '2', 'Н', '8', '8', '', '254', '132', '254', '132', '', '', '7', '', '24', '22', '1', '', '', '', '10', '10', '7', '7', '6', 5, NULL, NULL, NULL, NULL, NULL),
(1067, 'Гэрэлт-Оюу цэцэрлэг', 1, 6, '2', 'Н', '4', '4', '', '68', '34', '68', '34', '', '', '4', '', '10', '10', '1', '1', '', '', '4', '4', '4', '4', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1068, 'Дэлгэрхэн ургамал цэцэрлэг', 1, 6, '2', 'Н', '3', '3', '', '80', '33', '80', '33', '', '', '2', '', '9', '9', '1', '1', '', '', '3', '3', '4', '4', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1069, 'Дүүрэн үйлс цэцэрлэг', 1, 6, '2', 'Н', '2', '2', '', '17', '8', '17', '8', '', '', '', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1070, 'Зааны төгөл цэцэрлэг', 1, 6, '2', 'Н', '4', '4', '', '118', '60', '118', '60', '', '', '3', '', '12', '11', '2', '1', '1', '1', '3', '3', '4', '4', '2', 2, NULL, NULL, NULL, NULL, NULL),
(1071, 'Ивээлт дагина цэцэрлэг', 1, 6, '2', 'Н', '3', '3', '', '81', '37', '81', '37', '', '', '', '', '11', '10', '1', '1', '1', '1', '3', '3', '3', '3', '3', 2, NULL, NULL, NULL, NULL, NULL),
(1072, 'Их Ундарга цэцэрлэг', 1, 6, '2', 'Н', '4', '4', '', '152', '72', '152', '72', '', '', '', '', '11', '11', '1', '1', '', '', '4', '4', '4', '4', '2', 2, NULL, NULL, NULL, NULL, NULL),
(1073, 'Мэргэн хүү цэцэрлэг', 1, 6, '2', 'Н', '3', '3', '', '64', '32', '64', '32', '', '', '1', '1', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1074, 'Мөндөөхэй цэцэрлэг', 1, 6, '2', 'Н', '6', '6', '', '149', '74', '149', '74', '', '', '1', '', '13', '12', '1', '1', '', '', '5', '5', '5', '5', '2', 1, NULL, NULL, NULL, NULL, NULL),
(1075, 'Мөнх Ундарга цэцэрлэг', 1, 6, '2', 'Н', '2', '2', '', '81', '43', '81', '43', '', '', '', '', '9', '8', '1', '1', '', '', '2', '2', '2', '2', '4', 3, NULL, NULL, NULL, NULL, NULL),
(1076, 'Мөнхдүүрэн цэцэрлэг', 1, 6, '2', 'Н', '2', '2', '', '51', '25', '51', '25', '', '', '1', '', '7', '7', '1', '1', '', '', '2', '2', '2', '2', '2', 2, NULL, NULL, NULL, NULL, NULL),
(1077, 'Нарны хүүхдүүд цэцэрлэг', 1, 6, '2', 'Н', '3', '3', '', '107', '44', '107', '44', '', '', '', '', '13', '10', '1', '1', '', '', '3', '3', '3', '3', '6', 3, NULL, NULL, NULL, NULL, NULL),
(1078, 'Самархан цэцэрлэг', 1, 6, '2', 'Н', '3', '3', '', '72', '38', '72', '38', '', '', '', '', '8', '8', '1', '1', '', '', '3', '3', '2', '2', '2', 2, NULL, NULL, NULL, NULL, NULL),
(1079, 'Содон ертөнц цэцэрлэг', 1, 6, '2', 'Н', '2', '2', '', '76', '38', '76', '38', '', '', '', '', '7', '7', '1', '1', '', '', '2', '2', '3', '3', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1080, 'Солонго цэцэрлэг', 1, 6, '2', 'Н', '4', '4', '', '116', '53', '116', '53', '', '', '4', '', '15', '14', '1', '1', '', '', '4', '4', '4', '4', '6', 5, NULL, NULL, NULL, NULL, NULL),
(1081, 'Сэйнт Поул цэцэрлэг', 1, 6, '2', 'Н', '3', '3', '', '107', '54', '107', '54', '', '', '', '', '12', '11', '1', '1', '', '', '3', '3', '3', '3', '5', 4, NULL, NULL, NULL, NULL, NULL),
(1082, 'Хатанбүүвэй баатар цэцэрлэг', 1, 6, '2', 'Н', '4', '4', '', '85', '47', '85', '47', '', '', '1', '', '13', '12', '1', '1', '', '', '4', '4', '4', '4', '4', 3, NULL, NULL, NULL, NULL, NULL),
(1083, 'Хос дарь цэцэрлэг', 1, 6, '2', 'Н', '2', '2', '', '62', '25', '62', '25', '', '', '', '', '6', '5', '1', '', '', '', '2', '2', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1084, 'Хүслийн дагина цэцэрлэг', 1, 6, '2', 'Н', '2', '2', '', '25', '13', '25', '13', '', '', '', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1085, 'Хүсэл мөрөөдлийн хотхон цэцэрлэг', 1, 6, '2', 'Н', '2', '2', '', '60', '28', '60', '28', '', '', '', '', '5', '5', '1', '1', '', '', '2', '2', '1', '1', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1086, 'Хүүхдийн баясгалан цэцэрлэг', 1, 6, '2', 'Н', '3', '3', '', '89', '39', '89', '39', '', '', '3', '', '9', '9', '1', '1', '', '', '3', '3', '4', '4', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1087, 'Цэцүүлээ цэцэрлэг', 1, 6, '2', 'Н', '4', '4', '', '199', '97', '199', '97', '', '', '', '', '17', '15', '1', '1', '1', '1', '4', '4', '6', '6', '5', 3, NULL, NULL, NULL, NULL, NULL),
(1088, 'Чухаг цэцэрлэг', 1, 6, '2', 'Н', '3', '3', '', '113', '54', '113', '54', '', '', '2', '', '8', '8', '', '', '', '', '3', '3', '3', '3', '2', 2, NULL, NULL, NULL, NULL, NULL),
(1089, 'Шинэ хотхон цэцэрлэг', 1, 6, '2', 'Н', '4', '4', '', '111', '54', '111', '54', '', '', '6', '', '13', '12', '2', '1', '', '', '4', '4', '4', '4', '3', 3, NULL, NULL, NULL, NULL, NULL),
(1090, 'Эрх дагина цэцэрлэг', 1, 6, '2', 'Н', '3', '3', '', '41', '25', '41', '25', '', '', '1', '', '9', '7', '', '', '', '', '4', '4', '2', '2', '3', 1, NULL, NULL, NULL, NULL, NULL),
(1091, 'Болор эрдэм', 1, 6, '2', 'Н', '4', '4', '', '113', '55', '113', '55', '', '', '3', '', '11', '11', '1', '1', '1', '1', '4', '4', '4', '4', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1092, 'Тэмүүжин анд', 1, 6, '2', 'Н', '7', '7', '', '109', '37', '109', '37', '', '', '', '87', '23', '21', '1', '1', '1', '1', '7', '7', '7', '7', '7', 5, NULL, NULL, NULL, NULL, NULL),
(1093, '“Мөрөөдлийн дагина”', 1, 6, '2', 'Н', '2', '2', '', '57', '21', '57', '21', '', '', '2', '', '5', '5', '', '', '1', '1', '1', '1', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1094, 'Бат-Анугийн найзууд', 1, 6, '2', 'Н', '3', '3', '', '73', '36', '73', '36', '', '', '', '', '10', '9', '1', '1', '', '', '3', '3', '2', '2', '4', 3, NULL, NULL, NULL, NULL, NULL),
(1095, 'Хөх тэнгэр цэцэрлэг', 1, 6, '2', 'Н', '2', '2', '', '81', '40', '81', '40', '', '', '', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1096, 'Тэмүка найзууд цэцэрлэг', 1, 6, '2', 'Н', '3', '3', '', '65', '32', '65', '32', '', '', '', '', '8', '7', '', '', '', '', '3', '3', '3', '3', '2', 1, NULL, NULL, NULL, NULL, NULL),
(1097, 'Гурван саран од цэцэрлэг', 1, 6, '2', 'Н', '3', '3', '', '84', '40', '84', '40', '', '', '', '', '9', '9', '', '', '', '', '3', '3', '3', '3', '3', 3, NULL, NULL, NULL, NULL, NULL),
(1098, 'Тоорхон цэцэрлэг', 1, 6, '2', 'Н', '2', '2', '', '67', '28', '67', '28', '', '', '4', '', '5', '5', '1', '1', '', '', '2', '2', '1', '1', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1099, 'Найзууд цэцэрлэг', 1, 6, '2', 'Н', '4', '4', '', '90', '48', '90', '48', '', '', '', '1', '12', '10', '1', '1', '', '', '3', '3', '3', '3', '5', 3, NULL, NULL, NULL, NULL, NULL),
(1100, 'Ид шидийн орон-1 цэцэрлэг', 1, 6, '2', 'Н', '1', '1', '', '21', '11', '21', '11', '', '', '', '', '3', '3', '1', '1', '', '', '1', '1', '', '', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1101, 'Өхөөрдөм жаалууд цэцэрлэг', 1, 6, '2', 'Н', '3', '3', '', '80', '41', '80', '41', '', '', '', '', '7', '7', '1', '1', '', '', '2', '2', '3', '3', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1102, 'Содон маамуу', 1, 6, '2', 'Н', '4', '4', '', '73', '32', '73', '32', '', '', '1', '', '9', '9', '1', '1', '', '', '3', '3', '4', '4', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1103, '1-р цэцэрлэг', 1, 7, '1', 'Н', '10', '10', '', '239', '122', '239', '122', '', '', '', '2', '42', '35', '1', '1', '1', '1', '12', '12', '9', '9', '19', 12, NULL, NULL, NULL, NULL, NULL),
(1104, '2-р цэцэрлэг', 1, 7, '1', 'Н', '3', '3', '', '128', '67', '128', '67', '', '', '', '', '21', '16', '1', '1', '1', '1', '4', '3', '3', '3', '12', 8, NULL, NULL, NULL, NULL, NULL),
(1105, '14-р цэцэрлэг', 1, 7, '1', 'Н', '0', '', '', '0', '0', '', '', '', '', '', '', '11', '7', '1', '1', '1', '1', '1', '1', '', '', '8', 4, NULL, NULL, NULL, NULL, NULL),
(1106, '16-р цэцэрлэг', 1, 7, '1', 'Н', '14', '14', '', '351', '157', '351', '157', '', '', '', '3', '47', '41', '1', '1', '2', '2', '16', '15', '14', '14', '14', 9, NULL, NULL, NULL, NULL, NULL),
(1107, '17-р цэцэрлэг', 1, 7, '1', 'Н', '5', '5', '', '239', '122', '239', '122', '', '', '1', '2', '25', '20', '1', '1', '', '', '7', '6', '5', '5', '12', 8, NULL, NULL, NULL, NULL, NULL),
(1108, '24-р цэцэрлэг', 1, 7, '1', 'Н', '10', '10', '', '402', '194', '402', '194', '', '', '2', '2', '37', '32', '1', '1', '1', '1', '12', '11', '9', '9', '14', 10, NULL, NULL, NULL, NULL, NULL),
(1109, '25-р цэцэрлэг', 1, 7, '1', 'Н', '8', '8', '', '221', '110', '221', '110', '', '', '2', '2', '32', '27', '1', '1', '1', '1', '10', '9', '8', '8', '12', 8, NULL, NULL, NULL, NULL, NULL),
(1110, '36-р цэцэрлэг', 1, 7, '1', 'Н', '4', '4', '', '98', '60', '98', '60', '', '', '1', '', '24', '19', '1', '1', '1', '1', '5', '5', '4', '4', '13', 8, NULL, NULL, NULL, NULL, NULL),
(1111, '40-р цэцэрлэг', 1, 7, '1', 'Н', '4', '4', '', '130', '64', '130', '64', '', '', '', '1', '24', '19', '1', '1', '1', '1', '6', '5', '4', '4', '12', 8, NULL, NULL, NULL, NULL, NULL),
(1112, '42-р цэцэрлэг', 1, 7, '1', 'Н', '12', '12', '', '307', '153', '307', '153', '', '', '', '', '48', '37', '1', '1', '1', '1', '14', '13', '12', '12', '20', 10, NULL, NULL, NULL, NULL, NULL),
(1113, '51-р цэцэрлэг', 1, 7, '1', 'Н', '10', '10', '', '342', '167', '342', '167', '', '', '1', '1', '40', '34', '1', '1', '1', '', '12', '11', '10', '10', '16', 12, NULL, NULL, NULL, NULL, NULL),
(1114, '54-р цэцэрлэг', 1, 7, '1', 'Н', '10', '10', '', '205', '102', '205', '102', '', '', '1', '1', '42', '38', '1', '1', '1', '1', '14', '14', '12', '12', '14', 10, NULL, NULL, NULL, NULL, NULL),
(1115, '68-р цэцэрлэг', 1, 7, '1', 'Н', '13', '13', '', '393', '188', '393', '188', '', '', '1', '', '45', '40', '1', '1', '1', '1', '15', '15', '13', '13', '15', 10, NULL, NULL, NULL, NULL, NULL),
(1116, '69-р цэцэрлэг', 1, 7, '1', 'Н', '13', '13', '', '493', '245', '493', '245', '', '', '1', '2', '46', '42', '1', '1', '1', '1', '15', '15', '13', '13', '16', 12, NULL, NULL, NULL, NULL, NULL),
(1117, '75-р цэцэрлэг', 1, 7, '1', 'Н', '12', '12', '', '361', '168', '361', '168', '', '', '', '1', '50', '38', '1', '1', '2', '2', '16', '13', '11', '11', '20', 11, NULL, NULL, NULL, NULL, NULL),
(1118, '109-р цэцэрлэг', 1, 7, '1', 'Н', '10', '10', '', '265', '126', '265', '126', '', '', '5', '2', '43', '33', '1', '1', '1', '1', '12', '11', '9', '9', '20', 11, NULL, NULL, NULL, NULL, NULL),
(1119, '130-р цэцэрлэг', 1, 7, '1', 'Н', '6', '6', '', '206', '91', '206', '91', '', '', '', '', '30', '24', '1', '1', '1', '1', '8', '6', '6', '6', '14', 10, NULL, NULL, NULL, NULL, NULL),
(1120, '135-р цэцэрлэг', 1, 7, '1', 'Н', '18', '18', '', '550', '271', '550', '271', '', '', '', '6', '68', '59', '1', '1', '2', '2', '22', '21', '18', '18', '25', 17, NULL, NULL, NULL, NULL, NULL),
(1121, '143-р цэцэрлэг', 1, 7, '1', 'Н', '16', '16', '', '526', '252', '526', '252', '', '', '', '7', '64', '55', '1', '1', '2', '2', '20', '20', '16', '16', '25', 16, NULL, NULL, NULL, NULL, NULL),
(1122, '149-р цэцэрлэг', 1, 7, '1', 'Н', '6', '6', '', '127', '64', '127', '64', '', '', '', '', '30', '25', '1', '1', '1', '1', '8', '7', '6', '6', '14', 10, NULL, NULL, NULL, NULL, NULL),
(1123, '150-р цэцэрлэг', 1, 7, '1', 'Н', '4', '4', '', '159', '81', '159', '81', '', '', '', '', '26', '18', '1', '1', '1', '1', '6', '5', '4', '4', '14', 7, NULL, NULL, NULL, NULL, NULL),
(1124, '159-р цэцэрлэг', 1, 7, '1', 'Н', '3', '3', '', '119', '59', '119', '59', '', '', '1', '', '23', '17', '1', '1', '1', '1', '5', '5', '3', '3', '13', 7, NULL, NULL, NULL, NULL, NULL),
(1125, '160-р цэцэрлэг', 1, 7, '1', 'Н', '12', '12', '', '373', '173', '373', '173', '', '', '2', '2', '42', '38', '1', '1', '1', '1', '14', '14', '11', '11', '15', 11, NULL, NULL, NULL, NULL, NULL),
(1126, '166-р цэцэрлэг', 1, 7, '1', 'Н', '6', '6', '', '228', '124', '228', '124', '', '', '3', '1', '35', '26', '1', '1', '1', '1', '7', '7', '6', '6', '20', 11, NULL, NULL, NULL, NULL, NULL),
(1127, '171-р цэцэрлэг', 1, 7, '1', 'Н', '5', '5', '', '136', '69', '136', '69', '', '', '', '1', '24', '20', '1', '1', '1', '1', '5', '5', '5', '5', '12', 8, NULL, NULL, NULL, NULL, NULL),
(1128, '175-р цэцэрлэг', 1, 7, '1', 'Н', '4', '4', '', '136', '72', '136', '72', '', '', '1', '', '22', '18', '1', '1', '1', '1', '6', '6', '4', '4', '10', 6, NULL, NULL, NULL, NULL, NULL),
(1129, '186-р цэцэрлэг', 1, 7, '1', 'Н', '7', '7', '', '76', '16', '76', '16', '', '', '1', '76', '36', '32', '1', '1', '1', '1', '12', '12', '12', '12', '10', 6, NULL, NULL, NULL, NULL, NULL),
(1130, '205-р цэцэрлэг', 1, 7, '1', 'Н', '4', '4', '', '136', '66', '136', '66', '', '', '3', '', '25', '18', '1', '1', '1', '1', '6', '4', '4', '4', '13', 8, NULL, NULL, NULL, NULL, NULL),
(1131, '216-р цэцэрлэг', 1, 7, '1', 'Н', '15', '15', '', '600', '295', '600', '295', '', '', '1', '2', '30', '28', '1', '1', '', '', '11', '11', '9', '9', '9', 7, NULL, NULL, NULL, NULL, NULL),
(1132, '217-р цэцэрлэг', 1, 7, '1', 'Н', '4', '4', '', '138', '70', '138', '70', '', '', '', '', '26', '20', '1', '1', '1', '1', '5', '5', '4', '4', '15', 9, NULL, NULL, NULL, NULL, NULL),
(1133, '225-р цэцэрлэг', 1, 7, '1', 'Н', '8', '8', '', '288', '134', '288', '134', '', '', '', '', '33', '28', '1', '1', '1', '1', '10', '9', '8', '8', '13', 9, NULL, NULL, NULL, NULL, NULL),
(1134, '234-р цэцэрлэг', 1, 7, '1', 'Н', '10', '10', '', '389', '177', '389', '177', '', '', '3', '1', '40', '33', '1', '1', '1', '1', '12', '11', '10', '10', '16', 10, NULL, NULL, NULL, NULL, NULL),
(1135, '248-р цэцэрлэг', 1, 7, '1', 'Н', '3', '3', '', '146', '67', '146', '67', '', '', '2', '1', '20', '15', '1', '1', '1', '1', '4', '3', '3', '3', '11', 7, NULL, NULL, NULL, NULL, NULL),
(1136, '283-р цэцэрлэг', 1, 7, '1', 'Н', '7', '7', '', '205', '94', '205', '94', '', '', '3', '', '37', '33', '1', '1', '1', '1', '9', '9', '12', '12', '14', 10, NULL, NULL, NULL, NULL, NULL),
(1137, '299-р цэцэрлэг', 1, 7, '1', 'Н', '6', '6', '', '217', '97', '217', '97', '', '', '3', '', '28', '22', '1', '1', '1', '1', '8', '6', '6', '6', '12', 8, NULL, NULL, NULL, NULL, NULL),
(1138, '281-р  цэцэрлэг', 1, 7, '1', 'Н', '12', '12', '', '217', '119', '217', '119', '', '', '3', '1', '44', '39', '1', '1', '1', '1', '14', '13', '12', '12', '16', 12, NULL, NULL, NULL, NULL, NULL),
(1139, 'Агуу хүүхдүүд цэцэрлэг', 1, 7, '2', 'Н', '2', '2', '', '47', '20', '47', '20', '', '', '', '', '11', '10', '1', '1', '', '', '2', '2', '2', '2', '6', 5, NULL, NULL, NULL, NULL, NULL),
(1140, 'Ананд шавь цэцэрлэг', 1, 7, '2', 'Н', '4', '4', '', '97', '51', '97', '51', '', '', '2', '', '7', '7', '1', '1', '', '', '2', '2', '3', '3', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1141, 'Бяцхан-од цэцэрлэг', 1, 7, '2', 'Н', '3', '3', '', '31', '15', '31', '15', '', '', '', '', '5', '5', '1', '1', '', '', '2', '2', '1', '1', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1142, 'Бөмбөөлэй цэцэрлэг', 1, 7, '2', 'Н', '4', '4', '', '24', '10', '24', '10', '', '', '', '', '7', '6', '1', '1', '', '', '2', '2', '2', '2', '2', 1, NULL, NULL, NULL, NULL, NULL),
(1143, 'Гоц жаалууд цэцэрлэг', 1, 7, '2', 'Н', '4', '4', '', '113', '54', '113', '54', '', '', '1', '', '14', '12', '1', '1', '', '', '4', '4', '4', '4', '5', 3, NULL, NULL, NULL, NULL, NULL),
(1144, 'Гүүр цэцэрлэг', 1, 7, '2', 'Н', '4', '4', '', '63', '32', '63', '32', '', '', '', '', '9', '9', '1', '1', '', '', '4', '4', '3', '3', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1145, 'Дуду Эмээ цэцэрлэг', 1, 7, '2', 'Н', '2', '2', '', '47', '28', '47', '28', '', '', '2', '', '8', '7', '1', '', '', '', '2', '2', '2', '2', '3', 3, NULL, NULL, NULL, NULL, NULL),
(1146, 'Мөндөөхэй цэцэрлэг', 1, 7, '2', 'Н', '2', '2', '', '40', '24', '40', '24', '', '', '1', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1147, 'Мөрөөдлийн гэр бүл цэцэрлэг', 1, 7, '2', 'Н', '2', '2', '', '40', '17', '40', '17', '', '', '', '', '8', '7', '1', '1', '', '', '3', '3', '2', '2', '2', 1, NULL, NULL, NULL, NULL, NULL),
(1148, 'Нарны жаалууд цэцэрлэг', 1, 7, '2', 'Н', '3', '3', '', '30', '14', '30', '14', '', '', '', '', '8', '8', '1', '1', '', '', '4', '4', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1149, 'Ногоон алим цэцэрлэг', 1, 7, '2', 'Н', '4', '4', '', '83', '42', '83', '42', '', '', '', '', '9', '9', '1', '1', '', '', '4', '4', '3', '3', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1150, 'Онч сэтгэмж цэцэрлэг', 1, 7, '2', 'Н', '2', '2', '', '35', '12', '35', '12', '', '', '', '', '6', '6', '1', '1', '', '', '2', '2', '1', '1', '2', 2, NULL, NULL, NULL, NULL, NULL),
(1151, 'Сайхан аа цэцэрлэг', 1, 7, '2', 'Н', '4', '4', '', '119', '56', '119', '56', '', '', '', '', '14', '12', '', '', '', '', '5', '5', '4', '4', '5', 3, NULL, NULL, NULL, NULL, NULL),
(1152, 'Том Жаал цэцэрлэг', 1, 7, '2', 'Н', '2', '2', '', '24', '13', '24', '13', '', '', '', '', '5', '5', '', '', '', '', '2', '2', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1153, 'Хараацай цэцэрлэг', 1, 7, '2', 'Н', '2', '2', '', '40', '19', '40', '19', '', '', '', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1154, 'Хөгжил цэцэрлэг', 1, 7, '2', 'Н', '5', '5', '', '111', '60', '111', '60', '', '', '', '', '11', '11', '1', '1', '', '', '4', '4', '4', '4', '2', 2, NULL, NULL, NULL, NULL, NULL),
(1155, 'Цасан гоо цэцэрлэг', 1, 7, '2', 'Н', '3', '3', '', '86', '45', '86', '45', '', '', '', '', '16', '12', '1', '1', '1', '1', '4', '3', '3', '3', '7', 4, NULL, NULL, NULL, NULL, NULL),
(1156, 'Цоглог бөмбөөхөн цэцэрлэг', 1, 7, '2', 'Н', '6', '6', '', '137', '66', '137', '66', '', '', '', '', '18', '17', '1', '1', '1', '1', '5', '5', '7', '7', '4', 3, NULL, NULL, NULL, NULL, NULL),
(1157, 'Элит багачууд цэцэрлэг', 1, 7, '2', 'Н', '4', '4', '', '80', '32', '80', '32', '', '', '', '', '18', '17', '1', '1', '1', '1', '5', '4', '4', '4', '7', 7, NULL, NULL, NULL, NULL, NULL),
(1158, 'Эрдмийн цацраг цэцэрлэг', 1, 7, '2', 'Н', '4', '4', '', '83', '46', '83', '46', '', '', '', '', '11', '11', '1', '1', '', '', '4', '4', '4', '4', '2', 2, NULL, NULL, NULL, NULL, NULL),
(1159, 'Үрэл хотхон цэцэрлэг', 1, 7, '2', 'Н', '4', '4', '', '99', '54', '99', '54', '', '', '1', '', '11', '11', '1', '1', '1', '1', '4', '4', '4', '4', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1160, 'Номт сансар цэцэрлэг', 1, 7, '2', 'Н', '3', '3', '', '70', '31', '70', '31', '', '', '', '', '10', '10', '1', '1', '', '', '3', '3', '4', '4', '2', 2, NULL, NULL, NULL, NULL, NULL),
(1161, 'Сэлбэ сургууль цэцэрлэг цогцолбор ', 1, 7, '2', 'Н', '5', '5', '', '107', '50', '107', '50', '', '', '', '', '14', '13', '1', '1', '', '', '7', '6', '5', '5', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1162, 'Эрхэм сувд цэцэрлэг', 1, 7, '2', 'Н', '2', '2', '', '21', '5', '21', '5', '', '', '', '1', '5', '5', '', '', '1', '1', '1', '1', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1163, 'Нест кидс киндер гарден цэцэрлэг', 1, 7, '2', 'Н', '2', '2', '', '42', '17', '42', '17', '', '', '', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1164, 'Бяцхан мөрөөдөл', 1, 7, '2', 'Н', '3', '3', '', '77', '41', '77', '41', '', '', '', '', '9', '8', '1', '1', '', '', '3', '3', '3', '3', '2', 1, NULL, NULL, NULL, NULL, NULL),
(1165, 'Жаргалан-2', 1, 7, '2', 'Н', '8', '8', '', '237', '118', '237', '118', '', '', '3', '', '15', '14', '1', '1', '', '', '8', '8', '5', '5', '1', 0, NULL, NULL, NULL, NULL, NULL),
(1166, '12-р цэцэрлэг', 1, 8, '1', 'Н', '16', '16', '', '602', '304', '602', '304', '', '', '', '1', '63', '51', '1', '1', '2', '2', '16', '14', '21', '21', '23', 13, NULL, NULL, NULL, NULL, NULL),
(1167, '27-р цэцэрлэг', 1, 8, '1', 'Н', '30', '30', '', '1018', '510', '1018', '510', '', '', '', '2', '83', '71', '1', '1', '3', '3', '31', '29', '23', '22', '25', 16, NULL, NULL, NULL, NULL, NULL),
(1168, '28-р цэцэрлэг', 1, 8, '1', 'Н', '17', '17', '', '490', '264', '490', '264', '', '', '4', '1', '65', '56', '1', '1', '2', '2', '19', '18', '23', '23', '20', 12, NULL, NULL, NULL, NULL, NULL),
(1169, '29-р цэцэрлэг', 1, 8, '1', 'Н', '6', '6', '', '199', '107', '199', '107', '', '', '', '1', '28', '23', '1', '1', '1', '1', '8', '8', '6', '6', '12', 7, NULL, NULL, NULL, NULL, NULL),
(1170, '35-р цэцэрлэг', 1, 8, '1', 'Н', '32', '32', '', '984', '496', '984', '496', '', '', '1', '4', '77', '72', '1', '1', '4', '4', '35', '34', '20', '20', '17', 13, NULL, NULL, NULL, NULL, NULL),
(1171, '41-р цэцэрлэг', 1, 8, '1', 'Н', '25', '25', '', '621', '327', '621', '327', '', '', '4', '7', '75', '66', '1', '1', '3', '3', '28', '27', '25', '25', '18', 10, NULL, NULL, NULL, NULL, NULL),
(1172, '46-р цэцэрлэг', 1, 8, '1', 'Н', '20', '20', '', '580', '258', '580', '258', '', '', '', '7', '66', '57', '1', '1', '3', '3', '22', '22', '18', '18', '22', 13, NULL, NULL, NULL, NULL, NULL),
(1173, '49-р цэцэрлэг', 1, 8, '1', 'Н', '8', '8', '', '256', '128', '256', '128', '', '', '1', '', '35', '27', '1', '1', '1', '1', '8', '6', '8', '8', '17', 11, NULL, NULL, NULL, NULL, NULL),
(1174, '53-р цэцэрлэг', 1, 8, '1', 'Н', '12', '12', '', '389', '180', '389', '180', '', '', '', '', '42', '36', '1', '1', '1', '1', '14', '13', '12', '12', '14', 9, NULL, NULL, NULL, NULL, NULL),
(1175, '65-р цэцэрлэг', 1, 8, '1', 'Н', '17', '17', '', '575', '290', '575', '290', '', '', '', '4', '51', '46', '1', '1', '2', '2', '20', '20', '15', '15', '13', 8, NULL, NULL, NULL, NULL, NULL),
(1176, '67-р цэцэрлэг', 1, 8, '1', 'Н', '12', '12', '', '425', '199', '425', '199', '', '', '', '3', '38', '34', '1', '1', '1', '1', '14', '14', '12', '12', '10', 6, NULL, NULL, NULL, NULL, NULL),
(1177, '71-р цэцэрлэг', 1, 8, '1', 'Н', '7', '7', '', '256', '122', '256', '122', '', '', '1', '1', '29', '24', '1', '1', '1', '1', '8', '8', '7', '7', '12', 7, NULL, NULL, NULL, NULL, NULL),
(1178, '72-р цэцэрлэг', 1, 8, '1', 'Н', '11', '11', '', '370', '172', '370', '172', '', '', '1', '3', '50', '42', '1', '1', '2', '2', '15', '14', '11', '11', '21', 14, NULL, NULL, NULL, NULL, NULL),
(1179, '73-р цэцэрлэг', 1, 8, '1', 'Н', '13', '13', '', '484', '237', '484', '237', '', '', '7', '', '46', '40', '1', '1', '1', '1', '15', '14', '13', '13', '16', 11, NULL, NULL, NULL, NULL, NULL),
(1180, '121-р цэцэрлэг', 1, 8, '1', 'Н', '10', '10', '', '275', '147', '275', '147', '', '', '3', '', '40', '33', '1', '1', '1', '1', '11', '10', '10', '10', '17', 11, NULL, NULL, NULL, NULL, NULL),
(1181, '134-р цэцэрлэг', 1, 8, '1', 'Н', '14', '14', '', '623', '307', '623', '307', '', '', '2', '', '52', '45', '1', '1', '2', '2', '16', '14', '14', '14', '19', 14, NULL, NULL, NULL, NULL, NULL),
(1182, '144-р цэцэрлэг', 1, 8, '1', 'Н', '10', '10', '', '279', '163', '279', '163', '', '', '8', '1', '37', '31', '1', '1', '1', '1', '10', '10', '10', '10', '15', 9, NULL, NULL, NULL, NULL, NULL),
(1183, '145-р цэцэрлэг', 1, 8, '1', 'Н', '6', '6', '', '199', '101', '199', '101', '', '', '', '', '28', '23', '1', '1', '1', '1', '8', '7', '6', '6', '12', 8, NULL, NULL, NULL, NULL, NULL),
(1184, '165-р цэцэрлэг', 1, 8, '1', 'Н', '3', '3', '', '119', '62', '119', '62', '', '', '13', '1', '19', '15', '1', '1', '1', '1', '5', '4', '3', '3', '9', 6, NULL, NULL, NULL, NULL, NULL),
(1185, '189-р цэцэрлэг', 1, 8, '1', 'Н', '12', '12', '', '447', '227', '447', '227', '', '', '1', '1', '45', '39', '1', '1', '1', '1', '14', '13', '12', '12', '17', 12, NULL, NULL, NULL, NULL, NULL),
(1186, '190-р цэцэрлэг', 1, 8, '1', 'Н', '4', '4', '', '116', '62', '116', '62', '', '', '7', '', '21', '17', '1', '1', '', '', '5', '5', '4', '4', '11', 7, NULL, NULL, NULL, NULL, NULL),
(1187, '209-р цэцэрлэг', 1, 8, '1', 'Н', '13', '13', '', '506', '245', '506', '245', '', '', '5', '4', '49', '43', '1', '1', '2', '2', '14', '14', '13', '13', '19', 13, NULL, NULL, NULL, NULL, NULL),
(1188, '218-р цэцэрлэг', 1, 8, '1', 'Н', '34', '34', '', '1131', '528', '1131', '528', '', '', '', '6', '92', '82', '1', '1', '3', '3', '31', '29', '34', '34', '23', 15, NULL, NULL, NULL, NULL, NULL),
(1189, '219-р цэцэрлэг', 1, 8, '1', 'Н', '5', '5', '', '169', '90', '169', '90', '', '', '1', '', '24', '20', '1', '1', '1', '1', '5', '5', '5', '5', '12', 8, NULL, NULL, NULL, NULL, NULL),
(1190, '223-р цэцэрлэг', 1, 8, '1', 'Н', '12', '12', '', '494', '235', '494', '235', '', '', '', '4', '47', '40', '1', '1', '2', '2', '12', '12', '11', '11', '21', 14, NULL, NULL, NULL, NULL, NULL),
(1191, '230-р цэцэрлэг', 1, 8, '1', 'Н', '8', '8', '', '360', '197', '360', '197', '', '', '', '3', '33', '27', '1', '1', '1', '1', '10', '9', '8', '8', '13', 8, NULL, NULL, NULL, NULL, NULL),
(1192, '243-р цэцэрлэг', 1, 8, '1', 'Н', '16', '16', '', '731', '342', '731', '342', '', '', '10', '3', '59', '54', '1', '1', '2', '2', '18', '17', '15', '15', '23', 19, NULL, NULL, NULL, NULL, NULL),
(1193, '250-р цэцэрлэг', 1, 8, '1', 'Н', '16', '16', '', '629', '312', '629', '312', '', '', '1', '', '60', '49', '1', '1', '1', '1', '20', '18', '16', '16', '22', 13, NULL, NULL, NULL, NULL, NULL),
(1194, '290-р цэцэрлэг', 1, 8, '1', 'Н', '15', '15', '', '662', '341', '662', '341', '', '', '', '', '49', '44', '1', '1', '1', '1', '17', '17', '15', '15', '15', 10, NULL, NULL, NULL, NULL, NULL),
(1195, '300-р цэцэрлэг ', 1, 8, '1', 'Н', '5', '5', '', '144', '55', '144', '55', '', '', '8', '', '28', '24', '1', '1', '1', '1', '7', '7', '5', '5', '14', 10, NULL, NULL, NULL, NULL, NULL),
(1196, '308-р цэцэрлэг', 1, 8, '1', 'Н', '17', '17', '', '581', '279', '581', '279', '', '', '1', '2', '51', '46', '1', '1', '2', '2', '19', '19', '15', '15', '14', 9, NULL, NULL, NULL, NULL, NULL),
(1197, 'Амилагийн найз цэцэрлэг', 1, 8, '2', 'Н', '4', '4', '', '100', '50', '100', '50', '', '', '1', '', '11', '11', '1', '1', '1', '1', '4', '4', '4', '4', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1198, 'Цэлмэг цэцэрлэг', 1, 8, '2', 'Н', '3', '3', '', '42', '22', '42', '22', '', '', '', '', '4', '4', '', '', '', '', '3', '3', '1', '1', '', 0, NULL, NULL, NULL, NULL, NULL),
(1199, 'Энхрий найзууд цэцэрлэг', 1, 8, '2', 'Н', '2', '2', '', '53', '25', '53', '25', '', '', '', '', '8', '7', '', '', '1', '1', '1', '1', '3', '3', '3', 2, NULL, NULL, NULL, NULL, NULL),
(1200, 'Дэлгэрэх цэцэгс цэцэрлэг', 1, 8, '2', 'Н', '8', '8', '', '174', '81', '174', '81', '', '', '1', '', '19', '19', '1', '1', '1', '1', '7', '7', '8', '8', '2', 2, NULL, NULL, NULL, NULL, NULL),
(1201, 'Оддын баясгалантай үрс цэцэрлэг', 1, 8, '2', 'Н', '4', '4', '', '44', '26', '44', '26', '', '', '20', '', '6', '6', '1', '1', '', '', '1', '1', '1', '1', '3', 3, NULL, NULL, NULL, NULL, NULL),
(1202, 'Гурван хөгжил цэцэрлэг', 1, 8, '2', 'Н', '5', '5', '', '131', '59', '131', '59', '', '', '', '', '16', '16', '1', '1', '', '', '6', '6', '5', '5', '4', 4, NULL, NULL, NULL, NULL, NULL),
(1203, 'Амила цэцэрлэг', 1, 8, '2', 'Н', '8', '8', '', '200', '96', '200', '96', '', '', '', '', '17', '17', '', '', '1', '1', '7', '7', '8', '8', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1204, 'Амилагийн багачууд цэцэрлэг', 1, 8, '2', 'Н', '4', '4', '', '87', '41', '87', '41', '', '', '', '', '12', '11', '1', '1', '1', '1', '4', '4', '4', '4', '2', 1, NULL, NULL, NULL, NULL, NULL),
(1205, 'Амилагийн найзууд цэцэрлэг', 1, 8, '2', 'Н', '7', '7', '', '209', '107', '209', '107', '', '', '', '', '17', '17', '1', '1', '1', '1', '7', '7', '7', '7', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1206, 'Амин ирээдүй цэцэрлэг', 1, 8, '2', 'Н', '3', '3', '', '81', '27', '81', '27', '', '', '', '', '7', '7', '1', '1', '', '', '2', '2', '3', '3', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1207, 'Анүүлэн аз жаргал цэцэрлэг', 1, 8, '2', 'Н', '4', '4', '', '52', '10', '52', '10', '', '', '', '45', '11', '11', '2', '2', '', '', '2', '2', '4', '4', '3', 3, NULL, NULL, NULL, NULL, NULL),
(1208, 'Бамбуулай цэцэрлэг', 1, 8, '2', 'Н', '2', '2', '', '35', '14', '35', '14', '', '', '', '', '7', '6', '1', '1', '', '', '2', '2', '2', '2', '2', 1, NULL, NULL, NULL, NULL, NULL),
(1209, 'Баясгалант ертөнц цэцэрлэг', 1, 8, '2', 'Н', '3', '3', '', '57', '28', '57', '28', '', '', '1', '', '5', '5', '1', '1', '', '', '2', '2', '1', '1', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1210, 'Болор-Өргөө цэцэрлэг', 1, 8, '2', 'Н', '1', '1', '', '8', '2', '8', '2', '', '', '', '', '3', '3', '1', '1', '', '', '', '', '1', '1', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1211, 'Буурай ээж цэцэрлэг', 1, 8, '2', 'Н', '4', '4', '', '186', '102', '186', '102', '', '', '7', '', '13', '12', '1', '1', '1', '1', '4', '4', '4', '4', '3', 2, NULL, NULL, NULL, NULL, NULL),
(1212, 'Бяцхан аялагчид цэцэрлэг', 1, 8, '2', 'Н', '5', '5', '', '105', '63', '105', '63', '', '', '', '', '17', '16', '2', '1', '', '', '5', '5', '5', '5', '5', 5, NULL, NULL, NULL, NULL, NULL),
(1213, 'Бяцхан найзууд цэцэрлэг', 1, 8, '2', 'Н', '6', '6', '', '82', '39', '82', '39', '', '', '', '', '13', '12', '1', '1', '', '', '6', '6', '4', '3', '2', 2, NULL, NULL, NULL, NULL, NULL),
(1214, 'Бяцхан Сондор цэцэрлэг', 1, 8, '2', 'Н', '5', '5', '', '89', '47', '89', '47', '', '', '', '', '21', '16', '1', '1', '1', '1', '7', '5', '5', '5', '7', 4, NULL, NULL, NULL, NULL, NULL),
(1215, 'Бяцхан шилтгээн цэцэрлэг', 1, 8, '2', 'Н', '4', '4', '', '53', '32', '53', '32', '', '', '', '', '9', '8', '', '', '', '', '4', '4', '2', '2', '3', 2, NULL, NULL, NULL, NULL, NULL),
(1216, 'Бөднө цэцэрлэг', 1, 8, '2', 'Н', '4', '4', '', '45', '20', '45', '20', '', '', '', '1', '10', '10', '1', '1', '', '', '3', '3', '4', '4', '2', 2, NULL, NULL, NULL, NULL, NULL),
(1217, 'Гурван хөгжил зайсан цэцэрлэг', 1, 8, '2', 'Н', '2', '2', '', '6', '1', '6', '1', '', '', '', '', '7', '7', '1', '1', '', '', '2', '2', '2', '2', '2', 2, NULL, NULL, NULL, NULL, NULL),
(1218, 'Гэгээн ертөнц цэцэрлэг', 1, 8, '2', 'Н', '4', '4', '', '181', '92', '181', '92', '', '', '1', '', '11', '11', '1', '1', '1', '1', '3', '3', '4', '4', '2', 2, NULL, NULL, NULL, NULL, NULL),
(1219, 'Далд Уянга цэцэрлэг', 1, 8, '2', 'Н', '2', '2', '', '66', '30', '66', '30', '', '', '', '', '6', '5', '1', '1', '', '', '2', '2', '2', '2', '1', 0, NULL, NULL, NULL, NULL, NULL),
(1220, 'Дэгдүнэ цэцэрлэг', 1, 8, '2', 'Н', '3', '3', '', '41', '21', '41', '21', '', '', '', '', '2', '2', '1', '1', '', '', '', '', '1', '1', '', 0, NULL, NULL, NULL, NULL, NULL),
(1221, 'Жаргалтай балчирууд цэцэрлэг', 1, 8, '2', 'Н', '4', '4', '', '45', '13', '45', '13', '', '', '1', '', '8', '8', '1', '1', '', '', '4', '4', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1222, 'Жаргалтай ирээдүй цэцэрлэг', 1, 8, '2', 'Н', '3', '3', '', '44', '17', '44', '17', '', '', '1', '', '7', '7', '1', '1', '', '', '2', '2', '3', '3', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1223, 'Жимсхэн цэцэрлэг', 1, 8, '2', 'Н', '5', '5', '', '126', '74', '126', '74', '', '', '', '', '9', '8', '1', '', '', '', '4', '4', '3', '3', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1224, 'Мазаахай цэцэрлэг', 1, 8, '2', 'Н', '3', '3', '', '121', '59', '121', '59', '', '', '2', '', '12', '12', '1', '1', '1', '1', '3', '3', '4', '4', '3', 3, NULL, NULL, NULL, NULL, NULL),
(1225, 'Миний гэр цэцэрлэг', 1, 8, '2', 'Н', '3', '3', '', '39', '15', '39', '15', '', '', '1', '', '8', '8', '1', '1', '', '', '3', '3', '3', '3', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1226, 'Миний найз цэцэрлэг', 1, 8, '2', 'Н', '4', '4', '', '88', '47', '88', '47', '', '', '', '', '8', '8', '1', '1', '', '', '3', '3', '2', '2', '2', 2, NULL, NULL, NULL, NULL, NULL),
(1227, 'Нархан үрсийн ордон цэцэрлэг', 1, 8, '2', 'Н', '3', '3', '', '84', '42', '84', '42', '', '', '1', '', '8', '8', '1', '1', '', '', '3', '3', '3', '3', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1228, 'Номин цэцэрлэг', 1, 8, '2', 'Н', '5', '5', '', '152', '77', '152', '77', '', '', '3', '', '16', '15', '1', '1', '1', '1', '6', '6', '5', '5', '3', 2, NULL, NULL, NULL, NULL, NULL),
(1229, 'Олуулаа цэцэрлэг', 1, 8, '2', 'Н', '2', '2', '', '32', '17', '32', '17', '', '', '', '', '7', '6', '1', '1', '1', '', '2', '2', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1230, 'Орхон багачууд цэцэрлэг', 1, 8, '2', 'Н', '4', '4', '', '74', '34', '74', '34', '', '', '', '', '14', '13', '1', '1', '', '', '5', '5', '4', '4', '4', 3, NULL, NULL, NULL, NULL, NULL),
(1231, 'Орчлон цэцэрлэг', 1, 8, '2', 'Н', '9', '9', '', '222', '126', '222', '126', '', '', '', '', '32', '32', '1', '1', '1', '1', '9', '9', '9', '9', '12', 12, NULL, NULL, NULL, NULL, NULL),
(1232, 'Очхон цэцэрлэг', 1, 8, '2', 'Н', '3', '3', '', '43', '21', '43', '21', '', '', '', '', '6', '6', '', '', '', '', '3', '3', '1', '1', '2', 2, NULL, NULL, NULL, NULL, NULL),
(1233, 'Оюунлаг багачууд цэцэрлэг', 1, 8, '2', 'Н', '9', '9', '', '170', '94', '170', '94', '', '', '', '', '27', '23', '1', '1', '1', '', '13', '11', '9', '9', '3', 2, NULL, NULL, NULL, NULL, NULL),
(1234, 'Оюунлаг жаалууд цэцэрлэг', 1, 8, '2', 'Н', '6', '6', '', '147', '83', '147', '83', '', '', '', '', '14', '14', '1', '1', '', '', '6', '6', '6', '6', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1235, 'Сувдхан цэцэрлэг', 1, 8, '2', 'Н', '3', '3', '', '74', '38', '74', '38', '', '', '1', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1236, 'Титэм ордны найзууд цэцэрлэг', 1, 8, '2', 'Н', '4', '4', '', '59', '31', '59', '31', '', '', '1', '1', '12', '12', '1', '1', '', '', '4', '4', '4', '4', '3', 3, NULL, NULL, NULL, NULL, NULL),
(1237, 'Тугалхан цэцэрлэг', 1, 8, '2', 'Н', '3', '3', '', '68', '35', '68', '35', '', '', '', '', '7', '7', '1', '1', '', '', '3', '3', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1238, 'Төгсбаясгалангийн гэгээ цэцэрлэг', 1, 8, '2', 'Н', '3', '3', '', '79', '45', '79', '45', '', '', '', '', '9', '9', '1', '1', '', '', '3', '3', '3', '3', '2', 2, NULL, NULL, NULL, NULL, NULL),
(1239, 'Хүүхдийн ертөнц цэцэрлэг', 1, 8, '2', 'Н', '2', '2', '', '54', '28', '54', '28', '', '', '', '', '5', '5', '1', '1', '', '', '2', '2', '1', '1', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1240, 'Цэцэгхэн цэцэрлэг', 1, 8, '2', 'Н', '2', '2', '', '62', '27', '62', '27', '', '', '', '', '6', '6', '1', '1', '', '', '2', '2', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1241, 'Чогжоохон цэцэрлэг', 1, 8, '2', 'Н', '3', '3', '', '39', '16', '39', '16', '', '', '', '', '6', '6', '1', '1', '', '', '3', '3', '1', '1', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1242, 'Шидэт хаан улс цэцэрлэг', 1, 8, '2', 'Н', '4', '4', '', '63', '25', '63', '25', '', '', '', '', '12', '11', '1', '1', '', '', '4', '4', '3', '3', '4', 3, NULL, NULL, NULL, NULL, NULL),
(1243, 'Шинэ идэр цэцэрлэг', 1, 8, '2', 'Н', '2', '2', '', '94', '30', '94', '30', '', '', '', '', '4', '4', '1', '1', '', '', '2', '2', '1', '1', '', 0, NULL, NULL, NULL, NULL, NULL),
(1244, 'Шинэ төгөл цэцэрлэг', 1, 8, '2', 'Н', '4', '4', '', '51', '24', '51', '24', '', '', '', '', '12', '11', '1', '1', '', '', '4', '4', '3', '3', '4', 3, NULL, NULL, NULL, NULL, NULL),
(1245, 'Шүүдэр цэцэрлэг', 1, 8, '2', 'Н', '2', '2', '', '33', '16', '33', '16', '', '', '', '', '9', '8', '1', '1', '1', '1', '2', '2', '2', '2', '3', 2, NULL, NULL, NULL, NULL, NULL),
(1246, 'Эко гэр цэцэрлэг', 1, 8, '2', 'Н', '8', '8', '', '232', '118', '232', '118', '', '', '', '', '28', '24', '2', '2', '2', '2', '6', '5', '10', '9', '8', 6, NULL, NULL, NULL, NULL, NULL),
(1247, 'Энхрийхэн үрс цэцэрлэг', 1, 8, '2', 'Н', '3', '3', '', '67', '28', '67', '28', '', '', '', '', '7', '6', '1', '1', '', '', '3', '3', '1', '1', '2', 1, NULL, NULL, NULL, NULL, NULL),
(1248, 'Эрхий мэргэн цэцэрлэг', 1, 8, '2', 'Н', '22', '22', '', '554', '281', '554', '281', '', '', '', '', '68', '67', '1', '1', '4', '4', '22', '22', '26', '26', '15', 14, NULL, NULL, NULL, NULL, NULL),
(1249, 'Үнсгэлжин ба долоон одой цэцэрлэг', 1, 8, '2', 'Н', '6', '6', '', '219', '104', '219', '104', '', '', '', '', '19', '19', '1', '1', '1', '1', '6', '6', '5', '5', '6', 6, NULL, NULL, NULL, NULL, NULL),
(1250, 'Бумбаахай', 1, 8, '2', 'Н', '3', '3', '', '62', '25', '62', '25', '', '', '1', '', '6', '6', '', '', '', '', '1', '1', '2', '2', '3', 3, NULL, NULL, NULL, NULL, NULL),
(1251, 'Зайсан гэрэлт ордон', 1, 8, '2', 'Н', '4', '4', '', '81', '34', '81', '34', '', '', '', '', '14', '13', '1', '1', '', '', '4', '4', '4', '4', '5', 4, NULL, NULL, NULL, NULL, NULL),
(1252, 'Эрдэнэсийн авдар', 1, 8, '2', 'Н', '4', '4', '', '58', '28', '58', '28', '', '', '1', '', '5', '5', '1', '1', '', '', '2', '2', '1', '1', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1253, 'Ивээлийн найзууд', 1, 8, '2', 'Н', '7', '7', '', '133', '75', '133', '75', '', '', '', '', '24', '22', '1', '1', '1', '1', '9', '8', '7', '7', '6', 5, NULL, NULL, NULL, NULL, NULL),
(1254, 'Монголдой', 1, 8, '2', 'Н', '5', '5', '', '145', '68', '145', '68', '', '', '1', '', '16', '16', '1', '1', '', '', '5', '5', '5', '5', '5', 5, NULL, NULL, NULL, NULL, NULL),
(1255, 'Сэргэлэн найзууд', 1, 8, '2', 'Н', '3', '3', '', '82', '35', '82', '35', '', '', '', '', '8', '8', '1', '1', '', '', '3', '3', '3', '3', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1256, 'Бяцхан ход ход', 1, 8, '2', 'Н', '5', '5', '', '106', '57', '106', '57', '', '', '', '', '14', '14', '1', '1', '', '', '5', '5', '5', '5', '3', 3, NULL, NULL, NULL, NULL, NULL),
(1257, 'Бяцхан монгол дөрвөн улирлын цэцэрлэг', 1, 8, '2', 'Н', '4', '4', '', '127', '59', '127', '59', '', '', '', '', '21', '20', '1', '1', '', '', '5', '4', '5', '5', '10', 10, NULL, NULL, NULL, NULL, NULL),
(1258, 'Жогжоохой цэцэрлэг', 1, 8, '2', 'Н', '2', '2', '', '66', '34', '66', '34', '', '', '1', '', '5', '5', '1', '1', '', '', '1', '1', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1259, 'Элит ХУД цэцэрлэг', 1, 8, '2', 'Н', '6', '6', '', '148', '75', '148', '75', '', '', '', '', '15', '15', '1', '1', '', '', '6', '6', '6', '6', '2', 2, NULL, NULL, NULL, NULL, NULL),
(1260, 'Нүхт лакшири цэцэрлэг', 1, 8, '2', 'Н', '6', '6', '', '131', '70', '131', '70', '', '', '1', '', '7', '7', '', '', '', '', '6', '6', '1', '1', '', 0, NULL, NULL, NULL, NULL, NULL),
(1261, 'Сувдан сондор цэцэрлэг', 1, 8, '2', 'Н', '8', '8', '', '161', '78', '161', '78', '', '', '', '', '25', '23', '1', '1', '1', '1', '10', '9', '9', '9', '4', 3, NULL, NULL, NULL, NULL, NULL),
(1262, 'Бумбардай хүү цэцэрлэг', 1, 8, '2', 'Н', '3', '3', '', '100', '46', '100', '46', '', '', '1', '', '8', '8', '1', '1', '', '', '3', '3', '3', '3', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1263, 'Жаргалтай жим цэцэрлэг', 1, 8, '2', 'Н', '8', '8', '', '341', '157', '341', '157', '', '', '2', '', '24', '23', '1', '1', '1', '1', '8', '8', '8', '8', '6', 5, NULL, NULL, NULL, NULL, NULL),
(1264, 'Нандин багачууд цэцэрлэг', 1, 8, '2', 'Н', '5', '5', '', '132', '75', '132', '75', '', '', '', '', '15', '15', '1', '1', '', '', '6', '6', '5', '5', '3', 3, NULL, NULL, NULL, NULL, NULL),
(1265, 'Анандболд баяр баясал цэцэрлэг', 1, 8, '2', 'Н', '7', '7', '', '150', '76', '150', '76', '', '', '', '', '19', '18', '1', '1', '', '', '6', '5', '7', '7', '5', 5, NULL, NULL, NULL, NULL, NULL),
(1266, 'Гарден багачууд цэцэрлэг', 1, 8, '2', 'Н', '2', '2', '', '26', '9', '26', '9', '', '', '', '', '6', '6', '1', '1', '', '', '2', '2', '1', '1', '2', 2, NULL, NULL, NULL, NULL, NULL),
(1267, 'Миний гэрийн хүүхдүүд цэцэрлэг', 1, 8, '2', 'Н', '4', '4', '', '38', '20', '38', '20', '', '', '', '', '11', '11', '1', '1', '', '', '4', '4', '4', '4', '2', 2, NULL, NULL, NULL, NULL, NULL),
(1268, 'Маргаашийн одод цэцэрлэг', 1, 8, '2', 'Н', '5', '5', '', '140', '66', '140', '66', '', '', '', '', '14', '13', '1', '1', '', '', '5', '5', '4', '4', '4', 3, NULL, NULL, NULL, NULL, NULL),
(1269, 'Зайсангийн сод хүүхдүүд цэцэрлэг', 1, 8, '2', 'Н', '3', '3', '', '77', '34', '77', '34', '', '', '', '', '7', '6', '', '', '', '', '3', '3', '3', '3', '1', 0, NULL, NULL, NULL, NULL, NULL),
(1270, 'Сүзүран цэцэрлэг', 1, 8, '2', 'Н', '4', '4', '', '67', '38', '67', '38', '', '', '', '', '14', '12', '1', '1', '', '', '4', '3', '4', '4', '5', 4, NULL, NULL, NULL, NULL, NULL),
(1271, 'Үнэт бяцхан үрс цэцэрлэг', 1, 8, '2', 'Н', '4', '4', '', '94', '45', '94', '45', '', '', '', '', '11', '11', '1', '1', '', '', '4', '4', '4', '4', '2', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `statistic` (`id`, `name`, `city`, `district`, `type`, `loc`, `buleg`, `buleg_prim`, `buleg_sla`, `child_total`, `child_girl`, `child_prim_total`, `child_prim_girl`, `child_alter_total`, `child_alter_girl`, `child_herder`, `child_disabled`, `employees_total`, `employees_female`, `director`, `director_female`, `manager`, `manager_female`, `teacher_total`, `teacher_female`, `subteacher_total`, `subteacher_female`, `others_total`, `others_female`, `address`, `contact`, `phone`, `director_name`, `email`) VALUES
(1272, 'Этүгэн цэцэрлэг', 1, 8, '2', 'Н', '2', '2', '', '24', '9', '24', '9', '', '', '1', '', '5', '5', '', '', '', '', '2', '2', '', '', '3', 3, NULL, NULL, NULL, NULL, NULL),
(1273, 'Азтай зулзаганууд цэцэрлэг', 1, 8, '2', 'Н', '2', '2', '', '34', '15', '34', '15', '', '', '', '', '5', '5', '', '', '', '', '2', '2', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1274, 'Бяцхан жэт цэцэрлэг', 1, 8, '2', 'Н', '4', '4', '', '69', '34', '69', '34', '', '', '', '', '9', '9', '1', '1', '', '', '4', '4', '4', '4', '', 0, NULL, NULL, NULL, NULL, NULL),
(1275, 'Хүмүүн өргөө цэцэрлэг', 1, 8, '2', 'Н', '2', '2', '', '52', '34', '52', '34', '', '', '', '', '4', '4', '', '', '', '', '2', '2', '2', '2', '', 0, NULL, NULL, NULL, NULL, NULL),
(1276, 'Бөндөөлхөн 1 цэцэрлэг', 1, 8, '2', 'Н', '2', '2', '', '64', '37', '64', '37', '', '', '1', '', '6', '5', '', '', '', '', '2', '2', '2', '2', '2', 1, NULL, NULL, NULL, NULL, NULL),
(1277, 'Багачууд хүслийн ертөнц цэцэрлэг', 1, 8, '2', 'Н', '2', '2', '', '50', '27', '50', '27', '', '', '', '', '7', '6', '1', '1', '', '', '2', '2', '2', '2', '2', 1, NULL, NULL, NULL, NULL, NULL),
(1278, 'Улаанбаатар дах Бритиш сургуулийн дэргэдэх цэцэрлэг', 1, 8, '2', 'Н', '2', '2', '', '23', '14', '23', '14', '', '', '', '', '4', '4', '', '', '', '', '1', '1', '3', '3', '', 0, NULL, NULL, NULL, NULL, NULL),
(1279, 'Кью кидс прискүүл цэцэрлэг', 1, 8, '2', 'Н', '3', '3', '', '43', '30', '43', '30', '', '', '', '', '10', '10', '1', '1', '', '', '3', '3', '3', '3', '3', 3, NULL, NULL, NULL, NULL, NULL),
(1280, 'Фэрэндлихоум цэцэрлэг', 1, 8, '2', 'Н', '2', '2', '', '35', '17', '35', '17', '', '', '', '', '6', '5', '1', '1', '', '', '2', '2', '2', '2', '1', 0, NULL, NULL, NULL, NULL, NULL),
(1281, 'Цэлмэг зуузуугийн найз цэцэрлэг', 1, 8, '2', 'Н', '4', '4', '', '58', '25', '58', '25', '', '', '', '', '17', '17', '1', '1', '', '', '7', '7', '7', '7', '2', 2, NULL, NULL, NULL, NULL, NULL),
(1282, 'Пингү кидс цэцэрлэг', 1, 8, '2', 'Н', '4', '4', '', '51', '25', '51', '25', '', '', '', '', '10', '10', '1', '1', '', '', '4', '4', '3', '3', '2', 2, NULL, NULL, NULL, NULL, NULL),
(1283, 'Томё сургууль цэцэрлэгийн цогцолбор', 1, 8, '2', 'Н', '4', '4', '', '80', '41', '80', '41', '', '', '', '', '12', '12', '1', '1', '1', '1', '4', '4', '4', '4', '2', 2, NULL, NULL, NULL, NULL, NULL),
(1284, 'Монгол Улс дахь Франц цэцэрлэг', 1, 8, '2', 'Н', '3', '3', '', '26', '13', '26', '13', '', '', '', '', '0', '0', '', '', '', '', '', '', '', '', '', 0, NULL, NULL, NULL, NULL, NULL),
(1285, 'Ханхүү цэцэрлэг', 1, 8, '2', 'Н', '0', '', '', '0', '0', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', '', '', 0, NULL, NULL, NULL, NULL, NULL),
(1286, 'Гэгээн ертөнц 3', 1, 8, '2', 'Н', '2', '2', '', '90', '44', '90', '44', '', '', '2', '', '7', '7', '1', '1', '', '', '2', '2', '2', '2', '2', 2, NULL, NULL, NULL, NULL, NULL),
(1287, '4-р цэцэрлэг', 1, 9, '1', 'Н', '12', '12', '', '338', '184', '338', '184', '', '', '', '6', '49', '41', '1', '1', '1', '1', '15', '14', '11', '11', '21', 14, NULL, NULL, NULL, NULL, NULL),
(1288, '5-р цэцэрлэг', 1, 9, '1', 'Н', '9', '9', '', '199', '92', '199', '92', '', '', '', '', '34', '30', '1', '1', '1', '1', '12', '12', '8', '8', '12', 8, NULL, NULL, NULL, NULL, NULL),
(1289, '9-р цэцэрлэг', 1, 9, '1', 'Н', '10', '10', '', '246', '122', '246', '122', '', '', '1', '2', '37', '33', '1', '1', '1', '1', '12', '12', '10', '10', '13', 9, NULL, NULL, NULL, NULL, NULL),
(1290, '18-р цэцэрлэг', 1, 9, '1', 'Н', '10', '10', '', '331', '141', '331', '141', '', '', '1', '4', '40', '35', '1', '1', '1', '1', '12', '12', '9', '9', '17', 12, NULL, NULL, NULL, NULL, NULL),
(1291, '19-р цэцэрлэг', 1, 9, '1', 'Н', '12', '12', '', '408', '201', '408', '201', '', '', '', '3', '49', '41', '1', '1', '1', '1', '14', '14', '12', '12', '21', 13, NULL, NULL, NULL, NULL, NULL),
(1292, '31-р цэцэрлэг', 1, 9, '1', 'Н', '6', '6', '', '145', '69', '145', '69', '', '', '1', '1', '29', '23', '1', '1', '1', '1', '8', '7', '6', '6', '13', 8, NULL, NULL, NULL, NULL, NULL),
(1293, '33-р цэцэрлэг', 1, 9, '1', 'Н', '8', '8', '', '169', '86', '169', '86', '', '', '', '', '25', '22', '1', '1', '1', '1', '8', '7', '6', '6', '9', 7, NULL, NULL, NULL, NULL, NULL),
(1294, '37-р цэцэрлэг', 1, 9, '1', 'Н', '10', '10', '', '287', '148', '287', '148', '', '', '2', '', '35', '29', '1', '1', '1', '1', '11', '10', '9', '9', '13', 8, NULL, NULL, NULL, NULL, NULL),
(1295, '39-р цэцэрлэг', 1, 9, '1', 'Н', '10', '10', '', '145', '66', '145', '66', '', '', '', '', '36', '31', '1', '1', '1', '1', '11', '11', '9', '9', '14', 9, NULL, NULL, NULL, NULL, NULL),
(1296, '43-р цэцэрлэг', 1, 9, '1', 'Н', '10', '10', '', '218', '110', '218', '110', '', '', '', '', '40', '34', '1', '1', '1', '1', '12', '11', '10', '10', '16', 11, NULL, NULL, NULL, NULL, NULL),
(1297, '56-р цэцэрлэг', 1, 9, '1', 'Н', '11', '11', '', '261', '132', '261', '132', '', '', '', '', '40', '33', '1', '', '1', '1', '12', '12', '10', '10', '16', 10, NULL, NULL, NULL, NULL, NULL),
(1298, '70-р цэцэрлэг', 1, 9, '1', 'Н', '8', '8', '', '236', '113', '236', '113', '', '', '1', '', '31', '23', '1', '1', '', '', '10', '9', '8', '8', '12', 5, NULL, NULL, NULL, NULL, NULL),
(1299, '74-р цэцэрлэг', 1, 9, '1', 'Н', '6', '6', '', '236', '115', '236', '115', '', '', '', '', '33', '28', '1', '1', '1', '1', '8', '7', '9', '9', '14', 10, NULL, NULL, NULL, NULL, NULL),
(1300, '83-р цэцэрлэг', 1, 9, '1', 'Н', '20', '20', '', '588', '265', '588', '265', '', '', '3', '', '95', '86', '1', '1', '2', '2', '26', '26', '36', '36', '30', 21, NULL, NULL, NULL, NULL, NULL),
(1301, '102-р цэцэрлэг', 1, 9, '1', 'Н', '14', '14', '', '438', '227', '438', '227', '', '', '5', '', '54', '48', '1', '1', '2', '2', '16', '15', '14', '14', '21', 16, NULL, NULL, NULL, NULL, NULL),
(1302, '103-р цэцэрлэг', 1, 9, '1', 'Н', '20', '20', '', '500', '238', '500', '238', '', '', '1', '4', '69', '61', '1', '1', '2', '2', '23', '21', '20', '20', '23', 17, NULL, NULL, NULL, NULL, NULL),
(1303, '108-р цэцэрлэг', 1, 9, '1', 'Н', '0', '', '', '0', '0', '', '', '', '', '', '', '6', '3', '1', '1', '', '', '', '', '', '', '5', 2, NULL, NULL, NULL, NULL, NULL),
(1304, '124-р цэцэрлэг', 1, 9, '1', 'Н', '16', '16', '', '377', '182', '377', '182', '', '', '1', '', '57', '50', '1', '1', '2', '2', '20', '18', '16', '16', '18', 13, NULL, NULL, NULL, NULL, NULL),
(1305, '126-р цэцэрлэг', 1, 9, '1', 'Н', '7', '7', '', '168', '74', '168', '74', '', '', '3', '', '30', '26', '1', '1', '1', '1', '9', '9', '7', '7', '12', 8, NULL, NULL, NULL, NULL, NULL),
(1306, '154-р цэцэрлэг', 1, 9, '1', 'Н', '8', '8', '', '257', '122', '257', '122', '', '', '4', '', '34', '30', '1', '1', '1', '1', '9', '9', '9', '9', '14', 10, NULL, NULL, NULL, NULL, NULL),
(1307, '155-р цэцэрлэг', 1, 9, '1', 'Н', '8', '8', '', '196', '98', '196', '98', '', '', '', '', '34', '28', '1', '1', '1', '1', '9', '9', '8', '8', '15', 9, NULL, NULL, NULL, NULL, NULL),
(1308, '173-р цэцэрлэг', 1, 9, '1', 'Н', '4', '4', '', '137', '72', '137', '72', '', '', '1', '', '23', '18', '1', '1', '1', '1', '4', '4', '4', '4', '13', 8, NULL, NULL, NULL, NULL, NULL),
(1309, '174-р цэцэрлэг', 1, 9, '1', 'Н', '5', '5', '', '157', '81', '157', '81', '', '', '3', '', '23', '19', '1', '1', '1', '1', '6', '6', '5', '5', '10', 6, NULL, NULL, NULL, NULL, NULL),
(1310, '220-р цэцэрлэг', 1, 9, '1', 'Н', '5', '5', '', '139', '59', '139', '59', '', '', '2', '', '16', '16', '1', '1', '1', '1', '5', '5', '4', '4', '5', 5, NULL, NULL, NULL, NULL, NULL),
(1311, '224-р цэцэрлэг', 1, 9, '1', 'Н', '6', '6', '', '229', '114', '229', '114', '', '', '3', '', '41', '36', '1', '1', '1', '1', '10', '10', '12', '12', '17', 12, NULL, NULL, NULL, NULL, NULL),
(1312, '221-р цэцэрлэг', 1, 9, '1', 'Н', '5', '5', '', '158', '66', '158', '66', '', '', '3', '', '22', '20', '1', '1', '1', '1', '5', '5', '5', '5', '10', 8, NULL, NULL, NULL, NULL, NULL),
(1313, '222-р цэцэрлэг', 1, 9, '1', 'Н', '5', '5', '', '128', '65', '128', '65', '', '', '', '', '22', '20', '1', '1', '1', '1', '6', '6', '5', '5', '9', 7, NULL, NULL, NULL, NULL, NULL),
(1314, '245-р цэцэрлэг', 1, 9, '1', 'Н', '6', '6', '', '175', '98', '175', '98', '', '', '1', '', '28', '23', '1', '1', '1', '1', '7', '7', '6', '6', '13', 8, NULL, NULL, NULL, NULL, NULL),
(1315, '246-р цэцэрлэг', 1, 9, '1', 'Н', '6', '6', '', '172', '97', '172', '97', '', '', '3', '1', '28', '24', '1', '1', '1', '1', '7', '7', '6', '6', '13', 9, NULL, NULL, NULL, NULL, NULL),
(1316, '247-р цэцэрлэг', 1, 9, '1', 'Н', '6', '6', '', '141', '79', '141', '79', '', '', '2', '', '27', '23', '1', '1', '1', '1', '7', '7', '6', '6', '12', 8, NULL, NULL, NULL, NULL, NULL),
(1317, '258-р цэцэрлэг', 1, 9, '1', 'Н', '7', '7', '', '191', '96', '191', '96', '', '', '5', '', '29', '24', '1', '1', '1', '1', '8', '7', '6', '6', '13', 9, NULL, NULL, NULL, NULL, NULL),
(1318, '275-р цэцэрлэг', 1, 9, '1', 'Н', '7', '7', '', '208', '90', '208', '90', '', '', '3', '1', '31', '25', '1', '1', '1', '1', '9', '7', '7', '7', '13', 9, NULL, NULL, NULL, NULL, NULL),
(1319, '280-р цэцэрлэг', 1, 9, '1', 'Н', '10', '10', '', '297', '149', '297', '149', '', '', '7', '', '39', '35', '1', '1', '1', '1', '12', '12', '10', '10', '15', 11, NULL, NULL, NULL, NULL, NULL),
(1320, '292-р цэцэрлэг', 1, 9, '1', 'Н', '8', '8', '', '216', '116', '216', '116', '', '', '4', '', '32', '25', '1', '1', '1', '1', '10', '8', '8', '8', '12', 7, NULL, NULL, NULL, NULL, NULL),
(1321, '291-р цэцэрлэг', 1, 9, '1', 'Н', '8', '8', '', '244', '122', '244', '122', '', '', '1', '1', '32', '27', '1', '1', '1', '1', '9', '8', '8', '8', '13', 9, NULL, NULL, NULL, NULL, NULL),
(1322, '293-р цэцэрлэг', 1, 9, '1', 'Н', '6', '6', '', '176', '80', '176', '80', '', '', '2', '', '26', '22', '1', '1', '1', '1', '7', '7', '6', '6', '11', 7, NULL, NULL, NULL, NULL, NULL),
(1323, '277-р цэцэрлэг ', 1, 9, '1', 'Н', '5', '5', '', '131', '53', '131', '53', '', '', '1', '', '21', '20', '1', '1', '1', '1', '6', '6', '5', '5', '8', 7, NULL, NULL, NULL, NULL, NULL),
(1324, '298-р цэцэрлэг', 1, 9, '1', 'Н', '6', '6', '', '183', '86', '183', '86', '', '', '6', '', '25', '20', '1', '1', '1', '1', '6', '6', '6', '6', '11', 6, NULL, NULL, NULL, NULL, NULL),
(1325, 'Пороро найзууд цэцэрлэг', 1, 9, '2', 'Н', '2', '2', '', '20', '9', '20', '9', '', '', '', '1', '5', '5', '1', '1', '', '', '1', '1', '1', '1', '2', 2, NULL, NULL, NULL, NULL, NULL),
(1326, 'Ачлал цэцэрлэг', 1, 9, '2', 'Н', '3', '3', '', '51', '28', '51', '28', '', '', '1', '', '5', '5', '1', '1', '', '', '1', '1', '2', '2', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1327, 'Басархан цэцэрлэг', 1, 9, '2', 'Н', '5', '5', '', '82', '54', '82', '54', '', '', '', '1', '15', '15', '1', '1', '1', '1', '6', '6', '3', '3', '4', 4, NULL, NULL, NULL, NULL, NULL),
(1328, 'Далай багачууд цэцэрлэг', 1, 9, '2', 'Н', '4', '4', '', '104', '45', '104', '45', '', '', '3', '', '10', '9', '1', '1', '', '', '3', '3', '4', '4', '2', 1, NULL, NULL, NULL, NULL, NULL),
(1329, 'Бяцхан алаг үрс цэцэрлэг', 1, 9, '2', 'Н', '5', '5', '', '76', '36', '76', '36', '', '', '', '', '15', '12', '', '', '', '', '4', '4', '3', '3', '8', 5, NULL, NULL, NULL, NULL, NULL),
(1330, 'Зээмаа цэцэрлэг', 1, 9, '2', 'Н', '4', '4', '', '95', '51', '95', '51', '', '', '1', '', '10', '10', '1', '1', '', '', '4', '4', '4', '4', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1331, 'Их ханд цэцэрлэг', 1, 9, '2', 'Н', '3', '3', '', '98', '49', '98', '49', '', '', '1', '', '8', '8', '1', '1', '', '', '3', '3', '2', '2', '2', 2, NULL, NULL, NULL, NULL, NULL),
(1332, 'Маамуу нааш ир цэцэрлэг', 1, 9, '2', 'Н', '5', '5', '', '142', '78', '142', '78', '', '', '', '', '13', '13', '2', '2', '', '', '5', '5', '3', '3', '3', 3, NULL, NULL, NULL, NULL, NULL),
(1333, 'Нандин гурван эрдэнэ цэцэрлэг', 1, 9, '2', 'Н', '2', '2', '', '79', '32', '79', '32', '', '', '2', '', '6', '5', '1', '1', '', '', '1', '1', '2', '2', '2', 1, NULL, NULL, NULL, NULL, NULL),
(1334, 'Соронз цэцэрлэг', 1, 9, '2', 'Н', '1', '1', '', '36', '18', '36', '18', '', '', '', '3', '5', '5', '1', '1', '', '', '2', '2', '1', '1', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1335, 'Хишиг ундрам цэцэрлэг', 1, 9, '2', 'Н', '3', '3', '', '77', '35', '77', '35', '', '', '7', '', '6', '5', '1', '1', '', '', '3', '3', '', '', '2', 1, NULL, NULL, NULL, NULL, NULL),
(1336, 'Хундан цагаан хурга цэцэрлэг', 1, 9, '2', 'Н', '5', '5', '', '111', '46', '111', '46', '', '', '2', '', '11', '11', '1', '1', '1', '1', '4', '4', '3', '3', '2', 2, NULL, NULL, NULL, NULL, NULL),
(1337, 'Шүрэн дэгд цэцэрлэг', 1, 9, '2', 'Н', '4', '4', '', '105', '55', '105', '55', '', '', '', '', '11', '10', '2', '1', '', '', '4', '4', '4', '4', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1338, 'Алунгоо Ашид', 1, 9, '2', 'Н', '2', '2', '', '35', '15', '35', '15', '', '', '', '', '6', '5', '', '', '', '', '2', '2', '2', '2', '2', 1, NULL, NULL, NULL, NULL, NULL),
(1339, 'Оюунлаг үрс цэцэрлэг', 1, 9, '2', 'Н', '1', '1', '', '35', '17', '35', '17', '', '', '', '', '4', '4', '1', '1', '', '', '1', '1', '1', '1', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1340, '44-р цэцэрлэг', 1, 2, '1', 'Н', '7', '7', '', '209', '106', '209', '106', '', '', '10', '1', '33', '27', '1', '1', '1', '1', '9', '8', '7', '7', '15', 10, NULL, NULL, NULL, NULL, NULL),
(1341, '207-р цэцэрлэг', 1, 2, '1', 'Н', '4', '4', '', '116', '64', '116', '64', '', '', '4', '', '22', '19', '1', '1', '1', '1', '5', '5', '4', '4', '11', 8, NULL, NULL, NULL, NULL, NULL),
(1342, '1-р цэцэрлэг', 13, 0, '1', 'А', '12', '12', '', '394', '202', '394', '202', '', '', '6', '', '47', '41', '1', '1', '1', '1', '13', '13', '12', '12', '20', 14, NULL, NULL, NULL, NULL, NULL),
(1343, '2-р цэцэрлэг', 13, 0, '1', 'А', '6', '6', '', '170', '96', '170', '96', '', '', '3', '1', '28', '23', '1', '1', '1', '1', '7', '7', '6', '6', '13', 8, NULL, NULL, NULL, NULL, NULL),
(1344, '3-р цэцэрлэг', 13, 0, '1', 'С', '6', '6', '', '151', '66', '151', '66', '', '', '24', '', '27', '23', '1', '1', '1', '1', '7', '7', '6', '6', '12', 8, NULL, NULL, NULL, NULL, NULL),
(1345, '4-р цэцэрлэг', 13, 0, '1', 'А', '18', '18', '', '633', '334', '633', '334', '', '', '16', '3', '61', '55', '1', '1', '1', '1', '21', '21', '18', '18', '20', 14, NULL, NULL, NULL, NULL, NULL),
(1346, '5-р цэцэрлэг', 13, 0, '1', 'А', '6', '6', '', '188', '92', '188', '92', '', '', '1', '', '28', '23', '1', '1', '1', '1', '7', '7', '6', '6', '13', 8, NULL, NULL, NULL, NULL, NULL),
(1347, '6-р цэцэрлэг', 13, 0, '1', 'А', '6', '6', '', '165', '80', '165', '80', '', '', '3', '2', '28', '23', '1', '1', '1', '1', '7', '7', '6', '6', '13', 8, NULL, NULL, NULL, NULL, NULL),
(1348, '7-р цэцэрлэг', 13, 0, '1', 'А', '12', '12', '', '399', '198', '399', '198', '', '', '6', '5', '50', '44', '1', '1', '1', '1', '14', '13', '12', '12', '22', 17, NULL, NULL, NULL, NULL, NULL),
(1349, '8-р цэцэрлэг', 13, 0, '1', 'А', '6', '6', '', '190', '89', '190', '89', '', '', '1', '1', '30', '25', '1', '1', '1', '1', '7', '7', '6', '6', '15', 10, NULL, NULL, NULL, NULL, NULL),
(1350, '9-р цэцэрлэг', 13, 0, '1', 'А', '6', '6', '', '174', '94', '174', '94', '', '', '1', '', '30', '26', '1', '1', '1', '1', '7', '7', '6', '6', '15', 11, NULL, NULL, NULL, NULL, NULL),
(1351, '10-р цэцэрлэг', 13, 0, '1', 'А', '6', '6', '', '167', '91', '167', '91', '', '', '1', '', '30', '25', '1', '1', '1', '1', '7', '7', '6', '6', '15', 10, NULL, NULL, NULL, NULL, NULL),
(1352, '11-р цэцэрлэг', 13, 0, '1', 'А', '12', '12', '', '418', '208', '418', '208', '', '', '26', '5', '42', '37', '1', '1', '1', '1', '13', '13', '12', '12', '15', 10, NULL, NULL, NULL, NULL, NULL),
(1353, '15-р цэцэрлэг', 13, 0, '1', 'А', '12', '12', '', '367', '184', '367', '184', '', '', '3', '2', '48', '43', '1', '1', '1', '1', '13', '13', '12', '12', '21', 16, NULL, NULL, NULL, NULL, NULL),
(1354, '16-р цэцэрлэг', 13, 0, '1', 'А', '6', '6', '', '194', '83', '194', '83', '', '', '1', '1', '31', '26', '1', '1', '1', '1', '7', '7', '7', '7', '15', 10, NULL, NULL, NULL, NULL, NULL),
(1355, '17-р цэцэрлэг', 13, 0, '1', 'А', '12', '12', '', '339', '181', '339', '181', '', '', '4', '1', '42', '37', '1', '1', '1', '1', '13', '13', '12', '12', '15', 10, NULL, NULL, NULL, NULL, NULL),
(1356, '18-р цэцэрлэг', 13, 0, '1', 'А', '8', '8', '', '255', '116', '255', '116', '', '', '11', '', '33', '28', '1', '1', '1', '1', '9', '8', '9', '9', '13', 9, NULL, NULL, NULL, NULL, NULL),
(1357, '19-р цэцэрлэг', 13, 0, '1', 'А', '6', '6', '', '173', '73', '173', '73', '', '', '3', '1', '27', '22', '1', '1', '1', '1', '7', '7', '5', '5', '13', 8, NULL, NULL, NULL, NULL, NULL),
(1358, '20-р цэцэрлэг', 13, 0, '1', 'С', '10', '10', '', '301', '153', '301', '153', '', '', '13', '1', '40', '33', '1', '1', '1', '1', '11', '11', '10', '10', '17', 10, NULL, NULL, NULL, NULL, NULL),
(1359, '21-р цэцэрлэг', 13, 0, '1', 'А', '12', '12', '', '343', '164', '343', '164', '', '', '5', '4', '42', '37', '1', '1', '1', '1', '13', '13', '12', '12', '15', 10, NULL, NULL, NULL, NULL, NULL),
(1360, '22-р цэцэрлэг', 13, 0, '1', 'А', '8', '8', '', '281', '139', '281', '139', '', '', '14', '1', '38', '28', '1', '1', '1', '1', '9', '8', '9', '9', '18', 9, NULL, NULL, NULL, NULL, NULL),
(1361, '23-р цэцэрлэг', 13, 0, '1', 'А', '11', '11', '', '375', '178', '375', '178', '', '', '13', '1', '38', '33', '1', '1', '', '', '12', '12', '11', '11', '14', 9, NULL, NULL, NULL, NULL, NULL),
(1362, '24-р цэцэрлэг', 13, 0, '1', 'А', '8', '8', '', '220', '94', '220', '94', '', '', '13', '7', '31', '27', '1', '1', '1', '1', '9', '9', '8', '8', '12', 8, NULL, NULL, NULL, NULL, NULL),
(1363, 'Бялзуухай цэцэрлэг', 13, 0, '1', 'А', '6', '6', '', '192', '101', '192', '101', '', '', '2', '', '30', '25', '1', '1', '1', '1', '7', '6', '6', '6', '15', 11, NULL, NULL, NULL, NULL, NULL),
(1364, 'Дэгдээхий цэцэрлэг', 13, 0, '1', 'А', '12', '12', '', '379', '183', '379', '183', '', '', '3', '2', '48', '43', '1', '1', '1', '1', '13', '13', '12', '12', '21', 16, NULL, NULL, NULL, NULL, NULL),
(1365, 'Одод цэцэрлэг', 13, 0, '1', 'А', '6', '6', '', '195', '102', '195', '102', '', '', '1', '', '29', '25', '1', '1', '1', '1', '7', '7', '6', '6', '14', 10, NULL, NULL, NULL, NULL, NULL),
(1366, 'Баян-Өндөр сумын 12-р цэцэрлэг', 13, 0, '1', 'А', '11', '11', '', '278', '140', '278', '140', '', '', '1', '', '41', '35', '1', '1', '1', '1', '13', '13', '11', '11', '15', 9, NULL, NULL, NULL, NULL, NULL),
(1367, 'Оюу цэцэрлэг', 13, 0, '1', 'А', '12', '12', '', '319', '153', '319', '153', '', '', '4', '', '41', '35', '1', '1', '1', '1', '12', '12', '12', '12', '15', 9, NULL, NULL, NULL, NULL, NULL),
(1368, 'Унага цэцэрлэг', 13, 0, '1', 'А', '11', '11', '', '335', '169', '335', '169', '', '', '3', '4', '39', '34', '1', '1', '1', '1', '12', '12', '11', '11', '14', 9, NULL, NULL, NULL, NULL, NULL),
(1369, 'Эрх бүжинхэн цэцэрлэг', 13, 0, '1', 'А', '3', '3', '', '72', '37', '72', '37', '', '', '3', '', '20', '15', '1', '1', '1', '1', '3', '3', '3', '3', '12', 7, NULL, NULL, NULL, NULL, NULL),
(1370, '26-р цэцэрлэг', 13, 0, '1', 'А', '12', '12', '', '295', '159', '295', '159', '', '', '9', '2', '41', '36', '1', '1', '1', '1', '13', '13', '11', '11', '15', 10, NULL, NULL, NULL, NULL, NULL),
(1371, '27-р цэцэрлэг', 13, 0, '1', 'А', '6', '6', '', '147', '64', '147', '64', '', '', '5', '16', '30', '25', '1', '1', '1', '1', '7', '7', '8', '8', '13', 8, NULL, NULL, NULL, NULL, NULL),
(1372, 'Баян-Өндөр сумын 28-р цэцэрлэг', 13, 0, '1', 'А', '8', '8', '', '183', '87', '183', '87', '', '', '8', '', '36', '28', '1', '1', '1', '1', '9', '9', '8', '8', '17', 9, NULL, NULL, NULL, NULL, NULL),
(1373, 'Бяцхан одод цэцэрлэг', 13, 0, '2', 'А', '6', '6', '', '90', '43', '90', '43', '', '', '', '', '17', '16', '1', '1', '1', '1', '6', '6', '6', '6', '3', 2, NULL, NULL, NULL, NULL, NULL),
(1374, 'Гоё цэцэрлэг', 13, 0, '2', 'А', '2', '2', '', '20', '8', '20', '8', '', '', '', '', '12', '9', '1', '1', '', '', '1', '1', '2', '2', '8', 5, NULL, NULL, NULL, NULL, NULL),
(1375, 'Миний гэр цэцэрлэг', 13, 0, '2', 'А', '4', '4', '', '109', '49', '109', '49', '', '', '7', '', '18', '15', '1', '1', '', '', '4', '4', '4', '4', '9', 6, NULL, NULL, NULL, NULL, NULL),
(1376, 'Солонго цэцэрлэг', 13, 0, '2', 'А', '4', '4', '', '70', '31', '70', '31', '', '', '3', '', '10', '8', '1', '1', '', '', '1', '1', '4', '4', '4', 2, NULL, NULL, NULL, NULL, NULL),
(1377, 'Тэмүүлэл цэцэрлэг', 13, 0, '2', 'А', '7', '7', '', '76', '37', '76', '37', '', '', '', '', '23', '21', '1', '1', '1', '1', '8', '8', '7', '7', '6', 4, NULL, NULL, NULL, NULL, NULL),
(1378, 'Хөөрхөн гүнж цэцэрлэг', 13, 0, '2', 'А', '1', '1', '', '14', '8', '14', '8', '', '', '', '', '16', '12', '1', '1', '', '', '4', '4', '4', '4', '7', 3, NULL, NULL, NULL, NULL, NULL),
(1379, 'Энхжин цэцэрлэг', 13, 0, '2', 'А', '1', '1', '', '8', '3', '8', '3', '', '', '', '', '5', '5', '1', '1', '', '', '2', '2', '1', '1', '1', 1, NULL, NULL, NULL, NULL, NULL),
(1380, 'Яргуйт-Эко цэцэрлэг', 13, 0, '2', 'А', '5', '5', '', '110', '44', '110', '44', '', '', '4', '', '11', '10', '1', '1', '1', '1', '5', '5', '', '', '4', 3, NULL, NULL, NULL, NULL, NULL),
(1381, '1-р цэцэрлэг', 7, 0, '1', 'А', '9', '8', '1', '304', '158', '276', '145', '28', '13', '25', '1', '33', '29', '1', '1', '1', '1', '9', '9', '8', '8', '14', 10, NULL, NULL, NULL, NULL, NULL),
(1382, '2-р цэцэрлэг', 7, 0, '1', 'С', '7', '6', '1', '222', '118', '188', '104', '34', '14', '40', '1', '24', '20', '1', '1', '1', '1', '7', '6', '6', '6', '9', 6, NULL, NULL, NULL, NULL, NULL),
(1383, '3-р цэцэрлэг', 7, 0, '1', 'С', '9', '9', '', '285', '129', '273', '125', '12', '4', '15', '4', '34', '31', '1', '1', '1', '1', '12', '12', '9', '9', '11', 8, NULL, NULL, NULL, NULL, NULL),
(1384, '4-р цэцэрлэг', 7, 0, '1', 'С', '4', '3', '1', '87', '37', '72', '33', '15', '4', '12', '2', '14', '12', '1', '1', '', '', '3', '3', '3', '3', '7', 5, NULL, NULL, NULL, NULL, NULL),
(1385, '5-р цэцэрлэг', 7, 0, '1', 'А', '10', '9', '1', '374', '180', '346', '166', '28', '14', '49', '4', '32', '27', '1', '1', '1', '1', '11', '10', '9', '9', '10', 6, NULL, NULL, NULL, NULL, NULL),
(1386, '6-р цэцэрлэг', 7, 0, '1', 'С', '6', '5', '1', '241', '114', '224', '107', '17', '7', '37', '', '24', '20', '1', '1', '1', '1', '7', '6', '5', '5', '10', 7, NULL, NULL, NULL, NULL, NULL),
(1387, 'Алтанхаргана-Дорноговь', 23, 0, '1', 'С', '9', '9', '', '278', '127', '278', '127', '', '', '', '', '30', '28', '1', '1', '1', '1', '9', '9', '9', '9', '10', 8, NULL, NULL, NULL, NULL, NULL),
(1388, 'Бамбар-Төв', 23, 0, '1', 'С', '1', '1', '', '25', '15', '25', '15', '', '', '2', '', '5', '4', '1', '1', '', '', '1', '1', '1', '1', '2', 1, NULL, NULL, NULL, NULL, NULL),
(1389, 'Бамбарууш-УБ', 23, 0, '1', 'Н', '5', '5', '', '205', '113', '205', '113', '', '', '3', '', '16', '15', '1', '1', '', '', '5', '5', '5', '5', '5', 4, NULL, NULL, NULL, NULL, NULL),
(1390, 'Болор-Дорноговь', 23, 0, '1', 'С', '2', '2', '', '52', '23', '52', '23', '', '', '', '', '7', '7', '1', '1', '', '', '2', '2', '2', '2', '2', 2, NULL, NULL, NULL, NULL, NULL),
(1391, 'Ботгохон-Дорноговь', 23, 0, '1', 'С', '4', '4', '', '104', '47', '104', '47', '', '', '12', '', '13', '12', '1', '1', '', '', '4', '4', '4', '4', '4', 3, NULL, NULL, NULL, NULL, NULL),
(1392, 'Бялзуухай-УБ БХД', 23, 0, '1', 'Н', '2', '2', '', '47', '21', '47', '21', '', '', '1', '', '7', '7', '1', '1', '', '', '2', '2', '2', '2', '2', 2, NULL, NULL, NULL, NULL, NULL),
(1393, 'Бүжинхэн -Сэлэнгэ', 23, 0, '1', 'А', '7', '7', '', '212', '112', '212', '112', '', '', '2', '1', '26', '22', '1', '1', '1', '1', '8', '7', '7', '7', '9', 6, NULL, NULL, NULL, NULL, NULL),
(1394, 'Ганзам -УБ, БГД', 23, 0, '1', 'Н', '5', '5', '', '221', '106', '221', '106', '', '', '', '', '17', '16', '1', '1', '', '', '6', '6', '5', '5', '5', 4, NULL, NULL, NULL, NULL, NULL),
(1395, 'Дэгдээхий-УБ, БГД', 23, 0, '1', 'Н', '4', '4', '', '142', '53', '142', '53', '', '', '', '', '26', '25', '1', '1', '', '', '5', '4', '12', '12', '8', 8, NULL, NULL, NULL, NULL, NULL),
(1396, 'Ирээдүй-УБ, БГД', 23, 0, '1', 'Н', '12', '12', '', '542', '266', '542', '266', '', '', '1', '', '36', '34', '1', '1', '1', '1', '13', '13', '12', '12', '9', 7, NULL, NULL, NULL, NULL, NULL),
(1397, 'Моносхон -Сэлэнгэ', 23, 0, '1', 'С', '10', '10', '', '301', '159', '301', '159', '', '', '11', '', '32', '30', '1', '1', '1', '1', '11', '10', '9', '9', '10', 9, NULL, NULL, NULL, NULL, NULL),
(1398, 'Найрамдал -УБ, БГД', 23, 0, '1', 'Н', '12', '12', '', '537', '262', '537', '262', '', '', '', '4', '34', '34', '1', '1', '1', '1', '12', '12', '12', '12', '8', 8, NULL, NULL, NULL, NULL, NULL),
(1399, 'Нарлаг-Төв', 23, 0, '1', 'Б', '1', '1', '', '27', '12', '27', '12', '', '', '4', '', '5', '4', '1', '1', '', '', '1', '1', '1', '1', '2', 1, NULL, NULL, NULL, NULL, NULL),
(1400, 'ОРХОН-Сэлэнгэ', 23, 0, '1', 'С', '2', '2', '', '60', '25', '60', '25', '', '', '1', '', '7', '7', '1', '1', '', '', '2', '2', '2', '2', '2', 2, NULL, NULL, NULL, NULL, NULL),
(1401, 'Сансар-Говьсүмбэр', 23, 0, '1', 'С', '5', '5', '', '147', '82', '147', '82', '', '', '1', '', '18', '17', '1', '1', '', '', '6', '6', '5', '5', '6', 5, NULL, NULL, NULL, NULL, NULL),
(1402, 'Солонго-УБ, БГД', 23, 0, '1', 'Н', '8', '8', '', '340', '172', '340', '172', '', '', '', '', '28', '27', '1', '1', '1', '1', '9', '9', '8', '8', '9', 8, NULL, NULL, NULL, NULL, NULL),
(1403, 'Тагтаа-Төв', 23, 0, '1', 'С', '2', '2', '', '54', '24', '54', '24', '', '', '4', '', '6', '5', '1', '1', '', '', '1', '1', '2', '2', '2', 1, NULL, NULL, NULL, NULL, NULL),
(1404, 'Улиасхан-Дархан уул', 23, 0, '1', 'А', '12', '12', '', '309', '160', '309', '160', '', '', '2', '', '37', '33', '1', '1', '1', '1', '13', '12', '12', '12', '10', 7, NULL, NULL, NULL, NULL, NULL),
(1405, 'Хараацай-Дорноговь', 23, 0, '1', 'А', '9', '9', '', '240', '126', '240', '126', '', '', '6', '', '30', '28', '1', '1', '', '', '10', '10', '9', '9', '10', 8, NULL, NULL, NULL, NULL, NULL),
(1406, 'Хэрлэн-УБ, БНД', 23, 0, '1', 'Н', '1', '1', '', '28', '13', '28', '13', '', '', '', '', '5', '4', '1', '1', '', '', '1', '1', '1', '1', '2', 1, NULL, NULL, NULL, NULL, NULL),
(1407, 'Хэрэмхэн -Дархан-уул', 23, 0, '1', 'С', '2', '2', '', '47', '24', '47', '24', '', '', '', '', '13', '12', '1', '1', '', '', '2', '2', '6', '6', '4', 3, NULL, NULL, NULL, NULL, NULL),
(1408, 'Чандага-Дархан', 23, 0, '1', 'Б', '3', '3', '', '81', '40', '81', '40', '', '', '3', '', '11', '11', '1', '1', '', '', '3', '3', '3', '3', '4', 4, NULL, NULL, NULL, NULL, NULL),
(1409, 'Шувуухай -Дорноговь', 23, 0, '1', 'С', '1', '1', '', '20', '9', '20', '9', '', '', '', '', '5', '5', '1', '1', '', '', '1', '1', '1', '1', '2', 2, NULL, NULL, NULL, NULL, NULL),
(1410, 'Эрдэнэ-Дорноговь', 23, 0, '1', 'С', '2', '2', '', '24', '9', '24', '9', '', '', '3', '', '7', '6', '1', '1', '', '', '2', '2', '2', '2', '2', 1, NULL, NULL, NULL, NULL, NULL),
(1411, 'Эрдэнэт-Орхон', 23, 0, '1', 'А', '3', '3', '', '83', '43', '83', '43', '', '', '2', '', '10', '9', '1', '1', '', '', '3', '3', '3', '3', '3', 2, NULL, NULL, NULL, NULL, NULL),
(1412, 'Янзага -УБ, СХД', 23, 0, '1', 'Н', '1', '1', '', '39', '15', '39', '15', '', '', '3', '', '5', '5', '1', '1', '', '', '1', '1', '1', '1', '2', 2, NULL, NULL, NULL, NULL, NULL),
(1413, 'Яргуй-УБ, СХД', 23, 0, '1', 'Н', '1', '1', '', '23', '11', '23', '11', '', '', '4', '', '5', '4', '1', '1', '', '', '1', '1', '1', '1', '2', 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_family`
--

CREATE TABLE `student_family` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `person_type` int(11) NOT NULL,
  `person` varchar(300) COLLATE utf8_bin NOT NULL,
  `birthday` varchar(20) COLLATE utf8_bin NOT NULL,
  `age` varchar(100) COLLATE utf8_bin NOT NULL,
  `family_count` varchar(200) COLLATE utf8_bin NOT NULL,
  `range1` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `facebook` varchar(50) COLLATE utf8_bin NOT NULL,
  `address` text COLLATE utf8_bin NOT NULL,
  `km` varchar(20) COLLATE utf8_bin NOT NULL,
  `job` text COLLATE utf8_bin NOT NULL,
  `job_pro` text COLLATE utf8_bin NOT NULL,
  `salary` varchar(200) COLLATE utf8_bin NOT NULL,
  `phone` varchar(50) COLLATE utf8_bin NOT NULL,
  `note` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `study_child`
--

CREATE TABLE `study_child` (
  `id` int(11) NOT NULL,
  `city` int(11) NOT NULL DEFAULT '0',
  `district` int(11) NOT NULL DEFAULT '0',
  `kinders` int(11) NOT NULL DEFAULT '0',
  `employee_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date_from` date DEFAULT NULL,
  `date_until` date DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `study_child`
--

INSERT INTO `study_child` (`id`, `city`, `district`, `kinders`, `employee_id`, `title`, `category`, `images`, `brief`, `description`, `date_from`, `date_until`, `created_date`, `updated_date`, `status`) VALUES
(13, 1, 4, 906, 3, 'Хүүхдийн сургалт', 1, 'uploads/202303/13_1209573951b56f316ab2e65929b527d788feabb9114f080e3.jpeg', 'Хүүхдийн сургалт', 'Хүүхдийн сургалт', '2023-03-29', '2023-03-29', '2023-03-29 10:09:57', '2023-03-29 10:09:57', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `study_child_category`
--

CREATE TABLE `study_child_category` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dd` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `study_child_category`
--

INSERT INTO `study_child_category` (`id`, `name`, `dd`) VALUES
(1, 'сургалт 2', 10),
(4, 'Тайлан 3', 20),
(5, 'Тайлан 1', 0),
(6, 'Тайлан 4', 30);

-- --------------------------------------------------------

--
-- Table structure for table `study_employee`
--

CREATE TABLE `study_employee` (
  `id` int(11) NOT NULL,
  `city` int(11) NOT NULL DEFAULT '0',
  `district` int(11) NOT NULL DEFAULT '0',
  `kinders` int(11) NOT NULL DEFAULT '0',
  `employee_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date_from` date DEFAULT NULL,
  `date_until` date DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `study_employee`
--

INSERT INTO `study_employee` (`id`, `city`, `district`, `kinders`, `employee_id`, `title`, `category`, `images`, `brief`, `description`, `date_from`, `date_until`, `created_date`, `updated_date`, `status`) VALUES
(11, 1, 4, 906, 4, 'Багшийн сургалт', 1, 'uploads/202303/11_1154259431b56f316ab2e65929b527d788feabb9114f080e3.jpeg', 'Багшийн сургалт', '<p>Багшийн сургалт<br></p>', '2023-03-29', '2023-03-29', '2023-03-29 09:54:25', '2023-03-29 09:54:25', 'new'),
(12, 1, 4, 906, 4, 'Ажилчдын сургалт', 1, 'uploads/202303/12_1200008981b56f316ab2e65929b527d788feabb9114f080e3.jpeg', 'Ажилчдын сургалт', '<p>Ажилчдын сургалт<br></p>', '2023-03-29', '2023-03-29', '2023-03-29 10:00:00', '2023-03-29 10:00:00', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `study_employee_category`
--

CREATE TABLE `study_employee_category` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dd` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `study_employee_category`
--

INSERT INTO `study_employee_category` (`id`, `name`, `dd`) VALUES
(1, 'Сургалтын тайлан 2', 10),
(4, 'Тайлан 3', 20),
(5, 'Тайлан 1', 0),
(6, 'Тайлан 4', 30);

-- --------------------------------------------------------

--
-- Table structure for table `study_other`
--

CREATE TABLE `study_other` (
  `id` int(11) NOT NULL,
  `city` int(11) NOT NULL DEFAULT '0',
  `district` int(11) NOT NULL DEFAULT '0',
  `kinders` int(11) NOT NULL DEFAULT '0',
  `employee_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date_from` date DEFAULT NULL,
  `date_until` date DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `study_other`
--

INSERT INTO `study_other` (`id`, `city`, `district`, `kinders`, `employee_id`, `title`, `category`, `images`, `brief`, `description`, `date_from`, `date_until`, `created_date`, `updated_date`, `status`) VALUES
(13, 1, 4, 906, 3, 'Бусад сургалт', 1, 'uploads/202303/13_1223122851b56f316ab2e65929b527d788feabb9114f080e3.jpeg', 'Бусад сургалт', '<p>Бусад сургалт<br></p>', '2023-03-29', '2023-03-29', '2023-03-29 10:23:12', '2023-03-29 10:23:12', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `study_other_category`
--

CREATE TABLE `study_other_category` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dd` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `study_other_category`
--

INSERT INTO `study_other_category` (`id`, `name`, `dd`) VALUES
(1, 'сургалт 2', 10),
(4, 'Тайлан 3', 20),
(5, 'Тайлан 1', 0),
(6, 'Тайлан 4', 30);

-- --------------------------------------------------------

--
-- Table structure for table `study_parent`
--

CREATE TABLE `study_parent` (
  `id` int(11) NOT NULL,
  `city` int(11) NOT NULL DEFAULT '0',
  `district` int(11) NOT NULL DEFAULT '0',
  `kinders` int(11) NOT NULL DEFAULT '0',
  `employee_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date_from` date DEFAULT NULL,
  `date_until` date DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `study_parent`
--

INSERT INTO `study_parent` (`id`, `city`, `district`, `kinders`, `employee_id`, `title`, `category`, `images`, `brief`, `description`, `date_from`, `date_until`, `created_date`, `updated_date`, `status`) VALUES
(13, 1, 4, 906, 4, 'Эцэг эхийн сургалт', 5, 'uploads/202303/13_1214599441b56f316ab2e65929b527d788feabb9114f080e3.jpeg', 'Эцэг эхийн сургалт', '<p>Эцэг эхийн сургалт<br></p>', '2023-03-29', '2023-03-29', '2023-03-29 10:14:59', '2023-03-29 10:20:04', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `study_parent_category`
--

CREATE TABLE `study_parent_category` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dd` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `study_parent_category`
--

INSERT INTO `study_parent_category` (`id`, `name`, `dd`) VALUES
(1, 'Сургалтын тайлан 2', 10),
(4, 'Тайлан 3', 20),
(5, 'Эцэг эхийн сургалт 1', 0),
(6, 'Тайлан 4', 30);

-- --------------------------------------------------------

--
-- Table structure for table `study_teacher`
--

CREATE TABLE `study_teacher` (
  `id` int(11) NOT NULL,
  `city` int(11) NOT NULL DEFAULT '0',
  `district` int(11) NOT NULL DEFAULT '0',
  `kinders` int(11) NOT NULL DEFAULT '0',
  `employee_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date_from` date DEFAULT NULL,
  `date_until` date DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `study_teacher`
--

INSERT INTO `study_teacher` (`id`, `city`, `district`, `kinders`, `employee_id`, `title`, `category`, `images`, `brief`, `description`, `date_from`, `date_until`, `created_date`, `updated_date`, `status`) VALUES
(11, 1, 4, 906, 4, 'Багшийн сургалт', 1, 'uploads/202303/11_1154259431b56f316ab2e65929b527d788feabb9114f080e3.jpeg', 'Багшийн сургалт', '<p>Багшийн сургалт<br></p>', '2023-03-29', '2023-03-29', '2023-03-29 09:54:25', '2023-03-29 09:54:25', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `study_teacher_category`
--

CREATE TABLE `study_teacher_category` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dd` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `study_teacher_category`
--

INSERT INTO `study_teacher_category` (`id`, `name`, `dd`) VALUES
(1, 'Сургалтын тайлан 2', 10),
(4, 'Тайлан 3', 20),
(5, 'Тайлан 1', 0),
(6, 'Тайлан 4', 30);

-- --------------------------------------------------------

--
-- Table structure for table `syllabus`
--

CREATE TABLE `syllabus` (
  `id` int(11) NOT NULL,
  `city` int(11) NOT NULL DEFAULT '0',
  `district` int(11) NOT NULL DEFAULT '0',
  `kinders` int(11) NOT NULL DEFAULT '0',
  `employee_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date_from` date DEFAULT NULL,
  `date_until` date DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `syllabus`
--

INSERT INTO `syllabus` (`id`, `city`, `district`, `kinders`, `employee_id`, `title`, `category`, `images`, `brief`, `description`, `date_from`, `date_until`, `created_date`, `updated_date`, `status`) VALUES
(14, 1, 4, 906, 4, 'Багшийн зөвлөгөө', 1, 'uploads/202303/14_124357191b56f316ab2e65929b527d788feabb9114f080e3.jpeg', 'Багшийн зөвлөгөө', '<p>Багшийн зөвлөгөө<br></p>', '2023-03-29', '2023-03-29', '2023-03-29 10:43:57', '2023-03-29 10:44:53', 'new'),
(15, 1, 4, 906, 4, 'Сургалтын хөтөлбөр', 1, 'uploads/202303/15_12571431b56f316ab2e65929b527d788feabb9114f080e3.jpeg', 'Сургалтын хөтөлбөр', '<p>Сургалтын хөтөлбөр<br></p>', '2023-03-29', '2023-03-29', '2023-03-29 10:57:14', '2023-03-29 10:57:14', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `syllabus_category`
--

CREATE TABLE `syllabus_category` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dd` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `syllabus_category`
--

INSERT INTO `syllabus_category` (`id`, `name`, `dd`) VALUES
(1, 'сургалт 2', 10),
(4, 'Тайлан 3', 20),
(5, 'Тайлан 1', 0),
(6, 'Тайлан 4', 30);

-- --------------------------------------------------------

--
-- Table structure for table `syllabus_other`
--

CREATE TABLE `syllabus_other` (
  `id` int(11) NOT NULL,
  `city` int(11) NOT NULL DEFAULT '0',
  `district` int(11) NOT NULL DEFAULT '0',
  `kinders` int(11) NOT NULL DEFAULT '0',
  `employee_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date_from` date DEFAULT NULL,
  `date_until` date DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `syllabus_other`
--

INSERT INTO `syllabus_other` (`id`, `city`, `district`, `kinders`, `employee_id`, `title`, `category`, `images`, `brief`, `description`, `date_from`, `date_until`, `created_date`, `updated_date`, `status`) VALUES
(14, 1, 4, 906, 4, 'Багшийн зөвлөгөө', 1, 'uploads/202303/14_124357191b56f316ab2e65929b527d788feabb9114f080e3.jpeg', 'Багшийн зөвлөгөө', '<p>Багшийн зөвлөгөө<br></p>', '2023-03-29', '2023-03-29', '2023-03-29 10:43:57', '2023-03-29 10:44:53', 'new'),
(15, 1, 4, 906, 4, 'Бусад хөтөлбөр', 1, 'uploads/202303/15_1258297431b56f316ab2e65929b527d788feabb9114f080e3.jpeg', 'Бусад хөтөлбөр', '<p>Бусад хөтөлбөр<br></p>', '2023-03-29', '2023-03-29', '2023-03-29 10:58:29', '2023-03-29 10:58:29', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `syllabus_other_category`
--

CREATE TABLE `syllabus_other_category` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dd` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `syllabus_other_category`
--

INSERT INTO `syllabus_other_category` (`id`, `name`, `dd`) VALUES
(1, 'сургалт 2', 10),
(4, 'Тайлан 3', 20),
(5, 'Тайлан 1', 0),
(6, 'Тайлан 4', 30);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_type`
--

CREATE TABLE `teacher_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dd` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_type`
--

INSERT INTO `teacher_type` (`id`, `name`, `dd`) VALUES
(1, 'Бүлгийн багш', 10),
(2, 'Ахлах багш', 20),
(3, 'Туслах багш', 30),
(4, 'Ээлжийн багш', 100),
(5, 'Дуу хөгжмийн багш', 50),
(6, 'Биеийн тамирын багш', 58),
(7, 'Тусгай мэргэжлийн', 55),
(8, 'Гэрээт багш', 105);

-- --------------------------------------------------------

--
-- Table structure for table `tendency`
--

CREATE TABLE `tendency` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dd` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tendency`
--

INSERT INTO `tendency` (`id`, `name`, `dd`) VALUES
(1, 'Хөгжим', 10),
(2, 'Дүрслэх урлаг', 20),
(3, 'Биеийн тамир', 30),
(4, 'Математик', 40),
(5, 'Байгаль нийгэм', 50),
(6, 'Хэл яриа', 60);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rights` int(32) DEFAULT '0',
  `city` int(11) NOT NULL DEFAULT '0',
  `district` int(11) NOT NULL DEFAULT '0',
  `kinders` int(11) NOT NULL DEFAULT '0',
  `buleg` int(11) NOT NULL DEFAULT '0',
  `is_employee` tinyint(1) NOT NULL DEFAULT '1',
  `eop_id` int(11) NOT NULL DEFAULT '0',
  `status` smallint(32) NOT NULL DEFAULT '0' COMMENT '0-regular, 1-block, 2-expired',
  `expire_date` date DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `logged_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `rights`, `city`, `district`, `kinders`, `buleg`, `is_employee`, `eop_id`, `status`, `expire_date`, `created_date`, `updated_date`, `logged_date`) VALUES
(10, 'Aadmin', '0cf1e822bdeee81c31642d73df2a5db1abcdb07a', 1, 1, 0, 0, 0, 0, 1, 0, '2023-12-29', '2023-03-27 10:23:41', '2023-04-04 03:41:06', '2023-04-03 21:41:06'),
(11, '268admin', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 2, 1, 4, 839, 0, 1, 4, 0, '2023-04-30', '2023-03-29 15:02:03', '2023-04-27 06:25:33', '2023-04-26 22:25:33'),
(12, '268sub', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 3, 1, 4, 839, 0, 1, 5, 0, '2023-04-30', '2023-03-29 15:02:41', '2023-04-25 07:58:06', '2023-04-24 23:58:06'),
(13, '268-1', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 4, 1, 4, 839, 10, 1, 6, 0, '2023-04-30', '2023-03-29 15:03:14', '2023-04-27 10:41:22', '2023-04-27 02:41:22'),
(14, '268-2', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 4, 1, 4, 839, 11, 1, 7, 0, '2023-04-30', '2023-03-31 14:10:36', '2023-04-13 04:30:55', '2023-04-12 20:30:55'),
(15, '268-2-1', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 8, 1, 4, 839, 11, 1, 16, 0, '2023-04-30', '2023-03-31 14:11:17', '2023-04-04 04:16:15', '2023-04-03 22:16:15'),
(16, 'odadmin', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 2, 1, 4, 906, 0, 1, 20, 0, NULL, '2023-04-13 08:58:48', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address_city`
--
ALTER TABLE `address_city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `address_district`
--
ALTER TABLE `address_district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advices`
--
ALTER TABLE `advices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `advice_category`
--
ALTER TABLE `advice_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assessment_child`
--
ALTER TABLE `assessment_child`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buleg`
--
ALTER TABLE `buleg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kinder` (`kinder`);

--
-- Indexes for table `buleg_type`
--
ALTER TABLE `buleg_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `child`
--
ALTER TABLE `child`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rd` (`rd`),
  ADD KEY `kinders` (`kinders`),
  ADD KEY `buleg` (`buleg`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_category`
--
ALTER TABLE `content_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tel` (`tel`),
  ADD UNIQUE KEY `ssn` (`ssn`);

--
-- Indexes for table `external_people`
--
ALTER TABLE `external_people`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tel` (`tel`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `import`
--
ALTER TABLE `import`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kinders`
--
ALTER TABLE `kinders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receiver` (`receiver`);

--
-- Indexes for table `own_plan`
--
ALTER TABLE `own_plan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author` (`author`),
  ADD KEY `approver` (`approver`),
  ADD KEY `date_from` (`date_from`),
  ADD KEY `date_until` (`date_until`);

--
-- Indexes for table `own_plan_tasks`
--
ALTER TABLE `own_plan_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_from` (`date_from`),
  ADD KEY `date_until` (`date_until`),
  ADD KEY `status` (`status`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `own_plan_tasks_category`
--
ALTER TABLE `own_plan_tasks_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `own_reports`
--
ALTER TABLE `own_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author` (`author`),
  ADD KEY `approver` (`approver`),
  ADD KEY `date_from` (`date_from`),
  ADD KEY `date_until` (`date_until`);

--
-- Indexes for table `own_report_tasks`
--
ALTER TABLE `own_report_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_from` (`date_from`),
  ADD KEY `date_until` (`date_until`),
  ADD KEY `status` (`status`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `own_report_tasks_category`
--
ALTER TABLE `own_report_tasks_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan_action`
--
ALTER TABLE `plan_action`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_from` (`date_from`),
  ADD KEY `date_until` (`date_until`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `plan_action_category`
--
ALTER TABLE `plan_action_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan_buleg`
--
ALTER TABLE `plan_buleg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_from` (`date_from`),
  ADD KEY `date_until` (`date_until`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `plan_buleg_category`
--
ALTER TABLE `plan_buleg_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan_current`
--
ALTER TABLE `plan_current`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_from` (`date_from`),
  ADD KEY `date_until` (`date_until`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `plan_current_category`
--
ALTER TABLE `plan_current_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan_development`
--
ALTER TABLE `plan_development`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_from` (`date_from`),
  ADD KEY `date_until` (`date_until`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `plan_development_category`
--
ALTER TABLE `plan_development_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan_general`
--
ALTER TABLE `plan_general`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_from` (`date_from`),
  ADD KEY `date_until` (`date_until`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `plan_general_category`
--
ALTER TABLE `plan_general_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan_organisation`
--
ALTER TABLE `plan_organisation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_from` (`date_from`),
  ADD KEY `date_until` (`date_until`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `plan_organisation_category`
--
ALTER TABLE `plan_organisation_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan_other`
--
ALTER TABLE `plan_other`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_from` (`date_from`),
  ADD KEY `date_until` (`date_until`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `plan_other_category`
--
ALTER TABLE `plan_other_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan_study`
--
ALTER TABLE `plan_study`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_from` (`date_from`),
  ADD KEY `date_until` (`date_until`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `plan_study_category`
--
ALTER TABLE `plan_study_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan_teacherpromo`
--
ALTER TABLE `plan_teacherpromo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_from` (`date_from`),
  ADD KEY `date_until` (`date_until`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `plan_teacherpromo_category`
--
ALTER TABLE `plan_teacherpromo_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan_work`
--
ALTER TABLE `plan_work`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_from` (`date_from`),
  ADD KEY `date_until` (`date_until`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `plan_work_category`
--
ALTER TABLE `plan_work_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan_zan`
--
ALTER TABLE `plan_zan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_from` (`date_from`),
  ADD KEY `date_until` (`date_until`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `plan_zan_category`
--
ALTER TABLE `plan_zan_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regime`
--
ALTER TABLE `regime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_from` (`date_from`),
  ADD KEY `date_until` (`date_until`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `report_current`
--
ALTER TABLE `report_current`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_from` (`date_from`),
  ADD KEY `date_until` (`date_until`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `report_current_category`
--
ALTER TABLE `report_current_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_general`
--
ALTER TABLE `report_general`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_from` (`date_from`),
  ADD KEY `date_until` (`date_until`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `report_general_category`
--
ALTER TABLE `report_general_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_other`
--
ALTER TABLE `report_other`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_from` (`date_from`),
  ADD KEY `date_until` (`date_until`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `report_other_category`
--
ALTER TABLE `report_other_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_study`
--
ALTER TABLE `report_study`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_from` (`date_from`),
  ADD KEY `date_until` (`date_until`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `report_study_category`
--
ALTER TABLE `report_study_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_teacher`
--
ALTER TABLE `report_teacher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_from` (`date_from`),
  ADD KEY `date_until` (`date_until`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `report_teacher_category`
--
ALTER TABLE `report_teacher_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_teacher_work`
--
ALTER TABLE `report_teacher_work`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_from` (`date_from`),
  ADD KEY `date_until` (`date_until`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `report_teacher_work_category`
--
ALTER TABLE `report_teacher_work_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_work`
--
ALTER TABLE `report_work`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_from` (`date_from`),
  ADD KEY `date_until` (`date_until`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `report_work_category`
--
ALTER TABLE `report_work_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_zan`
--
ALTER TABLE `report_zan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_from` (`date_from`),
  ADD KEY `date_until` (`date_until`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `report_zan_category`
--
ALTER TABLE `report_zan_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rights`
--
ALTER TABLE `rights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sector`
--
ALTER TABLE `sector`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `shortname` (`shortname`);

--
-- Indexes for table `statistic`
--
ALTER TABLE `statistic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_family`
--
ALTER TABLE `student_family`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `study_child`
--
ALTER TABLE `study_child`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_from` (`date_from`),
  ADD KEY `date_until` (`date_until`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `study_child_category`
--
ALTER TABLE `study_child_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `study_employee`
--
ALTER TABLE `study_employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_from` (`date_from`),
  ADD KEY `date_until` (`date_until`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `study_employee_category`
--
ALTER TABLE `study_employee_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `study_other`
--
ALTER TABLE `study_other`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_from` (`date_from`),
  ADD KEY `date_until` (`date_until`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `study_other_category`
--
ALTER TABLE `study_other_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `study_parent`
--
ALTER TABLE `study_parent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_from` (`date_from`),
  ADD KEY `date_until` (`date_until`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `study_parent_category`
--
ALTER TABLE `study_parent_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `study_teacher`
--
ALTER TABLE `study_teacher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_from` (`date_from`),
  ADD KEY `date_until` (`date_until`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `study_teacher_category`
--
ALTER TABLE `study_teacher_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `syllabus`
--
ALTER TABLE `syllabus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_from` (`date_from`),
  ADD KEY `date_until` (`date_until`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `syllabus_category`
--
ALTER TABLE `syllabus_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `syllabus_other`
--
ALTER TABLE `syllabus_other`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_from` (`date_from`),
  ADD KEY `date_until` (`date_until`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `syllabus_other_category`
--
ALTER TABLE `syllabus_other_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_type`
--
ALTER TABLE `teacher_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `tendency`
--
ALTER TABLE `tendency`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address_district`
--
ALTER TABLE `address_district`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=349;

--
-- AUTO_INCREMENT for table `advices`
--
ALTER TABLE `advices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `advice_category`
--
ALTER TABLE `advice_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `assessment_child`
--
ALTER TABLE `assessment_child`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buleg`
--
ALTER TABLE `buleg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `buleg_type`
--
ALTER TABLE `buleg_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `child`
--
ALTER TABLE `child`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `content_category`
--
ALTER TABLE `content_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `external_people`
--
ALTER TABLE `external_people`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `import`
--
ALTER TABLE `import`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1414;

--
-- AUTO_INCREMENT for table `kinders`
--
ALTER TABLE `kinders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=907;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `own_plan`
--
ALTER TABLE `own_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `own_plan_tasks`
--
ALTER TABLE `own_plan_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `own_plan_tasks_category`
--
ALTER TABLE `own_plan_tasks_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `own_reports`
--
ALTER TABLE `own_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `own_report_tasks`
--
ALTER TABLE `own_report_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `own_report_tasks_category`
--
ALTER TABLE `own_report_tasks_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `plan_action`
--
ALTER TABLE `plan_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `plan_action_category`
--
ALTER TABLE `plan_action_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `plan_buleg`
--
ALTER TABLE `plan_buleg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plan_buleg_category`
--
ALTER TABLE `plan_buleg_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `plan_current`
--
ALTER TABLE `plan_current`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plan_current_category`
--
ALTER TABLE `plan_current_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `plan_development`
--
ALTER TABLE `plan_development`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plan_development_category`
--
ALTER TABLE `plan_development_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `plan_general`
--
ALTER TABLE `plan_general`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `plan_general_category`
--
ALTER TABLE `plan_general_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `plan_organisation`
--
ALTER TABLE `plan_organisation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `plan_organisation_category`
--
ALTER TABLE `plan_organisation_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `plan_other`
--
ALTER TABLE `plan_other`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `plan_other_category`
--
ALTER TABLE `plan_other_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `plan_study`
--
ALTER TABLE `plan_study`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `plan_study_category`
--
ALTER TABLE `plan_study_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `plan_teacherpromo`
--
ALTER TABLE `plan_teacherpromo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `plan_teacherpromo_category`
--
ALTER TABLE `plan_teacherpromo_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `plan_work`
--
ALTER TABLE `plan_work`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `plan_work_category`
--
ALTER TABLE `plan_work_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `plan_zan`
--
ALTER TABLE `plan_zan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plan_zan_category`
--
ALTER TABLE `plan_zan_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `regime`
--
ALTER TABLE `regime`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `report_current`
--
ALTER TABLE `report_current`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_current_category`
--
ALTER TABLE `report_current_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `report_general`
--
ALTER TABLE `report_general`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `report_general_category`
--
ALTER TABLE `report_general_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `report_other`
--
ALTER TABLE `report_other`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `report_other_category`
--
ALTER TABLE `report_other_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `report_study`
--
ALTER TABLE `report_study`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `report_study_category`
--
ALTER TABLE `report_study_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `report_teacher`
--
ALTER TABLE `report_teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `report_teacher_category`
--
ALTER TABLE `report_teacher_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `report_teacher_work`
--
ALTER TABLE `report_teacher_work`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `report_teacher_work_category`
--
ALTER TABLE `report_teacher_work_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `report_work`
--
ALTER TABLE `report_work`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `report_work_category`
--
ALTER TABLE `report_work_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `report_zan`
--
ALTER TABLE `report_zan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_zan_category`
--
ALTER TABLE `report_zan_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rights`
--
ALTER TABLE `rights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sector`
--
ALTER TABLE `sector`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `statistic`
--
ALTER TABLE `statistic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1414;

--
-- AUTO_INCREMENT for table `student_family`
--
ALTER TABLE `student_family`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `study_child`
--
ALTER TABLE `study_child`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `study_child_category`
--
ALTER TABLE `study_child_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `study_employee`
--
ALTER TABLE `study_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `study_employee_category`
--
ALTER TABLE `study_employee_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `study_other`
--
ALTER TABLE `study_other`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `study_other_category`
--
ALTER TABLE `study_other_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `study_parent`
--
ALTER TABLE `study_parent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `study_parent_category`
--
ALTER TABLE `study_parent_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `study_teacher`
--
ALTER TABLE `study_teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `study_teacher_category`
--
ALTER TABLE `study_teacher_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `syllabus`
--
ALTER TABLE `syllabus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `syllabus_category`
--
ALTER TABLE `syllabus_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `syllabus_other`
--
ALTER TABLE `syllabus_other`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `syllabus_other_category`
--
ALTER TABLE `syllabus_other_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `teacher_type`
--
ALTER TABLE `teacher_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tendency`
--
ALTER TABLE `tendency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
