/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.5.53 : Database - talents
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`talents` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `talents`;

/*Table structure for table `base_area` */

DROP TABLE IF EXISTS `base_area`;

CREATE TABLE `base_area` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `parent_id` int(4) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `type` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `base_area` */

/*Table structure for table `base_config` */

DROP TABLE IF EXISTS `base_config`;

CREATE TABLE `base_config` (
  `config_id` int(4) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  `descn` varchar(50) DEFAULT NULL,
  `tip` varchar(50) DEFAULT NULL,
  `order_sort` int(4) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `base_config` */

/*Table structure for table `base_dict` */

DROP TABLE IF EXISTS `base_dict`;

CREATE TABLE `base_dict` (
  `dict_id` int(4) NOT NULL AUTO_INCREMENT,
  `type_code` varchar(50) DEFAULT NULL,
  `dict_name` varchar(50) DEFAULT NULL,
  `dict_vlaue` varchar(50) DEFAULT NULL,
  `descn` varchar(100) DEFAULT NULL,
  `order_sort` int(4) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`dict_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `base_dict` */

/*Table structure for table `base_permission` */

DROP TABLE IF EXISTS `base_permission`;

CREATE TABLE `base_permission` (
  `permission_id` int(4) NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(50) DEFAULT NULL,
  `permission_desc` varchar(50) DEFAULT NULL,
  `parent_id` int(4) DEFAULT NULL,
  `sort_order` int(4) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `base_permission` */

/*Table structure for table `base_role` */

DROP TABLE IF EXISTS `base_role`;

CREATE TABLE `base_role` (
  `role_id` int(4) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) DEFAULT NULL,
  `role_code` varchar(50) DEFAULT NULL,
  `sort_order` int(4) DEFAULT NULL,
  `role_desc` varchar(50) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `base_role` */

/*Table structure for table `base_role_permission` */

DROP TABLE IF EXISTS `base_role_permission`;

CREATE TABLE `base_role_permission` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `role_id` int(4) DEFAULT NULL,
  `permission_id` int(4) DEFAULT NULL,
  `sort_order` int(4) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `add_ip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `base_role_permission` */

/*Table structure for table `base_type` */

DROP TABLE IF EXISTS `base_type`;

CREATE TABLE `base_type` (
  `type_id` int(4) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(50) DEFAULT NULL,
  `descn` varchar(50) DEFAULT NULL,
  `parent_id` int(4) DEFAULT NULL,
  `sort_order` int(4) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `base_type` */

/*Table structure for table `base_user` */

DROP TABLE IF EXISTS `base_user`;

CREATE TABLE `base_user` (
  `user_id` int(4) NOT NULL AUTO_INCREMENT,
  `unicode` varchar(50) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `salt` varchar(50) DEFAULT NULL,
  `true_name` varchar(50) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `idcard` varchar(18) DEFAULT NULL,
  `gender` varchar(2) DEFAULT NULL,
  `birthday` varchar(20) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `provice` int(4) DEFAULT NULL,
  `city` int(4) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `wx` varchar(50) DEFAULT NULL,
  `deparment_id` int(4) DEFAULT NULL,
  `department_name` varchar(50) DEFAULT NULL,
  `role_id` int(4) DEFAULT NULL,
  `user_status` int(4) DEFAULT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `add_ip` varchar(50) DEFAULT NULL,
  `last_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_ip` varchar(50) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `base_user` */

insert  into `base_user`(`user_id`,`unicode`,`user_name`,`password`,`salt`,`true_name`,`phone`,`idcard`,`gender`,`birthday`,`tel`,`provice`,`city`,`address`,`email`,`qq`,`wx`,`deparment_id`,`department_name`,`role_id`,`user_status`,`add_time`,`add_ip`,`last_time`,`last_ip`,`status`) values (1,NULL,'admin','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'13511111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2018-08-24 20:52:54',NULL,'2018-08-24 20:52:54',NULL,1);

/*Table structure for table `base_user_role` */

DROP TABLE IF EXISTS `base_user_role`;

CREATE TABLE `base_user_role` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `role_id` int(4) DEFAULT NULL,
  `role_name` varchar(50) DEFAULT NULL,
  `user_id` int(4) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `add_ip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `base_user_role` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
