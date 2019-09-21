/*
Navicat MySQL Data Transfer

Source Server         : local xampp 1.5.4
Source Server Version : 50024
Source Host           : localhost:3306
Source Database       : dbfitnes

Target Server Type    : MYSQL
Target Server Version : 50024
File Encoding         : 65001

Date: 2016-03-12 10:47:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `absensi`
-- ----------------------------
DROP TABLE IF EXISTS `absensi`;
CREATE TABLE `absensi` (
  `id` int(5) NOT NULL auto_increment,
  `id_member` varchar(30) default NULL,
  `tgl` date default NULL,
  `kd_waktu` varchar(10) default NULL,
  `jam_masuk` time default NULL,
  `jam_pulang` time default NULL,
  `counter` int(6) default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of absensi
-- ----------------------------
INSERT INTO `absensi` VALUES ('1', 'ewcp0002', '2013-03-06', 'Rabu', '13:35:32', '13:35:39', '1');
INSERT INTO `absensi` VALUES ('3', 'ewcp0005', '2013-03-06', 'Rabu', '13:36:45', null, '2');
INSERT INTO `absensi` VALUES ('4', 'EWCP0002', '2013-06-26', 'Rabu', '11:30:20', null, '3');
INSERT INTO `absensi` VALUES ('5', 'ewcp0002', '2013-09-03', 'Selasa', '17:46:27', null, '4');
INSERT INTO `absensi` VALUES ('6', 'EWCP0006', '2016-02-12', 'Jumat', '19:29:20', '19:30:12', '8');
INSERT INTO `absensi` VALUES ('7', 'EWCP0003', '2016-02-12', 'Jumat', '19:31:11', null, '9');
INSERT INTO `absensi` VALUES ('8', 'EWCP0005', '2016-02-12', 'Jumat', '19:36:52', '19:37:00', '11');
INSERT INTO `absensi` VALUES ('9', 'ewcp0002', '2016-03-10', 'Kamis', '05:41:43', '05:44:05', '16');
INSERT INTO `absensi` VALUES ('10', 'ewcp0003', '2016-03-10', 'Kamis', '05:43:12', '05:44:21', '17');
INSERT INTO `absensi` VALUES ('11', 'ewcp0006', '2016-03-10', 'Kamis', '05:43:34', null, '14');
INSERT INTO `absensi` VALUES ('12', 'ewcp0005', '2016-03-10', 'Kamis', '05:43:54', null, '15');
INSERT INTO `absensi` VALUES ('13', 'ewcp0003', '2016-03-11', 'Jumat', '10:11:15', '14:51:49', '26');
INSERT INTO `absensi` VALUES ('14', 'ewcp0006', '2016-03-11', 'Jumat', '10:11:26', '14:51:59', '27');
INSERT INTO `absensi` VALUES ('15', 'ewcp0005', '2016-03-11', 'Jumat', '14:10:06', '14:58:54', '28');
INSERT INTO `absensi` VALUES ('16', 'ewcp0004', '2016-03-11', 'Jumat', '14:50:45', null, '24');
INSERT INTO `absensi` VALUES ('17', 'ewcp0002', '2016-03-11', 'Jumat', '15:02:54', '15:03:19', '30');
INSERT INTO `absensi` VALUES ('18', 'ewcp0007', '2016-03-11', 'Jumat', '15:10:30', '15:10:48', '32');

-- ----------------------------
-- Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama` varchar(70) NOT NULL,
  `level` varchar(5) NOT NULL,
  PRIMARY KEY  (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('21232f297a57a5a743894a0e4a801fc3', '21232f297a57a5a743894a0e4a801fc3', 'administrator', 'user');
INSERT INTO `account` VALUES ('19984dcaea13176bbb694f62ba6b5b35', '19984dcaea13176bbb694f62ba6b5b35', 'andrianext', 'admin');
INSERT INTO `account` VALUES ('ee11cbb19052e40b07aac0ca060c23ee', 'ee11cbb19052e40b07aac0ca060c23ee', 'user', 'user');
INSERT INTO `account` VALUES ('9a6c373507028ddf22f562af5d61b56f', '', 'ewcadministrator', 'admin');
INSERT INTO `account` VALUES ('57ac516373518c4d30e5fbdd805ea51d', 'c03ef18feb1826d59970b9d53983abc0', 'Prasetyo AW,SE', 'admin');

-- ----------------------------
-- Table structure for `class`
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `id_class` int(20) NOT NULL auto_increment,
  `nama_class` varchar(30) collate latin1_general_ci default NULL,
  `id_member` varchar(30) collate latin1_general_ci default NULL,
  `nama` varchar(30) collate latin1_general_ci NOT NULL,
  `jeniskel` varchar(30) collate latin1_general_ci NOT NULL,
  `alamat` varchar(60) collate latin1_general_ci NOT NULL,
  `tanggal` date default NULL,
  `jam_masuk` time default NULL,
  PRIMARY KEY  (`id_class`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('1', 'AEROBIC MIC', 'EWCP0001', 'AMIN', 'Laki-laki', 'PEKALONGAN', '2013-01-31', '20:31:15');
INSERT INTO `class` VALUES ('2', 'Perempuan', 'EWCP0002', 'PUTRI', 'Perempuan', 'BATANG', '2013-01-31', '20:32:42');
INSERT INTO `class` VALUES ('3', 'KICK\'N PUNCH', 'EWCP0003', 'JONH', 'Laki-laki', 'PEKALONGAN', '2013-01-31', '20:34:00');
INSERT INTO `class` VALUES ('4', 'Laki-laki', 'EWCP0004', '', '', '', '2013-01-31', '20:34:36');
INSERT INTO `class` VALUES ('5', 'AEROBIC MIC', 'EWCP0001', '', '', '', '2013-01-31', '20:35:25');
INSERT INTO `class` VALUES ('6', 'anan', 'nnnannann', 'asn', 'sdn', 'sdns', '2013-01-24', '15:00:00');
INSERT INTO `class` VALUES ('7', 'WEIGHT TRAINING', 'EWCP0005', 'TUKIYEM', 'Perempuan', 'PEKALONGAN', '2013-01-31', '20:39:32');
INSERT INTO `class` VALUES ('8', 'BODY PRESS', 'EWCP0002', 'PUTRI', 'Perempuan', 'BATANG', '2013-02-04', '18:42:55');
INSERT INTO `class` VALUES ('9', 'BODY PRESS', 'EWCP0007', 'Ander', 'Laki-laki', 'pekalongan', '2016-03-11', '15:09:16');

-- ----------------------------
-- Table structure for `golongan`
-- ----------------------------
DROP TABLE IF EXISTS `golongan`;
CREATE TABLE `golongan` (
  `id_golongan` varchar(10) NOT NULL,
  `nama_golongan` varchar(50) NOT NULL,
  `biaya` double(50,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of golongan
-- ----------------------------
INSERT INTO `golongan` VALUES ('GL.0001', 'umum 1 bulan', '350000');
INSERT INTO `golongan` VALUES ('GL.0002', 'SINGLE PIF 280  12', '2800000');
INSERT INTO `golongan` VALUES ('GL.0003', 'SINGLE EFT 250', '250000');
INSERT INTO `golongan` VALUES ('GL.0004', 'Standar 1 Bulan', '500000');

-- ----------------------------
-- Table structure for `guest`
-- ----------------------------
DROP TABLE IF EXISTS `guest`;
CREATE TABLE `guest` (
  `inc` int(30) NOT NULL auto_increment,
  `nama` varchar(30) collate latin1_general_ci NOT NULL,
  `room` varchar(20) collate latin1_general_ci NOT NULL,
  `alamat` varchar(50) collate latin1_general_ci NOT NULL,
  `telepon` varchar(20) collate latin1_general_ci NOT NULL,
  `tgl_masuk` date NOT NULL,
  `jam` time NOT NULL,
  PRIMARY KEY  (`inc`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of guest
-- ----------------------------
INSERT INTO `guest` VALUES ('1', 'amin suparman', '3 A', 'BOJONG', '87968000', '2013-01-20', '12:49:23');
INSERT INTO `guest` VALUES ('2', 'Dini embun pagi', '3 C', 'Pekalongan', '07967890000', '2013-01-20', '13:15:03');
INSERT INTO `guest` VALUES ('3', 'ABC', 'A1', 'PKl', '08808080', '2016-03-11', '15:11:13');

-- ----------------------------
-- Table structure for `instruktur`
-- ----------------------------
DROP TABLE IF EXISTS `instruktur`;
CREATE TABLE `instruktur` (
  `id_instruktur` varchar(20) NOT NULL,
  `nama_instruktur` varchar(50) NOT NULL,
  `alamat_instruktur` varchar(50) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `status_instruktur` varchar(50) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  PRIMARY KEY  (`id_instruktur`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of instruktur
-- ----------------------------
INSERT INTO `instruktur` VALUES ('Ins.0001', 'p. handayani', 'Jl. pelan pelan banyak anak kecil', 'pekalongan barat', '2012-12-04', 'Laki-laki', '089897', 'aktif', 'DSCF1138.JPG');
INSERT INTO `instruktur` VALUES ('Ins.0002', 'hartonoo', 'waru', 'pekalongan', '2012-12-03', 'Perempuan', '089897000', 'aktif', 'Amd.jpg');
INSERT INTO `instruktur` VALUES ('Ins.0003', 'slamet', 'pekalongan', 'pekalongan', '2012-12-04', 'Laki-laki', '079898989', 'aktif', '5.jpg');
INSERT INTO `instruktur` VALUES ('Ins.0004', 'Budi A', 'Pekalongan', 'Pekalongan', '1990-03-08', 'Laki-laki', '0896089898', 'aktif', 'alien.png');

-- ----------------------------
-- Table structure for `member`
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id_member` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `status` varchar(50) NOT NULL,
  `tgl_tempo` date NOT NULL,
  `gambar` varchar(50) NOT NULL,
  PRIMARY KEY  (`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('EWCP0001', 'AMIN', 'PEKALONGAN', 'PEKALONGAN', '1983-01-19', 'Laki-laki', '08567899000', 'aktif', '2016-04-08', 'edit2.png');
INSERT INTO `member` VALUES ('EWCP0002', 'PUTRI', 'BATANG', 'BATANG', '1970-05-12', 'Perempuan', '089612836', 'aktif', '2016-03-31', 'Android Ade2.png');
INSERT INTO `member` VALUES ('EWCP0003', 'JONH', 'PEKALONGAN', 'PEKALONGAN', '1986-04-08', 'Laki-laki', '0215454478974', 'aktif', '2016-03-31', 'member_default.jpg');
INSERT INTO `member` VALUES ('EWCP0004', 'HANDOKO', 'PEKALONGAN', 'KLATEN', '1970-01-05', 'Laki-laki', '0856429338335', 'aktif', '2016-04-30', 'handoko.jpg');
INSERT INTO `member` VALUES ('EWCP0005', 'TUKIYEM', 'PEKALONGAN', 'PEKALONGAN', '1994-01-12', 'Perempuan', '089781628', 'aktif', '2016-03-31', 'favicon-touch.png');
INSERT INTO `member` VALUES ('EWCP0006', 'mmmm', 'mmmm', 'mmmm', '2013-02-06', 'Laki-laki', '08767', 'aktif', '2016-03-31', 'barcode.png');
INSERT INTO `member` VALUES ('EWCP0007', 'Ander', 'pekalongan', 'pekalongan', '1998-03-17', 'Laki-laki', '0898989', 'aktif', '2016-04-30', 'member_default.jpg');

-- ----------------------------
-- Table structure for `pembayaran`
-- ----------------------------
DROP TABLE IF EXISTS `pembayaran`;
CREATE TABLE `pembayaran` (
  `no_transaksi` varchar(20) NOT NULL,
  `id_member` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nama_golongan` varchar(50) NOT NULL,
  `tanggal_pembayaran` date NOT NULL,
  `tanggal_jatuh_tempo` date NOT NULL,
  `total_bayar` double(30,0) NOT NULL,
  PRIMARY KEY  (`no_transaksi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pembayaran
-- ----------------------------
INSERT INTO `pembayaran` VALUES ('TRS-0001', 'EWCP0001', 'AMIN', 'umum 2 Bulan', '2013-01-18', '2013-03-18', '605000');
INSERT INTO `pembayaran` VALUES ('TRS-0002', 'EWCP0002', 'PUTRI', 'umum 1 bulan', '2013-01-18', '2013-02-18', '355000');
INSERT INTO `pembayaran` VALUES ('TRS-0003', 'EWCP0003', 'JONH', 'umum 1 bulan', '2013-01-18', '2013-02-18', '355000');
INSERT INTO `pembayaran` VALUES ('TRS-0004', 'EWCP0004', 'HANDOKO', 'SINGLE PIF 280  12', '2013-01-18', '2014-01-18', '2800000');
INSERT INTO `pembayaran` VALUES ('TRS-0005', 'EWCP0005', 'TUKIYEM', 'SINGLE PIF 280  12', '2013-01-20', '2014-01-23', '2800000');
INSERT INTO `pembayaran` VALUES ('TRS-0006', 'EWCP0006', 'mmmm', 'SINGLE PIF 280  12', '2013-02-04', '2013-05-15', '2830000');
INSERT INTO `pembayaran` VALUES ('TRS-0007', 'EWCP0003', 'JONH', 'umum 1 bulan', '2016-02-12', '2016-02-12', '350000');
INSERT INTO `pembayaran` VALUES ('TRS-0008', 'EWCP0002', 'PUTRI', 'umum 1 bulan', '2016-02-12', '2016-02-12', '350000');
INSERT INTO `pembayaran` VALUES ('TRS-0009', 'EWCP0002', 'PUTRI', 'umum 1 bulan', '2016-02-12', '2016-02-01', '350000');
INSERT INTO `pembayaran` VALUES ('TRS-0010', 'EWCP0004', 'HANDOKO', 'SINGLE EFT 250', '2016-02-12', '2016-02-12', '250000');
INSERT INTO `pembayaran` VALUES ('TRS-0011', 'EWCP0006', 'mmmm', 'umum 1 bulan', '2016-02-12', '2016-02-11', '350000');
INSERT INTO `pembayaran` VALUES ('TRS-0012', 'EWCP0006', 'mmmm', 'umum 1 bulan', '2016-03-10', '2016-03-31', '350000');
INSERT INTO `pembayaran` VALUES ('TRS-0013', 'EWCP0005', 'TUKIYEM', 'umum 1 bulan', '2016-03-10', '2016-03-31', '350000');
INSERT INTO `pembayaran` VALUES ('TRS-0014', 'EWCP0002', 'PUTRI', 'umum 1 bulan', '2016-03-10', '2016-03-31', '350000');
INSERT INTO `pembayaran` VALUES ('TRS-0015', 'EWCP0003', 'JONH', 'umum 1 bulan', '2016-03-10', '2016-03-31', '350000');
INSERT INTO `pembayaran` VALUES ('TRS-0016', 'EWCP0004', 'HANDOKO', 'umum 1 bulan', '2016-03-11', '2016-04-30', '350000');
INSERT INTO `pembayaran` VALUES ('TRS-0017', 'EWCP0007', 'Ander', 'Standar 1 Bulan', '2016-03-11', '2016-04-30', '505000');
INSERT INTO `pembayaran` VALUES ('TRS-0018', 'EWCP0001', 'AMIN', 'umum 1 bulan', '2016-03-11', '2016-04-08', '350000');

-- ----------------------------
-- Table structure for `registrasi`
-- ----------------------------
DROP TABLE IF EXISTS `registrasi`;
CREATE TABLE `registrasi` (
  `no_registrasi` varchar(20) NOT NULL,
  `id_member` varchar(20) NOT NULL,
  `nama_member` varchar(50) NOT NULL,
  `nama_golongan` varchar(40) NOT NULL,
  `tanggal_pendaftaran` date NOT NULL,
  `biaya_pendaftaran` double(30,0) NOT NULL,
  `biaya_member` double(30,0) NOT NULL,
  PRIMARY KEY  (`no_registrasi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of registrasi
-- ----------------------------
INSERT INTO `registrasi` VALUES ('REG-0001', 'EWCP0001', 'AMIN', 'umum 2 Bulan', '2013-01-18', '5000', '600000');
INSERT INTO `registrasi` VALUES ('REG-0002', 'EWCP0002', 'PUTRI', 'umum 1 bulan', '2013-01-18', '5000', '350000');
INSERT INTO `registrasi` VALUES ('REG-0003', 'EWCP0003', 'JONH', 'umum 1 bulan', '2013-01-18', '5000', '350000');
INSERT INTO `registrasi` VALUES ('REG-0004', 'EWCP0004', 'HANDOKO', 'SINGLE PIF 280  12', '2013-01-18', '0', '2800000');
INSERT INTO `registrasi` VALUES ('REG-0005', 'EWCP0005', 'TUKIYEM', 'SINGLE PIF 280  12', '2013-01-20', '0', '2800000');
INSERT INTO `registrasi` VALUES ('REG-0006', 'EWCP0006', 'mmmm', 'SINGLE PIF 280  12', '2013-02-04', '30000', '2800000');
INSERT INTO `registrasi` VALUES ('REG-0007', 'EWCP0007', 'Ander', 'Standar 1 Bulan', '2016-03-11', '5000', '500000');

-- ----------------------------
-- Table structure for `umum`
-- ----------------------------
DROP TABLE IF EXISTS `umum`;
CREATE TABLE `umum` (
  `no_transaksi` varchar(30) NOT NULL,
  `no_identitas` varchar(30) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `jenis_kelamin` varchar(30) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `pekerjaan` varchar(30) NOT NULL,
  `no_telepon` varchar(30) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `jumlah_bayar` double(30,0) NOT NULL,
  PRIMARY KEY  (`no_transaksi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of umum
-- ----------------------------
INSERT INTO `umum` VALUES ('trsU.0001', '12313018', 'Amat Marzuki', 'Laki-laki', 'pekalongan', '1983-01-19', 'peklaongan', 'pelajar', '0888080', '2013-01-20', '40000');
INSERT INTO `umum` VALUES ('trsU.0002', '13183798', 'ADMINI', 'Perempuan', 'BATANG', '1997-03-06', 'pkl', 'pengusaha', '0898987', '2016-03-11', '50000');
