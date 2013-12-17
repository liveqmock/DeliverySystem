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
#  Foreign keys for table tb_orderitem
#

ALTER TABLE `tb_orderitem`
ADD CONSTRAINT `FKBF076F05B41A212` FOREIGN KEY (`good`) REFERENCES `good` (`goodId`),
  ADD CONSTRAINT `FKBF076F0BF91F29F` FOREIGN KEY (`orderId`) REFERENCES `tb_order` (`orderId`);


/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
