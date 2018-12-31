/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.5.61 : Database - pms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pms` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `pms`;

/*Table structure for table `t_atmessage` */

DROP TABLE IF EXISTS `t_atmessage`;

CREATE TABLE `t_atmessage` (
  `t_message_id` varchar(36) COLLATE utf8_bin NOT NULL,
  `t_employee_id` varchar(36) COLLATE utf8_bin NOT NULL,
  `t_project_id` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`t_message_id`,`t_employee_id`,`t_project_id`),
  KEY `fk_t_atmessage_t_message1` (`t_message_id`),
  KEY `fk_t_atmessage_t_employee1` (`t_employee_id`),
  KEY `fk_t_atmessage_t_project1` (`t_project_id`),
  CONSTRAINT `fk_t_atmessage_t_employee1` FOREIGN KEY (`t_employee_id`) REFERENCES `t_employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_atmessage_t_message1` FOREIGN KEY (`t_message_id`) REFERENCES `t_message` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_atmessage_t_project1` FOREIGN KEY (`t_project_id`) REFERENCES `t_project` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_atmessage` */

/*Table structure for table `t_contact` */

DROP TABLE IF EXISTS `t_contact`;

CREATE TABLE `t_contact` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `companyname` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `moblie` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `tel` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `website` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `weibo` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `content` text COLLATE utf8_bin,
  `projectid` varchar(36) COLLATE utf8_bin NOT NULL,
  `createtime` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_t_contact_t_project1` (`projectid`),
  CONSTRAINT `fk_t_contact_t_project1` FOREIGN KEY (`projectid`) REFERENCES `t_project` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_contact` */

/*Table structure for table `t_contactnote` */

DROP TABLE IF EXISTS `t_contactnote`;

CREATE TABLE `t_contactnote` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `content` text COLLATE utf8_bin,
  `createtime` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `contactid` varchar(36) COLLATE utf8_bin NOT NULL,
  `employeeid` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_t_contactnote_t_contact1` (`contactid`),
  KEY `fk_t_contactnote_t_employee1` (`employeeid`),
  CONSTRAINT `fk_t_contactnote_t_contact1` FOREIGN KEY (`contactid`) REFERENCES `t_contact` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_contactnote_t_employee1` FOREIGN KEY (`employeeid`) REFERENCES `t_employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_contactnote` */

/*Table structure for table `t_document` */

DROP TABLE IF EXISTS `t_document`;

CREATE TABLE `t_document` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `title` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `content` longtext COLLATE utf8_bin,
  `createtime` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `employeeid` varchar(36) COLLATE utf8_bin NOT NULL,
  `projectid` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_t_document_t_employee1` (`employeeid`),
  KEY `fk_t_document_t_project1` (`projectid`),
  CONSTRAINT `fk_t_document_t_employee1` FOREIGN KEY (`employeeid`) REFERENCES `t_employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_document_t_project1` FOREIGN KEY (`projectid`) REFERENCES `t_project` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_document` */

/*Table structure for table `t_employee` */

DROP TABLE IF EXISTS `t_employee`;

CREATE TABLE `t_employee` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `username` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `pic` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_employee` */

insert  into `t_employee`(`id`,`username`,`password`,`pic`) values ('1','admin','123123',NULL),('816c1899-ad95-4558-9','dan','123123',NULL),('88804bdf-c648-4d62-a','武晓明','123123',NULL),('91f49fde-3de9-4759-9','吴晓明','123123',NULL),('a3ec1c19-5674-464a-b','ming','ming',NULL),('cd787a53-3479-4ffb-b','王五','123123',NULL),('e0257b58-fea5-4082-b','王强','123123',NULL);

/*Table structure for table `t_employee_project` */

DROP TABLE IF EXISTS `t_employee_project`;

