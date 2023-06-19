/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.4.24-MariaDB : Database - superhero
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`superhero` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `superhero`;

/*Table structure for table `alignment` */

DROP TABLE IF EXISTS `alignment`;

CREATE TABLE `alignment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alignment` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `alignment` */

insert  into `alignment`(`id`,`alignment`) values 
(1,'Good'),
(2,'Bad'),
(3,'Neutral'),
(4,'N/A');

/*Table structure for table `attribute` */

DROP TABLE IF EXISTS `attribute`;

CREATE TABLE `attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*Data for the table `attribute` */

insert  into `attribute`(`id`,`attribute_name`) values 
(1,'Intelligence'),
(2,'Strength'),
(3,'Speed'),
(4,'Durability'),
(5,'Power'),
(6,'Combat');

/*Table structure for table `colour` */

DROP TABLE IF EXISTS `colour`;

CREATE TABLE `colour` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `colour` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4;

/*Data for the table `colour` */

insert  into `colour`(`id`,`colour`) values 
(1,'No Colour'),
(2,'Amber'),
(3,'Auburn'),
(4,'Black'),
(5,'Black/Blue'),
(6,'Blond'),
(7,'Blue'),
(8,'Blue/White'),
(9,'Brown'),
(10,'Brown/Black'),
(11,'Brown/White'),
(12,'Gold'),
(13,'Grey'),
(14,'Green'),
(15,'Green/Blue'),
(16,'Hazel'),
(17,'Indigo'),
(18,'Magenta'),
(19,'Orange'),
(20,'Orange/White'),
(21,'Pink'),
(22,'Purple'),
(23,'Red'),
(24,'Red/Black'),
(25,'Red/Grey'),
(26,'Red/Orange'),
(27,'Red/White'),
(28,'Silver'),
(29,'Strawberry Blond'),
(30,'Violet'),
(31,'White'),
(32,'White/Red'),
(33,'Yellow'),
(34,'Yellow/Blue'),
(35,'Yellow/Red');

/*Table structure for table `comic` */

DROP TABLE IF EXISTS `comic`;

CREATE TABLE `comic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comic_name` varchar(200) DEFAULT NULL,
  `issue` int(11) DEFAULT NULL,
  `publish_month` int(11) DEFAULT NULL,
  `publish_year` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `comic` */

/*Table structure for table `gender` */

DROP TABLE IF EXISTS `gender`;

CREATE TABLE `gender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gender` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `gender` */

insert  into `gender`(`id`,`gender`) values 
(1,'Male'),
(2,'Female'),
(3,'N/A');

/*Table structure for table `publisher` */

DROP TABLE IF EXISTS `publisher`;

CREATE TABLE `publisher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publisher_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

/*Data for the table `publisher` */

insert  into `publisher`(`id`,`publisher_name`) values 
(1,''),
(2,'ABC Studios'),
(3,'Dark Horse Comics'),
(4,'DC Comics'),
(5,'George Lucas'),
(6,'Hanna-Barbera'),
(7,'HarperCollins'),
(8,'Icon Comics'),
(9,'IDW Publishing'),
(10,'Image Comics'),
(11,'J. K. Rowling'),
(12,'J. R. R. Tolkien'),
(13,'Marvel Comics'),
(14,'Microsoft'),
(15,'NBC - Heroes'),
(16,'Rebellion'),
(17,'Shueisha'),
(18,'Sony Pictures'),
(19,'South Park'),
(20,'Star Trek'),
(21,'SyFy'),
(22,'Team Epic TV'),
(23,'Titan Books'),
(24,'Universal Studios'),
(25,'Wildstorm');

/*Table structure for table `race` */

DROP TABLE IF EXISTS `race`;

CREATE TABLE `race` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `race` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4;

/*Data for the table `race` */

insert  into `race`(`id`,`race`) values 
(1,'-'),
(2,'Alien'),
(3,'Alpha'),
(4,'Amazon'),
(5,'Android'),
(6,'Animal'),
(7,'Asgardian'),
(8,'Atlantean'),
(9,'Bizarro'),
(10,'Bolovaxian'),
(11,'Clone'),
(12,'Cosmic Entity'),
(13,'Cyborg'),
(14,'Czarnian'),
(15,'Dathomirian Zabrak'),
(16,'Demi-God'),
(17,'Demon'),
(18,'Eternal'),
(19,'Flora Colossus'),
(20,'Frost Giant'),
(21,'God / Eternal'),
(22,'Gorilla'),
(23,'Gungan'),
(24,'Human'),
(25,'Human / Altered'),
(26,'Human / Clone'),
(27,'Human / Cosmic'),
(28,'Human / Radiation'),
(29,'Human-Kree'),
(30,'Human-Spartoi'),
(31,'Human-Vulcan'),
(32,'Human-Vuldarian'),
(33,'Icthyo Sapien'),
(34,'Inhuman'),
(35,'Kakarantharaian'),
(36,'Korugaran'),
(37,'Kryptonian'),
(38,'Luphomoid'),
(39,'Maiar'),
(40,'Martian'),
(41,'Metahuman'),
(42,'Mutant'),
(43,'Mutant / Clone'),
(44,'New God'),
(45,'Neyaphem'),
(46,'Parademon'),
(47,'Planet'),
(48,'Rodian'),
(49,'Saiyan'),
(50,'Spartoi'),
(51,'Strontian'),
(52,'Symbiote'),
(53,'Talokite'),
(54,'Tamaranean'),
(55,'Ungaran'),
(56,'Vampire'),
(57,'Xenomorph XX121'),
(58,'Yautja'),
(59,'Yoda\'s species'),
(60,'Zen-Whoberian'),
(61,'Zombie');

/*Table structure for table `superhero` */

DROP TABLE IF EXISTS `superhero`;

