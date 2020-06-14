-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 14 juin 2020 à 18:56
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bd`
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Asterix', 'fgetzt'),
(2, 'Gaston Lagaffe', 'trhry'),
(3, 'Lucky Luke', 'dfe'),
(4, 'Spirou', ''),
(5, 'Tintin', ''),
(6, 'Boule & Bill', '');

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE IF NOT EXISTS `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `products_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_image_id` (`products_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `image`
--

INSERT INTO `image` (`id`, `name`, `products_id`) VALUES
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
(40, 'LuckyLuke/LuckyCharette3.jpg', 27),
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
(66, 'Asterix/Asterix&Obelix3.jpg', 3),
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
(133, 'Boule&Bill/VehiculeBoule3.jpg', 54);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `delivery_address` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `delivery_address`, `date`) VALUES
(3, 21, 'oezairhg', '2020-06-10 21:47:00'),
(4, 21, 'zerg', '2020-06-10 21:47:32'),
(5, 21, 'hhjkh', '2020-06-10 22:19:52'),
(6, 21, 'jdkejeofkef', '2020-06-10 22:24:25'),
(7, 21, 'ca marche ', '2020-06-11 00:18:31'),
(8, 21, 'aa', '2020-06-11 00:35:57'),
(9, 21, 'aa', '2020-06-11 00:38:26'),
(10, 21, 'aa', '2020-06-11 00:40:29'),
(11, 21, 'super!', '2020-06-11 11:14:36'),
(12, 21, 'oo', '2020-06-11 11:21:59'),
(13, 21, 'yoo', '2020-06-11 11:51:52'),
(14, 21, 'ca marche ?', '2020-06-11 11:53:43'),
(15, 21, 'okay', '2020-06-11 14:19:19'),
(16, 21, 'oaky', '2020-06-12 20:21:42'),
(17, 21, 'zz', '2020-06-12 20:24:25'),
(18, 21, 'essaiee', '2020-06-12 20:32:42'),
(19, 21, 'yess', '2020-06-14 00:08:37'),
(20, 21, 'okay', '2020-06-14 13:04:33');

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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `order_products`
--

INSERT INTO `order_products` (`id`, `name`, `price`, `quantity`, `order_id`) VALUES
(7, 'Prunelle', 131, 4, 3),
(8, 'Jane', 179, 5, 3),
(9, 'Gaston & Jeanne', 170, 1, 3),
(10, 'Prunelle', 131, 4, 4),
(11, 'Jane', 179, 5, 4),
(12, 'Gaston & Jeanne', 170, 1, 4),
(13, 'Spirou', 17, 2, 5),
(14, 'Prunelle', 131, 1, 6),
(15, 'Gaston & le Taxi', 325, 3, 6),
(16, 'Mlle Jeanne', 145, 1, 7),
(17, 'Spirou le groom vert', 17, 1, 8),
(18, 'Bugs Bunny', 17, 2, 9),
(19, 'Jane', 179, 1, 10),
(20, 'Prunelle', 131, 1, 11),
(21, 'Joe Dalton', 435, 3, 11),
(22, 'Prunelle', 131, 1, 12),
(23, 'Joe Dalton', 435, 3, 12),
(24, 'Asterix & Obelix', 339, 1, 12),
(25, 'Asterix & Obelix', 339, 2, 13),
(26, 'Asterix & Obelix', 339, 3, 14),
(27, 'Joe Dalton', 435, 3, 15),
(28, 'Cam & Leon', 17, 2, 16),
(29, 'Cam & Leon', 17, 2, 17),
(30, 'Nestor au plumeau', 17, 1, 17),
(31, 'Boule & Bill en baignade', 150, 1, 17),
(32, 'Cam & Leon', 17, 2, 18),
(33, 'Nestor au plumeau', 17, 1, 18),
(34, 'Boule & Bill en baignade', 150, 1, 18),
(35, 'Tintin Cow Boy', 17, 1, 18),
(36, 'Asterix & Obelix', 339, 2, 19),
(37, 'Mlle Jeanne', 145, 3, 20);

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
  `price` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `description`, `short_description`, `price`, `category_id`, `quantity`) VALUES
(1, 'Abraracourcix', 'Asterix/Abraracourcix.jpg ', 'Get the lastest and trending web development project\'s source code, first see preview if you need then get the code.\r\n                                        ', '                    ', 245, 1, 6),
(3, 'Asterix & Obelix', 'Asterix/Asterix&Obelix.jpg', 'Voici une statuette de Astérix et Obélix, issue de l\'univers d\'Asterix, un personnage supplémentaire pour compléter la galerie issue de l\'univers du plus fameux Gaulois ! Vous en avez rêvé et Leblon-Delienne l\'a fait !', 'Cereal reese travis scott', 339, 1, 3),
(4, 'Asterix', 'Asterix/asterix.jpg', 'Sur cette figurine, Astérix lit l\'une de ses meilleures aventures : \"Astérix chez les Bretons\".Figurine CollectoysAnnée : 2018Matière : résineDimensions : 21 x 14 x 23,5 cm', 'azaear', 435, 1, 5),
(5, 'Bonemine', 'Asterix/Bonemine.jpg', 'Retrouvez Bonemine en figurine sur CollectorBD !Elle est en train de coudre, assise sur un tabouret. Le sourcil levé, elle écoute attentivement ce qui se passe autour d\'elle', 'zeaztr', 220, 1, 5),
(6, 'Legionnaire', 'Asterix/Legionnaire.jpg', 'Une superbe figurine d\'une vingtaine de centimètres de haut, en résine. Cette magnifique statuette représente les deux héros tels qu\'ils sont dessinés sur la couverture du mythique album : Astérix légionnaire.', 'gfshf', 320, 1, 5),
(7, 'Obelix', 'Asterix/obelix.jpg', 'Comme il est tombé dans le chaudron de potion magique quand il était petit, cette pile d\'albums des aventures des Gaulois n\'est pas plus lourde qu\'un menhir !', '', 123, 1, 5),
(8, 'Agecanonix', 'Asterix/vieuxAsteric.jpg', 'D\'après l\'univers d\'Astérix et Obélix par Uderzo et Goscinny.  Hauteur : 12 cm.  Tirage limité à 350 exemplaires.', '', 226, 1, 5),
(9, 'Agent Longtarin', 'GastonLagaffe/AgentLongtarin.jpg', 'Son air aussi hagard que goguenard nous laisse présager le pire : un PV est sûrement prêt a être servi ! Mais la panoplie de L\'Agent Longtarin ne saurait être complète sans son parcmètre.', '', 330, 2, 5),
(10, 'Mlle Jeanne', 'GastonLagaffe/Cactus.jpg', 'Nous connaissions Gaston pour ses nombreux déguisements et notamment celui du cactus mais vous, Mlle Jeanne, c\'est une première !', 'Sculpteur : Pascal Rodier <br>\r\nHauteur : 20 cm <br>\r\nMatière : résine <br>\r\n Année d\'édition : 2007', 145, 2, 5),
(11, 'Prunelle', 'GastonLagaffe/Prunellee.jpg', 'Qui d\'autre que Gaston pourrait être sommé de rappliquer par Prunelle de cette façon ?! Qui veut parier que Gaston a encore eu une idée géniale ?', 'Sculpteur : Pascal Rodier Hauteur : 21 cm Matière : Résine Année d\'édition : 2005 Tirage : 750 exemplaires', 131, 2, 5),
(13, 'Gaston & Marsupilami', 'GastonLagaffe/Gaston&Marsupilami.jpg', ' Gaston, aurais-tu confondu ton lit avec celui des bébés Marsupilami ? Cela nous donnerait presque envie d\'aller roupiller dans ce joli nid de plumes, très douillet, surtout en présence des bébés Marsupilami !', ' Figurine en résine - scène prestige Figurine montée sur un socle ovale noir. Taille : 31cm.*', 139, 2, 5),
(14, 'Panoramix', 'Asterix/Panoramix.jpg', 'Retrouvez le grand Panoramix, druide vénérable du Village, détenteur du savoir, et notamment du secret de la potion magique dont il a lui-même créé la recette !', '', 234, 1, 5),
(15, 'Agecanonix', 'Asterix/Agecanonix.png', 'D\'après l\'univers d\'Asterix d\'Uderzo et Goscinny.  Sculpteur : Pascal Rodier Auteur(s) : Uderzo et Goscinny Hauteur : 18 cm Matière : Résine  Tirage : 350 ex. accompagnés d\'un certificat.', '', 136, 1, 5),
(16, 'Gaston & Jeanne', 'GastonLagaffe/gason&Jeanne.jpg', 'Nous connaissons sa dextérité - parfois approximative - au volant de sa FIAT mais qu\'en est-il d\'un deux roues motorisé ? Mlle Jeanne, en tout cas, est prête à le découvrir. ', 'Collection Le Garage de Franquin par Figures & vous Matière : Résine et métal Longueur : 17 cm', 170, 2, 5),
(17, 'Gaston', 'GastonLagaffe/gaston.jpg', 'La posture, la gaieté et la malice de Gaston ont immédiatement séduits le sculpteur de chez BC Arts design qui a choisi de le représenter et de l\'interpréter en compagnie de son célèbre chat.', 'Format : 36 cm + socle. <br>\r\nPoids : 6 kg <br>\r\nMatière : résine composite. \r\n', 130, 2, 5),
(18, 'Gaston Car', 'GastonLagaffe/GastonCar.jpg', 'Cette figurine a été conçue en exclusivité par Raiarox. Le concept étant de mélanger une figurine à la façon Fariboles dans un véhicule à la mode, l\'auto tamponneuse, par CG Models.', 'Hauteur : 20 cm <br> Matière : Métal et Résine <br> Exclusivité Raiarox <br>Fabrication : Fariboles / CG <br>Model  Tiré à 200 exemplaires et livré dans un coffret en bois sérigraphié', 169, 2, 5),
(19, 'Gaston et Fantasio, l\'innondation', 'GastonLagaffe/gastonChat.jpg', 'Positionnés sur ce bloc de résine, Gaston, allongé sur son matelas pneumatique, dort tranquillement tandis que Fantasio, furieux, défait le bouchon retenant l\'air à l\'intérieur de ce même matelas.\r\n', 'D\'après l\'univers de Gaston Lagaffe par Franquin. <br> Hauteur : 18cm <br>Matière : résine', 214, 2, 5),
(20, 'Caisse Fragile', 'GastonLagaffe/GastonCaisseFragile.jpg', 'Qu\'est ce qui a donc ému aux larmes notre cher Gaston ? Un rendez-vous annulé par Mademoiselle Jeanne ou une énième réprimande de l\'agent Longtarin ?', 'Année d\'édition : 2018 <br> Hauteur: 12 cm <br> Matière: résine Peinte à la main', 346, 2, 5),
(21, 'Prunelle', 'GastonLagaffe/Prunelle.jpg', 'Qui aurait pu l\'imaginer se prélasser dans un fauteuil avec un verre à la main ? Rien à voir avec le rédacteur en chef stressé et torturé qui arpente les bureaux du Journal de Spirou.', 'Sculpteur: Pascal Rodier <br> Hauteur : 11 cm <br> Matière : Résine Peinte à la main <br> Exclusivité Raiarox Passion', 177, 2, 5),
(22, 'Gaston & le Taxi', 'GastonLagaffe/TaxiGaston.jpg', 'La figurine représente Gaston, devant son Taxi qui tend ses clés. Il est garé devant un panneau interdit de stationner (ce qui, quand on connaît Gaston, n\'est pas très étonnant).', '', 325, 2, 5),
(23, 'Les Dalton à cheval', 'LuckyLuke/DaltonCheval.jpg', 'Cette statuette en résine inspirée d\'une illustration de 1963 pour un album de coloriage paru aux Editions Dupuis a été créée par Fariboles Productions en partenariat avec La Marque Zone (LMZ Collection).', 'Dimensions de la figurine : 37 x 17 x 30cm Dimensions de la boîte : 34 x 48 x 16cm Matière : résine', 170, 3, 5),
(24, 'Jane', 'LuckyLuke/Jane.jpg', 'Même si elle n\'apparaît que très peu dans la série, Calamity Jane a marqué les esprits. Redécouvrez ce grand personnage des aventures de Lucky Luke avec cette superbe figurine !', 'Année : 2019 <br>Fabricant : Fariboles <br>Editeur : Zédibulle Hauteur : 25 cm', 179, 3, 5),
(25, 'Joe Dalton', 'LuckyLuke/JoeDalton.jpg', 'Joe Dalton est représenté ici comme s\'échappant d\'une pile d\'albums, un revolver à la main ! Quel mauvais coup a-t-il encore préparé ?', 'Hauteur : 5 cm\r\nLargeur : 5,5 cm\r\nFigurine en plomb et peinte à la main', 435, 3, 5),
(26, 'Lucky Luke', 'LuckyLuke/lucky.jpg', 'Un tonneau, la rue déserte d\'une ville fantôme du Far West, un soleil de plomb et très certainement quelques tireurs embusqués çà et là bien décidés à avoir la peau de \"L\'homme qui tire deux fois plus vite que son ombre\"', 'Un tonneau, la rue déserte d\'une ville fantôme du Far West, un soleil de plomb et très certainement quelques tireurs embusqués çà et là bien décidés à avoir la peau de \"L\'homme qui tire deux fois plus vite que son ombre\"', 172, 3, 5),
(27, 'Luky Luke ', 'LuckyLuke/LuckyCharette.jpg', 'Format : 42 x 17 cm\r\nMatière : Métal (socle en bois)\r\nFigurine Pixi peinte à la main\r\n\r\nTirage limité à 130 exemplaires numérotés accompagnés de leur certificat d\'authenticité', 'onePiece shanks & Luffy', 324, 3, 5),
(28, 'Lucky Luke', 'LuckyLuke/LuckyLuke.jpg', 'Lucky Luke bondit sur Jolly Jumper, qui l\'attendait patiemment près du point d\'attache, et s\'apprête à se mettre en route vers de nouvelles aventures.', '', 17, 3, 0),
(29, 'Lucky Luke', 'LuckyLuke/Luke.jpg', 'Statuette en résine inspirée de l\'aventure de Lucky Luke \"Sur la piste des Dalton\" (1960).Inspirée de l\'oeuvre de Morris & Goscinny, cette statuette a été créée par Fariboles Productions.', '', 17, 3, 5),
(30, 'Ma Dalton', 'LuckyLuke/MaDalton.jpg', 'Oui c\'est bien elle ! La redoutable génitrice des non moins redoutables Daltons ! Elle leur a généreusement légué les pires aspects de sa propre personne : la méchanceté, la convoitise, la sournoiserie ! ', '', 17, 3, 5),
(31, 'Mathias Bones le croque mort', 'LuckyLuke/MathiasBones.jpg', 'Vêtu de son solennel costume noir et tenant son ruban mètre à la verticale, les yeux fermés et esquissant un léger sourire, il se délecte déjà de la bonne odeur de la mort, du costume en sapin et de la terre recouvrant un cercueil tout juste refermé.', '', 17, 3, 5),
(32, 'Rantanplan', 'LuckyLuke/Rantanplan.jpg', 'Plus bête que Rantanplan, plus méchant que Joe Dalton, est-ce possible ? Evidemment non : nous tenons-là deux champions ! On ne sait pas lequel, du coup de masse perfide ou du coup de langue servile, va partir en premier... ', '', 17, 3, 5),
(33, 'Gaston Lagaffe', 'Spirou/Spirou.jpg', '', '', 17, 4, 5),
(34, 'Cam & Leon', 'Spirou/cameleon.jpg', 'Le Marsupilami, ce cher petit animal, a disparu... Que ne feraient Spirou, Fantasio et Spip pour le retrouver, puis l\'extirper des griffes de l\'affreux Zabaglione, directeur de cirque cupide et voleur ?', '', 17, 4, 5),
(35, 'Spirou le groom vert', 'Spirou/SpirouVert.jpg', 'Le \"bel\" uniforme fourni par les boches ? Il en a déjà fait une loque ! Godfermillard de nom de djue ! Il ne sera pas dit que le petit groom va se laisser piétiner par la botte allemande! Tudju ! Un sacré castard, ce Spirou !', '', 17, 4, 5),
(36, 'Spirou hommage Lucky Luke', 'Spirou/SpirouLuckyLuck.jpg', 'Décidément Spirou est un personnage qui a la classe ! Tout lui va ! Habituellement tiré à quatre épingles, il s\'est déguisé en cow-boy pour une occasion toute particulière : fêter les 70 ans (oui , septante !!) de son pote Lucky Luke', '', 17, 4, 5),
(37, 'Vertignasse', 'Spirou/Spirou&Fantasio.jpg', 'Mais de qui se moque-t-il ? Entre le Petit Spirou et son ami Vertignasse, c\'est “à la vie à la mort”, mais cela n\'empêche pas de garder un certain sens critique.', '', 17, 4, 5),
(38, 'Spirou', 'Spirou/Zorglub.jpg', 'Génie mégalomane, méchant au bon coeur, inventeur surdoué tant dans le domaine des sciences que du langage, Zorglub s\'attire immanquablement les faveurs des lecteurs par ses échecs répétés dans sa conquête du monde', '', 17, 4, 5),
(39, 'Les Dupondt', 'Tintin/dupondt.jpg', 'Quelle arrivée fracassante dans les aventures de Tintin ! Voyons Les Dupondt ce n\'est pas de cette manière que vous le retrouverez ce cher Tintin !', '', 17, 5, 5),
(40, 'Bugs Bunny', 'Tintin/Haddock.jpg', 'Redécouvrez le Capitaine Haddock avec cette figurine de collection Moulinsart. On retrouve l\'uniforme du Capitaine : ce fameux col-roulé bleu, sa veste noire et sa casquette de marin qui ne le quittent jamais', '', 17, 5, 5),
(41, 'Nestor au plumeau', 'Tintin/Nestor.jpg', 'Sur cette figurine, Nestor porte sa tenue rayée jaune et noire, tenue qu\'il a dès sa première apparition.', '', 17, 5, 5),
(42, 'Tintin Cow Boy', 'Tintin/Tintin.jpg', 'Paré pour la grande aventure de l\'Ouest, Tintin tirera-t-il plus vite que son ombre ?<br>Matière : résine.<br>Format : 6 x 7 x 11,5 cm.', '', 17, 5, 5),
(43, 'Tintin et Milou', 'Tintin/tintinAstronaute.jpg', 'Retrouvez Tintin et Milou dans leurs combinaisons spatiales grâce à cette superbe figurine. Fabriquée de manière artisanale, en France, par Fariboles, cette figurine représente les deux héros dans le respect des dessins d\'Hergé.', '', 17, 5, 5),
(44, 'Tintin en route !', 'Tintin/tintinEnRoute.jpg', 'Contrairement à son créateur, Tintin a voyagé partout dans le monde. Il a visité de nombreux pays tels que le Congo, la Chine, l\'Egypte, les Etats-Unis ou encore le Tibet et il est même allé jusque sur la Lune !', '', 17, 5, 5),
(45, 'Tintin et Milou', 'Tintin/TintinMilou.jpg', 'Comme à son habitude, notre reporter est toujours prêt pour de nouvelles péripéties. Il revient tout juste de Chine pour repartir en Amazonie ! Mais nous ne vous en dirons pas plus...', '', 17, 5, 5),
(46, 'Tintin et Milou dans la potiche', 'Tintin/tintinVase.jpg', 'Figurine de collection en résine Moulinsart: Tintin et Milou dans la potiche du Lotus bleu, collection \"Les icônes\". Livré en boîte, accompagné d’un certificat d’authenticité numéroté. Hauteur: 20cm.', '', 17, 5, 5),
(47, 'SuperSaiyan', 'Tintin/Tournesol&Haddock.jpg', 'La figurine est en résine. Elle fait partie de la collection « Lune », de même que Tintin et Milou cosmonautes.', '', 17, 5, 5),
(48, 'Tournesol', 'Tintin/Tournesol.jpg', 'Tournesol déambule en étudiant son pendule. Le guidera-t-il à travers l\'exposition du musée imaginaire des aventures de Tintin ?', '', 165, 5, 5),
(49, 'Bill & Pouf', 'Boule&Bill/Bill&Pouf.jpg', 'Serait-ce une course des indiens contre les cow-boys ou Bill en voudrait-il à Pouf ?  Tirage limité à 40 exemplaires.', 'Matière : résine. <br>Format : 11,5 x 8 x 19 cm. <br>Caractéristiques : Modélisation 3D réalisée par David Arnould. Moulée, assemblée et peinte à la main.', 165, 6, 5),
(50, 'Boule et Bill', 'Boule&Bill/Boule&Bil.jpg', 'Les meilleurs amis en pleine action !D\'après l\'univers de Boule & Bill par Roba  Leblon-Delienne  EAN : 3700677944559  H: 23 cm  1 500 exemplaires, en résine.', '', 165, 6, 5),
(51, 'Caroline', 'Boule&Bill/Caroline.jpg', 'Mais qu\'ont encore fait Boule et Bill pour provoquer une telle hilarité ! Caroline la tortue de la famille, douce, rigolote, insomniaque et fan de bobsleigh, est follement amoureuse de Bill…', '', 165, 6, 5),
(52, 'Boule & Bill à la neige', 'Boule&Bill/NeigeBoule.png', 'Cette statuette est une exclusivité La Marque Zone. Elle a été sculptée par Quentin Soubrouillard et réalisée par l\'atelier Phoenix Effect, en France.  Sortez moufles et bonnets et rejoignez Boule et Bill !', '', 150, 6, 5),
(53, 'Boule & Bill à la pêche', 'Boule&Bill/boulePeche.jpg', '', '', 150, 6, 5),
(54, 'Boule & Bill en voiture !', 'Boule&Bill/VehiculeBoule.jpg', 'Caisse à savon ?Caisse à roulettes ? Planches et roues de récup, clous, volant emprunté, freins douteux quand existants,  peinture à l’arrache. Quel gamin ne s’est pas bricolé le bolide de rêve, essayé en pleine rue à l’insu de l’autorité familiale ?', '', 150, 6, 5),
(55, 'Boule & Bill en baignade', 'Boule&Bill/baignade.jpg', 'Une scène cocasse tirée de \"L\'album de famille de Boule et Bill\"  Figurine en résineHauteur : 24cm', '', 150, 6, 5),
(56, 'Boule & Bill punis', 'Boule&Bill/boulepunis.jpg', '', '', 150, 6, 5),
(57, 'Tintin le sous-marin requin', 'Tintin/requin.jpg\r\n', 'Après \"La potiche\", c\'est au tour du \"Sous-marin requin\" de venir compléter la collection \"Les icônes\" de Moulinsart. Chaque pièce fonctionne bien entendu indépendamment.', '', 147, 5, 5),
(58, 'Tintin et Milou a la maison', 'Tintin/Maison.jpg\r\n', 'Cette scène reproduit la case 14 de la planche 2 de L\'oreille cassée, 6ème album des Aventures de Tintin. \"Curieuse coïncidence, ne trouves-tu pas, Milou ?... Il s\'en moque : il dort. Eh bien ! Je vais l\'imiter\", déclare le journaliste.', '', 129, 5, 5),
(59, 'Jules Cesar', 'Asterix/julescesar.jpg\r\n', 'Redécouvrez le personnage de Jules César grâce à cette sublime figurine de chez Fariboles. Grâce à sa posture, on reconnait son air supérieur et l\'orgueil d\'un homme de pouvoir.', '', 1470, 1, 5),
(60, 'Olibrius', 'Asterix/Olibrius.jpg\r\n', 'Olibrius, célèbre légionnaire romain, qui, de retour de sa première patrouille comprendra vite ce qu\'est la vie de légionnaire. A grands coups de gifles, son mot d\'ordre : fuir les Gaulois ', '', 1470, 1, 5),
(61, 'Assurancetourix', 'Asterix/Assurancetourix.jpg', 'Assurancetourix est une figure importante, surtout en tant qu\'éternel souffre-douleur des habitants d\'un village !', '', 1470, 1, 5),
(63, 'Père de Boule énervée', 'Boule&Bill/PereEnerve.jpg', '', '', 1470, 6, 5),
(64, 'Le roi et les Schtroumpf', 'Boule&Bill/livre.jpg', '', '', 1470, 6, 5),
(65, 'Lucky Luke', 'LuckyLuke/LuckyOmbre.jpg', 'Lucky Luke tire plus vite que son ombre\"', '', 1470, 3, 5),
(66, 'Ming Li foo', 'LuckyLuke/minglifoo.jpg', 'La sculpture a été réalisée par Alban FICAT. Elle représente le savoureux personnage Ming Li Foo.', '', 1470, 3, 5),
(67, 'Bill', 'Boule&Bill/bill.jpg', '', '', 1470, 6, 5),
(68, 'Bill', 'Boule&Bill/boule&co.jpg', '', '', 1470, 6, 5),
(69, 'Maire', 'Spirou/Maire.jpg', 'Chut, ne faites plus un bruit, vous risquerez d\'interrompre le maire de Champignac en Cambrousse en plein discours !*', '', 17, 4, 5),
(70, 'L\'enlèvement', 'Spirou/ZorglubGang', '« L\'Enlèvement », est le second triptyque issu des aventures de Spirou & Fantasio par Jean-Claude Fournier. Cette somptueuse saynète est la fidèle reproduction en 3D d\'une case de la planche 11A de l\'album « Le Faiseur d\'or »', '', 1470, 4, 5),
(71, 'Fantasio Hommage Lucky Luke', 'Spirou/FantasioLucky.png', 'Un petit mot de Raiarox:\r\n\"Cette pièce a été sculptée en Corse ! Pascal l\'a crée pendant ses congés ...le matin de bonne heure\r\n, et je sais pas pour vous ...mais moi je le ressens dans la pièce ! Du très grand Pascal !!! Merci à lui\r\n!\"', '', 17, 4, 5),
(72, 'Dupilon', 'Spirou/Dupilon.jpg', 'Personnage secondaire de Spirou et Fantasio, Célestin Dupilon habite Champignac et est continuellement ivre.', '', 170, 4, 5);

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
  `is_admin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `last_name`, `first_name`, `email`, `password`, `is_admin`) VALUES