CREATE TABLE `t_employee_project` (
  `employeeid` varchar(36) COLLATE utf8_bin NOT NULL,
  `projectid` varchar(36) COLLATE utf8_bin NOT NULL,
  `role` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`employeeid`,`projectid`),
  KEY `fk_t_employee_has_t_project_t_project1` (`projectid`),
  KEY `fk_t_employee_has_t_project_t_employee1` (`employeeid`),
  CONSTRAINT `fk_t_employee_has_t_project_t_employee1` FOREIGN KEY (`employeeid`) REFERENCES `t_employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_employee_has_t_project_t_project1` FOREIGN KEY (`projectid`) REFERENCES `t_project` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_employee_project` */

insert  into `t_employee_project`(`employeeid`,`projectid`,`role`) values ('1','7063890d-ebe9-4898-8','[admin, 武晓明, 吴晓明, ming, 王五]'),('816c1899-ad95-4558-9','87faf448-4498-4fa2-b','[dan, 武晓明, 吴晓明]'),('88804bdf-c648-4d62-a','35379e0b-3cfc-409e-8','[admin, dan, 武晓明, 吴晓明, ming]'),('91f49fde-3de9-4759-9','735bac06-10a1-4bb5-8','[admin, 吴晓明, ming, 王五]');

/*Table structure for table `t_file` */

DROP TABLE IF EXISTS `t_file`;

CREATE TABLE `t_file` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `filename` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `filesize` mediumtext COLLATE utf8_bin,
  `createtime` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `fileTypeid` varchar(36) COLLATE utf8_bin NOT NULL,
  `employeeid` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_t_file_t_fileType1` (`fileTypeid`),
  KEY `fk_t_file_t_employee1` (`employeeid`),
  CONSTRAINT `fk_t_file_t_employee1` FOREIGN KEY (`employeeid`) REFERENCES `t_employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_file_t_fileType1` FOREIGN KEY (`fileTypeid`) REFERENCES `t_filetype` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_file` */

/*Table structure for table `t_filetype` */

DROP TABLE IF EXISTS `t_filetype`;

CREATE TABLE `t_filetype` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `createtime` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `t_employee_id` varchar(36) COLLATE utf8_bin NOT NULL,
  `t_project_id` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_t_fileType_t_employee1` (`t_employee_id`),
  KEY `fk_t_fileType_t_project1` (`t_project_id`),
  CONSTRAINT `fk_t_fileType_t_employee1` FOREIGN KEY (`t_employee_id`) REFERENCES `t_employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_fileType_t_project1` FOREIGN KEY (`t_project_id`) REFERENCES `t_project` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_filetype` */

/*Table structure for table `t_goal` */

DROP TABLE IF EXISTS `t_goal`;

CREATE TABLE `t_goal` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `desc` text COLLATE utf8_bin,
  `createtime` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `employeeid` varchar(36) COLLATE utf8_bin NOT NULL COMMENT '创建人',
  `projectid` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_t_goal_t_employee1` (`employeeid`),
  KEY `fk_t_goal_t_project1` (`projectid`),
  CONSTRAINT `fk_t_goal_t_employee1` FOREIGN KEY (`employeeid`) REFERENCES `t_employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_goal_t_project1` FOREIGN KEY (`projectid`) REFERENCES `t_project` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_goal` */

/*Table structure for table `t_idea` */

DROP TABLE IF EXISTS `t_idea`;

CREATE TABLE `t_idea` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `title` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `content` longtext COLLATE utf8_bin,
  `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `employeeid` varchar(36) COLLATE utf8_bin NOT NULL,
  `projectid` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_t_idea_t_employee1` (`employeeid`),
  KEY `fk_t_idea_t_project1` (`projectid`),
  CONSTRAINT `fk_t_idea_t_employee1` FOREIGN KEY (`employeeid`) REFERENCES `t_employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_idea_t_project1` FOREIGN KEY (`projectid`) REFERENCES `t_project` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_idea` */

insert  into `t_idea`(`id`,`title`,`content`,`createtime`,`employeeid`,`projectid`) values ('1a2bd806-3','表的设计',' 主键，索引，内连接外连接，外键','2018-09-28 09:44:07','88804bdf-c648-4d62-a','735bac06-10a1-4bb5-8'),('37b9af73-b','网络爬虫之前奏',' 学习这部分知识方便我们做项目','2018-09-28 17:29:07','1','35379e0b-3cfc-409e-8'),('4464dd77-8','学些什么',' 近期大家想学习什么','2018-09-28 17:35:34','1','35379e0b-3cfc-409e-8'),('4e40fe35-a','禅意花园','工作时间要不断提高自己的心理素质','2018-09-28 17:23:18','91f49fde-3de9-4759-9','735bac06-10a1-4bb5-8'),('557f7ebb-0','我们要努力啊',' 加油教育','2018-09-28 17:36:19','91f49fde-3de9-4759-9','35379e0b-3cfc-409e-8'),('772eeee1-b','工作也不要忘记锻炼身体',' 每天跑步是必须的','2018-09-28 17:32:26','1','87faf448-4498-4fa2-b'),('ad1f5c29-8','网络爬虫之前奏',' 我们需要了解它','2018-09-28 17:32:48','1','87faf448-4498-4fa2-b'),('b76828fb-f','你说的都对',' 是是是是','2018-09-28 17:33:27','1','87faf448-4498-4fa2-b'),('c39bd190-3','禅意花园',' 这是一个不错的idea','2018-09-28 17:28:43','1','35379e0b-3cfc-409e-8'),('eed31fbc-f','一起加油吧',' 让我们一起加油吧','2018-09-28 17:29:28','1','35379e0b-3cfc-409e-8');

