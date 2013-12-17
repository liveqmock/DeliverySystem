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
#  Foreign keys for table tb_order
#

ALTER TABLE `tb_order`
ADD CONSTRAINT `FKFA98EE3D5B4E782E` FOREIGN KEY (`user`) REFERENCES `tb_user` (`uid`),
  ADD CONSTRAINT `FKFA98EE3DBF3F6B3D` FOREIGN KEY (`id`) REFERENCES `tb_deliveryorder` (`id`);


/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
