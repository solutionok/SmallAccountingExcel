/*
SQLyog Community v13.1.1 (64 bit)
MySQL - 10.1.34-MariaDB : Database - tasagents_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tasagents_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin */;

USE `tasagents_db`;

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

/*Data for the table `migrations` */

/*Table structure for table `quiz` */

DROP TABLE IF EXISTS `quiz`;

CREATE TABLE `quiz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test_id` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `qtype` int(11) NOT NULL,
  `attach_media` text COLLATE utf8mb4_unicode_ci,
  `grade` double unsigned NOT NULL DEFAULT '1',
  `qprepare` int(11) DEFAULT NULL,
  `qtime` int(11) DEFAULT NULL,
  `qdetail` text COLLATE utf8mb4_unicode_ci,
  `order_val` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `test_trigger` (`test_id`) USING BTREE,
  CONSTRAINT `test_trigger` FOREIGN KEY (`test_id`) REFERENCES `test` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

/*Data for the table `quiz` */

insert  into `quiz`(`id`,`test_id`,`description`,`qtype`,`attach_media`,`grade`,`qprepare`,`qtime`,`qdetail`,`order_val`,`created_at`,`updated_at`) values 
(1,39,'choosing correct options',5,'app/quiz_media/5c72e6945232c.mp3',1,0,60,'{\"answer_text\":\"hello hello hello hello hello hello hello hello\",\"words\":\"8\",\"wpm\":\"8.0\"}',1,NULL,NULL),
(3,39,'typing',5,'app/quiz_media/5c72e8393b7b9.mp3',1,0,30,'{\"answer_text\":\"hi hi hi hi hi hi hi hi hi hi hi hi hi hi hi hi hi hi hi hi hi hi hi hi hi hi\",\"words\":\"26\",\"wpm\":\"52.0\"}',3,NULL,NULL);

/*Table structure for table `review` */

DROP TABLE IF EXISTS `review`;

CREATE TABLE `review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test_history_id` int(11) NOT NULL,
  `assessor_id` int(11) NOT NULL,
  `review_time` datetime DEFAULT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `grade` double DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `on_test_history` (`test_history_id`) USING BTREE,
  CONSTRAINT `on_test_history` FOREIGN KEY (`test_history_id`) REFERENCES `test_history` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

/*Data for the table `review` */

insert  into `review`(`id`,`test_history_id`,`assessor_id`,`review_time`,`quiz_id`,`grade`,`comment`) values 
(4,10,81,'2019-02-26 06:30:21',0,0,'good'),
(5,10,81,'2019-02-26 06:31:04',1,1,'good but must be grade up typing quality'),
(6,10,81,'2019-02-26 06:31:27',3,1,'grade up typing quality too');

