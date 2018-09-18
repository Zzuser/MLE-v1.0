-- MySQL dump 10.16  Distrib 10.1.35-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: mledb
-- ------------------------------------------------------
-- Server version	10.1.35-MariaDB

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

DROP DATABASE IF EXISTS `mledb01`;
CREATE database `mledb01`
  DEFAULT CHARACTER SET UTF8
  COLLATE utf8_general_ci;
USE `mledb01`;

--
-- Table structure for table `child_menu`
--

DROP TABLE IF EXISTS `child_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `child_menu` (
  `child_menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '子菜单id',
  `shop_id_f` bigint(20) DEFAULT NULL COMMENT '商铺id',
  `father_menu_id_f` bigint(20) DEFAULT NULL COMMENT '总菜单id',
  `child_menu_name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '子菜单名称',
  `child_menu_desc` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '子菜单描述',
  `createtime` date DEFAULT NULL COMMENT '子菜单创建时间',
  PRIMARY KEY (`child_menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='子菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child_menu`
--

LOCK TABLES `child_menu` WRITE;
/*!40000 ALTER TABLE `child_menu` DISABLE KEYS */;
INSERT INTO `child_menu` VALUES (1,1,1,'店长推荐',NULL,'2018-09-12'),(2,1,1,'精品热菜',NULL,'2018-09-12'),(3,1,1,'特色菜',NULL,'2018-09-12'),(4,2,2,'品牌推荐',NULL,'2018-09-12'),(5,3,3,'烤大肉',NULL,'2018-09-12'),(6,3,3,'烤小肉','','2018-09-12'),(7,1,1,'精品面食',NULL,'2018-09-15'),(8,1,1,'新品推荐',NULL,'2018-09-15'),(9,1,1,'主食',NULL,'2018-09-15'),(10,1,1,'饮料',NULL,'2018-09-15');
/*!40000 ALTER TABLE `child_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dish`
--

DROP TABLE IF EXISTS `dish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dish` (
  `dish_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜品id',
  `dish_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '菜品名称',
  `shop_id_f` bigint(20) NOT NULL COMMENT '店家id',
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '菜品图片',
  `createtime` date DEFAULT NULL COMMENT '创建时间',
  `grade` double DEFAULT NULL COMMENT '评分',
  `dish_desc` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '菜品描述',
  `dish_discount` double DEFAULT NULL COMMENT '菜品折扣',
  `state` tinyint(1) DEFAULT NULL COMMENT '菜品状态',
  `price` double DEFAULT NULL COMMENT '菜品价格',
  `num` int(11) DEFAULT NULL COMMENT '菜品数量',
  `saled_num` int(11) DEFAULT NULL COMMENT '销售总量',
  PRIMARY KEY (`dish_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='菜品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dish`
--

LOCK TABLES `dish` WRITE;
/*!40000 ALTER TABLE `dish` DISABLE KEYS */;
INSERT INTO `dish` VALUES (1,'油泼面',1,'/aaa/ypm.jpg','2018-09-10',0,'难吃死了',1,1,100,999,0),(2,'福建烤老鼠',1,'/aaa/kls.jpg','2018-09-10',0,'吓死人',1,1,200,999,0),(3,'蚂蚁上树',1,'/aaa/myss.jpg','2018-09-10',0,'不能吃',1,1,300,999,0),(4,'充钱小面',1,'/aaa/cqxm.jpg','2018-09-12',0,'吃死人',1,1,400,999,0),(5,'飘香卤煮',1,'/sada/sdf.jpg','2018-09-12',0,'真香',1,1,500,999,0),(6,'绝命鸭脖',1,'/sdfgds/sdfs.jpg','2018-09-12',0,'五步倒',1,1,600,999,0),(7,'顽石榴莲披萨',2,'sdfsa/sadf/sd.jpg','2018-09-12',0,'硬！',1,1,123,123,0),(8,'金刚石龙虾披萨',2,'df/dfg/sf.jpg','2018-09-12',0,'硬！！',1,1,34,234,0),(9,'烤大象',3,'dsf/saf/saf.jpg','2018-09-12',0,'大',1,1,12,123,0),(10,'烤蚂蚁',3,'dfsdf','2018-09-12',0,'小',1,1,23,233,0);
/*!40000 ALTER TABLE `dish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dish_category`
--

DROP TABLE IF EXISTS `dish_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dish_category` (
  `dish_category_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜品分类id',
  `dish_category_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '分类名称',
  `desc` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`dish_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='菜品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dish_category`
--

LOCK TABLES `dish_category` WRITE;
/*!40000 ALTER TABLE `dish_category` DISABLE KEYS */;
INSERT INTO `dish_category` VALUES (1,'热菜',NULL),(2,'主食',NULL),(3,'披萨','');
/*!40000 ALTER TABLE `dish_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dish_eva_image`
--

DROP TABLE IF EXISTS `dish_eva_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dish_eva_image` (
  `dish_eva_image_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '图片id',
  `dish_eva_id_f` bigint(20) DEFAULT NULL COMMENT '菜品评价id',
  `url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图片地址',
  `desc` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`dish_eva_image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='评价图片';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dish_eva_image`
--

LOCK TABLES `dish_eva_image` WRITE;
/*!40000 ALTER TABLE `dish_eva_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `dish_eva_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dish_evaluate`
--

DROP TABLE IF EXISTS `dish_evaluate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dish_evaluate` (
  `dish_evaluate_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜品评价id',
  `user_id_f` bigint(20) DEFAULT NULL COMMENT '用户id',
  `dish_id_f` bigint(20) DEFAULT NULL COMMENT '菜品id',
  `desc` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评价内容',
  `shop_reply` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '店家回复',
  `praise` tinyint(1) DEFAULT NULL COMMENT '赞？',
  `createtime` date DEFAULT NULL COMMENT '创建时间',
  `has_image` tinyint(1) DEFAULT NULL COMMENT '有图？',
  PRIMARY KEY (`dish_evaluate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='菜品评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dish_evaluate`
--

LOCK TABLES `dish_evaluate` WRITE;
/*!40000 ALTER TABLE `dish_evaluate` DISABLE KEYS */;
/*!40000 ALTER TABLE `dish_evaluate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dish_with_category`
--

DROP TABLE IF EXISTS `dish_with_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dish_with_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dish_id_f` bigint(20) DEFAULT NULL COMMENT '菜品id',
  `category_id_f` bigint(20) DEFAULT NULL COMMENT '分类id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='菜品及其分类联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dish_with_category`
--

LOCK TABLES `dish_with_category` WRITE;
/*!40000 ALTER TABLE `dish_with_category` DISABLE KEYS */;
INSERT INTO `dish_with_category` VALUES (1,1,2),(2,2,1),(3,3,1);
/*!40000 ALTER TABLE `dish_with_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dish_with_child_menu`
--

DROP TABLE IF EXISTS `dish_with_child_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dish_with_child_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dish_id_f` bigint(20) DEFAULT NULL COMMENT '菜品id\n',
  `child_menu_id_f` bigint(20) DEFAULT NULL COMMENT '子菜单id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='菜品与菜单关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dish_with_child_menu`
--

LOCK TABLES `dish_with_child_menu` WRITE;
/*!40000 ALTER TABLE `dish_with_child_menu` DISABLE KEYS */;
INSERT INTO `dish_with_child_menu` VALUES (1,1,1),(2,2,2),(3,3,2),(4,4,1),(5,5,3),(6,6,3),(7,7,4),(8,8,4);
/*!40000 ALTER TABLE `dish_with_child_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `father_menu`
--

DROP TABLE IF EXISTS `father_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `father_menu` (
  `father_menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '总菜单id',
  `shop_id_f` bigint(20) DEFAULT NULL COMMENT '商铺id',
  `father_menu_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '总菜单名',
  `desc` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '总菜单描述',
  `state` tinyint(4) DEFAULT NULL COMMENT '菜单状态',
  `createtime` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`father_menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='总菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `father_menu`
--

LOCK TABLES `father_menu` WRITE;
/*!40000 ALTER TABLE `father_menu` DISABLE KEYS */;
INSERT INTO `father_menu` VALUES (1,1,'坑人1号','第一份坑人菜单',1,'2018-09-12'),(2,2,'硬1号','第一硬菜',1,'2018-09-12'),(3,3,'不敢吃1号','牛逼',1,'2018-09-12'),(4,1,'坑人2号','第二份坑人菜单',0,'2018-09-14'),(5,1,'坑人3号','第三份坑人菜单',0,'2018-09-14');
/*!40000 ALTER TABLE `father_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horseman`
--

DROP TABLE IF EXISTS `horseman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horseman` (
  `horseman_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '骑手id',
  `horseman_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '骑手电话',
  `real_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '真实姓名',
  `idcard` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `total_shipping_num` int(11) DEFAULT NULL COMMENT '配送总量',
  `ontime_shipping_num` int(11) DEFAULT NULL COMMENT '准时数量',
  `score` double DEFAULT NULL COMMENT '评分',
  `ontime_rate` double DEFAULT NULL COMMENT '准时率',
  `createtime` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`horseman_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='骑手';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horseman`
--

LOCK TABLES `horseman` WRITE;
/*!40000 ALTER TABLE `horseman` DISABLE KEYS */;
INSERT INTO `horseman` VALUES (1,'13188888888','贾菊鹏','213123123423231234',0,0,0,0,'2018-09-10');
/*!40000 ALTER TABLE `horseman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mle_order`
--

DROP TABLE IF EXISTS `mle_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mle_order` (
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `shop_id_f` bigint(20) DEFAULT NULL COMMENT '商铺id',
  `user_id_f` bigint(20) DEFAULT NULL COMMENT '用户id',
  `hourseman_id_f` bigint(20) DEFAULT NULL COMMENT '骑手id',
  `user_address_id_f` bigint(20) DEFAULT NULL COMMENT '配送地址id',
  `state` int(11) DEFAULT NULL COMMENT '订单状态',
  `createtime` date DEFAULT NULL COMMENT '创建时间',
  `finishtime` date DEFAULT NULL COMMENT '完成时间',
  `exp_time` date DEFAULT NULL COMMENT '预计送达时间',
  `total_price` double DEFAULT NULL COMMENT '订单总价',
  `shipping_fee` double DEFAULT NULL COMMENT '配送费',
  `pay_type_id_f` int(11) DEFAULT NULL COMMENT '支付类型id',
  `order_type_id_f` int(11) DEFAULT NULL COMMENT '订单类型id',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mle_order`
--

LOCK TABLES `mle_order` WRITE;
/*!40000 ALTER TABLE `mle_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `mle_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_type`
--

DROP TABLE IF EXISTS `order_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_type` (
  `order_type_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '订单类型id',
  `order_type_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单类型',
  `desc` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`order_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='订单类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_type`
--

LOCK TABLES `order_type` WRITE;
/*!40000 ALTER TABLE `order_type` DISABLE KEYS */;
INSERT INTO `order_type` VALUES (1,'on_time','准时达'),(2,'hold_on','预定单');
/*!40000 ALTER TABLE `order_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_with_dish`
--

DROP TABLE IF EXISTS `order_with_dish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_with_dish` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `order_id_f` bigint(20) DEFAULT NULL COMMENT '订单id',
  `dish_id_f` bigint(20) DEFAULT NULL COMMENT '菜品数量',
  `dish_num` int(11) DEFAULT NULL COMMENT '份数',
  `total_price` double DEFAULT NULL COMMENT '条目总价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='订单菜品联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_with_dish`
--

LOCK TABLES `order_with_dish` WRITE;
/*!40000 ALTER TABLE `order_with_dish` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_with_dish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_type`
--

DROP TABLE IF EXISTS `pay_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_type` (
  `pay_type_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '支付类型id',
  `pay_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '支付类型',
  `desc` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`pay_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='支付类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_type`
--

LOCK TABLES `pay_type` WRITE;
/*!40000 ALTER TABLE `pay_type` DISABLE KEYS */;
INSERT INTO `pay_type` VALUES (1,'alipay','支付宝'),(2,'weixin','微信');
/*!40000 ALTER TABLE `pay_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '权限id',
  `role_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '权限名',
  `role_desc` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '权限描述',
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_role_name_uindex` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户角色';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_USER','普通用户'),(2,'RILE_VIP','普通会员');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop` (
  `shop_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '店家id',
  `shop_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '店家名',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '联系电话',
  `manager_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '管理员名称',
  `manager_idcard` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '管理员身份证号码',
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '管理员密码',
  `salt` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码盐',
  `address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '店家地址',
  `proclamation` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '店家公告',
  `profile` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '店家图片',
  `shop_hours` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '营业时间',
  `state` tinyint(1) DEFAULT NULL COMMENT '商店状态',
  `main_score` double DEFAULT NULL COMMENT '总分',
  `createtime` date DEFAULT NULL COMMENT '创建时间',
  `distribution_score` double DEFAULT NULL COMMENT '配送分',
  `package_score` double DEFAULT NULL COMMENT '包装分',
  `taste_score` double DEFAULT NULL COMMENT '味道分',
  `min_price` double DEFAULT NULL COMMENT '起送价',
  `shipping_fee` double DEFAULT NULL COMMENT '配送费',
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='店家';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES (1,'黄以波面馆','13199999999','黄以波','102930201801013333','123456','123','黄土高坡','黄以波餐馆坑死人不偿命','/abc/cba/hyb.jpg','8:00-16:00',1,0,'2018-09-10',0,0,0,20,12),(2,'费志刚披萨','13188888888','费志刚','102930201801013332','123456','134','青藏高原','费志刚披萨咬得动算你赢','asdf/asdf/sadf.jpg','9:00-20:00',1,0,'2018-09-12',0,0,0,80,50),(3,'冉瑞鹏烧烤','13177777777','冉瑞鹏','123412341234123412','123456','123','乌鲁木齐','冉瑞鹏烧烤敢吃算我输','sadf/asfds/sadf.jpg','1:00:23:00',1,0,'2018-09-12',0,0,0,324,23);
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_category`
--

DROP TABLE IF EXISTS `shop_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_category` (
  `shop_category_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '店铺分类id',
  `shop_category_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '店铺分类名',
  `shop_category_desc` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`shop_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='店铺分类\n';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_category`
--

LOCK TABLES `shop_category` WRITE;
/*!40000 ALTER TABLE `shop_category` DISABLE KEYS */;
INSERT INTO `shop_category` VALUES (1,'家常菜馆',NULL),(2,'品牌保证',NULL);
/*!40000 ALTER TABLE `shop_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_discount`
--

DROP TABLE IF EXISTS `shop_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_discount` (
  `discount_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '优惠类型id',
  `discount_name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '优惠名称',
  `shop_id_f` bigint(20) DEFAULT NULL COMMENT '商户id',
  `desc` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '优惠描述',
  `percent` double DEFAULT NULL COMMENT '百分百减价',
  `direct` double DEFAULT NULL COMMENT '立减',
  `min_price` double DEFAULT NULL COMMENT '最小金额',
  `createtime` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`discount_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='商店优惠项目';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_discount`
--

LOCK TABLES `shop_discount` WRITE;
/*!40000 ALTER TABLE `shop_discount` DISABLE KEYS */;
INSERT INTO `shop_discount` VALUES (1,'5折',1,'五折优惠',0.5,0,0,'2018-09-10'),(2,'满20减50',2,NULL,1,50,20,'2018-09-12'),(3,'满30减100',1,NULL,1,100,30,'2018-09-12'),(4,'满1000减40',2,NULL,1,40,1000,'2018-09-12');
/*!40000 ALTER TABLE `shop_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_eva_image`
--

DROP TABLE IF EXISTS `shop_eva_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_eva_image` (
  `shop_eva_image_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `shop_eva_id_f` bigint(20) DEFAULT NULL COMMENT '评价id',
  `url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '资源路径',
  `desc` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图片描述',
  PRIMARY KEY (`shop_eva_image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='商店评价图片';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_eva_image`
--

LOCK TABLES `shop_eva_image` WRITE;
/*!40000 ALTER TABLE `shop_eva_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_eva_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_evaluate`
--

DROP TABLE IF EXISTS `shop_evaluate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_evaluate` (
  `evaluate_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '评价id',
  `user_id_f` bigint(20) NOT NULL COMMENT '用户id',
  `shop_id_f` bigint(20) NOT NULL COMMENT '店家id',
  `taste_score` double DEFAULT NULL COMMENT '味觉分',
  `package_score` double DEFAULT NULL COMMENT '包装分',
  `main_score` double DEFAULT NULL COMMENT '总分',
  `desc` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评价内容',
  `shop_reply` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '店家回复',
  `has_image` tinyint(1) DEFAULT NULL COMMENT '有图？',
  `createtime` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`evaluate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='店家评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_evaluate`
--

LOCK TABLES `shop_evaluate` WRITE;
/*!40000 ALTER TABLE `shop_evaluate` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_evaluate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_with_category`
--

DROP TABLE IF EXISTS `shop_with_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_with_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id_f` bigint(20) DEFAULT NULL COMMENT '店铺id',
  `shop_category_id_f` bigint(20) DEFAULT NULL COMMENT '分类id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='店铺与分类关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_with_category`
--

LOCK TABLES `shop_with_category` WRITE;
/*!40000 ALTER TABLE `shop_with_category` DISABLE KEYS */;
INSERT INTO `shop_with_category` VALUES (1,1,1),(2,1,2),(3,2,2),(4,3,2);
/*!40000 ALTER TABLE `shop_with_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户手机',
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户密码',
  `salt` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码盐',
  `createtime` date NOT NULL COMMENT '创建时间',
  `current_ip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '最近登录ip',
  `state` tinyint(1) DEFAULT NULL COMMENT '用户状态',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_username_uindex` (`username`),
  UNIQUE KEY `user_phone_uindex` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'ranruipeng','1234554321','123456',NULL,'2018-09-10','127.0.0.1',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_address`
--

DROP TABLE IF EXISTS `user_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_address` (
  `user_address_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户地址id',
  `user_id_f` bigint(20) DEFAULT NULL COMMENT '用户id',
  `address` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`user_address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_address`
--

LOCK TABLES `user_address` WRITE;
/*!40000 ALTER TABLE `user_address` DISABLE KEYS */;
INSERT INTO `user_address` VALUES (1,1,'新疆吐鲁番歪把子村');
/*!40000 ALTER TABLE `user_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_extra`
--

DROP TABLE IF EXISTS `user_extra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_extra` (
  `user_extra_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '补充信息id',
  `user_id_f` bigint(20) NOT NULL COMMENT '用户id',
  `qq` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户qq',
  `weixin` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '微信',
  `real_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '真实姓名',
  `idcard_num` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  PRIMARY KEY (`user_extra_id`),
  UNIQUE KEY `user_extra_user_id_uindex` (`user_id_f`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户补充信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_extra`
--

LOCK TABLES `user_extra` WRITE;
/*!40000 ALTER TABLE `user_extra` DISABLE KEYS */;
INSERT INTO `user_extra` VALUES (1,1,'12345678','weee','冉瑞鹏','23435345436634534');
/*!40000 ALTER TABLE `user_extra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_with_role`
--

DROP TABLE IF EXISTS `user_with_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_with_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id_f` bigint(20) NOT NULL COMMENT '用户id',
  `role_id_f` bigint(20) NOT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户权限关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_with_role`
--

LOCK TABLES `user_with_role` WRITE;
/*!40000 ALTER TABLE `user_with_role` DISABLE KEYS */;
INSERT INTO `user_with_role` VALUES (1,1,1),(2,1,2);
/*!40000 ALTER TABLE `user_with_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-17 20:33:39
