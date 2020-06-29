-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 19 juin 2020 à 19:07
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8*/;

--
-- Base de données :  `bandedessinee`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Asterix', ''),
(2, 'Gaston Lagaffe', ''),
(3, 'Lucky Luke', ''),
(4, 'Spirou', ''),
(5, 'Tintin', ''),
(6, 'Boule & Bill', '');

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `products_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_image_id` (`products_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `images`
--

INSERT INTO `images` (`id`, `name`, `products_id`) VALUES
(1, 'Spirou/Fanta1.PNG', 71),
(2, 'Spirou/Fanta3.PNG', 71),
(3, 'Spirou/Fanta2.PNG', 71),
(4, 'GastonLagaffe/gaston&janne1.jpg', 16),
(5, 'GastonLagaffe/gaston&janne1.jpg', 16),
(6, 'Spirou/SpirouLuky2.jpg', 36),
(7, 'Spirou/SpirouLuky.jpg', 36),
(8, 'LuckyLuke/Rantanplan1.jpg', 32),
(9, 'LuckyLuke/Rantanplan2.jpg', 32),
(10, 'LuckyLuke/Rantanplan3.jpg', 32),
(11, 'LuckyLuke/Mathias1.jpg', 31),
(12, 'LuckyLuke/Mathias2.jpg', 31),
(13, 'GastonLagaffe/Taxi1.jpg', 22),
(14, 'GastonLagaffe/Taxi2.jpg', 22),
(15, 'GastonLagaffe/Taxi3.jpg', 22),
(16, 'LuckyLuke/DaltonCheval1.jpg', 23),
(17, 'LuckyLuke/DaltonCheval2.jpg', 23),
(18, 'LuckyLuke/DaltonCheval3.jpg', 23),
(19, 'GastonLagaffe/GastonCar1.jpg', 18),
(20, 'GastonLagaffe/GastonCar2.jpg', 18),
(21, 'GastonLagaffe/GastonCar3.jpg', 18),
(22, 'GastonLagaffe/Cactus1.jpg', 10),
(23, 'GastonLagaffe/Cactus2.jpg', 10),
(24, 'GastonLagaffe/AgentLongtarin1.jpg', 9),
(25, 'GastonLagaffe/AgentLongtarin2.jpg', 9),
(26, 'GastonLagaffe/AgentLongtarin3.jpg', 9),
(27, 'GastonLagaffe/Prunelle1.jpg', 21),
(28, 'GastonLagaffe/Prunelle2.jpg', 21),
(29, 'GastonLagaffe/Prunelle3.jpg', 21),
(30, 'LuckyLuke/JoeDatlon1.jpg', 25),
(31, 'LuckyLuke/JoeDatlon2.jpg', 25),
(32, 'LuckyLuke/LuckyLuke1.jpg', 28),
(33, 'LuckyLuke/LuckyLuke2.jpg', 28),
(34, 'LuckyLuke/LuckyLuke3.jpg', 28),
(35, 'LuckyLuke/Luke1.jpg', 29),
(36, 'LuckyLuke/Luke2.jpg', 29),
(37, 'LuckyLuke/Luke3.jpg', 29),
(38, 'LuckyLuke/LuckyCharette2.jpg', 27),
(39, 'LuckyLuke/LuckyCharette1.jpg', 27),
(41, 'Asterix/Agecanonix1.png', 15),
(42, 'Asterix/Agecanonix2.png', 15),
(43, 'Asterix/julescesar1.jpg', 59),
(44, 'Asterix/julescesar2.jpg', 59),
(45, 'Asterix/Abraracourcix2.jpg', 1),
(46, 'Asterix/Abraracourcix1.jpg', 1),
(47, 'Asterix/Abraracourcix3.jpg', 1),
(48, 'Asterix/Bonemine1.jpg', 5),
(49, 'Asterix/Bonemine2.jpg', 5),
(50, 'Asterix/vieuxAsteric1.jpg', 8),
(51, 'Asterix/vieuxAsteric2.jpg', 8),
(52, 'Asterix/vieuxAsteric3.jpg', 8),
(53, 'Asterix/Legionnaire1.jpg', 6),
(54, 'Asterix/Legionnaire2.jpg', 6),
(55, 'Asterix/Legionnaire3.jpg', 6),
(56, 'Asterix/Assurancetourix1.jpg', 61),
(57, 'Asterix/Assurancetourix2.jpg', 61),
(59, 'Asterix/Olibrius1.jpg', 60),
(60, 'Asterix/Olibrius2.jpg', 60),
(61, 'Asterix/Panoramix1.jpg', 14),
(62, 'Asterix/Panoramix2.jpg', 14),
(63, 'Asterix/Asterix&Obelix1.jpg', 3),
(64, 'Asterix/Asterix&Obelix4.jpg', 3),
(65, 'Asterix/Asterix&Obelix2.jpg', 3),
(67, 'GastonLagaffe/Gaston&Marsupilami1.jpg', 13),
(68, 'GastonLagaffe/Gaston&Marsupilami2.jpg', 13),
(69, 'GastonLagaffe/Gaston&Marsupilami3.jpg', 13),
(70, 'GastonLagaffe/Prunellee1.jpg', 11),
(71, 'GastonLagaffe/Prunellee2.jpg', 11),
(72, 'GastonLagaffe/gaston1.jpg', 17),
(73, 'GastonLagaffe/gaston2.jpg', 17),
(74, 'GastonLagaffe/gastonChat1.jpg', 19),
(75, 'GastonLagaffe/gastonChat2.jpg', 19),
(76, 'GastonLagaffe/GastonCaisseFragile1.jpg', 20),
(77, 'GastonLagaffe/GastonCaisseFragile2.jpg', 20),
(78, 'GastonLagaffe/GastonCaisseFragile3.jpg', 20),
(79, 'Tintin/dupondt1.jpg', 39),
(80, 'Tintin/dupondt2.jpg', 39),
(81, 'Tintin/TintinMilou1.jpg', 45),
(82, 'Tintin/TintinMilou2.jpg', 45),
(83, 'Tintin/tintinEnRoute1.jpg', 44),
(84, 'Tintin/tintinEnRoute2.jpg', 44),
(85, 'Tintin/requin1.jpg', 57),
(86, 'Tintin/requin2.jpg', 57),
(87, 'Tintin/requin3.jpg', 57),
(88, 'Tintin/TintinVase1.jpg', 46),
(89, 'Tintin/TintinVase2.jpg', 46),
(90, 'Tintin/Maison1.jpg', 58),
(91, 'Tintin/Maison2.jpg', 58),
(92, 'Tintin/Maison3.jpg', 58),
(93, 'Spirou/SpirouVert1.jpg', 35),
(94, 'Spirou/SpirouVert2.jpg', 35),
(95, 'Spirou/SpirouVert3.jpg', 35),
(96, 'Spirou/Zorglub1.jpg', 38),
(97, 'Spirou/Zorglub2.jpg', 38),
(98, 'Spirou/Zorglub3.jpg', 38),
(99, 'Spirou/Dupilon1.jpg', 72),
(100, 'Spirou/Dupilon2.jpg', 72),
(101, 'Spirou/Dupilon3.jpg', 72),
(102, 'Spirou/Maire1.jpg', 69),
(103, 'Spirou/Maire2.jpg', 69),
(104, 'Spirou/Maire3.jpg', 69),
(105, 'Spirou/Spirou&Fantasio1.jpg', 37),
(106, 'Spirou/Spirou&Fantasio1.jpg', 37),
(107, 'Spirou/cameleon1.jpg', 34),
(108, 'Spirou/cameleon2.jpg', 34),
(109, 'Spirou/cameleon3.jpg', 34),
(110, 'Asterix/obelix1.jpg', 7),
(111, 'Asterix/obelix2.jpg', 7),
(112, 'Asterix/obelix3.jpg', 7),
(113, 'Asterix/asterix1.jpg', 4),
(114, 'Asterix/asterix2.jpg', 4),
(115, 'Asterix/asterix3.jpg', 4),
(116, 'Boule&Bill/NeigeBoule1.PNG', 52),
(117, 'Boule&Bill/NeigeBoule2.PNG', 52),
(118, 'Boule&Bill/NeigeBoule3.PNG', 52),
(119, 'Boule&Bill/Boule&Bil1.jpg', 50),
(120, 'Boule&Bill/Boule&Bil2.jpg', 50),
(121, 'Boule&Bill/Boule&Bil3.jpg', 50),
(122, 'Boule&Bill/Caroline1.jpg', 51),
(123, 'Boule&Bill/Caroline2.jpg', 51),
(124, 'Boule&Bill/Caroline3.jpg', 51),
(125, 'Boule&Bill/baignade1.jpg', 55),
(126, 'Boule&Bill/baignade2.jpg', 55),
(127, 'Boule&Bill/baignade3.jpg', 55),
(128, 'Boule&Bill/Bill&Pouf1.jpg', 49),
(129, 'Boule&Bill/Bill&Pouf2.jpg', 49),
(130, 'Boule&Bill/Bill&Pouf3.jpg', 49),
(131, 'Boule&Bill/VehiculeBoule1.jpg', 54),
(132, 'Boule&Bill/VehiculeBoule2.jpg', 54),
(133, 'Boule&Bill/VehiculeBoule3.jpg', 54),
(135, 'Boule&bill/mereBoule1.jpg', 53),
(136, 'Boule&bill/mereBoule2.jpg', 53),
(137, 'Boule&bill/mereBoule3.jpg', 53),
(138, 'Tintin/Haddock1.jpg', 40),
(139, 'Tintin/Haddock2.jpg', 40),
(140, 'Spirou/ZorglubGang1.jpg', 70),
(142, 'Spirou/ZorglubGang3.jpg', 70),
(143, 'LuckyLuke/Jane1.jpg', 24),
(144, 'LuckyLuke/Jane2.jpg', 24),
(145, 'LuckyLuke/minglifoo1.jpg', 66),
(146, 'LuckyLuke/minglifoo2.jpg', 66),
(147, 'LuckyLuke/minglifoo3.jpg', 66),
(148, 'Spirou/Spirou1.jpg', 33),
(149, 'Spirou/Spirou2.jpg', 33),
(150, 'Spirou/Spirou3.jpg', 33),
(151, 'LuckyLuke/MaDalton1.jpg', 30),
(152, 'LuckyLuke/MaDalton2.jpg', 30),
(153, 'LuckyLuke/MaDalton3.jpg', 30),
(154, 'Tintin/Tournesol1.jpg', 48),
(155, 'Tintin/Tournesol2.jpg', 48),
(156, 'Boule&Bill/Pereenerve1.jpg', 63),
(157, 'Boule&Bill/Pereenerve2.jpg', 63),
(158, 'Tintin/Nestor1.jpg', 41),
(159, 'Tintin/Nestor2.jpg', 41),
(160, 'Tintin/Tournesol&Haddock1.jpg', 47),
(161, 'Tintin/Tournesol&Haddock2.jpg', 47);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `delivery_address` varchar(255) NOT NULL,
  `date` datetime,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `delivery_address`, `date`) VALUES
(47, 55, '33 rue de paris', '2020-06-19 10:42:08'),
(48, 55, 'ok', '2020-06-19 10:45:12'),
(49, 56, 'aa', '2020-06-19 10:47:07'),
(50, 64, 'yess', '2020-06-19 20:46:02'),
(51, 57, 'htbg', '2020-06-19 20:47:05'),
(52, 58, 'grt', '2020-06-19 20:48:50'),
(53, 60, 'ok', '2020-06-19 20:51:31'),
(54, 60, 'YH', '2020-06-19 20:59:41');

-- --------------------------------------------------------

--
-- Structure de la table `order_products`
--

DROP TABLE IF EXISTS `order_products`;
CREATE TABLE IF NOT EXISTS `order_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `order_products`
--

INSERT INTO `order_products` (`id`, `name`, `price`, `quantity`, `order_id`) VALUES
(74, 'Prunelle', 131, 1, 48),
(75, 'Caroline', 165, 1, 49),
(76, 'Maire', 17, 2, 50),
(77, 'Asterix & Obelix', 339, 1, 50),
(78, 'Jane', 179, 1, 51),
(79, 'Boule et Bill', 165, 1, 52),
(80, 'Gaston', 130, 1, 52),
(81, 'Cam & Leon', 17, 1, 53),
(82, 'Caisse Fragile', 346, 1, 53),
(83, 'Prunelle', 131, 2, 54);

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `short_description` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `description`, `short_description`, `price`, `category_id`, `quantity`) VALUES
(1, 'Abraracourcix', 'Asterix/Abraracourcix.jpg ', 'Get the lastest and trending web development project\'s source code, first see preview if you need then get the code.\r\n                                                                                                                                         ', '', 245, 1, 10),
(3, 'Asterix & Obelix', 'Asterix/Asterix&Obelix.jpg', 'Voici une statuette de Astérix et Obélix, issue de l\'univers d\'Asterix, un personnage supplémentaire pour compléter la galerie issue de l\'univers du plus fameux Gaulois ! Vous en avez rêvé et Leblon-Delienne l\'a fait !                    ', '                    ', 339, 1, 9),
(4, 'Asterix', 'Asterix/asterix.jpg', 'Sur cette figurine, Astérix lit l\'une de ses meilleures aventures : \"Astérix chez les Bretons\".Figurine CollectoysAnnée : 2018Matière : résineDimensions : 21 x 14 x 23,5 cm', 'azaear', 435, 1, 3),
(5, 'Bonemine', 'Asterix/Bonemine.jpg', 'Retrouvez Bonemine en figurine sur CollectorBD !Elle est en train de coudre, assise sur un tabouret. Le sourcil levé, elle écoute attentivement ce qui se passe autour d\'elle', 'zeaztr', 220, 1, 10),
(6, 'Legionnaire', 'Asterix/Legionnaire.jpg', 'Une superbe figurine d\'une vingtaine de centimètres de haut, en résine. Cette magnifique statuette représente les deux héros tels qu\'ils sont dessinés sur la couverture du mythique album : Astérix légionnaire.', 'gfshf', 320, 1, 5),
(7, 'Obelix', 'Asterix/obelix.jpg', 'Comme il est tombé dans le chaudron de potion magique quand il était petit, cette pile d\'albums des aventures des Gaulois n\'est pas plus lourde qu\'un menhir !', '', 123, 1, 5),
(8, 'Agecanonix', 'Asterix/vieuxAsteric.jpg', 'D\'après l\'univers d\'Astérix et Obélix par Uderzo et Goscinny.  Hauteur : 12 cm.  Tirage limité à 350 exemplaires.', '', 226, 1, 10),
(9, 'Agent Longtarin', 'GastonLagaffe/AgentLongtarin.jpg', 'Son air aussi hagard que goguenard nous laisse présager le pire : un PV est sûrement prêt a être servi ! Mais la panoplie de L\'Agent Longtarin ne saurait être complète sans son parcmètre.', '', 330, 2, 5),
(10, 'Mlle Jeanne', 'GastonLagaffe/Cactus.jpg', 'Nous connaissions Gaston pour ses nombreux déguisements et notamment celui du cactus mais vous, Mlle Jeanne, c\'est une première !', 'Sculpteur : Pascal Rodier <br>\r\nHauteur : 20 cm <br>\r\nMatière : résine <br>\r\n Année d\'édition : 2007', 145, 2, 10),
(11, 'Prunelle', 'GastonLagaffe/Prunellee.jpg', 'Qui d\'autre que Gaston pourrait être sommé de rappliquer par Prunelle de cette façon ?! Qui veut parier que Gaston a encore eu une idée géniale ?', 'Sculpteur : Pascal Rodier Hauteur : 21 cm Matière : Résine Année d\'édition : 2005 Tirage : 750 exemplaires', 131, 2, 8),
(13, 'Gaston & Marsupilami', 'GastonLagaffe/Gaston&Marsupilami.jpg', ' Gaston, aurais-tu confondu ton lit avec celui des bébés Marsupilami ? Cela nous donnerait presque envie d\'aller roupiller dans ce joli nid de plumes, très douillet, surtout en présence des bébés Marsupilami !', ' Figurine en résine - scène prestige Figurine montée sur un socle ovale noir. Taille : 31cm.*', 139, 2, 10),
(14, 'Panoramix', 'Asterix/Panoramix.jpg', 'Retrouvez le grand Panoramix, druide vénérable du Village, détenteur du savoir, et notamment du secret de la potion magique dont il a lui-même créé la recette !', '', 234, 1, 10),
(15, 'Agecanonix', 'Asterix/Agecanonix.png', 'D\'après l\'univers d\'Asterix d\'Uderzo et Goscinny.  Sculpteur : Pascal Rodier Auteur(s) : Uderzo et Goscinny Hauteur : 18 cm Matière : Résine  Tirage : 350 ex. accompagnés d\'un certificat.', '', 136, 1, 5),
(16, 'Gaston & Jeanne', 'GastonLagaffe/gason&Jeanne.jpg', 'Nous connaissons sa dextérité - parfois approximative - au volant de sa FIAT mais qu\'en est-il d\'un deux roues motorisé ? Mlle Jeanne, en tout cas, est prête à le découvrir. ', 'Collection Le Garage de Franquin par Figures & vous Matière : Résine et métal Longueur : 17 cm', 170, 2, 5),
(17, 'Gaston', 'GastonLagaffe/gaston.jpg', 'La posture, la gaieté et la malice de Gaston ont immédiatement séduits le sculpteur de chez BC Arts design qui a choisi de le représenter et de l\'interpréter en compagnie de son célèbre chat.', 'Format : 36 cm + socle. <br>\r\nPoids : 6 kg <br>\r\nMatière : résine composite. \r\n', 130, 2, 10),
(18, 'Gaston Car', 'GastonLagaffe/GastonCar.jpg', 'Cette figurine a été conçue en exclusivité par Raiarox. Le concept étant de mélanger une figurine à la façon Fariboles dans un véhicule à la mode, l\'auto tamponneuse, par CG Models.', 'Hauteur : 20 cm <br> Matière : Métal et Résine <br> Exclusivité Raiarox <br>Fabrication : Fariboles / CG <br>Model  Tiré à 200 exemplaires et livré dans un coffret en bois sérigraphié', 169, 2, 5),
(19, 'Gaston et Fantasio, l\'innondation', 'GastonLagaffe/gastonChat.jpg', 'Positionnés sur ce bloc de résine, Gaston, allongé sur son matelas pneumatique, dort tranquillement tandis que Fantasio, furieux, défait le bouchon retenant l\'air à l\'intérieur de ce même matelas.\r\n', 'D\'après l\'univers de Gaston Lagaffe par Franquin. <br> Hauteur : 18cm <br>Matière : résine', 214, 2, 5),
(20, 'Caisse Fragile', 'GastonLagaffe/GastonCaisseFragile.jpg', 'Qu\'est ce qui a donc ému aux larmes notre cher Gaston ? Un rendez-vous annulé par Mademoiselle Jeanne ou une énième réprimande de l\'agent Longtarin ?', 'Année d\'édition : 2018 <br> Hauteur: 12 cm <br> Matière: résine Peinte à la main', 346, 2, 4),
(21, 'Prunelle', 'GastonLagaffe/Prunelle.jpg', 'Qui aurait pu l\'imaginer se prélasser dans un fauteuil avec un verre à la main ? Rien à voir avec le rédacteur en chef stressé et torturé qui arpente les bureaux du Journal de Spirou.', 'Sculpteur: Pascal Rodier <br> Hauteur : 11 cm <br> Matière : Résine Peinte à la main <br> Exclusivité Raiarox Passion', 177, 2, 5),
(22, 'Gaston & le Taxi', 'GastonLagaffe/TaxiGaston.jpg', 'La figurine représente Gaston, devant son Taxi qui tend ses clés. Il est garé devant un panneau interdit de stationner (ce qui, quand on connaît Gaston, n\'est pas très étonnant).', '', 325, 2, 5),
(23, 'Les Dalton à cheval', 'LuckyLuke/DaltonCheval.jpg', 'Cette statuette en résine inspirée d\'une illustration de 1963 pour un album de coloriage paru aux Editions Dupuis a été créée par Fariboles Productions en partenariat avec La Marque Zone (LMZ Collection).', 'Dimensions de la figurine : 37 x 17 x 30cm Dimensions de la boîte : 34 x 48 x 16cm Matière : résine', 170, 3, 5),
(24, 'Jane', 'LuckyLuke/Jane.jpg', 'Même si elle n\'apparaît que très peu dans la série, Calamity Jane a marqué les esprits. Redécouvrez ce grand personnage des aventures de Lucky Luke avec cette superbe figurine !', 'Année : 2019 <br>Fabricant : Fariboles <br>Editeur : Zédibulle Hauteur : 25 cm', 179, 3, 10),
(25, 'Joe Dalton', 'LuckyLuke/JoeDalton.jpg', 'Joe Dalton est représenté ici comme s\'échappant d\'une pile d\'albums, un revolver à la main ! Quel mauvais coup a-t-il encore préparé ?', 'Hauteur : 5 cm\r\nLargeur : 5,5 cm\r\nFigurine en plomb et peinte à la main', 435, 3, 10),
(27, 'Rantanplan', 'LuckyLuke/LuckyCharette.jpg', 'Avec son énorme truffe noire et son air aussi benêt qu\'adorable, on en oublierait presque qu\'il est\r\ncensé être le redoutable chien de garde du pénitencier !', '', 324, 3, 10),
(28, 'Lucky Luke', 'LuckyLuke/LuckyLuke.jpg', 'Lucky Luke bondit sur Jolly Jumper, qui l\'attendait patiemment près du point d\'attache, et s\'apprête à se mettre en route vers de nouvelles aventures.', '', 17, 3, 10),
(29, 'Lucky Luke', 'LuckyLuke/Luke.jpg', 'Statuette en résine inspirée de l\'aventure de Lucky Luke \"Sur la piste des Dalton\" (1960).Inspirée de l\'oeuvre de Morris & Goscinny, cette statuette a été créée par Fariboles Productions.', '', 17, 3, 5),
(30, 'Ma Dalton', 'LuckyLuke/MaDalton.jpg', 'Oui c\'est bien elle ! La redoutable génitrice des non moins redoutables Daltons ! Elle leur a généreusement légué les pires aspects de sa propre personne : la méchanceté, la convoitise, la sournoiserie ! ', '', 145, 3, 5),
(31, 'Mathias Bones', 'LuckyLuke/MathiasBones.jpg', 'Vêtu de son solennel costume noir et tenant son ruban mètre à la verticale, les yeux fermés et esquissant un léger sourire, il se délecte déjà de la bonne odeur de la mort, du costume en sapin et de la terre recouvrant un cercueil tout juste refermé.', '', 170, 3, 5),
(32, 'Rantanplan', 'LuckyLuke/Rantanplan.jpg', 'Plus bête que Rantanplan, plus méchant que Joe Dalton, est-ce possible ? Evidemment non : nous tenons-là deux champions ! On ne sait pas lequel, du coup de masse perfide ou du coup de langue servile, va partir en premier... ', '', 110, 3, 5),
(33, 'Spirou', 'Spirou/Spirou.jpg', 'Retrouvez le plus célèbre groom de la bande dessinée sur ce superbe buste en trois dimensions ! Le visuel utilisé pour la création de ce buste est issu du numéro 51 \"Alerte aux Zorkons\", de Yoann et Vehlmann.', '', 49, 4, 5),
(34, 'Cam & Leon', 'Spirou/cameleon.jpg', 'Le Marsupilami, ce cher petit animal, a disparu... Que ne feraient Spirou, Fantasio et Spip pour le retrouver, puis l\'extirper des griffes de l\'affreux Zabaglione, directeur de cirque cupide et voleur ?', '', 17, 4, 4),
(35, 'Spirou le groom vert', 'Spirou/SpirouVert.jpg', 'Le \"bel\" uniforme fourni par les boches ? Il en a déjà fait une loque ! Godfermillard de nom de djue ! Il ne sera pas dit que le petit groom va se laisser piétiner par la botte allemande! Tudju ! Un sacré castard, ce Spirou !', '', 17, 4, 10),
(36, 'Spirou hommage Lucky Luke', 'Spirou/SpirouLuckyLuck.jpg', 'Décidément Spirou est un personnage qui a la classe ! Tout lui va ! Habituellement tiré à quatre épingles, il s\'est déguisé en cow-boy pour une occasion toute particulière : fêter les 70 ans (oui , septante !!) de son pote Lucky Luke', '', 17, 4, 4),
(37, 'Vertignasse', 'Spirou/Spirou&Fantasio.jpg', 'Mais de qui se moque-t-il ? Entre le Petit Spirou et son ami Vertignasse, c\'est “à la vie à la mort”, mais cela n\'empêche pas de garder un certain sens critique.', '', 17, 4, 5),
(38, 'Spirou', 'Spirou/Zorglub.jpg', 'Génie mégalomane, méchant au bon coeur, inventeur surdoué tant dans le domaine des sciences que du langage, Zorglub s\'attire immanquablement les faveurs des lecteurs par ses échecs répétés dans sa conquête du monde', '', 177, 4, 5),
(39, 'Les Dupondt', 'Tintin/dupondt.jpg', 'Quelle arrivée fracassante dans les aventures de Tintin ! Voyons Les Dupondt ce n\'est pas de cette manière que vous le retrouverez ce cher Tintin !', '', 230, 5, 5),
(40, 'Capitaine Haddock', 'Tintin/Haddock.jpg', 'Redécouvrez le Capitaine Haddock avec cette figurine de collection Moulinsart. On retrouve l\'uniforme du Capitaine : ce fameux col-roulé bleu, sa veste noire et sa casquette de marin qui ne le quittent jamais', '', 17, 5, 5),
(41, 'Nestor Plateau', 'Tintin/Nestor.jpg', 'Année d\'édition :2001<br>\r\nAuteur(s) :Hergé<br>\r\nHauteur :H 28 cm<br>\r\nMatière :Résine\r\n\r\n', '', 17, 5, 4),
(44, 'Tintin en route !', 'Tintin/tintinEnRoute.jpg', 'Contrairement à son créateur, Tintin a voyagé partout dans le monde. Il a visité de nombreux pays tels que le Congo, la Chine, l\'Egypte, les Etats-Unis ou encore le Tibet et il est même allé jusque sur la Lune !', '', 17, 5, 5),
(45, 'Tintin et Milou', 'Tintin/TintinMilou.jpg', 'Comme à son habitude, notre reporter est toujours prêt pour de nouvelles péripéties. Il revient tout juste de Chine pour repartir en Amazonie ! Mais nous ne vous en dirons pas plus...', '', 17, 5, 5),
(46, 'Dans la potiche', 'Tintin/tintinVase.jpg', 'Figurine de collection en résine Moulinsart: Tintin et Milou dans la potiche du Lotus bleu, collection \"Les icônes\". Livré en boîte, accompagné d’un certificat d’authenticité numéroté. Hauteur: 20cm.', '', 170, 5, 5),
(47, 'Haddock et Tournesol Lune', 'Tintin/Tournesol&Haddock.jpg', 'La figurine est en résine. Elle fait partie de la collection « Lune », de même que Tintin et Milou cosmonautes.', '', 17, 5, 5),
(48, 'Tournesol', 'Tintin/Tournesol.jpg', 'Tournesol déambule en étudiant son pendule. Le guidera-t-il à travers l\'exposition du musée imaginaire des aventures de Tintin ?', '', 165, 5, 5),
(49, 'Bill & Pouf', 'Boule&Bill/Bill&Pouf.jpg', 'Serait-ce une course des indiens contre les cow-boys ou Bill en voudrait-il à Pouf ?  Tirage limité à 40 exemplaires.', 'Matière : résine. <br>Format : 11,5 x 8 x 19 cm. <br>Caractéristiques : Modélisation 3D réalisée par David Arnould. Moulée, assemblée et peinte à la main.', 165, 6, 5),
(50, 'Boule et Bill', 'Boule&Bill/Boule&Bil.jpg', 'Les meilleurs amis en pleine action !D\'après l\'univers de Boule & Bill par Roba  Leblon-Delienne  EAN : 3700677944559  H: 23 cm  1 500 exemplaires, en résine.', '', 165, 6, 4),
(51, 'Caroline', 'Boule&Bill/Caroline.jpg', 'Mais qu\'ont encore fait Boule et Bill pour provoquer une telle hilarité ! Caroline la tortue de la famille, douce, rigolote, insomniaque et fan de bobsleigh, est follement amoureuse de Bill…', '', 165, 6, 4),
(52, 'Boule & Bill à la neige', 'Boule&Bill/NeigeBoule.png', 'Cette statuette est une exclusivité La Marque Zone. Elle a été sculptée par Quentin Soubrouillard et réalisée par l\'atelier Phoenix Effect, en France.  Sortez moufles et bonnets et rejoignez Boule et Bill !', '', 150, 6, 5),
(53, 'La mère énervée', 'Boule&Bill/boulePeche.jpg', 'Qu\'ont fait encore les deux chenapans pour plonger une personne si douce et si aimante dans un tel état ? Cette pièce vient compléter la scène de la punition au coin.', '', 150, 6, 5),
(54, 'Boule & Bill en voiture !', 'Boule&Bill/VehiculeBoule.jpg', 'Caisse à savon ?Caisse à roulettes ? Planches et roues de récup, clous, volant emprunté, freins douteux quand existants,  peinture à l’arrache. Quel gamin ne s’est pas bricolé le bolide de rêve, essayé en pleine rue à l’insu de l’autorité familiale ?', '', 150, 6, 5),
(55, 'La baignade !', 'Boule&Bill/baignade.jpg', 'Une scène cocasse tirée de \"L\'album de famille de Boule et Bill\"  Figurine en résineHauteur : 24cm', '', 150, 6, 5),
(56, 'Boule & Bill punis', 'Boule&Bill/boulepunis.jpg', '', '', 150, 6, 5),
(57, 'Tintin le sous-marin requin', 'Tintin/requin.jpg\r\n', 'Après \"La potiche\", c\'est au tour du \"Sous-marin requin\" de venir compléter la collection \"Les icônes\" de Moulinsart. Chaque pièce fonctionne bien entendu indépendamment.', '', 147, 5, 5),
(58, 'Tintin et Milou a la maison', 'Tintin/Maison.jpg\r\n', 'Cette scène reproduit la case 14 de la planche 2 de L\'oreille cassée, 6ème album des Aventures de Tintin. \"Curieuse coïncidence, ne trouves-tu pas, Milou ?... Il s\'en moque : il dort. Eh bien ! Je vais l\'imiter\", déclare le journaliste.', '', 129, 5, 5),
(59, 'Jules Cesar', 'Asterix/julescesar.jpg\r\n', 'Redécouvrez le personnage de Jules César grâce à cette sublime figurine de chez Fariboles. Grâce à sa posture, on reconnait son air supérieur et l\'orgueil d\'un homme de pouvoir.', '', 1470, 1, 5),
(60, 'Olibrius', 'Asterix/Olibrius.jpg\r\n', 'Olibrius, célèbre légionnaire romain, qui, de retour de sa première patrouille comprendra vite ce qu\'est la vie de légionnaire. A grands coups de gifles, son mot d\'ordre : fuir les Gaulois ', '', 1470, 1, 5),
(61, 'Assurancetourix', 'Asterix/Assurancetourix.jpg', 'Assurancetourix est une figure importante, surtout en tant qu\'éternel souffre-douleur des habitants d\'un village !', '', 1470, 1, 5),
(63, 'Père de Boule énervée', 'Boule&Bill/PereEnerve.jpg', '', '', 1470, 6, 10),
(66, 'Ming Li foo', 'LuckyLuke/minglifoo.jpg', 'La sculpture a été réalisée par Alban FICAT. Elle représente le savoureux personnage Ming Li Foo.', '', 1470, 3, 5),
(67, 'Bill', 'Boule&Bill/bill.jpg', '', '', 1470, 6, 5),
(69, 'Maire', 'Spirou/Maire.jpg', 'Chut, ne faites plus un bruit, vous risquerez d\'interrompre le maire de Champignac en Cambrousse en plein discours !*                    ', '                    ', 17, 4, 8),
(70, 'L\'enlèvement', 'Spirou/ZorglubGang', '« L\'Enlèvement », est le second triptyque issu des aventures de Spirou & Fantasio par Jean-Claude Fournier. Cette somptueuse saynète est la fidèle reproduction en 3D d\'une case de la planche 11A de l\'album « Le Faiseur d\'or »', '', 1470, 4, 5),
(71, 'Fantasio Hommage Lucky Luke', 'Spirou/FantasioLucky.png', 'Un petit mot de Raiarox:\r\n\"Cette pièce a été sculptée en Corse ! Pascal l\'a crée pendant ses congés ...le matin de bonne heure\r\n, et je sais pas pour vous ...mais moi je le ressens dans la pièce ! Du très grand Pascal !!! Merci à lui\r\n!\"', '', 17, 4, 5),
(72, 'Dupilon', 'Spirou/Dupilon.jpg', 'Personnage secondaire de Spirou et Fantasio, Célestin Dupilon habite Champignac et est continuellement ivre.                                                                                ', '                                                                                ', 171, 4, 10);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `last_name`, `first_name`, `email`, `password`, `is_admin`) VALUES
(21, 'dupondt', 'jacques', 'meryl.elfassy@outlook.fr', '$argon2i$v=19$m=1024,t=2,p=2$UGU1YXkxVDRkM1F2MW8vbQ$14eFLtMxvsR7+VSyl6yqFMRQOUfe6EcjB1+ibnwY0V0', 1),
(30, 'ELFASSY', 'Amanda', 'essayons', '$argon2i$v=19$m=1024,t=2,p=2$MzRiWlV6bUdraFJFWjN1Sg$5zDqvFejbZ4dX7Krj+N9yk+kZpDY4cTZS6Aw7vMBxwg', 0),
(39, 'zz', 'zz', 'zz', '$argon2i$v=19$m=1024,t=2,p=2$a2FxZzc3eURodjB1YUdpOQ$m4B3xcNGCANQWQbs31lr8OuLbowwoAsq+dCxMp5izuc', 0),
(47, 'Elfassy', 'Amanda', 'amanda.elfassy@gmail.com', '$argon2i$v=19$m=1024,t=2,p=2$US9hOEpYSXgxc01XWld3Qg$7vxM8w1Ho+d6DN0oNo9dCPPPphcfZYUOkaiCk9ncfRk', 0),
(48, 'okay', 'okay', 'okay', '$argon2i$v=19$m=1024,t=2,p=2$ZFYzL0s5UTFxTE1PcktXbg$wdco+G+b4s3yjQjH6N6egs8OMQYw/Su1YxtZYpWU36M', 0),
(49, 'Elfassy', 'Amanda', 'amanda.elfassy@outlook.fr', 'amandaa', 0),
(50, 'aa', 'aa', 'aa', '$2y$10$XnaUwkBFQj6cJRhIcBvdcuHRP0y5nwcJpZ1mC8vXwvHLU5xp2zOWW', 1),
(51, 'Elfassy', 'Meryl', 'meryl.elfassy@hotmail.fr', '$argon2i$v=19$m=1024,t=2,p=2$cUFPSDZGZmZ3N2MuQU90Qw$M0mNDHplf4dbq44ouhBGwGSWecoBySuylvukM4S0e0k', 0),
(52, 'maximus', 'maximus', 'maximus', '$argon2i$v=19$m=1024,t=2,p=2$Q2tXTmI4N2lLTGhWT2ZrMA$/pK60zc7NchQzhpH3Mx25ZlrUbefPdWT14Y86vBvQqw', 0),
(53, 'test', 'test', 'test', '$argon2i$v=19$m=1024,t=2,p=2$Y0YyY3FmOHl5TEJGQnZXZA$aZF/CiTTnRORBXHjkUNXZL3fZ7mFFOsEVMpbLoXRqis', 0),
(54, 'user', 'user', 'user', '$argon2i$v=19$m=1024,t=2,p=2$aWRPUTcyOGpwMDlMLlkzdg$CnK5BoJRf+fT8Ylb1UH9F2vzUUjyITCNQZNd1BCFWDI', 0),
(57, 'ok', 'ok', 'ok', '$2y$10$jvd0RwaqlbN8GW4h1nauEOuwRUx5EqA50WTTqiWi9PE6ve6N0ziAa', 0),
(58, 'jacque', 'jean', 'essai', '$argon2i$v=19$m=1024,t=2,p=2$UTB1UnRLM1lDVi92VFBhaw$BYt8A2ufsO3HF/wq+Oj2wY+5CJ7x/Wetblbxx9/0s8U', 0),
(59, 'elfassy', 'valerie', 'val@outlook.fr', '$argon2i$v=19$m=1024,t=2,p=2$cGVWenpVb0phYUFFZ0hvQg$8cVfOck1GI8KOqrTrpqG5Tp0LQs9o3YFFBeDCiBTDjw', 0),
(60, 'ariel', 'ariel', 'ariel', '$argon2i$v=19$m=1024,t=2,p=2$MWhGdFpuWFIvVzlSYk9jRw$+m3mBhLz8WxWhES8SDi6lDqwqQNkAYM9JuEiuJ1HMx0', 0);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `productsimage_id` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `orders_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `category_link` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
