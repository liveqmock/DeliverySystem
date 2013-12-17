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
#  Foreign keys for table tb_baseroute
#

ALTER TABLE `tb_baseroute`
ADD CONSTRAINT `FKB64EAD6798911434` FOREIGN KEY (`id`) REFERENCES `tb_transroute` (`id`);


/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
