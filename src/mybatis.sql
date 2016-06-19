/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50703
Source Host           : localhost:3306
Source Database       : mybatis

Target Server Type    : MYSQL
Target Server Version : 50703
File Encoding         : 65001

Date: 2016-06-20 00:53:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `publish_date` datetime DEFAULT NULL,
  `publish_date2` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '1', 'test_title', 'test_content', '2016-06-04 15:57:14', '2016-06-05 18:55:49');
INSERT INTO `article` VALUES ('2', '1', 'test_title_2', 'test_content_2', '2016-06-04 15:57:14', '2016-06-05 18:55:49');
INSERT INTO `article` VALUES ('3', '1', 'test_title_3', 'test_content_3', '2016-06-04 15:57:14', '2016-06-05 18:55:49');
INSERT INTO `article` VALUES ('4', '1', 'test_title_4', 'test_content_4', '2016-06-04 15:57:14', '2016-06-05 18:55:49');
INSERT INTO `article` VALUES ('6', '1', 'title', 'content', '2016-06-04 15:57:14', '2016-06-05 18:55:49');
INSERT INTO `article` VALUES ('7', '1', '倚天屠龙记', 'igz', '2016-06-05 14:49:43', '2016-06-05 18:55:49');
INSERT INTO `article` VALUES ('10', '1', '倚天屠龙记', 'igz', '2016-06-05 15:25:55', '2016-06-05 18:55:49');

-- ----------------------------
-- Table structure for `items`
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemsname` varchar(32) NOT NULL COMMENT '商品名称',
  `price` float(10,1) NOT NULL COMMENT '商品定价',
  `detail` text COMMENT '商品描述',
  `pic` varchar(64) DEFAULT NULL COMMENT '商品图片',
  `createtime` datetime NOT NULL COMMENT '生产日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES ('1', '台式机', '3000.5', '该电脑质量非常好！', null, '2015-07-07 13:28:53');
INSERT INTO `items` VALUES ('2', '笔记本', '6000.0', '笔记本性能好，质量好！', null, '2015-07-08 13:22:57');
INSERT INTO `items` VALUES ('3', '背包', '200.0', '名牌背包，容量大质量好！', null, '2015-07-10 13:25:02');
INSERT INTO `items` VALUES ('4', '相机', '8000.0', '尼康7100', null, '2016-06-09 19:49:43');
INSERT INTO `items` VALUES ('5', '粽子', '100.0', '绿野仙踪', null, '2016-06-10 13:25:34');
INSERT INTO `items` VALUES ('6', '漫步者音箱', '3000.0', '该电脑质量非常好！', null, '2015-07-07 13:28:53');
INSERT INTO `items` VALUES ('7', '美的Midea', '6000.0', '笔记本性能好，质量好！', null, '2015-07-08 13:22:57');
INSERT INTO `items` VALUES ('8', '农夫山泉', '200.0', '名牌背包，容量大质量好！', null, '2015-07-10 13:25:02');
INSERT INTO `items` VALUES ('9', '红烧牛肉面', '3000.0', '非常好吃！', null, '2015-07-07 13:28:53');
INSERT INTO `items` VALUES ('10', '苦荞茶', '6000.0', '质量好！', null, '2015-07-08 13:22:57');
INSERT INTO `items` VALUES ('11', '芦荟风味酸牛奶', '200.0', '质量好！', null, '2015-07-10 13:25:02');
INSERT INTO `items` VALUES ('12', 'OMG奥妙', '3000.0', '非常好吃！', null, '2015-07-07 13:28:53');
INSERT INTO `items` VALUES ('13', '花生油', '6000.0', '质量好！', null, '2015-07-08 13:22:57');
INSERT INTO `items` VALUES ('14', '欧莱雅洗发露', '3000.0', '非常好吃！', null, '2015-07-07 13:28:53');
INSERT INTO `items` VALUES ('15', 'msi笔记本', '6000.0', '质量好！', null, '2015-07-08 13:22:57');
INSERT INTO `items` VALUES ('16', '百雀羚', '3000.0', '非常好吃！', null, '2015-07-07 13:28:53');
INSERT INTO `items` VALUES ('17', '味全乳酸菌饮品', '6000.0', '质量好！', null, '2015-07-08 13:22:57');
INSERT INTO `items` VALUES ('18', '青岛啤酒', '200.0', '质量好！', null, '2015-07-10 13:25:02');
INSERT INTO `items` VALUES ('19', '小牛电动车', '3000.0', '非常好吃！', null, '2015-07-07 13:28:53');
INSERT INTO `items` VALUES ('20', '别克英朗', '6000.0', '质量好！', null, '2015-07-08 13:22:57');
INSERT INTO `items` VALUES ('21', 'Adidas运动鞋', '3000.0', '非常好吃！', null, '2015-07-07 13:28:53');
INSERT INTO `items` VALUES ('22', '锋利的Jquery', '6000.0', '质量好！', null, '2015-07-08 13:22:57');
INSERT INTO `items` VALUES ('23', 'Html5+css', '3000.0', '非常好吃！', null, '2015-07-07 13:28:53');
INSERT INTO `items` VALUES ('24', 'javascript权威指南', '6000.0', '质量好！', null, '2015-07-08 13:22:57');
INSERT INTO `items` VALUES ('25', '高露洁牙膏', '200.0', '质量好！', null, '2015-07-10 13:25:02');

-- ----------------------------
-- Table structure for `orderdetail`
-- ----------------------------
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL COMMENT '订单id',
  `items_id` int(11) NOT NULL COMMENT '商品id',
  `items_num` int(11) DEFAULT NULL COMMENT '商品购买数量',
  PRIMARY KEY (`id`),
  KEY `FK_orderdetail_1` (`orders_id`),
  KEY `FK_orderdetail_2` (`items_id`),
  CONSTRAINT `FK_orderdetail_1` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_orderdetail_2` FOREIGN KEY (`items_id`) REFERENCES `items` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderdetail
-- ----------------------------
INSERT INTO `orderdetail` VALUES ('1', '1', '1', '10');
INSERT INTO `orderdetail` VALUES ('2', '1', '2', '20');
INSERT INTO `orderdetail` VALUES ('3', '2', '3', '30');
INSERT INTO `orderdetail` VALUES ('4', '3', '2', '40');
INSERT INTO `orderdetail` VALUES ('5', '4', '1', '25');
INSERT INTO `orderdetail` VALUES ('6', '13', '4', '2');
INSERT INTO `orderdetail` VALUES ('7', '14', '4', '2');
INSERT INTO `orderdetail` VALUES ('8', '15', '4', '2');
INSERT INTO `orderdetail` VALUES ('9', '16', '4', '2');
INSERT INTO `orderdetail` VALUES ('10', '17', '4', '2');
INSERT INTO `orderdetail` VALUES ('11', '18', '4', '2');
INSERT INTO `orderdetail` VALUES ('16', '23', '4', '2');
INSERT INTO `orderdetail` VALUES ('17', '24', '4', '2');
INSERT INTO `orderdetail` VALUES ('18', '25', '4', '2');
INSERT INTO `orderdetail` VALUES ('19', '27', '4', '2');
INSERT INTO `orderdetail` VALUES ('20', '28', '4', '2');
INSERT INTO `orderdetail` VALUES ('21', '29', '4', '2');
INSERT INTO `orderdetail` VALUES ('22', '30', '4', '2');
INSERT INTO `orderdetail` VALUES ('23', '31', '4', '2');
INSERT INTO `orderdetail` VALUES ('24', '32', '4', '2');
INSERT INTO `orderdetail` VALUES ('25', '33', '4', '2');
INSERT INTO `orderdetail` VALUES ('26', '34', '4', '2');
INSERT INTO `orderdetail` VALUES ('27', '36', '4', '2');
INSERT INTO `orderdetail` VALUES ('28', '37', '4', '2');
INSERT INTO `orderdetail` VALUES ('29', '38', '4', '2');
INSERT INTO `orderdetail` VALUES ('30', '39', '4', '2');
INSERT INTO `orderdetail` VALUES ('31', '40', '4', '2');
INSERT INTO `orderdetail` VALUES ('32', '41', '4', '2');
INSERT INTO `orderdetail` VALUES ('33', '42', '4', '2');
INSERT INTO `orderdetail` VALUES ('34', '43', '4', '2');
INSERT INTO `orderdetail` VALUES ('35', '44', '4', '2');
INSERT INTO `orderdetail` VALUES ('36', '45', '4', '2');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '下单用户id',
  `number` varchar(32) NOT NULL COMMENT '订单号',
  `createtime` datetime NOT NULL COMMENT '创建订单时间',
  `note` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `FK_orders_1` (`user_id`),
  CONSTRAINT `FK_orders_id` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '1', '1000010', '2015-06-04 13:22:35', null);
