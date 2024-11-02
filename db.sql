/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm8ji1j
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm8ji1j` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm8ji1j`;

/*Table structure for table `bangongshiguanli` */

DROP TABLE IF EXISTS `bangongshiguanli`;

CREATE TABLE `bangongshiguanli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bangongshibianhao` varchar(200) DEFAULT NULL COMMENT '办公室编号',
  `bangongshimingcheng` varchar(200) DEFAULT NULL COMMENT '办公室名称',
  `bangongshidizhi` varchar(200) DEFAULT NULL COMMENT '办公室地址',
  `buzhang` varchar(200) DEFAULT NULL COMMENT '部长',
  `bumenzhize` varchar(200) DEFAULT NULL COMMENT '部门职责',
  `gongzuobaogao` varchar(200) DEFAULT NULL COMMENT '工作报告',
  `gongzuojihua` varchar(200) DEFAULT NULL COMMENT '工作计划',
  `gongzuoshizhang` datetime DEFAULT NULL COMMENT '工作时长',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bangongshibianhao` (`bangongshibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618409674774 DEFAULT CHARSET=utf8 COMMENT='办公室管理';

/*Data for the table `bangongshiguanli` */

insert  into `bangongshiguanli`(`id`,`addtime`,`bangongshibianhao`,`bangongshimingcheng`,`bangongshidizhi`,`buzhang`,`bumenzhize`,`gongzuobaogao`,`gongzuojihua`,`gongzuoshizhang`) values (51,'2021-04-14 22:04:48','办公室编号1','办公室名称12','办公室地址12','部长12','部门职责12','工作报告12','工作计划12','2021-04-14 22:04:48'),(52,'2021-04-14 22:04:48','办公室编号2','办公室名称2','办公室地址2','部长2','部门职责2','工作报告2','工作计划2','2021-04-14 22:04:48'),(53,'2021-04-14 22:04:48','办公室编号3','办公室名称3','办公室地址3','部长3','部门职责3','工作报告3','工作计划3','2021-04-14 22:04:48'),(54,'2021-04-14 22:04:48','办公室编号4','办公室名称4','办公室地址4','部长4','部门职责4','工作报告4','工作计划4','2021-04-14 22:04:48'),(55,'2021-04-14 22:04:48','办公室编号5','办公室名称5','办公室地址5','部长5','部门职责5','工作报告5','工作计划5','2021-04-14 22:04:48'),(56,'2021-04-14 22:04:48','办公室编号6','办公室名称6','办公室地址6','部长6','部门职责6','工作报告6','工作计划6','2021-04-14 22:04:48');

/*Table structure for table `caiwuguanli` */

DROP TABLE IF EXISTS `caiwuguanli`;

CREATE TABLE `caiwuguanli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shijianleixing` varchar(200) DEFAULT NULL COMMENT '时间类型',
  `kaishishijian` date DEFAULT NULL COMMENT '开始时间',
  `jiezhishijian` date DEFAULT NULL COMMENT '截止时间',
  `guanlifeiyong` int(11) DEFAULT NULL COMMENT '管理费用',
  `renyuanfeiyong` int(11) DEFAULT NULL COMMENT '人员费用',
  `qitazhichu` int(11) DEFAULT NULL COMMENT '其它支出',
  `chouchengshouru` int(11) DEFAULT NULL COMMENT '抽成收入',
  `qitashouru` int(11) DEFAULT NULL COMMENT '其他收入',
  `lirun` varchar(200) DEFAULT NULL COMMENT '利润',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618409731949 DEFAULT CHARSET=utf8 COMMENT='财务管理';

/*Data for the table `caiwuguanli` */

insert  into `caiwuguanli`(`id`,`addtime`,`shijianleixing`,`kaishishijian`,`jiezhishijian`,`guanlifeiyong`,`renyuanfeiyong`,`qitazhichu`,`chouchengshouru`,`qitashouru`,`lirun`) values (61,'2021-04-14 22:04:48','日','2021-04-14','2021-04-14',1,1,1,1,1,'利润1'),(62,'2021-04-14 22:04:48','日','2021-04-14','2021-04-14',2,2,2,2,2,'利润2'),(63,'2021-04-14 22:04:48','日','2021-04-14','2021-04-14',322,322,322,322,322,'-322'),(64,'2021-04-14 22:04:48','日','2021-04-14','2021-04-14',4,4,4,4,4,'利润4'),(65,'2021-04-14 22:04:48','日','2021-04-14','2021-04-14',5,5,5,5,5,'利润5'),(1618409731948,'2021-04-14 22:15:31','周','2021-03-31','2021-04-02',2,2,2,2,2,'-2');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm8ji1j/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm8ji1j/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm8ji1j/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `renliziyuanguanli` */

DROP TABLE IF EXISTS `renliziyuanguanli`;