CREATE TABLE `superhero` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `superhero_name` varchar(200) DEFAULT NULL,
  `full_name` varchar(200) DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `eye_colour_id` int(11) DEFAULT NULL,
  `hair_colour_id` int(11) DEFAULT NULL,
  `skin_colour_id` int(11) DEFAULT NULL,
  `race_id` int(11) DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `alignment_id` int(11) DEFAULT NULL,
  `height_cm` int(11) DEFAULT NULL,
  `weight_kg` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sup_align` (`alignment_id`),
  KEY `fk_sup_eyecol` (`eye_colour_id`),
  KEY `fk_sup_gen` (`gender_id`),
  KEY `fk_sup_haircol` (`hair_colour_id`),
  KEY `fk_sup_pub` (`publisher_id`),
  KEY `fk_sup_race` (`race_id`),
  KEY `fk_sup_skincol` (`skin_colour_id`),
  CONSTRAINT `fk_sup_align` FOREIGN KEY (`alignment_id`) REFERENCES `alignment` (`id`),
  CONSTRAINT `fk_sup_eyecol` FOREIGN KEY (`eye_colour_id`) REFERENCES `colour` (`id`),
  CONSTRAINT `fk_sup_gen` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`id`),
  CONSTRAINT `fk_sup_haircol` FOREIGN KEY (`hair_colour_id`) REFERENCES `colour` (`id`),
  CONSTRAINT `fk_sup_pub` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`id`),
  CONSTRAINT `fk_sup_race` FOREIGN KEY (`race_id`) REFERENCES `race` (`id`),
  CONSTRAINT `fk_sup_skincol` FOREIGN KEY (`skin_colour_id`) REFERENCES `colour` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=757 DEFAULT CHARSET=utf8mb4;

/*Data for the table `superhero` */

insert  into `superhero`(`id`,`superhero_name`,`full_name`,`gender_id`,`eye_colour_id`,`hair_colour_id`,`skin_colour_id`,`race_id`,`publisher_id`,`alignment_id`,`height_cm`,`weight_kg`) values 
(1,'3-D Man','Charles Chandler',1,9,13,1,1,13,1,188,90),
(2,'A-Bomb','Richard Milhouse Jones',1,33,1,1,24,13,1,203,441),
(3,'Abe Sapien','Abraham Sapien',1,7,1,7,33,3,1,191,65),
(4,'Abin Sur','-',1,7,1,23,55,4,1,185,90),
(5,'Abomination','Emil Blonsky',1,14,1,1,28,13,2,203,441),
(6,'Abraxas','Abraxas',1,7,4,1,12,13,2,0,0),
(7,'Absorbing Man',NULL,1,7,1,1,24,13,2,193,122),
(8,'Adam Monroe','-',1,7,6,1,1,15,1,0,0),
(9,'Adam Strange','Adam Strange',1,7,6,1,24,4,1,185,88),
(10,'Agent 13','Sharon Carter',2,7,6,1,1,13,1,173,61),
(11,'Agent Bob','Bob',1,9,9,1,24,13,1,178,81),
(12,'Agent Zero','Christoph Nord',1,1,1,1,1,13,1,191,104),
(13,'Air-Walker','Gabriel Lan',1,7,31,1,1,13,2,188,108),
(14,'Ajax',NULL,1,9,4,1,13,13,2,193,90),
(15,'Alan Scott',NULL,1,7,6,1,1,4,1,180,90),
(16,'Alex Mercer','Alexander J. Mercer',1,1,1,1,24,25,2,0,0),
(17,'Alex Woolsly','Alex Woolsly',1,1,1,1,1,15,1,0,0),
(18,'Alfred Pennyworth','Alfred Thaddeus Crane Pennyworth',1,7,4,1,24,4,1,178,72),
(19,'Alien','Xenomorph',1,1,1,4,57,3,2,244,169),
(20,'Allan Quatermain',NULL,1,1,1,1,1,25,1,NULL,NULL),
(21,'Amazo','-',1,23,1,1,5,4,2,257,173),
(22,'Ammo','-',1,9,4,1,24,13,2,188,101),
(23,'Ando Masahashi','Ando Masahashi',1,1,1,1,1,15,1,0,0),
(24,'Angel','Liam',1,1,1,1,56,3,1,0,0),
(25,'Angel','Liam',1,7,6,1,1,13,1,183,68),
(26,'Angel Dust','Christina',2,33,4,1,42,13,1,165,57),
(27,'Angel Salvadore','Angel Salvadore Bohusk',2,9,4,1,1,13,1,163,54),
(28,'Angela','-',2,1,1,1,1,10,2,0,0),
(29,'Animal Man','Bernhard Baker',1,7,6,1,24,4,1,183,83),
(30,'Annihilus','Annihilus',1,14,1,1,1,13,2,180,90),
(31,'Ant-Man','Henry Jonathan Pym',1,7,6,1,24,13,1,211,122),
(32,'Ant-Man II','Scott Lang',1,7,6,1,24,13,1,183,86),
(33,'Anti-Monitor',NULL,1,33,1,1,21,4,2,61,NULL),
(34,'Anti-Spawn','Jason Wynn',1,1,1,1,1,10,2,0,0),
(35,'Anti-Venom','Edward Charles Allan Brock',1,7,6,1,52,13,NULL,229,358),
(36,'Apocalypse','En Sabah Nur',1,23,4,13,42,13,2,213,135),
(37,'Aquababy','Arthur Curry, Jr.',1,7,6,1,1,4,1,0,0),
(38,'Aqualad','Garth',1,7,4,1,8,4,1,178,106),
(39,'Aquaman','Orin',1,7,6,1,8,4,1,185,146),
(40,'Arachne','Julia Carpenter',2,7,6,1,24,13,1,175,63),
(41,'Archangel','Warren Kenneth Worthington III',1,7,6,7,42,13,1,183,68),
(42,'Arclight','Philippa Sontag',2,30,22,1,1,13,2,173,57),
(43,'Ardina','-',2,31,19,12,2,13,1,193,98),
(44,'Ares','-',1,23,4,1,21,4,3,208,162),
(45,'Ares','-',1,9,9,1,1,13,1,185,270),
(46,'Ariel','Ariel',2,22,21,1,1,13,1,165,59),
(47,'Armor','Hisako Ichiki',2,4,4,1,1,13,1,163,50),
(48,'Arsenal','Roy William Harper, Jr.',1,1,1,1,24,4,1,0,0),
(49,'Astro Boy',NULL,1,9,4,1,1,1,1,NULL,NULL),
(50,'Atlas','-',1,7,9,1,21,4,2,198,126),
(51,'Atlas','-',1,9,23,1,42,13,1,183,101),
(52,'Atlas','Erik Stephan Josten',1,7,9,1,21,4,2,198,126),
(53,'Atlas','Erik Stephan Josten',1,9,23,1,42,13,1,183,101),
(54,'Atom','Albert Pratt',1,7,23,1,1,4,1,178,68),
(55,'Atom Girl','Salu Digby',2,4,4,1,1,4,1,168,54),
(56,'Atom II','Raymond Palmer',1,9,3,1,24,4,1,183,81),
(57,'Atom III',NULL,1,1,23,1,1,4,1,NULL,NULL),
(58,'Atom IV','Ryan Choi',1,9,4,1,1,4,1,0,72),
(59,'Aurora','Jeanne-Marie Beaubier',2,7,4,1,42,13,1,180,63),
(60,'Azazel','-',1,33,4,23,45,13,2,183,67),
(61,'Azrael','Michael Washington Lane',1,9,4,1,24,4,1,0,0),
(62,'Aztar','Aztar',1,1,1,1,1,4,1,0,0),
(63,'Bananaman','-',1,1,1,1,24,1,1,0,0),
(64,'Bane','-',1,1,1,1,24,4,2,203,180),
(65,'Banshee','Sean Cassidy',1,14,29,1,24,13,1,183,77),
(66,'Bantam','Roberto Velasquez',1,9,4,1,1,13,1,165,54),
(67,'Batgirl','Mary Elizabeth Kane',2,14,23,1,24,4,1,170,57),
(68,'Batgirl II','Barbara Gordon',2,14,23,1,24,4,1,170,57),
(69,'Batgirl III','Helena Rosa Bertinelli',2,1,1,1,1,4,1,0,0),
(70,'Batgirl IV','Cassandra Cain',2,14,4,1,24,4,1,165,52),
(71,'Batgirl V',NULL,2,1,1,1,1,4,1,NULL,NULL),
(72,'Batgirl VI','Stephanie Brown',2,7,6,1,1,4,1,168,61),
(73,'Batman','Bruce Wayne',1,7,4,1,24,4,1,188,95),
(74,'Batman II','Richard John Grayson',1,7,4,1,24,4,1,178,79),
(75,'Batman III','Terrence McGinnis',1,7,4,1,24,4,1,178,77),
(76,'Battlestar','Lemar Hoskins',1,9,4,1,1,13,1,198,133),
(77,'Batwoman V',NULL,2,14,23,1,24,4,1,178,NULL),
(78,'Beak',NULL,1,4,31,1,1,13,1,175,63),
(79,'Beast','Henry Philip McCoy',1,7,7,7,42,13,1,180,181),
(80,'Beast Boy','Garfield Mark Logan',1,14,14,14,24,4,1,173,68),
(81,'Beetle','-',1,1,1,1,1,13,2,0,0),
(82,'Ben 10','Benjamin Kirby Tennyson',1,1,1,1,1,4,1,0,0),
(83,'Beta Ray Bill','Beta Ray Bill (translation of his Korbinite name)',1,1,1,1,1,13,1,201,216),
(84,'Beyonder','-',1,1,1,1,21,13,1,0,0),
(85,'Bi-Beast','-',1,4,1,1,5,13,1,229,158),
(86,'Big Barda','Barda Free',2,7,4,1,44,4,2,188,135),
(87,'Big Daddy','Damon Macready',1,1,1,1,1,8,1,0,0),
(88,'Big Man','Frederick Foswell',1,7,9,1,1,13,2,165,71),
(89,'Bill Harken','-',1,1,1,1,3,21,1,0,0),
(90,'Billy Kincaid',NULL,1,1,1,1,1,10,2,NULL,NULL),
(91,'Binary','Carol Susan Jane Danvers',2,7,6,1,1,13,1,180,54),
(92,'Bionic Woman','Jamie Wells Sommers',2,7,4,1,13,1,1,0,0),
(93,'Bird-Brain','-',3,1,1,1,1,13,1,0,0),
(94,'Bird-Man',NULL,1,1,1,1,24,13,2,NULL,NULL),
(95,'Bird-Man II',NULL,1,1,1,1,24,13,2,NULL,NULL),
(96,'Birdman','Ray Randal',1,1,1,1,21,6,1,0,0),
(97,'Bishop','Lucas Bishop',1,9,1,1,42,13,1,198,124),
(98,'Bizarro','Bizarro',1,4,4,31,9,4,3,191,155),
(99,'Black Abbott',NULL,1,23,4,1,1,13,2,NULL,NULL),
(100,'Black Adam','Teth-Adam',1,9,4,1,1,4,2,191,113),
(101,'Black Bolt','Blackagar Boltagon',1,7,4,1,34,13,1,188,95),
(102,'Black Canary','Dinah Drake Lance',2,7,6,1,41,4,1,170,59),
(103,'Black Canary II','Dinah Laurel Lance',2,7,6,1,41,4,1,170,59),
(104,'Black Cat','Felicia Hardy',2,14,6,1,24,13,1,178,54),
(105,'Black Flash','-',1,1,1,1,21,4,3,0,0),
(106,'Black Goliath',NULL,1,1,1,1,1,13,1,NULL,NULL),
(107,'Black Knight III','Dane Whitman',1,9,9,1,24,13,1,183,86),
(108,'Black Lightning','Jefferson Pierce',1,9,1,1,1,4,1,185,90),
(109,'Black Mamba','Tanya Sealy',2,14,4,1,1,13,2,170,52),
(110,'Black Manta','-',1,4,1,1,24,4,2,188,92),
(111,'Black Panther','T\'Challa',1,9,4,1,24,13,1,183,90),
(112,'Black Widow',NULL,2,14,3,1,24,13,1,170,59),
(113,'Black Widow II','Yelena Belova',2,7,6,1,1,13,1,170,61),
(114,'Blackout','-',1,23,31,31,17,13,2,191,104),
(115,'Blackwing','Joseph Manfredi',1,7,4,1,1,13,2,185,86),
(116,'Blackwulf','Lucian',1,23,31,1,2,13,NULL,188,88),
(117,'Blade','Eric Brooks',1,9,4,1,56,13,1,188,97),
(118,'Blaquesmith',NULL,3,4,1,1,1,13,1,NULL,NULL),
(119,'Bling!',NULL,2,1,1,1,1,13,1,168,68),
(120,'Blink','Clarice Ferguson',2,14,18,21,42,13,1,165,56),
(121,'Blizzard','-',1,1,9,1,1,13,2,0,0),
(122,'Blizzard II','Donald Gill',1,9,9,1,1,13,2,175,77),
(123,'Blob','Frederick J. Dukes',1,9,9,1,1,13,2,178,230),
(124,'Bloodaxe','Jackie Lukus',2,7,9,1,24,13,2,218,495),
(125,'Bloodhawk','Lemuel Krug',1,4,1,1,42,13,1,0,0),
(126,'Bloodwraith','Sean Dolan',1,31,1,1,1,13,2,3050,0),
(127,'Blue Beetle','Daniel Garrett',1,7,9,1,1,4,1,0,0),
(128,'Blue Beetle II','Theodore Kord',1,7,9,1,1,4,1,183,86),
(129,'Blue Beetle III','Jaime Reyes',1,9,4,1,24,4,1,0,0),
(130,'Boba Fett','-',1,9,4,1,26,5,2,183,0),
(131,'Bolt',NULL,1,1,1,1,1,13,1,NULL,NULL),
(132,'Bomb Queen','-',2,1,1,1,1,10,2,0,0),
(133,'Boom-Boom','Tabitha Smith',2,7,6,1,42,13,1,165,55),
(134,'Boomer',NULL,2,1,1,1,1,13,1,NULL,NULL),
(135,'Booster Gold','Michael Jon Carter',1,7,6,1,24,4,1,196,97),
(136,'Box',NULL,1,1,1,1,1,13,1,NULL,NULL),
(137,'Box III',NULL,3,7,6,1,1,13,1,193,110),
(138,'Box IV','Madison Jeffries',3,9,10,1,1,13,1,0,0),
(139,'Brainiac','Vril Dox',1,14,1,14,5,4,2,198,135),
(140,'Brainiac 5','Querl Dox',1,14,6,1,1,4,1,170,61),
(141,'Brother Voodoo','Jericho Drumm',1,9,11,1,24,13,1,183,99),
(143,'Brundlefly','Sethaniel Brundle',1,1,1,1,42,1,3,193,0),
(144,'Buffy','Buffy Anne Summers',2,14,6,1,24,3,1,157,52),
(145,'Bullseye','Lester',1,7,6,1,24,13,2,183,90),
(146,'Bumblebee','Karen Beecher-Duncan',2,9,4,1,24,4,1,170,59),
(147,'Bumbleboy',NULL,1,1,1,1,1,13,1,NULL,NULL),
(148,'Bushido','Ryuko Orsono',1,1,1,1,24,4,1,0,0),
(149,'Cable','Nathan Christopher Charles Summers Dayspring',1,7,31,1,42,13,1,203,158),
(150,'Callisto','Callisto',2,7,4,1,1,13,2,175,74),
(151,'Cameron Hicks','-',1,1,1,1,3,21,1,0,0),
(152,'Cannonball',NULL,1,7,6,1,1,13,1,183,81),
(153,'Captain America','Steven Grant Rogers',1,7,6,1,24,13,1,188,108),
(154,'Captain Atom','Nathaniel Christopher Adam',1,7,28,28,28,4,1,193,90),
(155,'Captain Britain','Brian Braddock',1,7,6,1,24,13,1,198,116),
(156,'Captain Cold','Leonard Snart',1,9,9,1,24,4,3,0,0),
(157,'Captain Epic','-',1,7,9,1,1,22,1,188,0),
(158,'Captain Hindsight','Jack Brolin',1,1,4,1,24,19,1,0,0),
(159,'Captain Mar-vell','Mar-Vell',1,7,6,1,1,13,1,188,108),
(160,'Captain Marvel',NULL,1,7,4,1,24,4,1,193,101),
(161,'Captain Marvel',NULL,2,7,6,1,29,13,1,180,74),
(162,'Captain Marvel II','Frederick Christopher Freeman',1,7,4,1,24,4,1,175,74),
(163,'Captain Midnight',NULL,1,1,1,1,24,3,1,NULL,NULL),
(164,'Captain Planet','-',1,23,14,1,21,13,1,0,0),
(165,'Captain Universe','-',3,1,1,1,21,13,1,0,0),
(166,'Carnage',NULL,1,14,23,1,52,13,2,185,86),
(167,'Cat','Shirlee Bryant',2,7,6,1,1,13,1,173,61),
(168,'Cat II',NULL,2,1,1,1,1,13,1,NULL,NULL),
(169,'Catwoman','Selina Kyle',2,14,4,1,24,4,1,175,61),
(170,'Cecilia Reyes',NULL,3,9,9,1,1,13,1,170,62),
(171,'Century','-',1,31,31,13,2,13,1,201,97),
(172,'Cerebra','Shakti Haddad',2,1,1,1,42,13,1,0,0),
(173,'Chamber','Jonothon Evan Starsmore',1,9,9,1,42,13,1,175,63),
(174,'Chameleon','Dmitri Anatoly Nikolayevich Smerdyakov',1,1,1,1,1,4,2,NULL,NULL),
(175,'Chameleon','Dmitri Anatoly Nikolayevich Smerdyakov',1,1,1,1,24,13,2,0,0),
(176,'Changeling','Kevin Sidney',1,9,4,1,1,13,2,180,81),
(177,'Cheetah','Priscilla Rich',2,14,6,1,24,4,2,163,50),
(178,'Cheetah II','Deborah Domaine',2,14,9,1,24,4,2,170,55),
(179,'Cheetah III','Barbara Ann Minerva',2,9,9,1,24,4,2,175,54),
(180,'Chewbacca','-',1,7,9,1,NULL,5,1,226,111),
(181,'Chromos',NULL,1,9,25,1,1,22,2,185,86),
(182,'Chuck Norris',NULL,1,1,1,1,1,1,1,178,NULL),
(183,'Citizen Steel','Nathaniel Heywood',1,14,23,1,24,4,1,183,170),
(184,'Claire Bennet','Claire Bennet',2,7,6,1,1,15,1,0,0),
(185,'Clea','Clea',3,1,31,1,1,13,1,0,0),
(186,'Cloak','Tyrone Johnson',1,9,4,1,1,13,1,226,70),
(187,'Clock King','William Tockman',1,7,4,1,24,4,2,178,78),
(188,'Cogliostro','Cain',1,1,1,1,1,10,2,0,0),
(189,'Colin Wagner',NULL,1,13,9,1,1,7,1,NULL,NULL),
(190,'Colossal Boy',NULL,1,1,1,1,1,4,1,NULL,NULL),
(191,'Colossus','Piotr Nikolaievitch Rasputin',1,28,4,1,42,13,1,226,225),
(192,'Copycat','Vanessa Carlysle',2,23,31,7,42,13,3,183,67),
(193,'Corsair','Christopher Summers',1,9,9,1,1,13,1,191,79),
(194,'Cottonmouth','Burchell Clemens',1,9,4,1,24,13,2,183,99),
(195,'Crimson Crusader','Rory Destine',1,7,29,1,1,13,1,0,0),
(196,'Crimson Dynamo','Anton Vanko',1,9,1,1,1,13,1,180,104),
(197,'Crystal','Crystallia Amaquelin Maximoff',2,14,23,1,34,13,1,168,50),
(198,'Curse',NULL,1,1,1,1,1,10,2,NULL,NULL),
(199,'Cy-Gor','-',1,1,1,1,1,10,2,0,0),
(200,'Cyborg','Victor Stone',1,9,4,1,13,4,1,198,173),
(201,'Cyborg Superman','Henry Henshaw',1,7,4,1,13,4,2,0,0),
(202,'Cyclops','Scott Summers',1,9,9,1,42,13,1,191,88),
(203,'Cypher','Douglas Aaron Ramsey',3,7,6,1,1,13,1,175,68),
(204,'Dagger','Tandy Bowen',2,7,6,1,1,13,1,165,52),
(205,'Danny Cooper',NULL,1,9,6,1,1,7,1,NULL,NULL),
(206,'Daphne Powell','Daphne Powell',2,1,1,1,1,2,1,0,0),
(207,'Daredevil',NULL,1,7,23,1,24,13,1,183,90),
(208,'Darkhawk','Christopher Powell',1,9,9,1,24,13,1,185,81),
(209,'Darkman','Peyton Westlake',1,1,1,1,24,24,1,0,0),
(210,'Darkseid','Uxas',1,23,1,13,44,4,2,267,817),
(211,'Darkside',NULL,3,1,1,1,1,1,2,NULL,NULL),
(212,'Darkstar','Laynia Petrovna',2,9,6,1,42,13,1,168,56),
(213,'Darth Maul','-',1,35,1,24,15,5,2,170,0),
(214,'Darth Vader','Anakin Skywalker',1,33,1,1,13,5,2,198,135),
(215,'Dash','Dashiell Robert Parr',1,7,6,1,24,3,1,122,27),
(216,'Data','-',1,33,9,1,5,20,1,0,0),
(217,'Dazzler','Alison Blaire',2,7,6,1,42,13,1,173,52),
(218,'Deadman','Boston Brand',1,7,4,1,24,4,1,183,90),
(219,'Deadpool',NULL,1,9,1,1,42,13,3,188,95),
(220,'Deadshot','Floyd Lawton',1,9,9,1,24,4,2,185,91),
(221,'Deathlok','Luther Manning',1,9,13,1,13,13,1,193,178),
(222,'Deathstroke','Slade Joseph Wilson',1,7,31,1,24,4,3,193,101),
(223,'Demogoblin','-',1,23,1,1,17,13,2,185,95),
(224,'Destroyer','-',1,1,1,1,1,13,2,188,383),
(225,'Diamondback','Willis Stryker',1,9,4,1,24,13,2,193,90),
(226,'DL Hawkins','Daniel Lawrence Hawkins',1,1,1,1,1,15,1,0,0),
(227,'Doc Samson','Leonard Samson',1,7,14,1,28,13,1,198,171),
(228,'Doctor Doom','Victor von Doom',1,9,9,1,24,13,2,201,187),
(229,'Doctor Doom II','Kristoff Vernard',1,9,9,1,1,13,2,201,132),
(230,'Doctor Fate','Kent Nelson',1,7,6,1,24,4,1,188,89),
(231,'Doctor Octopus','Otto Octavius',1,9,9,1,24,13,2,175,110),
(232,'Doctor Strange','Stephen Vincent Strange',1,13,4,1,24,13,1,188,81),
(233,'Domino','Neena Thurman',2,7,4,31,24,13,1,173,54),
(234,'Donatello','-',1,14,1,14,42,9,1,0,0),
(235,'Donna Troy','Donna Hinckley Stacey Troy',2,7,4,1,4,4,1,175,63),
(236,'Doomsday','Doomsday',1,23,31,1,2,4,2,244,412),
(237,'Doppelganger','-',1,31,1,1,1,13,2,196,104),
(238,'Dormammu','Dormammu',1,33,1,1,1,13,2,185,0),
(239,'Dr Manhattan','Jonathan Osterman',1,31,1,7,27,4,1,0,0),
(240,'Drax the Destroyer','Arthur Sampson Douglas',1,23,1,14,25,13,1,193,306),
(241,'Ego','Ego',3,1,1,1,1,13,2,0,0),
(242,'Elastigirl','Helen Parr',2,9,9,1,24,3,1,168,56),
(243,'Electro','Maxwell Dillon',1,7,3,1,24,13,2,180,74),
(244,'Elektra','Elektra Natchios',2,7,4,1,24,13,1,175,59),
(245,'Elle Bishop','-',2,7,6,1,1,15,2,0,0),
(246,'Elongated Man','Ralph Dibny',1,7,23,1,1,4,1,185,80),
(247,'Emma Frost','Emma Frost',2,7,6,1,1,13,1,178,65),
(248,'Enchantress','-',2,7,6,1,24,4,1,168,57),
(249,'Energy','-',2,1,1,1,1,7,1,0,0),
(250,'ERG-1',NULL,1,1,1,1,1,4,1,NULL,NULL),
(251,'Ethan Hunt',NULL,1,9,9,1,24,1,1,168,NULL),
(252,'Etrigan','Jason Blood',1,23,1,33,17,4,3,193,203),
(253,'Evil Deadpool','-',1,31,23,1,42,13,2,188,95),
(254,'Evilhawk','Dargin Bokk',1,23,4,14,2,13,2,191,106),
(255,'Exodus','Bennet du Paris',1,7,4,23,42,13,2,183,88),
(256,'Fabian Cortez',NULL,3,7,9,1,1,13,2,196,96),
(257,'Falcon','Samuel Thomas Wilson',1,9,4,1,24,13,1,188,108),
(258,'Fallen One II','-',1,4,7,1,1,13,2,0,0),
(259,'Faora','Faora Hu-Ul',2,1,1,1,37,4,2,0,0),
(260,'Feral','Maria Callasantos',3,33,20,1,1,13,1,175,50),
(261,'Fighting Spirit',NULL,2,1,23,1,1,4,1,NULL,NULL),
(262,'Fin Fang Foom','-',1,23,1,14,35,13,1,975,18000),
(263,'Firebird','Bonita Juarez',2,9,4,1,1,13,1,165,56),
(264,'Firelord','Pyreus Kril',3,31,33,1,1,13,1,193,99),
(265,'Firestar','Angelica Jones',2,14,23,1,42,13,1,173,56),
(266,'Firestorm','Jason Rusch',1,9,4,1,24,4,1,188,91),
(267,'Firestorm II','Ronald Raymond',1,7,3,1,24,4,1,188,91),
(268,'Fixer','Paul Norbert Ebersol',3,23,1,1,1,13,2,0,0),
(269,'Flash','Jason Peter Garrick',1,7,11,1,24,4,1,180,81),
(270,'Flash Gordon',NULL,1,1,1,1,1,1,1,NULL,NULL),
(271,'Flash II','Bartholomew Henry Allen',1,7,6,1,24,4,1,183,88),
(272,'Flash III','Wallace Rudolph West',1,1,1,1,24,4,1,183,86),
(273,'Flash IV','Bartholomew Allen II',1,33,3,1,24,4,1,157,52),
(274,'Forge','-',3,9,4,1,1,13,1,183,81),
(275,'Franklin Richards','Franklin Benjamin Richards',1,7,6,1,42,13,1,142,45),
(276,'Franklin Storm','Dr. Franklin Storm',3,7,13,1,1,13,1,188,92),
(277,'Frenzy','Joanna Cargill',2,9,4,1,1,13,2,211,104),
(278,'Frigga','Frigga',2,7,31,1,1,13,1,180,167),
(279,'Galactus',NULL,1,4,4,1,12,13,3,876,16),
(280,'Gambit','Remy Etienne LeBeau',1,23,9,1,42,13,1,185,81),
(281,'Gamora','Gamora Zen Whoberi Ben Titan',2,33,4,14,60,13,1,183,77),
(282,'Garbage Man','Richard Ethan Morse',1,1,1,1,42,4,1,0,0),
(283,'Gary Bell','Gary Bell',1,1,1,1,3,21,1,0,0),
(284,'General Zod','Dru-Zod',1,4,4,1,37,4,2,0,0),
(285,'Genesis','Tyler Dayspring',1,7,6,1,1,13,1,185,86),
(286,'Ghost Rider',NULL,1,23,1,1,17,13,1,188,99),
(287,'Ghost Rider II','Daniel Ketch',3,1,1,1,1,13,1,0,0),
(288,'Giant-Man','Henry Jonathan Pym',1,1,1,1,24,13,1,0,0),
(289,'Giant-Man II',NULL,1,1,1,1,1,13,1,NULL,NULL),
(290,'Giganta','Doris Zuel',2,14,23,1,1,4,2,6250,630),
(291,'Gladiator','Kallark',1,7,7,22,51,13,3,198,268),
(292,'Goblin Queen','Madelyne Jennifer Pryor',2,14,23,1,1,13,2,168,50),
(293,'Godzilla','-',3,1,1,1,NULL,1,2,10800,90000000),
(294,'Gog','-',1,1,1,1,1,4,2,0,0),
(295,'Goku','Kakarot',1,1,1,1,49,17,1,175,62),
(296,'Goliath',NULL,1,1,1,1,24,13,1,NULL,NULL),
(297,'Goliath IV',NULL,1,9,4,1,1,13,1,183,90),
(298,'Gorilla Grodd','Grodd',1,33,4,1,22,4,2,198,270),
(299,'Granny Goodness','-',2,7,31,1,1,4,2,178,115),
(300,'Gravity','Greg Willis',1,7,9,1,24,13,1,178,79),
(301,'Greedo','-',1,22,1,14,48,5,2,170,0),
(302,'Green Arrow','Oliver Jonas Queen',1,14,6,1,24,4,1,188,88),
(303,'Green Goblin',NULL,1,7,3,1,24,13,2,180,83),
(304,'Green Goblin II','Harold Osborn',1,7,3,1,1,13,2,178,77),
(305,'Green Goblin III',NULL,1,1,1,1,1,13,1,183,88),
(306,'Green Goblin IV','Phillip Benjamin Urich',1,14,9,1,1,13,1,178,79),
(307,'Green Lantern','Alan Ladd Wellington Scott',1,7,6,1,1,4,1,180,90),
(308,'Green Lantern II','Guy Darrin Gardner',1,7,23,1,32,4,1,188,95),
(309,'Green Lantern III','John Stewart',1,14,4,1,24,4,1,185,90),
(310,'Green Lantern IV','-',1,9,4,1,24,4,1,0,0),
(311,'Green Lantern V','Jessica Viviana Cruz',2,14,9,1,24,4,1,0,0),
(312,'Groot','Groot',1,33,1,1,19,13,1,701,4000),
(313,'Guardian','Dr. James McDonald Hudson',1,9,4,1,24,13,1,0,0),
(314,'Guy Gardner',NULL,1,7,23,1,32,4,1,188,95),
(315,'Hal Jordan',NULL,1,9,9,1,24,4,1,188,90),
(316,'Han Solo','Han Solo',1,9,9,1,24,5,1,183,79),
(317,'Hancock','John Hancock',1,9,4,1,24,18,1,188,0),
(318,'Harley Quinn','Harleen Francis Quinzel',2,7,6,1,24,4,2,170,63),
(319,'Harry Potter','-',1,14,4,1,24,11,1,0,0),
(320,'Havok',NULL,1,7,6,1,42,13,1,183,79),
(321,'Hawk','Henry Hall',1,23,9,1,1,4,1,185,89),
(322,'Hawkeye','Clinton Francis Barton',1,7,6,1,24,13,1,191,104),
(323,'Hawkeye II','Katherine Elizabeth Bishop',2,7,4,1,24,13,1,165,57),
(324,'Hawkgirl',NULL,2,14,23,1,1,4,1,175,61),
(325,'Hawkman','Carter Hall',1,7,9,1,2,4,1,185,88),
(326,'Hawkwoman','Shayera Hol',2,14,23,1,1,4,1,175,54),
(327,'Hawkwoman II','Sharon Parker',2,1,1,1,1,4,1,0,0),
(328,'Hawkwoman III','Shayera Thal',2,7,23,1,1,4,1,170,65),
(329,'He-Man','-',1,1,1,1,24,NULL,1,0,0),
(330,'Heat Wave','Mick Rory',1,7,1,1,24,4,2,180,81),
(331,'Hela','-',2,14,4,1,7,13,2,213,225),
(332,'Hellboy','Anung Un Rama',1,12,4,1,17,3,1,259,158),
(333,'Hellcat',NULL,2,7,23,1,24,13,1,173,61),
(334,'Hellstorm','Daimon Hellstrom',1,23,23,1,1,13,1,185,81),
(335,'Hercules','Heracles',1,7,9,1,16,13,1,196,146),
(336,'Hiro Nakamura','Hiro Nakamura',1,1,1,1,1,15,1,0,0),
(337,'Hit-Girl','Mindy McCready',2,1,1,1,24,8,1,0,0),
(338,'Hobgoblin','Roderick Kingsley',1,7,13,1,1,13,2,180,83),
(339,'Hollow','Monet St. Croix',2,7,23,1,1,13,1,170,0),
(340,'Hope Summers','Hope Summers',2,14,23,1,1,13,1,168,48),
(341,'Howard the Duck','Howard (Last name unrevealed)',1,9,33,1,1,13,1,79,18),
(342,'Hulk','Robert Bruce Banner',1,14,14,14,28,13,1,244,630),
(343,'Human Torch','Jonathan Lowell Spencer Storm',1,7,6,1,28,13,1,178,77),
(344,'Huntress','Helena Rosa Bertinelli',2,7,4,1,1,4,1,180,59),
(345,'Husk','Paige Elisabeth Guthrie',2,7,6,1,42,13,1,170,58),
(346,'Hybrid',NULL,1,9,4,1,52,13,1,175,77),
(347,'Hydro-Man','Morris Bench',1,9,9,1,1,13,2,188,119),
(348,'Hyperion','-',1,7,23,1,18,13,1,183,207),
(349,'Iceman','Robert Louis Drake',1,9,9,1,42,13,1,173,65),
(350,'Impulse','Bartholomew Allen II',1,33,3,1,24,4,1,170,65),
(351,'Indiana Jones','Henry Walton Jones Jr.',1,1,1,1,24,5,1,183,79),
(352,'Indigo','-',2,1,22,1,2,4,3,0,0),
(353,'Ink','Eric Gitter',1,7,1,1,42,13,1,180,81),
(354,'Invisible Woman',NULL,2,7,6,1,28,13,1,168,54),
(355,'Iron Fist','Daniel Thomas Rand-K\'ai',1,7,6,1,24,13,1,180,79),
(356,'Iron Man','Anthony Edward Stark',1,7,4,1,24,13,1,198,191),
(357,'Iron Monger','Obadiah Stane',1,7,1,1,1,13,2,0,2000),
(358,'Isis','Adrianna Tomaz',2,1,1,1,1,4,1,0,0),
(359,'Jack Bauer',NULL,1,1,1,1,1,1,1,NULL,NULL),
(360,'Jack of Hearts','Jonathan Hart',1,8,9,1,24,13,1,155,79),
(361,'Jack-Jack','Jac-jack Parr',1,7,9,1,24,3,1,71,14),
(362,'James Bond',NULL,1,7,6,1,24,23,1,183,NULL),
(363,'James Bond (Craig)','James Bond',1,7,6,1,24,NULL,1,183,0),
(364,'James T. Kirk','James Tiberius Kirk',1,16,9,1,24,20,1,178,77),
(365,'Jar Jar Binks','-',1,33,1,20,23,5,1,193,0),
(366,'Jason Bourne',NULL,1,1,1,1,24,1,1,NULL,NULL),
(367,'Jason Voorhees','-',1,9,23,1,24,3,2,191,113),
(368,'Jean Grey','Jean Grey-Summers',2,14,23,1,42,13,1,168,52),
(369,'Jean-Luc Picard','-',1,1,1,1,24,20,1,0,0),
(370,'Jennifer Kale','Jennifer Kale',2,7,6,1,1,13,1,168,55),
(371,'Jesse Quick','Jessica Belle Chambers',2,1,1,1,24,4,1,0,0),
(372,'Jessica Cruz',NULL,2,14,9,1,24,4,1,NULL,NULL),
(373,'Jessica Jones',NULL,2,9,9,1,24,13,1,170,56),
(374,'Jessica Sanders',NULL,2,1,1,1,1,15,1,NULL,NULL),
(375,'Jigsaw','Billy Russo',1,7,4,1,1,13,2,188,113),
(376,'Jim Powell','Jim Powell',1,1,1,1,1,2,1,0,0),
(377,'JJ Powell','JJ Powell',1,1,1,1,1,2,1,0,0),
(378,'Johann Krauss',NULL,1,1,1,1,1,3,1,NULL,NULL),
(379,'John Constantine','John Constantine',1,7,6,1,24,4,1,183,0),
(380,'John Stewart',NULL,1,14,4,1,24,4,1,185,90),
(381,'John Wraith','John Wraith',1,9,4,1,1,13,1,183,88),
(382,'Joker','Jack Napier',1,14,14,31,24,4,2,196,86),
(383,'Jolt','Helen Takahama',2,7,4,1,1,13,1,165,49),
(384,'Jubilee','Jubilation Lee',2,23,4,1,42,13,1,165,52),
(385,'Judge Dredd','Joseph Dredd',1,1,1,1,24,16,1,188,0),
(386,'Juggernaut','Cain Marko',1,7,23,1,24,13,3,287,855),
(387,'Junkpile','-',1,1,1,1,42,13,2,0,0),
(388,'Justice','Vance Astrovik',1,16,9,1,24,13,1,178,81),
(389,'Jyn Erso','-',2,14,9,1,24,5,1,0,0),
(390,'K-2SO',NULL,1,31,1,1,5,5,1,213,NULL),
(391,'Kang','Nathaniel Richards',1,9,9,1,1,13,2,191,104),
(392,'Karate Kid','-',1,9,9,1,24,4,1,173,72),
(393,'Kathryn Janeway','Kathryn M. Janeway',2,1,1,1,24,20,1,0,0),
(394,'Katniss Everdeen','-',2,1,1,1,24,1,1,0,0),
(395,'Kevin 11','Kevin Ethan Levin',1,1,4,1,24,4,1,0,0),
(396,'Kick-Ass','Dave Lizewski',1,7,6,1,24,8,1,0,0),
(397,'Kid Flash','Wallace Rudolph West',1,14,23,1,24,4,1,0,0),
(398,'Kid Flash II','Bartholomew Allen II',1,1,1,1,1,4,1,0,0),
(399,'Killer Croc','Waylon Jones',1,23,1,14,41,4,2,244,356),
(400,'Killer Frost','-',2,7,6,7,24,4,2,0,0),
(401,'Kilowog',NULL,1,23,1,21,10,4,1,234,324),
(402,'King Kong','-',1,33,4,1,6,1,1,3050,9000000),
(403,'King Shark','-',1,4,1,1,6,4,2,0,0),
(404,'Kingpin','Wilson Grant Fisk',1,7,1,1,24,13,2,201,203),
(405,'Klaw','Ulysses Klaw',1,23,1,23,24,13,2,188,97),
(406,'Kool-Aid Man',NULL,1,4,1,23,1,1,1,NULL,NULL),
(407,'Kratos','-',1,1,1,1,16,25,1,198,108),
(408,'Kraven II','Alyosha Kravinoff',1,9,4,1,24,13,2,191,99),
(409,'Kraven the Hunter',NULL,1,9,4,1,24,13,2,183,106),
(410,'Krypto','Krypto the Superdog',1,7,31,1,37,4,1,64,18),
(411,'Kyle Rayner',NULL,1,14,4,1,24,4,1,180,79),
(412,'Kylo Ren','-',1,1,1,1,24,5,2,0,0),
(413,'Lady Bullseye','-',2,1,4,1,1,13,2,0,0),
(414,'Lady Deathstrike','Yuriko Oyama',2,9,4,1,13,13,2,175,58),
(415,'Leader','Samuel Sterns',1,14,1,1,1,13,2,178,63),
(416,'Leech','-',1,1,1,1,1,13,1,0,0),
(417,'Legion',NULL,1,15,4,1,42,13,1,175,59),
(418,'Leonardo','-',1,7,1,14,42,9,1,0,0),
(419,'Lex Luthor','Alexander \'Lex\' Joseph Luthor',1,14,1,1,24,4,2,188,95),
(420,'Light Lass','Ayla Ranzz',2,7,23,1,1,4,1,165,54),
(421,'Lightning Lad','Garth Ranzz',1,7,23,1,1,4,1,155,65),
(422,'Lightning Lord','Mekt Ranzz',1,7,23,1,1,4,2,191,95),
(423,'Living Brain','-',3,33,1,1,1,13,2,198,360),
(424,'Living Tribunal','-',3,7,1,12,12,13,3,0,0),
(425,'Liz Sherman','Elizabeth Anne Sherman',2,1,1,1,1,3,1,0,0),
(426,'Lizard','Curtis Connors',1,23,1,1,24,13,2,203,230),
(427,'Lobo','-',1,23,4,8,14,4,3,229,288),
(428,'Loki','Loki Laufeyson',1,14,4,1,7,13,2,193,236),
(429,'Longshot','-',1,7,6,1,24,13,1,188,36),
(430,'Lucifer Morningstar','-',1,2,6,1,21,4,3,178,79),
(431,'Luke Cage','Luke Cage',1,9,4,1,24,13,1,198,191),
(432,'Luke Campbell',NULL,1,1,1,1,1,15,2,NULL,NULL),
(433,'Luke Skywalker','Luke Skywalker',1,7,6,1,24,5,1,168,77),
(434,'Luna','Luna Maximoff',2,1,1,1,24,13,1,0,0),
(435,'Lyja','Lyja',2,14,14,1,1,13,1,0,0),
(436,'Mach-IV','Abner Jenkins',1,9,9,1,1,13,2,180,79),
(437,'Machine Man','X-51, Aaron Stack',3,23,4,1,1,13,1,183,383),
(438,'Magneto','Erik Magnus Lensherr',1,13,31,1,42,13,2,188,86),
(439,'Magog','David Reid',1,7,6,1,1,4,1,0,0),
(440,'Magus','-',1,4,1,1,1,13,2,183,0),
(441,'Man of Miracles','-',3,7,28,1,21,10,NULL,0,0),
(442,'Man-Bat','Robert Kirkland Langstrom',1,9,9,1,24,4,3,0,0),
(443,'Man-Thing','Dr. Theodore Sallis',1,23,1,14,1,13,1,213,225),
(444,'Man-Wolf','John Jameson',1,9,3,1,1,13,1,188,90),
(445,'Mandarin','Khan',1,7,31,1,24,13,2,188,97),
(446,'Mantis','-',2,14,4,14,29,13,1,168,52),
(447,'Martian Manhunter','J\'onn J\'onzz',1,23,1,14,40,4,1,201,135),
(448,'Marvel Girl','Rachel Anne Summers',2,14,23,1,1,13,1,170,56),
(449,'Master Brood',NULL,1,7,4,1,1,22,1,183,81),
(450,'Master Chief','John-117',1,9,9,1,25,14,1,213,0),
(451,'Match','Kent Connor',1,4,4,1,1,4,2,0,0),
(452,'Matt Parkman','Matthew Parkman',1,1,1,1,1,15,1,0,0),
(453,'Maverick','Christopher Bradley',1,7,4,1,1,13,1,193,110),
(454,'Maxima','-',2,9,23,1,1,4,2,180,72),
(455,'Maya Herrera','Maya Herrera',2,1,1,1,1,15,1,0,0),
(456,'Medusa','Medusalith Amaquelin Boltagon',2,14,23,1,34,13,1,180,59),
(457,'Meltdown','Tabitha Smith',2,7,6,1,1,13,1,165,54),
(458,'Mephisto','-',1,31,4,1,1,13,2,198,140),
(459,'Mera','-',2,7,23,1,8,4,1,175,72),
(460,'Metallo','John Corben',1,14,9,1,5,4,2,196,90),
(461,'Metamorpho','Rex Mason',1,4,1,1,1,4,1,185,90),
(462,'Meteorite',NULL,2,1,1,1,1,13,1,NULL,NULL),
(463,'Metron','Metron',1,7,4,1,1,4,1,185,86),
(464,'Micah Sanders','Micah Sanders',1,9,4,1,1,15,1,0,0),
(465,'Michelangelo','-',1,7,1,14,42,9,1,0,0),
(466,'Micro Lad','Gim Allon',1,13,9,1,1,4,1,183,77),
(467,'Mimic','Calvin Montgomery Rankin',1,9,9,1,1,13,1,188,101),
(468,'Minna Murray',NULL,2,1,1,1,1,25,1,NULL,NULL),
(469,'Misfit','Charlotte Gage-Radcliffe',2,7,23,1,1,4,1,0,0),
(470,'Miss Martian','M\'gann M\'orzz',2,23,23,1,1,4,1,178,61),
(471,'Mister Fantastic','Reed Richards',1,9,9,1,28,13,1,185,81),
(472,'Mister Freeze','Victor Fries',1,1,1,1,24,4,2,183,86),
(473,'Mister Knife','-',1,7,9,1,50,13,2,0,0),
(474,'Mister Mxyzptlk','Mr. Mxyzptlk',1,1,1,1,21,4,2,0,0),
(475,'Mister Sinister','Dr. Nathaniel Essex',1,23,4,1,25,13,2,196,128),
(476,'Mister Zsasz','Victor Zsasz',1,7,6,1,24,4,2,173,68),
(477,'Mockingbird','Barbara Morse',2,7,6,1,24,13,1,175,61),
(478,'MODOK','-',1,31,9,1,13,13,2,366,338),
(479,'Mogo','Mogo',1,1,1,1,47,4,1,0,0),
(480,'Mohinder Suresh',NULL,1,1,1,1,1,15,1,NULL,NULL),
(481,'Molecule Man','-',1,7,9,1,28,13,2,170,63),
(482,'Moloch','Edgar William Jacobi',1,1,1,1,1,4,2,0,0),
(483,'Molten Man','Mark Raxton',1,12,12,1,1,13,2,196,248),
(484,'Monarch','Nathaniel Christopher Adam',1,7,31,1,1,4,1,193,90),
(485,'Monica Dawson','Monica Dawson',2,1,1,1,1,15,1,0,0),
(486,'Moon Knight','Marc Spector',1,9,9,1,24,13,1,188,101),
(487,'Moonstone','Dr. Karla Sofen',2,7,6,1,1,13,2,180,59),
(488,'Morlun','Morlun',1,32,4,1,1,13,2,188,79),
(489,'Morph','Kevin Sydney',1,31,1,1,1,13,1,178,79),
(490,'Moses Magnum','Moses Magnum',1,9,4,1,1,13,2,175,72),
(491,'Mr Immortal','-',1,7,6,1,42,13,1,188,70),
(492,'Mr Incredible','Robert Parr',1,7,6,1,24,3,1,201,158),
(493,'Ms Marvel II','Sharon Ventura',2,7,23,1,1,13,1,173,61),
(494,'Multiple Man','James Arthur',1,7,9,1,1,13,1,180,70),
(495,'Mysterio','Quentin Beck',1,9,1,1,24,13,2,180,79),
(496,'Mystique','Raven Darkholme',2,33,26,7,42,13,2,178,54),
(497,'Namor',NULL,1,13,4,1,8,13,1,188,125),
(498,'Namora','Aquaria Nautica Neptunia',2,7,6,1,1,13,1,180,85),
(499,'Namorita','Namorita Prentiss',2,7,6,1,1,13,1,168,101),
(500,'Naruto Uzumaki','-',1,7,33,1,24,17,1,178,54),
(501,'Nathan Petrelli',NULL,1,9,1,1,1,15,1,NULL,NULL),
(502,'Nebula','-',2,7,1,7,38,13,2,185,83),
(503,'Negasonic Teenage Warhead','-',2,4,4,1,42,13,1,0,0),
(504,'Nick Fury','Nicholas Joseph Fury',1,9,11,1,24,13,1,185,99),
(505,'Nightcrawler','Kurt Wagner',1,33,17,1,1,13,1,175,88),
(506,'Nightwing','Richard John Grayson',1,7,4,1,24,4,1,178,79),
(507,'Niki Sanders','Nicole Sanders',2,7,6,1,1,15,1,0,0),
(508,'Nina Theroux','-',2,1,1,1,3,21,1,0,0),
(509,'Nite Owl II','Daniel Dreiberg',1,1,1,1,1,4,1,0,0),
(510,'Northstar','Jean-Paul Beaubier',1,7,4,1,1,13,1,180,83),
(511,'Nova','Richard Rider',1,9,9,1,24,13,1,185,86),
(513,'Odin','-',1,7,31,1,21,13,1,206,293),
(514,'Offspring','Luke O\'Brian',1,1,1,1,1,4,1,0,0),
(515,'Omega Red','Arkady Gregorivich',1,23,6,1,1,13,2,211,191),
(516,'Omniscient',NULL,1,9,4,1,1,22,1,180,65),
(517,'One Punch Man','-',1,1,1,1,24,17,1,175,69),
(518,'One-Above-All','-',3,1,1,1,12,13,3,0,0),
(519,'Onslaught','Onslaught',1,23,1,1,42,13,2,305,405),
(520,'Oracle','Barbara Gordon',2,7,23,1,24,4,1,178,59),
(521,'Osiris','Amon Tomaz',1,9,9,1,1,4,1,0,0),
(522,'Overtkill',NULL,1,1,1,1,1,10,2,NULL,NULL),
(523,'Ozymandias','Adrian Alexander Veidt',1,7,6,1,24,4,2,0,0),
(524,'Parademon','-',3,1,1,1,46,4,2,0,0),
(525,'Paul Blart','-',1,1,1,1,24,18,1,170,117),
(526,'Penance',NULL,3,1,1,1,1,13,1,NULL,NULL),
(527,'Penance I',NULL,2,1,1,1,1,13,1,NULL,NULL),
(528,'Penance II','Robert Baldwin',1,7,6,1,1,13,1,183,89),
(529,'Penguin','Oswald Chesterfield Cobblepot',1,7,4,1,24,4,2,157,79),
(530,'Peter Petrelli','Peter Petrelli',1,1,1,1,1,15,1,0,0),
(531,'Phantom','Christopher Walker',1,1,1,1,1,4,1,0,0),
(532,'Phantom Girl','Tinya Wazzo',2,7,4,1,1,4,1,168,54),
(533,'Phantom Stranger','-',1,4,4,1,24,4,3,188,83),
(534,'Phoenix','Jean Grey-Summers',2,14,23,1,42,13,1,168,52),
(535,'Plantman','-',1,14,13,1,42,13,2,183,87),
(536,'Plastic Lad',NULL,1,1,1,1,1,4,1,NULL,NULL),
(537,'Plastic Man','Patrick O\'Brian',1,7,4,1,24,4,1,185,80),
(538,'Plastique','Bette Sans Souci',2,7,23,1,1,4,2,168,55),
(539,'Poison Ivy','Pamela Lillian Isley',2,14,23,14,24,4,2,168,50),
(540,'Polaris','Lorna Sally Dane',2,14,14,1,42,13,1,170,52),
(541,'Power Girl','Kara Zor-L',2,7,6,1,37,4,1,180,81),
(542,'Power Man','-',1,1,1,1,42,13,1,0,0),
(543,'Predator','Yautja',1,1,1,1,58,3,2,213,234),
(544,'Professor X','Charles Francis Xavier',1,7,1,1,42,13,1,183,86),
(545,'Professor Zoom','Eobard Thawne',1,7,29,1,24,4,2,180,81),
(546,'Proto-Goblin','Nels Van Adder',1,14,6,1,1,13,2,0,0),
(547,'Psylocke','Elizabeth Braddock',2,7,22,1,42,13,1,180,70),
(548,'Punisher','Francis Castiglione',1,7,4,1,24,13,1,183,90),
(549,'Purple Man','Zebediah Killgrave',1,22,22,22,24,13,2,180,74),
(550,'Pyro','St. John Allerdyce',1,7,6,1,1,13,2,178,68),
(551,'Q','-',1,1,1,1,21,20,NULL,0,0),
(552,'Quake','Daisy Louise Johnson',2,9,4,1,NULL,13,1,163,52),
(553,'Quantum',NULL,1,1,1,1,1,7,1,NULL,NULL),
(554,'Question','Charles Victor Szasz',1,7,6,1,24,4,1,188,83),
(555,'Quicksilver','Pietro Django Maximoff',1,7,28,1,42,13,1,183,79),
(556,'Quill','Maxwell Jordan',1,9,9,1,1,13,1,163,56),
(557,'Ra\'s Al Ghul','Ra\'s Al Ghul',1,14,13,1,24,4,2,193,97),
(558,'Rachel Pirzad','-',2,1,1,1,3,21,1,0,0),
(559,'Rambo',NULL,1,9,4,1,24,1,1,178,83),
(560,'Raphael','-',1,1,1,14,42,9,1,0,0),
(561,'Raven','Rachel Roth',2,17,4,1,24,4,3,165,50),
(562,'Ray','Raymond C. Terrill',1,14,23,1,24,4,1,178,70),
(563,'Razor-Fist II','Douglas Scott',1,7,1,1,1,13,2,191,117),
(564,'Red Arrow',NULL,1,14,23,1,24,4,1,180,83),
(565,'Red Hood','Jason Peter Todd',1,7,4,1,24,4,3,183,81),
(566,'Red Hulk','Thaddeus E. Ross',1,33,4,23,28,13,3,213,630),
(567,'Red Mist','Chris Genovese',1,1,1,1,1,8,2,0,0),
(568,'Red Robin','Timothy Jackson Drake',1,7,4,1,24,4,1,165,56),
(569,'Red Skull','Johann Shmidt',1,7,1,1,1,13,2,188,108),
(570,'Red Tornado',NULL,1,14,1,1,5,4,1,185,146),
(571,'Redeemer II',NULL,1,1,1,1,1,10,2,NULL,NULL),
(572,'Redeemer III',NULL,1,1,1,1,1,10,2,NULL,NULL),
(573,'Renata Soliz',NULL,2,1,1,1,1,7,1,NULL,NULL),
(574,'Rey','-',2,16,9,1,24,5,1,297,0),
(575,'Rhino','Aleksei Mikhailovich Sytsevich',1,9,9,1,28,13,2,196,320),
(576,'Rick Flag','Richard Rogers Flag',1,7,9,1,1,4,2,185,85),
(577,'Riddler','Edward Nigma',1,1,1,1,1,4,2,0,0),
(578,'Rip Hunter','-',1,7,6,1,24,4,1,0,0),
(579,'Ripcord',NULL,2,14,4,1,1,13,1,180,72),
(580,'Robin','Richard John Grayson',1,7,4,1,24,4,1,178,79),
(581,'Robin II','Jason Peter Todd',1,7,23,1,24,4,1,183,101),
(582,'Robin III','Timothy Jackson Drake',1,7,4,1,24,4,1,165,56),
(583,'Robin V','Damian Wayne',1,7,4,1,24,4,1,137,38),
(584,'Robin VI','Carrie Kelley',2,14,23,1,24,4,3,0,0),
(585,'Robocop','Alexander James Murphy',1,1,1,1,13,1,1,188,0),
(586,'Rocket Raccoon','Rocket Raccoon',1,9,9,1,6,13,1,122,25),
(587,'Rogue','Anna Marie',2,14,11,1,1,13,1,173,54),
(588,'Ronin',NULL,1,7,6,1,24,13,1,191,104),
(589,'Rorschach','Walter Joseph Kovacs',1,7,23,1,24,4,1,168,63),
(590,'Sabretooth','Victor Creed',1,2,6,1,42,13,2,198,171),
(591,'Sage','Tessa',2,7,4,1,1,13,1,170,61),
(592,'Sandman','-',1,9,9,1,24,13,3,185,203),
(593,'Sasquatch','Walter Langkowski',1,23,19,1,1,13,1,305,900),
(594,'Saturn Girl','Imra Ardeen-Ranzz',2,7,6,1,NULL,4,1,170,59),
(595,'Sauron','-',1,1,1,1,39,12,2,279,0),
(596,'Savage Dragon','Kurr',1,1,1,1,1,10,1,0,0),
(597,'Scarecrow','Jonathan Crane',1,7,9,1,24,4,2,183,63),
(598,'Scarlet Spider','Benjamin Reilly',1,7,6,1,24,13,1,178,74),
(599,'Scarlet Spider II','Kaine Parker',1,9,9,1,11,13,1,193,113),
(600,'Scarlet Witch','Wanda Maximoff',2,7,9,1,42,13,2,170,59),
(601,'Scorpia','Elaine Coll',2,14,23,1,1,13,2,0,0),
(602,'Scorpion','MacDonald Gargan',1,9,9,1,24,13,2,211,310),
(603,'Sebastian Shaw','Sebastian Hiram Shaw',1,1,1,1,42,13,2,0,0),
(604,'Sentry','Robert Reynolds',1,7,6,1,24,13,1,188,87),
(606,'Shadow King','Amahl Farouk',3,23,1,1,1,13,1,185,149),
(607,'Shadow Lass','-',2,4,4,7,53,4,1,173,54),
(608,'Shadowcat','Katherine Pryde',2,16,9,1,42,13,1,168,50),
(609,'Shang-Chi','Shang-Chi',1,9,4,1,24,13,1,178,79),
(610,'Shatterstar','Gaveedra Seven',1,9,23,1,1,13,1,191,88),
(611,'Shazam','William Joseph Batson',1,7,4,1,24,4,1,193,101),
(612,'She-Hulk','Jennifer Walters',2,14,14,1,24,13,1,201,315),
(613,'She-Ra','-',2,1,1,1,24,NULL,1,0,0),
(614,'She-Thing','Sharon Ventura',2,7,1,1,28,13,1,183,153),
(615,'Shocker','Herman Schultz',1,9,9,1,24,13,2,175,79),
(616,'Shriek','Frances Louise Barrison',2,34,4,1,1,13,1,173,52),
(617,'Shrinking Violet',NULL,2,1,1,1,1,4,1,NULL,NULL),
(618,'Sif','Sif',2,7,4,1,7,13,1,188,191),
(619,'Silk','-',2,9,4,1,24,13,1,0,0),
(620,'Silk Spectre',NULL,2,1,1,1,1,4,1,NULL,NULL),
(621,'Silk Spectre II','Laurie Juspeczyk',2,1,1,1,1,4,1,0,0),
(622,'Silver Surfer','Norrin Radd',1,31,1,28,2,13,1,193,101),
(623,'Silverclaw','Maria de Guadalupe Santiago',2,9,4,1,1,13,1,157,50),
(624,'Simon Baz',NULL,1,9,4,1,24,4,1,NULL,NULL),
(625,'Sinestro','Thaal Sinestro',1,4,4,23,36,4,3,201,92),
(626,'Siren','Hila',2,7,22,1,8,4,2,175,72),
(627,'Siren II',NULL,2,4,1,1,1,4,2,NULL,NULL),
(628,'Siryn','Theresa Rourke Cassidy',2,7,29,1,1,13,2,168,52),
(629,'Skaar','-',1,14,4,1,1,13,1,198,180),
(630,'Snake-Eyes',NULL,1,1,1,1,6,13,2,NULL,NULL),
(631,'Snowbird','Narya',2,31,6,1,1,13,1,178,49),
(632,'Sobek','Yurrd the Unknown',1,31,1,1,1,4,1,0,0),
(633,'Solomon Grundy','Cyrus Gold',1,4,31,1,61,4,2,279,437),
(634,'Songbird','Melissa Joan Gold',2,14,27,1,1,13,1,165,65),
(635,'Space Ghost','Thaddeus Bach',1,1,1,1,24,4,1,188,113),
(636,'Spawn','Al Simmons',1,9,4,1,17,10,1,211,405),
(637,'Spectre','-',1,31,1,31,21,4,1,0,0),
(638,'Speedball',NULL,1,1,1,1,1,13,1,NULL,NULL),
(640,'Speedy','Thea Dearden Queen',2,14,9,1,24,4,1,0,0),
(641,'Spider-Carnage','Benjamin Reilly',1,1,1,1,52,13,2,0,0),
(642,'Spider-Girl','May \'Mayday\' Parker',2,7,9,1,24,13,1,170,54),
(643,'Spider-Gwen','Gwendolyne Stacy',2,7,6,1,24,13,1,165,56),
(644,'Spider-Man','Peter Benjamin Parker',1,16,9,1,24,13,1,178,74),
(646,'Spider-Woman','Jessica Drew',2,14,4,1,24,13,1,178,59),
(647,'Spider-Woman II',NULL,2,1,1,1,1,13,1,NULL,NULL),
(648,'Spider-Woman III','Martha Franklin',2,9,9,1,1,13,1,173,55),
(649,'Spider-Woman IV',NULL,2,23,31,1,1,13,2,178,58),
(650,'Spock','-',1,9,4,1,31,20,1,185,81),
(651,'Spyke',NULL,1,9,6,1,42,13,1,183,83),
(652,'Stacy X',NULL,2,1,1,1,1,13,1,NULL,NULL),
(653,'Star-Lord','Peter Jason Quill',1,7,6,1,30,13,1,188,79),
(654,'Stardust','-',1,1,1,1,1,13,1,0,0),
(655,'Starfire','Koriand\'r',2,14,3,19,54,4,1,193,71),
(656,'Stargirl','Courtney Whitmore',2,7,6,1,24,4,1,165,62),
(657,'Static','Virgil Ovid Hawkins',1,9,4,1,42,4,1,170,63),
(658,'Steel','John Henry Irons',1,9,1,1,24,4,1,201,131),
(659,'Stephanie Powell','Stephanie Powell',2,1,6,1,1,2,1,0,0),
(660,'Steppenwolf','-',1,23,4,31,44,4,2,183,91),
(661,'Storm','Ororo Munroe',2,7,31,1,42,13,1,180,57),
(662,'Stormtrooper','-',1,1,1,1,24,5,2,183,0),
(663,'Sunspot','Roberto DaCosta',1,9,4,1,42,13,1,173,77),
(664,'Superboy','Kon-El / Conner Kent',1,7,4,1,1,4,1,170,68),
(665,'Superboy-Prime','Kal-El',1,7,5,1,37,4,2,180,77),
(666,'Supergirl','Kara Zor-El',2,7,6,1,37,4,1,165,54),
(667,'Superman','Clark Joseph Kent (Kal-El)',1,7,4,1,37,4,1,191,101),
(668,'Surtur','-',1,33,23,1,21,13,2,30480,0),
(669,'Swamp Thing','Alec Holland',1,23,1,14,21,4,2,0,0),
(670,'Swarm','Fritz von Meyer',1,33,1,33,42,13,2,196,47),
(671,'Sylar','Gabriel Gray',1,1,1,1,1,15,2,0,0),
(672,'Synch','Everett Thomas',1,9,4,1,1,13,1,180,74),
(673,'T-1000','Cyberdyne Systems Series 1000 Terminator',1,1,1,28,5,3,2,183,146),
(674,'T-800','Cyberdyne Systems Series 800 Terminator Model 101',1,23,1,1,13,3,2,0,176),
(675,'T-850','Cyberdyne Systems Series 850 Terminator',1,23,1,1,13,3,2,0,198),
(676,'T-X','Cyberdyne Systems Series X Terminator',2,1,1,28,13,3,2,0,149),
(677,'Taskmaster','-',1,9,9,1,24,13,2,188,99),
(678,'Tempest','Angel Salvadore Bohusk',2,9,4,1,1,13,1,163,54),
(679,'Thanos','Thanos',1,23,1,22,18,13,2,201,443),
(680,'Thanos (Infinity Gauntlet)','-',1,23,1,1,18,13,2,201,443),
(681,'The Cape',NULL,1,1,1,1,1,1,1,NULL,NULL),
(682,'The Comedian','Edward Morgen Blake',1,9,4,1,24,4,3,188,101),
(683,'The Presence','-',1,1,1,1,21,4,3,0,0),
(684,'Thing','Benjamin Jacob Grimm',1,7,1,1,28,13,1,183,225),
(685,'Thor','Thor Odinson',1,7,6,1,7,13,1,198,288),
(686,'Thor Girl','Tarene',2,7,6,1,7,13,1,175,143),
(687,'Thunderbird','John Proudstar',1,9,4,1,1,13,1,185,101),
(688,'Thunderbird II',NULL,1,1,1,1,1,13,1,NULL,NULL),
(689,'Thunderbird III',NULL,1,9,4,1,1,13,1,175,74),
(690,'Thunderstrike','Eric Kevin Masterson',1,7,6,1,1,13,1,198,288),
(691,'Thundra','Thundra',2,14,23,1,1,13,1,218,158),
(692,'Tiger Shark','Todd Arliss',1,13,1,13,24,13,2,185,203),
(693,'Tigra','Greer Grant Nelson',2,14,3,1,1,13,1,178,81),
(694,'Tinkerer','Phineas Mason',1,9,31,1,1,13,2,163,54),
(695,'Titan',NULL,1,1,1,1,1,7,1,NULL,NULL),
(696,'Toad','Mortimer Toynbee',1,4,9,14,42,13,3,175,76),
(697,'Toxin',NULL,1,7,9,1,52,13,1,191,117),
(698,'Tracy Strauss','Tracy Strauss',2,1,1,1,1,15,1,0,0),
(699,'Trickster',NULL,1,7,6,1,24,4,NULL,183,81),
(700,'Trigon','-',1,33,4,23,21,4,2,0,0),
(701,'Triplicate Girl','Luornu Durgo',2,22,9,1,1,4,1,168,59),
(702,'Triton','-',1,14,1,14,34,13,1,188,86),
(703,'Two-Face','Harvey Dent',1,1,1,1,1,4,2,183,82),
(704,'Ultragirl','Tsu-Zana',2,7,6,1,1,13,1,168,105),
(705,'Ultron',NULL,1,23,1,28,5,13,2,206,331),
(706,'Utgard-Loki','-',1,7,31,1,20,13,2,1520,58000),
(707,'Vagabond',NULL,2,7,29,1,1,13,1,168,54),
(708,'Valerie Hart',NULL,2,16,4,1,1,22,1,175,56),
(709,'Valkyrie','Brunnhilde',2,7,6,1,1,13,1,191,214),
(710,'Vanisher','-',1,14,1,1,1,13,2,165,79),
(711,'Vegeta','-',1,1,4,1,49,17,2,168,73),
(712,'Venom','Edward Charles Allan Brock',1,7,29,1,52,13,2,191,117),
(713,'Venom II','Angelo Fortunato',1,9,4,1,1,13,2,175,50),
(714,'Venom III','MacDonald Gargan',1,9,9,1,52,13,2,229,334),
(715,'Venompool','-',1,1,1,1,52,13,NULL,226,0),
(716,'Vertigo II',NULL,2,7,28,1,1,13,1,168,52),
(717,'Vibe','Francisco Paco Ramon',1,9,4,1,24,4,1,178,71),
(719,'Vindicator','Heather McNeil Hudson',2,14,23,1,24,13,1,165,54),
(720,'Violator','-',1,1,1,1,1,10,2,0,0),
(721,'Violet Parr','Violet Parr',2,30,4,1,24,3,1,137,41),
(722,'Vision',NULL,1,12,1,23,5,13,1,191,135),
(723,'Vision II',NULL,3,23,1,1,1,13,1,191,135),
(724,'Vixen','Mari Jiwe McCabe',2,2,4,1,24,4,1,175,63),
(725,'Vulcan','Gabriel Summers',1,4,4,1,1,13,1,0,0),
(726,'Vulture','Adrian Toomes',1,9,1,1,24,13,2,180,79),
(727,'Walrus','Hubert Carpent',1,7,4,1,24,13,2,183,162),
(728,'War Machine','James Rupert Rhodes',1,9,9,1,24,13,1,185,95),
(729,'Warbird',NULL,2,7,6,1,1,13,1,180,54),
(730,'Warlock','Adam Warlock',1,23,6,1,1,13,1,188,108),
(731,'Warp','Emil LaSalle',1,9,4,1,1,4,2,173,67),
(732,'Warpath','James Proudstar',1,9,4,1,42,13,1,218,158),
(733,'Wasp','Janet Van Dyne',2,7,3,1,24,13,1,163,50),
(734,'Watcher','Uatu',1,1,1,1,1,13,1,0,0),
(735,'Weapon XI','Weapon XI',1,1,1,1,1,13,2,0,0),
(736,'White Canary','-',2,9,4,1,24,4,2,0,0),
(737,'White Queen','Emma Grace Frost',2,7,6,1,1,13,1,178,65),
(738,'Wildfire','Drake Burroughs',1,1,1,1,1,4,1,0,0),
(739,'Winter Soldier',NULL,1,9,9,1,24,13,1,175,117),
(740,'Wiz Kid',NULL,3,9,4,1,1,13,1,140,39),
(741,'Wolfsbane','Rahne Sinclair',2,14,3,1,1,13,1,366,473),
(742,'Wolverine','James Howlett',1,7,4,1,42,13,1,160,135),
(743,'Wonder Girl','Cassandra Elizabeth Sandsmark',2,7,6,1,16,4,1,165,51),
(744,'Wonder Man','Simon Williams',1,23,4,1,1,13,1,188,171),
(745,'Wonder Woman','Diana of Themyscira',2,7,4,1,4,4,1,183,74),
(746,'Wondra',NULL,2,1,1,1,1,13,1,NULL,NULL),
(747,'Wyatt Wingfoot','Wyatt Wingfoot',1,9,4,1,1,13,1,196,117),
(748,'X-23','Laura Kinney',2,14,4,1,43,13,1,155,50),
(749,'X-Man','Nate Grey',1,7,9,1,1,13,1,175,61),
(750,'Yellow Claw',NULL,1,7,1,1,1,13,2,188,95),
(751,'Yellowjacket',NULL,1,7,6,1,24,13,1,183,83),
(752,'Yellowjacket II','Rita DeMara',2,7,29,1,24,13,1,165,52),
(753,'Ymir','Ymir',1,31,1,31,20,13,1,30480,0),
(754,'Yoda','Yoda',1,9,31,14,59,5,1,66,17),
(755,'Zatanna',NULL,2,7,4,1,24,4,1,170,57),
(756,'Zoom','Hunter Zolomon',1,23,9,1,1,4,2,185,81);

/*Table structure for table `superpower` */

DROP TABLE IF EXISTS `superpower`;

CREATE TABLE `superpower` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `power_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4;