/*Table structure for table `settings` */

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `setting_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setting_value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

/*Data for the table `settings` */

insert  into `settings`(`setting_name`,`setting_value`) values 
('admin_test_page_search_date','2018-12-30,2019-03-09'),
('review_page_search_date_1','2019-01-01,2019-03-30');

/*Table structure for table `test` */

DROP TABLE IF EXISTS `test`;

CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `change_date` date DEFAULT NULL,
  `change_user` text COLLATE utf8mb4_unicode_ci,
  `active_status` int(11) DEFAULT NULL,
  `preview_image` text COLLATE utf8mb4_unicode_ci,
  `ctf` date DEFAULT NULL,
  `ctt` date DEFAULT NULL,
  `atf` date DEFAULT NULL,
  `att` date DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT COMMENT='test list';

/*Data for the table `test` */

insert  into `test`(`id`,`name`,`description`,`change_date`,`change_user`,`active_status`,`preview_image`,`ctf`,`ctt`,`atf`,`att`) values 
(39,'A Level Test (2019)','A Level Test (2019)','2019-02-24','admin',1,NULL,NULL,'2019-02-28',NULL,'2019-03-09');

/*Table structure for table `test_assessor` */

DROP TABLE IF EXISTS `test_assessor`;

CREATE TABLE `test_assessor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test_id` int(11) DEFAULT NULL,
  `assessor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `test_assessor` (`test_id`) USING BTREE,
  KEY `test_assessor_assessor` (`assessor_id`) USING BTREE,
  CONSTRAINT `test_assessor` FOREIGN KEY (`test_id`) REFERENCES `test` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `test_assessor_assessor` FOREIGN KEY (`assessor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

/*Data for the table `test_assessor` */

insert  into `test_assessor`(`id`,`test_id`,`assessor_id`) values 
(135,39,81);

/*Table structure for table `test_candidate` */

DROP TABLE IF EXISTS `test_candidate`;

CREATE TABLE `test_candidate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `candidate_id` int(11) NOT NULL,
  `assessor_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `test_candidate_test` (`test_id`) USING BTREE,
  KEY `test_candidate_candidate` (`candidate_id`) USING BTREE,
  CONSTRAINT `test_candidate_candidate` FOREIGN KEY (`candidate_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `test_candidate_test` FOREIGN KEY (`test_id`) REFERENCES `test` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

/*Data for the table `test_candidate` */

insert  into `test_candidate`(`id`,`candidate_id`,`assessor_id`,`test_id`) values 
(1,82,81,39);

/*Table structure for table `test_history` */

DROP TABLE IF EXISTS `test_history`;

CREATE TABLE `test_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `candidate_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `rundate` date DEFAULT NULL,
  `availgrade` double DEFAULT NULL,
  `grade` double DEFAULT NULL,
  `test_result` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `test_history_key_test` (`test_id`) USING BTREE,
  KEY `test_history_key_user` (`candidate_id`) USING BTREE,
  CONSTRAINT `test_history_key_test` FOREIGN KEY (`test_id`) REFERENCES `test` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `test_history_key_user` FOREIGN KEY (`candidate_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

/*Data for the table `test_history` */

insert  into `test_history`(`id`,`candidate_id`,`test_id`,`rundate`,`availgrade`,`grade`,`test_result`) values 
(10,82,39,'2019-02-26',2,2,'[{\"id\":1,\"test_id\":39,\"description\":\"choosing correct options\",\"qtype\":5,\"attach_media\":\"app\\/quiz_media\\/5c72e6945232c.mp3\",\"grade\":1,\"qprepare\":0,\"qtime\":60,\"qdetail\":\"{\\\"answer_text\\\":\\\"hello hello hello hello hello hello hello hello\\\",\\\"words\\\":\\\"8\\\",\\\"wpm\\\":\\\"8.0\\\"}\",\"order_val\":1,\"created_at\":null,\"updated_at\":null,\"runtime\":20,\"detail\":{\"word_count\":\"8\",\"correctCount\":\"5\",\"accurate\":\"62.5\",\"overtime\":\"16\",\"wpm\":\"18.8\",\"typo\":\"3\",\"txt\":\"hello hello hello hello hell hello hel hel\",\"evaluated\":\"hello hello hello hello <strike>hell<\\/strike> hello <strike>hel<\\/strike> <strike>hel<\\/strike>\"},\"mark\":1},{\"id\":3,\"test_id\":39,\"description\":\"typing\",\"qtype\":5,\"attach_media\":\"app\\/quiz_media\\/5c72e8393b7b9.mp3\",\"grade\":1,\"qprepare\":0,\"qtime\":30,\"qdetail\":\"{\\\"answer_text\\\":\\\"hi hi hi hi hi hi hi hi hi hi hi hi hi hi hi hi hi hi hi hi hi hi hi hi hi hi\\\",\\\"words\\\":\\\"26\\\",\\\"wpm\\\":\\\"52.0\\\"}\",\"order_val\":3,\"created_at\":null,\"updated_at\":null,\"runtime\":23,\"detail\":{\"word_count\":\"26\",\"correctCount\":\"21\",\"accurate\":\"80.8\",\"overtime\":\"19\",\"wpm\":\"66.3\",\"typo\":\"5\",\"txt\":\"hi hi hi h h h hi hi hi hi hi hih hi hi hi hi hi hi hi hi hi hi hi hi hi hih\",\"evaluated\":\"hi hi hi <strike>h<\\/strike> <strike>h<\\/strike> <strike>h<\\/strike> hi hi hi hi hi <strike>hih<\\/strike> hi hi hi hi hi hi hi hi hi hi hi hi hi <strike>hih<\\/strike>\"},\"mark\":1}]');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` char(100) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` text COLLATE utf8mb4_unicode_ci,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `isadmin` int(11) DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci,
  `summary` text COLLATE utf8mb4_unicode_ci,
  `employee_history` text COLLATE utf8mb4_unicode_ci,
  `education_history` text COLLATE utf8mb4_unicode_ci,
  `skill_grade` text COLLATE utf8mb4_unicode_ci,
  `photo` text COLLATE utf8mb4_unicode_ci,
  `cv` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `email_unique` (`email`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`password`,`remember_token`,`updated_at`,`created_at`,`isadmin`,`phone`,`summary`,`employee_history`,`education_history`,`skill_grade`,`photo`,`cv`) values 
(1,'Admin','admin@example.com','$2y$10$uENszYNLI7MZ8434SrGIYuq1jmgRnRGBr2e.3JgsY/J0n0.Uh0Z/C','nzhLy9YpPaRUPkJL4HXHz7sQZiTEFL3N9H78uJ21cP5QyU96vO75ZkvbB1mI','2019-01-03 18:02:24','2018-12-22 07:16:58',1,'9995556664',NULL,NULL,NULL,NULL,NULL,NULL),
(81,'Assessor 1','assessor@example.com','$2y$10$8MQjjxrSUaKoGvj2ui55lOmhIW2kwVXn1BR3kIEHmSFS5dvWwU4H.','QCEoXOtMwCiScziZ8h85a70KX4WtGfthuOeCoOynJsnbAD9TgRsvaqowednQ','2019-01-15 12:53:35','2019-01-15 12:53:35',2,'9876543210','f','[]','[]','[]',NULL,''),
(82,'Candidate 1','candidate@example.com','$2y$10$uENszYNLI7MZ8434SrGIYuq1jmgRnRGBr2e.3JgsY/J0n0.Uh0Z/C','1kNn55x5n5irfdwJRY8yJeE8Emok5tyai1r1QTIVPCESbfhZz66xZ1HicpLI','2019-01-11 15:36:43','2019-01-11 15:36:43',0,'1234567890',NULL,'[]','[]','[]',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
