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

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