/*Data for the table `superpower` */

insert  into `superpower`(`id`,`power_name`) values 
(1,'Agility'),
(2,'Accelerated Healing'),
(3,'Lantern Power Ring'),
(4,'Dimensional Awareness'),
(5,'Cold Resistance'),
(6,'Durability'),
(7,'Stealth'),
(8,'Energy Absorption'),
(9,'Flight'),
(10,'Danger Sense'),
(11,'Underwater breathing'),
(12,'Marksmanship'),
(13,'Weapons Master'),
(14,'Power Augmentation'),
(15,'Animal Attributes'),
(16,'Longevity'),
(17,'Intelligence'),
(18,'Super Strength'),
(19,'Cryokinesis'),
(20,'Telepathy'),
(21,'Energy Armor'),
(22,'Energy Blasts'),
(23,'Duplication'),
(24,'Size Changing'),
(25,'Density Control'),
(26,'Stamina'),
(27,'Astral Travel'),
(28,'Audio Control'),
(29,'Dexterity'),
(30,'Omnitrix'),
(31,'Super Speed'),
(32,'Possession'),
(33,'Animal Oriented Powers'),
(34,'Weapon-based Powers'),
(35,'Electrokinesis'),
(36,'Darkforce Manipulation'),
(37,'Death Touch'),
(38,'Teleportation'),
(39,'Enhanced Senses'),
(40,'Telekinesis'),
(41,'Energy Beams'),
(42,'Magic'),
(43,'Hyperkinesis'),
(44,'Jump'),
(45,'Clairvoyance'),
(46,'Dimensional Travel'),
(47,'Power Sense'),
(48,'Shapeshifting'),
(49,'Peak Human Condition'),
(50,'Immortality'),
(51,'Camouflage'),
(52,'Element Control'),
(53,'Phasing'),
(54,'Astral Projection'),
(55,'Electrical Transport'),
(56,'Fire Control'),
(57,'Projection'),
(58,'Summoning'),
(59,'Enhanced Memory'),
(60,'Reflexes'),
(61,'Invulnerability'),
(62,'Energy Constructs'),
(63,'Force Fields'),
(64,'Self-Sustenance'),
(65,'Anti-Gravity'),
(66,'Empathy'),
(67,'Power Nullifier'),
(68,'Radiation Control'),
(69,'Psionic Powers'),
(70,'Elasticity'),
(71,'Substance Secretion'),
(72,'Elemental Transmogrification'),
(73,'Technopath/Cyberpath'),
(74,'Photographic Reflexes'),
(75,'Seismic Power'),
(76,'Animation'),
(77,'Precognition'),
(78,'Mind Control'),
(79,'Fire Resistance'),
(80,'Power Absorption'),
(81,'Enhanced Hearing'),
(82,'Nova Force'),
(83,'Insanity'),
(84,'Hypnokinesis'),
(85,'Animal Control'),
(86,'Natural Armor'),
(87,'Intangibility'),
(88,'Enhanced Sight'),
(89,'Molecular Manipulation'),
(90,'Heat Generation'),
(91,'Adaptation'),
(92,'Gliding'),
(93,'Power Suit'),
(94,'Mind Blast'),
(95,'Probability Manipulation'),
(96,'Gravity Control'),
(97,'Regeneration'),
(98,'Light Control'),
(99,'Echolocation'),
(100,'Levitation'),
(101,'Toxin and Disease Control'),
(102,'Banish'),
(103,'Energy Manipulation'),
(104,'Heat Resistance'),
(105,'Natural Weapons'),
(106,'Time Travel'),
(107,'Enhanced Smell'),
(108,'Illusions'),
(109,'Thirstokinesis'),
(110,'Hair Manipulation'),
(111,'Illumination'),
(112,'Omnipotent'),
(113,'Cloaking'),
(114,'Changing Armor'),
(115,'Power Cosmic'),
(116,'Biokinesis'),
(117,'Water Control'),
(118,'Radiation Immunity'),
(119,'Vision - Telescopic'),
(120,'Toxin and Disease Resistance'),
(121,'Spatial Awareness'),
(122,'Energy Resistance'),
(123,'Telepathy Resistance'),
(124,'Molecular Combustion'),
(125,'Omnilingualism'),
(126,'Portal Creation'),
(127,'Magnetism'),
(128,'Mind Control Resistance'),
(129,'Plant Control'),
(130,'Sonar'),
(131,'Sonic Scream'),
(132,'Time Manipulation'),
(133,'Enhanced Touch'),
(134,'Magic Resistance'),
(135,'Invisibility'),
(136,'Sub-Mariner'),
(137,'Radiation Absorption'),
(138,'Intuitive aptitude'),
(139,'Vision - Microscopic'),
(140,'Melting'),
(141,'Wind Control'),
(142,'Super Breath'),
(143,'Wallcrawling'),
(144,'Vision - Night'),
(145,'Vision - Infrared'),
(146,'Grim Reaping'),
(147,'Matter Absorption'),
(148,'The Force'),
(149,'Resurrection'),
(150,'Terrakinesis'),
(151,'Vision - Heat'),
(152,'Vitakinesis'),
(153,'Radar Sense'),
(154,'Qwardian Power Ring'),
(155,'Weather Control'),
(156,'Vision - X-Ray'),
(157,'Vision - Thermal'),
(158,'Web Creation'),
(159,'Reality Warping'),
(160,'Odin Force'),
(161,'Symbiote Costume'),
(162,'Speed Force'),
(163,'Phoenix Force'),
(164,'Molecular Dissipation'),
(165,'Vision - Cryo'),
(166,'Omnipresent'),
(167,'Omniscient');

