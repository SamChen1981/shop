-- MySQL dump 10.13  Distrib 5.5.27, for Win32 (x86)
--
-- Host: localhost    Database: shop
-- ------------------------------------------------------
-- Server version	5.5.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adminuser`
--

DROP TABLE IF EXISTS `adminuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminuser` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminuser`
--

LOCK TABLES `adminuser` WRITE;
/*!40000 ALTER TABLE `adminuser` DISABLE KEYS */;
INSERT INTO `adminuser` VALUES (2,'admin','admin');
/*!40000 ALTER TABLE `adminuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'女装男装'),(2,'鞋靴箱包'),(3,'运动户外'),(4,'珠宝配饰'),(5,'手机数码'),(6,'家电办公'),(7,'护肤彩妆'),(10,'家居饰品');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorysecond`
--

DROP TABLE IF EXISTS `categorysecond`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorysecond` (
  `csid` int(11) NOT NULL AUTO_INCREMENT,
  `csname` varchar(255) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`csid`),
  KEY `FK936FCAF21DB1FD15` (`cid`),
  CONSTRAINT `FK936FCAF21DB1FD15` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorysecond`
--

LOCK TABLES `categorysecond` WRITE;
/*!40000 ALTER TABLE `categorysecond` DISABLE KEYS */;
INSERT INTO `categorysecond` VALUES (1,'潮流女装',1),(2,'初冬羽绒',1),(3,'毛呢大衣',1),(4,'温暖毛衣',1),(5,'精选男装',1),(6,'冬季外套',1),(7,'羽绒服',1),(9,'女鞋',2),(10,'短靴',2),(11,'男鞋',2),(12,'女包',2),(13,'男包',2),(14,'服饰配件',2),(15,'运动鞋',3),(16,'运动服',3),(17,'户外运动',3),(18,'健身装备',3),(19,'骑行装备',3),(20,'珠宝首饰',4),(21,'时尚饰品',4),(22,'品质手表',4),(23,'眼镜配饰',4),(24,'手机',5),(25,'平板',5),(26,'电脑',5),(27,'相机',5),(28,'大家电',6),(29,'厨房电器',6),(30,'生活电器',6),(31,'个户电器',6),(32,'办公耗材',6),(33,'美容护肤',7),(34,'强效保养',7),(35,'超值彩妆',7),(36,'换季保养',7),(40,'组合柜222',10);
/*!40000 ALTER TABLE `categorysecond` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitem`
--

DROP TABLE IF EXISTS `orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderitem` (
  `itemid` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemid`),
  KEY `FKE8B2AB6166C01961` (`oid`),
  KEY `FKE8B2AB6171DB7AE4` (`pid`),
  KEY `FKE8B2AB6140ACF87A` (`oid`),
  CONSTRAINT `FKE8B2AB6140ACF87A` FOREIGN KEY (`oid`) REFERENCES `orders` (`oid`),
  CONSTRAINT `FKE8B2AB6171DB7AE4` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitem`
--

LOCK TABLES `orderitem` WRITE;
/*!40000 ALTER TABLE `orderitem` DISABLE KEYS */;
INSERT INTO `orderitem` VALUES (2,1,198,73,2000),(3,1,172,2,2000),(4,1,358,51,3000),(5,1,590,7,4000),(6,1,172,2,5000),(7,1,228,1,5000),(8,1,119,5,5000),(9,1,125,75,6000),(10,1,83,72,7000),(11,1,358,51,8000),(12,1,83,68,9000),(13,1,83,66,9001),(14,1,172,2,9001),(15,1,228,1,9002),(16,1,5099,79,9003);
/*!40000 ALTER TABLE `orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `total` double DEFAULT NULL,
  `ordertime` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `addr` varchar(50) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `FKC3DF62E5AA3D9C7` (`uid`),
  CONSTRAINT `FKC3DF62E5AA3D9C7` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=9004 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (2000,370,'2015-02-11 10:04:23',1,NULL,NULL,NULL,7),(3000,358,'2015-02-11 10:46:41',1,NULL,NULL,NULL,7),(4000,590,'2015-02-11 10:46:47',1,NULL,NULL,NULL,7),(5000,519,'2015-02-11 10:47:01',1,NULL,NULL,NULL,7),(6000,125,'2015-02-11 10:47:07',1,NULL,NULL,NULL,7),(7000,83,'2015-02-11 10:47:15',1,'姜涛','15726607618','北京市西三旗中腾建华3楼',7),(8000,358,'2015-02-11 11:17:22',2,'姜涛','15726607618','北京市西三旗中腾建华3楼',7),(9000,83,'2015-02-11 11:23:26',2,'姜涛','15726607618','北京市西三旗中腾建华3楼',7),(9001,255,'2015-02-23 21:31:19',1,NULL,NULL,NULL,7),(9002,228,'2015-02-27 09:07:55',1,NULL,NULL,NULL,7),(9003,5099,'2015-02-27 15:35:53',4,'姜涛','15726607618','北京市西三旗中腾建华3楼',7);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) DEFAULT NULL,
  `market_price` double DEFAULT NULL,
  `shop_price` double DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `pdesc` varchar(255) DEFAULT NULL,
  `is_hot` int(11) DEFAULT NULL,
  `pdate` datetime DEFAULT NULL,
  `csid` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `FKED8DCCEFB9B74E02` (`csid`),
  CONSTRAINT `FKED8DCCEFB9B74E02` FOREIGN KEY (`csid`) REFERENCES `categorysecond` (`csid`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'韩版连帽加厚毛衣女外套',558,228,'products/1/cs10001.jpg','双11限量200件，拍完下架，加车享优惠，早下手早发货。。秋冬个性中长款毛衣，美丽和温度同在！限量供应，拒绝撞衫！迫于纱线和人工在不断上涨的双重压力下，产品涨价在即！少量现货出售中，手快有，手慢等哦，赶紧抢哦，绝对高大上。',1,'2014-11-02 20:18:00',1),(2,'女装立领长袖拼接PU皮毛呢外套',436,172,'products/1/cs10002.jpg','【现在拍下并支付定金，即可获得双12当天10元无门槛优惠券一张。注：只限有预付定金款~优惠券统一在12月11号发放】 毛呢外套 整洁干练的长款版型 整个肩部给予皮绒拼接 与毛呢一起撑起品质感 立领 长袖 肩部往下做流行加层拼接 一粒扣收合门襟 特意做的夹棉里层（袖里无） 不必再畏惧冷冽寒风',0,'2014-11-04 20:18:00',1),(3,'韩版女装翻领羔绒夹棉格子毛呢外套',238,119,'products/1/cs10003.jpg','外套款。 称为棉衣也不为过 或者因为它的表层毛呢　称呼为毛呢外套 ｙａｎｇ　羔绒位于翻领及袖口 从视觉着手　带来温暖无限 夹棉里衬（袖里也有）再次提升御寒功能 流行元素上　选择红黑格纹理　大气而又经典 金属拉链开叉　插袋自不会少',0,'2014-10-01 20:18:00',1),(4,'韩版女装翻领羔绒夹棉格子毛呢外套',238,119,'products/1/cs10004.jpg','外套款。 称为棉衣也不为过 或者因为它的表层毛呢　称呼为毛呢外套 ｙａｎｇ　羔绒位于翻领及袖口 从视觉着手　带来温暖无限 夹棉里衬（袖里也有）再次提升御寒功能 流行元素上　选择红黑格纹理　大气而又经典 金属拉链开叉　插袋自不会少',0,'2014-12-07 20:18:00',1),(5,'韩版女装翻领羔绒夹棉格子毛呢外套',238,119,'products/1/cs10005.jpg','外套款。 称为棉衣也不为过 或者因为它的表层毛呢　称呼为毛呢外套 ｙａｎｇ　羔绒位于翻领及袖口 从视觉着手　带来温暖无限 夹棉里衬（袖里也有）再次提升御寒功能 流行元素上　选择红黑格纹理　大气而又经典 金属拉链开叉　插袋自不会少',0,'2014-11-02 20:18:00',1),(6,'冬装韩版女装翻领羔绒夹棉格子毛呢外套',238,119,'products/1/cs10006.jpg','外套款。 称为棉衣也不为过 或者因为它的表层毛呢　称呼为毛呢外套 ｙａｎｇ　羔绒位于翻领及袖口 从视觉着手　带来温暖无限 夹棉里衬（袖里也有）再次提升御寒功能 流行元素上　选择红黑格纹理　大气而又经典 金属拉链开叉　插袋自不会少',0,'2014-11-10 15:18:00',1),(7,'新款优雅奢华毛领白鸭绒轻薄羽绒服',1120,590,'products/1/cs10007.jpg','秋冬热卖款，今日特惠！库存有限，卖完即止！喜欢的赶紧出手哦！',0,'2014-11-03 20:18:00',1),(8,'秋冬季毛呢外套女中长款圆领小香风呢子大衣',672,336,'products/1/cs10008.jpg','【双12预售】双12提前开抢，11月24日—12月11日抢先付预付款33.6元，12月12日付剩余尾款，先付先发货，提前引爆双12！！！买就【送】双十二10元无门槛优惠券！！！商家【赠】运费险！！！',0,'2014-11-03 20:18:00',1),(9,'女装貉子毛大衣 时尚修身长袖淑女毛呢外套',238,119,'products/1/cs10009.jpg','秋冬热卖款，今日特惠！库存有限，卖完即止！喜欢的赶紧出手哦！',0,'2014-11-03 20:18:00',1),(10,'修身显瘦淑女针织长袖打底连衣裙女',356,158,'products/1/cs10010.jpg','【1212万能盛典预售抢先购,早买早便宜！】定金15.80元，预售价158.00元，双12价涨价至178.00元!',0,'2014-11-03 20:18:00',1),(11,'整貂皮大衣外套中长款收腰立领长袖进口真皮草裘皮',19800,9900,'products/1/cs20001.jpg','采用100%进口小母貂 毛皮结实柔软毛峰更有光泽 保暖效果极强。　 【正品保证】我们承诺100%整皮水貂 假一罚十 支持验货 无理由退换货 【售后保障】终身免费保养维修',0,'2014-11-03 20:18:00',2),(12,'整貂皮大衣外套中长款收腰立领长袖进口真皮草裘皮',19800,9900,'products/1/cs20002.jpg','采用100%进口小母貂 毛皮结实柔软毛峰更有光泽 保暖效果极强。　 【正品保证】我们承诺100%整皮水貂 假一罚十 支持验货 无理由退换货 【售后保障】终身免费保养维修',0,'2014-11-03 20:18:00',2),(13,'整貂皮大衣外套中长款收腰立领长袖进口真皮草裘皮',19800,9900,'products/1/cs20003.jpg','采用100%进口小母貂 毛皮结实柔软毛峰更有光泽 保暖效果极强。　 【正品保证】我们承诺100%整皮水貂 假一罚十 支持验货 无理由退换货 【售后保障】终身免费保养维修',0,'2014-11-03 20:18:00',2),(14,'整貂皮大衣外套中长款收腰立领长袖进口真皮草裘皮',19800,9900,'products/1/cs20004.jpg','采用100%进口小母貂 毛皮结实柔软毛峰更有光泽 保暖效果极强。　 【正品保证】我们承诺100%整皮水貂 假一罚十 支持验货 无理由退换货 【售后保障】终身免费保养维修',0,'2014-11-03 20:18:00',2),(15,'整貂皮大衣外套中长款收腰立领长袖进口真皮草裘皮',19800,9900,'products/1/cs20005.jpg','采用100%进口小母貂 毛皮结实柔软毛峰更有光泽 保暖效果极强。　 【正品保证】我们承诺100%整皮水貂 假一罚十 支持验货 无理由退换货 【售后保障】终身免费保养维修',0,'2014-11-03 20:18:00',2),(16,'整貂皮大衣外套中长款收腰立领长袖进口真皮草裘皮',19800,9900,'products/1/cs20006.jpg','采用100%进口小母貂 毛皮结实柔软毛峰更有光泽 保暖效果极强。　 【正品保证】我们承诺100%整皮水貂 假一罚十 支持验货 无理由退换货 【售后保障】终身免费保养维修',0,'2014-11-03 20:18:00',2),(17,'整貂皮大衣外套中长款收腰立领长袖进口真皮草裘皮',19800,9900,'products/1/cs20007.jpg','采用100%进口小母貂 毛皮结实柔软毛峰更有光泽 保暖效果极强。　 【正品保证】我们承诺100%整皮水貂 假一罚十 支持验货 无理由退换货 【售后保障】终身免费保养维修',0,'2014-11-03 20:18:00',2),(18,'整貂皮大衣外套中长款收腰立领长袖进口真皮草裘皮',19800,9900,'products/1/cs20008.jpg','采用100%进口小母貂 毛皮结实柔软毛峰更有光泽 保暖效果极强。　 【正品保证】我们承诺100%整皮水貂 假一罚十 支持验货 无理由退换货 【售后保障】终身免费保养维修',0,'2014-11-03 20:18:00',2),(19,'整貂皮大衣外套中长款收腰立领长袖进口真皮草裘皮',19800,9900,'products/1/cs20009.jpg','采用100%进口小母貂 毛皮结实柔软毛峰更有光泽 保暖效果极强。　 【正品保证】我们承诺100%整皮水貂 假一罚十 支持验货 无理由退换货 【售后保障】终身免费保养维修',0,'2014-10-01 20:18:00',2),(20,'中长款貂皮大衣整貂女装',17900,7290,'products/1/cs20010.jpg','采用100%进口小母貂 毛皮结实柔软毛峰更有光泽 保暖效果极强。　 【正品保证】【售后保障】我们承诺100%整皮水貂 假一罚十 支持验货 无理由退换货',0,'2014-11-03 20:18:00',2),(21,'韩版毛呢外套女韩范秋冬装厚中长款冬季呢子',598,198,'products/1/cs30001.png','今年韩国首尔爆款，超高端定制羊毛呢大衣，版型超美，不挑身材，不挑年龄，上身非常漂亮哦，适合任何场合，这个秋冬MM必备款哦。几乎人手一件，美丽时尚的你怎么能少了这件呢，现秋冬预热加十一到来，只需99元包邮，只限今天，今天过后马上涨价，早买早划算哦~',1,'2014-11-03 20:18:00',3),(22,'韩版毛呢外套女韩范秋冬装厚中长款冬季呢子',598,198,'products/1/cs30002.png','今年韩国首尔爆款，超高端定制羊毛呢大衣，版型超美，不挑身材，不挑年龄，上身非常漂亮哦，适合任何场合，这个秋冬MM必备款哦。几乎人手一件，美丽时尚的你怎么能少了这件呢，现秋冬预热加十一到来，只需99元包邮，只限今天，今天过后马上涨价，早买早划算哦~',0,'2014-11-03 20:18:00',3),(23,'韩版毛呢外套女韩范秋冬装厚中长款冬季呢子',598,198,'products/1/cs30003.png','今年韩国首尔爆款，超高端定制羊毛呢大衣，版型超美，不挑身材，不挑年龄，上身非常漂亮哦，适合任何场合，这个秋冬MM必备款哦。几乎人手一件，美丽时尚的你怎么能少了这件呢，现秋冬预热加十一到来，只需99元包邮，只限今天，今天过后马上涨价，早买早划算哦~',0,'2014-11-03 20:18:00',3),(24,'韩版毛呢外套女韩范秋冬装厚中长款冬季呢子',598,198,'products/1/cs30004.png','今年韩国首尔爆款，超高端定制羊毛呢大衣，版型超美，不挑身材，不挑年龄，上身非常漂亮哦，适合任何场合，这个秋冬MM必备款哦。几乎人手一件，美丽时尚的你怎么能少了这件呢，现秋冬预热加十一到来，只需99元包邮，只限今天，今天过后马上涨价，早买早划算哦~',0,'2014-11-03 20:18:00',3),(25,'韩版毛呢外套女韩范秋冬装厚中长款冬季呢子',598,198,'products/1/cs30005.png','今年韩国首尔爆款，超高端定制羊毛呢大衣，版型超美，不挑身材，不挑年龄，上身非常漂亮哦，适合任何场合，这个秋冬MM必备款哦。几乎人手一件，美丽时尚的你怎么能少了这件呢，现秋冬预热加十一到来，只需99元包邮，只限今天，今天过后马上涨价，早买早划算哦~',0,'2014-11-03 20:18:00',3),(26,'韩版毛呢外套女韩范秋冬装厚中长款冬季呢子',598,198,'products/1/cs30006.png','今年韩国首尔爆款，超高端定制羊毛呢大衣，版型超美，不挑身材，不挑年龄，上身非常漂亮哦，适合任何场合，这个秋冬MM必备款哦。几乎人手一件，美丽时尚的你怎么能少了这件呢，现秋冬预热加十一到来，只需99元包邮，只限今天，今天过后马上涨价，早买早划算哦~',0,'2014-11-03 20:18:00',3),(27,'韩版毛呢外套女韩范秋冬装厚中长款冬季呢子',598,198,'products/1/cs30007.png','今年韩国首尔爆款，超高端定制羊毛呢大衣，版型超美，不挑身材，不挑年龄，上身非常漂亮哦，适合任何场合，这个秋冬MM必备款哦。几乎人手一件，美丽时尚的你怎么能少了这件呢，现秋冬预热加十一到来，只需99元包邮，只限今天，今天过后马上涨价，早买早划算哦~',0,'2014-11-03 20:18:00',3),(28,'韩版毛呢外套女韩范秋冬装厚中长款冬季呢子',598,198,'products/1/cs30008.png','今年韩国首尔爆款，超高端定制羊毛呢大衣，版型超美，不挑身材，不挑年龄，上身非常漂亮哦，适合任何场合，这个秋冬MM必备款哦。几乎人手一件，美丽时尚的你怎么能少了这件呢，现秋冬预热加十一到来，只需99元包邮，只限今天，今天过后马上涨价，早买早划算哦~',0,'2014-11-03 20:18:00',3),(29,'韩版毛呢外套女韩范秋冬装厚中长款冬季呢子',598,198,'products/1/cs30009.png','今年韩国首尔爆款，超高端定制羊毛呢大衣，版型超美，不挑身材，不挑年龄，上身非常漂亮哦，适合任何场合，这个秋冬MM必备款哦。几乎人手一件，美丽时尚的你怎么能少了这件呢，现秋冬预热加十一到来，只需99元包邮，只限今天，今天过后马上涨价，早买早划算哦~',0,'2014-11-03 20:18:00',3),(30,'韩版毛呢外套女韩范秋冬装厚中长款冬季呢子',598,198,'products/1/cs30010.png','今年韩国首尔爆款，超高端定制羊毛呢大衣，版型超美，不挑身材，不挑年龄，上身非常漂亮哦，适合任何场合，这个秋冬MM必备款哦。几乎人手一件，美丽时尚的你怎么能少了这件呢，现秋冬预热加十一到来，只需99元包邮，只限今天，今天过后马上涨价，早买早划算哦~',0,'2014-11-10 20:18:00',3),(31,'打底衫加厚修身羊毛衫女装羊绒衫',387,186,'products/1/cs40001.png','本产品 不起球 不掉色 不缩水 是一款贴身必备的厚款羊绒衫 质量保证支持退换',0,'2014-11-03 20:18:00',4),(32,'打底衫加厚修身羊毛衫女装羊绒衫',387,186,'products/1/cs40002.png','本产品 不起球 不掉色 不缩水 是一款贴身必备的厚款羊绒衫 质量保证支持退换',0,'2014-11-03 20:18:00',4),(33,'打底衫加厚修身羊毛衫女装羊绒衫',387,186,'products/1/cs40003.png','本产品 不起球 不掉色 不缩水 是一款贴身必备的厚款羊绒衫 质量保证支持退换',0,'2014-11-03 20:18:00',4),(34,'性感时尚 酷感黑色小圆领露肩修身长袖针织衫',387,186,'products/1/cs40004.jpg','本产品 不起球 不掉色 不缩水 是一款贴身必备的厚款羊绒衫 质量保证支持退换',0,'2014-11-03 20:18:00',4),(35,'韩版黑色打底衫加厚修身羊毛衫女装羊绒衫',387,186,'products/1/cs40005.png','本产品 不起球 不掉色 不缩水 是一款贴身必备的厚款羊绒衫 质量保证支持退换',1,'2014-11-03 20:18:00',4),(36,'韩版黑色打底衫加厚修身羊毛衫女装羊绒衫',387,186,'products/1/cs40006.png','本产品 不起球 不掉色 不缩水 是一款贴身必备的厚款羊绒衫 质量保证支持退换',0,'2014-11-03 20:18:00',4),(37,'韩版黑色打底衫加厚修身羊毛衫女装羊绒衫',387,186,'products/1/cs40007.png','本产品 不起球 不掉色 不缩水 是一款贴身必备的厚款羊绒衫 质量保证支持退换',0,'2014-11-03 20:18:00',4),(38,'韩版黑色打底衫加厚修身羊毛衫女装羊绒衫',387,186,'products/1/cs40008.png','本产品 不起球 不掉色 不缩水 是一款贴身必备的厚款羊绒衫 质量保证支持退换',0,'2014-11-03 20:18:00',4),(39,'韩版黑色打底衫加厚修身羊毛衫女装羊绒衫',387,186,'products/1/cs40009.png','本产品 不起球 不掉色 不缩水 是一款贴身必备的厚款羊绒衫 质量保证支持退换',0,'2014-11-03 20:18:00',4),(40,'韩版黑色打底衫加厚修身羊毛衫女装羊绒衫',387,186,'products/1/cs40010.png','本产品 不起球 不掉色 不缩水 是一款贴身必备的厚款羊绒衫 质量保证支持退换',0,'2014-11-03 20:18:00',4),(41,'韩版黑色打底衫加厚修身羊毛衫女装羊绒衫',387,186,'products/1/cs40011.png','本产品 不起球 不掉色 不缩水 是一款贴身必备的厚款羊绒衫 质量保证支持退换',1,'2014-11-03 20:18:00',4),(42,'冬装外套棉衣立领修身商务大码男装潮牌上衣',899,358,'products/1/cs50001.png','【型男卖点简介】该款凭借其独特的设计、精选的面料和一致的时尚理念，以质感都市，充满时尚感的设计风格， 简约毛呢大衣，修身不变形，不起球，国际大牌一样的面料！面料成分：77.8%聚酯纤维+22.2%粘纤 秋冬简约修身防静电呢风衣外套',1,'2014-11-03 20:18:00',5),(43,'冬装外套棉衣立领修身商务大码男装潮牌上衣',899,358,'products/1/cs50002.png','【型男卖点简介】该款凭借其独特的设计、精选的面料和一致的时尚理念，以质感都市，充满时尚感的设计风格， 简约毛呢大衣，修身不变形，不起球，国际大牌一样的面料！面料成分：77.8%聚酯纤维+22.2%粘纤 秋冬简约修身防静电呢风衣外套',0,'2014-11-03 20:18:00',5),(44,'冬装外套棉衣立领修身商务大码男装潮牌上衣',899,358,'products/1/cs50003.png','【型男卖点简介】该款凭借其独特的设计、精选的面料和一致的时尚理念，以质感都市，充满时尚感的设计风格， 简约毛呢大衣，修身不变形，不起球，国际大牌一样的面料！面料成分：77.8%聚酯纤维+22.2%粘纤 秋冬简约修身防静电呢风衣外套',1,'2014-11-03 20:18:00',5),(45,'冬装外套棉衣立领修身商务大码男装潮牌上衣',899,358,'products/1/cs50004.png','【型男卖点简介】该款凭借其独特的设计、精选的面料和一致的时尚理念，以质感都市，充满时尚感的设计风格， 简约毛呢大衣，修身不变形，不起球，国际大牌一样的面料！面料成分：77.8%聚酯纤维+22.2%粘纤 秋冬简约修身防静电呢风衣外套',0,'2014-12-07 20:18:00',5),(46,'冬装外套棉衣立领修身商务大码男装潮牌上衣',899,358,'products/1/cs50005.png','【型男卖点简介】该款凭借其独特的设计、精选的面料和一致的时尚理念，以质感都市，充满时尚感的设计风格， 简约毛呢大衣，修身不变形，不起球，国际大牌一样的面料！面料成分：77.8%聚酯纤维+22.2%粘纤 秋冬简约修身防静电呢风衣外套',0,'2014-11-03 20:18:00',5),(47,'冬装外套棉衣立领修身商务大码男装潮牌上衣',899,358,'products/1/cs50006.png','【型男卖点简介】该款凭借其独特的设计、精选的面料和一致的时尚理念，以质感都市，充满时尚感的设计风格， 简约毛呢大衣，修身不变形，不起球，国际大牌一样的面料！面料成分：77.8%聚酯纤维+22.2%粘纤 秋冬简约修身防静电呢风衣外套',1,'2014-11-03 20:18:00',5),(48,'冬装外套棉衣立领修身商务大码男装潮牌上衣',899,358,'products/1/cs50007.png','【型男卖点简介】该款凭借其独特的设计、精选的面料和一致的时尚理念，以质感都市，充满时尚感的设计风格， 简约毛呢大衣，修身不变形，不起球，国际大牌一样的面料！面料成分：77.8%聚酯纤维+22.2%粘纤 秋冬简约修身防静电呢风衣外套',0,'2014-11-03 20:18:00',5),(49,'冬装外套棉衣立领修身商务大码男装潮牌上衣',899,358,'products/1/cs50008.png','【型男卖点简介】该款凭借其独特的设计、精选的面料和一致的时尚理念，以质感都市，充满时尚感的设计风格， 简约毛呢大衣，修身不变形，不起球，国际大牌一样的面料！面料成分：77.8%聚酯纤维+22.2%粘纤 秋冬简约修身防静电呢风衣外套',0,'2014-11-03 20:18:00',5),(50,'冬装外套棉衣立领修身商务大码男装潮牌上衣',899,358,'products/1/cs50009.png','【型男卖点简介】该款凭借其独特的设计、精选的面料和一致的时尚理念，以质感都市，充满时尚感的设计风格， 简约毛呢大衣，修身不变形，不起球，国际大牌一样的面料！面料成分：77.8%聚酯纤维+22.2%粘纤 秋冬简约修身防静电呢风衣外套',0,'2014-11-03 20:18:00',5),(51,'冬装外套棉衣立领修身商务大码男装潮牌上衣',899,358,'products/1/cs50010.png','【型男卖点简介】该款凭借其独特的设计、精选的面料和一致的时尚理念，以质感都市，充满时尚感的设计风格， 简约毛呢大衣，修身不变形，不起球，国际大牌一样的面料！面料成分：77.8%聚酯纤维+22.2%粘纤 秋冬简约修身防静电呢风衣外套',1,'2014-12-07 20:18:00',5),(52,'商务修身羊毛呢子风衣 中长款呢大衣外套',997,299,'products/1/cs60001.png','冬装新品首发！大牌做工，顶级羊毛呢面料，穿着舒适保暖，冬季潮男必备品！新品预售价299元，预计涨到398！不要拿市场上那些低劣的毛呢大衣相比较，一分价钱一分货哦！买到就是赚到，支持7天无理由退换货，尺码不对，可享受免费换货！',0,'2014-11-03 20:18:00',6),(53,'商务修身羊毛呢子风衣 中长款呢大衣外套',997,299,'products/1/cs60002.png','冬装新品首发！大牌做工，顶级羊毛呢面料，穿着舒适保暖，冬季潮男必备品！新品预售价299元，预计涨到398！不要拿市场上那些低劣的毛呢大衣相比较，一分价钱一分货哦！买到就是赚到，支持7天无理由退换货，尺码不对，可享受免费换货！',1,'2014-11-03 20:18:00',6),(54,'商务修身羊毛呢子风衣 中长款呢大衣外套',997,299,'products/1/cs60003.png','冬装新品首发！大牌做工，顶级羊毛呢面料，穿着舒适保暖，冬季潮男必备品！新品预售价299元，预计涨到398！不要拿市场上那些低劣的毛呢大衣相比较，一分价钱一分货哦！买到就是赚到，支持7天无理由退换货，尺码不对，可享受免费换货！',0,'2014-11-03 20:18:00',6),(55,'商务修身羊毛呢子风衣 中长款呢大衣外套',997,299,'products/1/cs60004.png','冬装新品首发！大牌做工，顶级羊毛呢面料，穿着舒适保暖，冬季潮男必备品！新品预售价299元，预计涨到398！不要拿市场上那些低劣的毛呢大衣相比较，一分价钱一分货哦！买到就是赚到，支持7天无理由退换货，尺码不对，可享受免费换货！',0,'2014-11-03 20:18:00',6),(56,'商务修身羊毛呢子风衣 中长款呢大衣外套',997,299,'products/1/cs60005.png','冬装新品首发！大牌做工，顶级羊毛呢面料，穿着舒适保暖，冬季潮男必备品！新品预售价299元，预计涨到398！不要拿市场上那些低劣的毛呢大衣相比较，一分价钱一分货哦！买到就是赚到，支持7天无理由退换货，尺码不对，可享受免费换货！',0,'2014-11-03 20:18:00',6),(57,'商务修身羊毛呢子风衣 中长款呢大衣外套',997,299,'products/1/cs60006.png','冬装新品首发！大牌做工，顶级羊毛呢面料，穿着舒适保暖，冬季潮男必备品！新品预售价299元，预计涨到398！不要拿市场上那些低劣的毛呢大衣相比较，一分价钱一分货哦！买到就是赚到，支持7天无理由退换货，尺码不对，可享受免费换货！',1,'2014-12-07 22:18:00',6),(58,'商务修身羊毛呢子风衣 中长款呢大衣外套',997,299,'products/1/cs60007.png','冬装新品首发！大牌做工，顶级羊毛呢面料，穿着舒适保暖，冬季潮男必备品！新品预售价299元，预计涨到398！不要拿市场上那些低劣的毛呢大衣相比较，一分价钱一分货哦！买到就是赚到，支持7天无理由退换货，尺码不对，可享受免费换货！',0,'2014-11-03 20:18:00',6),(59,'商务修身羊毛呢子风衣 中长款呢大衣外套',997,299,'products/1/cs60008.png','冬装新品首发！大牌做工，顶级羊毛呢面料，穿着舒适保暖，冬季潮男必备品！新品预售价299元，预计涨到398！不要拿市场上那些低劣的毛呢大衣相比较，一分价钱一分货哦！买到就是赚到，支持7天无理由退换货，尺码不对，可享受免费换货！',0,'2014-11-03 20:18:00',6),(60,'商务修身羊毛呢子风衣 中长款呢大衣外套',997,299,'products/1/cs60009.png','冬装新品首发！大牌做工，顶级羊毛呢面料，穿着舒适保暖，冬季潮男必备品！新品预售价299元，预计涨到398！不要拿市场上那些低劣的毛呢大衣相比较，一分价钱一分货哦！买到就是赚到，支持7天无理由退换货，尺码不对，可享受免费换货！',1,'2014-12-02 20:18:00',6),(61,'商务修身羊毛呢子风衣 中长款呢大衣外套',997,299,'products/1/cs60010.png','冬装新品首发！大牌做工，顶级羊毛呢面料，穿着舒适保暖，冬季潮男必备品！新品预售价299元，预计涨到398！不要拿市场上那些低劣的毛呢大衣相比较，一分价钱一分货哦！买到就是赚到，支持7天无理由退换货，尺码不对，可享受免费换货！',0,'2014-11-03 20:18:00',6),(62,'韩版修身羽绒服加厚保暖可脱卸帽',198,83,'products/1/cs70001.png','羽绒棉服，保暖性比普通棉服高出3倍，价格合适，比羽绒服便宜3倍，超高性价比～～现亏本冲业绩，活动过后涨价为198元哦，亲们速抢～～！！',1,'2014-11-03 20:18:00',7),(63,'韩版修身羽绒服加厚保暖可脱卸帽',198,83,'products/1/cs70002.png','羽绒棉服，保暖性比普通棉服高出3倍，价格合适，比羽绒服便宜3倍，超高性价比～～现亏本冲业绩，活动过后涨价为198元哦，亲们速抢～～！！',1,'2014-11-03 20:18:00',7),(64,'韩版修身羽绒服加厚保暖可脱卸帽',198,83,'products/1/cs70003.png','羽绒棉服，保暖性比普通棉服高出3倍，价格合适，比羽绒服便宜3倍，超高性价比～～现亏本冲业绩，活动过后涨价为198元哦，亲们速抢～～！！',0,'2014-11-03 20:18:00',7),(65,'韩版修身羽绒服加厚保暖可脱卸帽',198,83,'products/1/cs70004.png','羽绒棉服，保暖性比普通棉服高出3倍，价格合适，比羽绒服便宜3倍，超高性价比～～现亏本冲业绩，活动过后涨价为198元哦，亲们速抢～～！！',1,'2014-11-03 20:18:00',7),(66,'韩版修身羽绒服加厚保暖可脱卸帽',198,83,'products/1/cs70005.png','羽绒棉服，保暖性比普通棉服高出3倍，价格合适，比羽绒服便宜3倍，超高性价比～～现亏本冲业绩，活动过后涨价为198元哦，亲们速抢～～！！',0,'2014-11-03 20:18:00',7),(67,'韩版修身羽绒服加厚保暖可脱卸帽',198,83,'products/1/cs70006.png','羽绒棉服，保暖性比普通棉服高出3倍，价格合适，比羽绒服便宜3倍，超高性价比～～现亏本冲业绩，活动过后涨价为198元哦，亲们速抢～～！！',1,'2014-11-03 20:18:00',7),(68,'韩版修身羽绒服加厚保暖可脱卸帽',198,83,'products/1/cs70007.png','羽绒棉服，保暖性比普通棉服高出3倍，价格合适，比羽绒服便宜3倍，超高性价比～～现亏本冲业绩，活动过后涨价为198元哦，亲们速抢～～！！',1,'2014-12-04 20:18:00',7),(69,'韩版修身羽绒服加厚保暖可脱卸帽',198,83,'products/1/cs70008.png','羽绒棉服，保暖性比普通棉服高出3倍，价格合适，比羽绒服便宜3倍，超高性价比～～现亏本冲业绩，活动过后涨价为198元哦，亲们速抢～～！！',1,'2014-11-03 20:18:00',7),(70,'韩版修身羽绒服加厚保暖可脱卸帽',198,83,'products/1/cs70009.png','羽绒棉服，保暖性比普通棉服高出3倍，价格合适，比羽绒服便宜3倍，超高性价比～～现亏本冲业绩，活动过后涨价为198元哦，亲们速抢～～！！',0,'2014-11-03 20:18:00',7),(71,'韩版修身羽绒服加厚保暖可脱卸帽',198,83,'products/1/cs70010.png','羽绒棉服，保暖性比普通棉服高出3倍，价格合适，比羽绒服便宜3倍，超高性价比～～现亏本冲业绩，活动过后涨价为198元哦，亲们速抢～～！！',1,'2014-11-03 20:18:00',7),(72,'女鞋',198,83,'products/1/nvxie.jpg','韩版女鞋...',0,'2015-02-10 12:02:54',9),(73,'短靴1',299,198,'products/1/duanxue1.png','女款短靴...',1,'2015-02-10 15:02:08',10),(74,'女款短靴2',200,125,'products/1/duanxue2.png','女款短靴',1,'2014-12-15 00:00:00',10),(75,'女款短靴3',200,125,'products/1/duanxue3.png','女款短靴',1,'2014-12-15 00:00:00',10),(76,'女款短靴4',200,125,'products/1/duanxue4.png','女款短靴',1,'2014-12-15 00:00:00',10),(79,'Thinkpad',5999,5099,'products/dn2.jpg','Thinkpad',1,'2015-02-27 14:56:26',26);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (7,'aaa','aaa','姜涛','aaa@shop.com','15726607618','北京市西三旗中腾建华3楼',1,NULL),(8,'bbb','bbb','张三','bbb@shop.com','18726607618','北京市西三旗中腾建华3楼',1,'');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-27 16:42:20
