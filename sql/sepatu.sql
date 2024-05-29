/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.4.28-MariaDB : Database - sepatu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sepatu` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `sepatu`;

/*Table structure for table `detail_transaksi` */

DROP TABLE IF EXISTS `detail_transaksi`;

CREATE TABLE `detail_transaksi` (
  `Kode_Pesanan` char(10) NOT NULL,
  `Kode_Account` char(10) DEFAULT NULL,
  `Waktu_Pemesanan` datetime DEFAULT NULL,
  `Waktu_Pengemasan` datetime DEFAULT NULL,
  `Waktu_Pengiriman` datetime DEFAULT NULL,
  `Waktu_PesananSelesai` datetime DEFAULT NULL,
  PRIMARY KEY (`Kode_Pesanan`),
  KEY `Kode_Account` (`Kode_Account`),
  CONSTRAINT `detail_transaksi_ibfk_1` FOREIGN KEY (`Kode_Account`) REFERENCES `tabel_account` (`Kode_Account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `detail_transaksi` */

/*Table structure for table `kategori` */

DROP TABLE IF EXISTS `kategori`;

CREATE TABLE `kategori` (
  `Kode_Kategori` char(10) NOT NULL,
  `Nama_Kategori` varchar(15) DEFAULT NULL,
  `Asset` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Kode_Kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `kategori` */

insert  into `kategori`(`Kode_Kategori`,`Nama_Kategori`,`Asset`) values 
('AS00X','Atletic shoes','Atletic1.png'),
('FO00X','Formal','Formal1.png'),
('FS00X','Flatshoes','Flatshoes1.png'),
('SN00X','Sneakers','Sneakers1.png');

/*Table structure for table `pilihan_warna` */

DROP TABLE IF EXISTS `pilihan_warna`;

CREATE TABLE `pilihan_warna` (
  `Kode_PilihanWarna` varchar(10) NOT NULL,
  `Kode_Produk` char(10) DEFAULT NULL,
  `Kode_Warna` char(10) DEFAULT NULL,
  PRIMARY KEY (`Kode_PilihanWarna`),
  KEY `Kode_Produk` (`Kode_Produk`),
  KEY `Kode_Warna` (`Kode_Warna`),
  CONSTRAINT `pilihan_warna_ibfk_1` FOREIGN KEY (`Kode_Produk`) REFERENCES `tabel_sepatu` (`Kode_Produk`),
  CONSTRAINT `pilihan_warna_ibfk_2` FOREIGN KEY (`Kode_Warna`) REFERENCES `warna` (`Kode_Warna`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pilihan_warna` */

insert  into `pilihan_warna`(`Kode_PilihanWarna`,`Kode_Produk`,`Kode_Warna`) values 
('KPW001','SL001A','000000'),
('KPW002','SL001B','000000'),
('KPW003','SL001C','000000'),
('KPW004','SL001D','000000'),
('KPW005','SL001E','000000'),
('KPW006','SL001F','000000'),
('KPW007','SL001G','000000'),
('KPW008','SL001H','000000'),
('KPW009','SL001I','000000'),
('KPW010','SL001J','000000'),
('KPW011','SL001K','FFFFFF'),
('KPW012','SL001L','FFFFFF'),
('KPW013','SL001M','FFFFFF'),
('KPW014','SL001N','FFFFFF'),
('KPW015','SL001O','FFFFFF'),
('KPW016','SL001P','FFFFFF'),
('KPW017','SL001Q','FFFFFF'),
('KPW018','SL001R','FFFFFF'),
('KPW019','SL001S','FFFFFF'),
('KPW020','SL001T','FFFFFF'),
('KPW021','SL002A','F7EEDD'),
('KPW022','SL002B','F7EEDD'),
('KPW023','SL002C','F7EEDD'),
('KPW024','SL002D','F7EEDD'),
('KPW025','SL002E','F7EEDD'),
('KPW026','SL002F','FFFFFF'),
('KPW027','SL002G','FFFFFF'),
('KPW028','SL002H','FFFFFF'),
('KPW029','SL002I','FFFFFF'),
('KPW030','SL002J','FFFFFF'),
('KPW031','SL003A','8C6A5D'),
('KPW032','SL003B','8C6A5D'),
('KPW033','SL003C','8C6A5D'),
('KPW034','SL003D','8C6A5D'),
('KPW035','SL003E','8C6A5D'),
('KPW036','SL003F','8C6A5D'),
('KPW037','SL003G','8C6A5D'),
('KPW038','SL003H','8C6A5D'),
('KPW039','SL003I','8C6A5D'),
('KPW040','SL003J','8C6A5D'),
('KPW041','SL003K','8C6A5D'),
('KPW042','SL003L','8C6A5D'),
('KPW043','SL003M','8C6A5D'),
('KPW044','SL003N','8C6A5D'),
('KPW045','SL003O','8C6A5D'),
('KPW046','SL003P','8C6A5D'),
('KPW047','SL004A','9E9FA5'),
('KPW048','SL004B','9E9FA5'),
('KPW049','SL004C','9E9FA5'),
('KPW050','SL004D','9E9FA5'),
('KPW051','SL004E','9E9FA5'),
('KPW052','SL004F','FFFFFF'),
('KPW053','SL004G','FFFFFF'),
('KPW054','SL004H','FFFFFF'),
('KPW055','SL004I','FFFFFF'),
('KPW056','SL004J','FFFFFF'),
('KPW057','SL005A','000000'),
('KPW058','SL005B','000000'),
('KPW059','SL005C','000000'),
('KPW060','SL005D','000000'),
('KPW061','SL005E','000000'),
('KPW062','SL005F','8C6A5D'),
('KPW063','SL005G','8C6A5D'),
('KPW064','SL005H','8C6A5D'),
('KPW065','SL005I','8C6A5D'),
('KPW066','SL005J','8C6A5D'),
('KPW067','SL006A','000000'),
('KPW068','SL006B','000000'),
('KPW069','SL006C','000000'),
('KPW070','SL006D','000000'),
('KPW071','SL006E','000000'),
('KPW072','SL006F','000000'),
('KPW073','SL006G','000000'),
('KPW074','SL006H','000000'),
('KPW075','SL006I','000000'),
('KPW076','SL006J','000000'),
('KPW077','SL006K','000000'),
('KPW078','SL006L','000000'),
('KPW079','SL006M','000000'),
('KPW080','SL006N','000000'),
('KPW081','SL006O','000000'),
('KPW082','SL006P','000000'),
('KPW083','SL007A','8C6A5D'),
('KPW084','SL007B','8C6A5D'),
('KPW085','SL007C','8C6A5D'),
('KPW086','SL007D','8C6A5D'),
('KPW087','SL007E','8C6A5D'),
('KPW088','SL007F','000000'),
('KPW089','SL007G','000000'),
('KPW090','SL007H','000000'),
('KPW091','SL007I','000000'),
('KPW092','SL007J','000000'),
('KPW093','SL007K','8C6A5D'),
('KPW094','SL007L','8C6A5D'),
('KPW095','SL007M','8C6A5D'),
('KPW096','SL007N','8C6A5D'),
('KPW097','SL007O','8C6A5D'),
('KPW098','SL007P','8C6A5D'),
('KPW099','SL008A','8C6A5D'),
('KPW100','SL008B','8C6A5D'),
('KPW101','SL008C','8C6A5D'),
('KPW102','SL008D','8C6A5D'),
('KPW103','SL008E','8C6A5D'),
('KPW104','SL008F','8C6A5D'),
('KPW105','SL008G','8C6A5D'),
('KPW106','SL008H','8C6A5D'),
('KPW107','SL008I','FFFFFF'),
('KPW108','SL008J','FFFFFF'),
('KPW109','SL009A','FFFFFF'),
('KPW110','SL009B','FFFFFF'),
('KPW111','SL009C','FFFFFF'),
('KPW112','SL009D','FFFFFF'),
('KPW113','SL009E','FFFFFF'),
('KPW114','SL009F','FFFFFF'),
('KPW115','SL009G','FFFFFF'),
('KPW116','SL009H','FFFFFF'),
('KPW117','SL009I','FFFFFF'),
('KPW118','SL009J','000000'),
('KPW119','SL010A','000000'),
('KPW120','SL010B','000000'),
('KPW121','SL010C','000000'),
('KPW122','SL010D','000000'),
('KPW123','SL010E','000000'),
('KPW124','SL010F','000000'),
('KPW125','SL010G','000000'),
('KPW126','SL010H','000000'),
('KPW127','SL010I','000000'),
('KPW128','SL010J','000000'),
('KPW129','SL010K','000000'),
('KPW130','SL010L','FFFFFF'),
('KPW131','SL010M','FFFFFF'),
('KPW132','SL010N','FFFFFF'),
('KPW133','SL010O','FFFFFF'),
('KPW134','SL010P','FFFFFF'),
('KPW135','SL010Q','FFA500'),
('KPW136','SL010R','FFA500'),
('KPW137','SL010S','FFA500'),
('KPW138','SL010T','FFA500'),
('KPW139','SL011A','FFA500'),
('KPW140','SL011B','FFA500'),
('KPW141','SL011C','FFA500'),
('KPW142','SL011D','FFA500'),
('KPW143','SL011E','FFA500'),
('KPW144','SL011F','FFA500'),
('KPW145','SL011G','FFA500'),
('KPW146','SL011H','FFA500'),
('KPW147','SL011I','FFA500'),
('KPW148','SL011J','FFA500'),
('KPW149','SL011K','FFA500'),
('KPW150','SL011L','FFA500'),
('KPW151','SL011M','FFA500'),
('KPW152','SL011N','FFA500'),
('KPW153','SL011O','FFA500'),
('KPW154','SL011P','FFA500'),
('KPW155','SL011Q','FFA500'),
('KPW156','SL011R','9E9FA5'),
('KPW157','SL011S','9E9FA5'),
('KPW158','SL011T','9E9FA5');

/*Table structure for table `tabel_account` */

DROP TABLE IF EXISTS `tabel_account`;

CREATE TABLE `tabel_account` (
  `Kode_Account` char(10) NOT NULL,
  `Nama_Pengguna` varchar(50) DEFAULT NULL,
  `NoTelepon_Pengguna` char(15) DEFAULT NULL,
  `Email_Pengguna` varchar(30) DEFAULT NULL,
  `TanggalLahir_Pengguna` date DEFAULT NULL,
  `JenisKelamin_Pengguna` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Kode_Account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tabel_account` */

/*Table structure for table `tabel_sepatu` */

DROP TABLE IF EXISTS `tabel_sepatu`;

CREATE TABLE `tabel_sepatu` (
  `Kode_Produk` char(10) NOT NULL,
  `Kode_Kategori` char(10) DEFAULT NULL,
  `Nama_Produk` varchar(50) DEFAULT NULL,
  `Ukuran` char(5) DEFAULT NULL,
  `Gender` varchar(15) DEFAULT NULL,
  `Harga` float DEFAULT NULL,
  `Stok` int(11) DEFAULT NULL,
  `Asset` varchar(30) DEFAULT NULL,
  `Deskripsi` text DEFAULT NULL,
  PRIMARY KEY (`Kode_Produk`),
  KEY `Kode_Kategori` (`Kode_Kategori`),
  CONSTRAINT `tabel_sepatu_ibfk_1` FOREIGN KEY (`Kode_Kategori`) REFERENCES `kategori` (`Kode_Kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tabel_sepatu` */

insert  into `tabel_sepatu`(`Kode_Produk`,`Kode_Kategori`,`Nama_Produk`,`Ukuran`,`Gender`,`Harga`,`Stok`,`Asset`,`Deskripsi`) values 
('SL001A','SN00X','Celestial Cascade Sneakers','36','UNX11Y',250000,10,'Sneakers1.png','Celestial Cascade Sneakers adalah sepatu putih polos yang menghadirkan gaya klasik dengan desain minimalis sehingga cocok untuk dipakai semua gender. Terbuat dari bahan kulit sintetis berkualitas tinggi untuk bagian atasnya, dengan sol karet yang kokoh untuk kenyamanan maksimal sepanjang hari.'),
('SL001B','SN00X','Celestial Cascade Sneakers','37','UNX11Y',250000,10,'Sneakers1.png','Celestial Cascade Sneakers adalah sepatu putih polos yang menghadirkan gaya klasik dengan desain minimalis sehingga cocok untuk dipakai semua gender. Terbuat dari bahan kulit sintetis berkualitas tinggi untuk bagian atasnya, dengan sol karet yang kokoh untuk kenyamanan maksimal sepanjang hari.'),
('SL001C','SN00X','Celestial Cascade Sneakers','38','UNX11Y',250000,10,'Sneakers1.png','Celestial Cascade Sneakers adalah sepatu putih polos yang menghadirkan gaya klasik dengan desain minimalis sehingga cocok untuk dipakai semua gender. Terbuat dari bahan kulit sintetis berkualitas tinggi untuk bagian atasnya, dengan sol karet yang kokoh untuk kenyamanan maksimal sepanjang hari.'),
('SL001D','SN00X','Celestial Cascade Sneakers','39','UNX11Y',250000,10,'Sneakers1.png','Celestial Cascade Sneakers adalah sepatu putih polos yang menghadirkan gaya klasik dengan desain minimalis sehingga cocok untuk dipakai semua gender. Terbuat dari bahan kulit sintetis berkualitas tinggi untuk bagian atasnya, dengan sol karet yang kokoh untuk kenyamanan maksimal sepanjang hari.'),
('SL001E','SN00X','Celestial Cascade Sneakers','40','UNX11Y',250000,10,'Sneakers1.png','Celestial Cascade Sneakers adalah sepatu putih polos yang menghadirkan gaya klasik dengan desain minimalis sehingga cocok untuk dipakai semua gender. Terbuat dari bahan kulit sintetis berkualitas tinggi untuk bagian atasnya, dengan sol karet yang kokoh untuk kenyamanan maksimal sepanjang hari.'),
('SL001F','SN00X','Celestial Cascade Sneakers','41','UNX11Y',250000,10,'Sneakers1.png','Celestial Cascade Sneakers adalah sepatu putih polos yang menghadirkan gaya klasik dengan desain minimalis sehingga cocok untuk dipakai semua gender. Terbuat dari bahan kulit sintetis berkualitas tinggi untuk bagian atasnya, dengan sol karet yang kokoh untuk kenyamanan maksimal sepanjang hari.'),
('SL001G','SN00X','Celestial Cascade Sneakers','42','UNX11Y',250000,10,'Sneakers1.png','Celestial Cascade Sneakers adalah sepatu putih polos yang menghadirkan gaya klasik dengan desain minimalis sehingga cocok untuk dipakai semua gender. Terbuat dari bahan kulit sintetis berkualitas tinggi untuk bagian atasnya, dengan sol karet yang kokoh untuk kenyamanan maksimal sepanjang hari.'),
('SL001H','SN00X','Celestial Cascade Sneakers','43','UNX11Y',250000,10,'Sneakers1.png','Celestial Cascade Sneakers adalah sepatu putih polos yang menghadirkan gaya klasik dengan desain minimalis sehingga cocok untuk dipakai semua gender. Terbuat dari bahan kulit sintetis berkualitas tinggi untuk bagian atasnya, dengan sol karet yang kokoh untuk kenyamanan maksimal sepanjang hari.'),
('SL001I','SN00X','Celestial Cascade Sneakers','44','UNX11Y',250000,10,'Sneakers1.png','Celestial Cascade Sneakers adalah sepatu putih polos yang menghadirkan gaya klasik dengan desain minimalis sehingga cocok untuk dipakai semua gender. Terbuat dari bahan kulit sintetis berkualitas tinggi untuk bagian atasnya, dengan sol karet yang kokoh untuk kenyamanan maksimal sepanjang hari.'),
('SL001J','SN00X','Celestial Cascade Sneakers','45','UNX11Y',250000,10,'Sneakers1.png','Celestial Cascade Sneakers adalah sepatu putih polos yang menghadirkan gaya klasik dengan desain minimalis sehingga cocok untuk dipakai semua gender. Terbuat dari bahan kulit sintetis berkualitas tinggi untuk bagian atasnya, dengan sol karet yang kokoh untuk kenyamanan maksimal sepanjang hari.'),
('SL001K','SN00X','Celestial Cascade Sneakers','36','UNX11Y',250000,10,'Sneakers1.png','Celestial Cascade Sneakers adalah sepatu putih polos yang menghadirkan gaya klasik dengan desain minimalis sehingga cocok untuk dipakai semua gender. Terbuat dari bahan kulit sintetis berkualitas tinggi untuk bagian atasnya, dengan sol karet yang kokoh untuk kenyamanan maksimal sepanjang hari.'),
('SL001L','SN00X','Celestial Cascade Sneakers','37','UNX11Y',250000,10,'Sneakers1.png','Celestial Cascade Sneakers adalah sepatu putih polos yang menghadirkan gaya klasik dengan desain minimalis sehingga cocok untuk dipakai semua gender. Terbuat dari bahan kulit sintetis berkualitas tinggi untuk bagian atasnya, dengan sol karet yang kokoh untuk kenyamanan maksimal sepanjang hari.'),
('SL001M','SN00X','Celestial Cascade Sneakers','38','UNX11Y',250000,10,'Sneakers1.png','Celestial Cascade Sneakers adalah sepatu putih polos yang menghadirkan gaya klasik dengan desain minimalis sehingga cocok untuk dipakai semua gender. Terbuat dari bahan kulit sintetis berkualitas tinggi untuk bagian atasnya, dengan sol karet yang kokoh untuk kenyamanan maksimal sepanjang hari.'),
('SL001N','SN00X','Celestial Cascade Sneakers','39','UNX11Y',250000,10,'Sneakers1.png','Celestial Cascade Sneakers adalah sepatu putih polos yang menghadirkan gaya klasik dengan desain minimalis sehingga cocok untuk dipakai semua gender. Terbuat dari bahan kulit sintetis berkualitas tinggi untuk bagian atasnya, dengan sol karet yang kokoh untuk kenyamanan maksimal sepanjang hari.'),
('SL001O','SN00X','Celestial Cascade Sneakers','40','UNX11Y',250000,10,'Sneakers1.png','Celestial Cascade Sneakers adalah sepatu putih polos yang menghadirkan gaya klasik dengan desain minimalis sehingga cocok untuk dipakai semua gender. Terbuat dari bahan kulit sintetis berkualitas tinggi untuk bagian atasnya, dengan sol karet yang kokoh untuk kenyamanan maksimal sepanjang hari.'),
('SL001P','SN00X','Celestial Cascade Sneakers','41','UNX11Y',250000,10,'Sneakers1.png','Celestial Cascade Sneakers adalah sepatu putih polos yang menghadirkan gaya klasik dengan desain minimalis sehingga cocok untuk dipakai semua gender. Terbuat dari bahan kulit sintetis berkualitas tinggi untuk bagian atasnya, dengan sol karet yang kokoh untuk kenyamanan maksimal sepanjang hari.'),
('SL001Q','SN00X','Celestial Cascade Sneakers','42','UNX11Y',250000,10,'Sneakers1.png','Celestial Cascade Sneakers adalah sepatu putih polos yang menghadirkan gaya klasik dengan desain minimalis sehingga cocok untuk dipakai semua gender. Terbuat dari bahan kulit sintetis berkualitas tinggi untuk bagian atasnya, dengan sol karet yang kokoh untuk kenyamanan maksimal sepanjang hari.'),
('SL001R','SN00X','Celestial Cascade Sneakers','43','UNX11Y',250000,10,'Sneakers1.png','Celestial Cascade Sneakers adalah sepatu putih polos yang menghadirkan gaya klasik dengan desain minimalis sehingga cocok untuk dipakai semua gender. Terbuat dari bahan kulit sintetis berkualitas tinggi untuk bagian atasnya, dengan sol karet yang kokoh untuk kenyamanan maksimal sepanjang hari.'),
('SL001S','SN00X','Celestial Cascade Sneakers','44','UNX11Y',250000,10,'Sneakers1.png','Celestial Cascade Sneakers adalah sepatu putih polos yang menghadirkan gaya klasik dengan desain minimalis sehingga cocok untuk dipakai semua gender. Terbuat dari bahan kulit sintetis berkualitas tinggi untuk bagian atasnya, dengan sol karet yang kokoh untuk kenyamanan maksimal sepanjang hari.'),
('SL001T','SN00X','Celestial Cascade Sneakers','45','UNX11Y',250000,10,'Sneakers1.png','Celestial Cascade Sneakers adalah sepatu putih polos yang menghadirkan gaya klasik dengan desain minimalis sehingga cocok untuk dipakai semua gender. Terbuat dari bahan kulit sintetis berkualitas tinggi untuk bagian atasnya, dengan sol karet yang kokoh untuk kenyamanan maksimal sepanjang hari.'),
('SL002A','SN00X','Aurora Alchemist Sneakers','36','GRL11Y',180000,5,'Sneakers2.png','Aurora Alchemist Sneakers adalah sepatu wanita berwarna putih dengan desain modern. Terbuat dari kulit sintetis, dilengkapi dengan sol agak tinggi untuk penambahan tinggi dan kenyamanan ekstra.'),
('SL002B','SN00X','Aurora Alchemist Sneakers','37','GRL11Y',180000,5,'Sneakers2.png','Aurora Alchemist Sneakers adalah sepatu wanita berwarna putih dengan desain modern. Terbuat dari kulit sintetis, dilengkapi dengan sol agak tinggi untuk penambahan tinggi dan kenyamanan ekstra.'),
('SL002C','SN00X','Aurora Alchemist Sneakers','38','GRL11Y',180000,5,'Sneakers2.png','Aurora Alchemist Sneakers adalah sepatu wanita berwarna putih dengan desain modern. Terbuat dari kulit sintetis, dilengkapi dengan sol agak tinggi untuk penambahan tinggi dan kenyamanan ekstra.'),
('SL002D','SN00X','Aurora Alchemist Sneakers','39','GRL11Y',180000,5,'Sneakers2.png','Aurora Alchemist Sneakers adalah sepatu wanita berwarna putih dengan desain modern. Terbuat dari kulit sintetis, dilengkapi dengan sol agak tinggi untuk penambahan tinggi dan kenyamanan ekstra.'),
('SL002E','SN00X','Aurora Alchemist Sneakers','40','GRL11Y',180000,5,'Sneakers2.png','Aurora Alchemist Sneakers adalah sepatu wanita berwarna putih dengan desain modern. Terbuat dari kulit sintetis, dilengkapi dengan sol agak tinggi untuk penambahan tinggi dan kenyamanan ekstra.'),
('SL002F','SN00X','Aurora Alchemist Sneakers','36','GRL11Y',180000,5,'Sneakers2.png','Aurora Alchemist Sneakers adalah sepatu wanita berwarna putih dengan desain modern. Terbuat dari kulit sintetis, dilengkapi dengan sol agak tinggi untuk penambahan tinggi dan kenyamanan ekstra.'),
('SL002G','SN00X','Aurora Alchemist Sneakers','37','GRL11Y',180000,5,'Sneakers2.png','Aurora Alchemist Sneakers adalah sepatu wanita berwarna putih dengan desain modern. Terbuat dari kulit sintetis, dilengkapi dengan sol agak tinggi untuk penambahan tinggi dan kenyamanan ekstra.'),
('SL002H','SN00X','Aurora Alchemist Sneakers','38','GRL11Y',180000,5,'Sneakers2.png','Aurora Alchemist Sneakers adalah sepatu wanita berwarna putih dengan desain modern. Terbuat dari kulit sintetis, dilengkapi dengan sol agak tinggi untuk penambahan tinggi dan kenyamanan ekstra.'),
('SL002I','SN00X','Aurora Alchemist Sneakers','39','GRL11Y',180000,5,'Sneakers2.png','Aurora Alchemist Sneakers adalah sepatu wanita berwarna putih dengan desain modern. Terbuat dari kulit sintetis, dilengkapi dengan sol agak tinggi untuk penambahan tinggi dan kenyamanan ekstra.'),
('SL002J','SN00X','Aurora Alchemist Sneakers','40','GRL11Y',180000,5,'Sneakers2.png','Aurora Alchemist Sneakers adalah sepatu wanita berwarna putih dengan desain modern. Terbuat dari kulit sintetis, dilengkapi dengan sol agak tinggi untuk penambahan tinggi dan kenyamanan ekstra.'),
('SL003A','SN00X','Dusk Delight Sneakers','38','BYO11Y',200000,5,'Sneakers3.png','Dusk Delight Sneakers adalah sepatu pria dengan perpaduan warna putih, coklat, dan sentuhan hitam yang elegan. Terbuat dari kombinasi kulit sintetis dan kanvas untuk tampilan modern dan keawetan yang baik. Solnya didesain responsif untuk kenyamanan dan dukungan maksimal.'),
('SL003B','SN00X','Dusk Delight Sneakers','39','BYO11Y',200000,5,'Sneakers3.png','Dusk Delight Sneakers adalah sepatu pria dengan perpaduan warna putih, coklat, dan sentuhan hitam yang elegan. Terbuat dari kombinasi kulit sintetis dan kanvas untuk tampilan modern dan keawetan yang baik. Solnya didesain responsif untuk kenyamanan dan dukungan maksimal.'),
('SL003C','SN00X','Dusk Delight Sneakers','40','BYO11Y',200000,5,'Sneakers3.png','Dusk Delight Sneakers adalah sepatu pria dengan perpaduan warna putih, coklat, dan sentuhan hitam yang elegan. Terbuat dari kombinasi kulit sintetis dan kanvas untuk tampilan modern dan keawetan yang baik. Solnya didesain responsif untuk kenyamanan dan dukungan maksimal.'),
('SL003D','SN00X','Dusk Delight Sneakers','41','BYO11Y',200000,5,'Sneakers3.png','Dusk Delight Sneakers adalah sepatu pria dengan perpaduan warna putih, coklat, dan sentuhan hitam yang elegan. Terbuat dari kombinasi kulit sintetis dan kanvas untuk tampilan modern dan keawetan yang baik. Solnya didesain responsif untuk kenyamanan dan dukungan maksimal.'),
('SL003E','SN00X','Dusk Delight Sneakers','42','BYO11Y',200000,5,'Sneakers3.png','Dusk Delight Sneakers adalah sepatu pria dengan perpaduan warna putih, coklat, dan sentuhan hitam yang elegan. Terbuat dari kombinasi kulit sintetis dan kanvas untuk tampilan modern dan keawetan yang baik. Solnya didesain responsif untuk kenyamanan dan dukungan maksimal.'),
('SL003F','SN00X','Dusk Delight Sneakers','43','BYO11Y',200000,5,'Sneakers3.png','Dusk Delight Sneakers adalah sepatu pria dengan perpaduan warna putih, coklat, dan sentuhan hitam yang elegan. Terbuat dari kombinasi kulit sintetis dan kanvas untuk tampilan modern dan keawetan yang baik. Solnya didesain responsif untuk kenyamanan dan dukungan maksimal.'),
('SL003G','SN00X','Dusk Delight Sneakers','44','BYO11Y',200000,5,'Sneakers3.png','Dusk Delight Sneakers adalah sepatu pria dengan perpaduan warna putih, coklat, dan sentuhan hitam yang elegan. Terbuat dari kombinasi kulit sintetis dan kanvas untuk tampilan modern dan keawetan yang baik. Solnya didesain responsif untuk kenyamanan dan dukungan maksimal.'),
('SL003H','SN00X','Dusk Delight Sneakers','45','BYO11Y',200000,5,'Sneakers3.png','Dusk Delight Sneakers adalah sepatu pria dengan perpaduan warna putih, coklat, dan sentuhan hitam yang elegan. Terbuat dari kombinasi kulit sintetis dan kanvas untuk tampilan modern dan keawetan yang baik. Solnya didesain responsif untuk kenyamanan dan dukungan maksimal.'),
('SL003I','SN00X','Dusk Delight Sneakers','38','BYO11Y',200000,5,'Sneakers3.png','Dusk Delight Sneakers adalah sepatu pria dengan perpaduan warna putih, coklat, dan sentuhan hitam yang elegan. Terbuat dari kombinasi kulit sintetis dan kanvas untuk tampilan modern dan keawetan yang baik. Solnya didesain responsif untuk kenyamanan dan dukungan maksimal.'),
('SL003J','SN00X','Dusk Delight Sneakers','39','BYO11Y',200000,5,'Sneakers3.png','Dusk Delight Sneakers adalah sepatu pria dengan perpaduan warna putih, coklat, dan sentuhan hitam yang elegan. Terbuat dari kombinasi kulit sintetis dan kanvas untuk tampilan modern dan keawetan yang baik. Solnya didesain responsif untuk kenyamanan dan dukungan maksimal.'),
('SL003K','SN00X','Dusk Delight Sneakers','40','BYO11Y',200000,5,'Sneakers3.png','Dusk Delight Sneakers adalah sepatu pria dengan perpaduan warna putih, coklat, dan sentuhan hitam yang elegan. Terbuat dari kombinasi kulit sintetis dan kanvas untuk tampilan modern dan keawetan yang baik. Solnya didesain responsif untuk kenyamanan dan dukungan maksimal.'),
('SL003L','SN00X','Dusk Delight Sneakers','41','BYO11Y',200000,5,'Sneakers3.png','Dusk Delight Sneakers adalah sepatu pria dengan perpaduan warna putih, coklat, dan sentuhan hitam yang elegan. Terbuat dari kombinasi kulit sintetis dan kanvas untuk tampilan modern dan keawetan yang baik. Solnya didesain responsif untuk kenyamanan dan dukungan maksimal.'),
('SL003M','SN00X','Dusk Delight Sneakers','42','BYO11Y',200000,5,'Sneakers3.png','Dusk Delight Sneakers adalah sepatu pria dengan perpaduan warna putih, coklat, dan sentuhan hitam yang elegan. Terbuat dari kombinasi kulit sintetis dan kanvas untuk tampilan modern dan keawetan yang baik. Solnya didesain responsif untuk kenyamanan dan dukungan maksimal.'),
('SL003N','SN00X','Dusk Delight Sneakers','43','BYO11Y',200000,5,'Sneakers3.png','Dusk Delight Sneakers adalah sepatu pria dengan perpaduan warna putih, coklat, dan sentuhan hitam yang elegan. Terbuat dari kombinasi kulit sintetis dan kanvas untuk tampilan modern dan keawetan yang baik. Solnya didesain responsif untuk kenyamanan dan dukungan maksimal.'),
('SL003O','SN00X','Dusk Delight Sneakers','44','BYO11Y',200000,5,'Sneakers3.png','Dusk Delight Sneakers adalah sepatu pria dengan perpaduan warna putih, coklat, dan sentuhan hitam yang elegan. Terbuat dari kombinasi kulit sintetis dan kanvas untuk tampilan modern dan keawetan yang baik. Solnya didesain responsif untuk kenyamanan dan dukungan maksimal.'),
('SL003P','SN00X','Dusk Delight Sneakers','45','BYO11Y',200000,5,'Sneakers3.png','Dusk Delight Sneakers adalah sepatu pria dengan perpaduan warna putih, coklat, dan sentuhan hitam yang elegan. Terbuat dari kombinasi kulit sintetis dan kanvas untuk tampilan modern dan keawetan yang baik. Solnya didesain responsif untuk kenyamanan dan dukungan maksimal.'),
('SL004A','FO00X','Ethereal Elegance Toes','36','GRL11Y',230000,5,'formal3.png','\r\nEthereal Elegance Toes adalah sepatu pantofel elegan untuk wanita dengan sentuhan hak, tersedia dalam warna hitam yang timeless. Dibuat untuk menonjolkan keanggunan dan gaya, sepatu ini merupakan pilihan sempurna untuk acara-acara formal atau sehari-hari yang istimewa.\r\n\r\nTerbuat dari bahan kulit sintetis berkualitas tinggi, Ethereal Elegance Toes menampilkan tampilan yang polos namun mewah. Haknya memberikan penambahan tinggi yang nyaman untuk langkah yang lebih percaya diri.\r\n\r\n'),
('SL004B','FO00X','Ethereal Elegance Toes','37','GRL11Y',230000,5,'formal3.png','\r\nEthereal Elegance Toes adalah sepatu pantofel elegan untuk wanita dengan sentuhan hak, tersedia dalam warna hitam yang timeless. Dibuat untuk menonjolkan keanggunan dan gaya, sepatu ini merupakan pilihan sempurna untuk acara-acara formal atau sehari-hari yang istimewa.\r\n\r\nTerbuat dari bahan kulit sintetis berkualitas tinggi, Ethereal Elegance Toes menampilkan tampilan yang polos namun mewah. Haknya memberikan penambahan tinggi yang nyaman untuk langkah yang lebih percaya diri.\r\n\r\n'),
('SL004C','FO00X','Ethereal Elegance Toes','38','GRL11Y',230000,5,'formal3.png','\r\nEthereal Elegance Toes adalah sepatu pantofel elegan untuk wanita dengan sentuhan hak, tersedia dalam warna hitam yang timeless. Dibuat untuk menonjolkan keanggunan dan gaya, sepatu ini merupakan pilihan sempurna untuk acara-acara formal atau sehari-hari yang istimewa.\r\n\r\nTerbuat dari bahan kulit sintetis berkualitas tinggi, Ethereal Elegance Toes menampilkan tampilan yang polos namun mewah. Haknya memberikan penambahan tinggi yang nyaman untuk langkah yang lebih percaya diri.\r\n\r\n'),
('SL004D','FO00X','Ethereal Elegance Toes','39','GRL11Y',230000,5,'formal3.png','\r\nEthereal Elegance Toes adalah sepatu pantofel elegan untuk wanita dengan sentuhan hak, tersedia dalam warna hitam yang timeless. Dibuat untuk menonjolkan keanggunan dan gaya, sepatu ini merupakan pilihan sempurna untuk acara-acara formal atau sehari-hari yang istimewa.\r\n\r\nTerbuat dari bahan kulit sintetis berkualitas tinggi, Ethereal Elegance Toes menampilkan tampilan yang polos namun mewah. Haknya memberikan penambahan tinggi yang nyaman untuk langkah yang lebih percaya diri.\r\n\r\n'),
('SL004E','FO00X','Ethereal Elegance Toes','40','GRL11Y',230000,5,'formal3.png','\r\nEthereal Elegance Toes adalah sepatu pantofel elegan untuk wanita dengan sentuhan hak, tersedia dalam warna hitam yang timeless. Dibuat untuk menonjolkan keanggunan dan gaya, sepatu ini merupakan pilihan sempurna untuk acara-acara formal atau sehari-hari yang istimewa.\r\n\r\nTerbuat dari bahan kulit sintetis berkualitas tinggi, Ethereal Elegance Toes menampilkan tampilan yang polos namun mewah. Haknya memberikan penambahan tinggi yang nyaman untuk langkah yang lebih percaya diri.\r\n\r\n'),
('SL004F','FO00X','Ethereal Elegance Toes','36','GRL11Y',230000,5,'formal3.png','\r\nEthereal Elegance Toes adalah sepatu pantofel elegan untuk wanita dengan sentuhan hak, tersedia dalam warna hitam yang timeless. Dibuat untuk menonjolkan keanggunan dan gaya, sepatu ini merupakan pilihan sempurna untuk acara-acara formal atau sehari-hari yang istimewa.\r\n\r\nTerbuat dari bahan kulit sintetis berkualitas tinggi, Ethereal Elegance Toes menampilkan tampilan yang polos namun mewah. Haknya memberikan penambahan tinggi yang nyaman untuk langkah yang lebih percaya diri.\r\n\r\n'),
('SL004G','FO00X','Ethereal Elegance Toes','37','GRL11Y',230000,5,'formal3.png','\r\nEthereal Elegance Toes adalah sepatu pantofel elegan untuk wanita dengan sentuhan hak, tersedia dalam warna hitam yang timeless. Dibuat untuk menonjolkan keanggunan dan gaya, sepatu ini merupakan pilihan sempurna untuk acara-acara formal atau sehari-hari yang istimewa.\r\n\r\nTerbuat dari bahan kulit sintetis berkualitas tinggi, Ethereal Elegance Toes menampilkan tampilan yang polos namun mewah. Haknya memberikan penambahan tinggi yang nyaman untuk langkah yang lebih percaya diri.\r\n\r\n'),
('SL004H','FO00X','Ethereal Elegance Toes','38','GRL11Y',230000,5,'formal3.png','\r\nEthereal Elegance Toes adalah sepatu pantofel elegan untuk wanita dengan sentuhan hak, tersedia dalam warna hitam yang timeless. Dibuat untuk menonjolkan keanggunan dan gaya, sepatu ini merupakan pilihan sempurna untuk acara-acara formal atau sehari-hari yang istimewa.\r\n\r\nTerbuat dari bahan kulit sintetis berkualitas tinggi, Ethereal Elegance Toes menampilkan tampilan yang polos namun mewah. Haknya memberikan penambahan tinggi yang nyaman untuk langkah yang lebih percaya diri.\r\n\r\n'),
('SL004I','FO00X','Ethereal Elegance Toes','39','GRL11Y',230000,5,'formal3.png','\r\nEthereal Elegance Toes adalah sepatu pantofel elegan untuk wanita dengan sentuhan hak, tersedia dalam warna hitam yang timeless. Dibuat untuk menonjolkan keanggunan dan gaya, sepatu ini merupakan pilihan sempurna untuk acara-acara formal atau sehari-hari yang istimewa.\r\n\r\nTerbuat dari bahan kulit sintetis berkualitas tinggi, Ethereal Elegance Toes menampilkan tampilan yang polos namun mewah. Haknya memberikan penambahan tinggi yang nyaman untuk langkah yang lebih percaya diri.\r\n\r\n'),
('SL004J','FO00X','Ethereal Elegance Toes','40','GRL11Y',230000,5,'formal3.png','\r\nEthereal Elegance Toes adalah sepatu pantofel elegan untuk wanita dengan sentuhan hak, tersedia dalam warna hitam yang timeless. Dibuat untuk menonjolkan keanggunan dan gaya, sepatu ini merupakan pilihan sempurna untuk acara-acara formal atau sehari-hari yang istimewa.\r\n\r\nTerbuat dari bahan kulit sintetis berkualitas tinggi, Ethereal Elegance Toes menampilkan tampilan yang polos namun mewah. Haknya memberikan penambahan tinggi yang nyaman untuk langkah yang lebih percaya diri.\r\n\r\n'),
('SL005A','FO00X','Twilight Haze Charm','36','GRL11Y',210000,5,'Formal2.png','\r\nTwilight Haze Charm adalah sepatu pantofel wanita berwarna hitam dengan hak kecil dan hiasan mutiara kecil yang memikat. Terbuat dari kulit sintetis berkualitas tinggi, sepatu ini memberikan kesan elegan dengan sentuhan feminin yang anggun. Cocok untuk berbagai acara formal atau santai dengan gaya yang menawan.\r\n'),
('SL005B','FO00X','Twilight Haze Charm','37','GRL11Y',210000,5,'Formal2.png','\r\nTwilight Haze Charm adalah sepatu pantofel wanita berwarna hitam dengan hak kecil dan hiasan mutiara kecil yang memikat. Terbuat dari kulit sintetis berkualitas tinggi, sepatu ini memberikan kesan elegan dengan sentuhan feminin yang anggun. Cocok untuk berbagai acara formal atau santai dengan gaya yang menawan.\r\n'),
('SL005C','FO00X','Twilight Haze Charm','38','GRL11Y',210000,5,'Formal2.png','\r\nTwilight Haze Charm adalah sepatu pantofel wanita berwarna hitam dengan hak kecil dan hiasan mutiara kecil yang memikat. Terbuat dari kulit sintetis berkualitas tinggi, sepatu ini memberikan kesan elegan dengan sentuhan feminin yang anggun. Cocok untuk berbagai acara formal atau santai dengan gaya yang menawan.\r\n'),
('SL005D','FO00X','Twilight Haze Charm','39','GRL11Y',210000,5,'Formal2.png','\r\nTwilight Haze Charm adalah sepatu pantofel wanita berwarna hitam dengan hak kecil dan hiasan mutiara kecil yang memikat. Terbuat dari kulit sintetis berkualitas tinggi, sepatu ini memberikan kesan elegan dengan sentuhan feminin yang anggun. Cocok untuk berbagai acara formal atau santai dengan gaya yang menawan.\r\n'),
('SL005E','FO00X','Twilight Haze Charm','40','GRL11Y',210000,5,'Formal2.png','\r\nTwilight Haze Charm adalah sepatu pantofel wanita berwarna hitam dengan hak kecil dan hiasan mutiara kecil yang memikat. Terbuat dari kulit sintetis berkualitas tinggi, sepatu ini memberikan kesan elegan dengan sentuhan feminin yang anggun. Cocok untuk berbagai acara formal atau santai dengan gaya yang menawan.\r\n'),
('SL005F','FO00X','Twilight Haze Charm','36','GRL11Y',210000,5,'Formal2.png','\r\nTwilight Haze Charm adalah sepatu pantofel wanita berwarna hitam dengan hak kecil dan hiasan mutiara kecil yang memikat. Terbuat dari kulit sintetis berkualitas tinggi, sepatu ini memberikan kesan elegan dengan sentuhan feminin yang anggun. Cocok untuk berbagai acara formal atau santai dengan gaya yang menawan.\r\n'),
('SL005G','FO00X','Twilight Haze Charm','37','GRL11Y',210000,5,'Formal2.png','\r\nTwilight Haze Charm adalah sepatu pantofel wanita berwarna hitam dengan hak kecil dan hiasan mutiara kecil yang memikat. Terbuat dari kulit sintetis berkualitas tinggi, sepatu ini memberikan kesan elegan dengan sentuhan feminin yang anggun. Cocok untuk berbagai acara formal atau santai dengan gaya yang menawan.\r\n'),
('SL005H','FO00X','Twilight Haze Charm','38','GRL11Y',210000,5,'Formal2.png','\r\nTwilight Haze Charm adalah sepatu pantofel wanita berwarna hitam dengan hak kecil dan hiasan mutiara kecil yang memikat. Terbuat dari kulit sintetis berkualitas tinggi, sepatu ini memberikan kesan elegan dengan sentuhan feminin yang anggun. Cocok untuk berbagai acara formal atau santai dengan gaya yang menawan.\r\n'),
('SL005I','FO00X','Twilight Haze Charm','39','GRL11Y',210000,5,'Formal2.png','\r\nTwilight Haze Charm adalah sepatu pantofel wanita berwarna hitam dengan hak kecil dan hiasan mutiara kecil yang memikat. Terbuat dari kulit sintetis berkualitas tinggi, sepatu ini memberikan kesan elegan dengan sentuhan feminin yang anggun. Cocok untuk berbagai acara formal atau santai dengan gaya yang menawan.\r\n'),
('SL005J','FO00X','Twilight Haze Charm','40','GRL11Y',210000,5,'Formal2.png','\r\nTwilight Haze Charm adalah sepatu pantofel wanita berwarna hitam dengan hak kecil dan hiasan mutiara kecil yang memikat. Terbuat dari kulit sintetis berkualitas tinggi, sepatu ini memberikan kesan elegan dengan sentuhan feminin yang anggun. Cocok untuk berbagai acara formal atau santai dengan gaya yang menawan.\r\n'),
('SL006A','FO00X','Solstice Derbys','38','BYO11Y',220000,5,'formal1.png','Solstiche Derbys adalah sepatu pantofel pria yang elegan dengan warna hitam yang klasik. Dibuat untuk menambah kesan anggun pada setiap langkah, sepatu ini menggabungkan gaya dan kenyamanan dalam desainnya.\r\n\r\nDibuat dari kulit sintetis berkualitas tinggi, Solstiche Derbys menampilkan tampilan yang bersih dan polos. Solnya dirancang untuk memberikan stabilitas dan penampilan yang kokoh, sementara bagian dalamnya dilapisi dengan bahan tekstil lembut untuk kenyamanan maksimal.\r\n\r\n'),
('SL006B','FO00X','Solstice Derbys','39','BYO11Y',220000,5,'formal1.png','Solstiche Derbys adalah sepatu pantofel pria yang elegan dengan warna hitam yang klasik. Dibuat untuk menambah kesan anggun pada setiap langkah, sepatu ini menggabungkan gaya dan kenyamanan dalam desainnya.\r\n\r\nDibuat dari kulit sintetis berkualitas tinggi, Solstiche Derbys menampilkan tampilan yang bersih dan polos. Solnya dirancang untuk memberikan stabilitas dan penampilan yang kokoh, sementara bagian dalamnya dilapisi dengan bahan tekstil lembut untuk kenyamanan maksimal.\r\n\r\n'),
('SL006C','FO00X','Solstice Derbys','40','BYO11Y',220000,5,'formal1.png','Solstiche Derbys adalah sepatu pantofel pria yang elegan dengan warna hitam yang klasik. Dibuat untuk menambah kesan anggun pada setiap langkah, sepatu ini menggabungkan gaya dan kenyamanan dalam desainnya.\r\n\r\nDibuat dari kulit sintetis berkualitas tinggi, Solstiche Derbys menampilkan tampilan yang bersih dan polos. Solnya dirancang untuk memberikan stabilitas dan penampilan yang kokoh, sementara bagian dalamnya dilapisi dengan bahan tekstil lembut untuk kenyamanan maksimal.\r\n\r\n'),
('SL006D','FO00X','Solstice Derbys','41','BYO11Y',220000,5,'formal1.png','Solstiche Derbys adalah sepatu pantofel pria yang elegan dengan warna hitam yang klasik. Dibuat untuk menambah kesan anggun pada setiap langkah, sepatu ini menggabungkan gaya dan kenyamanan dalam desainnya.\r\n\r\nDibuat dari kulit sintetis berkualitas tinggi, Solstiche Derbys menampilkan tampilan yang bersih dan polos. Solnya dirancang untuk memberikan stabilitas dan penampilan yang kokoh, sementara bagian dalamnya dilapisi dengan bahan tekstil lembut untuk kenyamanan maksimal.\r\n\r\n'),
('SL006E','FO00X','Solstice Derbys','42','BYO11Y',220000,5,'formal1.png','Solstiche Derbys adalah sepatu pantofel pria yang elegan dengan warna hitam yang klasik. Dibuat untuk menambah kesan anggun pada setiap langkah, sepatu ini menggabungkan gaya dan kenyamanan dalam desainnya.\r\n\r\nDibuat dari kulit sintetis berkualitas tinggi, Solstiche Derbys menampilkan tampilan yang bersih dan polos. Solnya dirancang untuk memberikan stabilitas dan penampilan yang kokoh, sementara bagian dalamnya dilapisi dengan bahan tekstil lembut untuk kenyamanan maksimal.\r\n\r\n'),
('SL006F','FO00X','Solstice Derbys','43','BYO11Y',220000,5,'formal1.png','Solstiche Derbys adalah sepatu pantofel pria yang elegan dengan warna hitam yang klasik. Dibuat untuk menambah kesan anggun pada setiap langkah, sepatu ini menggabungkan gaya dan kenyamanan dalam desainnya.\r\n\r\nDibuat dari kulit sintetis berkualitas tinggi, Solstiche Derbys menampilkan tampilan yang bersih dan polos. Solnya dirancang untuk memberikan stabilitas dan penampilan yang kokoh, sementara bagian dalamnya dilapisi dengan bahan tekstil lembut untuk kenyamanan maksimal.\r\n\r\n'),
('SL006G','FO00X','Solstice Derbys','44','BYO11Y',220000,5,'formal1.png','Solstiche Derbys adalah sepatu pantofel pria yang elegan dengan warna hitam yang klasik. Dibuat untuk menambah kesan anggun pada setiap langkah, sepatu ini menggabungkan gaya dan kenyamanan dalam desainnya.\r\n\r\nDibuat dari kulit sintetis berkualitas tinggi, Solstiche Derbys menampilkan tampilan yang bersih dan polos. Solnya dirancang untuk memberikan stabilitas dan penampilan yang kokoh, sementara bagian dalamnya dilapisi dengan bahan tekstil lembut untuk kenyamanan maksimal.\r\n\r\n'),
('SL006H','FO00X','Solstice Derbys','45','BYO11Y',220000,5,'formal1.png','Solstiche Derbys adalah sepatu pantofel pria yang elegan dengan warna hitam yang klasik. Dibuat untuk menambah kesan anggun pada setiap langkah, sepatu ini menggabungkan gaya dan kenyamanan dalam desainnya.\r\n\r\nDibuat dari kulit sintetis berkualitas tinggi, Solstiche Derbys menampilkan tampilan yang bersih dan polos. Solnya dirancang untuk memberikan stabilitas dan penampilan yang kokoh, sementara bagian dalamnya dilapisi dengan bahan tekstil lembut untuk kenyamanan maksimal.\r\n\r\n'),
('SL006I','FO00X','Solstice Derbys','38','BYO11Y',220000,5,'formal1.png','Solstiche Derbys adalah sepatu pantofel pria yang elegan dengan warna hitam yang klasik. Dibuat untuk menambah kesan anggun pada setiap langkah, sepatu ini menggabungkan gaya dan kenyamanan dalam desainnya.\r\n\r\nDibuat dari kulit sintetis berkualitas tinggi, Solstiche Derbys menampilkan tampilan yang bersih dan polos. Solnya dirancang untuk memberikan stabilitas dan penampilan yang kokoh, sementara bagian dalamnya dilapisi dengan bahan tekstil lembut untuk kenyamanan maksimal.\r\n\r\n'),
('SL006J','FO00X','Solstice Derbys','39','BYO11Y',220000,5,'formal1.png','Solstiche Derbys adalah sepatu pantofel pria yang elegan dengan warna hitam yang klasik. Dibuat untuk menambah kesan anggun pada setiap langkah, sepatu ini menggabungkan gaya dan kenyamanan dalam desainnya.\r\n\r\nDibuat dari kulit sintetis berkualitas tinggi, Solstiche Derbys menampilkan tampilan yang bersih dan polos. Solnya dirancang untuk memberikan stabilitas dan penampilan yang kokoh, sementara bagian dalamnya dilapisi dengan bahan tekstil lembut untuk kenyamanan maksimal.\r\n\r\n'),
('SL006K','FO00X','Solstice Derbys','41','BYO11Y',220000,5,'formal1.png','Solstiche Derbys adalah sepatu pantofel pria yang elegan dengan warna hitam yang klasik. Dibuat untuk menambah kesan anggun pada setiap langkah, sepatu ini menggabungkan gaya dan kenyamanan dalam desainnya.\r\n\r\nDibuat dari kulit sintetis berkualitas tinggi, Solstiche Derbys menampilkan tampilan yang bersih dan polos. Solnya dirancang untuk memberikan stabilitas dan penampilan yang kokoh, sementara bagian dalamnya dilapisi dengan bahan tekstil lembut untuk kenyamanan maksimal.\r\n\r\n'),
('SL006L','FO00X','Solstice Derbys','42','BYO11Y',220000,5,'formal1.png','Solstiche Derbys adalah sepatu pantofel pria yang elegan dengan warna hitam yang klasik. Dibuat untuk menambah kesan anggun pada setiap langkah, sepatu ini menggabungkan gaya dan kenyamanan dalam desainnya.\r\n\r\nDibuat dari kulit sintetis berkualitas tinggi, Solstiche Derbys menampilkan tampilan yang bersih dan polos. Solnya dirancang untuk memberikan stabilitas dan penampilan yang kokoh, sementara bagian dalamnya dilapisi dengan bahan tekstil lembut untuk kenyamanan maksimal.\r\n\r\n'),
('SL006M','FO00X','Solstice Derbys','43','BYO11Y',220000,5,'formal1.png','Solstiche Derbys adalah sepatu pantofel pria yang elegan dengan warna hitam yang klasik. Dibuat untuk menambah kesan anggun pada setiap langkah, sepatu ini menggabungkan gaya dan kenyamanan dalam desainnya.\r\n\r\nDibuat dari kulit sintetis berkualitas tinggi, Solstiche Derbys menampilkan tampilan yang bersih dan polos. Solnya dirancang untuk memberikan stabilitas dan penampilan yang kokoh, sementara bagian dalamnya dilapisi dengan bahan tekstil lembut untuk kenyamanan maksimal.\r\n\r\n'),
('SL006N','FO00X','Solstice Derbys','44','BYO11Y',220000,5,'formal1.png','Solstiche Derbys adalah sepatu pantofel pria yang elegan dengan warna hitam yang klasik. Dibuat untuk menambah kesan anggun pada setiap langkah, sepatu ini menggabungkan gaya dan kenyamanan dalam desainnya.\r\n\r\nDibuat dari kulit sintetis berkualitas tinggi, Solstiche Derbys menampilkan tampilan yang bersih dan polos. Solnya dirancang untuk memberikan stabilitas dan penampilan yang kokoh, sementara bagian dalamnya dilapisi dengan bahan tekstil lembut untuk kenyamanan maksimal.\r\n\r\n'),
('SL006O','FO00X','Solstice Derbys','45','BYO11Y',220000,5,'formal1.png','Solstiche Derbys adalah sepatu pantofel pria yang elegan dengan warna hitam yang klasik. Dibuat untuk menambah kesan anggun pada setiap langkah, sepatu ini menggabungkan gaya dan kenyamanan dalam desainnya.\r\n\r\nDibuat dari kulit sintetis berkualitas tinggi, Solstiche Derbys menampilkan tampilan yang bersih dan polos. Solnya dirancang untuk memberikan stabilitas dan penampilan yang kokoh, sementara bagian dalamnya dilapisi dengan bahan tekstil lembut untuk kenyamanan maksimal.\r\n\r\n'),
('SL006P','FO00X','Solstice Derbys','38','BYO11Y',220000,5,'formal1.png','Solstiche Derbys adalah sepatu pantofel pria yang elegan dengan warna hitam yang klasik. Dibuat untuk menambah kesan anggun pada setiap langkah, sepatu ini menggabungkan gaya dan kenyamanan dalam desainnya.\r\n\r\nDibuat dari kulit sintetis berkualitas tinggi, Solstiche Derbys menampilkan tampilan yang bersih dan polos. Solnya dirancang untuk memberikan stabilitas dan penampilan yang kokoh, sementara bagian dalamnya dilapisi dengan bahan tekstil lembut untuk kenyamanan maksimal.\r\n\r\n'),
('SL007A','FO00X','Brogues Zenith','38','BYO11Y',250000,5,'Formal4.png','\r\nBrogues Zenith adalah sepatu pantofel pria berwarna hitam yang menampilkan desain polos dan elegan. Dibuat untuk memberikan kesan yang berkelas, sepatu ini adalah pilihan sempurna untuk menambah sentuhan anggun pada setiap gaya pria.\r\n\r\nTerbuat dari kulit sintetis berkualitas tinggi, Brogues Zenith menampilkan tampilan yang bersih dan klasik. Solnya dirancang dengan detail yang cermat untuk memberikan stabilitas dan kenyamanan, sehingga cocok dipakai sepanjang hari.\r\n'),
('SL007B','FO00X','Brogues Zenith','39','BYO11Y',250000,5,'Formal4.png','\r\nBrogues Zenith adalah sepatu pantofel pria berwarna hitam yang menampilkan desain polos dan elegan. Dibuat untuk memberikan kesan yang berkelas, sepatu ini adalah pilihan sempurna untuk menambah sentuhan anggun pada setiap gaya pria.\r\n\r\nTerbuat dari kulit sintetis berkualitas tinggi, Brogues Zenith menampilkan tampilan yang bersih dan klasik. Solnya dirancang dengan detail yang cermat untuk memberikan stabilitas dan kenyamanan, sehingga cocok dipakai sepanjang hari.\r\n'),
('SL007C','FO00X','Brogues Zenith','40','BYO11Y',250000,5,'Formal4.png','\r\nBrogues Zenith adalah sepatu pantofel pria berwarna hitam yang menampilkan desain polos dan elegan. Dibuat untuk memberikan kesan yang berkelas, sepatu ini adalah pilihan sempurna untuk menambah sentuhan anggun pada setiap gaya pria.\r\n\r\nTerbuat dari kulit sintetis berkualitas tinggi, Brogues Zenith menampilkan tampilan yang bersih dan klasik. Solnya dirancang dengan detail yang cermat untuk memberikan stabilitas dan kenyamanan, sehingga cocok dipakai sepanjang hari.\r\n'),
('SL007D','FO00X','Brogues Zenith','41','BYO11Y',250000,5,'Formal4.png','\r\nBrogues Zenith adalah sepatu pantofel pria berwarna hitam yang menampilkan desain polos dan elegan. Dibuat untuk memberikan kesan yang berkelas, sepatu ini adalah pilihan sempurna untuk menambah sentuhan anggun pada setiap gaya pria.\r\n\r\nTerbuat dari kulit sintetis berkualitas tinggi, Brogues Zenith menampilkan tampilan yang bersih dan klasik. Solnya dirancang dengan detail yang cermat untuk memberikan stabilitas dan kenyamanan, sehingga cocok dipakai sepanjang hari.\r\n'),
('SL007E','FO00X','Brogues Zenith','42','BYO11Y',250000,5,'Formal4.png','\r\nBrogues Zenith adalah sepatu pantofel pria berwarna hitam yang menampilkan desain polos dan elegan. Dibuat untuk memberikan kesan yang berkelas, sepatu ini adalah pilihan sempurna untuk menambah sentuhan anggun pada setiap gaya pria.\r\n\r\nTerbuat dari kulit sintetis berkualitas tinggi, Brogues Zenith menampilkan tampilan yang bersih dan klasik. Solnya dirancang dengan detail yang cermat untuk memberikan stabilitas dan kenyamanan, sehingga cocok dipakai sepanjang hari.\r\n'),
('SL007F','FO00X','Brogues Zenith','43','BYO11Y',250000,5,'Formal4.png','\r\nBrogues Zenith adalah sepatu pantofel pria berwarna hitam yang menampilkan desain polos dan elegan. Dibuat untuk memberikan kesan yang berkelas, sepatu ini adalah pilihan sempurna untuk menambah sentuhan anggun pada setiap gaya pria.\r\n\r\nTerbuat dari kulit sintetis berkualitas tinggi, Brogues Zenith menampilkan tampilan yang bersih dan klasik. Solnya dirancang dengan detail yang cermat untuk memberikan stabilitas dan kenyamanan, sehingga cocok dipakai sepanjang hari.\r\n'),
('SL007G','FO00X','Brogues Zenith','44','BYO11Y',250000,5,'Formal4.png','\r\nBrogues Zenith adalah sepatu pantofel pria berwarna hitam yang menampilkan desain polos dan elegan. Dibuat untuk memberikan kesan yang berkelas, sepatu ini adalah pilihan sempurna untuk menambah sentuhan anggun pada setiap gaya pria.\r\n\r\nTerbuat dari kulit sintetis berkualitas tinggi, Brogues Zenith menampilkan tampilan yang bersih dan klasik. Solnya dirancang dengan detail yang cermat untuk memberikan stabilitas dan kenyamanan, sehingga cocok dipakai sepanjang hari.\r\n'),
('SL007H','FO00X','Brogues Zenith','45','BYO11Y',250000,5,'Formal4.png','\r\nBrogues Zenith adalah sepatu pantofel pria berwarna hitam yang menampilkan desain polos dan elegan. Dibuat untuk memberikan kesan yang berkelas, sepatu ini adalah pilihan sempurna untuk menambah sentuhan anggun pada setiap gaya pria.\r\n\r\nTerbuat dari kulit sintetis berkualitas tinggi, Brogues Zenith menampilkan tampilan yang bersih dan klasik. Solnya dirancang dengan detail yang cermat untuk memberikan stabilitas dan kenyamanan, sehingga cocok dipakai sepanjang hari.\r\n'),
('SL007I','FO00X','Brogues Zenith','38','BYO11Y',250000,5,'Formal4.png','\r\nBrogues Zenith adalah sepatu pantofel pria berwarna hitam yang menampilkan desain polos dan elegan. Dibuat untuk memberikan kesan yang berkelas, sepatu ini adalah pilihan sempurna untuk menambah sentuhan anggun pada setiap gaya pria.\r\n\r\nTerbuat dari kulit sintetis berkualitas tinggi, Brogues Zenith menampilkan tampilan yang bersih dan klasik. Solnya dirancang dengan detail yang cermat untuk memberikan stabilitas dan kenyamanan, sehingga cocok dipakai sepanjang hari.\r\n'),
('SL007J','FO00X','Brogues Zenith','39','BYO11Y',250000,5,'Formal4.png','\r\nBrogues Zenith adalah sepatu pantofel pria berwarna hitam yang menampilkan desain polos dan elegan. Dibuat untuk memberikan kesan yang berkelas, sepatu ini adalah pilihan sempurna untuk menambah sentuhan anggun pada setiap gaya pria.\r\n\r\nTerbuat dari kulit sintetis berkualitas tinggi, Brogues Zenith menampilkan tampilan yang bersih dan klasik. Solnya dirancang dengan detail yang cermat untuk memberikan stabilitas dan kenyamanan, sehingga cocok dipakai sepanjang hari.\r\n'),
('SL007K','FO00X','Brogues Zenith','40','BYO11Y',250000,5,'Formal4.png','\r\nBrogues Zenith adalah sepatu pantofel pria berwarna hitam yang menampilkan desain polos dan elegan. Dibuat untuk memberikan kesan yang berkelas, sepatu ini adalah pilihan sempurna untuk menambah sentuhan anggun pada setiap gaya pria.\r\n\r\nTerbuat dari kulit sintetis berkualitas tinggi, Brogues Zenith menampilkan tampilan yang bersih dan klasik. Solnya dirancang dengan detail yang cermat untuk memberikan stabilitas dan kenyamanan, sehingga cocok dipakai sepanjang hari.\r\n'),
('SL007L','FO00X','Brogues Zenith','41','BYO11Y',250000,5,'Formal4.png','\r\nBrogues Zenith adalah sepatu pantofel pria berwarna hitam yang menampilkan desain polos dan elegan. Dibuat untuk memberikan kesan yang berkelas, sepatu ini adalah pilihan sempurna untuk menambah sentuhan anggun pada setiap gaya pria.\r\n\r\nTerbuat dari kulit sintetis berkualitas tinggi, Brogues Zenith menampilkan tampilan yang bersih dan klasik. Solnya dirancang dengan detail yang cermat untuk memberikan stabilitas dan kenyamanan, sehingga cocok dipakai sepanjang hari.\r\n'),
('SL007M','FO00X','Brogues Zenith','42','BYO11Y',250000,5,'Formal4.png','\r\nBrogues Zenith adalah sepatu pantofel pria berwarna hitam yang menampilkan desain polos dan elegan. Dibuat untuk memberikan kesan yang berkelas, sepatu ini adalah pilihan sempurna untuk menambah sentuhan anggun pada setiap gaya pria.\r\n\r\nTerbuat dari kulit sintetis berkualitas tinggi, Brogues Zenith menampilkan tampilan yang bersih dan klasik. Solnya dirancang dengan detail yang cermat untuk memberikan stabilitas dan kenyamanan, sehingga cocok dipakai sepanjang hari.\r\n'),
('SL007N','FO00X','Brogues Zenith','43','BYO11Y',250000,5,'Formal4.png','\r\nBrogues Zenith adalah sepatu pantofel pria berwarna hitam yang menampilkan desain polos dan elegan. Dibuat untuk memberikan kesan yang berkelas, sepatu ini adalah pilihan sempurna untuk menambah sentuhan anggun pada setiap gaya pria.\r\n\r\nTerbuat dari kulit sintetis berkualitas tinggi, Brogues Zenith menampilkan tampilan yang bersih dan klasik. Solnya dirancang dengan detail yang cermat untuk memberikan stabilitas dan kenyamanan, sehingga cocok dipakai sepanjang hari.\r\n'),
('SL007O','FO00X','Brogues Zenith','44','BYO11Y',250000,5,'Formal4.png','\r\nBrogues Zenith adalah sepatu pantofel pria berwarna hitam yang menampilkan desain polos dan elegan. Dibuat untuk memberikan kesan yang berkelas, sepatu ini adalah pilihan sempurna untuk menambah sentuhan anggun pada setiap gaya pria.\r\n\r\nTerbuat dari kulit sintetis berkualitas tinggi, Brogues Zenith menampilkan tampilan yang bersih dan klasik. Solnya dirancang dengan detail yang cermat untuk memberikan stabilitas dan kenyamanan, sehingga cocok dipakai sepanjang hari.\r\n'),
('SL007P','FO00X','Brogues Zenith','45','BYO11Y',250000,5,'Formal4.png','\r\nBrogues Zenith adalah sepatu pantofel pria berwarna hitam yang menampilkan desain polos dan elegan. Dibuat untuk memberikan kesan yang berkelas, sepatu ini adalah pilihan sempurna untuk menambah sentuhan anggun pada setiap gaya pria.\r\n\r\nTerbuat dari kulit sintetis berkualitas tinggi, Brogues Zenith menampilkan tampilan yang bersih dan klasik. Solnya dirancang dengan detail yang cermat untuk memberikan stabilitas dan kenyamanan, sehingga cocok dipakai sepanjang hari.\r\n'),
('SL008A','FS00X','Luna Lavender Flats','36','GRL11Y',150000,5,'Flatshoes1.png','\r\nLuna Lavender Flats adalah flatshoes wanita yang memukau dengan warna pink charming yang menawan. Desainnya dilengkapi dengan pita kecil di bagian depan, memberikan sentuhan feminin yang elegan pada setiap langkah.\r\n\r\nTerbuat dari bahan kulit sintetis berkualitas tinggi, Luna Lavender Flats memberikan tampilan yang mewah dan keawetan yang optimal. Solnya yang datar dan nyaman membuatnya ideal untuk dipakai sehari-hari.\r\n\r\nDengan Luna Lavender Flats, Anda akan merasa anggun dan percaya diri dalam setiap kesempatan. Cocok untuk gaya santai yang tetap memikat.\r\n'),
('SL008B','FS00X','Luna Lavender Flats','37','GRL11Y',150000,5,'Flatshoes1.png','\r\nLuna Lavender Flats adalah flatshoes wanita yang memukau dengan warna pink charming yang menawan. Desainnya dilengkapi dengan pita kecil di bagian depan, memberikan sentuhan feminin yang elegan pada setiap langkah.\r\n\r\nTerbuat dari bahan kulit sintetis berkualitas tinggi, Luna Lavender Flats memberikan tampilan yang mewah dan keawetan yang optimal. Solnya yang datar dan nyaman membuatnya ideal untuk dipakai sehari-hari.\r\n\r\nDengan Luna Lavender Flats, Anda akan merasa anggun dan percaya diri dalam setiap kesempatan. Cocok untuk gaya santai yang tetap memikat.\r\n'),
('SL008C','FS00X','Luna Lavender Flats','38','GRL11Y',150000,5,'Flatshoes1.png','\r\nLuna Lavender Flats adalah flatshoes wanita yang memukau dengan warna pink charming yang menawan. Desainnya dilengkapi dengan pita kecil di bagian depan, memberikan sentuhan feminin yang elegan pada setiap langkah.\r\n\r\nTerbuat dari bahan kulit sintetis berkualitas tinggi, Luna Lavender Flats memberikan tampilan yang mewah dan keawetan yang optimal. Solnya yang datar dan nyaman membuatnya ideal untuk dipakai sehari-hari.\r\n\r\nDengan Luna Lavender Flats, Anda akan merasa anggun dan percaya diri dalam setiap kesempatan. Cocok untuk gaya santai yang tetap memikat.\r\n'),
('SL008D','FS00X','Luna Lavender Flats','39','GRL11Y',150000,5,'Flatshoes1.png','\r\nLuna Lavender Flats adalah flatshoes wanita yang memukau dengan warna pink charming yang menawan. Desainnya dilengkapi dengan pita kecil di bagian depan, memberikan sentuhan feminin yang elegan pada setiap langkah.\r\n\r\nTerbuat dari bahan kulit sintetis berkualitas tinggi, Luna Lavender Flats memberikan tampilan yang mewah dan keawetan yang optimal. Solnya yang datar dan nyaman membuatnya ideal untuk dipakai sehari-hari.\r\n\r\nDengan Luna Lavender Flats, Anda akan merasa anggun dan percaya diri dalam setiap kesempatan. Cocok untuk gaya santai yang tetap memikat.\r\n'),
('SL008E','FS00X','Luna Lavender Flats','40','GRL11Y',150000,5,'Flatshoes1.png','\r\nLuna Lavender Flats adalah flatshoes wanita yang memukau dengan warna pink charming yang menawan. Desainnya dilengkapi dengan pita kecil di bagian depan, memberikan sentuhan feminin yang elegan pada setiap langkah.\r\n\r\nTerbuat dari bahan kulit sintetis berkualitas tinggi, Luna Lavender Flats memberikan tampilan yang mewah dan keawetan yang optimal. Solnya yang datar dan nyaman membuatnya ideal untuk dipakai sehari-hari.\r\n\r\nDengan Luna Lavender Flats, Anda akan merasa anggun dan percaya diri dalam setiap kesempatan. Cocok untuk gaya santai yang tetap memikat.\r\n'),
('SL008F','FS00X','Luna Lavender Flats','36','GRL11Y',150000,5,'Flatshoes1.png','\r\nLuna Lavender Flats adalah flatshoes wanita yang memukau dengan warna pink charming yang menawan. Desainnya dilengkapi dengan pita kecil di bagian depan, memberikan sentuhan feminin yang elegan pada setiap langkah.\r\n\r\nTerbuat dari bahan kulit sintetis berkualitas tinggi, Luna Lavender Flats memberikan tampilan yang mewah dan keawetan yang optimal. Solnya yang datar dan nyaman membuatnya ideal untuk dipakai sehari-hari.\r\n\r\nDengan Luna Lavender Flats, Anda akan merasa anggun dan percaya diri dalam setiap kesempatan. Cocok untuk gaya santai yang tetap memikat.\r\n'),
('SL008G','FS00X','Luna Lavender Flats','37','GRL11Y',150000,5,'Flatshoes1.png','\r\nLuna Lavender Flats adalah flatshoes wanita yang memukau dengan warna pink charming yang menawan. Desainnya dilengkapi dengan pita kecil di bagian depan, memberikan sentuhan feminin yang elegan pada setiap langkah.\r\n\r\nTerbuat dari bahan kulit sintetis berkualitas tinggi, Luna Lavender Flats memberikan tampilan yang mewah dan keawetan yang optimal. Solnya yang datar dan nyaman membuatnya ideal untuk dipakai sehari-hari.\r\n\r\nDengan Luna Lavender Flats, Anda akan merasa anggun dan percaya diri dalam setiap kesempatan. Cocok untuk gaya santai yang tetap memikat.\r\n'),
('SL008H','FS00X','Luna Lavender Flats','38','GRL11Y',150000,5,'Flatshoes1.png','\r\nLuna Lavender Flats adalah flatshoes wanita yang memukau dengan warna pink charming yang menawan. Desainnya dilengkapi dengan pita kecil di bagian depan, memberikan sentuhan feminin yang elegan pada setiap langkah.\r\n\r\nTerbuat dari bahan kulit sintetis berkualitas tinggi, Luna Lavender Flats memberikan tampilan yang mewah dan keawetan yang optimal. Solnya yang datar dan nyaman membuatnya ideal untuk dipakai sehari-hari.\r\n\r\nDengan Luna Lavender Flats, Anda akan merasa anggun dan percaya diri dalam setiap kesempatan. Cocok untuk gaya santai yang tetap memikat.\r\n'),
('SL008I','FS00X','Luna Lavender Flats','39','GRL11Y',150000,5,'Flatshoes1.png','\r\nLuna Lavender Flats adalah flatshoes wanita yang memukau dengan warna pink charming yang menawan. Desainnya dilengkapi dengan pita kecil di bagian depan, memberikan sentuhan feminin yang elegan pada setiap langkah.\r\n\r\nTerbuat dari bahan kulit sintetis berkualitas tinggi, Luna Lavender Flats memberikan tampilan yang mewah dan keawetan yang optimal. Solnya yang datar dan nyaman membuatnya ideal untuk dipakai sehari-hari.\r\n\r\nDengan Luna Lavender Flats, Anda akan merasa anggun dan percaya diri dalam setiap kesempatan. Cocok untuk gaya santai yang tetap memikat.\r\n'),
('SL008J','FS00X','Luna Lavender Flats','40','GRL11Y',150000,5,'Flatshoes1.png','\r\nLuna Lavender Flats adalah flatshoes wanita yang memukau dengan warna pink charming yang menawan. Desainnya dilengkapi dengan pita kecil di bagian depan, memberikan sentuhan feminin yang elegan pada setiap langkah.\r\n\r\nTerbuat dari bahan kulit sintetis berkualitas tinggi, Luna Lavender Flats memberikan tampilan yang mewah dan keawetan yang optimal. Solnya yang datar dan nyaman membuatnya ideal untuk dipakai sehari-hari.\r\n\r\nDengan Luna Lavender Flats, Anda akan merasa anggun dan percaya diri dalam setiap kesempatan. Cocok untuk gaya santai yang tetap memikat.\r\n'),
('SL009A','FS00X','Tranquil Tulips Flats','36','GRL11Y',120000,5,'Flatshoes2.png','\r\nTranquil Tulips Flats adalah flatshoes wanita berwarna putih yang memancarkan kesan kesederhanaan yang elegan. Meskipun memiliki desain polos, sepatu ini memiliki lekukan kecil yang menambahkan sentuhan menawan di bagian depannya.\r\n\r\nDibuat dari bahan kulit sintetis berkualitas tinggi, Tranquil Tulips Flats menawarkan tampilan yang bersih dan tahan lama. Sol datar yang nyaman membuatnya cocok untuk pemakaian sehari-hari tanpa mengorbankan gaya.\r\n'),
('SL009B','FS00X','Tranquil Tulips Flats','37','GRL11Y',120000,5,'Flatshoes2.png','\r\nTranquil Tulips Flats adalah flatshoes wanita berwarna putih yang memancarkan kesan kesederhanaan yang elegan. Meskipun memiliki desain polos, sepatu ini memiliki lekukan kecil yang menambahkan sentuhan menawan di bagian depannya.\r\n\r\nDibuat dari bahan kulit sintetis berkualitas tinggi, Tranquil Tulips Flats menawarkan tampilan yang bersih dan tahan lama. Sol datar yang nyaman membuatnya cocok untuk pemakaian sehari-hari tanpa mengorbankan gaya.\r\n'),
('SL009C','FS00X','Tranquil Tulips Flats','38','GRL11Y',120000,5,'Flatshoes2.png','\r\nTranquil Tulips Flats adalah flatshoes wanita berwarna putih yang memancarkan kesan kesederhanaan yang elegan. Meskipun memiliki desain polos, sepatu ini memiliki lekukan kecil yang menambahkan sentuhan menawan di bagian depannya.\r\n\r\nDibuat dari bahan kulit sintetis berkualitas tinggi, Tranquil Tulips Flats menawarkan tampilan yang bersih dan tahan lama. Sol datar yang nyaman membuatnya cocok untuk pemakaian sehari-hari tanpa mengorbankan gaya.\r\n'),
('SL009D','FS00X','Tranquil Tulips Flats','39','GRL11Y',120000,5,'Flatshoes2.png','\r\nTranquil Tulips Flats adalah flatshoes wanita berwarna putih yang memancarkan kesan kesederhanaan yang elegan. Meskipun memiliki desain polos, sepatu ini memiliki lekukan kecil yang menambahkan sentuhan menawan di bagian depannya.\r\n\r\nDibuat dari bahan kulit sintetis berkualitas tinggi, Tranquil Tulips Flats menawarkan tampilan yang bersih dan tahan lama. Sol datar yang nyaman membuatnya cocok untuk pemakaian sehari-hari tanpa mengorbankan gaya.\r\n'),
('SL009E','FS00X','Tranquil Tulips Flats','40','GRL11Y',120000,5,'Flatshoes2.png','\r\nTranquil Tulips Flats adalah flatshoes wanita berwarna putih yang memancarkan kesan kesederhanaan yang elegan. Meskipun memiliki desain polos, sepatu ini memiliki lekukan kecil yang menambahkan sentuhan menawan di bagian depannya.\r\n\r\nDibuat dari bahan kulit sintetis berkualitas tinggi, Tranquil Tulips Flats menawarkan tampilan yang bersih dan tahan lama. Sol datar yang nyaman membuatnya cocok untuk pemakaian sehari-hari tanpa mengorbankan gaya.\r\n'),
('SL009F','FS00X','Tranquil Tulips Flats','36','GRL11Y',120000,5,'Flatshoes2.png','\r\nTranquil Tulips Flats adalah flatshoes wanita berwarna putih yang memancarkan kesan kesederhanaan yang elegan. Meskipun memiliki desain polos, sepatu ini memiliki lekukan kecil yang menambahkan sentuhan menawan di bagian depannya.\r\n\r\nDibuat dari bahan kulit sintetis berkualitas tinggi, Tranquil Tulips Flats menawarkan tampilan yang bersih dan tahan lama. Sol datar yang nyaman membuatnya cocok untuk pemakaian sehari-hari tanpa mengorbankan gaya.\r\n'),
('SL009G','FS00X','Tranquil Tulips Flats','37','GRL11Y',120000,5,'Flatshoes2.png','\r\nTranquil Tulips Flats adalah flatshoes wanita berwarna putih yang memancarkan kesan kesederhanaan yang elegan. Meskipun memiliki desain polos, sepatu ini memiliki lekukan kecil yang menambahkan sentuhan menawan di bagian depannya.\r\n\r\nDibuat dari bahan kulit sintetis berkualitas tinggi, Tranquil Tulips Flats menawarkan tampilan yang bersih dan tahan lama. Sol datar yang nyaman membuatnya cocok untuk pemakaian sehari-hari tanpa mengorbankan gaya.\r\n'),
('SL009H','FS00X','Tranquil Tulips Flats','38','GRL11Y',120000,5,'Flatshoes2.png','\r\nTranquil Tulips Flats adalah flatshoes wanita berwarna putih yang memancarkan kesan kesederhanaan yang elegan. Meskipun memiliki desain polos, sepatu ini memiliki lekukan kecil yang menambahkan sentuhan menawan di bagian depannya.\r\n\r\nDibuat dari bahan kulit sintetis berkualitas tinggi, Tranquil Tulips Flats menawarkan tampilan yang bersih dan tahan lama. Sol datar yang nyaman membuatnya cocok untuk pemakaian sehari-hari tanpa mengorbankan gaya.\r\n'),
('SL009I','FS00X','Tranquil Tulips Flats','39','GRL11Y',120000,5,'Flatshoes2.png','\r\nTranquil Tulips Flats adalah flatshoes wanita berwarna putih yang memancarkan kesan kesederhanaan yang elegan. Meskipun memiliki desain polos, sepatu ini memiliki lekukan kecil yang menambahkan sentuhan menawan di bagian depannya.\r\n\r\nDibuat dari bahan kulit sintetis berkualitas tinggi, Tranquil Tulips Flats menawarkan tampilan yang bersih dan tahan lama. Sol datar yang nyaman membuatnya cocok untuk pemakaian sehari-hari tanpa mengorbankan gaya.\r\n'),
('SL009J','FS00X','Tranquil Tulips Flats','40','GRL11Y',120000,5,'Flatshoes2.png','\r\nTranquil Tulips Flats adalah flatshoes wanita berwarna putih yang memancarkan kesan kesederhanaan yang elegan. Meskipun memiliki desain polos, sepatu ini memiliki lekukan kecil yang menambahkan sentuhan menawan di bagian depannya.\r\n\r\nDibuat dari bahan kulit sintetis berkualitas tinggi, Tranquil Tulips Flats menawarkan tampilan yang bersih dan tahan lama. Sol datar yang nyaman membuatnya cocok untuk pemakaian sehari-hari tanpa mengorbankan gaya.\r\n'),
('SL010A','AS00X','AeroAche Track Shoes','36','UNX11Y',270000,10,'Atletic1.png','\r\nAeroAche Track Shoes adalah sepatu olahraga yang menghadirkan kombinasi sempurna antara gaya dan performa. Didesain untuk menawarkan dukungan optimal saat berlari dan berolahraga, sepatu ini hadir dalam warna abu-abu polos yang elegan.\r\n\r\nTerbuat dari bahan mesh breathable untuk ventilasi udara yang maksimal, serta dilengkapi dengan sol karet yang ringan namun tahan lama, AeroAche Track Shoes memberikan kenyamanan dan daya tahan dalam aktivitas olahraga Anda.\r\n'),
('SL010B','AS00X','AeroAche Track Shoes','37','UNX11Y',270000,10,'Atletic1.png','\r\nAeroAche Track Shoes adalah sepatu olahraga yang menghadirkan kombinasi sempurna antara gaya dan performa. Didesain untuk menawarkan dukungan optimal saat berlari dan berolahraga, sepatu ini hadir dalam warna abu-abu polos yang elegan.\r\n\r\nTerbuat dari bahan mesh breathable untuk ventilasi udara yang maksimal, serta dilengkapi dengan sol karet yang ringan namun tahan lama, AeroAche Track Shoes memberikan kenyamanan dan daya tahan dalam aktivitas olahraga Anda.\r\n'),
('SL010C','AS00X','AeroAche Track Shoes','38','UNX11Y',270000,10,'Atletic1.png','\r\nAeroAche Track Shoes adalah sepatu olahraga yang menghadirkan kombinasi sempurna antara gaya dan performa. Didesain untuk menawarkan dukungan optimal saat berlari dan berolahraga, sepatu ini hadir dalam warna abu-abu polos yang elegan.\r\n\r\nTerbuat dari bahan mesh breathable untuk ventilasi udara yang maksimal, serta dilengkapi dengan sol karet yang ringan namun tahan lama, AeroAche Track Shoes memberikan kenyamanan dan daya tahan dalam aktivitas olahraga Anda.\r\n'),
('SL010D','AS00X','AeroAche Track Shoes','39','UNX11Y',270000,10,'Atletic1.png','\r\nAeroAche Track Shoes adalah sepatu olahraga yang menghadirkan kombinasi sempurna antara gaya dan performa. Didesain untuk menawarkan dukungan optimal saat berlari dan berolahraga, sepatu ini hadir dalam warna abu-abu polos yang elegan.\r\n\r\nTerbuat dari bahan mesh breathable untuk ventilasi udara yang maksimal, serta dilengkapi dengan sol karet yang ringan namun tahan lama, AeroAche Track Shoes memberikan kenyamanan dan daya tahan dalam aktivitas olahraga Anda.\r\n'),
('SL010E','AS00X','AeroAche Track Shoes','40','UNX11Y',270000,10,'Atletic1.png','\r\nAeroAche Track Shoes adalah sepatu olahraga yang menghadirkan kombinasi sempurna antara gaya dan performa. Didesain untuk menawarkan dukungan optimal saat berlari dan berolahraga, sepatu ini hadir dalam warna abu-abu polos yang elegan.\r\n\r\nTerbuat dari bahan mesh breathable untuk ventilasi udara yang maksimal, serta dilengkapi dengan sol karet yang ringan namun tahan lama, AeroAche Track Shoes memberikan kenyamanan dan daya tahan dalam aktivitas olahraga Anda.\r\n'),
('SL010F','AS00X','AeroAche Track Shoes','41','UNX11Y',270000,10,'Atletic1.png','\r\nAeroAche Track Shoes adalah sepatu olahraga yang menghadirkan kombinasi sempurna antara gaya dan performa. Didesain untuk menawarkan dukungan optimal saat berlari dan berolahraga, sepatu ini hadir dalam warna abu-abu polos yang elegan.\r\n\r\nTerbuat dari bahan mesh breathable untuk ventilasi udara yang maksimal, serta dilengkapi dengan sol karet yang ringan namun tahan lama, AeroAche Track Shoes memberikan kenyamanan dan daya tahan dalam aktivitas olahraga Anda.\r\n'),
('SL010G','AS00X','AeroAche Track Shoes','42','UNX11Y',270000,10,'Atletic1.png','\r\nAeroAche Track Shoes adalah sepatu olahraga yang menghadirkan kombinasi sempurna antara gaya dan performa. Didesain untuk menawarkan dukungan optimal saat berlari dan berolahraga, sepatu ini hadir dalam warna abu-abu polos yang elegan.\r\n\r\nTerbuat dari bahan mesh breathable untuk ventilasi udara yang maksimal, serta dilengkapi dengan sol karet yang ringan namun tahan lama, AeroAche Track Shoes memberikan kenyamanan dan daya tahan dalam aktivitas olahraga Anda.\r\n'),
('SL010H','AS00X','AeroAche Track Shoes','43','UNX11Y',270000,10,'Atletic1.png','\r\nAeroAche Track Shoes adalah sepatu olahraga yang menghadirkan kombinasi sempurna antara gaya dan performa. Didesain untuk menawarkan dukungan optimal saat berlari dan berolahraga, sepatu ini hadir dalam warna abu-abu polos yang elegan.\r\n\r\nTerbuat dari bahan mesh breathable untuk ventilasi udara yang maksimal, serta dilengkapi dengan sol karet yang ringan namun tahan lama, AeroAche Track Shoes memberikan kenyamanan dan daya tahan dalam aktivitas olahraga Anda.\r\n'),
('SL010I','AS00X','AeroAche Track Shoes','44','UNX11Y',270000,10,'Atletic1.png','\r\nAeroAche Track Shoes adalah sepatu olahraga yang menghadirkan kombinasi sempurna antara gaya dan performa. Didesain untuk menawarkan dukungan optimal saat berlari dan berolahraga, sepatu ini hadir dalam warna abu-abu polos yang elegan.\r\n\r\nTerbuat dari bahan mesh breathable untuk ventilasi udara yang maksimal, serta dilengkapi dengan sol karet yang ringan namun tahan lama, AeroAche Track Shoes memberikan kenyamanan dan daya tahan dalam aktivitas olahraga Anda.\r\n'),
('SL010J','AS00X','AeroAche Track Shoes','45','UNX11Y',270000,10,'Atletic1.png','\r\nAeroAche Track Shoes adalah sepatu olahraga yang menghadirkan kombinasi sempurna antara gaya dan performa. Didesain untuk menawarkan dukungan optimal saat berlari dan berolahraga, sepatu ini hadir dalam warna abu-abu polos yang elegan.\r\n\r\nTerbuat dari bahan mesh breathable untuk ventilasi udara yang maksimal, serta dilengkapi dengan sol karet yang ringan namun tahan lama, AeroAche Track Shoes memberikan kenyamanan dan daya tahan dalam aktivitas olahraga Anda.\r\n'),
('SL010K','AS00X','AeroAche Track Shoes','36','UNX11Y',270000,10,'Atletic1.png','\r\nAeroAche Track Shoes adalah sepatu olahraga yang menghadirkan kombinasi sempurna antara gaya dan performa. Didesain untuk menawarkan dukungan optimal saat berlari dan berolahraga, sepatu ini hadir dalam warna abu-abu polos yang elegan.\r\n\r\nTerbuat dari bahan mesh breathable untuk ventilasi udara yang maksimal, serta dilengkapi dengan sol karet yang ringan namun tahan lama, AeroAche Track Shoes memberikan kenyamanan dan daya tahan dalam aktivitas olahraga Anda.\r\n'),
('SL010L','AS00X','AeroAche Track Shoes','37','UNX11Y',270000,10,'Atletic1.png','\r\nAeroAche Track Shoes adalah sepatu olahraga yang menghadirkan kombinasi sempurna antara gaya dan performa. Didesain untuk menawarkan dukungan optimal saat berlari dan berolahraga, sepatu ini hadir dalam warna abu-abu polos yang elegan.\r\n\r\nTerbuat dari bahan mesh breathable untuk ventilasi udara yang maksimal, serta dilengkapi dengan sol karet yang ringan namun tahan lama, AeroAche Track Shoes memberikan kenyamanan dan daya tahan dalam aktivitas olahraga Anda.\r\n'),
('SL010M','AS00X','AeroAche Track Shoes','38','UNX11Y',270000,10,'Atletic1.png','\r\nAeroAche Track Shoes adalah sepatu olahraga yang menghadirkan kombinasi sempurna antara gaya dan performa. Didesain untuk menawarkan dukungan optimal saat berlari dan berolahraga, sepatu ini hadir dalam warna abu-abu polos yang elegan.\r\n\r\nTerbuat dari bahan mesh breathable untuk ventilasi udara yang maksimal, serta dilengkapi dengan sol karet yang ringan namun tahan lama, AeroAche Track Shoes memberikan kenyamanan dan daya tahan dalam aktivitas olahraga Anda.\r\n'),
('SL010N','AS00X','AeroAche Track Shoes','39','UNX11Y',270000,10,'Atletic1.png','\r\nAeroAche Track Shoes adalah sepatu olahraga yang menghadirkan kombinasi sempurna antara gaya dan performa. Didesain untuk menawarkan dukungan optimal saat berlari dan berolahraga, sepatu ini hadir dalam warna abu-abu polos yang elegan.\r\n\r\nTerbuat dari bahan mesh breathable untuk ventilasi udara yang maksimal, serta dilengkapi dengan sol karet yang ringan namun tahan lama, AeroAche Track Shoes memberikan kenyamanan dan daya tahan dalam aktivitas olahraga Anda.\r\n'),
('SL010O','AS00X','AeroAche Track Shoes','40','UNX11Y',270000,10,'Atletic1.png','\r\nAeroAche Track Shoes adalah sepatu olahraga yang menghadirkan kombinasi sempurna antara gaya dan performa. Didesain untuk menawarkan dukungan optimal saat berlari dan berolahraga, sepatu ini hadir dalam warna abu-abu polos yang elegan.\r\n\r\nTerbuat dari bahan mesh breathable untuk ventilasi udara yang maksimal, serta dilengkapi dengan sol karet yang ringan namun tahan lama, AeroAche Track Shoes memberikan kenyamanan dan daya tahan dalam aktivitas olahraga Anda.\r\n'),
('SL010P','AS00X','AeroAche Track Shoes','41','UNX11Y',270000,10,'Atletic1.png','\r\nAeroAche Track Shoes adalah sepatu olahraga yang menghadirkan kombinasi sempurna antara gaya dan performa. Didesain untuk menawarkan dukungan optimal saat berlari dan berolahraga, sepatu ini hadir dalam warna abu-abu polos yang elegan.\r\n\r\nTerbuat dari bahan mesh breathable untuk ventilasi udara yang maksimal, serta dilengkapi dengan sol karet yang ringan namun tahan lama, AeroAche Track Shoes memberikan kenyamanan dan daya tahan dalam aktivitas olahraga Anda.\r\n'),
('SL010Q','AS00X','AeroAche Track Shoes','42','UNX11Y',270000,10,'Atletic1.png','\r\nAeroAche Track Shoes adalah sepatu olahraga yang menghadirkan kombinasi sempurna antara gaya dan performa. Didesain untuk menawarkan dukungan optimal saat berlari dan berolahraga, sepatu ini hadir dalam warna abu-abu polos yang elegan.\r\n\r\nTerbuat dari bahan mesh breathable untuk ventilasi udara yang maksimal, serta dilengkapi dengan sol karet yang ringan namun tahan lama, AeroAche Track Shoes memberikan kenyamanan dan daya tahan dalam aktivitas olahraga Anda.\r\n'),
('SL010R','AS00X','AeroAche Track Shoes','43','UNX11Y',270000,10,'Atletic1.png','\r\nAeroAche Track Shoes adalah sepatu olahraga yang menghadirkan kombinasi sempurna antara gaya dan performa. Didesain untuk menawarkan dukungan optimal saat berlari dan berolahraga, sepatu ini hadir dalam warna abu-abu polos yang elegan.\r\n\r\nTerbuat dari bahan mesh breathable untuk ventilasi udara yang maksimal, serta dilengkapi dengan sol karet yang ringan namun tahan lama, AeroAche Track Shoes memberikan kenyamanan dan daya tahan dalam aktivitas olahraga Anda.\r\n'),
('SL010S','AS00X','AeroAche Track Shoes','44','UNX11Y',270000,10,'Atletic1.png','\r\nAeroAche Track Shoes adalah sepatu olahraga yang menghadirkan kombinasi sempurna antara gaya dan performa. Didesain untuk menawarkan dukungan optimal saat berlari dan berolahraga, sepatu ini hadir dalam warna abu-abu polos yang elegan.\r\n\r\nTerbuat dari bahan mesh breathable untuk ventilasi udara yang maksimal, serta dilengkapi dengan sol karet yang ringan namun tahan lama, AeroAche Track Shoes memberikan kenyamanan dan daya tahan dalam aktivitas olahraga Anda.\r\n'),
('SL010T','AS00X','AeroAche Track Shoes','45','UNX11Y',270000,10,'Atletic1.png','\r\nAeroAche Track Shoes adalah sepatu olahraga yang menghadirkan kombinasi sempurna antara gaya dan performa. Didesain untuk menawarkan dukungan optimal saat berlari dan berolahraga, sepatu ini hadir dalam warna abu-abu polos yang elegan.\r\n\r\nTerbuat dari bahan mesh breathable untuk ventilasi udara yang maksimal, serta dilengkapi dengan sol karet yang ringan namun tahan lama, AeroAche Track Shoes memberikan kenyamanan dan daya tahan dalam aktivitas olahraga Anda.\r\n'),
('SL011A','AS00X','JumpJet Cross Shoes','36','UNX11Y',250000,10,'Atletic2.png','\r\nJumpJet Cross Shoes adalah sepatu olahraga unisex yang penuh gaya, hadir dalam pilihan warna abu-abu dengan perpaduan hitam serta warna  oranye dengan perpaduan warna merah menambah kesan ceria. Desainnya dilengkapi dengan garis-garis aksen tiga sisi yang menambah kesan dinamis.\r\n\r\nTerbuat dari bahan mesh breathable untuk sirkulasi udara optimal dan sol karet yang tahan lama, JumpJet Cross Shoes menawarkan kenyamanan dan performa dalam aktivitas olahraga. Desainnya yang ringan dan fleksibel menjadikannya cocok untuk berbagai jenis latihan dan kegiatan sehari-hari.\r\n'),
('SL011B','AS00X','JumpJet Cross Shoes','37','UNX11Y',250000,10,'Atletic2.png','\r\nJumpJet Cross Shoes adalah sepatu olahraga unisex yang penuh gaya, hadir dalam pilihan warna abu-abu dengan perpaduan hitam serta warna  oranye dengan perpaduan warna merah menambah kesan ceria. Desainnya dilengkapi dengan garis-garis aksen tiga sisi yang menambah kesan dinamis.\r\n\r\nTerbuat dari bahan mesh breathable untuk sirkulasi udara optimal dan sol karet yang tahan lama, JumpJet Cross Shoes menawarkan kenyamanan dan performa dalam aktivitas olahraga. Desainnya yang ringan dan fleksibel menjadikannya cocok untuk berbagai jenis latihan dan kegiatan sehari-hari.\r\n'),
('SL011C','AS00X','JumpJet Cross Shoes','38','UNX11Y',250000,10,'Atletic2.png','\r\nJumpJet Cross Shoes adalah sepatu olahraga unisex yang penuh gaya, hadir dalam pilihan warna abu-abu dengan perpaduan hitam serta warna  oranye dengan perpaduan warna merah menambah kesan ceria. Desainnya dilengkapi dengan garis-garis aksen tiga sisi yang menambah kesan dinamis.\r\n\r\nTerbuat dari bahan mesh breathable untuk sirkulasi udara optimal dan sol karet yang tahan lama, JumpJet Cross Shoes menawarkan kenyamanan dan performa dalam aktivitas olahraga. Desainnya yang ringan dan fleksibel menjadikannya cocok untuk berbagai jenis latihan dan kegiatan sehari-hari.\r\n'),
('SL011D','AS00X','JumpJet Cross Shoes','39','UNX11Y',250000,10,'Atletic2.png','\r\nJumpJet Cross Shoes adalah sepatu olahraga unisex yang penuh gaya, hadir dalam pilihan warna abu-abu dengan perpaduan hitam serta warna  oranye dengan perpaduan warna merah menambah kesan ceria. Desainnya dilengkapi dengan garis-garis aksen tiga sisi yang menambah kesan dinamis.\r\n\r\nTerbuat dari bahan mesh breathable untuk sirkulasi udara optimal dan sol karet yang tahan lama, JumpJet Cross Shoes menawarkan kenyamanan dan performa dalam aktivitas olahraga. Desainnya yang ringan dan fleksibel menjadikannya cocok untuk berbagai jenis latihan dan kegiatan sehari-hari.\r\n'),
('SL011E','AS00X','JumpJet Cross Shoes','40','UNX11Y',250000,10,'Atletic2.png','\r\nJumpJet Cross Shoes adalah sepatu olahraga unisex yang penuh gaya, hadir dalam pilihan warna abu-abu dengan perpaduan hitam serta warna  oranye dengan perpaduan warna merah menambah kesan ceria. Desainnya dilengkapi dengan garis-garis aksen tiga sisi yang menambah kesan dinamis.\r\n\r\nTerbuat dari bahan mesh breathable untuk sirkulasi udara optimal dan sol karet yang tahan lama, JumpJet Cross Shoes menawarkan kenyamanan dan performa dalam aktivitas olahraga. Desainnya yang ringan dan fleksibel menjadikannya cocok untuk berbagai jenis latihan dan kegiatan sehari-hari.\r\n'),
('SL011F','AS00X','JumpJet Cross Shoes','41','UNX11Y',250000,10,'Atletic2.png','\r\nJumpJet Cross Shoes adalah sepatu olahraga unisex yang penuh gaya, hadir dalam pilihan warna abu-abu dengan perpaduan hitam serta warna  oranye dengan perpaduan warna merah menambah kesan ceria. Desainnya dilengkapi dengan garis-garis aksen tiga sisi yang menambah kesan dinamis.\r\n\r\nTerbuat dari bahan mesh breathable untuk sirkulasi udara optimal dan sol karet yang tahan lama, JumpJet Cross Shoes menawarkan kenyamanan dan performa dalam aktivitas olahraga. Desainnya yang ringan dan fleksibel menjadikannya cocok untuk berbagai jenis latihan dan kegiatan sehari-hari.\r\n'),
('SL011G','AS00X','JumpJet Cross Shoes','42','UNX11Y',250000,10,'Atletic2.png','\r\nJumpJet Cross Shoes adalah sepatu olahraga unisex yang penuh gaya, hadir dalam pilihan warna abu-abu dengan perpaduan hitam serta warna  oranye dengan perpaduan warna merah menambah kesan ceria. Desainnya dilengkapi dengan garis-garis aksen tiga sisi yang menambah kesan dinamis.\r\n\r\nTerbuat dari bahan mesh breathable untuk sirkulasi udara optimal dan sol karet yang tahan lama, JumpJet Cross Shoes menawarkan kenyamanan dan performa dalam aktivitas olahraga. Desainnya yang ringan dan fleksibel menjadikannya cocok untuk berbagai jenis latihan dan kegiatan sehari-hari.\r\n'),
('SL011H','AS00X','JumpJet Cross Shoes','43','UNX11Y',250000,10,'Atletic2.png','\r\nJumpJet Cross Shoes adalah sepatu olahraga unisex yang penuh gaya, hadir dalam pilihan warna abu-abu dengan perpaduan hitam serta warna  oranye dengan perpaduan warna merah menambah kesan ceria. Desainnya dilengkapi dengan garis-garis aksen tiga sisi yang menambah kesan dinamis.\r\n\r\nTerbuat dari bahan mesh breathable untuk sirkulasi udara optimal dan sol karet yang tahan lama, JumpJet Cross Shoes menawarkan kenyamanan dan performa dalam aktivitas olahraga. Desainnya yang ringan dan fleksibel menjadikannya cocok untuk berbagai jenis latihan dan kegiatan sehari-hari.\r\n'),
('SL011I','AS00X','JumpJet Cross Shoes','44','UNX11Y',250000,10,'Atletic2.png','\r\nJumpJet Cross Shoes adalah sepatu olahraga unisex yang penuh gaya, hadir dalam pilihan warna abu-abu dengan perpaduan hitam serta warna  oranye dengan perpaduan warna merah menambah kesan ceria. Desainnya dilengkapi dengan garis-garis aksen tiga sisi yang menambah kesan dinamis.\r\n\r\nTerbuat dari bahan mesh breathable untuk sirkulasi udara optimal dan sol karet yang tahan lama, JumpJet Cross Shoes menawarkan kenyamanan dan performa dalam aktivitas olahraga. Desainnya yang ringan dan fleksibel menjadikannya cocok untuk berbagai jenis latihan dan kegiatan sehari-hari.\r\n'),
('SL011J','AS00X','JumpJet Cross Shoes','45','UNX11Y',250000,10,'Atletic2.png','\r\nJumpJet Cross Shoes adalah sepatu olahraga unisex yang penuh gaya, hadir dalam pilihan warna abu-abu dengan perpaduan hitam serta warna  oranye dengan perpaduan warna merah menambah kesan ceria. Desainnya dilengkapi dengan garis-garis aksen tiga sisi yang menambah kesan dinamis.\r\n\r\nTerbuat dari bahan mesh breathable untuk sirkulasi udara optimal dan sol karet yang tahan lama, JumpJet Cross Shoes menawarkan kenyamanan dan performa dalam aktivitas olahraga. Desainnya yang ringan dan fleksibel menjadikannya cocok untuk berbagai jenis latihan dan kegiatan sehari-hari.\r\n'),
('SL011K','AS00X','JumpJet Cross Shoes','36','UNX11Y',250000,10,'Atletic2.png','\r\nJumpJet Cross Shoes adalah sepatu olahraga unisex yang penuh gaya, hadir dalam pilihan warna abu-abu dengan perpaduan hitam serta warna  oranye dengan perpaduan warna merah menambah kesan ceria. Desainnya dilengkapi dengan garis-garis aksen tiga sisi yang menambah kesan dinamis.\r\n\r\nTerbuat dari bahan mesh breathable untuk sirkulasi udara optimal dan sol karet yang tahan lama, JumpJet Cross Shoes menawarkan kenyamanan dan performa dalam aktivitas olahraga. Desainnya yang ringan dan fleksibel menjadikannya cocok untuk berbagai jenis latihan dan kegiatan sehari-hari.\r\n'),
('SL011L','AS00X','JumpJet Cross Shoes','37','UNX11Y',250000,10,'Atletic2.png','\r\nJumpJet Cross Shoes adalah sepatu olahraga unisex yang penuh gaya, hadir dalam pilihan warna abu-abu dengan perpaduan hitam serta warna  oranye dengan perpaduan warna merah menambah kesan ceria. Desainnya dilengkapi dengan garis-garis aksen tiga sisi yang menambah kesan dinamis.\r\n\r\nTerbuat dari bahan mesh breathable untuk sirkulasi udara optimal dan sol karet yang tahan lama, JumpJet Cross Shoes menawarkan kenyamanan dan performa dalam aktivitas olahraga. Desainnya yang ringan dan fleksibel menjadikannya cocok untuk berbagai jenis latihan dan kegiatan sehari-hari.\r\n'),
('SL011M','AS00X','JumpJet Cross Shoes','38','UNX11Y',250000,10,'Atletic2.png','\r\nJumpJet Cross Shoes adalah sepatu olahraga unisex yang penuh gaya, hadir dalam pilihan warna abu-abu dengan perpaduan hitam serta warna  oranye dengan perpaduan warna merah menambah kesan ceria. Desainnya dilengkapi dengan garis-garis aksen tiga sisi yang menambah kesan dinamis.\r\n\r\nTerbuat dari bahan mesh breathable untuk sirkulasi udara optimal dan sol karet yang tahan lama, JumpJet Cross Shoes menawarkan kenyamanan dan performa dalam aktivitas olahraga. Desainnya yang ringan dan fleksibel menjadikannya cocok untuk berbagai jenis latihan dan kegiatan sehari-hari.\r\n'),
('SL011N','AS00X','JumpJet Cross Shoes','39','UNX11Y',250000,10,'Atletic2.png','\r\nJumpJet Cross Shoes adalah sepatu olahraga unisex yang penuh gaya, hadir dalam pilihan warna abu-abu dengan perpaduan hitam serta warna  oranye dengan perpaduan warna merah menambah kesan ceria. Desainnya dilengkapi dengan garis-garis aksen tiga sisi yang menambah kesan dinamis.\r\n\r\nTerbuat dari bahan mesh breathable untuk sirkulasi udara optimal dan sol karet yang tahan lama, JumpJet Cross Shoes menawarkan kenyamanan dan performa dalam aktivitas olahraga. Desainnya yang ringan dan fleksibel menjadikannya cocok untuk berbagai jenis latihan dan kegiatan sehari-hari.\r\n'),
('SL011O','AS00X','JumpJet Cross Shoes','40','UNX11Y',250000,10,'Atletic2.png','\r\nJumpJet Cross Shoes adalah sepatu olahraga unisex yang penuh gaya, hadir dalam pilihan warna abu-abu dengan perpaduan hitam serta warna  oranye dengan perpaduan warna merah menambah kesan ceria. Desainnya dilengkapi dengan garis-garis aksen tiga sisi yang menambah kesan dinamis.\r\n\r\nTerbuat dari bahan mesh breathable untuk sirkulasi udara optimal dan sol karet yang tahan lama, JumpJet Cross Shoes menawarkan kenyamanan dan performa dalam aktivitas olahraga. Desainnya yang ringan dan fleksibel menjadikannya cocok untuk berbagai jenis latihan dan kegiatan sehari-hari.\r\n'),
('SL011P','AS00X','JumpJet Cross Shoes','41','UNX11Y',250000,10,'Atletic2.png','\r\nJumpJet Cross Shoes adalah sepatu olahraga unisex yang penuh gaya, hadir dalam pilihan warna abu-abu dengan perpaduan hitam serta warna  oranye dengan perpaduan warna merah menambah kesan ceria. Desainnya dilengkapi dengan garis-garis aksen tiga sisi yang menambah kesan dinamis.\r\n\r\nTerbuat dari bahan mesh breathable untuk sirkulasi udara optimal dan sol karet yang tahan lama, JumpJet Cross Shoes menawarkan kenyamanan dan performa dalam aktivitas olahraga. Desainnya yang ringan dan fleksibel menjadikannya cocok untuk berbagai jenis latihan dan kegiatan sehari-hari.\r\n'),
('SL011Q','AS00X','JumpJet Cross Shoes','42','UNX11Y',250000,10,'Atletic2.png','\r\nJumpJet Cross Shoes adalah sepatu olahraga unisex yang penuh gaya, hadir dalam pilihan warna abu-abu dengan perpaduan hitam serta warna  oranye dengan perpaduan warna merah menambah kesan ceria. Desainnya dilengkapi dengan garis-garis aksen tiga sisi yang menambah kesan dinamis.\r\n\r\nTerbuat dari bahan mesh breathable untuk sirkulasi udara optimal dan sol karet yang tahan lama, JumpJet Cross Shoes menawarkan kenyamanan dan performa dalam aktivitas olahraga. Desainnya yang ringan dan fleksibel menjadikannya cocok untuk berbagai jenis latihan dan kegiatan sehari-hari.\r\n'),
('SL011R','AS00X','JumpJet Cross Shoes','43','UNX11Y',250000,10,'Atletic2.png','\r\nJumpJet Cross Shoes adalah sepatu olahraga unisex yang penuh gaya, hadir dalam pilihan warna abu-abu dengan perpaduan hitam serta warna  oranye dengan perpaduan warna merah menambah kesan ceria. Desainnya dilengkapi dengan garis-garis aksen tiga sisi yang menambah kesan dinamis.\r\n\r\nTerbuat dari bahan mesh breathable untuk sirkulasi udara optimal dan sol karet yang tahan lama, JumpJet Cross Shoes menawarkan kenyamanan dan performa dalam aktivitas olahraga. Desainnya yang ringan dan fleksibel menjadikannya cocok untuk berbagai jenis latihan dan kegiatan sehari-hari.\r\n'),
('SL011S','AS00X','JumpJet Cross Shoes','44','UNX11Y',250000,10,'Atletic2.png','\r\nJumpJet Cross Shoes adalah sepatu olahraga unisex yang penuh gaya, hadir dalam pilihan warna abu-abu dengan perpaduan hitam serta warna  oranye dengan perpaduan warna merah menambah kesan ceria. Desainnya dilengkapi dengan garis-garis aksen tiga sisi yang menambah kesan dinamis.\r\n\r\nTerbuat dari bahan mesh breathable untuk sirkulasi udara optimal dan sol karet yang tahan lama, JumpJet Cross Shoes menawarkan kenyamanan dan performa dalam aktivitas olahraga. Desainnya yang ringan dan fleksibel menjadikannya cocok untuk berbagai jenis latihan dan kegiatan sehari-hari.\r\n'),
('SL011T','AS00X','JumpJet Cross Shoes','45','UNX11Y',250000,10,'Atletic2.png','\r\nJumpJet Cross Shoes adalah sepatu olahraga unisex yang penuh gaya, hadir dalam pilihan warna abu-abu dengan perpaduan hitam serta warna  oranye dengan perpaduan warna merah menambah kesan ceria. Desainnya dilengkapi dengan garis-garis aksen tiga sisi yang menambah kesan dinamis.\r\n\r\nTerbuat dari bahan mesh breathable untuk sirkulasi udara optimal dan sol karet yang tahan lama, JumpJet Cross Shoes menawarkan kenyamanan dan performa dalam aktivitas olahraga. Desainnya yang ringan dan fleksibel menjadikannya cocok untuk berbagai jenis latihan dan kegiatan sehari-hari.\r\n');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `role` enum('admin','user') DEFAULT 'user',
  `no_telephone` int(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`email`,`password`,`username`,`fullname`,`age`,`role`,`no_telephone`) values 
(1,'admin@gmail.com','admin','admin','Admin',20,'admin',2147483647),
(2,'user@gmail.com','user','user','User',20,'user',2147483647),
(3,'user1@gmail.com','user1','User_1','User ku yang Pertama',30,'user',2147483647);

/*Table structure for table `warna` */

DROP TABLE IF EXISTS `warna`;

CREATE TABLE `warna` (
  `Kode_Warna` char(10) NOT NULL,
  `Nama_Warna` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Kode_Warna`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `warna` */

insert  into `warna`(`Kode_Warna`,`Nama_Warna`) values 
('000000','Hitam'),
('8C6A5D','Coklat'),
('9E9FA5','Abu-Abu'),
('F7EEDD','Cream'),
('FFA500','Orange'),
('FFCAD4','Pink'),
('FFFFFF','Putih');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