/* Procedure structure for procedure `spu_alignment_list` */

/*!50003 DROP PROCEDURE IF EXISTS  `spu_alignment_list` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spu_alignment_list`()
BEGIN
	SELECT * FROM alignment ORDER BY id;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spu_byalignment_list` */

/*!50003 DROP PROCEDURE IF EXISTS  `spu_byalignment_list` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spu_byalignment_list`(
	in _publisher_id 	int,
	in _alignment_id	int
)
begin
	SELECT sh.`id`, sh.`superhero_name`,sh.`full_name`,rc.`race`, ps.`publisher_name` 
		FROM superhero sh
			INNER JOIN race rc ON rc.`id` = sh.`race_id`
			INNER JOIN publisher ps ON ps.`id` = sh.`publisher_id`
		where 	
			sh.alignment_id = _alignment_id and
			sh.publisher_id = _publisher_id
		ORDER BY sh.`id`;
end */$$
DELIMITER ;

/* Procedure structure for procedure `spu_ejercicio_05` */

/*!50003 DROP PROCEDURE IF EXISTS  `spu_ejercicio_05` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spu_ejercicio_05`()
BEGIN 
SELECT race.`race`,COUNT(*) AS 'cantidad'
FROM superhero
LEFT JOIN race	ON race.`id` = superhero.`race_id`
GROUP BY race.`race`;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spu_gender_list` */

