# ************************************************************
# Sequel Pro SQL dump
# Version 4135
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.7.15)
# Database: ci_akuntansi
# Generation Time: 2016-12-29 04:21:06 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table ci_sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ci_sessions`;

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`)
VALUES
	('d29454d56ba0f47773741550a8649db5','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36',1482985161,'a:6:{s:9:\"user_data\";s:0:\"\";s:9:\"logged_in\";s:22:\"aingLoginAkuntansiYeuh\";s:8:\"username\";s:5:\"admin\";s:12:\"nama_lengkap\";s:13:\"Administrator\";s:5:\"level\";s:11:\"super admin\";s:4:\"foto\";s:7:\"252.jpg\";}');

/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jurnal_penyesuaian
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jurnal_penyesuaian`;

CREATE TABLE `jurnal_penyesuaian` (
  `no_jurnal` varchar(20) NOT NULL,
  `tgl_jurnal` date DEFAULT NULL,
  `no_rek` char(10) NOT NULL,
  `debet` int(11) DEFAULT NULL,
  `kredit` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT '',
  `tgl_insert` datetime DEFAULT NULL,
  PRIMARY KEY (`no_jurnal`,`no_rek`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `jurnal_penyesuaian` WRITE;
/*!40000 ALTER TABLE `jurnal_penyesuaian` DISABLE KEYS */;

INSERT INTO `jurnal_penyesuaian` (`no_jurnal`, `tgl_jurnal`, `no_rek`, `debet`, `kredit`, `username`, `tgl_insert`)
VALUES
	('041300001','2013-04-30','1102',250000,0,'admin','2013-04-11 07:04:32'),
	('041300001','2013-04-30','1103',0,300000,'admin','2013-04-11 07:04:48'),
	('041300001','2013-04-30','1104',0,600000,'admin','2013-04-12 03:04:41'),
	('041300001','2013-04-30','2102',0,200000,'admin','2013-04-11 07:04:31'),
	('041300001','2013-04-30','4101',0,250000,'admin','2013-04-11 07:04:45'),
	('041300001','2013-04-30','5101',200000,0,'admin','2013-04-11 07:04:03'),
	('041300001','2013-04-30','5102',300000,0,'admin','2013-04-11 07:04:34'),
	('041300001','2013-04-30','5104',600000,0,'admin','2013-04-12 03:04:49');

/*!40000 ALTER TABLE `jurnal_penyesuaian` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jurnal_umum
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jurnal_umum`;

CREATE TABLE `jurnal_umum` (
  `no_jurnal` varchar(20) NOT NULL,
  `tgl_jurnal` date DEFAULT NULL,
  `ket` varchar(255) DEFAULT '',
  `no_bukti` varchar(100) DEFAULT '',
  `no_rek` char(10) NOT NULL,
  `debet` int(11) DEFAULT NULL,
  `kredit` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT '',
  `tgl_insert` datetime DEFAULT NULL,
  PRIMARY KEY (`no_jurnal`,`no_rek`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `jurnal_umum` WRITE;
/*!40000 ALTER TABLE `jurnal_umum` DISABLE KEYS */;

INSERT INTO `jurnal_umum` (`no_jurnal`, `tgl_jurnal`, `ket`, `no_bukti`, `no_rek`, `debet`, `kredit`, `username`, `tgl_insert`)
VALUES
	('041300001','2013-04-16','Pembayaran dari Klien','001','1101',4000000,0,'admin','2013-04-11 07:04:18'),
	('041300001','2013-04-16','Pembayaran dari Klien','001','1102',0,4000000,'admin','2013-04-12 03:04:11'),
	('041300002','2013-04-17','Pembayaran dari Klien','002','1102',1700000,0,'admin','2013-04-11 07:04:31'),
	('041300002','2013-04-17','Pembayaran dari Klien','002','4101',0,1700000,'admin','2013-04-11 07:04:43'),
	('041300003','2013-04-19','Biaya lain-lain','003','1101',0,200000,'admin','2013-04-11 07:04:01'),
	('041300003','2013-04-19','Biaya lain-lain','003','5103',200000,0,'admin','2013-04-11 07:04:22'),
	('041300004','2013-04-21','membayar kewajiban jatuh tempo','004','1101',0,2600000,'admin','2013-04-11 07:04:01'),
	('041300004','2013-04-21','membayar kewajiban jatuh tempo','004','2101',2600000,0,'admin','2013-04-11 07:04:28'),
	('041300005','2013-04-22','beli perlengkapan secara kredit','005','1104',200000,0,'admin','2013-04-11 07:04:23'),
	('041300005','2013-04-22','beli perlengkapan secara kredit','005','2101',0,200000,'admin','2013-04-11 07:04:54'),
	('041300006','2013-04-23','menggunakan uang untuk keperluan pribadi','006','1101',0,2100000,'admin','2013-04-11 07:04:37'),
	('041300006','2013-04-23','menggunakan uang untuk keperluan pribadi','006','3102',2100000,0,'admin','2013-04-11 07:04:28'),
	('041300007','2013-04-25','pendapatan jasa ','007','1101',1900000,0,'admin','2013-04-11 07:04:21'),
	('041300007','2013-04-25','pendapatan jasa ','007','4101',0,1900000,'admin','2013-04-11 07:04:32'),
	('041300008','2013-04-30','Membayar gaji karyawan','008','1101',0,1800000,'admin','2013-04-11 07:04:03'),
	('041300008','2013-04-30','Membayar gaji karyawan','008','5101',1800000,0,'admin','2013-04-11 07:04:15');

/*!40000 ALTER TABLE `jurnal_umum` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table rekening
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rekening`;

CREATE TABLE `rekening` (
  `no_rek` char(10) NOT NULL DEFAULT '',
  `induk` char(10) NOT NULL DEFAULT '0',
  `level` smallint(6) DEFAULT '0',
  `nama_rek` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`no_rek`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `rekening` WRITE;
/*!40000 ALTER TABLE `rekening` DISABLE KEYS */;

INSERT INTO `rekening` (`no_rek`, `induk`, `level`, `nama_rek`)
VALUES
	('1101','0',0,'KAS'),
	('1101.01','1101',1,'Kas Kecil'),
	('1102','0',0,'Piutang '),
	('1103','0',0,'Piutang Sewa'),
	('1104','0',0,'Perlengkapan'),
	('1201','0',0,'Tanah'),
	('2101','0',0,'Hutang'),
	('2102','0',0,'Hutang Gaji'),
	('3101','0',0,'Modal Deddy'),
	('3102','0',0,'Prive Deddy'),
	('4101','0',0,'Pendapatan Jasa'),
	('5101','0',0,'Beban Gaji'),
	('5102','0',0,'Beban Sewa'),
	('5103','0',0,'Beban Lain-lain'),
	('5104','0',0,'Beban Perlengkapan');

/*!40000 ALTER TABLE `rekening` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table saldo_awal
# ------------------------------------------------------------

DROP TABLE IF EXISTS `saldo_awal`;

CREATE TABLE `saldo_awal` (
  `periode` year(4) NOT NULL,
  `no_rek` char(10) NOT NULL,
  `debet` int(11) DEFAULT '0',
  `kredit` int(11) DEFAULT '0',
  `tgl_insert` date DEFAULT NULL,
  `username` varchar(50) DEFAULT '',
  PRIMARY KEY (`periode`,`no_rek`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `saldo_awal` WRITE;
/*!40000 ALTER TABLE `saldo_awal` DISABLE KEYS */;

INSERT INTO `saldo_awal` (`periode`, `no_rek`, `debet`, `kredit`, `tgl_insert`, `username`)
VALUES
	('2012','1101',5000000,0,'2013-04-11','admin'),
	('2012','1102',8000000,0,'2013-04-11','admin'),
	('2012','1103',1200000,0,'2013-04-11','admin'),
	('2012','1104',600000,0,'2013-04-11','admin'),
	('2012','1201',35000000,0,'2013-04-11','admin'),
	('2012','2101',0,4400000,'2013-04-11','admin'),
	('2012','2102',0,0,'2013-04-11','admin'),
	('2012','3101',0,42500000,'2013-04-11','admin'),
	('2012','3102',2100000,0,'2013-04-11','admin'),
	('2012','4101',0,7100000,'2013-04-11','admin'),
	('2012','5101',1800000,0,'2013-04-11','admin'),
	('2012','5102',0,0,'2013-04-11','admin'),
	('2012','5103',300000,0,'2013-04-11','admin'),
	('2012','5104',0,0,'2013-04-11','admin'),
	('2015','1101',20000,0,'2015-02-23','admin');

/*!40000 ALTER TABLE `saldo_awal` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `level` enum('super admin','admin','user') COLLATE latin1_general_ci DEFAULT 'user',
  `foto` varchar(50) COLLATE latin1_general_ci DEFAULT '',
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `level`, `foto`)
VALUES
	('admin','21232f297a57a5a743894a0e4a801fc3','Administrator','super admin','252.jpg'),
	('deddy','e10adc3949ba59abbe56e057f20f883e','Deddy Rusdiansyah','admin',''),
	('danish','827ccb0eea8a706c4c34a16891f84e7b','Danish Putra Pramudya','user',''),
	('aqilah','827ccb0eea8a706c4c34a16891f84e7b','Aqilah','super admin','');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
