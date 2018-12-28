/*
SQLyog Ultimate v12.3.1 (64 bit)
MySQL - 5.5.53 : Database - yii2cms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yii2cms` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yii2cms`;

/*Table structure for table `t_admin` */

DROP TABLE IF EXISTS `t_admin`;

CREATE TABLE `t_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `nickname` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户昵称',
  `head_pic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户头像',
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index` (`id`,`username`,`email`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `t_admin` */

insert  into `t_admin`(`id`,`username`,`nickname`,`head_pic`,`auth_key`,`password_hash`,`password_reset_token`,`email`,`status`,`created_at`,`updated_at`) values 
(1,'admin','木木','https://resources.alilinet.com/20181016/201810161328096595.jpg','FoFuK-WrcOayDI0_kLdRwGavKN-6mXs6','$2y$13$bK1PVK/hcl2YZzuRsp7gT.1aY74UZKg6iA4JfxwFKkbJeZ3pr3CaG',NULL,'2107898148@qq.com',10,1498634445,1539942177),
(2,'demo','演示账号','https://resources.alilinet.com/20180323/201803230920589741.png','MGILqfoQyFko0kLvlaOxvNRp8LgZA0Qt','$2y$13$E27DkITDZIJbC0Snm3u8e.G1uueBTI4ubsPtV5S5PjmNroxqLbHJy',NULL,'demo@qq.com',10,1521768073,1521796799);

/*Table structure for table `t_admin_log` */

DROP TABLE IF EXISTS `t_admin_log`;

CREATE TABLE `t_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gets` text COLLATE utf8_unicode_ci,
  `posts` text COLLATE utf8_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `t_admin_log` */

insert  into `t_admin_log`(`id`,`route`,`url`,`user_agent`,`gets`,`posts`,`admin_id`,`admin_email`,`ip`,`created_at`,`updated_at`) values 
(1,'system/config/update','http://www.mygithub.com/system/config/update?id=24','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36','{\"id\":\"24\"}','{\"_csrf-backend\":\"1qO8bH4LtiAXCu2mKT7guPwyOU6Hqsaz_y7MYiaiHovjwt45E2zdWll9jshRcqzbtF1KJfLLn9DJZpYBfNZ03g==\",\"Config\":{\"name\":\"NETEASE_COOKIE\",\"title\":\"\\u7f51\\u6613\\u4e91\\u97f3\\u4e50cookie\",\"value\":\"888888\",\"remark\":\"\\u7f51\\u6613\\u4e91\\u97f3\\u4e50cookie\",\"sort\":\"1\"}}',1,'2107898148@qq.com','127.0.0.1',1539942454,1539942454),
(2,'site/index','http://localhost:8091/','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','[]','[]',2,'demo@qq.com','127.0.0.1',1545968271,1545968271),
(3,'rbac/user/login','http://localhost:8091/rbac/user/login','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','[]','[]',2,'demo@qq.com','127.0.0.1',1545968278,1545968278),
(4,'site/index','http://localhost:8091/','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','[]','[]',2,'demo@qq.com','127.0.0.1',1545968279,1545968279),
(5,'backup/export/index','http://localhost:8091/backup/export/index','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','[]','[]',2,'demo@qq.com','127.0.0.1',1545968281,1545968281),
(6,'backup/export/index','http://localhost:8091/backup/export/index','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','[]','[]',2,'demo@qq.com','127.0.0.1',1545968283,1545968283),
(7,'site/index','http://localhost:8091/','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','[]','[]',2,'demo@qq.com','127.0.0.1',1545968285,1545968285),
(8,'site/index','http://localhost:8091/','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','[]','[]',2,'demo@qq.com','127.0.0.1',1545968286,1545968286),
(9,'backup/export/index','http://localhost:8091/backup/export/index','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','[]','[]',2,'demo@qq.com','127.0.0.1',1545968288,1545968288),
(10,'site/index','http://localhost:8091/','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','[]','[]',1,'2107898148@qq.com','127.0.0.1',1545968300,1545968300),
(11,'debug/default/toolbar','http://localhost:8091/debug/default/toolbar?tag=5c259aacd2162','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','{\"tag\":\"5c259aacd2162\"}','[]',1,'2107898148@qq.com','127.0.0.1',1545968302,1545968302),
(12,'rbac/user/index','http://localhost:8091/rbac/user/index','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','[]','[]',1,'2107898148@qq.com','127.0.0.1',1545968314,1545968314),
(13,'debug/default/toolbar','http://localhost:8091/debug/default/toolbar?tag=5c259aba343a7','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','{\"tag\":\"5c259aba343a7\"}','[]',1,'2107898148@qq.com','127.0.0.1',1545968315,1545968315),
(14,'rbac/user/signup','http://localhost:8091/rbac/user/signup','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','[]','[]',1,'2107898148@qq.com','127.0.0.1',1545968318,1545968318),
(15,'debug/default/toolbar','http://localhost:8091/debug/default/toolbar?tag=5c259abe65330','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','{\"tag\":\"5c259abe65330\"}','[]',1,'2107898148@qq.com','127.0.0.1',1545968319,1545968319),
(16,'rbac/user/index','http://localhost:8091/rbac/user/index','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','[]','[]',1,'2107898148@qq.com','127.0.0.1',1545968326,1545968326),
(17,'debug/default/toolbar','http://localhost:8091/debug/default/toolbar?tag=5c259ac69f7ea','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','{\"tag\":\"5c259ac69f7ea\"}','[]',1,'2107898148@qq.com','127.0.0.1',1545968328,1545968328),
(18,'rbac/user/view','http://localhost:8091/rbac/user/view?id=1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','{\"id\":\"1\"}','[]',1,'2107898148@qq.com','127.0.0.1',1545968329,1545968329),
(19,'debug/default/toolbar','http://localhost:8091/debug/default/toolbar?tag=5c259ac9261ea','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','{\"tag\":\"5c259ac9261ea\"}','[]',1,'2107898148@qq.com','127.0.0.1',1545968330,1545968330),
(20,'system/user-rank/index','http://localhost:8091/system/user-rank/index','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','[]','[]',1,'2107898148@qq.com','127.0.0.1',1545968419,1545968419),
(21,'debug/default/toolbar','http://localhost:8091/debug/default/toolbar?tag=5c259b23bcb6a','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','{\"tag\":\"5c259b23bcb6a\"}','[]',1,'2107898148@qq.com','127.0.0.1',1545968421,1545968421),
(22,'rbac/menu/index','http://localhost:8091/rbac/menu/index','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','[]','[]',1,'2107898148@qq.com','127.0.0.1',1545968558,1545968558),
(23,'debug/default/toolbar','http://localhost:8091/debug/default/toolbar?tag=5c259baec081f','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','{\"tag\":\"5c259baec081f\"}','[]',1,'2107898148@qq.com','127.0.0.1',1545968560,1545968560),
(24,'rbac/menu/create','http://localhost:8091/rbac/menu/create','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','[]','[]',1,'2107898148@qq.com','127.0.0.1',1545968565,1545968565),
(25,'debug/default/toolbar','http://localhost:8091/debug/default/toolbar?tag=5c259bb55dae2','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','{\"tag\":\"5c259bb55dae2\"}','[]',1,'2107898148@qq.com','127.0.0.1',1545968566,1545968566),
(26,'rbac/menu/create','http://localhost:8091/rbac/menu/create','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','[]','{\"_csrf-backend\":\"DugcZdLzf-4QViE5g7-tU5vFcH686ulNlVNyeU7eus1moFIWk5oU3no7Fmrg8-g22ZdJC9u9syfgPwQXFO_DoQ==\",\"Menu\":{\"parent\":\"\",\"name\":\"13213213\",\"parent_name\":\"\\u6743\\u9650\\u7ba1\\u7406\",\"route\":\"\\/article\\/article-group\\/create\",\"order\":\"2\",\"icon\":\"\"}}',1,'2107898148@qq.com','127.0.0.1',1545968627,1545968627),
(27,'rbac/menu/view','http://localhost:8091/rbac/menu/view?id=32','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','{\"id\":\"32\"}','[]',1,'2107898148@qq.com','127.0.0.1',1545968628,1545968628),
(28,'rbac/menu/create','http://localhost:8091/rbac/menu/create','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','[]','{\"_csrf-backend\":\"DugcZdLzf-4QViE5g7-tU5vFcH686ulNlVNyeU7eus1moFIWk5oU3no7Fmrg8-g22ZdJC9u9syfgPwQXFO_DoQ==\",\"Menu\":{\"parent\":\"\",\"name\":\"13213213\",\"parent_name\":\"\\u6743\\u9650\\u7ba1\\u7406\",\"route\":\"\\/article\\/article-group\\/create\",\"order\":\"2\",\"icon\":\"\"}}',1,'2107898148@qq.com','127.0.0.1',1545968630,1545968630),
(29,'rbac/menu/view','http://localhost:8091/rbac/menu/view?id=33','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','{\"id\":\"33\"}','[]',1,'2107898148@qq.com','127.0.0.1',1545968631,1545968631),
(30,'rbac/menu/create','http://localhost:8091/rbac/menu/create','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','[]','{\"_csrf-backend\":\"DugcZdLzf-4QViE5g7-tU5vFcH686ulNlVNyeU7eus1moFIWk5oU3no7Fmrg8-g22ZdJC9u9syfgPwQXFO_DoQ==\",\"Menu\":{\"parent\":\"\",\"name\":\"13213213\",\"parent_name\":\"\\u6743\\u9650\\u7ba1\\u7406\",\"route\":\"\\/article\\/article-group\\/create\",\"order\":\"2\",\"icon\":\"\"}}',1,'2107898148@qq.com','127.0.0.1',1545968632,1545968632),
(31,'rbac/menu/view','http://localhost:8091/rbac/menu/view?id=34','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','{\"id\":\"34\"}','[]',1,'2107898148@qq.com','127.0.0.1',1545968633,1545968633),
(32,'debug/default/toolbar','http://localhost:8091/debug/default/toolbar?tag=5c259bf9d02e2','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','{\"tag\":\"5c259bf9d02e2\"}','[]',1,'2107898148@qq.com','127.0.0.1',1545968635,1545968635),
(33,'rbac/menu/index','http://localhost:8091/rbac/menu/index','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','[]','[]',1,'2107898148@qq.com','127.0.0.1',1545968650,1545968650),
(34,'debug/default/toolbar','http://localhost:8091/debug/default/toolbar?tag=5c259c0ad3262','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','{\"tag\":\"5c259c0ad3262\"}','[]',1,'2107898148@qq.com','127.0.0.1',1545968652,1545968652),
(35,'site/index','http://localhost:8091/','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','[]','[]',1,'2107898148@qq.com','127.0.0.1',1545968655,1545968655),
(36,'debug/default/toolbar','http://localhost:8091/debug/default/toolbar?tag=5c259c0f5a944','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','{\"tag\":\"5c259c0f5a944\"}','[]',1,'2107898148@qq.com','127.0.0.1',1545968656,1545968656),
(37,'rbac/user/index','http://localhost:8091/rbac/user/index','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','[]','[]',1,'2107898148@qq.com','127.0.0.1',1545968657,1545968657),
(38,'system/user-rank/index','http://localhost:8091/system/user-rank/index','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','[]','[]',1,'2107898148@qq.com','127.0.0.1',1545968659,1545968659),
(39,'rbac/menu/index','http://localhost:8091/rbac/menu/index','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','[]','[]',1,'2107898148@qq.com','127.0.0.1',1545968660,1545968660),
(40,'debug/default/toolbar','http://localhost:8091/debug/default/toolbar?tag=5c259c11c549b','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','{\"tag\":\"5c259c11c549b\"}','[]',1,'2107898148@qq.com','127.0.0.1',1545968661,1545968661),
(41,'debug/default/toolbar','http://localhost:8091/debug/default/toolbar?tag=5c259c1317a2b','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','{\"tag\":\"5c259c1317a2b\"}','[]',1,'2107898148@qq.com','127.0.0.1',1545968662,1545968662),
(42,'debug/default/toolbar','http://localhost:8091/debug/default/toolbar?tag=5c259c1453e51','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','{\"tag\":\"5c259c1453e51\"}','[]',1,'2107898148@qq.com','127.0.0.1',1545968664,1545968664),
(43,'rbac/menu/delete','http://localhost:8091/rbac/menu/delete?id=32','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','{\"id\":\"32\"}','[]',1,'2107898148@qq.com','127.0.0.1',1545968666,1545968666),
(44,'rbac/menu/index','http://localhost:8091/rbac/menu/index','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','[]','[]',1,'2107898148@qq.com','127.0.0.1',1545968668,1545968668),
(45,'debug/default/toolbar','http://localhost:8091/debug/default/toolbar?tag=5c259c1ca37cd','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','{\"tag\":\"5c259c1ca37cd\"}','[]',1,'2107898148@qq.com','127.0.0.1',1545968669,1545968669),
(46,'rbac/menu/delete','http://localhost:8091/rbac/menu/delete?id=34','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','{\"id\":\"34\"}','[]',1,'2107898148@qq.com','127.0.0.1',1545968672,1545968672),
(47,'rbac/menu/index','http://localhost:8091/rbac/menu/index','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','[]','[]',1,'2107898148@qq.com','127.0.0.1',1545968674,1545968674),
(48,'debug/default/toolbar','http://localhost:8091/debug/default/toolbar?tag=5c259c2215fa3','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','{\"tag\":\"5c259c2215fa3\"}','[]',1,'2107898148@qq.com','127.0.0.1',1545968675,1545968675),
(49,'rbac/menu/update','http://localhost:8091/rbac/menu/update?id=33','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','{\"id\":\"33\"}','[]',1,'2107898148@qq.com','127.0.0.1',1545968676,1545968676),
(50,'debug/default/toolbar','http://localhost:8091/debug/default/toolbar?tag=5c259c248aac2','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','{\"tag\":\"5c259c248aac2\"}','[]',1,'2107898148@qq.com','127.0.0.1',1545968677,1545968677),
(51,'rbac/menu/update','http://localhost:8091/rbac/menu/update?id=33','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','{\"id\":\"33\"}','{\"_csrf-backend\":\"Sm0bNC1Nm-wXTGbm3mP3NnA4QBcp4ggetGF3p2zbICAiJVVHbCTw3H0hUbW9L7JTMmp5Yk61UnTBDQHJNupZTA==\",\"Menu\":{\"parent\":\"1\",\"name\":\"13213213\",\"parent_name\":\"\\u6743\\u9650\\u7ba1\\u7406\",\"route\":\"\\/article\\/article-group\\/create\",\"order\":\"2\",\"icon\":\"\"}}',1,'2107898148@qq.com','127.0.0.1',1545968687,1545968687),
(52,'rbac/menu/view','http://localhost:8091/rbac/menu/view?id=33','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','{\"id\":\"33\"}','[]',1,'2107898148@qq.com','127.0.0.1',1545968688,1545968688),
(53,'debug/default/toolbar','http://localhost:8091/debug/default/toolbar?tag=5c259c3077928','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','{\"tag\":\"5c259c3077928\"}','[]',1,'2107898148@qq.com','127.0.0.1',1545968689,1545968689),
(54,'rbac/menu/index','http://localhost:8091/rbac/menu/index','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','[]','[]',1,'2107898148@qq.com','127.0.0.1',1545968694,1545968694),
(55,'site/index','http://localhost:8091/','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','[]','[]',1,'2107898148@qq.com','127.0.0.1',1545968695,1545968695),
(56,'debug/default/toolbar','http://localhost:8091/debug/default/toolbar?tag=5c259c368bca7','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','{\"tag\":\"5c259c368bca7\"}','[]',1,'2107898148@qq.com','127.0.0.1',1545968697,1545968697),
(57,'debug/default/toolbar','http://localhost:8091/debug/default/toolbar?tag=5c259c37c6e5a','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','{\"tag\":\"5c259c37c6e5a\"}','[]',1,'2107898148@qq.com','127.0.0.1',1545968698,1545968698),
(58,'rbac/user/index','http://localhost:8091/rbac/user/index','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','[]','[]',1,'2107898148@qq.com','127.0.0.1',1545968699,1545968699),
(59,'system/user-rank/index','http://localhost:8091/system/user-rank/index','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','[]','[]',1,'2107898148@qq.com','127.0.0.1',1545968700,1545968700),
(60,'rbac/menu/index','http://localhost:8091/rbac/menu/index','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','[]','[]',1,'2107898148@qq.com','127.0.0.1',1545968702,1545968702),
(61,'debug/default/toolbar','http://localhost:8091/debug/default/toolbar?tag=5c259c3b70a56','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','{\"tag\":\"5c259c3b70a56\"}','[]',1,'2107898148@qq.com','127.0.0.1',1545968703,1545968703),
(62,'debug/default/toolbar','http://localhost:8091/debug/default/toolbar?tag=5c259c3cb75e9','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','{\"tag\":\"5c259c3cb75e9\"}','[]',1,'2107898148@qq.com','127.0.0.1',1545968704,1545968704),
(63,'debug/default/toolbar','http://localhost:8091/debug/default/toolbar?tag=5c259c3e0afdf','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','{\"tag\":\"5c259c3e0afdf\"}','[]',1,'2107898148@qq.com','127.0.0.1',1545968705,1545968705),
(64,'debug/default/toolbar','http://localhost:8091/debug/default/toolbar?tag=5c259c44ac83f','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','{\"tag\":\"5c259c44ac83f\"}','[]',1,'2107898148@qq.com','127.0.0.1',1545968709,1545968709);

/*Table structure for table `t_auth_assignment` */

DROP TABLE IF EXISTS `t_auth_assignment`;

CREATE TABLE `t_auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `t_auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `t_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `t_auth_assignment` */