/*!50003 DROP PROCEDURE IF EXISTS  `spu_gender_list` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spu_gender_list`()
BEGIN
SELECT * FROM gender;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spu_obtener_grupos_Bandos` */

/*!50003 DROP PROCEDURE IF EXISTS  `spu_obtener_grupos_Bandos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spu_obtener_grupos_Bandos`()
BEGIN
	SELECT `alignment`.`alignment` , COUNT(*) AS 'cantidad' FROM `superhero`
	LEFT JOIN `alignment` ON `alignment`.`id` = `superhero`.`alignment_id`
	GROUP BY alignment.`id`;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spu_obtener_razas` */

/*!50003 DROP PROCEDURE IF EXISTS  `spu_obtener_razas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spu_obtener_razas`()
BEGIN
	SELECT id, race FROM race;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spu_publisher_list` */

/*!50003 DROP PROCEDURE IF EXISTS  `spu_publisher_list` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spu_publisher_list`()
begin
	select * from publisher order by publisher_name;
end */$$
DELIMITER ;

/* Procedure structure for procedure `spu_racebyids` */

/*!50003 DROP PROCEDURE IF EXISTS  `spu_racebyids` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spu_racebyids`( 
	IN _race_ids VARCHAR(255) 
)
BEGIN 
	SELECT SPH.id, PBS.publisher_name, SPH.superhero_name, SPH.full_name,  RAC.race 
		FROM superhero SPH 
		LEFT JOIN race RAC ON SPH.race_id = RAC.id 
		LEFT JOIN publisher PBS ON PBS.`id` = SPH.`publisher_id`
		WHERE FIND_IN_SET(SPH.race_id, _race_ids) > 0 
	ORDER BY SPH.superhero_name ASC ,SPH.race_id ASC; 
END */$$
DELIMITER ;

