# MySQL-Front 5.0  (Build 1.0)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost    Database: deliverysystem
# ------------------------------------------------------
# Server version 5.1.50-community

#
# Table structure for table good
#

DROP TABLE IF EXISTS `good`;
CREATE TABLE `good` (
  `goodId` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `imgsrc` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`goodId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `good` VALUES (1,'永久牌自行车','飞鸽26男士',200,'./assets/0.png','Jack');
INSERT INTO `good` VALUES (2,'乒乓球和拍子','红双喜的，价格随便标的，同学送的不知道多少钱，价格可以面议~',36.8,NULL,'Bom');
INSERT INTO `good` VALUES (3,'小桌子','毕业了，处理掉。',13,'./assets/1.jpg','Tott');
INSERT INTO `good` VALUES (4,'小型书架','买的时候三十二呢，下面还有个小抽屉。现在用不到。',16,'./assets/2.jpg','Yille');
INSERT INTO `good` VALUES (5,'光盘夹','可以装50多张啊',13.6,'./assets/3.jpg','Hoodt');
INSERT INTO `good` VALUES (6,'跳绳','蛮好的',2,'./assets/4.jpg','Gyuut');
INSERT INTO `good` VALUES (7,'杯子夹','很适合放在实验室的小东西',2.5,'./assets/5.jpg','Utty');
INSERT INTO `good` VALUES (8,'轮滑鞋','43码的，如图，很结实',200,'./assets/6.jpg','FFG');
INSERT INTO `good` VALUES (9,'kitty耳钉','丢了一支，送给有一个耳洞的女生啦',0.01,'./assets/7.jpg','Yellow');
INSERT INTO `good` VALUES (10,'呼啦圈','减肥佳品！！！想减肥的亲们快来呀',10,'./assets/8.jpg','CodeGuy');
INSERT INTO `good` VALUES (11,'多拉A梦5本','单价15，老版本，市面上很难找了。',15,'./assets/9.jpg','Seegy');
/*!40000 ALTER TABLE `good` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