(11, 'ELFASSY', 'AMANDA', 'okaaa', '$argon2i$v=19$m=1024,t=2,p=2$UzlxdVJncWVPS3ozaEw5SA$bz+LxgK3p9/mZvibxGoq+HO0ELbM0FS34wSu+sf8ghw', NULL),
(12, 'ok', 'ok', 'ok', '$argon2i$v=19$m=1024,t=2,p=2$eGxkejRWSEkuRHd0dDhHSQ$3Bi1/Frs/uzf5Ov9cYZcRbDMY52Hgksve3GGT+7qHms', NULL),
(13, 'jemesensmalsicamarche', 'meryl', 'amanda@gmail.com', '$argon2i$v=19$m=1024,t=2,p=2$ZmN1YjRCZXgyWWVwV3ZyUw$gp6cohQWfNLs4aG6DEXs3gtGUsrCn9ickJpQjuR4PdE', NULL),
(14, 'aaa', 'AMANDA', 'aaaaa', '$argon2i$v=19$m=1024,t=2,p=2$NHlET0xISHhyamd3QlI0NQ$Py+uOjtuS8/na+Ik7RBEHOmd4h8+tr/HJe0ZscTE/pA', NULL),
(15, 'ii', 'ii', 'ii', '$argon2i$v=19$m=1024,t=2,p=2$TEdFaVpOTU9RdkNyL3lvdw$XqXWunEL57ok8sX26VbYDz2VEmJD8YKc7mMYNIYj240', NULL),
(16, 'Elfassy', 'Amanda', 'amanda.elfassy@outlook.fr', '$argon2i$v=19$m=1024,t=2,p=2$bUhDTHFJVDUvZWNuWmthUQ$WOabDs0pdK+Dbd2Nda0WyKT25EhLX7RyYQzXtX+cQvI', NULL),
(17, 'aa', 'aa', 'aa', '$argon2i$v=19$m=1024,t=2,p=2$YmxkTHdDcFFITGJWWFY0MQ$Cn8jg75RUJR+Ex2+nhH+nN9Zl3vMYJc51laiWPCaJuY', NULL),
(18, 'ss', 'ss', 'ss', '$argon2i$v=19$m=1024,t=2,p=2$VGd1YUZYd21FUmxGQ2FtYg$nLJ4KsO8uLZf3KuK+m13qioSdH4mWe8R37ZNDKmrFwo', NULL),
(19, 'ok', 'ook', 'oko', '$argon2i$v=19$m=1024,t=2,p=2$d1pyVnZhM3ZSZk83a3RxQg$0QmMYNAqOWQFhcoB02xtTLMixtNp4btLT/9anFnXN64', NULL),
(20, 'okay', 'okay', 'okay', '$argon2i$v=19$m=1024,t=2,p=2$YkppdDBZcWw0Y0ZSWXFCMA$RZWO2i3Gl9T2W6uBjDhEg9pXjXYJlfa0jiAsPIFvIwg', NULL),
(21, 'Elfassy', 'meryl', 'meryl.elfassy@outlook.fr', '$argon2i$v=19$m=1024,t=2,p=2$UGU1YXkxVDRkM1F2MW8vbQ$14eFLtMxvsR7+VSyl6yqFMRQOUfe6EcjB1+ibnwY0V0', NULL),
(22, 'Klark', 'Amanda', 'amanda.elfassy@gmail.com', '$argon2i$v=19$m=1024,t=2,p=2$d2RoT0M4Q2pyQ2FjM1Bpaw$a2r3ZgyE45vn1+zmYkk2jisW9pGy9383GEI5AG/2rDE', NULL),
(23, 'zz', 'zz', 'zz', '$argon2i$v=19$m=1024,t=2,p=2$T3BkNHBVQVU3RzVSOU43cQ$Sw8QGTRglUdnU0kKH0/oiIr7yfASvuxT/d4PSi/8Nk4', NULL);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `productsimage_id` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `orders_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `category_link` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