/* Procedure structure for procedure `spu_race_list` */

/*!50003 DROP PROCEDURE IF EXISTS  `spu_race_list` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spu_race_list`()
begin
	select * from race order by 2;
end */$$
DELIMITER ;

/* Procedure structure for procedure `spu_superheroplus_list` */

/*!50003 DROP PROCEDURE IF EXISTS  `spu_superheroplus_list` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spu_superheroplus_list`(IN _race_id INT, IN _gender_id INT, IN _alignment_id INT)
BEGIN
SELECT 	
	superhero.`id`, superhero.`superhero_name`,
	c1.`colour` 'hair_colour',`publisher`.`publisher_name`,
	superhero.`weight_kg`,  gender.`gender`, race.`race`, 
	alignment.`alignment`
	FROM superhero 
	 INNER JOIN gender ON gender.`id` = superhero.`gender_id`
	 INNER JOIN colour c1 ON c1.`id` = superhero.`hair_colour_id`	
	 LEFT JOIN race	ON race.`id` = superhero.`race_id`
	 LEFT JOIN publisher ON publisher.`id` = superhero.`publisher_id`
	 LEFT JOIN alignment ON alignment.`id` = superhero.`alignment_id`
	WHERE race.`id` = _race_id AND gender.`id` = _gender_id AND alignment.`id` = _alignment_id;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spu_superhero_list` */

