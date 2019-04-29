--主页轮播图
SET NAMES UTF8;
DROP DATABASE IF EXISTS wangzhe;
CREATE DATABASE wangzhe CHARSET=UTF8;
USE wangzhe;

DROP TABLE IF EXISTS `wangzhe_index_carousel`;
CREATE TABLE `wangzhe_index_carousel` (
  `cid` int(11) PRIMARY KEY NOT NULL auto_increment,
  `img` varchar(128) default NULL,
  `title` varchar(64) default NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

INSERT INTO `wangzhe_index_carousel` VALUES (null, 'img/gglb/daji.jpg', '轮播广告商品1');
INSERT INTO `wangzhe_index_carousel` VALUES (null, 'img/gglb/lvbu.jpg', '轮播广告商品2');
INSERT INTO `wangzhe_index_carousel` VALUES (null, 'img/gglb/zhaoyun.jpg', '轮播广告商品3');


--主页商品

DROP TABLE IF EXISTS `wangzhe_index_product`;
CREATE TABLE `wangzhe_index_product` (
  `pid` int(11) primary key NOT NULL auto_increment,
  `title` varchar(64) default NULL,
  `pic` varchar(128) default NULL,
  `price` decimal(10,2) default NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

INSERT INTO `wangzhe_index_product` VALUES (null,'天籁之音 蔡文姬Q版手办','public/img/ltx/1.jpg','168.00');
INSERT INTO `wangzhe_index_product` VALUES (null,'逍遥幻梦 庄周Q版手办','public/img/ltx/2.jpg','168.00');
INSERT INTO `wangzhe_index_product` VALUES (null,'冰雪之华 王昭君Q版手办','public/img/ltx/3.jpg','168.00');
INSERT INTO `wangzhe_index_product` VALUES (null,'天魔缭乱吕布1/8雕塑','public/img/ltx/4.jpg','168.00');
INSERT INTO `wangzhe_index_product` VALUES (null,'好运之鲤大乔浮雕手机壳','public/img/ltx/5.jpg','168.00');
INSERT INTO `wangzhe_index_product` VALUES (null,'巨无霸绕口令手机壳','public/img/ltx/6.jpg','168.00');
INSERT INTO `wangzhe_index_product` VALUES (null,'幻梦庄周立体硅胶手机壳','public/img/ltx/7.jpg','168.00');
INSERT INTO `wangzhe_index_product` VALUES (null,'牛气冲天手机壳','public/img/ltx/8.jpg','168.00');
INSERT INTO `wangzhe_index_product` VALUES (null,'红buff抱枕','public/img/ltx/9.jpg','168.00');
INSERT INTO `wangzhe_index_product` VALUES (null,'霸王别姬项羽笔记本','public/img/ltx/10.jpg','168.00');
INSERT INTO `wangzhe_index_product` VALUES (null,'甜蜜恋爱小乔周瑜徽章','public/img/ltx/11.jpg','168.00');
INSERT INTO `wangzhe_index_product` VALUES (null,'天美官方艺术典藏','public/img/ltx/12.jpg','168.00');
INSERT INTO `wangzhe_index_product` VALUES (null,'绝代智谋诸葛亮口号卫衣','public/img/ltx/13.jpg','168.00');
INSERT INTO `wangzhe_index_product` VALUES (null,'末日机甲孙尚香T恤','public/img/ltx/14.jpg','168.00');
INSERT INTO `wangzhe_index_product` VALUES (null,'白银时代鲁班帽子','public/img/ltx/15.jpg','168.00');
INSERT INTO `wangzhe_index_product` VALUES (null,'KPL&安德玛联名T恤','public/img/ltx/16.jpg','168.00');

--商品详情页

DROP TABLE IF EXISTS `wangzhe_laptop`;
CREATE TABLE `wangzhe_laptop` (
  `lid` int(11) NOT NULL auto_increment,
  `family_id` int(11) default NULL,
  `title` varchar(128) default NULL,
  `subtitle` varchar(128) default NULL,
  `price` decimal(10,2) default NULL,
  `promise` varchar(64) default NULL,
  `spec` varchar(64) default NULL,
  `lname` varchar(32) default NULL,
  `os` varchar(32) default NULL,
  `memory` varchar(32) default NULL,
  `resolution` varchar(32) default NULL,
  `video_card` varchar(32) default NULL,
  `cpu` varchar(32) default NULL,
  `video_memory` varchar(32) default NULL,
  `category` varchar(32) default NULL,
  `disk` varchar(32) default NULL,
  `details` varchar(1024) default NULL,
  `shelf_time` bigint(20) default NULL,
  `sold_count` int(11) default NULL,
  `is_onsale` tinyint(1) default NULL,
  PRIMARY KEY  (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

INSERT INTO `wangzhe_laptop` VALUES (null, null, 'Apple MacBook Air 13.3英寸笔记本 银色(Core i5 处理器/8GB内存/128GB SSD闪存 MMGF2CH/A)', '5月焕新季，领券买新机！神券满6000减600！一体成型金属机身，纤薄轻巧，长达12小时续航', '6988.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '双核i5/8GB内存/128GB闪存', 'AppleMacBook Air', 'MacOS', '8G', '1920*1080', '集成显卡', 'Intel i5低功耗版', '其它', '轻薄本', '128G固态', '<div class=\"content_tpl\"> <div class=\"formwork\">   <div class=\"formwork_img\"><br></div><div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"img/product/detail/57b15612N81dc489d.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_text\">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', '150123456789', '2968', '1');

--商品汇总

DROP TABLE IF EXISTS `wangzhe_laptop_family`;
CREATE TABLE `wangzhe_laptop_family` (
  `fid` int(11) NOT NULL auto_increment,
  `fname` varchar(32) default NULL,
  PRIMARY KEY  (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;


INSERT INTO `wangzhe_laptop_family` VALUES (null, 'AppleMacBookAir');


--商品图片
DROP TABLE IF EXISTS `wangzhe_laptop_pic`;
CREATE TABLE `wangzhe_laptop_pic` (
  `pid` int(11) NOT NULL auto_increment,
  `laptop_id` int(11) default NULL,
  `sm` varchar(128) default NULL,
  `md` varchar(128) default NULL,
  `lg` varchar(128) default NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8;


INSERT INTO `wangzhe_laptop_pic` VALUES (null, '1', 'img/product/sm/57b12a31N8f4f75a3.jpg', 'img/product/md/57b12a31N8f4f75a3.jpg', 'img/product/lg/57b12a31N8f4f75a3.jpg');


--购物车
DROP TABLE IF EXISTS `wangzhe_shoppingcart_item`;
CREATE TABLE `wangzhe_shoppingcart_item` (
  `iid` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `product_id` int(11) default NULL,
  `count` int(11) default NULL,
  `is_checked` tinyint(1) default NULL,
  PRIMARY KEY  (`iid`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xz_shoppingcart_item
-- ----------------------------
INSERT INTO `wangzhe_shoppingcart_item` VALUES (null, null, null, null, null);
INSERT INTO `wangzhe_shoppingcart_item` VALUES (null, null, null, null, null);


--用户信息
DROP TABLE IF EXISTS `wangzhe_user`;
CREATE TABLE `wangzhe_user` (
  `uid` int(11) NOT NULL auto_increment,
  `uname` varchar(32) default NULL,
  `upwd` varchar(32) default NULL,
  `email` varchar(64) default NULL,
  `phone` varchar(16) default NULL,
  `avatar` varchar(128) default NULL,
  `user_name` varchar(32) default NULL,
  `gender` int(11) default NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;


INSERT INTO `wangzhe_user` VALUES (null, null, null, null, null, null, null, null);
INSERT INTO `wangzhe_user` VALUES (null, null, null, null, null, null, null, null);
