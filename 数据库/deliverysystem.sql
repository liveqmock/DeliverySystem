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

#
# Table structure for table tb_abnormalorder
#

DROP TABLE IF EXISTS `tb_abnormalorder`;
CREATE TABLE `tb_abnormalorder` (
  `id` int(11) NOT NULL,
  `abnormalId` varchar(255) DEFAULT NULL,
  `orderNum` varchar(255) DEFAULT NULL,
  `abnormalStatus` varchar(255) DEFAULT NULL,
  `abnormalTime` varchar(255) DEFAULT NULL,
  `abnormalType` varchar(255) DEFAULT NULL,
  `abnormalSite1` varchar(255) DEFAULT NULL,
  `abnormalSite2` varchar(255) DEFAULT NULL,
  `suggest` varchar(255) DEFAULT NULL,
  `depart` varchar(255) DEFAULT NULL,
  `principal` varchar(255) DEFAULT NULL,
  `recordTime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `tb_abnormalorder` VALUES (1,'14212','123213','已处理','12:12','货物损坏','北京','上海','啊飒飒的的','但是','额外人','14:32');
INSERT INTO `tb_abnormalorder` VALUES (2,'1223','123213','已处理','20120212','货物损坏','北京','上海','是大时代','松岛枫','额外人','20:12');
INSERT INTO `tb_abnormalorder` VALUES (3,'44222','2312312','未处理','20120921','订单损坏','北京','上海','飒飒飒飒','松岛枫','额外人','14:32');
INSERT INTO `tb_abnormalorder` VALUES (4,'44222','2312312','未处理','20120212','订单模糊','北京','上海','口令卡尽量减少地方','松岛枫','额外人','14:32');
/*!40000 ALTER TABLE `tb_abnormalorder` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table tb_admin
#

DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin` (
  `id` int(11) NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `permission` int(11) DEFAULT NULL,
  `dispatchSite` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `tb_admin` VALUES (1,'hme','hme',2,'海淀');
INSERT INTO `tb_admin` VALUES (2,'code','code',3,'北京市');
/*!40000 ALTER TABLE `tb_admin` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table tb_baseroute
#

DROP TABLE IF EXISTS `tb_baseroute`;
CREATE TABLE `tb_baseroute` (
  `id` int(11) NOT NULL,
  `transRouteIndex` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKB64EAD6798911434` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40000 ALTER TABLE `tb_baseroute` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table tb_car
#

DROP TABLE IF EXISTS `tb_car`;
CREATE TABLE `tb_car` (
  `id` int(11) NOT NULL,
  `carNum` varchar(255) DEFAULT NULL,
  `carType` int(11) DEFAULT NULL,
  `capability` int(11) DEFAULT NULL,
  `volume` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `tb_car` VALUES (1,'CAR12345',1,80,100);
INSERT INTO `tb_car` VALUES (2,'CAR12346',2,60,80);
INSERT INTO `tb_car` VALUES (3,'CAR12347',3,45,60);
/*!40000 ALTER TABLE `tb_car` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table tb_deliveryorder
#

DROP TABLE IF EXISTS `tb_deliveryorder`;
CREATE TABLE `tb_deliveryorder` (
  `id` int(11) NOT NULL,
  `deliveryNumber` varchar(255) DEFAULT NULL,
  `deliveryTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `tb_deliveryorder` VALUES (1,'0001','2012-06-28 10:12:34');
/*!40000 ALTER TABLE `tb_deliveryorder` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table tb_dispatchsite
#

DROP TABLE IF EXISTS `tb_dispatchsite`;
CREATE TABLE `tb_dispatchsite` (
  `id` int(11) NOT NULL,
  `siteNo` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `tb_dispatchsite` VALUES (1,'SITE001','北京市','北京市',1);
INSERT INTO `tb_dispatchsite` VALUES (2,'SITE002','上海市','上海市',1);
INSERT INTO `tb_dispatchsite` VALUES (3,'SITE003','天津市','天津市',1);
INSERT INTO `tb_dispatchsite` VALUES (4,'SITE004','重庆市','重庆市',1);
/*!40000 ALTER TABLE `tb_dispatchsite` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table tb_order
#

DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `orderId` int(11) NOT NULL,
  `orderNum` varchar(255) DEFAULT NULL,
  `orderTime` datetime DEFAULT NULL,
  `orderStatus` int(11) DEFAULT NULL,
  `payMethod` int(11) DEFAULT NULL,
  `sendMethod` int(11) DEFAULT NULL,
  `sendDay` int(11) DEFAULT NULL,
  `fare` double DEFAULT NULL,
  `progress` varchar(255) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `deliveryOrderIndex` int(11) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  UNIQUE KEY `user` (`user`),
  KEY `FKFA98EE3DBF3F6B3D` (`id`),
  KEY `FKFA98EE3D5B4E782E` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `tb_order` VALUES (1,'OO5875057767','2012-07-04 11:58:23',3,0,1,1,10,NULL,1,0,1);
/*!40000 ALTER TABLE `tb_order` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table tb_orderitem
#

DROP TABLE IF EXISTS `tb_orderitem`;
CREATE TABLE `tb_orderitem` (
  `itemId` int(11) NOT NULL,
  `good` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL,
  `itemIndex` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `itemstatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemId`),
  UNIQUE KEY `good` (`good`),
  KEY `FKBF076F0BF91F29F` (`orderId`),
  KEY `FKBF076F05B41A212` (`good`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `tb_orderitem` VALUES (1,1,1,1,0,'hme',1);
/*!40000 ALTER TABLE `tb_orderitem` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table tb_temp
#

DROP TABLE IF EXISTS `tb_temp`;
CREATE TABLE `tb_temp` (
  `id` int(11) NOT NULL,
  `number` varchar(255) DEFAULT NULL,
  `goalSite` varchar(255) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  `datatype` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `tb_temp` VALUES (1,'0001','北京市',1,1);
INSERT INTO `tb_temp` VALUES (2,'0001','北京市',1,1);
/*!40000 ALTER TABLE `tb_temp` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table tb_transclass
#

DROP TABLE IF EXISTS `tb_transclass`;
CREATE TABLE `tb_transclass` (
  `id` int(11) NOT NULL,
  `classNum` varchar(255) DEFAULT NULL,
  `startTime` datetime DEFAULT NULL,
  `arriveTime` datetime DEFAULT NULL,
  `classStatus` int(11) DEFAULT NULL,
  `deliveryorderNum` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `tb_transclass` VALUES (1,'OO2994155779','2012-07-04 11:59:22','2012-07-04 11:59:22',0,'0001');
INSERT INTO `tb_transclass` VALUES (2,'OO4416399835','2012-07-04 11:59:22','2012-07-04 11:59:22',0,NULL);
INSERT INTO `tb_transclass` VALUES (3,'OO8160440431','2012-07-04 11:59:22','2012-07-04 11:59:22',0,NULL);
/*!40000 ALTER TABLE `tb_transclass` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table tb_transroute
#

DROP TABLE IF EXISTS `tb_transroute`;
CREATE TABLE `tb_transroute` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40000 ALTER TABLE `tb_transroute` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table tb_user
#

DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `uid` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `permission` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `tb_user` VALUES (1,'09301012@bjtu.edu.cn','hme','hme',0);
INSERT INTO `tb_user` VALUES (2,'09301021@bjtu.edu.cn','skl','skl',0);
INSERT INTO `tb_user` VALUES (3,'9999@qq.com','sa','dongxiao',0);
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table tb_userprofile
#

DROP TABLE IF EXISTS `tb_userprofile`;
CREATE TABLE `tb_userprofile` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `truename` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `tb_userprofile` VALUES (1,'北京交通大学16号楼','黄明恩','15210582640','北京市','海淀');
/*!40000 ALTER TABLE `tb_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

#
#  Foreign keys for table tb_baseroute
#

ALTER TABLE `tb_baseroute`
ADD CONSTRAINT `FKB64EAD6798911434` FOREIGN KEY (`id`) REFERENCES `tb_transroute` (`id`);

#
#  Foreign keys for table tb_order
#

ALTER TABLE `tb_order`
ADD CONSTRAINT `FKFA98EE3D5B4E782E` FOREIGN KEY (`user`) REFERENCES `tb_user` (`uid`),
  ADD CONSTRAINT `FKFA98EE3DBF3F6B3D` FOREIGN KEY (`id`) REFERENCES `tb_deliveryorder` (`id`);

#
#  Foreign keys for table tb_orderitem
#

ALTER TABLE `tb_orderitem`
ADD CONSTRAINT `FKBF076F05B41A212` FOREIGN KEY (`good`) REFERENCES `good` (`goodId`),
  ADD CONSTRAINT `FKBF076F0BF91F29F` FOREIGN KEY (`orderId`) REFERENCES `tb_order` (`orderId`);


/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