/*!50003 DROP PROCEDURE IF EXISTS  `spu_superhero_list` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spu_superhero_list`(IN _publisher_id INT)
BEGIN
SELECT 	
	superhero.`id`, superhero.`superhero_name`,
	superhero.`full_name`, gender.`gender`,
	c1.`colour` 'eye_colour', c2.`colour` 'hair_colour', c3.`colour` 'skin_colour',
	race.`race`, `publisher`.`publisher_name`,
	alignment.`alignment`, superhero.`height_cm`,
	superhero.`weight_kg`
	FROM superhero 
	 INNER JOIN gender ON gender.`id` = superhero.`gender_id`
	 INNER JOIN colour c1 ON c1.`id` = superhero.`eye_colour_id`
	 INNER JOIN colour c2 ON c2.`id` = superhero.`hair_colour_id`
	 INNER JOIN colour c3 ON c3.`id` = superhero.`skin_colour_id`
	 LEFT JOIN race	ON race.`id` = superhero.`race_id`
	 LEFT JOIN publisher ON publisher.`id` = superhero.`publisher_id`
	 LEFT JOIN alignment ON alignment.`id` = superhero.`alignment_id`
	WHERE superhero.`publisher_id` = _publisher_id
	ORDER BY superhero.`id`;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spu_superhero_listbyrace` */