/*Table structure for table `t_ideacomment` */

DROP TABLE IF EXISTS `t_ideacomment`;

CREATE TABLE `t_ideacomment` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `content` text COLLATE utf8_bin,
  `createtime` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `employeeid` varchar(36) COLLATE utf8_bin NOT NULL,
  `ideaid` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_t_ideacomment_t_employee1` (`employeeid`),
  KEY `fk_t_ideacomment_t_idea1` (`ideaid`),
  CONSTRAINT `fk_t_ideacomment_t_employee1` FOREIGN KEY (`employeeid`) REFERENCES `t_employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_ideacomment_t_idea1` FOREIGN KEY (`ideaid`) REFERENCES `t_idea` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_ideacomment` */

insert  into `t_ideacomment`(`id`,`content`,`createtime`,`employeeid`,`ideaid`) values ('103b6449-0','放松放松放松','2018-09-28 10:50:15','1','1a2bd806-3'),('7179f4df-8','飞洒否是分身乏术','2018-09-28 10:50:19','1','1a2bd806-3'),('95fd9335-d','发挥发挥发挥','2018-09-28 10:50:35','1','1a2bd806-3');

/*Table structure for table `t_message` */

DROP TABLE IF EXISTS `t_message`;

CREATE TABLE `t_message` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `content` text COLLATE utf8_bin,
  `createtime` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `projectid` varchar(36) COLLATE utf8_bin NOT NULL,
  `employeeid` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_t_message_t_project1` (`projectid`),
  KEY `fk_t_message_t_employee1` (`employeeid`),
  CONSTRAINT `fk_t_message_t_employee1` FOREIGN KEY (`employeeid`) REFERENCES `t_employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_message_t_project1` FOREIGN KEY (`projectid`) REFERENCES `t_project` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_message` */

insert  into `t_message`(`id`,`content`,`createtime`,`projectid`,`employeeid`) values ('334d90d9-a45','这是一个不错的项目,一起加油吧','2018-09-28 15:55:03','35379e0b-3cfc-409e-8','91f49fde-3de9-4759-9'),('8aa92cd6-e48','好好工作','2018-09-28 16:28:43','35379e0b-3cfc-409e-8','1'),('cccc086c-98c','just do it','2018-09-28 16:25:11','35379e0b-3cfc-409e-8','e0257b58-fea5-4082-b'),('fba77a81-e46','我有一个好的idea','2018-09-28 16:18:18','35379e0b-3cfc-409e-8','88804bdf-c648-4d62-a');

/*Table structure for table `t_project` */

DROP TABLE IF EXISTS `t_project`;

CREATE TABLE `t_project` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `desc` text COLLATE utf8_bin,
  `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_project` */

insert  into `t_project`(`id`,`name`,`desc`,`createtime`) values ('35379e0b-3cfc-409e-8','大学日语','学习日语,以适应对日软件开发','2018-09-28 15:25:00'),('7063890d-ebe9-4898-8',' 祁连山Photoshop专家讲堂','摄影师，设计人员，影视制作等专业人士','2018-09-28 11:43:35'),('735bac06-10a1-4bb5-8','编程系列之Java入门','ava学习指南系列教程的第9篇，介绍数据库相关的开发技术。本教程以MySQL服务器为例，介绍数据库的安装、一般使用、部署和使用Java进行数据库开发的技术。','2018-09-28 09:07:25'),('87faf448-4498-4fa2-b','改变生活的生物技术','这是一个神奇的技术','2018-09-28 15:16:05');

/*Table structure for table `t_task` */

DROP TABLE IF EXISTS `t_task`;

CREATE TABLE `t_task` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `desc` text COLLATE utf8_bin,
  `state` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `level` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `begintime` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `endtime` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `createtime` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `employeeid` varchar(36) COLLATE utf8_bin NOT NULL,
  `goalid` varchar(36) COLLATE utf8_bin NOT NULL,
  `rate` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_t_task_t_employee1` (`employeeid`),
  KEY `fk_t_task_t_goal1` (`goalid`),
  CONSTRAINT `fk_t_task_t_employee1` FOREIGN KEY (`employeeid`) REFERENCES `t_employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_task_t_goal1` FOREIGN KEY (`goalid`) REFERENCES `t_goal` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_task` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