insert  into `t_auth_assignment`(`item_name`,`user_id`,`created_at`) values 
('基本权限','1',1539312113),
('基本权限','10',1512542177),
('文章管理权限','1',1539312113),
('文章管理权限','10',1512542277),
('演示角色','1',1539312113),
('演示角色','2',1521768786),
('管理员','1',1516773830);

/*Table structure for table `t_auth_item` */

DROP TABLE IF EXISTS `t_auth_item`;

CREATE TABLE `t_auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `type` (`type`),
  CONSTRAINT `t_auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `t_auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `t_auth_item` */

insert  into `t_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values 
('/*',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/*',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/article-group/*',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/article-group/create',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/article-group/delete',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/article-group/delete-all',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/article-group/index',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/article-group/update',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/article-group/view',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/article/*',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/article/create',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/article/delete',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/article/delete-all',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/article/index',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/article/update',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/article/view',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/comment/*',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/comment/delete',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/comment/delete-all',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/comment/index',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/comment/nopass',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/comment/pass',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/comment/reply',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/comment/view',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/link/*',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/link/create',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/link/delete',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/link/delete-all',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/link/index',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/link/update',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/link/view',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/music/*',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/music/create',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/music/delete',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/music/delete-all',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/music/index',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/music/online-music',2,NULL,NULL,NULL,1527666273,1527666273),
('/article/music/update',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/music/view',2,NULL,NULL,NULL,1513838979,1513838979),
('/article/photo-group/*',2,NULL,NULL,NULL,1513840543,1513840543),
('/article/photo-group/create',2,NULL,NULL,NULL,1513840543,1513840543),
('/article/photo-group/delete',2,NULL,NULL,NULL,1513840543,1513840543),
('/article/photo-group/delete-all',2,NULL,NULL,NULL,1513840543,1513840543),
('/article/photo-group/index',2,NULL,NULL,NULL,1513840543,1513840543),
('/article/photo-group/update',2,NULL,NULL,NULL,1513840543,1513840543),
('/article/photo-group/view',2,NULL,NULL,NULL,1513840543,1513840543),
('/article/photo/*',2,NULL,NULL,NULL,1513840543,1513840543),
('/article/photo/create',2,NULL,NULL,NULL,1513840543,1513840543),
('/article/photo/delete',2,NULL,NULL,NULL,1513840543,1513840543),
('/article/photo/delete-all',2,NULL,NULL,NULL,1513840543,1513840543),
('/article/photo/index',2,NULL,NULL,NULL,1513840543,1513840543),
('/article/photo/update',2,NULL,NULL,NULL,1513840543,1513840543),
('/article/photo/view',2,NULL,NULL,NULL,1513840543,1513840543),
('/article/test-article-group/*',2,NULL,NULL,NULL,1538989710,1538989710),
('/article/test-article-group/create',2,NULL,NULL,NULL,1538989710,1538989710),
('/article/test-article-group/delete',2,NULL,NULL,NULL,1538989710,1538989710),
('/article/test-article-group/index',2,NULL,NULL,NULL,1538989710,1538989710),
('/article/test-article-group/update',2,NULL,NULL,NULL,1538989710,1538989710),
('/article/test-article-group/view',2,NULL,NULL,NULL,1538989710,1538989710),
('/backup/*',2,NULL,NULL,NULL,1513838979,1513838979),
('/backup/export/*',2,NULL,NULL,NULL,1513838979,1513838979),
('/backup/export/index',2,NULL,NULL,NULL,1513838979,1513838979),
('/backup/export/init',2,NULL,NULL,NULL,1513838979,1513838979),
('/backup/export/optimize',2,NULL,NULL,NULL,1513838979,1513838979),
('/backup/export/repair',2,NULL,NULL,NULL,1513838979,1513838979),
('/backup/export/start',2,NULL,NULL,NULL,1513838979,1513838979),
('/backup/import/*',2,NULL,NULL,NULL,1513838979,1513838979),
('/backup/import/del',2,NULL,NULL,NULL,1513838979,1513838979),
('/backup/import/index',2,NULL,NULL,NULL,1513838979,1513838979),
('/backup/import/init',2,NULL,NULL,NULL,1513838979,1513838979),
('/backup/import/start',2,NULL,NULL,NULL,1513838979,1513838979),
('/debug/*',2,NULL,NULL,NULL,1513838979,1513838979),
('/debug/default/*',2,NULL,NULL,NULL,1513838979,1513838979),
('/debug/default/db-explain',2,NULL,NULL,NULL,1513838979,1513838979),
('/debug/default/download-mail',2,NULL,NULL,NULL,1513838979,1513838979),
('/debug/default/index',2,NULL,NULL,NULL,1513838979,1513838979),
('/debug/default/toolbar',2,NULL,NULL,NULL,1513838979,1513838979),
('/debug/default/view',2,NULL,NULL,NULL,1513838979,1513838979),
('/debug/user/*',2,NULL,NULL,NULL,1513838979,1513838979),
('/debug/user/reset-identity',2,NULL,NULL,NULL,1513838979,1513838979),
('/debug/user/set-identity',2,NULL,NULL,NULL,1513838979,1513838979),
('/gii/*',2,NULL,NULL,NULL,1513838979,1513838979),
('/gii/default/*',2,NULL,NULL,NULL,1513838979,1513838979),
('/gii/default/action',2,NULL,NULL,NULL,1513838979,1513838979),
('/gii/default/diff',2,NULL,NULL,NULL,1513838979,1513838979),
('/gii/default/index',2,NULL,NULL,NULL,1513838979,1513838979),
('/gii/default/preview',2,NULL,NULL,NULL,1513838979,1513838979),
('/gii/default/view',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/*',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/assignment/*',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/assignment/assign',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/assignment/index',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/assignment/revoke',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/assignment/view',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/default/*',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/default/index',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/log/*',2,NULL,NULL,NULL,1521793951,1521793951),
('/rbac/log/index',2,NULL,NULL,NULL,1521793951,1521793951),
('/rbac/log/view',2,NULL,NULL,NULL,1521793951,1521793951),
('/rbac/menu/*',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/menu/create',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/menu/delete',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/menu/delete-all',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/menu/index',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/menu/update',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/menu/view',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/permission/*',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/permission/assign',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/permission/create',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/permission/delete',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/permission/index',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/permission/remove',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/permission/update',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/permission/view',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/role/*',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/role/assign',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/role/create',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/role/delete',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/role/index',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/role/remove',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/role/update',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/role/view',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/route/*',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/route/assign',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/route/create',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/route/index',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/route/refresh',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/route/remove',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/rule/*',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/rule/create',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/rule/delete',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/rule/index',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/rule/update',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/rule/view',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/user/*',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/user/active',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/user/change-password',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/user/delete',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/user/inactive',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/user/index',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/user/login',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/user/logout',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/user/request-password-reset',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/user/reset-password',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/user/signup',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/user/update',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/user/update-self',2,NULL,NULL,NULL,1513838979,1513838979),
('/rbac/user/view',2,NULL,NULL,NULL,1513838979,1513838979),
('/site/*',2,NULL,NULL,NULL,1513838979,1513838979),
('/site/dashboard',2,NULL,NULL,NULL,1516773692,1516773692),
('/site/error',2,NULL,NULL,NULL,1513838979,1513838979),
('/site/index',2,NULL,NULL,NULL,1513838979,1513838979),
('/site/test',2,NULL,NULL,NULL,1539312029,1539312029),
('/system/*',2,NULL,NULL,NULL,1513838979,1513838979),
('/system/config/*',2,NULL,NULL,NULL,1513838979,1513838979),
('/system/config/create',2,NULL,NULL,NULL,1513838979,1513838979),
('/system/config/delete',2,NULL,NULL,NULL,1513838979,1513838979),
('/system/config/delete-all',2,NULL,NULL,NULL,1513838979,1513838979),
('/system/config/index',2,NULL,NULL,NULL,1513838979,1513838979),
('/system/config/update',2,NULL,NULL,NULL,1513838979,1513838979),
('/system/config/view',2,NULL,NULL,NULL,1513838979,1513838979),
('/system/memorandum/*',2,NULL,NULL,NULL,1528875249,1528875249),
('/system/memorandum/create',2,NULL,NULL,NULL,1528875249,1528875249),
('/system/memorandum/delete',2,NULL,NULL,NULL,1528875249,1528875249),
('/system/memorandum/delete-all',2,NULL,NULL,NULL,1528875249,1528875249),
('/system/memorandum/index',2,NULL,NULL,NULL,1528875249,1528875249),
('/system/memorandum/update',2,NULL,NULL,NULL,1528875249,1528875249),
('/system/memorandum/view',2,NULL,NULL,NULL,1528875249,1528875249),
('/system/neteasy/*',2,NULL,NULL,NULL,1528873251,1528873251),
('/system/neteasy/create',2,NULL,NULL,NULL,1528873251,1528873251),
('/system/neteasy/delete',2,NULL,NULL,NULL,1528873251,1528873251),
('/system/neteasy/delete-all',2,NULL,NULL,NULL,1528873251,1528873251),
('/system/neteasy/index',2,NULL,NULL,NULL,1528873251,1528873251),
('/system/neteasy/update',2,NULL,NULL,NULL,1528873251,1528873251),
('/system/neteasy/view',2,NULL,NULL,NULL,1528873251,1528873251),
('/system/user-rank/*',2,NULL,NULL,NULL,1513838979,1513838979),
('/system/user-rank/create',2,NULL,NULL,NULL,1513838979,1513838979),
('/system/user-rank/delete',2,NULL,NULL,NULL,1513838979,1513838979),
('/system/user-rank/delete-all',2,NULL,NULL,NULL,1513838979,1513838979),
('/system/user-rank/index',2,NULL,NULL,NULL,1513838979,1513838979),
('/system/user-rank/update',2,NULL,NULL,NULL,1513838979,1513838979),
('/system/user-rank/view',2,NULL,NULL,NULL,1513838979,1513838979),
('/system/user/*',2,NULL,NULL,NULL,1513838979,1513838979),
('/system/user/active',2,NULL,NULL,NULL,1513838979,1513838979),
('/system/user/create',2,NULL,NULL,NULL,1513838979,1513838979),
('/system/user/delete',2,NULL,NULL,NULL,1513838979,1513838979),
('/system/user/delete-all',2,NULL,NULL,NULL,1513838979,1513838979),
('/system/user/inactive',2,NULL,NULL,NULL,1513838979,1513838979),
('/system/user/index',2,NULL,NULL,NULL,1513838979,1513838979),
('/system/user/online-users',2,NULL,NULL,NULL,1518083077,1518083077),
('/system/user/update',2,NULL,NULL,NULL,1513838979,1513838979),
('/system/user/view',2,NULL,NULL,NULL,1513838979,1513838979),
('/tools/*',2,NULL,NULL,NULL,1513838979,1513838979),
('/tools/ico',2,NULL,NULL,NULL,1539334899,1539334899),
('/tools/upload',2,NULL,NULL,NULL,1513838979,1513838979),
('/tools/upload-editor',2,NULL,NULL,NULL,1513838979,1513838979),
('基本权限',1,'后台人员所需要的基本权限',NULL,NULL,1512542066,1512542066),
('文章管理权限',1,'管理后台文章权限',NULL,NULL,1512542259,1512542259),
('演示角色',1,'用于演示的角色',NULL,NULL,1521768107,1521768107),
('管理员',1,'超级管理员权限',NULL,NULL,1498697175,1512542127);

/*Table structure for table `t_auth_item_child` */

DROP TABLE IF EXISTS `t_auth_item_child`;

CREATE TABLE `t_auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `t_auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `t_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `t_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `t_auth_item_child` */

insert  into `t_auth_item_child`(`parent`,`child`) values 
('管理员','/*'),
('管理员','/article/*'),
('管理员','/article/article-group/*'),
('管理员','/article/article-group/create'),
('管理员','/article/article-group/delete'),
('管理员','/article/article-group/delete-all'),
('演示角色','/article/article-group/index'),
('管理员','/article/article-group/index'),
('管理员','/article/article-group/update'),
('演示角色','/article/article-group/view'),
('管理员','/article/article-group/view'),
('管理员','/article/article/*'),
('管理员','/article/article/create'),
('管理员','/article/article/delete'),
('管理员','/article/article/delete-all'),
('演示角色','/article/article/index'),
('管理员','/article/article/index'),
('管理员','/article/article/update'),
('演示角色','/article/article/view'),
('管理员','/article/article/view'),
('管理员','/article/comment/*'),
('管理员','/article/comment/delete'),
('管理员','/article/comment/delete-all'),
('演示角色','/article/comment/index'),
('管理员','/article/comment/index'),
('管理员','/article/comment/nopass'),
('管理员','/article/comment/pass'),
('管理员','/article/comment/reply'),
('演示角色','/article/comment/view'),
('管理员','/article/comment/view'),
('管理员','/article/link/*'),
('管理员','/article/link/create'),
('管理员','/article/link/delete'),
('管理员','/article/link/delete-all'),
('演示角色','/article/link/index'),
('管理员','/article/link/index'),
('管理员','/article/link/update'),
('演示角色','/article/link/view'),
('管理员','/article/link/view'),
('管理员','/article/music/*'),
('管理员','/article/music/create'),
('管理员','/article/music/delete'),
('管理员','/article/music/delete-all'),
('演示角色','/article/music/index'),
('管理员','/article/music/index'),
('演示角色','/article/music/online-music'),
('管理员','/article/music/online-music'),
('管理员','/article/music/update'),
('演示角色','/article/music/view'),
('管理员','/article/music/view'),
('管理员','/article/photo-group/*'),
('管理员','/article/photo-group/create'),
('管理员','/article/photo-group/delete'),
('管理员','/article/photo-group/delete-all'),
('演示角色','/article/photo-group/index'),
('管理员','/article/photo-group/index'),
('管理员','/article/photo-group/update'),
('演示角色','/article/photo-group/view'),
('管理员','/article/photo-group/view'),
('管理员','/article/photo/*'),
('管理员','/article/photo/create'),
('管理员','/article/photo/delete'),
('管理员','/article/photo/delete-all'),
('演示角色','/article/photo/index'),
('管理员','/article/photo/index'),
('管理员','/article/photo/update'),
('演示角色','/article/photo/view'),
('管理员','/article/photo/view'),
('管理员','/article/test-article-group/*'),
('管理员','/article/test-article-group/create'),
('管理员','/article/test-article-group/delete'),
('管理员','/article/test-article-group/index'),
('管理员','/article/test-article-group/update'),
('管理员','/article/test-article-group/view'),
('管理员','/backup/*'),
('管理员','/backup/export/*'),
('演示角色','/backup/export/index'),
('管理员','/backup/export/index'),
('管理员','/backup/export/init'),
('管理员','/backup/export/optimize'),
('管理员','/backup/export/repair'),
('管理员','/backup/export/start'),
('管理员','/backup/import/*'),
('管理员','/backup/import/del'),
('演示角色','/backup/import/index'),
('管理员','/backup/import/index'),
('管理员','/backup/import/init'),
('管理员','/backup/import/start'),
('管理员','/debug/*'),
('管理员','/debug/default/*'),
('管理员','/debug/default/db-explain'),
('管理员','/debug/default/download-mail'),
('管理员','/debug/default/index'),
('管理员','/debug/default/toolbar'),
('管理员','/debug/default/view'),
('管理员','/debug/user/*'),
('管理员','/debug/user/reset-identity'),
('管理员','/debug/user/set-identity'),
('管理员','/gii/*'),
('管理员','/gii/default/*'),
('管理员','/gii/default/action'),
('管理员','/gii/default/diff'),
('管理员','/gii/default/index'),
('管理员','/gii/default/preview'),
('管理员','/gii/default/view'),
('管理员','/rbac/*'),
('管理员','/rbac/assignment/*'),
('管理员','/rbac/assignment/assign'),
('演示角色','/rbac/assignment/index'),
('管理员','/rbac/assignment/index'),
('管理员','/rbac/assignment/revoke'),
('演示角色','/rbac/assignment/view'),
('管理员','/rbac/assignment/view'),
('管理员','/rbac/default/*'),
('管理员','/rbac/default/index'),
('管理员','/rbac/log/*'),
('管理员','/rbac/log/index'),
('管理员','/rbac/log/view'),
('管理员','/rbac/menu/*'),
('管理员','/rbac/menu/create'),
('管理员','/rbac/menu/delete'),
('管理员','/rbac/menu/delete-all'),
('演示角色','/rbac/menu/index'),
('管理员','/rbac/menu/index'),
('管理员','/rbac/menu/update'),
('演示角色','/rbac/menu/view'),
('管理员','/rbac/menu/view'),
('管理员','/rbac/permission/*'),
('管理员','/rbac/permission/assign'),
('管理员','/rbac/permission/create'),
('管理员','/rbac/permission/delete'),
('演示角色','/rbac/permission/index'),
('管理员','/rbac/permission/index'),
('管理员','/rbac/permission/remove'),
('管理员','/rbac/permission/update'),
('演示角色','/rbac/permission/view'),
('管理员','/rbac/permission/view'),
('管理员','/rbac/role/*'),
('管理员','/rbac/role/assign'),
('管理员','/rbac/role/create'),
('管理员','/rbac/role/delete'),
('演示角色','/rbac/role/index'),
('管理员','/rbac/role/index'),
('管理员','/rbac/role/remove'),
('管理员','/rbac/role/update'),
('演示角色','/rbac/role/view'),
('管理员','/rbac/role/view'),
('管理员','/rbac/route/*'),
('管理员','/rbac/route/assign'),
('管理员','/rbac/route/create'),
('演示角色','/rbac/route/index'),
('管理员','/rbac/route/index'),
('管理员','/rbac/route/refresh'),
('管理员','/rbac/route/remove'),
('管理员','/rbac/rule/*'),
('管理员','/rbac/rule/create'),
('管理员','/rbac/rule/delete'),
('演示角色','/rbac/rule/index'),
('管理员','/rbac/rule/index'),
('管理员','/rbac/rule/update'),
('演示角色','/rbac/rule/view'),
('管理员','/rbac/rule/view'),
('管理员','/rbac/user/*'),
('管理员','/rbac/user/active'),
('管理员','/rbac/user/change-password'),
('管理员','/rbac/user/delete'),
('管理员','/rbac/user/inactive'),
('演示角色','/rbac/user/index'),
('管理员','/rbac/user/index'),
('演示角色','/rbac/user/login'),
('管理员','/rbac/user/login'),
('演示角色','/rbac/user/logout'),
('管理员','/rbac/user/logout'),
('管理员','/rbac/user/request-password-reset'),
('管理员','/rbac/user/reset-password'),
('管理员','/rbac/user/signup'),
('管理员','/rbac/user/update'),
('管理员','/rbac/user/update-self'),
('演示角色','/rbac/user/view'),
('管理员','/rbac/user/view'),
('管理员','/site/*'),
('演示角色','/site/dashboard'),
('管理员','/site/dashboard'),
('管理员','/site/error'),
('演示角色','/site/index'),
('管理员','/site/index'),
('管理员','/site/test'),
('管理员','/system/*'),
('管理员','/system/config/*'),
('管理员','/system/config/create'),
('管理员','/system/config/delete'),
('管理员','/system/config/delete-all'),
('管理员','/system/config/index'),
('管理员','/system/config/update'),
('管理员','/system/config/view'),
('管理员','/system/memorandum/*'),
('管理员','/system/memorandum/create'),
('管理员','/system/memorandum/delete'),
('管理员','/system/memorandum/delete-all'),
('管理员','/system/memorandum/index'),
('管理员','/system/memorandum/update'),
('管理员','/system/memorandum/view'),
('管理员','/system/neteasy/*'),
('管理员','/system/neteasy/create'),
('管理员','/system/neteasy/delete'),
('管理员','/system/neteasy/delete-all'),
('管理员','/system/neteasy/index'),
('管理员','/system/neteasy/update'),
('管理员','/system/neteasy/view'),
('管理员','/system/user-rank/*'),
('管理员','/system/user-rank/create'),
('管理员','/system/user-rank/delete'),
('管理员','/system/user-rank/delete-all'),
('演示角色','/system/user-rank/index'),
('管理员','/system/user-rank/index'),
('管理员','/system/user-rank/update'),
('演示角色','/system/user-rank/view'),
('管理员','/system/user-rank/view'),
('管理员','/system/user/*'),
('管理员','/system/user/active'),
('管理员','/system/user/create'),
('管理员','/system/user/delete'),
('管理员','/system/user/delete-all'),
('管理员','/system/user/inactive'),
('管理员','/system/user/index'),
('管理员','/system/user/online-users'),
('管理员','/system/user/update'),
('管理员','/system/user/view'),
('管理员','/tools/*'),
('管理员','/tools/ico'),
('管理员','/tools/upload'),
('管理员','/tools/upload-editor');

/*Table structure for table `t_auth_rule` */

DROP TABLE IF EXISTS `t_auth_rule`;

CREATE TABLE `t_auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `t_auth_rule` */

/*Table structure for table `t_config` */

DROP TABLE IF EXISTS `t_config`;

CREATE TABLE `t_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '配置名称',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '配置说明',
  `value` text COMMENT '配置值',
  `remark` varchar(100) NOT NULL DEFAULT '' COMMENT '配置说明',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态',
  `created_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index` (`name`,`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

/*Data for the table `t_config` */

insert  into `t_config`(`id`,`name`,`title`,`value`,`remark`,`sort`,`status`,`created_at`,`updated_at`) values 
(1,'WEB_SITE_TITLE','网站标题','内容管理框架','网站标题前台显示标题',0,0,1378898976,1510118190),
(2,'WEB_SITE_DESCRIPTION','网站描述','内容管理框架','网站搜索引擎描述',1,0,1378898976,1472528403),
(3,'WEB_SITE_KEYWORD','网站关键字','黄龙飞11','网站搜索引擎关键字',8,0,1378898976,1472528403),
(4,'WEB_SITE_CLOSE','网站关闭','0','网站关闭',0,0,1379122533,1379122533),
(10,'WEB_SITE_ICP','网站备案号','沪ICP备12007941号-2','设置在网站底部显示的备案号，如“沪ICP备12007941号-2',9,0,1378900335,1472528403),
(11,'WEB_SITE_RESOURCES_URL','上传图片服务器域名（可用二级域名）','https://resources.alilinet.com/','域名格式（https://resources.alilinet.com/）',3,0,1379053380,1516948101),
(13,'COLOR_STYLE','后台色系','default_color','后台颜色风格',10,1,1379122533,1472528403),
(20,'WEB_SITE_ALLOW_UPLOAD_TYPE','站点允许上传文件类型','jpg,rar,png,gif,rar','只需要填写后缀即可',1,1,1512626843,1517147572),
(21,'OAUTH_QQ','第三方QQ登录配置项','{\r\n	\"client_id\": \"**********\",\r\n	\"client_secret\": \"**********\",\r\n	\"redirect_uri\": \"**********\"\r\n}','第三方QQ登录配置项',1,1,1516869590,1539942431),
(22,'WEB_SITE_AJAX_URL','网站AJAX请求域名','https://www.alilinet.com/','网站AJAX请求域名',2,1,1516869798,1516948115),
(23,'WEB_SITE_BACKGROUND','站点头部背景图','/images/background.jpg','站点头部背景图',3,1,1516949337,1516949390),
(24,'NETEASE_COOKIE','网易云音乐cookie','888888','网易云音乐cookie',1,1,1527666426,1539942454);

/*Table structure for table `t_menu` */

DROP TABLE IF EXISTS `t_menu`;

CREATE TABLE `t_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `icon` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `t_menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `t_menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

/*Data for the table `t_menu` */

insert  into `t_menu`(`id`,`name`,`parent`,`route`,`order`,`icon`) values 
(1,'权限管理',NULL,NULL,3,'fa fa-bullhorn'),
(2,'角色列表',1,'/rbac/role/index',34,'&#xe6bf;'),
(3,'路由列表',1,'/rbac/route/index',46,'&#xea3a;'),
(4,'权限列表',1,'/rbac/permission/index',33,'&#xe60b;'),
(5,'分配权限',1,'/rbac/assignment/index',37,'&#xe609;'),
(6,'菜单列表',1,'/rbac/menu/index',36,'&#xe65e;'),
(7,'规则列表',1,'/rbac/rule/index',35,'&#xe748;'),
(8,'后台用户',1,'/rbac/user/index',32,'&#xe60d;'),
(10,'前台用户',14,'/system/user/index',21,'&#xe60d;'),
(14,'系统管理',NULL,NULL,2,'&#xe602;'),
(15,'配置设置',14,'/system/config/index',23,'&#xe609;'),
(16,'用户等级',14,'/system/user-rank/index',22,'&#xe629;'),
(21,'数据备份',14,'/backup/export/index',24,'&#xe778;'),
(22,'数据恢复',14,'/backup/import/index',25,'&#xe777;'),
(26,'日志记录',1,'/rbac/log/index',31,'&#xe7b8;'),
(31,'自动生成',14,'/gii/default/index',18,'&#xe614;'),
(33,'13213213',1,'/article/article-group/create',2,NULL);

/*Table structure for table `t_migration` */

DROP TABLE IF EXISTS `t_migration`;

CREATE TABLE `t_migration` (
  `version` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `t_migration` */

insert  into `t_migration`(`version`,`apply_time`) values 
('m000000_000000_base',1498633414),
('m140602_111327_create_menu_table',1498633912),
('m160312_050000_create_user',1498633912),
('m140516_214808_actionlog',1506561803);

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `nickname` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户昵称',
  `head_pic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户头像',
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '密码hash',
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '重置密码凭据',
  `access_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户访问数据凭证',
  `mobile` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '手机号码',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户电子邮箱',
  `status` smallint(6) NOT NULL DEFAULT '10' COMMENT '用户状态',
  `r_id` int(11) unsigned NOT NULL COMMENT '用户等级',
  `created_at` int(11) NOT NULL COMMENT '注册账号时间',
  `created_address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '注册账号的地点',
  `created_ip` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '注册账号的IP',
  `last_login_date` int(11) DEFAULT NULL COMMENT '最后一次登录时间',
  `last_login_ip` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '最后一次登录IP',
  `last_login_address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '最后一次登录地点',
  `integral` int(11) DEFAULT '0' COMMENT '积分',
  `balance` decimal(10,0) DEFAULT '0' COMMENT '余额',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `index` (`id`,`username`,`mobile`,`email`,`r_id`,`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `t_user` */

insert  into `t_user`(`id`,`username`,`nickname`,`head_pic`,`auth_key`,`password_hash`,`password_reset_token`,`access_token`,`mobile`,`email`,`status`,`r_id`,`created_at`,`created_address`,`created_ip`,`last_login_date`,`last_login_ip`,`last_login_address`,`integral`,`balance`,`updated_at`) values 
(1,'alilinet','Aili','https://resources.alilinet.com/20170609/caec0ef6f07036203d555810fd81c75a.jpg','gOQEd6Q8nKh6J8WnVWbf466wqgXKUh8V','$2y$13$w5oLa8hCsNC3IXM17ADODOjRoNzyGd0rL5A8icjI9UxgGBlMJ5rWO',NULL,'lTn0p3L-HstHiS3EzPHH5kpa7gEUpf1__1537259088','18888888888','alilinet@alilinet.com',10,6,1483534763,'上海市闸北区 电信ADSL','218.81.204.109',1537256688,'101.81.232.103','上海市 电信',0,0,1537256688);

/*Table structure for table `t_user_rank` */

DROP TABLE IF EXISTS `t_user_rank`;

CREATE TABLE `t_user_rank` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '等级名称',
  `score` int(8) NOT NULL COMMENT '积分界限',
  `discount` decimal(6,2) NOT NULL COMMENT '折扣百分比',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `index` (`id`,`name`,`discount`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `t_user_rank` */

insert  into `t_user_rank`(`id`,`name`,`score`,`discount`,`status`) values 
(1,'普通会员',0,1.00,1),
(2,'一级会员',2000,0.95,1),
(3,'二级会员',5000,0.90,1),
(4,'VIP会员',10000,0.85,1),
(5,'钻石会员',100000,0.80,1),
(6,'超级会员',10000000,0.50,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