/*!50003 DROP PROCEDURE IF EXISTS  `spu_superhero_listbyrace` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spu_superhero_listbyrace`(in _race_id int)
begin
	SELECT 	SPH.`id`,
				SPH.`superhero_name`,
				SPH.`full_name`,
				RAC.`race`,
				PBS.`publisher_name`,
				ALG.`alignment`,
				SPH.`height_cm`
			FROM superhero SPH
			LEFT JOIN race RAC ON RAC.`id` = SPH.`race_id`
			LEFT JOIN publisher PBS ON PBS.`id` = SPH.`publisher_id`
			LEFT JOIN alignment ALG ON ALG.`id` = SPH.`alignment_id`
			WHERE SPH.`race_id` = _race_id
			ORDER BY PBS.`publisher_name`;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spu_superhero_list_publisher` */

/*!50003 DROP PROCEDURE IF EXISTS  `spu_superhero_list_publisher` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spu_superhero_list_publisher`(in _publisher_id int)
begin
		SELECT 
			sh.`id`, 
			sh.`superhero_name`, 
			sh.`full_name`, 
			ce.`colour` AS 'eye_colour', 
			ch.`colour` AS 'hair_colour', 
			cs.`colour` AS 'skin_colour'
		FROM superhero sh
		INNER JOIN colour	ce ON ce.`id` = sh.`eye_colour_id`
		INNER JOIN colour	ch ON ch.`id` = sh.`hair_colour_id`
		INNER JOIN colour	cs ON cs.`id` = sh.`skin_colour_id`
		where sh.publisher_id = _publisher_id
		ORDER BY sh.`id`;
	end */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