INSERT INTO `orders` VALUES ('2', '1', '1000011', '2015-07-08 13:22:41', null);
INSERT INTO `orders` VALUES ('3', '2', '1000012', '2015-07-17 14:13:23', null);
INSERT INTO `orders` VALUES ('4', '3', '1000012', '2015-07-16 18:13:23', null);
INSERT INTO `orders` VALUES ('5', '4', '1000012', '2015-07-15 19:13:23', null);
INSERT INTO `orders` VALUES ('6', '5', '1000012', '2015-07-14 17:13:23', null);
INSERT INTO `orders` VALUES ('7', '6', '1000012', '2015-07-13 16:13:23', null);
INSERT INTO `orders` VALUES ('8', '3', '3d174b37ac9043d6878b1628f23e3e31', '2016-06-10 12:52:48', '我是掃下面的手机掏宝二威马买的,便宜了好多,哈哈,是之前一个公司同事和我说的这样买真的很靠谱啊,带起好有型,人瞬间都帅了一圈，而且还是偏光的,在那个测试纸上一看还真能看见,开始我还不相信我还把别人的地');
INSERT INTO `orders` VALUES ('9', '3', 'e3a61176bc024d9485bd84b081bc8460', '2016-06-10 12:57:33', '我是掃下面的手机掏宝二威马买的,便宜了好多,哈哈,是之前一个公司同事和我说的这样买真的很靠谱啊,带起好有型,人瞬间都帅了一圈，而且还是偏光的,在那个测试纸上一看还真能看见,开始我还不相信我还把别人的地');
INSERT INTO `orders` VALUES ('10', '3', '94d64bef2a9345619873bd7a4b443c0d', '2016-06-10 13:05:34', '我是掃下面的手机掏宝二威马买的,便宜了好多,哈哈,是之前一个公司同事和我说的这样买真的很靠谱啊,带起好有型,人瞬间都帅了一圈，而且还是偏光的,在那个测试纸上一看还真能看见,开始我还不相信我还把别人的地');
INSERT INTO `orders` VALUES ('11', '3', 'b89f13055b9941d8bbd859ee4262b7e5', '2016-06-10 13:07:40', '我是掃下面的手机掏宝二威马买的,便宜了好多,哈哈,是之前一个公司同事和我说的这样买真的很靠谱啊,带起好有型,人瞬间都帅了一圈，而且还是偏光的,在那个测试纸上一看还真能看见,开始我还不相信我还把别人的地');
INSERT INTO `orders` VALUES ('12', '3', '020a8c22796741f4a3cee153adefb46c', '2016-06-10 13:08:02', '我是掃下面的手机掏宝二威马买的,便宜了好多,哈哈,是之前一个公司同事和我说的这样买真的很靠谱啊,带起好有型,人瞬间都帅了一圈，而且还是偏光的,在那个测试纸上一看还真能看见,开始我还不相信我还把别人的地');
INSERT INTO `orders` VALUES ('13', '3', '57bf5d0048254201bd65b26e6c8815bc', '2016-06-10 13:53:05', '我是掃下面的手机掏宝二威马买的');
INSERT INTO `orders` VALUES ('14', '3', '343bdcd79a2b4f8ca3cf88b8856e1ef3', '2016-06-10 14:03:29', '我是掃下面的手机掏宝二威马买的');
INSERT INTO `orders` VALUES ('15', '3', '2d38e6097b03437f910a72151d041fe2', '2016-06-11 14:26:49', '我是掃下面的手机掏宝二威马买的');
INSERT INTO `orders` VALUES ('16', '3', '0d613359607d4fcb96e0472eb3e07d28', '2016-06-11 22:07:27', '我是掃下面的手机掏宝二威马买的');
INSERT INTO `orders` VALUES ('17', '3', 'f943d18446a645088b610c571474eee5', '2016-06-11 22:08:22', '我是掃下面的手机掏宝二威马买的');
INSERT INTO `orders` VALUES ('18', '3', 'f4b782792f9e411a8405b5add21a131f', '2016-06-11 22:37:00', '我是掃下面的手机掏宝二威马买的');
INSERT INTO `orders` VALUES ('23', '3', '439de2f619d0472f853dafa45066cd26', '2016-06-11 22:53:50', '我是掃下面的手机掏宝二威马买的');
INSERT INTO `orders` VALUES ('24', '3', '6d46c0f20d66425e9ec3df214ac27156', '2016-06-11 22:54:14', '我是掃下面的手机掏宝二威马买的');
INSERT INTO `orders` VALUES ('25', '3', '1455edd11be4490c95fc17bcc6e7fd7f', '2016-06-11 22:55:37', '我是掃下面的手机掏宝二威马买的');
INSERT INTO `orders` VALUES ('26', '3', '0e1c9565da3c4536bdc89ff32cf489d1', '2016-06-11 23:00:01', '我是掃下面的手机掏宝二威马买的');
INSERT INTO `orders` VALUES ('27', '3', 'd20efc5e54164f0aafd6350e7abf9dc8', '2016-06-13 22:05:33', '我是掃下面的手机掏宝二威马买的');
INSERT INTO `orders` VALUES ('28', '3', '5ad21b7eb59646b19e2922301ed942b4', '2016-06-18 23:55:37', '我是掃下面的手机掏宝二威马买的');
INSERT INTO `orders` VALUES ('29', '3', 'a3aee9bc02fd42e48b58e43741e3bb98', '2016-06-18 23:59:52', '我是掃下面的手机掏宝二威马买的');
INSERT INTO `orders` VALUES ('30', '3', 'f1dda36109c14f88bb59e7d1ed852405', '2016-06-19 00:02:12', '我是掃下面的手机掏宝二威马买的');
INSERT INTO `orders` VALUES ('31', '3', 'e046a546356f42b89410edef2f23c493', '2016-06-19 00:27:37', '我是掃下面的手机掏宝二威马买的');
INSERT INTO `orders` VALUES ('32', '3', 'eae2b447254e424bbc81b6c9497ab076', '2016-06-19 00:34:54', '我是掃下面的手机掏宝二威马买的');
INSERT INTO `orders` VALUES ('33', '3', 'ac38d746d9b24f538c8f4ec9e05fca95', '2016-06-19 00:37:24', '我是掃下面的手机掏宝二威马买的');
INSERT INTO `orders` VALUES ('34', '3', 'd7883f5e8ecd41f595483cee367e95d8', '2016-06-19 00:37:37', '我是掃下面的手机掏宝二威马买的');
INSERT INTO `orders` VALUES ('36', '3', 'c6b34b7a3d9a43c19c465eab06b9729d', '2016-06-19 00:41:39', '我是掃下面的手机掏宝二威马买的');
INSERT INTO `orders` VALUES ('37', '3', 'ad0c3db3ff774fcaa291fe0cfc9be64c', '2016-06-20 00:27:58', 'springmvc/spring/mybatis 整合');
INSERT INTO `orders` VALUES ('38', '3', 'e9cb12d9d1af4d88bee02d2659b20a03', '2016-06-20 00:30:17', 'springmvc/spring/mybatis 整合');
INSERT INTO `orders` VALUES ('39', '3', '34f8aa9ebc1145a188ce1bdaae68e9df', '2016-06-20 00:31:16', 'springmvc/spring/mybatis 整合');
INSERT INTO `orders` VALUES ('40', '3', '47a96260c2cf4663aa8ab348791496a4', '2016-06-20 00:37:34', 'springmvc/spring/mybatis 整合');
INSERT INTO `orders` VALUES ('41', '3', '27d4f133d7464f8eb66e38cfd25c376c', '2016-06-20 00:40:32', 'springmvc/spring/mybatis 整合');
INSERT INTO `orders` VALUES ('42', '3', 'be8bf6a9d61940d9a30bdcdedb33b891', '2016-06-20 00:41:07', 'springmvc/spring/mybatis 整合');
INSERT INTO `orders` VALUES ('43', '3', '3b56a65448804492a8054e211cfd9e6d', '2016-06-20 00:43:49', 'springmvc/spring/mybatis 整合');
INSERT INTO `orders` VALUES ('44', '3', '0d5b4845a867424086388440c1243545', '2016-06-20 00:44:29', 'springmvc/spring/mybatis 整合');
INSERT INTO `orders` VALUES ('45', '3', '654a294b4a2746858937a2c883b0ded4', '2016-06-20 00:45:42', 'springmvc/spring/mybatis 整合');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL COMMENT '用户名称',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `address` varchar(256) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '王五', '2016-06-08', '2', null);
INSERT INTO `t_user` VALUES ('2', '张三', '2014-07-10', '1', '北京市');
INSERT INTO `t_user` VALUES ('3', '张小明', null, '1', '河南郑州');
INSERT INTO `t_user` VALUES ('4', '陈小明', null, '1', '河南郑州');
INSERT INTO `t_user` VALUES ('5', '张三丰', null, '1', '河南郑州');
INSERT INTO `t_user` VALUES ('6', '张无忌', null, '1', '河南郑州');
INSERT INTO `t_user` VALUES ('7', '王五2', '2016-06-09', null, null);
INSERT INTO `t_user` VALUES ('8', '小A', '2015-06-27', '2', '北京');
INSERT INTO `t_user` VALUES ('9', '小B', '2015-06-27', '2', '北京');
INSERT INTO `t_user` VALUES ('10', '小C', '2015-06-27', '1', '北京');
INSERT INTO `t_user` VALUES ('11', '小D', '2015-06-27', '2', '北京');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '孤傲苍狼', '27');
INSERT INTO `users` VALUES ('2', '白虎神皇', '27');
INSERT INTO `users` VALUES ('34', 'jack1', '56');
INSERT INTO `users` VALUES ('35', 'jack1', '57');
INSERT INTO `users` VALUES ('36', 'jack1', '58');
INSERT INTO `users` VALUES ('37', 'jack1', '59');
INSERT INTO `users` VALUES ('38', 'jack1', '60');
INSERT INTO `users` VALUES ('39', 'jack1', '61');
INSERT INTO `users` VALUES ('40', 'jack1', '62');
INSERT INTO `users` VALUES ('41', 'jack1', '63');
INSERT INTO `users` VALUES ('42', 'jack1', '64');
INSERT INTO `users` VALUES ('43', 'jack1', '65');
INSERT INTO `users` VALUES ('44', 'jack1', '66');
INSERT INTO `users` VALUES ('45', 'jack1', '67');
INSERT INTO `users` VALUES ('46', 'jack1', '68');
INSERT INTO `users` VALUES ('47', 'jack1', '69');