CREATE TABLE `renliziyuanguanli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhaopingangwei` varchar(200) DEFAULT NULL COMMENT '招聘岗位',
  `gangweiyaoqiu` varchar(200) DEFAULT NULL COMMENT '岗位要求',
  `gangweixingzhi` varchar(200) DEFAULT NULL COMMENT '岗位性质',
  `gongzidaiyu` longtext COMMENT '工资待遇',
  `zhiweiyaoqiu` longtext COMMENT '职位要求',
  `zhaopinrenshu` int(11) DEFAULT NULL COMMENT '招聘人数',
  `gongzuoshijian` datetime DEFAULT NULL COMMENT '工作时间',
  `shangbandidian` varchar(200) DEFAULT NULL COMMENT '上班地点',
  `toudiyouxiang` varchar(200) DEFAULT NULL COMMENT '投递邮箱',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618409651343 DEFAULT CHARSET=utf8 COMMENT='人力资源管理';

/*Data for the table `renliziyuanguanli` */

insert  into `renliziyuanguanli`(`id`,`addtime`,`zhaopingangwei`,`gangweiyaoqiu`,`gangweixingzhi`,`gongzidaiyu`,`zhiweiyaoqiu`,`zhaopinrenshu`,`gongzuoshijian`,`shangbandidian`,`toudiyouxiang`,`lianxifangshi`,`tupian`) values (41,'2021-04-14 22:04:48','招聘岗位1','岗位要求1','岗位性质1','工资待遇1','职位要求1',1,'2021-04-14 22:04:48','上班地点1','773890001@qq.com','13823888881','http://localhost:8080/ssm8ji1j/upload/renliziyuanguanli_tupian1.jpg'),(42,'2021-04-14 22:04:48','招聘岗位2','岗位要求2','岗位性质2','工资待遇2','职位要求2',2,'2021-04-14 22:04:48','上班地点2','773890002@qq.com','13823888882','http://localhost:8080/ssm8ji1j/upload/renliziyuanguanli_tupian2.jpg'),(43,'2021-04-14 22:04:48','招聘岗位3','岗位要求3','岗位性质3','工资待遇3','职位要求3',3,'2021-04-14 22:04:48','上班地点3','773890003@qq.com','13823888883','http://localhost:8080/ssm8ji1j/upload/renliziyuanguanli_tupian3.jpg'),(44,'2021-04-14 22:04:48','招聘岗位4','岗位要求4','岗位性质4','工资待遇4','职位要求4',4,'2021-04-14 22:04:48','上班地点4','773890004@qq.com','13823888884','http://localhost:8080/ssm8ji1j/upload/renliziyuanguanli_tupian4.jpg'),(46,'2021-04-14 22:04:48','招聘岗位6','岗位要求6','岗位性质6','工资待遇6','职位要求6',6,'2021-04-14 22:04:48','上班地点6','773890006@qq.com','13823888886','http://localhost:8080/ssm8ji1j/upload/renliziyuanguanli_tupian6.jpg'),(1618409651342,'2021-04-14 22:14:10','sss','sa','sas','w','we',78,'2021-04-08 00:00:00','vc','','11332434545','http://localhost:8080/ssm8ji1j/upload/1618409644301.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1618409207196,'1','yuangong','员工','g3yqb9dd2x5vlbkzwu238oud1lxvs0dz','2021-04-14 22:06:56','2021-04-14 23:06:56'),(2,1,'abo','users','管理员','lwfeki9653zhssl1l33condspf3t0ajl','2021-04-14 22:09:50','2021-04-14 23:09:51');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-14 22:04:48');

/*Table structure for table `yewuguanli` */

DROP TABLE IF EXISTS `yewuguanli`;

CREATE TABLE `yewuguanli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yewumingcheng` varchar(200) DEFAULT NULL COMMENT '业务名称',
  `yewuleixing` varchar(200) DEFAULT NULL COMMENT '业务类型',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `yewuxiangqing` longtext COMMENT '业务详情',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618409552544 DEFAULT CHARSET=utf8 COMMENT='业务管理';

/*Data for the table `yewuguanli` */

