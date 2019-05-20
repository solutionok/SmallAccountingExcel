/*
SQLyog Community v13.1.1 (64 bit)
MySQL - 10.1.34-MariaDB : Database - airbock_secondary
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `agent_selection` */

DROP TABLE IF EXISTS `agent_selection`;

CREATE TABLE `agent_selection` (
  `IdAgentSelection` int(11) NOT NULL AUTO_INCREMENT,
  `AgentSelection` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `InvoiceTime` int(11) DEFAULT NULL,
  `LoginAgent` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `PasswordAgent` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `LoginAttempsAgent` int(11) DEFAULT '0',
  `MaximumLoginAgent` int(11) DEFAULT '50',
  `BlockedAgent` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`IdAgentSelection`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `agent_selection` */

insert  into `agent_selection`(`IdAgentSelection`,`AgentSelection`,`InvoiceTime`,`LoginAgent`,`PasswordAgent`,`LoginAttempsAgent`,`MaximumLoginAgent`,`BlockedAgent`) values 
(1,'Maria Cosiche',5,'DFSDFS','FDDDD',NULL,50,0),
(2,'wijveke',5,'SDFSDF','ZERERR',NULL,50,0),
(3,'nog een wijveke',5,'SDFSDF','ZERZER',NULL,50,0);

/*Table structure for table `certificates` */

DROP TABLE IF EXISTS `certificates`;

CREATE TABLE `certificates` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Certificate` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `certificates` */

insert  into `certificates`(`Id`,`Certificate`) values 
(1,'No Certificate Needed'),
(2,'Welding Certificate Needed'),
(3,'VCA'),
(4,'VCA BA4'),
(5,'VCA BA5'),
(6,'Welder MIG');

/*Table structure for table `customers` */

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `NRCustomer` int(11) NOT NULL AUTO_INCREMENT,
  `NameCustomer` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `InBusinessCustomer` tinyint(4) DEFAULT NULL,
  `URLCustomer` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `SalesManager1` int(11) DEFAULT NULL,
  `SalesManager2` int(11) DEFAULT NULL,
  `SalesManager3` int(11) DEFAULT NULL,
  `JobType` int(11) DEFAULT NULL,
  `HoeveelManContract` int(11) DEFAULT NULL,
  `ContractPrice` int(11) DEFAULT NULL,
  `StreetandNRCustomer` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `PostalcodeAndCityCustomer` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `CountryCustomer` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDatecontract` date DEFAULT NULL,
  `VATNrCustomer` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `LegalCustomer` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `VATCode` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `VAT` int(11) DEFAULT NULL,
  `EmailInvoice1` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `EmailInvoice2` varchar(100) COLLATE utf8mb4_bin DEFAULT 'invoice@europeseonderaannemingbfy.be',
  `EmailPaimentInvitation1` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `EmailPaimentInvitation2` varchar(100) COLLATE utf8mb4_bin DEFAULT 'invoice@europeseonderaannemingbfy.be',
  `GeneralContactNameCustomer` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `GeneralContactGSMCustomer` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `GeneralContactMailCustomer` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `InvoiceContactNameCustomer` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `InvoiceContactGSMCustomer` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `InvoiceContactMailCustomer` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `HoursContactNameCustomer` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `HoursContactGSMCustomer` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `HoursContactMailCustomer` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `WorkersContactNameCustomer` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `WorkersContactGSMCustomer` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `WorkersContactMailCustomer` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `RemarkCustomer` text COLLATE utf8mb4_bin,
  PRIMARY KEY (`NRCustomer`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `customers` */

insert  into `customers`(`NRCustomer`,`NameCustomer`,`InBusinessCustomer`,`URLCustomer`,`SalesManager1`,`SalesManager2`,`SalesManager3`,`JobType`,`HoeveelManContract`,`ContractPrice`,`StreetandNRCustomer`,`PostalcodeAndCityCustomer`,`CountryCustomer`,`StartDate`,`EndDatecontract`,`VATNrCustomer`,`LegalCustomer`,`VATCode`,`VAT`,`EmailInvoice1`,`EmailInvoice2`,`EmailPaimentInvitation1`,`EmailPaimentInvitation2`,`GeneralContactNameCustomer`,`GeneralContactGSMCustomer`,`GeneralContactMailCustomer`,`InvoiceContactNameCustomer`,`InvoiceContactGSMCustomer`,`InvoiceContactMailCustomer`,`HoursContactNameCustomer`,`HoursContactGSMCustomer`,`HoursContactMailCustomer`,`WorkersContactNameCustomer`,`WorkersContactGSMCustomer`,`WorkersContactMailCustomer`,`RemarkCustomer`) values 
(1,'Devroe',0,'http://www.devroegroep.be/#..\\..\\poolse arbeiders\\gsm sms box\\database LIFE 3.xlsx#customers!C2',4,1,1,19,2,23,'Fraterstraat 109','9820 Merelbeke','Belgium','2016-01-01','2016-01-01','2','NV','E-AAC',0,'2','sales@airbock.com','2','sales@airbock.com','Johan Devroe','0032478956600','Johan@devroegroep.be','Ingrid Grijp','003292308283','Ingrid@devroegroep.be','Mario De graeve','003292308283','Mario@devroegroep.be','Mario De graeve','003292308283','Mario@devroegroep.be','2'),
(2,'Schrijnwerkerij Mincke',0,'www.schrijnwerkerij-mincke.be#..\\..\\poolse arbeiders\\gsm sms box\\database LIFE 3.xlsx#customers!C3',4,NULL,NULL,19,2,23,'Ronsesestraat 214','9660 Brakel','Belgium','0000-00-00','0000-00-00',NULL,'BVBA','E-AAC',0,NULL,'sales@airbock.com',NULL,'sales@airbock.com','Joris Mincke','0032475487103',NULL,'An Pollez','003255426714',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(3,'APT INTERNATIONAL NV',0,'http://www.aptint.com/',1,4,5,4,3,23,'De Tonne 73','9800 Deinze','Belgium','2016-01-01','2016-12-31','BE 044 0177 684','NV','E-AAC',0,NULL,NULL,NULL,NULL,'Hendrik De Keukeleire','003293861571',NULL,'Kathleen Bauwens','003293861571',NULL,'Charlotte',NULL,NULL,'Dieter De Vos',NULL,NULL,NULL),
(4,'Betonboringen Marc Schollaert BVBA',0,NULL,4,NULL,NULL,2,2,23,NULL,NULL,NULL,'0000-00-00','0000-00-00',NULL,NULL,'E-AAC',0,NULL,'sales@airbock.com',NULL,'sales@airbock.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(5,'Jeroen Vermeulen BVBA',0,NULL,4,NULL,NULL,2,2,23,NULL,NULL,NULL,'0000-00-00','0000-00-00',NULL,NULL,'E-AAC',0,NULL,'sales@airbock.com',NULL,'sales@airbock.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(6,'VRM Algemene Bouwservice BVBA',0,NULL,4,NULL,NULL,2,2,23,'Prinsenbosstraat 137','3270 Scherpenheuvel-Zichem','Belgium','0000-00-00','0000-00-00','BE0537966948','BVBA','E-AAC',0,NULL,'sales@airbock.com',NULL,NULL,'Marc Van Ruyssevelt','0499 26 45 55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(7,'MR Building',0,NULL,4,NULL,NULL,2,2,23,'Boekweitstraat 60','3660 Opglabbeek','Belgium','0000-00-00','0000-00-00','BE0628947703','Comm V','E-AAC',0,NULL,'sales@airbock.com',NULL,'sales@airbock.com','Rudy Mortier','0492/840018',NULL,'Sabrina Mortier','0498494193',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(8,'Dakwerken Miguel BVBA',0,NULL,4,NULL,NULL,2,2,23,NULL,NULL,NULL,'0000-00-00','0000-00-00',NULL,NULL,'E-AAC',0,NULL,'sales@airbock.com',NULL,'sales@airbock.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(9,'Kimaud',0,'www.kimaud.be#http://www.kimaud.be#',4,NULL,NULL,2,2,23,'Sportstraat 2A','9750 Zingem','Belgium','0000-00-00','0000-00-00','BE0461871438','BVBA','E-AAC',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10,'Algemene Ondern. Pleisterwerken',0,NULL,4,NULL,NULL,2,2,23,'Brugssesteenweg 161','8450 Bredene','Belgium','2017-06-13','0000-00-00','BE0452305654','BVBA','E-AAC',0,NULL,'sales@airbock.com',NULL,'sales@airbock.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(11,'velter Serge',0,NULL,4,NULL,NULL,2,2,23,'Zevekoteheirweg 58','8470 Gistel','Belgium','0000-00-00','0000-00-00','BE0679297631','BVBA','E-AAC',0,NULL,NULL,NULL,NULL,'Velter Serge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(12,'Stark Technics',0,'www.stark-technics.be#http://www.stark-technics.be#',4,NULL,NULL,2,2,23,'Mandellaan 535','8800 Roeselare','Belgium','0000-00-00','0000-00-00','BE0676826408','VOF','E-AAC',0,NULL,NULL,NULL,NULL,'Kevin Stark','0032470332502','sales@stark-technics.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(13,'Algemene Bouwtechnieken',0,NULL,4,NULL,NULL,2,2,23,'Processieweg 7A','9450 Heldergem','Belgium','0000-00-00','0000-00-00','BE0669495186','BVBA','E-AAC',0,NULL,NULL,NULL,NULL,'Kevin Ganzeman','0032475686412','kevinganzeman@telenet.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(14,'Juri NV',0,'#http://www.juri.be/#',4,NULL,NULL,2,2,23,'Industriestraat 21','9240 Zele','Belgium','0000-00-00','0000-00-00','BE 0427.377.941',NULL,'E-AAC',0,NULL,NULL,NULL,NULL,'Isabel Van Hecke','003252450717','isabel.vanhecke@juri.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(15,'Bouwonderneming Sé',0,'#http://www.bouwonderneming-se.be/#',4,NULL,NULL,2,2,23,'Eikstraat 23','9080 Lochristi','Belgium','0000-00-00','0000-00-00','BE 0882701483','BVBA','E-AAC',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(16,'BVBA Van Cauter Multitechnieken',0,'#http://www.vancauter.com/#',4,NULL,NULL,2,2,23,'Keiberg 74','9340 Lede','Belgium','0000-00-00','0000-00-00',NULL,NULL,'E-AAC',0,NULL,NULL,NULL,NULL,'Gert','003253831338',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(17,'Wood Design',0,'#https://www.wood-design.be/index.html#',4,NULL,NULL,2,2,23,'Trekschurenstraat 207','3500 Hasselt','Belgium','0000-00-00','0000-00-00','BE0688685350','BVBA','E-AAC',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(18,'SD Bouw Partners',0,NULL,4,NULL,NULL,2,2,23,'Zavelheide 9','2200 Herentals','Belgium','0000-00-00','0000-00-00','BE0690680679','BVBA','E-AAC',0,NULL,NULL,NULL,NULL,'Stijn Dirken','0032496855567',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(19,'Rik Bouw',0,'www.rikbouw.be/#..\\WORKERS COPELLO LIST\\copello list.xlsx#Sheet1!G10',4,NULL,NULL,2,2,23,'Kasteekstraat 20','9550 Woubrechtegem, Herzele','Belgium','0000-00-00','0000-00-00',NULL,NULL,'E-AAC',0,NULL,NULL,NULL,NULL,'Rik','0032475487327','rik@rikbouw.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(20,'Impresa BVBA',0,NULL,4,NULL,NULL,2,2,23,'Ledestraat 92A','9340 Impe','Belgium','0000-00-00','0000-00-00','BE0839042575','BVBA','E-AAC',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(21,'VMH Construct BVBA',0,NULL,4,NULL,NULL,2,2,23,'Kortrijksesteenweg 1','8530 Harelbeke','Belgium','0000-00-00','0000-00-00','BE0835422990','BVBA','E-AAC',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(22,'VMA',0,'#http://www.vma.be/#',4,NULL,NULL,2,2,23,'Kortrijksesteenweg 14 bus B','9830 SINT-MARTENS-LATEM','Belgium','0000-00-00','0000-00-00',NULL,NULL,'E-AAC',0,NULL,NULL,NULL,NULL,'Van Meenen Dimitri','003292809555','dimitrivanmeenen@vma.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(23,'Lissens Siebert',0,NULL,4,NULL,NULL,2,2,23,'Strijlandstraat 65','1755 Gooik','Belgium','0000-00-00','0000-00-00','BE0669578231',NULL,'E-AAC',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(24,'ABETO BVBA',0,NULL,4,NULL,NULL,2,2,23,'Speurtstraat 6','9340 Oordegem','Belgium','0000-00-00','0000-00-00','BE0474099475','BVBA','E-AAC',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(26,'Innotech Electricity',0,'#http://www.innotech.be/#',4,NULL,NULL,2,2,23,'SPLENTERBEEKSTRAAT 5','8710 WIELSBEKE','Belgium','0000-00-00','0000-00-00','BE0474113036','BVBA','E-AAC',0,NULL,NULL,NULL,NULL,'Gabriels Eddy','003256664451','info@innotech.be','Ilse Cornille',NULL,'info@innotech.be',NULL,NULL,NULL,NULL,NULL,NULL,'Werkt reeds met 10 polen, heeft zelf slaping 400 euro per maand, ook HVAC en Loodgieters'),
(27,'Buelens bvba Algemene dak- en gevelwerken',0,NULL,4,NULL,NULL,2,2,23,'Brabandtlaan 35','3090 Overijse','Belgium','0000-00-00','0000-00-00','BE0810889613','BVBA','E-AAC',0,NULL,NULL,NULL,NULL,NULL,'0032471525807',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(44,'Electro Longueville',0,'#http://www.elektro-longueville.be/#',4,NULL,NULL,2,2,23,'Broekstraat 41','8790 Waregem','Belgium','0000-00-00','0000-00-00',NULL,NULL,'E-AAC',0,NULL,NULL,NULL,NULL,'Wout Longueville','0032497384245','wout.longueville@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(45,'Indaco Constructie bvba',0,'#http://www.nachtergaelekristofbvba.be/#',4,NULL,NULL,2,2,23,'Bedrijvenpark Coupure 6','9700 Oudenaarde','Belgium','0000-00-00','0000-00-00','BTW BE 0875 711 050',NULL,'E-AAC',0,NULL,NULL,NULL,NULL,'Nachtergaele Kristof',NULL,NULL,NULL,'Sofie Ellast','Sofie@nachtergaelekristofbvba.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(46,'BK Interior',0,'www.bk-interior.be#http://www.bk-interior.be#',4,NULL,NULL,2,2,23,'Kortemarkstraat 40','8830 Hooglede','Belgium','0000-00-00','0000-00-00','BE0839790564',NULL,'E-AAC',0,NULL,NULL,NULL,NULL,'Michail Broutin','003251809324','info@bk-interior.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(47,'Geudens Koen Bvba',0,NULL,4,NULL,NULL,2,2,23,'Klinkstraat 20','2300 Turnhout','Belgium','0000-00-00','0000-00-00','BE0830296541',NULL,'E-AAC',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(48,'Mulders Roger BVBA',0,NULL,4,NULL,NULL,2,2,23,'Turfstraat 1','3670 Meeuwen Gruitrode','Belgium','0000-00-00','0000-00-00','BE0883909035','BVBA','E-AAC',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(49,'Meyland',0,'#http://meyland.be/#',4,NULL,NULL,2,2,23,'Vaartkant 3','9991 Adegem','Belgium','0000-00-00','0000-00-00',NULL,NULL,'E-AAC',0,NULL,NULL,NULL,NULL,'Tim','003293767600','tim@meyland.be>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(50,'Aluplus BVBA',0,'www.auplus.be#http://www.auplus.be#',4,NULL,NULL,2,2,23,'Armoedestraat 34','8800 Roeselare','Belgium','0000-00-00','0000-00-00','BE0406815426','BVBA','E-AAC',0,NULL,NULL,NULL,NULL,'Louis-Philippe Debaere','003251303691','info@aluplus.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(51,'Innotech PLUMBING',0,'#http://www.innotech.be/#',4,NULL,NULL,2,2,23,'SPLENTERBEEKSTRAAT 5','8710WIELSBEKE','Belgium','0000-00-00','0000-00-00','BE0474113036','BVBA','E-AAC',0,NULL,NULL,NULL,NULL,'Gabriels Eddy','003256664451','info@innotech.be','Ilse',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(52,'Dakwerken Cherette',0,'#https://www.dakwerkencherrette.be/#',4,NULL,NULL,2,2,23,'Wittinck 24','9520 Sint-Lievens-Houtem','Belgium','0000-00-00','0000-00-00',NULL,NULL,'E-AAC',0,NULL,NULL,NULL,NULL,NULL,'003253414095','info@dakwerkencherrette.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(53,'Gentse Pleisterwerken',0,'#http://gentsepleisterwerken.be/contact/#',4,NULL,NULL,2,2,23,'Slinke Molenstraat 23_x000D_\n Slinke Molenstraat 23','9000 Gent','Belgium','0000-00-00','0000-00-00',NULL,NULL,'E-AAC',0,NULL,NULL,NULL,NULL,NULL,'0032485991217_x000D_\n0032485991217','ingo@gentsepleiserwerken.be_x000D_\ninfo@gentsepleisterwerken.be_x000D_\ninfo@gentsepleisterwerken.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(54,'M-Trading NV',0,'#http://www.dm-construct.com/#',4,NULL,NULL,2,2,23,'Edward Pynaertkaai 101','9000 Gent','Belgium','0000-00-00','0000-00-00','BE0478493971',NULL,'E-AAC',0,NULL,NULL,NULL,NULL,'Dirk Maes','0032475782746','info@dm-construct.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(55,'Eddy Jacobs',0,'#http://dakwerkerjacobsronse.be/nl#',4,NULL,NULL,2,2,23,'Mussenstraat 50','9600 Ronse','Belgium','2017-05-30','0000-00-00',NULL,NULL,'E-AAC',0,NULL,NULL,NULL,NULL,'Eddy Jacobs','0032478633778',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(56,'Madelec',0,'#https://www.madelec.be/nl/home/#',4,NULL,NULL,2,2,23,'Kalkhoevestraat 52','8790 Waregem','Belgium','2017-05-30','0000-00-00',NULL,NULL,'E-AAC',0,NULL,NULL,NULL,NULL,'Guy Leysen','0032495299777','guy@madelec.Be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wil nog geen onderaanneming misschien toekomst'),
(57,'Ameel Technicx',0,'#http://www.ameel-technics.be/#',4,NULL,NULL,2,2,23,'Houthulstseweg 90','8920 Lagemark-Poelkapelle','Belgium','2017-06-13','0000-00-00','BE0427696061','BVBA','E-AAC',0,NULL,NULL,NULL,NULL,'Ameel PieterJan','0032474201288','pieterjan@ameel-technics.be','boekhouding@ameel-technics.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(58,'Demalco Construct',0,'www.delamo.be#http://www.delamo.be#',4,NULL,NULL,2,2,23,'Kortrijkstraat 159','8550 Zwevegem','Belgium','2017-06-13','0000-00-00','BE0506625357','BVBA','E-AAC',0,NULL,NULL,NULL,NULL,'Jonathan Deknudt','0032473423573','jonathan@delamo.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(59,'Herbo BVBA',0,'www.herbobvbabe#http://www.herbobvbabe#',4,NULL,NULL,2,2,23,'St. Corneliusstraat 13B 002','2440 Geel','Belgium','0000-00-00','0000-00-00','BE0460359921','BVBA','E-AAC',0,NULL,NULL,NULL,NULL,'Peter Hermans','003214593600','info@herbobvba.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(60,'FD Bouw',0,'www.fdbouw.be#http://www.fdbouw.be#',4,NULL,NULL,2,2,23,'Lammekensknokstraat 76','8770 Ingelmunster','Belgium','0000-00-00','0000-00-00','BE0681798152','BVBA','E-AAC',0,NULL,NULL,NULL,NULL,'Frederick Devolder','0032497532223','info@fdbouw.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(61,'Dakwerken Neirynck',0,'#https://www.dakwerken-neirynck.be/#',4,NULL,NULL,2,2,23,'Vlamingstraat 25','8560 Wevelgem','Belgium','2017-09-11','0000-00-00','BE0461528077','BVBA','E-AAC',0,NULL,NULL,NULL,NULL,'Serge Neirynck','0032475808607','info@dakwerken-neirynck.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(62,'EBR BVBA',0,'#http://www.ebrbvba.be/#',4,NULL,NULL,2,2,23,'Bosstraat 50/4','3560 Lummen','Belgium','2017-09-15','0000-00-00','BE0550727396','BVBA','E-AAC',0,NULL,NULL,NULL,NULL,'Burak Tuysuz','003211366161','burak@ebrbvba.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(63,'Desmet Elektro          1 OC',0,'www.desmet-elektro.be#http://www.desmet-elektro.be#',4,NULL,NULL,2,2,23,'Leenstraat 50','8870 Izegem','Belgium','2017-09-20','0000-00-00','BE0452305654','BVBA','E-AAC',0,NULL,NULL,NULL,NULL,'Danny Vandecasteele','003251490149','danny@desmet-elektro.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(64,'Vamadak',0,'www.vamadak.be#http://www.vamadak.be#',4,NULL,NULL,2,2,23,'Bakkerijstraat 1','8830 Hooglede','Belgium','2017-10-06','0000-00-00','BEXXX',NULL,'E-AAC',0,NULL,NULL,NULL,NULL,'Sam','0032494504129','sam@vamagroup.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(65,'MV Dak THIMAX',0,'www.mvdak.be#http://www.mvdak.be#',4,NULL,NULL,2,2,23,'Driegoten 62 C','9220 Hamme','Belgium','2017-10-09','0000-00-00','BE865795472',NULL,'E-AAC',0,NULL,NULL,NULL,NULL,'Yoeri Dochez','0032494500892','yoeri@mvdak.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(66,'MR Group',0,'www.mrgroup.be#http://www.mrgroup.be#',4,NULL,NULL,2,2,23,'Doenaertstraat 19','8500 Kortrijk','Belgium','2017-10-09','0000-00-00','BE0842496864','BVBA','E-AAC',0,NULL,NULL,NULL,NULL,'Jonathan Delft','003256900000','jonathan@mrgroup.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(67,'Mimax',0,'www.mimax.be#http://www.mimax.be#',4,NULL,NULL,2,2,23,'Ekelbeke 188','9920 Hamme','Belgium','2017-10-09','0000-00-00','BE0472054458','BVBA','E-AAC',0,NULL,NULL,NULL,NULL,'Michiel Dierick','0032475255269','info@mimax.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(68,'Duquaine Construct',0,'www.duquaine-construct.be#http://www.duquaine-construct.be#',4,NULL,NULL,2,2,23,'Drieslaan 21','8560 Moorsele','Belgium','2017-10-09','0000-00-00','BE0447094774','NV','E-AAC',0,NULL,NULL,NULL,NULL,'Klaas Buyck','0032478399104','klaas@duquaine-construct.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(69,'Tanghe Lippens',0,'www.tanghelippens.be#http://www.tanghelippens.be#',4,NULL,NULL,2,2,23,'Pietakkerstraat 2','8755 Ruiselede','Belgium','2017-10-09','0000-00-00','BE0531978187','BVBA','E-AAC',0,NULL,NULL,NULL,NULL,'Jan Tanghe','0032478463015','jan@tanghelippens.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(70,'New Signature',0,'#https://www.new-signature.be/nl/#',4,NULL,NULL,2,2,23,'Gentstraat 52','8760 Meulebeke','Belgium','2017-10-13','0000-00-00','BE0549980397','NV','E-AAC',0,NULL,NULL,NULL,NULL,'Julien Van De Maele','0032496261481','jvdm@new-signature.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(71,'BMP Building Services',0,'www.bmpbuildingservices.be#http://www.bmpbuildingservices.be#',4,NULL,NULL,2,2,23,'Ravenshout 3154','3980 Tessenderlo','Belgium','2017-10-13','0000-00-00','BE0431781345','BVBA','E-AAC',0,NULL,NULL,NULL,NULL,'Igor Swinnen','0032471628317','info@bmpbuildingservices.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(72,'Gevel Design',0,'www.geveldesign.be#http://www.geveldesign.be#',4,NULL,NULL,2,2,23,'Bernard Van Hoolstraat 37','2500 Koningshooikt','Belgium','2017-10-13','0000-00-00','BE0534722396','BVBA','E-AAC',0,NULL,NULL,NULL,NULL,'Wesley Van Dam','0032472814157','wesley@geveldesign.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(73,'E.T.S.E.',0,NULL,4,NULL,NULL,2,2,23,'Dorp 13 / Bus 1','2980 Zoersel','Belgium','2017-10-13','0000-00-00','BE0834344708','Comm.V.','E-AAC',0,NULL,NULL,NULL,NULL,'Christophe Milpas','0032476461305','info@etse.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(74,'Ryngaert',0,'www.ryngaert.be#http://www.ryngaert.be#',4,NULL,NULL,2,2,23,'Tunnelweg 12','2845 Niel','Belgium','2017-10-30','0000-00-00','BE0416352308','BVBA','E-AAC',0,NULL,NULL,NULL,NULL,'Jo Ryngaert','0003238447343','info@ryngaert.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(75,'Dieter Lammertijn',0,'www.bouwwerkenlammertijn.be#http://www.bouwwerkenlammertijn.be#',4,NULL,NULL,2,2,23,'Veldstraat 93','8020 Oostkamp','Belgium','2017-10-30','0000-00-00','BE0890116936',NULL,'E-AAC',0,NULL,NULL,NULL,NULL,'Lammertijn Dieter','0032474931854','lammertijn.dieter@gmail.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(76,'Van Nieuwenhove Algemene Bouwonderneming',0,NULL,4,NULL,NULL,2,2,23,'Snoeckstraat 30','9120 Melsele','Belgium','2017-11-02','0000-00-00','BE0502967863','BVBA','E-AAC',0,NULL,NULL,NULL,NULL,'Christophe Van Nieuwenhove','0032476996520','info@abvannieuwenhove.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(77,'BRP Group',0,'www.brp-group.be#http://www.brp-group.be#',4,NULL,NULL,2,2,23,'De Costerstraat 47','3150 Wespelaar','Belgium','2017-11-02','0000-00-00','BE0661694210','BVBA','E-AAC',0,NULL,NULL,NULL,NULL,'Johan Van Laer','0032492253912','info@brp-group.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(78,'Aannemingsbedrijf Van Der Heijden',0,'www.puinbreken.nl#http://www.puinbreken.nl#',4,NULL,NULL,2,2,23,'Loosbroekseweg 21','5388 BC Nistelrode','Netherlands','2017-11-06','0000-00-00','NL810261091B01','BV','E-AAC',0,NULL,NULL,NULL,NULL,'Dhr. Van Der Heijden','0031651760384','info@puinbreken.nl',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(79,'De Smet Van Damme HV 2',0,'www.elektro-dsvd.be#http://www.elektro-dsvd.be#',4,NULL,NULL,2,2,23,'Pijperzele 71','9620 Zottegem','Belgium','2017-09-20','0000-00-00','BE0875501412','BVBA','E-AAC',0,NULL,NULL,NULL,NULL,'Hans De Smet','0032477994772','hans@elektrodsvd.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(80,'MV Dak THIMAX solar',0,'www.mvdak.be#http://www.mvdak.be#',4,NULL,NULL,2,2,23,'Driegoten 62 C','9220 Hamme','Belgium','2017-10-09','0000-00-00','BE865795472',NULL,'E-AAC',0,NULL,NULL,NULL,NULL,'Yoeri Dochez','0032494500892','yoeri@mvdak.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(81,'test werkt  nie',0,NULL,4,NULL,NULL,2,2,23,'Brugsesteenweg 161','8450 Bredene','Belgium','2018-01-16','0000-00-00','BE0454390065','BVBA','E-AAC',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(82,'Algemene Ondernemingen Pleitsterwerken  (BVBA)',0,'www.#http://www.#',4,NULL,NULL,2,2,23,'Brugsesteenweg 161','8450 Bredene','Belgium','2017-09-20','0000-00-00','BE0452305654','BVBA','E-AAC',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(83,'De Smet Van Damme  HV',0,'www.elektro-dsvd.be/contact.html#http://www.elektro-dsvd.be/contact.html#',4,NULL,NULL,2,2,23,'Pijperzele 71','9620 Zottegem','Belgium','2018-01-16','0000-00-00','BE0875501412','BVBA','E-AAC',0,NULL,NULL,NULL,NULL,'Hans De Smet','0032477994772','hans@elektrodsvd.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(84,'LUKT NIE',0,'www.kimaud.be#http://www.kimaud.be#',4,NULL,NULL,2,2,23,'Sportstraat 2A','9750 Zingem','Belgium','2018-07-16','0000-00-00','BE0461871438','BVBA','E-AAC',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(85,'De smet Electro  verwijderdert Danny',0,'www.desmet-elektro.be#http://www.desmet-elektro.be#',4,NULL,NULL,2,2,23,'Buissestraat 36',NULL,NULL,'2018-05-14','0000-00-00',NULL,NULL,'E-AAC',0,NULL,NULL,NULL,NULL,NULL,NULL,'danny@desmet-elektro.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(86,'Wannijn NV',0,NULL,4,NULL,NULL,2,2,23,NULL,NULL,NULL,'2018-08-02','0000-00-00',NULL,NULL,'E-AAC',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(87,'Ewi Window',0,NULL,4,NULL,NULL,2,2,23,NULL,NULL,NULL,'2018-08-27','0000-00-00',NULL,NULL,'E-AAC',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(88,'Elektro Clement BVBA',0,NULL,4,NULL,NULL,2,2,23,NULL,NULL,NULL,'2018-08-27','0000-00-00',NULL,NULL,'E-AAC',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(89,'Liessens Nico BVBA',0,NULL,4,NULL,NULL,2,2,23,NULL,NULL,NULL,'2018-08-27','0000-00-00',NULL,NULL,'E-AAC',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(90,'Peba',0,'WWW.peba.nl#http://WWW.peba.nl#',4,NULL,NULL,2,2,23,NULL,NULL,NULL,'2018-09-04','0000-00-00',NULL,NULL,'E-AAC',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'zoekt beton mannen en ijzervlechters'),
(91,'Garage Breda',0,'http://www.garagebreda.be/#..\\WORKERS COPELLO LIST\\copello list.xlsx#Sheet1!G6',4,NULL,NULL,2,2,23,NULL,NULL,NULL,'2018-10-09','0000-00-00',NULL,NULL,'E-AAC',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(92,'Lahouse NV',0,NULL,4,NULL,NULL,2,2,23,NULL,NULL,NULL,'2018-11-20','0000-00-00',NULL,NULL,'E-AAC',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(93,'Boesman',0,'www.boesman.be#http://www.boesman.be/#',4,NULL,NULL,2,2,23,NULL,NULL,NULL,'2018-11-27','0000-00-00','BE0478239692',NULL,'E-AAC',0,NULL,NULL,NULL,NULL,'Ilse de Bruyne',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(94,'Derveaux BVBA',0,NULL,4,NULL,NULL,2,2,23,NULL,NULL,NULL,'2018-12-11','0000-00-00',NULL,NULL,'E-AAC',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(95,'Leroy Christof',0,'leroy.christof@skynet.be#..\\WORKERS COPELLO LIST\\copello list.xlsx#Sheet1!G9',4,NULL,NULL,2,2,23,NULL,NULL,NULL,'2019-01-16','0000-00-00',NULL,NULL,'E-AAC',0,NULL,NULL,NULL,NULL,NULL,'0478265184  _x000D_\n0478265184  _x000D_\n 0478265184',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(96,'Swerts Polyester',0,'http://www.swerts-polyester.be/#http://www.swerts-polyester.be/#',4,NULL,NULL,2,2,23,NULL,NULL,NULL,'2019-01-16','0000-00-00',NULL,NULL,'E-AAC',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(97,'Raemdonck',0,NULL,4,NULL,NULL,2,2,23,NULL,NULL,NULL,'2019-01-29','0000-00-00',NULL,NULL,'E-AAC',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(98,'Dhomes  BVBA',0,NULL,4,NULL,NULL,2,2,23,NULL,NULL,NULL,'2019-02-05','0000-00-00','BE0704619579',NULL,'E-AAC',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(99,'Quality Roof',0,'http://www.qualityroof.be/#http://www.qualityroof.be/#',4,NULL,NULL,2,2,23,NULL,NULL,NULL,'2019-02-05','0000-00-00',NULL,NULL,'E-AAC',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(100,'Sertebo',0,'http://sertebo.be/#http://sertebo.be/#',4,NULL,NULL,2,2,23,NULL,NULL,NULL,'2019-03-05','0000-00-00',NULL,NULL,'E-AAC',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(101,'Anrovoeg',0,'http://www.anrovoeg.be/contact.php#http://www.anrovoeg.be/contact.php#',4,NULL,0,NULL,NULL,NULL,'Leenakkerstraat 69_x000D_\n	_x000D_\n_x000D_\n_x000D_\nLeenakkerstraat 69_x000D_\n	_x000D_\n_x000D_\n_x000D','8791 Beveren - Leie','Be','2019-03-14','0000-00-00',NULL,NULL,'E-AAC',0,NULL,NULL,NULL,NULL,'Andrew Vanhoutte','0032496121064','robin@anrovoeg.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(102,'EEG',0,'http://www.eeg.be/nl#http://www.eeg.be/nl#',4,NULL,NULL,2,NULL,NULL,'Oostlaan 5',NULL,'Belgium','2019-03-20','0000-00-00',NULL,NULL,'E-AAC',0,NULL,NULL,NULL,NULL,'Sarah Declercq','003256425343','sd@eeg.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(103,'EEG DIVISIE VAN BRAECKEL',0,'http://www.vanbraeckel.be/nl#http://www.vanbraeckel.be/nl#',4,NULL,NULL,2,NULL,NULL,'Kortrijksesteenweg 255','9830 SINT-MARTENS-LATEM','Belgium','2019-03-20','0000-00-00',NULL,NULL,'E-AAC',0,NULL,NULL,NULL,NULL,'Stefanie Verhelst','003292256508','jobs.vanbraeckel@eeg.be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `hours` */

DROP TABLE IF EXISTS `hours`;

CREATE TABLE `hours` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `NameWorker` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `NRWorker` int(11) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `Week` int(11) DEFAULT NULL,
  `Day` int(11) DEFAULT NULL,
  `Hours` int(11) DEFAULT NULL,
  `Minutes` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `hours` */

insert  into `hours`(`Id`,`NameWorker`,`NRWorker`,`Year`,`Week`,`Day`,`Hours`,`Minutes`) values 
(1,'2',3,3,3,3,3,3);

/*Table structure for table `houses` */

DROP TABLE IF EXISTS `houses`;

CREATE TABLE `houses` (
  `NrHouse` int(11) NOT NULL AUTO_INCREMENT,
  `NameHouse` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CityHouse` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `StreetHouse` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `NrstreetHouse` int(11) DEFAULT NULL,
  `PostalCodeHouse` int(11) DEFAULT NULL,
  `ContactPersonHouse` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `GSMContactPersonHouse` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `AccomodationInHouse1` text COLLATE utf8mb4_bin,
  `AccomodationInHouse2` text COLLATE utf8mb4_bin,
  `WorkersNeedToBring` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`NrHouse`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `houses` */

insert  into `houses`(`NrHouse`,`NameHouse`,`CityHouse`,`StreetHouse`,`NrstreetHouse`,`PostalCodeHouse`,`ContactPersonHouse`,`GSMContactPersonHouse`,`AccomodationInHouse1`,`AccomodationInHouse2`,`WorkersNeedToBring`) values 
(1,'GentClementinalaan','Gent','Princes Clementinalaan',201,9000,'Andrej Hosko','0032494060407','The workers will live a house together with other workers; the house has kitchen, bathroom and sleeping rooms. Further accommodation: internet, freezer, deep freezer, oven, micro wave, washing machine, BBQ.','It might be that they have to sleep with 2 or 3 people in the same sleeping room. We pay for electricity, water gas and internet.  The workers don’t need to pay for anything. The only thing they need to do is buy food and kook food.','The workers need to bring: working cloths and working shoes. Also:  towels for the bathroom and sheets and pillows to sleep.'),
(2,'RonseZonnestraat','Ronse','Zonnestraat',25,9600,'Lukas','00421950503657','The workers will live a house together with other workers; the house has kitchen, bathroom and sleeping rooms. Further accommodation: internet, freezer, deep freezer, oven, micro wave, washing machine, BBQ.','It might be that they have to sleep with 2 or 3 people in the same sleeping room. We pay for electricity, water gas and internet.  The workers don’t need to pay for anything. The only thing they need to do is buy food and kook food.','The workers need to bring: working cloths and working shoes. Also:  towels for the bathroom and sheets and pillows to sleep.');

/*Table structure for table `job_types` */

DROP TABLE IF EXISTS `job_types`;

CREATE TABLE `job_types` (
  `NRType` int(11) NOT NULL AUTO_INCREMENT,
  `JobType` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `JobTypeNederlands` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `JobTypeEnglish` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `OndergrensRandom` int(11) DEFAULT NULL,
  `BovengrensRandom` int(11) DEFAULT NULL,
  `JobDescription` text COLLATE utf8mb4_bin,
  `JobDescript2` text COLLATE utf8mb4_bin,
  `Youtube1Job` text COLLATE utf8mb4_bin,
  `Youtube2Job` text COLLATE utf8mb4_bin,
  PRIMARY KEY (`NRType`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `job_types` */

insert  into `job_types`(`NRType`,`JobType`,`JobTypeNederlands`,`JobTypeEnglish`,`OndergrensRandom`,`BovengrensRandom`,`JobDescription`,`JobDescript2`,`Youtube1Job`,`Youtube2Job`) values 
(1,'Roofer for clay tiles and sub structure','Installeren van dakpannen en dak onderstruktuur','Installing of roof tiles and sub structure',1,3,'The roofer needs to be capable of installing clay tiles on an angled roof. This means: installing the wood sub structure where the clay tiles are put on, installing the clay tiles and finally adjusting and fitting the corners and top of the roof.',NULL,'https://www.youtube.com/watch?v=XVHykvFyTWk','https://www.youtube.com/watch?v=0ovOhV3RgiE'),
(2,'Brick Layer','Metserwerken gevel en snewbouw',NULL,4,6,'The bricklayer needs to be experienced in putting up walls for both inside and outside walls. The outside walls are with small bricks and the inside walls are with larger fast building bricks.',NULL,'https://www.youtube.com/watch?v=ySOHZnDz3n8','https://www.youtube.com/watch?v=oBM2bg5zujM'),
(3,'Painter for houses','Schilderwerken binnen en buiten',NULL,7,9,'The painter needs to be very experienced and deliver detailed painting work. First the walls are sanded and small holes are filled up, then the windows and doors are protected with masking tape. Afterwards there are several layers of paint to be applied.',NULL,'https://www.youtube.com/watch?v=ngssZ4kbj1c','https://www.youtube.com/watch?v=vbHRjVtO4Eo'),
(4,'Painter for industrial','Industriële schilderwerken','Industrial painting jobs',10,12,'The painter needs to sand and paint industrial machines. The machines are first cleaned with a de-greaser, then rust is removed and small holes are filled up. Secondly the machine is sanded. Finally several layers of paint are applied.',NULL,'https://www.youtube.com/watch?v=oQwQbrKhFYg',NULL),
(5,'Driller concrete',NULL,NULL,13,15,NULL,NULL,NULL,NULL),
(6,'Electrician',NULL,NULL,16,18,'The electrician needs to be capable of reading a plan and installing the electricity from the beginning to the end in a house, this means; cutting the sleeves, installing the flexible tubes and installing the sockets.','Finally connecting all the cables according to the plan.','https://www.youtube.com/watch?v=ykyNAjaoPTY','https://www.youtube.com/watch?v=ar6gi5TDh4k'),
(7,'Ground Worker',NULL,NULL,19,21,NULL,NULL,NULL,NULL),
(8,'Metal Worker general construction',NULL,NULL,22,24,'The works need to bold and assemble metal pieces together','This is for large metal constructions, the workers should have no fear of heights','https://www.youtube.com/watch?v=_plbwdOpZn4',NULL),
(9,'Road Worker',NULL,NULL,25,27,NULL,NULL,NULL,NULL),
(10,'Plaster worker',NULL,NULL,28,30,'The plaster worker needs to be very experienced in applying plaster and finishing the walls 100% flat to high standards.','All plaster is applied with a plaster spraying machine, afterwards the plaster worker needs to smoothen the walls.','https://www.youtube.com/watch?v=_Pkjmz8u4vA','https://www.youtube.com/watch?v=EM2pKcTI_Q0'),
(11,'Plumber','loodgietwerken uitvoeren',NULL,31,33,'We are looking for a plumber for installation of central heating in houses and apartment blocks. The installation is: cutting the wholes for the tubes, installation of the tubes.','Also installation of the warm and cold water tubes and shower and WC equipment.','https://www.youtube.com/watch?v=zxTJ0iO4EqU','https://www.youtube.com/watch?v=hatD_TTxpsQ'),
(12,'Welder',NULL,NULL,34,36,NULL,NULL,NULL,NULL),
(13,'Concrete Reinforcement Installer',NULL,NULL,37,39,NULL,NULL,NULL,NULL),
(14,'Concrete floor and wall installer',NULL,NULL,40,42,'The worker needs to have experience with concrete construction. This means installation of the steel reinforcement and installation of the wood structure to poor the concrete in.',NULL,'https://www.youtube.com/watch?v=3IS1aDYx7CQ','https://www.youtube.com/watch?v=d6Htzhtc6Yg'),
(15,'Dry Plaster Wall Installer',NULL,NULL,43,45,NULL,NULL,NULL,NULL),
(16,'Window Installer','Installateur voor ramen',NULL,46,48,NULL,NULL,NULL,NULL),
(17,'Door Installer',NULL,NULL,49,51,NULL,NULL,NULL,NULL),
(18,'Roofer for slate tiles and sub structure','Dakwerker voor pannen en onderdak',NULL,52,54,'The roofer needs to be capable of installing slate tiles on an angled roof. This means: first installing the wood sub structure where the slay tiles are put on.','Secondly installing slate tiles, this means cutting and adjusting them to the correct size and then nailing them.','https://www.youtube.com/watch?v=Y4NQOYY60I0','https://www.youtube.com/watch?v=TM-m5Vaij-w'),
(19,'Roofer for bituminus roofing and sub structure','Dakwerker voor bitumen en onderdak',NULL,55,57,'The roofer needs to be capable of installing bituminous roofing. This is according to the two layer principle: first installing a first layer.','Then installing the second layer, the second layer is glued and the seams and corners are burned with a flame torch.','https://www.youtube.com/watch?v=1C0lIM7K8cA&gl=BE','https://www.youtube.com/watch?v=WcueplRH2-8'),
(20,'Roofer for EPDM flat roof','Dakwerker voor EPDM en plat dak',NULL,58,60,'The roofer needs to be capable of installing EPDM. The EPDM is a single roofing system where the seams are welded together with a special heated tool.','Afterwards all the corners are finished to fit exactly to the roof.','https://www.youtube.com/watch?v=icx8w3Dtzeo','https://www.youtube.com/watch?v=N6jkL9FCoWc'),
(21,'Roofer for solar panels',NULL,NULL,61,63,'The Polyester Worker needs to be very experienced with hand-lay-up polyester, this means he needs to be capable of preparing the malls, applying gelcoat, applying the glass mats, applying polyester and afterwards cleaning the malls.','The pieces are then sanded and polished. Also experience with a spray-gun for spray-up is an advantage.','https://www.youtube.com/watch?v=3i0EkkAfFHI','https://www.youtube.com/watch?v=IaEOxY8Fs6s'),
(22,'General car mechanic',NULL,NULL,64,66,'The car mechanic needs to be capable of doing general car mechanic work : changing brakes, changing water-pumps, changing timing-belt, replacing battery, replacing tires, replacing springs and shock absorbers, etc.',NULL,'https://www.youtube.com/watch?v=2FDTJEemXy0','https://www.youtube.com/watch?v=4Z3p2bsOLSA'),
(23,'HVAC installation',NULL,NULL,67,69,'The installer needs to have experience with the installation of HVAC systems. This means, the installation of the channels, both in the ceiling and in the floor. The job is for large projects in apartment buildings.',NULL,'https://www.youtube.com/watch?v=ScVBPAitibQ','https://www.youtube.com/watch?v=I1blxypQJ-I'),
(24,'Brick Pointer',NULL,NULL,70,72,'Experienced brick pointer for all types of bricks',NULL,'https://www.youtube.com/watch?v=xhepwEEVPfg',NULL),
(25,'floor tiles installer',NULL,NULL,73,75,'Experienced floor tiles installer for ceramic tiles',NULL,'https://www.youtube.com/watch?v=w5wnGaDhfkw',NULL),
(26,'Carpenter (nog film insteken)',NULL,NULL,76,78,'Carpenter with experience in making furniture',NULL,NULL,NULL),
(27,'Plaster worker EXTRA',NULL,NULL,79,81,'Plaster worker who has experience with plastering with machine',NULL,'https://www.youtube.com/watch?v=56IkyqdE4GA',NULL),
(28,'Electrician Industrial','electricien voor de industrie',NULL,82,84,'The electrician needs to be capable of reading a plan and installing the electricity from the beginning to the end in a house, this means; cutting the sleeves, installing the flexible tubes and installing the sockets.','Finally connecting all the cables according to the plan.','https://www.youtube.com/watch?v=ykyNAjaoPTY','https://www.youtube.com/watch?v=ar6gi5TDh4k'),
(29,'Roofworker natural slate tiles','dakwerker natuurleien en tegelpannen',NULL,85,87,'The roofer needs to be capable of installing natural slate tiles on an angled roof. This means: first installing the wood sub structure where the slay tiles are put on.','Secondly installing natural slate tiles, this means cutting and adjusting them to the correct size and then nailing them.','https://www.youtube.com/watch?v=Bx3irh1moTI','https://www.youtube.com/watch?v=ZNDNwvD_1Vc'),
(30,'Staircase installer','Installatie van trappen in atelier en op locatie',NULL,88,90,'The installer needs to be capable of installing stairs in the studio. Asemble, check and adjust the parts of the construction on the site according to the technical plan. Different kinds of materials, mostly wood. Parts brought to location in 2/3 pieces.','Secondly installing stairs on location; this means putting  together the pieces prepaired in the studio and placing banisters. Experience in joinery interior and exterior.','https://www.youtube.com/watch?v=HyGKlkoLxqQ',NULL),
(31,'Employee Poultry Company','Medewerker pluimvee bedrijf',NULL,91,93,'We are looking for an all-round employee, male or female, for a poultry company. The work includes cleaning and care for poultry. However, it is expected that the employee will assist in all activities.','Experience is not required but the employee should have  affinity for the agricultural sector and willing to perform physical hard work. Work is done according to a schedule that is updated daily.',NULL,NULL),
(32,'Exterior plaster worker','Medewerker gevel renovatie / sierpleister',NULL,94,96,'The plaster worker should have experience in putting exterior plaster. The following tasks are included: measuring of broken walls, joining, mounting / dismantling, working on height, grinding and cutting joints, replacing bricks.','The employee will also work on facade masonry, anchoring, facade cleaning, concrete renovation.','https://www.youtube.com/watch?v=Nt7DjZRdURI','https://www.youtube.com/watch?v=hJvk8I7oi4s'),
(33,'BOVEN 100 lukt niet  nu wel ?',NULL,NULL,97,99,'NOG NIET IN','NOG NIET IN','NOG NIET IN','NOG NIET IN');

/*Table structure for table `languages` */

DROP TABLE IF EXISTS `languages`;

CREATE TABLE `languages` (
  `IDLanguages` int(11) NOT NULL AUTO_INCREMENT,
  `Language` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`IDLanguages`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `languages` */

insert  into `languages`(`IDLanguages`,`Language`) values 
(1,'English; Normal conversation level'),
(2,'German; Normal conversation level'),
(3,'French; Normal conversation level');

/*Table structure for table `local_partner` */

DROP TABLE IF EXISTS `local_partner`;

CREATE TABLE `local_partner` (
  `NRLocalPartner` int(11) NOT NULL AUTO_INCREMENT,
  `NameLocalpartner` varchar(200) DEFAULT NULL,
  `CompanyLocalParnter` varchar(200) DEFAULT NULL,
  `FactorOnSaleryLocalPartner` int(11) DEFAULT NULL,
  `TIJDELIJK` varchar(100) DEFAULT NULL,
  `URLLocalPartner` varchar(100) DEFAULT NULL,
  `StreetAndNRLocalPartner` varchar(100) DEFAULT NULL,
  `CityAndPostelCodeLocalPartner` varchar(100) DEFAULT NULL,
  `CountryLocalPartner` varchar(100) DEFAULT NULL,
  `GeneralContactNamLocalPartner` varchar(100) DEFAULT NULL,
  `GeneralTelLocalPartner` varchar(100) DEFAULT NULL,
  `GeneralEmailLocalPartner` varchar(100) DEFAULT NULL,
  `FAXNrLocalPartner` varchar(100) DEFAULT NULL,
  `RegistrationNRLocalPartner` varchar(100) DEFAULT NULL,
  `VATNRLocalPartner` varchar(100) DEFAULT NULL,
  `ManagerLocalPartner` varchar(100) DEFAULT NULL,
  `BankLocalPartner` varchar(100) DEFAULT NULL,
  `BankIBANNRLocalPartner` varchar(100) DEFAULT NULL,
  `BankBICNRLocalPartner` varchar(100) DEFAULT NULL,
  `EmailPayslipLocalPartner1` varchar(100) DEFAULT NULL,
  `EmailPayslipLocalPartner2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`NRLocalPartner`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

/*Data for the table `local_partner` */

insert  into `local_partner`(`NRLocalPartner`,`NameLocalpartner`,`CompanyLocalParnter`,`FactorOnSaleryLocalPartner`,`TIJDELIJK`,`URLLocalPartner`,`StreetAndNRLocalPartner`,`CityAndPostelCodeLocalPartner`,`CountryLocalPartner`,`GeneralContactNamLocalPartner`,`GeneralTelLocalPartner`,`GeneralEmailLocalPartner`,`FAXNrLocalPartner`,`RegistrationNRLocalPartner`,`VATNRLocalPartner`,`ManagerLocalPartner`,`BankLocalPartner`,`BankIBANNRLocalPartner`,`BankBICNRLocalPartner`,`EmailPayslipLocalPartner1`,`EmailPayslipLocalPartner2`) values 
(1,'Roel','T-GROUP INVEST KFT.',10,'FACTOR on salery  MAG NIET OP 0 anders fout in factuur',NULL,'HONVÉD UTCA 8 1/2','1054 Budapest','Hungary','Roel','24932666-2-41','biuro@pracabelgia.be','24932666-2-41',NULL,'HU24932666',NULL,'MKB Bank','HU73 1030 0002 1061 6432 4882 0018','MKKBHUHB',NULL,'sales@airbock.com'),
(2,'TEST','TestCompnay',30,'FACTOR on salery  MAG NIET OP 0 anders fout in factuur','www.test;com','glazenstraatje 3','9000 Gent','Belgium','Steven','003249494994','sales@sdfsfd.com','00329394994','939233','BE 99322933',NULL,'DEXIA','BE 92939299323','KBDBE',NULL,'sales@airbock.com'),
(3,'TEST VOOR FACTUUR','BOTENBOITE',20,'FACTOR on salery  MAG NIET OP 0 anders fout in factuur','WWW.botenbedrijf.com','Hoogbos 13/3','8694 Constanta','Oekraine','Mario','0045233442334','manneke@botenboite.com','0023323233','9893 93923','ROE 923323',NULL,'RUSKIEBANK','ROE 0232323','SQDFRUS',NULL,'sales@airbock.com'),
(4,'Marina Roemia','Marina Boite',10,'FACTOR on salery  MAG NIET OP 0 anders fout in factuur','www.mariana.com','Sneeuwstraat 12','92303 Constanta','Roemenia','Elena','00232332332','sales@marina.com','0023232323','232332323','RU 023020323',NULL,'UKEKS','RO 92392323','ZEQSF',NULL,'sales@airbock.com'),
(5,'TEST',NULL,10,'FACTOR on salery  MAG NIET OP 0 anders fout in factuur',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(6,'ADWORK GROUP','ADWORK GROUP EOOD',10,'FACTOR on salery  MAG NIET OP 0 anders fout in factuur',NULL,'Office 1 / Knyaz N. Nikolaevich str  NR 10','9002 Varna','Bulgaria','Thomas',NULL,'katie@europeseonderaannemingbfy.be',NULL,NULL,'BG 204492565',NULL,'Raiffiezenbank /Bulgaria/ AD','BG11 RZBB 9155 1008 1857 67 BGN','RZBBBGSF',NULL,NULL),
(7,'Roel Slowakia','Hallard s.r.o.',10,'FACTOR on salery  MAG NIET OP 0 anders fout in factuur',NULL,'Karadzicova 16','821 08 Bratislava','Slovakia','Roel','24932666-2-41','biuro@pracabelgia.be','24932666-2-41',NULL,'SK2023920415',NULL,NULL,NULL,NULL,NULL,NULL),
(8,'Manon Prieur  OC Prod','Oc Prod',10,'FACTOR on salery  MAG NIET OP 0 anders fout in factuur','www.ocprod.com','29 Invingatorilor Str. Building Stella, 9 floor, ap. 9.6, office 1','Bucharest','Romania','Manon','0040756193430','manon@ocprodgroup.com',NULL,'J40/15720/20.08.2007','22286079','Nicolas Combat','ING Cotroceni Branch','RO06INGB0000999902725824','INGBROBU',NULL,NULL),
(9,'XXX','XXX',NULL,NULL,NULL,NULL,'xxx','xxx','xxx','xxx','xxx',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10,'Lukas Fucek','Lukas Fucek',NULL,NULL,NULL,NULL,NULL,'Slovakia','Lukas','00421950503657','predzavinac@post.sk',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(11,'David Mortrieux AS Interim','AS Interim',10,NULL,NULL,NULL,'Kosice','Slovakia','Rafael','0033601258781','asinterim.pl@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(12,'Lukas Fucek','Lukas Fucek',10,NULL,NULL,NULL,NULL,'Slovakia','Lukas','00421950503657','predzavinac@post.sk',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `manager` */

DROP TABLE IF EXISTS `manager`;

CREATE TABLE `manager` (
  `IdManager` int(11) NOT NULL AUTO_INCREMENT,
  `NameManager` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `LoginManager` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `PasswordManager` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `LoginAttempsManager` int(11) DEFAULT '0',
  `MaximumLoginManager` int(11) DEFAULT '50',
  `BlockedManager` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`IdManager`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `manager` */

insert  into `manager`(`IdManager`,`NameManager`,`LoginManager`,`PasswordManager`,`LoginAttempsManager`,`MaximumLoginManager`,`BlockedManager`) values 
(1,'Gors','asdf','asdf',0,50,0),
(2,'Gentse','FDF2','JDKD8999',0,50,0);

/*Table structure for table `openjobscopello` */

DROP TABLE IF EXISTS `openjobscopello`;

CREATE TABLE `openjobscopello` (
  `JobNRWebsite` int(11) NOT NULL AUTO_INCREMENT,
  `DateEntered` date DEFAULT NULL,
  `JobFromSales` int(11) DEFAULT NULL,
  `JobOpen` tinyint(4) DEFAULT NULL,
  `JobForFIRST` tinyint(4) DEFAULT NULL,
  `JobForSECOND` tinyint(4) DEFAULT NULL,
  `JobForTHIRD` tinyint(4) DEFAULT NULL,
  `NameCustomer` int(11) DEFAULT NULL,
  `CustomerDescritionAndRegion` text COLLATE utf8mb4_bin,
  `JobType` int(11) DEFAULT NULL,
  `JobTypeDescription` text COLLATE utf8mb4_bin,
  `JobTypeDescription2` text COLLATE utf8mb4_bin,
  `Skillsrequired` text COLLATE utf8mb4_bin,
  `Skillsrequired2` text COLLATE utf8mb4_bin,
  `NumberOfPeople` int(11) DEFAULT NULL,
  `StartDateRequest` date DEFAULT NULL,
  `EndDateExclusivity` date DEFAULT NULL,
  `HowLongIsJob` tinyint(4) DEFAULT NULL,
  `Language` tinyint(4) DEFAULT NULL,
  `CertificatesNeeded` tinyint(4) DEFAULT NULL,
  `SafetyCertificatesNeeded` tinyint(4) DEFAULT NULL,
  `MinimumWorkingHoursPerDay` int(11) DEFAULT NULL,
  `MaximumWorkingDaysPerYear` int(11) DEFAULT NULL,
  `WePovideHouse` tinyint(4) DEFAULT NULL,
  `DrivingLicenseNeeded` tinyint(4) DEFAULT NULL,
  `CarNeededForJob` tinyint(4) DEFAULT NULL,
  `A1NeededForJob` tinyint(4) DEFAULT NULL,
  `FuelPaidToDriveToJob` tinyint(4) DEFAULT NULL,
  `FuelPaidToDriveToBelgium` tinyint(4) DEFAULT NULL,
  `CustomerWantsToPay` double DEFAULT NULL,
  `OfferedPriceWorker` double DEFAULT NULL,
  `WorkingMaterialNeeded` tinyint(4) DEFAULT NULL,
  `WorkingMaterial` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `SafetyMaterialProvided` tinyint(4) DEFAULT NULL,
  `WorkingClothsandShoes` tinyint(4) DEFAULT NULL,
  `WhereToSleep` tinyint(4) DEFAULT NULL,
  `EuropeanInsuranceCard` tinyint(4) DEFAULT NULL,
  `TakeWithYou` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `ReportMeetingA` text COLLATE utf8mb4_bin,
  `ReportMeetingB` text COLLATE utf8mb4_bin,
  `ReportMeetingC` text COLLATE utf8mb4_bin,
  `ReportMeetingD` text COLLATE utf8mb4_bin,
  `ReportMeetingE` text COLLATE utf8mb4_bin,
  PRIMARY KEY (`JobNRWebsite`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `openjobscopello` */

insert  into `openjobscopello`(`JobNRWebsite`,`DateEntered`,`JobFromSales`,`JobOpen`,`JobForFIRST`,`JobForSECOND`,`JobForTHIRD`,`NameCustomer`,`CustomerDescritionAndRegion`,`JobType`,`JobTypeDescription`,`JobTypeDescription2`,`Skillsrequired`,`Skillsrequired2`,`NumberOfPeople`,`StartDateRequest`,`EndDateExclusivity`,`HowLongIsJob`,`Language`,`CertificatesNeeded`,`SafetyCertificatesNeeded`,`MinimumWorkingHoursPerDay`,`MaximumWorkingDaysPerYear`,`WePovideHouse`,`DrivingLicenseNeeded`,`CarNeededForJob`,`A1NeededForJob`,`FuelPaidToDriveToJob`,`FuelPaidToDriveToBelgium`,`CustomerWantsToPay`,`OfferedPriceWorker`,`WorkingMaterialNeeded`,`WorkingMaterial`,`SafetyMaterialProvided`,`WorkingClothsandShoes`,`WhereToSleep`,`EuropeanInsuranceCard`,`TakeWithYou`,`ReportMeetingA`,`ReportMeetingB`,`ReportMeetingC`,`ReportMeetingD`,`ReportMeetingE`) values 
(1,'2018-02-02',2,1,1,2,3,2,'4dsssss',18,'5','6','7','8',2,'2017-02-01','2017-02-15',1,1,1,1,8,183,0,1,1,0,1,1,13,14,0,'15',0,0,2,0,'15','16','17','18','19','20'),
(2,'0000-00-00',NULL,1,1,NULL,NULL,2,NULL,18,NULL,NULL,NULL,NULL,2,'2017-02-01','2017-02-15',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,2,0,NULL,NULL,NULL,NULL,NULL,NULL),
(3,'0000-00-00',NULL,1,1,NULL,NULL,2,NULL,1,NULL,NULL,NULL,NULL,2,'2017-03-10','2017-03-24',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,2,0,NULL,NULL,NULL,NULL,NULL,NULL),
(4,'0000-00-00',NULL,1,1,NULL,NULL,2,NULL,1,NULL,NULL,NULL,NULL,2,'2017-03-10','2017-03-24',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,2,0,NULL,NULL,NULL,NULL,NULL,NULL),
(5,'0000-00-00',NULL,1,1,NULL,NULL,14,NULL,2,NULL,NULL,NULL,NULL,4,'2017-03-22','2017-03-30',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(6,'0000-00-00',NULL,1,1,NULL,NULL,14,NULL,2,NULL,NULL,NULL,NULL,4,'2017-03-22','2017-03-30',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(7,'0000-00-00',NULL,1,1,NULL,NULL,1,NULL,19,NULL,NULL,NULL,NULL,2,'2017-02-01','2017-02-17',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(8,'0000-00-00',NULL,1,1,NULL,NULL,1,NULL,19,NULL,NULL,NULL,NULL,2,'2017-02-01','2017-02-17',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(9,'0000-00-00',NULL,1,1,NULL,NULL,15,NULL,22,NULL,NULL,NULL,NULL,1,'2017-03-11','2017-03-25',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,2,0,NULL,NULL,NULL,NULL,NULL,NULL),
(10,'0000-00-00',NULL,1,1,NULL,NULL,15,NULL,22,NULL,NULL,NULL,NULL,1,'2017-03-11','2017-03-25',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,2,0,NULL,NULL,NULL,NULL,NULL,NULL),
(11,'0000-00-00',NULL,1,1,NULL,NULL,16,NULL,6,NULL,NULL,NULL,NULL,2,'2017-03-11','2017-03-25',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(12,'0000-00-00',NULL,1,1,NULL,NULL,16,NULL,6,NULL,NULL,NULL,NULL,2,'2017-03-11','2017-03-25',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(13,'0000-00-00',NULL,0,1,NULL,NULL,17,NULL,19,NULL,NULL,NULL,NULL,2,'2017-03-11','2017-03-25',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(14,'0000-00-00',NULL,0,1,NULL,NULL,17,NULL,19,NULL,NULL,NULL,NULL,2,'2017-03-11','2017-03-25',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(15,'0000-00-00',NULL,1,1,NULL,NULL,18,NULL,10,NULL,NULL,NULL,NULL,2,'2017-03-11','2017-03-25',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(16,'0000-00-00',NULL,1,1,NULL,NULL,18,NULL,10,NULL,NULL,NULL,NULL,2,'2017-03-11','2017-03-25',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(17,'0000-00-00',NULL,1,1,NULL,NULL,19,NULL,2,NULL,NULL,NULL,NULL,2,'2017-03-11','2017-03-25',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(18,'0000-00-00',NULL,1,1,NULL,NULL,19,NULL,2,NULL,NULL,NULL,NULL,2,'2017-03-11','2017-03-25',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(19,'0000-00-00',NULL,1,1,NULL,NULL,20,NULL,21,NULL,NULL,NULL,NULL,1,'2017-03-11','2017-03-25',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,2,0,NULL,NULL,NULL,NULL,NULL,NULL),
(20,'0000-00-00',NULL,1,1,NULL,NULL,20,NULL,21,NULL,NULL,NULL,NULL,1,'2017-03-11','2017-03-25',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,2,0,NULL,NULL,NULL,NULL,NULL,NULL),
(21,'0000-00-00',NULL,0,1,NULL,NULL,21,NULL,6,NULL,NULL,NULL,NULL,2,'2017-03-20','2017-04-07',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,'alleen franse taal en in Hullegem Sarah de clercq 056 42 53 43',NULL,NULL,NULL,NULL),
(22,'0000-00-00',NULL,0,1,NULL,NULL,21,NULL,6,NULL,NULL,NULL,NULL,2,'2017-03-20','2017-04-07',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,'alleen franse taal en in Hullegem Sarah de clercq 056 42 53 43',NULL,NULL,NULL,NULL),
(23,'0000-00-00',NULL,0,1,NULL,NULL,22,NULL,6,NULL,NULL,NULL,NULL,2,'2017-03-20','2017-04-07',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,'doet niet in onderaanneming',NULL,NULL,NULL,NULL),
(24,'0000-00-00',NULL,0,1,NULL,NULL,22,NULL,6,NULL,NULL,NULL,NULL,2,'2017-03-20','2017-04-07',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,'doet niet in onderaanneming',NULL,NULL,NULL,NULL),
(25,'0000-00-00',NULL,1,1,NULL,NULL,16,NULL,23,NULL,NULL,NULL,NULL,2,'2017-03-20','2017-04-07',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(26,'0000-00-00',NULL,1,1,NULL,NULL,16,NULL,23,NULL,NULL,NULL,NULL,2,'2017-03-20','2017-04-07',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(27,'0000-00-00',NULL,1,1,NULL,NULL,23,NULL,14,NULL,NULL,NULL,NULL,2,'2017-03-20','2017-03-07',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(28,'0000-00-00',NULL,1,1,NULL,NULL,23,NULL,14,NULL,NULL,NULL,NULL,2,'2017-03-20','2017-03-07',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(29,'0000-00-00',NULL,1,1,NULL,NULL,49,NULL,8,NULL,NULL,NULL,NULL,60,'2017-05-18','2017-05-31',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(30,'0000-00-00',NULL,1,1,NULL,NULL,49,NULL,8,NULL,NULL,NULL,NULL,60,'2017-05-18','2017-05-31',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(31,'0000-00-00',NULL,1,1,NULL,NULL,48,NULL,24,NULL,NULL,NULL,NULL,2,'2017-05-18','2017-05-31',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(32,'0000-00-00',NULL,1,1,NULL,NULL,48,NULL,24,NULL,NULL,NULL,NULL,2,'2017-05-18','2017-05-31',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(33,'0000-00-00',NULL,1,1,NULL,NULL,50,NULL,25,NULL,NULL,NULL,NULL,2,'2017-05-18','2017-05-31',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(34,'0000-00-00',NULL,1,1,NULL,NULL,50,NULL,25,NULL,NULL,NULL,NULL,2,'2017-05-18','2017-05-31',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(35,'0000-00-00',NULL,1,1,NULL,NULL,52,NULL,1,NULL,NULL,NULL,NULL,2,'2017-05-19','2017-06-01',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(36,'0000-00-00',NULL,1,1,NULL,NULL,52,NULL,1,NULL,NULL,NULL,NULL,2,'2017-05-19','2017-06-01',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(37,'0000-00-00',NULL,1,1,NULL,NULL,53,NULL,27,NULL,NULL,NULL,NULL,1,'2017-05-19','2017-05-01',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(38,'0000-00-00',NULL,1,1,NULL,NULL,53,NULL,27,NULL,NULL,NULL,NULL,1,'2017-05-19','2017-05-01',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(39,'0000-00-00',NULL,1,1,NULL,NULL,46,NULL,2,NULL,NULL,NULL,NULL,2,'2017-05-23','2017-06-02',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,2,0,NULL,NULL,NULL,NULL,NULL,NULL),
(40,'0000-00-00',NULL,1,1,NULL,NULL,46,NULL,2,NULL,NULL,NULL,NULL,2,'2017-05-23','2017-06-02',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,2,0,NULL,NULL,NULL,NULL,NULL,NULL),
(41,'0000-00-00',NULL,1,1,NULL,NULL,54,NULL,11,NULL,NULL,NULL,NULL,2,'2017-05-25','2017-06-03',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(42,'0000-00-00',NULL,1,1,NULL,NULL,54,NULL,11,NULL,NULL,NULL,NULL,2,'2017-05-25','2017-06-03',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(43,'0000-00-00',NULL,1,1,NULL,NULL,54,NULL,6,NULL,NULL,NULL,NULL,2,'2017-05-25','2017-06-03',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(44,'0000-00-00',NULL,1,1,NULL,NULL,54,NULL,6,NULL,NULL,NULL,NULL,2,'2017-05-25','2017-06-03',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(45,'0000-00-00',NULL,1,1,NULL,NULL,54,NULL,23,NULL,NULL,NULL,NULL,2,'2017-05-25','2017-06-03',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(46,'0000-00-00',NULL,1,1,NULL,NULL,54,NULL,23,NULL,NULL,NULL,NULL,2,'2017-05-25','2017-06-03',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(47,'0000-00-00',NULL,1,1,NULL,NULL,54,NULL,19,NULL,NULL,NULL,NULL,2,'2017-05-25','2017-06-03',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(48,'0000-00-00',NULL,1,1,NULL,NULL,54,NULL,19,NULL,NULL,NULL,NULL,2,'2017-05-25','2017-06-03',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(49,'0000-00-00',NULL,1,1,NULL,NULL,56,NULL,23,NULL,NULL,NULL,NULL,2,'2017-05-25','2017-06-03',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(50,'0000-00-00',NULL,1,1,NULL,NULL,56,NULL,23,NULL,NULL,NULL,NULL,2,'2017-05-25','2017-06-03',NULL,1,NULL,NULL,8,183,0,1,1,0,1,1,NULL,NULL,0,NULL,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(51,'0000-00-00',NULL,1,6,NULL,NULL,26,NULL,6,NULL,NULL,NULL,NULL,2,'2017-06-19','2017-07-29',1,1,1,NULL,8,183,1,1,1,0,1,1,NULL,NULL,0,NULL,1,1,2,0,NULL,NULL,NULL,NULL,NULL,NULL),
(52,'0000-00-00',NULL,1,6,NULL,NULL,26,NULL,6,NULL,NULL,NULL,NULL,2,'2017-06-19','2017-07-29',1,1,1,NULL,8,183,1,1,1,0,1,1,NULL,NULL,0,NULL,1,1,2,0,NULL,NULL,NULL,NULL,NULL,NULL),
(53,'0000-00-00',NULL,1,6,NULL,NULL,62,NULL,6,NULL,NULL,NULL,NULL,2,'2017-09-21','2017-09-30',1,1,1,NULL,8,183,1,1,1,0,1,0,NULL,NULL,1,NULL,1,1,2,0,NULL,NULL,NULL,NULL,NULL,NULL),
(54,'0000-00-00',NULL,1,6,NULL,NULL,62,NULL,6,NULL,NULL,NULL,NULL,2,'2017-09-21','2017-09-30',1,1,1,NULL,8,183,1,1,1,0,1,0,NULL,NULL,1,NULL,1,1,2,0,NULL,NULL,NULL,NULL,NULL,NULL),
(55,'0000-00-00',NULL,1,6,NULL,NULL,63,NULL,6,NULL,NULL,NULL,NULL,2,'2017-09-20','2017-09-30',1,1,1,NULL,8,183,1,1,1,0,1,0,NULL,NULL,1,NULL,1,1,2,0,NULL,NULL,NULL,NULL,NULL,NULL),
(56,'0000-00-00',NULL,1,6,NULL,NULL,63,NULL,6,NULL,NULL,NULL,NULL,2,'2017-09-20','2017-09-30',1,1,1,NULL,8,183,1,1,1,0,1,0,NULL,NULL,1,NULL,1,1,2,0,NULL,NULL,NULL,NULL,NULL,NULL),
(57,'0000-00-00',NULL,0,1,6,NULL,64,NULL,18,NULL,NULL,NULL,NULL,2,'2017-10-06','2017-11-17',1,1,1,NULL,8,183,1,1,1,0,1,1,NULL,NULL,0,NULL,1,1,2,0,NULL,'strikt op skills, kerel moet tegelpannen kunnen leggen en ervaring hebben',NULL,NULL,NULL,NULL),
(58,'0000-00-00',NULL,1,1,9,10,64,NULL,29,NULL,NULL,NULL,NULL,2,'2017-10-06','2017-11-17',1,1,1,NULL,8,183,1,1,1,0,1,1,NULL,NULL,0,NULL,1,1,2,0,NULL,'strikt op skills, kerel moet tegelpannen kunnen leggen en ervaring hebben',NULL,NULL,NULL,NULL),
(59,'0000-00-00',NULL,1,1,8,10,7,NULL,3,NULL,NULL,NULL,NULL,2,'2017-10-17','2017-10-30',1,1,1,NULL,8,183,1,1,1,0,1,1,NULL,NULL,0,NULL,1,1,2,0,NULL,NULL,NULL,NULL,NULL,NULL),
(60,'0000-00-00',NULL,1,1,8,9,70,NULL,30,NULL,NULL,NULL,NULL,2,'2017-10-17','2017-10-30',1,1,1,NULL,8,183,1,1,1,0,1,1,NULL,NULL,0,NULL,1,0,2,0,NULL,NULL,NULL,NULL,NULL,NULL),
(61,'0000-00-00',NULL,1,1,10,NULL,69,NULL,31,NULL,NULL,NULL,NULL,1,'2017-10-17','2017-11-13',1,1,1,NULL,8,183,1,1,1,0,1,1,NULL,NULL,0,NULL,1,1,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(62,'0000-00-00',NULL,1,1,8,9,67,NULL,6,NULL,NULL,NULL,NULL,2,'2017-10-18','2017-10-31',1,1,1,NULL,8,183,1,1,1,0,1,1,NULL,NULL,0,NULL,1,1,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(63,'0000-00-00',NULL,1,1,8,9,73,NULL,6,NULL,NULL,NULL,NULL,2,'2017-10-18','2017-10-31',1,1,1,NULL,8,183,1,1,1,0,1,1,NULL,NULL,0,NULL,1,1,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(64,'0000-00-00',NULL,0,1,8,9,72,NULL,32,NULL,NULL,NULL,NULL,3,'2017-10-23','2017-11-20',1,1,1,NULL,8,183,1,1,1,0,1,1,NULL,NULL,0,NULL,1,1,1,0,NULL,'Gevelwerker sierpleister',NULL,NULL,NULL,NULL),
(65,'0000-00-00',NULL,1,1,8,9,71,NULL,2,NULL,NULL,NULL,NULL,5,'2017-10-23','2017-11-20',1,1,1,NULL,8,183,1,1,1,0,1,1,NULL,NULL,1,NULL,1,1,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
(66,'0000-00-00',NULL,0,6,NULL,NULL,NULL,'Large company in Belgium in the region of Antwerp',28,'Renovation of High pressure pumping stations',NULL,'High Profile, Fully skilled, Needs technical background, must be able to read plan, must be able to connect electricity independantly, needs certificate for high voltage or equivalent through experience',NULL,2,'2019-04-15','0000-00-00',1,1,1,NULL,8,183,1,1,1,1,1,1,NULL,NULL,0,NULL,1,1,1,0,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `safety_certificates` */

DROP TABLE IF EXISTS `safety_certificates`;

CREATE TABLE `safety_certificates` (
  `IdSafetyCertificate` int(11) NOT NULL AUTO_INCREMENT,
  `NameSafetyCertificate` varbinary(200) DEFAULT NULL,
  `NrSafetyCertificate` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdSafetyCertificate`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `safety_certificates` */

insert  into `safety_certificates`(`IdSafetyCertificate`,`NameSafetyCertificate`,`NrSafetyCertificate`) values 
(1,'Allround Cerftificate',1),
(2,'VCA',2);

/*Table structure for table `sales_managers` */

DROP TABLE IF EXISTS `sales_managers`;

CREATE TABLE `sales_managers` (
  `IDSalesManager` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `MarkupCommision` double DEFAULT NULL,
  `Remark` int(11) DEFAULT '0',
  `LoginSalesManager` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `PasswordSalesManager` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `LoginAttempsSalesManager` int(11) DEFAULT NULL,
  `MaximumLoginSalesManager` int(11) DEFAULT '50',
  `BlockedSalesManager` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`IDSalesManager`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `sales_managers` */

insert  into `sales_managers`(`IDSalesManager`,`FullName`,`MarkupCommision`,`Remark`,`LoginSalesManager`,`PasswordSalesManager`,`LoginAttempsSalesManager`,`MaximumLoginSalesManager`,`BlockedSalesManager`) values 
(2,'TestSalesmanager',0,0,'f','f',2,50,0),
(3,'Constantia',0,0,'SDFSDF','SDFSDF',0,50,0),
(4,'Gentse T',1,0,'SDFDSF','SDFD',0,50,0),
(5,'KruishoutemConnectie',1.15,0,'FDF','SDFD',0,50,0);

/*Table structure for table `status_workers` */

DROP TABLE IF EXISTS `status_workers`;

CREATE TABLE `status_workers` (
  `IdStatusWorker` int(11) NOT NULL AUTO_INCREMENT,
  `StatusWorker` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`IdStatusWorker`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `status_workers` */

insert  into `status_workers`(`IdStatusWorker`,`StatusWorker`) values 
(1,'worker status 1'),
(2,'worker status 2'),
(3,'worker status 3'),
(4,'worker status 4'),
(5,'worker status 5');

/*Table structure for table `transport_cost` */

DROP TABLE IF EXISTS `transport_cost`;

CREATE TABLE `transport_cost` (
  `Idtransportcost` int(11) NOT NULL AUTO_INCREMENT,
  `TransportCost` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `Cost100KmWorker` int(11) DEFAULT NULL,
  `Cost100KmCustomer` int(11) DEFAULT NULL,
  PRIMARY KEY (`Idtransportcost`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `transport_cost` */

insert  into `transport_cost`(`Idtransportcost`,`TransportCost`,`Cost100KmWorker`,`Cost100KmCustomer`) values 
(1,'15 cent and 15  Cent',15,15),
(2,'15 cent and 15  Cent',0,0),
(3,'15 cent and 15  Cent',15,20),
(4,'15 cent and 15  Cent',15,0),
(5,'15 cent and 15  Cent',15,0),
(6,'15 cent and 15  Cent',15,0),
(7,'15 cent and 15  Cent',15,0),
(8,'15 cent and 15  Cent',15,0),
(9,'15 cent and 15  Cent',15,0),
(10,'15 cent and 15  Cent',15,15);

/*Table structure for table `workers` */

DROP TABLE IF EXISTS `workers`;

CREATE TABLE `workers` (
  `NRWorker` int(11) NOT NULL AUTO_INCREMENT,
  `NameWorker` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `SelfEmployedWorker` tinyint(4) DEFAULT '0',
  `DateAvailableWorker` date DEFAULT NULL,
  `AgeWorker` int(11) DEFAULT NULL,
  `TeamLeader` tinyint(4) DEFAULT '0',
  `WhoIsTeamLeader` int(11) DEFAULT NULL,
  `Remark` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `Customer` int(11) DEFAULT NULL,
  `AgentSelection1` int(11) DEFAULT NULL,
  `AgentSelection2` int(11) DEFAULT NULL,
  `AgentSelection3` int(11) DEFAULT NULL,
  `WorkerAskingPrice` double DEFAULT NULL,
  `Rate` double DEFAULT NULL,
  `CostWorker` int(11) DEFAULT NULL,
  `Margin` int(11) DEFAULT NULL,
  `StatusWorker` int(11) DEFAULT NULL,
  `StartDateContract` date DEFAULT NULL,
  `EndDateContract` date DEFAULT NULL,
  `LocalPartner` int(11) DEFAULT NULL,
  `JobType` int(11) DEFAULT NULL,
  `JobTypeBackup` int(11) DEFAULT NULL,
  `ExperienceWorker1` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `ExperienceWorker2` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `CountriesWorkedBefore` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `Eng` int(11) DEFAULT NULL,
  `German` int(11) DEFAULT NULL,
  `French` int(11) DEFAULT NULL,
  `Netherlands` int(11) DEFAULT NULL,
  `Car` tinyint(4) DEFAULT NULL,
  `A1` tinyint(4) DEFAULT NULL,
  `A1InProcess` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `Certificate` int(11) DEFAULT NULL,
  `Certificate2` int(11) DEFAULT NULL,
  `SafetyCertificate` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `GSM` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `Mail` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `BlockedWorker` tinyint(4) DEFAULT NULL,
  `LoginWorker` int(11) DEFAULT NULL,
  `PasswordWorker` int(11) DEFAULT NULL,
  `LoginAttempsWorker` int(11) DEFAULT NULL,
  `MaximumLoginWorker` int(11) DEFAULT NULL,
  `CodeCustomer` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `House` int(11) DEFAULT NULL,
  `TransportCostSytemFromCountry` int(11) DEFAULT NULL,
  `TransportCostToGoToSite` int(11) DEFAULT NULL,
  `StreetAndNRWorker` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `CityAndPostalCodeWorker` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `CountryWorker` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `TradeLicenseNOWorker` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `BICBanknrWorker` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `IBANBanknrWorker` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `OrganisationIdentificationNumberWorker` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `VATNRWorker` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `LimosaStreet` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `LimosaNr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `LimosaCity` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `LimosaPostal` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `LimosaCountry` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `LimosaArea` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `LimosaAreaPostals` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `LimosaAreacountry` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `CVWorker` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`NRWorker`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `workers` */

insert  into `workers`(`NRWorker`,`NameWorker`,`SelfEmployedWorker`,`DateAvailableWorker`,`AgeWorker`,`TeamLeader`,`WhoIsTeamLeader`,`Remark`,`Customer`,`AgentSelection1`,`AgentSelection2`,`AgentSelection3`,`WorkerAskingPrice`,`Rate`,`CostWorker`,`Margin`,`StatusWorker`,`StartDateContract`,`EndDateContract`,`LocalPartner`,`JobType`,`JobTypeBackup`,`ExperienceWorker1`,`ExperienceWorker2`,`CountriesWorkedBefore`,`Eng`,`German`,`French`,`Netherlands`,`Car`,`A1`,`A1InProcess`,`Certificate`,`Certificate2`,`SafetyCertificate`,`GSM`,`Mail`,`BlockedWorker`,`LoginWorker`,`PasswordWorker`,`LoginAttempsWorker`,`MaximumLoginWorker`,`CodeCustomer`,`House`,`TransportCostSytemFromCountry`,`TransportCostToGoToSite`,`StreetAndNRWorker`,`CityAndPostalCodeWorker`,`CountryWorker`,`TradeLicenseNOWorker`,`BICBanknrWorker`,`IBANBanknrWorker`,`OrganisationIdentificationNumberWorker`,`VATNRWorker`,`LimosaStreet`,`LimosaNr`,`LimosaCity`,`LimosaPostal`,`LimosaCountry`,`LimosaArea`,`LimosaAreaPostals`,`LimosaAreacountry`,`CVWorker`) values 
(1,'Andrey',0,'2012-02-02',1,0,1,'1',13,1,3,2,NULL,232,12,NULL,3,'0000-00-00','0000-00-00',1,1,1,'1','1','1',1,1,1,1,0,0,'1',1,1,'1','1','1',0,1,9,NULL,50,'1',1,1,1,'1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1'),
(2,'Anton',0,'0000-00-00',NULL,0,NULL,NULL,13,1,NULL,NULL,NULL,23,12,NULL,3,'0000-00-00','0000-00-00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,2,9,NULL,50,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(3,'Marcin Lesniewicz',0,'0000-00-00',NULL,0,NULL,NULL,13,1,NULL,NULL,NULL,23,12,NULL,3,'0000-00-00','0000-00-00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,3,9,NULL,50,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(4,'Janusz Jankowiak',0,'0000-00-00',NULL,0,NULL,NULL,13,NULL,NULL,NULL,NULL,23,12,NULL,3,'0000-00-00','0000-00-00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,4,9,NULL,50,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(5,'Prezemek Andrezejewki',0,'0000-00-00',NULL,0,NULL,NULL,13,NULL,NULL,NULL,NULL,23,12,NULL,3,'0000-00-00','0000-00-00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,5,9,NULL,50,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(6,'Lukas',0,'0000-00-00',NULL,1,NULL,NULL,3,NULL,NULL,NULL,NULL,24,12,NULL,1,'2019-01-02','2019-12-31',6,NULL,NULL,NULL,NULL,NULL,5,0,0,0,1,1,NULL,1,NULL,NULL,NULL,NULL,0,6,9,NULL,50,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(7,'Andrey',1,'2019-05-15',29,0,6,'good painter',3,2,3,1,14,24,12,NULL,1,'2019-05-17','2019-05-17',6,4,3,'painting','painting more','UK',0,0,0,0,0,1,'NIGIL',1,1,'1','00XXXX','mail',0,7,9999,NULL,50,'9999',2,4,9,'een straat 12','een stad 0000','Slovakia','00000','0000','0000','000','000','adres 1','adres 2','adres 3','adres 4','adres 5','adres 6','adres 7','adres 7',NULL),
(8,'Josef',0,'0000-00-00',NULL,0,6,NULL,3,NULL,NULL,NULL,NULL,24,12,NULL,1,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,8,9,NULL,50,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(9,'Michael',0,'0000-00-00',NULL,1,NULL,NULL,58,NULL,NULL,NULL,NULL,23,12,NULL,4,'0000-00-00','0000-00-00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,9,9,NULL,50,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10,'Saimon Knipski',0,'0000-00-00',NULL,1,NULL,NULL,60,NULL,NULL,NULL,NULL,25,15,NULL,1,'0000-00-00','0000-00-00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,10,9,NULL,50,NULL,1,NULL,NULL,NULL,'9000 Gent','Belgium',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(11,'Brehowsky',0,'0000-00-00',NULL,0,NULL,NULL,13,NULL,NULL,NULL,NULL,23,12,NULL,4,'0000-00-00','0000-00-00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,11,9,NULL,50,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(12,'Andrej HosKo',0,'0000-00-00',NULL,1,NULL,'zelf 17 euro facturatie',80,NULL,NULL,NULL,NULL,23,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,'00421 949 190 587',NULL,0,12,9,NULL,50,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(13,'Thomas Vojcik',0,'0000-00-00',NULL,1,NULL,'zelf 17 euro facturatie',80,NULL,NULL,NULL,NULL,23,17,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,'00421 940 756 531','predzavinac@post.sk',0,13,9,NULL,50,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(14,'Vladimir Uhrin',0,'0000-00-00',NULL,1,NULL,NULL,13,NULL,NULL,NULL,NULL,23,12,NULL,3,'0000-00-00','0000-00-00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,14,9,NULL,50,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(15,'Test worker payslip',0,'0000-00-00',NULL,0,NULL,NULL,10,NULL,NULL,NULL,NULL,23,12,NULL,3,'0000-00-00','0000-00-00',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,'002323232332',NULL,0,15,9,NULL,50,NULL,2,NULL,NULL,NULL,'8794 Polskistad','Poland',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(16,'TESWORKER marina 2',0,'0000-00-00',NULL,0,NULL,NULL,10,NULL,NULL,NULL,NULL,23,12,NULL,3,'0000-00-00','0000-00-00',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,'0023423424',NULL,0,16,9,NULL,50,NULL,1,NULL,NULL,NULL,'213123 PLAATS','ROEMENIA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(17,'TESWORKER marina 3',0,'0000-00-00',NULL,0,NULL,NULL,10,NULL,NULL,NULL,NULL,23,12,NULL,3,'0000-00-00','0000-00-00',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,'0023233232',NULL,0,17,9,NULL,50,NULL,1,NULL,NULL,NULL,'232344 PLAATS','ROEMENIA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(18,'Daniel Vicanek',0,'0000-00-00',NULL,0,NULL,NULL,13,NULL,NULL,NULL,NULL,24,13,NULL,3,'0000-00-00','0000-00-00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,18,9,NULL,50,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(19,'Gina Vojtech',0,'0000-00-00',NULL,0,NULL,NULL,13,NULL,NULL,NULL,NULL,24,13,NULL,3,'0000-00-00','0000-00-00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,19,9,NULL,50,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(20,'Tomasz Weremiuk',0,'0000-00-00',NULL,1,NULL,NULL,13,NULL,NULL,NULL,NULL,23,12,NULL,3,'0000-00-00','0000-00-00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,20,9,NULL,50,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(21,'Konrad',0,'0000-00-00',NULL,0,NULL,NULL,13,NULL,NULL,NULL,NULL,24,13,NULL,3,'0000-00-00','0000-00-00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,21,9,NULL,50,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(22,'Lukasz',0,'0000-00-00',NULL,0,NULL,NULL,13,NULL,NULL,NULL,NULL,24,13,NULL,3,'0000-00-00','0000-00-00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,22,9,NULL,50,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(23,'Daniel Vicanek',0,'0000-00-00',NULL,0,NULL,NULL,13,NULL,NULL,NULL,NULL,24,12,NULL,3,'0000-00-00','0000-00-00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,'00420775161121',NULL,0,23,9,NULL,50,NULL,1,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(24,'Vojtech Gina',0,'0000-00-00',NULL,0,NULL,NULL,13,NULL,NULL,NULL,NULL,24,12,NULL,3,'0000-00-00','0000-00-00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,'00420775161121',NULL,0,24,9,NULL,50,NULL,1,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(25,'Daniel Bizocouski',0,'0000-00-00',NULL,1,NULL,NULL,13,NULL,NULL,NULL,NULL,26,12,NULL,3,'0000-00-00','0000-00-00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,25,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(26,'Josef Sularz',0,'0000-00-00',NULL,1,NULL,NULL,13,NULL,NULL,NULL,NULL,25,12,NULL,3,'0000-00-00','0000-00-00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,26,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(27,'Bartek (electrician 1/3)',0,'0000-00-00',NULL,1,NULL,NULL,13,NULL,NULL,NULL,NULL,23,12,NULL,3,'0000-00-00','0000-00-00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,27,9,NULL,50,NULL,1,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(28,'Andrey (electrician 2/3)',0,'0000-00-00',NULL,0,27,NULL,13,NULL,NULL,NULL,NULL,23,12,NULL,3,'0000-00-00','0000-00-00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,28,9,NULL,50,NULL,1,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(29,'Pjotter (Electrician 3/3)',0,'0000-00-00',NULL,0,NULL,NULL,12,NULL,NULL,NULL,NULL,23,12,NULL,3,'0000-00-00','0000-00-00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,29,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(30,'Oleh Dedoriv',0,'0000-00-00',NULL,1,NULL,NULL,59,NULL,NULL,NULL,NULL,26,12,NULL,3,'0000-00-00','0000-00-00',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,30,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(31,'Daniel',0,'0000-00-00',NULL,0,6,NULL,3,NULL,NULL,NULL,NULL,24,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,31,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(32,'Jaroseaw Swievezgnski',0,'0000-00-00',NULL,1,NULL,NULL,61,NULL,NULL,NULL,NULL,26,12,NULL,3,'0000-00-00','0000-00-00',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,'0048722281991',NULL,0,32,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(33,'szawomir Fallowski',0,'0000-00-00',NULL,0,32,NULL,61,NULL,NULL,NULL,NULL,26,12,NULL,3,'0000-00-00','0000-00-00',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,33,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(34,'Daniel Tomecek',0,'0000-00-00',NULL,1,NULL,NULL,10,NULL,NULL,NULL,NULL,28,17,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,34,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(35,'Cezary Oleszczuk',0,'0000-00-00',NULL,1,NULL,NULL,63,NULL,NULL,NULL,NULL,28.5,12,NULL,3,'0000-00-00','0000-00-00',11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,35,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(36,'Daniel Tomecek plaster',0,'0000-00-00',NULL,0,NULL,NULL,10,NULL,NULL,NULL,NULL,28,17,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,36,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(51,'Cesarz Jaromir',0,'0000-00-00',NULL,1,NULL,'klant 28 amos 18',79,NULL,NULL,NULL,NULL,10,18,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,37,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(52,'Dziki PaWel',0,'0000-00-00',NULL,1,NULL,'klant 28 amos 18',79,NULL,NULL,NULL,NULL,10,18,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,38,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(53,'Stefan Sajitovic',0,'0000-00-00',NULL,1,53,NULL,47,NULL,NULL,NULL,NULL,28,17,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,39,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(54,'Ondrej Vrzala',0,'0000-00-00',NULL,0,NULL,NULL,18,NULL,NULL,NULL,NULL,28,17,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,40,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(55,'Peter Sipos',0,'0000-00-00',NULL,0,NULL,NULL,13,NULL,NULL,NULL,NULL,28,17,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,41,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(56,'Tibor Bujalko',0,'0000-00-00',NULL,0,NULL,NULL,13,NULL,NULL,NULL,NULL,28,17,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,42,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(57,'Cyril Zakutanska',0,'0000-00-00',NULL,1,NULL,NULL,11,NULL,NULL,NULL,NULL,0,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,43,9,NULL,50,NULL,1,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(58,'Joachim Babic team 3',0,'0000-00-00',NULL,1,NULL,NULL,50,NULL,NULL,NULL,NULL,28,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,44,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(59,'Stanislav Babic team 3',0,'0000-00-00',NULL,0,NULL,NULL,50,NULL,NULL,NULL,NULL,28,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,45,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(60,'Tomas Krajci team 3',0,'0000-00-00',NULL,0,NULL,NULL,50,NULL,NULL,NULL,NULL,28,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,46,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(61,'Vladimir Grof team 2',0,'0000-00-00',NULL,0,NULL,NULL,12,NULL,NULL,NULL,NULL,28,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,47,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(62,'Martin Vraverek team 2',0,'0000-00-00',NULL,1,NULL,NULL,12,NULL,NULL,NULL,NULL,28,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,48,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(63,'Martin Zuffa team 4 man',0,'0000-00-00',NULL,1,NULL,NULL,46,NULL,NULL,NULL,NULL,24,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,49,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(64,'Daniel Raiman team 4 man',0,'0000-00-00',NULL,0,NULL,NULL,46,NULL,NULL,NULL,NULL,24,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,50,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(65,'Juraj Jantosik team 4 man',0,'0000-00-00',NULL,0,NULL,NULL,46,NULL,NULL,NULL,NULL,24,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,51,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(66,'Michal Zboja team 4 man',0,'0000-00-00',NULL,0,NULL,NULL,46,NULL,NULL,NULL,NULL,24,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,52,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(67,'Nicolas Durcek',0,'0000-00-00',NULL,0,NULL,NULL,60,NULL,NULL,NULL,NULL,28,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,53,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(68,'Tibor Bul. Junior',0,'0000-00-00',NULL,0,NULL,NULL,60,NULL,NULL,NULL,NULL,28,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,54,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(69,'Peter Orsag',0,'0000-00-00',NULL,0,NULL,NULL,15,NULL,NULL,NULL,NULL,28,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,55,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(70,'Rostislav Slezka',0,'0000-00-00',NULL,0,NULL,NULL,15,NULL,NULL,NULL,NULL,28,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,56,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(71,'Tomas Olejnik',0,'0000-00-00',NULL,0,NULL,NULL,11,NULL,NULL,NULL,NULL,26,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,57,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(72,'Michael Belas',0,'0000-00-00',NULL,0,NULL,NULL,11,NULL,NULL,NULL,NULL,26,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,58,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(73,'Tomas Fojtu',0,'0000-00-00',NULL,0,NULL,NULL,15,NULL,NULL,NULL,NULL,28,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,59,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(74,'Cyril Zakutansky',0,'0000-00-00',NULL,0,NULL,NULL,15,NULL,NULL,NULL,NULL,28,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,60,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(75,'Jan Oburka',0,'0000-00-00',NULL,0,NULL,NULL,15,NULL,NULL,NULL,NULL,28,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,61,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(76,'Zbynek Besta',0,'0000-00-00',NULL,0,NULL,NULL,15,NULL,NULL,NULL,NULL,28,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,62,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(77,'Josef via Luckas',0,'0000-00-00',NULL,0,6,NULL,3,NULL,NULL,NULL,NULL,24,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,63,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(78,'Alojz Napstrok',0,'0000-00-00',NULL,0,NULL,NULL,18,NULL,NULL,NULL,NULL,28,17,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,64,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(79,'Roman Abaffy',0,'0000-00-00',NULL,0,NULL,NULL,46,NULL,NULL,NULL,NULL,24,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,65,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(80,'Jaroslav Hradsky',0,'0000-00-00',NULL,0,NULL,NULL,15,NULL,NULL,NULL,NULL,28,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,66,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(81,'Jan Krupa',0,'0000-00-00',NULL,0,NULL,NULL,15,NULL,NULL,NULL,NULL,28,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,67,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(82,'Robert Karas',0,'0000-00-00',NULL,0,NULL,NULL,15,NULL,NULL,NULL,NULL,28,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,68,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(83,'Kristian Cziria',0,'0000-00-00',NULL,0,NULL,NULL,27,NULL,NULL,NULL,NULL,25,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,69,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(84,'Rastislav Gaman',0,'0000-00-00',NULL,0,NULL,NULL,27,NULL,NULL,NULL,NULL,25,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,70,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(85,'Pavel Mynarik',0,'0000-00-00',NULL,0,NULL,NULL,18,NULL,NULL,NULL,NULL,28,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,71,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(86,'Petr Herman',0,'0000-00-00',NULL,0,NULL,NULL,18,NULL,NULL,NULL,NULL,28,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,72,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(87,'Dominik Hrkel',0,'0000-00-00',NULL,0,NULL,NULL,48,NULL,NULL,NULL,NULL,29,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,73,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(88,'Lukas Dzubak',0,'0000-00-00',NULL,0,NULL,NULL,24,NULL,NULL,NULL,NULL,29,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,74,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(89,'Michal Matej',0,'0000-00-00',NULL,0,NULL,NULL,24,NULL,NULL,NULL,NULL,29,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,75,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(90,'Lukas Dzubak',0,'0000-00-00',NULL,0,NULL,NULL,21,NULL,NULL,NULL,NULL,29,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,76,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(91,'Michal Matej',0,'0000-00-00',NULL,0,NULL,NULL,21,NULL,NULL,NULL,NULL,29,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,77,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(92,'FREE 21',0,'0000-00-00',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,78,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(93,'Anton Nalysnik',0,'0000-00-00',NULL,0,NULL,NULL,26,NULL,NULL,NULL,NULL,26,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,79,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(94,'Marin Sipos',0,'0000-00-00',NULL,0,NULL,NULL,21,NULL,NULL,NULL,NULL,27,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,80,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(95,'Miroslav Sipos',0,'0000-00-00',NULL,0,NULL,NULL,21,NULL,NULL,NULL,NULL,27,12,NULL,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,81,9,NULL,50,NULL,2,NULL,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(96,'Vasil Labant',0,'0000-00-00',NULL,0,NULL,NULL,21,NULL,NULL,NULL,NULL,27,12,0,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,82,9,NULL,50,NULL,2,1,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(97,'Milan Kuruc',0,'0000-00-00',NULL,0,NULL,NULL,21,NULL,NULL,NULL,NULL,27,12,0,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,83,9,NULL,50,NULL,2,1,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(98,'Kristian Weichpart',0,'0000-00-00',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,12,0,3,'0000-00-00','0000-00-00',6,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,84,9,NULL,50,NULL,2,1,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(99,'Jozef Palsa',0,'0000-00-00',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,12,0,NULL,'0000-00-00','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,85,9,NULL,50,NULL,2,1,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(100,NULL,0,'0000-00-00',0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,12,0,NULL,'0000-00-00','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,86,9,NULL,50,NULL,NULL,1,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(101,'Matus Klimo',0,'0000-00-00',0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,12,0,NULL,'0000-00-00','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,1,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(102,NULL,0,'0000-00-00',0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,12,0,NULL,'0000-00-00','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,1,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(103,'Erik Pocisk',0,'0000-00-00',0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,12,0,NULL,'0000-00-00','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,1,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(104,NULL,0,'0000-00-00',0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,12,0,NULL,'0000-00-00','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,1,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(105,'Milan Karol',0,'0000-00-00',0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,12,0,NULL,'0000-00-00','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,1,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(106,NULL,0,'0000-00-00',0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,12,0,NULL,'0000-00-00','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,1,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(107,NULL,0,'0000-00-00',0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,12,0,NULL,'0000-00-00','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,1,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(108,'qqsd qsdqsd',0,'0000-00-00',NULL,0,NULL,NULL,NULL,5,1,1,NULL,NULL,NULL,0,1,'0000-00-00','0000-00-00',1,1,1,NULL,NULL,'BE',0,0,0,0,0,0,NULL,1,1,'1',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,1,'BERGSTRAAT 14','MERELBEKE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(109,'sdfsdf',0,'0000-00-00',7,0,2,'sdfs',NULL,5,1,1,NULL,NULL,NULL,0,1,'0000-00-00','0000-00-00',1,1,1,NULL,NULL,NULL,0,0,0,0,0,0,NULL,1,1,'1',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cv/13OoWjrQ8fMRgRHzg3bGQbprvKGk0tCUUylnO2og.xlsx'),
(110,'test worker   110',1,'0000-00-00',23,0,6,'ZERZZR',NULL,5,1,1,18,23,23,0,1,'0000-00-00','0000-00-00',1,4,6,'ZERZERZR','ZREZERZER','ZERZERZERZRE',3,4,3,4,1,0,'ZERZER',1,1,'1','234','2342',0,1,9999,50,NULL,'9999',1,1,4,NULL,NULL,NULL,'234234','234234','234234','234234','234234','234234','234234','234234','234234','234234','2342','2342','234234','cv/aPS2xiRy9UP0f9jpt6TYg1efpGCwWgK10raP5Ef1.xlsx'),
(111,'test worker 111',1,'2019-05-15',23,0,0,'is the teamleader',50,3,4,2,12,23,12,0,1,'2019-05-07','2019-05-16',6,17,28,'QSDQSD','QSD','QSDQD',2,2,2,2,1,1,'AZEAZE',5,2,'2','12321324','123123',0,3,9999,0,50,'9999',1,1,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(112,'test worker 112',0,'0000-00-00',0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,12,0,NULL,'0000-00-00','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,1,NULL,'zer','zer','zer','zer','zer','zer','zer','zer','zer','zer','zer','zer','zer','zer','zer','zer','zer');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
