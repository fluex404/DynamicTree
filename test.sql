/*
SQLyog Ultimate v10.42 
MySQL - 5.5.5-10.4.8-MariaDB : Database - test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `test`;

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `update_dated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `category_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

/*Data for the table `category` */

insert  into `category`(`id`,`parent_id`,`name`,`created_date`,`update_dated`) values (4,NULL,'Komputer','2020-07-26 07:51:15','2020-07-26 07:51:15'),(5,NULL,'Elektronik','2020-07-26 07:51:17','2020-07-26 07:51:17'),(6,NULL,'Fashion','2020-07-26 07:51:17','2020-07-26 07:51:17'),(8,4,'Laptop','2020-07-26 07:53:49','2020-07-26 07:53:49'),(9,4,'Dekstop','2020-07-26 07:53:49','2020-07-26 07:53:49'),(10,8,'Asus','2020-07-26 07:54:18','2020-07-26 07:54:18'),(11,8,'Acer','2020-07-26 07:54:18','2020-07-26 07:54:18'),(12,10,'Asus ROG XXX',NULL,NULL),(13,10,'Asus K46C',NULL,NULL),(14,11,'Acer J20',NULL,NULL),(15,6,'Pria',NULL,NULL),(16,6,'Wanita',NULL,NULL),(17,6,'Anak - Anak',NULL,NULL),(19,15,'Baju',NULL,NULL),(20,15,'Celana',NULL,NULL),(21,15,'Daleman',NULL,NULL),(22,15,'Sepatu',NULL,NULL),(23,15,'Sendal',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