insert  into `yewuguanli`(`id`,`addtime`,`yewumingcheng`,`yewuleixing`,`dengjishijian`,`zhanghao`,`xingming`,`yewuxiangqing`,`sfsh`,`shhf`) values (21,'2021-04-14 22:04:48','业务名称11','业务类型11','2021-04-14 22:04:48','账号11','姓名11','<p>业务详情111</p>','是',''),(22,'2021-04-14 22:04:48','业务名称2','业务类型2','2021-04-14 22:04:48','账号2','姓名2','业务详情2','是',''),(24,'2021-04-14 22:04:48','业务名称4','业务类型4','2021-04-14 22:04:48','账号4','姓名4','业务详情4','是',''),(25,'2021-04-14 22:04:48','业务名称5','业务类型5','2021-04-14 22:04:48','账号5','姓名5','业务详情5','是',''),(26,'2021-04-14 22:04:48','业务名称6','业务类型6','2021-04-14 22:04:48','账号6','姓名6','业务详情6','是',''),(1618409552543,'2021-04-14 22:12:32','121312','3123','2021-04-14 22:12:23','312','131','<p>1312</p>','否','');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhiwei` varchar(200) NOT NULL COMMENT '职位',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `longitude` float DEFAULT NULL COMMENT '经度',
  `latitude` float DEFAULT NULL COMMENT '纬度',
  `fulladdress` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618409510968 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`xingbie`,`zhiwei`,`shouji`,`shenfenzheng`,`youxiang`,`touxiang`,`longitude`,`latitude`,`fulladdress`) values (11,'2021-04-14 22:04:48','员工1','1234561','姓名11','男','职位11','13823888881','440300199101010007','773890001@qq.com','http://localhost:8080/ssm8ji1j/upload/yuangong_touxiang1.jpg',116.497,39.9339,'北京市朝阳区东风镇朝阳区饮食服务旅店行业协会石佛营西里小区北院'),(13,'2021-04-14 22:04:48','员工3','123456','姓名3','男','职位3','13823888883','440300199303030003','773890003@qq.com','http://localhost:8080/ssm8ji1j/upload/yuangong_touxiang3.jpg',3,3,'宇宙银河系地球3号'),(14,'2021-04-14 22:04:48','员工4','123456','姓名4','男','职位4','13823888884','440300199404040004','773890004@qq.com','http://localhost:8080/ssm8ji1j/upload/yuangong_touxiang4.jpg',4,4,'宇宙银河系地球4号'),(15,'2021-04-14 22:04:48','员工5','123456','姓名5','男','职位5','13823888885','440300199505050005','773890005@qq.com','http://localhost:8080/ssm8ji1j/upload/yuangong_touxiang5.jpg',5,5,'宇宙银河系地球5号'),(16,'2021-04-14 22:04:48','员工6','123456','姓名6','男','职位6','13823888886','440300199606060006','773890006@qq.com','http://localhost:8080/ssm8ji1j/upload/yuangong_touxiang6.jpg',6,6,'宇宙银河系地球6号'),(1618409207196,'2021-04-14 22:06:47','1','1','1','男','1','11111111111','123456789012345678','1@qq.com','http://localhost:8080/ssm8ji1j/upload/1618409263336.jpg',111,11,'11');

/*Table structure for table `zhanwuguanli` */

DROP TABLE IF EXISTS `zhanwuguanli`;

CREATE TABLE `zhanwuguanli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cheliangbianhao` varchar(200) DEFAULT NULL COMMENT '车辆编号',
  `zhandianmingcheng` varchar(200) DEFAULT NULL COMMENT '站点名称',
  `luxian` varchar(200) DEFAULT NULL COMMENT '路线',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jingyingfanwei` varchar(200) DEFAULT NULL COMMENT '经营范围',
  `chepiaoleixing` varchar(200) DEFAULT NULL COMMENT '车票类型',
  `guanliyuangonghao` varchar(200) DEFAULT NULL COMMENT '管理员工号',
  `guanliyuanxingming` varchar(200) DEFAULT NULL COMMENT '管理员姓名',
  `chepiaoshoujia` varchar(200) DEFAULT NULL COMMENT '车票售价',
  `chepiaoshuliang` varchar(200) DEFAULT NULL COMMENT '车票数量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cheliangbianhao` (`cheliangbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618409607420 DEFAULT CHARSET=utf8 COMMENT='站务管理';

/*Data for the table `zhanwuguanli` */

insert  into `zhanwuguanli`(`id`,`addtime`,`cheliangbianhao`,`zhandianmingcheng`,`luxian`,`dizhi`,`tupian`,`jingyingfanwei`,`chepiaoleixing`,`guanliyuangonghao`,`guanliyuanxingming`,`chepiaoshoujia`,`chepiaoshuliang`) values (31,'2021-04-14 22:04:48','车辆编号12','站点名称12','路线12','地址12','http://localhost:8080/ssm8ji1j/upload/zhanwuguanli_tupian1.jpg','经营范围12','车票类型12','员工1','管理员姓名12','车票售价12','车票数量12'),(32,'2021-04-14 22:04:48','车辆编号2','站点名称2','路线2','地址2','http://localhost:8080/ssm8ji1j/upload/zhanwuguanli_tupian2.jpg','经营范围2','车票类型2','管理员工号2','管理员姓名2','车票售价2','车票数量2'),(34,'2021-04-14 22:04:48','车辆编号4','站点名称4','路线4','地址4','http://localhost:8080/ssm8ji1j/upload/zhanwuguanli_tupian4.jpg','经营范围4','车票类型4','管理员工号4','管理员姓名4','车票售价4','车票数量4'),(35,'2021-04-14 22:04:48','车辆编号5','站点名称5','路线5','地址5','http://localhost:8080/ssm8ji1j/upload/zhanwuguanli_tupian5.jpg','经营范围5','车票类型5','管理员工号5','管理员姓名5','车票售价5','车票数量5'),(36,'2021-04-14 22:04:48','车辆编号6','站点名称6','路线6','地址6','http://localhost:8080/ssm8ji1j/upload/zhanwuguanli_tupian6.jpg','经营范围6','车票类型6','管理员工号6','管理员姓名6','车票售价6','车票数量6'),(1618409607419,'2021-04-14 22:13:26','d','gf','d','fg','','d','g','员工3','h','55','55');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
